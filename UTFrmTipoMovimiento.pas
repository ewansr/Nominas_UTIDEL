unit UTFrmTipoMovimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UTFrmDatosCatalogo, UTFrmDatosTipoMovimiento, UInteliDialog, AdvEdit,
  NxColumns, NxDBColumns, frxClass, frxExportPDF;

type
  TFrmTipoMovimiento = class(TFrmCatalogo)
    edtFCodigo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoMovimiento: TFrmTipoMovimiento;

implementation

Uses ClientModuleUnit1,Unit2;
{$R *.dfm}

{ TFrmTipoMovimiento }

procedure TFrmTipoMovimiento.BtnPrintClick(Sender: TObject);
begin
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

//    ClientModule1.ImprimeReporte('Almacenes.fr3',FrxReporteAlmacenes);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmTipoMovimiento.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmTipoMovimiento.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;
  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigotipomovimiento', Trim(edtFCodigo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmTipoMovimiento.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TIPOSMOVIMIENTOS';
  inherited;
end;

procedure TFrmTipoMovimiento.FormShow(Sender: TObject);
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

function TFrmTipoMovimiento.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosTipoMovimiento.Create(Self);
end;

procedure TFrmTipoMovimiento.inicializar;
begin
  keyField := 'idtipomovimiento';
  entityName := 'alm_tipomovimiento';
  codeField := 'codigotipomovimiento';
end;

end.
