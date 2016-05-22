unit UTFrmConceptosExtras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, Spin,
  AdvProgressBar, ComCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls,UTFrmDatosCatalogo,UTFrmDatosConceptoExtra, NxColumns,
  NxDBColumns, AdvCombo, AdvDBComboBox, AdvEdit, cxGraphics, cxLookAndFeels,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxButtons;

type
  TFrmConceptosExtras = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    EdtFclave: TAdvEdit;
    EdtFTitulo: TAdvEdit;
    EdtFTipo: TAdvComboBox;
    EdtFModo: TAdvComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    { Private declarations }
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
    procedure inicializar;
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmConceptosExtras: TFrmConceptosExtras;

implementation
Uses ClientModuleUnit1,Unit2;

{$R *.dfm}

procedure TFrmConceptosExtras.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmConceptosExtras.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosConceptoExtra.Create(Self);
end;

procedure TFrmConceptosExtras.Filtrar;
var
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  Parametros.Add('tipo', EdtFTipo.Text);
  Parametros.Add('modo', EdtFModo.Text);

  if (Length(Trim(EdtFclave.Text)) > 0) then
    Parametros.Add('claveconcepto',Trim(EdtFclave.Text) + '%');

  if (Length(Trim(edtFtitulo.Text)) > 0)  then
    Parametros.Add('titulo','%' + Trim(edtFtitulo.Text) + '%');


  CargarDatosFiltrados(cdDatos,Parametros.Campos,Parametros.Datos);
  if cdDatos.Active then
    cdDatos.Refresh
  ELSE
    cdDatos.Open;

  Parametros.Free;
end;

procedure TFrmConceptosExtras.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'CONCEPTOSEXTRAS';
  inherited;

end;

procedure TFrmConceptosExtras.FormShow(Sender: TObject);
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

procedure TFrmConceptosExtras.inicializar;
begin
  keyField := 'idconceptoextra';
  entityName := 'nom_conceptoextra';
  codeField := 'claveconcepto';
  Reporte:= 'x.fr3';
  {CompReporte := frxReporteAlmacenes;
  CompDatasetReporte := Frxalmacenes;}
end;

end.
