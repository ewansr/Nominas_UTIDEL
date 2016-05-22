unit UTFrmVerificacionSDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls,
  StdCtrls, DB, DBCtrls, Mask, Buttons, PngSpeedButton, JvExControls, JvLabel,
  DBClient, NxDBGrid, NxColumns, NxDBColumns, NxColumnClasses, UInteliDialog,
  URegistro,AdvShapeButton;

type
  TFrmVerificacionSDetalle = class(TForm)
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
    BtnRefresh: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function Validar(Dataset: TClientDataSet; Grid: TNextGrid):Integer;
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure LlenarGrid(dataset: TClientDataset;Grid: TNextGrid);
    function CadenaToInt(Cadena: string): Integer;
    function ActualizaEstado(solicitud: Integer): boolean;
    procedure AccedeACoordenadas;
    { Private declarations }
  public
    idsolicitud: Integer;
    { Public declarations }
  end;

var
  FrmVerificacionSDetalle: TFrmVerificacionSDetalle;
  PNDetalle: String;
implementation

uses ClientModuleUnit1;
{$R *.dfm}

function TFrmVerificacionSDetalle.ActualizaEstado(solicitud: Integer): boolean;
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

procedure TFrmVerificacionSDetalle.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmVerificacionSDetalle.BtnRefreshClick(Sender: TObject);
begin
  LlenarGrid(cdDatos, NGPrincipal);
end;

function TFrmVerificacionSDetalle.CadenaToInt(Cadena: string):Integer;
begin
  Result := 0;
  try
    Result := StrToInt(Cadena);
  finally

  end;
end;


function TFrmVerificacionSDetalle.Validar(Dataset: TClientDataSet; Grid: TNextGrid):Integer;
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
      if (CadenaToInt(Grid.Cell[7,Row].AsString) < (CadenaToInt(Grid.Cells[3,Row])-cadenaToint(Grid.Cells[6,Row]))) and
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
           InteliDialog.ShowModal('Advertencia','La cantidad a validar del artículo ' +Grid.Cells[2,Row]+' se excede a la cantidad solicitada', mtInformation, [mbOk], 0) ;
           Grid.Cell[7,Row].Color := clRed;
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

procedure TFrmVerificacionSDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(PNDetalle);
  LiberarVentana(Self, Action);
end;

procedure TFrmVerificacionSDetalle.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas;
end;

procedure TFrmVerificacionSDetalle.AccedeACoordenadas;
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

procedure TFrmVerificacionSDetalle.LlenarGrid(dataset: TClientDataset;Grid: TNextGrid);
var
  Col, Row: Integer;
begin
  Col := 0;
  Row := 0;
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
      Grid.Cells[3,Row] := dataset.FieldByName('fecharequerida').AsString;
      Grid.Cells[4,Row] := dataset.FieldByName('cantidad').AsString;
      Grid.Cells[5,Row] := dataset.FieldByName('cantidadvalidada').AsString;
      Grid.Cells[6,Row] := dataset.FieldByName('cantidadsurtida').AsString;
      Grid.Cells[7,Row] := dataset.FieldByName('codigounidad').AsString;
      Grid.Cells[8,Row] := dataset.FieldByName('estado').AsString;
      Inc(Row);
      dataset.Next;
    end;
    Grid.EndUpdate;

  Except
   on e:exception do
      InteliDialog.ShowModal('No se puede llenar el grid solicitud detalle.',e.message, mtInformation, [mbOk], 0);
  end;


end;

procedure TFrmVerificacionSDetalle.FormShow(Sender: TObject);
begin
  ClientModule1.RastrearGrids(Self);
  ClientModule1.ComponentColor(Self);

  cdDatos.Close;
  CrearConjunto(cdDatos, 'alm_solicituddetalle', PNDetalle, ccCatalog);
  CargarDatosFiltrados(cdDatos, 'idsolicitud', [idsolicitud]);
  cdDatos.Open;

  LlenarGrid(cdDatos, NGPrincipal);
end;

end.
