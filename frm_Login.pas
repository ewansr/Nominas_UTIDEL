unit frm_Login;

interface

uses
  Windows, Forms, DB, DBClient, Controls, StdCtrls, NxEdit, Buttons, Messages,
  PngSpeedButton, pngimage, Classes, ExtCtrls, Dialogs, SysUtils, AdvToolBtn,
  jpeg, Graphics, NxCollection, AdvGlowButton, URegistro, UInteliDialog,
  JvExControls, JvLabel, dxGDIPlusClasses, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, cxControls, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, cxTextEdit, ImgList, cxLabel,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TfrmLogin = class(TForm)
    DSUsuario: TClientDataSet;
    Panel1: TPanel;
    Label4: TLabel;
    Image1: TImage;
    BtnConfiguracion: TImage;
    Image2: TImage;
    Image3: TImage;
    Timer1: TTimer;
    ComboBox1: TComboBox;
    TimerParametros: TTimer;
    btnButton_Entrar: TImage;
    LabelInfo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CxBtnCancel: TcxButton;
    CxBtnEntrar: TcxButton;
    cbEditUsr: TcxComboBox;
    CxImageIconos: TcxImageList;
    EditPass: TcxTextEdit;
    cbBase: TcxComboBox;
    CxLblConfig: TcxLabel;
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
    procedure btnButton_EntrarClick(Sender: TObject);
    procedure Panel2MouseLeave(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cbBaseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbBaseChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LabelInfoMouseEnter(Sender: TObject);
    procedure ComboBox1MouseLeave(Sender: TObject);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure TimerParametrosTimer(Sender: TObject);
    procedure CxBtnCancelClick(Sender: TObject);
    procedure CxBtnConfigClick(Sender: TObject);
    procedure CxBtnEntrarClick(Sender: TObject);
  private
    ListaBases: TStringList;
    ListaHost: TStringList;
    ListaPort: TStringList;
    ListaProtocol: TStringList;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    ListaPar: TStringList;
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

procedure TfrmLogin.ComboBox1DropDown(Sender: TObject);
begin
  ComboBox1.OnMouseLeave := Nil;
end;

procedure TfrmLogin.ComboBox1MouseLeave(Sender: TObject);
begin
  ComboBox1.Visible := False;
end;

procedure TfrmLogin.ComboBox1Select(Sender: TObject);
Var
  i: Integer;
  ListaX1 : TStringList;
begin
  ClientModule1.SQLConnection1.Connected := False;
  ClientModule1.SQLConnection1.Params.Values['HostName'] := ComboBox1.Text;//ComboBox1.Items.ValueFromIndex[ ComboBox1.ItemIndex ];
  ClientModule1.SQLConnection1.Connected := True;

  cbBase.properties.Items.Clear;

  LabelInfo.Caption := 'Servidor:   ' + ClientModule1.SQLConnection1.Params.Values['HostName'];
  LabelInfo.Width := 250;
  ListaX1 := TStringList.Create;
  ListaX1.CommaText := VarRegistry('\Configuracion', '\Conexion', 'DATABASE');

  for i := 0 to ListaX1.Count - 1 do begin
    if ListaHost[i] = ClientModule1.SQLConnection1.Params.Values['HostName'] then begin
      cbBase.Properties.Items.Add(ListaBases[i]);
    end;
  end;

  if cbBase.Properties.Items.Count > 0 then begin
    cbBase.ItemIndex := 0;    // Seleccionar por default la primer base de datos
    //Edit1.Caption := ListaBases[cbBase.ItemIndex];
  end;
  //Edit1.Caption := cbBase.Text;

  cbBase.Hint := 'Host: ' + ClientModule1.SQLConnection1.Params.Values['HostName'] + #10 + 'Puerto: ' + ListaPort[cbBase.ItemIndex];
  Globales.SetValue('DATABASE', cbBase.Text);

  Restart(ListaProtocol[cbBase.ItemIndex], 'DataSnap', ClientModule1.SQLConnection1.Params.Values['HostName'], ListaPort[cbBase.ItemIndex], cbBase.Text);

  ComboBox1.OnMouseLeave := ComboBox1MouseLeave;
  ComboBox1.Visible := False;
end;

procedure TfrmLogin.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);

  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TfrmLogin.CxBtnCancelClick(Sender: TObject);
begin
  btnButton_EntrarClick(nil);
end;

procedure TfrmLogin.CxBtnConfigClick(Sender: TObject);
begin
  BtnConfiguracionClick(nil);
end;

procedure TfrmLogin.CxBtnEntrarClick(Sender: TObject);
begin
  Image2Click(nil);
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
      cbBase.ItemIndex := cbBase.Properties.Items.IndexOf(FrmParamsConfig.dbName);
      inicializar(Self);
      FormShow(Sender);
    Finally
      Label4.Visible := False;
      Label4.Repaint;
    end;
  end;
end;

procedure TfrmLogin.btnButton_EntrarClick(Sender: TObject);
var
  proxy: TServerMethods1Client;
  ListaUsuarios: TStringList;
  Resultado: Boolean;
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
    if ClientModule1.cdUsuario.Active then
    begin
      EliminarConjunto(ClientModule1.cdUsuario);
      ClientModule1.cdUsuario.Free;
      ClientModule1.cdUsuario := TClientDataSet.Create(nil);
      ClientModule1.cdUsuario.RemoteServer := ClientModule1.DSProviderConnection1;
    end;

    // Realizar la conexión con la base de datos
    NameDataset := Globales.Elemento('DATABASE').AsString;
    Proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Try
      Try
        Proxy.InitConnection(NameDataset);
      Except
        on e:Exception do
          raise InteligentException.Create(e.Message);
      end;

      // Nota: Para indicar que la cadena se debe codificar se emite el valor del password con el prefijo <%
      if Not proxy.InitGlobal(Globales.Elemento('DATABASE').AsString, 'ALM_USUARIO', cbEditUsr.Text + ',' + EditPass.Text, NameDataSet) then
        raise Exception.Create('Usuario y Passwords inválidos');

      // Registrar el usuario en memoria
      Globales.SetValue('Usuario', cbEditUsr.Text);
    Finally
      Proxy.Free;
    End;

    ClientModule1.cdUsuario.ProviderName := NameDataSet;
    ClientModule1.cdUsuario.Open;

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
          Intercambiar(ListaBases, cbBase.Text);

          // Puerto
          Intercambiar(ListaPort, ListaPort[cbBase.ItemIndex]);

          // Protocolo
          Intercambiar(ListaProtocol, ListaProtocol[cbBase.ItemIndex]);

          // Host
          Intercambiar(ListaHost, ComboBox1.Text);
        end;
      end;

      if ListaHost[0] <> ComboBox1.Text then
        Intercambiar(ListaHost, ComboBox1.Text);
      if ListaBases[0] <> cbBase.Text then
        Intercambiar(ListaBases, cbBase.Text);

      //ShowMessage(ListaHost.CommaText);

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
    on e:InteligentException do
      InteliDialog.ShowModal('El servidor no permite la comunicación con la base de datos', e.Message, mtInformation, [mbOk], 0);

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
end;

procedure TfrmLogin.cbBaseChange(Sender: TObject);
begin
  //Edit1.Caption := cbBase.Text;

  // Seleccionar la base de datos del registro del sistema
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
    btnButton_EntrarClick(nil);
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
    Close;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
Var
  i,r: Integer;
  Lista: String;
  ListaX1, ListaX2, ListaX3, ListaX4: TStringList;
begin
  // Verificar si existe uno o mas usuarios previos
  cbEditUsr.Properties.Items.CommaText := VarRegistry('\Ambiente', '\Principal', 'ListaUsuarios');

  LabelInfo.Caption := 'Servidor:   ' + ClientModule1.SQLConnection1.Params.Values['HostName'];
  LabelInfo.Width := 250;

  if cbEditUsr.Properties.Items.Count > 0 then
    cbEditUsr.Text := cbEditUsr.Properties.Items.Strings[0];   // Poner al primer usuario de manera automática

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

      for r := 0 to ListaHost.Count - 1 do begin
        if Pos(ListaHost[r], ComboBox1.Items.CommaText) <= 0 then begin
          ComboBox1.AddItem(ListaHost[r], ComboBox1);
        end;
      end;

      ComboBox1.ItemIndex := ComboBox1.Items.IndexOf(ClientModule1.SQLConnection1.Params.Values['HostName']);

      ListaX1 := TStringList.Create;
      ListaX1.CommaText := VarRegistry('\Configuracion', '\Conexion', 'DATABASE');
      cbBase.Clear;
      for i := 0 to ListaX1.Count - 1 do begin
        if ListaHost[i] = ClientModule1.SQLConnection1.Params.Values['HostName'] then begin
          cbBase.Properties.Items.Add(ListaBases[i])
        end;
      end;

      if cbBase.Properties.Items.Count > 0 then
      begin
        cbBase.ItemIndex := cbBase.Properties.Items.IndexOf(ListaBases[0]);
        //Edit1.Caption := cbBase.Text;
      end;

      if Assigned(ListaPar) then
      begin
        cbEditUsr.Text := ListaPar[0];
        EditPass.Text := ListaPar[1];
        Self.WindowState := wsMinimized;
        TimerParametros.Enabled := True;
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

procedure TfrmLogin.LabelInfoMouseEnter(Sender: TObject);
begin
  ComboBox1.Visible := True;
end;

procedure TfrmLogin.Panel2MouseLeave(Sender: TObject);
begin
  //Edit1.Visible := True;
  //cbBase.Visible := False;
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
      //Edit1.Visible := False;
    end
    else
    begin
      //cbBase.Visible := False;
      //Edit1.Visible := True;
    end;
  if Assigned(Control) then
    if (AnsiCompareText(Control.Name, 'Panel2') = 0) or (AnsiCompareText(Control.Name, 'cbBase') = 0) then
    begin
      cbBase.Visible := True;
      //Edit1.Visible := False;
    end
    else
    begin
      //cbBase.Visible := False;
      //Edit1.Visible := True;
    end;
end;

procedure TfrmLogin.TimerParametrosTimer(Sender: TObject);
begin
  TimerParametros.Enabled := False;
  btnButton_EntrarClick(nil);
end;

end.
