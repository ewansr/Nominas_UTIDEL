unit UTFrmSalidaDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, JvMemoryDataset, DB, DBClient, AdvShapeButton,
  StdCtrls, Buttons, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, UTFrmPartidaDoc, alm_genericclasses, JvExControls, JvLabel,
  StrUtils, AdvCombo, DBCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvSmoothTabPager,
  NxDBColumns, NxColumns;

type
  TFrmSalidaDetalle = class(TFrmDetalleDocs)
    lbl1: TJvLabel;
    lbl2: TJvLabel;
    edtConsecutivo: TEdit;
    tab1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    lblLbTipo: TJvLabel;
    lbl6: TLabel;
    lbl7: TJvLabel;
    lbl8: TJvLabel;
    lbl9: TJvLabel;
    cmbTipo: TDBLookupComboBox;
    memcomentarios: TDBMemo;
    dtpfecha: TJvDBDatePickerEdit;
    cmbidalmacen: TDBLookupComboBox;
    edtReferencia: TDBEdit;
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
    cdAlmacen: TClientDataSet;
    dsAlmacen: TDataSource;
    cdTipo: TClientDataSet;
    dsDsTipo: TDataSource;
    mdDetalleOC: TJvMemoryData;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    lblSerie: TJvLabel;
    mdDetalleOriginal: TJvMemoryData;
    JvLabel8: TJvLabel;
    cmbConvenio: TDBLookupComboBox;
    procedure Inicializar; override;
    procedure edtConsecutivoExit(Sender: TObject);
    procedure edtConsecutivoEnter(Sender: TObject);
    procedure edtConsecutivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbTipoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ListaFirmas: array[0..9] of TAdvComboBox;
    FirmantesDoc: TListaFirmantes;
    procedure CargarFirmantes;
  protected
    procedure HacerComponentesEditables; override;
    function createPopUpPartida: TFrmPartidaDoc; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
  end;

var
  FrmSalidaDetalle: TFrmSalidaDetalle;

implementation

uses
  ClientModuleUnit1, xDatabase, UInteliDialog, UTFrmSalidaPartida;

{$R *.dfm}

procedure TFrmSalidaDetalle.HacerComponentesEditables;
begin
  //
end;

procedure TFrmSalidaDetalle.BtnRecClick(Sender: TObject);
var
  iConsecutivo: Integer;
  strConsecutivo: String;
  dia,mes,anio: word;
  formatoSerie: String;
  Firmante: TFirmante;
  i: Integer;
  ListIndex: Integer;
begin
  // reemplazar el memorydata que se muestra por el detallado, que es el que se debe de guardar
  NextDBGrid1.BeginUpdate;
  mdDetalleOC.First;
  mdDetalle.LoadFromDataSet(mdDetalleOC,mdDetalleOC.RecordCount,JvMemoryDataSet.lmCopy);
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

procedure TFrmSalidaDetalle.CargarCampos;
begin
  // Si es una inserción, poner algunos campos con valores por default
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
    dsDatos.DataSet.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('NombreUsuario').AsString := ClientModule1.cdUsuario.FieldByName('NombreUsuario').AsString;
    dsDatos.DataSet.FieldByName('estado').AsString := 'activo';
    dsDatos.DataSet.FieldByName('serie').AsString := CadenaDoc;
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := 0;
    //dsDatos.DataSet.FieldByName('idorganizacion').AsInteger := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
    dsConvenio.DataSet.First;
    dsDatos.DataSet.FieldByName('idorganizacion').Assign(dsConvenio.dataset.FieldByName('idorganizacion'));
    edtConsecutivo.Text := '<Auto>';
    edtConsecutivo.Font.Color := clGrayText;
  end
  else
  begin
    lblSerie.Caption := dsDatos.DataSet.FieldByName('serie').AsString;
    edtConsecutivo.Text := dsDatos.DataSet.FieldByName('consecutivo').AsString;
    edtConsecutivo.BorderStyle := bsNone;
    edtConsecutivo.Color := clBtnFace;
    edtConsecutivo.Top := edtConsecutivo.Top + 2;
    Panel4.Enabled := False;
    edtReferencia.SetFocus;
  end;

end;

procedure TFrmSalidaDetalle.cmbTipoClick(Sender: TObject);
begin
  inherited;
  dsDatos.DataSet.FieldByName('nombretipomovimiento').AsString := cdTipo.FieldByName('nombretipomovimiento').AsString;
end;

function TFrmSalidaDetalle.createPopUpPartida: TFrmPartidaDoc;
var
  tmpForm: TFrmSalidaPartida;
begin
  tmpForm := TFrmSalidaPartida.Create(self);
  tmpForm.mdDetalleOC := mdDetalleOC;
  tmpForm.mdDetalleOriginal := mdDetalleOriginal;
  tmpForm.IdAlmacen := dsDatos.DataSet.FieldByName('idalmacen').AsInteger;
  tmpForm.tituloAlmacen := cdAlmacen.FieldByName('tituloalmacen').AsString;
  tmpForm.ModoEncabezado := dsDatos.State;
  Result := tmpForm;
end;

procedure TFrmSalidaDetalle.edtConsecutivoEnter(Sender: TObject);
begin
  inherited;
  if edtConsecutivo.Text = '<Auto>' then
  begin
    edtConsecutivo.Text := '';
  end;
end;

procedure TFrmSalidaDetalle.edtConsecutivoExit(Sender: TObject);
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

procedure TFrmSalidaDetalle.edtConsecutivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edtConsecutivo.Font.Color := clBlack;
end;

procedure TFrmSalidaDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action := caFree;
end;

procedure TFrmSalidaDetalle.FormShow(Sender: TObject);
Var
  ProviderName: string;
begin
  // Cargar la lista de los tipos de salida
  CrearConjunto(CdTipo, 'alm_tipomovimiento', ccCatalog);
  // Solicitar solo los movimientos de salida
  CargarDatosFiltrados(cdTipo, 'tipomovimiento,manifiesto', ['SALIDA','N']);
  cdTipo.Open;
  cdTipo.First;
  dsDatos.DataSet.FieldValues['idtipomovimiento'] := cdTipo.FieldValues['idtipomovimiento'];
  dsDatos.DataSet.FieldValues['nombretipomovimiento'] := cdTipo.FieldValues['nombretipomovimiento'];

  // Cargar la lista de los almacenes
  CrearConjunto(cdAlmacen,'alm_almacen',ProviderName,ccSelect);
  CargarDatosFiltrados(cdAlmacen,'activo',['si']);
  cdAlmacen.Open;
  cdAlmacen.First;
  dsDatos.DataSet.FieldValues['idalmacen'] := cdAlmacen.FieldValues['idalmacen'];
  dsDatos.DataSet.FieldValues['tituloalmacen'] := cdAlmacen.FieldValues['tituloalmacen'];

  tab1.ActivePageIndex := 0;
  CargarFirmantes;

  ClientModule1.ComponentColor(self); //coloreado de formulario
  ClientModule1.RastrearGrids(self);  // formateo de grid

  inherited;

  if dsdatos.State = dsInsert then
  begin
    CdTipo.First;
    dsDatos.DataSet.FieldByName('idtipomovimiento').AsInteger := cdTipo.FieldByName('idtipomovimiento').AsInteger;
    dsDatos.DataSet.FieldByName('nombretipomovimiento').AsString := cdTipo.FieldByName('nombretipomovimiento').AsString;
    cmbTipo.Update;
    lblSerie.Caption := AnsiReplaceStr(CadenaDoc,'{año}','0000');
    lblSerie.Caption := AnsiReplaceStr(lblSerie.Caption,'{consecutivo}',DupeString('0',DigitosDoc));
  end;
  cmbTipo.SetFocus;

  // Crear una copia del dataset del detalle donde se guardará el detalle por OC
  mdDetalle.First;
  mdDetalleOC.LoadFromDataSet(mdDetalle,mdDetalle.RecordCount,JvMemoryDataset.lmCopy);
  // Crear una copia inalterada del detalle por OC pasa su uso en la pantalla de PartidaDist
  mdDetalle.First;
  mdDetalleOriginal.LoadFromDataSet(mdDetalle,mdDetalle.RecordCount,JvMemoryDataset.lmCopy);
  // borrar el memory que se muestra para crear los acumulados
  mdDetalle.First;
  while not mdDetalle.eof do
  begin
    mdDetalle.Delete;
    mdDetalle.First;
  end;

  mdDetalleOC.First;
  while not mdDetalleOC.eof do
  begin
    if mdDetalle.Locate('idarticulo',mdDetalleOC.FieldByName('idarticulo').AsInteger,[]) then
    begin
      mdDetalle.Edit;
      mdDetalle.FieldByName('cantidad').AsFloat := mdDetalle.FieldByName('cantidad').AsFloat + mdDetalleOC.FieldByName('cantidad').AsFloat;
      mdDetalle.Post;
    end
    else
    begin
      mdDetalle.Append;
      mdDetalle.CopyFields(mdDetalleOC);
      mdDetalle.Post;
    end;

    mdDetalleOC.Next;
  end;

end;

procedure TFrmSalidaDetalle.Inicializar;
begin
  keyDetailField := 'idsalidadetalle';
  keyParentField := 'idsalida';
  entityDetailName := 'alm_salidadetalle';
  codeDetailField := '';
end;


procedure TFrmSalidaDetalle.CargarFirmantes;
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
  CargarDatosFiltrados(cdConfFirmantes, 'nombredocumento', ['SALIDA']);
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


end.
