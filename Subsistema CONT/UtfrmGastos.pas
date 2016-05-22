unit UtfrmGastos;

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
  cxLookAndFeelPainters, cxContainer, cxEdit, dxBar, cxClasses, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxTextEdit, cxDBEdit, DB, DBClient, cxMemo, cxLabel, cxGroupBox, cxGrid,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ClientModuleUnit1, UInteliDialog, StdCtrls, Mask,
  RxToolEdit, RXDBCtrl, cxCalendar, dxSkinscxPCPainter, cxGridLevel,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TFrmGastos = class(TForm)
    Panel1: TcxGroupBox;
    dxbrmngr1: TdxBarManager;
    Paneldxbrmngr1Bar1: TdxBar;
    dxBtnAgregar: TdxBarLargeButton;
    dxBtnEditar: TdxBarLargeButton;
    dxBtnGuardar: TdxBarLargeButton;
    dxBtnEliminar: TdxBarLargeButton;
    dxBtnActualizar: TdxBarLargeButton;
    dxBtn1: TdxBarLargeButton;
    cdGastos: TClientDataSet;
    dsGastos: TDataSource;
    editReferencia: TcxDBTextEdit;
    EditImporte: TcxDBTextEdit;
    editIva: TcxDBTextEdit;
    editNoPoliza: TcxDBTextEdit;
    cbbCargo: TcxDBExtLookupComboBox;
    cbbCuentaBancaria: TcxDBExtLookupComboBox;
    cbbNoOrden: TcxDBExtLookupComboBox;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    cxdbmDescripcion: TcxDBMemo;
    lbl10: TcxLabel;
    cxGridRepos1: TcxGridViewRepository;
    cdOrden: TClientDataSet;
    cdCuentaBancaria: TClientDataSet;
    cdCargo: TClientDataSet;
    dsOrden: TDataSource;
    dsCuentaBancaria: TDataSource;
    dsCargo: TDataSource;
    cxDbGridCuentaBancaria: TcxGridDBTableView;
    cxDbGridCargo: TcxGridDBTableView;
    cxDbGridOrden: TcxGridDBTableView;
    grdColumDbGridCuentaBancariaColumn1: TcxGridDBColumn;
    grdColumDbGridCargoColumn1: TcxGridDBColumn;
    grdColumDbGridOrdenColumn1: TcxGridDBColumn;
    lbl11: TcxLabel;
    cbbPersonal: TcxDBExtLookupComboBox;
    cxDbGridPersonal: TcxGridDBTableView;
    grdColumDbGridGridRepos1DBTableView1Column1: TcxGridDBColumn;
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    dxDate1: TcxDBDateEdit;
    Panel2: TcxGroupBox;
    cxDBGrid1: TcxGrid;
    cxDbGridGastos: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    grdColumDbGridGastosColumn1: TcxGridDBColumn;
    grdColumDbGridGastosColumn2: TcxGridDBColumn;
    grdColumDbGridGastosColumn3: TcxGridDBColumn;
    grdColumDbGridGastosColumn4: TcxGridDBColumn;
    grdColumDbGridGastosColumn5: TcxGridDBColumn;
    grdColumDbGridGastosColumn6: TcxGridDBColumn;
    grdColumDbGridGastosColumn7: TcxGridDBColumn;
    grdColumDbGridCuentaBancariaColumn2: TcxGridDBColumn;
    procedure dxBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBtnGuardarClick(Sender: TObject);
    procedure dxBtnAgregarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2DblClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
  private
    procedure validarForm;
    { Private declarations }
  public
    ImporteTotal: Extended;
    { Public declarations }
  end;

var
  FrmGastos: TFrmGastos;

implementation

{$R *.dfm}

procedure TFrmGastos.dxBtn1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmGastos.dxBtnAgregarClick(Sender: TObject);
begin
  cdGastos.Append;
end;

procedure TFrmGastos.dxBtnGuardarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    if Trim(cdGastos.FieldByName('sIdArea').AsString) = '' then
    begin
      cbbCargo.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Area Cargo']);
    end;

    if Trim(cdGastos.FieldByName('sIdNumeroCuenta').AsString) = '' then
    begin
      cbbCuentaBancaria.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Cuenta Bancaria']);
    end;

    if Trim(cdGastos.FieldByName('sIdProveedor').AsString) = '' then
    begin
      cbbPersonal.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Beneficiario']);
    end;

    if Trim(cdGastos.FieldByName('dIdFecha').AsString) = '' then
    begin
      dxDate1.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Fecha']);
    end;

    if Trim(cdGastos.FieldByName('sNumeroOrden').AsString) = '' then
    begin
      cbbnoOrden.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Numero de Orden']);
    end;

    if Trim(EditImporte.Text) = '' then
    begin
      EditImporte.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Importe del Gasto']);
    end;

    try
      if cdGastos.State = dsInsert then
      begin
        cdGastos.FieldByName('iIdFolio').AsInteger := 0;
        cdGastos.FieldByName('sTipoMovimiento').AsString := 'GASTOS';
        cdGastos.FieldByName('sIdCompania').AsString := 'NO TIENE';
        cdGastos.FieldByName('sRFC').AsString := cdPersonal.FieldByName('sRFC').AsString;
        cdGastos.FieldByName('sRazonSocial').AsString := cdPersonal.FieldByName('sNombreCompleto').AsString + cdPersonal.FieldByName('sApellidoMaterno').AsString +cdPersonal.FieldByName('sApellidoMaterno').AsString;
        cdGastos.FieldByName('sDomicilio').AsString := cdPersonal.FieldByName('sDomicilio').AsString;
        cdGastos.FieldByName('sCiudad').AsString := cdPersonal.FieldByName('sCiudad').AsString ;
        cdGastos.FieldByName('sCP').AsString := cdPersonal.FieldByName('sCp').AsString ;
        cdGastos.FieldByName('sEstado').AsString := cdPersonal.FieldByName('sEstado').AsString ;
        cdGastos.FieldByName('sTelefono').AsString := cdPersonal.FieldByName('sTelefono').AsString ;
        cdGastos.FieldByName('lComprobado').AsString := 'No';
        cdGastos.FieldByName('sStatus').AsString := 'APROBADO';
        //******Volver dinamico de acuerdo a la fecha del sevidor y extraer el anio
        cdGastos.fieldbyName('Iejercicio').asInteger := 2014;
        if Trim(cdGastos.FieldByName('dIva').AsString) = '' then
          cdGastos.FieldByName('lAplicaIva').AsString := 'No'
        else
          cdGastos.FieldByName('lAplicaIva').AsString := 'Si';
      end;
      if cdGastos.State in [dsInsert, dsEdit] then
      begin
        cdGastos.Post;
        cdGastos.ApplyUpdates(-1);
        Close;
      end;
    finally
      Screen.Cursor := cursor;

    end;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentConnection do
      ;   // No hacer nada, solo lo uso para cambiar el flujo del programa

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;

  end;
end;

procedure TFrmGastos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdGastos.State in[dsinsert, dsEdit] then
    cdGastos.Cancel;
end;

procedure TFrmGastos.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdOrden, 'con_ordenesdetrabajo', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Órdenes de trabajo'] );

  if not CrearConjunto(cdCuentaBancaria, 'con_cuentasbancarias', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Cuentas Bancarias'] );

  if not CrearConjunto(cdCargo, 'con_areas', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Areas'] );

  if not CrearConjunto(cdGastos, 'con_tesoreriaegresos', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Tesoreria Egresos'] );

  if not CrearConjunto(cdPersonal, 'erp_empleados', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Empleados'] );
end;

procedure TFrmGastos.FormShow(Sender: TObject);
begin
  try
    if not CargarDatosFiltrados(cdOrden, 'sNumeroOden', [-1]) then
      raise InteligentException.CreateByCode(6, ['Ordenes de Trabajo','sNumeroOrden', '-1']);

    if not CargarDatosFiltrados(cdGastos, 'iIdFolio', [-1]) then
      raise InteligentException.CreateByCode(6, ['tesorería Egresos','iIdFolio', '-1']);

    if not CargarDatosFiltrados(cdCargo, 'sIdArea', [-1]) then
      raise InteligentException.CreateByCode(6, ['Areas','sIdArea', '-1']);

    if not CargarDatosFiltrados(cdCuentaBancaria, 'sIdNumeroCuenta', [-1]) then
      raise InteligentException.CreateByCode(6, ['Cuentas Bancarias','sIdNumeroCuenta', '-1']);

    if not CargarDatosFiltrados(cdPersonal, 'IdPersonal', [-1]) then
      raise InteligentException.CreateByCode(6, ['Empleados','IdPersonal', '-1']);

    if cdOrden.Active then
      cdOrden.Refresh
    else
      cdOrden.Open;

    if cdGastos.Active then
      cdGastos.Refresh
    else
      cdGastos.Open;

    if cdCargo.Active then
      cdCargo.Refresh
    else
      cdCargo.Open;

    if cdCuentaBancaria.Active then
      cdCuentaBancaria.Refresh
    else
      cdCuentaBancaria.Open;

    if cdPersonal.Active then
      cdPersonal.Refresh
    else
      cdPersonal.Open;

    cdGastos.Append;
    EditImporte.Text := FloatToStr(ImporteTotal*(-1));
    //editFolio.SetFocus;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmGastos.Panel1DblClick(Sender: TObject);
begin
  if Panel2.Height > 20 then
    Panel2.Height := 20
  else
    Panel2.Height := 214;
end;

procedure TFrmGastos.Panel2DblClick(Sender: TObject);
begin
  if Panel1.Height > 20 then
    Panel1.Height := 20
  else
    Panel1.Height := 208;
end;

procedure TFrmGastos.validarForm;
begin

end;

end.
