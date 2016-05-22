unit UTFrmProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, frxClass, frxDBSet, UTFrmDatosProveedores, UTFrmDatosCatalogo,
  NxDBColumns, NxColumns, AdvShapeButton, JvExControls, JvLabel, pngimage, UinteliDialog,
  AdvEdit, JvComponentBase, JvEnterTab, JvMemoryDataset, ComCtrls, Spin,
  AdvProgressBar;

type
  TFrmProveedores = class(TFrmCatalogo)
    FrxProveedores: TfrxDBDataset;
    frxReporteProveedores: TfrxReport;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBTextColumn11: TNxDBTextColumn;
    edtFCodigo: TAdvEdit;
    edtFNombre: TAdvEdit;
    NxDBRateColumn1: TNxDBRateColumn;
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure BtnSelectClick(Sender: TObject);
    procedure Filtrar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmProveedores: TFrmProveedores;

implementation

uses ClientModuleUnit1,Unit2;

{$R *.dfm}

procedure TFrmProveedores.BtnSelectClick(Sender: TObject);
begin
  inherited;
end;

procedure TFrmProveedores.BtnSearchClick(Sender: TObject);
begin
 Filtrar;
end;

procedure TFrmProveedores.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

function TFrmProveedores.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosProveedores.Create(Self);
end;

procedure TFrmProveedores.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'PROVEEDORES';
  inherited;
end;

procedure TFrmProveedores.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmProveedores.inicializar;
begin
  keyField := 'idproveedor';
  entityName := 'alm_proveedor';
  codeField := 'codigoproveedor';
  Reporte := 'Proveedores.fr3';
  CompReporte := frxReporteProveedores;
  CompDatasetReporte := FrxProveedores;
end;

procedure TFrmProveedores.Filtrar;
var
  FCodigo, FNombre: String;
begin
  FCodigo := '-1';
  FNombre := '-1';
  if (Length(Trim(edtFCodigo.Text)) > 0) then
    FCodigo := EdtFCodigo.Text;
  if (Length(Trim(edtFNombre.Text)) > 0)  then
    FNombre := edtFNombre.Text;
  CargarDatosFiltrados(cdDatos, 'codigoproveedor, nombre, activo', [FCodigo + '%',FNombre + '%','si']);
  CdDatos.Refresh;
end;
end.
