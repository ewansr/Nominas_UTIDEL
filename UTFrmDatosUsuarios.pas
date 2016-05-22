unit UTFrmDatosUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  pngimage, Mask, DBClient, UIntelidialog, AdvShapeButton, NxEdit,types,
  JvDBImage, ExtDlgs, AppEvnts;

type
  TFrmDatosUsuarios = class(TFrmDatosCatalogo)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    DBEditUsuario: TDBEdit;
    DBEditPassword: TDBEdit;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    DBMemoDescripcion: TDBMemo;
    EditCodigoRol: TEdit;
    Image4: TImage;
    BtnFindRol: TBitBtn;
    DBEditIdRol: TDBEdit;
    EditTituloRol: TEdit;
    cdRol: TClientDataSet;
    cdPersonal: TClientDataSet;
    EditRepitePassword: TEdit;
    BtnCam: TAdvShapeButton;
    lbl1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DlgSave: TSavePictureDialog;
    GrpPersonal: TGroupBox;
    DBEditIdPersonal: TDBEdit;
    Image6: TImage;
    BtnFindPersonal: TBitBtn;
    EditCodigoPersonal: TEdit;
    Label10: TLabel;
    EditTituloPersonal: TEdit;
    ChkPersonal: TCheckBox;
    GrpNombre: TGroupBox;
    DBEditNombre: TDBEdit;
    Label3: TLabel;
    Image5: TImage;
    procedure FormShow(Sender: TObject);
    procedure DBEditIdRolChange(Sender: TObject);
    procedure BtnFindRolClick(Sender: TObject);
    procedure EditCodigoRolKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFindPersonalClick(Sender: TObject);
    procedure DBEditIdPersonalChange(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure DBEditPasswordChange(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCamClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ChkPersonalClick(Sender: TObject);
  private
    { Private declarations }
    CambiarPassword: Boolean;
    function HashMD5(const Str: String): String;
    function Proporcional(Imagen: TGraphic; Ancho, Alto: Integer):TGraphic;
  public
    { Public declarations }
  end;

var
  FrmDatosUsuarios: TFrmDatosUsuarios;
  providername: String;
implementation

uses ClientModuleUnit1,xDatabase, UTFrmroles, UTFrmPersonal, IdHashMessageDigest,
UTFrmTomarFoto,UTFrmCargaImagen;

{$R *.dfm}

procedure TFrmDatosUsuarios.BtnAddNewClick(Sender: TObject);
Var
  NewPW: String;
begin

  if length(dbeditIdRol.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un rol.','', mtInformation, [mbOk], 0);
    editcodigorol.SetFocus;
    exit;
  end;

  if ChkPersonal.Checked then
  begin
    dsDatos.DataSet.FieldByName('nombre').AsString := '';
    if ClientModule1.VerificaVacio(EditCodigoPersonal, 'Personal') = False then
      exit;
  end
  else
  begin
    dsDatos.DataSet.FieldByName('idpersonal').AsString := '';
    if ClientModule1.VerificaVacio(DBEditNombre, 'Nombre') = False then
      exit;
  end;

  if ClientModule1.VerificaVacio(DbEditUsuario, 'Usuario') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditPassword, 'Password') = False then
    exit;

  if CambiarPassword then // si hay que guardar la contraseña, validar
  begin
    if DBEditPassword.Text <> EditRepitePAssword.Text then
    begin
      InteliDialog.ShowModal('El password ingresado no coincide con la repetición de password.','', mtInformation, [mbOk], 0);
      EditRepitePassword.SetFocus;
      exit;
    end;

    // Codificar la contraseña nueva
    NewPW := DBEditPassword.Text;
    NewPW := HashMD5(NewPW);
    DsDatos.DataSet.FieldByName('password').AsString := NewPW;

    //Limpiar campos
    EditCodigoRol.Text := '';
    EditTituloRol.Text := '';
    EditCodigoPersonal.Text := '';
    EditTituloPersonal.Text := '';
    EditRepitePassword.Text := '';
  end;
  CambiarPassword := true;
  inherited;

  ChkPersonal.Checked := True;
  GrpPersonal.Visible := True;
  GrpNombre.Visible := False;

end;

procedure TFrmDatosUsuarios.BtnCamClick(Sender: TObject);
  var popup: Tfrmtomarfoto;
  pictu : TGraphic;
  st:TMemoryStream;
begin
  pictu := TGraphic.Create;
  popup := TFrmTomarFoto.Create(nil);
  popup.ShowModal;
  if not popup.cancelado then
  begin
    pictu := proporcional(popup.Frame_Video1.img2.Picture.Graphic,300,300);
    st := TMemoryStream.Create;
    pictu.SaveToStream(st);
    st.Position := 0;
    TBlobField(dsDatos.dataset.FieldByName('foto')).LoadFromStream(st);
    st.free;
  end;
  popup.free;
end;

// Esta otra mantiene la relacion entre alto y ancho
function TFrmDatosUsuarios.Proporcional(Imagen: TGraphic; Ancho, Alto: Integer):TGraphic;
var
  Bitmap: TBitmap;
  Rect:TRect;
begin
  Bitmap:= TBitmap.Create;
  try
    Bitmap.Width:= Ancho;
    Bitmap.Height:= Alto;

    /// Calculos para que quede proporcional

      Alto:= Trunc((Ancho*Imagen.Height)/Imagen.Width);

      Ancho:= Trunc((Imagen.Width*Alto)/Imagen.Height);


    // posición nueva
    // Hay que centarla para que queden márgenes iguales a ambos lados
    Rect.Left := ((Bitmap.Width - Ancho) div 2);
    Rect.Top := ((Bitmap.Height - Alto) div 2);
    Rect.Right:= Rect.Left + Ancho;
    Rect.Bottom := Rect.Top + Alto;

    // Color neutro para márgenes
    Bitmap.Canvas.Brush.Color := clwhite;
    // copiar
    Bitmap.Canvas.FillRect(Bitmap.Canvas.ClipRect);
    Bitmap.Canvas.StretchDraw(Rect,Imagen);
    Imagen.Assign(Bitmap);
    Result := imagen;
  finally
    Bitmap.Free;
  end;
end;

procedure TFrmDatosUsuarios.BtnFindPersonalClick(Sender: TObject);
Var
  registro: TLista;
  Form: TFrmPersonal;
begin
  Try
    Form := TFrmPersonal.Create(nil);
    form.ModoSeleccion := True;
    registro := Form.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idpersonal').AsString := registro.Valor['idpersonal'];
      EditCodigoPersonal.Text := registro.Valor['codigopersonal'];
      EditTituloPersonal.Text := registro.Valor['nombrecompleto'];
      DBEditUsuario.SetFocus;
    end;
    Form.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosUsuarios.BtnFindRolClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmRoles;
begin
  Try
    tForm := TFrmRoles.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idrol').AsString := registro.Valor['idrol'];
      EditCodigoRol.Text := registro.Valor['codigorol'];
      EditTituloRol.Text := registro.Valor['titulorol'];
      EditCodigoPersonal.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosUsuarios.BtnRecClick(Sender: TObject);
Var
  NewPW: String;
begin

  if ChkPersonal.Checked then
  begin
    dsDatos.DataSet.FieldByName('nombre').AsString := '';
    if ClientModule1.VerificaVacio(EditCodigoPersonal, 'Personal') = False then
      exit;
  end
  else
  begin
    dsDatos.DataSet.FieldByName('idpersonal').AsString := '';
    if ClientModule1.VerificaVacio(DBEditNombre, 'Nombre') = False then
      exit;
  end;

  if length(dbeditIdRol.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un rol.','', mtInformation, [mbOk], 0);
    editcodigorol.SetFocus;
    exit;
  end;

  if ClientModule1.VerificaVacio(DbEditUsuario, 'Usuario') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditPassword, 'Password') = False then
    exit;

  if CambiarPassword then
  begin
    if DBEditPassword.Text <> EditRepitePAssword.Text then
    begin
      InteliDialog.ShowModal('El password ingresado no coincide con la repetición de password.','', mtInformation, [mbOk], 0);
      EditRepitePassword.SetFocus;
      exit;
    end;

    // Codificar la contraseña nueva
    NewPW := DBEditPassword.Text;
    NewPW := HashMD5(NewPW);
    DsDatos.DataSet.FieldByName('password').AsString := NewPW;
  end;
  inherited;
end;

procedure TFrmDatosUsuarios.Button1Click(Sender: TObject);
var
  ex:string;
  tms:TMemoryStream;
  bf: Word;
begin

    tms:= TMemoryStream.Create;

    TBlobField(dsdatos.DataSet.FieldByName('foto')).SaveToStream(tms);

    tms.Seek(0, soFromBeginning);
    if tms.Read(bf,4) > 0 then
    begin
      case bf of
        // BMP
        $4D42: begin
                 ex := '.bmp';
               end;
        // icono
        $0000: begin
                 ex:= '.ico';
               end;
        // WMF
//        $0001,$CDD7: ;
        // JPG
        $D8FF: begin
          ex := '.jpg';

        end
      end;
    end;

    DlgSave.Filter := '(*'+ex+')|*'+ex;

    if dlgsave.Execute then
    Begin
      TBlobField(dsdatos.DataSet.FieldByName('foto')).SaveToFile(DlgSave.FileName+ex);
      InteliDialog.ShowModal('Informaciòn:','imagen descargada: '+DlgSave.FileName, mtInformation, [mbOk], 0);

    End
    else
      InteliDialog.ShowModal('Informaciòn:','Proceso cancelado por el usuario.', mtInformation, [mbOk], 0);
end;

procedure TFrmDatosUsuarios.Button2Click(Sender: TObject);
var
  frmimagen:TFrmCargaImagen;
begin

  try
    try
      frmimagen := TFrmCargaImagen.Create(nil);
      frmimagen.ShowModal;
      if not frmimagen.cancelado then
      begin
        TBlobField(dsdatos.DataSet.FieldByName('foto')).LoadFromStream(frmimagen.MemorySTResultante);
      end;
    finally
      frmimagen.Free;
    end;
  Except
    on e:Exception do
    InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmDatosUsuarios.ChkPersonalClick(Sender: TObject);
begin
  GrpPersonal.Visible := ChkPersonal.Checked;
  GrpNombre.Visible := not ChkPersonal.Checked;
end;

procedure TFrmDatosUsuarios.DBEditIdPersonalChange(Sender: TObject);
begin
  if Length(Trim(DBEditIdPersonal.Text)) > 0 then
  begin
    if cdPersonal.State <> dsBrowse then
    begin
      CrearConjunto(cdPersonal, 'nuc_personal', providername, ccCatalog);
      CargarDatosFiltrados(cdPersonal, 'idpersonal', [-9]);
      cdPersonal.Open;
    end;
    CargarDatosFiltrados(cdPersonal, 'idpersonal', [dsDatos.DataSet.FieldByName('idpersonal').AsInteger]);
    cdPersonal.refresh;
    editCodigoPersonal.Text := cdPersonal.FieldByName('codigopersonal').AsString;
    editTituloPersonal.Text := cdPersonal.FieldByName('nombrecompleto').AsString;
  end;
end;

procedure TFrmDatosUsuarios.DBEditIdRolChange(Sender: TObject);
begin
  if Length(Trim(DBEditIdRol.Text)) > 0 then
  begin
    if cdRol.State <> dsBrowse then
    begin
      CrearConjunto(cdRol, 'nuc_rol', providername, ccCatalog);
      CargarDatosFiltrados(cdRol, 'idrol', [-9]);
      cdRol.Open;
    end;
    CargarDatosFiltrados(cdRol, 'idrol', [dsDatos.DataSet.FieldByName('idrol').AsInteger]);
    cdRol.refresh;
    editCodigoRol.Text := cdRol.FieldByName('codigorol').AsString;
    editTituloRol.Text := cdRol.FieldByName('titulorol').AsString;
  end;
end;

procedure TFrmDatosUsuarios.DBEditPasswordChange(Sender: TObject);
begin
  inherited;
  // Se modificó la contraseña, indicar que se hagan las validaciones correspondientes
  // y codificar el texto
  CambiarPassword := true;
end;

procedure TFrmDatosUsuarios.EditCodigoPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdPersonal.State <> dsBrowse then
    begin
      CrearConjunto(cdPersonal, 'nuc_personal', providername, ccCatalog);
      CargarDatosFiltrados(cdPersonal, 'idpersonal', [-9]);
      cdPersonal.Open;
    end;
    CargarDatosFiltrados(cdPersonal, 'codigopersonal', [tEdit(sender).Text]);
    cdPersonal.refresh;
    if cdPersonal.RecordCount = 1 then
    begin
      editCodigoPersonal.Text := cdPersonal.FieldByName('codigopersonal').AsString;
      editTituloPersonal.Text := cdPersonal.FieldByName('nombrecompleto').AsString;
      dsDatos.DataSet.FieldByName('idpersonal').AsInteger := cdPersonal.FieldByName('idpersonal').AsInteger;
      DBEditUsuario.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de personal ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindPersonal.Click;
  end;
end;

procedure TFrmDatosUsuarios.EditCodigoRolKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdRol.State <> dsBrowse then
    begin
      CrearConjunto(cdRol, 'nuc_rol', providername, ccCatalog);
      CargarDatosFiltrados(cdRol, 'idrol', [-9]);
      cdRol.Open;
    end;
    CargarDatosFiltrados(cdRol, 'codigorol', [tEdit(sender).Text]);
    cdRol.refresh;
    if cdRol.RecordCount = 1 then
    begin
      editCodigoRol.Text := cdRol.FieldByName('codigorol').AsString;
      editTituloRol.Text := cdRol.FieldByName('titulorol').AsString;
      dsDatos.DataSet.FieldByName('idrol').AsInteger := cdRol.FieldByName('idrol').AsInteger;
      EditCodigoPersonal.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de rol ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindRol.Click;
  end;
end;

procedure TFrmDatosUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  EditCodigoRol.SetFocus;
  ChkPersonal.Checked := Length(dsDatos.DataSet.FieldByName('nombre').AsString) = 0;
  GrpPersonal.Visible := ChkPersonal.Checked;
  GrpNombre.Visible := not ChkPersonal.Checked;

  if DsDatos.State = dsInsert then
  begin
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
    CambiarPassword := true;
{    ChkPersonal.Checked := True;
    GrpPersonal.Visible := True;
    GrpNombre.Visible := False;   }
  end;
  if DsDatos.State = dsEdit then
  begin
    EditRepitePAssword.text := DsDatos.DataSet.FieldByName('password').AsString;
    CambiarPassword := false;
    if  AnsiLowerCase(DsDatos.DataSet.FieldByName('usuario').AsString) = 'admin' then
    begin
      DbEditUsuario.Enabled := False;
      EditCodigorol.Enabled := False;
      EditCodigoPersonal.Enabled := False;
      BtnFindRol.Enabled := False;
      BtnFindPersonal.Enabled := False;
    end;
  end;
end;

function TFrmDatosUsuarios.HashMD5(const Str: String): String;
var
  MD5: TIdHashMessageDigest5;
begin
  MD5 := TIdHashMessageDigest5.Create;
  try
    Result := LowerCase(MD5.HashStringAsHex(Str, TEncoding.UTF8))
  finally
    MD5.Free
  end
end;

end.
