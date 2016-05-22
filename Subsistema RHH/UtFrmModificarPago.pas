unit UtFrmModificarPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxGroupBox, ClientModuleUnit1,
  dxSkinsdxBarPainter, dxBar, Menus, cxLabel, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, ExtCtrls, cxEditRepositoryItems;

type
  TfrmModificarPago = class(TForm)
    groupBoxPagos: TcxGroupBox;
    cxDBGrid1: TcxGrid;
    cxDbGridPagos: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    cdNominaPersonal: TClientDataSet;
    dsNominaPersonal: TDataSource;
    grdColumDbGridPagosColumn1: TcxGridDBColumn;
    grdColumDbGridPagosColumn2: TcxGridDBColumn;
    grdColumDbGridPagosColumn3: TcxGridDBColumn;
    grdColumDbGridPagosColumn4: TcxGridDBColumn;
    dxbrmngr1: TdxBarManager;
    tbdxbrmngr1Bar1: TdxBar;
    btnBtnEditar: TdxBarLargeButton;
    btnBtnGuardar: TdxBarLargeButton;
    pnl1: TPanel;
    cdReferencias: TClientDataSet;
    dsReferencias: TDataSource;
    btnAceptar: TcxButton;
    btnCancelar: TcxButton;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    dsFormaPago: TDataSource;
    cdFormaPago: TClientDataSet;
    cxGridRepos1: TcxGridViewRepository;
    cxDbGridFormaPago: TcxGridDBTableView;
    cxDbGridReferencias: TcxGridDBTableView;
    grdColumDbGridFormaPagoColumn1: TcxGridDBColumn;
    grdColumDbGridReferenciasColumn1: TcxGridDBColumn;
    dsuptNominaPersonal: TDataSource;
    cduptNominaPersonal: TClientDataSet;
    cbbFormaPago: TcxExtLookupComboBox;
    cbbReferencia: TcxComboBox;
    ItemRes1: TcxEditRepository;
    ItemCboxItemRes1ComboBoxItem1: TcxEditRepositoryComboBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBtnEditarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbbFormaPagoPropertiesChange(Sender: TObject);
    procedure cxDbGridPagosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure cargarPagosNomina;
    procedure cargarreferencias(IDFormaPago: Integer);
    procedure cargarFormasPago;
    { Private declarations }
  public
    IdNomina: Integer;
    { Public declarations }
  end;

var
  frmModificarPago: TfrmModificarPago;

implementation

{$R *.dfm}

procedure TfrmModificarPago.btnAceptarClick(Sender: TObject);
begin
  cduptNominaPersonal.Locate('IdNominaPersonal',cdNominaPersonal.FieldByName('IdNominaPersonal').AsInteger, []);
  cduptNominaPersonal.Edit;
  cduptNominaPersonal.FieldByName('IdFormaPago').AsInteger := cbbFormaPago.EditValue;
  cduptNominaPersonal.FieldByName('Referencia').AsString := cbbReferencia.Text;
  cduptNominaPersonal.Post;
  cduptNominaPersonal.ApplyUpdates(-1);
  cargarPagosNomina;
  TForm(FindComponent('FrmEditar')).close;
  //TForm(FindComponent('FrmEditar')).Destroy;
end;

procedure TfrmModificarPago.btnBtnEditarClick(Sender: TObject);
var
  gForma: TForm;
begin
  if NOt Assigned(FindComponent('FrmEditar')) then
  begin
    gForma := TForm.create(self);
    ClientModule1.ComponentColor(gForma);
    gForma.name := 'FrmEditar';
    gForma.Caption := 'Modificar Pago';
    pnl1.Parent := gForma;
    pnl1.Visible := True;
    pnl1.Align := alClient;
  end;
  cargarFormasPago;
  cargarreferencias(-1);
  cbbFormaPago.EditValue := cdNominaPersonal.FieldByName('IdFormaPago').AsInteger;
  cbbReferencia.Text := cdNominaPersonal.FieldByName('referencia').AsString;
  lbl3.Caption := cdNominaPersonal.FieldByName('NombreCompleto').AsString;
  TForm(FindComponent('FrmEditar')).Width := 360;
  TForm(FindComponent('FrmEditar')).Height := 180;
  TForm(FindComponent('FrmEditar')).ShowModal;

end;

procedure TfrmModificarPago.btnCancelarClick(Sender: TObject);
begin
  TForm(FindComponent('FrmEditar')).close;
  //TForm(FindComponent('FrmEditar')).Destroy;
end;

procedure TfrmModificarPago.cargarFormasPago;
var
  cursor: TCursor;
begin
  try
    cursor := Screen.cursor;
    Screen.cursor := CrAppStart;
    try
      if cdFormaPago.ProviderName = '' then
        if not crearConjunto(cdFormaPago, 'nom_formapago', ccCatalog) then
          raise InteligentException.createByCode(5,['Referencias de Pago']);

      if not cargarDatosFiltrados(cdFormaPago, 'IdFormaPago', [-1]) then
        raise InteligentException.createByCode(6, ['Formas de Pago', 'IdFormaPago', -1]);

      if cdFormaPago.active then
        cdFormaPago.refresh
      else
        cdFormaPago.open;
    finally
      screen.cursor := cursor;
    end;
  except
    on e: Exception do
      showmessage(e.toString + ' ' + e.ClassName);
  end;
end;

procedure TfrmModificarPago.cargarPagosNomina;
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(cdNominaPersonal, 'IdNomina', [IdNomina]) then
        raise InteligentException.CreateByCode(6, ['Pagos Nomina, IdNomina,' + IntToStr(IdNomina)]);

      if not CargarDatosFiltrados(cduptNominaPersonal, 'IdNomina', [IdNOmina]) then
        raise InteligentException.CreateByCode(6, ['Pagos Nomina, IdNomina,' + IntToStr(IdNomina)]);

      if cdNominaPersonal.Active then
        cdNominaPersonal.Refresh
      else
        cdNominaPersonal.Open;

      if cdUptNominaPersonal.Active then
        cdUptNominaPersonal.Refresh
      else
        cdUptNominaPersonal.Open;
    finally
      Screen.Cursor := cursor;
    end;
  Except
    on e: Exception do
      ShowMessage(e.ToString + ' ' + e.ClassName);
  end;
end;

procedure TfrmModificarPago.cargarreferencias(IDFormaPago: Integer);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.cursor;
    Screen.cursor := CrAppStart;
    try
      if cdReferencias.ProviderName = '' then
        if not crearConjunto(cdReferencias, 'nom_nominapersonal', ccSelect) then
          raise InteligentException.createByCode(5,['Referencias de Pago']);

      if not cargarDatosFiltrados(cdReferencias, 'IdNomina,referencia,IdFormaPago', [IdNomina, 'Si',IDFormaPago]) then
        raise InteligentException.createByCode(6, ['Referencias de Pago', 'IdNomina', IdNomina]);

      if cdReferencias.active then
        cdReferencias.refresh
      else
        cdReferencias.open;

      cbbReferencia.Properties.Items.Clear;
      cdReferencias.First;
      while not cdReferencias.Eof do
      begin
        cbbReferencia.Properties.Items.Add(cdReferencias.FieldByName('Referencia').AsString);
        cdReferencias.Next;
      end;
    finally
      screen.cursor := cursor;
    end;
  except
    on e: Exception do
      showmessage(e.toString + ' ' + e.ClassName);
  end;
end;

procedure TfrmModificarPago.cbbFormaPagoPropertiesChange(Sender: TObject);
begin
  cargarreferencias(cbbFormaPago.EditValue);
  cbbReferencia.Text := '';
end;

procedure TfrmModificarPago.cxDbGridPagosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   btnBtnEditarClick(nil);
end;

procedure TfrmModificarPago.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdNominaPersonal, 'nom_nominapersonal', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Pago de Nómina.']);

  if not CrearConjunto(cdUptNominaPersonal, 'nom_nominapersonal', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Pago de Nómina.']);
end;

procedure TfrmModificarPago.FormShow(Sender: TObject);
begin
  cargarPagosNomina;
end;

end.
