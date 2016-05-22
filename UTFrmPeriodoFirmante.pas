unit UTFrmPeriodoFirmante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, AdvShapeButton, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, Buttons, PngSpeedButton, UTFrmDatosPeriodo, UTFrmDatosCatalogo,
  NxDBColumns, NxColumns, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, frxClass, frxDBSet, AdvEdit,
  JvMemoryDataset, ComCtrls, frxExportPDF, Spin, AdvProgressBar;

type
  TFrmPeriodoFirmante = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    FrxPeriodos: TfrxDBDataset;
    frxReportePeriodos: TfrxReport;
    edtFCargo: TAdvEdit;
    edtFNombre: TAdvEdit;
    edtFApellidos: TAdvEdit;
    grpFecha: TGroupBox;
    FechaI: TJvDatePickerEdit;
    chkFecha: TCheckBox;
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
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmPeriodoFirmante: TFrmPeriodoFirmante;

implementation

Uses ClientModuleUnit1,Unit2, UInteliDialog;
{$R *.dfm}

procedure TFrmPeriodoFirmante.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Periodos.fr3',FrxReportePeriodos);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmPeriodoFirmante.BtnSearchClick(Sender: TObject);
begin
  filtrar;
end;

function TFrmPeriodoFirmante.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosPeriodo.Create(Self);
end;

procedure TFrmPeriodoFirmante.Filtrar;
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

  if chkFecha.Checked then
  begin
    Parametros.Add('fechainicio',ClientModule1.DatetoStrSql(FechaI.Date));
  end;

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmPeriodoFirmante.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'PERIODO';
  inherited;
end;

procedure TFrmPeriodoFirmante.FormShow(Sender: TObject);
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

procedure TFrmPeriodoFirmante.inicializar;
begin
  keyField := 'idperiodofirmante';
  entityName := 'nuc_periodofirmante';
  codeField := 'idperiodofirmante';
end;

end.
