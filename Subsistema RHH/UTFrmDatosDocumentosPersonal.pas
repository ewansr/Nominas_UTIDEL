unit UTFrmDatosDocumentosPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  DBCtrls, Mask, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  AppEvnts, DBClient, cxButtons, cxGroupBox;

type
  TFrmDatosDocumentosPersonal = class(TFrmDatosCatalogo)
    DBEditNombre: TDBEdit;
    DbEditcodigo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image2: TImage;
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosDocumentosPersonal: TFrmDatosDocumentosPersonal;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosDocumentosPersonal.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditNombre, 'Nombre') = False then
    exit;
  inherited;
  DBEditNombre.Text := '';
  DbEditcodigo.Text := '';
  DBMemoDescripcion.Clear;
end;

procedure TFrmDatosDocumentosPersonal.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditNombre, 'Nombre') = False then
    exit;

  inherited;
end;

procedure TFrmDatosDocumentosPersonal.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DBEditNombre.SetFocus;
end;

end.
