unit UTFrmCuentasBanco;

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
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, DBClient,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBar, UInteliDialog, URegistro,
  ClientModuleUnit1, cxContainer, cxGroupBox, Menus, StdCtrls, cxButtons,
  cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxLabel, xDatabase,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, rhh_genericclasses, frxClass, frxDBSet;

type
  TFrmCuentasBanco = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CdBancos: TClientDataSet;
    CdBancosUpt: TClientDataSet;
    dsBanco: TDataSource;
    dsBancosUpt: TDataSource;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    cxGBDatos: TcxGroupBox;
    CxDbTxtDescripcion: TcxDBTextEdit;
    CxDbTxtComentarios: TcxDBTextEdit;
    CxDbTxtSucursal: TcxDBTextEdit;
    CxDbTxtCuenta: TcxDBTextEdit;
    CxDbTxtClabe: TcxDBTextEdit;
    CxCbbOrganización: TcxDBLookupComboBox;
    CxLbl1: TcxLabel;
    CxLbl2: TcxLabel;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CxLbl6: TcxLabel;
    CxLbl7: TcxLabel;
    CxLbl8: TcxLabel;
    CdOrganizacion: TClientDataSet;
    dsOrganizacion: TDataSource;
    CxColumnGrid1DBTableView1Column1: TcxGridDBColumn;
    CxColumnGrid1DBTableView1Column2: TcxGridDBColumn;
    CxColumnGrid1DBTableView1Column3: TcxGridDBColumn;
    CxColumnGrid1DBTableView1Column4: TcxGridDBColumn;
    CxColumnGrid1DBTableView1Column5: TcxGridDBColumn;
    CxColumnGrid1DBTableView1Column6: TcxGridDBColumn;
    CxColumnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGBCuentasContables: TcxGroupBox;
    cxGrid2: TcxGrid;
    CxGridHijo0: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    CxColumnNivel: TcxGridDBColumn;
    CxGridHijo0Column1: TcxGridDBColumn;
    CxGridHijo1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    CxColumnCxGridHijo1Column1: TcxGridDBColumn;
    CxColumnCxGridHijo1Column2: TcxGridDBColumn;
    CxColumnCxGridHijo1Column3: TcxGridDBColumn;
    CxGridHijo2: TcxGridDBTableView;
    CxGridHijo2Column1: TcxGridDBColumn;
    CxColumnCxGridHijo2Column2: TcxGridDBColumn;
    CxColumnCxGridHijo2Column3: TcxGridDBColumn;
    CxColumnCxGridHijo2Column4: TcxGridDBColumn;
    CxGridHijo3: TcxGridDBTableView;
    CxColumnCxGridHijo3Column1: TcxGridDBColumn;
    CxColumnCxGridHijo3Column2: TcxGridDBColumn;
    CxColumnCxGridHijo3Column3: TcxGridDBColumn;
    CxColumnCxGridHijo3Column4: TcxGridDBColumn;
    CxGridHijo4: TcxGridDBTableView;
    CxColumnCxGridHijo4Column1: TcxGridDBColumn;
    CxColumnCxGridHijo4Column2: TcxGridDBColumn;
    CxColumnCxGridHijo4Column3: TcxGridDBColumn;
    CxColumnCxGridHijo4Column4: TcxGridDBColumn;
    CxGridHijo5: TcxGridDBTableView;
    CxColumnCxGridHijo5Column1: TcxGridDBColumn;
    CxColumnCxGridHijo5Column2: TcxGridDBColumn;
    CxColumnCxGridHijo5Column3: TcxGridDBColumn;
    CxColumnCxGridHijo5Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    CxLevel3: TcxGridLevel;
    CxLevel4: TcxGridLevel;
    CxLevel5: TcxGridLevel;
    CxLevel6: TcxGridLevel;
    CdCuentasCOntables: TClientDataSet;
    CxBtnEdtMaestroCuenta: TcxButtonEdit;
    cxGroupBox1: TcxGroupBox;
    CxBtnSelect: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    BtnCancelar: TcxButton;
    BtnGuardar: TcxButton;
    CxCbbBanco: TcxDBLookupComboBox;
    CdCatBancos: TClientDataSet;
    dsCatBancos: TDataSource;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    btnImprimir: TdxBarLargeButton;
    frxReporteCuentas: TfrxReport;
    frxOrganizacion: TfrxDBDataset;
    frxCuentas: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DxBLbuttonAgregarClick(Sender: TObject);
    procedure DxBLbuttonEditarClick(Sender: TObject);
    procedure DxBLbuttonEliminarClick(Sender: TObject);
    procedure DxBLbuttonActualizarClick(Sender: TObject);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure CdBancosAfterRefresh(DataSet: TDataSet);
    procedure CxBtnEdtMaestroCuentaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CxGridHijo0CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnGuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
  private
    gForm: TForm;
    nivelAbajo: Boolean;
    GridNivel: Integer;
    GridName: string;
    LevelName: string;
    GridHijos: TClientDataSet;
    dsGridHijos: TDataSource;
    function organizaEstructura(var cdData: TClientDataset): Boolean;
    { Private declarations }
  public
    resultado: Integer;
    { Public declarations }
  end;

var
  FrmCuentasBanco: TFrmCuentasBanco;

implementation
uses
  UTFrmMaestroCuentasContables;
{$R *.dfm}

procedure TFrmCuentasBanco.BtnGuardarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    if Length(Trim(CxBtnEdtMaestroCuenta.Text)) = 0 then
    begin
      CxBtnEdtMaestroCuenta.SetFocus;
      raise InteligentException.CreateByCode(18,['Cuenta Contable']);
    end;

    if Length(Trim(CxCbbOrganización.Text)) = 0 then
    begin
      CxCbbOrganización.SetFocus;
      raise InteligentException.CreateByCode(18,['Organización']);
    end;

    if Length(Trim(CxCbbBanco.Text)) = 0 then
    begin
      CxCbbBanco.SetFocus;
      raise InteligentException.CreateByCode(18,['Banco']);
    end;

    if Length(Trim(CxDbTxtDescripcion.Text)) = 0 then
    begin
      CxDbTxtDescripcion.SetFocus;
      raise InteligentException.CreateByCode(18,['Descripción']);
    end;

    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if CdBancosUpt.State in [dsInsert] then
        CdBancosUpt.FieldByName('IdCuentaBanco').AsInteger := 1;

      //CdBancosUpt.FieldByName('Banco').AsString := CxCbbBanco.Text;
      CdBancosUpt.FieldByName('Descripcion').AsString := CxDbTxtDescripcion.Text;
      CdBancosUpt.Post;
      CdBancosUpt.ApplyUpdates(-1);
    finally
      resultado := mrOk;
      cxGBDatos.Visible := False;
      cxGBDatos.Align := alCustom;
      cxGBDatos.Parent := Self;
      gform.Close;
      CxBtnEdtMaestroCuenta.Text := '';
      //TForm(Assigned(FindComponent('FrmAddCtaBanco'))).Close;
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCuentasBanco.btnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'Cuentas.fr3';
      CompReporte := FrxReporteCuentas;
      CompDataSetReporte := FrxCuentas;

      LocalImprimeReporte(cdBancos, cxGrid1DBTableView1,'Catálogo de Bancos');
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.', e.Message, mtInformation, [mbOK], 0);
    end;

  end;

end;

procedure TFrmCuentasBanco.CdBancosAfterRefresh(DataSet: TDataSet);
begin
  DxBLbuttonEditar.Enabled := (CdBancos.Active) and (CdBancos.RecordCount > 0);
  DxBLbuttonEliminar.Enabled := DxBLbuttonEditar.Enabled;
end;

procedure TFrmCuentasBanco.CxBtnEdtMaestroCuentaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
  gForma: TForm;
begin
  try
    try
      gForma := TForm.Create(nil);
      gForma.Width := 620;
      gForma.Height := 395;
      gForma.Caption := 'Ligar con cta. Contable';
      gForma.BorderStyle := bsSingle;
      cxGBCuentasContables.Parent := gForma;
      cxGBCuentasContables.Visible := True;
      cxGBCuentasContables.Align := alClient;

      if gForma.ShowModal = mrOk then
      begin
        CdBancosUpt.FieldByName('IdMaestroCuentas').AsInteger := TClientDataSet(FindComponent(GridName)).FieldByName('idMaestroCuentas').AsInteger;
        CxBtnEdtMaestroCuenta.Text := TClientDataSet(FindComponent(GridName)).FieldByName('Descripcion').AsString;
      end;
    finally
      cxGBCuentasContables.Visible := False;
      cxGBCuentasContables.Align := alCustom;
      cxGBCuentasContables.Parent := Self;
      gForma.Destroy;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0) ;
  end;
end;

procedure TFrmCuentasBanco.CxGridHijo0CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GridName := TcxGridDBTableView(Sender).DataController.DataSource.DataSet.Name;
  LevelName := Sender.Level.Name;
  //DxBLbuttonAgregar.Enabled := (TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger > 0);
  //DxBLbuttonSubcuenta.Enabled := (TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger < 5);

end;

procedure TFrmCuentasBanco.DxBLbuttonActualizarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      CdBancos.Refresh;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCuentasBanco.DxBLbuttonAgregarClick(Sender: TObject);
//var
  //gForm: TForm;
begin
  try
    try
      resultado := mrNone;
      if not Assigned(gForm) then
        gForm := TForm.Create(self);

      gForm.Width := 350;
      gForm.Height := 305;
      gForm.Name := 'FrmAddCtaBanco';
      gForm.Caption := 'Nueva Cuenta Bancaria.';
      gForm.BorderStyle := bsSingle;
      cxGBDatos.Parent := gForm;
      cxGBDatos.Visible := True;
      cxGBDatos.Align := alClient;

      CdBancosUpt.Close;
      if not CargarDatosFiltrados(CdBancosUpt, 'idCuentaBanco', [-9]) then
        raise InteligentException.CreateByCode(6,['Catálogo de Bancos', '']);

      if CdBancosUpt.Active then
        CdBancosUpt.Refresh
      else
        CdBancosUpt.Open;
      CdBancosUpt.Append;

      gForm.ShowModal;
      if resultado = mrOk then
        CdBancos.Refresh;
    finally
      //gForm.Close;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0) ;
  end;
end;

procedure TFrmCuentasBanco.DxBLbuttonEditarClick(Sender: TObject);
//var
  //gForm: TForm;
begin
  try
    try
      resultado := mrNone;
      if not Assigned(gForm) then
        gForm := TForm.Create(self);

      gForm.Width := 350;
      gForm.Height := 305;
      gForm.Name := 'FrmAddCtaBanco';
      gForm.Caption := 'Editar Cuenta Bancaria [' + CdBancos.FieldByName('Banco').AsString + CdBancos.FieldByName('Cuenta').AsString + ']';
      gForm.BorderStyle := bsSingle;
      cxGBDatos.Parent := gForm;
      cxGBDatos.Visible := True;
      cxGBDatos.Align := alClient;

      CdBancosUpt.Close;
      if not CargarDatosFiltrados(CdBancosUpt, 'idCuentaBanco', [CdBancos.FieldByName('IdCuentaBanco').AsInteger]) then
        raise InteligentException.CreateByCode(6,['Catálogo de Bancos', '']);

      if CdBancosUpt.Active then
        CdBancosUpt.Refresh
      else
        CdBancosUpt.Open;

      if CdBancosUpt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(24, ['La tabla Cuentas Banco, tiene registros duplicados. Favor de Contactar al administrador de Sistema.']);

      CdBancosUpt.Edit;
      CdBancosUpt.FieldByName('idMaestroCuentas').AsInteger := CdBancos.FieldByName('idMaestroCuentas').AsInteger;
      CxBtnEdtMaestroCuenta.Text := CdBancos.FieldByName('descripcionCuenta').AsString;

      gForm.ShowModal;
      if resultado = mrOk then
        CdBancos.Refresh;
    finally
      //gForm.Close;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0) ;
  end;
end;

procedure TFrmCuentasBanco.DxBLbuttonEliminarClick(Sender: TObject);
begin
  try
    if (InteliDialog.ShowModal('Aviso', '¿Está seguro que desea eliminar el siguiente registros [Banco:' + CdBancos.FieldByName('banco').AsString  +
                              'Cuenta: ' + CdBancos.FieldByName('Cuenta').AsString + ']',mtConfirmation,[mbYes, mbNo],0)) = mrYes then
    begin
      if not CargarDatosFiltrados(CdBancosUpt, 'idCuentaBanco', [CdBancos.FieldByName('idCuentaBanco').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Cuentas Bancarias / *Update', 'IdCuentaBanco', CdBancos.FieldByName('IdCuentaBanco').AsString]);

      if CdBancosUpt.Active then
        CdBancosUpt.Refresh
      else
        CdBancosUpt.Open;

      if CdBancosUpt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(24, ['Existen registros duplicados, Favor de contactar a su administrador del sistema']);

      CdBancosUpt.Delete;
      CdBancosUpt.ApplyUpdates(-1);
      CdBancos.Refresh;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCuentasBanco.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCuentasBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmCuentasBanco.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdCatBancos, 'con_bancos', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['con_bancos']);

  if not CrearConjunto(CdBancos, 'con_cuentabanco', ccCatalog)  then
    raise InteligentException.CreateByCode(5, ['Catálogo de Cuentas Bancarias']);

  if not CrearConjunto(CdBancosUpt, 'con_cuentabanco', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Catálogo de cuentas Bancarias / *Update']);

  if not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Catálogo de cuentas Bancarias / *Update']);

  if not CrearConjunto(CdCuentasCOntables, 'con_maestrocuentas', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Cuentas Contables / *Select']);

end;

procedure TFrmCuentasBanco.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(CdCatBancos, 'Activo', ['Si']) then
        raise InteligentException.CreateByCode(6, ['con_bancos', 'Activo', 'Si']);

      if CdCatBancos.Active then
        CdCatBancos.Refresh
      else
        CdCatBancos.Open;

      if not CargarDatosFiltrados(CdBancos, 'idCuentaBanco', [-1]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Cuentas Bancarias', 'idCuentaBanco', '-1']);

      if CdBancos.Active then
        CdBancos.Refresh
      else
        CdBancos.Open;

      if not CargarDatosFiltrados(CdOrganizacion, 'IdOrganizacion, padre', [-1, -5]) then
        raise InteligentException.CreateByCode(6, ['Catálogo Organización', 'IdOrganizacion', '-1']);

      if CdOrganizacion.Active then
        CdOrganizacion.Refresh
      else
        CdOrganizacion.Open;

      if not CargarDatosFiltrados(CdCuentasCOntables, 'idMaestroCuentas', [-1]) then
        raise InteligentException.CreateByCode(6, ['Catalogo Cuentas contables / *Select', 'idMaestroCuenta', '-1']);

      if CdCuentasCOntables.Active then
        CdCuentasCOntables.Refresh
      else
        CdCuentasCOntables.Open;
      organizaEstructura(CdCuentasCOntables);
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

function TFrmCuentasBanco.organizaEstructura(var cdData: TClientDataset): Boolean;
var
  cdNiveles: TClientDataSet;
  OldCursor: Tcursor;
procedure copiardataset (CdtOrigen : TClientDataset; var CdtDestino: TclientDataset);
var
 i: integer;
 Campo : string;
begin
  try
    for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
    begin
      CdtDestino.FieldDefs.Add(CdtOrigen.FieldDefs.Items[i].Name,
      CdtOrigen.FieldDefs.Items[i].DataType,
      CdtOrigen.FieldDefs.Items[i].Size,
      False);
    end;

    CdtDestino.CreateDataSet;
    CdtDestino.Open;

    CdtOrigen.First;
    while not CdtOrigen.Eof do
    begin
      CdtDestino.Append;
      for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
      begin
        Campo := CdtOrigen.FieldDefs.Items[i].Name;
        CdtDestino.FieldValues[Campo]:=CdtOrigen.FieldValues[Campo];
      end;
      CdtDestino.Post;
      CdtOrigen.Next;
    end;
  except
    raise;
  end;
end;
begin
  try
    OldCursor := screen.cursor;
    screen.Cursor := crAppStart;
    try
      cdNiveles := TclientDataset.create(self);

      if cdNiveles.ProviderName = '' then
        if not CrearConjunto(cdNiveles, 'con_maestrocuentas', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Niveles del grid']);

      if not CargarDatosFiltrados(cdNiveles, 'IdMaestroCuentas,nivel,aNivel', [-1, -1, 'Si']) then
        raise InteligentException.CreateByCode(6, ['Niveles', 'IdMaestroCuentas', '-1']);

      if cdNiveles.Active then
        cdNiveles.Refresh
      else
        cdNiveles.Open;

      cdNiveles.First;
      while not cdNiveles.Eof do
      begin
        cdData.Filtered := False;
        cdData.Filter := 'nivel = ' + cdNiveles.FieldByName('Nivel').AsString;
        cdData.Filtered := True;
        if (Assigned(FindComponent('cdhijo' + cdNiveles.FieldByName('Nivel').AsString))) and (TClientDataSet(FindComponent('cdhijo' + cdNiveles.FieldByName('Nivel').AsString)).Active) then
        begin
          TClientDataSet(FindComponent('cdhijo' + cdNiveles.FieldByName('Nivel').AsString)).Destroy;
          //TClientDataSet(FindComponent('cdhijo' + cdNiveles.FieldByName('Nivel').AsString)).FieldDefs.Clear;
        end;
        GridHijos := TClientDataSet.Create(self);
        GridHijos.Name := 'cdhijo' + cdNiveles.FieldByName('Nivel').AsString;
        cdData.first;
        copiardataset(cdData, GridHijos);

        if (Assigned(FindComponent('dshijo' + cdNiveles.FieldByName('Nivel').AsString))) then
          TDataSource(FindComponent('dshijo' + cdNiveles.FieldByName('Nivel').AsString)).Destroy;

        dsGridHijos := TDataSource.Create(Self);
        dsGridHijos.Name := 'dshijo' + cdNiveles.FieldByName('Nivel').AsString;

        dsGridHijos.DataSet := TClientDataSet(FindComponent('cdhijo' + cdNiveles.FieldByName('Nivel').AsString));
        TcxGridDBTableView(FindComponent('CxGridHijo' + cdNiveles.FieldByName('Nivel').AsString)).DataController.DataSource := dsGridHijos;//TDataSource(FindComponent('dshijo' + cdNiveles.FieldByName('Nivel').AsString));
        cdNiveles.Next;
      end;
    finally
      cdNiveles.Destroy;
      Screen.Cursor := OldCursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message,e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', 'Ha ocurrido un error inesperado.' + e.Message, mtError, [mbOK], 0);
  end;
end;

end.
