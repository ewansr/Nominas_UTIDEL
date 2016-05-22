unit UTFrmRequisicionDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, StdCtrls, Mask, DBCtrls, DB, DBClient,
  NxCollection, Buttons, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, NxDBColumns, NxColumns, JvMemoryDataset,
  ClientModuleUnit1,JvExStdCtrls, JvCombobox, JvDBCombobox, JvGroupBox,
  UTFrmPartidaDoc, AdvShapeButton,  JvExControls, JvLabel, AdvTabSet,
  AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvCombo, AdvSmoothTabPager,
  JvComponentBase, JvEnterTab, alm_genericclasses;

type
  TInteger = class
    entero: integer;
  end;

type
  TFrmRequisicionDetalle = class(TFrmDetalleDocs)
    dtpFecha: TJvDBDatePickerEdit;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    edtReferencia: TDBEdit;
    memComentarios: TDBMemo;
    dtpFechaReq: TJvDBDatePickerEdit;
    NxDBDateColumn1: TNxDBDateColumn;
    edtCodigoLugar: TEdit;
    btnLugar: TButton;
    edtTituloLugar: TEdit;
    edtConsecutivo: TEdit;
    JvMaskEdit1: TJvMaskEdit;
    edtSerie: TEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
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
    procedure Inicializar; override;
    procedure FormShow(Sender: TObject);
    procedure edtCodigoLugarKeyPress(Sender: TObject; var Key: Char);
    procedure btnLugarClick(Sender: TObject);
    procedure edtConsecutivoExit(Sender: TObject);
    procedure edtConsecutivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsecutivoEnter(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
    ListaFirmas: array[0..9] of TAdvComboBox;
    FirmantesDoc: TListaFirmantes;
    procedure CargarFirmantes;
  protected
    function createPopUpPartida: TFrmPartidaDoc; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
  end;

var
  FrmRequisicionDetalle: TFrmRequisicionDetalle;

const
  CadenaDoc = 'SOL-OT1-{consecutivo}/{año}';
  DigitosDoc = 6;

implementation

uses
  UInteliDialog,Unit2, UTFrmSolicitudPartida,xDatabase,
  UTfrmCiudad, strutils;

{$R *.dfm}


procedure TFrmRequisicionDetalle.BtnRecClick(Sender: TObject);
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
  if dsDatos.DataSet.State = dsInsert then
  begin
    DecodeDate(dtpFecha.Date,anio,mes,dia);
    formatoSerie := GetSerie(CadenaDoc,anio,DigitosDoc);
    if edtConsecutivo.Text = '<Auto>' then
      iConsecutivo := 0
    else
      iConsecutivo := strtoint(edtConsecutivo.Text);
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := iConsecutivo;
    dsDatos.DataSet.FieldByName('serie').AsString := formatoSerie;
  end;

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

procedure TFrmRequisicionDetalle.CargarCampos;
var
  cdCiudad: TClientDataSet;
  ProviderName: String;
  idCiudad: integer;
begin
  inherited;

  // Cargar la descripción del campo idlugar
  idCiudad := dsDatos.DataSet.FieldByName('idCiudad').AsInteger;
  cdCiudad := TClientDataSet.Create(nil);
  CrearConjunto(cdCiudad, 'nuc_Ciudad', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdCiudad, 'idCiudad', [idCiudad]);
  cdCiudad.Open;
  // Si el registro regresa solo un registro, entonces poner los datos correspondientes
  if cdCiudad.RecordCount = 1 then
  begin
    edtCodigoLugar.Text := cdCiudad.FieldByName('codigoCiudad').AsString;
    edtTituloLugar.Text := cdCiudad.FieldByName('tituloCiudad').AsString;
  end
  else
    edtTituloLugar.Text := '';
  cdCiudad.Close;
  cdCiudad.Free;
  EliminarConjunto(ProviderName);

  // Si es una inserción, poner algunos campos con valores por default
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
    dsDatos.DataSet.FieldByName('fecharequerida').AsDateTime := now;
    dsDatos.DataSet.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('estado').AsString := 'pendiente';
    dsDatos.DataSet.FieldByName('serie').AsString := CadenaDoc;
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := 0;
    edtSerie.Text := AnsiReplaceStr(CadenaDoc,'{año}','0000');
    edtSerie.Text := AnsiReplaceStr(edtSerie.Text,'{consecutivo}',DupeString('0',DigitosDoc));
    edtConsecutivo.Text := '<Auto>';
    edtConsecutivo.Font.Color := clGrayText;


    dsDatos.DataSet.FieldByName('idorganizacion').AsInteger := 0;
  end
  else
  begin
    edtSerie.Text := dsDatos.DataSet.FieldByName('serie').AsString;
    edtConsecutivo.Text := dsDatos.DataSet.FieldByName('consecutivo').AsString;
    edtConsecutivo.BorderStyle := bsNone;
    edtConsecutivo.Color := clBtnFace;
    edtConsecutivo.Top := edtConsecutivo.Top + 2;
    Panel4.Enabled := False;
    edtReferencia.SetFocus;
  end;

end;


procedure TFrmRequisicionDetalle.btnLugarClick(Sender: TObject);
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
    memComentarios.SetFocus;
  end;
  frmCiudad.Free;
  Ciudad.Free;
end;

function TFrmRequisicionDetalle.createPopUpPartida: TFrmPartidaDoc;
Var
  temp: TFrmSolicitudPartida;
begin
  temp := TFrmSolicitudPartida.Create(nil);
  temp.fechaRequeridaDefault := dtpFechaReq.Date;
  result := temp;
end;

procedure TFrmRequisicionDetalle.edtCodigoLugarKeyPress(Sender: TObject;
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
      memComentarios.SetFocus;

    self.Refresh;
    key := #0;
  end;

end;

procedure TFrmRequisicionDetalle.edtConsecutivoEnter(Sender: TObject);
begin
  inherited;
  if edtConsecutivo.Text = '<Auto>' then
  begin
    edtConsecutivo.Text := '';
  end;
end;

procedure TFrmRequisicionDetalle.edtConsecutivoExit(Sender: TObject);
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

procedure TFrmRequisicionDetalle.edtConsecutivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edtConsecutivo.Font.Color := clBlack;
end;

procedure TFrmRequisicionDetalle.FormShow(Sender: TObject);
Var
  idfirmante: TInteger;
begin
  tab1.ActivePageIndex := 0;
  CargarFirmantes;

  inherited;
end;

procedure TFrmRequisicionDetalle.Inicializar;
begin
  keyDetailField := 'idsolicituddetalle';
  keyParentField := 'idsolicitud';
  entityDetailName := 'alm_solicituddetalle';
  codeDetailField := '';
end;

procedure TFrmRequisicionDetalle.CargarFirmantes;
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

end.
