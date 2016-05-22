unit UTFrmValidacionSDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls,
  StdCtrls, DB, DBCtrls, Mask, Buttons, PngSpeedButton, JvExControls, JvLabel,
  DBClient, NxDBGrid, NxColumns, NxDBColumns, NxColumnClasses, UInteliDialog,
  URegistro,AdvShapeButton;

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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEditClick(Sender: TObject);
    function Validar(Dataset: TClientDataSet; Grid: TNextGrid):Integer;
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NGPrincipalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure LlenarGrid(dataset: TClientDataset;Grid: TNextGrid);
    function CadenaToInt(Cadena: string): Integer;
    function ActualizaEstado(solicitud: Integer): boolean;
    procedure AccedeACoordenadas;
    { Private declarations }
  public
    idsolicitud: Integer;
    cancelado : Boolean;
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
  CrearConjunto(CdTemp,'alm_solicitud',PNTemp,ccUpdate);
  CargarDatosFiltrados(CdTemp,'idsolicitud',[-9 ]);
  CdTemp.Open;
  CargarDatosFiltrados(CdTemp,'idsolicitud',[idsolicitud]);
  CdTemp.Refresh;
  if CdTemp.RecordCount = 1 then
  begin
    CdTemp.Edit;
    if ClientModule1.ConfigGetValor('verificacion',Clientmodule1.cdNucConfiguracion) = 'si' then
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
    //if not ClientModule1.LeePermisos(TBitBtn(Sender),Self,False) then
    //Exit;
    if (dsSolicitud.DataSet.FieldByName('estado').AsString <> 'pendiente') and
       (dsSolicitud.DataSet.FieldByName('estado').AsString <> 'validado') then
      raise Exception.Create('La solicitud debe estar pendiente o validada');
    //Validar: funcion que valida los articulos de la solicitud devolviendo modificados
    Validados :=  Validar(CdDatos, NGPrincipal) ;
    if Validados > 0 then
    begin
      //Actualizaestado: Funcion que actualiza el estado de la solicitud activa
     if ActualizaEstado(idsolicitud) then
        InteliDialog.ShowModal('Validación concluida.','Se validaron '+inttostr(Validados)+' artículos.', mtInformation, [mbOk], 0)
      else
        InteliDialog.ShowModal('Error.','Al actualizar estado, verifique las cantidades porfavor. ', mtInformation, [mbOk], 0);
      BtnRefresh.Click
    end
    //dsSolicitud.DataSet.Refresh;
  except
   on e:exception do
      InteliDialog.ShowModal('No se puede generar el proceso.',e.message, mtInformation, [mbOk], 0);
  End;
end;

procedure TFrmValidacionSDetalle.BtnRefreshClick(Sender: TObject);
begin
  LlenarGrid(cdDatos, NGPrincipal);
end;

function TFrmValidacionSDetalle.CadenaToInt(Cadena: string):Integer;
begin
  Result := 0;
  try
    Result := StrToInt(Cadena);
  finally

  end;
end;


function TFrmValidacionSDetalle.Validar(Dataset: TClientDataSet; Grid: TNextGrid):Integer;
var
  Col, Row: Integer;
  cdUpdate: TClientDataSet;
  PNTemp: string;
begin
  Result := 0;
  Col := 0;
  Row := 0;

  try
    cdUpdate := TClientDataSet.Create(self);
    cdUpdate.RemoteServer := ClientModule1.DSProviderConnection1;
    CrearConjunto(cdUpdate,'alm_solicituddetalle',PNTemp,ccUpdate);
    CargarDatosFiltrados(cdUpdate,'idsolicituddetalle',[-9 ]);
    cdUpdate.Open;

    if (dataset.Active = False) or (dataset.RecordCount < 0) then
      raise Exception.Create('Dataset No activo en validación');
    dataset.First;

    while Row < Grid.RowCount do
    begin
      if (CadenaToInt(Grid.Cell[7,Row].AsString) <= (CadenaToInt(Grid.Cells[3,Row])-cadenaToint(Grid.Cells[6,Row]))) and
         (CadenaToInt(Grid.Cell[7,Row].AsString) > 0)  then
      begin
        //proceso de validacion
        CargarDatosFiltrados(cdUpdate,'idsolicituddetalle',[NGPrincipal.Cells[0,Row] ]);
        cdUpdate.Refresh;
        //pendiente guardar estado
        if cdUpdate.RecordCount = 1 then
        begin
          cdUpdate.Edit;
          cdUpdate.FieldByName('cantidadvalidada').AsInteger:= cdUpdate.FieldByName('cantidadvalidada').AsInteger + CadenaToInt(Grid.Cells[7,Row]);
          cdUpdate.Post;
          cdUpdate.ApplyUpdates(-1);
          Grid.Cell[7,Row].Color := clGreen;
          Result := Result + 1;
        end;
      end
      else
      begin
         if (CadenaToInt(Grid.Cell[7,Row].AsString) > 0) then
         begin
           Grid.Cell[7,Row].Color := clRed;
           InteliDialog.ShowModal('Advertencia','La cantidad a validar del artículo ' +Grid.Cells[2,Row]+' se excede a la cantidad solicitada', mtInformation, [mbOk], 0) ;

         end;
      end;
      Inc(Row);
    end;
  Except
   on e:exception do
      InteliDialog.ShowModal('No se puede llenar el grid solicitud detalle.',e.message, mtInformation, [mbOk], 0);
  end;
  EliminarConjunto(PNTemp);
  cdUpdate.Free;
end;

procedure TFrmValidacionSDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(PNDetalle);
  LiberarVentana(Self, Action);
end;

procedure TFrmValidacionSDetalle.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas;
end;

procedure TFrmValidacionSDetalle.AccedeACoordenadas;
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

procedure TFrmValidacionSDetalle.LlenarGrid(dataset: TClientDataset;Grid: TNextGrid);
var
  Col, Row: Integer;
  validado: string;
begin
  Col := 0;
  Row := 0;
  Validado := '0';
  //Sdf
  try
    if (dataset.Active = False) or (dataset.RecordCount < 0) then
      raise Exception.Create('Dataset No activo en validación');
    dataset.Refresh;
    dataset.First;

    Grid.BeginUpdate;
    Grid.ClearRows;
    while not dataset.Eof do
    begin
      Grid.AddRow(1);
      Grid.Cells[0,Row] := dataset.FieldByName('idsolicituddetalle').AsString;
      Grid.Cells[1,Row] := dataset.FieldByName('titulodisciplina').AsString;
      Grid.Cells[2,Row] := dataset.FieldByName('tituloarticulo').AsString;
      Grid.Cells[3,Row] := dataset.FieldByName('cantidad').AsString;
      Grid.Cells[4,Row] := dataset.FieldByName('codigounidad').AsString;
      Grid.Cells[5,Row] := dataset.FieldByName('fecharequerida').AsString;
      Validado := dataset.FieldByName('cantidadvalidada').AsString;
      if Length(Trim(Validado)) < 1 then
        validado := '0';
      Grid.Cells[6,Row] := Validado;
      Grid.Cells[7,Row] := IntToStr(dataset.FieldByName('cantidad').AsInteger - dataset.FieldByName('cantidadvalidada').AsInteger);;
      Grid.Cell[8,Row].AsInteger := dataset.FieldByName('idarticulo').AsInteger;
      Inc(Row);
      dataset.Next;
    end;
    Grid.EndUpdate;
    if Grid.RowCount > 0 then
      Grid.SelectedRow := 0;


  Except
   on e:exception do
      InteliDialog.ShowModal('No se puede llenar el grid solicitud detalle.',e.message, mtInformation, [mbOk], 0);
  end;


end;

procedure TFrmValidacionSDetalle.NGPrincipalKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  FrmExist: TfrmExistenciaArticulo;
  idOrg, idArt: Integer;
begin
  if (key = VK_F11) and (NGPrincipal.SelectedRow >= 0) then
  begin
    idOrg := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
    idArt := NGPrincipal.Cell[8,NGPrincipal.SelectedRow].AsInteger;
    FrmExist := TfrmExistenciaArticulo.Create(nil);
    FrmExist.Existencia(idOrg,idArt);
    FrmExist.Free;
  end;
end;

procedure TFrmValidacionSDetalle.FormShow(Sender: TObject);
begin
  try
    ClientModule1.RastrearGrids(Self);
    ClientModule1.ComponentColor(Self);
    cancelado := True;
    cdDatos.Close;
    CrearConjunto(cdDatos, 'alm_solicituddetalle', PNDetalle, ccCatalog);
    CargarDatosFiltrados(cdDatos, 'idsolicitud', [idsolicitud]);
    cdDatos.Open;
    LlenarGrid(cdDatos, NGPrincipal);
    NGPrincipal.SetFocus;
  except
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

end.
