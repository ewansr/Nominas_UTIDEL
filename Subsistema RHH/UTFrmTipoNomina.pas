unit UTFrmTipoNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, ClientModuleUnit1,
  AdvGlowButton, DB, DBClient, UInteliDialog, StdCtrls, AdvCombo, AdvEdit,
  DBAdvEd, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvExControls, JvLabel, JvSpin, JvDBSpinEdit, DBCtrls,
  AdvSmoothPanel, AdvToolBar, AdvSmoothButton, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, NxCollection,
  dblookup, DSCommonServer, DSServer, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxControls, cxContainer,
  cxEdit, cxSpinEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxLabel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxGridExportLink, ShellAPI,
  dxRibbon, dxBarBuiltInMenu, cxPC, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxSkinsForm, cxTimeEdit, rhh_genericclasses,
  frxClass, frxDBSet;

type
  TFrmTipoNomina = class(TForm)
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    cdDatosUpt: TClientDataSet;
    dsDatosUpt: TDataSource;
    cdTipoTablaISPT: TClientDataSet;
    dsTipoTablaISPT: TDataSource;
    cdMoneda: TClientDataSet;
    dsMoneda: TDataSource;
    dxbrmngr1: TdxBarManager;
    btn_Editar: TdxBarLargeButton;
    btn_agregar: TdxBarLargeButton;
    btn_Quitar: TdxBarLargeButton;
    btn_refresh: TdxBarLargeButton;
    btn_imprimir: TdxBarLargeButton;
    cdGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    DSServer1: TDSServer;
    dxBtnCerrar: TdxBarLargeButton;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    dlgSave1: TSaveDialog;
    dxPopupMenu: TdxRibbonPopupMenu;
    dxBtnCortesHorarios: TdxBarLargeButton;
    CxPageOpciones: TcxPageControl;
    cxPageTipoNomina: TcxTabSheet;
    cxPageHorario: TcxTabSheet;
    CxGridDatos: TcxGrid;
    CxDbGridTipoNomina: TcxGridDBTableView;
    CxColumnTitulo: TcxGridDBColumn;
    CxColumnDiasT: TcxGridDBColumn;
    CxColumnDescanso: TcxGridDBColumn;
    CxColumnAjustar: TcxGridDBColumn;
    CxColumnMoneda: TcxGridDBColumn;
    CxColumnTablaISR: TcxGridDBColumn;
    CxColumnSalMul: TcxGridDBColumn;
    CxColumnDescripcion: TcxGridDBColumn;
    cxLevel1: TcxGridLevel;
    pnl_DatosLinea: TPanel;
    chkAjustar: TCheckBox;
    CxDbTextTitulo: TcxDBTextEdit;
    CxDbTextEtiqueta: TcxDBTextEdit;
    CxCbbTipoCalculo: TcxDBComboBox;
    CxCbbGrupo: TcxDBLookupComboBox;
    CxDbSpinBtnDiasT: TcxDBSpinEdit;
    CxDbSpinBtnDiasD: TcxDBSpinEdit;
    CxDbTextDescripcion: TcxDBTextEdit;
    CxCbbMoneda: TcxDBLookupComboBox;
    CxCbbISPT: TcxDBLookupComboBox;
    CxCbbSalarioMultiple: TcxDBComboBox;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    CxCbbTipoOperacion: TcxDBComboBox;
    pnl_BotonesLinea: TPanel;
    btnBtn_AgregarLinea: TcxButton;
    btnBtn_AceptarLinea: TcxButton;
    btnBtn_CerrarLinea: TcxButton;
    cxlblTipoNomina: TcxLabel;
    CxDbGridHorarios: TcxGridDBTableView;
    cxLevelHorarios: TcxGridLevel;
    CxGridHorarios: TcxGrid;
    CxColumnTituloHorario: TcxGridDBColumn;
    CxColumnHoraInicio: TcxGridDBColumn;
    CxColumnHoraTermino: TcxGridDBColumn;
    CxColumnNivelAplicacion: TcxGridDBColumn;
    dxTabTipoNomina: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxskncntrlr1: TdxSkinController;
    dxbrmngr1Bar1: TdxBar;
    pnlHorarios: TPanel;
    CxDbTextTituloHorario: TcxDBTextEdit;
    CxDbTimeInicio: TcxDBTimeEdit;
    CxDbTimeTermino: TcxDBTimeEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxbtnGuardarH: TcxButton;
    cxbtnCancelarH: TcxButton;
    CxColumnCalculoBase: TcxGridDBColumn;
    cdHorarios: TClientDataSet;
    cdHorariosUpt: TClientDataSet;
    dsHorarios: TDataSource;
    dsHorariosUpt: TDataSource;
    dxTabPeriodosHorarios: TdxRibbonTab;
    dxbrmngr1Bar2: TdxBar;
    dxBtnAdd: TdxBarLargeButton;
    dxBtnEdit: TdxBarLargeButton;
    dxBtnDelete: TdxBarLargeButton;
    dxBtnRefresh: TdxBarLargeButton;
    dxBtnPrint: TdxBarLargeButton;
    dxBtnclose: TdxBarLargeButton;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxlbl8: TcxLabel;
    cxlblDiasT: TcxLabel;
    cxlblDiasD: TcxLabel;
    btnExportar: TdxBarLargeButton;
    frxReporteTipoNomina: TfrxReport;
    frxTipoNomina: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure btnBtn_CerrarLineaClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure GrabarDatos(Sender: TObject);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure EliminarBloqueo(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure cdDatosAfterOpen(DataSet: TDataSet);
    procedure cdDatosAfterRefresh(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure onClose(Sender: TObject; var Action: TCloseAction);
    procedure onShow(Sender: TObject);
    procedure dxBtnCerrarClick(Sender: TObject);
    procedure CxDbSpinBtnDiasDPropertiesChange(Sender: TObject);
    procedure CxCbbTipoCalculoPropertiesChange(Sender: TObject);
    procedure CxDbGridTipoNominaCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxDbGridTipoNominaDblClick(Sender: TObject);
    procedure dxBtnCortesHorariosClick(Sender: TObject);
    procedure dxBtnAddClick(Sender: TObject);
    procedure dxBtnEditClick(Sender: TObject);
    procedure cxbtnGuardarHClick(Sender: TObject);
    procedure dxBtnRefreshClick(Sender: TObject);
    procedure dxBtnDeleteClick(Sender: TObject);
    procedure dxBtnPrintClick(Sender: TObject);
    procedure dxBtncloseClick(Sender: TObject);
    procedure dxRibbon1TabChanged(Sender: TdxCustomRibbon);
    procedure btnExportarClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
  private
    { Private declarations }
    posicion: Integer;
    frmEmergente: TForm;
    procedure crearVentana;
    procedure addNuevo;
    procedure editarReg;
    procedure ValidaCampo;
    procedure CambiarEstadoBotones;
  public
    { Public declarations }

  end;

var
  FrmTipoNomina: TFrmTipoNomina;

implementation

uses Unit2, utfrmHorarios;

{$R *.dfm}

procedure TFrmTipoNomina.addNuevo;
var
  cursor: Tcursor;
begin
  Try
    cursor := Screen.cursor;
    try
      screen.cursor := crAppStart;
      cdDatosUpt.FieldByName('IdtipoNomina').AsInteger := 0;
      if chkAjustar.Checked then
        cdDatosUpt.FieldByName('Ajustar').AsString := 'Si'
      else
        cdDatosUpt.FieldByName('Ajustar').AsString := 'No';

      if cdDatosUpt.FieldByName('DiasDescanso').AsInteger = 0 then
        cdDatosUpt.FieldByName('SalarioMultiple').AsString := 'No';

      if cdGrupo.FieldByName('IdTipoNomina').AsInteger = -1  then
        cdDatosUpt.FieldByName('IdTipoNomina_liga').Clear;

      cdDatosupt.post;
      cdDatosUpt.ApplyUpdates(-1);
      cdDatos.Refresh;
    finally
      Screen.Cursor := cursor;
    end;
  Except
    on e:Exception do
    begin
      cdDatosUpt.Cancel;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmTipoNomina.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmTipoNomina.GrabarDatos(Sender: TObject);
begin
  Try
    btnBtn_AceptarLinea.ModalResult := mrNone;
    ValidaCampo;

    if cdDatosUpt.state = dsInsert then
    begin
      addNuevo;

      if CompareText(TWinControl(Sender).Name, 'btnBtn_AceptarLinea') = 0 then
        frmEmergente.Close;
    end;

    if cdDatosUpt.state = dsEdit then
    begin
      editarReg;
      frmEmergente.Close;
    end;

    btnBtn_AceptarLinea.ModalResult := mrOk;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmTipoNomina.onClose(Sender: TObject; var Action: TCloseAction);
begin
  frmEmergente.close;
  cdDatosUpt.Close;
end;

procedure TFrmTipoNomina.onShow(Sender: TObject);
begin
   //posicion := cbbTipoCalculo.ItemIndex;
end;

procedure TFrmTipoNomina.btnBtn_CerrarLineaClick(Sender: TObject);
begin
  frmEmergente.close;
  cdDatosUpt.Close;
end;

procedure TFrmTipoNomina.btnExportarClick(Sender: TObject);
var
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';

  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxgridDatos);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmTipoNomina.Btn_AgregarClick(Sender: TObject);
begin
  crearVentana;

  FrmEmergente.Caption := 'Crear nuevo tipo de Nómina';

  if cdDatosUpt.State in [dsInsert,dsEdit] then
    cdDatosUpt.Cancel;

  cdDatosUpt.Open;
  cdDatosUpt.Append;
  btnBtn_AgregarLinea.visible := TRUE;
  cdDatosUpt.FieldByName('DiasTrabajados').AsInteger := 1;
  cdDatosUpt.FieldByName('DiasDescanso').AsInteger := 0;
  cdDatosUpt.FieldByName('SalarioMultiple').AsString := 'Si';
  cdDatosUpt.FieldByName('TipoCalculo').AsString := 'PERIODICA';
  cdDatosUpt.FieldByName('IdTipoTablaISPT').AsInteger := cdTipoTablaISPT.FieldByName('IdTipoTablaISPT').AsInteger;
  cdDatosUpt.FieldByName('TipoOperacion').AsString := 'DIA';
  //cdDatosUpt.FieldByName('IdOrganizacion').AsInteger := 0;
  CxCbbTipoCalculoPropertiesChange(CxCbbTipoCalculo);
  CxDbSpinBtnDiasDPropertiesChange(CxDbSpinBtnDiasD);

  frmEmergente.ShowModal;
end;

procedure TFrmTipoNomina.Btn_EditarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  if cdDatos.RecordCount > 0 then
  begin
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      crearVentana;

      FrmEmergente.Caption := 'Edición de Tipo de Nómina  [' + cdDatos.FieldByName('IdTipoNomina').AsString + ' - ' + cdDatos.FieldByName('Titulo').AsString + ']';

      if not CargarDatosFiltrados(cdDatosUpt,'idTipoNomina',[cdDatos.FieldByName('IdTiponomina').AsInteger]) then
        raise InteligentException.CreateByCode(5,['IdTipoNomina']);

      if cdDatosUpt.Active then
        cdDatosUpt.refresh
      else
        cdDatosUpt.Open;

      CxDbTextTitulo.Text := cdDatosUpt.FieldByName('Titulo').AsString;
      CxDbSpinBtnDiasT.text := cdDatosUpt.fieldByName('DiasTrabajados').asString;
      CxDbSpinBtnDiasD.Text := cdDatosupt.FieldByName('DiasDescanso').asString;
      btnBtn_AgregarLinea.visible := false;
      chkAjustar.Enabled := CxDbSpinBtnDiasD.Value = 0;
      chkAjustar.Visible := CxDbSpinBtnDiasD.Value = 0;
      chkAjustar.Checked := CxDbSpinBtnDiasD.Value = 0;

      CxCbbSalarioMultiple.Enabled := Not chkAjustar.Enabled;
      CxCbbSalarioMultiple.Visible := Not chkAjustar.Enabled;

      //lbl1.Visible := Not chkAjustar.Enabled;
      cddatosupt.Edit;
    Finally
      Screen.Cursor := Cursor;
    End;

    frmEmergente.showModal;
  end;
end;

procedure TFrmTipoNomina.btn_imprimirClick(Sender: TObject);
var
 Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Reporte := 'TiposNomina.fr3';
      CompReporte := FrxReporteTipoNomina;
      CompDataSetReporte := FrxTipoNomina;

      LocalImprimeReporte(cdDatos,CxDbGridTipoNomina,'Tipos de Nómina');
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

procedure TFrmTipoNomina.Btn_QuitarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      cdDatos.Open;

      if not CargarDatosFiltrados(cdDatosUpt,'idTipoNomina',[cdDatos.FieldByName('IdTiponomina').AsInteger]) then
        raise InteligentException.CreateByCode(5,['IdTipoNomina']);

      if cdDatosUpt.Active then
        cdDatosUpt.refresh
      else
        cdDatosUpt.Open;
    Finally
      Screen.Cursor := Cursor;
    End;

    if cdDatosupt.RecordCount = 1 then
    begin
      if InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el Tipo de Nómina ' + cdDatos.FieldByName('Titulo').asstring + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin
        Cursor := Screen.Cursor;
        Try
          Screen.Cursor := crHourGlass;

          cdDatosUpt.Delete;
          cdDatosUpt.applyUpdates(-1);
          cdDatos.refresh;
        Finally
          Screen.Cursor := Cursor;
        End;
      end;
    end
    else
      raise InteligentException.CreateByCode(22, ['Tipos de Nómina']);
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('No Hay Datos Para Modificar', 'Ó La Lista Esta Vacia: '+ #10 + #10 + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmTipoNomina.Btn_RefreshClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.cursor;
    screen.Cursor := crAppStart;
    if cdDatos.Active then
      cdDatos.Refresh
    else
      cdDatos.Open;
  finally
    screen.Cursor := cursor;
  end;
end;

procedure TFrmTipoNomina.EliminarBloqueo(DataSet: TDataSet);
begin
  if DataSet.State = dsEdit then
    CancelarBloqueo(cdDatosUpt, DataSet.FieldByName('IdTipoNomina').AsInteger);
end;

procedure TFrmTipoNomina.cdDatosAfterOpen(DataSet: TDataSet);
begin
  CambiarEstadoBotones;
end;

procedure TFrmTipoNomina.cdDatosAfterRefresh(DataSet: TDataSet);
begin
  CambiarEstadoBotones;
end;

procedure TFrmTipoNomina.crearVentana;
begin
  frmEmergente := tform.create(self);
  ClientModule1.ComponentColor(frmEmergente);
  frmEmergente.BorderStyle := bsDialog;
  frmEmergente.Position := poScreenCenter;
  frmEmergente.Width := pnl_DatosLinea.Width + 20;
  frmEmergente.Height := ((pnl_DatosLinea.Height) + (pnl_BotonesLinea.Height) + 50);
  pnl_BotonesLinea.Align := alBottom;
  pnl_DatosLinea.Align := alClient;
  pnl_BotonesLinea.visible := true;
  pnl_DatosLinea.visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;
  pnl_DatosLinea.parent := frmEmergente;
  CxDbSpinBtnDiasD.Text:='0';
  frmEmergente.OnClose := onClose;
  frmEmergente.onShow := onShow;
end;

procedure TFrmTipoNomina.cxbtnGuardarHClick(Sender: TObject);
begin
  try
    if Length(trim(CxDbTextTitulo.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Titulo']);

    if Length(trim(CxDbTimeInicio.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Horario de Inicio']);

    if Length(trim(CxDbTimeTermino.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Horario de Término']);

    if (cdHorariosUpt.Active) and  (cdHorariosUpt.State in [dsEdit, dsInsert]) then
    begin
      cdHorariosUpt.Post;
      cdHorariosupt.ApplyUpdates(-1);
      dxBtnRefreshClick(Nil);
    end;
  except
    on e: InteligentException do
    begin
      if cdHorariosUpt.State in [dsEdit, dsInsert] then
        cdHorariosUpt.Cancel;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmTipoNomina.CxCbbTipoCalculoPropertiesChange(Sender: TObject);
begin
  try

    if (cdDatosUpt.State = dsEdit) and (not cdDatosUpt.FieldByName('IdTipoNomina_Liga').IsNull) then
      raise InteligentException.CreateByCode(24, ['No se puede realizar esta modificación, debido a que la Nómina se encuentra en un grupo.']);

    if cdDatosUpt.State = dsInsert then
    begin
      cdGrupo.Filtered := False;
      cdGrupo.Filter := 'TipoCalculo <> ' + QuotedStr(CxCbbTipoCalculo.Text);
      cdGrupo.Filtered := True;
    end;

    if CxCbbTipoCalculo.ItemIndex > 0 then
    begin
      //Panel2.Font.Color := clSilver;
      CxDbSpinBtnDiasT.Value := 1;
      CxDbSpinBtnDiasD.Value := 0;
      CxDbSpinBtnDiasDPropertiesChange(CxDbSpinBtnDiasD);
    end
    else
    begin
      chkAjustar.Enabled := True;
    end;

    CxDbSpinBtnDiasT.Enabled := CxCbbTipoCalculo.ItemIndex = 0;
    CxDbSpinBtnDiasD.Enabled := CxCbbTipoCalculo.ItemIndex = 0;
  except
    On e:InteligentException do
    begin
      //cdDatosUpt.Close;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      CxCbbTipoCalculo.ItemIndex := posicion;
      //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    On e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmTipoNomina.CxDbGridTipoNominaCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Btn_EditarClick(nil);
end;

procedure TFrmTipoNomina.CxDbGridTipoNominaDblClick(Sender: TObject);
begin
  Btn_EditarClick(nil);
end;

procedure TFrmTipoNomina.CxDbSpinBtnDiasDPropertiesChange(Sender: TObject);
begin
  //chkAjustar.Enabled := CxDbSpinBtnDiasD.Value = 0;
  //chkAjustar.Visible := CxDbSpinBtnDiasD.Value = 0;
  //chkAjustar.Checked := CxDbSpinBtnDiasD.Value = 0;

  CxCbbSalarioMultiple.Enabled := CxDbSpinBtnDiasD.Value > 0;
  CxCbbSalarioMultiple.Visible := CxDbSpinBtnDiasD.Value > 0;

  cxlabel5.Visible := CxDbSpinBtnDiasD.Value > 0;
end;

procedure TFrmTipoNomina.dxBtnAddClick(Sender: TObject);
begin
  try
    try
      if Assigned(frmEmergente) then
        FrmEmergente.Destroy;

      FrmEmergente := TForm.Create(self);
      FrmEmergente.Caption := 'Nueva captura de corte horario';
      FrmEmergente.Position := poScreenCenter;
      FrmEmergente.BorderStyle := bsDialog;
      FrmEmergente.Width := 490;
      FrmEmergente.height := 160;
      pnlHorarios.Parent := FrmEmergente;
      pnlHorarios.Align := AlClient;
      pnlHorarios.Visible := true;

      if not CargarDatosFiltrados(cdHorariosUpt, 'IdHorario', [-9]) then
        raise InteligentException.CreateByCode(6, ['nom_tablahorarios', '-9', 'IdHorario']);

      if cdHorariosUpt.Active then
        cdHorariosUpt.Refresh
      else
        cdHorariosUpt.Open;

      cdHorariosUpt.Append;
      cdHorariosUpt.FieldByName('IdHorario').AsInteger := 0;
      cdHorariosUpt.FieldByName('NivelAplicacion').AsString := 'TipoNomina';
      cdHorariosUpt.FieldByName('IdTIpoNomina').AsInteger := cdDatos.FieldByName('IdTipoNomina').AsInteger;

      FrmEmergente.ShowModal;
    finally
      if pnlHorarios.Parent <> self then
      begin
        pnlHorarios.Align := AlNone;
        pnlHorarios.Visible := False;
        pnlHorarios.Parent := Self;
      end;
    end;
  except
    on e: InteligentException do
    begin
      if cdHorariosUpt.State in [dsInsert, dsEdit] then
        cdHorarios.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmTipoNomina.dxBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTipoNomina.dxBtncloseClick(Sender: TObject);
begin
  dxRibbon1.ActiveTab := dxTabTipoNomina;
  CxPageOpciones.ActivePage := cxPageTipoNomina;
  dxTabPeriodosHorarios.Visible := False;
end;

procedure TFrmTipoNomina.dxBtnCortesHorariosClick(Sender: TObject);
var
  cursor: TCursor;
begin


  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
       if (cdDatos.Active) and (cdDatos.RecordCount > 0) then
      begin
        if cdDatos.FieldByName('TipoOperacion').AsString <> 'HORA' then
          raise InteligentException.CreateByCode(24, ['El tipo de Nómina que seleccionaste no está configurada para cálculo por fracción de hora.']);

        Application.CreateForm(TFrmHorarios, FrmHorarios);
        FrmHorarios.IdTipoNomina := cdDatos.FieldByName('IdTipoNomina').AsInteger;
        FrmHorarios.ShowModal;
      end;



//      if (cdDatos.Active) and (cdDatos.RecordCount > 0) then
//      begin
//        if cdDatos.FieldByName('TipoOperacion').AsString <> 'HORA' then
//          raise InteligentException.CreateByCode(24, ['El tipo de Nómina que seleccionaste no está configurada para cálculor por fracción de hora.']);
//
//        if not CargarDatosFiltrados(cdHorarios, 'IdTipoNomina,NivelAplicacion', [cdDatos.FieldByName('IdTipoNomina').AsString, 'TipoNomina']) then
//          raise InteligentException.CreateByCode(6, ['nom_tablahorarios', cdDatos.FieldByName('IdTipoNomina').AsString, 'IdAplicacion_liga']);
//
//        if cdhorarios.Active then
//          cdHorarios.Refresh
//        else
//          cdHorarios.Open;
//
//        CxPageOpciones.ActivePage := cxPageHorario;
//        dxRibbon1.ActiveTab := dxTabPeriodosHorarios;
//        cxlblTipoNomina.Caption := cdDatos.FieldByName('Titulo').AsString;
//        cxlblDiasT.Caption := cdDatos.FieldByName('DiasTrabajados').AsString;
//        cxlblDiasD.Caption := cdDatos.FieldByName('DiasDescanso').AsString;
//      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
     InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTipoNomina.dxBtnDeleteClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    if (cdHorarios.RecordCount > 0) and (inteliDialog.ShowModal('Confirmación','¿Está seguro que desea eliminar el corte seleccionado?', mtConfirmation, [mbYes, mbNO], 0) = mrYes) then
    begin
      if not CargarDatosFiltrados(cdHorariosUpt, 'IdHorario', [cdHorarios.FieldByName('IdHorario').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['IdHorario', cdHorarios.FieldByName('IdHorario').AsString, 'nom_tablahorarios']);

      if cdHorariosUpt.RecordCount = 1 then
      begin
        cdHorariosUpt.Delete;
        cdHorariosUpt.ApplyUpdates(-1);
        dxBtnRefreshClick(niL);
      end;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTipoNomina.dxBtnEditClick(Sender: TObject);
begin
  try
    try
      if Assigned(frmEmergente) then
        FrmEmergente.Destroy;

      FrmEmergente := TForm.Create(self);
      FrmEmergente.Caption := 'Nueva captura de corte horario';
      FrmEmergente.Position := poScreenCenter;
      FrmEmergente.BorderStyle := bsDialog;
      FrmEmergente.Width := 490;
      FrmEmergente.height := 160;
      pnlHorarios.Parent := FrmEmergente;
      pnlHorarios.Align := AlClient;
      pnlHorarios.Visible := true;

      if not CargarDatosFiltrados(cdHorariosUpt, 'IdHorario', [cdHorarios.FieldByName('IdHorario').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['nom_tablahorarios', '-9', 'IdHorario']);

      if cdHorariosUpt.Active then
        cdHorariosUpt.Refresh
      else
        cdHorariosUpt.Open;

      cdHorariosUpt.Edit;

      FrmEmergente.ShowModal;
    finally
      if pnlHorarios.Parent <> self then
      begin
        pnlHorarios.Align := AlNone;
        pnlHorarios.Visible := False;
        pnlHorarios.Parent := Self;
      end;
    end;
  except
    on e: InteligentException do
    begin
      if cdHorariosUpt.State in [dsInsert, dsEdit] then
        cdHorarios.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmTipoNomina.dxBtnPrintClick(Sender: TObject);
var
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';

  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGridHorarios);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmTipoNomina.dxBtnRefreshClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.cursor;
    Screen.Cursor := crAppStart;

    if cdHorarios.Active then
      cdHorarios.Refresh
    else
      cdHorarios.Open;

  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmTipoNomina.dxRibbon1TabChanged(Sender: TdxCustomRibbon);
begin
  if dxribbon1.ActiveTab = dxTabPeriodosHorarios then
  begin
    dxRibbon1.ActiveTab := dxTabPeriodosHorarios;
    CxPageOpciones.ActivePage := cxPageHorario;
    dxTabPeriodosHorarios.Visible := true;
  end
  else if dxRibbon1.ActiveTab = dxTabTipoNomina then
  begin
    dxRibbon1.ActiveTab := dxTabTipoNomina;
    CxPageOpciones.ActivePage := cxPageTipoNomina;
    dxTabTipoNomina.Visible := true;
  end;
end;

procedure TFrmTipoNomina.editarReg;
var
  cursor: TCursor;
begin
  cursor := Screen.cursor;
  try
    screen.cursor := crAppStart;
    if cdGrupo.FieldByName('IdTipoNomina').AsInteger = -1  then
        cdDatosUpt.FieldByName('IdTipoNomina_liga').Clear;

    cdDatosupt.post;
    cdDatosUpt.ApplyUpdates(-1);
    cdDatos.Refresh;
  finally
    Screen.Cursor := cursor;
  end;
end;

procedure TFrmTipoNomina.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  (*if PageArchivo.Parent <> Form2.tbMain then
  begin
    for i := 0 to Form2.tbMain.AdvPageCount -1 do
      Form2.tbMain.AdvPages[i].PageIndex := i +1;

    //PageArchivo.Parent := Form2.tbMain;
    //PageArchivo.PageIndex := 0;
    //Form2.tbMain.ActivePage := PageArchivo;
  end; *)
end;

procedure TFrmTipoNomina.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Sale: Word;
begin
  (*if Form2.tbMain.ActivePage = PageArchivo then
    Sale := 1
  else
    Sale := Form2.tbMain.ActivePageIndex -1;

  PageArchivo.Parent := Menu;

  for i := 0 to Form2.tbMain.AdvPageCount -1 do
    Form2.tbMain.AdvPages[i].PageIndex := i;

  Form2.tbMain.ActivePageIndex := Sale; *)

  if cdHorarios.ProviderName <> '' then
    EliminarConjunto(cdHorarios);

  if cdHorariosUpt.ProviderName <> '' then
    EliminarConjunto(cdHorariosUpt);

  EliminarConjunto([cdDatos, cdDatosUpt, cdTipoTablaISPT]);

  LiberarVentana(Self, Action);
end;

procedure TFrmTipoNomina.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  AccedeACoordenadas(Self);
  ClientModule1.ComponentColor(Self);
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdMoneda, 'nuc_moneda', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Monedas']);

      cdMoneda.Open;

      if cdMoneda.RecordCount = 0 then
        raise InteligentException.CreateByCode(30, ['Monedas']);


      if Not CrearConjunto(cdTipoTablaISPT, 'nom_tipotablaispt', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Tabla de ISPT']);

      cdTipoTablaISPT.Open;

      if cdTipoTablaISPT.RecordCount = 0 then
      begin
        cdTipoTablaISPT.Close;
        raise InteligentException.CreateByCode(30, ['Tipos de Tabla de ISPT']);
      end;

      if Not CrearConjunto(cdDatos, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipo de Nómina']);

      if Not CrearConjunto(cdDatosUpt, 'nom_tiponomina', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Tipo de Nómina']);

      if not CrearConjunto(cdHorarios, 'nom_tablahorarios', CcCatalog) then
        raise inteligentException.CreateByCode(5, ['Tabla Corte Horarios']);

      if not CrearConjunto(cdHorariosUpt, 'nom_tablahorarios', ccUpdate) then
        raise inteligentException.CreateByCode(5, ['Tabla Corte Horarios / UPT']);

      cdMoneda.Open;

      cdDatos.Open;
      cdDatosUpt.Open;

      dxRibbon1.ActiveTab := dxTabTipoNomina;
      CxPageOpciones.ActivePage := cxPageTipoNomina;
      CxPageOpciones.HideTabs := True;
      dxTabPeriodosHorarios.Visible := False;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    On e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    On e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmTipoNomina.FormShow(Sender: TObject);
begin
  if Not CrearConjunto(cdGrupo, 'nom_tiponomina', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Monedas']);

  if not CargarDatosFiltrados(cdGrupo, 'TipoCalculo', [-1]) then
    raise InteligentException.CreateByCode(6, ['Tipo Nómina','Tipo Cálculo',' -1']);

  if cdGrupo.Active then
    cdGrupo.Refresh
  else
    cdGrupo.Open;


  //cdGrupo.First;
  //cbbGrupo.Clear;
  //cbbGrupo.Items.AddObject(cdGrupo.FieldByName('Titulo').AsString, Tobject(cdGrupo.FieldByName('IdTipoNomina').AsInteger));
  //while not cdGrupo.eof do
  //begin
    //cbbGrupo.Items.AddObject(cdGrupo.FieldByName('Titulo').AsString, Tobject(cdGrupo.FieldByName('IdTipoNomina').AsInteger));
    //cdGrupo.Next;
  //end;

end;

procedure TFrmTipoNomina.ValidaCampo;
begin
  if trim(CxDbTextTitulo.Text) = '' then
  begin
    CxDbTextTitulo.SetFocus;
    raise InteligentException.CreateByCode(18,['titulo']);
  end;

  if  CxDbSpinBtnDiasT.Value = 0 then
  begin
    CxDbSpinBtnDiasT.SetFocus;
    raise InteligentException.CreateByCode(18,['Dias Trabajados']);
  end;

  if trim(CxDbTextDescripcion.text) = '' then
  begin
    CxDbTextDescripcion.SetFocus;
    raise InteligentException.CreateByCode(18,['Descripcion']);
  end;
end;

procedure TFrmTipoNomina.CambiarEstadoBotones;
begin
  Btn_Editar.Enabled := cdDatos.Active and (cdDatos.RecordCount > 0);
  Btn_Quitar.Enabled := cdDatos.Active and (cdDatos.RecordCount > 0);
  Btn_Imprimir.Enabled := cdDatos.Active and (cdDatos.RecordCount > 0);
end;

end.
