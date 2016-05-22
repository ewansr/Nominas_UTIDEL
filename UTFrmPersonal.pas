unit UTFrmPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UTFrmDatosPersonal, UTFrmDatosCatalogo, AdvEdit, DBCtrls, AdvPanel, ToolPanels,
  InspectorBar, DBInspectorBar, NxColumns, NxDBColumns, Spin, AdvProgressBar,
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
  TFrmPersonal = class(TFrmCatalogo)
    edtFPuesto: TAdvEdit;
    edtFCodigo: TAdvEdit;
    edtFDepartamento: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    procedure BtnSearchClick(Sender: TObject);
    procedure DBGridPrincipalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure inicializar;
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FrmPersonal: TFrmPersonal;

implementation
 uses ClientModuleUnit1, unit2;
{$R *.dfm}

procedure TFrmPersonal.FormCreate(Sender: TObject);
begin
  inherited;
  Try
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmPersonal.inicializar;
begin
  keyField := 'idpersonal';
  entityName := 'nuc_personal_admin';
  codeField := 'codigopersonal';
end;

procedure TFrmPersonal.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

function TFrmPersonal.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosPersonal.Create(Self);
end;

procedure TFrmPersonal.DBGridPrincipalClick(Sender: TObject);
begin
  inherited;
//    NxTextItem1.Value:= cddatos.FieldByName('nombres').AsString;
end;

procedure TFrmPersonal.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFPuesto.Text) <> '' then
    Parametros.Add('idpuesto', Trim(edtFPuesto.Text) + '%');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigopersonal', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFDepartamento.Text) <> '' then
    Parametros.Add('iddepartamento', Trim(edtFDepartamento.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;


end.
