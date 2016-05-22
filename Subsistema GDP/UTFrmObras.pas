unit UTFrmObras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, AdvEdit, NxColumns, NxDBColumns, UTFrmCatalogo,
  JvMemoryDataset, DB, DBClient, Menus, ComCtrls, StdCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, AdvShapeButton, Buttons,
  PngSpeedButton, JvExControls, JvLabel, ExtCtrls, Spin, AdvProgressBar;

type
  TFrmObras = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBMemoColumn;
    NxDBTextColumn4: TNxDBMemoColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    { Private declarations }
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    { Public declarations }

  end;

var
  FrmObras: TFrmObras;

implementation
 uses UTFrmDatosObras, ClientModuleUnit1;
{$R *.dfm}

procedure TFrmObras.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

function TFrmObras.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosObras.Create(Self);

end;

procedure TFrmObras.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigoobra', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFtitulo.Text) <> '' then
    Parametros.Add('descripcion', Trim(edtFtitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;

end;

procedure TFrmObras.FormShow(Sender: TObject);
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

procedure TFrmObras.inicializar;
begin
  keyField := 'idobra';
  entityName := 'nuc_obras';
  codeField := 'codigoobra';
end;

end.
