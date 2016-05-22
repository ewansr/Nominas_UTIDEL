unit UTFrmValidacionSolicitud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvEdit, StdCtrls, Buttons, PngSpeedButton, JvExControls, JvLabel,
  AdvShapeButton, NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, ExtCtrls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompLabel, IWDBStdCtrls, DB, Mask, DBCtrls,
  URegistro,DBClient, UInteliDialog, NxColumnClasses, NxGrid, Menus;

type
  TDatosForma = class
    Width, Height: Integer;
    Borde: TBorderIcons;
    Caption: String;
  End;
  TFrmValidacionSolicitud = class(TForm)
    PanelFiltro: TPanel;
    dsOrganizacion: TDataSource;
    cdNivelespred: TClientDataSet;
    dsNivelespred: TDataSource;
    CdDatos: TClientDataSet;
    dsDatos: TDataSource;
    GroupBoxFiltro: TGroupBox;
    CbOrganizacion: TDBLookupComboBox;
    cbbEstado: TComboBox;
    PanelBarra: TPanel;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    Panel1: TPanel;
    BtnEdit: TAdvShapeButton;
    BtnRefresh: TAdvShapeButton;
    BtnCancelar: TAdvShapeButton;
    NGDatos: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    pmprincipal: TPopupMenu;
    Editar1: TMenuItem;
    Recargar1: TMenuItem;
    Cancelar1: TMenuItem;
    BtnSearch: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure cbbEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NextDBGrid1CellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure NGDatosCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure Editar1Click(Sender: TObject);
    procedure Recargar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    providername, PNSolicitud : string;
    ModuloPantalla: String;
    function Cancelar(solicitud: Integer): Boolean;
    procedure AccedeACoordenadas;
    procedure CargarGrid(Cli: Tclientdataset; Grid: TNextGrid; campos: string);
  public
    { Public declarations }
  end;

var
  FrmValidacionSolicitud: TFrmValidacionSolicitud;
implementation

uses ClientModuleUnit1, UTFrmValidacionSDetalle, UTFrmSolicitudSalidaDet,Unit2;
{$R *.dfm}

procedure TFrmValidacionSolicitud.BtnCancelarClick(Sender: TObject);
var
  esta: string;
begin
  try
    // Validar si es un registro valido
    if cdDatos.eof then
      Raise Exception.Create('Nada que cancelar.');

    esta := NGDatos.CellByName[6,NGDatos.SelectedRow].AsString;
    if NGDatos.RowCount > 0 then
    begin
      try
        if not ClientModule1.LeePermisos(ModuloPantalla,'CANCELAR') then
          Exit;
        if CdDatos.RecordCount < 1 then
          raise Exception.Create('No hay datos.');

        if (CdDatos.FieldByName('estado').AsString = 'pendiente') or
           (CdDatos.FieldByName('estado').AsString = 'validada') or
           (CdDatos.FieldByName('estado').AsString = 'verificada') then
        begin
          if not Cancelar(NGDatos.CellByName[6,NGDatos.SelectedRow].AsInteger) then
            raise Exception.Create('Al cancelar la solicitud '+NGDatos.CellByName[1,NGDatos.SelectedRow].AsString+'.');
        end
        else
           raise Exception.Create('Solo se pueden cancelar solicitudes pendientes, validadas.');
      except
        on e:exception do
          InteliDialog.ShowModal('No se puede realizar el proceso.',e.message, mtInformation, [mbOk], 0);
      end;
    end
    else
      InteliDialog.ShowModal('Información.','No hay registros.', mtInformation, [mbOk], 0);
  except
    on e: Exception do
      InteliDialog.ShowModal('Error',e.Message,'',mtError,[mbOK],0);
  end;
end;

function TFrmValidacionSolicitud.Cancelar(solicitud: Integer):Boolean;
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
  end
  else
    InteliDialog.ShowModal('Error','Al localizar solicitud.', mtInformation, [mbOk], 0);
  EliminarConjunto(PNCancel);
  cdUpdate.Free;
end;

procedure TFrmValidacionSolicitud.Cancelar1Click(Sender: TObject);
begin
  BtnCancelarClick(BtnCancelar);
end;

procedure TFrmValidacionSolicitud.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmValidacionSolicitud.BtnEditClick(Sender: TObject);
var
  popup: TFrmValidacionSDetalle;
  popupSalida: TFrmSolicitudSalidaDet;
  cdUpt: TClientDataSet;
  cdDocSerie: TClientDataSet;
  cdSolDet, cdExistencia: TClientDataSet;
  HayExistencias: Boolean;
  CadenaDoc: String;
  DigitosDoc: integer;
begin
    if NGDatos.SelectedRow >= 0 then
    begin
      // aquí iba el código que quité

    if not ClientModule1.LeePermisos(ModuloPantalla,'VALIDAR') then
      Exit;

      popup := TFrmValidacionSDetalle.Create(Self);
      popup.idsolicitud := NGDatos.Cell[0,NGDatos.SelectedRow].AsInteger;
      popup.dsSolicitud.DataSet := CdDatos;
      popup.ShowModal;
      BtnRefresh.Click;
      popup.Free
    end
    else
      InteliDialog.ShowModal('Información.','Seleccione una solicitud.', mtInformation, [mbOk], 0);
end;

procedure TFrmValidacionSolicitud.BtnRefreshClick(Sender: TObject);
begin
  CdDatos.Refresh;
  CargarGrid(CdDatos,NGDatos,'idsolicitud,serie,usuario,titulociudad,fecha,fecharequerida,validonombre,estado');
end;

procedure TFrmValidacionSolicitud.BtnSearchClick(Sender: TObject);
Var
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

//  Parametros.Add('activo', 'si');
  Parametros.Add('idorganizacion', CbOrganizacion.KeyValue);

  if Trim(cbbestado.Text) <> '' then
    Parametros.Add('estado', Trim(cbbEstado.Text));

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  CargarGrid(CdDatos,NGDatos,'idsolicitud,serie,usuario,titulociudad,fecha,fecharequerida,validonombre,estado');

  Parametros.Free;
end;

procedure TFrmValidacionSolicitud.cbbEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TFrmValidacionSolicitud.Editar1Click(Sender: TObject);
begin
  BtnEditClick(BtnEdit);
end;

procedure TFrmValidacionSolicitud.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Globales.SetValue('OrgPredeterminada',CbOrganizacion.KeyValue);
  EliminarConjunto(providername);
  EliminarConjunto(PNSolicitud);
  LiberarVentana(Self, Action);
end;

procedure TFrmValidacionSolicitud.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'VALIDACION';
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  AccedeACoordenadas;

end;

procedure TFrmValidacionSolicitud.FormResize(Sender: TObject);
begin
  {if (TipoCliente = '1') or (TipoCliente = '3')  then
  if self.Height > Form2.Height-60-form2.tbmain.Height then
    self.Height := Form2.Height-60-form2.tbmain.Height;
  if (TipoCliente = '0') or (TipoCliente = '2')  then
  if self.Height > Form2.Height-40 then
    self.Height := Form2.Height-40;    }
end;

procedure TFrmValidacionSolicitud.CargarGrid(Cli: Tclientdataset; Grid: TNextGrid; campos: String );
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
        if (Cli.FieldByName('estado').AsString = 'pendiente') then
          Grid.Cell[i,Grid.RowCount-1].Color := clYellow;
        if (Cli.FieldByName('estado').AsString = 'validado') then
          Grid.Cell[i,Grid.RowCount-1].Color := $0080FF80;
        if (Cli.FieldByName('estado').AsString = 'verificado') then
          Grid.Cell[i,Grid.RowCount-1].Color := $00FC94A9;
        grid.Cell[i,grid.RowCount-1].AsString := Cli.FieldByName(camposL[i]).AsString;
        Inc(i);
      end;
      Cli.Next;
    end;
    camposl.free;
    if grid.RowCount > 0 then
      Grid.SelectedRow := 0;

end;

procedure TFrmValidacionSolicitud.AccedeACoordenadas;
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

procedure TFrmValidacionSolicitud.FormShow(Sender: TObject);
var
  DatosForma: TDatosForma;
begin

  try
    cbbEstado.Items.Add('cancelado');
    cbbEstado.Items.Add('pendiente');
    cbbEstado.Items.Add('validado');
    cbbEstado.Items.Add('verificado');

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

    cdDatos.Close;
    CrearConjunto(cdDatos, 'alm_solicitud', PNSolicitud, ccCatalog);
    CargarDatosFiltrados(cdDatos, 'idsolicitud', [-9]);
    cdDatos.Open;

    cbbEstado.ItemIndex := 1;
    if Length(Trim(Globales.Elemento('OrgPredeterminada').AsString)) > 0 then
      CbOrganizacion.KeyValue := Globales.Elemento('OrgPredeterminada').AsString
    else
    begin
      cdNivelespred.First;
       CbOrganizacion.KeyValue := cdNivelespred.FieldByName('idorganizacion').AsInteger;
    end;
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

procedure TFrmValidacionSolicitud.NextDBGrid1CellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
  if not(csSelected in CellState) then begin
    if NGDatos.Cells[6,ARow] = 'pendiente' then
       CellColor := clYellow;

    if NGDatos.Cells[6,ARow] = 'validado' then
      CellColor := $0080FF80;

    if NGDatos.Cells[6,ARow] = 'verificado' then
      CellColor := $00FC94A9;
  end;
end;

procedure TFrmValidacionSolicitud.NGDatosCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  BtnEditClick(BtnEdit);
end;

procedure TFrmValidacionSolicitud.Recargar1Click(Sender: TObject);
begin
  BtnRefreshClick(BtnRefresh);
end;

end.
