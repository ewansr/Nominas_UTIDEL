unit UTFrmDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UTFrmDatosCatalogo,UTFrmDatosDocumento, AdvEdit, NxColumns, NxDBColumns, Spin,
  AdvProgressBar, AdvCombo, NxEdit, JvExStdCtrls, JvCombobox, cxGraphics,
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
  dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons, cxGroupBox, NxCollection,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, frxClass, frxDBSet;

type
  TFrmDocumento = class(TFrmCatalogo)
    edtFNombre: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    CbTipo: TJvComboBox;
    NxDBMemoColumn1: TNxDBMemoColumn;
    frxReporteDocumentos: TfrxReport;
    frxDocumentos: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure edtFNombreKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtTipoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPrintClick(Sender: TObject);
    procedure DBGridPrincipalCustomDrawCell(Sender: TObject; ACol,
      ARow: Integer; CellRect: TRect; CellState: TCellState);
  private
    { Private declarations }
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    Formulario : string;
    { Public declarations }
  end;

var
  FrmDocumento: TFrmDocumento;

implementation

Uses ClientModuleUnit1,Unit2, UInteliDialog ;
{$R *.dfm}

{ TFrmDocumento }


procedure TFrmDocumento.FormCreate(Sender: TObject);
Var
  CritteriosTipo :String;
begin
  inherited;
    CritteriosTipo:='';
    CbTipo.AddItem('Todos', TObject(CritteriosTipo));
    CritteriosTipo:='Normal';
    CbTipo.AddItem(CritteriosTipo, TObject(CritteriosTipo));
    CritteriosTipo:='Profesional';
    CbTipo.AddItem(CritteriosTipo, TObject(CritteriosTipo));
    CritteriosTipo:='Personal';
    CbTipo.AddItem(CritteriosTipo, TObject(CritteriosTipo));
    CritteriosTipo:='Caducidad';
    CbTipo.AddItem(CritteriosTipo, TObject(CritteriosTipo));
    CbTipo.ItemIndex:=0;
end;

procedure TFrmDocumento.FormShow(Sender: TObject);
var
   Parametros: TParamFilter;
   CritteriosTipo :String;
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


procedure TFrmDocumento.BtnPrintClick(Sender: TObject);
var
  Cursor: Tcursor;
begin
  try
    Cursor := Screen.Cursor; 
    try
      Screen.Cursor := crAppStart;
      
      Reporte := 'Documentos.fr3';
      CompReporte := FrxReporteDocumentos;
      CompDataSetReporte := FrxDocumentos;

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

end;

procedure TFrmDocumento.BtnSearchClick(Sender: TObject);
begin
   Filtrar;
end;

function TFrmDocumento.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosDocuumento.Create(Self);
end;

procedure TFrmDocumento.DBGridPrincipalCustomDrawCell(Sender: TObject; ACol,
  ARow: Integer; CellRect: TRect; CellState: TCellState);
var
  Grid: TNextDBGrid;
begin
  inherited;

  Grid := Sender as TNextDBGrid;
  Grid.Canvas.Brush.Color := clRed;
end;

procedure TFrmDocumento.edtFNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmDocumento.EdtTipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmDocumento.Filtrar;
Var
  Parametros: TParamFilter;
begin
    Parametros := TParamFilter.Create;

    Parametros.Add('activo', 'si');

    if Trim(edtFNombre.Text) <> '' then
      Parametros.Add('nombredocumento', Trim(edtFNombre.Text) + '%');

{
      if (trim(cbtipo.Text)<>'') and (cbtipo.Text<>'Todos') then
        Parametros.Add('Tipo', trim(cbtipo.Text));
}



    if (CbTipo.ItemIndex<>-1) and (String(CbTipo.Items.Objects[CbTipo.ItemIndex])<>'') then
      Parametros.Add('Tipo', trim(String(CbTipo.Items.Objects[CbTipo.ItemIndex])) );



    cddatos.Close;
    CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
    cdDatos.open;

    Parametros.Free;
end;

procedure TFrmDocumento.inicializar;
begin
  keyField := 'iddocumento';
  entityName := 'rhu_documento';
  codeField := 'nombredocumento';
end;

end.
