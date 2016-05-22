unit UTFrmTiempoExtra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, DB, DBCtrls, DBClient, DateUtils,
  ClientModuleUnit1, Grids, DBGrids, ExtCtrls, ComCtrls, JvExComCtrls,
  AdvListV, JvExDBGrids, JvDBGrid, AdvDateTimePicker, AdvCombo, AdvSmoothButton,
  AdvSmoothPanel, URegistro, AdvDBDateTimePicker, Mask, AdvGlowButton,
  JvComponentBase, JvBalloonHint;

type
  TFrmTiempoExtra = class(TForm)
    dsPersonal: TDataSource;
    Panel1: TPanel;
    DBText1: TDBText;
    Panel2: TPanel;
    GridDatos: TJvDBGrid;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Panel_Menu_Edicion: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Btn_Editar: TAdvSmoothButton;
    Btn_Agregar: TAdvSmoothButton;
    Btn_Eliminar: TAdvSmoothButton;
    dDesde: TAdvDateTimePicker;
    Panel_Captura: TPanel;
    Fecha: TAdvDBDateTimePicker;
    Panel_Botones: TPanel;
    Btn_Cancelar: TAdvGlowButton;
    Panel3: TPanel;
    Btn_Aceptar: TAdvGlowButton;
    Btn_Cancelar2: TAdvGlowButton;
    Panel4: TPanel;
    Btn_Grabar: TAdvGlowButton;
    dsPersonalTEUpt: TDataSource;
    dsPersonalTE: TDataSource;
    dHasta: TAdvDateTimePicker;
    JvLabel2: TJvLabel;
    cdBuscar: TClientDataSet;
    Horas: TAdvDateTimePicker;
    JvLabel1: TJvLabel;
    procedure FormShow(Sender: TObject);
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
    procedure HorasExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GridDatosDblClick(Sender: TObject);
  private
    FrmCaptura: TForm;
    DebesValidar: Boolean;
    Nuevos: TStringList;
    FrmCapturaModalResult: Word;
    OldFecha: TDate;
    procedure FiltrarFaltas(Sender: TObject);
    procedure CapturaFormShow(Sender: TObject);
    procedure CapturaFormClose(Sender: TObject; var Action: TCloseAction);
  public
    { Public declarations }
  end;

var
  FrmTiempoExtra: TFrmTiempoExtra;

implementation

uses 
  UInteliDialog, Unit2, UTFrmCatalogoPersonal;

{$R *.dfm}

procedure TFrmTiempoExtra.Btn_GrabarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  Try
    Try
      Screen.Cursor := crSQLWait;

      if EnTransaccion then
        ConcretarTransaccion;
    Finally
      Nuevos.Clear;
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('La transacción ha sido cancelada', 'Ha ocurrido un error inesperado, debido a esto todos los cambios realizados se han perdido.' + #10 + #10 + 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      //Btn_Cancelar2.Click;
    end;
  End;
end;

procedure TFrmTiempoExtra.Btn_Cancelar2Click(Sender: TObject);
begin
  if EnTransaccion then
    CancelarTransaccion;
end;

procedure TFrmTiempoExtra.Btn_AceptarClick(Sender: TObject);
begin
  DebesValidar := False;

  Try
    Fecha.SetFocus;

    // Verificar que la fecha capturada no se haya registrado
    if cdBuscar.ProviderName = '' then
      if not CrearConjunto(cdBuscar, 'nom_personal_te', ccCatalog) then
        raise InteligentException.CreateByCode(21, ['Tiempo extra de Personal']);

    // Solo realizar esta validación si se trata de una edición con cambio de fecha o de una alta
    if ((dsPersonalTEUpt.DataSet.State = dsEdit) and (OldFecha <> Fecha.Date)) or (dsPersonalTEUpt.DataSet.State = dsInsert) then
    begin
      if Not CargarDatosFiltrados(cdBuscar, 'IdPersonal,Fecha', [Form2.cdPersonal.FieldByName('IdPersonal').AsInteger, ClientModule1.DatetoStrSql(Fecha.Date)]) then
        raise InteligentException.CreateByCode(6, ['Tiempo extra de Personal', 'Id. Personal / Fecha', Form2.cdPersonal.FieldByName('IdPersonal').AsString + ' / ' + ClientModule1.DatetoStrSql(Fecha.Date)]);

      if CuantosRegistros(cdBuscar) > 0 then
      begin
        Fecha.SetFocus;
        raise InteligentException.CreateByCode(17, ['Tiempo extra de Personal', ClientModule1.DatetoStrSql(Fecha.Date)]);
      end;
    end;

    // Veriricar que la cantidad de horas no sea igual a cero
    if (Horas.Time * 1) = 0 then
    begin
      Horas.SetFocus;
      raise InteligentException.CreateByCode(18, ['Número de Horas']);
    end;

    DebesValidar := True;
    FrmCapturaModalResult := mrOk;
    FrmCaptura.Close;
  Except
    on e:InteligentWarning do
      ;   // No hacer nada, solo es para cambiar el flujo del programa

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema', mtError, [mbOk], 0);
  End;
end;

procedure TFrmTiempoExtra.Btn_AgregarClick(Sender: TObject);
var
  Cursor: TCursor;
  Anio, Mes, Dia, Hora, Min, Seg, Ss: Word;
  locFecha: TDate;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crSQLWait;

    // Abregar un nuevo registro
    dsPersonalTEUpt.DataSet.Append;
    dsPersonalTEUpt.DataSet.FieldByName('IdPersonal_TE').AsInteger := 0;
    dsPersonalTEUpt.DataSet.FieldByName('IdPersonal').AsInteger := dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger;
    dsPersonalTEUpt.DataSet.FieldByName('Fecha').AsDateTime := Now;
    dsPersonalTEUpt.DataSet.FieldByName('Horas').AsFloat := 0.0;

    Horas.DateTime := 0;

    if FrmCaptura.ShowModal = mrOk then
    begin
      // Convertir las horas numero decimal
      DecodeDateTime(Horas.DateTime, Anio, Mes, Dia, Hora, Min, Seg, Ss);
      dsPersonalTEUpt.DataSet.FieldByName('Horas').AsFloat := Hora + (Min / 60);

      dsPersonalTEUpt.DataSet.Post;
      TClientDataSet(dsPersonalTEUpt.DataSet).ApplyUpdates(-1);

      // Agregar el nuevo registro a la lista
      Nuevos.AddObject(IntToStr(UltimoID), TObject(1)); // Registrar un alta de registro

      // Ajustar las fechas para que se muestre el registro recien guardado
      if Fecha.Date > dHasta.Date then
        dHasta.Date := Fecha.Date;

      if Fecha.Date < dDesde.Date then
        dDesde.Date := Fecha.Date;

      // Refrescar los datos
      if dsPersonalTEUpt.DataSet.RecordCount > 0 then
        locFecha := Fecha.Date;

      FiltrarFaltas(Sender);

      if Not dsPersonalTE.DataSet.Locate('Fecha', locFecha, []) then
        dsPersonalTE.DataSet.First;
    end;
  Finally
    Screen.Cursor := Cursor;
    dsPersonalTEUpt.DataSet.Cancel;
  End;
end;

procedure TFrmTiempoExtra.Btn_CancelarClick(Sender: TObject);
begin
  FrmCapturaModalResult := mrCancel;

  DebesValidar := False;
end;

procedure TFrmTiempoExtra.Btn_EditarClick(Sender: TObject);
var
  locHoras: Real;
  Indice: Integer;
  locFecha: TDate;
  Anio, Mes, Dia, Hora, Min, Seg, Ss: Word;
begin
  if dsPersonalTE.DataSet.RecordCount > 0 then
  Try
    // Editar el registro existente
    if Not CargarDatosFiltrados(TClientDataSet(dsPersonalTEUpt.DataSet), 'IdPersonal_TE', [dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Inasistencias', dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsInteger, 'Id. Horas Extras']);

    if dsPersonalTEUpt.DataSet.Active then
      dsPersonalTEUpt.DataSet.Refresh
    else
      dsPersonalTEUpt.DataSet.Open;

    if dsPersonalTEUpt.DataSet.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsInteger, 'Horas Extras']);

    // Poner las horas
    locHoras := StrToFloat(dsPersonalTEUpt.DataSet.FieldByName('Horas').AsString);
    Horas.DateTime := Trunc(locHoras) / 24;

    // Guardar la fecha original para prevenir la duplicidad en un cambio de fecha
    OldFecha := dsPersonalTEUpt.DataSet.FieldByName('Fecha').AsDateTime;

    dsPersonalTEUpt.DataSet.Edit;

    if FrmCaptura.ShowModal = mrOk then
    begin
      // Convertir las horas numero decimal
      DecodeDateTime(Horas.DateTime, Anio, Mes, Dia, Hora, Min, Seg, Ss);
      dsPersonalTEUpt.DataSet.FieldByName('Horas').AsFloat := Hora + (Min / 60);

      dsPersonalTEUpt.DataSet.Post;
      TClientDataSet(dsPersonalTEUpt.DataSet).ApplyUpdates(-1);

      // Modificar el registro de la lista
      Indice := Nuevos.IndexOf(dsPersonalTEUpt.DataSet.FieldByName('IdPersonal_TE').AsString);
      if Indice >= 0 then
        Nuevos.Objects[Indice] := TObject(2)   // Registrar una modificacion de registro
      else
        Nuevos.AddObject(dsPersonalTEUpt.DataSet.FieldByName('IdPersonal_TE').AsString, TObject(2));

      // Refrescar los datos
      if dsPersonalTEUpt.DataSet.RecordCount > 0 then
        locFecha := Fecha.Date;

      FiltrarFaltas(Sender);

      if Not dsPersonalTE.DataSet.Locate('Fecha', locFecha, []) then
        dsPersonalTE.DataSet.First;
    end;
  Finally
    dsPersonalTEUpt.DataSet.Cancel;
  End;
end;

procedure TFrmTiempoExtra.Btn_EliminarClick(Sender: TObject);
var
  Posicion: Integer;
begin
  if dsPersonalTE.DataSet.RecordCount > 0 then
  Try
    // Editar el registro existente
    if Not CargarDatosFiltrados(TClientDataSet(dsPersonalTEUpt.DataSet), 'IdPersonal_TE', [dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Horas Extras', dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsInteger, 'Id. Horas Extras']);

    if CuantosRegistros(TClientDataSet(dsPersonalTEUpt.DataSet)) = 0 then
      raise InteligentException.CreateByCode(13, [dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsInteger, 'Horas Extras']);

    if InteliDialog.ShowModal('Eliminar registro', 'El registro de tiempo extra de fecha ' + #10 + dsPersonalTE.DataSet.FieldByName('Fecha').AsString + ', con ' + dsPersonalTE.DataSet.FieldByName('Horas').AsString + ' Horas ' +
                                                   'está a punto de ser eliminado.' + #10 + #10 +
                                                   '¿Desea eliminarlo de manera definitiva en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ProcedimientoAlmacenado('borrar_registros', 'Tabla,Lista', ['nom_Personal_TE', dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsInteger]);
      Posicion := Nuevos.IndexOf(dsPersonalTE.DataSet.FieldByName('IdPersonal_TE').AsString);

      if Posicion >= 0 then
        Nuevos.Delete(Posicion);

      FiltrarFaltas(Sender);
    end;
  Finally
    dsPersonalTEUpt.DataSet.Cancel;
  End;
end;


procedure TFrmTiempoExtra.dDesdeCloseUp(Sender: TObject);
begin
  FiltrarFaltas(Sender);
end;

procedure TFrmTiempoExtra.dDesdeExit(Sender: TObject);
begin
  FiltrarFaltas(Sender);
end;

procedure TFrmTiempoExtra.dHastaCloseUp(Sender: TObject);
begin
  FiltrarFaltas(Sender);
end;

procedure TFrmTiempoExtra.FormClose(Sender: TObject; var Action: TCloseAction);
var
  h: Integer;
begin
  if EnTransaccion then
    CancelarTransaccion;

  if cdBuscar.ProviderName = '' then
    EliminarConjunto(cdBuscar);

  LiberarVentana(Self, Action);

  for h := 0 to GridDatos.Columns.Count - 1 do
    if GridDatos.Columns.Items[h].Title.Caption <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, GridDatos.Columns.Items[h].Title.Caption, IntToStr(GridDatos.Columns.Items[h].Width));
end;

procedure TFrmTiempoExtra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;

  // Verificar si existen registros pendientes de grabar
  if Nuevos.Count > 0 then
  begin
    CanClose := False;

    case InteliDialog.ShowModal('Existen registros pendientes de grabar', 'Existen registros de tiempo extra pendientes de grabar, si cancela esta ventana todos los registros que no se han grabado se perderán' + #10 + #10 + '¿Desea grabar estos registros antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: Btn_Grabar.Click;
      mrNo: CanClose := True;
      mrCancel: ; // No hacer nada
    end;
  end;
end;

procedure TFrmTiempoExtra.FormCreate(Sender: TObject);
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
    FrmCaptura.Name := 'MemFrmCapturaTiempoExtra';
    FrmCaptura.OnShow := CapturaFormShow;
    FrmCaptura.OnClose := CapturaFormClose;
    FrmCaptura.Width := 481;
    FrmCaptura.BorderStyle := bsDialog;
    Panel_Captura.Parent := FrmCaptura;
    Panel_Captura.Align := alClient;
    Panel_Botones.Parent := FrmCaptura;
    Panel_Botones.Align := alBottom;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmTiempoExtra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ShowMessage(IntToStr(Key));
end;

procedure TFrmTiempoExtra.FormShow(Sender: TObject);
var
  Recargar: Boolean;
  Cursor: TCursor;
  Anio, Mes, Dia: Word;
begin
  Cursor := Screen.Cursor;

  Try
    Try
      Screen.Cursor := crSQLWait;

      IniciarTransaccion;

      // Verificar si el clientdataset ya fué creado
      if TClientDataSet(dsPersonalTE.DataSet).ProviderName = '' then
        if Not CrearConjunto(TClientDataSet(dsPersonalTE.DataSet), 'nom_Personal_TE', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Horas Extras']);

      Recargar := False;
      if (dsPersonalTE.DataSet.Active) then
        if (dsPersonalTE.DataSet.RecordCount > 0) then
        begin
          if (dsPersonalTE.DataSet.FieldByName('IdPersonal').AsInteger <> dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger) then
            Recargar := True;
        end
        else
          Recargar := True
      else
        Recargar := True;

      if Recargar then
      begin
        // Seleccionar el rango de fechas en base a la fecha actual
        dHasta.Date := Now;
        DecodeDate(dHasta.Date, Anio, Mes, Dia);
        if Dia = 1 then
        begin
          if Mes = 1 then
          begin
            Dec(Anio);
            Mes := 12;
          end
          else
            Dec(Mes);
        end;

        dDesde.Date := EncodeDate(Anio, Mes, 1);

        if Not CargarDatosFiltrados(TClientDataSet(dsPersonalTE.DataSet), 'IdPersonal', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Horas Extras', dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger, 'Id. Personal']);
      end;

      if dsPersonalTE.DataSet.Active then
        dsPersonalTE.DataSet.Refresh
      else
        dsPersonalTE.DataSet.Open;

      Btn_Editar.Enabled := dsPersonalTE.DataSet.RecordCount > 0;
      Btn_Eliminar.Enabled := dsPersonalTE.DataSet.RecordCount > 0;
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

procedure TFrmTiempoExtra.GridDatosDblClick(Sender: TObject);
begin
  if dsPersonalTE.DataSet.RecordCount > 0 then
    Btn_Editar.Click;
end;

procedure TFrmTiempoExtra.GridDatosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TJvDBGrid;
  Indice: Integer;
begin
  // Cambiar el color para los registros que se están dando de alta recién
  Grid := Sender as TJvDBGrid;
  Indice := Nuevos.IndexOf(Grid.DataSource.DataSet.FieldByName('IdPersonal_TE').AsString);
  if Indice >= 0 then
  begin
    // Verificar si debe ser azul = Alta o verde = Modificación
    if Integer(Nuevos.Objects[Indice]) = 1 then
      Grid.Canvas.Font.Color := clBlue
    else
      Grid.Canvas.Font.Color := clGreen;

    Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmTiempoExtra.HorasExit(Sender: TObject);
var
  Anio, Mes, Dias, Hora, Min, Se, Ss: Word;
begin
  // Verificar si el número de minutos es mutiplo de 30
  DecodeDateTime(Horas.DateTime, Anio, Mes, Dias, Hora, Min, Se, Ss);

  if Min Mod 30 > 0 then
  begin
    // Convertur los minutos a multiplos de 30
    if Min Div 30 = 1 then
      Ss := 30
    else
      Ss := 0;

    if InteliDialog.ShowModal('El número de minutos para el tiempo extra debe ser multiplo de 30', 'El sistema ha sido programado para permitir la captura de tiempo extra en multiplos de media hora, el valor que se ha ingresado (' + IntToStr(Min) + ') se redondeará a ' + IntToStr(Ss) + ' Minutos.', mtInformation, [mbYes, mbCancel], 0) = mrYes then
      Horas.DateTime := EncodeDateTime(Anio, Mes, Dias, Hora, Ss, 0, 0)
    else
    begin
      Horas.SetFocus;
      raise InteligentWarning.Create('*');
    end;
  end;
end;

procedure TFrmTiempoExtra.FiltrarFaltas(Sender: TObject);
var
  Desde, Hasta: String;
begin
  Try
    // Obtener los parametros de filtrado

    Desde := ClientModule1.DatetoStrSql(dDesde.Date);
    Hasta := ClientModule1.DatetoStrSql(dHasta.Date);

    if Not CargarDatosFiltrados(TClientDataSet(dsPersonalTE.DataSet), 'IdPersonal,Desde,Hasta', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger, Desde, Hasta]) then
      raise InteligentException.CreateByCode(6, ['Horas Extras', dsPersonal.DataSet.FieldByName('IdPersonal').AsString + ' / ' + Desde + ' / ' + Hasta, 'Id. Personal / Desde / Hasta']);

    if dsPersonalTE.DataSet.Active then
      dsPersonalTE.DataSet.Refresh
    else
      dsPersonalTE.DataSet.Open;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      dsPersonalTE.DataSet.Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      dsPersonalTE.DataSet.Close;
    end;
  End;
end;

procedure TFrmTiempoExtra.CapturaFormShow(Sender: TObject);
begin
  AccedeACoordenadas(FrmCaptura);
  FrmCaptura.Height := 200;
  FrmCapturaModalResult := mrCancel;
end;

procedure TFrmTiempoExtra.CapturaFormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarVentana(FrmCaptura, Action);
  Action := caHide;

  FrmCaptura.ModalResult := FrmCapturaModalResult;
end;

end.
