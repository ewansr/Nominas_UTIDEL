unit UTFrmDatosProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  pngimage, Mask, JvExMask, JvToolEdit, JvDBControls, AdvShapeButton,
  JvComponentBase, JvEnterTab, AdvSmoothTabPager, JvExControls, JvxCheckListBox,
  DBClient, AdvEdit, AdvEdBtn, UInteliDialog, ComCtrls, AppEvnts;

type
  TFrmDatosProveedores = class(TFrmDatosCatalogo)
    Image1: TImage;
    Image2: TImage;
    tab1: TAdvSmoothTabPager;
    AdvSmoothTabPager1: TAdvSmoothTabPage;
    AdvSmoothTabPager2: TAdvSmoothTabPage;
    AdvSmoothTabPager3: TAdvSmoothTabPage;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    Label2: TLabel;
    edtrazonsocial: TDBEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DateFecha: TJvDBDateEdit;
    Label4: TLabel;
    AdvSmoothTabPager4: TAdvSmoothTabPage;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    edtContacto: TDBEdit;
    edtContactoPuesto: TDBEdit;
    edtContactoTelefono: TDBEdit;
    edtContactoEmail: TDBEdit;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lst1: TJvxCheckListBox;
    Label16: TLabel;
    edtCodigoFormaPago: TAdvEditBtn;
    edtTituloFormaPago: TAdvEdit;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    dbedtdomicilio: TDBEdit;
    Label17: TLabel;
    DBMemoComentarios: TDBRichEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure GuardarGrupos;
    procedure edtCodigoFormaPagoClickBtn(Sender: TObject);
    procedure edtCodigoFormaPagoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    cdGrupos: TClientDataSet;
    cdProveedorGrupo: TClientDataSet;
  public
    { Public declarations }
  end;

var
  FrmDatosProveedores: TFrmDatosProveedores;

implementation

uses ClientModuleUnit1, xDatabase, UTFrmFormaPago;

{$R *.dfm}

// comentario MRV Prueba
procedure TFrmDatosProveedores.GuardarGrupos;
var
  Id: Integer;
  i: Integer;
begin
  // Primero borrar todo lo que existe 
  cdProveedorGrupo.First;
  while not cdProveedorGrupo.eof do
  begin
    cdProveedorGrupo.Delete;
    cdProveedorGrupo.ApplyUpdates(-9);
    cdProveedorGrupo.First;
  end;
  
  Id := DsDatos.DataSet.FieldByName('idproveedor').AsInteger;
  if Id = 0 then
    Id := UltimoId;
  
  for i := 0 to lst1.Items.Count - 1 do
    if lst1.Checked[i] then
    begin
      cdProveedorGrupo.Insert;
      cdProveedorGrupo.FieldValues['idproveedorgrupo'] := 0;
      cdProveedorGrupo.FieldValues['idproveedor'] := Id;
      cdProveedorGrupo.FieldValues['idgrupo'] := TLista(lst1.Items.Objects[i]).Valor['idgrupo'];
      cdProveedorGrupo.Post;
      cdProveedorGrupo.ApplyUpdates(-9);
    end;
end;

procedure TFrmDatosProveedores.BtnAddNewClick(Sender: TObject);
var registro: TLista;
  index: Integer;
begin
  tab1.ActivePageIndex := 0;
  if not ClientModule1.VerificaVacio(DbEditCodigo, 'Código')  then
    exit;
  if not ClientModule1.VerificaVacio(edtRazonSocial, 'Razón social')  then
    exit;
  if length(Trim(dsDatos.DataSet.FieldByName('idformapago').AsString)) < 1 then
  begin
    InteliDialog.ShowModal('Información.','Seleccione un tipo de pago', mtInformation, [mbOk], 0);
    edtCodigoFormaPago.SetFocus;
    Exit;
  end;
  inherited;
  GuardarGrupos;

  //establecer nuevos valor por default de campos
  dsDatos.DataSet.FieldByName('fecha').AsDateTime := Now;
  dsDatos.DataSet.FieldByName('idproveedor').AsInteger := 0;

  //llenar de new el proveedor grupo
  CargarDatosFiltrados(cdProveedorGrupo,'idproveedor',[DsDatos.DataSet.FieldByName('idproveedor').AsInteger]);
  cdProveedorGrupo.refresh;

  //limpiar campos de forma de pago
  edtCodigoFormaPago.Text := '';
  edtTituloFormaPago.Text := '';

  // Leer todos los grupos activos
  CargarDatosFiltrados(cdGrupos,'activo',['si']);
  cdGrupos.Refresh;

  //precargar componente de lista de tipo de materiales
  lst1.Clear;
  registro.Free;
  cdGrupos.First;
  while not cdGrupos.Eof do
  begin
    Registro := GetCurrentRecord(cdGrupos);
    index := lst1.Items.AddObject(Registro.Valor['titulogrupo'],Registro);
    cdGrupos.Next;
  end;
  tab1.ActivePageIndex := 0;

end;

procedure TFrmDatosProveedores.BtnRecClick(Sender: TObject);
begin
  tab1.ActivePageIndex := 0;
  if not ClientModule1.VerificaVacio(DbEditCodigo, 'Código')  then
    exit;
  if not ClientModule1.VerificaVacio(edtRazonSocial, 'Razón social')  then
    exit;
  if length(Trim(dsDatos.DataSet.FieldByName('idformapago').AsString)) < 1 then
  begin
    InteliDialog.ShowModal('Información.','Seleccione un tipo de pago', mtInformation, [mbOk], 0);
    edtCodigoFormaPago.SetFocus;
    Exit;
  end;
  inherited;
  GuardarGrupos;
end;

procedure TFrmDatosProveedores.edtCodigoFormaPagoClickBtn(Sender: TObject);
Var
  frm1: TFrmFormaPago;
  reg: TLista;
begin
  inherited;
  frm1 := TFrmFormaPago.Create(nil);
  reg := frm1.SeleccionarItem;
  if Assigned(reg) then
  begin
    dsDatos.DataSet.FieldValues['idformapago'] := reg['idformapago'];
    edtCodigoFormaPago.Text := reg['codigoformapago'];
    edtTituloFormaPago.Text := reg['tituloformapago'];
  end;
  frm1.Free;
end;

procedure TFrmDatosProveedores.edtCodigoFormaPagoKeyPress(Sender: TObject;
  var Key: Char);
Var
  ProviderName: String;
  cdFormaPago: TClientDataSet;
begin
  inherited;
  if (Key = #13) and (trim(edtCodigoFormaPago.Text) <> '') then
  begin
    cdFormaPago := TClientDataSet.Create(nil);
    CrearConjunto(cdFormaPago,'alm_formapago',ProviderName,ccSelect);
    CargarDatosFiltrados(cdFormaPago,'codigoformapago',[trim(edtCodigoFormaPago.Text)]);
    cdFormaPago.Open;
    if cdFormaPago.RecordCount = 1 then
    begin
      dsDatos.DataSet.FieldValues['idformapago'] := cdFormaPago.FieldValues['idformapago'];
      edtCodigoFormaPago.Text := cdFormaPago.FieldValues['codigoformapago'];
      edtTituloFormaPago.Text := cdFormaPago.FieldValues['tituloformapago'];
    end
    else
      edtCodigoFormaPagoClickBtn(Sender);
    cdFormaPago.Free;
  end;
end;

procedure TFrmDatosProveedores.FormShow(Sender: TObject);
var
  ProviderName: String;
  cdFormaPago: TClientDataSet;
  Registro: TLista;
  index: Integer;
begin
  inherited;
  if DsDatos.State = dsInsert then
  begin
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
    DateFecha.Date := Now;
  end;

  if DsDatos.State = dsEdit then
  begin
    cdFormaPago := TClientDataSet.Create(nil);
    CrearConjunto(cdFormaPago,'alm_formapago',ProviderName,ccSelect);
    CargarDatosFiltrados(cdFormaPago,'idformapago',[dsDatos.DataSet.FieldByName('idformapago').AsInteger]);
    cdFormaPago.Open;
    if cdFormaPago.RecordCount = 1 then
    begin
      edtCodigoFormaPago.Text := cdFormaPago.FieldValues['codigoformapago'];
      edtTituloFormaPago.Text := cdFormaPago.FieldValues['tituloformapago'];
    end;
    cdFormaPago.Free;
  end;


  // Leer todos los grupos activos
  cdGrupos := TClientDataSet.Create(self);
  CrearConjunto(cdGrupos,'alm_grupo',ProviderName,ccSelect);
  CargarDatosFiltrados(cdGrupos,'activo',['si']);
  cdGrupos.Open;

  // Leer los grupos que provee
  cdProveedorGrupo := TClientDataSet.Create(self);
  CrearConjunto(cdProveedorGrupo,'alm_proveedorgrupo',ProviderName,ccUpdate);
  CargarDatosFiltrados(cdProveedorGrupo,'idproveedor',[DsDatos.DataSet.FieldByName('idproveedor').AsInteger]);
  cdProveedorGrupo.Open;

  // Llenar la lista y marcar los que ya estan asignados
  lst1.Clear;
  cdGrupos.First;
  while not cdGrupos.Eof do
  begin
    Registro := GetCurrentRecord(cdGrupos);
    index := lst1.Items.AddObject(Registro.Valor['titulogrupo'],Registro);
    lst1.Checked[index] := cdProveedorGrupo.Locate('idgrupo',Registro.Valor['idgrupo'],[]);
    cdGrupos.Next;
  end;
  tab1.ActivePageIndex := 0;
end;

end.
