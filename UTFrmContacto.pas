unit UTFrmContacto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, AdvShapeButton, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, Buttons, PngSpeedButton, frxClass, frxDBSet, UTFrmDatosCatalogo,
  UTFrmDatosContacto, UinteliDialog, NxColumns, NxDBColumns, AdvEdit,
  JvMemoryDataset, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, Spin, AdvProgressBar, cxButtons,
  cxGroupBox;

type
  TFrmContacto = class(TFrmCatalogo)
    frxContactos: TfrxDBDataset;
    frxReporteContactos: TfrxReport;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    edtFnombres: TAdvEdit;
    edtFApellidos: TAdvEdit;
    edtFProveedor: TAdvEdit;
    procedure Filtrar;
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure edtFnombresKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function createPopup: TFrmDatosCatalogo; Override;
    procedure inicializar;
  public
    { Public declarations }
    ModoSeleccion: Boolean;
  end;

var
  FrmContacto: TFrmContacto;

implementation

uses ClientModuleUnit1, unit2;

{$R *.dfm}

{ TFrmCatalogo3 }

procedure TFrmContacto.BtnPrintClick(Sender: TObject);
begin
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

  ClientModule1.ImprimeReporte('Contactos.fr3',FrxReporteContactos);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmContacto.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmContacto.createPopup: TFrmDatosCatalogo;
begin
  result := TFrmDatosContacto.Create(Self);
end;

procedure TFrmContacto.edtFnombresKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmContacto.Filtrar;
var
  FProveedor,FNombre, FApellidos: String;
begin
  FProveedor := '-1';
  FNombre := '-1';
  FApellidos := '-1';
  if (Length(Trim(edtFProveedor.Text)) > 0) then
    FProveedor := edtFProveedor.Text;
  if (Length(Trim(EdtFNombres.Text)) > 0) then
    FNombre := EdtFNombres.Text;
  if (Length(Trim(EdtFApellidos.Text)) > 0)  then
    FApellidos := EdtFApellidos.Text;
  CargarDatosFiltrados(cdDatos, 'tituloproveedor,nombre, apellidos, activo', [FProveedor+ '%',FNombre + '%',FApellidos + '%','si']);
  cdDatos.Refresh;
end;

procedure TFrmContacto.FormShow(Sender: TObject);
begin
  inherited;
  if ModoSeleccion = True then
    BtnSelect.Visible := True;
  inicializar;
  abrir;
end;

procedure TFrmContacto.inicializar;
begin
  keyField := 'idcontacto';
  entityName := 'alm_contacto';
  codeField := 'nombre';
end;

end.

