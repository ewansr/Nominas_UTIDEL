///////////////////////////////////////////////////////////////////////////////
// Este formulario hace la funcion que la de datos en catalogo, solo sirve   //
// para añadir los datos al formulario detalle. en este caso añade           //
//articulos                                                                  //
///////////////////////////////////////////////////////////////////////////////

unit UTFrmMovimientosPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmPartidaDoc, DB, JvMemoryDataset, AdvShapeButton, ExtCtrls,
  DBCtrls, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,
  StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvExControls,
  JvLabel, DBClient;

type
  TFrmPartidaMovimientos = class(TFrmPartidaDoc)
    edtCodigoArticulo: TEdit;
    btnArticulo: TButton;
    JvLabel1: TJvLabel;
    edtCantidad: TJvDBCalcEdit;
    JvLabel2: TJvLabel;
    memObservaciones: TDBMemo;
    JvLabel4: TJvLabel;
    edtTituloArticulo: TDBEdit;
    edtTituloDisciplina: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtCodigoArticuloKeyPress(Sender: TObject; var Key: Char);
    procedure btnArticuloClick(Sender: TObject);
    procedure edtCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBDatePickerEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure memObservacionesKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddClick(Sender: TObject);
  private
    { Private declarations }
  protected
    //funcion que define si validaremos campos
    function ValidaCampos: boolean; override;
    //procedimeinto que permite limpiar campos
    //despues de agregar registro.
    procedure LimpiarCampos; override;
    // proceso de inicio de campos
    procedure InicializarCampos; override;

    procedure CargarCampos; override;
  public

    { Public declarations }
  end;

var
  FrmPartidaMovimientos: TFrmPartidaMovimientos;

implementation

Uses
  ClientModuleUnit1, xDatabase, UTFrmArticulo2;
{$R *.dfm}

{ TFrmPartidaMovimientos }

procedure TFrmPartidaMovimientos.BtnAddClick(Sender: TObject);
begin
  inherited;
  edtCodigoArticulo.SetFocus;
end;

procedure TFrmPartidaMovimientos.btnArticuloClick(Sender: TObject);
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

procedure TFrmPartidaMovimientos.CargarCampos;
begin
  inherited;

end;

procedure TFrmPartidaMovimientos.edtCantidadKeyPress(Sender: TObject;
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

procedure TFrmPartidaMovimientos.edtCodigoArticuloKeyPress(Sender: TObject;
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

procedure TFrmPartidaMovimientos.FormCreate(Sender: TObject);
begin
  // Definir el id del padre donde se genera la entrada
  // en este caso del articulo, recuerde que estamos
  //ingresando datos a la tabla alm_movimientodetalle
  inherited;
  idDetailField := 'idmovimientodetalle';
end;

procedure TFrmPartidaMovimientos.InicializarCampos;
begin
  mdDetalle.FieldByName('cantidad').AsFloat := 1.0;
end;

procedure TFrmPartidaMovimientos.JvDBDatePickerEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  //un manejo del focus personalizado
  if key = #13 then
  begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
       SelectNext(Sender as TWinControl,False,True)
    else
       SelectNext(Sender as TWinControl,True,True) ;
  end;
end;

procedure TFrmPartidaMovimientos.LimpiarCampos;
begin
  //limpiar estos componentes
  edtCodigoArticulo.Text := '';
  InicializarCampos;
end;

procedure TFrmPartidaMovimientos.memObservacionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  //focus personalizados
  inherited;
  if key = #13 then
  begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
       SelectNext(Sender as TWinControl,False,True)
    else
       SelectNext(Sender as TWinControl,True,True) ;
  end;
end;

function TFrmPartidaMovimientos.ValidaCampos: boolean;
begin
  // si se validan los campos
  result := true;
end;

end.
