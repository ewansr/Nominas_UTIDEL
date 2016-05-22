unit UtFrmfrmConceptoExtraEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, cxGroupBox, DBClient,
  cxSplitter, dxRibbonRadialMenu, cxGridCustomPopupMenu, cxGridPopupMenu,
  ExtCtrls, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit, ClientModuleUnit1,UInteliDialog,
  ComCtrls, AdvDateTimePicker, AdvDBDateTimePicker, AdvCombo, AdvDBComboBox,
  AdvEdit, DBAdvEd, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, URegistro, DBCtrls, JvDBImage, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  rhh_genericclasses, frxClass, frxDBSet, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, cxDBEdit, cxDBLabel, cxImage, cxCalendar,
  cxRadioGroup, cxCurrencyEdit;

type
  TfrmConceptoExtraEmpleado = class(TForm)
    dxbrmngr1: TdxBarManager;
    radial1: TdxRibbonRadialMenu;
    cxspltr1: TcxSplitter;
    cdEmpleados: TClientDataSet;
    dsEmpleados: TDataSource;
    cdConExtXEmp: TClientDataSet;
    dsConceptosExtra: TDataSource;
    tbdxbrmngr1Bar1: TdxBar;
    btnBtnAgregar: TdxBarLargeButton;
    groupBox1: TcxGroupBox;
    dxBarSite1: TdxBarDockControl;
    groupBox2: TcxGroupBox;
    cxDBGrid1: TcxGrid;
    CxGridNivelGrid1Level1: TcxGridLevel;
    cxDBGrid2: TcxGrid;
    cxDbGridCocneptosExtra: TcxGridDBTableView;
    CxGridNivelGrid1Level2: TcxGridLevel;
    btnBtnEliminar: TdxBarLargeButton;
    btnBtnEditar: TdxBarLargeButton;
    btnBtnActualizar: TdxBarLargeButton;
    cxDbGridEmpleados: TcxGridDBTableView;
    cdConceptos: TClientDataSet;
    cdUptConExtXEmp: TClientDataSet;
    grdColumDbGridEmpleadosColumn1: TcxGridDBColumn;
    grdColumDbGridEmpleadosColumn2: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn1: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn2: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn3: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn4: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn5: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn6: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn7: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn8: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn9: TcxGridDBColumn;
    grdColumDbGridCocneptosExtraColumn10: TcxGridDBColumn;
    cxGridRepos1: TcxGridViewRepository;
    cxDbGridGridRepos1DBTableView1: TcxGridDBTableView;
    grdColumDbGridGridRepos1DBTableView1Column1: TcxGridDBColumn;
    dsConceptos: TDataSource;
    dsUptConExtxEmp: TDataSource;
    gridCardDBGrid2DBCardView1: TcxGridDBCardView;
    cxRowCardDBGrid2DBCardView1Row2: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row3: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row4: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row5: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row6: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row7: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row8: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row9: TcxGridDBCardViewRow;
    cxRowCardDBGrid2DBCardView1Row10: TcxGridDBCardViewRow;
    pnlEdicion: TPanel;
    EdtSaldo: TDBAdvEdit;
    CbbModo: TAdvDBComboBox;
    btn2: TcxButton;
    cbbConceptos: TcxExtLookupComboBox;
    lbl2: TcxLabel;
    cdCExtraEmpleado: TClientDataSet;
    dsCExtraEmpleado: TDataSource;
    btn1: TcxButton;
    CxBtnAsimilado: TcxButton;
    dxBtnCerrar: TdxBarLargeButton;
    btnImprmir: TdxBarLargeButton;
    frxEmpleados: TfrxDBDataset;
    frxConceptoExtra: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    frxReporteConceptoExtra: TfrxReport;
    CxStyleCxGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    CxColumnReingreso: TcxGridDBColumn;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBtnCargarTodo: TdxBarLargeButton;
    pnl1: TPanel;
    btnBuscar: TcxButton;
    edtFNombre: TcxTextEdit;
    cxlbl1: TcxLabel;
    cxLabel1: TcxLabel;
    cxdblblNombreCompleto: TcxDBLabel;
    cxlblreingreso: TcxLabel;
    cxlblCUrp: TcxLabel;
    cxlblRfc: TcxLabel;
    cxlbliMSS: TcxLabel;
    cxdblbl1: TcxDBLabel;
    cxdblblCurp: TcxDBLabel;
    cxdblblRfc: TcxDBLabel;
    cxdblblnumeroImss: TcxDBLabel;
    ImgFoto: TcxDBImage;
    CxColumnTituloNomina: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    dxPopup1: TdxRibbonPopupMenu;
    dxbrmngr1Bar1: TdxBar;
    dxBtnEditarFicha: TdxBarLargeButton;
    dxbrmngr1Bar2: TdxBar;
    lblNombreEmpleado: TcxLabel;
    CxDateFechaAplicacion: TcxDBDateEdit;
    cxlbl2: TcxLabel;
    cxlblCantidad: TcxLabel;
    CxDbTextCantidad: TcxDBTextEdit;
    CxDateFechaRegistro: TcxDBDateEdit;
    cxlbl3: TcxLabel;
    dxRbFecha: TcxRadioButton;
    dxRbMonto: TcxRadioButton;
    CxCurrencyMontoMaximo: TcxDBCurrencyEdit;
    CxDateFechaTermino: TcxDBDateEdit;
    CxColumnConceptosExtraRegistrados: TcxGridDBColumn;
    cxstylConceptoExtraIncluidos: TcxStyle;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    CxRowCardFechaRegistro: TcxGridDBCardViewRow;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure cxDbGridEmpleadosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBtnAgregarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtFNombreKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBtnEditarClick(Sender: TObject);
    procedure btnBtnEliminarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure btnBtnActualizarClick(Sender: TObject);
    procedure cxDbGridConceptosExtrasEmpleadoDblClick(Sender: TObject);
    procedure cdConceptosAfterScroll(DataSet: TDataSet);
    procedure CxBtnAsimiladoClick(Sender: TObject);
    procedure EdtCantidadChange(Sender: TObject);
    procedure dxBtnCerrarClick(Sender: TObject);
    procedure btnImprmirClick(Sender: TObject);
    procedure dxBtnCargarTodoClick(Sender: TObject);
    procedure cdEmpleadosAfterScroll(DataSet: TDataSet);
    procedure dxBtnEditarFichaClick(Sender: TObject);
    procedure dxRbMontoClick(Sender: TObject);
    procedure dxRbFechaClick(Sender: TObject);
    procedure cxDbGridEmpleadosStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    procedure CargarConceptos;
    procedure AccedeACoordenadas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConceptoExtraEmpleado: TfrmConceptoExtraEmpleado;

implementation

Uses
  UTFrmCalculoSalario, UtfrmFichaGeneralPersonal;

{$R *.dfm}

procedure TfrmConceptoExtraEmpleado.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := Self.Left;
  xTop := Self.Top;
  xWidth := Self.Width;
  xHeight := Self.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left', Existe));
    if Not Existe then xLeft := Self.Left;
  Except
    xLeft := Self.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top', Existe));
    if Not Existe then xTop := Self.Top;
  Except
    xTop := Self.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width', Existe));
    if Not Existe then xWidth := Self.Width;
  Except
    xWidth := Self.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height', Existe));
    if Not Existe then xHeight := Self.Height;
  Except
    xHeight := Self.Height;
  End;

  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Left := xLeft;
  Self.Width := xWidth;
  Self.Top := xTop;
  Self.Height := xHeight;
end;

procedure TfrmConceptoExtraEmpleado.btn1Click(Sender: TObject);
var
  procesar : Boolean;
begin
  try
    procesar := True;

    if cdConceptos.FieldByName('Tipo').AsString = 'PORCENTAJE' then
    begin
      if StrToInt(CxDbTextCantidad.Text) > 50 then
      begin
        if (InteliDialog.ShowModal('Aviso', 'El porcentaje es mayor del 50 %. ¿Desea proceder a registrar el concepto extra?', mtConfirmation, [mbYes, mbNo], 0 )) = mrNo then
          procesar := False;
      end;
    end;

    if procesar = True then
    begin
      if length(Trim(CdUptConExtXEmp.FieldByName('maximo').AsString)) = 0 then
        CdUptConExtXEmp.FieldByName('maximo').AsFloat := 0;

      if CdUptConExtXEmp.FieldByName('maximo').AsFloat = 0 then
        CdUptConExtXEmp.FieldByName('saldo').AsFloat := -1
      else
        CdUptConExtXEmp.FieldByName('saldo').AsFloat := 0;

      if not DxrbMonto.Checked then
        CdUptConExtXEmp.FieldByName('maximo').AsFloat := 0;

      if dxRbFecha.Checked then
        cdUptConExtXEmp.FieldByName('FechaTermino').AsDateTime := cxDateFechaTermino.Date
      else
        cdUptConExtXEmp.FieldByName('FechaTermino').Clear;

      if CdUptConExtXEmp.FieldByName('maximo').AsFloat < CdUptConExtXEmp.FieldByName('saldo').AsFloat then
        raise InteligentException.Create('El valor del saldo debe ser menor que el valor de máximo, verifique lo capturado.');

      if length(Trim(CdUptConExtXEmp.FieldByName('cantidad').AsString)) = 0 then
        raise InteligentException.Create('Debe capturar un valor en el campo cantidad.');


      if CdUptConExtXEmp.State in [dsInsert,dsEdit] then
      begin
        cdUptConExtXEmp.FieldByName('IdConceptoExtra').AsInteger := cbbConceptos.EditValue;
        CdUptConExtXEmp.Post;
        CdUptConExtXEmp.ApplyUpdates(-1);
        btnBtnActualizarClick(nil);
      end;
      //ManipularPanel(Catalogo);

      cdCExtraEmpleado.Refresh;
      TForm(FindComponent('FrmAgregar')).Close;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal('No se puede Guardar el registro por el motivo siguiente:', e.message, e.MsgType, [mbOk], 0);

    on e:exception do
    begin
      InteliDialog.ShowModal('Error, No se puede Guardar el registro por el motivo siguiente:', e.message, mterror, [mbOk], 0);
      //ManipularPanel(Catalogo);
    end;
  end;
end;

procedure TfrmConceptoExtraEmpleado.btn2Click(Sender: TObject);
begin
   TForm(FindComponent('FrmAgregar')).Close;
end;

procedure TfrmConceptoExtraEmpleado.btnBtnActualizarClick(Sender: TObject);
begin
   CdConExtXEmp.Refresh;
end;

procedure TfrmConceptoExtraEmpleado.btnBtnAgregarClick(Sender: TObject);
var
  gForma: TForm;
begin
  try
    if (Not cdEmpleados.Active) or (cdEmpleados.RecordCount = 0) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un empleado para poder registrar sus conceptos extras.']);

    if not Assigned(FindComponent('FrmAgregar')) then
    begin
      gForma := TForm.Create(self);
      gForma.BorderStyle := bsDialog;
      gForma.Position := poScreenCenter;
      gForma.Name := 'FrmAgregar';
      gForma.Caption := 'Agregar concepto extra al empleado.';
      ClientModule1.ComponentColor(gForma);
    end;

    pnlEdicion.Parent := TForm(FindComponent('FrmAgregar'));
    pnlEdicion.Visible := True;
    pnlEdicion.Align := alClient;
    TForm(FindComponent('FrmAgregar')).width := 410;
    TForm(FindComponent('FrmAgregar')).height := 250;

    CargarConceptos;
    CdUptConExtXEmp.Close;
    if not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado',[-9]) then
      raise InteligentConnection.CreateByCode(6, ['nom_conceptoextraxempleado','-9','IdConceptoExtraxEmpleado']);

    CdUptConExtXEmp.Open;
    if CdUptConExtXEmp.RecordCount = 1 then
      raise InteligentException.CreateByCode(14,['concepto extra por empleado']);

    CdUptConExtXEmp.Append;
    CdUptConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsInteger := 0;
    CdUptConExtXEmp.FieldByName('idpersonal').AsInteger := CdEmpleados.FieldByName('idpersonal').AsInteger;
    CdUptConExtXEmp.FieldByName('idconceptoextra').AsInteger := 0;
    CdUptConExtXEmp.FieldByName('modo').asstring := 'NOMINA';
    CdUptConExtXEmp.FieldByName('fechaaplicacion').AsDateTime := Now;

    //iniciar con las 2 negativas
    //sin fecha de termino vencimiento
    CdUptConExtXEmp.FieldByName('fechatermino').AsDateTime := Now+30;
    dxRbFecha.Checked := False;
    cxDateFechaTermino.Enabled := False;

    //Sin maximo
    cxCurrencyMontoMaximo.Enabled := False;
    dxRbMonto.Checked := False;
    dxRbFecha.Checked := False;
    CdUptConExtXEmp.FieldByName('maximo').AsInteger := 0;
    cbbConceptos.ItemIndex := 0;

    TForm(FindComponent('FrmAgregar')).showmodal;
  except
    on e:InteligentConnection do
    begin
      if CdUptConExtXEmp.State = dsInsert then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede crear el nuevo registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:InteligentException do
    begin
      if CdUptConExtXEmp.State = dsInsert then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede crear el nuevo registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:exception do
    begin
      if CdUptConExtXEmp.State = dsInsert then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede crear el nuevo registro debido a lo siguiente.', e.message, mtError, [mbOk], 0)
    end;
  end;
end;

procedure TfrmConceptoExtraEmpleado.btnBtnEditarClick(Sender: TObject);
var
  gForma: TForm;
begin
  try
    if (Not cdEmpleados.Active) or (cdEmpleados.RecordCount = 0) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un empleado para poder registrar sus conceptos extras.']);

    CargarConceptos;
    if not Assigned(FindComponent('FrmAgregar')) then
    begin
      gForma := TForm.Create(self);
      gForma.BorderStyle := bsDialog;
      gForma.Position := poScreenCenter;
      gForma.Name := 'FrmAgregar';
      gForma.Caption := 'Editar concepto extra del empleado.';
      ClientModule1.ComponentColor(gForma);
    end;

    pnlEdicion.Parent := TForm(FindComponent('FrmAgregar'));
    pnlEdicion.Visible := True;
    pnlEdicion.Align := alClient;

    TForm(FindComponent('FrmAgregar')).width := 410;
    TForm(FindComponent('FrmAgregar')).height := 250;

    if cdCExtraEmpleado.RecordCount = 0 then
      raise InteligentException.CreateByCode(26,['concepto extra por empleado']);

    CdUptConExtXEmp.Close;
    if not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado',[cdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsInteger]) then
      raise InteligentConnection.CreateByCode(6, ['concepto extra por empleado',cdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsString,'IdConceptoExtraxEmpleado']);

    CdUptConExtXEmp.Open;

    if CdUptConExtXEmp.RecordCount <> 1 then
      raise InteligentException.CreateByCode(27,['concepto extra por empleado',cdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsString]);

    CdUptConExtXEmp.Edit;
    CdUptConExtXEmp.FieldByName('idconceptoextra').AsInteger := cdConExtXEmp.FieldByName('IdConceptoExtra').AsInteger;
    dxrbFecha.Checked := Not cdUptConExtXEmp.FieldByName('FechaTermino').IsNull;
    dxRbMonto.Checked := cdUptConExtXEmp.FieldByName('Maximo').AsExtended > 0;
    //FVencimiento.Checked := CBXVencimiento.Checked;
    cxDateFechaTermino.Enabled := dxRbFecha.Checked;
    cbbConceptos.EditValue := cdConExtXEmp.FieldByName('IdConceptoExtra').AsInteger;

    cxCurrencyMontoMaximo.Enabled := dxRbMonto.Checked;
    lblNombreEmpleado.Caption := cdEmpleados.FieldByName('NombreCOmpleto').asString;;
    btnBtnActualizarClick(nil);
    TForm(FindComponent('FrmAgregar')).showmodal;
  except
    on e:InteligentConnection do
    begin
      if CdUptConExtXEmp.State = dsedit then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede editar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:InteligentException do
    begin
      if CdUptConExtXEmp.State = dsedit then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede editar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:exception do
    begin
      if CdUptConExtXEmp.State = dsedit then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede editar el registro debido a lo siguiente.', e.message, mtError, [mbOk], 0)
    end;
  end;
end;

procedure TfrmConceptoExtraEmpleado.btnBtnEliminarClick(Sender: TObject);
var mensaje:string;
begin
  try
    if (Not cdEmpleados.Active) or (cdEmpleados.RecordCount = 0) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un empleado para poder registrar sus conceptos extras.']);

    if cdCExtraEmpleado.RecordCount = 0 then
      raise InteligentException.CreateByCode(26,['concepto extra por empleado']);

    CdUptConExtXEmp.Close;
    Mensaje := Format('¿Está seguro de eliminar el registro [%s]?',[cdConExtXEmp.FieldByName('Titulo').AsString]);
    if InteliDialog.ShowModal('Confirmación', Mensaje, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      if not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado',[cdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsInteger]) then
        raise InteligentConnection.CreateByCode(6, ['concepto extra por empleado',cdCExtraEmpleado.FieldByName('IdConceptoExtraxEmpleado').asstring,'IdConceptoExtraxEmpleado']);

      CdUptConExtXEmp.Open;

      if CdUptConExtXEmp.RecordCount <> 1 then
        raise InteligentException.CreateByCode(27,['concepto extra por empleado',cdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsString]);

      CdUptConExtXEmp.Delete;
      CdUptConExtXEmp.ApplyUpdates(-1);

      cdCExtraEmpleado.Refresh;
      btnBtnActualizarClick(nil);
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal('No se puede eliminar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('No se puede eliminar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('No se puede eliminar el registro debido a lo siguiente.', e.message, mtError, [mbOk], 0);

  end;
end;

procedure TfrmConceptoExtraEmpleado.btnBuscarClick(Sender: TObject);
Var
  Parametros: TParamFilter;
begin
  try
    Parametros := TParamFilter.Create;
    CdEmpleados.Close;
    EdtFNombre.Text := TrimRight(TrimLeft(EdtFNombre.Text));
    try
        if EdtFNombre.Text <> '' then
          CargarDatosFiltrados(CdEmpleados, 'CadenaBuscar', [EdtFNombre.Text]);

        if cdEmpleados.Active then
          cdEmpleados.Refresh
        else
          cdEmpleados.Open;

      if not CargarDatosFiltrados(cdConExtXEmp, 'IdPersonal', [cdEmpleados.FieldByName('IdPersonal').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Concepto Extra', 'IdPersonal', cdEmpleados.FieldByName('IdPersonal').AsString]);

      if cdConExtXEmp.Active then
        cdConExtXEmp.Refresh
      else
        cdConExtXEmp.Open;
    Finally
      Parametros.Free;
    end;
  except
  on e:Exception do
    begin
      try
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La ventana solicitada no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
      Finally
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  end;
end;


procedure TfrmConceptoExtraEmpleado.btnImprmirClick(Sender: TObject);
var
  Cursor: Tcursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'ConceptosExtraEmpleados.fr3';
      CompReporte :=FrxReporteConceptoExtra;
      CompDatasetReporte := FrxConceptoExtra;

      LocalImprimeReporte(cdConExtXEmp,gridCardDBGrid2DBCardView1,'Concepto Extra');
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

procedure TfrmConceptoExtraEmpleado.CargarConceptos;
begin
  try
    if cdConceptos.ProviderName = '' then
      if not CrearConjunto(cdConceptos, 'nom_conceptoextra', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos Extras']);

    if not CargarDatosFiltrados(cdConceptos, 'idconceptoextra', [-1]) then
      raise InteligentException.CreateByCode(6,['Conceptos Extras', 'IdConceptoExtra', '-1']);

    if cdConceptos.Active then
      cdConceptos.Refresh
    else
      cdConceptos.Open;
  except
      on e:Exception do
    begin
      try
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La ventana solicitada no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
      Finally
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  end;
end;

procedure TfrmConceptoExtraEmpleado.cdConceptosAfterScroll(DataSet: TDataSet);
begin
  if cdConceptos.FieldByName('Tipo').AsString = 'PORCENTAJE' then
  begin
    cxLblCantidad.caption := 'Porcentaje:';
    if CxDbTextCantidad.Text <> '' then
      if (StrToFloat(CxDbTextCantidad.Text) > 100) then
      begin
        CxDbTextCantidad.Text := '100';
      end;
  end
  else
    cxLblCantidad.caption := 'Cantidad:'
end;

procedure TfrmConceptoExtraEmpleado.cdEmpleadosAfterScroll(DataSet: TDataSet);
begin
   if not CargarDatosFiltrados(cdConExtXEmp, 'IdPersonal', [cdEmpleados.FieldByName('IdPersonal').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Concepto Extra', 'IdPersonal', cdEmpleados.FieldByName('IdPersonal').AsString]);

  if cdConExtXEmp.Active then
    cdConExtXEmp.Refresh
  else
    cdConExtXEmp.Open;
end;

procedure TfrmConceptoExtraEmpleado.CxBtnAsimiladoClick(Sender: TObject);
begin
  Application.createForm(TFrmCalculoSalario, FrmCalculoSalario);
  FrmCalculoSalario.esCalculoAsimilado := True;
  FrmCalculoSalario.ShowModal;
end;

procedure TfrmConceptoExtraEmpleado.cxDbGridConceptosExtrasEmpleadoDblClick(
  Sender: TObject);
begin
  btnBtnEditarClick(nil);
end;

procedure TfrmConceptoExtraEmpleado.cxDbGridEmpleadosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if not CargarDatosFiltrados(cdConExtXEmp, 'IdPersonal', [cdEmpleados.FieldByName('IdPersonal').AsInteger]) then
    raise InteligentException.CreateByCode(6, ['Concepto Extra', 'IdPersonal', cdEmpleados.FieldByName('IdPersonal').AsString]);

  if cdConExtXEmp.Active then
    cdConExtXEmp.Refresh
  else
    cdConExtXEmp.Open;
end;

procedure TfrmConceptoExtraEmpleado.cxDbGridEmpleadosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if StrToFloatDef(ARecord.Values[CxColumnConceptosExtraRegistrados.Index],0) > 0 then
    AStyle := cxStylConceptoExtraIncluidos;
end;

procedure TfrmConceptoExtraEmpleado.dxBtnCargarTodoClick(Sender: TObject);
begin
  if cdEmpleados.ProviderName = '' then
    if not crearconjunto(CdEmpleados,'nuc_personal',ccCatalog) then
      raise InteligentConnection.CreateByCode(5, ['Personal' ]);

  if not cargarDatosFiltrados(cdEmpleados, 'IdPersonal', [-1]) then
    raise inteligentException.CreateByCode(6, ['nuc_personal', 'IdPersonal', '-1']);

  if cdEmpleados.Active then
    cdEmpleados.Refresh
  else
   cdEmpleados.Open;

end;

procedure TfrmConceptoExtraEmpleado.dxBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConceptoExtraEmpleado.dxBtnEditarFichaClick(Sender: TObject);
begin
  Application.CreateForm(TFrmFichaGeneralPersonal, FrmFichaGeneralPersonal);
  FrmFichaGeneralPersonal.accion := 'Editar';
  FrmFichaGeneralPersonal.IdPersonal := cdEmpleados.FieldByName('idpersonal').AsInteger;
  FrmFichaGeneralPersonal.ShowModal;
end;

procedure TfrmConceptoExtraEmpleado.dxRbFechaClick(Sender: TObject);
begin
    if (dxRbFecha.Checked) and (not dxRbMonto.Checked)  then
  begin
    cxDateFechaTermino.Enabled := Not dxRbMonto.Checked;
    cxCurrencyMontoMaximo.Enabled := Not cxDateFechaTermino.Enabled;
    CdUptConExtXEmp.FieldByName('fechatermino').AsDateTime := Now+30;
  end
  else
  if (dxRbFecha.Checked) and (dxRbMonto.Checked) then
  begin
    if (StrToFloat(cxCurrencyMontoMaximo.Text) > 0) then
    begin
      if (InteliDialog.ShowModal('Aviso','Al seleccionar esta opción, el montó cambiará el valor a 0. ¿Deseas continuar?', mtInformation, [mbYes, mbNo], 0) = mrYes ) then
      begin
        dxRbMonto.Checked := False;
        cxCurrencyMontoMaximo.Text := '0';
        cxCurrencyMontoMaximo.Enabled := False;
        dxRbFecha.Checked := not dxRbMonto.Checked;
        cxDateFechaTermino.Enabled := dxRbFecha.Checked;
        CdUptConExtXEmp.FieldByName('fechatermino').AsDateTime := Now+30;
      end
      else
      begin
        dxRbMonto.Checked := True;
        dxRbFecha.Checked := not dxRbMonto.Checked;
      end;
    end
    else
    begin
      dxRbMonto.Checked := False;
      cxCurrencyMontoMaximo.Text := '0';
      cxCurrencyMontoMaximo.Enabled := False;
      dxRbFecha.Checked := not dxRbMonto.Checked;
      cxDateFechaTermino.Enabled := dxRbFecha.Checked;
      CdUptConExtXEmp.FieldByName('fechatermino').AsDateTime := Now+30;
    end;
  end;
end;

procedure TfrmConceptoExtraEmpleado.dxRbMontoClick(Sender: TObject);
begin
  //cxCurrencyMontoMaximo.Text := '0';
  cxCurrencyMontoMaximo.Enabled := dxRbMonto.Checked;
  dxRbFecha.Checked := not dxRbMonto.Checked;
  cxDateFechaTermino.Enabled := Not dxRbMonto.Checked;
  CdUptConExtXEmp.FieldByName('fechatermino').AsDateTime := Now+30;
end;

procedure TfrmConceptoExtraEmpleado.EdtCantidadChange(Sender: TObject);
begin
  if cdConceptos.FieldByName('Tipo').AsString = 'PORCENTAJE' then
  begin
    if cxDbTextCantidad.Text <> '' then
      if (StrToFloat(cxDbTextCantidad.Text) > 100) then
      begin
        cxDbTextCantidad.Text := '100';
      end;
  end;
end;

procedure TfrmConceptoExtraEmpleado.edtFNombreKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btnBuscarClick(nil);
end;

procedure TfrmConceptoExtraEmpleado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([CdConceptos,CdEmpleados,CdConExtXEmp,CdUptConExtXEmp]);
  LiberarVentana(Self, Action);
end;

procedure TfrmConceptoExtraEmpleado.FormCreate(Sender: TObject);
begin
  ClientModule1.ComponentColor(self);
  if not crearconjunto(CdConceptos,'nom_conceptoextra',ccCatalog) then
    raise InteligentConnection.CreateByCode(5, ['Conceptos extras']);

  if not crearconjunto(CdEmpleados,'nuc_personal',ccCatalog) then
    raise InteligentConnection.CreateByCode(5, ['Personal' ]);

  if not crearconjunto(CdConExtXEmp,'nom_conceptosextraxempleado',ccSelect) then
    raise InteligentConnection.CreateByCode(5, ['Conceptos por empleado' ]);

  if not crearconjunto(CdUptConExtXEmp,'nom_conceptosextraxempleado',ccUpdate) then
    raise InteligentConnection.CreateByCode(5, ['Conceptos por empleado' ]);

  if not CrearConjunto(cdCExtraEmpleado, 'nom_conceptosextraxempleado', ccSelect) then
    raise InteligentException.CreateByCode(5, ['COnceptos Extras Empleado']);

end;

procedure TfrmConceptoExtraEmpleado.FormShow(Sender: TObject);
var Cur: TCursor;
begin
  try
    Cur := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      AccedeACoordenadas;

      //abrimos los dataset necesarios

      if Not CargarDatosFiltrados(CdEmpleados,'IdPersonal', [-9]) then
        raise InteligentConnection.CreateByCode(6, ['nuc_personal','-9','idpersonal']);
      CdEmpleados.Open;

      if Not CargarDatosFiltrados(CdConExtXEmp,'IdConceptoExtraxEmpleado', [-9]) then
        raise InteligentConnection.CreateByCode(6, ['nom_conceptoextraxempleado','-9','IdConceptoExtraxEmpleado']);
      CdConExtXEmp.Open;

      if Not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado', [-9]) then
        raise InteligentConnection.CreateByCode(6, ['nom_conceptoextraxempleado','-9','IdConceptoExtraxEmpleado']);
      CdUptConExtXEmp.Open;

      if Not CargarDatosFiltrados(cdCExtraEmpleado, 'IdConceptoExtraxEmpleado', [-1]) then
        raise InteligentException.CreateByCode(6, ['Conceptos Extras Empleado', 'IdConceptoxtraxEmpleado', '-1']);

      if cdCExtraEmpleado.active then
        cdCExtraEmpleado.Refresh
      else
        cdCExtraEmpleado.Open;

    finally
      Screen.Cursor := cur;
      //edtFNombre.SetFocus;
    end;
  Except
    on e:InteligentConnection do
    begin
      Try
        InteliDialog.ShowModal('No se puede acceder a la ventana solicitada', e.message, e.MsgType, [mbOk], 0)
      Finally
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      End;
    end;

    on e:Exception do
    begin
      try
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La ventana solicitada no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
      Finally
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  End;
end;

end.
