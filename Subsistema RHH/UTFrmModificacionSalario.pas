unit UTFrmModificacionSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, ComCtrls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, DBCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, JvExControls, JvLabel, ExtCtrls, AdvShapeButton, JvMaskEdit,
  ClientModuleUnit1, UInteliDialog;

type
  TFrmModificacionSalario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    edSalario: TJvDBCalcEdit;
    dtAplicacion: TJvDBDateTimePicker;
    cdModificarSalario: TClientDataSet;
    dsModificacionSalario: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    Memo1: TMemo;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    JvLabel5: TJvLabel;
    JvDBMaskEdit1: TJvDBMaskEdit;
    Btn_Guardar: TAdvShapeButton;
    Btn_Cancelar: TAdvShapeButton;
    JvLabel6: TJvLabel;
    DBEdit4: TDBEdit;
    dsSalario: TDataSource;
    cdNuevoSalario: TClientDataSet;
    dsNuevoSalario: TDataSource;
    DBMemo1: TDBMemo;
    JvLabel7: TJvLabel;
    DBMemo2: TDBMemo;
    JvLabel8: TJvLabel;
    DBEdit5: TDBEdit;
    procedure Btn_CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_GuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Resultado: TModalResult;
  public
    { Public declarations }
  end;

var
  FrmModificacionSalario: TFrmModificacionSalario;

implementation

{$R *.dfm}

procedure TFrmModificacionSalario.Btn_CancelarClick(Sender: TObject);
begin
  if cdNuevoSalario.State in [dsInsert, dsEdit] then
    cdNuevoSalario.Cancel;

  if cdModificarSalario.State in [dsInsert, dsEdit] then
    cdModificarSalario.Cancel;

  if EnTransaccion then
    CancelarTransaccion;

  Resultado := mrCancel;
  Close;
end;

procedure TFrmModificacionSalario.Btn_GuardarClick(Sender: TObject);
var
  OldCursor: TCursor;
begin
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      // Verificar que la captura de datos sea correcta
      if edSalario.Value <= dsSalario.DataSet.FieldByName('Salario').AsFloat then
      begin
        edSalario.SetFocus;
        raise InteligentException.CreateByCode(8, ['No es recomendable registrar una modificación de Salario menor al salario actual, verifique esto e intente de nuevo.']);
      end;

      if dtAplicacion.Date < Trunc(dsSalario.DataSet.FieldByName('FechaAplicacion').AsDateTime) then
      begin
        dtAplicacion.SetFocus;
        raise InteligentException.CreateByCode(8, ['No es posible registrar una modificación de Salario anterior a la última fecha de registro de salario, verifique esto e intente de nuevo']);
      end;

      // Grabar el nuevo salario
      cdNuevoSalario.Post;
      cdNuevoSalario.ApplyUpdates(-1);

      // Generar el registro de Modificación de Salario
      cdModificarSalario.FieldByName('IdModificacionSalario').AsInteger := 0;
      cdModificarSalario.FieldByName('IdSalario').AsInteger := UltimoId;
      cdModificarSalario.FieldByName('Estado').AsString := 'Pendiente';

      cdModificarSalario.Post;
      cdModificarSalario.ApplyUpdates(-1);

      if EnTransaccion then
        ConcretarTransaccion;

      Resultado := mrOk;
      Close;
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      if Not (cdNuevoSalario.State in [dsInsert, dsEdit]) then
        Btn_Cancelar.Click;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

      if Not (cdNuevoSalario.State in [dsInsert, dsEdit]) then
        Btn_Cancelar.Click;
    end;
  End;
end;

procedure TFrmModificacionSalario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if EnTransaccion then
    CancelarTransaccion;

  EliminarConjunto([cdModificarSalario, cdNuevoSalario]);

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmModificacionSalario.FormCreate(Sender: TObject);
begin
  IniciarTransaccion;
  Resultado := mrAbort;
end;

procedure TFrmModificacionSalario.FormShow(Sender: TObject);
var
  oldcursor:Tcursor;
begin
  try
    try
      oldcursor:=Screen.Cursor;
      Screen.Cursor:=crAppStart;

      if Not CrearConjunto(cdModificarSalario, 'rhu_modificacionSalario', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Modificación General de Salarios']);
      if Not CargarDatosFiltrados(cdModificarSalario, 'IdModificacionSalario', [-9]) then
        raise InteligentException.CreateByCode(19, ['Modificación General de Salarios']);

      if Not CrearConjunto(cdNuevoSalario, 'rhu_Salario', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Salarios']);
      if Not CargarDatosFiltrados(cdNuevoSalario, 'IdSalario', [-9]) then
        raise InteligentException.CreateByCode(19, ['Salarios']);

      // Crear los registros necesarios
      cdModificarSalario.Open;
      cdModificarSalario.Append;

      cdNuevoSalario.Open;
      cdNuevoSalario.Append;

      cdNuevoSalario.FieldByName('IdSalario').AsInteger := 0;
      cdNuevoSalario.FieldByName('IdLlave').AsInteger := dsSalario.DataSet.FieldByName('IdLlave').AsInteger;
      cdNuevoSalario.FieldByName('IdUsuario').AsInteger := Globales.Elemento('IdUsuario').AsInteger;
      cdNuevoSalario.FieldByName('Activo').AsString := 'Si';
      cdNuevoSalario.FieldByName('FechaAplicacion').AsDateTime := Now;
      cdNuevoSalario.FieldByName('IdMoneda').AsInteger := dsSalario.DataSet.FieldByName('IdMoneda').AsInteger;
      cdNuevoSalario.FieldByName('CodigoSalario').AsString := dsSalario.DataSet.FieldByName('CodigoSalario').AsString;
      cdNuevoSalario.FieldByName('TituloSalario').AsString := dsSalario.DataSet.FieldByName('TituloSalario').AsString;
      cdNuevoSalario.FieldByName('FechaRegistro').AsDateTime := Now;
      cdNuevoSalario.FieldByName('IdUsuarioModificacion').AsInteger := Globales.Elemento('IdUsuario').AsInteger;
      cdNuevoSalario.FieldByName('FechaModificacion').AsDateTime := Now;
      cdNuevoSalario.FieldByName('TipoSalario').AsString := dsSalario.DataSet.FieldByName('TipoSalario').AsString;
    finally
      Screen.Cursor := oldcursor;
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

end.
