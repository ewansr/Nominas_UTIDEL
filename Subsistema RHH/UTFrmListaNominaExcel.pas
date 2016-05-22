unit UTFrmListaNominaExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, dxBarBuiltInMenu, cxPC, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBClient, ExtCtrls, cxClasses, cxGridCustomView, cxGrid,
  dxBar, ClientModuleUnit1, cxGridLevel, cxCheckBox;

type
  TFrmListaNominasExcel = class(TForm)
    DxBManagerMain: TdxBarManager;
    CxGridNominas: TcxGridDBTableView;
    CxGridMain: TcxGrid;
    pnlBotones: TPanel;
    CdNominas: TClientDataSet;
    dsNominas: TDataSource;
    CxColumnAnio: TcxGridDBColumn;
    CxColumnTipoNomina: TcxGridDBColumn;
    CxColumnTituloNomina: TcxGridDBColumn;
    CdTipoNomina: TClientDataSet;
    CxGridMainDBTableView1: TcxGridDBTableView;
    CxColumnCxGridMainDBTableView1Column1: TcxGridDBColumn;
    CxGridMainDBTableView2: TcxGridDBTableView;
    CxGridMainDBTableView2Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    procedure CargarNominas(IdTipoNomina: Integer);
    procedure CargarTiposNomina;
    procedure AsignarCamposDataSet(Dataset: TClientDataSet);
    procedure CrearDataset(Name: String);
    procedure AgregarNivel(GridPadre: TcxGrid; Name, Titulo: String);
    procedure CrearViewGrid(GridPadre: TcxGrid; Name: String);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaNominasExcel: TFrmListaNominasExcel;

implementation

{$R *.dfm}

procedure TFrmListaNominasExcel.AgregarNivel(GridPadre: TcxGrid; Name, Titulo: String);
Var
  NivelGrid: TcxGridLevel;
begin
  NivelGrid := GridPadre.Levels.Add;
  NivelGrid.Name := 'CxGridLevel'+Name;
  NivelGrid.Caption := Titulo;
end;

procedure TFrmListaNominasExcel.AsignarCamposDataSet(Dataset: TClientDataSet);
begin
  with Dataset.FieldDefs do
  begin
    Add('IdNomina', ftInteger, 0, False);
    Add('TituloNomina', ftString, 255, False);
    Add('IdTipoNomina', ftInteger, 0, False);
    Add('Anio', ftInteger, 0, False);
    Add('Incluir', ftBoolean, 0, False);
  end;
  Dataset.CreateDataSet;
end;

procedure TFrmListaNominasExcel.CargarNominas(IdTipoNomina: Integer);
begin
  if CdNominas.ProviderName = '' then
    if not CrearConjunto(CdNominas, 'nom_nomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nom_nomina']);

  if not CargarDatosFiltrados(CdNominas, 'IdNomina', [IdTipoNomina]) then
    raise InteligentException.CreateByCode(6, ['IdNomina', 'Nom_nomina', '-1']);

  if CdNominas.Active then
    CdNominas.Refresh
  else
   CdNominas.Open;
end;

procedure TFrmListaNominasExcel.CargarTiposNomina;
var
  NivelGrid: TcxGridLevel;
begin
  if CdTipoNomina.ProviderName = '' then
    if not crearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
      raise InteligentException.createByCode(5, ['Nom_tipoNominas']);

  if not CargarDatosFiltrados(cdTipoNomina, 'TipoCalculo', ['PERIODICA']) then
    raise InteligentException.CreateByCode(6,['TipoCalculo','PERIODICA','Nom_TipoNomina']);

  if cdTipoNomina.active then
    cdTipoNomina.refresh
  else
    cdTipoNomina.open;

  cdTipoNomina.first;
  while Not cdTipoNomina.eof do
  begin
    AgregarNivel(CxgridMain, cdtipoNomina.FieldByName('IdTipoNomina').asString, cdTipoNomina.FieldByName('Titulo').asString);
    CrearViewGrid(CxGridMain, cdtipoNomina.FieldByName('IdTipoNomina').asString);
    cdTipoNomina.next;
  end;
end;

procedure TFrmListaNominasExcel.CrearDataset(Name: String);
var
  Dataset: TClientDataSet;
begin
  try
    Dataset := TClientDataSet.Create(Self);
    Dataset.Name := Name;
  except
    on e: Exception do
      Dataset.Free;
  end;
end;

procedure TFrmListaNominasExcel.CrearViewGrid(GridPadre: TcxGrid; Name: String);
var
  AView: TcxGridDBTableView;
  AGridColumn: TcxGridDBColumn;
Function CrearColumnas(Titulo: String; Tamano: Integer; esCheck, Agrupar: Boolean): TcxGridDBColumn;
begin
  AGridColumn := AView.CreateColumn;
  AGridColumn.Width := Tamano;
  AGridColumn.Caption := Titulo;
  if esCheck then
    AGridColumn.PropertiesClass := TcxCheckBoxProperties;
  if Agrupar then
    TcxGridDBColumn(AGridColumn).GroupIndex := -1;

  Result := AGridColumn;
  AGridColumn := nil;
end;
begin
  GridPadre.BeginUpdate;
  try
    AView := TcxGridDBTableView(GridPadre.CreateView(TcxGridTableView));
    AView.Name := 'CxGridDbTable'+Name;
    AView.OptionsView.ColumnAutoWidth := True;

    CrearColumnas('Incluir',10, True, False);
    CrearColumnas('IdNomina', 20, False, False);
    CrearColumnas('Titulo Nómina', 140, False, False);
    AGridColumn := CrearColumnas('Año', 20, False, True);
    AView.Columns[AGridColumn.Index].GroupBy(-1,True);

    TcxGridLevel(FindComponent('CxGridLevel'+Name)).GridView := AView;
  finally
    GridPadre.EndUpdate;
    AGridColumn := nil;
  end;
end;

procedure TFrmListaNominasExcel.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;
    CargarTiposNomina;
  finally
    Screen.Cursor := Cursor;
  end;
end;

end.
