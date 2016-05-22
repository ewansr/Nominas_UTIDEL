unit frm_AltaServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvPanel, StdCtrls, AdvGroupBox,  AdvGlowButton,
  ImgList;

type
  TfrmAltaServidor = class(TForm)
    AdvPanel1: TAdvPanel;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    edtPuerto: TEdit;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    ImageList1: TImageList;
    AdvPanelStyler1: TAdvPanelStyler;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Servidor, Descripcion: String;
    hPuerto: Integer;
  end;

var
  frmAltaServidor: TfrmAltaServidor;

implementation

uses frm_connection;

{$R *.dfm}

procedure TfrmAltaServidor.btnAceptarClick(Sender: TObject);
Var
  Result: Boolean;
begin

 { Servidor := edtservidor.Text;
  Descripcion := edtnombre.Text;

  // Verificar la información capturada
  if Edtservidor.Text = '' then
  Begin
    ShowMessage('Debe especificar el nombre del servidor o la dirección IP al cual se desea comunicar.');
    Edtservidor.SetFocus;
    Exit;
  End;

  if Edtnombre.Text = '' then
  Begin
    ShowMessage('Debe especificar una descripción o nombre sencillo para el servidor al cual se desea comunicar.');
    Edtnombre.SetFocus;
    Exit;
  End;     }

  Try
    hPuerto := StrToInt(Edtpuerto.Text);
  Except
    hPuerto := -1;
  End;

  if hPuerto < 1 then
  Begin
    ShowMessage('El puerto especificado no es correcto.' + #10 + #10 + 'El puerto debe ser un número entero comprendido entre 1 y 65536');
    Edtpuerto.SetFocus;
    Exit;
  End;

  // Realizar una prueba al servidor seleccionado
(*
    Connection.ConnectionHMG.Disconnect;
    Connection.ConnectionHMG.Catalog := 'mysql';
    Connection.ConnectionHMG.Database := 'mysql';
    Connection.ConnectionHMG.HostName := Servidor;
    Connection.ConnectionHMG.Password := 'danae';
    Connection.ConnectionHMG.Port := hPuerto;
    Connection.ConnectionHMG.Protocol := 'mysql';
    Connection.ConnectionHMG.User := 'root';
*)
  connection.zConnection.Disconnect;
  connection.zConnection.Catalog:='mysql';
  connection.zConnection.Database:='mysql';
  connection.zConnection.HostName:=servidor;
  connection.zConnection.Password:='danae';
  connection.zConnection.Port:=hpuerto;
  connection.zConnection.Protocol:='mysql-5';
  connection.zConnection.User:='root';

  Result := False;
  Try
    connection.zConnection.Connect;
    Result := connection.zConnection.Ping;
  Except
    Result := False;
  End;

  If Not Result Then
  Begin
    ShowMessage('No ha sido posible establecer conexión con el servidor especificado.' + #10 + #10 + 'Revise los datos capturados para especificar el servidor o revise su conexión a la red si su base de datos se encuentra en un servidor remoto.');
  {  edtservidor.SetFocus; }
    Servidor := '';
    Descripcion := '';
    hPuerto := -1;
    Exit;
  End;

  Close;

end;

procedure TfrmAltaServidor.btnCancelarClick(Sender: TObject);
begin
  Servidor := '';
  Descripcion := '';
  Close;
end;

procedure TfrmAltaServidor.FormCreate(Sender: TObject);
begin
  Servidor := '';
  Descripcion := '';
end;

end.
