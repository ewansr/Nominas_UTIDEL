unit UTFrmTiposReprogamaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,UTFrmDatosCatalogo,
  AdvEdit;

type
  TFrmTiposReprogramaciones = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    procedure FormShow(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo;
    procedure Filtrar;
    procedure inicializar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTiposReprogramaciones: TFrmTiposReprogramaciones;

implementation
 uses ClientModuleUnit1, UTFrmDatosTiposReprogramaciones;
{$R *.dfm}

function TFrmTiposReprogramaciones.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmTiposReprogramaciones.Create(Self);
end;

procedure TFrmTiposReprogramaciones.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigotipoconvenio', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulotipoconvenio', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmTiposReprogramaciones.FormShow(Sender: TObject);
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

procedure TFrmTiposReprogramaciones.inicializar;
begin
  keyField := 'idtipoconvenio';
  entityName := 'nuc_tiposdeconvenio';
  codeField := 'codigotipoconvenio';
end;

end.
