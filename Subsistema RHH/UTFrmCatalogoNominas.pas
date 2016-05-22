Unit UTFrmCatalogoNominas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ClientModuleUnit1, AdvToolBar, AdvGlowButton, AdvSmoothPanel,
  ExtCtrls, DB, DBClient, StdCtrls, Mask, DBCtrls, AdvSmoothButton,
  NxCollection, ComCtrls, JvExMask, JvSpin, JvDBSpinEdit, JvExControls, JvLabel,
  DateUtils, JvExComCtrls, JvDateTimePicker, JvToolEdit, JvDBControls,
  JvComCtrls, rhh_genericclasses, frxClass, frxDBSet, frxPreview,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, NxGrid,
  NxColumns, NxColumnClasses, URegistro, Grids, JvExGrids, JvStringGrid,
  JvExStdCtrls, JvEdit, NxDBColumns, NxPageControl, Buttons, Tabs, AdvTabSet,
  StrUtils, ComObj, ExportaExcel, frxExportPDF, ShellApi, CheckLst, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxCheckListBox, dblookup, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  AdvGroupBox, cxCheckBox, cxGridLevel, frxADOComponents, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxBar, dxRibbon, cxButtons,
  cxScrollBox, cxGroupBox,
  (*PFacturaElectronica, PFacturaElectronica_PAC, CFDI, PACFem,*) ActiveX, ShlObj,
  cxImage, cxLabel, dxGDIPlusClasses, dxCore, cxDateUtils, cxCalendar,
  cxProgressBar, dxTaskbarProgress, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, cxDBEdit, PFacturaElectronica, PFacturaElectronica_PAC, CFDI,
  PACFO, dxRibbonForm, dxPrnDev, dxPrnDlg, dxDockControl, dxDockPanel,
  cxGridChartView, cxGridDBChartView, dxRibbonMiniToolbar, cxSplitter,
  AdvSmoothPopup, AdvOfficeHint, cxDBExtLookupComboBox, cxSpinEdit;

type
  TCodigo = class
    Valor: String;
  end;

  TObjRef = class
    Subsidio: Real;
    Ispt: Real;
  end;

  TTituloHeredar = class
    Valor: String;
  end;

  TFrmCatalogoNominas = class(TDxRibbonForm)
    cdNomina: TClientDataSet;
    dsNomina: TDataSource;
    cdFestivos: TClientDataSet;
    PageControl1: TcxPageControl;
    TabParametros: TcxTabSheet;
    TabNomina: TcxTabSheet;
    FDSDetalle: TfrxDBDataset;
    cdPersonal: TClientDataSet;
    FDSPersonal: TfrxDBDataset;
    dsPersonal: TDataSource;
    cdBuscar: TClientDataSet;
    FDSBuscar: TfrxDBDataset;
    dsBuscar: TDataSource;
    cdPersonalNomina: TClientDataSet;
    cdConcepto: TClientDataSet;
    cdConceptoExtra: TClientDataSet;
    cdTipoNomina: TClientDataSet;
    memDeptoDeducciones: TClientDataSet;
    FDSDeptoDeducciones: TfrxDBDataset;
    memDeptoPercepciones: TClientDataSet;
    FDSDeptoPercepciones: TfrxDBDataset;
    memObligacion: TClientDataSet;
    FDSObligacion: TfrxDBDataset;
    memRubrosIMSS: TClientDataSet;
    FDSRubrosIMSS: TfrxDBDataset;
    memPercepciones: TClientDataSet;
    FDSPercepciones: TfrxDBDataset;
    memDeducciones: TClientDataSet;
    FDSDeducciones: TfrxDBDataset;
    cdPersonalDetalleNomina: TClientDataSet;
    FDSPersonalDetalleNomina: TfrxDBDataset;
    RSubReporte: TfrxReport;
    RNomina: TfrxReport;
    Panel_Progress: TPanel;
    lblTitulo: TJvLabel;
    lblLeyenda1: TJvLabel;
    lblLeyenda2: TJvLabel;
    Panel2: TPanel;
    pbNomina: TcxProgressBar;
    Panel5: TPanel;
    pbCompleto: TcxProgressBar;
    FDSGenerales: TfrxDBDataset;
    FDSOrganizacion: TfrxDBDataset;
    TabPresentacion: TcxTabSheet;
    TabRecibos: TcxTabSheet;
    TabPersonal: TcxTabSheet;
    GridPersonal: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    RRecibos: TfrxReport;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    PageControl2: TcxPageControl;
    cdFormaPago: TClientDataSet;
    NxNumberColumn4: TNxNumberColumn;
    dsTipoNomina: TDataSource;
    memDeducciones2: TClientDataSet;
    memPercepciones2: TClientDataSet;
    FDSDeducciones2: TfrxDBDataset;
    FDSPercepciones2: TfrxDBDataset;
    cdNomina2: TClientDataSet;
    dsNomina2: TDataSource;
    Panel1: TPanel;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    JvLabel18: TJvLabel;
    Panel3: TPanel;
    ProgressBar1: TProgressBar;
    Panel4: TPanel;
    ProgressBar2: TProgressBar;
    MemGenPercepciones: TClientDataSet;
    MemGenDeducciones: TClientDataSet;
    FDSGenDeducciones: TfrxDBDataset;
    FDSGenPercepciones: TfrxDBDataset;
    FDSGenObligacion: TfrxDBDataset;
    memGenObligacion: TClientDataSet;
    FDSGenRubroImss: TfrxDBDataset;
    memGenRubroImss: TClientDataSet;
    CdHorasExtras: TClientDataSet;
    cdExcepciones: TClientDataSet;
    PreviewNomina: TfrxPreview;
    Panel8: TPanel;
    Btn_ExportarPDF: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    VerHojas: TCheckBox;
    PDFExport: TfrxPDFExport;
    cdGuardias: TClientDataSet;
    dsGuardias: TDataSource;
    cdPeriodos: TClientDataSet;
    dsPeriodos: TDataSource;
    cdExcepcionesUpt: TClientDataSet;
    cdExcepcionesCat: TClientDataSet;
    pnlSeleccionDepto: TPanel;
    cdDeptos: TClientDataSet;
    frxrprt1: TfrxReport;
    Panel7: TPanel;
    NewPreview: TfrxPreview;
    dsDeptos: TDataSource;
    dsOrg: TDataSource;
    cxGridRepos1: TcxGridViewRepository;
    cxDBGridDeptos: TcxGridDBTableView;
    grdColumDepartamento: TcxGridDBColumn;
    cxDBGridOrganizaciones: TcxGridDBTableView;
    grdColumOrganizacion: TcxGridDBColumn;
    frxPoliza: TfrxDBDataset;
    FDSNominaPoliza: TfrxDBDataset;
    dlgSaveExcel: TSaveDialog;
    Panel11: TcxGroupBox;
    pumPersonal: TPopupMenu;
    CalcularIndividual1: TMenuItem;
    memDeptoPercepciones2: TClientDataSet;
    memDeptoDeducciones2: TClientDataSet;
    FDSDeptoDeducciones2: TfrxDBDataset;
    FDSDeptoPercepciones2: TfrxDBDataset;
    frxRubros: TfrxReport;
    FDSRubroPat: TfrxDBDataset;
    FDSRubroObr: TfrxDBDataset;
    pmTabs: TPopupMenu;
    CerrarPestana1: TMenuItem;
    CerrarTodaslasPestanas1: TMenuItem;
    pnlParams: TPanel;
    lbl13: TLabel;
    lbl14: TLabel;
    pnl2: TPanel;
    btn3: TButton;
    btn2: TButton;
    DtedtTermino: TJvDateEdit;
    DtedtInicio: TJvDateEdit;
    cbbDeptos: TcxComboBox;
    N1: TMenuItem;
    FichaPersonal1: TMenuItem;
    GenerarRecibodePago1: TMenuItem;
    RegistrarPago1: TMenuItem;
    ModificarClculo1: TMenuItem;
    cdTimbrado: TClientDataSet;
    FDSTimbrado: TfrxDBDataset;
    dxbrmngr1: TdxBarManager;
    dxTabProceso: TdxRibbonTab;
    DxRibbonNominas: TdxRibbon;
    tbdxbrmngr1Bar1: TdxBar;
    Panel_Nominas: TdxBar;
    tbdxbrmngr1Bar6: TdxBar;
    tbdxbrmngr1Bar7: TdxBar;
    btn_abrir: TdxBarLargeButton;
    btn_Nuevo: TdxBarLargeButton;
    btn_cerrar: TdxBarButton;
    btn_Eliminar: TdxBarButton;
    btn_guardar: TdxBarButton;
    btn_Edit: TdxBarLargeButton;
    btn_Cancelar: TdxBarButton;
    btn_polizaContable: TdxBarButton;
    btn_TiempoExtra: TdxBarButton;
    btn_excepciones: TdxBarButton;
    btn_modificar_calculo: TdxBarLargeButton;
    btn_pagoNomina: TdxBarLargeButton;
    btn_ConsultaPagos: TdxBarLargeButton;
    Panel_Nomina: TcxGroupBox;
    pnl_Periodo: TPanel;
    jvlbl1: TJvLabel;
    jvlbl2: TJvLabel;
    jvlbl3: TJvLabel;
    jvlbl4: TJvLabel;
    jvlbl5: TJvLabel;
    jvlbl6: TJvLabel;
    edt_Dias: TJvDBSpinEdit;
    jvlbl7: TJvLabel;
    edt_Domingos: TJvDBSpinEdit;
    edt_Festivos: TJvDBSpinEdit;
    jvlbl8: TJvLabel;
    jvlbl9: TJvLabel;
    LBL_Festivos: TJvLabel;
    TabContenedora: TcxTabSheet;
    TabcntMain: TcxPageControl;
    btn_ExportarNominas: TdxBarLargeButton;
    LBL11: TJvLabel;
    AdvSmoothButton1: TdxBarButton;
    cdCorteNivel1: TClientDataSet;
    FDSCorteNivel1: TfrxDBDataset;
    cdCorteNivel2: TClientDataSet;
    FDSCorteNivel2: TfrxDBDataset;
    cdObligacionGeneral: TClientDataSet;
    FDSObligacionGeneral: TfrxDBDataset;
    cdIMSSGeneral: TClientDataSet;
    FDSIMSSGeneral: TfrxDBDataset;
    ImprimirReportedeNmina1: TMenuItem;
    CdReferencias: TClientDataSet;
    CxCbbReferencia: TcxComboBox;
    CxChkBoxReferencia: TcxCheckBox;
    CdNetos: TClientDataSet;
    FrxCdNetos: TfrxDBDataset;
    DxBarBtnIncidencias: TdxBarLargeButton;
    pnlReferencias: TPanel;
    Panel10: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel14: TPanel;
    CxCbbRefencias: TcxComboBox;
    Panel16: TPanel;
    Lbl12: TJvLabel;
    N2: TMenuItem;
    ReporteindividualdeInsidencias1: TMenuItem;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    Btn_PlantillaBancaria: TdxBarLargeButton;
    PnlExportarxPagos: TPanel;
    Panel15: TPanel;
    Btn_ExportarPorPagos: TButton;
    Btn_CancelarPorPagos: TButton;
    Panel17: TPanel;
    JvLabel1: TJvLabel;
    cbReferenciaxPagos: TcxComboBox;
    Panel18: TPanel;
    Btn_DetalleCalculo: TdxBarButton;
    Btn_NominaPagoExcel2: TdxBarButton;
    Btn_PlantillaBancaria2: TdxBarButton;
    DxBarBtn1: TdxBarButton;
    DxBarBtnRegistrarPago: TdxBarButton;
    JvLabel2: TJvLabel;
    cxGBDialogCalcNomina: TcxGroupBox;
    CxLblLeyenda: TcxLabel;
    imgLogo1: TcxImage;
    CxLblSubtittulo: TcxLabel;
    cxGBBotones: TcxGroupBox;
    CxBtnCancel: TcxButton;
    CxBtnOk: TcxButton;
    CxChkBoxCalcExcel: TcxCheckBox;
    CdMachotes: TClientDataSet;
    dsMachotes: TDataSource;
    CxLCbbMachotes: TcxLookupComboBox;
    cxGBOpciones: TcxGroupBox;
    cxGBBuscar: TcxGroupBox;
    CxBtnBuscar: TcxButton;
    CxTextEdtBuscar: TcxTextEdit;
    FrxReportInfonavit: TfrxReport;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    lblSelOpcion: TcxLabel;
    imgLogo2: TcxImage;
    CxLbl1: TcxLabel;
    panelResumen : TPanel;
    DxTaskBar1: TdxTaskbarProgress;
    CancelarTimbre1: TMenuItem;
    NxColumnRFCEmpresa: TNxTextColumn;
    NxColumnUUID: TNxTextColumn;
    CdEncabezado: TClientDataSet;
    cdDesactivarTimbre: TClientDataSet;
    CdTipoInasistencia: TClientDataSet;
    DxBarBtnInasistencias: TdxBarButton;
    CdInasistenciaUpt: TClientDataSet;
    CdInasistencia: TClientDataSet;
    FDSDatosConfiguracion: TfrxDBDataset;
    cdNucConf: TClientDataSet;
    DxBarBtnConcentradoNominas: TdxBarLargeButton;
    CdModuleOrganizacion: TClientDataSet;
    DxPrintDialogRecibo: TdxPrintDialog;
    dxTabParametros: TdxRibbonTab;
    dxTabPersonal: TdxRibbonTab;
    DxBarParametros: TdxBar;
    DxBarPersonal: TdxBar;
    DxBarBtnCalcular: TdxBarLargeButton;
    DxBarBtnCalcularSeleccionando: TdxBarLargeButton;
    DxBarBtnReportePreliminar: TdxBarLargeButton;
    DxBarBtnRecibo: TdxBarLargeButton;
    CdDetalleGrafica: TClientDataSet;
    dsDetalleGrafica: TDataSource;
    CxGridDatosGrafica: TcxGrid;
    cxGridChartDetalleNominas: TcxGridDBChartView;
    CxDataGroupMes: TcxGridDBChartDataGroup;
    CxSerieNeto: TcxGridDBChartSeries;
    CxLevelGrafica: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    DxMiniTool1: TdxRibbonMiniToolbar;
    DxBardxbrmngr1Bar1: TdxBar;
    CxSplit1: TcxSplitter;
    dxPopupChart: TdxBarPopupMenu;
    DxBarBtnExportarImagen: TdxBarLargeButton;
    dlgSaveGrafica: TSaveDialog;
    pnlContenedor: TPanel;
    ScrollBox2: TcxScrollBox;
    DxBarSiteBotoneraCalculo: TdxBarDockControl;
    cxGBDetalleNomina: TcxGroupBox;
    dbtxtTitulo: TDBText;
    dbtxtFechaNomina: TDBText;
    dbtxtEstado: TDBText;
    dbtxtDias: TDBText;
    dbtxtDomingos: TDBText;
    dbtxtFestivos: TDBText;
    dbtxtFechatermino: TDBText;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lblTotEmp: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    NetoNomina: TJvLabel;
    DxBarBtnRefrescar: TdxBarLargeButton;
    CxDataGroupNomina: TcxGridDBChartDataGroup;
    DxPopMenuTab: TdxRibbonPopupMenu;
    DxBarBtnCerrarPeestana: TdxBarLargeButton;
    AdvSpopupAyuda: TAdvSmoothPopup;
    pnlInformativa: TPanel;
    CxLblSuma: TcxLabel;
    cxLabel1: TcxLabel;
    cxLblPer: TcxLabel;
    cxLabel3: TcxLabel;
    cxLblDed: TcxLabel;
    cxLabel5: TcxLabel;
    dxBtnFiniquitos: TdxBarLargeButton;
    cdFiniquitoPer: TClientDataSet;
    FrxDbFiniquitoPer: TfrxDBDataset;
    FrxReportFiniquitos: TfrxReport;
    cdFiniquitoDed: TClientDataSet;
    FrxDbFiniquitoDed: TfrxDBDataset;
    cxLabel2: TcxLabel;
    dxBtnBuscarEmpleado: TdxBarLargeButton;
    CxGridRepo: TcxGridViewRepository;
    vistaGuardias: TcxGridDBTableView;
    tcxIdGuardia: TcxGridDBColumn;
    tcxGuardia: TcxGridDBColumn;
    DbLCbbGuardias: TcxExtLookupComboBox;
    cbbPeriodos: TcxExtLookupComboBox;
    vistaPeriodosGuardias: TcxGridDBTableView;
    tcxVistaIdPeriodosGuardia: TcxGridDBColumn;
    tcxVistaLeyendaFecha: TcxGridDBColumn;
    tcxPeriodosFechaInicio: TcxGridDBColumn;
    tcxPeriodosFechaTermino: TcxGridDBColumn;
    edt_Titulo: TcxDBTextEdit;
    cbbTipoNomina: TcxDBLookupComboBox;
    edt_FechaNomina: TcxDBDateEdit;
    edt_FechaTerminoNomina: TcxDBDateEdit;
    edtFechaPago: TcxDBDateEdit;
    btnCrearCortes: TcxButton;
    PreviewRecibos: TfrxPreview;
    dxPopupPersonal: TdxRibbonPopupMenu;
    Cortes: TClientDataSet;
    dsCortes: TDataSource;
    cdGravados: TClientDataSet;
    cdEncabezadoXLS: TClientDataSet;
    btnExportarGlobales: TdxBarLargeButton;
    cdHistorial: TClientDataSet;
    ConsultarVacaciones1: TMenuItem;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AbrirClick(Sender: TObject);
    procedure cdNominaAfterClose(DataSet: TDataSet);
    procedure cdNominaAfterDelete(DataSet: TDataSet);
    procedure cdNominaAfterPost(DataSet: TDataSet);
    procedure cdNominaAfterRefresh(DataSet: TDataSet);
    procedure cdNominaAfterOpen(DataSet: TDataSet);
    procedure Btn_CerrarClick(Sender: TObject);
    procedure Btn_EliminarClick(Sender: TObject);
    procedure cdNominaAfterEdit(DataSet: TDataSet);
    procedure Btn_EditClick(Sender: TObject);
    procedure Btn_GuardarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure edt_FechaNomina2Change(Sender: TObject);
    procedure cdNominaAfterCancel(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure RNominaGetValue(const VarName: string; var Value: Variant);
    procedure RNominaDblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure RSubReporteGetValue(const VarName: string; var Value: Variant);
    procedure cdPersonalDetalleNominaAfterScroll(DataSet: TDataSet);
    procedure TabPersonalShow(Sender: TObject);
    procedure Btn_PagoNominaClick(Sender: TObject);
    procedure RRecibosGetValue(const VarName: string; var Value: Variant);
    procedure cdNominaBeforeClose(DataSet: TDataSet);
    procedure Btn_NuevoClick(Sender: TObject);
    procedure cdTipoNominaAfterScroll(DataSet: TDataSet);
    procedure edt_DiasChange(Sender: TObject);
    procedure edt_FechaTerminoNomina2Change(Sender: TObject);
    procedure Btn_Modificar_CalculoClick(Sender: TObject);
    procedure Btn_FiniquitosClick(Sender: TObject);
    procedure GridPersonalCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure Btn_ExportarNominasClick(Sender: TObject);
    procedure tsTiposNominaChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure btnExportarClick(Sender: TObject);
    procedure VerHojasClick(Sender: TObject);
    procedure cdNominaBeforeOpen(DataSet: TDataSet);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Btn_ExportarPDFClick(Sender: TObject);
    procedure cbbGuardiasChange(Sender: TObject);
    procedure Btn_TiempoExtraClick(Sender: TObject);
    procedure Btn_ExcepcionesClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TabSheetContenedoraShow(Sender: TObject);
    procedure onShow2(Sender: TObject);
    procedure onClickImp(Sender: TObject);
    procedure onClickExp(Sender: TObject);
    procedure onClickCheck(sender: TObject);
    procedure Btn_PolizaContableClick(Sender: TObject);
    procedure Btn_SueldosSalarios_2Click(Sender: TObject);
    procedure CalcularIndividual1Click(Sender: TObject);
    procedure CerrarTodaslasPestanas1Click(Sender: TObject);
    procedure CerrarPestana1Click(Sender: TObject);
    procedure pmTabsPopup(Sender: TObject);
    procedure pumPersonalPopup(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn_ConsultaPagosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GenerarRecibodePago1Click(Sender: TObject);
    procedure RegistrarPago1Click(Sender: TObject);
    procedure ModificarClculo1Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure dxBtn1Click(Sender: TObject);
    procedure GridPersonalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_personal_fichaClick(Sender: TObject);
    procedure cdNomina2AfterScroll(DataSet: TDataSet);
    procedure ImprimirReportedeNmina1Click(Sender: TObject);
    procedure DxBarBtnReportePagosClick(Sender: TObject);
    procedure CxChkBoxReferenciaClick(Sender: TObject);
    procedure DxBarBtnIncidenciasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ReporteindividualdeInsidencias1Click(Sender: TObject);
    procedure Btn_PlantillaBancariaClick(Sender: TObject);
    procedure Btn_NominaPagoExcelClick(Sender: TObject);
    procedure Btn_ExportarPorPagosClick(Sender: TObject);
    procedure DxBarBtn1Click(Sender: TObject);
    procedure DxBarBtnRelaciónPagosClick(Sender: TObject);
    procedure DxBarBtnRegistrarPagoClick(Sender: TObject);
    procedure EdtFechaPagoClick(Sender: TObject);
    procedure edtFechaPago2Change(Sender: TObject);
    procedure CxChkBoxCalcExcelPropertiesChange(Sender: TObject);
    procedure CxBtnGenerarClick(Sender: TObject);
    procedure CxBtnBuscarClick(Sender: TObject);
    procedure CxTextEdtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabParametrosShow(Sender: TObject);
    procedure CancelarTimbre1Click(Sender: TObject);
    procedure DxBarBtnInasistenciasClick(Sender: TObject);
    procedure DxBarBtnConcentradoNominasClick(Sender: TObject);
    procedure DxBarBtnCalcularClick(Sender: TObject);
    procedure DxBarBtnCalcularSeleccionandoClick(Sender: TObject);
    procedure DxBarBtnReportePreliminarClick(Sender: TObject);
    procedure DxBarBtnReciboClick(Sender: TObject);
    procedure DxRibbonNominasTabChanged(Sender: TdxCustomRibbon);
    procedure DxBarBtnExportarImagenClick(Sender: TObject);
    procedure DxBarBtnRefrescarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DxBarBtnCerrarPeestanaClick(Sender: TObject);
    procedure botonesPorNomina(estado : Boolean);
    procedure dxBtnFiniquitosClick(Sender: TObject);
    procedure dxBtnBuscarEmpleadoClick(Sender: TObject);
    procedure vistaPeriodosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DbLCbbGuardiasPropertiesEditValueChanged(Sender: TObject);
    procedure cbbTipoNominaPropertiesEditValueChanged(Sender: TObject);
    procedure cbbPeriodosPropertiesEditValueChanged(Sender: TObject);
    procedure edt_FechaNominaPropertiesEditValueChanged(Sender: TObject);
    procedure edt_FechaTerminoNominaPropertiesEditValueChanged(Sender: TObject);
    procedure edtFechaPagoPropertiesEditValueChanged(Sender: TObject);
    procedure edt_Dias3Click(Sender: TObject);
    procedure btnCrearCortesClick(Sender: TObject);
    procedure FichaPersonal1Click(Sender: TObject);
    procedure cdFiniquitoPerAfterScroll(DataSet: TDataSet);
    procedure cbbTipoNominaPropertiesChange(Sender: TObject);
    procedure btnExportarGlobalesClick(Sender: TObject);
    procedure ConsultarVacaciones1Click(Sender: TObject);
    procedure btnTiendaClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    //FDSTmp: TfrxDBDataset;//ojo

    UltimaColumna: Integer;
    ConceptoNombre, ConceptoColumna, posFormula,IniciaFormula: TStringList;

    BanderaPago, banderaTermino, recalculado: Boolean;
    tipoTab: Integer;//si es 0 es por organizacion y si es 1 es por localidad
    tagButton: Integer;
    PrevReport: TfrxPreview;
    Report: TfrxReport;
    mrResult: Integer;
    prefijoC, prefijoN, prefijoPrv, prefijoRpt,
    prefijoPNL, PrefijoIMP,PrefijoEXP, leyenda, PrefijoCHK: string;
    IndiceDeptoOrg: Integer;
    cdBuscarDatos: TClientDataSet;
    GenPer,GenDed:Real;
    YaCreado: Boolean;
    YaLeidoPersonalIncluido: Boolean;
    ReadYet: Boolean;
    NetoPagar,
    NetoDeptoPagar,
    NetoDeptoPagar2,
    TotalPercepciones,
    TotalDeducciones,
    NetoDeptoPercepciones,
    NetoDeptoDeducciones: Real;
    cdGruposConcepto, cdGenerales, cdSumaConcepto: TClientDataSet;
    SMGVDF: Real;
    sCodigo: TCodigo;
    ConEfecto: Boolean;
    cdDetalleNomina: TClientDataSet;
    CurrentAdvPage: TAdvPage;

    cdTmpNomina :TClientDataSet;            //saul
    cdAcumDetalle: TClientDataSet;
    dsTmpNomina :TDataSource;               //saul
    TempPath: array [0..MAX_PATH-1] of Char;
    CargandoGuardias: Boolean;
    pCual: Integer;
    ListaTiposNomina: TStringList;
    myNewTab: Integer;

    ProcederScroll: Boolean;
    procedure ResultadoDeCancelacion(Resultado: Integer);
    procedure CargarMachotes;
    procedure CargarReferencias(var Cbox: TcxComboBox);
    Procedure SalariosAcumulados(Excel: Variant;FechaInicio,FechaTermino:TDate);  //Gama
    procedure destruirObjetos;
    function crearTabNominas(Nombre: String): Boolean;

    procedure crearTabTipoNomina;   //saul

    Procedure crearEstructuraCalculo;

    procedure ActualizarEstadoBotones;
    procedure EstadoObjetos(Estado: Boolean);
    procedure CrearEstructura;
    procedure ImprimeCalculo(Id: Integer);
    procedure CalcularNomina(Seleccion: Boolean; pIdPersonal: Integer = -1; LibroExcel: String = '');
    procedure AbrirNomina(IdNomina: Integer);
    procedure AbrirPersonalIncluido(var cdPersonalIncluido: TClientDataSet;
      IdNomina: Integer; Incluidos: Boolean;SoloBajas:Boolean = False);
    procedure GenerarReporte(Nreporte: String; Reporte: TfrxReport);
    procedure AjustarFecha(Sender: TObject);
    procedure ContarFestivos;
    procedure CargarGuardias(IdTipoNomina: Integer);
    procedure EliminarPagoNomina(IdPersonal, Fila: Integer; var pagado : Boolean);
    procedure EncabezadoConcetrado(Referencia: String; SoloEtiquetas: Boolean; WorkSheet: Variant; Excel: Variant; DiasDescanso: Integer; FechaNomina, FechaTerminoNomina: String; TituloOrganizacion: String; Var Colx: Integer; Var RowX: Integer; Var x: Integer);
    procedure VerificaDataSet;
    procedure GenerarInsidencias(IdNomina, IdPersonal: Integer);
    procedure ExportarAExcelGeneral(Referencia: String);
    procedure combosExtLookup(activo : Boolean);
    function hayPersonalPagado : Boolean;
  public
    estadoNomina : string;
    procedure AccedeRegistro(Id: Integer);
    procedure habilitarFechas;

  end;

var

  FrmCatalogoNominas: TFrmCatalogoNominas;
  cdPersonalIncluido: TClientDataSet;
  TipoR: string;
  //Cancelación de Timbres
  CredencialPac: TPFCredenciales;
  ProveedorTimbrado: TPFPAC;
  CSD: TPFCSD;
  UUID : string;
  //LocIdPersonal: Integer;

  //Pago de Nómina:
  (*Nomina: TPFFacturaElectronica;
  Empresa,
  Empleado: TPFContribuyente;
  PercepcionesNomina,
  DeduccionesNomina: TPFNomina_Conceptos;
  Incapacidades: TPFNomina_Incapacidades;
  HorasExtra: TPFNomina_HorasExtra;

   PercepcionNomina,
  DeduccionNomina: TPFNomina_Concepto;
  Incapacidad: TPFNomina_Incapacidad;
  HoraExtra: TPFNomina_HoraExtra; *)

   Llave: Integer;

   (*ProveedorTimbrado : TPFPAC;
   TimbreDeFactura : TPFTimbre; *)
  archivoFacturaXML, rutaImagenCBB,
  archivoNominaPDF: String;


implementation

uses
  UTFrmAbrirNomina, UInteliDialog, UTFrmPersonalNomina, UTFrmPagoNomina,
  UTFrmModificarImportesNomina, Unit2, UTFrmExcepcionesEspeciales,
  UTFrmPersonalHExtra , UtfrmComparaRhNomina, UtFrmModificarPago,
  UTFrmConsultaPagos, UtFrmfrmConceptoExtraEmpleado, UTFrmConsultaFichaPersonal,
  UtfrmGastos, UTFrmReporteInsidencias, UTFrmPlantillaBancaria, UTFrmNominasExcel,
  UTFrmExcepciones, Frm_Configuracion, UTFrmConcentradoNomina, UTFrmCorteNominas,
  UtFrmFichaGeneralPersonal, UtfrmFormatosExcel, UTFrmReportesExcel,
  UTFrmConsultaVacaciones;

{$R *.dfm}

function StrIndex(Selector : string; CaseList: array of string): Integer;
var
  cnt: Integer;
begin
  Result := -1;

  for cnt:= 0 to Length(CaseList) -1 do
  begin
    if CompareText(Selector, CaseList[cnt]) = 0 then
    begin
      Result:=cnt;
      Break;
    end;
  end;
end;

function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
  end;

  Result := Copy(Cadena, 1, Pos('|', Cadena) - 1);
end;

function CuentaPartes(Cadena: String): Integer;
var
  ii: Integer;
begin
  ii := 0;
  while Pos('|', Cadena) > 0 do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
  end;

  Result := ii;
end;

procedure TFrmCatalogoNominas.GenerarRecibodePago1Click(Sender: TObject);
begin
  Try
    pCual := GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger;
    DxBarBtnRecibo.OnClick(DxBarBtnRecibo);
  Finally
    pCual := -1;
  End;
end;

procedure TFrmCatalogoNominas.GenerarReporte(Nreporte: String;
  Reporte: TfrxReport);
var
  Cursor: TCursor;
  NumRec, i, j: Integer;
  Descripcion1: string;
  Cadena, Modo, Modo2, Codigo, Titulo, Titulo2, Nombre, Grupo, Cargo, Valor,
  Imprime, Orden, OldModo, Clave, TituloHeredar: String;
  myTituloHeredar: TTituloHeredar;
  Acceso: TClientDataSet;
  contarHorasExtras: Extended;
  PosicionActual: Integer;
  rValor, salarioActual: Extended;
  sentencia, ReferenciaPago: string;
  Marca: TBookmark;
  cdDetalleLoad: TClientDataSet;
  DiasLoQueSea: Real;
  ListaIncluirTitulos: TStringList;

function RellenaOrden(Cad:string):string;
begin
  while Length(Trim(Cad)) < 14 do
  begin
    Cad:='0'+Cad;
  end;
  Result := Cad;
end;

begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      cdDetalleLoad := TClientDataSet.Create(Self);
      ///*Este fragmento lo puse para evitar el error que sale del dataset de ClientmoduleUnit1*/
      if CdModuleOrganizacion.ProviderName = '' then
        if not CrearConjunto(CdModuleOrganizacion, 'nuc_organizacion', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['cOrganizacion']);

      if not CargarDatosFiltrados(CdModuleOrganizacion, 'padre', [-5]) then
        raise InteligentException.CreateByCode(6, ['Organizacion', 'IdOrganizacion', varToStr(Form2.IdOrganizacionSeleccionada)]);

      if CdModuleOrganizacion.Active then
        CdModuleOrganizacion.Refresh
      else
        CdModuleOrganizacion.Open;
      //*Fin de corrección de Bug*/

      //*partes Gravables para mostrar en el reporte*/

      if cdGravados.ProviderName = '' then
        if not CrearConjunto(cdGravados, 'nom_detallenomina_gravables', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Nom_detalleNomina_gravables']);

      if not cargarDatosFiltrados(cdGravados, 'CorteOrg,Referencia,ListaNominas,CodigoGrav', [-1,-1,cdNomina.FieldByName('IdNomina').AsInteger, 'Si']) then
        raise inteligentException.CreateByCode(6, ['Nom_detalleNomina_gravables','IdNomina', IntToStr(IdNomina)]);

      if cdGravados.Active then
        cdGravados.Refresh
      else
        cdGravados.Open;


      if (Nreporte = 'Recibo.fr3') or (Nreporte = 'ReciboAsimilado.fr3') then
      begin

        if PageControl1.ActivePage = TabPresentacion then
          PageControl1.ActivePage := TabNomina;
        //TabPresentacion.Visible := True;
        TcxTabSheet(PreviewNomina.Parent).PageControl := PageControl2;
      end
      else
        PageControl1.ActivePageIndex := TabContenedora.PageIndex;
      // Abrir la nómina que se va a imprimir
      if Not YaCreado then
        CrearEstructura;

      AbrirNomina(cdNomina.FieldByName('IdNomina').AsInteger);

      // Verificar si ya se ha cargado el salario minimo del DF
      if SMGVDF = 0 then
      begin
        Try
          // Acceso := TClientDataSet.Create(Screen.ActiveForm);
          Acceso := TClientDataSet.Create(Nil);

          // Obtener el salario mínimo del D.F.
          if Not CrearConjunto(Acceso, 'rhu_salario', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Catálogo de Salarios']);

          if Not CargarDatosFiltrados(Acceso, 'TipoSalario', ['SMVDF']) then
            raise InteligentException.CreateByCode(6, ['Catalogo de Salarios', ClientModule1.cdOrganizacion.FieldByName('IdSalario').AsInteger, 'IdLlave']);
          Acceso.Open;

          if Acceso.RecordCount = 0 then
            raise InteligentException.CreateByCode(1, ['No existe el Salario Mínimo para el D.F.']);

          SMGVDF := StrToFloat(Acceso.FieldByName('Salario').AsString);

          Acceso.Close;
        Finally
          if Assigned(Acceso) then
          begin
            if Acceso.Active then
              Acceso.Close;

            EliminarConjunto(Acceso);
            Acceso.Free;
          end;
        End;
      end;

      if cbbDeptos.ItemIndex = 0 then
        Llave := cdBuscar.FieldByName('IdNomina').AsInteger
      else
        Llave := -9;

      if CxChkBoxReferencia.Checked then
        ReferenciaPago := CxCbbReferencia.Text
      else
        ReferenciaPago := '-1';

      if cdCorteNivel1.ProviderName = '' then
        if Not CrearConjunto(cdCorteNivel1, 'nom_detallenomina_acumulado', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Acumulados de Nómina']);

      if Not CargarDatosFiltrados(cdCorteNivel1, 'ListaNominas,Cual,Referencia', [Llave, 'PER', ReferenciaPago]) then
        raise InteligentException.CreateByCode(6, ['Acumulados de Nómina', Llave, 'Id. Nomina']);

      cdCorteNivel1.Open;

      if cdCorteNivel2.ProviderName = '' then
        if Not CrearConjunto(cdCorteNivel2, 'nom_detallenomina_acumulado', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Acumulados de Nómina']);

      if Not CargarDatosFiltrados(cdCorteNivel2, 'ListaNominas,Cual,Referencia', [Llave, 'DED', ReferenciaPago]) then
        raise InteligentException.CreateByCode(6, ['Acumulados de Nómina', Llave, 'Id. Nomina']);

      cdCorteNivel2.Open;

      if cdObligacionGeneral.ProviderName = '' then
        if Not CrearConjunto(cdObligacionGeneral, 'nom_detallenomina_acumulado', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Acumulados de Nómina']);

      if Not CargarDatosFiltrados(cdObligacionGeneral, 'ListaNominas,Cual', [Llave, 'OBL']) then
        raise InteligentException.CreateByCode(6, ['Acumulados de Nómina', Llave, 'Id. Nomina']);

      cdObligacionGeneral.Open;

      if cdIMSSGeneral.ProviderName = '' then
        if Not CrearConjunto(cdIMSSGeneral, 'nom_detallenomina_acumuladoimss', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Acumulados de IMSS de Nómina']);

      if Not CargarDatosFiltrados(cdIMSSGeneral, 'ListaNominas', [Llave]) then
        raise InteligentException.CreateByCode(6, ['Acumulados de IMSS de Nómina', Llave, 'Id. Nomina']);

      cdIMSSGeneral.Open;

      // Crear el conjunto de los datos generales del empleado
      if Not Assigned(cdGenerales) then
        cdGenerales := TClientDataSet.Create(Self)
      else
      begin
        cdGenerales.Close;
        cdGenerales.FieldDefs.Clear;
      end;

      // Crear el conjunto de personal
      if cdPersonalDetalleNomina.ProviderName = '' then
      begin
        if Not CrearConjunto(cdPersonalDetalleNomina, 'nuc_personal_detallenomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal por Detalle de Nómina']);
      end
      else
        cdPersonalDetalleNomina.Close;


      if cbbDeptos.ItemIndex = -1  then
        TipoR:='LOCALIDAD'
      else
        TipoR := 'LOCALIDAD';

      if CdNetos.ProviderName = '' then
        if not CrearConjunto(CdNetos, 'nom_detallenomina_netos', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Netos Detalle Nómina']);

      if not CargarDatosFiltrados(CdNetos, 'IdNominas,Referencia', [cdNomina.fieldbyName('IdNomina').asInteger, ReferenciaPago]) then
        raise InteligentException.CreateByCode(6, ['Detalle Nómina', 'IdNomina', cdNomina.fieldbyName('IdNomina').AsString]);

      if CdNetos.Active then
        CdNetos.Refresh
      else
        CdNetos.Open;

      if CxChkBoxReferencia.Checked then
        ReferenciaPago := CxCbbReferencia.Text
      else
        ReferenciaPago := '-1';

      (*if Not CargarDatosFiltrados(cdPersonalDetalleNomina, 'IdNomina,IdDepartamento,IdPersonal,Referencia', [cdBuscar.FieldByName('IdNomina').AsInteger, Integer(cbbDeptos.Items.Objects[cbbDeptos.ItemIndex]), pCual]) then*)

      if Not CargarDatosFiltrados(cdPersonalDetalleNomina, 'IdNomina,IdDepartamento,IdPersonal,Referencia', [cdBuscar.FieldByName('IdNomina').AsInteger, Integer(cbbDeptos.Properties.Items.Objects[cbbDeptos.ItemIndex]), pCual, ReferenciaPago]) then
        raise InteligentException.CreateByCode(6, ['Personal por Detalle de Nómina', cdBuscar.FieldByName('IdNomina').AsInteger, 'IdNomina']);
      cdPersonalDetalleNomina.Open;


      if cdPersonalDetalleNomina.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Personal por Detalle de Nómina']);

      if (Nreporte = 'Recibo.fr3') or (Nreporte = 'ReciboAsimilado.fr3') then
      begin
        if Not CargarDatosFiltrados(cdTimbrado, 'IdNomina,Activo', [cdBuscar.FieldByName('IdNomina').AsInteger, 'Si']) then
          raise InteligentException.CreateByCode(6, ['Personal por Timbrado', cdBuscar.FieldByName('IdNomina').AsInteger, 'IdNomina']);

        if cdTimbrado.Active then
          cdTimbrado.Refresh
        else
          cdTimbrado.Open;
      end;

      // Leer los datos de la nómina
      if Not CrearConjunto(cdDetalleLoad, 'nom_detallenomina_depto', ccSelect) then
      {if Not CrearConjunto(cdDetalleLoad, 'nom_detallenomina_depto', ccSelect) then}
        raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

      if Not CargarDatosFiltrados(cdDetalleLoad, 'IdNomina,Referencia', [cdBuscar.FieldByName('IdNomina').AsInteger, ReferenciaPago]) then
        raise InteligentException.CreateByCode(6, ['la nómina ' + cdBuscar.FieldByName('Titulo').AsString, cdBuscar.FieldByName('IdNomina').AsInteger, 'IdNomina']);

      if cdDetalleLoad.Active then
        cdDetalleLoad.Refresh
      else
        cdDetalleLoad.Open;

      if cdDetalleload.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['la nómina ' + cdBuscar.FieldByName('Titulo').AsString + ' del ' + cdBuscar.FieldByName('FechaNomina').AsString]);

      // Limpiar los datos de nómina de empleado que pudieran existir
      memPercepciones.EmptyDataSet;
      memDeducciones.EmptyDataSet;

      memPercepciones2.EmptyDataSet;
      memDeducciones2.EmptyDataSet;

      // Limpiar los datos de nómina de departamento que pudieran existir
      memDeptoPercepciones.EmptyDataSet;
      memDeptoDeducciones.EmptyDataSet;

      memDeptoPercepciones2.EmptyDataSet;
      memDeptoDeducciones2.EmptyDataSet;

      // Limpiar los datos de Obligaciones Fiscales de departamento que pudieran existir
      memObligacion.EmptyDataSet;

      // Limpiar los rubros de IMSS por departamento que pudieran existir
      memRubrosIMSS.EmptyDataSet;

      cdDetalleLoad.First;

      // Identificar cuantos registros componen su nómina
      NumRec := 0;
      Cadena := cdDetalleLoad.FieldByName('Clave').AsString;
      while Pos('|', Cadena) > 0 do
      begin
        Inc(NumRec);
        Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
      end;

      // Obtener el universo de conceptos de entre todos los empleados
      cdDetalleLoad.First;
      while not cdDetalleLoad.Eof do
      begin
        for i := 0 to NumRec - 1 do
        begin
          Modo := Parte(i, cdDetalleLoad.FieldByName('Modo').AsString);
          Codigo := Parte(i, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);

          if (CompareText(Modo, 'EMPLEADO') = 0) and (cdGenerales.FieldDefs.IndexOf(Codigo) < 0) then
            cdGenerales.FieldDefs.Add(Codigo, ftString, 200, False);
        end;

        cdDetalleLoad.Next;
      end;

      // Verificar si existen los parametros de la organizacion
      //if cdGenerales.FieldDefs.IndexOf('TituloOrganizacion') < 0 then
      begin
        // Agregar los campos que hacen falta
        Try
          cdGenerales.FieldDefs.Add('DiasLoQueSea', ftFloat, 0, False);
        Except
          ;
        end;

        Try
          cdGenerales.FieldDefs.Add('TituloOrganizacion', ftString, 200, False);
        Except
          ;
        end;

        Try
          cdGenerales.FieldDefs.Add('DomicilioFiscalOrg', ftString, 200, False);
        Except
          ;
        end;

        Try
          cdGenerales.FieldDefs.Add('DomicilioOrg', ftString, 200, False);
        Except
          ;
        end;

        Try
          cdGenerales.FieldDefs.Add('rfcOrganizacion', ftString, 200, False);
        Except
          ;
        end;
      end;

      cdGenerales.CreateDataSet;
      cdGenerales.Open;

      contarHorasExtras := 0;
      cdDetalleLoad.First;
      while not cdDetalleLoad.Eof do
      begin
        // Identificar cuantos registros componen su nómina
        NumRec := 0;
        Descripcion1 := '';
        contarHorasExtras := 0;
        salarioActual := 0.0;

        // Limpiar la descripción correspondiente a la proporción de Dias etc.
        Cadena := cdDetalleLoad.FieldByName('Clave').AsString;
        while Pos('|', Cadena) > 0 do
        begin
          Inc(NumRec);
          Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
        end;

        cdGenerales.Append;
        cdGenerales.FieldByName('IdPersonal').AsInteger := cdDetalleLoad.FieldByName('IdPersonal').AsInteger;
        OldModo := 'PER';
        DiasLoQueSea := 0.0;

        // Crear la lista de elementos que se deben heredad a un titulo posterior
        ListaIncluirTitulos := TStringList.Create;
        ListaIncluirTitulos.Clear;

        for i := 0 to NumRec - 1 do
        begin
          Modo := Parte(i, cdDetalleLoad.FieldByName('Modo').AsString);
          Codigo := Parte(i, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
          Titulo := Parte(i, cdDetalleLoad.FieldByName('Titulo').AsString);
          Nombre := Parte(i, cdDetalleLoad.FieldByName('Descripcion').AsString);
          Grupo := Parte(i, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
          Cargo := Parte(i, cdDetalleLoad.FieldByName('Cargo').AsString);
          Imprime := Parte(i, cdDetalleLoad.FieldByName('Imprime').AsString);
          Valor := Parte(i, cdDetalleLoad.FieldByName('Valor').AsString);
          Clave := Parte(i, cdDetalleLoad.FieldByName('Clave').AsString);
          Titulo2:=Titulo;

          // Asegurarnos de que los conceptos esté disponibles
          // por cuestiones del destino en mi pc el cdconcepto aparece como inactivo, es por eso q se abre aqui
          if (Not cdConcepto.Active) or ((cdConcepto.Active) and (cdConcepto.FieldByName('IdTipoNomina').AsInteger <> cdNomina.FieldByName('IdTipoNomina').AsInteger))  then
          begin
            CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdNomina.FieldByName('IdTipoNomina').AsInteger]);
            if cdConcepto.Active then
              cdConcepto.Refresh
            else
              cdConcepto.Open;
          end;

          // Verificar si este concepto hace referencia a otro concepto

          if (cdConcepto.Locate('Clave',  Clave, [])) and ((Not cdConcepto.FieldByName('Clave_Relacion').IsNull) or (cdConcepto.FieldByName('Clave_Relacion').AsString <> '')) then
          begin
            // Agregar a la lista para buscarlos posteriormente
            myTituloHeredar := TTituloHeredar.Create;
            myTituloHeredar.Valor := Valor;
            Descripcion1 := '';
            ListaIncluirTitulos.AddObject(cdConcepto.FieldByName('Clave_Relacion').AsString, myTituloHeredar);
//            try
//              if cdPersonalDetalleNomina.Locate('IdPersonal', cdDetalleLoad.FieldByName('IdPersonal').AsInteger, []) then
//              begin
//                Descripcion1 := 'PROPORCION ' + valor + ' X ' + cdPersonalDetalleNomina.FieldByName('Leyenda' + cdConcepto.FieldByName('Clave_Relacion').AsString).asString;     // aqui estabas agregando la descripción de la proporción de los días trabajados
//              end;
//            except
//              Descripcion1 := '';
//            end;
          end;

          // Verificar si el concepto tiene que heredar algún dato
          TituloHeredar := '';

          if ListaIncluirTitulos.IndexOf(Clave) >= 0 then
          begin
            TituloHeredar := '    (' + TTituloHeredar(ListaIncluirTitulos.Objects[ListaIncluirTitulos.IndexOf(Clave)]).Valor + ')';

          end;

          if Copy(Modo, 1, 3) = OldModo then
          begin
            DiasLoQueSea := StrToFloat(Valor);
            OldModo := '';
          end;

          if ((Nreporte='Recibo.fr3') and (Codigo = '32')) or ((Nreporte='ReciboAsimilado.fr3') and (Codigo = '32')) then //((Copy(Modo,1,3)='DED') or (Copy(Modo,1,3)='PER')) then
          begin
            Try
              rValor := StrToFloat(Valor);
            Except
              rValor := 0;
            end;

            Valor := FloatToStr(Abs(rValor));
            if (ClientModule1.CdRutaReportes.FieldByName('Valor1').asString = 'reportes\UTIDEL\')  theN
              Modo := 'PERCEPCION'  // Mandar a valor absoluto y como percepcion el subsidio
            else
               Modo := 'PER-MEMORIA';
          end;

          if ((ClientModule1.CdRutaReportes.FieldByName('Valor1').asString = 'reportes\UTIDEL\') and (Nreporte='Recibo.fr3') and (Codigo = '41')) or ((Nreporte='ReciboAsimilado.fr3') and (Codigo = '41'))then //((Copy(Modo,1,3)='DED') or (Copy(Modo,1,3)='PER')) then
            Modo := 'DEDUCCION';  // Mandas a sumar como parte de las deducciones

          if ((ClientModule1.CdRutaReportes.FieldByName('Valor1').asString = 'reportes\UTIDEL\') and (Nreporte='Recibo.fr3') and (Codigo = '49')) {or ((Nreporte='ReciboAsimilado.fr3') and (Codigo = '49'))} then //((Copy(Modo,1,3)='DED') or (Copy(Modo,1,3)='PER')) then
            Modo := 'MEMORIA';  // El impuesto se pasa a memoria para que no se sume a las deducciones ni se reporte

          //Subsidio convertirlo como lo quiere cmmi
          if ((ClientModule1.CdRutaReportes.FieldByName('Valor1').asString = 'reportes\CMMI\') and (Nreporte='Recibo.fr3') and (Codigo = '49') and (StrToFloat(valor) < 0)) {or ((Nreporte='ReciboAsimilado.fr3') and (Codigo = '49'))} then //((Copy(Modo,1,3)='DED') or (Copy(Modo,1,3)='PER')) then
          begin
            Modo := 'PERCEPCION';  // El impuesto se pasa a memoria para que no se sume a las deducciones ni se reporte

            Try
              rValor := StrToFloat(Valor);
            Except
              rValor := 0;
            end;
            Valor := FloatToStr(Abs(rValor));
            Titulo2 := 'SUBSIDIO AL EMPLEO';
          end;

          if Codigo = 'Salario' then
            salarioActual := StrToFloat(Valor);

          if (Codigo='4')  then
          begin
           contarHorasExtras := ContarHorasExtras + strToFloat(Valor);
          end;

          if (ClientModule1.CdRutaReportes.FieldByName('Valor1').asString = 'reportes\UTIDEL\') and (Nreporte='Recibo.fr3') and ((Modo='DEDUCCION') or (Modo='PERCEPCION')) or (Nreporte='ReciboAsimilado.fr3') and ((Modo='DEDUCCION') or (Modo='PERCEPCION'))then
          begin
            case StrIndex(Codigo, ['1', '2', '5', '25', '32', '41', '52', '59']) of
              0:
                 begin
                   if (ClientModule1.CdRutaReportes.FieldByName('Valor1').asString <> 'reportes\UTIDEL\') and (Nreporte='ReciboAsimilado.fr3') then
                     Titulo2 :=  Parte(i, cdDetalleLoad.FieldByName('Titulo').AsString)
                   else
                     Titulo2 := 'SUELDO BASE';
                 end;
              1: begin
                   //guardamos posicion actual para recorrer nuevamente los registros en donde se quedó
                   posicionActual := i;
                   for j := 0 to NumRec - 1 do
                   begin
                     Modo := Parte(j, cdDetalleLoad.FieldByName('Modo').AsString);
                     Codigo := Parte(j, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
                     Titulo := ( Parte(j, cdDetalleLoad.FieldByName('Titulo').AsString));
                     Nombre := Parte(j, cdDetalleLoad.FieldByName('Descripcion').AsString);
                     Grupo := Parte(j, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
                     Cargo := Parte(j, cdDetalleLoad.FieldByName('Cargo').AsString);
                     Imprime := Parte(j, cdDetalleLoad.FieldByName('Imprime').AsString);
                     Valor := Parte(j, cdDetalleLoad.FieldByName('Valor').AsString);
                     //Titulo2:=Titulo;

                     if (Codigo='HDOBLES') or (Codigo='HTRIPLES') OR (Codigo='4')  then
                     begin
                       contarHorasExtras := ContarHorasExtras + strToFloat(Valor);
                     end;
                   end;
                   Modo := Parte(i, cdDetalleLoad.FieldByName('Modo').AsString);
                   Codigo := Parte(i, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
                   Titulo := Parte(i, cdDetalleLoad.FieldByName('Titulo').AsString);
                   Nombre := Parte(i, cdDetalleLoad.FieldByName('Descripcion').AsString);
                   Grupo := Parte(i, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
                   Cargo := Parte(i, cdDetalleLoad.FieldByName('Cargo').AsString);
                   Imprime := Parte(i, cdDetalleLoad.FieldByName('Imprime').AsString);
                   Valor := Parte(i, cdDetalleLoad.FieldByName('Valor').AsString);

                   if ContarHorasExtras > 0 then
                     Titulo2 := 'HORAS EXTRA (' + FloatToStr(ContarHorasExtras) + ' hrs)'
                   else
                     Titulo2 := 'HORAS EXTRA';
                 end;
              2: Titulo2:='INDEMNIZACION';
              3: Titulo2:='PRESTAMO PERSONAL';
              4: Titulo2:='SUBSIDIO AL EMPLEO';
              5: Titulo2:='IMPUESTO SOBRE LA RENTA';
              6: Titulo2:='CUOTA SEGURO SOCIAL';
              7: Titulo2:='CREDITO INFONAVIT';
            end;
          end
          else
          if ((Modo='DEDUCCION') or (Modo='PERCEPCION')) then
          begin
            if (Codigo = '2') or (Codigo = '4.1')  then
                begin
                   //guardamos posicion actual para recorrer nuevamente los registros en donde se quedó
                   posicionActual := i;
                   for j := 0 to NumRec - 1 do
                   begin
                     Modo := Parte(j, cdDetalleLoad.FieldByName('Modo').AsString);
                     Codigo := Parte(j, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
                     Titulo := (Parte(j, cdDetalleLoad.FieldByName('Titulo').AsString));
                     Nombre := Parte(j, cdDetalleLoad.FieldByName('Descripcion').AsString);
                     Grupo := Parte(j, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
                     Cargo := Parte(j, cdDetalleLoad.FieldByName('Cargo').AsString);
                     Imprime := Parte(j, cdDetalleLoad.FieldByName('Imprime').AsString);
                     Valor := Parte(j, cdDetalleLoad.FieldByName('Valor').AsString);
                     //Titulo2:=Titulo;

                     if (Codigo='HDOBLES') or (Codigo='HTRIPLES') or (Codigo='4') then
                     begin
                       contarHorasExtras := ContarHorasExtras + StrToFloat(Valor);
                     end;
                   end;
                   Modo := Parte(i, cdDetalleLoad.FieldByName('Modo').AsString);
                   Codigo := Parte(i, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
                   Titulo := Parte(i, cdDetalleLoad.FieldByName('Titulo').AsString);
                   Nombre := Parte(i, cdDetalleLoad.FieldByName('Descripcion').AsString);
                   Grupo := Parte(i, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
                   Cargo := Parte(i, cdDetalleLoad.FieldByName('Cargo').AsString);
                   Imprime := Parte(i, cdDetalleLoad.FieldByName('Imprime').AsString);
                   Valor := Parte(i, cdDetalleLoad.FieldByName('Valor').AsString);

                   Titulo := 'HORAS EXTRAS (' + FloatToStr(contarHorasExtras) + ' hrs)';
                end;

          end;


          if CompareText(Modo, 'EMPLEADO') = 0 then
            cdGenerales.FieldByName(Codigo).AsString := Valor;

          if ((ClientModule1.CdRutaReportes.FieldByName('Valor1').asString = 'reportes\UTIDEL\') and (Nreporte = 'Recibo.fr3') and (Codigo = '9')) or ((Nreporte = 'ReciboAsimilado.fr3') and (Codigo = '9')) then
          begin
            for j := 0 to NumRec - 1 do
            begin
              Modo := Parte(j, cdDetalleLoad.FieldByName('Modo').AsString);
              Codigo := Parte(j, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
              Titulo := Parte(j, cdDetalleLoad.FieldByName('Titulo').AsString);
              Nombre := Parte(j, cdDetalleLoad.FieldByName('Descripcion').AsString);
              Grupo := Parte(j, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
              Cargo := Parte(j, cdDetalleLoad.FieldByName('Cargo').AsString);
              Imprime := Parte(j, cdDetalleLoad.FieldByName('Imprime').AsString);
              Valor := Parte(j, cdDetalleLoad.FieldByName('Valor').AsString);
              //Titulo2:=Titulo;

              if (Codigo='DomingosExtra')  then
              begin
                Valor := Parte(i, cdDetalleLoad.FieldByName('Valor').AsString);
                valor := VarToStr(strtoFloat(Parte(i, cdDetalleLoad.FieldByName('Valor').AsString))/SalarioActual);
                Titulo2 :=  'DOMINGOS LABORADOS (' + Valor + ')';
                //Titulo :=  'DOMINGOS LABORADOS (' + Valor + ')';
                //j := NumRec - 1;
              end;
            end;

            Modo := Parte(i, cdDetalleLoad.FieldByName('Modo').AsString);
            Codigo := Parte(i, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
            Titulo := Parte(i, cdDetalleLoad.FieldByName('Titulo').AsString);
            Nombre := Parte(i, cdDetalleLoad.FieldByName('Descripcion').AsString);
            Grupo := Parte(i, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
            Cargo := Parte(i, cdDetalleLoad.FieldByName('Cargo').AsString);
            Imprime := Parte(i, cdDetalleLoad.FieldByName('Imprime').AsString);
            Valor := Parte(i, cdDetalleLoad.FieldByName('Valor').AsString);

          End
          else
          if (Codigo = '9') then
          begin
            for j := 0 to NumRec - 1 do
            begin
              Modo := Parte(j, cdDetalleLoad.FieldByName('Modo').AsString);
              Codigo := Parte(j, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
              Titulo := Parte(j, cdDetalleLoad.FieldByName('Titulo').AsString);
              Nombre := Parte(j, cdDetalleLoad.FieldByName('Descripcion').AsString);
              Grupo := Parte(j, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
              Cargo := Parte(j, cdDetalleLoad.FieldByName('Cargo').AsString);
              Imprime := Parte(j, cdDetalleLoad.FieldByName('Imprime').AsString);
              Valor := Parte(j, cdDetalleLoad.FieldByName('Valor').AsString);
              //Titulo2:=Titulo;

              if (Codigo='DomingosExtra')  then
              begin
                Valor := Parte(i, cdDetalleLoad.FieldByName('Valor').AsString);
                valor := VarToStr(strtoFloat(Parte(i, cdDetalleLoad.FieldByName('Valor').AsString))/SalarioActual);
                SalarioActual :=  strtoFloat(Valor);  //en si obtendrá el número de domingos trabajados
              end;
            end;

            Modo := Parte(i, cdDetalleLoad.FieldByName('Modo').AsString);
            Codigo := Parte(i, cdDetalleLoad.FieldByName('CodigoConcepto').AsString);
            Titulo := Parte(i, cdDetalleLoad.FieldByName('Titulo').AsString);
            Nombre := Parte(i, cdDetalleLoad.FieldByName('Descripcion').AsString);
            Grupo := Parte(i, cdDetalleLoad.FieldByName('IdGrupoConcepto').AsString);
            Cargo := Parte(i, cdDetalleLoad.FieldByName('Cargo').AsString);
            Imprime := Parte(i, cdDetalleLoad.FieldByName('Imprime').AsString);
            Valor := Parte(i, cdDetalleLoad.FieldByName('Valor').AsString);
            Titulo := 'DOMINGOS LABORADOS (' + floattostr(Trunc(SalarioActual)) + ')';
          End;

          if (CompareText(NReporte, 'FiniquitoABordo.fr3') = 0) and (StrToFloat(Valor) < 0) and (Modo = 'DEDUCCION') then
          begin
            Modo := 'PERCEPCION';
            Valor := FloatToStr(StrToFloat(Valor)*-1);
          end;

{          //por cuestiones del destino en mi pc el cdconcepto aparece como inactivo, es por eso q se abre aqui
          if (Not cdConcepto.Active) or ((cdConcepto.Active) and (cdConcepto.FieldByName('IdTipoNomina').AsInteger <> cdNomina.FieldByName('IdTipoNomina').AsInteger))  then
          begin
            CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdNomina.FieldByName('IdTipoNomina').AsInteger]);
            if cdConcepto.Active then
              cdConcepto.Refresh
            else
              cdConcepto.Open;
          end;}

          (*if cdConcepto.State = dsInactive then
          begin
            CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdNomina.FieldByName('IdTipoNomina').AsInteger]);
            cdConcepto.Open;
          end;
          *)
          //if (CompareText(Modo, 'PERCEPCION') = 0) and ((Imprime = 'Si') or ((Imprime = 'Da') and (StrToFloat(Valor) <> 0))) then
          if (CompareText(Copy(Modo, 1, 3), 'PER') = 0) and (cdConcepto.Locate('CodigoConcepto', Codigo, []) and ((cdConcepto.FieldByName('Imprime').AsString = 'Si') or ((cdConcepto.FieldByName('Imprime').AsString = 'No') and (cdConcepto.FieldByName('Modo').AsString = 'PERCEPCION')) or ((Copy(cdConcepto.FieldByName('Imprime').AsString, 1, 2) = 'Da') and (StrToFloat(Valor) <> 0)))) then
          begin
            Orden := '';
            cdConcepto.Locate('codigoconcepto',Codigo,[]);
            Orden := cdConcepto.FieldByName('orden').AsString;
            Orden := RellenaOrden(Orden);
            memPercepciones.Append;
            memPercepciones.FieldByName('IdPersonal').AsInteger := cdDetalleLoad.FieldByName('IdPersonal').AsInteger;
            memPercepciones.FieldByName('CodigoConcepto').AsString := Codigo;
            if CompareText(Modo, 'PERCEPCION') = 0 then
              memPercepciones.FieldByName('Titulo').AsString := (Titulo) + TituloHeredar
            else
              memPercepciones.FieldByName('Titulo').AsString := '(*) ' + Titulo + TituloHeredar;
            memPercepciones.FieldByName('Nombre').AsString := Nombre;
            memPercepciones.FieldByName('Imprime').AsString := Imprime;
            memPercepciones.FieldByName('Importe').AsString := Valor;
            memPercepciones.FieldByName('Orden').AsString := Orden;
            memPercepciones.FieldByName('Modo').AsString := Modo;
            memPercepciones.Post;

            {$REGION 'Recibo'}
            if (Nreporte='Recibo.fr3') or (Nreporte='ReciboAsimilado.fr3')then
            begin
              memPercepciones2.Append;
              memPercepciones2.FieldByName('IdPersonal').AsInteger := cdDetalleLoad.FieldByName('IdPersonal').AsInteger;
              memPercepciones2.FieldByName('CodigoConcepto').AsString := Codigo;

              if CompareText(Modo, 'PERCEPCION') = 0 then
                memPercepciones2.FieldByName('Titulo').AsString := Titulo2 + TituloHeredar
              else
                memPercepciones2.FieldByName('Titulo').AsString := '(*) ' + Titulo2 + TituloHeredar;

              //*Porcentaje gravable y excento*/

              if cdGravados.Locate('CodigoConcepto;IdPersonal', VarArrayOf([Codigo,cdDetalleLoad.FieldByName('IdPersonal').AsInteger]),[]) then
                MemPercepciones2.FieldByName('Gravado').AsString := cdGravados.FieldByName('ImporteGravado').asString
              else
                MemPercepciones2.FieldByName('Gravado').AsFloat := 0;

              try
                if (StrToFloatDef(Valor,0) - StrToFloat(cdGravados.FieldByName('ImporteGravado').AsString)) >= 0 then
                  MemPercepciones2.FieldByName('Excento').AsFloat := (StrToFloatDef(Valor,0) - StrToFloat(cdGravados.FieldByName('ImporteGravado').AsString));
              Except
                 MemPercepciones2.FieldByName('Excento').AsFloat := 0
              end;

              MemPercepciones2.FieldByName('Descripcion1').asString := Descripcion1;
              memPercepciones2.FieldByName('Nombre').AsString := Nombre;
              memPercepciones2.FieldByName('Imprime').AsString := Imprime;
              memPercepciones2.FieldByName('Importe').AsString := Valor;
              memPercepciones2.FieldByName('Orden').AsString := Orden;
              memPercepciones2.FieldByName('Modo').AsString := Modo;
              memPercepciones2.Post;
              Titulo2:='';
            end;
            {$ENDREGION}

            if CompareText(Modo, 'PERCEPCION') = 0 then
            begin
              // Verificar si ya existe el registro para departamento para este rubro
              Try
                memDeptoPercepciones.Filtered := False;
                memDeptoPercepciones.Filter := 'idagrupador = ' + QuotedStr(cdDetalleLoad.FieldByName('Agrupador').AsString) (*+ ' and IdOrganizacion = ' + cdDetalleSave.FieldByName('IdOrganizacion').AsString*) + ' and CodigoConcepto = ' + QuotedStr(Codigo);
                memDeptoPercepciones.Filtered := True;

                if memDeptoPercepciones.RecordCount = 0 then
                begin
                  Orden := '';
                  cdConcepto.Locate('codigoconcepto',Codigo,[]);
                  Orden := cdConcepto.FieldByName('orden').AsString;
                  Orden := RellenaOrden(Orden);
                  memDeptoPercepciones.Append;
                  memDeptoPercepciones.FieldByName('idAgrupador').AsString := cdDetalleLoad.FieldByName('Agrupador').AsString;
                  memDeptoPercepciones.FieldByName('IdOrganizacion').AsInteger := cdDetalleLoad.FieldByName('IdOrganizacion').AsInteger;
                  memDeptoPercepciones.FieldByName('CodigoConcepto').AsString := Codigo;
                  memDeptoPercepciones.FieldByName('Titulo').AsString := Titulo;
                  memDeptoPercepciones.FieldByName('Nombre').AsString := Nombre;
                  memDeptoPercepciones.FieldByName('Orden').AsString := Orden;
                  memDeptoPercepciones.FieldByName('Modo').AsString := Modo;
                end
                else
                  memDeptoPercepciones.Edit;

                memDeptoPercepciones.FieldByName('Importe').AsFloat := memDeptoPercepciones.FieldByName('Importe').AsFloat + StrToFloat(Valor);
                memDeptoPercepciones.Post;

                {$REGION 'Recibo'}
                memDeptoPercepciones2.Filtered := False;
                memDeptoPercepciones2.Filter := 'idagrupador = ' + cdDetalleLoad.FieldByName('idDepartamento').AsString (*+ ' and IdOrganizacion = ' + cdDetalleSave.FieldByName('IdOrganizacion').AsString*) + ' and CodigoConcepto = ' + QuotedStr(Codigo);
                memDeptoPercepciones2.Filtered := True;

                if memDeptoPercepciones2.RecordCount = 0 then
                begin
                  Orden := '';
                  cdConcepto.Locate('codigoconcepto',Codigo,[]);
                  Orden := cdConcepto.FieldByName('orden').AsString;
                  Orden := RellenaOrden(Orden);
                  memDeptoPercepciones2.Append;
                  memDeptoPercepciones2.FieldByName('idAgrupador').AsString := cdDetalleLoad.FieldByName('Agrupador').AsString;
                  memDeptoPercepciones2.FieldByName('IdOrganizacion').AsInteger := cdDetalleLoad.FieldByName('IdOrganizacion').AsInteger;
                  memDeptoPercepciones2.FieldByName('CodigoConcepto').AsString := Codigo;
                  memDeptoPercepciones2.FieldByName('Titulo').AsString := Titulo;
                  memDeptoPercepciones2.FieldByName('Nombre').AsString := Nombre;
                  memDeptoPercepciones2.FieldByName('Orden').AsString := Orden;
                  memDeptoPercepciones2.FieldByName('Modo').AsString := Modo;
                end
                else
                  memDeptoPercepciones2.Edit;

                memDeptoPercepciones2.FieldByName('Importe').AsFloat := memDeptoPercepciones2.FieldByName('Importe').AsFloat + StrToFloat(Valor);
                memDeptoPercepciones2.Post;
                {$ENDREGION}
              Finally
                memDeptoPercepciones.Filtered := False;
                memDeptoPercepciones2.Filtered := False;
              end;
            end;
          end;

          // aqui se  ordena
          memDeptoPercepciones.IndexFieldNames := 'Orden';
          memDeptoPercepciones2.IndexFieldNames := 'Orden';

          if (CompareText(Copy(Modo, 1, 3), 'DED') = 0) and (cdConcepto.Locate('CodigoConcepto', Codigo, []) and ((cdConcepto.FieldByName('Imprime').AsString = 'Si') or ((cdConcepto.FieldByName('Imprime').AsString = 'No') and (cdConcepto.FieldByName('Modo').AsString = 'DEDUCCION')) or ((cOPY(cdConcepto.FieldByName('Imprime').AsString,1,2) = 'Da') and (StrToFloat(Valor) <> 0)))) then
          begin
            Orden := '';
            cdConcepto.Locate('codigoconcepto',Codigo,[]);
            Orden := cdConcepto.FieldByName('orden').AsString;
            Orden := RellenaOrden(Orden);
            memDeducciones.Append;
            memDeducciones.FieldByName('IdPersonal').AsInteger := cdDetalleLoad.FieldByName('IdPersonal').AsInteger;
            memDeducciones.FieldByName('CodigoConcepto').AsString := Codigo;
            if CompareText(Modo, 'DEDUCCION') = 0 then
              memDeducciones.FieldByName('Titulo').AsString := Titulo + TituloHeredar
            else
              memDeducciones.FieldByName('Titulo').AsString := '(*) ' + Titulo + TituloHeredar;
            memDeducciones.FieldByName('Nombre').AsString := Nombre;
            memDeducciones.FieldByName('Importe').AsString := Valor;
            memDeducciones.FieldByName('Orden').AsString := Orden;
            memDeducciones.FieldByName('Modo').AsString := Modo;
            memDeducciones.Post;

            {$REGION 'Recibo'}
            if ((Nreporte='Recibo.fr3') and (CompareText(Copy(Modo,1,3), 'DED') = 0)) or (((Nreporte='ReciboAsimilado.fr3') and (CompareText(Copy(Modo,1,3), 'DED') = 0))) then
            begin
              memDeducciones2.Append;
              memDeducciones2.FieldByName('IdPersonal').AsInteger := cdDetalleLoad.FieldByName('IdPersonal').AsInteger;
              memDeducciones2.FieldByName('CodigoConcepto').AsString := Codigo;
              memDeducciones2.FieldByName('Titulo').AsString := Titulo2;
              memDeducciones2.FieldByName('Nombre').AsString := Nombre;
              memDeducciones2.FieldByName('Importe').AsString := Valor;
              memDeducciones2.FieldByName('Orden').AsString := Orden;
              memDeducciones2.FieldByName('Modo').AsString := Modo;
              memDeducciones2.Post;
              Titulo2:='';
            end;
            {$ENDREGION}

            // Verificar si ya existe el registro para departamento para este rubro
            Try
              memDeptoDeducciones.Filtered := False;
              memDeptoDeducciones.Filter := 'idagrupador = ' + QuotedStr(cdDetalleLoad.FieldByName('Agrupador').AsString) (*+ ' and IdOrganizacion = ' + cdDetalleSave.FieldByName('IdOrganizacion').AsString *) + ' and CodigoConcepto = ' + QuotedStr(Codigo);
              memDeptoDeducciones.Filtered := True;

              if memDeptoDeducciones.RecordCount = 0 then
              begin
                Orden := '';
                cdConcepto.Locate('codigoconcepto',Codigo,[]);
                Orden := cdConcepto.FieldByName('orden').AsString;
                Orden := RellenaOrden(Orden);
                memDeptoDeducciones.Append;
                (*memDeptoDeducciones.FieldByName('idAgrupador').AsString := cdDetalleLoad.FieldByName('TituloCorte').AsInteger;*)
                memDeptoDeducciones.FieldByName('idAgrupador').AsString := cdDetalleLoad.FieldByName('Agrupador').AsString;
                memDeptoDeducciones.FieldByName('IdOrganizacion').AsInteger := cdDetalleLoad.FieldByName('IdOrganizacion').AsInteger;
                memDeptoDeducciones.FieldByName('CodigoConcepto').AsString := Codigo;
                memDeptoDeducciones.FieldByName('Titulo').AsString := Titulo;
                memDeptoDeducciones.FieldByName('Nombre').AsString := Nombre;
                memDeptoDeducciones.FieldByName('Orden').AsString := Orden;
                memdeptoDeducciones.FieldByName('Modo').AsString := Modo;
              end
              else
                memDeptoDeducciones.Edit;

              memDeptoDeducciones.FieldByName('Importe').AsFloat := memDeptoDeducciones.FieldByName('Importe').AsFloat + StrToFloat(Valor);
              memDeptoDeducciones.Post;

              {$REGION 'Recibo'}
              memDeptoDeducciones2.Filtered := False;
              memDeptoDeducciones2.Filter := 'idagrupador = ' + cdDetalleLoad.FieldByName('idDepartamento').AsString (*+ ' and IdOrganizacion = ' + cdDetalleSave.FieldByName('IdOrganizacion').AsString *) + ' and CodigoConcepto = ' + QuotedStr(Codigo);
              memDeptoDeducciones2.Filtered := True;

              if memDeptoDeducciones2.RecordCount = 0 then
              begin
                Orden := '';
                cdConcepto.Locate('codigoconcepto',Codigo,[]);
                Orden := cdConcepto.FieldByName('orden').AsString;
                Orden := RellenaOrden(Orden);
                memDeptoDeducciones2.Append;
                memDeptoDeducciones2.FieldByName('idAgrupador').AsString := cdDetalleLoad.FieldByName('Agrupador').AsString;
                memDeptoDeducciones2.FieldByName('IdOrganizacion').AsInteger := cdDetalleLoad.FieldByName('IdOrganizacion').AsInteger;
                memDeptoDeducciones2.FieldByName('CodigoConcepto').AsString := Codigo;
                memDeptoDeducciones2.FieldByName('Titulo').AsString := Titulo;
                memDeptoDeducciones2.FieldByName('Nombre').AsString := Nombre;
                memDeptoDeducciones2.FieldByName('Orden').AsString := Orden;
                memdeptoDeducciones2.FieldByName('Modo').AsString := Modo;
              end
              else
                memDeptoDeducciones2.Edit;

              memDeptoDeducciones2.FieldByName('Importe').AsFloat := memDeptoDeducciones2.FieldByName('Importe').AsFloat + StrToFloat(Valor);
              memDeptoDeducciones2.Post;
              {$ENDREGION}
            Finally
              memDeptoDeducciones.Filtered := False;
              memDeptoDeducciones2.Filtered := False;
            end;
          end;
          //aqui se ordena
          memDeptoDeducciones.IndexFieldNames := 'Orden';
          memDeptoDeducciones2.IndexFieldNames := 'Orden';

          // Gardar los datos de las obligaciones
          if CompareText(Modo, 'OBLIGACION') = 0 then
          begin
            // Verificar si ya existe el registro para departamento para este rubro
            Try
              memObligacion.Filtered := False;
              memObligacion.Filter := 'IdAgrupador = ' + QuotedStr(cdDetalleLoad.FieldByName('Agrupador').AsString) (* + ' and IdOrganizacion = ' + cdDetalleSave.FieldByName('IdOrganizacion').AsString*) +' and CodigoConcepto = ' + QuotedStr(Codigo);
              memObligacion.Filtered := True;

              if memObligacion.RecordCount = 0 then
              begin
                memObligacion.Append;
                memObligacion.FieldByName('IdAgrupador').AsString := cdDetalleLoad.FieldByName('Agrupador').asString;
                memObligacion.FieldByName('IdOrganizacion').AsInteger := cdDetalleLoad.FieldByName('IdOrganizacion').AsInteger;
                memObligacion.FieldByName('CodigoConcepto').AsString := Codigo;
                memObligacion.FieldByName('Nombre').AsString := Nombre;
              end
              else
                memObligacion.Edit;

              memObligacion.FieldByName('Importe').AsFloat := memObligacion.FieldByName('Importe').AsFloat + StrToFloat(Valor);
              memObligacion.Post;
            Finally
              memObligacion.Filtered := False;
            end;
          end;

          // Verificar si es un rubro de IMSS
          if (CompareText(Modo, 'IMSS') = 0) and (Grupo <> '-1') then
          begin
            Try
              memRubrosIMSS.Filtered := False;
              memRubrosIMSS.Filter := 'IdAgrupador = ' + QuotedStr(cdDetalleLoad.FieldByName('Agrupador').AsString) (*+ ' and IdOrganizacion = ' + cdDetalleSave.FieldByName('IdOrganizacion').AsString *)+ ' and IdGrupoConcepto = ' + Grupo;
              memRubrosIMSS.Filtered := True;

              if memRubrosIMSS.RecordCount = 0 then
              begin
                memRubrosIMSS.Append;
                memRubrosIMSS.FieldByName('IdAgrupador').AsString := cdDetalleLoad.FieldByName('Agrupador').AsString;
                memRubrosIMSS.FieldByName('IdOrganizacion').AsInteger := cdDetalleLoad.FieldByName('IdOrganizacion').AsInteger;
                memRubrosIMSS.FieldByName('IdGrupoConcepto').AsString := Grupo;

                // Localizar el registro de grupo
                if cdGruposConcepto.Locate('IdGrupoConcepto', Grupo, []) then
                  memRubrosIMSS.FieldByName('Nombre').AsString := cdGruposConcepto.FieldByName('Nombre').AsString
                else
                  memRubrosIMSS.FieldByName('Nombre').AsString := '*** ERROR DE ACCESO A DATOS';
              end
              else
                memRubrosIMSS.Edit;

              if memRubrosIMSS.State in [dsEdit, dsInsert] then
              begin
                if CompareText(Cargo, 'PATRONAL') = 0 then
                  memRubrosIMSS.FieldByName('Patronal').AsFloat := memRubrosIMSS.FieldByName('Patronal').AsFloat + StrToFloat(Valor)
                else
                  memRubrosIMSS.FieldByName('Obrero').AsFloat := memRubrosIMSS.FieldByName('Obrero').AsFloat + StrToFloat(Valor);
                memRubrosIMSS.Post;
              end;
            Finally
              memRubrosIMSS.Filtered := False;
            end;
          end;
        end;

        Try
          ProcederScroll := False;
          Marca := cdPersonalDetalleNomina.Bookmark;

          if cdPersonalDetalleNomina.Locate('IdPersonal', cdGenerales.FieldByName('IdPersonal').AsInteger, []) then
          begin
            cdGenerales.FieldByName('TituloOrganizacion').AsString := cdPersonalDetalleNomina.FieldByName('TituloOrganizacion').AsString;
            cdGenerales.FieldByName('DomicilioFiscalOrg').AsString := cdPersonalDetalleNomina.FieldByName('DomicilioFiscalOrg').AsString;
            cdGenerales.FieldByName('DomicilioOrg').AsString := cdPersonalDetalleNomina.FieldByName('DomicilioOrg').AsString;
            cdGenerales.FieldByName('rfcOrganizacion').AsString := cdPersonalDetalleNomina.FieldByName('rfcOrganizacion').AsString;
          end;
        Finally
          cdPersonalDetalleNomina.GotoBookmark(Marca);
          ProcederScroll := True;
        end;

        cdGenerales.FieldByName('DiasLoQueSea').AsFloat := DiasLoQueSea;

        cdGenerales.Post;
        cdDetalleLoad.Next;
      end;
      {MemGenDeducciones.Close;
      MemGenPercepciones.Close;
      MemGenDeducciones.ProviderName := '';
      MemGenPercepciones.ProviderName := '';
      EliminarConjunto(MemGenPercepciones);
      EliminarConjunto(MemGenDeducciones);}

      if Integer(cbbDeptos.Properties.Items.Objects[cbbDeptos.ItemIndex]) >= -1  then  //*****revi
        sentencia := 'SELECT'
      else
        sentencia := 'CATALOGO';


      // Llenar el general de percepciones
      if MemGenPercepciones.ProviderName <> '' then
      begin
        if MemGenPercepciones.Active then
          MemGenPercepciones.Close;

        EliminarConjunto(MemGenPercepciones);
        MemGenPercepciones.ProviderName := '';
      end;

      If Not CrearConjunto(MemGenPercepciones, 'nom_nomina_acumulados', sentencia) then
        raise InteligentException.CreateByCode(5, ['Acumulados de Nómina']);

      if Not CargarDatosFiltrados(MemGenPercepciones, 'IdNomina,IdDepartamento,IdPersonal,Referencia', [cdNomina.FieldByName('IdNomina').AsInteger, Integer(cbbDeptos.Properties.Items.Objects[cbbDeptos.ItemIndex]), pCual, ReferenciaPago]) then
        raise InteligentException.CreateByCode(6, ['Acumulados de Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'Id.Nomina']);

      if MemGenPercepciones.Active then
        MemGenPercepciones.Refresh
      else
        MemGenPercepciones.Open;

      if MemGenDeducciones.ProviderName = '' then
      begin
          If Not CrearConjunto(MemGenDeducciones, 'nom_nomina_acumulados', sentencia) then
            raise InteligentException.CreateByCode(5, ['Acumulados de Nómina']);
      end;

      if Not CargarDatosFiltrados(MemGenDeducciones, 'IdNomina,IdDepartamento,Corte,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, Integer(cbbDeptos.Properties.Items.Objects[cbbDeptos.ItemIndex]), 'Si', pCual]) then
        raise InteligentException.CreateByCode(6, ['Detalle de acumulados de Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'Id.Nomina']);

      if MemGenDeducciones.Active then
        MemGenDeducciones.Refresh
      else
        MemGenDeducciones.Open;

      //llenar el general de rubros
      memGenRubroImss.EmptyDataSet;
      memRubrosIMSS.First;
      while not memRubrosIMSS.eof do
      begin
        memGenRubroImss.Filtered := False;
        memGenRubroImss.Filter := 'Nombre = ' + QuotedStr( memRubrosIMSS.FieldByName('Nombre').AsString) ;
        memGenRubroImss.Filtered := True;
        if memGenRubroImss.RecordCount = 0 then
        begin
          memGenRubroImss.Append;
          memGenRubroImss.FieldByName('IdOrganizacion').AsInteger := memRubrosIMSS.FieldByName('IdOrganizacion').AsInteger;
          memGenRubroImss.FieldByName('Nombre').AsString := memRubrosIMSS.FieldByName('Nombre').AsString;
        end
        else
          memGenRubroImss.Edit;
        memGenRubroImss.FieldByName('patronal').AsFloat := memGenRubroImss.FieldByName('patronal').AsFloat + memRubrosIMSS.FieldByName('patronal').AsFloat;
        memGenRubroImss.FieldByName('obrero').AsFloat := memGenRubroImss.FieldByName('obrero').AsFloat + memRubrosIMSS.FieldByName('obrero').AsFloat;
        memGenRubroImss.Post;
        memGenRubroImss.Filtered := False;
        memRubrosIMSS.Next;
      end;


      //llenar el general de obligaciones
      memGenObligacion.EmptyDataSet;
      memObligacion.First;
      while not memObligacion.eof do
      begin
        memGenObligacion.Filtered := False;
        memGenObligacion.Filter := 'codigoconcepto = ' + memObligacion.FieldByName('codigoconcepto').AsString ;
        memGenObligacion.Filtered := True;
        if memGenObligacion.RecordCount = 0 then
        begin
          memGenObligacion.Append;
          memGenObligacion.FieldByName('IdOrganizacion').AsInteger := memObligacion.FieldByName('IdOrganizacion').AsInteger;
          memGenObligacion.FieldByName('Nombre').AsString := memObligacion.FieldByName('Nombre').AsString;
          memGenObligacion.FieldByName('codigoconcepto').AsString := memObligacion.FieldByName('codigoconcepto').AsString;

        end
        else
          memGenObligacion.Edit;
        memGenObligacion.FieldByName('importe').AsFloat := memGenObligacion.FieldByName('importe').AsFloat + memObligacion.FieldByName('importe').AsFloat;
        memGenObligacion.Post;
        memGenObligacion.Filtered := False;
        memObligacion.Next;
      end;
      memGenRubroImss.IndexFieldNames := 'Nombre';
      memRubrosIMSS.IndexFieldNames := 'Nombre';
      memGenObligacion.IndexFieldNames := 'codigoconcepto';
      memObligacion.IndexFieldNames := 'codigoconcepto';
      memPercepciones.IndexFieldNames:='Orden';
      memDeducciones.IndexFieldNames:='Orden';
      memPercepciones2.IndexFieldNames:='Orden';
      memDeducciones2.IndexFieldNames:='Orden';
      cdConcepto.Close;

      FDSGenerales.DataSet := cdGenerales;


      // Generar el reporte de nómina
      if ((PreviewNomina.Parent = TabPresentacion) and (Nreporte = 'Recibo.fr3')) or ((PreviewNomina.Parent = TabPresentacion) and (Nreporte = 'ReciboAsimilado.fr3') )  then
      begin
        TabPresentacion.PageControl := PageControl1;
        TabPresentacion.PageIndex := 2;
        PageControl1.ActivePage := TabPresentacion;
      end
      else if (Nreporte = 'Recibo.fr3') or (Nreporte = 'ReciboAsimilado.fr3') then
      begin
        TabRecibos.PageControl := PageControl1;
        if TabPresentacion.PageControl = PageControl1 then
          TabRecibos.PageIndex := 3
        else
          TabRecibos.PageIndex := 2;
        PageControl1.ActivePage := TabRecibos;
      end;

      ClientModule1.ImprimeReporte(Nreporte, Reporte,nil);
    Finally
      Screen.Cursor := Cursor;

      if cdCorteNivel1.ProviderName <> '' then
        cdCorteNivel1.Close;

      if cdCorteNivel2.ProviderName <> '' then
        cdCorteNivel2.Close;

      if cdObligacionGeneral.ProviderName <> '' then
        cdObligacionGeneral.Close;

      if cdIMSSGeneral.ProviderName <> '' then
        cdIMSSGeneral.Close;

      memPercepciones.Filtered := False;
      memDeducciones.Filtered := False;

      memPercepciones2.Filtered := False;
      memDeducciones2.Filtered := False;

      memDeptoPercepciones.Filtered := False;
      memDeptoDeducciones.Filtered := False;
      memDeptoPercepciones2.Filtered := False;
      memDeptoDeducciones2.Filtered := False;
      memObligacion.Filtered := False;
      memRubrosIMSS.Filtered := False;

      // cdGenerales.Free;
    End;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e: Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.GridPersonalCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  //if ACol in [6, 7, 8] then
    //Btn_Modificar_Calculo.Click
  //else
    //Btn_Personal_Ficha.Click;
    Btn_Modificar_CalculoClick(nil);
end;

procedure TFrmCatalogoNominas.GridPersonalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  i: Integer;
  TotalImporteSel: Extended;
  TotalImportePer: Extended;
  TotalImporteDed: Extended;
begin
  i := 0;
  TotalImporteSel := 0;
  if Key = 116 then
  begin
    if Assigned(cdPersonalIncluido) and (cdPersonalIncluido.ProviderName <> '') and (cdPersonalIncluido.Active) then
      cdPersonalIncluido.Close;

    YaLeidoPersonalIncluido := False;
    TabPersonal.OnShow(Sender);
  end;

  if Key = VK_F1 then
  begin
    for i := 0 to GridPersonal.RowCount - 1 do
        if GridPersonal.Row[i].Selected then
        begin
          totalImporteSel := TotalImporteSel + StrToFloat(GridPersonal.Cell[8, i].AsString);
          TotalImportePer := TotalImportePer + StrToFloat(GridPersonal.Cell[6, i].AsString);
          TotalImporteDed := totalImporteDed + StrToFloat(GridPersonal.Cell[7, i].AsString);
        end;

    cxLblSuma.Caption := varToStr(TotalImporteSel);
    cxLblPer.Caption := VarToStr(TotalImportePer);
    cxLblDed.Caption := varToStr(TotalImporteDed);

    AdvSpopupAyuda.PopupAt((gridPersonal.Left+StrToInt(VarToStr(Trunc(gridPersonal.Width/2)))), (GridPersonal.Top + StrToInt(VarToStr(Trunc(gridPersonal.Height/2)))));
  end;
end;

procedure TFrmCatalogoNominas.habilitarFechas;
begin
  //Habilita las fechas dependiendo el tipo de Nomina que sea, si es Quincenal, entonces no mostrar las fechas
  //si es a bordo, mostrarlas
  if cdNomina.Active then
  begin
    if cdNomina.State = dsInsert then
    begin
      Try
        ConEfecto := False;
        cdNomina.FieldByName('Dias').AsInteger := cdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
      Finally
        ConEfecto := True;
      End;
      //if cdTipoNomina.FieldByName('Ajustar').AsString = 'Si' then
    end;

    if (cdTipoNomina.Active) and (cdTipoNomina.RecordCount > 0) then
    begin
      cdTipoNomina.Locate('IdTipoNomina', cbbTipoNomina.EditValue, []);
      pnl_Periodo.Visible  := cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0;
      {RESTAURAR} Edt_FechaNomina.Enabled        := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
      {RESTAURAR} Edt_FechaTerminoNomina.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
      Edt_Dias.Enabled     := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
      Edt_Domingos.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
      Edt_Festivos.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;

      if cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0 then
        Edt_FechaTerminoNomina.Date := Edt_FechaNomina.Date + (cdTipoNomina.FieldByName('DiasTrabajados').AsInteger -1);
      if cdTipoNomina.FieldByName('IdTipoNomina_Liga').IsNull then
        CargarGuardias(cdTipoNomina.FieldByName('IdTipoNomina').AsInteger)
      else
        CargarGuardias(cdTipoNomina.FieldByName('IdTipoNomina_Liga').AsInteger);
    end;
  end;
end;

function TFrmCatalogoNominas.hayPersonalPagado : Boolean;
var
  nominaPersonal : TClientDataSet;
  hayPagados : Boolean;
begin
  //Devuelve True si existe personal pagado en la nomina o corte
  try
    try
      nominaPersonal := TClientDataSet.Create(Self);
      hayPagados := False;

      if Not CrearConjunto(nominaPersonal, 'nom_nominapersonal', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_nominapersonal']);

      Cortes.First;
      while Not Cortes.Eof do
      begin
        if Not CargarDatosFiltrados(nominaPersonal, 'IdNomina', [Cortes.FieldByName('IdNomina').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_nominapersonal']);

        if nominaPersonal.Active then
          nominaPersonal.Refresh
        else
          nominaPersonal.Open;

        if nominaPersonal.RecordCount > 0 then
        begin

          nominaPersonal.First;
          while Not nominaPersonal.Eof do
          begin
            if Not nominaPersonal.FieldByName('IdFormaPago').IsNull then
            begin
              hayPagados := True;
              Break;
            end;

            nominaPersonal.Next;
          end;
        end;

        Cortes.Next;
      end;

      Result := hayPagados;
    finally
      nominaPersonal.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtConfirmation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCatalogoNominas.Btn_EditClick(Sender: TObject);
begin
  // Permitir la edición del registro
  if cdNomina.Active then
  begin
    cdNomina.Edit;
    pnl_periodo.Enabled := cdNomina.State = dsEdit;
    Edt_Titulo.SetFocus;
    combosExtLookup(True);
  end;
end;

procedure TFrmCatalogoNominas.Btn_AbrirClick(Sender: TObject);
begin
  VerificaDataSet;

  // Llamar la ventana de Abrir...
  if Not Assigned(FrmAbrirNomina) then
    Application.CreateForm(TFrmAbrirNomina, FrmAbrirNomina);

  Try
    FrmAbrirNomina.dsNominaFuera.DataSet   :=   cdNomina;
    FrmAbrirNomina.dsGrafica.DataSet := CdDetalleGrafica;
    if FrmAbrirNomina.ShowModal = mrOk then
    begin
      if TInfoNomina(FrmAbrirNomina.tvNominas.Selected.Data).Estado = 'CERRADA' then
      begin
        botonesPorNomina(False);
      end
      else if TInfoNomina(FrmAbrirNomina.tvNominas.Selected.Data).Estado = 'ABIERTA' then
      begin
        botonesPorNomina(True);
      end;

      destruirObjetos;
    end;  //destruirObjetos;
  Finally
    FrmAbrirNomina.dsNominaFuera.DataSet := Nil;
    FrmAbrirNomina.dsGrafica.DataSet := Nil;
  End;
end;

procedure TFrmCatalogoNominas.Btn_CancelarClick(Sender: TObject);
begin
  if cdNomina.State In [dsEdit, dsInsert] then
  begin
    ConEfecto := False;
    combosExtLookup(False);
    cdNomina.CancelUpdates;
    CancelarBloqueo(cdNomina, cdNomina.FieldByName('IdNomina').AsInteger);
  end;
end;

procedure TFrmCatalogoNominas.Btn_CerrarClick(Sender: TObject);
begin
  if cdNomina.State in [dsInsert, dsEdit] then
  begin
    cdNomina.CancelUpdates;
    CancelarBloqueo(cdNomina, cdNomina.FieldByName('IdNomina').AsInteger);
  end;
  destruirObjetos;
  cdNomina.Close;
end;

procedure TFrmCatalogoNominas.Btn_ConsultaPagosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaPagos, FrmConsultaPagos);
  FrmConsultaPagos.IdNomina := cdNomina.FieldByName('IdNomina').AsInteger;
  FrmConsultaPagos.ShowModal;
end;

procedure TFrmCatalogoNominas.Btn_EliminarClick(Sender: TObject);
var
  Cursor: TCursor;
  Cuantos, i: Integer;
  Padre, Hijo: TTreeNode;
begin
  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      // Verificar si la nómina tiene datos de nomina
      if Not Assigned(cdBuscarDatos) then
        cdBuscarDatos := TClientDataset.Create(self);
        (*dsTmpNomina := TDataSource.Create(self); *)

      if cdBuscarDatos.ProviderName = '' then
        if Not CrearConjunto(cdBuscarDatos, 'nom_nominapersonal', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Personal de Nómina']);

      if Not CargarDatosFiltrados(cdBuscarDatos, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Personal de Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'Id. Nómina']);

      Cuantos := CuantosRegistros(cdBuscarDatos);
    Finally
      Screen.Cursor := Cursor;
    End;

    // Si no tiene datos de nómina se deberá permitir borrar el registro
    if ((Cuantos > 0) and (InteliDialog.ShowModal('La nómina ya tiene datos procesados',
      'La nómina que ha solicitado eliminar ya se encuentra procesada para un total de '
      + IntToStr(Cuantos) + ' Empleados.' + #10 + #10 + 'Título: ' +
      cdNomina.FieldByName('Titulo').AsString + #10 + 'Desde: ' +
      cdNomina.FieldByName('FechaNomina').AsString + #10 + 'Hasta: ' +
      cdNomina.FieldByName('FechaTerminoNomina').AsString + #10 + 'Días: ' +
      cdNomina.FieldByName('Dias').AsString + #10 + #10 +
      'Si elimina esta nómina se perderan todos los datos previamente calculados.'
      + #10 + #10 + '¿Está seguro que desea eliminar este registro de Nómina?',
      mtConfirmation, [MbYes, mbNo], 0) = mrYes)) or
      ((Cuantos = 0) and (InteliDialog.ShowModal('Eliminar registro de Nómina',
      'Usted a solicitado eliminar la nómina:' + #10 + #10 + 'Título: ' +
      cdNomina.FieldByName('Titulo').AsString + #10 + 'Desde: ' +
      cdNomina.FieldByName('FechaNomina').AsString + #10 + 'Hasta: ' +
      cdNomina.FieldByName('FechaTerminoNomina').AsString + #10 + 'Días: ' +
      cdNomina.FieldByName('Dias').AsString + #10 + #10 +
      '¿Está seguro de eliminar ahora este registro de Nómina?', mtConfirmation,
      [MbYes, mbNo], 0) = mrYes)) then
    begin
      if ((Cuantos > 0) and (InteliDialog.ShowModal('CONFIRMACIÓN DE ELIMINACIÓN DE DATOS DE NÓMINA', '¿CONFIRMA LA ELIMINACIÓN DE TODOS LOS DATOS DE LA NÓMINA?', mtConfirmation, [MbYes, mbNo], 0) = mrYes)) or (Cuantos = 0) then
      begin
        if cdNomina.State in [dsInsert, dsEdit] then
          cdNomina.Cancel;

        Cursor := Screen.Cursor;

        IniciarTransaccion;
        Try
          Screen.Cursor := crAppStart;

          // Eliminar registro de Nómina
          Try
            cdNomina.Delete;
            cdNomina.ApplyUpdates(-1);
          Except
            cdNomina.CancelUpdates;
            raise;
          End;

          // Eliminar registros dependientes de Nómina si es que existieran
          cdBuscarDatos.Open;
          while cdBuscarDatos.RecordCount > 0 do
            cdBuscarDatos.Delete;

          if Assigned(FrmAbrirNomina) then
          begin
            // Eliminar el nodo del treeview para que ya no aparezca
            i := 0;
            while (i < FrmAbrirNomina.tvNominas.Items.Count) and
              ((Not Assigned(FrmAbrirNomina.tvNominas.Items.Item[i].Data)) or
              ((Assigned(FrmAbrirNomina.tvNominas.Items.Item[i].Data)) and
              (TInfoNomina(FrmAbrirNomina.tvNominas.Items.Item[i].Data).IdNomina
              <> cdNomina.FieldByName('IdNomina').AsInteger))) do
              Inc(i);

            if (i < FrmAbrirNomina.tvNominas.Items.Count) and
              ((Assigned(FrmAbrirNomina.tvNominas.Items.Item[i].Data)) and
              (TInfoNomina(FrmAbrirNomina.tvNominas.Items.Item[i].Data)
              .IdNomina = cdNomina.FieldByName('IdNomina').AsInteger)) then
            begin
              Padre := FrmAbrirNomina.tvNominas.Items.Item[i].Parent;
              FrmAbrirNomina.tvNominas.Items.Item[i].Delete;

              // Verificar si el padre se ha quedado sin hijos
              Hijo := Padre.GetFirstChild;
              if Not Assigned(Hijo) then
                Padre.Delete;
            end;
          end;
          ClientModule1.registrarEvento('NOMINAS','ELIMINAR NOMINA','ELIMINAR NOMINA', 0.0, 0);

          if EnTransaccion then
            ConcretarTransaccion;
        Finally
          if EnTransaccion then
            CancelarTransaccion;
          destruirObjetos;
          Screen.Cursor := Cursor;
        End;
      end;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e: Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.Btn_FiniquitosClick(Sender: TObject);
begin
  GenerarReporte('FiniquitoABordo.fr3', RRecibos);
end;

procedure TFrmCatalogoNominas.Btn_GuardarClick(Sender: TObject);
var
  Estado: TDataSetState;
  Cursor: TCursor;
  Ultimo: Integer;
begin
  if cdNomina.State in [dsEdit, dsInsert] then
  begin
    Try
      Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crSQLWait;

        if Length(Trim(edt_Titulo.Text)) > 0 then
          cdNomina.FieldByName('Titulo').AsString := edt_Titulo.Text;

        if cbbPeriodos.EditValue <> null then
          cdNomina.FieldByName('IdPeriodosGuardia').AsInteger := cbbPeriodos.EditValue;

        if cdNomina.FieldByName('Titulo').AsString = '' then
        begin
          Edt_Titulo.SetFocus;
          raise InteligentException.CreateByCode(18, ['Título']);
        end;

        if (pnl_Periodo.Visible) and (cdNomina.FieldByName('IdPeriodosGuardia').IsNull) then
        begin
          cbbPeriodos.SetFocus;
          raise InteligentException.CreateByCode(18, ['Periodo de Guardia']);
        end;
      Finally
        Screen.Cursor := Cursor;
      End;
      Estado := cdNomina.State;

      if Not pnl_Periodo.Visible then
        cdNomina.FieldByName('IdPeriodosGuardia').Clear;

      Try
        cdNomina.FieldByName('FechaNomina').AsDateTime := edt_FechaNomina.Date;
        cdNomina.FieldByName('FechaTerminoNomina').AsDateTime := edt_FechaTerminoNomina.Date;
        cdNomina.FieldByName('FechaPagoNomina').AsDateTime := EdtFechaPago.Date;
        cdNomina.Post;
        cdNomina.ApplyUpdates(-1);

        Ultimo := UltimoId;
      Finally
        if Estado = dsEdit then
          CancelarBloqueo(cdNomina, cdNomina.FieldByName('IdNomina').AsInteger);

        cdNomina.Close;
      End;

      if Not CargarDatosFiltrados(cdNomina, 'IdNomina', [Ultimo]) then
        raise InteligentException.CreateByCode(6, ['Nóminas', Ultimo, 'Id. Nómina']);

      if CuantosRegistros(cdNomina) = 0 then
        raise InteligentException.CreateByCode(27, ['Nóminas', Ultimo]);

      cdNomina.Open;
      //registrarEvento('NOMINAS','NUEVA NOMINA','CREACIÓN DE UN NUEVO APARTADO DE NOMINA', 0.0, 0);
      destruirObjetos;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmCatalogoNominas.Btn_Modificar_CalculoClick(Sender: TObject);
var
  Cursor: TCursor;
  ResModal: Byte;
  cdEmpleado: TClientDataset;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crSQLWait;
      cdEmpleado := TClientDataset.create(self);
           //Validar que si ya se encuentra pagado el empleado no permita modificar el cálculo
      if cdEmpleado.ProviderName = '' then
        if Not CrearConjunto(cdEmpleado, 'nom_detallenomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

      if Not CargarDatosFiltrados(cdEmpleado, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Detalle de Nómina', GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger, 'Id. Personal']);

      if CdEmpleado.Active then
        cdEmpleado.Refresh
      else
        cdEmpleado.Open;

      if cdEmpleado.RecordCount = 1 then
      begin
        if Not cdEmpleado.FieldByName('IdFormaPago').IsNull then
          raise InteligentException.CreateByCode(24, ['El registro de cálculo de Nómina del empleado ' + GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString + ' no puede ser modificado debido a que este ya ha sido indicado como pagado físicamente.']);

        // Crear el conjunto de personal
        if Not Assigned(cdDetalleNomina) then
          cdDetalleNomina := TClientDataSet.Create(Nil);

        if cdDetalleNomina.ProviderName = '' then
          if Not CrearConjunto(cdDetalleNomina, 'nom_detallenomina', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

        if Not CargarDatosFiltrados(cdDetalleNomina, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Detalle de Nómina', cdNomina.FieldByName('IdNomina').AsString + ' / ' + GridPersonal.Cell[9, GridPersonal.SelectedRow].AsString, 'Id. Nómina / Id. Personal']);

        if cdDetalleNomina.Active then
          cdDetalleNomina.Refresh
        else
          cdDetalleNomina.Open;

        Application.CreateForm(TFrmModificarImportesNomina, FrmModificarImportesNomina);
        FrmModificarImportesNomina.dsDetalle.DataSet := cdDetalleNomina;
        FrmModificarImportesNomina.lbl3.Caption := GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString;
        ResModal := FrmModificarImportesNomina.ShowModal;
        if ResModal = mrOk then
        begin
          GridPersonal.Cell[6, GridPersonal.SelectedRow].AsString := FloatToStr(FrmModificarImportesNomina.Percepciones);
          GridPersonal.Cell[7, GridPersonal.SelectedRow].AsString := FloatToStr(FrmModificarImportesNomina.Deducciones);
          GridPersonal.Cell[8, GridPersonal.SelectedRow].AsString := FloatToStr(FrmModificarImportesNomina.Percepciones - FrmModificarImportesNomina.Deducciones);
        end;
      end;
    Finally
      Screen.Cursor := Cursor;
      cdEmpleado.Destroy;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.Btn_NominaPagoExcelClick(Sender: TObject);
var
  gForma: TForm;
begin
  try
    //dlgSaveExcel.FileName;
    //cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    EncabezadoReportes(CdEncabezado,18);
    // Traer todas las referencias
    Try
      gForma := TForm.Create(nil);
      gForma.Name := 'DialogRef';
      gForma.Width := 300;
      gForma.Height := 110 + 30;
      gForma.Caption := 'Exportar Nómina a Excel';
      pnlExportarxPagos.Parent := gForma;
      pnlExportarxPagos.Visible := True;
      pnlExportarxPagos.Align := alClient;
      CargarReferencias(cbReferenciaxPagos);
      gforma.ShowModal;
      pnlExportarxPagos.Visible := False;
      pnlExportarxPagos.Parent := Self;
      //gForma.Close;
    Finally
      gForma.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.Btn_NuevoClick(Sender: TObject);
begin
  ConEfecto := False;
  VerificaDataSet;

  // Llamar la ventana de Abrir...
  Try
    if cdNomina.Active then
    begin
      if cdNomina.State = dsEdit then
      begin
        case InteliDialog.ShowModal('Hay una Nómina abierta', 'Actualmente se encuentra editando una Nómina.' + #10 + #10 + '¿Desea grabar esta Nómina en este momento?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: Btn_Guardar.Click;
          mrNo: cdNomina.Close;
          mrCancel: raise InteligentWarning.Create('*');
        end;
      end;

      cdNomina.Close;
    end;

    if Not CargarDatosFiltrados(cdNomina, 'IdNomina', [-9]) then
      raise InteligentException.CreateByCode(21, ['Nóminas']);

    cdTipoNomina.First;

    cdNomina.Open;
    cdNomina.Append;
    cdNomina.FieldByName('IdNomina').AsInteger := 0;
    cdNomina.FieldByName('FechaNomina').AsDateTime := Now();
    cdNomina.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
    cdNomina.FieldByName('Dias').AsInteger := cdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
    cdNomina.FieldByName('Estado').AsString := 'ABIERTA';
    cdNomina.FieldByName('Domingos').AsInteger := 0;
    ActualizarEstadoBotones;
    PageControl1.ActivePage := TabParametros;
    Edt_Titulo.SetFocus;
    EdtFechaPago.Date := edt_FechaTerminoNomina.Date;
    BanderaPago := False;
    banderaTermino := False;
    combosExtLookup(True);
  Except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.cbbGuardiasChange(Sender: TObject);
begin
  // Reubicar el dataset de las guardias
//  if cbbGuardias.ItemIndex <> -1 then
//    cdGuardias.Locate('IdGuardia', Integer(cbbGuardias.Items.Objects[cbbGuardias.ItemIndex]), []);
end;

procedure TFrmCatalogoNominas.cbbPeriodosPropertiesEditValueChanged(
  Sender: TObject);
var
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;

    if pnl_Periodo.Visible then
    begin
      if cdPeriodos.RecordCount > 0 then
      begin
        if cdNomina.state in [dsInsert, dsEdit] then
        begin
          Edt_FechaNomina.Date        :=  Trunc(cdPeriodos.FieldByName('FechaInicio').AsDateTime);
          Edt_FechaTerminoNomina.Date := Trunc(cdPeriodos.FieldByName('FechaTermino').AsDateTime);
        end;
      end
      else
      begin
        Edt_FechaNomina.Date := Now;
        Edt_FechaTerminoNomina.Date := Edt_FechaNomina.Date + (Edt_Dias.Value -1);
      end;

      //Mostrar el resumen de los cortes que el usuario haya realizado por cada Periodo
      if Not CargarDatosFiltrados(Cortes, 'IdPeriodosGuardia', [cbbPeriodos.EditValue]) then
        raise InteligentException.CreateByCode(6, ['IdPeriodosGuardia', 'nom_nomina']);

      if Cortes.Active then
        Cortes.Refresh
      else
        Cortes.Open;

      if (Cortes.RecordCount > 0) then
        panelResumen.Visible := True
      else
        panelResumen.Visible := False;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCatalogoNominas.cbbTipoNominaPropertiesChange(Sender: TObject);
begin
  cdTipoNomina.Locate('IdTipoNomina', cbbTipoNomina.EditValue, []);
end;

procedure TFrmCatalogoNominas.cbbTipoNominaPropertiesEditValueChanged(
  Sender: TObject);
begin
  habilitarFechas;
end;

procedure TFrmCatalogoNominas.cdFiniquitoPerAfterScroll(DataSet: TDataSet);
begin
//  Try
//    cdFiniquitoDed.Filtered := False;
//    cdFiniquitoDed.Filter := 'IdPersonal = ' + cdFiniquitoPer.FieldByName('IdPersonal').AsString;
//    cdFiniquitoDed.Filtered := True;
//  Except
//    cdFiniquitoDed.Filtered := False;
//  End;
end;

procedure TFrmCatalogoNominas.cdNomina2AfterScroll(DataSet: TDataSet);
begin
  NetoNomina.Caption := FloatToStrF(cdNomina2.FieldByName('Neto').AsFloat, ffCurrency, 16, 2);
end;

procedure TFrmCatalogoNominas.cdNominaAfterCancel(DataSet: TDataSet);
begin
  Btn_Cancelar.Enabled := False;
  Btn_Guardar.Enabled := False;
  Btn_Edit.Enabled := True;
  cbbTipoNomina.Enabled := False;

  ActualizarEstadoBotones;

  TabNomina.Enabled := True;

  EstadoObjetos(False);
end;

procedure TFrmCatalogoNominas.cdNominaAfterClose(DataSet: TDataSet);
begin
  cdNomina2.Close;

  Btn_Cancelar.Enabled := False;
  Btn_Guardar.Enabled := False;
  Btn_Edit.Enabled := True;

  TabNomina.Enabled := True;

  cdBuscar.Close;

  if cdBuscar.Active then
    cdNomina.Close;

  YaLeidoPersonalIncluido := False;
  ReadYet := False;
  TabPresentacion.PageControl := PageControl2;
  TabRecibos.PageControl := PageControl2;
  TabContenedora.PageControl := PageControl2;

  Self.Caption := 'Catálogo de Nóminas';

  ActualizarEstadoBotones;

  EstadoObjetos(False);
end;

procedure TFrmCatalogoNominas.cdNominaAfterDelete(DataSet: TDataSet);
begin
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterEdit(DataSet: TDataSet);
begin
  Btn_Cancelar.Enabled := True;
  //Btn_Guardar.Enabled := (True) and (DataSet.State = dsEdit);
  Btn_Edit.Enabled := False;
  cbbTipoNomina.Enabled := True;
  TabNomina.Enabled := False;

  EstadoObjetos(True);
end;

procedure TFrmCatalogoNominas.cdNominaAfterOpen(DataSet: TDataSet);
begin
  Try
    if Not cdTipoNomina.Active then
      cdTipoNomina.Open;

    if ((cdNomina.Active) and (cdNomina.RecordCount > 0)) and (Not cdTipoNomina.Locate('IdTipoNomina', cdNomina.FieldByName('IdTipoNomina').AsInteger, [])) then
      raise Exception.Create('Error Message');

    // Abrir el espejo de Nómina
    if cdNomina2.ProviderName = '' then
    begin
      if Not CrearConjunto(cdNomina2, 'nom_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nóminas']);
    end;

    cbbTipoNomina.Enabled := False;
    //spNomina.Visible := True;

    if (Assigned(cdPersonalIncluido)) and (cdPersonalIncluido.Active) then
      cdPersonalIncluido.Close;

    if cdGuardias.ProviderName = '' then
      if Not CrearConjunto(cdGuardias, 'nom_guardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Guardias']);

    if Not cdGuardias.Active then
      cdGuardias.Open;    // Traer todas las guardias de todos los tipos de Nómina

    if cdPeriodos.ProviderName = '' then
      if Not CrearConjunto(cdPeriodos, 'nom_periodosguardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Periodos por Guardia']);

    cdPeriodos.Open;

    if cdNomina2.Active then
      cdNomina2.Close;

    if Not CargarDatosFiltrados(cdNomina2, 'IdNomina', [DataSet.FieldByName('IdNomina').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nómina', DataSet.FieldByName('IdNomina').AsInteger, 'Id. Nómina']);

    cdNomina2.Open;

    PageControl1.ActivePage := TabNomina;

    Self.Caption := 'Catálogo de Nóminas - ' + cdNomina.FieldByName('Titulo').AsString (*+ ' del ' + cdNomina.FieldByName('FechaNomina').AsString + ' al ' + cdNomina.FieldByName('FechaTerminoNomina').AsString*);

    ActualizarEstadoBotones;

    EstadoObjetos(False);
  Except
    on e:InteligentException do
    begin
      if DataSet.Active then
        DataSet.Close;

      if (cdNomina2.ProviderName <> '') and (cdNomina2.Active) then
        cdNomina2.Close;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:exception do
    begin
      if DataSet.Active then
        DataSet.Close;

      if (cdNomina2.ProviderName <> '') and (cdNomina2.Active) then
        cdNomina2.Close;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message + ' ' + e.classname , mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmCatalogoNominas.cdNominaAfterPost(DataSet: TDataSet);
begin
  Btn_Cancelar.Enabled := False;
  Btn_Guardar.Enabled := False;
  Btn_Edit.Enabled := True;
  cbbTipoNomina.Enabled := False;
  TabNomina.Enabled := True;

  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaAfterRefresh(DataSet: TDataSet);
begin
  cbbTipoNomina.Enabled := False;
  cdNomina2.Refresh;
  ActualizarEstadoBotones;
end;

procedure TFrmCatalogoNominas.cdNominaBeforeClose(DataSet: TDataSet);
begin
  Self.BringToFront;
  Self.Activate;

  CancelarBloqueo(cdNomina, cdNomina.FieldByName('IdNomina').AsInteger);
end;

procedure TFrmCatalogoNominas.cdNominaBeforeOpen(DataSet: TDataSet);
begin
  Self.BringToFront;
  if Self.WindowState = wsMinimized then
    Self.WindowState := wsNormal;
end;

procedure TFrmCatalogoNominas.cdPersonalDetalleNominaAfterScroll
  (DataSet: TDataSet);
begin
  if ProcederScroll then
  begin
    if Assigned(cdGenerales) and (cdGenerales.Active) then
      cdGenerales.Locate('IdPersonal', cdPersonalDetalleNomina.FieldByName('IdPersonal').AsInteger, []);

//    cdmoduleorganizacion.filtered := False;
//    cdModuleOrganizacion.Filter := 'regPatIMSS = ' + cdPersonalDetalleNomina.FieldByName('regpatimss').AsString;
//    cdModuleOrganizacion.Filtered := True;

    cdmoduleorganizacion.locate('regpatimss', cdPersonalDetalleNomina.FieldByName('regpatimss').AsString, []);


    memPercepciones.Filtered := False;
    memPercepciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
    memPercepciones.Filtered := True;

    memPercepciones2.Filtered := False;
    memPercepciones2.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
    memPercepciones2.Filtered := True;

    memDeducciones.Filtered := False;
    memDeducciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
    memDeducciones.Filtered := True;

    memDeducciones2.Filtered := False;
    memDeducciones2.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
    memDeducciones2.Filtered := True;

    cdTimbrado.Filtered := False;
    cdTimbrado.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
    cdTimbrado.Filtered := True;

      memDeptoPercepciones.Filtered := False;
      memDeptoPercepciones.Filter := 'IdAgrupador = ' + QuotedStr(cdPersonalDetalleNomina.FieldByName('Agrupador').AsString) (*+  ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
      memDeptoPercepciones.Filtered := True;

      memDeptoDeducciones.Filtered := False;
      memDeptoDeducciones.Filter := 'IdAgrupador = ' + QuotedStr(cdPersonalDetalleNomina.FieldByName('Agrupador').AsString) (*+ ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
      memDeptoDeducciones.Filtered := True;

      memObligacion.Filtered := False;
      memObligacion.Filter := 'IdAgrupador = ' + QuotedStr(cdPersonalDetalleNomina.FieldByName('Agrupador').AsString) (*+ ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
      memObligacion.Filtered := True;

      memRubrosIMSS.Filtered := False;
      memRubrosIMSS.Filter := 'IdAgrupador = ' + QuotedStr(cdPersonalDetalleNomina.FieldByName('Agrupador').AsString) (*+ ' and 'IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
      memRubrosIMSS.Filtered := True;

     {$REGION 'AGRUPADOR NOMINA'}
//      memDeptoPercepciones.Filtered := False;
//      memDeptoPercepciones.Filter := 'IdAgrupador = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString (*+  ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
//      memDeptoPercepciones.Filtered := True;
//
//      memDeptoDeducciones.Filtered := False;
//      memDeptoDeducciones.Filter := 'idAgrupador = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString (*+ ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
//      memDeptoDeducciones.Filtered := True;
//
//      memObligacion.Filtered := False;
//      memObligacion.Filter := 'IdAgrupador = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString (*+ ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
//      memObligacion.Filtered := True;
//
//      memRubrosIMSS.Filtered := False;
//      memRubrosIMSS.Filter := 'IdAgrupador = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString (*+ ' and 'IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
//      memRubrosIMSS.Filtered := True;
     {$ENDREGION 'AGRUPADOR NOMINA'}

    {$REGION 'Recibo'}
    memDeptoPercepciones2.Filtered := False;
    memDeptoPercepciones2.Filter := 'IdAgrupador = ' + QuotedStr(cdPersonalDetalleNomina.FieldByName('Agrupador').AsString) (*+  ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
    memDeptoPercepciones2.Filtered := True;

    memDeptoDeducciones2.Filtered := False;
    memDeptoDeducciones2.Filter := 'idAgrupador = ' + QuotedStr(cdPersonalDetalleNomina.FieldByName('Agrupador').AsString) (*+ ' and IdOrganizacion = ' + cdPersonalDetalleNomina.FieldByName('IdOrganizacion').AsString*);
    memDeptoDeducciones2.Filtered := True;

    {$ENDREGION}
    // Obtener el neto a pagar por empleado
    NetoPagar := 0;
    TotalPercepciones := 0;
    while not memPercepciones.Eof do
    begin
      if CompareText(memPercepciones.FieldByName('Modo').AsString, 'PERCEPCION') = 0 then
        TotalPercepciones := TotalPercepciones + StrToFloat(memPercepciones.FieldByName('Importe').AsString);

      memPercepciones.Next;
    end;
    memPercepciones.First;

    memDeducciones.First;
    TotalDeducciones := 0;
    while not memDeducciones.Eof do
    begin
      if CompareText(memDeducciones.FieldByName('Modo').AsString, 'DEDUCCION') = 0 then
        TotalDeducciones := TotalDeducciones + StrToFloat(memDeducciones.FieldByName('Importe').AsString);
      memDeducciones.Next;
    end;
    memDeducciones.First;

    NetoPagar := TotalPercepciones - TotalDeducciones;

    // Obtener el neto a pagar por departamento
    NetoDeptoPagar := 0;
    NetoDeptoPercepciones := 0;
    while not memDeptoPercepciones.Eof do
    begin
      NetoDeptoPercepciones := NetoDeptoPercepciones + StrToFloat(memDeptoPercepciones.FieldByName('Importe').AsString);
      //NetoDeptoPagar := NetoDeptoPagar + StrToFloat(memDeptoPercepciones.FieldByName('Importe').AsString);
      memDeptoPercepciones.Next;
    end;
    memDeptoPercepciones.First;

    NetoDeptoDeducciones := 0;
    while not memDeptoDeducciones.Eof do
    begin
      if CompareText(memDeptoDeducciones.FieldByName('Modo').AsString, 'DEDUCCION') = 0 then
        NetoDeptodeducciones := NetoDeptodeducciones + StrToFloat(memDeptoDeducciones.FieldByName('Importe').AsString);
      //NetoDeptoPagar := NetoDeptoPagar - StrToFloat(memDeptoDeducciones.FieldByName('Importe').AsString);
      memDeptoDeducciones.Next;
    end;
    memDeptoDeducciones.First;

    NetoDeptoPagar := NetoDeptoPercepciones - NetoDeptoDeducciones;

    {$REGION 'Recibo'}
    // Obtener el neto a pagar por departamento
    NetoDeptoPagar2 := 0;
    NetoDeptoPercepciones := 0;
    while not memDeptoPercepciones2.Eof do
    begin
      NetoDeptoPercepciones := NetoDeptoPercepciones + StrToFloat(memDeptoPercepciones2.FieldByName('Importe').AsString);
      //NetoDeptoPagar := NetoDeptoPagar + StrToFloat(memDeptoPercepciones.FieldByName('Importe').AsString);
      memDeptoPercepciones2.Next;
    end;
    memDeptoPercepciones2.First;

    NetoDeptoDeducciones := 0;
    while not memDeptoDeducciones2.Eof do
    begin
      if CompareText(memDeptoDeducciones2.FieldByName('Modo').AsString, 'DEDUCCION') = 0 then
        NetoDeptodeducciones := NetoDeptodeducciones + StrToFloat(memDeptoDeducciones2.FieldByName('Importe').AsString);
      //NetoDeptoPagar := NetoDeptoPagar - StrToFloat(memDeptoDeducciones.FieldByName('Importe').AsString);
      memDeptoDeducciones2.Next;
    end;
    memDeptoDeducciones2.First;

    NetoDeptoPagar2 := NetoDeptoPercepciones - NetoDeptoDeducciones;
    {$ENDREGION}
  end;
end;

procedure TFrmCatalogoNominas.cdTipoNominaAfterScroll(DataSet: TDataSet);
begin
  //Btn_Finiquitos.Visible := DataSet.FieldByName('DiasDescanso').AsInteger > 0;
//  if cdNomina.Active then
//  begin
//    if cdNomina.State = dsInsert then
//    begin
//      Try
//        ConEfecto := False;
//        cdNomina.FieldByName('Dias').AsInteger := cdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
//      Finally
//        ConEfecto := True;
//      End;
//      //if cdTipoNomina.FieldByName('Ajustar').AsString = 'Si' then
//    end;
//
//    if (cdTipoNomina.Active) and (cdTipoNomina.RecordCount > 0) then
//    begin
//      pnl_Periodo.Visible  := cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0;
//      Edt_FechaNomina.Enabled        := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
//      Edt_FechaTerminoNomina.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
//      Edt_Dias.Enabled     := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
//      Edt_Domingos.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
//      Edt_Festivos.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
//
//      if cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0 then
//        Edt_FechaTerminoNomina.Date := Edt_FechaNomina.Date + (cdTipoNomina.FieldByName('DiasTrabajados').AsInteger -1);
//      if cdTipoNomina.FieldByName('IdTipoNomina_Liga').IsNull then
//        CargarGuardias(cdTipoNomina.FieldByName('IdTipoNomina').AsInteger)
//      else
//        CargarGuardias(cdTipoNomina.FieldByName('IdTipoNomina_Liga').AsInteger);
//    end;
//  end;
end;

procedure TFrmCatalogoNominas.FichaPersonal1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmFichaGeneralPersonal, FrmFichaGeneralPersonal);
  FrmFichaGeneralPersonal.accion := 'Editar';
  FrmFichaGeneralPersonal.IdPersonal := GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger;
  FrmFichaGeneralPersonal.ShowModal;
end;

procedure TFrmCatalogoNominas.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  h: Integer;
  i: Integer;
begin
  if Assigned(FrmAbrirNomina) then
  begin
    FrmAbrirNomina.Destroy;
    FrmAbrirNomina := Nil;
  end;

  {if (Assigned(cdAcumDetalle)) and (cdAcumDetalle.ProviderName = '') then
    EliminarConjunto(cdAcumDetalle);}

  Try
    if Assigned(cdGenerales) then
    begin
      cdGenerales.Destroy;
      cdGenerales := Nil;
    end;
  Except
    ;
  End;

  If Assigned(rhh_genericclasses.dsAcumDetalle) and Assigned(rhh_genericclasses.dsAcumDetalle.DataSet) then
  begin
    EliminarConjunto(TClientDataSet(rhh_genericclasses.dsAcumDetalle.DataSet));
    rhh_genericclasses.dsAcumDetalle.Destroy;
  end;

  if Assigned(cdBuscarDatos) and (cdBuscarDatos.ProviderName <> '') then
    EliminarConjunto(cdBuscarDatos);

  if Assigned(cdCorteNivel1) and (cdCorteNivel1.ProviderName <> '') then
    EliminarConjunto(cdCorteNivel1);

  if Assigned(cdCorteNivel2) and (cdCorteNivel2.ProviderName <> '') then
    EliminarConjunto(cdCorteNivel2);

  if Assigned(cdReferencias) and (cdReferencias.ProviderName <> '') then
    EliminarConjunto(cdReferencias);

  if Assigned(cdObligacionGeneral) and (cdObligacionGeneral.ProviderName <> '') then
    EliminarConjunto(cdObligacionGeneral);

  if Assigned(cdIMSSGeneral) and (cdIMSSGeneral.ProviderName <> '') then
    EliminarConjunto(cdIMSSGeneral);

  if Assigned(MemGenPercepciones) and (MemGenPercepciones.ProviderName <> '') then
    EliminarConjunto(MemGenPercepciones);

  if Assigned(MemGenDeducciones) and (MemGenDeducciones.ProviderName <> '') then
    EliminarConjunto(MemGenDeducciones);

  if Assigned(cdPersonalDetalleNomina) and (cdPersonalDetalleNomina.ProviderName <> '') then
    EliminarConjunto(cdPersonalDetalleNomina);

  if Assigned(cdDetalleNomina) and (cdDetalleNomina.ProviderName <> '') then
    EliminarConjunto(cdDetalleNomina);

  if (cdNomina.Active) and (cdNomina.RecordCount > 0) then
    CancelarBloqueo(cdNomina, cdNomina.FieldByName('IdNomina').AsInteger);

  //Foco Rojo
  if Assigned(cdDetalleSave) then
    EliminarConjunto(cdDetalleSave);

  try
    if Assigned(cdDetalleSave) then
      cdDetalleSave.Free;
  except
    ;
  end;

//  if Assigned(cdDetalleSave) then
//  begin
//    cdDetalleSave.Destroy;
//  end;

{  if cdGuardias.Providername <> '' then
    EliminarConjunto(cdGuardias);

  if cdPeriodos.ProviderName <> '' then
    EliminarConjunto(cdPeriodos);}

  EliminarConjunto([cdNomina, cdNomina2, cdBuscar, cdGuardias, cdPeriodos, cdNetos, cdFormaPago, cdTmpNomina, cdPersonalNomina, cdExcepciones, cdTipoNomina]);

  {EliminarConjunto(cdNomina);

  if cdNomina2.ProviderName <> '' then
    EliminarConjunto(cdNomina2);

  if cdFormaPago.ProviderName <> '' then
    EliminarConjunto(cdFormaPago);

  if cdTmpNomina.ProviderName <> '' then
    EliminarConjunto(cdTmpNomina);

  if cdPersonalNomina.ProviderName <> '' then
    EliminarConjunto(cdPersonalNomina);

  if cdExcepciones.ProviderName <> '' then
    EliminarConjunto(cdExcepciones);}

  for h := 0 to GridPersonal.Columns.Count - 1 do
    if GridPersonal.Columns.Item[h].Name <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, GridPersonal.Columns.Item[h].Name, IntToStr(GridPersonal.Columns.Item[h].Width));

  // Volver a dejar el menú de opciones como estaba originalmente
  //PageCatalogoNominas.Parent  := AdvToolBarPager1;

  //for i := 0 to Form2.tbMain.AdvPageCount -1 do
    //Form2.tbMain.AdvPages[i].PageIndex := i;

  //Form2.tbMain.ActivePage := CurrentAdvpage;

  LiberarVentana(Self, Action);
end;

procedure TFrmCatalogoNominas.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
  i: Integer;
begin
  pCual := -1;
  IndiceDeptoOrg := -1;
  CargandoGuardias := True;
  ConEfecto := True;
  if not Assigned(cdPersonalIncluido) then
    cdPersonalIncluido := TClientDataSet.Create(Nil);

  YaCreado := False;
  YaLeidoPersonalIncluido := False;
  ReadYet := False;
  SMGVDF := 0;
  TabPresentacion.PageControl := PageControl2;
  TabRecibos.PageControl := PageControl2;
  TabContenedora.PageControl := PageControl2;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if cdGuardias.ProviderName = '' then
      if Not CrearConjunto(cdGuardias, 'nom_guardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Guardias']);

      if Not cdGuardias.Active then
        cdGuardias.Open;

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      cdTipoNomina.Open;

      PageControl1.Pages[2].Visible := False;

      if Not CrearConjunto(cdDesactivarTimbre, 'nom_timbrado', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Timbrado']);

      if not CrearConjunto(cdDetalleGrafica, 'nom_gafica_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Gráfica Detallada de Nóminas']);

      if Not CrearConjunto(Cortes, 'nom_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_nomina']);

      DxRibbonNominas.ShowTabHeaders := False;

      ConceptoNombre := TStringList.Create;
      ConceptoColumna := TStringList.Create;
      posFormula := tStringList.Create;
      IniciaFormula := TStringList.Create;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmCatalogoNominas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
  begin
    DxBarBtnRefrescar.Click;
  end;
end;

procedure TFrmCatalogoNominas.FormShow(Sender: TObject);
begin
  pCual := -1;
//  Panel_Menu_Edicion.Visible := (cdNomina.Active and (cdNomina.RecordCount = 1)) and (PageControl1.ActivePage = TabParametros);
//  Panel_Menu_Personal.Visible := (cdNomina.Active and (cdNomina.RecordCount = 1)) and (PageControl1.ActivePage = TabPersonal);
//  Panel_Personal_Opciones.Visible  := False;
  Panel_Nominas.Visible := False;
  BanderaPago := False;
end;

procedure TFrmCatalogoNominas.PageControl1Change(Sender: TObject);
begin
  if cdNomina.Active and (cdNomina.State in [dsInsert, dsEdit]) and (PageControl1.ActivePage <> TabParametros) then
    PageControl1.ActivePage := TabParametros;

  if PageControl1.ActivePage = TabParametros then
  begin
    ConEfecto := True;
    DxRibbonNominas.ActiveTab := dxTabParametros;
    PageControl1.PopupMenu := nil;
    combosExtLookup(False);
  end
  else if PageControl1.ActivePage = TabNomina then
  begin
    DxRibbonNominas.ActiveTab := dxTabProceso;
    PageControl1.PopupMenu := nil;
  end
  else if PageControl1.ActivePage = TabPersonal then
  begin
    DxRibbonNominas.ActiveTab := dxTabPersonal;
    PageControl1.PopupMenu := nil;
  end
  else
    PageControl1.PopupMenu := DxPopMenuTab;

//  Panel_Menu_Edicion.Visible := (cdNomina.Active and (cdNomina.RecordCount = 1)) and (PageControl1.ActivePage = TabParametros);
//  Panel_Menu_Personal.Visible := (cdNomina.Active and (cdNomina.RecordCount = 1)) and (PageControl1.ActivePage = TabPersonal);
//  Panel_Personal_Opciones.Visible := Panel_Menu_Personal.Visible;
  Panel_Nominas.Visible := cdNomina.Active;
end;

procedure TFrmCatalogoNominas.pmTabsPopup(Sender: TObject);
begin
  if TabCntMain.PageCount = 0 then
  begin
    CerrarPestana1.Enabled := False;
    CerrarTodaslasPestanas1.Enabled := False;
  end
  else
  begin
    CerrarPestana1.Enabled := True;
    CerrarTodaslasPestanas1.Enabled := True;
  end;
end;

procedure TFrmCatalogoNominas.pumPersonalPopup(Sender: TObject);
begin
  if GridPersonal.SelectedRow >= 0  then
  begin
    if GridPersonal.RowCount > 0 then
      CalcularIndividual1.Caption := 'Calcular: ' + GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString
    else
      CalcularIndividual1.Caption := '';

    ReporteIndividualdeInsidencias1.Enabled := GridPersonal.RowCount > 0;

    if GridPersonal.Cell[5, GridPersonal.SelectedRow].AsString = '' then
      RegistrarPago1.Caption := 'Registrar Pago'
    else
      RegistrarPago1.Caption := 'Eliminar registro de Pago';

    // E. Rangel 25-Sep-2015
    ConsultarVacaciones1.Visible := AnsiCompareText(cdTipoNomina.FieldByName('TipoCalculo').AsString, 'FINIQUITOS') = 0;
  end;
end;

procedure TFrmCatalogoNominas.RegistrarPago1Click(Sender: TObject);
var
  i       : Integer;
  pagados : Boolean;
begin
  if GridPersonal.Cell[5, GridPersonal.SelectedRow].AsString = '' then
    Btn_PagoNomina.Click
  else
  begin
    pagados := False;
    //Recorrer al personal seleccionado y eliminar su registro de Pago
    for i := 0 to GridPersonal.RowCount - 1 do
    begin
      if GridPersonal.Row[i].Selected then
      begin
        EliminarPagoNomina(GridPersonal.Cell[9, i].AsInteger, i, pagados);
      end;
    end;

    if pagados = True then
    begin
      InteliDialog.ShowModal('Proceso terminado', 'El registro de pago para el/los Empleado(s) ha sido eliminado de manera satisfactoria', mtInformation, [mbOk], 0);
    end;

    //EliminarPagoNomina(GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger);
  end;
end;

procedure TFrmCatalogoNominas.ReporteindividualdeInsidencias1Click(
  Sender: TObject);
begin
  GenerarInsidencias(cdNomina.FieldByName('IdNomina').AsInteger, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger);
end;

procedure TFrmCatalogoNominas.ResultadoDeCancelacion(Resultado: Integer);
begin
  if Resultado = 1 then 
    InteliDialog.ShowModal('Cancelación de Timbre.', 'El timbre fue cancelado exitósamente.', mtInformation, [mbOK], 0);
    
  if Resultado = 2 then
    InteliDialog.ShowModal('Cancelación de Timbre.', 'No se puede proceder con esta opercación debido a que el timbre ya se encuentra cancelado.', mtInformation, [mbOK], 0);

  if Resultado = 3 then 
    InteliDialog.ShowModal('Cancelación de Timbre.', 'El timbre que desea cancelar no existe en la base de datos del SAT.', mtWarning, [mbOK], 0);
  
  if Resultado = 0 then 
    InteliDialog.ShowModal('Cancelación de Timbre', 'Error no definido.', mtError, [mbOK], 0);
end;

procedure TFrmCatalogoNominas.RNominaDblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  Tipo: String;
  Cuenta, ii: Integer;
  CodigoConcepto: String;

  Elemento, ListaDetalleObrero, ListaDetallePatronal: TStringList;
  Cadena, SubCadena: String;
  Forma: TForm;
  cdDetalleRubroObr: TClientDataSet;
  cdDetalleRubroPat: TClientDataSet;
begin
  if ssCtrl in Shift then
  begin
    // Contar los elementos del TagStr
    Try
      //*********************OBRERO********************************
      cdDetalleRubroObr := TClientDataSet.Create(nil);
      cdDetalleRubroObr.FieldDefs.Add('Concepto', ftString, 100, false);
      cdDetalleRubroObr.FieldDefs.Add('Importe', ftString, 100, false);
      cdDetalleRubroObr.CreateDataSet;
      cdDetalleRubroObr.Open;
      //**********************PATRON*******************************
      cdDetalleRubroPat := TClientDataSet.Create(nil);
      cdDetalleRubroPat.FieldDefs.Add('Concepto', ftString, 100, false);
      cdDetalleRubroPat.FieldDefs.Add('Importe', ftString, 100, false);
      cdDetalleRubroPat.CreateDataSet;
      cdDetalleRubroPat.Open;
      Try
        Elemento := TStringList.Create;
        Elemento.Clear;
        Cadena := Sender.TagStr + ':';
        while Pos(':', Cadena) > 0 do
        begin
          Elemento.Add(Copy(Cadena, 1, Pos(':', Cadena) - 1));
          Cadena := Copy(Cadena, Pos(':', Cadena) + 1, Length(Cadena));
        end;

        if (Elemento.Count = 2) and (Elemento[0] = 'NETO') then
        begin
          // Mostrar el detalle general del neto
          ImprimeCalculo(StrToInt(Elemento[1]));
        end;

        if Elemento.Count = 4 then
        begin
          Tipo := Elemento[0];
          {LocIdPersonal  := StrToInt(Elemento[1]);}
          CodigoConcepto := Elemento[2];
          ListaDetalleObrero := TStringList.Create;
          ListaDetallePatronal := TStringList.Create;
          ListaDetalleObrero.Clear;
          ListaDetallePatronal.Clear;

          // Localizar el registo adecuado de acuerdo a los parametros obtenidos
          Try
            cdDetalleSave.Filtered := False;
            cdDetalleSave.Filter := '(IdPersonal = ' + {IntToStr(LocIdPersonal)} Elemento[1] + ')';
            cdDetalleSave.Filtered := True;

            while not cdDetalleSave.Eof do
            begin
              Cuenta := CuentaPartes(cdDetalleSave.FieldByName('Modo').AsString) - 1;
              for ii := 0 to Cuenta do
              begin
                // if Parte(ii, cdDetalleSave.FieldByName('Cadena').AsString) = '{NOMINA.CUOTAIMSS-Obrero}' then
                if (Copy(Parte(ii, cdDetalleSave.FieldByName('Modo').AsString), 1, 3) = Tipo) or ((Parte(ii, cdDetalleSave.FieldByName('Modo').AsString) = 'IMSS') and (Tipo = 'DED')) then
                begin
                  // Localizar el concepto
                  SubCadena := Parte(ii, cdDetalleSave.FieldByName('CodigoConcepto').AsString);

                  if (SubCadena = CodigoConcepto) or ((CodigoConcepto = '52') and ((Parte(ii, cdDetalleSave.FieldByName('Modo').AsString) = 'IMSS'))) then
                  begin
                    if (Not cdConcepto.Active) or ((cdConcepto.Active) and (cdConcepto.FieldByName('IdTipoNomina').AsInteger <> cdBuscar.FieldByName('IdTipoNomina').AsInteger)) then
                    begin
                      if Not CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdBuscar.FieldByName('IdTipoNomina').AsInteger]) then
                        raise InteligentException.CreateByCode(6, ['Conceptos de Nómina', cdBuscar.FieldByName('IdTipoNomina').AsInteger, 'Id. Tipo Nómina']);

                      if cdConcepto.Active then
                        cdConcepto.Refresh
                      else
                        cdConcepto.Open;
                    end;

                    // if Parte(ii, cdDetalleSave.FieldByName('Cadena').AsString) = '{NOMINA.CUOTAIMSS-Obrero}' then

                    if (cdConcepto.Locate('CodigoConcepto', SubCadena, [])) or ((Parte(ii, cdDetalleSave.FieldByName('Modo').AsString) = 'IMSS') and (Tipo = 'DED')) then
                      if Parte(ii, cdDetalleSave.FieldByName('Cargo').AsString) = 'OBRERO' then
                      begin
                        cdDetalleRubroObr.Append;
                        cdDetalleRubroObr.FieldByName('Concepto').AsString := Parte(ii,cdDetalleSave.FieldByName('CodigoConcepto').AsString);
                        cdDetalleRubroObr.FieldByName('importe').AsString := Parte(ii,cdDetalleSave.FieldByName('Valor').AsString);
                        cdDetalleRubroObr.Post;
                        ListaDetalleObrero.Add(Parte(ii, cdDetalleSave.FieldByName('CodigoConcepto').AsString) + ' - ' + FloatToStrF(StrToFloat(Parte(ii, cdDetalleSave.FieldByName('Valor').AsString)), ffCurrency, 16, 2));
                      end
                      else
                      begin
                        cdDetalleRubroPat.Append;
                        cdDetalleRubroPat.FieldByName('Concepto').AsString := Parte(ii,cdDetalleSave.FieldByName('CodigoConcepto').AsString);
                        cdDetalleRubroPat.FieldByName('importe').AsString := Parte(ii,cdDetalleSave.FieldByName('Valor').AsString);
                        cdDetalleRubroPat.Post;
                        ListaDetallePatronal.Add(Parte(ii, cdDetalleSave.FieldByName('CodigoConcepto').AsString) + ' - ' + FloatToStrF(StrToFloat(Parte(ii, cdDetalleSave.FieldByName('Valor').AsString)), ffCurrency, 16, 2));
                      end;

                    FDSRubroPat.DataSet := cdDetalleRubroPat;
                    FDSRubroObr.DataSet := cdDetalleRubroObr;
                  end;
                end;
              end;
              cdDetalleSave.Next;
            end;

            Try
              Forma := TForm.Create(Self);
              Forma.InsertControl(TMemo.Create(Forma));
              Forma.Controls[0].Align := alClient;
              TMemo(Forma.Controls[0]).ReadOnly := True;

              while ListaDetalleObrero.Count > 0 do
              begin
                TMemo(Forma.Controls[0]).Lines.Add(ListaDetalleObrero[0]);
                ListaDetalleObrero.Delete(0);
              end;

              TMemo(Forma.Controls[0]).Lines.Add('  ');

              while ListaDetallePatronal.Count > 0 do
              begin
                TMemo(Forma.Controls[0]).Lines.Add(ListaDetallePatronal[0]);
                ListaDetallePatronal.Delete(0);
              end;

            Finally
              cdDetalleRubroObr.close;
              cdDetalleRubroPat.Close;
              cdDetalleRubroObr.Open;
              cdDetalleRubroPat.Open;
              frxRubros.ShowReport(true);
              Forma.Free;
            End;
          Finally
            cdDetalleSave.Filtered := False;
          End;
        end;
      Finally
        Elemento.Free;
      End;
    Except
      on e: Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado',
          'Informe de lo siguiente al administrador del sistema:' + #10 + #10 +
          e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmCatalogoNominas.RNominaGetValue(const VarName: string;
  var Value: Variant);
const
  TituloNomina: Array [1 .. 15] of String = ('DIARIO', '2', '3', '4', '5', '6', 'SEMANA:', '8', '9', '10', '11', '12', '13', 'CATORCENA:', 'QUINCENA:');
begin
  if CompareText(VarName, 'InicioPeriodo') = 0 then
    Value := DescomponerFecha(cdBuscar.FieldByName('FechaNomina').AsDateTime);

  if CompareText(VarName, 'TerminoPeriodo') = 0 then
    Value := DescomponerFecha(cdBuscar.FieldByName('FechaTerminoNomina').AsDateTime);

  if CompareText(VarName, 'SMGVDF') = 0 then
    Value := Valores.Elemento('EMPLEADO.SMDF').AsFloat;

  if CompareText(VarName, 'TotalPercepciones') = 0 then
    Value := TotalPercepciones;   //Valores.Elemento('NOMINA.TotalPercepciones').AsFloat;

  if CompareText(VarName, 'TotalDeducciones') = 0 then
    Value := TotalDeducciones;    //Valores.Elemento('NOMINA.TotalDeducciones').AsFloat;

  if CompareText(VarName, 'TotalNeto') = 0 then
    Value := Valores.Elemento('NOMINA.TotalPercepciones').AsFloat - Valores.Elemento('NOMINA.TotalDeducciones').AsFloat;

  if CompareText(VarName, 'NominaNeto') = 0 then
    Value := NetoPagar;
  //cmmi
  //if  CompareText(VarName, 'TotalPercepciones') = 0 then
    //Value := NetoDeptoPercepciones;

  if CompareText(VarName, 'CANTIDADLETRA') = 0 then
    Value := UpperCase(LetrasNumeros(NetoPagar, 'PESOS', '/100 M.N.', 2)) ;

  if CompareText(VarName, 'NominaDeptoPercepciones') = 0 then
    Value := NetoDeptoPercepciones;

  if CompareText(VarName, 'NominaDeptoDeducciones') = 0 then
    Value := NetoDeptoDeducciones;

  if CompareText(VarName, 'NominaDeptoNeto') = 0 then
    Value := NetoDeptoPagar;

  if CompareText(VarName, 'NominaDeptoNeto2') = 0 then
    Value := NetoDeptoPagar2;

  if CompareText(VarName, 'GenPerNeto') = 0 then
    Value := GenPer-Gended;

  if CompareText(VarName, 'Gended') = 0 then
    Value := Gended;

  if CompareText(VarName, 'Leyenda') = 0 then
    Value := Leyenda;

  if CompareText(VarName, 'TipoR') = 0 then
    Value := TipoR;

  if CompareText(VarName, 'LeyendaTipoCalculo') = 0 then
  begin
    if (cdTipoNomina.Active) and (cdTipoNomina.Locate('IdTipoNomina', cdNomina.FieldByName('IdTipoNomina').AsInteger,[])) then
    begin
      if UPPERCASE(cdTipoNomina.FieldByName('tipoOperacion').AsString) = 'HORA' then
        Value := 'Días Trabajados' //este era el valor anterior, lo dejo mientras así por que creo que lo utilizaré mas adelante 'Horas Trabajadas'
      else
        Value := 'Días Trabajados';
    end
    else
      Value := 'Días Trabajados';
  end;

  if CompareText(VarName, 'TituloNomina') = 0 then
    if cdTipoNomina.FieldByName('DiasTrabajados').AsInteger > 0 then
      Value := TituloNomina[cdTipoNomina.FieldByName('DiasTrabajados').AsInteger];

  if CompareText(VarName, 'CANTIDADLETRAFINIQUITO') = 0 then
    if cdFiniquitoPer.Active and (cdFiniquitoPer.RecordCount > 0) then
      Value := UpperCase(LetrasNumeros(strToFloat(cdFiniquitoPer.FieldByName('Neto').AsString), 'PESOS', '/100 M.N.', 2)) ;
end;

procedure TFrmCatalogoNominas.RRecibosGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'TotalNeto') = 0 then
    Value := Valores.Elemento('NOMINA.TotalPercepciones').AsFloat - Valores.Elemento('NOMINA.TotalDeducciones').AsFloat;

  if (CompareText(VarName, '1') = 0) or (CompareText(VarName, 'SUBS') = 0) then
  begin
    if memPercepciones.Locate('CodigoConcepto', VarName, []) then
    begin
      Value := Abs(memPercepciones.FieldByName('Importe').AsFloat);
    end
    else
      Value := 0;
  end;
end;

procedure TFrmCatalogoNominas.RSubReporteGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'SMGVDF') = 0 then
    Value := SMGVDF;
end;

procedure TFrmCatalogoNominas.SalariosAcumulados(Excel: Variant; FechaInicio,
  FechaTermino: TDate);
const
  xlLeft=-4131;
  xlCenter=-4108;
  xlEdgeLeft=7;
  xlContinuous=1;
  xlAutomatic=-4105;
  xlMedium=-4138;
  xlEdgeTop=8;
  xlEdgeRight=10;
  xlInsideVertical=11;
  xlInsideHorizontal=12;
  xlThin=2;
  xlEdgeBottom=9;
  xlright=-4152;
var
  Libro,Hoja:Variant;
  RenY,ColX:Integer;
  TotalCol:Integer;
  CdsDatos: TClientDataSet;
  FiltroParametros: TParamFilter;
  x,y:Integer;
begin
  CdsDatos := TClientDataSet.Create(nil);
  FiltroParametros := TParamFilter.Create;
  try
    Libro := Excel.Workbooks.Add;
    Hoja := Libro.WorkSheets[1];
    Hoja.Select;
    {$REGION 'Titulos'}
    RenY:=1;
    ColX:=1;
    x:=1;y:=33;
    Hoja.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].select;
    Excel.selection.ColumnWidth:=13;
    x:=3;y:=3;
    Hoja.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].select;
    Excel.selection.ColumnWidth:=18;
    x:=7;y:=7;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=16;
    x:=8;y:=8;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=24;
    x:=9;y:=10;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=11;
    x:=19;y:=20;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=14;
    x:=23;y:=23;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=15;
    x:=25;y:=25;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=13;
    x:=30;y:=30;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=17;
    Excel.rows[IntToStr(RenY) + ':' + IntToStr(RenY)].RowHeight:=40;
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='REGISTRO PATRONAL';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='FECHA';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='NO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='APELLIDO PATERNO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='APELLIDO MATERNO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='NOMBRE';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='RFC';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='CURP';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='FECHA ALTA';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='FECHA BAJA';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='SUELDO DIARIO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='SUELDO QUINCENAL';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='SUBSIDIO AL EMPLEO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='HORAS EXTRAS';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='PRIMA DOMINICAL';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='PRIMA DOMINICAL EXCENTA';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='DIA FESTIVO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='FESTIVO EXCENTO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='VACACIONES';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='PRIMA VACACIONAL';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='AGUINALDO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='PRIMA ANTIGÜEDAD';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='INDEMNIZACION';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='20 DIAS POR AÑO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='TOTAL PERCEPCION';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='I.S.P.T.';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='I.M.S.S.';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='INFONAVIT';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='AJUSTE NETO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='PENCION ALIMENTICIA 50%';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='TOTAL DEDUCCIÓN';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    Inc(Colx);
    Hoja.cells[RenY,ColX].Select;
    Excel.selection.value:='SUELDO NETO';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    TotalCol:=Colx;
    Excel.ScreenUpdating:=true;
    Excel.ScreenUpdating:=false;
    //Inc(Colx);
    {$ENDREGION}
    Inc(RenY);
    if not CrearConjunto(CdsDatos, 'nom_acumulados', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);

    FiltroParametros.Add('FechaInicio',FormatDateTime('yyyy-mm-dd',FechaInicio));
    FiltroParametros.Add('FechaTermino',FormatDateTime('yyyy-mm-dd',FechaTermino));
    if not CargarDatosFiltrados(CdsDatos, FiltroParametros.Campos, FiltroParametros.Datos) then
       raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);
    CdsDatos.Open;
    while not CdsDatos.Eof do
    begin
      {$REGION 'Grabando Informacion'}
      ColX:=1;
      //Excel.columns[ColumnaNombre(Colx) +':' +ColumnaNombre(Colx+33)].ColumnWidth:=11;
      Excel.rows[IntToStr(RenY) + ':' + IntToStr(RenY)].RowHeight:=20;
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('RegistroPatronal').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('fecha').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('CodigoPersonal').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('Apaterno').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('amaterno').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('nombres').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('rfc').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('curp').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('FechaAlta').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('FechaBaja').AsString;
      Excel.selection.HorizontalAlignment:=xlLeft;
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('salariodiario').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('sueldos').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('subsidio').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('horasextra').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('primadominical').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:='';//'PRIMA DOMINICAL EXCENTA';
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('diasfestivos').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:='';//'FESTIVO EXCENTO';
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('vacaciones').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('primavacacional').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('aguinaldo').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:='';//'PRIMA ANTIGÜEDAD';
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:='';//'INDEMNIZACION';
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:='';//'20 DIAS POR AÑO';
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('percepciones').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('impuestomarginal').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('imss').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('infonavit').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:='';//'AJUSTE NETO';
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:='';//'PENCION ALIMENTICIA 50%';
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('deducciones').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      Inc(Colx);
      Hoja.cells[RenY,ColX].Select;
      Excel.selection.value:=CdsDatos.FieldByName('neto').AsFloat;
      Excel.selection.HorizontalAlignment:=xlright;
      Excel.Selection.NumberFormat:='#,##0.00';
      Excel.selection.WrapText:=true;
      CdsDatos.Next;
      Inc(RenY);
      Excel.ScreenUpdating:=true;
      Hoja.cells[RenY,1].Select;
      Excel.ScreenUpdating:=false;
      {$ENDREGION}
    end;
    {$REGION 'Formato de la Informacion'}
    Hoja.range[ColumnaNombre(1) +'1:' + ColumnaNombre(TotalCol) +'1'].Select;
    Excel.Selection.NumberFormat:='@';
    Excel.selection.HorizontalAlignment:=xlCenter;
    Excel.selection.VerticalAlignment:=xlCenter;
    Excel.selection.Font.Name:='Arial';
    Excel.selection.Font.Size:=10;
    Excel.selection.Font.Bold:=true;

    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeLeft].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeTop].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;


    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeBottom].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeRight].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;

    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlInsideVertical].TintAndShade := 0;
    Excel.Selection.Borders[xlInsideVertical].Weight := xlMedium;

    Hoja.range[ColumnaNombre(1) +'2:' + ColumnaNombre(TotalCol) + inttostr(RenY-1)].Select;
    {Excel.Selection.NumerFormat:='@';
    Excel.selection.HorizontalAlignment:=xlCenter;
    Excel.selection.VerticalAlignment:=xlCenter;}
    Excel.selection.Font.Name:='Arial';
    Excel.selection.Font.Size:=10;
    Excel.cells.Columns.AutoFit;
    //Excel.selection.Font.Bold:=true;

    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeLeft].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeTop].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeBottom].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeRight].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;

    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlInsideVertical].TintAndShade := 0;
    Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;

    Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideHorizontal].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlInsideHorizontal].TintAndShade := 0;
    Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

    {$ENDREGION}
  finally
    EliminarConjunto(CdsDatos);
    CdsDatos.destroy;
    FiltroParametros.Destroy;
  end;
end;

procedure TFrmCatalogoNominas.TabParametrosShow(Sender: TObject);
var
  cdTmpNom: TClientDataSet;
  indice: Integer;
begin
  try
    cdTmpNom := TClientDataSet.Create(Self);

    if not CrearConjunto(cdTmpNom, 'nom_detnom', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Datos de Nómina']);

    if (cdNomina.Active) and (cdNomina.State = dsBrowse) then
    begin
      if pnl_Periodo.Visible then
      begin
        if not CargarDatosFiltrados(cdTmpNom, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['','','']);

        if cdTmpNom.Active then
          cdTmpNom.Refresh
        else
          cdTmpNom.Open;

        DbLCbbGuardias.EditValue :=  cdTmpNom.FieldByName('IdGuardia').AsInteger;
        cbbPeriodos.EditValue := cdTmpNom.FieldByName('IdPeriodosGuardia').AsInteger;
      end;
    end;

    pnl_periodo.Enabled := cdNomina.State <> dsBrowse;
  finally
    if cdTmpNom.ProviderName <> '' then
      EliminarConjunto(cdTmpNom);
    cdTmpNom.Destroy;
  end;
end;

procedure TFrmCatalogoNominas.TabPersonalShow(Sender: TObject);
var
  Cursor: TCursor;
  dsPersonalIncluido: TDataSource;
  TPercepcion, TDeduccion, TNeto: Extended;
begin
  Try
    dsPersonalIncluido := TDataSource.Create(self);
    if (Not YaLeidoPersonalIncluido) and (cdNomina.Active) and (Not (cdNomina.State = dsInsert)) then
    begin
      Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crSQLWait;

        AbrirPersonalIncluido(cdPersonalIncluido, cdNomina.FieldByName('IdNomina').AsInteger, False);

        dsPersonalIncluido.DataSet := cdPersonalIncluido;
        GridPersonal.ClearRows;
        GridPersonal.RowCount := cdPersonalIncluido.RecordCount;
        while Not cdPersonalIncluido.Eof do
        begin
          // Llenar el Grid con los datos del personal
          try
            TPercepcion := StrToFloat(cdPersonalIncluido.FieldByName('TotPer').AsString);
          Except
            TPercepcion := 0.0;
          end;;
          Try
            TDeduccion := StrToFloat(cdPersonalIncluido.FieldByName('TotDed').AsString);
          except
            TDeduccion := 0.0;
          End;
          Try
            TNeto := StrToFloat(cdPersonalIncluido.FieldByName('Neto').AsString);
          Except
            TNeto := 0.0;
          End;

          GridPersonal.Cell[0, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('CodigoPersonal').AsString;
          GridPersonal.Cell[1, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('NombreCompleto').AsString;
          GridPersonal.Cell[2, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
          GridPersonal.Cell[3, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('TituloDepartamento').AsString;
          GridPersonal.Cell[4, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('TituloCargo').AsString;
          GridPersonal.Cell[5, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('TituloFormaPago').AsString;
          GridPersonal.Cell[6, cdPersonalIncluido.RecNo - 1].AsFloat := TPercepcion;
          GridPersonal.Cell[7, cdPersonalIncluido.RecNo - 1].AsFloat := TDeduccion;
          GridPersonal.Cell[8, cdPersonalIncluido.RecNo - 1].AsFloat := TNeto;
          GridPersonal.Cell[9, cdPersonalIncluido.RecNo - 1].AsInteger := cdPersonalIncluido.FieldByName('IdPersonal').AsInteger;
          GridPersonal.Cell[10, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('Estado').AsString;
          GridPersonal.Cell[11, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('RfcEmpresa').AsString;
          GridPersonal.Cell[12, cdPersonalIncluido.RecNo - 1].AsString := cdPersonalIncluido.FieldByName('UUID').AsString;

          cdPersonalIncluido.Next;
        end;

        YaLeidoPersonalIncluido := True;
        if GridPersonal.RowCount = 0 then
        begin
          if InteliDialog.ShowModal('Aviso', 'No hay personal asignado a esta nómina, desea agregarlo en este momento.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            TabNomina.Show;
            YaLeidoPersonalIncluido := False;
            DxBarBtnCalcularSeleccionando.Click;
          end
          else
          begin
            TabNomina.Show;
            YaLeidoPersonalIncluido := False;
          end;
        end;
      Finally
        if Assigned(cdPersonalIncluido) then
        begin
          EliminarConjunto(cdPersonalIncluido);
          cdPersonalIncluido.Destroy;
          cdPersonalIncluido := Nil;
        end;

        Screen.Cursor := Cursor;
      End;
    end;
  Except
    on e: Exception do
    begin
      PageControl1.ActivePage := TabNomina;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmCatalogoNominas.TabSheetContenedoraShow(Sender: TObject);
begin
  //IndiceDeptoOrg := ;
  //generarNomina('Nomina.fr3', '')
end;

procedure TFrmCatalogoNominas.edtFechaPagoPropertiesEditValueChanged(
  Sender: TObject);
begin
  if banderaTermino then
  begin
    banderaTermino := False;
    EdtFechaPago.Date := edt_FechaTerminoNomina.Date;
    if cdNomina.Active and (cdNomina.State = dsInsert) then
      cdNomina.FieldByName('fechaPagoNomina').AsDateTime := edtFechaPago.Date;
  end
  else
    BanderaPago := True;
end;

procedure TFrmCatalogoNominas.edt_DiasChange(Sender: TObject);
begin
  if ConEfecto then
    AjustarFecha(Sender);
end;

procedure TFrmCatalogoNominas.edt_Dias3Click(Sender: TObject);
begin
  if ConEfecto then
    AjustarFecha(Sender);
end;

procedure TFrmCatalogoNominas.edt_FechaNomina2Change(Sender: TObject);
var
  Cursor: TCursor;
begin
  if cdNomina.Active then
  begin
    Try
      Cursor := Screen.Cursor;

      Try
        Screen.Cursor := crHourGlass;

        lbl_Festivos.Caption := '( Indeterminados )';

        // Verificar el número de festivos y domingos
        if cdFestivos.ProviderName = '' then
        begin
          if not CrearConjunto(cdFestivos, 'rhu_diasfestivos', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Días Festivos']);
        end;

        if (cdNomina.Active) and (((cdFestivos.ProviderName <> '') and (Not cdFestivos.Active)) or ((cdFestivos.ProviderName <> '') and (cdFestivos.Active) and (cdFestivos.RecordCount > 0) and (YearOf(cdFestivos.FieldByName('Fecha').AsDateTime) <> YearOf(Edt_FechaNomina.Date)))) then
        begin
          if Not CargarDatosFiltrados(cdFestivos, 'Anio',
            [YearOf(Edt_FechaNomina.Date)]) then
            raise InteligentException.CreateByCode(6,
              ['Días Festivos', YearOf(Edt_FechaNomina.Date), 'Año']);
          if cdFestivos.Active then
            cdFestivos.Refresh
          else
            cdFestivos.Open;
        end;

        ContarFestivos;

        AjustarFecha(Sender);
      Finally
        Screen.Cursor := Cursor;

        if cdNomina.FieldByName('FechaNomina').AsDateTime >
          cdNomina.FieldByName('FechaTerminoNomina').AsDateTime then
          cdNomina.FieldByName('FechaTerminoNomina').AsDateTime :=
            cdNomina.FieldByName('FechaNomina').AsDateTime;
        // if Edt_FechaNomina.Date > Edt_FechaTerminoNomina.Date then
        // Edt_FechaTerminoNomina.Date := Edt_FechaNomina.Date;
      End;
    Except
      on e: InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e: Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado',
          'Informe de lo siguiente al administrador del sistema:' + #10 + #10 +
          e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmCatalogoNominas.edt_FechaNominaPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cdNomina.Active then
  begin
    Try
      Cursor := Screen.Cursor;

      Try
        Screen.Cursor := crHourGlass;

        lbl_Festivos.Caption := '( Indeterminados )';

        // Verificar el número de festivos y domingos
        if cdFestivos.ProviderName = '' then
        begin
          if not CrearConjunto(cdFestivos, 'rhu_diasfestivos', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Días Festivos']);
        end;

        if DateToStr(edt_FechaNomina.Date) <> '00/00/0000' then
          if (cdNomina.Active) and (((cdFestivos.ProviderName <> '') and (Not cdFestivos.Active)) or ((cdFestivos.ProviderName <> '') and (cdFestivos.Active) and (cdFestivos.RecordCount > 0) and (YearOf(cdFestivos.FieldByName('Fecha').AsDateTime) <> YearOf(Edt_FechaNomina.Date)))) then
          begin
            if Not CargarDatosFiltrados(cdFestivos, 'Anio',
              [YearOf(Edt_FechaNomina.Date)]) then
              raise InteligentException.CreateByCode(6,
                ['Días Festivos', YearOf(Edt_FechaNomina.Date), 'Año']);
            if cdFestivos.Active then
              cdFestivos.Refresh
            else
              cdFestivos.Open;
          end;

        ContarFestivos;
        if ConEfecto then
          AjustarFecha(Sender);
      Finally
        Screen.Cursor := Cursor;

        if cdNomina.FieldByName('FechaNomina').AsDateTime >
          cdNomina.FieldByName('FechaTerminoNomina').AsDateTime then
          cdNomina.FieldByName('FechaTerminoNomina').AsDateTime :=
            cdNomina.FieldByName('FechaNomina').AsDateTime;
        // if Edt_FechaNomina.Date > Edt_FechaTerminoNomina.Date then
        // Edt_FechaTerminoNomina.Date := Edt_FechaNomina.Date;
      End;
    Except
      on e: InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e: Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado',
          'Informe de lo siguiente al administrador del sistema:' + #10 + #10 +
          e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmCatalogoNominas.edt_FechaTerminoNomina2Change(Sender: TObject);
begin
//  ContarFestivos;
//   if BanderaPago = False then
//  begin
//    banderaTermino := True;
//    EdtFechaPago.Date := edt_FechaTerminoNomina.Date;
//  end;
end;

procedure TFrmCatalogoNominas.edt_FechaTerminoNominaPropertiesEditValueChanged(
  Sender: TObject);
begin
  ContarFestivos;
   if BanderaPago = False then
  begin
    banderaTermino := True;
    EdtFechaPago.Date := edt_FechaTerminoNomina.Date;
    if cdNomina.Active and (cdNomina.State = dsInsert) then
      cdNomina.FieldByName('FechaPagoNomina').AsDateTime := edtFechaPago.Date;
  end;
end;

procedure TFrmCatalogoNominas.ActualizarEstadoBotones;
begin
  Panel_Nomina.Visible := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));
  Btn_Eliminar.Enabled := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));
  Btn_Cerrar.Enabled := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));
  //Btn_GuardarComo.Enabled := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));
  Btn_Guardar.Enabled := cdNomina.Active and (((cdNomina.RecordCount = 1) and (cdNomina.State = dsEdit)) or (cdNomina.State = dsInsert));
  Btn_Edit.Enabled := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));

  Panel_Nominas.Visible := cdNomina.Active;

  //Panel_Menu_Edicion.Visible := (cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert))) and (PageControl1.ActivePage = TabParametros);
  //Panel_Menu_Personal.Visible := (cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert))) and (PageControl1.ActivePage = TabPersonal);
  //Panel_Personal_Opciones.Visible := Panel_Menu_Personal.Visible;
  PageControl1.Visible := cdNomina.Active and ((cdNomina.RecordCount = 1) or (cdNomina.State = dsInsert));
end;

procedure TFrmCatalogoNominas.Btn_ExportarPDFClick(Sender: TObject);
var
  NombreCompleto: String;
begin
  Try
    Try
      PDFExport.DefaultPath := TempPath;
      NombreCompleto := cdNomina.FieldByName('FechaNomina').AsString;
      NombreCompleto := Copy(NombreCompleto, 1, 2);
      NombreCompleto := 'Nómina del ' + NombreCompleto + ' al ' + FormatDateTime('dd mmmm', cdNomina.FieldByName('FechaTerminoNomina').AsDateTime);
      PDFExport.FileName := NombreCompleto + '.pdf';
      NombreCompleto := TempPath;
      NombreCompleto := NombreCompleto + PDFExport.FileName;
      if RNomina.Export(PDFExport) then
        ShellExecute(Self.Handle, Nil, PChar(NombreCompleto), '', '', SW_SHOWNORMAL);
    Finally
      RNomina.ShowReport(True);
    End;
  Except
    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.Btn_ExportarPorPagosClick(Sender: TObject);
begin
  ExportarAExcelGeneral(cbReferenciaxPagos.Text);
end;

procedure TFrmCatalogoNominas.AdvGlowButton2Click(Sender: TObject);
begin
  RNomina.Print;
end;

procedure TFrmCatalogoNominas.AdvSmoothButton1Click(Sender: TObject);
begin
  if GridPersonal.SelectedCount > 0 then
  begin
    application.CreateForm(TfrmConceptoExtraEmpleado, frmConceptoExtraEmpleado);
    frmConceptoExtraEmpleado.edtFNombre.Text := StringReplace(GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString, ',', '',
                            [rfReplaceAll, rfIgnoreCase]);
    frmConceptoExtraEmpleado.btnBuscarClick(nil);
    frmConceptoExtraEmpleado.Show;
  end
  else
    InteliDialog.ShowModal('Aviso', 'Seleccione un personal para poder asignarle conceptos extra.', mtInformation, [mbOK], 0);
end;

procedure TFrmCatalogoNominas.Btn_SueldosSalarios_2Click(Sender: TObject);//pelu
var
  Excel, Workbook, Worksheet: Variant;
  rowx, num: Integer;
  mnom_total, tipo: TClientDataSet;
begin
(*
  try
  cursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  try
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

    Worksheet := Excel.Worksheets.Add;

    {$REGION 'Encabesado'}
    WorkSheet.cells[1,8] := 'FECHA';
    WorkSheet.cells[1,11] := 'PREMIO';
    WorkSheet.cells[1,12] := 'PREMIO';
    WorkSheet.cells[1,13] := 'HORAS EXTRAS';
    WorkSheet.cells[1,16] := 'DESPENSA Y PREV. SOCIAL';
    WorkSheet.cells[1,20] := 'PRIMA VACACIONAL';
    WorkSheet.cells[1,23] := 'PTU';
    WorkSheet.cells[1,26] := 'OTROS INGRESOS';
    WorkSheet.cells[1,29] := 'AGUINALDO Y GRATIFICACION';
    WorkSheet.cells[1,32] := 'PRIMA DOMINICAL';
    WorkSheet.cells[1,35] := 'INDENMIZACION';
    WorkSheet.cells[1,38] := 'DIAS FESTIVOS';
    WorkSheet.cells[1,42] := 'Dias';
    WorkSheet.cells[1,43] := 'ISPT';
    WorkSheet.cells[1,44] := 'INGRESO';
    WorkSheet.cells[1,45] := 'INGRESO';
    WorkSheet.cells[1,46] := 'INGRESO';
    WorkSheet.cells[1,47] := 'LIMITE';
    WorkSheet.cells[1,48] := 'EXEDENTE';
    WorkSheet.cells[1,49] := '% SOBRE';
    WorkSheet.cells[1,50] := 'IMPUESTO';
    WorkSheet.cells[1,51] := 'CUOTA';
    WorkSheet.cells[1,52] := 'IMPUESTO';
    WorkSheet.cells[1,53] := 'S-E.';
    WorkSheet.cells[1,54] := 'ISR (CAS)';
    WorkSheet.cells[1,55] := 'S.E.';
    WorkSheet.cells[1,56] := 'S.E. POR';
    WorkSheet.cells[1,57] := 'CAS PAGADO';
    WorkSheet.cells[1,58] := 'ISR A retener';


    WorkSheet.cells[2,1] := 'No.';
    WorkSheet.cells[2,2] := 'APELLIDO PATERNO';
    WorkSheet.cells[2,3] := 'APELLIDO MATERNO';
    WorkSheet.cells[2,4] := 'NOMBRE';
    WorkSheet.cells[2,5] := 'R.F.C.';
    WorkSheet.cells[2,6] := 'CURP';
    WorkSheet.cells[2,7] := 'S.D.';
    WorkSheet.cells[2,8] := 'ALTA';
    WorkSheet.cells[2,9] := 'BAJA';
    WorkSheet.cells[2,10] := 'SUELDOS';
    WorkSheet.cells[2,11] := 'PUNTUALIDAD';
    WorkSheet.cells[2,12] := 'ASISTENCIA';
    WorkSheet.cells[2,13] := 'TOTAL';
    WorkSheet.cells[2,14] := 'EXCENTO';
    WorkSheet.cells[2,15] := 'GRAVADAS';
    WorkSheet.cells[2,16] := 'TOTAL';
    WorkSheet.cells[2,17] := 'EXCENTO';
    WorkSheet.cells[2,18] := 'GRAVADA';
    WorkSheet.cells[2,19] := 'VACACIONES';
    WorkSheet.cells[2,20] := 'TOTAL';
    WorkSheet.cells[2,21] := 'EXCENTO';
    WorkSheet.cells[2,22] := 'GRAVADA';
    WorkSheet.cells[2,23] := 'TOTAL';
    WorkSheet.cells[2,24] := 'EXCENTO';
    WorkSheet.cells[2,25] := 'GRAVADO';
    WorkSheet.cells[2,26] := 'TOTAL';
    WorkSheet.cells[2,27] := 'EXCENTO';
    WorkSheet.cells[2,28] := 'GRAVADO';
    WorkSheet.cells[2,29] := 'TOTAL';
    WorkSheet.cells[2,30] := 'EXCENTO';
    WorkSheet.cells[2,31] := 'GRAVADO';
    WorkSheet.cells[2,32] := 'TOTAL';
    WorkSheet.cells[2,33] := 'EXCENTO';
    WorkSheet.cells[2,34] := 'GRAVADO';
    WorkSheet.cells[2,35] := 'TOTAL';
    WorkSheet.cells[2,36] := 'EXCENTO';
    WorkSheet.cells[2,37] := 'GRAVADO';
    WorkSheet.cells[2,38] := 'TOTAL';
    WorkSheet.cells[2,39] := 'EXCENTO';
    WorkSheet.cells[2,40] := 'GRAVADO';
    WorkSheet.cells[2,41] := 'TOTAL ING';
    WorkSheet.cells[2,42] := 'Trab.';
    WorkSheet.cells[2,43] := 'RETENIDO';
    WorkSheet.cells[2,44] := 'TOTAL';
    WorkSheet.cells[2,45] := 'EXENTO';
    WorkSheet.cells[2,46] := 'GRAVADO';
    WorkSheet.cells[2,47] := 'INFERIOR';
    WorkSheet.cells[2,48] := 'S/LIM. INF.';
    WorkSheet.cells[2,49] := 'EXEDENTE';
    WorkSheet.cells[2,50] := 'MARGINAL';
    WorkSheet.cells[2,51] := 'FIJA';
    WorkSheet.cells[2,52] := 'antes de SE';
    WorkSheet.cells[2,53] := 'que correspondio';
    WorkSheet.cells[2,54] := 'ANUAL';
    WorkSheet.cells[2,55] := 'PAGADO';
    WorkSheet.cells[2,56] := 'PAGAR';
    WorkSheet.cells[2,57] := 'EN EXCESO';
    WorkSheet.cells[2,58] := '(A FAVOR)';
    {$ENDREGION 'Encabesado'}

    tipo := TClientDataSet.Create(nil);
    mnom_total := TClientDataSet.Create(nil);

    if tipo.ProviderName = '' then
      if not CrearConjunto(tipo, 'nom_detallenomina_suc', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle Nóminas']);

    if Not CargarDatosFiltrados(tipo, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Detalle Nóminas', cdNomina.FieldByName('IdNomina').AsInteger, 'IdNomina']);

    if tipo.Active then
      tipo.Refresh
    else
      tipo.Open;

    if tipo.FieldByName('DiasDescanso').AsInteger > 0 then
    begin
      if mnom_total.ProviderName = '' then
        if not CrearConjunto(mnom_total, 'nom_nomina_totaliza_a', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Nóminas']);
    end
    else
    begin
      if mnom_total.ProviderName = '' then
        if not CrearConjunto(mnom_total, 'nom_nomina_totaliza_q', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Nóminas']);
    end;

    if Not CargarDatosFiltrados(mnom_total, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nóminas', cdNomina.FieldByName('IdNomina').AsInteger, 'IdNomina']);

    if mnom_total.Active then
      mnom_total.Refresh
    else
      mnom_total.Open;

    mnom_total.First;
    num:=1;
    rowx:=3;
    while Not mnom_total.Eof do
    begin
      {$REGION 'Datos'}
      WorkSheet.cells[rowx,1] := num;
      WorkSheet.cells[rowx,2] := mnom_total.fieldbyName('APaterno').AsString;
      WorkSheet.cells[rowx,3] := mnom_total.fieldbyName('AMaterno').AsString;
      WorkSheet.cells[rowx,4] := mnom_total.fieldbyName('Nombres').AsString;
      WorkSheet.cells[rowx,5] := mnom_total.fieldbyName('RFC').AsString;
      WorkSheet.cells[rowx,6] := mnom_total.fieldbyName('Curp').AsString;
      WorkSheet.cells[rowx,7] := mnom_total.fieldbyName('SalarioDiario').AsString;
      //WorkSheet.cells[2,7] := mnom_total.fieldbyName('SalarioIntegrado').AsString;
      WorkSheet.cells[rowx,8] := mnom_total.fieldbyName('FechaAlta').AsString;
      WorkSheet.cells[rowx,9] := mnom_total.fieldbyName('FechaBaja').AsString;
      WorkSheet.cells[rowx,10] := mnom_total.fieldbyName('Sueldos').AsString;
      WorkSheet.cells[rowx,11] := mnom_total.fieldbyName('PremioPuntualidad').AsString;
      WorkSheet.cells[rowx,12] := mnom_total.fieldbyName('PremioAsistencia').AsString;
      WorkSheet.cells[rowx,13] := mnom_total.fieldbyName('HorasExtra').AsString;
      WorkSheet.cells[rowx,14] := mnom_total.fieldbyName('HorasExtra').AsInteger-mnom_total.fieldbyName('HorasExtraGravables').AsInteger;
      WorkSheet.cells[rowx,15] := mnom_total.fieldbyName('HorasExtraGravables').AsInteger;
      WorkSheet.cells[rowx,16] := mnom_total.fieldbyName('Despensa').AsString;
      WorkSheet.cells[rowx,17] := mnom_total.fieldbyName('Despensa').AsInteger-mnom_total.fieldbyName('DespensaGrav').AsInteger;
      WorkSheet.cells[rowx,18] := mnom_total.fieldbyName('DespensaGrav').AsString;
      WorkSheet.cells[rowx,19] := mnom_total.fieldbyName('Vacaciones').AsString;
      //WorkSheet.cells[2,18] := mnom_total.fieldbyName('VacacionesGravadas').AsString;
      WorkSheet.cells[rowx,20] := mnom_total.fieldbyName('PrimaVacacional').AsString;
      WorkSheet.cells[rowx,21] := mnom_total.fieldbyName('PrimaVacacional').AsInteger-mnom_total.fieldbyName('PrimaVacacionalGravada').AsInteger;
      WorkSheet.cells[rowx,22] := mnom_total.fieldbyName('PrimaVacacionalGravada').AsString;
      WorkSheet.cells[rowx,23] := mnom_total.fieldbyName('PTU').AsString;
      WorkSheet.cells[rowx,24] := mnom_total.fieldbyName('PTU').AsInteger-mnom_total.fieldbyName('PTUGravable').AsInteger;
      WorkSheet.cells[rowx,25] := mnom_total.fieldbyName('PTUGravable').AsString;
      WorkSheet.cells[rowx,26] := mnom_total.fieldbyName('OtrosIngresos').AsString;
      WorkSheet.cells[rowx,27] := mnom_total.fieldbyName('OtrosIngresos').AsInteger-mnom_total.fieldbyName('OtrosIngresosGravables').AsInteger;
      WorkSheet.cells[rowx,28] := mnom_total.fieldbyName('OtrosIngresosGravables').AsString;
      WorkSheet.cells[rowx,29] := mnom_total.fieldbyName('Aguinaldo').AsString;
      WorkSheet.cells[rowx,30] := mnom_total.fieldbyName('Aguinaldo').AsInteger-mnom_total.fieldbyName('AguinaldoGravable').AsInteger;
      WorkSheet.cells[rowx,31] := mnom_total.fieldbyName('AguinaldoGravable').AsString;
      WorkSheet.cells[rowx,32] := mnom_total.fieldbyName('PrimaDominical').AsString;
      WorkSheet.cells[rowx,33] := mnom_total.fieldbyName('PrimaDominical').AsInteger-mnom_total.fieldbyName('PrimaDominicalGravable').AsInteger;
      WorkSheet.cells[rowx,34] := mnom_total.fieldbyName('PrimaDominicalGravable').AsString;
      WorkSheet.cells[rowx,35] := mnom_total.fieldbyName('Indemnizacion').AsString;
      WorkSheet.cells[rowx,36] := mnom_total.fieldbyName('Indemnizacion').AsInteger-mnom_total.fieldbyName('IndemnizacionGravable').AsInteger;
      WorkSheet.cells[rowx,37] := mnom_total.fieldbyName('IndemnizacionGravable').AsString;
      WorkSheet.cells[rowx,38] := mnom_total.fieldbyName('DiasFestivos').AsString;
      WorkSheet.cells[rowx,39] := mnom_total.fieldbyName('DiasFestivos').AsInteger-mnom_total.fieldbyName('DiasFestivosGrav').AsInteger;
      WorkSheet.cells[rowx,40] := mnom_total.fieldbyName('DiasFestivosGrav').AsInteger;

      WorkSheet.cells[rowx,42] := mnom_total.fieldbyName('DiasTrab').AsString;
      WorkSheet.cells[rowx,43] := mnom_total.fieldbyName('ISPTRetenido').AsString;
      WorkSheet.cells[rowx,47] := mnom_total.fieldbyName('LimiteInferior').AsString;
      WorkSheet.cells[rowx,48] := mnom_total.fieldbyName('ExedenteLimiteInferior').AsString;
      WorkSheet.cells[rowx,49] := mnom_total.fieldbyName('PorcentajeSExedente').AsString;
      WorkSheet.cells[rowx,50] := mnom_total.fieldbyName('ImpuestoMarginal').AsString;
      WorkSheet.cells[rowx,51] := mnom_total.fieldbyName('CuotaFija').AsString;
      WorkSheet.cells[rowx,52] := mnom_total.fieldbyName('ISPTAntesSubsidio').AsString;
      WorkSheet.cells[rowx,53] := mnom_total.fieldbyName('Subsidio').AsString;
      WorkSheet.cells[rowx,54] := mnom_total.fieldbyName('ISPTCAS').AsString;
      WorkSheet.cells[rowx,55] := mnom_total.fieldbyName('SEPagado').AsString;
      WorkSheet.cells[rowx,56] := mnom_total.fieldbyName('ISPTPorPagar').AsString;
      WorkSheet.cells[rowx,57] := mnom_total.fieldbyName('CASPagadoExceso').AsString;
      WorkSheet.cells[rowx,58] := mnom_total.fieldbyName('ISRARetener').AsString;
      {$ENDREGION 'Datos'}
      Inc(num);
      Inc(rowx);
      mnom_total.Next;
    end;

    {$REGION 'Formato'}
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(6)+IntToStr(1)].select;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(6)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(7)+IntToStr(1)+':'+LetraColumna(8)+IntToStr(1)].select;
    Excel.Range[LetraColumna(7)+IntToStr(1)+':'+LetraColumna(8)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(12)+IntToStr(1)+':'+LetraColumna(14)+IntToStr(1)].select;
    Excel.Range[LetraColumna(12)+IntToStr(1)+':'+LetraColumna(14)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(15)+IntToStr(1)+':'+LetraColumna(17)+IntToStr(1)].select;
    Excel.Range[LetraColumna(15)+IntToStr(1)+':'+LetraColumna(17)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(19)+IntToStr(1)+':'+LetraColumna(21)+IntToStr(1)].select;
    Excel.Range[LetraColumna(19)+IntToStr(1)+':'+LetraColumna(21)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(22)+IntToStr(1)+':'+LetraColumna(24)+IntToStr(1)].select;
    Excel.Range[LetraColumna(22)+IntToStr(1)+':'+LetraColumna(24)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(25)+IntToStr(1)+':'+LetraColumna(27)+IntToStr(1)].select;
    Excel.Range[LetraColumna(25)+IntToStr(1)+':'+LetraColumna(27)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(28)+IntToStr(1)+':'+LetraColumna(30)+IntToStr(1)].select;
    Excel.Range[LetraColumna(28)+IntToStr(1)+':'+LetraColumna(30)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(31)+IntToStr(1)+':'+LetraColumna(33)+IntToStr(1)].select;
    Excel.Range[LetraColumna(31)+IntToStr(1)+':'+LetraColumna(33)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(34)+IntToStr(1)+':'+LetraColumna(36)+IntToStr(1)].select;
    Excel.Range[LetraColumna(34)+IntToStr(1)+':'+LetraColumna(36)+IntToStr(1)].merge;
    Excel.Range[LetraColumna(37)+IntToStr(1)+':'+LetraColumna(39)+IntToStr(1)].select;
    Excel.Range[LetraColumna(37)+IntToStr(1)+':'+LetraColumna(39)+IntToStr(1)].merge;

    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].select;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].VerticalAlignment := xlBottom;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].Font.Bold := true;

    Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].select;
    Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].HorizontalAlignment := xlRight;
    Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].VerticalAlignment := xlBottom;

    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].select;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].Font.size := 8;

    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlDiagonalDown].LineStyle := xlNone;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlDiagonalUp].LineStyle := xlNone;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideVertical].weight := xlMedium;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideHorizontal].LineStyle := xlNone;

    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.colorIndex := 0;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders[xlInsideHorizontal].LineStyle := xlNone;

    Excel.Range[LetraColumna(6)+IntToStr(3)+':'+LetraColumna(57)+IntToStr(rowx)].NumberFormat := '###,###,##0.00';
    Excel.Range[LetraColumna(6)+IntToStr(3)+':'+LetraColumna(57)+IntToStr(rowx)].NumberFormat := '###,###,##0.00';

    Excel.cells.Columns.AutoFit;
    {$ENDREGION 'Formato'}
  finally
    FreeAndNil(tipo);
    FreeAndNil(mnom_total);
    Screen.Cursor := Cursor;
  end;
except
  on e:exception do
    InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
end;
*)
end;

procedure TFrmCatalogoNominas.tsTiposNominaChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  Cursor: TCursor;
begin
//  myNewTab := NewTab;
//
//  Try
//    Cursor := Screen.Cursor;
//    Try
//      Screen.Cursor := crAppStart;
//
//      if Not Assigned(cdTmpNomina) then
//      begin
//        cdTmpNomina := TClientDataSet.Create(Self);
//        dsTmpNomina := TDataSource.Create(self);
//        dsTmpNomina.DataSet := cdTmpNomina;
//        GridNominas.DataSource := dsTmpNomina;
//      end;
//
//      if cdTmpNomina.ProviderName = '' then
//        if Not CrearConjunto(cdTmpNomina, 'nom_nomina', ccSelect) then
//          raise InteligentException.CreateByCode(5, ['Nóminas']);
//
//      if Not CargarDatosFiltrados(cdTmpNomina, 'IdTipoNomina', [tsTiposNomina.AdvTabs.Items[NewTab].Tag]) then
//        raise InteligentException.CreateByCode(6, ['Tipos de Nómina', tsTiposNomina.AdvTabs.Items[NewTab].Tag, 'Id. Tipo de Nómina']);
//
//      if cdTmpNomina.Active then
//        cdTmpNomina.Refresh
//      else
//        cdTmpNomina.Open;
//    Finally
//      Screen.Cursor := Cursor;
//    End;
//  Except
//    on e:InteligentException do
//      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
//
//    on e:Exception do
//      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
//  End;
end;

procedure TFrmCatalogoNominas.Btn_ExcepcionesClick(Sender: TObject);
begin
  Try
    if GridPersonal.SelectedCount > 0 then
    begin
      Try
        if (Not cdExcepciones.Active) or ((cdExcepciones.Active) and (cdExcepciones.RecordCount > 0) and ((cdExcepciones.FieldByName('IdPersonal').AsInteger <> GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger))) then
        begin
          if cdExcepciones.ProviderName = '' then
            if Not CrearConjunto(cdExcepciones, 'nom_excepcionxpersonal', ccCatalog) then
              raise InteligentException.CreateByCode(5, ['Excepciones por Empleado']);

          if Not CargarDatosFiltrados(cdExcepciones, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Excepciones Especiales', cdNomina.FieldByName('IdPersonal').AsString + ' / ' + GridPersonal.Cell[9, GridPersonal.SelectedRow].AsString, 'Id. Nómina / Id. Personal']);

          cdExcepciones.Open;
        end;

        if cdExcepcionesUpt.ProviderName = '' then
          if Not CrearConjunto(cdExcepcionesUpt, 'nom_excepcionxpersonal', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Excepciones Especiales por Personal']);

        if cdExcepcionesCat.ProviderName = '' then
          if Not CrearConjunto(cdExcepcionesCat, 'nom_excepcion', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Excepciones Especiales']);

        if Not cdExcepcionesCat.Active then
          cdExcepcionesCat.Open;

        Application.CreateForm(TFrmExcepcionesEspeciales, FrmExcepcionesEspeciales);
        FrmExcepcionesEspeciales.dsExcepcionPersonal.DataSet := cdExcepciones;
        FrmExcepcionesEspeciales.dsExcepcionPersonalUpt.DataSet := cdExcepcionesUpt;
        FrmExcepcionesEspeciales.dsExcepcionesCat.DataSet := cdExcepcionesCat;
        FrmExcepcionesEspeciales.FechaInicio := cdNomina.FieldByName('FechaNomina').AsDateTime;
        FrmExcepcionesEspeciales.FechaTermino := cdNomina.FieldByName('FechaTerminoNomina').AsDateTime;
        FrmExcepcionesEspeciales.IdPersonal := GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger;
        {FrmExcepcionesEspeciales.dsPersonalTE.DataSet := cdPersonalTE;
        //FrmExcepciones.dsInasistenciaUpt.DataSet := cdInasistenciaUpt;

        if Not CargarDatosFiltrados(cdPersonalTEUpt, 'IdPersonal_TE', [-9]) then
          raise InteligentException.CreateByCode(21, ['Horas Extras']);

        if cdPersonalTEUpt.Active then
          cdPersonalTEUpt.Refresh
        else
          cdPersonalTEUpt.Open;}

        FrmExcepcionesEspeciales.ShowModal;
      Finally
        cdExcepciones.Close;
        {FrmTiempoExtra.dsPersonal.DataSet := Nil;
        cdPersonalTE.Close;
        cdPersonalTEUpt.Close;}
      End;
    end
    else
      InteliDialog.ShowModal('Aviso', 'Seleccione un personal para poder asignarle excepciones especiales.', mtInformation, [mbOK], 0);
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.Btn_ExportarNominasClick(Sender: TObject);
var
  frmEmergente: TForm;
  OldParent: TWinControl;
begin
//  Application.CreateForm(TFrmFormatosExcel, FrmFormatosExcel);
//  FrmFormatosExcel.Show;

  Application.CreateForm(TFrmNominasExcel, FrmNominasExcel);
  FrmNominasExcel.Show;

//  frmEmergente := TForm.Create(nil);
//  Try
//    Try
//      FrmEmergente.Width := 700;
//      FrmEmergente.Height := 400;
//      FrmEmergente.Caption := 'Seleccionar las Nóminas a exportar.';
//      CrearTabTipoNomina;
//
//      Try
//        OldParent := pnlNominaExcel.Parent;
//        pnlNominaExcel.Parent := frmEmergente;
//        pnlNominaExcel.Align := alClient;
//        pnlNominaExcel.Visible := True;
//        FrmEmergente.ShowModal;
//      Finally
//        pnlNominaExcel.Visible := False;
//        pnlNominaExcel.Align := alNone;
//        pnlNominaExcel.Parent := OldParent;
//      End;
//    Finally
//      FrmEmergente.Free;
//    End;
//  Except
//    on e:Exception do
//      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError,[mbok], 0);
//  End;
end;

procedure TFrmCatalogoNominas.Btn_PagoNominaClick(Sender: TObject);
var
  i: Integer;
  TotalImporte: Real;
  pLista: String;
  cdPersonalNomina: TClientDataSet;
begin
  Try
    try
      cdPersonalNomina := TClientDataSet.Create(self);
      AbrirPersonalIncluido(cdPersonalNomina, cdNOmina.FieldByName('IdNomina').asInteger, false);
      if GridPersonal.SelectedCount = 0 then
        raise InteligentException.CreateByCode(26, ['Personal de Nómina']);

      Application.CreateForm(TFrmPagoNomina, FrmPagoNomina);
      FrmPagoNomina.IdNomina := cdNomina.FieldByName('IdNomina').AsInteger;

      TotalImporte := 0;
      pLista := '';
      for i := 0 to GridPersonal.RowCount - 1 do
        if GridPersonal.Row[i].Selected then
        begin
          FrmPagoNomina.Cuenta := FrmPagoNomina.Cuenta +1;
          sCodigo := TCodigo.Create;
          sCodigo.Valor := GridPersonal.Cell[9, i].AsString;
          pLista := pLista + GridPersonal.Cell[9, i].AsString + ',';
          FrmPagoNomina.lbPersonal.AddItem(GridPersonal.Cell[0, i].AsString + ' | ' + GridPersonal.Cell[1, i].AsString + ' | ' + GridPersonal.Cell[8, i].AsString, sCodigo);

          TotalImporte := TotalImporte + StrToFloat(GridPersonal.Cell[8, i].AsString);
        end;

      // Verificar si ya se ha generado el conjunto de formas de pago
      if cdFormaPago.ProviderName = '' then
      begin
        if not CrearConjunto(cdFormaPago, 'nom_formapago', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Formas de pago de Nómina']);
      end;

      if Not cdFormaPago.Active then
        cdFormaPago.Open;

      cdFormaPago.First;
      FrmPagoNomina.cbFormaPago.Clear;
      while not cdFormaPago.Eof do
      begin
        FrmPagoNomina.cbFormaPago.Items.AddObject(cdFormaPago.FieldByName('Titulo').AsString, TObject(cdFormaPago.FieldByName('IdFormaPago').AsInteger));
        FrmPagoNomina.ItemCboxFormaPago.Properties.Items.AddObject(cdFormaPago.FieldByName('Titulo').AsString, TObject(cdFormaPago.FieldByName('IdFormaPago').AsInteger));
        cdFormaPago.Next;
      end;

      if cdFormaPago.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Formas de pago de Nómina']);

      FrmPagoNomina.dsFormaPago.DataSet := cdFormaPago;
      FrmPagoNomina.lblImporte.Caption := FloatToStrF(TotalImporte, ffCurrency, 16, 2);
      FrmPagoNomina.cbFormaPago.ItemIndex := 0;
      FrmPagoNomina.cbFormaPago.OnChange(FrmPagoNomina.cbFormaPago);
      FrmPagoNomina.pLista := pLista;
      frmPagoNomina.chkboxTimbrar.Visible := false;
      FrmPagoNomina.CxChkBoxPrueba.Visible := False;
      FrmPagoNomina.ShowModal;
      YaLeidoPersonalIncluido := False;
      TabPersonal.OnShow(Sender);

    finally
      cdPersonalNomina.Destroy;
    end;
  Except
    on e:InteligentException do
    begin
      if cdFormaPago.Active then
        cdFormaPago.Close;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;
    on e:Exception do
    begin
      if cdFormaPago.Active then
        cdFormaPago.Close;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmCatalogoNominas.btn_personal_fichaClick(Sender: TObject);
begin
  // Mostrar la ficha del personal
  Application.CreateForm(TFrmConsultaFichaPersonal, FrmConsultaFichaPersonal);
  FrmConsultaFichaPersonal.IdPersonal := StrToInt(GridPersonal.Cells[9,GridPersonal.SelectedRow]);
  FrmConsultaFichaPersonal.ShowModal;
end;

procedure TFrmCatalogoNominas.Btn_PolizaContableClick(Sender: TObject);
var
  LocReporte: TFrxReport;
  cdPoliza, cdPolizaConc: TClientDataSet;
  i: Integer;
  FieldName,
  ValorStr,
  Original: String;
  Condicion: Boolean;

function nombremes(mes: Integer): string;
const
  NomMes: Array[1..12] of String = ((' Ene '), (' Feb '), (' Mar '), (' Abr '), (' May '), (' Jun '),(' Jul '), (' Ago '), (' Sep '), (' Oct '), (' Nov '), (' Dic '));
  begin
    Result := NomMes[mes];
  end;
begin
  Try
    Try
      // Generar la poliza contable de la nómina
      Try
        // Crear el reporte
        LocReporte := TFrxReport.Create(Self);
        cdPoliza := TClientDataSet.Create(Self);
        cdPolizaConc := TClientDataSet.Create(Self);
        (*leyenda := 'Tranferencia de Nómina del ' +  VarToStr(dayof(cdNomina.FieldByName('FechaNomina').AsDateTime)) + ' - ' + VarToStr(dayof(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime)) + nombremes(MonthOfTheYear(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime)) + ' ' + cbbDeptos.Text;*)
        Leyenda := 'Tranferencia de Nómina del ' +  VarToStr(dayof(cdNomina.FieldByName('FechaNomina').AsDateTime)) + ' - ' + VarToStr(dayof(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime)) + nombremes(MonthOfTheYear(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime)) + ' ' + VarToStr(YearOf(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime));
        LocReporte.Name := 'Poliza_Contable';
        LocReporte.OnGetValue := RNomina.OnGetValue;

        // Crear los conjuntos de datos
        if Not CrearConjunto(cdPoliza, 'con_poliza_nomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['con_poliza_nomina']);

        if Not CargarDatosFiltrados(cdPoliza, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['con_poliza_nomina', cdNomina.FieldByName('IdNomina').AsInteger, 'Id. Nomina']);

        cdPoliza.Open;

        cdPoliza.Filter := 'modo is null';
        cdPoliza.Filtered := True;

        //Si hay nulos muestra reportito de rubros que no tienen cuenta contable
        if cdPoliza.RecordCount > 0 then
        begin
          frxPoliza.DataSet := cdPoliza;
          ClientModule1.ImprimeReporte('PolizaRubrosFaltantes.fr3', LocReporte);

          raise InteligentWarning.CreateByCode(24, ['La póliza no puedo ser generada' + #10 + #10 + 'El proceso ha sido cancelado por el sistema.']);
        end;

        cdPoliza.Filtered := False;//caso de que todos los registros tengan cuenta contabke
                                     //elimino el criterio de filtrado para poder mostrar la
                                     //poliza completa
        //y como el Senior Result es diferente de el valor entero de mrCancel imprimo la Póliza

        // Crear la estructura original
        for i := 0 to cdPoliza.FieldDefs.Count -1 do
          cdPolizaConc.FieldDefs.Add(cdPoliza.FieldDefs.Items[i].Name, cdPoliza.FieldDefs.Items[i].DataType, cdPoliza.FieldDefs.Items[i].Size, False);

        cdPolizaConc.CreateDataSet;
        cdPolizaConc.Open;

        while Not cdPoliza.Eof do
        begin
          if cdPoliza.FieldByName('Importe').AsFloat <> 0 then
          begin
            cdPolizaConc.Append;
            for i := 0 to cdPolizaConc.FieldDefs.Count -1 do
            begin
              FieldName := cdPolizaConc.FieldDefs.Items[i].Name;

              if (FieldName <> 'Cargo') and (FieldName <> 'Abono') then
              begin
                if CompareText(FieldName, 'Importe') = 0 then
                begin
                  // Verificar en donde se deben registrar los valores
                  // GASTOS = Cargo
                  // PASIVO y ACTIVO = Abono

                  // Intercambiar el criterio cuando se trate de valores negativos
                  if StrToFloat(cdPoliza.FieldByName(FieldName).AsString) < 0 then
                    Condicion := CompareText(cdPoliza.FieldByName('Modo').AsString, 'GASTOS') <> 0
                  else
                    Condicion := CompareText(cdPoliza.FieldByName('Modo').AsString, 'GASTOS') = 0;

                  ValorStr := cdPoliza.FieldByName(FieldName).AsString;
                  if ValorStr[1] = '-' then
                    ValorStr := Copy(ValorStr, 2, Length(ValorStr));

                  if Condicion then
                    cdPolizaConc.FieldByName('Cargo').AsString := ValorStr
                  else
                    cdPolizaConc.FieldByName('Abono').AsString := ValorStr;
                end
                else
                  cdPolizaConc.FieldByName(FieldName).AsVariant := cdPoliza.FieldByName(FieldName).AsVariant;
              end;
            end;

            cdPolizaConc.Post;
          end;

          cdPoliza.Next;
        end;

        // Verificar si existen registros a imprimir
        if cdPolizaConc.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['con_poliza_nomina']);

        // Generar el reporte de la póliza
        frxPoliza.DataSet := cdPolizaConc;
        cdPolizaConc.First;
        ClientModule1.ImprimeReporte('PolizaNomina.fr3', LocReporte); {, tfrxpreview(reporte.Preview));}

      Finally
        if Assigned(cdPoliza) and (cdPoliza.ProviderName <> '') then
        begin
          cdPoliza.Filtered := False;
          EliminarConjunto(cdPoliza);
        end;

        LocReporte.Destroy;
        cdPoliza.Destroy;
      End;
    Finally
      pnlSeleccionDepto.Parent := self;
      pnlSeleccionDepto.Align := alCustom;
      pnlSeleccionDepto.Visible := false;
    End;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.Btn_TiempoExtraClick(Sender: TObject);
begin
  //crear el conjunto de horas extras
  if GridPersonal.SelectedCount <= 0 then
  begin
    InteliDialog.ShowModal('Aviso', 'Seleccione un personal de la lista', mtInformation, [mbOK], 0);
    Exit;
  end;

  CdHorasExtras.Close;
  if Length(CdHorasExtras.ProviderName) = 0 then
  begin
    CrearConjunto(CdHorasExtras,'nom_personal_te',ccCatalog);
  end;
  CargarDatosFiltrados(CdHorasExtras,'Desde,Hasta',[ClientModule1.DatetoStrSql(cdNomina.FieldByName('fechanomina').AsDateTime),ClientModule1.DatetoStrSql(cdNomina.FieldByName('fechaterminonomina').AsDateTime)]);
  CdHorasExtras.Open;

  if Not YaCreado then
    CrearEstructura;

  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    AbrirNomina(cdNomina.FieldByName('IdNomina').AsInteger);

    AbrirPersonalIncluido(cdPersonalIncluido, cdBuscar.FieldByName('IdNomina').AsInteger, True, cdBuscar.FieldByName('tipocalculo').AsString = 'FINIQUITOS');

    Application.CreateForm(TFrmPersonalHExtra, FrmPersonalHExtra);
    FrmPersonalHExtra.DsExtras.dataset := CdHorasExtras;
    FrmPersonalHExtra.dsPersonalIncluido.DataSet := cdPersonalIncluido;
    FrmPersonalHExtra.IdTipoNomina := cdNomina.FieldByName('IdTipoNomina').AsInteger;
    FrmPersonalHExtra.IdNomina := cdBuscar.FieldByName('IdNomina').AsInteger;
    FrmPersonalHExtra.ModoHExtras := True;
    FrmPersonalHExtra.Fechai :=cdNomina.FieldByName('fechanomina').AsDateTime;
    FrmPersonalHExtra.FechaF :=cdNomina.FieldByName('fechaterminonomina').AsDateTime;
    FrmPersonalHExtra.ShowModal;

    {Application.CreateForm(TFrmPersonalNomina, FrmPersonalNomina);
    FrmPersonalNomina.DsExtras.dataset := CdHorasExtras;
    FrmPersonalNomina.dsPersonalIncluido.DataSet := cdPersonalIncluido;
    FrmPersonalNomina.IdTipoNomina := cdNomina.FieldByName('IdTipoNomina').AsInteger;
    FrmPersonalNomina.IdNomina := cdBuscar.FieldByName('IdNomina').AsInteger;
    FrmPersonalNomina.ModoHExtras := True;
    FrmPersonalNomina.Fechai :=cdNomina.FieldByName('fechanomina').AsDateTime;
    FrmPersonalNomina.FechaF :=cdNomina.FieldByName('fechaterminonomina').AsDateTime;
    FrmPersonalNomina.ShowModal;}
  Finally
    Screen.Cursor := Cursor;

    if cdPersonalIncluido.ProviderName <> '' then
    begin
      EliminarConjunto(cdPersonalIncluido);
      cdPersonalIncluido.ProviderName := '';
    end;

    //cdPersonalIncluido.destroy;
  End;
end;

procedure TFrmCatalogoNominas.Button1Click(Sender: TObject);
var
  Excel, Workbook, Worksheet: Variant;
  RowX, RowIni, RowTmp, ColY, ColIni, posSumPer, posSumDed, Recorrido, inicio, fin, i,ii: Integer;
  oldOrganizacion, oldCargo: string;
  TotalNomina: Extended;
  TempPath: String;
  LogoFile: String;
  cdPagosNominas: TClientDataSet;
  LocPercepciones, LocDeducciones, LocReferencias: TStringList;
  OldReferencia, ReferenciaPago, OldModo: string;
  cdConceptosNomina: TClientDataSet;
  Col, Ren, RenI: Integer;

procedure FormatoEncabezado(TipoLetra: string; Negrita: Boolean; ColorLetra: Integer; TamanoLetra: Integer; Color: Integer; Rango: String; Aplica: String);
begin
  if aplica <> 'CUERPO' then
  begin
    //FORMATO A CELDAS DE EXCEL
    Excel.Range[Rango].select;
    Excel.selection.interior.Color := Color;//11232555; <-Azul indigo
    //Bordes
    Excel.Selection.Borders[xlDiagonalDown].lineStyle := xlNone;
    Excel.Selection.Borders[xlDiagonalUp].lineStyle   := xlNone;
    Excel.Selection.Borders[xlEdgeLeft].lineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight    :=     xlMedium;
    Excel.Selection.Borders[xlEdgeTop].lineStyle :=  xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight    :=      xlMedium;
    Excel.Selection.Borders[xlEdgeRight].lineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight    :=    xlMedium;
    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].Weight  :=   xlThin;

    //Fuente
    Excel.Selection.Font.Bold :=     Negrita;
    Excel.Selection.Font.Name :=   TipoLetra;
    Excel.Selection.Font.Size := TamanoLetra;
    Excel.Selection.Font.Color := ColorLetra;
  end
  else
  begin
    Excel.Range[Rango].select;
    Excel.Selection.Borders[xlDiagonalDown].lineStyle := xlNone;
    Excel.Selection.Borders[xlDiagonalUp].lineStyle   := xlNone;
    Excel.Selection.Borders[xlEdgeLeft].lineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight    :=     xlMedium;
    Excel.Selection.Borders[xlEdgeTop].lineStyle  := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight     :=     xlMedium;
    Excel.Selection.Borders[xlEdgeRight].lineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight   :=     xlMedium;
    Excel.Selection.Borders[xlInsideVertical].LineStyle   := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].Weight    := xlThin;
    Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideHorizontal].Weight  := xlThin;
  end;
end;

begin
  try
    if dlgSaveExcel.Execute then
    begin
      dlgSaveExcel.FileName;
      cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      try
        if CxCbbRefencias.ItemIndex = -1  then
          ReferenciaPago := '-1'
        else
          ReferenciaPago := CxCbbRefencias.Text;

        cdConceptosNomina := TClientDataSet.Create(Self);

        //Traer y organizar datos de los pagos
        if Not Assigned(cdPagosNominas) then
          cdPagosNominas := TClientDataSet.Create(nil);

        if cdPagosNominas.ProviderName = '' then
          if Not CrearConjunto(cdPagosNominas, 'nom_pagosnomina', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Pagos Nómina']);

        if not CargarDatosFiltrados(cdPagosNominas, 'IdNomina,Referencia', [cdNomina.FieldByName('IdNomina').AsInteger, ReferenciaPago]) then
          raise InteligentException.CreateByCode(6, ['Pagos Nómina', 'IdNomina', 'IdNomina']);

        if cdPagosNominas.Active then
          cdPagosNominas.Refresh
        else
          cdPagosNominas.Open;

        if cdPagosNominas.RecordCount = 0 then
          raise InteligentException.CreateByCode(24, ['No hay registros para exportar a Excel']);

        // Obtener el universo de conceptos de este reporte
        if Not CrearConjunto(cdConceptosNomina, 'nom_pagosnomina', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Conceptos de Nóminas']);

        if Not CargarDatosFiltrados(cdConceptosNomina, 'IdNomina,Referencia', [cdNomina.FieldByName('IdNomina').AsInteger, ReferenciaPago]) then
          raise InteligentException.CreateByCode(6, ['Conceptos de Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'Id. Nómina']);

        cdConceptosNomina.Open;

        // Preparar el reporte
        Excel := CreateOleObject('Excel.Application');
        Excel.Visible:= true;
        Excel.DisplayAlerts := false;
        Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

        while Workbook.Sheets.Count > 1 do
          WorkBook.WorkSheets[1].Delete;

        WorkSheet := WorkBook.WorkSheets[1];

        // Generar el reporte
        OldReferencia := '*|*';
        Col := 2;
        OldModo := '';
        while not cdPagosNominas.Eof do
        begin
          if OldReferencia <> cdPagosNominas.FieldByName('Referencia').AsString then
          begin
            if OldReferencia <> cdPagosNominas.FieldByName('Referencia').AsString then
            begin
              OldReferencia := cdPagosNominas.FieldByName('Referencia').AsString;
              Inc(Col);
              OldModo := '';
              Ren := 2;
            end;

            // Poner los encabezados
            WorkSheet.cells[2, Col].Value := cdPagosNominas.FieldByName('Referencia').AsString;
          end;

          if (OldModo <> '') and (OldModo <> LeftStr(cdPagosNominas.FieldByName('Modo').AsString, 3)) and (LeftStr(cdPagosNominas.FieldByName('Modo').AsString, 3) = 'DED') then
            Inc(Ren);

          // Poner todos los conceptos para todos los pagos
          if cdConceptosNomina.Locate('CodigoConcepto', cdPagosNominas.FieldByName('CodigoConcepto').AsString, []) then
            WorkSheet.cells[Ren + cdConceptosNomina.RecNo, Col].Value := cdPagosNominas.FieldByName('Importe').AsString
          else
            WorkSheet.cells[Ren + cdConceptosNomina.RecNo, Col].Value := 0;

          OldModo := LeftStr(cdPagosNominas.FieldByName('Modo').AsString, 3);
          cdPagosNominas.Next;
        end;

        // Colocar los conceptos del cuadro y sus totales
        cdConceptosNomina.First;
        Ren := 3;
        RenI := Ren;
        OldModo := '';
        while not cdConceptosNomina.Eof do
        begin
          if (OldModo <> '') and (OldModo <> LeftStr(cdConceptosNomina.FieldByName('Modo').AsString, 3)) and (LeftStr(cdPagosNominas.FieldByName('Modo').AsString, 3) = 'DED') then
          begin
            WorkSheet.cells[Ren, 1].Select;
            Excel.Selection.Value := 'Total Percepciones';
            Excel.Selection.Font.Bold := True;
            Excel.Selection.HorizontalAlignment := xlCenter;

            WorkSheet.cells[cdConceptosNomina.RecordCount + RenI + 1, 1].Select;
            Excel.Selection.Value := 'Total Deducciones';
            Excel.Selection.Font.Bold := True;
            Excel.Selection.HorizontalAlignment := xlCenter;

            // Colocar las sumas hacia arriba
            for i := 2 to Col do
            begin
              WorkSheet.cells[Ren, i].FormulaR1C1 := '=SUM(R[-' + IntToStr(Ren - RenI) + ']C:R[-1]C)';
              WorkSheet.cells[cdConceptosNomina.RecordCount + RenI + 1, i].FormulaR1C1 := '=SUM(R[-' + IntToStr((cdConceptosNomina.RecordCount + 3) - Ren) + ']C:R[-1]C)';
              WorkSheet.cells[cdConceptosNomina.RecordCount + RenI + 2, i].FormulaR1C1 := '=+R[-' + IntToStr((cdConceptosNomina.RecordCount + 5) - Ren) + ']C-R[-1]C';

              WorkSheet.cells[Ren, i].Font.Bold := True;
              WorkSheet.cells[cdConceptosNomina.RecordCount + RenI + 1, i].Font.Bold := True;
              WorkSheet.cells[cdConceptosNomina.RecordCount + RenI + 2, i].Font.Bold := True;
            end;

            Inc(Ren);
          end;

          WorkSheet.cells[Ren, 1].Value := cdConceptosNomina.FieldByName('Titulo').AsString;

          if Col > 2 then
            WorkSheet.cells[Ren, 2].FormulaR1C1 := '=SUM(RC[1]:RC[' + IntToStr(Col - 2) + '])';

          OldModo := LeftStr(cdConceptosNomina.FieldByName('Modo').AsString, 3);

          Inc(Ren);
          cdConceptosNomina.Next;
        end;

        // Formato Encabezado
        Excel.Range['A1:' + LetraColumna(Col -1) + '2'].select;
        Excel.Selection.Interior.Color := clblack;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Name := 'Calibri';
        Excel.Selection.Font.Size :=        11;
        Excel.Selection.Font.Color := 16777215;

        Excel.Range['A1:' + LetraColumna(Col -1) + '1'].select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment   := xlCenter;
        Excel.Selection.Value := cdNomina.FieldByName('Titulo').AsString;

        Excel.Rows['1:1'].RowHeight := 18.75;
        Excel.Rows['2:2'].RowHeight := 76.5;

        Excel.Columns['A:A'].ColumnWidth := 29.29;
        Excel.Columns['B:B'].ColumnWidth := 15.57;
        Excel.Columns['C:' + LetraColumna(Col -1)].ColumnWidth := 14.29;

        Excel.Range['A2:' + LetraColumna(Col -1) + '2'].select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := True;

        WorkSheet.Cells[2, 2].Value := 'Importe Total Global';

        // Dar formato a los números de la cuadrícula
        Excel.Range['B3:' + LetraColumna(Col -1) + IntToStr(cdConceptosNomina.RecordCount + 5)].NumberFormat := '#,##0.00';

        // Colocar la cuadricula
        Excel.Range['A3:' + LetraColumna(Col -1) + IntToStr(cdConceptosNomina.RecordCount + 5)].Select;
        Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeLeft].Weight    :=       xlThin;
        Excel.Selection.Borders[xlEdgeTop].LineStyle  := xlContinuous;
        Excel.Selection.Borders[xlEdgeTop].Weight     :=       xlThin;
        Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeBottom].Weight  :=       xlThin;
        Excel.Selection.Borders[xlEdgeRight].LineStyle  := xlContinuous;
        Excel.Selection.Borders[xlEdgeRight].Weight   :=       xlThin;
        Excel.Selection.Borders[xlInsideVertical].LineStyle   := xlContinuous;
        Excel.Selection.Borders[xlInsideVertical].Weight    := xlThin;
        Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlInsideHorizontal].Weight  := xlThin;

        //Color de Totales
        Excel.Range['A' + IntToStr(ren+1) + ':' + LetraColumna(Col -1) + IntToStr(ren+1)].Select;
        Excel.Selection.Interior.Color := 49407;

        Excel.ActiveWindow.Zoom := 100;
      finally
        if Assigned(cdConceptosNomina) then
        begin
          EliminarConjunto(cdConceptosNomina);
          cdConceptosNomina.Free;
        end;
      end;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.EstadoObjetos(Estado: Boolean);
begin
  if Estado then
  begin
    Edt_Domingos.BorderStyle    := TFormBorderStyle.bsSingle;
    Edt_Festivos.BorderStyle    := TFormBorderStyle.bsSingle;
    Btn_Guardar.Enabled := cdNomina.Active and (cdNomina.State in [dsEdit, dsInsert]);
  end
  else
  begin
    Edt_Domingos.BorderStyle    := TFormBorderStyle.bsNone;
    Edt_Festivos.BorderStyle    := TFormBorderStyle.bsNone;
  end;
end;

procedure TFrmCatalogoNominas.CrearEstructura;
var
  Cursor: TCursor;
begin
//  cdDetalleSave := TClientDataSet.Create(Self);
//  cdDetalleSave.Name := 'cdDetalleSaveX';
//  FindComponent('cdDetalleSaveX');
  cdDetalle := TClientDataSet.Create(Self);

  FDSDetalle.DataSet := cdDetalle;

  // Verificar el tipo de formato de la ventana (0 = Proceso General, 1 = Proceso Individual)
  { spCalculoGeneral.Visible := True;
    AdvOfficePager1.Visible := Not spCalculoGeneral.Visible; }
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

//      if cdDetalleSave.ProviderName = '' then
//        if Not CrearConjunto(cdDetalleSave, 'nom_detallenomina', ccUpdate) then
//          raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);
//
//      if Not CargarDatosFiltrados(cdDetalleSave, 'IdPersonal', [-9]) then
//        raise InteligentException.CreateByCode(21, ['Detalle de Nómina']);
//
//      cdDetalleSave.Open; // Traer la estructura de la tabla

      if Not CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Personal']);

      if cdBuscar.ProviderName = '' then
        if Not CrearConjunto(cdBuscar, 'nom_nomina', ccCatalog) then
          raise InteligentException.CreateByCode(16, ['Nóminas']);

      if Not CrearConjunto(cdPersonalNomina, 'nuc_personal_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(16, ['Personal para Nómina']);

      if Not CrearConjunto(cdExcepciones, 'nom_excepcionxpersonal', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Excepciones por Empleado']);

      if Not CrearConjunto(cdConcepto, 'nom_concepto', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos de Nómina']);

      if Not CrearConjunto(cdConceptoExtra, 'nom_conceptosextraxempleado', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos Extra de Nómina']);

      cdDetalle.FieldDefs.Add('IdDetalleNomina', ftInteger);
      cdDetalle.FieldDefs.Add('IdOrganizacion', ftInteger);
      cdDetalle.FieldDefs.Add('IdPersonal', ftInteger);
      cdDetalle.FieldDefs.Add('IdNomina', ftInteger);
      cdDetalle.FieldDefs.Add('IdCargo', ftInteger);
      cdDetalle.FieldDefs.Add('IdDepartamento', ftInteger);
      cdDetalle.FieldDefs.Add('IdFormaPago', ftInteger);
      cdDetalle.FieldDefs.Add('CodigoConcepto', ftString, 100);
      cdDetalle.FieldDefs.Add('IdGrupoConcepto', ftInteger);
      cdDetalle.FieldDefs.Add('Clave', ftString, 100);
      cdDetalle.FieldDefs.Add('Titulo', ftString, 100);
      cdDetalle.FieldDefs.Add('Descripcion', ftString, 100);
      cdDetalle.FieldDefs.Add('Modo', ftString, 100);
      cdDetalle.FieldDefs.Add('Imprime', ftString, 2);
      cdDetalle.FieldDefs.Add('Valor', ftString, 100);
      cdDetalle.FieldDefs.Add('Cargo', ftString, 100);

      cdDetalle.CreateDataSet;

      cdGruposConcepto := TClientDataSet.Create(Self);
      cdSumaConcepto := TClientDataSet.Create(Self);

      // Proceder con el proceso general de la nómina
      if Not CrearConjunto(cdGruposConcepto, 'nom_grupoconcepto', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Grupos de Concepto']);

      if Not CrearConjunto(cdSumaConcepto, 'nom_detallenomina_suma', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Suma de Conceptos']);

      cdGruposConcepto.Open;

      // Crear los contenedores para las prestaciones y deducciones por departamento
      memDeptoPercepciones.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memDeptoPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
      memDeptoPercepciones.FieldDefs.Add('Titulo', ftString, 20, False);
      memDeptoPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeptoPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeptoPercepciones.FieldDefs.Add('Orden', ftString, 10, False);
      memDeptoPercepciones.FieldDefs.Add('Modo', ftString, 50, False);
      memDeptoPercepciones.FieldDefs.Add('idAgrupador', ftString, 100, False);
      memDeptoPercepciones.CreateDataSet;
      memDeptoPercepciones.Open;

      memDeptoDeducciones.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memDeptoDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 60, False);
      memDeptoDeducciones.FieldDefs.Add('Titulo', ftString, 40, False);
      memDeptoDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeptoDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeptoDeducciones.FieldDefs.Add('Orden', ftString, 10, False);
      memDeptoDeducciones.FieldDefs.Add('Modo', ftString, 50, False);
      memDeptoDeducciones.FieldDefs.Add('idAgrupador', ftString, 100, False);
      memDeptoDeducciones.CreateDataSet;
      memDeptoDeducciones.Open;

      {$REGION 'Recibo'}
      memDeptoPercepciones2.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memDeptoPercepciones2.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
      memDeptoPercepciones2.FieldDefs.Add('Titulo', ftString, 20, False);
      memDeptoPercepciones2.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeptoPercepciones2.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeptoPercepciones2.FieldDefs.Add('Orden', ftString, 10, False);
      memDeptoPercepciones2.FieldDefs.Add('Modo', ftString, 50, False);
      memDeptoPercepciones2.FieldDefs.Add('idAgrupador', ftString, 100, False);
      memDeptoPercepciones2.CreateDataSet;
      memDeptoPercepciones2.Open;

      memDeptoDeducciones2.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memDeptoDeducciones2.FieldDefs.Add('CodigoConcepto', ftString, 60, False);
      memDeptoDeducciones2.FieldDefs.Add('Titulo', ftString, 40, False);
      memDeptoDeducciones2.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeptoDeducciones2.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeptoDeducciones2.FieldDefs.Add('Orden', ftString, 10, False);
      memDeptoDeducciones2.FieldDefs.Add('Modo', ftString, 50, False);
      memDeptoDeducciones2.FieldDefs.Add('IdAgrupador', ftString, 100, False);
      memDeptoDeducciones2.CreateDataSet;
      memDeptoDeducciones2.Open;
      {$ENDREGION}

      memObligacion.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memObligacion.FieldDefs.Add('CodigoConcepto', ftString, 60, False);
      memObligacion.FieldDefs.Add('Nombre', ftString, 80, False);
      memObligacion.FieldDefs.Add('Importe', ftFloat, 0, False);
      memObligacion.FieldDefs.Add('IdAgrupador', ftString, 100, False);
      memObligacion.CreateDataSet;
      memObligacion.Open;

      memRubrosIMSS.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memRubrosIMSS.FieldDefs.Add('IdGrupoConcepto', ftInteger, 0, False);
      memRubrosIMSS.FieldDefs.Add('Nombre', ftString, 80, False);
      memRubrosIMSS.FieldDefs.Add('Patronal', ftFloat, 0, False);
      memRubrosIMSS.FieldDefs.Add('Obrero', ftFloat, 0, False);
      memRubrosIMSS.FieldDefs.Add('IdAgrupador', ftString, 100, False);
      memRubrosIMSS.CreateDataSet;
      memRubrosIMSS.Open;

      memPercepciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 16, False);
      memPercepciones.FieldDefs.Add('Titulo', ftString, 50, False);
      memPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memPercepciones.FieldDefs.Add('Modo', ftString, 50, False);
      memPercepciones.FieldDefs.Add('Imprime', ftString, 5, False);
      memPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memPercepciones.FieldDefs.Add('Orden', ftString, 10, False);
      memPercepciones.CreateDataSet;
      memPercepciones.Open;

      memPercepciones2.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memPercepciones2.FieldDefs.Add('CodigoConcepto', ftString, 16, False);
      MemPercepciones2.FieldDefs.Add('Descripcion1', ftString, 255, False); //*Revision*/
      MemPercepciones2.FieldDefs.Add('Gravado', ftFloat, 0, False);
      MemPercepciones2.FieldDefs.Add('Excento', ftFloat, 0, False);
      memPercepciones2.FieldDefs.Add('Titulo', ftString, 50, False);
      memPercepciones2.FieldDefs.Add('Nombre', ftString, 80, False);
      memPercepciones2.FieldDefs.Add('Modo', ftString, 50, False);
      memPercepciones2.FieldDefs.Add('Imprime', ftString, 5, False);
      memPercepciones2.FieldDefs.Add('Importe', ftFloat, 0, False);
      memPercepciones2.FieldDefs.Add('Orden', ftString, 10, False);
      memPercepciones2.CreateDataSet;
      memPercepciones2.Open;

      memDeducciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 16, False);
      memDeducciones.FieldDefs.Add('Titulo', ftString, 50, False);
      memDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeducciones.FieldDefs.Add('Modo', ftString, 50, False);
      memDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeducciones.FieldDefs.Add('Orden', ftString, 10, False);
      memDeducciones.CreateDataSet;
      memDeducciones.Open;

      memDeducciones2.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memDeducciones2.FieldDefs.Add('CodigoConcepto', ftString, 16, False);
      memDeducciones2.FieldDefs.Add('Titulo', ftString, 50, False);
      memDeducciones2.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeducciones2.FieldDefs.Add('Modo', ftString, 50, False);
      memDeducciones2.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeducciones2.FieldDefs.Add('Orden', ftString, 10, False);
      memDeducciones2.CreateDataSet;
      memDeducciones2.Open;

      //los generales
      // Crear los contenedores que mostraran todas las sumatorias de todo el reporte
      //sumatoria de deducciones
      {MemGenDeducciones.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      MemGenDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 60, False);
      MemGenDeducciones.FieldDefs.Add('Titulo', ftString, 40, False);
      MemGenDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
      MemGenDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      MemGenDeducciones.FieldDefs.Add('Orden', ftString, 10, False);
      MemGenDeducciones.CreateDataSet;
      MemGenDeducciones.Open;}
      //sumatoria de obligaciones
      memgenObligacion.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memgenObligacion.FieldDefs.Add('CodigoConcepto', ftString, 60, False);
      memgenObligacion.FieldDefs.Add('Nombre', ftString, 80, False);
      memgenObligacion.FieldDefs.Add('Importe', ftFloat, 0, False);
      memgenObligacion.CreateDataSet;
      memgenObligacion.Open;
      //sumatorias de rubros imss
      memGenRubroImss.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
      memGenRubroImss.FieldDefs.Add('IdGrupoConcepto', ftInteger, 0, False);
      memGenRubroImss.FieldDefs.Add('Nombre', ftString, 80, False);
      memGenRubroImss.FieldDefs.Add('Patronal', ftFloat, 0, False);
      memGenRubroImss.FieldDefs.Add('Obrero', ftFloat, 0, False);
      memGenRubroImss.CreateDataSet;
      memGenRubroImss.Open;

      YaCreado := True;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogoNominas.ImprimeCalculo(Id: Integer);
begin
  // Proceder con la impresión de los datos del registro seleccionado
  if (Id > 0) and (cdPersonalDetalleNomina.Locate('IdPersonal', Id, [])) then
  begin
    Try
      cdDetalle.Filter := 'Modo <> ' + QuotedStr('MEMORIA') + ' AND Modo <> ' + QuotedStr('EMPLEADO');
      cdDetalle.Filtered := True;

      ClientModule1.ImprimeReporte('CalculoNomina.fr3', RSubReporte);
      { RSubReporte.LoadFromFile('C:\Proyectos DELPHI XE\Actualizaciones Proyecto Nucleo\Enviado 09-05-2011\Utidel RHH\Reportes\CalculoNomina.fr3');
        RSubReporte.ShowReport; }
    Finally
      cdDetalle.Filtered := False;
    End;
  end;
end;

procedure TFrmCatalogoNominas.ImprimirReportedeNmina1Click(Sender: TObject);
var
  Excel, Workbook, Worksheet: Variant;
  RowX, ColY, Recorrido, inicio, fin: Integer;
  oldOrganizacion, oldCargo: string;
  TotalNomina: Extended;
  TempPath: String;
  LogoFile: String;
begin
  try
    if dlgSaveExcel.Execute then
    begin
      dlgSaveExcel.FileName;
      cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      try
        //HOja
        Excel := CreateOleObject('Excel.Application');
        // Mostrar el excel
        Excel.Visible:= true;
        // evitar que nos pregunte si deseamos sobreescribir el archivo
        Excel.DisplayAlerts := false;
        // agregar libro de trabajo
        Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

        // Eliminar todas las hojas excepto 1
        while Workbook.Sheets.Count > 1 do
          WorkBook.WorkSheets[1].Delete;

          //Excel.ActiveWindow.SelectedSheets.Delete;

        // tomar una referencia a la hoja creada
        WorkSheet := WorkBook.WorkSheets[1];
        RowX := 7;
        ColY := 1;
        Recorrido := 0;
        TotalNomina := 0.00;
        //Encabezado
        TempPath := GetEnvironmentVariable('TEMP');
        LogoFile := TempPath + '\Temp.bmp';
        TBlobField( Form2.cdImagen.FieldByName('imagen1')).SaveToFile(LogoFile);

        WorkSheet.shapes.addpicture(LogoFile, False, True, 10, 10, 150, 75) ;
        WorkSheet.cells[1, ColY + 4] := 'LISTADO DE NOMINAS POR PUESTO.';
        WorkSheet.cells[1, ColY + 4].select;
        Excel.Selection.Font.Bold :=   True;
        Excel.selection.Font.Size := 14;
        Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(9)+IntToStr(1)].select;
        Excel.selection.merge;
        Excel.selection.HorizontalAlignment := xlCenter;

        WorkSheet.cells[2, ColY + 4] := 'NOMINA: ' + cdNomina.FieldByName('Titulo').AsString;
        WorkSheet.cells[2, ColY + 4].select;
        Excel.Selection.Font.Bold := True;
        Excel.selection.Font.Size := 14;
        Excel.Range[LetraColumna(0)+IntToStr(2)+':'+LetraColumna(9)+IntToStr(2)].select;
        Excel.selection.merge;
        Excel.selection.HorizontalAlignment := xlCenter;

        WorkSheet.cells[RowX, ColY]     :=         'CLAVE';
        WorkSheet.cells[RowX, ColY + 1] :=      'EMPLEADO';
        WorkSheet.cells[RowX, ColY + 2] :=  'ORGANIZACION';
        WorkSheet.cells[RowX, ColY + 3] :=  'CARGO/PUESTO';
        WorkSheet.cells[RowX, ColY + 4] :=  'PERCEPCIONES';
        WorkSheet.cells[RowX, ColY + 5] :=   'DEDUCCIONES';
        WorkSheet.cells[RowX, ColY + 6] := 'TOTAL A PAGAR';
        WorkSheet.cells[RowX, ColY + 7] := 'FORMA DE PAGO';
        WorkSheet.cells[RowX, ColY + 8] := 'ESTADO TIMBRE';

        Excel.Range[LetraColumna(0)+IntToStr(RowX)+':'+LetraColumna(9)+IntToStr(RowX)].select;
        Excel.selection.interior.Color := 11232555;
        //Bordes
        Excel.Selection.Borders[xlDiagonalDown].lineStyle :=   xlNone;
        Excel.Selection.Borders[xlDiagonalUp].lineStyle   :=   xlNone;
        Excel.Selection.Borders[xlEdgeBottom].lineStyle :=     xlContinuous;
        Excel.Selection.Borders[xlEdgeBottom].Weight      := xlMedium;
        Excel.Selection.Borders[xlEdgeLeft].lineStyle := xlContinuous;
        Excel.Selection.Borders[xlEdgeLeft].Weight        := xlMedium;
        Excel.Selection.Borders[xlEdgeTop].lineStyle :=  xlContinuous;
        Excel.Selection.Borders[xlEdgeTop].Weight         := xlMedium;
        Excel.Selection.Borders[xlEdgeRight].lineStyle :=      xlContinuous;
        Excel.Selection.Borders[xlEdgeRight].Weight    :=    xlMedium;
        Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
        Excel.Selection.Borders[xlInsideVertical].Weight    := xlThin;
        //Fuente
        Excel.Selection.Font.Bold :=      True;
        Excel.Selection.Font.Name := 'Calibri';
        Excel.Selection.Font.Size :=        12;
        Excel.Selection.Font.Color :=  clWhite;
        //Cuerpo - Datos
        AbrirPersonalIncluido(cdPersonalIncluido, cdNomina.FieldByName('IdNomina').AsInteger, False);
        cdPersonalIncluido.IndexFieldNames := 'TituloDepartamento';
        cdPersonalIncluido.First;
        //Crear la primera sección para el subtitulo
        if cdPersonalIncluido.RecordCount > 0 then
        begin
          //WorkSheet.cells[RowX, ColY + 1] := cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
          WorkSheet.cells[RowX + 1, ColY + 2] := cdPersonalIncluido.FieldByName('TituloDepartamento').AsString;
          Excel.Range[LetraColumna(0)+IntToStr(RowX+1)+':'+LetraColumna(9)+IntToStr(RowX+1)].select;
          Excel.selection.Merge;
          Excel.selection.HorizontalAlignment := -4131;
          Excel.selection.interior.Color := 11579568;
          oldOrganizacion := cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
          oldCargo := cdPersonalIncluido.FieldByName('TituloDepartamento').AsString;
          RowX := RowX + 2;
        end;
        while not cdPersonalIncluido.Eof do
        begin
          WorkSheet.cells[RowX, ColY]     :=     cdPersonalIncluido.FieldByName('CodigoPersonal').AsString;
          WorkSheet.cells[RowX, ColY + 1] :=     cdPersonalIncluido.FieldByName('NombreCompleto').AsString;
          WorkSheet.cells[RowX, ColY + 2] := cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
          WorkSheet.cells[RowX, ColY + 3] :=        cdPersonalIncluido.FieldByName('TituloCargo').AsString;
          WorkSheet.cells[RowX, ColY + 4] := StrToFloatDef(cdPersonalIncluido.FieldByName('TotPer').AsString, 0);
          WorkSheet.cells[RowX, ColY + 5] := StrToFloatDef(cdPersonalIncluido.FieldByName('TotDed').AsString, 0);
          WorkSheet.cells[RowX, ColY + 6] := StrToFloatDef(cdPersonalIncluido.FieldByName('Neto').AsString, 0);
          WorkSheet.cells[RowX, ColY + 7] :=    cdPersonalIncluido.FieldByName('TituloFormaPago').asString;
          WorkSheet.cells[RowX, ColY + 8] :=             cdPersonalIncluido.FieldByName('Estado').AsString;
          Inc(Recorrido);
          Inc(RowX);
          TotalNomina := TotalNomina + StrToFloatDef(cdPersonalIncluido.FieldByName('Neto').AsString, 0);
          cdPersonalIncluido.Next;
          if (oldCargo <> cdPersonalIncluido.FieldByName('TituloDepartamento').AsString) or (cdPersonalIncluido.Eof)  then
          begin
            WorkSheet.cells[RowX, ColY + 3] := 'TOTAL ' + oldCargo;
            WorkSheet.cells[RowX, ColY + 3].select;
            Excel.Selection.Font.Bold := True;
            WorkSheet.cells[RowX, 5].Select;
            Excel.ActiveCell.FormulaR1C1 := '=SUM(R[-' + IntToStr(Recorrido) +']C:R[-1]C)';
            Excel.Selection.Font.Bold := true;
            WorkSheet.cells[RowX, 6].Select;
            Excel.ActiveCell.FormulaR1C1 := '=SUM(R[-' + IntToStr(Recorrido) +']C:R[-1]C)';
            Excel.Selection.Font.Bold := true;
            WorkSheet.cells[RowX, 7].Select;
            Excel.ActiveCell.FormulaR1C1 := '=SUM(R[-' + IntToStr(Recorrido) +']C:R[-1]C)';
            Excel.Selection.Font.Bold := true;

            //Formato
            Excel.Range[LetraColumna(0)+IntToStr(RowX-recorrido)+':'+LetraColumna(9)+IntToStr(RowX -1)].select;
            Excel.Selection.Borders[xlDiagonalDown].lineStyle :=   xlNone;
            Excel.Selection.Borders[xlDiagonalUp].lineStyle   :=   xlNone;
            Excel.Selection.Borders[xlEdgeBottom].lineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeBottom].Weight      := xlMedium;
            Excel.Selection.Borders[xlEdgeLeft].lineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeLeft].Weight        := xlMedium;
            Excel.Selection.Borders[xlEdgeTop].lineStyle  := xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight         := xlMedium;
            Excel.Selection.Borders[xlEdgeRight].lineStyle :=  xlContinuous;
            Excel.Selection.Borders[xlEdgeRight].Weight       := xlMedium;
            Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideVertical].Weight  :=   xlThin;

            Excel.Range[LetraColumna(4)+IntToStr(RowX-recorrido)+':'+LetraColumna(6)+IntToStr(RowX)].select;
            Excel.Selection.NumberFormat := '$ #,##0.00';
            Recorrido := 0;
            Inc(RowX);
          end;
          (*if oldOrganizacion <> cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString then
          begin
            WorkSheet.cells[RowX, ColY + 1] := cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
            oldOrganizacion := cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
            Excel.Range[LetraColumna(0)+IntToStr(RowX)+':'+LetraColumna(10)+IntToStr(RowX)].select;
            Excel.selection.Merge;
            Excel.selection.HorizontalAlignment := -4131;
            Excel.selection.interior.Color := 49407;
            Inc(RowX);
          end;
          *)
          if oldCargo <> cdPersonalIncluido.FieldByName('TituloDepartamento').AsString then
          begin
            WorkSheet.cells[RowX, ColY + 1] := cdPersonalIncluido.FieldByName('TituloDepartamento').AsString;
            oldCargo := cdPersonalIncluido.FieldByName('TituloDepartamento').AsString;
            Excel.Range[LetraColumna(0)+IntToStr(RowX)+':'+LetraColumna(9)+IntToStr(RowX)].select;
            Excel.selection.Merge;
            Excel.selection.HorizontalAlignment := -4131;
            Excel.selection.interior.Color := 11579568;
            Excel.Columns[LetraColumna(0)+':'+LetraColumna(9)].EntireColumn.autofit;
            Inc(RowX);
          end;
        end;
        WorkSheet.cells[3, ColY + 8 ] := 'PERSONAL INCLUIDO: ' + IntToStr(cdPersonalIncluido.RecordCount);
        WorkSheet.cells[4, ColY + 8 ] := 'TOTAL NOMINA: $ ' + FloatToStr(TotalNomina);
        //WorkSheet.cells[3, 9 ].Select;
        Excel.Range[LetraColumna(0)+IntToStr(3)+':'+LetraColumna(9)+IntToStr(3)].select;
        Excel.Selection.Merge;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.Font.Bold := True;
        //WorkSheet.cells[4, 9 ].Select;
        Excel.Range[LetraColumna(0)+IntToStr(4)+':'+LetraColumna(9)+IntToStr(4)].select;
        Excel.Selection.Merge;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.Font.Bold := True;
        //guardar archivo

        try
          Excel.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + '.xls');
          InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
        except
          on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
        end;
      finally
      end;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
  end;
end;

procedure TFrmCatalogoNominas.ModificarClculo1Click(Sender: TObject);
var
  cdEmpleado: TClientDataSet;
begin
  try
    cdEmpleado := TClientDataset.Create(self);
    try
      //Validar que si ya se encuentra pagado el empleado no permita modificar el cálculo
      if cdEmpleado.ProviderName = '' then
        if Not CrearConjunto(cdEmpleado, 'nom_detallenomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

      if Not CargarDatosFiltrados(cdEmpleado, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Detalle de Nómina', GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger, 'Id. Personal']);

      if CdEmpleado.Active then
        cdEmpleado.Refresh
      else
        cdEmpleado.Open;

      if cdEmpleado.RecordCount = 1 then
      begin
        if Not cdEmpleado.FieldByName('IdFormaPago').IsNull then
          raise InteligentException.CreateByCode(24, ['El registro de cálculo de Nómina del empleado ' + GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString + ' no puede ser modificado debido a que este ya ha sido indicado como pagado físicamente.']);

        Btn_Modificar_Calculo.Click;
      end;
    finally
      cdEmpleado.destroy;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoNominas.onClickCheck(sender: TObject);
begin
  PrevReport.ThumbnailVisible := TCheckBox(Sender).Checked;
end;

procedure TFrmCatalogoNominas.onClickExp(Sender: TObject);
var
  NombreCompleto: String;
  NombreDoc: string;
  ObjetoTipo: Integer;
begin
  Try
    Try
      NombreDoc := StringReplace(TabCntMain.Pages[TabCntMain.ActivePageIndex].Caption, ':', '', [rfReplaceAll, rfIgnoreCase]);
      NombreDoc := StringReplace(NombreDoc, '<', '', [rfReplaceAll, rfIgnoreCase]);
      NombreDoc := StringReplace(NombreDoc, '>', '', [rfReplaceAll, rfIgnoreCase]);
      PDFExport.DefaultPath := TempPath;
      NombreCompleto := cdNomina.FieldByName('FechaNomina').AsString;
      NombreCompleto := Copy(NombreCompleto, 1, 2);
      NombreCompleto := 'Nómina del ' + NombreCompleto + ' al ' + FormatDateTime('dd mmmm', cdNomina.FieldByName('FechaTerminoNomina').AsDateTime) +  ' ' + nombreDoc;
      PDFExport.FileName := NombreCompleto + '.pdf';
      NombreCompleto := TempPath;
      NombreCompleto := NombreCompleto + PDFExport.FileName;
      ObjetoTipo :=  TabCntMain.Pages[TabCntMain.ActivePageIndex].Tag;
      if TfrxReport(TabCntMain.Pages[TabCntMain.ActivePageIndex].FindComponent(TAdvGlowButton(sender).Hint)).Export(PDFExport) then
        //ShellExecute(Self.Handle, Nil, PChar(NombreCompleto), '', '', SW_SHOWNORMAL);
      //Si es 0 es una tab creada para organizaciones
      {if TabCntMain.Pages[TabCntMain.ActivePageIndex].Tag = 0 then
        lblSelOpcion.Caption := 'Registros Patronales'
      else   //Si es 1 es una tab creada para localidades
        lblSelOpcion.Caption := 'Localidades';}
    Finally
      if ObjetoTipo = 0 then
        GenerarReporte('Nomina.fr3',TfrxReport(TabCntMain.Pages[TabCntMain.ActivePageIndex].FindComponent(TAdvGlowButton(sender).Hint)))
      else
        GenerarReporte('Nomina.fr3',TfrxReport(TabCntMain.Pages[TabCntMain.ActivePageIndex].FindComponent(TAdvGlowButton(sender).Hint)));

      ShellExecute(Self.Handle, Nil, PChar(NombreCompleto), '', '', SW_SHOWNORMAL);
    End;
  Except
    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.onClickImp(Sender: TObject);
begin
  TfrxReport(TabCntMain.Pages[TabCntMain.ActivePageIndex].FindComponent(TAdvGlowButton(sender).Hint)).Print;
end;

procedure TFrmCatalogoNominas.onShow2(Sender: TObject);
begin
  IndiceDeptoOrg := TTabSheet(Sender).Tag;
  GenerarReporte('Nomina.fr3', TfrxReport(findcomponent('Rpt_Depto_' + IntToStr(TTabSheet(Sender).Tag))));
end;

procedure TFrmCatalogoNominas.CalcularIndividual1Click(Sender: TObject);
begin
  //LocIdPersonal := GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger;
  try
    crearEstructuraCalculo;

    if Not YaCreado then
      CrearEstructura;

    AbrirNomina(cdNomina.FieldByName('IdNomina').AsInteger);

    CalcularNomina(False, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger);
    YaLeidoPersonalIncluido := False;
    TabPersonal.OnShow(Sender);
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.CalcularNomina(Seleccion: Boolean; pIdPersonal: Integer = -1; LibroExcel: String = '');
var
  Cursor: TCursor;
  cdPersonalIncluido: TClientDataSet;
  SumaPer, SumaDed: Extended;
  cdEmpleado: TClientDataSet;
  Excel: Variant;
  Valor: String;
  NombreRango: String;
  fDialog: TForm;
  LocMachote: string;
begin
  EliminarTodosConjuntos;

  Cursor := Screen.Cursor;
  Try
    Try
      Screen.Cursor :=   crAppStart;
      fDialog := TForm.Create(Self);
      fDialog.Width  := 550;
      fDialog.Height := 170;
      fDialog.FormStyle :=   fsStayOnTop;
      fDialog.BorderStyle := TFormBorderStyle(bsToolWindow);
      fDialog.Position := poScreenCenter;
      fDialog.Caption := 'Cálculo de Nómina';
      cxGBDialogCalcNomina.Parent := fDialog;
      cxGBDialogCalcNomina.Visible :=   True;
      cxGBDialogCalcNomina.Align := alClient;

      if Seleccion then
      begin
        // Seleccionar el personal que se va a calcular
        Cursor := Screen.Cursor;
        Try
          Screen.Cursor := crAppStart;

          AbrirPersonalIncluido(cdPersonalIncluido, cdBuscar.FieldByName('IdNomina').AsInteger, True, cdBuscar.FieldByName('tipocalculo').AsString = 'FINIQUITOS');

          Application.CreateForm(TFrmPersonalNomina, FrmPersonalNomina);
          FrmPersonalNomina.dsPersonalIncluido.DataSet := cdPersonalIncluido;
          FrmPersonalNomina.IdNomina          :=           cdBuscar.FieldByName('IdNomina').AsInteger;
          FrmPersonalNomina.lblNomina.Caption :=      dsNomina.DataSet.FieldByName('Titulo').asString;
          FrmPersonalNomina.lblinicio.Caption := dsNomina.DataSet.FieldByName('FechaNomina').asString;
          FrmPersonalNomina.lblTermino.Caption := dsNomina.DataSet.FieldByName('FechaTerminoNomina').asString;
          if FrmPersonalNomina.ShowModal = mrCancel then
            raise InteligentWarning.Create('*');
        Finally
          Screen.Cursor := Cursor;

          if cdPersonalIncluido.ProviderName <> '' then
            EliminarConjunto(cdPersonalIncluido);

          cdPersonalIncluido.Free;
        End;
      end;

      if pIdPersonal = -1 then
      begin
(*
        if InteliDialog.ShowModal('Cálculo de Nómina',
                                  'Está a punto de proceder a calcular la Nómina:' + #10 + #10 +
                                  cdNomina.FieldByName('Titulo').AsString + #10 + #10 +
                                  '¿Desea proceder con este cálculo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          raise InteligentWarning.Create('***');

*)
        fDialog.Caption := 'Inteli - Code: Confirmación';
        CxLblSubtittulo.Caption := 'Cálculo de Nómina.';
        CxLblLeyenda.Caption := 'Está a punto de proceder a calcular la Nómina:' + #10 +
                                  cdNomina.FieldByName('Titulo').AsString + #10 +
                                  '¿Desea proceder con este cálculo en este momento?';

        //if CxLblLeyenda.Height > 68 then
          fDialog.Height := 170 + CxLblLeyenda.Height - 50;
        if fDialog.ShowModal =  mrCancel then
          raise InteligentWarning.Create('***');
      end
      else
      begin
(*
        if InteliDialog.ShowModal('Cálculo individual de Nómina',
                                  'Está a punto de proceder con los cálculos de concepto de la Nómina:' + #10 + #10 +
                                  cdNomina.FieldByName('Titulo').AsString + #10 +
                                  'Para el empleado: ' + GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString + #10 + #10 +
                                  '¿Desea proceder con este cálculo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          raise InteligentWarning.Create('***');
 *)

        fDialog.Caption := 'Inteli - Code: Confirmación';
        CxLblSubtittulo.Caption := 'Cálculo individual de Nómina.';
        CxLblLeyenda.Caption := 'Está a punto de proceder con los cálculos de concepto de la Nómina:' + #10 +
                                    cdNomina.FieldByName('Titulo').AsString + #10 +
                                    'Para el empleado: ' + GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString + #10 +
                                    '¿Desea proceder con este cálculo en este momento?';
        //if CxLblLeyenda.Height > 68 then
          fDialog.Height := 170 + CxLblLeyenda.Height - 50;
        if fDialog.ShowModal =  mrCancel then
          raise InteligentWarning.Create('***');
      end;

      if pIdPersonal = -1 then
      begin
        // Eliminar la nómina existente
        ProcedimientoAlmacenado('nom_detallenomina_delete', 'pIdNomina,pListaSel,pCompleta', [cdBuscar.FieldByName('IdNomina').AsInteger, '"0"', 0]);
      end
      else
      begin
        // Solo eliminar el registro seleccionado, siempre y cuando este no haya sido pagado
        cdEmpleado := TClientDataSet.Create(Self);
        Try
          if Not CrearConjunto(cdEmpleado, 'nom_detallenomina', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

          if Not CargarDatosFiltrados(cdEmpleado, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Detalle de Nómina', GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger, 'Id. Personal']);

          cdEmpleado.Open;

          // Verificar si es necesario eliminar el cálculo anterior
          if cdEmpleado.RecordCount = 1 then
          begin
            if Not cdEmpleado.FieldByName('IdFormaPago').IsNull then
              raise InteligentException.CreateByCode(24, ['El registros de cálculo de Nómina del empleado ' + GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString + ' no puede ser modificado debido a que este ya ha sido indicado como pagado físicamente.']);

            // Eliminar ahora si el registro de nómina
            EliminarRegistro(cdEmpleado, [cdEmpleado.FieldByName('IdDetalleNomina').AsInteger]);

            // Quitar los valores de la pantalla
            GridPersonal.Cell[6, GridPersonal.SelectedRow].AsFloat := 0;
            GridPersonal.Cell[7, GridPersonal.SelectedRow].AsFloat := 0;
            GridPersonal.Cell[8, GridPersonal.SelectedRow].AsFloat := 0;
          end;
        Finally
          if Assigned(cdEmpleado) and (cdEmpleado.Active) then
            cdEmpleado.Close;

          EliminarConjunto(cdEmpleado);
          cdEmpleado.Free;
        End;
      end;

      // Abrir los datos del empleado
      cdPersonalNomina.Close;
      CargarDatosFiltrados(cdPersonalNomina, 'IdNomina,IdPersonal', [cdBuscar.FieldByName('IdNomina').AsInteger, pIdPersonal]);
      cdPersonalNomina.Open;

      cdExcepciones.Close;
      CargarDatosFiltrados(cdExcepciones, 'IdNomina,IdPersonal', [cdBuscar.FieldByName('IdNomina').AsInteger, pIdPersonal]);
      cdExcepciones.Open;

      // Abrir la lista de conceptos de Nómina
      cdConcepto.close;
      CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdBuscar.FieldByName('IdTipoNomina').AsInteger]);
      cdConcepto.Open;

      // Verificar si existe un archivo de excel que deba ser llenado con los valores aquí expuestos
      Try
        if CxLCbbMachotes.EditValue <> null then
          LocMachote := IntToStr(CxLCbbMachotes.EditValue);
        if (CxChkBoxCalcExcel.Checked) and (Length(Trim(LocMachote)) > 0) then
          CalcularNominaEmpleado(cdBuscar, cdPersonalNomina, cdExcepciones, cdPersonal, cdConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones, memDeducciones, Panel_Progress, true, true, LocMachote)
        else
          CalcularNominaEmpleado(cdBuscar, cdPersonalNomina, cdExcepciones, cdPersonal, cdConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones, memDeducciones, Panel_Progress);
      Finally
        ;
      End;

      if {LocIdPersonal} pIdPersonal <> -1 then
      begin
        // Totalizar percepciones y deducciones para informar al usuario
        memPercepciones.First;
        SumaPer := 0;
        while not memPercepciones.Eof do
        begin
          if memPercepciones.FieldByName('Modo').AsString = 'PERCEPCION' then
            SumaPer := SumaPer + StrToFloat(memPercepciones.FieldByName('Importe').AsString);
          memPercepciones.Next;
        end;

        memDeducciones.First;
        SumaDed := 0;
        while not memDeducciones.Eof do
        begin
          if memDeducciones.FieldByName('Modo').AsString = 'DEDUCCION' then
            SumaDed := SumaDed + StrToFloat(memDeducciones.FieldByName('Importe').AsString);
          memDeducciones.Next;
        end;

        // Volver a poner los valores en pantalla
        GridPersonal.Cell[6, GridPersonal.SelectedRow].AsFloat := SumaPer;
        GridPersonal.Cell[7, GridPersonal.SelectedRow].AsFloat := SumaDed;
        GridPersonal.Cell[8, GridPersonal.SelectedRow].AsFloat := SumaPer - SumaDed;
      end;

      // Si todo ha salido correcto se debe preguntar al usuario si quiere ver la nómina en este momento
      CurrencyString := '$ ';
      if {LocIdPersonal} pIdPersonal = -1 then
      begin
        if InteliDialog.ShowModal('Cálculo de Nómina ha finalizado',
                                  'Se han procesado un total de ' + IntToStr(cdPersonalNomina.RecordCount) + ' Empleados.' + #10 + #10 +
                                  '¿Desea ver en este momento la Nómina generada?', mtConfirmation, [MbYes, mbNo], 0) = mrYes Then
        begin
          destruirObjetos;
          DxBarBtnReportePreliminar.Click;
        end;
      end
      else
        InteliDialog.ShowModal('Cálculo de Nómina individual ha finalizado',
                               'Se han procesado los cálculos de Nómina del empleado: ' + GridPersonal.Cell[1, GridPersonal.SelectedRow].AsString, mtInformation, [mbOK], 0); //+ #10 +
                               //'Para llegar a un Neto de: ' + CurrencyString + FloatToStrf(SumaPer - SumaDed, ffCurrency, 16, 2), mtInformation, [mbOk], 0);
       YaLeidoPersonalIncluido := False;
    Finally
      cxGBDialogCalcNomina.Visible :=  False;
      cxGBDialogCalcNomina.Parent  :=   Self;
      cxGBDialogCalcNomina.Align   := alNone;
      CxChkBoxCalcExcel.Checked := False;
      fDialog.Destroy;
      Screen.Cursor := Cursor;
      EliminarTodosConjuntos;
    End;
  Except
    on e: InteligentWarning do;

    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e: Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.CancelarTimbre1Click(Sender: TObject);
var
  LocUUID, LocRfcEmpresa: string;
  ResultadoCancelacion: TStringList;
  RespuestaPAC: TStringList;
  Archivo:    TextFile;
  sLinea :      String;
  Stream : TStringList;
  Cursor :     TCursor;
  cdTmpOrganizacion: TClientDataSet;
begin
  //verificarConexionInternet;

      //UUID
  LocUUID := GridPersonal.Cell[12, GridPersonal.SelectedRow].AsString;
  LocRfcEmpresa := GridPersonal.Cell[11, GridPersonal.SelectedRow].AsString;

  if (Length(trim(LocRfcEmpresa)) > 0) and (InteliDialog.ShowModal('Cancelación de Timbre', '¿Esta seguro que desea cancelar este timbre [' + LocUUID + ']?', mtConfirmation, [MbYes, MbNo], 0)  = mrYes) then
  begin
    try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      cdTmpOrganizacion := TClientDataset.Create(Self);
      try
        ResultadoCancelacion := TStringList.Create;

        if cdTmpOrganizacion.ProviderName = '' then
          if not CrearConjunto(cdTmpOrganizacion, 'nuc_organizacion', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['nuc-Organizacion']);

        if not CargarDatosFiltrados(cdTmpOrganizacion, 'rfc', [LocRfcEmpresa]) then
          raise InteligentException.CreateByCode(6, ['Rfc', 'Nuc_organizacion', LocRfcEmpresa]);

        if cdTmpOrganizacion.Active then
          cdTmpOrganizacion.Refresh
        else
          cdTmpOrganizacion.Open;

        //RfcEmpresa
        CSD.Certificado := cdTmpOrganizacion.FieldByName('RutaArchivoCert').AsString;
        CSD.Llave := CdtmpOrganizacion.FieldByName('RutaArchivoKey').AsString;
        CSD.Clave := cdTmpOrganizacion.FieldByName('ClaveCSD').AsString;
        CredencialPac.RFC := LocRfcEmpresa;

        {$REGION ''}
        if not FileExists(CredencialPAC.RFC+'.key.pem') then
          ShellExecute(0, nil, 'openssl', PChar('pkcs8 -inform DER -in "' + CSD.Llave + '" -passin pass:' + CSD.Clave + ' -out '+CredencialPAC.RFC+'.key.pem'), nil, SW_HIDE);

        if not FileExists(CredencialPAC.RFC+'.cer.pem') then
          ShellExecute(0, nil, 'openssl', PChar('x509 -inform DER -in "' + CSD.Certificado + '" -out '+CredencialPAC.RFC+'.cer.pem'), nil, SW_HIDE);

        Try
          Stream := TStringList.Create;
          sLinea := '';
          AssignFile(Archivo, CredencialPAC.RFC+'.cer.pem');
          Reset(Archivo);

          while not Eof(Archivo) do 
          begin
            ReadLn(Archivo, sLinea);
            Stream.Add(sLinea);
          end;
          CredencialPAC.CertificadoB64 := Stream.Text;
        Finally
          CloseFile(Archivo);
          Stream.Free;
        End;

        Try
          Stream := TStringList.Create;
          sLinea := '';
          AssignFile(Archivo, CredencialPAC.RFC+'.key.pem');
          Reset(Archivo);

          while not Eof(Archivo) do 
          begin
            ReadLn(Archivo, sLinea);
            Stream.Add(sLinea);
          end;
          CredencialPAC.LlaveB64 := Stream.Text;
        Finally
          CloseFile(Archivo);
          Stream.Free;
        End;
        {$ENDrEGION}

        ProveedorTimbrado := TPFPACFo.Create;
        ProveedorTimbrado.AsignarCredenciales(CredencialPac);
        try
          ResultadoCancelacion := ProveedorTimbrado.CancelarXML(LocUUID);
          ResultadoDeCancelacion(StrToInt(ResultadoCancelacion[0]));
        finally
          ProveedorTimbrado.Free;
          //ResultadoCancelacion.Free;
        end;

        //Aqui agregar la edicion del campo Activo a 'NO'
        if Not CargarDatosFiltrados(cdDesactivarTimbre, 'UUID', [LocUUID]) then
          raise InteligentException.CreateByCode(6, ['Personal por Timbrado', cdDesactivarTimbre.FieldByName('idTimbre').AsInteger, 'idTimbre']);

        if cdDesactivarTimbre.Active then
          cdDesactivarTimbre.Refresh
        else
          cdDesactivarTimbre.Open;

        if cdDesactivarTimbre.RecordCount = 1 then
        begin
          cdDesactivarTimbre.Edit;
          cdDesactivarTimbre.FieldByName('Activo').AsString := 'NO';
          cdDesactivarTimbre.Post;
          cdDesactivarTimbre.ApplyUpdates(-1);

          YaLeidoPersonalIncluido := False;
          TabPersonalShow(nil);
        end
        else
        begin
          MessageDlg('No se puede Cancelar este Timbre, puesto que no existe en la Base de Datos', mtInformation, [mbOK], 0);
        end;
      finally
        Screen.Cursor := Cursor;
        if assigned(cdTmpOrganizacion) then
          cdTmpOrganizacion.destroy
      end;
    Except
      on e: InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end
  else
    InteliDialog.ShowModal('Cancelación de Timbre','El proceso no pudo concretarse debido a que el RFC de la Empresa no se guardó anteriormente.', mtWarning, [mbOK], 0);
end;

procedure TFrmCatalogoNominas.AccedeRegistro(Id: Integer);
begin
  if Id = -9 then
    cdDetalle.Append
  else
  begin
    if Not cdDetalle.Locate('IdPersonal', Id, []) then
      raise InteligentException.CreateByCode(12, [Id, 'Detalle de Nómina']);
    cdDetalle.Edit;
  end;
end;

procedure TFrmCatalogoNominas.AbrirNomina(IdNomina: Integer);
begin
  try
    // Si existe una nómina en visual se deberá cerrar
    if TabPresentacion.PageControl = PageControl1 then
      RNomina.Clear;

    if TabRecibos.PageControl = PageControl1 then
      RRecibos.Clear;

    // Abrir datos de la nómina
    if Not CargarDatosFiltrados(cdBuscar, 'IdNomina', [IdNomina]) then
      raise InteligentException.CreateByCode(6, ['Nominas', IdNomina, 'Id. Nómina']);

    if cdBuscar.Active then
      cdBuscar.Refresh
    else
      cdBuscar.Open;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e: Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.AbrirPersonalIncluido(var cdPersonalIncluido: TClientDataSet; IdNomina: Integer; Incluidos: Boolean;SoloBajas:Boolean);
var
  NombreSentencia: String;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crSQLWait;

    if Incluidos then
      NombreSentencia := 'nuc_personal_nomina'
    else
      NombreSentencia := 'nuc_personal_nomina_exclusivo';

    if (Assigned(cdPersonalIncluido)) and (cdPersonalIncluido.active) then
      cdPersonalIncluido.close;

    if Not Assigned(cdPersonalIncluido) then
      cdPersonalIncluido := TClientDataSet.Create(Nil);

    if cdPersonalIncluido.ProviderName = '' then
    begin
      if (cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0) and (NombreSentencia <> 'nuc_personal_nomina')
          and (cdTipoNomina.FieldByName('SalarioMultiple').AsString = 'Si') then
      begin
        if Not CrearConjunto(cdPersonalIncluido, NombreSentencia, ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal Incluido en Nómina']);
      end
      else
        if Not CrearConjunto(cdPersonalIncluido, NombreSentencia, ccSelect) then
          raise InteligentException.CreateByCode(5, ['Personal Incluido en Nómina']);
    end;

    if SoloBajas then
    begin
      if Not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina,Cuales', [IdNomina,'Baja']) then
        raise InteligentException.CreateByCode(6, ['Personal Incluido en Nómina', IdNomina, 'Id. Nomina']);
    end
    else
      if NombreSentencia <> 'nuc_personal_nomina' then
      begin
        if Not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina', [IdNomina]) then
          raise InteligentException.CreateByCode(6, ['Personal Incluido en Nómina', IdNomina, 'Id. Nomina']);
      end
      else
        if Not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina', [IdNomina]) then
          raise InteligentException.CreateByCode(6, ['Personal Incluido en Nómina', IdNomina, 'Id. Nomina']);

    if cdPersonalIncluido.Active then
      cdPersonalIncluido.Refresh
    else
      cdPersonalIncluido.Open;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmCatalogoNominas.AjustarFecha(Sender: TObject);
var
  Anio, Mes: Word;
  FinMes: TDate;
begin
  Anio := YearOf(Edt_FechaNomina.Date);
  Mes := MonthOf(Edt_FechaNomina.Date);
  Inc(Mes);
  if Mes > 12 then
  begin
    Inc(Anio);
    Mes := 1;
  end;

  if DateToStr(Edt_FechaNomina.Date) <> '00/00/0000' then
    FinMes := EncodeDate(Anio, Mes, 1) - 1;

  Try
    ConEfecto := False;

    // Verificar si se debe modificar la fecha de Termino de Nómina
    if (cdNomina.Active) and (cdNomina.State in [dsInsert, dsEdit]) {or (cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0)} then
    begin
      Edt_FechaTerminoNomina.Date := Edt_FechaNomina.Date + (Edt_Dias.Value -1);
      cdNomina.FieldByName('FechaTerminoNomina').asDateTime :=  Edt_FechaTerminoNomina.Date ;
    end;

    if (cdTipoNomina.Active) and (cdTipoNomina.FieldByName('Ajustar').AsString = 'Si') then
    begin
      if (Edt_FechaTerminoNomina.Date > FinMes) or ((Edt_FechaTerminoNomina.Date +1 = FinMes) and (Edt_Dias.Value >= cdTipoNomina.FieldByName('DiasTrabajados').AsInteger)) then
        Edt_FechaTerminoNomina.Date := FinMes;
    end
    else
      {;//RESTAURAR} Edt_FechaTerminoNomina.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
  Finally
    ConEfecto := True;
  End;
end;

procedure TFrmCatalogoNominas.botonesPorNomina(estado: Boolean);
begin
  btn_Eliminar.Enabled      := estado;
  btn_Edit.Enabled          := estado;
  DxBarBtnCalcular.Enabled  := estado;
  DxBarBtnCalcularSeleccionando.Enabled := estado;
  btn_modificar_calculo.Enabled := estado;
  btn_TiempoExtra.Enabled   := estado;
  btn_excepciones.Enabled   := estado;
  AdvSmoothButton1.Enabled  := estado;
  DxBarBtnInasistencias.Enabled := estado;
  btn_ConsultaPagos.Enabled := estado;
  btn_pagoNomina.Enabled    := estado;
  dxBarLargeButton4.Enabled := estado;
  ModificarClculo1.Enabled  := estado;
  RegistrarPago1.Enabled    := estado;
  CalcularIndividual1.Enabled := estado;
  CancelarTimbre1.Enabled   := estado;
end;

procedure TFrmCatalogoNominas.Btn4Click(Sender: TObject);
var
  i,j, timbrados: Integer;
  TotalImporte: Real;
  pLista: String;
  cdPersonalNomina: TClientDataSet;
begin
  Try
    timbrados := 0;
    i := GridPersonal.SelectedRow;
    if (GridPersonal.SelectedCount = 1) and (Length(Trim(GridPersonal.Cell[12,i].AsString)) > 0) then
      raise InteligentException.CreateByCode(24, ['El registro de Nómina ya se encuentra timbrado, si desea timbrarlo nuevamente es necesario cancelarlo.']);

    try
      cdPersonalNomina := TClientDataSet.Create(self);
      AbrirPersonalIncluido(cdPersonalNomina, cdNOmina.FieldByName('IdNomina').asInteger, false);

      if GridPersonal.SelectedCount = 0 then
        raise InteligentException.CreateByCode(26, ['Personal de Nómina']);

      Application.CreateForm(TFrmPagoNomina, FrmPagoNomina);
      FrmPagoNomina.IdNomina := cdNomina.FieldByName('IdNomina').AsInteger;

      TotalImporte := 0;
      pLista := '';
      for i := 0 to GridPersonal.RowCount - 1 do
      begin
        if (GridPersonal.Row[i].Selected) and (Length(Trim(GridPersonal.Cell[12,i].AsString)) = 0) then
        begin
          FrmPagoNomina.Cuenta := FrmPagoNomina.Cuenta +1;
          sCodigo := TCodigo.Create;
          sCodigo.Valor := GridPersonal.Cell[9, i].AsString;
          pLista := pLista + GridPersonal.Cell[9, i].AsString + ',';
          FrmPagoNomina.lbPersonal.AddItem(GridPersonal.Cell[0, i].AsString + ' | ' + GridPersonal.Cell[1, i].AsString + ' | ' + GridPersonal.Cell[8, i].AsString, sCodigo);

          TotalImporte := TotalImporte + StrToFloat(GridPersonal.Cell[8, i].AsString);
        end
        else if (GridPersonal.Row[i].Selected) then

          Inc(Timbrados);
      end;

      if timbrados > 0 then
        InteliDialog.ShowModal('Aviso', 'Existen registros de nóminas ya timbrados y estos no serán tomados en cuenta para este proceso, si desea timbrarlos nuevamente es necesario cancelarlos primero.', mtInformation, [mbOK], 0);

      // Verificar si ya se ha generado el conjunto de formas de pago
      if cdFormaPago.ProviderName = '' then
      begin
        if not CrearConjunto(cdFormaPago, 'nom_formapago', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Formas de pago de Nómina']);
      end;

      if Not cdFormaPago.Active then
        cdFormaPago.Open;

      FrmPagoNomina.cbFormaPago.Clear;
      while not cdFormaPago.Eof do
      begin
        FrmPagoNomina.cbFormaPago.Items.AddObject(cdFormaPago.FieldByName('Titulo').AsString, TObject(cdFormaPago.FieldByName('IdFormaPago').AsInteger));
        FrmPagoNomina.ItemCboxFormaPago.Properties.Items.AddObject(cdFormaPago.FieldByName('Titulo').AsString, TObject(cdFormaPago.FieldByName('IdFormaPago').AsInteger));
        cdFormaPago.Next;
      end;

      if cdFormaPago.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Formas de pago de Nómina']);

      FrmPagoNomina.dsFormaPago.DataSet := cdFormaPago;
      FrmPagoNomina.lblImporte.Caption := FloatToStrF(TotalImporte, ffCurrency, 16, 2);
      FrmPagoNomina.cbFormaPago.ItemIndex := 0;
      FrmPagoNomina.cbFormaPago.OnChange(FrmPagoNomina.cbFormaPago);
      FrmPagoNomina.soloTimbrar := true;
      FrmPagoNomina.pLista := pLista;
      FrmPagoNomina.ShowModal;

      YaLeidoPersonalIncluido := False;
      TabPersonal.OnShow(Sender);

    finally
      cdPersonalNomina.Destroy;
    end;
  Except
    on e:InteligentException do
    begin
      if cdFormaPago.Active then
        cdFormaPago.Close;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;
    on e:Exception do
    begin
      if cdFormaPago.Active then
        cdFormaPago.Close;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmCatalogoNominas.btnCancelClick(Sender: TObject);
begin
  mrResult := mrCancel;
  Tform(FindComponent('tFrmDeptos')).Close;
end;

procedure TFrmCatalogoNominas.btnCrearCortesClick(Sender: TObject);
var
  error  : Boolean;
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    error := False;
    if (DbLCbbGuardias.ItemIndex = -1) then
    begin
      error := True;
      DbLCbbGuardias.SetFocus;
      MessageDlg('Seleccione una guardia', mtInformation, [mbOk], 0);
    end else if (cbbPeriodos.ItemIndex = -1) then
    begin
      error := True;
      cbbPeriodos.SetFocus;
      MessageDlg('Seleccione un periodo', mtInformation, [mbOk], 0);
    end;

    //Si el periodo tiene cortes de pago, preguntar al usuario si kiere volver a configurar los cortes
    if Cortes.RecordCount > 0 then
    begin
      if MessageDlg('¡El periodo ya tiene cortes de Pago!. ¿Desea modificar los registros?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      begin
        error := True;
      end;
    end;

    if Not error then
    begin
      //Si hay cortes creados, entonces corroborar que no haya personal pagado
      if Cortes.RecordCount > 0 then
      begin
        //Comprobar si hay personal pagado en la nomina(o algun corte del periodo).
        if hayPersonalPagado then
        begin
          error := True;
          MessageDlg('¡Hay personal pagado, no es posible modificar. Quite el pago al personal para poder hacer modificaciones!', mtInformation, [mbOk], 0);
        end;
      end;
    end;

    if Not error then
    begin
      //Abre el formulario UTFrmCorteNominas, que hace los cortes en que el usuario realizara los pagos
      Application.CreateForm(TFrmCorteNominas, FrmCorteNominas);

      //Enviar valores al formulario UTFrmCorteNominas
      FrmCorteNominas.idTipoNomina      :=        cdNomina.FieldByName('IdTipoNomina').AsInteger;
      FrmCorteNominas.idPeriodosGuardia := cdPeriodos.FieldByName('IdPeriodosGuardia').AsInteger;
      FrmCorteNominas.Periodo           :=       cdPeriodos.FieldByName('LeyendaFecha').AsString;
      FrmCorteNominas.FechaInicio       :=      cdPeriodos.FieldByName('FechaInicio').AsDateTime;
      FrmCorteNominas.FechaTermino      :=     cdPeriodos.FieldByName('FechaTermino').AsDateTime;

      FrmCorteNominas.ShowModal;

      Cortes.Refresh;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCatalogoNominas.btnExportarClick(Sender: TObject);
begin
  ExportarAExcelGeneral('');
end;

procedure TFrmCatalogoNominas.btnExportarGlobalesClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmReportesExcel, FrmReportesExcel);
    FrmReportesExcel.IdNominaFijo := '2,3,4,6';
    FrmReportesExcel.IdNomFijoP := '2';
    FrmReportesExcel.IdNominaPlataforma := '1';
    FrmReportesExcel.ShowModal;
  Finally
    FreeAndNil(FrmReportesExcel);
  End;
end;

procedure TFrmCatalogoNominas.btnOkClick(Sender: TObject);
var
  Objeto: TWinControl;
  locForma: TForm;
begin
  Try
    //Inicia codigo de Marcos
    if cdNucConf.Active then
    cdNucConf.Close;

    CrearConjunto(cdNucConf, 'nuc_configuracion', ccCatalog);
    CargarDatosFiltrados(cdNucConf, 'idconfiguracion', ['18']);

    if cdNucConf.Active then
      cdNucConf.Refresh
    else
      cdNucConf.Open;
    //Termina codigo de Marcos

    if tagButton <> 2 then
    begin
      if cbbDeptos.ItemIndex = -1 then
      begin
        Objeto := cbbDeptos;
        raise InteligentException.CreateByCode(24, ['Seleccione un departamento u Organización para continuar...']);
      end;

      IndiceDeptoOrg := Integer(cbbDeptos.Properties.Items.Objects[cbbDeptos.ItemIndex]);
      crearTabNominas(IntToStr(IndiceDeptoOrg));
      mrResult := mrOk;
    end
    else
    begin
      IndiceDeptoOrg := Integer(cbbDeptos.Properties.Items.Objects[cbbDeptos.ItemIndex]);
      if (cdTipoNomina.FieldByName('TipoCalculo').asString = 'ASIMILADOS') then
        GenerarReporte('ReciboAsimilado.fr3', RNomina)
      else
        GenerarReporte('Recibo.fr3', RNomina);
    end;

    locForma := Tform(FindComponent('tFrmDeptos'));
    if Assigned(locForma) then
      locForma.Close;

    // Mostrar ceja de Reportes
    if TabContenedora.PageControl <> PageControl1 then
    begin
      TabContenedora.PageControl := PageControl1;
      TabContenedora.PageIndex := PageControl1.PageCount -1;
    end;

    //PageControl1.ActivePage := TabContenedora;
  Except
    on e:InteligentException do
    begin
      if Assigned(Objeto) then
        Objeto.SetFocus;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;
    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Infome de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.btnTiendaClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmReportesExcel, FrmReportesExcel);
    FrmReportesExcel.IdNominaFijo := '5,9,10';
    FrmReportesExcel.IdNomFijoP := '5';
    FrmReportesExcel.IdNominaPlataforma := '0';
    FrmReportesExcel.ShowModal;
  Finally
    FreeAndNil(FrmReportesExcel);
  End;
end;

procedure TFrmCatalogoNominas.VerHojasClick(Sender: TObject);
begin
  PreviewNomina.ThumbnailVisible := TCheckBox(Sender).Checked;
end;

procedure TFrmCatalogoNominas.CerrarPestana1Click(Sender: TObject);
begin
  if Assigned(FindComponent(TabCntMain.Pages[TabCntMain.ActivePageIndex].Name)) then
    FindComponent(TabCntMain.Pages[TabCntMain.ActivePageIndex].Name).Destroy;
end;

procedure TFrmCatalogoNominas.CerrarTodaslasPestanas1Click(Sender: TObject);
begin
  if InteliDialog.ShowModal('Aviso','Estas Seguro que deseas cerrar todas la pestanas?',mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    destruirObjetos;
end;

procedure TFrmCatalogoNominas.combosExtLookup(activo: Boolean);
begin
  //Juego de combos Guardias y Periodos
  DbLCbbGuardias.Enabled := activo;
  cbbPeriodos.Enabled    := activo;
end;

procedure TFrmCatalogoNominas.ConsultarVacaciones1Click(Sender: TObject);
var
  LocCursor: TCursor;
begin
  if (AnsiCompareText(cdTipoNomina.FieldByName('TipoCalculo').AsString, 'FINIQUITOS') = 0) and (GridPersonal.SelectedRow >= 0) then
  begin
    Try
      LocCursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        Try
          (*
          ProcedimientoAlmacenado(cdHistorial, 'Res_HistorialNominas',
            'p_IdPersonal,p_Fecha',
            [GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger, ClientModule1.DateToStrSQL(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime)]);
          *)

          //cdHistorial.Close;
           ProcedimientoAlmacenado(cdHistorial, 'Res_FechasVacaciones',
            'pFecha,pIdPersonal,pAnio',
            [ClientModule1.DateToStrSQL(cdNomina.FieldByName('FechaTerminoNomina').AsDateTime), GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger, -1]);

          //cdHistorial.Open;
          Application.CreateForm(TFrmConsultaVacaciones,FrmConsultaVacaciones);
          FrmConsultaVacaciones.dsNomina.DataSet := cdNomina;
          FrmConsultaVacaciones.dsHistorial.DataSet := cdHistorial;
          frmConsultaVacaciones.IdNomina := cdNomina.FieldByName('IdNomina').AsInteger;
          frmConsultaVacaciones.IdPersonal := GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger;

          Screen.Cursor := LocCursor;

          FrmConsultaVacaciones.ShowModal;
        Finally
          FrmConsultaVacaciones.dsNomina.DataSet := Nil;
          FrmConsultaVacaciones.dsHistorial.DataSet := Nil;
          EliminarConjunto(cdHistorial);
          cdHistorial.ProviderName := '';
        End;
      Finally
        Screen.Cursor := LocCursor;
      End;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmCatalogoNominas.ContarFestivos;
const
  NomMes: Array [1 .. 12] of String = ('ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC');
var
  Cta: Integer;
  Cadena: String;
  LocFecha: TDate;
begin
  Edt_Domingos.Value := 0;
  Edt_Festivos.Value := 0;

  if cdNomina.State in [dsEdit, dsInsert] then
    cdNomina.FieldByName('Festivos').AsInteger := 0;

  // Verificar cuales son los festivos que se está considerando
  if (cdFestivos.ProviderName <> '') and (cdFestivos.Active) and (cdFestivos.RecordCount > 0) then
  begin
    if cdNomina.State in [dsEdit, dsInsert] then
    begin
      // Contar los domingos
      Cta := 0;
      LocFecha := Edt_FechaNomina.Date;
      while LocFecha <= Edt_FechaTerminoNomina.Date do
      begin
        if DayOfWeek(LocFecha) = 1 then
          Inc(Cta);

        LocFecha := IncDay(LocFecha);
      end;
      Edt_Domingos.Value := Cta;

      // Contar los días festivos
      Cta := 0;
      Cadena := '';
      cdFestivos.First;
      while not cdFestivos.Eof do
      begin
        if (cdFestivos.FieldByName('Fecha').AsDateTime >= Edt_FechaNomina.Date) and (cdFestivos.FieldByName('Fecha').AsDateTime <= Edt_FechaTerminoNomina.Date) then
        begin
          if Cadena <> '' then
            Cadena := Cadena + ', ';

          Cadena := Cadena + IntToStr(DayOf(cdFestivos.FieldByName('Fecha').AsDateTime)) + '-' + NomMes[MonthOf(cdFestivos.FieldByName('Fecha').AsDateTime)];
          Inc(Cta);
        end;

        cdFestivos.Next;
      end;

      Edt_Festivos.Value := Cta;
      cdNomina.FieldByName('Festivos').AsInteger := Cta;

      if Cadena = '' then
        lbl_Festivos.Caption := 'Ningún día festivo'
      else
        lbl_Festivos.Caption := Cadena;
    end
    else if Cta = cdNomina.FieldByName('Festivos').AsInteger then
      if Cadena = '' then
        lbl_Festivos.Caption := 'Ningún día festivo'
      else
        lbl_Festivos.Caption := Cadena;
  end;
end;

procedure TFrmCatalogoNominas.crearEstructuraCalculo;
begin
  try
    //Foco Rojo

    if Assigned(TClientDataSet(FindComponent('cdDetalleSaveX'))) then
    begin
      cdDetalleSave.Close;
      EliminarConjunto(cdDetalleSave);
      cdDetalleSave.ProviderName := '';
    end
    else
      cdDetalleSave := TClientDataSet.Create(Nil);

    if cdDetalleSave.ProviderName = '' then
      if Not CrearConjunto(cdDetalleSave, 'nom_detallenomina', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

    if Not CargarDatosFiltrados(cdDetalleSave, 'IdPersonal', [-9]) then
      raise InteligentException.CreateByCode(21, ['Detalle de Nómina']);

    cdDetalleSave.Open; // Traer la estructura de la tabla

  except
    on e: InteligentException do
      Intelidialog.ShowModal(e.Title, e.message, e.MsgType, [mbOK], 0);
  end;
end;

function TFrmCatalogoNominas.crearTabNominas(Nombre: String): Boolean;
var
  Page: TcxTabSheet;
  (*PrevReport: TfrxPreview;*)
  (*Report: TfrxReport;*)
  Pnl: TPanel;
  btnImprimir, btnExportar: TcxButton;
  chkHojas: TcxCheckBox;
begin
  if nombre = '-1'  then
    nombre := 'REPORTE_GENERAL';
  prefijoC := 'Localidad_' + Nombre;
  prefijoN := 'Organizacion_' + Nombre;
  prefijoPrv := 'Prv_' + Nombre;
  prefijoRpt := 'Rpt_' + Nombre;
  prefijoPNL := 'Pnl_' + Nombre;
  PrefijoIMP := 'Imp_' + Nombre;
  PrefijoEXP := 'Exp_' + Nombre;
  PrefijoCHK := 'Chk_' + Nombre;

  try
    if (not Assigned(FindComponent(prefijoN)))  then
    begin
      Page := TcxTabSheet.Create(self);
      Page.Parent := TabCntMain;
      Page.PageControl := TabCntMain;
      Page.Name := prefijoN;
      Page.Tag := tipoTab;
      if nombre = 'REPORTE_GENERAL'  then
        Page.Caption := 'REPORTE GENERAL'
      else
        Page.Caption := 'DEPARTAMENTO ' + cbbDeptos.Text;
      page.Align := alClient;
      Hint := '';
      ShowHint := False;
      //page.Height := ;

      Pnl := Tpanel.Create(page);
      with Pnl do
      begin
        Name := prefijoPNL;
        Caption :=    '';
        Parent  :=  Page;
        Align   := alTop;
        Height  :=    41;
      end;

      PrevReport := TfrxPreview.Create(page);
      with PrevReport do
      begin
        Name := prefijoPrv;
        Parent :=     Page;
        Align  := alClient;
      end;

      Report := TfrxReport.Create(page);
      with Report do
      begin
        Name := prefijoRpt;
        //Align := alClient;
      end;

      btnImprimir := tcxButton.Create(pnl);
      with btnImprimir do
      begin
        Name := PrefijoIMP;
        Caption := 'Imprimir';
        Parent  :=    pnl;
        Align   := alLeft;
        Height  :=     30;
        Hint :=  Report.name;
        ShowHint := False;
        OnClick := onclickImp;
        AlignWithMargins := True;
        LookAndFeel.NativeStyle := False;
        LookAndFeel.SkinName := 'Office2010Silver';
        OptionsImage.Images := Form2.cxImageResIconosTodos16;
        OptionsImage.ImageIndex := 453;
      end;
      //btnImprimir.OnClick := onclickImp;

      btnExportar := TcxButton.create(pnl);
      with btnExportar do
      begin
        Name := PrefijoEXP;
        Caption := 'Exportar';
        Parent := pnl;
        Align := alLeft;
        Height := 41;
        Hint := prefijoRpt;
        ShowHint := False;
        OnClick := onClickExp;
        AlignWithMargins := True;
        LookAndFeel.NativeStyle := False;
        LookAndFeel.SkinName := 'Office2010Silver';
        OptionsImage.Images := Form2.cxImageResIconosTodos16;
        OptionsImage.ImageIndex := 347;
      end;
      //btnExportar.OnClick := onClickExp;

      chkHojas := TcxCheckBox.Create(pnl);
      with chkHojas do
      begin
        Name := PrefijoCHK;
        Caption := 'Ver Hojas';
        Parent := Pnl;
        Align := alRight;
        AlignWithMargins := True;
        Margins.Left := 10;
        Hint := PrevReport.Name;
        ShowHint := False;
        OnClick := OnClickCheck;
      end;

      Report.preview :=  PrevReport;
      Report.OnGetValue       :=    RNomina.OnGetValue;
      Report.OnDblClickObject := RNominaDblClickObject;
      TabCntMain.ActivePageIndex := Page.PageIndex;

      GenerarReporte('Nomina.fr3',Report);
    end
    else
    begin
      if (InteliDialog.ShowModal('Aviso', 'El reporte que está intentando generar ya ha sido creado, desea volver a generarlo?', mtConfirmation,[mbYes,mbNo], 0)) = mrYes then
      begin
        FindComponent(prefijoN).Destroy;
        crearTabNominas('');
      end;
    end;
  except
    on e: exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.crearTabTipoNomina;
var
  Marca: TBookMark;
  LocCursor: TCursor;
begin
//  LocCursor := Screen.Cursor;
//  try
//    Screen.Cursor := crAppStart;
//
//    //Marca := cdTipoNomina.Bookmark;
//
//    cdTipoNomina.First;
//    tsTiposNomina.AdvTabs.Clear;
//    ListaTiposNomina := TStringList.Create;
//    ListaTiposNomina.Clear;
//    while not cdTipoNomina.Eof do
//    begin
//      //if CompareText(cdTipoNomina.FieldByName('TipoCalculo').AsString, 'PERIODICA') = 0 then
//        With tsTiposNomina.AdvTabs.Add do
//        begin
//          Caption := cdTipoNomina.FieldByName('titulo').AsString;
//          Tag := cdTipoNomina.FieldByName('idtiponomina').AsInteger;
//        end;
//
//      if cdTipoNomina.FieldByName('IdTipoNomina_Liga').IsNull then
//        ListaTiposNomina.AddObject(cdTipoNomina.FieldByName('IdTipoNomina').AsString, TObject(cdTipoNomina.FieldByName('DiasDescanso').AsInteger))
//      else
//        ListaTiposNomina.AddObject(cdTipoNomina.FieldByName('IdTipoNomina_Liga').AsString, TObject(cdTipoNomina.FieldByName('DiasDescanso').AsInteger));
//
//      cdTipoNomina.Next;
//    end;
//  finally
//    Screen.Cursor := LocCursor;
//    //cdTipoNomina.GotoBookmark(Marca);
//  end;
end;

procedure TFrmCatalogoNominas.CxBtnBuscarClick(Sender: TObject);
var
  i: Integer;
  Fila: Integer;
  strNombre: String;
  strBuscar: string;
  Encontrado: Boolean;
begin
  for i := 0 to GridPersonal.RowCount -1 do
      GridPersonal.Cell[1, i].Color := clWhite;
  strBuscar := UpperCase(CxTextEdtBuscar.Text);

  for i := 0 to GridPersonal.RowCount -1 do
  begin
    Encontrado := False;
    strNombre := UpperCase(GridPersonal.Cell[1, i].AsString);
    strNombre := StringReplace(strNombre, ',', '',[rfReplaceAll, rfIgnoreCase]);

    if Pos(strBuscar, strNombre) > 0 then
    begin
      Fila := i;
      Encontrado := True;
    end;
    if Encontrado then
    begin
      GridPersonal.Cell[1, Fila].Color := clSkyBlue;
      gridPersonal.SelectCell(1,fila);
      gridPersonal.ScrollToRow(Fila);
    end;
  end;
end;

procedure TFrmCatalogoNominas.CxBtnGenerarClick(Sender: TObject);
var
  Excel, Workbook, Worksheet: Variant;
  rowx, num: Integer;
  mnom_total, tipo: TClientDataSet;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
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

      Worksheet := Excel.Worksheets.Add;

      {$REGION 'Encabesado'}
      WorkSheet.cells[1,8] := 'FECHA';
      WorkSheet.cells[1,11] := 'PREMIO';
      WorkSheet.cells[1,12] := 'PREMIO';
      WorkSheet.cells[1,13] := 'HORAS EXTRAS';
      WorkSheet.cells[1,16] := 'DESPENSA Y PREV. SOCIAL';
      WorkSheet.cells[1,20] := 'PRIMA VACACIONAL';
      WorkSheet.cells[1,23] := 'PTU';
      WorkSheet.cells[1,26] := 'OTROS INGRESOS';
      WorkSheet.cells[1,29] := 'AGUINALDO Y GRATIFICACION';
      WorkSheet.cells[1,32] := 'PRIMA DOMINICAL';
      WorkSheet.cells[1,35] := 'INDENMIZACION';
      WorkSheet.cells[1,38] := 'DIAS FESTIVOS';
      WorkSheet.cells[1,42] := 'Dias';
      WorkSheet.cells[1,43] := 'ISPT';
      WorkSheet.cells[1,44] := 'INGRESO';
      WorkSheet.cells[1,45] := 'INGRESO';
      WorkSheet.cells[1,46] := 'INGRESO';
      WorkSheet.cells[1,47] := 'LIMITE';
      WorkSheet.cells[1,48] := 'EXEDENTE';
      WorkSheet.cells[1,49] := '% SOBRE';
      WorkSheet.cells[1,50] := 'IMPUESTO';
      WorkSheet.cells[1,51] := 'CUOTA';
      WorkSheet.cells[1,52] := 'IMPUESTO';
      WorkSheet.cells[1,53] := 'S-E.';
      WorkSheet.cells[1,54] := 'ISR (CAS)';
      WorkSheet.cells[1,55] := 'S.E.';
      WorkSheet.cells[1,56] := 'S.E. POR';
      WorkSheet.cells[1,57] := 'CAS PAGADO';
      WorkSheet.cells[1,58] := 'ISR A retener';


      WorkSheet.cells[2,1] := 'No.';
      WorkSheet.cells[2,2] := 'APELLIDO PATERNO';
      WorkSheet.cells[2,3] := 'APELLIDO MATERNO';
      WorkSheet.cells[2,4] := 'NOMBRE';
      WorkSheet.cells[2,5] := 'R.F.C.';
      WorkSheet.cells[2,6] := 'CURP';
      WorkSheet.cells[2,7] := 'S.D.';
      WorkSheet.cells[2,8] := 'ALTA';
      WorkSheet.cells[2,9] := 'BAJA';
      WorkSheet.cells[2,10] := 'SUELDOS';
      WorkSheet.cells[2,11] := 'PUNTUALIDAD';
      WorkSheet.cells[2,12] := 'ASISTENCIA';
      WorkSheet.cells[2,13] := 'TOTAL';
      WorkSheet.cells[2,14] := 'EXCENTO';
      WorkSheet.cells[2,15] := 'GRAVADAS';
      WorkSheet.cells[2,16] := 'TOTAL';
      WorkSheet.cells[2,17] := 'EXCENTO';
      WorkSheet.cells[2,18] := 'GRAVADA';
      WorkSheet.cells[2,19] := 'VACACIONES';
      WorkSheet.cells[2,20] := 'TOTAL';
      WorkSheet.cells[2,21] := 'EXCENTO';
      WorkSheet.cells[2,22] := 'GRAVADA';
      WorkSheet.cells[2,23] := 'TOTAL';
      WorkSheet.cells[2,24] := 'EXCENTO';
      WorkSheet.cells[2,25] := 'GRAVADO';
      WorkSheet.cells[2,26] := 'TOTAL';
      WorkSheet.cells[2,27] := 'EXCENTO';
      WorkSheet.cells[2,28] := 'GRAVADO';
      WorkSheet.cells[2,29] := 'TOTAL';
      WorkSheet.cells[2,30] := 'EXCENTO';
      WorkSheet.cells[2,31] := 'GRAVADO';
      WorkSheet.cells[2,32] := 'TOTAL';
      WorkSheet.cells[2,33] := 'EXCENTO';
      WorkSheet.cells[2,34] := 'GRAVADO';
      WorkSheet.cells[2,35] := 'TOTAL';
      WorkSheet.cells[2,36] := 'EXCENTO';
      WorkSheet.cells[2,37] := 'GRAVADO';
      WorkSheet.cells[2,38] := 'TOTAL';
      WorkSheet.cells[2,39] := 'EXCENTO';
      WorkSheet.cells[2,40] := 'GRAVADO';
      WorkSheet.cells[2,41] := 'TOTAL ING';
      WorkSheet.cells[2,42] := 'Trab.';
      WorkSheet.cells[2,43] := 'RETENIDO';
      WorkSheet.cells[2,44] := 'TOTAL';
      WorkSheet.cells[2,45] := 'EXENTO';
      WorkSheet.cells[2,46] := 'GRAVADO';
      WorkSheet.cells[2,47] := 'INFERIOR';
      WorkSheet.cells[2,48] := 'S/LIM. INF.';
      WorkSheet.cells[2,49] := 'EXEDENTE';
      WorkSheet.cells[2,50] := 'MARGINAL';
      WorkSheet.cells[2,51] := 'FIJA';
      WorkSheet.cells[2,52] := 'antes de SE';
      WorkSheet.cells[2,53] := 'que correspondio';
      WorkSheet.cells[2,54] := 'ANUAL';
      WorkSheet.cells[2,55] := 'PAGADO';
      WorkSheet.cells[2,56] := 'PAGAR';
      WorkSheet.cells[2,57] := 'EN EXCESO';
      WorkSheet.cells[2,58] := '(A FAVOR)';
      {$ENDREGION 'Encabesado'}

      tipo := TClientDataSet.Create(nil);
      mnom_total := TClientDataSet.Create(nil);

      if tipo.ProviderName = '' then
        if not CrearConjunto(tipo, 'nom_detallenomina_suc', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Detalle Nóminas']);

      if Not CargarDatosFiltrados(tipo, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Detalle Nóminas', cdNomina.FieldByName('IdNomina').AsInteger, 'IdNomina']);

      if tipo.Active then
        tipo.Refresh
      else
        tipo.Open;

      if tipo.FieldByName('DiasDescanso').AsInteger > 0 then
      begin
        if mnom_total.ProviderName = '' then
          if not CrearConjunto(mnom_total, 'nom_nomina_totaliza_a', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Nóminas']);
      end
      else
      begin
        if mnom_total.ProviderName = '' then
          if not CrearConjunto(mnom_total, 'nom_nomina_totaliza_q', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Nóminas']);
      end;

      if Not CargarDatosFiltrados(mnom_total, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Nóminas', cdNomina.FieldByName('IdNomina').AsInteger, 'IdNomina']);

      if mnom_total.Active then
        mnom_total.Refresh
      else
        mnom_total.Open;

      mnom_total.First;
      num:=1;
      rowx:=3;
      while Not mnom_total.Eof do
      begin
        {$REGION 'Datos'}
        WorkSheet.cells[rowx,1] := num;
        WorkSheet.cells[rowx,2] := mnom_total.fieldbyName('APaterno').AsString;
        WorkSheet.cells[rowx,3] := mnom_total.fieldbyName('AMaterno').AsString;
        WorkSheet.cells[rowx,4] := mnom_total.fieldbyName('Nombres').AsString;
        WorkSheet.cells[rowx,5] := mnom_total.fieldbyName('RFC').AsString;
        WorkSheet.cells[rowx,6] := mnom_total.fieldbyName('Curp').AsString;
        WorkSheet.cells[rowx,7] := mnom_total.fieldbyName('SalarioDiario').AsString;
        //WorkSheet.cells[2,7] := mnom_total.fieldbyName('SalarioIntegrado').AsString;
        WorkSheet.cells[rowx,8] := mnom_total.fieldbyName('FechaAlta').AsString;
        WorkSheet.cells[rowx,9] := mnom_total.fieldbyName('FechaBaja').AsString;
        WorkSheet.cells[rowx,10] := mnom_total.fieldbyName('Sueldos').AsString;
        WorkSheet.cells[rowx,11] := mnom_total.fieldbyName('PremioPuntualidad').AsString;
        WorkSheet.cells[rowx,12] := mnom_total.fieldbyName('PremioAsistencia').AsString;
        WorkSheet.cells[rowx,13] := mnom_total.fieldbyName('HorasExtra').AsString;
        WorkSheet.cells[rowx,14] := mnom_total.fieldbyName('HorasExtra').AsInteger-mnom_total.fieldbyName('HorasExtraGravables').AsInteger;
        WorkSheet.cells[rowx,15] := mnom_total.fieldbyName('HorasExtraGravables').AsInteger;
        WorkSheet.cells[rowx,16] := mnom_total.fieldbyName('Despensa').AsString;
        WorkSheet.cells[rowx,17] := mnom_total.fieldbyName('Despensa').AsInteger-mnom_total.fieldbyName('DespensaGrav').AsInteger;
        WorkSheet.cells[rowx,18] := mnom_total.fieldbyName('DespensaGrav').AsString;
        WorkSheet.cells[rowx,19] := mnom_total.fieldbyName('Vacaciones').AsString;
        //WorkSheet.cells[2,18] := mnom_total.fieldbyName('VacacionesGravadas').AsString;
        WorkSheet.cells[rowx,20] := mnom_total.fieldbyName('PrimaVacacional').AsString;
        WorkSheet.cells[rowx,21] := mnom_total.fieldbyName('PrimaVacacional').AsInteger-mnom_total.fieldbyName('PrimaVacacionalGravada').AsInteger;
        WorkSheet.cells[rowx,22] := mnom_total.fieldbyName('PrimaVacacionalGravada').AsString;
        WorkSheet.cells[rowx,23] := mnom_total.fieldbyName('PTU').AsString;
        WorkSheet.cells[rowx,24] := mnom_total.fieldbyName('PTU').AsInteger-mnom_total.fieldbyName('PTUGravable').AsInteger;
        WorkSheet.cells[rowx,25] := mnom_total.fieldbyName('PTUGravable').AsString;
        WorkSheet.cells[rowx,26] := mnom_total.fieldbyName('OtrosIngresos').AsString;
        WorkSheet.cells[rowx,27] := mnom_total.fieldbyName('OtrosIngresos').AsInteger-mnom_total.fieldbyName('OtrosIngresosGravables').AsInteger;
        WorkSheet.cells[rowx,28] := mnom_total.fieldbyName('OtrosIngresosGravables').AsString;
        WorkSheet.cells[rowx,29] := mnom_total.fieldbyName('Aguinaldo').AsString;
        WorkSheet.cells[rowx,30] := mnom_total.fieldbyName('Aguinaldo').AsInteger-mnom_total.fieldbyName('AguinaldoGravable').AsInteger;
        WorkSheet.cells[rowx,31] := mnom_total.fieldbyName('AguinaldoGravable').AsString;
        WorkSheet.cells[rowx,32] := mnom_total.fieldbyName('PrimaDominical').AsString;
        WorkSheet.cells[rowx,33] := mnom_total.fieldbyName('PrimaDominical').AsInteger-mnom_total.fieldbyName('PrimaDominicalGravable').AsInteger;
        WorkSheet.cells[rowx,34] := mnom_total.fieldbyName('PrimaDominicalGravable').AsString;
        WorkSheet.cells[rowx,35] := mnom_total.fieldbyName('Indemnizacion').AsString;
        WorkSheet.cells[rowx,36] := mnom_total.fieldbyName('Indemnizacion').AsInteger-mnom_total.fieldbyName('IndemnizacionGravable').AsInteger;
        WorkSheet.cells[rowx,37] := mnom_total.fieldbyName('IndemnizacionGravable').AsString;
        WorkSheet.cells[rowx,38] := mnom_total.fieldbyName('DiasFestivos').AsString;
        WorkSheet.cells[rowx,39] := mnom_total.fieldbyName('DiasFestivos').AsInteger-mnom_total.fieldbyName('DiasFestivosGrav').AsInteger;
        WorkSheet.cells[rowx,40] := mnom_total.fieldbyName('DiasFestivosGrav').AsInteger;

        WorkSheet.cells[rowx,42] := mnom_total.fieldbyName('DiasTrab').AsString;
        WorkSheet.cells[rowx,43] := mnom_total.fieldbyName('ISPTRetenido').AsString;
        WorkSheet.cells[rowx,47] := mnom_total.fieldbyName('LimiteInferior').AsString;
        WorkSheet.cells[rowx,48] := mnom_total.fieldbyName('ExedenteLimiteInferior').AsString;
        WorkSheet.cells[rowx,49] := mnom_total.fieldbyName('PorcentajeSExedente').AsString;
        WorkSheet.cells[rowx,50] := mnom_total.fieldbyName('ImpuestoMarginal').AsString;
        WorkSheet.cells[rowx,51] := mnom_total.fieldbyName('CuotaFija').AsString;
        WorkSheet.cells[rowx,52] := mnom_total.fieldbyName('ISPTAntesSubsidio').AsString;
        WorkSheet.cells[rowx,53] := mnom_total.fieldbyName('Subsidio').AsString;
        WorkSheet.cells[rowx,54] := mnom_total.fieldbyName('ISPTCAS').AsString;
        WorkSheet.cells[rowx,55] := mnom_total.fieldbyName('SEPagado').AsString;
        WorkSheet.cells[rowx,56] := mnom_total.fieldbyName('ISPTPorPagar').AsString;
        WorkSheet.cells[rowx,57] := mnom_total.fieldbyName('CASPagadoExceso').AsString;
        WorkSheet.cells[rowx,58] := mnom_total.fieldbyName('ISRARetener').AsString;
        {$ENDREGION 'Datos'}
        Inc(num);
        Inc(rowx);
        mnom_total.Next;
      end;

      {$REGION 'Formato'}
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(6)+IntToStr(1)].select;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(6)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(7)+IntToStr(1)+':'+LetraColumna(8)+IntToStr(1)].select;
      Excel.Range[LetraColumna(7)+IntToStr(1)+':'+LetraColumna(8)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(12)+IntToStr(1)+':'+LetraColumna(14)+IntToStr(1)].select;
      Excel.Range[LetraColumna(12)+IntToStr(1)+':'+LetraColumna(14)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(15)+IntToStr(1)+':'+LetraColumna(17)+IntToStr(1)].select;
      Excel.Range[LetraColumna(15)+IntToStr(1)+':'+LetraColumna(17)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(19)+IntToStr(1)+':'+LetraColumna(21)+IntToStr(1)].select;
      Excel.Range[LetraColumna(19)+IntToStr(1)+':'+LetraColumna(21)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(22)+IntToStr(1)+':'+LetraColumna(24)+IntToStr(1)].select;
      Excel.Range[LetraColumna(22)+IntToStr(1)+':'+LetraColumna(24)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(25)+IntToStr(1)+':'+LetraColumna(27)+IntToStr(1)].select;
      Excel.Range[LetraColumna(25)+IntToStr(1)+':'+LetraColumna(27)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(28)+IntToStr(1)+':'+LetraColumna(30)+IntToStr(1)].select;
      Excel.Range[LetraColumna(28)+IntToStr(1)+':'+LetraColumna(30)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(31)+IntToStr(1)+':'+LetraColumna(33)+IntToStr(1)].select;
      Excel.Range[LetraColumna(31)+IntToStr(1)+':'+LetraColumna(33)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(34)+IntToStr(1)+':'+LetraColumna(36)+IntToStr(1)].select;
      Excel.Range[LetraColumna(34)+IntToStr(1)+':'+LetraColumna(36)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(37)+IntToStr(1)+':'+LetraColumna(39)+IntToStr(1)].select;
      Excel.Range[LetraColumna(37)+IntToStr(1)+':'+LetraColumna(39)+IntToStr(1)].merge;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].select;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].HorizontalAlignment := xlCenter;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].VerticalAlignment := xlBottom;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].Font.Bold := true;

      Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].select;
      Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].HorizontalAlignment := xlRight;
      Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].VerticalAlignment := xlBottom;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].select;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].Font.Name := 'Arial';
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].Font.size := 8;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.colorIndex := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.TintAndShade := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.Weight := xlMedium;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.LineStyle := xlContinuous;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlDiagonalDown].LineStyle := xlNone;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlDiagonalUp].LineStyle := xlNone;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideVertical].weight := xlMedium;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideHorizontal].LineStyle := xlNone;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.colorIndex := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.TintAndShade := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.Weight := xlMedium;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.LineStyle := xlContinuous;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders[xlInsideHorizontal].LineStyle := xlNone;

      Excel.Range[LetraColumna(6)+IntToStr(3)+':'+LetraColumna(57)+IntToStr(rowx)].NumberFormat := '###,###,##0.00';
      Excel.Range[LetraColumna(6)+IntToStr(3)+':'+LetraColumna(57)+IntToStr(rowx)].NumberFormat := '###,###,##0.00';

      Excel.cells.Columns.AutoFit;
      {$ENDREGION 'Formato'}
    finally
      FreeAndNil(tipo);
      FreeAndNil(mnom_total);
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
  end;
end;

procedure TFrmCatalogoNominas.CxChkBoxCalcExcelPropertiesChange(
  Sender: TObject);
begin
  CxLCbbMachotes.Visible := CxChkBoxCalcExcel.Checked;
  If CxChkBoxCalcExcel.checked then
    CargarMachotes;
end;

procedure TFrmCatalogoNominas.CxChkBoxReferenciaClick(Sender: TObject);
begin
  CxCbbReferencia.Enabled := CxChkBoxReferencia.Checked;

  if CxChkBoxReferencia.Checked then
    CxCbbReferencia.ItemIndex := 0
  else
    CxCbbReferencia.ItemIndex := -1;
end;

procedure TFrmCatalogoNominas.CxTextEdtBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    CxBtnBuscar.Click;
end;

procedure TFrmCatalogoNominas.DbLCbbGuardiasPropertiesEditValueChanged(
  Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if (cdGuardias.Active) and (cdGuardias.RecordCount > 0) (*and (Not CargandoGuardias)*) then
      begin
        if cdPeriodos.ProviderName <> '' then
        begin
          cdPeriodos.Filtered := False;
          cdPeriodos.Filter := 'IdGuardia = ' + cdGuardias.FieldByName('IdGuardia').AsString;
          cdPeriodos.Filtered := True;
          cdPeriodos.First;
          cbbPeriodos.EditValue := cdPeriodos.FieldByName('IdPeriodosGuardia').AsInteger;
        end
        else
          cdPeriodos.Close;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCatalogoNominas.destruirObjetos;
var
  i: Integer;
begin
  try
    i := TabCntMain.PageCount - 1;
    //destruir todas las paginas
    while i >= 0 do
    begin
      if Assigned(FindComponent(TabCntMain.Pages[i].Name )) then
        FindComponent(TabCntMain.Pages[i].Name).Destroy;
      i := i - 1;
    end;

    if Assigned(cdDeptos) and (cdDeptos.ProviderName <> '') then
    begin
      EliminarConjunto(cdDeptos);
      cdDeptos.ProviderName := '';
    end;

    if cdDeptos.Active then
      cdDeptos.Close;

    cbbDeptos.ItemIndex := -1;

    if Assigned(FindComponent('tFrmDeptos')) then
      FindComponent('tFrmDeptos').Destroy;
  except
    on e: exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.DxBarBtn1Click(Sender: TObject);
var
  Excel, Workbook, Worksheet: Variant;
  RowX, RowIni, RowActual, ColY, ColIni, ColActual, Recorrido,
  inicio, fin, i,j,k, Tamano, TotalEmpleados: Integer;
  oldOrganizacion, oldCargo, FormulaTotGen  :  string;
  TotalNomina: Extended;
  TempPath   :   String;
  LogoFile   :   String;
  cdtRegistros: TClientDataSet;
  pIdNomina   :        Integer;
  ListaPercepciones, ListaDeducciones, ListaPersonal,
  ListaPerMemoria, ListaExtras, ListaDeptos, ListaPos: TStringList;
function universoConcepto(Campo: string;ordenar: string; Filtrar: string; var cdDatos: TClientDataSet; var ListaRubro: TStringList): Boolean;
var
  oldRubro: string;
begin
  try
    try
      if not Assigned(ListaRubro) then
        ListaRubro := TStringList.Create;

      if cdDatos.RecordCount > 0 then
      begin
        if Length(Trim(Filtrar)) > 0 then
        begin
          cdDatos.Filtered := False;
          cdDatos.Filter := Filtrar;
          cdDatos.Filtered :=  True;
        end;

        cdDatos.IndexFieldNames := ordenar;
        cdDatos.First;
        oldRubro := cdDatos.FieldByName(Campo).AsString;
        ListaRubro.Add(oldRubro);

        cdDatos.First;
        while not cdDatos.Eof do
        begin
          if CompareText(oldRubro, cdDatos.FieldByName(Campo).AsString) <> 0 then
          begin
            oldRubro := cdDatos.FieldByName(Campo).AsString;
            ListaRubro.Add(oldRubro);
          end;
          cdDatos.Next;
        end;

        if ListaRubro.Count > 0 then
          Result := True
        else
          Result := False;
      end;
    finally
      cdDatos.Filtered := False;
    end;
  except
     on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', e.Message, mtError, [mbOK], 0);
  end;
end;
procedure FormatoEncabezado(TipoLetra: string; Negrita: Boolean; ColorLetra: Integer; TamanoLetra: Integer; Color: Integer; Rango: String; Aplica: String);
begin
  if aplica = 'ASDF' then
  begin
    //FORMATO A CELDAS DE EXCEL
    Excel.Range[Rango].select;
    Excel.selection.interior.Color := Color;//11232555; <-Azul indigo
    //Bordes
    Excel.Selection.Borders[xlDiagonalDown].lineStyle :=     xlNone;
    Excel.Selection.Borders[xlDiagonalUp].lineStyle   :=     xlNone;
    Excel.Selection.Borders[xlEdgeBottom].lineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight      :=   xlMedium;
    Excel.Selection.Borders[xlEdgeLeft].lineStyle   := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight        :=   xlMedium;
    Excel.Selection.Borders[xlEdgeTop].lineStyle    := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight         :=   xlMedium;
    Excel.Selection.Borders[xlEdgeRight].lineStyle  := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight       :=   xlMedium;
    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].Weight  :=     xlThin;

    //Fuente
    Excel.Selection.Font.Bold := Negrita;
    Excel.Selection.Font.Name := TipoLetra;
    Excel.Selection.Font.Size := TamanoLetra;
    Excel.Selection.Font.Color := ColorLetra;
  end
  else if aplica = 'SUBTITULO' then
  begin
    //FORMATO A CELDAS DE EXCEL
    Excel.Range[Rango].select;
    Excel.selection.interior.Color := Color;//11232555; <-Azul indigo
    //Bordes
    Excel.Selection.Borders[xlDiagonalDown].lineStyle :=    xlNone;
    Excel.Selection.Borders[xlDiagonalUp].lineStyle   :=    xlNone;
    Excel.Selection.Borders[xlEdgeBottom].lineStyle   := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight      :=  xlMedium;
    Excel.Selection.Borders[xlEdgeLeft].lineStyle :=  xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight        :=  xlMedium;
    Excel.Selection.Borders[xlEdgeTop].lineStyle  :=  xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight         :=  xlMedium;
    Excel.Selection.Borders[xlEdgeRight].lineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight       :=  xlMedium;
    Excel.Selection.Borders[xlInsideVertical].LineStyle :=  xlNone;

    //Fuente
    Excel.Selection.Font.Bold  :=     Negrita;
    Excel.Selection.Font.Name  :=   TipoLetra;
    Excel.Selection.Font.Size  := TamanoLetra;
    Excel.Selection.Font.Color :=  ColorLetra;
  end
  else
  begin
     Excel.Range[Rango].select;
     Excel.Selection.Borders[xlDiagonalDown].lineStyle :=   xlNone;
     Excel.Selection.Borders[xlDiagonalUp].lineStyle   :=   xlNone;
     Excel.Selection.Borders[xlEdgeBottom].lineStyle   := xlContinuous;
     Excel.Selection.Borders[xlEdgeBottom].Weight      := xlMedium;
     Excel.Selection.Borders[xlEdgeLeft].lineStyle  := xlContinuous;
     Excel.Selection.Borders[xlEdgeLeft].Weight        := xlMedium;
     Excel.Selection.Borders[xlEdgeTop].lineStyle      := xlContinuous;
     Excel.Selection.Borders[xlEdgeTop].Weight         := xlMedium;
     Excel.Selection.Borders[xlEdgeRight].lineStyle := xlContinuous;
     Excel.Selection.Borders[xlEdgeRight].Weight       := xlMedium;
     Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
     Excel.Selection.Borders[xlInsideVertical].Weight  :=   xlThin;
     Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
     Excel.Selection.Borders[xlInsideHorizontal].Weight :=  xlThin;
     Excel.Selection.Font.Bold :=     Negrita;
     Excel.Selection.Font.Name :=   TipoLetra;
     Excel.Selection.Font.Size := TamanoLetra;
     Excel.Selection.Font.Color := ColorLetra;
  end;
end;
begin
  try
    if dlgSaveExcel.Execute then
    begin
      dlgSaveExcel.FileName;
      cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      try
        if Not Assigned(cdtRegistros) then
          cdtRegistros := TClientDataSet.Create(Self);

        //Crear Lista de Conceptos que no son deducciones o percepciones
        if not Assigned(ListaExtras) then
          ListaExtras := TStringList.Create;

        if not Assigned(ListaPos) then
          ListaPos := TStringList.Create;

        ListaExtras.Add('EMPLEADOS');
        ListaExtras.Add('DIAS LABORADOS');
        ListaExtras.Add('SALARIO DIARIO');
        ListaExtras.Add('TOTAL DEDUCCIONES');
        ListaExtras.Add('TOTAL NOMINA');
        ListaExtras.Add('TOTAL PAGADO');
        ListaExtras.Add('No. CUENTA');
        ListaExtras.Add('BANCO');

        pIdNomina := cdNomina.FieldByName('IdNomina').AsInteger;
        if cdtRegistros.ProviderName = '' then
          if not CrearConjunto(cdtRegistros, 'nom_detallenomina_export', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Detalle Nómina']);

        if not CargarDatosFiltrados(cdtRegistros, 'ListaNominas', [pIdNomina]) then
          raise InteligentException.CreateByCode(6, ['Detalle Nómina', 'IdNomina', IntToStr(pIdNomina)]);

        if cdtRegistros.Active then
          cdtRegistros.Refresh
        else
          cdtRegistros.Open;

        if cdtRegistros.RecordCount = 0 then
          raise InteligentException.CreateByCode(24, ['No hay registros para exportar.']);

        //Cargar Rubros de Nóminas [Deducciones, Percepciones]
        universoConcepto('Nombre','Orden','Modo =' + QuotedStr('PERCEPCION'), cdtRegistros, ListaPercepciones);
        universoConcepto('Nombre','Orden','Modo =' + QuotedStr('DEDUCCION'), cdtRegistros, ListaDeducciones);
        universoConcepto('Nombre','Orden', 'Modo =' + QuotedStr('PER-MEMORIA'), cdtRegistros, ListaPerMemoria);
        universoConcepto('TituloDepartamento', 'TituloDepartamento', '', cdtRegistros, ListaDeptos);
        //HOja
        Excel := CreateOleObject('Excel.Application');
        // Mostrar el excel
        Excel.Visible:= true;
        // evitar que nos pregunte si deseamos sobreescribir el archivo
        Excel.DisplayAlerts := false;
        // agregar libro de trabajo
        Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
        // Eliminar todas las hojas excepto 1
        while Workbook.Sheets.Count > 1 do
          WorkBook.WorkSheets[1].Delete;

        // tomar una referencia a la hoja creada
        WorkSheet := WorkBook.WorkSheets[1];
        RowIni := 8;
        ColIni := 1;
        RowX := RowIni;
        ColY := ColIni;
        Recorrido := 0;
        TotalNomina := 0;
        TotalEmpleados := 0;
        {$REGION 'ENCABEZADO'}
        //Logo - Encabezado
        TempPath := GetEnvironmentVariable('TEMP');
        LogoFile := TempPath + '\Temp.bmp';
        TBlobField( Form2.cdImagen.FieldByName('imagen1')).SaveToFile(LogoFile);

        //Encabezado
        WorkSheet.shapes.addpicture(LogoFile, False, True, 10, 10, 150, 75) ;
        WorkSheet.cells[1, ColY + 4] := 'REPORTE DE NÓMINAS GERENCIAL';
        WorkSheet.cells[1, ColY + 4].select;
        Excel.Selection.Font.Bold := True;
        Excel.selection.Font.Size := 14;
        Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(9)+IntToStr(1)].select;
        Excel.selection.merge;
        Excel.selection.HorizontalAlignment := xlCenter;
        WorkSheet.cells[2, ColY + 4] := 'NOMINA: ' + cdNomina.FieldByName('Titulo').AsString;
        WorkSheet.cells[2, ColY + 4].select;
        Excel.Selection.Font.Bold := True;
        Excel.selection.Font.Size := 14;
        Excel.Range[LetraColumna(0)+IntToStr(2)+':'+LetraColumna(9)+IntToStr(2)].select;
        Excel.selection.merge;
        Excel.selection.HorizontalAlignment := xlCenter;
        {$ENDREGION 'ENCABEZADO'}

        //Encabezado de Columnas
        //Primeras filas de las izquierda
        for i := 0 to ListaExtras.Count - 1 do
        begin
          if i < 3 then
          begin
            Worksheet.cells[RowX, ColY] := ListaExtras[i];
            Excel.Range[LetraColumna(ColY-1)+intToStr(RowX-1)+':'+LetraColumna(ColY-1) + intToStr(RowX)].select;
            Excel.Selection.HorizontalAlignment :=  xlCenter;
            Excel.Selection.VerticalAlignment   :=  xlBottom;
            Excel.Selection.ShrinkToFit         := xlContext;
            Excel.Selection.WrapText    :=  True;
            Excel.Selection.Orientation :=     0;
            Excel.Selection.addIndent   := False;
            Excel.Selection.merge;
            inc(ColY);
          end
          else
          begin
            Worksheet.cells[RowX - 1, ColY] := 'PERCEPCIONES';
            Worksheet.cells[RowX - 1, ColY + ListaPercepciones.Count + 1] := 'DEDUCCIONES';
            Excel.Range[
                        LetraColumna(ColY-1)+ InttoStr(RowIni -1) + ':' +
                        LetraColumna(ColY + ListaPercepciones.Count - 2) + IntToStr(RowIni-1)
                       ].merge;

            Excel.Range[
                        LetraColumna(ColY + ListaPercepciones.Count)+ InttoStr(RowIni-1) + ':' +
                        LetraColumna(ColY + ListaPercepciones.Count + ListaDeducciones.Count -1) + IntToStr(RowIni-1)
                       ].merge;
          end;
        end;

        //Ahora le toca a las percepciones(Encabezados)
        for i := 0 to ListaPercepciones.Count - 1 do
        begin
          Worksheet.cells[RowX, ColY] := ListaPercepciones[i];
          Worksheet.cells[RowX, ColY].select;
          Excel.Selection.HorizontalAlignment :=  xlCenter;
          Excel.Selection.VerticalAlignment   :=  xlBottom;
          Excel.Selection.ShrinkToFit         := xlContext;
          Excel.Selection.WrapText    := True;
          Excel.Selection.Orientation :=    0;
          Excel.Selection.addIndent  := False;
          Inc(ColY);
        end;

        WorkSheet.Cells[RowX, ColY] := 'TOTAL PERCEPCIONES';
        Excel.Range[LetraColumna(ColY-1)+intToStr(RowX-1)+':'+LetraColumna(ColY-1) + intToStr(RowX)].select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment   := xlBottom;
        Excel.Selection.ShrinkToFit := xlContext;
        Excel.Selection.WrapText    :=      True;
        Excel.Selection.Orientation :=         0;
        Excel.Selection.addIndent   :=     False;
        Excel.Selection.merge;
        Inc(ColY);

        Tamano := ListaDeducciones.Count - 1;
        for i := 0 to Tamano do
        begin
          WorkSheet.cells[RowX, ColY] := ListaDeducciones[i];
          Worksheet.cells[RowX, ColY].select;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment   := xlBottom;
          Excel.Selection.ShrinkToFit := xlContext;
          Excel.Selection.WrapText    :=      True;
          Excel.Selection.Orientation :=     0;
          Excel.Selection.addIndent   := False;
          Inc(ColY);
        end;
        //Lista de columnas restantes
        for i := 3 to ListaExtras.Count - 1 do
        begin
          Worksheet.cells[RowX, ColY] := ListaExtras[i];
          Excel.Range[LetraColumna(ColY-1)+intToStr(RowX-1)+':'+LetraColumna(ColY-1) + intToStr(RowX)].select;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment   := xlBottom;
          Excel.Selection.ShrinkToFit :=        xlContext;
          Excel.Selection.WrapText    :=  True;
          Excel.Selection.Orientation :=     0;
          Excel.Selection.addIndent   := False;
          Excel.Selection.merge;
          inc(ColY);
        end;

        //Formato a encabezado
        FormatoEncabezado('Arial Narrow',True,clBlack,10,11200714,LetraColumna(ColIni - 1)+IntToStr(RowX) + ':' + LetraColumna(ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count) + IntToStr(RowX),'ASDF'); //Encabezado
        //Formato a Títulos 'Percepciones'
        FormatoEncabezado('Arial Narrow',False,clBlack,10,15850183,LetraColumna(3)+IntToStr(RowX) + ':' + LetraColumna(ListaPercepciones.Count + 2) + IntToStr(RowX),'ASDF'); //Encabezado
        FormatoEncabezado('Arial Narrow',False,clBlack,10,14856842,LetraColumna(3)+IntToStr(RowX-1) + ':' + LetraColumna(ListaPercepciones.Count + 2) + IntToStr(RowX-1),'ASDF'); //Encabezado
        //Formato a Títulos 'Deducciones'
        FormatoEncabezado('Arial Narrow',False,clBlack,10,10997243,LetraColumna(4 + ListaPercepciones.Count)+IntToStr(RowX) + ':' + LetraColumna(ListaDeducciones.Count + ListaPercepciones.Count + 3) + IntToStr(RowX),'ASDF'); //Encabezado
        FormatoEncabezado('Arial Narrow',False,clBlack,10,683752,LetraColumna(4 + ListaPercepciones.Count)+IntToStr(RowX-1) + ':' + LetraColumna(ListaDeducciones.Count + ListaPercepciones.Count + 3) + IntToStr(RowX-1),'ASDF'); //Encabezado

        //Ordenar Dataset y Recorrer Registros
        cdtRegistros.First;
        cdtRegistros.IndexFieldNames := 'TituloDepartamento';
        for k := 0 to ListaDeptos.Count -1 do
        begin
          //Rastrear al personal de acuerdo al orden de las organizaciones
          Inc(RowX);
          RowActual := RowX + 1;
          Worksheet.cells[RowX, 1] := 'AREA: ' + ListaDeptos[k];
          FormatoEncabezado('Arial Narrow',true,-16777088,10, clWhite,LetraColumna(ColIni-1)+IntToStr(RowX) + ':' + LetraColumna(ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count) + IntToStr(RowX),'SUBTITULO'); //Encabezado

          universoConcepto('IdPersonal','IdPersonal', 'TituloDepartamento =' + QuotedStr(ListaDeptos[k]), cdtRegistros, ListaPersonal);
          TotalEmpleados := TotalEmpleados + ListaPersonal.Count;
          for i := 0 to (ListaPersonal.Count -1) do
          begin
            cdtRegistros.Filtered := False;
            cdtRegistros.Filter := 'IdPersonal =' + QuotedStr(ListaPersonal[i]);
            cdtRegistros.Filtered := True;
            cdTRegistros.first;

            //Leer Percepciones y acomodarlas en la columna correspondiente
            Worksheet.Cells[RowX+1, ColIni + ListaExtras.IndexOf('SALARIO DIARIO')] :=  cdtRegistros.FieldByName('SalarioDiario').AsExtended;
            if cdtRegistros.Locate('Nombre', 'Dias Efectivos', []) then
            begin
              Worksheet.Cells[RowX+1, ColIni + ListaExtras.IndexOf('DIAS LABORADOS')] := cdtRegistros.FieldByName('Importe').AsExtended;
            end;

            ColY := ColIni + 3;
            Inc(RowX);

            WorkSheet.cells[Rowx, ColIni] := cdtRegistros.FieldByName('NombreCompleto').asString;
            WorkSheet.cells[Rowx, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.IndexOf('No. CUENTA')+2] := cdtRegistros.FieldByName('sCuenta').asString;
            WorkSheet.cells[Rowx, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.IndexOf('No. CUENTA')+3] := cdtRegistros.FieldByName('sBanco').asString;

            For j := 0 to ListaPercepciones.Count - 1 do
            begin
              if cdtRegistros.Locate('Nombre', listaPercepciones[j], []) then
                Worksheet.cells[RowX, ColY + ListaPercepciones.IndexOf(ListaPercepciones[j])] := cdtRegistros.FieldByName('Importe').AsExtended;
              ColActual := ColY + j;
            end;

            Inc(ColY);
            Worksheet.Cells[RowX, ColY + ListaPercepciones.Count - 1].Select;
            Worksheet.Cells[RowX, ColY + ListaPercepciones.Count - 1].FormulaR1C1 := '=SUM(RC[-' + IntToStr(ListaPercepciones.Count-1) + ']:RC[-1])';
            Worksheet.Cells[RowX, ListaDeducciones.Count + ListaPercepciones.Count + 7].Select;
            Worksheet.Cells[RowX, ListaDeducciones.Count + ListaPercepciones.Count + 7].FormulaR1C1 := '=RC[-' + IntToStr(ListaDeducciones.Count + 2) + ']+RC[-1]'; //****

            ColY := ColIni + listaPercepciones.Count + 3;
            for j := 0 to ListaDeducciones.Count -1 do
            begin
              if cdtRegistros.Locate('Nombre', ListaDeducciones[j], []) then
                Worksheet.cells[RowX, ColY + j+1] := cdtRegistros.FieldByName('Importe').AsExtended;
              ColActual := ColY + j + 1;
            end;

            Worksheet.Cells[RowX, ColActual +1].Select;
            Worksheet.Cells[RowX, ColActual +1].FormulaR1C1 := '=SUM(RC[-' + IntToStr(ListaDeducciones.Count) + ']:RC[-1])';
            Worksheet.Cells[RowX, ColActual +2].Select;
            Worksheet.Cells[RowX, ColActual +2].FormulaR1C1 := '=RC[-' + IntToStr(ListaPercepciones.Count + ListaDeducciones.Count + 2) + ']+RC[-' + IntToStr(ListaDeducciones.Count + 2) + ']-RC[-1]';
          end;
          Inc(RowX);
          //subtotal por Departamento
          Worksheet.Cells[RowX, ColActual - ListaDeducciones.Count].FormulaR1C1 := '=SUM(R[-1]C:R[-' + IntToStr(RowX - RowActual) + ']C)';
          Worksheet.Cells[RowX, ColActual +3].FormulaR1C1 := '=SUM(R[-1]C:R[-' + IntToStr(RowX - RowActual) + ']C)';
          TotalNomina := TotalNomina + Worksheet.cells[RowX, ColActual +3].value;
          Worksheet.Cells[RowX, ColActual +2].FormulaR1C1 := '=SUM(R[-1]C:R[-' + IntToStr(RowX - RowActual) + ']C)';
          Worksheet.Cells[RowX, ColActual +1].FormulaR1C1 := '=SUM(R[-1]C:R[-' + IntToStr(RowX - RowActual) + ']C)';

          Worksheet.cells[RowX, ColIni] := 'TOTAL ' + ListaDeptos[k];
          //ListaPos.Add(RowX);

          //Formato al cuerpo del excel
          FormatoEncabezado('Arial Narrow',False,clBlack,10, clWhite,LetraColumna(ColIni-1)+IntToStr(RowActual) + ':' + LetraColumna(ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count) + IntToStr(RowX),'CUERPO'); //Encabezado
          FormatoEncabezado('Arial Narrow',true,clBlack,10, clWhite,LetraColumna(ColIni-1)+IntToStr(RowX) + ':' + LetraColumna(ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count) + IntToStr(RowX),'SUBTITULO'); //Encabezado
          Excel.Range[LetraColumna(ColIni-1)+IntToStr(RowActual) + ':' + LetraColumna(ListaPercepciones.Count + ListaDeducciones.Count + 6) + IntToStr(RowX)].NumberFormat := '$#,##0.00';
          ListaPersonal.Clear;
        end;
        Excel.Columns[LetraColumna(ColIni-1)+':'+LetraColumna(ColIni-1)].EntireColumn.Autofit;
        //TOTAL NOMINA
        FormatoEncabezado('Arial Narrow',true,clBlack,10,5494527,LetraColumna(ListaDeducciones.Count + ListaPercepciones.Count + ListaExtras.IndexOf('TOTAL PAGADO')+1)+IntToStr(RowIni) + ':' + LetraColumna(ListaDeducciones.Count + ListaPercepciones.Count + ListaExtras.IndexOf('TOTAL PAGADO')+1) + IntToStr(RowX),'ASDF'); //Encabezado
        FormatoEncabezado('Arial Narrow',true,clBlack,10,14856842,LetraColumna(ListaPercepciones.Count + 3)+IntToStr(RowIni) + ':' + LetraColumna(ListaPercepciones.Count + 3) + IntToStr(RowX),'ASDF'); //Encabezado
        FormatoEncabezado('Arial Narrow',true,clBlack,10,683752,LetraColumna(ListaPercepciones.Count + ListaDeducciones.Count + 4)+IntToStr(RowIni) + ':' + LetraColumna(ListaPercepciones.Count + ListaDeducciones.Count + 4) + IntToStr(RowX),'ASDF'); //Encabezado
        Excel.activeWindow.DisplayGridLines := False;
        Inc(RowX);
        Inc(RowX);
        //TOTAL GENERAL EMPLEADOS
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count - 1] :=  'PERSONAL INCLUIDO: ';
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count - 1].Font.bold := True;
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count+1] := VarToStr(TotalEmpleados);
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count+1].Font.Bold   := True;

        //TOTAL GENERAL NOMINA
        Inc(RowX);
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count - 1] := 'TOTAL NOMINA: ';
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count - 1].Font.Bold := True;
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count+1] := VarToStr(TotalNomina);
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count+1].numberFormat := '$#,##0.00';
        Worksheet.cells[RowX, ListaPercepciones.Count + ListaDeducciones.Count + ListaExtras.Count+1].Font.Bold := True;

        Excel.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + '.xls');
        InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
      finally
        Screen.Cursor := Cursor;
        cdtRegistros.Destroy;
      end;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoNominas.DxBarBtnCalcularClick(Sender: TObject);
begin
  //LocIdPersonal := -1;
  crearEstructuraCalculo;

  if Not YaCreado then
    CrearEstructura;

  AbrirNomina(cdNomina.FieldByName('IdNomina').AsInteger);

  CalcularNomina(False, -1);
  ClientModule1.registrarEvento('NOMINAS','CALCULO DE NOMINA','CALCULO DE NOMINA DIRECTA', 0.0, 0);
end;

procedure TFrmCatalogoNominas.DxBarBtnCalcularSeleccionandoClick(
  Sender: TObject);
var
  cdSueldoRH: TClientDataSet;
  LocCursor: TCursor;
begin
  LocCursor := Screen.Cursor;
  try
    try
//      Screen.Cursor := crAppStart;
//      Screen.Cursors[crAppStart] := LoadCursorFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Busy.ani'));
      Screen.Cursor := crAppStart;
      //cdSueldoRH := TClientDataSet.Create(nil);

      //if not CrearConjunto(cdSueldoRH, 'erp_empleados', ccUpdate) then
        //raise InteligentException.CreateByCode(5,['Empleados ERP']);

      //if not CargarDatosFiltrados(cdSueldoRH, 'sidempleado', [-1]) then
        //raise InteligentException.CreateByCode(11, [' al filtrar por empleado']);

      //if cdSueldoRH.Active then
        //cdSueldoRH.Refresh
      //else
        //cdSueldoRH.Open;
      crearEstructuraCalculo;

      if Not YaCreado then
        CrearEstructura;

      AbrirNomina(cdNomina.FieldByName('IdNomina').AsInteger);

      CalcularNomina(True, -1);

      if (cdPersonalIncluido <> nil) and  (cdPersonalIncluido.Active) then
        cdPersonalIncluido.Close;

      AbrirPersonalIncluido(cdPersonalIncluido, cdNomina.FieldByName('IdNomina').asInteger, False);
    finally
      Screen.Cursor := LocCursor;
      //EliminarConjunto(cdSueldoRH);
      //cdSueldoRH.Destroy;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.DxBarBtnCerrarPeestanaClick(Sender: TObject);
begin
  TcxTabSheet(pageControl1.ActivePage).TabVisible := False;
end;

procedure TFrmCatalogoNominas.DxBarBtnConcentradoNominasClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmConcentradoNomina, FrmConcentradoNomina);
    FrmConcentradoNomina.ShowModal;
  Finally
    FreeAndNil(FrmConcentradoNomina);
  End;
end;

procedure TFrmCatalogoNominas.DxBarBtnExportarImagenClick(Sender: TObject);
var
  Grafica: TGraphic;
  RutaGuardado: string;
begin
  Grafica := TcxGridChartView(cxGridChartDetalleNominas).CreateImage(TBitmap,1024,768);
  try
    if dlgSaveGrafica.Execute then
    begin
      try
        RutaGuardado := dlgSaveGrafica.FileName + '.bmp';
        Grafica.SaveToFile(dlgSaveGrafica.FileName + '.bmp');
        If (InteliDialog.ShowModal('Aviso', 'Se ha guardado la imagen en la direción especificada, ¿Desea Abrilar?', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
          ShellExecute(Self.Handle, Nil, PChar(rutaGuardado), '', '', SW_SHOWNORMAL);
      except
        on e: InteligentException do
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
      end;
    end;
  finally
    Grafica := nil;
  end;
end;

procedure TFrmCatalogoNominas.DxBarBtnInasistenciasClick(Sender: TObject);
begin
  if GridPersonal.SelectedCount > 0 then
  begin
    Try
      if Form2.cdPersonal.ProviderName = '' then
        if not CrearConjunto(Form2.cdPersonal, 'nuc_personal',ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Catálogo de Personal']);

      if not CargarDatosFiltrados(Form2.cdPersonal, 'idPersonal', [GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger]) then
        raise InteligentException.CreateByCode(6, ['IdPersonal', 'Catálogo de Personal', GridPersonal.Cell[9, GridPersonal.Cell[9, GridPersonal.SelectedRow].AsInteger].AsString]);

      if Form2.cdPersonal.Active then
        Form2.cdPersonal.Refresh
      else
        Form2.cdPersonal.Open;

      if  Form2.cdPersonal.RecordCount > 0 then
      begin

        if cdInasistenciaUpt.ProviderName = '' then
          if Not CrearConjunto(cdInasistenciaUpt, 'nom_inasistencia', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Inasistencias']);

        if cdTipoInasistencia.ProviderName = '' then
        begin
          if Not CrearConjunto(cdTipoInasistencia, 'nom_tipoinasistencia', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Tipos de Inasistencia']);

          cdTipoInasistencia.Open;
        end;

        Application.CreateForm(TFrmExcepciones, FrmExcepciones);
        FrmExcepciones.dsPersonal.DataSet := Form2.CdPersonal;
        FrmExcepciones.dsInasistencia.DataSet := cdInasistencia;
        FrmExcepciones.dsTipoInasistencia.DataSet := cdTipoInasistencia;
        FrmExcepciones.dsInasistenciaUpt.DataSet := cdInasistenciaUpt;

        if Not CargarDatosFiltrados(cdInasistenciaUpt, 'IdExcepcion', [-9]) then
          raise InteligentException.CreateByCode(21, ['Inasistencia']);

        if cdInasistenciaUpt.Active then
          cdInasistenciaUpt.Refresh
        else
          cdInasistenciaUpt.Open;

        FrmExcepciones.ShowModal;
      end;
    Finally
      FrmExcepciones.dsPersonal.DataSet := Nil;
      cdInasistenciaUpt.Close;
    End
  end
  else
    InteliDialog.ShowModal('Aviso', 'Seleccione un personal para poder Capturarle inasistencias.', mtInformation, [mbOK], 0);
end;

procedure TFrmCatalogoNominas.DxBarBtnIncidenciasClick(Sender: TObject);
begin
  GenerarInsidencias(cdNomina.FieldByName('IdNomina').AsInteger, -1);
end;

procedure TFrmCatalogoNominas.DxBarBtnRelaciónPagosClick(Sender: TObject);
var
  importe: Extended;
  i: Integer;
begin
  for i := 0 to GridPersonal.RowCount - 1 do
  if GridPersonal.Row[i].Selected then
  begin
    importe := importe + StrToFloat(GridPersonal.Cell[8, i].AsString);
  end;

   importe := importe;
   Application.CreateForm(TFrmGastos, FrmGastos);
   FrmGastos.ImporteTotal :=(importe);
   FrmGastos.Show;
end;

procedure TFrmCatalogoNominas.DxBarBtnReportePagosClick(Sender: TObject);
var
  Excel: Variant;
  gForma: TForm;

procedure FormatoEncabezado(TipoLetra: string; Negrita: Boolean; ColorLetra: Integer; TamanoLetra: Integer; Color: Integer; FilaInicio: Integer; FilaTermino: Integer; ColumnaIni: Integer; ColumnaTermino: integer; Aplica: String);
begin
  if aplica <> 'CUERPO' then
  begin
    //FORMATO A CELDAS DE EXCEL
    Excel.Range[LetraColumna(ColumnaIni)+IntToStr(FilaInicio)+':'+LetraColumna(ColumnaTermino)+IntToStr(FilaTermino)].select;
    Excel.selection.interior.Color := Color;//11232555; <-Azul indigo
    //Bordes
    Excel.Selection.Borders[xlDiagonalDown].lineStyle :=       xlNone;
    Excel.Selection.Borders[xlDiagonalUp].lineStyle   :=       xlNone;
    Excel.Selection.Borders[xlEdgeBottom].lineStyle   := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight      :=     xlMedium;
    Excel.Selection.Borders[xlEdgeLeft].lineStyle     := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight        :=     xlMedium;
    Excel.Selection.Borders[xlEdgeTop].lineStyle      := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight         :=     xlMedium;
    Excel.Selection.Borders[xlEdgeRight].lineStyle    := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight       :=     xlMedium;
    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].Weight  :=       xlThin;

    //Fuente
    Excel.Selection.Font.Bold :=     Negrita;
    Excel.Selection.Font.Name :=   TipoLetra;
    Excel.Selection.Font.Size := TamanoLetra;
    Excel.Selection.Font.Color := ColorLetra;
  end
  else
  begin
     Excel.Range[LetraColumna(ColumnaIni)+IntToStr(FilaInicio)+':'+LetraColumna(ColumnaTermino)+IntToStr(FilaTermino)].select;
     Excel.Selection.Borders[xlDiagonalDown].lineStyle :=       xlNone;
     Excel.Selection.Borders[xlDiagonalUp].lineStyle   :=       xlNone;
     Excel.Selection.Borders[xlEdgeBottom].lineStyle   := xlContinuous;
     Excel.Selection.Borders[xlEdgeBottom].Weight      :=     xlMedium;
     Excel.Selection.Borders[xlEdgeLeft].lineStyle     := xlContinuous;
     Excel.Selection.Borders[xlEdgeLeft].Weight        :=     xlMedium;
     Excel.Selection.Borders[xlEdgeTop].lineStyle      := xlContinuous;
     Excel.Selection.Borders[xlEdgeTop].Weight         :=     xlMedium;
     Excel.Selection.Borders[xlEdgeRight].lineStyle    := xlContinuous;
     Excel.Selection.Borders[xlEdgeRight].Weight       :=     xlMedium;
     Excel.Selection.Borders[xlInsideVertical].LineStyle   := xlContinuous;
     Excel.Selection.Borders[xlInsideVertical].Weight  :=       xlThin;
     Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
     Excel.Selection.Borders[xlInsideHorizontal].Weight :=      xlThin;
  end;
end;

begin
  try
    dlgSaveExcel.FileName;
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    // Traer todas las referencias
    Try
      gForma :=  TForm.Create(nil);
      gForma.Name   := 'DialogRef';
      gForma.Width  := 300;
      gForma.Height :=   110 + 30;
      gForma.Caption := 'Exportar Detalles de Pagos';
      pnlReferencias.Parent  := gForma;
      pnlReferencias.Visible :=   True;
      pnlReferencias.Align := alClient;
      CargarReferencias(CxCbbRefencias);
      gforma.ShowModal;
      pnlReferencias.Visible :=  False;
      pnlReferencias.Parent :=    Self;
      gForma.Close;
    Finally
      gForma.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.DxBarBtnReportePreliminarClick(Sender: TObject);
var
  FrmDeptos: TForm;
  Original: String;
begin
  FrmDeptos := TForm.Create(Self);
  Try
    Try
      FrmDeptos.FormStyle   := fsNormal;
      FrmDeptos.BorderStyle := bsDialog;
      FrmDeptos.Name :=    'tFrmDeptos';
      FrmDeptos.Caption := 'Selección de Reporte';

      //Try
        //FrmDeptos.Width := StrToInt(VarRegistry('\Ventanas', '\' + FrmDeptos.Name, 'Width'));
      //Except
        FrmDeptos.Width := 410;
      //End;

      //Try
        //FrmDeptos.Height := StrToInt(VarRegistry('\Ventanas', '\' + FrmDeptos.Name, 'Height'));
      //Except
        FrmDeptos.Height := 215;
      //End;

      tagbutton := TButton(sender).tag;
      pnlSeleccionDepto.Parent := FrmDeptos;
      pnlSeleccionDepto.Align  :=  alClient;
      pnlSeleccionDepto.Visible :=     true;

      // Mostrar los departamentos que existen en la nómina
      Try
        cdDeptos := TClientDataSet.Create(Self);
        CrearConjunto(cdDeptos, 'nom_nomina_deptos', ccCatalog);
        CargarDatosFiltrados(cdDeptos, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]);
        cdDeptos.Open;

        if cdDeptos.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['Departamentos por Nómina']);

        if cdDeptos.FieldByName('DiasDescanso').AsInteger > 0 then
          lblSelOpcion.Caption := 'Plataforma:'
        else
          lblSelOpcion.Caption := 'Localidad:';

        Original := cbbDeptos.Text;
        cbbDeptos.Properties.Items.Clear;
        cbbDeptos.Properties.Items.AddObject('TODOS LOS DEPARTAMENTOS ', TObject(-1));
        while not cdDeptos.Eof do
        begin
          cbbDeptos.Properties.Items.AddObject(cdDeptos.FieldByName('Titulo').AsString, TObject(cdDeptos.FieldByName('IdDepartamento').AsInteger));
          cdDeptos.Next;
        end;

        cbbDeptos.ItemIndex := cbbDeptos.Properties.Items.IndexOf(Original);
        if cbbDeptos.ItemIndex < 0 then
          cbbdeptos.ItemIndex := 0;
        CxChkBoxReferencia.checked := False;
        cxCbbReferencia.Enabled    := False;
        CargarReferencias(CxCbbReferencia);
      Finally
        cdDeptos.Close;
        EliminarConjunto(cdDeptos);
      End;

      frmDeptos.ShowModal;
    Finally
      SetRegistry('\Ventanas', '\' + FrmDeptos.Name, 'Width', IntToStr(FrmDeptos.Width));
      SetRegistry('\Ventanas', '\' + FrmDeptos.Name, 'Height', IntToStr(FrmDeptos.Height));

      pnlSeleccionDepto.Parent  :=     self;
      pnlSeleccionDepto.Align   := alCustom;
      pnlSeleccionDepto.Visible :=    false;
      FrmDeptos.Destroy;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.Btn_PlantillaBancariaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPlantillaBancaria, FrmPlantillaBancaria);
  FrmPlantillaBancaria.dsNomina.DataSet := cdNomina;
  FrmPlantillaBancaria.ShowModal;
end;

procedure TFrmCatalogoNominas.dxBarLargeButton2Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmReportesExcel, FrmReportesExcel);
    FrmReportesExcel.IdNominaFijo := '5,9,10';
    FrmReportesExcel.IdNomFijoP := '5';
    FrmReportesExcel.IdNominaPlataforma := '0';
    FrmReportesExcel.ShowModal;
  Finally
    FreeAndNil(FrmReportesExcel);
  End;
end;

procedure TFrmCatalogoNominas.dxBtn1Click(Sender: TObject);
var
  Posicion, Posicion2, k: Integer;
  numRec: TBookmark;
  ExisteAjuste: Integer;
  LocCadena: String;
  Cursor: TCursor;
  per: string;
  ded: string;
  LstCampos, LstValores: TStringList;
function BuscarPosicion(Cadena: String; CadBuscar: String): Integer;  //rangel
var
  Paso,
  SubCad: String;
  i: Integer;
begin
  Paso := Cadena;
  i := 0;
  repeat
    inc(i);
    SubCad := Copy(Paso, 1, Pos('|', Paso) -1);
    Paso := Copy(Paso, Pos('|', Paso) +1, Length(Paso));
  until (CompareText(SubCad, CadBuscar) = 0) or (Paso = '');

  if CompareText(SubCad, CadBuscar) = 0 then
    Result := i
  else
    Result := -1;
end;
procedure agregarValor(Var Original: String; Const Indice: Integer; NuevoValor: String; Tipo: String);
var
  i, x: Integer;
  Paso, Respaldo, cadRestante: String;
begin
  Paso := Original;
  Respaldo := '';
  i := 0;
  x := Pos('|', Paso);
  while (i +1 <= Indice) and (x > 0) do
  begin
    Inc(i);
    Respaldo := Respaldo + Copy(Paso, 1, x);
    Paso := Copy(Paso, x +1, Length(Paso));
    x := Pos('|', Paso);
  end;

  while (i +1 < posicion2) do
  begin
    Inc(i);
    cadRestante := cadRestante + Copy(Paso, 1, x);
    Paso := Copy(Paso, x +1, Length(Paso));
    x := Pos('|', Paso);
  end;
  Original := respaldo + NuevoValor + '|' + cadRestante;
end;
begin
  //agregar el ajuste al neto
  try
    if InteliDialog.ShowModal('Aviso', '¿Está seguro que desea aplicar ajuste al neto a esta Nómina?', mtInformation, [mbYes, mbNo], 0) = mrYes  then
    begin
      try
        LstCampos := TStringList.create;
        LstValores := TStringList.Create;
        LstCampos.add('Valor');
        LstCampos.Add('Modo');
        LstCampos.Add('Clave');
        LstCampos.Add('Titulo');
        LstCampos.Add('CodigoConcepto');
        LstCampos.Add('IdGrupoConcepto');
        LstCampos.Add('Descripcion');
        LstCampos.Add('Imprime');
        LstCampos.Add('Cargo');

        LstValores.Add('0');
        LstValores.Add('DEDUCCION');
        LstValores.Add('AjusteNETO');
        LstValores.Add('AJUSTE NETO');
        LstValores.Add('99');
        LstValores.Add('-1');
        LstValores.Add('AJUSTE AL NETO');
        LstValores.Add('Si');
        LstValores.Add('OBRERO');

        if Not Assigned(cdDetalleNomina) then
          cdDetalleNomina := TClientDataSet.Create(Nil);

        if cdDetalleNomina.ProviderName = '' then
          if Not CrearConjunto(cdDetalleNomina, 'nom_detallenomina', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

        if Not CargarDatosFiltrados(cdDetalleNomina, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Detalle de Nómina', cdNomina.FieldByName('IdNomina').AsString + ' / ' + GridPersonal.Cell[9, GridPersonal.SelectedRow].AsString, 'Id. Nómina / Id. Personal']);

        if cdDetalleNomina.Active then
          cdDetalleNomina.Refresh
        else
          cdDetalleNomina.Open;

        cdDetalleNomina.First;
        while not cdDetalleNomina.Eof do
        Begin
          k := 0;
          Posicion := BuscarPosicion(cdDetalleNomina.FieldByName('CodigoConcepto').AsString, '93');
          Posicion2 := BuscarPosicion(cdDetalleNomina.FieldByName('CodigoConcepto').AsString, 'NETO');
          ExisteAjuste := BuscarPosicion(cdDetalleNomina.FieldByName('Clave').AsString, 'AjusteNeto');
          if  ExisteAjuste = -1 then
          begin
            numrec := cdDetalleNomina.GetBookmark;
            while k < LstCampos.Count do
            begin
              if Not (cdDetalleNomina.State in [dsEdit]) then
                cdDetalleNomina.edit;
              LocCadena := cdDetalleNomina.FieldByName(LstCampos[k]).AsString;
              agregarValor(LocCadena, Posicion, LstValores[k], LstCampos[k]);

              cdDetalleNomina.FieldByName(LstCampos[k]).AsString := LocCadena;
              inc(k);
            end;
            if (cdDetalleNomina.State in [dsEdit]) then
            begin
              cdDetalleNomina.Post;
              cdDetalleNomina.ApplyUpdates(-1);
            end;
            cdDetalleNomina.GotoBookmark(NumRec);
            cdDetalleNomina.FreeBookmark(numRec);
          end;
          cdDetalleNomina.Next;
        end;
        InteliDialog.ShowModal('Aviso', 'Se agregó el ajuste al neto a la nomina actual', mtInformation, [mbOk], 0);
        ClientModule1.registrarEvento('NOMINAS','AGREGAR |AJUSTE AL NETO|','AGREGAR |AJUSTE AL NETO| A LA CADENA DE MULTIVALUADOS' , 0.0, 0);
        cdDetalleNomina.First;
      finally
        LstCampos.Destroy;
        LstValores.Destroy;
      end;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.dxBtnBuscarEmpleadoClick(Sender: TObject);
begin
  cxGBOpciones.Visible := Not cxGBOpciones.Visible;
    if cxGBOpciones.Visible  then
      CxTextEdtBuscar.SetFocus;
end;

procedure TFrmCatalogoNominas.dxBtnFiniquitosClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrappStart;

      if cdNucConf.Active then
        cdNucConf.Close;

      CrearConjunto(cdNucConf, 'nuc_configuracion', ccCatalog);
      CargarDatosFiltrados(cdNucConf, 'idconfiguracion', ['18']);

      if cdNucConf.Active then
        cdNucConf.Refresh
      else
        cdNucConf.Open;

      if cdFiniquitoPer.ProviderName = '' then
        if not CrearConjunto(cdFiniquitoPer, 'nom_nomina_finiquito', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nom_nomina_finiquito']);

      if not CargarDatosFiltrados(cdFiniquitoPer, 'ListaNominas,Modo', [cdNomina.FieldByName('IdNomina').AsInteger, 'PERCEPCION']) then
        raise InteligentException.CreateByCode(6, ['nom_nomina_finiquito', cdNomina.FieldByName('idNomina').AsString, 'ListaNominas']);

      if cdFiniquitoPer.Active then
        cdFiniquitoPer.Refresh
      else
        cdFiniquitoPer.Open;

      if cdFiniquitoDed.ProviderName = '' then
        if not CrearConjunto(cdFiniquitoDed, 'nom_nomina_finiquito', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nom_nomina_finiquito']);

      if not CargarDatosFiltrados(cdFiniquitoDed, 'ListaNominas,Modo', [cdNomina.FieldByName('IdNomina').AsInteger, 'DEDUCCION']) then
        raise InteligentException.CreateByCode(6, ['nom_nomina_finiquito', cdNomina.FieldByName('idNomina').AsString, 'ListaNominas']);

      if cdFiniquitoDed.Active then
        cdFiniquitoDed.Refresh
      else
        cdFiniquitoDed.Open;

      if Not CargarDatosFiltrados(cdTimbrado, 'IdNomina,Activo', [cdNomina.FieldByName('IdNomina').AsInteger, 'Si']) then
        raise InteligentException.CreateByCode(6, ['Personal por Timbrado', cdBuscar.FieldByName('IdNomina').AsInteger, 'IdNomina']);

      if cdTimbrado.Active then
        cdTimbrado.Refresh
      else
        cdTimbrado.Open;

      ClientModule1.ImprimeReporte('reciboFiniquitos.fr3', FrxReportFiniquitos);

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.DxRibbonNominasTabChanged(Sender: TdxCustomRibbon);
begin
  if DxRibbonNominas.ActiveTab = dxTabProceso then
    PageControl1.ActivePage := TabNomina
  else if DxRibbonNominas.ActiveTab = dxTabParametros then
    PageControl1.ActivePage := TabParametros
  else if DxRibbonNominas.ActiveTab = dxTabPersonal then
    PageControl1.activePage := TabPersonal;
end;

procedure TFrmCatalogoNominas.edtFechaPago2Change(Sender: TObject);
begin
//  if banderaTermino then
//  begin
//    banderaTermino := False;
//    EdtFechaPago.Date := edt_FechaTerminoNomina.Date;
//  end
//  else
//    BanderaPago := True;
end;

procedure TFrmCatalogoNominas.EdtFechaPagoClick(Sender: TObject);
begin
  BanderaPago := True;
end;

procedure TFrmCatalogoNominas.DxBarBtnReciboClick(Sender: TObject);
var
  FrmDeptos: TForm;
  cdDeptos: TClientDataSet;
  Original: String;
begin
  FrmDeptos := TForm.Create(Self);
  Try
    Try
      FrmDeptos.FormStyle   := fsNormal;
      FrmDeptos.BorderStyle := bsDialog;
      FrmDeptos.Name    := 'tFrmDeptos';
      FrmDeptos.Caption := 'Selección de Reporte';
      FrmDeptos.Width  := 410;
      FrmDeptos.Height := 215;

      tagbutton := TButton(sender).tag;
      pnlSeleccionDepto.Parent  := FrmDeptos;
      pnlSeleccionDepto.Align   :=  alClient;
      pnlSeleccionDepto.Visible :=      true;

      // Mostrar los departamentos que existen en la nómina
      Try
        cdDeptos := TClientDataSet.Create(Self);
        if Not CrearConjunto(cdDeptos, 'nom_nomina_deptos', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Departamentos por Nómina']);

        if Not CargarDatosFiltrados(cdDeptos, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Departamentos por Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'Id. Nómina']);

        cdDeptos.Open;

        if cdDeptos.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['Departamentos por Nómina']);

        if cdDeptos.FieldByName('DiasDescanso').AsInteger > 0 then
          lblSelOpcion.Caption := 'Plataforma:'
        else
          lblSelOpcion.Caption := 'Localidad:';

        Original := cbbDeptos.Text;
        cbbDeptos.Properties.Items.Clear;
        cbbDeptos.Properties.Items.AddObject('TODOS LOS DEPARTAMENTOS ', TObject(-1));
        while not cdDeptos.Eof do
        begin
          cbbDeptos.Properties.Items.AddObject(cdDeptos.FieldByName('Titulo').AsString, TObject(cdDeptos.FieldByName('IdDepartamento').AsInteger));
          cdDeptos.Next;
        end;

        cbbDeptos.ItemIndex := cbbDeptos.Properties.Items.IndexOf(Original);
        CxChkBoxReferencia.checked := False;
        cxCbbReferencia.Enabled := False;
        CargarReferencias(CxCbbReferencia);
        //if cbbDeptos.ItemIndex < 0 then
          cbbdeptos.ItemIndex := 0;
      Finally
        if Assigned(cdDeptos) and (cdDeptos.ProviderName <> '') then
        begin
          cdDeptos.Close;
          EliminarConjunto(cdDeptos);
        end;
      End;
      (*Try
        cdDeptos := TClientDataSet.Create(Self);
        CrearConjunto(cdDeptos, 'nom_nomina_deptos', ccCatalog);
        CargarDatosFiltrados(cdDeptos, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, pCual]);
        cdDeptos.Open;

        Original := cbbDeptos.Text;
        cbbDeptos.Items.Clear;
        cbbDeptos.AddItem('TODOS LOS DEPARTAMENTOS ', TObject(-1));
        while not cdDeptos.Eof do
        begin
          cbbDeptos.AddItem(cdDeptos.FieldByName('TituloDepartamento').AsString, TObject(cdDeptos.FieldByName('IdDepartamento').AsInteger));
          cdDeptos.Next;
        end;

        cbbDeptos.ItemIndex := cbbDeptos.Items.IndexOf(Original);
        if cbbDeptos.ItemIndex < 0 then
          cbbdeptos.ItemIndex := 0;
      Finally
        cdDeptos.Close;
        EliminarConjunto(cdDeptos);
      End;   *)

      // Agregar aquí la condición para saber si se va a continuar con el proceso o el usuario cancelo
      if pCual = -1 then
        FrmDeptos.ShowModal
      else
      begin
        FrmDeptos.Show;
        FrmDeptos.WindowState := wsMinimized;

        // Activar el reporte de manera automática
        BtnOk.Click;
      end;
    Finally
      pCual := -1;
      SetRegistry('\Ventanas', '\' + FrmDeptos.Name, 'Width', IntToStr(FrmDeptos.Width));
      SetRegistry('\Ventanas', '\' + FrmDeptos.Name, 'Height', IntToStr(FrmDeptos.Height));

      pnlSeleccionDepto.Parent  :=     self;
      pnlSeleccionDepto.Align   := alCustom;
      pnlSeleccionDepto.Visible :=    false;
      FrmDeptos.Destroy;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.DxBarBtnRefrescarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    if dsNomina.DataSet.Active then
      dsNomina.DataSet.Refresh
    else
      dsNomina.DataSet.Open;

    if CdDetalleGrafica.Active then
      CdDetalleGrafica.Refresh
    else
     CdDetalleGrafica.Open;
  finally
    NetoNomina.Caption := FloatToStrF(cdNomina2.FieldByName('Neto').AsFloat, ffCurrency, 16, 2);
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmCatalogoNominas.DxBarBtnRegistrarPagoClick(Sender: TObject);
var
  importe: Extended;
  i: Integer;
begin
  importe := 0;
  for i := 0 to GridPersonal.RowCount - 1 do
    if GridPersonal.Row[i].Selected then
      importe := importe + StrToFloat(GridPersonal.Cell[8, i].AsString);

  Application.CreateForm(TFrmGastos, FrmGastos);
  FrmGastos.ImporteTotal :=(importe);
  FrmGastos.Show;
end;

procedure TFrmCatalogoNominas.CargarGuardias(IdTipoNomina: Integer);
begin
  try
    if (cdGuardias.Active) and (pnl_Periodo.Visible) then
    begin
      CargandoGuardias := True;
      Try
        cdGuardias.Filtered := False;
        cdGuardias.Filter := 'IdTipoNomina = ' + IntToStr(IdTipoNomina);
        cdGuardias.Filtered := True;
        cdGuardias.First;
      Finally
        CargandoGuardias := False;
      End;

    end
    else
    begin
      if (cdTipoNomina.Active) and (cdTipoNomina.RecordCount > 0) then
      begin
        if (cdNomina.State in [dsInsert, dsEdit]) or (cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0) then
        begin
          Edt_FechaNomina.Date := Now;
          Edt_FechaTerminoNomina.Date := Now + (cdTipoNomina.FieldByName('DiasTrabajados').AsInteger -1);
        end;
      end;
    end;
  except
     on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.CargarMachotes;
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if CdMachotes.ProviderName = '' then
        if not crearConjunto(cdMachotes, 'nom_machotetiponomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Catálogo Machotes']); // jajajajaa

      if not CargarDatosFiltrados(CdMachotes, 'IdMachoteTiponomina,IdTipoNomina', [-1,cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]) then
        raise inteligentException.CreateByCode(6, ['Catálogo machotes', 'IdMAchoteTipoNomina', '-1']);

      if cdMachotes.Active then
        CdMachotes.Refresh
      else
        CdMachotes.Open;
      Try
        cdMachotes.Locate('Aplica', 'Si', []);
        CxLCbbMachotes.EditValue := CdMachotes.FieldByName('IdMachoteTipoNomina').AsInteger;
      Except
        if CdMachotes.RecordCount > 0 then
          CxLCbbMachotes.ItemIndex := 0;
      End;
    Finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Error', 'Ha ocurrido un error inesperado, contacte a su administrador del sistema. ' + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoNominas.CargarReferencias(var Cbox: TcxComboBox);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.cursor;
    Screen.cursor := CrAppStart;
    try
      if cdReferencias.ProviderName = '' then
        if not crearConjunto(cdReferencias, 'nom_nomina_referencias', ccSelect) then
          raise InteligentException.createByCode(5,['Referencias de Pago']);

      if not cargarDatosFiltrados(cdReferencias, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.createByCode(6, ['Referencias de Pago', 'IdNomina', IdNomina]);

      if cdReferencias.active then
        cdReferencias.refresh
      else
        cdReferencias.open;

      Cbox.Properties.Items.Clear;
      cdReferencias.First;
      while not cdReferencias.Eof do
      begin
        Cbox.Properties.Items.Add(cdReferencias.FieldByName('Referencia').AsString);
        cdReferencias.Next;
      end;
    finally
      screen.cursor := cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoNominas.EliminarPagoNomina(Idpersonal, Fila: Integer; var pagado : Boolean);
var
  cdEliminar: TClientDataSet;
  Cursor: TCursor;
begin
  // Eliminar el registro de pago de nómina
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      cdEliminar := TClientDataSet.Create(Self);

      if Not CrearConjunto(cdEliminar, 'nom_nominapersonal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal de Nómina']);

      if Not CargarDatosFiltrados(cdEliminar, 'IdNomina,IdPersonal', [cdNomina.FieldByName('IdNomina').AsInteger, IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['Personal en Nómina', cdNomina.FieldByName('IdNomina').AsString + ' / ' + IntToStr(IdPersonal), 'Id. Nómina / Id. Personal']);

      cdEliminar.Open;

      // Verificar si todavía existe el registro
      if cdEliminar.RecordCount = 0 then
        raise InteligentException.CreateByCode(13, [cdNomina.FieldByName('IdNomina').AsString + ' / ' + IntToStr(IdPersonal), 'Personal en Nómina']);

      // Verificar si el registro sigue estando pagado
      if cdEliminar.FieldByName('IdFormaPago').IsNull then
        raise InteligentException.CreateByCode(24, ['El registro de Empleado ya aparece como liberado de pago, es probable que otro usuario haya eliminado el pago.' + #10 + #10 + 'Intente refrescar los datos en la pantalla para poder ver los estados de pago actuales de los empleados.']);

      // Cancelar el pago
      cdEliminar.Edit;
      cdEliminar.FieldByName('IdFormaPago').AsVariant := Null;
      cdEliminar.FieldByName('Referencia').AsVariant  := Null;
      cdEliminar.FieldByName('Fecha').AsVariant       := Null;
      cdEliminar.Post;
      cdEliminar.ApplyUpdates(-1);

      // Actualizar los datos en la pantalla
      GridPersonal.Cell[5, Fila (*GridPersonal.SelectedRow*)].AsString := '';

      pagado := True;

      //InteliDialog.ShowModal('Proceso terminado', 'El registro de pago del Empleado ha sido eliminado de manera satisfactoria', mtInformation, [mbOk], 0);
    Finally
      Screen.Cursor := Cursor;

      CancelarBloqueo(cdEliminar, cdEliminar.FieldByName('IdNominaPersonal').AsInteger);

      if Assigned(cdEliminar) then
      begin
        if Assigned(cdEliminar) and (cdEliminar.ProviderName <> '') then
          EliminarConjunto(cdEliminar);

        cdEliminar.Destroy;
      end;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoNominas.EncabezadoConcetrado(Referencia: String; SoloEtiquetas: Boolean; WorkSheet: Variant; Excel: Variant; DiasDescanso: Integer; FechaNomina, FechaTerminoNomina: String; TituloOrganizacion: String; Var Colx: Integer; Var RowX: Integer; Var x: Integer);
var
  Numeracion: Integer;
  OldModo: string;
procedure Titulo(Rango, Etiqueta: String);
begin
  WorkSheet.Range[Rango].Select;

  if SoloEtiquetas then
    Excel.Selection.Value := Etiqueta
  else
  begin
    Excel.Selection.Merge;
    Excel.Selection.WrapText := True;
  end;
end;
begin
 // Excel.ScreenUpdating := False;
  ConceptoNombre.Clear;
  ConceptoColumna.Clear;
  posFormula.Clear;
  IniciaFormula.Clear;

  if SoloEtiquetas then
  begin
    WorkSheet.cells[1, 2] := CdEncabezado.FieldByName('Valor1').AsString;//'UTILIZACIÓN Y DISTRIBUCIÓN ELECTRICA, S.A. DE C.V.';
    WorkSheet.cells[2, 2] := CdEncabezado.FieldByName('Valor6').AsString;//'R.F.C. UDE 851129 ES1';

    if DiasDescanso > 0 then
    begin
      WorkSheet.cells[3, 2] := 'NOMINA PERSONAL A BORDO DEL: ' + FechaNomina + ' AL ' + FechaTerminoNomina;
      WorkSheet.cells[4, 2] := 'PLATAFORMA: ' + TituloOrganizacion;
    end
    ELSE
    begin
      WorkSheet.cells[3, 2] := 'NOMINA PERSONAL FIJO DEL: ' + FechaNomina + ' AL ' + FechaTerminoNomina;
      WorkSheet.cells[4, 2] := 'MATRIZ: ' + TituloOrganizacion;
    end;
  end
  else
  begin
    Excel.Range['A1:L1'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment   := xlBottom;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.Size :=      16;
    Excel.Selection.Font.Bold :=    true;
    Excel.Selection.Merge;

    Excel.Range['A2:L2'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment   := xlBottom;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.Size :=      14;
    Excel.Selection.Font.Bold :=    true;
    Excel.Selection.Merge;

    Excel.Range['A3:L3'].select;
    Excel.Selection.HorizontalAlignment :=  xlCenter;
    Excel.Selection.VerticalAlignment   :=  xlBottom;
    Excel.Selection.Font.Name := 'Bookman Old Style';
    Excel.Selection.Font.size :=   14;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Merge;

    Excel.Range['A4:L4'].select;
    Excel.Selection.HorizontalAlignment :=  xlCenter;
    Excel.Selection.VerticalAlignment   :=  xlBottom;
    Excel.Selection.Font.Name := 'Bookman Old Style';
    Excel.Selection.Font.size :=   14;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Merge;
  end;

  //ENCABEZADO COLUMNAS
  Titulo('A6:A7', 'No.');
  Titulo('B6:B7', 'NOMBRE');
  Titulo('C6:C7', 'SUELDO' + #10 + 'DIARIO');
  Numeracion := 4;
  IniciaFormula.Add(IntToStr(numeracion));

  if cdEncabezadoXLS.ProviderName = '' then
    if not crearConjunto(cdEncabezadoXLS, 'nom_listaconceptos_nomina', ccSelect) then
      raise inteligentException.CreateByCode(5, ['nom_listaconceptos_nomina']);

  if not cargarDatosFiltrados(cdEncabezadoXLS, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
    raise inteligentException.Create('Error Message');

  if cdEncabezadoXLS.Active then
    cdEncabezadoXLS.Refresh
  else
   cdEncabezadoXLS.Open;

  try
    cdEncabezadoXLS.Filtered := False;
    cdEncabezadoXLS.Filter := 'ModoExcel = ' + QuotedStr('PERCEPCION');
    cdEncabezadoXLS.Filtered := True;
    cdEncabezadoXLS.First;
    while not cdEncabezadoXLS.Eof do
    begin
      ConceptoNombre.Add(cdEncabezadoXLS.FieldByName('Clave').AsString);
      Titulo(ColumnaNombre(Numeracion)+'6:'+ColumnaNombre(Numeracion)+'7', cdEncabezadoXLS.FieldByName('tituloexcel').AsString);
      ConceptoColumna.Add(IntToStr(Numeracion));
      Inc(numeracion);
      cdEncabezadoXLS.Next;
    end;
  finally
    cdEncabezadoXls.Filtered := False;
  end;

  posFormula.Add(IntToStr(Numeracion));
  Titulo(ColumnaNombre(Numeracion)+'6:'+ColumnaNombre(Numeracion)+'7', 'TOTAL' + #10 + 'PERCEPCION');
  inc(Numeracion);
  IniciaFormula.Add(IntToStr(Numeracion));
  try
    cdEncabezadoXLS.Filtered := False;
    cdEncabezadoXLS.Filter := 'ModoExcel = ' + QuotedStr('DEDUCCION');
    cdEncabezadoXLS.Filtered := True;
    cdEncabezadoXLS.First;
    while not cdEncabezadoXLS.Eof do
    begin
      ConceptoNombre.Add(cdEncabezadoXLS.FieldByName('Clave').AsString);
      Titulo(ColumnaNombre(Numeracion)+'6:'+ColumnaNombre(Numeracion)+'7', cdEncabezadoXLS.FieldByName('tituloexcel').AsString);
      ConceptoColumna.Add(IntToStr(Numeracion));
      Inc(numeracion);
      cdEncabezadoXLS.Next;
    end;
  finally
    cdEncabezadoXls.Filtered := False;
  end;

  posFormula.Add(IntToStr(Numeracion));
  Titulo(ColumnaNombre(Numeracion)+'6:'+ColumnaNombre(Numeracion)+'7', 'TOTAL' + #10 + 'DEDUCCION');
  inc(Numeracion);
  Titulo(ColumnaNombre(Numeracion)+'6:'+ColumnaNombre(Numeracion)+'7', 'SUELDO' + #10 + 'NETO');
  Inc(Numeracion);
  Titulo(ColumnaNombre(Numeracion)+'6:'+ColumnaNombre(Numeracion)+'7', 'SUBSIDIO');
  Inc(Numeracion);
  Titulo(ColumnaNombre(Numeracion)+'6:'+ColumnaNombre(Numeracion)+'7', 'I.S.R.');
  UltimaColumna := Numeracion;
//  if Referencia <> '' then
//  begin
//    Titulo('W6:W7', 'SUBSIDIO' + #10 + 'AL' + #10 + 'EMPLEO');
//    Titulo('X6:X7', 'ISPT');
//  end;

  if Not SoloEtiquetas then
  begin
    // Dar formato a encabezado de excel
    Excel.Range['A6:'+ ColumnaNombre(Numeracion) +'7'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment   := xlBottom;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.size :=      10;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Borders.Weight    :=     xlMedium;
    Excel.Selection.Borders.LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].weight    :=     xlMedium;

    Excel.ScreenUpdating :=  True;
    Excel.Range['A8:A8'].select;
    Excel.ActiveWindow.FreezePanes := True;
   // Excel.ScreenUpdating := False;
  end;

 // Excel.ScreenUpdating :=  True;
 // Excel.ScreenUpdating := False;
end;

procedure TFrmCatalogoNominas.VerificaDataSet;
begin
  if cdNomina.ProviderName = '' then
    if Not CrearConjunto(cdNomina, 'nom_nomina', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Nóminas]']);

  if cdTimbrado.ProviderName = '' then
    if Not CrearConjunto(cdTimbrado, 'nom_timbrado', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Nóminas]']);
end;

procedure TFrmCatalogoNominas.vistaPeriodosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cbbPeriodos.EditValue := cdPeriodos.FieldByName('IdPeriodosGuardia').AsInteger;
end;

procedure TFrmCatalogoNominas.GenerarInsidencias(IdNomina: Integer; IdPersonal: Integer);
begin
  Application.CreateForm(TFrmReporteInsidencias, FrmReporteInsidencias);
  FrmReporteInsidencias.IdNomina   :=   IdNomina;
  FrmReporteInsidencias.IdPersonal := IdPersonal;
  FrmReporteInsidencias.ShowModal;
end;

procedure TFrmCatalogoNominas.ExportarAExcelGeneral(Referencia: String);
var
  Excel, Workbook, Worksheet: Variant;
  Listaid: Tstringlist;
  Campo, Cadena, Modo, Codigo, Titulo, Nombre,Grupo,Cargo, Valor,FNomina,
  regPatronal, idNomina, Imprime: String;
  rowx,colx,idxLista, NumRec,i, columx, x,numLin, ExcelCol: Integer;
  FloatValor: Real;
  cursor: TCursor;
  CadParam: String;
  ValImpuesto, Paso, fValor: Real;
  eu: Integer;
  cdDatos: TClientDataSet; //TOTAL
  prgValor: Extended;
  fechaExcel: string;
  OldCeja: String;
  OldIdPersonal: Integer;
  ListaReferencias: TStringList;
  ObjRef: TObjRef;
  Indice: Integer;
  nomHorasExtras: String;
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

function DecodeFecha(Fecha: TDate = 0; FechaHora: TDateTime = 0; DiaSemana: Boolean = False; Modo: TModoFecha = tmMayuscula): String;
const
  NombreDia: Array[1..7] of String = ('Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado');
  Leyenda: Array[1..2, tmMinuscula..tmMayuscula] of String = ((' ', ' '), (' rangel ', ' RANGEL '));
  NomMes: Array[1..12, tmMinuscula..tmMayuscula] of String = ((' Ene ', ' ENERO '), (' Feb ', ' FEBRERO '), (' Mar ', ' MARZO '), (' Abr ', ' ABRIL '), (' May ', ' MAYO '), (' Jun ', ' JUNIO '),                                                              (' Jul ', ' JULIO '), (' Ago ', ' AGOSTO '), (' Sep ', ' SEPTIEMBRE '), (' Oct ', ' OCTUBRE '), (' Nov ', ' NOVIEMBRE '), (' Dic ', ' DICIEMBRE '));
var
  Resultado: String;
begin
  Result := '';

  if Fecha = 0 then
    Fecha := FechaHora;

  if Fecha <> 0 then
  begin
    if DiaSemana then
      Resultado := NombreDia[DayOfWeek(Fecha)] + ' '
    else
      Resultado := '';

    Resultado := Resultado + RightStr(('0' + IntToStr(DayOfTheMonth(Fecha))), 2) + Leyenda[1, Modo] + NomMes[MonthOfTheYear(Fecha), Modo] + Leyenda[1, Modo] + IntToStr(YearOf(Fecha));

    Result := Resultado;
  end;
end;

function unirfechas(fInicial, fFinal: String; formato: Integer): string;
var
  fechaCompuesta: string;
  fi, ff: TStringList;
  idx: Integer;
begin
  idx := 0;
  fi := TStringList.Create;
  ff := TStringList.Create;
  fInicial := StringReplace(fInicial, '  ', ',',[rfReplaceAll, rfIgnoreCase]);
  fFinal := StringReplace(fFinal, '  ', ',',[rfReplaceAll, rfIgnoreCase]);
  ff.CommaText := fFinal;
  fi.CommaText := fInicial;
  if formato = 1 then
  begin
    while idx < fi.Count do
    begin
      if idx = 0 then
        fechaCompuesta := fi[idx] + '-' + ff[idx]
     else if idx = 1 then
        fechaCompuesta := fechaCompuesta + ' ' + fi[idx]
      else if idx = 2 then
        fechacompuesta := fechaCompuesta + ' ' + fi[idx];
    Inc(idx);
    end;
  end
  else
  begin
    if  (fi[1] <> ff[1]) and  (fi[2] = ff[2]) then
    begin
        fechaCompuesta := fi[0] + ' ' + fi[1] + ' AL ' + ff[0] + ' ' + ff[1] + ' ' + fi[2]
    end;
    if  (fi[1] <> ff[1]) and  (fi[2] <> ff[2]) then
    begin
        fechaCompuesta := fi[0] + ' ' + fi[1] + ' ' + fi[2] + ' AL ' + ff[0] + ' ' + ff[1] + ' ' + ff[2]
    end;
    if  (fi[1] = ff[1]) and  (fi[2] = ff[2]) then
    begin
    while idx < fi.Count do
      begin
        if idx = 0 then
          fechaCompuesta := fi[idx] + ' AL ' + ff[idx]
        else if idx = 1 then
          fechaCompuesta := fechaCompuesta + ' ' + fi[idx]
        else if idx = 2 then
          fechacompuesta := fechaCompuesta + ' ' + fi[idx];
        Inc(idx);
      end;
    end;
  end;
  Result := fechaCompuesta;
end;

function existePestana(pestanas: TStringList; nomPestana: string): Boolean;
var
  idx: Integer;
begin
  idx := 0;
  while idx < pestanas.Count do
  begin
    if pestanas[idx] = nomPestana then
    begin
      idx := pestanas.Count;
      Result := True;
    end
    else
      Result := False;

    inc(idx);
  end;
end;

begin
  try
    if dlgSaveExcel.Execute then
    begin
      dlgSaveExcel.FileName;
      cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      try
        ListaReferencias := TStringList.Create;
        ListaReferencias.Clear;

        //HOja
        Excel := CreateOleObject('Excel.Application');
        // Mostrar el excel
        Excel.Visible:= true;
        // evitar que nos pregunte si deseamos sobreescribir el archivo
        Excel.DisplayAlerts := false;
        // agregar libro de trabajo
        Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

        // Eliminar todas las hojas excepto 1
        while Workbook.Sheets.Count > 1 do
          WorkBook.WorkSheets[1].Delete;

          //Excel.ActiveWindow.SelectedSheets.Delete;

        // tomar una referencia a la hoja creada
        WorkSheet := WorkBook.WorkSheets[1];

        cdDatos := TClientDataSet.Create(Nil);
        if Not CrearConjunto(cdDatos, 'nom_detallenomina_excel', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);

        if Referencia = '' then
        begin
          // Abrir los datos completos de las nóminas indicadas
          //CadParam := '';
          CadParam := cdNomina.FieldByName('IdNomina').AsString;

          if Not CargarDatosFiltrados(cdDatos, 'ListaNominas', [CadParam]) then
            raise InteligentException.CreateByCode(6, ['Detalle de Nóminas', CadParam, 'Id. Nómina']);
        end
        else
        begin
          CadParam := cdNomina.FieldByName('IdNomina').AsString;

          if Not CargarDatosFiltrados(cdDatos, 'ListaNominas,Referencia', [CadParam, Referencia]) then
            raise InteligentException.CreateByCode(6, ['Detalle de Nóminas', CadParam + '/' + Referencia, 'Id. Nómina/Referencia']);
        end;

        cdDatos.Open;

        OldCeja := '';
        OldIdPersonal := 0;
        RowX := 7;
        eu := 1;
        cdDatos.first;
        while not cdDatos.Eof do
        begin
          if (cdDatos.FieldByName('Clave').AsString = 'SubsidioDT') or (cdDatos.FieldByName('Clave').AsString = 'ISPTAS') then
          begin
            // Verificar si ya existe el registro de esta referencia
            ObjRef := TObjRef.Create;
            Indice := ListaReferencias.IndexOf(cdDatos.FieldByName('Referencia').AsString);
            if Indice < 0 then
            begin
              ObjRef.Subsidio := 0;
              ObjRef.Ispt := 0;
              Indice := ListaReferencias.AddObject(cdDatos.FieldByName('Referencia').AsString, ObjRef);
            end;

            if cdDatos.FieldByName('Clave').AsString = 'SubsidioDT' then
              TObjRef(ListaReferencias.Objects[Indice]).Subsidio := TObjRef(ListaReferencias.Objects[Indice]).Subsidio + StrToFloatDef(cdDatos.FieldByName('Importe').asString,0)
            else
              TObjRef(ListaReferencias.Objects[Indice]).Ispt := TObjRef(ListaReferencias.Objects[Indice]).Ispt + StrToFloatDef(cdDatos.FieldByName('Importe').asString,0);
          end;

          if (OldCeja <> cdDatos.FieldByName('NombreCeja').AsString) or (cdDatos.RecNo = cdDatos.RecordCount) then
          begin

            if OldCeja <> '' then
            begin
              // Colocar el encabezado
              //EncabezadoConcetrado(Referencia, True, WorkSheet, Excel, 0, DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x);

              // Colocar las sumas totales
              WorkSheet.cells[RowX+1,1].Select;
              Excel.selection.value:='TOTALES';
              Excel.selection.HorizontalAlignment:=xlRight;
              Excel.selection.WrapText:=true;
              WorkSheet.range[ColumnaNombre(1) +inttostr(RowX+1)+':' + ColumnaNombre(2) +inttostr(RowX+1)].Mergecells := True;;
              for i := 3 to UltimaColumna do
              begin
                WorkSheet.Cells[RowX +1, i].Select;
                Excel.ActiveCell.FormulaR1C1 := '=+SUM(R[-' + IntToStr(RowX -7) + ']C:R[-1]C)';
              end;
              // Marcar la hoja con su número de renglones utilizados
              WorkSheet.cells[1, 41].Value := RowX;
            end;

            if OldCeja <> cdDatos.FieldByName('NombreCeja').AsString then
            begin
              // Crear nueva ceja
              ColX := 0;
              RowX := 7;
              x := 1;
              OldIdPersonal := 0;
              WorkSheet := Excel.Worksheets.Add;
              WorkSheet.Name := LeftStr(cdDatos.FieldByName('NombreCeja').AsString, 31);
              WorkSheet.Move(WorkBook.WorkSheets[Workbook.Sheets.Count]);

              EncabezadoConcetrado(Referencia, True, WorkSheet, Excel, 0, DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x);
            end;
          end;

          // Poner los datos de los empleados

          if (OldIdPersonal <> cdDatos.FieldByName('IdPersonal').AsInteger) or ((OldIdPersonal)=0)  then
          begin

            Inc(RowX);
            Inc(eu);

            WorkSheet.cells[RowX, 1] :=  RowX -7;
            WorkSheet.cells[RowX, 2] :=  UpperCase(cdDatos.FieldByName('NombreCompleto').AsString);
            WorkSheet.cells[RowX, 3] :=  cdDatos.FieldByName('Salario').AsString;

            // Colocar las formulas
            // Colocar las formulas TOTAL PERCEPCION Y DEDUCCION
            for i := 0 to posFormula.Count-1 do
            begin
              WorkSheet.cells[RowX, strtoInt(posFormula[i])] := '=SUM('+ ColumnaNombre(StrToInt(posFormula[i])-1) + IntToStr(RowX) + ':' + ColumnaNombre(StrToInt(IniciaFormula[i])) + IntToStr(RowX) +')';
            end;
            //FORMULA SUELDO NETO
            WorkSheet.cells[RowX, strtoInt(posFormula[posFormula.count -1 ])+ 1] := '=' + ColumnaNombre(StrToInt(posFormula[0])) + IntToStr(RowX) + '-' + ColumnaNombre(StrToInt(posFormula[1])) + IntToStr(Rowx);


//            WorkSheet.cells[RowX, 16].Select;
//            Excel.ActiveCell.FormulaR1C1 := '=+RC[-1]+RC[-2]+RC[-3]+RC[-4]+RC[-6]+RC[-7]+RC[-9]+RC[-10]+RC[-11]+RC[-12]';
//
//            WorkSheet.cells[RowX, 22].Select;
//            Excel.ActiveCell.FormulaR1C1 := '=+RC[-1]+RC[-2]+RC[-3]+RC[-4]+RC[-5]';
//
//            WorkSheet.cells[RowX, 23].Select;
//            Excel.ActiveCell.FormulaR1C1 := '=+RC[-7]-RC[-1]';
//
//            WorkSheet.cells[RowX, 24].Select;
//            Excel.ActiveCell.FormulaR1C1 := '=+IF((RC[-7]-RC[-18])<0,ABS(RC[-7]-RC[-18]),0)';
//            Excel.ActiveCell.NumberFormat := '#,##0.00';
//
//            WorkSheet.cells[RowX, 25].Select;
//            Excel.ActiveCell.FormulaR1C1 := '=+IF((RC[-8]-RC[-19])>0,RC[-8]-RC[-19],0)';
//            Excel.ActiveCell.NumberFormat := '#,##0.00';

            if (RowX Mod 5 = 0) or (cdDatos.RecNo = cdDatos.RecordCount) then
            begin
              Excel.ScreenUpdating := True;
              WorkSheet.cells[RowX, 1].Select;
              Excel.ScreenUpdating := False;
            end;
          end;
//          if cdDatos.FieldByName('DiasDescanso').asInteger > 0 then
//            nomHorasExtras := 'HorasExtraImporte'
//          else
//            nomHorasExtras := 'TEXTRA';

         { case AnsiIndexStr(cdDatos.FieldByName('Clave').AsString, ['SUELDO', 'SubsidioDT', 'HorasExtraImporte', 'DiasFestivos', 'DomingosLaborados', 'PrimaDominical', 'Vacaciones', 'PrimaVacacional', 'Aguinaldo', 'ISPTAS', 'IMSSEmpleado', 'PrestamoInfonavit', 'PensionAlimenticia', 'PVEX', 'DFEX']) of
            0: ExcelCol := 4;
            1: ExcelCol := 5;
            2: ExcelCol := 6;
            3: ExcelCol := 10;
            4: ExcelCol := 9;
            5: ExcelCol := 7;
            6: ExcelCol := 12;
            7: ExcelCol := 13;
            8: ExcelCol := 14;
            9: ExcelCol := 17;
            10: ExcelCol := 18;
            11: ExcelCol := 19;
            13: ExcelCol := 25;
            12: ExcelCol := 21;
            14: ExcelCol := 8;   //Prima Dominical Excenta
            15: ExcelCol := 11;  //Dia Festivo Excento
          else
              ExcelCol := 0;
          end;    }

          if ConceptoNombre.IndexOf(cdDatos.FieldByName('Clave').AsString) <> -1 then
            ExcelCol := StrToIntDef(ConceptoColumna[ConceptoNombre.IndexOf(cdDatos.FieldByName('Clave').AsString)], 0)
          else
            ExcelCol := 0;

          if ExcelCol > 0 then
          begin
            Try
              FloatValor := StrToFloat(WorkSheet.Cells[RowX, ExcelCol].Value);
            Except
              FloatValor := 0;
            end;
            FloatValor := FloatValor + (StrToFloat(cdDatos.FieldByName('Importe').AsString));
            WorkSheet.cells[RowX, ExcelCol] := FloatValor;
          end;

          OldCeja := cdDatos.FieldByName('NombreCeja').AsString;
          OldIdPersonal := cdDatos.FieldByName('IdPersonal').AsInteger;

          cdDatos.Next;
        end;

        Excel.ScreenUpdating := False;

        // Eliminar la ceja original del archivo de excel
        if Workbook.Sheets.Count > 1 then
          WorkBook.WorkSheets[Workbook.Sheets.Count].Delete;

        // Darle formato a todas las hojas
        for x := 1 to Workbook.Sheets.Count do
        begin
          WorkSheet := WorkBook.WorkSheets[x];
          WorkSheet.Select;

          if Assigned(ListaTiposNomina) then
            EncabezadoConcetrado(Referencia, False, WorkSheet, Excel, Integer(ListaTiposNomina.Objects[myNewTab]), DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x)
          else
            EncabezadoConcetrado(Referencia, False, WorkSheet, Excel, cdNomina.FieldByName('IdTipoNomina').AsInteger, DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x);

          Excel.ScreenUpdating := False;

          RowX := WorkSheet.cells[1, 41].Value;
          WorkSheet.Cells[1, 41].ClearContents;

          if RowX > 0 then
          begin
            // Dar formato al cuadro de datos
            //if Referencia <> '' then
              WorkSheet.Range['A8:'+ ColumnaNombre(UltimaColumna) + IntToStr(RowX+1)].Select;
            //else
              //WorkSheet.Range['A8:V' + IntToStr(RowX +1)].Select;

            Excel.Selection.Borders[xlDiagonalDown].LineStyle := xlNone;
            Excel.Selection.Borders[xlDiagonalUp].LineStyle := xlNone;

            Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;

            Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;

            Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;

            Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;

            Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;

            Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

            WorkSheet.Range['A'+ IntToStr(RowX+1) +':'+ ColumnaNombre(UltimaColumna) + IntToStr(RowX+1)].Select;
            Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;

            Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideVertical].Weight := xlMedium;

             //FORMATO NUMERICO A CELDAS DE EXCEL NumberFormat:='#.##0,00';
            if Referencia <> '' then
              WorkSheet.Range['C8:X' + IntToStr(RowX +1)].Select
            else
              WorkSheet.Range['C8:V' + IntToStr(RowX +1)].Select;

            Excel.Selection.NumberFormat := '#,##0.00';

            Excel.activeWindow.zoom := 83;
            Excel.activeWindow.DisplayGridlines := False;
            Excel.Cells.Columns.AutoFit;

            if Excel.Columns['D:D'].ColumnWidth < 11.57 then
              Excel.Columns['D:D'].ColumnWidth := 11.57;

            if Excel.Columns['I:I'].ColumnWidth < 12.43 then
              Excel.Columns['I:I'].ColumnWidth := 12.43;

            if Excel.Columns['L:L'].ColumnWidth < 12.57 then
              Excel.Columns['L:L'].ColumnWidth := 12.57;

            if Excel.Columns['M:M'].ColumnWidth < 13 then
              Excel.Columns['M:M'].ColumnWidth := 13;

            if Excel.Columns['N:N'].ColumnWidth < 11.86 then
              Excel.Columns['N:N'].ColumnWidth := 11.86;

            if Excel.Columns['O:O'].ColumnWidth < 12.43 then
              Excel.Columns['O:O'].ColumnWidth := 12.43;

            if Excel.Columns['T:T'].ColumnWidth < 13 then
              Excel.Columns['T:T'].ColumnWidth := 13;

            if Excel.Columns['U:U'].ColumnWidth < 11.14 then
              Excel.Columns['U:U'].ColumnWidth := 11.14;

            if Excel.Columns['V:V'].ColumnWidth < 11 then
              Excel.Columns['V:V'].ColumnWidth := 11;

            if Referencia <> '' then
            begin
              if Excel.Columns['W:W'].ColumnWidth < 11 then
                Excel.Columns['W:W'].ColumnWidth := 11;

              if Excel.Columns['X:X'].ColumnWidth < 11 then
                Excel.Columns['X:X'].ColumnWidth := 11;
            end;

            Excel.Rows['6:7'].Select;
            Excel.Selection.RowHeight := 24.75;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;

            Excel.ScreenUpdating := True;
          end;

          if Referencia <> '' then
          begin
            // Si se trata de un reporte por referencias se deberá poner los totales
            Inc(RowX, 3);
            for i := 0 to ListaReferencias.Count -1 do
            begin
              WorkSheet.Range['T' + IntToStr(RowX) + ':V' + IntToStr(RowX)].Select;
              Excel.Selection.MergeCells := True;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.Value := ListaReferencias[i];

              WorkSheet.Cells[RowX, 24].Value := TObjRef(ListaReferencias.Objects[i]).Subsidio;
              WorkSheet.Cells[RowX, 24].NumberFormat := '#,##0.00';

              WorkSheet.Cells[RowX, 25].Value := TObjRef(ListaReferencias.Objects[i]).Ispt;
              WorkSheet.Cells[RowX, 25].NumberFormat := '#,##0.00';

              Inc(RowX);
            end;
          end;

          WorkSheet.Cells[1, 1].Select;
          Excel.ScreenUpdating := True;
        end;

        try
          Excel.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + '.xls');
          InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
        except
          on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
        end;

      finally
        ListaReferencias.Clear;
        ListaReferencias.Free;

        Try
          Excel.ScreenUpdating := True;
          Excel.DisplayAlerts := True;
        Except
          ;
        end;

        EliminarConjunto(cdDatos);
        FreeAndNil(cdDatos);

        Screen.Cursor := Cursor;
      end;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
  end;
end;

end.
