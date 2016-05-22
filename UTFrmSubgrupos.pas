unit UTFrmSubgrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls,  UTFrmDatosSubgrupos, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, AdvShapeButton, JvExControls, JvLabel, pngimage, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, UinteliDialog, AdvEdit,
  JvMemoryDataset, ComCtrls, frxExportPDF, Spin, AdvProgressBar;

type
  TFrmSubgrupos = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    frxReporteSubgrupos: TfrxReport;
    FrxSubgrupos: TfrxDBDataset;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    edtFArea: TAdvEdit;
    edtFGrupo: TAdvEdit;
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
    ModoSeleccion: Boolean;
  end;

var
  FrmSubgrupos: TFrmSubgrupos;

implementation

uses ClientModuleUnit1,Unit2;

{$R *.dfm}

procedure TFrmSubgrupos.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Subgrupos.fr3',FrxReporteSubgrupos);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;

end;

procedure TFrmSubgrupos.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmSubgrupos.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosSubgrupos.Create(Self);
end;

procedure TFrmSubgrupos.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmSubgrupos.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'SUBGRUPOS';
  inherited;
end;

procedure TFrmSubgrupos.FormShow(Sender: TObject);
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

procedure TFrmSubgrupos.inicializar;
begin
  keyField := 'idsubgrupo';
  entityName := 'alm_subgrupo';
  codeField := 'codigosubgrupo';
end;

procedure TFrmSubgrupos.Filtrar;
var
  FArea, FGrupo, FCodigo, FTitulo: String;
begin
  FArea := '-1';
  FGrupo := '-1';
  FCodigo := '-1';
  FTitulo := '-1';
  if (Length(Trim(edtFArea.Text)) > 0) then
    FArea := edtFArea.Text;
  if (Length(Trim(edtFGrupo.Text)) > 0) then
    FGrupo := edtFGrupo.Text;
  if (Length(Trim(edtFCodigo.Text)) > 0) then
    FCodigo := EdtFCodigo.Text;
  if (Length(Trim(edtFtitulo.Text)) > 0)  then
    FTitulo := EdtFtitulo.Text;
  CargarDatosFiltrados(cdDatos, ' titulodisciplina, titulogrupo, codigosubgrupo, titulosubgrupo, activo', [FArea+ '%',FGrupo+ '%',FCodigo + '%',FTitulo + '%','si']);
  CdDatos.Refresh;
end;
end.

