unit UTFrmSalidaManifiesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, AdvCombo, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, AdvEdit, AdvOfficeButtons, Buttons, PngSpeedButton,
  JvExControls, JvLabel, ComCtrls, AdvShapeButton, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls,
  UInteliDialog, ExportaExcel, frxClass, frxDBSet, Grids, DBGrids,URegistro;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmSalidaManifiesto = class(TForm)
    PanelPrincipal: TPanel;
    DBGridPrincipal: TNextDBGrid;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    PanelAdd: TPanel;
    BtnAdd: TAdvShapeButton;
    PanelEdit: TPanel;
    BtnEdit: TAdvShapeButton;
    PanelDelete: TPanel;
    BtnDelete: TAdvShapeButton;
    PanelRefresh: TPanel;
    BtnRefresh: TAdvShapeButton;
    PanelPrint: TPanel;
    BtnPrint: TAdvShapeButton;
    PanelExport: TPanel;
    BtnExport: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    pnlProgress: TPanel;
    lblProgress: TLabel;
    pbProgress: TProgressBar;
    PanelFiltro: TPanel;
    LbFiltros: TJvLabel;
    btnfn1: TPngSpeedButton;
    GroupBoxFiltro: TGroupBox;
    BtnSearch: TAdvShapeButton;
    chkUsuario: TAdvOfficeCheckBox;
    edtFiltroFolio: TAdvEdit;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    cmbFiltroEstado: TAdvComboBox;
    dsDatos: TDataSource;
    cdDatos: TClientDataSet;
    frdsSalidasDetalle: TfrxDBDataset;
    dsSalidas: TDataSource;
    frdsSalidas: TfrxDBDataset;
    cdSalidasRp: TClientDataSet;
    cdSalidasDetalleRp: TClientDataSet;
    frxReport1: TfrxReport;
    cdDatosDetalle: TClientDataSet;
    FrxEntradaDetalle: TfrxDBDataset;
    EditFReferencia: TAdvEdit;
    NxDBTextColumn5: TNxDBTextColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridPrincipalCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure DBGridPrincipalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridPrincipalSortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure DBGridPrincipalVerticalScroll(Sender: TObject; Position: Integer);
    procedure edtFiltroFolioKeyPress(Sender: TObject; var Key: Char);
    procedure cmbFiltroEstadoChange(Sender: TObject);
  private
    { Private declarations }
    modulopantalla: string;
    procedure AccedeACoordenadas;
  public
    { Public declarations }
    ModoSeleccion: Boolean;
  end;

var
  FrmSalidaManifiesto: TFrmSalidaManifiesto;

implementation

uses ClientModuleUnit1, UTFrmSalidaManifiestoDetalle, Unit2;

{$R *.dfm}

procedure TFrmSalidaManifiesto.BtnAddClick(Sender: TObject);
Var
  cdTipo: TClientDataSet;
  Cuantos: Integer;

  cdUpt: TClientDataSet;
  popUp: Tfrmsalidamanifiestodetalle;
begin
  try
    if not ClientModule1.LeePermisos(ModuloPantalla,'AGREGAR') then
      Exit;

    cdTipo := TClientDataSet.Create(nil);
    if not CrearConjunto(CdTipo, 'alm_tipomovimiento', ccCatalog)then
        raise InteligentConnection.Create('No se ha podido abrir la tabla de tipo de movimiento');

    // Solicitar solo los movimientos de salida
    CargarDatosFiltrados(cdTipo, 'tipomovimiento,manifiesto', ['SALIDA','S']);
    cdTipo.Open;
    Cuantos := CdTipo.RecordCount;
    cdTipo.Close;
    EliminarConjunto(cdTipo);
    cdTipo.Free;

    // si no hay tipos de movimientos de salida, salir
    if (Cuantos = 0) then
      InteliDialog.ShowModal('ERROR','No existen conceptos de salida con manifiesto definidos','',mtError,[mbOK],0)
    else

    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
    Try
      CrearConjunto(cdUpt,'alm_salida', ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idsalida', [-9]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 0 then
      begin
        popUp := Tfrmsalidamanifiestodetalle.Create(nil);
        cdUpt.Append;
        cdUpt.FieldByName('idsalida').AsInteger := 0;
        cdUpt.FieldByName('fecha').AsDateTime := now;
        cdUpt.FieldByName('tipoembarque').AsString := 'EMBARQUE';
        popUp.dsDatos.DataSet := cdUpt;
        popup.Caption := self.Caption;
        popUp.ShowModal;
        BtnRefresh.Click;

      end
      else
      begin
        raise InteligentException.Create('Error al localizar la salida');
      end;
    Finally
      EliminarConjunto(cdUpt);
      popUp.Free;
    End;


  except
    on e:Exception do
      InteliDialog.ShowModal('No se ha podido generar el movimiento', 'debido a lo siguiente: ' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    on e:InteligentException do
      InteliDialog.ShowModal('No se ha podido generar el movimiento', 'debido a lo siguiente: ' + #10 + #10 + e.Message, mtError, [mbOk], 0);

  end;
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

procedure TFrmSalidaManifiesto.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmSalidaManifiesto.BtnDeleteClick(Sender: TObject);
var
  providerNameUpt: String;
  cdUpt: TClientDataSet;
 ultimo, actual, primero, iItem : Integer ;
 eliminado: Boolean;
begin
  try
    // Validar si es un registro valido
    if cdDatos.eof then
      Raise Exception.Create('Nada que cancelar.');

    Eliminado := False;
    if CdDatos.State <> dsBrowse then
      Exit;
    if DbGridPrincipal.SelectedCount > 0 Then
    begin
      if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
        Exit;
      cdUpt := TClientDataSet.Create(Nil);
      cdUpt.RemoteServer := cdDatos.RemoteServer;
      CrearConjunto(cdUpt, 'alm_salida',  ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idsalida', [-1]);
      cdUpt.Open;
      ultimo := DbGridPrincipal.SelectedRow;
      Primero := ultimo - (DbGridPrincipal.SelectedCount-1);
      for iItem := 0 To DbGridPrincipal.SelectedCount - 1 do
      begin
        DbGridPrincipal.SelectCell(2,primero,[ssShift],False);
        CargarDatosFiltrados(cdUpt, 'idsalida', [cdDatos.FieldByName('idsalida').AsInteger]);
        cdUpt.Refresh;
      if InteliDialog.ShowModal('Desea cancelar el documento '+CdUpt.FieldByName('serie').AsString+'?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
      begin
          if cdUpt.RecordCount = 1 then
          begin
            cdUpt.Edit;
            cdUpt.FieldByname('estado').AsString := 'cancelado';
            cdUpt.post;
            cdUpt.ApplyUpdates(-1);
            cdDatos.Refresh;
            Eliminado := True;
            //ejecutar alta de partidas
          end
          else
          begin
            raise InteligentException.CreateByCode(2,
              [cdDatos.FieldByName('serie').AsString,
              cdTexto + 'alm_salida']);
          end;
      end;
        DbGridPrincipal.SelectCell(2,primero,[ssShift],False);
      if Eliminado = False then
        Inc(Primero);
      end;
    end;
  except
    on e: Exception do
      InteliDialog.ShowModal('Error',e.Message,'',mtError,[mbOK],0);
  end;
end;

procedure TFrmSalidaManifiesto.BtnEditClick(Sender: TObject);
var
  providerNameUpt: String;
  cdUpt: TClientDataSet;
  popUp: Tfrmsalidamanifiestodetalle;
  SoloVer: boolean;
begin
  if CdDatos.State <> dsBrowse then
    Exit;
  if DbGridPrincipal.SelectedCount > 1 Then
    Exit;
  if cdDatos.Active and (cdDatos.RecordCount > 0) then
  begin
    if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
      SoloVer := False;
    Try
      cdUpt := TClientDataSet.Create(Nil);
      cdUpt.RemoteServer := cdDatos.RemoteServer;

      Try
        CrearConjunto(cdUpt,'alm_salida', ccUpdate);
        CargarDatosFiltrados(cdUpt, 'idsalida', [cdDatos.FieldByName('idsalida').AsInteger]);
        cdUpt.Open;

        if cdUpt.RecordCount = 1 then
        begin
          popUp := Tfrmsalidamanifiestodetalle.Create(nil);

          if not SoloVer then
            cdUpt.Edit;
          popUp.dsDatos.DataSet := cdUpt;
          popUp.ShowModal;
          BtnRefresh.Click;
        end
        else
        begin
          raise InteligentException.Create('Error al localizar la salida');
        end;
      Finally
        EliminarConjunto(providerNameUpt);
        popUp.Free;
      End;
    Except
      on e: exception do
        InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
    End;
  end;
end;

procedure TFrmSalidaManifiesto.BtnExportClick(Sender: TObject);
begin
 if CdDatos.State = dsBrowse then
  Try
    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registros.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'EXPORTARXLS') then
      Exit;


    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
    ExportarExcel(cdDatos,Form2.cdImagen,DBGridPrincipal,Self.Caption,
    clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString,
    clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString,
    'Ciudad del Carmen, Campeche'
    ,pbProgress,pnlProgress);

  Except
    on e:exception do
      InteliDialog.ShowModal('No se puede exportar Por el siguiente motivo: ',e.message, mtInformation, [mbOk], 0);
  End;
end;

procedure TFrmSalidaManifiesto.BtnPrintClick(Sender: TObject);
var
  NombreReporte: String;
  memDetalle: TClientDataSet;
  i: Integer;
begin
  try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

    CrearConjunto(cdDatosDetalle, 'RepVale_Salida',  ccSelect);
    CargarDatosFiltrados(cdDatosDetalle, 'idsalida', [CdDatos.FieldByName('idsalida').AsInteger]);
    cdDatosDetalle.open;

    //validando existencia de reporte
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3') then
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3');

    //predefiniendo estilo
    frxReport1.PreviewOptions.MDIChild := False ;
    frxreport1.PreviewOptions.Modal := True ;
    frxreport1.PreviewOptions.ShowCaptions := False ;
    frxreport1.Previewoptions.ZoomMode := zmPageWidth ;

    //Asignar archivo
    frxreport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'ValeEntradaSalida.fr3');

    clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
    clientModule1.cdOrganizacion.Prior;

    //pasar variable a reporte
    frxreport1.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    frxreport1.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    frxreport1.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
    frxreport1.Variables['tipo'] := QuotedStr('salida');
    clientModule1.cdOrganizacion.Last;
    frxreport1.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    //mostrar reporte
    frxreport1.ShowReport(False);
    cdDatosDetalle.close;
    EliminarConjunto(cdDatosDetalle.ProviderName);

  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  end;
{  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\Manifiesto embarque-desembarque.fr3') then
      begin
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName)+'Reportes\Manifiesto embarque-desembarque.fr3' );
      end;

    memDetalle := TClientDataSet.Create(Self);
    Try
      CrearConjunto(cdSalidasRp, 'alm_salida', ccCatalog);
      cdSalidasRp.Open;

      CrearConjunto(cdSalidasDetalleRp, 'alm_salidadetalle', ccCatalog);
      cdSalidasDetalleRp.Open;

{      for i := 0 to cdSalidasDetalleRp.FieldDefs.Count -1 do
      begin}
  //      memDetalle.FieldDefs := cdSalidasDetalleRp.FieldDefs;
      //end;

    //      NombreReporte := ExtractFilePath(ParamStr(0)) + 'Manifiesto embarque-desembarque.fr3';

{      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'Manifiesto embarque-desembarque.fr3');

        frxReport1.PreviewOptions.MDIChild := False ;
        frxReport1.PreviewOptions.Modal := True ;
        frxReport1.PreviewOptions.ShowCaptions := False ;
        frxReport1.Previewoptions.ZoomMode := zmPageWidth ;

        frxReport1.ShowReport(False);

    Finally
      memDetalle.Destroy;
      EliminarConjunto([cdSalidasRp.ProviderName, cdSalidasDetalleRp.ProviderName]);
    End;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se ha podido generar el reporte', 'No ha sido posible generar el reporte debido a lo siguiente: ' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;}
end;

procedure TFrmSalidaManifiesto.BtnRefreshClick(Sender: TObject);
begin
  cdDatos.Refresh;
end;

procedure TFrmSalidaManifiesto.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
  estado: string;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    exit;

  Parametros := TParamFilter.Create;
  Parametros.Add('idorganizacion', clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger);
  Parametros.Add('manifiesto', 'S');
  if chkUsuario.Checked then
    Parametros.Add('idusuario', ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger);

  if Trim(edtFiltroFolio.Text) <> '' then
    try
      Parametros.Add('consecutivo', strtoint(edtFiltroFolio.Text));
    except
      Parametros.Add('serie', '%' + Trim(edtFiltroFolio.Text) + '%');
    end;

  if Trim(EditFReferencia.Text) <> '' then
    Parametros.Add('referencia', '%' + Trim(editFReferencia.Text) + '%');


  if chkFecha.Checked then
  begin
    Parametros.Add('fechaini',ClientModule1.DatetoStrSql(dtpFiltroFechaIni.Date));
    Parametros.Add('fechafin',ClientModule1.DatetoStrSql(dtpFiltroFechaFin.Date));
  end;

  estado := Trim(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex]);
  if estado <> '' then
    Parametros.Add('estado', estado);

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmSalidaManifiesto.cmbFiltroEstadoChange(Sender: TObject);
begin
    BtnSearch.Click;
end;

procedure TFrmSalidaManifiesto.DBGridPrincipalCellDblClick(Sender: TObject;
  ACol, ARow: Integer);
begin
  BtnEdit.Click;
end;

procedure TFrmSalidaManifiesto.DBGridPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    DbGridPrincipal.SelectCell(2,DBGridPrincipal.SelectedRow,[ssShift],False);
end;

procedure TFrmSalidaManifiesto.DBGridPrincipalSortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
  TRY
    SortClientDataSet(cddatos,DBGridPrincipal.Columns.Item[acol].FieldName);
    DbGridPrincipal.ClearSelection;
  EXCEPT
    ;
  END;
end;

procedure TFrmSalidaManifiesto.DBGridPrincipalVerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    DBGridPrincipal.ClearSelection;
    DBGridPrincipal.Repaint;
    DBGridPrincipal.Refresh;
  end;
end;

procedure TFrmSalidaManifiesto.edtFiltroFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key =#13 then
    BtnSearch.Click;
end;

procedure TFrmSalidaManifiesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cddatos);
  LiberarVentana(Self, Action);
end;

procedure TFrmSalidaManifiesto.FormCreate(Sender: TObject);
var
  cdTipoMov: TClientDataSet;
begin
  ModuloPantalla := 'SALIDASMANIFIESTO';

  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);

  AccedeACoordenadas;
  try
    Try
      // meter al combobox los tipos de movimientos de entrada posibles
      cdTipoMov := TClientDataSet.Create(nil);
      if not CrearConjunto(cdTipoMov,'alm_tipomovimiento',ccCatalog)then
        raise InteligentConnection.Create('No se ha podido abrir la tabla de tipo de movimiento');
      CargarDatosFiltrados(cdTipoMov,'tipomovimiento,manifiesto',['SALIDA','S']);
      cdTipoMov.Open;
      // Primero meter el de entrada por OC

    Finally
      cdTipoMov.Free;
      EliminarConjunto(cdTipoMov);
    End;
  except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error de comunicación con el servidor', 'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado','No se ha podido invocar la ventana debido a un error inesperado, informe de esto al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmSalidaManifiesto.FormShow(Sender: TObject);
begin

  dtpFiltroFechaIni.Date := Now;
  dtpFiltroFechaFin.Date := Now;
  try
    ClientModule1.ComponentColor(self);
    ClientModule1.RastrearGrids(self);
    if AnsiLowerCase(ClientModule1.cdUsuario.FieldByName('usuario').AsString) <> 'admin' then
      chkUsuario.Visible := False;

    if not crearconjunto(cdDatos,'alm_salida',ccCatalog) then
      raise InteligentConnection.Create('No se ha podido abrir la tabla de salidas');
    CargarDatosFiltrados(cdDatos,'idsalida',[-9],false);
    cdDatos.Open;

  except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error de comunicación con el servidor', 'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado','No se ha podido invocar la ventana debido a un error inesperado, informe de esto al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmSalidaManifiesto.AccedeACoordenadas;
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

end.
