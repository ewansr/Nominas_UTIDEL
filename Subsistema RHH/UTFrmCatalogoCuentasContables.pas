unit UTFrmCatalogoCuentasContables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  AdvEdit, UinteliDialog, UTFrmDatosCuentasContables, UTFrmDatosCatalogo,
  NxColumns, NxDBColumns;

type
  TFrmCatalogoCuentasContables = class(TFrmCatalogo)
    edtcodigo: TAdvEdit;
    edtctabanco: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtctabancoKeyPress(Sender: TObject; var Key: Char);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoCuentasContables: TFrmCatalogoCuentasContables;

implementation
   Uses ClientModuleUnit1,Unit2;
{$R *.dfm}

procedure TFrmCatalogoCuentasContables.FormShow(Sender: TObject);
begin
  Try
  inherited;
    inicializar;
    abrir;
  Except
    ;
  End;

end;

function TFrmCatalogoCuentasContables.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosCuentasContables.Create(Self);
end;


procedure TFrmCatalogoCuentasContables.inicializar;
begin
  keyField := 'idctabancos';
  entityName := 'con_ctasbanco';
  codeField := 'codigo';
end;

procedure TFrmCatalogoCuentasContables.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmCatalogoCuentasContables.edtcodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmCatalogoCuentasContables.edtctabancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmCatalogoCuentasContables.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtcodigo.Text) <> '' then
    Parametros.Add('codigo', Trim(edtcodigo.Text) + '%');

  if Trim(edtctabanco.Text) <> '' then
    Parametros.Add('ctabanco', Trim(edtctabanco.Text) + '%');


  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

end.
