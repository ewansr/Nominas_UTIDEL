unit UTFrmRequisiciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, PngSpeedButton, UTfrmDetalleDocs, NxDBColumns,
  NxColumns, AdvShapeButton, frxClass, frxDBSet, uIntelidialog, AdvEdit, Mask,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvOfficeButtons,
  AdvCombo, JvComponentBase, JvEnterTab, JvMemoryDataset, ComCtrls, frxExportPDF,
  Spin, AdvProgressBar, DBCtrls;

type
  TFrmRequisiciones = class(TFrmCatalogoDoc)
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBNumberColumn1: TNxDBTextColumn;
    frxReporteSolicitudDetalle: TfrxReport;
    FrxSolicitudDetalle: TfrxDBDataset;
    cdDatosDetalle: TClientDataSet;
    DsDatosDetalle: TDataSource;
    edtFiltroFolio: TAdvEdit;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    cmbFiltroEstado: TAdvComboBox;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure frxReporteSolicitudDetalleGetValue(const VarName: string;
      var Value: Variant);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
  end;

var
  FrmRequisiciones: TFrmRequisiciones;

implementation

uses
  ClientModuleUnit1,Unit2,UTFrmRequisicionDetalle, UTFrmAsignarComprador;
{$R *.dfm}

procedure TFrmRequisiciones.btn1Click(Sender: TObject);
var
  frm1: TFrmAsignarComprador;
begin
  inherited;
  if cdDatos.eof then
    InteliDialog.ShowModal('No se ha seleccionado nada',
      'No se ha seleccionado ningún registro para la opción solicitada',
      mtError, [mbOk], 0)
  else
  begin
    frm1 := TFrmAsignarComprador.Create(nil);
    frm1.cdDatos := cdDatos;
    frm1.ShowModal;
    frm1.Free;
  end;
end;

procedure TFrmRequisiciones.BtnDeleteClick(Sender: TObject);
var
  estadoErr: string;
begin
  estadoErr := cdDatos.FieldByName('estado').AsString;
  if estadoErr = 'pendiente' then
    inherited
  else
    InteliDialog.ShowModal('No se puede Cancelar.',
              Format('El documento no se puede cancelar debido a que su estado actual es "%s"',[estadoErr]), mtError, [mbOk], 0);
end;

procedure TFrmRequisiciones.BtnEditClick(Sender: TObject);
var
  estadoErr: string;
begin
  estadoErr := cdDatos.FieldByName('estado').AsString;
  if estadoErr = 'pendiente' then
    inherited
  else
    InteliDialog.ShowModal('No se puede Editar.',
              Format('El documento no se puede editar debido a que su estado actual es "%s"',[estadoErr]), mtError, [mbOk], 0);
end;

procedure TFrmRequisiciones.BtnPrintClick(Sender: TObject);
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
    CargarDatosFiltrados(cdDatosDetalle, 'idsolicitud', [CdDatos.FieldByName('idsolicitud').AsInteger]);
    cdDatosDetalle.refresh;
  //termina proceso

//    ClientModule1.ImprimeReporte('SolicitudDetalle.fr3',FrxReporteSolicitudDetalle);
    if Not FileExists(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'SolicitudDetalle.fr3') then
    begin
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                             ExtractFilePath(Application.ExeName)+'\Reportes\' + 'SolicitudDetalle.fr3' );
    end;

    FrxReporteSolicitudDetalle.PreviewOptions.MDIChild := False ;
    FrxReporteSolicitudDetalle.PreviewOptions.Modal := True ;
    FrxReporteSolicitudDetalle.PreviewOptions.ShowCaptions := False ;
    FrxReporteSolicitudDetalle.Previewoptions.ZoomMode := zmPageWidth ;
    FrxReporteSolicitudDetalle.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'SolicitudDetalle.fr3') ;

    //nueva forma de enviar variables a fast report, declarando las variables en el fr3
    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
    FrxReporteSolicitudDetalle.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString);
    FrxReporteSolicitudDetalle.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    FrxReporteSolicitudDetalle.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    FrxReporteSolicitudDetalle.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
    FrxReporteSolicitudDetalle.Variables['usuario'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
    FrxReporteSolicitudDetalle.Variables['usuariocargo'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);
    FrxReporteSolicitudDetalle.ShowReport(False);

  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmRequisiciones.BtnSearchClick(Sender: TObject);
Var
  Cuantos: integer;
  Parametros: TParamFilter;
  estado: string;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('idorganizacion', clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger);

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
  if estado = 'Activo' then
    estado := 'requisitado';

  if estado <> '' then
    Parametros.Add('estado', estado);

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

function TFrmRequisiciones.createPopUpDetalle: TFrmDetalleDocs;
begin
  result := TFrmRequisicionDetalle.Create(nil);
end;

procedure TFrmRequisiciones.FormShow(Sender: TObject);
begin
  inherited;
  dtpFiltroFechaIni.Date := Now;
  dtpFiltroFechaFin.Date := Now;
  CrearConjunto(cdDatosDetalle, 'alm_solicitud', providername, ccSelect);
  CargarDatosFiltrados(cdDatosDetalle, 'estado', ['requisitado']);
  cmbFiltroEstado.ItemIndex := 0;
  cdDatosDetalle.Open;
end;

procedure TFrmRequisiciones.frxReporteSolicitudDetalleGetValue(
  const VarName: string; var Value: Variant);
begin
  {
 organizacion
 sub
 contrato

}
end;

procedure TFrmRequisiciones.Inicializar;
begin
  keyField := 'idsolicitud';
  entityName := 'alm_solicitud';
  codeField := 'serie';
end;

end.
