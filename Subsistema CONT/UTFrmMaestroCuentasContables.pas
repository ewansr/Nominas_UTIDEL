unit UTFrmMaestroCuentasContables;

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
  cxClasses, dxBar, DBClient, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  ClientModuleUnit1, UInteliDialog, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, Menus, StdCtrls, cxButtons, cxLabel, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, xDatabase;

type
  TxGrid = class
    Identificador: Integer;
    Nivel: Integer;
    Titulo: Integer;
  end;
  TFrmMaestroCuentasContables = class(TForm)
    DxBManagerMain: TdxBarManager;
    cxGB1: TcxGroupBox;
    CxGridCuenta: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CdCuentasContables: TClientDataSet;
    dsCuentasContables: TDataSource;
    DxBarMain: TdxBar;
    CxLevelGrid1Level2: TcxGridLevel;
    CxGridSubCuenta: TcxGridDBTableView;
    CxColumnCxGridCuentaColumn1: TcxGridDBColumn;
    CxColumnCxGridCuentaColumn2: TcxGridDBColumn;
    CxColumnCxGridCuentaColumn3: TcxGridDBColumn;
    CxColumnCxGridCuentaColumn4: TcxGridDBColumn;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonSubcuenta: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    CxColumnDescripcion: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxGrid2: TcxGrid;
    CxGridHijo0: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    CxGridHijo1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    dsSubCuentas: TDataSource;
    CdSubCuentas: TClientDataSet;
    cxGBDatos: TcxGroupBox;
    CxDbTxtClave: TcxDBTextEdit;
    CxDbTxtDescripcion: TcxDBTextEdit;
    CxDbCBoxClase: TcxDBComboBox;
    CdMoneda: TClientDataSet;
    CxLblCuentaPadre: TcxLabel;
    CxLblClave: TcxLabel;
    CxLblDescripcion: TcxLabel;
    CxLblMOneda: TcxLabel;
    CxLblClase: TcxLabel;
    BtnGuardar: TcxButton;
    BtnCancel: TcxButton;
    dsMoneda: TDataSource;
    CxCbbMon: TcxDBLookupComboBox;
    CduptCuenta: TClientDataSet;
    dsUptCuenta: TDataSource;
    CxColumnNivel: TcxGridDBColumn;
    CxGridHijo0Column1: TcxGridDBColumn;
    CxLevel3: TcxGridLevel;
    CxLevel4: TcxGridLevel;
    CxLevel5: TcxGridLevel;
    CxGridHijo2: TcxGridDBTableView;
    CxGridHijo3: TcxGridDBTableView;
    CxGridHijo4: TcxGridDBTableView;
    CxGridHijo2Column1: TcxGridDBColumn;
    CxColumnCxGridHijo3Column1: TcxGridDBColumn;
    CxColumnCxGridHijo4Column1: TcxGridDBColumn;
    CxLevel6: TcxGridLevel;
    CxGridHijo5: TcxGridDBTableView;
    CxColumnCxGridHijo5Column1: TcxGridDBColumn;
    CxColumnCxGridHijo1Column1: TcxGridDBColumn;
    CxColumnCxGridHijo1Column2: TcxGridDBColumn;
    CxColumnCxGridHijo1Column3: TcxGridDBColumn;
    CxColumnCxGridHijo2Column2: TcxGridDBColumn;
    CxColumnCxGridHijo2Column3: TcxGridDBColumn;
    CxColumnCxGridHijo2Column4: TcxGridDBColumn;
    CxColumnCxGridHijo3Column2: TcxGridDBColumn;
    CxColumnCxGridHijo3Column3: TcxGridDBColumn;
    CxColumnCxGridHijo3Column4: TcxGridDBColumn;
    CxColumnCxGridHijo4Column2: TcxGridDBColumn;
    CxColumnCxGridHijo4Column3: TcxGridDBColumn;
    CxColumnCxGridHijo4Column4: TcxGridDBColumn;
    CxColumnCxGridHijo5Column2: TcxGridDBColumn;
    CxColumnCxGridHijo5Column3: TcxGridDBColumn;
    CxColumnCxGridHijo5Column4: TcxGridDBColumn;
    CxLbl1: TcxLabel;
    DxBLbuttonRefresh: TdxBarLargeButton;
    DxBarBtnSelect: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DxBLbuttonAgregarClick(Sender: TObject);
    procedure DxBLbuttonEditarClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure DxBLbuttonEliminarClick(Sender: TObject);
    procedure DxBLbuttonSubcuentaClick(Sender: TObject);
    procedure CxGridHijo0CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridHijo1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridHijo2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridHijo3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridHijo4CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxGridHijo5CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure DxBLbuttonRefreshClick(Sender: TObject);
    procedure DxBarBtnSelectClick(Sender: TObject);
  private
    _RegistroActual: TLista;
    nivelAbajo: Boolean;
    GridNivel: Integer;
    GridName: string;
    LevelName: string;
    GridHijos: TClientDataSet;
    dsGridHijos: TDataSource;
    procedure CrearDialog(Modo: TDataSetState; IdMaestroCuenta: Integer);
    procedure OrganizaEstructura(var cdData: TClientDataSet);
    { Private declarations }
  public
    modoseleccion: Boolean;
    function SeleccionarItem: TLista;
    { Public declarations }
  end;

var
  FrmMaestroCuentasContables: TFrmMaestroCuentasContables;

implementation

{$R *.dfm}

procedure TFrmMaestroCuentasContables.BtnGuardarClick(Sender: TObject);
begin
  try
    if CduptCuenta.State = dsInsert then
      CduptCuenta.FieldByName('IdMaestroCuentas').AsInteger := 0;
    if (GridName <> '') then
    begin

      if (nivelAbajo = False)then
      begin
        CduptCuenta.FieldByName('Nivel').AsString := TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsString;
        CduptCuenta.FieldByName('IdClaveCC').AsString := TClientDataSet(FindComponent(GridName)).FieldByName('IdClaveCC').AsString;
        CduptCuenta.FieldByName('IdTipo').AsString := TClientDataSet(FindComponent(GridName)).FieldByName('IdTipo').AsString;
      end
      else
      begin
        CduptCuenta.FieldByName('Nivel').AsInteger := TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger + 1;
        CduptCuenta.FieldByName('IdClaveCC').AsString := TClientDataSet(FindComponent(GridName)).FieldByName('IdMaestroCuentas').AsString;
        CduptCuenta.FieldByName('IdTipo').AsString := TClientDataSet(FindComponent(GridName)).FieldByName('IdTipo').AsString;
      end;
    end
    else
    begin
      CduptCuenta.FieldByName('Nivel').AsInteger := 0;
      CduptCuenta.FieldByName('IdClaveCC').Clear;
      CduptCuenta.FieldByName('IdTipo').AsInteger := 1;
    end;
    CduptCuenta.Post;
    CduptCuenta.ApplyUpdates(-1);
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmMaestroCuentasContables.CrearDialog(Modo: TDataSetState; IdMaestroCuenta: Integer);
var
  gForma: TForm;
  Cursor: TCursor;
  cad: string;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if GridName <> '' then
      begin
        CxLblCuentaPadre.Visible := (Modo in [dsInsert, dsEdit]);
        if nivelAbajo then
        begin
          if (TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger > 0) and (Modo in [dsInsert]) then
          begin
            cad := IntToStr(TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger);
            CxLblCuentaPadre.Caption := TClientDataSet(FindComponent('cdhijo'+ cad)).FieldByName('Descripcion').AsString;
          end
          else
            CxLblCuentaPadre.Caption := 'CUENTA PADRE';
        end
        else
        begin
          if (TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger > 0) and (Modo in [dsInsert]) then
          begin
            cad := IntToStr(TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger -1);
            CxLblCuentaPadre.Caption := TClientDataSet(FindComponent('cdhijo'+ cad)).FieldByName('Descripcion').AsString;
          end
          else
            CxLblCuentaPadre.Caption := 'CUENTA PADRE';
        end;
      end
      else
      begin
        CxLblCuentaPadre.Enabled := Modo in [dsInsert, dsEdit];
        CxLblCuentaPadre.Caption := 'CUENTA PADRE';
      end;

      if CduptCuenta.State in [dsInsert, dsEdit] then
        CduptCuenta.Cancel;

      if not CargarDatosFiltrados(CduptCuenta, 'IdMaestroCuentas', [IdMaestroCuenta]) then
        raise InteligentException.CreateByCode(6, ['Catalogo de cuentas', 'IdMaestroCuentas', IntToStr(IdMaestroCuenta)]);

      if CduptCuenta.Active then
        CduptCuenta.Refresh
      else
        CduptCuenta.Open;

      if (modo = dsEdit) and (cduptCuenta.recordcount = 0) then
        raise InteligentException.CreateByCode(24, ['No se encontro un registro disponible para editar.']);

      gForma := TForm.Create(nil);
      if CduptCuenta.State in [dsInsert] then
      begin
        gForma.Name := 'agregarCC';
        gForma.Caption := 'Agregar Cuenta';
      end
      else if CduptCuenta.State in [dsEdit] then
      begin
        gForma.Name := 'EditarCC';
        gForma.Caption := 'Editar Cuenta';
      end;
      gForma.Width := 320;
      gForma.Height := 240;
      gForma.BorderStyle := bsSingle;
      cxGBDatos.Parent := gForma;
      cxGBDatos.Align := alClient;
      cxGBDatos.Visible := True;
      if gForma.ShowModal = mrOk then
      begin
        CdCuentasContables.Refresh;
        OrganizaEstructura(CdCuentasContables);
      end;
    finally
      Screen.Cursor := cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    on e: Exception do
      InteliDialog.ShowModal('Error', 'Ah Ocurrido un error inesperado.' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmMaestroCuentasContables.CxGridHijo0CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GridName := TcxGridDBTableView(Sender).DataController.DataSource.DataSet.Name;
  LevelName := Sender.Level.Name;
  //DxBLbuttonAgregar.Enabled := (TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger > 0);
  DxBLbuttonSubcuenta.Enabled := (TClientDataSet(FindComponent(GridName)).FieldByName('Nivel').AsInteger < 5);
  //ShowMessage(IntToStr(GridNivel) + ' ' + GridName + ' ' + LevelName +TClientDataSet(FindComponent(GridName)).FieldByName('Descripcion').AsString);
end;

procedure TFrmMaestroCuentasContables.CxGridHijo1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GridName := Sender.Name;
  LevelName := Sender.Level.Name;
  ShowMessage(IntToStr(GridNivel) + ' ' + GridName + ' ' + LevelName);
end;

procedure TFrmMaestroCuentasContables.CxGridHijo2CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GridName := Sender.Name;
  LevelName := Sender.Level.Name;
  ShowMessage(IntToStr(GridNivel) + ' ' + GridName + ' ' + LevelName);
end;

procedure TFrmMaestroCuentasContables.CxGridHijo3CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GridName := Sender.Name;
  LevelName := Sender.Level.Name;
  ShowMessage(IntToStr(GridNivel) + ' ' + GridName + ' ' + LevelName);
end;

procedure TFrmMaestroCuentasContables.CxGridHijo4CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GridName := Sender.Name;
  LevelName := Sender.Level.Name;
  ShowMessage(IntToStr(GridNivel) + ' ' + GridName + ' ' + LevelName);
end;

procedure TFrmMaestroCuentasContables.CxGridHijo5CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GridName := Sender.Name;
  LevelName := Sender.Level.Name;
  ShowMessage(IntToStr(GridNivel) + ' ' + GridName + ' ' + LevelName);
  if TcxGridLevel(FindComponent(sender.Level.Name)).Index = cxGrid2.Levels.Count - 1 then
    DxBLbuttonSubcuenta.Enabled := False;


end;

procedure TFrmMaestroCuentasContables.DxBarBtnSelectClick(Sender: TObject);
begin
  try
    if length(Trim(GridName)) = 0 then
      raise InteligentException.CreateByCode(24, ['Debes Selccionar un registro para poder continuar.']);

    if TClientDataSet(FindComponent(GridName)).State = dsBrowse then
      if TClientDataSet(FindComponent(GridName)).RecordCount < 1 Then
        raise InteligentWarning.CreateByCode(26, ['Catalogo de conceptos']);

      _RegistroActual := TLista.Create();
      _RegistroActual := GetCurrentRecord(TClientDataSet(FindComponent(GridName)));
      close;
  Except
    on e:exception do
      InteliDialog.ShowModal('No se puede seleccionar.',e.message, mtInformation, [mbOk], 0);
  End;
end;

procedure TFrmMaestroCuentasContables.DxBLbuttonAgregarClick(Sender: TObject);
begin
  nivelAbajo := False;
  CrearDialog(dsInsert,-9);
end;

procedure TFrmMaestroCuentasContables.DxBLbuttonEditarClick(Sender: TObject);
begin
  CrearDialog(dsEdit,TClientDataSet(FindComponent(GridName)).FieldByName('IdMaestroCuentas').AsInteger);
end;

procedure TFrmMaestroCuentasContables.DxBLbuttonEliminarClick(Sender: TObject);
var
  IdMaestroCta: Integer;
begin
  try
    if (InteliDialog.ShowModal('Aviso', '¿Está seguro que desea eliminar este registro ' + TClientDataSet(FindComponent(GridName)).FieldByName('Descripcion').AsString + '?', mtInformation, [mbYes, mbNo], 0)) = mrYes then
    begin
      IdMaestroCta := TClientDataSet(FindComponent(GridName)).FieldByName('IdMaestroCuentas').AsInteger;
      if CduptCuenta.State in [dsInsert, dsEdit] then
        CduptCuenta.Cancel;

      if not CargarDatosFiltrados(CduptCuenta, 'IdMaestroCuentas', [IdMaestroCta]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de cuentas Contables', 'IdMaestroCuentas', CdCuentasContables.FieldByName('IdMaestroCuentas').AsString]);

      if CduptCuenta.Active then
        CduptCuenta.Refresh
      else
        CduptCuenta.Open;

      if CduptCuenta.RecordCount = 1 then
      begin
        CduptCuenta.Delete;
        CduptCuenta.ApplyUpdates(-1);
        CdCuentasContables.Refresh;
        OrganizaEstructura(CdCuentasContables);
      end;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message,e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', 'Ha ocurrido un error inesperado.' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmMaestroCuentasContables.DxBLbuttonRefreshClick(Sender: TObject);
begin
  CdCuentasContables.Refresh;
  OrganizaEstructura(CdCuentasContables);

end;

procedure TFrmMaestroCuentasContables.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMaestroCuentasContables.DxBLbuttonSubcuentaClick(Sender: TObject);
var
  nivelGrid: TcxGridLevel;
  GridData: TcxGridDBTableView;
begin
  nivelAbajo := True;
  CrearDialog(dsInsert,-9);
end;

procedure TFrmMaestroCuentasContables.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFrmMaestroCuentasContables.FormCreate(Sender: TObject);
begin
  ModoSeleccion := False;
  if not CrearConjunto(CdCuentasContables, 'con_maestrocuentas', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Maestro cuentas contables']);

  if not CrearConjunto(CdSubCuentas, 'con_maestrocuentas', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Maestro cuentas contables']);

  if not CrearConjunto(CdMoneda, 'nuc_moneda', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Monedas']);

  if not CrearConjunto(CduptCuenta, 'con_maestrocuentas', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Maestro cuentas contables / UPDATE']);
end;

procedure TFrmMaestroCuentasContables.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(CdCuentasContables, 'IdMaestroCuentas', [-1]) then
        raise InteligentException.CreateByCode(6, ['Maestro Cuentas Contables', 'IdMaestroCuentas', '-1']);

      if CdCuentasContables.Active then
        CdCuentasContables.Refresh
      else
        CdCuentasContables.Open;

      if not CargarDatosFiltrados(cdSubcuentas, 'IdMaestroCuentas', [-1]) then
        raise InteligentException.CreateByCode(6, ['Maestro Cuentas Contables', 'IdMaestroCuentas', '-1']);

      if cdSubcuentas.Active then
        cdSubcuentas.Refresh
      else
        cdSubcuentas.Open;

      if not CargarDatosFiltrados(CdMoneda, 'idMoneda,Activo', [-1,'Si']) then
        raise InteligentException.CreateByCode(6, ['Maestro Cuentas Contables', 'IdMaestroCuentas', '-1']);

      if CdMoneda.Active then
        CdMoneda.Refresh
      else
        CdMoneda.Open;

      OrganizaEstructura(CdCuentasContables);
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message,e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', 'Ha ocurrido un error inesperado.' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmMaestroCuentasContables.OrganizaEstructura(var cdData: TClientDataSet);
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

function TFrmMaestroCuentasContables.SeleccionarItem: TLista;
begin
  Try

    ModoSeleccion := true;
    self.FormStyle := fsNormal;
    self.Visible := false;
    self.ShowModal;
    result := GetCurrentRecord(TClientDataSet(FindComponent(gridname)));
    result := _RegistroActual;
  Except
    on e:InteligentException do
      if e.Message <> '***' then
        raise
      else
      begin
        Result := Nil;
        Close;
      end;
  End;
end;
end.
