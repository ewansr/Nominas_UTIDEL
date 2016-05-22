unit Utilerias;
interface

uses
  Windows, DateUtils, StrUtils, Dialogs, SysUtils, Math, Controls, adoDB, RxMemDS, DB, ShellAPI,
  frm_connection, frxClass, frxDBSet, Classes, global, variants, Graphics, ZDataset,
  DBCtrls, Forms, StdCtrls, RXDBCtrl, IdAttachmentFile, IdSSLOpenSSL, ZDbcIntfs, ComCtrls,
  JPEG;

var
  RngTipoAjuste: Integer = 0;

procedure procReporteDiarioPersonal_EQ_H(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; FormatosExp: string = ''; PermisosExp: string = '');
procedure procReporteVisitadeObra(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent);

//function  sSeguridad(sParamUsuario, sParamContrato, sParamOrden, sDerecho: string; tOrigen: TComponent): string;
function rfnDecimal(sParamCantidad: string): Real;
function sfnCalculaFecha(sParamFecha: string; sParamHora: string; sParamDuracion: string): string;
function sfnCalculaDia(iParamDia: Integer; sParamHora: string; sParamDuracion: string): string;
function sfnHora(sParamHoras: string): Real;
function sfnRestaHoras(sParamHorasMax, sParamHorasMin: string): string;
function sfnSumaHoras(sParamHorasMax, sParamHorasMin: string): string;
function sfnFactor(sParamHoraInicio: string; sParamHoraFinal: string; iParamJornadas: Real; iDecimales: Integer): string;
function sfnFactoriza(Cantidad: Real; HoraInicio, HoraFinal: string; iParamJornadas: Real; iDecimales: Integer): string;
function lfnValidaHora(sParamHora: string): Boolean;
function ifnDecimales(iParamDecimales: Integer): Integer;
function sTiempoMuerto(sMuerto: string; iTotalPersonal, iTotalFrente, iJornada: Real): string;
procedure procFichaTecnica(sParamContrato, sParamConvenio, sParamActividad: string; tOrigen: TComponent; FormatosExp: string = ''; PermisosExp: string = '');
procedure procAnalisisFinanciero(sParamContrato, sParamOrden, sParamConvenio: string; dParamFechaInicio, dParamFechaFinal: tDate; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; FormatosExp: string = ''; PermisosExp: string = '');

procedure procReporteDiarioPerf(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent);
procedure procReporteDiarioConsolidado(sParamContrato, sParamPlataforma, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; RecordMove: tNotifyEvent; FormatosExp: string = ''; PermisosExp: string = '');
procedure definirPeriodoProgramado(sParamContrato, sParamConvenio: string; dParamFecha: tDate);

procedure rDiarioFirmas(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent);
procedure procAvancesHistorico(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; dParamFecha: tDate; lParamMultiple: Boolean; tOrigen: TComponent);
procedure procAvances(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; dParamFecha: tDate; lParamMultiple: Boolean; tOrigen: TComponent);
procedure procCaratulaGeneradorGob(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);

//procedure procGenMensual(sParamContrato, sParamOrden, sParamConvenio :String; dParamFechaI, dParamFechaT :tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent) ;

procedure procCaratulaPersonalEquipo(sParamContrato, sParamOrden, sParamConvenio, sTipo: string; dParamFechaI, dParamFechaT: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent);

procedure procHojasegGeneradores(sParamContrato, sParamEstimacion, sParamGenerador: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
procedure procAlbumGeneradorGob(sParamContrato, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
procedure procConsolidadoOt(sParamContrato, sParamOrden: string; dParamFecha: tDateTime; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
procedure procCaratulaGenerador_1(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = ''); 
procedure procCaratulaGenerador(iParamNivel :integer; sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
procedure procCaratulaGeneradorPerf(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
procedure procListadeVerificacion(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
procedure procNumeroGenerador(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
procedure procNumeroGeneradorDespiezado(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
procedure procSemanalSinConImportes(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
procedure procLimpia();
function cfnCalculaAvances(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
function cfnCalculaAvancesGob(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
function lfnValidaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamGenerador: string; tOrigen: TComponent): Boolean;
function lCheckMaximized(): Boolean;
function lCheckReporte(): Boolean;
procedure procCreateObject(tOrigen: TComponent);
procedure rOrdenCambio(sParamContrato: string; iParamCedula: Integer; tOrigen: TComponent);
function funcSql(dbParamTable: TZReadOnlyQuery; sTable: string): WideString;
function funcSql2(dbParamTable: tADOQuery; sTable: string): WideString;
function funcCreateStruct(dbParamTable: TZReadOnlyQuery; sTable: string): WideString;
function mfnContenido(dbParamTable: tADOQuery): WideString;
function mfnSqlContenido(dbParamTable: tADOQuery; sParamTable: string; MyTable: tAdoTable): WideString;
function Tamanyo(Archivo: string): Real;

function xNumerosToLletres(Numero: currency): string;

procedure ProcSintesisGerencial(sParamContrato: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; sTipoReporte: string);
function fnTiempoMuerto(sParamTipo, sParamInicio, sParamFinal, sParamComida, sParamJornada: string; iParamPersonal, iParamFrente: Integer): string;
function sfnItem(sNumeroActividad, sParamTipo: string; iParamNivel: Byte): string;
function sfnwbsAnterior(wbs: string): string;
function ifnNivel(wbs: string): Integer;
function sfnDescompone(sActividad: string; iNiveles: Integer): string;
function esColor(iColor: Integer): tColor;
function espaces(paramNivel: Integer): string;
function lVerificaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad: string; dParamFecha: tDate; iParamConsecutivo: Word; dParamCantidad: Double; tOrigen: TComponent): Byte;
function xIntToLletres(Numero: LongInt): string;
function xxIntToLletres(Valor: LongInt): string;
function EsRomano(Roman: string): Boolean;
function RomanToDec(Roman: string): LongInt;
function esNumerico(sParamTexto: string): Boolean;
function dfnGeneradoAnterior(sParamContrato, sParamActividad: string; iParamConsecutivo: Word; tOrigen: TComponent): Double;

procedure procActualizaExistencias(sParamContrato, sParamFecha, sParamTurno: string; iParamIdRecurso: Integer; tOrigen: TComponent);
function lfnVerificarHorasEmbarcacion(sParamContrato, sParamFecha, sParamHora, sParamTipo: string): Boolean;

//Para Diavaz
procedure ProcCierraDiaNCammpo_Bitacora(sParamContrato, sParamOrden, sParamConvenio: string; dParamFecha: tDate; tOrigen: TComponent);

procedure procReporteTripulacion(sParamContrato, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = ''; sParamTipo :string = '');
procedure procReporteTripulacion_lista(sParamContrato, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = ''; sParamTipo :string = '');

{Procesos de Regeneracion de partidas...}
procedure RegeneraPartida(dParamTipoActividad, dParamNumeroOrden, dParamWbs, dParamNumeroActividad, sParamConvenio: string; dParamCantidad: Real);
procedure Kardex(dParamOrigen, dParamMov, dParamActiv, dParamTipo, dParamFrente, dParamEstima, dParamGenerador: string);

procedure ProcGeneraWindows(tzDataSourceTemp: tDataSource; sParamComentarios, sParamTable: string; lParamVisualiza: Boolean);

{Procedimientos Precios unitarioss..}
procedure CalculoIndirectos(dParamCostoDirecto, dParamCostoIndirecto, dParamFinanciamiento, dParamUitlidad, dParamCargoAdic, dParamCargoAdic2, dParamCargoAdic3: double; dParamTipoExplosion: string);

{Funcion para envio de mail.. al validar Reporte diario..}
function SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, Adjunto, texto: ansistring): boolean;

{Funciones para encriptar passwords en Usuarios de Base de Datos..}
function Encripta(Cadena: string): string;
function DesEncripta(Cadena: string): string;

//para tesoreria por soriano
  procedure rptEgresoxFolio (ParamFecha : tDate; ParamFolio : Integer) ;
  procedure procReporteGasto ;
  procedure rptEgresos (ParamFechaInicio, ParamFechaFinal : tDate) ;
  procedure rptEgresosxProveedor (ParamFechaInicio, ParamFechaFinal : tDate) ;
  procedure rptEgresosxTipoMovimiento (ParamFechaInicio, ParamFechaFinal : tDate) ;
  procedure procCostoOperativo (sParamOrden: string);

//Para Nominas: APatrick.
{$REGION 'NOMINAS'}
  function RedimensionarJPG(sFilePath: string): string;
{$ENDREGION}


{Funcion para tomar el perido de reprogramacion del barco..}
procedure definirPeriodo(sParamContrato: string; dParamFecha: tDate);
{Funcion para determinar que numeracion de partidas se imprime en el reporte diario}
function historialPartidas(sParamContrato, sParamOrden: string; dParamFecha: tDate; lmostrarAnt: boolean): string;

procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings);
procedure rDiarioFirmasReq(sParamContrato, sParamOrden, sParamTurno, sParamDepto: string; dParamFecha: tDate; tOrigen: TComponent);

{Generadores Ruli..}
procedure procGeneradorConversiones(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lReporte: string; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');

{$REGION 'Declara Funciones de Contabilidad'}
  //Genera la Cadena de Numero de Cuenta Contable
   function estructura_sNumeroOrden(var iId : String) : string;
{$ENDREGION}

type
  TEventHandlers = class // create a dummy class
    procedure ButtonClick(Sender: TObject);
  end;

var
  Propuesta_General, sNombreFrente: string;
  rDiario: TfrxReport;
  dsFichaTecnica: TfrxDBDataSet;
  QryReporteDiario: TZReadOnlyQuery;
  QryGenerador: TZReadOnlyQuery;
  QryReporteFotografico: TZReadOnlyQuery;
  Bitacora3: tZReadOnlyQuery;
  QryAcumulados: TZReadOnlyQuery;
  QryAlternos: TZReadOnlyQuery;
  TiempoMuerto: tZReadOnlyQuery;
  TiempoMuertoPersonal: tZReadOnlyQuery;
  QryMovimientosdePersonal: TZReadOnlyQuery;
  QryOrdenesdeTrabajo: TZReadOnlyQuery;
  QryBuscar: TZReadOnlyQuery;
  QryBuscarAux: TZReadOnlyQuery;
  Consolidado, Consolidadoeq, GruposHoras, GrupoPersonal: TZReadOnlyQuery;
  rptPersonal,
    rptTiempoExtra,
    rptEquipos,
    rptEquiposSeguridad: TZReadOnlyQuery;
  Permisos: TZReadOnlyQuery;
  QryConfiguracion: tZReadOnlyQuery;
  QryTrinomios: tZReadOnlyQuery;
  QryAuxiliar,
    QryPernoctas,
    QryPeriodo,
    QryExisteFoto,
    QryAdmon: tzReadOnlyQuery;
  Q_Paquetes, QrCantInstall: tzReadOnlyquery;

   //memorys
  mBitacora1,
    mPernocta,
    mBitacoraActividades,
    mMovimientos,
    mTiempoPersonal,
    mEquipoSeguridad,
    mPersonalxPartida,
    mMaterialxPartida: TrxMemoryData;

  dsOrden,
    dsMovimientos,
    dsPersonal,
    dsTiempoExtra,
    dsConOt, dsSolicitado,
    dsGrupoPersonal,
    dsGrupoHoras,
    dsBitacora3,
    dsSeguridad,
    dsReporteDiario,
    dsConfiguracion,
    dsReporteFotografico,
    dsPermisos,
    dsEquipos,
    dsTiemposMuertos,
    dsTiempoMuertoPersonal,
    dsPersonalxPartida,
    dsMaterialxPartida, 
    dsCentroCosto,
    dsmBitacora1,
    dsmBitacoraActividades,
    dsPernoctas,
    dsPeriodo,
    dsExisteFoto,
    dsAdmon: TfrxDBDataSet;

  dValorPonderado,
    dValorProgramado,
    dValorReal: Double;
  dValorMN,
    dValorDLL,
    dValorGenerado: Currency;
  dsActividadesxOrden: TfrxDBDataSet;
  dsIsometricoReferencia: TfrxDBDataSet;
  dsComentariosAdicionales: TfrxDBDataSet;
  qryComentariosAdicionales: TZReadOnlyQuery;
  qryPers13: TzReadOnlyQuery;
  QryC14: TZReadOnlyQuery;
  QryC15: TZReadOnlyQuery;
  QryC14te: TZReadOnlyQuery;
  dsC14: TfrxDBDataSet;
  dsC15: TfrxDBDataSet;
  dsC14te: TfrxDBDataSet;
  dsPers13: TfrxDBDataSet;
  mBitacora3: TrxMemoryData;
  dsComentariosxActividad: TfrxDBDataSet;
  qryComentariosxActividad: TZReadOnlyQuery;
  dsConfiguracionOrden: TfrxDBDataSet;
  qryConfiguracionOrden: TZReadOnlyQuery;

  Bitacora: TZQuery;
  MaximoDiario: TZQuery;

  qryOcupacionBarco: TZReadOnlyQuery;
  dsOcupacionBarco: TfrxDBDataSet;
  qryPernoctaBarco: TZReadOnlyQuery;
  dsPernoctaBarco: TfrxDBDataSet;

  //Esto es para la primera hoja de barco de programadas.
  Prorrateos,
    QryArribos,
    QryArribosVuelo,
    QryClimaReporte,
    QryRecursosReporte,
    QrynotasGenerales : TZReadOnlyQuery;

    detProrrateos,
    dsClimaReporte,
    ArribosReporte,
    ArribosReporteVuelo,
    dsRecursosReporte,
    dsNotasGenerales : TfrxDBDataSet;

implementation

const
  ProgPartes = 6;

var
  AcumulaProgress: Real;

procedure TEventHandlers.ButtonClick(Sender: TObject);
begin
  global_opcion_window := 'Si';
end;

{$REGION 'CONTABILIDAD FUNCIONES'}
function estructura_sNumeroOrden(var iId : String) : string;
var
    NumeroCuenta, padre, sql : string;
begin
  NumeroCuenta := '';
  sql := 'SELECT sNumeroCuenta, iPadre FROM con_catalogodecuentas WHERE iId = '+iId+' ORDER BY sNumeroCuenta;';
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add(sql);
  Connection.QryBusca.Open;
  Connection.QryBusca.First;
  if Connection.QryBusca.RecordCount > 0 then begin
    iId := Connection.QryBusca.FieldByName('iPadre').AsString;
    padre := Connection.QryBusca.FieldByName('sNumeroCuenta').AsString;
    while not Connection.QryBusca.Eof do begin
      sql := 'SELECT sNumeroCuenta, iPadre FROM con_catalogodecuentas WHERE iId = '+iId+' ORDER BY sNumeroCuenta;';
      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add(sql);
      Connection.QryBusca2.Open;
      Connection.QryBusca2.First;
      NumeroCuenta := padre + NumeroCuenta;
      if Connection.QryBusca2.RecordCount > 0 then begin
        iId := Connection.QryBusca2.FieldByName('iPadre').AsString;
        padre := Connection.QryBusca2.FieldByName('sNumeroCuenta').AsString;
      end
      else begin
        Connection.QryBusca.Next;
      end;
    end;
  end
  else begin
    NumeroCuenta := iId;
  end;

  Result := NumeroCuenta;
end;
{$ENDREGION}

//Funciones Nómina:
{$REGION 'NOMINA_FUNCIONES'}
function RedimensionarJPG(sFilePath: string): string;
var
  bmp: TBitmap;
  jpg: TJpegImage;
  scale: Double;
begin
  if FileExists(sFilePath) then
  begin
    jpg := TJpegImage.Create;
    try
      jpg.Loadfromfile(sFilePath);

      if jpg.Height > jpg.Width then
        scale := 350 / jpg.Height
      else
        scale := 350 / jpg.Width;

      bmp := TBitmap.Create;
      try
        {Create thumbnail bitmap, keep pictures aspect ratio}
        bmp.Width := Round(jpg.Width * scale);
        bmp.Height := Round(jpg.Height * scale);
        bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
        {Draw thumbnail as control}
        //Self.Canvas.Draw(100, 10, bmp);
        {Convert back to JPEG and save to file}
        jpg.Assign(bmp);
        jpg.SaveToFile(
          ChangeFileext(sFilePath, '_inteligent.JPG')
          );
        result := StringReplace(sFilePath, '.jpg', '_inteligent.JPG', [rfReplaceAll, rfIgnoreCase]);
      finally
        bmp.free;
      end;
    finally
      jpg.free;
    end;
  end
  else
  begin
    result := '';
  end;
end;
{$ENDREGION}

//funciones de tesoreria, desde aqui empiezan las funciones de tesoreria


procedure procCostoOperativo (sParamOrden: string);
var
  rDiario: TfrxReport;
  QryReporteDiario,
  QryConfiguracion,
  QryReporteFotografico,
  QryBitacoradePersonal,
  QryBitacoradeMateriales,
  QryCheques  : TZReadOnlyQuery;

  dsReporteDiario,
  dsConfiguracion,
  dsReporteFotografico,
  dsBitacoradePersonal,
  dsBitacoradeMateriales,
  dsCheques  : TfrxDBDataSet;
begin
  // Creo los abjetos del reporte diario ...
  rDiario := TfrxReport.Create(Nil);
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := False ;
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;

  QryReporteDiario := TZReadOnlyQuery.Create(Nil);
  QryReporteDiario.Connection := connection.ZConnection ;

  QryReporteFotografico := TZReadOnlyQuery.Create(Nil);
  QryReporteFotografico.Connection := connection.ZConnection ;

  QryBitacoradePersonal := TZReadOnlyQuery.Create(Nil);
  QryBitacoradePersonal.Connection := connection.ZConnection ;

  QryBitacoradeMateriales := TZReadOnlyQuery.Create(Nil);
  QryBitacoradeMateriales.Connection := connection.ZConnection ;

  QryConfiguracion := TZReadOnlyQuery.Create(Nil);
  QryConfiguracion.Connection := connection.ZConnection ;

  QryCheques := TZReadOnlyQuery.Create(Nil);
  QryCheques.Connection := connection.ZConnection ;

  dsReporteDiario := TfrxDBDataSet.Create(Nil);
  dsConfiguracion := TfrxDBDataSet.Create(Nil);
  dsReporteFotografico := TfrxDBDataSet.Create(Nil);
  dsBitacoradePersonal := TfrxDBDataSet.Create(Nil);
  dsBitacoradeMateriales := TfrxDBDataSet.Create(Nil);
  dsCheques := TfrxDBDataSet.Create(Nil);

  dsReporteDiario.DataSet := QryReporteDiario;
  dsConfiguracion.DataSet := QryConfiguracion;
  dsReporteFotografico.DataSet := QryReporteFotografico;
  dsBitacoradePersonal.DataSet := QryBitacoradePersonal;
  dsBitacoradeMateriales.DataSet := QryBitacoradeMateriales;
  dsCheques.DataSet := QryCheques;

  dsReporteDiario.UserName := 'dsReporteDiario';
  dsConfiguracion.UserName := 'dsConfiguracion';
  dsReporteFotografico.UserName := 'dsReporteFotografico';
  dsBitacoradePersonal.UserName := 'dsBitacoradePersonal';
  dsBitacoradeMateriales.UserName := 'dsBitacoradeMateriales';
  dsCheques.UserName := 'dsCheques';

  rDiario.DataSets.Clear;
  rDiario.DataSets.Add(dsReporteDiario);
  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsReporteFotografico);
  rDiario.DataSets.Add(dsBitacoradePersonal);
  rDiario.DataSets.Add(dsBitacoradeMateriales);
  rDiario.DataSets.Add(dsCheques);

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select o.iEjercicio, o.sNumeroOrden, o.sDescripcionCorta, o.sOficioAutorizacion, o.mDescripcion, ' +
                           'o.sIdArea, p.sRazonSocial, co.sNombreComunidad, o.sTipoOrden, o.dFechaInicio, o.dFechaFinal, o.dMontoAsignado, ' +
                           'c.sNombreCorto, c.sRFC, c.sDireccion1, c.sDireccion2, c.sDireccion3, c.sSlogan, c.bImagen, c.sTelefono, ' +
                           'c.sEmail, c.sWeb From configuracion c, ordenesdetrabajo o INNER JOIN comunidades co ON (o.sIdComunidad = co.sIdComunidad) ' +
                           'inner join proveedores p on (o.sIdProveedor = p.sIdProveedor) Where o.sNumeroOrden = :Orden') ;
  QryConfiguracion.Params.ParamByName('Orden').DataType := ftString;
  QryConfiguracion.Params.ParamByName('Orden').Value := sParamOrden;
  QryConfiguracion.Open;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  QryReporteDiario.SQL.Add('Select * From reportediario Where sNumeroOrden = :Orden') ;
  QryReporteDiario.Params.ParamByName('orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteDiario.Open;

  QryReporteFotografico.Active := False;
  QryReporteFotografico.SQL.Clear;
  QryReporteFotografico.SQL.Add('Select * from  reportefotografico Where sNumeroOrden = :Orden Order By dIdFecha') ;
  QryReporteFotografico.Params.ParamByName('orden').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteFotografico.Open;

  QryBitacoradePersonal.Active := False;
  QryBitacoradePersonal.SQL.Clear;
  QryBitacoradePersonal.SQL.Add('Select bp.*, rd.sPeriododePago, rd.iNumeroLista, rd.iSemana, rd.mConcepto From bitacoradepersonal bp ' +
                                'INNER JOIN listaderaya rd on (bp.dIdFecha = rd.dIdFecha and bp.sNumeroOrden = rd.sNumeroOrden) ' +
                                'Where bp.sNumeroOrden = :Orden Order by bp.dIdFecha, bp.sCategoria, bp.sNombreCompleto') ;
  QryBitacoradePersonal.Params.ParamByName('orden').DataType := ftString;
  QryBitacoradePersonal.Params.ParamByName('orden').Value := sParamOrden;
  QryBitacoradePersonal.Open;

  QryBitacoradeMateriales.Active := False;
  QryBitacoradeMateriales.SQL.Clear;
  QryBitacoradeMateriales.SQL.Add('Select bm.*, rd.sPeriododePago, rd.iNumeroLista, rd.iSemana, rd.mConcepto From bitacorademateriales bm ' +
                                  'INNER JOIN listaderaya rd on (bm.dIdFecha = rd.dIdFecha and bm.sNumeroOrden = rd.sNumeroOrden) ' +
                                  'Where bm.sNumeroOrden = :Orden Order By bm.dIdFecha, bm.iIdMaterial') ;
  QryBitacoradeMateriales.Params.ParamByName('orden').DataType := ftString;
  QryBitacoradeMateriales.Params.ParamByName('orden').Value := sParamOrden;
  QryBitacoradeMateriales.Open ;

  QryCheques.Active := False;
  QryCheques.SQL.Clear;
  QryCheques.SQL.Add('Select * From contesoreriaegresos Where sNumeroOrden = :Orden Order By dIdFecha, iIdFolio') ;
  QryCheques.Params.ParamByName('orden').DataType := ftString;
  QryCheques.Params.ParamByName('orden').Value := sParamOrden;
  QryCheques.Open ;

  rDiario.LoadFromFile(global_files + 'frCostoOperativo.fr3');

//  rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator] ;

  rDiario.ShowReport;

  rDiario.Destroy ;

  QryReporteDiario.Destroy ;

  QryReporteFotografico.Destroy ;

  QryBitacoradePersonal.Destroy ;

  QryBitacoradeMateriales.Destroy ;

  QryConfiguracion.Destroy ;

  QryCheques.Destroy ;

  dsReporteDiario.Destroy ;
  dsConfiguracion.Destroy ;
  dsReporteFotografico.Destroy ;
  dsBitacoradePersonal.Destroy ;
  dsBitacoradeMateriales.Destroy ;
  dsCheques.Destroy ;
end;



function xNumerosToLletres(Numero: currency): string;
Var
    iEntero  : Longint ;
    iDecimal : Longint ;

    iValorNumerico, tNumerico: LongInt;
    Resultado: Real;
begin
    iEntero := trunc(Numero) ;
    iDecimal := Trunc(Frac(Numero)*100)  ;

    iValorNumerico := Trunc(Numero);
    Resultado := roundto(Numero - iValorNumerico, -2);
    Resultado := Resultado * 100;
    iValorNumerico := Trunc(Resultado);
    result :=  xIntToLletres(iEntero) + ' PESOS ' ;
    if iValorNumerico > 0 then
        result := result + IntToStr(iValorNumerico) + '/100 M.N. '
    Else
        result := result + '00/100 M.N. ' ;
end;




//para tesoreria



procedure rptEgresosxTipoMovimiento(ParamFechaInicio, ParamFechaFinal : tDate) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    connection.configuracion.refresh ;
    sTitleFecha := 'Impresion de Egresos del ' + DateToStr(ParamFechaInicio) + ' al ' + DateToStr(ParamFechaFinal) + '.'  ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('Select te.*, tp.*, ce.mDescripcion as sDescripionArticulo from con_tesoreriaegresos te ' +
                     'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFecha and te.iIdFolio = tp.iIdFolio) ' +
                     'inner join con_catalogodeegresos ce on (tp.sIdEgreso = ce.sIdEgreso) ' +
                     'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF Order By tp.sIdEgreso, tp.sIdProveedor, te.dIdFecha, te.iIdFolio') ;
    zTmpQuery.Params.ParamByName('FechaI').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaI').Value := ParamFechaInicio ;
    zTmpQuery.Params.ParamByName('FechaF').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaF').Value := ParamFechaFinal ;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);

    rptReporte.LoadFromFile(global_files+ 'frEgresosxTipo.fr3') ;
    rptReporte.ScriptText.Clear  ;
    rptReporte.ScriptText.Add('Var') ;
    rptReporte.ScriptText.Add('sTitleFecha : String ;') ;
    rptReporte.ScriptText.Add('Begin') ;
    rptReporte.ScriptText.Add('   sTitleFecha :=  ' + chr(39) + sTitleFecha + chr(39)) ;
    rptReporte.ScriptText.Add('End.') ;

    rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;



procedure rptEgresosxProveedor(ParamFechaInicio, ParamFechaFinal : tDate) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    connection.configuracion.refresh ;
    sTitleFecha := 'Impresion de Ingresos del ' + DateToStr(ParamFechaInicio) + ' al ' + DateToStr(ParamFechaFinal) + '.'  ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('Select te.*, tp.*, ce.mDescripcion as sDescripionArticulo from con_tesoreriaegresos te ' +
                     'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFecha and te.iIdFolio = tp.iIdFolio) ' +
                     'inner join con_catalogodeegresos ce on (tp.sIdEgreso = ce.sIdEgreso) ' +
                     'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF Order By te.sRazonSocial, te.sIdNumeroCuenta, te.dIdFecha, te.iIdFolio') ;
    zTmpQuery.Params.ParamByName('FechaI').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaI').Value := ParamFechaInicio ;
    zTmpQuery.Params.ParamByName('FechaF').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaF').Value := ParamFechaFinal ;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);

    rptReporte.LoadFromFile(global_files+ 'frEgresosxProveedor.fr3') ;
    rptReporte.ScriptText.Clear  ;
    rptReporte.ScriptText.Add('Var') ;
    rptReporte.ScriptText.Add('sTitleFecha : String ;') ;
    rptReporte.ScriptText.Add('Begin') ;
    rptReporte.ScriptText.Add('   sTitleFecha :=  ' + chr(39) + sTitleFecha + chr(39)) ;
    rptReporte.ScriptText.Add('End.') ;

    rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;



procedure rptEgresos(ParamFechaInicio, ParamFechaFinal : tDate) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    connection.configuracion.refresh ;
    sTitleFecha := 'Impresion de Ingresos del ' + DateToStr(ParamFechaInicio) + ' al ' + DateToStr(ParamFechaFinal) + '.'  ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('Select te.*, tp.*, ce.mDescripcion as sDescripionArticulo from con_tesoreriaegresos te ' +
                     'inner join con_tesoreriapegresos tp on (te.dIdFecha = tp.dIdFecha and te.iIdFolio = tp.iIdFolio) ' +
                     'inner join con_catalogodeegresos ce on (tp.sIdEgreso = ce.sIdEgreso) ' +
                     'where te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF Order By te.sIdNumeroCuenta, te.dIdFecha, te.iIdFolio') ;
    zTmpQuery.Params.ParamByName('FechaI').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaI').Value := ParamFechaInicio ;
    zTmpQuery.Params.ParamByName('FechaF').DataType := ftDate ;
    zTmpQuery.Params.ParamByName('FechaF').Value := ParamFechaFinal ;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);

    rptReporte.LoadFromFile(global_files+ 'frEgresos.fr3') ;
    rptReporte.ScriptText.Clear  ;
    rptReporte.ScriptText.Add('Var') ;
    rptReporte.ScriptText.Add('sTitleFecha : String ;') ;
    rptReporte.ScriptText.Add('Begin') ;
    rptReporte.ScriptText.Add('   sTitleFecha :=  ' + chr(39) + sTitleFecha + chr(39)) ;
    rptReporte.ScriptText.Add('End.') ;

    rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;


procedure procReporteGasto ;
var
  rDiario: TfrxReport;
  zGrafica: TZReadOnlyQuery;
  frGrafica: TfrxDBDataSet;
begin
  // Creo los abjetos del reporte diario ...
  rDiario := TfrxReport.Create(Nil);
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := False ;
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;

  zGrafica := TZReadOnlyQuery.Create(Nil);
  zGrafica.Connection := Connection.ZConnection ;

  frGrafica := TfrxDBDataSet.Create(Nil);

  frGrafica.DataSet := zGrafica ;

  frGrafica.UserName := 'frGrafica' ;

  rDiario.DataSets.Clear;
  rDiario.DataSets.Add(frGrafica);

    // svChost.exe
  zGrafica.Active := False;
  zGrafica.SQL.Clear;
  zGrafica.SQL.Add(sParamQuery) ;
  if sParamTipo = 'Simple' then
  begin
      zGrafica.Params.ParamByName('fechaI').DataType := ftDate ;
      zGrafica.Params.ParamByName('fechaI').Value    := dParamFechaI ;
      zGrafica.Params.ParamByName('fechaF').DataType := ftDate ;
      zGrafica.Params.ParamByName('fechaF').Value    := dParamFechaF ;
      rDiario.LoadFromFile(global_files + 'frDetalle1.fr3');
  end
  else
      if sParamTipo = 'Periodo1' then
      begin
          zGrafica.Params.ParamByName('fechaI').DataType := ftDate ;
          zGrafica.Params.ParamByName('fechaI').Value    := dParamFechaI ;
          zGrafica.Params.ParamByName('fechaF').DataType := ftDate ;
          zGrafica.Params.ParamByName('fechaF').Value    := dParamFechaF ;
          rDiario.LoadFromFile(global_files + 'frDetalle2.fr3');
       end
       else
          if sParamTipo = 'Periodo2' then
          begin
              zGrafica.Params.ParamByName('fechaI').DataType := ftDate ;
              zGrafica.Params.ParamByName('fechaI').Value    := dParamFechaI ;
              zGrafica.Params.ParamByName('fechaF').DataType := ftDate ;
              zGrafica.Params.ParamByName('fechaF').Value    := dParamFechaF ;
//              zGrafica.Params.ParamByName('Egreso').DataType := ftString ;
//              zGrafica.Params.ParamByName('Egreso').Value    := sParamEgreso ;
              rDiario.LoadFromFile(global_files + 'frDetalle2.fr3');
          end;
          if sParamTipo = 'Periodo4' then
          begin
            zGrafica.Params.ParamByName('fechaI').DataType := ftDate ;
            zGrafica.Params.ParamByName('fechaI').Value    := dParamFechaI ;
            zGrafica.Params.ParamByName('fechaF').DataType := ftDate ;
            zGrafica.Params.ParamByName('fechaF').Value    := dParamFechaF ;
            rDiario.LoadFromFile(global_files + 'frDetalle4.fr3');
          end ;
  zGrafica.Open;

  //rDiario.LoadFromFile(global_files + 'frDetalle1.fr3');

//  rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator] ;

  rDiario.ShowReport;

  rDiario.Destroy ;

  zGrafica.Destroy ;
  frGrafica.Destroy ;
end;



procedure rptEgresoxFolio (ParamFecha : tDate; ParamFolio : Integer) ;
var
    zTmpQuery  : TZReadOnlyQuery;
    rptReporte : TfrxReport;
    frPrinter  : tfrxDBDataSet ;
begin
    Connection.configuracion.refresh ;
    zTmpQuery := tZReadOnlyQuery.Create(Nil) ;
    zTmpQuery.Connection := connection.ZConnection ;

    frPrinter := tfrxDBDataSet.Create(Nil) ;
    frPrinter.UserName := 'frTmpQuery' ;
    frPrinter.Name := 'frTmpQuery' ;

    zTmpQuery.Active := False ;
    zTmpQuery.SQL.Clear ;
    zTmpQuery.SQL.Add('select te.dIdFecha, te.iIdFolio, te.sIdNumeroCuenta, cb.sNombreCuenta, te.sReferencia, ' +
                      'te.sIdProveedor, te.sRazonSocial, te.sRFC, te.sDomicilio, te.sCiudad, te.sEstado, te.sCP, te.dImporteTotal, ' +
                      'tp.sIdEgreso, ce.mDescripcion, tp.sTipoEgreso, tp.sIdProveedor as sIdProveedor2, ' +
                      'tp.sRazonSocial as sRazonSocial2, tp.sIdFactura, tp.mDescripcion, tp.dImporte from con_tesoreriaegresos te ' +
                      'inner join con_tesoreriapegresos tp on (te.iIdFolio = tp.iIdFolio) ' +
                      'inner join con_catalogodeegresos ce on (ce.sIdEgreso = tp.sIdEgreso) ' +
                      'inner join con_cuentasbancarias cb on (te.sIdNumeroCuenta = cb.sIdNumeroCuenta) ' +
                      'where te.iIdFolio = :Folio and te.sTipoMovimiento ="GASTOS" Order By tp.sTipoEgreso, tp.sIdEgreso') ;

    zTmpQuery.Params.ParamByName('Folio').DataType := ftInteger ;
    zTmpQuery.Params.ParamByName('Folio').Value := ParamFolio ;
    zTmpQuery.Open ;

    rptReporte := TfrxReport.Create(Nil) ;

    frPrinter.DataSet := zTmpQuery ;
    rptReporte.PreviewOptions.MDIChild := False;
    rptReporte.PreviewOptions.Modal := True;
    rptReporte.PreviewOptions.Maximized := True ;
    rptReporte.PreviewOptions.ShowCaptions := False;
    rptReporte.Previewoptions.ZoomMode := zmPageWidth;
    rptReporte.DataSets.Clear;
    rptReporte.DataSets.Add(frPrinter);
    if zTmpQuery.RecordCount > 0 then
         rptReporte.LoadFromFile(global_files+ 'frComprobacionCheque.fr3') ;

    rptReporte.ShowReport() ;

    rptReporte.Destroy ;
    frPrinter.Destroy ;
    zTmpQuery.Destroy ;
end;





function Encripta(Cadena: string): string;
var
  Cuenta, CarByte, Calculo, ValCaracter, nBytes: Integer;
  Resul, ResCom: string;
begin
  ResCom := '';
  for Cuenta := 1 to Length(Cadena) do
  begin
    CarByte := Ord(Cadena[Cuenta]);

    // Encriptar el dato
    Calculo := (CarByte * Trunc((Cuenta + 2) / 2));
    nBytes := 0;
    Resul := '';
    while Calculo > 255 do
    begin
      ValCaracter := Random(3) + 252;
      Calculo := Calculo - ValCaracter;

      Resul := Resul + Chr(ValCaracter);
      Inc(nBytes);
    end;
    if Calculo > 0 then
    begin
      Resul := Resul + Chr(Calculo);
      Inc(nBytes);
    end;

    ResCom := ResCom + Chr(nBytes) + Resul;
  end;

  Encripta := ResCom;
end;


function DesEncripta(Cadena: string): string;
var
  Sec, Cuenta, nBytes, Calculo, H, CarByte: Integer;
  Resul: string;
begin
  Cuenta := 0;
  Sec := 0;
  Resul := '';
  while Cuenta < Length(Cadena) do
  begin
    Inc(Cuenta);
    Inc(Sec);

    // Determinar el número de bytes que ocupa el caracter
    nBytes := Ord(Cadena[Cuenta]);

    // Totalizar los bytes
    Calculo := 0;
    for h := 1 to nBytes do
    begin
      Calculo := Calculo + Ord(Cadena[Cuenta + H]);
    end;

    CarByte := Trunc((Calculo) / Trunc((Sec + 2) / 2));
    Cuenta := Cuenta + (nBytes);
    Resul := Resul + Chr(CarByte);
    //showmessage(Chr(CarByte));
  end;
  DesEncripta := Resul;
end;



procedure ProcGeneraWindows(tzDataSourceTemp: tDataSource; sParamComentarios, sParamTable: string; lParamVisualiza: Boolean);
var
  myForm: TForm;
  iValorMax,
    Registro: Integer;
  EvHandler: TEventHandlers;
  iCountRegistros: Integer;
  zFields: TZReadOnlyQuery;
  sTexto: string;
  sCampo: string;
  iMultiplo,
    iPosicionFinal: Integer;
  sBuscar: string;
begin
    // Identificamos el tamano maximo de los registros ...
  iValorMax := 0;
  global_opcion_window := 'No';
  iCountRegistros := 0;

  zFields := TZReadOnlyQuery.Create(nil);
  zFields.Connection := Connection.ZConnection;

  for registro := 1 to tzDataSourceTemp.DataSet.fieldcount do
  begin
    if lParamVisualiza then
      if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftMemo then
      begin
        if 300 > iValorMax then
          iValorMax := 700;
        iCountRegistros := iCountRegistros + 7
      end
      else
        iCountRegistros := iCountRegistros + 1
    else
      if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
        if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftMemo then
        begin
          if 300 > iValorMax then
            iValorMax := 700;
          iCountRegistros := iCountRegistros + 7
        end
        else
          iCountRegistros := iCountRegistros + 1
  end;

  myForm := TForm.Create(nil);
  try
    myForm.Position := poDesktopCenter;
    myForm.Caption := sParamComentarios;
    MyForm.BorderIcons := [];
    MyForm.Width := iValorMax + 120;
    MyForm.Height := iCountRegistros * 22 + 80;
    MyForm.BorderStyle := bsSingle;
    MyForm.Color := $00FEC6BA;

    iCountRegistros := 0;
    for registro := 1 to tzDataSourceTemp.DataSet.fieldcount do
    begin
      if lParamVisualiza then
        with TLabel.Create(nil) do
        begin
          Left := 10;
          Top := iCountRegistros * 22 + 5;
          Width := 100;
          Height := 22;
          Parent := MyForm;
          Caption := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayLabel;
          Anchors := [akLeft, akTop];
        end
      else
        if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
          with TLabel.Create(nil) do
          begin
            Left := 10;
            Top := iCountRegistros * 22 + 5;
            Width := 100;
            Height := 22;
            Parent := MyForm;
            Caption := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayLabel;
            Anchors := [akLeft, akTop];
          end;

      if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftDate then
        iMultiplo := 9
      else
        if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftString then
          iMultiplo := 9
        else
          if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftFloat then
            iMultiplo := 9
          else
            iMultiplo := 9;

      zFields.Active := False;
      zFields.SQL.Clear;
      zFields.SQL.Add('show fields from ' + sParamTable + ' where Field = :Field');
      zFields.Params.ParamByName('Field').DataType := ftString;
      zFields.Params.ParamByName('Field').Value := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
      zFields.Open;
      if midstr(zFields.FieldValues['type'], 1, 4) = 'enum' then
      begin
        if lParamVisualiza then
          with TDBComboBox.Create(nil) do
          begin
            Left := 110;
            Top := iCountRegistros * 22 + 5;
            Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * 9;
            Height := 22 * 7;
            Parent := MyForm;
            DataSource := tzDataSourceTemp;
            DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
            Anchors := [akLeft, akTop];
            Color := $00E6FEFF;
            Font.Name := 'Arial';
            Font.Style := [];
            Style := csDropDownList;
            sTexto := midstr(zFields.FieldValues['type'], 7, Length(zFields.FieldByName('type').AsString) - 7) + ',';
            sBuscar := midstr(sTexto, posex(',', sTexto, 1) - 1, 1) + ',';
            while (sTexto <> ')') and (sTexto <> '') do
            begin
              iPosicionFinal := posex(sBuscar, sTexto, 1);
              sCampo := midstr(sTexto, 1, iPosicionFinal - 1);
              Items.Add(sCampo);
              if posex(sBuscar, sTexto, 1) > 1 then
                sTexto := midstr(sTexto, posex(sBuscar, sTexto, 1) + 3, Length(sTexto))
              else
                sTexto := ''
            end;
            iCountRegistros := iCountRegistros + 1;
            if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
              Enabled := False
            else
              Enabled := True;
          end
        else
          if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
            with TDBComboBox.Create(nil) do
            begin
              Left := 110;
              Top := iCountRegistros * 22 + 5;
              Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * 9;
              Height := 22 * 7;
              Parent := MyForm;
              DataSource := tzDataSourceTemp;
              DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
              Anchors := [akLeft, akTop];
              Color := $00E6FEFF;
              Font.Name := 'Arial';
              Font.Style := [];
              Style := csDropDownList;
              sTexto := midstr(zFields.FieldValues['type'], 7, Length(zFields.FieldByName('type').AsString) - 7) + ',';
              sBuscar := midstr(sTexto, posex(',', sTexto, 1) - 1, 1) + ',';
              while (sTexto <> ')') and (sTexto <> '') do
              begin
                iPosicionFinal := posex(sBuscar, sTexto, 1);
                sCampo := midstr(sTexto, 1, iPosicionFinal - 1);
                Items.Add(sCampo);
                if posex(sBuscar, sTexto, 1) > 1 then
                  sTexto := midstr(sTexto, posex(sBuscar, sTexto, 1) + 3, Length(sTexto))
                else
                  sTexto := ''
              end;
              iCountRegistros := iCountRegistros + 1;
              if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                Enabled := False
              else
                Enabled := True;
            end
      end
      else
        if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftMemo then
        begin
          if lParamVisualiza then
            with TDBMemo.Create(nil) do
            begin
              Left := 110;
              Top := iCountRegistros * 22 + 5;
              Width := 700;
              Height := 22 * 7;
              Parent := MyForm;
              DataSource := tzDataSourceTemp;
              DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
              Anchors := [akLeft, akTop];
              Color := $00E6FEFF;
              Font.Name := 'Arial';
              Font.Style := [];
              ScrollBars := ssVertical;
              iCountRegistros := iCountRegistros + 7;
              if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                Enabled := False
              else
                Enabled := True
            end
          else
            if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
              with TDBMemo.Create(nil) do
              begin
                Left := 110;
                Top := iCountRegistros * 22 + 5;
                Width := 700;
                Height := 22 * 7;
                Parent := MyForm;
                DataSource := tzDataSourceTemp;
                DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
                Anchors := [akLeft, akTop];
                Color := $00E6FEFF;
                Font.Name := 'Arial';
                Font.Style := [];
                ScrollBars := ssVertical;
                iCountRegistros := iCountRegistros + 7;

                if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                  Enabled := False
                else
                  Enabled := True
              end
        end
        else
          if tzDataSourceTemp.DataSet.Fields[registro - 1].DataType = ftDate then
          begin
            if lParamVisualiza then
              with TDBDateEdit.Create(nil) do
              begin
                Left := 110;
                Top := iCountRegistros * 22 + 5;
                Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * iMultiplo;
                Height := 22;
                Parent := MyForm;
                DataSource := tzDataSourceTemp;
                DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
                Anchors := [akLeft, akTop];
                Color := $00E6FEFF;
                Font.Name := 'Arial';
                Font.Style := [];
                iCountRegistros := iCountRegistros + 1;
                if tzDataSourceTemp.DataSet.State = dsInsert then
                  tzDataSourceTemp.DataSet.Fields[registro - 1].Value := Date;

                if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                  Enabled := False
                else
                  Enabled := True
              end
            else
              if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                with TDBDateEdit.Create(nil) do
                begin
                  Left := 110;
                  Top := iCountRegistros * 22 + 5;
                  Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * iMultiplo;
                  Height := 22;
                  Parent := MyForm;
                  DataSource := tzDataSourceTemp;
                  DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
                  Anchors := [akLeft, akTop];
                  Color := $00E6FEFF;
                  Font.Name := 'Arial';
                  Font.Style := [];
                  iCountRegistros := iCountRegistros + 1;
                  if tzDataSourceTemp.DataSet.State = dsInsert then
                    tzDataSourceTemp.DataSet.Fields[registro - 1].Value := Date;

                  if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                    Enabled := False
                  else
                    Enabled := True
                end
          end
          else
          begin
            if lParamVisualiza then
              with TDBEdit.Create(nil) do
              begin
                Left := 110;
                Top := iCountRegistros * 22 + 5;
                if (tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * iMultiplo) > 700 then
                  Width := 700
                else
                  Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * iMultiplo;

                Height := 22;
                Parent := MyForm;
                DataSource := tzDataSourceTemp;
                DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
                Anchors := [akLeft, akTop];
                Color := $00E6FEFF;
                Font.Name := 'Arial';
                Font.Style := [];
                iCountRegistros := iCountRegistros + 1;

                if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                  Enabled := False
                else
                  Enabled := True
              end
            else
              if not tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                with TDBEdit.Create(nil) do
                begin
                  Left := 110;
                  Top := iCountRegistros * 22 + 5;
                  if (tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * iMultiplo) > 700 then
                    Width := 700
                  else
                    Width := tzDataSourceTemp.DataSet.Fields[registro - 1].DisplayWidth * iMultiplo;
                  Height := 22;
                  Parent := MyForm;
                  DataSource := tzDataSourceTemp;
                  DataField := tzDataSourceTemp.DataSet.Fields[registro - 1].FieldName;
                  Anchors := [akLeft, akTop];
                  Color := $00E6FEFF;
                  Font.Name := 'Arial';
                  Font.Style := [];
                  iCountRegistros := iCountRegistros + 1;

                  if tzDataSourceTemp.DataSet.Fields[registro - 1].ReadOnly then
                    Enabled := False
                  else
                    Enabled := True
                end
          end;
    end;

    with TButton.Create(nil) do
    begin
      Left := 5;
      Top := MyForm.Height - 70;
      Width := 120;
      Height := 35;
      ModalResult := mrOk;
      Default := False;
      Parent := MyForm;
      OnClick := EvHandler.ButtonClick;
      Caption := '&Grabar'
    end;
    with TButton.Create(nil) do
    begin
      Left := 125;
      Top := MyForm.Height - 70;
      Width := 120;
      Height := 35;
      ModalResult := mrCancel;
      Cancel := True;
      Parent := MyForm;
      Caption := '&Cancelar'
    end;
    myForm.ShowModal;
  finally

    myForm.Free;
  end;
end;






procedure ProcCierraDiaNCammpo_Bitacora(sParamContrato, sParamOrden, sParamConvenio: string; dParamFecha: tDate; tOrigen: TComponent);
var
  dAvanceAnterior: Double;
  sPaquete: string;
  sBkPaquete: string;
  lEncontrado: Boolean;
  sListPaquetes: string;
begin
    // Inicia carga de bitacora de actividadea y bitacoradesubactividades a tabla nCampo_Bitacora ....
    // de esta nueva tabla saldran los reportes diarios y las notas de campo....


    //Borro todo lo que exista en la nota de campo, del dia, de la orden ...
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('delete from ncampo_bitacora where sContrato = :Contrato And dIdFecha =:fecha And sNumeroOrden = :Orden');
  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
  connection.zCommand.Params.ParamByName('orden').DataType := ftString;
  connection.zCommand.Params.ParamByName('orden').Value := sParamOrden;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  try
    connection.zCommand.ExecSQL;
  except
  //      ShowMessage( 'Al parecer ya se habia registrado esa orden en el movimiento seleccionado' );
  end;


  QryBuscar := tZReadOnlyQuery.Create(tOrigen);
  QryBuscar.Connection := connection.zconnection;
  QryBuscarAux := tZReadOnlyQuery.Create(tOrigen);
  QryBuscarAux.Connection := connection.zconnection;

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select b.iIdDiario, b.sWbs, b.sNumeroActividad, b.sIdTipoMovimiento, b.mDescripcion, b.sHoraInicio, b.sHoraFinal, b.dCantidad, ' +
    'b.dAvance, b.sOrigen, b.sTrazabilidad  From bitacoradeactividades b ' +
    'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
    'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
    'Where (b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha) ' +
    'Order By a.iItemOrden ');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
  QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryBuscar.Params.ParamByName('Orden').DataType := ftString;
  QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
  QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
  QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
  QryBuscar.Open;

  if QryBuscar.RecordCount > 0 then
  begin
    QryBuscar.First;
    while not QryBuscar.Eof do
    begin
            //Primero Inserto la Partida Reportada
      QryBuscarAux.Active := False;
      QryBuscarAux.SQL.Clear;
      QryBuscarAux.SQL.Add('Select sContrato, sNumeroOrden, iNivel, iItemOrden, sWbsAnterior, sWbs, sWbsAnterior, sNumeroActividad, ' +
        'sTipoActividad, sMedidaComercial, sMedida, dCantidad, mDescripcion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, lGerencial From actividadesxorden ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Actividad And sTipoActividad = "Actividad"');
      QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sWbs'];
      QryBuscarAux.Open;
      if QryBuscarAux.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('insert into ncampo_bitacora set ' +
          'sContrato      =:Contrato, ' +
          'dIdFecha       =:Fecha, ' +
          'iIdDiario      =:Diario, ' +
          'sNumeroOrden   =:Orden, ' +
          'iNivel         =:Nivel, ' +
          'iItemOrden     =:Item, ' +
          'sWbsAnterior   =:WbsAnterior, ' +
          'sWbs           =:Wbs, ' +
          'sNumeroActividad =:Actividad, ' +
          'sTipoActividad   =:Tipo, ' +
          'sMedidaComercial =:MedidaComercial, ' +
          'sMedida          =:Medida, ' +
          'dCantidadInstalar     =:Cantidad, ' +
          'mDescripcionActividad =:Descripcion, ' +
          'dCostoMN  =:CostoMN, ' +
          'dCostoDLL =:CostoDLL, ' +
          'dVentaMN  =:VentaMN, ' +
          'dVentaDLL =:VentaDLL, ' +
          'dPonderado = :Ponderado, ' +
          'lGerencial = :Gerencial, ' +
          'sIdTipoMovimiento      = :TipoMovto, ' +
          'sHoraInicio  = :Inicio, ' +
          'sHoraFinal   = :Fin, ' +
          'sFactor   = "", ' +
          'dCantidad = :CantidadInstalada, ' +
          'dAvance = :Avance, ' +
          'mDescripcion = :DescripcionMovto, ' +
          'dCantidadAnterior = 0, ' +
          'dAvanceAnterior = 0, ' +
          'dCantidadActual = 0, ' +
          'dAvanceActual = 0, ' +
          'sOrigen = :Origen, ' +
          'sTrazabilidad = :Trazabilidad');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := QryBuscarAux.FieldValues['sContrato'];
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := QryBuscarAux.FieldValues['sNumeroOrden'];
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Diario').Value := QryBuscar.FieldValues['iIdDiario'];
        connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('Nivel').Value := QryBuscarAux.FieldValues['iNivel'];
        connection.zCommand.Params.ParamByName('Item').DataType := ftString;
        connection.zCommand.Params.ParamByName('Item').Value := QryBuscarAux.FieldValues['iItemOrden'];
        connection.zCommand.Params.ParamByName('WbsAnterior').DataType := ftString;
        connection.zCommand.Params.ParamByName('WbsAnterior').Value := QryBuscarAux.FieldValues['sWbsAnterior'];
        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('Wbs').Value := QryBuscarAux.FieldValues['sWbs'];
        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
        connection.zCommand.Params.ParamByName('Actividad').Value := QryBuscarAux.FieldValues['sNumeroActividad'];
        connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
        connection.zCommand.Params.ParamByName('Tipo').Value := QryBuscarAux.FieldValues['sTipoActividad'];
        connection.zCommand.Params.ParamByName('MedidaComercial').DataType := ftString;
        connection.zCommand.Params.ParamByName('MedidaComercial').Value := QryBuscarAux.FieldValues['sMedidaComercial'];
        connection.zCommand.Params.ParamByName('Medida').DataType := ftString;
        connection.zCommand.Params.ParamByName('Medida').Value := QryBuscarAux.FieldValues['sMedida'];
        connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Cantidad').Value := QryBuscarAux.FieldValues['dCantidad'];
        connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
        connection.zCommand.Params.ParamByName('Descripcion').Value := QryBuscarAux.FieldValues['mDescripcion'];

        connection.zCommand.Params.ParamByName('CostoMN').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CostoMN').Value := QryBuscarAux.FieldValues['dCostoMN'];
        connection.zCommand.Params.ParamByName('CostoDLL').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CostoDLL').Value := QryBuscarAux.FieldValues['dCostoDLL'];
        connection.zCommand.Params.ParamByName('VentaMN').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('VentaMN').Value := QryBuscarAux.FieldValues['dVentaMN'];
        connection.zCommand.Params.ParamByName('VentaDLL').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('VentaDLL').Value := QryBuscarAux.FieldValues['dVentaDLL'];
        connection.zCommand.Params.ParamByName('Ponderado').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Ponderado').Value := QryBuscarAux.FieldValues['dPonderado'];
        connection.zCommand.Params.ParamByName('Gerencial').DataType := ftString;
        connection.zCommand.Params.ParamByName('Gerencial').Value := 'Si';

        connection.zCommand.Params.ParamByName('Inicio').DataType := ftString;
        connection.zCommand.Params.ParamByName('Inicio').Value := QryBuscar.FieldValues['sHoraInicio'];
        connection.zCommand.Params.ParamByName('Fin').DataType := ftString;
        connection.zCommand.Params.ParamByName('Fin').Value := QryBuscar.FieldValues['sHoraFinal'];
        connection.zCommand.Params.ParamByName('TipoMovto').DataType := ftString;
        connection.zCommand.Params.ParamByName('TipoMovto').Value := QryBuscar.FieldValues['sIdTipoMovimiento'];
        connection.zCommand.Params.ParamByName('DescripcionMovto').DataType := ftMemo;
        connection.zCommand.Params.ParamByName('DescripcionMovto').Value := QryBuscar.FieldValues['mDescripcion'];
        connection.zCommand.Params.ParamByName('CantidadInstalada').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadInstalada').Value := QryBuscar.FieldValues['dCantidad'];
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').Value := 0;

        connection.zCommand.Params.ParamByName('Origen').DataType := ftString;
        connection.zCommand.Params.ParamByName('Origen').Value := QryBuscar.FieldValues['sOrigen'];
        connection.zCommand.Params.ParamByName('Trazabilidad').DataType := ftString;
        connection.zCommand.Params.ParamByName('Trazabilidad').Value := QryBuscar.FieldValues['sTrazabilidad'];
        try
          connection.zCommand.ExecSQL;
        except

        end;
      end;


            // Ahora todas las partidas que descendan
      QryBuscarAux.Active := False;
      QryBuscarAux.SQL.Clear;
      QryBuscarAux.SQL.Add('Select sWbsAnterior From actividadesxorden ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Actividad And sTipoActividad = "Actividad"');
      QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sWbs'];
      QryBuscarAux.Open;
      sPaquete := '';
      if sPaquete <> QryBuscarAux.FieldValues['sWbsAnterior'] then
      begin
        sPaquete := QryBuscarAux.FieldValues['sWbsAnterior'];
        sBkPaquete := sPaquete;
        lEncontrado := True;
        while (sBkPaquete <> '') and (lEncontrado) do
        begin
          QryBuscarAux.Active := False;
          QryBuscarAux.SQL.Clear;
          QryBuscarAux.SQL.Add('Select sContrato, sNumeroOrden, iNivel, iItemOrden, sWbsAnterior, sWbs, sWbsAnterior, sNumeroActividad, ' +
            'sTipoActividad, sMedidaComercial, sMedida, dCantidad, mDescripcion, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, lGerencial, dPonderado From actividadesxorden ' +
            'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Actividad And sTipoActividad <> "Actividad"');
          QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
          QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
          QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
          QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Actividad').Value := sBkPaquete;
          QryBuscarAux.Open;
          if QryBuscarAux.RecordCount > 0 then
          begin
            sListPaquetes := sListPaquetes + QryBuscarAux.FieldValues['sWbs'] + '|';
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('insert into ncampo_bitacora set ' +
              'sContrato      =:Contrato, ' +
              'dIdFecha       =:Fecha, ' +
              'iIdDiario      =:Diario, ' +
              'sNumeroOrden   =:Orden, ' +
              'iNivel         = :Nivel, ' +
              'iItemOrden     = :Item,' +
              'sWbsAnterior   =:WbsAnterior, ' +
              'sWbs           =:Wbs, ' +
              'sNumeroActividad =:Actividad, ' +
              'sTipoActividad   =:Tipo, ' +
              'sMedidaComercial =:MedidaComercial, ' +
              'sMedida          =:Medida, ' +
              'dCantidadInstalar     =:Cantidad, ' +
              'mDescripcionActividad =:Descripcion, ' +
              'dCostoMN  =:CostoMN, ' +
              'dCostoDLL =:CostoDLL, ' +
              'dVentaMN  =:VentaMN, ' +
              'dVentaDLL =:VentaDLL, ' +
              'dPonderado = :Ponderado, ' +
              'lGerencial = :Gerencial, ' +
              'sIdTipoMovimiento      = "", ' +
              'sHoraInicio  = :Inicio, ' +
              'sHoraFinal   = :Fin, ' +
              'sFactor   = "", ' +
              'dCantidad = 0, ' +
              'dAvance = 0, ' +
              'mDescripcion = "", ' +
              'dCantidadAnterior = 0, ' +
              'dAvanceAnterior = 0, ' +
              'dCantidadActual = 0, ' +
              'dAvanceActual = 0, ' +
              'sOrigen = "Material Propio", ' +
              'sTrazabilidad = ""');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := QryBuscarAux.FieldValues['sContrato'];
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').Value := QryBuscarAux.FieldValues['sNumeroOrden'];
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
            connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('Diario').Value := QryBuscar.FieldValues['iIdDiario'];
            connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('Nivel').Value := QryBuscarAux.FieldValues['iNivel'];
            connection.zCommand.Params.ParamByName('Item').DataType := ftString;
            connection.zCommand.Params.ParamByName('Item').Value := QryBuscarAux.FieldValues['iItemOrden'];
            connection.zCommand.Params.ParamByName('WbsAnterior').DataType := ftString;
            connection.zCommand.Params.ParamByName('WbsAnterior').Value := QryBuscarAux.FieldValues['sWbsAnterior'];
            connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
            connection.zCommand.Params.ParamByName('Wbs').Value := QryBuscarAux.FieldValues['sWbs'];
            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
            connection.zCommand.Params.ParamByName('Actividad').Value := QryBuscarAux.FieldValues['sNumeroActividad'];
            connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
            connection.zCommand.Params.ParamByName('Tipo').Value := QryBuscarAux.FieldValues['sTipoActividad'];
            connection.zCommand.Params.ParamByName('MedidaComercial').DataType := ftString;
            connection.zCommand.Params.ParamByName('MedidaComercial').Value := QryBuscarAux.FieldValues['sMedidaComercial']; connection.zCommand.Params.ParamByName('Medida').DataType := ftString;
            connection.zCommand.Params.ParamByName('Medida').Value := QryBuscarAux.FieldValues['sMedida'];
            connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Cantidad').Value := QryBuscarAux.FieldValues['dCantidad'];
            connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
            connection.zCommand.Params.ParamByName('Descripcion').Value := QryBuscarAux.FieldValues['mDescripcion'];
            connection.zCommand.Params.ParamByName('CostoMN').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('CostoMN').Value := QryBuscarAux.FieldValues['dCostoMN'];
            connection.zCommand.Params.ParamByName('CostoDLL').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('CostoDLL').Value := QryBuscarAux.FieldValues['dCostoDLL'];
            connection.zCommand.Params.ParamByName('VentaMN').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('VentaMN').Value := QryBuscarAux.FieldValues['dVentaMN'];
            connection.zCommand.Params.ParamByName('VentaDLL').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('VentaDLL').Value := QryBuscarAux.FieldValues['dVentaDLL'];
            connection.zCommand.Params.ParamByName('Ponderado').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Ponderado').Value := QryBuscarAux.FieldValues['dPonderado'];
            connection.zCommand.Params.ParamByName('Gerencial').DataType := ftString;
            connection.zCommand.Params.ParamByName('Gerencial').Value := QryBuscarAux.FieldValues['lGerencial'];
            connection.zCommand.Params.ParamByName('Inicio').DataType := ftString;
            connection.zCommand.Params.ParamByName('Inicio').Value := '00:00';
            connection.zCommand.Params.ParamByName('Fin').DataType := ftString;
            connection.zCommand.Params.ParamByName('Fin').Value := '00:00';
            try
              connection.zCommand.ExecSQL;
            except
            end;

            if QryBuscarAux.fieldByName('sWbsAnterior').AsString = '' then
              sBkPaquete := ''
            else
              sBkPaquete := QryBuscarAux.fieldByName('sWbsAnterior').AsString;
            lEncontrado := True;
          end
          else
            lEncontrado := False;
        end;
      end;

              // Ahora todas las subactividades ....

      QryBuscarAux.Active := False;
      QryBuscarAux.SQL.Clear;
      QryBuscarAux.SQL.Add('Select b.iIdDiario, b.sWbs, b.sNumeroActividad, b.sIdTipoMovimiento, b.mDescripcion, b.sHoraInicio, b.sHoraFinal, 0 as dCantidad, ' +
        'b.dAvance, a.sContrato, a.sNumeroOrden, a.iNivel, a.iItemOrden, a.sWbsAnterior, ' +
        'a.sTipoActividad, a.sMedidaComercial, a.sMedida, a.dCantidad as dCantidadPartida, a.mDescripcion as mDescripcionPartida, a.dCostoMN, a.dCostoDLL, ' +
        'a.dVentaMN, a.dVentaDLL, a.lGerencial, a.dPonderado From bitacoradesubactividades b ' +
        'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And a.sNumeroOrden = :Orden And b.sWbs = a.sWbs And ' +
        'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "SubActividad") ' +
        'Where (b.sContrato = :Contrato And b.dIdFecha = :Fecha And iIdDiario = :Diario) ' +
        'Order By a.iItemOrden ');
      QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAux.Params.ParamByName('Diario').DataType := ftInteger;
      QryBuscarAux.Params.ParamByName('Diario').Value := QryBuscar.FieldValues['iIdDiario'];
      QryBuscarAux.Open;


      if QryBuscarAux.RecordCount > 0 then
        while not QryBuscarAux.Eof do
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('insert into ncampo_bitacora set ' +
            'sContrato      =:Contrato, ' +
            'dIdFecha       =:Fecha, ' +
            'iIdDiario      =:Diario, ' +
            'sNumeroOrden   =:Orden, ' +
            'iNivel         = :Nivel, ' +
            'iItemOrden     = :Item,' +
            'sWbsAnterior   =:WbsAnterior, ' +
            'sWbs           =:Wbs, ' +
            'sNumeroActividad =:Actividad, ' +
            'sTipoActividad   =:Tipo, ' +
            'sMedidaComercial =:MedidaComercial, ' +
            'sMedida          =:Medida, ' +
            'dCantidadInstalar     =:Cantidad, ' +
            'mDescripcionActividad =:Descripcion, ' +
            'dCostoMN  =:CostoMN, ' +
            'dCostoDLL =:CostoDLL, ' +
            'dVentaMN  =:VentaMN, ' +
            'dVentaDLL =:VentaDLL, ' +
            'dPonderado = :Ponderado, ' +
            'lGerencial = :Gerencial, ' +
            'sIdTipoMovimiento      = :TipoMovto, ' +
            'sHoraInicio  = :Inicio, ' +
            'sHoraFinal   = :Fin, ' +
            'sFactor   = "", ' +
            'dCantidad = :CantidadInstalada, ' +
            'dAvance = :Avance, ' +
            'mDescripcion = :DescripcionMovto, ' +
            'dCantidadAnterior = 0, ' +
            'dAvanceAnterior = 0, ' +
            'dCantidadActual = 0, ' +
            'dAvanceActual = 0, ' +
            'sOrigen = "Material Propio", ' +
            'sTrazabilidad = ""');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := QryBuscarAux.FieldValues['sContrato'];
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').Value := QryBuscarAux.FieldValues['sNumeroOrden'];
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
          connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Diario').Value := QryBuscarAux.FieldValues['iIdDiario'];
          connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Nivel').Value := QryBuscarAux.FieldValues['iNivel'];
          connection.zCommand.Params.ParamByName('Item').DataType := ftString;
          connection.zCommand.Params.ParamByName('Item').Value := QryBuscarAux.FieldValues['iItemOrden'];
          connection.zCommand.Params.ParamByName('WbsAnterior').DataType := ftString;
          connection.zCommand.Params.ParamByName('WbsAnterior').Value := QryBuscarAux.FieldValues['sWbsAnterior'];
          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('Wbs').Value := QryBuscarAux.FieldValues['sWbs'];
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').Value := QryBuscarAux.FieldValues['sNumeroActividad'];
          connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
          connection.zCommand.Params.ParamByName('Tipo').Value := QryBuscarAux.FieldValues['sTipoActividad'];
          connection.zCommand.Params.ParamByName('MedidaComercial').DataType := ftString;
          connection.zCommand.Params.ParamByName('MedidaComercial').Value := QryBuscarAux.FieldValues['sMedidaComercial'];
          connection.zCommand.Params.ParamByName('Medida').DataType := ftString;
          connection.zCommand.Params.ParamByName('Medida').Value := QryBuscarAux.FieldValues['sMedida'];
          connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('Cantidad').Value := QryBuscarAux.FieldValues['dCantidadPartida'];
          connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
          connection.zCommand.Params.ParamByName('Descripcion').Value := QryBuscarAux.FieldValues['mDescripcionPartida'];

          connection.zCommand.Params.ParamByName('CostoMN').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('CostoMN').Value := QryBuscarAux.FieldValues['dCostoMN'];
          connection.zCommand.Params.ParamByName('CostoDLL').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('CostoDLL').Value := QryBuscarAux.FieldValues['dCostoDLL'];
          connection.zCommand.Params.ParamByName('VentaMN').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('VentaMN').Value := QryBuscarAux.FieldValues['dVentaMN'];
          connection.zCommand.Params.ParamByName('VentaDLL').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('VentaDLL').Value := QryBuscarAux.FieldValues['dVentaDLL'];
          connection.zCommand.Params.ParamByName('Ponderado').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('Ponderado').Value := QryBuscarAux.FieldValues['dPonderado'];
          connection.zCommand.Params.ParamByName('Gerencial').DataType := ftString;
          connection.zCommand.Params.ParamByName('Gerencial').Value := 'Si';

          connection.zCommand.Params.ParamByName('Inicio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Inicio').Value := QryBuscarAux.FieldValues['sHoraInicio'];
          connection.zCommand.Params.ParamByName('Fin').DataType := ftString;
          connection.zCommand.Params.ParamByName('Fin').Value := QryBuscarAux.FieldValues['sHoraFinal'];
          connection.zCommand.Params.ParamByName('TipoMovto').DataType := ftString;
          connection.zCommand.Params.ParamByName('TipoMovto').Value := QryBuscarAux.FieldValues['sIdTipoMovimiento'];
          connection.zCommand.Params.ParamByName('DescripcionMovto').DataType := ftMemo;
          connection.zCommand.Params.ParamByName('DescripcionMovto').Value := QryBuscarAux.FieldValues['mDescripcion'];
          connection.zCommand.Params.ParamByName('CantidadInstalada').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('CantidadInstalada').Value := QryBuscarAux.FieldValues['dCantidad'];
          connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('Avance').Value := QryBuscarAux.FieldValues['dAvance'];
          try
            connection.zCommand.ExecSQL;
          except
          end;
          QryBuscarAux.Next
        end;
      QryBuscar.Next
    end;
  end;

    // Calculamos el acumulado, de partidas y de paquetes, empezamos por los avances de las subactividades ...
  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select Distinct sWbs, dPonderado from ncampo_bitacora where (sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha and sTipoActividad <> "SubActividad") Order By iNivel Desc ');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Orden').DataType := ftString;
  QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
  QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
  QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
  QryBuscar.Open;
  while not QryBuscar.Eof do
  begin
          // Sacamos los Avances del Dia
    QryBuscarAux.Active := False;
    QryBuscarAux.SQL.Clear;
    QryBuscarAux.SQL.Add(' Select Sum((dAvance * dPonderado) / 100) as dAvance from ncampo_bitacora ' +
      'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sWbsAnterior = :Paquete Group By dIdFecha');
    QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscarAux.Params.ParamByName('Paquete').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Paquete').Value := QryBuscar.FieldValues['sWbs'];
    QryBuscarAux.Open;
    if QryBuscarAux.RecordCount > 0 then
    begin
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('Update ncampo_bitacora SET dAvance = :Avance, dAvanceActual = :AvanceAcum ' +
        'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And ' +
        'sWBS = :Paquete and sTipoActividad <> "SubActividad"');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Paquete').DataType := ftString;
      connection.zCommand.Params.ParamByName('Paquete').Value := QryBuscar.FieldValues['sWBS'];
      connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
      if roundTo(QryBuscarAux.FieldValues['dAvance'], -2) >= 100 then
        connection.zCommand.Params.ParamByName('Avance').Value := QryBuscar.FieldValues['dPonderado']
      else
        connection.zCommand.Params.ParamByName('Avance').Value := (QryBuscarAux.FieldValues['dAvance'] * QryBuscar.FieldValues['dPonderado']) / 100;

      connection.zCommand.Params.ParamByName('AvanceAcum').DataType := ftFloat;
      if roundTo(QryBuscarAux.FieldValues['dAvance'], -2) >= 100 then
        connection.zCommand.Params.ParamByName('AvanceAcum').Value := QryBuscar.FieldValues['dPonderado']
      else
        connection.zCommand.Params.ParamByName('AvanceAcum').Value := (QryBuscarAux.FieldValues['dAvance'] * QryBuscar.FieldValues['dPonderado']) / 100;

      connection.zCommand.ExecSQL;
    end;
    QryBuscar.next
  end;

    // Ahora Saco los avances de las Actividades, Avances a partir de las SubActividades

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select Distinct sWbs, iIdDiario from ncampo_bitacora where (sContrato = :Contrato And ' +
    'sNumeroOrden = :Orden And dIdFecha = :Fecha) Order By iNivel, sWbs Desc ');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Orden').DataType := ftString;
  QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
  QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
  QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
  QryBuscar.Open;
  while not QryBuscar.Eof do
  begin
          // Sacamos los Avances del Dia
    QryBuscarAux.Active := False;
    QryBuscarAux.SQL.Clear;
    QryBuscarAux.SQL.Add(' Select Sum(dAvance) as dAvance from ncampo_bitacora ' +
      'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha < :Fecha And sWBS = :Paquete Group By sWBS');
    QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscarAux.Params.ParamByName('Paquete').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Paquete').Value := QryBuscar.FieldValues['sWbs'];
    QryBuscarAux.Open;
    if QryBuscarAux.RecordCount > 0 then
      dAvanceAnterior := QryBuscarAux.FieldValues['dAvance']
    else
      dAvanceAnterior := 0;

    QryBuscarAux.Active := False;
    QryBuscarAux.SQL.Clear;
    QryBuscarAux.SQL.Add(' Select sHoraInicio, sHoraFinal, dAvance from ncampo_bitacora ' +
      'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sWBS = :Paquete Order By sHoraInicio, sHoraFinal');
    QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscarAux.Params.ParamByName('Paquete').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Paquete').Value := QryBuscar.FieldValues['sWbs'];
    QryBuscarAux.Open;

    while not QryBuscarAux.Eof do
    begin
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('Update ncampo_bitacora SET dAvanceAnterior = :AvanceAnt, dAvanceActual = :AvanceAcum ' +
        'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And ' +
        'sWBS = :Paquete And sHoraInicio = :Inicio And sHoraFinal = :Final');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Paquete').DataType := ftString;
      connection.zCommand.Params.ParamByName('Paquete').Value := QryBuscar.FieldValues['sWBS'];

      connection.zCommand.Params.ParamByName('Inicio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Inicio').Value := QryBuscarAux.FieldValues['sHoraInicio'];
      connection.zCommand.Params.ParamByName('Final').DataType := ftString;
      connection.zCommand.Params.ParamByName('Final').Value := QryBuscarAux.FieldValues['sHoraFinal'];

      connection.zCommand.Params.ParamByName('AvanceAnt').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('AvanceAnt').Value := dAvanceAnterior;

      dAvanceAnterior := dAvanceAnterior + QryBuscarAux.FieldValues['dAvance'];

      connection.zCommand.Params.ParamByName('AvanceAcum').DataType := ftFloat;
      if dAvanceAnterior >= 100 then
        connection.zCommand.Params.ParamByName('AvanceAcum').Value := 100
      else
        connection.zCommand.Params.ParamByName('AvanceAcum').Value := dAvanceAnterior;

      connection.zCommand.ExecSQL;

      QryBuscarAux.Next;
    end;
    QryBuscar.next
  end;

    // Finaliza Proc. Cierre a Nota de Campo

end;

function dfnGeneradoAnterior(sParamContrato, sParamActividad: string; iParamConsecutivo: Word; tOrigen: TComponent): Double;
var
  QryConsulta: tzReadOnlyQuery;
begin
  QryConsulta := tzReadOnlyQuery.Create(tOrigen);
  QryConsulta.Connection := connection.zConnection;
  QryConsulta.Active := False;
  Qryconsulta.SQL.Clear;
  QryConsulta.SQL.Add('Select Sum(e.dCantidad) as dGenerado from estimacionxpartida e ' +
    'inner join estimaciones e2 on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden And ' +
    'e2.sNumeroGenerador = e.sNumeroGenerador And e2.iConsecutivo <= :Consecutivo And e2.lStatus = "Validado") ' +
    'Where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad  Group By e.sContrato');
  QryConsulta.Params.ParamByName('contrato').DataType := ftString;
  QryConsulta.Params.ParamByName('contrato').Value := sParamContrato;
  QryConsulta.Params.ParamByName('actividad').DataType := ftString;
  QryConsulta.Params.ParamByName('actividad').Value := sParamActividad;
  QryConsulta.Params.ParamByName('consecutivo').DataType := ftInteger;
  QryConsulta.Params.ParamByName('consecutivo').Value := iParamConsecutivo;
  QryConsulta.Open;
  if QryConsulta.RecordCount > 0 then
    result := QryConsulta.FieldValues['dGenerado']
  else
    result := 0;
  QryConsulta.Destroy;
end;


function RomanToDec(Roman: string): LongInt;
const
  Numeros: array[1..13] of Integer = (1000, 900, 500, 400, 100, 90, 50, 40,
    10, 9, 5, 4, 1);
  Romanos: array[1..13] of string = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L',
    'XL', 'X', 'IX', 'V', 'IV', 'I');
var
  i: Integer;
  Ro: string;
  Longitud: Integer;
begin
  Result := 0;

  Roman := UpperCase(Roman);

  if EsRomano(Roman) then
    for i := 1 to 13 do
    begin
      Longitud := Length(Romanos[i]);
      Ro := Copy(Roman, 1, Longitud);
      while ((Length(Roman) > 0) and (Ro = Romanos[i])) do
      begin
        Roman := Copy(Roman, 1 + Longitud, Length(Roman) - 1);
        Result := Result + Numeros[i];
        Ro := Copy(Roman, 1, Longitud);
      end;
    end;
end;

function EsRomano(Roman: string): Boolean;
const
  Romanos: array[1..13] of string = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L',
    'XL', 'X', 'IX', 'V', 'IV', 'I');
var
  i: Integer;
  Ro: string;
  Longitud: Integer;
  Temporal: string;
  RomanTemp: string;
  Cantidad: Integer;
  NumMayor: Boolean;
  Entrado: Boolean;
  Sucesion: Boolean;
begin
  Result := False;
  Temporal := '';
  NumMayor := True;
  Entrado := False;
  Sucesion := True;

   {Se copia el valor del número romano en una variable temporal}
  RomanTemp := Roman;

   {En este bucle se comprueba primero si los DIGITOS están en orden, y
   además se repiten como máximo su número de veces}
  for i := 1 to 13 do
  begin
    Longitud := Length(Romanos[i]); // Longitud del Dígito en Romano. {1 o 2}
    Ro := Copy(RomanTemp, 1, Longitud); // Se coge del Número la cdad. de dígitos como el dígito i.
    Cantidad := 0; // Número de veces que se repite a 0.

     {Se repite este bucle hasta que dígito que cogemos de la Cadena sea igual a digito i}
    while ((Length(RomanTemp) > 0) and (Ro = Romanos[i])) do
    begin
       {Se quita el primer dígito de la cadena}
      RomanTemp := Copy(RomanTemp, 1 + Longitud, Length(RomanTemp) - Longitud);
       {Se llena esta variable temporal}
      Temporal := Temporal + Romanos[i];
       {Se coge el siguiente dígito con la misma cantidad que el dígito i}
      Ro := Copy(RomanTemp, 1, Longitud);
      Inc(Cantidad);
      Entrado := True;
    end;

    if Entrado then
    begin
      case i of
        5, 9, 13: // C, X y I se pueden repetir 3 veces.
          if Cantidad > 3 then
            NumMayor := False;
        2, 3, 4, 6, 7, 8, 10, 11, 12: // CM, D, CD, XC, L, XL, IX, V, IV se pueden repetir 1 vez.
          if Cantidad > 1 then
            NumMayor := False;
      end;
      Entrado := False;
    end;
  end;

   {Si Temporal y el número Roman no son iguales es porque Roman no tiene los dígitos en un orden correcto.
    Se entra si el número tiene los dígitos en orden y la cantidad es correcta,
    entonces se comprueba que después de un dígito van los que le corresponden.
    Es decir, después de XC (90) no puede ir L (50)}
  if ((Temporal = Roman) and NumMayor) then
  begin
    RomanTemp := Roman;
    for i := 1 to 13 do
    begin
      Longitud := Length(Romanos[i]);
      Ro := Copy(RomanTemp, 1, Longitud);
      while (Sucesion and (Length(RomanTemp) > 0) and (Ro = Romanos[i])) do
      begin
        case i of
          2, 6, 10: // Si es CM, XC o IX.
            begin
             { Se comprueba que el dígito siguiente no sea el siguiente en la sucesión.
               P. ej. CM -> el siguiente no puede ser D}
              if (Copy(RomanTemp, 3, 1) = Romanos[i + 1]) then
                Sucesion := False
              else
               {Se compureba que el dígito siguiente no sea el de dos posiciones más en la sucesión.
                P. ej. XC -> el siguiente no puede ser CD}
                if (Copy(RomanTemp, 3, 2) = Romanos[i + 2]) then
                  Sucesion := False
                else
                 {Se comprueba que el dígito siguiente no sea el de tres posiciones más en la sucesión.
                  P. ej. IX -> el siguiente no puede ser I}
                  if (Copy(RomanTemp, 3, 1) = Romanos[i + 3]) then
                    Sucesion := False;
            end;
          3, 7, 11: // Si es D, C o X.
             {Se comprueba que el siguiente no sea CD, XL o IV}
            if (Copy(RomanTemp, 2, 2) = Romanos[i + 1]) then
              Sucesion := False;
          4, 8, 12: // Si es CD, XL o IV.
             {Se comprueba que el siguiente no sea C, X o I}
            if (Copy(RomanTemp, 3, 1) = Romanos[i + 1]) then
              Sucesion := False
        end;
        RomanTemp := Copy(RomanTemp, 1 + Longitud, Length(RomanTemp) - Longitud);
        Ro := Copy(RomanTemp, 1, Longitud);
      end;
    end;
    Result := Sucesion;
  end
  else
    Result := False;
end;


function xIntToLletres(Numero: LongInt): string;
var
  Millions, mils, unitats: Longint;
  Linea: string;
begin
     {Inicializamos el string que contendra las letras segun el valor numerico}
  if numero = 0 then Linea := 'CERO'
  else if numero < 0 then Linea := 'MENOS '
  else if numero > 0 then Linea := '';
     {Determinamos el Nº de millones, miles, i unidades de numero en positivo}
  Numero := Abs(Numero);
  millions := numero div 1000000;
  mils := (numero - (millions * 1000000)) div 1000;
  unitats := numero - ((millions * 1000000) + (mils * 1000));
     {Vamos poniendot en el string las cadenas de los numeros(llamando a subfuncion)}
  if millions = 1 then Linea := Linea + ' UN MILLON '
  else if millions > 1 then Linea := Linea + xxIntToLletres(millions) + ' MILLONES ';
  if mils = 1 then Linea := Linea + ' MIL '
  else if mils > 1 then Linea := Linea + xxIntToLletres(mils) + ' MIL ';
  if unitats > 0 then Linea := Linea + xxIntToLletres(unitats);
  xIntToLletres := Linea;
end;



function xxIntToLletres(Valor: LongInt): string;
const
  aUnitat: array[1..15] of string = ('UN', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS',
    'SIETE', 'OCHO', 'NUEVE', 'DIEZ', 'ONCE', 'DOCE',
    'TRECE', 'CATORCE', 'QUINCE');
  aCentena: array[1..9] of string = ('CIENTO', 'DOSCIENTOS', 'TRESCIENTOS',
    'CUATROCIENTOS', 'QUINIENTOS', 'SEISCIENTOS',
    'SETECIENTOS', 'OCHOCIENTOS', 'NOVECIENTOS');
  aDecena: array[1..9] of string = ('DIECI', 'VEINTI', 'TREINTA', 'CUARENTA', 'CINCUENTA',
    'SESENTA', 'SETENTA', 'OCHENTA', 'NOVENTA');
var
  Centena, Decena, Unitat, Doble: LongInt;
  Linea: string;
begin
  if valor = 100 then Linea := ' CIEN ' {Maximo Valor sera 999, ejemplo con 123}
  else begin
    Linea := '';
    Centena := Valor div 100; {1 }
    Doble := Valor - (Centena * 100); {23}
    Decena := (Valor div 10) - (Centena * 10); {2 }
    Unitat := Valor - (Decena * 10) - (Centena * 100); {3 }
    if Centena > 0 then Linea := Linea + Acentena[centena] + ' ';
    if Doble > 0 then begin
      if Doble = 20 then Linea := Linea + ' VEINTE '
      else begin
        if doble < 16 then Linea := Linea + Aunitat[Doble]
        else begin
          Linea := Linea + ' ' + Adecena[Decena];
          if (Decena > 2) and (Unitat <> 0) then Linea := Linea + ' Y ';
          if Unitat > 0 then Linea := Linea + Aunitat[Unitat];
        end;
      end;
    end;
  end;
  Result := Linea;
end;


function lVerificaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad: string; dParamFecha: tDate; iParamConsecutivo: Word; dParamCantidad: Double; tOrigen: TComponent): Byte;
var
  QryConsulta: tzReadOnlyQuery;
  dCantidadReportada: Double;
  dCantidadGenerada: Double;
  dSuma: Real;
begin

  QryConsulta := tzReadOnlyQuery.Create(tOrigen);
  QryConsulta.Connection := connection.zConnection;

  QryConsulta.Active := False;
  Qryconsulta.SQL.Clear;
  if sParamWbs <> '' then
    QryConsulta.SQL.Add('Select format(Sum(dCantidad),4) as dReportado from bitacoradeactividades ' +
      'Where sContrato = :Contrato and sNumeroOrden = :Orden And sWbs = :Wbs And ' +
      'sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sContrato')
  else
    QryConsulta.SQL.Add('Select format(Sum(dCantidad),4) as dReportado from bitacoradeactividades ' +
      'Where sContrato = :Contrato and sNumeroOrden = :Orden And ' +
      'sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sContrato');
  QryConsulta.Params.ParamByName('contrato').DataType := ftString;
  QryConsulta.Params.ParamByName('contrato').Value := sParamContrato;
  QryConsulta.Params.ParamByName('orden').DataType := ftString;
  QryConsulta.Params.ParamByName('orden').Value := sParamOrden;
  if sParamWbs <> '' then
  begin
    QryConsulta.Params.ParamByName('wbs').DataType := ftString;
    QryConsulta.Params.ParamByName('wbs').Value := sParamWbs;
  end;
  QryConsulta.Params.ParamByName('actividad').DataType := ftString;
  QryConsulta.Params.ParamByName('actividad').Value := sParamActividad;
  QryConsulta.Params.ParamByName('fecha').DataType := ftDate;
  QryConsulta.Params.ParamByName('fecha').Value := dParamFecha;
  QryConsulta.Open;
  if QryConsulta.RecordCount > 0 then
    dCantidadReportada := QryConsulta.FieldValues['dReportado']
  else
    dCantidadReportada := 0;

  QryConsulta.Active := False;
  Qryconsulta.SQL.Clear;
  if sParamWbs <> '' then
    QryConsulta.SQL.Add('Select format(Sum(e.dCantidad),4) as dGenerado from estimacionxpartida e ' +
      'inner join estimaciones e2 on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden And e2.sNumeroGenerador = e.sNumeroGenerador And e2.iConsecutivo <= :Consecutivo) ' +
      'Where e.sContrato = :Contrato and e.sNumeroOrden = :Orden And e.sWbs = :Wbs And e.sNumeroActividad = :Actividad  Group By e.sContrato')
  else
    QryConsulta.SQL.Add('Select format(Sum(e.dCantidad),4) as dGenerado from estimacionxpartida e ' +
      'inner join estimaciones e2 on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden And e2.sNumeroGenerador = e.sNumeroGenerador And e2.iConsecutivo <= :Consecutivo) ' +
      'Where e.sContrato = :Contrato and e.sNumeroOrden = :Orden And e.sNumeroActividad = :Actividad  Group By e.sContrato');
  QryConsulta.Params.ParamByName('contrato').DataType := ftString;
  QryConsulta.Params.ParamByName('contrato').Value := sParamContrato;
  QryConsulta.Params.ParamByName('orden').DataType := ftString;
  QryConsulta.Params.ParamByName('orden').Value := sParamOrden;
  if sParamWbs <> '' then
  begin
    QryConsulta.Params.ParamByName('wbs').DataType := ftString;
    QryConsulta.Params.ParamByName('wbs').Value := sParamWbs;
  end;
  QryConsulta.Params.ParamByName('actividad').DataType := ftString;
  QryConsulta.Params.ParamByName('actividad').Value := sParamActividad;
  QryConsulta.Params.ParamByName('consecutivo').DataType := ftInteger;
  QryConsulta.Params.ParamByName('consecutivo').Value := iParamConsecutivo;
  QryConsulta.Open;
  if QryConsulta.RecordCount > 0 then
    dCantidadGenerada := QryConsulta.FieldValues['dGenerado']
  else
    dCantidadGenerada := 0;

  //soad -> Decimales de la sumatoria..
  dSuma := dCantidadGenerada + dParamCantidad;

  QryConsulta.Destroy;

  if dSuma > dCantidadReportada then
    if connection.configuracion.FieldValues['sSeguridadGenerador'] = 'Con Seguridad' then
              // 1. - Notificar que existe un excedente en la cantidad de la cantidad reportada contra la cantidad generada ...
              // 2. - Desea ir a la bitacora de actividades para reportar el faltante ?
              // Si la respuesta es Si, devolver el valor de 13
      if MessageDlg('La cantidad acumulada en los generadores de obra es superior a la cantidad manifestada en los reportes diarios. ' + chr(13) +
        'Cantidad acumulada hasta el Generador de Obra en la partida  ' + sParamActividad + '  (Acumulado + Cantidad a Generar) = ' + floatToStr(dCantidadGenerada + dParamCantidad) +
        ', Cantidad Manifestada en Reportes Diarios = ' + floatToStr(dCantidadReportada) + ', necesita reportar la cantidad de ' +
        floatToStr((dCantidadGenerada + dParamCantidad) - dCantidadReportada) + '. ' + chr(13) +
        'Desea ir a la bitacora de actividades y reportar el faltante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        result := 13
      else
        result := 0
    else
      result := 1
  else
    Result := 1
end;

function espaces(paramNivel: Integer): string;
var
  pos: integer;
  sCadena: string;
begin
  sCadena := '';
  for pos := 0 to (paramNivel * 2) do
    sCadena := sCadena + ' ';
  result := sCadena;
end;

function esColor(iColor: Integer): tColor;
var
  sColor: tColor;
begin
  case iColor of
    0: sColor := clBlack;
    1: sColor := clMaroon;
    2: sColor := clGreen;
    3: sColor := clOlive;
    4: sColor := clNavy;
    5: sColor := clPurple;
    6: sColor := clTeal;
    7: sColor := clGray;
    8: sColor := clSilver;
    9: sColor := clRed;
    10: sColor := clLime;
    11: sColor := clYellow;
    12: sColor := clBlue;
    13: sColor := clFuchsia;
    14: sColor := clAqua;
    15: sColor := clWhite;
  end;
  result := sColor;
end;

function sfnDescompone(sActividad: string; iNiveles: Integer): string;
var
  iPuntos: byte;
  sCadenaResult: string;
  sCadenaScan: string;
begin
  sCadenaScan := sActividad;
  for iPuntos := 1 to iNiveles do
  begin
    if sCadenaResult <> '' then
      sCadenaResult := sCadenaResult + '.';
    if (pos('.', sCadenaScan) > 0) then
    begin
      sCadenaResult := sCadenaResult + MidStr(sCadenaScan, 1, pos('.', sCadenaScan) - 1);
      sCadenaScan := MidStr(sCadenaScan, pos('.', sCadenaScan) + 1, length(sCadenaScan));
    end
    else
    begin
      sCadenaResult := sCadenaResult + sCadenaScan;
      sCadenaScan := '';
    end
  end;
  result := sCadenaResult
end;

function ifnNivel(wbs: string): Integer;
var
  iPuntos: byte;
  sCadenaScan: string;
begin
  sCadenaScan := wbs;
  iPuntos := 0;
  if pos('.', sCadenaScan) > 0 then
  begin
    while (pos('.', sCadenaScan) > 0) do
    begin
      iPuntos := iPuntos + 1;
      sCadenaScan := MidStr(sCadenaScan, pos('.', sCadenaScan) + 1, length(sCadenaScan));
    end
  end;
  result := iPuntos
end;

function sfnwbsAnterior(wbs: string): string;
var
  sCadenaResult: string;
  sCadenaScan: string;
begin
  sCadenaScan := wbs;
  if pos('.', sCadenaScan) > 0 then
  begin
    while (pos('.', sCadenaScan) > 0) do
    begin
      if sCadenaResult <> '' then
        sCadenaResult := sCadenaResult + '.';
      sCadenaResult := sCadenaResult + MidStr(sCadenaScan, 1, pos('.', sCadenaScan) - 1);
      sCadenaScan := MidStr(sCadenaScan, pos('.', sCadenaScan) + 1, length(sCadenaScan));
    end
  end
  else
    sCadenaResult := '0';
  result := sCadenaResult
end;

function esNumerico(sParamTexto: string): Boolean;
var
  iPos, CtaPuntos: Byte;
  lContinua: Boolean;
begin
  lContinua := True;
  iPos := 1;
  CtaPuntos := 0;
  while lContinua and (iPos <= Length(sParamTexto)) do
  begin
    if Pos(sParamTexto[iPos], '.0123456789') = 0 then
      lContinua := False;
    if sParamTexto[iPos] = '.' then
      Inc(CtaPuntos);
    iPos := iPos + 1
  end;
  if CtaPuntos > 1 then
    Result := False // Si tiene más de un punto decimal no puede ser numérico
  else
    Result := lContinua;
end;

function sfnItem(sNumeroActividad, sParamTipo: string; iParamNivel: Byte): string;
var
  iNumeric: Real;
  iPosCar: Byte;
  sCadenaResult: string;
  sCadenaCero: string;
  lEncontrado: Boolean;
  sCadenaAux: string;
begin
  sCadenaResult := IntToStr(RomanToDec(sNumeroActividad));
  if sCadenaResult = '0' then
    if esNumerico(sNumeroActividad) then
    begin
            // Vamos a eliminar los puntos si es que tiene mas de 1 ...
      sCadenaResult := '';
      sCadenaAux := sNumeroActividad;
            // Primer Punto ....
      if pos('.', sCadenaAux) > 0 then
      begin
        sCadenaResult := MidStr(sCadenaAux, 1, pos('.', sCadenaAux));
        sCadenaAux := MidStr(sCadenaAux, pos('.', sCadenaAux) + 1, Length(sCadenaAux));
        if pos('.', sCadenaAux) > 0 then
          sCadenaResult := sCadenaResult + MidStr(sCadenaAux, 1, pos('.', sCadenaAux) - 1)
        else
          sCadenaResult := sCadenaResult + sCadenaAux;
      end
      else
        sCadenaResult := sNumeroActividad + '.00';
    end
    else
    begin
      iPosCar := 1;
      lEncontrado := True;
      while lEncontrado and (iPosCar <= Length(sNumeroActividad)) do
      begin
        if Pos(sNumeroActividad[iPosCar], 'ABCDEFGHIJKLMNOPQRSTVUWXYZ') > 0 then
          lEncontrado := False
        else
          iPosCar := iPosCar + 1
      end;
      if iPosCar > 1 then
        sCadenaResult := MidStr(sNumeroActividad, 1, iPosCar - 1) + '.00'
      else
        sCadenaResult := sNumeroActividad;
    end;

  sCadenaCero := sCadenaResult;
  for iPosCar := 1 to (LongNivel - Length(sCadenaResult)) do
    if esNumerico(sCadenaResult) then
      sCadenaCero := '0' + sCadenaCero
    else
      sCadenaCero := sCadenaCero + '0';

  for iPosCar := 1 to (100 - (iParamNivel * LongNivel)) do
    sCadenaCero := sCadenaCero + '0';

  result := sCadenaCero;
end;

function fnTiempoMuerto(sParamTipo, sParamInicio, sParamFinal, sParamComida, sParamJornada: string; iParamPersonal, iParamFrente: Integer): string;
var
  sFactorResta: string;
  sfnMuerto: string;
begin
  if (sParamInicio = '00:00') and (sParamFinal = '00:00') then
  begin
    sfnMuerto := sParamJornada;
    sfnMuerto := sTiempoMuerto(sfnMuerto, iParamPersonal, iParamFrente, 1);
  end
  else
  begin
    sfnMuerto := sfnRestaHoras(sParamFinal, sParamInicio);
    sfnMuerto := sfnRestaHoras(sfnMuerto, sParamComida);
    sfnMuerto := sTiempoMuerto(sfnMuerto, iParamPersonal, iParamFrente, 1);
  end;
  if (sParamTipo = 'Disponibilidad del Sitio') or (sParamTipo = 'Personal Administrativo') then
    fnTiempoMuerto := sfnMuerto
  else
    if sfnMuerto > sParamJornada then
      fnTiempoMuerto := sParamJornada
    else
      fnTiempoMuerto := sfnMuerto;
end;


procedure ProcSintesisGerencial(sParamContrato: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; sTipoReporte: string);
var
  sConvenio: string;
  frxSintesisGerencial: TfrxReport;
  QConvenios, QGerencial,
    QFisicoProgramado,
    QFotografico: tzReadOnlyQuery;
  dsConvenios, dsGerencial,
    dsFisicoProgramado,
    rFotografico,
    dsConfiguracion: TfrxDBDataSet;
begin
  QryAuxiliar := tzReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QConvenios := tzReadOnlyQuery.Create(tOrigen);
  QConvenios.Connection := connection.zconnection;

  QGerencial := tzReadOnlyQuery.Create(tOrigen);
  QGerencial.Connection := connection.zconnection;

  QFisicoProgramado := tzReadOnlyQuery.Create(tOrigen);
  QFisicoProgramado.Connection := connection.zconnection;

  QFotografico := tzReadOnlyQuery.Create(tOrigen);
  QFotografico.Connection := connection.zconnection;

  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;


  dsConvenios := TfrxDBDataSet.Create(tOrigen);
  dsConvenios.FieldAliases.Clear;
  dsConvenios.DataSet := QConvenios;
  dsConvenios.UserName := 'dsConvenios';

  dsGerencial := TfrxDBDataSet.Create(tOrigen);
  dsGerencial.FieldAliases.Clear;
  dsGerencial.DataSet := QGerencial;
  dsGerencial.UserName := 'dsGerencial';

  dsFisicoProgramado := TfrxDBDataSet.Create(tOrigen);
  dsFisicoProgramado.FieldAliases.Clear;
  dsFisicoProgramado.DataSet := QFisicoProgramado;
  dsFisicoProgramado.UserName := 'dsFisicoProgramado';

  rFotografico := TfrxDBDataSet.Create(tOrigen);
  rFotografico.FieldAliases.Clear;
  rFotografico.DataSet := QFotografico;
  rFotografico.UserName := 'rFotografico';

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.FieldAliases.Clear;
  dsConfiguracion.UserName := 'dsConfiguracion';
  dsConfiguracion.DataSet := QryConfiguracion;


  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.lLicencia, c2.sNombre, c2.sNombreCorto, c.sContrato, c.mDescripcion, c.sUbicacion, c3.dMontoMN, c3.dMontoDLL From contratos c ' +
    'INNER JOIN configuracion c2 ON (c.sContrato = c2.sContrato) ' +
    'INNER JOIN convenios c3 on (c2.sContrato = c3.sContrato and c2.sIdConvenio = c3.sIdConvenio) Where c.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  frxSintesisGerencial := TfrxReport.Create(tOrigen);
  frxSintesisGerencial.PreviewOptions.MDIChild := False;
  frxSintesisGerencial.PreviewOptions.Modal := True;
  frxSintesisGerencial.PreviewOptions.Maximized := lCheckMaximized();
  frxSintesisGerencial.PreviewOptions.ShowCaptions := False;
  frxSintesisGerencial.Previewoptions.ZoomMode := zmPageWidth;
  frxSintesisGerencial.OnGetValue := tProcedure;

  frxSintesisGerencial.DataSets.Clear;
  frxSintesisGerencial.DataSets.Add(dsConvenios);
  frxSintesisGerencial.DataSets.Add(dsGerencial);
  frxSintesisGerencial.DataSets.Add(dsFisicoProgramado);
  frxSintesisGerencial.DataSets.Add(rFotografico);
  frxSintesisGerencial.DataSets.Add(dsConfiguracion);

  QGerencial.Active := False;
  QGerencial.SQL.Clear;
  QGerencial.SQL.Add('Select dIdFecha, mProblematica, mAcciones, sFondo From sintesis_comentarios ' +
    'Where sContrato = :Contrato And dIdFecha = :Fecha');
  QGerencial.Params.ParamByName('Contrato').DataType := ftString;
  QGerencial.Params.ParamByName('Contrato').Value := sParamContrato;
  QGerencial.Params.ParamByName('Fecha').DataType := ftDate;
  QGerencial.Params.ParamByName('Fecha').Value := dParamFecha;
  QGerencial.Open;

  QFisicoProgramado.Active := False;
  QFisicoProgramado.SQL.Clear;
  QFisicoProgramado.SQL.Add('Select dFecha, dProgramadoFisico, dProgramadoFinanciero, dRealFisico, dRealFinanciero ' +
    'From sintesis_av_fisico_programado Where sContrato = :Contrato And dIdFecha = :Fecha Order By dFecha');
  QFisicoProgramado.Params.ParamByName('Contrato').DataType := ftString;
  QFisicoProgramado.Params.ParamByName('Contrato').Value := sParamContrato;
  QFisicoProgramado.Params.ParamByName('Fecha').DataType := ftDate;
  QFisicoProgramado.Params.ParamByName('Fecha').Value := dParamFecha;
  QFisicoProgramado.Open;

  QFotografico.Active := False;
  QFotografico.SQL.Clear;
  QFotografico.SQL.Add('Select sContrato, bImagen, sDescripcion From sintesis_fotografico Where sContrato = :Contrato And dIdFecha = :Fecha');
  QFotografico.Params.ParamByName('Contrato').DataType := ftString;
  QFotografico.Params.ParamByName('Contrato').Value := sParamContrato;
  QFotografico.Params.ParamByName('Fecha').DataType := ftDate;
  QFotografico.Params.ParamByName('Fecha').Value := dParamFecha;
  QFotografico.Open;

  sPoliza := '';
  sFianza := '';

  QryAuxiliar.Active := False;
  QryAuxiliar.SQL.Clear;
  QryAuxiliar.SQL.Add('Select sIdConvenio From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha');
  QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
  QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
  QryAuxiliar.Open;
  if QryAuxiliar.RecordCount > 0 then
    sConvenio := QryAuxiliar.FieldValues['sIdConvenio']
  else
    sConvenio := global_convenio;

  QConvenios.Active := False;
  QConvenios.SQL.Clear;
  QConvenios.SQL.Add('Select sContrato, sDescripcion, dFechaInicio, dFechaFinal, dMontoMN From convenios ' +
    'Where sContrato = :Contrato and sIdConvenio = :convenio');
  QConvenios.Params.ParamByName('contrato').DataType := ftString;
  QConvenios.Params.ParamByName('contrato').Value := sParamContrato;
  QConvenios.Params.ParamByName('Convenio').DataType := ftString;
  QConvenios.Params.ParamByName('Convenio').Value := sConvenio;
  QConvenios.Open;

  if sConvenio <> '' then
  begin
    dMontoModificado := 0;
    QryAuxiliar.Active := False;
    QryAuxiliar.SQL.Clear;
    QryAuxiliar.SQL.Add('Select dMontoMN From convenios ' +
      'Where sContrato = :contrato And sIdConvenio = :Convenio');
    QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
    QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
    QryAuxiliar.Params.ParamByName('Convenio').DataType := ftString;
    QryAuxiliar.Params.ParamByName('Convenio').Value := '';
    QryAuxiliar.Open;
    if QryAuxiliar.RecordCount > 0 then
      if QConvenios.FieldValues['dMontoMN'] <> QryAuxiliar.FieldValues['dMontoMN'] then
        dMontoModificado := QryAuxiliar.FieldValues['dMontoMN'];
  end;

  QryAuxiliar.Active := False;
  QryAuxiliar.SQL.Clear;
  QryAuxiliar.SQL.Add('Select sPoliza, sFianza From polizas  ' +
    'WHERE sContrato = :Contrato And dFechaInicio <= :FechaInicio And dFechaFinal >= :FechaFinal');
  QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryAuxiliar.Params.ParamByName('FechaInicio').DataType := ftDate;
  QryAuxiliar.Params.ParamByName('FechaInicio').Value := dParamFecha;
  QryAuxiliar.Params.ParamByName('FechaFinal').DataType := ftDate;
  QryAuxiliar.Params.ParamByName('FechaFinal').Value := dParamFecha;
  QryAuxiliar.Open;
  if QryAuxiliar.RecordCount > 0 then
  begin
    sPoliza := QryAuxiliar.FieldValues['sPoliza'];
    sFianza := QryAuxiliar.FieldValues['sFianza'];
  end
  else
  begin
    sPoliza := 'SIN POLIZA DE SEGURO POR RESPONSABILIDAD CIVIL';
    sFianza := 'SIN FIANZA DE CUMPLIMIENTO'
  end;


  if QGerencial.RecordCount = 0 then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('INSERT INTO sintesis_comentarios (sContrato , dIdFecha, mProblematica, mAcciones)' +
      'VALUES (:Contrato, :Fecha, :Problematica, :Acciones)');
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
    connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
    connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
    connection.zCommand.Params.ParamByName('Problematica').DataType := ftMemo;
    connection.zCommand.Params.ParamByName('Problematica').value := 'N/A';
    connection.zCommand.Params.ParamByName('Acciones').DataType := ftMemo;
    connection.zCommand.Params.ParamByName('Acciones').value := 'N/A';
    connection.zCommand.ExecSQL;
    QGerencial.Refresh
  end;

//  frxSintesisGerencial.LoadFromFile (global_files + 'SintesisGerencial.fr3') ;
  if sTipoReporte = 'Semanal' then
    frxSintesisGerencial.LoadFromFile(global_files + 'SintesisSemanal.fr3')
  else
    frxSintesisGerencial.LoadFromFile(global_files + 'SintesisMensual.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    frxSintesisGerencial.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    frxSintesisGerencial.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  frxSintesisGerencial.ShowReport();

  frxSintesisGerencial.Destroy;
  QConvenios.Destroy;
  QGerencial.Destroy;
  QFisicoProgramado.Destroy;
  QFotografico.Destroy;
  QryAuxiliar.Destroy;
  QryConfiguracion.Destroy;

  dsConvenios.Destroy;
  dsGerencial.Destroy;
  dsFisicoProgramado.Destroy;
  rFotografico.Destroy;
  dsConfiguracion.Destroy;
end;


function Tamanyo(Archivo: string): Real;
var
  Busca: TsearchRec;
begin
  if FindFirst(Archivo, faAnyFile, Busca) = 0 then
    Result := Busca.size / 1024
  else
    Result := 0;
end;

function mfnContenido(dbParamTable: tADOQuery): WideString;
var
  Registro: Integer;
  Cadena: WideString;
  valorCampo: Variant;
  ValorNumerico: string;
  ValorFecha: string;
  StringList: TStrings;
begin
  StringList := TStringList.Create;
  StringList.Clear;
  dbParamTable.First;
  while dbParamTable.Eof <> True do
  begin
    Cadena := '';
    ValorCampo := '';
    for Registro := 0 to dbParamTable.FieldCount - 1 do
    begin
      ValorCampo := dbParamTable.Fields[Registro].Value;
      if VarIsnull(ValorCampo) then
      begin
        ValorCampo := '';
        Cadena := Cadena + ValorCampo;
      end
      else
      begin
        if (dbParamTable.Fields[Registro].DataType = ftString) or (dbParamTable.Fields[Registro].DataType = ftMemo) then
        begin
          ValorCampo := AnsiReplaceText(ValorCampo, '|', '');
          if Length(ValorCampo) > 0 then
            ValorCampo := ValorCampo
          else
            ValorCampo := '';
          Cadena := Cadena + ValorCampo;
        end
        else
          if dbParamTable.Fields[Registro].DataType = ftDate then
          begin
            ValorFecha := FormatDateTime('dd/mm/yyyy', ValorCampo);
            Cadena := Trim(Cadena + ValorFecha);
          end
          else
            if dbParamTable.Fields[Registro].DataType <> ftBlob then
            begin
              ValorNumerico := Trim(ValorCampo);
              Cadena := Trim(Cadena + ValorNumerico);
            end
            else
              if dbParamTable.Fields[Registro].DataType = ftBlob then
              begin
                ValorNumerico := '';
                Cadena := Trim(Cadena + ValorNumerico);
              end;
      end;
      if Registro < (dbParamTable.FieldCount - 1) then
        Cadena := Cadena + '|';
    end;
    if Trim(Cadena) <> '' then
      StringList.Add(Trim(Cadena));
    dbParamTable.Next
  end;
  result := Trim(StringList.Text);
end;

function mfnSqlContenido(dbParamTable: tADOQuery; sParamTable: string; MyTable: tAdoTable): WideString;
var
  Registro: Integer;
  Cadena: WideString;
  valorCampo: Variant;
  ValorNumerico: string;
  ValorFecha: string;
  StringList: TStrings;
  sTexto,
    sComando: string;
begin
  StringList := TStringList.Create;
  StringList.Clear;
  dbParamTable.First;
  Cadena := '';
  MyTable.Active := False;
  MyTable.TableName := sParamTable;
  MyTable.Open;
  sTexto := MyTable.IndexDefs.Items[Registro].Fields;
  while dbParamTable.Eof <> True do
  begin
    Cadena := 'INSERT INTO ' + sParamTable + ' VALUES ( ';
    ValorCampo := '';
    sComando := '';
    for Registro := 0 to dbParamTable.FieldCount - 1 do
    begin
      if Pos(dbParamTable.Fields[Registro].FieldName, sTexto) > 0 then
        if (dbParamTable.Fields[Registro].DataType <> ftMemo) and (dbParamTable.Fields[Registro].DataType <> ftBlob) then
        begin
          if sComando <> '' then
            sComando := sComando + ' And ';
          sComando := sComando + dbParamTable.Fields[Registro].FieldName + ' = ';
          if (dbParamTable.Fields[Registro].DataType = ftFloat) and (dbParamTable.Fields[Registro].DataType = ftInteger) then
            sComando := sComando + dbParamTable.Fields[Registro].Text
          else
            sComando := sComando + '"' + dbParamTable.Fields[Registro].Text + '"';
        end;

      ValorCampo := dbParamTable.Fields[Registro].Value;
      if VarIsnull(ValorCampo) then
      begin
        ValorCampo := '';
        Cadena := Cadena + chr(39) + ValorCampo + chr(39);
      end
      else
        if (dbParamTable.Fields[Registro].DataType = ftString) or (dbParamTable.Fields[Registro].DataType = ftMemo) then
        begin
          ValorCampo := AnsiReplaceText(ValorCampo, chr(39), '');
          if Length(ValorCampo) > 0 then
            ValorCampo := chr(39) + ValorCampo + chr(39)
          else
            ValorCampo := chr(39) + chr(39);
          Cadena := Cadena + ValorCampo;
        end
        else
          if dbParamTable.Fields[Registro].DataType = ftDate then
          begin
            ValorFecha := chr(39) + FormatDateTime('yyyy-mm-dd', ValorCampo) + chr(39);
            Cadena := Trim(Cadena + ValorFecha);
          end
          else
            if dbParamTable.Fields[Registro].DataType <> ftBlob then
            begin
              ValorNumerico := chr(39) + Trim(ValorCampo) + chr(39);
              Cadena := Trim(Cadena + ValorNumerico);
            end
            else
              if dbParamTable.Fields[Registro].DataType = ftBlob then
              begin
                ValorNumerico := chr(39) + chr(39);
                Cadena := Trim(Cadena + ValorNumerico);
              end;

      if Registro < (dbParamTable.FieldCount - 1) then
        Cadena := Cadena + ', '
    end;
    Cadena := Cadena + ') ; ';
    if Trim(Cadena) <> '' then
    begin
      sComando := 'DELETE FROM ' + sParamTable + ' Where ' + sComando;
      StringList.Add(Trim(sComando));
      StringList.Add(Trim(Cadena));
    end;
    dbParamTable.Next
  end;
  result := Trim(StringList.Text);
end;

function funcSql(dbParamTable: TZReadOnlyQuery; sTable: string): WideString;
var
  sCadenaInsert,
    sCadenaValues: WideString;
  Registro: Byte;
begin
  sCadenaInsert := 'INSERT INTO ' + sTable + ' (';
  sCadenaValues := 'VALUES ( ';
  for Registro := 0 to dbParamTable.FieldCount - 1 do
  begin
    sCadenaInsert := sCadenaInsert + dbParamTable.Fields[Registro].DisplayName;
    if Registro < (dbParamTable.FieldCount - 1) then
      sCadenaInsert := sCadenaInsert + ', '
    else
      sCadenaInsert := sCadenaInsert + ') ';

    sCadenaValues := sCadenaValues + ':Param' + Trim(IntToStr(Registro + 1));
    if Registro < (dbParamTable.FieldCount - 1) then
      sCadenaValues := sCadenaValues + ', '
    else
      sCadenaValues := sCadenaValues + ') '
  end;
  funcSql := sCadenaInsert + sCadenaValues;
end;


function funcSql2(dbParamTable: tADOQuery; sTable: string): WideString;
var
  sCadenaInsert,
    sCadenaValues: WideString;
  Registro: Byte;
begin
  sCadenaInsert := 'INSERT INTO ' + sTable + ' (';
  sCadenaValues := 'VALUES ( ';
  for Registro := 0 to dbParamTable.FieldCount - 1 do
  begin
    sCadenaInsert := sCadenaInsert + dbParamTable.Fields[Registro].DisplayName;
    if Registro < (dbParamTable.FieldCount - 1) then
      sCadenaInsert := sCadenaInsert + ', '
    else
      sCadenaInsert := sCadenaInsert + ') ';

    sCadenaValues := sCadenaValues + ':Param' + Trim(IntToStr(Registro + 1));
    if Registro < (dbParamTable.FieldCount - 1) then
      sCadenaValues := sCadenaValues + ', '
    else
      sCadenaValues := sCadenaValues + ') '
  end;
  funcSql2 := sCadenaInsert + sCadenaValues;
end;

function funcCreateStruct(dbParamTable: TZReadOnlyQuery; sTable: string): WideString;
var
  sCadenaInsert: WideString;
  Registro: Byte;
begin
  sCadenaInsert := 'CREATE Table ' + sTable + ' ( ';
  for Registro := 0 to dbParamTable.FieldCount - 1 do
  begin
    sCadenaInsert := sCadenaInsert + dbParamTable.Fields[Registro].DisplayName + ' ';
    case dbParamTable.Fields[Registro].DataType of
      ftString: sCadenaInsert := sCadenaInsert + 'TEXT (' + IntToStr(dbParamTable.Fields[Registro].DisplayWidth) + ')';
      ftDate: sCadenaInsert := sCadenaInsert + 'DATETIME';
      ftMemo: sCadenaInsert := sCadenaInsert + 'MEMO';
      ftBlob: sCadenaInsert := sCadenaInsert + 'LONGBINARY';
      ftFloat: sCadenaInsert := sCadenaInsert + 'NUMERIC (12,4)';
      ftInteger: sCadenaInsert := sCadenaInsert + 'NUMERIC (' + IntToStr(dbParamTable.Fields[Registro].DisplayWidth) + ')'
    else
      sCadenaInsert := sCadenaInsert + 'NUMERIC (12,4)';
    end;

    if Registro < (dbParamTable.FieldCount - 1) then
      sCadenaInsert := sCadenaInsert + ', '
    else
      sCadenaInsert := sCadenaInsert + ') ';

  end;
  result := sCadenaInsert;
end;


procedure rOrdenCambio(sParamContrato: string; iParamCedula: Integer; tOrigen: TComponent);
var
  frxOrdenCambio: TfrxReport;
  QryOrdenCambio: tzReadOnlyQuery;
  dsOrdendeCambio: TfrxDBDataSet;
begin

  QryOrdenCambio := tzReadOnlyQuery.Create(tOrigen);
  QryOrdenCambio.Connection := connection.zconnection;

  frxOrdenCambio := TfrxReport.Create(tOrigen);
  frxOrdenCambio.PreviewOptions.MDIChild := False;
  frxOrdenCambio.PreviewOptions.Modal := True;
  frxOrdenCambio.PreviewOptions.Maximized := lCheckMaximized();
  frxOrdenCambio.PreviewOptions.ShowCaptions := False;
  frxOrdenCambio.Previewoptions.ZoomMode := zmPageWidth;
  dsOrdendeCambio := TfrxDBDataSet.Create(tOrigen);

  dsOrdendeCambio.FieldAliases.Clear;
  dsOrdendeCambio.DataSet := QryOrdenCambio;
  dsOrdendeCambio.UserName := 'dsOrdendeCambio';

  frxOrdenCambio.DataSets.Add(dsOrdendeCambio);


  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select lLicencia From configuracion Where sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryOrdenCambio.Active := False;
  QryOrdenCambio.SQL.Clear;
  QryOrdenCambio.SQL.Add('Select o.*, c.mDescripcion, c.bImagen, c2.sNombre, ' +
    'c2.sDireccion1, c2.sDireccion2, c2.sDireccion3, c2.bImagen as bImagenCIA From ordendecambio o ' +
    'inner join contratos c on (o.sContrato = c.sContrato) ' +
    'inner join configuracion c2 on (o.sContrato = c2.sContrato) ' +
    'Where o.sContrato = :Contrato And o.iCedulaProcedencia = :Cedula');
  QryOrdenCambio.Params.ParamByName('Contrato').DataType := ftString;
  QryOrdenCambio.Params.ParamByName('Contrato').Value := sParamContrato;
  QryOrdenCambio.Params.ParamByName('Cedula').DataType := ftInteger;
  QryOrdenCambio.Params.ParamByName('Cedula').Value := iParamCedula;
  QryOrdenCambio.Open;
  if QryOrdenCambio.RecordCount > 0 then
  begin
    frxOrdenCambio.LoadFromFile(global_files + 'OrdendeCambio.fr3');
    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      frxOrdenCambio.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      frxOrdenCambio.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
    frxOrdenCambio.ShowReport();
  end;

  frxOrdenCambio.Destroy;
  QryOrdenCambio.Destroy;
  dsOrdendeCambio.Destroy;
  QryConfiguracion.Destroy;
end;


function lCheckMaximized(): Boolean;
var
  MiArchivo: string;
  FileText: TextFile;
  iPos: Byte;
  wCadena: string;
begin
  MiArchivo := global_archivoini;
  AssignFile(FileText, MiArchivo);
  Reset(FileText);
  Result := False;
  while not Eof(FileText) do
  begin
    ReadLn(FileText, wCadena);
    iPos := Pos('=', wCadena);
    if UpperCase(MidStr(wCadena, 1, iPos - 1)) = 'MAXIMIZED' then
      if UpperCase(MidStr(wCadena, iPos + 1, Length(wCadena))) = 'SI' then
        Result := True
  end;
  CloseFile(FileText);
end;

function lCheckReporte(): Boolean;
var
  MiArchivo: string;
  FileText: TextFile;
  iPos: Byte;
  wCadena: string;
begin
  MiArchivo := global_archivoini;
  AssignFile(FileText, MiArchivo);
  Reset(FileText);
  Result := True;
  while not Eof(FileText) do
  begin
    ReadLn(FileText, wCadena);
    iPos := Pos('=', wCadena);
    if UpperCase(MidStr(wCadena, 1, iPos - 1)) = 'DETALLAR REPORTE' then
      if UpperCase(MidStr(wCadena, iPos + 1, Length(wCadena))) = 'SI' then
        Result := True
      else
        Result := False;
  end;
  CloseFile(FileText);
end;

function lfnValidaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamGenerador: string; tOrigen: TComponent): Boolean;
var
  QryOrdenCambio: tzReadOnlyQuery;
  QryAuxEstimado: tzReadOnlyQuery;
  lExceso: Boolean;
begin
  lExceso := True;
  QryAuxiliar := tzReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryOrdenCambio := tzReadOnlyQuery.Create(tOrigen);
  QryOrdenCambio.Connection := connection.zconnection;

  QryAuxEstimado := tzReadOnlyQuery.Create(tOrigen);
  QryAuxEstimado.Connection := connection.zconnection;

  QryAuxEstimado.Active := False;
  QryAuxEstimado.SQL.Clear;
  QryAuxEstimado.SQL.Add('Select Sum(dCantidad) as dTotalEstimado from estimacionxpartida a ' +
    'inner join estimaciones b on (a.sContrato = b.sContrato And a.sNumeroOrden = b.sNumeroOrden And a.sNumeroGenerador = b.sNumeroGenerador And b.iConsecutivo <= :Consecutivo) ' +
    'Where a.sContrato = :Contrato And a.sNumeroActividad = :Actividad Group By a.sNumeroActividad');

  QryAuxiliar.Active := False;
  QryAuxiliar.SQL.Clear;
  QryAuxiliar.SQL.Add('Select e2.iConsecutivo, e.sNumeroActividad, e.dCantidad, e.iOrdenCambio, a.dCantidadAnexo From estimacionxpartida e ' +
    'INNER JOIN actividadesxanexo a ON (a.sContrato = e.sContrato And a.sIdConvenio = :Convenio And a.sNumeroActividad = e.sNumeroActividad And a.sTipoActividad = "Actividad" And a.lExtraordinario = "No") ' +
    'INNER JOIN estimaciones e2 ON (e2.sContrato = e.sContrato And e2.sNumeroOrden = e.sNumeroOrden And e2.sNumeroGenerador = e.sNumeroGenerador) ' +
    'Where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sNumeroGenerador = :Generador');
  QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryAuxiliar.Params.ParamByName('Convenio').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
  QryAuxiliar.Params.ParamByName('Generador').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Generador').Value := sParamGenerador;
  QryAuxiliar.Open;
  lExceso := True;
  while not QryAuxiliar.Eof and lExceso do
  begin
    if QryAuxiliar.FieldValues['dCantidad'] > 0 then
    begin
      QryAuxEstimado.Active := False;
      QryAuxEstimado.Params.ParamByName('Contrato').DataType := ftString;
      QryAuxEstimado.Params.ParamByName('Contrato').Value := sParamContrato;
      QryAuxEstimado.Params.ParamByName('Consecutivo').DataType := ftInteger;
      QryAuxEstimado.Params.ParamByName('Consecutivo').Value := QryAuxiliar.FieldValues['iConsecutivo'];
      QryAuxEstimado.Params.ParamByName('Actividad').DataType := ftString;
      QryAuxEstimado.Params.ParamByName('Actividad').Value := QryAuxiliar.FieldValues['sNumeroActividad'];
      QryAuxEstimado.Open;
      if QryAuxEstimado.RecordCount > 0 then
        if QryAuxEstimado.FieldValues['dTotalEstimado'] > 0 then
          if QryAuxEstimado.FieldValues['dTotalEstimado'] > QryAuxiliar.FieldValues['dCantidadAnexo'] then
            if QryAuxiliar.FieldValues['iOrdenCambio'] = 0 then
              lExceso := False
            else
            begin
              QryOrdenCambio.Active := False;
              QryOrdenCambio.SQL.Clear;
              QryOrdenCambio.SQL.Add('Select iCedulaProcedencia From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
              QryOrdenCambio.Params.ParamByName('Contrato').DataType := ftString;
              QryOrdenCambio.Params.ParamByName('Contrato').Value := global_contrato;
              QryOrdenCambio.Params.ParamByName('orden').DataType := ftInteger;
              QryOrdenCambio.Params.ParamByName('orden').Value := QryAuxiliar.FieldValues['iOrdenCambio'];
              QryOrdenCambio.Open;
              if QryOrdenCambio.RecordCount = 0 then
                lExceso := False
            end
    end;
    QryAuxiliar.Next
  end;
  QryOrdenCambio.Destroy;
  QryAuxiliar.Destroy;
  QryAuxEstimado.Destroy;
  if not lExceso then
  begin
    if connection.configuracion.FieldValues['sSeguridadGenerador'] = 'Sin Seguridad' then
      lExceso := True
    else
      if (global_grupo = 'INTEL-CODE') then
        lExceso := True;
  end;
  result := lExceso
end;

function cfnCalculaAvances(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
var
  QryPlataforma: tzReadOnlyQuery;
  QryContrato: tzReadOnlyQuery;
  dAvancePlataforma: Currency;
  dAvanceObra: Currency;
  dAvancePartida: Currency;
  lContinua: Boolean;
  CalcularAvance: TZReadOnlyQuery;
  AvanceAnterior,
    AvanceActual,
    Diferencia,
    AvanceParaComparacion,
    AvanceAnteriorCalculado: Extended;
  IntelError: Exception;
begin
  dAvancePlataforma := 0;
  dAvanceObra := 0;
  dAvancePartida := 0;

  QryPlataforma := tzReadOnlyQuery.Create(tOrigen);
  QryPlataforma.Connection := connection.zconnection;

  QryContrato := tzReadOnlyQuery.Create(tOrigen);
  QryContrato.Connection := connection.zconnection;

  QryAuxiliar := tzReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryReporteDiario := tzReadOnlyQuery.Create(tOrigen);
  QryReporteDiario.Connection := connection.zconnection;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  QryReporteDiario.SQL.Add('Select r.lStatus, r.sIdConvenio, c.lAvanceFisico From reportediario r ' +
    'inner join convenios c on (c.sContrato = r.sContrato and c.sIdConvenio = r.sIdConvenio) ' +
    'Where r.sContrato = :contrato and r.dIdFecha = :Fecha And r.sNumeroOrden = :Orden And r.sIdTurno = :Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;

  if QryReporteDiario.RecordCount > 0 then
    if sParamConvenio = 'NIL' then
    begin
      if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
        lContinua := True
      else
        lContinua := False;

      if QryReporteDiario.FieldValues['lAvanceFisico'] = 'No' then
        sParamConvenio := global_convenio
      else
        sParamConvenio := QryReporteDiario.FieldValues['sIdConvenio'];
    end
    else
      lContinua := True
  else
    lContinua := True;

  if lContinua then
  begin
        // Partidas canceladas ....
        // Avance por Plataforma ...
    QryPlataforma.Active := False;
    QryPlataforma.SQL.Clear;
    QryPlataforma.SQL.Add('Select Sum(( b.dAvance * a.dPonderado) / 100 ) as dAvance From actividadescanceladas b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And ' +
      'a.sIdConvenio = :Convenio And b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
      'Where b.sContrato = :contrato and b.sNumeroOrden = :Orden and b.dIdFecha = :Fecha group by b.sNumeroOrden');
    QryPlataforma.Params.ParamByName('contrato').DataType := ftString;
    QryPlataforma.Params.ParamByName('contrato').Value := sParamContrato;
    QryPlataforma.Params.ParamByName('orden').DataType := ftString;
    QryPlataforma.Params.ParamByName('orden').Value := sParamOrden;
    QryPlataforma.Params.ParamByName('convenio').DataType := ftString;
    QryPlataforma.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPlataforma.Params.ParamByName('Fecha').DataType := ftDate;
    QryPlataforma.Params.ParamByName('Fecha').Value := dParamFecha;
    QryPlataforma.Open;
    if QryPlataforma.RecordCount > 0 then
      dAvancePlataforma := dAvancePlataforma + QryPlataforma.FieldValues['dAvance'];

    // Avance por Contrato ...
    if sParamSeguridad = 'Avanzada' then
    begin
      QryContrato.Active := False;
      QryContrato.SQL.Clear;
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.dPonderado, a.dCantidadAnexo, Sum(b.dCantidad) as dCantidad From actividadescanceladas b ' +
        'INNER JOIN actividadesfcanceladas af ON (af.sContrato = b.sContrato And af.dIdFecha = b.dIdFecha And af.lAfectaContrato = "Si") ' +
        'INNER JOIN actividadesxanexo a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :contrato and b.dIdFecha = :Fecha group by b.sNumeroActividad');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Open;
      while not QryContrato.Eof do
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select sum(dCantidad) as dAcumulado From bitacoradeactividades ' +
          'Where sContrato = :contrato And sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if ((QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo']) then
          dAvancePartida := 0
        else
          if (QryAuxiliar.FieldValues['dAcumulado'] > QryContrato.FieldValues['dCantidadAnexo']) then
            dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad'])) * 100) / QryContrato.FieldValues['dCantidadAnexo']
          else
            dAvancePartida := (QryContrato.FieldValues['dCantidad'] * 100) / QryContrato.FieldValues['dCantidadAnexo'];
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        QryContrato.Next;
      end
    end;

    // Avance de Partidas Reportadas ....
    // por Plataforma
    QryPlataforma.Active := False;
    QryPlataforma.SQL.Clear;
    QryPlataforma.SQL.Add('Select Sum(( b.dAvance * a.dPonderado) / 100 ) as dAvance From bitacoradeactividades b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And a.sIdConvenio = :Convenio And ' +
      'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
      'Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.sNumeroOrden = :Orden and b.sIdTurno =:Turno group by b.sNumeroOrden');
    QryPlataforma.Params.ParamByName('contrato').DataType := ftString;
    QryPlataforma.Params.ParamByName('contrato').Value := sParamContrato;
    QryPlataforma.Params.ParamByName('convenio').DataType := ftString;
    QryPlataforma.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPlataforma.Params.ParamByName('Fecha').DataType := ftDate;
    QryPlataforma.Params.ParamByName('Fecha').Value := dParamFecha;
    QryPlataforma.Params.ParamByName('Orden').DataType := ftString;
    QryPlataforma.Params.ParamByName('Orden').Value := sParamOrden;
    QryPlataforma.Params.ParamByName('Turno').DataType := ftString;
    QryPlataforma.Params.ParamByName('Turno').Value := sParamTurno;
    QryPlataforma.Open;
    if QryPlataforma.RecordCount > 0 then
      dAvancePlataforma := dAvancePlataforma + QryPlataforma.FieldValues['dAvance'];

    {*********************************************************************
     ** Obtener el avance total al día de hoy.
     **
     ** Comentario: Esta sentencia calcula el avance total anterior y actual
     ** al día reportado, obteniendo los valores tal como lo hace excel
     ** para evitar las diferencias expresadas en el cálculo.
     **
     ** Eduardo Rangel Vallejo - 01 Diciembre 2010
     *********************************************************************}
    CalcularAvance := TZReadOnlyQuery.Create(nil);
    CalcularAvance.Connection := Connection.zConnection;

    {ANTERIOR}
    CalcularAvance.Sql.Text := 'Select sum(a.dAvance) as dAvanceAnterior From avancesglobalesxorden a Where a.sContrato = :contrato And a.sIdConvenio = :convenio And ' +
      'a.sNumeroOrden = :orden And a.dIdFecha < :fecha And a.sIdTurno = :turno';
    CalcularAvance.ParamByName('contrato').AsString := sParamContrato;
    CalcularAvance.ParamByName('convenio').AsString := sParamConvenio;
    CalcularAvance.ParamByName('orden').AsString := sParamOrden;
    CalcularAvance.ParamByName('fecha').AsDate := dParamFecha;
    CalcularAvance.ParamByName('turno').AsString := sParamTurno;
    CalcularAvance.Open;
    AvanceAnterior := CalcularAvance.FieldByName('dAvanceAnterior').AsFloat;

    // Obtener el avance de dias anteriores para consideración de antiguedad de ajuste para determinar si se debe informar al usuario o no
    CalcularAvance.Close;
    CalcularAvance.ParamByName('fecha').AsDate := IncDay(dParamFecha, (Connection.Configuracion.FieldByName('iReportesSinValid').AsInteger * -1));
    CalcularAvance.Open;
    AvanceParaComparacion := CalcularAvance.FieldByName('dAvanceAnterior').AsFloat;
    CalcularAvance.Close;

    CalcularAvance.Sql.Text := 'select sum((select sum(d.dAvance * (select ifnull(sum(p.dPonderado),0) from actividadesxorden p where p.scontrato = d.scontrato and p.snumeroorden = d.snumeroorden and p.swbs = a.swbs and ' +
      'p.sidconvenio =:Convenio ) / 100) ' +
      'from bitacoradeactividades d where d.scontrato = a.scontrato and d.snumeroorden = a.snumeroorden and d.sIdTurno =:Turno and d.swbs = a.swbs and ((:par = 0 and d.dIdFecha <= :fecha) or (:par = 1 and d.dIdFecha = :fecha)))) as dAvanceAcumulado ' +
      'from actividadesxorden a where a.scontrato = :contrato and a.sidconvenio = :convenio and a.sNumeroorden = :orden and a.swbscontrato <> "" and a.stipoactividad = "Actividad"  and ' +
      'a.swbs in (select swbs from bitacoradeactividades where scontrato = a.scontrato and snumeroorden = a.snumeroorden and ((:par = 0 and dIdFecha <= :fecha) or (:par = 1 and dIdFecha = :fecha))) ' +
      'group by a.snumeroorden';
    CalcularAvance.ParamByName('contrato').AsString := sParamContrato;
    CalcularAvance.ParamByName('convenio').AsString := sParamConvenio;
    CalcularAvance.ParamByName('orden').AsString := sParamOrden;
    CalcularAvance.ParamByName('par').AsInteger := 0;
    CalcularAvance.ParamByName('par').AsString := sParamTurno;
    CalcularAvance.ParamByName('fecha').AsDate := IncDay(dParamFecha, -1);

    // Verificar si se puede abrir esta consulta
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Text := 'Select d.sContrato from bitacoradeactividades d where d.scontrato = :contrato and d.snumeroorden = :orden and sIdTurno =:Turno ' +
      'and ((:par = 0 and d.dIdFecha <= :fecha) or (:par = 1 and d.dIdFecha = :fecha)) limit 1';
    Connection.QryBusca.ParamByName('contrato').AsString := sParamContrato;
    Connection.QryBusca.ParamByName('orden').AsString := sParamorden;
    Connection.QryBusca.ParamByName('par').AsInteger := 0;
    Connection.QryBusca.ParamByName('fecha').AsDate := IncDay(dParamFecha, -1);
    Connection.QryBusca.ParamByName('Turno').AsString := sParamTurno;
    Connection.QryBusca.Open;

    if Connection.QryBusca.RecordCount > 0 then
    begin
      CalcularAvance.Open;
      AvanceAnteriorCalculado := CalcularAvance.FieldByName('dAvanceAcumulado').AsFloat;
    end
    else
      AvanceAnteriorCalculado := 0;

    // Obtener las diferencias que pudieran existir entre los valores calculados y los valores registrados en la tabla
    Diferencia := (Round(AvanceAnteriorCalculado * 10000) / 10000);
    Diferencia := AvanceAnterior - Diferencia;

    if Trunc(Diferencia * 1000000000000000) / 1000000000000000 <> 0 then
    begin
      // Verificar si la diferencia encontrada no es muy vieja como para reportarla
      CalcularAvance.Close;
      CalcularAvance.ParamByName('fecha').AsDate := IncDay(dParamFecha, (Connection.Configuracion.FieldByName('iReportesSinValid').AsInteger * -1));
      CalcularAvance.Open;

      {if AvanceParaComparacion <> CalcularAvance.FieldByName('dAvanceAcumulado').AsFloat then
      begin
        MessageDlg('Existe un ajuste realizado directamente en la base de datos que no fué realizado por el sistema inteligent.', mtWarning, [mbYes, mbNo], 0);
      end;}
    end;

    {ACTUAL}
    CalcularAvance.Close;
    CalcularAvance.ParamByName('par').AsInteger := 1;
    CalcularAvance.ParamByName('fecha').AsDate := dParamFecha;
    CalcularAvance.Open;

    // Obtener avance actual calculado y agregar la diferencia que pudiera existir por ajustes realizados en la tabla
    AvanceActual := AvanceAnteriorCalculado + CalcularAvance.FieldByName('dAvanceAcumulado').AsFloat + Diferencia;

    CalcularAvance.Close;
    CalcularAvance.Destroy;

    dAvancePlataforma := (Round(AvanceActual * 10000) / 10000) - AvanceAnterior;
    {**********************************************************************
     ** TERMINA TOTALIZACIÓN DE AVANCES
     **********************************************************************}

     // Por Contrato de Partidas reportadas en bitacora
     // Por Contrato de Partidas reportadas por Alcances
    if sParamSeguridad = 'Avanzada' then
    begin
      QryContrato.Active := False;
      QryContrato.SQL.Clear; {adal, modificar aqui con el wbs y numero de orden, agrupar tambien por wbs HECHO}
      QryContrato.SQL.Add('Select a.sNumeroActividad, a.sWbs, a.dCantidadAnexo, a.dPonderado, Sum(b.dCantidad) as dCantidad From bitacoradeactividades b ' +
        ' INNER JOIN actividadesxorden ao ON (b.sContrato = ao.sContrato and b.sNumeroOrden=ao.sNumeroOrden And b.sNumeroActividad = ao.sNumeroActividad and b.sWbs=ao.sWbs) ' +
        ' INNER JOIN actividadesxanexo a ON (a.sContrato = ao.sContrato And a.sIdConvenio = ao.sIdConvenio And a.sNumeroActividad = ao.sNumeroActividad and a.sWbs=ao.sWbsContrato) ' +
        ' Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.lAlcance = "No" ' +
        '  And ao.sIdConvenio = :Convenio and b.sIdTurno =:Turno and ao.sTipoActividad = "Actividad" ' +
        ' group by b.sNumeroActividad,b.sWbs order by a.iItemOrden');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Params.ParamByName('Turno').DataType := ftString;
      QryContrato.Params.ParamByName('Turno').Value := sParamTurno;
      QryContrato.Open;

      while not QryContrato.Eof do
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear; {adal, modificar aqui con el wbs HECHO}
        QryAuxiliar.SQL.Add('Select sum(dCantidad) as dAcumulado From bitacoradeactividades ' +
          'Where sContrato = :contrato And sNumeroActividad = :Actividad and sWbs=:wbs And dIdFecha <= :Fecha and sIdTurno =:Turno Group By sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('wbs').DataType := ftString;
        QryAuxiliar.Params.ParamByName('wbs').Value := QryContrato.FieldValues['sWbs'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Turno').Value := sParamTurno;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if ((QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo']) then
          dAvancePartida := 0
        else
          if (QryAuxiliar.FieldValues['dAcumulado'] > QryContrato.FieldValues['dCantidadAnexo']) then
          begin
            try
              if QryContrato.FieldValues['dCantidadAnexo'] <> 0 then
                dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (QryAuxiliar.FieldValues['dAcumulado'] - QryContrato.FieldValues['dCantidad'])) * 100) / QryContrato.FieldValues['dCantidadAnexo']
              else
                dAvancePartida := 0;
            except
              dAvancePartida := 0;
            end
          end
          else
            dAvancePartida := (QryContrato.FieldValues['dCantidad'] * 100) / QryContrato.FieldValues['dCantidadAnexo'];
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        QryContrato.Next;
      end;

      QryContrato.Active := False;
      QryContrato.SQL.Clear; {adal, modificar aqui para y numero de orden y wbs,agrupoar por wbs}
      QryContrato.SQL.Add('Select a.sNumeroActividad,a.sWbs, a.dCantidadAnexo, a.dPonderado, b.iFase, Sum(b.dCantidad) as dCantidad From bitacoradealcances b ' +
        'INNER JOIN actividadesxorden ao ON (b.sContrato = ao.sContrato and b.sNumeroOrden=ao.sNumeroOrden And b.sNumeroActividad = ao.sNumeroActividad and b.sWbs=ao.sWbs) ' +
        'INNER JOIN actividadesxanexo a ON (a.sContrato = ao.sContrato And a.sNumeroActividad = ao.sNumeroActividad and a.sIdConvenio=ao.sIdConvenio and a.sWbs=ao.sWbsContrato) ' +
        ' Where b.sContrato = :contrato and ' +
        ' ao.sTipoActividad = "Actividad" And ao.sIdConvenio = :Convenio and b.dIdFecha = :Fecha and ao.sNumeroOrden=:orden ' +
        ' group by b.sNumeroActividad,b.sWbs, b.iFase order by a.iItemOrden, b.iFase');
      QryContrato.Params.ParamByName('contrato').DataType := ftString;
      QryContrato.Params.ParamByName('contrato').Value := sParamContrato;
      QryContrato.Params.ParamByName('convenio').DataType := ftString;
      QryContrato.Params.ParamByName('convenio').Value := sParamConvenio;
      QryContrato.Params.ParamByName('Fecha').DataType := ftDate;
      QryContrato.Params.ParamByName('Fecha').Value := dParamFecha;
      QryContrato.Params.ParamByName('orden').DataType := ftString;
      QryContrato.Params.ParamByName('orden').Value := sParamOrden;
      QryContrato.Open;

      while not QryContrato.Eof do
      begin
       {10/marzo/2012 : adal, sWbs a la tabla alcance}

        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;

        QryAuxiliar.SQL.Add('Select Sum(b.dCantidad) as dCantidad, a.dAvance From bitacoradealcances b ' +
          ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroOrden=b.sNumeroOrden and b.sWbs=ao.sWbs and b.sNumeroActividad=ao.sNumeroActividad )   ' +
          ' INNER JOIN alcancesxactividad a ON (ao.sContrato = a.sContrato And ao.sNumeroActividad = a.sNumeroActividad and ao.sWbsContrato=a.sWbs  And a.iFase = b.iFase ) ' +
          ' where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad and ao.sNumeroOrden=:orden and ao.sIdConvenio=:convenio  and a.sWbs=:wbs And b.iFase =:Fase And b.dIdFecha <= :Fecha Group By b.sNumeroActividad');
//        QryAuxiliar.SQL.Add('Select Sum(b.dCantidad) as dCantidad, a.dAvance From bitacoradealcances b ' +
//          'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
//          'Where b.sContrato = :Contrato And b.sNumeroActividad = :Actividad and b.sWbs=:wbs And b.iFase =:Fase And b.dIdFecha <= :Fecha Group By b.sNumeroActividad');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Actividad').Value := QryContrato.FieldValues['sNumeroActividad'];
        QryAuxiliar.Params.ParamByName('wbs').DataType := ftString;
        QryAuxiliar.Params.ParamByName('wbs').Value := QryContrato.FieldValues['sWbs'];
        QryAuxiliar.Params.ParamByName('Convenio').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Convenio').Value := sParamConvenio;
        QryAuxiliar.Params.ParamByName('Fase').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('Fase').Value := QryContrato.FieldValues['iFase'];
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
        QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftString;
        QryAuxiliar.Params.ParamByName('orden').Value := sParamOrden;
        QryAuxiliar.Open;
        dAvancePartida := 0;
        if QryAuxiliar.RecordCount > 0 then
        begin
          dAvancePartida := QryAuxiliar.FieldValues['dCantidad'];
          if (dAvancePartida - QryContrato.FieldValues['dCantidad']) >= QryContrato.FieldValues['dCantidadAnexo'] then
            dAvancePartida := 0
          else
            if dAvancePartida > QryContrato.FieldValues['dCantidadAnexo'] then
              dAvancePartida := ((QryContrato.FieldValues['dCantidadAnexo'] - (dAvancePartida - QryContrato.FieldValues['dCantidad'])) * QryAuxiliar.FieldValues['dAvance']) / QryContrato.FieldValues['dCantidadAnexo']
            else
              dAvancePartida := (QryContrato.FieldValues['dCantidad'] * QryAuxiliar.FieldValues['dAvance']) / QryContrato.FieldValues['dCantidadAnexo'];
        end;
        dAvanceObra := dAvanceObra + (dAvancePartida * QryContrato.FieldValues['dPonderado']);
        QryContrato.Next
      end;
      dAvanceObra := dAvanceObra / 100;
    end;

    // Almacenamiento de Avances utilizando una transacción ...
    try
      // Primero se ajusta tanto el avance x programa de trabajo ...
      if lParamMultiple then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden ' +
          'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
          'dIdFecha < :fecha and sNumeroOrden = :Orden and sIdTurno =:Turno Group By sNumeroOrden');
        QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
        QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
        QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Turno').Value := sParamTurno;
        QryAuxiliar.Open;
        if QryAuxiliar.RecordCount > 0 then
          if (QryAuxiliar.FieldValues['dAvance'] + dAvancePlataforma) > 100 then
            dAvancePlataforma := 100 - QryAuxiliar.FieldValues['dAvance'];

        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select dIdFecha from avancesglobalesxorden ' +
          'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
          'dIdFecha = :fecha and sNumeroOrden = :Orden And sIdTurno =:Turno Group By sNumeroOrden');
        QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
        QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
        QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Turno').Value := sParamTurno;
        QryAuxiliar.Open;
        if QryAuxiliar.RecordCount > 0 then
        begin
          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Update avancesglobalesxorden SET dAvance = :Avance ' +
            'Where sContrato = :Contrato And dIdFecha = :Fecha And ' +
            'sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno');
          connection.CommandTrx.Params.ParamByName('contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('contrato').Value := sParamContrato;
          connection.CommandTrx.Params.ParamByName('convenio').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('convenio').Value := sParamConvenio;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := dParamFecha;
          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Orden').Value := sParamOrden;
          connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Turno').Value := sParamTurno;
          connection.CommandTrx.Params.ParamByName('Avance').DataType := ftFloat;
          connection.CommandTrx.Params.ParamByName('Avance').Value := (AvanceActual - AvanceAnterior); //dAvancePlataforma;
          connection.CommandTrx.ExecSQL
        end
        else
        begin
          if AvanceActual > 100 then
             AvanceActual := 100;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('INSERT INTO avancesglobalesxorden (sContrato, sNumeroOrden, dIdFecha, sIdConvenio, sIdTurno, dAvance) ' +
            'Values (:Contrato, :Orden, :Fecha, :Convenio, :Turno, :Avance)');
          connection.CommandTrx.Params.ParamByName('contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('contrato').Value := sParamContrato;
          connection.CommandTrx.Params.ParamByName('convenio').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('convenio').Value := sParamConvenio;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := dParamFecha;
          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Orden').Value := sParamOrden;
          connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Turno').Value := sParamTurno;
          connection.CommandTrx.Params.ParamByName('Avance').DataType := ftFloat;
          connection.CommandTrx.Params.ParamByName('Avance').Value := (AvanceActual - AvanceAnterior); //dAvancePlataforma;
          connection.CommandTrx.ExecSQL
        end
      end;

      // Verificar si existe un avance de patio capturado
      QryAuxiliar.Active := False;
      QryAuxiliar.Sql.Text := 'select dCantidad from xtavancesglobalesxorden where sContrato = :Contrato and dIdFecha = :Fecha';
      QryAuxiliar.ParamByName('Contrato').AsString := sParamContrato;
      QryAuxiliar.ParamByName('Fecha').AsDate := dParamFecha;
      QryAuxiliar.Open;
      if QryAuxiliar.RecordCount > 0 then
        dAvanceObra := dAvanceObra + QryAuxiliar.FieldByName('dCantidad').AsFloat;

        // Avances del Contrato ...
      if sParamSeguridad = 'Avanzada' then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden ' +
          'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
          'dIdFecha < :fecha and sNumeroOrden = :Orden and sIdTurno =:Turno Group By sContrato');
        QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
        QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Orden').Value := '';
        QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Turno').Value    := sParamTurno;
        QryAuxiliar.Open;
        if QryAuxiliar.RecordCount > 0 then
          if (QryAuxiliar.FieldValues['dAvance'] + dAvanceObra) > 100 then
            dAvanceObra := 100 - QryAuxiliar.FieldValues['dAvance'];

        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select dIdFecha from avancesglobalesxorden ' +
          'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
          'dIdFecha = :fecha and sNumeroOrden = :Orden And sIdTurno = :Turno Group By sContrato');
        QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
        QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
        QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
        QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Orden').Value := '';
        QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Turno').Value := sParamTurno;
        QryAuxiliar.Open;
        if QryAuxiliar.RecordCount > 0 then
        begin
          if lParamMultiple = False then
            dAvanceObra := dAvancePlataforma;
          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Update avancesglobalesxorden SET dAvance = :Avance Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno');
          connection.CommandTrx.Params.ParamByName('contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('contrato').Value := sParamContrato;
          connection.CommandTrx.Params.ParamByName('convenio').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('convenio').Value := sParamConvenio;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := dParamFecha;
          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Orden').Value := '';
          connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Turno').Value := sParamTurno;
          connection.CommandTrx.Params.ParamByName('Avance').DataType := ftFloat;
          connection.CommandTrx.Params.ParamByName('Avance').Value := dAvanceObra;
          connection.CommandTrx.ExecSQL
        end
        else
        begin
          if lParamMultiple = False then
            dAvanceObra := dAvancePlataforma;
          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('INSERT INTO avancesglobalesxorden (sContrato,snumeroorden, dIdFecha, sIdConvenio, sIdTurno, dAvance) ' +
            'Values (:Contrato,:orden, :Fecha, :Convenio, :Turno, :Avance)');
          connection.CommandTrx.Params.ParamByName('contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('contrato').Value := sParamContrato;
          connection.CommandTrx.Params.ParamByName('convenio').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('convenio').Value := sParamConvenio;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := dParamFecha;
          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Orden').Value := '';
          connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Turno').Value := sParamTurno;
          connection.CommandTrx.Params.ParamByName('Avance').DataType := ftFloat;
          connection.CommandTrx.Params.ParamByName('Avance').Value := dAvanceObra;
          connection.CommandTrx.ExecSQL
        end
      end;

      // Rangel - Este es un arreglo temporal solo para que funcione esta cosa con los otros procedimientos que llaman
      //          a esta rutina, debe ser eliminado cuando se terminen de modificar todos los llamados a esta.
      Connection.ConnTrx.Commit;
    except
      IntelError := Exception.Create('El cálculo de los avances globales no pudo ser realizado.');
      raise IntelError;
    end;
  end;

  Result := dAvanceObra;
  QryAuxiliar.Destroy;
  QryContrato.Destroy;
  QryPlataforma.Destroy;
end;


function cfnCalculaAvancesGob(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; lParamMultiple: Boolean; dParamFecha: tDate; sParamSeguridad: string; tOrigen: TComponent): Currency;
var
  QryPlataforma: TZReadOnlyQuery;
  QryContrato: TZReadOnlyQuery;
  dAvancePlataforma: Currency;
  dAvanceObra: Currency;
  dAvancePartida: Currency;
  lContinua: Boolean;
begin
  dAvancePlataforma := 0;
  dAvanceObra := 0;
  dAvancePartida := 0;

  QryPlataforma := TZReadOnlyQuery.Create(tOrigen);
  QryPlataforma.Connection := connection.zconnection;

  QryContrato := TZReadOnlyQuery.Create(tOrigen);
  QryContrato.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryReporteDiario := TZReadOnlyQuery.Create(tOrigen);
  QryReporteDiario.Connection := connection.zconnection;


  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  QryReporteDiario.SQL.Add('Select lStatus, sIdConvenio From reportediario ' +
    'Where sContrato = :contrato and dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdTurno = :Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;
  if QryReporteDiario.RecordCount > 0 then
    if sParamConvenio = 'NIL' then
    begin
      if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
        lContinua := True
      else
        lContinua := False;
      sParamConvenio := QryReporteDiario.FieldValues['sIdConvenio'];
    end
    else
      lContinua := True
  else
    lContinua := True;

  if lContinua then
  begin
    dAvanceObra := 0;
    QryPlataforma.Active := False;
    QryPlataforma.SQL.Clear;
    QryPlataforma.SQL.Add('Select Sum(( b.dAvance * a.dPonderado) / 100 ) as dAvance From bitacoradeactividades b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And a.sIdConvenio = :Convenio And ' +
      'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
      'Where b.sContrato = :contrato and b.dIdFecha = :Fecha And b.sNumeroOrden = :Orden group by b.sContrato');
    QryPlataforma.Params.ParamByName('contrato').DataType := ftString;
    QryPlataforma.Params.ParamByName('contrato').Value := sParamContrato;
    QryPlataforma.Params.ParamByName('convenio').DataType := ftString;
    QryPlataforma.Params.ParamByName('convenio').Value := sParamConvenio;
    QryPlataforma.Params.ParamByName('Fecha').DataType := ftDate;
    QryPlataforma.Params.ParamByName('Fecha').Value := dParamFecha;
    QryPlataforma.Params.ParamByName('Orden').DataType := ftString;
    QryPlataforma.Params.ParamByName('Orden').Value := sParamOrden;
    QryPlataforma.Open;
    if QryPlataforma.RecordCount > 0 then
      dAvanceObra := dAvancePlataforma + QryPlataforma.FieldValues['dAvance'];

    QryAuxiliar.Active := False;
    QryAuxiliar.SQL.Clear;
    QryAuxiliar.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden ' +
      'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
      'dIdFecha < :fecha and sNumeroOrden = :Orden Group By sContrato');
    QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
    QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
    QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
    QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
    QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
    QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
    QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
    QryAuxiliar.Params.ParamByName('Orden').Value := '';
    QryAuxiliar.Open;
    if QryAuxiliar.RecordCount > 0 then
      if (QryAuxiliar.FieldValues['dAvance'] + dAvanceObra) > 100 then
        dAvanceObra := 100 - QryAuxiliar.FieldValues['dAvance'];

    QryAuxiliar.Active := False;
    QryAuxiliar.SQL.Clear;
    QryAuxiliar.SQL.Add('Select dIdFecha from avancesglobalesxorden ' +
      'where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
      'dIdFecha = :fecha and sNumeroOrden = :Orden And sIdTurno = :Turno Group By sContrato');
    QryAuxiliar.Params.ParamByName('contrato').DataType := ftString;
    QryAuxiliar.Params.ParamByName('contrato').Value := sParamContrato;
    QryAuxiliar.Params.ParamByName('convenio').DataType := ftString;
    QryAuxiliar.Params.ParamByName('convenio').Value := sParamConvenio;
    QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
    QryAuxiliar.Params.ParamByName('Fecha').Value := dParamFecha;
    QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
    QryAuxiliar.Params.ParamByName('Orden').Value := '';
    QryAuxiliar.Params.ParamByName('Turno').DataType := ftString;
    QryAuxiliar.Params.ParamByName('Turno').Value := 'A';
    QryAuxiliar.Open;
    if QryAuxiliar.RecordCount > 0 then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Update avancesglobalesxorden SET dAvance = :Avance Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sIdTurno = :Turno');
      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := '';
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').Value := 'A';
      connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
      connection.zCommand.ExecSQL
    end
    else
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('INSERT INTO avancesglobalesxorden (sContrato, sNumeroOrden, dIdFecha, sIdConvenio, sIdTurno, dAvance) ' +
        'Values (:Contrato, :Orden, :Fecha, :Convenio, :Turno, :Avance)');
      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
      connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('convenio').Value := sParamConvenio;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := '';
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').Value := 'A';
      connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Avance').Value := dAvanceObra;
      connection.zCommand.ExecSQL
    end
  end;

  Result := dAvanceObra;
  QryAuxiliar.Destroy;
  QryContrato.Destroy;
  QryPlataforma.Destroy;
end;

procedure procCaratulaGenerador_1(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
  x: integer;
begin
  //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, c.sReportesCIA, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  if QryConfiguracion.RecordCount > 0 then
    global_MiReporte := QryConfiguracion.FieldValues['sReportesCIA'];

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sIsometricoReferencia', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sSimbolo', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion1', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion2', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion3', ftString, 20, True);
  rxGenerador.FieldDefs.Add('dConstante', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAlto', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dLargo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAncho', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dSubtotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dTotal', ftFloat, 0, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio,  e1.sIsometricoReferencia, e1.iidGrupo, e1.iidPerimetro, ' +
    'e1.dConstante, e1.dAlto, e1.dAncho, e1.dLargo, e1.dSubtotal, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador and   replace(a.sWbs," ","") =replace(e1.sWbsContrato ," ","") AND    replace(a.sNumeroActividad," ","")=replace(e1.sNumeroActividad ," ","") )' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Order By a.sWbs, a.iItemOrden, e1.sIsometrico, e1.sPrefijo');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    while not QryGenerador.Eof do
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
      rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];

      //Obtenemos la cantidad de Anexo de las partidas dentro del programa principal..
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
        'sIdConvenio = :Convenio And sWbs = :Wbs And sTipoActividad = "Actividad"');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
      QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
      QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
      QryAcumulados.Open;

      if QryAcumulados.RecordCount > 0 then
        rxGenerador.FieldValues['dCantidadAnexo'] := QryAcumulados.FieldValues['dCantidadAnexo']
      else
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
            'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbsContrato = :Wbs And sTipoActividad = "Actividad"');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dCantidadOrden := 0;
          while not QryAcumulados.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
            QryAcumulados.Next
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
            'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","")= :Wbs And replace(e.sNumeroActividad ," ","")= :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
          'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","") = :Wbs And replace(e.sNumeroActividad ," ","") = :Actividad) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sNumeroActividad');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;

        dAcumuladoAnexo := 0;
        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
      end;

      {Ahora consultamos las tablas de conversiones...18 Julio 2010 }
//      QryAcumulados.Active := False;
//      QryAcumulados.SQL.Clear;
//      QryAcumulados.SQL.Add('select g.sSimbolo, p.sValorNominal, p.iidPerimetro from gruposperimetros g ' +
//        'inner join perimetros p on (p.iidPerimetro =:Perimetro) ' +
//        'where g.iidGrupo =:Grupo ');
//      QryAcumulados.Params.ParamByName('Grupo').DataType := ftInteger;
//      QryAcumulados.Params.ParamByName('Grupo').Value := QryGenerador.FieldValues['iidGrupo'];
//      QryAcumulados.Params.ParamByName('Perimetro').DataType := ftInteger;
//      QryAcumulados.Params.ParamByName('Perimetro').Value := QryGenerador.FieldValues['iidPerimetro'];
//      QryAcumulados.Open;
//
//      if QryAcumulados.RecordCount > 0 then
//      begin
//        rxGenerador.FieldValues['sSimbolo'] := QryAcumulados.FieldValues['sSimbolo'];
//        rxGenerador.FieldValues['sValorConversion1'] := QryAcumulados.FieldValues['sValorNominal'];
//
//          {Ahora buscamos el resto de los datoss,,}
//        connection.zCommand.Active := False;
//        connection.zCommand.SQL.Clear;
//        connection.zCommand.SQL.Add('select dValorPerimetro, sValornominal, EAplicaValor from perimetros where iidPerimetroPrincipal =:Perimetro order by iOrden ');
//        connection.zCommand.ParamByName('Perimetro').AsInteger := QryAcumulados.FieldValues['iidPerimetro'];
//        connection.zCommand.Open;
//
//        x := 2;
//        while not connection.zCommand.eof do
//        begin
//          if connection.zCommand.FieldValues['EAplicaValor'] = 'sValor' then
//            rxGenerador.FieldValues['sValorConversion' + IntToStr(x)] := connection.zCommand.FieldValues['sValorNominal'];
//
//          if connection.zCommand.FieldValues['EAplicaValor'] = 'dValor' then
//            rxGenerador.FieldValues['sValorConversion' + IntToStr(x)] := FloatToStr(connection.zCommand.FieldValues['dValorPerimetro']);
//          inc(x);
//          connection.zCommand.Next;
//        end;
//        rxGenerador.FieldValues['dConstante'] := QryGenerador.FieldValues['dConstante'];
//        rxGenerador.FieldValues['dAlto'] := QryGenerador.FieldValues['dAlto'];
//        rxGenerador.FieldValues['dAncho'] := QryGenerador.FieldValues['dAncho'];
//        rxGenerador.FieldValues['dLargo'] := QryGenerador.FieldValues['dLargo'];
//        rxGenerador.FieldValues['dSubtotal'] := QryGenerador.FieldValues['dSubtotal'];
//        rxGenerador.FieldValues['dTotal'] := QryGenerador.FieldValues['dCantidad'];
//      end;

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sIsometricoReferencia'] := QryGenerador.FieldValues['sIsometricoReferencia'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];

      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;
  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);

  if lParamMultiple then
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorMultiple.fr3')
  else
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGenerador.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport(True);

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procCaratulaGenerador(iParamNivel :integer; sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad, WbsAnterior, WbsAnteriorPaquete, WbsActual: string;
  dCantidadOrden,
  dAcumuladoOrden,
  dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
  x, num, iNivel: integer;
  ArrayPaquetes: array[1..10, 1..4] of string;
begin
  //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, c.sReportesCIA, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  if QryConfiguracion.RecordCount > 0 then
    global_MiReporte := QryConfiguracion.FieldValues['sReportesCIA'];

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sTipoActividad', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sIdFolio', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sDescripcionCorta', ftString, 50, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sWbs', ftString, 75, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sIsometricoReferencia', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sSimbolo', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion1', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion2', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion3', ftString, 20, True);
  rxGenerador.FieldDefs.Add('dConstante', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAlto', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dLargo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAncho', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dSubtotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dTotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sAnexo', ftString, 5, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select o.sDescripcionCorta, o.sIdFolio, a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, a.sWbsAnterior, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio,  e1.sIsometricoReferencia, e1.iidGrupo, e1.iidPerimetro, ' +
    'e1.dConstante, e1.dAlto, e1.dAncho, e1.dLargo, e1.dSubtotal, a.sAnexo, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador and   replace(a.sWbs," ","") =replace(e1.sWbsContrato ," ","") AND    replace(a.sNumeroActividad," ","")=replace(e1.sNumeroActividad ," ","") )' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'inner Join ordenesdetrabajo o on (o.sContrato=e2.sContrato And o.sNumeroOrden=e2.sNumeroOrden) ' +
    'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Order By a.sWbs, a.iItemOrden, e1.sIsometrico, e1.sPrefijo');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    WbsAnterior := 'iv@n';
    WbsActual   := 'iv@n';
    WbsAnteriorPaquete := 'iv@an';
    while not QryGenerador.Eof do
    begin
        WbsAnterior := QryGenerador.FieldValues['sWbsAnterior'];
        num    := 1;
        iNivel := iParamNivel;
       //Insertamos los paquetes de las partidas si aplican
       if WbsAnteriorPaquete <> WbsAnterior then
       begin
          WbsAnteriorPaquete := WbsAnterior;
          while iNivel > 0 do
          begin
              //Consultamos los paquetes que le corresponden a cada partida.
              connection.QryBusca.Active;
              connection.QryBusca.SQL.Clear;
              connection.QryBusca.SQL.Add('select sWbs, sWbsAnterior, sNumeroActividad, mDescripcion, dPonderado '+
                                          'from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
              connection.QryBusca.ParamByName('Contrato').AsString  := sParamContrato;
              connection.QryBusca.ParamByName('Convenio').AsString  := sParamConvenio;
              connection.QryBusca.ParamByName('Orden').AsString     := sParamOrden;
              connection.QryBusca.ParamByName('Wbs').AsString       := WbsAnterior;
              connection.QryBusca.Open;

              if connection.QryBusca.RecordCount > 0 then
              begin
                  WbsAnterior          := connection.QryBusca.FieldValues['sWbsAnterior'];
                  ArrayPaquetes[num,1] := connection.QryBusca.FieldValues['sNumeroActividad'];
                  ArrayPaquetes[num,2] := connection.QryBusca.FieldValues['mDescripcion'];
                  ArrayPaquetes[num,3] := 'Paquete';
                  inc(num);
               end;
              iNivel := iNivel - 1;
          end;
      end;

      dec(num);
      while num > 0 do
      begin
          //Insertamos las partidas y paquetes..
          rxGenerador.Append;
          rxGenerador.FieldValues['sContrato']          := QryGenerador.FieldValues['sContrato'];
          rxGenerador.FieldValues['sIdFolio']           := QryGenerador.FieldValues['sIdFolio'];
          rxGenerador.FieldValues['sDescripcionCorta']  := QryGenerador.FieldValues['sDescripcionCorta'];

          rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
          rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
          rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

          if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
            rxGenerador.FieldValues['lValida'] := True
          else
            rxGenerador.FieldValues['lValida'] := False;

          if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
            rxGenerador.FieldValues['lAutoriza'] := True
          else
            rxGenerador.FieldValues['lAutoriza'] := False;

          rxGenerador.FieldValues['sTipoActividad']   := 'Paquete';
          rxGenerador.FieldValues['sWbs']             := QryGenerador.FieldValues['sWbs'];
          rxGenerador.FieldValues['sNumeroActividad'] := ArrayPaquetes[num,1];
          rxGenerador.FieldValues['mDescripcion']     := ArrayPaquetes[num,2];
          dec(num);
      end;

      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato']          := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sIdFolio']           := QryGenerador.FieldValues['sIdFolio'];
      rxGenerador.FieldValues['sDescripcionCorta']  := QryGenerador.FieldValues['sDescripcionCorta'];

      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sTipoActividad']   := 'Actividad';
      rxGenerador.FieldValues['sWbs']             := QryGenerador.FieldValues['sWbs'];

      if iParamNivel > 0 then
      begin
          if WbsActual <> QryGenerador.FieldValues['sWbs'] then
          begin
              rxGenerador.FieldValues['sMedida']          := QryGenerador.FieldValues['sMedida'];
              rxGenerador.FieldValues['dConstante']       := QryGenerador.FieldValues['dCantidadAnexo'];
              rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
              rxGenerador.FieldValues['mDescripcion']     := QryGenerador.FieldValues['mDescripcion'];
              rxGenerador.FieldValues['sAnexo']           := QryGenerador.FieldValues['sAnexo'];
              WbsActual := QryGenerador.FieldValues['sWbs'];
          end;
      end
      else
      begin
          rxGenerador.FieldValues['sMedida']          := QryGenerador.FieldValues['sMedida'];
          rxGenerador.FieldValues['dConstante']       := QryGenerador.FieldValues['dCantidadAnexo'];
          rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
          rxGenerador.FieldValues['mDescripcion']     := QryGenerador.FieldValues['mDescripcion'];
          rxGenerador.FieldValues['sAnexo']           := QryGenerador.FieldValues['sAnexo'];
          WbsActual := QryGenerador.FieldValues['sWbs'];
      end;

      //Obtenemos la cantidad de Anexo de las partidas dentro del programa principal..
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
//      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
//        'sIdConvenio = :Convenio And sWbs = :Wbs And sTipoActividad = "Actividad"');
      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
                            'sIdConvenio = :Convenio And sNumeroActividad= :Actividad And sTipoActividad = "Actividad"');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
      QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
     // QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
     //QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
      QryAcumulados.Params.ParamByName('Actividad').Value    := QryGenerador.FieldValues['sNumeroActividad'];

      QryAcumulados.Open;

      if QryAcumulados.RecordCount > 0 then
        rxGenerador.FieldValues['dCantidadAnexo'] := QryAcumulados.FieldValues['dCantidadAnexo']
      else
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
            'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbsContrato = :Wbs And sTipoActividad = "Actividad"');
          QryAcumulados.Params.ParamByName('Contrato').DataType  := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value     := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType     := ftString;
          QryAcumulados.Params.ParamByName('orden').Value        := sParamOrden;
          QryAcumulados.Params.ParamByName('Convenio').DataType  := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value     := sParamConvenio;
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value    := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType       := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value          := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dCantidadOrden := 0;
          while not QryAcumulados.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
            QryAcumulados.Next
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
            'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","")= :Wbs And replace(e.sNumeroActividad ," ","")= :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
          'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","") = :Wbs And replace(e.sNumeroActividad ," ","") = :Actividad) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sNumeroActividad');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;

        dAcumuladoAnexo := 0;
        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
      end;

      //coigo comentado, codigo eliminado,

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sIsometricoReferencia'] := QryGenerador.FieldValues['sIsometricoReferencia'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];

      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;
  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);

  if iParamNivel = 0 then
  begin
      if lParamMultiple then
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorMultiple.fr3')
      else
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGenerador.fr3');
  end;

  if iParamNivel > 0 then
  begin
      if lParamMultiple then
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorMultiplePaquete.fr3')
      else
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorPaquete.fr3');
  end;

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
//  rCaratula.ShowReport(FormatosExp, PermisosExp);
    rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;


procedure procHojasegGeneradores(sParamContrato, sParamEstimacion, sParamGenerador: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad: string;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := qryGenerador;
  dsGenerador.UserName := 'dsGenerador';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select ep.iNumeroEstimacion, ep.sMoneda, ep.dFechaInicio as dFechaInicioEst, ep.dFechaFinal as dFechaFinalEst, e.dFechaInicio, e.dFechaFinal ' +
    'From estimacionperiodo ep ' +
    'inner join estimaciones e on (ep.sContrato = e.sContrato and ep.iNumeroEstimacion = e.iNumeroEstimacion and e.sNumeroGenerador =:Generador ) ' +
    'where ep.sContrato =:Contrato And ep.iNumeroEstimacion =:Estimacion ');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Estimacion').DataType := ftString;
  QryGenerador.Params.ParamByName('Estimacion').Value := sParamEstimacion;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  rCaratula.LoadFromFile(global_files + 'hojaseggeneradores.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryConfiguracion.Destroy;

  dsGenerador.Destroy;
  dsConfiguracion.Destroy;

end;


procedure procCaratulaGeneradorPerf(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sCadena, sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden, dAcumuladoGral, dMonto,
    dAcumuladoAnexo: Currency;
  iValorNumerico: LongInt;
  Resultado: Real;
  mOrdenCambio: WideString;
  lAlterno: boolean;
begin
   //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;
  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,  ' +
    'c.bImagen, c.sContrato, c.sRFC, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra,  ' +
    'cv.dFechaInicio, cv.dFechaFinal, cv.dMontoMN ' +
    'From contratos c2 ' +
    'INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'INNER JOIN convenios cv  on (c.sContrato=cv.sContrato And c.sIdConvenio=cv.sIdConvenio)' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryTrinomios := TZReadOnlyQuery.Create(tOrigen);
  QryTrinomios.Connection := connection.zconnection;
  dsCentroCosto := TfrxDBDataSet.Create(tOrigen);
  dsCentroCosto.FieldAliases.Clear;
  dsCentroCosto.DataSet := QryTrinomios;
  dsCentroCosto.UserName := 'dsCentroCosto';

  QryTrinomios.Active := False;
  QryTrinomios.SQL.Clear;
  QryTrinomios.SQL.Add('select sBeneficio From contrato_trinomio Where sContrato  = :Contrato And sInstalacion = :Orden');
  QryTrinomios.Params.ParamByName('Contrato').DataType := ftString;
  QryTrinomios.Params.ParamByName('Contrato').Value := sParamContrato;
  QryTrinomios.Params.ParamByName('Orden').DataType := ftString;
  QryTrinomios.Params.ParamByName('Orden').Value := sParamOrden;
  QryTrinomios.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAlternos := TZReadOnlyQuery.Create(tOrigen);
  QryAlternos.Connection := connection.zconnection;


  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  QryAcumulados.Active := False;
  QryAlternos.SQL.Clear;
  QryAlternos.SQL.Add('select sum(e.dCantidad*a.dVentaMN) as SumaGenerador from estimacionxpartida e ' +
    'inner join actividadesxanexo a On (a.sContrato=e.sContrato And e.sNumeroActividad=a.sNumeroActividad) ' +
    'where e.sContrato = :Contrato And e.sNumeroGenerador = :Generador ' +
    'And a.sIdConvenio = :Convenio And a.sTipoActividad="Actividad" And e.sNumeroOrden = :Orden ' +
    'group by e.sNumeroGenerador');
  QryAlternos.Params.ParamByName('Contrato').DataType := ftString;
  QryAlternos.Params.ParamByName('Contrato').Value := global_contrato;
  QryAlternos.Params.ParamByName('Convenio').DataType := ftString;
  QryAlternos.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryAlternos.Params.ParamByName('Generador').DataType := ftString;
  QryAlternos.Params.ParamByName('Generador').Value := sParamGenerador;
  QryAlternos.Params.ParamByName('Orden').DataType := ftString;
  QryAlternos.Params.ParamByName('Orden').Value := sParamOrden;
  QryAlternos.Open;
  if QryAlternos.RecordCount > 0 then
  begin
    dMonto := QryAlternos.FieldValues['SumaGenerador'];
    iValorNumerico := Trunc(dMonto);
    sCadena := xIntToLletres(iValorNumerico) + ' PESOS CON ';
    Resultado := roundto(dMonto - iValorNumerico, -2);
    Resultado := Resultado * 100;
    iValorNumerico := Trunc(Resultado);
    sCadena := sCadena + xIntToLletres(iValorNumerico) + ' CENTAVOS /100 M.N.';
  end;

  QryAlternos.Active := False;
  QryAlternos.SQL.Clear;
  QryAlternos.SQL.Add('select sum(e.dCantidad*a.dVentaMN) as SumaAnexo from estimacionxpartida e ' +
    'inner join actividadesxanexo a On (a.sContrato=e.sContrato And e.sWbs=a.sWbs) ' +
    'where e.sContrato = :Contrato ' +
    'And a.sIdConvenio = :Convenio And a.sTipoActividad="Actividad" ' +
    'group by e.sContrato');
  QryAlternos.Params.ParamByName('Contrato').DataType := ftString;
  QryAlternos.Params.ParamByName('Contrato').Value := global_contrato;
  QryAlternos.Params.ParamByName('Convenio').DataType := ftString;
  QryAlternos.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryAlternos.Open;
  if QryAlternos.RecordCount > 0 then
    dAcumuladoGral := QryAlternos.FieldValues['SumaAnexo'];

  //detalle de partidas
  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dVentaMN', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sIdPlataforma', ftstring, 10, True);
  rxGenerador.FieldDefs.Add('sEquipo', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sPozo', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sCosto', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sCentroGestorEjecutor', ftstring, 16, True);
  rxGenerador.FieldDefs.Add('sBeneficio', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sCuentaMayor', ftstring, 8, True);
  rxGenerador.FieldDefs.Add('sPosicionFinanciera', ftstring, 9, True);
  rxGenerador.FieldDefs.Add('sActividad', ftstring, 10, True);
  rxGenerador.FieldDefs.Add('sFondo', ftstring, 10, True);
  rxGenerador.FieldDefs.Add('sElementoPEP', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sUtilizacionFondo', ftstring, 25, True);
  rxGenerador.FieldDefs.Add('dMonto', ftFloat, 0, True);
  rxGenerador.fieldDefs.Add('dAcumuladoGral', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sLetra', ftString, 190, True);
  rxGenerador.Active := True;

//  rxGenerador.FieldValues['dMonto'] =

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);
  rCaratula.DataSets.Add(dsCentroCosto);

  //soad -> cambio para programadas caratula de estimacion...
  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  if (Global_Optativa = 'PROGRAMADA') or (Global_Optativa = 'MIXTA') then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, a.dVentaMN,' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
      'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
      'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
      'e1.sNumeroGenerador = e2.sNumeroGenerador and e1.sWbsContrato = a.sWbs and e1.sNumeroActividad = a.sNumeroActividad ) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Group by e1.sWbs Order By a.iItemOrden, e1.sIsometrico, e1.sPrefijo')
  else
    QryGenerador.SQL.Add('Select a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, a.dVentaMN, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
      'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
      'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
      'e1.sNumeroGenerador = e2.sNumeroGenerador and e1.sWbsContrato = a.sWbs and e1.sNumeroActividad = a.sNumeroActividad And e1.sWbs=a.sWbs ) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Group by e1.sWbs Order By a.iItemOrden, e1.sIsometrico, e1.sPrefijo');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    while not QryGenerador.Eof do
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['dMonto'] := dMonto;
      rxGenerador.FieldValues['dAcumuladoGral'] := dAcumuladoGral;
      rxGenerador.FieldValues['sLetra'] := sCadena;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['dVentaMN'] := QryGenerador.FieldValues['dVentaMN'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
      rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];

      //Obtenemos la cantidad de Anexo de las partidas dentro del programa principal.. <ivan>
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
        'sIdConvenio = :Convenio And sWbs = :Wbs And sTipoActividad = "Actividad"');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
      QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
      QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
      QryAcumulados.Open;

      if QryAcumulados.RecordCount > 0 then
        rxGenerador.FieldValues['dCantidadAnexo'] := QryAcumulados.FieldValues['dCantidadAnexo']
      else
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      lAlterno := False;
      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAlternos.Active := False;
          QryAlternos.SQL.Clear;
          QryAlternos.SQL.Add('Select c.*, o.sPozo, o.sIdPlataforma, o.sEquipo, a.dCantidad From actividadesxorden a ' +
            'Inner Join Ordenesdetrabajo o On (a.sContrato=o.sContrato And a.sNumeroOrden=o.sNumeroOrden) ' +
            'Inner Join contrato_trinomio c On (o.sContrato=c.sContrato And o.sNumeroOrden=c.sInstalacion) ' +
            'Where a.sContrato = :Contrato And a.sNumeroOrden = :Orden And ' +
            'a.sIdConvenio = :Convenio And a.sNumeroActividad = :Actividad a.sWbsContrato = :Wbs And a.sTipoActividad = "Actividad"');
          QryAlternos.Params.ParamByName('Contrato').DataType := ftString;
          QryAlternos.Params.ParamByName('Contrato').Value := global_contrato;
          QryAlternos.Params.ParamByName('orden').DataType := ftString;
          QryAlternos.Params.ParamByName('orden').Value := sParamOrden;
          QryAlternos.Params.ParamByName('Convenio').DataType := ftString;
          QryAlternos.Params.ParamByName('Convenio').Value := sParamConvenio;
          QryAlternos.Params.ParamByName('Actividad').DataType := ftString;
          QryAlternos.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAlternos.Params.ParamByName('Wbs').DataType := ftString;
          QryAlternos.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAlternos.Open;

          dCantidadOrden := 0;
          while not QryAlternos.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAlternos.FieldValues['dCantidad'];
            QryAlternos.Next;
            lAlterno := True;
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sNumeroActividad = :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sWbsContrato = :Wbs  And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sNumeroActividad = :Actividad) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sNumeroActividad');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;
        dAcumuladoAnexo := 0;

        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];

        if lAlterno then
        begin
          rxGenerador.FieldValues['sIdPlataforma'] := QryAlternos.FieldValues['sIdPlataforma'];
          rxGenerador.FieldValues['sEquipo'] := QryAlternos.FieldValues['sEquipo'];
          rxGenerador.FieldValues['sPozo'] := QryAlternos.FieldValues['sPozo'];
          rxGenerador.FieldValues['sCosto'] := QryAlternos.FieldValues['sCosto'];
          rxGenerador.FieldValues['sCentroGestorEjecutor'] := QryAlternos.FieldValues['sCentroGestorEjecutor'];
          rxGenerador.FieldValues['sBeneficio'] := QryAlternos.FieldValues['sBeneficio'];
          rxGenerador.FieldValues['sCuentaMayor'] := QryAlternos.FieldValues['sCuentaMayor'];
          rxGenerador.FieldValues['sPosicionFinanciera'] := QryAlternos.FieldValues['sPosicionFinanciera'];
          rxGenerador.FieldValues['sActividad'] := QryAlternos.FieldValues['sActividad'];
          rxGenerador.FieldValues['sFondo'] := QryAlternos.FieldValues['sFondo'];
          rxGenerador.FieldValues['sElementoPEP'] := QryAlternos.FieldValues['sElementoPEP'];
          rxGenerador.FieldValues['sUtilizacionFondo'] := QryAlternos.FieldValues['sUtilizacionFondo'];
        end;
      end;

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
  if lParamMultiple then
    rCaratula.LoadFromFile(global_files + 'CaratulaGeneradorMultiplePerf.fr3')
  else
    rCaratula.LoadFromFile(global_files + 'CaratulaGenerador.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
  qryTrinomios.Destroy;
  qryAlternos.Destroy;
  dsCentroCosto.Destroy;

end;

procedure procCaratulaGeneradorGob(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean );
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 30, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);
  rCaratula.DataSets.Add(dsCentroCosto);

//  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sWbs as sNumeroActividad, a.sMedida, a.dCantidad as dCantidadAnexo, a.mDescripcion, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxorden a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador And e1.sWbs = a.sWbs And e1.sNumeroActividad = a.sNumeroActividad) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'where a.sContrato = :Contrato And a.sIdConvenio = :Convenio Order By a.iItemOrden, e1.sIsometrico, e1.sPrefijo');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    while not QryGenerador.Eof do
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
      rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];
      rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];
      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
            'sIdConvenio = :Convenio And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;
          dCantidadOrden := 0;
          while not QryAcumulados.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
            QryAcumulados.Next
          end;


          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbs = :wbs) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sWbs');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('wbs').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;
          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbs = :wbs) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sWbs');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('wbs').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;
        dAcumuladoAnexo := 0;
        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
      end;

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;
  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
  if QryConfiguracion.FieldValues['iFirmas'] = '3' then
    rCaratula.LoadFromFile(global_files + 'CaratulaGeneradorGob.fr3')
  else
    rCaratula.LoadFromFile(global_files + 'CaratulaGenerador4Gob.fr3');
  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;


procedure procAlbumGeneradorGob(sParamContrato, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  QryAuxiliar,
    rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select o.sIdFolio, o.sDescripcionCorta, i.sIsometrico, i.sPrefijo, i.iImagen, i.bIsometrico, i.mDescripcion, ao.sNumeroActividad, ao.mDescripcion as DescripcionActividad, '+
                      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioAutoriza, '+
                      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimacionxisometrico i '+
                      'inner join estimaciones e2 on (i.sContrato = e2.sContrato And e2.sNumeroOrden = i.sNumeroOrden And e2.sNumeroGenerador = i.sNumeroGenerador) '+
                      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) '+
                      'Inner Join ordenesdetrabajo o On (e2.sContrato=o.sContrato And e2.sNumeroOrden=o.sNumeroOrden) '+
                      'Left Join actividadesxorden ao on (i.sContrato = ao.sContrato and ao.sIdConvenio =:Convenio and i.sNumeroOrden = ao.sNumeroOrden '+
                      'and ao.sWbs = i.sWbs and ao.sNumeroActividad = i.sNumeroActividad) '+
                      'where i.sContrato =:Contrato And i.sNumeroOrden =:Orden And i.sNumeroGenerador =:Generador group by ao.sNumeroActividad, i.sIsometrico, i.iImagen '+
                      'Order By ao.iItemOrden, i.sIsometrico, i.iImagen');
  QryGenerador.Params.ParamByName('Contrato').DataType  := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value     := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType  := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value     := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType     := ftString;
  QryGenerador.Params.ParamByName('Orden').Value        := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value    := sParamGenerador;
  QryGenerador.Open;

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
  rCaratula.LoadFromFile(global_files +  global_MiReporte + '_AlbumGenerador.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procListadeVerificacion(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

//  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, Sum(e1.dCantidad) as dGenerado, e1.iOrdenCambio, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Group By a.sNumeroActividad Order By a.iItemOrden');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;


  if QryGenerador.RecordCount > 0 then
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    sNumeroActividad := '';
    while not QryGenerador.Eof do
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
      rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];
      rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
      QryAcumulados.SQL.Add('Select Sum(dCantidad) as dAcumulado from estimacionxpartida a ' +
        'inner join estimaciones b on (a.sContrato = b.sContrato And a.sNumeroOrden = b.sNumeroOrden And a.sNumeroGenerador = b.sNumeroGenerador And b.dFechaFinal <= :Fecha) ' +
        'Where a.sContrato = :Contrato And a.sNumeroActividad = :Actividad ' +
        'Group By a.sNumeroActividad');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
      QryAcumulados.Params.ParamByName('Fecha').Value := QryGenerador.FieldValues['dFechaFinal'];
      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
      QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
      QryAcumulados.Open;
      dAcumuladoOrden := 0;
      if QryAcumulados.RecordCount > 0 then
        dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];



      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dGenerado'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;

      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select f.sReferencia, e.dCantidad from anexo_psuministro e ' +
        'inner join anexo_suministro f on (e.sContrato = f.sContrato And e.iFolio = f.iFolio And f.dFechaAviso <= :Fecha) ' +
        'where e.sContrato = :Contrato and e.sNumeroActividad = :Actividad Order By f.sReferencia');
      QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Contrato').Value := global_Contrato;
      QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := QryGenerador.FieldValues['dFechaFinal'];
      QryAuxiliar.Open;
      dAcumuladoAnexo := 0;
      if QryAuxiliar.RecordCount > 0 then
        while not QryAuxiliar.Eof do
        begin
          if rxGenerador.FieldValues['mComentarios'] <> '' then
            rxGenerador.FieldValues['mComentarios'] := rxGenerador.FieldValues['mComentarios'] + ', ';

          rxGenerador.FieldValues['mComentarios'] := rxGenerador.FieldValues['mComentarios'] + QryAuxiliar.FieldValues['sReferencia'];
          dAcumuladoAnexo := dAcumuladoAnexo + QryAuxiliar.FieldValues['dCantidad'];
          QryAuxiliar.Next
        end;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoAnexo;

      rxGenerador.Post;
      QryGenerador.Next
    end
  end;
  if QryConfiguracion.FieldValues['iFirmas'] = '2' then
    rCaratula.LoadFromFile(global_files + 'ListadeVerificacion2.fr3');

  if QryConfiguracion.FieldValues['iFirmas'] = '3' then
    rCaratula.LoadFromFile(global_files + 'ListadeVerificacion.fr3');

  if QryConfiguracion.FieldValues['iFirmas'] = '4' then
    rCaratula.LoadFromFile(global_files + 'ListadeVerificacion4.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport(True);
  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;




procedure procNumeroGenerador(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
   //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sTitulo, c2.sCodigo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';

//  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  if sParamReporte = 'Cliente' then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, sum(e1.dCantidad) as dGenerado, a.sAnexo, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo  ' +
      'from estimacionxpartida e1 inner join estimaciones e2 on ' +
      '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs And a.sTipoActividad = "Actividad" ) ' +
      'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador Group by ' +
      'e1.sIsometricoReferencia, e1.sNumeroActividad Order By e1.sIsometricoReferencia, a.iItemOrden, e1.sIsometrico, e1.sPrefijo');

  if sParamReporte = 'Contratista' then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, sum(e1.dCantidad) as dGenerado, a.sAnexo, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo ' +
      'from estimacionxpartida e1 inner join estimaciones e2 on ' +
      '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs And a.sTipoActividad = "Actividad") Where ' +
      'e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador Group by ' +
      'e1.sIsometrico, e1.sNumeroActividad Order By e1.sIsometrico, e1.sPrefijo, a.sWbs, a.iItemOrden');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    if sParamReporte = 'Cliente' then
      rCaratula.LoadFromFile(global_files + 'NumerosGeneradores.fr3')
    else
      rCaratula.LoadFromFile(global_files + 'NumerosGeneradoresContratista.fr3');

    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
   // rCaratula.ShowReport(FormatosExp, PermisosExp);
      rCaratula.ShowReport() ; 
  end
  else
    messageDLG('El Generador No Contiene Partidas!', mtInformation, [mbOK], 0);

  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;



procedure procNumeroGeneradorDespiezado(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;
  dsTitulos: TfrxDBDataSet;
  rxGenerador: TrxMemoryData;
  qryBuscarTitulo, qryBuscarAct: TZReadOnlyQuery;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
    //Revisado por <ivan> ... 16 Sept 2010..
  qryBuscarTitulo := tzReadOnlyQuery.Create(tOrigen);
  qryBuscarTitulo.Connection := Connection.zConnection;

  qryBuscarAct := tzReadOnlyQuery.Create(tOrigen);
  qryBuscarAct.Connection := Connection.zConnection;

  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsGenerador);
  rCaratula.DataSets.Add(dsTitulos);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;

  //VAMOS A sacar los Titulos de los Encabezados de los Anexos "C"
  qryBuscarAct.Active := False;
  qryBuscarAct.SQL.Clear;
  qryBuscarAct.SQL.Add('select distinct ep.sNumeroActividad, a.sWbsAnterior, a.mDescripcion ' +
    'from estimacionxpartida ep ' +
    'inner join actividadesxanexo a On ' +
    '(a.sContrato=ep.sContrato And a.sNumeroActividad=ep.sNumeroActividad ' +
    'And a.sTipoActividad="Actividad") ' +
    'Where ep.sContrato=:Contrato  And a.sIdConvenio=:Convenio ' +
    'And ep.sNumeroGenerador=:Generador And a.sIdFase <> "" order by a.iItemOrden ');
  qryBuscarAct.Params.ParamByName('Contrato').DataType := ftString;
  qryBuscarAct.Params.ParamByName('Contrato').Value := sParamContrato;
  qryBuscarAct.Params.ParamByName('Generador').DataType := ftString;
  qryBuscarAct.Params.ParamByName('Generador').Value := sParamGenerador;
  qryBuscarAct.Params.ParamByName('Convenio').DataType := ftString;
  qryBuscarAct.Params.ParamByName('Convenio').Value := Global_Convenio;
  qryBuscarAct.Open;

  if qryBuscarAct.RecordCount > 0 then
  begin
    qryBuscarAct.First;
    while not qryBuscarAct.Eof do
    begin

      qryBuscarTitulo.Active := False;
      qryBuscarTitulo.SQL.Clear;
      qryBuscarTitulo.SQL.Add('Select sNumeroActividad, iItemOrden, mDescripcion From actividadesxanexo Where sContrato =:Contrato ' +
        'And sIdConvenio = :Convenio And sWbs =:Wbs And sTipoActividad="Paquete" ');
      qryBuscarTitulo.Params.ParamByName('Contrato').DataType := ftString;
      qryBuscarTitulo.Params.ParamByName('Contrato').Value := sParamContrato;
      qryBuscarTitulo.Params.ParamByName('Convenio').DataType := ftString;
      qryBuscarTitulo.Params.ParamByName('Convenio').Value := sParamConvenio;
      qryBuscarTitulo.Params.ParamByName('Wbs').DataType := ftString;
      qryBuscarTitulo.Params.ParamByName('Wbs').Value := qryBuscarAct.FieldValues['sWbsAnterior'];
      qryBuscarTitulo.Open;
      if qryBuscarTitulo.RecordCount > 0 then
      begin
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('update estimacionxpartida set sTitulo =:Titulo where sContrato =:Contrato and ' +
          'sNumeroGenerador =:Generador And sNumeroActividad =:Partida');
        Connection.zCommand.Params.ParamByName('Titulo').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Titulo').Value := qryBuscarTitulo.FieldValues['mDescripcion'];
        Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Generador').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Generador').Value := sParamGenerador;
        Connection.zCommand.Params.ParamByName('Partida').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Partida').Value := qryBuscarAct.FieldValues['sNumeroActividad'];
        Connection.zCommand.ExecSQL;
        qryBuscarAct.Next;
      end
      else
        qryBuscarAct.Next;
    end;
  end;

  if sParamReporte = 'Cliente' then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sWbsAnterior, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
      'e1.nPiezas, e1.sMarcaRev, e1.sSubMca, e1.sLongArea, e1.sLongAreaTotal, e1.sPesoxUnidad, e1.dPesoTotal,  ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, ' +
      'e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.sTitulo, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo ' +
      'from estimacionxpartida e1 inner join estimaciones e2 on ' +
      '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And ' +
      'e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs And a.sTipoActividad = "Actividad" ) Where ' +
      'e1.sContrato = :Contrato And a.sMedida <> "ACTIVIDAD" And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador  ' +
      'Order By a.iItemOrden, e1.sNumeroActividad, e1.sIsometricoReferencia, e1.sMarcaRev, e1.sSubMca ');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;


  if QryGenerador.RecordCount > 0 then
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    if sParamReporte = 'Cliente' then
      rCaratula.LoadFromFile(global_files + 'NumerosGeneradoresDespiezados.fr3');

    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
    rCaratula.ShowReport();
  end;

  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;



procedure procSemanalSinConImportes(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  //Revisado por <ivan> ... 17 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sTitulo, c2.sCodigo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,  ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';
  //  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, a.dVentaMN, a.dVentaDLL, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, e2.dFechaFinal, ' +
    'e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, a.sAnexo, ' +
    'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, sum(e1.dCantidad) as dGenerado, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo ' +
    'from estimacionxpartida e1 inner join estimaciones e2 on ' +
    '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs ' +
    'And a.sTipoActividad = "Actividad" And a.sMedida<>"ACTIVIDAD" ) ' +
    'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador And e1.lEstima = "Si" Group by ' +
    'e1.sNumeroActividad Order By a.iItemOrden');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;
  if QryGenerador.RecordCount = 0 then
    messageDLG('El Generador No Contine Partidas!', mtInformation, [mbOk], 0)
  else
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    if sParamReporte = 'Sin Importes' then
      rCaratula.LoadFromFile(global_files + 'SemanalSinImportes.fr3');

    if (sParamReporte = 'Con Importes') and (global_Caratula = 'MN') then
      rCaratula.LoadFromFile(global_files + 'SemanalConImportes.fr3');

    if (sParamReporte = 'Con Importes') and (global_Caratula = 'DLL') then
      rCaratula.LoadFromFile(global_files + 'SemanalConImportesDLL.fr3');

    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
 //   rCaratula.ShowReport(FormatosExp, PermisosExp);
      rCaratula.ShowReport();
  end;
  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procAvancesHistorico(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; dParamFecha: tDate; lParamMultiple: Boolean; tOrigen: TComponent);
var
  QryBuscarAvances: tzReadOnlyQuery;
  QryBuscaReporte: tzReadOnlyQuery;
  QryBuscarTurnos: tzReadOnlyQuery;
  dProgramadoOrdenActual_Aux,
    dProgramadoOrdenAcumulado_Aux: Double;
  sTurno: string;
begin
  dProgramadoGlobalAnterior := 0;
  dProgramadoGlobalActual := 0;
  dProgramadoGlobalAcumulado := 0;
  dRealGlobalAnterior := 0;
  dRealGlobalActual := 0;
  dRealGlobalAcumulado := 0;

  dProgramadoOrdenAnterior := 0;
  dProgramadoOrdenActual := 0;
  dProgramadoOrdenAcumulado := 0;
  dRealOrdenAnterior := 0;
  dRealOrdenActual := 0;
  dRealOrdenAcumulado := 0;

  QryBuscarAvances := tzReadOnlyQuery.Create(tOrigen);
  QryBuscarAvances.Connection := connection.zconnection;

  QryBuscarTurnos := tzReadOnlyQuery.Create(tOrigen);
  QryBuscarTurnos.Connection := connection.zconnection;
  if not lParamMultiple then
  begin
      // busco el avance global anterior
      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      QryBuscarAvances.SQL.Add('Select dAvancePonderadoDia, dAvancePonderadoGlobal from avancesglobales where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = ""');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAvances.Open;
      if QryBuscarAvances.RecordCount > 0 then
      begin
        dProgramadoGlobalActual := QryBuscarAvances.FieldValues['dAvancePonderadoDia'];
        dProgramadoGlobalAcumulado := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
        dProgramadoGlobalAnterior := dProgramadoGlobalAcumulado - dProgramadoGlobalActual
      end
      else
      begin
        QryBuscarAvances.Active := False;
        QryBuscarAvances.SQL.Clear;
        QryBuscarAvances.SQL.Add('Select dAvancePonderadoDia, dAvancePonderadoGlobal from avancesglobales where sContrato = :Contrato and ' +
          'sIdConvenio = :Convenio And sNumeroOrden = "" And dIdFecha < :fecha Order By dIdFecha DESC');
        QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
        QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
        QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
        QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
        QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
        QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
        QryBuscarAvances.Open;
        if QryBuscarAvances.RecordCount > 0 then
        begin
          dProgramadoGlobalAcumulado := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
          if dProgramadoOrdenAcumulado < 100 then
          begin
            dProgramadoGlobalActual := QryBuscarAvances.FieldValues['dAvancePonderadoDia'];
            dProgramadoGlobalAnterior := dProgramadoGlobalAcumulado - dProgramadoGlobalActual
          end
          else
          begin
            dProgramadoGlobalActual := 0;
            dProgramadoGlobalAnterior := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
          end
        end
      end;

        // busco el avance global anterior
      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      QryBuscarAvances.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from avancesglobalesxorden where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And sNumeroOrden = "" And dIdFecha < :fecha Group By sContrato');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAvances.Open;
      if QryBuscarAvances.RecordCount > 0 then
        dRealGlobalAnterior := QryBuscarAvances.FieldValues['dAvanceGlobal'];

      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      QryBuscarAvances.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = "" Group By sContrato');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAvances.Open;
      if QryBuscarAvances.RecordCount > 0 then
        dRealGlobalActual := QryBuscarAvances.FieldValues['dAvance'];

      dRealGlobalAcumulado := dRealGlobalAnterior + dRealGlobalActual;
  end
  else
  begin
      // busco el avance global anterior
      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      (*QryBuscarAvances.SQL.Add('Select dAvancePonderadoDia, dAvancePonderadoGlobal from avancesglobales where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = ""'); *)
      QryBuscarAvances.SQL.Add('Select sum(b.dAvancePonderadoDia) as dAvancePonderadoDia,a.dAvancePonderadoGlobal ' +
        'from avancesglobales a left join avancesglobales b ' +
        'on (b.sContrato = a.sContrato and b.sIdConvenio = a.sIdConvenio and ' +
        'b.sNumeroOrden = a.sNumeroOrden and b.dIdFecha = :fecha) ' +
        'where a.sContrato =:contrato and a.sIdConvenio = :convenio And ' +
        'a.sNumeroOrden = "" And a.dIdFecha = (select max(b.dIdFecha) ' +
        'from avancesglobales b where b.sContrato = a.sContrato and ' +
        'b.sIdConvenio = a.sIdConvenio and b.sNumeroOrden = a.sNumeroOrden and ' +
        'b.dIdFecha <= :fecha) group by a.sContrato');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAvances.Open;

      dProgramadoGlobalActual := QryBuscarAvances.Fieldbyname('dAvancePonderadoDia').AsFloat;
      dProgramadoGlobalAcumulado := QryBuscarAvances.Fieldbyname('dAvancePonderadoGlobal').AsFloat;
      dProgramadoGlobalAnterior := dProgramadoGlobalAcumulado - dProgramadoGlobalActual;

      //Codigo comentado, codigo eliminado,,

      // busco el avance global anterior
      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      QryBuscarAvances.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from avancesglobalesxorden where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And sNumeroOrden = "" And dIdFecha < :fecha Group By sContrato');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value    := dParamFecha;
      QryBuscarAvances.Open;

      if QryBuscarAvances.RecordCount > 0 then
        dRealGlobalAnterior := QryBuscarAvances.FieldValues['dAvanceGlobal'];

      {Obtenemos el avance fisico por turno..}
      QryBuscarTurnos.Active := False;
      QryBuscarTurnos.SQL.Clear;
      QryBuscarTurnos.SQL.Add('select sIdTurno from turnos where sContrato =:Contrato and sIdTurno <=:Turno order by sIdTurno ');
      QryBuscarTurnos.ParamByName('Contrato').AsString := sParamContrato;
      QryBuscarTurnos.ParamByName('Turno').AsString := sParamTurno;
      QryBuscarTurnos.Open;

      while not QryBuscarTurnos.Eof do
      begin
          QryBuscarAvances.Active := False;
          QryBuscarAvances.SQL.Clear;
          QryBuscarAvances.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from avancesglobalesxorden where sContrato = :Contrato and ' +
            'sIdConvenio = :Convenio And sNumeroOrden = "" And dIdFecha =:fecha and sIdTurno < :Turno Group By sContrato');
          QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
          QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
          QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
          QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
          QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
          QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
          QryBuscarAvances.Params.ParamByName('Turno').DataType := ftString;
          QryBuscarAvances.Params.ParamByName('Turno').Value := QryBuscarTurnos.FieldValues['sIdTurno'];
          QryBuscarAvances.Open;

          if QryBuscarAvances.RecordCount > 0 then
            dRealGlobalAnterior := dRealGlobalAnterior + QryBuscarAvances.FieldValues['dAvanceGlobal'];
          QryBuscarTurnos.Next;
      end;

      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      QryBuscarAvances.SQL.Add('Select Sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = "" and sIdTurno =:Turno Group By sContrato');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAvances.Params.ParamByName('Turno').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('Turno').Value := QryBuscarTurnos.FieldValues['sIdTurno'];
      QryBuscarAvances.Open;
      if QryBuscarAvances.RecordCount > 0 then
        dRealGlobalActual := QryBuscarAvances.FieldValues['dAvance'];

      dRealGlobalAcumulado := dRealGlobalAnterior + dRealGlobalActual;

      //Vamos con los avances de la orden
      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      QryBuscarAvances.SQL.Add('Select dAvancePonderadoDia, dAvancePonderadoGlobal from avancesglobales where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = :Orden');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAvances.Open;

      if QryBuscarAvances.RecordCount > 0 then
      begin
          dProgramadoOrdenActual := QryBuscarAvances.FieldValues['dAvancePonderadoDia'];
          dProgramadoOrdenAcumulado := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
           {
           adal2404 : 09/10/2011 10.29 pm
           leer el avance acumulado del dia anterior ya que se hacen adaptaciones para los decimales
           en caso de no encontrar nada el dia anterior,  hacer la operacion de resta
           }
          begin
            QryBuscarAvances.Active := false;
            QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
            QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
            QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
            QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
            QryBuscarAvances.Params.ParamByName('Orden').DataType := ftString;
            QryBuscarAvances.Params.ParamByName('Orden').Value := sParamOrden;
            QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
            QryBuscarAvances.Params.ParamByName('Fecha').Value := IncDay(dParamFecha, -1);
            QryBuscarAvances.Open;
            if QryBuscarAvances.RecordCount > 0 then
            begin
              dProgramadoOrdenAnterior := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
            end
            else
            begin
              dProgramadoOrdenAnterior := dProgramadoOrdenAcumulado - dProgramadoOrdenActual;
            end;
          end;

      end
      else
      begin
          QryBuscarAvances.Active := False;
          QryBuscarAvances.SQL.Clear;
          QryBuscarAvances.SQL.Add('Select dAvancePonderadoDia, dAvancePonderadoGlobal from avancesglobales where sContrato = :Contrato and ' +
            'sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha < :fecha Order By dIdFecha DESC');
          QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
          QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
          QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
          QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
          QryBuscarAvances.Params.ParamByName('Orden').DataType := ftString;
          QryBuscarAvances.Params.ParamByName('Orden').Value := sParamOrden;
          QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
          QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
          QryBuscarAvances.Open;
          if QryBuscarAvances.RecordCount > 0 then
          begin
              dProgramadoOrdenAcumulado := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
              if dProgramadoOrdenAcumulado < 100 then
              begin
                dProgramadoOrdenActual := QryBuscarAvances.FieldValues['dAvancePonderadoDia'];
           {
           adal2404 : 09/10/2011 11.16 pm
           leer el avance acumulado del dia anterior ya que se hacen adaptaciones para los decimales
           en caso de no encontrar nada el dia anterior,  hacer la operacion de resta
           }
            begin
              QryBuscarAvances.Active := false;
              QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
              QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
              QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
              QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
              QryBuscarAvances.Params.ParamByName('Orden').DataType := ftString;
              QryBuscarAvances.Params.ParamByName('Orden').Value := sParamOrden;
              QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
              QryBuscarAvances.Params.ParamByName('Fecha').Value := IncDay(dParamFecha, -1);
              QryBuscarAvances.Open;
              if QryBuscarAvances.RecordCount > 0 then
              begin
                dProgramadoOrdenAnterior := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
              end
              else
              begin
                dProgramadoOrdenAnterior := dProgramadoOrdenAcumulado - dProgramadoOrdenActual;
              end;
            end;
          end
          else
          begin
            dProgramadoOrdenAnterior := QryBuscarAvances.FieldValues['dAvancePonderadoGlobal'];
            dProgramadoOrdenActual := 0;
          end
        end
      end;

    {Obtenermos turnos OSA,, ivan,,}
    QryBuscarTurnos.Active := False;
    QryBuscarTurnos.SQL.Clear;
    QryBuscarTurnos.SQL.Add('select t.sIdTurno from turnos t ' +
      'inner join reportediario r on (r.sContrato = t.sContrato and r.sNumeroOrden =:Orden and r.dIdFecha =:Fecha and r.sIdTurno = t.sIdTurno) ' +
      'where t.sContrato =:Contrato order by t.sIdTurno DESC');
    QryBuscarTurnos.ParamByName('Contrato').AsString := sParamContrato;
    QryBuscarTurnos.ParamByName('Orden').AsString := sParamOrden;
    QryBuscarTurnos.ParamByName('Fecha').AsDate := dParamFecha;
    QryBuscarTurnos.Open;

    {Ahora dividimos el programado de acuerdo a los turnos..}
    if QryBuscarTurnos.RecordCount > 0 then
    begin
      dProgramadoOrdenActual_aux := dProgramadoOrdenActual / QryBuscarTurnos.RecordCount;
      dProgramadoOrdenActual := dProgramadoOrdenActual_aux;
      sTurno := QryBuscarTurnos.FieldValues['sIdTurno'];
    end;

    {Consultamos el turno actual para calcular el programado por turno,,}
    QryBuscarTurnos.Active := False;
    QryBuscarTurnos.SQL.Clear;
    QryBuscarTurnos.SQL.Add('select sIdTurno from turnos where sContrato =:Contrato and sIdTurno < :Turno order by sIdTurno ');
    QryBuscarTurnos.ParamByName('Contrato').AsString := sParamContrato;
    QryBuscarTurnos.ParamByName('Turno').AsString := sParamTurno;
    QryBuscarTurnos.Open;

    while not QryBuscarTurnos.Eof do
    begin
      dProgramadoOrdenAnterior := dProgramadoOrdenAnterior + dProgramadoOrdenActual;
      QryBuscarTurnos.Next;
    end;

    {Esto es para cuadrar los datos al avnce del dia,,}
    if sParamTurno = sTurno then
      dProgramadoOrdenActual := dProgramadoOrdenAcumulado - dProgramadoOrdenAnterior
    else
      dProgramadoOrdenAcumulado := dProgramadoOrdenAnterior + dProgramadoOrdenActual;

    // busco el avance global anterior
    QryBuscarAvances.Active := False;
    QryBuscarAvances.SQL.Clear;
    QryBuscarAvances.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from avancesglobalesxorden where sContrato = :Contrato and ' +
      'sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha < :fecha Group By sContrato');
    QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
    QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
    QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
    QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
    QryBuscarAvances.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarAvances.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscarAvances.Open;

    if QryBuscarAvances.RecordCount > 0 then
      dRealOrdenAnterior := QryBuscarAvances.FieldValues['dAvanceGlobal'];

    {Obtenemos el avance fisico por turno..}
    QryBuscarTurnos.Active := False;
    QryBuscarTurnos.SQL.Clear;
    QryBuscarTurnos.SQL.Add('select sIdTurno from turnos where sContrato =:Contrato and sIdTurno <=:Turno order by sIdTurno ');
    QryBuscarTurnos.ParamByName('Contrato').AsString := sParamContrato;
    QryBuscarTurnos.ParamByName('Turno').AsString := sParamTurno;
    QryBuscarTurnos.Open;

    while not QryBuscarTurnos.Eof do
    begin
      QryBuscarAvances.Active := False;
      QryBuscarAvances.SQL.Clear;
      QryBuscarAvances.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from avancesglobalesxorden where sContrato = :Contrato and ' +
        'sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha =:fecha and sIdTurno < :Turno Group By sContrato');
      QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
      QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
      QryBuscarAvances.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscarAvances.Params.ParamByName('Turno').DataType := ftString;
      QryBuscarAvances.Params.ParamByName('Turno').Value := QryBuscarTurnos.FieldValues['sIdTurno'];
      QryBuscarAvances.Open;

      if QryBuscarAvances.RecordCount > 0 then
        dRealOrdenAnterior := dRealOrdenAnterior + QryBuscarAvances.FieldValues['dAvanceGlobal'];
      QryBuscarTurnos.Next;
    end;

    QryBuscarAvances.Active := False;
    QryBuscarAvances.SQL.Clear;
    QryBuscarAvances.SQL.Add('Select Sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and ' +
      'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = :Orden and sIdTurno = :Turno Group By sContrato');
    QryBuscarAvances.Params.ParamByName('contrato').DataType := ftString;
    QryBuscarAvances.Params.ParamByName('contrato').Value := sParamContrato;
    QryBuscarAvances.Params.ParamByName('convenio').DataType := ftString;
    QryBuscarAvances.Params.ParamByName('convenio').Value := sParamConvenio;
    QryBuscarAvances.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarAvances.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscarAvances.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscarAvances.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscarAvances.Params.ParamByName('Turno').DataType := ftString;
    QryBuscarAvances.Params.ParamByName('Turno').Value := QryBuscarTurnos.FieldValues['sIdTurno'];
    QryBuscarAvances.Open;

    if QryBuscarAvances.RecordCount > 0 then
      dRealOrdenActual := QryBuscarAvances.FieldValues['dAvance'];

    dRealOrdenAcumulado := dRealOrdenAnterior + dRealOrdenActual;
  end;
  QryBuscarAvances.Destroy;
  QryBuscarTurnos.Destroy;
end;


procedure procAvances(sParamContrato, sParamOrden, sParamConvenio, sParamTurno: string; dParamFecha: tDate; lParamMultiple: Boolean; tOrigen: TComponent);
var
  QryBuscaReporte: tzReadOnlyQuery;
begin
  dProgramadoGlobalAnterior := 0;
  dProgramadoGlobalActual := 0;
  dProgramadoGlobalAcumulado := 0;
  dRealGlobalAnterior := 0;
  dRealGlobalActual := 0;
  dRealGlobalAcumulado := 0;

  dProgramadoOrdenAnterior := 0;
  dProgramadoOrdenActual := 0;
  dProgramadoOrdenAcumulado := 0;
  dRealOrdenAnterior := 0;
  dRealOrdenActual := 0;
  dRealOrdenAcumulado := 0;
  procAvancesHistorico(sParamContrato, sParamOrden, sParamConvenio, sParamTurno, dParamFecha, lParamMultiple, tOrigen);
end;

procedure rDiarioFirmas(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent);
var
  QryBuscarFirmas: tzReadOnlyQuery;
begin
  sSuperIntendente := '';
  sSuperIntendentePatio := '';
  sRepresentanteTecnico := '';
  sSupervisor := '';
  sSupervisorPatio := '';
  sSupervisorGenerador := '';
  sSupervisorEstimacion := '';
  sSupervisorSubContratista := '';
  sPuestoSupervisorSubContratista := '';
  sPuestoSuperintendente := '';
  sPuestoSupervisor := '';
  sPuestoSupervisorGenerador := '';
  sPuestoSupervisorEstimacion := '';
  sSupervisorTierra := '';
  sPuestoSupervisorTierra := '';
  sPuestoRepresentanteTecnico := '';
  sResidente := '';
  sPuestoResidente := '';
  QryBuscarFirmas := tzReadOnlyQuery.Create(tOrigen);
  QryBuscarFirmas.Connection := connection.zconnection;
  QryBuscarFirmas.Active := False;
  QryBuscarFirmas.SQL.Clear;
  if sParamOrden <> '' then
  begin
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno and sNumeroOrden = :Orden And dIdFecha = :fecha');
    QryBuscarFirmas.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Orden').Value := sParamOrden;
  end
  else
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno And dIdFecha = :fecha');
  QryBuscarFirmas.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscarFirmas.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscarFirmas.Params.ParamByName('Turno').DataType := ftString;
  QryBuscarFirmas.Params.ParamByName('Turno').Value := sParamTurno;
  QryBuscarFirmas.Params.ParamByName('fecha').DataType := ftDate;
  QryBuscarFirmas.Params.ParamByName('fecha').Value := dParamFecha;
  QryBuscarFirmas.Open;
  if QryBuscarFirmas.RecordCount > 0 then
  begin
    sSuperintendente := QryBuscarFirmas.FieldValues['sFirmante1'];
    sSuperintendentePatio := QryBuscarFirmas.FieldValues['sFirmante7'];
    sRepresentanteTecnico := QryBuscarFirmas.FieldValues['sFirmante9'];
    sSupervisor := QryBuscarFirmas.FieldValues['sFirmante2'];
    sSupervisorPatio := QryBuscarFirmas.FieldValues['sFirmante8'];
    sSupervisorGenerador := QryBuscarFirmas.FieldValues['sFirmante3'];
    sSupervisorEstimacion := QryBuscarFirmas.FieldValues['sFirmante4'];
    sSupervisorTierra := QryBuscarFirmas.FieldValues['sFirmante5'];
    sResidente := QryBuscarFirmas.FieldValues['sFirmante6'];
    sSupervisorSubContratista := QryBuscarFirmas.FieldValues['sFirmante10'];

    sPuestoSuperintendente := QryBuscarFirmas.FieldValues['sPuesto1'];
    sPuestoSuperintendentePatio := QryBuscarFirmas.FieldValues['sPuesto7'];
    sPuestoRepresentanteTecnico := QryBuscarFirmas.FieldValues['sPuesto9'];
    sPuestoSupervisor := QryBuscarFirmas.FieldValues['sPuesto2'];
    sPuestoSupervisorPatio := QryBuscarFirmas.FieldValues['sPuesto8'];
    sPuestoSupervisorGenerador := QryBuscarFirmas.FieldValues['sPuesto3'];
    sPuestoSupervisorEstimacion := QryBuscarFirmas.FieldValues['sPuesto4'];
    sPuestoSupervisorTierra := QryBuscarFirmas.FieldValues['sPuesto5'];
    sPuestoResidente := QryBuscarFirmas.FieldValues['sPuesto6'];
    sPuestoSupervisorSubContratista := QryBuscarFirmas.FieldValues['sPuesto10'];
  end
  else
  begin
    QryBuscarFirmas.Active := False;
    QryBuscarFirmas.SQL.Clear;
    if sParamOrden <> '' then
    begin
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sNumeroOrden = :Orden and sIdTurno =:Turno And dIdFecha <= :fecha Order By dIdFecha DESC');
      QryBuscarFirmas.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarFirmas.Params.ParamByName('Orden').Value := sParamOrden;
    end
    else
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno And dIdFecha <= :fecha Order By dIdFecha DESC');

    QryBuscarFirmas.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarFirmas.Params.ParamByName('Turno').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Turno').Value := sParamTurno;
    QryBuscarFirmas.Params.ParamByName('fecha').DataType := ftDate;
    QryBuscarFirmas.Params.ParamByName('fecha').Value := dParamFecha;
    QryBuscarFirmas.Open;
    if QryBuscarFirmas.RecordCount > 0 then
    begin
      sSuperintendente := QryBuscarFirmas.FieldValues['sFirmante1'];
      sSuperintendentePatio := QryBuscarFirmas.FieldValues['sFirmante7'];
      sRepresentanteTecnico := QryBuscarFirmas.FieldValues['sFirmante9'];
      sSupervisor := QryBuscarFirmas.FieldValues['sFirmante2'];
      sSupervisorPatio := QryBuscarFirmas.FieldValues['sFirmante8'];
      sSupervisorGenerador := QryBuscarFirmas.FieldValues['sFirmante3'];
      sSupervisorEstimacion := QryBuscarFirmas.FieldValues['sFirmante4'];
      sSupervisorTierra := QryBuscarFirmas.FieldValues['sFirmante5'];
      sResidente := QryBuscarFirmas.FieldValues['sFirmante6'];
      sPuestoSuperintendente := QryBuscarFirmas.FieldValues['sPuesto1'];
      sPuestoSuperintendentePatio := QryBuscarFirmas.FieldValues['sPuesto7'];
      sPuestoSupervisor := QryBuscarFirmas.FieldValues['sPuesto2'];
      sPuestoSupervisorPatio := QryBuscarFirmas.FieldValues['sPuesto8'];
      sPuestoRepresentanteTecnico := QryBuscarFirmas.FieldValues['sPuesto9'];
      sPuestoSupervisorGenerador := QryBuscarFirmas.FieldValues['sPuesto3'];
      sPuestoSupervisorEstimacion := QryBuscarFirmas.FieldValues['sPuesto4'];
      sPuestoSupervisorTierra := QryBuscarFirmas.FieldValues['sPuesto5'];
      sPuestoResidente := QryBuscarFirmas.FieldValues['sPuesto6'];

      sSupervisorSubContratista := QryBuscarFirmas.FieldValues['sFirmante10'];
      sPuestoSupervisorSubContratista := QryBuscarFirmas.FieldValues['sPuesto10'];
    end
  end;
  QryBuscarFirmas.Destroy;
end;

//Unidad Crea Objetos  ////////////////////////////////////////////////
procedure procCreateObject(tOrigen: TComponent);
begin
  rDiario := TfrxReport.Create(tOrigen);
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := lCheckMaximized();
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;


  mMovimientos := TrxMemoryData.Create(tOrigen);
  mMovimientos.Active := False;
  mMovimientos.FieldDefs.Add('sIdPernocta', ftString, 10, True);
  mMovimientos.FieldDefs.Add('sIdPlataforma', ftString, 10, True);
  mMovimientos.FieldDefs.Add('sIdEmbarcacion', ftString, 10, True);
  mMovimientos.FieldDefs.Add('iCampo', ftInteger, 0, True);
  mMovimientos.FieldDefs.Add('sRenglon', ftString, 25, True);
  mMovimientos.FieldDefs.Add('sHora', ftString, 5, True);
  mMovimientos.Active := True;

  mBitacora1 := TrxMemoryData.Create(tOrigen);
  mBitacora1.Active := False;
  mBitacora1.FieldDefs.Add('sContrato', ftString, 15, True);
  mBitacora1.FieldDefs.Add('sPaquete', ftString, 30, True);
  mBitacora1.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  mBitacora1.FieldDefs.Add('sActividadAnterior', ftString, 10, True);
  mBitacora1.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  mBitacora1.FieldDefs.Add('sMedida', ftString, 8, True);
  mBitacora1.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('dVentaMN', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('dAvance', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('sTipo', ftString, 20, True);
  mBitacora1.FieldDefs.Add('sTipoAnexo', ftString, 3, True);
  mBitacora1.FieldDefs.Add('sTipoSubActividad', ftString, 20, True);
  mBitacora1.FieldDefs.Add('iFase', ftInteger, 0, True);
  mBitacora1.FieldDefs.Add('dCantidadAnterior', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('dAvanceAnterior', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('dCantidadActual', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('dAvanceActual', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('iIdDiario', ftInteger, 0, True);
  mBitacora1.FieldDefs.Add('iConsec', ftInteger, 0, True);
  mBitacora1.FieldDefs.Add('lCancelada', ftString, 2, True);
  mBitacora1.FieldDefs.Add('mNotas', ftMemo, 0, True);
  mBitacora1.FieldDefs.Add('sNumeroActividadGrupo', ftString, 10, True);
  mBitacora1.FieldDefs.Add('sAnexo', ftString, 5, True);
  mBitacora1.Active := True;

  mBitacoraActividades := TrxMemoryData.Create(tOrigen);
  mBitacoraActividades.Active := False;
  mBitacoraActividades.FieldDefs.Add('sContrato', ftString, 15, True);
  mBitacoraActividades.FieldDefs.Add('sTipo', ftString, 10, True);
  mBitacoraActividades.FieldDefs.Add('sHoraInicio', ftString, 5, True);
  mBitacoraActividades.FieldDefs.Add('sHoraFinal', ftString, 5, True);
  mBitacoraActividades.FieldDefs.Add('sPaquete', ftString, 30, True);
  mBitacoraActividades.FieldDefs.Add('sNumeroActividad', ftString, 15, True);
  mBitacoraActividades.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  mBitacoraActividades.FieldDefs.Add('dAvance', ftFloat, 0, True);
  mBitacoraActividades.FieldDefs.Add('dAvanceAnterior', ftFloat, 0, True);
  mBitacoraActividades.FieldDefs.Add('dAvanceActual', ftFloat, 0, True);
  mBitacoraActividades.Active := True;

  mBitacora3 := TrxMemoryData.Create(tOrigen);
  mBitacora3.Active := False;
  mBitacora3.FieldDefs.Add('iIdDiario', ftInteger, 0, True);
  mBitacora3.FieldDefs.Add('sContrato', ftString, 15, True);
  mBitacora3.FieldDefs.Add('sIdComentario', ftString, 5, True);
  mBitacora3.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  mBitacora3.FieldDefs.Add('TipoMovimiento', ftString, 10, True);
  mBitacora3.FieldDefs.Add('DescripcionMovimiento', ftString, 250, True);
  mBitacora3.Active := True;

  mPernocta := TrxMemoryData.Create(tOrigen);
  mPernocta.Active := False;
  mPernocta.FieldDefs.Add('sContrato', ftString, 15, True);
  mPernocta.FieldDefs.Add('sIdPernocta', ftString, 20, True);
  mPernocta.FieldDefs.Add('sPernocta', ftString, 50, True);
  mPernocta.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  mPernocta.FieldDefs.Add('sTipoPernocta', ftString, 4, True);
  mPernocta.FieldDefs.Add('DescribePernocta', ftMemo, 200, True);
  mPernocta.Active := True;

  mTiempoPersonal := TrxMemoryData.Create(tOrigen);
  mTiempoPersonal.Active := False;
  mTiempoPersonal.FieldDefs.Add('sContrato', ftString, 15, True);
  mTiempoPersonal.FieldDefs.Add('sIdPersonalEquipo', ftString, 25, True);
  mTiempoPersonal.FieldDefs.Add('dCantidad1', ftFloat, 0, True);
  mTiempoPersonal.FieldDefs.Add('dCantidad2', ftFloat, 0, True);
  mTiempoPersonal.FieldDefs.Add('dCantidad3', ftFloat, 0, True);
  mTiempoPersonal.FieldDefs.Add('dCantidad4', ftFloat, 0, True);
  mTiempoPersonal.FieldDefs.Add('dCantidad5', ftFloat, 0, True);
  mTiempoPersonal.FieldDefs.Add('dCantidad6', ftFloat, 0, True);
  mTiempoPersonal.FieldDefs.Add('dCantidad7', ftFloat, 0, True);
  mTiempoPersonal.FieldDefs.Add('sTipo', ftString, 20, True);
  mTiempoPersonal.FieldDefs.Add('inicio1', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('inicio2', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('inicio3', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('inicio4', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('inicio5', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('inicio6', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('inicio7', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('final1', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('final2', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('final3', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('final4', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('final5', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('final6', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('final7', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('sTiempoMuerto1', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('sTiempoMuerto2', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('sTiempoMuerto3', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('sTiempoMuerto4', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('sTiempoMuerto5', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('sTiempoMuerto6', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('sTiempoMuerto7', ftString, 5, True);
  mTiempoPersonal.FieldDefs.Add('descripcion', ftString, 750, True);
  mTiempoPersonal.Active := True;

  mPersonalxPartida := TrxMemoryData.Create(tOrigen);
  mPersonalxPartida.Active := False;
  mPersonalxPartida.FieldDefs.Add('sContrato', ftString, 15, True);
  mPersonalxPartida.FieldDefs.Add('sIdPersonalEquipo', ftString, 25, True);
  mPersonalxPartida.FieldDefs.Add('dCantidad1', ftFloat, 0, True);
  mPersonalxPartida.FieldDefs.Add('dCantidad2', ftFloat, 0, True);
  mPersonalxPartida.FieldDefs.Add('dCantidad3', ftFloat, 0, True);
  mPersonalxPartida.FieldDefs.Add('dCantidad4', ftFloat, 0, True);
  mPersonalxPartida.FieldDefs.Add('dCantidad5', ftFloat, 0, True);
  mPersonalxPartida.FieldDefs.Add('dCantidad6', ftFloat, 0, True);
  mPersonalxPartida.FieldDefs.Add('dCantidad7', ftFloat, 0, True);
  mPersonalxPartida.FieldDefs.Add('sTipo', ftString, 20, True);
  mPersonalxPartida.FieldDefs.Add('sPartida1', ftString, 5, True);
  mPersonalxPartida.FieldDefs.Add('sPartida2', ftString, 5, True);
  mPersonalxPartida.FieldDefs.Add('sPartida3', ftString, 5, True);
  mPersonalxPartida.FieldDefs.Add('sPartida4', ftString, 5, True);
  mPersonalxPartida.FieldDefs.Add('sPartida5', ftString, 5, True);
  mPersonalxPartida.FieldDefs.Add('sPartida6', ftString, 5, True);
  mPersonalxPartida.FieldDefs.Add('sPartida7', ftString, 5, True);
  mPersonalxPartida.FieldDefs.Add('descripcion', ftString, 750, True);
  mPersonalxPartida.FieldDefs.Add('medida', ftString, 25, True);
  mPersonalxPartida.Active := True;

  mMaterialxPartida := TrxMemoryData.Create(tOrigen);
  mMaterialxPartida.Active := False;
  mMaterialxPartida.FieldDefs.Add('sContrato', ftString, 15, True);
  mMaterialxPartida.FieldDefs.Add('sIdInsumo', ftString, 25, True);
  mMaterialxPartida.FieldDefs.Add('dCantidad1', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('dCantidad2', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('dCantidad3', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('dCantidad4', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('dCantidad5', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('dCantidad6', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('dCantidad7', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('sPartida1', ftString, 5, True);
  mMaterialxPartida.FieldDefs.Add('sPartida2', ftString, 5, True);
  mMaterialxPartida.FieldDefs.Add('sPartida3', ftString, 5, True);
  mMaterialxPartida.FieldDefs.Add('sPartida4', ftString, 5, True);
  mMaterialxPartida.FieldDefs.Add('sPartida5', ftString, 5, True);
  mMaterialxPartida.FieldDefs.Add('sPartida6', ftString, 5, True);
  mMaterialxPartida.FieldDefs.Add('sPartida7', ftString, 5, True);
  mMaterialxPartida.FieldDefs.Add('descripcion', ftString, 750, True);
  mMaterialxPartida.FieldDefs.Add('medida', ftString, 25, True);
  mMaterialxPartida.FieldDefs.Add('medidaComercial', ftString, 25, True);
  mMaterialxPartida.FieldDefs.Add('trazabilidad', ftString, 50, True);
  mMaterialxPartida.FieldDefs.Add('TotalCantidad', ftFloat, 0, True);
  mMaterialxPartida.FieldDefs.Add('TotalComercial', ftFloat, 0, True);
  mMaterialxPartida.Active := True;

  QryReporteDiario := TZReadOnlyQuery.Create(tOrigen);
  QryReporteDiario.Connection := connection.zConnection;

  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zConnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zConnection;

  Bitacora3 := TZReadOnlyQuery.Create(tOrigen);
  Bitacora3.Connection := connection.zConnection;

  TiempoMuerto := TZReadOnlyQuery.Create(tOrigen);
  TiempoMuerto.Connection := connection.zConnection;

  TiempoMuertoPersonal := TZReadOnlyQuery.Create(tOrigen);
  TiempoMuertoPersonal.Connection := connection.zConnection;

  QryMovimientosdePersonal := TZReadOnlyQuery.Create(tOrigen);
  QryMovimientosdePersonal.Connection := connection.zConnection;

  rptPersonal := TZReadOnlyQuery.Create(tOrigen);
  rptPersonal.Connection := connection.zConnection;

  rptTiempoExtra := TZReadOnlyQuery.Create(tOrigen);
  rptTiempoExtra.Connection := connection.zConnection;

  rptEquipos := TZReadOnlyQuery.Create(tOrigen);
  rptEquipos.Connection := connection.zConnection;

  rptEquiposSeguridad := TZReadOnlyQuery.Create(tOrigen);
  rptEquiposSeguridad.Connection := connection.zConnection;

  Permisos := TZReadOnlyQuery.Create(tOrigen);
  Permisos.Connection := connection.zConnection;

  QryReporteFotografico := TZReadOnlyQuery.Create(tOrigen);
  QryReporteFotografico.Connection := connection.zConnection;

  QryOrdenesdeTrabajo := TZReadOnlyQuery.Create(tOrigen);
  QryOrdenesdeTrabajo.Connection := connection.zConnection;

  qryComentariosAdicionales := TZReadOnlyQuery.Create(tOrigen);
  qryComentariosAdicionales.Connection := connection.zConnection;

  qryComentariosxActividad := TZReadOnlyQuery.Create(tOrigen);
  qryComentariosxActividad.Connection := connection.zConnection;

  qryConfiguracionOrden := TZReadOnlyQuery.Create(tOrigen);
  qryConfiguracionOrden.Connection := connection.zConnection;

  QryPers13 := TZReadOnlyQuery.Create(tOrigen);
  QryPers13.Connection := connection.zConnection;

  QryC14 := TZReadOnlyQuery.Create(tOrigen);
  QryC14.Connection := connection.zConnection;

  QryC14te := TZReadOnlyQuery.Create(tOrigen);
  QryC14te.Connection := connection.zConnection;

  QryC15 := TZReadOnlyQuery.Create(tOrigen);
  QryC15.Connection := connection.zConnection;

  QryPernoctas := TZReadOnlyQuery.Create(tOrigen);
  QryPernoctas.Connection := connection.zConnection;

  QryPeriodo := TZReadOnlyQuery.Create(tOrigen);
  QryPeriodo.Connection := connection.zConnection;

  QryExisteFoto := TZReadOnlyQuery.Create(tOrigen);
  QryExisteFoto.Connection := connection.zConnection;

  QryAdmon := TZReadOnlyQuery.Create(tOrigen);
  QryAdmon.Connection := connection.zConnection;

  Q_Paquetes := TZReadOnlyQuery.Create(tOrigen);
  Q_Paquetes.Connection := connection.zConnection;
  QrCantInstall := TZReadOnlyQuery.Create(tOrigen);
  QrCantInstall.Connection := connection.zConnection;


  dsC14 := TfrxDBDataSet.Create(tOrigen);
  dsC14te := TfrxDBDataSet.Create(tOrigen);
  dsC15 := TfrxDBDataSet.Create(tOrigen);
  dsComentariosxActividad := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracionOrden := TfrxDBDataSet.Create(tOrigen);
  dsComentariosAdicionales := TfrxDBDataSet.Create(tOrigen);
  dsOrden := TfrxDBDataSet.Create(tOrigen);
  dsMovimientos := TfrxDBDataSet.Create(tOrigen);
  dsPersonal := TfrxDBDataSet.Create(tOrigen);
  dsTiempoExtra := TfrxDBDataSet.Create(tOrigen);
  dsBitacora3 := TfrxDBDataSet.Create(tOrigen);
  dsSeguridad := TfrxDBDataSet.Create(tOrigen);
  dsReporteDiario := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsReporteFotografico := TfrxDBDataSet.Create(tOrigen);
  dsPermisos := TfrxDBDataSet.Create(tOrigen);
  dsEquipos := TfrxDBDataSet.Create(tOrigen);
  dsTiemposMuertos := TfrxDBDataSet.Create(tOrigen);
  dsTiempoMuertoPersonal := TfrxDBDataSet.Create(tOrigen);
  dsPersonalxPartida := TfrxDBDataSet.Create(tOrigen);
  dsMaterialxPartida := TfrxDBDataSet.Create(tOrigen);
  dsmBitacora1 := TfrxDBDataSet.Create(tOrigen);
  dsmBitacoraActividades := TfrxDBDataSet.Create(tOrigen);
  dsPers13 := TfrxDBDataSet.Create(tOrigen);
  dsPernoctas := TfrxDBDataSet.Create(tOrigen);
  dsPeriodo := TfrxDBDataSet.Create(tOrigen);
  dsExisteFoto := TfrxDBDataSet.Create(tOrigen);
  dsAdmon := TfrxDBDataSet.Create(tOrigen);

  dsPers13.DataSet := qryPers13;
  dsC14.DataSet := QryC14;
  dsC14te.DataSet := QryC14te;
  dsC15.DataSet := QryC15;
  dsComentariosAdicionales.DataSet := qryComentariosAdicionales;
  dsConfiguracionOrden.DataSet := qryConfiguracionOrden;
  dsOrden.DataSet := QryOrdenesdeTrabajo;
  dsMovimientos.DataSet := mMovimientos;
  dsPersonal.DataSet := rptPersonal;
  dsTiempoExtra.DataSet := rptTiempoExtra;
  dsBitacora3.DataSet := Bitacora3;
  dsSeguridad.DataSet := rptEquiposSeguridad;
  dsReporteDiario.DataSet := QryReporteDiario;
  dsConfiguracion.DataSet := QryConfiguracion;
  dsReporteFotografico.DataSet := QryReporteFotografico;
  dsPermisos.DataSet := Permisos;
  dsEquipos.DataSet := rptEquipos;
  dsTiemposMuertos.DataSet := TiempoMuerto;
  dsTiempoMuertoPersonal.DataSet := mTiempoPersonal;
  dsPersonalxPartida.DataSet := mPersonalxPartida;
  dsMaterialxPartida.DataSet := mMaterialxPartida;
  dsmBitacora1.DataSet := mBitacora1;
  dsmBitacoraActividades.DataSet := mBitacoraActividades;
  dsComentariosxActividad.DataSet := qryComentariosxActividad;
  dsPernoctas.DataSet := mPernocta;
  dsPeriodo.DataSet := QryPeriodo;
  dsExisteFoto.DataSet := QryExisteFoto;
  dsAdmon.DataSet := QryAdmon;

  dsPernoctas.FieldAliases.Clear;
  dsAdmon.FieldAliases.Clear;

  dsC14.UserName := 'dsC14';
  dsPers13.UserName := 'dsPers13';
  dsC14te.UserName := 'dsC14te';
  dsC15.UserName := 'dsC15';
  dsComentariosAdicionales.UserName := 'dsComentariosAdicionales';
  dsConfiguracionOrden.UserName := 'dsConfiguracionOrden';
  dsOrden.UserName := 'dsOrden';
  dsMovimientos.UserName := 'dsmMovimientos';
  dsPersonal.UserName := 'dsPersonal';
  dsTiempoExtra.UserName := 'dsTiempoExtra';
  dsBitacora3.UserName := 'dsBitacora3';
  dsSeguridad.UserName := 'dsSeguridad';
  dsReporteDiario.UserName := 'dsReporteDiario';
  dsConfiguracion.UserName := 'dsConfiguracion';
  dsReporteFotografico.UserName := 'dsReporteFotografico';
  dsPermisos.UserName := 'dsPermisos';
  dsEquipos.UserName := 'dsEquipos';
  dsTiemposMuertos.UserName := 'dsTiempoMuerto';
  dsTiempoMuertoPersonal.UserName := 'dsTiempoMuertoPersonal';
  dsPersonalxPartida.UserName := 'dsPersonalxPartida';
  dsMaterialxPartida.UserName := 'dsMaterialxPartida';
  dsmBitacora1.UserName := 'dsmBitacora1';
  dsmBitacoraActividades.UserName := 'dsmBitacoraActividades';
  dsComentariosxActividad.UserName := 'dsComentariosxActividad';
  dsPernoctas.UserName := 'dsPernoctas';
  dsPeriodo.UserName := 'dsPeriodo';
  dsExisteFoto.UserName := 'dsExisteFoto';
  dsAdmon.UserName := 'dsAdmon';

  rDiario.DataSets.Clear;
  rDiario.DataSets.Add(dsComentariosxActividad);
  rDiario.DataSets.Add(dsComentariosAdicionales);
  rDiario.DataSets.Add(dsConfiguracionOrden);
  rDiario.DataSets.Add(dsPers13);
  rDiario.DataSets.Add(dsC14);
  rDiario.DataSets.Add(dsC14te);
  rDiario.DataSets.Add(dsC15);
  rDiario.DataSets.Add(dsOrden);
  rDiario.DataSets.Add(dsMovimientos);
  rDiario.DataSets.Add(dsPersonal);
  rDiario.DataSets.Add(dsTiempoExtra);
  rDiario.DataSets.Add(dsBitacora3);
  rDiario.DataSets.Add(dsSeguridad);
  rDiario.DataSets.Add(dsReporteDiario);
  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsReporteFotografico);
  rDiario.DataSets.Add(dsPermisos);
  rDiario.DataSets.Add(dsEquipos);
  rDiario.DataSets.Add(dsTiemposMuertos);
  rDiario.DataSets.Add(dsTiempoMuertoPersonal);
  rDiario.DataSets.Add(dsPersonalxPartida);
  rDiario.Datasets.Add(dsMaterialxPartida);
  rDiario.DataSets.Add(dsmBitacora1);
  rDiario.DataSets.Add(dsmBitacoraActividades);
  rDiario.DataSets.Add(dsPernoctas);
  rDiario.DataSets.Add(dsPeriodo);
  rDiario.DataSets.Add(dsExisteFoto);
  rDiario.DataSets.Add(dsAdmon);

  //Para la primera hoja del barco de programadas
  Prorrateos := TZReadOnlyQuery.Create(tOrigen);
  Prorrateos.Connection := connection.zConnection;
  QryArribos := TZReadOnlyQuery.Create(tOrigen);
  QryArribos.Connection := connection.zConnection;
  QryArribosVuelo := TZReadOnlyQuery.Create(tOrigen);
  QryArribosVuelo.Connection := connection.zConnection;
  QryClimaReporte := TZReadOnlyQuery.Create(tOrigen);
  QryClimaReporte.Connection := connection.zConnection;
  qryRecursosReporte := TZReadOnlyQuery.Create(tOrigen);
  qryRecursosReporte.Connection := connection.zConnection;
  qryNotasGenerales := TZReadOnlyQuery.Create(tOrigen);
  qryNotasGenerales.Connection := connection.zConnection;

  detProrrateos := TfrxDBDataSet.Create(tOrigen);
  detProrrateos.DataSet := Prorrateos;
  detProrrateos.UserName := 'detProrrateos';

  ArribosReporte := TfrxDBDataSet.Create(tOrigen);
  ArribosReporte.DataSet := QryArribos;
  ArribosReporte.UserName := 'ArribosReporte';

  ArribosReporteVuelo := TfrxDBDataSet.Create(tOrigen);
  ArribosReporteVuelo.DataSet := QryArribosVuelo;
  ArribosReporteVuelo.UserName := 'ArribosReporteVuelo';

  dsClimaReporte := TfrxDBDataSet.Create(tOrigen);
  dsClimaReporte.DataSet := QryClimaReporte;
  dsClimaReporte.UserName := 'dsClimaReporte';

  dsRecursosReporte := TfrxDBDataSet.Create(tOrigen);
  dsRecursosReporte.DataSet := qryRecursosReporte;
  dsRecursosReporte.UserName := 'dsRecursosReporte';

  dsNotasGenerales := TfrxDBDataSet.Create(tOrigen);
  dsNotasGenerales.DataSet := qryNotasGenerales;
  dsNotasGenerales.UserName := 'dsNotasGenerales';

  rDiario.DataSets.Add(detProrrateos);
  rDiario.DataSets.Add(ArribosReporte);
  rDiario.DataSets.Add(ArribosReporteVuelo);
  rDiario.DataSets.Add(dsClimaReporte);
  rDiario.DataSets.Add(dsRecursosReporte);
  rDiario.DataSets.Add(dsNotasGenerales);
end;


//Procedimiento de Analisis Financiero

procedure procAnalisisFinanciero(sParamContrato, sParamOrden, sParamConvenio: string; dParamFechaInicio, dParamFechaFinal: tDate; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
  QryPartidas: TZReadOnlyQuery;
  QryPersonal: TZReadOnlyQuery;
  QryEquipos: TZReadOnlyQuery;
  rFinanciero: TfrxReport;
  mPerEq: TrxMemoryData;
  dsPartidas: TfrxDBDataSet;
  dsPerEq: TfrxDBDataSet;
  LineMoneda, lMoneda: string;
begin
  QryPartidas := TZReadOnlyQuery.Create(tOrigen);
  QryPartidas.Connection := connection.zConnection;

  QryPersonal := TZReadOnlyQuery.Create(tOrigen);
  QryPersonal.Connection := connection.zConnection;

  QryEquipos := TZReadOnlyQuery.Create(tOrigen);
  QryEquipos.Connection := connection.zConnection;

  rFinanciero := TfrxReport.Create(tOrigen);
  rFinanciero.PreviewOptions.MDIChild := False;
  rFinanciero.PreviewOptions.Modal := True;
  rFinanciero.PreviewOptions.Maximized := lCheckMaximized();
  rFinanciero.PreviewOptions.ShowCaptions := False;
  rFinanciero.Previewoptions.ZoomMode := zmPageWidth;
  rFinanciero.OnGetValue := tProcedure;

  mPerEq := TrxMemoryData.Create(tOrigen);
  mPerEq.Active := False;
  mPerEq.FieldDefs.Add('sContrato', ftString, 15, True);
  mPerEq.FieldDefs.Add('sTipo', ftString, 10, True);
  mPerEq.FieldDefs.Add('sDescripcion', ftString, 255, True);
  mPerEq.FieldDefs.Add('sMedida', ftString, 8, True);
  mPerEq.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  mPerEq.FieldDefs.Add('dCostoMN', ftFloat, 0, True);
  mPerEq.FieldDefs.Add('dVentaMN', ftFloat, 0, True);
  mPerEq.Active := True;

  dsPartidas := TfrxDBDataSet.Create(tOrigen);
  dsPartidas.DataSet := QryPartidas;
  dsPartidas.UserName := 'dsPartidas';

  dsPerEq := TfrxDBDataSet.Create(tOrigen);
  dsPerEq.DataSet := mPerEq;
  dsPerEq.UserName := 'dsPerEq';

  rFinanciero.DataSets.Clear;
  rFinanciero.DataSets.Add(dsPartidas);
  rFinanciero.DataSets.Add(dsPerEq);

  lMoneda := 'a.dVentaMN';
  LineMoneda := 'sum(b.dCantidad * b.dCostoMN) as dCostoMN, sum(b.dCantidad * p.dVentaMN) as dVentaMN';

  if tOrigen.Name = 'frmReportePeriodo' then
  begin
    if global_OptGrafica = 'DLL' then
    begin
      lMoneda := 'a.dVentaDLL as dVentaMN';
      LineMoneda := 'sum(b.dCantidad * b.dCostoDLL) as dCostoMN, sum(b.dCantidad * p.dVentaDLL) as dVentaMN';
    end;
  end;

  QryPartidas.Active := False;
  QryPartidas.SQL.Clear;
  if sParamOrden = '' then
    QryPartidas.SQL.Add('select a.sContrato, a.sWbs, a.mDescripcion, sum(b.dCantidad) as dCantidad,' + lMoneda + ', a.sMedida from bitacoradeactividades b ' +
      'inner join actividadesxanexo a on (a.sContrato = b.sContrato and a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :convenio and a.sTipoActividad = "Actividad") ' +
      'and a.sWbs=b.sWbs Where b.sContrato = :contrato and b.dIdFecha >= :FechaIni And b.dIdFecha <= :FechaFin Group By b.sContrato, b.sNumeroActividad order by a.iItemOrden')
  else
    QryPartidas.SQL.Add('select a.sContrato, a.sWbs, a.mDescripcion, sum(b.dCantidad) as dCantidad,' + lMoneda + ', a.sMedida from bitacoradeactividades b ' +
      'inner join actividadesxanexo a on (a.sContrato = b.sContrato and a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :convenio and a.sTipoActividad = "Actividad") ' +
      'and a.sWbs=b.sWbs Where b.sContrato = :contrato and b.dIdFecha >= :FechaIni And b.dIdFecha <= :FechaFin And b.sNumeroOrden = :Orden Group By b.sContrato, b.sNumeroActividad order by a.iItemOrden');
  QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
  QryPartidas.Params.ParamByName('Contrato').Value := sParamContrato;
  QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
  QryPartidas.Params.ParamByName('Convenio').Value := sParamConvenio;
  if sParamOrden <> '' then
  begin
    QryPartidas.Params.ParamByName('orden').DataType := ftString;
    QryPartidas.Params.ParamByName('orden').Value := sParamOrden;
  end;
  QryPartidas.Params.ParamByName('FechaIni').DataType := ftDate;
  QryPartidas.Params.ParamByName('FechaIni').Value := dParamFechaInicio;
  QryPartidas.Params.ParamByName('FechaFin').DataType := ftDate;
  QryPartidas.Params.ParamByName('FechaFin').Value := dParamFechaFinal;
  QryPartidas.Open;

  QryPersonal.Active := False;
  QryPersonal.SQL.Clear;
  if sParamOrden = '' then
    QryPersonal.SQL.Add('select b.sDescripcion, sum(b.dCantidad) as dCantidad, ' + LineMoneda + ', p.sMedida from bitacoradeactividades ba ' +
      'inner join bitacoradepersonal b on (b.sContrato = ba.sContrato and b.dIdFecha = ba.dIdFecha And b.iIdDiario = ba.iIdDiario) ' +
      'inner join personal p on (p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal) ' +
      'Where b.sContrato = :contrato and b.dIdFecha >= :FechaIni And b.dIdFecha <= :FechaFin Group By b.sContrato, b.sIdPersonal order by p.iItemOrden')
  else
    QryPersonal.SQL.Add('select b.sDescripcion, sum(b.dCantidad) as dCantidad, ' + LineMoneda + ', p.sMedida from bitacoradeactividades ba ' +
      'inner join bitacoradepersonal b on (b.sContrato = ba.sContrato and b.dIdFecha = ba.dIdFecha And b.iIdDiario = ba.iIdDiario) ' +
      'inner join personal p on (p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal) ' +
      'Where b.sContrato = :contrato and b.dIdFecha >= :FechaIni And b.dIdFecha <= :FechaFin And ba.sNumeroOrden = :Orden Group By b.sContrato, b.sIdPersonal order by p.iItemOrden');
  QryPersonal.Params.ParamByName('Contrato').DataType := ftString;
  QryPersonal.Params.ParamByName('Contrato').Value := sParamContrato;
  QryPersonal.Params.ParamByName('FechaIni').DataType := ftDate;
  QryPersonal.Params.ParamByName('FechaIni').Value := dParamFechaInicio;
  QryPersonal.Params.ParamByName('FechaFin').DataType := ftDate;
  QryPersonal.Params.ParamByName('FechaFin').Value := dParamFechaFinal;
  if sParamOrden <> '' then
  begin
    QryPersonal.Params.ParamByName('orden').DataType := ftString;
    QryPersonal.Params.ParamByName('orden').Value := sParamOrden;
  end;
  QryPersonal.Open;

  QryEquipos.Active := False;
  QryEquipos.SQL.Clear;
  if sParamOrden = '' then
    QryEquipos.SQL.Add('select p.sDescripcion, sum(b.dCantidad) as dCantidad, ' + LineMoneda + ', p.sMedida from bitacoradeactividades ba ' +
      'inner join bitacoradeequipos b on (b.sContrato = ba.sContrato and b.dIdFecha = ba.dIdFecha And b.iIdDiario = ba.iIdDiario) ' +
      'inner join equipos p on (p.sContrato = b.sContrato and p.sIdEquipo = b.sIdEquipo) ' +
      'Where b.sContrato = :contrato and b.dIdFecha >= :FechaIni And b.dIdFecha <= :FechaFin Group By b.sContrato, b.sIdEquipo order by p.iItemOrden')
  else
    QryEquipos.SQL.Add('select p.sDescripcion, sum(b.dCantidad) as dCantidad, ' + LineMoneda + ', p.sMedida from bitacoradeactividades ba ' +
      'inner join bitacoradeequipos b on (b.sContrato = ba.sContrato and b.dIdFecha = ba.dIdFecha And b.iIdDiario = ba.iIdDiario) ' +
      'inner join equipos p on (p.sContrato = b.sContrato and p.sIdEquipo = b.sIdEquipo) ' +
      'Where b.sContrato = :contrato and b.dIdFecha >= :FechaIni And b.dIdFecha <= :FechaFin And ba.sNumeroOrden = :orden Group By b.sContrato, b.sIdEquipo order by p.iItemOrden');
  QryEquipos.Params.ParamByName('Contrato').DataType := ftString;
  QryEquipos.Params.ParamByName('Contrato').Value := sParamContrato;
  QryEquipos.Params.ParamByName('FechaIni').DataType := ftDate;
  QryEquipos.Params.ParamByName('FechaIni').Value := dParamFechaInicio;
  QryEquipos.Params.ParamByName('FechaFin').DataType := ftDate;
  QryEquipos.Params.ParamByName('FechaFin').Value := dParamFechaFinal;
  if sParamOrden <> '' then
  begin
    QryEquipos.Params.ParamByName('orden').DataType := ftString;
    QryEquipos.Params.ParamByName('orden').Value := sParamOrden;
  end;
  QryEquipos.Open;

  if mPerEq.RecordCount > 0 then
    mPerEq.EmptyTable;

  while not QryPersonal.eof do
  begin
    mPerEq.Append;
    mPerEq.FieldValues['sContrato'] := sParamContrato;
    mPerEq.FieldValues['sTipo'] := 'PERSONAL';
    mPerEq.FieldValues['sDescripcion'] := QryPersonal.FieldValues['sDescripcion'];
    mPerEq.FieldValues['sMedida'] := QryPersonal.FieldValues['sMedida'];
    mPerEq.FieldValues['dCantidad'] := QryPersonal.FieldValues['dCantidad'];
    mPerEq.FieldValues['dCostoMN'] := QryPersonal.FieldValues['dCostoMN'];
    mPerEq.FieldValues['dVentaMN'] := QryPersonal.FieldValues['dVentaMN'];
    mPerEq.Post;
    QryPersonal.Next;
  end;

  while not QryEquipos.eof do
  begin
    mPerEq.Append;
    mPerEq.FieldValues['sContrato'] := sParamContrato;
    mPerEq.FieldValues['sTipo'] := 'EQUIPO';
    mPerEq.FieldValues['sDescripcion'] := QryEquipos.FieldValues['sDescripcion'];
    mPerEq.FieldValues['sMedida'] := QryEquipos.FieldValues['sMedida'];
    mPerEq.FieldValues['dCantidad'] := QryEquipos.FieldValues['dCantidad'];
    mPerEq.FieldValues['dCostoMN'] := QryEquipos.FieldValues['dCostoMN'];
    mPerEq.FieldValues['dVentaMN'] := QryEquipos.FieldValues['dVentaMN'];
    mPerEq.Post;
    QryEquipos.Next;
  end;

  rFinanciero.LoadFromFile(global_files + 'AnalisisFinanciero.fr3');
  rFinanciero.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rFinanciero.ShowReport(True);

  QryPartidas.Destroy;
  QryPersonal.Destroy;
  QryEquipos.Destroy;
  rFinanciero.Destroy;
  mPerEq.Destroy;
  dsPartidas.Destroy;
  dsPerEq.Destroy;
end;


procedure procReporteDiarioConsolidado(sParamContrato, sParamPlataforma, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; RecordMove: tNotifyEvent; FormatosExp: string = ''; PermisosExp: string = '');
const
  Titles: array[1..4] of string = ('Hora de Salida', 'Hora de Llegada', 'Inicio de Actividades', 'Cierre de Actividades');
var
  Registro: Integer;
  dAvance: Real;
  sTipoOrden: string;
begin

  // Creo los abjetos del reporte diario ...
  procCreateObject(tOrigen);

  dsReporteDiario.OnFirst := RecordMove;
  dsReportediario.OnNext := RecordMove;


  rDiario.OnGetValue := tProcedure;

  QryBuscar := tZReadOnlyQuery.Create(tOrigen);
  QryBuscar.Connection := connection.zconnection;
  QryBuscarAux := tZReadOnlyQuery.Create(tOrigen);
  QryBuscarAux.Connection := connection.zconnection;

  // La configuracion del contrato.
  // Imagenenes, Titulos, Aplican para todas las ordenes ...

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  // Selecciono todas los reportes diarios de todas las ordenes de trabajo existentes ...
  //Aqui hago reportes
  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;


  if global_sTipoReporte = 'TIERRA' then
  begin
    if sParamPlataforma <> '' then
      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :plataforma) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And t.sOrigenTierra="Si" order by r.sNumeroOrden, r.sIdTurno')
    else
      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And t.sOrigenTierra="Si" Order By o.sIdPlataforma,  r.sNumeroOrden, r.sIdTurno');
    QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
    QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      QryReporteDiario.Params.ParamByName('Plataforma').DataType := ftString;
      QryReporteDiario.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    QryReporteDiario.Open;
  end;

  if global_sTipoReporte = 'PLATAFORMA' then
  begin
    if sParamPlataforma <> '' then
      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :plataforma) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And t.sOrigenTierra="No" order by r.sNumeroOrden, r.sIdTurno')
    else
      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And t.sOrigenTierra="No" Order By o.sIdPlataforma,  r.sNumeroOrden, r.sIdTurno');
    QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
    QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      QryReporteDiario.Params.ParamByName('Plataforma').DataType := ftString;
      QryReporteDiario.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    QryReporteDiario.Open;
  end;


  if global_sTipoReporte = 'TIERRAPLATAFORMA' then
  begin
    if sParamPlataforma <> '' then
      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :plataforma) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha order by r.sNumeroOrden, r.sIdTurno')
    else
      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha Order By o.sIdPlataforma,  r.sNumeroOrden, r.sIdTurno');
    QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
    QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      QryReporteDiario.Params.ParamByName('Plataforma').DataType := ftString;
      QryReporteDiario.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    QryReporteDiario.Open;
  end;

  if global_sTipoReporte = 'SOLOFRENTE' then
  begin
    if sParamPlataforma <> '' then

      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = :orden and o.sIdPlataforma = :plataforma) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And t.sOrigenTierra="Si" order by r.sNumeroOrden, r.sIdTurno')
    else
      QryReporteDiario.SQL.Add('Select r.*, t.sDescripcion, o.sDescripcionCorta, t.sOrigenTierra From reportediario r ' +
        'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
        'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato ' +
        'And r.sNumeroOrden = :orden And o.sNumeroOrden = :Orden) ' +
        'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And t.sOrigenTierra="Si" Order By o.sIdPlataforma,  r.sNumeroOrden, r.sIdTurno');
    QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
    QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
    QryReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    QryReporteDiario.Params.ParamByName('Orden').Value := Global_Orden;

    if sParamPlataforma <> '' then
    begin
      QryReporteDiario.Params.ParamByName('Plataforma').DataType := ftString;
      QryReporteDiario.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    QryReporteDiario.Open;
  end;




  // Personal y Equipo General ...
  rptPersonal.Active := False;
  rptPersonal.Sql.Clear;

  rptTiempoExtra.Active := False;
  rptTiempoExtra.Sql.Clear;


  rptEquipos.Active := False;
  rptEquipos.SQL.Clear;

  if global_sTipoReporte = 'PLATAFORMA' then
  begin
    rptEquiposSeguridad.Active := False;
    rptEquiposSeguridad.SQL.Clear;
    if sParamPlataforma <> '' then
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'inner join turnos t on (r.sContrato = t.sContrato And r.sIdTurno = t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and t.sOrigenTierra="No"   and p.sDescripcion not like "%TIEMPO%EXTRA%"  Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc')
    else
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'inner join turnos t on (r.sContrato = t.sContrato And r.sIdTurno = t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="No"   and p.sDescripcion not like "%TIEMPO%EXTRA%"  Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc');
    rptPersonal.Params.ParamByName('contrato').DataType := ftString;
    rptPersonal.Params.ParamByName('contrato').Value := sParamContrato;
    rptPersonal.Params.ParamByName('fecha').DataType := ftDate;
    rptPersonal.Params.ParamByName('fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      rptPersonal.Params.ParamByName('plataforma').DataType := ftString;
      rptPersonal.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptPersonal.Open;
  end;


  if global_sTipoReporte = 'TIERRA' then
  begin
    rptEquiposSeguridad.Active := False;
    rptEquiposSeguridad.SQL.Clear;
    if sParamPlataforma <> '' then
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'inner join turnos t on (r.sContrato = t.sContrato And r.sIdTurno = t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and t.sOrigenTierra="Si"   and p.sDescripcion not like "%TIEMPO%EXTRA%"  Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc')
    else
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'inner join turnos t on (r.sContrato = t.sContrato And r.sIdTurno = t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" and p.sDescripcion not like "%TIEMPO%EXTRA%" Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc');
    rptPersonal.Params.ParamByName('contrato').DataType := ftString;
    rptPersonal.Params.ParamByName('contrato').Value := sParamContrato;
    rptPersonal.Params.ParamByName('fecha').DataType := ftDate;
    rptPersonal.Params.ParamByName('fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      rptPersonal.Params.ParamByName('plataforma').DataType := ftString;
      rptPersonal.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptPersonal.Open;
  end;





  if global_sTipoReporte = 'TIERRAPLATAFORMA' then
  begin
    rptEquiposSeguridad.Active := False;
    rptEquiposSeguridad.SQL.Clear;
    if sParamPlataforma <> '' then
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and p.sDescripcion not like "%TIEMPO%EXTRA%" Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc')
    else
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and p.sDescripcion not like "%TIEMPO%EXTRA%" Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc');
    rptPersonal.Params.ParamByName('contrato').DataType := ftString;
    rptPersonal.Params.ParamByName('contrato').Value := sParamContrato;
    rptPersonal.Params.ParamByName('fecha').DataType := ftDate;
    rptPersonal.Params.ParamByName('fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      rptPersonal.Params.ParamByName('plataforma').DataType := ftString;
      rptPersonal.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptPersonal.Open;
  end;



  if global_sTipoReporte = 'SOLOFRENTE' then
  begin
    rptEquiposSeguridad.Active := False;
    rptEquiposSeguridad.SQL.Clear;
    if sParamPlataforma <> '' then
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = :Orden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = :Orden and o.sIdPlataforma = :Plataforma) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'inner join turnos t on (r.sContrato = t.sContrato And r.sIdTurno = t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and t.sOrigenTierra="Si" and p.sDescripcion not like "%TIEMPO%EXTRA%" Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc')
    else
      rptPersonal.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha ' +
        'And b.iIdDiario = a.iIdDiario And a.sNumeroOrden= :Orden) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha ' +
        'And r.sNumeroOrden = :Orden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = :Orden And o.sNumeroOrden = :Orden) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'inner join turnos t on (r.sContrato = t.sContrato And r.sIdTurno = t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" and p.sDescripcion not like "%TIEMPO%EXTRA%" Group By ' +
        'r.sNumeroReporte, p2.sIdPlataforma, p.sIdPersonal order by r.sNumeroReporte, p2.sIdPlataforma, p.iItemOrden asc');
    rptPersonal.Params.ParamByName('contrato').DataType := ftString;
    rptPersonal.Params.ParamByName('contrato').Value := sParamContrato;
    rptPersonal.Params.ParamByName('fecha').DataType := ftDate;
    rptPersonal.Params.ParamByName('fecha').Value := dParamFecha;
    rptPersonal.Params.ParamByName('Orden').DataType := ftString;
    rptPersonal.Params.ParamByName('Orden').Value := Global_Orden;

    if sParamPlataforma <> '' then
    begin
      rptPersonal.Params.ParamByName('plataforma').DataType := ftString;
      rptPersonal.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptPersonal.Open;
  end;



 //Saco Equipos
  if global_sTipoReporte = 'PLATAFORMA' then
  begin
    if sParamPlataforma <> '' then
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato And r.sIdTurno=t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigentierra="No" And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato And r.sIdTurno=t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="No" And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');
    rptEquipos.Params.ParamByName('contrato').DataType := ftString;
    rptEquipos.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquipos.Params.ParamByName('fecha').DataType := ftDate;
    rptEquipos.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquipos.Params.ParamByName('equipo').DataType := ftString;
    rptEquipos.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    if sParamPlataforma <> '' then
    begin
      rptEquipos.Params.ParamByName('plataforma').DataType := ftString;
      rptEquipos.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquipos.Open;
  end;

  if global_sTipoReporte = 'TIERRA' then
  begin
    if sParamPlataforma <> '' then
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato And r.sIdTurno=t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigentierra="Si" And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato And r.sIdTurno=t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');
    rptEquipos.Params.ParamByName('contrato').DataType := ftString;
    rptEquipos.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquipos.Params.ParamByName('fecha').DataType := ftDate;
    rptEquipos.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquipos.Params.ParamByName('equipo').DataType := ftString;
    rptEquipos.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    if sParamPlataforma <> '' then
    begin
      rptEquipos.Params.ParamByName('plataforma').DataType := ftString;
      rptEquipos.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquipos.Open;
  end;




  if global_sTipoReporte = 'TIERRAPLATAFORMA' then
  begin
    if sParamPlataforma <> '' then
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');
    rptEquipos.Params.ParamByName('contrato').DataType := ftString;
    rptEquipos.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquipos.Params.ParamByName('fecha').DataType := ftDate;
    rptEquipos.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquipos.Params.ParamByName('equipo').DataType := ftString;
    rptEquipos.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    if sParamPlataforma <> '' then
    begin
      rptEquipos.Params.ParamByName('plataforma').DataType := ftString;
      rptEquipos.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquipos.Open;
  end;


  if global_sTipoReporte = 'SOLOFRENTE' then
  begin
    if sParamPlataforma <> '' then
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = :Orden And r.sIdTurno = a.sIdTurno) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = :Orden and o.sIdPlataforma = :Plataforma) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato And r.sIdTurno=t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigentierra="Si" And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquipos.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha ' +
        'And b.iIdDiario = a.iIdDiario And a.sNumeroOrden = :Orden ) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha ' +
        'And r.sNumeroOrden = :Orden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato And r.sIdTurno=t.sIdTurno) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" And p.sIdTipoEquipo <> :Equipo ' +
        'Group By r.sNumeroReporte, p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');
    rptEquipos.Params.ParamByName('contrato').DataType := ftString;
    rptEquipos.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquipos.Params.ParamByName('fecha').DataType := ftDate;
    rptEquipos.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquipos.Params.ParamByName('equipo').DataType := ftString;
    rptEquipos.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquipos.Params.ParamByName('Orden').DataType := ftString;
    rptEquipos.Params.ParamByName('Orden').Value := Global_Orden;

    if sParamPlataforma <> '' then
    begin
      rptEquipos.Params.ParamByName('plataforma').DataType := ftString;
      rptEquipos.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquipos.Open;
  end;



   //Equipos de Seguridad
  if global_sTipoReporte = 'PLATAFORMA' then
  begin

    if sParamPlataforma <> '' then
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato and r.sIdTurno=t.sIdTurno)' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="No" And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato and r.sIdTurno=t.sIdTurno)' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="No" And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');

    rptEquiposSeguridad.Params.ParamByName('contrato').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquiposSeguridad.Params.ParamByName('fecha').DataType := ftDate;
    rptEquiposSeguridad.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquiposSeguridad.Params.ParamByName('equipo').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    if sParamPlataforma <> '' then
    begin
      rptEquiposSeguridad.Params.ParamByName('plataforma').DataType := ftString;
      rptEquiposSeguridad.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquiposSeguridad.Open;
  end;


  if global_sTipoReporte = 'TIERRA' then
  begin
  //Equipos de Seguridad
    if sParamPlataforma <> '' then
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato and r.sIdTurno=t.sIdTurno)' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato and r.sIdTurno=t.sIdTurno)' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');

    rptEquiposSeguridad.Params.ParamByName('contrato').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquiposSeguridad.Params.ParamByName('fecha').DataType := ftDate;
    rptEquiposSeguridad.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquiposSeguridad.Params.ParamByName('equipo').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    if sParamPlataforma <> '' then
    begin
      rptEquiposSeguridad.Params.ParamByName('plataforma').DataType := ftString;
      rptEquiposSeguridad.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquiposSeguridad.Open;
  end;


  if global_sTipoReporte = 'TIERRAPLATAFORMA' then
  begin
  //Equipos de Seguridad
    if sParamPlataforma <> '' then
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdPlataforma = :Plataforma) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = a.sNumeroOrden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');

    rptEquiposSeguridad.Params.ParamByName('contrato').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquiposSeguridad.Params.ParamByName('fecha').DataType := ftDate;
    rptEquiposSeguridad.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquiposSeguridad.Params.ParamByName('equipo').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    if sParamPlataforma <> '' then
    begin
      rptEquiposSeguridad.Params.ParamByName('plataforma').DataType := ftString;
      rptEquiposSeguridad.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquiposSeguridad.Open;
  end;


  if global_sTipoReporte = 'SOLOFRENTE' then
  begin
  //Equipos de Seguridad
    if sParamPlataforma <> '' then
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
        'inner join ordenesdetrabajo o on (r.sContrato = o.sContrato and r.sNumeroOrden = :Orden and o.sIdPlataforma = :Plataforma) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = :Orden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato and r.sIdTurno=t.sIdTurno)' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc')
    else
      rptEquiposSeguridad.SQL.Add('select b.sContrato, r.sNumeroReporte, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha ' +
        'And b.iIdDiario = a.iIdDiario and a.sNumeroOrden= :Orden) ' +
        'inner join reportediario r on (r.sContrato = a.sContrato And r.dIdFecha = a.dIdFecha And r.sNumeroOrden = :Orden And r.sIdTurno = a.sIdTurno) ' +
        'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'inner join turnos t on (r.sContrato=t.sContrato and r.sIdTurno=t.sIdTurno)' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha And t.sOrigenTierra="Si" And p.sIdTipoEquipo = :Equipo ' +
        'Group By r.sNumeroReporte,p2.sIdPernocta, p.sIdEquipo order by r.sNumeroReporte, p2.sIdPernocta, p.iItemOrden asc');

    rptEquiposSeguridad.Params.ParamByName('contrato').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquiposSeguridad.Params.ParamByName('fecha').DataType := ftDate;
    rptEquiposSeguridad.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquiposSeguridad.Params.ParamByName('equipo').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquiposSeguridad.Params.ParamByName('Orden').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('Orden').Value := Global_Orden;

    if sParamPlataforma <> '' then
    begin
      rptEquiposSeguridad.Params.ParamByName('plataforma').DataType := ftString;
      rptEquiposSeguridad.Params.ParamByName('plataforma').Value := sParamPlataforma;
    end;
    rptEquiposSeguridad.Open;
  end;



  //Ahora permisos
  Permisos.Active := False;
  Permisos.SQL.Clear;
  if global_sTipoReporte = 'TIERRAPLATAFORMA' then
  begin
    if sParamPlataforma <> '' then
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = t.sNumeroOrden and o.sIdPlataforma = :sParamPlataform) ' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha Order By t.sNumeroOrden, t.sIdTipoPermiso')
    else
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = t.sNumeroOrden)' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha Order By t.sNumeroOrden, t.sIdTipoPermiso');
    Permisos.Params.ParamByName('Contrato').DataType := ftString;
    Permisos.Params.ParamByName('contrato').Value := sParamContrato;
    Permisos.Params.ParamByName('fecha').DataType := ftDate;
    Permisos.Params.ParamByName('fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      Permisos.Params.ParamByName('Plataforma').DataType := ftString;
      Permisos.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    Permisos.Open;
  end;

  if global_sTipoReporte = 'TIERRA' then
  begin
    if sParamPlataforma <> '' then
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = t.sNumeroOrden and o.sIdPlataforma = :sParamPlataform) ' +
        'INNER JOIN turnos tu ON (t.sContrato=tu.sContrato and t.sIdTurno=tu.sIdTurno) ' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha And tu.sOrigentTierra="Si" Order By t.sNumeroOrden, t.sIdTipoPermiso')
    else
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = t.sNumeroOrden)' +
        'INNER JOIN turnos tu ON (t.sContrato=tu.sContrato and t.sIdTurno=tu.sIdTurno) ' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha And tu.sOrigenTierra="Si" Order By t.sNumeroOrden, t.sIdTipoPermiso');
    Permisos.Params.ParamByName('Contrato').DataType := ftString;
    Permisos.Params.ParamByName('contrato').Value := sParamContrato;
    Permisos.Params.ParamByName('fecha').DataType := ftDate;
    Permisos.Params.ParamByName('fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      Permisos.Params.ParamByName('Plataforma').DataType := ftString;
      Permisos.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    Permisos.Open;
  end;


  if global_sTipoReporte = 'PLATAFORMA' then
  begin
    if sParamPlataforma <> '' then
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = t.sNumeroOrden and o.sIdPlataforma = :sParamPlataform) ' +
        'INNER JOIN turnos tu ON (t.sContrato=tu.sContrato and t.sIdTurno=tu.sIdTurno) ' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha And tu.sOrigentTierra="No" Order By t.sNumeroOrden, t.sIdTipoPermiso')
    else
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = t.sNumeroOrden)' +
        'INNER JOIN turnos tu ON (t.sContrato=tu.sContrato and t.sIdTurno=tu.sIdTurno) ' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha And tu.sOrigenTierra="No" Order By t.sNumeroOrden, t.sIdTipoPermiso');
    Permisos.Params.ParamByName('Contrato').DataType := ftString;
    Permisos.Params.ParamByName('contrato').Value := sParamContrato;
    Permisos.Params.ParamByName('fecha').DataType := ftDate;
    Permisos.Params.ParamByName('fecha').Value := dParamFecha;
    if sParamPlataforma <> '' then
    begin
      Permisos.Params.ParamByName('Plataforma').DataType := ftString;
      Permisos.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    Permisos.Open;
  end;


  if global_sTipoReporte = 'SOLOFRENTE' then
  begin
    if sParamPlataforma <> '' then
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso And t.sNumeroOrden = :Orden )  ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = :Orden and o.sIdPlataforma = :sParamPlataform) ' +
        'INNER JOIN turnos tu ON (t.sContrato=tu.sContrato and t.sIdTurno=tu.sIdTurno) ' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha And tu.sOrigentTierra="Si" And o.sNumeroOrden= :Orden ' +
        'Order By t.sNumeroOrden, t.sIdTipoPermiso')
    else
      Permisos.SQL.Add('select t.sContrato, t.sNumeroOrden, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
        'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso And t.sNumeroOrden = :Orden ) ' +
        'INNER JOIN ordenesdetrabajo o ON (o.sContrato = t.sContrato and o.sNumeroOrden = :Orden)' +
        'INNER JOIN turnos tu ON (t.sContrato=tu.sContrato and t.sIdTurno=tu.sIdTurno) ' +
        'where t.sContrato = :contrato and t.dIdFecha = :fecha And tu.sOrigenTierra="Si" And o.sNumeroOrden= :Orden ' +
        'Order By t.sNumeroOrden, t.sIdTipoPermiso');
    Permisos.Params.ParamByName('Contrato').DataType := ftString;
    Permisos.Params.ParamByName('contrato').Value := sParamContrato;
    Permisos.Params.ParamByName('fecha').DataType := ftDate;
    Permisos.Params.ParamByName('fecha').Value := dParamFecha;
    Permisos.Params.ParamByName('Orden').DataType := ftString;
    Permisos.Params.ParamByName('Orden').Value := Global_Orden;
    if sParamPlataforma <> '' then
    begin
      Permisos.Params.ParamByName('Plataforma').DataType := ftString;
      Permisos.Params.ParamByName('Plataforma').Value := sParamPlataforma;
    end;
    Permisos.Open;
  end;


// Termino Personal y Equipo ...

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio Order By dFecha DESC');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
  QryBuscar.Params.ParamByName('Convenio').Value := QryReporteDiario.FieldValues['sIdConvenio'];
  QryBuscar.Open;
  sDiarioPeriodo := '';
  if QryBuscar.RecordCount > 0 then
    sDiarioPeriodo := datetostr(QryBuscar.FieldValues['dFechaInicio']) + ' AL ' + datetostr(QryBuscar.FieldValues['dFechaFinal']);

  if QryConfiguracion.FieldValues['iFirmas'] = '2' then
    rDiario.LoadFromFile(global_files + 'ReporteDiarioConsolidado2.fr3');
  if QryConfiguracion.FieldValues['iFirmas'] = '3' then
    rDiario.LoadFromFile(global_files + 'ReporteDiarioConsolidado.fr3');


  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rDiario.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rDiarioFirmas(sParamContrato, '', 'A', dParamFecha, tOrigen);

  if sParamDestino = 'Printer' then
    rDiario.Print
  else
    rDiario.ShowReport(True);

  QryBuscar.Destroy;
  QryBuscarAux.Destroy;

  procLimpia()
end;

//Mando a LLamar el procedimiento del reporte diario Para Perforacion
// Realizo los cambios

procedure procReporteDiarioPerf(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent);
const
  Titles: array[1..4] of string = ('Hora de Salida', 'Hora de Llegada', 'Inicio de Actividades', 'Cierre de Actividades');
var
  Registro: Integer;
  sPaquete: string;
  sBkPaquete: string;
  lEncontrado: Boolean;
  dAvance: Real;
  sTipoOrden: string;
  sListPaquetes: string;
begin
  // Creo los abjetos del reporte diario ...
  procCreateObject(tOrigen);

  rDiario.OnGetValue := tProcedure;
  // Actualizo primeramente las firmas ..
  if mMovimientos.RecordCount > 0 then
    mMovimientos.EmptyTable;

  if mBitacora1.RecordCount > 0 then
    mBitacora1.EmptyTable;

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  if lCheckReporte() then
    QryReporteDiario.SQL.Add('Select r.*, o.sDescripcionCorta, t.sOrigenTierra, t.sDescripcion From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno')
  else
    QryReporteDiario.SQL.Add('Select r.*, o.sDescripcionCorta From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;

  QryBuscar := tZReadOnlyQuery.Create(tOrigen);
  QryBuscar.Connection := connection.zconnection;
  QryBuscarAux := tZReadOnlyQuery.Create(tOrigen);
  QryBuscarAux.Connection := connection.zconnection;
  if lCheckReporte() then
  begin
    if QryConfiguracion.FieldValues['sTipoPartida'] = 'Todas' then
    begin
      QryBuscar.Active := False;
      QryBuscar.SQL.Clear;
      if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
        QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, ' +
          'a.sMedida, a.dCantidad as dCantidadAnexo, b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ')
      else
        QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, ' +
          'a.sMedida, a.dCantidad as dCantidadAnexo, b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs= a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ');
      QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscar.Params.ParamByName('Orden').DataType := ftString;
      QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscar.Params.ParamByName('Turno').DataType := ftString;
      QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
      QryBuscar.Open;
    end
    else
    begin
      QryBuscar.Active := False;
      QryBuscar.SQL.Clear;
      if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
        QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, ' +
          'a.sMedida, a.dCantidad as dCantidadAnexo, b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.dCantidad > 0 ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ')
      else
        QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, ' +
          'a.sMedida, a.dCantidad as dCantidadAnexo, ' +
          'b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.dCantidad > 0 ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ');
      QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscar.Params.ParamByName('Orden').DataType := ftString;
      QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscar.Params.ParamByName('Turno').DataType := ftString;
      QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
      QryBuscar.Open;
    end;

    if QryBuscar.RecordCount > 0 then
    begin
      QryBuscar.First;
      sPaquete := '';
      while not QryBuscar.Eof do
      begin
        if sPaquete <> QryBuscar.FieldValues['sWbsAnterior'] then
        begin
          sPaquete := QryBuscar.FieldValues['sWbsAnterior'];
          sBkPaquete := sPaquete;
          lEncontrado := False;
          while not lEncontrado and (sBkPaquete <> '') do
          begin
            QryBuscarAux.Active := False;
            QryBuscarAux.SQL.Clear;
            QryBuscarAux.SQL.Add('Select lGerencial, mDescripcion, sWbs, sWbsAnterior From actividadesxorden ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Actividad And sTipoActividad <> "Actividad" ');
            QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
            QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
            QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
            QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
            QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
            QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
            QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
            QryBuscarAux.Params.ParamByName('Actividad').Value := sBkPaquete;
            QryBuscarAux.Open;
            if QryBuscarAux.RecordCount > 0 then
            begin
              if QryBuscarAux.FieldByName('lGerencial').AsString = 'Si' then
                if Pos(QryBuscarAux.FieldValues['sWbs'], sListPaquetes) = 0 then
                begin
                  sListPaquetes := sListPaquetes + QryBuscarAux.FieldValues['sWbs'] + '|';
                  lEncontrado := True;
                  mBitacora1.Append;
                  mBitacora1.FieldValues['sTipo'] := 'Paquete';
                  mBitacora1.FieldValues['sContrato'] := sParamContrato;
                  mBitacora1.FieldValues['sPaquete'] := QryBuscarAux.FieldValues['sWbs'];
                  mBitacora1.FieldValues['sNumeroActividad'] := '';
                  mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['mDescripcion'];
                  mBitacora1.FieldValues['sMedida'] := '';
                  mBitacora1.FieldValues['dCantidadAnexo'] := 0;
                  mBitacora1.FieldValues['dCantidad'] := 0;
                  mBitacora1.FieldValues['dAvance'] := 0;
                  mBitacora1.FieldValues['iFase'] := 0;
                  mBitacora1.Post;
                end;
              sBkPaquete := QryBuscarAux.fieldByName('sWbsAnterior').AsString;
            end
            else
              sBkPaquete := '';
          end
        end;
        mBitacora1.Append;
        mBitacora1.FieldValues['sTipo'] := 'Partida';
        mBitacora1.FieldValues['sContrato'] := sParamContrato;
        mBitacora1.FieldValues['sPaquete'] := QryBuscar.FieldValues['sWbs'];
        mBitacora1.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['sNumeroActividad'];
        mBitacora1.FieldValues['sActividadAnterior'] := QryBuscar.FieldValues['sWbsAnterior'];
        mBitacora1.FieldValues['mDescripcion'] := QryBuscar.FieldValues['mDescripcion'];
        mBitacora1.FieldValues['sMedida'] := QryBuscar.FieldValues['sMedida'];
        mBitacora1.FieldValues['dCantidadAnexo'] := QryBuscar.FieldValues['dCantidadAnexo'];
        mBitacora1.FieldValues['dCantidad'] := QryBuscar.FieldValues['dCantidad'];
        mBitacora1.FieldValues['dAvance'] := QryBuscar.FieldValues['dAvance'];

        if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select sum(dCantidad) as dInstalado from bitacoradeactividades where sContrato = :Contrato and ' +
            'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
          QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
          QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
          QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
          QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;
          if QryAcumulados.RecordCount > 0 then
            mBitacora1.FieldValues['dCantidadAnterior'] := QryAcumulados.FieldValues['dInstalado']
          else
            mBitacora1.FieldValues['dCantidadAnterior'] := 0;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradeactividades where sContrato = :Contrato and ' +
            'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
          QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
          QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
          QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
          QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;
          if QryAcumulados.RecordCount > 0 then
            mBitacora1.FieldValues['dAvanceAnterior'] := QryAcumulados.FieldValues['dAvance']
          else
            mBitacora1.FieldValues['dAvanceAnterior'] := 0;

          mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
          mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
        end
        else
        begin
          mBitacora1.FieldValues['dCantidadAnterior'] := QryBuscar.FieldValues['dCantidadAnterior'];
          mBitacora1.FieldValues['dAvanceAnterior'] := QryBuscar.FieldValues['dAvanceAnterior'];
          mBitacora1.FieldValues['dCantidad'] := QryBuscar.FieldValues['dCantidadActual'];
          mBitacora1.FieldValues['dAvance'] := QryBuscar.FieldValues['dAvanceActual'];
          mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
          mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
        end;
        mBitacora1.FieldValues['iFase'] := 0;
        mBitacora1.Post;

        if QryConfiguracion.FieldValues['sTipoPartida'] = 'Todas' then
        begin
                  // Aqui se inserta el detalle de movimientos de la partida ...
//          QryBuscarAux.Active := False;
//          QryBuscarAux.SQL.Clear;
//          QryBuscarAux.SQL.Add('Select b.dCantidad, b.dAvance, b.iFase, b.sReferencia, a.sdescripcion, dcantidadanterior, davanceanterior, dcantidadactual, davanceactual From bitacoradealcances b ' +
//            'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
//            'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.iFase');
//          QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
//          QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
//          QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
//          QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
//          QryBuscarAux.Params.ParamByName('turno').DataType := ftString;
//          QryBuscarAux.Params.ParamByName('turno').Value := sParamTurno;
//          QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
//          QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
//          QryBuscarAux.Params.ParamByName('Wbs').DataType := ftString;
//          QryBuscarAux.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
//          QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
//          QryBuscarAux.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
//          QryBuscarAux.Open;

          QryBuscarAux.Active := False;
          QryBuscarAux.SQL.Clear; {10/marzo/2012 : adal, sWbs a la tabla alcance}
          QryBuscarAux.SQL.Add('Select b.dCantidad, b.dAvance, b.iFase, b.sReferencia, a.sdescripcion, b.dcantidadanterior, b.davanceanterior, b.dcantidadactual, b.davanceactual From bitacoradealcances b ' +
            ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroOrden=b.sNumeroOrden and b.sWbs=ao.sWbs and b.sNumeroActividad=ao.sNumeroActividad )   ' +
            'INNER JOIN alcancesxactividad a ON (ao.sContrato = a.sContrato And ao.sNumeroActividad = a.sNumeroActividad and ao.sWbsContrato=a.sWbs  And b.iFase = a.iFase ) ' +
            'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad and ao.sIdConvenio=:convenio  Order By b.iFase');
          QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
          QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
          QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
          QryBuscarAux.Params.ParamByName('turno').DataType := ftString;
          QryBuscarAux.Params.ParamByName('turno').Value := sParamTurno;
          QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
          QryBuscarAux.Params.ParamByName('Wbs').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
          QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
          QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
          QryBuscarAux.Open;
          if QryBuscarAux.RecordCount > 0 then
            while not QryBuscarAux.Eof do
            begin
              mBitacora1.Append;
              mBitacora1.FieldValues['sTipo'] := 'Alcance';
              mBitacora1.FieldValues['sContrato'] := sParamContrato;
              mBitacora1.FieldValues['sPaquete'] := QryBuscar.FieldValues['sWbs'];
              mBitacora1.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['sNumeroActividad'];
              mBitacora1.FieldValues['sActividadAnterior'] := QryBuscar.FieldValues['sWbsAnterior'];
              if Trim(QryBuscarAux.fieldByName('sReferencia').AsString) <> '' then
                mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'] + ' [REFERENCIA: ' + QryBuscarAux.FieldValues['sReferencia'] + ']'
              else
                mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'];
              mBitacora1.FieldValues['sMedida'] := '';
              mBitacora1.FieldValues['dCantidadAnexo'] := 0;
              mBitacora1.FieldValues['dCantidad'] := QryBuscarAux.FieldValues['dCantidad'];
              mBitacora1.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvance'];
              mBitacora1.FieldValues['iFase'] := QryBuscarAux.FieldValues['iFase'];

              if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
              begin
                QryAcumulados.Active := False;
                QryAcumulados.SQL.Clear;
                QryAcumulados.SQL.Add('Select sum(dCantidad) as dInstalado from bitacoradealcances where sContrato = :Contrato and ' +
                  'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase Group By sWbs, sNumeroActividad');
                QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
                QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
                QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
                QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
                QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
                QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
                QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
                QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
                QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
                QryAcumulados.Params.ParamByName('Fase').DataType := ftInteger;
                QryAcumulados.Params.ParamByName('Fase').Value := mBitacora1.FieldValues['iFase'];
                QryAcumulados.Open;
                if QryAcumulados.RecordCount > 0 then
                  mBitacora1.FieldValues['dCantidadAnterior'] := QryAcumulados.FieldValues['dInstalado']
                else
                  mBitacora1.FieldValues['dCantidadAnterior'] := 0;

                QryAcumulados.Active := False;
                QryAcumulados.SQL.Clear;
                QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradealcances where sContrato = :Contrato and ' +
                  'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase ' +
                  'Group By sWbs, sNumeroActividad');
                QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
                QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
                QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
                QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
                QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
                QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
                QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
                QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
                QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
                QryAcumulados.Params.ParamByName('Fase').DataType := ftInteger;
                QryAcumulados.Params.ParamByName('Fase').Value := mBitacora1.FieldValues['iFase'];
                QryAcumulados.Open;
                if QryAcumulados.RecordCount > 0 then
                  mBitacora1.FieldValues['dAvanceAnterior'] := QryAcumulados.FieldValues['dAvance']
                else
                  mBitacora1.FieldValues['dAvanceAnterior'] := 0;

                mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
                mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
              end
              else
              begin
                mBitacora1.FieldValues['dCantidadAnterior'] := QryBuscarAux.FieldValues['dCantidadAnterior'];
                mBitacora1.FieldValues['dAvanceAnterior'] := QryBuscarAux.FieldValues['dAvanceAnterior'];
                mBitacora1.FieldValues['dCantidad'] := QryBuscarAux.FieldValues['dCantidadActual'];
                mBitacora1.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvanceActual'];
                mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
                mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
              end;
              mBitacora1.Post;
              QryBuscarAux.Next
            end;
        end;
        QryBuscar.Next
      end
    end;
  end
  else
  begin
      // Reporte Tipo Simple ....
    QryBuscar.Active := False;
    QryBuscar.SQL.Clear;
    QryBuscar.SQL.Add('Select b.sIsometrico, b.sWbs, b.sNumeroActividad, b.mDescripcion, b.dAvance From bitacoradeactividades b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
      'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
      'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno ' +
      'Order By b.sIsometrico, a.iItemOrden ');
    QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
    QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
    QryBuscar.Params.ParamByName('Orden').DataType := ftString;
    QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscar.Params.ParamByName('Turno').DataType := ftString;
    QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
    QryBuscar.Open;

    sPaquete := '';
    while not QryBuscar.Eof do
    begin
      if sPaquete <> QryBuscar.FieldValues['sIsometrico'] then
      begin
        sPaquete := QryBuscar.FieldValues['sIsometrico'];
        mBitacora1.Append;
        mBitacora1.FieldValues['sTipo'] := 'Paquete';
        mBitacora1.FieldValues['sContrato'] := sParamContrato;
        mBitacora1.FieldValues['sPaquete'] := '';
        mBitacora1.FieldValues['sNumeroActividad'] := '';
        mBitacora1.FieldValues['mDescripcion'] := QryBuscar.FieldValues['sIsometrico'];
        mBitacora1.FieldValues['sMedida'] := '';
        mBitacora1.FieldValues['dCantidadAnexo'] := 0;
        mBitacora1.FieldValues['dCantidad'] := 0;
        mBitacora1.FieldValues['dAvance'] := 0;
        mBitacora1.FieldValues['iFase'] := 0;
        mBitacora1.Post;
      end;
      mBitacora1.Append;
      mBitacora1.FieldValues['sTipo'] := 'Partida';
      mBitacora1.FieldValues['sContrato'] := sParamContrato;
      mBitacora1.FieldValues['sPaquete'] := QryBuscar.FieldValues['sWbs'];
      mBitacora1.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['sNumeroActividad'];
      mBitacora1.FieldValues['sActividadAnterior'] := '';
      mBitacora1.FieldValues['mDescripcion'] := QryBuscar.FieldValues['mDescripcion'];
      mBitacora1.FieldValues['sMedida'] := '';
      mBitacora1.FieldValues['dCantidadAnexo'] := 0;
      mBitacora1.FieldValues['dCantidad'] := 0;
      mBitacora1.FieldValues['dAvance'] := QryBuscar.FieldValues['dAvance'];
      mBitacora1.Post;
      QryBuscar.Next;
    end;
  end;

  Bitacora3.Active := False;
  Bitacora3.SQL.Clear;
  Bitacora3.SQL.Add('select b.iIdDiario, b.sContrato, b.mDescripcion from bitacoradeactividades b ' +
    'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
    'Where b.sContrato = :contrato and b.dIdFecha = :fecha and b.sNumeroOrden = :Orden And b.sIdTurno = :Turno');
  Bitacora3.Params.ParamByName('contrato').DataType := ftString;
  Bitacora3.Params.ParamByName('contrato').Value := sParamContrato;
  Bitacora3.Params.ParamByName('orden').DataType := ftString;
  Bitacora3.Params.ParamByName('orden').Value := sParamOrden;
  Bitacora3.Params.ParamByName('fecha').DataType := ftDate;
  Bitacora3.Params.ParamByName('fecha').Value := dParamFecha;
  Bitacora3.Params.ParamByName('Turno').DataType := ftString;
  Bitacora3.Params.ParamByName('Turno').Value := sParamTurno;
  Bitacora3.Open;

  TiempoMuerto.Active := False;
  TiempoMuerto.SQL.Clear;
  TiempoMuerto.SQL.Add('Select t.sNumeroOrden, t.sArea, t.sHoraInicio, t.sHoraFinal, t.dPersonal, t.dFrente, t.sTiempoMuerto, t.sJornada, t.mDescripcion, c.sDescripcion from jornadasdiarias t ' +
    'INNER JOIN tiposdemovimiento c ON (t.sContrato = c.sContrato And t.sIdTipoMovimiento = c.sIdTipoMovimiento) ' +
    'Where t.sContrato = :Contrato And t.dIdFecha = :Fecha And t.sNumeroOrden = :Orden ' +
    'And t.sIdTurno = :Turno And t.sTipo = "Tiempo Inactivo" Order By t.sHoraInicio ASC');
  TiempoMuerto.Params.ParamByName('Contrato').DataType := ftString;
  TiempoMuerto.Params.ParamByName('Contrato').Value := sParamContrato;
  TiempoMuerto.Params.ParamByName('Fecha').DataType := ftDate;
  TiempoMuerto.Params.ParamByName('Fecha').Value := dParamFecha;
  TiempoMuerto.Params.ParamByName('Orden').DataType := ftString;
  TiempoMuerto.Params.ParamByName('Orden').Value := sParamOrden;
  TiempoMuerto.Params.ParamByName('turno').DataType := ftString;
  TiempoMuerto.Params.ParamByName('turno').Value := sParamTurno;
  TiempoMuerto.Open;
  sJornadasSuspendidas := '00:00';
  while not TiempoMuerto.Eof do
  begin
    sJornadasSuspendidas := sfnSumaHoras(sJornadasSuspendidas, TiempoMuerto.FieldValues['sJornada']);
    TiempoMuerto.Next
  end;

  if lCheckReporte() then
  begin
    QryMovimientosdePersonal.Active := False;
    QryMovimientosdePersonal.Sql.Clear;
    QryMovimientosdePersonal.SQL.Add('Select m.sIdPernocta, m.sIdPlataforma, e.sDescripcion, m.sHoraSalida, m.sHoraLlegada, ' +
      'm.sHoraInicio, m.sHoraFinal, e.sDescripcion From jornadasdiarias m inner join embarcaciones e ON ' +
      '(m.sContrato = e.sContrato And m.sIdEmbarcacion = e.sIdEmbarcacion) ' +
      'where m.sContrato = :Contrato And m.dIdFecha = :Fecha And m.sNumeroOrden = :Orden And ' +
      'm.sIdTurno = :Turno And m.sIdEmbarcacion <> "" And m.sTipo = "Disponibilidad del Sitio" ' +
      'Order By m.sIdPernocta, m.sIdPlataforma, m.sIdEmbarcacion');
    QryMovimientosdePersonal.Params.ParamByName('contrato').DataType := ftString;
    QryMovimientosdePersonal.Params.ParamByName('contrato').Value := sParamContrato;
    QryMovimientosdePersonal.Params.ParamByName('fecha').DataType := ftDate;
    QryMovimientosdePersonal.Params.ParamByName('fecha').Value := dParamFecha;
    QryMovimientosdePersonal.Params.ParamByName('orden').DataType := ftString;
    QryMovimientosdePersonal.Params.ParamByName('orden').Value := sParamOrden;
    QryMovimientosdePersonal.Params.ParamByName('turno').DataType := ftString;
    QryMovimientosdePersonal.Params.ParamByName('turno').Value := sParamTurno;
    QryMovimientosdePersonal.Open;

    if QryMovimientosdePersonal.RecordCount > 0 then
    begin
      QryMovimientosdePersonal.First;
      while not QryMovimientosdePersonal.Eof do
      begin
        for Registro := 1 to 4 do
        begin
          mMovimientos.Append;
          mMovimientos.FieldValues['sIdPernocta'] := QryMovimientosdePersonal.FieldValues['sIdPernocta'];
          mMovimientos.FieldValues['sIdPlataforma'] := QryMovimientosdePersonal.FieldValues['sIdPlataforma'];
          mMovimientos.FieldValues['sIdEmbarcacion'] := QryMovimientosdePersonal.FieldValues['sDescripcion'];
          mMovimientos.FieldValues['iCampo'] := Registro;
          mMovimientos.FieldValues['sRenglon'] := Titles[Registro];
          case Registro of
            1: mMovimientos.FieldValues['sHora'] := QryMovimientosdePersonal.FieldValues['sHoraSalida'];
            2: mMovimientos.FieldValues['sHora'] := QryMovimientosdePersonal.FieldValues['sHoraLlegada'];
            3: mMovimientos.FieldValues['sHora'] := QryMovimientosdePersonal.FieldValues['sHoraInicio'];
            4: mMovimientos.FieldValues['sHora'] := QryMovimientosdePersonal.FieldValues['sHoraFinal'];
          end;
          mMovimientos.Post
        end;
        QryMovimientosdePersonal.Next
      end
    end
  end;

  rptPersonal.Active := False;
  rptPersonal.Sql.Clear;

  rptEquipos.Active := False;
  rptEquipos.SQL.Clear;

  rptEquiposSeguridad.Active := False;
  rptEquiposSeguridad.SQL.Clear;
  if lCheckReporte() then
  begin
    if QryConfiguracion.FieldValues['sOrdenPerEq'] = 'Pernocta' then
    begin
      rptPersonal.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si") ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden Group By ' +
        'p2.sIdPernocta, p.sIdPersonal order by p2.sIdPernocta, p.iItemOrden asc');
      rptPersonal.Params.ParamByName('contrato').DataType := ftString;
      rptPersonal.Params.ParamByName('contrato').Value := sParamContrato;
      rptPersonal.Params.ParamByName('orden').DataType := ftString;
      rptPersonal.Params.ParamByName('orden').Value := sParamOrden;
      rptPersonal.Params.ParamByName('fecha').DataType := ftDate;
      rptPersonal.Params.ParamByName('fecha').Value := dParamFecha;
      rptPersonal.Params.ParamByName('Turno').DataType := ftString;
      rptPersonal.Params.ParamByName('Turno').Value := sParamTurno;
      rptPersonal.Open;
    end
    else
    begin
      rptPersonal.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si") ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden Group By ' +
        'p2.sIdPlataforma, p.sIdPersonal order by p2.sIdPlataforma, p.iItemOrden asc');
      rptPersonal.Params.ParamByName('contrato').DataType := ftString;
      rptPersonal.Params.ParamByName('contrato').Value := sParamContrato;
      rptPersonal.Params.ParamByName('orden').DataType := ftString;
      rptPersonal.Params.ParamByName('orden').Value := sParamOrden;
      rptPersonal.Params.ParamByName('fecha').DataType := ftDate;
      rptPersonal.Params.ParamByName('fecha').Value := dParamFecha;
      rptPersonal.Params.ParamByName('Turno').DataType := ftString;
      rptPersonal.Params.ParamByName('Turno').Value := sParamTurno;
      rptPersonal.Open;
    end;

    rptEquipos.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
      'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
      'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc');
    rptEquipos.Params.ParamByName('contrato').DataType := ftString;
    rptEquipos.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquipos.Params.ParamByName('orden').DataType := ftString;
    rptEquipos.Params.ParamByName('orden').Value := sParamOrden;
    rptEquipos.Params.ParamByName('fecha').DataType := ftDate;
    rptEquipos.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquipos.Params.ParamByName('equipo').DataType := ftString;
    rptEquipos.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquipos.Params.ParamByName('Turno').DataType := ftString;
    rptEquipos.Params.ParamByName('Turno').Value := sParamTurno;
    rptEquipos.Open;

    rptEquiposSeguridad.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
      'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo = :Equipo ' +
      'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc');
    rptEquiposSeguridad.Params.ParamByName('contrato').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquiposSeguridad.Params.ParamByName('orden').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('orden').Value := sParamOrden;
    rptEquiposSeguridad.Params.ParamByName('fecha').DataType := ftDate;
    rptEquiposSeguridad.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquiposSeguridad.Params.ParamByName('equipo').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquiposSeguridad.Params.ParamByName('Turno').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('Turno').Value := sParamTurno;
    rptEquiposSeguridad.Open;
  end
  else
  begin
    rptPersonal.SQL.Add('select b.sContrato, "" as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si") ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden Group By ' +
      'p.sIdPersonal order by p.iItemOrden asc');
    rptPersonal.Params.ParamByName('contrato').DataType := ftString;
    rptPersonal.Params.ParamByName('contrato').Value := sParamContrato;
    rptPersonal.Params.ParamByName('orden').DataType := ftString;
    rptPersonal.Params.ParamByName('orden').Value := sParamOrden;
    rptPersonal.Params.ParamByName('fecha').DataType := ftDate;
    rptPersonal.Params.ParamByName('fecha').Value := dParamFecha;
    rptPersonal.Params.ParamByName('Turno').DataType := ftString;
    rptPersonal.Params.ParamByName('Turno').Value := sParamTurno;
    rptPersonal.Open;

    rptEquipos.SQL.Add('select b.sContrato, "" as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
      'Group By p.sIdEquipo order by p.iItemOrden asc');
    rptEquipos.Params.ParamByName('contrato').DataType := ftString;
    rptEquipos.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquipos.Params.ParamByName('orden').DataType := ftString;
    rptEquipos.Params.ParamByName('orden').Value := sParamOrden;
    rptEquipos.Params.ParamByName('fecha').DataType := ftDate;
    rptEquipos.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquipos.Params.ParamByName('equipo').DataType := ftString;
    rptEquipos.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquipos.Params.ParamByName('Turno').DataType := ftString;
    rptEquipos.Params.ParamByName('Turno').Value := sParamTurno;
    rptEquipos.Open;

    rptEquiposSeguridad.SQL.Add('select b.sContrato, "" as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo = :Equipo ' +
      'Group By p.sIdEquipo order by p.iItemOrden asc');
    rptEquiposSeguridad.Params.ParamByName('contrato').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('contrato').Value := sParamContrato;
    rptEquiposSeguridad.Params.ParamByName('orden').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('orden').Value := sParamOrden;
    rptEquiposSeguridad.Params.ParamByName('fecha').DataType := ftDate;
    rptEquiposSeguridad.Params.ParamByName('fecha').Value := dParamFecha;
    rptEquiposSeguridad.Params.ParamByName('equipo').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('equipo').Value := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquiposSeguridad.Params.ParamByName('Turno').DataType := ftString;
    rptEquiposSeguridad.Params.ParamByName('Turno').Value := sParamTurno;
    rptEquiposSeguridad.Open;
  end;


  if lCheckReporte() then
  begin
    Permisos.Active := False;
    Permisos.SQL.Clear;
    Permisos.SQL.Add('select t.sContrato, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
      'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
      'where t.sContrato = :contrato and t.dIdFecha = :fecha and ' +
      't.sNumeroOrden = :orden And t.sIdTurno = :Turno Order By t.sIdTipoPermiso');
    Permisos.Params.ParamByName('Contrato').DataType := ftString;
    Permisos.Params.ParamByName('contrato').Value := sParamContrato;
    Permisos.Params.ParamByName('fecha').DataType := ftDate;
    Permisos.Params.ParamByName('fecha').Value := dParamFecha;
    Permisos.Params.ParamByName('Orden').DataType := ftString;
    Permisos.Params.ParamByName('Orden').Value := sParamOrden;
    Permisos.Params.ParamByName('Turno').DataType := ftString;
    Permisos.Params.ParamByName('Turno').Value := sParamTurno;
    Permisos.Open;

    if Permisos.RecordCount = 0 then
    begin
      QryBuscarAux.Active := False;
      QryBuscarAux.SQL.Clear;
      QryBuscarAux.SQL.Add('Select sIdTipoPermiso from tiposdepermiso');
      QryBuscarAux.Open;
      if QryBuscarAux.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO tramitedepermisos ( sContrato , dIdFecha , sNumeroOrden, sIdTurno, sIdTipoPermiso, sFolios) ' +
          ' VALUES (:contrato, :fecha, :orden, :turno, :permiso, :folios)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
        connection.zCommand.Params.ParamByName('orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('orden').value := sParamOrden;
        connection.zCommand.Params.ParamByName('turno').DataType := ftString;
        connection.zCommand.Params.ParamByName('turno').value := sParamTurno;
        connection.zCommand.Params.ParamByName('permiso').DataType := ftString;
        connection.zCommand.Params.ParamByName('permiso').value := QryBuscarAux.FieldValues['sIdTipoPermiso'];
        connection.zCommand.Params.ParamByName('folios').DataType := ftString;
        connection.zCommand.Params.ParamByName('folios').value := ' ';
        connection.zCommand.ExecSQL;
      end;
      Permisos.refresh
    end
  end;

  QryReporteFotografico.Active := False;
  QryReporteFotografico.SQL.Clear;
  QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
    'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
  QryReporteFotografico.Params.ParamByName('contrato').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteFotografico.Params.ParamByName('Reporte').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('Reporte').Value := sParamReporte;
  QryReporteFotografico.Open;

  // Variables Generales del Reporte

  global_imprime := 'Si';

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select r.sContrato From reportediario r inner join ordenesdetrabajo o on ' +
    '(r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdTipoOrden <> :tipo) ' +
    'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And r.lStatus <> "Autorizado" ');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
  QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
  QryBuscar.Params.ParamByName('tipo').DataType := ftString;
  QryBuscar.Params.ParamByName('tipo').Value := QryConfiguracion.FieldValues['sOrdenExtraordinaria'];
  QryBuscar.Open;
  if QryBuscar.RecordCount > 0 then
    global_imprime := 'No';

  if lCheckReporte() then
  begin
    if QryReporteDiario.FieldValues['sOrigenTierra'] = 'Si' then
      sDiarioDescripcionCorta := 'OFICINAS ADMINISTRATIVAS'
    else
      sDiarioDescripcionCorta := QryReporteDiario.FieldValues['sIdFolio'];
  end
  else
    sDiarioDescripcionCorta := QryReporteDiario.FieldValues['sDescripcionCorta'];

  sDiarioComentario := '';
  if global_imprime = 'No' then
    sDiarioComentario := 'EXISTEN REPORTES DIARIOS DE OTRAS ORDENES DE TRABAJO SIN VALIDAR/AUTORIZAR EN EL DIA, POR TAL NO SE PUEDE REFLEJAR EL AVANCE REAL Y LOS TIEMPOS MUERTOS REALES DEL CONTRATO.';

  sDiarioTitulo := '';
  if global_imprime = 'No' then
    sDiarioTitulo := 'OBSERVACIONES';

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio Order By dFecha DESC');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
  QryBuscar.Params.ParamByName('Convenio').Value := QryReporteDiario.FieldValues['sIdConvenio'];
  QryBuscar.Open;
  sDiarioPeriodo := '';
  if QryBuscar.RecordCount > 0 then
    sDiarioPeriodo := datetostr(QryBuscar.FieldValues['dFechaInicio']) + ' AL ' + datetostr(QryBuscar.FieldValues['dFechaFinal']);
  QryBuscar.Destroy;
  QryBuscarAux.Destroy;

  if lCheckReporte() then
  begin
      // Avances Fisico/Programados ...
    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select sIdTipoOrden from ordenesdetrabajo ' +
      'where sContrato = :Contrato and sNumeroOrden = :Orden');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').Value := sParamOrden;
    QryOrdenesdeTrabajo.Open;
    sTipoOrden := QryOrdenesdeTrabajo.FieldValues['sIdTipoOrden'];


    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, sIdTipoOrden from ordenesdetrabajo where sContrato = :Contrato and sIdTipoOrden <> :Tipo');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Tipo').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Tipo').Value := QryConfiguracion.FieldValues['sOrdenExtraordinaria'];
    QryOrdenesdeTrabajo.Open;
    if QryOrdenesdeTrabajo.RecordCount > 1 then
      procAvances(sParamContrato, sParamOrden, QryReporteDiario.FieldValues['sIdConvenio'], QryReporteDiario.FieldValues['sIdTurno'], dParamFecha, True, tOrigen)
    else
      procAvances(sParamContrato, sParamOrden, QryReporteDiario.FieldValues['sIdConvenio'], QryReporteDiario.FieldValues['sIdTurno'], dParamFecha, False, tOrigen);


    if QryReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
    begin
      dRealGlobalAnterior := 0;
      dRealGlobalActual := 0;
      dRealGlobalAcumulado := 0;
      dRealOrdenAnterior := 0;
      dRealOrdenActual := 0;
      dRealOrdenAcumulado := 0;
    end;

      // Termino Variables Globales
    if QryReporteFotografico.RecordCount = 0 then
    begin
      if QryOrdenesdeTrabajo.RecordCount > 1 then
      begin
        if sTipoOrden = 'I' then
        begin
          dProgramadoGlobalAnterior := dProgramadoOrdenAnterior;
          dProgramadoGlobalActual := dProgramadoOrdenActual;
          dProgramadoGlobalAcumulado := dProgramadoOrdenAcumulado;
          dRealGlobalAnterior := dRealOrdenAnterior;
          dRealGlobalActual := dRealOrdenActual;
          dRealGlobalAcumulado := dRealOrdenAcumulado;
          dProgramadoOrdenAnterior := 0;
          dProgramadoOrdenActual := 0;
          dProgramadoOrdenAcumulado := 0;
          dRealOrdenAnterior := 0;
          dRealOrdenActual := 0;
          dRealOrdenAcumulado := 0;
          if QryMovimientosdePersonal.RecordCount > 0 then
            rDiario.LoadFromFile(global_files + 'rDiarioNormalConEmbarcacionIndependiente.fr3')
          else
            rDiario.LoadFromFile(global_files + 'rDiarioNormalSinEmbarcacionIndependiente.fr3');
        end
        else
          if QryMovimientosdePersonal.RecordCount > 0 then
            rDiario.LoadFromFile(global_files + 'rDiarioMultipleConEmbarcacion.fr3')
          else
            rDiario.LoadFromFile(global_files + 'rDiarioMultipleSinEmbarcacionPerf.fr3');
      end
      else
      begin
        if sTipoOrden = QryConfiguracion.FieldValues['sOrdenExtraordinaria'] then
        begin
          dRealGlobalAnterior := 0;
          dRealGlobalActual := 0;
          dRealGlobalAcumulado := 0;
          dProgramadoOrdenAnterior := 0;
          dProgramadoOrdenActual := 0;
          dProgramadoOrdenAcumulado := 0;
          dRealOrdenAnterior := 0;
          dRealOrdenActual := 0;
          dRealOrdenAcumulado := 0;
        end;
        if QryMovimientosdePersonal.RecordCount > 0 then
          rDiario.LoadFromFile(global_files + 'rDiarioNormalConEmbarcacion.fr3')
        else
          rDiario.LoadFromFile(global_files + 'rDiarioNormalSinEmbarcacion.fr3');
      end;
    end
    else
    begin
      if QryOrdenesdeTrabajo.RecordCount > 1 then
      begin
        if QryOrdenesdeTrabajo.FieldValues['sIdTipoOrden'] = 'I' then
        begin
          dProgramadoGlobalAnterior := dProgramadoOrdenAnterior;
          dProgramadoGlobalActual := dProgramadoOrdenActual;
          dProgramadoGlobalAcumulado := dProgramadoOrdenAcumulado;
          dRealGlobalAnterior := dRealOrdenAnterior;
          dRealGlobalActual := dRealOrdenActual;
          dRealGlobalAcumulado := dRealOrdenAcumulado;
          dProgramadoOrdenAnterior := 0;
          dProgramadoOrdenActual := 0;
          dProgramadoOrdenAcumulado := 0;
          dRealOrdenAnterior := 0;
          dRealOrdenActual := 0;
          dRealOrdenAcumulado := 0;
          if QryMovimientosdePersonal.RecordCount > 0 then
            rDiario.LoadFromFile(global_files + 'rDiarioNormalConEmbarcacionConFotografiasIndependiente.fr3')
          else
            rDiario.LoadFromFile(global_files + 'rDiarioNormalSinEmbarcacionConFotografiasIndependiente.fr3');
        end
        else
          if QryMovimientosdePersonal.RecordCount > 0 then
            rDiario.LoadFromFile(global_files + 'rDiarioMultipleConEmbarcacionConFotografias.fr3')
          else
            rDiario.LoadFromFile(global_files + 'rDiarioMultipleSinEmbarcacionConFotografiasPerf.fr3');
      end
      else
      begin
        if sTipoOrden = QryConfiguracion.FieldValues['sOrdenExtraordinaria'] then
        begin
          dRealGlobalAnterior := 0;
          dRealGlobalActual := 0;
          dRealGlobalAcumulado := 0;
          dProgramadoOrdenAnterior := 0;
          dProgramadoOrdenActual := 0;
          dProgramadoOrdenAcumulado := 0;
          dRealOrdenAnterior := 0;
          dRealOrdenActual := 0;
          dRealOrdenAcumulado := 0;
        end;
        if QryMovimientosdePersonal.RecordCount > 0 then
          rDiario.LoadFromFile(global_files + 'rDiarioNormalConEmbarcacionConFotografias.fr3')
        else
          rDiario.LoadFromFile(global_files + 'rDiarioNormalSinEmbarcacionConFotografias.fr3');
      end
    end
  end
  else
  begin
    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select sDescripcion from ordenes_frentes ' +
      'where sContrato = :Contrato and sNumeroOrden = :Orden And sIdFrente = :Turno');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').Value := sParamOrden;
    QryOrdenesdeTrabajo.Params.ParamByName('Turno').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Turno').Value := sParamTurno;
    QryOrdenesdeTrabajo.Open;
    if QryOrdenesdeTrabajo.RecordCount > 0 then
      sDescripcionTurno := QryOrdenesdeTrabajo.FieldValues['sDescripcion']
    else
      sDescripcionturno := '';

    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select o.mDescripcion, p.sDescripcion as sIdPlataforma from ordenesdetrabajo o ' +
      'inner join plataformas p on (o.sIdPlataforma = p.sIdPlataforma) ' +
      'where o.sContrato = :Contrato and o.sNumeroOrden = :Orden');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').Value := sParamOrden;
    QryOrdenesdeTrabajo.Open;
    if QryOrdenesdeTrabajo.RecordCount > 0 then
    begin
      mDescripcionOrden := QryOrdenesdeTrabajo.FieldValues['mDescripcion'];
      sPlataformaOrden := QryOrdenesdeTrabajo.FieldValues['sIdPlataforma'];
    end
    else
    begin
      mDescripcionOrden := '';
      sPlataformaOrden := '';
    end;
    if QryReporteFotografico.RecordCount > 0 then
      rDiario.LoadFromFile(global_files + 'rDiarioConFotografias.fr3')
    else
      rDiario.LoadFromFile(global_files + 'rDiarioSinFotografias.fr3')
  end;

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rDiario.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', dParamFecha, tOrigen);

  if sParamDestino = 'Printer' then
    rDiario.Print
  else
    rDiario.ShowReport;
  procLimpia()
end;

procedure procFichaTecnica(sParamContrato, sParamConvenio, sParamActividad: string; tOrigen: TComponent; FormatosExp: string = ''; PermisosExp: string = '');
var
  QryFichaTecnica: tzReadOnlyQuery;
  rFichaTecnica: TfrxReport;
begin
  QryFichaTecnica := tzReadOnlyQuery.Create(tOrigen);
  QryFichaTecnica.Connection := connection.zconnection;

  rFichaTecnica := TfrxReport.Create(tOrigen);
  rFichaTecnica.PreviewOptions.MDIChild := False;
  rFichaTecnica.PreviewOptions.Modal := True;
  rFichaTecnica.PreviewOptions.Maximized := lCheckMaximized();
  rFichaTecnica.PreviewOptions.ShowCaptions := False;
  rFichaTecnica.Previewoptions.ZoomMode := zmPageWidth;


  dsFichaTecnica := TfrxDBDataSet.Create(tOrigen);
  dsFichaTecnica.DataSet := QryFichaTecnica;
  dsFichaTecnica.UserName := 'dsFichaTecnica';
  QryFichaTecnica.Active := False;
  QryFichaTecnica.SQL.Clear;
  QryFichaTecnica.SQL.Add('Select f.*, a.mDescripcion, a.dCantidadAnexo, a.sMedida, a.sEspecificacion From fichatecnica f ' +
    'INNER JOIN actividadesxanexo a ON (a.sContrato = f.sContrato And a.sIdConvenio = :Convenio And a.sNumeroActividad = f.sNumeroActividad And a.sTipoActividad = "Actividad") ' +
    'Where f.sContrato = :Contrato And f.sNumeroActividad = :Actividad');
  QryFichaTecnica.Params.ParamByName('Contrato').DataType := ftString;
  QryFichaTecnica.Params.ParamByName('Contrato').Value := sParamContrato;
  QryFichaTecnica.Params.ParamByName('Convenio').DataType := ftString;
  QryFichaTecnica.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryFichaTecnica.Params.ParamByName('Actividad').DataType := ftString;
  QryFichaTecnica.Params.ParamByName('Actividad').Value := sParamActividad;
  QryFichaTecnica.Open;

  rFichaTecnica.LoadFromFile(global_files + 'rFichaTecnica.fr3');
  rFichaTecnica.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  //<ROJAS>
  rFichaTecnica.ShowReport(True); //
  rFichaTecnica.Destroy;
  QryFichaTecnica.Destroy;
  dsFichaTecnica.Destroy;
end;

procedure procLimpia();
begin
  dsOrden.Destroy;
  dsMovimientos.Destroy;
  dsPersonal.Destroy;
  dsTiempoExtra.Destroy;
  dsBitacora3.Destroy;
  dsSeguridad.Destroy;
  dsReporteDiario.Destroy;
  dsConfiguracion.Destroy;
  dsReporteFotografico.Destroy;
  dsPermisos.Destroy;
  dsEquipos.Destroy;
  dsTiemposMuertos.Destroy;
  dsTiempoMuertoPersonal.Destroy;
  dsPersonalxPartida.Destroy;
  dsMaterialxPartida.Destroy;
  mPersonalxPartida.Destroy;
  mMaterialxPartida.Destroy;
  dsmBitacora1.Destroy;
  dsmBitacoraActividades.Destroy;
  QryOrdenesdeTrabajo.Destroy; ;
  mMovimientos.Destroy;
  rptPersonal.Destroy;
  Bitacora3.Destroy;
  mBitacora3.Destroy;
  rptEquiposSeguridad.Destroy;
  QryReporteDiario.Destroy;
  QryConfiguracion.Destroy;
  QryReporteFotografico.Destroy;
  Permisos.Destroy;
  rptEquipos.Destroy;
  TiempoMuerto.Destroy;
  TiempoMuertoPersonal.Destroy;
  mBitacora1.Destroy;
  mBitacoraActividades.Destroy;
  rDiario.Destroy;
  qryComentariosAdicionales.Destroy;
  dsComentariosAdicionales.Destroy;
  QryC14.Destroy;
  qryPers13.Destroy;
  QryC14te.Destroy;
  QryC15.Destroy;
  dsC14.Destroy;
  dsC14te.Destroy;
  dsC15.Destroy;
  dsPers13.Destroy;
  qryComentariosxActividad.Destroy;
  dsComentariosxActividad.Destroy;
  qryConfiguracionOrden.Destroy;
  dsConfiguracionOrden.Destroy;
  dsPernoctas.Destroy;
  QryPernoctas.Destroy;
  QryPeriodo.Destroy;
  dsPeriodo.Destroy;
  QryExisteFoto.Destroy;
  dsExisteFoto.Destroy;
  QryAdmon.Destroy;
  dsAdmon.Destroy;

  //primera hoja de barco programadas
   Prorrateos.Destroy;
   QryArribos.Destroy;
   QryArribosVuelo.Destroy;
   QryClimaReporte.Destroy;
   qryRecursosReporte.Destroy;
   qryNotasGenerales.Destroy;
   detProrrateos.Destroy;
   ArribosReporte.Destroy;
   ArribosReporteVuelo.Destroy;
   dsClimaReporte.Destroy;
   dsRecursosReporte.Destroy;
   dsNotasGenerales.Destroy;
end;

function sTiempoMuerto(sMuerto: string; iTotalPersonal, iTotalFrente, iJornada: Real): string;
var
  iMinutosMuerto,
    PorcMuerto,
    iMuerto, dMuerto: Real;
  sHoras, sMinutos: string;
begin
  iMinutosMuerto := (rfnDecimal(MidStr(sMuerto, 1, 2)) * 60) + rfnDecimal(MidStr(sMuerto, 4, 2));
  iMinutosMuerto := iMinutosMuerto * iTotalFrente;
  if iMinutosMuerto > 0 then
    PorcMuerto := iMinutosMuerto / iTotalPersonal
  else
    PorcMuerto := 0;
  PorcMuerto := PorcMuerto * iJornada;
  iMuerto := Int(PorcMuerto / 60);

  // La diferencia contra excel está en esta línea.
  dMuerto := RoundTo((PorcMuerto - (iMuerto * 60)) / 100, -2) * 100;

  // Si coloco está línea aquí el cálculo sale igual a excel
  {dMuerto := Int(PorcMuerto - (iMuerto * 60));}

  if dMuerto = 60 then
  begin
    dMuerto := 0;
    iMuerto := iMuerto + 1
  end;
  Str(iMuerto: 2: 0, sHoras);
  sHoras := Trim(sHoras);
  if iMuerto >= 10 then
    sHoras := sHoras + ':'
  else
    sHoras := '0' + sHoras + ':';

  Str(dMuerto: 2: 0, sMinutos);
  sMinutos := Trim(sMinutos);
  if dMuerto >= 10 then
    sMuerto := sHoras + sMinutos
  else
    sMuerto := sHoras + '0' + sMinutos;
  sTiempoMuerto := sMuerto;
end;

function ifnDecimales(iParamDecimales: Integer): Integer;
var
  sMultiplo: string;
  Item: Integer;
begin
  sMultiplo := '1';
  for Item := 1 to iParamDecimales do
    sMultiplo := sMultiplo + '0';
  ifnDecimales := StrToInt(sMultiplo)
end;

function lfnValidaHora(sParamHora: string): Boolean;
var
  lResult: Boolean;
begin
  lResult := True;
  if sParamHora <> '00:00' then
    if (MidStr(sParamHora, 3, 1) <> ':') then
      lResult := False
    else
      if (MidStr(sParamHora, 1, 2) > '24') then
        lResult := False
      else
        if (MidStr(sParamHora, 4, 2) > '59') then
          lResult := False
        else
          if (MidStr(sParamHora, 1, 2) >= '24') and (MidStr(sParamHora, 4, 2) >= '01') then
            lResult := False;
  if lResult = False then
    Beep();

  lfnValidaHora := lResult;
end;

function sfnFactoriza(Cantidad: Real; HoraInicio, HoraFinal: string; iParamJornadas: Real; iDecimales: Integer): string;
var
  nHorasInicio: Real;
  nMinutosInicio: Real;
  nHorasFinal: Real;
  nMinutosFinal: Real;
  dTotal: Real;
  sFactor: string;
begin

  HoraInicio := Trim(HoraInicio);
  nHorasInicio := rfnDecimal(MidStr(HoraInicio, 1, 2)) * 60;
  nMinutosInicio := (nHorasInicio + rfnDecimal(MidStr(HoraInicio, 4, 2))) / 60;

  HoraFinal := Trim(HoraFinal);
  nHorasFinal := rfnDecimal(MidStr(HoraFinal, 1, 2)) * 60;
  nMinutosFinal := (nHorasFinal + rfnDecimal(MidStr(HoraFinal, 4, 2))) / 60;
  dTotal := ((nMinutosFinal - nMinutosInicio) / iParamJornadas) * Cantidad;
//    dTotal := ((  nMinutosFinal  -  nMinutosInicio ) * Cantidad ) ;
  Str(dTotal: 10: iDecimales, sFactor);
  sfnFactoriza := trim(sFactor);
end;

function sfnFactor(sParamHoraInicio: string; sParamHoraFinal: string; iParamJornadas: Real; iDecimales: Integer): string;
var
  nHorasInicio: Real;
  nMinutosInicio: Real;
  nHorasFinal: Real;
  nMinutosFinal: Real;
  sFactor: string;
begin
  sParamHoraInicio := Trim(sParamHoraInicio);
  nHorasInicio := rfnDecimal(MidStr(sParamHoraInicio, 1, 2)) * 60;
  nMinutosInicio := (nHorasInicio + rfnDecimal(MidStr(sParamHoraInicio, 4, 2))) / 60;

  sParamHoraFinal := Trim(sParamHoraFinal);
  nHorasFinal := rfnDecimal(MidStr(sParamHoraFinal, 1, 2)) * 60;
  nMinutosFinal := (nHorasFinal + rfnDecimal(MidStr(sParamHoraFinal, 4, 2))) / 60;
  Str(((nMinutosFinal - nMinutosInicio) / iParamJornadas): 10: iDecimales, sFactor);
  sfnFactor := Trim(sFactor);
end;

function sfnHora(sParamHoras: string): Real;
var
  nHoras, nMinutos: Real;
begin
  sParamHoras := Trim(sParamHoras);
  nHoras := rfnDecimal(MidStr(sParamHoras, 1, 2)) * 60;
  nMinutos := nHoras + rfnDecimal(MidStr(sParamHoras, 4, 2));
  sfnHora := (nMinutos / 60)
end;


function sfnRestaHoras(sParamHorasMax, sParamHorasMin: string): string;
var
  nHorasMax, nMinutosMax: Real;
  nHorasMin, nMinutosMin: Real;
  nHorasResult, nMinutosResult: Real;
  sHoras, sMinutos: string;
begin
  sParamHorasMax := Trim(sParamHorasMax);
  sParamHorasMin := Trim(sParamHorasMin);

  nHorasMax := rfnDecimal(MidStr(sParamHorasMax, 1, 2));
  nHorasMin := rfnDecimal(MidStr(sParamHorasMin, 1, 2));

  nMinutosMax := rfnDecimal(MidStr(sParamHorasMax, 4, 2));
  nMinutosMin := rfnDecimal(MidStr(sParamHorasMin, 4, 2));

  if nMinutosMax >= nMinutosMin then
    nMinutosResult := nMinutosMax - nMinutosMin
  else
  begin
    nHorasMax := nHorasMax - 1;
    nMinutosResult := (60 + nMinutosMax) - nMinutosMin;
  end;

  nHorasResult := nHorasMax - nHorasMin;

  Str(nHorasResult: 2: 0, sHoras);
  sHoras := Trim(sHoras);
  if nHorasResult >= 10 then
    sHoras := sHoras + ':'
  else
    sHoras := '0' + sHoras + ':';

  Str(nMinutosResult: 2: 0, sMinutos);
  sMinutos := Trim(sMinutos);
  if nMinutosResult >= 10 then
    sfnRestaHoras := sHoras + sMinutos
  else
    sfnRestaHoras := sHoras + '0' + sMinutos;
end;



function sfnSumaHoras(sParamHorasMax, sParamHorasMin: string): string;
var
  nHorasMax, nMinutosMax: Real;
  nHorasMin, nMinutosMin: Real;
  nHorasResult, nMinutosResult: Real;
  sHoras, sMinutos: string;
begin
  sParamHorasMax := Trim(sParamHorasMax);
  sParamHorasMin := Trim(sParamHorasMin);
  nHorasMax := rfnDecimal(MidStr(sParamHorasMax, 1, Pos(':', sParamHorasMax) - 1));
  nMinutosMax := rfnDecimal(MidStr(sParamHorasMax, Pos(':', sParamHorasMax) + 1, 2));

  nHorasMin := rfnDecimal(MidStr(sParamHorasMin, 1, 2));
  nMinutosMin := rfnDecimal(MidStr(sParamHorasMin, 4, 2));

  nMinutosResult := nMinutosMax + nMinutosMin;
  nHorasResult := nHorasMax + nHorasMin;

  if nMinutosResult >= 60 then
  begin
    nHorasResult := nHorasResult + 1;
    nMinutosResult := nMinutosResult - 60;
  end;

  Str(nHorasResult: 2: 0, sHoras);
  sHoras := Trim(sHoras);
  if nHorasResult >= 10 then
    sHoras := sHoras + ':'
  else
    sHoras := '0' + sHoras + ':';

  Str(nMinutosResult: 2: 0, sMinutos);
  sMinutos := Trim(sMinutos);
  if nMinutosResult >= 10 then
    sfnSumaHoras := sHoras + sMinutos
  else
    sfnSumaHoras := sHoras + '0' + sMinutos;
end;

function rfnDecimal(sParamCantidad: string): Real;
var
  Code: Integer;
  Resultado: Real;
begin
  Val(sParamCantidad, Resultado, Code);
  if Code <> 0 then
    Resultado := 0;
  rfnDecimal := Resultado;
end;

function sfnCalculaFecha(sParamFecha: string; sParamHora: string; sParamDuracion: string): string;
var
  Horas_Inicio: Real;
  Minutos_Inicio: Real;
  Horas_Duracion: Real;
  Minutos_Duracion: Real;
  Total_Horas: Real;
  Total_Minutos: Real;
  Dias, Horas, Minutos: Real;
  str_horas, str_minutos: string;
  Decimal, Entero: string;
  Fecha_Hora_Final: string;
begin
  if Pos('.', sParamDuracion) > 0 then
  begin
    Decimal := MidStr(sParamDuracion, Pos('.', sParamDuracion) + 1, 2);
    if Length(Trim(Decimal)) = 1 then
      sParamDuracion := sParamDuracion + '0';
  end
  else
    sParamDuracion := sParamDuracion + '.00';

  Entero := MidStr(sParamDuracion, 1, Pos('.', sParamDuracion) - 1);
  if Length(Trim(Entero)) = 1 then
    sParamDuracion := '0' + Trim(sParamDuracion);
  Horas_Inicio := rfnDecimal(MidStr(sParamHora, 1, 2));
  Minutos_Inicio := rfnDecimal(MidStr(sParamHora, 4, 2));

  if Pos('.', sParamDuracion) > 0 then
  begin
    Horas_Duracion := rfnDecimal(MidStr(sParamDuracion, 1, Pos('.', sParamDuracion) - 1));
    Minutos_Duracion := rfnDecimal(MidStr(sParamDuracion, Pos('.', sParamDuracion) + 1, 2))
  end
  else
  begin
    Horas_Duracion := rfnDecimal(MidStr(sParamDuracion, 1, 2));
    Minutos_Duracion := 0
  end;

  Total_Horas := Int(Horas_Inicio + Horas_Duracion);
  Total_Minutos := Int(Minutos_Inicio + Minutos_Duracion);

  Dias := Int(Total_Horas / 24);
  Horas := Total_Horas - (Int(Total_Horas / 24) * 24);

  Horas := Horas + Int(Total_Minutos / 60);

  Minutos := Total_Minutos - (Int(Total_Minutos / 60) * 60);

  if (horas = 0) and (minutos = 0) then
  begin
    horas := 24;
    Dias := Dias - 1
  end;

  str(horas: 2: 0, str_horas);
  str(minutos: 2: 0, str_minutos);

  str_horas := trim(str_horas);
  str_minutos := trim(str_minutos);

  if length(str_horas) = 1 then
    str_horas := '0' + str_horas;
  if length(str_minutos) = 1 then
    str_minutos := '0' + str_minutos;

  Fecha_Hora_Final := '';
  Fecha_Hora_Final := DatetoStr(StrtoDate(sParamFecha) + Dias);
  Fecha_Hora_Final := Fecha_Hora_Final + '|' + str_horas + ':' + str_minutos;
  sFnCalculaFecha := Fecha_Hora_Final;
end;

function sfnCalculaDia(iParamDia: Integer; sParamHora: string; sParamDuracion: string): string;
var
  Horas_Inicio: Real;
  Minutos_Inicio: Real;
  Horas_Duracion: Real;
  Minutos_Duracion: Real;
  Total_Horas: Real;
  Total_Minutos: Real;
  Dias, Horas, Minutos: Real;
  str_horas, str_minutos: string;
  Decimal, Entero: string;
  Dia_Hora_Final: string;
begin
  if Pos('.', sParamDuracion) > 0 then
  begin
    Decimal := MidStr(sParamDuracion, Pos('.', sParamDuracion) + 1, 2);
    if Length(Trim(Decimal)) = 1 then
      sParamDuracion := sParamDuracion + '0';
  end
  else
    sParamDuracion := sParamDuracion + '.00';

  Entero := MidStr(sParamDuracion, 1, Pos('.', sParamDuracion) - 1);
  if Length(Trim(Entero)) = 1 then
    sParamDuracion := '0' + Trim(sParamDuracion);
  Horas_Inicio := rfnDecimal(MidStr(sParamHora, 1, 2));
  Minutos_Inicio := rfnDecimal(MidStr(sParamHora, 3, 2));

  if Pos('.', sParamDuracion) > 0 then
  begin
    Horas_Duracion := rfnDecimal(MidStr(sParamDuracion, 1, Pos('.', sParamDuracion) - 1));
    Minutos_Duracion := rfnDecimal(MidStr(sParamDuracion, Pos('.', sParamDuracion) + 1, 2))
  end
  else
  begin
    Horas_Duracion := rfnDecimal(MidStr(sParamDuracion, 1, 2));
    Minutos_Duracion := 0
  end;

  Total_Horas := Int(Horas_Inicio + Horas_Duracion);
  Total_Minutos := Int(Minutos_Inicio + Minutos_Duracion);

  Dias := Int(Total_Horas / 24);
  Horas := Total_Horas - (Int(Total_Horas / 24) * 24);

  Horas := Horas + Int(Total_Minutos / 60);

  Minutos := Total_Minutos - (Int(Total_Minutos / 60) * 60);

  if (horas = 0) and (minutos = 0) then
  begin
    horas := 24;
    Dias := Dias - 1
  end;

  str(horas: 2: 0, str_horas);
  str(minutos: 2: 0, str_minutos);

  str_horas := trim(str_horas);
  str_minutos := trim(str_minutos);

  if length(str_horas) = 1 then
    str_horas := '0' + str_horas;
  if length(str_minutos) = 1 then
    str_minutos := '0' + str_minutos;

  Dia_Hora_Final := '';
  Str((iParamDia + Dias): 3: 0, Dia_Hora_Final);
  sfnCalculaDia := Dia_Hora_Final + '|' + str_horas + ':' + str_minutos;
end;
//Actualiza las Existencias en caso de modificar

procedure procActualizaExistencias(sParamContrato, sParamFecha, sParamTurno: string; iParamIdRecurso: Integer; tOrigen: TComponent);
var
  dExistenciaAnterior, dAcumuladoMezclas, dExistenciaActual: Double;
begin
  QryBuscar := tzReadOnlyQuery.Create(tOrigen);
  QryBuscar.Connection := connection.zConnection;
  QryBuscar.Active := False;

  QryBuscarAux := tzReadOnlyQuery.Create(tOrigen);
  QryBuscarAux.Connection := connection.zConnection;
  QryBuscarAux.Active := False;

  //Seleccionar todas las existencias superiores a la fecha modificada o eliminada
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add(' select * from recursos where sContrato=:sContrato ' +
    ' and dIdFecha>=:dIdFecha and sIdTurno=:sIdTurno ' +
    ' and iIdRecursoExistencia=:iIdRecursoExistencia');
  QryBuscar.Params.ParamByName('sContrato').DataType := ftString;
  QryBuscar.Params.ParamByName('sContrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('dIdFecha').DataType := ftDate;
  QryBuscar.Params.ParamByName('dIdFecha').Value := sParamFecha;
  QryBuscar.Params.ParamByName('sIdTurno').DataType := ftString;
  QryBuscar.Params.ParamByName('sIdTurno').Value := sParamTurno;
  QryBuscar.Params.ParamByName('iIdRecursoExistencia').DataType := ftInteger;
  QryBuscar.Params.ParamByName('iIdRecursoExistencia').Value := iParamIdRecurso;

  QryBuscar.Open;
  //Inicio While : Recorrido de los registros de existencias
  while QryBuscar.Eof = False do
  begin
    //Obtener la existencia anterior
    dExistenciaAnterior := 0;
    QryBuscarAux.Active := False;
    QryBuscarAux.SQL.Clear;
    QryBuscarAux.SQL.Add(' select dExistenciaActual as dExistenciaAnterior from recursos where ' +
      ' sContrato=:sContrato and dIdFecha<:dIdFecha and' +
      ' sIdTurno=:sIdTurno and iIdRecursoExistencia=:iIdRecursoExistencia' +
      ' Order By dIdFecha desc');
    QryBuscarAux.Params.ParamByName('sContrato').DataType := ftString;
    QryBuscarAux.Params.ParamByName('sContrato').Value := sParamContrato;
    QryBuscarAux.Params.ParamByName('dIdFecha').DataType := ftDate;
    QryBuscarAux.Params.ParamByName('dIdFecha').Value := QryBuscar.FieldValues['dIdFecha'];
    QryBuscarAux.Params.ParamByName('sIdTurno').DataType := ftString;
    QryBuscarAux.Params.ParamByName('sIdTurno').Value := sParamTurno;
    QryBuscarAux.Params.ParamByName('iIdRecursoExistencia').DataType := ftInteger;
    QryBuscarAux.Params.ParamByName('iIdRecursoExistencia').Value := iParamIdRecurso;

    QryBuscarAux.Open;

    try
      if QryBuscarAux.RecordCount > 0 then
        if QryBuscarAux.FieldValues['dExistenciaAnterior'] <> 0 then
          dExistenciaAnterior := QryBuscarAux.FieldValues['dExistenciaAnterior']
        else
          dExistenciaAnterior := 0
      else
        dExistenciaAnterior := 0;
    except
      dExistenciaAnterior := 0;
    end;

    //Obtener el acumulado anterior
    dAcumuladoMezclas := 0;
    QryBuscarAux.Active := False;
    QryBuscarAux.SQL.Clear;
    QryBuscarAux.SQL.Add(' select sum(dExistenciaActual) as dAcumulado from recursos where ' +
      ' sContrato=:sContrato and dIdFecha<:dIdFecha and' +
      ' sIdTurno=:sIdTurno and iIdRecursoExistencia=:iIdRecursoExistencia');
    QryBuscarAux.Params.ParamByName('sContrato').DataType := ftString;
    QryBuscarAux.Params.ParamByName('sContrato').Value := sParamContrato;
    QryBuscarAux.Params.ParamByName('dIdFecha').DataType := ftDate;
    QryBuscarAux.Params.ParamByName('dIdFecha').Value := QryBuscar.FieldValues['dIdFecha'];
    QryBuscarAux.Params.ParamByName('sIdTurno').DataType := ftString;
    QryBuscarAux.Params.ParamByName('sIdTurno').Value := sParamTurno;
    QryBuscarAux.Params.ParamByName('iIdRecursoExistencia').DataType := ftInteger;
    QryBuscarAux.Params.ParamByName('iIdRecursoExistencia').Value := iParamIdRecurso;

    QryBuscarAux.Open;

    try
      if QryBuscarAux.RecordCount > 0 then
        if QryBuscarAux.FieldValues['dAcumulado'] <> 0 then
          dAcumuladoMezclas := QryBuscarAux.FieldValues['dAcumulado']
        else
          dAcumuladoMezclas := 0
      else
        dAcumuladoMezclas := 0;
    except
      dAcumuladoMezclas := 0;
    end;

    //Obtener la existencia actual verdadera
    dExistenciaActual := QryBuscar.FieldValues['dConsumo'] + QryBuscar.FieldValues['dConsumoEquipos'] + QryBuscar.FieldValues['dPrestamos'];
    dExistenciaActual := (QryBuscar.FieldValues['dProduccion'] + QryBuscar.FieldValues['dRecibido']) - dExistenciaActual;
    //Obtener el acumulado actual
    dAcumuladoMezclas := dAcumuladoMezclas + dExistenciaActual;

    if dExistenciaActual < 0 then
      dExistenciaActual := 0;

    if dExistenciaAnterior < 0 then
      dExistenciaAnterior := 0;

    if dAcumuladoMezclas < 0 then
      dAcumuladoMezclas := 0;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add(' update recursos set dAcumulado=:dAcumulado , ' +
      ' dExistenciaAnterior=:dExistenciaAnterior ,' +
      ' dExistenciaActual=:dExistenciaActual ' +
      ' where sContrato=:sContrato ' +
      ' and dIdFecha>=:dIdFecha and sIdTurno=:sIdTurno ' +
      ' and iIdRecursoExistencia=:iIdRecursoExistencia');
    connection.zCommand.Params.ParamByName('sContrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('sContrato').Value := sParamContrato;
    connection.zCommand.Params.ParamByName('dIdFecha').DataType := ftDate;
    connection.zCommand.Params.ParamByName('dIdFecha').Value := QryBuscar.FieldValues['dIdFecha'];
    connection.zCommand.Params.ParamByName('sIdTurno').DataType := ftString;
    connection.zCommand.Params.ParamByName('sIdTurno').Value := sParamTurno;
    connection.zCommand.Params.ParamByName('iIdRecursoExistencia').DataType := ftInteger;
    connection.zCommand.Params.ParamByName('iIdRecursoExistencia').Value := iParamIdRecurso;
    connection.zCommand.Params.ParamByName('dAcumulado').DataType := ftFloat;
    connection.zCommand.Params.ParamByName('dAcumulado').Value := dAcumuladoMezclas;
    connection.zCommand.Params.ParamByName('dExistenciaActual').DataType := ftFloat;
    connection.zCommand.Params.ParamByName('dExistenciaActual').Value := dExistenciaActual;
    connection.zCommand.Params.ParamByName('dExistenciaAnterior').DataType := ftFloat;
    connection.zCommand.Params.ParamByName('dExistenciaAnterior').Value := dExistenciaAnterior;
    connection.zCommand.ExecSQL;

    QryBuscar.Next;
  end;

  //Finc de ciclo while : Recorrido de Existencias

end;
//Verifica si el horario de embarcacion a modificar o eliminares el ultimo registrado, si no lo es devuelve false

function lfnVerificarHorasEmbarcacion(sParamContrato, sParamFecha, sParamHora, sParamTipo: string): Boolean;
var
  lModificar: Boolean;
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  if sParamTipo = 'S/E' then
    connection.QryBusca.SQL.Add(' select sHoraFinal,sHoraInicio from movimientosdeembarcacion where ' +
      ' sContrato=:Contrato and dIdFecha=:Fecha  and  sTipoEmbarcacion="S/E" order by sHoraInicio desc')
  else
    connection.QryBusca.SQL.Add(' select sHoraFinal,sHoraInicio from movimientosdeembarcacion where ' +
      ' sContrato=:Contrato and dIdFecha=:Fecha  and  sTipoEmbarcacion<>"S/E" order by sHoraInicio desc');
  connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  connection.QryBusca.Params.ParamByName('Fecha').Value := sParamFecha;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    if connection.QryBusca.FieldValues['sHoraInicio'] > sParamHora then
    begin
      ShowMessage('No es posible realizar esta operacion ya que existen horarios registrados ' +
        'Superiores a este, esto podria alterar la continuacion de horarios');
      lModificar := false;
    end
    else
      lModificar := true;
  end
  else
    lModificar := true;
  lfnVerificarHorasEmbarcacion := lModificar;
end;

procedure roqFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  //
end;

procedure qFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  //
end;

procedure procReporteTripulacion(sParamContrato, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = ''; sParamTipo :string = '');
var
    Tripulacion,
    Totales,
    zBarcoVigencia,
    TripulacionFlotel,
    TripulacionFlotelAdmon,
    TotalesOperativos   : TZReadOnlyQuery;

    dsTripulacion,
    dsTotales,
    dsTripulacionFlotel,
    dsTripulacionFlotelAdmon,
    dsTotalesOperativos : TfrxDBDataSet;

    rDiario: TfrxReport;
    fechaAntes: tDate;
    cadena : string;

begin
  rDiario := TfrxReport.Create(tOrigen);

  zBarcoVigencia := tzReadOnlyQuery.Create(tOrigen);
  zBarcoVigencia.Connection := connection.zConnection;

  TripulacionFlotel := TZReadOnlyQuery.Create(tOrigen);
  TripulacionFlotel.Connection := connection.zConnection;

  TripulacionFlotelAdmon := TZReadOnlyQuery.Create(tOrigen);
  TripulacionFlotelAdmon.Connection := connection.zConnection;

  TotalesOperativos := TZReadOnlyQuery.Create(tOrigen);
  TotalesOperativos.Connection := connection.zConnection;

  qryOcupacionBarco := TZReadOnlyQuery.Create(tOrigen);
  qryOcupacionBarco.Connection := connection.zConnection;

  qryPernoctaBarco := TZReadOnlyQuery.Create(tOrigen);
  qryPernoctaBarco.Connection := connection.zConnection;

  Tripulacion := TZReadOnlyQuery.Create(tOrigen);
  Tripulacion.Connection := connection.zConnection;

  Totales := TZReadOnlyQuery.Create(tOrigen);
  Totales.Connection := connection.zConnection;

  zBarcoVigencia.Active := False;
  zBarcoVigencia.SQL.Clear;
  zBarcoVigencia.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :FechaI and dFechaFinal >=:FechaF ');
  zBarcoVigencia.ParamByName('Contrato').AsString := global_contrato_barco;
  zBarcoVigencia.ParamByName('FechaI').AsDate := dParamFecha;
  zBarcoVigencia.ParamByName('FechaF').AsDate := dParamFecha;
  zBarcoVigencia.Open;

  if zBarcoVigencia.RecordCount = 0 then
    messageDLG('No existe una Vigencia de Embarcacion Principal!, ' + #13 + 'Favor de Registrala en el menu Administracion de Catalogos', mtInformation, [mbOk], 0);

  if zBarcoVigencia.RecordCount = 1 then
    global_barco := zBarcoVigencia.FieldValues['sIdEmbarcacion'];

  zBarcoVigencia.Destroy;

  qryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  qryConfiguracion.Connection := connection.zConnection;
  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';
  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sReportesCIA, c.sDireccion1, c.sDireccion2,  ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, "" as sIdUsuarioValida, "" as sIdUsuarioResidente, "" as sIdUsuarioAutoriza, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal, ' +
    '(select sDescripcion from embarcaciones where sContrato =:contrato and sIdEmbarcacion =:barco and sTipo = "principal")  as barco '+
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
  QryConfiguracion.Params.ParamByName('barco').DataType    := ftString;
  QryConfiguracion.Params.ParamByName('barco').Value       := global_barco;
  QryConfiguracion.Open;

  dsPernoctaBarco := TfrxDBDataSet.Create(tOrigen);
  dsPernoctaBarco.DataSet := qryPernoctaBarco;
  dsPernoctaBarco.UserName := 'dsPernoctaBarco';

  dsOcupacionBarco := TfrxDBDataSet.Create(tOrigen);
  dsOcupacionBarco.DataSet := qryOcupacionBarco;
  dsOcupacionBarco.UserName := 'dsOcupacionBarco';

  dsTripulacion := TfrxDBDataSet.Create(tOrigen);
  dsTripulacion.DataSet := Tripulacion;
  dsTripulacion.UserName := 'dsTripulacion';

  dsTripulacionFlotel := TfrxDBDataSet.Create(tOrigen);
  dsTripulacionFlotel.DataSet  := TripulacionFlotel;
  dsTripulacionFlotel.UserName := 'dsTripulacionFlotel';

  dsTripulacionFlotelAdmon := TfrxDBDataSet.Create(tOrigen);
  dsTripulacionFlotelAdmon.DataSet  := TripulacionFlotelAdmon;
  dsTripulacionFlotelAdmon.UserName := 'dsTripulacionFlotelAdmon';

  dsTotalesOperativos := TfrxDBDataSet.Create(tOrigen);
  dsTotalesOperativos.DataSet := TotalesOperativos;
  dsTotalesOperativos.UserName := 'dsTotalesOperativos';

  dsTotales := TfrxDBDataSet.Create(tOrigen);
  dsTotales.DataSet := Totales;
  dsTotales.UserName := 'dsTotales';

  rDiario.DataSets.Add(dsTripulacion);
  rDiario.DataSets.Add(dsTotales);
  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsOcupacionBarco);
  rDiario.DataSets.Add(dsPernoctaBarco);
  rDiario.DataSets.Add(dsTripulacionFlotel);
  rDiario.DataSets.Add(dsTripulacionFlotelAdmon);
  rDiario.DataSets.Add(dsTotalesOperativos);

  qryOcupacionBarco.Active := false;
  qryOcupacionBarco.SQL.Clear;
  qryOcupacionBarco.SQL.Add('select sContrato, ' +
    ' dCantidad as dPernoctaFuera, ' +
    ' dCantidadBordo , ' +
    ' dCantidad + dCantidadBordo as dTotalPersonal, ' +
    ' (select dCapacidadTripulacion from contratos where sContrato = tripulacionpernocta.sContrato) as Capacidad, ' +
    '  mNotas, mEspacios ' +
    ' from ' +
    ' tripulacionpernocta where sContrato =:contrato and dIdFecha = :fecha and sIdTurno = :turno ');
  qryOcupacionBarco.ParamByName('contrato').AsString := global_contrato_barco;
  qryOcupacionBarco.ParamByName('fecha').AsDate := dParamFecha;
  qryOcupacionBarco.ParamByName('turno').AsString := sParamTurno;
  qryOcupacionBarco.Open;

  qryPernoctaBarco.Active := false;
  qryPernoctaBarco.SQL.Clear;
  qryPernoctaBarco.SQL.Add('select c.sIdPernocta, c.sDescripcion ,c.sMedida, "" as sContrato, '+
      '(select if(sum(dCantidad) is null,0,sum(dCantidad)) from bitacoradepersonal b where b.sTipoPernocta =c.sIdCuenta and '+
      'b.dIdFecha=:fecha and b.sIdPernocta =:barco) as dCantidad '+
      'from cuentas c');
  qryPernoctaBarco.ParamByName('fecha').AsDate   := dParamFecha;
  qryPernoctaBarco.ParamByName('barco').AsString := global_barco;
  qryPernoctaBarco.Open;

  global_fecha_barco := dParamFecha;

  if QryConfiguracion.RecordCount > 0 then
  begin
    global_dias_transcurridos := DaysBetween(QryConfiguracion.FieldValues['dFechaFinal'], global_fecha_barco) + 1;
    global_dias_por_transcurrir := DaysBetween(global_fecha_barco, QryConfiguracion.FieldValues['dFechaInicio']);
  end;

    //Cargar el query de Tripulación
    //Vigencia de personal de tripulacion..
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ');
  connection.zCommand.Open;

  fechaAntes := date;
  if connection.zCommand.RecordCount > 0 then
  begin
    fechaAntes := connection.zCommand.FieldValues['dFechaVigencia'];
    while not connection.zCommand.Eof do
    begin
      if dParamFecha >= connection.zCommand.FieldValues['dFechaVigencia'] then
        fechaAntes := connection.zCommand.FieldValues['dFechaVigencia'];
      connection.zCommand.Next;
    end;
  end;

  Tripulacion.Active := False;
  Tripulacion.SQL.Clear;
  if sParamTipo = 'Barco' then
     Tripulacion.SQL.Add(
                ' SELECT td.sOrden, c.sIdCategoria, td.sIdTripulacion, td.dIdFecha, c.sDescripcion as sCategoria , t.sDescripcion, Sum(td.iNacionales) as iNacionales,' +
                ' Sum(td.iExtranjeros) as iExtranjeros FROM tripulaciondiaria td INNER JOIN tripulacion t ON ' +
                ' (t.sContrato = td.sContrato And t.sIdTripulacion = td.sIdTripulacion and t.dFechaVigencia =:FechaVig ) ' +
                ' INNER JOIN categorias c ON (t.sIdCategoria = c.sIdCategoria and c.dFechaVigencia =:FechaVig) ' +
                ' Where td.sContrato =:Contrato And td.dIdFecha = :Fecha and td.sIdTurno =:Turno ' +
                ' Group By td.sOrden, t.sIdTripulacion Order By td.sOrden, c.sIdCategoria, t.iOrden ')
  else
     Tripulacion.SQL.Add(
                ' SELECT td.sOrden, c.sIdCategoria, td.sIdTripulacion, td.dIdFecha, c.sDescripcion as sCategoria , t.sDescripcion, Sum(td.iNacionales) as iNacionales,' +
                ' Sum(td.iExtranjeros) as iExtranjeros FROM tripulaciondiaria td INNER JOIN tripulacion t ON ' +
                ' (t.sContrato = td.sContrato And t.sIdTripulacion = td.sIdTripulacion and t.dFechaVigencia =:FechaVig ) ' +
                ' INNER JOIN categorias c ON (t.sIdCategoria = c.sIdCategoria and c.dFechaVigencia =:FechaVig and c.lPersonalAnexo = "Si") ' +
                ' Where td.sContrato =:Contrato And td.dIdFecha = :Fecha and td.sIdTurno =:Turno ' +
                ' Group By td.sOrden, t.sIdTripulacion Order By td.sOrden, c.sIdCategoria, t.iOrden ');
  Tripulacion.ParamByName('Contrato').DataType := ftString;
  Tripulacion.ParamByName('Contrato').Value := sParamContrato;
  Tripulacion.ParamByName('Turno').DataType := ftString;
  Tripulacion.ParamByName('Turno').Value := sParamTurno;
  Tripulacion.ParamByName('Fecha').DataType := ftDate;
  Tripulacion.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  Tripulacion.ParamByName('FechaVig').DataType := ftDate;
  Tripulacion.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  Tripulacion.Open;

  //Personal de operacion pernoctando en otras embarcaicones, plataformas
  TripulacionFlotel.Active := False;
  TripulacionFlotel.SQL.Clear;
  TripulacionFlotel.SQL.Add('select b.dIdFecha, b.sIdPernocta, t.sDescripcion, sum(b.dCantidad) as dCantidad from bitacoradepersonal b '+
                            'inner join pernoctan t on (t.sIdPernocta = b.sIdPernocta) '+
                            'inner join personal p on (p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal and p.sIdTipoPersonal <> "PE-A") '+
                            'where b.dIdFecha =:Fecha and b.sIdPernocta <> :Barco group by b.sIdPernocta order by t.sDescripcion');
  TripulacionFlotel.ParamByName('Barco').DataType := ftString;
  TripulacionFlotel.ParamByName('Barco').Value    := global_barco;
  TripulacionFlotel.ParamByName('Fecha').DataType := ftDate;
  TripulacionFlotel.ParamByName('Fecha').Value    := dParamFecha;
  TripulacionFlotel.Open;

  //Personal administrativo pernoctando en otras embarcaciones..
  TripulacionFlotelAdmon.Active := False;
  TripulacionFlotelAdmon.SQL.Clear;
  TripulacionFlotelAdmon.SQL.Add('SELECT bp.dIdFecha, sum(bp.dCantidad) as dCantidad FROM bitacoradepersonal bp '+
                                 'inner join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal and p.lPernocta = "Si" and p.sIdTipoPersonal = "PE-A") '+
                                 'WHERE bp.dIdFecha =:fecha and bp.sIdPernocta <> :Barco and bp.sIdPernOcta <> "TIERRA" GROUP BY bp.dIdFecha');
  TripulacionFlotelAdmon.ParamByName('Barco').DataType := ftString;
  TripulacionFlotelAdmon.ParamByName('Barco').Value    := global_barco;
  TripulacionFlotelAdmon.ParamByName('Fecha').DataType := ftDate;
  TripulacionFlotelAdmon.ParamByName('Fecha').Value    := dParamFecha;
  TripulacionFlotelAdmon.Open;

  //Cargo totalizado
  TotalesOperativos.Active := False;
  TotalesOperativos.Sql.Clear;
  TotalesOperativos.Sql.Add('select t.sDescripcion, sum(td.iNacionales) as nacionales, t.sMiGrupoResumen, t.lPersonalAnexo from tripulaciondiaria td ' +
    'inner join categorias t On (t.sIdCategoria=td.sIdCategoria and t.dFechaVigencia =:FechaVig) ' +
    'where td.sContrato=:Contrato and td.dIdFecha=:Fecha and td.sIdTurno =:Turno and t.lPersonalAnexo = "Si" group by t.sIdCategoria order by t.sIdCategoria, t.sDescripcion');
  TotalesOperativos.ParamByName('Contrato').DataType := ftString;
  TotalesOperativos.ParamByName('Contrato').Value := sParamContrato;
  TotalesOperativos.ParamByName('Turno').DataType := ftString;
  TotalesOperativos.ParamByName('Turno').Value := sParamTurno;
  TotalesOperativos.ParamByName('Fecha').DataType := ftDate;
  TotalesOperativos.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  TotalesOperativos.ParamByName('FechaVig').DataType := ftDate;
  TotalesOperativos.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  TotalesOperativos.Open;

  Totales.Active := False;
  Totales.Sql.Clear;
  if sParamTipo = 'Barco' then
     Totales.Sql.Add('select t.sDescripcion, sum(td.iNacionales) as nacionales, t.sMiGrupoResumen, t.lPersonalAnexo from tripulaciondiaria td ' +
            'inner join categorias t On (t.sIdCategoria=td.sIdCategoria and t.dFechaVigencia =:FechaVig) ' +
            'where td.sContrato=:Contrato and td.dIdFecha=:Fecha and td.sIdTurno =:Turno and t.lPersonalAnexo = "No" group by t.sIdCategoria order by t.sIdCategoria, t.sDescripcion')
  else
     Totales.Sql.Add('select td.sContrato, t.sIdCategoria, t.sDescripcion, sum(td.iNacionales) as nacionales, t.sMiGrupoResumen, t.lPersonalAnexo from tripulaciondiaria td ' +
            'inner join categorias t On (t.sIdCategoria=td.sIdCategoria and t.dFechaVigencia =:FechaVig) ' +
            'where td.sContrato=:Contrato and td.dIdFecha=:Fecha and td.sIdTurno =:Turno group by t.sIdCategoria order by t.sIdCategoria, t.sDescripcion');
  Totales.ParamByName('Contrato').DataType := ftString;
  Totales.ParamByName('Contrato').Value := sParamContrato;
  Totales.ParamByName('Turno').DataType := ftString;
  Totales.ParamByName('Turno').Value := sParamTurno;
  Totales.ParamByName('Fecha').DataType := ftDate;
  Totales.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  Totales.ParamByName('FechaVig').DataType := ftDate;
  Totales.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  Totales.Open;

  rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
  rDiarioFirmas(sParamContrato, '', 'A', dParamFecha, tOrigen);


  if sParamTipo = 'Barco' then
     rDiario.LoadFromFile(global_files + global_miReporte+'_TripulacionDiaria.fr3')
  else
     rDiario.LoadFromFile(global_files + global_miReporte+'_TripulacionDiaria_admin.fr3');

  rDiario.ShowReport(True);

    // Destruye Objetos ...
  rDiario.Destroy;
  Tripulacion.Destroy;
  Totales.Destroy;
  dsTripulacion.Destroy;
  dsTotales.Destroy;
  TripulacionFlotel.Destroy;
  TripulacionFlotelAdmon.Destroy;
  TotalesOperativos.Destroy;

  qryOcupacionBarco.destroy;
  qryPernoctaBarco.destroy;
  dsPernoctaBarco.destroy;
  dsOcupacionBarco.destroy;
  dsTripulacionFlotel.Destroy;
  dsTripulacionFlotelAdmon.Destroy;
  dsTotalesOperativos.Destroy;

end;


procedure procReporteTripulacion_lista(sParamContrato, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = ''; sParamTipo :string = '');
var
    Tripulacion,
    Totales,
    zBarcoVigencia,
    TripulacionFlotel,
    TripulacionFlotelAdmon,
    TotalesOperativos   : TZReadOnlyQuery;

    dsTripulacion,
    dsTotales,
    dsTripulacionFlotel,
    dsTripulacionFlotelAdmon,
    dsTotalesOperativos : TfrxDBDataSet;

    rDiario: TfrxReport;
    fechaAntes: tDate;
    cadena : string;

begin
  rDiario := TfrxReport.Create(tOrigen);

  zBarcoVigencia := tzReadOnlyQuery.Create(tOrigen);
  zBarcoVigencia.Connection := connection.zConnection;

  TripulacionFlotel := TZReadOnlyQuery.Create(tOrigen);
  TripulacionFlotel.Connection := connection.zConnection;

  TripulacionFlotelAdmon := TZReadOnlyQuery.Create(tOrigen);
  TripulacionFlotelAdmon.Connection := connection.zConnection;

  TotalesOperativos := TZReadOnlyQuery.Create(tOrigen);
  TotalesOperativos.Connection := connection.zConnection;

  qryOcupacionBarco := TZReadOnlyQuery.Create(tOrigen);
  qryOcupacionBarco.Connection := connection.zConnection;

  qryPernoctaBarco := TZReadOnlyQuery.Create(tOrigen);
  qryPernoctaBarco.Connection := connection.zConnection;

  Tripulacion := TZReadOnlyQuery.Create(tOrigen);
  Tripulacion.Connection := connection.zConnection;

  Totales := TZReadOnlyQuery.Create(tOrigen);
  Totales.Connection := connection.zConnection;

  zBarcoVigencia.Active := False;
  zBarcoVigencia.SQL.Clear;
  zBarcoVigencia.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :FechaI and dFechaFinal >=:FechaF ');
  zBarcoVigencia.ParamByName('Contrato').AsString := global_contrato_barco;
  zBarcoVigencia.ParamByName('FechaI').AsDate := dParamFecha;
  zBarcoVigencia.ParamByName('FechaF').AsDate := dParamFecha;
  zBarcoVigencia.Open;

  if zBarcoVigencia.RecordCount = 0 then
    messageDLG('No existe una Vigencia de Embarcacion Principal!, ' + #13 + 'Favor de Registrala en el menu Administracion de Catalogos', mtInformation, [mbOk], 0);

  if zBarcoVigencia.RecordCount = 1 then
    global_barco := zBarcoVigencia.FieldValues['sIdEmbarcacion'];

  zBarcoVigencia.Destroy;

  qryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  qryConfiguracion.Connection := connection.zConnection;
  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';
  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sReportesCIA, c.sDireccion1, c.sDireccion2,  ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, "" as sIdUsuarioValida, "" as sIdUsuarioResidente, "" as sIdUsuarioAutoriza, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal, ' +
    '(select sDescripcion from embarcaciones where sContrato =:contrato and sIdEmbarcacion =:barco and sTipo = "principal")  as barco '+
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
  QryConfiguracion.Params.ParamByName('barco').DataType    := ftString;
  QryConfiguracion.Params.ParamByName('barco').Value       := global_barco;
  QryConfiguracion.Open;

  dsPernoctaBarco := TfrxDBDataSet.Create(tOrigen);
  dsPernoctaBarco.DataSet := qryPernoctaBarco;
  dsPernoctaBarco.UserName := 'dsPernoctaBarco';

  dsOcupacionBarco := TfrxDBDataSet.Create(tOrigen);
  dsOcupacionBarco.DataSet := qryOcupacionBarco;
  dsOcupacionBarco.UserName := 'dsOcupacionBarco';

  dsTripulacion := TfrxDBDataSet.Create(tOrigen);
  dsTripulacion.DataSet := Tripulacion;
  dsTripulacion.UserName := 'dsTripulacion';

  dsTripulacionFlotel := TfrxDBDataSet.Create(tOrigen);
  dsTripulacionFlotel.DataSet  := TripulacionFlotel;
  dsTripulacionFlotel.UserName := 'dsTripulacionFlotel';

  dsTripulacionFlotelAdmon := TfrxDBDataSet.Create(tOrigen);
  dsTripulacionFlotelAdmon.DataSet  := TripulacionFlotelAdmon;
  dsTripulacionFlotelAdmon.UserName := 'dsTripulacionFlotelAdmon';

  dsTotalesOperativos := TfrxDBDataSet.Create(tOrigen);
  dsTotalesOperativos.DataSet := TotalesOperativos;
  dsTotalesOperativos.UserName := 'dsTotalesOperativos';

  dsTotales := TfrxDBDataSet.Create(tOrigen);
  dsTotales.DataSet := Totales;
  dsTotales.UserName := 'dsTotales';

  rDiario.DataSets.Add(dsTripulacion);
  rDiario.DataSets.Add(dsTotales);
  rDiario.DataSets.Add(dsConfiguracion);


  Totales.Active := False;
  Totales.Sql.Clear;
  Totales.Sql.Add('select t.sDescripcion, sum(td.iNacionales) as nacionales, t.sMiGrupoResumen, t.lPersonalAnexo from tripulaciondiaria_lista td ' +
            'inner join categorias t On (t.sIdCategoria=td.sIdCategoria and t.dFechaVigencia =:FechaVig) ' +
            'where td.sContrato=:Contrato and td.dIdFecha=:Fecha and td.sIdTurno =:Turno and t.lPersonalAnexo = "No" group by t.sIdCategoria order by t.sIdCategoria, t.sDescripcion');
  Totales.ParamByName('Contrato').DataType := ftString;
  Totales.ParamByName('Contrato').Value := sParamContrato;
  Totales.ParamByName('Turno').DataType := ftString;
  Totales.ParamByName('Turno').Value := sParamTurno;
  Totales.ParamByName('Fecha').DataType := ftDate;
  Totales.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  Totales.ParamByName('FechaVig').DataType := ftDate;
  Totales.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  Totales.Open;

  rDiario.OnGetValue := tProcedure;
    {Pemdiente revision_ivan}
  rDiarioFirmas(sParamContrato, '', 'A', dParamFecha, tOrigen);


  rDiario.LoadFromFile(global_files + global_miReporte+'_TripulacionDiaria_lista.fr3');

  rDiario.ShowReport(True);

    // Destruye Objetos ...
  rDiario.Destroy;
  Tripulacion.Destroy;
  Totales.Destroy;
  dsTripulacion.Destroy;
  dsTotales.Destroy;
  TripulacionFlotel.Destroy;
  TripulacionFlotelAdmon.Destroy;
  TotalesOperativos.Destroy;

  qryOcupacionBarco.destroy;
  qryPernoctaBarco.destroy;
  dsPernoctaBarco.destroy;
  dsOcupacionBarco.destroy;
  dsTripulacionFlotel.Destroy;
  dsTripulacionFlotelAdmon.Destroy;
  dsTotalesOperativos.Destroy;

end;

//Procedimiento del Reporte Diario para CMT

procedure procReporteDiarioPersonal_EQ_H(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
  Registro: Integer;
  sPaquete: string;
  sBkPaquete: string;
  lEncontrado: Boolean;
  dAvance: Real;
  sTipoOrden: string;
  sListPaquetes: string;
  iNumeroBloques, k, x, i, n: Integer;
  j: double;
begin
   //Creo los abjetos del reporte diario ...
  procCreateObject(tOrigen);

   //Actividades..
  mBitacoraActividades := TrxMemoryData.Create(tOrigen);
  mBitacoraActividades.Active := False;
  mBitacoraActividades.FieldDefs.Add('Contrato', ftString, 15, True);
  mBitacoraActividades.FieldDefs.Add('id_C1', ftString, 15, True);
  mBitacoraActividades.FieldDefs.Add('Cantidad_C1', ftFloat, 0, True);
  mBitacoraActividades.FieldDefs.Add('Descripcion_C1', ftString, 200, True);
  mBitacoraActividades.FieldDefs.Add('id_C2', ftString, 15, True);
  mBitacoraActividades.FieldDefs.Add('Cantidad_C2', ftFloat, 0, True);
  mBitacoraActividades.FieldDefs.Add('Descripcion_C2', ftString, 200, True);
  mBitacoraActividades.FieldDefs.Add('Permiso', ftString, 50, True);
  mBitacoraActividades.FieldDefs.Add('id_C3', ftString, 15, True);
  mBitacoraActividades.FieldDefs.Add('Cantidad_C3', ftFloat, 0, True);
  mBitacoraActividades.FieldDefs.Add('Descripcion_C3', ftString, 200, True);
  mBitacoraActividades.FieldDefs.Add('Grupo', ftString, 50, True);
  mBitacoraActividades.Active := True;

  dsmBitacoraActividades.DataSet := mBitacoraActividades;
  dsmBitacoraActividades.UserName := 'dsmBitacoraActividades';
  rDiario.DataSets.Add(dsmBitacoraActividades);

   //Personal.. Equipo.. Equipo de Seguridad..
  mBitacora1 := TrxMemoryData.Create(tOrigen);
  mBitacora1.Active := False;
  mBitacora1.FieldDefs.Add('Contrato', ftString, 15, True);
  mBitacora1.FieldDefs.Add('id_C1', ftString, 15, True);
  mBitacora1.FieldDefs.Add('Cantidad_C1', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('Descripcion_C1', ftString, 200, True);
  mBitacora1.FieldDefs.Add('id_C2', ftString, 15, True);
  mBitacora1.FieldDefs.Add('Cantidad_C2', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('Descripcion_C2', ftString, 200, True);
  mBitacora1.FieldDefs.Add('id_C3', ftString, 15, True);
  mBitacora1.FieldDefs.Add('Cantidad_C3', ftFloat, 0, True);
  mBitacora1.FieldDefs.Add('Descripcion_C3', ftString, 200, True);
  mBitacora1.FieldDefs.Add('Grupo', ftString, 50, True);
  mBitacora1.Active := True;

  dsmBitacora1.DataSet := mBitacora1;
  dsmBitacora1.UserName := 'dsmBitacora1';
  rDiario.DataSets.Add(dsmBitacora1);
  rDiario.OnGetValue := tProcedure;

  qryConfiguracionOrden.Active := False;
  qryConfiguracionOrden.SQL.Clear;
  qryConfiguracionOrden.SQL.Add('select * from ordenesdetrabajo where sContrato=:Contrato and sNumeroOrden=:Orden ');
  qryConfiguracionOrden.Params.ParamByName('Contrato').DataType := ftString;
  qryConfiguracionOrden.Params.ParamByName('Contrato').Value := sParamContrato;
  qryConfiguracionOrden.Params.ParamByName('Orden').DataType := ftString;
  qryConfiguracionOrden.Params.ParamByName('Orden').Value := sParamOrden;
  qryConfiguracionOrden.Open;

   // Actualizo primeramente las firmas ..
  if mMovimientos.RecordCount > 0 then
    mMovimientos.EmptyTable;

  if mBitacora1.RecordCount > 0 then
    mBitacora1.EmptyTable;

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select  c.iFirmasReportes, c.sMostrarAvances,c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sReportesCIA, ' +
    'c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, ' +
    'c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen as bImagenPEP ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  if lCheckReporte() then
    QryReporteDiario.SQL.Add('Select r.*, o.sIdFolio, o.sDescripcionCorta, t.sOrigenTierra, t.sDescripcion From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno')
  else
    QryReporteDiario.SQL.Add('Select r.*, o.sIdFolio, o.sDescripcionCorta From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;

  QryBuscar := tZReadOnlyQuery.Create(tOrigen);
  QryBuscar.Connection := connection.zconnection;
  QryBuscarAux := tZReadOnlyQuery.Create(tOrigen);
  QryBuscarAux.Connection := connection.zconnection;

  if lCheckReporte() then
  begin
    if QryConfiguracion.FieldValues['sTipoPartida'] = 'Todas' then
    begin
      QryBuscar.Active := False;
      QryBuscar.SQL.Clear;
      if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
        QryBuscar.SQL.Add('Select b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance ' +
          'From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno) ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ')
      else
        QryBuscar.SQL.Add('Select b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance ' +
          'From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs= a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ');
      QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscar.Params.ParamByName('Orden').DataType := ftString;
      QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscar.Params.ParamByName('Turno').DataType := ftString;
      QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
      QryBuscar.Open;

    end
    else
    begin
      QryBuscar.Active := False;
      QryBuscar.SQL.Clear;
      if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
        QryBuscar.SQL.Add('Select b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, dVentaMN ' +
          'From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden =:Orden And b.dIdFecha = :Fecha And b.sIdTurno =:Turno And b.dCantidad > 0 ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ')
      else
        QryBuscar.SQL.Add('Select b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, dVentaMN ' +
          'From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.dCantidad > 0 ' +
          'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ');
      QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscar.Params.ParamByName('Orden').DataType := ftString;
      QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscar.Params.ParamByName('Turno').DataType := ftString;
      QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
      QryBuscar.Open;
    end;

    if QryBuscar.RecordCount > 0 then
    begin
          //Ajustar automaticamente cuando sean mas del numero de registros en el Reporte..
      if QryBuscar.RecordCount > 10 then
      begin
        j := QryBuscar.RecordCount / 2;
        i := round(j);
      end
      else
        i := 5;
      for x := 1 to i do
      begin
        if QryBuscar.Eof then
        begin
          mBitacoraActividades.Append;
          mBitacoraActividades.FieldValues['Grupo'] := 'Reportes';
          mBitacoraActividades.FieldValues['Contrato'] := sParamContrato;
          mBitacoraActividades.FieldValues['Id_C1'] := '';
          mBitacoraActividades.FieldValues['Descripcion_C1'] := '';
          mBitacoraActividades.FieldValues['Cantidad_C1'] := 0;
          mBitacoraActividades.Post;
        end
        else
        begin
          mBitacoraActividades.Append;
          mBitacoraActividades.FieldValues['Grupo'] := 'Reportes';
          mBitacoraActividades.FieldValues['Contrato'] := sParamContrato;
          mBitacoraActividades.FieldValues['Id_C1'] := QryBuscar.FieldValues['sNumeroActividad'];
          mBitacoraActividades.FieldValues['Descripcion_C1'] := QryBuscar.FieldValues['mDescripcion'];
          mBitacoraActividades.FieldValues['Cantidad_C1'] := QryBuscar.FieldValues['dCantidad'];
          mBitacoraActividades.Post;
          QryBuscar.Next;
        end;
      end;
      for x := 1 to i - 1 do
        mBitacoraActividades.Prior;

      while not QryBuscar.Eof do
      begin
        mBitacoraActividades.Edit;
        mBitacoraActividades.FieldValues['Id_C2'] := QryBuscar.FieldValues['sNumeroActividad'];
        mBitacoraActividades.FieldValues['Descripcion_C2'] := QryBuscar.FieldValues['mDescripcion'];
        mBitacoraActividades.FieldValues['Cantidad_C2'] := QryBuscar.FieldValues['dCantidad'];
        mBitacoraActividades.Post;
        mBitacoraActividades.Next;
        QryBuscar.Next;
      end;
    end
    else
    begin
      for i := 1 to 5 do
      begin
        mBitacoraActividades.Append;
        mBitacoraActividades.FieldValues['Grupo'] := 'Reportes';
        mBitacoraActividades.FieldValues['Contrato'] := sParamContrato;
        mBitacoraActividades.FieldValues['Id_C1'] := '';
        mBitacoraActividades.FieldValues['Descripcion_C1'] := '';
        mBitacoraActividades.FieldValues['Cantidad_C1'] := 0;
        mBitacoraActividades.Post;
      end;
    end;
  end
  else
  begin
      // Reporte Tipo Simple ....
    QryBuscar.Active := False;
    QryBuscar.SQL.Clear;
    QryBuscar.SQL.Add('Select b.sIsometrico, b.sWbs, b.sNumeroActividad, b.mDescripcion, b.dAvance, a.dVentaMN From bitacoradeactividades b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
      'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
      'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno ' +
      'Order By b.sIsometrico, a.iItemOrden ');
    QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
    QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
    QryBuscar.Params.ParamByName('Orden').DataType := ftString;
    QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscar.Params.ParamByName('Turno').DataType := ftString;
    QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
    QryBuscar.Open;

    if QryBuscar.RecordCount > 0 then
    begin
          //Ajustar automaticamente cuando sean mas del numero de registros en el Reporte..
      if QryBuscar.RecordCount > 10 then
      begin
        j := QryBuscar.RecordCount / 2;
        i := round(j) + 1;
      end
      else
        i := 5;
      for x := 1 to i do
      begin
        if QryBuscar.Eof then
        begin
          mBitacoraActividades.Append;
          mBitacoraActividades.FieldValues['Grupo'] := 'Reportes';
          mBitacoraActividades.FieldValues['Contrato'] := sParamContrato;
          mBitacoraActividades.FieldValues['Id_C1'] := '';
          mBitacoraActividades.FieldValues['Descripcion_C1'] := '';
          mBitacoraActividades.FieldValues['Cantidad_C1'] := 0;
          mBitacoraActividades.Post;
        end
        else
        begin
          mBitacoraActividades.Append;
          mBitacoraActividades.FieldValues['Grupo'] := 'Reportes';
          mBitacoraActividades.FieldValues['Contrato'] := sParamContrato;
          mBitacoraActividades.FieldValues['Id_C1'] := QryBuscar.FieldValues['sNumeroActividad'];
          mBitacoraActividades.FieldValues['Descripcion_C1'] := QryBuscar.FieldValues['mDescripcion'];
          mBitacoraActividades.FieldValues['Cantidad_C1'] := QryBuscar.FieldValues['dCantidad'];
          mBitacoraActividades.Post;
          QryBuscar.Next;
        end;
      end;
      for x := 1 to i - 1 do
        mBitacoraActividades.Prior;

      while not QryBuscar.Eof do
      begin
        mBitacoraActividades.Edit;
        mBitacoraActividades.FieldValues['Id_C2'] := QryBuscar.FieldValues['sNumeroActividad'];
        mBitacoraActividades.FieldValues['Descripcion_C2'] := QryBuscar.FieldValues['mDescripcion'];
        mBitacoraActividades.FieldValues['Cantidad_C2'] := QryBuscar.FieldValues['dCantidad'];
        mBitacoraActividades.Post;
        mBitacoraActividades.Next;
        QryBuscar.Next;
      end;
    end
    else
    begin
      for i := 1 to 5 do
      begin
        mBitacoraActividades.Append;
        mBitacoraActividades.FieldValues['Grupo'] := 'Reportes';
        mBitacoraActividades.FieldValues['Contrato'] := sParamContrato;
        mBitacoraActividades.FieldValues['Id_C1'] := '';
        mBitacoraActividades.FieldValues['Descripcion_C1'] := '';
        mBitacoraActividades.FieldValues['Cantidad_C1'] := 0;
        mBitacoraActividades.Post;
      end;
    end;
  end;

  //COMENTARIOSS...
  dsBitacora3.DataSet := mBitacora3;
  with connection do
  begin
    QryBusca.Active := False;
    QryBusca.SQL.Clear;
    QryBusca.SQL.Add('select b.sContrato,b.iIdDiario,b.dIdFecha, b.mDescripcion, length(b.mDescripcion) as longi from bitacoradeactividades b ' +
      'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
      'Where b.sContrato = :contrato and b.dIdFecha = :fecha and b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sIdTipoMovimiento<>"NI" and lImprime ="Si" ');
    QryBusca.Params.ParamByName('contrato').DataType := ftString;
    QryBusca.Params.ParamByName('contrato').Value := sParamContrato;
    QryBusca.Params.ParamByName('orden').DataType := ftString;
    QryBusca.Params.ParamByName('orden').Value := sParamOrden;
    QryBusca.Params.ParamByName('fecha').DataType := ftDate;
    QryBusca.Params.ParamByName('fecha').Value := dParamFecha;
    QryBusca.Params.ParamByName('Turno').DataType := ftString;
    QryBusca.Params.ParamByName('Turno').Value := sParamTurno;
    QryBusca.Open;
    while not QryBusca.Eof do
    begin
      mBitacora3.Append;
      mBitacora3.FieldValues['sContrato'] := QryBusca.FieldValues['sContrato'];
      mBitacora3.FieldValues['mDescripcion'] := QryBusca.FieldValues['mDescripcion'];
      mBitacora3.Post;

      QryBusca.Next;
    end;
  end;

  if lCheckReporte() then
  begin
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select t.sContrato, t.sIdTipoPermiso, t.sFolios, t2.sDescripcion from tramitedepermisos t ' +
      'INNER JOIN tiposdepermiso t2 ON (t.sIdTipoPermiso = t2.sIdTipoPermiso) ' +
      'where t.sContrato = :contrato and t.dIdFecha = :fecha and ' +
      't.sNumeroOrden = :orden And t.sIdTurno = :Turno Order By t.sIdTipoPermiso');
    connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('contrato').Value := sParamContrato;
    connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate;
    connection.QryBusca2.Params.ParamByName('fecha').Value := dParamFecha;
    connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Orden').Value := sParamOrden;
    connection.QryBusca2.Params.ParamByName('Turno').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Turno').Value := sParamTurno;
    connection.QryBusca2.Open;

    if connection.QryBusca2.RecordCount > 0 then
    begin
      if connection.QryBusca2.RecordCount <= 5 then
      begin
        for n := 1 to 5 - 1 do
          mBitacoraActividades.Prior;

        while not connection.QryBusca2.Eof do
        begin
          mBitacoraActividades.Edit;
          mBitacoraActividades.FieldValues['Id_C3'] := connection.QryBusca2.FieldValues['sIdTipoPermiso'];
          mBitacoraActividades.FieldValues['Permiso'] := connection.QryBusca2.FieldValues['sFolios'];
          mBitacoraActividades.FieldValues['Descripcion_C3'] := connection.QryBusca2.FieldValues['sDescripcion'];
          mBitacoraActividades.FieldValues['Cantidad_C3'] := 0;
          mBitacoraActividades.Post;
          mBitacoraActividades.Next;
          connection.QryBusca2.Next;
        end;
      end;
    end;

  end;


  if lCheckReporte() then
  begin
      //Personal..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sIdPersonal, sDescripcion from personal where sContrato =:Contrato order by iItemOrden ');
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
    connection.zCommand.Open;

    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select b.sContrato, p.sIdPersonal, b.sDescripcion as sDescripcion, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si") ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden Group By  p.sIdPersonal order by p.iItemOrden asc');
    connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('contrato').Value := sParamContrato;
    connection.QryBusca2.Params.ParamByName('orden').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('orden').Value := sParamOrden;
    connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate;
    connection.QryBusca2.Params.ParamByName('fecha').Value := dParamFecha;
    connection.QryBusca2.Params.ParamByName('Turno').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Turno').Value := sParamTurno;
    connection.QryBusca2.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      j := connection.zCommand.RecordCount / 3;
      i := round(j);
      x := 1;
      while not connection.zCommand.Eof do
      begin
        k := 0;
        connection.QryBusca2.First;
        while not connection.QryBusca2.Eof do
        begin
          if connection.zCommand.FieldValues['sIdPersonal'] = connection.QryBusca2.FieldValues['sIdPersonal'] then
            k := connection.QryBusca2.FieldValues['dCantidad'];
          connection.QryBusca2.Next;
        end;

        if x <= i then
        begin
          mBitacora1.Append;
          mBitacora1.FieldValues['Grupo'] := 'CONTROL DE PERSONAL (JORNADA)';
          mBitacora1.FieldValues['Contrato'] := sParamContrato;
          mBitacora1.FieldValues['Id_C1'] := connection.zCommand.FieldValues['sIdPersonal'];
          mBitacora1.FieldValues['Descripcion_C1'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C1'] := k;
          mBitacora1.Post;
        end;

        if x = i then
          for n := 1 to i - 1 do
            mBitacora1.Prior;

        if (x > i) and (x <= i * 2) then
        begin
          mBitacora1.Edit;
          mBitacora1.FieldValues['Id_C2'] := connection.zCommand.FieldValues['sIdPersonal'];
          mBitacora1.FieldValues['Descripcion_C2'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C2'] := k;
          mBitacora1.Post;
          mBitacora1.Next;
        end;

        if x = i * 2 then
          for n := 1 to i - 1 do
            mBitacora1.Prior;

        if (x > i * 2) and (x <= i * 3) then
        begin
          mBitacora1.Edit;
          mBitacora1.FieldValues['Id_C3'] := connection.zCommand.FieldValues['sIdPersonal'];
          mBitacora1.FieldValues['Descripcion_C3'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C3'] := k;
          mBitacora1.Post;
          mBitacora1.Next;
        end;
        x := x + 1;
        connection.zCommand.Next;
      end;
    end;

      //Equipo...
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sIdEquipo, sDescripcion from equipos where sContrato =:Contrato and sIdTipoEquipo <> "EQ-S" order by iItemOrden ');
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
    connection.zCommand.Open;

    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select b.sContrato, p.sIdEquipo, b.sDescripcion as sDescripcion, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno =:Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo And p.lImprime = "Si" and sIdTipoEquipo <> "EQ-S") ' +
      'where a.sContrato =:Contrato and a.dIdFecha =:Fecha and a.sNumeroOrden =:Orden ' +
      'Group By p.sIdEquipo order by p.iItemOrden asc');
    connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('contrato').Value := sParamContrato;
    connection.QryBusca2.Params.ParamByName('orden').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('orden').Value := sParamOrden;
    connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate;
    connection.QryBusca2.Params.ParamByName('fecha').Value := dParamFecha;
    connection.QryBusca2.Params.ParamByName('Turno').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Turno').Value := sParamTurno;
    connection.QryBusca2.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      j := connection.zCommand.RecordCount / 3;
      i := round(j);
      x := 1;
      while not connection.zCommand.Eof do
      begin
        k := 0;
        connection.QryBusca2.First;
        while not connection.QryBusca2.Eof do
        begin
          if connection.zCommand.FieldValues['sIdEquipo'] = connection.QryBusca2.FieldValues['sIdEquipo'] then
            k := connection.QryBusca2.FieldValues['dCantidad'];
          connection.QryBusca2.Next;
        end;

        if x <= i then
        begin
          mBitacora1.Append;
          mBitacora1.FieldValues['Grupo'] := 'CONTROL DE HERRAMIENTA Y EQUIPO (HORAS)';
          mBitacora1.FieldValues['Contrato'] := sParamContrato;
          mBitacora1.FieldValues['Id_C1'] := connection.zCommand.FieldValues['sIdEquipo'];
          mBitacora1.FieldValues['Descripcion_C1'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C1'] := k;
          mBitacora1.Post;
        end;

        if x = i then
          for n := 1 to i - 1 do
            mBitacora1.Prior;

        if (x > i) and (x <= i * 2) then
        begin
          mBitacora1.Edit;
          mBitacora1.FieldValues['Id_C2'] := connection.zCommand.FieldValues['sIdEquipo'];
          mBitacora1.FieldValues['Descripcion_C2'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C2'] := k;
          mBitacora1.Post;
          mBitacora1.Next;
        end;

        if x = i * 2 then
          for n := 1 to i - 1 do
            mBitacora1.Prior;

        if (x > i * 2) and (x <= i * 3) then
        begin
          mBitacora1.Edit;
          mBitacora1.FieldValues['Id_C3'] := connection.zCommand.FieldValues['sIdEquipo'];
          mBitacora1.FieldValues['Descripcion_C3'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C3'] := k;
          mBitacora1.Post;
          mBitacora1.Next;
        end;
        x := x + 1;
        connection.zCommand.Next;
      end;
    end;

      //Materiales utilizados..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sIdEquipo, sDescripcion from equipos where sContrato =:Contrato and sIdTipoEquipo = "EQ-S" order by iItemOrden ');
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato;
    connection.zCommand.Open;

    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select b.sContrato, p.sIdEquipo, b.sDescripcion as sDescripcion, Sum(b.dCantidad) as dCantidad  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno =:Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo And p.lImprime = "Si" and sIdTipoEquipo = "EQ-S") ' +
      'where a.sContrato =:Contrato and a.dIdFecha =:Fecha and a.sNumeroOrden =:Orden ' +
      'Group By p.sIdEquipo order by p.iItemOrden asc');
    connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('contrato').Value := sParamContrato;
    connection.QryBusca2.Params.ParamByName('orden').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('orden').Value := sParamOrden;
    connection.QryBusca2.Params.ParamByName('fecha').DataType := ftDate;
    connection.QryBusca2.Params.ParamByName('fecha').Value := dParamFecha;
    connection.QryBusca2.Params.ParamByName('Turno').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Turno').Value := sParamTurno;
    connection.QryBusca2.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      while not connection.zCommand.Eof do
      begin
        j := connection.QryBusca2.RecordCount / 3;
        i := round(j) + 1;

        for x := 1 to i do
        begin
          k := 0;
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
            if connection.zCommand.FieldValues['sIdEquipo'] = connection.QryBusca2.FieldValues['sIdEquipo'] then
              k := connection.QryBusca2.FieldValues['dCantidad'];
            connection.QryBusca2.Next;
          end;

          mBitacora1.Append;
          mBitacora1.FieldValues['Grupo'] := 'CONTROL DE EQUIPO DE SEGURIDAD';
          mBitacora1.FieldValues['Contrato'] := sParamContrato;
          mBitacora1.FieldValues['Id_C1'] := connection.zCommand.FieldValues['sIdEquipo'];
          mBitacora1.FieldValues['Descripcion_C1'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C1'] := k;
          mBitacora1.Post;
          connection.zCommand.Next;
        end;

        for x := 1 to i - 1 do
          mBitacora1.Prior;

        for x := 1 to i do
        begin
          k := 0;
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
            if connection.zCommand.FieldValues['sIdEquipo'] = connection.QryBusca2.FieldValues['sIdEquipo'] then
              k := connection.QryBusca2.FieldValues['dCantidad'];
            connection.QryBusca2.Next;
          end;
          mBitacora1.Edit;
          mBitacora1.FieldValues['Id_C2'] := connection.zCommand.FieldValues['sIdEquipo'];
          mBitacora1.FieldValues['Descripcion_C2'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C2'] := k;
          mBitacora1.Post;
          mBitacora1.Next;
          connection.zCommand.Next;
        end;

        for x := 1 to i - 1 do
          mBitacora1.Prior;

        while not connection.QryBusca2.Eof do
        begin
          k := 0;
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
            if connection.zCommand.FieldValues['sIdEquipo'] = connection.QryBusca2.FieldValues['sIdEquipo'] then
              k := connection.QryBusca2.FieldValues['dCantidad'];
            connection.QryBusca2.Next;
          end;
          mBitacora1.Edit;
          mBitacora1.FieldValues['Id_C3'] := connection.zCommand.FieldValues['sIdEquipo'];
          mBitacora1.FieldValues['Descripcion_C3'] := connection.zCommand.FieldValues['sDescripcion'];
          mBitacora1.FieldValues['Cantidad_C3'] := k;
          mBitacora1.Post;
          mBitacora1.Next;
          connection.zCommand.Next;
        end;
      end;
    end;
  end;

  // Variables Generales del Reporte
  global_imprime := 'Si';

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select r.sContrato From reportediario r inner join ordenesdetrabajo o on ' +
    '(r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdTipoOrden <> :tipo) ' +
    'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And r.lStatus <> "Autorizado" ');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
  QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
  QryBuscar.Params.ParamByName('tipo').DataType := ftString;
  QryBuscar.Params.ParamByName('tipo').Value := QryConfiguracion.FieldValues['sOrdenExtraordinaria'];
  QryBuscar.Open;
  if QryBuscar.RecordCount > 0 then
    global_imprime := 'No';

  if lCheckReporte() then
  begin
    // Programadas
    if QryReporteDiario.FieldValues['sOrigenTierra'] = 'Si' then
      sDiarioDescripcionCorta := 'OFICINAS ADMINISTRATIVAS'
    else
      sDiarioDescripcionCorta := QryReporteDiario.FieldValues['sIdFolio'];
  end
  else
    sDiarioDescripcionCorta := QryReporteDiario.FieldValues['sDescripcionCorta'];

  sDiarioComentario := '';
  if global_imprime = 'No' then
    sDiarioComentario := 'EXISTEN REPORTES DIARIOS DE OTRAS ORDENES DE TRABAJO SIN VALIDAR/AUTORIZAR EN EL DIA, POR TAL NO SE PUEDE REFLEJAR EL AVANCE REAL Y LOS TIEMPOS MUERTOS REALES DEL CONTRATO.';

  sDiarioTitulo := '';
  if global_imprime = 'No' then
    sDiarioTitulo := 'OBSERVACIONES';

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio Order By dFecha DESC');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
  QryBuscar.Params.ParamByName('Convenio').Value := QryReporteDiario.FieldValues['sIdConvenio'];
  QryBuscar.Open;
  sDiarioPeriodo := '';
  if QryBuscar.RecordCount > 0 then
    sDiarioPeriodo := datetostr(QryBuscar.FieldValues['dFechaInicio']) + ' AL ' + datetostr(QryBuscar.FieldValues['dFechaFinal']);
  QryBuscar.Destroy;
  QryBuscarAux.Destroy;

  if lCheckReporte() then
  begin
      // Avances Fisico/Programados ...
    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select sIdTipoOrden from ordenesdetrabajo where sContrato = :Contrato and sNumeroOrden = :Orden');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').Value := sParamOrden;
    QryOrdenesdeTrabajo.Open;
    sTipoOrden := QryOrdenesdeTrabajo.FieldValues['sIdTipoOrden'];


    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, sIdTipoOrden from ordenesdetrabajo where sContrato = :Contrato and sIdTipoOrden <> :Tipo');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Tipo').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Tipo').Value := QryConfiguracion.FieldValues['sOrdenExtraordinaria'];
    QryOrdenesdeTrabajo.Open;

    if QryOrdenesdeTrabajo.RecordCount >= 1 then {08/marzo/2012 : adal,calcular los avances aunque sea solo un frente}
      procAvances(sParamContrato, sParamOrden, QryReporteDiario.FieldValues['sIdConvenio'], QryReporteDiario.FieldValues['sIdTurno'], dParamFecha, True, tOrigen)
    else
      procAvances(sParamContrato, sParamOrden, QryReporteDiario.FieldValues['sIdConvenio'], QryReporteDiario.FieldValues['sIdTurno'], dParamFecha, False, tOrigen);

    if QryReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
    begin
      dRealGlobalAnterior := 0;
      dRealGlobalActual := 0;
      dRealGlobalAcumulado := 0;
      dRealOrdenAnterior := 0;
      dRealOrdenActual := 0;
      dRealOrdenAcumulado := 0;
    end;

    global_miReporte := QryConfiguracion.FieldValues['sReportesCIA'];
    rDiario.LoadFromFile(global_files + global_miReporte + '_reporteDiarioPEH.fr3');
  end;

  QryOrdenesdeTrabajo.Active := False;
  QryOrdenesdeTrabajo.SQL.Clear;
  QryOrdenesdeTrabajo.SQL.Add('Select o.mDescripcion, o.sIdFolio,p.sDescripcion as sIdPlataforma from ordenesdetrabajo o ' +
    'inner join plataformas p on (o.sIdPlataforma = p.sIdPlataforma) where o.sContrato = :Contrato and o.sNumeroOrden = :Orden');
  QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
  QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
  QryOrdenesdeTrabajo.Params.ParamByName('Orden').DataType := ftString;
  QryOrdenesdeTrabajo.Params.ParamByName('Orden').Value := sParamOrden;
  QryOrdenesdeTrabajo.Open;
  if QryOrdenesdeTrabajo.RecordCount > 0 then
  begin
    mDescripcionOrden := QryOrdenesdeTrabajo.FieldValues['mDescripcion'];
    sFolio := QryOrdenesdeTrabajo.FieldValues['sIdFolio'];
    sPlataformaOrden := QryOrdenesdeTrabajo.FieldValues['sIdPlataforma'];
  end;

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rDiario.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', dParamFecha, tOrigen);

  if sParamDestino = 'Printer' then
    rDiario.Print
  else
    rDiario.ShowReport(True);
  procLimpia()

end;

//************************BRITO 30-11-10****************************************
//funcion que devuelve la cadena "sNumeroActividad" si se debe imprimir el numero de partida actual
//o la cadena "sActividadAnterior" si se imprime la partida anterior en el reporte diario

function historialPartidas(sParamContrato, sParamOrden: string; dParamFecha: tDate; lmostrarAnt: boolean): string;
begin
  result := 'sNumeroActividad';
  //Buscar en la configuracion si se imprimen partidas anteriores por frente o por reporte
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT lHistorialPartidas FROM configuracion WHERE sContrato = :contrato');
  connection.QryBusca.ParamByName('contrato').AsString := sParamContrato;
  connection.QryBusca.Open;
  //Si no se encontro nada en configuracion el valor por defecto es "sNumeroActividad"
  if connection.QryBusca.RecordCount > 0 then begin
    if connection.QryBusca.FieldByName('lHistorialPartidas').AsString = 'Reporte' then begin
      //Se imprime por reporte, solo verificar si el reporte en cuestion tiene activado imrpimir la partida anterior
      if lmostrarAnt then begin
        result := 'sActividadAnterior';
      end;
    end
    else begin
      //Se imprime por frente, verificar en la tabla ordenesdetrabajo
      connection.QryBusca.Active := false;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT lMostrarPartidasReportes, dFechaIniPReportes, dFechaFinPReportes ' +
        'FROM ordenesdetrabajo WHERE sContrato = :contrato AND sNumeroOrden = :orden');
      connection.QryBusca.ParamByName('contrato').AsString := sParamContrato;
      connection.QryBusca.ParamByName('orden').AsString := sParamOrden;
      connection.QryBusca.Open;
      //Si el valor de lMostrarPartidasReportes es Actuales, se toma el resultado por defecto
      if connection.QryBusca.FieldByName('lMostrarPartidasReportes').AsString = 'Anteriores' then begin
        //Se imprimen partidas anteriores, revisar que el reporte en cuestion este en el rango de fechas
        if (dParamFecha >= connection.QryBusca.FieldByName('dFechaIniPReportes').AsDateTime) and
          (dParamFecha <= connection.QryBusca.FieldByName('dFechaFinPReportes').AsDateTime) then begin
          //la fecha esta en el rango, devolver 'sActividadAnterior'
          result := 'sActividadAnterior';
        end;
      end;
    end;
  end;
end;

procedure definirPeriodo(sParamContrato: string; dParamFecha: tDate);
var
  sSQLPer: string;
begin
  //buscarla en los rangos de la tabla reprogramacion_barco
  sSQLPer :=
    'select * from reprogramacion_barco ' +
    'where sContrato = :contrato ' +
    'and dFechaInicio <= :fecha ' +
    'and dFechaFinal >= :fecha';
  QryPeriodo.Active := false;
  QryPeriodo.SQL.Clear;
  QryPeriodo.SQL.Add(sSQLPer);
  QryPeriodo.ParamByName('contrato').AsString := global_contrato_barco;
  QryPeriodo.ParamByName('fecha').AsDate := dParamFecha;
  //estas son las fechas que se mandan al reporte
  QryPeriodo.Open;
end;


procedure definirPeriodoProgramado(sParamContrato, sParamConvenio: string; dParamFecha: tDate);
var
  sSQLPer: string;
begin
  //buscarla en los rangos de la tabla reprogramacion
  sSQLPer :=
    'select * from convenios ' +
    'where sContrato = :contrato ' +
    'and sidconvenio=:convenio';
  //'and dFechaInicio <= :fecha '+
 // 'and dFechaFinal >= :fecha';
  QryPeriodo.Active := false;
  QryPeriodo.SQL.Clear;
  QryPeriodo.SQL.Add(sSQLPer);
  QryPeriodo.ParamByName('contrato').AsString := sParamContrato;
  QryPeriodo.ParamByName('convenio').AsString := sParamConvenio;

  //QryPeriodo.ParamByName('fecha').AsDate := dParamFecha;
  //estas son las fechas que se mandan al reporte
  QryPeriodo.Open;
end;



{soriano}
{Irineo}

procedure procReporteDiarioCotemarOpt(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMostrarAnt: boolean = false; FormatosExp: string = ''; PermisosExp: string = '');
var
  Registro: Integer;
  sPaquete,
  sActividad: string;
  sBkPaquete: string;
  lEncontrado: Boolean;
  dAvance: Real;
  sTipoOrden,
  sImprimeComoActividad: string;
  sListPaquetes,
  Embarcacion: string;
  iNumeroBloques, j, k, i, x: Integer;

  {Configuraciones administrativas}
  Linea: string;
  Q_Programado,
  Q_TipoAvance,
  Q_Convenio,
  Q_Avance: TZReadOnlyQuery;
  lContinua: boolean;
  sHistorialPartidas: string;
  {paqueteo...}
  MiWbs: string;
  iPos, NumPaq, Nivel : Integer;
  Q_Paquetes,
  QrCantInstall,
  QryBuscarTurnos     : tzReadOnlyquery;
  ArrayPaquetes: array[1..10, 1..2] of string;

  cadena : string;
  indice : integer;
begin
  // Creo los abjetos del reporte diario ...
  procCreateObject(tOrigen);

  rDiario.OnGetValue := tProcedure;
  definirPeriodo(sParamContrato, dParamFecha);

  {Llamamos la funcion para obtener la numeracion de partidas a mostrar}
  sHistorialPartidas := historialPartidas(sParamContrato, sParamOrden, dParamFecha, lParamMostrarAnt);
  //sHistorialPartidas := 'a2.' + sHistorialPartidas + ' as partida, ';
  sHistorialPartidas := '(if(a2.' + sHistorialPartidas + ' <> "", a2.' + sHistorialPartidas + ', b.sNumeroActividad)) as partida, ';

  {Verificcamos si Hay configuraicones de Optativa Administrativa...}
  Q_Programado := TZReadOnlyQuery.Create(tOrigen);
  Q_Programado.Connection := connection.zConnection;

  Q_TipoAvance := TZReadOnlyQuery.Create(tOrigen);
  Q_TipoAvance.Connection := connection.zConnection;

  Q_Convenio := TZReadOnlyQuery.Create(tOrigen);
  Q_Convenio.Connection := connection.zConnection;

  Q_Avance := TZReadOnlyQuery.Create(tOrigen);
  Q_Avance.Connection := connection.zConnection;

  QryBuscarTurnos := TZReadOnlyQuery.Create(tOrigen);
  QryBuscarTurnos.Connection := connection.zConnection;

  {22/02/2012: adal, Obtenermos el numero de paquetes a mostrar..}
  Q_Paquetes := tzReadOnlyQuery.Create(tOrigen);
  Q_Paquetes.Connection := connection.zConnection;

  Q_Paquetes.Active := False;
  Q_Paquetes.SQL.Clear;
  Q_Paquetes.SQL.Add('select iNiveles from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Orden ');
  Q_Paquetes.ParamByName('Contrato').AsString := sParamContrato;
  Q_Paquetes.ParamByName('Orden').AsString := sParamOrden;
  Q_Paquetes.Open;
  if Q_Paquetes.RecordCount > 0 then
    Nivel := Q_Paquetes.FieldValues['iNiveles'];

  Q_TipoAvance.Active := False;
  Q_TipoAvance.SQL.Clear;
  Q_TipoAvance.SQL.Add('Select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Orden and sTipoAvanceAdmon = "Si"');
  Q_TipoAvance.ParamByName('Contrato').AsString := sParamContrato;
  Q_TipoAvance.ParamByName('Orden').AsString := sParamOrden;
  Q_TipoAvance.Open;

  Linea := '';
  if Q_TipoAvance.RecordCount > 0 then
  begin
    Q_Convenio.Active := False;
    Q_Convenio.SQL.Clear;
    Q_Convenio.SQL.Add('Select dFecha from convenios where sContrato =:Contrato and sIdConvenio =:Convenio ');
    Q_Convenio.ParamByName('Contrato').AsString := sParamContrato;
    Q_Convenio.ParamByName('Convenio').AsString := sParamConvenio;
    Q_Convenio.Open;

    Q_Programado.Active := False;
    Q_Programado.SQL.Clear;
    Q_Programado.SQL.Add('Select dAvancePonderadoGlobal from avancesglobales where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and dIdFecha =:Fecha ');
    Q_Programado.ParamByName('Contrato').AsString := sParamContrato;
    Q_Programado.ParamByName('Convenio').AsString := sParamConvenio;
    Q_Programado.ParamByName('Orden').AsString := sParamOrden;
    Q_Programado.ParamByName('Fecha').AsDate := Q_Convenio.FieldValues['dFecha'] - 1;
    Q_Programado.Open;

    if Q_Programado.RecordCount = 0 then
    begin
      Q_Programado.Active := False;
      Q_Programado.SQL.Clear;
      Q_Programado.SQL.Add('Select 0 as dAvancePonderadoGlobal from avancesglobales ');
      Q_Programado.Open;
    end;

    Linea := ' and dIdFecha >= :FechaConvenio ';
  end;
  {continua proceso normal..}

  qryConfiguracionOrden.Active := False;
  qryConfiguracionOrden.SQL.Clear;
  qryConfiguracionOrden.SQL.Add('select * from ordenesdetrabajo where sContrato=:Contrato and sNumeroOrden=:Orden ');
  qryConfiguracionOrden.Params.ParamByName('Contrato').DataType := ftString;
  qryConfiguracionOrden.Params.ParamByName('Contrato').Value := sParamContrato;
  qryConfiguracionOrden.Params.ParamByName('Orden').DataType := ftString;
  qryConfiguracionOrden.Params.ParamByName('Orden').Value := sParamOrden;
  qryConfiguracionOrden.Open;

  if QryConfiguracionOrden.RecordCount > 0 then
    if QryConfiguracionOrden.FieldValues['sTipoImpresionActividad'] = 'Si' then
      sImprimeComoActividad := ' )'
    else
      sImprimeComoActividad := ' And a.sTipoActividad = "Actividad" and "ACTIVIDAD" LIKE concat("%" , concat( a.sMedida , "%" ))) ';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.iFirmasReportes, c.sMostrarAvances,c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    ' (select sContrato from contratos where sContrato = :ContratoBarco ) as sContratoBarco, ' +
    ' (select mDescripcion from contratos where sTipoObra =:contratoBarco ) as mDescripcionBarco, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sReportesCIA, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
    'ot.bAvanceFrente, ot.bAvanceContrato, ot.bComentarios, ot.bPermisos, ot.lMostrarAvanceProgramado, ot.lImprimePersonalTM, ' +
    'c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, sImpresionPaquetes  ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'inner join ordenesdetrabajo ot on (ot.sContrato = c2.sContrato and ot.sNumeroOrden =:Orden ) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value    := sParamContrato;
  QryConfiguracion.Params.ParamByName('contratoBarco').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contratoBarco').Value    := global_contrato_barco;
  QryConfiguracion.Params.ParamByName('Orden').DataType := ftString;
  QryConfiguracion.Params.ParamByName('Orden').Value    := sParamOrden;
  QryConfiguracion.Open;

  // C-13 o C-17 Material, son conceptos de anexo C, se reportan en una orden optativa, las actividades tambien son conceptos pero del programa de trabajo.
  // 1. En el reporte diario primero se imprimiran todos los conceptos de anexo C (Materiales) con la forma normal del reporte diario.
  // 2. Se imprimiran las actividades del programa, detallando en cada impresion solo el avance anterior, actual y acumulado asi como el personal, equipo y material utilizados.

  qryPers13.Active := False;
  qryPers13.SQL.Clear;
  if QryConfiguracion.FieldValues['sOrdenPerEq'] = 'Pernocta' then
    qryPers13.SQL.Add(' select bp.sContrato, bp.sIdPernocta, bp.dIdFecha, bp.sIdPersonal, per.sDescripcion as sPernocta, ' +
      ' bp.sDescripcion, sum(bp.dCantidad) as dCantidad, p.sIdTipoPersonal from bitacoradepersonal bp ' +
      ' inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ' +
      '      ba.iIdDiario = bp.iIdDiario and ba.sNumeroOrden = :Orden and ba.sIdTurno = :Turno) ' +
      ' INNER JOIN personal p On (bp.sContrato = p.sContrato and bp.sIdPersonal=p.sIdPersonal And p.lImprime = "Si" And ' +
      ' :PerIndependiente LIKE concat( "%" , concat(trim(p.sIdTipoPersonal), "%"))) ' +
      ' inner join pernoctan per on (bp.sIdPernocta = per.sIdPernocta) ' +
      ' Where bp.dIdFecha  =:Fecha  and p.sDescripcion not like "%TIEMPO%EXTRA%"   ' +
      ' And bp.sContrato =:Contrato Group By bp.sIdPernocta, bp.sIdPersonal Order By bp.sIdPernocta, p.iItemOrden ')
  else
    qryPers13.SQL.Add(' select bp.sContrato, bp.sIdPlataforma as sIdPernocta, bp.dIdFecha, bp.sIdPersonal, pl.sDescripcion as sPernocta, ' +
      ' bp.sDescripcion, sum(bp.dCantidad) as dCantidad, p.sIdTipoPersonal from bitacoradepersonal bp ' +
      ' inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ' +
      '      ba.iIdDiario = bp.iIdDiario and ba.sNumeroOrden = :Orden and ba.sIdTurno = :Turno) ' +
      ' INNER JOIN personal p On (bp.sContrato = p.sContrato and bp.sIdPersonal=p.sIdPersonal And p.lImprime = "Si" And ' +
      ' :PerIndependiente LIKE concat( "%" , concat(trim(p.sIdTipoPersonal), "%"))) ' +
      ' inner join plataformas pl on (bp.sIdPlataforma = pl.sIdPlataforma) ' +
      ' Where bp.dIdFecha  =:Fecha and p.sDescripcion not like "%TIEMPO%EXTRA%"  ' +
      ' And bp.sContrato =:Contrato Group By bp.sIdPlataforma, bp.sIdPersonal Order By bp.sIdPlataforma, p.iItemOrden ');

  qryPers13.Params.ParamByName('Contrato').DataType := ftString;
  qryPers13.Params.ParamByName('Contrato').Value := sParamContrato;
  qryPers13.Params.ParamByName('Fecha').DataType := ftDate;
  qryPers13.Params.ParamByName('Fecha').Value := dParamFecha;
  QryPers13.Params.ParamByName('Turno').DataType := ftString;
  QryPers13.Params.ParamByName('Turno').Value := sParamTurno;
  qryPers13.Params.ParamByName('Orden').DataType := ftString;
  qryPers13.Params.ParamByName('Orden').Value := sParamOrden;
  qryPers13.Params.ParamByName('PerIndependiente').DataType := ftString;
  if Connection.configuracion.FieldValues['sPersonalIndependiente'] <> '' then
    qryPers13.Params.ParamByName('PerIndependiente').Value := Connection.configuracion.FieldValues['sPersonalIndependiente']
  else
    qryPers13.Params.ParamByName('PerIndependiente').Value := '';
  qryPers13.Open;
  if qryPers13.recordcount > 0 then
    if qryPers13.FieldValues['sIdTipoPersonal'] = 'EXT' then
      sTituloCentro := 'CONTROL DE TIEMPO EXTRA ' + global_labelPersonal
    else
      if qryPers13.FieldValues['sIdTipoPersonal'] = Global_Materialbordo then
        sTituloCentro := 'CONTROL DE PERSONAL  ' + Global_Materialbordo
      else
        if qryPers13.FieldValues['sIdTipoPersonal'] = Global_MaterialTierra then
          sTituloCentro := 'CONTROL DE PERSONAL ' + Global_MaterialTierra
        else
          sTituloCentro := 'CONTROL DE PERSONAL';

  {Anexo C-14 }
    {22.03.2012 : adal, duplica el personal, ya que en anexos existen dos sTipo = personal, omito esa union }
  QryC14.Active := False;
  QryC14.SQL.Clear;
  if QryConfiguracion.FieldValues['sOrdenPerEq'] = 'Pernocta' then //ivan Mostrar Categoria de personal, No especialidad..  sAgrupaPersonal
    QryC14.SQL.Add(
      ' select' +
      ' bp.sContrato, bp.sIdPernocta, bp.sIdPersonal, p.sAgrupaPersonal, per.sDescripcion as sPernocta,' +
      ' sum(bp.dCantidad) as dCantidad1 , bp.dCantidad, bp.dSolicitado, ' +
      ' bp.sDescripcion as sDescripcion,' +
      ' p.dCantidad as dCantidadSolicitada, '+
      ' ( select sAnexo from anexos where sTipo = "PERSONAL" limit 1 ) as sAnexo ' +
      //' a.sAnexo ' +
      ' from bitacoradepersonal bp' +
      ' inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ' +
      '      ba.iIdDiario = bp.iIdDiario and ba.sNumeroOrden = :Orden and ba.sIdTurno = :Turno) ' +
      ' inner join personal p on (' +
      '   p.sContrato=bp.sContrato and p.sIdPersonal = bp.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal <> "PE-A" And ' +
      ' :PerIndependiente NOT LIKE concat( "%" , concat(trim(p.sIdTipoPersonal), "%"))) ' +
      ' inner join pernoctan per on (bp.sIdPernocta = per.sIdPernocta) ' +
      //' left join anexos a on (a.sTipo = "PERSONAL")' +
      ' Where bp.sContrato=:Contrato and p.sDescripcion not like "%TIEMPO%EXTRA%"  ' +
      ' and bp.dIdFecha=:Fecha' +
      ' Group By bp.sIdPernocta, bp.sIdPersonal order by bp.sIdPernocta, p.iItemOrden')
  else
   {22.03.2012 : adal, duplica el personal, ya que en anexos existen dos sTipo = personal, omito esa union }
    QryC14.SQL.Add(
      ' select' +
      ' bp.sContrato, bp.sIdPlataforma as sIdPernocta, bp.sIdPersonal, p.sAgrupaPersonal, pl.sDescripcion as sPernocta, ' +
      ' sum(bp.dCantidad) as dCantidad1 , bp.dCantidad, bp.dSolicitado, ' +
      ' bp.sDescripcion as sDescripcion,' +
      ' p.dCantidad as dCantidadSolicitada, '+
      ' ( select sAnexo from anexos where sTipo = "PERSONAL" limit 1 ) as sAnexo ' +
      //' a.sAnexo ' +
      ' from bitacoradepersonal bp' +
      ' inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ' +
      '      ba.iIdDiario = bp.iIdDiario and ba.sNumeroOrden = :Orden and ba.sIdTurno = :Turno) ' +
      ' inner join personal p on (' +
      '   p.sContrato=bp.sContrato and p.sIdPersonal = bp.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal <> "PE-A" And ' +
      ' :PerIndependiente NOT LIKE concat( "%" , concat(trim(p.sIdTipoPersonal), "%"))) ' +
      ' inner join plataformas pl on (bp.sIdPlataforma = pl.sIdPlataforma) ' +
      //' left join anexos a on (a.sTipo = "PERSONAL")' +
      ' Where bp.sContrato=:Contrato and p.sDescripcion not like "%TIEMPO%EXTRA%"  ' +
      ' and bp.dIdFecha=:Fecha' +
      ' Group By bp.sIdPlataforma, bp.sIdPersonal order by bp.sIdPlataforma, p.iItemOrden');
  QryC14.Params.ParamByName('Contrato').DataType := ftString;
  QryC14.Params.ParamByName('Contrato').Value := sParamContrato;
  QryC14.Params.ParamByName('Orden').DataType := ftString;
  QryC14.Params.ParamByName('Orden').Value := sParamOrden;
  QryC14.Params.ParamByName('Fecha').DataType := ftDate;
  QryC14.Params.ParamByName('Fecha').Value := dParamFecha;
  QryC14.Params.ParamByName('Turno').DataType := ftString;
  QryC14.Params.ParamByName('Turno').Value := sParamTurno;
  if Connection.configuracion.FieldValues['sPersonalIndependiente'] <> '' then
    QryC14.Params.ParamByName('PerIndependiente').Value := Connection.configuracion.FieldValues['sPersonalIndependiente']
  else
    QryC14.Params.ParamByName('PerIndependiente').Value := '';

  QryC14.Open;


   {Anexo C-14 Tiempos Extras: Irineo}
  QryC14te.Active := False;
  QryC14te.SQL.Clear;
  QryC14te.SQL.Add(
    ' select bp.sContrato, bp.sIdPersonal, bp.sDescripcion, bp.mMotivos, bte.sNumeroFicha, bte.sNombre, bte.sPuesto, ' +
    'bte.dTiempoExtra, bte.sHoraInicio, bte.sHoraFinal from bitacoradetiemposextras bte ' +
    'inner join bitacoradepersonal bp on (bte.sContrato = bp.sContrato and bte.dIdFecha = bp.dIdFecha and ' +
    'bte.iIdDiario = bp.iIdDiario and bte.sIdPersonal = bp.sIdPersonal ) ' +
    ' inner join personal p on (p.sContrato=bte.sContrato and p.sIdPersonal = bte.sIdPersonal And p.lImprime = "Si") ' +
    'inner join bitacoradeactividades ba on (ba.sContrato = bp.sContrato and ba.dIdFecha = bp.dIdFecha and ' +
    'ba.iIdDiario = bp.iIdDiario and ba.sNumeroOrden = :Orden and ba.sIdTurno = :Turno) ' +
    'where bte.sContrato = :contrato and bte.dIdFecha = :Fecha and p.sDescripcion not like "%TIEMPO%EXTRA%"   ' +
    'order by bte.sIdPersonal, bte.sNumeroFicha');
  QryC14te.Params.ParamByName('Contrato').DataType := ftString;
  QryC14te.Params.ParamByName('Contrato').Value := sParamContrato;
  QryC14te.Params.ParamByName('Fecha').DataType := ftDate;
  QryC14te.Params.ParamByName('Fecha').Value := dParamFecha;
  QryC14te.Params.ParamByName('Turno').DataType := ftString;
  QryC14te.Params.ParamByName('Turno').Value := sParamTurno;
  QryC14te.Params.ParamByName('Orden').DataType := ftString;
  QryC14te.Params.ParamByName('Orden').Value := sParamOrden;
  QryC14te.Open;


   {Anexo C-15 : adal}
  QryC15.Active := False;
  QryC15.SQL.Clear;
  QryC15.SQL.Add(
    ' select be.sContrato, be.sIdPernocta, be.sIdEquipo, sum(be.dCantidad) as dCantidad, per.sDescripcion as sPernocta,' +
    ' be.sDescripcion as sDescripcion, be.dSolicitado, ' +
    ' e.dCantidad as dCantidadSolicitada, a.sAnexo ' +
    ' from bitacoradeequipos be' +
    ' inner join bitacoradeactividades ba on (ba.sContrato = be.sContrato and ba.dIdFecha = be.dIdFecha and ' +
    '      ba.iIdDiario = be.iIdDiario and ba.sNumeroOrden = :Orden and ba.sIdTurno = :Turno) ' +
    ' inner join equipos e on (e.sContrato=be.sContrato and e.sIdEquipo=be.sIdEquipo And e.lImprime = "Si")' +
    ' inner join pernoctan per on (be.sIdPernocta = per.sIdPernocta) ' +
    ' left join anexos a on(a.sTipo = "EQUIPO")' +
    ' where ' +
    ' be.sContrato=:Contrato' +
    ' and be.dIdFecha=:Fecha  ' +
    ' Group By be.sIdPernocta, be.sIdEquipo Order by be.sIdPernocta, e.iItemOrden');
  QryC15.Params.ParamByName('Contrato').DataType := ftString;
  QryC15.Params.ParamByName('Contrato').Value := sParamContrato;
  QryC15.Params.ParamByName('Orden').DataType := ftString;
  QryC15.Params.ParamByName('Orden').Value := sParamOrden;
  QryC15.Params.ParamByName('Fecha').DataType := ftDate;
  QryC15.Params.ParamByName('Fecha').Value := dParamFecha;
  QryC15.Params.ParamByName('Turno').DataType := ftString;
  QryC15.Params.ParamByName('Turno').Value := sParamTurno;
  QryC15.Open;

  // Actualizo primeramente las firmas ..
  if mMovimientos.RecordCount > 0 then
    mMovimientos.EmptyTable;

  if mBitacora1.RecordCount > 0 then
    mBitacora1.EmptyTable;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  if lCheckReporte() then
    QryReporteDiario.SQL.Add('Select r.*, o.sDescripcionCorta, o.sIdFolio, o.mDescripcion, o.sIdPlataforma, p.sDescripcion as Plataforma, o.lMostrarAvanceProgramado, o.sOficioAutorizacion, ' +
      't.sOrigenTierra, t.sDescripcion, c.dFechaInicio, c.dFechaFinal From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
      'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) ' +
      'inner join convenios c on (c.sContrato = r.sContrato and c.sIdConvenio = r.sIdConvenio) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno')
  else
    QryReporteDiario.SQL.Add('Select r.*, o.sDescripcionCorta, o.sIdFolio, o.mDescripcion, o.sIdPlataforma, p.sDescripcion as Plataforma, o.lMostrarAvanceProgramado, o.sOficioAutorizacion, ' +
      'c.dFechaInicio, c.dFechaFinal From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) ' +
      'inner join convenios c on (c.sContrato = r.sContrato and c.sIdConvenio = r.sIdConvenio) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;

  QryBuscar := tZReadOnlyQuery.Create(tOrigen);
  QryBuscar.Connection := connection.zconnection;
  QryBuscarAux := tZReadOnlyQuery.Create(tOrigen);
  QryBuscarAux.Connection := connection.zconnection;
  if lCheckReporte() then
  begin
      // Primero metemos los materiales del c13 y c17 ....     soad -> imprime descipcion materiales
    QryBuscar.Active := False;
    QryBuscar.SQL.Clear;
    if QryConfiguracion.FieldValues['sImpresionPaquetes'] = 'Segun Contrato' then
      QryBuscar.SQL.Add('Select a2.sWbsAnterior, b.sWbs, b.sIdMaterial as sNumeroActividad, b.sDescripcion as mDescripcion, sum(b.dCantidad) as dCantidad, 0 as dAvance, ' +
        'a2.sMedida, a2.dCantidadAnexo as dCantidadAnexo, 0 as dCantidadAnterior, 0 as dAvanceAnterior, 0 as dCantidadActual, 0 as dAvanceActual From bitacorademateriales b ' +
        'inner join bitacoradeactividades ba on (b.sContrato = ba.sContrato and b.dIdFecha = ba.dIdFecha and b.iIdDiario = ba.iIdDiario and ba.sNumeroOrden = :Orden) ' +
        'INNER JOIN actividadesxanexo a2 ON (b.sContrato = a2.sContrato And b.sWbs = a2.sWbs And b.sIdMaterial = a2.sNumeroActividad And a2.sIdConvenio = :Convenio And a2.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha Group By b.sWbs, b.sIdMaterial Order By a2.iItemOrden ')
    else
      QryBuscar.SQL.Add('Select a2.sIdFase as sWbsAnterior, b.sWbs, b.sIdMaterial as sNumeroActividad, b.sDescripcion as mDescripcion, sum(b.dCantidad) as dCantidad, 0 as dAvance, ' +
        'a2.sMedida, a2.dCantidadAnexo as dCantidadAnexo, 0 as dCantidadAnterior, 0 as dAvanceAnterior, 0 as dCantidadActual, 0 as dAvanceActual From bitacorademateriales b ' +
        'inner join bitacoradeactividades ba on (b.sContrato = ba.sContrato and b.dIdFecha = ba.dIdFecha and b.iIdDiario = ba.iIdDiario and ba.sNumeroOrden = :Orden) ' +
        'INNER JOIN actividadesxanexo a2 ON (b.sContrato = a2.sContrato And b.sWbs = a2.sWbs And b.sIdMaterial = a2.sNumeroActividad And a2.sIdConvenio = :Convenio And a2.sTipoActividad = "Actividad") ' +
        'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha  Group By a2.sIdFase, b.sWbs, b.sIdMaterial Order By a2.sIdFase, a2.iItemOrden ');
    QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
    QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
    QryBuscar.Params.ParamByName('Orden').DataType := ftString;
    QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscar.Open;

    if QryBuscar.RecordCount > 0 then
    begin
      QryBuscar.First;
      sPaquete := '';
      while not QryBuscar.Eof do
      begin
              // Aqui se corrige ...
        if QryConfiguracion.FieldValues['sImpresionPaquetes'] = 'Segun Contrato' then
        begin
          if sPaquete <> QryBuscar.FieldValues['sWbsAnterior'] then
          begin
            sPaquete := QryBuscar.FieldValues['sWbsAnterior'];
            sBkPaquete := sPaquete;
            lEncontrado := False;
            while not lEncontrado and (sBkPaquete <> '') do
            begin
              QryBuscarAux.Active := False;
              QryBuscarAux.SQL.Clear;
              QryBuscarAux.SQL.Add('Select mDescripcion, sWbs, sWbsAnterior From actividadesxanexo ' +
                'Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :Actividad And sTipoActividad <> "Actividad" ');
              QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
              QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
              QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
              QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
              QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
              QryBuscarAux.Params.ParamByName('Actividad').Value := sBkPaquete;
              QryBuscarAux.Open;
              if QryBuscarAux.RecordCount > 0 then
              begin
                if Pos(QryBuscarAux.FieldValues['sWbs'], sListPaquetes) = 0 then
                begin
                  sListPaquetes := sListPaquetes + QryBuscarAux.FieldValues['sWbs'] + '|';
                  lEncontrado := True;
                  if (QryBuscar.FieldValues['sMedida'] <> 'ACTIVIDAD') and (QryBuscar.FieldValues['sMedida'] <> 'ACTIV') and (QryBuscar.FieldValues['sMedida'] <> 'Actividad') and (QryConfiguracionOrden.FieldValues['sTipoImpresionActividad'] = 'No') then
                  begin
                    mBitacora1.Append;
                    mBitacora1.FieldValues['sTipo'] := 'Paquete';
                    mBitacora1.FieldValues['sContrato'] := sParamContrato;
                    mBitacora1.FieldValues['sPaquete'] := QryBuscarAux.FieldValues['sWbs'];
                    mBitacora1.FieldValues['sNumeroActividad'] := '';
                    mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['mDescripcion'];
                    mBitacora1.FieldValues['sMedida'] := '';
                    mBitacora1.FieldValues['dCantidadAnexo'] := 0;
                    mBitacora1.FieldValues['dCantidad'] := 0;
                    mBitacora1.FieldValues['dAvance'] := 0;
                    mBitacora1.FieldValues['iFase'] := 0;
                    mBitacora1.Post;
                  end;
                end
                else
                  lEncontrado := False;
                if QryBuscarAux.fieldByName('sWbsAnterior').AsString = 'A' then
                  sBkPaquete := ''
                else
                  sBkPaquete := QryBuscarAux.fieldByName('sWbsAnterior').AsString;
              end
              else
                sBkPaquete := '';
            end
          end
        end
        else
        begin
                  // Aqui viene la forma avanzada ....
          sPaquete := QryBuscar.FieldValues['sWbsAnterior'];
          QryBuscarAux.Active := False;
          QryBuscarAux.SQL.Clear;
          QryBuscarAux.SQL.Add('Select sDescripcion From fasesxproyecto Where sIdFase = :Fase');
          QryBuscarAux.Params.ParamByName('Fase').DataType := ftString;
          QryBuscarAux.Params.ParamByName('Fase').Value := sPaquete;
          QryBuscarAux.Open;
          if QryBuscarAux.RecordCount > 0 then
            sBkPaquete := QryBuscarAux.FieldValues['sDescripcion']
          else
            sBkPaquete := 'ASIGNE TIPO DE FASE A LOS CONCEPTOS DE ANEXO REPORTADAS EN LA BITACORA DE MATERIALES.';

          if Pos(sBkPaquete, sListPaquetes) = 0 then
          begin
            sListPaquetes := sListPaquetes + sBkPaquete + '|';
            mBitacora1.Append;
            mBitacora1.FieldValues['sTipo'] := 'Paquete';
            mBitacora1.FieldValues['sContrato'] := sParamContrato;
            mBitacora1.FieldValues['sPaquete'] := sPaquete;
            mBitacora1.FieldValues['sNumeroActividad'] := '';
            mBitacora1.FieldValues['mDescripcion'] := sBkPaquete;
            mBitacora1.FieldValues['sMedida'] := '';
            mBitacora1.FieldValues['dCantidadAnexo'] := 0;
            mBitacora1.FieldValues['dCantidad'] := 0;
            mBitacora1.FieldValues['dAvance'] := 0;
            mBitacora1.FieldValues['iFase'] := 0;
            mBitacora1.Post;
          end;
        end;

        mBitacora1.Append;
        mBitacora1.FieldValues['sTipo'] := 'Partida';
        mBitacora1.FieldValues['sContrato'] := sParamContrato;
        mBitacora1.FieldValues['sPaquete'] := QryBuscar.FieldValues['sWbs'];
        mBitacora1.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['sNumeroActividad'];
        mBitacora1.FieldValues['sActividadAnterior'] := QryBuscar.FieldValues['sWbsAnterior'];
        mBitacora1.FieldValues['mDescripcion'] := QryBuscar.FieldValues['mDescripcion'];
        mBitacora1.FieldValues['sMedida'] := QryBuscar.FieldValues['sMedida'];
        mBitacora1.FieldValues['dCantidadAnexo'] := QryBuscar.FieldValues['dCantidadAnexo'];
        mBitacora1.FieldValues['dCantidad'] := QryBuscar.FieldValues['dCantidad'];

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select sum(b.dCantidad) as dInstalado from bitacorademateriales b ' +
          'inner join bitacoradeactividades ba on (b.sContrato = ba.sContrato and b.dIdFecha = ba.dIdFecha and b.iIdDiario = ba.iIdDiario and ba.sNumeroOrden = :Orden) ' +
          'where b.sContrato = :Contrato and b.dIdFecha < :fecha And b.sWbs = :Wbs And b.sIdMaterial = :Actividad Group By b.sWbs, b.sIdMaterial');
        QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
        QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
        QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
        QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
        QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;

        if QryAcumulados.RecordCount > 0 then
          mBitacora1.FieldValues['dCantidadAnterior'] := QryAcumulados.FieldValues['dInstalado']
        else
          mBitacora1.FieldValues['dCantidadAnterior'] := 0;
        mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
        mBitacora1.FieldValues['dAvanceAnterior'] := 0;
        mBitacora1.FieldValues['dAvance'] := 0;
        mBitacora1.FieldValues['dAvanceActual'] := 0;
        mBitacora1.FieldValues['iFase'] := 0;
        mBitacora1.Post;

        QryBuscar.Next
      end
    end;

   {I N I C I A  C O N S U L T A  ...}
   // Ahora se meten las demas partidas .....
    if QryConfiguracion.FieldValues['sTipoPartida'] = 'Todas' then
    begin
        QryBuscar.Active := False;
        QryBuscar.SQL.Clear;
        if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
           {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
           vitidadesxorden con las actividadesxanexon con sWbsContrato}
           QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad,  ' + sHistorialPartidas + 'b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, ' +
                              'a.sMedida, a.dCantidad as dCantidadAnexo, b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
                              'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
                              'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                              'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And ' +
                              'a2.sNumeroActividad = a.sNumeroActividad And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
                              'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
                              'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ')
        else
           {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
           vitidadesxorden con las actividadesxanexon con sWbsContrato}
           QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad,  ' + sHistorialPartidas + 'b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, ' +
                              'a.sMedida, a.dCantidad as dCantidadAnexo, b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
                              'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs= a.sWbs And ' +
                              'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                              'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And ' +
                              'a2.sNumeroActividad = a.sNumeroActividad And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
                              'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
                              'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ');
           QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
           QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
           QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
           QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
           QryBuscar.Params.ParamByName('Orden').DataType := ftString;
           QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
           QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
           QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
           QryBuscar.Params.ParamByName('Turno').DataType := ftString;
           QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
           QryBuscar.Open;
        end
        else
        begin
            QryBuscar.Active := False;
            QryBuscar.SQL.Clear;
            if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
               {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
               vitidadesxorden con las actividadesxanexon con sWbsContrato}
               QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad,  ' + sHistorialPartidas + 'b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(b.dAvance) as dAvance, ' +
                                'a.sMedida, a.dCantidad as dCantidadAnexo, b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
                                'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
                                'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                                'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And ' +
                                'a2.sNumeroActividad = a.sNumeroActividad And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbs) ' +
                                'Where b.sContrato = :Contrato And b.sNumeroOrden =:Orden And b.dIdFecha = :Fecha And b.sIdTurno =:Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
                                'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ')
            else
               {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
               vitidadesxorden con las actividadesxanexon con sWbsContrato}
               QryBuscar.SQL.Add('Select a.sWbsAnterior, b.sWbs, b.sNumeroActividad,  ' + sHistorialPartidas + 'b.mDescripcion, b.dCantidad as dCantidad, sum(b.dAvance) as dAvance, ' +
                                'a.sMedida, a.dCantidad as dCantidadAnexo, ' +
                                'b.dCantidadAnterior, b.dAvanceAnterior, b.dCantidadActual, b.dAvanceActual From bitacoradeactividades b ' +
                                'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
                                'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                                'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And ' +
                                'a2.sNumeroActividad = a.sNumeroActividad And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
                                'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
                                'Group By b.sWbs, b.sNumeroActividad Order By a.iItemOrden ');
               QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
               QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
               QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
               QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
               QryBuscar.Params.ParamByName('Orden').DataType := ftString;
               QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
               QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
               QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
               QryBuscar.Params.ParamByName('Turno').DataType := ftString;
               QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
               QryBuscar.Open;
        end;

        if QryBuscar.RecordCount > 0 then
        begin
            QryBuscar.First;
            sPaquete := '';
            while not QryBuscar.Eof do
            begin
                //Implementamos algoritmo de paqueteoo..
                //Limpiamos el vector..
                for iPos := 1 to 10 do
                begin
                    ArrayPaquetes[iPos, 1] := '';
                    ArrayPaquetes[iPos, 2] := '';
                end;

                if MiWbs <> QryBuscar.FieldValues['sWbsAnterior'] then
                begin
                    MiWbs := QryBuscar.FieldValues['sWbsAnterior'];
                    NumPaq := 0;
                    //Determinamos los niveles..

                    for iPos := 1 to Nivel do
                    begin
                        //Empezamos buscando los paquetes..
                        Q_Paquetes.Active := False;
                        Q_Paquetes.SQL.Clear;
                        Q_Paquetes.SQL.Add('select sWbsAnterior, sNumeroActividad, mDescripcion from actividadesxorden where sContrato =:Contrato ' +
                          'and sIdConvenio =:Convenio and sNumeroOrden  =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
                        Q_Paquetes.ParamByName('Contrato').AsString := sParamContrato;
                        Q_Paquetes.ParamByName('Convenio').AsString := sParamConvenio;
                        Q_Paquetes.ParamByName('Orden').AsString := sParamOrden;
                        Q_Paquetes.ParamByName('Wbs').AsString := MiWbs;
                        Q_Paquetes.Open;

                        //Guardamos los niveles en Array..}
                        if Q_Paquetes.RecordCount > 0 then
                        begin
                            MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
                            ArrayPaquetes[iPos, 1] := Q_Paquetes.FieldValues['sNumeroActividad'];
                            ArrayPaquetes[iPos, 2] := Q_Paquetes.FieldValues['mDescripcion'];
                            Inc(NumPaq);
                        end;
                    end;
                    MiWbs := QryBuscar.FieldValues['sWbsAnterior'];
                end;

                //Ingresamos los paquetes del Array en orden al RxMemory Data.}
                if NumPaq > 0 then
                begin
                    while NumPaq > 0 do
                    begin
                        mBitacora1.Append;
                        mBitacora1.FieldValues['sContrato'] := sParamContrato;
                        mBitacora1.FieldValues['iIdDiario'] := 0;
                        mBitacora1.FieldValues['sNumeroActividad'] := ''; //ArrayPaquetes[NumPaq, 1]
                        mBitacora1.FieldValues['mDescripcion'] := ArrayPaquetes[NumPaq, 2];
                        mBitacora1.FieldValues['sTipo'] := 'Paquete';
                        mBitacora1.FieldValues['sPaquete'] := ArrayPaquetes[NumPaq, 1];
                        mBitacora1.FieldValues['iConsec'] := mBitacora1.RecordCount + 1;
                        mBitacora1.Post;
                        DEC(NumPaq)
                    end;
                end;

               //Codigo comentado, codigo eliminado,,

               // C O M I E N Z A N  P A R T I D A S   R E P O R T A D A S . . .
               if (QryBuscar.FieldValues['sMedida'] <> 'ACTIVIDAD') and (QryBuscar.FieldValues['sMedida'] <> 'ACTIV') and (QryBuscar.FieldValues['sMedida'] <> 'Actividad') and (QryConfiguracionOrden.FieldValues['sTipoImpresionActividad'] = 'No') then
               begin
                   mBitacora1.Append;
                   mBitacora1.FieldValues['sTipo']              := 'Partida';
                   mBitacora1.FieldValues['sContrato']          := sParamContrato;
                   mBitacora1.FieldValues['sPaquete']           := QryBuscar.FieldValues['sWbs'];
                   mBitacora1.FieldValues['sNumeroActividad']   := QryBuscar.FieldValues['partida'];
                   mBitacora1.FieldValues['sActividadAnterior'] := QryBuscar.FieldValues['sWbsAnterior'];
                   mBitacora1.FieldValues['mDescripcion']       := QryBuscar.FieldValues['mDescripcion'];
                   mBitacora1.FieldValues['sMedida']            := QryBuscar.FieldValues['sMedida'];
                   mBitacora1.FieldValues['dCantidadAnexo']     := QryBuscar.FieldValues['dCantidadAnexo'];
                   mBitacora1.FieldValues['dCantidad']          := QryBuscar.FieldValues['dCantidad'];
                   mBitacora1.FieldValues['dAvance']            := QryBuscar.FieldValues['dAvance'];

                  //if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
                  //begin

                  //Obtenemos el volumen Reportado...}
                  QryAcumulados.Active := False;
                  QryAcumulados.SQL.Clear;
                  QryAcumulados.SQL.Add('Select sum(dCantidad) as dInstalado from bitacoradeactividades where sContrato = :Contrato and ' +
                    'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
                  QryAcumulados.Params.ParamByName('contrato').DataType  := ftString;
                  QryAcumulados.Params.ParamByName('contrato').Value     := sParamContrato;
                  QryAcumulados.Params.ParamByName('Fecha').DataType     := ftDate;
                  QryAcumulados.Params.ParamByName('Fecha').Value        := dParamFecha;
                  QryAcumulados.Params.ParamByName('Orden').DataType     := ftString;
                  QryAcumulados.Params.ParamByName('Orden').Value        := sParamOrden;
                  QryAcumulados.Params.ParamByName('Wbs').DataType       := ftString;
                  QryAcumulados.Params.ParamByName('Wbs').Value          := QryBuscar.FieldValues['sWbs'];
                  QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                  QryAcumulados.Params.ParamByName('Actividad').Value    := QryBuscar.FieldValues['sNumeroActividad'];
                  QryAcumulados.Open;

                  if QryAcumulados.RecordCount > 0 then
                     mBitacora1.FieldValues['dCantidadAnterior'] := QryAcumulados.FieldValues['dInstalado']
                  else
                     mBitacora1.FieldValues['dCantidadAnterior'] := 0;

                  //Obtenemos el Avance Reportado...}
                  QryAcumulados.Active := False;
                  QryAcumulados.SQL.Clear;
                  QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradeactividades where sContrato = :Contrato ' +
                    'and dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
                  QryAcumulados.Params.ParamByName('contrato').DataType  := ftString;
                  QryAcumulados.Params.ParamByName('contrato').Value     := sParamContrato;
                  QryAcumulados.Params.ParamByName('Fecha').DataType     := ftDate;
                  QryAcumulados.Params.ParamByName('Fecha').Value        := dParamFecha;
                  QryAcumulados.Params.ParamByName('Orden').DataType     := ftString;
                  QryAcumulados.Params.ParamByName('Orden').Value        := sParamOrden;
                  QryAcumulados.Params.ParamByName('Wbs').DataType       := ftString;
                  QryAcumulados.Params.ParamByName('Wbs').Value          := QryBuscar.FieldValues['sWbs'];
                  QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                  QryAcumulados.Params.ParamByName('Actividad').Value    := QryBuscar.FieldValues['sNumeroActividad'];
                  QryAcumulados.Open;

                  if QryAcumulados.RecordCount > 0 then
                     mBitacora1.FieldValues['dAvanceAnterior'] := QryAcumulados.FieldValues['dAvance']
                  else
                     mBitacora1.FieldValues['dAvanceAnterior'] := 0;

                   //Ahora consultamos por turnos los avances y cantidades obtenidas   iv@n diavaz abril 2012
                  QryBuscarTurnos.Active := False;
                  QryBuscarTurnos.SQL.Clear;
                  QryBuscarTurnos.SQL.Add('select sIdTurno from turnos where sContrato =:Contrato and sIdTurno <=:Turno order by sIdTurno ');
                  QryBuscarTurnos.ParamByName('Contrato').AsString := sParamContrato;
                  QryBuscarTurnos.ParamByName('Turno').AsString    := sParamTurno;
                  QryBuscarTurnos.Open;

                  //Inicia el acumulado por turnos..
                  while not QryBuscarTurnos.Eof do
                  begin
                      //Cantidades instaladas del turno
                      QryAcumulados.Active := False;
                      QryAcumulados.SQL.Clear;
                      QryAcumulados.SQL.Add('Select sum(dCantidad) as dInstalado from bitacoradeactividades where sContrato = :Contrato and ' +
                        'dIdFecha = :fecha And sNumeroOrden = :Orden and sIdTurno <:Turno And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
                      QryAcumulados.Params.ParamByName('contrato').DataType  := ftString;
                      QryAcumulados.Params.ParamByName('contrato').Value     := sParamContrato;
                      QryAcumulados.Params.ParamByName('Fecha').DataType     := ftDate;
                      QryAcumulados.Params.ParamByName('Fecha').Value        := dParamFecha;
                      QryAcumulados.Params.ParamByName('Orden').DataType     := ftString;
                      QryAcumulados.Params.ParamByName('Orden').Value        := sParamOrden;
                      QryAcumulados.Params.ParamByName('Turno').DataType     := ftString;
                      QryAcumulados.Params.ParamByName('Turno').Value        := QryBuscarTurnos.FieldValues['sIdTurno'];
                      QryAcumulados.Params.ParamByName('Wbs').DataType       := ftString;
                      QryAcumulados.Params.ParamByName('Wbs').Value          := QryBuscar.FieldValues['sWbs'];
                      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                      QryAcumulados.Params.ParamByName('Actividad').Value    := QryBuscar.FieldValues['sNumeroActividad'];
                      QryAcumulados.Open;

                      if QryAcumulados.RecordCount > 0 then
                         mBitacora1.FieldValues['dCantidadAnterior'] := mBitacora1.FieldValues['dCantidadAnterior'] + QryAcumulados.FieldValues['dInstalado'];

                      //Ahora los avances del turno
                      QryAcumulados.Active := False;
                      QryAcumulados.SQL.Clear;
                      QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradeactividades where sContrato = :Contrato and ' +
                        'dIdFecha = :fecha And sNumeroOrden = :Orden and sIdTurno <:Turno And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
                      QryAcumulados.Params.ParamByName('contrato').DataType  := ftString;
                      QryAcumulados.Params.ParamByName('contrato').Value     := sParamContrato;
                      QryAcumulados.Params.ParamByName('Fecha').DataType     := ftDate;
                      QryAcumulados.Params.ParamByName('Fecha').Value        := dParamFecha;
                      QryAcumulados.Params.ParamByName('Orden').DataType     := ftString;
                      QryAcumulados.Params.ParamByName('Orden').Value        := sParamOrden;
                      QryAcumulados.Params.ParamByName('Turno').DataType     := ftString;
                      QryAcumulados.Params.ParamByName('Turno').Value        := QryBuscarTurnos.FieldValues['sIdTurno'];
                      QryAcumulados.Params.ParamByName('Wbs').DataType       := ftString;
                      QryAcumulados.Params.ParamByName('Wbs').Value          := QryBuscar.FieldValues['sWbs'];
                      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                      QryAcumulados.Params.ParamByName('Actividad').Value    := QryBuscar.FieldValues['sNumeroActividad'];
                      QryAcumulados.Open;

                      if QryAcumulados.RecordCount > 0 then
                         mBitacora1.FieldValues['dAvanceAnterior'] := mBitacora1.FieldValues['dAvanceAnterior'] + QryAcumulados.FieldValues['dAvance'];

                      QryBuscarTurnos.Next;
                  end;

                  mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
                  if mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'] > 100 then
                     mBitacora1.FieldValues['dAvanceActual'] := 100
                  else
                     mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
                  //          end
                  //          else
                  //          begin
                  //            mBitacora1.FieldValues['dCantidadAnterior'] := QryBuscar.FieldValues['dCantidadAnterior'];
                  //            mBitacora1.FieldValues['dAvanceAnterior'] := QryBuscar.FieldValues['dAvanceAnterior'];
                  //            mBitacora1.FieldValues['dCantidad'] := QryBuscar.FieldValues['dCantidadActual'];
                  //            mBitacora1.FieldValues['dAvance'] := QryBuscar.FieldValues['dAvanceActual'];
                  //            mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
                  //            mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
                  //          end;
                  mBitacora1.FieldValues['iFase'] := 0;
                  mBitacora1.Post;
              end;

              // F A S E S  D E   L A S  A C T I V I D A D E S . . .
              if QryConfiguracion.FieldValues['sTipoPartida'] = 'Todas' then
              begin
                  // Aqui se inserta el detalle de movimientos de la partida ...
                  QryBuscarAux.Active := False;
                  QryBuscarAux.SQL.Clear; {10/marzo/2012 : adal, sWbs a la tabla alcance}
                  QryBuscarAux.SQL.Add('Select b.dCantidad, b.dAvance, b.iFase, b.sReferencia, a.sdescripcion, b.dcantidadanterior, b.davanceanterior, b.dcantidadactual, b.davanceactual From bitacoradealcances b ' +
                    ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroOrden=b.sNumeroOrden and b.sWbs=ao.sWbs and b.sNumeroActividad=ao.sNumeroActividad )   ' +
                    'INNER JOIN alcancesxactividad a ON (ao.sContrato = a.sContrato And ao.sNumeroActividad = a.sNumeroActividad and ao.sWbsContrato=a.sWbs  And b.iFase = a.iFase ) ' +
                    'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad and ao.sIdConvenio=:convenio  Order By b.iFase');
                  QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
                  QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
                  QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
                  QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
                  QryBuscarAux.Params.ParamByName('turno').DataType := ftString;
                  QryBuscarAux.Params.ParamByName('turno').Value := sParamTurno;
                  QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
                  QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
                  QryBuscarAux.Params.ParamByName('Wbs').DataType := ftString;
                  QryBuscarAux.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
                  QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
                  QryBuscarAux.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
                  QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
                  QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
                  QryBuscarAux.Open;

                  if QryBuscarAux.RecordCount > 0 then
                  while not QryBuscarAux.Eof do
                  begin
                      mBitacora1.Append;
                      mBitacora1.FieldValues['sTipo'] := 'Alcance';
                      mBitacora1.FieldValues['sContrato'] := sParamContrato;
                      mBitacora1.FieldValues['sPaquete'] := QryBuscar.FieldValues['sWbs'];
                      mBitacora1.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['partida'];
                      mBitacora1.FieldValues['sActividadAnterior'] := QryBuscar.FieldValues['sWbsAnterior'];

                      if Trim(QryBuscarAux.fieldByName('sReferencia').AsString) <> '' then
                        mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'] + ' [REFERENCIA: ' + QryBuscarAux.FieldValues['sReferencia'] + ']'
                      else
                        mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'];
                      mBitacora1.FieldValues['sMedida'] := '';
                      mBitacora1.FieldValues['dCantidadAnexo'] := 0;
                      mBitacora1.FieldValues['dCantidad'] := QryBuscarAux.FieldValues['dCantidad'];
                      mBitacora1.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvance'];
                      mBitacora1.FieldValues['iFase'] := QryBuscarAux.FieldValues['iFase'];

                      if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
                      begin
                          QryAcumulados.Active := False;
                          QryAcumulados.SQL.Clear;
                          QryAcumulados.SQL.Add('Select sum(dCantidad) as dInstalado from bitacoradealcances where sContrato = :Contrato and ' +
                            'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase Group By sWbs, sNumeroActividad');
                          QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
                          QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
                          QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
                          QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
                          QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
                          QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
                          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
                          QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
                          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                          QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
                          QryAcumulados.Params.ParamByName('Fase').DataType := ftInteger;
                          QryAcumulados.Params.ParamByName('Fase').Value := mBitacora1.FieldValues['iFase'];
                          QryAcumulados.Open;
                          if QryAcumulados.RecordCount > 0 then
                            mBitacora1.FieldValues['dCantidadAnterior'] := QryAcumulados.FieldValues['dInstalado']
                          else
                            mBitacora1.FieldValues['dCantidadAnterior'] := 0;

                          QryAcumulados.Active := False;
                          QryAcumulados.SQL.Clear;
                          QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradealcances where sContrato = :Contrato and ' +
                            'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase ' +
                            'Group By sWbs, sNumeroActividad');
                          QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
                          QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
                          QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
                          QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
                          QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
                          QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
                          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
                          QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
                          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
                          QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
                          QryAcumulados.Params.ParamByName('Fase').DataType := ftInteger;
                          QryAcumulados.Params.ParamByName('Fase').Value := mBitacora1.FieldValues['iFase'];
                          QryAcumulados.Open;
                          if QryAcumulados.RecordCount > 0 then
                            mBitacora1.FieldValues['dAvanceAnterior'] := QryAcumulados.FieldValues['dAvance']
                          else
                            mBitacora1.FieldValues['dAvanceAnterior'] := 0;

                          mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
                          mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
                      end
                      else
                      begin
                          mBitacora1.FieldValues['dCantidadAnterior'] := QryBuscarAux.FieldValues['dCantidadAnterior'];
                          mBitacora1.FieldValues['dAvanceAnterior'] := QryBuscarAux.FieldValues['dAvanceAnterior'];
                          mBitacora1.FieldValues['dCantidad'] := QryBuscarAux.FieldValues['dCantidadActual'];
                          mBitacora1.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvanceActual'];
                          mBitacora1.FieldValues['dCantidadActual'] := mBitacora1.FieldValues['dCantidadAnterior'] + mBitacora1.FieldValues['dCantidad'];
                          mBitacora1.FieldValues['dAvanceActual'] := mBitacora1.FieldValues['dAvanceAnterior'] + mBitacora1.FieldValues['dAvance'];
                      end;
                      mBitacora1.Post;
                      QryBuscarAux.Next
                  end;
              end;
             QryBuscar.Next
         end
     end;

    { A H O R A  L A S  D E M A S  P A R T I D A S ... }
    // Ahora se imprimen todas las actividades reportadas en tarifa diaria ....
    if QryConfiguracion.FieldValues['sTipoPartida'] = 'Todas' then
    begin
      QryBuscar.Active := False;
      QryBuscar.SQL.Clear;
      if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
  {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
      vitidadesxorden con las actividadesxanexon con sWbsContrato}
        QryBuscar.SQL.Add('Select a.mDescripcion as mDescripActividad, b.iIdDiario, b.sHoraInicio, b.sHoraFinal, a.sWbsAnterior, b.sWbs, b.sNumeroActividad, ' + sHistorialPartidas + 'b.mDescripcion, b.dAvance, ' +
          'b.dAvanceAnterior, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio ' + sImprimeComoActividad +
          'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And a2.sNumeroActividad = a.sNumeroActividad  ' +
          'And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
          'Order By a.iItemOrden ')
      else
  {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
      vitidadesxorden con las actividadesxanexon con sWbsContrato}
        QryBuscar.SQL.Add('Select a.mDescripcion as mDescripActividad, b.iIdDiario, b.sHoraInicio, b.sHoraFinal, a.sWbsAnterior, b.sWbs, b.sNumeroActividad, ' + sHistorialPartidas + 'b.mDescripcion, b.dAvance, ' +
          'b.dAvanceAnterior, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio ' + sImprimeComoActividad +
          'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And a2.sNumeroActividad = a.sNumeroActividad  ' +
          'And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
          'Order By a.iItemOrden ');
      QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscar.Params.ParamByName('Orden').DataType := ftString;
      QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscar.Params.ParamByName('Turno').DataType := ftString;
      QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
      QryBuscar.Open;
    end
    else
    begin
      QryBuscar.Active := False;
      QryBuscar.SQL.Clear;
      if QryConfiguracion.FieldValues['lImprimeExtraordinario'] = 'Si' then
  {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
      vitidadesxorden con las actividadesxanexon con sWbsContrato}
        QryBuscar.SQL.Add('Select a.mDescripcion as mDescripActividad, b.iIdDiario, b.sHoraInicio, b.sHoraFinal, a.sWbsAnterior, b.sWbs, b.sNumeroActividad, ' + sHistorialPartidas + 'b.mDescripcion, b.dAvance, ' +
          'b.dAvanceAnterior, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio ' + sImprimeComoActividad +
          'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And a2.sNumeroActividad = a.sNumeroActividad  ' +
          'And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden =:Orden And b.dIdFecha = :Fecha And b.sIdTurno =:Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
          'Order By a.iItemOrden ')
      else
  {01/03/2012 :adal2404, modificar query ligar la bitacora con las actividadexorden y las ac
      vitidadesxorden con las actividadesxanexon con sWbsContrato}
        QryBuscar.SQL.Add('Select a.mDescripcion as mDescripActividad, b.iIdDiario, b.sHoraInicio, b.shoraFinal, a.sWbsAnterior, b.sWbs, b.sNumeroActividad, ' + sHistorialPartidas + 'b.mDescripcion, b.dAvance, ' +
          'b.dAvanceAnterior, b.dAvanceActual From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
          'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio ' + sImprimeComoActividad +
          'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And a2.sNumeroActividad = a.sNumeroActividad  ' +
          'And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno and sIdTipoMovimiento = "E" and b.lImprime = "Si" ' +
          'Order By a.iItemOrden ');
      QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
      QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
      QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
      QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryBuscar.Params.ParamByName('Orden').DataType := ftString;
      QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
      QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
      QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
      QryBuscar.Params.ParamByName('Turno').DataType := ftString;
      QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
      QryBuscar.Open;
    end;
    // Aqui se imprime la lista de materiales C17 Y C13 .........


    // Termino de Imprimir .........
    if QryBuscar.RecordCount > 0 then
    begin
      QryBuscar.First;
      sPaquete := '';
      sActividad := '';
      while not QryBuscar.Eof do
      begin
          // de todas las actividades que reportadas en el dia se realiza lo siguiente:
          // 1. se imprime el encabezado, el paquete alque pertenece la actividad.
          // 2. se imprimen los datos principales de la actividad.
          // 3. se imprimen los detalles de movimientos de la actividad
      {Implementamos algoritmo de paqueteoo..}

      {Limpiamos el vector..}
        for iPos := 1 to 10 do
        begin
          ArrayPaquetes[iPos, 1] := '';
          ArrayPaquetes[iPos, 2] := '';
        end;

        if MiWbs <> QryBuscar.FieldValues['sWbsAnterior'] then
        begin
          MiWbs := QryBuscar.FieldValues['sWbsAnterior'];
          NumPaq := 0;
     {Determinamos los niveles..}
          for iPos := 1 to Nivel do
          begin
              {Empezamos buscando los paquetes..}
            Q_Paquetes.Active := False;
            Q_Paquetes.SQL.Clear;
            Q_Paquetes.SQL.Add('select sWbsAnterior, sNumeroActividad, mDescripcion from actividadesxorden where sContrato =:Contrato ' +
              'and sIdConvenio =:Convenio and sNumeroOrden  =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
            Q_Paquetes.ParamByName('Contrato').AsString := sParamContrato;
            Q_Paquetes.ParamByName('Convenio').AsString := sParamConvenio;
            Q_Paquetes.ParamByName('Orden').AsString := sParamOrden;
            Q_Paquetes.ParamByName('Wbs').AsString := MiWbs;
            Q_Paquetes.Open;

              {Guardamos los niveles en Array..}
            if Q_Paquetes.RecordCount > 0 then
            begin
              MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
              ArrayPaquetes[iPos, 1] := Q_Paquetes.FieldValues['sNumeroActividad'];
              ArrayPaquetes[iPos, 2] := Q_Paquetes.FieldValues['mDescripcion'];
              Inc(NumPaq);
            end;
          end;
          MiWbs := QryBuscar.FieldValues['sWbsAnterior'];
        end;

      {Ingresamos los paquetes del Array en orden al RxMemory Data.}
        if NumPaq > 0 then
        begin
          while NumPaq > 0 do
          begin
            mBitacora1.Append;
            mBitacora1.FieldValues['sContrato'] := sParamContrato;
            mBitacora1.FieldValues['iIdDiario'] := 0;
            mBitacora1.FieldValues['sNumeroActividad'] := ''; //ArrayPaquetes[NumPaq, 1]
            mBitacora1.FieldValues['mDescripcion'] := ArrayPaquetes[NumPaq, 2];
            mBitacora1.FieldValues['sTipo'] := 'Paquete';
            mBitacora1.FieldValues['sPaquete'] := ArrayPaquetes[NumPaq, 1];
            //mBitacora1.FieldValues['lCancelada'] := QryBuscar.FieldValues['lCancelada'];
            mBitacora1.FieldValues['iConsec'] := mBitacora1.RecordCount + 1;
            mBitacora1.Post;
            DEC(NumPaq)
          end;
        end;

        //Cosigo comentado, codigo eliminado,

        { A C T I V I D A D E S ....}
        if (sActividad <> QryBuscar.FieldValues['sNumeroActividad']) and (QryConfiguracionOrden.FieldValues['bTipoAdmon'] = 'No') then //cotermar 2010.. soad.
        begin
            // se adiciona la actividad principal
          sActividad := QryBuscar.FieldValues['sNumeroActividad'];
          mBitacoraActividades.Append;
          mBitacoraActividades.FieldValues['sContrato'] := sParamContrato;
          mBitacoraActividades.FieldValues['sTipo'] := 'Actividad';
          mBitacoraActividades.FieldValues['sHoraInicio'] := '';
          mBitacoraActividades.FieldValues['sHoraFinal'] := '';
          mBitacoraActividades.FieldValues['sPaquete'] := '';
          mBitacoraActividades.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['sNumeroActividad'];
          mBitacoraActividades.FieldValues['mDescripcion'] := QryBuscar.FieldValues['mDescripActividad'];
          mBitacoraActividades.FieldValues['dAvance'] := 0;
          mBitacoraActividades.Post;
        end;

        mBitacoraActividades.Append;
        mBitacoraActividades.FieldValues['sContrato'] := sParamContrato;
        mBitacoraActividades.FieldValues['sTipo'] := 'Detalle';
        mBitacoraActividades.FieldValues['sHoraInicio'] := QryBuscar.FieldValues['sHoraInicio'];
        mBitacoraActividades.FieldValues['sHoraFinal'] := QryBuscar.FieldValues['sHoraFinal'];
        mBitacoraActividades.FieldValues['sPaquete'] := '';
        if QryConfiguracionOrden.FieldValues['bTipoAdmon'] = 'No' then
          mBitacoraActividades.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['sHoraInicio'] + '-' + QryBuscar.FieldValues['sHoraFinal']
        else
          mBitacoraActividades.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['sNumeroActividad'];
        mBitacoraActividades.FieldValues['mDescripcion'] := QryBuscar.FieldValues['mDescripcion'];
        mBitacoraActividades.FieldValues['dAvance'] := QryBuscar.FieldValues['dAvance'];

        dAvance := 0;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradeactividades where sContrato = :Contrato and sNumeroOrden = :Orden ' + Linea +
          'and dIdFecha < :fecha And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sNumeroActividad');
        QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
        QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
        QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
        if Linea <> '' then
        begin
          QryAcumulados.Params.ParamByName('FechaConvenio').DataType := ftDate;
          QryAcumulados.Params.ParamByName('FechaConvenio').Value := Q_Convenio.FieldValues['dFecha'];
        end;
        QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
        QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;
        if QryAcumulados.RecordCount > 0 then
          dAvance := QryAcumulados.FieldValues['dAvance']
        else
          dAvance := 0;

          // Avance del dia hasta antes del idDiario ...

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradeactividades where sContrato = :Contrato ' + Linea +
          'and dIdFecha = :fecha And iIdDiario < :Diario And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sNumeroActividad');
        QryAcumulados.Params.ParamByName('contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('contrato').Value := sParamContrato;
        QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
        QryAcumulados.Params.ParamByName('Fecha').Value := dParamFecha;
        if Linea <> '' then
        begin
          QryAcumulados.Params.ParamByName('FechaConvenio').DataType := ftDate;
          QryAcumulados.Params.ParamByName('FechaConvenio').Value := Q_Convenio.FieldValues['dFecha'];
        end;
        QryAcumulados.Params.ParamByName('Diario').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Diario').Value := QryBuscar.FieldValues['iIdDiario'];
        QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
        QryAcumulados.Params.ParamByName('Orden').Value := sParamOrden;
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').Value := QryBuscar.FieldValues['sWbs'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryBuscar.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;
        if QryAcumulados.RecordCount > 0 then
          dAvance := dAvance + QryAcumulados.FieldValues['dAvance'];

        mBitacoraActividades.FieldValues['dAvanceAnterior'] := dAvance;

        {Avance Tipo Administracion..}
        if Linea <> '' then
        begin
          if QryAcumulados.RecordCount > 0 then
            mBitacoraActividades.FieldValues['dAvanceAnterior'] := QryAcumulados.FieldValues['dAvance'] + Q_Programado.FieldValues['dAvancePonderadoGlobal']
          else
            mBitacoraActividades.FieldValues['dAvanceAnterior'] := dAvance + Q_Programado.FieldValues['dAvancePonderadoGlobal'];
        end;

        {Continua.. }
        if mBitacoraActividades.FieldValues['dAvanceAnterior'] + mBitacoraActividades.FieldValues['dAvance'] > 100 then
          mBitacoraActividades.FieldValues['dAvanceActual'] := 100
        else
          mBitacoraActividades.FieldValues['dAvanceActual'] := mBitacoraActividades.FieldValues['dAvanceAnterior'] + mBitacoraActividades.FieldValues['dAvance'];

        mBitacoraActividades.Post;

        QryBuscar.Next
      end
    end;
  end
  else
  begin
      // Reporte Tipo Simple ....
    QryBuscar.Active := False;
    QryBuscar.SQL.Clear;
    QryBuscar.SQL.Add('Select b.sIsometrico, b.sWbs, b.sNumeroActividad, ' + sHistorialPartidas + 'b.mDescripcion, b.dAvance From bitacoradeactividades b ' +
      'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sWbs = a.sWbs And ' +
      'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
      'INNER JOIN actividadesxanexo a2 ON (a2.sContrato = a.sContrato And a2.sNumeroActividad = a.sNumeroActividad  ' +
      'And a2.sIdConvenio = a.sIdConvenio And a2.sTipoActividad = "Actividad" and a2.sWbs=a.sWbsContrato) ' +
      'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno ' +
      'Order By b.sIsometrico, a.iItemOrden ');
    QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
    QryBuscar.Params.ParamByName('Convenio').Value := sParamConvenio;
    QryBuscar.Params.ParamByName('Orden').DataType := ftString;
    QryBuscar.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscar.Params.ParamByName('Turno').DataType := ftString;
    QryBuscar.Params.ParamByName('Turno').Value := sParamTurno;
    QryBuscar.Open;

    sPaquete := '';
    while not QryBuscar.Eof do
    begin
      if sPaquete <> QryBuscar.FieldValues['sIsometrico'] then
      begin
        sPaquete := QryBuscar.FieldValues['sIsometrico'];
        mBitacora1.Append;
        mBitacora1.FieldValues['sTipo'] := 'Paquete';
        mBitacora1.FieldValues['sContrato'] := sParamContrato;
        mBitacora1.FieldValues['sPaquete'] := '';
        mBitacora1.FieldValues['sNumeroActividad'] := '';
        mBitacora1.FieldValues['mDescripcion'] := QryBuscar.FieldValues['sIsometrico'];
        mBitacora1.FieldValues['sMedida'] := '';
        mBitacora1.FieldValues['dCantidadAnexo'] := 0;
        mBitacora1.FieldValues['dCantidad'] := 0;
        mBitacora1.FieldValues['dAvance'] := 0;
        mBitacora1.FieldValues['iFase'] := 0;
        mBitacora1.Post;
      end;
      mBitacora1.Append;
      mBitacora1.FieldValues['sTipo'] := 'Partida';
      mBitacora1.FieldValues['sContrato'] := sParamContrato;
      mBitacora1.FieldValues['sPaquete'] := QryBuscar.FieldValues['sWbs'];
      mBitacora1.FieldValues['sNumeroActividad'] := QryBuscar.FieldValues['partida'];
      mBitacora1.FieldValues['sActividadAnterior'] := '';
      mBitacora1.FieldValues['mDescripcion'] := QryBuscar.FieldValues['mDescripcion'];
      mBitacora1.FieldValues['sMedida'] := '';
      mBitacora1.FieldValues['dCantidadAnexo'] := 0;
      mBitacora1.FieldValues['dCantidad'] := 0;
      mBitacora1.FieldValues['dAvance'] := QryBuscar.FieldValues['dAvance'];
      mBitacora1.Post;
      QryBuscar.Next;
    end;
  end;


  qryComentariosAdicionales.Active := False;
  qryComentariosAdicionales.SQL.Clear;
  qryComentariosAdicionales.SQL.Add('select b.sContrato, b.iIdDiario, b.mDescripcion from bitacoradeactividades b ' +
    'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
    'Where b.sContrato = :contrato and b.dIdFecha = :fecha and b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sIdTipoMovimiento=:Adicionales');
  qryComentariosAdicionales.Params.ParamByName('contrato').DataType := ftString;
  qryComentariosAdicionales.Params.ParamByName('contrato').Value := sParamContrato;
  qryComentariosAdicionales.Params.ParamByName('orden').DataType := ftString;
  qryComentariosAdicionales.Params.ParamByName('orden').Value := sParamOrden;
  qryComentariosAdicionales.Params.ParamByName('fecha').DataType := ftDate;
  qryComentariosAdicionales.Params.ParamByName('fecha').Value := dParamFecha;
  qryComentariosAdicionales.Params.ParamByName('Turno').DataType := ftString;
  qryComentariosAdicionales.Params.ParamByName('Turno').Value := sParamTurno;
  qryComentariosAdicionales.Params.ParamByName('Adicionales').DataType := ftString;
  if sReporteDiario = 'normal' then
    qryComentariosAdicionales.Params.ParamByName('Adicionales').Value := '_-_'
  else
    qryComentariosAdicionales.Params.ParamByName('Adicionales').Value := 'NI';
  qryComentariosAdicionales.Open;
   {Adal: Alteracion de codigo para detectar si la descripcion tiene una longitud
   mayor a 1200 caracteres, si es asi, se calcula la longitud total de la misma
   y se divide en bloques y se va agregando al memoryData, si no, se agrega
   directamente al MemoryData}

  dsBitacora3.DataSet := mBitacora3;
  with connection do
  begin
    QryBusca.Active := False;
    QryBusca.SQL.Clear;
    QryBusca.SQL.Add('select b.sContrato,b.iIdDiario,b.dIdFecha, b.mDescripcion, length(b.mDescripcion) as longi from bitacoradeactividades b ' +
      'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
      'Where b.sContrato = :contrato and b.dIdFecha = :fecha and b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sIdTipoMovimiento<>"NI" and b.sIdTipoMovimiento<>"R" and lImprime ="Si"');
    QryBusca.Params.ParamByName('contrato').DataType := ftString;
    QryBusca.Params.ParamByName('contrato').Value := sParamContrato;
    QryBusca.Params.ParamByName('orden').DataType := ftString;
    QryBusca.Params.ParamByName('orden').Value := sParamOrden;
    QryBusca.Params.ParamByName('fecha').DataType := ftDate;
    QryBusca.Params.ParamByName('fecha').Value := dParamFecha;
    QryBusca.Params.ParamByName('Turno').DataType := ftString;
    QryBusca.Params.ParamByName('Turno').Value := sParamTurno;
    QryBusca.Open;
    //soad -> Se inica asignacion de Id al los comentarios para que se impriman por separado..
    x := 1;
    while not QryBusca.Eof do
    begin
      mBitacora3.Append;
      mBitacora3.FieldValues['sContrato'] := QryBusca.FieldValues['sContrato'];
      mBitacora3.FieldValues['sIdComentario'] := IntToStr(x);
      mBitacora3.FieldValues['mDescripcion'] := QryBusca.FieldValues['mDescripcion'];
      mBitacora3.Post;
      x := x + 1;
      QryBusca.Next;
    end;
  end;


  TiempoMuerto.Active := False;
  TiempoMuerto.SQL.Clear;
  TiempoMuerto.SQL.Add('Select t.sNumeroOrden, t.sArea, t.sHoraInicio, t.sHoraFinal, t.dPersonal, t.dFrente, t.sTiempoMuerto, t.sJornada, t.mDescripcion, c.sDescripcion from jornadasdiarias t ' +
    'INNER JOIN tiposdemovimiento c ON (t.sContrato = c.sContrato And t.sIdTipoMovimiento = c.sIdTipoMovimiento) ' +
    'Where t.sContrato = :Contrato And t.dIdFecha = :Fecha And t.sNumeroOrden = :Orden ' +
    'And t.sIdTurno = :Turno And t.sTipo = "Tiempo Inactivo" Order By t.sHoraInicio ASC');
  TiempoMuerto.Params.ParamByName('Contrato').DataType := ftString;
  TiempoMuerto.Params.ParamByName('Contrato').Value := sParamContrato;
  TiempoMuerto.Params.ParamByName('Fecha').DataType := ftDate;
  TiempoMuerto.Params.ParamByName('Fecha').Value := dParamFecha;
  TiempoMuerto.Params.ParamByName('Orden').DataType := ftString;
  TiempoMuerto.Params.ParamByName('Orden').Value := sParamOrden;
  TiempoMuerto.Params.ParamByName('turno').DataType := ftString;
  TiempoMuerto.Params.ParamByName('turno').Value := sParamTurno;
  TiempoMuerto.Open;
  sJornadasSuspendidas := '00:00';

  while not TiempoMuerto.Eof do
  begin
      sJornadasSuspendidas := sfnSumaHoras(sJornadasSuspendidas, TiempoMuerto.FieldValues['sJornada']);
      TiempoMuerto.Next
  end;

  //Consultamos el personal y equipo afectado en Tiempo Inactivo Diavaz by ivan Jun 2012
  if QryConfiguracion.FieldValues['lImprimePersonalTM'] = 'Si' then
  begin
      //Vaciamos el RX
      if mTiempoPersonal.RecordCount > 0 then
         mTiempoPersonal.EmptyTable;

      //Primero consultamos las categorias de personal y equipo afectadas para el RX,
      TiempoMuertoPersonal.Active := False;
      TiempoMuertoPersonal.SQL.Clear;
      TiempoMuertoPersonal.SQL.Add('select tmp.sTipo, tmp.sIdPersonalEquipo, p.sDescripcion as personal, e.sDescripcion as equipo from tiempomuertopersonal tmp '+
                'left join personal p on (p.sContrato = tmp.sContrato and p.sIdPersonal = tmp.sIdPersonalEquipo) '+
                'left join equipos e on (e.sContrato = tmp.sContrato and e.sIdEquipo = tmp.sIdPersonalEquipo) '+
                'where tmp.sContrato =:Contrato and tmp.dIdFecha =:fecha and tmp.sNumeroOrden =:Orden and tmp.sIdTurno =:Turno '+
                'group by tmp.sTipo, tmp.sIdPersonalEquipo order by tmp.sTipo DESC, e.iItemOrden, p.iItemOrden');
      TiempoMuertoPersonal.ParamByName('Contrato').AsString := sParamContrato;
      TiempoMuertoPersonal.ParamByName('Fecha').AsDate      := dParamFecha;
      TiempoMuertoPersonal.ParamByName('Orden').AsString    := sParamOrden;
      TiempoMuertoPersonal.ParamByName('Turno').AsString    := sParamTurno;
      TiempoMuertoPersonal.Open;

      //Lenamos en el RX las categorias
      while not TiempoMuertoPersonal.Eof do
      begin
          mTiempoPersonal.Append;
          mTiempoPersonal.FieldValues['sContrato']         := global_contrato;
          mTiempoPersonal.FieldValues['sIdPersonalEquipo'] := TiempoMuertoPersonal.FieldValues['sIdPersonalEquipo'];
          mTiempoPersonal.FieldValues['sTipo']             := TiempoMuertoPersonal.FieldValues['sTipo'];
          if TiempoMuertoPersonal.FieldValues['sTipo'] = 'Personal' then
             mTiempoPersonal.FieldValues['Descripcion']    := TiempoMuertoPersonal.FieldValues['personal']
          else
             mTiempoPersonal.FieldValues['Descripcion']    := TiempoMuertoPersonal.FieldValues['equipo'];
          mTiempoPersonal.Post;
          TiempoMuertoPersonal.Next;
      end;

      //Ahora los horarios de Afectacion para el RX,
      TiempoMuertoPersonal.Active := False;
      TiempoMuertoPersonal.SQL.Clear;
      TiempoMuertoPersonal.SQL.Add('select j.sHoraInicio as Inicio, j.sHoraFinal as Final, j.sTiempoMuerto from tiempomuertopersonal tmp '+
                  'inner join jornadasdiarias j on (j.sContrato = tmp.sContrato and j.dIdFecha = tmp.dIdFecha and j.sNumeroOrden = tmp.sNumeroOrden '+
                  'and j.sIdTurno = tmp.sIdTurno and j.sHoraInicio = tmp.sHoraInicio and j.sTipo = "Tiempo Inactivo") '+
                  'where tmp.sContrato =:Contrato and tmp.dIdFecha =:Fecha and tmp.sNumeroOrden =:Orden and tmp.sIdTurno =:Turno '+
                  'group by tmp.sHoraInicio order by tmp.sHoraInicio');
      TiempoMuertoPersonal.ParamByName('Contrato').AsString := sParamContrato;
      TiempoMuertoPersonal.ParamByName('Fecha').AsDate      := dParamFecha;
      TiempoMuertoPersonal.ParamByName('Orden').AsString    := sParamOrden;
      TiempoMuertoPersonal.ParamByName('Turno').AsString    := sParamTurno;
      TiempoMuertoPersonal.Open;

      //Lenamos en el RX las categorias
      indice := 1;
      while not TiempoMuertoPersonal.Eof do
      begin
          mTiempoPersonal.First;
          while not mTiempoPersonal.Eof do
          begin
              mTiempoPersonal.Edit;
              mTiempoPersonal.FieldValues['inicio'+IntToStr(indice)]        := TiempoMuertoPersonal.FieldValues['inicio'];
              mTiempoPersonal.FieldValues['final'+IntToStr(indice)]         := TiempoMuertoPersonal.FieldValues['final'];
              mTiempoPersonal.FieldValues['sTiempoMuerto'+IntToStr(indice)] := TiempoMuertoPersonal.FieldValues['sTiempoMuerto'];
              mTiempoPersonal.Post;
              mTiempoPersonal.Next;
          end;
          inc(indice);
          TiempoMuertoPersonal.Next;
      end;

      //Ahora consultamos los Tiempos Muertos de las Categorias afectadas
      TiempoMuertoPersonal.Active := False;
      TiempoMuertoPersonal.SQL.Clear;
      TiempoMuertoPersonal.SQL.Add('select tmp.*, j.sHoraInicio as Inicio, j.sHoraFinal as Final, j.sTiempoMuerto, j.mDescripcion, p.sDescripcion as personal, e.sDescripcion as equipo from tiempomuertopersonal tmp '+
            'inner join jornadasdiarias j on (j.sContrato = tmp.sContrato and j.dIdFecha = tmp.dIdFecha and j.sNumeroOrden = tmp.sNumeroOrden '+
            'and j.sIdTurno = tmp.sIdTurno and j.sHoraInicio = tmp.sHoraInicio and j.sTipo = "Tiempo Inactivo") '+
            'left join personal p on (p.sContrato = tmp.sContrato and p.sIdPersonal = tmp.sIdPersonalEquipo) '+
            'left join equipos e on (e.sContrato = tmp.sContrato and e.sIdEquipo = tmp.sIdPersonalEquipo) '+
            'where tmp.sContrato =:Contrato and tmp.dIdFecha =:Fecha and tmp.sNumeroOrden =:Orden and tmp.sIdTurno =:Turno group by tmp.sHoraInicio, tmp.sIdPersonalEquipo '+
            'order by tmp.sHoraInicio, e.iItemOrden, p.iItemOrden');
      TiempoMuertoPersonal.Params.ParamByName('Contrato').DataType := ftString;
      TiempoMuertoPersonal.Params.ParamByName('Contrato').Value    := sParamContrato;
      TiempoMuertoPersonal.Params.ParamByName('Fecha').DataType    := ftDate;
      TiempoMuertoPersonal.Params.ParamByName('Fecha').Value       := dParamFecha;
      TiempoMuertoPersonal.Params.ParamByName('Orden').DataType    := ftString;
      TiempoMuertoPersonal.Params.ParamByName('Orden').Value       := sParamOrden;
      TiempoMuertoPersonal.Params.ParamByName('turno').DataType    := ftString;
      TiempoMuertoPersonal.Params.ParamByName('turno').Value       := sParamTurno;
      TiempoMuertoPersonal.Open;

      //Recorremos el RX las categorias
      cadena := '';
      indice := 0;
      while not TiempoMuertoPersonal.Eof do
      begin
          mTiempoPersonal.First;
          while not mTiempoPersonal.Eof do
          begin
              if cadena <> TiempoMuertoPersonal.FieldValues['sHoraInicio'] then
              begin
                  inc(indice);
                  cadena := TiempoMuertoPersonal.FieldValues['sHoraInicio'];
              end;
              if (TiempoMuertoPersonal.FieldValues['sTipo'] = mTiempoPersonal.FieldValues['sTipo']) and
                 (TiempoMuertoPersonal.FieldValues['sIdPersonalEquipo'] = mTiempoPersonal.FieldValues['sIdPersonalEquipo']) and
                 (cadena = TiempoMuertoPersonal.FieldValues['sHoraInicio']) then
              begin
                  mTiempoPersonal.Edit;
                  mTiempoPersonal.FieldValues['dCantidad'+IntToStr(indice)]     := TiempoMuertoPersonal.FieldValues['dCantidad'];
                  mTiempoPersonal.Post;
              end;
              mTiempoPersonal.Next;
          end;
          TiempoMuertoPersonal.Next;
      end;
  end;

  //Reprote Fotografico...
  QryReporteFotografico.Active := False;
  QryReporteFotografico.SQL.Clear;
  QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
    'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
  QryReporteFotografico.Params.ParamByName('contrato').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteFotografico.Params.ParamByName('Reporte').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('Reporte').Value := sParamReporte;
  QryReporteFotografico.Open;

  {Pernoctas de personal de administracion...}
  QryAdmon.Close;
  QryAdmon.Sql.Text := 'select b.sContrato, pc.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal from bitacoradepersonal b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal = "PE-A") ' +
    'inner join pernoctan pc on (pc.sIdPernocta = b.sIdPernocta) ' +
    'where a.sContrato = :contrato and b.lAplicaPernocta = "Si" and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden ' +
    'Group By p.sIdPersonal order by p.iItemOrden asc';
  QryAdmon.ParamByName('contrato').AsString := sParamContrato;
  QryAdmon.ParamByName('orden').AsString := sParamOrden;
  QryAdmon.ParamByName('fecha').AsDate := dParamFecha;
  QryAdmon.ParamByName('Turno').AsString := sParamTurno;
  QryAdmon.Open;

  //Primero el Id de la Embarcacion principal... OSA 2011 ivan,,
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :Fecha and dFechaFinal >=:Fecha order by dFechaInicio');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate := dParamFecha;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    Embarcacion := connection.QryBusca.FieldValues['sIdEmbarcacion']
  else
    messageDLG('No existe una Vigencia de Embarcacion Principal', mtInformation, [mbOk], 0);

  mPernocta.Open;
  mPernocta.EmptyTable;

  //Pernoctas - cotemar 2010... ivan
  QryPernoctas.Close;
  (*QryPernoctas.Sql.Text := 'select b.sContrato, c.sIdPernocta, p2.sDescripcion as sPernocta, Sum(b.dCantidad) as dCantidad, b.sTipoPernocta, c.sDescripcion as DescribePernocta from bitacoradepersonal b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal and p.lPernocta = "Si" and p.sIdTipoPersonal <> "PE-A") ' +
    'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
    'inner join cuentas c on (c.sIdCuenta = b.sTipoPernocta )' +
    'where a.sContrato = :contrato and b.lAplicaPernocta = "Si" and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden and b.sIdPernocta =:Barco ' +
    ' Group By b.sTipoPernocta order by b.sTipoPernocta asc';*)

  //Modificacion de Adal...
  QryPernoctas.Sql.Text := 'select b.sContrato, c.sIdPernocta, p2.sDescripcion as sPernocta, Sum(b.dCantidad) as dCantidad, b.sTipoPernocta, c.sDescripcion as DescribePernocta from bitacoradepersonal b ' +
				'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
				'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal and p.lPernocta = "Si" and p.sIdTipoPersonal <> "PE-A") ' +
				'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
				'inner join cuentas c on (c.sIdCuenta = b.sTipoPernocta )' +
				'where a.sContrato = :contrato and b.lAplicaPernocta = "Si" and p.lTotalizarPernocta ="Si" and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden and b.sIdPernocta =:Barco ' +
				' Group By b.sTipoPernocta order by b.sTipoPernocta asc';
			  QryPernoctas.ParamByName('contrato').AsString := sParamContrato;
			  QryPernoctas.ParamByName('Barco').AsString := Embarcacion;
			  QryPernoctas.ParamByName('orden').AsString := sParamOrden;
			  QryPernoctas.ParamByName('fecha').AsDate := dParamFecha;
			  QryPernoctas.ParamByName('Turno').AsString := sParamTurno;
			  QryPernoctas.Open;

  QryPernoctas.ParamByName('contrato').AsString := sParamContrato;
  QryPernoctas.ParamByName('Barco').AsString := Embarcacion;
  QryPernoctas.ParamByName('orden').AsString := sParamOrden;
  QryPernoctas.ParamByName('fecha').AsDate := dParamFecha;
  QryPernoctas.ParamByName('Turno').AsString := sParamTurno;
  QryPernoctas.Open;

  {LLenamos la memoria con los datos del personal con Pernoctas..}
  while not QryPernoctas.Eof do
  begin
    mPernocta.Append;
    mPernocta.FieldValues['sContrato'] := QryPernoctas.FieldValues['sContrato'];
    mPernocta.FieldValues['sPernocta'] := QryPernoctas.FieldValues['sPernocta'];
    mPernocta.FieldValues['sIdPernocta'] := QryPernoctas.FieldValues['sIdPernocta'];
    mPernocta.FieldValues['dCantidad'] := QryPernoctas.FieldValues['dCantidad'];
    mPernocta.FieldValues['sTipoPernocta'] := QryPernoctas.FieldValues['sTipoPernocta'];
    mPernocta.FieldValues['DescribePernocta'] := QryPernoctas.FieldValues['DescribePernocta'];
    mPernocta.Post;
    QryPernoctas.Next;
  end;

  {Ahora consultamos las pernoctas asignadas directamente..}
  QryPernoctas.Close;
  QryPernoctas.Sql.Text := 'select b.sContrato, c.sIdPernocta, Sum(b.dCantidad) as dCantidad, b.sIdCuenta, c.sDescripcion as DescribePernocta from bitacoradepernocta_aux b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join cuentas c on (c.sIdCuenta = b.sIdCuenta )' +
    'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden ' +
    'Group By b.sIdCuenta order by b.sIdCuenta asc';
  QryPernoctas.ParamByName('contrato').AsString := sParamContrato;
  QryPernoctas.ParamByName('orden').AsString := sParamOrden;
  QryPernoctas.ParamByName('fecha').AsDate := dParamFecha;
  QryPernoctas.ParamByName('Turno').AsString := sParamTurno;
  QryPernoctas.Open;

      //Horas Extras
  rptTiempoExtra.Active := false;
  rptTiempoExtra.sql.clear;
  rptTiempoExtra.SQL.Add('select p.sIdPersonal, b.sContrato,  b.sDescripcion, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal <> "PE-A" and p.sIdTipoPersonal <> "PEP") ' +
    'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden and p.sDescripcion like "%TIEMPO%EXTRA%" ' +
    ' Group By p.sIdPersonal order by p.iItemOrden asc');
  rptTiempoExtra.Params.ParamByName('contrato').DataType := ftString;
  rptTiempoExtra.Params.ParamByName('contrato').Value := sParamContrato;
  rptTiempoExtra.Params.ParamByName('orden').DataType := ftString;
  rptTiempoExtra.Params.ParamByName('orden').Value := sParamOrden;
  rptTiempoExtra.Params.ParamByName('fecha').DataType := ftDate;
  rptTiempoExtra.Params.ParamByName('fecha').Value := dParamFecha;
  rptTiempoExtra.Params.ParamByName('Turno').DataType := ftString;
  rptTiempoExtra.Params.ParamByName('Turno').Value := sParamTurno;
  rptTiempoExtra.Open;
  {Ahora recorremos la memoria para sumar las Pernoctas..}
  if Qrypernoctas.RecordCount > 0 then
  begin
      {Si no se encntraron pernoctas de personal se ingresan como nuevos..}
    while not QryPernoctas.Eof do
    begin
      mPernocta.First;
      lContinua := True;
          {Verificamos si ya existe la Pernocta..}
      while not mPernocta.Eof do
      begin
        if mPernocta.FieldValues['sTipoPernocta'] = QryPernoctas.FieldValues['sIdCuenta'] then
        begin
          mPernocta.Edit;
          mPernocta.FieldValues['dCantidad'] := mPernocta.FieldValues['dCantidad'] + QryPernoctas.FieldValues['dCantidad'];
          mPernocta.Post;
          lContinua := False;
        end;
        mPernocta.Next;
      end;

      if lContinua then
      begin
              {En caso contrario se da de alta..}
        mPernocta.Append;
        mPernocta.FieldValues['sContrato'] := QryPernoctas.FieldValues['sContrato'];
        mPernocta.FieldValues['sIdPernocta'] := QryPernoctas.FieldValues['sIdPernocta'];
        mPernocta.FieldValues['sPernocta'] := Embarcacion;
        mPernocta.FieldValues['dCantidad'] := QryPernoctas.FieldValues['dCantidad'];
        mPernocta.FieldValues['sTipoPernocta'] := QryPernoctas.FieldValues['sIdCuenta'];
        mPernocta.FieldValues['DescribePernocta'] := QryPernoctas.FieldValues['DescribePernocta'];
        mPernocta.Post;
      end;
      QryPernoctas.Next;
    end;
  end;
  {Termina modificacion de pernoctas ivan- dic-2010}

  // Variables Generales del Reporte
  global_imprime := 'Si';

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select r.sContrato From reportediario r inner join ordenesdetrabajo o on ' +
    '(r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden and o.sIdTipoOrden <> :tipo) ' +
    'Where r.sContrato = :Contrato And r.dIdFecha = :Fecha And r.lStatus <> "Autorizado" ');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Fecha').DataType := ftDate;
  QryBuscar.Params.ParamByName('Fecha').Value := dParamFecha;
  QryBuscar.Params.ParamByName('tipo').DataType := ftString;
  QryBuscar.Params.ParamByName('tipo').Value := QryConfiguracion.FieldValues['sOrdenExtraordinaria'];
  QryBuscar.Open;
  if QryBuscar.RecordCount > 0 then
    global_imprime := 'No';

  if lCheckReporte() then
  begin
  // Optativa
    if QryReporteDiario.FieldValues['sOrigenTierra'] = 'Si' then
      sDiarioDescripcionCorta := 'OFICINAS ADMINISTRATIVAS'
    else
      sDiarioDescripcionCorta := QryReporteDiario.FieldValues['sIdFolio'];
  end
  else
    sDiarioDescripcionCorta := QryReporteDiario.FieldValues['sDescripcionCorta'];

  sDiarioComentario := '';
  if global_imprime = 'No' then
    sDiarioComentario := 'EXISTEN REPORTES DIARIOS DE OTRAS ORDENES DE TRABAJO SIN VALIDAR/AUTORIZAR EN EL DIA, POR TAL NO SE PUEDE REFLEJAR EL AVANCE REAL Y LOS TIEMPOS MUERTOS REALES DEL CONTRATO.';

  sDiarioTitulo := '';
  if global_imprime = 'No' then
    sDiarioTitulo := 'OBSERVACIONES';

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio Order By dFecha DESC');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
  QryBuscar.Params.ParamByName('Convenio').Value := QryReporteDiario.FieldValues['sIdConvenio'];
  QryBuscar.Open;
  sDiarioPeriodo := '';
  if QryBuscar.RecordCount > 0 then
    sDiarioPeriodo := datetostr(QryBuscar.FieldValues['dFechaInicio']) + ' AL ' + datetostr(QryBuscar.FieldValues['dFechaFinal']);
  QryBuscar.Destroy;
  QryBuscarAux.Destroy;

  if lCheckReporte() then
  begin
      // Avances Fisico/Programados ...
    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select sIdTipoOrden from ordenesdetrabajo ' +
      'where sContrato = :Contrato and sNumeroOrden = :Orden');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Orden').Value := sParamOrden;
    QryOrdenesdeTrabajo.Open;

    sTipoOrden := QryOrdenesdeTrabajo.FieldValues['sIdTipoOrden'];

    QryOrdenesdeTrabajo.Active := False;
    QryOrdenesdeTrabajo.SQL.Clear;
    QryOrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, sIdTipoOrden from ordenesdetrabajo where sContrato = :Contrato and sIdTipoOrden <> :Tipo');
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
    QryOrdenesdeTrabajo.Params.ParamByName('Tipo').DataType := ftString;
    QryOrdenesdeTrabajo.Params.ParamByName('Tipo').Value := QryConfiguracion.FieldValues['sOrdenExtraordinaria'];
    QryOrdenesdeTrabajo.Open;

    if QryOrdenesdeTrabajo.RecordCount >= 1 then
      procAvances(sParamContrato, sParamOrden, QryReporteDiario.FieldValues['sIdConvenio'], QryReporteDiario.FieldValues['sIdTurno'], dParamFecha, True, tOrigen)
    else
      procAvances(sParamContrato, sParamOrden, QryReporteDiario.FieldValues['sIdConvenio'], QryReporteDiario.FieldValues['sIdTurno'], dParamFecha, False, tOrigen);
  end;

  dProgramadoGlobalAnterior := dProgramadoOrdenAnterior;
  dProgramadoGlobalActual := dProgramadoOrdenActual;
  dProgramadoGlobalAcumulado := dProgramadoOrdenAcumulado;

  if Linea <> '' then
  begin
    mBitacoraActividades.First;
    while not mBitacoraActividades.Eof do
    begin
      dRealGlobalAnterior := mBitacoraActividades.FieldByName('dAvanceAnterior').AsCurrency;
      dRealGlobalActual := mBitacoraActividades.FieldByName('dAvance').AsCurrency;
      dRealGlobalAcumulado := mBitacoraActividades.FieldByName('dAvanceActual').AsCurrency;
      mBitacoraActividades.Next;
    end;
  end
  else
  begin
    dRealGlobalAnterior := dRealOrdenAnterior;
    dRealGlobalAcumulado := dRealOrdenAcumulado;
    dRealGlobalActual := dRealOrdenActual;
  end;

  dProgramadoOrdenAnterior := 0;
  dProgramadoOrdenActual := 0;
  dProgramadoOrdenAcumulado := 0;
  dRealOrdenAnterior := 0;
  dRealOrdenActual := 0;
  dRealOrdenAcumulado := 0;


  QryOrdenesdeTrabajo.Active := False;
  QryOrdenesdeTrabajo.SQL.Clear;
  QryOrdenesdeTrabajo.SQL.Add('Select o.sIdTipoOrden, o.mDescripcion, o.sIdFolio,p.sDescripcion as sIdPlataforma, bTipoAdmon from ordenesdetrabajo o ' +
    'inner join plataformas p on (o.sIdPlataforma = p.sIdPlataforma) ' +
    'where o.sContrato = :Contrato and o.sNumeroOrden = :Orden');
  QryOrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
  QryOrdenesdeTrabajo.Params.ParamByName('Contrato').Value := sParamContrato;
  QryOrdenesdeTrabajo.Params.ParamByName('Orden').DataType := ftString;
  QryOrdenesdeTrabajo.Params.ParamByName('Orden').Value := sParamOrden;
  QryOrdenesdeTrabajo.Open;

  if QryOrdenesdeTrabajo.RecordCount > 0 then
  begin
    mDescripcionOrden := QryOrdenesdeTrabajo.FieldValues['mDescripcion'];
    sFolio := QryOrdenesdeTrabajo.FieldValues['sIdFolio'];
    sPlataformaOrden := QryOrdenesdeTrabajo.FieldValues['sIdPlataforma'];
  end;

  global_miReporte := QryConfiguracion.FieldValues['sReportesCIA'];

   //Existencia de fotografias en el reporte - Roberto..
  QryExisteFoto.Active := false;
  QryExisteFoto.SQL.Clear;
  QryExisteFoto.SQL.Add('SELECT sContrato FROM contratos WHERE sContrato = :contrato AND 1 = :uno');
  QryExisteFoto.ParamByName('contrato').Value := global_contrato;
  if QryReporteFotografico.RecordCount > 0 then
    QryExisteFoto.ParamByName('uno').Value := 1 //hacemos que el query devuelva un registro
  else
    QryExisteFoto.ParamByName('uno').Value := 0; //hacemos que el query devuelva cero registros
  QryExisteFoto.Open;

   //Definicion de C17
   {Esta modificacion es con base a una slicitud de sede 400, de unificar los reportes diarios en un solo archivo..}
  if qryOrdenesdeTrabajo.FieldValues['sIdTipoOrden'] = 'M' then
    global_RepDirC17 := 'SI';

  if qryOrdenesdeTrabajo.FieldValues['sIdTipoOrden'] = 'I' then
    global_RepDirC17 := 'NO';

  //Llamar el reporte

   If Global_PuJor='Si' then
      rDiario.LoadFromFile(global_files + global_miReporte + '_rDiarioOptativasGral2.fr3')
   else
      rDiario.LoadFromFile(global_files + global_miReporte + '_rDiarioOptativasGral.fr3');

//   If (Global_PuJor='No') and (Global_Personal='Si') Then
//     rDiario.LoadFromFile(global_files + global_miReporte + '_rDiarioOptativasGral.fr3');

   //If (Global_PuJor='No') and (Global_Personal='No') Then

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rDiario.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rDiarioFirmas(sParamContrato, sParamOrden, sParamTurno, dParamFecha, tOrigen);

  {Envio de correo electronico con reporte diario...}
  //Verificamos si solo se enviara el mail o solo se imprimira el reporte diario..
  if tOrigen.Name = 'frmValida' then
  begin
    if connection.configuracion.FieldValues['lEnviaCorreo'] = 'Si' then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select * from usuarios where sIdUsuario =:Usuario and lEnviaCorreo = "Si" ');
      connection.zCommand.Params.ParamByName('Usuario').AsString := global_usuario;
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
      begin
        connection.frxPDFExport1.ShowProgress := False;
        connection.frxPDFExport1.ShowDialog := False;
        rDiario.PrepareReport(true);
        GetTempPath(SizeOf(global_TempPath), global_TempPath);
        connection.frxPDFExport1.DefaultPath := global_TempPath; // se extrae la ruta de la carpeta temporal
        sNombreFrente := sParamOrden;
        sNombreFrente := AnsireplaceStr(sNombreFrente, '/', '');
        sNombreFrente := AnsireplaceStr(sNombreFrente, '\', '');
        sNombreFrente := AnsireplaceStr(sNombreFrente, '.', '');
        connection.frxPDFExport1.FileName := 'ReporteDiario ' + sNombreFrente + ' ' + formatdatetime('dd-mm-yyyy hhnnss', now) + '.pdf';
        if rDiario.Export(connection.frxPDFExport1) then
        begin
          SendMail(connection.QryBusca2.FieldValues['sMailPrincipal'],
            connection.QryBusca2.FieldValues['clave'],
            connection.QryBusca2.FieldValues['sDestino'],
            connection.QryBusca2.FieldValues['sCC'],
            connection.QryBusca2.FieldValues['sCCO'],
            connection.QryBusca2.FieldValues['sAsunto'],
            connection.frxPDFExport1.FileName,
            connection.QryBusca2.FieldValues['sContenido']);
        end;
      end
    end;
  end
  else
  begin
    if global_reportes_fecha then
    begin
      connection.frxPDFExport1.ShowProgress := False;
      connection.frxPDFExport1.ShowDialog := False;
      rDiario.PrepareReport(true);
      connection.frxPDFExport1.DefaultPath := global_directorio; // se extrae la ruta de la carpeta temporal
      sNombreFrente := sParamOrden;
      sNombreFrente := AnsireplaceStr(sNombreFrente, '\', '');
      sNombreFrente := AnsireplaceStr(sNombreFrente, '/', '');
      sNombreFrente := AnsireplaceStr(sNombreFrente, '.', '');
      connection.frxPDFExport1.FileName := 'Reporte Diario ' + sParamContrato + ' ' + sNombreFrente + ' ' + formatdatetime('dd-mm-yyyy', dParamFecha) + '.pdf';
      rDiario.Export(connection.frxPDFExport1);
    end
    else
    begin
      if sParamDestino = 'Printer' then
        rDiario.Print
      else
        rDiario.ShowReport(True);
    end;
  end;
  procLimpia()
end;




procedure procReporteVisitadeObra(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent);
var
  Registro, x: Integer;
  sPaquete,
    sActividad: string;
  sBkPaquete: string;
  lEncontrado: Boolean;
  sFase, sDescompone: string;
begin
  // Creo los abjetos del reporte diario ...
  procCreateObject(tOrigen);

  rDiario.OnGetValue := tProcedure;
  definirPeriodo(sParamContrato, dParamFecha);

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.iFirmasReportes, c.sMostrarAvances,c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, c.sCiudad, c.sTelefono, c.sRepresentanteObra, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sReportesCIA, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
    'c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, sImpresionPaquetes ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  QryReporteDiario.SQL.Add('Select r.*, o.sDescripcionCorta, o.sIdFolio, o.mDescripcion, tu.sDescripcion, b.*, b.mDescripcion as Observaciones, b.sVendedor, b.sLinea, p.sRazon, p.sDomicilio, p.sTelefono, p.sEmail, ' +
    ' p.sCiudad, p.sEstado, p.sTelefono, p.sRfc ' +
    'From reportediario r ' +
    'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
    'inner join turnos tu on (r.sContrato = tu.sContrato and r.sIdTurno = tu.sIdTurno) ' +
    'inner join bitacoradeactividades b on (b.sContrato = r.sContrato and b.dIdFecha = r.dIdfecha and b.sNumeroOrden = o.sNumeroOrden And b.sIdTurno = tu.sIdTurno and b.sIdTipoMovimiento = "R") ' +
    'inner join tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
    'left join proveedores p on (p.sIdProveedor = b.sIdProveedor) ' +
    'Where r.sContrato =:Contrato And r.sNumeroOrden =:Orden And r.dIdFecha =:Fecha And r.sIdTurno =:Turno');
  QryReporteDiario.Params.ParamByName('contrato').DataType := ftString;
  QryReporteDiario.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteDiario.Params.ParamByName('orden').DataType := ftString;
  QryReporteDiario.Params.ParamByName('orden').Value := sParamOrden;
  QryReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
  QryReporteDiario.Params.ParamByName('Fecha').Value := dParamFecha;
  QryReporteDiario.Params.ParamByName('Turno').DataType := ftString;
  QryReporteDiario.Params.ParamByName('Turno').Value := sParamTurno;
  QryReporteDiario.Open;

  if QryReporteDiario.RecordCount = 0 then
  begin
    messageDLG('No existe Nota de Visita de Campo', mtInformation, [mbOK], 0);
    procLimpia();
    exit;
  end;


  QryBuscar := tZReadOnlyQuery.Create(tOrigen);
  QryBuscar.Connection := connection.zconnection;

  dsBitacora3.DataSet := mBitacora3;

  with connection do
  begin
    QryBusca.Active := False;
    QryBusca.SQL.Clear;
    QryBusca.SQL.Add('select * from informacionxcliente order by sDescripcion');
    QryBusca.Open;
    while not QryBusca.Eof do
    begin
      mBitacora3.Append;
      mBitacora3.FieldValues['sContrato'] := global_contrato;
      mBitacora3.FieldValues['sIdComentario'] := '_';
      mBitacora3.FieldValues['mDescripcion'] := QryBusca.FieldValues['sDescripcion'];
      mBitacora3.Post;
      QryBusca.Next;
    end;
  end;

  with connection do
  begin
    QryBusca.Active := False;
    QryBusca.SQL.Clear;
    QryBusca.SQL.Add('select b.sContrato, b.sInformacion from bitacoradeactividades b ' +
      'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
      'Where b.sContrato =:Contrato And b.sNumeroOrden =:Orden And b.dIdFecha =:Fecha And b.sIdTurno =:Turno and b.sIdTipoMovimiento = "R"');
    QryBusca.Params.ParamByName('contrato').DataType := ftString;
    QryBusca.Params.ParamByName('contrato').Value := sParamContrato;
    QryBusca.Params.ParamByName('orden').DataType := ftString;
    QryBusca.Params.ParamByName('orden').Value := sParamOrden;
    QryBusca.Params.ParamByName('fecha').DataType := ftDate;
    QryBusca.Params.ParamByName('fecha').Value := dParamFecha;
    QryBusca.Params.ParamByName('Turno').DataType := ftString;
    QryBusca.Params.ParamByName('Turno').Value := sParamTurno;
    QryBusca.Open;
    //soad -> Se inica asignacion de Id al los comentarios para que se impriman por separado..

    sDescompone := QryBusca.FieldValues['sInformacion'];
    while sDescompone <> '' do
    begin
      if Pos('-', sDescompone) > 0 then
      begin
        sFase := MidStr(sDescompone, 1, Pos('-', sDescompone) - 1);
        sDescompone := MidStr(sDescompone, Pos('-', sDescompone) + 1, Length(sDescompone));
      end
      else
      begin
        sFase := sDescompone;
        sDescompone := ''
      end;
      mBitacora3.First;
      while not mBitacora3.Eof do
      begin
        if sFase = mBitacora3.FieldValues['mDescripcion'] then
        begin
          mBitacora3.Edit;
          mBitacora3.Fieldvalues['sIdComentario'] := 'X';
          mBitacora3.Post;
        end;
        mBitacora3.Next;
      end;
    end;
  end;

  //Reprote Fotografico...
  QryReporteFotografico.Active := False;
  QryReporteFotografico.SQL.Clear;
  QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
    'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
  QryReporteFotografico.Params.ParamByName('contrato').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('contrato').Value := sParamContrato;
  QryReporteFotografico.Params.ParamByName('Reporte').DataType := ftString;
  QryReporteFotografico.Params.ParamByName('Reporte').Value := sParamReporte;
  QryReporteFotografico.Open;

  // Variables Generales del Reporte
  global_imprime := 'Si';

  sDiarioComentario := '';
  if global_imprime = 'No' then
    sDiarioComentario := 'EXISTEN REPORTES DIARIOS DE OTRAS ORDENES DE TRABAJO SIN VALIDAR/AUTORIZAR EN EL DIA, POR TAL NO SE PUEDE REFLEJAR EL AVANCE REAL Y LOS TIEMPOS MUERTOS REALES DEL CONTRATO.';

  sDiarioTitulo := '';
  if global_imprime = 'No' then
    sDiarioTitulo := 'OBSERVACIONES';

  QryBuscar.Active := False;
  QryBuscar.SQL.Clear;
  QryBuscar.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio Order By dFecha DESC');
  QryBuscar.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscar.Params.ParamByName('Convenio').DataType := ftString;
  QryBuscar.Params.ParamByName('Convenio').Value := QryReporteDiario.FieldValues['sIdConvenio'];
  QryBuscar.Open;
  sDiarioPeriodo := '';
  if QryBuscar.RecordCount > 0 then
    sDiarioPeriodo := datetostr(QryBuscar.FieldValues['dFechaInicio']) + ' AL ' + datetostr(QryBuscar.FieldValues['dFechaFinal']);
  QryBuscar.Destroy;

  global_miReporte := QryConfiguracion.FieldValues['sReportesCIA'];

   //Existencia de fotografias en el reporte - Roberto..
  QryExisteFoto.Active := false;
  QryExisteFoto.SQL.Clear;
  QryExisteFoto.SQL.Add('SELECT sContrato FROM contratos WHERE sContrato = :contrato AND 1 = :uno');
  QryExisteFoto.ParamByName('contrato').Value := global_contrato;
  if QryReporteFotografico.RecordCount > 0 then
    QryExisteFoto.ParamByName('uno').Value := 1 //hacemos que el query devuelva un registro
  else
    QryExisteFoto.ParamByName('uno').Value := 0; //hacemos que el query devuelva cero registros
  QryExisteFoto.Open;

  //Llamar el reporte
  rDiario.LoadFromFile(global_files + global_miReporte + '_rDiarioVisitaCampo.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rDiario.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rDiarioFirmas(sParamContrato, sParamOrden, sParamTurno, dParamFecha, tOrigen);
  rDiario.ShowReport();
  procLimpia();
end;


procedure procCaratulaPersonalEquipo(sParamContrato, sParamOrden, sParamConvenio, sTipo: string; dParamFechaI, dParamFechaT: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent);
var
  rDiario: TfrxReport;
  dsbitacora, dsOt: TfrxDBDataSet;
  Auxiliar, Auxiliar2: TZReadOnlyQuery;
  Cadena: string;
begin


  rDiario := TfrxReport.Create(tOrigen);

  Auxiliar := tzReadOnlyQuery.Create(tOrigen);
  Auxiliar.Connection := Connection.zConnection;
  Auxiliar2 := tzReadOnlyQuery.Create(tOrigen);
  Auxiliar2.Connection := Connection.zConnection;

  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsBitacora := TfrxDBDataSet.Create(tOrigen);
  if (sTipo = 'Personal') or (sTipo = 'Personalxoptativa') then
    dsBitacora.UserName := 'bitacorapersonal';
  if (sTipo = 'Equipo') or (sTipo = 'Equipoxoptativa') then
    dsBitacora.UserName := 'bitacoraEquipo';
  if sTipo = 'Pernoctas' then
    dsBitacora.UserName := 'Pernoctas';
  if sTipo = 'barcoxoptativas' then
    dsBitacora.UserName := 'movbarcoxopt';
  if (sTipo = 'barcoxtotaloptativas') or (sTipo = 'barcoxtotalprogramadas') then
    dsBitacora.UserName := 'totalxoptprog';

  dsOt := TfrxDBDataSet.Create(tOrigen);
  dsOt.UserName := 'Ordenes';

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sCodigo, .c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');

  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  Auxiliar.Active := False;
  Auxiliar.SQL.Clear;

  if sTipo = 'barcoxoptativas' then
    Auxiliar.SQL.Add('select p.sContrato, p.dIdFecha, p.sClasificacion, a.mDescripcion, Sum(p.dProrrateoOrden) as dProrrateoOrden, ' +
      'p.sNumeroOrden from prorrateos p ' +
      'Left Join actividadesxanexo a  On(a.sContrato=p.sContrato And a.sTipoActividad="Actividad" ' +
      'And a.sTipo="BARCO" And a.sIdConvenio=:Convenio And p.sClasificacion=a.sWbs) ' +
      'where p.sContrato = :Contrato ' +
      'And p.dIdFecha >= :FechaInicio ' +
      'And p.dIdFecha <= :FechaFinal ' +
      'Group by p.sClasificacion, p.dIdFecha');


  if sTipo = 'Pernoctas' then
    Auxiliar.SQL.Add('select bp.sNumeroActividad, bp.dIdFecha, SUM(bp.dCantidad) as total, a.mDescripcion from  bitacoradepernocta bp ' +
      'INNER JOIN actividadesxanexo a On (a.sContrato=bp.sIdAnexo And a.sTipoActividad="Actividad"  ' +
      'And a.sTipo="Pernocta" And a.sNumeroActividad=bp.sNumeroActividad And a.sIdConvenio=:Convenio) ' +
      'Where bp.sIdAnexo =:Contrato And bp.sNumeroActividad="1" ' +
      'And bp.dIdFecha >= :FechaInicio ' +
      'And bp.dIdFecha <= :FechaFinal ' +
      'And bp.sIdPernocta= ' + Global_Pernocta + ' Group by bp.dIdFecha, bp.sNumeroActividad');

  if sTipo = 'Equipo' then
    Auxiliar.SQL.Add('select a.iItemOrden, a.sMedida, be.dIdFecha, be.sIdEquipo, be.sNumeroOrden, be.dCantidad, ' +
      'be.sDescripcion, a.sNumeroActividad from bitacoradeequipos be ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=be.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=be.sIdEquipo ' +
      'And a.sTipo="EQUIPO") ' +
      'Where be.dIdFecha>=:FechaInicio ' +
      'And be.dIdFecha <= :FechaFinal ' +
      'And be.sContrato=:Contrato  and be.sNumeroOrden=:Orden ' +
      'order by be.dIdFecha, a.iItemOrden ');

  if sTipo = 'Equipoxoptativa' then
    Auxiliar.SQL.Add('select be.sIdEquipo, be.dIdFecha, a.iItemOrden, be.sDescripcion, ' +
      'a.sMedida, SUM(be.dCantidad) As dCantidad from bitacoradeequipos be ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=be.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=be.sIdEquipo ' +
      'And a.sTipo="EQUIPO") ' +
      'Where be.dIdFecha>=:FechaInicio ' +
      'And be.dIdFecha <= :FechaFinal ' +
      'And be.sContrato=:Contrato  ' +
      'Group by be.sIdEquipo, dIdFecha, a.iItemOrden   ' +
      'order by be.dIdFecha, a.iItemOrden ');


  if sTipo = 'Personal' then
    Auxiliar.SQL.Add('select a.iItemOrden, a.sMedida, bp.dIdFecha, bp.sIdPersonal, bp.sNumeroOrden, bp.dCantidad, ' +
      'bp.sDescripcion, a.sNumeroActividad from bitacoradepersonal bp ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=bp.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=bp.sIdPersonal ' +
      'And a.sTipo="PERSONAL") ' +
      'Where bp.dIdFecha>=:FechaInicio ' +
      'And bp.dIdFecha <= :FechaFinal ' +
      'And bp.sContrato=:Contrato  and bp.sNumeroOrden=:Orden ' +
      'And sIdPersonal not like "%S/P%" ' +
      'order by bp.dIdFecha, a.iItemOrden ');


  if sTipo = 'Personalxoptativa' then
    Auxiliar.SQL.Add('select a.iItemOrden, a.sMedida, bp.dIdFecha, bp.sIdPersonal, Sum(bp.dCantidad) as dCantidad, ' +
      'bp.sDescripcion, a.sNumeroActividad from bitacoradepersonal bp ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=bp.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=bp.sIdPersonal ' +
      'And a.sTipo="PERSONAL") ' +
      'Where bp.dIdFecha>=:FechaInicio ' +
      'And bp.dIdFecha <= :FechaFinal ' +
      'And bp.sContrato=:Contrato ' +
      'And sIdPersonal not like "%S/P%" ' +
      'Group by bp.sIdPersonal, dIdFecha ' +
      'order by bp.dIdFecha, a.iItemOrden ');


  if sTipo = 'barcoxtotaloptativas' then
    Auxiliar.SQL.Add('select p.sContrato, p.dIdFecha, p.sClasificacion, ' +
      'p.sDescripcion, Sum(p.dProrrateoOrden) as dProrrateoOrden, ' +
      'p.sNumeroOrden from prorrateos p ' +
      'where p.dIdFecha >= :FechaInicio ' +
      'And p.dIdFecha <= :FechaFinal ' +
      'And p.sContrato like "%OT-M-AP%" ' +
      'Group by p.dIdFecha, p.sClasificacion ' +
      'order by p.dIdFecha, p.sClasificacion ');

  if sTipo = 'barcoxtotalprogramadas' then
    Auxiliar.SQL.Add('select p.sContrato, p.dIdFecha, p.sClasificacion, ' +
      'p.sDescripcion, Sum(p.dProrrateoOrden) as dProrrateoOrden, ' +
      'p.sNumeroOrden from prorrateos p ' +
      'where p.dIdFecha >= :FechaInicio ' +
      'And p.dIdFecha <= :FechaFinal ' +
      'And p.sContrato like "%428238%" ' +
      'Group by p.dIdFecha, p.sClasificacion ' +
      'order by p.dIdFecha, p.sClasificacion ');


  if (sTipo <> 'barcoxtotalprogramadas') and (sTipo <> 'barcoxtotaloptativas') then
  begin
    Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
    Auxiliar.Params.ParamByName('Contrato').Value := Global_Contrato;
  end;
  if (sTipo = 'Personal') or (sTipo = 'Equipo') then
  begin
    Auxiliar.Params.ParamByName('Orden').DataType := ftString;
    Auxiliar.Params.ParamByName('Orden').Value := sParamOrden;
  end;

  if (sTipo <> 'barcoxtotalprogramadas') and (sTipo <> 'barcoxtotaloptativas') then
  begin
    Auxiliar.Params.ParamByName('Convenio').DataType := ftString;
    Auxiliar.Params.ParamByName('Convenio').Value := sParamConvenio;
  end;
  Auxiliar.Params.ParamByName('FechaInicio').DataType := ftDate;
  Auxiliar.Params.ParamByName('FechaInicio').Value := dParamFechaI;
  Auxiliar.Params.ParamByName('FechaFinal').DataType := ftDate;
  Auxiliar.Params.ParamByName('FechaFinal').Value := dParamFechaT;
  Auxiliar.open;

  Auxiliar2.Active := False;
  Auxiliar2.SQL.Clear;
  Auxiliar2.SQL.Add('select sNumeroOrden, mDescripcion from ordenesdetrabajo ' +
    'where sContrato  = :Contrato ' +
    'and sNumeroOrden = :Orden ');

  Auxiliar2.Params.ParamByName('Contrato').DataType := ftString;
  Auxiliar2.Params.ParamByName('Contrato').Value := Global_Contrato;
  Auxiliar2.Params.ParamByName('Orden').DataType := ftString;
  Auxiliar2.Params.ParamByName('Orden').Value := sParamOrden;
  Auxiliar2.open;

  dsBitacora.DataSet := Auxiliar;
  dsOt.DataSet := Auxiliar2;
  dsConfiguracion.DataSet := QryConfiguracion;

  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsBitacora);
  rDiario.DataSets.Add(dsOt);

  sDiarioPeriodo := DateToStr(dParamFechaI) + ' AL ' + DateToStr(dParamFechaT);
  if sTipo = 'barcoxtotaloptativas' then
    sTipoAcumulado := 'TOTAL DE OPTATIVAS POR BARCO';
  if sTipo = 'barcoxtotalprogramadas' then
    sTipoAcumulado := 'TOTAL DE ANEXOS POR BARCO';

  rDiario.OnGetValue := tProcedure;
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := lCheckMaximized();
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;

  if sTipo = 'Personal' then
    rDiario.LoadFromFile(Global_Files + 'generadorPersonalxot.fr3');
  if sTipo = 'Equipo' then
    rDiario.LoadFromFile(Global_Files + 'generadorEquipoxot.fr3');

  if sTipo = 'Personalxoptativa' then
    rDiario.LoadFromFile(Global_Files + 'generadorPersonal.fr3');

  if sTipo = 'Equipoxoptativa' then
    rDiario.LoadFromFile(Global_Files + 'generadorEquipo.fr3');

  if sTipo = 'Pernoctas' then
    rDiario.LoadFromFile(Global_Files + 'generadorPernocta.fr3');
  if sTipo = 'barcoxoptativas' then
    rDiario.LoadFromFile(Global_Files + 'generadordeBarcoxOptativas.fr3');
  if sTipo = 'barcoxtotaloptativas' then
    rDiario.LoadFromFile(Global_Files + 'generadordeBarcoxtotaloptativas.fr3');
  if sTipo = 'barcoxtotalprogramadas' then
    rDiario.LoadFromFile(Global_Files + 'generadordeBarcoxtotaloptativas.fr3');


  if Auxiliar.RecordCount > 0 then
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', Auxiliar.FieldValues['dIdFecha'], tOrigen);

  rDiario.ShowReport;


  Auxiliar.Destroy;
  Auxiliar2.Destroy;
  dsBitacora.Destroy;
  dsOt.Destroy;
end;



//Procedimiento para llamar el Generador Mensual

procedure genMensual(sParamContrato, sParamOrden, sParamConvenio: string; dParamFechaI, dParamFechaT: tDatetime; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent);
var
  rDiario: TfrxReport;
  memoria, fechas: TrxMemoryData;
  qry, qry2, qryConsulta: TZReadOnlyQuery;
  FechaAnterior, dFechaActual, dFechaEncontrada: tDateTime;
  sFechaInicio, tmpsFechaFinal, sFechaFinal: string;
  w, j, iSemanaInicio, iSemanaFinal: integer;
  lContinuar: Boolean;
begin
  dParamFechaI := date() - 7;
  dParamFechat := date();

  fechas := TrxMemoryData.Create(tOrigen);
  fechas.Active := true;
  fechas.Open;
  fechas.EmptyTable;

  memoria := TrxMemoryData.Create(tOrigen);
  memoria.Active := true;
  memoria.Open;
  memoria.EmptyTable;

  qry := TZReadOnlyQuery.Create(tOrigen);
  qry2 := TZReadOnlyQuery.Create(tOrigen);
  qry.Connection := connection.zConnection;
  qry2.Connection := connection.zConnection;

  qry.Active := False;
  qry.SQL.Clear;
  qry.SQL.Add('select :FechaI as FI, :FechaF as FF');
  qry.Params.ParamByName('FechaI').DataType := ftDate;
  qry.Params.ParamByName('FechaI').Value := dParamFechaI;
  qry.Params.ParamByName('FechaF').DataType := ftDate;
  qry.Params.ParamByName('FechaF').Value := dParamFechaT;
  qry.Open;
  if qry.RecordCount > 0 then
  begin
    sFechaInicio := qry.FieldValues['FI'];
    sFechaFinal := qry.FieldValues['FF'];
    tmpsFechaFinal := sFechaFinal;
  end;

  j := 1;

  qry.Active := False;
  qry.SQL.Clear;
  qry.SQL.Add('select WEEK(:FechaI) as iSemanaInicio,WEEK(:FechaF) as iSemanaFinal');
  qry.Params.ParamByName('FechaI').DataType := ftDate;
  qry.Params.ParamByName('FechaI').Value := sFechaInicio;
  qry.Params.ParamByName('FechaF').DataType := ftDate;
  qry.Params.ParamByName('FechaF').Value := sFechaFinal;
  qry.Open;

  sFechaFinal := sFechaInicio;
  if qry.RecordCount > 0 then
  begin
    iSemanaInicio := qry.FieldValues['iSemanaInicio'];
    iSemanaFinal := qry.FieldValues['iSemanaFinal'];
  end;
  for w := iSemanaInicio to iSemanaFinal do
  begin
    sFechaInicio := sFechaFinal;
    lContinuar := True;
    while lContinuar and (sFechaFinal <= tmpsFechaFinal) do
    begin
      qry.Active := false;
      qry.SQL.Clear;
      qry.SQL.Add('select WEEK(:Fecha) as iSemana');
      qry.Params.ParamByName('Fecha').DataType := ftDate;
      qry.Params.ParamByName('Fecha').Value := sFechaFinal;
      qry.Open;
      if qry.RecordCount > 0 then
      begin
        if qry.FieldValues['iSemana'] = w then
        begin
          qry2.Active := False;
          qry2.SQL.Clear;
          qry2.SQL.Add('select adddate(:Fecha,1) as dNuevaFechaFinal');
          qry2.Params.ParamByName('Fecha').DataType := ftDate;
          qry2.Params.ParamByName('Fecha').Value := sFechaFinal;
          qry2.Open;
          if qry2.RecordCount > 0 then
            sFechaFinal := qry2.FieldValues['dNuevaFechaFinal'];
          lContinuar := true;
        end
        else
          lContinuar := false;

      end
      else
        lContinuar := false;

    end; {end while}
    if w <> iSemanaInicio then
    begin
      qry2.Active := False;
      qry2.SQL.Clear;
      qry2.SQL.Add('select adddate(:Fecha,1) as sFechaInicio');
      qry2.Params.ParamByName('Fecha').DataType := ftDate;
      qry2.Params.ParamByName('Fecha').Value := sFechaInicio;
      qry2.Open;
      if qry2.RecordCount > 0 then
        sFechaInicio := qry2.FieldValues['sFechaInicio'];
    end;
    if w = iSemanaFinal then
    begin
      sFechaFinal := tmpsFechaFinal;
    end;
    //Memo1.Text := Memo1.Text + '  ,  ' + sFechaInicio + ' < al >' + sFechaFinal;
    {llenar el memory data}
    qry2.Active := false;
    qry2.SQL.Clear;
    if Global_Optativa = 'PROGRAMADA' then
      qry2.SQL.Add('select   ' +
        ' a.sContrato, ' +
        ' a.sNumeroOrden, ' +
        ' a.sNumeroActividad, ' +
        ' a.mDescripcion, ' +
        ' a.sMedida, a.iItemOrden, ' +
        ' a.dVentaMN, ' +
        ' a.dVentaDLL, ' +
        ' e.sNumeroGenerador, ' +
        ' sum( e.dCantidad ) as dInstalado ' +
        ' from actividadesxorden a ' +
        ' inner join estimacionxpartida e on( ' +
        '   a.sContrato = e.sContrato and a.sNumeroActividad = e.sNumeroActividad ' +
        '   and a.sWbs = e.sWbs and a.sTipoActividad = "Actividad" ) ' +
        ' inner join estimaciones es on( es.sContrato = e.sContrato and es.sNumeroGenerador = e.sNumeroGenerador ) ' +
        '   where ' +
        '   a.sContrato =:Contrato ' +
        '   and a.sIdConvenio =:Convenio ' +
        '   and a.sNumeroOrden <> "PATIO-AKC" ' +
        '   and es.dFechaInicio >=:FechaInicio ' +
        '   and es.dFechaInicio  <=:FechaFinal ' +
        '   group by a.iItemOrden, a.sNumeroActividad ' +
        '   Order By a.iItemOrden, a.sNumeroActividad')
    else
      qry2.SQL.Add('select   ' +
        ' a.sContrato, ' +
        ' a.sNumeroActividad, ' +
        ' a.mDescripcion, ' +
        ' a.sMedida, a.iItemOrden, ' +
        ' a.dVentaMN, ' +
        ' a.dVentaDLL, ' +
        ' e.sNumeroGenerador, ' +
        ' sum( e.dCantidad ) as dInstalado ' +
        ' from actividadesxanexo a ' +
        ' inner join estimacionxpartida e on( ' +
        '   a.sContrato = e.sContrato and a.sNumeroActividad = e.sNumeroActividad ' +
        '   and a.sWbs = e.sWbs and a.sTipoActividad = "Actividad" ) ' +
        ' inner join estimaciones es on( es.sContrato = e.sContrato and es.sNumeroGenerador = e.sNumeroGenerador ) ' +
        '   where ' +
        '   a.sContrato =:Contrato ' +
        '   and a.sIdConvenio =:Convenio ' +
        '   and es.dFechaInicio >=:FechaInicio ' +
        '   and es.dFechaInicio  <=:FechaFinal ' +
        '   group by a.iItemOrden, a.sNumeroActividad ' +
        '   Order By a.iItemOrden, a.sNumeroActividad');


    qry2.Params.ParamByName('Contrato').DataType := ftString;
    qry2.Params.ParamByName('Contrato').Value := global_contrato;
    qry2.Params.ParamByName('Convenio').DataType := ftString;
    qry2.Params.ParamByName('Convenio').Value := global_convenio;
    qry2.Params.ParamByName('FechaInicio').DataType := ftDate;
    qry2.Params.ParamByName('FechaInicio').Value := sFechaInicio;
    qry2.Params.ParamByName('FechaFinal').DataType := ftDate;
    qry2.Params.ParamByName('FechaFinal').Value := sFechaFinal;

    qry2.Open;
    if qry2.RecordCount <= 0 then
    begin
      memoria.Append;
      memoria.FieldValues['iSemana'] := j;
      memoria.FieldValues['sContrato'] := global_contrato;
      memoria.FieldValues['sNumeroOrden'] := sParamOrden;
      memoria.FieldValues['sNumeroActividad'] := '-';
      memoria.FieldValues['mDescripcion'] := '-';
      memoria.FieldValues['sMedida'] := '-';
      memoria.FieldValues['dVentaMN'] := 0;
      memoria.FieldValues['dVentaDLL'] := 0;
      memoria.FieldValues['sNumeroGenerador'] := '-';
      memoria.FieldValues['dInstalado'] := 0;
      memoria.FieldValues['Fi'] := dParamFechaI;
      memoria.FieldValues['Ff'] := dParamFechaT;
      memoria.Post;
    end;
    while not qry2.Eof do
    begin
      memoria.Append;
      memoria.FieldValues['iSemana'] := j;
      memoria.FieldValues['sContrato'] := global_contrato;
      memoria.FieldValues['sNumeroOrden'] := sParamOrden;
      memoria.FieldValues['sNumeroActividad'] := qry2.FieldValues['sNumeroActividad'];
      memoria.FieldValues['mDescripcion'] := qry2.FieldValues['mDescripcion'];
      memoria.FieldValues['sMedida'] := qry2.FieldValues['sMedida'];
      memoria.FieldValues['dVentaMN'] := qry2.FieldValues['dVentaMN'];
      memoria.FieldValues['dVentaDLL'] := qry2.FieldValues['dVentaDLL'];
      memoria.FieldValues['sNumeroGenerador'] := qry2.FieldValues['sNumeroGenerador'];
      memoria.FieldValues['dInstalado'] := qry2.FieldValues['dInstalado'];
      memoria.FieldValues['Fi'] := dParamFechaI;
      memoria.FieldValues['Ff'] := dParamFechaT;
      memoria.Post;

      qry2.Next;
    end;

    j := j + 1;
  end;
  {end for}
//  panelSemanal.Visible := False;

  fechas.Active := true;
  fechas.Open;
  fechas.EmptyTable;
  fechas.Append;
  fechas.FieldValues['fi'] := dParamFechaI;
  fechas.FieldValues['ff'] := dParamFechaT;
  fechas.Post;
end;

//Desarollo: Jose Angel Soriano...
//Consolidado del Personal Solicitado Vs Real

procedure procConsolidadoOt(sParamContrato, sParamOrden: string; dParamFecha: tDatetime; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rxSolicitado,
    rxReal: TrxMemoryData;

  qryPersonalSol,
    qrySolicitado,
    qryConsulta,
    qryBuscarAux: TZReadOnlyQuery;
  dFechaAnterior,
    dFechaActual,
    dFechaEncontrada: tDateTime;

  d1, d2, d3, d4, aux, sDescripcion, sMedida: string;
  aux1, i: integer;
  arreglo: array[1..7] of string;

begin
  procCreateObject(tOrigen);
  rDiario.OnGetValue := tProcedure;

  qryPersonalSol := tzReadOnlyQuery.Create(tOrigen);
  qryPersonalSol.Connection := Connection.zConnection;

  qrySolicitado := tzReadOnlyQuery.Create(tOrigen);
  qrySolicitado.Connection := Connection.zConnection;

  qryConsulta := tzReadOnlyQuery.Create(tOrigen);
  qryConsulta.Connection := Connection.zConnection;

  qryBuscarAux := tzReadOnlyQuery.Create(tOrigen);
  qryBuscarAux.Connection := Connection.zConnection;

  Consolidado := tzReadOnlyQuery.Create(tOrigen);
  Consolidado.Connection := Connection.zconnection;

  dsConOt := TfrxDBDataSet.Create(tOrigen);
  dsConOt.UserName := 'dsConsolidado';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sMostrarAvances,c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, sImpresionPaquetes  ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := Global_Contrato;
  QryConfiguracion.Open;

  rxReal := TrxMemoryData.Create(tOrigen);
  rxReal.Active := False;
  rxReal.FieldDefs.Add('sAnexo', ftstring, 10, True);
  rxReal.FieldDefs.Add('sPartida', ftString, 8, True);
  rxReal.FieldDefs.Add('dCantidad', ftInteger, 0, True);
  rxReal.FieldDefs.Add('sAgrupaPersonal', ftstring, 8, True);
  rxReal.FieldDefs.Add('sTipoRecurso', ftString, 10, True);
  rxReal.FieldDefs.Add('sDescribeRecurso', ftString, 100, True);
  rxReal.EmptyTable;
  rxReal.Active := True;

  rxSolicitado := TrxMemoryData.Create(tOrigen);
  rxSolicitado.Active := False;
  rxSolicitado.FieldDefs.Add('sContrato', ftString, 15, True);
  rxSolicitado.FieldDefs.Add('sPartida', ftString, 8, True);
  rxSolicitado.FieldDefs.Add('sAgrupaPersonal', ftstring, 8, True);
  rxSolicitado.FieldDefs.Add('sDescripcion', ftString, 250, True);
  rxSolicitado.FieldDefs.Add('sMedida', ftString, 4, True);
  rxSolicitado.FieldDefs.Add('sTipoRecurso', ftString, 10, True);
  rxSolicitado.FieldDefs.Add('sDescribeTipo', ftString, 100, True);
  rxSolicitado.FieldDefs.Add('NomPlataforma1', ftString, 60, True);
  rxSolicitado.FieldDefs.Add('Plataforma1', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('NomPlataforma2', ftString, 60, True);
  rxSolicitado.FieldDefs.Add('Plataforma2', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('NomPlataforma3', ftString, 60, True);
  rxSolicitado.FieldDefs.Add('Plataforma3', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('NomPlataforma4', ftString, 60, True);
  rxSolicitado.FieldDefs.Add('Plataforma4', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('NomPlataforma5', ftString, 60, True);
  rxSolicitado.FieldDefs.Add('Plataforma5', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('NomPlataforma6', ftString, 60, True);
  rxSolicitado.FieldDefs.Add('Plataforma6', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('NomPlataforma7', ftString, 60, True);
  rxSolicitado.FieldDefs.Add('Plataforma7', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('iSolicitado', ftInteger, 0, True);
  rxSolicitado.FieldDefs.Add('sTipo', ftstring, 4, True);
  rxSolicitado.Active := True;

  dsSolicitado := TfrxDBDataSet.Create(tOrigen);
  dsSolicitado.FieldAliases.Clear;
  dsSolicitado.DataSet := RxSolicitado;
  dsSolicitado.UserName := 'dsSolicitado';

    //Localizo las Vigencias
  qryBuscarAux.Active;
  qryBuscarAux.SQL.Clear;
  qryBuscarAux.SQL.Add('Select dFechaVigencia from ordenesdetrabajogral  ' +
    'Where sContrato =:Contrato order by dFechaVigencia ');
  qryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
  qryBuscarAux.Params.ParamByName('Contrato').Value := global_Contrato;
  qryBuscarAux.Open;

  d3 := DateToStr(dParamFecha);
  sFechaReporte := d3;
  if qryBuscarAux.RecordCount > 0 then
  begin
    while not qryBuscarAux.Eof do
    begin
      dFechaAnterior := qryBuscarAux.FieldValues['dFechaVigencia'];
      d1 := qryBuscarAux.FieldValues['dFechaVigencia'];
      qryBuscarAux.Next;
      dFechaActual := qryBuscarAux.FieldValues['dFechaVigencia'];
      d2 := qryBuscarAux.FieldValues['dFechaVigencia'];
      if ((dParamFecha > dFechaAnterior) and (dParamFecha > dFechaActual) or (dParamFecha > dFechaAnterior) and (dParamFecha < dFechaActual) or (dParamFecha >= dFechaAnterior) and (dParamFecha <= dFechaActual)) then
      begin
        d4 := d1;
             //exit while ;
      end;

    end;
  end;

  if d4 = '' then //soad -> Verifica vigencia para personal y equipo
  begin
    if MessageDlg('No existe vigencia para personal y equipo. Desea continuar? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    begin
      Consolidado.Destroy;
      dsSolicitado.Destroy;
      dsConOt.Destroy;
      rxReal.Destroy;
      rxSolicitado.Destroy;
      qryPersonalSol.Destroy;
      qrySolicitado.Destroy;
      qryConsulta.Destroy;
      qryBuscarAux.Destroy;
      procLimpia();
      exit;
    end;
    d4 := DateToStr(date);
  end;

  qryPersonalSol.Active := False;
  qryPersonalSol.SQL.Clear;
  qryPersonalSol.SQL.Add('Select m.sAnexo, m.sNumeroActividad, m.dCantidad, p.sAgrupaPersonal, p.sIdTipoPersonal, tp.sDescripcion from movtorecursosxoficio m ' +
    'Inner Join personal p On (m.sContrato=p.sContrato And m.sNumeroActividad=p.sIdPersonal) ' +
    'inner join tiposdepersonal tp on (tp.sIdTipoPersonal = p.sIdTipoPersonal )' +
    'Where m.sContrato =:Contrato ' +
    'And m.dFechaVigencia =:Fecha And m.sAnexo="' + global_labelPersonal + '" Order by m.sAnexo, p.sIdTipoPersonal, p.iItemOrden');
  qryPersonalSol.Params.ParamByName('Contrato').DataType := ftString;
  qryPersonalSol.Params.ParamByName('Contrato').Value := Global_Contrato;
  qryPersonalSol.Params.ParamByName('Fecha').DataType := ftDate;
  qryPersonalSol.Params.ParamByName('Fecha').Value := d4;
  qryPersonalSol.Open;

  while not qryPersonalSol.Eof do
  begin
    rxReal.Append;
    rxReal.FieldValues['sAnexo'] := global_labelPersonal;
    rxReal.FieldValues['sPartida'] := qryPersonalSol.FieldValues['sNumeroActividad'];
    rxReal.FieldValues['sAgrupaPersonal'] := qryPersonalSol.FieldValues['sAgrupaPersonal'];
    rxReal.FieldValues['dCantidad'] := qryPersonalSol.FieldValues['dCantidad'];
    rxReal.FieldValues['sTipoRecurso'] := qryPersonalSol.FieldValues['sIdTipoPersonal'];
    rxReal.FieldValues['sDescribeRecurso'] := qryPersonalSol.FieldValues['sDescripcion'];
    rxReal.Post;
    qryPersonalSol.Next;
  end;


  rxReal.SortOnFields('sPartida', True, False);

   //AQUI EMPIEZO LOS EQUIPOS
  qryPersonalSol.Active := False;
  qryPersonalSol.SQL.Clear;
  qryPersonalSol.SQL.Add('Select m.sAnexo, m.sNumeroActividad, m.dCantidad, e.sIdTipoEquipo, te.sDescripcion from movtorecursosxoficio m ' +
    'Inner Join equipos e On (m.sContrato=e.sContrato And m.sNumeroActividad=e.sIdEquipo) ' +
    'inner join tiposdeequipo te on (te.sIdTipoEquipo = e.sIdTipoEquipo )' +
    'Where m.sContrato =:Contrato ' +
    'And m.dFechaVigencia =:Fecha And m.sAnexo="' + global_labelEquipo + '" Order by m.sAnexo, e.sIdTipoEquipo, e.iItemOrden');
  qryPersonalSol.Params.ParamByName('Contrato').DataType := ftString;
  qryPersonalSol.Params.ParamByName('Contrato').Value := Global_Contrato;
  qryPersonalSol.Params.ParamByName('Fecha').DataType := ftDate;
  qryPersonalSol.Params.ParamByName('Fecha').Value := d4;
  qryPersonalSol.Open;

  rxReal.Last;
  while not qryPersonalSol.Eof do
  begin

    rxReal.Append;
    rxReal.FieldValues['sAnexo'] := qryPersonalSol.FieldValues['sAnexo'];
    rxReal.FieldValues['sPartida'] := qryPersonalSol.FieldValues['sNumeroActividad'];
    rxReal.FieldValues['dCantidad'] := qryPersonalSol.FieldValues['dCantidad'];
    rxReal.FieldValues['sTipoRecurso'] := qryPersonalSol.FieldValues['sIdTipoEquipo'];
    rxReal.FieldValues['sDescribeRecurso'] := qryPersonalSol.FieldValues['sDescripcion'];
    rxReal.Post;
    qryPersonalSol.Next;
  end;

  Connection.Auxiliar.Active := False;
  Connection.Auxiliar.SQL.Clear;
  Connection.Auxiliar.SQL.Add('select sIdEquipo, dCantidad from bitacoradeequipos Where sContrato=:Contrato ' +
    'And dIdFecha=:Fecha Group by sIdEquipo Order By iItemorden ');
  Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
  Connection.Auxiliar.Params.ParamByName('Contrato').Value := Global_Contrato;
  Connection.Auxiliar.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.Auxiliar.Params.ParamByName('Fecha').Value := d4;
  Connection.Auxiliar.Open;
  if Connection.Auxiliar.RecordCount > 0 then
  begin
    while not Connection.Auxiliar.Eof do
    begin
      if rxReal.Locate('sPartida', Connection.Auxiliar.FieldValues['sIdEquipo'], [loCaseInsensitive]) = False then
      begin
        rxReal.Append;
        rxReal.FieldValues['sAnexo'] := global_labelEquipo;
        rxReal.FieldValues['sPartida'] := Connection.Auxiliar.FieldValues['sIdEquipo'];
        rxReal.FieldValues['dCantidad'] := '0';
        rxReal.Post;
        Connection.Auxiliar.Next
      end;
      Connection.Auxiliar.Next
    end;
  end;

     // rxReal.SortOnFields('sAnexo',True, False);

    //Aqui termino de Sacar Equipos y Partidas
  qryConsulta.SQL.Clear;
  qryConsulta.Sql.Add('select DISTINCT(sNumeroOrden) From bitacoradeactividades ' +
    'Where sContrato=:Contrato And dIdFecha =:Fecha order By sNumeroOrden');
  qryConsulta.Params.ParamByName('Contrato').DataType := ftString;
  qryConsulta.Params.ParamByName('Contrato').Value := Global_Contrato;
  qryConsulta.Params.ParamByName('Fecha').DataType := ftDate;
  qryConsulta.Params.ParamByName('Fecha').Value := d3;
  qryConsulta.Open;
  if qryConsulta.RecordCount > 0 then
    i := 1;
  while not qryConsulta.Eof do
  begin
    arreglo[i] := qryConsulta.FieldValues['sNumeroOrden'];
    i := i + 1;
    qryConsulta.Next;
  end;
  sPlataforma1 := arreglo[1];
  sPlataforma2 := arreglo[2];
  sPlataforma3 := arreglo[3];
  sPlataforma4 := arreglo[4];
  sPlataforma5 := arreglo[5];
  sPlataforma6 := arreglo[6];
  sPlataforma7 := arreglo[7];


  rxReal.First;
  if rxReal.RecordCount > 0 then
  begin
    while not rxReal.Eof do
    begin
               //Aqui saco el Personal por Cada Partida o Personal
      qryConsulta.Active;
      qryConsulta.SQL.Clear;
      if rxReal.FieldValues['sAnexo'] = global_labelPersonal then
        qryConsulta.Sql.Add('select bp.sContrato, bp.sIdPersonal, SUM(bp.dCantidad)As dCantidad, p.sDescripcion, ' +
          'p.sMedida, ba.sNumeroOrden, bp.dIdFecha From bitacoradepersonal bp ' +
          'Inner Join bitacoradeactividades ba On ' +
          '(bp.sContrato=ba.sContrato And bp.dIdFecha=ba.dIdFecha And bp.iIdDiario=ba.iIdDiario ) ' +
          'Inner Join personal p On ' +
          '(bp.sContrato=p.sContrato And bp.sIdPersonal=p.sIdPersonal)' +
          'Where ba.dIdFecha =:Fecha And ba.sContrato=:Contrato And bp.sIdPersonal =:Partida ' +
          ' Group By ba.sNumeroOrden Order by sNumeroOrden');
      if rxReal.FieldValues['sAnexo'] = global_labelEquipo then
        qryConsulta.Sql.Add('select be.sContrato, be.sIdEquipo, be.dCantidad, e.sDescripcion, ' +
          'e.sMedida, ba.sNumeroOrden, be.dIdFecha From bitacoradeequipos be ' +
          'Inner Join bitacoradeactividades ba On ' +
          '(be.sContrato=ba.sContrato And be.dIdFecha=ba.dIdFecha And be.iIdDiario=ba.iIdDiario) ' +
          'Inner Join equipos e On ' +
          '(be.sContrato=e.sContrato And be.sIdEquipo=e.sIdEquipo)' +
          'Where ba.dIdFecha =:Fecha And ba.sContrato=:Contrato And be.sIdEquipo =:Partida');
      if (rxReal.FieldValues['sAnexo'] = global_labelPersonal) or (rxReal.FieldValues['sAnexo'] = global_labelEquipo) then
      begin
        qryConsulta.Params.ParamByName('Contrato').DataType := ftString;
        qryConsulta.Params.ParamByName('Contrato').Value := Global_Contrato;
        qryConsulta.Params.ParamByName('Fecha').DataType := ftDate;
        qryConsulta.Params.ParamByName('Fecha').Value := d3;
        qryConsulta.Params.ParamByName('Partida').DataType := ftString;
        qryConsulta.Params.ParamByName('Partida').Value := rxReal.FieldValues['sPartida'];
        qryConsulta.Open;

        aux1 := 1;
        i := 1;
        if qryConsulta.RecordCount > 0 then
        begin
          while not qryConsulta.eof do
          begin
            rxSolicitado.Append;
                          //Antes saco de la posicion el frente en el qe estoy laborando
            for i := i to 7 do
            begin
              if qryConsulta.fieldValues['sNumeroOrden'] = arreglo[i] then
                Aux1 := i;
            end;
            rxSolicitado.FieldValues['sContrato'] := Global_Contrato;
            if rxReal.FieldValues['sAnexo'] = global_labelPersonal then
            begin
              if (rxReal.FieldValues['sTipoRecurso'] <> 'PU') and (rxReal.FieldValues['sTipoRecurso'] <> 'PE-A') then
              begin
                rxSolicitado.FieldValues['sPartida'] := rxReal.FieldValues['sAgrupaPersonal']
              end
              else
                rxSolicitado.FieldValues['sPartida'] := rxReal.FieldValues['sPartida'];
            end
            else
              rxSolicitado.FieldValues['sPartida'] := rxReal.FieldValues['sPartida'];

            if (rxReal.FieldValues['sTipoRecurso'] <> 'PU') and (rxReal.FieldValues['sTipoRecurso'] <> 'PE-A') then
            begin
              if rxReal.FieldValues['sAnexo'] = global_labelPersonal then
              begin
                rxSolicitado.FieldValues['sTipoRecurso'] := global_labelPersonal;
                rxSolicitado.FieldValues['sDescribeTipo'] := 'ANEXO ' + global_labelPersonal;
              end
              else
              begin
                rxSolicitado.FieldValues['sTipoRecurso'] := global_labelEquipo;
                rxSolicitado.FieldValues['sDescribeTipo'] := 'ANEXO ' + global_labelEquipo;
              end;
            end
            else
            begin
              rxSolicitado.FieldValues['sTipoRecurso'] := rxReal.FieldValues['sTipoRecurso'];
              rxSolicitado.FieldValues['sDescribeTipo'] := rxReal.FieldValues['sDescribeRecurso'];
            end;
            rxSolicitado.FieldValues['iSolicitado'] := rxReal.FieldValues['dCantidad'];
            rxSolicitado.FieldValues['sTipo'] := rxReal.FieldValues['sAnexo'];
            rxSolicitado.FieldValues['sDescripcion'] := qryConsulta.FieldValues['sDescripcion'];
            rxSolicitado.FieldValues['sMedida'] := qryConsulta.FieldValues['sMedida'];

            aux := 'Plataforma' + IntTostr(Aux1);
            rxSolicitado.FieldValues[aux] := qryConsulta.fieldValues['dCantidad'];
            aux := '';
            aux := 'NomPlataforma' + IntTostr(Aux1);
            rxSolicitado.FieldValues[aux] := qryConsulta.fieldValues['sNumeroOrden'];
            qryConsulta.Next;
            i := 1;
            rxSolicitado.Post;
          end;
        end
        else
        begin
          qryConsulta.Active := False;
          qryConsulta.SQL.Clear;
          if rxReal.FieldValues['sAnexo'] = global_labelPersonal then
            qryConsulta.Sql.Add('select p.sMedida, p.`sIdPersonal`, p.sDescripcion ' +
              'From personal p ' +
              'Where p.sIdPersonal=:Partida And p.sContrato=:Contrato ' +
              'And p.sDescripcion not like "%TIEMPO EXTRA%"');
          if rxReal.FieldValues['sAnexo'] = global_labelEquipo then
            qryConsulta.Sql.Add('select e.sMedida, e.`sIdEquipo`, e.sDescripcion ' +
              'From equipos e ' +
              'Where e.sIdEquipo=:Partida And e.sContrato=:Contrato');
          qryConsulta.Params.ParamByName('Contrato').DataType := ftString;
          qryConsulta.Params.ParamByName('Contrato').Value := Global_Contrato;
          qryConsulta.Params.ParamByName('Partida').DataType := ftString;
          qryConsulta.Params.ParamByName('Partida').Value := rxReal.FieldValues['sPartida'];
          qryConsulta.Open;

          if qryConsulta.RecordCount > 0 then
          begin
            sDescripcion := qryConsulta.fieldValues['sDescripcion'];
            sMedida := qryConsulta.fieldValues['sMedida'];
            qryConsulta.Active := False;
            qryConsulta.SQL.Clear;
            qryConsulta.Sql.Add('select DISTINCT(sNumeroOrden) From bitacoradeactividades ' +
              'Where sContrato=:Contrato And dIdFecha =:Fecha ');
            qryConsulta.Params.ParamByName('Contrato').DataType := ftString;
            qryConsulta.Params.ParamByName('Contrato').Value := Global_Contrato;
            qryConsulta.Params.ParamByName('Fecha').DataType := ftDate;
            qryConsulta.Params.ParamByName('Fecha').Value := d3;
            qryConsulta.Open;
            if qryConsulta.RecordCount > 0 then
            begin
              rxSolicitado.Append;
              if rxReal.FieldValues['sAnexo'] = global_labelPersonal then
              begin
                if (rxReal.FieldValues['sTipoRecurso'] <> 'PU') and (rxReal.FieldValues['sTipoRecurso'] <> 'PE-A') then
                begin
                  rxSolicitado.FieldValues['sPartida'] := rxReal.FieldValues['sAgrupaPersonal']
                end
                else
                  rxSolicitado.FieldValues['sPartida'] := rxReal.FieldValues['sPartida'];
              end
              else
                rxSolicitado.FieldValues['sPartida'] := rxReal.FieldValues['sPartida'];

              if (rxReal.FieldValues['sTipoRecurso'] <> 'PU') and (rxReal.FieldValues['sTipoRecurso'] <> 'PE-A') then
              begin
                if rxReal.FieldValues['sAnexo'] = global_labelPersonal then
                begin
                  rxSolicitado.FieldValues['sTipoRecurso'] := global_labelPersonal;
                  rxSolicitado.FieldValues['sDescribeTipo'] := 'ANEXO ' + global_labelPersonal;
                end
                else
                begin
                  rxSolicitado.FieldValues['sTipoRecurso'] := global_labelEquipo;
                  rxSolicitado.FieldValues['sDescribeTipo'] := 'ANEXO ' + global_labelEquipo;
                end;
              end
              else
              begin
                rxSolicitado.FieldValues['sTipoRecurso'] := rxReal.FieldValues['sTipoRecurso'];
                rxSolicitado.FieldValues['sDescribeTipo'] := rxReal.FieldValues['sDescribeRecurso'];
              end;
              rxSolicitado.FieldValues['iSolicitado'] := rxReal.FieldValues['dCantidad'];
              rxSolicitado.FieldValues['sMedida'] := sMedida;
              rxSolicitado.FieldValues['sTipo'] := rxReal.FieldValues['sAnexo'];
              rxSolicitado.FieldValues['sDescripcion'] := sDescripcion;
              while not qryConsulta.Eof do
              begin
                rxSolicitado.Append;
                aux := 'Plataforma' + IntTostr(Aux1);
                rxSolicitado.FieldValues[aux] := 0;
                aux := '';
                aux := 'NomPlataforma' + IntTostr(Aux1);
                rxSolicitado.FieldValues[aux] := qryConsulta.fieldValues['sNumeroOrden'];
                qryConsulta.Next;
                aux1 := aux1 + 1;
                rxSolicitado.Post;
              end;
            end;
          end;
        end;
      end;
      rxReal.Next;
    end
  end
  else
    MessageDlg('NO HAY VIGENCIA PARA ESA FECHA ', mtError, [mbOk], 0);

  Consolidado.Active := False;
  Consolidado.SQL.Clear;
  Consolidado.SQL.Add('select og.sOficioAutorizacion, mr.sContrato, mr.dFechaVigencia  ' +
    'from movtorecursosxoficio mr  ' +
    'Inner Join ordenesdetrabajogral og On ' +
    '(og.sContrato=mr.sContrato And og.dFechaVigencia=mr.dFechaVigencia) ' +
    'And mr.scontrato =:Contrato ' +
    'And mr.`dFechaVigencia` =:Vigencia ');

  Consolidado.Params.ParamByName('Contrato').DataType := ftString;
  Consolidado.Params.ParamByName('Contrato').Value := Global_Contrato;
  Consolidado.Params.ParamByName('Vigencia').DataType := ftDate;
  Consolidado.Params.ParamByName('Vigencia').Value := d4;
  Consolidado.open;

  dsConOt.Dataset := Consolidado;

  rDiario.DataSets.Add(dsConOt);
  rDiario.DataSets.Add(dsSolicitado);
  global_fecha_reportecons := dParamFecha;

  if Consolidado.RecordCount > 0 then
  begin
    rDiario.LoadFromFile(Global_Files + 'ConsolidadoPersonalEquipo.fr3');
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', dParamFecha, tOrigen);
    rDiario.ShowReport(True);
  end;

  Consolidado.Destroy;
  dsSolicitado.Destroy;
  dsConOt.Destroy;
  rxReal.Destroy;
  rxSolicitado.Destroy;
  qryPersonalSol.Destroy;
  qrySolicitado.Destroy;
  qryConsulta.Destroy;
  qryBuscarAux.Destroy;
  procLimpia();
end;

//soad -> Funcion implementada para la corrrecion de los avances en 0 al momento de editar una partida..
//**********************************************************************************************************

procedure RegeneraPartida(dParamTipoActividad, dParamNumeroOrden, dParamWbs, dParamNumeroActividad, sParamConvenio: string; dParamCantidad: Real);
var
  iDiario: Integer;
  dAvance,
    dAvanceFase: Double;
  dInstalado: Double;
  dAvanceAnterior: Double;
  dCantidad: Double;
  dCantidadAnterior: Double;
  dCantidadenFase: Double;
  mDescripcion: WideString;
  iFase: Byte;
  EsPartidaTerminal: Boolean;
  Entra: Boolean;
  frmBitacoraDepartamental_2: TComponent;
begin
  if Connection.configuracion.FieldValues['sAvanceBitacora'] <> 'Porcentaje' then
    if Entra then
      if dParamTipoActividad = 'Actividad' then
      begin
        dInstalado := 0;
              // Inicializo Alcances en 0
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET dAvance = 0 WHERE sContrato = :contrato and ' +
          'sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := dParamNumeroOrden;
        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('Wbs').Value := dParamWbs;
        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
        connection.zCommand.Params.ParamByName('Actividad').Value := dParamNumeroActividad;
        connection.zCommand.ExecSQL;

              // Elimino de la Bitacora todos registros productos de la bitacora de alcances
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('DELETE FROM bitacoradeactividades WHERE sContrato = :contrato And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And lAlcance = "Si"');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := dParamNumeroOrden;
        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('Wbs').Value := dParamWbs;
        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
        connection.zCommand.Params.ParamByName('Actividad').Value := dParamNumeroActividad;
        connection.zCommand.ExecSQL;

              // Inicializo la bitacora en 0
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dAvance = 0 WHERE sContrato = :contrato And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := dParamNumeroOrden;
        connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('Wbs').Value := dParamWbs;
        connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
        connection.zCommand.Params.ParamByName('Actividad').Value := dParamNumeroActividad;
        connection.zCommand.ExecSQL;


              // Primero, se verifica si la partida existe dentro de la bitacora de alcances ....
        Bitacora := tzQuery.Create(frmBitacoraDepartamental_2);
        Bitacora.Connection := connection.zConnection;
        Bitacora.Active := False;
        Bitacora.SQL.Clear; {10/marzo/2010: adal, swbs en alcancesxactividad}
        Bitacora.SQL.Add('select b.dIdFecha, b.sIdTurno, b.iIdDiario, b.iFase, b.dCantidad, b.dAvance,a.sWbs, b.mDescripcion, a.dAvance as dAlcance from bitacoradealcances b ' +
          ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroOrden=b.sNumeroOrden and b.sWbs=ao.sWbs and b.sNumeroActividad=ao.sNumeroActividad  )   ' +
          'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad  and ao.sWbsContrato=a.sWbs   And b.iFase = a.iFase) ' +
          'where b.sContrato = :contrato and b.sNumeroOrden = :Orden And b.sWbs = :Wbs And ' +
          'b.sNumeroActividad = :Actividad  and ao.sIdConvenio=:convenio  order by iFase, b.dIdFecha, b.sIdTurno, b.iIdDiario');
        Bitacora.Params.ParamByName('Contrato').DataType := ftString;
        Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
        Bitacora.Params.ParamByName('Orden').DataType := ftString;
        Bitacora.Params.ParamByName('Orden').Value := dParamNumeroOrden;
        Bitacora.Params.ParamByName('Wbs').DataType := ftString;
        Bitacora.Params.ParamByName('Wbs').Value := dParamWbs;
        Bitacora.Params.ParamByName('Actividad').DataType := ftString;
        Bitacora.Params.ParamByName('Actividad').Value := dParamNumeroActividad;
        Bitacora.Params.ParamByName('Convenio').DataType := ftString;
        Bitacora.Params.ParamByName('Convenio').Value := sParamConvenio;
        Bitacora.Open;
        if Bitacora.RecordCount > 0 then
        begin
          iFase := 0;

          while not Bitacora.Eof do
          begin

            if iFase <> Bitacora.FieldValues['iFase'] then
            begin
              iFase := Bitacora.FieldValues['iFase'];
              dCantidadenFase := 0;
              dAvanceFase := 0;

                          // Comprobamos si la nueva fase es una fase terminal .....
              Connection.qryBusca.Active := False;
              Connection.qryBusca.SQL.Clear;
              Connection.qryBusca.SQL.Add('Select sContrato From alcancesxactividad Where sContrato = :Contrato and sWbs=:wbs  And sNumeroActividad = :Actividad And iFase > :Fase');
              Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
              Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Actividad').Value := dParamNumeroActividad;
              Connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
              Connection.qryBusca.Params.ParamByName('Fase').Value := Bitacora.FieldValues['iFase'];
              Connection.qryBusca.Params.ParamByName('wbs').DataType := ftInteger;
              Connection.qryBusca.Params.ParamByName('wbs').Value := Bitacora.FieldValues['sWbs'];
              Connection.qryBusca.Open;
              if Connection.qryBusca.RecordCount = 0 then
                EsPartidaTerminal := True
              else
                EsPartidaTerminal := False;
            end;
            dAvance := 0;
            dAvanceAnterior := 0;
            mDescripcion := Bitacora.fieldValues['mDescripcion'];
            if dParamCantidad = 0 then
              dAvance := 0
            else
              dAvance := (Bitacora.FieldValues['dAlcance'] / 100) * ((100 * Bitacora.FieldValues['dCantidad']) / dParamCantidad);

            if (dCantidadenFase + Bitacora.FieldValues['dCantidad']) >= dParamCantidad then
              dAvance := Bitacora.FieldValues['dAlcance'] - dAvanceFase;

            if (dAvanceAnterior + dAvance) >= 100 then
              dAvance := 100 - dAvanceAnterior;

            dAvanceAnterior := dAvanceAnterior + dAvance;
            dCantidadenFase := dCantidadenFase + Bitacora.FieldValues['dCantidad'];
            dAvanceFase := dAvanceFase + dAvance;


                      // Una Vez obtenido el valor del nuevo avance de la partida ..
                      // Se almacena en la bitacora ...
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET dAvance = :Avance ' +
              'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
            connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Avance').value := dAvance;
            connection.zCommand.ExecSQL;

                      // Primero Busco que exista la referencia con al bitacora de actividades

            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('select  sContrato from bitacoradeactividades ' +
              'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario And ' +
              'sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
            connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
            connection.qryBusca.Params.ParamByName('contrato').value := Global_Contrato;
            connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
            connection.qryBusca.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
            connection.qryBusca.Params.ParamByName('diario').DataType := ftInteger;
            connection.qryBusca.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
            connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
            connection.qryBusca.Params.ParamByName('orden').value := dParamNumeroOrden;
            connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
            connection.qryBusca.Params.ParamByName('wbs').value := dParamWbs;
            connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
            connection.qryBusca.Params.ParamByName('actividad').value := dParamNumeroActividad;
            connection.qryBusca.Open;
            if connection.QryBusca.RecordCount > 0 then
            begin
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET mDescripcion = :Descripcion, dAvance = :Avance ' +
                'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario And ' +
                'sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
              connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
              connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
              connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Avance').value := dAvance;
              connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
              connection.zCommand.Params.ParamByName('descripcion').value := mDescripcion;
              connection.zCommand.Params.ParamByName('orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('orden').value := dParamNumeroOrden;
              connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
              connection.zCommand.Params.ParamByName('wbs').value := dParamWbs;
              connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
              connection.zCommand.Params.ParamByName('actividad').value := dParamNumeroActividad;
              connection.zCommand.ExecSQL;
            end
            else
            begin
                          // Si no realizo actualizacion, indica que no existe la liga con la bitacora de actividades ...
                          // Insertar el registro a la bitacora de forma manual ...

                          // Primero se obtiene el maximo diario ...
              MaximoDiario := tzQuery.Create(frmBitacoraDepartamental_2);
              MaximoDiario.Connection := connection.zConnection;
              MaximoDiario.Active := False;
              MaximoDiario.SQL.Clear;
              MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades where ' +
                '( sContrato = :contrato ) and ( dIdFecha = :fecha ) Group By sContrato , dIdFecha');
              MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
              MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
              MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
              MaximoDiario.Params.ParamByName('Fecha').Value := Bitacora.FieldValues['dIdFecha'];
              MaximoDiario.Open;
              if MaximoDiario.FieldByName('TotalDiario').IsNull then
                iDiario := 1
              else
                iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                  ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, dAvance ,mDescripcion ) ' +
                  ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :wbs, :actividad, :tipo, :Avance, :descripcion)');
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                connection.zCommand.Params.ParamByName('orden').value := dParamNumeroOrden;
                connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                connection.zCommand.Params.ParamByName('diario').value := iDiario;
                connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                connection.zCommand.Params.ParamByName('turno').value := Bitacora.FieldValues['sIdTurno'];
                connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                connection.zCommand.Params.ParamByName('depto').value := global_depto;
                connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                connection.zCommand.Params.ParamByName('Wbs').value := dParamWbs;
                connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                connection.zCommand.Params.ParamByName('actividad').value := dParamNumeroActividad;
                connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                connection.zCommand.Params.ParamByName('tipo').value := connection.configuracion.fieldvalues['sTipoAlcance'];
                connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                connection.zCommand.Params.ParamByName('descripcion').value := mDescripcion;
                connection.zCommand.ExecSQL;

                              // Despues de meter a la bitacora el nuevo registro, actualizo la bitacora de alcances con el nuevo IdDiario Asignado
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET iIdDiario = :NewDiario ' +
                  'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
                connection.zCommand.Params.ParamByName('NewDiario').DataType := ftInteger;
                connection.zCommand.Params.ParamByName('NewDiario').value := iDiario;
                connection.zCommand.ExecSQL;
              except
                MessageDlg('Proceso(Actualización de Bitacora): Ocurrio un error al actualizar el avance de la partida en la bitacora de actividades', mtWarning, [mbOk], 0);
              end
            end;
            if EsPartidaTerminal then
            begin
              dInstalado := dInstalado + Bitacora.FieldValues['dCantidad'];
                          // Ahora Introduzco la cantidad en la partida si se trata de una partida terminal ...

              MaximoDiario.Active := False;
              MaximoDiario.SQL.Clear;
              MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades where ' +
                'sContrato = :contrato and dIdFecha = :fecha Group By sContrato');
              MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
              MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
              MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
              MaximoDiario.Params.ParamByName('Fecha').Value := Bitacora.FieldValues['dIdFecha'];
              MaximoDiario.Open;
              if MaximoDiario.FieldByName('TotalDiario').IsNull then
                iDiario := 1
              else
                iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;
              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                  ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, dCantidad , mDescripcion , lAlcance) ' +
                  ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :wbs, :actividad, :tipo, :cantidad, :descripcion, "Si" )');
                connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
                connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                connection.zCommand.Params.ParamByName('diario').value := iDiario;
                connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                connection.zCommand.Params.ParamByName('turno').value := Bitacora.FieldValues['sIdTurno'];
                connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                connection.zCommand.Params.ParamByName('depto').value := global_depto;
                connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                connection.zCommand.Params.ParamByName('orden').value := dParamNumeroOrden;
                connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                connection.zCommand.Params.ParamByName('wbs').value := dParamWbs;
                connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                connection.zCommand.Params.ParamByName('actividad').value := dParamNumeroActividad;
                connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                connection.zCommand.Params.ParamByName('tipo').value := connection.configuracion.fieldvalues['sTipoOperacion'];
                connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('cantidad').value := Bitacora.FieldValues['dCantidad'];
                connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                connection.zCommand.Params.ParamByName('descripcion').value := Bitacora.FieldValues['mDescripcion'];
                connection.zCommand.ExecSQL;
              except
                MessageDlg('ERROR: Ocurrio un error al actualizar en el programa la partida No. ' + dParamNumeroActividad + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
              end
            end;
            Bitacora.Next;
          end;

        end
        else
        begin
                  // Inicializo Query . Para solo enviar Parametros en el ciclo
          Bitacora.Active := False;
          Bitacora.SQL.Clear;
          Bitacora.SQL.Add('select iIdDiario, dIdFecha, sIdTurno, dCantidad, dAvance, mDescripcion from bitacoradeactividades ' +
            'where sContrato = :contrato and sNumeroOrden = :Orden and dCantidad > 0 And sWbs = :Wbs And ' +
            'sNumeroActividad = :Actividad and lAlcance = "No" order by dIdFecha, sIdTurno, iIdDiario');
          Bitacora.Params.ParamByName('Contrato').DataType := ftString;
          Bitacora.Params.ParamByName('Contrato').Value := global_contrato;
          Bitacora.Params.ParamByName('Orden').DataType := ftString;
          Bitacora.Params.ParamByName('Orden').Value := dParamNumeroOrden;
          Bitacora.Params.ParamByName('Wbs').DataType := ftString;
          Bitacora.Params.ParamByName('Wbs').Value := dParamWbs;
          Bitacora.Params.ParamByName('Actividad').DataType := ftString;
          Bitacora.Params.ParamByName('Actividad').Value := dParamNumeroActividad;
          Bitacora.Open;

          dAvance := 0;
          dAvanceAnterior := 0;
          while not Bitacora.Eof do
          begin
            dCantidad := Bitacora.FieldValues['dCantidad'];
            dInstalado := dInstalado + Bitacora.FieldValues['dCantidad'];
            if dParamCantidad = 0 then
              dAvance := 0
            else {Aqui aplicamos el calculoo que aplican para revision que es sumar lo instalado + cant actual - }
            begin
                            //dAvance := (100 / dParamCantidad) * tdCantidad.Value;  // 22 Febrero de 2010
              if dParamCantidad > 0 then
              begin
                dAvance := ((100 / dParamCantidad) * (dCantidad + dInstalado));
                dAvance := dAvance - dAvanceAnterior;
              end;
            end;
                       {-----------------------------------------}
            if (dAvanceAnterior + dAvance) >= 100 then
              dAvance := 100 - dAvanceAnterior;
            dAvanceAnterior := dAvanceAnterior + dAvance;
            try
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dAvance = :Avance ' +
                'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('fecha').value := Bitacora.FieldValues['dIdFecha'];
              connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
              connection.zCommand.Params.ParamByName('diario').value := Bitacora.FieldValues['iIdDiario'];
              connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Avance').value := dAvance;
              connection.zCommand.ExecSQL;
            except
              MessageDlg('Proceso(Actualización de Bitacora): Error al definir el registro de la bitacora como alcance', mtWarning, [mbOk], 0);
            end;
            Bitacora.Next;
          end;

        end;

              //Ahora los acumulados se almacenan en los catalogos principales ...
              // Primero en el programa de trabajo
        try
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE actividadesxorden SET dInstalado = :Instalado, dExcedente = :Excedente ' +
            'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
          connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('convenio').value := global_convenio;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').value := dParamNumeroOrden;
          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('Wbs').value := dParamWbs;
          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('Actividad').value := dParamNumeroActividad;
          if (dInstalado > dParamCantidad) then
          begin
            connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidad;
            connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Excedente').value := dInstalado - dParamCantidad;
          end
          else
          begin
            connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Instalado').value := dInstalado;
            connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Excedente').value := 0;
          end;
          connection.zCommand.ExecSQL;
        except
          MessageDlg('ERROR: Ocurrio un error al actualizar en el programa la partida No. ' + dParamWbs + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
        end;

              // Ahora Ajusto la Partida del Anexo ....
        Connection.qryBusca.Active := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select Sum(dInstalado + dExcedente) as dTotal From actividadesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And ' +
          'sNumeroActividad = :Actividad And sTipoActividad = "Actividad" Group By sNumeroActividad');
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
        Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Actividad').Value := dParamNumeroActividad;
        Connection.qryBusca.Open;
        if Connection.qryBusca.RecordCount > 0 then
        begin
          Connection.qryBusca2.Active := False;
          Connection.qryBusca2.SQL.Clear;
          Connection.qryBusca2.SQL.Add('Select dCantidadAnexo from actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad');
          Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Actividad').Value := dParamWbs;
          Connection.qryBusca2.Open;
          if Connection.qryBusca2.RecordCount > 0 then
          begin
            try
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE actividadesxanexo SET dInstalado = :Instalado, dExcedente = :Excedente ' +
                'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
              connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('convenio').value := global_convenio;
              connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
              connection.zCommand.Params.ParamByName('Actividad').value := dParamWbs;
              if Connection.qryBusca.FieldValues['dTotal'] > Connection.qryBusca2.FieldValues['dCantidadAnexo'] then
              begin
                connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('Instalado').value := Connection.qryBusca2.FieldValues['dCantidadAnexo'];
                connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('Excedente').value := Connection.qryBusca.FieldValues['dTotal'] - Connection.qryBusca2.FieldValues['dCantidadAnexo'];
              end
              else
              begin
                connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('Instalado').value := Connection.qryBusca.FieldValues['dTotal'];
                connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
                connection.zCommand.Params.ParamByName('Excedente').value := 0;
              end;
              connection.zCommand.ExecSQL;
            except
              MessageDlg('ERROR: Ocurrio un error al actualizar en el programa la partida No. ' + dParamWbs + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
            end
          end
        end
      end
end;

// soad -> Registro de movimientos del usuario dentro del sistema Inteligent...
// *****************************************************************************

procedure Kardex(dParamOrigen, dParamMov, dParamActiv, dParamTipo, dParamFrente, dParamEstima, dParamGenerador: string);
begin
    // Actualizo Kardex del Sistema ....
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
    'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
  connection.zCommand.Params.ParamByName('Usuario').DataType := ftString;
  connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := Date;
  connection.zCommand.Params.ParamByName('Hora').DataType := ftString;
  connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now);
  if dParamFrente <> '' then
  begin
    connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString;
    connection.zCommand.Params.ParamByName('Descripcion').Value := dParamMov + ' - Contrato [' + global_contrato + '] Convenio [' + global_convenio + '] Frente [' + dParamFrente + '] ' + dParamTipo + ' [' + dParamActiv + ']';
  end
  else
  begin
    connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString;
    connection.zCommand.Params.ParamByName('Descripcion').Value := dParamMov + ' - Contrato [' + global_contrato + '] Convenio [' + global_convenio + '] ' + dParamTipo + ' [' + dParamActiv + ']';
  end;
  connection.zCommand.Params.ParamByName('Origen').DataType := ftString;
  connection.zCommand.Params.ParamByName('Origen').Value := dParamOrigen;
  connection.zCommand.ExecSQL;

end;

//Procedimientos Calculo de Precios Unitarios en Automatico..
//********************************************************************

procedure CalculoIndirectos(dParamCostoDirecto, dParamCostoIndirecto, dParamFinanciamiento, dParamUitlidad, dParamCargoAdic, dParamCargoAdic2, dParamCargoAdic3: double; dParamTipoExplosion: string);
var
  x, y, z, i: integer;
  almacen,
    linea: string;
  descripcion,
    sentencia: string;
  CostoTotalMN, CostoTotalDLL, TotalIndirectosMN, TotalIndirectosDLL, SumaMN, SumaDLL, AuxSumaMN, AuxSumaDLL: double;
  dIndirecto, dFinanciamiento, dUtilidad, dCargoAdicional, dOtroCargo: double;
  Cuadrilla: array[1..10, 1..3] of double;
begin
  if dParamTipoExplosion = 'Recursos por Concepto/Partida' then
    dParamTipoExplosion := 'recursosanexo'
  else
    dParamTipoExplosion := 'recursosanexosnuevos';

  connection.QryBusca2.Active;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select dCostoDirecto, dCostoIndirectos, dFinanciamiento, dUtilidad, dCargosAdicionales, dCargosAdicionales2, dCargosAdicionales3, sSimbolo ' +
    'from configuracion where sContrato = :Contrato');
  connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
  connection.QryBusca2.Open;

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select sContrato, sNumeroActividad, sWbs, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dVentaDLL ' +
    'from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad" ' +
    'order by iItemOrden ');
  connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
  connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
    while not connection.zCommand.Eof do
    begin
      CostoTotalMN := 0;
      CostoTotalDLL := 0;
      for x := 1 to 5 do
      begin
        linea := '';
        almacen := '';
        descripcion := 'sDescripcion';
        if tipo[x] = 'MATERIAL' then
        begin
          almacen := 'and i.sIdAlmacen = ""';
          descripcion := 'mDescripcion';
        end;
        if tipo[x] = 'PERSONAL' then
          linea := 'order by ra.fila';

        if dParamTipoExplosion = 'recursosanexo' then
          sentencia := 'select ra.' + folio[x] + ' as Id, i.' + Descripcion + ' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL from ' + tablas[x] + ' ra  ' +
            'LEFT join ' + catalogo[x] + ' i  ' +
            'on (i.sContrato = ra.sContrato and i.' + folio[x] + ' = ra.' + folio[x] + ' ' + almacen + ' ) ' +
            'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad ' + linea + ' ';

        if dParamTipoExplosion = 'recursosanexosnuevos' then
          sentencia := 'select ra.' + folio[x] + ' as Id, i.' + Descripcion + ' as Descripcion, i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL from ' + tablas_2[x] + ' ra ' +
            'LEFT join ' + catalogo[x] + ' i  ' +
            'on (i.sContrato = ra.sContrato and i.' + folio[x] + ' = ra.' + folio[x] + ' ' + almacen + ' ) ' +
            'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad ' + linea + ' ';
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add(sentencia);
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
                       //CALCULO DE RENDIMIENTO....
          i := 0;
          sumaMN := 0;
          SumaDLL := 0;
          AuxSumaMN := 0;
          AuxSumaDLL := 0;
          Cuadrilla[i, 1] := 0;
                       //Guardamos el rendimiento de personal por cuadrilla y la suma total...
          connection.QryBusca.First;
          while not connection.QryBusca.Eof do
          begin
            if connection.QryBusca.FieldValues['Id'] = 'CUADRILLAS' then
            begin
              if i > 0 then
              begin
                Cuadrilla[i, 2] := SumaMN;
                Cuadrilla[i, 3] := SumaDLL;
              end;
              i := i + 1;
              SumaMN := 0;
              SumaDLL := 0;
              Cuadrilla[i, 1] := 0;
            end;
            if connection.QryBusca.FieldValues['Id'] = 'RENDIMIENTO' then
              Cuadrilla[i, 1] := connection.QryBusca.FieldValues['dCantidad'];

            SumaMN := SumaMN + connection.QryBusca.FieldValues['dCantidad'] * connection.QryBusca.FieldValues['dCostoMN'];
            SumaDLL := SumaDLL + connection.QryBusca.FieldValues['dCantidad'] * connection.QryBusca.FieldValues['dCostoDLL'];
            AuxSumaMN := AuxSumaMN + connection.QryBusca.FieldValues['dCantidad'] * connection.QryBusca.FieldValues['dCostoMN'];
            AuxSumaDLL := AuxSumaDLL + connection.QryBusca.FieldValues['dCantidad'] * connection.QryBusca.FieldValues['dCostoDLL'];
            connection.QryBusca.Next;
          end;

          if i > 0 then
          begin
            Cuadrilla[i, 2] := SumaMN;
            Cuadrilla[i, 3] := SumaDLL;
            AuxSumaMN := 0;
            AuxSumaDLL := 0;
          end;

                       //Se calcula el rendimientos de personal.. por cuadrilla..
          for y := 1 to i do
          begin
            if connection.QryBusca2.FieldValues['sSimbolo'] = '*' then
            begin
              Cuadrilla[y, 2] := Cuadrilla[y, 2] * Cuadrilla[y, 1];
              Cuadrilla[y, 3] := Cuadrilla[y, 3] * Cuadrilla[y, 1];
            end;

            if connection.QryBusca2.FieldValues['sSimbolo'] = '/' then
            begin
              Cuadrilla[y, 2] := Cuadrilla[y, 2] * Cuadrilla[y, 1];
              Cuadrilla[y, 3] := Cuadrilla[y, 3] * Cuadrilla[y, 1];
            end;

            AuxSumaMN := AuxSumaMN + Cuadrilla[y, 2];
            AuxSumaDLL := AuxSumaDLL + Cuadrilla[y, 3];
          end;
                       //*TERMINA CALCULO DE RENDIMIENTO....

          CostoTotalMN := CostoTotalMN + AuxSumaMN;
          CostoTotalDLL := CostoTotalDLL + AuxSumaDLL;
        end;
      end;
      TotalIndirectosMN := CostoTotalMN;
      TotalIndirectosDLL := CostoTotalDLL;

              //Actualizacion del P.U. de acuerdo a los nuevos Cargos adicionales..
      dIndirecto := connection.QryBusca2.FieldValues['dCostoIndirectos'] * CostoTotalMN / 100;
      dFinanciamiento := connection.QryBusca2.FieldValues['dFinanciamiento'] * (CostoTotalMN + dIndirecto) / 100;
      dUtilidad := connection.QryBusca2.FieldValues['dUtilidad'] * (CostoTotalMN + dIndirecto + dFinanciamiento) / 100;
      dCargoAdicional := connection.QryBusca2.FieldValues['dCargosAdicionales'] * (CostoTotalMN + dIndirecto + dFinanciamiento + dUtilidad) / 100;
      dOtroCargo := connection.QryBusca2.FieldValues['dCargosAdicionales2'] * (CostoTotalMN + dIndirecto + dFinanciamiento + dUtilidad + dCargoAdicional) / 100;
      TotalIndirectosMN := TotalIndirectosMN + dIndirecto + dFinanciamiento + dUtilidad + dCargoAdicional + dOtroCargo;

      dIndirecto := connection.QryBusca2.FieldValues['dCostoIndirectos'] * CostoTotalDLL / 100;
      dFinanciamiento := connection.QryBusca2.FieldValues['dFinanciamiento'] * (CostoTotalDLL + dIndirecto) / 100;
      dUtilidad := connection.QryBusca2.FieldValues['dUtilidad'] * (CostoTotalDLL + dIndirecto + dFinanciamiento) / 100;
      dCargoAdicional := connection.QryBusca2.FieldValues['dCargosAdicionales'] * (CostoTotalDLL + dIndirecto + dFinanciamiento + dUtilidad) / 100;
      dOtroCargo := connection.QryBusca2.FieldValues['dCargosAdicionales2'] * (CostoTotalDLL + dIndirecto + dFinanciamiento + dUtilidad + dCargoAdicional) / 100;
      TotalIndirectosDLL := TotalIndirectosDLL + dIndirecto + dFinanciamiento + dUtilidad + dCargoAdicional + dOtroCargo;

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('Update actividadesxanexo set dVentaMN =:MN, dVentaDLL =:DLL where sContrato =:Contrato and sIdConvenio =:Convenio and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad = "Actividad"');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Convenio').AsString := global_convenio;
      connection.QryBusca.ParamByName('Wbs').AsString := connection.zCommand.FieldValues['sWbs'];
      connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
      connection.QryBusca.ParamByName('MN').AsFloat := TotalIndirectosMN;
      connection.QryBusca.ParamByName('DLL').AsFloat := TotalIndirectosDLL;
      connection.QryBusca.ExecSQL;
      connection.zCommand.Next;
    end;

         //Actualizacion de los paquetes..
    connection.QryBusca2.Active := False;
    Connection.QryBusca2.SQL.Clear;
    Connection.QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxanexo ' +
      'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
    Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
    Connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.QryBusca2.Open;
    while not Connection.QryBusca2.Eof do
    begin
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select sum(dCantidadAnexo * dVentaMN) as dMontoMN, sum(dCantidadAnexo * dVentaDLL) as dMontoDLL From actividadesxanexo ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sWBSAnterior = :Paquete Group By sWBSAnterior');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca.Params.ParamByName('Paquete').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update actividadesxanexo SET dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
          'Where sContrato = :Contrato And sIdConvenio = :Convenio And sWBS = :Paquete And sTipoActividad = "Paquete"');
        connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
        connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
        connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
        connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
        connection.zcommand.params.ParamByName('Paquete').DataType := ftString;
        connection.zcommand.params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
        connection.zcommand.params.ParamByName('MontoMN').DataType := ftFloat;
        connection.zcommand.params.ParamByName('MontoMN').Value := Connection.QryBusca.FieldValues['dMontoMN'];
        connection.zcommand.params.ParamByName('MontoDLL').DataType := ftFloat;
        connection.zcommand.params.ParamByName('MontoDLL').Value := Connection.QryBusca.FieldValues['dMontoDLL'];
        Connection.zCommand.ExecSQL;
        Connection.QryBusca2.Next
      end;
    end;
  end;
end;


function SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, Adjunto, texto: ansistring): boolean;
var
  res: boolean;
  Adj: TIdAttachmentFile;
  cadena: ansiString;

begin

  {connection.idMessage.FromList.EMailAddresses := dirOrigen;
  connection.idMessage.Recipients.EMailAddresses := dirdest;

  if cco <> '' then
    connection.idMessage.BccList.Add.Address := cco;
  if cc <> '' then
    connection.idMessage.CCList.Add.Address := cc;

  connection.idMessage.Subject := asunto;
  connection.idMessage.Body.Clear;
  connection.idMessage.Body.Text := texto;

  if Adjunto <> '' then
    adj := TIdAttachmentfile.Create(connection.idMessage.MessageParts, Adjunto)
  else
    adj := nil;
    //TIdAttachmentFile
  res := false;

  if passservidor <> '' then
  begin
    connection.idSMTP.Username := dirOrigen;
    connection.idSMTP.Password := passservidor;

    try
      try
        if not connection.idsmtp.Connected then
        begin
          connection.idsmtp.Connect;
          if connection.idsmtp.Connected then
        end;
        connection.idSMTP.Send(connection.IdMessage);
        Application.MessageBox('Mensaje enviado.', 'Aviso', MB_OK + MB_ICONINFORMATION);
        res := true;
        freeandnil(adj);
      except
        on e: eidosslcouldnotloadssllibrary do
        begin
          freeandnil(adj);
          result := SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, adjunto, texto);
        end;
      end;
    finally
      connection.idsmtp.Disconnect(true);
    end;
  end;
  }
  result := res;
end;


procedure procGeneradorConversiones(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lReporte: string; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad,
    sPaquete, Wbs: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
  x, num, p_sindespiece: integer;
  lContinua: boolean;
begin
  //Revisado por <ivan> ... 18 Julio 2011..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, c.sReportesCIA, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  if QryConfiguracion.RecordCount > 0 then
    global_MiReporte := QryConfiguracion.FieldValues['sReportesCIA'];

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sWbs', ftString, 50, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sPaquete', ftString, 20, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sIsometricoReferencia', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sEje', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sEje1', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sEje2', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sTipo', ftString, 20, True);
  rxGenerador.FieldDefs.Add('dNumVeces', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCaras', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAlto', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dLargo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAncho', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dSubtotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dTotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('bImagen', ftGraphic, 0, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sWbsAnterior, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, e1.sIsometricoReferencia, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador and e1.sWbsContrato = a.sWbs and e1.sNumeroActividad = a.sNumeroActividad ) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Order By a.sWbs, a.iItemOrden, e1.sIsometrico, e1.sPrefijo');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;


  if (QryGenerador.RecordCount > 0) then
  begin
    sNumeroActividad := '';
    sPaquete := '';
    while not QryGenerador.Eof do
    begin
      lContinua := False;
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
      QryAcumulados.SQL.Add('select * from estimaciondespiece where sContrato = :Contrato ' +
        'And sNumeroOrden = :Orden And sNumeroGenerador = :Generador ' +
        'And sWbs = :Wbs And sNumeroActividad = :Actividad And sIsometrico = :Isometrico ');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').value := Global_Contrato;
      QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
      QryAcumulados.Params.ParamByName('Orden').value := QryGenerador.FieldValues['sNumeroOrden'];
      QryAcumulados.Params.ParamByName('Generador').DataType := ftString;
      QryAcumulados.Params.ParamByName('Generador').value := QryGenerador.FieldValues['sNumeroGenerador'];
      QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
      QryAcumulados.Params.ParamByName('Wbs').value := QryGenerador.FieldValues['sWbs'];
      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
      QryAcumulados.Params.ParamByName('Actividad').value := QryGenerador.FieldValues['sNumeroActividad'];
      QryAcumulados.Params.ParamByName('Isometrico').DataType := ftString;
      QryAcumulados.Params.ParamByName('Isometrico').value := QryGenerador.FieldValues['sIsometrico'];
      QryAcumulados.Open;

      if QryAcumulados.RecordCount = 0 then
        Inc(p_sindespiece);

         {Generador tuberia,,}
      if lReporte = 'ReporteTuberia' then
      begin
        if QryAcumulados.RecordCount > 0 then
        begin
          while not QryAcumulados.Eof do
          begin
            if ((QryAcumulados.FieldValues['sEje'] = 'OC') or (QryAcumulados.FieldValues['sEje'] = 'oc') or
              (QryAcumulados.FieldValues['sEje'] = 'Oc') or (QryAcumulados.FieldValues['sEje'] = 'oC')) then
            begin
              QryAcumulados.Last;
              lContinua := True;
            end;
            QryAcumulados.Next;
          end;
        end;
      end;

         {Generador perimetro,,}
      if lReporte = 'ReportePerimetro' then
      begin
        QryAcumulados.First;
        while not QryAcumulados.Eof do
        begin
          if ((QryAcumulados.FieldValues['sEje'] = 'IPR') or (QryAcumulados.FieldValues['sEje'] = 'ipr') or
            (QryAcumulados.FieldValues['sEje'] = 'Ipr')) then
          begin
            QryAcumulados.Last;
            lContinua := True;
          end;
          QryAcumulados.Next;
        end;
      end;

        {Generador angulos,,}
      if lReporte = 'ReporteAngulo' then
      begin
        QryAcumulados.First;
        while not QryAcumulados.Eof do
        begin
          if ((QryAcumulados.FieldValues['sEje'] = 'LI') or (QryAcumulados.FieldValues['sEje'] = 'li') or
            (QryAcumulados.FieldValues['sEje'] = 'Li')) then
          begin
            QryAcumulados.Last;
            lContinua := True;
          end;
          QryAcumulados.Next;
        end;
      end;

      if lReporte = 'DespiezadoGeneral' then
      begin
            {buscamos los tipos de despieces existentes..}
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select * from perimetros group by sTipo ');
        connection.QryBusca2.Open;


        lContinua := True;

        QryAcumulados.First;
        while not QryAcumulados.Eof do
        begin
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
            if QryAcumulados.FieldValues['sEje'] = connection.QryBusca2.FieldValues['sTipo'] then
            begin
              lContinua := False;
              connection.QryBusca2.Last;
            end;
            connection.QryBusca2.Next;
          end;
          QryAcumulados.Next;
        end;
      end;

      if lContinua then
      begin
            {Buscamos el paquete de la actividad..}
        if sPaquete <> QryGenerador.FieldValues['sWbs'] then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion From actividadesxanexo ' +
            'Where sContrato = :Contrato And sIdConvenio =:Convenio and sWbs =:WbsAnterior and sTipoActividad = "Paquete"');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value := global_convenio;
          QryAcumulados.Params.ParamByName('WbsAnterior').DataType := ftString;
          QryAcumulados.Params.ParamByName('WbsAnterior').Value := QryGenerador.FieldValues['sWbsAnterior'];
          QryAcumulados.Open;

          if QryAcumulados.RecordCount > 0 then
          begin
            rxGenerador.Append;
            rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
            rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
            rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
            rxGenerador.FieldValues['sPaquete'] := 'Paquete';
            rxGenerador.FieldValues['sEje'] := '';
            rxGenerador.FieldValues['sWbs'] := QryGenerador.FieldValues['sWbs'];
            rxGenerador.FieldValues['sNumeroActividad'] := QryAcumulados.FieldValues['sNumeroActividad'];
            rxGenerador.FieldValues['mDescripcion'] := QryAcumulados.FieldValues['mDescripcion'];
            rxGenerador.Post;
            sPaquete := QryGenerador.FieldValues['sWbs'];
          end;
        end;

        rxGenerador.Append;
        rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
        rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
        rxGenerador.FieldValues['sWbs'] := QryGenerador.FieldValues['sWbs'];
        rxGenerador.FieldValues['sPaquete'] := 'Actividad';
        rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
        rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

        if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
          rxGenerador.FieldValues['lValida'] := True
        else
          rxGenerador.FieldValues['lValida'] := False;

        if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
          rxGenerador.FieldValues['lAutoriza'] := True
        else
          rxGenerador.FieldValues['lAutoriza'] := False;

        rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
        rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

        if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
        begin
          sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
          if lParamMultiple then
          begin
            QryAcumulados.Active := False;
            QryAcumulados.SQL.Clear;
            QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
              'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbsContrato = :Wbs And sTipoActividad = "Actividad"');
            QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
            QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
            QryAcumulados.Params.ParamByName('orden').DataType := ftString;
            QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
            QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
            QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
            QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
            QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
            QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
            QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
            QryAcumulados.Open;

            dCantidadOrden := 0;
            while not QryAcumulados.Eof do
            begin
              dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
              QryAcumulados.Next
            end;

            QryAcumulados.Active := False;
            QryAcumulados.SQL.Clear;
            QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
              'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
              'e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbsContrato = :Wbs And e.sNumeroActividad = :Actividad) ' +
              'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
              'Group By e.sNumeroActividad');
            QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
            QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
            QryAcumulados.Params.ParamByName('orden').DataType := ftString;
            QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
            QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
            QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
            QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
            QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
            QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
            QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
            QryAcumulados.Open;

            dAcumuladoOrden := 0;
            if QryAcumulados.RecordCount > 0 then
              dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
            'e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbsContrato = :Wbs And e.sNumeroActividad = :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;

          dAcumuladoAnexo := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
        end;

        rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
        rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
        rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
        rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
        rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
        rxGenerador.FieldValues['sIsometricoReferencia'] := QryGenerador.FieldValues['sIsometricoReferencia'];
        rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
        rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
        rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
        rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
        rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
        rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
        rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
        rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];

            {Ahora consultamos las tablas de conversiones...18 Julio 2010 }
        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('select * from estimaciondespiece where sContrato = :Contrato ' +
          'And sNumeroOrden = :Orden And sNumeroGenerador = :Generador ' +
          'And sWbs = :Wbs And sNumeroActividad = :Actividad And sIsometrico = :Isometrico ');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').value := Global_Contrato;
        QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
        QryAcumulados.Params.ParamByName('Orden').value := QryGenerador.FieldValues['sNumeroOrden'];
        QryAcumulados.Params.ParamByName('Generador').DataType := ftString;
        QryAcumulados.Params.ParamByName('Generador').value := QryGenerador.FieldValues['sNumeroGenerador'];
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').value := QryGenerador.FieldValues['sWbs'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Params.ParamByName('Isometrico').DataType := ftString;
        QryAcumulados.Params.ParamByName('Isometrico').value := QryGenerador.FieldValues['sIsometrico'];
        QryAcumulados.Open;

        num := 1;
        while not QryAcumulados.Eof do
        begin
          if num > 1 then
          begin
            rxGenerador.Append;
            rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
            rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
            rxGenerador.FieldValues['sWbs'] := QryGenerador.FieldValues['sWbs'];
            rxGenerador.FieldValues['sPaquete'] := 'Actividad';
            rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
            rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
          end;
          rxGenerador.FieldValues['sEje'] := QryAcumulados.FieldValues['sEje'];
          rxGenerador.FieldValues['sEje1'] := QryAcumulados.FieldValues['sEje1'];
          rxGenerador.FieldValues['sEje2'] := QryAcumulados.FieldValues['sEje2'];
          rxGenerador.FieldValues['sTipo'] := QryAcumulados.FieldValues['sTipo'];
          rxGenerador.FieldValues['dNumVeces'] := QryAcumulados.FieldValues['dNumVeces'];
          rxGenerador.FieldValues['dCaras'] := QryAcumulados.FieldValues['dCaras'];
          rxGenerador.FieldValues['dAlto'] := QryAcumulados.FieldValues['dAlto'];
          rxGenerador.FieldValues['dAncho'] := QryAcumulados.FieldValues['dAncho'];
          rxGenerador.FieldValues['dLargo'] := QryAcumulados.FieldValues['dLargo'];
          rxGenerador.FieldValues['dSubtotal'] := QryAcumulados.FieldValues['dSubtotal'];

          if num > 1 then
            rxGenerador.Post;
          inc(num);
          QryAcumulados.Next;
        end;

            {Ahora consultamos las tablas de depiece por imagen,, }
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select bImagen from estimaciondespiece_imagen where sContrato = :Contrato ' +
          'And sNumeroOrden = :Orden And sNumeroGenerador = :Generador ' +
          'And sWbs = :Wbs And sNumeroActividad = :Actividad And sIsometrico = :Isometrico ');
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Contrato').value := Global_Contrato;
        connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Orden').value := QryGenerador.FieldValues['sNumeroOrden'];
        connection.QryBusca.Params.ParamByName('Generador').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Generador').value := QryGenerador.FieldValues['sNumeroGenerador'];
        connection.QryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Wbs').value := QryGenerador.FieldValues['sWbs'];
        connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Actividad').value := QryGenerador.FieldValues['sNumeroActividad'];
        connection.QryBusca.Params.ParamByName('Isometrico').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Isometrico').value := QryGenerador.FieldValues['sIsometrico'];
        connection.QryBusca.Open;

        rxGenerador.Edit;
        if connection.QryBusca.RecordCount > 0 then
          rxGenerador.FieldValues['bImagen'] := connection.QryBusca.FieldValues['bImagen'];

        rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
        rxGenerador.Post;

        if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
        begin
          QryAuxiliar.Active := False;
          QryAuxiliar.SQL.Clear;
          QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
          QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
          QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
          QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
          QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
          QryAuxiliar.Open;
          mOrdenCambio := '';
          if QryAuxiliar.RecordCount > 0 then
            mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
              chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
              chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
          rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
        end;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;


      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);

  if lReporte = 'DespiezadoGeneral' then
  begin
    if p_sindespiece > 0 then
      messageDLG('Existen ' + IntToStr(p_sindespiece) + ' partida(s) sin despiece.!', mtInformation, [mbOk], 0);
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorDespiezadoGral.fr3');
  end;

  if lReporte = 'ReporteTuberia' then
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorTUB.fr3');

  if lReporte = 'ReportePerimetro' then
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorPerimetro.fr3');

  if lReporte = 'ReporteAngulo' then
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorAngulo.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport(True);

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
begin
   Assert(Assigned(Strings)) ;
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
end;

procedure rDiarioFirmasReq(sParamContrato, sParamOrden, sParamTurno, sParamDepto: string; dParamFecha: tDate; tOrigen: TComponent);
var
  QryBuscarFirmas: tzReadOnlyQuery;
begin
  sSuperIntendente := '';
  sSuperIntendentePatio := '';
  sRepresentanteTecnico := '';
  sSupervisor := '';
  sSupervisorPatio := '';
  sSupervisorGenerador := '';
  sSupervisorEstimacion := '';
  sSupervisorSubContratista := '';
  sPuestoSupervisorSubContratista := '';
  sPuestoSuperintendente := '';
  sPuestoSupervisor := '';
  sPuestoSupervisorGenerador := '';
  sPuestoSupervisorEstimacion := '';
  sSupervisorTierra := '';
  sPuestoSupervisorTierra := '';
  sPuestoRepresentanteTecnico := '';
  sResidente := '';
  sPuestoResidente := '';
  QryBuscarFirmas := tzReadOnlyQuery.Create(tOrigen);
  QryBuscarFirmas.Connection := connection.zconnection;
  QryBuscarFirmas.Active := False;
  QryBuscarFirmas.SQL.Clear;
  if sParamOrden <> '' then
  begin
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno and sIdDepartamento =:depto and sNumeroOrden = :Orden And dIdFecha = :fecha');
    QryBuscarFirmas.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Orden').Value := sParamOrden;
  end
  else
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno and sIdDepartamento =:depto And dIdFecha = :fecha');
  QryBuscarFirmas.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscarFirmas.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscarFirmas.Params.ParamByName('Turno').DataType := ftString;
  QryBuscarFirmas.Params.ParamByName('Turno').Value := sParamTurno;
  QryBuscarFirmas.Params.ParamByName('Depto').DataType := ftString;
  QryBuscarFirmas.Params.ParamByName('Depto').Value := sParamDepto;
  QryBuscarFirmas.Params.ParamByName('fecha').DataType := ftDate;
  QryBuscarFirmas.Params.ParamByName('fecha').Value := dParamFecha;
  QryBuscarFirmas.Open;
  if QryBuscarFirmas.RecordCount > 0 then
  begin
    sSuperintendente := QryBuscarFirmas.FieldValues['sFirmante1'];
    sSuperintendentePatio := QryBuscarFirmas.FieldValues['sFirmante7'];
    sRepresentanteTecnico := QryBuscarFirmas.FieldValues['sFirmante9'];
    sSupervisor := QryBuscarFirmas.FieldValues['sFirmante2'];
    sSupervisorPatio := QryBuscarFirmas.FieldValues['sFirmante8'];
    sSupervisorGenerador := QryBuscarFirmas.FieldValues['sFirmante3'];
    sSupervisorEstimacion := QryBuscarFirmas.FieldValues['sFirmante4'];
    sSupervisorTierra := QryBuscarFirmas.FieldValues['sFirmante5'];
    sResidente := QryBuscarFirmas.FieldValues['sFirmante6'];
    sSupervisorSubContratista := QryBuscarFirmas.FieldValues['sFirmante10'];

    sPuestoSuperintendente := QryBuscarFirmas.FieldValues['sPuesto1'];
    sPuestoSuperintendentePatio := QryBuscarFirmas.FieldValues['sPuesto7'];
    sPuestoRepresentanteTecnico := QryBuscarFirmas.FieldValues['sPuesto9'];
    sPuestoSupervisor := QryBuscarFirmas.FieldValues['sPuesto2'];
    sPuestoSupervisorPatio := QryBuscarFirmas.FieldValues['sPuesto8'];
    sPuestoSupervisorGenerador := QryBuscarFirmas.FieldValues['sPuesto3'];
    sPuestoSupervisorEstimacion := QryBuscarFirmas.FieldValues['sPuesto4'];
    sPuestoSupervisorTierra := QryBuscarFirmas.FieldValues['sPuesto5'];
    sPuestoResidente := QryBuscarFirmas.FieldValues['sPuesto6'];
    sPuestoSupervisorSubContratista := QryBuscarFirmas.FieldValues['sPuesto10'];
  end
  else
  begin
    QryBuscarFirmas.Active := False;
    QryBuscarFirmas.SQL.Clear;
    if sParamOrden <> '' then
    begin
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sNumeroOrden = :Orden and sIdTurno =:Turno and sIdDepartamento =:depto And dIdFecha <= :fecha Order By dIdFecha DESC');
      QryBuscarFirmas.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarFirmas.Params.ParamByName('Orden').Value := sParamOrden;
    end
    else
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno and sIdDepartamento =:depto And dIdFecha <= :fecha Order By dIdFecha DESC');

    QryBuscarFirmas.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarFirmas.Params.ParamByName('Turno').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Turno').Value := sParamTurno;
    QryBuscarFirmas.Params.ParamByName('Depto').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Depto').Value := sParamDepto;
    QryBuscarFirmas.Params.ParamByName('fecha').DataType := ftDate;
    QryBuscarFirmas.Params.ParamByName('fecha').Value := dParamFecha;
    QryBuscarFirmas.Open;
    if QryBuscarFirmas.RecordCount > 0 then
    begin
      sSuperintendente := QryBuscarFirmas.FieldValues['sFirmante1'];
      sSuperintendentePatio := QryBuscarFirmas.FieldValues['sFirmante7'];
      sRepresentanteTecnico := QryBuscarFirmas.FieldValues['sFirmante9'];
      sSupervisor := QryBuscarFirmas.FieldValues['sFirmante2'];
      sSupervisorPatio := QryBuscarFirmas.FieldValues['sFirmante8'];
      sSupervisorGenerador := QryBuscarFirmas.FieldValues['sFirmante3'];
      sSupervisorEstimacion := QryBuscarFirmas.FieldValues['sFirmante4'];
      sSupervisorTierra := QryBuscarFirmas.FieldValues['sFirmante5'];
      sResidente := QryBuscarFirmas.FieldValues['sFirmante6'];
      sPuestoSuperintendente := QryBuscarFirmas.FieldValues['sPuesto1'];
      sPuestoSuperintendentePatio := QryBuscarFirmas.FieldValues['sPuesto7'];
      sPuestoSupervisor := QryBuscarFirmas.FieldValues['sPuesto2'];
      sPuestoSupervisorPatio := QryBuscarFirmas.FieldValues['sPuesto8'];
      sPuestoRepresentanteTecnico := QryBuscarFirmas.FieldValues['sPuesto9'];
      sPuestoSupervisorGenerador := QryBuscarFirmas.FieldValues['sPuesto3'];
      sPuestoSupervisorEstimacion := QryBuscarFirmas.FieldValues['sPuesto4'];
      sPuestoSupervisorTierra := QryBuscarFirmas.FieldValues['sPuesto5'];
      sPuestoResidente := QryBuscarFirmas.FieldValues['sPuesto6'];

      sSupervisorSubContratista := QryBuscarFirmas.FieldValues['sFirmante10'];
      sPuestoSupervisorSubContratista := QryBuscarFirmas.FieldValues['sPuesto10'];
    end
  end;
  QryBuscarFirmas.Destroy;
end;

end.

