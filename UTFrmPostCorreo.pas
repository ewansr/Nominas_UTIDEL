unit UTFrmPostCorreo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvSpin, AdvEdit, ExtCtrls, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  AdvShapeButton, Buttons, xDatabase, UInteliDialog, IdAttachmentFile, AdvEdBtn;

type
  TFrmPostCorreo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GbConfig: TGroupBox;
    Servidor: TAdvEdit;
    Puerto: TAdvSpinEdit;
    GroupBox2: TGroupBox;
    De: TAdvEdit;
    Contraseña: TAdvEdit;
    Para: TAdvEdit;
    Button1: TButton;
    Cuerpo: TMemo;
    Encabezado: TAdvEdit;
    Panel4: TPanel;
    BtnClose: TAdvShapeButton;
    BtnFindDisciplina: TBitBtn;
    CC: TAdvEdit;
    CCAdd: TCheckBox;
    DialogoADjuntar: TOpenDialog;
    Path: TAdvEditBtn;
    ChAddFile: TCheckBox;
    CBXCnf: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnFindDisciplinaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CCAddClick(Sender: TObject);
    procedure PathClickBtn(Sender: TObject);
    procedure ChAddFileClick(Sender: TObject);
    procedure CBXCnfClick(Sender: TObject);
  private
    procedure EnviarCorreo(IPuerto:Integer; SHostin,SDe,SContraseña,SPara,SEncabezado,SCuerpo,CCopia: string;CCA:Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPostCorreo: TFrmPostCorreo;

implementation

uses ClientModuleUnit1, UTFrmCuentasCorreo;

{$R *.dfm}

procedure TFrmPostCorreo.PathClickBtn(Sender: TObject);
begin
  if DialogoADjuntar.Execute then
    Path.Text := DialogoADjuntar.FileName;
end;

procedure TFrmPostCorreo.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPostCorreo.BtnFindDisciplinaClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmCuentasCorreo;
begin
  Try
    tForm := TFrmCuentasCorreo.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      Servidor.Text := registro.Valor['host'];
      Puerto.Text := registro.Valor['puerto'];
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro.',', intente de nuevo.', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmPostCorreo.Button1Click(Sender: TObject);
begin
  EnviarCorreo(Puerto.value,Servidor.Text,de.text,contraseña.text,para.text,encabezado.text,cuerpo.text,cc.Text,ccadd.Checked);
end;

procedure TFrmPostCorreo.CCAddClick(Sender: TObject);
begin
  cc.Enabled := ccadd.Checked;
end;

procedure TFrmPostCorreo.ChAddFileClick(Sender: TObject);
begin
  Path.enabled := ChAddFile.Checked;
end;

procedure TFrmPostCorreo.CBXCnfClick(Sender: TObject);
begin
  GbConfig.Visible := CBXCnf.Checked;
end;

procedure TFrmPostCorreo.EnviarCorreo(IPuerto:Integer; SHostin,SDe,SContraseña,SPara,SEncabezado,SCuerpo,CCopia: string;CCA:Boolean);
var
 SeguridadSSL: TIdSSLIOHandlerSocketOpenSSL;
 Conexion: TIdSMTP;
 Mensage: TIdMessage;
 Correcto: boolean;
begin
  Correcto := False;
  SeguridadSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    Conexion:= TIdSMTP.Create(nil);
    try
      Mensage:= TIdMessage.Create(nil);
      try
        with SeguridadSSL do
        begin
          defaultport := IPuerto;
          Destination := ':25';
          port:=25;
          SSLOptions.Mode := sslmBoth;
          SSLOptions.Method := sslvTLSv1;
          Name:= 'ssl1';
        end;

        with Mensage do
        begin
          Body.Clear;
          Body.Add(scuerpo);
          From.Text := sde;
          Recipients.EMailAddresses := SPara;
          if CCA then
            CCList.EMailAddresses := CCopia;
          Subject := Encabezado.Text;
          Priority := TidMessagePriority(mpHighest);
          if ChAddFile.Checked then
            TIdAttachmentFile.Create(Mensage.MessageParts,Concat(path.Text));
        end;

        with Conexion do
        begin
          Username := sde;
          Password := SContraseña;
          Host     := SHostin;
          Port     := IPuerto;
          IOHandler := SeguridadSSL;
          AuthType := satDefault;
          UseTLS := utUseExplicitTLS;

          try
             Connect;
             Try
                Send(Mensage);
             Finally
                Disconnect;
             End;
             ShowMessage('Se envio el correo en forma correcta');
             Correcto := True;
          Except
            on e: exception do
               ShowMessage('Fallo en el envio de email:'+e.Message);
          End;
         If Connected Then Disconnect;
        end;
      finally
        FreeAndNil(Mensage);
      end;
    finally
      FreeAndNil(Conexion);
    end;
  finally
    FreeAndNil(SeguridadSSL);
  end;
  if Correcto then
    Close
  else
    gbconfig.Visible := True;

end;

procedure TFrmPostCorreo.FormCreate(Sender: TObject);
begin
  ClientModule1.ComponentColor(self);

end;

procedure TFrmPostCorreo.FormShow(Sender: TObject);
begin
  if (Length(trim(servidor.text)) = 0) OR (Length(trim(servidor.text)) = 0) then
    GbConfig.Visible := True;
  CBXCnf.Checked := GbConfig.Visible;
end;

end.
