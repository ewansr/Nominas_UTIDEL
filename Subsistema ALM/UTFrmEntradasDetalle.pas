///////////////////////////////////////////////////////////////////////////////
// En esta ventana se hace la union entre las dos tablas comentadas en el    //
// formulario anterior, se añaden los registros de la segunda tabla en el    //
//grid inferior, y los botones que se encuentran arriba del grid nos sirve   //
//para llamar a la ventana donde introduciremos los datos para la tabla de   //
//detalles, en dado caso de necesitar otras ventanas pueden editar este      //
//formulario, pero no pueden eliminar componentes o renombrarlos ya que estan//
//protegidos.                                                                //
///////////////////////////////////////////////////////////////////////////////
unit UTFrmEntradasDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, JvMemoryDataset, DB, DBClient, AdvShapeButton,
  StdCtrls, Buttons, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, UTFrmPartidaDoc, DBCtrls, JvExControls, JvLabel, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, AdvCombo, AdvSmoothTabPager,alm_genericclasses,ClientModuleUnit1,
  AdvEdit, NxDBColumns, NxColumns;

type
  TInteger = class
    entero: integer;
  end;

type
  TFrmEntradasDetalle = class(TFrmDetalleDocs)
    CdTipo: TClientDataSet;
    DsTipo: TDataSource;
    edtSerie: TEdit;
    JvLabel1: TJvLabel;
    edtConsecutivo: TEdit;
    JvLabel2: TJvLabel;
    tab1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    AdvSmoothTabPager12: TAdvSmoothTabPage;
    cmbFirmante1: TAdvComboBox;
    cmbFirmante2: TAdvComboBox;
    cmbFirmante3: TAdvComboBox;
    cmbFirmante4: TAdvComboBox;
    cmbFirmante5: TAdvComboBox;
    cmbFirmante6: TAdvComboBox;
    cmbFirmante7: TAdvComboBox;
    cmbFirmante8: TAdvComboBox;
    cmbFirmante9: TAdvComboBox;
    cmbFirmante10: TAdvComboBox;
    cmbTipo: TDBLookupComboBox;
    LbTipo: TJvLabel;
    JvLabel6: TJvLabel;
    Label4: TLabel;
    DBMemoComentarios: TDBMemo;
    edtCodigoLugar: TEdit;
    btnLugar: TButton;
    dtpFecha: TJvDBDatePickerEdit;
    JvLabel4: TJvLabel;
    edtTituloLugar: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBNumberColumn;
    NxDBTextColumn6: TNxDBNumberColumn;
    lbl2: TJvLabel;
    cmbidalmacen: TDBLookupComboBox;
    cdAlmacen: TClientDataSet;
    dsAlmacen: TDataSource;
    lbl1: TJvLabel;
    edtReferencia: TDBEdit;
    lbl3: TJvLabel;
    edtCodigoProveedor: TEdit;
    btnProveedor: TButton;
    edtRazonSocial: TAdvEdit;
    lbl4: TJvLabel;
    edtCodigoFormaPago: TEdit;
    btnFormaPago: TButton;
    edtTituloFormaPago: TAdvEdit;
    JvLabel8: TJvLabel;
    cmbConvenio: TDBLookupComboBox;
    //Igual se utiliza el procedimiento de inicializar para la conexion
    procedure Inicializar; override;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecClick(Sender: TObject);
    procedure edtCodigoLugarKeyPress(Sender: TObject; var Key: Char);
    procedure btnLugarClick(Sender: TObject);
    procedure edtConsecutivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsecutivoEnter(Sender: TObject);
    procedure edtConsecutivoExit(Sender: TObject);
    procedure edtCodigoProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure btnProveedorClick(Sender: TObject);
    procedure edtCodigoFormaPagoKeyPress(Sender: TObject; var Key: Char);
    procedure btnFormaPagoClick(Sender: TObject);
  private
    ListaFirmas: array[0..9] of TAdvComboBox;
    FirmantesDoc: TListaFirmantes;
    procedure CargarFirmantes;
    { Private declarations }
  protected
    //permite establecer los componentes como lectura o edicion
    procedure HacerComponentesEditables; override;
    //llamada al formulario partida del tipo TFrmPartidaDoc
    function createPopUpPartida: TFrmPartidaDoc; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
  end;

var
  FrmEntradasDetalle: TFrmEntradasDetalle;

const
  AUTO_STR = '<Auto>';

implementation

uses
  UInteliDialog,Unit2, xDatabase, strutils,
  UTfrmCiudad, UTFrmEntradaPartida, UTFrmProveedores, UTFrmFormaPago;
{$R *.dfm}

procedure TFrmEntradasDetalle.btnProveedorClick(Sender: TObject);
var
  Proveedor: TLista;
  frmProveedor: TFrmProveedores;
begin
  inherited;
  frmProveedor := TFrmProveedores.Create(nil);
  Proveedor := frmProveedor.SeleccionarItem;
  if assigned(Proveedor) then
  begin
    dsDatos.DataSet.FieldByName('idProveedor').AsInteger := Proveedor['idProveedor'];
    dsDatos.DataSet.FieldByName('razonsocial').AsString := Proveedor['razonsocial'];
    dsDatos.DataSet.FieldByName('idformapago').AsInteger := NVL(Proveedor['idformapago'],0);

    edtRazonSocial.Text := Proveedor['razonsocial'];
    edtCodigoProveedor.Text := Proveedor['codigoproveedor'];
    edtCodigoFormaPago.Text := NVL(Proveedor['codigoformapago'],'');
    edtTituloFormaPago.Text := NVL(Proveedor['tituloformapago'],'');
    edtCodigoFormaPago.SetFocus;
  end;
  frmProveedor.Free;
  Proveedor.Free;
end;

procedure TFrmEntradasDetalle.btnFormaPagoClick(Sender: TObject);
var
  FormaPago: TLista;
  frmFormaPago: TFrmFormaPago;
begin
  inherited;
  frmFormaPago := TFrmFormaPago.Create(nil);
  FormaPago := frmFormaPago.SeleccionarItem;
  if assigned(FormaPago) then
  begin
    dsDatos.DataSet.FieldByName('idFormaPago').AsInteger := FormaPago.Valor['idFormaPago'];
    edtTituloFormaPago.Text := FormaPago.Valor['tituloFormaPago'];
    edtCodigoFormaPago.Text := FormaPago.Valor['codigoformapago'];
//    memComentarios.SetFocus;
  end;
  frmFormaPago.Free;
  FormaPago.Free;
end;

procedure TFrmEntradasDetalle.btnLugarClick(Sender: TObject);
var
  Ciudad: TLista;
  frmCiudad: TFrmCiudad;
begin
  inherited;
  frmCiudad := TFrmCiudad.Create(nil);
  Ciudad := frmCiudad.SeleccionarItem;
  if assigned(Ciudad) then
  begin
    dsDatos.DataSet.FieldByName('idCiudad').AsInteger := Ciudad.Valor['idCiudad'];
    edtTituloLugar.Text := Ciudad.Valor['tituloCiudad'];
    edtCodigoLugar.Text := Ciudad.Valor['codigociudad'];
    edtCodigoProveedor.SetFocus;
  end;
  frmCiudad.Free;
  Ciudad.Free;
end;

procedure TFrmEntradasDetalle.BtnRecClick(Sender: TObject);
var
  iConsecutivo: Integer;
//  strConsecutivo: String;
  dia,mes,anio: word;
  formatoSerie: String;
  Firmante: TFirmante;
  i: Integer;
  ListIndex: Integer;
begin
  // Validar todos los valores que deben de ser obligatorios
  if not (dsDatos.DataSet.FieldByName('idCiudad').AsInteger > 0) then
  begin
    InteliDialog.ShowModal('Especifique una ciudad','Debe de especificar una ciudad valida',mtError,[mbOK],0);
    edtCodigoLugar.SetFocus;
    exit;
  end;

{  if not (dsDatos.DataSet.FieldByName('idProveedor').AsInteger = 0) then
  begin
    InteliDialog.ShowModal('Especifique un proveedor','Debe de especificar un proveedor valido',mtError,[mbOK],0);
    edtCodigoProveedor.SetFocus;
    exit;
  end;

  if not (dsDatos.DataSet.FieldByName('idFormaPago').AsInteger = 0) then
  begin
    InteliDialog.ShowModal('Especifique una forma de pago','Debe de especificar una forma de pago valida',mtError,[mbOK],0);
    edtCodigoFormaPago.SetFocus;
    exit;
  end;
}

  // Si es una inserción, ajustar todo para que se calculen los campos serie y consecutivo
  // de manera correcta por el trigger
  DecodeDate(dtpFecha.Date,anio,mes,dia);
  if dsDatos.DataSet.State = dsInsert then
  begin
    formatoSerie := GetSerie(CadenaDoc,anio,DigitosDoc);
    if (edtConsecutivo.Text = AUTO_STR) or (trim(edtConsecutivo.Text) = '') then
      iConsecutivo := 0
    else
      iConsecutivo := strtoint(edtConsecutivo.Text);
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := iConsecutivo;
    dsDatos.DataSet.FieldByName('serie').AsString := formatoSerie;
  end;
  dsDatos.DataSet.FieldByName('periodo').AsInteger := anio;

  // Crear las cadenas para guardar los datos de los firmantes
  FirmantesDoc.Clear;
  Firmante := TFirmante.Create;
  for i := low(ListaFirmas) to high(ListaFirmas) do
    if ListaFirmas[i].Visible then
    begin
      ListIndex := ListaFirmas[i].ItemIndex;
      Firmante.Id := TLista(ListaFirmas[i].Items.Objects[ListIndex]).Valor['idfirmante'];
      Firmante.Titulo := '-';
      Firmante.Nombre := TLista(ListaFirmas[i].Items.Objects[ListIndex]).Valor['nombre'] + ' ' +
                         TLista(ListaFirmas[i].Items.Objects[ListIndex]).Valor['apellidos'];
      Firmante.Puesto := TLista(ListaFirmas[i].Items.Objects[ListIndex]).Valor['titulocargo'];
      Firmante.Departamento := TLista(ListaFirmas[i].Items.Objects[ListIndex]).Valor['titulodepartamento'];
      FirmantesDoc.Add(Firmante);
    end;
  dsDatos.DataSet.FieldByName('FirmaId').AsString := FirmantesDoc.ListaId;
  dsDatos.DataSet.FieldByName('FirmaTitulo').AsString := FirmantesDoc.ListaTitulo;
  dsDatos.DataSet.FieldByName('FirmaNombre').AsString := FirmantesDoc.ListaNombre;
  dsDatos.DataSet.FieldByName('FirmaPuesto').AsString := FirmantesDoc.ListaPuesto;
  dsDatos.DataSet.FieldByName('FirmaDepto').AsString := FirmantesDoc.ListaDepartamento;

  inherited;
end;

procedure TFrmEntradasDetalle.CargarCampos;
var
  cdCiudad,
  cdProveedor,
  cdFormaPago: TClientDataSet;
  ProviderName: String;
  idCiudad,
  idProveedor,
  idFormaPago: integer;
begin
// este procedimiento se utiliza para poder pasar datos de la ventana padre
// a esta ventana.
  inherited;

  // Si es una inserción, poner algunos campos con valores por default
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('serie').AsString := CadenaDoc;
    dsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
    dsDatos.DataSet.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('estado').AsString := 'activo';
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := 0;
    //dsDatos.DataSet.FieldByName('idorganizacion').AsInteger := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
    dsConvenio.DataSet.First;
    dsDatos.DataSet.FieldByName('idorganizacion').Assign(dsConvenio.dataset.FieldByName('idorganizacion'));
    edtConsecutivo.Text := AUTO_STR;
  end
  else
  begin
    edtSerie.Text := dsDatos.DataSet.FieldByName('serie').AsString;
    edtConsecutivo.Text := dsDatos.DataSet.FieldByName('consecutivo').AsString;
    edtConsecutivo.BorderStyle := bsNone;
    edtConsecutivo.Color := clBtnFace;
    edtConsecutivo.Top := edtConsecutivo.Top + 2;
    Panel4.Enabled := False;

    // Cargar la descripción del campo idlugar
    idCiudad := dsDatos.DataSet.FieldByName('idCiudad').AsInteger;
    idProveedor := dsDatos.DataSet.FieldByName('idProveedor').AsInteger;
    idFormaPago := dsDatos.DataSet.FieldByName('idFormaPago').AsInteger;
    // Cargar la descripción del campo idciudad
    cdCiudad := TClientDataSet.Create(nil);
    CrearConjunto(cdCiudad, 'nuc_Ciudad', ProviderName, ccCatalog);
    CargarDatosFiltrados(cdCiudad, 'idCiudad', [idCiudad]);
    cdCiudad.Open;
    cdCiudad.First;
    edtCodigoLugar.Text := cdCiudad.FieldByName('codigociudad').AsString;
    edtTituloLugar.Text := cdCiudad.FieldByName('Titulociudad').AsString;
    cdCiudad.Close;
    EliminarConjunto(cdCiudad.ProviderName);
    cdCiudad.Free;
    // Cargar la descripción del campo idproveedor
    cdProveedor := TClientDataSet.Create(nil);
    CrearConjunto(cdProveedor, 'alm_proveedor', ProviderName, ccSelect);
    CargarDatosFiltrados(cdProveedor, 'idProveedor', [idProveedor]);
    cdProveedor.Open;
    cdProveedor.First;
    edtCodigoProveedor.Text := cdProveedor.FieldByName('codigoproveedor').AsString;
    edtrazonsocial.Text := cdProveedor.FieldByName('razonsocial').AsString;
    // checar si la forma de pago es la misma que trae este registro
    if idFormaPago = cdProveedor.FieldByName('idformapago').AsInteger then
    begin
      edtCodigoFormaPago.Text := cdProveedor.FieldByName('codigoformapago').AsString;
      edtTituloFormaPago.Text := cdProveedor.FieldByName('tituloformapago').AsString;
    end
    else   // si no, buscarla
    begin
      cdFormaPago := TClientDataSet.Create(nil);
      CrearConjunto(cdFormaPago, 'alm_formapago', ProviderName, ccSelect);
      CargarDatosFiltrados(cdFormaPago, 'idformapago', [idFormaPago]);
      cdFormaPago.Open;
      cdFormaPago.First;
      edtCodigoFormaPago.Text := cdFormaPago.FieldByName('codigoformapago').AsString;
      edtTituloFormaPago.Text := cdFormaPago.FieldByName('tituloformapago').AsString;
      cdFormaPago.Close;
      EliminarConjunto(cdFormaPago.ProviderName);
      cdFormaPago.Free;
    end;

    cdProveedor.Close;
    EliminarConjunto(cdProveedor.ProviderName);
    cdProveedor.Free;




  end;
end;

procedure TFrmEntradasDetalle.CargarFirmantes;
var
  cdConfFirmantes,
  cdFirmantes: TClientDataSet;
  dpConfFirmantes,
  dpFirmantes: string;
  regFirmante: TLista;
  ItemSeleccionado: Integer;
  Hoy,FechaIni,FechaFin: TDate;
  i1,i2: integer;
  //Firmante: TFirmante;
begin
  // Llenar manualmente el arreglo para que posteriormente sea más sencillo el
  // manejo de los combos
  ListaFirmas[0] := cmbFirmante1;
  ListaFirmas[1] := cmbFirmante2;
  ListaFirmas[2] := cmbFirmante3;
  ListaFirmas[3] := cmbFirmante4;
  ListaFirmas[4] := cmbFirmante5;
  ListaFirmas[5] := cmbFirmante6;
  ListaFirmas[6] := cmbFirmante7;
  ListaFirmas[7] := cmbFirmante8;
  ListaFirmas[8] := cmbFirmante9;
  ListaFirmas[9] := cmbFirmante10;

  FirmantesDoc := TListaFirmantes.Create;
  with dsDatos.DataSet do
  begin
    FirmantesDoc.LoadData(FieldByName('firmaid').AsString,
                          FieldByName('firmatitulo').AsString,
                          FieldByName('firmanombre').AsString,
                          FieldByName('firmapuesto').AsString,
                          FieldByName('firmadepto').AsString);
  end;

  cdConfFirmantes := TClientDataSet.Create(nil);
  CrearConjunto(cdConfFirmantes, 'nuc_configuracionfirmante', dpConfFirmantes, ccCatalog);
  CargarDatosFiltrados(cdConfFirmantes, 'nombredocumento', ['ENTRADA']);
  cdConfFirmantes.Open;

  // Checar cuantos firmantes tiene el documento y hacer el llenado de los combos
  // correspondinetes
  cdConfFirmantes.First;
  while not cdConfFirmantes.eof do
  begin
    i1 := cdConfFirmantes.RecNo - 1;
    cdFirmantes := TClientDataSet.Create(nil);
    CrearConjunto(cdFirmantes, 'nuc_firmante', dpFirmantes, ccSelect);
    CargarDatosFiltrados(cdFirmantes, 'idcargo', [cdConfFirmantes.FieldByName('idcargo').AsInteger]);
    cdFirmantes.Open;
    with ListaFirmas[i1] do
    begin
      Visible := true;
      LabelCaption := cdConfFirmantes.FieldByName('titulocargo').AsString;
      // Llenar el combo con los firmantes para ese cargo
      cdFirmantes.First;
      while not cdFirmantes.eof do
      begin
        i2 := cdFirmantes.RecNo - 1;
        regFirmante := GetCurrentRecord(cdFirmantes);
        AddItem(regFirmante.Valor['nombre'] + ' ' + regFirmante.Valor['apellidos'],regFirmante);
        Hoy := Now;
        FechaIni := NVL(regFirmante.Valor['FechaInicio'],StrToDate('01/01/1900'));
        FechaFin := NVL(regFirmante.Valor['FechaFin'],StrToDate('01/01/1900'));
        // Checar cual es el indice del firmante que deberá aparecer como seleccionado
        // Si es una insercion, seleccionar el que esté vigente
        if (dsDatos.DataSet.State = dsInsert)
            or ((dsDatos.DataSet.State = dsEdit) and (i1 > FirmantesDoc.Count )) then
        begin
          if (Hoy >= FechaIni) and (Hoy <= FechaFin) then
            ItemSeleccionado := i2;
        end
        else  // Si es edición, seleccionar el que indica el registro
        begin
          if FirmantesDoc.Item[i1].Id = regFirmante.Valor['idfirmante'] then
            ItemSeleccionado := i2;
        end;
        cdFirmantes.Next;
      end;
      ItemIndex := ItemSeleccionado;
    end;

    EliminarConjunto(dpFirmantes);
    cdFirmantes.Free;
    cdConfFirmantes.Next;
  end;
end;

function TFrmEntradasDetalle.createPopUpPartida: TFrmPartidaDoc;
Var
  temp: TFrmEntradaPartida;
begin
  // aqui se manda a llamar al formulario de datos o partida del tipo
  // TFrmPartidaDoc, en este caso es FrmEntrada.
  temp := TFrmEntradaPartida.Create(nil);
  result := temp;
end;

procedure TFrmEntradasDetalle.edtCodigoFormaPagoKeyPress(Sender: TObject;
  var Key: Char);
var
  cdFormaPago: TClientDataSet;
  ProviderName: String;
  Encontrado: boolean;
begin
  inherited;
  if key = #13 then
  begin
    cdFormaPago := TClientDataSet.Create(nil);
    CrearConjunto(cdFormaPago, 'alm_formapago', ProviderName, ccSelect);
    CargarDatosFiltrados(cdFormaPago, 'codigoformapago', [trim(edtCodigoFormaPago.Text)]);
    cdFormaPago.Open;
    Encontrado := false;
    // Si el registro regresa solo un registro, entonces poner los datos correspondientes
    if cdFormaPago.RecordCount = 1 then
    begin
      dsDatos.Dataset.FieldByName('idFormaPago').AsInteger := cdFormaPago.FieldByName('idFormaPago').AsInteger;
      edtTituloFormaPago.Text := cdFormaPago.FieldByName('tituloFormaPago').AsString;
      Encontrado := true;
    end;
    cdFormaPago.Close;
    cdFormaPago.Free;
    EliminarConjunto(ProviderName);

    // Si no lo encontró directamente, mandar llamar la pantalla del catalogo
    if not Encontrado then
      btnFormaPago.Click;

    self.Refresh;
    key := #0;
  end;
end;


procedure TFrmEntradasDetalle.edtCodigoLugarKeyPress(Sender: TObject;
  var Key: Char);
var
  cdCiudad: TClientDataSet;
  ProviderName: String;
  Encontrado: boolean;
begin
  inherited;
  if key = #13 then
  begin
    cdCiudad := TClientDataSet.Create(nil);
    CrearConjunto(cdCiudad, 'nuc_ciudad', ProviderName, ccCatalog);
    CargarDatosFiltrados(cdCiudad, 'codigociudad', [trim(edtCodigoLugar.Text)]);
    cdCiudad.Open;
    Encontrado := false;
    // Si el registro regresa solo un registro, entonces poner los datos correspondientes
    if cdCiudad.RecordCount = 1 then
    begin
      dsDatos.Dataset.FieldByName('idCiudad').AsInteger := cdCiudad.FieldByName('idCiudad').AsInteger;
      edtTituloLugar.Text := cdCiudad.FieldByName('tituloCiudad').AsString;
      Encontrado := true;
      edtCodigoProveedor.SetFocus;
    end;
    cdCiudad.Close;
    cdCiudad.Free;
    EliminarConjunto(ProviderName);

    // Si no lo encontró directamente, mandar llamar la pantalla del catalogo
    if not Encontrado then
      btnLugar.Click;

    self.Refresh;
    key := #0;
  end;
end;

procedure TFrmEntradasDetalle.edtCodigoProveedorKeyPress(Sender: TObject;
  var Key: Char);
var
  cdProveedor: TClientDataSet;
  ProviderName: String;
  Encontrado: boolean;
begin
  inherited;
  if key = #13 then
  begin
    cdProveedor := TClientDataSet.Create(nil);
    CrearConjunto(cdProveedor, 'alm_proveedor', ProviderName, ccSelect);
    CargarDatosFiltrados(cdProveedor, 'codigoproveedor', [trim(edtCodigoProveedor.Text)]);
    cdProveedor.Open;
    Encontrado := false;
    // Si el registro regresa solo un registro, entonces poner los datos correspondientes
    if cdProveedor.RecordCount = 1 then
    begin
      dsDatos.Dataset.FieldByName('idProveedor').AsInteger := cdProveedor.FieldByName('idProveedor').AsInteger;
      dsDatos.Dataset.FieldByName('idFormaPago').AsInteger := cdProveedor.FieldByName('idFormaPago').AsInteger;
      edtRazonSocial.Text := cdProveedor.FieldByName('razonsocial').AsString;
      edtCodigoFormaPago.Text := cdProveedor.FieldByName('codigoformapago').AsString;
      edtTituloFormaPago.Text := cdProveedor.FieldByName('tituloformapago').AsString;
      Encontrado := true;
      edtCodigoFormaPago.SetFocus;
    end;
    cdProveedor.Close;
    cdProveedor.Free;
    EliminarConjunto(ProviderName);

    // Si no lo encontró directamente, mandar llamar la pantalla del catalogo
    if not Encontrado then
      btnProveedor.Click;

    self.Refresh;
    key := #0;
  end;
end;

procedure TFrmEntradasDetalle.edtConsecutivoEnter(Sender: TObject);
begin
  inherited;
  if edtConsecutivo.Text = AUTO_STR then
  begin
    edtConsecutivo.Text := '';
  end;
end;

procedure TFrmEntradasDetalle.edtConsecutivoExit(Sender: TObject);
Var
  Num: integer;
begin
  if (dsDatos.State = dsInsert) then  // solo en modo de edición tienen caso las validaciones
  begin
    if edtConsecutivo.Text <> AUTO_STR then
      inherited;
      try     // Tratar de convertir el texto que esta en el edit a un entero
        Num := trunc(StrToFloat(edtConsecutivo.Text));
      except
        Num := 0;  // Si no se puede, evitar el error y ponerlo en cero en automático
      end;
    if (Num = 0) then
    begin
      edtConsecutivo.Text := AUTO_STR;
      edtConsecutivo.Font.Color := clGrayText;
    end
    else
      edtConsecutivo.Text := IntToStr(Num); // Si se habia entrado un decimal, dejar la parte entera
  end;
end;

procedure TFrmEntradasDetalle.edtConsecutivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edtConsecutivo.Font.Color := clBlack;
end;

procedure TFrmEntradasDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //eliminando el providername creado pero por componente
  EliminarConjunto(CdTipo.ProviderName);
  inherited;
end;

procedure TFrmEntradasDetalle.FormShow(Sender: TObject);
Var
  cdCiudad: TClientDataSet;
  ProviderName: String;
begin

  //Aqui se crea una consulta para prerellenar un dataset de acuerdo a un
  //filtrado, y asi poder utilizarlo. primero utilizamos el procedimiento
  //Crear Conjunto. pasando como parametro el clientdataset, la consulta a
  //invocar, el nombre de una variable string como provider name, y el tipo
  // de consulta, al crear conjunto recuerde eliminarlo
  CrearConjunto(CdTipo, 'alm_tipomovimiento', ProviderName, ccCatalog);
  //realizamos el filtrado de acuerdo a un campo definido en la consulta,
  //recuerden que si no existe definido en el where de la consulta ese campo
  //entonces mandará error.
  CargarDatosFiltrados(cdTipo, 'tipomovimiento', ['ENTRADA']);  // Regresar los detalles del documento
  cdTipo.Open;

  // si no hay tipos de movimientos de entrada, salir
  if false and  (CdTipo.RecordCount = 0) then
  begin
    InteliDialog.ShowModal('ERROR','No existen conceptos de Entrada','',mtError,[mbOK],0);
    cdTipo.Close;
    EliminarConjunto(cdTipo.ProviderName);
    cdTipo.Free;
    close;
    Exit;
  end;

  // Cargar la lista de los almacenes
  CrearConjunto(cdAlmacen,'alm_almacen',ProviderName,ccSelect);
  CargarDatosFiltrados(cdAlmacen,'activo',['si']);
  cdAlmacen.Open;
  cdAlmacen.First;
  dsDatos.DataSet.FieldValues['idalmacen'] := cdAlmacen.FieldValues['idalmacen'];



  tab1.ActivePageIndex := 0;
  CargarFirmantes;

  ClientModule1.ComponentColor(self); //coloreado de formulario
  ClientModule1.RastrearGrids(self);  // formateo de grid

  inherited;
//  if dsdatos.DataSet.RecordCount>0 then
  if dsdatos.State = dsEdit then
  begin
    cdCiudad := TClientDataSet.Create(nil);
    CrearConjunto(cdCiudad, 'nuc_ciudad', ProviderName, ccCatalog);
    CargarDatosFiltrados(cdCiudad, 'idciudad', [dsdatos.DataSet.FieldByName('idciudad').AsString]);
    try
      cdCiudad.Open;
      if cdCiudad.RecordCount = 1 then
      begin
        edtTituloLugar.Text := cdCiudad.FieldByName('tituloCiudad').AsString;
        edtCodigoLugar.Text := cdCiudad.FieldByName('codigoCiudad').AsString;
      end;
    finally
      FreeAndNil(cdCiudad);
      EliminarConjunto(ProviderName);
    end;
  end
  else
  begin
    CdTipo.First;
    dsDatos.DataSet.FieldByName('idtipomovimiento').AsInteger := cdTipo.FieldByName('idtipomovimiento').AsInteger;
    cmbTipo.Update;
  end;
  cmbTipo.SetFocus;
end;

procedure TFrmEntradasDetalle.HacerComponentesEditables;
begin
  // este procedimiento sirve para establecer los componentes editables


end;

procedure TFrmEntradasDetalle.Inicializar;
begin

  //el id que lo relaciona con la tabla padre, el id propio
  //y establecemos los datos de la segunta sentencia a utilizar
  // si manejaran el codigo o titulo lo establecen en este caso no.
  keyDetailField := 'identradadetalle';
  keyParentField := 'identrada';
  entityDetailName := 'alm_entradadetalle';
  codeDetailField := '';

end;

end.
