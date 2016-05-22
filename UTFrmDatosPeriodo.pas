unit UTFrmDatosPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, StdCtrls, DBCtrls,
  pngimage, Buttons, Mask, JvExMask, JvToolEdit, JvDBControls, UIntelidialog,
  DBClient;

type
  TFrmDatosPeriodo = class(TFrmDatosCatalogo)
    DateFechaInicio: TJvDBDateEdit;
    EditNombre: TEdit;
    EditApellidos: TEdit;
    BtnFindFirmante: TBitBtn;
    Image3: TImage;
    DBEditIdfirmante: TDBEdit;
    Label5: TLabel;
    DateFechaFin: TJvDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsFirmantes: TDataSource;
    cdFirmantes: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnFindFirmanteClick(Sender: TObject);
    procedure DBEditIdfirmanteChange(Sender: TObject);
    procedure EditNombreKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosPeriodo: TFrmDatosPeriodo;

implementation

uses ClientModuleUnit1,xDatabase, UTFrmFirmantes;
{$R *.dfm}

procedure TFrmDatosPeriodo.BtnAddNewClick(Sender: TObject);
begin
  if length(dbeditIdFirmante.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un firmante.','', mtInformation, [mbOk], 0);
    editnombre.SetFocus;
    exit;
  end;
  inherited;
  EditNombre.Text := '';
  EditApellidos.Text := '';
  DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DsDatos.DataSet.FieldByName('fechainicio').AsDateTime := Now;
  DsDatos.DataSet.FieldByName('fechafin').AsDateTime := Now + 1;
end;

procedure TFrmDatosPeriodo.BtnFindFirmanteClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmFirmantes;
begin
  Try
    tForm := TFrmFirmantes.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idfirmante').AsString := registro.Valor['idfirmante'];
      Editnombre.Text := registro.Valor['nombre'];
      EditApellidos.Text := registro.Valor['apellidos'];
      DateFechaInicio.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un firmante, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosPeriodo.BtnRecClick(Sender: TObject);
begin
  if length(dbeditIdFirmante.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un firmante.','', mtInformation, [mbOk], 0);
    editnombre.SetFocus;
    exit;
  end;
{  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;  }
  inherited;
end;

procedure TFrmDatosPeriodo.DBEditIdfirmanteChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdfirmante.Text)) > 0 then
  begin
    if cdFirmantes.State <> dsBrowse then
    begin
      CrearConjunto(cdFirmantes, 'nuc_firmante', providername, ccCatalog);
      CargarDatosFiltrados(cdFirmantes, 'idfirmante', [-9]);
      cdFirmantes.Open;
    end;
    CargarDatosFiltrados(cdFirmantes, 'idfirmante', [dsDatos.DataSet.FieldByName('idfirmante').AsInteger]);
    cdFirmantes.refresh;
    editNombre.Text := cdFirmantes.FieldByName('nombre').AsString;
    editApellidos.Text := cdFirmantes.FieldByName('apellidos').AsString;
  end;
end;

procedure TFrmDatosPeriodo.EditNombreKeyPress(Sender: TObject; var Key: Char);
var
  providername: String;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdFirmantes.State <> dsBrowse then
    begin
      CrearConjunto(cdFirmantes, 'nuc_firmante', providername, ccCatalog);
      CargarDatosFiltrados(cdFirmantes, 'idfirmante', [-9]);
      cdFirmantes.Open;
    end;
    CargarDatosFiltrados(cdFirmantes, 'nombre', [tEdit(sender).Text]);
    cdFirmantes.refresh;
    if cdFirmantes.RecordCount = 1 then
    begin
      editNombre.Text := cdFirmantes.FieldByName('nombre').AsString;
      editApellidos.Text := cdFirmantes.FieldByName('apellidos').AsString;
      dsDatos.DataSet.FieldByName('idfirmante').AsInteger := cdFirmantes.FieldByName('idfirmante').AsInteger;
    end
    else
      if InteliDialog.ShowModal('El nombre de firmante ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindFirmante.Click;
  end;
end;

procedure TFrmDatosPeriodo.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
  begin
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
    DsDatos.DataSet.FieldByName('fechainicio').AsDateTime := Now;
    DsDatos.DataSet.FieldByName('fechafin').AsDateTime := Now + 1;
  end;
  EditNombre.SetFocus;
end;

end.
