unit UTFrmCotizador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, PngSpeedButton, UTfrmDetalleDocs, NxDBColumns,
  NxColumns, AdvShapeButton, frxClass, frxDBSet, uIntelidialog, AdvEdit, Mask,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvOfficeButtons,
  AdvCombo, JvComponentBase, JvEnterTab, JvMemoryDataset, ComCtrls, frxExportPDF,
  DBCtrls, Spin, AdvProgressBar;

type
  TFrmCotizador = class(TFrmCatalogoDoc)
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBNumberColumn1: TNxDBTextColumn;
    frxReporteCuadroComparativo: TfrxReport;
    FrxCuadroComparativo: TfrxDBDataset;
    cdDatosDetalle: TClientDataSet;
    DsDatosDetalle: TDataSource;
    edtFiltroFolio: TAdvEdit;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    cmbFiltroEstado: TAdvComboBox;
    NxDBTextColumn1: TNxDBTextColumn;
    edtFiltroSolicitud: TAdvEdit;
    btnCompare: TAdvShapeButton;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBNumberColumn3: TNxDBNumberColumn;
    NxDBNumberColumn4: TNxDBNumberColumn;
    NxDBNumberColumn5: TNxDBNumberColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure frxReporteCuadroComparativoGetValue(const VarName: string;
      var Value: Variant);
    procedure btnCompareClick(Sender: TObject);
    procedure DBGridPrincipalCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ModoEdicion: boolean;
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
    PantallaReq: boolean;
  end;

var
  FrmCotizador: TFrmCotizador;

implementation

uses
  ClientModuleUnit1,Unit2,UTFrmCotizadorCompara, alm_genericclasses;
{$R *.dfm}

procedure TFrmCotizador.btnCompareClick(Sender: TObject);
var
  Cotizacion: TCotizacion;
  Cotizaciones: TList;
  Solicitudes: TStringList;
  i, ii: Integer;
  strSolicitud: string;
  Form1: TfrmCotizadorCompara;
begin
  inherited;

  if not ClientModule1.LeePermisos(ModuloPantalla,'COMPARAR') then
    Exit;

  if DBGridPrincipal.SelectedCount > 0 then
  begin
    Solicitudes := TStringList.Create;
    Cotizaciones := TList.Create;
    for i := 0 to DBGridPrincipal.RowCount - 1 do
    begin
      if DBGridPrincipal.Selected[i] then
      begin
        // posicionarme en el registro actual del grid
        cdDatos.Locate('idcotizacion',DBGridPrincipal.GetCellValue(0,i),[]);
        Cotizacion := TCotizacion.Create;
        Cotizacion.idCotizacion := DBGridPrincipal.GetCellValue(0,i);
        Cotizacion.idSolicitud :=  DBGridPrincipal.GetCellValue(1,i);
        Cotizacion.Serie :=  DBGridPrincipal.GetCellValue(3,i);
        Cotizacion.idProveedor :=  DBGridPrincipal.GetCellValue(2,i);
        Cotizacion.NombreProveedor :=  DBGridPrincipal.GetCellValue(7,i);
        Cotizacion.Calificacion := DBGridPrincipal.GetCellValue(9,i);
        Cotizacion.idOrganizacion := DBGridPrincipal.GetCellValue(10,i);
        Cotizacion.idciudad := cdDatos.FieldByName('idciudad').AsInteger;
        Cotizacion.titulociudad := cdDatos.FieldByName('titulociudad').AsString;
        Cotizacion.tituloestado := cdDatos.FieldByName('tituloestado').AsString;
        Cotizacion.titulopais := cdDatos.FieldByName('titulopais').AsString;
        Cotizacion.RazonSocial := cdDatos.FieldByName('razonsocial').AsString;
        Cotizacion.Modificable := true;
        Cotizaciones.Add(Cotizacion);
        strSolicitud := IntToStr(DBGridPrincipal.GetCellValue(1,i));
        if not Solicitudes.Find(strSolicitud,ii) then
          Solicitudes.Add(strSolicitud);
      end;

    end;
    // Verificar si las cotizaciones pertenecen a más de una solicitud diferente
    if (Solicitudes.Count = 1) or ((Solicitudes.Count > 1) and
      (InteliDialog.ShowModal('ATENCIÓN',
      'Las cotizaciones seleccionadas pertenecen a más de una solicitud diferente.' +
        #10 + '¿Continuar de cualquier manera?',
      'Las solicitudes a las que pertenecen las cotizaciones son:' + #10 +
         Solicitudes.delimitedtext,mtConfirmation,[mbYes,mbCancel],0) = mrYes))  then
      begin
        Form1 := TfrmCotizadorCompara.Create(nil);
        Form1.Cotizaciones := Cotizaciones;
        Form1.Solicitudes := Solicitudes;
        Form1.ShowModal;

        Form1.Free;
      end;
    Cotizaciones.Free;
  end;
end;

procedure TFrmCotizador.BtnDeleteClick(Sender: TObject);
var
  estadoErr: string;
begin
  if PantallaReq then
    ModoEdicion := false
  else
    ModoEdicion := cdDatos.FieldByName('estado').AsString = 'pendiente';
  inherited
end;

procedure TFrmCotizador.BtnEditClick(Sender: TObject);
var
  estadoErr: string;
begin
  ModoEdicion := true;
  inherited
end;

procedure TFrmCotizador.BtnPrintClick(Sender: TObject);
begin
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;
  //proceso inicia
    CrearConjunto(cdDatosDetalle, 'alm_cotizacion', providername, ccSelect);
    CargarDatosFiltrados(cdDatosDetalle, 'idsolicitud', [CdDatos.FieldByName('idsolicitud').AsInteger]);
    cdDatosDetalle.Open;
  //termina proceso

//    ClientModule1.ImprimeReporte('SolicitudDetalle.fr3',frxReporteCuadroComparativo);
    if Not FileExists(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'CuadroComparativo.fr3') then
    begin
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                             ExtractFilePath(Application.ExeName)+'\Reportes\' + 'CuadroComparativo.fr3' );
    end;

    frxReporteCuadroComparativo.PreviewOptions.MDIChild := False ;
    frxReporteCuadroComparativo.PreviewOptions.Modal := True ;
    frxReporteCuadroComparativo.PreviewOptions.ShowCaptions := False ;
    frxReporteCuadroComparativo.Previewoptions.ZoomMode := zmPageWidth ;
    frxReporteCuadroComparativo.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'CuadroComparativo.fr3') ;

    //nueva forma de enviar variables a fast report, declarando las variables en el fr3
    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
    frxReporteCuadroComparativo.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString);
    frxReporteCuadroComparativo.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    frxReporteCuadroComparativo.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    frxReporteCuadroComparativo.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
  {  frxReporteCuadroComparativo.Variables['usuario'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
    frxReporteCuadroComparativo.Variables['usuariocargo'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);      }
    if Not PantallaReq then  // La pantalla es la de solicitudes
      frxReporteCuadroComparativo.ShowReport(False)
    else  // La pantalla es la de "requisiciones"
      ShowMessage('Pendiente por hacer');
    EliminarConjunto(cdDatosDetalle.ProviderName);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmCotizador.BtnSearchClick(Sender: TObject);
Var
  Cuantos: integer;
  Parametros: TParamFilter;
  estado: string;
begin
  inherited;
  Parametros := TParamFilter.Create;

  //Parametros.Add('idorganizacion', clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger);
  Parametros.Add('idorganizacion', cmbConvenio.KeyValue);
  if chkUsuario.Checked then
    Parametros.Add('idusuario', clientmodule1.cdUsuario.FieldByName('idusuario').AsInteger);
  if Trim(edtFiltroFolio.Text) <> '' then
    try
      Parametros.Add('consecutivo', strtoint(edtFiltroFolio.Text));
    except
      Parametros.Add('serie', '%' + Trim(edtFiltroFolio.Text) + '%');
    end;

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

function TFrmCotizador.createPopUpDetalle: TFrmDetalleDocs;
begin
end;

procedure TFrmCotizador.DBGridPrincipalCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
// Evitar que pueda editar haciendo doble click
//  inherited;

end;

procedure TFrmCotizador.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'ANALISISCOTIZACIONES';
  inherited;
end;

procedure TFrmCotizador.FormShow(Sender: TObject);
begin
  Try
    inherited;
    dtpFiltroFechaIni.Date := Now;
    dtpFiltroFechaFin.Date := Now;
    self.AlineaBotones(2);
    BtnSearch.Click;
    cdDatos.First;
    DBGridPrincipal.Refresh;
  Except
    // Ante cualquier error se debe cerrar la ventana
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No se ha podido invocar la ventana',
                             'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                             e.Message, mtWarning, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Error catastrófico',
                             'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                             e.Message + #10 + #10 + 'Informe de esto al administrador del sistema', mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmCotizador.frxReporteCuadroComparativoGetValue(
  const VarName: string; var Value: Variant);
begin
  {
 organizacion
 sub
 contrato

}
end;

procedure TFrmCotizador.Inicializar;
begin
  keyField := 'idcotizacion';
  entityName := 'alm_cotizacion';
  codeField := 'serie';
end;

end.
