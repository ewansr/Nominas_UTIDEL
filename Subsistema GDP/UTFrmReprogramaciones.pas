unit UTFrmReprogramaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,UTFrmDatosCatalogo,
  AdvEdit, Spin, AdvProgressBar;

type
  TFrmReprogramaciones = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReprogramaciones: TFrmReprogramaciones;

implementation
  uses UTFrmDatosReprogramaciones, ClientModuleUnit1;
{$R *.dfm}

procedure TFrmReprogramaciones.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

function TFrmReprogramaciones.createPopUp: TFrmDatosCatalogo;
begin
   result := TFrmDatosReprogramaciones.Create(Self);
end;

procedure TFrmReprogramaciones.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigoconvenio', Trim(edtFCodigo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmReprogramaciones.FormShow(Sender: TObject);
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
 procedure TFrmReprogramaciones.inicializar;
begin
  keyField := 'idconvenio';
  entityName := 'nuc_reprogramaciones';
  codeField := 'codigoconvenio';
end;

end.
