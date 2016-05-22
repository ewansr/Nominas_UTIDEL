unit UTFrmNominasExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, AdvTabSet, ClientModuleUnit1, UInteliDialog, Grids,
  DBGrids, ExtCtrls, AdvGlowButton, ComObj, StrUtils, DateUtils, ExportaExcel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinsForm, cxLabel, cxButtons,
  Menus, StdCtrls, dxSkinsdxBarPainter, dxBar, dxBarBuiltInMenu, cxPC, dxRibbon,
  cxContainer, cxCheckBox, rhh_genericclasses, Math, cxGroupBox, cxRadioGroup,
  dxSkinsdxNavBarPainter, dxNavBar;

type
  TDetDes = class
    ColumnaInicial: Integer;
    FilaInicial   : Integer;
    Titulo         : String;
    Separador      : String;
    AgrupaRegPat   : String;
    AgrupaFormaPago: String;
  end;

  TTipoNomina = class
    IdTipoNomina: Integer;
    TituloNomina:  String;
    diasDescanso: Integer;
  end;

  TMisDesgloses = Class(TStringList)
  Public
    function AddObject(const S: string; AObject: TObject): Integer; override;
  published
    property Count;
  End;

  TObjRef = class
    Subsidio: Real;
    Ispt    : Real;
  end;

  TFrmNominasExcel = class(TForm)
    dsTmpNomina   :  TDataSource;
    cdTmpNomina : TClientDataSet;
    Panel1 : TPanel;
    dlgSaveExcel  :  TSaveDialog;
    CdEncabezado: TClientDataSet;
    CdConceptos : TClientDataSet;
    CdConceptosExtra         : TClientDataSet;
    cdColumnasDatosPersonales: TClientDataSet;
    cdColumnasConceptos      : TClientDataSet;
    cdDatosPersonales        : TClientDataSet;
    cdConceptosPERDEDEXT     : TClientDataSet;
    cdnom_detallenomina_excel: TClientDataSet;
    pnlElegirReporte         :  TPanel;
    vistaReportes        : TcxGridDBTableView;
    nivelReportes            :   TcxGridLevel;
    gridReportes             : TcxGrid;
    cdReportes               : TClientDataSet;
    dsReportes               :    TDataSource;
    tcxTipoNomina           : TcxGridDBColumn;
    tcxTitulo               : TcxGridDBColumn;
    tcxDescripcion          : TcxGridDBColumn;
    tcxIdReporte            : TcxGridDBColumn;
    cdDesgloses             :  TClientDataSet;
    cdDesgRegPat            :  TClientDataSet;
    cdRegPat                 : TClientDataSet;
    cdDesgConceptos          : TClientDataSet;
    cxGridPopupMenu1       : TcxGridPopupMenu;
    CxDbGridNominas      : TcxGridDBTableView;
    cxLevel1                 :   TcxGridLevel;
    CxGridNominas            : TcxGrid;
    CxColumnInicio          : TcxGridDBColumn;
    CxColumnTermino         : TcxGridDBColumn;
    CxColumnTitulo          : TcxGridDBColumn;
    CxColumnAnio            : TcxGridDBColumn;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1                 : TcxStyle;
    cxstylFont              : TcxStyle;
    cxstylFontContent       : TcxStyle;
    cxstylSexo              : TcxStyle;
    dxskncntrlr1          : TdxSkinController;
    cxButton1               :       TcxButton;
    cdDesgloseGral           : TClientDataSet;
    cdCejas                  : TClientDataSet;
    DxManager1               :  TdxBarManager;
    dxbrDxManager1Bar1       :  TdxBar;
    dxBtnSeleccionReporte : TdxBarLargeButton;
    dxBtnDesgloseGeneral  : TdxBarLargeButton;
    dxBtnCerrar           : TdxBarLargeButton;
    CxColumnTituloTipoNomina: TcxGridDBColumn;
    CxColumnTipoCalculo    :  TcxGridDBColumn;
    CxColumnPersonalNomina :  TcxGridDBColumn;
    CxColumnPagado         :  TcxGridDBColumn;
    CxColumnNoPagado       :  TcxGridDBColumn;
    CxColumnNeto           :  TcxGridDBColumn;
    tsTipos                :    TcxTabControl;
    dxPopupMenu          : TdxRibbonPopupMenu;
    programa1             : TdxBarLargeButton;
    programa2             : TdxBarLargeButton;
    programa3             : TdxBarLargeButton;
    btnFormatos           : TdxBarLargeButton;
    panelFormatos         :      TPanel;
    btnAceptar: TcxButton;
    btn2: TcxButton;
    tcxColumnIdNomina: TcxGridDBColumn;
    cdConceptosNomina: TClientDataSet;
    cdDatos: TClientDataSet;
    cdDatosEmpresa: TClientDataSet;
    cdOrganizacion: TClientDataSet;
    cdSalMinDF: TClientDataSet;
    cdImss: TClientDataSet;
    mPercepciones: TClientDataSet;
    mDeducciones: TClientDataSet;
    radioGrupo: TcxRadioGroup;
    cdFirmantes: TClientDataSet;
    cxstylSeleccion: TcxStyle;
    DxNavPanel: TdxNavBar;
    CxColumnGuardia: TcxGridDBColumn;
    CxColumnMes: TcxGridDBColumn;
    cdlistaConceptos: TClientDataSet;
    cdDatosExcel: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CxDbGridNominasDblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure vistaReportesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dxBtnSeleccionReporteClick(Sender: TObject);
    procedure dxBtnDesgloseGeneralClick(Sender: TObject);
    procedure dxBtnCerrarClick(Sender: TObject);
    procedure tsTiposChange(Sender: TObject);
    procedure btnFormatosClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
  private
    myNewTab              : Integer;
    ActualizandoTipos     : Boolean;
    formularioElegirReporte : TForm;
    //Variables para los formatos en la opcion Formatos
    ExApp, ExRango : Variant;
    rInicio, rFinal: Integer;
    CInicio, cFinal: Integer;
    MiListaEncabezado, CamposBD, UbicaFormula: TStringList;
    nomDetalleNomina      : TClientDataset;


    procedure LeerTiposNomina;
    Procedure ExportarAExcelDesglosegral;
    procedure CrearNiveles(ColIni, FilaInicio: Integer; Titulo,AgrupaRegPat, AgrupaFormaPago, separador:String);
    procedure ExportarAExcelGeneral(Referencia: String);
    procedure EncabezadoConcetrado(Referencia: String; SoloEtiquetas: Boolean; WorkSheet: Variant; Excel: Variant; DiasDescanso: Integer; FechaNomina, FechaTerminoNomina: String; TituloOrganizacion: String; Var Colx: Integer; Var RowX: Integer; Var x: Integer);
    procedure exportarAExcelDinamico(reporteExcel : Integer; Referencia : string);
    procedure EncabezadoConcentradoDinamico(Referencia: String; SoloEtiquetas: Boolean; WorkSheet: Variant; Excel: Variant; DiasDescanso: Integer; FechaNomina, FechaTerminoNomina: String; TituloOrganizacion: String);
    procedure cabecerasColumnas(Fila, Columna : Integer; Excel : Variant; dataset : TClientDataset; tabla : String; tipoConsulta : string; parametros : string; arrayDeParametros : Array of Variant; arrayDeMensajeError : Array of Variant; campoDataset : string);
    procedure combinarYCentrarDatosEncabezados(Excel : Variant; rangoColumnas : string);
    procedure fuenteLetras(Excel : Variant; rangoColumna : string; fuente : string; tamanoLetra : Integer; negritas : Boolean);
    procedure bordesCeldas(Excel : Variant; rangoCeldas : string; bordeGrueso : Boolean);
    procedure colocarDatosConceptos(Excel : Variant; dataset : TClientDataset; nombreConsulta : string; tipoConsulta : string; parametros : string; arrayValoresParametros : Array of Variant; arrayParametrosError : array of Variant; cdDatos : TClientDataset; IdPersonalActual : Integer; Fila, Columna : Integer);
    procedure ventanaElegirReporte;
    procedure crearExcelCalculoNOmina(IdNomina : Integer);
    procedure cabeceraExcelCalculoNomina(Excel : Variant; TipoNomina, NombreNomina, fechaPagoNomina, nombreEmpresa : string);
    procedure columnasDelCuerpo(Excel : Variant; IdNomina : Integer; var finPercepciones, inicioDeducciones, finDeducciones : Integer);
    procedure datosDelCuerpo(Excel : Variant; IdNomina, finPercepciones, inicioDeducciones, finDeducciones : Integer);
    function obtenerPercepcionDeduccion(IdNomina, IdConcepto, IdPersonal : Integer) : string;
    Procedure SetFormula(Columna: Variant; Formula: String);
    procedure colorCeldas(Excel: Variant; rango: string; TemaColor : Integer; TintAndShade : Double; conColor : Boolean);
    procedure fuenteTexto(Excel : Variant; rango, fuente : string; tamano : Integer; ColorTexto : Integer; cursiva, negritas : Boolean);
    procedure alineacionTextoExcel(Excel : Variant; rango : string; alineacionHorizontal, alineacionVertical : Integer; negritas : Boolean);
    procedure reporteEmbarcados(IdNomina : Integer);

    //SAUL
    //*****************************************************************
    Procedure Encabezados(Lista: TStringList);
    Procedure SetCellProperties(Rango: Variant; Fuente: String; Tamano: integer; AlineacionH: Integer;
              AlineacionV: Integer; AjustarTexto: Boolean; OrdenLectura: Integer; Negrita: Boolean);
    Procedure SetBorders(Rango: Variant; Grosor: Integer; Tipo: integer);
    Procedure setAgrupadores;
    Procedure setAsCurrency(Rango: Variant);
    //*****************************************************************

    //Funciones y procedimientos para el reporte del formato de Asimilados
    procedure reporteAsimilados(IdNomina : Integer);
    procedure encabezadoAsimilados(Excel : Variant; NombreEmpresa, TituloCabecera, rangoFechasNomina, nombreOtraEmpresa, ciudad, serviciosPrestadosEn, Al : string);
    procedure cuerpoReporteAsimilados(Excel : Variant; IdNomina : Integer);
    procedure colorLetras(Excel : Variant; rango : string; colrTema, ThinAndShade : Integer; negritas : Boolean);
    procedure AjustarTexto(Excel : Variant; rango : string);
    procedure lineaInferior(Excel : Variant; rango : string);
    procedure negritas(Excel : Variant; rango : string);

    //Funciones y procedimientos para el reporte "Resumen"
    procedure reporteResumen(IdNomina : Integer);
    procedure cabeceraReporteResumen(Excel : Variant; IdNomina : Integer; nombreNomina : string);
    procedure cuerpoReporteResumen(Excel : Variant; IdNomina :Integer);
    procedure bordesSemiPunteados(Excel : Variant; rango : string);
    procedure formatoConSignoDePesos(Excel : Variant; rango : string);
    procedure estirarFila(Excel : Variant; rango : string; ancho : Integer);
    procedure alinearTexto(Excel : Variant; rango : string; vertical, horizontal : string; ajustarTexto : Boolean);
    procedure estirarColumnas(Excel : Variant; rango : string);
    procedure formatoTextoPlano(Excel : Variant; rango, valor : string);
    procedure filtros(Excel : Variant; rango : string);
  public
    { Public declarations }
    DetDesglose: TDetDes;
    Seleccionados: String;
    NivelDesglose  : TMisDesgloses;
    FilaPublica    :       Integer;
    ColumnaPublica :       Integer;
    sumaPERDEDEXT  :        Double;
    formularioFormatos :     TForm;
  end;

var
  FrmNominasExcel: TFrmNominasExcel;

implementation

uses UTFrmReportesPersonalizados, UTFrmFormatoEmbarcados;

{$R *.dfm}

procedure TFrmNominasExcel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdDesgloses.ProviderName <> '' then
    EliminarConjunto(cdDesgloses);

  if cdDesgRegPat.ProviderName <> '' then
    EliminarConjunto(cdDesgRegPat);

  if cdDesgConceptos.ProviderName <> '' then
    EliminarConjunto(cdDesgConceptos);

  if cdDesgloseGral.ProviderName <> '' then
    EliminarConjunto(cdDesgloseGral);

  if cdListaConceptos.ProviderName <> '' then
    EliminarConjunto(cdListaConceptos);

  if nomDetalleNomina.ProviderName <> '' then
  begin
    EliminarConjunto(nomDetalleNomina);
    nomDetalleNomina.Free;
  end;

  if cdDatosExcel.ProviderName <> '' then
  begin
    EliminarConjunto(cdDatosExcel);
    cdDatosExcel.Free;
  end;

  action := Cafree;
end;

procedure TFrmNominasExcel.FormCreate(Sender: TObject);
begin
  if Not CrearConjunto(cdDatosExcel, 'nom_detallenomina_excel', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_detallenomina_excel']);

  if Not CrearConjunto(cdFirmantes, 'nuc_firmantesreportes', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_firmantesreportes']);

  nomDetalleNomina := TClientDataset.Create(Self);
  if Not CrearConjunto(nomDetalleNomina, 'nom_detallenomina_excel', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_detallenomina_excel']);

  if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_organizacion']);

  cdOrganizacion.Open;


  if Not CrearConjunto(cdSalMinDF, 'rhu_salario', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Salarios']);

  if Not CargarDatosFiltrados(cdSalMinDF, 'FechaAplicacion,TipoSalario', [ClientModule1.DatetoStrSql(Now), 'SMVDF']) then
    raise InteligentException.CreateByCode(6, ['Salarios', 'Tipo Salario', 'SMVDF']);

  cdSalMinDF.Open;

  if not CrearConjunto(CdImss, 'nuc_personalimss', ccUpdate) then
    raise InteligentConnection.CreateByCode(5, ['datos de IMSS']);

  if Not CargarDatosFiltrados(cdImss, 'IdPersonalImss', [-9]) then
    raise InteligentException.CreateByCode(6, ['Registros de Personal ante el IMSS', -9, 'IdPersonalImss']);

  cdImss.Open;

  if not crearConjunto(cdDesgloses, 'nom_detallenomina_desgloses', ccCatalog) then
    raise inteligentException.CreateByCode(5, ['nom_detallenomina_desgloses']);


  if not CrearConjunto(cdlistaConceptos, 'nom_listaconceptos_nomina', CCCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_listaconceptos_nomina']);

  CrearNiveles(3,4,'Total General', '-1', '-1', '-9');
  CrearNiveles(6,4,'Desglose Por Reg. Patronal', 'Si', '-1', 'registroPatronal');
  CrearNiveles(9,4,'Desglose Por Forma de Pago', '-1', 'Si', 'Referencia');

  //SAUL
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

procedure TFrmNominasExcel.FormShow(Sender: TObject);
begin
  Try
    LeerTiposNomina;

    if Not CrearConjunto(cdTmpNomina, 'nom_nomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Nóminas']);

    EncabezadoReportes(CdEncabezado, 18);

    tsTipos.TabIndex := 1;
    tsTipos.TabIndex := 0;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmNominasExcel.fuenteLetras(Excel: Variant; rangoColumna,
  fuente: string; tamanoLetra: Integer; negritas: Boolean);
var
  rangoExcel : Variant;
begin
  //Fuente de letras para cualquier rango de celdas
  rangoExcel := Excel.Range[rangoColumna];
  rangoExcel.Font.Name          :=  fuente;
  rangoExcel.Font.Size      := tamanoLetra;
  rangoExcel.Font.Strikethrough :=   False;
  rangoExcel.Font.Superscript   :=   False;
  rangoExcel.Font.Subscript     :=   False;
  rangoExcel.Font.OutlineFont   :=   False;
  rangoExcel.Font.Shadow        :=   False;
  rangoExcel.Font.Underline     :=   -4142;
  rangoExcel.Font.ThemeColor    :=       2;
  rangoExcel.Font.TintAndShade  :=       0;
  rangoExcel.Font.ThemeFont     :=       0;
  rangoExcel.Font.Bold         := negritas;
end;

procedure TFrmNominasExcel.fuenteTexto(Excel: Variant; rango, fuente: string; tamano,
  ColorTexto: Integer; cursiva, negritas: Boolean);
var
  rangoExcel : Variant;
begin
  //Configurar la fuente del texto del reporte del calculo de nomina
  rangoExcel := Excel.Range[rango];
  rangoExcel.Font.Name          :=  fuente;
  rangoExcel.Font.Size          :=  tamano;
  //Excel.Selection.Font.Color      := ColorTexto;
  rangoExcel.Font.Strikethrough :=   False;
  rangoExcel.Font.Superscript   :=   False;
  rangoExcel.Font.Subscript     :=   False;
  rangoExcel.Font.OutlineFont   :=   False;
  rangoExcel.Font.Shadow        :=   False;
  rangoExcel.Font.Underline     :=   -4142;
  rangoExcel.Font.ThemeColor := ColorTexto;
  rangoExcel.Font.TintAndShade  :=       0;
  //Excel.Selection.Font.ThemeFont     :=       0;
  rangoExcel.Font.Bold         := negritas;
  rangoExcel.Font.Italic        := cursiva;
end;

procedure TFrmNominasExcel.LeerTiposNomina;
var
  LocTmpNomina: TClientDataSet;
  objTipoNomina: TTipoNomina;
begin
  Try
    ActualizandoTipos := True;
    LocTmpNomina := TClientDataSet.Create(Self);

    if Not CrearConjunto(LocTmpNomina, 'nom_tiponomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Nóminas']);

    if Not CargarDatosFiltrados(LocTmpNomina, 'TipoCalculo', ['PERIODICA']) then
      raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'PERIODICA', 'Tipo de Cálculo']);

    LocTmpNomina.Open;

    try
      LocTmpNomina.Filtered := False;
      LocTmpNomina.Filter := 'idTipoNomina_liga Is Null';
      LocTmpNomina.Filtered :=  True;
    except
      LocTmpNomina.Filtered := False;
    end;

    tsTipos.Properties.Tabs.Clear;
    while not LocTmpNomina.Eof do
    begin
      objTipoNomina :=  TTipoNomina.Create;
      objTipoNomina.IdTipoNomina := LocTmpNomina.FieldByName('Relacion').AsInteger;
      objTipoNomina.TituloNomina :=    LocTmpNomina.FieldByName('Titulo').AsString;
      objTipoNomina.diasDescanso := locTmpNomina.FieldByName('DiasDescanso').AsInteger;
      tsTipos.Properties.Tabs.AddObject(objTipoNomina.TituloNomina, objTipoNomina);
      LocTmpNomina.Next;
    end;
  Finally
    ActualizandoTipos := False;

    if LocTmpNomina.ProviderName <> '' then
    begin
      LocTmpNomina.Close;
      EliminarConjunto(LocTmpNomina);
    end;

    LocTmpNomina.Destroy;
  End;
end;

procedure TFrmNominasExcel.lineaInferior(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  rangoExcel := Excel.Range[rango];

  rangoExcel.Borders[9].LineStyle := 1;
  rangoExcel.Borders[9].ColorIndex := 0;
  rangoExcel.Borders[9].TintAndShade := 0;
  rangoExcel.Borders[9].Weight := 2;
end;

procedure TFrmNominasExcel.negritas(Excel: Variant; rango: string);
var
  excelRango : Variant;
begin
  excelRango := Excel.Range[rango];
  excelRango.Font.Bold := True;
end;

function TFrmNominasExcel.obtenerPercepcionDeduccion(IdNomina, IdConcepto,
  IdPersonal: Integer): string;
begin
  //Devuelve la percepcion si es que se encuentra en la consulta de nom_detallenomina_excel, si no devuelve vacio
  try
    if Not CargarDatosFiltrados(cdDatosExcel, 'ListaNominas', [IdNomina]) then
      raise InteligentException.CreateByCode(6, ['ListaNominas', 'nom_detalenomina_excel']);

    if CdDatosExcel.Active then
      cdDatosExcel.Refresh
    else
      cdDatosExcel.Open;

    if cdDatosExcel.Locate('IdConcepto;IdPersonal', VarArrayOf([IdConcepto, IdPersonal]), []) then
      Result := cdDatosExcel.FieldByName('Importe').AsString
    else
      Result := '0';
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmNominasExcel.reporteAsimilados(IdNomina: Integer);
var
  Excel, Libro, Hoja : Variant;
  errorExcel : Boolean;
  nomNomina : TClientDataset;
begin
  //Crea el reporte en excel del reporte de asimilados dependiendo la nomina que se le pase como parametro
  try
    errorExcel          := False;
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible       :=  True;
    Excel.displayAlerts := False;
    Excel.WorkBooks.Add;
    Libro :=  Excel.WorkBooks[1];
    Hoja  :=     Libro.Sheets[1];
    Hoja.Select;
  except
    on e : Exception do
    begin
      errorExcel := True;
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
    end;
  end;

  if Not errorExcel then  //Si no hay error al crear el Excel, entonces continuar
  begin
    try
      try
        nomNomina := TClientDataset.Create(Self);

        if Not CrearConjunto(nomNomina, 'nom_nomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nom_nomina']);

        if Not CargarDatosFiltrados(nomNomina, 'IdNomina', [IdNomina]) then
          raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_nomina']);

        nomNomina.Open;

        encabezadoAsimilados(Excel, ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').asString, TTipoNomina(tsTipos.Properties.Tabs.Objects[tsTipos.Properties.TabIndex]).TituloNomina,
                            DateToStr(nomNomina.FieldByName('FechaNomina').AsDateTime) + ' - ' + DateToStr(nomNomina.FieldByName('FechaTerminoNomina').AsDateTime),
                            'SINERGIA INTEGRAL EMPRESARIAL SA DE CV', ClientModule1.cdOrganizacion.FieldByName('Municipio').asString, ClientModule1.cdOrganizacion.FieldByName('tituloorganizacion').asString, DateToStr(nomNomina.FieldByName('FechaTerminoNomina').AsDateTime));

        cuerpoReporteAsimilados(Excel, IdNomina);

        Excel.activeWindow.zoom := 80;
        Excel.Cells.Columns.AutoFit;
        Excel.Columns['A:A'].ColumnWidth := 15;
        Excel.Columns['B:B'].ColumnWidth := 42;
        Excel.Columns['D:D'].ColumnWidth := 30;
        Excel.Columns['E:E'].ColumnWidth := 18;
      finally
        nomNomina.Destroy;
      end;
    except
      on e : Exception do
      begin
        MessageDlg(e.Message, mtInformation, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TFrmNominasExcel.reporteEmbarcados(IdNomina: Integer);
Var
  continuar: Boolean;
  Cursor   : TCursor;
  rowIni, ColIni, renR, renC, j : Integer;
  Formula   : String;
begin
  //Codigo para imprimir reporte de embarcados [Codigo de SAUL que imprime reporte de personal abordo embarcados]
  try
    if TTipoNomina(tsTipos.Properties.Tabs.Objects[tsTipos.Properties.TabIndex]).diasDescanso > 0 then
    begin
      if cdDatos.ProviderName = '' then
        if not CrearConjunto(cdDatos, 'nom_detallenomina_embarcados', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nom_detallenomina_embarcados']);

      if not CargarDatosFiltrados(cdDatos, 'IdNomina', [IdNomina]) then
        raise InteligentException.CreateByCode(6, ['nom_detallenomina_embarcados', 'IdNomina', '2']);

      if cdDatos.Active then
        cdDatos.Refresh
      else
        cdDatos.Open;


      Try
        RInicio := 6;
        Cinicio := 1;
        Continuar     := True;
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
        Encabezados(MiListaEncabezado);
        SetAgrupadores;

        ColIni :=     CInicio;
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
          ExRango :=    ExApp.Range[UbicaFormula[j] + intToStr(RowIni + Renr)];
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
    end
    else
      MessageDlg('¡Este reporte aplica solo para Nóminas Abordo!', mtInformation, [mbOk], 0)
  except
    on e: InteligentException do
    InteliDialog.ShowModal(e.Title,e.ClassName + ' ' + e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmNominasExcel.reporteResumen(IdNomina: Integer);
var
  Excel, Libro, Hoja : Variant;
  errorExcel : Boolean;
begin
  //Genera el reporte formato Resumen conforme al IdNomina que se le pase como parametro
  try
    errorExcel          := False;
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible       :=  True;
    Excel.displayAlerts := False;
    Excel.WorkBooks.Add;
    Libro :=  Excel.WorkBooks[1];
    Hoja  :=     Libro.Sheets[1];
    Hoja.Select;
  except
    on e : Exception do
    begin
      errorExcel := True;
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
    end;
  end;

  if Not errorExcel then
  begin
    cabeceraReporteResumen(Excel, IdNomina, cdTmpNomina.FieldByName('Titulo').AsString);

    cuerpoReporteResumen(Excel, IdNomina);
  end;
end;

procedure TFrmNominasExcel.setAgrupadores;
begin
  ExRango           := ExApp.Range['G5:K5'];
  ExRango.Value := 'DURACIÓN DE LA GUARDIA';
  ExRango.mergeCells     :=     True;
  ExRango.Interior.Color := 10066176;
  SetBorders(ExRango, xlThin, xlContinuous);
  SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);

  ExRango       :=               ExApp.Range['N5:R5'];
  ExRango.Value := 'CALCULO PARA EL PAGO DEL PERIODO';
  ExRango.mergeCells     :=     True;
  ExRango.Interior.Color := 10066176;
  SetBorders(ExRango, xlThin, xlContinuous);
  SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);
end;

procedure TFrmNominasExcel.setAsCurrency(Rango: Variant);
begin
  Rango.Style := 'Currency';
end;

procedure TFrmNominasExcel.SetBorders(Rango: Variant; Grosor, Tipo: integer);
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

procedure TFrmNominasExcel.SetCellProperties(Rango: Variant; Fuente: String;
  Tamano, AlineacionH, AlineacionV: Integer; AjustarTexto: Boolean;
  OrdenLectura: Integer; Negrita: Boolean);
begin
  //Fuente de celda
  ExRango.Font.Name :=  Fuente;
  ExRango.Font.Size :=  Tamano;
  ExRango.Font.Bold := Negrita;
  ExRango.HorizontalAlignment := AlineacionH;
  ExRango.VerticalAlignment   := AlineacionV;
  ExRango.WrapText     := AjustarTexto;
  ExRango.ReadingOrder := OrdenLectura;
end;

procedure TFrmNominasExcel.SetFormula(Columna: Variant; Formula: String);
begin
  //Hace operaciones conforme a a formula y el rango k se le pase
  Columna.FormulaR1C1 := Formula;
end;

procedure TFrmNominasExcel.tsTiposChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  myNewTab := TcxTabControl(Sender).TabIndex;

  if Not ActualizandoTipos then
  begin
    Try
      Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        if Not CargarDatosFiltrados(cdTmpNomina, 'IdTipoNomina_Liga', [TTipoNomina(tsTipos.Properties.Tabs.Objects[myNewTab]).IdTipoNomina]) then
          raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'PERIODICA', 'Tipo de Cálculo']);

        if cdTmpNomina.Active then
          cdTmpNomina.Refresh
        else
          cdTmpNomina.Open;
      Finally
        Screen.Cursor := Cursor;
      End;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmNominasExcel.ventanaElegirReporte;
begin
  pnlElegirReporte .Visible := True;
  pnlElegirReporte.Enabled  := True;

  formularioElegirReporte :=       TForm.Create(nil);
  formularioElegirReporte.Caption :=   'Elegir Configuración para Reporte Excel';
  pnlElegirReporte.Parent := formularioElegirReporte;

  formularioElegirReporte.Top         :=       58;
  formularioElegirReporte.Left        :=      302;
  formularioElegirReporte.Width       :=      700;
  formularioElegirReporte.Height      :=      250;
  formularioElegirReporte.BorderStyle := bsSingle;
  formularioElegirReporte.Position    := poMainFormCenter;
  formularioElegirReporte.ShowHint    :=     True;
  pnlElegirReporte.Visible            :=     True;
  pnlElegirReporte.Align              := alClient;
  formularioElegirReporte.AutoSize    :=     True;
  formularioElegirReporte.BorderIcons :=   [biSystemMenu];
end;

procedure TFrmNominasExcel.vistaReportesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxButton1.Click;
end;

procedure TFrmNominasExcel.AjustarTexto(Excel: Variant; rango: string);
var
  ExcelRango : Variant;
begin
  //Ajusta el texto de una celda o de un rango de celdas, para que el texto se vea en varias lineas si es que no entra en la celda
  ExcelRango := Excel.Range[rango];
  ExcelRango.HorizontalAlignment := -4108;
  ExcelRango.VerticalAlignment   := -4108;
  ExcelRango.WrapText  :=  True;
  ExcelRango.Orientation  :=  0;
  ExcelRango.AddIndent := False;
  ExcelRango.IndentLevel :=   0;
  ExcelRango.ShrinkToFit  := False;
  ExcelRango.ReadingOrder := -5002;
  ExcelRango.MergeCells  :=  False;
end;

procedure TFrmNominasExcel.alineacionTextoExcel(Excel: Variant; rango : string;
  alineacionHorizontal, alineacionVertical: Integer; negritas: Boolean);
var
  rangoExcel : Variant;
begin
  //Alinea el texto en el Excel, izquierda, centro, derecha, abajo, centro, arriba
  rangoExcel := Excel.Range[rango];
  rangoExcel.HorizontalAlignment := alineacionHorizontal;
  rangoExcel.VerticalAlignment   :=   alineacionVertical;
  rangoExcel.WrapText    := False;
  rangoExcel.Orientation :=     0;
  rangoExcel.AddIndent   := False;
  rangoExcel.IndentLevel :=     0;
  rangoExcel.ShrinkToFit := False;
  rangoExcel.ReadingOrder := -5002; //xlContext
  rangoExcel.MergeCells   := False;
  rangoExcel.Font.Bold := negritas;
end;

procedure TFrmNominasExcel.alinearTexto(Excel: Variant; rango, vertical,
  horizontal: string; ajustarTexto: Boolean);
var
  rangoExcel : Variant;
begin
  //Alinea el texto
  //Valores aceptados vertical("arriba", "enmedio", "abajo"), horizontal("izquierda", "centro", "derecha")
  rangoExcel := Excel.Range[rango];

  if vertical = 'arriba' then
  begin
    rangoExcel.VerticalAlignment   := -4160;
  end else if vertical = 'enmedio' then
  begin
    rangoExcel.VerticalAlignment   := -4108;
  end else if vertical = 'bajo' then
  begin
    rangoExcel.VerticalAlignment   := -4107;
  end;

  if horizontal = 'izquierda' then
  begin
    rangoExcel.HorizontalAlignment := -4131;
  end else if horizontal = 'centro' then
  begin
    rangoExcel.HorizontalAlignment := -4108;
  end else if horizontal = 'derecha' then
  begin
    rangoExcel.HorizontalAlignment := -4152;
  end;

  if ajustarTexto then
  begin
    rangoExcel.VerticalAlignment   := -4108;
    rangoExcel.HorizontalAlignment := -4108;
    rangoExcel.WrapText            :=  True;
    rangoExcel.ReadingOrder        := -5002;
  end;

  rangoExcel.MergeCells      := False;
end;

procedure TFrmNominasExcel.bordesCeldas(Excel: Variant; rangoCeldas: string;
  bordeGrueso: Boolean);
var
  rangoExcel : Variant;
begin
  //Pinta los bordes de un rango de Celdas
  if bordeGrueso then
  begin
    //Pintar el borde Grueso
    rangoExcel := Excel.Range[rangoCeldas];
    rangoExcel.Borders[xlDiagonalDown].LineStyle     :=       xlNone;
    rangoExcel.Borders[xlDiagonalUp].LineStyle       :=       xlNone;

    rangoExcel.Borders[xlEdgeLeft].LineStyle         := xlContinuous;
    rangoExcel.Borders[xlEdgeLeft].Weight            :=     xlMedium;

    rangoExcel.Borders[xlEdgeTop].LineStyle          := xlContinuous;
    rangoExcel.Borders[xlEdgeTop].Weight             :=     xlMedium;

    rangoExcel.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    rangoExcel.Borders[xlEdgeBottom].Weight          :=     xlMedium;

    rangoExcel.Borders[xlEdgeRight].LineStyle        := xlContinuous;
    rangoExcel.Borders[xlEdgeRight].Weight           :=     xlMedium;

    rangoExcel.Borders[xlInsideVertical].LineStyle   := xlContinuous;
    rangoExcel.Borders[xlInsideVertical].Weight      :=       xlThin;

    rangoExcel.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    rangoExcel.Borders[xlInsideHorizontal].Weight    :=       xlThin;
  end
  else
  begin
    //Pintar los bordes delgados
    rangoExcel := Excel.Range[rangoCeldas];
    rangoExcel.Borders[xlDiagonalDown].LineStyle :=       xlNone;
    rangoExcel.Borders[xlDiagonalUp].LineStyle   :=       xlNone;

    rangoExcel.Borders[xlEdgeLeft].LineStyle     := xlContinuous;
    rangoExcel.Borders[xlEdgeLeft].Weight        :=       xlThin;

    rangoExcel.Borders[xlEdgeRight].LineStyle    := xlContinuous;
    rangoExcel.Borders[xlEdgeRight].Weight       :=       xlThin;

    rangoExcel.Borders[xlEdgeBottom].LineStyle   := xlContinuous;
    rangoExcel.Borders[xlEdgeBottom].Weight      :=       xlThin;

    rangoExcel.Borders[xlEdgeTop].LineStyle      := xlContinuous;
    rangoExcel.Borders[xlEdgeTop].Weight         :=       xlThin;

    rangoExcel.Borders[xlInsideVertical].LineStyle := xlContinuous;
    rangoExcel.Borders[xlInsideVertical].Weight    :=       xlThin;

    rangoExcel.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    rangoExcel.Borders[xlInsideHorizontal].Weight    :=       xlThin;
  end;
end;

procedure TFrmNominasExcel.bordesSemiPunteados(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  //Coloca bordes semipunteados en un rango de celdas
  rangoExcel := Excel.Range[rango];
  rangoExcel.Borders[5].LineStyle := -4142;
  rangoExcel.Borders[6].LineStyle := -4142;

  rangoExcel.Borders[7].Weight     := 1;
  rangoExcel.Borders[8].Weight     := 1;
  rangoExcel.Borders[9].Weight     := 1;
  rangoExcel.Borders[10].Weight    := 1;
  rangoExcel.Borders[11].LineStyle := -4142;
  rangoExcel.Borders[12].Weight    := 1;
end;

procedure TFrmNominasExcel.btnAceptarClick(Sender: TObject);
var
  Cursor : TCursor;
  idx: Integer;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    Seleccionados := '';
    if CxdbGridNominas.Controller.SelectedRowCount > 1 then
    begin
      for idx := 0 to CxDbGridNominas.Controller.SelectedRowCount - 1 do
      begin
        if Idx <> (CxDbGridNominas.Controller.SelectedRowCount - 1) then
          Seleccionados := Seleccionados + VarToStr(CxDbGridNominas.Controller.SelectedRows[idx].Values[tcxColumnIdNomina.Index]) + ','
        Else
          Seleccionados := Seleccionados + VarToStr(CxDbGridNominas.Controller.SelectedRows[idx].Values[tcxColumnIdNomina.Index]);
      End
    end
    else
      Seleccionados :=  VarToStr(CxDbGridNominas.Controller.SelectedRows[idx].Values[tcxColumnIdNomina.Index]);

    if Seleccionados <> '' then
    begin

      if radioGrupo.ItemIndex = 0 then
      begin
        //Codigo de Saul
        reporteEmbarcados(cdTmpNomina.FieldByName('IdNomina').AsInteger)
      end else if radioGrupo.ItemIndex = 1 then
      begin
        //Codigo de Marcos
        crearExcelCalculoNOmina(cdTmpNomina.FieldByName('IdNomina').AsInteger)
      end else if radioGrupo.ItemIndex = 2 then
      begin
        //Reporte de Asimilados
        reporteAsimilados(cdTmpNomina.FieldByName('IdNomina').AsInteger)
      end else if radioGrupo.ItemIndex = 3 then
      begin
        //Reporte de Resumen
        reporteResumen(cdTmpNomina.FieldByName('IdNomina').AsInteger);
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmNominasExcel.btnFormatosClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  //Abrir ventana para que el usuario elija el tipo de Formato(Formato Embarque o Formato calculo de nomina)
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      //Poner el checkEmbarque como chequeado por default
      radioGrupo.ItemIndex := 0;

      formularioFormatos     :=     TForm.Create(Self);
      formularioFormatos.Width  := 205;
      formularioFormatos.Height := 200;
      formularioFormatos.BorderStyle       := bsSingle;
      formularioFormatos.Position  := poMainFormCenter;
      formularioFormatos.AutoSize  := True;
      formularioFormatos.BorderIcons := [biSystemMenu];
      formularioFormatos.Caption   := 'Elegir formato';

      panelFormatos.Parent      :=  formularioFormatos;
      panelFormatos.Visible :=   True;
      panelFormatos.Align := alClient;

      formularioFormatos.ShowModal;
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

procedure TFrmNominasExcel.cabeceraExcelCalculoNomina(Excel: Variant;
  TipoNomina, NombreNomina, fechaPagoNomina, nombreEmpresa: string);
begin
  //Imprime la cabecera del reporte del calculo de nomina(Tipo de Nomina, Prevision Social, Nombre de la nomina, fecha de Pago y Nombre de a empresa)
  try
    Excel.Range['A1:A1'].Value :=         TipoNomina;
    Excel.Range['A2:A2'].Value := 'PREVISION SOCIAL';
    Excel.Range['A3:A3'].Value :=       NombreNomina;
    Excel.Range['A4:A4'].Value :=    FechaPagoNomina;
    Excel.Range['A5:A5'].Value :=      nombreEmpresa;

    //Poner color amarillo de la celda A3 a la C4
    colorCeldas(Excel, 'A3:C4', 65535, 0, True);
    colorCeldas(Excel, 'A5:C5', clBlack, 0, True);
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmNominasExcel.cabeceraReporteResumen(Excel: Variant;
  IdNomina: Integer; nombreNomina : string);
begin
  //Imprime la cabecera del formato "Resumen"
  combinarYCentrarDatosEncabezados(Excel, 'H1:L1');
  Excel.Range['H1'].Value := nombreNomina;
  fuenteTexto(Excel, 'H1', 'Calibri', 9, 2, False, True);
end;

procedure TFrmNominasExcel.cabecerasColumnas(Fila, Columna: Integer;
  Excel: Variant; dataset: TClientDataset; tabla, tipoConsulta,
  parametros: string; arrayDeParametros, arrayDeMensajeError: array of Variant;
  campoDataset: string);
begin
  //Se definiran los textos que iran en las columnas
  if dataset.Active then
    dataset.Close;

  if Not CrearConjunto(dataset, tabla, tipoConsulta) then
    raise InteligentException.CreateByCode(5, [tabla]);

  if Not CargarDatosFiltrados(dataset, parametros, arrayDeParametros) then
    raise InteligentException.CreateByCode(6, arrayDeMensajeError);

  if dataset.Active then
    dataset.Refresh
  else
    dataset.Open;

  dataset.First;
  while Not dataset.Eof do
  begin
    combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(Columna) + IntToStr(Fila) + ':' + ColumnaNombre(Columna) + IntToStr(Fila + 1));
    Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := UpperCase(dataset.FieldByName(campoDataset).AsString);
    //fuenteLetras(Excel, ColumnaNombre(Columna) + IntToStr(Fila), 'Arial', 10, True);
    if arrayDeParametros[2] <> 'EXTRA' then
    begin
      //bordesCeldas(Excel, ColumnaNombre(Columna) + IntToStr(Fila), True);
    end;
    Columna := Columna + 1;
    ColumnaPublica := ColumnaPublica + 1;
    dataset.Next;
  end;
end;

procedure TFrmNominasExcel.colocarDatosConceptos(Excel: Variant;
  dataset: TClientDataset; nombreConsulta, tipoConsulta: string;
  parametros : string; arrayValoresParametros, arrayParametrosError: array of Variant;
  cdDatos: TClientDataset; IdPersonalActual, Fila, Columna: Integer);
var
  importe : Double;
begin
  //Coloca el importe(en numero) en la celda indicada, ya sea para PERCEPCIONES, DEDUCCIONES, EXTRA
  Try
    sumaPERDEDEXT := 0;

    if dataset.Active then
      dataset.Close;

    if not CrearConjunto(dataset, nombreConsulta, tipoConsulta) then
      raise InteligentException.CreateByCode(5, [nombreConsulta]);

    if Not CargarDatosFiltrados(dataset, parametros, arrayValoresParametros) then
      raise InteligentException.CreateByCode(5, arrayParametrosError);

    if dataset.Active then
      dataset.Refresh
    else
      dataset.Open;

    cdnom_detallenomina_excel.Data := cdDatos.Data;

    //Filtrar por el idPersonal
    cdnom_detallenomina_excel.Filtered := False;
    cdnom_detallenomina_excel.Filter := 'idPersonal=' + IntToStr(IdPersonalActual);
    cdnom_detallenomina_excel.Filtered := True;

    dataset.First;
    while Not dataset.Eof do
    begin
      cdnom_detallenomina_excel.First;
      while Not cdnom_detallenomina_excel.Eof do
      begin
        //Si el concepto elegido desde el wizard es igual al concepto de la consulta nom_detallenomina_excel
        //entonces poner el total(en numero) en la celda indicada del excel
        if (dataset.FieldByName('IdConcepto').AsInteger = cdnom_detallenomina_excel.FieldByName('IdConcepto').AsInteger)
        and (IdPersonalActual = cdnom_detallenomina_excel.FieldByName('IdPersonal').AsInteger)  then
        begin
          if arrayValoresParametros[2] = 'PERCEPCION' then
          begin
            if (cdnom_detallenomina_excel.FieldByName('Modo').AsString = 'DEDUCCION')
            or (cdnom_detallenomina_excel.FieldByName('Modo').AsString = 'DED-MEMORIA') then
            begin
              importe := StrToFloat(cdnom_detallenomina_excel.FieldByName('Importe').AsString) * -1;
              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := FloatToStr(StrToFloat(cdnom_detallenomina_excel.FieldByName('Importe').AsString) * -1);
            end
            else
            begin
              importe := StrToFloat(cdnom_detallenomina_excel.FieldByName('Importe').AsString);
              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := cdnom_detallenomina_excel.FieldByName('Importe').AsString;
            end;
          end
          else if arrayValoresParametros[2] = 'DEDUCCION' then
          begin
            if (cdnom_detallenomina_excel.FieldByName('Modo').AsString = 'PERCEPCION')
            or (cdnom_detallenomina_excel.FieldByName('Modo').AsString = 'PER-MEMORIA') then
            begin
              importe := StrToFloat(cdnom_detallenomina_excel.FieldByName('Importe').AsString) * -1;
              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := FloatToStr(StrToFloat(cdnom_detallenomina_excel.FieldByName('Importe').AsString) * -1);
            end
            else
            begin
              importe := StrToFloat(cdnom_detallenomina_excel.FieldByName('Importe').AsString);
              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := cdnom_detallenomina_excel.FieldByName('Importe').AsString;
            end;
          end
          else if arrayValoresParametros[2] <> 'EXTRA' then
          begin
            bordesCeldas(Excel, ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica), False);
          end
          else if arrayValoresParametros[2] = 'EXTRA' then
          begin
            importe := StrToFloat(cdnom_detallenomina_excel.FieldByName('Importe').AsString);
            Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := cdnom_detallenomina_excel.FieldByName('Importe').AsString;
          end;

          if dataset.FieldByName('Funcion').AsString = 'SUMATORIA' then
          begin
            sumaPERDEDEXT := sumaPERDEDEXT + importe;
          end;
        end;

        cdnom_detallenomina_excel.Next;
      end;

  //    if arrayValoresParametros[2] <> 'EXTRA' then
  //    begin
  //      bordesCeldas(Excel, ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica), False);
  //    end;

      ColumnaPublica := ColumnaPublica + 1;
      dataset.Next;
    end;
  Finally
//    if Dataset.ProviderName <> '' then
//      EliminarConjunto(Dataset);
  End;
end;

procedure TFrmNominasExcel.colorCeldas(Excel: Variant; rango: string; TemaColor : Integer; TintAndShade : Double; conColor : Boolean);
var
  rangoExcel : Variant;
begin
  //Define el colo del rango de celdas para el archivo de excel
  rangoExcel := Excel.Range[rango];
  rangoExcel.Interior.Pattern             :=     1;
  rangoExcel.Interior.PatternColorIndex   := -4105;

  if conColor then
    rangoExcel.Interior.Color           := TemaColor
  else
    rangoExcel.Interior.ThemeColor      := TemaColor;

  rangoExcel.Interior.TintAndShade := TintAndShade;
  rangoExcel.Interior.PatternTintAndShade :=     0;
end;

procedure TFrmNominasExcel.colorLetras(Excel: Variant; rango: string; colrTema,
  ThinAndShade: Integer; negritas: Boolean);
var
  ExcelRango : Variant;
begin
  //Pone color a las letras(texto)
  ExcelRango := Excel.Range[rango];
  ExcelRango.Font.Color := colrTema;
  ExcelRango.Font.TintAndShade := ThinAndShade;
  ExcelRango.Font.Bold := negritas;

end;

procedure TFrmNominasExcel.columnasDelCuerpo(Excel: Variant; IdNomina : Integer; var finPercepciones, inicioDeducciones, finDeducciones : Integer);
const
  columnasDatosPersonales : array[1 .. 7] of string = ('A. PATERNO', 'A. MATERNO', 'NOMBRE', 'CUENTA',
                                                      'BANCO', 'DÍAS TRABAJADOS', 'SUELDO QUINCENAL');
var
  columna   :        Integer;
  conceptos : TClientDataSet;
begin
  //Imprime las cabeceras del cuerpo con los datos que debera llevar el reporte(datos personales, percepcioes, deducciones, totales, etc).
  try
    try
      //Poner Color rosa encima de las cabeceras de los datos personales
      combinarYCentrarDatosEncabezados(Excel, 'A7:F7');
      colorCeldas(Excel, 'A7', 10, 0.799981688894314, False);

      //Colocar los datos personales del empleado
      for columna := 1 to 7 do
      begin
        Excel.Range[ColumnaNombre(columna) + '8'].Value := columnasDatosPersonales[columna];
        combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(columna) + '8:' + ColumnaNombre(columna) + '9');
      end;

      //Colocar las percepciones
      conceptos := TClientDataset.Create(Self);

      if Not CrearConjunto(conceptos, 'nom_listaconceptos_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_listaconceptos_nomina']);

      if Not CargarDatosFiltrados(conceptos, 'IdNomina', [IdNomina]) then
        raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_listaconceptos_nomina']);

      conceptos.Open;

      if conceptos.RecordCount > 0 then
      begin
        columna := 8;

        //Colocar las percepciones
        conceptos.First;
        while Not conceptos.Eof do
        begin
          if conceptos.FieldByName('Modo').AsString = 'PERCEPCION' then
          begin
            Excel.Range[ColumnaNombre(columna) + '9'].Value := conceptos.FieldByName('Titulo').AsString;
            columna := columna + 1;
          end;

          conceptos.Next;
        end;

        Excel.Range[ColumnaNombre(columna) + '8'].Value := 'TOTAL';
        Excel.Range[ColumnaNombre(columna) + '9'].Value := 'PERCEPCIONES';
        finPercepciones := columna - 1;

        columna     :=   columna + 1;

        inicioDeducciones := columna;

        //colocar las deducciones
        conceptos.First;
        while Not conceptos.Eof do
        begin
          if conceptos.FieldByName('Modo').AsString = 'DEDUCCION' then
          begin
            Excel.Range[ColumnaNombre(columna) + '9'].Value := conceptos.FieldByName('Titulo').AsString;
            columna := columna + 1;
          end;

          conceptos.Next;
        end;

        Excel.Range[ColumnaNombre(columna) + '8'].Value :=       'TOTAL';
        Excel.Range[ColumnaNombre(columna) + '9'].Value := 'DEDUCCIONES';
        finDeducciones := columna - 1;
        columna        := columna + 1;
        Excel.Range[ColumnaNombre(columna) + '8'].Value :=      'NETO A';
        Excel.Range[ColumnaNombre(columna) + '9'].Value :=       'PAGAR';

        combinarYCentrarDatosEncabezados(Excel, 'H8:' + ColumnaNombre(finPercepciones) + '8');
        Excel.Range['H8'].Value := 'PERCEPCIONES DEL PERIODO';

        combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(inicioDeducciones) + '8:' + ColumnaNombre(finDeducciones) + '8');
        Excel.Range[ColumnaNombre(inicioDeducciones) + '8'].Value := 'DESCUENTOS';
      end;
    finally

      conceptos.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmNominasExcel.combinarYCentrarDatosEncabezados(Excel: Variant;
  rangoColumnas: string);
var
  rangoExcel : Variant;
begin
  //Combina y centra los datos del encabezado con los datos de la empresa
  rangoExcel   := Excel.Range[rangoColumnas];
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

procedure TFrmNominasExcel.crearExcelCalculoNOmina(IdNomina: Integer);
var
  Excel, Libro, Hoja, Rango : Variant;
  errorExcel, error : Boolean;
  finPercepciones, inicioDeducciones, finDeducciones : Integer;

begin
  try
    try

      if Not CargarDatosFiltrados(cdListaConceptos, 'IdNomina', [IdNomina]) then
        raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_listaconceptos_nomina']);

      if cdListaConceptos.Active then
        cdListaConceptos.Refresh
      else
        cdListaConceptos.Open;

      if cdListaConceptos.RecordCount > 0 then
      begin
        //Crea archivo de excel con los calculos de la nomina
        try
          errorExcel          := False;
          Excel := CreateOleObject('Excel.Application');
          Excel.Visible       :=  True;
          Excel.displayAlerts := False;
          Excel.WorkBooks.Add;
          Libro := Excel.WorkBooks[1];
          Hoja  :=    Libro.Sheets[1];
          Hoja.Select;
        except
          on e : Exception do
          begin
            errorExcel := True;
            MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
          end;
        end;

        //Si no hay error, entonces generar el reporte de Calculo de Nomina
        if Not errorExcel then
        begin
          cabeceraExcelCalculoNomina(Excel, cdTmpNomina.FieldByName('TituloGeneral').AsString,
                                    cdTmpNomina.FieldByName('Titulo').AsString, DateToStr(cdTmpNomina.FieldByName('FechaPagoNomina').AsDateTime),
                                    ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').asString);

          columnasDelCuerpo(Excel, IdNomina, finPercepciones, inicioDeducciones, finDeducciones);

          datosDelCuerpo(Excel, IdNomina, finPercepciones, inicioDeducciones, finDeducciones);

          //Poner color morado a las cabeceras de las percepciones
          colorCeldas(Excel, 'H8:' + ColumnaNombre(finPercepciones) + '9', 10498160, 0, True);

          //Poner color gris a la cabecera total de percepciones
          colorCeldas(Excel, ColumnaNombre(finPercepciones + 1) + '8' + ':' + ColumnaNombre(finPercepciones + 1) + '9', 1, -0.249977111117893, False);

          //Poner color Rosa Fosforecente a las cabeceras de las deducciones
          colorCeldas(Excel, ColumnaNombre(inicioDeducciones) + '8' + ':' + ColumnaNombre(finDeducciones) + '9', 6684927, 0, True);

          //Poner color gris al total de deducciones y Neto a pagar
          colorCeldas(Excel, ColumnaNombre(finDeducciones + 1) + '8' + ':' + ColumnaNombre(finDeducciones + 2) + '9', 1, -0.249977111117893, False);

          //Poner el color Azul Verdoso con el texto "NOMINA"
          colorCeldas(Excel, 'G7:' + ColumnaNombre(finDeducciones + 2) + '7', 13434624, 0, True);
          combinarYCentrarDatosEncabezados(Excel, 'G7:' + ColumnaNombre(finDeducciones + 2) + '7');
          Excel.Range['G7'].Value := 'NÓMINA';
          fuenteTexto(Excel, 'G7', 'Arial', 9, 2, False, True);

          //Poner de color gris las cabeceras con los datos personales del empleado
          colorCeldas(Excel, 'A8:G9', 1, -0.249977111117893, False);
        end;
      end
      else
        MessageDlg('No hay registros para imprimir', mtInformation, [mbOk], 0);
    finally
      try
        //Excel.Quit;
      except
        ;
      end;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmNominasExcel.CrearNiveles(ColIni, FilaInicio: Integer;
  Titulo, AgrupaRegPat, AgrupaFormaPago, Separador: String);
begin
  if not Assigned(NivelDesglose) then
    NivelDesglose := TMisDesgloses.Create;

  DetDesglose := TDetDes.Create;

  DetDesglose.ColumnaInicial  := ColIni;
  DetDesglose.FilaInicial := FilaInicio;
  DetDesglose.Titulo          := Titulo;
  DetDesglose.AgrupaRegPat    :=    AgrupaRegPat;
  DetDesglose.AgrupaFormaPago := AgrupaFormaPago;
  DetDesglose.Separador    := Separador;

  NivelDesglose.AddObject(DetDesglose.Titulo, DetDesglose);
end;

procedure TFrmNominasExcel.cuerpoReporteAsimilados(Excel: Variant;
  IdNomina: Integer);
const
  arrayCampos : array[1 .. 5] of string = ('AutoInc', 'NombreCompleto', 'Neto', 'NumeroDecuenta', 'Banco');
  arrayTotalesNomina : array [1 .. 12] of string = ('NÓMINA', '', 'COMISIÓN 4%', 'SUBTOTAL', 'IVA', 'TOTAL', 'FACTURA NUM.',
                                                    'BANCO PROPIO', 'BANCO CLIENTE', 'FECHA DE DEPOSITO CLIENTE',
                                                    'FECHA DE TRASPASO SOE', 'FECHA Y HORA AUTORIZADA PARA COBRO');
var
  numeroDeEmpleado, IdPersonalAnterior, Columna, Fila, i, FilaInicioDespliegue : Integer;
  //nomDetalleNomina : TClientDataset;
  excelRango : Variant;
  formula    :  string;
  elaboro, reviso, autorizo, VoBo : string;
  cargoElaboro, cargoReviso, cargoAutorizo, cargoVoBo : string;
begin
  try
    //Coloca los datos de los empleados para el formato de Asimilados
    //Columnas de Cuerpo
    Excel.Range['B11'].Value := 'SOCIO(nombre completo)';
    Excel.Range['C11'].Value :=     'INGRESOS';
    Excel.Range['D11'].Value := 'CLABE/CUENTA';
    Excel.Range['E11'].Value :=        'BANCO';

    fuenteLetras(Excel, 'B11:E11', 'Arial', 9, True);

    if Not CargarDatosFiltrados(nomDetalleNomina, 'IdTipoNomina, ListaNominas', [TTipoNomina(tsTipos.Properties.Tabs.Objects[tsTipos.Properties.TabIndex]).IdTipoNomina,
                                                  Seleccionados]) then
      raise InteligentException.CreateByCode(6, ['Error Message']);

    nomDetalleNomina.Open;
    numeroDeEmpleado := 1;

    if nomDetalleNomina.RecordCount > 0 then
    begin
      IdPersonalAnterior := 0;
      nomDetalleNomina.First;
      Fila := 12;
      while Not nomDetalleNomina.Eof do
      begin
        if (IdPersonalAnterior <> nomDetalleNomina.FieldByName('IdPersonal').AsInteger) or
           (IdPersonalAnterior = 0) then
        begin
          for Columna := 1 to 5 do
          begin
            if arrayCampos[Columna] = 'AutoInc' then
            begin
              Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := IntToStr(numeroDeEmpleado);
              fuenteLetras(Excel, ColumnaNombre(Columna) + IntToStr(Fila), 'Arial', 9, True);
            end
            else
            begin
              if arrayCampos[Columna] = 'Neto' then
              begin
                Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := FloatToStr(RoundTo(StrToFloat(nomDetalleNomina.FieldByName(arrayCampos[Columna]).AsString), -2));
                ExcelRango := Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)];
                ExcelRango.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';
              end
              else
              begin
                if arrayCampos[Columna] = 'NumeroDecuenta' then
                begin
                  formatoTextoPlano(Excel, ColumnaNombre(Columna) + IntToStr(Fila), nomDetalleNomina.FieldByName(arrayCampos[Columna]).AsString);
                end
                else
                  Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := nomDetalleNomina.FieldByName(arrayCampos[Columna]).AsString;
              end;
            end;
          end;
          numeroDeEmpleado := numeroDeEmpleado + 1;
          Fila := Fila + 1;
          IdPersonalAnterior := nomDetalleNomina.FieldByName('IdPersonal').AsInteger;
        end;

        nomDetalleNomina.Next;
      end;

      //Colocar los Totales
      Excel.Range['B' + IntToStr(Fila)].Value := 'TOTALES';
      fuenteLetras(Excel, 'B' + IntToStr(Fila), 'Arial', 9, True);
      combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila));

      formula := '=SUM(R[-' + IntToStr(Fila - 12) + ']C:R[-1]C';
      ExcelRango     :=       Excel.Range['C' + IntToStr(Fila)];
      SetFormula(excelRango, formula);

      //Poner bordes al cuerpo del reporte
      bordesCeldas(Excel, 'B11:' + 'E' + IntToStr(Fila - 1), False);
      bordesCeldas(Excel, 'B' + IntToStr(Fila) + ':' + 'C' + IntToStr(Fila), False);

      if cdFirmantes.Active then
        cdFirmantes.Refresh
      else
        cdFirmantes.Open;

      if cdFirmantes.RecordCount > 0 then
      begin
        cdFirmantes.First;
        while Not cdFirmantes.Eof do
        begin
          if (cdFirmantes.FieldByName('Accion').AsString = 'REALIZO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            elaboro := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoElaboro := cdFirmantes.FieldByName('TituloCargo').AsString
          end else if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            reviso := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoReviso := cdFirmantes.FieldByName('TituloCargo').AsString
          end else if (cdFirmantes.FieldByName('Accion').AsString = 'VOBO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            VoBo := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoVoBo := cdFirmantes.FieldByName('TituloCargo').AsString
          end else if (cdFirmantes.FieldByName('Accion').AsString = 'AUTORIZO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            Autorizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoAutorizo := cdFirmantes.FieldByName('TituloCargo').AsString;
          end;

          cdFirmantes.Next;
        end;
      end;

      //Colocar los firmantes
      Excel.Range['D' + IntToStr(Fila + 2)].Value :=     'ELABORA';
      Excel.Range['D' + IntToStr(Fila + 5)].Value :=      elaboro;
      Excel.Range['D' + IntToStr(Fila + 6)].Value := cargoElaboro;
      negritas(Excel, 'D' + IntToStr(Fila + 2));

      Excel.Range['D' + IntToStr(Fila + 9)].Value :=     'REVISA';
      Excel.Range['D' + IntToStr(Fila + 12)].Value :=      reviso;
      Excel.Range['D' + IntToStr(Fila + 13)].Value := cargoReviso;
      negritas(Excel, 'D' + IntToStr(Fila + 9));

      Excel.Range['D' + IntToStr(Fila + 17)].Value :=    'AUTORIZO';
      Excel.Range['D' + IntToStr(Fila + 20)].Value :=      autorizo;
      Excel.Range['D' + IntToStr(Fila + 21)].Value := cargoAutorizo;
      negritas(Excel, 'D' + IntToStr(Fila + 17));

      Excel.Range['A' + IntToStr(Fila + 17)].Value :=   'Vo.Bo';
      Excel.Range['A' + IntToStr(Fila + 20)].Value :=      VoBo;
      Excel.Range['A' + IntToStr(Fila + 21)].Value := cargoVoBo;
      negritas(Excel, 'A' + IntToStr(Fila + 17));

      Fila := Fila + 3;
      FilaInicioDespliegue := Fila;

      //Colocar el valor en Nomina
      Excel.Range['C' + IntToStr(Fila)].Value     :=        Excel.Range['C' + IntToStr(Fila - 3)].Value;
      Excel.Range['C' + IntToStr(Fila + 2)].Value :=     Excel.Range['C' + IntToStr(Fila)].Value * 0.04;  //Comision 4%
      Excel.Range['C' + IntToStr(Fila + 3)].Value :=     Excel.Range['C' + IntToStr(Fila + 2)].Value + Excel.Range['C' + IntToStr(Fila)].Value; //Subtotal
      Excel.Range['C' + IntToStr(Fila + 4)].Value := Excel.Range['C' + IntToStr(Fila + 3)].Value * 0.16; //IVA
      Excel.Range['C' + IntToStr(Fila + 5)].Value := Excel.Range['C' + IntToStr(Fila + 4)].Value + Excel.Range['C' + IntToStr(Fila + 3)].Value;

      //Colocar los totales de la Nomina(el despliegue de la nomina)
      for i := 1 to Length(arrayTotalesNomina) do
      begin
        Excel.Range['B' + IntToStr(Fila)].Value := arrayTotalesNomina[i];
        Fila := Fila + 1;
      end;

      bordesCeldas(Excel, 'B' + IntToStr(FilaInicioDespliegue) + ':' + 'C' + IntToStr(Fila - 1), False);
      ExcelRango :=  Excel.Range['C' + IntToStr(FilaInicioDespliegue) + ':' + 'C' + IntToStr(Fila - 1)];
      excelRango.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmNominasExcel.cuerpoReporteResumen(Excel: Variant;
  IdNomina: Integer);
const
  columnasCuerpo : array[1 .. 7] of string = ('ID', 'APELLIDO PATERNO', 'APELLIDO MATERNO', 'NOMBRE', 'PUESTO', 'DÍAS', 'SUELDO DIARIO');
  camposBD       : array[2 .. 7] of string = ('APaterno', 'AMaterno', 'Nombres', 'TituloCargo', 'Dias', 'SalarioDiario');
var
  i, idPersonalAnterior, Fila, Columna, noEmpleado, inicioPercepciones, finPercepciones, inicioDeducciones, finDeducciones, fin,
  inicioPercepciones2, inicioDeducciones2 : Integer;
  formula : string;
  rangoExcel : Variant;
  reviso, VoBo, Autorizo, cargoReviso, cargoVoBo, cargoAutorizo : string;
begin
  try
    //Genera el cuerpo del reporte "Resumen"
    for i := 1 to Length(columnasCuerpo) do
    begin
      Excel.Range[ColumnaNombre(i) + '2'].Value := columnasCuerpo[i];
    end;

    if Not CrearConjunto(cdListaConceptos, 'nom_listaconceptos_nomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nom_listaconceptos_nomina']);

    if Not CargarDatosFiltrados(cdListaConceptos, 'IdNomina', [IdNomina]) then
      raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_listaconceptos_nomina']);

    cdListaConceptos.Open;

    inicioPercepciones := i;
    //Colocar las columnas(cabeceras) de Percepciones
    cdListaConceptos.First;
    while Not cdListaConceptos.Eof do
    begin
      if cdListaConceptos.FieldByName('Modo').AsString = 'PERCEPCION' then
      begin
        Excel.Range[ColumnaNombre(i) + '2'].Value := cdListaConceptos.FieldByName('Titulo').AsString;
        i := i + 1;
      end;

      cdListaconceptos.Next;
    end;

    finPercepciones := i - 1;

    inicioDeducciones :=   i;
    //Colocar las columnas(cabeceras) de Deducciones
    cdListaconceptos.First;
    while Not cdListaConceptos.Eof do
    begin
      if cdListaConceptos.FieldByName('Modo').AsString = 'DEDUCCION' then
      begin
        Excel.Range[ColumnaNombre(i) + '2'].Value := cdListaConceptos.FieldByName('Titulo').AsString;
        i := i + 1;
      end;

      cdListaConceptos.Next;
    end;

    finDeducciones := i - 1;

    fin := i;

    Excel.Range[ColumnaNombre(i) + '2'].Value := 'TOTAL';

    if Not CargarDatosFiltrados(cdDatosExcel, 'ListaNominas', [Seleccionados]) then
      raise InteligentException.CreateByCode(6, ['ListaNominas', 'nom_detallenomina_excel']);

    cdDatosExcel.Open;

    //Poner datos de las primeras columnas
    idPersonalAnterior := 0;
    noEmpleado         := 1;
    Fila               := 3;
    cdDatosExcel.First;
    while Not cdDatosExcel.Eof do
    begin
      if (cdDatosExcel.FieldByName('IdPersonal').AsInteger <> idPersonalAnterior) or (idPersonalAnterior = 0) then
      begin
        for Columna := 1 to Length(columnasCuerpo) do
        begin
          if Columna = 1 then
          begin
            Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := IntToStr(noEmpleado);
            if (noEmpleado mod 2) = 0 then
            begin
              colorCeldas(Excel, 'A' + IntToStr(Fila) + ':' + 'F' + IntToStr(Fila), 10397206, 0, True);
            end;
          end
          else
          begin
            Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := cdDatosExcel.FieldByName(camposBD[Columna]).AsString;
            Excel.Range[ColumnaNombre(fin) + IntToStr(Fila)].Value     :=            cdDatosExcel.FieldByName('Neto').AsString;
          end;

          inicioPercepciones2 := inicioPercepciones;
          inicioDeducciones2  :=  inicioDeducciones;
        end;

        noEmpleado := noEmpleado + 1;
        Fila := Fila + 1;
        idPersonalAnterior := cdDatosExcel.FieldByName('IdPersonal').AsInteger;
      end;

      cdListaConceptos.First;
      while Not cdListaConceptos.Eof do
      begin
        if (cdListaConceptos.FieldByName('Modo').AsString = 'PERCEPCION') and
           (cdListaConceptos.FieldByName('CodigoConcepto').AsString = cdDatosExcel.FieldByName('CodigoConcepto').AsString)then
        begin
          Excel.Range[ColumnaNombre(inicioPercepciones2) + IntToStr(Fila - 1)].Value := cdDatosExcel.FieldByName('Importe').AsString;
          inicioPercepciones2 := inicioPercepciones2 + 1;
        end
        else
          Excel.Range[ColumnaNombre(inicioPercepciones2) + IntToStr(Fila - 1)].Value := 0;

        cdListaConceptos.Next;
      end;

      cdListaConceptos.First;
      while Not cdListaConceptos.Eof do
      begin
        if (cdListaConceptos.FieldByName('Modo').AsString = 'DEDUCCION') and
           (cdListaConceptos.FieldByName('CodigoConcepto').AsString = cdDatosExcel.FieldByName('CodigoConcepto').AsString)then
        begin
          Excel.Range[ColumnaNombre(inicioDeducciones2) + IntToStr(Fila - 1)].Value := cdDatosExcel.FieldByName('Importe').AsString;
          inicioDeducciones2 := inicioDeducciones2 + 1;
        end;

        cdListaConceptos.Next;
      end;

      cdDatosExcel.Next;
    end;

    //Colocar los Totales
    for i := 7 to fin do
    begin
      formula := '=SUM(R[-' + IntToStr(noEmpleado - 1) + ']C:R[-1]C)';
      rangoExcel := Excel.Range[ColumnaNombre(i) + IntToStr(Fila)];
      SetFormula(rangoExcel, formula);
    end;

    //Formato para los Totales(Sumatorias en negritas)
    fuenteLetras(Excel, 'G' + IntToStr(Fila) + ':' + ColumnaNombre(fin) + IntToStr(Fila), 'Calibri', 9, True);
    bordesSemiPunteados(Excel, 'G' + IntToStr(Fila) + ':' + ColumnaNombre(fin) + IntToStr(Fila));
    formatoConSignoDePesos(Excel, 'G' + IntToStr(Fila) + ':' + ColumnaNombre(fin) + IntToStr(Fila));

    //Buscar los firmantes en la tabla de firmantes excel
    if cdFirmantes.Active then
      cdFirmantes.Refresh
    else
      cdFirmantes.Open;

    reviso := '';
    VoBo := '';
    Autorizo := '';

    if cdFirmantes.RecordCount > 0 then
    begin
      cdFirmantes.First;
      while Not cdFirmantes.Eof do
      begin
        if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO') and
           (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
        begin
          reviso := cdFirmantes.FieldByName('NombreFirmante').AsString;
          cargoReviso := cdFirmantes.FieldByName('TituloCargo').AsString
        end else if (cdFirmantes.FieldByName('Accion').AsString = 'VOBO') and
           (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
        begin
          VoBo := cdFirmantes.FieldByName('NombreFirmante').AsString;
          cargoVoBo := cdFirmantes.FieldByName('TituloCargo').AsString
        end else if (cdFirmantes.FieldByName('Accion').AsString = 'AUTORIZO') and
           (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
        begin
          Autorizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
          cargoAutorizo := cdFirmantes.FieldByName('TituloCargo').AsString;
        end;

        cdFirmantes.Next;
      end;
    end;

    //Colocar los firmantes
    //REVISO
    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 2) + ':' + 'D' + IntToStr(Fila + 2));
    Excel.Range['B' + IntToStr(Fila + 2)].Value := 'REVISÓ';
    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 4) + ':' + 'D' + IntToStr(Fila + 4));
    lineaInferior(Excel, 'B' + IntToStr(Fila + 4) + ':' + 'D' + IntToStr(Fila + 4));
    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 5) + ':' + 'D' + IntToStr(Fila + 5));
    Excel.Range['B' + IntToStr(Fila + 5) + ':' + 'D' + IntToStr(Fila + 5)].Value := reviso;
    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6));
    Excel.Range['B' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6)].Value := cargoReviso;

    //Vo. Bo.
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 2) + ':' + 'G' + IntToStr(Fila + 2));
    Excel.Range['F' + IntToStr(Fila + 2)].Value := 'Vo. Bo.';
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 4) + ':' + 'G' + IntToStr(Fila + 4));
    lineaInferior(Excel, 'F' + IntToStr(Fila + 4) + ':' + 'G' + IntToStr(Fila + 4));
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 5) + ':' + 'G' + IntToStr(Fila + 5));
    Excel.Range['F' + IntToStr(Fila + 5) + ':' + 'G' + IntToStr(Fila + 5)].Value := VoBo;
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6));
    Excel.Range['F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6)].Value := cargoVoBo;

    //Autorizo
    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 2) + ':' + 'K' + IntToStr(Fila + 2));
    Excel.Range['I' + IntToStr(Fila + 2)].Value := 'AUTORIZO';
    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 4) + ':' + 'K' + IntToStr(Fila + 4));
    lineaInferior(Excel, 'I' + IntToStr(Fila + 4) + ':' + 'K' + IntToStr(Fila + 4));
    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 5) + ':' + 'K' + IntToStr(Fila + 5));
    Excel.Range['I' + IntToStr(Fila + 5) + ':' + 'K' + IntToStr(Fila + 5)].Value := autorizo;
    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 6) + ':' + 'K' + IntToStr(Fila + 6));
    Excel.Range['I' + IntToStr(Fila + 6) + ':' + 'K' + IntToStr(Fila + 6)].Value := cargoAutorizo;

    //Estirar ancho de la Fila 1
    estirarFila(Excel, '1:1', 24);

    //Estirar ancho de la Fila 2
    estirarFila(Excel, '2:2', 30);

    alinearTexto(Excel, 'A2:' + ColumnaNombre(fin) + '2', 'enmedio', 'centro', True);

    estirarColumnas(Excel, 'A:' + ColumnaNombre(fin));

    //Poner color a las columnas azules
    colorCeldas(Excel, 'A2:' + ColumnaNombre(fin) + '2', 13145891, 0, True);
    fuenteTexto(Excel, 'A2:' + ColumnaNombre(fin) + '2', 'Calibri', 9, 1, False, True);

    //Fuente de los datos
    fuenteLetras(Excel, 'A3:' + ColumnaNombre(fin) + IntToStr(Fila - 1), 'Calibri', 9, False);

    //Poner bordes semipunteados
    bordesSemiPunteados(Excel, 'A3:' + ColumnaNombre(fin) + IntToStr(Fila - 1));

    //Poner signo de pesos a los datos
    formatoConSignoDePesos(Excel, 'G3:' + ColumnaNombre(fin) + IntToStr(Fila - 1));

    filtros(Excel, 'A2:' + ColumnaNombre(fin) + '2');
  finally
    cdDatosExcel.Close;
    cdListaConceptos.Destroy;
  end;
end;

procedure TFrmNominasExcel.cxButton1Click(Sender: TObject);
var cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if cdDesgRegPat.ProviderName = '' then
        if not CrearConjunto(cdDesgRegPat, 'nom_detallenomina_desglosespatronales', ccCatalog) then
          raise inteligentException.CreateByCode(5, ['nom_detallenomina_desglosespatronales']);

      if cdRegPat.ProviderName = '' then
        if not CrearConjunto(cdRegPat, 'nom_detallenomina_desglosespatronales', ccSelect) then
          raise inteligentException.CreateByCode(5, ['nom_detallenomina_desglosespatronales']);

      if cdDesgConceptos.ProviderName = '' then
        if not CrearConjunto(cdDesgConceptos, 'nom_detallenomina_desglosespatronales', ccSelect) then
          raise inteligentException.CreateByCode(5, ['nom_detallenomina_desglosespatronales']);

      exportarAExcelDinamico(cdReportes.FieldByName('IdReporte').AsInteger, '');
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
  end;
end;

procedure TFrmNominasExcel.CxDbGridNominasDblClick(Sender: TObject);
begin
  dxBtnSeleccionReporteClick(nil);
end;

procedure TFrmNominasExcel.datosDelCuerpo(Excel: Variant; IdNomina,
  finPercepciones, inicioDeducciones, finDeducciones: Integer);
const
  camposPersonales : array [1 .. 6] of string = ('APaterno', 'AMaterno', 'Nombres', 'NumeroDeCuenta', 'Banco', 'Dias');
var
  Fila, columna, idPersonalAnterior, i, jornada : Integer;
  formula : string;
  rango  : Variant;
  totalPercepciones, totalDeducciones : Double;
  newSalario, NewSalarioIntegrado, NewAguinaldo, NewVacaciones, NewPrimaVacacional : Real;
  barraProgresoActivada : Boolean;
  realizo, reviso1, reviso2, VoBo, Autorizo : string;
  cargoRealizo, cargoReviso1, cargoReviso2, cargoVoBo, cargoAutorizo : string;
begin
  //Coloca los datos del calculo de la nomina en el cuerpo del reporte
  try
    try
//      if Not CargarDatosFiltrados(cdlistaConceptos, 'IdNomina', [IdNomina]) then
//        raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_listaconceptos_nomina']);
//
//      if cdListaConceptos.Active then
//        CdlistaConceptos.Refresh
//      else
//        CdlistaConceptos.Open;

      if Not CargarDatosFiltrados(cdDatosExcel, 'ListaNominas', [Seleccionados]) then
        raise InteligentException.CreateByCode(6, ['ListaNominas', 'nom_detallenomina_excel']);

      if cdDatosExcel.Active then
        cdDatosExcel.Refresh
      else
        cdDatosExcel.Open;

      if cdDatosExcel.RecordCount > 0 then
      begin
        cdDatosExcel.First;
        idPersonalAnterior :=  0;
        Fila := 10;
        barraProgresoActivada := False;

        while Not cdDatosExcel.Eof do
        begin
          if (idPersonalAnterior <> cdDatosExcel.FieldByName('idPersonal').AsInteger) or (idPersonalAnterior = 0) then
          begin
            //Colocar los datos personales
            {$REGION 'DATOS PERSONALES'}
            for columna := 1 to 6 do
            begin
              if camposPersonales[Columna] = 'NumeroDeCuenta' then
                formatoTextoPlano(Excel, ColumnaNombre(columna) + IntToStr(Fila), cdDatosExcel.FieldByName(camposPersonales[columna]).AsString)
              else
                Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := cdDatosExcel.FieldByName(camposPersonales[columna]).AsString;
            end;

            newSalario          := 0;
            NewSalarioIntegrado := 0;
            NewAguinaldo        := 0;
            NewVacaciones       := 0;
            NewPrimaVacacional  := 0;
            jornada := 0;

            if TTipoNomina(tsTipos.Properties.Tabs.Objects[tsTipos.Properties.TabIndex]).diasDescanso = 0 then  //Si es una nomina quincenal
            begin
              if Not cdDatosExcel.FieldByName('horasXIdPersonalImss').IsNull then
              begin
                jornada := cdDatosExcel.FieldByName('horasXIdPersonalImss').AsInteger
              end else if Not cdDatosExcel.FieldByName('horasXIdCargo').IsNull then
              begin
                jornada := cdDatosExcel.FieldByName('horasXIdCargo').AsInteger
              end else if Not cdDatosExcel.FieldByName('horasXIdTipoNomina').IsNull then
              begin
                jornada := cdDatosExcel.FieldByName('horasXIdTipoNomina').AsInteger
              end;

              if Not CargarDatosFiltrados(cdImss, 'IdPersonalImss', [cdDatosExcel.FieldByName('idPersonal').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['Registros de Personal ante el IMSS', -9, 'IdPersonalImss']);

              if cdImss.Active then
                cdImss.Refresh
              else
                cdImss.Open;

              try
                //Obtener el Neto quincenal de personal de Tierra haciendo una proyeccion de Nomina
                GenerarCalculoVirtual(
                                      Self, -1,
                                      cdOrganizacion.FieldByName('IdOrganizacion').AsInteger,
                                      cdOrganizacion.FieldByName('FactorPrimaDominical').AsFloat,
                                      cdOrganizacion.FieldByName('FactorPrimaVacacional').AsFloat,
                                      cdSalMinDF.FieldByName('Salario').AsFloat,
                                      cdOrganizacion.FieldByName('SalMinGenZona').AsFloat,
                                      cdOrganizacion.FieldByName('SeguroVidaInfonavit').AsFloat,
                                      cdOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsInteger,
                                      cdOrganizacion.FieldByName('DiasExcentoAguinaldo').AsInteger,
                                      cdOrganizacion.FieldByName('NSMTopeIntIMSS').AsInteger,
                                      cdTmpNomina.FieldByName('IdTipoNomina').AsInteger,
                                      cdTmpNomina.FieldByName('DiasTrabajados').AsInteger,
                                      cdTmpNomina.FieldByName('DiasDescanso').AsInteger,
                                      cdTmpNomina.FieldByName('Festivos').AsInteger,
                                      cdTmpNomina.FieldByName('Domingos').AsInteger,
                                      jornada,//8,
                                      cdTmpNomina.FieldByName('InicioSemana').AsString,
                                      cdTmpNomina.FieldByName('IdTipoTablaIspt').AsInteger,
                                      cdTmpNomina.FieldByName('Periodicidad').AsFloat,
                                      cdImss.FieldByName('SalarioDiario').AsFloat, //Salario diario
                                      cdImss.FieldByName('SalarioIntegrado').AsExtended,
                                      StrToDate('01/01/2015'),
                                      StrToDate('15/01/2015'),
                                      1,
                                      mPercepciones,
                                      mDeducciones,
                                      NewSalario,
                                      NewSalarioIntegrado,
                                      NewAguinaldo,
                                      NewVacaciones,
                                      NewPrimaVacacional,
                                      False
                                     );
                barraProgresoActivada := True;
                mPercepciones.Locate('Titulo', 'SUELDO', []);
                Excel.Range['G' + IntToStr(Fila)].Value := mPercepciones.FieldByName('Importe').AsString;
              finally
                gcForma.Visible := False;
              end;
            end
            else
            begin
              //Crear codigo para los de abordo
              Excel.Range['G' + IntToStr(Fila)].Value :=  FloatToStr(RoundTo(cdDatosExcel.FieldByName('importeXGuardia').AsFloat, -2));
            end;

            {$ENDREGION}

            columna := 8;

            //Colocar los Importes de las percepciones
            {$REGION 'PERCEPCIONES'}
            cdlistaConceptos.First;
            while Not cdlistaConceptos.Eof do
            begin
              if cdlistaConceptos.FieldByName('Modo').AsString = 'PERCEPCION' then
              begin
                Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := obtenerPercepcionDeduccion(IdNomina, cdlistaConceptos.FieldByName('IdConcepto').AsInteger, cdDatosExcel.FieldByName('idPersonal').AsInteger);

                columna := columna + 1;
              end;
              cdlistaConceptos.Next;
            end;

            //Sumas las percepciones y ponerlo en el total de percepciones
            formula := '=SUM(RC[-' + IntToStr(columna - 8) + ']:RC[-1])';
            rango := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)];
            SetFormula(rango, formula);

            totalPercepciones := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value;

            //Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := 'PENDIENTE TOTAL DE PERCEPCIONES';
            columna := columna + 1;
            {$ENDREGION}

            //Colocar los Importes de las deducciones
            {$REGION 'DEDUCCIONES'}
            cdlistaConceptos.First;
            while Not cdlistaConceptos.Eof do
            begin
              if cdlistaConceptos.FieldByName('Modo').AsString = 'DEDUCCION' then
              begin
                Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := obtenerPercepcionDeduccion(IdNomina, cdlistaConceptos.FieldByName('IdConcepto').AsInteger, cdDatosExcel.FieldByName('idPersonal').AsInteger);

                columna := columna + 1;
              end;

              cdlistaConceptos.Next;
            end;

            //Colocar el total de la suma de los importes de las deducciones
            formula := '=SUM(RC[-' + IntToStr(columna - inicioDeducciones) + ']:RC[-1]';
            rango := Excel.Range[ColumnaNombre(finDeducciones + 1) + IntToStr(Fila)];
            setFormula(rango, formula);

            totalDeducciones := Excel.Range[ColumnaNombre(finDeducciones + 1) + IntToStr(Fila)].Value;

            columna := columna + 1;
            {$ENDREGION}

            //Colocar el Neto a Pagar(Es el importe total de las percepciones menos el importe total de las deducciones)
            Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := totalPercepciones - totalDeducciones;

            Fila := Fila + 1;
          end;

          idPersonalAnterior := cdDatosExcel.FieldByName('idPersonal').AsInteger;
          cdDatosExcel.Next;
        end;

        Excel.Range['E' + IntToStr(Fila)].Value := 'TOTALES';

        //Colocar la suma de los totales en forma vertical
        for i := 8 to columna do
        begin
          formula := '=SUM(R[-' + IntToStr(Fila - 1) + ']C:R[-1]C';
          rango  := Excel.Range[ColumnaNombre(i) + IntToStr(Fila)];
          SetFormula(rango, formula);
        end;

        if cdFirmantes.Active then
          cdFirmantes.Refresh
        else
          cdFirmantes.Open;

        realizo := '';
        reviso1 := '';
        reviso2 := '';
        VoBo := '';
        Autorizo := '';

        if cdFirmantes.RecordCount > 0 then
        begin
          cdFirmantes.First;
          while Not cdFirmantes.Eof do
          begin
            if (cdFirmantes.FieldByName('Accion').AsString = 'REALIZO') and
               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
            begin
              realizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
              cargoRealizo := cdFirmantes.FieldByName('TituloCargo').AsString
            end else if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO') and
               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
            begin
              reviso1 := cdFirmantes.FieldByName('NombreFirmante').AsString;
              cargoReviso1 := cdFirmantes.FieldByName('TituloCargo').AsString
            end else if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO2') and
               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
            begin
              reviso2 := cdFirmantes.FieldByName('NombreFirmante').AsString;
              cargoReviso2 := cdFirmantes.FieldByName('TituloCargo').AsString
            end else if (cdFirmantes.FieldByName('Accion').AsString = 'VOBO') and
               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
            begin
              VoBo := cdFirmantes.FieldByName('NombreFirmante').AsString;
              cargoVoBo := cdFirmantes.FieldByName('TituloCargo').AsString
            end else if (cdFirmantes.FieldByName('Accion').AsString = 'AUTORIZO') and
               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
            begin
              Autorizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
              cargoAutorizo := cdFirmantes.FieldByName('TituloCargo').AsString;
            end;

            cdFirmantes.Next;
          end;
        end;

        //Colocar los firmantes
        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 6));
        Excel.Range['A' + IntToStr(Fila + 6)].Value := 'REALIZÓ';
        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 8));
        lineaInferior(Excel, 'A' + IntToStr(Fila + 8));
        Excel.Range['A' + IntToStr(Fila + 9)].Value := realizo;
        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 10));
        Excel.Range['A' + IntToStr(Fila + 10)].Value := cargoRealizo;

        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6));
        Excel.Range['C' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6)].Value := 'REVISÓ';
        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 8) + ':' + 'D' + IntToStr(Fila + 8));
        lineaInferior(Excel, 'C' + IntToStr(Fila + 8) + ':' + 'D' + IntToStr(Fila + 8));
        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 9) + ':' + 'D' + IntToStr(Fila + 9));
        Excel.Range['C' + IntToStr(Fila + 9) + ':' + 'D' + IntToStr(Fila + 9)].Value := reviso1;
        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 10) + ':' + 'D' + IntToStr(Fila + 10));
        Excel.Range['C' + IntToStr(Fila + 10) + ':' + 'D' + IntToStr(Fila + 10)].Value := cargoReviso1;

        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6));
        Excel.Range['F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6)].Value := 'REVISÓ';
        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 8) + ':' + 'G' + IntToStr(Fila + 8));
        lineaInferior(Excel, 'F' + IntToStr(Fila + 8) + ':' + 'G' + IntToStr(Fila + 8));
        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 9) + ':' + 'G' + IntToStr(Fila + 9));
        Excel.Range['F' + IntToStr(Fila + 9) + ':' + 'G' + IntToStr(Fila + 9)].Value := reviso2;
        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 10) + ':' + 'G' + IntToStr(Fila + 10));
        Excel.Range['F' + IntToStr(Fila + 10) + ':' + 'G' + IntToStr(Fila + 10)].Value := cargoReviso2;

        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 6) + ':' + 'J' + IntToStr(Fila + 6));
        Excel.Range['I' + IntToStr(Fila + 6) + ':' + 'J' + IntToStr(Fila + 6)].Value := 'Vo. Bo.';
        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 8) + ':' + 'J' + IntToStr(Fila + 8));
        lineaInferior(Excel, 'I' + IntToStr(Fila + 8) + ':' + 'J' + IntToStr(Fila + 8));
        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 9) + ':' + 'J' + IntToStr(Fila + 9));
        Excel.Range['I' + IntToStr(Fila + 9) + ':' + 'J' + IntToStr(Fila + 9)].Value := VoBo;
        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 10) + ':' + 'J' + IntToStr(Fila + 10));
        Excel.Range['I' + IntToStr(Fila + 10) + ':' + 'J' + IntToStr(Fila + 10)].Value := cargoVoBo;

        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 6) + ':' + 'M' + IntToStr(Fila + 6));
        Excel.Range['L' + IntToStr(Fila + 6) + ':' + 'M' + IntToStr(Fila + 6)].Value := 'AUTORIZÓ';
        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 8) + ':' + 'M' + IntToStr(Fila + 8));
        lineaInferior(Excel, 'L' + IntToStr(Fila + 8) + ':' + 'M' + IntToStr(Fila + 8));
        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 9) + ':' + 'M' + IntToStr(Fila + 9));
        Excel.Range['L' + IntToStr(Fila + 9) + ':' + 'M' + IntToStr(Fila + 9)].Value := autorizo;
        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 10) + ':' + 'M' + IntToStr(Fila + 10));
        Excel.Range['L' + IntToStr(Fila + 10) + ':' + 'M' + IntToStr(Fila + 10)].Value := cargoAutorizo;

        //Combinar y centrar la fila de TOTALES antes del texto
        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila) + ':D' + IntToStr(Fila));

        //Poner gris claro a los datos de las percepciones
        colorCeldas(Excel, ColumnaNombre(finPercepciones + 1) + '10' + ':' + ColumnaNombre(finPercepciones + 1) + IntToStr(Fila - 1), 1, -4.99893185216834E-02, False);

        //Poner gris claro a los datos de deducciones
        colorCeldas(Excel, ColumnaNombre(finDeducciones + 1) + '10' + ':' + ColumnaNombre(finDeducciones + 1) + IntToStr(Fila -1), 1, -4.99893185216834E-02, False);

        //Poner formato con signo de pesos
        Excel.Range['G10:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila)].Select;
        Excel.Selection.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';

        //Poner color amarillo a los datos de las percepciones
        colorCeldas(Excel, 'H10:' + ColumnaNombre(finPercepciones) + IntToStr(Fila - 1), 65535, 0, True);

        //Poner color amarillo a los datos de las Deducciones
        colorCeldas(Excel, ColumnaNombre(inicioDeducciones) + '10:' + ColumnaNombre(finDeducciones) + IntToStr(Fila - 1), 65535, 0, True);

        //Poner azul verdoso a los datos del Neto a Pagar
        colorCeldas(Excel, ColumnaNombre(finDeducciones + 2) + '10:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila - 1), 13434624, 0, True);

        //Poner color a la fila que dice TOTALES
        colorCeldas(Excel, 'A' + IntToStr(Fila) + ':' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila), 1, -0.249977111117893, False);

        //Colocar el 1% de comision debajo del TOTAL del Neto
        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 1)].Value := '1% COMISION';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 1)].Value :=     Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value * 0.01;

        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 2)].Value :=    'SUBTOTAL';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 2)].Value :=     Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value + Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 1)].Value;

        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 3)].Value :=     '16% IVA';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 3)].Value := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 2)].Value * 0.16;

        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 4)].Value :=       'TOTAL';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 4)].Value := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 3)].Value + Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 2)].Value;

        //Poner color el color naranja de los totales (1%comision, subtotal, 16%iva, total).
        colorCeldas(Excel, ColumnaNombre(columna - 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(columna - 1) + IntToStr(Fila + 4), 49407, 0, True);

        //Poner color Rosa fuerte de los totales numericos de (1%comision, subtotal, 16% iva)
        colorCeldas(Excel, ColumnaNombre(columna) + IntToStr(Fila + 1) + ':' + ColumnaNombre(columna) + IntToStr(Fila + 3), 6, 0.599993896298105, False);

        //Poner color rojo quemado al TOTAL
        colorCeldas(Excel, ColumnaNombre(columna) + IntToStr(Fila + 4), 192, 0, True);

        //Poner bordes a las celdas
        bordesCeldas(Excel, 'A7:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila), False);

        //Poner bordes a los totales (1% comision, subtotal, 16% iva, total)
        bordesCeldas(Excel, ColumnaNombre(finDeducciones + 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila + 4), False);
        Excel.Range[ColumnaNombre(finDeducciones + 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila + 4)].Select;
        Excel.Selection.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';

        //Poner la fuente Arial tamano 9 al texto del reporte
        fuenteLetras(Excel, 'A1:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila + 4), 'Arial', 9, False);

        alineacionTextoExcel(Excel, ColumnaNombre(columna - 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(columna - 1) + IntToStr(Fila + 4), -4152, -4107, True);

        //Fuentes
        fuenteLetras(Excel, 'A3:C4', 'Arial', 9, True); //Negritas para el periodo y la fecha de pago de la nomina
        fuenteTexto(Excel, 'A5', 'Arial', 9, 1, True, True); //Negritas,Blanco, Cursiva Nombre de la empresa
        fuenteTexto(Excel, 'A8:' + ColumnaNombre(finDeducciones + 2) + '9', 'Arial', 9, 2, False, True); //Negritas para las cabeceras

        fuenteTexto(Excel, 'H8:' + ColumnaNombre(finPercepciones) + '9', 'Arial', 9, 1, False, True); //Blanco y negritas Cabeceras percepciones
        fuenteTexto(Excel, ColumnaNombre(inicioDeducciones) + '8' + ':' + ColumnaNombre(finDeducciones) + '9', 'Arial', 9, 1, False, True); //Blanco y negritas cabeceras deducciones
        fuenteTexto(Excel, ColumnaNombre(columna) + IntToStr(Fila + 4), 'Arial', 9, 1, False, True); //Blanco y negritas para el total
        fuenteTexto(Excel, 'E' + IntToStr(Fila), 'Arial', 9, 2, False, True); //Negritas al texto (TOTALES)

        //Centrar total Percepciones, totalDeducciones y Neto a Pagar
        alineacionTextoExcel(Excel, ColumnaNombre(finPercepciones + 1) + '8' + ':' + ColumnaNombre(finPercepciones + 1) + '9', -4108, -4107, True);
        alineacionTextoExcel(Excel, ColumnaNombre(finDeducciones + 1) + '8' + ':' + ColumnaNombre(finDeducciones + 1) + '9', -4108, -4107, True);
        alineacionTextoExcel(Excel, ColumnaNombre(finDeducciones + 2) + '8' + ':' + ColumnaNombre(finDeducciones + 2) + '9', -4108, -4107, True);

        Excel.activeWindow.zoom := 75;
        Excel.Cells.Columns.AutoFit;
        Excel.Columns['A:A'].ColumnWidth := 35;
      end;
    finally
      if barraProgresoActivada then
      begin
        gcForma.Destroy;
        gcForma := nil;
      end;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmNominasExcel.dxBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNominasExcel.dxBtnDesgloseGeneralClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if cdCejas.ProviderName = '' then
        if not crearConjunto(cdCejas, 'nom_detallenomina_desglosegeneral', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nom_detallenomina_desglosegeneral']);

      if not CargarDatosFiltrados(cdCejas, 'ListaNominas,SoloCejas', [cdtmpNomina.FieldByName('IdNomina').AsInteger, 'Si']) then
        raise InteligentException.CreateByCode(6, ['nom_detallenomina_desglosegeneral', 'ListaNominas', cdtmpNomina.FieldByName('IdNomina').AsString]);

      if cdCejas.Active then
        cdCejas.Refresh
      else
        cdCejas.Open;

      ExportarAExcelDesglosegral;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmNominasExcel.dxBtnSeleccionReporteClick(Sender: TObject);
begin
  if CxDbGridNominas.Controller.SelectedRowCount > 0 then
    begin
      //ExportarAExcelGeneral('')
      if cdReportes.Active then
        cdReportes.Close;

      if Not CrearConjunto(cdReportes, 'nuc_reporteexcel', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nuc_reporteexcel']);

      if Not CargarDatosFiltrados(cdReportes, 'IdReporte, IdTipoNomina', [-1, cdTmpNomina.FieldByName('IdTipoNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['nuc_reporteexcel', 'IdReporte']);

      if cdReportes.Active then
        cdReportes.Refresh
      else
        cdReportes.Open;

      if cdReportes.RecordCount > 0 then
      begin
        ventanaElegirReporte;
        formularioElegirReporte.ShowModal;
      end
      else
        if InteliDialog.ShowModal('Aviso.','Al parecer no has configurado tus reportes para este tipo de Nómina, ¿Deseas que abra la ventana de configuración?', mtInformation, [mbyes,mbNo], 0) = mryes then
        begin
          Application.CreateForm(TFrmReportesPersonalizados, FrmReportesPersonalizados);
          FrmReportesPersonalizados.Show;
        end;
      //exportarAExcelDinamico(1, '')
    end
  else
    InteliDialog.ShowModal('Aviso', 'Seleccione una nómina de la lista.', mtInformation, [mbOK], 0);
end;

procedure TFrmNominasExcel.encabezadoAsimilados(Excel : Variant; NombreEmpresa, TituloCabecera,
  rangoFechasNomina, nombreOtraEmpresa, ciudad, serviciosPrestadosEn, Al: string);
begin
  //Coloca los datos del encabezado del reporte con formato de Asimilados
  combinarYCentrarDatosEncabezados(Excel, 'A1:D1');
  Excel.Range['A1:D1'].Value :=      NombreEmpresa;

  combinarYCentrarDatosEncabezados(Excel, 'A2:D2');
  Excel.Range['A2:D2'].Value :=     TituloCabecera;

  Excel.Range['A3'].Value :=     'AL PERIODO DEL:';
  colorCeldas(Excel, 'A3', 10066176, 0, True);

  combinarYCentrarDatosEncabezados(Excel, 'B3:F3');
  Excel.Range['B3:F3'].Value :=  rangoFechasNomina;
  colorCeldas(Excel, 'B3:F3', 12619264, 0, True);

  //combinarYCentrarDatosEncabezados(Excel, 'D6:E6');
  //Excel.Range['D6:E6'].Value :=  nombreOtraEmpresa;

  combinarYCentrarDatosEncabezados(Excel, 'A5:B5');
  Excel.Range['A5:B5'].Value :=      NombreEmpresa;

  combinarYCentrarDatosEncabezados(Excel, 'A6:B6');
  Excel.Range['A6:B6'].Value :=             ciudad;

  Excel.Range['B8'].Value := 'SERVICIOS PRESTADOS EN:';
  Excel.Range['B9'].Value :=      serviciosPrestadosEn;
  colorLetras(Excel, 'B9', -3407872, 0, True);
  combinarYCentrarDatosEncabezados(Excel, 'B9:B9');

  Excel.Range['D9'].Value := 'AL:';
  Excel.Range['D10'].Value :=   Al;
  colorLetras(Excel, 'D10', -3407872, 0, False);
  combinarYCentrarDatosEncabezados(Excel, 'D10:D10');

  fuenteLetras(Excel, 'A1:F6', 'Arial', 9, True);

  fuenteLetras(Excel, 'A1:D1', 'Arial', 12, True);
  fuenteTexto(Excel, 'A2:D2', 'Arial', 12, 2, True,False);
  fuenteTexto(Excel, 'B3:F3', 'Arial', 12, 2, False, True);

  Excel.Rows['3:3'].RowHeight := 27;
  combinarYCentrarDatosEncabezados(Excel, 'A3:A3');
  AjustarTexto(Excel, 'A3:A3');
end;

procedure TFrmNominasExcel.ExportarAExcelGeneral(Referencia: String);
var
  Excel, Workbook, Worksheet: Variant;
  Listaid: Tstringlist;
  Campo, Cadena, Modo, Codigo, Titulo, Nombre,Grupo,Cargo, Valor,FNomina,
  regPatronal, idNomina, Imprime: String;
  rowx,colx,idxLista, NumRec,i, columx, x,numLin, ExcelCol: Integer;
  FloatValor: Real;
  cursor : TCursor;
  CadParam: String;
  ValImpuesto, Paso, fValor: Real;
  eu: Integer;
  cdDatos: TClientDataSet; //TOTAL
  prgValor:      Extended;
  fechaExcel   :   string;
  OldCeja      :   String;
  OldIdPersonal : Integer;
  ListaReferencias: TStringList;
  ObjRef        : TObjRef;
  Indice        : Integer;
  nomHorasExtras : String;
  ass: String;
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
  NomMes: Array[1..12, tmMinuscula..tmMayuscula] of String = ((' Ene ', ' ENERO '), (' Feb ', ' FEBRERO '), (' Mar ', ' MARZO '), (' Abr ', ' ABRIL '), (' May ', ' MAYO '), (' Jun ', ' JUNIO '),
                                                              (' Jul ', ' JULIO '), (' Ago ', ' AGOSTO '), (' Sep ', ' SEPTIEMBRE '), (' Oct ', ' OCTUBRE '), (' Nov ', ' NOVIEMBRE '), (' Dic ', ' DICIEMBRE '));
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
  fFinal   :=   StringReplace(fFinal, '  ', ',',[rfReplaceAll, rfIgnoreCase]);
  ff.CommaText :=   fFinal;
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
  //ShowMessage(fechaCompuesta);
  Result := fechaCompuesta;
end;

function existePestana(pestanas: TStringList; nomPestana: string): Boolean;
var
  idx: Integer;
begin
  idx := 0;
  //pestanas := TStringList.Create;
  while idx < pestanas.Count do
  begin
    if pestanas[idx] = nomPestana then
    begin
      idx := pestanas.Count;
      Result :=  True;
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

        // tomar una referencia a la hoja creada
        WorkSheet := WorkBook.WorkSheets[1];

        cdDatos := TClientDataSet.Create(Nil);
        if Not CrearConjunto(cdDatos, 'nom_detallenomina_excel', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);

        if Referencia = '' then
        begin
          // Abrir los datos completos de las nóminas indicadas
          CadParam := '';
          for i:= 0 to CxDbGridNominas.Controller.SelectedRowCount -1 do
          begin
            CxDbGridNominas.DataController.DataSource.DataSet.GotoBookmark(Pointer(CxDbGridNominas.Controller.SelectedRows[i]));
            CadParam := CadParam + CxDbGridNominas.Datacontroller.DataSource.DataSet.FieldByName('IdNomina').AsString + ',';
          end;

          if Not CargarDatosFiltrados(cdDatos, 'ListaNominas', [CadParam]) then
            raise InteligentException.CreateByCode(6, ['Detalle de Nóminas', CadParam, 'Id. Nómina']);
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
              TObjRef(ListaReferencias.Objects[Indice]).Ispt := TObjRef(ListaReferencias.Objects[Indice]).Ispt + StrToFloatDef(cdDatos.FieldByName('Importe').AsString,0);
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
              for i := 3 to 24 do
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
            //showmessage('Row : ' + inttoStr(Rowx) + ' IdPErsonal: ' + cdDatos.FieldByName('IdPersonal').AsString + ' No: ' + IntToStr(eu)) ;
            Inc(eu);

            WorkSheet.cells[RowX, 1] :=  RowX -7;
            WorkSheet.cells[RowX, 2] :=  UpperCase(cdDatos.FieldByName('NombreCompleto').AsString);
            WorkSheet.cells[RowX, 3] :=  cdDatos.FieldByName('Salario').AsString;

            // Colocar las formulas
            WorkSheet.cells[RowX, 16].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+RC[-1]+RC[-2]+RC[-3]+RC[-4]+RC[-6]+RC[-9]+RC[-10]+RC[-11]+RC[-12]';

            WorkSheet.cells[RowX, 22].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+RC[-1]+RC[-2]+RC[-3]+RC[-4]+RC[-5]';

            WorkSheet.cells[RowX, 23].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+RC[-7]-RC[-1]';

            WorkSheet.cells[RowX, 24].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+IF((RC[-7]-RC[-18])<0,ABS(RC[-7]-RC[-18]),0)';
            Excel.ActiveCell.NumberFormat := '#,##0.00';

            WorkSheet.cells[RowX, 25].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+IF((RC[-8]-RC[-19])>0,RC[-8]-RC[-19],0)';
            Excel.ActiveCell.NumberFormat := '#,##0.00';

            if (RowX Mod 5 = 0) or (cdDatos.RecNo = cdDatos.RecordCount) then
            begin
              Excel.ScreenUpdating :=    True;
              WorkSheet.cells[RowX, 1].Select;
              Excel.ScreenUpdating :=   False;
            end;
          end;

          ass :=  VarToStr(AnsiIndexStr(cdDatos.FieldByName('Clave').AsString, ['SUELDO', 'SubsidioDT', 'HorasExtraImporte', 'DiasFestivos', 'DomingosLaborados', 'PrimaDominical', 'Vacaciones', 'PrimaVacacional', 'Aguinaldo', 'ISPTAS', 'IMSSEmpleado', 'PrestamoInfonavit', 'PensionAlimenticia', 'PDx', 'DFEX']));
          case AnsiIndexStr(cdDatos.FieldByName('Clave').AsString, ['SUELDO', 'SubsidioDT', 'HorasExtraImporte', 'DiasFestivos', 'DomingosLaborados', 'PrimaDominical', 'Vacaciones', 'PrimaVacacional', 'Aguinaldo', 'ISPTAS', 'IMSSEmpleado', 'PrestamoInfonavit', 'PensionAlimenticia', 'PDx', 'DFEX']) of
            0:  ExcelCol :=  4;
            1:  ExcelCol :=  5;
            2:  ExcelCol :=  6;
            3:  ExcelCol := 10;
            4:  ExcelCol :=  9;
            5:  ExcelCol :=  7;
            6:  ExcelCol := 12;
            7:  ExcelCol := 13;
            8:  ExcelCol := 14;
            9:  ExcelCol := 17;
            10: ExcelCol := 18;
            11: ExcelCol := 19;
            12: ExcelCol := 21;
            13: ExcelCol :=  8;
            14: ExcelCol := 11;   //Prima Dominical Excenta
            //15: ExcelCol := 8;  //Dia Festivo Excento
          else
            ExcelCol := 0;
          end;

          if ExcelCol > 0 then
          begin
            Try
              FloatValor := StrToFloat(WorkSheet.Cells[RowX, ExcelCol].Value);
            Except
              FloatValor := 0;
            end;
            FloatValor              := FloatValor + Abs(StrToFloat(cdDatos.FieldByName('Importe').AsString));
            WorkSheet.cells[RowX, ExcelCol] := FloatValor;
            WorkSheet.cells[RowX, 20] :=   Abs(StrToFloat(cdDatos.FieldByName('OtrasDeducciones').AsString));
            WorkSheet.cells[RowX, 15] :=  Abs(StrToFloat(cdDatos.FieldByName('OtrasPercepciones').AsString));
          end;

          OldCeja       :=  cdDatos.FieldByName('NombreCeja').AsString;
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

          EncabezadoConcetrado(Referencia, False, WorkSheet, Excel, 0, DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x);

{          if Assigned(ListaTiposNomina) then
            EncabezadoConcetrado(Referencia, False, WorkSheet, Excel, Integer(ListaTiposNomina.Objects[myNewTab]), DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x)
          else
            EncabezadoConcetrado(Referencia, False, WorkSheet, Excel, cdNomina.FieldByName('IdTipoNomina').AsInteger, DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x);
}
          Excel.ScreenUpdating := False;

          RowX := WorkSheet.cells[1, 41].Value;
          WorkSheet.Cells[1, 41].ClearContents;

          if RowX > 0 then
          begin
            // Dar formato al cuadro de datos
            //if Referencia <> '' then
              WorkSheet.Range['A8:X' + IntToStr(RowX+1)].Select;
            //else
              //WorkSheet.Range['A8:V' + IntToStr(RowX +1)].Select;

            Excel.Selection.Borders[xlDiagonalDown].LineStyle  :=   xlNone;
            Excel.Selection.Borders[xlDiagonalUp].LineStyle    :=   xlNone;

            Excel.Selection.Borders[xlEdgeLeft].LineStyle :=  xlContinuous;
            Excel.Selection.Borders[xlEdgeLeft].Weight    :=      xlMedium;

            Excel.Selection.Borders[xlEdgeTop].LineStyle  :=  xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight     :=      xlMedium;

            Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeBottom].Weight    :=     xlMedium;

            Excel.Selection.Borders[xlEdgeRight].LineStyle  := xlContinuous;
            Excel.Selection.Borders[xlEdgeRight].Weight     :=     xlMedium;

            Excel.Selection.Borders[xlInsideVertical].LineStyle   := xlContinuous;
            Excel.Selection.Borders[xlInsideVertical].Weight      :=       xlThin;

            Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideHorizontal].Weight    :=       xlThin;

            WorkSheet.Range['A'+ IntToStr(RowX+1) +':X' + IntToStr(RowX+1)].Select;
            Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight    :=     xlMedium;

            Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideVertical].Weight    :=     xlMedium;

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
            Excel.Selection.VerticalAlignment   := xlCenter;

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
              Excel.Selection.Value   :=  ListaReferencias[i];

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
          Excel.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + 'RESUMEN DE NÓMINAS.xls');
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
          Excel.DisplayAlerts  := True;
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

procedure TFrmNominasExcel.filtros(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  //Pone filtros a las columnas
  rangoExcel := Excel.Range[rango];
  rangoExcel.AutoFilter;
end;

procedure TFrmNominasExcel.formatoConSignoDePesos(Excel: Variant;
  rango: string);
var
  rangoExcel : Variant;
begin
  //Pone formato de signo de pesos a los datos numericos en el archivo de excel
  rangoExcel := Excel.Range[rango];
  rangoExcel.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';
end;

procedure TFrmNominasExcel.formatoTextoPlano(Excel: Variant; rango,
  valor: string);
var
  rangoExcel : Variant;
begin
  //Convierte el formato de las celdas de excel a formato "Texto"
  rangoExcel := Excel.Range[rango];
  rangoExcel.NumberFormat := AnsiChar('@');
  rangoExcel.FormulaR1C1  :=         valor;
end;

procedure TFrmNominasExcel.EncabezadoConcentradoDinamico(Referencia: String;
  SoloEtiquetas: Boolean; WorkSheet, Excel: Variant; DiasDescanso: Integer;
  FechaNomina, FechaTerminoNomina, TituloOrganizacion: String);
begin
  //Encabezado y columnas del reporte de excel dinamico
  Excel.ScreenUpdating := False;

  if SoloEtiquetas then
  begin
    //Dar formato al encabezado con los datos de la empresa.
    combinarYCentrarDatosEncabezados(Excel, 'A1:L1');
    combinarYCentrarDatosEncabezados(Excel, 'A2:L2');
    combinarYCentrarDatosEncabezados(Excel, 'A3:L3');
    combinarYCentrarDatosEncabezados(Excel, 'A4:L4');

    fuenteLetras(Excel, 'A1', 'Arial', 16, True);
    fuenteLetras(Excel, 'A2', 'Arial', 16, True);
    fuenteLetras(Excel, 'A3', 'Bookman Old Style', 14, True);
    fuenteLetras(Excel, 'A4', 'Bookman Old Style', 14, True);

    WorkSheet.cells[1, 1] := CdEncabezado.FieldByName('Valor1').AsString;//'UTILIZACIÓN Y DISTRIBUCIÓN ELECTRICA, S.A. DE C.V.';
    WorkSheet.cells[2, 1] := CdEncabezado.FieldByName('Valor6').AsString;
    if DiasDescanso > 0 then
    begin
      WorkSheet.cells[3, 1] := 'NOMINA PERSONAL A BORDO DEL: ' + FechaNomina + ' AL ' + FechaTerminoNomina;
      WorkSheet.cells[4, 1] := 'PLATAFORMA: ' + TituloOrganizacion;
    end
    ELSE
    begin
      WorkSheet.cells[3, 1] := 'NOMINA PERSONAL FIJO DEL: ' + FechaNomina + ' AL ' + FechaTerminoNomina;
      WorkSheet.cells[4, 1] :=     'MATRIZ: ' + TituloOrganizacion;
    end;
  end;

  Excel.ScreenUpdating := True;
end;

procedure TFrmNominasExcel.EncabezadoConcetrado(Referencia: String; SoloEtiquetas: Boolean; WorkSheet: Variant; Excel: Variant; DiasDescanso: Integer; FechaNomina, FechaTerminoNomina: String; TituloOrganizacion: String; Var Colx: Integer; Var RowX: Integer; Var x: Integer);
procedure Titulo(Rango, Etiqueta: String);
begin
  WorkSheet.Range[Rango].Select;

  if SoloEtiquetas then
  begin
    Excel.Selection.Value := Etiqueta;
    Excel.Selection.Merge;
  end
  else
  begin
    Excel.Selection.Merge;
    Excel.Selection.WrapText := True;
  end;
end;

begin
  Excel.ScreenUpdating := False;

  if SoloEtiquetas then
  begin
    WorkSheet.cells[1, 2] := CdEncabezado.FieldByName('Valor1').AsString;//'UTILIZACIÓN Y DISTRIBUCIÓN ELECTRICA, S.A. DE C.V.';
    WorkSheet.cells[2, 2] := CdEncabezado.FieldByName('Valor6').AsString;
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

     //ENCABEZADO COLUMNAS
    Titulo('A6:A7', 'No.');
    Titulo('B6:B7', 'NOMBRE');
    Titulo('C6:C7', 'SUELDO' + #10 + 'DIARIO');
    Titulo('D6:D7', 'SUELDO' + #10 + '');
    Titulo('E6:E7', 'SUBSIDIO' + #10 + 'AL EMPLEO');
    Titulo('F6:F7', 'HORAS' + #10 + 'EXTRA');
    Titulo('G6:G7', 'PRIMA' + #10 + 'DOMINICAL');
    Titulo('H6:H7', 'PRIMA' + #10 + 'DOMINICAL EXENTA');
    Titulo('I6:I7', 'DOMINGOS' + #10 + 'LABORADOS');
    Titulo('J6:J7', 'DIA' + #10 + 'FESTIVO');
    Titulo('K6:K7', 'DIA' + #10 + 'FESTIVO EXENTO');
    Titulo('L6:L7', 'VACACIONES');
    Titulo('M6:M7', 'PRIMA' + #10 + 'VACACIONAL');
    Titulo('N6:N7', 'AGUINALDO');
    Titulo('O6:O7', 'OTRAS' + #10 + 'PERCEPCIONES');
    Titulo('P6:P7', 'TOTAL' + #10 + 'PERCEPCION');
    Titulo('Q6:Q7', '(-)' + #10 + 'I.S.R.');
    Titulo('R6:R7', '(-)' + #10 + 'I.M.S.S.');
    Titulo('S6:S7', '(-)' + #10 + 'INFONAVIT');
    Titulo('T6:T7', 'OTRAS' + #10 + 'DEDUCCIONES');
    Titulo('U6:U7', 'PENSION' + #10 + 'ALIMENTICIA');
    Titulo('V6:V7', 'TOTAL' + #10 + 'DEDUCCION');
    Titulo('W6:W7', 'SUELDO' + #10 + 'NETO');
    Titulo('X6:X7', 'SUBSIDIO');
    Titulo('Y6:Y7', 'I.S.R.');
  end
  else
  begin
    Excel.Cells[1, 2].Select;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.Size :=      16;
    Excel.Selection.Font.Bold :=    True;

    Excel.Cells[2, 2].Select;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.Size :=      14;
    Excel.Selection.Font.Bold :=    True;

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

  if Referencia <> '' then
  begin
    Titulo('W6:W7', 'SUBSIDIO' + #10 + 'AL' + #10 + 'EMPLEO');
    Titulo('X6:X7', 'ISPT');
  end;

  if Not SoloEtiquetas then
  begin
    // Dar formato a encabezado de excel
    Excel.Range['A6:X7'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment   := xlBottom;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.size :=      10;
    Excel.Selection.Font.Bold :=    true;
    Excel.Selection.Borders.Weight    :=     xlMedium;
    Excel.Selection.Borders.LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].weight    :=     xlMedium;

    Excel.ScreenUpdating :=  True;
    Excel.Range['A8:A8'].select;
    Excel.ActiveWindow.FreezePanes := True;
    Excel.ScreenUpdating := False;
  end;

  Excel.ScreenUpdating :=  True;
  Excel.ScreenUpdating := False;
end;

procedure TFrmNominasExcel.Encabezados(Lista: TStringList);
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

procedure TFrmNominasExcel.estirarColumnas(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  //Estira las columnas, haciendo que se acomoden al texto de dicha columna
  rangoExcel := Excel.Range[rango];
  rangoExcel.EntireColumn.Autofit;
end;

procedure TFrmNominasExcel.estirarFila(Excel: Variant; rango: string; ancho : Integer);
begin
  //Estira el ancho de una Fila
  Excel.Rows[rango].RowHeight := ancho;
end;

procedure TFrmNominasExcel.ExportarAExcelDesglosegral;
var
  ExApp, book, Sheet, ExRango  : Variant;
  ColumnaInicial, FilaInicial   :Integer;
  incColumna, IncFila, incNivel: Integer;
  DesgloseXRegPat, DeslgoseXPago, CampoSeparador, NetoMemoria, LocNombreCeja: String;
  OldregPat: String;
  Salir   : Boolean;
  Cursor  : TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if dlgSaveExcel.Execute then
      begin
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

          cdCejas.First;
          while Not cdCejas.Eof do
          begin
            incNivel := 0;
            ExRango := ExApp.Range['A1'];
            LocNombreCeja := cdCejas.FieldByName('NombreCeja').AsString;
            ExRango.Value := cdTmpNomina.FieldByName('Titulo').AsString;
            ExRango.Font.bold   := True;
            ExRango.Font.UnderLine := 2;
            combinarYCentrarDatosEncabezados(ExApp,'A1:G1');

            ExApp.ActiveSheet.Name := LeftStr(LocNombreCeja, 31);
            ExApp.ActiveSheet.Move(Book.WorkSheets[book.Sheets.Count]);

            while incNivel < nivelDesglose.Count do
            Begin
              oldregPat:= '';

              DesgloseXRegPat :=  TDetDes(nivelDesglose.Objects[incNivel]).AgrupaRegPat;
              DeslgoseXPago := TDetDes(nivelDesglose.Objects[incNivel]).AgrupaFormaPago;
              CampoSeparador  :=     TDetDes(nivelDesglose.Objects[incNivel]).Separador;
              incFila := 0;
              ColumnaInicial := TDetDes(nivelDesglose.Objects[incNivel]).ColumnaInicial;
              FilaInicial    :=    TDetDes(nivelDesglose.Objects[incNivel]).FilaInicial;

              if cdDesgloseGral.ProviderName = '' then
                if not CrearConjunto(cdDesgloseGral, 'nom_detallenomina_desglosegeneral', ccCatalog) then
                  raise InteligentException.CreateByCode(5, ['nom_detallenomina_desglosegeneral']);

              if not CargarDatosFiltrados(cdDesgloseGral, 'ListaNominas,AgrupaRegPat,AgrupaPago,NombreCeja', [cdTmpNomina.FieldByName('IdNomina').AsInteger, DesgloseXRegPat, DeslgoseXPago,LocNombreCeja]) then
                raise InteligentException.CreateByCode(6, ['nom_detallenomina_desglosegeneral', cdTmpNomina.FieldByName('IdNomina').AsString, 'ListaNominas']);

              if cdDesgloseGral.Active then
                cdDesgloseGral.Refresh
              else
                cdDesgloseGral.Open;

              //*Título del Desglose*/
              ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila -1)].Value := TdetDes(nivelDesglose.Objects[incNivel]).Titulo;
              ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila -1)].Font.Bold := True;

              cdDesgloseGral.first;
              while not cdDesgloseGral.Eof do
              begin
                //*Titulo registro Patronal/
                if CampoSeparador <> '-9' then
                begin
                  if OldRegPat = '' then
                  begin
                    oldregPat := cdDesgloseGral.FieldByName(CampoSeparador).AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := OldregPat;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Font.Bold :=  True;
                    Inc(IncFila)
                  end;

                  if (OldregPat <> (cdDesgloseGral.FieldByName(CampoSeparador).AsString)) or (cdDesgloseGral.RecNo = cdDesgloseGral.recordcount) then
                  begin
                    if (cdDesgloseGral.RecNo = cdDesgloseGral.recordcount) then
                    begin
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila + 1)].Value := NetoMemoria;
                      ExRango     :=       ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + IntToStr(FilaInicial + IncFila + 1)];
                      ExRango.Font.Bold := True;
                      Exrango.Borders[xlEdgeTop].LineStyle := 1;
                      ExRango.Borders[xlEdgeTop].Weight    := 2;
                    end
                    else
                    begin
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := NetoMemoria;
                      ExRango := ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)];
                      ExRango.Font.Bold := True;
                      Exrango.Borders[xlEdgeTop].LineStyle := 1;
                      ExRango.Borders[xlEdgeTop].Weight    := 2;
                    end;
                  end;

                  //*Titulo registro Patronal/
                  if (OldregPat <> (cdDesgloseGral.FieldByName(CampoSeparador).AsString)) then
                  begin
                    Inc(IncFila);
                    oldRegPat := cdDesgloseGral.FieldByName(CampoSeparador).AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := OldregPat;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Font.Bold :=  True;
                    Inc(IncFila);
                  end;

                  //*Conceptos por registro patronal*/
                  if (OldRegPat <> '') and (OldregPat =  (cdDesgloseGral.FieldByName(CampoSeparador).AsString)) then
                  begin
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Titulo').AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Importe').AsString;
                  end
                  else
                  begin
                    inc(incFila); //*incremento una fila para dejar un espacio entre registros patronales*/
                    oldRegPat := cdDesgloseGral.FieldByName(CampoSeparador).AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := OldregPat;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value     :=  cdDesgloseGral.FieldByName('Titulo').AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Importe').AsString;
                  end;
                end
                else
                begin
                   ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value     :=  cdDesgloseGral.FieldByName('Titulo').AsString;
                   ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Importe').AsString;
                end;
                NetoMemoria := cdDesgloseGral.FieldByName('Neto').AsString;
                inc(incFila);
                cdDesgloseGral.Next;
              end;
              if CampoSeparador = '-9' then
              begin
                ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := NetoMemoria;
                ExRango   :=         ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)];
                ExRango.Font.Bold := True;
                Exrango.Borders[xlEdgeTop].LineStyle := 1;
                ExRango.Borders[xlEdgeTop].Weight    := 2;

                //*Desglose general*/
                if not CargarDatosFiltrados(cdDesgloses, 'ListaNominas,NombreCeja', [CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, LocNombreCeja]) then
                  raise InteligentException.CreateByCode(6, ['ListaNominas', CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, 'IdNomina']);

                if cdDesgloses.Active then
                  cdDesgloses.Refresh
                else
                  cdDesgloses.Open;

                cdDesgloses.First;
                while not cdDesgloses.eof do
                begin
                  ExApp.Range[ColumnaNombre(1) + IntToStr(FilaInicial + incFila + 1)].Value := cdDesgloses.FieldByName('Referencia').AsString; //Pago
                  ExApp.Range[ColumnaNombre(2) + IntToStr(FilaInicial + incFila + 1)].Value :=       cdDesgloses.FieldByName('Neto').AsString; //Valor
                  ExApp.Range[ColumnaNombre(2) + IntToStr(FilaInicial + incFila + 1)].Style := 'Currency';
                  cdDesgloses.next;
                  Inc(incFila);
                end;
                ExApp.Columns[ColumnaNombre(1)].EntireColumn.Autofit;
              end;

              ExApp.Columns[ColumnaNombre(ColumnaInicial)].EntireColumn.Autofit;
              inc(incNivel);
            end;

            ExApp.ScreenUpdating := True;
            ExApp.ActiveWindow.DisplayGridLines := False;

            if cdCejas.recno < cdCejas.RecordCount then
              Book.sheets.Add;

            cdCejas.Next;
          End;

          try
            ExApp.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + 'DESGLOSE GENERAL DE NÓMINA.xls');
            InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
          except
            on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
          end;
        end;
      end;
    Finally
      cdDesgloseGral.Close;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmNominasExcel.exportarAExcelDinamico(reporteExcel: Integer; Referencia : string);
var
  Excel, Libro, Hoja    : Variant;
  error, mostrarTotales : Boolean;
  Cursor : TCursor;
  cdDatos, cdDatosComprimido : TClientDataset;
  CadParam, OldCeja, importe :         String;
  x, i, idx, idy, idz, IdPersonalAnterior, autoincrementable, primerColumnaSumar, primerColumnaSumar2, ultimaColumnaSumar, primeraFilaSumar, ultimaColumnaEstirar: Integer;
  sumaVertical, totalPercepciones, totalDeducciones : Double;
  SearchList: Variant;

function DecodeFecha(Fecha: TDate = 0; FechaHora: TDateTime = 0; DiaSemana: Boolean = False; Modo: TModoFecha = tmMayuscula): String;
const
  NombreDia: Array[1..7] of String = ('Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado');
  Leyenda: Array[1..2, tmMinuscula..tmMayuscula] of String = ((' ', ' '), (' rangel ', ' RANGEL '));
  NomMes: Array[1..12, tmMinuscula..tmMayuscula] of String = ((' Ene ', ' ENERO '), (' Feb ', ' FEBRERO '), (' Mar ', ' MARZO '), (' Abr ', ' ABRIL '), (' May ', ' MAYO '), (' Jun ', ' JUNIO '),
                                                              (' Jul ', ' JULIO '), (' Ago ', ' AGOSTO '), (' Sep ', ' SEPTIEMBRE '), (' Oct ', ' OCTUBRE '), (' Nov ', ' NOVIEMBRE '), (' Dic ', ' DICIEMBRE '));
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

begin
  //Generar reporte en excel conforme al id del reporte que se configuro en el wizard(dinamicamente)
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    if dlgSaveExcel.Execute then
    begin
      try
        dlgSaveExcel.FileName;
        error := False;
        excel := CreateOleObject('Excel.Application');
        excel.Visible :=        True;
        Excel.displayAlerts := False;
        excel.workBooks.Add;
        Libro :=  Excel.workbooks[1];
      except
        on e : Exception do
        begin
          error := True;
          InteliDialog.ShowModal('Aviso', 'No se puede continuar, verifique tener instalada la aplicación Microsoft Excel', mtInformation, [mbOK], 0);
        end;
      end;

      if Not error then  //Si no hay error al abrir la aplicacion excel, continuar con la exportacion de datos
      begin
        //Eliminar las hojas, excepto la 1
        while Libro.Sheets.Count > 1 do
          Libro.WorkSheets[1].Delete;

        Hoja := Libro.sheets[1];
        Hoja.Select;

        cdDatos := TClientDataSet.Create(Nil);
        if Not CrearConjunto(cdDatos, 'nom_detallenomina_excel', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);

        if Referencia = '' then
        begin
          // Abrir los datos completos de las nóminas indicadas
          CadParam := '';
          for i := 0 to CxDbGridNominas.Controller.SelectedRowCount -1 do
          begin
            //CxDbGridNominas.DataController.DataSource.DataSet.GotoBookmark(Pointer(CxDbGridNominas.Controller.SelectedRows[i]));
            CadParam := CadParam + CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString + ',';
          end;

          if Not CargarDatosFiltrados(cdDatos, 'ListaNominas', [CadParam]) then
            raise InteligentException.CreateByCode(6, ['Detalle de Nóminas', CadParam, 'Id. Nómina']);
        end;

        cdDatos.Open;

        if cdDatosPersonales.Active then
          cdDatosPersonales.Close;

        if Not CrearConjunto(cdDatosPersonales, 'nuc_personal', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nuc_personal']);

        cdDatosComprimido := TClientDataSet.Create(Self);

        //*******************************************************
        cdDatosComprimido.FieldDefs.Add('NombreCeja', ftString, 100, False);
        cdDatosComprimido.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
        cdDatosComprimido.FieldDefs.Add('NombreCompleto', ftString, 150, False);
        cdDatosComprimido.FieldDefs.Add('IdConcepto', ftInteger, 0, False);
        cdDatosComprimido.FieldDefs.Add('Modo', ftString, 30, False);
        cdDatosComprimido.FieldDefs.Add('Importe', ftString, 100, False);
        cdDatosComprimido.FieldDefs.Add('FechaNomina', ftDateTime, 0, False);
        cdDatosComprimido.FieldDefs.Add('FechaTerminoNomina', ftDateTime, 0, False);
        cdDatosComprimido.FieldDefs.Add('TituloDepartamento', ftString, 100, False);
        cdDatosComprimido.CreateDataSet;
        cdDatosComprimido.Open;

        while Not cdDatos.Eof do
        begin
          cdDatosComprimido.Append;
          cdDatosComprimido.FieldByName('NombreCeja').AsString     :=     cdDatos.FieldByName('NombreCeja').AsString;
          cdDatosComprimido.FieldByName('IdPersonal').AsInteger    :=    cdDatos.FieldByName('IdPersonal').AsInteger;
          cdDatosComprimido.FieldByName('NombreCompleto').AsString := cdDatos.FieldByName('NombreCompleto').AsString;
          cdDatosComprimido.FieldByName('IdConcepto').AsInteger    :=    cdDatos.FieldByName('IdConcepto').AsInteger;
          cdDatosComprimido.FieldByName('Modo').AsString           :=           cdDatos.FieldByName('Modo').AsString;
          cdDatosComprimido.FieldByName('Importe').AsString        :=        cdDatos.FieldByName('Importe').AsString;
          cdDatosComprimido.FieldByName('FechaNomina').AsDateTime  :=  cdDatos.FieldByName('FechaNomina').AsDateTime;
          cdDatosComprimido.FieldByName('FechaTerminoNomina').AsDateTime := cdDatos.FieldByName('FechaTerminoNomina').AsDateTime;
          cdDatosComprimido.FieldByName('TituloDepartamento').AsString   :=   cdDatos.FieldByName('TituloDepartamento').AsString;
          cdDatosComprimido.Post;

          cdDatos.Next;
        end;

        OldCeja            := '';
        IdPersonalAnterior :=  0;
        cdDatosComprimido.First;
        autoincrementable  :=  1;

        while Not cdDatosComprimido.Eof do
        begin
          if (OldCeja <> cdDatosComprimido.FieldByName('NombreCeja').AsString) or (cdDatosComprimido.RecNo = cdDatos.RecordCount) then
          begin
            if (mostrarTotales) and (cdDatosComprimido.RecNo <> cdDatosComprimido.RecordCount) then
            begin
              //Sumatoria en vertical de los conceptos(a fuerzas se suman los conceptos)
              primeraFilaSumar := 8;

              bordesCeldas(Excel, 'A8:' + ColumnaNombre(ultimaColumnaSumar-1) + IntToStr(FilaPublica), False);

              combinarYCentrarDatosEncabezados(Excel, 'A'+IntToStr(FilaPublica) + ':' + ColumnaNombre(primerColumnaSumar - 1) + IntToStr(FilaPublica));
              bordesCeldas(Excel, 'A'+IntToStr(FilaPublica) + ':' + 'A'+IntToStr(FilaPublica), True);
              Excel.Range['A' + IntToStr(FilaPublica)].Value := 'TOTALES';

              primerColumnaSumar2 := primerColumnaSumar;

              while primerColumnaSumar2 < ultimaColumnaSumar do
              begin
                sumaVertical := 0;

                while primeraFilaSumar < FilaPublica do
                begin
                  importe := Excel.Range[ColumnaNombre(primerColumnaSumar2) + IntToStr(primeraFilaSumar)].Value;
                  if importe = '' then
                    importe := '0';

                  sumaVertical := sumaVertical + strToFloat(importe);

                  primeraFilaSumar := primeraFilaSumar + 1;
                end;

                Excel.Range[ColumnaNombre(primerColumnaSumar2) + IntToStr(FilaPublica)].Value := FloatToStr(sumaVertical);
                //bordesCeldas(Excel, ColumnaNombre(primerColumnaSumar2) + IntToStr(FilaPublica) + ':' + ColumnaNombre(primerColumnaSumar2) + IntToStr(FilaPublica), True);
                primeraFilaSumar := 8;
                primerColumnaSumar2 := primerColumnaSumar2 + 1;
              end;
            end;

            Idx := 1;
            if  primerColumnaSumar2 <> 0 then
            begin
              //*Desgloses por conceptos y por registro patronal*/
              if not CargarDatosFiltrados(cdRegPat, 'ListaNominas,NombreCeja,AgrupaConcepto,Modo,IdReporte', [CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, OldCeja, -1,'EXTRA', cdReportes.FieldByName('IdReporte').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['ListaNominas', CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, 'IdNomina']);

              if cdRegPat.Active then
                cdRegPat.Refresh
              else
                cdRegPat.Open;

              if not CargarDatosFiltrados(cdDesgConceptos, 'ListaNominas,NombreCeja,AgrupaConcepto,Modo,IdReporte', [CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, OldCeja, 'Si', 'EXTRA', cdReportes.FieldByName('IdReporte').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['ListaNominas', CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, 'IdNomina']);

              if cdDesgConceptos.Active then
                cdDesgConceptos.Refresh
              else
                cdDesgConceptos.Open;

              if not CargarDatosFiltrados(cdDesgRegPat, 'ListaNominas,NombreCeja,Modo,IdReporte', [CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, OldCeja,'EXTRA', cdReportes.FieldByName('IdReporte').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['ListaNominas', CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, 'IdNomina']);

              if cdDesgRegPat.Active then
                cdDesgRegPat.Refresh
              else
                cdDesgRegPat.Open;

              if cdRegPat.RecordCount > 0 then
              begin
                Idy := idx;
                cdRegPat.First;
                while not cdRegPat.Eof do
                begin
                  cdDesgConceptos.First;
                  Idz := primerColumnaSumar2 - (cdDesgConceptos.RecordCount)-1;
                  Excel.Range[ColumnaNombre(Idz) + IntToStr(FilaPublica + idy)].Value := cdRegPat.FieldByName('RegistroPatronal').AsString;
                  Excel.Range[ColumnaNombre(Idz) + IntToStr(FilaPublica + idy)].Font.Bold := True;
                  while not cdDesgConceptos.Eof do
                  begin
                    SearchList := VarArrayOf([cdRegPat.FieldByName('RegistroPatronal').AsString, cdDesgConceptos.FieldByName('Clave').AsString]);

                    if cdDesgRegPat.Locate('RegistroPatronal;Clave', SearchList,[]) then
                    begin

                      Excel.Range[ColumnaNombre(idz + 1) + IntToStr(FilaPublica + idy)].Value := cdDesgRegPat.FieldByName('Importe').AsString;
                    end;
                    cdDesgConceptos.Next;
                    inc(idz);
                  end;
                  cdRegPat.next;
                  inc(idy);
                end;
              end;

              if not CargarDatosFiltrados(cdDesgloses, 'ListaNominas,NombreCeja', [CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, OldCeja]) then
                raise InteligentException.CreateByCode(6, ['ListaNominas', CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, 'IdNomina']);

              if cdDesgloses.Active then
                cdDesgloses.Refresh
              else
                cdDesgloses.Open;

              cdDesgloses.First;
              while not cdDesgloses.eof do
              begin
                Excel.Range[ColumnaNombre(primerColumnaSumar2 - (cdDesgConceptos.RecordCount)) + IntToStr(FilaPublica + idy)].Value := cdDesgloses.FieldByName('Referencia').AsString; //Pago
                Excel.Range[ColumnaNombre(primerColumnaSumar2 - (cdDesgConceptos.RecordCount)+1) + IntToStr(FilaPublica + idy)].Value := cdDesgloses.FieldByName('Neto').AsString; //Valor
                cdDesgloses.next;
                Inc(idy);
              end;

              bordesCeldas(Excel,ColumnaNombre(PrimerColumnaSumar2 - (cdDesgConceptos.RecordCount)) + IntToStr(FilaPublica + 1) + ':' + ColumnaNombre(PrimerColumnaSumar2 - (cdDesgConceptos.RecordCount) +1) + IntToStr(FilaPublica + idy -1), False);
            end;

            if cdDatosComprimido.RecNo <> cdDatosComprimido.RecordCount then
            begin
              mostrarTotales := False;
              autoincrementable  := 1;
              FilaPublica    :=     6;
              ColumnaPublica :=     1;

              Hoja := Excel.Worksheets.Add;
              Hoja.Name :=    LeftStr(cdDatosComprimido.FieldByName('NombreCeja').AsString, 31);
              Hoja.Move(Libro.WorkSheets[Libro.Sheets.Count]);
              EncabezadoConcentradoDinamico(Referencia, True, Hoja, Excel, 0, DecodeFecha(cdDatosComprimido.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatosComprimido.FieldByName('FechaTerminoNomina').AsDateTime), cdDatosComprimido.FieldByName('TituloDepartamento').AsString);

              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := 'NO.';
              combinarYCentrarDatosEncabezados(Excel, 'A6:A7');

              ColumnaPublica := ColumnaPublica + 1;

              //Columna DATOS PERSONALES
              cabecerasColumnas(FilaPublica, ColumnaPublica, Excel, cdColumnasDatosPersonales, 'nom_datosgral_excel', ccUpdate, 'IdDatoGral, IdReporte', [-1, reporteExcel], ['Datos Personales', 'IdReporte', ''], 'tituloCampo');

              //Columna PERCEPCIONES
              cabecerasColumnas(FilaPublica, ColumnaPublica, Excel, cdColumnasConceptos, 'nuc_reportedetalle', ccCatalog, 'idCReporte, idConcepto, modo, Funcion, IdReporte, IdTipoNomina', [-1, -1, 'PERCEPCION', -1, reporteExcel, -1], ['Percepciones', 'Modo, IdReporte', ''], 'Titulo');

              //Columna TOTAL PERCEPCION(Sumatoria de las Percepciones)
              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := UPPERCASE('TOTAL PERCEPCION');
              combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica + 1));

              ColumnaPublica := ColumnaPublica + 1;

              //Columna DEDUCCIONES
              cabecerasColumnas(FilaPublica, ColumnaPublica, Excel, cdColumnasConceptos, 'nuc_reportedetalle', ccCatalog, 'idCReporte, idConcepto, modo, Funcion, IdReporte, IdTipoNomina', [-1, -1, 'DEDUCCION', -1, reporteExcel, -1], ['Deducciones', 'Modo, IdReporte', ''], 'Titulo');

              //Columna TOTAL DEDUCCION
              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := UPPERCASE('TOTAL DEDUCCION');
              combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica + 1));

              ColumnaPublica := ColumnaPublica + 1;

              //Columna SUELDO NETO
              Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := UPPERCASE('SUELDO NETO');
              combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica + 1));

              ColumnaPublica := ColumnaPublica + 1;

              //Columna EXTRA
              cabecerasColumnas(FilaPublica, ColumnaPublica, Excel, cdColumnasConceptos, 'nuc_reportedetalle', ccCatalog, 'idCReporte, idConcepto, modo, Funcion, IdReporte, IdTipoNomina', [-1, -1, 'EXTRA', -1, reporteExcel, -1], ['Extras', 'Modo, IdReporte', ''], 'Titulo');
              //Pintar toda la hoja de Blanco
              Excel.Cells.Select;
              Excel.Selection.Interior.Pattern    := 1;
              Excel.Selection.Interior.PatternColorIndex := -4105;
              Excel.Selection.Interior.ThemeColor := 1;

              Excel.activeWindow.zoom := 83;

              FilaPublica    := 8;
              ColumnaPublica := 1;
            end;
          end;

          if IdPersonalAnterior <> cdDatosComprimido.FieldByName('IdPersonal').AsInteger then
          begin
            Excel.ScreenUpdating := False;

            Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := IntToStr(autoincrementable);

            ColumnaPublica := ColumnaPublica + 1;

            if Not CargarDatosFiltrados(cdDatosPersonales, 'IdPersonal', [cdDatosComprimido.FieldByName('IdPersonal').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Datos Personales', 'IdPersonal', '', '']);

            if cdDatosPersonales.Active then
              cdDatosPersonales.Refresh
            else
              cdDatosPersonales.Open;

            cdColumnasDatosPersonales.First;
            while Not cdColumnasDatosPersonales.Eof do
            begin
              //Si es el nombre, entonces traer el nombre de nuc_personal
              if cdColumnasDatosPersonales.FieldByName('nombreCampo').AsString = 'nombre' then
              begin
                Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := cdDatosPersonales.FieldByName('NombreCompleto').AsString;
              end
              else
              begin
                Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := cdDatosPersonales.FieldByName(cdColumnasDatosPersonales.FieldByName('nombreCampo').AsString).AsString;
              end;
              ColumnaPublica := ColumnaPublica + 1;
              cdColumnasDatosPersonales.Next;
            end;

            primerColumnaSumar := ColumnaPublica;

            //Colocar las PERCEPCIONES
            colocarDatosConceptos(Excel, cdConceptosPERDEDEXT, 'nuc_reportedetalle', ccCatalog, 'idCReporte, idConcepto, modo, Funcion, IdReporte, IdTipoNomina',
                                  [-1, -1, 'PERCEPCION', -1, reporteExcel, -1], ['Percepciones', 'Modo, IdReporte', '', ''], cdDatosComprimido, cdDatosComprimido.FieldByName('IdPersonal').AsInteger, 0, 0);

            //Colocar el TOTAL PERCEPCIONES
            Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := FloatToStr(sumaPERDEDEXT);
            totalPercepciones := sumaPERDEDEXT;

            ColumnaPublica := ColumnaPublica + 1;

            //Colocar las DEDUCCIONES
            colocarDatosConceptos(Excel, cdConceptosPERDEDEXT, 'nuc_reportedetalle', ccCatalog, 'idCReporte, idConcepto, modo, Funcion, IdReporte, IdTipoNomina',
                                  [-1, -1, 'DEDUCCION', -1, reporteExcel, -1], ['Deducciones', 'Modo, IdReporte', '', ''], cdDatosComprimido, cdDatosComprimido.FieldByName('IdPersonal').AsInteger, 0, 0);

            //Colocar el TOTAL DEDUCCIONES
            Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := FloatToStr(sumaPERDEDEXT);
            totalDeducciones := sumaPERDEDEXT;

            ColumnaPublica := ColumnaPublica + 1;
            //ultimaColumnaSumar := ColumnaPublica;

            //Colocar el SUELDO NETO
            Excel.Range[ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ColumnaPublica) + IntToStr(FilaPublica)].Value := FloatToStr(totalPercepciones - totalDeducciones);

            ColumnaPublica := ColumnaPublica + 1;

            //Colocar los EXTRAS
            colocarDatosConceptos(Excel, cdConceptosPERDEDEXT, 'nuc_reportedetalle', ccCatalog, 'idCReporte, idConcepto, modo, Funcion, IdReporte, IdTipoNomina',
                                  [-1, -1, 'EXTRA', -1, reporteExcel, -1], ['Extras', 'Modo, IdReporte', '', ''], cdDatosComprimido, cdDatosComprimido.FieldByName('IdPersonal').AsInteger, 0, 0);

            ultimaColumnaEstirar := ColumnaPublica;
            ultimaColumnaSumar   := ColumnaPublica;
            Excel.ScreenUpdating :=           True;

            ColumnaPublica := 1;
            autoincrementable := autoincrementable + 1;
            FilaPublica       := FilaPublica + 1;
            mostrarTotales    :=            True;
          end;

          OldCeja := cdDatosComprimido.FieldByName('NombreCeja').AsString;

          IdPersonalAnterior := cdDatosComprimido.FieldByName('IdPersonal').AsInteger;
          cdDatosComprimido.Next;
        end;

        //Sumatoria en vertical de los conceptos(a fuerzas se suman los conceptos)
        primeraFilaSumar := 8;

        bordesCeldas(Excel, 'A8:' + ColumnaNombre(ultimaColumnaSumar-1) + IntToStr(FilaPublica), False);

        combinarYCentrarDatosEncabezados(Excel, 'A'+IntToStr(FilaPublica) + ':' + ColumnaNombre(primerColumnaSumar - 1) + IntToStr(FilaPublica));
        bordesCeldas(Excel, 'A'+IntToStr(FilaPublica) + ':' + 'A'+IntToStr(FilaPublica), True);
        Excel.Range['A' + IntToStr(FilaPublica)].Value := 'TOTALES';

        while primerColumnaSumar < ultimaColumnaSumar do
        begin
          sumaVertical := 0;

          while primeraFilaSumar < FilaPublica do
          begin
            importe := Excel.Range[ColumnaNombre(primerColumnaSumar) + IntToStr(primeraFilaSumar)].Value;
            if importe = '' then
              importe := '0';

            sumaVertical := sumaVertical + strToFloat(importe);
            primeraFilaSumar := primeraFilaSumar + 1;
          end;

          Excel.Range[ColumnaNombre(primerColumnaSumar) + IntToStr(FilaPublica)].Value := FloatToStr(sumaVertical);
         //bordesCeldas(Excel, ColumnaNombre(primerColumnaSumar) + IntToStr(FilaPublica) + ':' + ColumnaNombre(primerColumnaSumar) + IntToStr(FilaPublica), True);
          //*te la moví abajo marcus*/
          primeraFilaSumar   := 8;
          primerColumnaSumar := primerColumnaSumar + 1;
        end;
        bordesCeldas(Excel, ColumnaNombre(1) + IntToStr(FilaPublica) + ':' + ColumnaNombre(ultimaColumnaSumar-1) + IntToStr(FilaPublica), True);

        //Dar formato a las hojas
        for x := 1 to Libro.Sheets.Count-1 do
        begin
          Hoja := Libro.WorkSheets[x];
          Hoja.Select;

         //combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(1) + '6' + ':' + ColumnaNombre(ultimaColumnaSumar-1) + '6');
          bordesCeldas(Excel, ColumnaNombre(1) + '6' + ':' + ColumnaNombre(ultimaColumnaSumar-1) + '6', True);
          fuenteLetras(Excel, ColumnaNombre(1) + '6' + ':' + ColumnaNombre(ultimaColumnaSumar-1) + '6', 'Arial', 10, True);

          Excel.Columns['A:' + ColumnaNombre(ultimaColumnaEstirar)].Select;
          Excel.Columns['A:' + ColumnaNombre(ultimaColumnaEstirar)].EntireColumn.Autofit;
        end;

        Excel.ScreenUpdating := True;

        try
          Excel.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + 'RESUMEN DE NÓMINAS.xls');
          InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
        except
          on e:Exception do
            InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
        end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

{ TMisDesgloses }

function TMisDesgloses.AddObject(const S: string; AObject: TObject): Integer;
begin
  inherited;
end;

end.
