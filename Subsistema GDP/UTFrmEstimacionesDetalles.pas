unit UTFrmEstimacionesDetalles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, JvMemoryDataset, DB, DBClient, AdvShapeButton,
  StdCtrls, Buttons, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, UTFrmPartidaDoc, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, DBCtrls,
  JvExControls, JvLabel, Mask, NxDBColumns, NxColumns;

type
  TFrmEstimacionesDetalles = class(TFrmDetalleDocs)
    txtCodigo: TDBEdit;
    JvLabel3: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    memComentarios: TDBMemo;
    btnLugar: TButton;
    txtCodigoLugar: TEdit;
    txtFechaInicial: TJvDBDatePickerEdit;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    txtFechaFinal: TJvDBDatePickerEdit;
    JvLabel1: TJvLabel;
    etiTituloTipoEstimacion: TEdit;
    JvLabel2: TJvLabel;
    txtCodigoReprogramacion: TEdit;
    btnReprogramacion: TButton;
    txtTituloReprogramacion: TEdit;
    txtMoneda: TDBEdit;
    JvLabel8: TJvLabel;
    mdDetallado: TJvMemoryData;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBTextColumn11: TNxDBTextColumn;
    NxDBTextColumn12: TNxDBTextColumn;
    NxDBTextColumn13: TNxDBTextColumn;
    NxDBTextColumn14: TNxDBTextColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBMemoColumn3: TNxDBMemoColumn;
    NxDBTextColumn15: TNxDBTextColumn;
    NxDBTextColumn16: TNxDBTextColumn;
    GridDetallado: TNextDBGrid;
    dsDetallado: TDataSource;
    mdDetalladonumeroactividad: TStringField;
    mdDetalladoventamn: TFloatField;
    mdDetalladoventadll: TFloatField;
    mdDetalladocantidadactividad: TFloatField;
    mdDetalladocantidadestimacion: TFloatField;
    mdDetalladodescripcionactividad: TMemoField;
    mdDetalladocomentariosdetalle: TMemoField;
    mdDetalladosubtotal: TFloatField;
    mdDetalladoestima: TStringField;
    mdDetalladoidactividadesxestimacion: TIntegerField;
    procedure Inicializar; override;
    procedure btnLugarClick(Sender: TObject);
    procedure btnReprogramacionClick(Sender: TObject);
    procedure btnAgregarDetalleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarDetalleClick(Sender: TObject);
    procedure btnQuitarDetalleClick(Sender: TObject);
    procedure mdDetalladoAfterScroll(DataSet: TDataSet);
  private
    procedure CargarGridVista(idestimacion: Integer);
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure HacerComponentesEditables; override;
    function createPopUpPartida: TFrmPartidaDoc; override;
    procedure CargarCampos; override;
  end;

var
  FrmEstimacionesDetalles: TFrmEstimacionesDetalles;

implementation

uses
  ClientModuleUnit1, UInteliDialog, Unit2, UTfrmReprogramaciones, UTFrmEstimacionesPartidas, xDatabase, UTFrmTiposestimacion,
  strutils;
{$R *.dfm}
{ TFrmEstimacionesDetalles }

procedure TFrmEstimacionesDetalles.btnAgregarDetalleClick(Sender: TObject);
begin

  if dsDatos.DataSet.FieldByName('idconvenio').AsString = '' then
  begin
    InteliDialog.ShowModal('Error', 'Debe Seleccionar una Reprogramación', TMsgDlgType.mtError, [mbOk], 0);
    exit;
  end;
  if dsDatos.DataSet.FieldByName('idtiposestimacion').AsString = '' then
  begin
    InteliDialog.ShowModal('Error', 'Debe Seleccionar un tipo de Estimación', TMsgDlgType.mtError, [mbOk], 0);
    exit;
  end;

  if ClientModule1.VerificaVacio(txtCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(txtFechaInicial, 'Fecha Inicial') = False then
    exit;
  if ClientModule1.VerificaVacio(txtFechaFinal, 'Fecha Final') = False then
    exit;
  if ClientModule1.VerificaVacio(memComentarios, 'Comentarios') = False then
    exit;
  if ClientModule1.VerificaVacio(txtMoneda, 'Moneda') = False then
    exit;

  inherited;
  CargarGridVista(dsDatos.DataSet.FieldByName('idestimacion').AsInteger);
end;

procedure TFrmEstimacionesDetalles.btnEditarDetalleClick(Sender: TObject);
begin
  inherited;
  CargarGridVista(dsDatos.DataSet.FieldByName('idestimacion').AsInteger);
end;

procedure TFrmEstimacionesDetalles.btnLugarClick(Sender: TObject);
var
  Tipoestimacion: TLista;
  frmTiposestimacion: TfrmTiposestimacion;
begin
  inherited;
  frmTiposestimacion := TfrmTiposestimacion.Create(nil);
  Tipoestimacion := frmTiposestimacion.SeleccionarItem;
  if assigned(Tipoestimacion) then
  begin
    dsDatos.DataSet.FieldByName('idtiposestimacion').AsString := Tipoestimacion.Valor['idtiposestimacion'];
    etiTituloTipoEstimacion.Text := Tipoestimacion.Valor['descripcion'];
    txtCodigoReprogramacion.SetFocus;
  end;
  frmTiposestimacion.Free;
  Tipoestimacion.Free;
end;

procedure TFrmEstimacionesDetalles.btnQuitarDetalleClick(Sender: TObject);
begin
  inherited;
  CargarGridVista(dsDatos.DataSet.FieldByName('idestimacion').AsInteger);
end;

procedure TFrmEstimacionesDetalles.btnReprogramacionClick(Sender: TObject);
var
  Valores: TLista;
  frmReprogramaciones: TfrmReprogramaciones;
begin
  inherited;
  frmReprogramaciones := TfrmReprogramaciones.Create(nil);
  Valores := frmReprogramaciones.SeleccionarItem;
  if assigned(Valores) then
  begin
    dsDatos.DataSet.FieldByName('idconvenio').AsString := Valores.Valor['idconvenio'];
    txtTituloReprogramacion.Text := Valores.Valor['descripcion'];
    memComentarios.SetFocus;
  end;
  frmTiposestimacion.Free;
  Valores.Free;
end;

procedure TFrmEstimacionesDetalles.CargarCampos;
begin
  inherited;
  // sirve para los datos del padre o de la tabla principal.
end;

function TFrmEstimacionesDetalles.createPopUpPartida: TFrmPartidaDoc;
Var
  temp: TFrmEstimacionesPartidas;
begin

  temp := TFrmEstimacionesPartidas.Create(nil);

  if dsDatos.DataSet.FieldByName('idconvenio').AsString = '' then
    temp.idconvenio := 0
  else
    temp.idconvenio := dsDatos.DataSet.FieldByName('idconvenio').AsInteger;

  result := temp;
end;

procedure TFrmEstimacionesDetalles.FormShow(Sender: TObject);
begin
  inherited;
  CargarGridVista(dsDatos.DataSet.FieldByName('idestimacion').AsInteger);
end;

procedure TFrmEstimacionesDetalles.HacerComponentesEditables;
begin
  // este apratado nos sirve para establecer el modo edicion de los
  // componentes que hacen referencia a la tabla principal
  // ejemplo  cmbFirmante5.Enabled := ModoEdicion;

end;

procedure TFrmEstimacionesDetalles.Inicializar;
begin
  // inherited;
  keydetailfield := 'idactividadesxestimacion';
  keyParentField := 'idestimacion';
  entityDetailName := 'nuc_actividadesxestimacion';
end;

procedure TFrmEstimacionesDetalles.mdDetalladoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    if (mdDetallado.RecordCount > 0) then
      mdDetalle.Locate('idactividadesxestimacion', mdDetallado.FieldByName('idactividadesxestimacion').AsInteger, []);
  except
    on E: Exception do
    begin

    end;
  end;
end;

procedure TFrmEstimacionesDetalles.CargarGridVista(idestimacion: Integer);
var
  ProveedorDatos: String;
  cdInfoPartidas: TClientDataSet;
begin
  // Costo de venta de la partida por la cantidad a estimar

  cdInfoPartidas := TClientDataSet.Create(nil);
  cdInfoPartidas.RemoteServer := ClientModule1.DSProviderConnection1;
  CrearConjunto(cdInfoPartidas, 'nuc_actividadesxestimacion', ProveedorDatos, ccCatalog);
  CargarDatosFiltrados(cdInfoPartidas, 'idestimacion', [idestimacion]);
  cdInfoPartidas.Open;

  mdDetallado.Close;
  mdDetallado.Active := False;
  mdDetallado.Open;

  while not cdInfoPartidas.EOF do
  begin
    mdDetallado.Append;
    mdDetallado.FieldByName('idactividadesxestimacion').AsInteger := cdInfoPartidas.FieldByName('idactividadesxestimacion').AsInteger;
    mdDetallado.FieldByName('numeroactividad').AsString := cdInfoPartidas.FieldByName('numeroactividad').AsString;
    mdDetallado.FieldByName('ventamn').AsFloat := cdInfoPartidas.FieldByName('ventamn').AsFloat;
    mdDetallado.FieldByName('ventadll').AsFloat := cdInfoPartidas.FieldByName('ventadll').AsFloat;
    mdDetallado.FieldByName('cantidadactividad').AsFloat := cdInfoPartidas.FieldByName('cantidadactividad').AsFloat;
    mdDetallado.FieldByName('cantidadestimacion').AsFloat := cdInfoPartidas.FieldByName('cantidadestimacion').AsFloat;
    mdDetallado.FieldByName('descripcionactividad').AsString := cdInfoPartidas.FieldByName('descripcionactividad').AsString;
    mdDetallado.FieldByName('comentariosdetalle').AsString := cdInfoPartidas.FieldByName('comentariosdetalle').AsString;
    mdDetallado.FieldByName('subtotal').AsFloat := cdInfoPartidas.FieldByName('subtotal').AsFloat;
    mdDetallado.FieldByName('estima').AsString := cdInfoPartidas.FieldByName('estima').AsString;
    mdDetallado.Post;
    cdInfoPartidas.Next;
  end;
  mdDetallado.Last;
  mdDetallado.First;
  EliminarConjunto(ProveedorDatos);
  cdInfoPartidas.Free;
end;

end.
