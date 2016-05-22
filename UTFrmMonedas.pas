unit UTFrmMonedas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, UTFrmDatosMonedas, UTFrmDatosCatalogo, frxClass, frxDBSet,
  NxDBColumns, NxColumns, AdvShapeButton, JvExControls, JvLabel, pngimage, UinteliDialog,
  AdvEdit, JvMemoryDataset, ComCtrls, Spin, AdvProgressBar, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons, cxGroupBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, rhh_genericclasses;

type
  TFrmMonedas = class(TFrmCatalogo)
    frxReporteMonedas: TfrxReport;
    FrxMonedas: TfrxDBDataset;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    frxOrganizacion: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure Filtrar;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmMonedas: TFrmMonedas;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

{ TFrmMonedas }

procedure TFrmMonedas.BtnPrintClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'Monedas.fr3';
      CompReporte := FrxReporteMonedas;
      CompDataSetReporte := FrxMonedas;

      inherited;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;
  end;

{
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      raise Exception.Create('');

    ClientModule1.ImprimeReporte('Monedas.fr3',FrxReporteMonedas);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
    end;
  End;
}
end;

procedure TFrmMonedas.BtnSearchClick(Sender: TObject);
begin
  filtrar;
end;

function TFrmMonedas.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosMonedas.Create(Self);
end;

procedure TFrmMonedas.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmMonedas.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigomoneda', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulomoneda', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmMonedas.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'MONEDAS';
  inherited;
end;

procedure TFrmMonedas.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmMonedas.inicializar;
begin
  keyField := 'idmoneda';
  entityName := 'nuc_moneda';
  codeField := 'codigomoneda';
end;

end.
