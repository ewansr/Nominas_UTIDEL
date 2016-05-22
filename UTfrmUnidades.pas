unit UTfrmUnidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, UTFrmDatosCatalogo, UtfrmDatosUnidades, NxDBColumns, NxColumns,
  frxClass, frxDBSet, AdvShapeButton, JvExControls, JvLabel, pngimage, UinteliDialog,
  AdvEdit, JvMemoryDataset, ComCtrls, Spin, AdvProgressBar;

type
  TFrmUnidades = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    frxReporteUnidades: TfrxReport;
    FrxUnidades: TfrxDBDataset;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    procedure BtnSearchClick(Sender: TObject);
    procedure Filtrar;
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmUnidades: TFrmUnidades;

implementation

uses ClientModuleUnit1;

{$R *.dfm}
{$R InteligentSound.res}

procedure TFrmUnidades.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Unidades.fr3',FrxReporteUnidades);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmUnidades.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmUnidades.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosUnidades.Create(Self);
end;

procedure TFrmUnidades.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmUnidades.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigounidad', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulounidad', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmUnidades.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'UNIDADES';
  inherited;
end;

procedure TFrmUnidades.FormShow(Sender: TObject);
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

procedure TFrmUnidades.inicializar;
begin
  keyField := 'idunidad';
  entityName := 'nuc_unidad';
  codeField := 'codigounidad';
end;

end.
