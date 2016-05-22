unit UTFrmDatosContacto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, UIntelidialog,
  pngimage, JvExControls, JvLabel, DBClient, StdCtrls, DBCtrls, Buttons, Mask;

type
  TFrmDatosContacto = class(TFrmDatosCatalogo)
    EditCodigoProveedor: TEdit;
    EditTituloProveedor: TEdit;
    DBEditIdProveedor: TDBEdit;
    BtnFindProveedor: TBitBtn;
    DBEditNombre: TDBEdit;
    DBEditApellido: TDBEdit;
    DBEditCargo: TDBEdit;
    DBEditTelefono1: TDBEdit;
    DBEditTelefono2: TDBEdit;
    DBEditCorreo: TDBEdit;
    DBMemoComentarios: TDBMemo;
    cdProveedores: TClientDataSet;
    DataSource1: TDataSource;
    JvLabel1: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    Image3: TImage;
    Image2: TImage;
    Image1: TImage;
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnFindProveedorClick(Sender: TObject);
    procedure DBEditIdProveedorChange(Sender: TObject);
    procedure EditCodigoProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosContacto: TFrmDatosContacto;
  providername: String;

implementation

uses ClientModuleUnit1,xDatabase, UTFrmProveedores;

{$R *.dfm}

procedure TFrmDatosContacto.BtnAddNewClick(Sender: TObject);
begin
  if length(dbeditIdProveedor.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un proveedor.','', mtInformation, [mbOk], 0);
    editcodigoproveedor.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditNombre, 'Nombre') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditApellido, 'Apellido') = False then
    exit;
  inherited;
  EditCodigoProveedor.Text := '';
  EditTituloProveedor.Text := '';
end;

procedure TFrmDatosContacto.BtnFindProveedorClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmProveedores;
begin
  Try
    tForm := TFrmProveedores.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idproveedor').AsString := registro.Valor['idproveedor'];
      EditCodigoProveedor.Text := registro.Valor['codigoproveedor'];
      EditTituloProveedor.Text := registro.Valor['tituloproveedor'];
      DBEditNombre.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosContacto.BtnRecClick(Sender: TObject);
begin
  if length(dbeditIdProveedor.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un proveedor.','', mtInformation, [mbOk], 0);
    editcodigoproveedor.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditNombre, 'Nombre') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditApellido, 'Apellido') = False then
    exit;
  inherited;
end;

procedure TFrmDatosContacto.DBEditIdProveedorChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdProveedor.Text)) > 0 then
  begin
    if cdProveedores.State <> dsBrowse then
    begin
      CrearConjunto(cdProveedores, 'alm_proveedor', providername, ccCatalog);
      CargarDatosFiltrados(cdProveedores, 'idproveedor', [-9]);
      cdProveedores.Open;
    end;
    CargarDatosFiltrados(cdProveedores, 'idproveedor', [dsDatos.DataSet.FieldByName('idproveedor').AsInteger]);
    cdProveedores.refresh;
    editCodigoProveedor.Text := cdProveedores.FieldByName('codigoproveedor').AsString;
    editTituloProveedor.Text := cdProveedores.FieldByName('tituloproveedor').AsString;
  end;
end;

procedure TFrmDatosContacto.EditCodigoProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdProveedores.State <> dsBrowse then
    begin
      CrearConjunto(cdProveedores, 'alm_proveedor', providername, ccCatalog);
      CargarDatosFiltrados(cdProveedores, 'idproveedor', [-9]);
      cdProveedores.Open;
    end;
    CargarDatosFiltrados(cdProveedores, 'codigoproveedor', [tEdit(sender).Text]);
    cdProveedores.refresh;
    if cdProveedores.RecordCount = 1 then
    begin
      editCodigoProveedor.Text := cdProveedores.FieldByName('codigoproveedor').AsString;
      editTituloProveedor.Text := cdProveedores.FieldByName('tituloproveedor').AsString;
      dsDatos.DataSet.FieldByName('idproveedor').AsInteger := cdProveedores.FieldByName('idproveedor').AsInteger;
      DBEditNombre.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de proveedor ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindProveedor.Click;
  end;
end;

procedure TFrmDatosContacto.FormShow(Sender: TObject);
begin
  inherited;
  EditCodigoProveedor.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
