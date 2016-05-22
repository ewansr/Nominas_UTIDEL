unit UTFrmDatosFirmante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, StdCtrls, DBCtrls,
  Mask, pngimage, Buttons, UinteliDialog, DBClient;

type
  TFrmDatosFirmante = class(TFrmDatosCatalogo)
    BtnFindCargo: TBitBtn;
    Image3: TImage;
    DBEditIdCargo: TDBEdit;
    EditCodigoCargo: TEdit;
    EditTituloCargo: TEdit;
    Label5: TLabel;
    DBEditNombre: TDBEdit;
    DBEditApellidos: TDBEdit;
    DBMemoComentarios: TDBMemo;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image2: TImage;
    Image1: TImage;
    cdCargos: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnFindCargoClick(Sender: TObject);
    procedure EditCodigoCargoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditIdCargoChange(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosFirmante: TFrmDatosFirmante;
  providername: String;
implementation

uses ClientModuleUnit1, xDatabase, UTFrmCargos;

{$R *.dfm}

procedure TFrmDatosFirmante.BtnAddNewClick(Sender: TObject);
begin
  if length(dbeditIdCargo.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un cargo.','', mtInformation, [mbOk], 0);
    editcodigocargo.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditnombre, 'Nombre') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditApellidos, 'Apellidos') = False then
    exit;
  inherited;
  EditCodigoCargo.Text := '';
  EditTituloCargo.Text := '';
end;

procedure TFrmDatosFirmante.BtnFindCargoClick(Sender: TObject);
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
      EditCodigoCargo.Text := registro.Valor['codigocargo'];
      EditTituloCargo.Text := registro.Valor['titulocargo'];
      DBEditNombre.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosFirmante.BtnRecClick(Sender: TObject);
begin
  if length(dbeditIdCargo.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un cargo.','', mtInformation, [mbOk], 0);
    editcodigocargo.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditNombre, 'Nombre') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditApellidos, 'Apellidos') = False then
    exit;
  inherited;
end;

procedure TFrmDatosFirmante.DBEditIdCargoChange(Sender: TObject);
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

procedure TFrmDatosFirmante.EditCodigoCargoKeyPress(Sender: TObject;
  var Key: Char);
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
      DBEditNombre.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de cargo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindCargo.Click;
  end;
end;

procedure TFrmDatosFirmante.FormShow(Sender: TObject);
begin
  inherited;
  EditCodigoCargo.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
