unit UTFrmExcepciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, DB, DBCtrls, DBClient, DateUtils,
  ClientModuleUnit1, Grids, DBGrids, ExtCtrls, ComCtrls, JvExComCtrls,
  AdvListV, JvExDBGrids, JvDBGrid, AdvDateTimePicker, AdvCombo, AdvSmoothButton,
  AdvSmoothPanel, URegistro, AdvDBDateTimePicker, Mask, AdvGlowButton,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinsdxBarPainter, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxButtons,
  Menus, cxLabel;

type
  TFrmExcepciones = class(TForm)
    dsPersonal: TDataSource;
    dsInasistencia: TDataSource;
    dsInasistenciaUpt: TDataSource;
    Panel1: TPanel;
    DBText1: TDBText;
    Panel2: TPanel;
    GridDatos: TJvDBGrid;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Panel_Captura: TPanel;
    Panel_Botones: TPanel;
    Btn_Cancelar: TcxButton;
    Panel3: TPanel;
    Btn_Aceptar: TcxButton;
    Btn_Cancelar2: TcxButton;
    Panel4: TPanel;
    Btn_Grabar: TcxButton;
    dsTipoInasistencia: TDataSource;
    dxbrmngr1: TdxBarManager;
    tbdxbrmngr1Bar1: TdxBar;
    btn_Editar: TdxBarLargeButton;
    btn_Agregar: TdxBarLargeButton;
    btn_Eliminar: TdxBarLargeButton;
    cb1: TdxBarCombo;
    cbbTipos: TAdvComboBox;
    dDesde: TAdvDateTimePicker;
    dHasta: TAdvDateTimePicker;
    groupBox1: TcxGroupBox;
    DtInicio: TAdvDBDateTimePicker;
    DtTermino: TAdvDBDateTimePicker;
    dblkcbbIdTipoInasistencia: TDBLookupComboBox;
    edtReferencia: TDBEdit;
    jvlbl1: TJvLabel;
    jvlbl2: TJvLabel;
    dxBtnCerrar: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    TDBDateAplica: TAdvDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure cbbTiposChange(Sender: TObject);
    procedure dDesdeUserInput(Sender: TObject; const UserString: string;
      var DateAndTime: TDateTime; var AllowChange: Boolean);
    procedure dDesdeCloseUp(Sender: TObject);
    procedure dHastaCloseUp(Sender: TObject);
    procedure dDesdeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure Btn_AceptarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_GrabarClick(Sender: TObject);
    procedure Btn_Cancelar2Click(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_EliminarClick(Sender: TObject);
    procedure GridDatosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DtInicioChange(Sender: TObject);
    procedure dxBtnCerrarClick(Sender: TObject);
  private
    FrmCaptura: TForm;
    DebesValidar: Boolean;
    InicioOriginal,
    TerminoOriginal: TDate;
    Nuevos: TStringList;
    procedure LlenarListView;
    procedure FiltrarFaltas(Sender: TObject);
    procedure CapturaFormShow(Sender: TObject);
    procedure CapturaFormClose(Sender: TObject; var Action: TCloseAction);
    procedure CapturaFormCloseQuery(Sender: TObject; var CanClose: Boolean);
  public
    { Public declarations }
  end;

var
  FrmExcepciones: TFrmExcepciones;

implementation

uses 
  UInteliDialog, Unit2;

{$R *.dfm}

procedure TFrmExcepciones.Btn_GrabarClick(Sender: TObject);
begin
  if EnTransaccion then
    ConcretarTransaccion;


end;

procedure TFrmExcepciones.Btn_Cancelar2Click(Sender: TObject);
begin
  if EnTransaccion then
    CancelarTransaccion;
end;

procedure TFrmExcepciones.Btn_AceptarClick(Sender: TObject);
begin
  DebesValidar := True;
end;

procedure TFrmExcepciones.Btn_AgregarClick(Sender: TObject);
var
  Cursor: TCursor;
  LocIdPersonal: string;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crSQLWait;

    if dsInasistenciaUpt.DataSet.State in [dsInsert, dsEdit] then
      dsInasistenciaUpt.DataSet.Cancel;

    // Abregar un nuevo registro
    dsInasistenciaUpt.DataSet.Append;
    dsInasistenciaUpt.DataSet.FieldByName('IdExcepcion').AsInteger := 0;
    dsInasistenciaUpt.DataSet.FieldByName('IdTipoInasistencia').AsInteger := dsTipoInasistencia.DataSet.FieldByName('IdTipoInasistencia').AsInteger;
    dsInasistenciaUpt.DataSet.FieldByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
    dsInasistenciaUpt.DataSet.FieldByName('Inicio').AsDateTime := Now;
    dsInasistenciaUpt.DataSet.FieldByName('Termino').AsDateTime := Now;

    FrmCaptura.Caption := 'Captura de inasistencia por personal.';
    if FrmCaptura.ShowModal = mrOk then
    begin
      LocIdPersonal := dsInasistenciaUpt.DataSet.FieldByName('IdPersonal').AsString;
      dsInasistenciaUpt.DataSet.Post;
      TClientDataSet(dsInasistenciaUpt.DataSet).ApplyUpdates(-1);
      ClientModule1.registrarEvento('MODULO INASISTENCIAS', 'NUEVA INASISTENCIA', 'IDPERSONAL: ' + LocIdPersonal, 0.0, 0);
      // Agregar el nuevo registro a la lista
      Nuevos.Add(IntToStr(UltimoID));

      // Verificar si el criterio de seleccion de información incluye este nuevo registro
      if dtInicio.Date < dDesde.Date then
        dDesde.Date := dtInicio.Date;

      if dtTermino.Date > dHasta.Date then
        dHasta.Date := dtTermino.Date;

      // Refrescar los datos
      FiltrarFaltas(Sender);
    end;
  Finally
    Screen.Cursor := Cursor;
    dsInasistenciaUpt.DataSet.Cancel;
  End;
end;

procedure TFrmExcepciones.Btn_CancelarClick(Sender: TObject);
begin
  DebesValidar := False;
end;

procedure TFrmExcepciones.Btn_EditarClick(Sender: TObject);
var
  LocIdPersonal: string;
begin
  if dsInasistencia.DataSet.RecordCount > 0 then
  Try
    // Editar el registro existente
    if Not CargarDatosFiltrados(TClientDataSet(dsInasistenciaUpt.DataSet), 'IdExcepcion', [dsInasistencia.DataSet.FieldByName('IdExcepcion').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Inasistencias', dsInasistencia.DataSet.FieldByName('IdExcepcion').AsInteger, 'Id. Inasistencia']);

    if  (TClientDataset(dsInasistenciaUpt.DataSet).State in [dsInsert, dsEdit]) then
      TClientDataset(dsInasistenciaUpt.DataSet).Cancel;

    if TClientDataset(dsInasistenciaUpt.DataSet).Active then
      TClientDataset(dsInasistenciaUpt.DataSet).Refresh
    else
      TClientDataset(dsInasistenciaUpt.DataSet).Open;


    if dsInasistenciaUpt.DataSet.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [dsInasistencia.DataSet.FieldByName('IdExcepcion').AsInteger, 'Inasistencias']);

    if TClientDataset(dsInasistenciaUpt.DataSet).State = dsBrowse then
      dsInasistenciaUpt.DataSet.Edit;

    if FrmCaptura.ShowModal = mrOk then
    begin
      LocIdPersonal := dsInasistenciaUpt.DataSet.FieldByName('IdPersonal').AsString;
      dsInasistenciaUpt.DataSet.Post;
      TClientDataSet(dsInasistenciaUpt.DataSet).ApplyUpdates(-1);
      ClientModule1.registrarEvento('MODULO INASISTENCIAS', 'MODIFICACION DE INASISTENCIA', 'IDPERSONAL: ' + LocIdPersonal, 0.0, 0);
    end;
  Finally
    dsInasistenciaUpt.DataSet.Cancel;
  End;
end;

procedure TFrmExcepciones.Btn_EliminarClick(Sender: TObject);
var
  Posicion: Integer;
  LocIdPersonal: String;
begin
  if dsInasistencia.DataSet.RecordCount > 0 then
  Try
    // Editar el registro existente
    if Not CargarDatosFiltrados(TClientDataSet(dsInasistenciaUpt.DataSet), 'IdExcepcion', [dsInasistencia.DataSet.FieldByName('IdExcepcion').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Inasistencias', dsInasistencia.DataSet.FieldByName('IdExcepcion').AsInteger, 'Id. Inasistencia']);

    if CuantosRegistros(TClientDataSet(dsInasistenciaUpt.DataSet)) = 0 then
      raise InteligentException.CreateByCode(13, [dsInasistencia.DataSet.FieldByName('IdExccepcion').AsInteger, 'Inasistencias']);

    if InteliDialog.ShowModal('Eliminar registro', 'El registro:' + #10 + dsInasistencia.DataSet.FieldByName('Inicio').AsString + '-' + dsInasistencia.DataSet.FieldByName('Termino').AsString + ' : ' + dsInasistencia.DataSet.FieldByName('Referencia').AsString + #10 + #10 +
                                                   'Está a punto de ser eliminado.' + #10 + #10 +
                                                   '¿Desea eliminarlo de manera definitiva en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ProcedimientoAlmacenado('borrar_registros', 'Tabla,Lista', ['nom_inasistencia', dsInasistencia.DataSet.FieldByName('IdExcepcion').AsInteger]);
      Posicion := Nuevos.IndexOf(dsInasistencia.DataSet.FieldByName('IdExcepcion').AsString);

      LocIdPersonal := dsInasistenciaUpt.DataSet.FieldByName('idPersonal').AsString;

      if Posicion >= 0 then
        Nuevos.Delete(Posicion);

      ClientModule1.registrarEvento('MODULO INASISTENCIAS', 'ELIMINACION DE INASISTENCIA', 'IDPersonal: ' + LocIdPersonal, 0.0, 0);

      FiltrarFaltas(Sender);
    end;
  Finally
    dsInasistenciaUpt.DataSet.Cancel;
  End;
end;

procedure TFrmExcepciones.cbbTiposChange(Sender: TObject);
begin
  FiltrarFaltas(Sender);
end;

procedure TFrmExcepciones.dDesdeCloseUp(Sender: TObject);
begin
  FiltrarFaltas(Sender);
end;

procedure TFrmExcepciones.dDesdeExit(Sender: TObject);
begin
  FiltrarFaltas(Sender);
end;

procedure TFrmExcepciones.dDesdeUserInput(Sender: TObject;
  const UserString: string; var DateAndTime: TDateTime;
  var AllowChange: Boolean);
begin
  ShowMessage('Rangel');
end;

procedure TFrmExcepciones.dHastaCloseUp(Sender: TObject);
begin
  FiltrarFaltas(Sender);
end;

procedure TFrmExcepciones.DtInicioChange(Sender: TObject);
begin
  DtTermino.Date := DtInicio.Date;
  TDbDateAplica.Date := DtInicio.Date;
end;

procedure TFrmExcepciones.dxBtnCerrarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmExcepciones.FormClose(Sender: TObject; var Action: TCloseAction);
var
  h: Integer;
begin
  if EnTransaccion then
    CancelarTransaccion;


  LiberarVentana(Self, Action);

  for h := 0 to GridDatos.Columns.Count - 1 do
    if GridDatos.Columns.Items[h].Title.Caption <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, GridDatos.Columns.Items[h].Title.Caption, IntToStr(GridDatos.Columns.Items[h].Width));
end;

procedure TFrmExcepciones.CapturaFormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Try
    if DebesValidar then
    begin
      CanClose := False;

      // Verificar la captura de datos
      if dtInicio.Date > dtTermino.Date then
      begin
        dtInicio.SetFocus;
        raise InteligentException.CreateByCode(8, ['La fecha de Inicio de la Inasistencia no puede ser posterior a la fecha de Término de la misma']);
      end;

      if EdtReferencia.Text = '' then
      begin
        EdtReferencia.SetFocus;
        raise InteligentException.CreateByCode(18, ['Referencia']);
      end;
    End;

    CanClose := True;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmExcepciones.FormCreate(Sender: TObject);
var
  h: Integer;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crSQLWait;

    Nuevos := TStringList.Create;
    Nuevos.Clear;

    AccedeACoordenadas(Self);

    DebesValidar := False;

    // Reajustar los anchos de las columnas
    for h := 0 to GridDatos.Columns.Count - 1 do
      Try
        GridDatos.Columns.Items[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, GridDatos.Columns.Items[h].Title.Caption));
      Except
        ;
      End;

    // Crear la ventana de captura de datos
    FrmCaptura := TForm.Create(Self);
    FrmCaptura.Name := 'MemFrmCapturaExcepciones';
    FrmCaptura.OnShow := CapturaFormShow;
    FrmCaptura.OnClose := CapturaFormClose;
    FrmCaptura.OnCloseQuery := CapturaFormCloseQuery;
    FrmCaptura.Width := 400;
    FrmCaptura.Height := 230;
    FrmCaptura.BorderStyle := bsDialog;
    Panel_Captura.Parent := FrmCaptura;
    Panel_Captura.Align := alClient;
    Panel_Botones.Parent := FrmCaptura;
    Panel_Botones.Align := alBottom;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmExcepciones.FormShow(Sender: TObject);
var
  Recargar: Boolean;
  Cursor: TCursor;
  Marca: TBookMark;
begin
  Cursor := Screen.Cursor;

  Try
    Try
      Screen.Cursor := crSQLWait;

      cbbTipos.Items.Clear;
      cbbTipos.Items.AddObject('< TODOS >', TObject(-1));

      Marca := dsTipoInasistencia.DataSet.BookMark;
      Try
        dsTipoInasistencia.DataSet.First;
        while Not dsTipoInasistencia.DataSet.Eof do
        begin
          cbbTipos.Items.AddObject(dsTipoInasistencia.DataSet.FieldByName('Titulo').AsString, TObject(dsTipoInasistencia.DataSet.FieldByName('IdTipoInasistencia').AsInteger));

          dsTipoInasistencia.DataSet.Next;
        end;
      Finally
        dsTipoInasistencia.DataSet.GotoBookMark(Marca);
      End;

      cbbTipos.ItemIndex := 0;

      IniciarTransaccion;

      // Verificar si el clientdataset ya fué creado
      if TClientDataSet(dsInasistencia.DataSet).ProviderName = '' then
        if Not CrearConjunto(TClientDataSet(dsInasistencia.DataSet), 'nom_inasistencia', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Inasistencias por Empleado']);

      Recargar := False;
      if (dsInasistencia.DataSet.Active) then
        if (dsInasistencia.DataSet.RecordCount > 0) then
        begin
          if (dsInasistencia.DataSet.FieldByName('IdPersonal').AsInteger <> dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger) then
            Recargar := True;
        end
        else
          Recargar := True
      else
        Recargar := True;

      if Recargar then
        if Not CargarDatosFiltrados(TClientDataSet(dsInasistencia.DataSet), 'IdPersonal,Anio', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger, YearOf(Now)]) then
          raise InteligentException.CreateByCode(6, ['Inasistencias por Empleado', dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger, 'Id. Personal']);

      if dsInasistencia.DataSet.Active then
        dsInasistencia.DataSet.Refresh
      else
        dsInasistencia.DataSet.Open;

      Btn_Editar.Enabled := dsInasistencia.DataSet.RecordCount > 0;
      Btn_Eliminar.Enabled := dsInasistencia.DataSet.RecordCount > 0;

      LlenarListView; // Llenar el ListView con las inasistencias
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmExcepciones.GridDatosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TJvDBGrid;
begin
  // Cambiar el color para los registros que se están dando de alta recién
  Grid := Sender as TJvDBGrid;
  if Nuevos.IndexOf(Grid.DataSource.DataSet.FieldByName('IdExcepcion').AsString) >= 0 then
  begin
    Grid.Canvas.Font.Color := clBlue;
    Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmExcepciones.LlenarListView;
var
  IdGrupo: Integer;
begin
  // Primero hay que dar de alta todos los grupos que se contengan en el dataset
  dsInasistencia.DataSet.First;
  Try
    InicioOriginal := 0;
    TerminoOriginal := 0;
    while not dsInasistencia.DataSet.Eof do
    begin
      if (dsInasistencia.DataSet.RecNo = 1) or (InicioOriginal > dsInasistencia.DataSet.FieldByName('Inicio').AsDateTime) then
        InicioOriginal := dsInasistencia.DataSet.FieldByName('Inicio').AsDateTime;

      if TerminoOriginal < dsInasistencia.DataSet.FieldByName('Termino').AsDateTime then
        TerminoOriginal := dsInasistencia.DataSet.FieldByName('Termino').AsDateTime;

      dsInasistencia.DataSet.Next;
    end;

    if dsInasistencia.DataSet.RecordCount = 0 then
    begin
      dDesde.Date := EncodeDate(YearOf(Now), 1, 1);
      dHasta.Date := EncodeDate(YearOf(Now), 12, 31);
    end
    else
    begin
      dDesde.Date := InicioOriginal;
      dHasta.Date := TerminoOriginal;
    end;
  Finally
    dsInasistencia.DataSet.First;
  End;

  //FiltrarFaltas(Nil);
end;

procedure TFrmExcepciones.FiltrarFaltas(Sender: TObject);
var
  IdTipoInasistencia: Integer;
  Desde, Hasta: String;
begin
  Try
    // Obtener los parametros de filtrado
    IdTipoInasistencia := Integer(cbbTipos.Items.Objects[cbbTipos.ItemIndex]);
    Desde := ClientModule1.DatetoStrSql(dDesde.Date);
    Hasta := ClientModule1.DatetoStrSql(dHasta.Date);

    if Not CargarDatosFiltrados(TClientDataSet(dsInasistencia.DataSet), 'IdPersonal,IdTipoInasistencia,Desde,Hasta', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger, IdTipoInasistencia, Desde, Hasta]) then
      raise InteligentException.CreateByCode(6, ['Tipos de Inasistencia', dsPersonal.DataSet.FieldByName('IdPersonal').AsString + ' / ' + IntToStr(IdTipoInasistencia) + ' / ' + Desde + ' / ' + Hasta, 'Id. Tipo Nómina / Desde / Hasta']);

    if dsInasistencia.DataSet.Active then
      dsInasistencia.DataSet.Refresh
    else
      dsInasistencia.DataSet.Open;

    Btn_Editar.Enabled := dsInasistencia.DataSet.RecordCount > 0;
    Btn_Eliminar.Enabled := dsInasistencia.DataSet.RecordCount > 0;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      dsInasistencia.DataSet.Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      dsInasistencia.DataSet.Close;
    end;
  End;
end;

procedure TFrmExcepciones.CapturaFormShow(Sender: TObject);
begin
  AccedeACoordenadas(FrmCaptura);
  FrmCaptura.Height := 230;
end;

procedure TFrmExcepciones.CapturaFormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarVentana(FrmCaptura, Action);
  Action := caHide;
end;

end.
