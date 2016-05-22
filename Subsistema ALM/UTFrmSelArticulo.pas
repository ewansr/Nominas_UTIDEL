unit UTFrmSelArticulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, ExtCtrls, DB, DBClient, Grids,
  DBGrids, DBCtrls;

type
  TFrmSelArticulo = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    JvLabel1: TJvLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    cdArticulo: TClientDataSet;
    dsArticulo: TDataSource;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    NombreArticulo: String;
  public
    Devolver: String;
  end;

var
  FrmSelArticulo: TFrmSelArticulo;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, UInteliDialog;

procedure TFrmSelArticulo.Button1Click(Sender: TObject);
var
  Cuenta: Integer;
begin
  Try
    cdArticulo.Close;

    // Verificar cuantos registros se van a leer
{    Cuenta := RegistrosCuenta('alm_articulo', 'TituloArticulo', ['%' + Edit1.Text + '%']);
    if Cuenta > 100 then
      if InteliDialog.ShowModal('El número de artículos que se van a consultar es demasiado grande',
                                'El número de registros que está a punto de cargar es de ' + IntToStr(Cuenta) + ', esto podría traer problemas de tiempo de acceso' + #10 + #10 +
                                '¿Está seguro que desea cargar todos estos registros ahora?',
                                mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        raise InteligentException.Create('**Rangel');}

    if Trim(Edit1.Text) = '' then
      // Seleccionar todos los artículos
      LimpiarDatosFiltrados(cdArticulo)
    else
      CargarDatosFiltrados(cdArticulo, 'TituloArticulo', ['%' + Edit1.Text + '%']);

    cdArticulo.Open;
    DBGrid1.SetFocus;
  Except
    on e:InteligentException do
    begin
      // No hacer nada, solo es cambio de flujo
    end;

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10, mtError, [mbOk], 0);
  End;
end;

procedure TFrmSelArticulo.DBGrid1DblClick(Sender: TObject);
begin
  // Seleccionar el registro
  Devolver := cdArticulo.FieldByName('CodigoArticulo').AsString;
  Close;
end;

procedure TFrmSelArticulo.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Devolver := cdArticulo.FieldByName('CodigoArticulo').AsString;
    Close;
  end;
end;

procedure TFrmSelArticulo.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (Shift = []) then
    Button1.Click;
end;

procedure TFrmSelArticulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(NombreArticulo);
  if Devolver <> '' then
    ModalResult := mrOk;
end;

procedure TFrmSelArticulo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) and Not(ssCtrl in Shift) and Not(ssAlt in Shift) then
    Close;
end;

procedure TFrmSelArticulo.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);

  Devolver := '';

  // Verificar si se debe seleccionar el DBGrid o el edit de captura
  if Edit1.Text = '' then
    Edit1.SetFocus    // Si no se especificó captura entrar al edit para que el usuario lo especifique
  else
    DBGrid1.SetFocus; // Si se especificó un criterio se deberá enviar al area de datos para que el usuario seleccione uno

  Try
    if Not CrearConjunto(cdArticulo, 'alm_articulo', NombreArticulo, ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder al catálogo de articulos en el servidor');

    if Edit1.Text <> '' then
      Button1.Click;    // Abrir el objeto de datos con el criterio especificado
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error de comunicació con el servidor', e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
