unit UTFrmTiposestimacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,

  UTFrmDatosCatalogo, AdvEdit, NxColumns, NxDBColumns;

type
  TFrmTiposestimacion = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtFtituloKeyPress(Sender: TObject; var Key: Char);
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
  FrmTiposestimacion: TFrmTiposestimacion;

implementation

uses UTFrmDatosTiposestimacion, ClientModuleUnit1;
{$R *.dfm}

procedure TFrmTiposestimacion.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

function TFrmTiposestimacion.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosTiposestimacion.Create(Self);
end;

procedure TFrmTiposestimacion.edtFCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    Filtrar;
end;

procedure TFrmTiposestimacion.edtFtituloKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    Filtrar;
end;

procedure TFrmTiposestimacion.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigotipoestimacion', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFtitulo.Text) <> '' then
    Parametros.Add('titulotipoestimacion', Trim(edtFtitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmTiposestimacion.FormShow(Sender: TObject);
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

procedure TFrmTiposestimacion.inicializar;
begin
  keyField := 'idtiposestimacion';
  entityName := 'nuc_tiposestimacion';
  codeField := 'codigotipoestimacion';
end;

end.
