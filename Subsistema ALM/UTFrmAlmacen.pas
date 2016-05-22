unit UTFrmAlmacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, UTFrmDatosCatalogo, UTFrmDatosAlmacen, NxDBColumns, NxColumns,
  frxClass, frxDBSet, JvExControls, JvLabel, pngimage, JvComponentBase,UinteliDialog,
  JvDBGridExport, Grids, DBGrids, JvExDBGrids, JvDBGrid, AdvShapeButton, AdvEdit,
  JvMemoryDataset, ComCtrls, Spin, AdvProgressBar,URegistro;

type
  TFrmAlmacen = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    frxReporteAlmacenes: TfrxReport;
    Frxalmacenes: TfrxDBDataset;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmAlmacen: TFrmAlmacen;

implementation

Uses ClientModuleUnit1,Unit2;

{$R *.dfm}

procedure TFrmAlmacen.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmAlmacen.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosAlmacen.Create(Self);
end;

procedure TFrmAlmacen.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmAlmacen.Filtrar;
var
  FCodigo, FTitulo: String;
begin
  FCodigo := '-1';
  FTitulo := '-1';
  if (Length(Trim(edtFCodigo.Text)) > 0) then
    FCodigo := EdtFCodigo.Text;
  if (Length(Trim(edtFtitulo.Text)) > 0) then
    FTitulo := edtFtitulo.Text;
   CargarDatosFiltrados(cdDatos, 'codigoalmacen, tituloalmacen, activo', [FCodigo + '%',FTitulo + '%','si']);
   CdDatos.Refresh;
end;

procedure TFrmAlmacen.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'ALMACENES';
  inherited;
end;

procedure TFrmAlmacen.FormShow(Sender: TObject);
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

procedure TFrmAlmacen.inicializar;
begin
  keyField := 'idalmacen';
  entityName := 'alm_almacen';
  codeField := 'codigoalmacen';
  Reporte:= 'Almacenes.fr3';
  CompReporte := frxReporteAlmacenes;
  CompDatasetReporte := Frxalmacenes;
end;

end.
