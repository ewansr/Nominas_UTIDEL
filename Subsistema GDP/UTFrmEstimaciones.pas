unit UTFrmEstimaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvOfficeButtons, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls, UTFrmCatalogoDoc, UTFrmDetalleDocs, AdvEdit, NxDBColumns,
  NxColumns, frxClass, frxDBSet, uIntelidialog, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, Spin,
  AdvProgressBar, DBCtrls, cxButtons, cxGroupBox;

type
  TFrmEstimaciones = class(TFrmCatalogoDoc)
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBMemoColumn;
    Panel3: TPanel;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    Edit1: TEdit;
    Panel7: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    fdsEstimacion: TfrxDBDataset;
    fdsActividadesxEstimacion: TfrxDBDataset;
    frxEstimacion: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPrintClick(Sender: TObject);
  private
    { Private declarations }
    modoedicion: boolean;
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure inicializar; override;
    procedure Filtrar;
  public
    { Public declarations }
    PantallaReq: boolean;
  end;

var
  FrmEstimaciones: TFrmEstimaciones;

implementation

uses
  ClientModuleUnit1, Unit2, UTFrmEstimacionesDetalles;
{$R *.dfm}
{ TFrmEstimaciones }

procedure TFrmEstimaciones.BtnPrintClick(Sender: TObject);
var
  ProviderNameActividades: String;
  ProviderNameEstimacion: String;
  cdActividadesxEstimacion: TClientDataSet;
  cdEstimacion: TClientDataSet;

begin
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(TBitBtn(Sender), Self, False) then
      Exit;

    cdActividadesxEstimacion := TClientDataSet.Create(nil);
    cdEstimacion := TClientDataSet.Create(nil);

    cdActividadesxEstimacion.RemoteServer := ClientModule1.DSProviderConnection1;
    cdEstimacion.RemoteServer := ClientModule1.DSProviderConnection1;

    fdsActividadesxEstimacion.DataSet := cdActividadesxEstimacion;
    fdsEstimacion.DataSet := cdEstimacion;

    // Leer las partidas de la estimación seleccionada
    CrearConjunto(cdActividadesxEstimacion, 'nuc_actividadesxestimacion', ProviderNameActividades, ccCatalog);
    CargarDatosFiltrados(cdActividadesxEstimacion, 'idestimacion', [CdDatos.FieldByName('idestimacion').AsInteger]);
    cdActividadesxEstimacion.Open;
    // Leer los datos de la estimación
    CrearConjunto(cdEstimacion, 'nuc_estimaciones', ProviderNameEstimacion, ccCatalog);
    CargarDatosFiltrados(cdEstimacion, 'idestimacion', [CdDatos.FieldByName('idestimacion').AsInteger]);
    cdEstimacion.Open;
    // termina proceso
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\Estimaciones.fr3') then
    begin
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:' + ExtractFilePath(Application.ExeName) +
        'Reportes\Estimaciones.fr3');
    end;

    frxEstimacion.PreviewOptions.MDIChild := False;
    frxEstimacion.PreviewOptions.Modal := True;
    frxEstimacion.PreviewOptions.ShowCaptions := False;
    frxEstimacion.PreviewOptions.ZoomMode := zmPageWidth;
    frxEstimacion.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'Estimaciones.fr3');

    // nueva forma de enviar variables a fast report, declarando las variables en el fr3
    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]), []);
    frxEstimacion.Variables['importeletras'] := QuotedStr(LetrasNumeros(4358863.38, 'pesos', '/100 M.N.', 2));
    frxEstimacion.Variables['organizacion'] := QuotedStr(ClientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString);
    frxEstimacion.Variables['tituloorganizacion'] := QuotedStr(ClientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    frxEstimacion.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    frxEstimacion.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
    frxEstimacion.Variables['usuario'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
    frxEstimacion.Variables['cargousuario'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);

    frxEstimacion.ShowReport();

    EliminarConjunto(cdActividadesxEstimacion.ProviderName);
    EliminarConjunto(cdEstimacion.ProviderName);

    cdActividadesxEstimacion.Free;
    cdEstimacion.Free;

  Except
    on e: Exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.', e.message, mtInformation, [mbOk], 0);
      Exit;
    end;
  End;

end;

procedure TFrmEstimaciones.BtnSearchClick(Sender: TObject);
begin
  // inherited;
  Filtrar;
end;

function TFrmEstimaciones.createPopUpDetalle: TFrmDetalleDocs;
var
  tForm: TFrmEstimacionesDetalles;
begin
  tForm := TFrmEstimacionesDetalles.Create(nil);
  tForm.modoedicion := modoedicion;
  result := tForm;
end;

procedure TFrmEstimaciones.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if length(trim(edtFCodigo.Text)) > 0 then
      Filtrar;
  end;
end;

procedure TFrmEstimaciones.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  if trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigoestimacion', trim(edtFCodigo.Text) + '%');

  { if Trim(edtFtitulo.Text) <> '' then
    Parametros.Add('mascara', Trim(edtFtitulo.Text) + '%'); }

  CargarDatosFiltrados(CdDatos, Parametros.Campos, Parametros.Datos);
  CdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmEstimaciones.FormCreate(Sender: TObject);
begin
  // Documento := 'ESTIMACION';
  inherited;

end;

procedure TFrmEstimaciones.inicializar;
begin
  // inherited;
  keyfield := 'idestimacion';
  entityname := 'nuc_estimaciones';
  codeField := 'codigoestimacion';
end;

end.
