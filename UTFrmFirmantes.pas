unit UTFrmFirmantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, AdvShapeButton, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, UinteliDialog, JvExControls,
  JvLabel, pngimage, ExtCtrls, Buttons, UTFrmDatosFirmante, UTFrmDatosCatalogo, PngSpeedButton,
  NxDBColumns, NxColumns, frxClass, frxDBSet, AdvEdit, JvMemoryDataset, ComCtrls;

type
  TFrmFirmantes = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    frxReporteFirmantes: TfrxReport;
    FrxFirmantes: TfrxDBDataset;
    edtFNombre: TAdvEdit;
    edtFCargo: TAdvEdit;
    edtFApellidos: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCargoKeyPress(Sender: TObject; var Key: Char);
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
  FrmFirmantes: TFrmFirmantes;

implementation

uses ClientModuleUnit1, unit2;

{$R *.dfm}

{ TFrmFirmantes }

procedure TFrmFirmantes.BtnPrintClick(Sender: TObject);
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

  ClientModule1.ImprimeReporte('Firmantes.fr3',FrxReporteFirmantes);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmFirmantes.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmFirmantes.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosFirmante.Create(Self);
end;

procedure TFrmFirmantes.edtFCargoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmFirmantes.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'FIRMANTES';
  inherited;
end;

procedure TFrmFirmantes.FormShow(Sender: TObject);
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

procedure TFrmFirmantes.inicializar;
begin
  keyField := 'idfirmante';
  entityName := 'nuc_firmante';
  codeField := 'nombre';
end;

procedure TFrmFirmantes.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCargo.Text) <> '' then
    Parametros.Add('titulocargo', Trim(edtFCargo.Text) + '%');

  if Trim(edtFNombre.Text) <> '' then
    Parametros.Add('nombre', Trim(edtFNombre.Text) + '%');

  if Trim(edtFApellidos.Text) <> '' then
    Parametros.Add('apellidos', Trim(edtFApellidos.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

end.
