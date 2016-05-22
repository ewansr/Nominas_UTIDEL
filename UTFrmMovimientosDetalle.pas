///////////////////////////////////////////////////////////////////////////////
// En esta ventana se hace la union entre las dos tablas comentadas en el    //
// formulario anterior, se añaden los registros de la segunda tabla en el    //
//grid inferior, y los botones que se encuentran arriba del grid nos sirve   //
//para llamar a la ventana donde introduciremos los datos para la tabla de   //
//detalles, en dado caso de necesitar otras ventanas pueden editar este      //
//formulario, pero no pueden eliminar componentes o renombrarlos ya que estan//
//protegidos.                                                                //
///////////////////////////////////////////////////////////////////////////////
unit UTFrmMovimientosDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, JvMemoryDataset, DB, DBClient, AdvShapeButton,
  StdCtrls, Buttons, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, UTFrmPartidaDoc, DBCtrls, JvExControls, JvLabel, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, AdvCombo, AdvSmoothTabPager,alm_genericclasses,ClientModuleUnit1;

type
  TInteger = class
    entero: integer;
  end;

type
  TFrmMovimientosDetalle = class(TFrmDetalleDocs)
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
    CblcTipo: TDBLookupComboBox;
    LbTipo: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel3: TJvLabel;
    Label4: TLabel;
    DBMemoComentarios: TDBMemo;
    edtReferencia: TDBEdit;
    edtCodigoLugar: TEdit;
    btnLugar: TButton;
    edtTituloLugar: TEdit;
    dtpFecha: TJvDBDatePickerEdit;
    JvLabel4: TJvLabel;
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
  FrmMovimientosDetalle: TFrmMovimientosDetalle;

implementation

uses
  UInteliDialog,Unit2, UTFrmMovimientosPartida,xDatabase, strutils,
  UTfrmCiudad;
{$R *.dfm}

procedure TFrmMovimientosDetalle.btnLugarClick(Sender: TObject);
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
//    memComentarios.SetFocus;
  end;
  frmCiudad.Free;
  Ciudad.Free;
end;

procedure TFrmMovimientosDetalle.BtnRecClick(Sender: TObject);
var
  iConsecutivo: Integer;
  strConsecutivo: String;
  dia,mes,anio: word;
  formatoSerie: String;
  Firmante: TFirmante;
  i: Integer;
  ListIndex: Integer;
begin
  // Si es una inserción, ajustar todo para que se calculen los campos serie y consecutivo
  // de manera correcta por el trigger
  DecodeDate(dtpFecha.Date,anio,mes,dia);
  if dsDatos.DataSet.State = dsInsert then
  begin
    formatoSerie := GetSerie(CadenaDoc,anio,DigitosDoc);
    if edtConsecutivo.Text = '<Auto>' then
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

procedure TFrmMovimientosDetalle.CargarCampos;
var
  cdCiudad: TClientDataSet;
  ProviderName: String;
  idCiudad: integer;
begin
// este procedimiento se utiliza para poder pasar datos de la ventana padre
// a esta ventana.
  inherited;

  // Cargar la descripción del campo idlugar
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

  // Cargar la descripción del campo idlugar
  idCiudad := dsDatos.DataSet.FieldByName('idCiudad').AsInteger;
  cdCiudad := TClientDataSet.Create(nil);
  CrearConjunto(cdCiudad, 'nuc_Ciudad', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdCiudad, 'idCiudad', [idCiudad]);
  cdCiudad.Open;


  // Si es una inserción, poner algunos campos con valores por default
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('serie').AsString := CadenaDoc;
    dsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
    dsDatos.DataSet.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('estado').AsString := 'recibido';
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := 0;
{    dsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
    dsDatos.DataSet.FieldByName('fecharequerida').AsDateTime := now;
    dsDatos.DataSet.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('estado').AsString := 'pendiente';
    dsDatos.DataSet.FieldByName('serie').AsString := CadenaDoc;
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := 0;   }
//    edtSerie.Text := AnsiReplaceStr(CadenaDoc,'{año}','0000');
//    edtSerie.Text := AnsiReplaceStr(edtSerie.Text,'{consecutivo}',DupeString('0',DigitosDoc));
//    edtConsecutivo.Text := '<Auto>';
//    edtConsecutivo.Font.Color := clGrayText;


    dsDatos.DataSet.FieldByName('idorganizacion').AsInteger := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
  end
  else
  begin
    edtSerie.Text := dsDatos.DataSet.FieldByName('serie').AsString;
    edtConsecutivo.Text := dsDatos.DataSet.FieldByName('consecutivo').AsString;
    edtConsecutivo.BorderStyle := bsNone;
    edtConsecutivo.Color := clBtnFace;
    edtConsecutivo.Top := edtConsecutivo.Top + 2;
    Panel4.Enabled := False;
{    edtSerie.Text := dsDatos.DataSet.FieldByName('serie').AsString;
    edtConsecutivo.Text := dsDatos.DataSet.FieldByName('consecutivo').AsString;
    edtConsecutivo.BorderStyle := bsNone;
    edtConsecutivo.Color := clBtnFace;
    edtConsecutivo.Top := edtConsecutivo.Top + 2;
    Panel4.Enabled := False;
    edtReferencia.SetFocus;   }
  end;

end;

procedure TFrmMovimientosDetalle.CargarFirmantes;
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
  CargarDatosFiltrados(cdConfFirmantes, 'nombredocumento', ['solicitud']);
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

function TFrmMovimientosDetalle.createPopUpPartida: TFrmPartidaDoc;
Var
  temp: TFrmPartidaMovimientos;
begin
  // aqui se manda a llamar al formulario de datos o partida del tipo
  // TFrmPartidaDoc, en este caso es FrmPartidaMovimientos.
  temp := TFrmPartidaMovimientos.Create(nil);
  result := temp;
end;

procedure TFrmMovimientosDetalle.edtCodigoLugarKeyPress(Sender: TObject;
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
    end;
    cdCiudad.Close;
    cdCiudad.Free;
    EliminarConjunto(ProviderName);

    // Si no lo encontró directamente, mandar llamar la pantalla del catalogo
    if not Encontrado then
      btnLugar.Click
    else
 //     memComentarios.SetFocus;

    self.Refresh;
    key := #0;
  end;
end;

procedure TFrmMovimientosDetalle.edtConsecutivoEnter(Sender: TObject);
begin
  inherited;
  if edtConsecutivo.Text = '<Auto>' then
  begin
    edtConsecutivo.Text := '';
  end;
end;

procedure TFrmMovimientosDetalle.edtConsecutivoExit(Sender: TObject);
Var
  Num: integer;
begin
  if (dsDatos.State = dsInsert) then  // solo en modo de edición tienen caso las validaciones
  begin
    if edtConsecutivo.Text <> '<Auto>' then
      inherited;
      try     // Tratar de convertir el texto que esta en el edit a un entero
        Num := trunc(StrToFloat(edtConsecutivo.Text));
      except
        Num := 0;  // Si no se puede, evitar el error y ponerlo en cero en automático
      end;
    if (Num = 0) then
    begin
      edtConsecutivo.Text := '<Auto>';
      edtConsecutivo.Font.Color := clGrayText;
    end
    else
      edtConsecutivo.Text := IntToStr(Num); // Si se habia entrado un decimal, dejar la parte entera
  end;
end;

procedure TFrmMovimientosDetalle.edtConsecutivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edtConsecutivo.Font.Color := clBlack;
end;

procedure TFrmMovimientosDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //eliminando el providername creado pero por componente
  EliminarConjunto(CdTipo.ProviderName);
  inherited;
end;

procedure TFrmMovimientosDetalle.FormShow(Sender: TObject);
Var
  idfirmante: TInteger;
begin
  tab1.ActivePageIndex := 0;
  CargarFirmantes;

  ClientModule1.ComponentColor(self); //coloreado de formulario
  ClientModule1.RastrearGrids(self);  // formateo de grid

  inherited;
end;

procedure TFrmMovimientosDetalle.HacerComponentesEditables;
begin
  // este procedimiento sirve para establecer los componentes editables
 { edtReferencia.ReadOnly := not ModoEdicion;
  dtpFecha.ReadOnly := not ModoEdicion;
  memComentarios.ReadOnly := not ModoEdicion;
  dtpFechaReq.ReadOnly := not ModoEdicion;
  edtCodigoLugar.ReadOnly := not ModoEdicion;
  btnLugar.Visible := ModoEdicion;
  edtTituloLugar.ReadOnly := not ModoEdicion;
  cmbFirmante1.Enabled := ModoEdicion;
  cmbFirmante2.Enabled := ModoEdicion;
  cmbFirmante3.Enabled := ModoEdicion;
  cmbFirmante4.Enabled := ModoEdicion;
  cmbFirmante5.Enabled := ModoEdicion;
  cmbFirmante6.Enabled := ModoEdicion;
  cmbFirmante7.Enabled := ModoEdicion;
  cmbFirmante8.Enabled := ModoEdicion;
  cmbFirmante9.Enabled := ModoEdicion;
  cmbFirmante10.Enabled := ModoEdicion;
  btnAgregarDetalle.Visible := ModoEdicion;
  btnEditarDetalle.Visible := ModoEdicion;
  btnQuitarDetalle.Visible := ModoEdicion;
  btnRec.Visible := ModoEdicion;}

end;

procedure TFrmMovimientosDetalle.Inicializar;
begin

  //el id que lo relaciona con la tabla padre, el id propio
  //y establecemos los datos de la segunta sentencia a utilizar
  // si manejaran el codigo o titulo lo establecen en este caso no.
  keyDetailField := 'idmovimientodetalle';
  keyParentField := 'idmovimiento';
  entityDetailName := 'alm_movimientodetalle';
  codeDetailField := '';
end;

end.
