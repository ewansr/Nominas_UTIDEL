unit Frm_Conectando;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, AdvGlowButton, DBClient, ClientModuleUnit1, StdCtrls,
  ComCtrls, FolderDialog, pngImage, UInteliDialog, URegistro, InterClases,
  WinSock, dxGDIPlusClasses;

type
  TFrmConectando = class(TForm)
    Timer2: TTimer;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label2: TLabel;
    function Conectar: Boolean;
    procedure Timer2Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function ProcedeConectar: Boolean;
    procedure ProcedeConfigurar;
    procedure Image1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Resultado: Integer;
  public
    ListaPar: TStringList;
  end;

var
  FrmConectando: TFrmConectando;

implementation

uses UFrmParamsConfig, frm_Login, Unit2, Frm_SelDatabase, ClientClassesUnit1;

{$R *.dfm}

function TFrmConectando.ProcedeConectar: Boolean;
begin
  Timer2.Enabled := False;
  Label2.Visible := False;
  Result := Conectar;
end;

procedure TFrmConectando.ProcedeConfigurar;
begin
  Timer2.Enabled := False;
  Try
    self.Visible := False;

    Try
      Application.CreateForm(TFrmParamsConfig, FrmParamsConfig);
      if FrmParamsConfig.ShowModal = mrCancel then
        PostMessage(self.Handle, WM_CLOSE, 0, 0)
    Finally
      FreeAndNil(FrmParamsConfig);
    End
  Finally
    self.Visible := True;
    Timer2.Enabled := True;
  end;
end;

function TFrmConectando.Conectar: Boolean;
var
  cdErrores: TClientDataSet;
  Error: TErrores;
  Descripcion: TDescripcion;
  sNombre: String;
  Respuesta: Integer;
  DatosSocket: WSAData;
  BloqueIP: PHostEnt;
  DirIP: in_addr;
  Source,
  Destination: Pointer;
  IPNombre: String;
  Resp: Integer;
  Registrado: Boolean;
  Comentario: String;
begin
  Result := True;

  // Tratar de realizar la comunicación con el servidor
  Label1.Caption := 'Conectando con la base de datos...';
  Label1.Repaint;
  Try
    if Not Inicializar(Self) then
    begin
      Application.MainForm.Close;
      exit;
    end;

    if Not ClientModule1.SQLConnection1.Connected then
      ClientModule1.SQLConnection1.Connected := True;
  Except
    on e:EFOpenError do
    begin
      Result := False;
      Application.MainForm.Close;
      Exit;
    end;

    on e:exception do
    begin
      Result := False;
      If InteliDialog.ShowModal('No ha sido posible establecer comunicación con la base de datos.',
                                'No se ha podido establecer comunicación debido al siguiente error:' + chr(10) + chr(10) +
                                e.message + chr(10) + chr(10) +
                                '¿Desea modificar los parámetros de conexión en este momento?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        Try
          Application.CreateForm(TFrmParamsConfig, FrmParamsConfig);
          Resp := FrmParamsConfig.ShowModal;
          //if FrmParamsConfig.ShowModal = mrCancel then
          if Resp = mrCancel then
            Application.MainForm.Close
          else
            if Not Inicializar(Self) then
            begin
              Application.MainForm.Close;
              exit;
            end;
        Finally
          FreeAndNil(FrmParamsConfig);
        End
      else
      begin
        Form2.ObligaCerrar := True;
        Application.MainForm.Close;
      end;
    end;
  End;

  Try
    if ClientModule1.SQLConnection1.Connected then
    begin
      // Verificar si ya tenemos registrada la base de datos
      if VarRegistry('\Configuracion', '\Conexion', 'DATABASE') = '' then
      begin
        if InteliDialog.ShowModal('No se reconoce la configuración del sistema.',
                                  'Parece que su sistema no ha sido correctamente instalado o bien uno o mas registros de sistema se han dañado.' + chr(10) +
                                  'No he podido localizar el nombre de la base de datos con la cual debe trabajar el sistema.' + chr(10) + chr(10) +
                                  '¿Desea indicar el nombre de la base de datos en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Try
            Application.CreateForm(TFrmSelDatabase, FrmSelDatabase);
            if FrmSelDatabase.ShowModal = mrOk then
            begin
              Try
                // Registrar la base de datos que se seleccionó
                SetRegistry('\Configuracion', '\Conexion', 'DATABASE', FrmSelDataBase.ListBox1.Items.Strings[FrmSelDataBase.ListBox1.ItemIndex]);
              Except
                on e:exception do
                  raise Exception.Create('No se ha podido registrar la base de datos debido al siguiente error:' + #10 + #10 + e.Message);
              End;
            end
            else
              raise Exception.Create('Proceso cancelado por el usuario');
              //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
          Finally
            FrmSelDatabase.Free;
          End;
        end
        else
          PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

      // Realizar una reverificar de seguridad
      if VarRegistry('\Configuracion', '\Conexion', 'DATABASE') = '' then
      begin
        Raise InteligentException.Create('La base de datos solicitada parace ya no estar disponible en el servidor, verifique esto e intente de nuevo');
        {PostMessage(Self.Handle, WM_CLOSE, 0, 0);
        Exit;}
      end;

      // Verificar que tipo de sistema se está ejecutando
{      if Not ObtenerPrefijo(sNombre) then
        raise InteligentException.Create('No se ha podido reconocer la estructura de la base de datos' + #10 + #10 +
                                         'Es probable que la base de datos haya sido modificada últimamente lo cual ocasiona que el sistema no pueda funcionar');

      // Modificar las cadenas para que el cliente interactúe con el sistema adecuado
      cConfiguracionImagen := sNombre + 'configuracion_imagen1';
      cConfiguracion := sNombre + 'configuracion';
}
      try
        FrmLogin := TFrmLogin.Create(Self);
        FrmLogin.ListaPar := ListaPar;
        Self.Visible := Assigned(ListaPar);
        Registrado := True;

        // Obtener la direccion IP de este servidor
        WSAStartup($0101, DatosSocket);
        SetLength(IPNombre, 260);
        gethostname(PAnsiChar(IPNombre), 260);
        BloqueIP := gethostbyname(PAnsiChar(IPNombre));
        Destination := @DirIP;
        Source := (BloqueIP^).h_addr_list^;
        Move(Source^, Destination^, BloqueIP.h_length);
        IPNombre := inet_ntoa(DirIP);

        if Not Assigned(ClassUser) then
          ClassUser := TClassUser.Create;

        Repeat
          Respuesta := FrmLogin.ShowModal;
          if (Respuesta = mrOK) then
          begin
            ClassUser.Usuario := ClientModule1.cdUsuario.FieldByName('Usuario').AsString;
            ClassUser.Nombre := ClientModule1.cdUsuario.FieldByName('NombreUsuario').AsString;
            ClassUser.IP := IPNombre;
            ClassUser.Cargo := ClientModule1.cdUsuario.FieldByName('TituloCargo').AsString;
            ClassUser.Departamento := ClientModule1.cdUsuario.FieldByName('NombreDepartamento').AsString;

            Try
              if Not EstablecerDatosUsuario(ClassUser, True, Comentario) then
                raise InteligentWarning.Create(Comentario);

              // Traer a la memoria los códigos de error del sistema
              ListaErrores := TStringList.Create;
              ListaErrores.Clear;
              cdErrores := TClientDataSet.Create(Nil);
              Try
                cdErrores.RemoteServer := ClientModule1.DSProviderConnection1;
                CrearConjunto(cdErrores, 'nuc_errores', sNombre, ccSelect);

                if sNombre <> '' then
                begin
                  cdErrores.Open;

                  while Not cdErrores.Eof do
                  begin
                    Try
                      Error := TErrores.Create;
                      Error.Codigo  := cdErrores.FieldByName('iCodigo').AsInteger;
                      Error.Usuario := cdErrores.FieldByName('sDescUsuario').AsString;
                      Error.Tecnico := cdErrores.FieldByName('sDescTecnico').AsString;

                      ListaErrores.AddObject(IntToStr(Error.Codigo), Error);
                    Except
                      InteliDialog.ShowModal('No se ha podido cargar completa la tabla de errores del sistema.','', mtInformation, [mbOk], 0);
                    End;

                    cdErrores.Next;
                  end;
                end
                else
                  InteliDialog.ShowModal('No ha sido posible localizar el catálogo de errores del sistema.','', mtInformation, [mbOk], 0);
              Finally
                EliminarConjunto(cdErrores.ProviderName);
                cdErrores.Free;
              End;
            Except
              on e:InteligentWarning do
              begin
                Registrado := False;
                InteliDialog.ShowModal('La base de datos [' + FrmLogin.cbBase.Text + '] no ha podido ser conectada.', 'Debido a lo siguiente: ' + e.Message, mtInformation, [mbOk], 0);
              end;

              on e:Exception do
                raise;
            End;
          end
          else
          begin
            ClientModule1.SQLConnection1.Connected := False;
            Raise InteligentConnection.Create('*');
          end;
        Until Registrado;
      finally
        Self.Visible := True;
        FreeAndNil(FrmLogin);
      end;
    end;

    Resultado := mrOk;
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  Except
    on e:InteligentConnection do
    begin
      Result := False;
      Resultado := mrCancel;
      //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentException do
    begin
      Result := False;
      InteliDialog.ShowModal('Ha ocurrido un error catastrofico en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Resultado := mrCancel;
      //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      Result := False;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Resultado := mrCancel;
      //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmConectando.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmConectando.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;
  Timer2.Enabled := True;
end;

procedure TFrmConectando.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27: if Not ProcedeConectar then Close;
    119: ProcedeConfigurar;
  end;
end;

procedure TFrmConectando.FormShow(Sender: TObject);
begin
  if Assigned(ListaPar) then
    Timer2.Interval := 1;
end;

procedure TFrmConectando.Image1Click(Sender: TObject);
begin
  if Not ProcedeConectar then
    Close;
end;

procedure TFrmConectando.Label2Click(Sender: TObject);
begin
  ProcedeConfigurar;    // Activar el modo de configuración de conexión
end;

procedure TFrmConectando.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  Label2.Visible := False;
  if Not Conectar then
    Close;
end;

end.
