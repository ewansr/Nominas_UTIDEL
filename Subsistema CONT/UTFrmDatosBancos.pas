unit UTFrmDatosBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  Mask, DBCtrls, JvExControls, JvLabel, AppEvnts, DBClient, AdvSmoothLabel,
  DBAdvSmoothLabel, cxGraphics, cxControls, cxLookAndFeels,
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
  cxButtons, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmDatosBancos = class(TFrmDatosCatalogo)
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel5: TJvLabel;
    Image1: TImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    jvlbl1: TJvLabel;
    CxCbbbancoCFDI: TcxDBLookupComboBox;
    cdBancoCFDI: TClientDataSet;
    dsBancoCFDI: TDataSource;
    dbedtCodigo: TDBEdit;
    img2: TImage;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosBancos: TFrmDatosBancos;

implementation
 uses ClientModuleUnit1,xDatabase;
{$R *.dfm}

procedure TFrmDatosBancos.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(dbedit2, 'Nombre') = False then
    exit;

  inherited;

  dbedit2.Text:='';
  dbedit3.Text:='';
  dbedit4.Text:='';
  dbedit5.Text:='';
  dbedit6.Text:='';
end;

procedure TFrmDatosBancos.BtnRecClick(Sender: TObject);
begin
//  if ClientModule1.VerificaVacio(dbedit2, 'Nombre') = False then
//    exit;
//
//  inherited;
  BtnAddNewClick(nil);
  Close;

end;

procedure TFrmDatosBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if cdBancoCfdi.ProviderName <> '' then
    EliminarConjunto(cdBancoCfdi);
end;

procedure TFrmDatosBancos.FormCreate(Sender: TObject);
begin
  inherited;
  if not CrearConjunto(cdBancoCfdi, 'rhu_bancos_cfdi', ccCatalog) then
    raise InteligentException.CreateByCode(5,['con_bancos_cfdi']);

end;

procedure TFrmDatosBancos.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
  begin
    DsDatos.DataSet.FieldByName('Activo').AsString := 'Si';
    DsDatos.DataSet.FieldByName('Codigo').AsString := '<Automático>';
  end;
  cdBancoCFDI.Open;
end;

end.
