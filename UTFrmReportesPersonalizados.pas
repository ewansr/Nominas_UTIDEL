unit UTFrmReportesPersonalizados;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGridCustomView, cxGrid, DBClient, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbon, dxSkinsdxBarPainter, cxSSheet, dxBar,
  dxBarExtItems, ImgList, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxRibbonCustomizationForm, cxContainer, cxGroupBox, Menus, StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxSplitter, ClientModuleUnit1,
  UInteliDialog, Mask, DBCtrls, cxDBEdit;

type
  TFrmReportesPersonalizados = class(TForm)
    CdReportes: TClientDataSet;
    dsReportes: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxstylFondo: TcxStyle;
    DxRibbonMainTab1: TdxRibbonTab;
    DxRibbonMain: TdxRibbon;
    DxBManagerMain: TdxBarManager;
    dxBarFontNameCombo1: TdxBarFontNameCombo;
    dxBarColorCombo1: TdxBarColorCombo;
    dxBarToolbarsListItem1: TdxBarToolbarsListItem;
    dxBarSpinEdtTamano: TdxBarSpinEdit;
    DxBarBtnNuevo: TdxBarLargeButton;
    DxBarBtnEditar: TdxBarButton;
    DxBarBtnEliminar: TdxBarButton;
    DxBarArchivo: TdxBar;
    btnEditar: TdxBarLargeButton;
    CxImageIconos: TcxImageList;
    CxImageIconos16: TcxImageList;
    CxGridConceptos: TcxGridDBTableView;
    CxLevelDatos: TcxGridLevel;
    CxGridDatosConceptos: TcxGrid;
    CxLbl1: TcxLabel;
    CdConceptos: TClientDataSet;
    dsConceptos: TDataSource;
    CxColumnTipoNomina: TcxGridDBColumn;
    CxColumnTitulo: TcxGridDBColumn;
    CxColumnDescripcion: TcxGridDBColumn;
    pnlInsertarReporte: TPanel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    cdTiposNomina: TClientDataSet;
    dsTiposNomina: TDataSource;
    cdReportesInsercion: TClientDataSet;
    dsReportesInsercion: TDataSource;
    dxToolBarDxBManagerMainBar1: TdxBar;
    btnConfigurarReporte: TdxBarLargeButton;
    cbbTipoNomina: TcxDBLookupComboBox;
    btnEliminar: TdxBarLargeButton;
    cdDatosPersonales: TClientDataSet;
    cdReporteDetalle: TClientDataSet;
    edtTitulo: TcxDBTextEdit;
    edtDescripcion: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DxBarBtnNuevoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfigurarReporteClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure panelInsertarReporte;
    procedure crearConjuntoCdReportesInsercion;
    procedure btnEditarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
    formularioInsertarReporte : TForm;
  public
    { Public declarations }
  end;

var
  FrmReportesPersonalizados: TFrmReportesPersonalizados;

implementation

{$R *.dfm}

Uses UtFrmWizardReporteExcel;

procedure TFrmReportesPersonalizados.btnConfigurarReporteClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    Application.CreateForm(TFrmWizardReporteExcel, FrmWizardReporteExcel);
    //Enviar datos al wizard
    FrmWizardReporteExcel.IdReporte := CdReportes.FieldByName('IdReporte').AsInteger;
    FrmWizardReporteExcel.nombreReporte := cdReportes.fieldByName('Descripcion').AsString;
    FrmWizardReporteExcel.idTipoNomina := cdReportes.fieldByName('IdTipoNomina').AsInteger;
    FrmWizardReporteExcel.tipoNomina := cdReportes.fieldByName('TipoNomina').AsString;
    FrmWizardReporteExcel.ShowModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmReportesPersonalizados.btnEditarClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;

    if cdReporteDetalle.Active then
      cdReporteDetalle.Close;

    if Not CrearConjunto(cdReporteDetalle, 'nuc_reportedetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['nuc_reportedetalle']);

    if Not CargarDatosFiltrados(cdReporteDetalle, 'idCReporte, idConcepto, modo, Funcion, idReporte', [-1,-1, -1, -1, CdReportes.FieldByName('IdReporte').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['IdReporte', 'nuc_reportedetalle', 'IdReporte']);

    if cdReporteDetalle.Active then
      cdReporteDetalle.Refresh
    else
      cdReporteDetalle.Open;

    if cdReporteDetalle.RecordCount > 0 then
      cbbTipoNomina.Enabled := False
    else
      cbbTipoNomina.Enabled := True;


    crearConjuntoCdReportesInsercion;

    panelInsertarReporte;

    cdReportesInsercion.Locate('IdReporte', CdReportes.FieldByName('IdReporte').AsInteger, []);

    cdReportesInsercion.Edit;
    formularioInsertarReporte.ShowModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmReportesPersonalizados.btnEliminarClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  if InteliDialog.ShowModal('Aviso', 'Desea eliminar el reporte seleccionado?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;
      //Eliminar registros de la tabla nom_datosgral_excel
      if cdDatosPersonales.Active then
        cdDatosPersonales.Close;

      if Not crearConjunto(cdDatosPersonales, 'nom_datosgral_excel', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['nom_datosgral_excel']);

      if Not CargarDatosFiltrados(cdDatosPersonales, 'IdDatoGral, IdReporte', [-1, CdReportes.FieldByName('IdReporte').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['IdReporte', 'nom_datosgral_excel', 'IdReporte']);

      if cdDatosPersonales.Active then
        cdDatosPersonales.Refresh
      else
        cdDatosPersonales.Open;

      cdDatosPersonales.First;
      while Not cdDatosPersonales.Eof do
      begin
        cdDatosPersonales.Delete;
        cdDatosPersonales.ApplyUpdates(-1);
      end;

      //Eliminar registros de la tabla nuc_reportedetalle
      if cdReporteDetalle.Active then
        cdReporteDetalle.Close;

      if Not CrearConjunto(cdReporteDetalle, 'nuc_reportedetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['nuc_reportedetalle']);

      if Not CargarDatosFiltrados(cdReporteDetalle, 'idCReporte, idConcepto, modo, Funcion, idReporte', [-1,-1, -1, -1, CdReportes.FieldByName('IdReporte').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['IdReporte', 'nuc_reportedetalle', 'IdReporte']);

      if cdReporteDetalle.Active then
        cdReporteDetalle.Refresh
      else
        cdReporteDetalle.Open;

      cdReporteDetalle.First;
      while Not cdReporteDetalle.Eof do
      begin
        cdReporteDetalle.Delete;
        cdReporteDetalle.ApplyUpdates(-1);
      end;

      crearConjuntoCdReportesInsercion;
      //Eliminar el reporte seleccionado
      CdReportesInsercion.Locate('IdReporte', CdReportes.FieldByName('IdReporte').AsInteger, []);
      CdReportesInsercion.Delete;
      cdReportesInsercion.ApplyUpdates(-1);
      CdReportes.Refresh;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFrmReportesPersonalizados.btnGuardarClick(Sender: TObject);
var
  error : Boolean;
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    error := False;
    if cbbTipoNomina.EditValue = Null then
    begin
      error := True;
      cbbTipoNomina.SetFocus;
    end
    else if edtTitulo.Text = '' then
    begin
      error := True;
      edtTitulo.SetFocus;
    end
    else if edtDescripcion.Text = '' then
    begin
      error := True;
      edtDescripcion.SetFocus;
    end;

    if Not error then
    begin
      cdReportesInsercion.Post;
      cdReportesInsercion.ApplyUpdates(-1);
      CdReportes.Refresh;
      formularioInsertarReporte.Close;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmReportesPersonalizados.crearConjuntoCdReportesInsercion;
begin
  //Crea conjunto para cdReportesInsercion
  if cdReportesInsercion.Active then
    cdReportesInsercion.Close;

  if not CrearConjunto(cdReportesInsercion, 'nuc_reporteexcel', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nuc_reporteexcel']);

  if cdReportesInsercion.Active then
    cdReportesInsercion.Refresh
  else
    cdReportesInsercion.Open;
end;

procedure TFrmReportesPersonalizados.btnCancelarClick(Sender: TObject);
begin
  cdReportesInsercion.Cancel;
  formularioInsertarReporte.Close;
end;

procedure TFrmReportesPersonalizados.DxBarBtnNuevoClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    cbbTipoNomina.Enabled := True;
    crearConjuntoCdReportesInsercion;

    panelInsertarReporte;
    cdReportesInsercion.Append;
    cbbTipoNomina.ItemIndex := 0;
    cdReportesInsercion.FieldByName('IdReporte').AsInteger := 0;
    cdReportesInsercion.FieldByName('Titulo').AsString := '';
    cdReportesInsercion.FieldByName('Descripcion').AsString := '';

    formularioInsertarReporte.ShowModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmReportesPersonalizados.FormCreate(Sender: TObject);
begin
  if not crearConjunto(CdConceptos, 'nom_concepto', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_concepto']);

  if not CrearConjunto(cdReportes, 'nuc_reporteexcel', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_reportexcel']);

  if Not CrearConjunto(cdTiposNomina, 'nom_tiponomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_tiponomina_global']);
  cdTiposNomina.Open;
end;

procedure TFrmReportesPersonalizados.FormShow(Sender: TObject);
begin
  if not cargarDatosFiltrados(cdReportes, 'IdReporte', [-1]) then
    raise InteligentException.CreateByCode(6, ['IdReporte', 'nuc_reporteExcel', '-1']);

  if cdReportes.Active then
    cdReportes.Refresh
  else
    cdReportes.Open;
end;

procedure TFrmReportesPersonalizados.panelInsertarReporte;
begin
  //Ventana para abrir el formulario para agregar un nuevo reporte
  pnlInsertarReporte.Visible := True;
  pnlInsertarReporte.Enabled := True;

  formularioInsertarReporte := TForm.Create(nil);
  formularioInsertarReporte.Caption :=   'Nuevo Reporte';
  pnlInsertarReporte.Parent := formularioInsertarReporte;

  formularioInsertarReporte.Top         :=       58;
  formularioInsertarReporte.Left        :=      302;
  formularioInsertarReporte.Width       :=      400;
  formularioInsertarReporte.Height      :=      200;
  formularioInsertarReporte.BorderStyle := bsSingle;
  formularioInsertarReporte.Position    := poMainFormCenter;
  formularioInsertarReporte.ShowHint    :=     True;
  pnlInsertarReporte.Visible            :=     True;
  pnlInsertarReporte.Align              := alClient;
  formularioInsertarReporte.AutoSize    :=     True;
  formularioInsertarReporte.BorderIcons := [biSystemMenu];
end;

end.
