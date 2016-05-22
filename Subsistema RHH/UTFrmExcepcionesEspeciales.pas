unit UTFrmExcepcionesEspeciales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, DB, DBCtrls, DBClient, DateUtils,
  ClientModuleUnit1, Grids, DBGrids, ExtCtrls, ComCtrls, JvExComCtrls,
  AdvListV, JvExDBGrids, JvDBGrid, AdvDateTimePicker, AdvCombo, AdvSmoothButton,
  AdvSmoothPanel, URegistro, AdvDBDateTimePicker, Mask, AdvGlowButton,
  JvComponentBase, JvBalloonHint, JvExMask, JvSpin, JvDBSpinEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus;

type
  TFrmExcepcionesEspeciales = class(TForm)
    dsPersonal: TDataSource;
    Panel1: TPanel;
    DBText1: TDBText;
    Panel2: TPanel;
    GridDatos: TJvDBGrid;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Btn_Editar: TAdvSmoothButton;
    Btn_Agregar: TAdvSmoothButton;
    Btn_Eliminar: TAdvSmoothButton;
    Panel_Captura: TPanel;
    Fecha: TAdvDBDateTimePicker;
    Panel_Botones: TPanel;
    Btn_Cancelar: TcxButton;
    Panel3: TPanel;
    Btn_Aceptar: TcxButton;
    Btn_Cancelar2: TcxButton;
    Panel4: TPanel;
    Btn_Grabar: TcxButton;
    dsExcepcionPersonalUpt: TDataSource;
    dsExcepcionPersonal: TDataSource;
    cdBuscar: TClientDataSet;
    JvLabel1: TJvLabel;
    DBCantidad: TJvDBSpinEdit;
    lcbTipoExcepcion: TDBLookupComboBox;
    JvLabel2: TJvLabel;
    dsExcepcionesCat: TDataSource;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    TDBDateFechaRegistro: TAdvDBDateTimePicker;
    dxBtnGuardar: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure GridDatosDblClick(Sender: TObject);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure dxBtnGuardarClick(Sender: TObject);
    procedure dxBtnCancelarClick(Sender: TObject);
  private
    FrmCaptura: TForm;
    DebesValidar: Boolean;
    Nuevos: TStringList;
    FrmCapturaModalResult: Word;
    OldFecha: TDate;
    OldExcepcion: Integer;
    procedure CapturaFormShow(Sender: TObject);
    procedure CapturaFormClose(Sender: TObject; var Action: TCloseAction);
  public
    FechaInicio: TDate;
    FechaTermino: TDate;
    IdPersonal: Integer;
  end;

var
  FrmExcepcionesEspeciales: TFrmExcepcionesEspeciales;

implementation

uses 
  UInteliDialog, Unit2, UTFrmCatalogoPersonal;

{$R *.dfm}

procedure TFrmExcepcionesEspeciales.Btn_GrabarClick(Sender: TObject);
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

procedure TFrmExcepcionesEspeciales.Btn_Cancelar2Click(Sender: TObject);
begin
  if EnTransaccion then
    CancelarTransaccion;

  Nuevos.Clear;
end;

procedure TFrmExcepcionesEspeciales.Btn_AceptarClick(Sender: TObject);
begin
  DebesValidar := False;

  Try
    Fecha.SetFocus;

    // Verificar que la fecha capturada no se haya registrado
    if cdBuscar.ProviderName = '' then
      if not CrearConjunto(cdBuscar, 'nom_excepcionxpersonal', ccCatalog) then
        raise InteligentException.CreateByCode(21, ['Excepciones Especiales']);

    // Solo realizar esta validación si se trata de una edición con cambio de fecha o de una alta
    if ((dsExcepcionPersonalUpt.DataSet.State = dsEdit) and ((OldFecha <> Fecha.Date) or (OldExcepcion <> dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcion').AsInteger))) or (dsExcepcionPersonalUpt.DataSet.State = dsInsert) then
    begin
      if Not CargarDatosFiltrados(cdBuscar, 'IdPersonal,IdExcepcion,Fecha', [IdPersonal, dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcion').AsInteger, ClientModule1.DatetoStrSql(Fecha.Date)]) then
        raise InteligentException.CreateByCode(6, ['Excepciones Especiales por Personal', 'Id. Personal / Fecha', dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcion').AsInteger, IntToStr(IdPersonal) + ' / ' + ClientModule1.DatetoStrSql(Fecha.Date)]);

      if CuantosRegistros(cdBuscar) > 0 then
      begin
        Fecha.SetFocus;
        raise InteligentException.CreateByCode(17, ['Excepciones Especiales por Personal', ClientModule1.DatetoStrSql(Fecha.Date)]);
      end;
    end;

    // Verificar si la fecha se encuentra dentro del rango de las fechas de la nómina
    if (Fecha.Date < FechaInicio) {or (Fecha.Date > FechaTermino)} then
    begin
      Fecha.SetFocus;
      raise InteligentException.CreateByCode(8, ['La fecha capturada de inicio debe ser mayor o igual al periodo de la Nómina que está procesando ahora.' + #10 + #10 +
                                                 'Inicio Nómina: ' + DateToStr(FechaInicio)]);
    end;

    // Veriricar que la cantidad no sea igual a cero
    if DBCantidad.Value = 0 then
    begin
      DBCantidad.SetFocus;
      raise InteligentException.CreateByCode(18, ['Cantidad']);
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

procedure TFrmExcepcionesEspeciales.Btn_AgregarClick(Sender: TObject);
var
  Cursor: TCursor;
  locFecha: TDate;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crSQLWait;

    // Abregar un nuevo registro
    if Not CargarDatosFiltrados(TClientDataset(dsExcepcionPersonalUpt.DataSet), 'IdExcepcionxPersonal', [-9]) then
      raise InteligentException.CreateByCode(21, ['Excepciones de Personal']);

    if dsExcepcionPersonalUpt.DataSet.Active then
      dsExcepcionPersonalUpt.DataSet.Refresh
    else
      dsExcepcionPersonalUpt.DataSet.Open;

    dsExcepcionesCat.DataSet.First;
    //lcbTipoExcepcion.KeyValue := 0;

    dsExcepcionPersonalUpt.DataSet.Append;
    dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcionxPersonal').AsInteger := 0;
    dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcion').AsInteger := dsExcepcionesCat.DataSet.FieldByName('IdExcepcion').AsInteger;
    dsExcepcionPersonalUpt.DataSet.FieldByName('IdPersonal').AsInteger := IdPersonal;
    dsExcepcionPersonalUpt.DataSet.FieldByName('FechaRegistro').AsDateTime := Now;
    dsExcepcionPersonalUpt.DataSet.FieldByName('Fecha').AsDateTime := Now;
    dsExcepcionPersonalUpt.DataSet.FieldByName('Cantidad').AsFloat := 0.0;

    if FrmCaptura.ShowModal = mrOk then
    begin
      dsExcepcionPersonalUpt.DataSet.Post;
      TClientDataSet(dsExcepcionPersonalUpt.DataSet).ApplyUpdates(-1);

      dsExcepcionPersonal.DataSet.Refresh;
      Btn_Editar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;
      Btn_Eliminar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;

      // Agregar el nuevo registro a la lista
      Nuevos.AddObject(IntToStr(UltimoID), TObject(1)); // Registrar un alta de registro
    end;
  Finally
    Screen.Cursor := Cursor;
    dsExcepcionPersonalUpt.DataSet.Cancel;
  End;
end;

procedure TFrmExcepcionesEspeciales.Btn_CancelarClick(Sender: TObject);
begin
  FrmCapturaModalResult := mrCancel;

  DebesValidar := False;
end;

procedure TFrmExcepcionesEspeciales.Btn_EditarClick(Sender: TObject);
var
  Indice: Integer;
  locFecha: TDate;
  Anio, Mes, Dia, Hora, Min, Seg, Ss: Word;
begin
  if dsExcepcionPersonal.DataSet.RecordCount > 0 then
  Try
    // Editar el registro existente
    if Not CargarDatosFiltrados(TClientDataSet(dsExcepcionPersonalUpt.DataSet), 'IdExcepcionxPersonal', [dsExcepcionPersonal.DataSet.FieldByName('IdExcepcionxPersonal').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Excepciones Especiales por Personal', dsExcepcionPersonal.DataSet.FieldByName('IdExcepcionxPersonal').AsInteger, 'Id. Excepción por Personal']);

    if dsExcepcionPersonalUpt.DataSet.Active then
      dsExcepcionPersonalUpt.DataSet.Refresh
    else
      dsExcepcionPersonalUpt.DataSet.Open;

    if dsExcepcionPersonalUpt.DataSet.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [dsExcepcionPersonal.DataSet.FieldByName('IdExcepcionxPersonal').AsInteger, 'Excepciones Especiales por Personal']);

    // Guardar la fecha original para prevenir la duplicidad en un cambio de fecha
    OldFecha := dsExcepcionPersonalUpt.DataSet.FieldByName('Fecha').AsDateTime;
    OldExcepcion := dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcion').AsInteger;

    dsExcepcionPersonalUpt.DataSet.Edit;
    FrmCaptura.caption := 'Captura de excepción especial';

    if FrmCaptura.ShowModal = mrOk then
    begin
      dsExcepcionPersonalUpt.DataSet.Post;
      TClientDataSet(dsExcepcionPersonalUpt.DataSet).ApplyUpdates(-1);

      dsExcepcionPersonal.DataSet.Refresh;
      Btn_Editar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;
      Btn_Eliminar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;

      // Modificar el registro de la lista
      Indice := Nuevos.IndexOf(dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcionxPersonal').AsString);
      if Indice >= 0 then
        Nuevos.Objects[Indice] := TObject(2)   // Registrar una modificacion de registro
      else
        Nuevos.AddObject(dsExcepcionPersonalUpt.DataSet.FieldByName('IdExcepcionxPersonal').AsString, TObject(2));
    end;
  Finally
    dsExcepcionPersonalUpt.DataSet.Cancel;
  End;
end;

procedure TFrmExcepcionesEspeciales.Btn_EliminarClick(Sender: TObject);
var
  Posicion: Integer;
begin
  if dsExcepcionPersonal.DataSet.RecordCount > 0 then
  Try
    // Editar el registro existente
    if Not CargarDatosFiltrados(TClientDataSet(dsExcepcionPersonalUpt.DataSet), 'IdExcepcionxPersonal', [dsExcepcionPersonal.DataSet.FieldByName('IdExcepcionxPersonal').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Excepciones Especiales por Personal', dsExcepcionPersonal.DataSet.FieldByName('IdExcepcionxPersonal').AsInteger, 'Id. Excepciones Especiales por Personal']);

    if CuantosRegistros(TClientDataSet(dsExcepcionPersonalUpt.DataSet)) = 0 then
      raise InteligentException.CreateByCode(13, [dsExcepcionPersonal.DataSet.FieldByName('IdPersonal_TE').AsInteger, 'Horas Extras']);

    if InteliDialog.ShowModal('Eliminar registro', 'El registro de Excepciones Especiales por Personal ' + #10 + dsExcepcionPersonal.DataSet.FieldByName('Fecha').AsString + ', con una cantidad de ' + dsExcepcionPersonal.DataSet.FieldByName('Cantidad').AsString + ' ' +
                                                   'está a punto de ser eliminado.' + #10 + #10 +
                                                   '¿Desea eliminarlo de manera definitiva en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ProcedimientoAlmacenado('borrar_registros', 'Tabla,Lista', ['nom_excepcionxpersonal', dsExcepcionPersonal.DataSet.FieldByName('IdExcepcionxPersonal').AsInteger]);
      Posicion := Nuevos.IndexOf(dsExcepcionPersonal.DataSet.FieldByName('IdExcepcionxPersonal').AsString);

      dsExcepcionPersonal.DataSet.Refresh;
      Btn_Editar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;
      Btn_Eliminar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;

      if Posicion >= 0 then
        Nuevos.Delete(Posicion);
    end;
  Finally
    dsExcepcionPersonalUpt.DataSet.Cancel;
  End;
end;

procedure TFrmExcepcionesEspeciales.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFrmExcepcionesEspeciales.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;

  // Verificar si existen registros pendientes de grabar
  if Nuevos.Count > 0 then
  begin
    CanClose := False;

    case InteliDialog.ShowModal('Existen registros pendientes de grabar', 'Existen registros de Excepciones Especiales por Personal pendientes de grabar, si cancela esta ventana todos los registros que no se han grabado se perderán' + #10 + #10 + '¿Desea grabar estos registros antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: Btn_Grabar.Click;
      mrNo: CanClose := True;
      mrCancel: dsExcepcionesCat.DataSet.Cancel;  // No hacer nada
    end;
  end;
end;

procedure TFrmExcepcionesEspeciales.FormCreate(Sender: TObject);
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
    frmCaptura.Caption := 'Captura de excepción especial' ;
    FrmCaptura.OnShow := CapturaFormShow;
    FrmCaptura.OnClose := CapturaFormClose;
    FrmCaptura.Width := 381;
    FrmCaptura.BorderStyle := bsDialog;
    Panel_Captura.Parent := FrmCaptura;
    Panel_Captura.Align := alClient;
    Panel_Botones.Parent := FrmCaptura;
    Panel_Botones.Align := alBottom;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmExcepcionesEspeciales.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ShowMessage(IntToStr(Key));
end;

procedure TFrmExcepcionesEspeciales.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  Try
    Try
      Screen.Cursor := crSQLWait;

      IniciarTransaccion;

      Btn_Editar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;
      Btn_Eliminar.Enabled := dsExcepcionPersonal.DataSet.RecordCount > 0;
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

procedure TFrmExcepcionesEspeciales.GridDatosDblClick(Sender: TObject);
begin
  if dsExcepcionPersonal.DataSet.RecordCount > 0 then
    Btn_Editar.Click;
end;

procedure TFrmExcepcionesEspeciales.GridDatosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Grid: TJvDBGrid;
  Indice: Integer;
begin
  // Cambiar el color para los registros que se están dando de alta recién
  Grid := Sender as TJvDBGrid;
  Indice := Nuevos.IndexOf(Grid.DataSource.DataSet.FieldByName('IdExcepcionxPersonal').AsString);
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

procedure TFrmExcepcionesEspeciales.CapturaFormShow(Sender: TObject);
begin
  AccedeACoordenadas(FrmCaptura);
  FrmCaptura.Height := 200;
  FrmCapturaModalResult := mrCancel;
end;

procedure TFrmExcepcionesEspeciales.DxBLbuttonSalirClick(Sender: TObject);
begin
  if EnTransaccion then
    CancelarTransaccion;

  Nuevos.Clear;

  Close;
end;

procedure TFrmExcepcionesEspeciales.dxBtnCancelarClick(Sender: TObject);
begin
   if EnTransaccion then
    CancelarTransaccion;

  Nuevos.Clear;
end;

procedure TFrmExcepcionesEspeciales.dxBtnGuardarClick(Sender: TObject);
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

procedure TFrmExcepcionesEspeciales.CapturaFormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarVentana(FrmCaptura, Action);
  Action := caHide;

  FrmCaptura.ModalResult := FrmCapturaModalResult;
end;

end.
