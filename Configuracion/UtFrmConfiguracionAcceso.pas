unit UtFrmConfiguracionAcceso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, DBClient,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxCheckComboBox,
  cxButtonEdit, cxGridCardView, cxGridCustomLayoutView, cxGridDBCardView, ClientModuleUnit1, UInteliDialog,
  AdvSmoothSlider;

type
  TfrmConfiguracionAcceso = class(TForm)
    CdConfig: TClientDataSet;
    dsConfig: TDataSource;
    AdvSlider1: TAdvSmoothSlider;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracionAcceso: TfrmConfiguracionAcceso;

implementation

{$R *.dfm}

procedure TfrmConfiguracionAcceso.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdConfig,'nuc_configuracion_acceso', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Configuración Acceso']);
end;

procedure TfrmConfiguracionAcceso.FormShow(Sender: TObject);
begin
  try
    if not CargarDatosFiltrados(CdConfig, 'IdConfiguracion', [1]) then
      raise InteligentException.CreateByCode(6, ['Configuracion', 'IdConfiguración', '1']);

    if CdConfig.active then
      CdConfig.Refresh
    else
      CdConfig.Open;
  except

  end;
end;

end.
