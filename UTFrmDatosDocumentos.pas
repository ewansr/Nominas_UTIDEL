unit UTFrmDatosDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  Mask, DBCtrls, AppEvnts, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  cxButtons, cxGroupBox;

type
  TFrmDatosDocumento = class(TFrmDatosCatalogo)
    Label1: TLabel;
    DBEditDocumento: TDBEdit;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosDocumento: TFrmDatosDocumento;

implementation

uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmDatosDocumento.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditDocumento, 'Documento') = False then
    exit;
  inherited;

end;

procedure TFrmDatosDocumento.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditDocumento, 'Documento') = False then
    exit;
  inherited;

end;

procedure TFrmDatosDocumento.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DBEditDocumento.SetFocus;
end;

end.
