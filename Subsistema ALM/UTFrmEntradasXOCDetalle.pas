unit UTFrmEntradasXOCDetalle;

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
  TFrmEntradasXOCDetalle = class(TFrmDetalleDocs)
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
    JvLabel6: TJvLabel;
    JvLabel3: TJvLabel;
    Label4: TLabel;
    DBMemoComentarios: TDBMemo;
    edtReferencia: TDBEdit;
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
    mdOCDetalle: TJvMemoryData;
    //Igual se utiliza el procedimiento de inicializar para la conexion
    procedure Inicializar; override;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure edtCodigoLugarKeyPress(Sender: TObject; var Key: Char);
    procedure btnLugarClick(Sender: TObject);
    procedure edtConsecutivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsecutivoEnter(Sender: TObject);
    procedure edtConsecutivoExit(Sender: TObject);
    procedure btnQuitarDetalleClick(Sender: TObject);
    procedure btnAgregarDetalleClick(Sender: TObject);
  private
    ListaFirmas: array[0..9] of TAdvComboBox;
    FirmantesDoc: TListaFirmantes;
    SerieOC: string;
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
  FrmEntradasXOCDetalle: TFrmEntradasXOCDetalle;

implementation

uses
  UInteliDialog,Unit2, xDatabase, strutils,
  UTfrmCiudad, UTFrmEntradaXOCPartida, UTFrmEntradaXOCPartidaAdd;
{$R *.dfm}

procedure TFrmEntradasXOCDetalle.btnAgregarDetalleClick(Sender: TObject);
Var
  popUp: TFrmEntradaXOCPartidaAdd;
begin
  popUp := TFrmEntradaXOCPartidaAdd.Create(nil);
  popUp.mdDetalle := mdDetalle;
  popUp.mdOCDetalle := mdOCDetalle;
  popUp.edtSerie.Text := edtSerie.Text;
  popUp.edtSerieOC.Text := SerieOC;
  popUp.idEntrada := dsDatos.DataSet.FieldByName('identrada').AsInteger;
  popUp.ShowModal;
  popUp.Free;
end;

procedure TFrmEntradasXOCDetalle.btnLugarClick(Sender: TObject);
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

procedure TFrmEntradasXOCDetalle.btnQuitarDetalleClick(Sender: TObject);
begin
  if not mdDetalle.eof then
    if InteliDialog.ShowModal('¿Quitar el registro actual?','',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      // sumar la cantidad eliminada a la oc en el memory para que no se descuadre
      if mdOCDetalle.Locate('idocdetalle',mdDetalle.FieldByName('idocdetalle').AsInteger,[]) then
      begin
        mdOCDetalle.Edit;
        mdOCDetalle.FieldByName('cantidadrecibida').AsFloat := mdOCDetalle.FieldByName('cantidadrecibida').AsFloat - mdDetalle.FieldByName('cantidad').AsFloat;
        mdOCDetalle.Post;
      end;
      mdDetalle.Delete;
    end;
end;

procedure TFrmEntradasXOCDetalle.BtnRecClick(Sender: TObject);
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

procedure TFrmEntradasXOCDetalle.CargarCampos;
var
  cdCiudad: TClientDataSet;
  cdOCDetalle: TClientDataSet;
  ProviderName: String;
  idCiudad: integer;
begin
// este procedimiento se utiliza para poder pasar datos de la ventana padre
// a esta ventana.
  inherited;



  // Cargar la descripción del campo idlugar
  idCiudad := dsDatos.DataSet.FieldByName('idCiudad').AsInteger;
  cdCiudad := TClientDataSet.Create(nil);
  CrearConjunto(cdCiudad, 'nuc_Ciudad', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdCiudad, 'idCiudad', [idCiudad]);
  cdCiudad.Open;

  // Cargar los detalles de la OC de donde proviene para las validaciones y las cargas de los artículos
  cdOCDetalle := TClientDataSet.Create(nil);
  CrearConjunto(cdOCDetalle,'alm_ordencompradetalle',ProviderName,ccCatalog);
  CargarDatosFiltrados(cdOCDetalle,'idoc',[dsDatos.DataSet.FieldByName('idOC').AsInteger]);
  cdOCDetalle.Open;
  mdOCDetalle.LoadFromDataSet(cdOCDetalle,cdOCDetalle.RecordCount,JvMemoryDataset.lmCopy);
  cdOCDetalle.Close;
  EliminarConjunto(cdOCDetalle.ProviderName);
  cdOCDetalle.Free;


  // Si es una inserción, poner algunos campos con valores por default
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('serie').AsString := CadenaDoc;
    dsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
    dsDatos.DataSet.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('estado').AsString := 'recibido';
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := 0;
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
  end;

end;

procedure TFrmEntradasXOCDetalle.CargarFirmantes;
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

function TFrmEntradasXOCDetalle.createPopUpPartida: TFrmPartidaDoc;
Var
  temp: TFrmEntradaXOCPartida;
begin
  // aqui se manda a llamar al formulario de datos o partida del tipo
  // TFrmPartidaDoc, en este caso es FrmEntrada.
  temp := TFrmEntradaXOCPartida.Create(nil);
  result := temp;
end;

procedure TFrmEntradasXOCDetalle.edtCodigoLugarKeyPress(Sender: TObject;
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
      btnLugar.Click;

    self.Refresh;
    key := #0;
  end;
end;

procedure TFrmEntradasXOCDetalle.edtConsecutivoEnter(Sender: TObject);
begin
  inherited;
  if edtConsecutivo.Text = '<Auto>' then
  begin
    edtConsecutivo.Text := '';
  end;
end;

procedure TFrmEntradasXOCDetalle.edtConsecutivoExit(Sender: TObject);
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

procedure TFrmEntradasXOCDetalle.edtConsecutivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edtConsecutivo.Font.Color := clBlack;
end;

procedure TFrmEntradasXOCDetalle.FormShow(Sender: TObject);
Var
  idfirmante: TInteger;
  cdCiudad: TClientDataSet;
  cdOCSerie: TClientDataSet;
  ProviderName: String;
  Field1, Field2: TFloatField;
  lkResult: Variant;
begin
  try
    tab1.ActivePageIndex := 0;
    CargarFirmantes;

    ClientModule1.ComponentColor(self); //coloreado de formulario
    ClientModule1.RastrearGrids(self);  // formateo de grid

    inherited;
    if dsdatos.DataSet.RecordCount>0 then
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
    end;

    cdOCSerie := TClientDataSet.Create(nil);
    CrearConjunto(cdOCSerie,'alm_ordencompra',ProviderName,ccSelect);
    CargarDatosFiltrados(cdOCSerie,'idoc', [dsdatos.DataSet.FieldByName('idoc').AsInteger]);
    cdOCSerie.Open;
    cdOCSerie.First;
    SerieOC := cdOCSerie.FieldByName('serie').AsString;
    cdOCSerie.Close;
    EliminarConjunto(cdOCSerie.ProviderName);
    cdOCSerie.Free;

    // Agregar un campo al detalle de la captura para comparar más fácilmente lo pendiente por recibir
    mdDetalle.Close;
    Field1 := TFloatField.Create(mdOCDetalle);
    Field1.Name := 'fldCantidadOC';
    Field1.FieldName := 'cantidadoc';
    Field1.FieldKind := fkData;
    Field1.DataSet := mdDetalle;
    Field2 := TFloatField.Create(mdOCDetalle);
    Field2.Name := 'fldCantPend';
    Field2.FieldName := 'cantpend';  // almacenar la cantidad original
    Field2.FieldKind := fkData;
    Field2.DataSet := mdDetalle;
    mdDetalle.Open;
    mdDetalle.LoadFromDataSet(cdDetalle,cdDetalle.RecordCount,JvMemoryDataset.lmAppend);

    // llenar estos campos con las cantidades que le corresponden
    mdDetalle.First;
    while not mdDetalle.eof do
    begin
      mdDetalle.Edit;
      lkResult := mdOCDetalle.Lookup('idocdetalle',
                          mdDetalle.FieldByName('idocdetalle').AsInteger,'cantidad;cantidadrecibida');
      mdDetalle.FieldValues['cantpend'] := lkResult[0] - lkResult[1] + mdDetalle.FieldValues['cantidad'];
      mdDetalle.FieldValues['cantidadoc'] := lkResult[0];
      mdDetalle.Post;
      mdDetalle.Next;
    end;

  except
    ;
  end;
end;

procedure TFrmEntradasXOCDetalle.HacerComponentesEditables;
begin
  // este procedimiento sirve para establecer los componentes editables
end;

procedure TFrmEntradasXOCDetalle.Inicializar;
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
