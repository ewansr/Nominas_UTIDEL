unit UTFrmSU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Menus, cxLabel, StdCtrls, cxButtons,
  cxTextEdit, cxGroupBox, DB, DBClient, ClientModuleUnit1, UInteliDialog,
  dxGDIPlusClasses, cxImage, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmSu = class(TForm)
    cxGBDatos: TcxGroupBox;
    Label3: TLabel;
    EditPass: TcxTextEdit;
    CxBtnCancel: TcxButton;
    CxBtnEntrar: TcxButton;
    CxLbl1: TcxLabel;
    lbl1: TLabel;
    CdAutentificar: TClientDataSet;
    imgLogo2: TcxImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxBtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxBtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    formularioDeLlamada : string;
    permitido, cancelado : Boolean;

  end;

var
  FrmSu: TFrmSu;

implementation

{$R *.dfm}

uses
  UTFrmConceptosNomina;

procedure TFrmSu.CxBtnCancelClick(Sender: TObject);
begin
  if formularioDeLlamada = 'Unit2' then
  begin
    if CdAutentificar.FieldByName('spassword').AsString = EditPass.Text then
    begin
      application.createForm(TFrmConceptosNomina, FrmConceptosNomina);
      FrmConceptosNomina.show;
      Self.Close;
    end
    else
      InteliDialog.ShowModal('Error de Autenticación', 'La contraseña es incorrecta.', mtinformation, [mbOK], 0);
  end
  else if formularioDeLlamada = 'UTfrmAbrirNomina' then
  begin
    if CdAutentificar.FieldByName('spassword').AsString = EditPass.Text then
    begin
      permitido := True;
      Self.Close;
    end
    else
    begin
      Self.Close;
    end;
  end;

end;

procedure TFrmSu.CxBtnEntrarClick(Sender: TObject);
begin
  cancelado := True;
  Close;
end;

procedure TFrmSu.EditPassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
    CxBtnCancelClick(nil);
end;

procedure TFrmSu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CdAutentificar.Active then
    CdAutentificar.Close;

  Action := caFree;
end;

procedure TFrmSu.FormCreate(Sender: TObject);
begin
  if not crearConjunto(CdAutentificar, 'nuc_su', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Autentificar']);

end;

procedure TFrmSu.FormShow(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if formularioDeLlamada = 'UTfrmAbrirNomina' then
      begin
        lbl1.Caption := 'Para poder realizar esta accion necesita autentificarse';
        CxBtnCancel.Caption := 'OK'
      end;

      if not CargarDatosFiltrados(CdAutentificar, 'pass', [-1]) then
        raise InteligentException.CreateByCode(6, ['password', 'usuarios', '-1']);

      if CdAutentificar.Active then
        CdAutentificar.Refresh
      else
        CdAutentificar.Open;

      if CdAutentificar.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No se ha localizado el super usuario dentro de la base de datos.']);
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

end.
