unit UTFrmCapturaRetardos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxSchedulerRibbonStyleEventEditor, Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  cxSchedulerTreeListBrowser, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxSchedulerPainter, DB, DBClient, StdCtrls, cxButtons, cxClasses,
  cxLocalization, cxSchedulerDBStorage, dxmdaset, cxSchedulerAggregateStorage,
  Grids, DBGrids, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, dxSkinsdxBarPainter, dxBar, ExtCtrls,
  cxContainer, cxTextEdit, cxMemo, cxDBEdit, cxCheckBox, cxLabel, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ClientModuleUnit1, UInteliDialog,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, DateUtils,
  frxClass, frxDBSet, cxBarEditItem, dxScreenTip, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Math;

type
  TFrmCapturaRetardos = class(TForm)
    cxSchRetardos: TcxScheduler;
    cdTipoNomina: TClientDataSet;
    cdCorteHorarios: TClientDataSet;
    dsTipoNomina: TDataSource;
    dsCorteHorarios: TDataSource;
    SchedulerDataSource: TDataSource;
    SchedulerDBStorage: TcxSchedulerDBStorage;
    SchedulerStorage: TcxSchedulerStorage;
    SchedulerAggregateStorage: TcxSchedulerAggregateStorage;
    mdEvents: TdxMemData;
    mdEventsID: TAutoIncField;
    mdEventsParentID: TIntegerField;
    mdEventsType: TIntegerField;
    mdEventsStart: TDateTimeField;
    mdEventsFinish: TDateTimeField;
    mdEventsOptions: TIntegerField;
    mdEventsCaption: TStringField;
    mdEventsRecurrenceIndex: TIntegerField;
    mdEventsRecurrenceInfo: TBlobField;
    mdEventsResourceID: TBlobField;
    mdEventsLocation: TStringField;
    mdEventsMessage: TStringField;
    mdEventsReminderDate: TDateTimeField;
    mdEventsReminderMinutes: TIntegerField;
    mdEventsState: TIntegerField;
    mdEventsLabelColor: TIntegerField;
    mdEventsActualStart: TDateTimeField;
    mdEventsActualFinish: TDateTimeField;
    mdEventsSyncIDField: TStringField;
    DBGrid1: TDBGrid;
    DxManager1: TdxBarManager;
    dxTabRetardos: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxbrOpciones: TdxBar;
    dxBtnAgregar: TdxBarLargeButton;
    dxBtnEditar: TdxBarLargeButton;
    dxBtnEliminar: TdxBarLargeButton;
    dxBtnListado: TdxBarLargeButton;
    dxPopup1: TdxRibbonPopupMenu;
    dxBtnAbrir: TdxBarLargeButton;
    pnlDatos: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    CxCheckAplicaDescuento: TcxDBCheckBox;
    cxLabel4: TcxLabel;
    CxMemoDescripcion: TcxDBMemo;
    CxTextEmpleado: TcxTextEdit;
    CxDateFecha: TcxDBDateEdit;
    CxDbTimeHora: TcxDBTimeEdit;
    cxbtnGuardar: TcxButton;
    cxbtnCancel: TcxButton;
    cdExcepcion: TClientDataSet;
    cdExcepcionUpt: TClientDataSet;
    dsExcepcion: TDataSource;
    dsExcepcionUpt: TDataSource;
    dxBtnCerrar: TdxBarLargeButton;
    dxBtnRefrescar: TdxBarLargeButton;
    CxGridMain: TcxGrid;
    CxGridPersonal: TcxGridDBTableView;
    CxColumnCodigoEmpleado: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column12: TcxGridDBColumn;
    CxColumnEmpleado: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column3: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column4: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column5: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column6: TcxGridDBColumn;
    CxColumnRegpat: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column7: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column8: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column9: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column10: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column11: TcxGridDBColumn;
    CxColumnInfonavit: TcxGridDBColumn;
    CxColumnAplicacion: TcxGridDBColumn;
    CxColumnTérmino: TcxGridDBColumn;
    cxColumnatAplicacionInfonavit: TcxGridDBColumn;
    CxColumnTermino: TcxGridDBColumn;
    CxColumnTipoMovimiento: TcxGridDBColumn;
    CxColumnDiasDescanso: TcxGridDBColumn;
    CxColumnEspecial: TcxGridDBColumn;
    CxColumnIDPersonal: TcxGridDBColumn;
    CxGridPersonalColumn1: TcxGridDBColumn;
    CxLevelPersonal: TcxGridLevel;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    CxCbbTipo: TcxDBComboBox;
    FrxDbRetardos: TfrxDBDataset;
    FrxReportRetardos: TfrxReport;
    dxbrReporte: TdxBar;
    CxDateInicio: TcxBarEditItem;
    CxDateTermino: TcxBarEditItem;
    dxTip1: TdxBarScreenTipRepository;
    DxsTipMuestra: TdxScreenTip;
    dxTipRepos1: TdxScreenTipRepository;
    pnl1: TPanel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    CxLbl2: TcxLabel;
    CxLblSdIModificado: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    CxCheckAplicaTiempoExtra: TcxDBCheckBox;
    DxsTipTipRepos1ScreenTip1: TdxScreenTip;
    cdFiltraExcepciones: TClientDataSet;
    FrxDbFiltraExcepciones: TfrxDBDataset;
    frxReport1: TfrxReport;
    cdDatosEmpresa: TClientDataSet;
    FrxCdDatosEmpresa: TfrxDBDataset;
    intgrfldEventsTipoExcepcion: TIntegerField;
    dxBarLargeButton1: TdxBarLargeButton;
    dxbrOpcionesInasistencias: TdxBar;
    dxBtnRegistrarInasistencia: TdxBarLargeButton;
    dxBtnEliminarInasistencia: TdxBarLargeButton;
    dxBtnEditarInasistencia: TdxBarLargeButton;
    cdInasistencias: TClientDataSet;
    CxCheckInasistencias: TcxBarEditItem;
    CxCheckRetardos: TcxBarEditItem;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    pnlDatosInasistencia: TPanel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    CxCbbTipoIna: TcxDBLookupComboBox;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    CxMemoReferencia: TcxDBMemo;
    CxDateInicioIna: TcxDBDateEdit;
    CxDateTerminoIna: TcxDBDateEdit;
    btnGuardarInasistencia: TcxButton;
    btnCancelarInasistencia: TcxButton;
    cdInasistenciasUPDATE: TClientDataSet;
    dsInasistenciasUPDATE: TDataSource;
    cdTipoInasistencia: TClientDataSet;
    dsTipoInasistencia: TDataSource;
    intgrfldEventsGroupID: TIntegerField;
    intgrfldEventsidExcepcion: TIntegerField;
    lblNombreIndicativo: TcxLabel;
    lblNombre: TcxLabel;
    cdReporteMemoria: TClientDataSet;
    intgrfldEventsidPersonal: TIntegerField;
    checkHabilitar: TcxCheckBox;
    CxDateFechaDescuento: TcxDBDateEdit;
    cxlbl1: TcxLabel;
    cxlbl3: TcxLabel;
    CxDateAplicaDescuento: TcxDBDateEdit;
    dxTabInasistencias: TdxRibbonTab;
    dxPopupPersonal: TdxRibbonPopupMenu;
    dxBtnImprimirSeleccionado: TdxBarLargeButton;
    Procedure CrearVentana(var Forma: TForm; Panel: TPanel; Ancho, Alto: Integer; Padre: TComponent);
    procedure dxBtnAgregarClick(Sender: TObject);
    procedure cxbtnGuardarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBtnCerrarClick(Sender: TObject);
    procedure dxBtnRefrescarClick(Sender: TObject);
    procedure dxBtnEditarClick(Sender: TObject);
    procedure cxSchRetardosEventSelectionChanged(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure dxBtnEliminarClick(Sender: TObject);
    procedure CxCbbTipoPropertiesChange(Sender: TObject);
    procedure dxBtnListadoClick(Sender: TObject);
    procedure cxSchRetardosDateNavigatorSelectionChanged(Sender: TObject;
      const AStart, AFinish: TDateTime);
    procedure dxBtnAbrirClick(Sender: TObject);
    procedure dxBtnRegistrarInasistenciaClick(Sender: TObject);
    procedure cxbtnCancelarClick(Sender: TObject);
    procedure btnGuardarInasistenciaClick(Sender: TObject);
    procedure dxBtnEliminarInasistenciaClick(Sender: TObject);
    procedure dxBtnEditarInasistenciaClick(Sender: TObject);
    procedure FrxReportRetardosGetValue(const VarName: string;
      var Value: Variant);
    procedure checkHabilitarPropertiesEditValueChanged(Sender: TObject);
    procedure dxBtnImprimirSeleccionadoClick(Sender: TObject);
  private
    { Private declarations }
    Procedure ConvertirDatos(cdDatos: TClientDataset; TipoExcepcion: String);//Convierte datos del dataset para que lo pueda leer el tcxScheduler
    Procedure ConvertirInasistencias(CdDatos: TClientDataset; TipoExcepcion: String);
    procedure crearFormulario(var formulario : TForm; panel : TPanel; ancho, alto : Integer; caption : string);
    function tieneInasistencia(dataset : TClientDataset; IdPersonal : Integer; var fechaInicio, FechaTermino : TDateTime) : Boolean;
    function tieneRetardo(IdPersonal : Integer; fechaInicio, fechaTermino : TDateTime) : Boolean;
    function hayInasistenciasCruzadas(IdPersonal : Integer; fecha : TDateTime) : Boolean;
    procedure crearDatasetMemoria;
    function obtenerMontoPorRetardo(fecha : Variant; hora : TDateTime; Tipo : string; IdExcepcion, IdPersonal : Integer; AplicaDescuento : string; montoXMinuto : Double; diaDeLaSemana : Integer) : string;
    function obtenerSalarioDiario(IdPersonal : Integer) : string;
    function obtenerHorarios(IdPersonal, IdCargo, IdTipoNomina : Integer; Tipo : string; diaDeLaSemana : Integer): string;
    function ejecutarPorDiaDeLaSemana(diaDeLaSemana : Integer; datasetDias : TClientDataset): Boolean;
  public
    SelEvento     : Integer;
    tipoExcepcion : Integer;
    idExcepcionSeleccionado : Integer;
    IdPersonal    : integer;
    captionSeleccionado     :  string;
    frmEmergente  :   TForm;
    UltimaHora    :   TTime;
    formularioGeneral : TForm;
    accion : string;
    idPersonalSeleccionado : Integer;
    { Public declarations }
  end;

var
  FrmCapturaRetardos: TFrmCapturaRetardos;

implementation

{$R *.dfm}

{ TFrmCapturaRetardos }

procedure TFrmCapturaRetardos.btnGuardarInasistenciaClick(Sender: TObject);
var
  error : Boolean;
  Cursor : TCursor;
  fechaInicio, fechaTermino : TDateTime;
begin
  //Guardar cambios segun sea Insertar o Editar de la variable "accion"
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      error := False;

      if Trim(cxMemoReferencia.Text) = '' then
      begin
        error := True;
        cxMemoReferencia.setFocus;
        MessageDlg('¡El campo referencia está vacío!', mtInformation, [mbOk], 0);
      end else if CxDateTerminoIna.Date < CxDateInicioIna.Date then    //Validar que la fecha de termino no sea mayor a la fecha de inicio
      begin
        error := True;
        cxDateTerminoIna.setFocus;
        MessageDlg('¡La fecha de término no debe ser menor a la fecha de inicio!', mtInformation, [mbOk], 0);
      end;

      if Not error then
      begin
        fechaInicio  :=  cdInasistenciasUPDATE.FieldByName('Inicio').AsDateTime;
        fechaTermino := cdInasistenciasUPDATE.FieldByName('Termino').AsDateTime;

        if Not tieneInasistencia(cdInasistenciasUPDATE, cdPersonal.FieldByName('IdPersonal').AsInteger,
                          fechaInicio, fechaTermino) then
        begin
          cdInasistenciasUPDATE.FieldByName('Inicio').AsDateTime  :=  fechaInicio;
          cdInasistenciasUPDATE.FieldByName('Termino').AsDateTime := fechaTermino;

          //Validar con las fechas validas lo siguiente: 1.- Si ya existe un retardo en la fecha en que se quiere
          //poner una inasistencia, entonces no dejar poner la inasistencia en ese dia.
          //2.- y viceversa.
          if tieneRetardo(cdPersonal.FieldByName('IdPersonal').AsInteger,
                          cdInasistenciasUPDATE.FieldByName('Inicio').AsDateTime,
                          cdInasistenciasUPDATE.FieldByName('Termino').AsDateTime) then
          begin
            error := True;
            MessageDlg('Hay retardo(s) en la(s) fecha(s) seleccionada(s) ', mtInformation, [mbOk], 0);
          end;
        end
        else
          error := True;
      end;

      if Not error then
      begin
        cdInasistenciasUPDATE.Post;
        cdInasistenciasUPDATE.ApplyUpdates(-1);

        if accion = 'Insertar' then
          MessageDlg('¡Inasistencia guardada correctamente!', mtInformation, [mbOk], 0)
        else if accion = 'Editar' then
          MessageDlg('¡Inasistencia editada correctamente!', mtInformation, [mbOk], 0);

        formularioGeneral.Close;

        dxBtnRefrescarClick(dxBtnRefrescar);
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

procedure TFrmCapturaRetardos.checkHabilitarPropertiesEditValueChanged(
  Sender: TObject);
begin
  if checkHabilitar.Checked then
    cxCbbTipo.Enabled := True
  else
  begin
    cxCbbTipo.Enabled := False
  end;
end;

procedure TFrmCapturaRetardos.ConvertirDatos(cdDatos: TClientDataset; TipoExcepcion: String);
begin
  if (cdDatos.Active) and (cdDatos.RecordCount > 0)  then
  begin
    mdEvents.Open;
    cdDatos.First;
    while not cdDatos.Eof do
    begin
      mdEvents.Append;

      mdEvents.FieldByName('Id').AsInteger          :=   cdDatos.FieldByName('IdExcepcion').AsInteger;
      mdEvents.FieldByName('idExcepcion').AsInteger :=   cdDatos.FieldByName('IdExcepcion').AsInteger;
      mdEvents.FieldByName('Caption').AsString      := cdDatos.FieldByName('NombreCompleto').AsString;
      mdEvents.FieldByName('Start').AsDateTime      :=        cdDatos.FieldByName('Start').AsDateTime;
      mdEvents.FieldByName('Finish').AsDateTime     :=        cdDatos.FieldByName('Start').AsDateTime;
      mdEvents.FieldByName('Options').AsInteger         :=  2;
      mdEvents.FieldByName('Reminderdate').AsDateTime :=      cdDatos.FieldByName('Start').AsDateTime;
      mdEvents.FieldByName('ReminderMinutes').AsInteger := 15;
      mdEvents.FieldByName('idPersonal').AsInteger := cdDatos.FieldByName('IdPersonal').AsInteger;

      if cdDatos.FieldByName('AplicaDescuento').asString = 'Si' then
        mdEvents.FieldByName('LabelColor').AsInteger :=     clRed
      else
        mdEvents.FieldByName('LabelColor').AsInteger := clYellow;

      if UpperCase(cdDatos.FieldByName('Tipo').AsString) = 'SALIDA' then
        mdEvents.FieldByName('LabelColor').AsInteger :=  clGreen;

      mdEvents.FieldByName('State').asInteger         := 2;
      mdEvents.FieldByName('TipoExcepcion').AsInteger := 1;
      mdEvents.Post;
      cdDatos.Next;
    end;
  end;
end;

procedure TFrmCapturaRetardos.ConvertirInasistencias(CdDatos: TClientDataset;
  TipoExcepcion: String);
var
  Inicio, Termino: TDate;
begin
 if (cdDatos.Active) and (cdDatos.RecordCount > 0)  then
  begin
    mdEvents.Open;
    cdDatos.First;
    while not cdDatos.Eof do
    begin
      Inicio  :=  cdDatos.FieldByName('Inicio').asDateTime;
      Termino := cdDatos.FieldByName('Termino').asDateTime;
      //while Inicio <= Termino do
      //begin
        mdEvents.Append;

        mdEvents.FieldByName('Id').AsInteger  :=         cdDatos.FieldByName('IdExcepcion').AsInteger;
        mdEvents.FieldByName('idExcepcion').AsInteger := cdDatos.FieldByName('IdExcepcion').AsInteger;
        mdEvents.FieldByName('Caption').AsString  :=   cdDatos.FieldByName('NombreCompleto').AsString;
        mdEvents.FieldByName('Start').AsDateTime  := inicio;
        mdEvents.FieldByName('Finish').AsDateTime := IncDay(Termino, 1);
        mdEvents.FieldByName('Options').AsInteger :=      2;
        mdEvents.FieldByName('Reminderdate').AsDateTime := inicio;
        mdEvents.FieldByName('ReminderMinutes').AsInteger :=   15;
        mdEvents.FieldByName('LabelColor').AsInteger  :=   ClBlue;

        mdEvents.FieldByName('State').asInteger         := 2;
        mdevents.FieldByName('TipoExcepcion').AsInteger := 2; //2 para las inasistenciasS
        mdEvents.Post;
        //Inicio := IncDay(inicio, 1);
      //end;
      cdDatos.Next;
    end;
  end;
end;

procedure TFrmCapturaRetardos.crearDatasetMemoria;
begin
  //Crea el dataset en memoria para el reporte de los retardos e inasistencia
  if cdReporteMemoria.FieldCount = 0 then
  begin
    cdReporteMemoria.FieldDefs.Add('idExcepcion', ftInteger, 0, False);
    cdReporteMemoria.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
    cdReporteMemoria.FieldDefs.Add('Start', ftDateTime, 0, False);
    cdReporteMemoria.FieldDefs.Add('NombreCompleto', ftString, 255, False);
    cdReporteMemoria.FieldDefs.Add('Fecha', ftDateTime, 0, False);
    cdReporteMemoria.FieldDefs.Add('hora', ftString, 100, False);
    cdReporteMemoria.FieldDefs.Add('Tipo', ftString, 50, False);
    cdReporteMemoria.FieldDefs.Add('Comentarios', ftString, 255, False);
    cdReporteMemoria.FieldDefs.Add('AplicaDescuento', ftString, 10, False);
    cdReporteMemoria.FieldDefs.Add('monto', ftString, 100, False);
    cdReporteMemoria.FieldDefs.Add('horarios', ftString, 255, False);
    cdReporteMemoria.FieldDefs.Add('montoXMinuto', ftString, 255, False);
    cdReporteMemoria.FieldDefs.add('MontoMinuto', ftFloat, 0, False);
    cdReporteMemoria.FieldDefs.Add('SalarioDiario', FtFloat, 0, False);
    cdReporteMemoria.CreateDataSet;
  end;
end;

procedure TFrmCapturaRetardos.crearFormulario(var formulario: TForm; panel: TPanel;
  ancho, alto: Integer; caption: string);
begin
  //Crea la ventana segun se requiera, podria ser para Inasistencias u cualquier otra ventana
  formulario      := TForm.Create(Self);
  formulario.Width       :=       ancho;
  formulario.Height      :=        alto;
  formulario.Caption     :=     caption;
  formulario.BorderStyle :=    bsDialog;
  formulario.Position := poScreenCenter;

  panel.Parent  := formulario;
  panel.Align   :=   alClient;
  panel.Visible :=       True;

  formulario.ShowModal;
end;

procedure TFrmCapturaRetardos.CrearVentana(var Forma: TForm; Panel: TPanel; Ancho, Alto: Integer;
  Padre: TComponent);
begin
  try
    if assigned(Forma) then
      Forma.Destroy;

    Forma := TForm.Create(Self);

    Forma.Width   := Ancho;
    Forma.Height  :=  Alto;
    Forma.Caption := 'Registro de Retardos';
    Forma.BorderStyle :=    bsDialog;
    Forma.Position := poScreenCenter;
    Panel.Parent   :=          Forma;
    Panel.Align    :=       AlClient;
    Panel.Visible  :=           True;
    Forma.ShowModal;
  finally
    if Panel.Parent <> Self then
    begin
      Panel.Visible := False;
      Panel.Align  := AlNone;
      Panel.Parent  :=  Self;
    end;
  end;
end;

procedure TFrmCapturaRetardos.cxbtnCancelarClick(Sender: TObject);
begin
  formularioGeneral.Close;
end;

procedure TFrmCapturaRetardos.cxbtnGuardarClick(Sender: TObject);
Var
  Cursor: TCursor;
  error : Boolean;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      error := False;

      if CxDateFecha.Text = '' then
      begin
        error := True;
        CxDateFecha.SetFocus;
        MessageDlg('¡El campo Fecha está vacío!', mtInformation, [mbOk], 0);
      end else if CxDateFechaDescuento.Text = '' then
      begin
        error := True;
        CxDateFechaDescuento.SetFocus;
        MessageDlg('¡El campo Aplicar está vacío!', mtInformation, [mbOk], 0);
      end;

      if Not error then
      begin
        //Validar cuando se inserta un retardo nuevo
        if cdExcepcionUpt.State in [dsInsert] then
        begin
          //Validar que si una de las fechas seleccionadas ya tiene una Inasistencia, entonces no dar de alta el retardo
          if hayInasistenciasCruzadas(cdPersonal.FieldByName('IdPersonal').AsInteger, CxDateFecha.Date) then
          begin
            error := True;
            MessageDlg('¡Hay Inasistencia registrada, no se permite la acción!', mtInformation, [mbOk], 0);
          end;
        end;

        //Validar cuando se edita un retardo
        if cdExcepcionUpt.State in [dsEdit] then
        begin
          if hayInasistenciasCruzadas(idPersonalSeleccionado, CxDateFecha.Date) then
          begin
            error := True;
            MessageDlg('¡Hay Inasistencia registrada, no se permite la acción!', mtInformation, [mbOk], 0);
          end;
        end;
      end;

      if Not error then
      begin
        if cdExcepcionUpt.State = dsInsert then
        begin
          with cdExcepcionUpt do
          begin
            FieldByName('IdExcepcion').asInteger   :=    0;
            FieldByName('Tipo').AsString := cxCbbTipo.Text;
            FieldByName('IdPersonal').AsInteger := CdPersonal.FieldByName('IdPersonal').AsInteger;
          end;
        end;
        cdExcepcionUpt.Post;
        cdExcepcionUpt.ApplyUpdates(-1);

        //if accion = 'Editar' then
        FrmEmergente.Close;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);
  end;
end;

procedure TFrmCapturaRetardos.CxCbbTipoPropertiesChange(Sender: TObject);
begin
  CxCheckAplicaDescuento.Checked := UPPERCASE(CxCbbTipo.Text) = 'ENTRADA';
  CxCheckAplicaDescuento.Enabled := UPPERCASE(CxCbbTipo.Text) = 'ENTRADA';
  CxCheckAplicaTiempoExtra.Checked :=  Not CxCheckAplicaDescuento.Checked;
  CxCheckAplicaTiempoExtra.Enabled :=  Not CxCheckAplicaDescuento.Enabled;
end;

procedure TFrmCapturaRetardos.cxSchRetardosDateNavigatorSelectionChanged(
  Sender: TObject; const AStart, AFinish: TDateTime);
begin
  CxDateInicio.EditValue  :=  AStart;
  CxDateTermino.EditValue := AFinish;
end;

procedure TFrmCapturaRetardos.cxSchRetardosEventSelectionChanged(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
begin
  try
    SelEvento               :=         Integer(AEvent.ID);
    tipoExcepcion           :=   Integer(AEvent.ParentID);
    idExcepcionSeleccionado := Integer(AEvent.ResourceID);
    captionSeleccionado     :=             AEvent.Caption;
    idPersonalSeleccionado  := AEvent.TaskIndex;
  except
    SelEvento := -9;
  end;
end;

procedure TFrmCapturaRetardos.dxBtnAbrirClick(Sender: TObject);
var
  cursor: TCursor;
  LocFechaInicio : String;
  LocFechaTermino: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      mdEvents.Close;
      LocFechaInicio  :=  ClientModule1.DateTostrSql(cxDateInicio.editValue);
      LocFechaTermino := ClientModule1.DateToStrSql(CxDateTermino.EditValue);

      if CxCheckRetardos.EditValue = True then
      begin
        if not CargarDatosFiltrados(CdExcepcion, 'fechaInicio,FechaTermino, IdTipoNomina', [locFechaInicio, locFechaTermino, cdPersonal.FieldByName('IdTipoNomina').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['nom_excepcioneshorarios', locFechaInicio + ' - ' + LocFechaTermino, 'FechaInicio, FechaTermino']);

        if cdExcepcion.active then
          cdExcepcion.Refresh
        else
          cdExcepcion.Open;

        ConvertirDatos(cdExcepcion, 'Retardos');
      end;

      if CxCheckInasistencias.EditValue = True then
      begin
        if not CargarDatosFiltrados(cdInasistencias, 'Desde,Hasta', [locfechaInicio, LocFechaTermino]) then
          raise InteligentException.CreateByCode(6, ['nom_inasistencias',  locFechaInicio + ' - ' + LocFechaTermino, 'Desde, Hasta']);

        if cdInasistencias.active then
          cdInasistencias.Refresh
        else
          cdInasistencias.Open;

        ConvertirInasistencias(cdInasistencias, 'Inasistencia');
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0)
  end;
end;

procedure TFrmCapturaRetardos.dxBtnAgregarClick(Sender: TObject);
var
  Cursor: TCursor;
  locMovto: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor    :=  CrAppStart;
      checkHabilitar.Checked := False;
      CxCbbTipo.Enabled   :=     True;
      cdExcepcion.Filtered   := False;
      LocMovto := 'ENTRADA';
      cdExcepcion.Filter := 'Fecha = ' + QuotedStr(ClientModule1.DatetoStrSql(cxSchRetardos.SelStart)) + ' and IdPersonal = ' + cdPersonal.FieldByName('IdPersonal').AsString;
      cdExcepcion.Filtered :=    true;

      //Ordenamos por hora
      cdExcepcion.IndexFieldNames := 'Hora';

      //Si no hay un registro quiere decir que inicia una entrada o una salida
      if cdExcepcion.RecordCount > 0 then
      begin
        //Mover al último
        cdExcepcion.Last;
        LocMovto   :=           cdExcepcion.FieldByName('Tipo').AsString;
        UltimaHora := TimeOf(cdExcepcion.FieldByName('Hora').AsDateTime);

        if LocMovto = 'ENTRADA' then
          LocMovto := 'SALIDA'
        else
          locMovto := 'ENTRADA';

        CxCbbTipo.Enabled := False;
      end;

      if (cdPersonal.Active) and (cdPersonal.RecordCount = 0) then
        raise InteligentException.CreateByCode(18, ['No existe personal en lista para registrar retardo.']);

      if not CargarDatosFiltrados(CdExcepcionUpt, 'IdExcepcion', [-9]) then
        raise InteligentException.CreateByCode(6, ['nom_excepcioneshorarios', '-9', 'IdExcepcion']);

      if cdExcepcionUpt.Active then
        cdExcepcionUpt.Refresh
      else
        cdExcepcionUpt.Open;

      cdexcepcionUpt.Append;
      accion := 'Insertar';
      CxTextEmpleado.Text := cdPersonal.FieldByName('NombreCompleto').AsString;
      cdExcepcionUpt.FieldByName('Tipo').AsString    :=               LocMovto;
      cdExcepcionUpt.FieldByName('Fecha').AsDateTime := cxSchRetardos.SelStart;
      cdExcepcionUpt.FieldByName('Hora').AsDateTime := TimeOf(cxSchRetardos.SelStart);
      cdExcepcionUpt.FieldByName('AplicaDescuento').asString    :=      'True';
      cdExcepcionUpt.FieldByName('FechaDescuento').AsDateTime := cxSchRetardos.SelStart;
      CxCheckAplicaDescuento.Checked := True;
      CrearVentana(FrmEmergente,pnlDatos, 485, 430, self);

    finally
      cdExcepcion.Filtered := False;
      dxBtnRefrescarClick(Nil);

      if (cdExcepcionUpt.Active) and (cdExcepcionUpt.State in [dsInsert, dsEdit]) then
       cdExcepcionUpt.Cancel;

      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCapturaRetardos.dxBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCapturaRetardos.dxBtnEditarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      if tipoExcepcion = 1 then
      begin
        if not CargarDatosFiltrados(cdExcepcionUpt, 'IdExcepcion', [idExcepcionSeleccionado]) then
          raise InteligentException.CreateByCode(6, ['nom_excepcionesHorarios', intToStr(idExcepcionSeleccionado), 'IdExcepcion']);

        if cdExcepcionUpt.Active then
          cdExcepcionUpt.Refresh
        else
          cdExcepcionUpt.Open;

        if cdExcepcionUpt.RecordCount = 1  then     //Sino hay pedos
        begin
          if cdExcepcion.Locate('IdExcepcion', cdExcepcionUpt.FieldByName('IdExcepcion').AsInteger, []) then
          begin
            cdExcepcionUpt.Edit;
            accion  := 'Editar';
            CxTextEmpleado.Text := cdExcepcion.FieldByName('NombreCompleto').AsString;
            CrearVentana(FrmEmergente,pnlDatos, 485, 430, self);
            dxBtnRefrescarClick(Nil);
          end;
        end;
      end
      else
       InteliDialog.ShowModal('Aviso', 'No has seleccionado ningún evento de la lista.', mtInformation, [mbOK], 0);
    finally
      if (cdExcepcionUpt.Active) and (cdExcepcionUpt.State in [dsInsert, dsEdit]) then
        cdExcepcionUpt.Cancel;

      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCapturaRetardos.dxBtnEditarInasistenciaClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  //Abre la ventana para Editar una Inasistencia del empleado seleccionado
  try
    if TipoExcepcion = 2 then
    begin
      Screen.Cursor := crDefault;
      try
        Screen.Cursor := crAppStart;

        accion := 'Editar';

        lblNombre.Caption := captionSeleccionado;

        //Para traer los tipos de inasistencias al combo
        if cdTipoInasistencia.Active then
          cdTipoInasistencia.Refresh
        else
          cdTipoInasistencia.Open;

        if cdInasistenciasUPDATE.Active then
          cdInasistenciasUPDATE.Refresh
        else
          cdInasistenciasUPDATE.Open;

        cdInasistenciasUPDATE.Locate('idExcepcion', idExcepcionSeleccionado, [loCaseInsensitive]);

        cdInasistenciasUPDATE.Edit;

        crearFormulario(formularioGeneral, pnlDatosInasistencia, 325, 300, 'Edición de Inasistencias');

        if cdInasistenciasUPDATE.Active then
          cdInasistenciasUPDATE.Cancel;
      finally
        TipoExcepcion := 0;
        Screen.Cursor := crDefault;
      end;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCapturaRetardos.dxBtnRefrescarClick(Sender: TObject);
var Cursor: Tcursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crappStart;
      MdEvents.Close;

      if CxCheckRetardos.EditValue = True then
      begin
        if cdExcepcion.Active then
          cdExcepcion.Refresh
        else
          cdExcepcion.Open;

        ConvertirDatos(cdExcepcion, 'Retardos');
      end;

      if CxCheckInasistencias.EditValue = True then
      begin
        if CdInasistencias.Active then
          cdInasistencias.Refresh
        else
          cdInasistencias.Open;

        ConvertirInasistencias(cdInasistencias, 'Inasistencia');
      end;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCapturaRetardos.dxBtnRegistrarInasistenciaClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    if cdPersonal.RecordCount > 0 then
    begin
      Screen.Cursor := crDefault;
      try
        Screen.Cursor := crAppStart;

        accion := 'Insertar';

        lblNombre.Caption := cdPersonal.FieldByName('NombreCompleto').AsString;

        //Para traer los tipos de inasistencias al combo
        if cdTipoInasistencia.Active then
          cdTipoInasistencia.Refresh
        else
          cdTipoInasistencia.Open;

        if Not CargarDatosFiltrados(cdInasistenciasUPDATE, 'idExcepcion', [-1]) then
          raise InteligentException.CreateByCode(6, ['idExcepcion', 'nom_inasistencia']);

        if cdInasistenciasUPDATE.Active then
          cdInasistenciasUPDATE.Refresh
        else
          cdInasistenciasUPDATE.Open;

        //Poner en modo de Insercion a cdInasistenciaUPDATE para insertar registros a la tabla nom_inasistencia
        cdInasistenciasUPDATE.Append;

        cdInasistenciasUPDATE.FieldByName('idExcepcion').AsInteger := 0;
        cdInasistenciasUPDATE.FieldByName('IdPersonal').AsInteger := cdPersonal.FieldByName('IdPersonal').AsInteger;
        cdInasistenciasUPDATE.FieldByName('Inicio').AsDateTime  := cxSchRetardos.SelStart;
        cdInasistenciasUPDATE.FieldByName('Termino').AsDateTime := cxSchRetardos.SelStart;
        cdInasistenciasUPDATE.FieldByName('FechaDescuento').AsDateTime := cxSchRetardos.SelStart;

        if cdTipoInasistencia.RecordCount > 0 then
        begin
          cdTipoInasistencia.First;
          cdInasistenciasUPDATE.FieldByName('IdTipoInasistencia').AsInteger := cdTipoInasistencia.FieldByName('IdTipoInasistencia').AsInteger;
        end;

        //Mostrar ventana para registrar Inasistencias al empleado seleccionado
        crearFormulario(formularioGeneral, pnlDatosInasistencia, 325, 300, 'Agregar Inasistencias');

        if cdInasistenciasUPDATE.Active then
          cdInasistenciasUPDATE.Cancel;
      finally
        Screen.Cursor := crDefault;
      end;
    end
    else
      MessageDlg('¡No hay registros de personal para realizar la acción!', mtInformation, [mbOk], 0);
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmCapturaRetardos.ejecutarPorDiaDeLaSemana(diaDeLaSemana: Integer;
  datasetDias: TClientDataset): Boolean;
var
  ejecutarAccion : Boolean;
begin
  //
  ejecutarAccion := False;
  if diaDeLaSemana = 1 then
  begin
    if datasetDias.FieldByName('Domingo').AsString = 'True' then
      ejecutarAccion := True
  end else if diaDeLaSemana = 2 then
  begin
    if datasetDias.FieldByName('Lunes').AsString = 'True' then
      ejecutarAccion := True
  end else if diaDeLaSemana = 3 then
  begin
    if datasetDias.FieldByName('Martes').AsString = 'True' then
      ejecutarAccion := True
  end else if diaDeLaSemana = 4 then
  begin
    if datasetDias.FieldByName('Miercoles').AsString = 'True' then
      ejecutarAccion := True
  end else if diaDeLaSemana = 5 then
  begin
    if datasetDias.FieldByName('Jueves').AsString = 'True' then
      ejecutarAccion := True
  end else if diaDeLaSemana = 6 then
  begin
    if datasetDias.FieldByName('Viernes').AsString = 'True' then
      ejecutarAccion := True
  end else if diaDeLaSemana = 7 then
  begin
    if datasetDias.FieldByName('Sabado').AsString = 'True' then
      ejecutarAccion := True;
  end;

  Result := ejecutarAccion;
end;

procedure TFrmCapturaRetardos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdExcepcion.ProviderName <> '' then
    EliminarConjunto(cdExcepcion);

  if cdExcepcionUpt.ProviderName <> '' then
    EliminarConjunto(cdExcepcionUpt);

  if cdPersonal.ProviderName <> '' then
    EliminarConjunto(cdPersonal);

  action := caFree;
end;

procedure TFrmCapturaRetardos.FormCreate(Sender: TObject);
var
  ultimoDia :  string;
  mes : Integer;
  ano : Integer;
  inicioMes  : string;
  terminoMes : string;
begin
  if Not crearConjunto(cdExcepcion, 'nom_excepcioneshorarios', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_excepcioneshorarios']);

  if Not crearConjunto(cdExcepcionUpt, 'nom_excepcioneshorarios', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nom_excepcioneshorarios']);

  if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_personal']);

  if Not CrearConjunto(CdDatosEmpresa, 'nuc_configuracion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_Configuración']);

  if Not CrearConjunto(CdInasistencias, 'nom_inasistencia', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_excepcionxpersonal']);

  if Not CrearConjunto(cdInasistenciasUPDATE, 'nom_inasistencia', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nom_inasistencia']);

  if Not CrearConjunto(cdTipoInasistencia, 'nom_tipoinasistencia_2', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nom_tipoinasistencia']);

  if Not CrearConjunto(cdFiltraExcepciones, 'nom_excepcioneshorarios', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_excepcionesHorarios']);

  SelEvento := -9;

  //Mostrar la fecha Inicial y Final del mes conforme a la hora del Sistema
  mes := MonthOf(Now);
  ano := YearOf(Now);

  inicioMes := '1/' + IntToStr(mes) + '/' + IntToStr(ano);
  terminoMes := DateToStr(EndOfTheMonth(Now));

  CxDateInicio.EditValue  :=  StrToDate(inicioMes);
  CxDateTermino.EditValue := StrToDate(terminoMes);
end;

procedure TFrmCapturaRetardos.FormShow(Sender: TObject);
Var
  Cursor: TCursor;
begin
  try
    Cursor := screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if not CargarDatosFiltrados(cdExcepcion, 'IdExcepcion', [-9]) then
        raise InteligentException.CreateByCode(6, ['nom_excepcioneshorarios', '-1','IdExcepcion']);

      if not CargarDatosFiltrados(CdExcepcionUpt, 'IdExcepcion', [-9]) then
        raise InteligentException.CreateByCode(6, ['nom_excepcioneshorarios', '-9', 'IdExcepcion']);

      if not cargarDatosFiltrados(cdPersonal, 'TipoOperacion', ['HORA']) then
        raise InteligentException.CreateByCode(6, ['nuc_personal', 'HORA', 'TipoOperacion']);

      if not CargarDatosFiltrados(cdInasistencias, 'IdPersonal', [-9]) then
        raise InteligentException.CreateByCode(6, ['nom_inasistencia', 'IdPersonal', '-1']);

      if cdInasistencias.Active then
        cdInasistencias.Refresh
      else
        cdInasistencias.Open;

      if cdPersonal.Active then
        cdPersonal.Refresh
      else
        cdPersonal.Open;

      if cdExcepcion.Active then
        cdexcepcion.Refresh
      else
       cdExcepcion.Open;

      if cdExcepcionUpt.Active then
        cdExcepcionUpt.Refresh
      else
        cdExcepcionUpt.Open;

      ConvertirDatos(cdExcepcion, 'Retardos');
      ConvertirInasistencias(cdInasistencias, 'Inasistencia');

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCapturaRetardos.FrxReportRetardosGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Nombre' then
  begin
    Value := cdReporteMemoria.FieldByName('IdPersonal').AsString;
  end;
end;

function TFrmCapturaRetardos.hayInasistenciasCruzadas(IdPersonal: Integer;
  fecha: TDateTime): Boolean;
var
  Inasistencias   :      TClientDataSet;
  fechaInicio, fechaTermino : TDateTime;
  error : Boolean;
begin
  //Devuelve True si hay una inasistencia en la fecha en que se quiere dar de alta un retardo.
  //Devuelve False en viceversa
  try
    try
      Inasistencias := TClientDataSet.Create(Self);

      if Not CrearConjunto(Inasistencias, 'nom_inasistencia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_inasistencia']);

      if Not CargarDatosFiltrados(Inasistencias, 'IdPersonal', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['IdPersonal', 'nom_inasistencia']);

      Inasistencias.Open;

      error := False;

      while Not Inasistencias.Eof do
      begin
        fechaInicio  :=  Inasistencias.FieldByName('Inicio').AsDateTime;
        fechaTermino := Inasistencias.FieldByName('Termino').AsDateTime;
        while fechaInicio <= fechaTermino do
        begin
          if fecha = fechaInicio then
          begin
            error := True;
            Break;
          end;

          fechaInicio := IncDay(fechaInicio, 1);
        end;

        Inasistencias.Next;
      end;

      Result := error;
    finally
      Inasistencias.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmCapturaRetardos.obtenerHorarios(IdPersonal, IdCargo, IdTipoNomina: Integer; Tipo : string; diaDeLaSemana : Integer): string;
var
  nomTablaHorarios : TClientDataSet;
  horarios : string;
  concatenarY : Boolean;
begin
  //Devuelve los horarios que el empleado debe trabajar durante su jornada de trabajo
  try
    try
      nomTablaHorarios := TClientDataSet.Create(Self);

      if Not CrearConjunto(nomTablaHorarios, 'nom_tablahorarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_tablahorarios']);

      if Tipo = 'xIdPersonalImss' then
      begin
        //Sacar los horarios conforme al IdPersonalImss(que es por empleado)
        if not CargarDatosFiltrados(nomTablaHorarios, 'IdPersonalImss', [IdPersonal]) then
          raise InteligentException.CreateByCode(6, ['IdPersonal', 'nom_tablahorarios']);
      end else if Tipo = 'xIdCargo' then
      begin
        //Sacar los horarios conforme al IdCargo(que es por Cargos)
        if not CargarDatosFiltrados(nomTablaHorarios, 'IdCargo', [IdCargo]) then
          raise InteligentException.CreateByCode(6, ['IdCargo', 'nom_tablahorarios']);
      end else if Tipo = 'xIdTipoNomina' then
      begin
        //Sacar los horarios conforme al IdTipoNomina(que es por Tipos de Nominas)
        if not CargarDatosFiltrados(nomTablaHorarios, 'IdTipoNomina', [IdTipoNomina]) then
          raise InteligentException.CreateByCode(6, ['IdTipoNomina', 'nom_tablahorarios']);
      end;

      nomTablaHorarios.Open;

      if nomTablaHorarios.RecordCount > 0 then
      begin
        nomTablaHorarios.First;
        horarios := '';
        concatenarY := False;
        while Not nomTablaHorarios.Eof do
        begin
          if concatenarY = True then
          begin
            horarios := horarios + ' y '
          end;

          if ejecutarPorDiaDeLaSemana(diaDeLaSemana, nomTablaHorarios) then
          begin
            horarios := horarios + ' ' + nomTablaHorarios.FieldByName('HoraInicio').AsString + ' - ' +
                        nomTablaHorarios.FieldByName('HoraTermino').AsString + ' Tol: ' + nomTablaHorarios.FieldByName('HoraInicioReal').AsString;

            concatenarY := True;
          end;

          nomTablaHorarios.Next;
        end;
      end;

      Result := 'Horario(s): ' + horarios;
    finally
      nomTablaHorarios.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmCapturaRetardos.obtenerMontoPorRetardo(fecha : Variant; hora: TDateTime; Tipo: string;
  IdExcepcion, IdPersonal: Integer; AplicaDescuento: string; montoXMinuto : Double; diaDeLaSemana : Integer): string;
var
  tablaHorarios       : TClientDataset;
  retardo : Double;
  monto : string;
  excepcionesHorarios : TClientDataset;
  hora1, hora2, horaAntesDeSalir : TDateTime;
  calculadoPorEntrada, sumarMonto :  Boolean;
begin
  //Devuelve el monto que se le descuenta a un empleado por un retardo(para el reporte de retardos)
  try
    try
      tablaHorarios       := TClientDataset.Create(Self);
      excepcionesHorarios := TClientDataSet.Create(Self);

      if Not CrearConjunto(tablaHorarios, 'nom_tablahorarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_tablahorarios']);

      if Not CrearConjunto(excepcionesHorarios, 'nom_excepcioneshorarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_excepcioneshorarios']);

      if Tipo = 'ENTRADA' then
      begin
        tablaHorarios.Open;

        if tablaHorarios.RecordCount > 0 then
        begin
          tablaHorarios.First;

          calculadoPorEntrada := False;
          while Not tablaHorarios.Eof do
          begin
            //Esto aplica para los horarios de entrada por ejemplo si los horarios de un empleado son:
            //de 08:00 am a 14:00 pm, entonces valida el retardo con la hora de entrada(08:00am)
            //y de 16:00 a 20:00, entonces valida con el retardo con la hora de entreda(16:00pm)
            if (FormatDateTime('hh:nn:ss', hora)  > tablaHorarios.FieldByName('HoraInicioReal').AsVariant) and
               (FormatDateTime('hh:nn:ss', hora)  < tablaHorarios.FieldByName('HoraTermino').AsVariant) and
               (ejecutarPorDiaDeLaSemana(diaDeLaSemana, tablaHorarios)) then
            begin
              if Not CargarDatosFiltrados(excepcionesHorarios, 'IdPersonal, Fecha, hora', [IdPersonal, ClientModule1.DatetoStrSql(Fecha), tablaHorarios.FieldByName('HoraInicioReal').AsVariant]) then
                raise InteligentException.CreateByCode(6, ['idPersonal', 'nom_excepcioneshorarios']);

              excepcionesHorarios.Open;

              excepcionesHorarios.First;

              if excepcionesHorarios.FieldByName('hora').AsVariant = FormatDateTime('hh:nn:ss', hora) then
              begin
                hora1 := hora;
                hora2 := tablaHorarios.FieldByName('HoraInicioReal').AsDateTime;
                retardo := MinutesBetween(hora1, hora2);
                monto := FloatToStr(RoundTo(StrToFloat(FloatToStr(retardo * montoXMinuto)), -2));
                calculadoPorEntrada := True;
                break;
              end;
            end;

            tablaHorarios.Next;
          end;

          //Si no esta calculado por entrada, entonces buscar la SALIDA que se realizo antes de dicha entrada
          //para poder sacar los minutos de retardo entre la salida y la entrada
          if Not calculadoPorEntrada then
          begin
            if Not CargarDatosFiltrados(excepcionesHorarios, 'IdPersonal, Fecha', [IdPersonal, ClientModule1.DatetoStrSql(fecha)]) then
              raise InteligentException.CreateByCode(6, ['']);

            excepcionesHorarios.Open;

            if excepcionesHorarios.RecordCount > 0 then
            begin
              excepcionesHorarios.Locate('hora', FormatDateTime('hh:nn:ss', hora), [loCaseInsensitive]);
              hora1 := excepcionesHorarios.FieldByName('Start').AsDateTime;
              excepcionesHorarios.Prior;

              if (excepcionesHorarios.FieldByName('Tipo').AsString = 'SALIDA') and (ejecutarPorDiaDeLaSemana(diaDeLaSemana, tablaHorarios)) then
              begin
                hora2 := excepcionesHorarios.FieldByName('Start').AsDateTime;
                retardo := MinutesBetween(hora1, hora2);
                monto := FloatToStr(RoundTo(StrToFloat(FloatToStr(retardo * montoXMinuto)), -2));
              end;
            end;
          end;

          Result := monto;
        end;
      end
      else
      begin
        //Si el tipo es SALIDA, entonces revisar si es una salida antes de la salida de los horarios que tiene el empleado
        tablaHorarios.Open;

        if tablaHorarios.RecordCount > 0 then
        begin
          tablaHorarios.First;
          monto := 'N/A';

          while Not tablaHorarios.Eof do
          begin
            if (FormatDateTime('hh:nn:ss', hora)  > tablaHorarios.FieldByName('HoraInicioReal').AsVariant) and
               (FormatDateTime('hh:nn:ss', hora)  < tablaHorarios.FieldByName('HoraTermino').AsVariant) and
               (ejecutarPorDiaDeLaSemana(diaDeLaSemana, tablaHorarios)) then
            begin
              if Not CargarDatosFiltrados(excepcionesHorarios, 'IdPersonal, Fecha, hora', [IdPersonal, ClientModule1.DatetoStrSql(Fecha), tablaHorarios.FieldByName('HoraInicioReal').AsVariant]) then
                raise InteligentException.CreateByCode(6, ['idPersonal', 'nom_excepcioneshorarios']);

              excepcionesHorarios.Open;

              while Not excepcionesHorarios.Eof do
              begin
                if (excepcionesHorarios.FieldByName('hora').AsVariant > horaAntesDeSalir) and
                   (excepcionesHorarios.FieldByName('hora').AsVariant < tablaHorarios.FieldByName('HoraTermino').AsVariant) then
                begin
                  horaAntesDeSalir := excepcionesHorarios.FieldByName('hora').AsDateTime;
                end;

                excepcionesHorarios.Next;
              end;

              if  FormatDateTime('hh:nn:ss', horaAntesDeSalir) = FormatDateTime('hh:nn:ss', hora) then
              begin
                hora1 := hora;
                hora2 := tablaHorarios.FieldByName('HoraTermino').AsDateTime;
                retardo := MinutesBetween(hora1, hora2);
                monto := FloatToStr(RoundTo(StrToFloat(FloatToStr(retardo * montoXMinuto)), -2));
                calculadoPorEntrada := True;
                break;
              end;
            end;

            tablaHorarios.Next;
          end;
        end;

        Result := monto;
      end;
    finally
      tablaHorarios.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmCapturaRetardos.obtenerSalarioDiario(IdPersonal: Integer): string;
var
  nucPersonalImss : TClientDataset;
begin
  //Devuelve el salario diario del empleado conforme al IdPersonal del parametro
  try
    try
      nucPersonalImss := TClientDataSet.Create(Self);

      if Not CrearConjunto(nucPersonalImss, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['nuc_personalimss']);

      if not CargarDatosFiltrados(nucPersonalImss, 'IdPersonal', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['IdPersonal', 'nuc_personalimss']);

      nucPersonalImss.Open;

      if nucPersonalImss.RecordCount > 0 then
      begin
        Result := FloatToStr(nucPersonalImss.FieldByName('SalarioDiario').AsFloat);
      end;
    finally
      nucPersonalImss.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmCapturaRetardos.tieneInasistencia(dataset : TClientDataset; IdPersonal: Integer; var fechaInicio,
  FechaTermino: TDateTime): Boolean;
var
  principioFecha, finFecha : TDateTime;
  datasetInasistencias : TClientDataSet;
  inicio, termino, datasetInicio, datasetTermino : TDate;
  fechaMenor, fechaMayor, tipoFecha : string;
  seCruza, definirFechaMenor : Boolean;
  arrayFechas : array of TDateTime;
  i : Integer;
begin
  try
    datasetInasistencias := TClientDataSet.Create(Self);

    if Not CrearConjunto(datasetInasistencias, 'nom_inasistencia', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['nom_inasistencia']);

    if Not CargarDatosFiltrados(datasetInasistencias, 'IdPersonal', [IdPersonal]) then
      raise InteligentException.CreateByCode(6, ['IdPersonal', 'nom_inasistencia']);

    datasetInasistencias.Open;

    if datasetInasistencias.RecordCount > 0 then
    begin
      //Crear un array con las fechas que ya estan ocupadas
      datasetInasistencias.First;
      while Not datasetInasistencias.Eof do
      begin
        principioFecha := datasetInasistencias.FieldByName('Inicio').AsDateTime;
        finFecha      := datasetInasistencias.FieldByName('Termino').AsDateTime;
        while principioFecha <= finFecha do
        begin
          SetLength(arrayFechas, Length(arrayFechas) + 1);
          arrayFechas[Length(arrayFechas) - 1] := principioFecha;

          principioFecha := IncDay(principioFecha);
        end;

        datasetInasistencias.Next;
      end;

      seCruza := False;
      fechaMenor := '';
      datasetInasistencias.First;
      while not datasetInasistencias.Eof do
      begin
        if (fechaMenor <> '') then
        begin
          if Not ((StrToDate(fechaMenor) < datasetInasistencias.FieldByName('Inicio').AsDateTime) or
             (StrToDate(fechaMenor) > datasetInasistencias.FieldByName('Termino').AsDateTime)) then
            fechaMenor := '';
        end;

        Inicio := fechaInicio;
        termino := fechaTermino;

        if ((Inicio >= datasetInasistencias.FieldByName('Inicio').AsDateTime) and
           (Inicio <= datasetInasistencias.FieldByName('Termino').AsDateTime)) or
           ((termino >= datasetInasistencias.FieldByName('Inicio').AsDateTime) and
           (termino <= datasetInasistencias.FieldByName('Termino').AsDateTime)) then
        begin
          datasetInicio  :=  datasetInasistencias.FieldByName('Inicio').AsDateTime;
          datasetTermino := datasetInasistencias.FieldByName('Termino').AsDateTime;

          while datasetInicio <= datasetTermino do
          begin
            Inicio := fechaInicio;
            termino := fechaTermino;

            //Solo ingresar las fechas de Inicio y Termino que no esten en otras inasistencias y que no se repitan
            while Inicio <= FechaTermino do
            begin
              if (Inicio <> datasetInicio) and
                  ((Inicio < datasetInicio) or
                  (Inicio > datasetTermino)) then
              begin
                if fechaMenor = '' then
                begin
                  fechaInicio := Inicio;
                  fechaMenor := DateToStr(Inicio);
                  fechaMayor := DateToStr(Inicio);

                  definirFechaMenor := True;
                  for i := 0 to Length(arrayFechas) - 1 do
                  begin
                    if StrToDate(fechaMenor) = arrayFechas[i] then
                    begin
                      definirFechaMenor := False;
                      Break;
                    end;
                  end;
                
                  if definirFechaMenor then
                  begin
                    if StrToDate(fechaMayor) < datasetInasistencias.FieldByName('Inicio').AsDateTime then
                      tipoFecha := 'Inferior'
                    else if StrToDate(fechaMayor) > datasetInasistencias.FieldByName('Termino').AsDateTime then
                      tipoFecha := 'Superior'
                    else
                      tipoFecha := '';

                    if tipoFecha = 'Superior' then
                    begin
                      if StrToDate(fechaMenor) > datasetInasistencias.FieldByName('Termino').AsDateTime then
                      begin
                        fechaMenor := fechaMenor;
                      end
                      else
                        fechaMenor := '';
                    end else if tipoFecha = '' then
                    begin
                      fechaMenor := '';
                    end;
                  end
                  else
                    fechaMenor := '';
                end;

                if (fechaMayor <> '') and
                   (Inicio > StrToDate(fechaMayor)) then
                begin
                  if tipoFecha = 'Inferior' then
                  begin
                    if Inicio < datasetInasistencias.FieldByName('Inicio').AsDateTime then
                      fechaMayor := DateToStr(Inicio);
                  end else if tipoFecha = 'Superior' then
                  begin
                    if Inicio > datasetInasistencias.FieldByName('Termino').AsDateTime then
                      fechaMayor := DateToStr(Inicio);
                  end;
                end;
              end;

              Inicio := IncDay(Inicio, 1);
            end;

            datasetInicio := IncDay(datasetInicio);
          end;

          seCruza := True;
        end;

        datasetInasistencias.Next;
      end;

      if seCruza then
      begin
        if (fechaMenor = '') or (fechaMayor = '') then
        begin
          Result := True
        end
        else
          Result := False;

        if Result = False then
        begin
          fechaInicio  := StrToDate(fechaMenor);
          fechaTermino := StrToDate(fechaMayor);
        end;
      end
      else
      begin
        fechaInicio  :=  fechaInicio;
        fechaTermino := fechaTermino;
        Result := False;
      end;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmCapturaRetardos.tieneRetardo(IdPersonal: Integer; fechaInicio,
  fechaTermino: TDateTime): Boolean;
var
  cdRetardos : TClientDataSet;
  error :   Boolean;
  fecha : TDateTime;
begin
  //Devuelve True si el empleado al que se lequiere agregar una inasistencia, ya tiene un retardo en una fecha del rango
  //pasado en los parametros fechaInicio y fechaTermino
  try
    try
      cdRetardos := TClientDataSet.Create(Self);

      if Not CrearConjunto(cdRetardos, 'nom_excepcioneshorarios', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_excepcioneshorarios']);

      error := False;
      fecha := fechaInicio;
      while fecha <= fechaTermino do
      begin
        if not CargarDatosFiltrados(cdRetardos, 'IdPersonal, Fecha', [IdPersonal, ClientModule1.DatetoStrSql(fecha)]) then
          raise InteligentException.CreateByCode(6, ['Fecha', 'nom_excepcioneshorarios']);

        if cdRetardos.Active then
          cdRetardos.Refresh
        else
          cdRetardos.Open;

        if cdRetardos.RecordCount > 0 then
        begin
          error := True;
        end;

        fecha := IncDay(fecha, 1);
      end;

      Result := error;
    finally
      cdRetardos.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCapturaRetardos.dxBtnEliminarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := CrappStart;
      if tipoExcepcion = 1 then
      begin
        Screen.Cursor := crAppStart;

        if not CargarDatosFiltrados(cdExcepcionUpt, 'IdExcepcion', [idExcepcionSeleccionado]) then
          raise InteligentException.CreateByCode(6, ['nom_excepcionesHorarios', intToStr(idExcepcionSeleccionado), 'IdExcepcion']);

        if cdExcepcionUpt.Active then
          cdExcepcionUpt.Refresh
        else
          cdExcepcionUpt.Open;

        if cdExcepcionUpt.RecordCount = 1  then     //Sino hay pedos
        begin
          if (cdExcepcion.Locate('IdExcepcion', cdExcepcionUpt.FieldByName('IdExcepcion').AsInteger, [])) and
             (InteliDialog.ShowModal('Confirmación', '¿Deseas eliminar el retardo seleccionado?', mtConfirmation, [mbYes, MbNo], 0) = mrYes) then
          begin
            cdExcepcionUpt.Delete;
            cdExcepcionUpt.ApplyUpdates(-1);
            dxBtnRefrescarClick(Nil);
          end;
        end;
      end
      else
        InteliDialog.ShowModal('Aviso', 'No has seleccionado ningún evento de la lista.', mtInformation, [mbOK], 0);
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCapturaRetardos.dxBtnEliminarInasistenciaClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  //Elimina la inasistencia que el usuario haya seleccionado
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if tipoExcepcion = 2 then   //Si el tipo de excepcion es 2(Inasistencia), entonces eliminar dicha inasistencia
      begin
        if MessageDlg('¿Desea eliminar la Inasistencia seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if cdInasistenciasUPDATE.Active then
            cdInasistenciasUPDATE.Refresh
          else
            cdInasistenciasUPDATE.Open;

          if cdInasistenciasUPDATE.Locate('IdExcepcion', idExcepcionSeleccionado, [loCaseInsensitive]) then
          begin
            cdInasistenciasUPDATE.Delete;
            cdInasistenciasUPDATE.ApplyUpdates(-1);

            dxBtnRefrescarClick(dxBtnRefrescar);
          end;
        end;
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

procedure TFrmCapturaRetardos.dxBtnImprimirSeleccionadoClick(Sender: TObject);
var
  Cursor: TCursor;
  inasistencias   :      TClientDataset;
  fechaInicio, fechaTermino : TDateTime;
  esPrimeraEntrada : Boolean;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      //Validaciones para poder continuar
      if CxDateInicio.EditValue = null then
        raise InteligentException.CreateByCode(24, ['Introduce la fecha de inicio.']);

      if CxDateTermino.EditValue = null then
        raise InteligentException.CreateByCode(24, ['Introduce la fecha de término.']);

      if Not CargarDatosFiltrados(cdFiltraExcepciones, 'IdTipoNomina, FechaInicio,FechaTermino', [cdPersonal.FieldByName('IdTipoNomina').AsInteger, ClientModule1.DatetoStrSql(CxDateInicio.EditValue), ClientModule1.DatetoStrSql(CxDateTermino.EditValue)])  then
        raise InteligentException.CreateByCode(6, ['nom_excepcioneshorarios', ClientModule1.DatetoStrSql(CxDateInicio.EditValue) + ' - ' + ClientModule1.DatetoStrSql(CxDateTermino.EditValue), 'FechaInicioReal, FechaTermino' ]);

      if cdFiltraExcepciones.Active then
        cdFiltraExcepciones.Refresh
      else
        cdFiltraExcepciones.Open;

      //Crear Dataset en memoria para el reporte
      crearDatasetMemoria;

      if Not cdReporteMemoria.Active then
        cdReporteMemoria.Open;

      cdReporteMemoria.EmptyDataSet;

      //Datos de los retardos para el reporte
      cdFiltraExcepciones.First;
      while Not cdFiltraExcepciones.Eof do
      begin
        cdReporteMemoria.Append;
        cdReporteMemoria.FieldByName('IdExcepcion').AsInteger    :=    cdFiltraExcepciones.FieldByName('IdExcepcion').AsInteger;
        cdReporteMemoria.FieldByName('IdPersonal').AsInteger     :=     cdFiltraExcepciones.FieldByName('IdPersonal').AsInteger;
        cdReporteMemoria.FieldByName('Start').AsDateTime         :=         cdFiltraExcepciones.FieldByName('Start').AsDateTime;
        cdReporteMemoria.FieldByName('NombreCompleto').AsString  :=  cdFiltraExcepciones.FieldByName('NombreCompleto').AsString;
        cdReporteMemoria.FieldByName('Fecha').AsDateTime         :=         cdFiltraExcepciones.FieldByName('Fecha').AsDateTime;
        cdReporteMemoria.FieldByName('hora').AsString            :=            cdFiltraExcepciones.FieldByName('hora').AsString;
        cdReporteMemoria.FieldByName('Tipo').AsString            :=            cdFiltraExcepciones.FieldByName('Tipo').AsString;
        cdReporteMemoria.FieldByName('Comentarios').AsString     :=     cdFiltraExcepciones.FieldByName('Comentarios').AsString;
        cdReporteMemoria.FieldByName('AplicADescuento').AsString := cdFiltraExcepciones.FieldByName('AplicaDescuento').AsString;

        if cdReporteMemoria.FieldByName('AplicADescuento').AsString = 'Si' then
        begin
          cdReporteMemoria.FieldByName('monto').AsString := obtenerMontoPorRetardo(cdReporteMemoria.FieldByName('Fecha').AsDateTime, cdReporteMemoria.FieldByName('hora').AsDateTime, cdReporteMemoria.FieldByName('Tipo').AsString,
          cdReporteMemoria.FieldByName('IdExcepcion').AsInteger, cdReporteMemoria.FieldByName('IdPersonal').AsInteger,
          cdReporteMemoria.FieldByName('AplicADescuento').AsString, cdFiltraExcepciones.FieldByName('montoXMinuto').AsFloat, DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end
        else
          cdReporteMemoria.FieldByName('monto').AsString := 'N/A';

        //Obtener el o los horarios en los que el empleado labora diariamente durante su jornada de trabajo
        if Not cdFiltraExcepciones.FieldByName('minutosXIdPersonalImss').IsNull then
        begin
          cdReporteMemoria.FieldByName('horarios').AsString := obtenerHorarios(cdFiltraExcepciones.FieldByName('IdPersonalImss').AsInteger, 0, 0, 'xIdPersonalImss', DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end else if Not cdFiltraExcepciones.FieldByName('minutosXIdCargo').IsNull then
        begin
          cdReporteMemoria.FieldByName('horarios').AsString := obtenerHorarios(0, cdFiltraExcepciones.FieldByName('IdCargo').AsInteger, 0, 'xIdCargo', DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end else if Not cdFiltraExcepciones.FieldByName('minutosXIdTipoNomina').IsNull then
        begin
          cdReporteMemoria.FieldByName('horarios').AsString := obtenerHorarios(0, 0, cdFiltraExcepciones.FieldByName('IdTipoNomina').AsInteger, 'xIdTipoNomina', DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end;

        cdReporteMemoria.FieldByName('montoXMinuto').AsString := 'Monto por Minuto: ' + FloatToStr(RoundTo(StrToFloat(cdFiltraExcepciones.FieldByName('montoXMinuto').AsString) + 0.0001, -4));

        cdReporteMemoria.Post;

        cdFiltraExcepciones.Next;
      end;

      //Datos de las inasistencias para el reporte
      inasistencias := TClientDataset.Create(Self);
      if Not CrearConjunto(inasistencias, 'nom_inasistencia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_inasistencia']);

      inasistencias.Open;

      inasistencias.First;
      while Not inasistencias.Eof do
      begin
        if ((inasistencias.FieldByName('Inicio').AsDateTime >= CxDateInicio.EditValue) and
            (inasistencias.FieldByName('Inicio').AsDateTime <= CxDateTermino.EditValue) or
            (inasistencias.FieldByName('Termino').AsDateTime >= CxDateInicio.EditValue) and
            (inasistencias.FieldByName('Termino').AsDateTime <= CxDateTermino.EditValue)) then
        begin
          fechaInicio  :=  inasistencias.FieldByName('Inicio').AsDateTime;
          fechaTermino := inasistencias.FieldByName('Termino').AsDateTime;

          while fechaInicio <= fechaTermino do
          begin
            if (fechaInicio >= CxDateInicio.EditValue and (fechaInicio <= CxDateTermino.EditValue)) then
            begin
              cdReporteMemoria.Append;
              cdReporteMemoria.FieldByName('IdExcepcion').AsInteger    :=    inasistencias.FieldByName('IdExcepcion').AsInteger;
              cdReporteMemoria.FieldByName('IdPersonal').AsInteger     :=     inasistencias.FieldByName('IdPersonal').AsInteger;
              cdReporteMemoria.FieldByName('Start').AsDateTime         :=    fechaInicio;
              cdReporteMemoria.FieldByName('NombreCompleto').AsString  :=  inasistencias.FieldByName('NombreCompleto').AsString;
              cdReporteMemoria.FieldByName('Fecha').AsDateTime         :=    fechaInicio;
              cdReporteMemoria.FieldByName('hora').AsString            :=          'N/A';
              cdReporteMemoria.FieldByName('Tipo').AsString            := 'INASISTENCIA';
              cdReporteMemoria.FieldByName('Comentarios').AsString     :=      inasistencias.FieldByName('Referencia').AsString;
              cdReporteMemoria.FieldByName('AplicaDescuento').AsString :=           'Si';

              //En el monto ira lo que gana en un dia el empleado(salario diario)
              cdReporteMemoria.FieldByName('monto').AsString := obtenerSalarioDiario(cdReporteMemoria.FieldByName('IdPersonal').AsInteger);

              cdReporteMemoria.Post;
            end;

            fechaInicio := IncDay(fechaInicio, 1);
          end;
        end;

        inasistencias.Next;
      end;

      //Si hay registros para imprimir, entonces agrupar los datos por la fecha
      if cdReporteMemoria.RecordCount > 0 then
      begin
        cdReporteMemoria.IndexFieldNames := 'Fecha;IdPersonal;hora';
      end;

      //Datos de la empresa para el reporte
      if not CargarDatosFiltrados(CdDatosEmpresa, 'idConfiguracion', [18]) then
        raise InteligentException.CreateByCode(6, ['idConfiguracion', 'Configuracion', '18']);

      if CdDatosEmpresa.Active then
        CdDatosEmpresa.Refresh
      else
        CdDatosEmpresa.Open;
      try
        cdReporteMemoria.Filtered := false;
        cdReporteMemoria.Filter := 'idPersonal = ' + cdPersonal.FieldByName('IdPersonal').AsString;
        cdReporteMemoria.Filtered := True;
        ClientModule1.ImprimeReporte('ListaRetardos.fr3', frxReportRetardos);
      finally
        cdReporteMemoria.Filtered := False;
      end;
    finally
      dxBtnRefrescarClick(dxBtnRefrescar);
      inasistencias.Destroy;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCapturaRetardos.dxBtnListadoClick(Sender: TObject);
var
  Cursor: TCursor;
  inasistencias   :      TClientDataset;
  fechaInicio, fechaTermino : TDateTime;
  esPrimeraEntrada : Boolean;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      //Validaciones para poder continuar
      if CxDateInicio.EditValue = null then
        raise InteligentException.CreateByCode(24, ['Introduce la fecha de inicio.']);

      if CxDateTermino.EditValue = null then
        raise InteligentException.CreateByCode(24, ['Introduce la fecha de término.']);

      if Not CargarDatosFiltrados(cdFiltraExcepciones, 'IdTipoNomina,FechaInicio,FechaTermino', [cdPersonal.FieldByName('IdTipoNomina').AsInteger, ClientModule1.DatetoStrSql(CxDateInicio.EditValue), ClientModule1.DatetoStrSql(CxDateTermino.EditValue)])  then
        raise InteligentException.CreateByCode(6, ['nom_excepcioneshorarios', ClientModule1.DatetoStrSql(CxDateInicio.EditValue) + ' - ' + ClientModule1.DatetoStrSql(CxDateTermino.EditValue), 'FechaInicioReal, FechaTermino' ]);

      if cdFiltraExcepciones.Active then
        cdFiltraExcepciones.Refresh
      else
        cdFiltraExcepciones.Open;

      //Crear Dataset en memoria para el reporte
      crearDatasetMemoria;

      if Not cdReporteMemoria.Active then
        cdReporteMemoria.Open;

      cdReporteMemoria.EmptyDataSet;

      //Datos de los retardos para el reporte
      cdFiltraExcepciones.First;
      while Not cdFiltraExcepciones.Eof do
      begin
        cdReporteMemoria.Append;
        cdReporteMemoria.FieldByName('IdExcepcion').AsInteger    :=    cdFiltraExcepciones.FieldByName('IdExcepcion').AsInteger;
        cdReporteMemoria.FieldByName('IdPersonal').AsInteger     :=     cdFiltraExcepciones.FieldByName('IdPersonal').AsInteger;
        cdReporteMemoria.FieldByName('Start').AsDateTime         :=         cdFiltraExcepciones.FieldByName('Start').AsDateTime;
        cdReporteMemoria.FieldByName('NombreCompleto').AsString  :=  cdFiltraExcepciones.FieldByName('NombreCompleto').AsString;
        cdReporteMemoria.FieldByName('Fecha').AsDateTime         :=         cdFiltraExcepciones.FieldByName('Fecha').AsDateTime;
        cdReporteMemoria.FieldByName('hora').AsString            :=            cdFiltraExcepciones.FieldByName('hora').AsString;
        cdReporteMemoria.FieldByName('Tipo').AsString            :=            cdFiltraExcepciones.FieldByName('Tipo').AsString;
        cdReporteMemoria.FieldByName('Comentarios').AsString     :=     cdFiltraExcepciones.FieldByName('Comentarios').AsString;
        cdReporteMemoria.FieldByName('AplicADescuento').AsString := cdFiltraExcepciones.FieldByName('AplicaDescuento').AsString;
        cdReporteMemoria.FieldByName('SalarioDiario').AsFloat := cdFiltraExcepciones.FieldByName('SalarioDiario').AsFloat;
        if cdReporteMemoria.FieldByName('AplicADescuento').AsString = 'Si' then
        begin
          cdReporteMemoria.FieldByName('monto').AsString := obtenerMontoPorRetardo(cdReporteMemoria.FieldByName('Fecha').AsDateTime, cdReporteMemoria.FieldByName('hora').AsDateTime, cdReporteMemoria.FieldByName('Tipo').AsString,
          cdReporteMemoria.FieldByName('IdExcepcion').AsInteger, cdReporteMemoria.FieldByName('IdPersonal').AsInteger,
          cdReporteMemoria.FieldByName('AplicADescuento').AsString, cdFiltraExcepciones.FieldByName('montoXMinuto').AsFloat, DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end
        else
          cdReporteMemoria.FieldByName('monto').AsString := 'N/A';

        //Obtener el o los horarios en los que el empleado labora diariamente durante su jornada de trabajo
        if Not cdFiltraExcepciones.FieldByName('minutosXIdPersonalImss').IsNull then
        begin
          cdReporteMemoria.FieldByName('horarios').AsString := obtenerHorarios(cdFiltraExcepciones.FieldByName('IdPersonalImss').AsInteger, 0, 0, 'xIdPersonalImss', DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end else if Not cdFiltraExcepciones.FieldByName('minutosXIdCargo').IsNull then
        begin
          cdReporteMemoria.FieldByName('horarios').AsString := obtenerHorarios(0, cdFiltraExcepciones.FieldByName('IdCargo').AsInteger, 0, 'xIdCargo', DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end else if Not cdFiltraExcepciones.FieldByName('minutosXIdTipoNomina').IsNull then
        begin
          cdReporteMemoria.FieldByName('horarios').AsString := obtenerHorarios(0, 0, cdFiltraExcepciones.FieldByName('IdTipoNomina').AsInteger, 'xIdTipoNomina', DayOfWeek(cdFiltraExcepciones.FieldByName('Fecha').AsDateTime));
        end;

        cdReporteMemoria.FieldByName('montoXMinuto').AsString := 'Monto por Minuto: ' + FloatToStr(RoundTo(StrToFloatDef(cdFiltraExcepciones.FieldByName('montoXMinuto').AsString,0) + 0.0001, -4));
        cdReporteMemoria.FieldByName('MontoMinuto').AsFloat :=  (RoundTo(StrToFloatDef(cdFiltraExcepciones.FieldByName('montoXMinuto').AsString,0) + 0.0001, -4));
        cdReporteMemoria.Post;

        cdFiltraExcepciones.Next;
      end;

      //Datos de las inasistencias para el reporte
      inasistencias := TClientDataset.Create(Self);
      if Not CrearConjunto(inasistencias, 'nom_inasistencia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_inasistencia']);

      inasistencias.Open;

      inasistencias.First;
      while Not inasistencias.Eof do
      begin
        if ((inasistencias.FieldByName('Inicio').AsDateTime >= CxDateInicio.EditValue) and
            (inasistencias.FieldByName('Inicio').AsDateTime <= CxDateTermino.EditValue) or
            (inasistencias.FieldByName('Termino').AsDateTime >= CxDateInicio.EditValue) and
            (inasistencias.FieldByName('Termino').AsDateTime <= CxDateTermino.EditValue)) then
        begin
          fechaInicio  :=  inasistencias.FieldByName('Inicio').AsDateTime;
          fechaTermino := inasistencias.FieldByName('Termino').AsDateTime;

          while fechaInicio <= fechaTermino do
          begin
            if (fechaInicio >= CxDateInicio.EditValue and (fechaInicio <= CxDateTermino.EditValue)) then
            begin
              cdReporteMemoria.Append;
              cdReporteMemoria.FieldByName('IdExcepcion').AsInteger    :=    inasistencias.FieldByName('IdExcepcion').AsInteger;
              cdReporteMemoria.FieldByName('IdPersonal').AsInteger     :=     inasistencias.FieldByName('IdPersonal').AsInteger;
              cdReporteMemoria.FieldByName('Start').AsDateTime         :=    fechaInicio;
              cdReporteMemoria.FieldByName('NombreCompleto').AsString  :=  inasistencias.FieldByName('NombreCompleto').AsString;
              cdReporteMemoria.FieldByName('Fecha').AsDateTime         :=    fechaInicio;
              cdReporteMemoria.FieldByName('hora').AsString            :=          'N/A';
              cdReporteMemoria.FieldByName('Tipo').AsString            := 'INASISTENCIA';
              cdReporteMemoria.FieldByName('Comentarios').AsString     :=      inasistencias.FieldByName('Referencia').AsString;
              cdReporteMemoria.FieldByName('AplicaDescuento').AsString :=           'Si';

              //En el monto ira lo que gana en un dia el empleado(salario diario)
              cdReporteMemoria.FieldByName('monto').AsString := obtenerSalarioDiario(cdReporteMemoria.FieldByName('IdPersonal').AsInteger);

              cdReporteMemoria.Post;
            end;

            fechaInicio := IncDay(fechaInicio, 1);
          end;
        end;

        inasistencias.Next;
      end;

      //Si hay registros para imprimir, entonces agrupar los datos por la fecha
      if cdReporteMemoria.RecordCount > 0 then
      begin
        cdReporteMemoria.IndexFieldNames := 'Fecha;IdPersonal;hora';
      end;

      //Datos de la empresa para el reporte
      if not CargarDatosFiltrados(CdDatosEmpresa, 'idConfiguracion', [18]) then
        raise InteligentException.CreateByCode(6, ['idConfiguracion', 'Configuracion', '18']);

      if CdDatosEmpresa.Active then
        CdDatosEmpresa.Refresh
      else
        CdDatosEmpresa.Open;

      ClientModule1.ImprimeReporte('ListaRetardos.fr3', frxReportRetardos);
    finally
      dxBtnRefrescarClick(dxBtnRefrescar);
      inasistencias.Destroy;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

end.
