unit UTFrmDatosConfFirmante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, StdCtrls, DBCtrls,
  pngimage, Buttons, Mask, JvExMask, JvToolEdit, JvDBControls, uIntelidialog,
  DBClient;

type
  TFrmDatosConfFirmante = class(TFrmDatosCatalogo)
    DateFecha: TJvDBDateEdit;
    Image3: TImage;
    Label5: TLabel;
    EditDocumento: TEdit;
    BtnFindDocumento: TBitBtn;
    Image1: TImage;
    DBEditIddocumento: TDBEdit;
    Label1: TLabel;
    EditCodigoCargo: TEdit;
    EdittituloCargo: TEdit;
    BtnFindCargo: TBitBtn;
    Image2: TImage;
    DBEditIdcargo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    cdOrganizacion: TClientDataSet;
    cdDocumentos: TClientDataSet;
    CdCargos: TClientDataSet;
    cbOrganizacion: TDBLookupComboBox;
    dsOrganizacion: TDataSource;
    CbOrden: TComboBox;
    Label4: TLabel;
    cdConf: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure BtnFindDocumentoClick(Sender: TObject);
    procedure DBEditIddocumentoChange(Sender: TObject);
    procedure EditDocumentoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoCargoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFindCargoClick(Sender: TObject);
    procedure DBEditIdcargoChange(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure CbOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure CbOrdenChange(Sender: TObject);
  private
    function Existe(Cliente: TclientDataset; orde, Doc, org: integer;idactual:integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosConfFirmante: TFrmDatosConfFirmante;

implementation

uses ClientModuleUnit1, UTFrmOrganigrama, UTFrmDocumentos, UTFrmCargos , xDatabase;
{$R *.dfm}

procedure TFrmDatosConfFirmante.BtnAddNewClick(Sender: TObject);
begin
  if cborganizacion.KeyValue = null then
  begin
    InteliDialog.ShowModal('Seleccione una organización.','', mtInformation, [mbOk], 0);
    cborganizacion.SetFocus;
    exit;
  end;
  if length(dbeditIddocumento.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un documento.','', mtInformation, [mbOk], 0);
    editDocumento.SetFocus;
    exit;
  end;
  if length(dbeditIdcargo.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un cargo.','', mtInformation, [mbOk], 0);
    editcodigocargo.SetFocus;
    exit;
  end;
  if length(CbOrden.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un orden.','', mtInformation, [mbOk], 0);
    CbORden.SetFocus;
    exit;
  end;
  dsdatos.dataset.fieldbyname('orden').asstring:= CbOrden.text;
  if Existe(Cdconf, strToint(cborden.Text), dsDatos.DataSet.FieldByName('iddocumento').AsInteger,dsDatos.DataSet.FieldByName('idorganizacion').AsInteger,dsDatos.DataSet.FieldByName('idorganizacion').AsInteger) then
  begin
    InteliDialog.ShowModal('El número de orden ya existe.','', mtInformation, [mbOk], 0);
    CbORden.SetFocus;
    exit;
  end;
  inherited;
  editDocumento.Text := '';
  editcodigocargo.Text := '';
  edittitulocargo.Text := '';
  DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
end;

procedure TFrmDatosConfFirmante.BtnFindCargoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmCargos;
begin
  Try
    tForm := TFrmCargos.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idcargo').AsString := registro.Valor['idcargo'];
      Editcodigocargo.Text := registro.Valor['codigocargo'];
      Edittitulocargo.Text := registro.Valor['titulocargo'];
      DateFecha.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosConfFirmante.BtnFindDocumentoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmDocumentos;
begin
  Try
    tForm := TFrmDocumentos.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('iddocumento').AsString := registro.Valor['iddocumento'];
      EditDocumento.Text := registro.Valor['nombredocumento'];
      EditCodigoCargo.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

{Function TFrmDatosConfFirmante.sustituye(Cliente: TclientDataset; orde, Doc, org: integer):Boolean;
var
  cdTest: TclientDataset;
  providername: String;
  actual: Integer;
begin
  Result := False;
  //obtener todos los firmantes del documento
  CrearConjunto(cdTest, 'nuc_configuracionfirmante', providername, ccUpdate);
  CargarDatosFiltrados(cdtest, 'idconfiguracionfirmante, iddocumento', [orde,Doc]);
  CdTest.Open;
  Actual := CdTest.RecordCount;
  //trabajando aqui



  CargarDatosFiltrados(cdtest, 'idconfiguracionfirmante, iddocumento, idorganizacion', [orde,Doc,Org]);
  CdTest.Open;
  if CdTest.RecordCount = 1 then
  begin
    CdTest.Edit;
  end;

end;  }
//esta función solo verifica si existe algun firmante con el mismo id
Function TFrmDatosConfFirmante.Existe(Cliente: TclientDataset; orde, Doc, org: integer; idactual:integer):Boolean;
var
  providername: String;
  resultado : boolean;
begin
  Result := False;
  CargarDatosFiltrados(cliente, 'orden, iddocumento, idorganizacion', [orde,Doc,Org]);
  Cliente.Refresh;
  Cliente.First;

  if Cliente.RecordCount > 0 then
    Resultado := True;

  if (Cliente.RecordCount = 1) and (Cliente.FieldByName('idconfiguracionfirmante').AsInteger = idactual) and (dsDatos.State = dsedit) then
    Resultado := False;

  Result := resultado;
end;

procedure TFrmDatosConfFirmante.BtnRecClick(Sender: TObject);
begin
  if cborganizacion.KeyValue = null then
  begin
    InteliDialog.ShowModal('Seleccione una organización.','', mtInformation, [mbOk], 0);
    cborganizacion.SetFocus;
    exit;
  end;
  if length(dbeditIddocumento.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un documento.','', mtInformation, [mbOk], 0);
    editDocumento.SetFocus;
    exit;
  end;
  if length(dbeditIdcargo.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un cargo.','', mtInformation, [mbOk], 0);
    editcodigocargo.SetFocus;
    exit;
  end;
  if length(CbOrden.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un orden.','', mtInformation, [mbOk], 0);
    CbORden.SetFocus;
    exit;
  end;
  dsdatos.dataset.fieldbyname('orden').asstring:= CbOrden.text;
  if Existe(Cdconf, strToint(cborden.Text), dsDatos.DataSet.FieldByName('iddocumento').AsInteger,dsDatos.DataSet.FieldByName('idorganizacion').AsInteger,dsDatos.DataSet.FieldByName('idconfiguracionfirmante').AsInteger) then
  begin
    InteliDialog.ShowModal('El número de orden ya existe.','', mtInformation, [mbOk], 0);
    CbORden.SetFocus;
    exit;
  end;
  inherited;

end;

procedure TFrmDatosConfFirmante.CbOrdenChange(Sender: TObject);
begin
  if StrToInt(CbOrden.Text) > 10 then
    CbOrden.Text := '1';

end;

procedure TFrmDatosConfFirmante.CbOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(CbOrden.Text)= 1) and (key = #8) then
    key := #0;
  if (key in ['0'..'9']) or (key = #8) or (key = #13)  then
    key := key
  else
    key := #0;
end;

procedure TFrmDatosConfFirmante.DBEditIdcargoChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdcargo.Text)) > 0 then
  begin
    if cdCargos.State <> dsBrowse then
    begin
      CrearConjunto(cdCargos, 'nuc_cargo', providername, ccCatalog);
      CargarDatosFiltrados(cdCargos, 'idcargo', [-9]);
      cdCargos.Open;
    end;
    CargarDatosFiltrados(cdCargos, 'idcargo', [dsDatos.DataSet.FieldByName('idcargo').AsInteger]);
    cdCargos.refresh;
    editCodigoCargo.Text := cdCargos.FieldByName('codigocargo').AsString;
    editTituloCargo.Text := cdCargos.FieldByName('titulocargo').AsString;
  end;
end;

procedure TFrmDatosConfFirmante.DBEditIddocumentoChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdDocumento.Text)) > 0 then
  begin
    if cdDocumentos.State <> dsBrowse then
    begin
      CrearConjunto(cdDocumentos, 'nuc_documento', providername, ccCatalog);
      CargarDatosFiltrados(cdDocumentos, 'iddocumento', [-9]);
      cdDocumentos.Open;
    end;
    CargarDatosFiltrados(cdDocumentos, 'iddocumento', [dsDatos.DataSet.FieldByName('iddocumento').AsInteger]);
    cdDocumentos.refresh;
    editDocumento.Text := cdDocumentos.FieldByName('nombredocumento').AsString;
  end;
end;

procedure TFrmDatosConfFirmante.EditCodigoCargoKeyPress(Sender: TObject;
  var Key: Char);
  var Providername: String;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdCargos.State <> dsBrowse then
    begin
      CrearConjunto(cdCargos, 'nuc_cargo', providername, ccCatalog);
      CargarDatosFiltrados(cdCargos, 'idcargo', [-9]);
      cdCargos.Open;
    end;
    CargarDatosFiltrados(cdCargos, 'codigocargo', [tEdit(sender).Text]);
    cdCargos.refresh;
    if cdCargos.RecordCount = 1 then
    begin
      editCodigoCargo.Text := cdCargos.FieldByName('codigocargo').AsString;
      editTituloCargo.Text := cdCargos.FieldByName('titulocargo').AsString;
      dsDatos.DataSet.FieldByName('idcargo').AsInteger := cdCargos.FieldByName('idcargo').AsInteger;
      DateFecha.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de cargo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindCargo.Click;
  end;
end;

procedure TFrmDatosConfFirmante.EditDocumentoKeyPress(Sender: TObject;
  var Key: Char);
  var providername: string;
  var cddocumentos: TClientDataSet;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    cddocumentos := TClientDataSet.Create(nil);
    if cddocumentos.State <> dsBrowse then
    begin
      CrearConjunto(cddocumentos, 'nuc_documento', providername, ccCatalog);
      CargarDatosFiltrados(cddocumentos, 'nombredocumento', [-9]);
      cddocumentos.Open;
    end;
    CargarDatosFiltrados(cddocumentos, 'nombredocumento', [tEdit(sender).Text]);
    cddocumentos.refresh;
    if cddocumentos.RecordCount = 1 then
    begin
      editDocumento.Text := cddocumentos.FieldByName('nombredocumento').AsString;
      dsDatos.DataSet.FieldByName('iddocumento').AsInteger := cddocumentos.FieldByName('iddocumento').AsInteger;
      EditCodigoCargo.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El documento ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindDocumento.Click;

    cddocumentos.Free;
  end;
end;

procedure TFrmDatosConfFirmante.FormShow(Sender: TObject);
var
  providername : String;
begin
  inherited;
  if DsDatos.State = dsInsert then
  begin
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
    DsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
  end;
  if DsDatos.State = dsEdit then
    CbOrden.ItemIndex := CbORden.Items.IndexOf(   DsDatos.DataSet.FieldByName('orden').AsString);
  cbOrganizacion.SetFocus;
  CrearConjunto(cdOrganizacion, cOrganizacion, providername, ccCatalog);
  CargarDatosFiltrados(cdOrganizacion, 'idorganizacion,idnivel', [-1,clientmodule1.cdAcceso.FieldByName('idnivelorganizacion').AsInteger]);
  cdOrganizacion.Open;
  CrearConjunto(cdConf, 'nuc_configuracionfirmante', providername, ccCatalog);
  CargarDatosFiltrados(cdConf, 'idconfiguracionfirmante', [-9]);
  cdConf.Open;

end;

end.
