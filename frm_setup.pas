unit frm_setup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  {utilerias,} Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, frm_connection, DB,
  global, {frm_ActividadesAnexo2,} Buttons, ImgList, ExtCtrls, ExtDlgs, Jpeg,
  ZDataset, ZAbstractRODataset, ZAbstractDataset,
  UnitExcepciones, UnitTIniTracer, NxPageControl, AdvGroupBox, AdvListV,
   UnitValidacion, AdvSmoothButton, AdvPanel, AdvGlowButton, JvExMask,
  JvToolEdit, JvCombobox, AdvOfficeButtons, DBAdvOfficeButtons, Menus, StrUtils,
  frxClass, frxDBSet, ClientModuleUnit1;

type
  TfrmSetup = class(TForm)
    btnOk: TBitBtn;
    BtnCancel: TBitBtn;
    ds_configuracion: TDataSource;
    Panel: TImageList;
    Label73: TLabel;
    OpenPicture: TOpenPictureDialog;
    ds_convenios: TDataSource;
    configuracion: TZQuery;
    Convenios: TZReadOnlyQuery;
    Panel1: TPanel;
    NxPCSetUp: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    AdvGroupBox1: TAdvGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label86: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    tsEmail: TDBEdit;
    tsWeb: TDBEdit;
    tsFax: TDBEdit;
    tsTelefono: TDBEdit;
    tsPiePagina: TDBEdit;
    tsSlogan: TDBEdit;
    tsDireccion3: TDBEdit;
    tsDireccion2: TDBEdit;
    tsDireccion1: TDBEdit;
    tsRfc: TDBEdit;
    tsNombreCorto: TDBEdit;
    tsNombre: TDBEdit;
    GroupBox12: TGroupBox;
    tsReportesCIA: TDBEdit;
    AdvGroupBox2: TAdvGroupBox;
    bImagen: TImage;
    NxTabSheet2: TNxTabSheet;
    AdvGroupBox3: TAdvGroupBox;
    AdvGroupBox4: TAdvGroupBox;
    Label110: TLabel;
    Label61: TLabel;
    Label38: TLabel;
    Label36: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    dbExplosion: TDBComboBox;
    tsIdAnexo: TDBEdit;
    ttxtMaterialAutomatico: TDBEdit;
    ttxtValidaMaterial: TDBEdit;
    tsDevolucion: TDBEdit;
    tsMedida: TDBEdit;
    tsClaveDevolucion: TDBEdit;
    NxTabSheet3: TNxTabSheet;
    AdvGroupBox6: TAdvGroupBox;
    NxTabSheet4: TNxTabSheet;
    NxTabSheet5: TNxTabSheet;
    NxTabSheet6: TNxTabSheet;
    AdvPanel1: TAdvPanel;
    AdvGroupBox7: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tcStatusTerminada: TDBEdit;
    tcStatusProceso: TDBEdit;
    tcStatusSuspendida: TDBEdit;
    Label3: TLabel;
    Label42: TLabel;
    tsOrdenExtraordinaria: TDBEdit;
    AdvGroupBox8: TAdvGroupBox;
    Label18: TLabel;
    tsTipoAjusteCosto: TDBComboBox;
    tsTerminoPenalizacion: TDBComboBox;
    Label92: TLabel;
    Label90: TLabel;
    tsImporteRetencion: TDBComboBox;
    tsBaseCalculo: TDBComboBox;
    Label66: TLabel;
    Label89: TLabel;
    tdRetencion: TDBEdit;
    Label67: TLabel;
    tdPenaConvencional: TDBEdit;
    AdvGroupBox9: TAdvGroupBox;
    Label6: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    Label88: TLabel;
    Label25: TLabel;
    Label13: TLabel;
    tsIdFase: TDBEdit;
    tsTipoCIA: TDBEdit;
    tsTipoAlcance: TDBEdit;
    tsTipoOperacion: TDBEdit;
    tsIdEmbarcacion: TDBEdit;
    tsIdDepartamento: TDBEdit;
    AdvGroupBox10: TAdvGroupBox;
    Label75: TLabel;
    tiRedondeoMaterial: TDBComboBox;
    tiRedondeoEquipo: TDBComboBox;
    Label76: TLabel;
    Label78: TLabel;
    tiRedondeoPersonal: TDBComboBox;
    tiRedondeoEmbarcacion: TDBComboBox;
    Label79: TLabel;
    AdvGroupBox11: TAdvGroupBox;
    Label80: TLabel;
    tsRangoAjusteMenor: TDBEdit;
    tsRangoAjusteMayor: TDBEdit;
    Label81: TLabel;
    AdvGroupBox12: TAdvGroupBox;
    DBComboBox1: TDBComboBox;
    Label117: TLabel;
    BtnCambiarIni: TAdvGlowButton;
    AdvGroupBox13: TAdvGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    tsAvanceAnterior: TDBEdit;
    tsAvanceInicial: TDBEdit;
    AdvGroupBox14: TAdvGroupBox;
    AdvGroupBox15: TAdvGroupBox;
    Label31: TLabel;
    Label57: TLabel;
    tlDistribucion: TDBComboBox;
    tiMeses: TDBComboBox;
    Label40: TLabel;
    Label43: TLabel;
    Label84: TLabel;
    tsIsometricos: TDBEdit;
    tsGerencial: TDBEdit;
    tsReporteDiario: TDBEdit;
    Label59: TLabel;
    Label74: TLabel;
    Label85: TLabel;
    tsTipsInicial: TDBComboBox;
    tsFirmasElectronicas: TDBComboBox;
    tsTipoSeguridad: TDBComboBox;
    tlExporta: TDBCheckBox;
    AdvGroupBox16: TAdvGroupBox;
    Label115: TLabel;
    tsEstimacionesGenerales: TDBComboBox;
    AdvGroupBox17: TAdvGroupBox;
    Label111: TLabel;
    tsReporteBarco: TDBComboBox;
    AdvGroupBox18: TAdvGroupBox;
    Label102: TLabel;
    dbMailAutoriza: TDBComboBox;
    tiFirmasReportes: TDBComboBox;
    Label100: TLabel;
    AdvGroupBox19: TAdvGroupBox;
    Label68: TLabel;
    Label69: TLabel;
    tsFotografias: TDBComboBox;
    tlComentariosReporte: TDBComboBox;
    tlIncluyeGrafica: TDBComboBox;
    Label70: TLabel;
    Label93: TLabel;
    tlIncluyeAvanceContrato: TDBComboBox;
    tlIncluyeAvanceOrdenes: TDBComboBox;
    Label94: TLabel;
    AdvGroupBox20: TAdvGroupBox;
    Label60: TLabel;
    tsViewIsometrico: TDBComboBox;
    Label71: TLabel;
    tiFirmas: TDBComboBox;
    tsGeneradores: TDBComboBox;
    Label63: TLabel;
    Label101: TLabel;
    tsAnexo: TDBComboBox;
    tsGeneradoresBarco: TDBComboBox;
    Label108: TLabel;
    BtnAceptar: TAdvGlowButton;
    BtnCancelar: TAdvGlowButton;
    AdvGroupBox21: TAdvGroupBox;
    Label112: TLabel;
    chkFirma1: TCheckBox;
    chkFirma2: TCheckBox;
    chkFirma3: TCheckBox;
    mFirma3: TDBMemo;
    mFirma2: TDBMemo;
    mFirma1: TDBMemo;
    AdvGroupBox22: TAdvGroupBox;
    AdvGroupBox23: TAdvGroupBox;
    Label5: TLabel;
    tsTipoContrato: TDBComboBox;
    tsRangoEstimacion: TDBComboBox;
    Label37: TLabel;
    Label19: TLabel;
    tiIncremento: TDBComboBox;
    tsIdConvenio: TDBLookupComboBox;
    Label77: TLabel;
    Label35: TLabel;
    tlCalculoPonderado: TDBComboBox;
    dbPerforacion: TDBComboBox;
    Label95: TLabel;
    Label91: TLabel;
    tsTipoEstimacion: TDBComboBox;
    tsSeguridadGenerador: TDBComboBox;
    Label83: TLabel;
    Label8: TLabel;
    tsTipoGeneracion: TDBComboBox;
    tsBaseGeneracion: TDBComboBox;
    Label58: TLabel;
    Label39: TLabel;
    tlCalculaFecha: TDBComboBox;
    Label24: TLabel;
    tlAutomatico: TDBComboBox;
    tsDuracion: TDBComboBox;
    Label20: TLabel;
    tiLongActividad: TDBEdit;
    Label41: TLabel;
    AdvGroupBox24: TAdvGroupBox;
    Label23: TLabel;
    tsFormato: TDBEdit;
    tiConsecutivo: TDBEdit;
    Label28: TLabel;
    Label72: TLabel;
    tlImprimeExtraordinario: TDBComboBox;
    tsAvanceBitacora: TDBComboBox;
    Label46: TLabel;
    Label44: TLabel;
    tiReportesSinValid: TDBEdit;
    tsOrdenPersonal: TDBComboBox;
    tsOrdenPerEq: TLabel;
    Label82: TLabel;
    tsPartidaEfectiva: TDBComboBox;
    tsTipoPartida: TDBComboBox;
    Label47: TLabel;
    AdvGroupBox25: TAdvGroupBox;
    Label96: TLabel;
    dbMostrar: TDBComboBox;
    Label99: TLabel;
    tsImpresionPaquetes: TDBComboBox;
    AdvGroupBox26: TAdvGroupBox;
    AdvGroupBox27: TAdvGroupBox;
    Label22: TLabel;
    tiJLunes: TDBEdit;
    tiJMartes: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    tiJMiercoles: TDBEdit;
    tiJJueves: TDBEdit;
    Label50: TLabel;
    Label51: TLabel;
    tiJViernes: TDBEdit;
    tiJSabado: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    tiJDomingo: TDBEdit;
    AdvGroupBox28: TAdvGroupBox;
    Label45: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    tsFalta: TDBEdit;
    tsIdGuardia: TDBEdit;
    tlAsistencia: TDBComboBox;
    AdvGroupBox29: TAdvGroupBox;
    Label118: TLabel;
    CmbCalculaTM: TDBComboBox;
    AdvGroupBox30: TAdvGroupBox;
    Label114: TLabel;
    CmbValidaPersonal: TDBComboBox;
    AdvGroupBox31: TAdvGroupBox;
    tsEquipoSeguridad: TDBEdit;
    Label30: TLabel;
    Label7: TLabel;
    Label29: TLabel;
    tsClaveTierra: TDBEdit;
    tsClaveSeguridad: TDBEdit;
    Label65: TLabel;
    Label87: TLabel;
    Label98: TLabel;
    tsPersonalIndependiente: TDBEdit;
    tsImprimePEP: TDBComboBox;
    tsIdPernocta: TDBEdit;
    AdvGroupBox34: TAdvGroupBox;
    Label52: TLabel;
    ChkCmbFormatos: TJvCheckedComboBox;
    Label62: TLabel;
    AdvGroupBox35: TAdvGroupBox;
    Label64: TLabel;
    tsAplicaPassword: TDBComboBox;
    tsPasswordPdf: TDBEdit;
    AdvGroupBox33: TAdvGroupBox;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label109: TLabel;
    sSimbolo: TDBEdit;
    dbCargo2: TDBEdit;
    dbCargo1: TDBEdit;
    dbUtilidad: TDBEdit;
    dbFinanciamiento: TDBEdit;
    dbIndirecto: TDBEdit;
    Label97: TLabel;
    sCiudad: TDBEdit;
    ds_cliente: TDataSource;
    zClientes: TZQuery;
    Label113: TLabel;
    tsRepresentante: TDBEdit;
    dbRbtnG1: TDBAdvOfficeRadioGroup;
    AdvGroupBox5: TAdvGroupBox;
    Label116: TLabel;
    DBComboBox2: TDBComboBox;
    AdvGroupBox32: TAdvGroupBox;
    Button1: TButton;
    AdvGroupBox36: TAdvGroupBox;
    cmdRecargarMenu: TButton;
    Label119: TLabel;
    DBComboBox3: TDBComboBox;
    Label120: TLabel;
    tsValidaAvisos: TDBComboBox;
    Label121: TLabel;
    tsValidaAvisosGen: TDBComboBox;
    Label122: TLabel;
    tsGalon: TDBEdit;
    frConfiguracion: TfrxDBDataset;
    configuracionsContrato: TStringField;
    configuracionsNombre: TStringField;
    configuracionsNombreCorto: TStringField;
    configuracionsRfc: TStringField;
    configuracionsDireccion1: TStringField;
    configuracionsDireccion2: TStringField;
    configuracionsDireccion3: TStringField;
    configuracionsCiudad: TStringField;
    configuracionsSlogan: TStringField;
    configuracionsPiePagina: TStringField;
    configuracionbImagen: TBlobField;
    configuracionsTelefono: TStringField;
    configuracionsFax: TStringField;
    configuracionsEmail: TStringField;
    configuracionsRepresentanteObra: TStringField;
    configuracionsWeb: TStringField;
    configuracionlLicencia: TStringField;
    configuracioncStatusProceso: TStringField;
    configuracioncStatusSuspendida: TStringField;
    configuracioncStatusTerminada: TStringField;
    configuracionsIdDepartamento: TStringField;
    configuracionsIdEmbarcacion: TStringField;
    configuracioniRedondeoMaterial: TIntegerField;
    configuracioniRedondeoEquipo: TIntegerField;
    configuracioniRedondeoPersonal: TIntegerField;
    configuracioniRedondeoEmbarcacion: TIntegerField;
    configuracionsRangoAjusteMenor: TStringField;
    configuracionsRangoAjusteMayor: TStringField;
    configuracionsTipoContrato: TStringField;
    configuracionsRangoEstimacion: TStringField;
    configuracionsTipoPartida: TStringField;
    configuracionlCalculaFecha: TStringField;
    configuracionsTipoOperacion: TStringField;
    configuracionsTipoAlcance: TStringField;
    configuracionsTipoCIA: TStringField;
    configuracionlAutomatico: TStringField;
    configuracioniIncremento: TIntegerField;
    configuracionsDuracion: TStringField;
    configuracionsReporteDiario: TStringField;
    configuracionsGerencial: TStringField;
    configuracionsIsometricos: TStringField;
    configuracionsHost: TStringField;
    configuracionsFolder: TStringField;
    configuracionsViewIsometrico: TStringField;
    configuracioniFirmas: TStringField;
    configuracionlExporta: TStringField;
    configuracionsTipoSeguridad: TStringField;
    configuracionsFirmasElectronicas: TStringField;
    configuracionsTipsInicial: TStringField;
    configuracionlComentariosReporte: TStringField;
    configuracionsFotografias: TStringField;
    configuracionlIncluyeGrafica: TStringField;
    configuracionlIncluyeAvanceOrdenes: TStringField;
    configuracionlIncluyeAvanceContrato: TStringField;
    configuracioniMeses: TIntegerField;
    configuracionlDistribucion: TStringField;
    configuracionsFasePrincipal: TStringField;
    configuraciondRetencion: TFloatField;
    configuraciondPenaConvencional: TFloatField;
    configuracionsBaseCalculo: TStringField;
    configuracionsImporteRetencion: TStringField;
    configuracionsTipoAjusteCosto: TStringField;
    configuracionsAvanceInicial: TStringField;
    configuracionsAvanceAnterior: TStringField;
    configuracionsFormato: TStringField;
    configuracioniConsecutivo: TIntegerField;
    configuracionlImprimeExtraordinario: TStringField;
    configuracionsAvanceBitacora: TStringField;
    configuracionsClaveTierra: TStringField;
    configuracionsClaveSeguridad: TStringField;
    configuracionsIdPernocta: TStringField;
    configuracionsImprimePEP: TStringField;
    configuracionsImpresionPaquetes: TStringField;
    configuracionsOrdenExtraordinaria: TStringField;
    configuracionsIdFase: TStringField;
    configuracioniLongActividad: TIntegerField;
    configuracionlCalculoPonderado: TStringField;
    configuracionsBaseGeneracion: TStringField;
    configuracionsTipoGeneracion: TStringField;
    configuracionsSeguridadGenerador: TStringField;
    configuracionsTipoEstimacion: TStringField;
    configuracionsTerminoPenalizacion: TStringField;
    configuracionsIdConvenio: TStringField;
    configuracionsPartidaEfectiva: TStringField;
    configuracionsOrdenPerEq: TStringField;
    configuracioniReportesSinValid: TIntegerField;
    configuracionsClaveDevolucion: TStringField;
    configuracionsDevolucion: TStringField;
    configuracionsMedida: TStringField;
    configuraciontxtValidaMaterial: TStringField;
    configuraciontxtMaterialAutomatico: TStringField;
    configuracionsIdAnexo: TStringField;
    configuracionsPaquete: TStringField;
    configuracionsProteccion: TStringField;
    configuracioniJLunes: TFloatField;
    configuracioniJMartes: TFloatField;
    configuracioniJMiercoles: TFloatField;
    configuracioniJJueves: TFloatField;
    configuracioniJViernes: TFloatField;
    configuracioniJSabado: TFloatField;
    configuracioniJDomingo: TFloatField;
    configuracionlAsistencia: TStringField;
    configuracionsIdGuardia: TStringField;
    configuracionsFalta: TStringField;
    configuracionsEquipoSeguridad: TStringField;
    configuracionsPersonalIndependiente: TStringField;
    configuracionsCampPerf: TStringField;
    configuracionsMostrarAvances: TStringField;
    configuracionlProrrateo: TStringField;
    configuracionsGenDesp: TStringField;
    configuracionsAnexos: TStringField;
    configuracionsFormatoCliente: TStringField;
    configuracioniFirmasReportes: TStringField;
    configuracioniFirmasGeneradores: TStringField;
    configuracioniFirmasBarco: TStringField;
    configuracioniFirmasEstimaciones: TStringField;
    configuracionsLeyenda1: TStringField;
    configuracionsLeyenda2: TStringField;
    configuracionsLeyenda3: TStringField;
    configuraciondCostoDirecto: TFloatField;
    configuraciondCostoIndirectos: TFloatField;
    configuraciondFinanciamiento: TFloatField;
    configuraciondUtilidad: TFloatField;
    configuraciondCargosAdicionales: TFloatField;
    configuraciondCargosAdicionales2: TFloatField;
    configuraciondCargosAdicionales3: TFloatField;
    configuracionlCalculaPU: TStringField;
    configuracionsSimbolo: TStringField;
    configuracionsExplosion: TStringField;
    configuracionsReportesCIA: TStringField;
    configuracionlEnviaCorreo: TStringField;
    configuracionlValidaBarco: TStringField;
    configuracionlTiempoMuertoTurnos: TStringField;
    configuracionlHistorialPartidas: TStringField;
    configuracionlBaseRelacional: TStringField;
    configuracionsFormatos: TStringField;
    configuracionsPasswordPdf: TStringField;
    configuracionsAplicaPassword: TStringField;
    configuracionlAplicaPu: TStringField;
    configuraciondPorcentajeHerramienta: TFloatField;
    configuracionsRepresentante: TStringField;
    configuracionsAux1: TStringField;
    configuracionsAux2: TStringField;
    configuracionlOrdenaItem: TStringField;
    configuracionlSeguridadVigencia: TStringField;
    configuracionlImprimeNotasGerenciales: TStringField;
    configuracionlAplicaAvisos: TStringField;
    configuracionlAplicaAvisosGen: TStringField;
    configuraciondGalones: TFloatField;
    configuracioniEjercicio: TIntegerField;
    configuracionlCompanias: TStringField;
    configuracioneIva: TStringField;
    configuracionsPresidente: TStringField;
    configuracionsTitPresidente: TStringField;
    configuracionsTesorerom: TStringField;
    configuracionsTitTesorerom: TStringField;
    //AdvGroupBox5: TAdvGroupBox;
    //Label116: TLabel;
    //DBComboBox2: TDBComboBox;
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tsRfcKeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion1KeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion2KeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion3KeyPress(Sender: TObject; var Key: Char);
    procedure tsSloganKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonosKeyPress(Sender: TObject; var Key: Char);
    procedure tsFaxKeyPress(Sender: TObject; var Key: Char);
    procedure tsWebKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure tcStatusProcesoKeyPress(Sender: TObject; var Key: Char);
    procedure tcStatusTerminadaKeyPress(Sender: TObject; var Key: Char);
    procedure tcStatusSuspendidaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoContratoKeyPress(Sender: TObject; var Key: Char);
    procedure tiIncrementoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDuracionKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoOperacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsFormatoKeyPress(Sender: TObject; var Key: Char);
    procedure tlAutomaticoKeyPress(Sender: TObject; var Key: Char);
    procedure tsAvanceInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tsAvanceAnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure tiConsecutivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsClaveTierraKeyPress(Sender: TObject; var Key: Char);
    procedure tsClaveSeguridadKeyPress(Sender: TObject; var Key: Char);
    procedure tsClaveDevolucionKeyPress(Sender: TObject; var Key: Char);
    procedure tsDevolucionKeyPress(Sender: TObject; var Key: Char);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tlCalculoPonderadoKeyPress(Sender: TObject; var Key: Char);
    procedure ttxtValidaMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure tsRangoEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdDepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure tlTopeKeyPress(Sender: TObject; var Key: Char);
    procedure ttxtMaterialAutomaticoKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsTipoContratoExit(Sender: TObject);
    procedure tsTiempoCIAKeyPress(Sender: TObject; var Key: Char);
    procedure tsArchivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsReporteDiarioKeyPress(Sender: TObject; var Key: Char);
    procedure PanelPrincipalClick(Sender: TObject);
    procedure tiLongActividadKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure tsAvancesDiariosKeyPress(Sender: TObject; var Key: Char);
    procedure tsAfectacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoPartidaKeyPress(Sender: TObject; var Key: Char);
    procedure tiJLunesKeyPress(Sender: TObject; var Key: Char);
    procedure tiJMartesKeyPress(Sender: TObject; var Key: Char);
    procedure tiJMiercolesKeyPress(Sender: TObject; var Key: Char);
    procedure tiJJuevesKeyPress(Sender: TObject; var Key: Char);
    procedure tiJViernesKeyPress(Sender: TObject; var Key: Char);
    procedure tiJSabadoKeyPress(Sender: TObject; var Key: Char);
    procedure tiJDomingoKeyPress(Sender: TObject; var Key: Char);
    procedure tlCalculaFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tlAsistenciaExit(Sender: TObject);
    procedure tsIdGuardiaKeyPress(Sender: TObject; var Key: Char);
    procedure tsFaltaKeyPress(Sender: TObject; var Key: Char);
    procedure tlAsistenciaKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoReporteKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreCortoKeyPress(Sender: TObject; var Key: Char);
    procedure tsEquipoSeguridadKeyPress(Sender: TObject; var Key: Char);
    procedure tsFinancieroKeyPress(Sender: TObject; var Key: Char);
    procedure tiMesesKeyPress(Sender: TObject; var Key: Char);
    procedure tlDistribucionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdAlmacenKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure tlAsistenciaEnter(Sender: TObject);
    procedure tsTipoContratoEnter(Sender: TObject);
    procedure tsRangoEstimacionEnter(Sender: TObject);
    procedure tsRangoEstimacionExit(Sender: TObject);
    procedure tlCalculoPonderadoEnter(Sender: TObject);
    procedure tlCalculoPonderadoExit(Sender: TObject);
    procedure tlAutomaticoEnter(Sender: TObject);
    procedure tlAutomaticoExit(Sender: TObject);
    procedure tiIncrementoEnter(Sender: TObject);
    procedure tiIncrementoExit(Sender: TObject);
    procedure tiLongActividadEnter(Sender: TObject);
    procedure tiLongActividadExit(Sender: TObject);
    procedure tsDuracionEnter(Sender: TObject);
    procedure tsDuracionExit(Sender: TObject);
    procedure tlCalculaFechaEnter(Sender: TObject);
    procedure tlCalculaFechaExit(Sender: TObject);
    procedure tsTipoPartidaEnter(Sender: TObject);
    procedure tsTipoPartidaExit(Sender: TObject);
    procedure tlImprimeExtraordinarioKeyPress(Sender: TObject;
      var Key: Char);
    procedure tlImprimeExtraordinarioEnter(Sender: TObject);
    procedure tlImprimeExtraordinarioExit(Sender: TObject);
    procedure tsOrdenExtraordinariaKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsCalidadKeyPress(Sender: TObject; var Key: Char);
    procedure bImagenClick(Sender: TObject);
    procedure tsIdFaseKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdConvenioEnter(Sender: TObject);
    procedure tsIdConvenioExit(Sender: TObject);
    procedure tsIdConvenioKeyPress(Sender: TObject; var Key: Char);
    procedure tiRedondeoMaterialEnter(Sender: TObject);
    procedure tiRedondeoMaterialExit(Sender: TObject);
    procedure tiRedondeoMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure tiRedondeoEquipoEnter(Sender: TObject);
    procedure tiRedondeoEquipoExit(Sender: TObject);
    procedure tiRedondeoEquipoKeyPress(Sender: TObject; var Key: Char);
    procedure tiRedondeoPersonalEnter(Sender: TObject);
    procedure tiRedondeoPersonalExit(Sender: TObject);
    procedure tiRedondeoPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tiRedondeoEmbarcacionEnter(Sender: TObject);
    procedure tiRedondeoEmbarcacionExit(Sender: TObject);
    procedure tiRedondeoEmbarcacionKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsRangoAjusteMenorKeyPress(Sender: TObject; var Key: Char);
    procedure tsRangoAjusteMayorKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoCIAKeyPress(Sender: TObject; var Key: Char);
    procedure tsPartidaEfectivaKeyPress(Sender: TObject; var Key: Char);
    procedure tsPartidaEfectivaEnter(Sender: TObject);
    procedure tsPartidaEfectivaExit(Sender: TObject);
    procedure tsIsometricosKeyPress(Sender: TObject; var Key: Char);
    procedure tsPiePaginaKeyPress(Sender: TObject; var Key: Char);
    procedure tsImprimePEPKeyPress(Sender: TObject; var Key: Char);
    procedure tsImprimePEPEnter(Sender: TObject);
    procedure tsImprimePEPExit(Sender: TObject);
    procedure tsTipoAlcanceKeyPress(Sender: TObject; var Key: Char);
    procedure tdRetencionKeyPress(Sender: TObject; var Key: Char);
    procedure tsBaseCalculoEnter(Sender: TObject);
    procedure tsBaseCalculoExit(Sender: TObject);
    procedure tsBaseCalculoKeyPress(Sender: TObject; var Key: Char);
    procedure tsAvanceBitacoraEnter(Sender: TObject);
    procedure tsAvanceBitacoraExit(Sender: TObject);
    procedure tsAvanceBitacoraKeyPress(Sender: TObject; var Key: Char);
    procedure tsGerencialKeyPress(Sender: TObject; var Key: Char);
    procedure tdPenaConvencionalKeyPress(Sender: TObject; var Key: Char);
    procedure tsOrdenPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tsOrdenPersonalEnter(Sender: TObject);
    procedure tsOrdenPersonalExit(Sender: TObject);
    procedure tsTipoAjusteCostoEnter(Sender: TObject);
    procedure tsTipoAjusteCostoExit(Sender: TObject);
    procedure tsTipoAjusteCostoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoGeneracionEnter(Sender: TObject);
    procedure tsTipoGeneracionExit(Sender: TObject);
    procedure tsTipoGeneracionKeyPress(Sender: TObject; var Key: Char);
    procedure tiReportesSinValidKeyPress(Sender: TObject; var Key: Char);
    procedure tsBaseGeneracionEnter(Sender: TObject);
    procedure tsBaseGeneracionExit(Sender: TObject);
    procedure tsBaseGeneracionKeyPress(Sender: TObject; var Key: Char);
    procedure ColorEntrada(Sender: TObject);
    procedure ColorSalida(Sender: TObject);
    procedure tsTipoSeguridadKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoSeguridadEnter(Sender: TObject);
    procedure tsTipoSeguridadExit(Sender: TObject);
    procedure tiMesesEnter(Sender: TObject);
    procedure tiMesesExit(Sender: TObject);
    procedure tlDistribucionEnter(Sender: TObject);
    procedure tlDistribucionExit(Sender: TObject);
    procedure tsViewIsometricoEnter(Sender: TObject);
    procedure tsViewIsometricoExit(Sender: TObject);
    procedure tsViewIsometricoKeyPress(Sender: TObject; var Key: Char);
    procedure tsFotografiasEnter(Sender: TObject);
    procedure tsFotografiasExit(Sender: TObject);
    procedure tsFotografiasKeyPress(Sender: TObject; var Key: Char);
    procedure tlComentariosReporteEnter(Sender: TObject);
    procedure tlComentariosReporteExit(Sender: TObject);
    procedure tlComentariosReporteKeyPress(Sender: TObject; var Key: Char);
    procedure tlIncluyeGraficaEnter(Sender: TObject);
    procedure tlIncluyeGraficaExit(Sender: TObject);
    procedure tlIncluyeGraficaKeyPress(Sender: TObject; var Key: Char);
    procedure tiFirmasEnter(Sender: TObject);
    procedure tiFirmasExit(Sender: TObject);
    procedure tiFirmasKeyPress(Sender: TObject; var Key: Char);
    procedure tsFirmasElectronicasEnter(Sender: TObject);
    procedure tsFirmasElectronicasExit(Sender: TObject);
    procedure tsFirmasElectronicasKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipsInicialEnter(Sender: TObject);
    procedure tsTipsInicialExit(Sender: TObject);
    procedure tsTipsInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tsImporteRetencionKeyPress(Sender: TObject; var Key: Char);
    procedure tsImporteRetencionEnter(Sender: TObject);
    procedure tsImporteRetencionExit(Sender: TObject);
    procedure tsTipoEstimacionEnter(Sender: TObject);
    procedure tsTipoEstimacionExit(Sender: TObject);
    procedure tsTipoEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsTerminoPenalizacionKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsTerminoPenalizacionEnter(Sender: TObject);
    procedure tsTerminoPenalizacionExit(Sender: TObject);
    procedure tlIncluyeAvanceOrdenesKeyPress(Sender: TObject; var Key: Char);
    procedure tlIncluyeAvanceOrdenesEnter(Sender: TObject);
    procedure tlIncluyeAvanceOrdenesExit(Sender: TObject);
    procedure tlIncluyeAvanceContratoEnter(Sender: TObject);
    procedure tlIncluyeAvanceContratoExit(Sender: TObject);
    procedure tlIncluyeAvanceContratoKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsSeguridadGeneradorKeyPress(Sender: TObject; var Key: Char);
    procedure tsSeguridadGeneradorEnter(Sender: TObject);
    procedure tsSeguridadGeneradorExit(Sender: TObject);
//    procedure sScrollBar1Change(Sender: TObject);
//    procedure sScrollBar2Change(Sender: TObject);
//    procedure sScrollBar1KeyUp(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
//    procedure sScrollBar1MouseUp(Sender: TObject; Button: TMouseButton;
//      Shift: TShiftState; X, Y: Integer);
//    procedure sScrollBar2MouseUp(Sender: TObject; Button: TMouseButton;
//     Shift: TShiftState; X, Y: Integer);
//    procedure sScrollBar2KeyUp(Sender: TObject; var Key: Word;
//     Shift: TShiftState);
    procedure dbPerforacionExit(Sender: TObject);
    procedure dbPerforacionEnter(Sender: TObject);
    procedure dbMostrarEnter(Sender: TObject);
    procedure dbMostrarExit(Sender: TObject);
    procedure ListSkinClick(Sender: TObject);
    procedure chkSkinClick(Sender: TObject);
    procedure tsFasesMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure dbMostrarKeyPress(Sender: TObject; var Key: Char);
    procedure tsImpresionPaquetesEnter(Sender: TObject);
    procedure tsImpresionPaquetesExit(Sender: TObject);
    procedure tsImpresionPaquetesKeyPress(Sender: TObject; var Key: Char);
    procedure dbCostoDirectoKeyPress(Sender: TObject; var Key: Char);
    procedure dbIndirectoExit(Sender: TObject);
    procedure dbIndirectoEnter(Sender: TObject);
    procedure dbFinanciamientoEnter(Sender: TObject);
    procedure dbFinanciamientoExit(Sender: TObject);
    procedure dbUtilidadExit(Sender: TObject);
    procedure dbUtilidadEnter(Sender: TObject);
    procedure dbCargo1Enter(Sender: TObject);
    procedure dbCargo1Exit(Sender: TObject);
    procedure dbCargo2Enter(Sender: TObject);
    procedure dbCargo2Exit(Sender: TObject);
    procedure dbIndirectoKeyPress(Sender: TObject; var Key: Char);
    procedure dbFinanciamientoKeyPress(Sender: TObject; var Key: Char);
    procedure dbUtilidadKeyPress(Sender: TObject; var Key: Char);
    procedure dbCargo1KeyPress(Sender: TObject; var Key: Char);
    procedure chkFirma1Click(Sender: TObject);
    procedure chkFirma2Click(Sender: TObject);
    procedure chkFirma3Click(Sender: TObject);
    procedure tsGeneradoresEnter(Sender: TObject);
    procedure tsGeneradoresExit(Sender: TObject);
    procedure tsAnexoEnter(Sender: TObject);
    procedure tsAnexoExit(Sender: TObject);
    procedure tsGeneradoresBarcoEnter(Sender: TObject);
    procedure tsGeneradoresBarcoExit(Sender: TObject);
    procedure dbMailAutorizaEnter(Sender: TObject);
    procedure dbMailAutorizaExit(Sender: TObject);
    procedure tiFirmasReportesEnter(Sender: TObject);
    procedure tiFirmasReportesExit(Sender: TObject);
    procedure tsReporteBarcoEnter(Sender: TObject);
    procedure tsReporteBarcoExit(Sender: TObject);
    procedure tsPersonalIndependienteKeyPress(Sender: TObject; var Key: Char);
    procedure cmbFormatoCKeyPress(Sender: TObject; var Key: Char);
    procedure tsReportesCIAKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure CmbCalculaTMKeyPress(Sender: TObject; var Key: Char);
    procedure CmbCalculaTMEnter(Sender: TObject);
    procedure CmbCalculaTMExit(Sender: TObject);
    procedure dbExplosionKeyPress(Sender: TObject; var Key: Char);
    procedure dbExplosionEnter(Sender: TObject);
    procedure dbExplosionExit(Sender: TObject);
    procedure tsEstimacionesGeneralesEnter(Sender: TObject);
    procedure tsEstimacionesGeneralesExit(Sender: TObject);
    procedure mFirma3Enter(Sender: TObject);
    procedure mFirma3Exit(Sender: TObject);
    procedure tlExportaKeyPress(Sender: TObject; var Key: Char);
    procedure tsGeneradoresKeyPress(Sender: TObject; var Key: Char);
    procedure tsAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tsGeneradoresBarcoKeyPress(Sender: TObject; var Key: Char);
    procedure dbMailAutorizaKeyPress(Sender: TObject; var Key: Char);
    procedure tiFirmasReportesKeyPress(Sender: TObject; var Key: Char);
    procedure tsReporteBarcoKeyPress(Sender: TObject; var Key: Char);
    procedure tsEstimacionesGeneralesKeyPress(Sender: TObject; var Key: Char);
    procedure chkFirma2KeyPress(Sender: TObject; var Key: Char);
    procedure chkFirma3KeyPress(Sender: TObject; var Key: Char);
    procedure mFirma3KeyPress(Sender: TObject; var Key: Char);
    procedure chkFirma1KeyPress(Sender: TObject; var Key: Char);
    procedure dbCargo2KeyPress(Sender: TObject; var Key: Char);
    procedure sSimboloKeyPress(Sender: TObject; var Key: Char);
    procedure sSimboloEnter(Sender: TObject);
    procedure sSimboloExit(Sender: TObject);
    procedure dbPerforacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BtnCambiarIniClick(Sender: TObject);
    procedure BtnCambiarIniMouseEnter(Sender: TObject);
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure InicializarCheckCombo(ComboChecked: TJvCheckedComboBox);
    procedure CargarCheckCombo(Cadena: string; ComboChecked: TJvCheckedComboBox);
    function NumItems(const cadena:string;const separador:char):integer;
    function TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
    procedure tdRetencionChange(Sender: TObject);
    procedure tdPenaConvencionalChange(Sender: TObject);
    procedure configuracionsPasswordPdfGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure configuracionsPasswordPdfSetText(Sender: TField;
      const Text: string);
    procedure configuraciondPenaConvencionalSetText(Sender: TField;
      const Text: string);
    procedure configuracioniLongActividadSetText(Sender: TField;
      const Text: string);
    procedure configuracioniConsecutivoSetText(Sender: TField;
      const Text: string);
    procedure configuracioniReportesSinValidSetText(Sender: TField;
      const Text: string);
    procedure configuracioniJLunesSetText(Sender: TField; const Text: string);
    procedure configuraciondRetencionValidate(Sender: TField);
    procedure configuracionBeforePost(DataSet: TDataSet);
    procedure dbIndirectoChange(Sender: TObject);
    procedure configuraciondCostoIndirectosSetText(Sender: TField;
      const Text: string);
    procedure dbFinanciamientoChange(Sender: TObject);
    procedure dbUtilidadChange(Sender: TObject);
    procedure configuraciondFinanciamientoSetText(Sender: TField;
      const Text: string);
    procedure configuraciondUtilidadSetText(Sender: TField; const Text: string);
    procedure dbCargo1Change(Sender: TObject);
    procedure dbCargo2Change(Sender: TObject);
    procedure configuraciondCargosAdicionalesSetText(Sender: TField;
      const Text: string);
    procedure configuraciondCargosAdicionales2SetText(Sender: TField;
      const Text: string);
    procedure configuraciondRetencionSetText(Sender: TField;
      const Text: string);
    procedure tiConsecutivoChange(Sender: TObject);
    procedure tiReportesSinValidChange(Sender: TObject);
    procedure tiJLunesChange(Sender: TObject);
    procedure tiJMartesChange(Sender: TObject);
    procedure configuracioniJMartesSetText(Sender: TField; const Text: string);
    procedure tiJMiercolesChange(Sender: TObject);
    procedure configuracioniJMiercolesSetText(Sender: TField;
      const Text: string);
    procedure tiJJuevesChange(Sender: TObject);
    procedure configuracioniJJuevesSetText(Sender: TField; const Text: string);
    procedure tiJViernesChange(Sender: TObject);
    procedure configuracioniJViernesSetText(Sender: TField; const Text: string);
    procedure tiJSabadoChange(Sender: TObject);
    procedure configuracioniJSabadoSetText(Sender: TField; const Text: string);
    procedure tiJDomingoChange(Sender: TObject);
    procedure configuracioniJDomingoSetText(Sender: TField; const Text: string);
    procedure tiLongActividadChange(Sender: TObject);
    procedure sCiudadEnter(Sender: TObject);
    procedure sCiudadExit(Sender: TObject);
    procedure sCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure tsEmailKeyPress(Sender: TObject; var Key: Char);
    procedure tsRepresentanteEnter(Sender: TObject);
    procedure tsRepresentanteExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cmdRecargarMenuClick(Sender: TObject);
    procedure VerificaMenu(Menu: TMenuItem; Nod: TTreeNode; guardar: Boolean);
    procedure tsValidaAvisosKeyPress(Sender: TObject; var Key: Char);
    procedure tsValidaAvisosEnter(Sender: TObject);
    procedure tsValidaAvisosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetup: TfrmSetup;
  //Variables para la actualizacon de Calculos.. P.U.
  Costo_directo,
  Costo_Indirecto,
  Costo_financiamiento,
  Costo_utilidad,
  Costo_CargoAdic,
  Costo_CargoAdic2,
  Costo_CargoAdic3  : double;
  PasswordPdf: String;
implementation

uses frxDsgnIntf;

{$R *.dfm}

procedure TfrmSetup.InicializarCheckCombo(ComboChecked: TJvCheckedComboBox);
var
  i:integer;
  error:boolean;
begin
  error:=false;
  comboChecked.Items.Clear;
  for i := 0 to frxExportFilters.Count - 1 do
  begin
    if frxExportFilters[i].Filter = frxDotMatrixExport then
      continue;
    ComboChecked.Items.Add(TfrxCustomExportFilter(frxExportFilters[i].Filter).GetDescription);
  end;

end;

procedure TfrmSetup.CargarCheckCombo(Cadena: string; ComboChecked: TJvCheckedComboBox);
var
   recorrido:integer;
   Item:string;

begin
  if (NumItems(cadena,',')=0) and (length(trim(cadena))>0) then
  begin
    try
      ComboChecked.Checked[ComboChecked.Items.IndexOf(cadena)]:=true;
    except
      on e:exception do
        showmessage(e.Message + '  ' + e.ClassName);
      end;
  end
  else
  begin
    for recorrido := 1 to NumItems(cadena,',') do
    begin
      item:=TraerItem(cadena,',',recorrido);
      try
        ComboChecked.Checked[ComboChecked.Items.IndexOf(item)]:=true;
      except
        on e:exception do
          showmessage(e.Message + '  ' + e.ClassName);
      end;
    end;
  end;
end;

function TfrmSetup.NumItems(const cadena:string;const separador:char):integer;
var
   res,Npos:integer;
   salir:boolean;
   cadAux:string;
begin
     res:=0;
     salir:=false;
     cadAux:=cadena;
     while not salir do
     begin
          Npos:=pos(separador,cadAux);
          cadaux:=copy(cadaux,Npos+1,length(cadaux));
          if Npos<>0 then
             Inc(res)
          else
          begin
               if res<>0 then
                  inc(res);
              salir:=true;
          end;
     end;
     result:=res;
end;

function TfrmSetup.TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
var
   Item,CadAux:string;
   Npos,auxPos:integer;
   salir:boolean;
begin
     Item:='';
     cadAux:=cadena;
     salir:=false;
     auxPos:=0;
     while not salir do
     begin
          Npos:=pos(separador,cadaux);
          if Npos<>0 then
          begin
             item:=copy(cadAux,1,Npos-1);
             cadaux:=copy(cadaux,Npos+1,length(cadaux));
             inc(auxPos);
             if auxpos=posicion then
                salir:=true;
          end
          else
          begin
            inc(auxPos);
            if auxpos=posicion then
               item:=cadAux
            else item:='';
            Salir:=true;
          end;
     end;
     result:=item;
end;


procedure TfrmSetup.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsrfc.SetFocus
end;

procedure TfrmSetup.tsRfcKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsdireccion1.SetFocus
end;

procedure TfrmSetup.tsDireccion1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsdireccion2.SetFocus
end;

procedure TfrmSetup.tsDireccion2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsdireccion3.SetFocus
end;

procedure TfrmSetup.tsDireccion3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    sCiudad.SetFocus
end;

procedure TfrmSetup.tsSloganKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsPiePagina.SetFocus
end;

procedure TfrmSetup.tsTelefonosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tsTelefono,key) then
   key:=#0;

  if key = #13 then
    tsfax.SetFocus
end;

procedure TfrmSetup.tsFaxKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(tsFax,key) then
   key:=#0;
  if key = #13 then
    tsweb.SetFocus
end;

procedure TfrmSetup.tsWebKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsemail.SetFocus
end;

procedure TfrmSetup.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  fileSkin: TextFile;
  sSkin: string;
  i:integer;
begin
//{para el eskin}
//  if DirectoryExists(connection.sSkinManager1.SkinDirectory) then begin
//    connection.sSkinManager1.SkinDirectory := connection.sSkinManager1.SkinDirectory;
//    connection.sSkinManager1.GetSkinNames(ListSkin.Items);
//  end;
//     {seleccionar tema anterior usado}
//  if FileExists('fileSkin.dat') then
//  begin
//    AssignFile(fileSkin, 'fileSkin.dat');
//    Reset(fileSkin);
//    ReadLn(fileSkin, sSkin);
//    CloseFile(fileSkin);
//    if sSkin = '' then
//    begin
//      chkSkin.Checked := True;
//      lSkin.Caption := 'Tema Actual: Deshabilitado';
//    end
//    else
//    begin
//      chkSkin.Checked := False;
//      lSkin.Caption := 'Tema Actual: ' + sSkin;
//    end;

//  end;




  // If global_contrato = '' then
  // frmSeleccion.ShowModal ;
  if global_contrato <> '' then
  begin
    configuracion.Active := False;
    configuracion.Params.ParamByName('contrato').DataType := ftString;
    configuracion.Params.ParamByName('contrato').Value := global_contrato;
    configuracion.Open;

    convenios.Active := False;
    convenios.Params.ParamByName('contrato').DataType := ftString;
    convenios.Params.ParamByName('contrato').Value := global_contrato;
    convenios.Open;

    zClientes.Active := False;
    zClientes.Open;

    //PanelPrincipal.ItemIndex := 0;
    if configuracion.RecordCount > 0 then
    begin
      configuracion.Edit;
      BlobField := configuracion.FieldByName('bImagen');
      BS := configuracion.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
            bImagen.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      end
      else
        bImagen.Picture.LoadFromFile('');
    end
  end;
  //PanelPrincipal.Items[0].Selected := True;
 (* Almacen.Visible := False;
  Archivos.Visible := False;
  Formatos.Visible := False;
  Sistema.Visible := False;
  Compania.Visible := True;
  Personal.Visible := False;  *)


  NxPCSetUp.ActivePageIndex:=0;

  //Valores iniciales P.U..
  Costo_directo         := configuracion.FieldValues['dCostoDirecto'];
  Costo_Indirecto       := configuracion.FieldValues['dCostoIndirectos'];
  Costo_financiamiento  := configuracion.FieldValues['dFinanciamiento'];
  Costo_utilidad        := configuracion.FieldValues['dUtilidad'];
  Costo_CargoAdic       := configuracion.FieldValues['dCargosAdicionales'];
  Costo_CargoAdic2      := configuracion.FieldValues['dCargosAdicionales2'];
  Costo_CargoAdic3      := configuracion.FieldValues['dCargosAdicionales3'];

  {Activamos algunos campos}
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from usuarios where sIdUsuario =:Usuario and lRevisaBarco = "Si"');
  connection.QryBusca.ParamByName('Usuario').AsString := global_usuario;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
     CmbValidaPersonal.Enabled := True
  else
     CmbValidaPersonal.Enabled := False;
  InicializarCheckCombo(ChkCmbFormatos);
  CargarCheckCombo(configuracion.FieldbyName('sformatos').AsString,ChkCmbFormatos);

  if tsAplicaPassword.ItemIndex=2 then
tsPasswordPdf.Enabled:=false;
end;

procedure TfrmSetup.ListSkinClick(Sender: TObject);
var
  fileSkin: TextFile;
begin
  {salvar el tema}
  AssignFile(fileSkin, 'fileSkin.dat');
  ReWrite(fileSkin);
 // WriteLn(fileSkin, ListSkin.Items[ListSkin.ItemIndex]);
  CloseFile(fileSkin);
//  {usar el tema seleccionado}
//  connection.sSkinManager1.SkinName := ListSkin.Items[ListSkin.ItemIndex];
//  connection.sSkinManager1.Active := True;
//  lSkin.Caption := 'Tema Actual: ' + ListSkin.Items[ListSkin.ItemIndex];
end;

procedure TfrmSetup.mFirma3Enter(Sender: TObject);
begin
  mfirma3.color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.mFirma3Exit(Sender: TObject);
begin
  mfirma3.color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.mFirma3KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsfotografias.SetFocus
end;

procedure TfrmSetup.btnOkClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if configuracion.State = dsEdit then
  begin
    global_convenio := configuracion.FieldValues['sIdConvenio'];
    if OpenPicture.FileName <> '' then
    begin
      try
        BlobField := configuracion.FieldByName('bImagen');
        BS := configuracion.CreateBlobStream(BlobField, bmWrite);
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromFile(OpenPicture.FileName);
            Pic.SaveToStream(Bs);
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      except

      end
    end;
//    if tsAplicaPassword.Items.Names[2]='SI' then
//    tsPasswordPdf.Enabled:=true;
//    configuracion.FieldByName('sPasswordPdf').AsString:=Encripta(tsPasswordPdf.Text);
//
//    if tsAplicaPassword.Items.Names[3]='NO' then
//    tsPasswordPdf.Enabled:=false;
//    configuracion.FieldByName('sPasswordPdf').AsString:='';

    configuracion.FieldByName('sFormatos').AsString:=ChkCmbFormatos.Text;
    try
       configuracion.FieldByName('sIdProveedor').AsString := zClientes.FieldValues['sIdProveedor'];
    Except
    end;
    configuracion.Post;

  end;
  global_afectacion := configuracion.FieldValues['sPartidaEfectiva'];
  global_miReporte  := configuracion.FieldValues['sReportesCIA'];
  connection.configuracion.refresh;
  configuracion.Close;
  //close
end;

procedure TfrmSetup.Button1Click(Sender: TObject);
//var
//  IniTracer: TIniTracer;
begin
//  IniTracer := TIniTracer.create(self, 'SOFTWARE\INTELIGENT', 'INTELIGENT', 'INTELIGENT', tsReportesCia.Text);
//  MiArchivo := IniTracer.definirIni;
//  cmbserver.Hint := Miarchivo;
//
//  if MiArchivo = '' then begin
//    showmessiage('No hay archivo de configuración INI, por favor indique uno');
//    if IniTracer.cambiarIni = '' then
//    begin
//      showmessage('Archivo de configuracion no encontrado.');
//    end
//    else
//      showmessage('Es necesario volover a iniciar la aplicación para que el cambio de archivo de configuracion tenga efecto');
//  end;
//  IniTracer.Free;

end;

procedure TfrmSetup.chkFirma1Click(Sender: TObject);
begin
     chkFirma2.Checked := False;
     chkFirma3.Checked := False;
     mFirma1.Visible   := True;
     mFirma2.Visible   := False;
     mFirma3.Visible   := False;
end;

procedure TfrmSetup.chkFirma1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    chkfirma2.SetFocus
end;

procedure TfrmSetup.chkFirma2Click(Sender: TObject);
begin
     chkFirma1.Checked := False;
     chkFirma3.Checked := False;
     mFirma1.Visible   := False;
     mFirma2.Visible   := True;
     mFirma3.Visible   := False;
end;

procedure TfrmSetup.chkFirma2KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    chkfirma3.SetFocus
end;

procedure TfrmSetup.chkFirma3Click(Sender: TObject);
begin
     chkFirma1.Checked := False;
     chkFirma2.Checked := False;
     mFirma1.Visible   := False;
     mFirma2.Visible   := False;
     mFirma3.Visible   := True;
end;

procedure TfrmSetup.chkFirma3KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    mfirma3.SetFocus
end;

procedure TfrmSetup.chkSkinClick(Sender: TObject);
var
  fileSkin: TextFile;
begin
//  if chkSkin.Checked then
//  begin
//    {salvar el tema}
//    AssignFile(fileSkin, 'fileSkin.dat');
//    ReWrite(fileSkin);
//    CloseFile(fileSkin);
//  {usar el tema seleccionado}
//    connection.sSkinManager1.Active := False;
//    ListSkin.Enabled := False;
//    //connection.sSkinManager1.
//  end
//  else
//  begin
//  {salvar el tema}
//    AssignFile(fileSkin, 'fileSkin.dat');
//    ReWrite(fileSkin);
//    WriteLn(fileSkin, ListSkin.Items[1]);
//    CloseFile(fileSkin);
//  {usar el tema seleccionado}
//    connection.sSkinManager1.SkinName := ListSkin.Items[1];
//    connection.sSkinManager1.Active := True;
//    lSkin.Caption := 'Tema Actual: ' + ListSkin.Items[1];
//    ListSkin.Enabled := True;
//  end;

end;

procedure TfrmSetup.CmbCalculaTMEnter(Sender: TObject);
begin
  cmbcalculatm.Color:=Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.CmbCalculaTMExit(Sender: TObject);
begin
  cmbcalculatm.color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.CmbCalculaTMKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tlasistencia.SetFocus
end;

procedure TfrmSetup.cmbFormatoCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsreportescia.SetFocus
end;

procedure TfrmSetup.cmdRecargarMenuClick(Sender: TObject);
begin
 if MessageDlg('Se va a cargar de nuevo el catalogo de programas a traves del menu,' +
    'Realmente desea continuar?', mtInformation, [mbOk, mbCancel], 0) = mrOk then
  begin
    try
      VerificaMenu(frmInteligent.mInteligent.Items, nil, true);
      MessageDlg('Carga de menu terminada con exito!', mtInformation, [mbOk], 0)
    except
      on e: Exception do
      begin
        MessageDlg('Error: ' + E.Message, mtError, [mbOk], 0)
      end;
    end;
  end;
end;

procedure TfrmSetup.VerificaMenu(Menu: TMenuItem; Nod: TTreeNode; guardar: Boolean);
var
  i: Integer;
  Nodo: TTreeNode;
  qry: TZReadOnlyQuery;
  sdescripcion: string;
  smodulo: string;
begin
  qry := TZReadOnlyQuery.Create(Self);
  qry.Connection := Connection.zConnection;

    // Para cada elemento del menu

  for i := 0 to (Menu.Count - 1) do begin
      // Es un elemento correcto
    if not (Menu.Parent is TMenuItem) then begin
      sdescripcion := Menu.Items[i].Caption;
      smodulo := Menu.Items[i].Name;
      if guardar then
      begin
        if AnsiReplaceStr(sdescripcion, '&', '') <> '-' then
        begin
          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into programas (sIdIdioma, sIdPrograma,sDescripcion) values (:idioma, :modulo,:descripcion)' +
            ' on Duplicate Key update sDescripcion=:descripcion ');
          qry.Params.ParamByName('descripcion').Value := AnsiReplaceStr(sdescripcion, '&', '');
          qry.Params.ParamByName('modulo').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.Params.ParamByName('idioma').Value := global_idioma;
          qry.ExecSQL;

          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into gruposxprograma values(:grupo,:sIdPrograma,"Insercion Edicion Eliminacion Impresion","Si","Si","Si","Si","Archivo PDF,Tabla Excel (XML),Imagen JPEG") ' +
            ' on Duplicate Key update sIdPrograma=:sIdPrograma ');
          qry.Params.ParamByName('grupo').Value := 'INTEL-CODE';
          qry.Params.ParamByName('sIdPrograma').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.ExecSQL;

        end;
      end;
    end
    else begin
      sdescripcion := Menu.Items[i].Caption;
      smodulo := Menu.Items[i].Name;
      if guardar then
      begin
        if AnsiReplaceStr(sdescripcion, '&', '') <> '-' then
        begin
          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into programas (sIdIdioma, sIdPrograma,sDescripcion) values (:idioma, :modulo,:descripcion)' +
            ' on Duplicate Key update sDescripcion=:descripcion ');
          qry.Params.ParamByName('descripcion').Value := AnsiReplaceStr(sdescripcion, '&', '');
          qry.Params.ParamByName('modulo').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.Params.ParamByName('idioma').Value := global_idioma;
          qry.ExecSQL;

          qry.Active := false;
          qry.SQL.Clear;
          qry.SQL.Add('insert into gruposxprograma values(:grupo,:sIdPrograma,"Insercion Edicion Eliminacion Impresion","Si","Si","Si","Si","Archivo PDF,Tabla Excel (XML),Imagen JPEG") ' +
            ' on Duplicate Key update sIdPrograma=:sIdPrograma ');
          qry.Params.ParamByName('grupo').Value :=  'INTEL-CODE';
          qry.Params.ParamByName('sIdPrograma').Value := AnsiReplaceStr(smodulo, '&', '');
          qry.ExecSQL;
          
        end;
      end;
    end;
      // Llamada recursiva para los submenus
    if Menu.Items[i].Count > 0 then begin
      VerificaMenu(Menu.Items[i], nil, guardar);
    end;
  end;
  qry.Destroy;
end;
  //--------------------------------------------------------------------------


procedure TfrmSetup.BtnAceptarClick(Sender: TObject);
begin
  btnOkClick(Sender);
end;

procedure TfrmSetup.BtnCambiarIniClick(Sender: TObject);
var
  IniTracer:TIniTracer;
begin
  IniTracer:=TIniTracer.create(self,'SOFTWARE\INTELIGENT','INTELIGENT','INTELIGENT','cotemar');
  IniTracer.cambiarIni;
  IniTracer.Free;
end;

procedure TfrmSetup.BtnCambiarIniMouseEnter(Sender: TObject);
begin
  BtnCambiarIni.Hint:=global_archivoini;
end;

procedure TfrmSetup.BtnCancelarClick(Sender: TObject);
begin
  BtnCancelClick(Sender);
end;

procedure TfrmSetup.BtnCancelClick(Sender: TObject);
begin
  if configuracion.State = dsEdit then
    configuracion.Cancel;
  configuracion.Close;
  //close
end;


procedure TfrmSetup.tcStatusProcesoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tcStatusTerminada.SetFocus
end;

procedure TfrmSetup.tcStatusTerminadaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tcStatusSuspendida.SetFocus
end;

procedure TfrmSetup.tcStatusSuspendidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsOrdenExtraordinaria.SetFocus
end;

procedure TfrmSetup.tsIdEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipoOperacion.SetFocus
end;

procedure TfrmSetup.tsTipoContratoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsRangoEstimacion.SetFocus
end;

procedure TfrmSetup.tiIncrementoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdConvenio.SetFocus
end;

procedure TfrmSetup.tsDuracionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tlCalculaFecha.SetFocus
end;

procedure TfrmSetup.tsTipoOperacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipoAlcance.SetFocus
end;

procedure TfrmSetup.tsFormatoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tiConsecutivo.SetFocus
end;

procedure TfrmSetup.tlAutomaticoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsBaseGeneracion.SetFocus
end;

procedure TfrmSetup.tsAvanceInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsAvanceAnterior.SetFocus
end;

procedure TfrmSetup.tsAvanceAnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tcstatusproceso.SetFocus
end;
procedure TfrmSetup.tiConsecutivoChange(Sender: TObject);
begin
  tdbeditchangei(tiConsecutivo,'Consecutivo');
end;

procedure TfrmSetup.tiConsecutivoKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(tiConsecutivo,key) then
   key:=#0;
  if Key = #13 then
    tlImprimeExtraordinario.SetFocus
end;

procedure TfrmSetup.tsClaveTierraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsClaveSeguridad.SetFocus
end;

procedure TfrmSetup.tsClaveSeguridadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsEquipoSeguridad.SetFocus
end;

procedure TfrmSetup.tsClaveDevolucionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsDevolucion.SetFocus
end;

procedure TfrmSetup.tsDevolucionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsmedida.SetFocus
end;

procedure TfrmSetup.tsMedidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ttxtValidaMaterial.SetFocus
end;

procedure TfrmSetup.tlCalculoPonderadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    DBPERFORACION.SetFocus
end;

procedure TfrmSetup.ttxtValidaMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    ttxtMaterialAutomatico.SetFocus
end;

procedure TfrmSetup.tsRangoEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiIncremento.SetFocus
end;

procedure TfrmSetup.tsIdDepartamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdEmbarcacion.SetFocus
end;

procedure TfrmSetup.tlTopeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsClaveDevolucion.SetFocus
end;

procedure TfrmSetup.ttxtMaterialAutomaticoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdAnexo.SetFocus
end;

procedure TfrmSetup.tsTipoContratoExit(Sender: TObject);
begin
  tsTipoContrato.Color := Globales.Elemento('Color_Salida').AsInteger;
  if tsTipoContrato.Text = 'Tarifa Diaria' then
  begin
//        Configuracion.FieldValues ['sHoraInicio'] := '00:00' ;
//        Configuracion.FieldValues ['sHoraFinal'] := '00:00' ;
//        Configuracion.FieldValues ['lCalculoAvance'] := 'Dias' ;
//        Configuracion.FieldValues ['sFormato'] := '' ;
//        Configuracion.FieldValues ['iConsecutivo'] := 0 ;
//        Configuracion.FieldValues ['sClaveTierra'] := '' ;
//        Configuracion.FieldValues ['sClaveSeguridad'] := '' ;
//        Configuracion.FieldValues ['sAvanceInicial'] := '' ;
//        Configuracion.FieldValues ['sAvanceAnterior'] := '' ;
    tlCalculoPonderado.ReadOnly := True;
    tsFormato.ReadOnly := True;
    tiConsecutivo.ReadOnly := True;
    tsClaveTierra.ReadOnly := True;
    tsClaveSeguridad.ReadOnly := True;
    tsAvanceInicial.ReadOnly := True;
    tsAvanceAnterior.ReadOnly := True;
  end
  else
    if tsTipoContrato.Text = 'Precio Unitario' then
    begin
      tlCalculoPonderado.ReadOnly := False;
      tsFormato.ReadOnly := False;
      tiConsecutivo.ReadOnly := False;
      tsClaveTierra.ReadOnly := False;
      tsClaveSeguridad.ReadOnly := False;
      tsAvanceInicial.ReadOnly := False;
      tsAvanceAnterior.ReadOnly := False;
    end

end;

procedure TfrmSetup.tsTiempoCIAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsTipoOperacion.SetFocus
end;

procedure TfrmSetup.tsArchivoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsReporteDiario.SetFocus
end;

procedure TfrmSetup.tsReporteBarcoEnter(Sender: TObject);
begin
      tsReporteBarco.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsReporteBarcoExit(Sender: TObject);
begin
      tsReporteBarco.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsReporteBarcoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsestimacionesgenerales.SetFocus
end;

procedure TfrmSetup.tsReporteDiarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsGerencial.SetFocus
end;

procedure TfrmSetup.tsReportesCIAKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsnombrecorto.SetFocus
end;

procedure TfrmSetup.tsRepresentanteEnter(Sender: TObject);
begin
    tsRepresentante.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsRepresentanteExit(Sender: TObject);
begin
    tsRepresentante.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.PanelPrincipalClick(Sender: TObject);
begin
  //NxPCSetUp.ActivePageIndex:=PanelPrincipal.ItemIndex;
 { if PanelPrincipal.ItemIndex = 0 then
  begin
    Almacen.Visible := False;
    Archivos.Visible := False;
    Formatos.Visible := False;
    Sistema.Visible := False;
    Compania.Visible := True;
    Personal.Visible := False ;
    Financiamiento.Visible := False ;
  end;
  if PanelPrincipal.ItemIndex = 1 then
  begin
    Almacen.Visible := True;
    Archivos.Visible := False;
    Formatos.Visible := False;
    Sistema.Visible := False;
    Compania.Visible := False;
    Personal.Visible := False  ;
    Financiamiento.Visible := False ;
  end;
  if PanelPrincipal.ItemIndex = 2 then
  begin
    Almacen.Visible := False;
    Archivos.Visible := False;
    Formatos.Visible := True;
    Sistema.Visible := False;
    Compania.Visible := False;
    Personal.Visible := False   ;
    Financiamiento.Visible := False ;
  end;
  if PanelPrincipal.ItemIndex = 3 then
  begin
    Almacen.Visible := False;
    Archivos.Visible := True;
    Formatos.Visible := False;
    Sistema.Visible := False;
    Compania.Visible := False;
    Personal.Visible := False ;
    Financiamiento.Visible := False ;
  end;
  if PanelPrincipal.ItemIndex = 4 then
  begin
    Almacen.Visible := False;
    Archivos.Visible := False;
    Formatos.Visible := False;
    Sistema.Visible := True;
    Compania.Visible := False;
    Personal.Visible := False ;
    Financiamiento.Visible := False ;
  end;
  if PanelPrincipal.ItemIndex = 5 then
  begin
    Almacen.Visible        := False;
    Archivos.Visible       := False;
    Formatos.Visible       := False;
    Sistema.Visible        := False;
    Compania.Visible       := False;
    Personal.Visible       := True ;
    Financiamiento.Visible := False ;
  end;
  if PanelPrincipal.ItemIndex = 6 then
  begin
    Almacen.Visible        := False ;
    Archivos.Visible       := False ;
    Formatos.Visible       := False ;
    Sistema.Visible        := False ;
    Compania.Visible       := False ;
    Personal.Visible       := False ;
    Financiamiento.Visible := True ;
  end;     }

end;


procedure TfrmSetup.tiLongActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiLongActividad,key) then
   key:=#0;

  if Key = #13 then
    tsduracion.SetFocus;
end;

procedure TfrmSetup.FormActivate(Sender: TObject);
begin
  if tsTipoContrato.Text = 'Tarifa Diaria' then
  begin
    tlCalculoPonderado.ReadOnly := True;
    tsFormato.ReadOnly := True;
    tiConsecutivo.ReadOnly := True;
    tsClaveTierra.ReadOnly := True;
    tsClaveSeguridad.ReadOnly := True;
    tsAvanceInicial.ReadOnly := True;
    tsAvanceAnterior.ReadOnly := True;
  end
  else
    if tsTipoContrato.Text = 'Precio Unitario' then
    begin
      tlCalculoPonderado.ReadOnly := False;
      tsFormato.ReadOnly := False;
      tiConsecutivo.ReadOnly := False;
      tsClaveTierra.ReadOnly := False;
      tsClaveSeguridad.ReadOnly := False;
      tsAvanceInicial.ReadOnly := False;
      tsAvanceAnterior.ReadOnly := False;
    end
end;

procedure TfrmSetup.FormCreate(Sender: TObject);
var
  C: HCURSOR;
begin
  C := LoadCursor(0, IDC_HAND);
  if C <> 0 then Screen.Cursors[crHandPoint] := C;
    NxPCSetUp.ShowTabs := False;
end;

procedure TfrmSetup.tsAvancesDiariosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipoPartida.SetFocus
end;

procedure TfrmSetup.tsAfectacionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tlCalculoPonderado.SetFocus
end;

procedure TfrmSetup.tsAnexoEnter(Sender: TObject);
begin
    tsAnexo.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsAnexoExit(Sender: TObject);
begin
    tsAnexo.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsAnexoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsgeneradoresbarco.SetFocus
end;

procedure TfrmSetup.tsTipoPartidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPartidaEfectiva.SetFocus
end;

procedure TfrmSetup.tiJLunesChange(Sender: TObject);
begin
  tdbeditchangef(tiJLunes,'Lunes');
end;

procedure TfrmSetup.tiJLunesKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJLunes,key) then
   key:=#0;
  if Key = #13 then
    tiJMartes.SetFocus
end;

procedure TfrmSetup.tiJMartesChange(Sender: TObject);
begin
  tdbeditchangef(tiJMartes,'Martes');
end;

procedure TfrmSetup.tiJMartesKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJMartes,key) then
   key:=#0;
  if Key = #13 then
    tiJMiercoles.SetFocus
end;

procedure TfrmSetup.tiJMiercolesChange(Sender: TObject);
begin
  tdbeditchangef(tiJMiercoles,'Miercoles');  
end;

procedure TfrmSetup.tiJMiercolesKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJMiercoles,key) then
   key:=#0;
  if Key = #13 then
    tiJJueves.SetFocus
end;

procedure TfrmSetup.tiJJuevesChange(Sender: TObject);
begin
  tdbeditchangef(tiJJueves,'Jueves');
end;

procedure TfrmSetup.tiJJuevesKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJJueves,key) then
   key:=#0;
  if Key = #13 then
    tiJViernes.SetFocus
end;

procedure TfrmSetup.tiJViernesChange(Sender: TObject);
begin
  tdbeditchangef(tiJViernes,'Viernes');
end;

procedure TfrmSetup.tiJViernesKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJViernes,key) then
   key:=#0;
  if Key = #13 then
    tiJSabado.SetFocus
end;

procedure TfrmSetup.tiJSabadoChange(Sender: TObject);
begin
   tdbeditchangef(tiJSabado,'Sábado');
end;

procedure TfrmSetup.tiJSabadoKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJSabado,key) then
   key:=#0;
  if Key = #13 then
    tiJDomingo.SetFocus
end;

procedure TfrmSetup.tiJDomingoChange(Sender: TObject);
begin
  tdbeditchangef(tiJDomingo,'Domingo');
end;

procedure TfrmSetup.tiJDomingoKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJDomingo,key) then
   key:=#0;
  if Key = #13 then
    tiJLunes.SetFocus
end;

procedure TfrmSetup.tlCalculaFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tlAutomatico.SetFocus
end;

procedure TfrmSetup.tlAsistenciaExit(Sender: TObject);
begin
  tlAsistencia.Color := Globales.Elemento('Color_Salida').AsInteger;
  if tlAsistencia.Text = 'Guardias' then
    tsIdGuardia.ReadOnly := False
  else
  begin
    tsIdGuardia.ReadOnly := True;
    tsIdGuardia.Text := ''
  end
end;

procedure TfrmSetup.tsIdGuardiaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsFalta.SetFocus
end;

procedure TfrmSetup.tsFaltaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsClaveTierra.SetFocus
end;

procedure TfrmSetup.tsFasesMaterialKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsClaveDevolucion.SetFocus
end;

procedure TfrmSetup.tlAsistenciaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdGuardia.SetFocus
end;

procedure TfrmSetup.tsTipoReporteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tiConsecutivo.SetFocus
end;

procedure TfrmSetup.tsNombreCortoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsnombre.SetFocus
end;

procedure TfrmSetup.tsEmailKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tsRepresentante.SetFocus;
end;

procedure TfrmSetup.tsEquipoSeguridadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdPernocta.SetFocus
end;

procedure TfrmSetup.tsEstimacionesGeneralesEnter(Sender: TObject);
begin
  tsestimacionesgenerales.color:=Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsEstimacionesGeneralesExit(Sender: TObject);
begin
  tsestimacionesgenerales.color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsEstimacionesGeneralesKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    chkfirma1.SetFocus
end;

procedure TfrmSetup.tsFinancieroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsRangoEstimacion.SetFocus
end;

procedure TfrmSetup.tiMesesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tlDistribucion.SetFocus
end;

procedure TfrmSetup.tlDistribucionKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tstiposeguridad.SetFocus
end;

procedure TfrmSetup.tlExportaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsfirmaselectronicas.SetFocus
end;

procedure TfrmSetup.tsIdAlmacenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsClaveDevolucion.SetFocus
end;

procedure TfrmSetup.tsIdAnexoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbexplosion.SetFocus
end;

procedure TfrmSetup.tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        tsImprimePEP.SetFocus
end;

procedure TfrmSetup.tlAsistenciaEnter(Sender: TObject);
begin
  tlAsistencia.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTipoContratoEnter(Sender: TObject);
begin
  tsTipoContrato.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsRangoEstimacionEnter(Sender: TObject);
begin
  tsRangoEstimacion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsRangoEstimacionExit(Sender: TObject);
begin
  tsRangoEstimacion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlCalculoPonderadoEnter(Sender: TObject);
begin
  tlCalculoPonderado.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlCalculoPonderadoExit(Sender: TObject);
begin
  tlCalculoPonderado.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlAutomaticoEnter(Sender: TObject);
begin
  tlAutomatico.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlAutomaticoExit(Sender: TObject);
begin
  tlAutomatico.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiIncrementoEnter(Sender: TObject);
begin
  tiIncremento.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiIncrementoExit(Sender: TObject);
begin
  tiIncremento.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiLongActividadChange(Sender: TObject);
begin
   tdbeditchangei(tiLongActividad,'Long. Actividad');
end;

procedure TfrmSetup.tiLongActividadEnter(Sender: TObject);
begin
  tiLongActividad.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiLongActividadExit(Sender: TObject);
begin
  tiLongActividad.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsDuracionEnter(Sender: TObject);
begin
  tsDuracion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsDuracionExit(Sender: TObject);
begin
  tsDuracion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlCalculaFechaEnter(Sender: TObject);
begin
  tlCalculaFecha.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlCalculaFechaExit(Sender: TObject);
begin
  tlCalculaFecha.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipoPartidaEnter(Sender: TObject);
begin
  tsTipoPartida.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTipoPartidaExit(Sender: TObject);
begin
  tsTipoPartida.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlImprimeExtraordinarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsAvanceBitacora.SetFocus
end;

procedure TfrmSetup.tlImprimeExtraordinarioEnter(Sender: TObject);
begin
  tlImprimeExtraordinario.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlImprimeExtraordinarioExit(Sender: TObject);
begin
  tlImprimeExtraordinario.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsOrdenExtraordinariaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdDepartamento.SetFocus
end;

procedure TfrmSetup.tsCalidadKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tiMeses.SetFocus
end;

procedure TfrmSetup.bImagenClick(Sender: TObject);
begin
  if (configuracion.State = dsEdit) then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        bImagen.Picture.LoadFromFile('');
      end
    end
  end
end;

procedure TfrmSetup.tsIdFaseKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdRetencion.SetFocus
end;

procedure TfrmSetup.tsIdConvenioEnter(Sender: TObject);
begin
  tsIdConvenio.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsIdConvenioExit(Sender: TObject);
begin
  tsIdConvenio.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsIdConvenioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tlCalculoPonderado.SetFocus
end;

procedure TfrmSetup.tiRedondeoMaterialEnter(Sender: TObject);
begin
  tiRedondeoMaterial.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiRedondeoMaterialExit(Sender: TObject);
begin
  tiRedondeoMaterial.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiRedondeoMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiRedondeoEquipo.SetFocus
end;

procedure TfrmSetup.tiRedondeoEquipoEnter(Sender: TObject);
begin
  tiRedondeoEquipo.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiRedondeoEquipoExit(Sender: TObject);
begin
  tiRedondeoEquipo.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiRedondeoEquipoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiRedondeoPersonal.SetFocus
end;

procedure TfrmSetup.tiRedondeoPersonalEnter(Sender: TObject);
begin
  tiRedondeoPersonal.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiRedondeoPersonalExit(Sender: TObject);
begin
  tiRedondeoPersonal.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiRedondeoPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiRedondeoEmbarcacion.SetFocus
end;

procedure TfrmSetup.tiRedondeoEmbarcacionEnter(Sender: TObject);
begin
  tiRedondeoEmbarcacion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiRedondeoEmbarcacionExit(Sender: TObject);
begin
  tiRedondeoEmbarcacion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiRedondeoEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsrangoajustemenor.SetFocus
end;

procedure TfrmSetup.tsRangoAjusteMenorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsRangoAjusteMayor.SetFocus
end;

procedure TfrmSetup.tsRangoAjusteMayorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbcombobox1.SetFocus
end;

procedure TfrmSetup.tsTipoCIAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIdFase.SetFocus
end;

procedure TfrmSetup.tsPartidaEfectivaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsOrdenPersonal.SetFocus
end;

procedure TfrmSetup.tsPersonalIndependienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if cmbvalidapersonal.Enabled= true then
      cmbvalidapersonal.SetFocus
    else
      tlasistencia.SetFocus
end;

procedure TfrmSetup.tsPartidaEfectivaEnter(Sender: TObject);
begin
  tsPartidaEfectiva.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsPartidaEfectivaExit(Sender: TObject);
begin
  tsPartidaEfectiva.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsIsometricosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    timeses.SetFocus
end;

procedure TfrmSetup.tsPiePaginaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsTelefono.SetFocus
end;

procedure TfrmSetup.tsImprimePEPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tSpersonalindependiente.SetFocus
end;

procedure TfrmSetup.tsImpresionPaquetesEnter(Sender: TObject);
begin
    tsImpresionPaquetes.color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsImpresionPaquetesExit(Sender: TObject);
begin
    tsImpresionPaquetes.color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsImpresionPaquetesKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tsTipoContrato.SetFocus 
end;

procedure TfrmSetup.tsImprimePEPEnter(Sender: TObject);
begin
  tsImprimePEP.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsImprimePEPExit(Sender: TObject);
begin
  tsImprimePEP.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipoAlcanceKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsTipoCIA.SetFocus
end;

procedure TfrmSetup.tdRetencionChange(Sender: TObject);
begin
tdbeditchangef(tdRetencion,'% Retención');
end;

procedure TfrmSetup.tdRetencionKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(tdRetencion,key) then
   key:=#0;
  if Key = #13 then
    tsBaseCalculo.SetFocus
end;

procedure TfrmSetup.tsBaseCalculoEnter(Sender: TObject);
begin
  tsBaseCalculo.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsBaseCalculoExit(Sender: TObject);
begin
  tsBaseCalculo.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsBaseCalculoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsImporteRetencion.SetFocus
end;

procedure TfrmSetup.tsAvanceBitacoraEnter(Sender: TObject);
begin
  tsAvanceBitacora.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsAvanceBitacoraExit(Sender: TObject);
begin
  tsAvanceBitacora.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsAvanceBitacoraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipoPartida.SetFocus
end;

procedure TfrmSetup.tsGeneradoresBarcoEnter(Sender: TObject);
begin
      tsGeneradoresBarco.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsGeneradoresBarcoExit(Sender: TObject);
begin
    tsGeneradoresBarco.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsGeneradoresBarcoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    dbmailautoriza.SetFocus
end;

procedure TfrmSetup.tsGeneradoresEnter(Sender: TObject);
begin
      tsGeneradores.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsGeneradoresExit(Sender: TObject);
begin
      tsGeneradores.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsGeneradoresKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsanexo.SetFocus
end;

procedure TfrmSetup.tsGerencialKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsIsometricos.SetFocus
end;

procedure TfrmSetup.tdPenaConvencionalChange(Sender: TObject);
begin
tdbeditchangef(tdPenaConvencional,'% Pena');
end;

procedure TfrmSetup.tdPenaConvencionalKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tdPenaConvencional,key) then
   key:=#0;
  if Key = #13 then
    tsTerminoPenalizacion.SetFocus
end;

procedure TfrmSetup.tsOrdenPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiReportesSinValid.SetFocus
end;

procedure TfrmSetup.tsOrdenPersonalEnter(Sender: TObject);
begin
  tsOrdenPersonal.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsOrdenPersonalExit(Sender: TObject);
begin
  tsOrdenPersonal.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipoAjusteCostoEnter(Sender: TObject);
begin
  tsTipoAjusteCosto.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTipoAjusteCostoExit(Sender: TObject);
begin
  tsTipoAjusteCosto.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipoAjusteCostoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiredondeomaterial.SetFocus
end;


procedure TfrmSetup.tsTipoGeneracionEnter(Sender: TObject);
begin
  tsTipoGeneracion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTipoGeneracionExit(Sender: TObject);
begin
  tsTipoGeneracion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipoGeneracionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsSeguridadGenerador.SetFocus
end;

procedure TfrmSetup.tiReportesSinValidChange(Sender: TObject);
begin
  tdbeditchangef(tiReportesSinValid,'No. Reportes s/Validar');
end;

procedure TfrmSetup.tiReportesSinValidKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiReportesSinValid,key) then
   key:=#0;
  if Key = #13 then
    dbmostrar.SetFocus
end;

procedure TfrmSetup.tsBaseGeneracionEnter(Sender: TObject);
begin
  tsBaseGeneracion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsBaseGeneracionExit(Sender: TObject);
begin
  tsBaseGeneracion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsBaseGeneracionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipoGeneracion.SetFocus
end;

procedure TfrmSetup.ColorEntrada(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.ColorSalida(Sender: TObject);
begin
  (Sender as TDBEdit).Color := Globales.Elemento('Color_Salida').AsInteger;
end;
procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
if Zeo.FieldValues[Camp]<0 then
 Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
end;
procedure TfrmSetup.configuracionBeforePost(DataSet: TDataSet);
begin
  PCAbsoluto(configuracion,'dRetencion');
  PCAbsoluto(configuracion,'dPenaConvencional');
  PCAbsoluto(configuracion,'iLongActividad');
  PCAbsoluto(configuracion,'iConsecutivo');
  PCAbsoluto(configuracion,'iReportesSinValid');
  PCAbsoluto(configuracion,'iJLunes');
  PCAbsoluto(configuracion,'iJMartes');
  PCAbsoluto(configuracion,'iJMiercoles');
  PCAbsoluto(configuracion,'iJJueves');
  PCAbsoluto(configuracion,'iJViernes');
  PCAbsoluto(configuracion,'iJSabado');
  PCAbsoluto(configuracion,'iJDomingo');
  PCAbsoluto(configuracion,'dCostoIndirectos');
  PCAbsoluto(configuracion,'dFinanciamiento');
  PCAbsoluto(configuracion,'dUtilidad');
  PCAbsoluto(configuracion,'dCargosAdicionales');
  PCAbsoluto(configuracion,'dCargosAdicionales2');


end;

procedure TfrmSetup.configuraciondCargosAdicionales2SetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuraciondCargosAdicionalesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));  
end;

procedure TfrmSetup.configuraciondCostoIndirectosSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuraciondFinanciamientoSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(strtofloatdef(text, 0));
end;

procedure TfrmSetup.configuraciondPenaConvencionalSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
  if sender.Value>100 then
    sender.Value:=0;
end;

procedure TfrmSetup.configuraciondRetencionSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuraciondRetencionValidate(Sender: TField);
var
  value:Extended;
begin

end;

procedure TfrmSetup.configuraciondUtilidadSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text, 0));
end;

procedure TfrmSetup.configuracioniConsecutivoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmSetup.configuracioniJDomingoSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmSetup.configuracioniJJuevesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));  
end;

procedure TfrmSetup.configuracioniJLunesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
  if sender.Value>24 then
    sender.Value:=8;
end;

procedure TfrmSetup.configuracioniJMartesSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));  
end;

procedure TfrmSetup.configuracioniJMiercolesSetText(Sender: TField;
  const Text: string);
begin
   sender.Value:=abs(StrToFloatDef(text,0));  
end;

procedure TfrmSetup.configuracioniJSabadoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));
end;
procedure TfrmSetup.configuracioniJViernesSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToFloatDef(text,0));  
end;

procedure TfrmSetup.configuracioniLongActividadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmSetup.configuracioniReportesSinValidSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmSetup.configuracionsPasswordPdfGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
text:='';
 { if (configuracion.RecordCount>0) or (configuracion.State=dsinsert) then
    text:= desencripta(configuracion.FieldByName('sPasswordPdf').AsString); }
end;

procedure TfrmSetup.configuracionsPasswordPdfSetText(Sender: TField;
  const Text: string);
begin
  PasswordPdf:=text;
  //sender.Value:=encripta(text);
end;

procedure TfrmSetup.tsTipoSeguridadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tlexporta.SetFocus
end;

procedure TfrmSetup.tsTipoSeguridadEnter(Sender: TObject);
begin
  tsTipoSeguridad.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTipoSeguridadExit(Sender: TObject);
begin
  tsTipoSeguridad.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiMesesEnter(Sender: TObject);
begin
  tiMeses.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiMesesExit(Sender: TObject);
begin
  tiMeses.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlDistribucionEnter(Sender: TObject);
begin
  tlDistribucion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlDistribucionExit(Sender: TObject);
begin
  tlDistribucion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsValidaAvisosEnter(Sender: TObject);
begin
    tsValidaAvisos.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsValidaAvisosExit(Sender: TObject);
begin
    tsValidaAvisos.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsValidaAvisosKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tsFormato.SetFocus;
end;

procedure TfrmSetup.tsViewIsometricoEnter(Sender: TObject);
begin
  tsViewIsometrico.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsViewIsometricoExit(Sender: TObject);
begin
  tsViewIsometrico.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsViewIsometricoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tiFirmas.SetFocus
end;

procedure TfrmSetup.tsFotografiasEnter(Sender: TObject);
begin
  tsFotografias.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsFotografiasExit(Sender: TObject);
begin
  tsFotografias.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsFotografiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tlComentariosReporte.SetFocus
end;

procedure TfrmSetup.tlComentariosReporteEnter(Sender: TObject);
begin
  tlComentariosReporte.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlComentariosReporteExit(Sender: TObject);
begin
  tlComentariosReporte.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlComentariosReporteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tlIncluyeGrafica.SetFocus
end;

procedure TfrmSetup.tlIncluyeGraficaEnter(Sender: TObject);
begin
  tlIncluyeGrafica.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlIncluyeGraficaExit(Sender: TObject);
begin
  tlIncluyeGrafica.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlIncluyeGraficaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tlIncluyeAvanceContrato.SetFocus;
end;

procedure TfrmSetup.tiFirmasEnter(Sender: TObject);
begin
  tiFirmas.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiFirmasExit(Sender: TObject);
begin
  tiFirmas.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiFirmasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsgeneradores.SetFocus
end;

procedure TfrmSetup.tiFirmasReportesEnter(Sender: TObject);
begin
      tiFirmasReportes.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tiFirmasReportesExit(Sender: TObject);
begin
      tiFirmasReportes.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tiFirmasReportesKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsreportebarco.SetFocus
end;

procedure TfrmSetup.tsFirmasElectronicasEnter(Sender: TObject);
begin
  tsFirmasElectronicas.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsFirmasElectronicasExit(Sender: TObject);
begin
  tsFirmasElectronicas.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsFirmasElectronicasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipsInicial.SetFocus
end;

procedure TfrmSetup.tsTipsInicialEnter(Sender: TObject);
begin
  tsTipsInicial.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTipsInicialExit(Sender: TObject);
begin
  tsTipsInicial.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipsInicialKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsviewisometrico.Setfocus

end;

procedure TfrmSetup.tsImporteRetencionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdPenaConvencional.SetFocus
end;

procedure TfrmSetup.tsImporteRetencionEnter(Sender: TObject);
begin
  tsImporteRetencion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsImporteRetencionExit(Sender: TObject);
begin
  tsImporteRetencion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipoEstimacionEnter(Sender: TObject);
begin
  tsTipoEstimacion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTipoEstimacionExit(Sender: TObject);
begin
  tsTipoEstimacion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tsTipoEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsValidaAvisos.SetFocus
end;

procedure TfrmSetup.tsTerminoPenalizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipoAjusteCosto.SetFocus
end;

procedure TfrmSetup.tsTerminoPenalizacionEnter(Sender: TObject);
begin
  tsTerminoPenalizacion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsTerminoPenalizacionExit(Sender: TObject);
begin
  tsTerminoPenalizacion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlIncluyeAvanceOrdenesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsreportediario.SetFocus
end;

procedure TfrmSetup.tlIncluyeAvanceOrdenesEnter(Sender: TObject);
begin
  tlIncluyeAvanceOrdenes.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlIncluyeAvanceOrdenesExit(Sender: TObject);
begin
  tlIncluyeAvanceOrdenes.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlIncluyeAvanceContratoEnter(Sender: TObject);
begin
  tlIncluyeAvanceContrato.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tlIncluyeAvanceContratoExit(Sender: TObject);
begin
  tlIncluyeAvanceContrato.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.tlIncluyeAvanceContratoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tlIncluyeAvanceOrdenes.SetFocus
end;

procedure TfrmSetup.tsSeguridadGeneradorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsTipoEstimacion.SetFocus
end;

procedure TfrmSetup.tsSeguridadGeneradorEnter(Sender: TObject);
begin
  tsSeguridadGenerador.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.tsSeguridadGeneradorExit(Sender: TObject);
begin
  tsSeguridadGenerador.Color := Globales.Elemento('Color_Salida').AsInteger;
end;


//procedure TfrmSetup.sScrollBar1Change(Sender: TObject);
//begin
//  sLabel3.Caption := IntToStr(sScrollBar1.Position)
//end;

//procedure TfrmSetup.sScrollBar1MouseUp(Sender: TObject;
//  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
//begin
//  connection.sSkinManager1.Saturation := sScrollBar1.Position;
//end;

//procedure TfrmSetup.sScrollBar2Change(Sender: TObject);
//begin
//  sLabel4.Caption := IntToStr(sScrollBar2.Position)
//end;

//procedure TfrmSetup.sScrollBar2KeyUp(Sender: TObject; var Key: Word;
//  Shift: TShiftState);
//begin
//  connection.sSkinManager1.HueOffset := sScrollBar2.Position
//end;

//procedure TfrmSetup.sScrollBar2MouseUp(Sender: TObject;
//  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
//begin
//  connection.sSkinManager1.HueOffset := sScrollBar2.Position
//end;

procedure TfrmSetup.sCiudadEnter(Sender: TObject);
begin
    (Sender as TDBEdit).Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.sCiudadExit(Sender: TObject);
begin
   (Sender as TDBEdit).Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.sCiudadKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tsSlogan.SetFocus;
end;

procedure TfrmSetup.sSimboloEnter(Sender: TObject);
begin
  ssimbolo.color:=Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.sSimboloExit(Sender: TObject);
begin
 ssimbolo.color:= Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.sSimboloKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    dbindirecto.SetFocus
end;

//procedure TfrmSetup.sScrollBar1KeyUp(Sender: TObject; var Key: Word;
//  Shift: TShiftState);
//begin
//  connection.sSkinManager1.Saturation := sScrollBar1.Position;
//end;

procedure TfrmSetup.dbPerforacionExit(Sender: TObject);
begin
  tiLongActividad.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.dbPerforacionKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tilongactividad.SetFocus
end;

procedure TfrmSetup.dbUtilidadChange(Sender: TObject);
begin
  tdbeditchangef(dbUtilidad,'Utilidad');
end;

procedure TfrmSetup.dbUtilidadEnter(Sender: TObject);
begin
   dbUtilidad.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbUtilidadExit(Sender: TObject);
begin
  dbutilidad.Color := Globales.Elemento('Color_Salida').AsInteger; ;
end;

procedure TfrmSetup.dbUtilidadKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(dbUtilidad,key) then
   key:=#0;
  if key = #13 then
     dbCargo1.SetFocus ;
end;




procedure TfrmSetup.dbPerforacionEnter(Sender: TObject);
begin
  dbPerforacion.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbCargo1Change(Sender: TObject);
begin
  tdbeditchangef(dbCargo1,'Cargoa Adicionales');
end;

procedure TfrmSetup.dbCargo1Enter(Sender: TObject);
begin
  dbCargo1.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbCargo1Exit(Sender: TObject);
begin
    dbCargo1.Color := Globales.Elemento('Color_Salida').AsInteger; ;
end;

procedure TfrmSetup.dbCargo1KeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(dbCargo1,key) then
   key:=#0;
  if key = #13 then
     dbCargo2.SetFocus ;

end;

procedure TfrmSetup.dbCargo2Change(Sender: TObject);
begin
  tdbeditchangef(dbCargo2,'Otros Cargos Adic.');  
end;

procedure TfrmSetup.dbCargo2Enter(Sender: TObject);
begin
    dbCargo2.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbCargo2Exit(Sender: TObject);
begin
   dbCargo2.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.dbCargo2KeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(dbCargo2,key) then
   key:=#0;
    if Key = #13 then
    ssimbolo.SetFocus
end;

procedure TfrmSetup.DBComboBox1Enter(Sender: TObject);
begin
  dbcombobox1.color:=Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.DBComboBox1Exit(Sender: TObject);
begin
  dbcombobox1.Color:= Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsavanceinicial.SetFocus
end;

procedure TfrmSetup.dbCostoDirectoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbIndirecto.SetFocus ;
end;

procedure TfrmSetup.dbExplosionEnter(Sender: TObject);
begin
  dbexplosion.color:=Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbExplosionExit(Sender: TObject);
begin
  dbexplosion.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.dbExplosionKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      tsclavedevolucion.SetFocus ;
end;

procedure TfrmSetup.dbFinanciamientoChange(Sender: TObject);
begin
  tdbeditchangef(dbFinanciamiento,'Financiamiento');
end;

procedure TfrmSetup.dbFinanciamientoEnter(Sender: TObject);
begin
  dbFinanciamiento.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbFinanciamientoExit(Sender: TObject);
begin
  dbFinanciamiento.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.dbFinanciamientoKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(dbFinanciamiento,key) then
   key:=#0;
   if key = #13 then
      dbUtilidad.SetFocus ;
end;

procedure TfrmSetup.dbIndirectoChange(Sender: TObject);
begin
  tdbeditchangef(dbIndirecto,'Costo Indirecto');    
end;

procedure TfrmSetup.dbIndirectoEnter(Sender: TObject);
begin
 dbIndirecto.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbIndirectoExit(Sender: TObject);
begin
   dbIndirecto.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.dbIndirectoKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltroTdbedit(dbIndirecto,key) then
   key:=#0;
    if key = #13 then
      dbfinanciamiento.SetFocus ;    
end;

procedure TfrmSetup.dbMailAutorizaEnter(Sender: TObject);
begin
      dbMailAutoriza.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbMailAutorizaExit(Sender: TObject);
begin
      dbMailAutoriza.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.dbMailAutorizaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tifirmasreportes.SetFocus
end;

procedure TfrmSetup.dbMostrarEnter(Sender: TObject);
begin
  dbMostrar.Color := Globales.Elemento('Color_Entrada').AsInteger;
end;

procedure TfrmSetup.dbMostrarExit(Sender: TObject);
begin
  dbMostrar.Color := Globales.Elemento('Color_Salida').AsInteger;
end;

procedure TfrmSetup.dbMostrarKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       tsImpresionPaquetes.SetFocus
end;

end.

