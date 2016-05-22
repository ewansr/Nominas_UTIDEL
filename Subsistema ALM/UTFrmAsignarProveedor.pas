unit UTFrmAsignarProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBClient, StdCtrls, JvExControls, JvLabel, DBCtrls,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, Mask, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, JvMemoryDataset, Menus, JvMenus,
  AdvMenus, AdvSmoothPopup, AdvShapeButton, AdvOutlookList, JvDataSource,
  xDatabase, AdvSmoothLedLabel, AdvSmoothStatusIndicator, AdvSmoothLabel,
  AdvSmoothPanel, Grids, DBGrids;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmAsignarProveedor = class(TForm)
    pnlTop: TPanel;
    pnlGeneral: TPanel;
    pnlBotones: TPanel;
    pnlDetalle: TPanel;
    cdDatos: TClientDataSet;
    cdDetalle: TClientDataSet;
    dsDetalle: TDataSource;
    lbl1: TJvLabel;
    dsDatos: TDataSource;
    JvLabel3: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    cdCompradores: TClientDataSet;
    dsCompradores: TDataSource;
    lbl4: TJvLabel;
    lblSerie: TJvLabel;
    lblReferencia: TJvLabel;
    lblFecha: TJvLabel;
    lblFechaReq: TJvLabel;
    lblCiudad: TJvLabel;
    lblComentarios: TJvLabel;
    grpComentario: TGroupBox;
    grdDetalle: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    mdDetalle: TJvMemoryData;
    popCompradores: TPopupMenu;
    NxDBNumberColumn2: TNxDBNumberColumn;
    BtnRec: TAdvShapeButton;
    edtCodigoProv: TEdit;
    btnBuscaProv: TButton;
    lblProveedor: TJvLabel;
    mdProveedores: TJvMemoryData;
    dsProveedores: TJvDataSource;
    grdProveedores: TNextDBGrid;
    NxDBTextColumn2: TNxDBTextColumn;
    btnAgregar: TButton;
    btnQuitarProv: TButton;
    btnSiguiente: TButton;
    Pagina1: TPanel;
    Pagina2: TPanel;
    btnAnterior: TButton;
    grdProveedores2: TNextDBGrid;
    NxDBTextColumn3: TNxDBTextColumn;
    mdCotizacion: TJvMemoryData;
    mdCotizacionGrid: TJvMemoryData;
    dsCotizacionGrid: TDataSource;
    grdCotizacion: TNextDBGrid;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBCheckBoxColumn1: TNxDBCheckBoxColumn;
    BtnClose: TAdvShapeButton;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel1: TJvLabel;
    pnlInfo: TAdvSmoothPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    dsproveee: TDataSource;
    procedure FormShow(Sender: TObject);
    //procedure btnAsignarClick(Sender: TObject);
    procedure btnBuscaProvClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure edtCodigoProvKeyPress(Sender: TObject; var Key: Char);
    procedure btnQuitarProvClick(Sender: TObject);
    procedure btnSiguienteClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure mdProveedoresAfterScroll(DataSet: TDataSet);
    procedure mdProveedoresBeforeScroll(DataSet: TDataSet);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure grdProveedoresCellFormating(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure cdReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormCreate(Sender: TObject);
    procedure grdDetalleVerticalScroll(Sender: TObject; Position: Integer);
    procedure grdDetalleSortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure grdDetalleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdProveedores2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdCotizacionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdProveedores2SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure grdCotizacionSortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure grdCotizacionVerticalScroll(Sender: TObject; Position: Integer);
    procedure grdProveedores2VerticalScroll(Sender: TObject; Position: Integer);
  private
    { Private declarations }
    //compradores: Array of integer;  // por el momento truquear el guardado del campo idcomprador
    proveedor: TLista;
    Error: Boolean;
    CadenaDoc: string;
    DigitosDoc: integer;
    procedure popupItemClick(Sender: TObject);
    procedure BuscarProveedor;
    procedure FiltraCotizacion;
    procedure RespaldarCotizacion;
  public
    { Public declarations }
  end;

var
  FrmAsignarProveedor: TFrmAsignarProveedor;

implementation

uses
  ClientModuleUnit1, UInteliDialog, UTFrmProveedores, StrUtils, alm_genericclasses;

{$R *.dfm}

procedure TFrmAsignarProveedor.popupItemClick(Sender: TObject);
begin
  mdDetalle.Edit;
  mdDetalle.FieldByName('idcomprador').AsInteger := TMenuItem(Sender).Tag;
  //compradores[mdDetalle.RecNo - 1] := TMenuItem(Sender).Tag;
  mdDetalle.FieldByName('nombre').AsString := TMenuItem(Sender).Caption;
  mdDetalle.Post;
end;



procedure TFrmAsignarProveedor.btnAgregarClick(Sender: TObject);
begin
  if assigned(Proveedor) then
  begin
    // Primero checar si ya existe en la lista
    if mdProveedores.Locate('idproveedor',proveedor['idproveedor'],[]) then
      InteliDialog.ShowModal('Aviso','Proveedor ya se encuentra en la lista',
        'El proveedor que intenta agregar ya se encuentra actualmente en la lista',
        mtError,[mbOK],0)
    else
    begin
      mdProveedores.Append;
      mdProveedores.FieldByName('idproveedor').AsInteger := proveedor['idproveedor'];
      mdProveedores.FieldByName('razonsocial').AsString := proveedor['razonsocial'];
      mdProveedores.FieldByName('idcotizacion').AsInteger := 0;
      mdProveedores.FieldByName('estado').AsString := 'nuevo';
      mdProveedores.Post;
      grdProveedores.Refresh;

      //Crear las partidas que iran en la cotizacion
      cdDetalle.First;
      while not cdDetalle.eof do
      begin
        mdCotizacion.Append;
        mdCotizacion.FieldByName('idproveedor').AsInteger := proveedor['idproveedor'];
        mdCotizacion.FieldByName('idsolicituddetalle').AsInteger := cdDetalle.FieldByName('idsolicituddetalle').AsInteger;
        mdCotizacion.FieldByName('tituloarticulo').AsString := cdDetalle.FieldByName('tituloarticulo').AsString;
        mdCotizacion.FieldByName('asignado').asString := 'no';
        mdCotizacion.Post;
        cdDetalle.Next;
      end;
    end;
  end
  else
  begin
    InteliDialog.ShowModal('Aviso','Proveedor no valido',
      'Indique un proveedor valido antes de intentar agregar.',
      mtError,[mbOK],0)
  end;
  edtCodigoProv.Text := '';
  edtCodigoProv.SetFocus;
end;

procedure TFrmAsignarProveedor.btnAnteriorClick(Sender: TObject);
begin
  RespaldarCotizacion;
  Pagina2.Visible := false;
  Pagina1.Visible := true;
  btnRec.Visible := pagina2.Visible;
  mdCotizacion.Filtered := false;
end;

procedure TFrmAsignarProveedor.btnBuscaProvClick(Sender: TObject);
begin
  BuscarProveedor;
end;

procedure TFrmAsignarProveedor.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmAsignarProveedor.BuscarProveedor;
Var
  cdProveedores: TClientDataSet;
  NameProvider: String;
  form: TFrmProveedores;
begin
  if trim(edtCodigoProv.Text) <> '' then
  begin
    cdProveedores := TClientDataSet.Create(nil);
    CrearConjunto(cdProveedores,'alm_proveedor',NameProvider,ccSelect);
    CargarDatosFiltrados(cdProveedores,'codigoproveedor,activo',[trim(edtCodigoProv.Text) + '%','si']);
    cdProveedores.Open;
    if cdProveedores.RecordCount = 1 then
    begin
      cdProveedores.First;
      lblProveedor.Caption := cdProveedores.FieldByName('razonsocial').AsString;
      Proveedor := GetCurrentRecord(cdProveedores);
    end
    else
    begin
      form := TFrmProveedores.Create(nil);
      Proveedor := form.SeleccionarItem;
      form.Free;
    end;
    cdProveedores.Close;
    EliminarConjunto(cdProveedores.ProviderName);
    cdProveedores.Free;
  end
  else
  begin
    form := TFrmProveedores.Create(nil);
    Proveedor := form.SeleccionarItem;
    form.Free;
  end;
  if assigned(Proveedor) then
  begin
    edtCodigoProv.Text := Proveedor['codigoproveedor'];
    lblProveedor.Caption := Proveedor['razonsocial'];
    btnAgregar.SetFocus;
  end;
end;

procedure TFrmAsignarProveedor.cdReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  InteliDialog.ShowModal('ERROR FATAL','El sistema ha generado un error al intentar acceder a la base de datos.',
                        'El sistema ha generado un error al intentar leer o escribir a la base de datos:' + #10 +
                        e.Message,mtError,[mbOK],0);
  Error := True;
end;

procedure TFrmAsignarProveedor.edtCodigoProvKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    BuscarProveedor;
end;

procedure TFrmAsignarProveedor.btnQuitarProvClick(Sender: TObject);
var
  idProveedor: integer;
begin
  if not mdProveedores.Eof then
  begin
    if mdProveedores.FieldByName('idcotizacion').AsInteger > 0 then
    begin
      InteliDialog.ShowModal('ATENCIÓN','Ya existe una cotización generada para este proveedor.',
        'Si requiere cancelar la cotización de este proveedor, vaya a la pantalla de listado de cotizaciones' + #10
          + 'y cancelela desde ahí.',
        mtInformation,[mbOK],0);
        Exit;
    end;
    if InteliDialog.ShowModal('ATENCIÓN','¿Quitar el proveedor seleccionado de la lista?','',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      idProveedor := mdProveedores.FieldByName('idproveedor').AsInteger;
      mdProveedores.Delete;
      //Quitar los datos para las cotizaciones
      mdCotizacion.Filter := format('idproveedor = %d',[idProveedor]);
      mdCotizacion.Filtered := true;
      mdCotizacion.First;
      while not mdCotizacion.eof do
      begin
        mdCotizacion.Delete;
        mdCotizacion.First;
      end;
      mdCotizacion.Filtered := false;
  end
  else
    InteliDialog.ShowModal('Error','Nada seleccionado',
    'Ningún registro ha sido seleccionado.' + #10 + 'No se ha borrado nada.',
    mtError,[mbOK],0);
end;

procedure TFrmAsignarProveedor.BtnRecClick(Sender: TObject);
var
  cdSolProv, cdProv: TClientDataSet;
  cdCot, cdCotDetalle: TClientDataSet;
  NameProvider: string;
  ListaErrores: String;
  CotizacionesNuevas,
  CotizacionesMod: TStringList;
  idCotizacion: integer;
  dia,mes,anio: word;
  formatoSerie: String;
  i: integer;
  nuevo: Boolean;
begin
  RespaldarCotizacion;
  DecodeDate(now,anio,mes,dia);
  //formatoSerie := AnsiReplaceStr(CadenaDoc,'{año}',inttostr(anio));
  //formatoSerie := AnsiReplaceStr(FormatoSerie,'{consecutivo}','{consecutivo:' + inttostr(DigitosDoc) + '}');
  formatoSerie := GetSerie(CadenaDoc,anio,DigitosDoc);

  if InteliDialog.ShowModal('Confirmación','¿Desea generar las cotizaciones correspondientes?',
            '',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    try
      cdProv := TClientDataSet.Create(self);
      CrearConjunto(cdProv,'alm_proveedor',ccCatalog);
      // Generar las cotizaciones filtrando las cotizadas ya que esas nunca se modifican,
      // pero se muestran para información
      mdProveedores.Filtered := False;
      mdProveedores.Filter := '(estado = ''generado'') or (estado = ''nuevo'')';
      mdProveedores.Filtered := True;
      CotizacionesNuevas := TStringList.Create;
      CotizacionesMod := TStringList.Create;
      mdProveedores.First;
      while not mdProveedores.eof do
      begin
        // Verificar si se asignaron partidas para ese proveedor
        mdCotizacion.Filtered := false;
        mdCotizacion.Filter := format('idproveedor = %d',
            [mdProveedores.FieldByName('idproveedor').AsInteger]);
        mdCotizacion.Filtered := true;
        i := 0;
        mdCotizacion.First;
        while not mdCotizacion.eof do
        begin
          if mdCotizacion.FieldByName('asignado').AsString = 'si' then
            inc(i);
          mdCotizacion.Next;
        end;
        if (i > 0) or (mdProveedores.FieldByName('idcotizacion').AsInteger > 0) then
        begin
          cdCot := TClientDataSet.Create(nil);
          cdCot.OnReconcileError := cdReconcileError;
          cdCotDetalle := TClientDataSet.Create(nil);
          cdCotDetalle.OnReconcileError := cdReconcileError;
          CrearConjunto(cdCot,'alm_cotizacion',NameProvider,ccUpdate);
          CargarDatosFiltrados(cdCot,'idcotizacion',[mdProveedores.FieldByName('idcotizacion').AsInteger]);
          cdCot.Open;
          nuevo := (cdCot.RecordCount = 0);
          if nuevo then
          begin
            cdCot.Append;
            cdCot.FieldValues['serie'] := formatoSerie;
            cdCot.FieldByName('vigencia').AsDateTime := Now;
            cdCot.FieldValues['consecutivo'] := 0;
           // cdCot.FieldValues['comentarios'] := cdDatos.FieldValues['comentarios'];
            cdCot.FieldValues['referencia'] := cdDatos.FieldValues['referencia'];
          end
          else
            cdCot.Edit;
          cdCot.FieldValues['idCotizacion'] := mdProveedores.FieldByName('idcotizacion').AsInteger;
          cdCot.FieldValues['idsolicitud'] := cdDatos.FieldValues['idsolicitud'];
          cdCot.FieldValues['idorganizacion'] := cdDatos.FieldValues['idorganizacion'];
          cdCot.FieldValues['idciudad'] := cdDatos.FieldValues['idciudad'];
          cdCot.FieldValues['titulociudad'] := cdDatos.FieldValues['titulociudad'];
          cdCot.FieldValues['tituloestado'] := cdDatos.FieldValues['tituloestado'];
          cdCot.FieldValues['titulopais'] := cdDatos.FieldValues['titulopais'];
          cdCot.FieldValues['idProveedor'] := mdProveedores.FieldValues['idproveedor'];
          cdCot.FieldValues['razonsocial'] := mdProveedores.FieldValues['razonsocial'];
          cdCot.FieldValues['fecha'] := now;
          cdCot.FieldValues['periodo'] := anio;
          cdCot.FieldByName('gravamen').AsString := 'NETO';
          cdCot.FieldValues['idusuario'] := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;

          //datos de seguridad
          CargarDatosFiltrados(cdProv,'idproveedor',[mdProveedores.FieldByName('idproveedor').AsInteger]);
          cdProv.Open;
          cdCot.FieldValues['nombrecrea'] := ClientModule1.cdUsuario.FieldValues['nombreusuario'];
          cdCot.FieldValues['cargocrea']  := ClientModule1.cdUsuario.FieldValues['titulocargo'];
          cdCot.FieldValues['tituloempresa'] := ClientModule1.cdOrganizacion.FieldValues['tituloorganizacion'];
          cdCot.FieldValues['facturado'] := ClientModule1.cdOrganizacion.FieldValues['tituloorganizacion'];
          cdCot.FieldValues['codigoconvenio'] := cdDatos.FieldValues['codigoconvenio'];
          cdCot.FieldValues['tituloconvenio'] := cdDatos.FieldValues['tituloconvenio'];
          cdCot.FieldValues['domiciliofiscal'] := ClientModule1.cdOrganizacion.FieldValues['domiciliofiscalorg'];
          cdCot.FieldValues['rfcpropio'] := ClientModule1.cdOrganizacion.FieldValues['rfc'];;
          cdCot.FieldValues['contacto'] := cdProv.FieldValues['contacto'];
          cdCot.FieldValues['contactocargo'] := cdProv.FieldValues['contactopuesto'];
          cdCot.FieldValues['domiciliocontacto'] := cdProv.FieldValues['domicilio'];
          cdCot.FieldValues['contactotelefono'] := cdProv.FieldValues['contactotelefono'];;
          cdCot.FieldValues['codigoproveedor'] := cdProv.FieldValues['codigoproveedor'];
          cdCot.FieldValues['telefonopropio'] :=  ClientModule1.cdOrganizacion.FieldValues['telefono1'];
          cdProv.Close;

          // si ya existe una cotización y ahora se quitan todos los detalles para ese proveedor
          // marcarl la cotización como cancelada
          if (i=0) and (mdProveedores.FieldByName('idcotizacion').AsInteger > 0) then
            cdCot.FieldValues['estado'] := 'cancelado'
          else
            cdCot.FieldValues['estado'] := 'generado';
          cdCot.FieldValues['firmaid'] := '';
          cdCot.FieldValues['firmatitulo'] := '';
          cdCot.FieldValues['firmanombre'] := '';
          cdCot.FieldValues['firmapuesto'] := '';
          cdCot.FieldValues['firmadepto'] := '';
          cdCot.Post;
          Error := False;
          cdCot.ApplyUpdates(-9);
          if Error then Exit;

          if nuevo then
            idCotizacion := UltimoId
          else
            idCotizacion := mdProveedores.FieldByName('idcotizacion').AsInteger;

          // obtener la serie del documento
          if Nuevo then
          begin
            CargarDatosFiltrados(cdCot,'idcotizacion',[idCotizacion]);
            cdCot.Refresh;
            CotizacionesNuevas.Add(' ' + cdCot.FieldByName('serie').AsString);
          end
          else
            CotizacionesMod.Add(' ' + cdCot.FieldByName('serie').AsString);

            
          // Crear y guardar detalle
          NameProvider := '';
          CrearConjunto(cdCotDetalle,'alm_cotizaciondetalle',NameProvider,ccUpdate);
          CargarDatosFiltrados(cdCotDetalle,'idcotizacion',[idCotizacion]);
          cdCotDetalle.Open;
          // Borrar todos los detalles anteriores para regenerarlos de nuevo
          cdCotDetalle.First;
          while not cdCotDetalle.eof do
          begin
            cdCotDetalle.Delete;
            cdCotDetalle.ApplyUpdates(-9);
            cdCotDetalle.First;
          end;

          mdCotizacion.First;
          while not mdCotizacion.eof do
          begin
            if mdCotizacion.FieldByName('asignado').AsString = 'si' then
            begin
              cdCotDetalle.Append;
              // buscar la partida correspondiente de la solicitud para tomar los
              // detalles de ahí
              cdDetalle.Locate('idsolicituddetalle',mdCotizacion.FieldByName('idsolicituddetalle').AsInteger,[]);
              cdCotDetalle.FieldValues['idcotizaciondetalle'] := 0;
              cdCotDetalle.FieldValues['idcotizacion'] := idCotizacion;
              cdCotDetalle.FieldValues['idsolicituddetalle'] := cdDetalle.FieldValues['idsolicituddetalle'];
              cdCotDetalle.FieldValues['idarticulo'] := cdDetalle.FieldValues['idarticulo'];
              cdCotDetalle.FieldValues['codigoarticulo'] := cdDetalle.FieldValues['codigoarticulo'];
              cdCotDetalle.FieldValues['tituloarticulo'] := cdDetalle.FieldValues['tituloarticulo'];
              cdCotDetalle.FieldValues['codigounidad'] := cdDetalle.FieldValues['codigounidad'];
              cdCotDetalle.FieldValues['titulodisciplina'] := cdDetalle.FieldValues['titulodisciplina'];
              cdCotDetalle.FieldValues['cantidad'] := cdDetalle.FieldValues['cantidadvalidada'];
              cdCotDetalle.FieldValues['fecharequerida'] := cdDetalle.FieldValues['fecharequerida'];
              cdCotDetalle.FieldValues['observaciones'] := cdDetalle.FieldValues['observaciones'];
              cdCotDetalle.FieldValues['descripcionarticulo'] := cdDetalle.FieldValues['descripcionarticulo'];
              cdCotDetalle.FieldByName('vigenciad').AsDateTime := now;
              cdCotDetalle.Post;
              cdCotDetalle.ApplyUpdates(-9);
            end;
            mdCotizacion.Next;
          end;

          cdCot.Close;
          EliminarConjunto(cdCot.Providername);
          cdCot.Free;
          cdCotDetalle.Close;
          EliminarConjunto(cdCotDetalle.Providername);
          cdCotDetalle.Free;
        end;
        mdProveedores.next;
      end;
      EliminarConjunto(cdProv);
      CotizacionesNuevas.Delimiter := ',';
      if CotizacionesNuevas.Count > 0 then
      begin
        InteliDialog.ShowModal('CONFIRMACIÓN','La información se ha guardado correctamente.',
                            format('Se han generado %d cotizaciones:%s%s',
                              [CotizacionesNuevas.Count,#10,CotizacionesNuevas.DelimitedText]),
                            mtInformation,[mbOK],0);
        close;
      end
      else
        if CotizacionesMod.Count = 0 then
          InteliDialog.ShowModal('INFORMACIÓN','No se ha generado ninguna cotización',
                            'No se han indicado datos suficientes para crear cotizaciones validas.' + #10
                              + 'Verifique e intente nuevamente',
                            mtInformation,[mbOK],0)
        else
        begin
          InteliDialog.ShowModal('INFORMACIÓN','No se ha generado ninguna cotización nueva,' +
                            'pero se han modificado las siguintes cotizaciones:' + #10 +
                            CotizacionesMod.DelimitedText,
                            '',
                            mtInformation,[mbOK],0);
          Close;
        end;
    except
      on e: exception do
        InteliDialog.ShowModal('ERROR FATAL','El sistema ha generado un error al intentar generar las cotizaciones',
                             'El sistema ha generado el siguiente error:' + #10 + e.Message,
                             mtError,[mbOK],0);
    end;
    mdProveedores.Filtered := False;
  end;
end;

procedure TFrmAsignarProveedor.btnSiguienteClick(Sender: TObject);
begin
  FiltraCotizacion;
  Pagina1.Visible := false;
  Pagina2.Visible := true;
  btnRec.Visible := pagina2.Visible;
  mdProveedores.First;
  grdProveedores2.SetFocus;
end;

procedure TFrmAsignarProveedor.FormCreate(Sender: TObject);
Var
  cdDocSerie: TClientDataSet;
  ProviderName: string;
  Documento: string;
begin
  // Cargar la plantilla para generar la serie de los documentos
  // Primero cargar algun formato por default
  CadenaDoc := '{codigo}-{consecutivo}/{año}';
  DigitosDoc := 5;
  Documento := 'COTIZACION';
    cdDocSerie := TClientDataSet.Create(nil);
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

procedure TFrmAsignarProveedor.FormShow(Sender: TObject);
Var
  NameProvider: String;
  Field: TField;
  j: integer;
  reg: TLista;
  mnuItem: TMenuItem;
  cdCotizaciones: TClientDataSet;
  lstCotizaciones: TLista;
begin
  ClientModule1.ComponentColor(Self);
  // Poner los datos del encabezado
  lblSerie.Caption := cdDatos.FieldByName('serie').AsString;
  lblFecha.Caption := cdDatos.FieldByName('Fecha').AsString;
  lblFechaReq.Caption := cdDatos.FieldByName('fecharequerida').AsString;
  lblCiudad.Caption := cdDatos.FieldByName('codigociudad').AsString + ' - ' +
                       cdDatos.FieldByName('titulociudad').AsString;
  lblComentarios.Caption := cdDatos.FieldByName('comentarios').AsString;


  // Cargar los detalles del documento
  CrearConjunto(cdDetalle,'alm_solicituddetalle',NameProvider,ccSelect);
  //estas lineas estaban comentadas pero les quite el comentario porq era necesario
  CargarDatosFiltrados(cdDetalle,'idSolicitud,idcomprador',
  [cdDatos.FieldByName('idsolicitud').Asinteger
   ,ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger]);


 { CargarDatosFiltrados(cdDetalle,'idSolicitud',
  [cdDatos.FieldByName('idsolicitud').Asinteger]); }

  cdDetalle.ReadOnly := false;
  cdDetalle.Open;
  if cdDetalle.RecordCount = 0 then  // si no hay registros para el usuario actual
  begin
    pnlInfo.Visible := true;
    pagina1.Enabled := false;
    pagina2.Enabled := false;
    btnRec.Visible := false;
  end;
  mdDetalle.LoadFromDataSet(cdDetalle,cdDetalle.RecordCount,JvMemoryDataset.lmCopy,true);
  mdDetalle.FieldByName('nombre').ReadOnly := false;
  // debido a que no se pudo generar desde la consulta la concatenación del
  // nombre sin que esto de problemas en la aplicación, concatenar aquí
  mdDetalle.First;
  while not mdDetalle.eof do
  begin
    mdDetalle.Edit;
    mdDetalle.FieldByName('nombre').AsString := mdDetalle.FieldByName('nombre').AsString + ' ' + mdDetalle.FieldByName('apellidos').AsString;
    mdDetalle.Post;
    mdDetalle.Next;
  end;
  mdDetalle.First;

  // Traerme todas las cotizaciones en estado generado que ya existan para esta
  // solicitud
  cdCotizaciones := TClientDataSet.Create(nil);
  CrearConjunto(cdCotizaciones,'alm_cotizaciondetalle',NameProvider,ccSelect);
  CargarDatosFiltrados(cdCotizaciones,'idsolicitud',[cdDatos.FieldByName('idsolicitud').Asinteger]);
  cdCotizaciones.Open;


  // Llenar la lista de proveedores
  cdCotizaciones.First;
  while not cdCotizaciones.eof do
  begin
    if not mdProveedores.Locate('idproveedor',cdCotizaciones.FieldByName('idproveedor').AsInteger,[]) then
    begin
      mdProveedores.Append;
      mdProveedores.FieldByName('idproveedor').AsInteger := cdCotizaciones.FieldByName('idproveedor').AsInteger;
      mdProveedores.FieldByName('razonsocial').AsString := cdCotizaciones.FieldByName('razonsocial').AsString;
      mdProveedores.FieldByName('idcotizacion').AsInteger := cdCotizaciones.FieldByName('idcotizacion').AsInteger;
      mdProveedores.FieldByName('estado').AsString := cdCotizaciones.FieldByName('estado').AsString;
      mdProveedores.Post;
    end;
    cdCotizaciones.Next;
  end;

  mdProveedores.First;
  while not mdProveedores.Eof do
  begin
    // Crear las partidas de la cotizacion
    cdDetalle.First;
    while not cdDetalle.eof do
    begin
      mdCotizacion.Append;
      // Checar si existe en alguna cotizacion
      mdCotizacion.FieldByName('idproveedor').AsInteger := mdProveedores.FieldByName('idproveedor').AsInteger;
      mdCotizacion.FieldByName('idsolicituddetalle').AsInteger := cdDetalle.FieldByName('idsolicituddetalle').AsInteger;
      mdCotizacion.FieldByName('tituloarticulo').AsString := cdDetalle.FieldByName('tituloarticulo').AsString;
      mdCotizacion.FieldByName('idcotizacion').asInteger := mdProveedores.FieldByName('idcotizacion').AsInteger;
      if cdCotizaciones.Locate('idproveedor;idsolicituddetalle',
        VarArrayOf([mdProveedores.FieldByName('idproveedor').AsInteger
          ,cdDetalle.FieldByName('idsolicituddetalle').AsInteger]),[]) then
        mdCotizacion.FieldByName('asignado').asString := 'si'
      else
        mdCotizacion.FieldByName('asignado').asString := 'no';
      mdCotizacion.Post;
      cdDetalle.Next;
    end;
    mdProveedores.Next;
  end;

  cdCotizaciones.Close;
  EliminarConjunto(cdCotizaciones.ProviderName);
  cdCotizaciones.Free;

end;

procedure TFrmAsignarProveedor.grdCotizacionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    grdCotizacion.SelectCell(1,grdCotizacion.SelectedRow,[ssShift],False);
end;

procedure TFrmAsignarProveedor.grdCotizacionSortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
  {TRY
    SortClientDataSet(dsCotizacionGrid.dataset,grdCotizacion.Columns.Item[acol].FieldName);
    grdCotizacion.ClearSelection;
  EXCEPT
    ;
  END; }
end;

procedure TFrmAsignarProveedor.grdCotizacionVerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    grdCotizacion.ClearSelection;
    grdCotizacion.Repaint;
    grdCotizacion.Refresh;
  end;
end;

procedure TFrmAsignarProveedor.grdDetalleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    grdDetalle.SelectCell(2,grdDetalle.SelectedRow,[ssShift],False);

end;

procedure TFrmAsignarProveedor.grdDetalleSortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
 { TRY
    SortClientDataSet(dsDetalle.DataSet,grdDetalle.Columns.Item[acol].FieldName);
    grdDetalle.ClearSelection;
  EXCEPT
    ;
  END;}
end;

procedure TFrmAsignarProveedor.grdDetalleVerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    grdDetalle.ClearSelection;
    grdDetalle.Repaint;
    grdDetalle.Refresh;
  end;
end;

procedure TFrmAsignarProveedor.grdProveedores2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    grdProveedores2.SelectCell(1,grdProveedores2.SelectedRow,[ssShift],False);

end;

procedure TFrmAsignarProveedor.grdProveedores2SortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
{  TRY
    SortClientDataSet(dsproveedores.dataset,grdProveedores2.Columns.Item[acol].FieldName);
    grdProveedores2.ClearSelection;
  EXCEPT
    ;
  END; }
end;

procedure TFrmAsignarProveedor.grdProveedores2VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    grdProveedores2.ClearSelection;
    grdProveedores2.Repaint;
    grdProveedores2.Refresh;
  end;
end;

procedure TFrmAsignarProveedor.grdProveedoresCellFormating(Sender: TObject;
  ACol, ARow: Integer; Value: WideString; var TextColor: TColor;
  var FontStyle: TFontStyles; CellState: TCellState);
var
  Estado: string;
begin
  Estado := mdProveedores.FieldByName('estado').AsString;
  if Estado = 'generado' then
    TextColor := clGreen
  else if Estado = 'cotizado' then
    TextColor := clRed
  else 
    TextColor := clBlack;
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

procedure TFrmAsignarProveedor.mdProveedoresAfterScroll(DataSet: TDataSet);
begin
  if Pagina2.Visible then
    FiltraCotizacion;
end;

procedure TFrmAsignarProveedor.mdProveedoresBeforeScroll(DataSet: TDataSet);
begin
  if Pagina2.Visible then
    RespaldarCotizacion;
end;

procedure TFrmAsignarProveedor.FiltraCotizacion;
Var
  idProveedor: integer;
begin
  idProveedor := mdProveedores.FieldByName('idproveedor').AsInteger;
  //Quitar los datos para las cotizaciones
  mdCotizacion.Filtered := false;
  mdCotizacion.Filter := format('idproveedor = %d',[idProveedor]);
  mdCotizacion.Filtered := true;
  mdCotizacion.First;
  while not mdCotizacion.eof do
  begin
    mdCotizacionGrid.Append;
    mdCotizacionGrid.FieldValues['idproveedor'] := mdCotizacion.FieldValues['idproveedor'];
    mdCotizacionGrid.FieldValues['idsolicituddetalle'] := mdCotizacion.FieldValues['idsolicituddetalle'];
    mdCotizacionGrid.FieldValues['tituloarticulo'] := mdCotizacion.FieldValues['tituloarticulo'];
    mdCotizacionGrid.FieldValues['asignado'] := mdCotizacion.FieldValues['asignado'];
    mdCotizacionGrid.Post;
    mdCotizacion.Next;
  end;
  // si ya existe una cotización cotizada por el proveedor, ya no tiene sentido modificarla
  grdCotizacion.ReadOnly := mdProveedores.FieldByName('Estado').AsString = 'cotizado';

  grdCotizacion.Refresh;
end;

procedure TFrmAsignarProveedor.RespaldarCotizacion;
Var
  idProveedor: integer;
begin
  idProveedor := mdProveedores.FieldByName('idproveedor').AsInteger;
  mdCotizacionGrid.First;
  while not mdCotizacionGrid.eof do
  begin
    mdCotizacion.Locate('idproveedor;idsolicituddetalle',
    VarArrayOf([mdCotizacionGrid.FieldByName('idproveedor').AsInteger,mdCotizacionGrid.FieldByName('idsolicituddetalle').AsInteger]),[]);
    mdCotizacion.Edit;
    mdCotizacion.FieldByName('asignado').AsString := mdCotizacionGrid.FieldByName('asignado').AsString;
    mdCotizacion.Post;
    mdCotizacionGrid.Delete;
    mdCotizacionGrid.First;
  end;
end;

end.
