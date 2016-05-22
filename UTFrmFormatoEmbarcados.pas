unit UTFrmFormatoEmbarcados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, UinteliDialog, URegistro, ExportaExcel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, StdCtrls, cxButtons, ComObj, DB, DBClient;

type
  TFrmFormatosEmbarcados = class(TForm)
    cxbtnExporta: TcxButton;
    cdConceptosNomina: TClientDataSet;
    cdDatos: TClientDataSet;
    cdDatosEmpresa: TClientDataSet;
    procedure cxbtnExportaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ExApp, ExRango: Variant;
    MiListaEncabezado, CamposBD, UbicaFormula: TStringList;
    rInicio, rFinal: Integer;
    CInicio, cFinal: Integer;
    Procedure Encabezados(Lista: TStringList);
    Procedure SetBorders(Rango: Variant; Grosor: Integer; Tipo: integer);
    Procedure SetCellProperties(Rango: Variant; Fuente: String; Tamano: integer; AlineacionH: Integer;
              AlineacionV: Integer; AjustarTexto: Boolean; OrdenLectura: Integer; Negrita: Boolean);
    Procedure SetFormula(Columna: Variant; Formula: String);
    Procedure setAgrupadores;
    Procedure setAsCurrency(Rango: Variant);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormatosEmbarcados: TFrmFormatosEmbarcados;

implementation

{$R *.dfm}

procedure TFrmFormatosEmbarcados.cxbtnExportaClick(Sender: TObject);
Var
  continuar: Boolean;
  Cursor: TCursor;
  rowIni, ColIni, renR, renC, j : Integer;
  Formula: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Try
        RInicio := 6;
        Cinicio := 1;

        Continuar := True;
        ExApp := CreateOleObject('Excel.Application');
        ExApp.Visible := True;
        ExApp.DisplayAlerts := False;
        ExApp.Workbooks.Add;
      Except
        on e:Exception do
        begin
          Continuar := False;
          InteliDialog.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta característica', mtError, [mbOK], 0);
        end;
      End;

      //Si no se vá al chorizo continuar
      if Continuar then
      begin
        if cdDatos.ProviderName = '' then
          if not CrearConjunto(cdDatos, 'nom_detallenomina_embarcados', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['nom_detallenomina_embarcados']);

        if not CargarDatosFiltrados(cdDatos, 'IdNomina', [5]) then
          raise InteligentException.CreateByCode(6, ['nom_detallenomina_embarcados', 'IdNomina', '2']);

        if cdDatos.Active then
          cdDatos.Refresh
        else
          cdDatos.Open;

        Encabezados(MiListaEncabezado);
        SetAgrupadores;

        ColIni := CInicio;
        RowIni := rInicio + 1;
        renR := 0;

        cdDatos.First;
        while not cdDatos.Eof do
        begin
          for j := 0 to (CamposBD.Count - 1) do
          begin
            ExApp.Range[ColumnaNombre(ColIni + j) + IntToStr(RowIni + RenR)].value := cdDatos.FieldByName(CamposBD[j]).AsString;
          end;
          inc(renR);
          cdDatos.Next;
        end;
        ExRango := ExApp.Range[ColumnaNombre(ColIni) + IntToStr(RowIni) + ':' + ColumnaNombre(CamposBd.Count) + IntToStr(RowIni + (renR - 1))];
        SetBorders(ExRango, xlThin, xlContinuous);
        SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, True, xlContext, False);

        //Formulas
        for j := 0 to ubicaFormula.Count - 1 do
        begin
          Formula := '=SUM(R[-' + intToStr(cdDatos.RecordCount) + ']C:R[-1]C)';
          ExRango := ExApp.Range[UbicaFormula[j] + intToStr(RowIni + Renr)];
          SetFormula(ExRango, Formula);
          SetBorders(ExRango, xlThin, xlContinuous);
          SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, True);
        end;

        ExRango := ExApp.Range['E:E'];
        setAsCurrency(ExRango);

        ExRango := ExApp.Range['F:F'];
        setAsCurrency(ExRango);

        ExRango := ExApp.Range['S:S'];
        setAsCurrency(ExRango);
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title,e.ClassName + ' ' + e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFormatosEmbarcados.Encabezados(Lista: TStringList);
var
  i: Integer;
begin
  if Lista.Count > 0 then
  begin
    if ClientModule1.cdOrganizacion.Active then
    begin
      ExApp.Range['A1'].Value := ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').asString;
      ExRango := ExApp.Range[ColumnaNombre(CInicio) + IntToStr(1) +':'+ ColumnaNombre(Lista.Count) + IntToStr(1)];
      ExRango.mergeCells := True;
      ExRango.Font.Name := 'Arial';
      ExRango.Font.Bold := True;
      ExRango.Font.Size := 9;
      ExRango.HorizontalAlignment := xlCenter;
    end;

    ExApp.Range['A2'].value := 'NOMINA CORRESPONDIENTE';
    ExRango := ExApp.Range['A2'];
    SetCellProperties(ExRango, 'Arial', 9, -4131 , xlCenter, False, xlContext, true);
    ExApp.Range['A3'].Value := 'AL PERIODO DEL: ';

    ExRango := ExApp.Range['A3:D3'];
    ExRango.mergeCells := True;
    ExRango.interior.Color := 13408512;
    SetCellProperties(ExRango, 'Arial', 9, -4131 , xlCenter, False, xlContext, true);

    ExRango := ExApp.Range['E3:' + ColumnaNombre(Lista.Count) + '3'];
    ExRango.mergeCells := True;
    ExRango.interior.Color := 10066176;
    SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);

    //ExRango := ExApp.Range['A2:A3'];
    //SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);

    for i := 0 to (Lista.Count -1) do
      ExApp.Range[(ColumnaNombre(CInicio + i)) + IntToStr(rInicio)].value := lista[i];

    //for i := 0 to 4 do
    ExRango := ExApp.Range[ColumnaNombre(CInicio) + IntToStr(rInicio) +':'+ ColumnaNombre(CInicio + 3) + IntToStr(RInicio)];
    ExRango.ColumnWidth := 23;
    ExRango := ExApp.Range[ColumnaNombre(CInicio + 3) + IntToStr(rInicio) +':'+ ColumnaNombre(CInicio + i) + IntToStr(RInicio)];
    Exrango.ColumnWidth := 18;

    //Todas las Celdas
    ExRango := ExApp.Range[ColumnaNombre(CInicio) + IntToStr(rInicio) +':'+ ColumnaNombre(CInicio + (i-1)) + IntToStr(RInicio)];
    SetBorders(ExRango, xlThin, xlContinuous);

    //Color de Celda
    ExRango.Interior.Color := 10066176; //Verde shit
    SetCellProperties(ExRango,'Arial', 9, xlCenter, xlcenter, True, xlCOntext, True);

    ExApp.ActiveWindow.Zoom := 75;
    ExApp.Rows['6:6'].RowHeight := 45;
  end
  else
    raise InteligentException.CreateByCode(24, ['No existen elementos a imprimir.']);
end;

procedure TFrmFormatosEmbarcados.FormCreate(Sender: TObject);
begin
  MiListaEncabezado := TStringList.Create;
  MiListaEncabezado.Add('A. PATERNO');
  MiListaEncabezado.Add('A. MATERNO');
  MiListaEncabezado.Add('NOMBRES');
  MiListaEncabezado.Add('CATEGORIA');
  MiListaEncabezado.Add('SUELDO POR GUARDIA');
  MiListaEncabezado.Add('SUELDO DIARIO');
  MiListaEncabezado.Add('EMBARCADO');
  MiListaEncabezado.Add('DESCANSO');
  MiListaEncabezado.Add('FECHA EMBARQUE PROGRAMADA');
  MiListaEncabezado.Add('FECHA DE EMBARQUE');
  MiListaEncabezado.Add('FECHA DE BAJADA');
  MiListaEncabezado.Add('DIAS PAGADOS AL CORTE ACTUAL');
  MiListaEncabezado.Add('DIAS PENDIENTES DE PAGO');
  MiListaEncabezado.Add('INICIA PERIODO PAGO');
  MiListaEncabezado.Add('CORTE PERIODO DE PAGO');
  MiListaEncabezado.Add('DIAS A PAGAR DURANTE EL PERIODO');
  MiListaEncabezado.Add('DIAS DE DESCANSO A PAGAR');
  MiListaEncabezado.Add('TOTAL DIAS A PAGAR AL CORTE');
  MiListaEncabezado.Add('TOTAL IMPORTE A PAGAR');

  CamposBd := TStringList.Create;
  CamposBd.Add('AMaterno');
  CamposBd.Add('APaterno');
  CamposBd.Add('Nombres');
  CamposBd.Add('TituloCargo');
  CamposBd.Add('SueldoGuardia');
  CamposBd.Add('SalarioDiario');
  CamposBd.Add('DiasTTotalGuardia');
  CamposBd.Add('DiasDescanso');
  CamposBd.Add('FechaReal');
  CamposBd.Add('FechaMovimiento');
  CamposBd.Add('FechaBajada');
  CamposBd.Add('DiasPagadosCorteActual');
  CamposBd.Add('DiasPendientePago');
  CamposBd.Add('FechaNomina');
  CamposBd.Add('FechaTerminoNomina');
  CamposBd.Add('DiasAPagar');
  CamposBd.Add('DescansoPagar');
  CamposBd.Add('DiasAPagar');
  CamposBd.Add('Neto');

  UbicaFormula := TStringList.Create;
  UbicaFormula.Add('E');
  UbicaFormula.Add('F');
  UbicaFormula.Add('S');
end;



procedure TFrmFormatosEmbarcados.setAgrupadores;
begin
  ExRango := ExApp.Range['G5:K5'];
  ExRango.Value := 'DURACIÓN DE LA GUARDIA';
  ExRango.mergeCells := True;
  ExRango.Interior.Color := 10066176;
  SetBorders(ExRango, xlThin, xlContinuous);
  SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);

  ExRango := ExApp.Range['N5:R5'];
  ExRango.Value := 'CALCULO PARA EL PAGO DEL PERIODO';
  ExRango.mergeCells := True;
  ExRango.Interior.Color := 10066176;
  SetBorders(ExRango, xlThin, xlContinuous);
  SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);
end;

procedure TFrmFormatosEmbarcados.setAsCurrency(Rango: Variant);
begin
  Rango.Style := 'Currency';
end;

procedure TFrmFormatosEmbarcados.SetBorders(Rango: Variant; Grosor,
  Tipo: integer);
begin
  //Bordes
  Rango.Borders[xlEdgeTop].lineStyle := Tipo;
  Rango.Borders[xlEdgeLeft].lineStyle := Tipo;
  Rango.Borders[xlEdgeBottom].lineStyle := Tipo;
  Rango.Borders[xlEdgeRight].lineStyle := Tipo;
  Rango.Borders[xlInsideVertical].lineStyle := Tipo;
  Rango.Borders[xlInsideHorizontal].lineStyle := Tipo;

  //Grosor de Linea
  Rango.Borders[xlEdgeTop].Weight := Grosor;
  Rango.Borders[xlEdgeLeft].Weight := Grosor;
  Rango.Borders[xlEdgeBottom].Weight := Grosor;
  Rango.Borders[xlEdgeRight].Weight := Grosor;
  Rango.Borders[xlInsideVertical].Weight := Grosor;
  Rango.Borders[xlInsideHorizontal].Weight := Grosor;
end;

procedure TFrmFormatosEmbarcados.SetCellProperties(Rango: Variant;
  Fuente: String; Tamano, AlineacionH, AlineacionV: Integer;
  AjustarTexto: Boolean; OrdenLectura: Integer; Negrita: Boolean);
begin
   //Fuente de celda
  ExRango.Font.Name := Fuente;
  ExRango.Font.Size := Tamano;
  ExRango.Font.Bold := Negrita;
  ExRango.HorizontalAlignment := AlineacionH;
  ExRango.VerticalAlignment := AlineacionV;
  ExRango.WrapText := AjustarTexto;
  ExRango.ReadingOrder := OrdenLectura;
end;

procedure TFrmFormatosEmbarcados.SetFormula(Columna: Variant; Formula: String);
begin
  Columna.FormulaR1C1 := Formula;
end;

end.
