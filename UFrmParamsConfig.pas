unit UFrmParamsConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NxCollection, URegistro,
  IdException, NxEdit, UInteliDialog, AdvShapeButton, Grids, DBGrids, DB,
  DBClient, Buttons;

type
  TFrmParamsConfig = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    BtnClose: TAdvShapeButton;
    BtnRec: TAdvShapeButton;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    cmbDbprotocol: TComboBox;
    edtHttpport: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    edtDbhost: TEdit;
    DBInfo: TClientDataSet;
    dsInfo: TDataSource;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    gDataBases: TDBGrid;
    Panel4: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure GroupBox1Enter(Sender: TObject);
    procedure gDataBasesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    dsport: string;
    httpport: string;
    interval: string;
    dbprotocol: string;
    dbhost: string;
    dbusr: string;
    NombreInfo: String;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    dbname: string;
    dbnamelogical: string;
    function restart: boolean;
  end;

const
  LlaveDB = 'DATABASE';
  LlaveHost = 'dbhost';
  LlaveProtocol = 'dbprotocol';
  LlavePort = 'httpport';

var
  FrmParamsConfig: TFrmParamsConfig;

implementation

uses UfrmAutentic, ClientModuleUnit1, frm_BasesDatosServidor;

{$R *.dfm}

procedure TFrmParamsConfig.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);

  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmParamsConfig.BitBtn1Click(Sender: TObject);
var
  Termina: Boolean;
begin
  // Tratar de comunicarse con el host indicado por el usuario
  Repeat
    Termina := True;
    Try
      // Verificar que los parametro suministrados sean los correctos
      if (cmbDbProtocol.Text = '') or (edtHttpPort.Text = '') or (edtDbHost.Text = '') then
      begin
        if cmbDbProtocol.Text = '' then
          cmbDbProtocol.SetFocus
        else
          if edtHttpPort.Text = '' then
            edtHttpPort.SetFocus
          else
            edtDbHost.SetFocus;
        raise Exception.Create('Es necesario establecer correctamente todos los parametros para poder solicitar las bases de datos, verifique esto e intente de nuevo' + #10);
      end;

      // Tratar de conectar con el servidor indicado
      Try
        ClientModule1.SQLConnection1.Close;
        ClientModule1.SQLConnection1.Params.Values['Port'] := edtHttpPort.Text;
        ClientModule1.SQLConnection1.Params.Values['HostName'] := edtDbhost.Text;
        ClientModule1.SQLConnection1.Params.Values['CommunicationProtocol'] := cmbDbProtocol.Text;
        ClientModule1.SQLConnection1.Open;
      Except
        on e:Exception do
          raise Exception.Create('Ha ocurrido un error al trata de realizar la conexion con el servidor en la dirección: ' + QuotedStr(edtDbhost.Text) + #10 + 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message);
      End;

      // Solicitar el Número de bases de datos disponibles del servidor
      Try
        DatabaseInfo(DBInfo, NombreInfo, ctTodas);
        DBInfo.Open;
      Except
        on e:exception do
          raise Exception.Create('Ha ocurrido un error inesperado al tratar de consultar las bases de datos del servidor: ' + QuotedStr(dbHost) + #10 + #10 +
                                 'Informe de lo siguiente al administrador del sistema: ' + #10 + #10 + e.Message);
      End;

      if DBInfo.RecordCount > 0 then
      begin
        Panel3.Visible := True;
        gDataBases.SetFocus;
      end
      else
        raise Exception.Create('No se ha podido localizar bases de datos que actualmente estén siendo administradas por el servidor: ' + QuotedStr(dbHost));

      // Si todo está bien se debe establecer el host al indicado por el usuario, ya se ha abierto por ello no es hacerlo aquí
      dbHost := ClientModule1.SQLConnection1.Params.Values['HostName'];
    Except
      On e:exception do
      begin
        case InteliDialog.ShowModal('No se han podido consultar las bases de datos', e.Message, mtInformation, [mbRetry, mbCancel, mbAbort], 0) of
          mrRetry: begin
                     edtDbhost.SetFocus;  // Seleccionar el campo del host
                     Termina := False;
                   end;
          mrCancel: begin
                      // Si se ha cancelado después de un error se deberá regenerar el host original
                      ClientModule1.SQLConnection1.Close;
                      ClientModule1.SQLConnection1.Params.Values['Port'] := httpport;
                      ClientModule1.SQLConnection1.Params.Values['HostName'] := dbHost;
                      ClientModule1.SQLConnection1.Params.Values['CommunicationProtocol'] := dbprotocol;
                    end;
          mrAbort: begin
                     // Si se ha cancelado después de un error se deberá regenerar el host original
                     ClientModule1.SQLConnection1.Close;
                     ClientModule1.SQLConnection1.Params.Values['Port'] := httpport;
                     ClientModule1.SQLConnection1.Params.Values['HostName'] := dbHost;
                     ClientModule1.SQLConnection1.Params.Values['CommunicationProtocol'] := dbprotocol;
                     PostMessage(Application.MainForm.Handle, WM_CLOSE, 0, 0);
                   end;
        end;
      end;
    End;
  Until Termina;
end;

procedure TFrmParamsConfig.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmParamsConfig.BtnRecClick(Sender: TObject);
var
  ListaBD: TStringList;
  ListaPort: TStringList;
  ListaProtocol: TStringList;
  ListaHost: TStringList;
  rPos: Integer;
  Encuentra: Integer;
  Logico: string;

procedure Intercambiar(Var Lista: TStringList; Const Cadena: String; Const Encuentra: Integer);
var
  Varx: Integer;
begin
  Lista.CommaText := Lista[Encuentra] + ',' + Lista.CommaText;
  Lista.Delete(Encuentra + 1);
end;

begin
  Try
    if Not DBInfo.Active then
    begin
      cmbDbProtocol.SetFocus;
      raise Exception.Create('Debe indicar los parametros de conexión correctamente antes de tratar de seleccionar una base de datos');
    end;

    if DBInfo.RecordCount = 0 then
      raise Exception.Create('No existen bases de datos servidas por el host especificado [' + edtDbhost.Text + ']');

    httpport := edtHttpport.Text;
    dbprotocol := cmbDbprotocol.Text;
    dbhost := edtDbhost.Text;
    dbname := DBInfo.FieldByName('NombreLogico').AsString;
    dbNameLogical := DbInfo.FieldByName('NombreFisico').AsString;

    // Base de datos y registro de windows
    // Registrar la base de datos como el último
    Try
      ListaBD := TStringList.Create;
      ListaPort := TStringList.Create;
      ListaProtocol := TStringList.Create;
      ListaHost := TStringList.Create;

      ListaBD.Clear;
      ListaPort.Clear;
      ListaProtocol.Clear;
      ListaHost.Clear;

      ListaBD.CommaText := VarRegistry('\Configuracion', '\Conexion', LlaveDB);
      ListaPort.CommaText := VarRegistry('\Configuracion', '\Conexion', LlavePort);
      ListaProtocol.CommaText := VarRegistry('\Configuracion', '\Conexion', LlaveProtocol);
      ListaHost.CommaText := VarRegistry('\Configuracion', '\Conexion', LlaveHost);

      // Si la lista de bases de datos se encuentra vacía solo se deberán incluir los elementos que estamos accesando
      if ListaBD.CommaText = '' then
      begin
        ListaBD.CommaText       := DBInfo.FieldByName('NombreLogico').AsString;
        ListaPort.CommaText     := edtHttpPort.Text;
        ListaProtocol.CommaText := cmbDbProtocol.Text;
        ListaHost.CommaText     := edtDbHost.Text;
      end
      else
      begin
        // Verificar si ya se registró la base de datos en esta lista
        rPos := 0;
        Encuentra := -1;
        While (rPos < ListaBD.Count) and (Encuentra = -1) do
        begin
          Logico := ListaBD[rPos] + '|' + ListaPort[rPos] + '|' + ListaProtocol[rPos] + '|' + ListaHost[rPos];
          if Logico = (dbName + '|' + httpport + '|' + dbProtocol + '|' + dbHost) then
            Encuentra := rPos;

          Inc(rPos);
        end;

        if Encuentra > 0 then
        begin
          // Base de datos
          Intercambiar(ListaBD, DBInfo.FieldByName('NombreLogico').AsString, Encuentra);

          // Puerto
          Intercambiar(ListaPort, DBInfo.FieldByName('Port').AsString, Encuentra);

          // Protocolo
          Intercambiar(ListaProtocol, DBInfo.FieldByName('Protocol').AsString, Encuentra);

          // Host
          Intercambiar(ListaHost, DBInfo.FieldByName('HostName').AsString, Encuentra);
        end
        else
          // Verificar que efectivamente no exista la base de datos dentro de la lista
          if Encuentra < 0 then
          begin
            // Si la base de datos no se encuentra en la lista entonces solo se debe agregar a la misma
            ListaBD.CommaText := DBInfo.FieldByName('NombreLogico').AsString + ',' + ListaBD.CommaText;
            ListaPort.CommaText := edtHttpPort.Text + ',' + ListaPort.CommaText;
            ListaProtocol.CommaText := cmbDbProtocol.Text + ',' + ListaProtocol.CommaText;
            ListaHost.CommaText := edtDbHost.Text + ',' + ListaHost.CommaText;
          end;
      end;

      // Agregar la lista de de base de datos al registro del sistema
      SetRegistry('\Configuracion', '\Conexion', LlaveDB, ListaBD.CommaText);
      SetRegistry('\Configuracion', '\Conexion', LlavePort, ListaPort.CommaText);
      SetRegistry('\Configuracion', '\Conexion', LlaveProtocol, ListaProtocol.CommaText);
      SetRegistry('\Configuracion', '\Conexion', LlaveHost, ListaHost.CommaText);

      // Enviar a memoria el nombre de la base de datos seleccionada para que sea utilizada por el LOGIN
      Globales.SetValue('DATABASE', dbName);
      Globales.SetValue('DATABASELOGICAL', DBInfo.FieldByName('NombreLogico').AsString);
    Finally
      ListaBD.Clear;
      ListaPort.Clear;
      ListaProtocol.Clear;
      ListaHost.Clear;

      ListaBD.Free;
      ListaPort.Free;
      ListaProtocol.Free;
      ListaHost.Free;
    End;

    //fin base de datos y registro de windows
    Button1.Click;
  Except
    on e:exception do
      InteliDialog.ShowModal('No se ha podido registrar la base de datos', 'La base de datos no se ha registrado debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmParamsConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmParamsConfig.FormShow(Sender: TObject);
var
  Lista: TStringList;
begin
  //ClientModule1.ComponentColor(Self);
  httpport := '';
  dbprotocol := '';
  dbhost := '';

  Lista := TStringList.Create;

  Lista.Clear;
  Lista.CommaText := VarRegistry('\Configuracion', '\Conexion', LlavePort);
  if Lista.Count > 0 then httpport := Lista[0];

  Lista.Clear;
  Lista.CommaText := VarRegistry('\Configuracion', '\Conexion', LlaveProtocol);
  if Lista.Count > 0 then dbprotocol := Lista[0];

  Lista.Clear;
  Lista.CommaText := VarRegistry('\Configuracion', '\Conexion', LlaveHost);
  if Lista.Count > 0 then dbhost := Lista[0];

  if cmbDbprotocol.Items.IndexOf(dbprotocol) >= 0 then
    cmbDbprotocol.ItemIndex := cmbDbprotocol.Items.IndexOf(dbprotocol)
  else
    cmbDbprotocol.ItemIndex := 0;
  edtHttpport.Text := httpport;
  edtDbhost.Text := dbhost;
end;

procedure TFrmParamsConfig.gDataBasesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DBInfo.FieldByName('Estado').AsString = 'DESCONECTADA' then
  begin
    TDBGrid(Sender).Canvas.Font.Color := clSilver;
    TDBGrid(Sender).Canvas.Font.Style := [];
  end;

  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmParamsConfig.GroupBox1Enter(Sender: TObject);
begin
  Panel3.Visible := False;
  DBInfo.Close;
end;

procedure TFrmParamsConfig.NxButton2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BtnRec.Click;
    Key := 0;
  end;
end;

function TFrmParamsConfig.restart: boolean;
begin
  result := false;
  try
    ClientModule1.SQLConnection1.Close;
    ClientModule1.SQLConnection1.Params.Strings[2] := 'Port=' + httpport;
    ClientModule1.SQLConnection1.Params.Strings[3] := 'HostName=' + dbhost;
    ClientModule1.SQLConnection1.Params.Strings[4] := 'CommunicationProtocol=' + dbprotocol;
    ClientModule1.SQLConnection1.Connected := True;
    result := true;
  except
   // on e:EIdSocketHandleError do
   //   showmessage('Pausa Rangel');

    on e:exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;
end;

end.
