unit UtFrmFichaGeneralPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils, ShellAPI,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, AcroPDFLib_TLB,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit, cxGroupBox,
  Menus, StdCtrls, cxButtons, cxLabel, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxImage, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxScrollBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView, DBClient,
  ClientModuleUnit1, UInteliDialog, DBCtrls, dxSkinsdxBarPainter, dxBar,
  dxRibbon, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxBarBuiltInMenu, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxMapControlTypes,
  dxMapControl, DragDrop, DropTarget, DragDropGraphics, JvExControls, JvLabel,
  JvMemoryDataset, cxSplitter, StrUtils, UControlExcepciones;

type TTipoDFecha=(fdkCreado, fdkUltimaModificacion, fdkUltimoAcceso);
type TFileDateKind=(fdkCreated, fdkLastModified, fdkLastAccessed);

type

 Latin1String = type AnsiString(28591);

  TFrmFichaGeneralPersonal = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGBGenerales: TcxGroupBox;
    ImgFoto: TcxDBImage;
    CxDbDateRegistro: TcxDBDateEdit;
    CxDbTxtCodigo: TcxDBTextEdit;
    CxDbTxtNombre: TcxDBTextEdit;
    CxDbTxtApellidoPaterno: TcxDBTextEdit;
    CxDbTxtApellidoMaterno: TcxDBTextEdit;
    CxLbl1: TcxLabel;
    CxLbl2: TcxLabel;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CdUptPersonal: TClientDataSet;
    CdUptDocumentos: TClientDataSet;
    dsPersonal: TDataSource;
    dsDocumentos: TDataSource;
    DxBManagerDocumentos: TdxBarManager;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonPreview: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonAbrir: TdxBarLargeButton;
    dxTabPersonal: TdxRibbonTab;
    DxRibbonMain: TdxRibbon;
    DxBManagerDocumentosBar1: TdxBar;
    DxBarBtnGuardar: TdxBarLargeButton;
    DxBarBtnGuardarCerrar: TdxBarLargeButton;
    DxBarBtnCargarImagen: TdxBarLargeButton;
    DxBarExtras: TdxBar;
    DxBarBtnEliminarImagen: TdxBarLargeButton;
    DxBarCerrar: TdxBar;
    DxBarBtnCerrar: TdxBarLargeButton;
    CxLbl9: TcxLabel;
    CxDbCBoxSexo: TcxDBComboBox;
    cdPais: TClientDataSet;
    dsPais: TDataSource;
    menuPrincipal: TcxPageControl;
    datosPersonales1: TcxTabSheet;
    datosDocumentos: TcxTabSheet;
    menuPrincipal1: TcxPageControl;
    datosTabDireccion: TcxTabSheet;
    CxLbl7: TcxLabel;
    edtCreoCxDbTxtTelefono: TcxDBTextEdit;
    CxLbl8: TcxLabel;
    edtCreoCxDbTxtEmail: TcxDBTextEdit;
    edtCreoCxDbTxtContacto: TcxDBTextEdit;
    CxLbl10: TcxLabel;
    CxLbl13: TcxLabel;
    CxCbbNacionalidad: TcxDBLookupComboBox;
    CxLbl16: TcxLabel;
    edtCreoCxDbTxtTelefonoContacto: TcxDBTextEdit;
    edtCreoCxDbTxtCalle: TcxDBTextEdit;
    edtCreoCxDbTxtColonia: TcxDBTextEdit;
    edtCreoCxDbTxtCiudad: TcxDBTextEdit;
    edtCreoCxDbTxtEstado: TcxDBTextEdit;
    edtCreoCxDbTxtNumero: TcxDBTextEdit;
    edtCreoCxDbTxtCP: TcxDBTextEdit;
    edtCreoCxDbTxtMunicipio: TcxDBTextEdit;
    edtCreoCxDbTxtPais: TcxDBTextEdit;
    CxLbl17: TcxLabel;
    CxLbl22: TcxLabel;
    CxLbl23: TcxLabel;
    CxLbl24: TcxLabel;
    CxLbl25: TcxLabel;
    CxLbl26: TcxLabel;
    CxLbl27: TcxLabel;
    CxLbl28: TcxLabel;
    datosTabDatosNacimiento: TcxTabSheet;
    edtCreoCxDbTxtCiudadNacimiento: TcxDBTextEdit;
    TDBFecha2CxDbDateFechaNacimiento: TcxDBDateEdit;
    edtCreoCxDbTxtNombrePadre: TcxDBTextEdit;
    edtCreoCxDbTxtNombreMadre: TcxDBTextEdit;
    edtCreoCxDbTxtPaisNacimiento: TcxDBTextEdit;
    edtCreoCxDbTxtEstadoNacimiento: TcxDBTextEdit;
    CxLbl29: TcxLabel;
    CxLbl30: TcxLabel;
    CxLbl31: TcxLabel;
    CxLbl32: TcxLabel;
    CxLbl33: TcxLabel;
    CxLbl34: TcxLabel;
    datosTabDatosEmpleo: TcxTabSheet;
    edtCreoCxDbTxtRfc: TcxDBTextEdit;
    edtCreoCxDbTxtGrupoSanguineo: TcxDBTextEdit;
    edtCreoCxDbTxtNSS: TcxDBTextEdit;
    CxLbl11: TcxLabel;
    CxLbl12: TcxLabel;
    CxLbl15: TcxLabel;
    CxLbl18: TcxLabel;
    edtCreoCxDbTxtNoInfonavit: TcxDBTextEdit;
    CxDbCBoxAplicaSobre: TcxDBComboBox;
    CxChkBoxInfonavit: TcxCheckBox;
    CxLbl19: TcxLabel;
    TDBFecha2CxDbDateAplicacion: TcxDBDateEdit;
    TDBFecha2CxDbDateTermino: TcxDBDateEdit;
    CxLbl20: TcxLabel;
    CxLbl21: TcxLabel;
    edtCreoCxDbTxtImporte: TcxDBTextEdit;
    CxLbl6: TcxLabel;
    edtCreoCxDbTxtCurp: TcxDBTextEdit;
    CxLbl14: TcxLabel;
    CxDbCBoxEstadoCivil: TcxDBComboBox;
    cdContratosRH: TClientDataSet;
    dsContratosRH: TDataSource;
    CxCbbContratos: TcxDBLookupComboBox;
    JvLabel37: TJvLabel;
    cdPersonalRH: TClientDataSet;
    dsPersonalRh: TDataSource;
    cdPersonalGeneral: TClientDataSet;
    dxTabDocumentos: TdxRibbonTab;
    dxToolBarDxBManagerDocumentosBar2: TdxBar;
    btnGuardar1: TdxBarLargeButton;
    btnGuardarYCerrar: TdxBarLargeButton;
    dxToolBarDxBManagerDocumentosBar3: TdxBar;
    btnAgregar: TdxBarLargeButton;
    btnEditar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    dxToolBarDxBManagerDocumentosBar4: TdxBar;
    btnAbrir: TdxBarLargeButton;
    btnVistaPrevia: TdxBarLargeButton;
    grpVistaPrevia: TGroupBox;
    CxGridDatosDocumentos: TcxGridDBTableView;
    CxLevelDatosDocumentos: TcxGridLevel;
    CxGridDocumentos: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxstylGridBackground: TcxStyle;
    tcxDocumento: TcxGridDBColumn;
    tcxFechaExpedicion: TcxGridDBColumn;
    tcxFechaVigencia: TcxGridDBColumn;
    tcxFechaAplicacion: TcxGridDBColumn;
    dxToolBarDxBManagerDocumentosBar5: TdxBar;
    btnCerrar: TdxBarLargeButton;
    cdDoctosPostulante: TClientDataSet;
    dsDoctosPostulante: TDataSource;
    MemArchivosNuevos: TJvMemoryData;
    DsEliminarDocumento: TDataSource;
    dxTabDatosBancarios: TdxRibbonTab;
    dxToolBarDxBManagerDocumentosBar6: TdxBar;
    btnGuardarDatosBancarios: TdxBarLargeButton;
    btnGuardarCerrarDatosBancarios: TdxBarLargeButton;
    datosBancarios: TcxTabSheet;
    dxToolBarDxBManagerDocumentosBar7: TdxBar;
    btn1: TdxBarLargeButton;
    btnEditarCuenta: TdxBarLargeButton;
    btnEliminarCuenta: TdxBarLargeButton;
    dxToolBarDxBManagerDocumentosBar8: TdxBar;
    btn2: TdxBarLargeButton;
    CxGridDatosBancarios: TcxGridDBTableView;
    CxLevelDatosBancarios: TcxGridLevel;
    CxGridBancarios: TcxGrid;
    tcxBanco: TcxGridDBColumn;
    tcxSucursal: TcxGridDBColumn;
    tcxNumeroDeCuenta: TcxGridDBColumn;
    tcxClabeInterbancaria: TcxGridDBColumn;
    tcxFechaDeAplicacion: TcxGridDBColumn;
    tcxEstado: TcxGridDBColumn;
    dsdatosbancarios: TDataSource;
    cddatosbancarios: TClientDataSet;
    cxStyle1: TcxStyle;
    CxSplit1: TcxSplitter;
    DxBarBtnCopiarImagen: TdxBarLargeButton;
    dbchkPersonalEspecial: TDBCheckBox;
    dxbrbtn1: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure ImgFotoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DxBarBtnGuardarClick(Sender: TObject);
    procedure modoAgregarNuevo;
    procedure edtCreoCxDbTxtTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtCPKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtTelefonoContactoKeyPress(Sender: TObject; var Key: Char);
    procedure CxDbDateRegistroKeyPress(Sender: TObject; var Key: Char);
    procedure CxDbTxtNombreKeyPress(Sender: TObject; var Key: Char);
    procedure CxDbTxtApellidoPaternoKeyPress(Sender: TObject; var Key: Char);
    procedure CxDbTxtApellidoMaternoKeyPress(Sender: TObject; var Key: Char);
    procedure CxDbCBoxSexoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtEmailKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtCalleKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtColoniaKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtMunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtPaisKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtContactoKeyPress(Sender: TObject; var Key: Char);
    procedure CxCbbNacionalidadKeyPress(Sender: TObject; var Key: Char);
    procedure TDBFecha2CxDbDateFechaNacimientoKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtCreoCxDbTxtEstadoNacimientoKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtCreoCxDbTxtCiudadNacimientoKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtCreoCxDbTxtPaisNacimientoKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtCreoCxDbTxtNombrePadreKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtNombreMadreKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtCurpKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtNSSKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtRfcKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtGrupoSanguineoKeyPress(Sender: TObject;
      var Key: Char);
    procedure CxDbCBoxEstadoCivilKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtNoInfonavitKeyPress(Sender: TObject; var Key: Char);
    procedure CxDbCBoxAplicaSobreKeyPress(Sender: TObject; var Key: Char);
    procedure TDBFecha2CxDbDateAplicacionKeyPress(Sender: TObject;
      var Key: Char);
    procedure TDBFecha2CxDbDateTerminoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCreoCxDbTxtImporteKeyPress(Sender: TObject; var Key: Char);
    procedure menuPrincipal1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure validarCamposPersonales;
    procedure validarCajasDeTexto(cajaDeTexto : TcxDBTextEdit;
      mensajeError : string);
    procedure CxChkBoxInfonavitClick(Sender: TObject);
    procedure habilitarDeshabilitarNoInfonavit(visible : Boolean);
    procedure ValidarDatos(pObjError: TWinControl; rfc, curp, nss, ctabancaria, campoMensaje, valor:string);
    procedure ImgFotoClick(Sender: TObject);
    procedure DxBarBtnGuardarCerrarClick(Sender: TObject);
    Procedure CambiarTab(Sender: TObject);
    procedure menuPrincipalChange(Sender: TObject);
    procedure DxRibbonMainTabChanged(Sender: TdxCustomRibbon);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    function ObtenerFechaArchivo(const NombreArchivo: string;
      out FechaResult: TDateTime; TipoFechaObtener: TTipoDFecha): boolean;
    function cambiarFechaFichero(const FileName: string; FileDate: TDateTime;
      SpecificFileDate: TFileDateKind): boolean;
    procedure btnVistaPreviaClick(Sender: TObject);
    procedure CrearCompDocumento(Padre: Twincontrol;MuestraError:Boolean = True);
    procedure LimpiarCompDocumento;
    procedure CargarDocumento(PathPdf: string);
    procedure cdDoctosPostulanteAfterScroll(DataSet: TDataSet);
    procedure btnEditarClick(Sender: TObject);
    procedure CxGridDatosDocumentosCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn1Click(Sender: TObject);
    procedure btnEditarCuentaClick(Sender: TObject);
    procedure btnEliminarCuentaClick(Sender: TObject);
    procedure TDBFecha2CxDbDateAplicacionPropertiesChange(Sender: TObject);
    procedure DxBarBtnCargarImagenClick(Sender: TObject);
    procedure DxBarBtnEliminarImagenClick(Sender: TObject);
    procedure ImgFotoDblClick(Sender: TObject);
    procedure DxBarBtnCopiarImagenClick(Sender: TObject);
    procedure CxCbbContratosPropertiesChange(Sender: TObject);
    procedure dxbrbtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FechaServidor: TDateTime;
    CompDocumento: TAcroPDF;
    HuboError: Boolean;
    ObjError: TWinControl;
    Procedure GuardarRh;
    Function tieneCambios(Var Dataset: TClientDataSet): Boolean;
  public
    CambiosHechos: Boolean;
    IdPersonal: Integer;
    accion : string;
    datosRepetidos: Boolean;
    ViejaImagen: Variant;
    NuevaImagen: Variant;
  end;

var
  FrmFichaGeneralPersonal: TFrmFichaGeneralPersonal;

implementation

uses UTFrmCargaImagen, UtfrmAltaDocumentosApirante, UTFrmDatosBancarios, Unit2;

{$R *.dfm}

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtCalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtNumero.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtCiudadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtMunicipio.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtCiudadNacimientoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtPaisNacimiento.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtColoniaKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtCP.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtContactoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtTelefonoContacto.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtCPKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtCiudad.SetFocus;

  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtCurpKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtNSS.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtEmailKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtCalle.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtPais.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtEstadoNacimientoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtCiudadNacimiento.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtGrupoSanguineoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    CxDbCBoxEstadoCivil.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtImporteKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtCurp.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtMunicipioKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtEstado.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtNoInfonavitKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    CxDbCBoxAplicaSobre.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtNombreMadreKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    TDBFecha2CxDbDateFechaNacimiento.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtNombrePadreKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtNombreMadre.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtNSSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtRfc.SetFocus;

  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtColonia.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtPaisKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtContacto.SetFocus
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtPaisNacimientoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtNombrePadre.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtRfcKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtGrupoSanguineo.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtTelefonoContactoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    CxCbbNacionalidad.SetFocus;

  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmFichaGeneralPersonal.edtCreoCxDbTxtTelefonoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtEmail.SetFocus;

  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmFichaGeneralPersonal.btn1Click(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  try
    try
      application.CreateForm(TFrmDatosBancarios, FrmDatosBancarios);

      cdUptCuentas := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptCuentas, 'rhu_datosbancariosxpersonal', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Cuentas bancarias por Persona']);
        try

          if not CargarDatosFiltrados(cdUptCuentas,'idpostulante',[-9]) then
            raise InteligentConnection.CreateByCode(11, ['Cuentas bancarias por Persona']);

          cdUptCuentas.Open;

          cdUptCuentas.Append;
          cdUptCuentas.FieldByName('Iddatosbancariosxpersonal').AsInteger :=0;
          if cddatosbancarios.RecordCount > 0 then
            cdUptCuentas.FieldByName('Estado').AsString := 'Inactiva'
          else
            cdUptCuentas.FieldByName('Estado').AsString := 'Activada';

          cdUptCuentas.FieldByName('idpostulante').AsInteger := cdUptPersonal.FieldByName('IdPersonal').asinteger;
          cdUptCuentas.FieldByName('Fechadeaplicacion').AsDateTime:=now;
          cdUptCuentas.FieldByName('Activo').AsString := 'Si';
          FrmDatosBancarios.dsDatos.DataSet := cdUptCuentas;
          FrmDatosBancarios.ShowModal;

          cddatosbancarios.Refresh;

        finally
          EliminarConjunto(cdUptCuentas);
        end;

      finally
        if Assigned(cdUptCuentas) then
          FreeAndNil(cdUptCuentas);
      end;

    finally
      FrmDatosBancarios.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaGeneralPersonal.btnAbrirClick(Sender: TObject);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo:string;
  FechaArchivo : TDateTime;

  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin
  if cdDoctosPostulante.RecordCount > 0 then
  begin
    //generando el nombre del archivo, encaso de no existir directorio crearlo
    NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo := Nombrearchivo + '\Documentos RH\';

    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo:= NombreArchivo +
    cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
    cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

    stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

    StartPosition := stream.Position;
    FStreamHeader := TStringStream.Create;

    try
      With FStreamHeader do
      begin
        CopyFrom(stream, 512);
        if pos(PDFFILE_HEADER,DataString) <= 0 then
          raise Exception.Create('No es pdf');
      end;

      //Si el archivo existe verificar fecha y cargarlo
      if (FileExists(NombreArchivo)) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin

          //comparar fecha con el alojado
          if FechaArchivo <> cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime then
          begin
            //si es diferente descargarlo
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

            //y poner la fecha original
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);

          end;
        end;
      end
      else
      begin
        //En cacso de no existir no comparar nada y descargarlo
        TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
        //y poner la fecha original
        cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);

      end;

      //cargar el documento
      //CargarDocumento(NombreArchivo);
      ShellExecute(self.Handle,nil,PChar(NombreArchivo),'','',SW_SHOWNORMAL);
    except
      on e:exception do
      begin
        if e.Message = 'No es pdf' then
        begin
          //borralo
          if InteliDialog.ShowModal('Distinto tipo de archivo', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
          begin
            TClientDataset(DsEliminarDocumento.DataSet).Close;
            if Not  CargarDatosFiltrados(TClientDataset(DsEliminarDocumento.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
            TClientDataset(DsEliminarDocumento.DataSet).Open;
            TClientDataset(DsEliminarDocumento.DataSet).Delete;
            TClientDataset(DsEliminarDocumento.DataSet).ApplyUpdates(-1);
            cdDoctosPostulante.Refresh;
          end;
        end
        else
        begin
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        end;

      end;

    end;
  end;
end;

procedure TFrmFichaGeneralPersonal.btnAgregarClick(Sender: TObject);
begin
  //Abrir formulario para agregar un nuevo documento
  try
    try
      Application.CreateForm(TfrmAltaDocumentosApirante, frmAltaDocumentosApirante);

      CdUptDocumentos := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(CdUptDocumentos, 'rhu_docxpostulante', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
        try

          if not CargarDatosFiltrados(CdUptDocumentos,'idpostulante',[-9]) then
            raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);

          CdUptDocumentos.Open;

          CdUptDocumentos.Append;
          CdUptDocumentos.FieldByName('IdDocxPostulante').AsInteger :=0;
          CdUptDocumentos.FieldByName('idpostulante').AsInteger := cdUptPersonal.FieldByName('IdPersonal').asInteger;
          CdUptDocumentos.FieldByName('fechaexpedicion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechavigencia').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechaaplicacion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('FechaMovimiento').AsDateTime:=now;
          CdUptDocumentos.FieldByName('Activo').AsString := 'Si';
          frmAltaDocumentosApirante.dsDatos.DataSet := CdUptDocumentos;
          frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;

          //self.SendToBack;
          frmAltaDocumentosApirante.BringToFront;

          frmAltaDocumentosApirante.ShowModal;

          //Una vez que se cierre la ventana de documentos, refrescar el grid de documentosxpostulante
          cdDoctosPostulante.Refresh;

        finally
          EliminarConjunto(CdUptDocumentos);
        end;

      finally
        if Assigned(CdUptDocumentos) then
          FreeAndNil(CdUptDocumentos);
      end;

    finally
      frmAltaDocumentosApirante.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de documento del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de documento del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaGeneralPersonal.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFichaGeneralPersonal.btnEditarClick(Sender: TObject);
var
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  CdUptDocumentos: TClientDataSet;
  NombreArchivo : string;
begin
  //Editar los dartos del documento que se este seleccionado
  if cdDoctosPostulante.RecordCount < 1 then
    Exit;

   application.CreateForm(TfrmAltaDocumentosApirante, frmAltaDocumentosApirante);
   CdUptDocumentos := TClientDataSet.Create(nil);

   try
      if Not CrearConjunto(CdUptDocumentos, 'rhu_docxpostulante', ccupdate) then
        raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
      try

        if not CargarDatosFiltrados(CdUptDocumentos,'iddocxpostulante,idpostulante',[cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger, cdDoctosPostulante.FieldByName('idpostulante').AsInteger]) then
          raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);

        CdUptDocumentos.Open;

        if CdUptDocumentos.RecordCount <> 1 then
          raise InteligentException.Create('El Registro no se pudo localizar.');

        //generando el nombre del archivo, encaso de no existir directorio crearlo
        NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
        if not DirectoryExists(NombreArchivo) then
          MkDir(NombreArchivo);

        NombreArchivo := Nombrearchivo + '\Documentos RH\';

        if not DirectoryExists(NombreArchivo) then
          MkDir(NombreArchivo);

        NombreArchivo:= NombreArchivo +
        cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
        cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

        stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

        if (FileExists(NombreArchivo)) then
        begin
          if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
          begin
            //comparar fecha con el alojado
            if FechaArchivo <> cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime then
            begin
              //si es diferente descargarlo
              TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

              //y poner la fecha original
              cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);
            end;
          end;
        end
        else
        begin
          //En cacso de no existir no comparar nada y descargarlo
          TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
          //y poner la fecha original
          cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('Fechaexpedicion').AsDateTime, fdkCreated);
        end;

        frmAltaDocumentosApirante.AcroPDF1.LoadFile(NombreArchivo);
        frmAltaDocumentosApirante.AcroPDF1.Parent.Visible := True;
        frmAltaDocumentosApirante.AcroPDF1.Show;

        CdUptDocumentos.Edit;
        CdUptDocumentos.FieldByName('FechaMovimiento').AsDateTime:=now;
        frmAltaDocumentosApirante.dsDatos.DataSet := CdUptDocumentos;
        frmAltaDocumentosApirante.btn1.Enabled := CdUptDocumentos.State = dsInsert;
        frmAltaDocumentosApirante.EBtnDirFile.Text  := CdUptDocumentos.FieldByName('NombreArchivo').AsString;

        if fileexists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        CdUptDocumentos.FieldByName('idpostulante').AsString+'#'+CdUptDocumentos.FieldByName('IdDocxPostulante').AsString+'#'+
        CdUptDocumentos.FieldByName('IdDocumento').AsString+'.pdf') then
        frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;

        frmAltaDocumentosApirante.BringToFront;

        frmAltaDocumentosApirante.ShowModal;
        if frmAltaDocumentosApirante.Resultado=mrOk then
        begin
          cdDoctosPostulante.Refresh;
          cdDoctosPostulante.Locate('IdDocxPostulante', frmAltaDocumentosApirante.LastId, []);
          if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
            CrearCompDocumento(grpVistaPrevia);
          CargarDocumento(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
          cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
        end;

      finally
        EliminarConjunto(CdUptDocumentos);
      end;

    finally
      if Assigned(CdUptDocumentos) then
        FreeAndNil(CdUptDocumentos);
    end;
end;

procedure TFrmFichaGeneralPersonal.btnEditarCuentaClick(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  if cddatosbancarios.RecordCount < 1 then
    Exit;

  try
    try
      application.CreateForm(TFrmDatosBancarios, FrmDatosBancarios);

      cdUptCuentas := TClientDataSet.Create(nil);
      try
        if Not CrearConjunto(cdUptCuentas, 'rhu_datosbancariosxpersonal', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Cuentas bancarias por postulante']);
        try

          if not CargarDatosFiltrados(cdUptCuentas,'iddatosbancariosxpersonal',[cddatosbancarios.FieldByName('iddatosbancariosxpersonal').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['Cuentas bancarias por postulante']);

          cdUptCuentas.Open;

          if cdUptCuentas.RecordCount <> 1 then
            raise InteligentException.Create('El Registro no se pudo localizar.');

          cdUptCuentas.Edit;
          FrmDatosBancarios.dsDatos.DataSet := cdUptCuentas;
          FrmDatosBancarios.ShowModal;
          cddatosbancarios.Refresh;

        finally
          EliminarConjunto(cdUptCuentas);
        end;

      finally
        if Assigned(cdUptCuentas) then
          FreeAndNil(cdUptCuentas);
      end;

    finally
      FrmDatosBancarios.Free;
    end;

  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al editar la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al editar la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmFichaGeneralPersonal.btnEliminarClick(Sender: TObject);
var
  CdEliminarDocumento : TClientDataset;
begin
  //Eliminar registro de documentos del postulante
  if cdDoctosPostulante.RecordCount < 1 then
    Exit;

  try
    //self.SendToBack;
    if InteliDialog.ShowModal('Eliminacion de Documento','Usted va a eliminar un documento de un Aspirante, ¡Realmente desea eliminarlo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
    try
      CdEliminarDocumento := TClientDataset.Create(nil);
      if Not CrearConjunto(CdEliminarDocumento, 'rhu_docxpostulante', ccupdate) then
        raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
      if not CargarDatosFiltrados(CdEliminarDocumento,'idpostulante,iddocxpostulante',[cdDoctosPostulante.FieldByName('idpostulante').asinteger, cdDoctosPostulante.FieldByName('iddocxpostulante').asinteger]) then
        raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);
      CdEliminarDocumento.Open;
      CdEliminarDocumento.Delete;
      CdEliminarDocumento.ApplyUpdates(-1);
      cdDoctosPostulante.Refresh;
    finally
      if assigned(CdEliminarDocumento) then
      begin
        EliminarConjunto(CdEliminarDocumento);
        CdEliminarDocumento.Free;
      end;
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al eliminar documento del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmFichaGeneralPersonal.btnEliminarCuentaClick(Sender: TObject);
begin
  try
    if InteliDialog.ShowModal('AVISO','Va a eliminar una de las cuentas bancarias de esta persona.', '¿Realmente desea eliminar la cuenta bancaria seleccionada?', mtInformation,[mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('');

    if cddatosbancarios.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Historial']);

    BorrarRegistro('rhu_datosbancariosxpersonal', [cddatosbancarios.FieldByName('Iddatosbancariosxpersonal').AsInteger]);

    cddatosbancarios.Refresh;
  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    InteliDialog.ShowModal('Error al eliminar la cuenta bancaria del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaGeneralPersonal.btnVistaPreviaClick(Sender: TObject);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo:string;
  FechaArchivo : TDateTime;

  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin
  if cdDoctosPostulante.RecordCount > 0 then
  begin
    //trabajando con el componente pdf
    if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
      CrearCompDocumento(grpVistaPrevia);
    LimpiarCompDocumento;

    //generando el nombre del archivo, encaso de no existir directorio crearlo
    NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo := Nombrearchivo + '\Documentos RH\';

    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo:= NombreArchivo +
    cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
    cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

    stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

    StartPosition := stream.Position;
    FStreamHeader := TStringStream.Create;

    try
      With FStreamHeader do
      begin
        CopyFrom(stream, 512);
        if pos(PDFFILE_HEADER,DataString) <= 0 then
          raise Exception.Create('No es pdf');
      end;

      //Si el archivo existe verificar fecha y cargarlo
      if (FileExists(NombreArchivo)) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin

          //comparar fecha con el alojado
          //if FechaArchivo <> cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime then
          if FechaArchivo <> cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime then
          begin
            //si es diferente descargarlo
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

            //y poner la fecha original
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);

          end;
        end;
      end
      else
      begin
        //En cacso de no existir no comparar nada y descargarlo
        TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
        //y poner la fecha original
        cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('Fechaexpedicion').AsDateTime, fdkCreated);

      end;

      //cargar el documento
      CargarDocumento(NombreArchivo);
      CxGridDocumentos.Align := alLeft;
      CxGridDocumentos.Width := 500;
      grpVistaPrevia.Visible := True;
      CxSplit1.Visible := True;
    except
      on e:exception do
      begin
        if e.Message = 'No es pdf' then
        begin
          //borralo
          if InteliDialog.ShowModal('Distinto tipo de archivo', 'El archivo que esta intentando mostrar no es un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
          begin
            TClientDataset(DsEliminarDocumento.DataSet).Close;
            if Not  CargarDatosFiltrados(TClientDataset(DsEliminarDocumento.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
            TClientDataset(DsEliminarDocumento.DataSet).Open;
            TClientDataset(DsEliminarDocumento.DataSet).Delete;
            TClientDataset(DsEliminarDocumento.DataSet).ApplyUpdates(-1);
            cdDoctosPostulante.Refresh;
          end;
        end
        else
        begin
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        end;
        grpVistaPrevia.Visible := False;
        CxSplit1.Visible := False;
      end;

    end;
  end;
end;

function TFrmFichaGeneralPersonal.cambiarFechaFichero(const FileName: string;
  FileDate: TDateTime; SpecificFileDate: TFileDateKind): boolean;
var
  fHandle : integer;
  Succeed : boolean;
  TempFileTime, FinalFileTime : TFileTime;
  TempSystemTime : TSystemTime;
  pFileCreationDate, pFileLastModifiedDate, pFileLastAccessedDate : PFileTime;
begin
  pFileCreationDate := nil;
  pFileLastModifiedDate := nil;
  pFileLastAccessedDate := nil;

  fHandle := FileOpen(FileName, fmShareDenyWrite or fmOpenWrite);
  if fHandle < 0 then Succeed := false
  else
  begin
    DecodeDateTime(FileDate, TempSystemTime.wYear, TempSystemTime.wMonth,
        TempSystemTime.wDay, TempSystemTime.wHour, TempSystemTime.wMinute,
        TempSystemTime.wSecond, TempSystemTime.wMilliSeconds);
    SystemTimeToFileTime(TempSystemTime, TempFileTime);
    LocalFileTimeToFileTime(TempFileTime, FinalFileTime);
    case SpecificFileDate of
      fdkCreated : pFileCreationDate := @FinalFileTime;
      fdkLastModified : pFileLastModifiedDate := @FinalFileTime;
      fdkLastAccessed : pFileLastAccessedDate := @FinalFileTime;
    end;
    Succeed := SetFileTime(fHandle, pFileCreationDate,
        pFileLastAccessedDate, pFileLastModifiedDate);
    FileClose(fHandle);
  end;
  Result := Succeed;
end;

procedure TFrmFichaGeneralPersonal.CambiarTab(Sender: TObject);
begin
  //Cambia el tab de las pestanas segun se selecione
  if UpperCase(accion) <> 'NUEVO' then
  begin
    if menuPrincipal.ActivePage = datosPersonales1 then
      dxTabPersonal.Active := True
    else if menuPrincipal.ActivePage = datosDocumentos then
      dxTabDocumentos.Active := True
    else if menuPrincipal.ActivePage = datosBancarios then
      dxTabDatosBancarios.Active := True;
  end
  else
  begin
    menuPrincipal.ActivePage := datosPersonales1;
    DxRibbonMain.ActiveTab := dxTabPersonal;
  end;
end;

procedure TFrmFichaGeneralPersonal.CargarDocumento(PathPdf: string);
begin
  //Cargar pdf
  if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
  begin
    if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
    begin
      CompDocumento.LoadFile(PathPdf);
      CompDocumento.Parent.Visible := True;
      {CompDocumento.Repaint;
      CompDocumento.Refresh;
      CompDocumento.gotoFirstPage;
      Compdocumento.Show;   }
    end
    else
      LimpiarCompDocumento;
  end;
end;

procedure TFrmFichaGeneralPersonal.cdDoctosPostulanteAfterScroll(
  DataSet: TDataSet);
begin
  if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
    CrearCompDocumento(grpVistaPrevia,False);
  LimpiarCompDocumento;
end;

procedure TFrmFichaGeneralPersonal.CrearCompDocumento(Padre: Twincontrol;
  MuestraError: Boolean);
begin
  //
  try
    try
      CompDocumento := TAcroPDF.Create(Padre);
      CompDocumento.Parent := Padre;
      CompDocumento.Align:= alClient;
      CompDocumento.DoubleBuffered := False;
    except
      on e:Exception do
        if MuestraError then
          ShowMessage('Error al crear el Preview de archivos PDF de documentos, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat reader falló: '+e.Message)
        else;
    end;
  finally
    Padre.Visible := False;
  end;
end;

procedure TFrmFichaGeneralPersonal.CxCbbContratosPropertiesChange(
  Sender: TObject);
begin
  if (cdPersonalRH.Active) and  (cdPersonalRH.State in [dsInsert, dsEdit]) then
    cdPersonalRH.FieldByName('IdOrganizacion').AsInteger := CxCbbContratos.EditValue;
end;

procedure TFrmFichaGeneralPersonal.CxCbbNacionalidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtTelefono.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.CxChkBoxInfonavitClick(Sender: TObject);
begin
  if CxChkBoxInfonavit.Checked then
  begin
    habilitarDeshabilitarNoInfonavit(True);
  end;

  if not CxChkBoxInfonavit.Checked then
  begin
    habilitarDeshabilitarNoInfonavit(False);
  end;
end;

procedure TFrmFichaGeneralPersonal.CxDbCBoxAplicaSobreKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    TDBFecha2CxDbDateAplicacion.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.CxDbCBoxEstadoCivilKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if edtCreoCxDbTxtNoInfonavit.canFocus then
    begin
      edtCreoCxDbTxtNoInfonavit.SetFocus;
    end
    else
    begin
      edtCreoCxDbTxtCurp.SetFocus;
    end;
  end;
end;

procedure TFrmFichaGeneralPersonal.CxDbCBoxSexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    CxDbDateRegistro.SetFocus
end;

procedure TFrmFichaGeneralPersonal.CxDbDateRegistroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    CxDbTxtNombre.SetFocus
end;

procedure TFrmFichaGeneralPersonal.CxDbTxtApellidoMaternoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    CxDbCBoxSexo.SetFocus
end;

procedure TFrmFichaGeneralPersonal.CxDbTxtApellidoPaternoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    CxDbTxtApellidoMaterno.SetFocus
end;

procedure TFrmFichaGeneralPersonal.CxDbTxtNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    CxDbTxtApellidoPaterno.SetFocus
end;

procedure TFrmFichaGeneralPersonal.CxGridDatosDocumentosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditar.Click;
end;

procedure TFrmFichaGeneralPersonal.cxTabSheet2Show(Sender: TObject);
begin
  if (CdUptDocumentos.ProviderName = '') and (CdUptPersonal.active) then
  begin
    if not CrearConjunto(CdUptDocumentos, 'Catalogo_imagenes', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Catálogo de Imágenes']);

    if not CargarDatosFiltrados(CdUptDocumentos, 'sIdentificador,sReferencia', [CdUptPersonal.FieldByName('CodigoPersonal').AsString, 'Catalogo_Empleados']) then
      raise InteligentException.CreateByCode(6, ['Catálogo Imágenes', 'sIdentificador', CdUptPersonal.FieldByName('CodigoPersonal').AsString]);

    if CdUptDocumentos.Active then
      CdUptDocumentos.Refresh
    else
      CdUptDocumentos.Open;
  end;
end;

procedure TFrmFichaGeneralPersonal.DxBarBtnCargarImagenClick(Sender: TObject);
var
  pmi: TcxCustomImageProperties;
begin
  viejaImagen := TcxImage(ImgFoto).EditValue;
  TcxImage(ImgFoto).LoadFromFile;
  NuevaImagen := TcxImage(ImgFoto).EditValue;

end;

procedure TFrmFichaGeneralPersonal.DxBarBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmFichaGeneralPersonal.DxBarBtnCopiarImagenClick(Sender: TObject);
begin
  TcxImage(ImgFoto).CopyToClipboard;
end;

procedure TFrmFichaGeneralPersonal.DxBarBtnEliminarImagenClick(Sender: TObject);
begin
  if CdUptPersonal.State in [dsInsert, dsEdit] then
  begin
    TcxImage(ImgFoto).Picture := nil;
    cdUptPersonal.FieldByname('Imagen').clear;
  end;
end;

procedure TFrmFichaGeneralPersonal.DxBarBtnGuardarCerrarClick(Sender: TObject);
begin
  if cxGbGenerales.CanFocus then
    cxGBGenerales.SetFocus;

  HuboError := False;
  DxBarBtnGuardar.Click;
  if Not HuboError then
    Close;
end;

procedure TFrmFichaGeneralPersonal.DxBarBtnGuardarClick(Sender: TObject);
var
  cursor: TCursor;
  cdTmpPersonal: TClientDataSet;
  Replica: Boolean;
  IdPersonalTmp: Integer;
  LocEmpleado: string;
  TipoMovto: string;
begin
  HuboError := True;
  ObjError := Nil;
  try
    cursor := Screen.Cursor;
    try
      ObjError := Nil;    // Inicializo que ningún objeto ha generado un error

      Replica := Form2.cdConfiguracionAcceso.FieldByName('ReplicarRh').AsString = 'Si';
      Screen.Cursor := crAppStart;
      validarCamposPersonales;

      if Replica then
      begin
        cdTmpPersonal := TClientDataSet.Create(Self);
        GuardarRh;
      end;

      //Guardar datos del nuevo empleado
      if tieneCambios(CdUptPersonal) = True then
      begin
        LocEmpleado := CdUptPersonal.FieldByName('APaterno').AsString + ' ' +
                     CdUptPersonal.FieldByName('AMaterno').AsString + ', ' +
                     CdUptPersonal.FieldByName('Nombres').AsString;

        if CdUptPersonal.State = dsInsert then
          TipoMovto := 'ALTA PERSONAL'
        else
          TipoMovto := 'MODIFICACION DE REGISTRO';

        CdUptPersonal.FieldByName('APaterno').AsString := UpperCase(Trim(CxDbTxtApellidoPaterno.Text));
        CdUptPersonal.FieldByName('AMaterno').AsString := UpperCase(Trim(CxDbTxtApellidoMaterno.Text));
        CdUptPersonal.FieldByName('Nombres').AsString := UpperCase(Trim(CxDbTxtNombre.Text));


        CdUptPersonal.Post;
        CdUptPersonal.ApplyUpdates(-1);
        IdPersonalTmp := UltimoId;
        ClientModule1.registrarEvento('FICHA PERSONAL', TipoMovto, LocEmpleado, 0.0, 0);
       end;

      if (Replica) then
      begin
        //IdPersonalTmp := UltimoId;
        if (cdPersonalRH.State = dsInsert)  then
        begin
          if cdTmpPersonal.ProviderName = '' then
            if not CrearConjunto(cdTmpPersonal, 'nuc_personal', ccUpdate) then
              raise InteligentException.CreateByCode(5, ['Catálogo de Personal de Nóminas']);

          if not CargarDatosFiltrados(cdTmpPersonal, 'IdPersonal', [IdPersonalTmp]) then
            raise InteligentException.CreateByCode(6, ['IdPersonal', 'Catálogo Personal Nóminas', VarToStr(IdPersonalTmp)]);

          if cdTmpPersonal.Active then
            cdTmpPersonal.Refresh
          else
            cdTmpPersonal.Open;

          if cdTmpPersonal.RecordCount = 1 then
          begin
            cdPersonalRH.FieldByName('sIdEmpleado').AsString := cdTmpPersonal.FieldByName('CodigoPersonal').AsString;
            cdPersonalRH.FieldByName('IdPersonal').AsInteger := cdTmpPersonal.FieldByName('IdPersonal').AsInteger;
          end;
        end;

        if tieneCambios(cdPersonalRh) = True then
        begin
          cdPersonalRH.Post;
          cdPersonalRH.ApplyUpdates(-1);
        end;
      end;

      if  UpperCase(accion) = 'NUEVO' then
      begin
        InteliDialog.ShowModal('Correcto', 'Registro creado correctamente', mtInformation, [mbOk], 0);
        CdUptPersonal.Insert;
        modoAgregarNuevo;
      end
      else if  UpperCase(accion) = 'EDITAR' then
      begin
        InteliDialog.ShowModal('Correcto', 'Registro modificado correctamente', mtInformation, [mbOk], 0);
        CdUptPersonal.Edit;
      end;
    finally
      if Assigned(cdTmpPersonal) and (cdTmpPersonal.ProviderName <> '') then
        EliminarConjunto(cdTmpPersonal);

      if Assigned(cdTmpPersonal) then
        cdTmpPersonal.Destroy;

      Screen.Cursor := Cursor;
    end;

    HuboError := False;
  except
    on e:InteligentWarning do
    begin
      if Assigned(ObjError) then
      begin
        if (Assigned(ObjError.Parent)) and (ObjError.Parent.ClassType = TcxTabSheet) then
          menuPrincipal1.ActivePage := TcxTabSheet(ObjError.Parent);

        If ObjError.CanFocus then
          ObjError.SetFocus;
      end;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmFichaGeneralPersonal.dxbrbtn1Click(Sender: TObject);
var
  Cursor: TCursor;
  cdTmpEmpleado: TClientDataset;
begin
  ///ojo si ves esto es por que mientras requieren replicar la información y aun están las tablas separadas.
  try
    Cursor := crAppStart;
    Screen.Cursor := CrappStart;
    try
      cdTmpEmpleado := TClientDataset.Create(self);

      if CdUptPersonal.Active and (cdUptPersonal.State = dsEdit) then
      begin
        if (cdPersonalRH.Active) and (cdPersonalRh.State in [dsEdit, dsInsert]) then
          cdPersonalRh.Cancel;

        if not CrearConjunto(cdTmpEmpleado, 'erp_empleados', ccUpdate) then
          raise InteligentException.CreatebyCode(5,['erp_empleados']);


        if not CargarDatosFiltrados(cdTmpEmpleado, 'sIDEmpleado', [CdUptPersonal.FieldByName('CodigoPersonal').AsString]) then
          raise InteligentException.CreateByCode(6, ['nuc_personal', cdUptPersonal.FieldByName('CodigoPersonal').AsString, 'sIdEmpleado']);

        if cdTmpEmpleado.Active then
          cdTmpEmpleado.Refresh
        else
          cdTmpEmpleado.Open;

        if cdTmpEmpleado.RecordCount = 1 then
          raise InteligentException.CreateByCode(24, ['El empleado ya se encunetra replicado actualmente.']);

        cdPersonalRh.Append;
        GuardarRh;
        cdPersonalRH.FieldByName('sIdEmpleado').AsString := CdUptPersonal.FieldByName('CodigoPersonal').AsString;
        cdPersonalRH.FieldByName('IdPersonal').AsInteger := CdUptPersonal.FieldByName('IdPersonal').AsInteger;
        cdPersonalRh.FieldByName('IdOrganizacion').AsInteger := 0;
        cdPersonalRh.Post;
        cdPersonalRh.ApplyUpdates(-1);
        InteliDialog.ShowModal('Aviso', 'El registro se ha replicado correctamente.',mtInformation, [mbOK], 0);
      end;
    finally
      if cdTmpEmpleado.ProviderName <> '' then
        EliminarConjunto(cdTmpEmpleado);

      if assigned(cdTmpEmpleado) then
        cdTmpEmpleado.Destroy;

      Screen.Cursor := Cursor;
      Close;
    end;
  Except
    on e: InteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFichaGeneralPersonal.DxRibbonMainTabChanged(
  Sender: TdxCustomRibbon);
begin
  if UpperCase(accion) <> 'NUEVO' then
  begin
    if DxRibbonMain.ActiveTab = dxTabPersonal then
      menuPrincipal.ActivePage := datosPersonales1
    else if DxRibbonMain.ActiveTab = dxTabDocumentos then
      menuPrincipal.ActivePage := datosDocumentos
    else if DxRibbonMain.ActiveTab = dxTabDatosBancarios then
      menuPrincipal.ActivePage := datosBancarios;
  end
  else
  begin
    DxRibbonMain.ActiveTab := dxTabPersonal;
    menuPrincipal.ActivePage := datosPersonales1;
  end;
end;

procedure TFrmFichaGeneralPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdPersonalGeneral.ProviderName <> '' then
    EliminarConjunto(cdPersonalGeneral);
end;

procedure TFrmFichaGeneralPersonal.FormCreate(Sender: TObject);
begin
  try
    //Crear contenedor para Personal
    if not CrearConjunto(CdUptPersonal, 'nuc_personal', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Catálogo de Personal']);

    //Crear contenedor para la nacionalidad
    if Not CrearConjunto(cdPais, 'nuc_pais', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Paises']);

    cdPais.Open;

    if cdPais.RecordCount = 0 then
      raise InteligentException.CreateByCode(11, ['Catálogo de Paises.' + #10 + #10 + 'No es posible continuar con la captura de personal si no se ha registrado los datos necesarios en esta tabla.']);

    //Crear contenedor para la organizacion(contrato)
    if not CrearConjunto(cdContratosRH, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Organizacion']);

    if not CargarDatosFiltrados(cdContratosRH, 'Padre', [-5]) then
      raise InteligentException.CreateByCode(6, [ 'Organizacion', 'IdOrganizacion', '-5']);

    if cdContratosRH.Active then
      cdContratosRH.Refresh
    else
      cdContratosRH.Open;

    CxGridDocumentos.Align := alClient;

    CambiosHechos := False;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmFichaGeneralPersonal.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  ParametroRh: String;
begin
  Try
    try
      MemArchivosNuevos.Open;
      //Poner las pestanas en datos personales por default
      DxRibbonMain.ActiveTab := dxTabPersonal;
      menuPrincipal.ActivePage := datosPersonales1;

      FechaServidor := ServidorFechaHora(0);

      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      CxDbDateRegistro.SetFocus;

      // Crear contenedor para los documentos del postulante
      if Not CrearConjunto(cdDoctosPostulante, 'rhu_docxpostulante', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos de Postulante']);

      if CdUptPersonal.active then
        CdUptPersonal.Refresh
      else
        CdUptPersonal.Open;

      // Crear contenedor para los datos bancarios del postulante
      if Not CrearConjunto(cddatosbancarios, 'rhu_datosbancariosxpersonal', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Datos Bancarios del Postulante']);

      // Abrir el contenedor de los datos bancarios de personal
      cdDatosBancarios.Close;
      if Not CargarDatosFiltrados(cddatosbancarios, 'IdPostulante', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['Documentos de Postulante', IdPersonal, 'IdPostulante']);
      cdDatosBancarios.Open;

      if accion = 'Nuevo' then    //Si la opcion seleccionada en el catalogo de personal es "Nuevo"
      begin
        CdUptPersonal.Insert;

        modoAgregarNuevo;
      end
      else if accion = 'Editar' then
      begin
        if Not CargarDatosFiltrados(cdDoctosPostulante, 'IdPostulante', [IdPersonal]) then
          raise InteligentException.CreateByCode(6, ['Documentos de Postulante', IdPersonal, 'IdPostulante']);
        cdDoctosPostulante.Open;

        if not CargarDatosFiltrados(CdUptPersonal, 'IdPersonal', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['Catalogo Personal', 'IdPersonal', IntToStr(IdPersonal)]);

        if CdUptPersonal.active then
          CdUptPersonal.Refresh
        else
          CdUptPersonal.Open;

        CdUptPersonal.Edit;

        if CdUptPersonal.fieldByName('Infonavit').AsString = 'Si' then
        begin
          CxChkBoxInfonavit.Checked := True;
          if cdUptPersonal.FieldByName('TAplicacionInfonavit').AsString = 'SalMinZona' then
            cxDBCBoxAplicaSobre.ItemIndex := 0
          else if cdUptPersonal.FieldByName('TAplicacionInfonavit').AsString = 'Fijo' then
            CxDbCBoxAplicaSobre.ItemIndex := 1
          else If cdUptPersonal.FieldByName('TAplicacionInfonavit').AsString = 'Salario' then
            CxDbCBoxAplicaSobre.ItemIndex := 2;
        end;
      end;

      if Assigned(Form2) and (Form2.cdConfiguracionAcceso.FieldbyName('replicarRh').asString = 'Si') then
      begin
        if cdPersonalRH.ProviderName = '' then
          if not CrearConjunto(cdPersonalRH,'erp_empleados', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['erp_Empleados']);

        if CdUptPersonal.State = dsInsert then
          ParametroRh := '-9'
        else
        begin
          if (CdUptPersonal.Active) and (CdUptPersonal.State = dsEdit) and (CdUptPersonal.RecordCount = 1)then
            ParametroRh := CdUptPersonal.FieldByName('CodigoPersonal').AsString
          else
            raise InteligentException.CreateByCode(24, ['Se ha Solicitado información del sistema, del cual no se encuentra ningun registro o están duplicados']);
        end;

        if not CargarDatosFiltrados(cdPersonalRH, 'sidEmpleado',[ParametroRh]) then
          raise InteligentException.CreateByCode(11, [' al filtrar por ficha']);

        if cdPersonalRH.Active then
          cdPersonalRH.Refresh
        else
          cdPersonalRH.Open;

        //En caso de existir mas de 2 registros en rh con el mismo código, debemos evitar seguir ese desmadre.
//        if (cdPersonalRH.State <> dsInsert) and (cdPersonalRH.RecordCount < 1) then
//          raise InteligentException.CreateByCode(24, ['Se ha Solicitado información del sistema de RH, del cual no se encuentra ningún registro o están duplicados']);

        //En caso de No existir ningún registro en Rh pero que si existe en nóminas se debe inserta.
        if cdPersonalRh.RecordCount = 0 then
          cdPersonalRH.Insert;

        //En el caso de existir un registro con el código de personal, solo hay que editarlo.
        if cdPersonalRH.RecordCount = 1 then
          cdPersonalRH.Edit;

      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmFichaGeneralPersonal.GuardarRh;
begin
  cdPersonalRH.FieldByName('sNombreCompleto').AsString := CdUptPersonal.FieldByName('Nombres').AsString;
  cdPersonalRH.FieldByName('sRfc').AsString := CdUptPersonal.FieldByName('rfc').AsString;
  //cdPersonalRH.FieldByName('sDomicilio').AsString := leftStr('Calle ' +cdPersonal.FieldByName('Calle').AsString + ', Colonia ' + cdPersonal.FieldByName('Colonia').AsString + ', CP ' +cdPersonal.FieldByName('CP').AsString + ', ' + cdPersonal.FieldByName('Municipio').AsString + ', ' + cdPersonal.FieldByName('Estado').AsString, 50);
  cdPersonalRH.FieldByName('sCiudad').AsString := CdUptPersonal.FieldByName('Ciudad').AsString;
  cdPersonalRH.FieldByName('sTelefono').AsString := CdUptPersonal.FieldByName('telefono').AsString;
  cdPersonalRH.FieldByName('seMail').AsString := CdUptPersonal.FieldByName('Correo').AsString;
  cdPersonalRH.FieldByName('sCurp').AsString := CdUptPersonal.FieldByName('curp').AsString;
  cdPersonalRH.FieldByName('sImss').AsString := CdUptPersonal.FieldByName('numerosegurosocial').AsString;
  cdPersonalRH.FieldByName('sTipoSangre').AsString := CdUptPersonal.FieldByName('gruposanguineo').AsString;
  cdPersonalRH.FieldByName('sEstadoCivil').AsString := CdUptPersonal.FieldByName('EstadoCivil').AsString;
  cdPersonalRH.FieldByName('dFechaNacimiento').AsString := CdUptPersonal.FieldByName('fechanacimiento').AsString;
  cdPersonalRH.FieldByName('lSexo').AsString := CdUptPersonal.FieldByName('sexo').AsString;
  cdPersonalRH.FieldByName('sLugarNacimiento').AsString := CdUptPersonal.FieldByName('CiudadNacimiento').AsString;
  //cdPersonalRH.FieldByName('sInfonavit').AsString := cdPersonal.FieldByName('Infonavit').AsString;
  //cdPersonalRH.FieldByName('dFactorInfonavit').AsExtended := cdPersonal.FieldByName('FactorInfonavit').AsExtended;
  //cdPersonalRH.FieldByName('eActivo').AsString := cdPersonal.FieldByName('Activo').AsString;
  cdPersonalRH.FieldByName('sCalle').AsString := CdUptPersonal.FieldByName('Calle').AsString;
  cdPersonalRH.FieldByName('sColonia').AsString := CdUptPersonal.FieldByName('Colonia').AsString;
  cdPersonalRH.FieldByName('sEstado').AsString := CdUptPersonal.FieldByName('Estado').AsString;
  cdPersonalRH.FieldByName('sLocalidad').AsString := CdUptPersonal.FieldByName('Ciudad').AsString;
  cdPersonalRH.FieldByName('sNumero').AsString := CdUptPersonal.FieldByName('Numero').AsString;
  cdPersonalRH.FieldByName('sNoCreditoInfonavit').AsString := CdUptPersonal.FieldByName('NumeroInfonavit').AsString;
  //cdPersonalRH.FieldByName('sPais').AsString := cdPersonal.FieldByName('Pais').AsString;
  //cdPersonalRH.FieldByName('sNombreMadre').AsString := cdPersonal.FieldByName('NombreMadre').AsString;
  //cdPersonalRH.FieldByName('sNombrePadre').AsString := cdPersonal.FieldByName('NombrePadre').AsString;
  cdPersonalRH.FieldByName('iId_Puesto').AsString := CdUptPersonal.FieldByName('idcargo').AsString;
  cdPersonalRH.FieldByName('sApellidoPaterno').AsString := CdUptPersonal.FieldByName('Apaterno').AsString;
  cdPersonalRH.FieldByName('sApellidoMaterno').AsString := CdUptPersonal.FieldByName('Amaterno').AsString;
  cdPersonalRh.FieldByName('sNombre_emergencia').AsString := CdUptPersonal.FieldByName('contacto').AsString;
  cdPersonalRH.FieldByName('sNumero_Emergencia').AsString := CdUptPersonal.FieldByName('TelefonoContacto').AsString;
  cdPersonalRH.FieldByName('sCp').AsString := CdUptPersonal.FieldByName('Cp').AsString;

  if cddatosbancarios.RecordCount > 0 then
  begin
    cddatosbancarios.First;
    cdPersonalRh.FieldByName('sCuentaInterbancaria').AsString := LeftStr(cddatosbancarios.FieldByName('ClaveInterbancaria').AsString,20);
    cdPersonalRh.fieldByName('sCuenta').asString := LeftStr(cddatosbancarios.FieldByName('NumeroDeCuenta').AsString, 20);
    //cdPersonalRh.fieldByName('sBanco').asString := LeftStr(cdDatosBancarios.FieldByName('nombre').asString, 60);
    cdPersonalRH.FieldByName('sSucursal').AsString := LeftStr(cddatosbancarios.FieldByName('Sucursal').AsString, 5);
  end
  else
  begin
    if cdPersonalRH.State = dsInsert then
    begin
      cdPersonalRh.FieldByName('sCuentaInterbancaria').AsString := '*';
      cdPersonalRh.fieldByName('sCuenta').asString := '*';
      //cdPersonalRH.FieldByName('sBanco').AsString := '*';
    end;
  end;

  if cdPersonalRH.State = dsInsert then
  begin
    //cdPersonalRH.FieldByName('sPuesto').AsString := '*';
    //cdPersonalRH.FieldByName('CodigoDepartamento').AsString := '*';
    //cdPersonalRH.FieldByName('sIdArea').AsString := '*';
    cdPersonalRH.FieldByName('dSueldo').AsExtended := 0;
    //cdPersonalRH.FieldByName('lLabora').AsString := 'Si';

    //cdPersonalRH.FieldByName('sCuentaInterbancaria').AsString := '0';
    cdPersonalRH.FieldByName('sLibretaMar').AsString := '*';
    cdPersonalRH.FieldByName('sCartilla').AsString := '*';
    cdPersonalRH.FieldByName('sCedulaProfesional').AsString := '*';
    //cdPersonalRH.FieldByName('sCarrera').AsString := '*';
    //cdPersonalRH.FieldByName('dSalarioDiario').AsExtended := 0.0;
    //cdPersonalRH.FieldByName('Iid_NumeroDeCuenta').AsString := '0';

  end;
end;

procedure TFrmFichaGeneralPersonal.habilitarDeshabilitarNoInfonavit(
  visible: Boolean);
begin
  //Habilita o deshabilita los campos de la parte No Infonavit
  edtCreoCxDbTxtNoInfonavit.Enabled := visible;
  CxDbCBoxAplicaSobre.Enabled := visible;
  TDBFecha2CxDbDateAplicacion.Enabled := visible;
  TDBFecha2CxDbDateTermino.Enabled := visible;
  edtCreoCxDbTxtImporte.Enabled := visible;
  if UpperCase(accion) = 'NUEVO' then
  begin
    TDBFecha2CxDbDateAplicacion.Date := DateOf(Now);
    CdUptPersonal.FieldByName('AplicacionInfonavit').AsDateTime := DateOf(Now);
    TDBFecha2CxDbDateTermino.Date := DateOf(Now);
    CdUptPersonal.FieldByName('TerminoInfonavit').AsDateTime := DateOf(Now);
  end;
  CxDbCBoxAplicaSobre.ItemIndex := 0;
  //CdUptPersonal.FieldByName('tAplicacionInfonavit').AsString := 'SalMinZona';
end;

procedure TFrmFichaGeneralPersonal.ImgFotoClick(Sender: TObject);
begin
  //Mostrar formulario para elegir y modificar imagen
//  try
//    try
//      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
//      FrmCargaImagen.ShowModal;
//      if not FrmCargaImagen.cancelado then
//      begin
//        TBlobField(CdUptPersonal.FieldByName('imagen')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
//      end;
//    finally
//      //FrmCargaImagen.Free;
//    end;
//  except
//    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
//  end;
end;

procedure TFrmFichaGeneralPersonal.ImgFotoDblClick(Sender: TObject);
begin
  DxBarBtnCargarImagenClick(sender);
end;

procedure TFrmFichaGeneralPersonal.ImgFotoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmFichaGeneralPersonal.LimpiarCompDocumento;
var
  padre: TWinControl;
begin
  //Limpiar el componente
  if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
  begin
    padre := CompDocumento.Parent;
    FreeAndNil(CompDocumento);
    CrearCompDocumento(padre,False);
  end;
end;

procedure TFrmFichaGeneralPersonal.menuPrincipal1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if menuPrincipal1.ActivePageIndex = 0 then
  begin
    edtCreoCxDbTxtTelefono.setFocus;
  end
  else if menuPrincipal1.ActivePageIndex = 1 then
  begin
    TDBFecha2CxDbDateFechaNacimiento.SetFocus;
  end
  else if menuPrincipal1.ActivePageIndex = 2 then
  begin
    edtCreoCxDbTxtCurp.setFocus;
  end;


end;

procedure TFrmFichaGeneralPersonal.menuPrincipalChange(Sender: TObject);
begin
  CambiarTab(nil);
end;

procedure TFrmFichaGeneralPersonal.modoAgregarNuevo;
begin
  with cdUptPersonal do
  begin
    menuPrincipal.ActivePageIndex := 0;
    menuPrincipal1.ActivePageIndex := 0;
    CxDbDateRegistro.setFocus;
    cdUptPersonal.fieldByName('idpersonal').AsInteger := ultimoID;
    CxDbTxtCodigo.Enabled := False;
    cdUptPersonal.fieldByName('CodigoPostulante').AsString := '0';
    cdUptPersonal.fieldByName('Activo').AsString := 'Si';

    fieldByName('fechaalta').AsDateTime := Date;
    fieldByName('CodigoPostulante').AsString := 'Automatico';
    cxCbbContratos.ItemIndex := 0;
    CxDbCBoxSexo.ItemIndex := 0;
    fieldByName('sexo').AsString := CxDbCBoxSexo.Text;

    //Pestana Direccion
    CxCbbNacionalidad.ItemIndex := 0;

    //Pestana Datos Nacimiento
    fieldByName('fechanacimiento').AsDateTime := Date;

    //Pestana Datos de Empleo
    CxDbCBoxEstadoCivil.ItemIndex := 0;
    CxDbCBoxAplicaSobre.ItemIndex := 0;
    FieldByName('infonavit').asString := 'No';
    fieldByName('AplicacionInfonavit').AsDateTime := Date;
    fieldByName('terminoInfonavit').AsDateTime := Date;
  end;
end;

function TFrmFichaGeneralPersonal.ObtenerFechaArchivo(
  const NombreArchivo: string; out FechaResult: TDateTime;
  TipoFechaObtener: TTipoDFecha): boolean;
var
  Monitor : integer;
  Resultado : boolean;
  FechaCreacionArchivo, FechaUltimaModificacion, FechaUltimoAcceso : TFileTime;
  TempFechaArchivo : TFileTime;
  TempFechaSistema : TSystemTime;
begin
  Monitor := FileOpen(NombreArchivo, fmShareDenyNone);
  FechaResult := 0.0;
  if Monitor < 0 then Resultado := false
  else
  begin
    Resultado := GetFileTime(Monitor, @FechaCreacionArchivo,
        @FechaUltimoAcceso, @FechaUltimaModificacion);
    FileClose(Monitor);
    if Resultado then begin
      case TipoFechaObtener of
        fdkCreado : FileTimeToLocalFileTime(FechaCreacionArchivo, TempFechaArchivo);
        fdkUltimaModificacion : FileTimeToLocalFileTime(FechaUltimaModificacion, TempFechaArchivo);
        fdkUltimoAcceso : FileTimeToLocalFileTime(FechaUltimoAcceso, TempFechaArchivo);
      end;
      if FileTimeToSystemTime(TempFechaArchivo, TempFechaSistema) then
        FechaResult := EncodeDateTime(TempFechaSistema.wYear, TempFechaSistema.wMonth,
            TempFechaSistema.wDay, TempFechaSistema.wHour, TempFechaSistema.wMinute,
            TempFechaSistema.wSecond, TempFechaSistema.wMilliSeconds)
      else Resultado := false;
    end;
  end;
  Result := Resultado;
end;

procedure TFrmFichaGeneralPersonal.TDBFecha2CxDbDateAplicacionKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    TDBFecha2CxDbDateTermino.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.TDBFecha2CxDbDateAplicacionPropertiesChange(
  Sender: TObject);
begin
  try
    TcxDateEditProperties(TDBFecha2CxDbDateTermino.Properties).MinDate := TDBFecha2CxDbDateAplicacion.Date;
    if CdUptPersonal.State in [dsInsert, dsEdit] then
      CdUptPersonal.FieldByName('TerminoInfonavit').AsDateTime := TDBFecha2CxDbDateAplicacion.Date;
  Except

  end;
end;

procedure TFrmFichaGeneralPersonal.TDBFecha2CxDbDateFechaNacimientoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtEstadoNacimiento.SetFocus;
end;

procedure TFrmFichaGeneralPersonal.TDBFecha2CxDbDateTerminoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edtCreoCxDbTxtImporte.SetFocus;
end;

Function TFrmFichaGeneralPersonal.tieneCambios(var Dataset: TClientDataSet):Boolean;
var
  I: Integer;
  Indice: Integer;
  ListaCampos: TStringList;
  tieneModif: Boolean;
  valorOld: String;
  ValorNew: String;
begin
  tieneModif := False;

  if ViejaImagen = NuevaImagen then
  begin
    for I := 0 to Dataset.Fields.Count-1 do
    begin
      try
        valorOld := (UpperCase((VarToStr(Dataset.Fields[i].OldValue))));
      except
        valorOld := '';
      end;
      try
        ValorNew := UpperCase(((Dataset.fields[i].Value)));
      except
        ValorNew := '';
      end;
      if (ValorNew <> valorOld) and
      (tieneModif = False) then
      begin
        tieneModif := True;
        //showmessage('Value : ' + VarToStr(Dataset.Fields[i].value) + 'OldValue: ' + VarToStr(Dataset.Fields[i].OldValue));
        //i := Dataset.Fields.Count;
      end;
    end;
  end
  Else
    tieneModif := True;

  ViejaImagen := null;
  NuevaImagen := null;
  CambiosHechos := tieneModif; // Si tiene modificaciones preguntará.
  Result := tieneModif;
end;

procedure TFrmFichaGeneralPersonal.validarCajasDeTexto(cajaDeTexto: TcxDBTextEdit;
  mensajeError: string);
begin
  //Valida las cajas de texto siempre y cuando sea de tipo tcxDBTextEdit
  if cajaDeTexto.Text = '' then
  begin
    ObjError := cajaDeTexto;
    raise InteligentWarning.CreateByCode(18, [mensajeError]);
  end;
end;

procedure TFrmFichaGeneralPersonal.validarCamposPersonales;
var
  Control: TWinControl;

procedure DigitoVerificador(cNSS: TcxDBTextEdit);
var
  Arreglo,
  Resultado, i: Integer;
  Valor: Extended;
  DiezDigitos: String;
  UltimoDigito: Integer;
begin
  //Discriminar  el  digito 11 porque despues  sera  comparado para verificar  que  este  sea  correcto
  DiezDigitos := AnsiMidStr(cNSS.Text,1,10);
  UltimoDigito := StrToInt(AnsiMidStr(cNSS.Text,11,1));

  // Verificar si la cadena es completamente numérica
  Try
    Valor := StrToFloat(DiezDigitos);
  Except
    raise InteligentWarning.CreateByCode(8, ['El Número de Seguro Social deberá estar conformado de números solamente, verifique esto e intente de nuevo.']);
  End;

  // Calcular el dígito verificador del número de IMSS
  Resultado := 0;
  for i := 1 to 10 do
  begin
    Arreglo := StrToInt(DiezDigitos[i]);
    if i Mod 2 = 0 then
      Arreglo := Arreglo * 2;

    if Arreglo > 9 then
      Arreglo := (Arreglo - 10) + 1;

    Resultado := Resultado + Arreglo;
  end;

  // Buscar el multiplo de 10 superior inmediato para realizar la resta
  if Resultado Mod 10 = 0 then
    Resultado := 0
  else
    Resultado := (((Resultado Div 10) + 1) * 10) - Resultado;

  if Resultado <> Ultimodigito then
  begin
    ObjError := cNSS;
    raise InteligentWarning.CreateByCode(8,['El Dígito Verificador del Número de Seguro Social es incorrecto, verifique esto e intente de nuevo.']);
  end;
end;

begin
  //Valida que el nombre no este vacio
  validarCajasDeTexto(CxDbTxtNombre, 'Nombre');

  //Valida la Calle
  validarCajasDeTexto(edtCreoCxDbTxtCalle, 'Calle');

  //Valida Numero de Casa
  validarCajasDeTexto(edtCreoCxDbTxtNumero, 'Numero');

  //Valida la Colonia
  validarCajasDeTexto(edtCreoCxDbTxtColonia, 'Colonia');

  //Valida el CP
  validarCajasDeTexto(edtCreoCxDbTxtCP, 'CP');

  //Valida la Ciudad
  validarCajasDeTexto(edtCreoCxDbTxtCiudad, 'Ciudad');

  //Valida el Municipio
  validarCajasDeTexto(edtCreoCxDbTxtMunicipio, 'Municipio');

  //Valida el Estado
  validarCajasDeTexto(edtCreoCxDbTxtEstado, 'Estado');

  //Valida el Pais
  validarCajasDeTexto(edtCreoCxDbTxtPais, 'Pais');

  //Valida el CURP
  validarCajasDeTexto(edtCreoCxDbTxtCurp, 'Clave Única de Registro de Población');

  if Length(edtCreoCxDbTxtNSS.text) <> 11 then
  begin
    ObjError := edtCreoCxDbTxtNSS;
    raise InteligentWarning.CreateByCode(8, ['El Número de Seguro Social debe estar conformado de 11 dígito, verifique esto e intente de nuevo.']);
  end;

  //Valida el RFC
  validarCajasDeTexto(edtCreoCxDbTxtRfc, 'Registros Federal de Causantes');

  //Si la parte de Infonavit esta habilitada, entonces validar k no se vallan vacios los campos
  if CxChkBoxInfonavit.Checked then
  begin
    cdUptPersonal.fieldByName('Infonavit').AsString := 'Si';
    //Valida El No Infonavit
    validarCajasDeTexto(edtCreoCxDbTxtNoInfonavit, 'No Infonavit');

    //Valor que se subira del tipo Credito
    if CxDbCBoxAplicaSobre.ItemIndex = 0 then
      cdUptPersonal.fieldByName('tAplicacionInfonavit').AsString := 'SalMinZona'
    else if  CxDbCBoxAplicaSobre.ItemIndex = 1 then
      cdUptPersonal.fieldByName('tAplicacionInfonavit').AsString := 'Fijo'
    else if  CxDbCBoxAplicaSobre.ItemIndex = 2 then
      cdUptPersonal.fieldByName('tAplicacionInfonavit').AsString := 'Salario';

    //Valida el Importe
    validarCajasDeTexto(edtCreoCxDbTxtImporte, 'Importe/Fact');

    if TDBFecha2CxDbDateAplicacion.Date > TDBFecha2CxDbDateTermino.Date then
    begin
      ObjError := TDBFecha2CxDbDateAplicacion;
      raise InteligentWarning.CreateByCode(24, ['La fecha de inicio de aplicación de Infonavit no debe ser mayor a la fecha de término.']);
    end;

    if TDBFecha2CxDbDateAplicacion.Date = TDBFecha2CxDbDateTermino.Date then
    begin
      if InteliDialog.ShowMOdal('Aviso','La fecha de inicio y término del INFONAVIT son idénticas. ¿Desea continuar?', mtinformation, [mbYes, MbNO], 0) = mrNO then
      begin
        menuPrincipal.ActivePageIndex := 0;
        menuPrincipal1.ActivePageIndex := 2;
        TDBFecha2CxDbDateAplicacion.SetFocus;
      end;
    end;
  end
  else
  begin
    cdUptPersonal.FieldByName('Infonavit').AsString := 'No';
    cdUptPersonal.FieldByName('NumeroInfonavit').AsString := '';
    cdUptPersonal.FieldByName('FactorInfonavit').AsFloat := 0;
    try
      cdUptPersonal.FieldByName('AplicacionInfonavit').Clear;
      cdUptPersonal.FieldByName('TerminoInfonavit').Clear;
      cdUptPersonal.FieldByName('tAplicacionInfonavit').Clear;
    Except
      TcxDateEditProperties(TDBFecha2CxDbDateTermino.Properties).MinDate := null;
    end;
  end;

  {$REGION 'VALIDAR CURP, RFC, NSS, CTABANCARIA'}
  validarDatos(edtCreoCxDbTxtCurp, '-1', edtCreoCxDbTxtCurp.Text, '-1', '-1', 'CURP', edtCreoCxDbTxtCurp.Text);   //Valida la CURP
  validarDatos(edtCreoCxDbTxtRfc, edtCreoCxDbTxtRfc.Text, '-1', '-1', '-1', 'RFC', edtCreoCxDbTxtRfc.Text);   //Valida el RFC
  DigitoVerificador(edtCreoCxDbTxtNSS);
  {$ENDREGION}

  {$REGION 'VALIDAR PESTANA DATOS PERSONALES'}
  if (cdPersonalRH.Active) and (cdPersonalRH.FieldByName('IdOrganizacion').IsNull) then
  begin
    ObjError := CxCbbContratos;
    raise InteligentWarning.CreateByCode(24, ['Debe seleccionar una organizacion para el empleado.']);
  end;

  //Valida que la fecha k se pone en la fecha de nacimiento sea de 18 anos
  if (IncYear(Today, -18) < TDBFecha2CxDbDateFechaNacimiento.Date) and (InteliDialog.ShowModal('La fecha de nacimiento capturada parece indicar que esta persona es menor de edad.', 'Esto ha sido determinado por que la fecha que tiene registrada el servidor de la base de datos es ' + DateToStr(FechaServidor) + ' y la fecha capturada es ' + TDBFecha2CxDbDateFechaNacimiento.Text + #10 + #10 + '¿Está seguro que desea registrar los datos con esta fecha de nacimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
  begin
    menuPrincipal.ActivePageIndex := 0;
    menuPrincipal1.ActivePageIndex := 1;
    TDBFecha2CxDbDateFechaNacimiento.SetFocus;
  end;
  {$ENDREGION}
end;

procedure TFrmFichaGeneralPersonal.ValidarDatos(pObjError: TWinControl; rfc, curp, nss, ctabancaria,
  campoMensaje, valor: string);
var
  nombre : string;
begin
  if cdPersonalGeneral.ProviderName = '' then
  begin
    //Valida
    if Not CrearConjunto(cdPersonalGeneral, 'nuc_personal', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Personal']);
  end;

  try
    //Valida si ya existe el registro ya sea RFC, CURP, CTA BANCARIA, ETC.
    if Not CargarDatosFiltrados(cdPersonalGeneral, 'idPersonal,activo,Gruposanguineo,rfc, ' +
                                            'contacto,telefonocontacto,codigopersonal,curp, ' +
                                            'descripcion,imagenpersonal,doccontratacion,Nombres,apaterno, ' +
                                            'amaterno,numerosegurosocial,fechaalta',
                                            [-1, -1, -1, rfc,
                                             -1, -1, -1, curp,
                                             -1, -1, -1, -1, -1,
                                             -1, nss, -1]) then
        raise InteligentException.CreateByCode(6, ['Personal', IdPersonal, 'IdPersonal']);

    if cdPersonalGeneral.Active then
      cdPersonalGeneral.Refresh
    else
      cdPersonalGeneral.Open;

    if cdPersonalGeneral.RecordCount >= 1 then
    begin
      if CdUptPersonal.fieldByName('idPersonal').AsInteger <> cdPersonalGeneral.fieldByName('idPersonal').AsInteger then
      begin
        ObjError := pObjError;
        nombre := cdPersonalGeneral.FieldByName('Nombres').AsString + ' ' + cdPersonalGeneral.FieldByName('APaterno').AsString + ' ' +  cdPersonalGeneral.FieldByName('AMaterno').AsString;
        raise InteligentWarning.CreateByCode(8, ['El valor: ' + valor + ' del campo ' + campoMensaje + ' ya ha sido asignado al empleado ' + nombre]);
      end;
    end;
  finally
    if cdPersonalGeneral.ProviderName <> '' then
      cdPersonalGeneral.Close;
  end;
end;

end.


