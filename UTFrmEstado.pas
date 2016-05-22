unit UTFrmEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, UTFrmDatosCatalogo, DB, DBClient, Menus, AdvShapeButton, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, Buttons, PngSpeedButton, frxClass, frxDBSet, UTFrmDatosEstado,
  NxColumns, NxDBColumns, UinteliDialog, AdvEdit, JvMemoryDataset, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinsdxBarPainter, dxBar, cxClasses, Spin, AdvProgressBar, cxButtons,
  cxGroupBox, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TFrmEstado = class(TFrmCatalogo)
    frxDBEstados: TfrxDBDataset;
    frxReporteEstados: TfrxReport;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    edtFPais: TAdvEdit;
    frxOrganizacion: TfrxDBDataset;
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
    procedure inicializar;
  public
    ModoSeleccion: Boolean;
  end;

var
  FrmEstado: TFrmEstado;

implementation

uses ClientModuleUnit1, unit2;

{$R *.dfm}

{ TFrmCatalogo3 }

procedure TFrmEstado.BtnPrintClick(Sender: TObject);
var 
 Cursor : TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Reporte := 'Estados.fr3';
      CompReporte := FrxReporteEstados;
      CompDataSetReporte := FrxDBEstados;

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

    if ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      ClientModule1.ImprimeReporte('Estados.fr3',FrxReporteEstados);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
    end;
  End;
 }
end;

procedure TFrmEstado.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmEstado.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosEstado.Create(Self);
end;

procedure TFrmEstado.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmEstado.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFPais.Text) <> '' then
    Parametros.Add('titulopais', Trim(edtFPais.Text) + '%');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigoestado', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('tituloestado', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmEstado.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'ESTADOS';
  inherited;
end;

procedure TFrmEstado.FormShow(Sender: TObject);
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

procedure TFrmEstado.inicializar;
begin
  keyField := 'idestado';
  entityName := 'nuc_estado';
  codeField := 'codigoestado';
end;

end.
