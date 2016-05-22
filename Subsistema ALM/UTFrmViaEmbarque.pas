unit UTFrmViaEmbarque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  AdvEdit, UTFrmDatosCatalogo, NxColumns, NxDBColumns, frxClass, frxExportPDF,
  Spin, AdvProgressBar;

type
  TFrmViaEmbarque = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
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
  FrmViaEmbarque: TFrmViaEmbarque;

implementation

uses
  ClientModuleUnit1, UTFrmDatosViaEmbarque;
{$R *.dfm}


procedure TFrmViaEmbarque.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

function TFrmViaEmbarque.createPopUp: TFrmDatosCatalogo;
begin
  Result := TFrmDatosViaEmbarque.Create(self);
end;

procedure TFrmViaEmbarque.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Filtrar;
end;

procedure TFrmViaEmbarque.Filtrar;
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

procedure TFrmViaEmbarque.Inicializar;
begin
  keyField := 'idviaembarque';
  entityName := 'alm_viaembarque';
  codeField := 'codigoviaembarque';
end;

procedure TFrmViaEmbarque.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'VIASEMBARQUE';
  inherited;
end;

procedure TFrmViaEmbarque.FormShow(Sender: TObject);
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

end.
