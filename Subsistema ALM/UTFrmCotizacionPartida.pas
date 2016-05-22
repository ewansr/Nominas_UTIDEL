unit UTFrmCotizacionPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmPartidaDoc, DB, JvMemoryDataset, AdvShapeButton, ExtCtrls,
  StdCtrls, Mask, DBCtrls, RxToolEdit, RxCurrEdit, RXDBCtrl, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBClient, JvExControls, JvLabel, JvBaseEdits, JvDBControls;

type
  TFrmCotizacionPartida = class(TFrmPartidaDoc)
    btnArticulo: TButton;
    edtCodigoArticulo: TEdit;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    edtCodigoUnidad: TDBEdit;
    edtCantidad: TJvDBCalcEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    memObservaciones: TDBMemo;
    JvLabel4: TJvLabel;
    Panel2: TPanel;
    edtTituloArticulo: TDBEdit;
    edtTituloDisciplina: TDBEdit;
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
    fechaRequeridaDefault: TDate;
  end;

var
  FrmCotizacionPartida: TFrmCotizacionPartida;

implementation

Uses
  ClientModuleUnit1, xDatabase, UTFrmArticulo2;

{$R *.dfm}


procedure TFrmCotizacionPartida.CargarCampos;
begin

end;

function TFrmCotizacionPartida.ValidaCampos: Boolean;
begin
  result := true;
end;

procedure TFrmCotizacionPartida.LimpiarCampos;
begin
  edtCodigoArticulo.Text := '';
  InicializarCampos;
end;

procedure TFrmCotizacionPartida.InicializarCampos;
begin
  mdDetalle.FieldByName('cantidad').AsFloat := 1.0;
  mdDetalle.FieldByName('fecharequerida').AsDateTime := fechaRequeridaDefault;
end;

procedure TFrmCotizacionPartida.BtnAddClick(Sender: TObject);
begin
  inherited;
  edtCodigoArticulo.SetFocus;
end;

procedure TFrmCotizacionPartida.btnArticuloClick(Sender: TObject);
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
    dsDetalle.DataSet.FieldByName('tituloarticulo').AsString := Articulo.Valor['tituloArticulo'];
    dsDetalle.DataSet.FieldByName('codigounidad').AsString := Articulo.Valor['codigounidad'];
    dsDetalle.DataSet.FieldByName('titulodisciplina').AsString := Articulo.Valor['titulodisciplina'];
    edtCantidad.SetFocus;
  end;
  frmArticulo.Free;
  Articulo.Free;
end;

procedure TFrmCotizacionPartida.edtCantidadKeyPress(Sender: TObject;
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

procedure TFrmCotizacionPartida.edtCodigoArticuloKeyPress(Sender: TObject;
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
      mdDetalle.FieldByName('tituloarticulo').AsString := cdArticulo.FieldByName('tituloArticulo').AsString;
      mdDetalle.FieldByName('codigounidad').AsString := cdArticulo.FieldByName('codigounidad').AsString;
      mdDetalle.FieldByName('titulodisciplina').AsString := cdArticulo.FieldByName('titulodisciplina').AsString;
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

procedure TFrmCotizacionPartida.FormCreate(Sender: TObject);
begin
  inherited;
  idDetailField := 'idsolicituddetalle';
end;

end.
