unit UTFrmEstimacionesPartidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmPartidaDoc, DB, JvMemoryDataset, AdvShapeButton, ExtCtrls,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Mask, DBCtrls, StdCtrls,
  JvExControls, JvLabel, DBClient;

type
  TFrmEstimacionesPartidas = class(TFrmPartidaDoc)
    edtCodigoArticulo: TEdit;
    JvLabel1: TJvLabel;
    btnArticulo: TButton;
    edtCantidad: TJvDBCalcEdit;
    JvLabel2: TJvLabel;
    txtTituloVentana: TJvLabel;
    cdReprogramaciones: TClientDataSet;
    dsReprogramaciones: TDataSource;
    txtDescripcion: TMemo;
    txtComentarios: TDBMemo;
    JvLabel3: TJvLabel;
    txtInstalacion: TDBEdit;
    JvLabel4: TJvLabel;
    Estima: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnArticuloClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidaCampos: boolean; override; // sirve para verificar campos vacios
    procedure LimpiarCampos; override; // al agregar un registro al detalle limpia componente para el nuevo registro
    procedure InicializarCampos; override; // permite establecer campos con datos de inicio como por ejemplo la fecha
    procedure CargarCampos; override; // para cargar los campos de
  public
    { Public declarations }
    idconvenio: integer;
    codigoconvenio: string;
  end;

var
  FrmEstimacionesPartidas: TFrmEstimacionesPartidas;

implementation

Uses
  ClientModuleUnit1, xDatabase, UTFrmForm, UInteliDialog;
{$R *.dfm}
{ TFrmEstimacionesPartidas }

procedure TFrmEstimacionesPartidas.BtnAddClick(Sender: TObject);
var
  Subtotal: Double;
  VentaMN: Double;
  ProveedorDatos: String;
  cdInfoPartidas : TClientDataSet;
begin
  dsDetalle.DataSet.FieldByName('acumulado').AsFloat := 0;

  dsDetalle.DataSet.FieldByName('estima').AsString := 'Si';
  dsDetalle.DataSet.FieldByName('fecha').AsDateTime := Now;

  // idactividad
  if dsDetalle.DataSet.FieldByName('idactividad').AsString = '' then
  begin
    InteliDialog.ShowModal('Error', 'Debe Seleccionar un tipo de Estimación', TMsgDlgType.mtError, [mbOk], 0);
    exit;
  end;
  if dsDetalle.DataSet.FieldByName('estima').AsString = '' then
  begin
    InteliDialog.ShowModal('Error', 'Seleccione si la Actividad Estima o no.', TMsgDlgType.mtError, [mbOk], 0);
    exit;
  end;
  if ClientModule1.VerificaVacio(edtCantidad, 'Cantidad') = False then
    exit;
  if ClientModule1.VerificaVacio(txtComentarios, 'Comentarios') = False then
    exit;
  if ClientModule1.VerificaVacio(txtInstalacion, 'Instalación') = False then
    exit;

  // Costo de venta de la partida por la cantidad a estimar
  cdInfoPartidas := TClientDataSet.Create(nil);
  cdInfoPartidas.RemoteServer := ClientModule1.DSProviderConnection1;
  CrearConjunto(cdInfoPartidas, 'nuc_catalogodeactividades', ProveedorDatos, ccCatalog);
  CargarDatosFiltrados(cdInfoPartidas, 'idactividad', [dsDetalle.DataSet.FieldByName('idactividad').AsInteger]);
  cdInfoPartidas.Open;
  if cdInfoPartidas.RecordCount > 0 then
  begin
    VentaMN := cdInfoPartidas.FieldByName('ventamn').AsFloat;
  end
  else
  begin
    VentaMN := 0;
  end;
  EliminarConjunto(ProveedorDatos);
  cdInfoPartidas.Free;

  Subtotal := edtCantidad.Value * VentaMN;
  dsDetalle.DataSet.FieldByName('subtotal').AsFloat := Subtotal;

  inherited;
end;

procedure TFrmEstimacionesPartidas.btnArticuloClick(Sender: TObject);
var
  formPartidas: TFrmForm;
  DatosPartidas: TLista;
begin
  inherited;
  // Mostrar las partidas, pero solo las del convenio seleccionado
  // en esta estimación
  formPartidas := TFrmForm.Create(nil);
  formPartidas.idconvenio := self.idconvenio;

  DatosPartidas := formPartidas.SeleccionarItem;
  if assigned(DatosPartidas) then
  begin
    dsDetalle.DataSet.FieldByName('idactividad').AsInteger := DatosPartidas.Valor['idactividad'];
    txtDescripcion.Text := DatosPartidas.Valor['descripcion'];
    txtComentarios.Text := DatosPartidas.Valor['descripcion'];
    edtCantidad.SetFocus;
  end;
  formPartidas.Free;
  DatosPartidas.Free;
end;

procedure TFrmEstimacionesPartidas.CargarCampos;
begin
  inherited;

end;

procedure TFrmEstimacionesPartidas.FormCreate(Sender: TObject);
begin
  inherited;
  idDetailField := 'idactividad';
end;

procedure TFrmEstimacionesPartidas.FormShow(Sender: TObject);
var
  Providername: String;
begin
  // Buscar datos del convenio  o reprogramación
  CrearConjunto(cdReprogramaciones, 'nuc_reprogramaciones', Providername, ccCatalog);
  CargarDatosFiltrados(cdReprogramaciones, 'idconvenio', [idconvenio]);
  cdReprogramaciones.Open;
  if cdReprogramaciones.RecordCount > 0 then
  begin
    txtTituloVentana.Caption := 'Registro de Actividad en la Reprogramación:';
    txtTituloVentana.Caption := txtTituloVentana.Caption + ' ' + cdReprogramaciones.FieldByName('codigoconvenio').AsString;
  end
  else
  begin
    txtTituloVentana.Caption := 'No se encontró la información de la reprogramacion!';
  end;
  EliminarConjunto(Providername);
  inherited;
end;

procedure TFrmEstimacionesPartidas.InicializarCampos;
begin
  inherited;
  dsDetalle.DataSet.FieldByName('acumulado').AsFloat := 0;
  dsDetalle.DataSet.FieldByName('subtotal').AsFloat := 0;
  dsDetalle.DataSet.FieldByName('estima').AsString := 'Si';
  dsDetalle.DataSet.FieldByName('fecha').AsDateTime := Now;
end;

procedure TFrmEstimacionesPartidas.LimpiarCampos;
begin
  inherited;

end;

function TFrmEstimacionesPartidas.ValidaCampos: boolean;
begin
  result := true;
end;

end.
