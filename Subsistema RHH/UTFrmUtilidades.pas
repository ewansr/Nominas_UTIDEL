unit UTFrmUtilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBClient,
  ClientModuleUnit1, URegistro, UInteliDialog, cxContainer, cxGroupBox, Menus,
  StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxLabel, cxCalc, NxEdit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, rhh_genericclasses,
  frxClass, frxDBSet;

type
  TFrmUtilidades = class(TForm)
    CdUtilidad: TClientDataSet;
    CdUtilidadUpt: TClientDataSet;
    dsUtilidad: TDataSource;
    dsUtilidadUpt: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    cxGBDatos: TcxGroupBox;
    CxDbTxtImporte: TcxDBTextEdit;
    BtnGuardar: TcxButton;
    BtnCancelar: TcxButton;
    CxLbl1: TcxLabel;
    CxLbl2: TcxLabel;
    CxColumnGrid1DBTableView1Column1: TcxGridDBColumn;
    CxColumnGrid1DBTableView1Column2: TcxGridDBColumn;
    edtAplicacion: TNxCalcEdit;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    frxReporteUtilidades: TfrxReport;
    frxOrganizacion: TfrxDBDataset;
    frxUtilidades: TfrxDBDataset;
    btnImprimir: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DxBLbuttonAgregarClick(Sender: TObject);
    procedure DxBLbuttonEditarClick(Sender: TObject);
    procedure DxBLbuttonActualizarClick(Sender: TObject);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure DxBLbuttonEliminarClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CdUtilidadAfterOpen(DataSet: TDataSet);
    procedure CdUtilidadAfterRefresh(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUtilidades: TFrmUtilidades;

implementation

{$R *.dfm}

procedure TFrmUtilidades.BtnCancelarClick(Sender: TObject);
begin
  try
    if CdUtilidadUpt.State in [dsInsert, dsEdit] then
    begin
      CdUtilidadUpt.Cancel;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmUtilidades.BtnGuardarClick(Sender: TObject);
begin
  try
    btnguardar.setFocus;
    if edtAplicacion.Text = '' then
      raise INteligentException.CreateByCode(18, ['Aplicación']);

    if Length(Trim(cxdbTxtImporte.Text)) = 0 then
      raise InteligentException.CreateByCode(18,['Importe']);

    if CdUtilidadUpt.State in [dsInsert, dsEdit] then
    begin
      CdUtilidadUpt.FieldByName('Anio').AsInteger := StrToInt(edtAplicacion.Text);
      CdUtilidadUpt.FieldByName('IdUtilidades').AsInteger := 1;
      CdUtilidadUpt.Post;
      CdUtilidadUpt.ApplyUpdates(-1);
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmUtilidades.btnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Reporte := 'Utilidades.fr3';
      CompReporte := FrxReporteUtilidades;
      CompDataSetReporte := FrxUtilidades;

      LocalImprimeReporte(cdUtilidad, cxGrid1DBTableView1, 'Tabla de Utilidades');
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

procedure TFrmUtilidades.CdUtilidadAfterOpen(DataSet: TDataSet);
begin
  DxBLbuttonEditar.Enabled := (CdUtilidad.Active) and (CdUtilidad.RecordCount > 0);
  DxBLbuttonEliminar.Enabled := DxBLbuttonEditar.Enabled;
end;

procedure TFrmUtilidades.CdUtilidadAfterRefresh(DataSet: TDataSet);
begin
  DxBLbuttonEditar.Enabled := (CdUtilidad.Active) and (CdUtilidad.RecordCount > 0);
  DxBLbuttonEliminar.Enabled := DxBLbuttonEditar.Enabled;
end;

procedure TFrmUtilidades.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  DxBLbuttonEditarClick(nil);
end;

procedure TFrmUtilidades.DxBLbuttonActualizarClick(Sender: TObject);
begin
  try
    CdUtilidad.Refresh;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmUtilidades.DxBLbuttonAgregarClick(Sender: TObject);
var
  gForm: TForm;
begin
  try
    if Not assigned(gForm) then
      gForm := TForm.Create(nil);

    gForm.Width := 290;
    gForm.Height := 160;
    gForm.BorderStyle := bsDialog;
    gForm.Caption := 'Registrar utilidad';
    gForm.Position := poMainFormCenter;
    cxGBDatos.Parent := gForm;
    cxGBDatos.Visible := true;
    cxGBDatos.Align := alClient;

    CdUtilidadUpt.Close;
    if not CargarDatosFiltrados(CdUtilidadUpt, 'idUtilidades', [-9]) then
      raise InteligentException.CreateByCode(6, ['Catálogo de Utilidades / *Update','IdUtlidades',' -9']);

    if CdUtilidadUpt.Active then
      CdUtilidadUpt.Refresh
    else
      CdUtilidadUpt.Open;

    CdUtilidadUpt.Append;
    if gForm.ShowModal = mrOk then
      CdUtilidad.Refresh;
  finally
    //gForm.Destroy;
  end;
end;

procedure TFrmUtilidades.DxBLbuttonEditarClick(Sender: TObject);
var
  gForm: TForm;
begin
  try
    if Not assigned(gForm) then
      gForm := TForm.Create(nil);

    gForm.Width := 290;
    gForm.Height := 160;
    gForm.BorderStyle := bsDialog;
    gForm.Caption := 'Editar utilidad';
    gForm.Position := poMainFormCenter;
    cxGBDatos.Parent := gForm;
    cxGBDatos.Visible := true;
    cxGBDatos.Align := alClient;

    CdUtilidadUpt.Close;
    if not CargarDatosFiltrados(CdUtilidadUpt, 'idUtilidades', [CdUtilidad.FieldByName('IdUtilidades').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Catálogo de Utilidades / *Update','IdUtlidades', CdUtilidad.FieldByName('IdUtilidades').AsString]);

    if CdUtilidadUpt.Active then
      CdUtilidadUpt.Refresh
    else
      CdUtilidadUpt.Open;

    CdUtilidadUpt.Edit;
    if gForm.ShowModal = mrOk then
      CdUtilidad.Refresh;
  finally
    //gForm.Destroy;
  end;
end;

procedure TFrmUtilidades.DxBLbuttonEliminarClick(Sender: TObject);
begin
  try
    if (InteliDialog.ShowModal('Aviso', '¿Está seguro que desea eliminar el registros [ Importe: ' +
                                CdUtilidad.FieldByName('Utilidades').AsString + ' Aplicación: ' +
                                CdUtilidad.FieldByName('Anio').AsString + ']', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
    begin

      CdUtilidadUpt.Close;
      if not CargarDatosFiltrados(CdUtilidadUpt, 'idUtilidades', [CdUtilidad.FieldByName('IdUtilidades').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Utilidades / *Update','IdUtlidades', CdUtilidad.FieldByName('IdUtilidades').AsString]);

      if CdUtilidadUpt.Active then
        CdUtilidadUpt.Refresh
      else
        CdUtilidadUpt.Open;

      if CdUtilidadUpt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(24, ['Hay un problema con la estructura de la base de datos. Favor de contactar a su administrador del sistema.']);

      CdUtilidadUpt.Delete;
      CdUtilidadUpt.ApplyUpdates(-1);
      CdUtilidad.Refresh;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmUtilidades.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmUtilidades.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdUtilidad, 'nom_utilidades', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Utilidades de la empresa']);

  if not CrearConjunto(CdUtilidadUpt, 'nom_utilidades', ccUpdate) then
    raise InteligentException.CreateByCode(5,['Catálogo de Utilidades / *Update']);
end;

procedure TFrmUtilidades.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(CdUtilidad, 'idUtilidades', [-1]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Utilidades', 'IdUtilidades', '-1']);

      if CdUtilidad.Active then
        CdUtilidad.Refresh
      else
        CdUtilidad.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

end.
