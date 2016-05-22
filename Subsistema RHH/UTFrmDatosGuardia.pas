unit UTFrmDatosGuardia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  pngimage, Mask, JvComponentBase, JvEnterTab, DBClient,
  ComCtrls, AdvMemo, DBAdvMemo, AppEvnts, JvExMask, JvSpin, JvDBSpinEdit,
  JvExControls, JvLabel, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmDatosGuardia = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEditTitulo: TDBEdit;
    Image1: TImage;
    Image2: TImage;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    SpinTrabajados: TJvDBSpinEdit;
    SpinDescanso: TJvDBSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosGuardia: TFrmDatosGuardia;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosGuardia.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosGuardia.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosGuardia.FormShow(Sender: TObject);
begin
  inherited;
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('IdTipoNomina').AsInteger := Globales.Elemento('IdTipoNomina').AsInteger;
    dsDatos.DataSet.FieldByName('Trabajados').AsInteger := Globales.Elemento('DiasTrabajados').AsInteger;
    dsDatos.DataSet.FieldByName('Descanso').AsInteger := Globales.Elemento('DiasDescanso').AsInteger;
  end;
  SpinTrabajados.Enabled := False;
  SpinDescanso.Enabled := False;
  DBEditCodigo.SetFocus;
end;

end.
