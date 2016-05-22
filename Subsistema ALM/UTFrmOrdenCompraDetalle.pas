unit UTFrmOrdenCompraDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, JvMemoryDataset, DB, DBClient, AdvShapeButton,
  StdCtrls, Buttons, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, UTFrmPartidaDoc, NxColumns, NxDBColumns, JvExControls,
  JvLabel, NxVirtualColumn, Mask, DBCtrls,URegistro;

type
  TFrmOrdenCompraDetalle = class(TFrmDetalleDocs)
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    JvLabel4: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    edtSerie: TEdit;
    JvLabel1: TJvLabel;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxVirtualColumn1: TNxVirtualColumn;
    JvLabel2: TJvLabel;
    dbedtFactura: TDBEdit;
    dbedtGarantia: TDBEdit;
    dbmmoNota: TDBMemo;
    dbmmoAplicado: TDBMemo;
    dbmmoCondicion: TDBMemo;
    JvLabel5: TJvLabel;
    DBEdit1: TDBEdit;
    procedure inicializar; override;
    procedure cdDetalleReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure NxVirtualColumn1GetText(Sender: TObject; const ACol,
      ARow: Integer; var Value: WideString);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AccedeACoordenadas;

  protected
    procedure HacerComponentesEditables; override;
    function createpopuppartida: TFrmPArtidaDoc; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
  end;

var
  FrmOrdenCompraDetalle: TFrmOrdenCompraDetalle;

implementation

{$R *.dfm}
uses ClientModuleUnit1;
{ TFrmDetalleOrdenCompra }

procedure TFrmOrdenCompraDetalle.CargarCampos;
begin
//nnada
  //añadiendo caption de labels
  edtSerie.Text := dsDatos.DataSet.FieldByName('serie').AsString;

end;

procedure TFrmOrdenCompraDetalle.cdDetalleReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

function TFrmOrdenCompraDetalle.createpopuppartida: TFrmPArtidaDoc;
begin
//nada
end;

procedure TFrmOrdenCompraDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  LiberarVentana(Self, Action);
end;

procedure TFrmOrdenCompraDetalle.FormCreate(Sender: TObject);
begin
  inherited;
  AccedeACoordenadas;
end;

procedure TFrmOrdenCompraDetalle.FormShow(Sender: TObject);
begin
  inherited;
  dsDatos.Enabled := True;
  dsDatos.DataSet.Edit;
  dsDatos.AutoEdit := True;
end;

procedure TFrmOrdenCompraDetalle.HacerComponentesEditables;
begin

  // no hacer nada
  dbedtFactura.ReadOnly :=not ModoEdicion;
  dbedtGarantia.ReadOnly :=not ModoEdicion;
end;

procedure TFrmOrdenCompraDetalle.inicializar;
begin
  keyDetailField := 'idocdetalle';
  keyParentField := 'idoc';
  entityDetailName := 'alm_ordencompradetalle';
  codeDetailField := '';

  //nada
end;

procedure TFrmOrdenCompraDetalle.AccedeACoordenadas;
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

procedure TFrmOrdenCompraDetalle.NxVirtualColumn1GetText(Sender: TObject;
  const ACol, ARow: Integer; var Value: WideString);
Var
  Valor: real;
begin
  inherited;
  Valor := mdDetalle.FieldByName('cantidad').AsFloat - mdDetalle.FieldByName('cantidadrecibida').AsFloat;
  Value := floattostr(Valor);
end;

end.
