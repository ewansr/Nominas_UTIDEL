unit UTFrmSalidasMan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvOfficeButtons, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls, UTFrmDetalleDocs, NxDBColumns, NxColumns, AdvCombo,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvEdit, frxClass,
  frxDBSet, DBCtrls, Spin, AdvProgressBar;

type
  TFrmSalidasMan = class(TFrmCatalogoDoc)
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
    frxReport1: TfrxReport;
    dsSalidas: TDataSource;
    frdsSalidas: TfrxDBDataset;
    cdSalidasRp: TClientDataSet;
    cdSalidasDetalleRp: TClientDataSet;
    frdsSalidasDetalle: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
  end;

var
  FrmSalidasMan: TFrmSalidasMan;

implementation

uses
  UInteliDialog, UTFrmSalidaManDetalle, ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSalidasMan.BtnAddClick(Sender: TObject);
Var
  cdTipo: TClientDataSet;
  Cuantos: Integer;
begin
  cdTipo := TClientDataSet.Create(nil);
  CrearConjunto(CdTipo, 'alm_tipomovimiento', ccCatalog);
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
    inherited;
end;

procedure TFrmSalidasMan.BtnPrintClick(Sender: TObject);
var
  NombreReporte: String;
  memDetalle: TClientDataSet;
  i: Integer;
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
        memDetalle.FieldDefs := cdSalidasDetalleRp.FieldDefs;
      //end;

    //      NombreReporte := ExtractFilePath(ParamStr(0)) + 'Manifiesto embarque-desembarque.fr3';

      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'Manifiesto embarque-desembarque.fr3');

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
  End;
end;

procedure TFrmSalidasMan.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
  estado: string;
begin
  inherited;
  Parametros := TParamFilter.Create;
  //Parametros.Add('idorganizacion', clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger);
  Parametros.Add('idorganizacion', cmbConvenio.KeyValue);
  Parametros.Add('manifiesto', 'S');
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
  if estado <> '' then
    Parametros.Add('estado', estado);

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;


function TFrmSalidasMan.createPopUpDetalle;
begin
  Result := TFrmSalidaManDetalle.Create(self);
end;

procedure TFrmSalidasMan.FormCreate(Sender: TObject);
var
  cdTipoMov: TClientDataSet;
begin
  ModuloPantalla := 'SALIDASMANIFIESTO';
  Documento := 'SALIDA';  // Indicar el documento para obtener la plantilla para la serie
  inherited;
  // meter al combobox los tipos de movimientos de entrada posibles
  cdTipoMov := TClientDataSet.Create(nil);
  CrearConjunto(cdTipoMov,'alm_tipomovimiento',ccCatalog);
  CargarDatosFiltrados(cdTipoMov,'tipomovimiento,manifiesto',[Documento,'S']);
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

procedure TFrmSalidasMan.FormShow(Sender: TObject);
begin
  inherited;
  dtpFiltroFechaIni.Date := Now;
  dtpFiltroFechaFin.Date := Now;
end;

procedure TFrmSalidasMan.frxReport1GetValue(const VarName: string;
  var Value: Variant);
const
  NombreMes: Array[1..12] Of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE');
var
  Anio, Mes, Dia: Word;
begin
  if AnsiCompareText(VarName, 'CADENAFECHA') = 0 then
  begin
    DecodeDate(cdSalidasRp.FieldByName('Fecha').AsDateTime, Anio, Mes, Dia);
    Value := IntToStr(Dia) + ' DE ' + NombreMes[Mes] + ' DEL ' + IntToStr(Anio);
  end;
end;

procedure TFrmSalidasMan.Inicializar;
begin
  keyField := 'idsalida';
  entityName := 'alm_salida';
  codeField := 'serie';
end;

end.
