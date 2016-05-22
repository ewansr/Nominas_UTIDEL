unit UTFrmCiudad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, AdvShapeButton, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, Buttons, PngSpeedButton, UTFrmDatosCatalogo, UTFrmDatosCiudad,
  frxClass, frxDBSet, NxColumns, NxDBColumns,UinteliDialog, AdvEdit,
  JvMemoryDataset, ComCtrls, Spin, AdvProgressBar, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinOffice2013LightGray;

type
  TFrmCiudad = class(TFrmCatalogo)
    frxCiudades: TfrxDBDataset;
    frxReporteCiudades: TfrxReport;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    edtFPais: TAdvEdit;
    edtFEstado: TAdvEdit;
    frxOrganizacion: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    ModoSeleccion: Boolean;
  end;

var
  FrmCiudad: TFrmCiudad;

implementation

uses ClientModuleUnit1,Unit2;

{$R *.dfm}

{ TFrmCiudad }

procedure TFrmCiudad.BtnPrintClick(Sender: TObject);
var
Cursor : TCursor;
begin
  try
    Cursor := Screen.Cursor; 
    try
      Screen.Cursor := crAppStart;
      Reporte := 'Ciudades.fr3';
      CompReporte := FrxReporteCiudades;
      CompDataSetReporte := FrxCiudades;

      inherited;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
  end;
{
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      ClientModule1.ImprimeReporte('Ciudades.fr3',FrxReporteCiudades);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
    end;
  End;
 }
end;

procedure TFrmCiudad.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmCiudad.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosCiudad.Create(Self);
end;

procedure TFrmCiudad.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmCiudad.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFPais.Text) <> '' then
    Parametros.Add('titulopais', Trim(edtFPais.Text) + '%');

  if Trim(edtFEstado.Text) <> '' then
    Parametros.Add('tituloEstado', Trim(edtFEstado.Text) + '%');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigociudad', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulociudad', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmCiudad.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'CIUDADES';
  inherited;
end;

procedure TFrmCiudad.FormShow(Sender: TObject);
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

procedure TFrmCiudad.inicializar;
begin
  keyField := 'idciudad';
  entityName := 'nuc_ciudad';
  codeField := 'codigociudad';
end;

end.
