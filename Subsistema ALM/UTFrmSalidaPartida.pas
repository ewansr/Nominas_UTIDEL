unit UTFrmSalidaPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmPartidaDoc, DB, JvMemoryDataset, AdvShapeButton, ExtCtrls,
  StdCtrls,  Mask, DBCtrls, RxToolEdit, RxCurrEdit, RXDBCtrl, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBClient, JvExControls, JvLabel, JvBaseEdits, JvDBControls,
  AdvEdit, AdvEdBtn, DBAdvEdBtn, DBAdvEd;

type
  TFrmSalidaPartida = class(TFrmPartidaDoc)
    btnArticulo: TButton;
    edtCodigoArticulo: TEdit;
    edtCodigoUnidad: TDBEdit;
    JvLabel1: TJvLabel;
    memObservaciones: TDBMemo;
    JvLabel4: TJvLabel;
    Panel2: TPanel;
    edtTituloArticulo: TDBEdit;
    edtTituloDisciplina: TDBEdit;
    mdDetalleOC: TJvMemoryData;
    mdDetalleOCTmp: TJvMemoryData;
    edtcantidad: TDBAdvEdit;
    btn1: TButton;
    mdDetalleOriginal: TJvMemoryData;
    procedure edtCodigoArticuloKeyPress(Sender: TObject; var Key: Char);
    procedure btnArticuloClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddClick(Sender: TObject);
    procedure edtCantidadClickBtn(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidaCampos: boolean; override;
    procedure LimpiarCampos; override;
    procedure InicializarCampos; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
    IdAlmacen: Integer;
    tituloAlmacen: string;
    ModoEncabezado: TDataSetState;
  end;

var
  FrmSalidaPartida: TFrmSalidaPartida;

implementation

Uses
  ClientModuleUnit1, xDatabase, UTFrmArticulo2, UTFrmSalidaPartidaDist,
  UTFrmCantidadSalida, UInteliDialog;

{$R *.dfm}


procedure TFrmSalidaPartida.CargarCampos;
begin
  // Cargar los datos necesarios para el modo EDIT
  mdDetalleOC.Filtered := false;
  mdDetalleOC.Filter := Format('idarticulo = %s',[mdDetalle.FieldByName('IdArticulo').AsString]);
  mdDetalleOC.Filtered := true;
  mdDetalleOC.First;
  while not mdDetalleOC.eof do
  begin
    mdDetalleOCTmp.Append;
    mdDetalleOCTmp.CopyFields(mdDetalleOC);
    mdDetalleOCTmp.Post;
    mdDetalleOC.Next;
  end;
  mdDetalleOC.Filtered := False;

end;

function TFrmSalidaPartida.ValidaCampos: Boolean;
begin
  result := true;
end;

procedure TFrmSalidaPartida.LimpiarCampos;
begin
  edtCodigoArticulo.Text := '';
  InicializarCampos;
end;

procedure TFrmSalidaPartida.InicializarCampos;
begin
  mdDetalle.FieldByName('cantidad').AsFloat := 0.0;
end;

procedure TFrmSalidaPartida.BtnAddClick(Sender: TObject);
begin
  edtCodigoArticulo.SetFocus;
  // Quitar del detalle por OC lo que ya existe
  mdDetalleOC.Filtered := false;
  mdDetalleOC.Filter := Format('idarticulo = %s',[mdDetalle.FieldByName('IdArticulo').AsString]);
  mdDetalleOC.Filtered := true;
  mdDetalleOC.First;
  while not mdDetalleOC.eof do
  begin
    mdDetalleOC.Delete;
    mdDetalleOC.First;
  end;
  mdDetalleOC.Filtered := False;
  // Pasar los registros del memorydata de respaldo al original
  mdDetalleOCTmp.First;
  mdDetalleOC.LoadFromDataSet(mdDetalleOCTmp,mdDetalleOCTmp.RecordCount,JvMemoryDataSet.lmAppend);

  inherited;
  if edtCodigoArticulo.Visible then
    edtCodigoArticulo.SetFocus;
end;

procedure TFrmSalidaPartida.btnArticuloClick(Sender: TObject);
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

procedure TFrmSalidaPartida.edtCantidadClickBtn(Sender: TObject);
Var
  resultado: integer;
  CantidadTotal: real;
  Form: TFrmSalidaPartidaDist;
begin
  if mdDetalle.FieldByName('idarticulo').AsInteger > 0 then
  begin
    Form := TFrmSalidaPartidaDist.Create(nil);
    Form.mdDetalleOriginal := mdDetalleOriginal;
    Form.mdDetalleOC := mdDetalleOC;
    Form.lblCodigoArticulo.Caption := mdDetalle.FieldByName('CodigoArticulo').AsString;
    Form.lblTituloArticulo.Caption := mdDetalle.FieldByName('TituloArticulo').AsString;
    Form.lblAlmacen.Caption := tituloAlmacen;
    Form.IdArticulo := mdDetalle.FieldByName('IdArticulo').AsInteger;
    Form.IdAlmacen := IdAlmacen;
    Form.ModoEncabezado := ModoEncabezado;
    if Form.ShowModal = mrOK then
    begin
      Form.mdCapas.First;
      CantidadTotal := 0;
      // limpiar el memory temporal
      mdDetalleOCTmp.First;
      while not mdDetalleOCTmp.eof do
      begin
        mdDetalleOCTmp.Delete;
        mdDetalleOCTmp.First;
      end;
      while Not Form.mdCapas.Eof do
      begin
        if Form.mdCapas.FieldByName('cantidadusr').AsFloat > 0 then
        begin
          CantidadTotal := CantidadTotal + Form.mdCapas.FieldByName('cantidadusr').AsFloat;
          // Agregarlo al detalle por OC
          mdDetalleOCTmp.Append;
          mdDetalleOCTmp.FieldValues['idsalida'] := mdDetalle.FieldValues['idsalida'];
          mdDetalleOCTmp.FieldValues['idsalidadetalle'] := 0;
          mdDetalleOCTmp.FieldValues['idocdetalle'] := Form.mdCapas.FieldValues['idocdetalle'];
          mdDetalleOCTmp.FieldValues['idarticulo'] := Form.mdCapas.FieldValues['idarticulo'];
          mdDetalleOCTmp.FieldValues['codigoarticulo'] := Form.mdCapas.FieldValues['codigoarticulo'];
          mdDetalleOCTmp.FieldValues['tituloarticulo'] := Form.mdCapas.FieldValues['tituloarticulo'];
          //mdDetalleOC.FieldValues['descripcion'] := ;
          mdDetalleOCTmp.FieldValues['TituloSubGrupo'] := Form.mdCapas.FieldValues['TituloSubGrupo'];
          mdDetalleOCTmp.FieldValues['TituloGrupo'] := Form.mdCapas.FieldValues['TituloGrupo'];
          mdDetalleOCTmp.FieldValues['codigounidad'] := Form.mdCapas.FieldValues['codigounidad'];
          mdDetalleOCTmp.FieldValues['titulodisciplina'] := Form.mdCapas.FieldValues['titulodisciplina'];
          mdDetalleOCTmp.FieldValues['cantidad'] := Form.mdCapas.FieldValues['cantidadusr'];
          mdDetalleOCTmp.FieldValues['comentarios'] := mdDetalle.FieldValues['comentarios'];
          mdDetalleOCTmp.Post;
        end;
        Form.mdCapas.Next;
      end;
      mdDetalle.FieldByName('cantidad').AsFloat := CantidadTotal;
    end;
    Form.Free;
  end
  else
    InteliDialog.ShowModal('ERROR','No se ha indicado un artículo válido','',mtError,[mbOK],0);
end;

procedure TFrmSalidaPartida.edtCantidadKeyPress(Sender: TObject;
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

procedure TFrmSalidaPartida.edtCodigoArticuloKeyPress(Sender: TObject;
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

procedure TFrmSalidaPartida.FormCreate(Sender: TObject);
begin
  inherited;
  idDetailField := 'idsalidadetalle';
end;

procedure TFrmSalidaPartida.FormShow(Sender: TObject);
begin
  // Copiar la estructura al memory de respaldo
  mdDetalleOCTmp.Close;
  mdDetalleOCTmp.CopyStructure(mdDetalleOC);
  mdDetalleOCTmp.Open;
  inherited;
end;

end.
