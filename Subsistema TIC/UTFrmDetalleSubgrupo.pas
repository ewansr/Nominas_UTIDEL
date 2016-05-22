unit UTFrmDetalleSubgrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  AdvEdit, NxDBColumns, NxColumns, UTFrmDatosCatalogo, UTFrmDatosDetalleSubgrupo;

type
  TFrmDetalleSubgrupo = class(TFrmCatalogo)
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    procedure inicializar;
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDetalleSubgrupo: TFrmDetalleSubgrupo;

implementation
uses ClientModuleUnit1, unit2;
{$R *.dfm}


procedure TFrmDetalleSubgrupo.inicializar;
begin
  keyField := 'idetallesubgrupo';
  entityName := 'alm_detallesubgrupo';
  codeField := 'codigodetallesubgrupo';
end;

procedure TFrmDetalleSubgrupo.FormShow(Sender: TObject);
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


procedure TFrmDetalleSubgrupo.BtnSearchClick(Sender: TObject);
begin
  inherited;
Filtrar;
end;

procedure TFrmDetalleSubgrupo.Filtrar;
var
  FArea, FCodigo, FTitulo: String;
begin
  FCodigo := '-1';
  FTitulo := '-1';
  if (Length(Trim(edtFCodigo.Text)) > 0) then
    FCodigo := EdtFCodigo.Text;
  if (Length(Trim(edtFtitulo.Text)) > 0) then
    FTitulo := edtFtitulo.Text;
  CargarDatosFiltrados(cdDatos, 'codigogrupo, titulogrupo, activo', [FCodigo + '%',FTitulo + '%','si']);
  CdDatos.Refresh;
end;

function TFrmDetalleSubgrupo.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosDetalleSubgrupo.Create(Self);
end;

end.
