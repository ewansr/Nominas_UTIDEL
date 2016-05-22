unit UTFrmSolicitudesSurtir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmSolicitudes, frxClass, frxDBSet, frxExportPDF, JvMemoryDataset,
  DB, DBClient, Menus, ComCtrls, StdCtrls, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, AdvCombo,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvEdit,
  AdvOfficeButtons, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls, Spin, AdvProgressBar, DBCtrls;

type
  TFrmSolicitudesSurtir = class(TFrmSolicitudes)
    PanelManifiesto: TPanel;
    btnManifiesto: TAdvShapeButton;
    PanelSalida: TPanel;
    btnSalida: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnManifiestoClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure btnSalidaClick(Sender: TObject);
  private
    { Private declarations }
    procedure GenerarSalida(Tipo: string);
  protected
    procedure Inicializar; override;
  public
    { Public declarations }
  end;

var
  FrmSolicitudesSurtir: TFrmSolicitudesSurtir;

implementation

uses ClientModuleUnit1, UInteliDialog, UTFrmSalidaSolDetalle, UTFrmSalidaManDetalle;

{$R *.dfm}

procedure TFrmSolicitudesSurtir.btnSalidaClick(Sender: TObject);
begin
  inherited;
  GenerarSalida('SALIDA');
end;

procedure TFrmSolicitudesSurtir.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
  estado: string;
begin
  inherited;
  Parametros := TParamFilter.Create;
  Parametros.Add('idorganizacion', clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger);
  if chkUsuario.Checked then
    Parametros.Add('idusuario', ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger);

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
  //if estado = 'Por surtir' then
    Parametros.Add('estado', estado);

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;

end;

procedure TFrmSolicitudesSurtir.btnManifiestoClick(Sender: TObject);
Var
  cdSalida,cdSalidaDet: TClientDataSet;
begin
  inherited;

end;

procedure TFrmSolicitudesSurtir.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'SOLICITUDSURTIR';
  inherited;
end;

procedure TFrmSolicitudesSurtir.FormShow(Sender: TObject);
begin
  inherited;
  ClientModule1.ComponentColor(self);
end;

procedure TFrmSolicitudesSurtir.Inicializar;
begin
  keyField := 'idsolicitud';
  entityName := 'alm_solicitudsurtir';
  codeField := 'serie';
end;


procedure TFrmSolicitudesSurtir.GenerarSalida(Tipo: string);
Var
  cdSalida,
  cdSalidaDet,
  cdDetalle: TClientDataSet;
  mdSalidaDet: TJvMemoryData;
  day, month, year: word;
  Hoy: TDate;
  frmSalida: TFrmSalidaSolDetalle;
  frmSalidaMan: TFrmSalidaManDetalle;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'SURTIR') then
    Exit;

  if cdDatos.Recno = 0 then
  begin
    InteliDialog.ShowModal('Error','No hay nada seleccionado','',mtError,[mbOK],0);
    exit;
  end;

  if InteliDialog.ShowModal('Confirmación','¿Generar la salida correspondiente?',
      'Se generará la salida correspondiente a las partidas indicadas de la solicitud para su surtimiento',
      mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    // Crear el encabezado
    Hoy := now;
    DecodeDate(Hoy, year, month, day);
    cdSalida := TClientDataSet.Create(nil);
    CrearConjunto(cdSalida,'alm_salida',ccUpdate);
    CargarDatosFiltrados(cdSalida,'idsalida',[-9]);
    cdSalida.Open;
    cdSalida.Append;
    cdSalida.FieldValues['IdSalida'] := 0;
    cdSalida.FieldValues['IdOrganizacion'] := cdDatos.FieldValues['IdOrganizacion'];
    cdSalida.FieldValues['tipoembarque'] := 'EMBARQUE';
    cdSalida.FieldValues['fecha'] := Hoy;
    cdSalida.FieldValues['idciudad'] := cdDatos.FieldValues['idciudad'];
    cdSalida.FieldValues['titulociudad'] := cdDatos.FieldValues['titulociudad'];
    cdSalida.FieldValues['tituloestado'] := cdDatos.FieldValues['tituloestado'];
    cdSalida.FieldValues['titulopais'] := cdDatos.FieldValues['titulopais'];
    cdSalida.FieldValues['comentarios'] := 'Corresponde a la solicitud ' + cdDatos.FieldValues['serie'];
    cdSalida.FieldValues['periodo'] := year;
    cdSalida.FieldValues['consecutivo'] := 0;

    // Crear los detalles
    cdSalidaDet := TClientDataSet.Create(nil);
    mdSalidaDet := TJvMemoryData.Create(nil);
    CrearConjunto(cdSalidaDet,'alm_salidadetalle',ccUpdate);
    CargarDatosFiltrados(cdSalidaDet,'idsalida',[-9]);
    cdSalidaDet.Open;
    mdSalidaDet.Close;
    mdSalidaDet.CopyStructure(cdSalidaDet);
    cdSalidaDet.Close;
    EliminarConjunto(cdSalidaDet);
    cdSalidaDet.Free;
    mdSalidaDet.Open;


    cdDetalle := TClientDataSet.Create(nil);
    CrearConjunto(cdDetalle,'alm_solicituddetalle',ccCatalog);
    CargarDatosFiltrados(cdDetalle,'idsolicitud',[cdDatos.FieldByName('idsolicitud').AsInteger]);
    cdDetalle.Open;
    cdDetalle.First;
    while not cdDetalle.eof do
    begin
      mdSalidaDet.Append;
      mdSalidaDet.FieldValues['IdSalida'] := 0;
      mdSalidaDet.FieldValues['IdSalidaDetalle'] := 0;
      mdSalidaDet.FieldValues['idarticulo'] := cdDetalle.FieldValues['idarticulo'];
      mdSalidaDet.FieldValues['codigoarticulo'] := cdDetalle.FieldValues['codigoarticulo'];
      mdSalidaDet.FieldValues['tituloarticulo'] := cdDetalle.FieldValues['tituloarticulo'];
      mdSalidaDet.FieldValues['codigounidad'] := cdDetalle.FieldValues['codigounidad'];
//      mdSalidaDet.FieldValues['titulosubgrupo'] := cdDetalle.FieldValues['titulosubgrupo'];
      mdSalidaDet.FieldValues['titulodisciplina'] := cdDetalle.FieldValues['titulodisciplina'];
      mdSalidaDet.FieldValues['cantidad'] := cdDetalle.FieldValues['cantidadsurtida'];
//      mdSalidaDet.FieldValues['idimpuesto'] := cdDetalle.FieldValues['idimpuesto'];
//      mdSalidaDet.FieldValues['codigoimpuesto'] := cdDetalle.FieldValues['codigoimpuesto'];
//      mdSalidaDet.FieldValues['tasa'] := cdDetalle.FieldValues['tasa'];
//      mdSalidaDet.FieldValues['titulogrupo'] := cdDetalle.FieldValues['titulogrupo'];
//      mdSalidaDet.FieldValues['precio'] := cdDetalle.FieldValues['precio'];
//      mdSalidaDet.FieldValues['costo'] := cdDetalle.FieldValues['costo'];
      mdSalidaDet.Post;
      cdDetalle.Next;
    end;
  end;

  if tipo = 'SALIDA' then
  begin
    frmSalida := TFrmSalidaSolDetalle.Create(nil);
    frmSalida.dsDatos.DataSet := cdSalida;
    frmSalida.mdDetalle := mdSalidaDet;
    frmSalida.Show;
  end
  else
  begin

  end;

end;

end.
