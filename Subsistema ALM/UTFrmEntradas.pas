///////////////////////////////////////////////////////////////////////////////
// Este es un formulario de proceso, el cual utiliza 2 o mas tablas, por     //
// ejemplo, tabla alm_movimiento, la cual contiene partidas en               //
// alm_movimientodetalle, entonces en esta ventana consultamos la primera    //
// luego llamamos a la segunta ventana en la cual asignamos las partidas de  //
// este movimiento. se iran escribiendo paso a paso las lineas, solo para    //
// este proceso y despues se pueden eliminar dichas lineas de comentarios.   //
// Este formulario, es del tipo TFrmCatalogoDoc                              //
///////////////////////////////////////////////////////////////////////////////
unit UTFrmEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvOfficeButtons, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls,UTfrmDetalleDocs, NxColumns, NxDBColumns, AdvCombo,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvEdit, frxClass,
  frxDBSet, frxExportPDF, DBCtrls, Spin, AdvProgressBar;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmEntradas = class(TFrmCatalogoDoc)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    cmbTipoFiltro: TAdvComboBox;
    NxDBTextColumn8: TNxDBTextColumn;
    edtFiltroFolio: TAdvEdit;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    cmbFiltroEstado: TAdvComboBox;
    DsDatosDetalle: TDataSource;
    cdDatosDetalle: TClientDataSet;
    frxReporteEntradaDetalle: TfrxReport;
    FrxEntradaDetalle: TfrxDBDataset;
    EdtFiltroReferencia: TAdvEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure NextDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure NextDBGrid1VerticalScroll(Sender: TObject; Position: Integer);
    procedure cmbTipoFiltroChange(Sender: TObject);
    procedure edtFiltroFolioKeyPress(Sender: TObject; var Key: Char);
  private
    ModoEdicion: boolean;
    procedure DetalleXOC;
  protected
    //funcion que llama al formulario detalle del tipo TFrmDetalleDocs
    // cuidado con las palabras override, si se les pasa les generara error
    function createPopUpDetalle: TFrmDetalleDocs; override;
    //procedimiento inicializar las conexiones
    procedure Inicializar; override;
    { Private declarations }
  public
    PantallaReq: boolean;
    { Public declarations }
  end;

var
  FrmEntradas: TFrmEntradas;

const
  ENTRADAXOC = 'ENTRADA POR OC';

implementation

uses
  ClientModuleUnit1,Unit2,UTFrmEntradasDetalle, UInteliDialog, UTFrmEntradasXOCDetalle;
{$R *.dfm}

{ TFrmMovimientos }

procedure TFrmEntradas.BtnEditClick(Sender: TObject);
begin
  // si son "otras entradas" que haga el procedimiento por default
  if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
    Exit;
  if cdDatos.FieldByName('idtipomovimiento').AsInteger > 0 then
    inherited
  else
    DetalleXOC;
end;

procedure TFrmEntradas.BtnPrintClick(Sender: TObject);
VAR
 codigoconvenio, tituloconvenio,titulo:string;
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

    CrearConjunto(cdDatosDetalle, 'RepVale_Entrada', providername, ccSelect);
    CargarDatosFiltrados(cdDatosDetalle, 'identrada', [CdDatos.FieldByName('identrada').AsInteger]);
    cdDatosDetalle.open;

    //validando existencia de reporte
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3') then
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3');

    //predefiniendo estilo
    frxReporteEntradaDetalle.PreviewOptions.MDIChild := False ;
    frxReporteEntradaDetalle.PreviewOptions.Modal := True ;
    frxReporteEntradaDetalle.PreviewOptions.ShowCaptions := False ;
    frxReporteEntradaDetalle.Previewoptions.ZoomMode := zmPageWidth ;

    //Asignar archivo
    frxReporteEntradaDetalle.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'ValeEntradaSalida.fr3');

    clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
    clientModule1.cdOrganizacion.Prior;

    //pasar variable a reporte
//    primero cargar el subtitulo o nivel hijo
    if ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',cdDatos.FieldByName('idorganizacion').AsString,[]) then
    begin
      //si encuentra hijos entonces establecer titulo y subtitulo
      CodigoConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('codigoorganizacion').AsString;
      TituloConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;
      ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString,[]);
    end;
      Titulo   := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;

    frxReporteEntradaDetalle.Variables['organizacion'] := QuotedStr(Titulo);
    frxReporteEntradaDetalle.Variables['contrato'] := QuotedStr(CodigoConvenio);
{    FrxReporteSolicitudDetalle.Variables['tituloconvenio'] := QuotedStr(TituloConvenio);
    FrxReporteSolicitudDetalle.Variables['pie'] := QuotedStr(Pie); }




{
    frxReporteEntradaDetalle.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    frxReporteEntradaDetalle.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    frxReporteEntradaDetalle.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
         }
 {   clientModule1.cdOrganizacion.Last;
    frxReporteEntradaDetalle.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
                  }

    frxReporteEntradaDetalle.Variables['tipo'] := QuotedStr('entrada');

    //mostrar reporte
    frxReporteEntradaDetalle.ShowReport(False);
    cdDatosDetalle.close;
    EliminarConjunto(cdDatosDetalle.ProviderName);

  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  end;
end;

procedure TFrmEntradas.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
  Estado: string;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('idorganizacion', cmbConvenio.KeyValue);
  if chkUsuario.Checked then
    Parametros.Add('idusuario', ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger);

  if cmbTipoFiltro.Text = ENTRADAXOC then
    Parametros.Add('idtipomovimiento',-9)
  else
    if trim(cmbTipoFiltro.Text) <> '' then
      Parametros.Add('nombretipomovimiento',cmbTipoFiltro.Text);

  if Trim(edtFiltroFolio.Text) <> '' then
    try
      Parametros.Add('consecutivo', strtoint(edtFiltroFolio.Text));
    except
      Parametros.Add('serie', '%' + Trim(edtFiltroFolio.Text) + '%');
    end;

  if Trim(EdtFiltroReferencia.Text) <> '' then
    Parametros.Add('referencia', '%' + Trim(edtFiltroReferencia.Text) + '%');

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

procedure TFrmEntradas.cmbTipoFiltroChange(Sender: TObject);
begin
    BtnSearch.Click;
end;

function TFrmEntradas.createPopUpDetalle: TFrmDetalleDocs;
Var
  tForm: TFrmEntradasDetalle;
begin
  //Aqui se llama al formulario detalle, notese que solo aqui se le asigna
  //el formulario que creamos a partir de TFrmDetalleDocs,
  //en este caso se manda a llamar FrmDetalleMovimientos

 // FrmEntradasDetalle: TFrmEntradasDetalle
  tForm := TFrmEntradasDetalle.Create(nil);
  // Checar los estados del documento para permitir o no la edición
  tForm.ModoEdicion := ModoEdicion;
  result := tForm;
end;

procedure TFrmEntradas.FormCreate(Sender: TObject);
var
  cdTipoMov: TClientDataSet;
  NameProvider: String;
begin
  ModuloPantalla := 'ENTRADAS';
  Documento := 'ENTRADA';
  inherited;
  // meter al combobox los tipos de movimientos de entrada posibles
  cdTipoMov := TClientDataSet.Create(nil);
  CrearConjunto(cdTipoMov,'alm_tipomovimiento',NameProvider,ccCatalog);
  CargarDatosFiltrados(cdTipoMov,'tipomovimiento',['ENTRADA']);
  cdTipoMov.Open;
  // Primero meter el de entrada por OC
  cmbTipoFiltro.Clear;
  cmbTipoFiltro.items.Add(ENTRADAXOC);
  cdTipoMov.First;
  while not cdTipoMov.eof do
  begin
    cmbTipoFiltro.items.Add(cdTipoMov.FieldByName('nombretipomovimiento').AsString);
    cdTipoMov.Next;
  end;
  cdTipoMov.Free;
end;

procedure TFrmEntradas.FormShow(Sender: TObject);
begin
  inherited;
  dtpFiltroFechaIni.Date := Now;
  dtpFiltroFechaFin.Date := Now;
end;

procedure TFrmEntradas.Inicializar;
begin
  // Aqui se asigna el nombre de la consulta, el id y el codigo
  keyField := 'identrada';
  entityName := 'alm_entrada';
  codeField := 'serie';
end;


procedure TFrmEntradas.NextDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (not (ssCtrl in Shift))  then
    DBGridPrincipal.SelectCell(2,DBGridPrincipal.SelectedRow,[ssShift],False);

end;

procedure TFrmEntradas.NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
  Ascending: Boolean);
begin
  inherited;
  TRY
    SortClientDataSet(TClientDataSet(dsdatos.dataset),DBGridPrincipal.Columns.Item[acol].FieldName);
    DBGridPrincipal.ClearSelection;
  EXCEPT
    ;
  END;
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


procedure TFrmEntradas.NextDBGrid1VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  inherited;
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    DBGridPrincipal.ClearSelection;
    DBGridPrincipal.Repaint;
    DBGridPrincipal.Refresh;
  end;
end;

procedure TFrmEntradas.DetalleXOC;
var
  providerNameUpt: String;
  cdUpt: TClientDataSet;
  popUp: TFrmDetalleDocs;
begin
  if CdDatos.State <> dsBrowse then
    Exit;
  if DbGridPrincipal.SelectedCount > 1 Then
    Exit;
  if cdDatos.Active and (cdDatos.RecordCount > 0) then
  begin
    if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
      Exit;
    Try
      cdUpt := TClientDataSet.Create(Nil);
      cdUpt.RemoteServer := cdDatos.RemoteServer;

      // Acceder en modo update al usuario
      Try
        CrearConjunto(cdUpt, entityName, providerNameUpt, ccUpdate);
        CargarDatosFiltrados(cdUpt, keyField, [cdDatos.FieldByName(keyField).AsInteger]);
        cdUpt.Open;

        if cdUpt.RecordCount = 1 then
        begin
          popUp := TFrmEntradasXOCDetalle.Create(nil);
          cdUpt.Edit;
          popUp.dsDatos.DataSet := cdUpt;
          popUp.ShowModal;
        end
        else
        begin
          raise InteligentException.CreateByCode(2,
            [cdDatos.FieldByName(codeField).AsString,
            cdTexto + entityName]);
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



procedure TFrmEntradas.edtFiltroFolioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BtnSearch.Click;
end;

end.
