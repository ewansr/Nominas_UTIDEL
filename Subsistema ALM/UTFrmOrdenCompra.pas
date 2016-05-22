unit UTFrmOrdenCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, AdvShapeButton, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, AdvOfficeButtons, Buttons, PngSpeedButton, JvExControls, JvLabel,
  ExtCtrls, AdvEdit, AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker,
  AdvCombo, NxDBColumns, NxColumns,UTfrmDetalleDocs, frxClass, frxDBSet, DBCtrls,
  Spin, AdvProgressBar,nuc_genericclasses;

type
  TFrmOrdenCompra = class(TFrmCatalogoDoc)
    cmbFiltroEstado: TAdvComboBox;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    edtFiltroFolio: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    btnEntrada: TAdvShapeButton;
    frxDBOC: TfrxDBDataset;
    cdOC: TClientDataSet;
    frxReport1: TfrxReport;
    CdOCdetalle: TClientDataSet;
    frdsOCdetalle: TfrxDBDataset;

    procedure BtnSearchClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEntradaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    ModoEdicion: boolean;
    { Private declarations }
  protected
    function createPopUpDetalle: TfrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
  end;

var
  FrmOrdenCompra: TFrmOrdenCompra;

implementation

uses
  ClientModuleUnit1,Unit2,UTFrmOrdenCompraDetalle,UTFrmOrdenCompraEntrada,
  UInteliDialog;
{$R *.dfm}

procedure TFrmOrdenCompra.BtnEditClick(Sender: TObject);
var
  estadoErr: string;
begin
  ModoEdicion := true;
  inherited;

end;

procedure TFrmOrdenCompra.btnEntradaClick(Sender: TObject);
Var
  frmTemp: TFrmOrdenCompraEntrada;
  cdOCEstado: TClientDataSet;
  ProviderName: String;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'GENERARENTRADA') then
    Exit;

  if not cdDatos.eof then
  begin
    if cdDatos.FieldByName('estado').AsString = 'activo' then
      if InteliDialog.ShowModal('ERROR','No se puede generar la entrada.',
        'No se puede generar una entrada a partir de una orden de compra' + #10 +
        'que no ha sido marcada como enviada.' + #10 +
        '¿Marcar como enviada ahora?',mtError, [mbYes,mbNo],0) = mrYes Then
      begin
        cdOCEstado := TClientDataSet.Create(nil);
        CrearConjunto(cdOCEstado,'alm_ordencompra',ProviderName,'LOCATE');
        CargarDatosFiltrados(cdOCEstado,'idoc',[cdDatos.FieldByName('idoc').AsInteger]);
        cdOCEstado.Open;
        cdOCEstado.ReadOnly := False;
        cdOCEstado.First;
        cdOCEstado.Edit;
        cdOCEstado.FieldByName('estado').AsString := 'enviado';
        cdOCEstado.Post;
        cdOCEstado.ApplyUpdates(-9);
        cdOCEstado.Close;
        EliminarConjunto(cdOCEstado.ProviderName);
        cdOCEstado.Free;
      end
      else
        Exit;

    frmTemp := TFrmOrdenCompraEntrada.Create(nil);
    frmTemp.dsDatos.DataSet := cdDatos;
    frmTemp.keyParentField := keyfield;
    frmTemp.CadenaDoc := CadenaDoc;
    frmTemp.DigitosDoc := DigitosDoc;
    frmTemp.ShowModal;
    frmTemp.Free;
    cdDatos.Refresh;
  end
  else
    InteliDialog.ShowModal('ERROR','No hay nada seleccionado.','No existe un registro seleccionado ' +
      'para aplicar esta acción.',mtError, [mbOK],0);
end;

procedure TFrmOrdenCompra.BtnPrintClick(Sender: TObject);
var
  nombres,puestos, codigoconvenio, tituloconvenio, titulo, sucursal, LetraNum: string;
  ListNombres, ListPuestos: TStringList;
  CantidadT:Real;
begin
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registros.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

    CrearConjunto(CdOC, 'RepOrdenCompra', ccCatalog);
    CargarDatosFiltrados(CdOC, 'idoc', [cdDatos.FieldByName('idoc').AsInteger]);
    CdOC.Open;


    CrearConjunto(CdOCdetalle, 'RepOrdenCompra', ccSelect);
    CargarDatosFiltrados(CdOCdetalle, 'Idoc', [cdDatos.FieldByName('Idoc').AsInteger]);
    CdOCdetalle.Open;

{    CrearConjunto(cdCotizacionDetalleRp, 'alm_cotizaciondetalle', ccCatalog);
    cdCotizacionDetalleRp.Open;     }


    if Not FileExists(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'Ordencompra.fr3') then
    begin
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                             ExtractFilePath(Application.ExeName)+'\Reportes\' + 'Ordencompra.fr3' );
    end;

    frxReport1.PreviewOptions.MDIChild := False ;
    frxReport1.PreviewOptions.Modal := True ;
    frxReport1.PreviewOptions.ShowCaptions := False ;
    frxReport1.Previewoptions.ZoomMode := zmPageWidth ;
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'Ordencompra.fr3') ;

    ListNombres := TStringList.Create;
    ListPuestos := TStringList.Create;

    //lOCALIZANDO FlRMANTES
{    if (length(Trim(cdDatos.FieldByName('firmanombre').AsString)) > 0) and
       (length(Trim(cdDatos.FieldByName('firmapuesto').AsString)) > 0) then
    begin
      nombres := cdDatos.FieldByName('firmanombre').AsString;
      puestos := cdDatos.FieldByName('firmapuesto').AsString;

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
    end;        }



    //nueva forma de enviar variables a fast report, declarando las variables en el fr3
    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);


//    primero cargar el subtitulo o nivel hijo
    if ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',cdDatos.FieldByName('idorganizacion').AsString,[]) then
    begin
      //si encuentra hijos entonces establecer titulo y subtitulo
      CodigoConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('codigoorganizacion').AsString;
      TituloConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;
      ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString,[]);
    end;
      Titulo   := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;
      Sucursal := ClientModule1.CdEstructuraOrganizacion.FieldByName('domicilioorg').AsString;

    frxReport1.Variables['organizacion'] := QuotedStr(Titulo);
    frxReport1.Variables['contrato'] := QuotedStr(CodigoConvenio);
    frxReport1.Variables['tituloconvenio'] := QuotedStr(TituloConvenio);
    frxReport1.Variables['rfc'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('rfc').AsString);
    frxReport1.Variables['tituloorganizacion'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString);


    clientModule1.cdOrganizacion.First;
//    frxReport1.Variables['rfc'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('rfc').AsString);
    frxReport1.Variables['domiciliofiscalorg'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('domiciliofiscalorg').AsString);
    frxReport1.Variables['domicilioorg'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('domicilioorg').AsString);
    frxReport1.Variables['telefono1'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('telefono1').AsString);


    CantidadT := 0;
    CdOCdetalle.First;
    while not CdOCdetalle.Eof  do
    begin
      CantidadT := CantidadT + CdOCdetalle.FieldByName('costo').AsFloat+(CdOCdetalle.FieldByName('costo').AsFloat*(CdOCdetalle.FieldByName('tasa').AsFloat/100));
      CdOCdetalle.Next;
    end;
    try
    letranum := xNumerosToLletres(FloatToCurr(CantidadT));
    except
      letranum := 'Error al pasar a letras la cantidad';
    end;
    frxReport1.Variables['numerotexto'] := QuotedStr(letranum);


    clientModule1.cdOrganizacion.Last;
//    frxReport1.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

    clientModule1.cdOrganizacion.Prior;
//    frxReport1.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    frxReport1.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
//    frxReport1.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);

{    if (ListNombres.Count > 0) and (ListPuestos.Count > 0) then
    begin


      frxReport1.Variables['solicitonombre'] := QuotedStr(AnsiReplaceStr( ListNombres[0], '_', ' ' ));
      frxReport1.Variables['solicitopuesto'] := QuotedStr(AnsiReplaceStr( ListPuestos[0], '_', ' ' ));
      if ListPuestos.Count > 1 then
      begin
        frxReport1.Variables['autorizonombre'] := QuotedStr(AnsiReplaceStr( ListNombres[1], '_', ' ' ));
        frxReport1.Variables['autorizopuesto'] := QuotedStr(AnsiReplaceStr( ListPuestos[1], '_', ' ' ));
      end;

    end
    else
    begin
      frxReport1.Variables['solicitonombre'] := QuotedStr(' ');
      frxReport1.Variables['solicitopuesto'] := QuotedStr(' ');
      frxReport1.Variables['autorizonombre'] := QuotedStr(' ');
      frxReport1.Variables['autorizopuesto'] := QuotedStr(' ');
    end;   }





    frxReport1.ShowReport(False);

    CdOCdetalle.Close;
    CdOC.Close;
    EliminarConjunto([CdOCdetalle.ProviderName, CdOc.ProviderName]);
    ListNombres.Free;
    ListPuestos.Free;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      CdOCdetalle.Close;
      EliminarConjunto([CdOCdetalle.ProviderName, CdOc.ProviderName]);
      ListNombres.Free;
      ListPuestos.Free;
    end;
  End;
end;

procedure TFrmOrdenCompra.BtnSearchClick(Sender: TObject);
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
  DBGridPrincipal.Columns.ResizeColumns();
end;

function TFrmOrdenCompra.createPopUpDetalle: TfrmDetalleDocs;
Var
  tForm: TFrmOrdenCompraDetalle;
begin
  tForm := TFrmOrdenCompraDetalle.Create(nil);
  // Checar los estados del documento para permitir o no la edición
  tForm.ModoEdicion := ModoEdicion;
  result := tForm;
end;

procedure TFrmOrdenCompra.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'ORDENESCOMPRA';
  Documento := 'ENTRADA';
  inherited;
end;

procedure TFrmOrdenCompra.FormShow(Sender: TObject);
begin
  ClientModule1.RastrearGrids(Self);
  ClientModule1.ComponentColor(Self);
  dtpFiltroFechaIni.Date := Now - 30;
  dtpFiltroFechaFin.Date := Now;
  inherited;

  chkUsuario.Visible := ClientModule1.LeePermisos(ModuloPantalla,'VERDOCUMENTOS');


end;

procedure TFrmOrdenCompra.Inicializar;
begin
  keyField := 'idoc';
  entityName := 'alm_ordencompra';
  codeField := 'serie';
end;
end.
