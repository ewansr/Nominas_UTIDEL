unit UTFrmCuentasCorreo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, Spin,
  AdvProgressBar, ComCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls, AdvEdit, UTFrmDatosCatalogo, UTFrmDatosCuentasCorreo,
  NxColumns, NxDBColumns;

type
  TFrmCuentasCorreo = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    procedure inicializar;
    procedure Filtrar;
    function createPopUp: TFrmDatosCatalogo; Override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCuentasCorreo: TFrmCuentasCorreo;

implementation

Uses ClientModuleUnit1,Unit2;

{$R *.dfm}

procedure TFrmCuentasCorreo.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'SERVIDORCORREO';
  inherited;
end;

procedure TFrmCuentasCorreo.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmCuentasCorreo.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosCuentasCorreo.Create(Self);
end;

procedure TFrmCuentasCorreo.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmCuentasCorreo.Filtrar;
Var
  params: TParamFilter;
begin
  params := TParamFilter.Create;
  if TRIM(edtFCodigo.Text) <> '' then
    params.Add('codigoservidorcorreo', TRIM(edtFCodigo.Text));
  if TRIM(edtFTitulo.Text) <> '' then
    params.Add('tituloservidorcorreo', TRIM(edtFTitulo.Text));
  if Params.Count > 0 then
  begin
    CargarDatosFiltrados(cdDatos, params);
    cdDatos.Refresh;
  end;
end;

procedure TFrmCuentasCorreo.FormShow(Sender: TObject);
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

procedure TFrmCuentasCorreo.inicializar;
begin
  keyField := 'idservidorcorreo';
  entityName := 'nuc_servidorcorreo';
  codeField := 'codigoservidorcorreo';
end;
end.
