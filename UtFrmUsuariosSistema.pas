unit UtFrmUsuariosSistema;

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
  DBClient, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, dxBar, cxLabel,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit, Menus,
  StdCtrls, cxButtons, ClientModuleUnit1, UInteliDialog, URegistro, cxButtonEdit,
  cxDBExtLookupComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, rhh_genericclasses,
  frxClass, frxDBSet;

type
  TFrmUsuariosSistema = class(TForm)
    cxGBDatos: TcxGroupBox;
    DxBManagerMain: TdxBarManager;
    CdUsuario: TClientDataSet;
    CdUsuarioUpt: TClientDataSet;
    dsUsuario: TDataSource;
    cxGrid1: TcxGrid;
    CxGridUsuarios: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    CxDbTxtUsuario: TcxDBTextEdit;
    CxDbTxtPassword: TcxDBTextEdit;
    CxDbTxtNombre: TcxDBTextEdit;
    cxGBProcesos: TcxGroupBox;
    CxVGrid1: TcxDBVerticalGrid;
    CxLbl1: TcxLabel;
    CxLblPass: TcxLabel;
    CxLblNombre: TcxLabel;
    BtnGuardar: TcxButton;
    BtnCancelar: TcxButton;
    CxCategoryEstimaciones: TcxCategoryRow;
    CxEditorAutorizar: TcxDBEditorRow;
    CxEditorValidar: TcxDBEditorRow;
    CxEditorDesautorizar: TcxDBEditorRow;
    CxEditorDesvalidar: TcxDBEditorRow;
    CxCategoryRequisiciones: TcxCategoryRow;
    CxEditorRecibeReq: TcxDBEditorRow;
    CxEditorVerificaReq: TcxDBEditorRow;
    CxEditorAutorizaReq: TcxDBEditorRow;
    CxCategoryOrdenesTrabajo: TcxCategoryRow;
    CxEditorCompraOp: TcxDBEditorRow;
    CxEditorCompraAdmon: TcxDBEditorRow;
    CxEditorAutorizaOC: TcxDBEditorRow;
    CxCategoryValidaProcesos: TcxCategoryRow;
    CxEditorAutorizaProc: TcxDBEditorRow;
    CxEditorValidaProc: TcxDBEditorRow;
    CxEditorDesRepDiario: TcxDBEditorRow;
    CxEditorDesvRepDiario: TcxDBEditorRow;
    CxEditorDesAutorizagenerador: TcxDBEditorRow;
    CxEditorDesvalidaGenerador: TcxDBEditorRow;
    CxCategoryOtros: TcxCategoryRow;
    CxEditorAsignaFC: TcxDBEditorRow;
    CxEditorRevisaBarco: TcxDBEditorRow;
    CxEditorAjusteAv: TcxDBEditorRow;
    dsUsuarioupt: TDataSource;
    CxColumnsIdUsuario: TcxGridDBColumn;
    CxColumnNombre: TcxGridDBColumn;
    CxColumnMail: TcxGridDBColumn;
    CxColumnsPuesto: TcxGridDBColumn;
    CxColumnGrupo: TcxGridDBColumn;
    CxLookUpRoles: TcxDBExtLookupComboBox;
    CxGridReposRoles: TcxGridViewRepository;
    CxGridRoles: TcxGridDBTableView;
    CxColumnIdRol: TcxGridDBColumn;
    CxColumnTitulo: TcxGridDBColumn;
    CxLblRoles: TcxLabel;
    CdRoles: TClientDataSet;
    dsRoles: TDataSource;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    btnImprimir: TdxBarLargeButton;
    frxReporteUsuarios: TfrxReport;
    frxUsuarios: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure DxBLbuttonAgregarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DxBLbuttonEditarClick(Sender: TObject);
    procedure CdUsuarioAfterOpen(DataSet: TDataSet);
    procedure DxBLbuttonEliminarClick(Sender: TObject);
    procedure DxBLbuttonActualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGuardarClick(Sender: TObject);
    procedure CxGridUsuariosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuariosSistema: TFrmUsuariosSistema;

implementation

{$R *.dfm}

procedure TFrmUsuariosSistema.BtnGuardarClick(Sender: TObject);
begin
  try
    //BtnGuardar.ModalResult := mrNone;
    if Length(Trim(CxDbTxtUsuario.Text)) = 0 then
    begin
      raise InteligentException.CreateByCode(24, ['usuario']);
      CxDbTxtUsuario.SetFocus;
    end;

    if Length(Trim(CxDbTxtPassword.Text)) = 0 then
    begin
      raise InteligentException.CreateByCode(24, ['Password']);
      CxDbTxtPassword.SetFocus;
    end;

    if Length(Trim(CxDbTxtNombre.Text)) = 0 then
    begin
      raise InteligentException.CreateByCode(24, ['Nombre']);
      CxDbTxtNombre.SetFocus;
    end;

//    if Length(Trim(CxLookUpRoles.Text)) = 0 then
//    begin
//      raise InteligentException.CreateByCode(24, ['Nombre']);
//      CxLookUpRoles.SetFocus;
//    end;

    if CdUsuarioUpt.State in [dsInsert, dsEdit] then
    begin
      CdUsuarioUpt.FieldByName('IdRol').AsInteger := 1;
      CdUsuarioUpt.Post;
      CdUsuarioUpt.ApplyUpdates(-1);
      //If Assigned(TForm(FindComponent('frmAdd'))) then
      //begin
        //cxGBDatos.Visible := False;
        //cxGBDatos.Parent := Self;
        //TForm(FindComponent('frmAdd')).Destroy;
      //end;
    end;
  except
    on e: InteligentException do
    begin

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmUsuariosSistema.btnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'Usuarios.fr3';
      CompReporte := FrxReporteUsuarios;
      CompDataSetReporte := FrxUsuarios;

      LocalImprimeReporte(cdUsuario, CxGridUsuarios,'Catálogo de Usuarios');
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

procedure TFrmUsuariosSistema.CdUsuarioAfterOpen(DataSet: TDataSet);
begin
  DxBLbuttonEditar.Enabled := (CdUsuario.Active) and (CdUsuario.RecordCount > 0);
  DxBLbuttonEliminar.Enabled := (CdUsuario.Active) and (CdUsuario.RecordCount > 0);
end;

procedure TFrmUsuariosSistema.CxGridUsuariosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  DxBLbuttonEditarClick(nil);
end;

procedure TFrmUsuariosSistema.DxBLbuttonActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  try
    if CdUsuarioUpt.State in [dsInsert, dsEdit]then
      CdUsuarioUpt.Cancel;
    CdUsuario.Refresh
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmUsuariosSistema.DxBLbuttonAgregarClick(Sender: TObject);
var
  gForm: TForm;
  LocIdUsuario: string;
begin
  if not Assigned(gForm) then
    gForm := TForm.Create(nil);
  gForm.Width := 460;
  gForm.Height := 480;
  gForm.BorderStyle := bsDialog;
  gForm.Caption := 'Nuevo Usuario.';
  gForm.Name := 'frmAdd';
  cxGBDatos.Parent := gForm;
  cxGBDatos.Visible := True;
  cxGBDatos.Align := alClient;

  CdUsuarioUpt.Close;
  if not CargarDatosFiltrados(CdUsuarioUpt, 'sIdUsuario', [-9]) then
    raise InteligentException.CreateByCode(6, ['Usuario / *Update', 'sIdUsuario', '-9']);

  if CdUsuarioUpt.Active then
    CdUsuarioUpt.Refresh
  else
    CdUsuarioUpt.Open;

   //llenar con si todos los campos
  CdUsuarioUpt.Append;
  CdUsuarioUpt.FieldByName('lAutorizaEstimacion').AsString := 'Si';
  CdUsuarioUpt.FieldByName('LValidaEstimacion').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lDesautorizaEstimacion').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lDesvalidaEstimacion').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lRecibeReq').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lVerificaReq').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lAutorizaRequisiciones').AsString := 'Si';
  CdUsuarioUpt.FieldByName('llRevisaGOperacion').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lRevisaCoordAdmin').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lAutorizaPedido').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lAutoriza').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lValida').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lDesAutorizaRD').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lDesAutorizaGeneradores').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lDesValidaRD').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lDesValidaGeneradores').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lAsignaFrentes').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lRevisaBarco').AsString := 'Si';
  CdUsuarioUpt.FieldByName('lRealizaAjustes').AsString := 'Si';

  if gForm.ShowModal = mrOk then
    CdUsuario.Refresh
  else
    CdUsuarioUpt.Cancel;
end;

procedure TFrmUsuariosSistema.DxBLbuttonEditarClick(Sender: TObject);
var
  gForm: TForm;
  LocIdUsuario: string;
begin
  if not Assigned(gForm) then
    gForm := TForm.Create(nil);
  gForm.Width := 445;
  gForm.Height := 465;
  gForm.BorderStyle := bsSingle;
  gForm.Caption := 'Nuevo Usuario.';
  cxGBDatos.Parent := gForm;
  cxGBDatos.Visible := True;
  cxGBDatos.Align := alClient;

  CdUsuarioUpt.close;
  if not CargarDatosFiltrados(CdUsuarioUpt, 'sIdUsuario', [CdUsuario.FieldByName('sidUsuario').AsString]) then
    raise InteligentException.CreateByCode(6, ['Usuario / *Update', 'sIdUsuario', '-9']);

  if CdUsuarioUpt.Active then
    CdUsuarioUpt.Refresh
  else
    CdUsuarioUpt.Open;

  CdUsuarioUpt.Edit;
  if gForm.ShowModal = mrOk then
    CdUsuario.Refresh
  else
    CdUsuarioUpt.Cancel;
end;

procedure TFrmUsuariosSistema.DxBLbuttonEliminarClick(Sender: TObject);
begin
  try
    if (InteliDialog.ShowModal('Aviso', '¿Está seguro que desea eliminar al usuario [' + CdUsuario.FieldByName('sIdUsuario').AsString  + CdUsuario.FieldByName('sNombre').AsString  + ']', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
    begin
      CdUsuarioUpt.Close;
      if not CargarDatosFiltrados(CdUsuarioUpt, 'idUsuario', [CdUsuario.FieldByName('IdUsuario').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Usuarios / *update', 'sIdUsuario', CdUsuario.FieldByName('sIdUsuario').AsString]);

      if CdUsuarioUpt.Active then
        CdUsuarioUpt.Refresh
      else
        CdUsuarioUpt.open;

      if CdUsuarioUpt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(9, [CdUsuario.FieldByName('sIdUsuario').AsString, CdUsuario.FieldByName('sNombre').AsString ]);

      CdUsuarioUpt.Delete;
      CdUsuarioUpt.ApplyUpdates(-1);
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title,e.Message,e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmUsuariosSistema.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmUsuariosSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmUsuariosSistema.FormCreate(Sender: TObject);
begin
  try
    if not CrearConjunto(CdUsuario, 'usuarios', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Catálogo de Usuarios']);

    if not CrearConjunto(CdUsuarioUpt, 'Usuarios', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Catálogo de Usuarios / *Update']);

    if not CrearConjunto(CdRoles, 'nuc_rol', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Catálogo de Roles / *Update']);
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Erro', 'Ha ocurrido un error inesperado. Contacte a su administrador de sistema', mtError, [mbOK], 0);
  end;
end;

procedure TFrmUsuariosSistema.FormShow(Sender: TObject);
var
  cursor: Tcursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(CdUsuario, 'sIdUsuario', [-1]) then
        raise InteligentException.CreateByCode(6, [' Usuarios ', 'sIdusuario', '-1']);

      if CdUsuario.Active then
        CdUsuario.Refresh
      else
        CdUsuario.Open;

      if not CargarDatosFiltrados(CdRoles, 'idRol', [-1]) then
        raise InteligentException.CreateByCode(6, ['Catálogo Roles', 'idRol', '-1']);

      if CdRoles.Active then
        CdRoles.Refresh
      else
        CdRoles.Open;
    finally
      Screen.Cursor := cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Erro', 'Ha ocurrido un error inesperado. Contacte a su administrador de sistema', mtError, [mbOK], 0);
  end;
end;

end.
