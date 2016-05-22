unit UTFrmSolicitudDetalle;

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
  JvComponentBase, JvEnterTab, alm_genericclasses, DateUtils, ComCtrls,
  AdvDateTimePicker, AdvDBDateTimePicker;

type
  TInteger = class
    entero: integer;
  end;

type
  TFrmSolicitudDetalle = class(TFrmDetalleDocs)
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
    cmbConvenio: TDBLookupComboBox;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    CmbDepto: TDBLookupComboBox;
    DsDepartamento: TDataSource;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    procedure Inicializar; override;
    procedure FormShow(Sender: TObject);
    procedure edtCodigoLugarKeyPress(Sender: TObject; var Key: Char);
    procedure btnLugarClick(Sender: TObject);
    procedure edtConsecutivoExit(Sender: TObject);
    procedure edtConsecutivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsecutivoEnter(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    CdDepartamento: TClientDataSet;
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
  FrmSolicitudDetalle: TFrmSolicitudDetalle;

implementation

uses
  UInteliDialog,Unit2, UTFrmSolicitudPartida,xDatabase,
  UTfrmCiudad, strutils;

{$R *.dfm}



procedure TFrmSolicitudDetalle.HacerComponentesEditables;
begin
  edtReferencia.ReadOnly := not ModoEdicion;
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
  btnRec.Visible := ModoEdicion;
end;
procedure TFrmSolicitudDetalle.BtnRecClick(Sender: TObject);
var
  iConsecutivo: Integer;
  strConsecutivo: String;
  dia,mes,anio: word;
  formatoSerie: String;
  Firmante: TFirmante;
  i: Integer;
  ListIndex: Integer;
  Hoy: TDate;
begin
  try
    // Primero realizar las validaciones de datos
    Hoy := now;
    if comparedate(dsDatos.DataSet.FieldByName('fecha').AsDateTime, Hoy) < 0 then
    begin
      dtpFecha.SetFocus;
      raise InteligentException.Create('La fecha indicada no puede ser menor a la fecha actual del sistema');
    end;

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



    //almacenando informacion fija para el reporte
    dsDatos.DataSet.FieldByName('nombreusuario').asstring      := ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString;
    dsDatos.DataSet.FieldByName('cargousuario').asstring       := ClientModule1.cdUsuario.FieldByName('titulocargo').AsString;
    dsDatos.DataSet.FieldByName('codigoconvenio').asstring     := dsConvenio.DataSet.FieldByName('codigoorganizacion').asstring;
    dsDatos.DataSet.FieldByName('tituloconvenio').asstring     := dsConvenio.DataSet.FieldByName('tituloorganizacion').asstring;
    dsDatos.DataSet.FieldByName('codigodepartamento').asstring := CmbDepto.Text;
    dsDatos.DataSet.FieldByName('centrotrabajo').asstring      := ClientModule1.cdOrganizacion.FieldByName('domicilioorg').AsString;
    dsDatos.DataSet.FieldByName('tituloempresa').asstring      := ClientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString;
    dsDatos.DataSet.FieldByName('pie').asstring                := ClientModule1.cdOrganizacion.FieldByName('domiciliofiscalorg').AsString;
    //centrotrabajo,codigodepartamento,codigoconvenio,tituloconvenio,tituloempresa



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
  except
    on e:InteligentException do
      InteliDialog.ShowModal('ERROR','Error de captura',e.message,mtError,[mbOK],0);
    on e: exception do
      InteliDialog.ShowModal('ERROR','Error del sistema',e.message,mtError,[mbOK],0);
  end;
end;

procedure TFrmSolicitudDetalle.CargarCampos;
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

  CdDepartamento := TClientDataSet.Create(self);
  CrearConjunto(CdDepartamento, 'nuc_departamento', ccCatalog);
  CdDepartamento.Open;
  DsDepartamento.DataSet := CdDepartamento;



  // Si es una inserción, poner algunos campos con valores por default
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('fecha').AsDateTime := now;
    dsDatos.DataSet.FieldByName('fecharequerida').AsDateTime := now;
    dsDatos.DataSet.FieldByName('idUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('estado').AsString := 'pendiente';
    dsDatos.DataSet.FieldByName('serie').AsString := CadenaDoc;
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := 0;
    //dsDatos.DataSet.FieldByName('idorganizacion').AsInteger := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
    edtSerie.Text := AnsiReplaceStr(CadenaDoc,'{año}','0000');
    edtSerie.Text := AnsiReplaceStr(edtSerie.Text,'{consecutivo}',DupeString('0',DigitosDoc));
    edtConsecutivo.Text := '<Auto>';
    edtConsecutivo.Font.Color := clGrayText;
    dsConvenio.DataSet.First;
    dsDatos.DataSet.FieldByName('idorganizacion').Assign(dsConvenio.dataset.FieldByName('idorganizacion'));
  end
  else
  begin
    edtSerie.Text := dsDatos.DataSet.FieldByName('serie').AsString;
    edtConsecutivo.Text := dsDatos.DataSet.FieldByName('consecutivo').AsString;
    edtConsecutivo.BorderStyle := bsNone;
    edtConsecutivo.Color := clBtnFace;
    edtConsecutivo.Top := edtConsecutivo.Top + 2;
    Panel4.Enabled := False;
    if edtReferencia.CanFocus then
      edtReferencia.SetFocus;
  end;

end;


procedure TFrmSolicitudDetalle.btnLugarClick(Sender: TObject);
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
    dsDatos.DataSet.FieldByName('tituloCiudad').AsString := Ciudad.Valor['tituloCiudad'];
    dsDatos.DataSet.FieldByName('tituloEstado').AsString := Ciudad.Valor['tituloEstado'];
    dsDatos.DataSet.FieldByName('tituloPais').AsString := Ciudad.Valor['tituloPais'];
    edtTituloLugar.Text := Ciudad.Valor['tituloCiudad'];
    edtCodigoLugar.Text :=  Ciudad.Valor['codigociudad'];
    memComentarios.SetFocus;
  end;
  frmCiudad.Free;
  Ciudad.Free;
end;

function TFrmSolicitudDetalle.createPopUpPartida: TFrmPartidaDoc;
Var
  temp: TFrmSolicitudPartida;
begin
  temp := TFrmSolicitudPartida.Create(nil);
  temp.fechaRequeridaDefault := dtpFechaReq.Date;
  result := temp;
end;

procedure TFrmSolicitudDetalle.edtCodigoLugarKeyPress(Sender: TObject;
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
      dsDatos.DataSet.FieldByName('tituloCiudad').AsString := cdCiudad.FieldByName('tituloCiudad').AsString;
      dsDatos.DataSet.FieldByName('tituloEstado').AsString := cdCiudad.FieldByName('tituloEstado').AsString;
      dsDatos.DataSet.FieldByName('tituloPais').AsString := cdCiudad.FieldByName('tituloPais').AsString;
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

procedure TFrmSolicitudDetalle.edtConsecutivoEnter(Sender: TObject);
begin
  inherited;
  if edtConsecutivo.Text = '<Auto>' then
  begin
    edtConsecutivo.Text := '';
  end;
end;

procedure TFrmSolicitudDetalle.edtConsecutivoExit(Sender: TObject);
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

procedure TFrmSolicitudDetalle.edtConsecutivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  edtConsecutivo.Font.Color := clBlack;
end;

procedure TFrmSolicitudDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    EliminarConjunto(CdDepartamento);
  except
    ;
  end;
  inherited;

end;

procedure TFrmSolicitudDetalle.FormShow(Sender: TObject);
Var
  idfirmante: TInteger;
begin
  tab1.ActivePageIndex := 0;
  CargarFirmantes;

  inherited;
end;

procedure TFrmSolicitudDetalle.Inicializar;
begin
  keyDetailField := 'idsolicituddetalle';
  keyParentField := 'idsolicitud';
  entityDetailName := 'alm_solicituddetalle';
  codeDetailField := '';
end;

procedure TFrmSolicitudDetalle.CargarFirmantes;
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
  CargarDatosFiltrados(cdConfFirmantes, 'nombredocumento', ['SOLICITUD']);
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
