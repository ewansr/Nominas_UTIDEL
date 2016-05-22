unit UTFrmGrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  utfrmdatoscatalogo,UTFrmDatosGrado, AdvEdit, NxColumns, NxDBColumns,UInteliDialog,
  Spin, AdvProgressBar;

type
  TFrmGrado = class(TFrmCatalogo)
    edtFGrado: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFGradoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPrintClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    ModoSeleccion: Boolean;
  end;

var
  FrmGrado: TFrmGrado;

implementation

uses ClientModuleUnit1,Unit2;
{$R *.dfm}

{ TFrmGrado }

procedure TFrmGrado.BtnPrintClick(Sender: TObject);
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

    {ClientModule1.ImprimeReporte('Ciudades.fr3',FrxReporteCiudades);  }
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmGrado.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmGrado.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosGrado.Create(Self);
end;

procedure TFrmGrado.edtFGradoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    filtrar;
end;

procedure TFrmGrado.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  if Trim(edtFGrado.Text) <> '' then
    Parametros.Add('grado', '%' +Trim(edtFGrado.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmGrado.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'GRADO';
  inherited;
end;

procedure TFrmGrado.FormShow(Sender: TObject);
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

procedure TFrmGrado.inicializar;
begin
  keyField := 'idgrado';
  entityName := 'rhu_grado';
  codeField := 'grado';
end;

end.
