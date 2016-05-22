unit UTFrmSolicitudesAP;

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
  TFrmSolicitudesAP = class(TFrmSolicitudes)
    PanelProv: TPanel;
    btnAssignSupplier: TAdvShapeButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAssignSupplierClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSolicitudesAP: TFrmSolicitudesAP;

implementation

uses
  UTFrmAsignarProveedor, UInteliDialog, ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSolicitudesAP.btnAssignSupplierClick(Sender: TObject);
var
  frm1: TFrmAsignarProveedor;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'ASIGNARPROVEEDOR') then
    Exit;
  inherited;
  if cdDatos.eof then
    InteliDialog.ShowModal('No se ha seleccionado nada',
      'No se ha seleccionado ningún registro para la opción solicitada',
      mtError, [mbOk], 0)
  else
  begin
    frm1 := TFrmAsignarProveedor.Create(nil);
    frm1.cdDatos := cdDatos;
    frm1.ShowModal;
    frm1.Free;
  end;
end;


procedure TFrmSolicitudesAP.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'CREARCOTIZACION';
  inherited;

  PanelAdd.Visible := false;
  BtnEdit.caption := 'Ver';
  PanelDelete.Visible := false;
  PanelExport.Visible := false;
  PanelSelect.Visible := false;
  BtnAssignSupplier.parent.Visible := true;
  PantallaReq := true;
  cmbFiltroEstado.Clear;
  cmbFiltroEstado.Items.Add('Requisitado');
  cmbFiltroEstado.Items.Add('Cancelado');
  cmbFiltroEstado.Style := csDropDownList;
  cmbFiltroEstado.ItemIndex := 0;
  BtnSearch.Click;
end;

end.
