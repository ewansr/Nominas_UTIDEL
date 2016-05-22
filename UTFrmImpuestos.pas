unit UTFrmImpuestos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UTFrmDatosCatalogo, AdvEdit, NxDBColumns, NxColumns;

type
  TFrmImpuesto = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Inicializar;
    procedure Filtrar;
    function createPopUp: TFrmDatosCatalogo; Override;
  public
    { Public declarations }
  end;

var
  FrmImpuesto: TFrmImpuesto;

implementation

uses
  UInteliDialog, ClientModuleUnit1, UTFrmDatosImpuesto;

{$R *.dfm}

procedure TFrmImpuesto.Inicializar;
begin
  keyField := 'idimpuesto';
  entityName := 'nuc_impuesto';
  codeField := 'codigoimpuesto';
end;


procedure TFrmImpuesto.Filtrar;
Var
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigocargo', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulocargo', '%' + Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros);
  cdDatos.Refresh;
  Parametros.Free;
end;


procedure TFrmImpuesto.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'IMPUESTOS';
  inherited;
end;

procedure TFrmImpuesto.FormShow(Sender: TObject);
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

procedure TFrmImpuesto.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

function TFrmImpuesto.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosImpuesto.create(nil);
end;

end.
