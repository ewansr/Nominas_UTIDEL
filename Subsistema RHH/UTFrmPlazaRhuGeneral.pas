unit UTFrmPlazaRhuGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, DBCtrls, DBAdvEd, AdvDateTimePicker,
  AdvDBDateTimePicker, AdvEdit, AdvEdBtn, pngimage, AdvGroupBox, AdvGlowButton,
  JvExExtCtrls, JvImage, JvExControls, JvLabel, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxButtons, UInteliDialog, ClientModuleUnit1, DB, DBClient,
  UControlExcepciones, URegistro;

type
  TFrmPlazaRhuGeneral = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    btnCargarImagen: TAdvGlowButton;
    Panel5: TPanel;
    Panel6: TPanel;
    img2: TJvImage;
    Panel7: TPanel;
    edtCodigo: TDBAdvEdit;
    Panel8: TPanel;
    edtObservaciones: TDBRichEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    grp1: TAdvGroupBox;
    lbl1: TJvLabel;
    lbl2: TJvLabel;
    lblCargoHist: TJvLabel;
    lblDeptoHist: TJvLabel;
    img1: TImage;
    lblSolicitante: TJvLabel;
    edtCodigoSolic: TAdvEditBtn;
    CxBtnCargar: TcxButton;
    CxBtnCancel: TcxButton;
    dsUptPlazaGeneral: TDataSource;
    Panel11: TPanel;
    dtpFecha: TAdvDBDateTimePicker;
  private
  public
    { Public declarations }
  end;

var
  FrmPlazaRhuGeneral: TFrmPlazaRhuGeneral;

implementation


{$R *.dfm}

end.
