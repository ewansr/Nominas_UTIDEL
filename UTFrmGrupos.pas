unit UTFrmGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls,  UTFrmDatosGrupos, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExControls,
  JvLabel, pngimage, AdvShapeButton, UinteliDialog, AdvEdit, JvMemoryDataset,
  ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  Spin, AdvProgressBar, cxButtons, cxGroupBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmGrupos = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    frxReporteGrupos: TfrxReport;
    FrxGrupos: TfrxDBDataset;
    NxDBTextColumn4: TNxDBTextColumn;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    edtFArea: TAdvEdit;
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure Filtrar;
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    { Private declarations }
  public
    { Public declarations }
    ModoSeleccion: Boolean;
  end;

var
  FrmGrupos: TFrmGrupos;

implementation

uses ClientModuleUnit1, unit2;

{$R *.dfm}

procedure TFrmGrupos.BtnPrintClick(Sender: TObject);
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

  ClientModule1.ImprimeReporte('Grupos.fr3',FrxReporteGrupos);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;

end;

procedure TFrmGrupos.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmGrupos.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosGrupos.Create(Self);
end;

procedure TFrmGrupos.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmGrupos.Filtrar;
var
  FArea, FCodigo, FTitulo: String;
begin
  FArea := '-1';
  FCodigo := '-1';
  FTitulo := '-1';
  if (Length(Trim(edtFArea.Text)) > 0) then
    FArea := EdtFArea.Text;
  if (Length(Trim(edtFCodigo.Text)) > 0) then
    FCodigo := EdtFCodigo.Text;
  if (Length(Trim(edtFtitulo.Text)) > 0) then
    FTitulo := edtFtitulo.Text;
  CargarDatosFiltrados(cdDatos, 'titulodisciplina ,codigogrupo, titulogrupo, activo', [FArea+ '%',FCodigo + '%',FTitulo + '%','si']);
  CdDatos.Refresh;
end;

procedure TFrmGrupos.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'GRUPOS';
  inherited;
end;

procedure TFrmGrupos.FormShow(Sender: TObject);
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

procedure TFrmGrupos.inicializar;
begin
  keyField := 'idgrupo';
  entityName := 'alm_grupo';
  codeField := 'codigogrupo';
end;

end.

