unit UTFrmAntiguedadVacaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils,
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
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxCalendar, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, ClientModuleUnit1, UInteliDialog,
  DBClient, cxGridExportLink, ShellAPI, cxGridBandedTableView,
  cxGridDBBandedTableView, ComObj, rhh_genericclasses, frxClass, frxDBSet;

type
  TFrmAntiguedadVacaciones = class(TForm)
    pnlOpciones: TPanel;
    cxDateEditAplicacion: TcxDateEdit;
    CxBtnCargarPersonal: TcxButton;
    CxLblFechaAplicacion: TcxLabel;
    CxLCbbTipoNomina: TcxLookupComboBox;
    CxLbl1: TcxLabel;
    DxBManager1: TdxBarManager;
    DxBarOpciones: TdxBar;
    DxBarBtnCerrar: TdxBarLargeButton;
    DxBarBtnCargar: TdxBarLargeButton;
    DxBarBtnExportar: TdxBarLargeButton;
    CxGridEmpleados: TcxGrid;
    CxGridDatosEmpleado: TcxGridDBTableView;
    CxLevelDatos: TcxGridLevel;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    CxColumnIdPersonal: TcxGridDBColumn;
    CxColumnNombreCOmpleto: TcxGridDBColumn;
    CxColumnReingreso: TcxGridDBColumn;
    CxColumnBaja: TcxGridDBColumn;
    CxColumnDiasAnio: TcxGridDBColumn;
    CxColumnAniosCompletos: TcxGridDBColumn;
    CxColumnDiasVacaciones: TcxGridDBColumn;
    CdDatosVacaciones: TClientDataSet;
    dsDatosVacaciones: TDataSource;
    CdTipoNomina: TClientDataSet;
    dsTipoNomina: TDataSource;
    CxColumnRegistroPatronal: TcxGridDBColumn;
    cxstylAntiguedadCero: TcxStyle;
    dlgSave1: TSaveDialog;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    dxbrbtn1: TdxBarButton;
    dxBarBtnImprimir2: TdxBarLargeButton;
    frxReporteAntiguedad: TfrxReport;
    frxAntiguedad: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    procedure DxBarBtnCargarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CxBtnCargarPersonalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxGridDatosEmpleadoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure DxBarBtnExportarClick(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxbrbtn1Click(Sender: TObject);
    procedure dxBarBtnImprimir2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAntiguedadVacaciones: TFrmAntiguedadVacaciones;

implementation

{$R *.dfm}

procedure TFrmAntiguedadVacaciones.CxBtnCargarPersonalClick(Sender: TObject);
var
  cursor: TCursor;
  LocIdTipoNomina: Integer;
  Corte: string;

begin
  if (CxLCbbTipoNomina.EditValue <> null) and (cxDateEditAplicacion.Date <> null) then
  try
    //CxGridDatosEmpleado.Styles.OnGetContentStyle := nil;
    Cursor := Screen.Cursor;
    try

      Screen.Cursor := crAppStart;
      LocIdTipoNomina := CxLCbbTipoNomina.EditValue;
      Corte := ClientModule1.DatetoStrSql(cxDateEditAplicacion.Date);

      if not CargarDatosFiltrados(CdDatosVacaciones, 'IdTipoNomina,FechaCorte,Activo', [LocIdTipoNomina, Corte, 'Si']) then
        raise InteligentException.CreateByCode(6, ['IdTipoNomina,Corte', 'nom_antiguedad_vacaciones', IntToStr(LocIdTipoNomina) + '-' + Corte]);

      If CdDatosVacaciones.Active then
        CdDatosVacaciones.Refresh
      else
        CdDatosVacaciones.Open;

    finally
      //CxGridDatosEmpleado.Styles.OnGetContentStyle := CxGridDatosEmpleadoStylesGetContentStyle;
      Screen.Cursor := cursor;
    end;
  Except
    on e: InteligentException do
     InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmAntiguedadVacaciones.CxGridDatosEmpleadoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.Values[CxColumnAniosCompletos.index] = 0 then
    AStyle := cxstylAntiguedadCero;
end;

procedure TFrmAntiguedadVacaciones.DxBarBtnCargarClick(Sender: TObject);
begin
  pnlOpciones.Visible := Not pnlOpciones.Visible;
end;

procedure TFrmAntiguedadVacaciones.DxBarBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAntiguedadVacaciones.DxBarBtnExportarClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  dlgSave1.FileName := '';
  //ShowMessage(VarToStr(CdMemoria.RecordCount));
  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, CxGridEmpleados);

    Excel := CreateOleObject('Excel.Application');
    Excel.workbooks.Open(rutaArchivo);

    Excel.Range['A1'].Select;
    Excel.Selection.EntireRow.Insert;
    Excel.Selection.EntireRow.Insert;
    Excel.Selection.EntireRow.Insert;
    Excel.Range['A1'].Select;
    Excel.ActiveCell.FormulaR1C1 := 'UTILIZACION Y DISTRIBUCION ELECTRIA SA DE CV';
    //Excel.ActiveCell.Font
    Excel.ActiveWorkBook.Save;




     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmAntiguedadVacaciones.dxBarBtnImprimir2Click(Sender: TObject);
begin
  //Las siguentes variables se heredan de la clase generica rhh_genericclasses para imprimir reporte.
  Reporte := 'Antiguedad.fr3';
  CompReporte :=FrxReporteAntiguedad;
  CompDataSEtReporte := FrxAntiguedad;

  LocalImprimeReporte(cdDatosVacaciones,CxGridDatosEmpleado, 'Antiguedad');

end;

procedure TFrmAntiguedadVacaciones.dxbrbtn1Click(Sender: TObject);
begin
//  CxGridDatosEmpleado.ViewData.Expand(True);
//  cxGridDatosEmpleado.ViewData.Collapse();
end;

procedure TFrmAntiguedadVacaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFrmAntiguedadVacaciones.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdDatosVacaciones, 'nom_antiguedad_vacaciones', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_antiguedad_vacaciones']);

  if not CrearConjunto(CdTipoNomina, 'nom_tiponomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_tipoNomina']);
end;

procedure TFrmAntiguedadVacaciones.FormShow(Sender: TObject);
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if not CargarDatosFiltrados(CdTipoNomina, 'Descanso,Liga', [0,'No']) then
        raise InteligentException.CreateByCode(6, ['Descanso, Liga', '0, No', 'nom_TipoNomina']);

      if CdTipoNomina.Active then
        CdTipoNomina.Refresh
      else
        CdTipoNomina.Open;

    finally
      Screen.Cursor := Cursor;
    end;
  except
   on e: InteligentException do
     InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);
  end;
end;

end.
