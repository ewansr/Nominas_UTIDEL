unit UTFrmVerificacionSolicitud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvEdit, StdCtrls, Buttons, PngSpeedButton, JvExControls, JvLabel,
  AdvShapeButton, NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, ExtCtrls, IWVCLBaseControl, IWBaseControl, URegistro,
  IWBaseHTMLControl, IWControl, IWCompLabel, IWDBStdCtrls, DB, Mask, DBCtrls,
  DBClient, UInteliDialog, Menus, NxColumnClasses, NxGrid;

type
  TFrmVerificacionSolicitud = class(TForm)
    PanelPrincipal: TPanel;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    BtnRefresh: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    PanelFiltro: TPanel;
    dsOrganizacion: TDataSource;
    cdNivelespred: TClientDataSet;
    dsNivelespred: TDataSource;
    CdDatos: TClientDataSet;
    dsDatos: TDataSource;
    GroupBoxFiltro: TGroupBox;
    CbOrganizacion: TDBLookupComboBox;
    BtnEdit: TAdvShapeButton;
    cbbEstado: TComboBox;
    BtnCancelar: TAdvShapeButton;
    pmPrincipal: TPopupMenu;
    Verificar1: TMenuItem;
    Recargar1: TMenuItem;
    Cancelar1: TMenuItem;
    BtnSearch: TAdvShapeButton;
    NGDatos: TNextGrid;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure cbbEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Verificar1Click(Sender: TObject);
    procedure Recargar1Click(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure NGDatosCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NGDatosCellClick(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
    providername, PNSolicitud : string;
    ModuloPantalla: string;
    function verificar(cliente: TClientDataset; solicitud: integer ): Boolean ;
    function Cancelar(solicitud: Integer): Boolean;
    procedure AccedeACoordenadas;
    procedure CargarGrid(Cli: Tclientdataset; Grid: TNextGrid; campos: String);
  public
    { Public declarations }
  end;

var
  FrmVerificacionSolicitud: TFrmVerificacionSolicitud;

implementation

uses ClientModuleUnit1,Unit2, UTFrmVerificacionSDetalle;
{$R *.dfm}

procedure TFrmVerificacionSolicitud.BtnCancelarClick(Sender: TObject);
var
  esta: string;
  cdconsul: TClientDataSet;
begin

  if NGDatos.RowCount > 0 then
  begin
    try
      if not ClientModule1.LeePermisos(ModuloPantalla,'CANCELAR') then
        Exit;
      if CdDatos.RecordCount < 1 then
        raise Exception.Create('No hay datos.');
      try
        //buscamos cotizaciones para ver si se puede cancelar
        cdconsul := TClientDataSet.Create(nil);
        if not CrearConjunto(cdconsul,'alm_cotizacion',ccCatalog) then
          raise InteligentConnection.Create('Al conectarse con el servidor.');
        cdconsul.close;
        CargarDatosFiltrados(cdconsul,'idsolicitud',[cddatos.FieldByName('idsolicitud').AsInteger]);
        cdconsul.Open;

        esta := NGDatos.CellByName[8,NGDatos.SelectedRow].AsString;
        if (esta = 'pendiente') or (esta = 'validada') or (cdconsul.RecordCount < 1) then
        begin
          if not Cancelar(NGDatos.CellByName[0,NGDatos.SelectedRow].AsInteger) then
            raise Exception.Create('Al cancelar la solicitud '+NGDatos.CellByName[1,NGDatos.SelectedRow].AsString+'.')
          else
          begin
            btnrefresh.Click;
          end;

        end
        else
           raise Exception.Create('Solo se pueden cancelar solicitudes pendientes, validadas y que no tengan cotización.');
      finally
        cdconsul.close;
        EliminarConjunto(cdconsul);
        cdconsul.free;

      end;
    except
      on e:exception do
      begin
        InteliDialog.ShowModal('No se puede realizar el proceso.',e.message, mtInformation, [mbOk], 0);
        cdconsul.close;
        EliminarConjunto(cdconsul);
        cdconsul.free;
      end;
    end;
  end
  else
    InteliDialog.ShowModal('Información.','No hay registros.', mtInformation, [mbOk], 0);



end;

function TFrmVerificacionSolicitud.Cancelar(solicitud: Integer):Boolean;
var
  cdUpdate: TClientDataSet;
  PnCancel: string;
begin
  Result := False;
  cdUpdate := TClientDataSet.Create(self);
  cdUpdate.Active := False;
  cdUpdate.RemoteServer := ClientModule1.DSProviderConnection1;

  CrearConjunto(cdUpdate,'alm_solicitud',PNCancel,ccUpdate);
  CargarDatosFiltrados(cdUpdate,'idsolicitud',[solicitud]);
  cdUpdate.Open;
  if cdUpdate.RecordCount = 1 then
  begin
    cdUpdate.Edit;
    cdUpdate.FieldByName('estado').AsString := 'cancelado';
    cdUpdate.Post;
    cdUpdate.ApplyUpdates(-1);
    Result := True;
    InteliDialog.ShowModal('Información.','Solicitud cancelada correctamente.', mtInformation, [mbOk], 0);
  end
  else
    InteliDialog.ShowModal('Error','Al localizar solicitud.', mtInformation, [mbOk], 0);
  EliminarConjunto(PNCancel);
  cdUpdate.Free;
end;

procedure TFrmVerificacionSolicitud.Cancelar1Click(Sender: TObject);
begin
  BtnCancelarClick(BtnCancelar);
end;

procedure TFrmVerificacionSolicitud.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

Function TFrmVerificacionSolicitud.verificar(cliente: TClientDataset; solicitud: integer ): Boolean;
var
  CdTemp: TClientDataSet;
  PnTemp, verificado: string;
begin
    Result := False;
    verificado := '';
    CdTemp := TClientDataSet.Create(self);
    CdTemp.RemoteServer := ClientModule1.DSProviderConnection1;
    CrearConjunto(CdTemp,'alm_solicitud',PNTemp,ccUpdate);
    CargarDatosFiltrados(CdTemp,'idsolicitud',[-9 ]);
    CdTemp.Open;
    CargarDatosFiltrados(CdTemp,'idsolicitud',[solicitud]);
    CdTemp.Refresh;
    if CdTemp.RecordCount = 1 then
    begin
      CdTemp.Edit;
      CdTemp.FieldByName('estado').AsString := 'verificado';
      CdTemp.FieldByName('idverifico').AsString := ClientModule1.cdUsuario.FieldByName('idusuario').AsString;
      verificado := CdTemp.FieldByName('serie').AsString ;
      CdTemp.Post;
      CdTemp.ApplyUpdates(-1);
      Result := True;
    end;
    EliminarConjunto(PnTemp);
    CdTemp.Free;
    cliente.Refresh;
    if Result = True then
      InteliDialog.ShowModal('Verificacion correcta.','Solicitud: '+verificado, mtInformation, [mbOk], 0);
end;

procedure TFrmVerificacionSolicitud.Verificar1Click(Sender: TObject);
begin
  BtnEditClick(BtnEdit);
end;

procedure TFrmVerificacionSolicitud.BtnEditClick(Sender: TObject);
begin
  try
    if (dsDatos.State = dsBrowse) And (CdDatos.RecordCount > 0) then
    begin
      if not ClientModule1.LeePermisos(ModuloPantalla,'VERIFICAR') then
        Exit;

      if InteliDialog.ShowModal('CONFIRMACIÓN','¿Confirmar la verificación de la solicitud "' +
           CdDatos.FieldByName('serie').AsString + '"?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      begin
        InteliDialog.ShowModal('INFORMACIÓN','Se canceló la verificación de la solicitud "' +
          CdDatos.FieldByName('serie').AsString + '".' + #10 + 'Nada se ha guardado.',mtInformation,[mbOK],0);
          exit;
      end;

      if ClientModule1.ConfigGetValor('validacion',Clientmodule1.cdNucConfiguracion) = 'si' then
      begin
        if dsDatos.DataSet.FieldByName('estado').AsString <> 'validado' then
          raise Exception.Create('La solicitud debe estar validada');
      end
      else
      begin
      if dsDatos.DataSet.FieldByName('estado').AsString <> 'pendiente' then
        raise Exception.Create('La solicitud debe estar pendiente');
      end;

      if not Verificar(cdDatos, CdDatos.FieldByName('idsolicitud').AsInteger) then
        raise Exception.Create('Error al verificar.')
      else
      begin
        CdDatos.Refresh;
        BtnRefresh.Click;
      end;
    end
    else
      raise Exception.Create('No hay datos cargados.');
  except
   on e:exception do
      InteliDialog.ShowModal('No se puede generar el proceso.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmVerificacionSolicitud.BtnRefreshClick(Sender: TObject);
begin
  if CdDatos.State = dsBrowse then
  begin
    CdDatos.Refresh;
    CargarGrid(CdDatos,NGDatos,'idsolicitud,serie,usuario,titulociudad,fecha,fecharequerida,validonombre,verificonombre,estado');
  end
end;

procedure TFrmVerificacionSolicitud.BtnSearchClick(Sender: TObject);
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

//  Parametros.Add('activo', 'si');
  Parametros.Add('idorganizacion', CbOrganizacion.KeyValue);

  if (Trim(cbbestado.Text) <> '') and (cbbEstado.Text <> 'todos') then
    Parametros.Add('estado', Trim(cbbEstado.Text))
  else
    Parametros.Add('estado', 'vyv');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  CargarGrid(CdDatos,NGDatos,'idsolicitud,serie,usuario,titulociudad,fecha,fecharequerida,validonombre,verificonombre,estado');

  Parametros.Free;
end;

procedure TFrmVerificacionSolicitud.cbbEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TFrmVerificacionSolicitud.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Globales.SetValue('OrgPredeterminada',CbOrganizacion.KeyValue);
  EliminarConjunto(providername);
  EliminarConjunto(PNSolicitud);
  LiberarVentana(Self, Action);
end;

procedure TFrmVerificacionSolicitud.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'VERIFICACION';
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  AccedeACoordenadas;
end;

procedure TFrmVerificacionSolicitud.AccedeACoordenadas;
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

procedure TFrmVerificacionSolicitud.FormShow(Sender: TObject);
begin
  try
    cbbEstado.Items.Add('validado');
    cbbEstado.Items.Add('verificado');
    cbbEstado.Items.Add('todos');
    cbbEstado.ItemIndex := 0;

    ClientModule1.RastrearGrids(Self);
    ClientModule1.ComponentColor(Self);

    cdNivelesPred.Close;
    CrearConjunto(cdNivelesPred, cOrganizacion, providername, ccCatalog);
    CargarDatosFiltrados(cdNivelesPred, 'padre', [ClientModule1.cdAcceso.FieldByName('idorganizacion').AsInteger]);
    cdNivelesPred.Open;

    if cdNivelespred.RecordCount < 0 then
    begin
      cdNivelesPred.Close;
      CargarDatosFiltrados(cdNivelesPred, 'idorganizacion', [ClientModule1.cdAcceso.FieldByName('idorganizacion').AsInteger]);
      cdNivelesPred.Open;
      CbOrganizacion.Enabled := False;
    end;

    if Length(Trim(Globales.Elemento('OrgPredeterminada').AsString)) > 0 then
      CbOrganizacion.KeyValue := Globales.Elemento('OrgPredeterminada').AsString
    else
    begin
      cdNivelespred.First;
       CbOrganizacion.KeyValue := cdNivelespred.FieldByName('idorganizacion').AsInteger;
    end;

    cdDatos.Close;
    CrearConjunto(cdDatos, 'alm_solicitud', PNSolicitud, ccCatalog);
    CargarDatosFiltrados(cdDatos, 'idsolicitud', [-9]);
    cdDatos.Open;



    cbbEstado.ItemIndex := 0;
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

  end;
end;

procedure TFrmVerificacionSolicitud.NGDatosCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  try
    CdDatos.Locate('idsolicitud',VarArrayOf([NGDatos.Cell[0,NGDatos.SelectedRow].AsInteger]),[]);
  except
    ;
  end;
end;

procedure TFrmVerificacionSolicitud.NGDatosCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  popup : TFrmVerificacionSDetalle;
begin
  if NGDatos.RowCount > 0 then
  begin
    if NGDatos.SelectedRow >= 0 then
    begin
      popup := TFrmVerificacionSDetalle.Create(Self);
      popup.idsolicitud := NGDatos.Cell[0,NGDatos.SelectedRow].AsInteger;
      CdDatos.Locate('idsolicitud',VarArrayOf([NGDatos.Cell[0,NGDatos.SelectedRow].AsInteger]),[]);
      popup.dsSolicitud.DataSet := CdDatos;
      popup.ShowModal;
      CdDatos.Refresh;
      popup.Free
    end
    else
    InteliDialog.ShowModal('Información.','Seleccione una solicitud.', mtInformation, [mbOk], 0);
  end
  else
    InteliDialog.ShowModal('Información.','No hay registros.', mtInformation, [mbOk], 0);

end;

procedure TFrmVerificacionSolicitud.CargarGrid(Cli: Tclientdataset; Grid: TNextGrid; campos: String );
var
  i: Integer;
  camposL: TStringList;
begin
  camposL := TStringList.Create;
  camposL.BeginUpdate;
  camposL.CommaText := campos;
  camposl.EndUpdate;
  Cli.First;
  Grid.ClearRows;
  while not Cli.Eof do
  begin
    grid.AddRow(1);
    i := 0;
    while i < camposL.Count do
    begin
      if (Cli.FieldByName('estado').AsString = 'validado') then
        Grid.Cell[i,Grid.RowCount-1].Color := clYellow;
      if (Cli.FieldByName('estado').AsString = 'verificado') then
        Grid.Cell[i,Grid.RowCount-1].Color := $0080FF80;
      grid.Cell[i,grid.RowCount-1].AsString := Cli.FieldByName(camposL[i]).AsString;
      Inc(i);
    end;
    Cli.Next;
  end;
  camposl.free;
end;

procedure TFrmVerificacionSolicitud.Recargar1Click(Sender: TObject);
begin
  BtnRefreshClick(BtnRefresh);
end;

end.
