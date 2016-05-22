unit UTFrmPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, AdvShapeButton, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, Buttons, PngSpeedButton, frxClass, frxDBSet,
  NxDBColumns, NxColumns, UTFrmDatosCatalogo, UTFrmDatosPais,UinteliDialog,
  AdvEdit, JvMemoryDataset, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TFrmPais = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBMemoColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    frxPaises: TfrxDBDataset;
    frxReportePaises: TfrxReport;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    frxOrganizacion: TfrxDBDataset;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
    procedure inicializar;
  public
    { Public declarations }
  end;

var
  FrmPais: TFrmPais;

implementation

{$R *.dfm}

{ TFrmPais }
Uses ClientModuleUnit1,Unit2;

procedure TFrmPais.BtnPrintClick(Sender: TObject);
var
  Cursor: Tcursor;
begin
  try
    Cursor := Screen.Cursor;

    try
      Screen.Cursor := crAppStart;

      Reporte := 'Paises.fr3';
      CompReporte := FrxReportePaises;
      CompDataSetReporte := FrxPaises;

      inherited;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;

  end;

  {Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      ClientModule1.ImprimeReporte('Paises.fr3',FrxReportePaises);

  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
    end;
  End;}
end;

procedure TFrmPais.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmPais.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosPais.Create(Self);
end;

procedure TFrmPais.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmPais.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigopais', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulopais', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmPais.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'PAISES';
  inherited;
end;

procedure TFrmPais.FormShow(Sender: TObject);
begin
  Try
    inherited;
    inicializar;
    abrir;
  Except
    ;
  End;

end;

procedure TFrmPais.inicializar;
begin
  keyField := 'idpais';
  entityName := 'nuc_pais';
  codeField := 'codigopais';
end;

end.
