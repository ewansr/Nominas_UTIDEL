unit UTFrmSalidaManifiestoPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvEdit, DBAdvEd, StdCtrls, DBCtrls, Mask, AdvShapeButton,
  JvExControls, JvLabel, ExtCtrls, DB, JvMemoryDataset, DBClient, UInteliDialog,
  Grids, DBGrids, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid;

type
  TFrmSalidaManifiestoPartida = class(TForm)
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    JvLabel4: TJvLabel;
    BtnAdd: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    btnArticulo: TButton;
    edtCodigoArticulo: TEdit;
    edtCodigoUnidad: TDBEdit;
    memObservaciones: TDBMemo;
    Panel2: TPanel;
    edtTituloArticulo: TDBEdit;
    edtTituloDisciplina: TDBEdit;
    edtcantidad: TDBAdvEdit;
    btn1: TButton;
    edtenvia: TDBAdvEdit;
    mdDetalleOriginal: TJvMemoryData;
    mdDetalle: TJvMemoryData;
    dsDetalle: TDataSource;
    dtTitulogrupo: TDBEdit;
    DtTituloSubgrupo: TDBEdit;
    procedure btnArticuloClick(Sender: TObject);
    procedure edtCodigoArticuloKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtcantidadKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ModoEdit: boolean;
    procedure InicializarCampos;
    procedure CargarCampos;
    procedure LimpiarCampos;
    function ValidaCampos: Boolean;
    { Private declarations }
  public
    { Public declarations }
    IdAlmacen, IdSalidaA: Integer;
    savedirect : Boolean;
    tituloAlmacen: string;
    procedure AddRecord;
    Procedure EditRecord;
  end;

var
  FrmSalidaManifiestoPartida: TFrmSalidaManifiestoPartida;

implementation

uses UTFrmArticulo2,xDatabase, ClientModuleUnit1,UTFrmPartidaExis;
{$R *.dfm}

procedure TFrmSalidaManifiestoPartida.AddRecord;
begin
  dsDetalle.DataSet.FieldByName('idsalidadetalle').AsInteger := 0;
  dsDetalle.DataSet.FieldByName('idsalida').AsInteger := IdSalidaA;
//  self.showModal;
end;

procedure TFrmSalidaManifiestoPartida.btn1Click(Sender: TObject);
Var
  resultado: integer;
  CantidadTotal: real;
  Form: TFrmPArtidaExis;
begin
  if dsDetalle.DataSet.FieldByName('idarticulo').AsInteger > 0 then
  begin
    Form := TFrmPArtidaExis.Create(nil);
    Form.mdDetalleOriginal := mdDetalleOriginal;
    Form.lblCodigoArticulo.Caption := dsDetalle.DataSet.FieldByName('CodigoArticulo').AsString;
    Form.lblTituloArticulo.Caption := dsDetalle.DataSet.FieldByName('TituloArticulo').AsString;
    Form.lblAlmacen.Caption := tituloAlmacen;
    Form.IdArticulo := dsDetalle.DataSet.FieldByName('IdArticulo').AsInteger;
    Form.IdAlmacen := IdAlmacen;
    Form.dscant.DataSet := dsDetalle.DataSet;

//    Form.ModoEncabezado := ModoEncabezado;
    if Form.ShowModal = mrOK then
    begin
      Form.mdCapas.First;
    //  CantidadTotal := 0;
  //    CantidadTotal :=  Form.Cantidadt;
//      dsDetalle.DataSet.FieldByName('cantidad').AsFloat := CantidadTotal;
    end;
    Form.Free;
  end
  else
    InteliDialog.ShowModal('ERROR','No se ha indicado un artículo válido','',mtError,[mbOK],0);

end;

procedure TFrmSalidaManifiestoPartida.BtnAddClick(Sender: TObject);
begin
  try
    if length(trim(dsDetalle.DataSet.FieldByName('idarticulo').AsString)) < 1 then
      raise inteligentException.Create('No selecciono un artículo.');
    if dsDetalle.State = dsInsert then
    begin
      dsDetalle.DataSet.FieldByName('idsalida').AsInteger:= IdSalidaA;
      dsDetalle.DataSet.FieldByName('idsalidadetalle').AsInteger:=0;
      dsdetalle.dataset.Post;
      dsDetalle.DataSet.Append;
      dsDetalle.DataSet.FieldByName('idsalida').AsInteger:= IdSalidaA;
      dsDetalle.DataSet.FieldByName('idsalidadetalle').AsInteger:=0;
    end;
    if dsDetalle.State = dsEdit then
    begin
      dsdetalle.dataset.Post;
      if savedirect then
        tclientdataset(dsdetalle.dataset).ApplyUpdates(-1);
      Close;
    end;

  except
    on e: InteligentException do
      InteliDialog.ShowModal('No se puede continuar',' por el siguiente motivo: '+e.Message, mtInformation, [mbOk], 0);
  end;
end;

function TFrmSalidaManifiestoPartida.ValidaCampos: Boolean;
begin
  result := true;
end;

procedure TFrmSalidaManifiestoPartida.LimpiarCampos;
begin
  edtCodigoArticulo.Text := '';
  InicializarCampos;
end;

procedure TFrmSalidaManifiestoPartida.btnArticuloClick(Sender: TObject);
var
  Articulo: TLista;
  frmArticulo: TFrmArticulo2;
begin

  frmArticulo := TFrmArticulo2.Create(nil);
  Articulo := frmArticulo.SeleccionarItem;
  if assigned(Articulo) then
  begin
    dsDetalle.DataSet.FieldByName('idarticulo').AsInteger := Articulo.Valor['idArticulo'];
    dsDetalle.DataSet.FieldByName('codigoarticulo').AsString := Articulo.Valor['codigoarticulo'];
    dsDetalle.DataSet.FieldByName('tituloarticulo').AsString := Articulo.Valor['tituloArticulo'];
    dsDetalle.DataSet.FieldByName('codigounidad').AsString := Articulo.Valor['codigounidad'];
    dsDetalle.DataSet.FieldByName('titulodisciplina').AsString := Articulo.Valor['titulodisciplina'];
    dsDetalle.DataSet.FieldByName('titulogrupo').AsString := Articulo.Valor['titulogrupo'];
    dsDetalle.DataSet.FieldByName('titulosubgrupo').AsString := Articulo.Valor['titulosubgrupo'];
    edtCantidad.SetFocus;
  end;
  frmArticulo.Free;
  Articulo.Free;
end;

procedure TFrmSalidaManifiestoPartida.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSalidaManifiestoPartida.edtcantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
       SelectNext(Sender as TWinControl,False,True)
    else
       SelectNext(Sender as TWinControl,True,True) ;
  end;
end;

procedure TFrmSalidaManifiestoPartida.edtCodigoArticuloKeyPress(Sender: TObject;
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
      dsDetalle.DataSet.FieldByName('idarticulo').AsInteger := cdArticulo.FieldByName('idArticulo').AsInteger;
      dsDetalle.DataSet.FieldByName('codigoarticulo').AsString := cdArticulo.FieldByName('codigoArticulo').AsString;
      dsDetalle.DataSet.FieldByName('tituloarticulo').AsString := cdArticulo.FieldByName('tituloArticulo').AsString;
      dsDetalle.DataSet.FieldByName('codigounidad').AsString := cdArticulo.FieldByName('codigounidad').AsString;
      dsDetalle.DataSet.FieldByName('titulodisciplina').AsString := cdArticulo.FieldByName('titulodisciplina').AsString;
      dsDetalle.DataSet.FieldByName('titulogrupo').AsString := cdArticulo.FieldByName('titulogrupo').AsString;
      dsDetalle.DataSet.FieldByName('titulosubgrupo').AsString := cdArticulo.FieldByName('titulosubgrupo').AsString;

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

procedure TFrmSalidaManifiestoPartida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsDetalle.DataSet.Cancel;
end;

procedure TFrmSalidaManifiestoPartida.FormCreate(Sender: TObject);
begin
  savedirect := False;
end;

procedure TFrmSalidaManifiestoPartida.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  // Corregir el problema de que cuando estoy con el foco en el botón "Agregar"
  // y presiono enter, no hace la funciín del click
  case key of
    #13:
        begin
          If (btnAdd.Focused) then
          begin
            btnAdd.Click;
            key := #0;
          end;
        end;
    #27:
        begin
          Self.Close;
          Key := #0
        end;
  end;
end;

procedure TFrmSalidaManifiestoPartida.FormShow(Sender: TObject);
begin


  clientmodule1.componentcolor(Self);
  clientmodule1.RastrearGrids(Self);

    if dsDetalle.DataSet.State = dsInsert then
      InicializarCampos
    else
      CargarCampos;

end;

procedure TFrmSalidaManifiestoPartida.InicializarCampos;
begin
  dsDetalle.DataSet.FieldByName('cantidad').AsFloat := 0.0;
end;

procedure TFrmSalidaManifiestoPartida.CargarCampos;
begin
  // Cargar los datos necesarios para el modo EDIT


end;

procedure TFrmSalidaManifiestoPartida.EditRecord;
begin
  ModoEdit := true;
  dsDetalle.DataSet.Edit;
  self.ShowModal;
end;

end.
