unit UTFrmDatosTransportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage, Mask,
  DBCtrls, DBClient, AdvShapeButton, NxEdit, ExtDlgs, JvDBImage, ComCtrls;

type
  TFrmDatosTransportes = class(TFrmDatosCatalogo)
    DBEditTitulo: TDBEdit;
    DBEditCodigo: TDBEdit;
    Image2: TImage;
    Image1: TImage;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    EditCodigoTipo: TEdit;
    Label5: TLabel;
    EditTituloTipo: TEdit;
    BtnFindDisciplina: TBitBtn;
    DBEditIdTipo: TDBEdit;
    Image3: TImage;
    cdtipo: TClientDataSet;
    DataSource1: TDataSource;
    Imagen: TJvDBImage;
    Button1: TButton;
    Button2: TButton;
    DlgSave: TSavePictureDialog;
    DBMemoDescripcion1: TDBRichEdit;
    DBMemoComentarios1: TDBRichEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnFindDisciplinaClick(Sender: TObject);
    procedure DBEditIdTipoChange(Sender: TObject);
    procedure EditCodigoTipoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRecClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosTransportes: TFrmDatosTransportes;

implementation

uses ClientModuleUnit1,xDatabase, UTFrmTipoTransporte, UInteliDialog,UTFrmCargaImagen;

{$R *.dfm}

procedure TFrmDatosTransportes.BtnAddNewClick(Sender: TObject);
begin
  if length(dbEditIdTipo.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un tipo.','', mtInformation, [mbOk], 0);
    EditCodigoTipo.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
  EditCodigoTipo.Text := '';
  EditTituloTipo.Text := '';
end;

procedure TFrmDatosTransportes.BtnFindDisciplinaClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmTipoTransporte;
begin
  Try
    tForm := TFrmTipoTransporte.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idtipo').AsString := registro.Valor['idtipotransporte'];
      EditCodigoTipo.Text := registro.Valor['codigotipotransporte'];
      EditTituloTipo.Text := registro.Valor['titulotipotransporte'];
      DBEditCodigo.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosTransportes.BtnRecClick(Sender: TObject);
begin
  if length(dbEditIdTipo.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un tipo.','', mtInformation, [mbOk], 0);
    EditCodigoTipo.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosTransportes.Button1Click(Sender: TObject);
var
  ex:string;
  tms:TMemoryStream;
  bf: Word;
begin

    tms:= TMemoryStream.Create;

    TBlobField(dsdatos.DataSet.FieldByName('imagen')).SaveToStream(tms);

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
      TBlobField(dsdatos.DataSet.FieldByName('imagen')).SaveToFile(DlgSave.FileName+ex);
      InteliDialog.ShowModal('Informaciòn:','imagen descargada: '+DlgSave.FileName, mtInformation, [mbOk], 0);

    End
    else
      InteliDialog.ShowModal('Informaciòn:','Proceso cancelado por el usuario.', mtInformation, [mbOk], 0);
end;

procedure TFrmDatosTransportes.Button2Click(Sender: TObject);
var
  frmimagen:TFrmCargaImagen;
begin

  try
    try
      frmimagen := TFrmCargaImagen.Create(nil);
      frmimagen.ShowModal;
      if not frmimagen.cancelado then
      begin
        TBlobField(dsdatos.DataSet.FieldByName('imagen')).LoadFromStream(frmimagen.MemorySTResultante);
      end;
    finally
      frmimagen.Free;
    end;
  Except
    on e:Exception do
    InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosTransportes.DBEditIdTipoChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdtipo.Text)) > 0 then
  begin
    if cdTipo.State <> dsBrowse then
    begin
      CrearConjunto(cdtipo, 'alm_tipotransporte', providername, ccCatalog);
      cdtipo.Open;
    end;
    CargarDatosFiltrados(cdtipo, 'idtipotransporte', [dsDatos.DataSet.FieldByName('idtipo').AsInteger]);
    cdtipo.refresh;
    editCodigotipo.Text := cdtipo.FieldByName('codigotipotransporte').AsString;
    editTitulotipo.Text := cdtipo.FieldByName('titulotipotransporte').AsString;
  end;
end;

procedure TFrmDatosTransportes.EditCodigoTipoKeyPress(Sender: TObject;
  var Key: Char);
  var providername: String;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdTipo.State <> dsBrowse then
    begin
      CrearConjunto(cdtipo, 'alm_tipotransporte', providername, ccCatalog);
      cdtipo.Open;
    end;
    CargarDatosFiltrados(cdTipo, 'codigotipotransporte', [tEdit(sender).Text]);
    cdTipo.refresh;
    if cdTipo.RecordCount = 1 then
    begin
      editCodigoTipo.Text := cdTipo.FieldByName('codigotipotransporte').AsString;
      editTituloTipo.Text := cdTipo.FieldByName('titulotipotransporte').AsString;
      dsDatos.DataSet.FieldByName('idtipo').AsInteger := cdTipo.FieldByName('idtipotransporte').AsInteger;
      DBEditCodigo.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de tipo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindDisciplina.Click;
  end;
end;

procedure TFrmDatosTransportes.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  EditCodigotipo.SetFocus;
end;

end.
