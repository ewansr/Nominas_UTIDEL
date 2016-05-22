unit ClientModuleUnit1;

interface

uses
  Forms, Dialogs, SysUtils, Classes, ClientClassesUnit1, DBXDataSnap,
  DBXCommon, DSHTTPLayer, Variants, DB, SqlExpr, FMTBcd, DBClient, Provider,
  Graphics, PngSpeedButton, StdCtrls, ImgList, Controls, PngImageList,
  NxCollection, DSConnect, DateUtils, StrUtils, FolderDialog, ExtCtrls, JPeg,
  NxCustomGridControl, NxDBGrid, NxGrid, FrxClass, DBCtrls, JvDBDatePickerEdit,
  JvDBControls,JvDatePickerEdit, NxEdit, JvBaseEdits, frxDBSet, UInteliDialog,
  URegistro,Buttons,JvExDBGrids, JvDBGrid, JvDBGridExport, JvDialogs, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid,AdvEdit, tmsAdvGridExcel, tmsUFlxFormats,
  ButtonGroup, AdvShapeButton, jvdbimage,advglowbutton, DBGrids, JvCombobox,
  AdvSmoothButton, frxPreview, InterClases, GDIPPictureContainer, Windows,
  Messages, AdvToolBar, AdvMenus, cxGrid, cxGridDBTableView, IdContext,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdCmdTCPClient,
  cxDropDownEdit, UEstructuraDatos;

Const
  WM_SEHACERRADO = WM_APP + 2;
  WM_INFORMACIERRE_MSG = WM_APP + 1;

Type
  TBorrarRegistros = (brSelected, brAll);
  TModofecha = (tmMinuscula, tmMayuscula);

  TCCOpciones = (CCOpenAntes, CCOpenDespues, CCPostAntes, CCPostDespues, CCListaErrores, CCPrimerError);
  TSetCCOpciones = Set of TCCOpciones;

  TAntesDespues = (ADAntes, ADDespues);
  TTipoAgregado = (TALimpiar, TAAgregar);
  TCualMovimiento = (vuAgregarCargo, vuEditarCargo, vuAgregarEmpleado, vuEditarAgregarEmpleado, vuQuitarEmpleado, vuEditarQuitarEmpleado);

  // Clase para temporizador
  TLapso = Class(TTimer)
    Constructor Create(AOwner: TComponent); override;
    Procedure LapsoTimer(Sender: TObject);
  private
    vTranscurrido: Integer;
    vAvisos: Integer;
    vMaxAviso: Integer;
    EsLapso: Boolean;
    Pausa: Integer;
    Formulario: TForm;
    function funcEspera: Integer;
    procedure procEspera(Value: Integer);
  protected
    Titulo: String;
  public
    property Espera: Integer read funcEspera write procEspera;
    property Transcurrido: Integer read vTranscurrido write vTranscurrido;
    procedure Iniciar;
    procedure Detener;
    procedure Pausar;
    procedure ReIniciar;
  End;

  // Clase para variables globales
  TVarGlobal = Class
    sNombre: String;
    sTipo: String;
    Private
      vValor: Variant;
    Public
      function AsString: String;
      function AsInteger: Integer;
      function AsFloat: Extended;
      function AsDate: TDate;
      function AsDateTime: TDateTime;
      function AsVariant: Variant;
  End;

  TGlobales = Class
  private
    ListaGlobal: TStringList;
  public
    Constructor Create;
    Destructor Destroy;

    function Elemento(Nombre: String): TVarGlobal;
    procedure SetValue(Nombre: String; Valor: Variant);
  End;

  TVarMsgError = Class
    iCodigo: Integer;
    Private
      sDescripcion: String;
    Published
      property Text: String read sDescripcion;
  End;

  TParametro = Class
    Pos: Integer;
    Value: Variant;
  End;

  // Clase para el manejo de parametros al filtro
  TParamFilter = class
  private
    _Campos: TStringList;
    function fCount: Integer;
    function fCampos: string;
  published
    procedure Add(Campo: String; Dato: Variant);
    procedure Modify(Campo: String; NuevoDato: Variant);
    function IndexOf(Campo: String): Integer;
    procedure Delete(Index: Integer);
    property Count: Integer read fCount;
    property Campos: string read fCampos;
    constructor Create;
    destructor Destroy;
  public
    Datos: array of Variant;
  end;

  TDescripcion = Class
    Tabla: String;
    Descripcion: String;
  End;

  // Inicia declaración para manejo de errores
  TErrores = Class
    Codigo: Integer;
    Usuario: String;
    Tecnico: String;
    MsgTipo: TMsgDlgType;
    Informar: Boolean;
  end;

  ClassException = class(Exception)
  private
    FErrorCode: Integer;
    FStatusCode: String;
    FTitle: String;
    FMsgType: TMsgDlgType;
  public
    constructor Create(const Msg: string);
    constructor CreateWithCode(const ErrorCode: Integer; const Msg: string);
    constructor CreateByCode(const ErrorCode: Integer; Valores: Array of Variant);
    constructor CreateWithStatus(const StatusCode: String; const Msg: string);
    constructor CreateClone(const E:ClassException);

    property ErrorCode: Integer read FErrorCode;
    property StatusCode: string read FStatuscode;
    property Title: String read FTitle;
    property MsgType: TMsgDlgType read FMsgType;
  end;

  InteligentException = Class(ClassException);
  InteligentWarning = Class(ClassException);
  InteligentConnection = Class(ClassException);
  // Termina declaración para manejo de errores

  TClientModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    ServMetodos: TSqlServerMethod;
    DataSetProvider1: TDataSetProvider;
    DSCliente: TClientDataSet;
    PngImageList1: TPngImageList;
    DSProviderConnection1: TDSProviderConnection;
    ImageList1: TImageList;
    cdpermiso: TClientDataSet;
    cdNucConfiguracion: TClientDataSet;
    JvSaveDialog1: TJvSaveDialog;
    cdUsuario: TClientDataSet;
    cdAcceso: TClientDataSet;
    cdOrganizacion: TClientDataSet;
    ImagelistMenu: TImageList;
    CdEstructuraOrganizacion: TClientDataSet;
    Lista24: TImageList;
    Lista64: TImageList;
    Pictures: TGDIPPictureContainer;
    Lista16: TPngImageList;
    CdKardex: TClientDataSet;
    CdRutaReportes: TClientDataSet;
    IdCmdTCPClient1: TIdCmdTCPClient;
    cdAutorizaciones: TClientDataSet;
    cdCaptura: TClientDataSet;
    cdSolicitantes: TClientDataSet;
    cdCargo: TClientDataSet;
    cdTipoNomina: TClientDataSet;
    cdDepartamento: TClientDataSet;
    cdOrganizacionRuta: TClientDataSet;
    function BringData(Mthd:String):TDataSet;
    procedure procObtenerGlobales;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FInstanceOwner: Boolean;
    ListaLapso: TStringList;
    Forma: TForm;
    procedure Cerrarmensaje(Sender: TObject);
    procedure myMemoChange(Sender: TObject);
    procedure pAbrirAutorizaciones(Cuales: String);
    procedure pAbrirSolicitantes(Cuales: String);
    function ProcCrearConjunto(Const DataSet: TClientDataSet; Tabla: String; Var LocalName: String; ConjuntoTipo: String; Opciones: TSetCCOpciones): Boolean;
    function ProcObtenerPrefijo(Var Prefijo: String): Boolean;
    function FuncDatabaseInfo(Const DataSet: TClientDataSet; Var NombreDataSet: String; Tipo: String): Boolean;
    function ProcEliminarConjunto(LocalName: String): Boolean;
    function ProcCargarDatosFiltrados(ClientDataSet: TClientDataSet; Campos: String; Valores: Array of Variant; Reusar: Boolean): Boolean;
    function FuncChecharUnidad(Const DataSet: TClientDataSet; Var NombreDataSet: String; Medida: String): Integer;
    function FuncFechaACadena(Fecha: TDate): String;
    function FuncRegistrosValor(Tabla: String; CampoValida: String; Campos: String; Valores: Array of Variant; Tipo: Integer): Integer;
    function FuncCuantosRegistros(DataSet: TClientDataSet): integer;
    function FuncVerificaExiste(DataSet: TClientDataSet; Codigo: String; IdLlave: Integer): Boolean;
    function FuncPonerSentenciaSQL(Nombre: String; Valor: String): Boolean;
    function FuncCuantosSeleccionados(ClientDataSet:TClientDataSet): integer;
    function FuncLimpiarDatosFiltrados(ClientDataSet: TClientDataSet): Boolean;
    function FuncListaBasesdeDatos(Cual: Byte): String;
    function FuncUltimoId: LongInt;
    function FuncUltimoCodigo: String;
    procedure ColorGrid(Sender: TObject; ACol,
      ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
    function FuncDataUser(Tipo: TClassUser; Reiniciar: Boolean; Var Comentario: String): Boolean;
    function FuncEstaBloqueado(DataSet: TClientDataSet): Boolean;
    function FuncProcedimientoAlmacenado(var resDataSet: TClientDataSet;
      NombreProcedimiento: String; Parametros: String;
      Valores: Array of Variant): Boolean;
    function FuncServidorFechaHora(Modo: Integer): TDateTime;
    procedure ProcAccedeARutaOrganizacion(Hijos: String);
    function funcLlenarComboBox(ComboBox: TObject; Items: TStrings;
      NombreTabla: String; NombreCampo: String;
      TipoAgregado: TTipoAgregado = TALimpiar): Integer;
    procedure LocalBeforePost(DataSet: TDataSet);
  public
    ForzarLocales: Boolean;
    cMultiplo: Integer;
    vEspera: Integer;
    //procedure Preguntar;
    procedure CargarRutaReportes(IDParametro: Integer);
    procedure registrarEvento(modulo, Accion, descripcion :string; Fecha :TDate; Usuario :Integer);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function StrListToCombo(Mthd:String; Combo:TComboBox; ListCol, ValueList :TStringList):Boolean;
    function dataToCombo(Mthd: string; combo: TComboBox; campoLlave, campoVista: string): TStringList;
    function ArrayToList(Arreglo:Array of String;StrList:TStringList):Boolean;
    function ValidarCaja(Sender:TObject):Integer;
    function SetCombo(Combo:TComboBox; Index: string): Boolean;
    function IntToBoolean(Integro:Integer):Boolean;
    function arrayOfVariantsToString(Valores: Array of Variant): string;
    procedure RastrearGrids(Sender: TObject);
    procedure ComponentColor(Sender: TObject);
    function VerificaVacio(Sender: TComponent; Cadena: String):Boolean;
    procedure ImprimeReporte(NombreReporte: String; Reporte: TFrxReport); overload;
    procedure ImprimeReporte(NombreReporte: String; Reporte: TfrxReport; Preview: TfrxPreview); overload;
    function LeePermisos(Componente:tcomponent ; Formulario: TForm; Refrescar: Boolean):Boolean; overload;
    function LeePermisos(CodigoModulo, CodigoPermiso: string; VerMensaje: Boolean = true): Boolean; overload;
    function CargaPermisos(idTipo:integer):Boolean;
    function ConfigLocate(cadena: String; Cliente: TClientDataset): Integer;
    Function IniNucConfiguracion(Client: TClientDataset):Boolean;
    function ConfigGetValor(cadena: String; Cliente: TClientDataset): String;
    Procedure ExportaExcel(Grid: TNextDbGrid; Client: TClientDataset;Source:TDataSource; Lugar: String);
    Procedure ExportaExcelTms(Grid: TNextDbGrid; Client: TClientDataset;Source:TDataSource; Form: TForm);
    PRocedure FormateandoCeldas(Sender: TAdvStringGrid; const GridCol,GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
              var Format: TFlxFormat);
    function BuscaCharString(caracter: Char; Cadena:String):boolean;
    //procedimiento para el formateado de excel
    procedure enprogreso(Sender: TObject; Min, Max,Position: Cardinal; const AText: string; var AContinue: Boolean);
    Function DatetoStrSql(fecha: Tdate):String; overload;
    Function DateTimetoStrSql(fecha: TDateTime):String;
    Function DatetoStrSql(fecha: tdate;separador:string):String;  overload;
    Function CadenaEntero (Cadena: String): Integer;
    function SetNewValorConfig(parametro,descripcion, valor: string): Boolean;
    function EditValorConfig(parametro, valor: string): Boolean;
    function IniciarTimer(Identificador: String): Boolean;
    function DetenerTimer(Identificador: String): Boolean;
    function funcInicializarProgress(Min, Max, Position: Integer): Boolean;
    function funcIncrementarProgress(Valor: Integer): Boolean;
    function funcAsignarProgress(Valor: Integer): Boolean;
    function funcLlavePrimaria(NombreTabla: String): String;
    function FuncCadenaServidor(Cadena: String): Boolean;
end;

Const
  ccCatalog = 'CATALOGO';
  ccUpdate = 'UPDATE';
  ccSelect = 'SELECT';
  ctTodas = 'TODAS';
  ctConectadas = 'CONNECT';
  ctDesconectadas = 'DISCONNECT';
  ctError = 'ERROR';
  cdTexto = '!';
  //cAcceso = 'ALM_ACCESO';
  //cUsuario = 'ALM_USUARIO';
  cOrganizacion = 'nuc_organizacion';
  cNivelOrganizacion = 'nuc_nivelorganizacion';
  cUsuarioOrganizacion = 'nuc_usuarioorganizacion';
  AltoProgressBar = 13;

var
  ClientModule1: TClientModule1;
  ListaErrores: TStringList;
  ListaTablas: TStringList;
  Globales: TGlobales;
  MaxCuantos: Integer;
  CMEDContinuarGlobal: Boolean;

  cConfiguracion,
  IdSesion,
  ClientSesion,
  cConfiguracionImagen:string;
  GodMode: Boolean;


// Declaraciones disponibles para el programador
Procedure SaveConfigCxGrid(Grid: TcxGrid; FormName:String);
Procedure ReadConfigCxGrid(Grid: TcxGrid; FormName: String);
Procedure RestoreToDefaultCxGrid(Grid: TcxGrid; FormName: String);
procedure leerConfiguaracionAcceso(var cdConfiguracion: TClientDataSet);
function verificarConexionInternet: Boolean;
procedure EncabezadoReportes(var cdDatosGenerales: TClientDataSet; IdParametro: Integer);
procedure ObtenerGlobales;
procedure AccedeACoordenadas(Sender: TObject);
procedure LiberarVentana(Sender: TObject; var Action: TCloseAction);
procedure AbrirAutorizaciones(Cuales: String);
procedure AbrirSolicitantes(Cuales: String);
function Restart(dbProtocol, dbDriverName, dbHost, httpPort, dbName: String): boolean;
function CrearConjunto(Const DataSet: TClientDataSet; Tabla: String;
  Var LocalName: String; ConjuntoTipo: String;
  Opciones: TSetCCOpciones = [CCOpenDespues, CCPostDespues, CCPrimerError]): Boolean; overload;
function CrearConjunto(Const DataSet: TClientDataSet; Tabla: String;
  ConjuntoTipo: String; Opciones: TSetCCOpciones = [CCOpenDespues, CCPostDespues, CCPrimerError]): Boolean; overload;
function ObtenerPrefijo(Var Prefijo: String): Boolean;
function DatabaseInfo(Const DataSet: TClientDataSet; Var NombreDataSet: String; Tipo: String): Boolean;
function CargarDatosFiltrados(ClientDataSet: TClientDataSet; Campos: String; Valores: Array of Variant; Reusar: Boolean = False): Boolean; overload;
function CargarDatosFiltrados(ClientDataSet: TClientDataSet; Parametros: TParamFilter; Reusar: Boolean = False): Boolean; overload;
function LimpiarDatosFiltrados(ClientDataSet: TClientDataSet): Boolean;
function EliminarConjunto(LocalName: Array of String): Boolean; Overload;
function EliminarConjunto(DataSet: Array of TClientDataSet): Boolean; Overload;
function ChecarUnidad(Const DataSet: TClientDataSet; Var NombreDataSet: String; Medida: String): Integer;
function FechaACadena(Fecha: TDate): String;
function RegistrosCuenta(Tabla: String; Campos: String; Valor: Array of Variant): Integer;
function RegistrosMinimo(Tabla: String; CampoValida: String; Campos: String; Valor: Array of Variant): Integer;
function RegistrosMaximo(Tabla: String; CampoValida: String; Campos: String; Valor: Array of Variant): Integer;
function CuantosRegistros(DataSet: TClientDataSet): integer;
function VerificaExiste(DataSet: TClientDataSet; Codigo: String; Llave: Integer): Boolean;
function CuantosSeleccionados(ClientDataSet: TClientDataSet): Integer;
function inicializar(Sender: TWinControl): Boolean;
function PonerSentenciaSQL(Nombre: String; Valor: String): Boolean;
function ListaBasesdeDatos(Cual: Byte): String;
function UltimoId: LongInt;
function UltimoCodigo: String;
function FocusFirstObject(Control: TWinControl):Boolean ;
function IsTWinControlInherited(Control: TControl): boolean;
function ParentClassName(Control: TControl; Level: Word): string;
procedure SetProperties(Parent: TWinControl; ClassName, SomeProperty: string; Value: Integer);
function GetBit(const aValue: Cardinal; const Bit: Byte): Boolean;
function SetBit(const aValue: Cardinal; const Bit: Byte; const aValor: Boolean): Cardinal;
function LetrasNumeros(Valor: Real; Prefijo: String; Sufijo: String; NumDec: Integer): String;

function BorrarRegistro(DataSet: TClientDataSet; Valores: Array of Variant; ForzarBorrado: Boolean = False): Integer; overload;
function BorrarRegistro(NombreTabla: String; Valores: Array of Variant; ForzarBorrado: Boolean = False): Integer; overload;
function BorrarRegistro(NombreTabla: String; Where: String; ForzarBorrado: Boolean = False): Integer; overload;
function BorrarRegistro(DataSet: TClientDataSet; CualesBorrar: TBorrarRegistros; ForzarBorrado: Boolean = False): Integer; overload;
function BorrarRegistro(NombreTabla: String; ForzarBorrado: Boolean = False): Integer; overload;
function BorrarRegistro(DataSet: TClientDataSet; KeyName: String; CualesBorrar: TBorrarRegistros; ForzarBorrado: Boolean = False): Integer; overload;

function EliminarRegistro(DataSet: TClientDataSet; Valores: Array of Variant; ForzarBorrado: Boolean = False): Integer;

function IniciarTransaccion: Boolean;
function ConcretarTransaccion: Boolean;
function CancelarTransaccion: Boolean;
function EnTransaccion: Boolean;
function CancelarBloqueo(DataSet: TClientDataSet; IdLlave: Integer): Boolean; overload;
function CancelarBloqueo(DataBaseName: String; IdLlave: Integer): Boolean; overload;
function CompararReporte(Ruta: String; NombreReporte: String): Boolean;
function CompararArchivo(Ruta: String; NombreArchivo: String): Boolean;
function ActualizaReporte(Ruta: String; NombreReporte: String): Boolean;
function ActualizaArchivo(Ruta: String; NombreArchivo: String): String;
procedure PosicionAnterior(Forma: TForm);
function EstablecerDatosUsuario(Datos: TClassUser; Reiniciar: Boolean; Var Comentario: String): Boolean;
function EstaBloqueado(DataSet: TClientDataSet): Boolean;
function InicializarCampos(DataSet: TClientDataSet): Boolean;
function ProcedimientoAlmacenado(NombreProcedimiento: String; Parametros: String;
  Valores: Array of Variant): Boolean; overload;
function ProcedimientoAlmacenado(var DataSet: TClientDataSet;
  NombreProcedimiento: String; Parametros: String;
  Valores: Array of Variant): Boolean; overload;
function ServidorFechaHora(Modo: Integer): TDateTime;
function CadenaServidor(Cadena: String): Boolean;
function Minutos(Const Valor: Integer): String;
function MinutosSegundos(Const Valor: Integer): String;
function InicializarProgress(Min, Max, Position: Integer): Boolean;
function IncrementarProgress(Valor: Integer): Boolean;
function AsignarProgress(Valor: Integer): Boolean;
function LlavePrimaria(NombreTabla: String): String;
function DescomponerFecha(Fecha: TDate = 0; FechaHora: TDateTime = 0; DiaSemana: Boolean = False; Modo: TModoFecha = tmMinuscula): String;
function DatasetConCambios(Sender: TObject):Boolean;
function FactorIntegracion(IdTipoNomina: Integer; Antiguedad: Word): Real;
procedure CambiarVaciosANull(Dataset: TClientDataSet;MuestraError:Boolean = false);
function ArmarPaginaMenu(Var Pagina: TAdvPage; Menu: TAdvPopupMenu; Posicion: Word): Boolean;
procedure LimpiarBufferTeclado;
procedure LimpiarBufferMouse;
procedure AccedeARutaOrganizacion(Hijos: String);
function LlenarComboBox(ComboBox: TCustomCombo; NombreTabla: String; NombreCampo: String): Integer; overload;
function LlenarComboBox(ComboBox: TcxCustomComboBox; NombreTabla: String; NombreCampo: String): Integer; overload;

implementation

uses UFrmParamsConfig, Unit2, TypInfo;

Const
  DefaultMaxCuantos = 100;

{$R *.dfm}

Constructor TLapso.Create(AOwner: TComponent);
begin
  Inherited;

  if Assigned(AOwner) and (CompareText(TForm(AOwner).ClassName, 'TFrmCatalogoNominas') = 0)  then
    ClientModule1.vEspera := ((6 * 60) * 60)
  else
    ClientModule1.vEspera := (60 * 15);

  vMaxAviso := 60 * 5;
  vTranscurrido := 0;
  Pausa := 0;
  Formulario := TForm(AOwner);
  if Assigned(AOwner) then
    Titulo := TForm(AOwner).Caption;
  Self.Interval := 1000;
  ClientModule1.cMultiplo := Self.Interval Div 1000;
  Self.OnTimer := LapsoTimer;
  EsLapso := True;
  vAvisos := 0;
end;

Procedure TLapso.LapsoTimer(Sender: TObject);
const
  cValor = 15;

var
  Mensaje: TInteliDialog;
  Cta: Integer;
  Baja, i: Integer;

begin
  if Assigned(Formulario) then
    if EsLapso then
    begin
      if (Formulario.AlphaBlend) and (Trunc((ClientModule1.vEspera - vTranscurrido) / ClientModule1.cMultiplo) = 60) then
      begin
        for i := 0 to 2 do
        begin
          Cta := Formulario.AlphaBlendValue;

          if Cta > 0 then
            Baja := cValor * -1
          else
            Baja := cValor;

          while Baja <> 0 do
          begin
            Cta := Cta + Baja;

            if Cta <= 0 then
            begin
              Baja := cValor;
              Cta := 0;
            end;

            if Cta >= 255 then
            begin
              Baja := 0;
              Cta := 255;
            end;

            Formulario.AlphaBlendValue := Cta;
          end;
        end;
      end;
    end;

  if EsLapso then
  begin
    vTranscurrido := vTranscurrido + 1;
    if (ClientModule1.vEspera - vTranscurrido) / ClientModule1.cMultiplo <= 60 then
      Formulario.Caption := Titulo + ' - Tiempo máximo de inactividad: ' + MinutosSegundos(ClientModule1.vEspera - vTranscurrido);

    if vTranscurrido >= ClientModule1.vEspera then
    begin
      if (ClientModule1.vEspera - vTranscurrido) / ClientModule1.cMultiplo <= 60 then
        Formulario.Caption := Titulo;

      Pausa := 0;
      EsLapso := False;
      if vAvisos < 3 then
      begin
        if InteliDialog.ShowModal('Tiempo máximo para bloqueo de registros alcanzado', 'Usted ha estado bloqueando este registro demasiado tiempo.' + #10 + #10 + 'No es muy recomendable mantener los registros bloqueados por mucho tiempo ya que otros usuarios en la red pudieran estar en espera de estos.' + #10 + #10 + '¿Requiere de más tiempo para continuar modificando este registro?', mtConfirmation, [mbYes], 0) = mrYes then
        begin
          vTranscurrido := 0;
          EsLapso := True;
          Inc(vAvisos);
        end;
      end
      else
      begin
        Self.Enabled := False;
        Mensaje := Nil;
        if Screen.ActiveForm.ClassType = TInteliDialog then
          Mensaje := Screen.ActiveForm as TInteliDialog;

        if Assigned(Formulario) then
          SendMessage(Formulario.Handle, WM_CLOSE, 0, 0);

        if Assigned(Mensaje) then
        begin
          Mensaje.Label3.Caption := '';
          Mensaje.Close;
        end;

        SendMessage(Application.MainForm.Handle, WM_INFORMACIERRE_MSG, 0, 0);

        {if Assigned(Self.Owner) then
          TForm(Self.Owner).Close;

        InteliDialog.ShowModal('El registro tuvo que ser liberado', 'Debido a que Usted ha dejado esta ventana desatendida por más de ' + Minutos(ClientModule1.vEspera) + ' el servidor de datos ha tenido que cerrarla para liberar el registro que estaba siendo bloqueado.' + #10 + #10 +
                               'Disculpe las molestias que esto pudiera haberle ocasionado; recuerde que el servidor no puede mantener bloqueado un registro durante mucho tiempo ya que otros usuarios en la red pudieran estar necesitando utilizarlo.', mtError, [mbOk], 0);}
      end;
    end;
  end
  else
  begin
    // Tomar el tiempo al mensaje de aviso, si no responde en un lapso de 1 minuto se deberá cerrar este y la ventana
    Pausa := Pausa + 1;

    // Localizar la ventana del mensaje al cual no respondió para cambiarle el mensaje
    Mensaje := Nil;
    if Screen.ActiveForm.ClassType = TInteliDialog then
    begin
      Mensaje := Screen.ActiveForm as TInteliDialog;
      Mensaje.Label3.Caption := 'INTELI-CODE : Pregunta - Tiempo máximo de espera de respuesta: ' + MinutosSegundos(vMaxAviso - Pausa);
    end;

    if Pausa >= vMaxAviso then
    begin
      // Si se termina el tiempo y no responde, significa que el usuario ya se perdió y hay que cerrar la ventana para que se libere el registro bloqueado
      Self.Enabled := False;  // Detener el proceso del timer porque se va a terminar todo el pedo

      if Assigned(Formulario) then
        SendMessage(Formulario.Handle, WM_CLOSE, 0, 0);

      if Assigned(Mensaje) then
        Mensaje.Close;

      SendMessage(Application.MainForm.Handle, WM_INFORMACIERRE_MSG, 0, 0);
    end;
  end;
end;

Procedure TLapso.Iniciar;
begin
  vTranscurrido := 0;
  Pausa := 0;
  Self.Enabled := True;
end;

Procedure TLapso.Detener;
begin
  if Assigned(Self.Owner) then
    TForm(Self.Owner).Caption := Titulo;

  vTranscurrido := 0;
  Pausa := 0;
  Formulario := Nil;
  Self.Enabled := False;
end;

Procedure TLapso.Pausar;
begin
  Self.Enabled := False;
end;

Procedure TLapso.ReIniciar;
begin
  Self.Enabled := True;
end;

function TLapso.funcEspera: Integer;
begin
  Result := ClientModule1.vEspera;
end;

procedure TLapso.procEspera(Value: Integer);
begin
  ClientModule1.vEspera := Value;
end;

function ObtenerElemento(Numero: Integer; Cadena: String): String;
var
  Cuenta, Cta: Integer;
  Found: Boolean;
  Valor, Resultado: String;
begin
  Cuenta := 0;
  Valor := '';
  Cta := 0;
  Cadena := Cadena + '|';
  Resultado := '';
  Found := False;
  while (Cuenta < Length(Cadena)) and Not Found do
  begin
    Inc(Cuenta);
    if Cadena[Cuenta] = '|' then
    begin
      inc(Cta);
      if Cta = Numero then
      begin
        Found := True;
        Resultado := Valor;
      end
      else
        Valor := '';
    end
    else
      Valor := Valor + Cadena[Cuenta];
  end;
  Result := Resultado;
end;

{$REGION 'TVarGlobal PUBLIC'}
function TVarGlobal.AsString: String;
begin
  if vValor = Null then
    Result := ''
  else
    Result := vValor;
end;

function TVarGlobal.AsInteger: Integer;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsFloat: Extended;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsDate: TDate;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := Trunc(vValor);
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsDateTime: TDateTime;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarGlobal.AsVariant: Variant;
begin
  Result := vValor;
end;

{$ENDREGION}

{$REGION 'TGlobales PUBLIC'}
constructor TGlobales.Create;
begin
  ListaGlobal := TStringList.Create;
  ListaGlobal.Clear;
end;

destructor TGlobales.Destroy;
begin
  ListaGlobal.Free;
end;

function TGlobales.Elemento(Nombre: string): TVarGlobal;
var
  Indice: Integer;
  proxy: TServerMethods1Client;
  Variable: String;
  Elem: TVarGlobal;

begin
  Indice := ListaGlobal.IndexOf(Nombre);
  if Indice >= 0 then
  begin
    if ((TVarGlobal(ListaGlobal.Objects[Indice]).sTipo = 'INTEGER') or
        (TVarGlobal(ListaGlobal.Objects[Indice]).sTipo = 'FLOAT')) and (String(TVarGlobal(ListaGlobal.Objects[Indice]).vValor) = '') then
      TVarGlobal(ListaGlobal.Objects[Indice]).vValor := 0;

    Result := TVarGlobal(ListaGlobal.Objects[Indice]);
  end
  else
  begin
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      Variable := proxy.GlobalElemByName(Nombre);
      Elem := TVarGlobal.Create;
      if Variable <> '' then
      begin
        // Descomponer la variable en sus elementos basicos
        Elem.sNombre := ObtenerElemento(1, Variable);
        Elem.sTipo   := ObtenerElemento(2, Variable);
        Elem.vValor  := ObtenerElemento(2, Variable);

        Globales.ListaGlobal.AddObject(ObtenerElemento(1, Variable), Elem);
      end
      else
      begin
        // Descomponer la variable en sus elementos basicos
        Elem.sNombre := '';
        Elem.sTipo   := '';
        Elem.vValor  := '';
      end;
    Finally
      proxy.Free;
    End;

    Result := Elem;
  end;
end;

procedure TGlobales.SetValue(Nombre: String; Valor: Variant);
var
  Indice: Integer;
  Proxy: TServerMethods1Client;
begin
  // Modificar el valor de la variable de memoria especificada
  Indice := ListaGlobal.IndexOf(Nombre);
  if Indice < 0 then
  begin
    ListaGlobal.AddObject(Nombre, TVarGlobal.Create);
    Indice := ListaGlobal.IndexOf(Nombre);

    // Agregar la variable también al servidor
    if Assigned(ClientModule1.SQLConnection1.DBXConnection) then
      Try
        Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        Proxy.SetGlobalElemByName(Nombre, String(Valor));
      Finally
        Proxy.Free;
      End;
  end;

  TVarGlobal(ListaGlobal.Objects[Indice]).vValor := Valor;
end;
{$ENDREGION}

{$REGION 'CLASSEXCEPTION'}
constructor ClassException.CreateClone(const E: ClassException);
begin
  inherited Create(E.Message);
  FErrorCode:=E.ErrorCode;
  FStatusCode:=E.Statuscode;
end;

constructor ClassException.Create(const Msg: string);
begin
  inherited Create(Msg);
  FErrorCode := -1;
end;

constructor ClassException.CreateWithCode(const ErrorCode: Integer;
  const Msg: string);
begin
  inherited Create(Msg);
  FErrorCode := ErrorCode;
end;

constructor ClassException.CreateByCode(const ErrorCode: Integer; Valores: Array of Variant);
var
  Cadena: String;
  xPos, Difer: Integer;
  Variable,
  Resultado: String;
  Inicio: Integer;
  Numero: Byte;
  Parametros: TStringList;
  Parametro: TParametro;
  Tabla: Boolean;
begin
  // Acceder a la lista de errores para encontrar su descripción
  xPos := ListaErrores.IndexOf(IntToStr(ErrorCode));
  if xPos >= 0 then
  begin
    FTitle := TErrores(ListaErrores.Objects[xPos]).Usuario;
    FMsgType := TErrores(ListaErrores.Objects[xPos]).MsgTipo;
    Cadena := TErrores(ListaErrores.Objects[xPos]).Tecnico;

    Parametros := TStringList.Create;
    Parametros.Clear;

    // Analizar la cadena obtenida en busqueda de parámetros
    Inicio := 0;
    for xPos := 1 to Length(Cadena) do
    begin
      if Cadena[xPos] = '<' then
      begin
        Inicio := xPos;
        Variable := '';
      end;

      if Inicio > 0 then
        Variable := Variable + Cadena[xPos];

      if (Cadena[xPos] = '>') and (Inicio > 0) then
      begin
        Variable := Copy(Variable,2,Length(Variable));
        if (Variable[1] = '%') and (Length(Variable) > 2) then
        begin
          Variable := Copy(Variable, 2, Length(Variable) - 2);

          // Dar de alta el parametro
          Parametro := TParametro.Create;
          Parametro.Pos := xPos - (Length(Variable) + 3);
          Parametro.Value := Null;

          // Verificar si existe un valor para este parametro
          Try
            Numero := StrToInt(Variable);
          Except
            Numero := 0;
          End;

          if (Numero > 0) and (Numero <= High(Valores) + 1) then
            if Copy(Valores[Numero - 1], 1, 1) = '!' then
              // Tratar de obtener la descripción de la tabla indicada
              if ListaTablas.IndexOf(Copy(Valores[Numero - 1], 2, Length(Valores[Numero - 1]))) >= 0 then
                Parametro.Value := TDescripcion(ListaTablas.Objects[ListaTablas.IndexOf(Copy(Valores[Numero - 1], 2, Length(Valores[Numero - 1])))]).Descripcion
              else
                Parametro.Value := '(' + Valores[Numero - 1] + ')'
            else
              Parametro.Value := Valores[Numero - 1];

          Parametros.AddObject(Variable, Parametro);  // Agregar el parametro a la lista

          // Inicializar las variables de control
          Inicio := 0;
          Variable := '';
        end;
      end;
    end;

    // Substituir las variables por sus valores correspondientes
    Inicio := 1;
    Numero := 0;
    Difer := 0;
    for xPos := 0 to Parametros.Count - 1 do
    begin
      if TParametro(Parametros.Objects[xPos]).Value <> Null then
      begin
        Resultado := TParametro(Parametros.Objects[xPos]).Value;
        Variable := Copy(Cadena, Inicio, TParametro(Parametros.Objects[xPos]).Pos + Difer);
        Variable := Variable + Resultado;
        Variable := Variable + Copy(Cadena, TParametro(Parametros.Objects[xPos]).Pos + Difer + 4 + Length(Parametros[xPos]), Length(Cadena));

        Difer := Difer + (Length(TParametro(Parametros.Objects[xPos]).Value) - (3 + Length(Parametros[xPos])));

        Cadena := Variable;
      end;
    end;
  end
  else
    Cadena := 'Código de error desconocido';

  inherited Create(Cadena);
  FErrorCode := ErrorCode;
end;

constructor ClassException.CreateWithStatus(const StatusCode, Msg: string);
begin
  inherited Create(Msg);
  FStatusCode := StatusCode;
end;
{$ENDREGION}

{$REGION 'TParamFilter'}
constructor TParamFilter.Create;
begin
  _Campos := TStringList.Create;
  _Campos.Delimiter := ',';
end;

destructor TParamFilter.Destroy;
begin
  _Campos.Free;
  Datos := nil;
end;

procedure TParamFilter.Add(Campo: string; Dato: Variant);
begin
  _Campos.Add(Campo);
  SetLength(Datos,_Campos.Count);
  Datos[_Campos.Count - 1] := Dato;
end;

procedure TParamFilter.Modify(Campo: String; NuevoDato: Variant);
var
  Indice: Integer;
begin
  Indice := _Campos.IndexOf(Campo);
  if Indice >= 0 then
    Datos[Indice] := NuevoDato;
end;

function TParamFilter.IndexOf(Campo: String): Integer;
begin
  Result := _Campos.IndexOf(Campo);
end;

procedure TParamFilter.Delete(Index: Integer);
begin
  _Campos.Delete(Index);
end;

function TParamFilter.fCount: integer;
begin
  Result := _Campos.Count;
end;

function TParamFilter.fCampos: string;
begin
  Result := _Campos.DelimitedText;
end;
{$ENDREGION}


{$REGION 'TClientModule1'}
    {$REGION 'TClientModule1 CLASS'}
procedure TClientModule1.LocalBeforePost(DataSet: TDataSet);
var
  Nombre,
  Leyenda,
  ListaValores,
  NombreTabla,
  NombreCampo,
  CadError: String;
  pProcBefore: TProcBefore;
  i, ii: Integer;
  LocDatos: TDatosCampo;
begin
  Nombre := TClientDataSet(DataSet).ProviderName;

  // Verificar si se debe ejecutar el procedimiento original antes o después del global
  if (MisTablas.IndexOf(Nombre) >= 0) and (MisTablas.Tabla(Nombre).IsBeforePost) and (MisTablas.Tabla(Nombre).MomentoBeforePost = EDADDespues) then
  begin
    pProcBefore := MisTablas.Tabla(Nombre).BeforePost;
    pProcBefore(DataSet);
  end;

  Try
    EDContinuarGlobal := CMEDContinuarGlobal;
    CMEDContinuarGlobal := True;

    if (EDContinuarGlobal) then
    begin
      if MisTablas.IndexOf(Nombre) >= 0 then
      begin
        // Comportamiento del localbeforepost en donde se validarán todos los campos
        NombreTabla := MisTablas.Tabla(Nombre).NombreTabla;
        CadError := '';

        for i := 0 to MisTablas.Tabla(NombreTabla).CuantosCampos -1 do
        begin
          NombreCampo := MisTablas.Tabla(NombreTabla).NombreCampo[i];
          LocDatos := MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos;

          if LocDatos.Descripcion = '' then
            Leyenda := NombreCampo
          else
            Leyenda := LocDatos.Descripcion;

          // Verificar si es un campo nulo
          if (LocDatos.NotNull) and (DataSet.FieldByName(NombreCampo).IsNull) then
            if LocDatos.Default <> Unassigned then
              DataSet.FieldByName(NombreCampo).AsVariant := LocDatos.Default
            else
              if MisTablas.Tabla(Nombre).ModoErrores = MEPrimerError then
                raise Exception.Create('El campo "' + Leyenda + '" no puede ser nulo.')
              else
                CadError := CadError + 'El campo "' + Leyenda + '" no puede ser nulo.' + #10;

          // Verificar si es un campo del tipo ENUM
          if LocDatos.Tipo = TCENUM then
          begin
            // Si es un ENUM, se deberá verificar que le dato se encuentre dentro de los elementos
            if MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Elementos.IndexOf(DataSet.FieldByName(NombreCampo).AsString) < 0 then
            begin
              // Armar los valores de las cadenas
              ListaValores := '';
              for ii := 0 to MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Elementos.CuantosElementos -1 do
              begin
                ListaValores := ListaValores + '"' + MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Elementos.Valores[ii] + '"';
                if ii +2 = MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Elementos.CuantosElementos then
                  ListaValores := ListaValores + ' y '
                else
                  ListaValores := ListaValores + ', ';
              end;

              if ListaValores <> '' then
                ListaValores := Copy(ListaValores, 1, Length(ListaValores) -2);

              if MisTablas.Tabla(Nombre).ModoErrores = MEPrimerError then
                raise Exception.Create('El valor "' + DataSet.FieldByName(NombreCampo).AsString + '" no es correcto, los valores posibles son:' + #10 + #10 + ListaValores)
              else
                CadError := CadError + 'El valor "' + DataSet.FieldByName(NombreCampo).AsString + '" no es correcto, los valores posibles son:' + #10 + #10 + ListaValores + #10;
            end;
          end;
        end;

        // Verificar si se llenó la list de errores
        if CadError <> '' then
          raise Exception.Create('Se han detectado los siguientes errres de captura:' + #10 + #10 + CadError + #10 + 'Verifique esto e intente grabar de nuevo.');
      end;
    end
    else
      raise Exception.Create('Proceso cancelado por el usuario.');
  Finally
    EDContinuarGlobal := True;
  End;

  // Verificar si se debe ejecutar el procedimiento original antes o después del global
  if (MisTablas.IndexOf(Nombre) >= 0) and (MisTablas.Tabla(Nombre).IsBeforePost) and (MisTablas.Tabla(Nombre).MomentoBeforePost = EDADAntes) then
  begin
    pProcBefore := MisTablas.Tabla(Nombre).BeforePost;
    pProcBefore(DataSet);
  end;

end;

function TClientModule1.BringData(Mthd:String):TDataSet;
var
  servMet: TSqlServerMethod;
  dsProv: TDataSetProvider;
  dsCnt: TClientDataSet;
begin
  servMet := TSqlServerMethod.Create(Self);
  servMet.SQLConnection := ClientModule1.SQLConnection1;
  servMet.ServerMethodName := Mthd;

  dsProv := TDataSetProvider.Create(Self);
  dsProv.DataSet := servMet;
  dsProv.Name := 'dsProv';

  dsCnt := TClientDataSet.Create(Self);
  dsCnt.ProviderName := 'dsProv';
  dsCnt.Open;

  ServMet.Free;
  dsProv.Free;
  result := dsCnt;
end;

procedure TClientModule1.procObtenerGlobales;
var
  proxy: TServerMethods1Client;
  Cta, i: Integer;
  Variable: String;
  Elem: TVarGlobal;

function Elemento(Numero: Integer; Cadena: String): String;
var
  Cuenta, Cta: Integer;
  Found: Boolean;
  Valor, Resultado: String;
begin
  Cuenta := 0;
  Valor := '';
  Cta := 0;
  Cadena := Cadena + '|';
  Resultado := '';
  Found := False;
  while (Cuenta < Length(Cadena)) and Not Found do
  begin
    Inc(Cuenta);
    if Cadena[Cuenta] = '|' then
    begin
      inc(Cta);
      if Cta = Numero then
      begin
        Found := True;
        Resultado := Valor;
      end
      else
        Valor := '';
    end
    else
      Valor := Valor + Cadena[Cuenta];
  end;
  Result := Resultado;
end;

begin
{  Try
    proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Cta := proxy.GlobalCount;  // Obtener el numero de elementos globales

    Globales := TGlobales.Create;

    for i := 0 to Cta - 1 do
    begin
      Variable := proxy.GlobalElem(i);

      Elem := TVarGlobal.Create;
      Elem.sNombre := Elemento(1, Variable);
      Elem.sTipo   := Elemento(2, Variable);
      Elem.vValor  := Elemento(3, Variable);

      Globales.ListaGlobal.AddObject(Elemento(1, Variable), Elem);
    end;
  Finally
    proxy.Free;
  End;}
end;
    {$ENDREGION}

    {$REGION 'TClientModule1 PRIVATE'}
Procedure TClientModule1.Cerrarmensaje(Sender: TObject);
var
  Componente: TWinControl;
begin
  Componente := TWinControl(Sender);

  while Assigned(Componente.Parent) do
    Componente := Componente.Parent;

  if Componente.ClassType = TForm then
    TForm(Componente).Close;
end;

procedure TClientModule1.myMemoChange(Sender: TObject);
var
  OldFocused: TWinControl;
begin
  Try
    OldFocused := Forma.ActiveControl;
    // Respaldas el objeto enfocado originalmente

    try
      TMemo(Sender).SetFocus;
      TMemo(Sender).SelStart := TMemo(Sender).GetTextLen;
      TMemo(Sender).Perform(EM_SCROLLCARET, 0, 0);
    except
      try
        TMemo(Sender).SelStart := TMemo(Sender).GetTextLen;
        SendMessage(TMemo(Sender).Handle, EM_SCROLLCARET, 0, 0);
      except
        ;
      end;
    end;
  Finally
    Forma.FocusControl(OldFocused);
  End;
end;

Function TClientModule1.ProcCrearConjunto(Const DataSet: TClientDataSet; Tabla: String; Var LocalName: String; ConjuntoTipo: String; Opciones: TSetCCOpciones): Boolean;
var
  proxy: TServerMethods1Client;
  Datos, sCad, Parte: String;
  Linea: TStringList;
  p: Integer;
  vInt: Int64;
  locCuandoBeforeOpen,
  locCuandoBeforePost,
  locModoErrores: TSetCMCCOpciones;
  locOpciones: TSetCMCCOpciones;
begin
  Try
    LocalName := Tabla;
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      proxy.CreateDataSet(Globales.Elemento('DATABASE').AsString, Tabla, LocalName, ConjuntoTipo);

      if (MisTablas.IndexOf(Tabla) < 0) and (AnsiCompareText(ConjuntoTipo, 'update') = 0) then
      begin
        Datos := proxy.DataStructure(Tabla);

        if Datos <> '' then
          // Agregar la tabla que se está leyendo
          MisTablas.Add(Tabla)
      end
      else
        Datos := '';

      // Descomponer los datos de los campos
      while Datos <> '' do
      begin
        Linea := TStringList.Create;

        Linea.Clear;
        p := Pos('|', Datos);
        Linea.CommaText := Copy(Datos, 1, p -1);
        Datos := Copy(Datos, p +1, Length(Datos));

        // Agregar el campo
        MisTablas.Tabla(Tabla).Add(Linea[2]);

        // Abregar las propiedades del campo
        MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Posicion := StrToInt(Linea[3]);

        // Permitir que se quede en nulo el valor por default si es que esto es así
        if Linea[4] <> 'NULL' then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Default := Linea[4];

        MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.NotNull := AnsiCompareText(Linea[5], 'NO') = 0;

        if Linea[7] <> '' then
        begin
          Try
            vInt := StrToInt64(Linea[7]);
          Except
            vInt := High(Int64);
          End;
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Largo := vInt;
        end;

        if Linea[8] <> '' then
        begin
          Try
            vInt := StrToInt64(Linea[8]);
          Except
            vInt := High(Int64);
          End;
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Precision := vInt;
        end;

        MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.LlavePrimaria := AnsiCompareText(Linea[10], 'PRI') = 0;
        MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Unico := AnsiCompareText(Linea[10], 'UNI') = 0;
        MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Externo := AnsiCompareText(Linea[10], 'MUL') = 0;
        MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Descripcion := Linea[11];

        if (AnsiCompareText(Linea[6], 'tinyint') = 0) or (AnsiCompareText(Linea[6], 'smallint') = 0) or (AnsiCompareText(Linea[6], 'mediumint') = 0) or (AnsiCompareText(Linea[6], 'int') = 0) or (AnsiCompareText(Linea[6], 'bigint') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCInteger;

        if (AnsiCompareText(Linea[6], 'float') = 0) or (AnsiCompareText(Linea[6], 'double') = 0) or (AnsiCompareText(Linea[6], 'decimal') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCFloat;

        if (AnsiCompareText(Linea[6], 'date') = 0) or (AnsiCompareText(Linea[6], 'timestamp') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCDate;

        if (AnsiCompareText(Linea[6], 'datetime') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCDateTime;

        if (AnsiCompareText(Linea[6], 'time') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCTime;

        if (AnsiCompareText(Linea[6], 'year') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCYear;

        if (AnsiCompareText(Linea[6], 'char') = 0) or (AnsiCompareText(Linea[6], 'varchar') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCString;

        if (AnsiCompareText(Linea[6], 'tinyblob') = 0) or (AnsiCompareText(Linea[6], 'mediumblob') = 0) or (AnsiCompareText(Linea[6], 'blob') = 0) or (AnsiCompareText(Linea[6], 'logblob') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCBlob;

        if (AnsiCompareText(Linea[6], 'tinytext') = 0) or (AnsiCompareText(Linea[6], 'mediumtext') = 0) or (AnsiCompareText(Linea[6], 'text') = 0) or (AnsiCompareText(Linea[6], 'logtext') = 0) then
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCText;

        if (AnsiCompareText(Linea[6], 'enum') = 0) then
        begin
          MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Tipo := TCENUM;

          // Agregar los elementos
          sCad := Copy(Linea[9], 6, Length(Linea[9]) -6);
          repeat
            p := Pos(QuotedStr(';'), sCad);
            if p = 0 then p := Length(sCad);
            Parte := Copy(sCad, 2, p -2);
            sCad := Copy(sCad, p +2, Length(sCad));

            MisTablas.Tabla(Tabla).Campo(Linea[2]).Datos.Elementos.Add(Parte);
          until sCad = '';
        end;
      end;

      // Verificar si el ClientDataSet cuenta con un procedimiento BeforePost asigando
      if (AnsiCompareText(ConjuntoTipo, 'update') = 0) then
      begin
        if Assigned(DataSet.BeforePost) and (MisTablas.IndexOf(LocalName) < 0) then
        begin
          LocOpciones := [];
          if CCOpenAntes in Opciones then
            Include(LocOpciones, CCOOpenAntes)
          else
            Include(LocOpciones, CCOOpenDespues);

          if CCPostAntes in Opciones then
            Include(locOpciones, CCOPostAntes)
          else
            Include(locOpciones, CCOPostDespues);

          if CCListaErrores in Opciones then
            Include(locOpciones, CCOListaErrores)
          else
            Include(locOpciones, CCOPrimerError);

          MisTablas.Add(LocalName, LocOpciones);
          MisTablas.Tabla(LocalName).NombreTabla := Tabla;
          MisTablas.Tabla(LocalName).BeforePost := DataSet.BeforePost;
        end;
        // Asignar el procedimiento para el beforepost local para el ClientDataSet
        DataSet.BeforePost := LocalBeforePost;
      end;
    Finally
      proxy.Free;
    End;

    DataSet.ProviderName := LocalName;
    DataSet.RemoteServer := ClientModule1.DSProviderConnection1;

    Result := True;
  Except
    Result := False;
    Raise;
  End;
end;

function TClientModule1.ProcObtenerPrefijo(Var Prefijo: String): Boolean;
var
  proxy: TServerMethods1Client;
begin
  Try
    proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := proxy.GetPrefix(Globales.Elemento('DATABASE').AsString, Prefijo);
  Finally
    proxy.Free;
  End;
end;

function TClientModule1.FuncDatabaseInfo(Const DataSet: TClientDataSet; Var NombreDataSet: String; Tipo: String): Boolean;
var
  proxy: TServerMethods1Client;
begin
  Try
    NombreDataSet := '';
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      proxy.GetDataBasesInfo(NombreDataSet, Tipo);
    Finally
      proxy.Free;
    End;

     DataSet.ProviderName := NombreDataSet;
     DataSet.RemoteServer := ClientModule1.DSProviderConnection1;

     Result := True;
  Except
    Result := False;
    Raise;
  End;
end;

function TClientModule1.ProcEliminarConjunto(LocalName: String): Boolean;
var
  proxy: TServerMethods1Client;
begin
  Result := False;
  Try
    Try
      Try
        // Tratar de liberar la memoria asegurandose de no detener el proceso
        if MisTablas.IndexOf(LocalName) >= 0 then
          MisTablas.Tabla(LocalName).Delete;
      Except
        ;
      End;
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      Result := proxy.FreeDataSet(LocalName) = 2;
    Finally
      proxy.Free;
    End;
  Except
    on e:exception do
      raise InteligentException.CreateByCode(2, [e.Message]);
      // .Create('No ha sido posible eliminar los objetos de datos en el servidor');
  End;
end;

function TClientModule1.ProcCargarDatosFiltrados(ClientDataSet: TClientDataSet; Campos: String; Valores: Array of Variant; Reusar: Boolean): Boolean;
var
  Cadena: String;
  pValor: String;
  i: Integer;
  proxy: TServerMethods1Client;
begin
  Result := True;

  // Convertir los parametros array en cadenas
  Try
    // Verificar si algunos de los valores pasados tienen separados ","
    for i := low(Valores) to high(Valores) do
    begin
      Cadena := Valores[i];
      if Pos(',', Cadena) <> 0 then
      begin
        Cadena := StringReplace(Cadena, ',', '|', [rfReplaceAll, rfIgnoreCase]);
        Valores[i] := Cadena;
      end;
    end;

    Cadena := '';
    for i := 0 to High(Valores) do
    begin
      if Cadena <> '' then Cadena := Cadena + ',';
      if Valores[i] = Null then
        Cadena := Cadena + 'Null'
      else
      begin
        pValor := Valores[i];
        Cadena := Cadena + pValor;
      end;
    end;

    // Descomponer los nombres de los valores
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      proxy.ReloadFilterData(ClientDataSet.ProviderName, Campos, Cadena, Reusar);
    Finally
      proxy.Free;
    End;
  Except
    Result := False;
  End;
end;

function TClientModule1.FuncLimpiarDatosFiltrados(ClientDataSet: TClientDataSet): Boolean;
var
  proxy: TServerMethods1Client;
begin
  Result := False;
  Try
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      proxy.ClearFilterData(ClientDataSet.ProviderName);
      Result := True;
    Finally
      proxy.Free;
    End;
  Except
    Result := False;
  End;
end;

function TClientModule1.FuncChecharUnidad(Const DataSet: TClientDataSet; Var NombreDataSet: String; Medida: String): Integer;
var
  proxy: TServerMethods1Client;
begin
  Result := 0;
  Try
    proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := proxy.CheckUnit(Globales.Elemento('DATABASE').AsString, NombreDataSet, Medida);
  Finally
    proxy.Free;
  End;

  DataSet.ProviderName := NombreDataSet;
  DataSet.RemoteServer := ClientModule1.DSProviderConnection1;
  DataSet.Open;
end;

function TClientModule1.FuncFechaACadena(Fecha: TDate): String;
begin
  Result := IntToStr(YearOf(Fecha)) + '-' + RightStr('0' + IntToStr(MonthOf(Fecha)),2) + '-' + RightStr('0' + IntToStr(DayOf(Fecha)),2);
end;

function TClientModule1.FuncRegistrosValor(Tabla: string; CampoValida: String; Campos: string; Valores: array of Variant; Tipo: Integer): Integer;
var
  Cadena,
  pValor: String;
  i: Integer;
  proxy: TServerMethods1Client;
begin
  Result := -1;

  Try
    Cadena := '';
    for i := 0 to high(Valores) do
    begin
      if Cadena <> '' then Cadena := Cadena + ',';
      if Valores[i] = Null then
        Cadena := Cadena + 'Null'
      else
      begin
        pValor := Valores[i];
        Cadena := Cadena + pValor;
      end;
    end;

    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);

      // Agregar una pastilla para no modificar los parámetros enviados al servidor
      // necesito agregar el campo que se va a incluir en las sentencias max y min
      // pero para no pasarle un parametro mas se lo voy a agregar en los campos de
      // validacion, llegando al servidor se lo retiro, lo almaceno y dejo
      // todo como debe ser... E. Rangel - 2015-03-28

      if Tipo > 1 then
        Campos := CampoValida + ',' + Campos;

      case Tipo of
        1: Result := proxy.GetRecordCount(Globales.Elemento('DATABASE').AsString, Tabla, Campos, Cadena);
        2: Result := proxy.GetRecordMin(Globales.Elemento('DATABASE').AsString, Tabla, Campos, Cadena);
        3: Result := proxy.GetRecordMax(Globales.Elemento('DATABASE').AsString, Tabla, Campos, Cadena);
      end;

    Finally
      proxy.Free;
    End;
  Except
    Raise;
  End;
end;

function TClientModule1.FuncCuantosRegistros(DataSet: TClientDataSet): integer;
var
  Proxy: TServerMethods1Client;
begin
  Result := -1;
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := proxy.HowManyRecs(Globales.Elemento('DATABASE').AsString, DataSet.ProviderName);
  Finally
    proxy.Free;
  End;
end;

function TClientModule1.FuncVerificaExiste(DataSet: TClientDataSet; Codigo: String; IdLlave: Integer): Boolean;
var
  Proxy: TServerMethods1Client;
begin
  Result := False;
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := proxy.VerifyExists(DataSet.ProviderName, Codigo, IdLlave);
  Finally
    proxy.Free;
  End;
end;

function TClientModule1.FuncCuantosSeleccionados(ClientDataSet:TClientDataSet): integer;
var
  proxy: TServerMethods1Client;
begin
  Result := 0;
  Try
    proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := proxy.HowManySelected(ClientDataSet.ProviderName);
  Finally
    proxy.Free;
  End;
end;

function TClientModule1.FuncPonerSentenciaSQL(Nombre: String; Valor: String): Boolean;
var
  proxy: TServerMethods1Client;
begin
  Result := False;
  Try
    proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := proxy.SetSQLText(Nombre, Valor);
  Finally
    proxy.Free;
  End;
end;

function TClientModule1.FuncListaBasesdeDatos(Cual: Byte): String;
var
  Proxy: TServerMethods1Client;
begin
  Result := '';
  Try
    if Not ClientModule1.SQLConnection1.Connected then
      ClientModule1.SQLConnection1.Connected := True;
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.GetAvailableDatabases(Cual);
  Finally
    Proxy.Free;
  end;
end;

function TClientModule1.FuncUltimoId: LongInt;
var
  Proxy: TServerMethods1Client;
begin
  Result := -1;
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.GetLastId;
  Finally
    Proxy.Free;
  end;
end;

function TClientModule1.FuncUltimoCodigo: String;
var
  Proxy: TServerMethods1Client;
begin
  Result := '';
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.GetLastCode;
  Finally
    Proxy.Free;
  end;
end;

procedure TClientModule1.ColorGrid(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
  if not(csSelected in CellState) then
    if ARow mod 2 = 0 then
      CellColor := $00F5FCFE;
end;

function TClientModule1.FuncDataUser(Tipo: TClassUser; Reiniciar: Boolean; Var Comentario: String): Boolean;
var
  Proxy: TServerMethods1Client;
  Paso: TClassUser;
begin
  Paso := TClassUser.Create;
  Paso.Usuario := Tipo.Usuario;
  Paso.Nombre := Tipo.Nombre;
  Paso.IP := Tipo.IP;
  Paso.Cargo := Tipo.Cargo;
  Paso.Departamento := Tipo.Departamento;
  Result := False;
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Comentario := Proxy.SetDataUser(Paso, Reiniciar);
    Result := Comentario = '';
  Finally
    Proxy.Free;
  end;
end;

function TClientModule1.FuncEstaBloqueado(DataSet: TClientDataSet): Boolean;
var
  Proxy: TServermethods1Client;
begin
  if DataSet.ClassType = TClientDataSet then
    Try
      Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      Result := Proxy.IsLocked(TClientDataSet(DataSet).ProviderName);
    Finally
      Proxy.Free;
    End;
end;

function TClientModule1.FuncProcedimientoAlmacenado(var resDataSet: TClientDataSet;
  NombreProcedimiento: String;
  Parametros: String; Valores: Array of Variant): Boolean;
var
  proxy: TServerMethods1Client;
  pValor, Cadena,
  LocalName: String;
  i: Integer;
begin
  Try
    Try
      Result := False;
      Cadena := '';
      for i := 0 to high(Valores) do
      begin
        if Cadena <> '' then Cadena := Cadena + ',';
        if Valores[i] = Null then
          Cadena := Cadena + 'Null'
        else
        begin
          pValor := Valores[i];
          Cadena := Cadena + pValor;
        end;
      end;

      LocalName := '';
      Try
        proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        proxy.StoredProcedure(NombreProcedimiento, Parametros, Cadena, LocalName);
      Finally
        Proxy.Free;
      End;

      resDataSet.ProviderName := LocalName;
      resDataSet.RemoteServer := ClientModule1.DSProviderConnection1;

      if AnsiCompareText(Copy(NombreProcedimiento, 1, 4), 'res_') = 0 then
        resDataSet.Open;

      Result := True;
    Finally
      if AnsiCompareText(Copy(NombreProcedimiento, 1, 4), 'res_') <> 0 then
        resDataSet.Destroy;
    End;
  Except
    EliminarConjunto(resDataset);
    Raise;
  End;
end;

function TClientModule1.FuncServidorFechaHora(Modo: Integer): TDateTime;
var
  Proxy: TServerMethods1Client;
begin
  Try
    proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := proxy.ServerDateTime(Modo);
  Finally
    Proxy.Free;
  End;
end;

function TClientModule1.FuncCadenaServidor(Cadena: String): Boolean;
var
  IPServidor,
  DataBase,
  HostNameServidor,
  NombreUnico,
  TableName,
  IPCliente,
  Codigo,
  SubCadena,
  Delay,
  Mensaje: String;
  Valor, Minutos, Cta, IdLlave: Integer;
  Componente: TComponent;
  myPanel: TPanel;
  myButton: TAdvGlowButton;
  myMemo: TMemo;
  OldCount, i: Integer;
begin
  // Analizar la cadena recibida del servidor
  if Pos('#:#', Cadena) > 0 then
  begin
    Codigo := Copy(Cadena, 2, Pos('#:#', Cadena) -2);
    Cadena := Copy(Cadena, Length(Codigo) + 5, Length(Cadena));

    if Codigo = 'CIERRATESESAMO' then
    begin
      Cadena := Copy(Cadena, 1, Length(Cadena) -1);

      // Verificar si soy yo quien debe cerrarse
      if CompareText(Globales.Elemento('NombreUnico').AsString, Cadena) = 0 then
      begin
        Form2.ObligaCerrar := True;
        Application.MainForm.Close;
      end;
    end
    else
    begin
      // Descomponer la cadena secundaria
      Cta := 0;
      while Cadena <> '' do
      begin
        if Cta = 7 then
        begin
          Mensaje := Copy(Cadena, 1, Length(Cadena) -1);
          Cadena := '';
        end
        else
        begin
          if Pos(':', Cadena) > 0 then
          begin
            SubCadena := Copy(Cadena, 1, Pos(':', Cadena) -1);
            Cadena := Copy(Cadena, Length(SubCadena) + 2, Length(Cadena));
          end
          else
          begin
            SubCadena := Copy(Cadena, 1, Length(Cadena) - 1);
            Cadena := '';
          end;

          case Cta of
            0: IPServidor := SubCadena;
            1: DataBase := SubCadena;
            2: HostNameServidor := SubCadena;
            3: NombreUnico := SubCadena;
            4: TableName := SubCadena;
            5: IdLlave := StrToInt(SubCadena);
            6: IPCliente := SubCadena;
          end;
        end;

        Inc(Cta);
      end;

      // Verificar si la base de datos es a la cual yo estoy conectado y si el mensaje está dirigido a mi
      if (CompareText(DataBase, Globales.Elemento('DATABASE').AsString) = 0) and (Globales.Elemento('NOMBREUNICO').AsString = NombreUnico) {and (CompareText(ClassUser.IP, IPCliente) = 0)} then
      begin
        if Codigo = 'LOCKEDRECORD' then
        begin
          // Verificar si esta ventana es la que tiene bloqueado el registro
          if Globales.Elemento('NOMBREUNICO').AsString = NombreUnico then
            // Activar el timer de registro bloqueado
            IniciarTimer(TableName + '__' + IntToStr(IdLlave));
        end;

        if Codigo = 'UNLOCKEDRECORD' then
        begin
          // Desactivar el timer de registro bloqueado
          DetenerTimer(TableName + '__' + IntToStr(IdLlave));
        end;
      end;

      if (CompareText(DataBase, Globales.Elemento('DATABASE').AsString) = 0) and (Globales.Elemento('NOMBREUNICO').AsString = NombreUnico) {and (CompareText(ClassUser.IP, IPCliente) = 0)} then
      begin
        // Mostrar el mensaje proveniente del servidor
        if (Codigo = 'MESSAGE') then
        begin
          // Verificar si la Forma ya existe
          if (Not Assigned(Forma)) or ((Assigned(Forma)) and (Forma.ComponentCount = 0)) then
          begin
            Application.CreateForm(TForm, Forma);

            Try
              Forma.Width := 600;
              Forma.Height := 400;
              Forma.BorderIcons := [];
              Forma.Position := poOwnerFormCenter;
              Forma.Caption := 'Mensajes emitidos por el Servidor de Datos';

              myPanel := TPanel.Create(Forma);
              myPanel.Parent := Forma;
              myPanel.Height := 40;
              myPanel.Align := alBottom;
              myPanel.Padding.Top := 4;
              myPanel.Padding.Right := 4;
              myPanel.Padding.Bottom := 4;

              myButton := TAdvGlowButton.Create(Forma);
              myButton.Parent := myPanel;
              myButton.Caption := 'Cerrar';
              myButton.OnClick := CerrarMensaje;
              myButton.Align := alRight;

              myPanel := TPanel.Create(Forma);
              myPanel.Name := 'MainPanel';
              myPanel.Parent := Forma;
              myPanel.Height := 40;
              myPanel.Align := alClient;
              myPanel.Padding.Top := 4;
              myPanel.Padding.Right := 4;
              myPanel.Padding.Bottom := 4;

              myMemo := TMemo.Create(myPanel);
              myMemo.Name := 'myMemo';
              myMemo.Parent := myPanel;
              myMemo.Align := alClient;
              myMemo.Text := Mensaje;
              myMemo.ScrollBars := ssVertical;
              myMemo.ReadOnly := True;
              myMemo.WordWrap := True;
              myMemo.OnChange := myMemoChange;

              Forma.ShowModal;
            Finally
              Forma.Free;
            End;
          end
          else
          begin
            Componente := Forma.FindComponent('MainPanel');
            if Assigned(Componente) then
            begin
              Componente := TPanel(Componente).FindComponent('myMemo');
              if Assigned(Componente) then
              begin
                TMemo(Componente).Lines.Add(' ');
                TMemo(Componente).Lines.Add(Mensaje);
              end;
            end;
          end;
        end;

        if (Codigo = 'CLIENTCLOSE') then
        begin
          // Cerrar el cliente de manera de emergencia
          Form2.ObligaCerrar := True;
          Application.MainForm.Close;
        end;

        if (Codigo = 'DBERROR') then
          InteliDialog.ShowModal('Error en la base de datos', 'El servidor ha alcanzando el siguiente error en la base de datos, informe de ello al administrador del sistema:' + #10 + #10 + Mensaje, mtError, [mbOk], 0);
          //raise InteligentException.CreateByCode(28, [Mensaje]);
      end;
    end;
  end;

  // Verificar si se trata de un cierre de servidor
  if CompareText(Copy(Cadena, 1, 13), '"SERVERCLOSE:') = 0 then
  begin
    Cadena := Copy(Cadena, Pos(':', Cadena) +1, Length(Cadena));
    Cadena := Copy(Cadena, 1, Length(Cadena) -1);
    Cadena := Copy(Cadena, Pos('#', Cadena) +1, Length(Cadena));
    Codigo := Copy(Cadena, 1, Pos('#', Cadena) -1);
    Delay := Copy(Cadena, Pos('#', Cadena) +1, Length(Cadena));

    Valor := StrToInt(Codigo);

    Minutos := Trunc((Valor / 1000) / 60);
    Codigo := IntToStr(Minutos) + ':' + RightStr('0' + IntToStr(Trunc((Valor - (Minutos * 60 * 1000)) / 1000)), 2) + ' Minutos';

    Form2.AlertSrv.Text := 'El servidor está tratando de cerrarse, tiene Usted ' + Codigo + ' minutos para guardar su información antes de que el servidor cierre de manera automática la conexión.';
    Form2.AlertSrv.CloseDelay := StrToInt(Delay);
    Form2.AlertSrv.Popup;
  end;

  if CompareText(Cadena, '"CIERRATESESAMO"') = 0 then
  begin
    // Cerrar el pedo
    Form2.ObligaCerrar := True;
    Form2.Close;
  end;

  // Verificar si se trata de un cierre de cliente
  if CompareText(Copy(Cadena, 1, 13), '"CLIENTCLOSE:') = 0 then
  begin
    Cadena := Copy(Cadena, Pos(':', Cadena) +1, Length(Cadena));
    Cadena := Copy(Cadena, 1, Length(Cadena) -1);
    Cadena := Copy(Cadena, Pos('#', Cadena) +1, Length(Cadena));
    Codigo := Copy(Cadena, 1, Pos('#', Cadena) -1);
    Delay := Copy(Cadena, Pos('#', Cadena) +1, Length(Cadena));

    Valor := StrToInt(Codigo);

    Minutos := Trunc((Valor / 1000) / 60);
    Codigo := IntToStr(Minutos) + ':' + RightStr('0' + IntToStr(Trunc((Valor - (Minutos * 60 * 1000)) / 1000)), 2) + ' Minutos';

    Form2.AlertSrv.Text := 'El administrador del servidor ha ordenado el cierre de esta conexión, tiene Usted ' + Codigo + ' minutos para guardar su información antes de que el servidor cierre de manera automática la conexión.';
    Form2.AlertSrv.CloseDelay := StrToInt(Delay);
    Form2.AlertSrv.Popup;
  end;
end;

procedure TClientModule1.pAbrirAutorizaciones(Cuales: String);
begin
  // Verificar si es necesario crear el conjunto de datos
  if cdAutorizaciones.ProviderName = '' then
    if Not CrearConjunto(cdAutorizaciones, 'nuc_personal_autoriza', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Autorizaciones por Puesto']);

   if cdAutorizaciones.Active then
  begin
    if cdAutorizaciones.RecordCount = 0 then
      cdAutorizaciones.Refresh;
  end
  else
  begin
    if not CargarDatosFiltrados(cdAutorizaciones, 'AplicaFirma,SoloFirmas', [Cuales, 'Si']) then
      raise InteligentException.CreateByCode(5, ['Autorizaciones por Puesto', 'Si', 'SoloFirmas']);

    cdAutorizaciones.Open;
  end;
end;

procedure TClientModule1.pAbrirSolicitantes(Cuales: String);
begin
  // Verificar si es necesario crear el conjunto de datos
  if cdSolicitantes.ProviderName = '' then
    if Not CrearConjunto(cdSolicitantes, 'nuc_personal_autoriza', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Solicitantes']);

  if Not cdsolicitantes.Active then
  begin
    if Not CargarDatosFiltrados(cdSolicitantes, 'AplicaFirma,SoloFirmas', [Cuales, 'No'])  then
      raise InteligentException.CreateByCode(6, ['Solicitantes', Cuales, 'AplicaFirmas']);

    cdSolicitantes.Open;
  end;

end;

procedure TClientModule1.ProcAccedeARutaOrganizacion(Hijos: String);
begin
  if cdOrganizacionRuta.ProviderName = '' then
  begin
    if Not CrearConjunto(cdOrganizacionRuta, 'nuc_organizacion', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Organizaciones']);

    if Not CargarDatosFiltrados(cdOrganizacionRuta, 'Hijos', [Hijos]) then
      raise InteligentException.CreateByCode(6, ['Organizaciones', Hijos, 'Hijos']);
  end;

  if Not cdOrganizacionRuta.Active then
    cdOrganizacionRuta.Open
  else
    if cdOrganizacionRuta.RecordCount = 0 then
      cdOrganizacionRuta.Refresh;
end;

function TClientModule1.funcLlenarComboBox(ComboBox: TObject; Items: TStrings;
  NombreTabla: String; NombreCampo: String;
  TipoAgregado: TTipoAgregado = TALimpiar): Integer;
var
  i: Integer;
begin
  if TipoAgregado = TALimpiar then
    Items.Clear;

  // Cargar todos los elementos al combo
  for i := 0 to MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Elementos.CuantosElementos -1 do
    Items.Add(MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Elementos.Valores[i]);

  // Seleccionar el elemento por default
  if AnsiCompareText(ComboBox.ClassParent.ClassName, 'TcxCustomComboBox') = 0  then
    TcxCustomComboBox(ComboBox).ItemIndex := Items.IndexOf(MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Default)
  else
    TCustomComboBox(ComboBox).ItemIndex := Items.IndexOf(MisTablas.Tabla(NombreTabla).Campo(NombreCampo).Datos.Default);
end;

    {$ENDREGION}

    {$REGION 'TClientModule1 PUBLIC'}
constructor TClientModule1.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

procedure TClientModule1.DataModuleCreate(Sender: TObject);
var
  Existe: Boolean;
begin
  CMEDContinuarGlobal := True;
  ForzarLocales := False;
  MisTablas := TTablas.Create;

  //ListaProcedimientos := TListaProcedimientos.Create;

  // Obtener el número máximo de registros que se recomienda para la transferencia de registros
  Try
    MaxCuantos := StrToInt(VarRegistry('\Ambiente', '\Principal', 'MaximoRegistros', Existe));
    if Not Existe then MaxCuantos := DefaultMaxCuantos;
  Except
    MaxCuantos := DefaultMaxCuantos;
  End;

  ListaLapso := TStringList.Create;
  ListaLapso.Clear;
end;

procedure TClientModule1.DataModuleDestroy(Sender: TObject);
begin
  MisTablas.Destroy;
  ListaLapso.Free;
end;

destructor TClientModule1.Destroy;
begin
end;

function TClientModule1.StrListToCombo(Mthd:String; Combo:TComboBox; ListCol, ValueList:TStringList):Boolean;
Var
  DataSet : TDataSet;
  ii : Integer;
begin
  Dataset := BringData(Mthd);
  DataSet.First;
  Try
    while Not DataSet.Eof do begin
      Combo.AddItem(DataSet.FieldByName(ListCol[1]).AsString,Nil);
      ValueList.Add(DataSet.FieldByName(ListCol[0]).AsString);
      DataSet.Next;
    end;
  Finally
    DataSet.Free;
  End;
end;

function TClientModule1.dataToCombo(Mthd: string; combo: TComboBox;
  campoLlave, campoVista: string): TStringList;
Var
  ii : Integer;
  ValueList: TStringList;
  DataSet: TDataSet;
begin
  ValueList := TStringList.Create;
  DataSet := BringData(Mthd);
  DataSet.First;
  Try
    while Not DataSet.Eof do begin
      Combo.Items.Add(DataSet.FieldByName(campoVista).AsString);
      ValueList.Add(DataSet.FieldByName(campoLlave).AsString);
      DataSet.Next;
    end;
  Finally
    DataSet.Free;
  End;
  result := ValueList;
end;

function TClientModule1.ArrayToList(Arreglo:Array of String;StrList:TStringList):Boolean;
Var
  i: Integer;
begin
  i := 0;
  while i < Length(Arreglo) do begin
    StrList.Add(Arreglo[i]);
    Inc(i);
  end;
  Result := True;
end;

function TClientModule1.ValidarCaja(Sender:TObject):Integer;
begin
  if Sender.ClassName = 'TEdit' then
    if TEdit(Sender).Text <> '' then
    begin
      TEdit(Sender).Color := $0080FF80;
      Result := 1;
    end
    else
    begin
      TEdit(Sender).Color := clRed;
      Result := 0;
    end
  else
    if Sender.ClassName = 'TComboBox' then
    begin
      if TComboBox(Sender).Text <> '' then
      begin
        TComboBox(Sender).Color := $0080FF80;
        Result := 1;
      end
      else
      begin
        TComboBox(Sender).Color := clRed;
        Result := 0;
      end;
    end;
end;

function TClientModule1.SetCombo(Combo:TComboBox; Index: string): Boolean;
var
  i: Integer;
begin
  for i := 0 to Combo.GetCount - 1 do begin
    if Combo.Items[i] = Index then begin
      Combo.ItemIndex := i;
    end;
  end;
end;

function TClientModule1.IntToBoolean(Integro: Integer):Boolean;
begin
  if Integro > 0 then begin
    Result := True;
  end else begin
    Result := False;
  end;
end;

function TClientModule1.arrayOfVariantsToString(
  Valores: array of Variant): string;
var
  Cadena: string;
  ii: Integer;
  pValor: String;
begin
  Cadena := '';
  for ii := 0 to High(Valores) do
  begin
    if Cadena <> '' then Cadena := Cadena + ',';
    if Valores[ii] = Null then
      Cadena := Cadena + 'Null'
    else
    begin
      pValor := Valores[ii];
      Cadena := Cadena + pValor;
    end;
  end;
  Result := cadena;
end;

procedure TClientModule1.ComponentColor(Sender: TObject);
var
  Numero: Integer;
begin
  numero := 0;
  while numero < TForm(Sender).ComponentCount do
  begin
    if (TForm(Sender).Components[Numero].ClassName = 'TLabel') and (TForm(Sender).Components[Numero].Tag <> 99) then
      Try
        TLabel(TForm(Sender).Components[Numero]).Font.Size := StrToInt(ClientModule1.ConfigGetValor('Ventana',cdNucConfiguracion));
      Except
        ;   // No hacer nada
      End;

    if TForm(Sender).Components[Numero].ClassName = 'TPanel' then
    Begin
      if Tpanel(TForm(Sender).Components[Numero]).tag <> 99 then
        Tpanel(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorPanel;
    End;

    if TForm(Sender).Components[Numero].ClassName = 'TDBRadioGroup' then
    Begin
      TDBRadioGroup(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorPanel;
    End;

    if TForm(Sender).Components[Numero].ClassName = 'TAdvGlowButton' then
    Begin
      TAdvGlowButton(TForm(Sender).Components[Numero]).Appearance.ColorMirror:= Form2.GlobalColor1;
      TAdvGlowButton(TForm(Sender).Components[Numero]).Appearance.ColorMirrorDisabled:= Form2.GlobalColor2;
    End;

    if TForm(Sender).Components[Numero].ClassName = 'TAdvSmoothButton' then
    Begin
      TAdvSmoothButton(TForm(Sender).Components[Numero]).Color:= Form2.GlobalColor1;
    End;

    if (TForm(Sender).Components[Numero].ClassName = 'TScrollBox') and (TForm(Sender).Components[Numero].Tag <> 99)then
    Begin
     TScrollBox(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorPanel;
    End;

    if TForm(Sender).Components[Numero].ClassName = 'TJvDatePickerEdit' then
    Begin
      TJvDatePickerEdit(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorCampo;
      TJvDatePickerEdit(TForm(Sender).Components[Numero]).Font.Color  := Form2.GlobalColorCaptura;;
    End;

    if (TForm(Sender).Components[Numero].ClassName = 'TComboBox') and (TForm(Sender).Components[Numero].Tag <> 99) then
    Begin
     TComboBox(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorCaptura;
    End;

    try
      if TForm(Sender).Components[Numero].ClassName = 'TAdvShapeButton' then
      Begin
       TAdvShapeButton(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorTextBtn;
      End;
    except
      ;
    end;

    if TForm(Sender).Components[Numero].ClassName = 'TGroupBox' then
    Begin
      TGroupBox(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorGroupText;
      TGroupBox(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorGroup;
    End;

    if (TForm(Sender).Components[Numero].ClassName = 'TEdit') and (TForm(Sender).Components[Numero].Tag <> 99) then
    Begin
      Tedit(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorCampo;
      Tedit(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorCaptura;
    End;

    if (TForm(Sender).Components[Numero].ClassName = 'TAdvEdit') and (TForm(Sender).Components[Numero].Tag <> 99) then
    Begin
      TAdvEdit(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorCampo;
      TAdvEdit(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorCaptura;
    End;

    if (TForm(Sender).Components[Numero].ClassName = 'TDBEdit') and (TForm(Sender).Components[Numero].Tag <> 99) then
    Begin
      TDbedit(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorCampo;
      TDbedit(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorCaptura;
    End;

    if (TForm(Sender).Components[Numero].ClassName = 'TDBMemo') and (TForm(Sender).Components[Numero].Tag <> 99)then
    Begin
      TDbMemo(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorCampo;
      TDbMemo(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorCaptura;
    End;

    if (TForm(Sender).Components[Numero].ClassName = 'TMemo') and (TForm(Sender).Components[Numero].Tag <> 99) then
    Begin
      TMemo(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorPanel;
      TMemo(TForm(Sender).Components[Numero]).Font.Color := Form2.GlobalColorCaptura;
    End;

    if TForm(Sender).Components[Numero].ClassName = 'TJvDBImage' then
    Begin
      TJvDBImage(TForm(Sender).Components[Numero]).Color := Form2.GlobalColorPanel;
    End;

    if TForm(Sender).Components[Numero].ClassName = 'TSplitter' then
    Begin
      TSplitter(TForm(Sender).Components[Numero]).Color := clBlack;
    End;

    Inc(Numero);
  end;
end;

procedure TClientModule1.RastrearGrids(Sender: TObject);
var
  Numero,i: Integer;
begin
  numero := 0;
  while numero < TForm(Sender).ComponentCount do
  begin
    if TForm(Sender).Components[Numero].ClassName = 'TNextDBGrid' then
    Begin
      TNextDbGrid(TForm(Sender).Components[numero]).Color := ClWhite;
      if TForm(Sender).Components[Numero].Tag <> 99 then
        TNextDbGrid(TForm(Sender).Components[numero]).OnCellColoring := ColorGrid;
      i := 0;
      while i < TNextDbGrid(TForm(Sender).Components[numero]).Columns.Count do
      begin
        TNextDbGrid(TForm(Sender).Components[numero]).Columns[i].Font.Size := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion));
        inc (i);
      end;
      TNextDbGrid(TForm(Sender).Components[numero]).Options := TNextDbGrid(TForm(Sender).Components[numero]).Options+[GoGrid];
      TNextDbGrid(TForm(Sender).Components[numero]).Options := TNextDbGrid(TForm(Sender).Components[numero]).Options+[goMultiselect];
      TNextDbGrid(TForm(Sender).Components[numero]).Options := TNextDbGrid(TForm(Sender).Components[numero]).Options+[goSelectFullRow];
      TNextDbGrid(TForm(Sender).Components[numero]).Options := TNextDbGrid(TForm(Sender).Components[numero]).Options+[goIndicator];
      TNextDbGrid(TForm(Sender).Components[numero]).Options := TNextDbGrid(TForm(Sender).Components[numero]).Options+[goRowResizing];
      TNextDbGrid(TForm(Sender).Components[numero]).HeaderStyle := hsOffice2010;
      TNextDbGrid(TForm(Sender).Components[numero]).HeaderSize := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion))+8;
      TNextDbGrid(TForm(Sender).Components[numero]).SelectionColor := clSkyBlue;
      TNextDbGrid(TForm(Sender).Components[numero]).Font.Size := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion));
      TNextDbGrid(TForm(Sender).Components[numero]).Font.Name := 'Tahoma';
      TNextDbGrid(TForm(Sender).Components[numero]).Font.Color := clWindowText;
      TNextDbGrid(TForm(Sender).Components[numero]).HighlightedTextColor := clDefault;
      TNextDbGrid(TForm(Sender).Components[numero]).RowSize := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion))+8;


    End;
    if TForm(Sender).Components[Numero].ClassName = 'TNextGrid' then
    Begin
      TNextGrid(TForm(Sender).Components[numero]).Color := ClWhite;
      if TForm(Sender).Components[Numero].Tag <> 99 then
        TNextGrid(TForm(Sender).Components[numero]).OnCellColoring := ColorGrid;
      i := 0;
      while i < TNextGrid(TForm(Sender).Components[numero]).Columns.Count do
      begin
        TNextGrid(TForm(Sender).Components[numero]).Columns[i].Font.Size := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion));
        inc (i);
      end;
      TNextGrid(TForm(Sender).Components[numero]).Options := TNextGrid(TForm(Sender).Components[numero]).Options+[GoGrid];
      TNextGrid(TForm(Sender).Components[numero]).Options := TNextGrid(TForm(Sender).Components[numero]).Options+[goMultiselect];
      TNextGrid(TForm(Sender).Components[numero]).Options := TNextGrid(TForm(Sender).Components[numero]).Options+[goSelectFullRow];
      TNextGrid(TForm(Sender).Components[numero]).Options := TNextGrid(TForm(Sender).Components[numero]).Options+[goIndicator];
      TNextGrid(TForm(Sender).Components[numero]).Options := TNextGrid(TForm(Sender).Components[numero]).Options+[goRowResizing];
      TNextGrid(TForm(Sender).Components[numero]).HeaderStyle := hsOffice2010;
      TNextGrid(TForm(Sender).Components[numero]).HeaderSize := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion))+8;
      TNextGrid(TForm(Sender).Components[numero]).SelectionColor := clSkyBlue;
      TNextGrid(TForm(Sender).Components[numero]).Font.Size := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion));
      TNextGrid(TForm(Sender).Components[numero]).Font.Name := 'Tahoma';
      TNextGrid(TForm(Sender).Components[numero]).Font.Color := clWindowText;
      TNextGrid(TForm(Sender).Components[numero]).HighlightedTextColor := clDefault;
      TNextGrid(TForm(Sender).Components[numero]).RowSize := StrToInt(ClientModule1.ConfigGetValor('Datos',cdNucConfiguracion))+8;
    End;
    Inc(Numero);
  end;
end;

procedure TClientModule1.registrarEvento(modulo, Accion, descripcion: string;
  Fecha: TDate; Usuario: Integer);
begin
   try
      if CdKardex.ProviderName = '' then
      begin
        if not CrearConjunto(CdKardex, 'nuc_kardex', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Kardex de Sistema']);
      end;
      if CdKardex.ProviderName <> '' then
      Begin
        if not CargarDatosFiltrados(CdKardex, 'IdKardex', [-9]) then
          raise InteligentException.CreateByCode(6, ['Kardex del Sistema', 'IdKardex', '-9']);

        if CdKardex.Active then
          CdKardex.Refresh
        else
          CdKardex.Open;

        CdKardex.Append;
        with CdKardex do
        begin
          FieldByName('IdKardex').AsInteger := 0;
          FieldByName('Modulo').AsString := LeftStr(modulo,200);
          FieldByName('Accion').AsString := LeftStr(Accion, 200);
          FieldByName('descripcion').AsString := LeftStr(descripcion,200);
          FieldByName('IdUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('IdUsuario').AsInteger;
        end;
        CdKardex.Post;
        CdKardex.ApplyUpdates(-1);
      End;
   except
      on e:Exception do
      begin
        if Form2.cdKardex.Active then
        begin
          Form2.cdKardex.Cancel;
          Form2.cdKardex.Close;
        end;
      end;
   end;
end;

procedure TClientModule1.ImprimeReporte(NombreReporte: String; Reporte: TFrxReport);
begin
  ImprimeReporte(NombreReporte, Reporte, Nil);
end;

procedure TClientModule1.ImprimeReporte(NombreReporte: String; Reporte: TFrxReport; Preview: TfrxPreview);
var
  Ruta, Cadena: String;
  Archivo: TSearchRec;
  Resultado: Integer;
  Termina: Boolean;
begin
  // Localizar la carpeta de archivos temporales del sistema
  Repeat
    Termina := True;

    Try
      if ForzarLocales then
      begin
        ForzarLocales := False;
        if CdRutaReportes <> nil  then
          Ruta := ExtractFilePath(Application.ExeName) + CdRutaReportes.FieldByName('Valor1').asString
        else
          Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
        if Not FileExists(Ruta + NombreReporte) then
          raise InteligentException.CreateByCode(15, [NombreReporte]);
        Break;
      end;

      Ruta := ExtractFilePath(ParamStr(0)) + 'Temp\';
      if Not DirectoryExists(Ruta) then
        ForceDirectories(Ruta);

      // Verificar si el archivo ya existe
      if FindFirst(Ruta + NombreReporte, faAnyFile, Archivo) = 0 then
      begin
        Cadena := Archivo.Name + ':' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp));

        // Verificar si el archivo está actualizado
        if Not CompararReporte(Ruta, Cadena) then
          // Actualizar el reporte con el reporte que se encuentra en la base de datos
          Try
            if not ActualizaReporte(Ruta, NombreReporte) then
            begin
              // Creo que aquí es donde se debe borrar el reporte de TEMP
            end;
          Except
            raise InteligentException.CreateByCode(15, [NombreReporte]);
          End;
      end
      else
      begin
        // Actualizar el reporte con el reporte que se encuentra en la base de datos
        Try
          if not ActualizaReporte(Ruta, NombreReporte) then
          begin
            // Por el momento se deberá obtener el reporte de la carpeta de reportes, paulatinamente esto dejará de funcionar cuando los reportes se encuentren en la base de datos
            if CdRutaReportes <> nil  then
              Ruta := ExtractFilePath(Application.ExeName) + CdRutaReportes.FieldByName('Valor1').asString
            else
              Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
            if Not FileExists(Ruta + NombreReporte) then
              raise InteligentException.CreateByCode(15, [NombreReporte]);
          end;
        Except
          raise InteligentException.CreateByCode(15, [NombreReporte]);
        End;
      end;
    Except
      on e:InteligentException do
      begin
        Ruta := '';

        // Si se trata de un preview en pantalla no se deberá mostrar la pregunta
        if Not Assigned(Preview) then
          Termina := InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbYes, mbNo], 0) = mrNo;
      end;

      on e:Exception do
      begin
        Ruta := '';

        // Si se trata de un preview en pantalla no se deberá mostrar el mensaje
        if Not Assigned(Preview) then
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      end;
    End;
  Until Termina;

  if Ruta <> '' then
  begin
    Reporte.PreviewOptions.MDIChild := False;
    Reporte.PreviewOptions.Modal := True;
    Reporte.PreviewOptions.ShowCaptions := False;
    Reporte.Previewoptions.ZoomMode := zmPageWidth;
    Reporte.LoadFromFile(Ruta + NombreReporte);
    Reporte.ShowReport(False);
  end;
end;

Procedure VerificaPermisos (Formulario: TForm);
var
  cdPantallas: TclientDataset;
  Providername: String;
begin
  CrearConjunto(cdPantallas,'', providerName, ccCatalog);
  CargarDatosFiltrados(cdPantallas, 'codigo', [Formulario.Name]);
  cdPantallas.Open;



end;

    {$ENDREGION}

    {$REGION 'Validacion de datos vacios'}
function TClientModule1.VerificaVacio(Sender: TComponent;
  Cadena: String): Boolean;
begin
  Try
    // Verificar si los objetos se encuentran vacíos de acuerdo a su tipo
    if Sender.ClassType = Tedit then
    begin
      if ((AnsiCompareText(Cadena, 'Código') = 0) or (AnsiCompareText(Cadena, 'Codigo') = 0)) then
      begin
        if (Length(Trim(Tedit(Sender).Text)) < 3) then
          raise InteligentException.CreateByCode(8, ['Los códigos deben tener más de tres dígitos']);
      end
      else
        if Length(Trim(Tedit(Sender).Text)) < 1 then
          raise InteligentException.CreateByCode(8, ['Verifique el campo vacío: ' + cadena]);
    end;

    if Sender.ClassType = TDBEdit then
    begin
      if ((AnsiCompareText(Cadena, 'Código') = 0) or (AnsiCompareText(Cadena, 'Codigo') = 0)) then
      begin
        if (Length(Trim(TDBEdit(Sender).Text)) < 3) then
          raise InteligentException.CreateByCode(8, ['Los códigos deben tener más de tres dígitos']);
      end
      else
        if Length(Trim(TDBEdit(Sender).Text)) < 1 then
          raise InteligentException.CreateByCode(8, ['Verifique el campo vacío: ' + cadena]);
    end;

    if (Sender.ClassType = TNxComboBox) and (Length(Trim(TNxComboBox(Sender).Text)) < 1) then
      raise InteligentException.CreateByCode(8, ['Seleccione una opción en: ' + cadena]);

    if (Sender.ClassType = TDBMemo) and (Length(Trim(TDBMemo(Sender).Text)) < 1) then
      raise InteligentException.CreateByCode(8, ['Verifique el campo vacío: ' + cadena]);

    if (Sender.ClassType = TComboBox) and (Length(Trim(TComboBox(Sender).Text)) < 1) then
      raise InteligentException.CreateByCode(8, ['Seleccione una opción en: ' + cadena]);

    if (Sender.ClassType = TJvDatePickerEdit) and (Length(Trim(TJvDatePickerEdit(Sender).Text)) < 1) then
      raise InteligentException.CreateByCode(8, ['Verifique la fecha ingresada en: ' + cadena]);

    if (Sender.ClassType = TJvDBDatePickerEdit) and (Length(Trim(TJvDBDatePickerEdit(Sender).Text)) < 1) then
      raise InteligentException.CreateByCode(8, ['Verifique la fecha ingresada en: ' + cadena]);

    if (Sender.ClassType = TJvDBCalcEdit) and ((Length(Trim(TJvDBCalcEdit(Sender).Text)) < 1) or (TJvDBCalcEdit(Sender).Text = '0')) then
      raise InteligentException.CreateByCode(8, ['Verifique la cantidad ingresada en: ' + cadena]);

    if (Sender.ClassType = TJvCalcEdit) and ((Length(Trim(TJvCalcEdit(Sender).Text)) < 1) or (TJvCalcEdit(Sender).Text = '0')) then
      raise InteligentException.CreateByCode(8, ['Verifique la cantidad ingresada en: ' + cadena]);

    if (Sender.ClassType = TDBLookupComboBox) and (Length(Trim(TDBLookupComboBox(Sender).Text)) < 1) then
      raise InteligentException.CreateByCode(8, ['Verifique el campo vacío: ' + cadena]);

    if (Sender.ClassType = TjvComboBox) and (Length(Trim(TjvComboBox(Sender).Text)) < 1) then
      raise InteligentException.CreateByCode(8, ['Seleccione una opción en: ' + cadena]);

    Result := True;   // Si todo está bien indicar resultado en verdadero
  Except
    on e:InteligentException do
    begin
      // Apuntar el elemento mal capturado e indicar el error
      Result := False;  // Ante cualquier error informar de este
      TWinControl(Sender).SetFocus;
      InteliDialog.ShowModal(e.Title, e.Message, e.FMsgType, [mbOk], 0);
    end;
  End;
end;
    {$ENDREGION}
 {$REGION 'nucConfiguracion'}
Function TClientModule1.IniNucConfiguracion(Client: TClientDataset):Boolean;
var
  xName: String;
begin
    Result := False;
  Try

    Client.Active := False;
    CrearConjunto(Client, 'nuc_configuracion', xName, ccCatalog);
    CargarDatosFiltrados(Client, 'idconfiguracion', [-1]);
    Client.Open;
    Result := True;
  except
    raise Exception.Create('La información de configuración no ha podido ser cargada.');
  End;
end;

Function TClientModule1.SetNewValorConfig(parametro,descripcion, valor:string):Boolean;
var
  data: TClientDataSet;
  PName: String;
begin
    Result := False;
    data := TClientDataSet.Create(self);
    data.RemoteServer := DSProviderConnection1;
  Try
    Data.Active := False;
    CrearConjunto(Data, 'nuc_configuracion', PName, ccUpdate);
    CargarDatosFiltrados(Data, 'idconfiguracion', [-9]);
    Data.Open;
    data.Append;
    data.FieldByName('idconfiguracion').AsInteger  := 0;
    data.FieldByName('parametro').AsString := parametro;
    data.FieldByName('descripcion').AsString := descripcion;
    data.FieldByName('valor1').AsString := valor;
    data.Post;
    data.ApplyUpdates(-1);
    Result := True;
  except
//    raise Exception.Create('La información no ha podido ser guardada.');
  End;
  data.Close;
  ProcEliminarConjunto(Data.ProviderName);
  data.Free;
end;

Function TClientModule1.EditValorConfig(parametro, valor:string):Boolean;
var
  data: TClientDataSet;
  PName: String;
begin
    Result := False;
    data := TClientDataSet.Create(self);
    data.RemoteServer := DSProviderConnection1;
  Try
    Data.Active := False;
    CrearConjunto(Data, 'nuc_configuracion', PName, ccUpdate);
    CargarDatosFiltrados(Data, 'parametro', [parametro]);
    Data.Open;
    if data.RecordCount = 1 then
    begin
      data.Edit;
      data.FieldByName('valor1').AsString := valor;
      data.Post;
      data.ApplyUpdates(-1);
      Result := True;
    end;
  except
//    raise Exception.Create('La información no ha podido ser guardada.');
  End;
  data.Close;
  ProcEliminarConjunto(Data.ProviderName);
  data.Free;
end;

function TClientModule1.IniciarTimer(Identificador: String): Boolean;
var
  Lapso: TLapso;
begin
  // Crear el objeto "Lapso" en la ventana que se nos está indicando
  Lapso := TLapso.Create(Screen.ActiveForm);
  Lapso.Name := 'Lapso' + Identificador;
  ListaLapso.AddObject(Lapso.Name, Lapso);
  Lapso.Iniciar;
end;

function TClientModule1.DetenerTimer(Identificador: String): Boolean;
var
  Lapso: TLapso;
  Indice: Integer;
begin
  // Buscar el timer
  Indice := ListaLapso.IndexOf('Lapso' + Identificador);
  if Indice >= 0 then
  begin
    Lapso := TLapso(ListaLapso.Objects[Indice]);

    if Assigned(Lapso) then
    begin
      // Detener el pedo y eliminar el objeto
      Lapso.Detener;
      ListaLapso.Delete(Indice);
      Lapso.Free;
    end;
  end;
end;

function TClientModule1.funcInicializarProgress(Min, Max, Position: Integer): Boolean;
begin
  Form2.ProgressBar1.Min := Min;
  Form2.ProgressBar1.Max := Max;
  Form2.ProgressBar1.Position := Position;
end;

function TClientModule1.funcIncrementarProgress(Valor: Integer): Boolean;
begin
  if Form2.ProgressBar1.Position + Valor = 0 then
    Form2.ProgressBar1.Visible := False
  else
  begin
    if Not Form2.ProgressBar1.Visible then
      Form2.ProgressBar1.Visible := True;

    Form2.ProgressBar1.Position := Form2.ProgressBar1.Position + Valor;
    Form2.StatusBar1.Repaint;
  end;
end;

function TClientModule1.funcAsignarProgress(Valor: Integer): Boolean;
begin
  if Valor = 0 then
    Form2.ProgressBar1.Visible := False
  else
  begin
    Form2.ProgressBar1.Position := Valor;
    Form2.StatusBar1.Repaint;
  end;
end;

function TClientModule1.funcLlavePrimaria(NombreTabla: String): String;
var
  Proxy: TServerMethods1Client;
begin
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.GetFieldPrimaryKey(Globales.Elemento('DATABASE').AsString, NombreTabla);
  Finally
    Proxy.Free;
  End;
end;

function TClientModule1.ConfigLocate(cadena: String;
  Cliente: TClientDataset): Integer;
begin
  Result := -9;
  Cliente.First;
  while Not Cliente.Eof do
  begin
    if Cliente.FieldByName('parametro').AsString = cadena then
    begin
      Result := Cliente.FieldByName('idconfiguracion').AsInteger;
      Exit;
    end;
    Cliente.Next;
  end;
end;

function TClientModule1.ConfigGetValor(cadena: String;
  Cliente: TClientDataset): String;
var idConfig: Integer;
begin
  idConfig := ConfigLocate(cadena, Cliente);
  if idConfig <> -9 then
  begin
    Cliente.first;
    while not Cliente.Eof do
    begin
      if Cliente.FieldByName('parametro').asstring = cadena then
        Result := Cliente.FieldByName('valor1').asstring;
      Cliente.next;
    end;
  end;
end;
 {$ENDREGION}
{$REGION 'exportar a excel'}
Function TClientModule1.BuscaCharString(caracter: Char; Cadena:String):boolean;
var
  car: Integer;
begin
  car := 0;
  while car < length(Cadena) do
  begin
    if cadena[car] = caracter then
      Result := True;
    Inc(car);
  end;
end;

function TClientModule1.DatetoStrSql(fecha: tdate):String;
var
  dia,mes,año: String;
  wAnyo, wMes, wDia: Word;
begin
   Result := '';
  Try
    DecodeDate( Fecha, wAnyo, wMes, wDia );
    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);

    if Length(dia) < 2 then
      dia := '0' + dia;
    if Length(mes) < 2 then
      mes := '0' + mes;

    Result := año+'/'+mes+'/'+dia;
  Except
    on e:exception do
      InteliDialog.ShowModal('Error al formatear fecha.',e.message, mtError, [mbOk], 0);
  End;
end;

function TClientModule1.DateTimetoStrSql(Fecha: tDateTime):String;
var
  dia, mes, año, hora, min, seg, Suf: String;
  wAnyo, wMes, wDia: Word;
  h, m, s, ms: Word;
begin
   Result := '';
  Try
    DecodeDateTime(Fecha, wAnyo, wMes, wDia, h, m, s, ms);

    if h >= 12 then
      Suf := ' PM'
    else
      Suf := ' AM';

    if h > 12 then
      h := h -12;

    if h = 0 then
      h := 12;

    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);
    Hora := vartostr(h);
    Min := vartostr(m);
    Seg := vartostr(s);

    Mes := RightStr('0' + Mes, 2);
    Dia := RightStr('0' + Dia, 2);
    Hora := RightStr('0' + Hora, 2);
    Min := RightStr('0' + Min, 2);
    Seg := RightStr('0' + Seg, 2);

    Result := mes + '/' + dia + '/' + año + ' ' + Hora + ':' + Min + ':' + Seg + Suf;
  Except
    on e:exception do
      InteliDialog.ShowModal('Error al formatear fecha.',e.message, mtError, [mbOk], 0);
  End;
end;

function TClientModule1.DatetoStrSql(fecha: tdate;separador:string):String;
var
  dia,mes,año: String;
  wAnyo, wMes, wDia: Word;
begin
   Result := '';
  Try
    DecodeDate( Fecha, wAnyo, wMes, wDia );
    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);

    if Length(dia) < 2 then
      dia := '0' + dia;
    if Length(mes) < 2 then
      mes := '0' + mes;

    Result := año+separador+mes+separador+dia;
  Except
    on e:exception do
      InteliDialog.ShowModal('Error al formatear fecha.',e.message, mtError, [mbOk], 0);
  End;
end;

procedure TClientModule1.enprogreso(Sender: TObject; Min, Max,
  Position: Cardinal; const AText: string; var AContinue: Boolean);
begin
//showmessage(inttostr(min)+inttostr(max)+inttostr(position)+AText);
//showmessage(TJvDBGridExcelExport(Sender).Components[position].Name);

{Min, Max,
  Position: Cardinal; const AText: string; var AContinue: Boolean }
end;

procedure TClientModule1.ExportaExcel(Grid: TNextDbGrid; Client: TClientDataset; Source:TDataSource;
  Lugar: String);
var colprinc, colgene: integer;
    NombreArchivo: String;
    GridAux: TJvDBGrid;
    Expo: TJvDBGridExcelExport;
    Dialogo: TJvSaveDialog;
begin
  Try
    Dialogo := TJvSaveDialog.Create(self);
    with Dialogo do
    begin
      Name := 'Dialogo';
      Title := 'Exportar a Microsoft Excel...';
      Filter := 'Microsoft Excel 97-2003 [*.xls]|*.xls|Microsoft Excel 2007 [*.xlsx]|*.xlsx|Todos los Archivos [*.*]|*.*';
      FilterIndex := 1;
      DefaultExt := '*.xls';
    end;
    if Dialogo.Execute Then
    begin
      NombreArchivo := Dialogo.FileName;
      if BuscaCharString( '<', NombreArchivo) or BuscaCharString( '>', NombreArchivo) or
         BuscaCharString( '?', NombreArchivo) or BuscaCharString( '[', NombreArchivo) or
         BuscaCharString( ']', NombreArchivo) or BuscaCharString( ';', NombreArchivo) or
         BuscaCharString( '¬', NombreArchivo) or BuscaCharString( '~', NombreArchivo) or
         BuscaCharString( '^', NombreArchivo) or BuscaCharString( '`', NombreArchivo) or
         BuscaCharString( '|', NombreArchivo) or BuscaCharString( '°', NombreArchivo) or
         BuscaCharString( '*', NombreArchivo) or BuscaCharString( '{', NombreArchivo) then
      Begin
        InteliDialog.ShowModal('Nombre de archivo con caracteres no permitidos, (<>?[]:¬~^`|°*).','Se generará un archivo temporal, luego usted puede guardarlo con otro nombre.', mtInformation, [mbOk], 0);
      End;
      GridAux := TJvDBGrid.Create(Self);
      with GridAux do
      begin
        Name := 'Grid';
        DataSource := Source;
        Visible := False;
      end;
      Expo := TJvDBGridExcelExport.Create(self);
      with Expo do
      begin
        Name := 'Exportador';
        Grid := GridAux;
        Close := scNever;
        Orientation := woPortrait;
        Silent := True;
        Visible := False;
        onProgress := enprogreso;
      end;
      colprinc := 0;
      colgene := 0;
      GridAux.BeginUpdate;
      GridAux.Columns.Clear;
      while colprinc < Grid.Columns.Count do
      begin
        if Grid.Columns[colprinc].Visible then
        begin
          GridAux.Columns.Add.FieldName := Grid.Columns[colprinc].FieldName;
          GridAux.Columns.Items[colgene].Title.Caption := Grid.Columns[colprinc].Header.Caption;
          inc(colgene);
        end;
        inc(colprinc);
      end;
      GridAux.EndUpdate;
      Expo.Filename := NombreArchivo;
      Expo.ExportGrid;
      GridAux.Free;
      Expo.Free;
      Dialogo.Free;
    end;
  Except
    on e: exception do
    begin
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
      GridAux.Free;
      Expo.Free;
      Dialogo.Free;
    end;
  End;
end;

procedure TClientModule1.FormateandoCeldas(Sender: TAdvStringGrid; const GridCol,
  GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
  var Format: TFlxFormat);
begin
  if (GridRow = 0) then
  begin
    Format.Borders.Right.ColorIndex := clBlue;
    format.Borders.Right.Style := fbs_Medium;
    Format.Borders.Left.ColorIndex := clBlue;
    format.Borders.Left.Style := fbs_Medium;
    Format.Borders.Top.ColorIndex := clBlue;
    format.Borders.Top.Style := fbs_Medium;
    Format.Borders.Bottom.ColorIndex := clBlue;
    format.Borders.Bottom.Style := fbs_Medium;
    Format.Font.ColorIndex := 5;
    Format.Font.Underline := fu_Single;
    Format.Font.Family := 22 ;
    format.HAlignment := fha_center;
    format.FillPattern.BgColorIndex := 41;
    format.FillPattern.FgColorIndex := 40;
    Format.VAlignment := fva_center;
  end
  else
  begin
    Format.Borders.Right.ColorIndex := clblack;
    Format.Borders.Right.Style := fbs_Dashed;
    Format.Borders.Left.ColorIndex := clblack;
    Format.Borders.Left.Style := fbs_Dashed;
    Format.Borders.Top.ColorIndex := clblack;
    Format.Borders.Top.Style := fbs_Dashed;
    Format.Borders.Bottom.ColorIndex := clblack;
    Format.Borders.Bottom.Style := fbs_Thin;
    Format.Font.Style := Format.Font.Style + [flsBold]+  [flsSubscript];
    Format.Font.ColorIndex := 1;

    Format.FillPattern.BgColorIndex := 9;
    Format.FillPattern.FgColorIndex := 9;
    Try
      StrToFloat(value);
      Format.HAlignment := fha_center;
    Except
      Format.HAlignment := fha_left;
    End;
  end;
end;

Function TClientModule1.CadenaEntero (Cadena: String): Integer;
var entero : Integer;
begin
  Result := -1;
  Try
    entero := strToInt(Cadena);
    if entero >=0 then
      Result :=  entero;

  Except
    on e: exception do
      InteliDialog.ShowModal('Error.','El valor ingreso no es numérico', mtWarning, [mbOk], 0);

  End;
end;

procedure TClientModule1.ExportaExcelTms(Grid: TNextDbGrid;
  Client: TClientDataset; Source: TDataSource; Form: TForm);
var colprinc, colgene, coliexcel, rowiexcel: integer;
    NombreArchivo, colinicio, rowinicio: String;
    GridAux: TDbAdvGrid;
    Expo: TAdvGridExcelIO;
    Dialogo: TJvSaveDialog;

begin
  Try
    Dialogo := TJvSaveDialog.Create(nil);
    with Dialogo do
    begin
      Name := 'Dialogo';
      Title := 'Exportar a Microsoft Excel...';
      Filter := 'Microsoft Excel 97-2003 [*.xls]|*.xls|Microsoft Excel 2007 [*.xlsx]|*.xlsx|Todos los Archivos [*.*]|*.*';
      FilterIndex := 1;
      DefaultExt := '*.xls';
    end;
    if Dialogo.Execute Then
    begin
      NombreArchivo := Dialogo.FileName;
      coliexcel := -1;
      rowiexcel := -1;

      colInicio := '2';
      rowInicio := '2';
      while ColiExcel = -1 do
      begin
         InputQuery('Columna de inicio', 'Ingrese el numero de la columna de inicio del archivo excel', ColInicio);
        ColiExcel := CadenaEntero (ColInicio);
      end;
      while RowiExcel = -1 do
      begin
        InputQuery('Fila de inicio', 'Ingrese el numero de la fila de inicio del archivo excel',  RowInicio);
        RowiExcel := CadenaEntero (RowInicio);
      end;

      GridAux := TDbAdvGrid.Create(nil);
      with GridAux do
      begin
        Parent := Grid.Parent ;
        Name := 'Griddf';
        DataSource := Source;
        Visible := False;
        showmemoFields := True;
      end;
      Expo := TAdvGridExcelIO.Create(nil);
      with Expo do
      begin
        Name := 'Exportadortms';
        AdvStringGrid := GridAux;
        GridStartCol := 1;
        GridStartRow := 0;
        UseUnicode := True;
        XLsStartCol := ColiExcel;
        XlsStartRow := RowiExcel;
        Zoom := 100;
        ZoomSaved := True;
        onCellFormat := FormateandoCeldas;
        //Expo.Owner;
      end;
      Expo.Options.ExportCellProperties :=true;
      Expo.Options.ExportOverwrite := omWarn;
      Expo.Options.ExportCellSizes := True;
      Expo.Options.ExportShowInExcel := True;
      Expo.Options.ExportOverwriteMessage := 'El archivo %s ya existe, pulse yes para sobreescribir ?';
      colprinc := 0;
      colgene := 1;
      GridAux.BeginUpdate;
      GridAux.Columns.Clear;
      GridAux.Columns.Add.Field := Grid.Columns[0].Field;
      while colprinc < Grid.Columns.Count do
      begin
        if Grid.Columns[colprinc].Visible then
        begin
          GridAux.Columns.Add.FieldName := Grid.Columns[colprinc].FieldName;
          GridAux.Columns.Items[colgene].Header := Grid.Columns[colprinc].Header.Caption;
          GridAux.Columns.Items[colgene].Width := Grid.Columns[colprinc].Width;
          inc(colgene);
        end;
        inc(colprinc);
      end;
      GridAux.EndUpdate;
      Expo.XLSExport(NombreArchivo,Form.Caption + DateTimeToStr(now),1,1,InsertInSheet_OverwriteCells);
      Expo.free;
      GridAux.free;
    end;
    Dialogo.free;
  Except
    on e: exception do
    begin
      Dialogo.free;
      InteliDialog.ShowModal('Error al exportar.',e.Message, mtWarning, [mbOk], 0);
      GridAux.Destroy;
    end;
  End;

end;

{$ENDREGION}
{$REGION 'Permisos'}
  {
   Esta funcion debe estar implementada en los componentes  los cuales
   se les debe implementar los permisos.
  }
function TClientModule1.LeePermisos (Componente:tcomponent ; Formulario: TForm; Refrescar: Boolean):Boolean;
var
  providerName,captioncomponente, cadena: String;
  Encontrado: Boolean;
  i: Integer;
begin
  result := true;
 { Result := False;

  Try
    Result := False;
  cadena := Formulario.Name;
  Encontrado := False;
  if Refrescar = True then
    cdPermiso.Refresh;
    if cdPermiso.recordcount = 0 then
      raise InteligentException.Create('No tiene permiso para ' + captioncomponente + ' en la información de esta ventana. (' + Formulario.Caption + ')');

    if Componente.ClassType = TAdvShapeButton then
    begin
      captioncomponente := TAdvShapeButton(Componente).Text;
      cdPermiso.First;
      while not cdPermiso.Eof do
      begin
        i := 0;
        cadena := AnsiReplaceStr( cadena, '_', '' );
        while i < 10 do
        begin
        cadena := AnsiReplaceStr( cadena,inttostr(i), '' );
          inc(i);
        end;
        if (AnsiCompareText(cdPermiso.FieldByName('codigopantalla').AsString, Cadena) = 0) and (AnsiCompareText(cdPermiso.FieldByName('boton').AsString, TAdvShapeButton(Componente).Name) = 0) and (cdPermiso.FieldByName('valor').AsString = '1' )then
        begin
          Result := True;
          exit;
        end;
        cdPermiso.Next;
      end;
    end;

    Result := True;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('No se puede acceder a esta opción', e.Message, mtWarning, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Error de acceso', 'No se ha podido leer la lista de permisos por usuario debido a lo siguiente:' + #10 + #10 + e.message, mtError, [mbOk], 0);
  End;
  }
end;

function TClientModule1.LeePermisos(CodigoModulo, CodigoPermiso: string; VerMensaje: Boolean = true): Boolean;
begin
  try
    if cdpermiso.Locate('codigomodulo;codigopermiso',VarArrayof([CodigoModulo, CodigoPermiso]),[]) then
      result := cdpermiso.FieldByName('Valor').AsInteger = 1
    else
      result := false;

    Result := Result or GodMode;

    if not result then
      raise InteligentException.Create('No tiene permisos suficientes.');
  Except
    on e:InteligentException do
      if VerMensaje then
        InteliDialog.ShowModal('No se puede acceder a esta opción', e.Message, mtWarning, [mbOk], 0);

    on e:Exception do
      if VerMensaje then
        InteliDialog.ShowModal('Error de acceso', 'No se ha podido leer la lista de permisos por usuario debido a lo siguiente:' + #10 + #10 + e.message, mtError, [mbOk], 0);
  end;
end;

  {
    Esta funcion se debe cargar al inicio del formulario principal,
    ya que lee todos los permisos del usuario que esta ingresando al sistema
    y los carga en un dataset, para que luego este dataset sea
    recorrido en busca de permisos.
  }
function TClientModule1.CargaPermisos (idTipo:integer):Boolean;
var
  providerName: String;
begin
  if cdPermiso.Active then
  begin
    EliminarConjunto(cdPermiso);
    cdPermiso.Free;
    cdPermiso := TClientDataSet.Create(nil);
  end;

  cdPermiso.Close;
  CrearConjunto(cdPermiso, 'nuc_permisorol', providerName, ccCatalog);
  CargarDatosFiltrados(cdPermiso, 'idsistema,idrol', [Globales.Elemento('idsistema').AsInteger,idtipo]);
  cdPermiso.Open;

  Result := cdPermiso.RecordCount > 0;
end;

procedure TClientModule1.CargarRutaReportes(IDParametro: Integer);
begin
 if CdRutaReportes.ProviderName = '' then
    if not CrearConjunto(CdRutaReportes, 'nuc_configuracion', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nuc_configuracion']);

  if not CargarDatosFiltrados(CdRutaReportes, 'idConfiguracion', [IdParametro]) then
    raise InteligentException.CreateByCode(6, ['nuc_configuracion', 'IdConfiguracion', '18']);

  if CdRutaReportes.Active then
    CdRutaReportes.Refresh
  else
    CdRutaReportes.Open;

  if CdRutaReportes.RecordCount = 0 then
    InteliDialog.ShowModal('Aviso', 'No se ha definidola ruta de los reportes generales de la empresa', mtInformation, [mbOK], 0);

end;

{$ENDREGION}

{$ENDREGION}

{$REGION 'Declaraciones disponibles para programador'}
function RegistrosCuenta(Tabla: String; Campos: String; Valor: Array of Variant): Integer;
begin
  Result := ClientModule1.funcRegistrosValor(Tabla, '', Campos, Valor, 1);
end;

function RegistrosMinimo(Tabla: String; CampoValida: String; Campos: String; Valor: Array of Variant): Integer;
begin
  Result := ClientModule1.funcRegistrosValor(Tabla, CampoValida, Campos, Valor, 2);
end;

function RegistrosMaximo(Tabla: String; CampoValida: String; Campos: String; Valor: Array of Variant): Integer;
begin
  Result := ClientModule1.funcRegistrosValor(Tabla, CampoValida, Campos, Valor, 3);
end;

function CuantosRegistros(DataSet: TClientDataSet): integer;
begin
  Result := ClientModule1.FuncCuantosRegistros(DataSet);
end;

function VerificaExiste(DataSet: TClientDataSet; Codigo: String; Llave: Integer): Boolean;
begin
  Result := ClientModule1.FuncVerificaExiste(DataSet, Codigo, Llave);
end;

function CuantosSeleccionados(ClientDataSet: TClientDataSet): integer;
begin
  Result := ClientModule1.FuncCuantosSeleccionados(ClientDataSet);
end;

function FechaACadena(Fecha: TDate): String;
begin
  Result := ClientModule1.FuncFechaACadena(Fecha);
end;

function CrearConjunto(Const DataSet: TClientDataSet; Tabla: String;
  Var LocalName: String; ConjuntoTipo: String;
  Opciones: TSetCCOpciones = [CCOpenDespues, CCPostDespues, CCPrimerError]): Boolean;
begin
  Result := ClientModule1.ProcCrearConjunto(DataSet, Tabla, LocalName, ConjuntoTipo, Opciones);
end;

function CrearConjunto(Const DataSet: TClientDataSet; Tabla: String;
ConjuntoTipo: String; Opciones: TSetCCOpciones = [CCOpenDespues, CCPostDespues, CCPrimerError]): Boolean;
var
  LocalName: String;
begin
  Result := ClientModule1.ProcCrearConjunto(DataSet, Tabla, LocalName, ConjuntoTipo, Opciones);
end;

function ObtenerPrefijo(Var Prefijo: String): Boolean;
begin
  Result := ClientModule1.ProcObtenerPrefijo(Prefijo);
end;

function DatabaseInfo(Const DataSet: TClientDataSet; Var NombreDataSet: String; Tipo: String): Boolean;
begin
  Result := ClientModule1.FuncDatabaseInfo(DataSet, NombreDataSet, Tipo);
end;

function ChecarUnidad(Const DataSet: TClientDataSet; Var NombreDataSet: String; Medida: String): Integer;
begin
  Result := ClientModule1.FuncChecharUnidad(DataSet, NombreDataSet, Medida);
end;

function EliminarConjunto(LocalName: Array of String): Boolean;
var
  i, Cta: Integer;
begin
  Try
    Result := True;

    Cta := 0;
    for i := 0 to high(LocalName) do
      if ClientModule1.ProcEliminarConjunto(LocalName[i]) then Inc(Cta);
  Except
    Result := False;
    Raise;
  End;
end;

function EliminarConjunto(DataSet: Array of TClientDataSet): Boolean;
var
  i, Cta: Integer;
begin
  Try
    Result := True;

    Cta := 0;
    for i := 0 to high(DataSet) do
      Try
        if ClientModule1.ProcEliminarConjunto(DataSet[i].ProviderName) then Inc(Cta);
      Except
        ;
      End;
  Except
    Result := False;
    Raise;
  End;
end;

function CargarDatosFiltrados(ClientDataSet: TClientDataSet; Campos: String; Valores: Array of Variant; Reusar: Boolean = False): Boolean;
begin
  Result := ClientModule1.ProcCargarDatosFiltrados(ClientDataSet, Campos, Valores, Reusar);
end;

function CargarDatosFiltrados(ClientDataSet: TClientDataSet; Parametros: TParamFilter; Reusar: Boolean = False): Boolean;
begin
  Result := ClientModule1.ProcCargarDatosFiltrados(ClientDataSet, Parametros.Campos, Parametros.Datos, Reusar);
end;

function LimpiarDatosFiltrados(ClientDataSet: TClientDataSet): Boolean;
begin
  Result := ClientModule1.FuncLimpiarDatosFiltrados(ClientDataSet);
end;

procedure ObtenerGlobales;
begin
  ClientModule1.procObtenerGlobales;
end;

function PonerSentenciaSQL(Nombre: String; Valor: String): Boolean;
begin
  Result := ClientModule1.FuncPonerSentenciaSQL(Nombre, Valor);
end;

procedure AccedeACoordenadas(Sender: TObject);
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
  OldState: TWindowState;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := TForm(Sender).Left;
  xTop := TForm(Sender).Top;
  xWidth := TForm(Sender).Width;
  xHeight := TForm(Sender).Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Left', Existe));
    if Not Existe then xLeft := TForm(Sender).Left;
  Except
    xLeft := TForm(Sender).Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Top', Existe));
    if Not Existe then xTop := TForm(Sender).Top;
  Except
    xTop := TForm(Sender).Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Width', Existe));
    if Not Existe then xWidth := TForm(Sender).Width;
  Except
    xWidth := TForm(Sender).Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Height', Existe));
    if Not Existe then xHeight := TForm(Sender).Height;
  Except
    xHeight := TForm(Sender).Height;
  End;

  // Verificar si la ventana queda en un área visible del escritorio
  if xLeft + (xWidth div 2) <= Screen.DesktopLeft + 10 then
    xLeft := Trunc((Screen.Width - xWidth) / 2);

  if xTop <= Screen.DesktopTop + 10 then
    xTop := Trunc((Screen.Height - xHeight) / 2);

  // Por default la ventana será tratada como Normal
  OldState := wsNormal;

  // Verificar si la ventana estaba maximizada al cerrarla la última vez
  if (xHeight = 0) or (xWidth = 0) then
    OldState := wsMaximized;

  if (xHeight = -10) or (xWidth = -10) then
    OldState := wsMinimized;

  if OldState = wsNormal then
  begin
    // Corregir los valores necesarios
    if xWidth = 0 then xWidth := TForm(Sender).Width;
    if xHeight = 0 then xHeight := TForm(Sender).Height;

    // Cambiar la posicion de la ventana a la última utilizada
    TForm(Sender).Left := xLeft;
    TForm(Sender).Width := xWidth;
    TForm(Sender).Top := xTop;
    TForm(Sender).Height := xHeight;
  end
  else
    TForm(Sender).WindowState := OldState;
end;

procedure LiberarVentana(Sender: TObject; var Action: TCloseAction);
begin
  case TForm(Sender).WindowState of
    wsMinimized: begin
      // Si la ventana está minimizada se deberán grabar las dimensiones en menos  diez
      SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Width', '-10');
      SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Height', '-10');
    end;
    wsMaximized: begin
      // Si la ventana está maximizada se deberán grabar las dimensiones en cero
      SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Width', '0');
      SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Height', '0');
    end;
    wsNormal: begin
      // Si la ventana es normal se deberán registrar sus dimensiones
      SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Width', IntToStr(TForm(Sender).Width));
      SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Height', IntToStr(TForm(Sender).Height));
    end;
  end;

  // La posición se debe respetar en cualquiera de los casos
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Top', IntToStr(TForm(Sender).Top));
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'Left', IntToStr(TForm(Sender).Left));

  Action := caFree;
end;

function Restart(dbProtocol, dbDriverName, dbHost, httpPort, dbName: String): boolean;
begin
  try
    ClientModule1.SQLConnection1.Close;
    ClientModule1.SQLConnection1.Params.Values['CommunicationProtocol'] := dbprotocol;
    ClientModule1.SQLConnection1.Params.Values['DriverName'] := dbDriverName;
    ClientModule1.SQLConnection1.Params.Values['HostName'] := dbHost;
    ClientModule1.SQLConnection1.Params.Values['Port'] := httpport;
    ClientModule1.SQLConnection1.Params.Values['Database'] := dbName;
    ClientModule1.SQLConnection1.Connected := True;
    result := true;
  except
    result := false;
    Raise;
  end;
end;

function inicializar(Sender: TWinControl): Boolean;
Var
  adminpass: string;
  dsport: string;
  httpport: string;
  interval: string;
  dbDriverName: String;
  dbprotocol: string;
  dbhost: string;
  dbname: string;
  dbusr: string;
  dbpass: string;
  FindFile: TFolderDialog;
  Alzar: Boolean;
  ObjGlobales: TVarGlobal;
  Lista: TStringList;
begin
  Result := False;
  Lista := TStringList.Create;

  dbName := VarRegistry('\Configuracion', '\Conexion', 'DATABASE');
  // Verificar si tiene varias tablas registradas, en cuyo caso se deberá seleccionar solo la primera
  if Pos(',', dbName) > 0 then
    dbName := Copy(dbName, 1, Pos(',', dbName) -1);

  dbDriverName := 'DataSnap';
  httpport := '';
  dbprotocol := '';
  dbhost := '';

  Lista.CommaText := VarRegistry('\Configuracion', '\Conexion', 'httpport');
  if Lista.Count > 0 then httpport := Lista[0];

  Lista.CommaText := VarRegistry('\Configuracion\', '\Conexion', 'dbprotocol');
  if Lista.Count > 0 then dbProtocol := Lista[0];

  Lista.CommaText := VarRegistry('\Configuracion\', '\Conexion', 'dbhost');
  if Lista.Count > 0 then dbhost := Lista[0];

  ObjGlobales := TVarGlobal.Create;
  ObjGlobales.sNombre := 'DATABASE';
  ObjGlobales.vValor := dbName;
  Globales.ListaGlobal.AddObject('DATABASE', ObjGlobales);

  Result := True;
  if (httpport = '') or (dbprotocol = '') or (dbhost = '') then
  begin
    if InteliDialog.ShowModal('El registro de parámetros de configuración del sistema es incorrecto',
                              'Por favor indique los parametros correctos para realizar la conexión con el servidor de datos...', mtWarning, [mbYes,mbCancel], 0) = mrYes then
    begin
      Application.CreateForm(TFrmParamsConfig, FrmParamsConfig);
      if FrmParamsConfig.ShowModal = mrCancel then
        Result := False;
    end
    else
      Result := False;
  end
  else
    Result := restart(dbProtocol, dbDriverName, dbHost, httpPort, dbName);
end;

function ListaBasesdeDatos(Cual: Byte): String;
begin
  Result := ClientModule1.funcListaBasesdeDatos(Cual);
end;

function UltimoId: LongInt;
begin
  Result := ClientModule1.FuncUltimoId;
end;

function UltimoCodigo: String;
begin
  Result := ClientModule1.FuncUltimoCodigo;
end;

function ParentClassName(Control: TControl; Level: Word): string;
begin
  try
    case Level of
      0  : Result := Control.ClassName;
      1  : Result := Control.ClassParent.ClassName;
      2  : Result := Control.ClassParent.ClassParent.ClassName;
      3  : Result := Control.ClassParent.ClassParent.ClassParent.ClassName;
      4  : Result := Control.ClassParent.ClassParent.ClassParent.ClassParent.ClassName;
      5  : Result := Control.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassName;
      6  : Result := Control.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassName;
      7  : Result := Control.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassName;
      8  : Result := Control.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassName;
      9  : Result := Control.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassName;
      10 : Result := Control.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassParent.ClassName;
    end;
  except
    Result := '';
  end;
end;
function IsTWinControlInherited(Control: TControl): Boolean;
var
  i: Integer;
begin
  i := 0;
  while not((ParentClassName(Control,i) = 'TWinControl') or (ParentClassName(Control,i) = 'TControl') or (ParentClassName(Control,i) = '')) do
  begin
    Inc(i);
  end;
  if ParentClassName(Control,i) = 'TWinControl' then
    Result := True  // lo encontré
  else
    Result := false
end;

function FocusFirstObject(Control: TWinControl): Boolean;
var
  i: Integer;
  child: TControl;
  encontrado: Boolean;
begin
  i := 0;
  encontrado := False;
  while (not encontrado) and (i < Control.ControlCount) do
  begin
    child := Control.Controls[i];
    if IsTWinControlInherited(child) then
    begin
      if TWinControl(child).ControlCount > 0 then
        encontrado := FocusFirstObject(TWinControl(child))
      else
        if TWinControl(child).CanFocus then
        begin
          TWinControl(child).SetFocus;
          encontrado := True;
        end;
    end;
    Inc(i);
  end;
  Result := encontrado;
end;

procedure SetProperties(Parent: TWinControl; ClassName, SomeProperty: string; Value: Integer);
var
  i: integer;
  PropInfo: PPropInfo;
  Component: TControl;
  //Component: TComponent;
begin
  for i := 0 to Parent.ControlCount - 1 do
  begin
    Component := Parent.Controls[i];
    if csAcceptsControls in Component.ControlStyle then
      SetProperties(TWinControl(Component),ClassName, SomeProperty,Value)
    else
    begin
      if (Component is TControl) and ((AnsiCompareText(Component.ClassName, ClassName) = 0)
        or (AnsiCompareText(ClassName, 'AllComponents') = 0)) then
      begin
        PropInfo := GetPropInfo(Component.ClassInfo, SomeProperty);
        if Assigned(PropInfo) then
          SetOrdProp(Component, PropInfo, Integer(Value));
      end;
    end;
  end;
end;


function GetBit(const aValue: Cardinal; const Bit: Byte): Boolean;
begin
  // Obtener el estado de un bit
  Result := (aValue and (1 shl (Bit - 1))) <> 0;
end;

function SetBit(const aValue: Cardinal; const Bit: Byte; const aValor: Boolean): Cardinal;
begin
  // Cambiar el estado de un bit
  if aValor then
    Result := aValue or (1 shl (Bit - 1))
  else
    Result := aValue and not (1 shl (Bit - 1));
end;

function LetrasNumeros(Valor: Real; Prefijo: String; Sufijo: String; NumDec: Integer): String;
const
  vecNum: Array[1..15] of string = ('un', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete', 'ocho', 'nueve', 'diez', 'once', 'doce', 'trece', 'catorce', 'quince');
  vecDec: Array[1..9] of string = ('diez', 'veinti', 'treinta', 'cuarenta', 'cincuenta', 'sesenta', 'setenta', 'ochenta', 'noventa');
  vecCen: Array[1..9] of string = ('ciento', 'doscientos', 'trescientos', 'cuatrocientos', 'quinientos', 'seiscientos', 'setecientos', 'ochocientos', 'novecientos');
  vecLey: Array[1..7] of String = ('', 'mil', 'millon', 'mil', 'billon', 'mil', 'trillon');
var
  CadValor,Decimales: String;
  i: Integer;
  vNum,
  vDec,
  vCen,
  Segmento: Integer;
  SubResult,
  Resultado,
  Agrega, OldResult: String;
begin
  Resultado := '';
  Agrega := '';
  OldResult := '';
  CadValor := FloatToStrF(Trunc(Valor),ffGeneral,16,2);
  Decimales := FloatToStr(Valor);
     ////////////////////////DECIMALES/////////////////////////////////////
    //buscando el los decimales....
  if Pos('.', Decimales) > 0 then
   Decimales := Copy(Decimales, Pos('.', Decimales) + 1, Length(Decimales))
  else
   Decimales := '';
  //llenando con ceros o truncando, los decimales, este es un valor por parametro
  while Length(Decimales) < NumDec do
   Decimales := Decimales + '0';
   Decimales := Copy(Decimales,1,Numdec);

  while Length(CadValor) mod 3 <> 0 do
   CadValor := '0' + CadValor;

  for i := 1 to Trunc(Length(CadValor) / 3) do
  begin
    // Descomponer en dos elementos
    Segmento := StrToInt(Copy(CadValor, Length(CadValor) - ((i * 3) - 1), 3));
    SubResult := '';

    // Obtener el primer elemento de la izquierda
    vCen := Trunc((Segmento - (Segmento Mod 100)) / 100);
    vNum := Segmento - (vCen * 100);
    vDec := 0;

    if (vNum > High(vecNum)) then
    begin
      vDec := Trunc((vNum - (vNum Mod 10)) / 10);
      vNum := vNum Mod 10;
    end;

    if (vNum > 0) and (vNum <= High(VecNum)) then
      if SubResult <> '' then
        SubResult := SubResult + ' ' + VecNum[vNum]
      else
        SubResult := VecNum[vNum];

    if vDec > 0 then
    begin
      if SubResult <> '' then SubResult := ' ' + SubResult;
      if vDec = 2 then
        if vNum = 0 then
          SubResult := 'veinte'
        else
          SubResult := VecDec[vDec] + Copy(SubResult,2,length(SubResult))
      else
      begin
        if vNum <> 0 then SubResult := ' y' + SubResult;
        SubResult := VecDec[vDec] + SubResult
      end;
    end;

    if vCen > 0 then
    begin
      if SubResult <> '' then SubResult := ' ' + SubResult;
      if vCen = 1 then
        if vDec + vNum = 0 then
          SubResult := 'cien'
        else
          SubResult := VecCen[vCen] + SubResult
      else
        SubResult := VecCen[vCen] + SubResult
    end;

    if SubResult <> '' then
    begin
      if i > 1 then
      begin
        SubResult := SubResult + ' ' + VecLey[i];
        if Agrega <> '' then
          SubResult := SubResult + ' ' + Agrega;
        if ((i = 3) or (i = 5) or (i = 7)) and (Segmento > 1) then
          SubResult := SubResult + 'es';
      end;
      if Resultado <> '' then
        Resultado := SubResult + ' ' + Resultado
      else
        Resultado := SubResult;
    end
    else
      if ((i = 3) or (i = 5) or (i = 7)) then
      begin
        if (i +1 <= Trunc(Length(CadValor) / 3)) and (StrToInt(Copy(CadValor, Length(CadValor) - (((i + 1) * 3) - 1), 3)) > 0) then
        begin
          SubResult := SubResult + VecLey[i] + 'es';
          if Resultado <> '' then
            Resultado := SubResult + ' ' + Resultado
          else
            Resultado := SubResult;
        end;
      end;
    OldResult := SubResult;
  end;

  if Prefijo + Decimales + Sufijo <> '' then
    if Decimales + Sufijo <> '' then
      Result := Resultado + ' ' + Prefijo + ' ' + Decimales + Sufijo
    else
      Result := Resultado + ' ' + Prefijo;
  //Result := Resultado;
end;

// Borrar registro(s) desde dataset por un conjunto de llaves
function BorrarRegistro(DataSet: TClientDataSet; Valores: Array of Variant; ForzarBorrado: Boolean = False): Integer;
var
  Proxy: TServerMethods1Client;
  Cadena: String;
  pValor: String;
  i: Integer;
  RespCursor: TCursor;
begin
  Try
    Try
      Result := 0;

      RespCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      Cadena := '';
      for i := 0 to High(Valores) do
      begin
        if Cadena <> '' then Cadena := Cadena + ',';
        if Valores[i] = Null then
          Cadena := Cadena + 'Null'
        else
        begin
          pValor := Valores[i];
          Cadena := Cadena + pValor;
        end;
      end;

      Try
        Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        Result := Proxy.DeleteRecord(Globales.Elemento('DATABASE').AsString, DataSet.ProviderName, Cadena, 1, ForzarBorrado);
      Finally
        Proxy.Free;
      End;
    Finally
      // Volver a poner el apuntador del mouse que traíamos antes de entrar aquí
      Screen.Cursor := RespCursor;
    End;
  Except
    on e:Exception do
      InteliDialog.ShowModal('La transacción ha sido cancelada', e.Message, mtError, [mbOk], 0);
  End;
end;

// Borrar registros de una tabla especificada por un conjunto de llaves
function BorrarRegistro(NombreTabla: String; Valores: Array of Variant; ForzarBorrado: Boolean = False): Integer;
var
  Proxy: TServerMethods1Client;
  Cadena: String;
  pValor: String;
  i: Integer;
  RespCursor: TCursor;
begin
  Try
    Try
      Result := 0;

      RespCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      Cadena := '';
      for i := 0 to High(Valores) do
      begin
        if Cadena <> '' then Cadena := Cadena + ',';
        if Valores[i] = Null then
          Cadena := Cadena + 'Null'
        else
        begin
          pValor := Valores[i];
          Cadena := Cadena + pValor;
        end;
      end;

      Try
        Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        Result := Proxy.DeleteRecord(Globales.Elemento('DATABASE').AsString, NombreTabla, Cadena, 2, ForzarBorrado);
      Finally
        Proxy.Free;
      End;
    Finally
      // Volver a poner el apuntador del mouse que traíamos antes de entrar aquí
      Screen.Cursor := RespCursor;
    End;
  Except
    on e:Exception do
      raise InteligentException.CreateByCode(1, [e.Message]);
  End;
end;

function BorrarRegistro(NombreTabla: String; Where: String; ForzarBorrado: Boolean = False): Integer; overload;
var
  Proxy: TServerMethods1Client;
  pValor: String;
  i: Integer;
  RespCursor: TCursor;
begin
  Try
    Try
      Result := 0;

      RespCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      Try
        Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        Result := Proxy.DeleteRecord(Globales.Elemento('DATABASE').AsString, NombreTabla, Where, 3, ForzarBorrado);
      Finally
        Proxy.Free;
      End;
    Finally
      // Volver a poner el apuntador del mouse que traíamos antes de entrar aquí
      Screen.Cursor := RespCursor;
    End;
  Except
    on e:Exception do
      raise InteligentException.CreateByCode(1, [e.Message]);
  End;
end;

function BorrarRegistro(DataSet: TClientDataSet; CualesBorrar: TBorrarRegistros; ForzarBorrado: Boolean = False): Integer; overload;
var
  Proxy: TServerMethods1Client;
  i, cSel: Integer;
  RespCursor: TCursor;
  LocComp, LocComp2: TComponent;
  Nombre: String;
  DBGrid: TDbGrid;
  dxGrid: TcxGridDBTableView;
  NextDBGrid: TNextDBGrid;
  JvDBGrid: TJvDBGrid;
  Elementos: Array of Variant;
  Apuntador: TBookMark;
  Primero, iItem: Integer;
  CampoLlave, Parte: String;
begin
  // Localizar el campo llave (Debe iniciar su nombre con Id y debe tener la bandera InKey
  i := 0;
  CampoLlave := '';
  While (i < DataSet.FieldDefs.Count) and (CampoLlave = '') do
  begin
    if pfInKey in DataSet.FieldByName(DataSet.FieldDefs.Items[i].Name).ProviderFlags then
      CampoLlave := CampoLlave + DataSet.FieldDefs.Items[i].Name;

    inc(i);
  end;

  // Verificar si son todos los registros del dataset o si son solo los registros seleccionados
  if (CualesBorrar = brSelected) and (CampoLlave <> '') then
  begin
    // Localizar el DBGrid que se utilizó para la selección de registros
    i := 0;
    while i < TForm(DataSet.Owner).ComponentCount do
    begin
      if Pos('DBGRID', AnsiUpperCase(TForm(DataSet.Owner).Components[i].ClassName)) > 0 then
      begin
        LocComp := TForm(DataSet.Owner).Components[i];
        Nombre := '';

        if LocComp.ClassType = TDBGrid then
        begin
          Nombre := TDBGrid(LocComp).DataSource.Name;
          DbGrid := TDBGrid(LocComp);
          cSel := TDBGrid(LocComp).SelectedRows.Count;
        end;

        if LocComp.ClassType = TNextDBGrid then
        begin
          Nombre := TNextDBGrid(LocComp).DataSource.Name;
          NextDBGrid := TNextDBGrid(LocComp);
          cSel := TNextDBGrid(LocComp).SelectedCount;
        end;

        if LocComp.ClassType = TJvDBGrid then
        begin
          Nombre := TJvDBGrid(LocComp).DataSource.Name;
          JvDBGrid := TJvDBGrid(LocComp);
          cSel := TJvDBGrid(LocComp).SelectedRows.Count;
        end;

        if Nombre <> '' then
        begin
          LocComp2 := TForm(DataSet.Owner).FindComponent(Nombre);
          If (LocComp2.ClassType = TDataSource) and (AnsiCompareText(TDataSource(LocComp2).DataSet.Name, DataSet.Name) = 0) then
          begin
            // Ya asegurando que el dbgrid corresponde al dataset que se está procesando se deberá generar la lista de registros a borrar
            SetLength(Elementos, cSel);

            if cSel > 1 then
            Try
              RespCursor := Screen.Cursor;
              Screen.Cursor := crSQLWait;
              DataSet.DisableControls;
              Apuntador := DataSet.Bookmark;
              DataSet.First;
              Primero := 0;
              iItem := 0;
              while Not DataSet.Eof do
              begin
                if (Assigned(NextDBGrid) and (NextDBGrid.Selected[iItem])) then
                begin
                  Elementos[Primero] := DataSet.FieldByName(CampoLlave).AsInteger;
                  Inc(Primero);
                end;

                inc(iItem);
                DataSet.Next;
              end;
            Finally
              DataSet.GotoBookmark(Apuntador);
              DataSet.EnableControls;
              Screen.Cursor := RespCursor;
            End;

            if cSel = 1 then
              Elementos[0] := DataSet.FieldByName(CampoLlave).AsInteger;
          end;
        end;

        i := TForm(DataSet.Owner).ComponentCount;   // Forzar la salida una vez procesado
      end;

      Inc(i);
    end;

    // Informar de los registros seleccionados solamente
    Result := BorrarRegistro(DataSet, Elementos, ForzarBorrado);
  end
  else
    Try
      Try
        Result := 0;

        RespCursor := Screen.Cursor;
        Screen.Cursor := crSQLWait;

        Try
          Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
          Result := Proxy.DeleteRecord(Globales.Elemento('DATABASE').AsString, DataSet.ProviderName, '', 4, ForzarBorrado);
        Finally
          Proxy.Free;
        End;
      Finally
        // Volver a poner el apuntador del mouse que traíamos antes de entrar aquí
        Screen.Cursor := RespCursor;
      End;
    Except
      on e:Exception do
        InteliDialog.ShowModal('La transacción ha sido cancelada', e.Message, mtError, [mbOk], 0);
    End;
end;

function BorrarRegistro(NombreTabla: String; ForzarBorrado: Boolean = False): Integer; overload;
var
  Proxy: TServerMethods1Client;
  pValor: String;
  i: Integer;
  RespCursor: TCursor;
begin
  Try
    Try
      Result := 0;

      RespCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      Try
        Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        Result := Proxy.DeleteRecord(Globales.Elemento('DATABASE').AsString, NombreTabla, '', 5, ForzarBorrado);
      Finally
        Proxy.Free;
      End;
    Finally
      // Volver a poner el apuntador del mouse que traíamos antes de entrar aquí
      Screen.Cursor := RespCursor;
    End;
  Except
    on e:Exception do
      raise InteligentException.CreateByCode(1, [e.Message]);
  End;
end;

function BorrarRegistro(DataSet: TClientDataSet; KeyName: String; CualesBorrar: TBorrarRegistros; ForzarBorrado: Boolean = False): Integer; overload;
var
  Proxy: TServerMethods1Client;
  i, cSel: Integer;
  RespCursor: TCursor;
  LocComp, LocComp2: TComponent;
  Nombre: String;
  DBGrid: TDbGrid;
  NextDBGrid: TNextDBGrid;
  JvDBGrid: TJvDBGrid;
  CxDbGrid: TcxGridDBTableView;
  Elementos: Array of Variant;
  Apuntador: TBookMark;
  Primero, iItem: Integer;
  CampoLlave, Parte: String;
begin
  // Localizar el campo llave (Debe iniciar su nombre con Id y debe tener la bandera InKey
  i := 0;

  Campollave := keyname;
  // Verificar si son todos los registros del dataset o si son solo los registros seleccionados
  if (CualesBorrar = brSelected) and (CampoLlave <> '') then
  begin
    // Localizar el DBGrid que se utilizó para la selección de registros
    i := 0;
    while i < TForm(DataSet.Owner).ComponentCount do
    begin
      if (Pos('DBGRID', AnsiUpperCase(TForm(DataSet.Owner).Components[i].ClassName)) > 0)  or (TForm(DataSet.Owner).Components[i].ClassName = 'TcxGridDBTableView') then
      begin
        LocComp := TForm(DataSet.Owner).Components[i];
        Nombre := '';
        if LocComp.ClassType = TDBGrid then
        begin
          Nombre := TDBGrid(LocComp).DataSource.Name;
          DbGrid := TDBGrid(LocComp);
          cSel := TDBGrid(LocComp).SelectedRows.Count;
        end;

        if LocComp.ClassType = TNextDBGrid then
        begin
          Nombre := TNextDBGrid(LocComp).DataSource.Name;
          NextDBGrid := TNextDBGrid(LocComp);
          cSel := TNextDBGrid(LocComp).SelectedCount;
        end;

        if LocComp.ClassType = TJvDBGrid then
        begin
          Nombre := TJvDBGrid(LocComp).DataSource.Name;
          JvDBGrid := TJvDBGrid(LocComp);
          cSel := TJvDBGrid(LocComp).SelectedRows.Count;
        end;

        if LocComp.ClassType = TcxGridDBTableView then
        begin
          Nombre := TcxGridDBTableView(LocComp).DataController.DataSource.Name;
          CxDbGrid := TcxGridDBTableView(LocComp);
          cSel := TcxGridDBTableView(LocComp).Controller.SelectedRowCount;
          //SHowmessa
        end;

        if (Nombre <> '') and (loccomp.ClassType <> TcxGridDBTableView) then
        begin
          LocComp2 := TForm(DataSet.Owner).FindComponent(Nombre);
          If (LocComp2.ClassType = TDataSource) and (AnsiCompareText(TDataSource(LocComp2).DataSet.Name, DataSet.Name) = 0) then
          begin
            // Ya asegurando que el dbgrid corresponde al dataset que se está procesando se deberá generar la lista de registros a borrar
            SetLength(Elementos, cSel);

            if cSel > 1 then
            Try
              RespCursor := Screen.Cursor;
              Screen.Cursor := crSQLWait;
              DataSet.DisableControls;
              Apuntador := DataSet.Bookmark;
              DataSet.First;
              Primero := 0;
              iItem := 0;
              while Not DataSet.Eof do
              begin
                if (Assigned(NextDBGrid) and (NextDBGrid.Selected[iItem])) then
                begin
                  Elementos[Primero] := DataSet.FieldByName(CampoLlave).AsInteger;
                  Inc(Primero);
                end;

                inc(iItem);
                DataSet.Next;
              end;
            Finally
              DataSet.GotoBookmark(Apuntador);
              DataSet.EnableControls;
              Screen.Cursor := RespCursor;
            End;

            if cSel = 1 then
              Elementos[0] := DataSet.FieldByName(CampoLlave).AsInteger;
          end;
        end
        else if (Nombre <> '') and (LocComp.ClassType = TcxGridDBTableView) then
        begin
          LocComp2 := TForm(DataSet.Owner).FindComponent(Nombre);
          If (LocComp2.ClassType = TDataSource) and (AnsiCompareText(TDataSource(LocComp2).DataSet.Name, DataSet.Name) = 0) then
          begin
            // Ya asegurando que el dbgrid corresponde al dataset que se está procesando se deberá generar la lista de registros a borrar
            SetLength(Elementos, cSel);

            if cSel > 1 then
            Try
              RespCursor := Screen.Cursor;
              Screen.Cursor := crSQLWait;
              DataSet.DisableControls;
              Apuntador := DataSet.Bookmark;
              DataSet.First;
              Primero := 0;
              iItem := 0;
              while Not DataSet.Eof do
              begin
                if (Assigned(CxDbGrid) and (CxDbGrid.ViewData.Rows[iItem].Selected)) then
                begin
                  Elementos[Primero] := DataSet.FieldByName(CampoLlave).AsInteger;
                  Inc(Primero);
                end;

                inc(iItem);
                DataSet.Next;
              end;
            Finally
              DataSet.GotoBookmark(Apuntador);
              DataSet.EnableControls;
              Screen.Cursor := RespCursor;
            End;

            if cSel = 1 then
              Elementos[0] := DataSet.FieldByName(CampoLlave).AsInteger;
          end;
        end;
        i := TForm(DataSet.Owner).ComponentCount;   // Forzar la salida una vez procesado
      end;
      Inc(i);
    end;

    // Informar de los registros seleccionados solamente
    Result := BorrarRegistro(DataSet, Elementos, ForzarBorrado);
  end
  else
    Try
      Try
        Result := 0;

        RespCursor := Screen.Cursor;
        Screen.Cursor := crSQLWait;

        Try
          Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
          Result := Proxy.DeleteRecord(Globales.Elemento('DATABASE').AsString, DataSet.ProviderName, '', 4, ForzarBorrado);
        Finally
          Proxy.Free;
        End;
      Finally
        // Volver a poner el apuntador del mouse que traíamos antes de entrar aquí
        Screen.Cursor := RespCursor;
      End;
    Except
      on e:Exception do
        InteliDialog.ShowModal('La transacción ha sido cancelada', e.Message, mtError, [mbOk], 0);
    End;
end;

// Borrar registro(s) desde dataset por un conjunto de llaves
function EliminarRegistro(DataSet: TClientDataSet; Valores: Array of Variant; ForzarBorrado: Boolean = False): Integer;
var
  Proxy: TServerMethods1Client;
  Cadena: String;
  pValor: String;
  i: Integer;
  RespCursor: TCursor;
begin
  Try
    Try
      Result := 0;

      RespCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      Cadena := '';
      for i := 0 to High(Valores) do
      begin
        if Cadena <> '' then Cadena := Cadena + ',';
        if Valores[i] = Null then
          Cadena := Cadena + 'Null'
        else
        begin
          pValor := Valores[i];
          Cadena := Cadena + pValor;
        end;
      end;

      Try
        Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        Result := Proxy.EraseRecord(Globales.Elemento('DATABASE').AsString, DataSet.ProviderName, Cadena, 1, ForzarBorrado);
      Finally
        Proxy.Free;
      End;
    Finally
      // Volver a poner el apuntador del mouse que traíamos antes de entrar aquí
      Screen.Cursor := RespCursor;
    End;
  Except
    on e:Exception do
      InteliDialog.ShowModal('La transacción ha sido cancelada', e.Message, mtError, [mbOk], 0);
  End;
end;

function IniciarTransaccion: Boolean;
var
  Proxy: TServerMethods1Client;
begin
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.BeginTransaction(Globales.Elemento('DATABASE').AsString);
  Finally
    Proxy.Free;
  End;
end;

function ConcretarTransaccion: Boolean;
var
  Proxy: TServerMethods1Client;
begin
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.CommitTransaction(Globales.Elemento('DATABASE').AsString);
  Finally
    Proxy.Free;
  End;
end;

function CancelarTransaccion: Boolean;
var
  Proxy: TServerMethods1Client;
begin
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.RollBackTransaction(Globales.Elemento('DATABASE').AsString);
  Finally
    Proxy.Free;
  End;
end;

function EnTransaccion: Boolean;
var
  Proxy: TServerMethods1Client;
begin
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.InTransaction(Globales.Elemento('DATABASE').AsString);
  Finally
    Proxy.Free;
  End;
end;

function CancelarBloqueo(DataSet: TClientDataSet; IdLlave: Integer): Boolean;
var
  Proxy: TServerMethods1Client;
begin
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.LockCancel(DataSet.ProviderName, IdLlave);
  Finally
    Proxy.Free;
  End;
end;

function CancelarBloqueo(DataBaseName: String; IdLlave: Integer): Boolean;
var
  Proxy: TServerMethods1Client;
begin
  Try
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Result := Proxy.LockCancel2(DataBaseName, IdLlave);
  Finally
    Proxy.Free;
  End;
end;

function CompararReporte(Ruta: String; NombreReporte: String): Boolean;
var
  Proxy: TServerMethods1Client;
  nFile: Integer;
  Fecha: LongInt;
begin
  Try
    Try
      Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      Result := Proxy.ReportCompare(NombreReporte);
    Finally
      Proxy.Free;
    End;
  Except
    Result := False;
  End;
end;

function CompararArchivo(Ruta: String; NombreArchivo: String): Boolean;
var
  Proxy: TServerMethods1Client;
  nFile: Integer;
  Fecha: LongInt;
begin
  Try
    Try
      Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      Result := Proxy.FileCompare(Ruta, NombreArchivo);
    Finally
      Proxy.Free;
    End;
  Except
    Result := False;
  End;
end;

function ActualizaReporte(Ruta: String; NombreReporte: String): Boolean;
var
  Reporte: TClientDataSet;
  FileStream: TFileStream;
  BlobStream: TStream;
  Archivo: TSearchRec;
  nFile: Integer;
  Fecha: LongInt;
begin
  Try
    Try
      Reporte := TClientDataSet.Create(Nil);
      if Not CrearConjunto(Reporte, 'nuc_reporte_actualizar', ccCatalog) then
        raise Exception.Create('');

      if Not CargarDatosFiltrados(Reporte, 'ArchivoOriginal', [NombreReporte]) then
        raise Exception.Create('');

      Reporte.Open;
      if Reporte.RecordCount = 0 then
        raise Exception.Create('');

      // Actualizar el reporte en disco
      Try
        FileStream := TFileStream.Create(Ruta + NombreReporte, fmCreate);
        BlobStream := Reporte.CreateBlobStream(Reporte.FieldByName('Reporte'), bmRead);
        FileStream.CopyFrom(BlobStream, BlobStream.Size - BlobStream.Position);
      Finally
        BlobStream.Free;
        FileStream.Free;
      End;

      // Si el archivo ha sido grabado correctamente se deberá actualizar su fecha y hora de actualización conforme a los datos en el servidor
      if Not FileExists(Ruta + NombreReporte) then
        raise Exception.Create('');

      nFile := FileOpen(Ruta + NombreReporte, fmOpenReadWrite or fmShareDenyWrite);
      Fecha := DateTimeToFileDate(Reporte.FieldByName('Vigencia').AsDateTime);
      FileSetDate(nFile, Fecha);
      FileClose(nFile);
    Finally
      if Assigned(Reporte) and Reporte.Active then
        Reporte.Close;
      EliminarConjunto(Reporte);
      Reporte.Free;
    End;

    Result := True;
  Except
    Result := False;
  End;
end;

function ActualizaArchivo(Ruta: String; NombreArchivo: String): String;
var
  Proxy: TServerMethods1Client;
  nFile: Integer;
  Fecha: LongInt;
begin
  Try
    Try
      Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      Result := Proxy.GetFile(Ruta, NombreArchivo);
    Finally
      Proxy.Free;
    End;
  Except
    Result := '';
  End;

{var
  Archivo: TClientDataSet;
  FileStream: TFileStream;
  BlobStream: TStream;
  Archivo: TSearchRec;
  nFile: Integer;
  Fecha: LongInt;
begin
  Try
    Try
      Archivo := TClientDataSet.Create(Nil);
      if Not CrearConjunto(Reporte, 'nuc_reporte_actualizar', ccCatalog) then
        raise Exception.Create('');

      if Not CargarDatosFiltrados(Reporte, 'ArchivoOriginal', [NombreReporte]) then
        raise Exception.Create('');

      Reporte.Open;
      if Reporte.RecordCount = 0 then
        raise Exception.Create('');

      // Actualizar el reporte en disco
      Try
        FileStream := TFileStream.Create(Ruta + NombreReporte, fmCreate);
        BlobStream := Reporte.CreateBlobStream(Reporte.FieldByName('Reporte'), bmRead);
        FileStream.CopyFrom(BlobStream, BlobStream.Size - BlobStream.Position);
      Finally
        BlobStream.Free;
        FileStream.Free;
      End;

      // Si el archivo ha sido grabado correctamente se deberá actualizar su fecha y hora de actualización conforme a los datos en el servidor
      if Not FileExists(Ruta + NombreReporte) then
        raise Exception.Create('');

      nFile := FileOpen(Ruta + NombreReporte, fmOpenReadWrite or fmShareDenyWrite);
      Fecha := DateTimeToFileDate(Reporte.FieldByName('Vigencia').AsDateTime);
      FileSetDate(nFile, Fecha);
      FileClose(nFile);
    Finally
      if Assigned(Reporte) and Reporte.Active then
        Reporte.Close;
      EliminarConjunto(Reporte);
      Reporte.Free;
    End;

    Result := True;
  Except
    Result := False;
  End;}
end;

procedure PosicionAnterior(Forma: TForm);
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
  OldState: TWindowState;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := Forma.Left;
  xTop := Forma.Top;
  xWidth := Forma.Width;
  xHeight := Forma.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + Forma.Name, 'Left', Existe));
    if Not Existe then xLeft := Forma.Left;
  Except
    xLeft := Forma.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + Forma.Name, 'Top', Existe));
    if Not Existe then xTop := Forma.Top;
  Except
    xTop := Forma.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + Forma.Name, 'Width', Existe));
    if Not Existe then xWidth := Forma.Width;
  Except
    xWidth := Forma.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + Forma.Name, 'Height', Existe));
    if Not Existe then xHeight := Forma.Height;
  Except
    xHeight := Forma.Height;
  End;

  // Por default la ventana será tratada como Normal
  OldState := wsNormal;

  // Verificar si la ventana estaba maximizada al cerrarla la última vez
  if (xHeight = 0) or (xWidth = 0) then
    OldState := wsMaximized;

  if (xHeight = -10) or (xWidth = -10) then
    OldState := wsMinimized;

  // Posicionar la ventana en su último lugar
  Forma.Left := xLeft;
  Forma.Top := xTop;
  if OldState = wsNormal then
  begin
  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Forma.Width;
  if xHeight = 0 then xHeight := Forma.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Forma.Width := xWidth;
  Forma.Height := xHeight;
  end
  else
    Forma.WindowState := OldState;
end;

function EstablecerDatosUsuario(Datos: TClassUser; Reiniciar: Boolean; Var Comentario: String): Boolean;
begin
  Result := ClientModule1.FuncDataUser(Datos, Reiniciar, Comentario);
end;

function EstaBloqueado(DataSet: TClientDataSet): Boolean;
begin
  Result := ClientModule1.FuncEstaBloqueado(DataSet);
end;

function InicializarCampos(DataSet: TClientDataSet): Boolean;
var
  i: Integer;
  Valor: Variant;
begin
  Try
    for i := 0 to DataSet.FieldDefs.Count -1 do
    begin
      if DataSet.FieldDefs.Items[i].Required then
      begin
        case DataSet.FieldByName(DataSet.FieldDefs.Items[i].Name).DataType of
          ftInteger,
          ftSmallInt,
          ftShortInt,
          ftLargeInt,
          ftWord,
          ftByte,
          ftLongWord: Valor := 0;
          ftFloat,
          ftCurrency,
          ftBCD,
          ftFMTBCD: Valor := 0.0;
          ftBoolean: Valor := True;
          ftDate,
          ftDateTime: Valor := Now;
          ftBlob: Valor := '';
          ftMemo, ftWideMemo: Valor := '';
          ftTime: Valor := Time;
          ftVarBytes,
          ftBytes,
          ftString, ftWideString: Valor := '';
        else
          Valor := '';
        end;

        DataSet.FieldByName(DataSet.FieldDefs.Items[i].Name).AsVariant := Valor;
      end;
    end;
    Result := True;
  Except
    Result := False;
  End;
end;

function ProcedimientoAlmacenado(NombreProcedimiento: String; Parametros: String;
  Valores: Array of Variant): Boolean;
var
  DataSet: TClientDataSet;
begin
  Result := ProcedimientoAlmacenado(DataSet, NombreProcedimiento, Parametros, Valores);

  Try
    EliminarConjunto(DataSet);
    DataSet.Free;
  Except
    ;
  End;
end;

function ProcedimientoAlmacenado(var DataSet: TClientDataSet;
  NombreProcedimiento: String; Parametros: String;
  Valores: Array of Variant): Boolean;
var
  CadPaso: String;
  i: Integer;
begin
  Try
    DataSet.Destroy;
  Except
    ;
  End;
  
  DataSet := TClientDataSet.Create(Nil);
    
  for i := 0 to high(Valores) do
  begin
    CadPaso := Valores[i];
    Valores[i] := StringReplace(CadPaso, ',', '|', [rfReplaceAll, rfIgnoreCase]);
  end;

  Result := ClientModule1.FuncProcedimientoAlmacenado(DataSet, NombreProcedimiento, Parametros, Valores);
end;

function ServidorFechaHora(Modo: Integer): TDateTime;
begin
  Result := ClientModule1.FuncServidorFechaHora(Modo);
end;

function CadenaServidor(Cadena: String): Boolean;
begin
  Result := ClientModule1.FuncCadenaServidor(Cadena);
end;

{$ENDREGION}

function Minutos(Const Valor: Integer): String;
begin
  Result := IntToStr(Trunc((Valor / ClientModule1.cMultiplo) / 60)) + ' Minutos';
end;

function MinutosSegundos(Const Valor: Integer): String;
var
  Minutos: Integer;
begin
  Minutos := Trunc((Valor / ClientModule1.cMultiplo) / 60);
  Result := IntToStr(Minutos) + ':' + RightStr('0' + IntToStr(Trunc((Valor - (Minutos * 60 * ClientModule1.cMultiplo)) / ClientModule1.cMultiplo)), 2) + ' Minutos';
end;

function InicializarProgress(Min, Max, Position: Integer): Boolean;
begin
  Result := ClientModule1.funcInicializarProgress(Min, Max, Position);
end;

function IncrementarProgress(Valor: Integer): Boolean;
begin
  Result := ClientModule1.funcIncrementarProgress(Valor);
end;

function AsignarProgress(Valor: Integer): Boolean;
begin
  Result := ClientModule1.funcAsignarProgress(Valor);
end;

function LlavePrimaria(NombreTabla: String): String;
begin
  Result := ClientModule1.funcLlavePrimaria(NombreTabla);

end;

function DescomponerFecha(Fecha: TDate = 0; FechaHora: TDateTime = 0; DiaSemana: Boolean = False; Modo: TModoFecha = tmMinuscula): String;
const
  NombreDia: Array[1..7] of String = ('Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado');
  Leyenda: Array[1..2, tmMinuscula..tmMayuscula] of String = ((' de ', ' DE '), (' rangel ', ' RANGEL '));
  NomMes: Array[1..12, tmMinuscula..tmMayuscula] of String = ((' Enero ', ' ENERO '), (' Febrero ', ' FEBRERO '), (' Marzo ', ' MARZO '), (' Abril ', ' ABRIL '), (' Mayo ', ' MAYO '), (' Junio ', ' JUNIO '),
                                                              (' Julio ', ' JULIO '), (' Agosto ', ' AGOSTO '), (' Septiembre ', ' SEPTIEMBRE '), (' Octubre ', ' OCTUBRE '), (' Noviembre ', ' NOVIEMBRE '), (' Diciembre ', ' DICIEMBRE '));
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

function DatasetConCambios(Sender: TObject):Boolean;
var
  ic:Integer;
  modificado :   boolean;
  campo : string;
begin
  {
  Esta función verifica si un componente Tdatasource, Tdataset, o TclientDataset
  sufrió cambios en alguno de sus campos, y debuelve un booleano (incluye verificacion de blobs)

  Modo de Empleo:

  Dataset
  DatasetConCambios(dsxxx.dataset);
  ó
  Datasource
  DatasetConCambios(dsxxx);
  ó
  Clientdataset
  DatasetConCambios(cdcc);
  }
  modificado := False;
  ic:= 0;

  if TComponent(Sender).classname = 'TDataSet' then
  begin
    while (ic < TDataSet(Sender).FieldCount) and not(modificado) do
    begin
      campo := TDataSet(Sender).FieldList.Fields[ic].FieldName;
      if not TDataSet(Sender).FieldByName(campo).IsBlob then
      begin
        if TDataSet(Sender).FieldByName(campo).OldValue <> TDataSet(Sender).FieldByName(campo).Value then
          modificado :=True;
      end
      else
        if TBlobField(TDataSet(Sender).FieldByName(campo)).Modified then
          modificado :=True;
      inc(ic);
    end;
  end;
  if TComponent(Sender).classname = 'TDataSource' then
  begin
    if TDataSource(Sender).dataset <> nil then
      while (ic < TDataSource(Sender).DataSet.FieldCount) and not(modificado) do
      begin
        campo := TDataSource(Sender).DataSet.FieldList.Fields[ic].FieldName;
        if not TDataSource(Sender).DataSet.FieldByName(campo).IsBlob then
        begin
          if TDataSource(Sender).DataSet.FieldByName(campo).OldValue <> TDataSource(Sender).DataSet.FieldByName(campo).Value then
            modificado :=True;
        end
        else
          if TBlobField(TDataSource(Sender).DataSet.FieldByName(campo)).Modified then
            modificado :=True;
        inc(ic);
      end;
  end;
  if TComponent(Sender).classname = 'TClientDataSet' then
  begin
      while (ic < TClientDataSet(Sender).FieldCount) and not(modificado) do
      begin
        campo := TClientDataSet(Sender).FieldList.Fields[ic].FieldName;
        if not TClientDataSet(Sender).FieldByName(campo).IsBlob then
        begin
          if TClientDataSet(Sender).FieldByName(campo).OldValue <> TClientDataSet(Sender).FieldByName(campo).Value then
            modificado :=True;
        end
        else
          if TBlobField(TClientDataSet(Sender).FieldByName(campo)).Modified then
            modificado :=True;
        inc(ic);
      end;
  end;

  Result := Modificado;
end;

function FactorIntegracion(IdTipoNomina: Integer; Antiguedad: Word): Real;
var
  proxy: TServerMethods1Client;
  CadParam: String;
begin
{  Try
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      CadParam := IntToStr(IdTipoNomina) + ',' + IntToStr(Antiguedad);
      Result := Proxy.PayRollFunctions('FactorIntegracion', CadParam);
    Finally
      Proxy.Free;
    End;
  Except
    Result := 0;
  End;}
end;

procedure CambiarVaciosANull(Dataset: TClientDataSet;MuestraError:Boolean);
var
  Campo:string;
  Contador:Integer;
begin
  //
  try
    if not (Dataset.State in [dsInsert,dsEdit]) then
      raise Exception.Create('El dataset '+dataset.Name+' no está en estado edición o insercción.');

    for contador := 0 to Dataset.FieldDefs.Count-1 do
    begin
      Campo := Dataset.FieldDefs[Contador].DisplayName;
      if  not TFieldDef(Dataset.FieldDefs[Contador]).Required  then
      begin
        if Length(Trim(Dataset.FieldByName(Campo).AsString)) = 0 then
          Dataset.FieldByName(Campo).Clear;
      end
      else
        if Length(Trim(Dataset.FieldByName(Campo).AsString)) = 0 then
          raise Exception.Create('El campo '+campo+' Es not Null en base de datos y Ud. trata de enviarlo vacío, verifique esto porfavor.');
    end;

  except
    on e:exception do
      if MuestraError then
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0)
      else
        ;
  end;
end;

function ArmarPaginaMenu(Var Pagina: TAdvPage; Menu: TAdvPopupMenu; Posicion: Word): Boolean;
var
  i: Integer;
  AdvToolBar: TAdvToolBar;
  Boton: TAdvGlowButton;
begin
  Result := False;
  Try
    for i := 0 to Pagina.AdvToolBarCount -1 do
      Pagina.AdvToolBars[i].Destroy;

    AdvToolBar := TAdvToolBar.Create(Pagina);
    AdvToolBar.Parent := Pagina;
    AdvToolBar.Caption := Menu.Name;

    for i := 0 to Menu.Items.Count -1 do
    begin
      Boton := TAdvGlowButton.Create(AdvToolBar);
      Boton.Parent := AdvToolBar;
      Boton.Images := Menu.Images;
      Boton.Caption := '  ' + Menu.Items[i].Caption;
      Boton.ImageIndex := Menu.Items[i].ImageIndex;
      Boton.Name := Menu.Items[i].Name;
      Boton.OnClick := Menu.Items[i].OnClick;
      Boton.ImageIndex := Menu.Items[i].ImageIndex;

      if Menu.Items[i].Tag > 0 then
        Boton.Width := Menu.Items[i].Tag;
    end;

    Pagina.Parent := Form2.tbMain;

    for i := Posicion to Form2.tbMain.AdvPageCount -1 do
      Form2.tbMain.AdvPages[i].PageIndex := i + Posicion +1;

    Pagina.PageIndex := Posicion;

    Result := True;
  Except
    ;
  End;
end;

procedure LimpiarBufferTeclado;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, 0, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE or PM_NOYIELD) do;
end;

procedure LimpiarBufferMouse;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, 0, WM_MOUSEFIRST, WM_MOUSELAST, PM_REMOVE oR PM_NOYIELD) do;
end;

procedure leerConfiguaracionAcceso(var cdConfiguracion: TClientDataSet);
begin
  if cdConfiguracion.ProviderName = '' then
    if not CrearConjunto(cdConfiguracion, 'nuc_configuracion_acceso',ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Configuración de Acceso']);

  if not CargarDatosFiltrados(cdConfiguracion, 'IdConfiguracion', [-1]) then
    raise InteligentException.CreateByCode(6, ['Configuración de Acceso', 'IdCondiguracion', '-1']);

  if cdConfiguracion.Active then
    cdConfiguracion.Refresh
  else
    cdConfiguracion.Open;
end;

procedure EncabezadoReportes(var cdDatosGenerales: TClientDataSet; IdParametro: Integer);
begin
  if cdDatosGenerales.ProviderName = '' then
    if not CrearConjunto(cdDatosGenerales, 'nuc_configuracion', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nuc_configuracion']);

  if not CargarDatosFiltrados(cdDatosGenerales, 'idConfiguracion', [IdParametro]) then
    raise InteligentException.CreateByCode(6, ['nuc_configuracion', 'IdConfiguracion', '18']);

  if cdDatosGenerales.Active then
    cdDatosGenerales.Refresh
  else
    cdDatosGenerales.Open;

  if cdDatosGenerales.RecordCount = 0 then
    InteliDialog.ShowModal('Aviso', 'No se ah definido los datos generales de la empresa', mtInformation, [mbOK], 0);
end;

function verificarConexionInternet: Boolean;
const
  SITIOS: array[1..1] of string =('www.google.com.mx');
var
  i: Integer;
  IdCmdTCP: TIdCmdTCPClient;
  Caption: string;
begin
  try
    idCmdTcp := TIdCmdTCPClient.Create(nil);
    try
      Result:= False;
      i:= 0;

        Inc(i);
        Caption:= IntToStr(i);
        idCmdTcp.Host:= SITIOS[1];
        try
          Result:= True;
          //idCmdTcp.
          idCmdTcp.SendCmd('Ping' + Sitios[1]);
        except
          on e: Exception do
          begin
            ShowMessage(e.Message);
            Result:= False;
          end;
        end;

    finally
      IdCmdTcp.Destroy;
    end;
  except
    on e: InteligentException do
      Intelidialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);
  end;
end;

procedure AbrirAutorizaciones(Cuales: String);
begin
  ClientModule1.pAbrirAutorizaciones(Cuales);
end;

procedure AbrirSolicitantes(Cuales: String);
begin
  ClientModule1.pAbrirSolicitantes(Cuales);
end;

procedure AccedeARutaOrganizacion(Hijos: String);
begin
  ClientModule1.ProcAccedeARutaOrganizacion(Hijos);
end;

function LlenarComboBox(ComboBox: TCustomCombo; NombreTabla: String; NombreCampo: String): Integer;
begin
  Result := ClientModule1.FuncLlenarComboBox(ComboBox, ComboBox.Items, NombreTabla, NombreCampo);
end;

function LlenarComboBox(ComboBox: TcxCustomComboBox; NombreTabla: String; NombreCampo: String): Integer;
begin
  Result := ClientModule1.FuncLlenarComboBox(ComboBox, ComboBox.Properties.Items, NombreTabla, NombreCampo);
end;

Procedure SaveConfigCxGrid(Grid: TcxGrid; FormName:String);
var
  RutaGuardar: String;
begin
  RutaGuardar := ExtractFilePath(Application.ExeName) + 'cfg';

  if not DirectoryExists(RutaGuardar) then
    MkDir(RutaGuardar);

  Grid.ActiveView.StoreToIniFile(RutaGuardar + '\' + FormName + '_' + Grid.Name + ClientModule1.cdOrganizacion.FieldByName('IdOrganizacion').AsString + '.cfg');
end;

Procedure ReadConfigCxGrid(Grid: TcxGrid; FormName: String);
var
  RutaGuardar: String;
begin
  RutaGuardar := ExtractFilePath(Application.ExeName) + 'cfg';

  if FileExists(RutaGuardar + '\' + FormName + '_' + Grid.Name + ClientModule1.cdOrganizacion.FieldByName('IdOrganizacion').AsString + '.cfg') then
    Grid.ActiveView.RestoreFromIniFile(RutaGuardar + '\' + FormName + '_' + Grid.Name + ClientModule1.cdOrganizacion.FieldByName('IdOrganizacion').AsString + '.cfg');

end;

Procedure RestoreToDefaultCxGrid(Grid: TcxGrid; FormName: String);
var
  RutaGuardar: String;
  i: Integer;
begin
  RutaGuardar := ExtractFilePath(Application.ExeName) + 'cfg';

  if FileExists(RutaGuardar + '\' + FormName + '_' + Grid.Name + ClientModule1.cdOrganizacion.FieldByName('IdOrganizacion').AsString + '.cfg') then
    DeleteFile(PWideChar(RutaGuardar + '\' + FormName + '_' + Grid.Name + ClientModule1.cdOrganizacion.FieldByName('IdOrganizacion').AsString + '.cfg'));

  for i := 0 to TcxGridDBTableView(grid.ActiveView).ColumnCount - 1 do
    TcxGridDBTableView(grid.ActiveView).Columns[i].Visible := true;
end;


end.
