unit UtFrmCatalogoSalarios2;

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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsdxBarPainter,
  cxPCdxBarPopupMenu, dxBar, cxPC, DBClient,ClientModuleUnit1, cxContainer,
  cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxDBEdit, cxLabel, Menus,
  StdCtrls, cxButtons, ExtCtrls, ExportaExcel, ComCtrls, dxRibbon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxBarBuiltInMenu, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, cxGridExportLink, ShellAPI,
  cxCurrencyEdit, DateUtils, rhh_genericclasses, frxClass, frxDBSet;

type
  TOrganizacion = Class
    identificador: Integer;
    Titulo: string;
  End;

  TSalario = Class
    Id: Integer;
    Nombre: String;
    Descripcion: string;
    Llave: Integer;
    TipoSalario: string;
  End;

  TFrmCatalogoSalarios2 = class(TForm)
    CxGridSalarios: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    cxDBGrid1: TcxGrid;
    cdUptSalario: TClientDataSet;
    dsSalario: TDataSource;
    dxbrmngr1: TdxBarManager;
    Paneldxbrmngr1Bar1: TdxBar;
    btnAgregar: TdxBarLargeButton;
    cdTiposNomina: TClientDataSet;
    btnEditar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    cdSalarios: TClientDataSet;
    grdColumDbGridGrid1DBTableView1Column1: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column2: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column3: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column4: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column5: TcxGridDBColumn;
    Panel1: TcxGroupBox;
    tabPage2: TcxTabControl;
    cdOrganizacion: TClientDataSet;
    Panel2: TcxGroupBox;
    btn1: TcxButton;
    btn2: TcxButton;
    cdGrupoSalario: TClientDataSet;
    cdMoneda: TClientDataSet;
    dsOrganizacion: TDataSource;
    dsTipoNomina: TDataSource;
    dsGrupoSalario: TDataSource;
    dsMoneda: TDataSource;
    dsUptSalario: TDataSource;
    CxGridSalariosColumn1: TcxGridDBColumn;
    editCodigo: TcxDBTextEdit;
    lbl7: TcxLabel;
    pnl1: TPanel;
    cbbOrganizacion: TcxDBLookupComboBox;
    cbbTipoNomina: TcxDBLookupComboBox;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    pnl2: TPanel;
    editTitulo: TcxDBTextEdit;
    dxDateAplicacion: TcxDBDateEdit;
    cbbMoneda: TcxDBLookupComboBox;
    editImporte: TcxDBTextEdit;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    cbbTipoSalario: TcxDBComboBox;
    CxCbbGrupoSalario: TcxDBLookupComboBox;
    DxBarBtnSalir: TdxBarLargeButton;
    DxPopMenuSalarios: TdxRibbonPopupMenu;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    dxTabDxRibbonSalariosTab1: TdxRibbonTab;
    DxRibbonSalarios: TdxRibbon;
    DxBarBtnActualizar: TdxBarLargeButton;
    DxBarBtnDuplicar: TdxBarLargeButton;
    pnlSalario: TPanel;
    dlgSave1: TSaveDialog;
    CxDbDateApl: TcxDBDateEdit;
    CxLbl1: TcxLabel;
    CxBtnPegar: TcxButton;
    CxBtnCancel: TcxButton;
    CxLbl2: TcxLabel;
    cxCurrencyEdtImporte: TcxCurrencyEdit;
    Panel3: TPanel;
    DxBarBtnAgrupador: TdxBarLargeButton;
    dxExportar: TdxBarLargeButton;
    frxReporteSalarios: TfrxReport;
    frxSalarios: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    cxColSalarioIntegrado: TcxGridDBColumn;
    cxColVacaciones: TcxGridDBColumn;
    cxColPV: TcxGridDBColumn;
    cxColAguinaldo: TcxGridDBColumn;
    procedure btnAgregarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tabPage1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure cdUptSalarioAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnImprimirClick(Sender: TObject);
    procedure DxBarBtnSalirClick(Sender: TObject);
    procedure cdSalariosAfterRefresh(DataSet: TDataSet);
    procedure cdSalariosAfterOpen(DataSet: TDataSet);
    procedure DxBarBtnDuplicarClick(Sender: TObject);
    procedure CxBtnPegarClick(Sender: TObject);
    procedure DxBarBtnActualizarClick(Sender: TObject);
    procedure cdSalariosAfterScroll(DataSet: TDataSet);
    procedure DxBarBtnAgrupadorClick(Sender: TObject);
    procedure cbbTipoNominaPropertiesEditValueChanged(Sender: TObject);
    procedure dxExportarClick(Sender: TObject);
  private
    gForm: TForm;
    i: Integer;

    procedure EstadoBtn;
    procedure ActivaMultipleSel(Activa: Boolean);
    procedure ConectarComponentes;
    procedure DesconectarComponentes;
    { Private declarations }
  public
    IdTipoNomina: Integer;
    AbrirPantalla: boolean;
    { Public declarations }
  protected
    ModuloPantalla: string;
  end;

var
  FrmCatalogoSalarios2: TFrmCatalogoSalarios2;

implementation

uses UInteliDialog, Unit2;

{$R *.dfm}

procedure TFrmCatalogoSalarios2.ActivaMultipleSel(Activa: Boolean);
begin
  cxGridSalarios.OptionsSelection.MultiSelect := Activa;
  CxGridSalarios.OptionsView.Indicator := Activa;
  CxGridSalarios.DataController.GetSelectedCount;
end;

procedure TFrmCatalogoSalarios2.btn1Click(Sender: TObject);
var
  IdOrganizacion: Integer;
begin
  try
    try
      IdOrganizacion := Integer(TObject(tabPage2.Tabs.Objects[tabPage2.TabIndex]));
      if (IdOrganizacion <> -1) and (cbbOrganizacion.ItemIndex = -1) then
        raise InteligentException.CreateByCode(18, ['Organización']);

      if (IdOrganizacion <> -1) and (cbbTipoNomina.ItemIndex = -1) then
        raise InteligentException.CreateByCode(18, ['Tipo Nómina']);

      if (IdOrganizacion <> -1) and (cxcbbGrupoSalario.ItemIndex = -1) then
        raise InteligentException.CreateByCode(18, ['Grupo Salario']);

      if (cbbMoneda.ItemIndex = -1) then
        raise InteligentException.CreateByCode(18, ['Tipo de Moneda']);

      if (cbbTipoSalario.ItemIndex = -1) then
        raise InteligentException.CreateByCode(18, ['Tipo de Salario']);

      if (Length(Trim(editTitulo.Text))) = 0 then
        raise InteligentException.CreateByCode(18, ['Título Salario']);

      if (Length(Trim(editImporte.Text))) = 0 then
        raise InteligentException.CreateByCode(18, ['Importe Salario']);

      if (Length(Trim(dxDateAplicacion.Text))) = 0 then
        raise InteligentException.CreateByCode(18, ['Fecha Aplicación']);

      if cdUptSalario.State = dsInsert then
      begin
        cdUptSalario.FieldByName('IdSalario').AsInteger := 1;
        cdUptSalario.FieldByName('IdLlave').AsInteger := 1;

        cdUptSalario.FieldByName('idRangoSalarios').clear;
        cdUptSalario.FieldByName('FechaRegistro').AsDateTime := Now;
        cdUptSalario.FieldByName('Activo').AsString := 'Si';
      end;
      if IdOrganizacion = -1 then
      begin
        cdUptSalario.FieldByName('idOrganizacion').Clear;
        cdUptSalario.FieldByName('idTipoNomina').Clear;
        cdUptSalario.FieldByName('idGrupoSalario').Clear;
      end;

      cdUptSalario.FieldByName('FechaModificacion').AsDateTime := Now;
      cdUptSalario.FieldByName('SalarioIntegrado').AsExtended := 0.0;
      cdUptSalario.FieldByName('Vacaciones').AsExtended := 0.0;
      cdUptSalario.FieldByName('PrimaVacacional').AsExtended := 0.0;
      cdUptSalario.FieldByName('Aguinaldo').AsExtended := 0.0;
      cdUptSalario.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
      cdUptSalario.Post;
      cdUptSalario.ApplyUpdates(-1);

      If Assigned(TForm(FindComponent('FrmAdd'))) then
        TForm(FindComponent('FrmAdd')).Close;
    finally
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoSalarios2.btnAgregarClick(Sender: TObject);
var
  IdOrganizacion: Integer;
begin
  If Assigned(TForm(FindComponent('FrmAdd'))) then
  begin
    Panel1.Visible := False;
    Panel1.Align := alNone;
    Panel1.Parent := Self;
    TForm(FindComponent('FrmAdd')).destroy;
  end;
  IdOrganizacion := Integer(TObject(tabPage2.Tabs.Objects[tabPage2.TabIndex]));
  pnl1.Visible := True;
  gForm := TForm.Create(Self);
  gForm.Caption := 'Captura de Nuevo Salario';
  gForm.Name := 'frmAdd';
  gForm.Position := poScreenCenter;
  gForm.BorderStyle := bsToolWindow;
  Panel1.Parent := gForm;
  Panel1.Align := alClient;
  Panel1.Visible := True;
  if IdOrganizacion = -1  then
  begin
    gForm.Width := 405;
    gForm.Height := 220;
  end
  else
  begin
    gForm.Width := 405;
    gForm.Height := 285;
  end;

  if not CargarDatosFiltrados(cdUptSalario, 'IdSalario', [-9]) then
    raise InteligentException.CreateByCode(6, ['Grupo Salario', 'IdGrupoSalario', '-1']);

  if cdUptSalario.Active then
    cdUptSalario.Refresh
  else
    cdUptSalario.Open;

  cdUptSalario.append;
  if cdUptSalario.State = dsInsert then
    cdUptSalario.FieldByName('CodigoSalario').AsString := '<Automático>'
  else if cdUptSalario.State = dsedit then
    cdUptSalario.FieldByName('CodigoSalario').AsString := cdSalarios.FieldByName('CodigoSalario').AsString;

  pnl1.Visible := IdOrganizacion <> -1;
  gForm.ShowModal;
  Panel1.Visible := False;
  Panel1.Align := alNone;
  Panel1.Parent := Self;
  If Assigned(TForm(FindComponent('FrmAdd'))) then
    TForm(FindComponent('FrmAdd')).destroy;
  if cdUptSalario.State in [dsInsert, dsEdit] then
    cdUptSalario.Cancel;
end;

procedure TFrmCatalogoSalarios2.btnEditarClick(Sender: TObject);
var
  IdOrganizacion: Integer;
begin
  try
    try
      If Assigned(TForm(FindComponent('FrmAdd'))) then
      begin
        Panel1.Visible := False;
        Panel1.Align := alNone;
        Panel1.Parent := Self;
        TForm(FindComponent('FrmAdd')).destroy;
      end;
      IdOrganizacion := Integer(TObject(tabPage2.Tabs.Objects[tabPage2.TabIndex]));
      pnl1.Visible := True;
      gForm := TForm.Create(Self);
      gForm.Caption := 'Edición del Salario [' + cdSalarios.FieldByName('TituloSalario').AsString  + ']';
      gForm.Name := 'frmAdd';
      gForm.Position := poScreenCenter;
      gForm.BorderStyle := bsToolWindow;
      Panel1.Parent := gForm;
      Panel1.Align := alClient;
      Panel1.Visible := True;
      if IdOrganizacion = -1  then
      begin
        gForm.Width := 405;
        gForm.Height := 240;
      end
      else
      begin
        gForm.Width := 405;
        gForm.Height := 285;
      end;
      if not CargarDatosFiltrados(cdUptSalario, 'IdSalario', [cdSalarios.FieldByName('IdSalario').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Salarios', 'IdSalrio', cdSalarios.FieldByName('IdSalario').AsString]);

      if cdUptSalario.Active then
        cdUptSalario.Refresh
      else
        cdUptSalario.Open;

      if cdUptSalario.RecordCount = 0then
        raise InteligentException.CreateByCode(13, [cdSalarios.FieldByName('TituloSalario').AsString, 'Salarios']);

      cdUptSalario.edit;
      if cdUptSalario.State = dsInsert then
        cdUptSalario.FieldByName('CodigoSalario').AsString := '<Automático>'
      else if cdUptSalario.State = dsedit then
        cdUptSalario.FieldByName('CodigoSalario').AsString := cdSalarios.FieldByName('CodigoSalario').AsString;

      pnl1.Visible := IdOrganizacion <> -1;
      gForm.ShowModal;
      Panel1.Visible := False;
      Panel1.Align := alNone;
      Panel1.Parent := Self;
      If Assigned(TForm(FindComponent('FrmAdd'))) then
        TForm(FindComponent('FrmAdd')).destroy;
      if cdUptSalario.State in [dsInsert, dsEdit] then
        cdUptSalario.Cancel;
    finally
      EstadoBtn;
    end;
  except
    on e: InteligentException do
      intelidialog.ShowModal(e.Title, e.message, e.msgtype, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoSalarios2.btnEliminarClick(Sender: TObject);
var
  CtaSel, CtaDel: Integer;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
    Exit;

  if cdSalarios.State = dsBrowse then
  Try
      try
      if cdSalarios.State <> dsBrowse then
        raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

      if CxGridSalarios.ViewData.RowCount < 1 Then
        raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

      //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
      if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
        Exit;

      if ((CxGridSalarios.Controller.SelectedRecordCount = 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + cdSalarios.FieldByName('TituloSalario').AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo)) or
         ((CxGridSalarios.Controller.SelectedRecordCount > 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá con el borrado de ' + IntToStr(CxGridSalarios.Controller.SelectedRecordCount) + ' registros' + #10 + #10 + '¿Desea borrar estos registros ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo)) then
        raise InteligentException.Create('Proceso cancelado por el usuario');

      CtaSel := CxGridSalarios.Controller.SelectedRecordCount;

      CtaDel := BorrarRegistro(cdSalarios, 'idSalario', brSelected);
      if CtaDel > 0 then
      begin
        cdSalarios.Refresh;  // Si se ha podido eliminar un registro se deberá actualizar el grid

        // Informar del resultado del borrado de registros
        if CtaDel = 0 then
          InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar ningún registro de los seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
        else
          if CtaDel < CtaSel then
            InteliDialog.ShowModal('No se pudieron borrar todos los registros', 'Solamente ' + IntToStr(CtaDel) + ' registro(s) pudieron ser borrados de los ' + IntToStr(CtaSel) + ' que fueron seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
          else
            InteliDialog.ShowModal('Se borraron todos los registros seleccionados', 'El borrado de registros se ha terminado de manera satisfactoria.', mtWarning, [mbOk], 0);
      end;
    finally
      EstadoBtn;
    end;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha eliminado ningún registro', e.message, mtWarning, [mbOk], 0);

    on e:InteligentException do
      ; // No hacer nada, solo es para cambiar el flujo del programa

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoSalarios2.btnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;

    try
      Screen.Cursor := crAppStart;

      Reporte := 'Salarios.fr3';
      CompReporte :=FrxReporteSalarios;
      CompDatasetReporte := FrxSalarios;

      LocalImprimeReporte(cdSalarios, CxGridSalarios,'Salarios');
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

procedure TFrmCatalogoSalarios2.cbbTipoNominaPropertiesEditValueChanged(
  Sender: TObject);
begin
  if (cbbTipoNomina.ItemIndex > -1) and (cbbTipoNomina.EditValue <> Null) then
  begin
    if not CargarDatosFiltrados(cdGrupoSalario, 'idTipoNomina', [cbbTipoNomina.EditValue]) then
      raise InteligentException.CreateByCode(6, ['IdTipoNomina', 'Grupo Salarios', VarToStr(cbbTipoNomina.EditValue)]);

    if cdGrupoSalario.Active then
      cdGrupoSalario.Refresh
    else
      cdGrupoSalario.Open;

    if cdTiposNomina.FieldByName('SalarioMultiple').AsString = 'No' then
    begin
      cdUptSalario.FieldByName('idRangoSalarios').Clear;
      cdUptSalario.FieldByName('IdGrupoSalario').Clear;
    end;
  end;
end;

procedure TFrmCatalogoSalarios2.cdSalariosAfterOpen(DataSet: TDataSet);
var
  idOrganizacion: Integer;
  cursor: TCursor;
begin
  try
    btnEditar.Enabled := (cdSalarios.Active) and (cdSalarios.RecordCount > 0);
    btnEliminar.Enabled := btnEditar.Enabled;
    btnImprimir.Enabled := btnEditar.Enabled;
  finally
    Screen.Cursor := cursor;
  end;
end;

procedure TFrmCatalogoSalarios2.cdSalariosAfterRefresh(DataSet: TDataSet);
begin
  btnEditar.Enabled := (cdSalarios.Active) and (cdSalarios.RecordCount > 0);
  btnEliminar.Enabled := btnEditar.Enabled;
  btnImprimir.Enabled := btnEditar.Enabled;
end;

procedure TFrmCatalogoSalarios2.cdSalariosAfterScroll(DataSet: TDataSet);
begin
  EstadoBtn;
end;

procedure TFrmCatalogoSalarios2.cdUptSalarioAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
var
  idOrganizacion: Integer;
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    screen.Cursor := crAppStart;
    try
      idOrganizacion := Integer(TObject(tabPage2.Tabs.Objects[tabPage2.TabIndex]));
      cdSalarios.Close;

      if idOrganizacion = -1  then
      begin
        if not CargarDatosFiltrados(cdSalarios, 'isNulo', ['Si']) then
          raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'IdTipoNomina', '#Valor']);
      end
      else
        if not CargarDatosFiltrados(cdSalarios, 'IdOrganizacion', [idOrganizacion]) then
          raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'IdTipoNomina', '#Valor']);

      if cdSalarios.Active then
        cdSalarios.Refresh
      else
        cdSalarios.Open;
    finally
      Screen.Cursor := cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    on e: Exception do
      InteliDialog.ShowModal('Error', 'Ha ocurrido un error inesperado, avise al administrador del sistema de siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoSalarios2.ConectarComponentes;
begin
  EditCodigo.DataBinding.DataSource := dsUptSalario;
  cbbOrganizacion.DataBinding.DataSource := dsUptSalario;
  cbbTipoNomina.DataBinding.DataSource := dsUptSalario;
  cbbTipoNomina.DataBinding.DataSource := dsUptSalario;
  CxCbbGrupoSalario.DataBinding.DataSource := dsUptSalario;
  editTitulo.DataBinding.DataSource := dsUptSalario;
  cbbMoneda.DataBinding.DataSource := dsUptSalario;
  dxDateAplicacion.DataBinding.DataSource := dsUptSalario;
  CxDbDateApl.DataBinding.DataSource := nil;
end;

procedure TFrmCatalogoSalarios2.CxBtnPegarClick(Sender: TObject);
var
  cdtmpSal: TClientDataSet;
  UltId, idx, LocLlave: Integer;
  Cursor: TCursor;
begin
  try
    if Length(Trim(CxDbDateApl.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Fecha Aplicación']);

    if Length(Trim(cxCurrencyEdtImporte.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Importe']);

    if DateOf(CdSalarios.FieldByName('FechaAplicacion').AsDateTime) = CxDbDateApl.Date then
      raise InteligentException.CreatebyCode(24, ['Las fechas de Aplicación no pueden ser iguales.']);

    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      LocLlave := cdSalarios.FieldByName('IdLlave').AsInteger;
      DesconectarComponentes;
      cdtmpSal := TClientDataSet.Create(Self);

      if cdSalarios.FieldByName('TipoSalario').AsString = 'Ninguno'  then
      begin
        cdUptSalario.FieldByName('IdSalario').AsInteger := 1;
        cdUptSalario.FieldByName('IdLlave').AsInteger := LocLlave;
        cdUptSalario.FieldByName('IdOrganizacion').AsInteger := cdSalarios.FieldByName('IdOrganizacion').AsInteger;
        cdUptSalario.FieldByName('IdRangoSalarios').Clear;
        cdUptSalario.FieldByName('IdGrupoSalario').AsInteger := cdSalarios.FieldByName('IdGrupoSalario').AsInteger;
        cdUptSalario.FieldByName('FechaModificacion').AsDateTime := Now;
        cdUptSalario.FieldByName('FechaRegistro').AsDateTime := Now;
        cdUptSalario.FieldByName('IdTipoNomina').AsInteger := cdSalarios.FieldByName('IdTipoNomina').AsInteger;
        cdUptSalario.FieldByName('CodigoSalario').AsString := '< AUTOMATICO >';
        cdUptSalario.FieldByName('TituloSalario').AsString := cdsalarios.FieldByName('TituloSalario').AsString;
        cdUptSalario.FieldByName('Salario').AsFloat := (cxCurrencyEdtImporte.Value);
        cdUptSalario.FieldByName('FechaAplicacion').AsDateTime := CxDbDateApl.Date;
        cdUptSalario.FieldByName('IdMoneda').AsInteger := cdSalarios.FieldByName('IdMoneda').AsInteger;
        cdUptSalario.FieldByName('IdUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
        cdUptSalario.FieldByName('FechaRegistro').AsDateTime := Now;
        cdUptSalario.FieldByName('TipoSalario').AsString := cdSalarios.FieldByName('TipoSalario').AsString;
        cdUptSalario.FieldByName('Activo').AsString := 'Si';
      end
      else
      begin
        cdUptSalario.FieldByName('IdSalario').AsInteger := 1;
        cdUptSalario.FieldByName('IdLlave').AsInteger := LocLlave;
        cdUptSalario.FieldByName('IdOrganizacion').Clear;
        cdUptSalario.FieldByName('IdTipoNomina').Clear;
        cdUptSalario.FieldByName('CodigoSalario').AsString := '< AUTOMATICO >';
        cdUptSalario.FieldByName('TituloSalario').AsString := cdsalarios.FieldByName('TituloSalario').AsString;
        cdUptSalario.FieldByName('Salario').AsFloat := (cxCurrencyEdtImporte.Value);
        cdUptSalario.FieldByName('FechaAplicacion').AsDateTime := CxDbDateApl.Date;
        cdUptSalario.FieldByName('IdMoneda').AsInteger := cdSalarios.FieldByName('IdMoneda').AsInteger;
        cdUptSalario.FieldByName('IdUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
        cdUptSalario.FieldByName('FechaRegistro').AsDateTime := Now;
        cdUptSalario.FieldByName('TipoSalario').AsString := cdSalarios.FieldByName('TipoSalario').AsString;
        cdUptSalario.FieldByName('Activo').AsString := 'Si';
      end;
      cdUptSalario.Post;
      cdUptSalario.ApplyUpdates(-1);

      if cdSalarios.FieldByName('TipoSalario').AsString <> 'Ninguno' then
      begin
        UltId := UltimoId;

        if not CrearConjunto(cdtmpSal, 'rhu_Salario', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['rhu_salario']);

        if not CargarDatosFiltrados(cdtmpSal, 'idSalario', [UltimoId]) then
          raise InteligentException.CreateByCode(6,['IdSalario', 'rhu_Salario' , IntToStr(UltId)]);

        if cdtmpSal.Active then
          cdtmpSal.Refresh
        else
          cdtmpSal.Open;

        if cdtmpSal.RecordCount = 1 then
        begin
          cdtmpSal.Edit;
          cdtmpSal.FieldByName('idLlave').AsInteger := LocLlave;
          cdtmpSal.Post;
          cdtmpSal.ApplyUpdates(-1);
        end;
      end;
    finally
      EstadoBtn;

      ConectarComponentes;

      if Assigned(cdtmpSal) then
        cdtmpSal.Destroy;

      Screen.Cursor := Cursor;
    end;
  except on E: InteligentException do
    InteliDialog.ShowModal(e.Title, E.Message, e.MsgType, [mbOK], 0)
  end;
end;

procedure TFrmCatalogoSalarios2.DesconectarComponentes;
begin
  EditCodigo.DataBinding.DataSource := nil;
  cbbOrganizacion.DataBinding.DataSource := nil;
  cbbTipoNomina.DataBinding.DataSource := nil;
  cbbTipoNomina.DataBinding.DataSource := nil;
  CxCbbGrupoSalario.DataBinding.DataSource := nil;
  editTitulo.DataBinding.DataSource := nil;
  cbbMoneda.DataBinding.DataSource := nil;
  dxDateAplicacion.DataBinding.DataSource := nil;
  CxDbDateApl.DataBinding.DataSource := dsUptSalario;
end;

procedure TFrmCatalogoSalarios2.DxBarBtnActualizarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      cdSalarios.Refresh;
    finally
      EstadoBtn;
      Screen.Cursor := cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbok], 0);
  end;
end;

procedure TFrmCatalogoSalarios2.DxBarBtnAgrupadorClick(Sender: TObject);
begin
  CxGridSalarios.OptionsView.GroupByBox := Not CxGridSalarios.OptionsView.GroupByBox;
end;

procedure TFrmCatalogoSalarios2.DxBarBtnDuplicarClick(Sender: TObject);
var
  gForm: TForm;
  Cursor: TCursor;
begin
  try
    GForm := TForm.Create(Self);
    try
      DEsconectarComponentes;
      gForm.Caption := 'Copiar Salario';
      gForm.Width := 325;
      gForm.Height := 150;
      gForm.Position := poScreenCenter;
      gForm.BorderStyle := bsDialog;
      pnlSalario.Parent := gForm;
      pnlSalario.Visible := True;
      pnlSalario.Align := alClient;

      if cdUptSalario.State <> dsBrowse then
        cdUptSalario.Cancel;

      if not CargarDatosFiltrados(cdUptSalario, 'IdSalario', [-9]) then
        raise InteligentException.CreateByCode(6, ['Grupo Salario', 'IdGrupoSalario', '-1']);

      if cdUptSalario.Active then
        cdUptSalario.Refresh
      else
        cdUptSalario.Open;

      cdUptSalario.Append;

      cxCurrencyEdtImporte.Value := 0;

      if gForm.ShowModal = mrOk then
        tabPage1Change(nil);//cdSalarios.Refresh;

    finally
      pnlSalario.Align := AlNone;
      pnlSalario.Parent := Self;
      pnlSalario.Visible := False;
    end;
  Except on e: InteligentException do
    InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoSalarios2.DxBarBtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCatalogoSalarios2.dxExportarClick(Sender: TObject);
var
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';
  //ShowMessage(VarToStr(CdMemoria.RecordCount));
  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxDBGrid1);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmCatalogoSalarios2.EstadoBtn;
var
  Estado: Boolean;
begin
  Estado := (cdSalarios.Active) and (cdSalarios.RecordCount > 0);

  btnAgregar.Enabled := (cdSalarios.Active);
  btnEditar.Enabled := Estado;
  btnEliminar.Enabled := Estado;
  btnImprimir.Enabled := Estado;
  DxBarBtnActualizar.Enabled := (cdSalarios.Active);
  DxBarBtnDuplicar.Enabled := (cdSalarios.Active) and (cdSalarios.RecordCount > 0) and (cdSalarios.FieldByName('idRangoSalarios').IsNull);
end;

procedure TFrmCatalogoSalarios2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrmCatalogoSalarios2.FormCreate(Sender: TObject);
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
  begin
    AbrirPantalla := false;
    raise InteligentException.Create('***');
  end;

  ClientModule1.ComponentColor(self);
  if not CrearConjunto(cdTiposNomina, 'nom_tiponomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

  if not CrearConjunto(cdSalarios, 'rhu_salario', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Salarios']);

  if not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Organización']);

  if not CrearConjunto(cdGrupoSalario, 'nom_gruposalario', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Grupo Salario']);

  if not CrearConjunto(cdMoneda, 'nuc_moneda', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Monedas']);

  if not CrearConjunto(cdUptSalario, 'rhu_salario', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Salarios Upt']);
end;

procedure TFrmCatalogoSalarios2.FormShow(Sender: TObject);
var
  org: TOrganizacion;
begin
  i := 1;
  try
    //*****************************************************************************************
    //CARGAR TIPOS DE NOMINA
    if not CargarDatosFiltrados(cdTiposNomina, 'idTipoNomina', [-1]) then
      raise InteligentException.CreateByCode(6, ['Tipos de Nómina','IDTipoNomina', '-1']);

    if cdTiposNomina.Active then
      cdTiposNomina.Refresh
    else
      cdTiposNomina.Open;

    //CARGAR ORGANIZACIONES
    if not CargarDatosFiltrados(cdOrganizacion, 'Padre', [-5]) then
      raise InteligentException.CreateByCode(6, ['Organización', 'IdPadre', '-5']);

    if cdOrganizacion.Active then
      cdOrganizacion.Refresh
    else
      cdOrganizacion.Open;

    //CARGAS MONEDAS
    if not CargarDatosFiltrados(cdMoneda, 'IdMoneda', [-1]) then
      raise InteligentException.CreateByCode(6, ['Moneda', 'IdMoneda', '-1']);

    if cdMoneda.Active then
      cdMoneda.Refresh
    else
      cdMoneda.Open;

    //CARGAR GRUPOS DE SALARIOS
    if not CargarDatosFiltrados(cdGrupoSalario, 'IdGrupoSalario', [-1]) then
      raise InteligentException.CreateByCode(6, ['Grupo Salario', 'IdGrupoSalario', '-1']);

    if cdGrupoSalario.Active then
      cdGrupoSalario.Refresh
    else
      cdGrupoSalario.Open;

    cdOrganizacion.First;
    tabPage2.Tabs.AddObject('< GENERALES >', TObject(-1));
    while not cdOrganizacion.eof do
    begin
      tabPage2.Tabs.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('idOrganizacion').AsInteger));
      cdOrganizacion.Next;
    end;

    cdGrupoSalario.First;

    tabPage1Change(nil);
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Error', 'Ha ocurrido un error inesperado, avisar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoSalarios2.tabPage1Change(Sender: TObject);
var
  idOrganizacion: Integer;
  cursor: TCursor;
begin
  idOrganizacion := Integer(TObject(tabPage2.Tabs.Objects[tabPage2.TabIndex]));
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      ///ActivaMultipleSel(idOrganizacion = -1);
      if idOrganizacion = -1  then
      begin
        if not CargarDatosFiltrados(cdSalarios, 'isNulo,Historial', ['Si','Si']) then
          raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'IdTipoNomina', '#Valor']);
      end
      else
        if not CargarDatosFiltrados(cdSalarios, 'IdOrganizacion,Historial', [idOrganizacion, 'Si']) then
          raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'IdTipoNomina', '#Valor']);

      if cdSalarios.Active then
        cdSalarios.Refresh
      else
        cdSalarios.Open;
    finally
      EstadoBtn;
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Error', 'Ha ocurrido un error inesperado, informe al administrador del sistema del siguiente error : ' + e.Message, mtError, [mbOK], 0);
  end;
end;

end.
