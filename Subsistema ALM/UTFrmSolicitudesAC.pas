unit UTFrmSolicitudesAC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmSolicitudes, frxClass, frxDBSet, JvMemoryDataset, DB, DBClient,
  Menus, ComCtrls, StdCtrls, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, AdvCombo, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvEdit, AdvOfficeButtons,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  frxExportPDF, Spin, AdvProgressBar, DBCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  TFrmSolicitudesAC = class(TFrmSolicitudes)
    PanelCliente: TPanel;
    btnAssignBuyer: TAdvShapeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAssignBuyerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSolicitudesAC: TFrmSolicitudesAC;

implementation

uses ClientModuleUnit1, UTFrmAsignarComprador, UInteliDialog;
{$R *.dfm}

procedure TFrmSolicitudesAC.btnAssignBuyerClick(Sender: TObject);
var
  frm1: TFrmAsignarComprador;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'ASIGNARCOMPRADOR') then
    Exit;
  inherited;
  if cdDatos.eof then
    InteliDialog.ShowModal('No se ha seleccionado nada',
      'No se ha seleccionado ningún registro para la opción solicitada',
      mtError, [mbOk], 0)
  else
  begin
    frm1 := TFrmAsignarComprador.Create(nil);
    frm1.cdDatos := cdDatos;
    frm1.ShowModal;
    frm1.Free;
  end;
end;

procedure TFrmSolicitudesAC.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'ASIGNACOMPRADORES';
  inherited;

  PanelAdd.Visible := false;
  BtnEdit.caption := 'Ver';
  PanelDelete.Visible := false;
  PanelExport.Visible := false;
  PanelSelect.Visible := false;
  BtnAssignBuyer.parent.Visible := true;
  PantallaReq := true;
  cmbFiltroEstado.Clear;
  cmbFiltroEstado.Items.Add('Verificado');
  cmbFiltroEstado.Items.Add('Requisitado');
  cmbFiltroEstado.Items.Add('Cancelado');
  cmbFiltroEstado.Style := csDropDownList;
  cmbFiltroEstado.ItemIndex := 0;
  BtnSearch.Click;

end;

procedure TFrmSolicitudesAC.FormShow(Sender: TObject);
begin
  inherited;
  ClientModule1.ComponentColor(self);
end;

end.
