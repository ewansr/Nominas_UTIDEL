unit UTFrmValidacionSDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls,
  StdCtrls, DB, DBCtrls, Mask, Buttons, PngSpeedButton, JvExControls, JvLabel,
  DBClient, NxDBGrid, NxColumns, NxDBColumns, NxColumnClasses, UInteliDialog,
  URegistro, AdvShapeButton;

type
  TFrmValidacionSDetalle = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    dsSolicitud: TDataSource;
    JvLabel1: TJvLabel;
    lblreferencia: TLabel;
    dbedtreferencia: TDBEdit;
    lblfecha: TLabel;
    dbedtfecha: TDBEdit;
    lbllugar: TLabel;
    dbedtlugar: TDBEdit;
    dbedtot: TDBEdit;
    CdDatos: TClientDataSet;
    dsDatos: TDataSource;
    dbedtSerie: TDBEdit;
    pnlprincipal: TPanel;
    NGPrincipal: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    BtnRefresh: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    BtnEdit: TAdvShapeButton;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn8: TNxTextColumn;
    cbAccion: TNxComboBoxColumn;
    NxTextColumn9: TNxTextColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEditClick(Sender: TObject);
    function Validar(Dataset: TClientDataSet; Grid: TNextGrid): Integer;
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NGPrincipalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NGPrincipalEditAccept(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var Accept: Boolean);
    procedure NGPrincipalEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    procedure LlenarGrid(Dataset: TClientDataSet; Grid: TNextGrid);
    function CadenaToInt(Cadena: string): Integer;
    function cadenaafloat(cadena: string): real;
    function ActualizaEstado(solicitud: Integer): boolean;
    procedure AccedeACoordenadas;
    { Private declarations }
  public
    idsolicitud: Integer;
    cancelado: boolean;
    { Public declarations }
  end;

var
  FrmValidacionSDetalle: TFrmValidacionSDetalle;
  PNDetalle: String;

implementation

uses ClientModuleUnit1, UTFrmExistenciaArticulo;
{$R *.dfm}

function TFrmValidacionSDetalle.ActualizaEstado(solicitud: Integer): boolean;
var
  CdTemp: TClientDataSet;
  PnTemp: string;
begin
  Result := False;
  CdTemp := TClientDataSet.Create(self);
  CdTemp.RemoteServer := ClientModule1.DSProviderConnection1;
  CrearConjunto(CdTemp, 'alm_solicitud', PnTemp, ccUpdate);
  CargarDatosFiltrados(CdTemp, 'idsolicitud', [-9]);
  CdTemp.Open;
  CargarDatosFiltrados(CdTemp, 'idsolicitud', [idsolicitud]);
  CdTemp.Refresh;
  if CdTemp.RecordCount = 1 then
  begin
    CdTemp.Edit;
    if ClientModule1.ConfigGetValor('verificacion', ClientModule1.cdNucConfiguracion) = 'si' then
      CdTemp.FieldByName('estado').AsString := 'validado'
    else
      CdTemp.FieldByName('estado').AsString := 'verificado';
    CdTemp.FieldByName('idvalido').AsString := ClientModule1.cdUsuario.FieldByName('idusuario').AsString;
    CdTemp.Post;
    CdTemp.ApplyUpdates(-1);
    Result := True;
  end;
  EliminarConjunto(PnTemp);
  CdTemp.Free;
end;

procedure TFrmValidacionSDetalle.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmValidacionSDetalle.BtnEditClick(Sender: TObject);
var
  Validados: Integer;
begin
  Try

    if (dsSolicitud.Dataset.FieldByName('estado').AsString <> 'pendiente') and (dsSolicitud.Dataset.FieldByName('estado').AsString <> 'validado') then
      raise Exception.Create('La solicitud debe estar pendiente o validada');
    // Validar: funcion que valida los articulos de la solicitud devolviendo modificados
    Validados := Validar(CdDatos, NGPrincipal);
    if Validados > 0 then
    begin
      // Actualizaestado: Funcion que actualiza el estado de la solicitud activa
      if ActualizaEstado(idsolicitud) then
        InteliDialog.ShowModal('Validación concluida.', 'Se validaron ' + inttostr(Validados) + ' tipos de partidas.', mtInformation, [mbOk], 0)
      else
        InteliDialog.ShowModal('Error.', 'Al actualizar estado, verifique las cantidades porfavor. ', mtInformation, [mbOk], 0);
      BtnRefresh.Click
    end

  except
    on e: Exception do
      InteliDialog.ShowModal('No se puede generar el proceso.', e.message, mtInformation, [mbOk], 0);
  End;
end;

procedure TFrmValidacionSDetalle.BtnRefreshClick(Sender: TObject);
begin
  LlenarGrid(CdDatos, NGPrincipal);
end;

function TFrmValidacionSDetalle.cadenaafloat(cadena: string): real;
var
resultado :real;
begin
  if Length(Trim(cadena)) > 0 then
  begin
    try
      resultado := StrToFloat(cadena);
    except
      resultado := 0;
    end
  end
  else
    resultado := 0;
  Result := resultado;
end;

function TFrmValidacionSDetalle.CadenaToInt(Cadena: string): Integer;
begin
  Result := 0;
  try
    Result := StrToInt(Cadena);
  finally

  end;
end;

function TFrmValidacionSDetalle.Validar(Dataset: TClientDataSet; Grid: TNextGrid): Integer;
var
  Col, Row: Integer;
  cdUpdate: TClientDataSet;
  PnTemp, movimiento,msg: string;
  validado,solicitado,surtido,existencia:real;
  Correcto :Boolean;
begin
  correcto := false;
  Result := 0;
  Col := 0;
  Row := 0;
  validado :=0;
  solicitado := 0;
  surtido :=0 ;
  existencia := 0;

  try
    cdUpdate := TClientDataSet.Create(self);
    cdUpdate.RemoteServer := ClientModule1.DSProviderConnection1;
    CrearConjunto(cdUpdate, 'alm_solicituddetalle', PnTemp, ccUpdate);
    CargarDatosFiltrados(cdUpdate, 'idsolicituddetalle', [-9]);
    cdUpdate.Open;

    if (Dataset.Active = False) or (Dataset.RecordCount < 0) then
      raise Exception.Create('Dataset No activo en validación');
    Dataset.First;

    while Row < Grid.RowCount do
    begin
      correcto := false;
      validado := cadenaafloat(Grid.Cell[6, Row].AsString);   //validado para compra
      solicitado := cadenaafloat(Grid.Cell[3, Row].AsString);   //solicitado
      surtido := cadenaafloat(Grid.Cell[7, Row].AsString);  // surtido
      movimiento := Grid.Cell[11, Row].AsString; //accion
      existencia := cadenaafloat(Grid.Cell[10, Row].AsString);//existencia

      if ((movimiento = 'surtir_total') or (movimiento = 'surtir_parcial') or (movimiento = 'surtido') and (surtido <= existencia) )then
        if (surtido <= solicitado) then
          if (surtido <= existencia) then
            correcto := true;

      if (movimiento = 'comprar')  then
        if (validado <= solicitado) then
          correcto := true;

      if correcto then
      begin
        // proceso de validacion
        CargarDatosFiltrados(cdUpdate, 'idsolicituddetalle', [NGPrincipal.Cells[0, Row]]);
        cdUpdate.Refresh;

        if cdUpdate.RecordCount = 1 then
        begin
          cdUpdate.Edit;
          cdUpdate.FieldByName('estado').AsString := Grid.Cells[11, Row];
          cdUpdate.FieldByName('cantidadvalidada').AsFloat := cadenaafloat(Grid.Cells[6, Row]);
          cdUpdate.FieldByName('cantidadsurtida').AsFloat := cadenaafloat(Grid.Cells[7, Row]);
          cdUpdate.Post;
          cdUpdate.ApplyUpdates(-1);
          Grid.Cell[6, Row].Color := clGreen;
          Result := Result + 1;
        end;
      end
      else
      begin

        if (validado > solicitado) then
        begin
          Grid.Cell[6, Row].Color := clRed;
          InteliDialog.ShowModal('Advertencia', 'La cantidad a validar del artículo ' + Grid.Cells[2, Row] + ' se excede a la cantidad solicitada',
            mtInformation, [mbOk], 0);
        end;

        if (surtido > solicitado) then
        begin
          Grid.Cell[6, Row].Color := clRed;
          InteliDialog.ShowModal('Advertencia', 'La cantidad a surtir del artículo ' + Grid.Cells[2, Row] + ' se excede a la cantidad solicitada',
            mtInformation, [mbOk], 0);
        end;

        if ((movimiento = 'surtir_total') or (movimiento = 'surtir_parcial') or (movimiento = 'surtido') and (surtido <= existencia) )then
          if surtido > existencia then
          begin
            Grid.Cell[7, Row].Color := clRed;
            InteliDialog.ShowModal('Advertencia', 'La cantidad a surtir del artículo ' + Grid.Cells[2, Row] + ' se excede a la cantidad existente',
            mtInformation, [mbOk], 0);
          end;


        if (validado = 0) and (surtido = 0) then
        begin
          Grid.Cell[6, Row].Color := clRed;
          Grid.Cell[7, Row].Color := clRed;
        end;

      end;
      Inc(Row);
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal('No se puede validar por el siguiente motivo:.', e.message, mtInformation, [mbOk], 0);
  end;
  EliminarConjunto(PnTemp);
  cdUpdate.Free;
end;

procedure TFrmValidacionSDetalle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(PNDetalle);
  LiberarVentana(self, Action);
end;

procedure TFrmValidacionSDetalle.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas;
end;

procedure TFrmValidacionSDetalle.AccedeACoordenadas;
var
  Existe: boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := self.Left;
  xTop := self.Top;
  xWidth := self.Width;
  xHeight := self.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Left', Existe));
    if Not Existe then
      xLeft := self.Left;
  Except
    xLeft := self.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Top', Existe));
    if Not Existe then
      xTop := self.Top;
  Except
    xTop := self.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Width', Existe));
    if Not Existe then
      xWidth := self.Width;
  Except
    xWidth := self.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + self.Name, 'Height', Existe));
    if Not Existe then
      xHeight := self.Height;
  Except
    xHeight := self.Height;
  End;

  // Corregir los valores necesarios
  if xWidth = 0 then
    xWidth := self.Width;
  if xHeight = 0 then
    xHeight := self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  self.Left := xLeft;
  self.Width := xWidth;
  self.Top := xTop;
  self.Height := xHeight;
end;

procedure TFrmValidacionSDetalle.LlenarGrid(Dataset: TClientDataSet; Grid: TNextGrid);
var
  Col, Row: Integer;
  validado: string;
  idOrg, idArt: Integer;
  cdExistencias: TClientDataSet;
  sPTmp: String;
begin
  Col := 0;
  Row := 0;
  validado := '0';
  // Sdf
  try
    if (Dataset.Active = False) or (Dataset.RecordCount < 0) then
      raise Exception.Create('Dataset No activo en validación');
    Dataset.Refresh;
    Dataset.First;

    cdExistencias := TClientDataSet.Create(self);
    cdExistencias.RemoteServer := ClientModule1.DSProviderConnection1;

    idOrg := ClientModule1.cdAcceso.FieldByName('idorganizacion').AsInteger;

    Grid.BeginUpdate;
    Grid.ClearRows;
    while not Dataset.Eof do
    begin
      Grid.AddRow(1);
      Grid.Cells[0, Row] := Dataset.FieldByName('idsolicituddetalle').AsString;
      Grid.Cells[1, Row] := Dataset.FieldByName('titulodisciplina').AsString;
      Grid.Cells[2, Row] := Dataset.FieldByName('tituloarticulo').AsString;
      Grid.Cells[3, Row] := Dataset.FieldByName('cantidad').AsString;
      Grid.Cells[4, Row] := Dataset.FieldByName('codigounidad').AsString;
      Grid.Cells[5, Row] := Dataset.FieldByName('fecharequerida').AsString;
      Grid.Cells[7, Row] := Dataset.FieldByName('cantidadsurtida').AsString;
      Grid.Cell[7, Row].Color := clYellow;
      Grid.Cells[11, Row] := Dataset.FieldByName('estado').AsString;
      Grid.Cell[11, Row].Color := clYellow;
      //cbAccion.Index := 1;//                                cbAccion.Items.IndexOf(Dataset.FieldByName('estado').AsString);

      validado := Dataset.FieldByName('cantidadvalidada').AsString;
      if Length(Trim(validado)) < 1 then
        validado := '0';
      Grid.Cells[6, Row] := validado;
      Grid.Cell[6, Row].Color := clYellow;

      Grid.Cells[8, Row] := floattostr(Dataset.FieldByName('cantidad').AsFloat - (Dataset.FieldByName('cantidadvalidada').AsFloat + Dataset.FieldByName('cantidadsurtida').AsFloat));
      Grid.Cell[9, Row].AsFloat := Dataset.FieldByName('idarticulo').AsInteger;
     // Grid.Cell[10, Row].AsString := Dataset.FieldByName('estado').AsString;
      // Existencias
      try
        idArt := Dataset.FieldByName('idarticulo').AsInteger;
        CrearConjunto(cdExistencias, 'alm_existencias_articulo', sPTmp, ccCatalog);
        CargarDatosFiltrados(cdExistencias, 'idOrganizacion,idarticulo', [idOrg, idArt]);
        cdExistencias.Open;
        if cdExistencias.RecordCount > 0 then
          NGPrincipal.Cell[10, Row].AsFloat := cdExistencias.FieldByName('existencia').AsFloat
        else
          NGPrincipal.Cell[10, Row].AsFloat := 0;
        cdExistencias.Close;
        EliminarConjunto(sPTmp);
      except

      end;
      Inc(Row);
      Dataset.Next;
    end;
    Grid.EndUpdate;
    cdExistencias.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal('No se puede llenar el grid solicitud detalle.', e.message, mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmValidacionSDetalle.NGPrincipalEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if ACol = 11 then
  begin
    if Value = 'surtido' then
    begin
      NGPrincipal.SelectCell(1,NGPrincipal.FirstRow,[ssShift],true);
      NGPrincipal.SelectCell(ACol,ARow,[ssShift],true);
    end;
  end;


end;

procedure TFrmValidacionSDetalle.NGPrincipalEditAccept(Sender: TObject; ACol,
  ARow: Integer; Value: WideString; var Accept: Boolean);
begin
  if ACol = 6 then
  begin
    if (cadenaafloat(value) > 0) then
      if (cadenaafloat(NGPrincipal.Cells[7,arow]) = 0) then
        NGPrincipal.Cells[11,arow] := 'comprar'
      else
        NGPrincipal.Cells[11,arow] := 'surtir_parcial'
    else
      if (cadenaafloat(NGPrincipal.Cells[7,arow]) = 0) then
        NGPrincipal.Cells[11,arow] := 'pendiente'
      else
        NGPrincipal.Cells[11,arow] := 'surtir_total'
  end;
  if ACol = 7 then
  begin
    if (cadenaafloat(value) > 0) then
      if (cadenaafloat(NGPrincipal.Cells[6,arow]) = 0) then
        NGPrincipal.Cells[11,arow] := 'surtir_total'
      else
        NGPrincipal.Cells[11,arow] := 'surtir_parcial'
    else
      if (cadenaafloat(NGPrincipal.Cells[6,arow]) = 0) then
        NGPrincipal.Cells[11,arow] := 'pendiente'
      else
        NGPrincipal.Cells[11,arow] := 'comprar'

  end;
  if ACol = 11 then
  begin
    if Value = 'surtir_total' then
      if (cadenaafloat(NGPrincipal.Cells[7,arow]) = 0) or (cadenaafloat(NGPrincipal.Cells[6,arow]) > 0) then
        Accept := false;
    if Value = 'surtir_parcial' then
      if (cadenaafloat(NGPrincipal.Cells[7,arow]) = 0) then
        Accept := false;
    if Value = 'surtido' then
      Accept := false;
    if Value = 'comprar' then
      if (cadenaafloat(NGPrincipal.Cells[6,arow]) = 0) or (cadenaafloat(NGPrincipal.Cells[7,arow]) > 0) then
        Accept := false;
    if (Value = 'cancelado') or (Value = 'pendiente') then
      if (cadenaafloat(NGPrincipal.Cells[7,arow]) <> 0) or (cadenaafloat(NGPrincipal.Cells[6,arow]) <> 0) then
        Accept := false;

  end;

end;

procedure TFrmValidacionSDetalle.NGPrincipalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  FrmExist: TfrmExistenciaArticulo;
  idOrg, idArt: Integer;
begin
  if (Key = VK_F11) and (NGPrincipal.SelectedRow >= 0) then
  begin
    idOrg := ClientModule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
    idArt := NGPrincipal.Cell[8, NGPrincipal.SelectedRow].AsInteger;
    FrmExist := TfrmExistenciaArticulo.Create(nil);
    FrmExist.Existencia(idOrg, idArt);
    FrmExist.Free;
  end;
end;

procedure TFrmValidacionSDetalle.FormShow(Sender: TObject);
begin
  try
    ClientModule1.RastrearGrids(self);
    ClientModule1.ComponentColor(self);
    cancelado := True;
    CdDatos.Close;
    CrearConjunto(CdDatos, 'alm_solicituddetalle', PNDetalle, ccCatalog);
    CargarDatosFiltrados(CdDatos, 'idsolicitud', [idsolicitud]);
    CdDatos.Open;
    LlenarGrid(CdDatos, NGPrincipal);
  except
    // Ante cualquier error se debe cerrar la ventana
    on e: InteligentException do
    begin
      InteliDialog.ShowModal('No se ha podido invocar la ventana', 'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message,
        mtWarning, [mbOk], 0);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;

    on e: Exception do
    begin
      InteliDialog.ShowModal('Error catastrófico', 'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 +
        'Informe de esto al administrador del sistema', mtError, [mbOk], 0);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
