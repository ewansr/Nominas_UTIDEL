unit UTFrmSalidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvOfficeButtons, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls, UTFrmDetalleDocs, NxDBColumns, NxColumns, AdvCombo,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvEdit, frxClass,
  frxDBSet, frxExportPDF,StrUtils, DBCtrls, Spin, AdvProgressBar;

type
  TFrmSalidas = class(TFrmCatalogoDoc)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    edtFiltroFolio: TAdvEdit;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    cmbFiltroEstado: TAdvComboBox;
    cmbTipoFiltro: TAdvComboBox;
    frxReporteEntradaDetalle: TfrxReport;
    FrxEntradaDetalle: TfrxDBDataset;
    DsDatosDetalle: TDataSource;
    cdDatosDetalle: TClientDataSet;
    NxDBTextColumn5: TNxDBTextColumn;
    EditFReferencia: TAdvEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure cmbTipoFiltroChange(Sender: TObject);
    procedure edtFiltroFolioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
  end;

var
  FrmSalidas: TFrmSalidas;

implementation

uses
  UInteliDialog, UTFrmSalidaDetalle, ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSalidas.BtnAddClick(Sender: TObject);
Var
  cdTipo: TClientDataSet;
  Cuantos: Integer;
begin
  cdTipo := TClientDataSet.Create(nil);
  CrearConjunto(CdTipo, 'alm_tipomovimiento', ccCatalog);
  // Solicitar solo los movimientos de salida
  CargarDatosFiltrados(cdTipo, 'tipomovimiento,manifiesto', ['SALIDA','N']);
  cdTipo.Open;
  Cuantos := CdTipo.RecordCount;
  cdTipo.Close;
  EliminarConjunto(cdTipo);
  cdTipo.Free;

  // si no hay tipos de movimientos de salida, salir
  if (Cuantos = 0) then
    InteliDialog.ShowModal('ERROR','No existen conceptos de Salida definidos','',mtError,[mbOK],0)
  else
    inherited;
end;

procedure TFrmSalidas.BtnPrintClick(Sender: TObject);
var
  nombres,puestos, codigoconvenio,tituloconvenio, titulo: string;
  ListNombres, ListPuestos: TStringList;
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

    CrearConjunto(cdDatosDetalle, 'RepVale_Salida', providername, ccSelect);
    CargarDatosFiltrados(cdDatosDetalle, 'idsalida', [CdDatos.FieldByName('idsalida').AsInteger]);
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

    ListNombres := TStringList.Create;
    ListPuestos := TStringList.Create;

    //lOCALIZANDO FlRMANTES
    if (length(Trim(cdDatosDetalle.FieldByName('firmanombre').AsString)) > 0) and
       (length(Trim(cdDatosDetalle.FieldByName('firmapuesto').AsString)) > 0) then
    begin
      nombres := cdDatosDetalle.FieldByName('firmanombre').AsString;
      puestos := cdDatosDetalle.FieldByName('firmapuesto').AsString;

      nombres := AnsiReplaceStr( nombres, ',', '.' );// devuelve: nombre sin
      nombres := AnsiReplaceStr( nombres, '|', ',' );
      nombres := AnsiReplaceStr( nombres, '"', '' );
      nombres := AnsiReplaceStr( nombres, ' ', '_' );

      ListNombres.CommaText := nombres;

      puestos := AnsiReplaceStr( puestos, ',', '.' );// devuelve: nombre sin
      puestos := AnsiReplaceStr( puestos, '|', ',' );
      puestos := AnsiReplaceStr( puestos, '"', '' );
      puestos := AnsiReplaceStr( puestos, ' ', '_' );


      ListPuestos.CommaText := puestos;
    end;


    //pasar variable a reporte
{    frxReporteEntradaDetalle.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    frxReporteEntradaDetalle.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    frxReporteEntradaDetalle.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
}
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

    frxReporteEntradaDetalle.Variables['tipo'] := QuotedStr('salida');
    clientModule1.cdOrganizacion.Last;
//    frxReporteEntradaDetalle.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

    if (ListNombres.Count > 0) and (ListPuestos.Count > 0) then
    begin

      frxReporteEntradaDetalle.Variables['nombreautorizo'] := QuotedStr(AnsiReplaceStr( ListNombres[0], '_', ' ' ));

      try
        frxReporteEntradaDetalle.Variables['nombreentrego'] := QuotedStr(AnsiReplaceStr( ListNombres[1], '_', ' ' ));
      except
        ;
      end;

      try
        frxReporteEntradaDetalle.Variables['nombrerecibio'] := QuotedStr(AnsiReplaceStr( ListNombres[2], '_', ' ' ));
      except
        ;
      end;

      if ListPuestos.Count > 1 then
      begin
        frxReporteEntradaDetalle.Variables['cargoautorizo'] := QuotedStr(AnsiReplaceStr( ListPuestos[0], '_', ' ' ));

        try
          frxReporteEntradaDetalle.Variables['cargoentrego'] := QuotedStr(AnsiReplaceStr( ListPuestos[1], '_', ' ' ));
        except
          ;
        end;

        try
          frxReporteEntradaDetalle.Variables['cargorecibio'] := QuotedStr(AnsiReplaceStr( ListPuestos[2], '_', ' ' ));
        except
          ;
        end;
      end;

    end
    else
    begin
      frxReporteEntradaDetalle.Variables['nombreautorizo'] := QuotedStr(' ');
      frxReporteEntradaDetalle.Variables['cargoautorizo'] := QuotedStr(' ');
      frxReporteEntradaDetalle.Variables['nombreentrego'] := QuotedStr(' ');
      frxReporteEntradaDetalle.Variables['cargoentrego'] := QuotedStr(' ');
      frxReporteEntradaDetalle.Variables['nombrerecibio'] := QuotedStr(' ');
      frxReporteEntradaDetalle.Variables['cargorecibio'] := QuotedStr(' ');
    end;

    //mostrar reporte
    frxReporteEntradaDetalle.ShowReport(False);
    cdDatosDetalle.close;
    EliminarConjunto(cdDatosDetalle.ProviderName);

    listnombres.free;
    listpuestos.free;

  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);

      try
        EliminarConjunto(cdDatosDetalle.ProviderName);
        listnombres.free;
        listpuestos.free;
      finally
        ;
      end;
      exit;
    end;
  end;
end;

procedure TFrmSalidas.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
  estado: string;
begin
  inherited;
  Parametros := TParamFilter.Create;
  //Parametros.Add('idorganizacion', clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger);
  Parametros.Add('idorganizacion', cmbConvenio.KeyValue);
  Parametros.Add('manifiesto', 'N');
  if chkUsuario.Checked then
    Parametros.Add('idusuario', ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger);

  if trim(cmbTipoFiltro.Text) <> '' then
    Parametros.Add('nombretipomovimiento',cmbTipoFiltro.Text);

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


procedure TFrmSalidas.cmbTipoFiltroChange(Sender: TObject);
begin
    BtnSearch.Click;
end;

function TFrmSalidas.createPopUpDetalle;
begin
  Result := TFrmSalidaDetalle.Create(self);
end;

procedure TFrmSalidas.edtFiltroFolioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BtnSearch.Click;
end;

procedure TFrmSalidas.FormCreate(Sender: TObject);
var
  cdTipoMov: TClientDataSet;
begin
  ModuloPantalla := 'SALIDAS';
  Documento := 'SALIDA';  // Indicar el documento para obtener la plantilla para la serie
  inherited;
  // meter al combobox los tipos de movimientos de entrada posibles
  cdTipoMov := TClientDataSet.Create(nil);
  CrearConjunto(cdTipoMov,'alm_tipomovimiento',ccCatalog);
  CargarDatosFiltrados(cdTipoMov,'tipomovimiento,manifiesto',[Documento,'N']);
  cdTipoMov.Open;
  // Primero meter el de entrada por OC
  cmbTipoFiltro.Clear;
  cdTipoMov.First;
  while not cdTipoMov.eof do
  begin
    cmbTipoFiltro.items.Add(cdTipoMov.FieldByName('nombretipomovimiento').AsString);
    cdTipoMov.Next;
  end;
  cdTipoMov.Free;
end;

procedure TFrmSalidas.FormShow(Sender: TObject);
begin
  inherited;
  dtpFiltroFechaIni.Date := Now;
  dtpFiltroFechaFin.Date := Now;
end;

procedure TFrmSalidas.Inicializar;
begin
  keyField := 'idsalida';
  entityName := 'alm_salida';
  codeField := 'serie';
end;

end.
