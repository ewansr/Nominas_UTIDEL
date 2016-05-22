unit UTFrmManttoPrev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  NxColumns, NxDBColumns, UTFrmDatosCatalogo, AdvEdit;

type
  TFrmManttoPrev = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtFtituloKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FrmManttoPrev: TFrmManttoPrev;

implementation

uses
  UTFrmDatosManttoPrev, ClientModuleUnit1;

{$R *.dfm}

procedure TFrmManttoPrev.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

function TFrmManttoPrev.createpopup:  TFrmDatosCatalogo;
begin
  result := TFrmDatosManttoPrev.Create(nil);
end;

procedure TFrmManttoPrev.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Filtrar;
end;

procedure TFrmManttoPrev.edtFtituloKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Filtrar;
end;

procedure TFrmManttoPrev.FormShow(Sender: TObject);
begin
  Try
    inherited;

    EntityName := 'alm_manttoprev';
    KeyField := 'idmanttoprev';
    CodeField := 'codigomanttoprev';
    Abrir;
  Except
    ;
  End;
end;

procedure TFrmManttoPrev.Filtrar;
Var
  params: TParamFilter;
begin
  params := TParamFilter.Create;
  params.Add('activo', 'si');
  if TRIM(edtFCodigo.Text) <> '' then
    params.Add('codigomanttoprev', TRIM(edtFCodigo.Text));
  if TRIM(edtFTitulo.Text) <> '' then
    params.Add('titulomanttoprev', TRIM(edtFTitulo.Text));
  if Params.Count > 0 then
  begin
    CargarDatosFiltrados(cdDatos, params);
    cdDatos.Refresh;
  end;
end;

end.
