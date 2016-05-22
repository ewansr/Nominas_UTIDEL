unit UTFrmFirmantesExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  cxClasses, dxRibbon, ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, Menus, StdCtrls, cxButtons,
  DBClient, ClientModuleUnit1, ComCtrls, cxListView, UInteliDialog, cxSplitter,
  cxDBLabel, ImgList, cxGroupBox;

type
  TLvItem = class
    IdReporte: Integer;
    IdTipoNomina: Integer;
    Titulo: String;
  end;

  TFrmFirmantesExcel = class(TForm)
    barManagerFirmantesExcel: TdxBarManager;
    dxToolBarManagerFirmantesExcelBar1: TdxBar;
    btnNuevoCatalogo: TdxBarLargeButton;
    btnEditarCatalogo: TdxBarLargeButton;
    btnGuardarCatalogo: TdxBarLargeButton;
    btnCancelarCatalogo: TdxBarLargeButton;
    btnEliminarCatalogo: TdxBarLargeButton;
    cdFirmantesReportes: TClientDataSet;
    dsFirmantesReportes: TDataSource;
    cdEmpleados: TClientDataSet;
    dsEmpleados: TDataSource;
    cdFirmantesCatalogo: TClientDataSet;
    dsFirmantesCatalogo: TDataSource;
    cdListaexcel: TClientDataSet;
    cxspltr1: TcxSplitter;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    panelFormularioFirmantes: TPanel;
    lblFechaAplicacion: TcxLabel;
    edtFechaAplicacion: TcxDBDateEdit;
    lblNombre: TcxLabel;
    checkPersonalExistente: TcxCheckBox;
    cbbEmpleados: TcxDBLookupComboBox;
    edtNombre: TcxDBTextEdit;
    lblCargo: TcxLabel;
    edtCargo: TcxDBTextEdit;
    lblEmpresa: TcxLabel;
    edtEmpresa: TcxDBTextEdit;
    lblNoFirmante: TcxLabel;
    edtNoFirmante: TcxDBSpinEdit;
    lblAccion: TcxLabel;
    cbbAccion: TcxDBComboBox;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    cxlbl1: TcxLabel;
    CxDbLblReporte: TcxDBLabel;
    dsListaExcel: TDataSource;
    CxImageList16: TcxImageList;
    CxGroupReportes: TcxGroupBox;
    ListVReportes: TcxListView;
    CxGroupFirmantes: TcxGroupBox;
    pnl1: TPanel;
    pnlInfo: TPanel;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    gridFirmantes: TcxGrid;
    vistaFirmantes: TcxGridDBTableView;
    tcxIdFirmante: TcxGridDBColumn;
    tcxFechaAplicacion: TcxGridDBColumn;
    tcxNombreFirmante: TcxGridDBColumn;
    tcxCargo: TcxGridDBColumn;
    tcxEmpresa: TcxGridDBColumn;
    tcxIdPersonal: TcxGridDBColumn;
    tcxNoFirmante: TcxGridDBColumn;
    tcxAccion: TcxGridDBColumn;
    nivelFirmantes: TcxGridLevel;
    dxBtnCerrar: TdxBarLargeButton;
    procedure btnNuevoCatalogoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure checkPersonalExistentePropertiesEditValueChanged(Sender: TObject);
    procedure cbbEmpleadosPropertiesEditValueChanged(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnEditarCatalogoClick(Sender: TObject);
    procedure btnEliminarCatalogoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListVReportesSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    formularioFirmantes : TForm;
    accion : string;
    procedure abrirFormularioFirmantes(var formulario : TForm; panel : TPanel; ancho, alto : Integer);
    procedure cajasTexto(activo : Boolean);
  public
    { Public declarations }
  end;

var
  FrmFirmantesExcel: TFrmFirmantesExcel;

implementation

{$R *.dfm}

procedure TFrmFirmantesExcel.abrirFormularioFirmantes(var formulario: TForm; panel: TPanel;
  ancho, alto: Integer);
begin
  try
    try
      panel.Align  :=   alClient;
      panel.Visible :=      True;
      formulario  :=  TForm.Create(Self);
      panel.Parent := formulario;
      formulario.BorderStyle := bsSingle;
      formulario.Width := ancho;
      formulario.Height := alto;
      formulario.Position    := poScreenCenter;
      formulario.BorderIcons := [biSystemMenu];
      formulario.ShowModal;
    finally
      if panel.Parent <> Self then
      Begin
        panel.Visible := False;
        Panel.Parent := Self;
      End;

      if Assigned(Formulario) then
        Formulario.Free;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFirmantesExcel.btnCancelarClick(Sender: TObject);
begin
  formularioFirmantes.Close;
end;

procedure TFrmFirmantesExcel.btnEditarCatalogoClick(Sender: TObject);
begin
  //accion := 'Editar';
  //cdFirmantesReportes.Edit;

  if NOT cdFirmantesCatalogo.FieldByName('IdPersonal').IsNull then
    cdFirmantesReportes.Locate('IdPersonal', cdFirmantesCatalogo.FieldByName('IdPersonal').AsInteger, [])
  else
    cdFirmantesReportes.Locate('IdFirmante', cdFirmantesCatalogo.FieldByName('IdFirmante').AsInteger, []);

  cdFirmantesReportes.Edit;

  if Not cdFirmantesCatalogo.FieldByName('IdPersonal').IsNull then
  begin
    checkPersonalExistente.Checked := True;
    cbbEmpleados.Enabled := True;
  end;

  abrirFormularioFirmantes(formularioFirmantes, panelFormularioFirmantes, 460, 310);
  if cdFirmantesReportes.State in [dsEdit, dsInsert] then
    cdFirmantesReportes.Cancel;
end;

procedure TFrmFirmantesExcel.btnEliminarCatalogoClick(Sender: TObject);
begin
  if MessageDlg('¿Desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdFirmantesReportes.Delete;
    cdFirmantesReportes.ApplyUpdates(-1);
    cdFirmantesCatalogo.Refresh;
  end;
end;

procedure TFrmFirmantesExcel.btnGuardarClick(Sender: TObject);
var
  error : Boolean;
  StrMsg: String;
begin
  //Guarda la informacion
  try
    error := False;
    if edtFechaAplicacion.Text = '' then
    begin
      MessageDlg('¡La fecha de Aplicación no es válida!', mtInformation, [mbOk], 0);
      error := True;
      edtFechaAplicacion.SetFocus
    end
    else if cbbAccion.ItemIndex = -1 then
    begin
      MessageDlg('¡Elija una acción!', mtInformation, [mbOk], 0);
      error := True;
      cbbAccion.SetFocus;
    end;

    if Not error then
    begin
      if cbbEmpleados.Enabled = False then
      begin
        cdFirmantesReportes.FieldByName('IdPersonal').AsVariant := Null;
      end;

      if cdFirmantesReportes.State = dsInsert then
      Begin
        cdFirmantesReportes.FieldByName('IdFirmante').AsInteger := 0;
        StrMsg := 'Registro insertado correctamente.';
      End
      else
        StrMsg := 'Registro editado correctamente.';


//      if cbbAccion.ItemIndex = 0 then
//      begin
//        cdFirmantesReportes.FieldByName('Accion').AsString := 'REALIZO'
//      end else if cbbAccion.ItemIndex = 1 then
//      begin
//        cdFirmantesReportes.FieldByName('Accion').AsString := 'REVISO'
//      end else if cbbAccion.ItemIndex = 2 then
//      begin
//        cdFirmantesReportes.FieldByName('Accion').AsString := 'REVISO2'
//      end else if cbbAccion.ItemIndex = 3 then
//      begin
//        cdFirmantesReportes.FieldByName('Accion').AsString := 'VOBO'
//      end else if cbbAccion.ItemIndex = 4 then
//      begin
//        cdFirmantesReportes.FieldByName('Accion').AsString := 'AUTORIZO';
//      end;

      CdFirmantesReportes.FieldByName('IdReporte').AsInteger := cdListaExcel.FieldByName('IdReporte').AsInteger;
      cdFirmantesReportes.Post;
      cdFirmantesReportes.ApplyUpdates(-1);

      cdFirmantesReportes.Refresh;
      cdFirmantesCatalogo.Refresh;

      MessageDlg(strMsg, mtInformation, [mbOk], 0);

      if Assigned(formularioFirmantes) then
        FormularioFirmantes.Close;

    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFirmantesExcel.btnNuevoCatalogoClick(Sender: TObject);
begin
  //Muestra la ventana para agregar nuevos Firmantes
  //accion := 'Nuevo';
  cdFirmantesReportes.Append;
  abrirFormularioFirmantes(formularioFirmantes, panelFormularioFirmantes, 460, 310);
  if cdFirmantesReportes.State in [dsEdit,dsInsert] then
    cdFirmantesReportes.Cancel;
end;

procedure TFrmFirmantesExcel.cajasTexto(activo: Boolean);
begin
  //Habilita o deshabilita las cajas de texto nombre, cargo y empresa
  edtNombre.Enabled  := activo;
  edtCargo.Enabled   := activo;
  edtEmpresa.Enabled := activo;
end;

procedure TFrmFirmantesExcel.cbbEmpleadosPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cdEmpleados.Active then
  begin
    //Mostrar los datos del personal en los otros campos k se deshabilitaron
    cdEmpleados.Locate('IdPersonal', cbbEmpleados.EditValue, []);

    cdFirmantesReportes.FieldByName('NombreFirmante').AsString := cdEmpleados.FieldByName('NombreCompleto').AsString;
    cdFirmantesReportes.FieldByName('Cargo').AsString          :=    cdEmpleados.FieldByName('TituloCargo').AsString;
    cdFirmantesReportes.FieldByName('Empresa').AsString    := cdEmpleados.FieldByName('NombreOrganizacion').AsString;
  end;
end;

procedure TFrmFirmantesExcel.checkPersonalExistentePropertiesEditValueChanged(
  Sender: TObject);
begin
  if checkPersonalExistente.Checked then
  begin
    if cdEmpleados.Active then
      cdEmpleados.Refresh
    else
      cdEmpleados.Open;

    cbbEmpleados.Enabled := True;
    cajasTexto(False)
  end
  else
  begin
    cbbEmpleados.Enabled := False;
    cajasTexto(True);
  end;
end;

procedure TFrmFirmantesExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdFirmantesReportes.ProviderName <> '' then
    EliminarConjunto(cdFirmantesReportes);

  if cdEmpleados.ProviderName <> '' then
    EliminarConjunto(cdEmpleados);

  if cdFirmantesCatalogo.ProviderName <> '' then
    EliminarConjunto(cdFirmantesCatalogo);

  if cdListaexcel.ProviderName <> '' then
    EliminarConjunto(cdListaExcel);

  Action := Cafree;
end;

procedure TFrmFirmantesExcel.FormCreate(Sender: TObject);
begin
  try
    if Not CrearConjunto(cdFirmantesCatalogo, 'nuc_firmantesreportes', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nuc_firmantesreportes']);

    cdFirmantesCatalogo.Open;

    //Crea Conjunto para cdFirmantesReportes
    if Not CrearConjunto(cdFirmantesReportes, 'nuc_firmantesreportes', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['nuc_firmantesreportes']);

    cdFirmantesReportes.Open;

    if Not CrearConjunto(cdEmpleados, 'nuc_personal', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nuc_personal']);

    if not CrearConjunto(cdListaExcel, 'nuc_formatosexcel', ccCatalog) then
      raise InteligentException.CreateByCode(5,['nuc_formatoexcel']);

  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFirmantesExcel.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  lvItem: TListItem;
  Info: TLvItem;
  LocTitulo: String;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      cdListaExcel.Open;
      ListVReportes.Items.Clear;
      cdListaExcel.First;
      while Not CdListaExcel.Eof do
      begin
        Info := TlvItem.Create;
        LocTitulo := cdListaExcel.FieldByName('Titulo').AsString;
        Info.IdReporte := CdListaExcel.FieldByName('IdReporte').AsInteger;
        Info.Titulo := LocTitulo;
        info.IdTipoNomina := -1;
        ListVReportes.AddItem(LocTitulo, Info);
        cdListaExcel.Next;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.MsgType, [mbOK], 0);
  End;
end;

procedure TFrmFirmantesExcel.ListVReportesSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
Var
  Cursor: TCursor;
  LocIdReporte: Integer;
begin
  Try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      LocIdReporte := TLvItem(ListvReportes.Items.Item[Item.Index].Data).IdReporte;
      if cdListaExcel.Locate('IdReporte', LocIdReporte,[]) then
      begin
        if not CargarDatosFiltrados(cdFirmantesCatalogo, 'IdReporte', [LocIdReporte]) then
          raise InteligentException.CreateByCode(6, ['nuc_firmantesreportes', '','IdReporte']);

        if CdFirmantesCatalogo.Active then
          CdFirmantesCatalogo.Refresh
        else
          cdFirmantesCatalogo.Open;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  End;
end;

end.
