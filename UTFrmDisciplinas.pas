unit UTFrmDisciplinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, UTFrmDatosDisciplinas, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, tmsAdvGridExcel, Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, JvExControls, JvLabel, pngimage, AdvShapeButton, AdvEdit,
  JvMemoryDataset, ComCtrls, Spin, AdvProgressBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxButtons, cxControls, cxContainer, cxEdit, cxGroupBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmDisciplinas = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    FrxDisciplinas: TfrxDBDataset;
    frxReporteDisciplinas: TfrxReport;
    NxDBTextColumn4: TNxDBTextColumn;
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
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
  FrmDisciplinas: TFrmDisciplinas;

implementation

Uses ClientModuleUnit1,Unit2, UInteliDialog;
{$R *.dfm}

procedure TFrmDisciplinas.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Disciplinas.fr3',FrxReporteDisciplinas);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmDisciplinas.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmDisciplinas.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosDisciplinas.Create(Self);
end;

procedure TFrmDisciplinas.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmDisciplinas.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'AREAS';
  inherited;
end;

procedure TFrmDisciplinas.FormShow(Sender: TObject);
begin
  Try
    inherited;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmDisciplinas.inicializar;
begin
  keyField := 'iddisciplina';
  entityName := 'nuc_disciplina';
  codeField := 'codigodisciplina';
end;

procedure TFrmDisciplinas.Filtrar;
var
  FCodigo, FTitulo: String;
begin
  FCodigo := '-1';
  FTitulo := '-1';
  if (Length(Trim(edtFCodigo.Text)) > 0) then
    FCodigo := EdtFCodigo.Text;
  if (Length(Trim(edtFtitulo.Text)) > 0) then
    FTitulo := edtFtitulo.Text;
  CargarDatosFiltrados(cdDatos, 'codigodisciplina, titulodisciplina, activo', [FCodigo + '%',FTitulo + '%','si']);
  CdDatos.Refresh;
end;
end.
