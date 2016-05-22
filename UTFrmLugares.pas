unit UTFrmLugares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, UTFrmDatosLugares, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, JvExControls, JvLabel, pngimage, ComObj, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvComponentBase, JvDBGridExport, AdvShapeButton, UinteliDialog,
  JvMemoryDataset, ComCtrls;

type
  TFrmLugares = class(TFrmCatalogo)
    EditFCodigo: TEdit;
    EditFTitulo: TEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    FrxLugares: TfrxDBDataset;
    frxReporteLugares: TfrxReport;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBMemoColumn;
    procedure FormShow(Sender: TObject);
    procedure EditFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EditFTituloKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSearchClick(Sender: TObject);
    procedure EditFCodigoEnter(Sender: TObject);
    procedure EditFCodigoExit(Sender: TObject);
    procedure EditFTituloEnter(Sender: TObject);
    procedure EditFTituloExit(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
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
  FrmLugares: TFrmLugares;

implementation

uses ClientModuleUnit1, Unit2;

{$R *.dfm}

procedure TFrmLugares.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Lugares.fr3',FrxReporteLugares);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;

end;

procedure TFrmLugares.BtnSearchClick(Sender: TObject);
begin
 Filtrar
end;

function TFrmLugares.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosLugares.Create(Self);
end;

procedure TFrmLugares.EditFCodigoEnter(Sender: TObject);
begin
  if EditFCodigo.Text = 'Código' then
    EditFCodigo.Text := '';
end;

procedure TFrmLugares.EditFCodigoExit(Sender: TObject);
begin
  if   (Length(Trim(EditFCodigo.Text)) = 0) then
      EditFCodigo.Text := 'Código';
end;

procedure TFrmLugares.EditFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmLugares.EditFTituloEnter(Sender: TObject);
begin
  if EditFTitulo.Text = 'Título' then
    EditFTitulo.Text := '';
end;

procedure TFrmLugares.EditFTituloExit(Sender: TObject);
begin
  if   (Length(Trim(EditFTitulo.Text)) = 0) then
      EditFTitulo.Text := 'Título';
end;

procedure TFrmLugares.EditFTituloKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmLugares.FormShow(Sender: TObject);
begin
  inherited;
  if ModoSeleccion = True then
    BtnSelect.Visible := True;
  inicializar;
  abrir;
end;

procedure TFrmLugares.inicializar;
begin
  keyField := 'idlugar';
  entityName := 'alm_lugar';
  codeField := 'codigolugar';
end;

procedure TFrmLugares.Filtrar;
begin
  CargarDatosFiltrados(cdDatos, 'codigolugar, titulolugar, activo', ['' + '%','' + '%','si']);
  if (Length(Trim(EditFCodigo.Text)) > 0) and (EditFCodigo.Text <> 'Código')
  and (Length(Trim(EditFTitulo.Text)) > 0) and (EditFTitulo.Text <> 'Título') then
  Begin
    CargarDatosFiltrados(cdDatos, 'codigolugar, titulolugar, activo', [EditFCodigo.text + '%',EditFTitulo.text + '%','si']);
  End
  else
  begin
    if (Length(Trim(EditFCodigo.Text)) > 0) and (EditFCodigo.Text <> 'Código') then
      CargarDatosFiltrados(cdDatos, 'codigolugar, activo', [EditFCodigo.text + '%','si']);
    if (Length(Trim(EditFTitulo.Text)) > 0) and (EditFTitulo.Text <> 'Título') then
      CargarDatosFiltrados(cdDatos, 'titulolugar, activo', [EditFTitulo.text + '%','si']);
  end;
  cdDatos.Refresh;
end;
end.
