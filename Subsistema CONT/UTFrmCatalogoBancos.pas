
unit UTFrmCatalogoBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UinteliDialog, UTFrmDatosCatalogo, AdvEdit, UTFrmDatosBancos, NxColumns,
  NxDBColumns, Spin, AdvProgressBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons,
  dxSkinSilver, cxControls, cxContainer, cxEdit, cxGroupBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  frxClass, frxDBSet;

type
  TFrmCatalogoBancos = class(TFrmCatalogo)
    edtnombre: TAdvEdit;
    edtsucursal: TAdvEdit;
    edtcodigo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    frxReporteCatalogoCuentas: TfrxReport;
    frxCatalogoCuentas: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtnombreKeyPress(Sender: TObject; var Key: Char);
    procedure edtsucursalKeyPress(Sender: TObject; var Key: Char);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPrintClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
    procedure inicializar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoBancos: TFrmCatalogoBancos;

implementation
  Uses ClientModuleUnit1,Unit2;
{$R *.dfm}

procedure TFrmCatalogoBancos.FormShow(Sender: TObject);
begin
  Try
    inherited;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmCatalogoBancos.BtnPrintClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'CatalagoCuentas.fr3';
      CompReporte := FrxReporteCatalogoCuentas;
      CompDataSetReporte := FrxCatalogoCuentas;

      inherited
      //LocalImprimeReporte(cdDatos,DBGridPrincipal ,'Catálogo de Bancos');
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.', e.Message, mtInformation, [mbOK], 0);
    end;

  end;

end;

procedure TFrmCatalogoBancos.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmCatalogoBancos.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosBancos.Create(Self);
end;

procedure TFrmCatalogoBancos.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    Filtrar;
end;

procedure TFrmCatalogoBancos.edtnombreKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    Filtrar;
end;

procedure TFrmCatalogoBancos.edtsucursalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
    Filtrar;
end;

procedure TFrmCatalogoBancos.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtcodigo.Text) <> '' then
    Parametros.Add('nombre', Trim(edtcodigo.Text) + '%');

  if Trim(edtsucursal.Text) <> '' then
    Parametros.Add('sucursal', Trim(edtsucursal.Text) + '%');

  if Trim(edtcodigo.Text) <> '' then
    Parametros.Add('codigo', Trim(edtcodigo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmCatalogoBancos.inicializar;
begin
  keyField := 'idbanco';
  entityName := 'con_bancos';
  codeField := 'codigo';
end;

end.
