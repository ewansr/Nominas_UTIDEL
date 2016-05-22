unit frm_Login;

interface

uses
  Windows, Forms, DB, DBClient, Controls, StdCtrls, NxEdit, Buttons, Messages,
  PngSpeedButton, pngimage, Classes, ExtCtrls, Dialogs, SysUtils, AdvToolBtn,
  jpeg, Graphics, NxCollection, AdvGlowButton, URegistro, UInteliDialog,
  JvExControls, JvLabel;

type
  TfrmLogin = class(TForm)
    DSUsuario: TClientDataSet;
    EditPass: TEdit;
    Panel1: TPanel;
    Label4: TLabel;
    Image1: TImage;
    cbEditUsr: TComboBox;
    BtnConfiguracion: TImage;
    LabelInfo: TLabel;
    Image2: TImage;
    Button_Entrar: TAdvGlowButton;
    Timer1: TTimer;
    Panel2: TPanel;
    cbBase: TComboBox;
    Edit1: TJvLabel;
    Image4: TImage;
    procedure Image2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure cbEditUsrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConfiguracionClick(Sender: TObject);
    procedure Button_EntrarClick(Sender: TObject);
    procedure Panel2MouseLeave(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cbBaseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbBaseChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    ListaBases: TStringList;
    ListaHost: TStringList;
    ListaPort: TStringList;
    ListaProtocol: TStringList;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

Uses
  ClientModuleUnit1, ClientClassesUnit1, UFrmParamsConfig, Unit2;

{$R *.dfm}

function ArmarArreglo(Elementos: Array of Variant): String;
var
  i: Integer;
  SubCad: String;
begin
  SubCad := '';
  for i := 0 to High(Elementos) do
  begin
    if SubCad <> '' then SubCad := SubCad + ',';
    SubCad := SubCad + Elementos[i];
  end;

  Result := SubCad;
end;

procedure TfrmLogin.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);

  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TfrmLogin.BtnConfiguracionClick(Sender: TObject);
var
  paramsConf: TFrmParamsConfig;
begin
  Application.CreateForm(TFrmParamsConfig, FrmParamsConfig);

  if FrmParamsConfig.ShowModal = mrOk then
  begin
    Try
      Label4.Visible := True;
      Label4.Repaint;
      Globales.SetValue('DATABASE', FrmParamsConfig.dbName); // .Elemento('DATABASE').AsString := ;
      LabelInfo.Caption := FrmParamsConfig.dbName;
      cbBase.ItemIndex := cbBase.Items.IndexOf(FrmParamsConfig.dbName);
      inicializar(Self);
    Finally
      Label4.Visible := False;
      Label4.Repaint;
    end;
  end;
end;

procedure TfrmLogin.Button_EntrarClick(Sender: TObject);
var
  proxy: TServerMethods1Client;
  xNombre: String;
  ListaUsuarios: TStringList;

  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  Varx: Integer;
  NameDataSet: String;

procedure Intercambiar(Var Lista: TStringList; Const Cadena: String);
var
  Varx: Integer;
begin
  Varx := Lista.IndexOf(Cadena);
  Lista.Exchange(0, Lista.IndexOf(Cadena));
  if Varx <> 1 then Lista.Exchange(1, Varx);
end;

begin
  Try
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);

     // Nota: Para indicar que la cadena se debe codificar se emite el valor del password con el prefijo <%
      if Not proxy.InitGlobal(Globales.Elemento('DATABASE').AsString, cUsuario, cbEditUsr.Text + ',<%' + EditPass.Text, NameDataSet) then
          raise Exception.Create('Usuario y Passwords inválidos');

      ClientModule1.cdUsuario.ProviderName := NameDataSet;
      ClientModule1.cdUsuario.Open;
      Try
        // Cargar la imagen a memoria
        crearconjunto(TForm2(Application.MainForm).cdImagen, cConfiguracionImagen, xNombre, ccUpdate);
        CargarDatosFiltrados(TForm2(Application.MainForm).cdImagen, 'IdLocalidad', [1]);
        TForm2(Application.MainForm).cdImagen.Open;
      Except
        raise;
      End;

      // Registrar al usuario como el último
      Try
        ListaUsuarios := TStringList.Create;
        ListaUsuarios.Clear;
        ListaUsuarios.CommaText := VarRegistry('\Ambiente', '\Principal', 'ListaUsuarios');
        if ListaUsuarios.CommaText = '' then
          // Si la lista se encuentra vacía solo se deberá incluir el usuario que estamos accesando
          ListaUsuarios.CommaText := cbEditUsr.Text
        else
        begin
          // Verificar si ya se registró el usuario en esta lista
          if ListaUsuarios.IndexOf(cbEditUsr.Text) > 0 then
          begin
            // Si el usuario existe y efectivamente se encuentra dentro de la lista en una posición
            // diferente a la primera, entonces se deberá poner el usuario al inicio de la lista para
            // que a la siguiente entrada se vea este usuario por default
            Varx := ListaUsuarios.IndexOf(cbEditUsr.Text);
            ListaUsuarios.Exchange(0, ListaUsuarios.IndexOf(cbEditUsr.Text));
            if Varx > 1 then
              ListaUsuarios.Exchange(1, Varx);
          end
          else
            if ListaUsuarios.IndexOf(cbEditUsr.Text) < 0 then
              // Si el usuario no se encuentra en la lista entonces solo se debe agregar a la misma
              ListaUsuarios.CommaText := cbEditUsr.Text + ',' + ListaUsuarios.CommaText;
        end;

        // Agregar la lista de usuarios al registro del sistema
        SetRegistry('\Ambiente', '\Principal', 'ListaUsuarios', ListaUsuarios.CommaText);

        // Si la lista de bases de datos se encuentra vacía solo se deberán incluir los elementos que estamos accesando
        begin
          // Verificar si ya se registró la base de datos en esta lista
          if cbBase.ItemIndex > 0 then
          begin
            // Base de datos
            Intercambiar(ListaBases, ListaBases[cbBase.ItemIndex]);

            // Puerto
            Intercambiar(ListaPort, ListaPort[cbBase.ItemIndex]);

            // Protocolo
            Intercambiar(ListaProtocol, ListaProtocol[cbBase.ItemIndex]);

            // Host
            Intercambiar(ListaHost, ListaHost[cbBase.ItemIndex]);
          end;
        end;

        // Agregar la lista de de base de datos al registro del sistema
        SetRegistry('\Configuracion', '\Conexion', LlaveDB, ListaBases.CommaText);
        SetRegistry('\Configuracion', '\Conexion', LlavePort, ListaPort.CommaText);
        SetRegistry('\Configuracion', '\Conexion', LlaveProtocol, ListaProtocol.CommaText);
        SetRegistry('\Configuracion', '\Conexion', LlaveHost, ListaHost.CommaText);

      Finally
        ListaUsuarios.Clear;
        ListaUsuarios.Free;
      End;

      ModalResult := mrOk;  // Código de salida OK
    Except
      on e:exception do
      begin
        cbEditUsr.SetFocus;

        // Verificar si el error contiene una pregunta final
        if (Copy(e.Message,Length(e.Message),1) = '?') and (Pos(#10 + '¿', e.Message) > 0) then
          case InteliDialog.ShowModal('Error de comunicación', e.Message, mtWarning, [mbYes, mbNo, mbCancel], 0) of
            mrYes: BtnConfiguracionClick(Sender);
            mrNo: ; // No hacer nada, dejar al usuario en la ventana LOGIN
            mrCancel: PostMessage(Application.Handle, WM_Close, 0, 0);  // Salir a la chingada
          end
        else
          InteliDialog.ShowModal('Error de comunicación', e.Message, mtWarning, [mbOk], 0);
      end;
    End;
  Finally
    proxy.Free;
  End;
end;

procedure TfrmLogin.cbBaseChange(Sender: TObject);
begin
  Edit1.Caption := cbBase.Text;

  // Seleccionar la base de datos del registro del sistema
  LabelInfo.Caption := ListaBases[cbBase.ItemIndex];
  cbBase.Hint := 'Host: ' + ListaHost[cbBase.ItemIndex] + #10 + 'Puerto: ' + ListaPort[cbBase.ItemIndex];
  Globales.SetValue('DATABASE', ListaBases[cbBase.ItemIndex]);

  Restart(ListaProtocol[cbBase.ItemIndex], 'DataSnap', ListaHost[cbBase.ItemIndex], ListaPort[cbBase.ItemIndex], ListaBases[cbBase.ItemIndex]);
end;

procedure TfrmLogin.cbBaseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    cbEditUsr.SetFocus;
    Key := 0;
  end;
end;

procedure TfrmLogin.cbEditUsrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    EditPass.SetFocus;
    Key := 0
  end;
end;

procedure TfrmLogin.EditPassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Button_Entrar.Click;
    Key := 0
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Application.Terminate;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  // Verificar si existe uno o mas usuarios previos
  cbEditUsr.Items.CommaText := VarRegistry('\Ambiente', '\Principal', 'ListaUsuarios');
  if cbEditUsr.Items.Count > 0 then
    cbEditUsr.Text := cbEditUsr.Items.Strings[0];   // Poner al primer usuario de manera automática

  // Cargar registro de base de datos y direccion de servidor
    ListaBases := TStringList.Create;
    ListaPort := TStringList.Create;
    ListaProtocol := TStringList.Create;
    ListaHost := TStringList.Create;

    ListaBases.Clear;
    ListaPort.Clear;
    ListaProtocol.Clear;
    ListaHost.Clear;

    try
      ListaBases.CommaText := VarRegistry('\Configuracion', '\Conexion', 'DATABASE');
      ListaPort.CommaText := VarRegistry('\Configuracion', '\Conexion', 'httpport');
      ListaProtocol.CommaText := VarRegistry('\Configuracion', '\Conexion', 'dbprotocol');
      ListaHost.CommaText := VarRegistry('\Configuracion', '\Conexion', 'dbhost');

      cbBase.Items.CommaText := ListaBases.CommaText;

      if cbBase.Items.Count > 0 then
      begin
        cbBase.ItemIndex := 0;    // Seleccionar por default la primer base de datos
        Edit1.Caption := ListaBases[cbBase.ItemIndex];
      end;
    except
      ;
    end;
end;

procedure TfrmLogin.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TfrmLogin.Image2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLogin.Panel2MouseLeave(Sender: TObject);
begin
  Edit1.Visible := True;
  cbBase.Visible := False;
end;

procedure TfrmLogin.Timer1Timer(Sender: TObject);
var
  Pos: TPoint;
  Control: TControl;
begin
  GetCursorPos(Pos);
  Control := FindVCLWindow(Pos);
  if Assigned(Control) then
    if (AnsiCompareText(Control.Name, 'Panel2') = 0) or (AnsiCompareText(Control.Name, 'cbBase') = 0) then
    begin
      cbBase.Visible := True;
      Edit1.Visible := False;
    end
    else
    begin
      cbBase.Visible := False;
      Edit1.Visible := True;
    end;
end;

end.
