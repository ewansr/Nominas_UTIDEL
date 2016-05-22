unit UTFrmDiasPTU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, UInteliDialog,
  ClientModuleUnit1, DBClient, cxCurrencyEdit, cxCustomPivotGrid, cxDBPivotGrid,
  dxmdaset, cxPivotGridCustomDataSet, cxPivotGridDrillDownDataSet,
  cxGridChartView, cxGridDBChartView, cxPivotGridChartConnection, ExtCtrls,
  cxFilterControl, cxDBFilterControl, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxRibbon,
  dxSkinsdxBarPainter, dxBar, dxPSGlbl, dxPSUtl, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSEngn, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPgsDlg, dxtrprds, dxPSContainerLnk,
  dxPSDBBasedXplorer, dxPSFileBasedXplorer, dxPrnDlg, cxExportPivotGridLink,
  ShellAPI, cxCalendar, cxBarEditItem,DateUtils, cxContainer, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxRadioGroup, ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, Menus, cxButtons, dxLayoutContainer, dxLayoutControl,
  cxCheckBox, dxLayoutControlAdapters, dxLayoutLookAndFeels;

type
  TFrmDiasPtu = class(TForm)
    CdDetalleNOmina: TClientDataSet;
    dsDetalleNomina: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    CxGridRepos1: TcxGridViewRepository;
    cxGridChartCxGridRepos1DBChartView1: TcxGridDBChartView;
    CxSerieGridChartCxGridRepos1DBChartView1Series1: TcxGridDBChartSeries;
    CxDataGroupGridChartCxGridRepos1DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    pnl1: TPanel;
    cxstylHeader: TcxStyle;
    cxstylMax: TcxStyle;
    cxstylBackground: TcxStyle;
    DxBManagerPtu: TdxBarManager;
    DxRibbonPtuTab1: TdxRibbonTab;
    DxRibbonPtu: TdxRibbon;
    DxBarOpciones: TdxBar;
    DxBarBtnExportar: TdxBarLargeButton;
    dxComponentPrinter: TdxComponentPrinter;
    dxPSEngineController1: TdxPSEngineController;
    DxPrintDialog2: TdxPrintDialog;
    dxPSDialog1: TdxPageSetupDialog;
    cxDbPGridMain: TcxDBPivotGrid;
    cxPGFieldEmpleado: TcxDBPivotGridField;
    cxPGFieldNominas: TcxDBPivotGridField;
    cxPGFieldDReal: TcxDBPivotGridField;
    cxPGFieldNeto: TcxDBPivotGridField;
    cxPGFieldSueldo: TcxDBPivotGridField;
    cxPGFieldVacaciones: TcxDBPivotGridField;
    dlgSave1: TSaveDialog;
    cxRadioInicio: TcxBarEditItem;
    cxRadioTermino: TcxBarEditItem;
    DxBarBtnBuscar: TdxBarLargeButton;
    cxstylTotal: TcxStyle;
    cxPGFieldIngreso: TcxDBPivotGridField;
    cxPGFieldBaja: TcxDBPivotGridField;
    dsTipoNomina: TDataSource;
    cdTipoNomina: TClientDataSet;
    pnl2: TPanel;
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    cxDateDesde: TcxDateEdit;
    lyLayControl1Item1: TdxLayoutItem;
    cxDateHasta: TcxDateEdit;
    lyLayControl1Item2: TdxLayoutItem;
    Lbl1: TcxLabel;
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    lyLayControl1Item3: TdxLayoutItem;
    cxCheckIncluir: TcxCheckBox;
    dxLayControl1Group1: TdxLayoutAutoCreatedGroup;
    lyrtn: TdxLayoutItem;
    rbtn: TcxRadioButton;
    lytn: TdxLayoutItem;
    cbbCxLCbbTipoNomina: TcxLookupComboBox;
    dxLayControl1Group2: TdxLayoutAutoCreatedGroup;
    lyrEmp: TdxLayoutItem;
    rbemp: TcxRadioButton;
    lyemp: TdxLayoutItem;
    cbbEmpleado: TcxLookupComboBox;
    dxLayControl1Group3: TdxLayoutAutoCreatedGroup;
    lyLayControl1Item8: TdxLayoutItem;
    btn1: TcxButton;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxDbPGridMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DxBarBtnExportarClick(Sender: TObject);
    procedure DxBarBtnBuscarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure rbtnClick(Sender: TObject);
    procedure rbempClick(Sender: TObject);
    procedure cxCheckIncluirPropertiesChange(Sender: TObject);
  private
    //dxCPLink: cxExportPivotGridLink;
    { Private declarations }
  public
    IdPersonal: Integer;
    IdTipoNomina: Integer;
    { Public declarations }
  end;

var
  FrmDiasPtu: TFrmDiasPtu;

implementation

{$R *.dfm}

procedure TFrmDiasPtu.btn1Click(Sender: TObject);
var
  cursor: TCursor;
  vlistaPersonal: integer;
  vtiponomina: integer;

begin
  try
    cdDetalleNomina.filtered := False;
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    vlistaPersonal := -1;
    vtiponomina := -1;

    if cxCheckIncluir.Checked then
    begin
      if rbtn.Checked then
        vtiponomina := cdTipoNomina.FieldByName('idTipoNomina').AsInteger;

      if rbEmp.Checked then
        vlistaPersonal := cdPersonal.FieldByName('idPersonal').AsInteger;
    end;


    if not cargarDatosFiltrados(cdDetalleNomina, 'ListaPersonal,IdTipoNomina,FechaInicio,FechaTermino', [vlistapersonal,vtiponomina,ClientModule1.DatetoStrSql(cxDateDesde.date), ClientModule1.DatetoStrSql(cxDateHasta.Date)]) then
      raise InteligentException.CreateByCode(6, ['IdPersonal', 'Dias PTU', vartostr(IdPersonal)]);

    if CdDetalleNomina.active then
      cdDetalleNomina.Refresh
    else
      cdDetalleNomina.Open;


   
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmDiasPtu.cxCheckIncluirPropertiesChange(Sender: TObject);
begin
  lyrtn.Enabled := cxCheckIncluir.Checked;
  lyrEmp.Enabled := cxCheckIncluir.Checked;
  lytn.Enabled := cxCheckIncluir.Checked;
  lyemp.Enabled := cxCheckIncluir.Checked;
end;

procedure TFrmDiasPtu.cxDbPGridMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    if key = 116 then
    begin
      if not cargarDatosFiltrados(cdDetalleNomina, 'ListaPersonal,IdTipoNomina,Anio', [-1,-1,2015]) then
        raise InteligentException.CreateByCode(6, ['IdPersonal', 'Dias PTU', vartostr(IdPersonal)]);

      if CdDetalleNomina.active then
        cdDetalleNomina.Refresh
      else
        cdDetalleNomina.Open;
    end;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmDiasPtu.DxBarBtnBuscarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    if not cargarDatosFiltrados(cdDetalleNomina, 'ListaPersonal,IdTipoNomina,FechaInicio,FechaTermino', [-1,-1,ClientModule1.DatetoStrSql(VarToDateTime(cxRadioInicio.EditValue)), ClientModule1.DatetoStrSql(VarToDateTime(cxRadioTermino.EditValue))]) then
      raise InteligentException.CreateByCode(6, ['IdPersonal', 'Dias PTU', vartostr(IdPersonal)]);

    if CdDetalleNomina.active then
      cdDetalleNomina.Refresh
    else
      cdDetalleNomina.Open;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmDiasPtu.DxBarBtnExportarClick(Sender: TObject);
var
  BasedxReportLink1: TBasedxReportLink;
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    cxExportPivotGridToExcel(rutaArchivo, cxDbPGridMain);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmDiasPtu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDiasPtu.FormCreate(Sender: TObject);
begin
  if not CrearCOnjunto(CdDetalleNomina, 'nom_dias_ptu', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Dias PTU']);

  if not CrearConjunto(CdTipoNomina, 'nom_tiponomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_tiponomina']);

   if not CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_personal']);

end;

procedure TFrmDiasPtu.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #116 then
  begin
    if not cargarDatosFiltrados(cdDetalleNomina, 'ListaPersonal,IdTipoNomina', [-1,IdTipoNomina]) then
      raise InteligentException.CreateByCode(6, ['IdPersonal', 'Dias PTU', vartostr(IdPersonal)]);

    if CdDetalleNomina.active then
      cdDetalleNomina.Refresh
    else
      cdDetalleNomina.Open;
  end;

end;

procedure TFrmDiasPtu.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := 0;
    Screen.Cursor := CrAppStart;
    try
      if not cargarDatosFiltrados(cdDetalleNomina, 'ListaPersonal,IdTipoNomina', [-1,IdTipoNomina]) then
        raise InteligentException.CreateByCode(6, ['IdPersonal', 'Dias PTU', vartostr(IdPersonal)]);

      if CdDetalleNomina.active then
        cdDetalleNomina.Refresh
      else
        cdDetalleNomina.Open;

      if not CargarDatosFiltrados(CdTipoNomina, 'Liga', ['No']) then
        raise InteligentException.CreateByCode(6, ['Descanso, Liga', '0, No', 'nom_TipoNomina']);

      if CdTipoNomina.Active then
        CdTipoNomina.Refresh
      else
        CdTipoNomina.Open;


      if not CargarDatosFiltrados(cdPersonal, 'IdPersonal', [-1]) then
        raise InteligentException.CreateByCode(6, ['Descanso, Liga', '0, No', 'nom_TipoNomina']);

      if cdPersonal.Active then
        cdPersonal.Refresh
      else
        cdPersonal.Open;

      cxdateDesde.Date :=  (DateOf(Now));
      cxDateHasta.Date := DateOf(Now);
    finally
      Screen.Cursor := Cursor;
    end;
  except
    On e: InteligentException do
      InteliDialog.ShowModal(e.title, e.Message, e.msgType, [mbOK], 0);
  end;
end;

procedure TFrmDiasPtu.rbempClick(Sender: TObject);
begin
  cbbCxLCbbTipoNomina.Enabled := rbtn.Checked;
  cbbEmpleado.Enabled := rbemp.Checked;
end;

procedure TFrmDiasPtu.rbtnClick(Sender: TObject);
begin
  cbbCxLCbbTipoNomina.Enabled := rbtn.Checked;
  cbbEmpleado.Enabled := rbemp.Checked;
end;

end.
