unit Frm_Conectando;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, AdvGlowButton, DBClient, ClientModuleUnit1, StdCtrls,
  ComCtrls, FolderDialog, pngImage, UInteliDialog, URegistro;

type
  TFrmConectando = class(TForm)
    Timer2: TTimer;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    lbl1: TLabel;
    procedure Conectar;
    procedure Timer2Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ProcedeConectar;
    procedure ProcedeConfigurar;
    procedure Image1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConectando: TFrmConectando;

implementation

uses UFrmParamsConfig, frm_Login, Unit2, Frm_SelDatabase, ClientClassesUnit1;

{$R *.dfm}

procedure TFrmConectando.ProcedeConectar;
begin
  Timer2.Enabled := False;
  Label2.Visible := False;
  Conectar;
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

procedure TFrmConectando.Conectar;
var
  cdErrores: TClientDataSet;
  Error: TErrores;
  Descripcion: TDescripcion;
  sNombre: String;
  Respuesta: Integer;

  Resp: Integer;
begin
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
      Application.MainForm.Close;
      Exit;
    end;

    on e:exception do
    begin
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
        Application.MainForm.Close;
    end;
  End;

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
          Try
            Application.CreateForm(TFrmSelDatabase, FrmSelDatabase);
            if FrmSelDatabase.ShowModal = mrOk then
            begin
              Try
                // Registrar la base de datos que se seleccionó
                SetRegistry('\Configuracion', '\Conexion', 'DATABASE', FrmSelDataBase.ListBox1.Items.Strings[FrmSelDataBase.ListBox1.ItemIndex]);
              Except
                on e:exception do
                begin
                  InteliDialog.ShowModal('No se ha podido registrar base de datos.',
                                         'No ha sido posible registrar la base de datos de trabajo, informe de esto al administrador del sistema.', mtWarning, [mbOk], 0);
                  PostMessage(Self.Handle, WM_CLOSE, 0, 0);
                end;
              End;
            end
            else
              PostMessage(Self.Handle, WM_CLOSE, 0, 0);
          Except
            PostMessage(Self.Handle, WM_CLOSE, 0, 0);
          End;
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
      InteliDialog.ShowModal('Ha ocurrido un error catastrófico.', 'Informe de esto al administrador del sistema.', mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      Exit;
    end;

    // Verificar que tipo de sistema se está ejecutando
    if Not ObtenerPrefijo(sNombre) then
      raise InteligentException.Create('No se ha podido reconocer la estructura de la base de datos' + #10 + #10 +
                                       'Es probable que la base de datos haya sido modificada últimamente lo cual ocasiona que el sistema no pueda funcionar');

    // Modificar las cadenas para que el cliente interactúe con el sistema adecuado
    cAcceso := AnsiUpperCase(sNombre) + 'ACCESO';
    cUsuario := AnsiUpperCase(sNombre) + 'USUARIO';
    cConfiguracionImagen := sNombre + 'configuracion_imagen1';
    cConfiguracion := sNombre + 'configuracion';

    try
      FrmLogin := TFrmLogin.Create(Self);
      Self.Visible := False;
      Respuesta := FrmLogin.ShowModal;
      if (Respuesta = mrOK) then
      begin
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
          cdErrores.Free;
          EliminarConjunto(cdErrores.ProviderName);
        End;
      end
      else
      begin
        ClientModule1.SQLConnection1.Connected := False;
        Application.Terminate;
      end;
    finally
      Self.Visible := True;
      FreeAndNil(FrmLogin);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmConectando.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27: ProcedeConectar;
    119: ProcedeConfigurar;
  end;
{  if Key = 27 then
    ProcedeConectar;

  if Key = 119 then
    ProcedeConfigurar;}
end;

procedure TFrmConectando.FormShow(Sender: TObject);
begin
  Timer2.Enabled := True;
end;

procedure TFrmConectando.Image1Click(Sender: TObject);
begin
  ProcedeConectar;  // Se cancela la espera y se activa el conectar inmediamente
end;

procedure TFrmConectando.Label2Click(Sender: TObject);
begin
  ProcedeConfigurar;    // Activar el modo de configuración de conexión
end;

procedure TFrmConectando.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  Label2.Visible := False;
  Conectar;
end;

end.
