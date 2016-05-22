unit UTfrmDatosRoles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage,
  DBCtrls, Mask, AdvShapeButton, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Menus, AppEvnts, DBClient, cxButtons,
  cxGroupBox, cxLabel;

type
  TFrmDatosRoles = class(TFrmDatosCatalogo)
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label6: TcxLabel;
    Label3: TcxLabel;
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    DBMemoComentarios: TDBMemo;
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosRoles: TFrmDatosRoles;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosRoles.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
  DBEditCodigo.Text := '';
  DBEditTitulo.Text := '';
  DBMemoDescripcion.Clear;
  DBMemoComentarios.Clear;
end;

procedure TFrmDatosRoles.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosRoles.FormShow(Sender: TObject);
begin
  inherited;
  DBEditCodigo.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
