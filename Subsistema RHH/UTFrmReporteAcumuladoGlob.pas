unit UTFrmReporteAcumuladoGlob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, ComObj, ClientModuleUnit1,strutils,ExportaExcel;

type
  TFrmReporteAcumuladoGlob = class(TForm)
    cdDatos: TClientDataSet;
    cdPersonal: TClientDataSet;
    memRubrosIMSS: TClientDataSet;
    memPercepciones: TClientDataSet;
    memObligacion: TClientDataSet;
    memDeptoPercepciones: TClientDataSet;
    memDeducciones: TClientDataSet;
    memDeptoDeducciones: TClientDataSet;
    cdGruposConcepto: TClientDataSet;
    cdNomina: TClientDataSet;
    cdRegistroPatronal: TClientDataSet;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    cdGenerales: TClientDataSet;
    { Private declarations }
    procedure generaExcel;
  public
    { Public declarations }
  end;

var
  FrmReporteAcumuladoGlob: TFrmReporteAcumuladoGlob;

implementation

{$R *.dfm}

procedure TFrmReporteAcumuladoGlob.btn1Click(Sender: TObject);
begin
  generaExcel;
end;

procedure TFrmReporteAcumuladoGlob.FormShow(Sender: TObject);
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdNomina,'nom_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5,['Nomina']);

      if not CrearConjunto(cdDatos,'nom_detallenomina',ccCatalog) then
        raise InteligentException.CreateByCode(5,['detalle nomina']);

      if not CrearConjunto(cdRegistroPatronal,'nom_registroPatronal',ccCatalog) then
        raise InteligentException.CreateByCode(5,['RegistroPatronal']);
      cdRegistroPatronal.open;

      //cdDatos.Open;
      {$REGION 'DEFINICION DE CAMPOS DATASET MEMORIA'}
      // Crear los contenedores para las prestaciones y deducciones por departamento
      memPercepciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memPercepciones.FieldDefs.Add('FechaNomina',ftString,10,False);
      memPercepciones.FieldDefs.Add('regPatImss',ftString,40,False);
      memPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
      memPercepciones.FieldDefs.Add('Titulo', ftString, 20, False);
      memPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memPercepciones.CreateDataSet;
      memPercepciones.Open;

      memDeducciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memDeducciones.FieldDefs.Add('FechaNomina',ftString,10,False);
      memDeducciones.FieldDefs.Add('regPatImss',ftString,40,False);
      memDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
      memDeducciones.FieldDefs.Add('Titulo', ftString, 20, False);
      memDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeducciones.CreateDataSet;
      memDeducciones.Open;
      {$ENDREGION 'DEFINICION DE CAMPOS DATASET MEMORIA'}
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
  end;
end;

procedure TFrmReporteAcumuladoGlob.generaExcel;
var
  Excel, Workbook, Worksheet: Variant;
  Listaid: Tstringlist;
  Campo, Cadena, Modo, Codigo, Titulo, Nombre,Grupo,Cargo, Valor,FNomina,regPatronal: String;
  rowx,idxLista, NumRec,i, columx, x,numLin: Integer;
  sumaCells,
  SumaPercepciones,
  SumaDeducciones,
  otrasPercep,
  otrasDeduc,
  PercepcionxReg,
  DeduccionxReg,
  SumaSueldoNeto,
  sumSueldo,
  sumIMSS,
  sumISPT,
  SumINFONAVIT, subTotDeducciones, subTotPercepciones: Real;

{$REGION 'CONSTANTES EXCEL'}
const
  //Hoja
  xlWBATWorksheet = -4167;
  //borde
  xlDouble = $FFFFEFE9;
  xlContinuous = $00000001;
  xlCenter = -4108;
  //alineaciones  horizontal
  xlHAlignCenter = $FFFFEFF4;
  xlBottom =-4107;
  xlVAlignCenter = $FFFFEFF4;
  xlVAlignTop = $FFFFEFC0;
  xlDiagonalDown = 5;
  xlDiagonalUp = 6;
  xlNone = -4142;
  xlMedium = -4138;
  xlContext = -5002;
  xlThin = 2;
  xlEdgeBottom = 9;
  xlEdgeTop = 8;
  xlInsideVertical = 11;
  xlInsideHorizontal = 12;
  //--------- Colores en Fondo de Celdas -------------------------------------
  xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
  xl_CL_AzulCielo = $00000022; // (33) Azul Cielo
  xl_CL_Turq      = $00000008; // ( 8) Truquesa
  xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
  xl_CL_Rojo      = $00000003; // ( 3) Rojo
  xl_CL_Gris      = $00000010;
  xl_CL_GrisLight = $0000000f;
{$ENDREGION 'CONSTANTES EXCEL'}
function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;

  Result := Copy(Cadena, 1, Pos('|', Cadena) -1);
end;
begin
  try
    rowx :=0;
    CargarDatosFiltrados(cdNomina,'idNomina',[-1]);
    cdNomina.Open;

    if not CargarDatosFiltrados(cdDatos,'idDetalleNomina',[-1]) then
      raise InteligentException.CreateByCode(5,['Detalles nomina']);
    if cdDatos.active then
      cdDatos.refresh
    else
      cdDatos.open;

    {$REGION 'DESCOMPOSICION DE CAMPOS MULTIVALUADOS'}
    rowx := 1;
    idxLista := 0;

    memPercepciones.EmptyDataSet;
    memDeducciones.EmptyDataSet;

    cdDatos.First;
    cdGenerales := TClientDataSet.Create(Self);
    memPercepciones.open;
    // Identificar cuantos registros componen su nómina
    NumRec := 0;
    Cadena := cdDatos.FieldByName('Clave').AsString;
    while Pos('|', Cadena) > 0 do
    begin
      Inc(NumRec);
      Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
    end;

    // Obtener el universo de conceptos de entre todos los empleados
    cdDatos.First;
    while not cdDatos.Eof do
    begin
      for i := 0 to NumRec -1 do
      begin
        Modo := Parte(i, cdDatos.FieldByName('Modo').AsString);
        Codigo := Parte(i, cdDatos.FieldByName('CodigoConcepto').AsString);
        if (CompareText(Modo, 'EMPLEADO') = 0) and (cdGenerales.FieldDefs.IndexOf(Codigo) < 0) then
          cdGenerales.FieldDefs.Add(Codigo, ftString, 200, False);
      end;
      cdDatos.Next;
    end;

    cdGenerales.CreateDataSet;
    cdGenerales.Open;
    cdDatos.First;

    while not cdDatos.Eof do
    begin
      // Identificar cuantos registros componen su nómina
      NumRec := 0;
      Cadena := cdDatos.FieldByName('Clave').AsString;
      while Pos('|', Cadena) > 0 do
      begin
        Inc(NumRec);
        Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
      end;

      cdGenerales.Append;
      cdGenerales.FieldByName('IdPersonal').AsInteger := cdDatos.FieldByName('IdPersonal').AsInteger;

      for i := 0 to NumRec -1 do
      begin
        Modo := Parte(i, cdDatos.FieldByName('Modo').AsString);
        Codigo := Parte(i, cdDatos.FieldByName('CodigoConcepto').AsString);
        Titulo := Parte(i, cdDatos.FieldByName('Titulo').AsString);
        Nombre := Parte(i, cdDatos.FieldByName('Descripcion').AsString);
        Grupo := Parte(i, cdDatos.FieldByName('IdGrupoConcepto').AsString);
        Cargo := Parte(i, cdDatos.FieldByName('Cargo').AsString);
        Valor := Parte(i, cdDatos.FieldByName('Valor').AsString);

        if CompareText(Modo, 'EMPLEADO') = 0 then
        begin
          cdGenerales.FieldByName(Codigo).AsString := Valor;
          if (CompareText(codigo,'FechaNomina'))=0 then   //modif
            FNomina := Valor;
          if (CompareText(codigo,'RegPatIMSS'))=0 then   //modif
            regPatronal := Valor;
        end;

        if CompareText(Modo, 'PERCEPCION') = 0 then
        begin
          memPercepciones.Append;
          memPercepciones.FieldByName('IdPersonal').AsInteger := cdDatos.FieldByName('IdPersonal').AsInteger;
          memPercepciones.FieldByName('FechaNomina').AsString := FNomina;
          memPercepciones.FieldByName('RegPatImss').AsString := regPatronal;
          memPercepciones.FieldByName('CodigoConcepto').AsString := Codigo;
          memPercepciones.FieldByName('Titulo').AsString := Titulo;
          memPercepciones.FieldByName('Nombre').AsString := Nombre;
          memPercepciones.FieldByName('Importe').AsString := Valor;
          memPercepciones.Post;
        end;

        if CompareText(Modo, 'DEDUCCION') = 0 then
        begin
          memDeducciones.Append;
          memDeducciones.FieldByName('IdPersonal').AsInteger := cdDatos.FieldByName('IdPersonal').AsInteger;
          memDeducciones.FieldByName('FechaNomina').AsString := FNomina;
          memDeducciones.FieldByName('RegPatImss').AsString := regPatronal;
          memDeducciones.FieldByName('CodigoConcepto').AsString := Codigo;
          memDeducciones.FieldByName('Titulo').AsString := Titulo;
          memDeducciones.FieldByName('Nombre').AsString := Nombre;
          memDeducciones.FieldByName('Importe').AsString := Valor;
          memDeducciones.Post;
        end;
      end;
      cdGenerales.Post;
      cdDatos.Next;
    end;
    {$ENDREGION 'DESCOMPOSICION DE CAMPOS MULTIVALUADOS'}

    //HOja
    Excel := CreateOleObject('Excel.Application');
    // Mostrar el excel
    Excel.Visible:= true;
    // evitar que nos pregunte si deseamos sobreescribir el archivo
    Excel.DisplayAlerts := false;
    // agregar libro de trabajo
    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
    // tomar una referencia a la hoja creada
    WorkSheet := WorkBook.WorkSheets[1];
    WorkSheet.Name := 'Reporte Acumulado Global';

    cdNomina.first;  //primer fecha de Nomina
    sumISPT := 0;
    sumIMSS := 0;
    SumINFONAVIT := 0;
    otrasDeduc :=0;
    sumSueldo := 0;
    otrasPercep := 0;
    SumaDeducciones := 0;
    SumaPercepciones := 0;

    if not CargarDatosFiltrados(cdRegistroPatronal,'iId',[-1]) then
      raise InteligentException.CreateByCode(5,['Registro Patronal']);

    if cdRegistroPatronal.active then
      cdRegistroPatronal.Refresh
    else
      cdRegistroPatronal.open;

    cdRegistroPatronal.first;

    while Not cdRegistroPatronal.eof do
    begin
      cdNomina.First;
      while Not cdNomina.Eof do
      begin
        //FILTRAR POR PRIMER FECHA DE NOMINA Y REG PATRONAL
        x := 2;
        cdGenerales.filtered := false;
        cdGenerales.Filter :=  'regPatImss =' + cdRegistroPatronal.FieldByName('sRegistroPatronal').AsString + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) ;
        cdGenerales.filtered := true;
        cdGenerales.First;

        sumISPT := 0;
        sumIMSS := 0;
        SumINFONAVIT := 0;
        otrasDeduc :=0;
        sumSueldo := 0;
        otrasPercep := 0;
        SumaDeducciones := 0;
        SumaPercepciones := 0;
        SumaSueldoNeto := 0;
        numLin := 0;

        if cdGenerales.RecordCount>0 then
        begin
          SumaDeducciones := 0;
          SumaPercepciones := 0;
          SumaSueldoNeto := 0;
          {$REGION 'FORMATO A ENCABEZADO EXCEL'}
          //Bordes del encabezado de la(s) tabla(s)
          while x<= 13 do
          begin
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].select;

            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].HorizontalAlignment := xlCenter;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].VerticalAlignment := xlBottom;

            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Font.Name := 'Arial';
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Font.size := 10;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Font.Bold := true;

            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders.colorIndex := 0;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders.TintAndShade := 0;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders.Weight := xlMedium;

            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders.LineStyle := xlContinuous;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders[xlDiagonalDown].LineStyle := xlNone;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders[xlDiagonalUp].LineStyle := xlNone;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders[xlInsideVertical].LineStyle := xlNone;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Borders[xlInsideHorizontal].LineStyle := xlNone;
            inc(x);
          end;
          x := 0;

          while x<=2 do
          begin
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Font.Name := 'Arial';
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Font.size := 10;
            Excel.Range[LetraColumna(columx+x)+IntToStr(rowx)+':'+LetraColumna(columx+x)+IntToStr(rowx+1)].Font.Bold := true;
            inc(x);
          end;

          //ENCABEZADO COLUMNAS
          WorkSheet.cells[rowx,1] := 'REGISTRO';
          WorkSheet.cells[rowx+1,1] := 'PATRONAL';
          WorkSheet.cells[rowx+1,2] := 'FECHA';
          WorkSheet.cells[rowx,3] := 'NO';
          WorkSheet.cells[rowx,4] := 'NOMBRE';
          WorkSheet.cells[rowx,5] := 'SUELDO';
          WorkSheet.cells[rowx+1,5]:= 'DIARIO';
          WorkSheet.cells[rowx,6] := 'SUELDO';
          WorkSheet.cells[rowx+1,6] := 'QUINCENAL';
          WorkSheet.cells[rowx,7] := 'SUBSIDIO';
          WorkSheet.cells[rowx+1,7] := 'AL EMPLEO';
          WorkSheet.cells[rowx,8] := 'TOTAL';
          WorkSheet.cells[rowx+1,8] := 'PERCEPCION';
          WorkSheet.cells[rowx,9] := '(-)';
          WorkSheet.cells[rowx+1,9] := 'I.S.P.T.';
          WorkSheet.cells[rowx,10] := '(-)';
          WorkSheet.cells[rowx+1,10] := 'I.M.S.S.';
          WorkSheet.cells[rowx,11] := '(-)';
          WorkSheet.cells[rowx+1,11] := 'INFONAVIT';
          WorkSheet.cells[rowx,12] := 'OTRA';
          WorkSheet.cells[rowx+1,12] := 'DEDUCC';
          WorkSheet.cells[rowx,13] := 'TOTAL';
          WorkSheet.cells[rowx+1,13] := 'DEDUCCION';
          WorkSheet.cells[rowx,14] := 'SUELDO';
          WorkSheet.cells[rowx+1,14] := 'NETO';
          {$ENDREGION 'FORMATO A ENCABEZADO EXCEL'}

          numLin := 1; //contador de registro de cada nomina, se reinicia cada nueva tabla
          while NOt cdGenerales.Eof do
          begin

            //GENERALES
            WorkSheet.cells[rowx+2,3] :=  NumLin;
            WorkSheet.cells[rowx+2,1] :=  cdRegistroPatronal.FieldByName('sRazonSocial').asString;
            WorkSheet.cells[rowx+2,2] :=  cdGenerales.fieldbyName('FechaNomina').AsString;
            WorkSheet.cells[rowx+2,4] :=  cdGenerales.fieldbyName('NombreCompleto').AsString;
            WorkSheet.cells[rowx+2,5] :=  cdGenerales.fieldbyName('SalMinGenZona').AsString;

            {$REGION 'PERCEPCIONES (CALCULO)'}
            //OTRAS PERCEPCIONES
            memPercepciones.Filtered := False;
            memPercepciones.Filter:=
              ' (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString +' AND Titulo = ' + QuotedStr('PRESTAMO PERSONAL') +  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('HORAS EXTRA')+  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)  + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) +')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('PRIMA DOMINICAL')+  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)  + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('VACACIONES')+  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)  + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('PRIMA VACACIONAL')+  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)  + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('AGUINALDO')+  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)  + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('Zapatos')+  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)  + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')';
            memPercepciones.Filtered := True;
            memPercepciones.First;

            sumaCells :=0.0;
            while not memPercepciones.Eof do
            begin
              sumaCells := sumaCells + memPercepciones.fieldbyName('importe').asFloat;
              memPercepciones.next;
            end;
            WorkSheet.cells[rowx+2,Columx+7] := sumaCells;
            otrasPercep := otrasPercep + sumaCells;

            //SUELDO
            memPercepciones.Filtered := False;
            memPercepciones.Filter:='IdPersonal = ' + cdgenerales.FieldByName('IdPersonal').AsString +
              ' AND Titulo = ' + QuotedStr('SUELDO') +  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString);
            memPercepciones.Filtered := True;
            memPercepciones.First;
            WorkSheet.cells[rowx+2,Columx+6] := memPercepciones.FieldByName('importe').AsFloat;
            sumSueldo := sumSueldo + memPercepciones.fieldbyName('importe').asFloat;

            //TOTAL PERCEPCIONES
            memPercepciones.Filtered := False;
            memPercepciones.Filter:=
              'IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('PRESTAMO PERSONAL') +  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)+ ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) +
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('HORAS EXTRA') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('PRIMA DOMINICAL') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('VACACIONES') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('PRIMA VACACIONAL') + 'AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('AGUINALDO') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('Zapatos') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')'+
              ' OR (IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('SUELDO') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)+ ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) + ')';
            memPercepciones.Filtered := True;
            memPercepciones.First;

            sumaCells :=0.0;
            while not memPercepciones.Eof do
            begin
              sumaCells := sumaCells + memPercepciones.fieldbyName('importe').asFloat;
              memPercepciones.next;
            end;
            WorkSheet.cells[rowx+2,Columx+8] := sumaCells;
            subTotPercepciones := sumaCells;
            SumaPercepciones := SumaPercepciones + sumaCells;
            {$ENDREGION 'PERCEPCIONES (CALCULO)'}

            {$REGION 'DEDUCCIONES (CALCULO)'}
            //DEDUCCIONES-----------------------------------------------------------------------------------
            //ISPT
            MemDeducciones.Filter:=
              'IdPersonal = ' + cdgenerales.FieldByName('IdPersonal').AsString +
              ' AND Titulo = ' + QuotedStr('I.S.P.T.') +  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) ;
            memDeducciones.Filtered := True;
            memDeducciones.First;
            WorkSheet.cells[rowx+2,Columx+9] := memDeducciones.FieldByName('importe').AsFloat;
            sumISPT := sumISPT + memDeducciones.FieldByName('importe').AsFloat;

            //IMSS
            MemDeducciones.Filter:=
              'IdPersonal = ' + cdgenerales.FieldByName('IdPersonal').AsString +
              ' AND Titulo = ' + QuotedStr('I.M.S.S.') +  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) +' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) ;
            memDeducciones.Filtered := True;
            memDeducciones.First;
            WorkSheet.cells[rowx+2,Columx+10] := memDeducciones.FieldByName('importe').AsFloat;
            sumIMSS := sumIMSS + memDeducciones.FieldByName('importe').AsFloat;

            //INFONAVIT
            MemDeducciones.Filter:=
              'IdPersonal = ' + cdgenerales.FieldByName('IdPersonal').AsString +
              ' AND Titulo = ' + QuotedStr('INFONAVIT') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) +' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) ;
            memDeducciones.Filtered := True;
            memDeducciones.First;
            WorkSheet.cells[rowx+2,Columx+11] := memDeducciones.FieldByName('importe').AsFloat;
            SumINFONAVIT := SumINFONAVIT + memDeducciones.FieldByName('importe').AsFloat;

            //OTRAS DEDUCCIONES
            memDeducciones.Filtered := False;
            memDeducciones.Filter:=
              ' IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('PENSIÃ“N ALIMENTICIA') +  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString)  +
              ' OR IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND titulo = ' + QuotedStr('DESC. PRESTAMO PERS.') +  ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) ;
            memDeducciones.Filtered := True;
            memDeducciones.First;
            sumaCells := 0.0;
            while not memDeducciones.eof do
            begin
              sumaCells := sumaCells + memDeducciones.fieldbyName('importe').asFloat;
              memDeducciones.next;
            end;
            WorkSheet.cells[rowx+2,Columx+12] := sumaCells;
            otrasDeduc := otrasDeduc + sumaCells;

            //TOTALDEDUCCIONES
            memDeducciones.Filtered := False;
            memDeducciones.Filter:=
              ' IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('PENSIÃ“N ALIMENTICIA') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) +
              ' OR IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('I.S.P.T.') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) +
              ' OR IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('I.M.S.S.') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) +
              ' OR IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('INFONAVIT') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString) +
              ' OR IdPersonal = ' + cdGenerales.FieldByName('IdPersonal').AsString + ' AND Titulo = ' + QuotedStr('DESC. PRESTAMO PERS.') + ' AND FechaNomina = ' + QuotedStr(cdNomina.FieldByName('FechaNomina').AsString) + ' AND regPatImss = ' + QuotedStr(cdRegistroPatronal.FieldByName('sregistroPatronal').AsString);
            memDeducciones.Filtered := True;
            memDeducciones.First;
            sumaCells := 0.0;
            while not memDeducciones.eof do
            begin
              sumaCells := sumaCells + memDeducciones.fieldbyName('importe').asFloat;
              memDeducciones.next;
            end;
            WorkSheet.cells[rowx+2,Columx+13] := sumaCells;
            SumaDeducciones := SumaDeducciones + sumacells;
            subTotDeducciones := sumaCells;
            SumaSueldoNeto := SumaSueldoNeto + (subTotPercepciones -subTotDeducciones);
            {$ENDREGION 'DEDUCCIONES (CALCULO)'}

            //BORDES DELGADOS, CUERPO DE TABLA
            Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+3)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.LineStyle := xlContinuous;
            Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+3)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.colorIndex := 0;
            Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+3)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.TintAndShade := 0;
            Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+3)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.Weight := xlThin;

            WorkSheet.cells[rowx+2,Columx+14] :=subTotPercepciones -subTotDeducciones;

            inc(numLin);
            inc(rowx);
            cdGenerales.next;
          end;

          //ASIGNACION DE TODAS LAS SUMAS A CELDAS DE EXCEL
          WorkSheet.cells[rowx+2,Columx+6] := sumSueldo;
          WorkSheet.cells[rowx+2,Columx+7] := otrasPercep;
          WorkSheet.cells[rowx+2,Columx+8] := SumaPercepciones;
          WorkSheet.cells[rowx+2,Columx+9] := sumISPT;
          WorkSheet.cells[rowx+2,Columx+10] := sumIMSS;
          WorkSheet.cells[rowx+2,Columx+11] := SumINFONAVIT;
          WorkSheet.cells[rowx+2,Columx+12] := otrasDeduc;
          WorkSheet.cells[rowx+2,Columx+13] := SumaDeducciones;
          WorkSheet.cells[rowx+2,Columx+14] := SumaSueldoNeto;

          {$REGION 'FORMATO A CUERPO TABLA'}
          //FORMATO A LAS SUMAS
          WorkSheet.cells[rowx+2,Columx+3] := 'SUMA';
          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].HorizontalAlignment := xlCenter;        Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].VerticalAlignment := xlBottom;

          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].Font.Name := 'Arial';
          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].Font.size := 11;
          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].Font.Bold := true;

          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].Borders.LineStyle := xlContinuous;
          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].Borders.colorIndex := 0;
          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].Borders.TintAndShade := 0;
          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].Borders.Weight := xlMedium;
          Excel.Range[LetraColumna(columx+2)+IntToStr(rowx+2)+':'+LetraColumna(columx+4)+IntToStr(rowx+2)].mergeCells := true;

          Excel.Range[LetraColumna(columx+5)+IntToStr(rowx+2)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.LineStyle := xlContinuous;
          Excel.Range[LetraColumna(columx+5)+IntToStr(rowx+2)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.colorIndex := 0;
          Excel.Range[LetraColumna(columx+5)+IntToStr(rowx+2)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.TintAndShade := 0;
          Excel.Range[LetraColumna(columx+5)+IntToStr(rowx+2)+':'+LetraColumna(columx+13)+IntToStr(rowx+2)].Borders.Weight := xlMedium;

          //TAMAÑO DE COLUMNAS
          Excel.Columns['C:C'].ColumnWidth := 3.5;
          Excel.Columns['D:D'].ColumnWidth := 28;
          Excel.Columns['E:E'].ColumnWidth := 10;
          Excel.Columns['F:F'].ColumnWidth := 12;
          Excel.Columns['G:G'].ColumnWidth := 13;
          Excel.Columns['H:H'].ColumnWidth := 13.5;
          Excel.Columns['I:I'].ColumnWidth := 13;
          Excel.Columns['J:J'].ColumnWidth := 13;
          Excel.Columns['K:K'].ColumnWidth := 13.7;
          Excel.Columns['L:L'].ColumnWidth := 13.3;
          Excel.Columns['M:M'].ColumnWidth := 13.3;
          Excel.Columns['N:N'].ColumnWidth := 13.3;
          {$ENDREGION 'FORMATO A CUERPO TABLA'}
          rowx := rowx +5;
          cdGenerales.Next;
        end;
        cdNomina.Next;
        inc(x);
      end;
      cdRegistroPatronal.next;
    end;
  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
    end;
  end;
end;

end.
