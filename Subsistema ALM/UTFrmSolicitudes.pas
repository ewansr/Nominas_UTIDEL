unit UTFrmSolicitudes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, PngSpeedButton, UTfrmDetalleDocs, NxDBColumns,
  NxColumns, AdvShapeButton, frxClass, frxDBSet, uIntelidialog, AdvEdit, Mask,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvOfficeButtons,
  AdvCombo, JvComponentBase, JvEnterTab, JvMemoryDataset, ComCtrls, frxExportPDF,
  DBCtrls, Spin, AdvProgressBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  TFrmSolicitudes = class(TFrmCatalogoDoc)
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
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    EditFReferencia: TAdvEdit;
    EditFDepartamento: TAdvEdit;
    NxDBTextColumn4: TNxDBTextColumn;
    GenerarPendientes1: TMenuItem;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure frxReporteSolicitudDetalleGetValue(const VarName: string;
      var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure edtFiltroFolioKeyPress(Sender: TObject; var Key: Char);
    procedure chkUsuarioClick(Sender: TObject);
    procedure cmbFiltroEstadoChange(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure GenerarPendientes1Click(Sender: TObject);
  private
    { Private declarations }
    ModoEdicion: boolean;
    procedure RegenerarSolicitud(Encabezado, Partidas: Boolean);
    procedure GenerarPendientes(Sol: Integer);
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
    PantallaReq: boolean;
  end;

var
  FrmSolicitudes: TFrmSolicitudes;

implementation

uses
  ClientModuleUnit1,Unit2,UTFrmSolicitudDetalle;
{$R *.dfm}

procedure TFrmSolicitudes.BtnAddClick(Sender: TObject);
begin
  ModoEdicion := true;
  inherited;
  Btnrefresh.click;
end;


procedure TFrmSolicitudes.BtnDeleteClick(Sender: TObject);
var
  estadoErr: string;
begin
  inherited
end;

procedure TFrmSolicitudes.BtnEditClick(Sender: TObject);
var
  estadoErr: string;
begin
  if PantallaReq then
    ModoEdicion := false
  else
    ModoEdicion := cdDatos.FieldByName('estado').AsString = 'pendiente';
  inherited ;
  BtnRefresh.click;
end;

procedure TFrmSolicitudes.BtnPrintClick(Sender: TObject);
Var
  TipoMov: Variant;
  TituloConvenio,CodigoConvenio, Titulo, Pie, Sucursal: string;
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

    if AnsiCompareText(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex],'Para surtimiento') = 0 then
      TipoMov := 'surtir'
    else
      TipoMov := -1;

  //proceso inicia
    CrearConjunto(cdDatosDetalle, 'RepAlm_solicitud', providername, ccCatalog);
    CargarDatosFiltrados(cdDatosDetalle, 'idsolicitud,Estado', [CdDatos.FieldByName('idsolicitud').AsInteger,TipoMov]);
    cdDatosDetalle.Open;

    if cddatosdetalle.RecordCount < 1 then
      raise Exception.Create('La solicitud no contiene partidas a surtir');
  //termina proceso

    if (LowerCase(cdDatos.FieldByName('estado').AsString) = 'pendiente') or
       (LowerCase(cdDatos.FieldByName('estado').AsString) = 'validado') then
    begin
      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\SolicitudDetalle.fr3') then
      begin
      Raise Exception.Create('No he podido localizar el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName)+'Reportes\SolicitudDetalle.fr3' );
      end;
    end
    else

    if (LowerCase(cdDatos.FieldByName('estado').AsString) <> 'pendiente') or
       (LowerCase(cdDatos.FieldByName('estado').AsString) <> 'validado') or
       (AnsiCompareText(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex],'Para surtimiento') =0) then
    begin
      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\SolicitudReq.fr3') then
      begin
        Raise Exception.Create('No he podido localizar el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName) + 'Reportes\SolicitudReq.fr3');
      end;
    end;

    FrxReporteSolicitudDetalle.PreviewOptions.MDIChild := False ;
    FrxReporteSolicitudDetalle.PreviewOptions.Modal := True ;
    FrxReporteSolicitudDetalle.PreviewOptions.ShowCaptions := False ;
    FrxReporteSolicitudDetalle.Previewoptions.ZoomMode := zmPageWidth ;

    if (LowerCase(cdDatos.FieldByName('estado').AsString) = 'pendiente') or
       (LowerCase(cdDatos.FieldByName('estado').AsString) = 'validado') {or
       (AnsiCompareText(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex],'Para surtimiento') =0)} then  // La pantalla es la de solicitudes
      FrxReporteSolicitudDetalle.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'SolicitudDetalle.fr3')
    else
      if (cdDatos.FieldByName('estado').AsString = 'verificado') or (cdDatos.FieldByName('estado').AsString = 'requisitado') or
        (AnsiCompareText(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex],'Para surtimiento') =0) then
        FrxReporteSolicitudDetalle.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'SolicitudReq.fr3')
      else
        Raise Exception.Create('La solicitud tiene que estar pendiente, validado o verificada para poder imprimir la requisición.');


//    primero cargar el subtitulo o nivel hijo
    if ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',cdDatos.FieldByName('idorganizacion').AsString,[]) then
    begin
      //si encuentra hijos entonces establecer titulo y subtitulo
      CodigoConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('codigoorganizacion').AsString;
      TituloConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;
      ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString,[]);
    end;
      Titulo   := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;
      Pie      := ClientModule1.CdEstructuraOrganizacion.FieldByName('domiciliofiscalorg').AsString;
      Sucursal := ClientModule1.CdEstructuraOrganizacion.FieldByName('domicilioorg').AsString;

    FrxReporteSolicitudDetalle.Variables['titulo'] := QuotedStr(Titulo);
    FrxReporteSolicitudDetalle.Variables['codigoconvenio'] := QuotedStr(CodigoConvenio);
    FrxReporteSolicitudDetalle.Variables['tituloconvenio'] := QuotedStr(TituloConvenio);
    FrxReporteSolicitudDetalle.Variables['pie'] := QuotedStr(Pie);
    FrxReporteSolicitudDetalle.Variables['sucursal'] := QuotedStr(Sucursal);

    if AnsiCompareText(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex],'Para surtimiento') = 0 then
      FrxReporteSolicitudDetalle.Variables['TipoRep'] := QuotedStr('SURTIR');

    FrxReporteSolicitudDetalle.ShowReport(False);
    cdDatosDetalle.Close;
    EliminarConjunto(cdDatosDetalle.ProviderName);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir por el siguiente motivo.',e.message, mtInformation, [mbOk], 0);
      cdDatosDetalle.Close;
      EliminarConjunto(cdDatosDetalle.ProviderName);
      exit;
    end;
  End;

end;

procedure TFrmSolicitudes.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
  estado: string;
begin
  inherited;
  Parametros := TParamFilter.Create;
  Parametros.Add('idorganizacion', cdConvenio.FieldByName('idorganizacion').AsInteger);
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

  if Trim(EditFDepartamento.Text) <> '' then
    Parametros.Add('codigodepartamento', '%' + Trim(EditFDepartamento.Text) );

  if chkFecha.Checked then
  begin
    Parametros.Add('fechaini',ClientModule1.DatetoStrSql(dtpFiltroFechaIni.Date));
    Parametros.Add('fechafin',ClientModule1.DatetoStrSql(dtpFiltroFechaFin.Date));
  end;

  estado := Trim(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex]);
  if estado <> '' then
    if AnsiCompareText(estado,'Para surtimiento') = 0 then
      Parametros.Add('estado', 'surtir')
    else
      Parametros.Add('estado', estado);

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmSolicitudes.BtnSelectClick(Sender: TObject);
begin
  TRY
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'REGENERAR') then
      Exit;
    RegenerarSolicitud(True,True);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede regenerar el documento por el siguiente motivo.',e.message, mtInformation, [mbOk], 0);
    end;
  End;
end;

procedure TFrmSolicitudes.RegenerarSolicitud(Encabezado, Partidas: Boolean);
//por parametros decidios si se regenera solo la solicitud o tambien sus partidas
var
  CdEncabezado,CdDetalle, CdPartidas, CdAux: TClientDataSet;
  OldCursor: TCursor;
  Procesos: string;
begin
  try
    Procesos := '';
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if Encabezado then
      begin
        CdEncabezado := TClientDataSet.Create(self);
        if not CrearConjunto(CdEncabezado,'alm_solicitud',ccUpdate) then
          raise InteligentConnection.Create('Error al hacer la consulta del encabezado de solicitud.');
        CargarDatosFiltrados(CdEncabezado,'idsolicitud',[cdDatos.FieldByName('idsolicitud').AsInteger]);
        CdEncabezado.Open;
        if CdEncabezado.RecordCount = 1 then
        begin
          CdEncabezado.Edit;
          CdEncabezado.FieldValues['tituloempresa']      := ClientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString;
          CdEncabezado.FieldValues['pie']                := ClientModule1.cdOrganizacion.FieldByName('domiciliofiscalorg').AsString;
          CdEncabezado.FieldValues['centrotrabajo']      := ClientModule1.cdOrganizacion.FieldByName('domicilioorg').AsString;
          try
            try
              CdAux := TClientDataSet.Create(self);
              if not CrearConjunto(CdAux,'nuc_departamento',ccCatalog) then
                raise InteligentWarning.Create('Error al Regenerar el departamento.');
              CargarDatosFiltrados(CdAux,'iddepartamento',[cdDatos.FieldByName('iddepartamento').AsInteger]);
              CdAux.Open;
              if CdAux.RecordCount <> 1 then
                raise InteligentWarning.Create('No se encontro el registro de departamento.');
              CdEncabezado.FieldValues['codigodepartamento'] := CdAux.FieldValues['codigodepartamento'] ;
            finally
              CdAux.Close;
              EliminarConjunto(CdAux);
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;
          try
            try
              CdAux := TClientDataSet.Create(self);
              if not CrearConjunto(CdAux,'nuc_organizacion',ccCatalog) then
                raise InteligentWarning.Create('Error al Regenerar el convenio.');
              CargarDatosFiltrados(CdAux,'idorganizacion',[cdDatos.FieldByName('idorganizacion').AsInteger]);
              CdAux.Open;
              if CdAux.RecordCount <> 1 then
                raise InteligentWarning.Create('No se encontro el registro de convenio.');

              CdEncabezado.FieldValues['codigoconvenio'] := CdAux.FieldValues['codigoorganizacion'] ;
              CdEncabezado.FieldValues['tituloconvenio'] := CdAux.FieldValues['tituloorganizacion'];
            finally
              CdAux.Close;
              EliminarConjunto(CdAux);
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;
          try
            try
              CdAux := TClientDataSet.Create(self);
              if not CrearConjunto(CdAux,'usuariopersonal',ccCatalog) then
                raise InteligentWarning.Create('Error al Regenerar el usuario.');
              CargarDatosFiltrados(CdAux,'idusuario',[cdDatos.FieldByName('idusuario').AsInteger]);
              CdAux.Open;
              try
                if CdAux.RecordCount <> 1 then
                  raise InteligentWarning.Create('No se encontro el usuario.');
                CdEncabezado.FieldValues['nombreusuario'] := CdAux.FieldValues['usuarionombre'];
                CdEncabezado.FieldValues['cargousuario']  := CdAux.FieldValues['usuariocargo'];
                CdAux.Close;
              EXCEPT
                on e:InteligentWarning do
                  CdAux.Close;
              end;
              CargarDatosFiltrados(CdAux,'idusuario',[cdDatos.FieldByName('idvalido').AsInteger]);
              CdAux.Open;
              try
                if CdAux.RecordCount <> 1 then
                  raise InteligentWarning.Create('No se encontro el usuario.');
                CdEncabezado.FieldValues['nombrevalida'] := CdAux.FieldValues['usuarionombre'];
                CdEncabezado.FieldValues['cargovalida']  := CdAux.FieldValues['usuariocargo'];
                CdAux.Close;
              EXCEPT
                on e:InteligentWarning do
                  CdAux.Close;
              end;
              CargarDatosFiltrados(CdAux,'idusuario',[cdDatos.FieldByName('idverifico').AsInteger]);
              CdAux.Open;
              try
                if CdAux.RecordCount <> 1 then
                  raise InteligentWarning.Create('No se encontro el usuario.');
                CdEncabezado.FieldValues['nombreverifica'] := CdAux.FieldValues['usuarionombre'];
                CdEncabezado.FieldValues['cargoverifica']  := CdAux.FieldValues['usuariocargo'];
                CdAux.Close;
              EXCEPT
                on e:InteligentWarning do
                  CdAux.Close;
              end;
              Procesos := 'Encabezado de solicitud';
            finally
              CdAux.Close;
              EliminarConjunto(CdAux);
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;
        end;
        CdEncabezado.Post;
        CdEncabezado.ApplyUpdates(-1);
        CdEncabezado.Close;
        EliminarConjunto(CdEncabezado);
        FreeAndNil(CdEncabezado);
      end;
      if Partidas then
      begin
        try
          CdDetalle := TClientDataSet.Create(self);
          if not CrearConjunto(CdDetalle,'alm_solicituddetalle',ccCatalog) then
            raise InteligentConnection.Create('Error al hacer la consulta del encabezado de solicitud.');
          CargarDatosFiltrados(CdDetalle,'idsolicitud',[cdDatos.FieldByName('idsolicitud').AsInteger]);
          CdDetalle.Open;

          CdDetalle.First;
          while not CdDetalle.Eof do
          begin
            try
              CdPartidas := TClientDataSet.Create(Self);

              if not CrearConjunto(CdPartidas,'alm_solicituddetalle',ccUpdate) then
                raise InteligentConnection.Create('Error al hacer la consulta de la partida.');
              CargarDatosFiltrados(CdPartidas,'idsolicituddetalle',[CdDetalle.FieldByName('idsolicituddetalle').AsInteger]);
              CdPartidas.Open;
              if CdPartidas.RecordCount = 1 then
              begin
                CdPartidas.Edit;
                try
                  try
                    CdAux := TClientDataSet.Create(self);
                    if not CrearConjunto(CdAux,'alm_articulo',ccCatalog) then
                      raise InteligentWarning.Create('Error al Regenerar la partida.');
                    CargarDatosFiltrados(CdAux,'idarticulo',[CdDetalle.FieldByName('idarticulo').AsInteger]);
                    CdAux.Open;
                    if CdAux.RecordCount <> 1 then
                      raise InteligentWarning.Create('No se encontro el registro de departamento.');
                    CdPartidas.FieldValues['codigoarticulo'] := CdAux.FieldValues['codigoarticulo'] ;
                    CdPartidas.FieldValues['tituloarticulo'] := CdAux.FieldValues['tituloarticulo'] ;
                    CdPartidas.FieldValues['codigounidad'] := CdAux.FieldValues['codigounidad'] ;
                    CdPartidas.FieldValues['titulodisciplina'] := CdAux.FieldValues['titulodisciplina'] ;
                    CdPartidas.FieldValues['descripcionarticulo'] := CdAux.FieldValues['descripcion'] ;
                  finally
                    CdAux.Close;
                    EliminarConjunto(CdAux);
                    FreeAndNil(CdAux);
                  end;
                except
                  ;
                end;
                CdPartidas.Post;
                CdPartidas.ApplyUpdates(-1);
              end;
            finally
              CdDetalle.Next;
            end;
          end;

        finally
          CdDetalle.Close;
          EliminarConjunto(CdDetalle);
          FreeAndNil(CdDetalle);
        end;
        Procesos := Procesos + ', Partidas de la solicitud.';
      end;
      InteliDialog.ShowModal('Se regeneró correctamente lo siguiente.',Procesos, mtInformation, [mbOk], 0);
    except
      on e: InteligentConnection do
        InteliDialog.ShowModal('No se puede Regenerar el documento.',e.message, mtInformation, [mbOk], 0);
    end;

  finally
    Screen.Cursor := OldCursor;
  end;
end;

procedure TFrmSolicitudes.chkUsuarioClick(Sender: TObject);
begin
  BtnSearch.Click;
end;

procedure TFrmSolicitudes.cmbFiltroEstadoChange(Sender: TObject);
begin
    BtnSearch.Click;
end;

function TFrmSolicitudes.createPopUpDetalle: TFrmDetalleDocs;
Var
  tForm: TFrmSolicitudDetalle;
begin
  tForm := TFrmSolicitudDetalle.Create(nil);
  // Checar los estados del documento para permitir o no la edición
  tForm.ModoEdicion := ModoEdicion;
  result := tForm;
end;

procedure TFrmSolicitudes.edtFiltroFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BtnSearch.Click;

end;

procedure TFrmSolicitudes.FormCreate(Sender: TObject);
begin
  if TRIM(ModuloPantalla) = '' then
    ModuloPantalla := 'SOLICITUDES';
  Documento := 'SOLICITUD';
  PantallaReq := false;

  inherited;

end;

procedure TFrmSolicitudes.FormShow(Sender: TObject);
begin
  Try
    inherited;
    dtpFiltroFechaIni.Date := Now;
    dtpFiltroFechaFin.Date := Now;
  Except
    ;
  End;
end;

procedure TFrmSolicitudes.frxReporteSolicitudDetalleGetValue(
  const VarName: string; var Value: Variant);
begin
  {
 organizacion
 sub
 contrato
  }
end;

procedure TFrmSolicitudes.GenerarPendientes1Click(Sender: TObject);
begin
  ModoEdicion := true;
  GenerarPendientes(cdDatos.FieldByName('idsolicitud').AsInteger);
end;

procedure TFrmSolicitudes.GenerarPendientes(Sol:Integer);
var
  cdUpt: TClientDataSet;
  popUp: TFrmDetalleDocs;
  CdDetalle: Tclientdataset;
  i: integer;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'AGREGAR') then
    Exit;
  Try
    CdDetalle := TClientDataSet.Create(nil);
    CrearConjunto(CdDetalle,'alm_solicituddetalle',ccUpdate);
    CargarDatosFiltrados(CdDetalle,'idsolicitud',[Sol]);
    CdDetalle.Open;
    CdDetalle.Filtered := false;
    CdDetalle.Filter := 'cantidad > cantidadvalidada and estado <> '+QuotedStr('surtido') ;
    CdDetalle.Filtered := true;
    if CdDetalle.RecordCount > 0 then
    begin
      cdUpt := TClientDataSet.Create(Nil);
      // Acceder en modo update a los datos
      Try
        CrearConjunto(cdUpt, entityName, providerNameUpt, ccUpdate);
        CargarDatosFiltrados(cdUpt, keyField, [-9]);
        // Obtener un conjunto de datos vacíos
        cdUpt.Open;
        if cdUpt.RecordCount = 0 then
        begin
          popUp := createPopUpDetalle;
          cdUpt.Append;
          cdUpt.FieldByName(keyField).AsInteger := 0;
          popUp.dsDatos.DataSet := cdUpt;
          popUp.dsConvenio.DataSet := cdConvenio;
          popup.keyParentField := keyfield;
          popup.Caption := self.Caption;
          popUp.CadenaDoc := CadenaDoc;
          popUp.DigitosDoc := DigitosDoc;
          CdDetalle.First;
          popUp.mdDetalle.LoadFromDataSet(CdDetalle,CdDetalle.RecordCount,JvMemoryDataset.lmCopy,true);

          popUp.mdDetalle.ApplyChanges;
          popUp.mdDetalle.First;
          while not popUp.mdDetalle.Eof do
          begin
            popUp.mdDetalle.Edit;
            popUp.mdDetalle.FieldByName('idsolicitud').AsInteger := 0;
            popUp.mdDetalle.FieldByName('idsolicituddetalle').AsInteger := 0;
            popUp.mdDetalle.FieldByName('estado').asstring := 'pendiente';
            popUp.mdDetalle.FieldByName('cantidadvalidada').AsInteger := 0;
            popUp.mdDetalle.FieldByName('cantidadverificada').AsInteger := 0;
            popUp.mdDetalle.FieldByName('cantidadsurtida').AsInteger := 0;
            popUp.mdDetalle.FieldByName('cantidad').AsFloat :=
            CdDetalle.FieldByName('cantidad').AsFloat - CdDetalle.FieldByName('cantidadvalidada').AsFloat ;
            popUp.mdDetalle.FieldByName('observaciones').asstring := 'Regenerado desde la solicitud '+cddatos.FieldByName('serie').AsString+' con fecha requerida de '+cddatos.FieldByName('fecharequerida').AsString;
            popUp.mdDetalle.FieldByName('fecharequerida').AsDateTime := Now;
            popUp.mdDetalle.Post;
            popUp.mdDetalle.Next;
          end;
          //popUp.ModoPendientes := True;
          popUp.ShowModal;
        end
        else
        begin
          raise InteligentException.CreateByCode(3, ['!' + entityName +'']);
        end;
      Finally
        EliminarConjunto(providerNameUpt);
        popUp.Free;
      End;
    end;
  Except
    on e: exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmSolicitudes.Inicializar;
begin
  keyField := 'idsolicitud';
  entityName := 'alm_solicitud';
  codeField := 'serie';
end;

end.
