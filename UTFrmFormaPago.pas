unit UTFrmFormaPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UTFrmDatosCatalogo, NxDBColumns, NxColumns, AdvEdit;

type
  TFrmFormaPago = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    edtCodigoFiltro: TAdvEdit;
    edtTituloFiltro: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
    procedure inicializar;
  public
    { Public declarations }
  end;

var
  FrmFormaPago: TFrmFormaPago;

implementation

uses
  ClientModuleUnit1, UTFrmDatosFormaPago;

{$R *.dfm}

procedure TFrmFormaPago.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;
  if TRIM(edtCodigoFiltro.Text) <> '' then
    Parametros.Add('codigoformapago',TRIM(edtCodigoFiltro.Text)+'%');
  if TRIM(edtTituloFiltro.Text) <> '' then
    Parametros.Add('tituloformapago',TRIM(edtTituloFiltro.Text)+'%');
  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

function TFrmFormaPago.createPopUp: TFrmDatosCatalogo;
begin
  Result := TFrmDatosFormaPago.Create(Self);
end;

procedure TFrmFormaPago.Filtrar;
begin

end;

procedure TFrmFormaPago.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'FORMASPAGOS';
  inherited;
end;

procedure TFrmFormaPago.FormShow(Sender: TObject);
begin
  Try
    inherited;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmFormaPago.inicializar;
begin
  keyField := 'idformapago';
  entityName := 'alm_formapago';
  codeField := 'codigoformapago';
end;

end.
