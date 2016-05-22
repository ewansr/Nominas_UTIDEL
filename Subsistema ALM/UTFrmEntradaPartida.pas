unit UTFrmEntradaPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmPartidaDoc, DB, JvMemoryDataset, AdvShapeButton, ExtCtrls,
  StdCtrls,  Mask, DBCtrls, RxToolEdit, RxCurrEdit, RXDBCtrl, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBClient, JvExControls, JvLabel, JvBaseEdits, JvDBControls,
  AdvEdit, AdvEdBtn, DBAdvEdBtn,UInteliDialog;

type
  TFrmEntradaPartida = class(TFrmPartidaDoc)
    btnArticulo: TButton;
    edtCodigoArticulo: TEdit;
    edtCodigoUnidad: TDBEdit;
    edtCantidad: TJvDBCalcEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    memObservaciones: TDBMemo;
    JvLabel4: TJvLabel;
    Panel2: TPanel;
    edtTituloArticulo: TDBEdit;
    edtTituloDisciplina: TDBEdit;
    lbl1: TJvLabel;
    edtPreciocantidad: TJvDBCalcEdit;
    procedure edtCodigoArticuloKeyPress(Sender: TObject; var Key: Char);
    procedure btnArticuloClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidaCampos: boolean; override;
    procedure LimpiarCampos; override;
    procedure InicializarCampos; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
  end;

var
  FrmEntradaPartida: TFrmEntradaPartida;

implementation

Uses
  ClientModuleUnit1, xDatabase, UTFrmArticulo2;

{$R *.dfm}


procedure TFrmEntradaPartida.CargarCampos;
begin

end;

function TFrmEntradaPartida.ValidaCampos: Boolean;
begin
  result := true;
end;

procedure TFrmEntradaPartida.LimpiarCampos;
begin
  edtCodigoArticulo.Text := '';
  InicializarCampos;
end;

procedure TFrmEntradaPartida.InicializarCampos;
begin
  mdDetalle.FieldByName('cantidad').AsFloat := 1.0;
end;

procedure TFrmEntradaPartida.BtnAddClick(Sender: TObject);
begin
  if Length(Trim(dsDetalle.DataSet.FieldByName('idarticulo').AsString)) < 1then
  begin
    InteliDialog.ShowModal('Informacion',
    'Seleccione un artículo.',mtInformation,[mbOK],0);
    Exit;
  end;

  inherited;
  edtCodigoArticulo.SetFocus;
end;

procedure TFrmEntradaPartida.btnArticuloClick(Sender: TObject);
var
  Articulo: TLista;
  frmArticulo: TFrmArticulo2;
begin
  inherited;

  frmArticulo := TFrmArticulo2.Create(nil);
  Articulo := frmArticulo.SeleccionarItem;
  if assigned(Articulo) then
  begin
    dsDetalle.DataSet.FieldByName('idarticulo').AsInteger := Articulo.Valor['idArticulo'];
    dsDetalle.DataSet.FieldByName('codigoarticulo').AsString := Articulo.Valor['codigoArticulo'];
    dsDetalle.DataSet.FieldByName('tituloarticulo').AsString := Articulo.Valor['tituloArticulo'];
    dsDetalle.DataSet.FieldByName('codigounidad').AsString := Articulo.Valor['codigounidad'];
    dsDetalle.DataSet.FieldByName('titulodisciplina').AsString := Articulo.Valor['titulodisciplina'];
    dsDetalle.DataSet.FieldByName('idimpuesto').AsInteger := Articulo.Valor['idimpuesto'];
    dsDetalle.DataSet.FieldByName('codigoimpuesto').AsString := Articulo.Valor['codigoimpuesto'];
    dsDetalle.DataSet.FieldByName('tasa').AsFloat := Articulo.Valor['tasa'];
    edtCantidad.SetFocus;
  end;
  frmArticulo.Free;
  Articulo.Free;
end;

procedure TFrmEntradaPartida.edtCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
       SelectNext(Sender as TWinControl,False,True)
    else
       SelectNext(Sender as TWinControl,True,True) ;
  end;
end;

procedure TFrmEntradaPartida.edtCodigoArticuloKeyPress(Sender: TObject;
  var Key: Char);
var
  ProviderName: String;
  cdArticulo: TClientDataSet;
  Encontrado: boolean;
begin
  inherited;
  if key = #13 then
  begin
    cdArticulo := TClientDataSet.Create(nil);
    CrearConjunto(cdArticulo, 'alm_articulo', ProviderName, ccCatalog);
    CargarDatosFiltrados(cdArticulo, 'codigoarticulo', [trim(edtCodigoArticulo.Text)]);  // Regresar los detalles del documento
    cdArticulo.Open;
    Encontrado := false;
    // Si la consulta regresa solo un registro, entonces poner los datos correspondientes
    if cdArticulo.RecordCount = 1 then
    begin
      mdDetalle.FieldByName('idarticulo').AsInteger := cdArticulo.FieldByName('idArticulo').AsInteger;
      mdDetalle.FieldByName('codigoarticulo').AsString := cdArticulo.FieldByName('codigoArticulo').AsString;
      mdDetalle.FieldByName('tituloarticulo').AsString := cdArticulo.FieldByName('tituloArticulo').AsString;
      mdDetalle.FieldByName('codigounidad').AsString := cdArticulo.FieldByName('codigounidad').AsString;
      mdDetalle.FieldByName('titulodisciplina').AsString := cdArticulo.FieldByName('titulodisciplina').AsString;
      mdDetalle.FieldByName('idimpuesto').AsInteger := cdArticulo.FieldByName('idimpuesto').AsInteger;
      mdDetalle.FieldByName('codigoimpuesto').AsString := cdArticulo.FieldByName('codigoimpuesto').AsString;
      mdDetalle.FieldByName('tasa').AsFloat := cdArticulo.FieldByName('tasa').AsFloat;
      Encontrado := true;
    end;
    cdArticulo.Close;
    cdArticulo.Free;
    EliminarConjunto(ProviderName);

    // Si no lo encontró directamente, mandar llamar la pantalla del catalogo
    if not Encontrado then
      btnArticulo.Click
    else
      edtCantidad.SetFocus;

    self.Refresh;
    key := #0;
  end;
end;

procedure TFrmEntradaPartida.FormCreate(Sender: TObject);
begin
  inherited;
  idDetailField := 'identradadetalle';
end;

end.
