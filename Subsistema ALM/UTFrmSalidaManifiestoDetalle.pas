unit UTFrmSalidaManifiestoDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, Buttons, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, StdCtrls, AdvCombo, AdvEdit,
  DBAdvEd, ExtCtrls, DBCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,URegistro,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvSmoothTabPager,
  JvExControls, JvLabel, JvMemoryDataset, DB, DBClient,alm_genericclasses,StrUtils,
  ComCtrls, AdvDateTimePicker, AdvDBDateTimePicker;
function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmSalidaManifiestoDetalle = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    tab1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    lblLbTipo: TJvLabel;
    lbl6: TLabel;
    lbl8: TJvLabel;
    lbl9: TJvLabel;
    cmbTipo: TDBLookupComboBox;
    memcomentarios: TDBMemo;
    cmbidalmacen: TDBLookupComboBox;
    dbrgrpTipoEmbarque: TDBRadioGroup;
    AdvSmoothTabPage1: TAdvSmoothTabPage;
    lbl5: TJvLabel;
    grp1: TGroupBox;
    lbl3: TJvLabel;
    lblOrigen: TJvLabel;
    edtCodigoLugar: TEdit;
    btnLugar: TButton;
    grp2: TGroupBox;
    lbl4: TJvLabel;
    lblDestino: TJvLabel;
    edtCodigoLugarDest: TEdit;
    btnLugarDest: TButton;
    edtAreaDestinataria: TDBAdvEdit;
    edtclaveactivo: TDBAdvEdit;
    cmbViaEmbarque: TDBLookupComboBox;
    AdvSmoothTabPage2: TAdvSmoothTabPage;
    edtnombreembarcador: TDBAdvEdit;
    edtccostoembarcador: TDBAdvEdit;
    edtcgestorembarcador: TDBAdvEdit;
    edtpfinancieraembarcador: TDBAdvEdit;
    edtfondoembarcador: TDBAdvEdit;
    edtcuentamayorembarcador: TDBAdvEdit;
    edtembarcacion: TDBAdvEdit;
    edtpesototal: TDBAdvEdit;
    edtcostototal: TDBAdvEdit;
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
    grp3: TGroupBox;
    edtNombre1: TAdvEdit;
    edtPuesto1: TAdvEdit;
    edtFicha1: TAdvEdit;
    edtExt1: TAdvEdit;
    grp4: TGroupBox;
    edtNombre2: TAdvEdit;
    edtPuesto2: TAdvEdit;
    edtFicha2: TAdvEdit;
    edtExt2: TAdvEdit;
    AdvSmoothTabPage3: TAdvSmoothTabPage;
    grp5: TGroupBox;
    edtNombre3: TAdvEdit;
    edtPuesto3: TAdvEdit;
    edtFicha3: TAdvEdit;
    edtExt3: TAdvEdit;
    grp6: TGroupBox;
    edtNombre4: TAdvEdit;
    edtPuesto4: TAdvEdit;
    edtFicha4: TAdvEdit;
    edtExt4: TAdvEdit;
    AdvSmoothTabPage4: TAdvSmoothTabPage;
    grp7: TGroupBox;
    edtNombre5: TAdvEdit;
    edtPuesto5: TAdvEdit;
    edtFicha5: TAdvEdit;
    edtExt5: TAdvEdit;
    Panel3: TPanel;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    btnAgregarDetalle: TBitBtn;
    btnEditarDetalle: TBitBtn;
    btnQuitarDetalle: TBitBtn;
    Panel5: TPanel;
    BtnRec: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    dsDatos: TDataSource;
    cdDetalle: TClientDataSet;
    dsDetalle: TDataSource;
    mdDetalle: TJvMemoryData;
    CdControllogisticaDetalle: TClientDataSet;
    CdControlLogistica: TClientDataSet;
    dsAlmacen: TDataSource;
    cdAlmacen: TClientDataSet;
    dsViaEmbarque: TDataSource;
    cdViaEmbarque: TClientDataSet;
    cdTipo: TClientDataSet;
    dsDsTipo: TDataSource;
    lblSerie: TJvLabel;
    edtConsecutivo: TEdit;
    edtReferencia: TDBEdit;
    dtfecha: TAdvDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAgregarDetalleClick(Sender: TObject);
    procedure btnEditarDetalleClick(Sender: TObject);
    procedure btnQuitarDetalleClick(Sender: TObject);
    procedure cmbTipoClick(Sender: TObject);
    procedure edtConsecutivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsecutivoEnter(Sender: TObject);
    procedure edtConsecutivoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NextDBGrid1VerticalScroll(Sender: TObject; Position: Integer);
    procedure NextDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
  private
    { Private declarations }
    id: integer;
    Documento: string;
    tDataSet: TClientDataSet;
    idcontrollogistica: integer;
    ListaFirmas: array[0..9] of TAdvComboBox;
    FirmantesDoc: TListaFirmantes;
    procedure CargarCampos;
    procedure CargarFirmantesNuevo;
    procedure dsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure AccedeACoordenadas;
  public
    { Public declarations }
    ModoEdicion: boolean;
    CadenaDoc: string;
    DigitosDoc: Integer;
    idultimo: integer;
  end;

var
  FrmSalidaManifiestoDetalle: TFrmSalidaManifiestoDetalle;

implementation

uses
  ClientModuleUnit1, xDatabase, UInteliDialog, UTFrmSalidaManPartida, UTFrmCiudad,
  UTFrmSelecControlLog, UTFrmSalidaManifiestoPartida;
{$R *.dfm}

procedure TFrmSalidaManifiestoDetalle.btnAgregarDetalleClick(Sender: TObject);
Var
  frmPartida: TFrmSalidaManifiestopartida;
begin
  frmPartida := TFrmSalidaManifiestopartida.Create(nil);
  mdDetalle.Append;
  frmPartida.IdSalidaA := dsDatos.DataSet.FieldByName('idsalida').AsInteger;
  frmPartida.dsDetalle.DataSet := dsdetalle.DataSet;
  frmPartida.IdAlmacen := cdAlmacen.FieldByName('idalmacen').AsInteger ;
  frmPartida.tituloAlmacen := cdAlmacen.FieldByName('tituloalmacen').AsString ;
  frmPartida.ShowModal;
  mdDetalle.First;
  while not mddetalle.eof do
  begin
    mdDetalle.edit;
    mdDetalle.FieldByName('cantorig').AsFloat:= mdDetalle.FieldByName('cantidad').AsFloat;
    mdDetalle.post;
    mdDetalle.Next;
  end;
end;

procedure TFrmSalidaManifiestoDetalle.BtnCloseClick(Sender: TObject);
begin

  close;
end;

procedure TFrmSalidaManifiestoDetalle.CargarCampos;
begin

end;

procedure TFrmSalidaManifiestoDetalle.btnEditarDetalleClick(Sender: TObject);
Var
  frmPartida: TFrmSalidaManifiestopartida;
begin
  frmPartida := TFrmSalidaManifiestopartida.Create(nil);
  mdDetalle.Edit;
  frmPartida.IdSalidaA := dsDatos.DataSet.FieldByName('idsalida').AsInteger;
  frmPartida.dsDetalle.DataSet := dsdetalle.DataSet;
  frmPartida.IdAlmacen := cdAlmacen.FieldByName('idalmacen').AsInteger ;
  frmPartida.tituloAlmacen := cdAlmacen.FieldByName('tituloalmacen').AsString ;
  frmPartida.ShowModal;
  mdDetalle.First;
  while not mddetalle.eof do
  begin
    mdDetalle.edit;
    mdDetalle.FieldByName('cantorig').AsFloat:= mdDetalle.FieldByName('cantidad').AsFloat;
    mdDetalle.post;
    mdDetalle.Next;
  end;
end;

procedure TFrmSalidaManifiestoDetalle.btnQuitarDetalleClick(Sender: TObject);
begin
  if not mdDetalle.eof then
    if InteliDialog.ShowModal('¿Quitar el registro actual?','',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      mdDetalle.Delete;
end;

procedure TFrmSalidaManifiestoDetalle.BtnRecClick(Sender: TObject);
var
  iConsecutivo: Integer;
  strConsecutivo: String;
  dia,mes,anio: word;
  formatoSerie: String;
  Firmante: TFirmante;
  i: Integer;
  ListIndex: Integer;
  idsalida: integer;
  nuevo: Boolean;

  j: integer;
  guid: TGuid;
  cdCtrlLog,cdPartidalog:TClientDataSet;
begin
   if nextdbgrid1.RowCount < 1 then
   begin
      InteliDialog.ShowModal('Informacion',' No se puede guardar un documento sin partidas.', mtInformation, [mbOk], 0);
      Exit;
   end;

   dsDatos.DataSet.FieldValues['tituloalmacen'] := cdAlmacen.FieldValues['tituloalmacen'];
   dsDatos.DataSet.FieldValues['tituloviaembarque'] := cdViaEmbarque.FieldValues['tituloviaembarque'];


  // reemplazar el memorydata que se muestra por el detallado, que es el que se debe de guardar
  NextDBGrid1.BeginUpdate;
  // Si es una inserción, ajustar todo para que se calculen los campos serie y consecutivo
  // de manera correcta por el trigger
  DecodeDate(dtFecha.Date,anio,mes,dia);
  if dsDatos.DataSet.State = dsInsert then
  begin
    formatoSerie := GetSerie(CadenaDoc,anio,DigitosDoc);
    if edtConsecutivo.Text = '<Auto>' then
      iConsecutivo := 0
    else
      iConsecutivo := strtoint(edtConsecutivo.Text);
    dsDatos.DataSet.FieldByName('consecutivo').AsInteger := iConsecutivo;
    dsDatos.DataSet.FieldByName('serie').AsString := formatoSerie;

    dsDatos.DataSet.FieldByName('idusuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    dsDatos.DataSet.FieldByName('nombreusuario').asstring := ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString;
    dsDatos.DataSet.FieldByName('estado').AsString := 'activo';
    dsDatos.DataSet.FieldByName('idorganizacion').Asinteger := ClientModule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
  end;
  dsDatos.DataSet.FieldByName('periodo').AsInteger := anio;

    // Crear las cadenas para guardar los datos de los firmantes
  FirmantesDoc.Clear;
  Firmante := TFirmante.Create;
  Firmante.Id := 1; // 'AUTORIZÓ'
  Firmante.Titulo := edtFicha1.Text;
  Firmante.Nombre := edtNombre1.Text;
  Firmante.Puesto := edtPuesto1.Text;
  Firmante.Departamento := edtExt1.Text;
  FirmantesDoc.Add(Firmante);

  Firmante.Id := 2; // 'VoBo'
  Firmante.Titulo := edtFicha2.Text;
  Firmante.Nombre := edtNombre2.Text;
  Firmante.Puesto := edtPuesto2.Text;
  Firmante.Departamento := edtExt2.Text;
  FirmantesDoc.Add(Firmante);

  Firmante.Id := 3;  // 'ENTREGA'
  Firmante.Titulo := edtFicha3.Text;
  Firmante.Nombre := edtNombre3.Text;
  Firmante.Puesto := edtPuesto3.Text;
  Firmante.Departamento := edtExt3.Text;
  FirmantesDoc.Add(Firmante);

  Firmante.Id := 4;  // 'ELABORA EMBARQUE'
  Firmante.Titulo := edtFicha4.Text;
  Firmante.Nombre := edtNombre4.Text;
  Firmante.Puesto := edtPuesto4.Text;
  Firmante.Departamento := edtExt4.Text;
  FirmantesDoc.Add(Firmante);

  Firmante.Id := 5;  // 'ALMACEN'
  Firmante.Titulo := edtFicha5.Text;
  Firmante.Nombre := edtNombre5.Text;
  Firmante.Puesto := edtPuesto5.Text;
  Firmante.Departamento := edtExt5.Text;
  FirmantesDoc.Add(Firmante);

  dsDatos.DataSet.FieldByName('FirmaId').AsString := FirmantesDoc.ListaId;
  dsDatos.DataSet.FieldByName('FirmaTitulo').AsString := FirmantesDoc.ListaTitulo;
  dsDatos.DataSet.FieldByName('FirmaNombre').AsString := FirmantesDoc.ListaNombre;
  dsDatos.DataSet.FieldByName('FirmaPuesto').AsString := FirmantesDoc.ListaPuesto;
  dsDatos.DataSet.FieldByName('FirmaDepto').AsString := FirmantesDoc.ListaDepartamento;

  if (dsDatos.DataSet.State = dsinsert) then
    nuevo  := True
  else
    nuevo := False;
  //herencia
    tdataset.onreconcileerror := dsreconcileerror;

    // Crear un ID Unico a nivel aplicación para poder regresar el mismo registro
    if tDataSet.State = dsInsert then
    begin
      tDataSet.Post;
      tDataSet.ApplyUpdates(0);
      id := UltimoId;
      idsalida := id;
    end
    else
    begin
      tDataSet.Post;
      tDataSet.ApplyUpdates(0);
      id := tDataSet.FieldByName('idsalida').AsInteger;
    end;

    if id = 0 then   // Esto me indica que realmente no se guardó nada
      raise Exception.Create('No se pudo crear el encabezado del documento.');

    // Borrar todos los registros del detalle
    cdDetalle.First;
    cdDetalle.readonly := false;
    while not cdDetalle.eof do
    begin
      cdDetalle.Delete;
      cdDetalle.First;
    end;

    // Poner el campo de relación del padre
    mdDetalle.First;
    while not mdDetalle.eof do
    begin
      cdDetalle.Insert;
      for j := 0 to cdDetalle.FieldCount - 1 do
      begin
        if ansilowercase(cdDetalle.FieldDefs.Items[j].Name) = ansilowercase('idsalida') then
          cdDetalle.Fields[j].AsVariant := id
        else
          cdDetalle.Fields[j].AsVariant := mdDetalle.Fields[j].AsVariant;
      end;
      cdDetalle.post;
      cdDetalle.ApplyUpdates(-1);
      //generar salida de material
      mdDetalle.Next;
    end;

    // Agregar los registros del memorydata al dataset del detalle
    InteliDialog.ShowModal('Información guardada',
      'La información se ha guardado correctamente',mtInformation,[mbOK],0);
    self.Close;
  //fin
  try
    if nuevo then
    begin
     // idsalida := Self.idultimo;

        CrearConjunto(CdControllogisticaDetalle,'alm_controllogisticadetalle',ccupdate);
        CdControllogisticaDetalle.Open;
        CdControllogisticaDetalle.Append;
        CdControlLogisticaDetalle.FieldByName('idcontrollogisticadetalle').AsInteger := 0;
        CdControlLogisticaDetalle.FieldByName('idcontrollogistica').AsInteger := idcontrollogistica;
        CdControlLogisticaDetalle.FieldByName('idsalida').AsInteger := idsalida;

        CdControlLogisticaDetalle.Post;
        CdControlLogisticaDetalle.ApplyUpdates(-1);

        EliminarConjunto(CdControlLogisticaDetalle.ProviderName);
    end;

  except
    on e:Exception do
      InteliDialog.ShowModal('Error grave',', Al relacionar la salida con el movimiento de logistica por lo siguiente: '+e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmSalidaManifiestoDetalle.CargarFirmantesNuevo;
begin
  // Cargar los datos de los firmantes a una estrucura más sencilla de manejar
  FirmantesDoc := TListaFirmantes.Create;
  with dsDatos.DataSet do
  begin
    FirmantesDoc.LoadData(FieldByName('firmaid').AsString,
                          FieldByName('firmatitulo').AsString,
                          FieldByName('firmanombre').AsString,
                          FieldByName('firmapuesto').AsString,
                          FieldByName('firmadepto').AsString);
  end;

  if (dsDatos.DataSet.State = dsEdit) Then
  begin
    if FirmantesDoc.Count > 0 then
    begin
      edtNombre1.Text := FirmantesDoc.Item[0].Nombre;
      edtPuesto1.Text := FirmantesDoc.Item[0].Puesto;
      edtFicha1.Text := FirmantesDoc.Item[0].Titulo;
      edtExt1.Text := FirmantesDoc.Item[0].Departamento;
    end;

    if FirmantesDoc.Count > 1 then
    begin
      edtNombre2.Text := FirmantesDoc.Item[1].Nombre;
      edtPuesto2.Text := FirmantesDoc.Item[1].Puesto;
      edtFicha2.Text := FirmantesDoc.Item[1].Titulo;
      edtExt2.Text := FirmantesDoc.Item[1].Departamento;
    end;

    if FirmantesDoc.Count > 2 then
    begin
      edtNombre3.Text := FirmantesDoc.Item[2].Nombre;
      edtPuesto3.Text := FirmantesDoc.Item[2].Puesto;
      edtFicha3.Text := FirmantesDoc.Item[2].Titulo;
      edtExt3.Text := FirmantesDoc.Item[2].Departamento;
    end;

    if FirmantesDoc.Count > 3 then
    begin
      edtNombre4.Text := FirmantesDoc.Item[3].Nombre;
      edtPuesto4.Text := FirmantesDoc.Item[3].Puesto;
      edtFicha4.Text := FirmantesDoc.Item[3].Titulo;
      edtExt4.Text := FirmantesDoc.Item[3].Departamento;
    end;

    if FirmantesDoc.Count > 4 then
    begin
      edtNombre5.Text := FirmantesDoc.Item[4].Nombre;
      edtPuesto5.Text := FirmantesDoc.Item[4].Puesto;
      edtFicha5.Text := FirmantesDoc.Item[4].Titulo;
      edtExt5.Text := FirmantesDoc.Item[4].Departamento;
    end;
  end;
end;

procedure TFrmSalidaManifiestoDetalle.cmbTipoClick(Sender: TObject);
begin
  dsDatos.DataSet.FieldByName('nombretipomovimiento').AsString := cdTipo.FieldByName('nombretipomovimiento').AsString;
end;

procedure TFrmSalidaManifiestoDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdDetalle);
  LiberarVentana(Self, Action);
end;

procedure TFrmSalidaManifiestoDetalle.FormCreate(Sender: TObject);
Var
  cdDocSerie: TClientDataSet;
  ProviderName: string;
begin
  AccedeACoordenadas;
  // Cargar la plantilla para generar la serie de los documentos
  // Primero cargar algun formato por default
  CadenaDoc := '{codigo}-{consecutivo}/{año}';
  DigitosDoc := 5;

  cdDocSerie := TClientDataSet.Create(nil);
  Documento := 'SALIDA';
  CrearConjunto(cdDocSerie,'nuc_documentoserie',ProviderName,ccSelect);
  CargarDatosFiltrados(cdDocSerie,'idorganizacion,nombredocumento,activo',
                [clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger,Documento,'si']);
  cdDocSerie.Open;
  if cdDocSerie.RecordCount > 0 then
  begin
    cdDocSerie.First;
    CadenaDoc := cdDocSerie.FieldByName('serie').AsString;
    DigitosDoc := cdDocSerie.FieldByName('digitos').AsInteger;
  end;

end;

procedure TFrmSalidaManifiestoDetalle.FormShow(Sender: TObject);
Var
  ProviderName: string;
  popupselect: TFrmControlLog;
  key: integer;
begin
  try
    clientmodule1.componentcolor(Self);
    clientmodule1.RastrearGrids(Self);
    tDataSet := TClientDataSet(dsDatos.DataSet);
    tDataSet.OnReconcileError := dsReconcileError;
    CrearConjunto(cdDetalle, 'alm_salidadetalle', ccupdate); // Traer el detalle en modo de edicion
    key := dsDatos.DataSet.FieldByName('idsalida').AsInteger;
    CargarDatosFiltrados(cdDetalle, 'idsalida', [Key]);  // Regresar los detalles del documento

    cdDetalle.Open;
    DataSet2MemoryData(cdDetalle,mdDetalle);  // pasar el detalle a un memory data para poder manejarlo de manera local
    mdDetalle.ApplyChanges;
    if dsDatos.DataSet.State = dsinsert then
    begin
      //Seleccionar un movimiento de logistica para relacionar con la salida

      Try
        if Not CrearConjunto(CdControlLogistica,'alm_controllogistica',ccCatalog) then
          raise InteligentConnection.Create('No se ha podido abrir la tabla de control logistica');
        CargarDatosFiltrados(CdControlLogistica,'estado',['Abierto'],false);
        CdControlLogistica.Open;

        Try
          popupselect := TFrmControlLog.Create(self);
          popupselect.dsDatos.DataSet := CdControlLogistica;
          popupselect.ShowModal;
          if popupselect.Cancelado then
            raise InteligentException.Create('Proceso cancelado por el usuario');

          idcontrollogistica := CdControlLogistica.FieldByName('idcontrollogistica').asinteger;
        Finally
          popupselect.Free;
        End;
      Finally
        EliminarConjunto(CdControlLogistica);
      End;
    end;

    if dsDatos.DataSet.State = dsEdit then
    begin
      //verificar que logistica tenga abierto el documento aun

      if Not CrearConjunto(CdControlLogistica,'alm_controllogisticadetalle',ccCatalog) then
        raise InteligentConnection.Create('No se ha podido abrir la tabla de detalle de control logistica');
      CargarDatosFiltrados(CdControlLogistica,'estadosalida,idsalida',['all',dsDatos.DataSet.FieldByName('idsalida').AsInteger],false);
      CdControlLogistica.Open;
      if CdControlLogistica.RecordCount <> 1 then
      begin
        EliminarConjunto(CdControlLogistica.ProviderName);
        raise InteligentException.Create('No se localizó el documento de movimientos por logística.');
      end;
      if LowerCase(CdControlLogistica.FieldByName('estado').AsString) = 'cerrado' then
        raise InteligentException.Create('El documento de moviento de logistica esta cerrado.');


      lblSerie.Caption := dsDatos.DataSet.FieldByName('serie').AsString;

      edtConsecutivo.Text := dsDatos.DataSet.FieldByName('consecutivo').AsString;

    end;

    if Not CrearConjunto(CdTipo, 'alm_tipomovimiento', ProviderName, ccCatalog) then
      raise InteligentConnection.Create('No se ha podido abrir la tabla de tipo de movimientos');
    // Solicitar solo los movimientos de salida
    CargarDatosFiltrados(cdTipo, 'tipomovimiento,manifiesto', ['SALIDA','S']);
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

    // Cargar la lista de vias de embarque
    CrearConjunto(cdViaEmbarque,'alm_viaembarque',ccCatalog);
    CargarDatosFiltrados(cdViaEmbarque,'activo',['si']);
    cdViaEmbarque.Open;
    cdViaEmbarque.First;
    dsDatos.DataSet.FieldValues['idviaembarque'] := cdViaEmbarque.FieldValues['idviaembarque'];


    tab1.ActivePageIndex := 0;
    CargarFirmantesNuevo;

    ClientModule1.ComponentColor(self); //coloreado de formulario
    ClientModule1.RastrearGrids(self);  // formateo de grid

    CargarCampos;


//    inherited;
    cdDetalle.Close;
    CrearConjunto(cdDetalle, 'alm_salidadetalle', ccupdate); // Traer el detalle en modo de edicion
    CargarDatosFiltrados(cdDetalle,'idsalida',[dsDatos.DataSet.FieldByName('idsalida').AsInteger],false);
    cdDetalle.Open;
    DataSet2MemoryData(cdDetalle,mdDetalle);  // pasar el detalle a un memory data para poder manejarlo de manera local
    mdDetalle.ApplyChanges;
//fin



    if dsdatos.State = dsInsert then
    begin
      dtfecha.DateTime := Now;
      CdTipo.First;
      dsDatos.DataSet.FieldByName('idtipomovimiento').AsInteger := cdTipo.FieldByName('idtipomovimiento').AsInteger;
      dsDatos.DataSet.FieldByName('nombretipomovimiento').AsString := cdTipo.FieldByName('nombretipomovimiento').AsString;
      //cmbTipo.Update;
      lblSerie.Caption := AnsiReplaceStr(CadenaDoc,'{año}','0000');
      lblSerie.Caption := AnsiReplaceStr(lblSerie.Caption,'{consecutivo}',DupeString('0',DigitosDoc));

      edtConsecutivo.Text := '<Auto>';
      edtConsecutivo.Font.Color := clGrayText;
    end;

    cmbTipo.SetFocus;

  except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error de comunicación con el servidor', 'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Proceso cancelado', 'El proceso se ha cancelado debido a lo siguiente:' + #10 + #10 + e.Message, mtInformation, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado','No se ha podido invocar la ventana debido a un error inesperado, informe de esto al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmSalidaManifiestoDetalle.NextDBGrid1CellDblClick(Sender: TObject;
  ACol, ARow: Integer);
begin
  btnEditarDetalle.Click;
end;

procedure TFrmSalidaManifiestoDetalle.NextDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    TNextDBGrid(Sender).SelectCell(2,TNextDBGrid(Sender).SelectedRow,[ssShift],False);
end;

procedure TFrmSalidaManifiestoDetalle.NextDBGrid1SortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
{  TRY
    SortClientDataSet(dsdetalle.DataSet,NextDBGrid1.Columns.Item[acol].FieldName);
    NextDBGrid1.ClearSelection;
  EXCEPT
    ;
  END;    }
end;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
var
  i: Integer;
  NewIndexName: String;
  IndexOptions: TIndexOptions;
  Field: TField;
begin
  Result := False;
  Field := ClientDataSet.Fields.FindField(FieldName);

  if Field = nil then
    Exit;

  if (Field is TObjectField) or (Field is TBlobField) or
  (Field is TAggregateField) or (Field is TVariantField)
  or (Field is TBinaryField) then
    Exit;

  ClientDataSet.IndexDefs.Update;

  if ClientDataSet.IndexName = FieldName + '__IdxA' then
  begin
    NewIndexName := FieldName + '__IdxD';
    IndexOptions := [ixDescending];
  end
  else
  begin
    NewIndexName := FieldName + '__IdxA';
    IndexOptions := [];
  end;

  for i := 0 to Pred(ClientDataSet.IndexDefs.Count) do
  begin
    if ClientDataSet.IndexDefs[i].Name = NewIndexName then
    begin
      Result := True;
      Break
    end;
  end;

  if not Result then
  begin
    ClientDataSet.AddIndex(NewIndexName,
    FieldName, IndexOptions);
    Result := True;
  end;

  ClientDataSet.IndexName := NewIndexName;
end;


procedure TFrmSalidaManifiestoDetalle.NextDBGrid1VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    NextDBGrid1.ClearSelection;
    NextDBGrid1.Repaint;
    NextDBGrid1.Refresh;
  end;
end;

procedure TFrmSalidaManifiestoDetalle.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := Self.Left;
  xTop := Self.Top;
  xWidth := Self.Width;
  xHeight := Self.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left', Existe));
    if Not Existe then xLeft := Self.Left;
  Except
    xLeft := Self.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top', Existe));
    if Not Existe then xTop := Self.Top;
  Except
    xTop := Self.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width', Existe));
    if Not Existe then xWidth := Self.Width;
  Except
    xWidth := Self.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height', Existe));
    if Not Existe then xHeight := Self.Height;
  Except
    xHeight := Self.Height;
  End;

  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Left := xLeft;
  Self.Width := xWidth;
  Self.Top := xTop;
  Self.Height := xHeight;
end;

procedure TFrmSalidaManifiestoDetalle.dsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  InteliDialog.ShowModal('ERROR FATAL','Error en la base de datos',e.Message,mtError,[mbOK],0);
end;

procedure TFrmSalidaManifiestoDetalle.edtConsecutivoEnter(Sender: TObject);
begin
  if edtConsecutivo.Text = '<Auto>' then
  begin
    edtConsecutivo.Text := '';
  end;
end;

procedure TFrmSalidaManifiestoDetalle.edtConsecutivoExit(Sender: TObject);
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

procedure TFrmSalidaManifiestoDetalle.edtConsecutivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  edtConsecutivo.Font.Color := clBlack;
end;

end.
