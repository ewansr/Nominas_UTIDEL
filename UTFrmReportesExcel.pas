unit UTFrmReportesExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC,UInteliDialog, ClientModuleUnit1, rhh_genericclasses,
  DB, DBClient, ComObj, ExportaExcel, StrUtils, cxContainer, cxEdit, StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, ExtCtrls, Menus, cxButtons,
  dxGDIPlusClasses, cxImage, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBCtrls;

type
  TDetDes = class
    ColumnaInicial: Integer;
    FilaInicial   : Integer;
    Titulo        : String;
    Separador     : String;
    IdTipoNomina1 : String;
    IdTipoNomina2 : String;
    IdTipoNomina3 : String;
    Sumado: String;
  end;

  TMisDesgloses = Class(TStringList)
  Public
    function AddObject(const S: string; AObject: TObject): Integer; override;
  published
    property Count;
  End;

  TFrmReportesExcel = class(TForm)
    dsFijos: TDataSource;
    dlgGuardarExcel: TSaveDialog;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    dsAnios: TDataSource;
    dsPersonal: TDataSource;
    dsEncabezados: TDataSource;
    cdFijos: TClientDataSet;
    cdEncabezados: TClientDataSet;
    cdPersonal: TClientDataSet;
    cdAnios: TClientDataSet;
    cboNombreReporte: TComboBox;
    cboanio: TDBLookupComboBox;
    CxImgeXCEL: TcxImage;
    Label2: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    ExApp, ExRango : Variant;
    ImprimirReporteGlobal: Boolean;
    ImprimirReporteAnual: Boolean;
    ImprimirDim: Boolean;
    IdTipoNomina1 : Integer;
    IdTipoNomina2 : String;
    IdTipoNomina3 : String;
    incNivel: Integer;
    cdAniosNomina: TclientDataSet;
    Conceptos: TStringList;
    DatosPer: TStringList;
    GrupoTEG: TStringList;
    Encabezados1: TStringList;
    Encabezados2: TStringList;
    ImprimirEnc: Boolean;
    const
    TituloCampo1 : array [0..34] of String = ('No','REGISTRO PATRONAL','APELLIDO PARTERNO',
                                            'APELLIDO MATERNO','NOMBRE',
                                            'RFC','CURP',
                                            'FECHA DE ALTA','FECHA DE BAJA',
                                            'SUELDO DIARIO','SUELDO QUINCENAL',
                                            'SUBSIDIO AL EMPLEO','HORAS EXTRAS',
                                            'PRIMA DOMINICAL','DIA FESTIVO',
                                            'DOMINGO LABORAL','AGUINALDO',
                                            'VACACIONES','PRIMA VACACIONAL',
                                            'PRIMA ANTIGUEDAD','INDEMNIZACION',
                                            '20 DIAS POR AÑO','OTRAS PERCEPCIONES','TOTAL PERCEPCION',
                                            'I.S.P.T','I.M.S.S',
                                            'INFONAVIT', 'FONACOT', 'PENSION ALIMENTICIA', 'AJUSTE AL NETO','OTRAS DEDUCCIONES',
                                            'TOTAL DEDUCCION','SUELDO NETO',
                                            'SUBSIDIO','ISPT');

    TituloCampo2 : array [0..34] of String = ('No','REGISTRO PATRONAL','APELLIDO PARTERNO',
                                            'APELLIDO MATERNO','NOMBRE',
                                            'RFC','CURP',
                                            'FECHA DE ALTA','FECHA DE BAJA',
                                            'SUELDO DIARIO','SUELDO CATORCENAL',
                                            'SUBSIDIO AL EMPLEO','HORAS EXTRAS',
                                            'PRIMA DOMINICAL','DIA FESTIVO',
                                            'DOMINGO LABORAL','AGUINALDO',
                                            'VACACIONES','PRIMA VACACIONAL',
                                            'PRIMA ANTIGUEDAD','INDEMNIZACION',
                                            '20 DIAS POR AÑO','OTRAS PERCEPCIONES','TOTAL PERCEPCION',
                                            'I.S.P.T','I.M.S.S',
                                            'INFONAVIT', 'FONACOT', 'PENSION ALIMENTICIA', 'AJUSTE AL NETO', 'OTRAS DEDUCCIONES',
                                            'TOTAL DEDUCCION','SUELDO NETO',
                                            'SUBSIDIO','ISPT');

    Procedure ExportarAExcelFijos;
    procedure ExportarExcelAnual;

    procedure SetBorders(Rango: Variant; Grosor, Tipo: integer);

    procedure CrearNiveles(ColIni, FilaInicio: Integer; Titulo, IdTipoNomina1, IdTipoNomina2, IdTipoNomina3, Sumado, separador:String);
    procedure combinarYCentrarDatosEncabezados(Excel : Variant; rangoColumnas : string);
    procedure CentrarDatos(Excel: Variant; rangoColumnas : string);
    procedure FormatoCelda(Excel: Variant; rangoColumnas : string; FormatoFila4: Boolean ;Bordes: Boolean; IdGrupo: Integer);
    procedure FormulasFormato(Datos: TclientDataSet; Excel: Variant);
    procedure Formulas(Excel: Variant; RangoColumnas: string; Parametro: Integer);
  public
    DetDesglose: TDetDes;
    NivelDesglose  : TMisDesgloses;
    IdNominaFijo: String;
    IdNominaPlataforma: String;
    IdNomFijoP:String ;


    { Public declarations }
  end;

var
  FrmReportesExcel: TFrmReportesExcel;

implementation

{$R *.dfm}

procedure TFrmReportesExcel.ExportarAExcelFijos;
var
  ExApp, book, Sheet, ExRango  : Variant;
  ColumnaInicial, FilaInicial, i   :Integer;
  incColumna, IncFila : Integer;
  Sumado, CampoSeparador, LocNombreCeja: String;
  OldregPat: String;
  Salir   : Boolean;
  YaImpreso : Boolean;
  Cursor  : TCursor;
  SumaISPT, sumaSUBS: Double;
  OldIdNomina: Integer;
begin
  try
    OldIdNomina := -1;
    if dlgGuardarExcel.Execute then
    begin
      try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        //*Creando el objeto*/
        try
          ExApp := CreateOleObject('Excel.Application');
          ExApp.Visible       :=  true;
          ExApp.DisplayAlerts := False;
          ExApp.WorkBooks.Add;
          Book := ExApp.Workbooks[1];
        Except
          on e: Exception do
          begin
            Salir := true;
            InteliDialog.ShowModal('Aviso', 'La aplicación de Microfost Excel no se encuentra instalada en el equipo, informe a su administrador de sistema de este error', mtError, [mbOK], 0);
          end;
        end;

        //*iniciando proceso si no hay error*/
        if not Salir then
        begin
          while Book.Sheets.Count > 1 do
              Book.WorkSheets[1].Delete;

          Sheet := Book.sheets[book.Sheets.Count];
          sheet.Select;

          if cdfijos.RecordCount > 0 then
          begin
            ImprimirEnc := True;
            incFila := 0;
            ExRango := ExApp.Range['A1'];
            LocNombreCeja := cboNombreReporte.Text;
            ExRango.Value := cboNombreReporte.Text + ', Año '+ cboAnio.Text;
            ExRango.Font.bold   := True;
            ExRango.Font.UnderLine := 2;
            combinarYCentrarDatosEncabezados(ExApp,'A1:G1');
            YaImpreso := False;
            ExApp.ActiveSheet.Name := LeftStr(LocNombreCeja, 31);
            ExApp.ActiveSheet.Move(Book.WorkSheets[book.Sheets.Count]);

            while incNivel < nivelDesglose.Count do
            Begin

              ColumnaInicial:= TDetDes(nivelDesglose.Objects[incNivel]).ColumnaInicial;
              FilaInicial   := TDetDes(nivelDesglose.Objects[incNivel]).FilaInicial;
              IdTipoNomina1 := StrToInt(TDetDes(NivelDesglose.Objects[incNivel]).IdTipoNomina1);
              IdTipoNomina2 := TDetDes(NivelDesglose.Objects[incNivel]).IdTipoNomina2;
              IdTipoNomina3 := TDetDes(NivelDesglose.Objects[incNivel]).IdTipoNomina3;
              CampoSeparador := TDetDes(NivelDesglose.Objects[incNivel]).Separador;

              //encabezados.
              if CampoSeparador = 'Fijo' then
              begin
                for i := 0 to length(TituloCampo1) -1 do
                begin
                  ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila -1)].Value := TituloCampo1[i];
                  ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila -1)].Font.Bold := True;
                end;
                YaImpreso := True;
              end;

              if (CampoSeparador = 'Plataforma') and (YaImpreso = False) then
              begin
                for i := 0 to length(TituloCampo2) -1 do
                begin
                  ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila -1)].Value := TituloCampo2[i];
                  ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila -1)].Font.Bold := True;
                end;
                YaImpreso := True;
              end;

              //aqui se valida si el reporte es de acumulado global general.
              if (CampoSeparador = 'Plataforma') and (ImprimirReporteGlobal) then
              begin
                inc(incFila,2);

                if cdPersonal.Active then
                  cdPersonal.Close;

                if cdFijos.Active then
                  cdFijos.Close;

                if not CrearConjunto(cdPersonal,'nuc_personal_excel',ccCatalog) then
                  raise InteligentException.CreateByCode(5,['nuc_personal_excel']);

                if not CargarDatosFiltrados(cdPersonal, 'IdOrganizacion,Padre,anio,IdTipoNomina',[-1,-5,cboAnio.text ,IdTipoNomina2]) then
                  raise InteligentException.CreateByCode(5,['nuc_personal_excel']);

                cdPersonal.Open;

                if not CrearConjunto(cdfijos,'nom_detallenomina_excelfijos',ccCatalog) then
                  raise InteligentException.CreateByCode(5,['nuc_personal_excel']);

                if not CargarDatosFiltrados(cdfijos, 'anio,IdTipoNomina,Sumado',[cboAnio.Text ,IdTipoNomina3, Sumado]) then
                  raise InteligentException.CreateByCode(5,['nom_detallenomina_excelfijos']);
                cdfijos.Open;

                if not cdFijos.RecordCount > 0 then
                  cdpersonal.EmptyDataSet;
              end;

              //aqui  ya  se  vacia  los conceptos al reporte de  excel
              if cdPersonal.RecordCount > 0 then
              begin
                cdPersonal.First;
                while not cdPersonal.Eof do
                begin
                  cdfijos.Filtered := False;
                  cdfijos.Filter := 'IdPersonal = ' + cdPersonal.FieldByName('IdPersonal').AsString;
                  cdfijos.Filtered := True;

                  //aqui  van datos personales.
                  ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value     := cdPersonal.RecNo;
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := cdPersonal.FieldByName('CodigoOrganizacion').AsString;
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 2) + intToStr(FilaInicial + incFila)].Value :=  cdPersonal.FieldByName('APaterno').AsString;
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 3) + intToStr(FilaInicial + incFila)].Value := cdPersonal.FieldByName('AMaterno').AsString;
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 4) + intToStr(FilaInicial + incFila)].Value :=  cdPersonal.FieldByName('Nombres').AsString;
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 5) + intToStr(FilaInicial + incFila)].Value := cdPersonal.FieldByName('rfc').AsString;
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 6) + intToStr(FilaInicial + incFila)].Value := cdPersonal.FieldByName('curp').AsString;

                  if cdPersonal.FieldByName('FechaAlta').AsString <> ''then
                    ExApp.Range[ColumnaNombre(ColumnaInicial + 7) + intToStr(FilaInicial + incFila)].Value := cdPersonal.FieldByName('FechaAlta').AsString;

                  if cdPersonal.FieldByName('FechaBaja').AsString <> '' then
                    ExApp.Range[ColumnaNombre(ColumnaInicial + 8) + intToStr(FilaInicial + incFila)].Value := cdPersonal.FieldByName('FechaBaja').AsString;

                  //aqui va el salario y  el salario quincenal o catorcenal dependiendo el caso
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 9) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('SalarioDiario').AsString;
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 12) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('HorasExtras').AsString;

                  //se inician en cero  algunas columnas por  si  no  llegaran a tener informacion
                  for i := 14 to 21 do
                    ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila)].Value := 0;

                  SumaISPT := 0;
                  SumaSUBS := 0;

                  while not cdFijos.Eof do
                  begin
                    OldIdNomina := cdFijos.fieldByName('IdNomina').asInteger;

                    //Aqui empiezan las percepciones.
                    if cdFijos.FieldByName('Clave').AsString = 'SUELDO' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 10) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsString;

                    //if (cdFijos.FieldByName('IdTipoNomina').AsInteger = IdTipoNomina1) and (cdFijos.FieldByName('Clave').AsString = 'SubsidioDT')  then   //Corrección al siubsidio
                    if cdFijos.FieldByName('CodigoConcepto').AsString = '32' then
                    begin
                      sumaSUBS := sumaSUBS + Abs(cdfijos.FieldByName('ImporteConcepto').Asfloat);
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 11) + intToStr(FilaInicial + incFila)].Value := sumaSUBS;
                    end;

                    //if ((cdFijos.FieldByName('IdTipoNomina').AsInteger = IdTipoNomina1) and (cdfijos.FieldByName('HorasExtras').Asfloat > 0)) then
                    if cdFijos.FieldByName('Clave').AsString = 'HorasExtraImporte' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 12) + intToStr(FilaInicial + incFila)].Value := Abs(cdfijos.FieldByName('ImporteConcepto').Asfloat);
                      //ExApp.Range[ColumnaNombre(ColumnaInicial + 12) + intToStr(FilaInicial + incFila)].Value := Abs(cdfijos.FieldByName('HorasExtrasImporte').Asfloat);

                    if cdFijos.FieldByName('Clave').AsString = 'PrimaDominical' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 13) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if (cdFijos.FieldByName('Clave').AsString = 'DiasFestivos') then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 14) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    //if (cdFijos.FieldByName('DomingosTrabajados').AsInteger > 0) and (cdFijos.FieldByName('IdTipoNomina').AsInteger = IdTipoNomina1) then
                    if cdFijos.FieldByName('CodigoConcepto').AsString = '9' then  //Importe domingos laborados    corrección 24-feb
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 15) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;//cdfijos.FieldByName('DomingosTrabajados').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = 'Aguinaldo' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 16) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = 'Vacaciones' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 17) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = 'PrimaVacacional' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 18) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = 'PRIMAANTIGUEDAD' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 19) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = 'INDEMNIZACION' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 20) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = '20DANIO' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 21) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = 'OtrasPercepciones' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 22) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    //Aqui empiezan  las Deducciones
                    if (cdFijos.FieldByName('CodigoConcepto').AsString = '41') then
                    begin
                      SumaISPT := SumaISPT + cdfijos.FieldByName('ImporteConcepto').AsFloat;
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 24) + intToStr(FilaInicial + incFila)].Value := SumaISPT;
                    end;          //Manolo

//                    if (cdFijos.FieldByName('CodigoConcepto').AsString = '49') then
//                    begin
//                      //SumaISPT := SumaISPT + cdfijos.FieldByName('ImporteConcepto').AsFloat;
//                      ExApp.Range[ColumnaNombre(ColumnaInicial + 24) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;;
//                    end;

                    if cdFijos.FieldByName('Clave').AsString = 'IMSSEmpleado' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 25) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

                    if cdFijos.FieldByName('Clave').AsString = 'PrestamoInfonavit' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 26) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;

//                    if cdFijos.FieldByName('Clave').AsString = 'otrasDeducciones' then
//                      ExApp.Range[ColumnaNombre(ColumnaInicial + 27) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;


                    //3 columnas faltantes
                    if cdFijos.FieldByName('CodigoConcepto').AsString = '61' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 27) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;


                    if cdFijos.FieldByName('CodigoConcepto').AsString = '60' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 28) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;


                    if cdFijos.FieldByName('CodigoConcepto').AsString = '99' then
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 29) + intToStr(FilaInicial + incFila)].Value := cdfijos.FieldByName('ImporteConcepto').AsFloat;


                    //Informativos
                    if (cdFijos.FieldByName('subsidio1').AsInteger > 0) and (cdFijos.FieldByName('IdTipoNomina').AsInteger = IdTipoNomina1) then         //subsidio
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 33) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=IF((RC[-22]-RC[-9] )> 0, RC[-22]-RC[-9], 0)';


                    //if (cdFijos.FieldByName('subsidio1').AsInteger = 0) and (cdFijos.FieldByName('IdTipoNomina').AsInteger = IdTipoNomina1) then         //subsidio
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 34) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=IF((RC[-10]-RC[-23] )> 0, RC[-10]-RC[-23], 0)';     //el orden de los factores no altera el producto



                    cdFijos.next;

//                    if OldIdNomina <> cdFijos.fieldByName('IdNomina').asInteger then//Saul
//                      inc(incFila);//Saul
                  end;

                  //Formulas 1.
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 23) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=SUM(RC[-13]:RC[-1])';  //Suma percepciones
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 31) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=SUM(RC[-7]:RC[-1])';   //sUMA DEDUCCIONES
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 32) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=RC[-9]-RC[-1]';   //SUELDO NETO
                  //ExApp.Range[ColumnaNombre(ColumnaInicial + 34) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=RC[-7]-RC[-19]+RC[-1]';
                  ExApp.Range[ColumnaNombre(ColumnaInicial + 10) + intToStr(FilaInicial + incFila)+':'+ ColumnaNombre(ColumnaInicial + 35) + intToStr(FilaInicial + incFila)].NumberFormat := '_-[$$-80A]* #,##0.00_-;-[$$-80A]* #,##0.00_-;_-[$$-80A]* ""-""??_-;_-@_-';
                  //CentrarDatos(ExApp,'H:I');

                  inc(incFila);

                  cdPersonal.Next;
                end;

                SetBorders(ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial-1)  + ':' + ColumnaNombre(ColumnaInicial+34) + intToStr(FilaInicial + incFila -1)], xlThin, xlContinuous);

                //Formulas 2.
                if cdPersonal.RecordCount > 0 then
                begin
                  //sumatoria parcial
                  for i := 9 to (length(TituloCampo1)-1) do
                  begin
                    ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=SUM(R[-'+ IntToStr(cdPersonal.RecordCount) +']C:R[-1]C)';
                    ExRango := ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila)];
                    ExRango.Font.Bold := True;
                    Exrango.Borders[xlEdgeTop].LineStyle := 1;
                    ExRango.Borders[xlEdgeTop].Weight    := 2;
                  end;

                  //Ajuste de columnas.
                  for i := 0 to (length(TituloCampo1)) do
                    ExApp.Columns[ColumnaNombre(i + 1)].EntireColumn.Autofit;

                  //sumatorias totales.
                  if (CampoSeparador = 'Plataforma') and (ImprimirReporteGlobal) then
                  begin
                    inc(incFila,2);
                    if ImprimirReporteGlobal then
                      for i := 9 to (length(TituloCampo1)-1) do
                        ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + incFila)].FormulaR1C1 := '=R[-' + IntToStr(cdPersonal.RecordCount + 4) + ']C+R[-2]C';
                  end;
                  //centrado  de columnas
                  //CentrarDatos(ExApp,'H:I');
                end;

                cdPersonal.EmptyDataSet;
                cdFijos.EmptyDataSet;
              end;
                inc(incNivel);
            end;
          End;

          try
            ExApp.ActiveWorkBook.SaveAs(dlgGuardarExcel.FileName + 'DESGLOSE GENERAL DE NÓMINA.xls');
            InteliDialog.ShowModal('Nóminas', 'Se ha almacenado el archivo en ' + dlgGuardarExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
          except
            on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
          end;
        end;
      finally
        Screen.Cursor := Cursor;
      end;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;

end;
procedure TfrmReportesExcel.ExportarExcelAnual;
var
  ExApp, book, Sheet, ExRango : Variant;
  ColumnaInicial, FilaInicial, i :Integer;
  IncFila: Integer;
  Sumado: String;
  CampoSeparador: String;
  LocNombreCeja: String;
  Cursor: TCursor;
  ColX, ColY : String;
  Salir : Boolean;

begin
   try
    if dlgGuardarExcel.Execute then
    begin
      try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        //Creando  el  objeto//
        Try
          ExApp := CreateOleObject('Excel.Application');
          ExApp.Visible := True;
          ExApp.DisplayAlerts := False;
          ExApp.WorkBooks.Add;
          Book := ExApp.WorkBooks[1];
        except
          on e: Exception do
          begin
            Salir := True;
            InteliDialog.ShowModal('Aviso','La aplicación de Microsoft Excel no se encuentra instalada en el equipo, infrome a su administrador  de sistema de este error.', mtError, [mbOk], 0)
          end;
        End;
        //* iniciar proceso si no hay error*//
        if not salir then
        begin
          while book.Sheets.Count > 1 do
            Book.WordSheets[1].Delete;

          Sheet := Book.sheets[book.Sheets.Count];
          Sheet.Select;

          if cdFijos.RecordCount > 0 then
          begin
            IncFila := 0;
            ExRango := ExApp.Range['A1'];
            LocNombreCeja := cboNombreReporte.Text;
            ExRango.Value := cboNombreReporte.Text +', Año ' + cboAnio.Text;
            ExRango.Font.bold := True;
            ExRango.Font.UnderLine := 2;
            ExRango := ExApp.Range['E3'];
            ExRango.Value := 'SUELDOS Y SALARIOS';
            ExRango.Font.bold := True;
            ExRango.Font.UnderLine := 2;

            CombinaryCentrarDatosEncabezados(ExApp, 'A1:G1');

            ExApp.ActiveSheet.Name := LeftStr(LocNombreCeja, 31);
            ExApp.ActiveSheet.Move(Book.WorkSheets[book.Sheets.Count]);

            //leer nivel
            IdTipoNomina3 := TDetDes(NivelDesglose.Objects[incNivel]).IdTipoNomina3;

            //Nuevo  Encabezado
            if not CrearConjunto(cdEncabezados,'nom_reporteanual',ccSelect) then
              raise InteligentException.CreateByCode(5,['nom_reportaanual']);

            if cdFijos.Active then
              cdFijos.close;

            if not CrearConjunto(cdfijos, 'nom_datos_anual',ccCatalog) then
              raise InteligentException.CreateBycode(5,['nom_datos_anual']);

            if not CargarDatosFiltrados(cdfijos, 'anio,IdTipoNomina,Sumado',[cboAnio.Text ,IdTipoNomina3, Sumado]) then
              raise InteligentException.CreateByCode(5,['nom_datos_anual']);

            i := 0;

            cdFijos.Open;
            cdEncabezados.Open;
            cdEncabezados.First;

            while not cdEncabezados.Eof do
            begin
              FilaInicial := cdEncabezados.FieldByName('ColumnaY').AsInteger;
              ColumnaInicial := cdEncabezados.FieldByName('ColumnaX').AsInteger;

              ExApp.Range[ColumnaNombre(ColumnaInicial + i) + IntToStr(FilaInicial)].Value := cdEncabezados.FieldByName('NombreColumna').AsString;

              if not cdEncabezados.FieldByName('Ancho').IsNull then
                ExApp.Columns[ColumnaNombre(ColumnaInicial + i)+':'+ColumnaNombre(ColumnaInicial + i)].ColumnWidth := cdEncabezados.FieldByName('Ancho').AsFloat;

               //Aqui se combinan  las  celdas
              if not cdEncabezados.FieldByName('AnchoColumna').IsNull then
                centrarDatos(ExApp,ColumnaNombre(ColumnaInicial + i ) + IntToStr(FilaInicial) + ':' + ColumnaNombre((ColumnaInicial + i ) + (cdEncabezados.FieldByName('AnchoColumna').AsInteger -1)) + IntToStr(FilaInicial))
              else
                FormatoCelda(ExApp,ColumnaNombre(ColumnaInicial + i) + IntToStr(FilaInicial),False,true,cdEncabezados.FieldByName('IdGrupo').AsInteger);

              i := i + cdEncabezados.FieldByName('IncColumna').AsInteger;
              cdEncabezados.Next;

              if columnaInicial <> cdEncabezados.FieldByName('ColumnaX').AsInteger then
                i := 0;
            end;
            ImprimirEnc := True;
            FormatoCelda(ExApp,'',True,False,0);
            //Datos
            i:= 0;

            cdfijos.First;
            while not cdfijos.Eof do
            begin
              cdEncabezados.First;
              FilaInicial := cdEncabezados.FieldByName('ColumnaY').AsInteger;
              ColumnaInicial := cdEncabezados.FieldByName('ColumnaX').AsInteger;

              ExApp.Range[ColumnaNombre(ColumnaInicial + i) + IntToStr(FilaInicial + (incFila + 1))].Value := IntToStr(cdfijos.RecNo);

              while cdEncabezados.FieldByName('IdGrupo').AsInteger < 4 do
              begin
                if (not cdEncabezados.FieldByName('CampoConsulta').IsNull) and (cdFijos.FindField(trim(cdEncabezados.FieldByName('CampoConsulta').AsString)) <> nil) then
                  ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + (incFila + 1))].Value := cdfijos.FieldByName(trim(cdEncabezados.FieldByName('CampoConsulta').AsString)).AsString
                else
                formulas(ExApp, ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + (incFila + 1)), cdEncabezados.FieldByName('IdColumna').AsInteger );

                i := i + cdEncabezados.FieldByName('IncColumna').AsInteger;
                cdEncabezados.Next;
              end;
              inc(IncFila);
              cdfijos.Next;
              i := 0;
            end;

            ExRango := ColumnaNombre(ColumnaInicial) + IntToStr(FilaInicial) + ':' + ColumnaNombre(ColumnaInicial + cdEncabezados.RecNo - 7) + IntToStr(FilaInicial + cdfijos.RecNo);
            FormatoCelda(ExApp,ExRango,False,true,0);

            ExRango := ColumnaNombre(ColumnaInicial + cdEncabezados.RecNo - 6) + IntToStr(FilaInicial) + ':' + ColumnaNombre(ColumnaInicial + cdEncabezados.RecNo - 2) + IntToStr(FilaInicial + cdfijos.RecNo);
            FormatoCelda(ExApp,ExRango,False,true,0);

            ExApp.Range[ColumnaNombre(ColumnaInicial) + IntToStr(FilaInicial + cdFijos.RecordCount) + ':' + ColumnaNombre(ColumnaInicial + cdEncabezados.RecNo - 7) + IntToStr(FilaInicial + cdfijos.RecordCount)].Borders[9].Weight := xlMedium;
            ExApp.Range[ColumnaNombre(ColumnaInicial + cdEncabezados.RecNo - 6) + IntToStr(FilaInicial) + ':' + ColumnaNombre(ColumnaInicial + cdEncabezados.RecNo - 2) + IntToStr(FilaInicial + cdfijos.RecNo)].Borders[9].Weight := xlMedium;
            i:= 0;

            cdfijos.First;

            cdEncabezados.First;

            while cdEncabezados.FieldByName('IdGrupo').AsInteger < 4 do
            begin
              if (i > 8) or (i = 6)then
              begin
                ExRango := ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + (incFila + 1));
                FormatoCelda(ExApp,ExRango,False,true,0);

                ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + (incFila + 1))].FormulaR1C1 := '=SUM(R[-' + IntToStr(cdfijos.RecordCount + 4) + ']C:R[-1]C)';
                ExApp.Range[ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial) + ':' + ColumnaNombre(ColumnaInicial + i) + intToStr(FilaInicial + cdFijos.RecordCount)].NumberFormat := '_-[$$-80A]* #,##0.00_-;-[$$-80A]* #,##0.00_-;_-[$$-80A]* ""-""??_-;_-@_-';
              end;

              i := i + cdEncabezados.FieldByName('IncColumna').AsInteger;
              cdEncabezados.Next;
            end;

            try
              ExApp.ActiveWorkBook.SaveAs(dlgGuardarExcel.FileName + 'DESGLOSE GENERAL DE NÓMINA.xls');
              InteliDialog.ShowModal('Nóminas', 'Se ha almacenado el archivo en ' + dlgGuardarExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
            except
              on e:Exception do
                InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
            end;
          end;
        end;
      finally
        Screen.Cursor := Cursor;
      end;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado','Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmReportesExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdFijos.Active then
    EliminarConjunto(cdFijos);

  if cdPersonal.Active then
    EliminarConjunto(cdPersonal);

  if cdAnios.Active then
    EliminarConjunto(cdAnios);
end;

procedure TFrmReportesExcel.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult = mrNone then
    canClose := False;
end;

procedure TFrmReportesExcel.FormCreate(Sender: TObject);
begin
  ImprimirReporteGlobal := False;
  ImprimirReporteAnual := False;
  ImprimirDIM := False;
end;

procedure TFrmReportesExcel.FormShow(Sender: TObject);
begin
    //CrearNiv(Col ini,Fila ini,Titulo,ITN Pivote,ITN Personal,IDN Conceptos,Sumado,clave)Nota ITN:IdTipoNomina//
  CrearNiveles(1,4,'Cálculo Global Fijo', IdNomFijoP,IdNominaFijo,IdNominaFijo,'No','Fijo');
  CrearNiveles(1,4,'Cálculo Global Plataforma',IdNominaPlataforma,IdNominaPlataforma,IdNominaPlataforma,'No','Plataforma');
  CrearNiveles(1,6,'Cálculo Anual Global','0' ,IdNominaPlataforma + ',' + IdNominaFijo,IdNominaPlataforma + ',' + IdNominaFijo,'No','Anual');

  if StrToInt(IdNomFijoP) = 5 then
    cboNombreReporte.Items.Delete(1);

  //Saber en  que años hay  pagos de nomina
  try
    if not CrearConjunto(cdAnios,'nom_nomina_anios',ccSelect) then
      raise InteligentException.CreateByCode(5,['nom_nomina_anios']);

    cdAnios.Open;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOk],0)
  end;
end;

procedure TFrmReportesExcel.CrearNiveles(ColIni, FilaInicio: Integer;
  Titulo, IdTipoNomina1, IdTipoNomina2, IdTipoNomina3, Sumado, Separador: String);
begin
  if not Assigned(NivelDesglose) then
    NivelDesglose := TMisDesgloses.Create;

  DetDesglose := TDetDes.Create;

  DetDesglose.ColumnaInicial  := ColIni;
  DetDesglose.FilaInicial     := FilaInicio;
  DetDesglose.Titulo          := Titulo;
  DetDesglose.IdTipoNomina1   := IdTipoNomina1;
  DetDesglose.IdTipoNomina2   := IdTipoNomina2;
  DetDesglose.IdTipoNomina3   := IdTipoNomina3;
  DetDesglose.Sumado          := Sumado;
  DetDesglose.Separador       := Separador;

  NivelDesglose.AddObject(DetDesglose.Titulo, DetDesglose);
end;
procedure TFrmReportesExcel.btnOkClick(Sender: TObject);
var
  Cursor: TCursor;
  I :Integer;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      IncNivel := 0;
      ImprimirEnc := False;

      if (not(cboNombreReporte.ItemIndex > -1)) or (not(cboanio.KeyValue > -1)) then
        raise InteligentWarning.CreateByCode(8,['Los campos deben de ser llenados correctamente.']);


      if cboNombreReporte.ItemIndex = 1 then
        IncNivel := 1;

      if cboNombreReporte.ItemIndex = 2 then
        ImprimirReporteGlobal := True;

      if cboNombreReporte.ItemIndex = 3 then
        incNivel := 2;

      IdTipoNomina2 := TDetDes(nivelDesglose.Objects[incNivel]).IdTipoNomina2;
      IdTipoNomina3 := TDetDes(nivelDesglose.Objects[incNivel]).IdTipoNomina3;

      if cdPersonal.Active then
        cdPersonal.Close;

      if not CrearConjunto(cdPersonal,'nuc_personal_excel',ccCatalog) then
        raise InteligentException.CreateByCode(5,['nuc_personal_excel']);

      if not CargarDatosFiltrados(cdPersonal, 'IdOrganizacion,Padre,anio,IdTipoNomina',[-1,-5,cboAnio.text ,IdTipoNomina2]) then
        raise InteligentException.CreateByCode(5,['nuc_personal_excel']);

      cdPersonal.Open;

      if cdfijos.Active then
        cdfijos.close;

      if not CrearConjunto(cdfijos,'nom_detallenomina_excelfijos',ccCatalog) then
        raise InteligentException.CreateByCode(5,['nuc_personal_excel']);

      if not CargarDatosFiltrados(cdfijos, 'anio,IdTipoNomina,Sumado',[cboAnio.Text,IdTipoNomina3,'no']) then
        raise InteligentException.CreateByCode(5,['nom_detallenomina_excelfijos']);

      cdfijos.Open;

      if (cdPersonal.RecordCount = 0) or (cdFijos.RecordCount = 0) then
        raise InteligentWarning.CreateByCode(24,['No hay registros que cumplan con el criterio de selección de datos.']);

      if cboNombreReporte.ItemIndex < 3 then
        ExportarAExcelFijos;

      if cboNombreReporte.ItemIndex = 3 then
        ExportarExcelAnual;

    finally
      ImprimirReporteGlobal := False;
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk],0);

    on e:InteligentWarning do
    begin
      ModalResult := mrNone;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK],0);
    end;

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado','Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0)
  end;
end;
procedure TFrmReportesExcel.CentrarDatos(Excel: Variant;
  rangoColumnas: String);
var
  RangoExcel : Variant;
begin
  //Combina y centra los datos del encabezado con los datos de la empresa
  rangoExcel := Excel.Range[rangoColumnas];
  rangoExcel.HorizontalAlignment := xlCenter;
  rangoExcel.VerticalAlignment   := xlCenter;
  rangoExcel.WrapText            :=    False;
  rangoExcel.Orientation         :=        0;
  rangoExcel.AddIndent           :=    False;
  rangoExcel.IndentLevel         :=        0;
  rangoExcel.ShrinkToFit         :=    False;
  rangoExcel.ReadingOrder        :=xlContext;
  rangoExcel.MergeCells          :=    False;
  rangoExcel.Merge;

  rangoExcel.Borders[11].LineStyle := xlContinuous;
  rangoExcel.Borders[12].LineStyle := xlContinuous;
  rangoExcel.Borders[7].LineStyle := xlContinuous;
  rangoExcel.Borders[8].LineStyle := xlContinuous;
  rangoExcel.Borders[9].LineStyle := xlContinuous;
  rangoExcel.Borders[10].LineStyle := xlContinuous;

  if not ImprimirEnc then
    RangoExcel.Interior.ColorIndex := 17;

  //Seleccion.Interior.Color := 10066176;
  //Aqui  va el  formato  de lso  bordes :)
end;
procedure TfrmReportesExcel.FormatoCelda(Excel: Variant; RangoColumnas: String; FormatoFila4: boolean; Bordes: Boolean; IdGrupo: Integer);
var
  i : Integer;
  Seleccion: Variant;
begin
  if FormatoFila4 then
  begin
    Seleccion := Excel.Rows['4:4'];
    Seleccion.RowHeight := 60;
    Seleccion.WrapText := True;
    Seleccion.Orientation := 0;
    Seleccion.IndentLevel := 0;
    Seleccion.ShrinkToFit := False;
    Seleccion.ReadingOrder:= xlContext;
  end;


  if Bordes then
  begin
    Seleccion := Excel.range[RangoColumnas];
    //Seleccion.Font.Bold := True;
    Seleccion.Font.Name := 'Arial';
    Seleccion.Font.Size := 8;
    Seleccion.HorizontalAlignment := xlCenter;
    Seleccion.VerticalAlignment := xlBottom;

    if not(IdGrupo = 6) then
    begin
      Seleccion.Borders[11].LineStyle := xlContinuous;
      Seleccion.Borders[12].LineStyle := xlContinuous;
      Seleccion.Borders[7].LineStyle := xlContinuous;
      Seleccion.Borders[8].LineStyle := xlContinuous;
      Seleccion.Borders[9].LineStyle := xlContinuous;
      Seleccion.Borders[10].LineStyle := xlContinuous;

      if not imprimirEnc then
        Seleccion.Interior.ColorIndex := 17;
    end;
  end;
end;
procedure TFrmReportesExcel.FormulasFormato(Datos :TClientDataSet; Excel: Variant);
var
  seleccion: Variant;
begin
  Seleccion := Excel.Columns['A:BP'];
  //Seleccion.EntireColumn.Autofit;
  Seleccion.Font.Name := 'Arial';
  Seleccion.Font.Size := 8;
end;

procedure TFrmReportesExcel.CombinarYCentrarDatosEncabezados(Excel: Variant;
  rangoColumnas: string);
var
  rangoExcel : Variant;
begin
  //Combina y centra los datos del encabezado con los datos de la empresa
  rangoExcel := Excel.Range[rangoColumnas];
  rangoExcel.HorizontalAlignment := xlCenter;
  rangoExcel.VerticalAlignment   := xlCenter;
  rangoExcel.WrapText            :=    False;
  rangoExcel.Orientation         :=        0;
  rangoExcel.AddIndent           :=    False;
  rangoExcel.IndentLevel         :=        0;
  rangoExcel.ShrinkToFit         :=    False;
  rangoExcel.ReadingOrder        :=xlContext;
  rangoExcel.MergeCells          :=    False;
  rangoExcel.Merge;
end;
procedure TFrmReportesExcel.Formulas(Excel: Variant; RangoColumnas: String; Parametro: Integer);
var
  RangoExcel: Variant;
begin
  RangoExcel := Excel.Range[rangocolumnas];

  if Parametro = 41 then
    RangoExcel.FormulaR1C1 := '=RC[-3]+RC[-6]+RC[-9]+RC[-12]+RC[-15]+RC[-18]+RC[-21]+RC[-25]++RC[-28]';

  if Parametro = 44 then
    RangoExcel.FormulaR1C1 := '=RC[-3]';

  if Parametro = 45 then
    RangoExcel.FormulaR1C1 := '=+RC[-15]+RC[-24]+RC[-28]+RC[-31]+RC[-12]+RC[-9]+RC[-6]+RC[-21]+RC[-18]';

  //if Parametro = 50 then
  //  RangoExcel.FormulaR1C1 := '=RC[-2]*RC[-1]';

  if Parametro = 50 then
    RangoExcel.FormulaR1C1 := '=RC[-2]*RC[-1]';

  if Parametro = 53 then
    RangoExcel.FormulaR1C1 := '=+RC[7]/30*RC[-11]';

  if parametro = 56 then
    RangoExcel.FormulaR1C1 := '=IF(-RC[-2]-RC[-1]<0,0,-RC[-2]-RC[-1])';

  if parametro = 57 then
    RangoExcel.FormulaR1C1 := '=IF(RC[-3]=0,0,IF(RC[-3]>0,0,IF(-RC[-2]-RC[-3]<0,-RC[-2]-RC[-3],0)))';

  if parametro = 58 then
    RangoExcel.FormulaR1C1 := '=+IF(RC[-4]>0,RC[-4]-RC[-15],0)';

  //if parametro = 0 then
  //  RangoExcel.FormulaR1C1 := '=+RC[-49]/RC[-17]*30';

  if parametro = 60 then
    RangoExcel.FormulaR1C1 := '=RC[-52]+RC[-43]+1';

  if parametro = 61 then
    RangoExcel.FormulaR1C1 := '=RC[-27]+RC[-24]';

  if parametro = 62 then
    RangoExcel.FormulaR1C1 := '=RC[-27]+RC[-24]';

  if parametro = 63 then
    RangoExcel.FormulaR1C1 := '=+RC[-2]-RC[-1]';
end;

procedure TFrmReportesExcel.SetBorders(Rango: Variant; Grosor, Tipo: integer);
begin
    //Bordes
  Rango.Borders[xlEdgeTop].lineStyle          := Tipo;
  Rango.Borders[xlEdgeLeft].lineStyle         := Tipo;
  Rango.Borders[xlEdgeBottom].lineStyle       := Tipo;
  Rango.Borders[xlEdgeRight].lineStyle        := Tipo;
  Rango.Borders[xlInsideVertical].lineStyle   := Tipo;
  Rango.Borders[xlInsideHorizontal].lineStyle := Tipo;

  //Grosor de Linea
  Rango.Borders[xlEdgeTop].Weight          := Grosor;
  Rango.Borders[xlEdgeLeft].Weight         := Grosor;
  Rango.Borders[xlEdgeBottom].Weight       := Grosor;
  Rango.Borders[xlEdgeRight].Weight        := Grosor;
  Rango.Borders[xlInsideVertical].Weight   := Grosor;
  Rango.Borders[xlInsideHorizontal].Weight := Grosor;
end;


function TMisDesgloses.AddObject(const S: string; AObject: TObject): Integer;
begin
  inherited;
end;


end.
