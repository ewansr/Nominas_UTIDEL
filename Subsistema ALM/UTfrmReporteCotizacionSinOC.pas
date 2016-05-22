unit UTfrmReporteCotizacionSinOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, AdvEdit, StdCtrls, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, AdvGroupBox, frxClass, frxDBSet, DB, DBClient, ComCtrls,
  AdvDateTimePicker, AdvShapeButton, ExtCtrls, DBCtrls;

type
  TFrmReporteCotSinOC = class(TForm)
    cdDatos: TClientDataSet;
    cdDetalle: TClientDataSet;
    frdsDatos: TfrxDBDataset;
    frxReporte: TfrxReport;
    frdsDetalle: TfrxDBDataset;
    dsDatos: TDataSource;
    Panel1: TPanel;
    AdvGroupBox1: TAdvGroupBox;
    FechaDesde: TAdvDateTimePicker;
    FechaHasta: TAdvDateTimePicker;
    AdvGroupBox2: TAdvGroupBox;
    ConsDesde: TAdvEdit;
    ConsHasta: TAdvEdit;
    BtnPrint: TAdvShapeButton;
    dsConvenio: TDataSource;
    CdConvenio: TClientDataSet;
    AdvGroupBox3: TAdvGroupBox;
    CmbConvenio: TDBLookupComboBox;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure FiltroCombo;
    procedure CargarConvenios(Refrescar: Boolean = False);
    procedure EstableceIndex(Data: TclientDataset; Combo: TDBLookupComboBox);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReporteCotSinOC: TFrmReporteCotSinOC;

implementation

uses ClientModuleUnit1, UInteliDialog, DateUtils ;

{$R *.dfm}

procedure TFrmReporteCotSinOC.AdvGlowButton1Click(Sender: TObject);
Var
  Parametros: TParamFilter;
begin
  try
    // Validar que las fechas sean congruentes
    if FechaHasta.Date < FechaDesde.Date then
    begin
      FechaHasta.SetFocus;
      raise Exception.Create('La Fecha final es menor a la fecha inicial.');
    end;

    // Validar que los números sean congruentes
    if StrToInt(ConsHasta.Text) < StrToInt(ConsDesde.Text) then
    begin
      ConsHasta.SetFocus;
      raise Exception.Create('El consecutivo final es menor a la fecha inicial.');
    end;

    Parametros := TParamFilter.Create();
    Parametros.Add('idorganizacion',CmbConvenio.KeyValue);
    Parametros.Add('FechaIni',ClientModule1.DatetoStrSql(FechaDesde.Date));
    Parametros.Add('FechaFin',ClientModule1.DatetoStrSql(FechaHasta.Date));
    Parametros.Add('ConsecIni',StrToInt(ConsDesde.Text));
    Parametros.Add('ConsecFin',StrToInt(ConsHasta.Text));


    CrearConjunto(cdDatos,'rep_cotizacionmaterialsinoc',ccSelect);
    CargarDatosFiltrados(cdDatos,Parametros);
    cdDatos.Open;

    if cdDatos.RecordCount = 0 then  // No hay registros
    begin
      cdDatos.Close;
      EliminarConjunto(cdDatos);
      raise Exception.Create('No hay documentos con los criterios especificados.');
    end;

    CrearConjunto(cdDetalle,'rep_cotizacionmaterialsinocdetalle',ccSelect);
    CargarDatosFiltrados(cdDetalle,Parametros);
    cdDetalle.Open;

    parametros.Free;

    //predefiniendo estilo
    frxReporte.PreviewOptions.MDIChild := False ;
    frxReporte.PreviewOptions.Modal := True ;
    frxReporte.PreviewOptions.ShowCaptions := False ;
    frxReporte.Previewoptions.ZoomMode := zmPageWidth ;

    //Asignar archivo
    frxReporte.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'CotizacionMaterialesSinOC.fr3');

    clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
    clientModule1.cdOrganizacion.Prior;

    //pasar variable a reporte
    frxReporte.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    frxReporte.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    frxReporte.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
    frxReporte.Variables['tipo'] := QuotedStr('salida');
    clientModule1.cdOrganizacion.Last;
    frxReporte.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

    //mostrar reporte
    frxReporte.ShowReport(False);
    cdDetalle.close;
    EliminarConjunto(cdDetalle.ProviderName);
    cdDatos.close;
    EliminarConjunto(cdDatos.ProviderName);
  except
    on e: exception do
    begin
      InteliDialog.ShowModal('ERROR','No se pudo generar el reporte.',
                          'El reporte no se pudo generar debido al siguiente error:' + #10 + e.Message,
                          mtError, [mbOK],0);
    end;
  end;


end;

procedure TFrmReporteCotSinOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Globales.SetValue('OrgPredeterminada',CmbConvenio.KeyValue);
end;

procedure TFrmReporteCotSinOC.FormShow(Sender: TObject);
Var
  Hoy: TDate;
begin
  ClientModule1.ComponentColor(self);
  Hoy := now;
  FechaDesde.Date := incday(Hoy,-1 * (DayOfTheMonth(Hoy) - 1));
  FechaHasta.Date := Hoy;
  CargarConvenios;
end;

procedure TFrmReporteCotSinOC.FiltroCombo;
begin

end;

procedure TFrmReporteCotSinOC.EstableceIndex(Data:TclientDataset;Combo:TDBLookupComboBox);
begin
  try
    if Length(Trim(globales.Elemento('OrgPredeterminada').AsString) ) > 0 then
    begin
      Data.Locate('idorganizacion',Globales.Elemento('OrgPredeterminada').AsString,[]);
      Combo.KeyValue := Data.FieldByName('idorganizacion').AsInteger;
    end
    else
    begin
      Data.First;
      Combo.KeyValue := Data.FieldByName('idorganizacion').AsInteger;
      Globales.SetValue('OrgPredeterminada',Data.FieldByName('idorganizacion').AsInteger);
    end;
  except
    ;
  end;
end;

procedure TFrmReporteCotSinOC.CargarConvenios(Refrescar: Boolean);
var
  i: integer;
begin
  // Cargar los datos de los convenios si se indica
  try
    if Refrescar then
    begin
      ClientModule1.CdEstructuraOrganizacion.Refresh;
      cdConvenio.EmptyDataSet;
    end
    else
    begin
      cdConvenio.FieldDefs.Clear;
      //copiando estructura
      cdConvenio.Close;
      for i := 0 to ClientModule1.CdEstructuraOrganizacion.FieldCount -1 do
      begin
        cdConvenio.FieldDefs.Add(ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Name,ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].DataType,ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Size,False);
      end;
      cdConvenio.CreateDataSet;
    end;

    //copiando datos
    if cdConvenio.State <> dsBrowse then
      cdConvenio.Open;

    //buscar todos los hijos
    ClientModule1.CdEstructuraOrganizacion.Filtered := False;
    ClientModule1.CdEstructuraOrganizacion.Filter := ' padre = ' + ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString;
    ClientModule1.CdEstructuraOrganizacion.Filtered  := True;

    //si no encuentra hijos mostrar la accesada
    if ClientModule1.CdEstructuraOrganizacion.RecordCount = 0 then
    begin
      ClientModule1.CdEstructuraOrganizacion.Filtered := False;
      ClientModule1.CdEstructuraOrganizacion.Filter := ' idorganizacion = ' + ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString;
      ClientModule1.CdEstructuraOrganizacion.Filtered  := True;
    end;

    //añadiendo los q estan filtrados
    ClientModule1.CdEstructuraOrganizacion.First;
    while not ClientModule1.CdEstructuraOrganizacion.Eof do
    begin
      cdConvenio.Append;
      with ClientModule1.CdEstructuraOrganizacion do
      begin
        for i := 0 to FieldCount-1 do
        begin
          cdConvenio.FieldByName(ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Name).AsVariant := ClientModule1.CdEstructuraOrganizacion.FieldByName(ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Name).AsVariant;
        end;
      end;
      cdConvenio.Post;
      ClientModule1.CdEstructuraOrganizacion.Next;
    end;

    ClientModule1.CdEstructuraOrganizacion.Filtered := False;

    EstableceIndex(cdConvenio,cmbConvenio);

  finally
    ;
  end;
end;
end.
