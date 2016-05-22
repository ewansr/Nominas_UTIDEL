unit UTFrmPlazaRhu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UTFrmDatosCatalogo, NxColumns, NxDBColumns, AdvEdit, Spin, AdvProgressBar,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons,
  cxGroupBox;

type
  TFrmPlazaRhu = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    edtFCodigo: TAdvEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    IdOrganizacion: Integer;
    IdDepartamento: Integer;
    TituloDepartamento: String;
  end;

var
  FrmPlazaRhu: TFrmPlazaRhu;

implementation

uses
  ClientModuleUnit1, UInteliDialog;

{$R *.dfm}

{ TFrmPlazaRhu }

procedure TFrmPlazaRhu.BtnAddClick(Sender: TObject);
begin
{  Try
    Application.CreateForm(TFrmPlazaRhuDetalle, FrmPlazaRhuDetalle);
    FrmPlazaRhuDetalle.IdOrganizacion := IdOrganizacion;
    FrmPlazaRhuDetalle.IdDepartamento := IdDepartamento;
    FrmPlazaRhuDetalle.TituloDepartamento := TituloDepartamento;
    FrmPlazaRhuDetalle.idPlaza := 0;
    FrmPlazaRhuDetalle.ShowModal;
  Finally
    FrmPlazaRhuDetalle.Free;
  End;}
end;

procedure TFrmPlazaRhu.BtnEditClick(Sender: TObject);
{Var
  Frm: TFrmPlazaRhuDetalle;}
begin
{  if cdDatos.RecNo > 0 then
  begin
    Frm := TFrmPlazaRhuDetalle.Create(nil);
    Frm.idPlaza := cdDatos.FieldByName('idplaza').AsInteger;
    Frm.IdOrganizacion:= IdOrganizacion;
    Frm.ShowModal;
    Frm.Free;
  end
  else
    InteliDialog.ShowModal('Error','No hay un registro seleccionado.','',mtError,[mbOK],0);}
end;


procedure TFrmPlazaRhu.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmPlazaRhu.createPopUp: TFrmDatosCatalogo;
begin

end;

procedure TFrmPlazaRhu.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    Filtrar;
end;

procedure TFrmPlazaRhu.Filtrar;
var
  params: TParamFilter;
begin
  params := TParamFilter.Create;
  //params.Add('Activo', 'Si');
  Params.Add('IdOrganizacion', IntToStr(IdOrganizacion));

  if (Length(Trim(edtFCodigo.Text)) > 0) then
    params.Add('CodigoPlaza', Trim(edtFCodigo.Text));

  CargarDatosFiltrados(cdDatos, params);
  CdDatos.Refresh;
end;


procedure TFrmPlazaRhu.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'PLAZAS';
  inherited;
end;

procedure TFrmPlazaRhu.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;

    Abrir;

    PanelDelete.Visible := False;
    PanelExport.Visible := False;
    PanelImport.Visible := False;
    PanelPrint.Visible := False;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.msgtype, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmPlazaRhu.inicializar;
begin
  keyField := 'idplaza';
  entityName := 'rhu_plaza';
  codeField := 'codigoplaza';
end;

end.
