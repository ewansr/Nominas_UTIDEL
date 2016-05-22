unit UTFrmBusquedaDetallexEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, AdvShapeButton, StdCtrls, DB, NxColumns, NxDBColumns, DBClient,
  Grids, DBGrids, AdvEdit, UinteliDialog, JvExControls, JvLabel, NxCollection,
  URegistro;

type
  TFrmBusquedaDetallexEntrada = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dsdetalle: TDataSource;
    dsentrada: TDataSource;
    dsarticulo: TDataSource;
    NextDBGrid1: TNextDBGrid;
    Entrada: TNxDBTextColumn;
    Unidad: TNxDBTextColumn;
    Articulo: TNxDBTextColumn;
    FechaRec: TNxDBTextColumn;
    cdDatos: TClientDataSet;
    Panel3: TPanel;
    JvLabel1: TJvLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Panel4: TPanel;
    detallados: TCheckBox;
    cddetalles: TClientDataSet;
    dsdetalles: TDataSource;
    Panel5: TPanel;
    Serie: TAdvEdit;
    Panel6: TPanel;
    BtnSearch: TAdvShapeButton;
    OrdenCompra: TNxDBTextColumn;
    Proveedor: TNxDBTextColumn;
    Cantidad: TNxDBNumberColumn;
    procedure SerieKeyPress(Sender: TObject; var Key: Char);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure NextDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure detalladosClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure NextDBGrid1CellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure NextDBGrid1CellFormating(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure FormDestroy(Sender: TObject);
  private
    {Private Declarations }
  public
    IdDetalle : Integer;
  end;

var
  FrmBusquedaDetallexEntrada: TFrmBusquedaDetallexEntrada;

implementation

uses
  ClientModuleUnit1;

{$R *.dfm}

procedure TFrmBusquedaDetallexEntrada.SerieKeyPress(Sender: TObject;
    var Key: Char);
var
  Cuantos: Integer;
begin
  case Key of
    #13: BtnSearch.Click;
  end;
end;

procedure TFrmBusquedaDetallexEntrada.BtnSearchClick(Sender: TObject);
var
 Cuantos: Integer;
begin
  try
    Try
      Screen.Cursor := crAppStart;

      // Buscar información que se ajuste a la descripcion que se le ha indicado
      if Not CargarDatosFiltrados(cdDatos, 'NumeroMR', ['%' + StringReplace(Serie.Text, ',', '', [rfReplaceAll]) + '%']) then
        raise InteligentException.Create('No ha sido posible filtrar la tabla de Entradas al almacén, la busqueda por el número de entrada ' + Serie.Text + ' ha reportado un error');

      // Verificar cuantos registros son los que se van a mostrar antes de traerlos
      Cuantos := CuantosRegistros(cdDatos);
    Finally
      Screen.Cursor := crDefault;
    End;

    {
      if (Cuantos > MaxRead) And (InteliDialog.ShowModal('Número de registros seleccionados muy grande',
            'El número de registros seleccionados es muy grande, un total de ' + IntToStr(Cuantos) + ', traer esta cantidad de registros puede tomar un tiempo considerable dependiendo de la velocidad de su conexión' + #10 + #10 +
            '¿Desea traer todos estos registros ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
           Exit;  // Salir sin refrescar
  }

    Try
      Screen.Cursor := crAppStart;

      cdDatos.Refresh;
      if cdDatos.RecordCount > 0 then
      begin
        //insertar Filtrado para mostrar solamente los detallados
        detallados.Checked:=true;
        cddatos.CancelRange;
        cddatos.IndexFieldNames:='cuantos';
        cddatos.SetRangeStart;
        cddatos.FieldByName('cuantos').Value:=1;
        cddatos.SetRangeEnd;
        cddatos.FieldByName('cuantos').Value:=MaxInt;
        cddatos.ApplyRange;
        NextDBGrid1.SetFocus;
      end;
    Finally
      Screen.Cursor := crDefault;
    End;
  except
    on e:InteligentException do
      InteliDialog.ShowModal('Ha ocurrido un error de comunicación con el servidor', e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmBusquedaDetallexEntrada.detalladosClick(Sender: TObject);
begin
  try
    if detallados.Checked=false then
    begin
      cddatos.CancelRange;
      cddatos.IndexFieldNames:='cuantos';
      cddatos.SetRange([0], [0]);
    end
    else
    begin
      cddatos.CancelRange;
      cddatos.IndexFieldNames:='cuantos';
      cddatos.SetRangeStart;
      cddatos.FieldByName('cuantos').Value:=1;
      cddatos.SetRangeEnd;
      cddatos.FieldByName('cuantos').Value:=MaxInt;
      cddatos.ApplyRange;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al realizar el filtrado pro detalle', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmBusquedaDetallexEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if dsEntrada.DataSet.Active then
      Tclientdataset(dsentrada.DataSet).CancelRange;

    if dsDetalle.DataSet.Active then
      Tclientdataset(dsdetalle.DataSet).CancelRange;

    if IdDetalle >= 0 then
      ModalResult := mrOk;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmBusquedaDetallexEntrada.FormDestroy(Sender: TObject);
var
  h: Integer;
begin
  //LiberarVentana(Self);

  // Registrar los datos de las columnas
  for h := 0 to NextDBGrid1.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name, NextDBGrid1.Columns.Item[h].Name, IntToStr(NextDBGrid1.Columns.Item[h].Width));
end;

procedure TFrmBusquedaDetallexEntrada.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmBusquedaDetallexEntrada.FormShow(Sender: TObject);
var
  h: Integer;
begin
  IdDetalle := -9;
  ClientModule1.ComponentColor(self);
  AccedeACoordenadas(Self);

  // Reajustar los anchos de las columnas
  for h := 0 to NextDBGrid1.Columns.Count -1 do
  Try
    NextDBGrid1.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, NextDBGrid1.Columns.Item[h].Name));
  Except
    ;
  End;

  // Crear el conjunto
  Try
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdDatos, 'alm_datosentrada', ccCatalog) or not CargarDatosFiltrados(cdDatos, 'NumeroMR', [-9]) then
        raise InteligentException.Create('No se ha podido establecer la comunicación correcta con la tabla de Entradas al almacén');
      cdDatos.Open;


      if not CrearConjunto(cddetalles, 'alm_especdetallesubgrupo', ccCatalog) or not CargarDatosFiltrados(cddetalles, 'IdSubgrupo', [-9]) then
        raise InteligentException.Create('No se ha podido establecer la comunicación correcta con la tabla de Especificacione de Subgrupos');
      cddetalles.Open;
    Finally
      Screen.Cursor := crDefault;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No ha sido posible comunicarse con la base de datos',
                             e.Message, mtWarning, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema',
                             'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message,
                             mtWarning, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmBusquedaDetallexEntrada.NextDBGrid1CellColoring(Sender: TObject;
  ACol, ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
  // (csBoldTextSelection, csEmpty, csFocused, csSelected)
  if not (csSelected in CellState) and not (csEmpty in CellState) and (ARow Mod 2 = 0) then
    CellColor := clCream;
end;

procedure TFrmBusquedaDetallexEntrada.NextDBGrid1CellDblClick(Sender: TObject;
  ACol, ARow: Integer);
begin
 try
    if Tclientdataset(dsdetalle.DataSet).RecordCount = 0 then
      exit;
    if Not CargarDatosFiltrados(cddetalles, 'IdSubgrupo', [cddatos.FieldByName('IdSubgrupo').AsInteger]) then
      raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
    cddetalles.Refresh;
    if cddetalles.RecordCount=0 then
    begin
      InteliDialog.ShowModal('Este Articulo no se encuentra detallado', 'Para poder detallar este articulo debera definir su'+
      'detalle de Subgrupo' + '', mtinformation, [mbOK], 0);
      exit;
    end;

    IdDetalle := Tclientdataset(dsdetalle.DataSet).FieldByName('identradadetalle').AsInteger;
    Close;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al seleccionar Detalles de la Entrada', 'Error desconocido, informe al administrador' + '', mterror, [mbOK], 0);
 end;
end;

procedure TFrmBusquedaDetallexEntrada.NextDBGrid1CellFormating(Sender: TObject;
  ACol, ARow: Integer; Value: WideString; var TextColor: TColor;
  var FontStyle: TFontStyles; CellState: TCellState);
begin
  if not (csEmpty in CellState) and (NextDBGrid1.DataSource.DataSet.FieldByName('Cuantos').AsInteger = 0) then
  begin
    FontStyle := [fsItalic];
    if csSelected in CellState then
      TextColor := clSilver
    else
      TextColor := clGray;
  end;
end;

procedure TFrmBusquedaDetallexEntrada.NextDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    IdDetalle := cdDatos.FieldByName('IdEntradaDetalle').AsInteger;
    Close;
  end;
end;

procedure TFrmBusquedaDetallexEntrada.NxButton1Click(Sender: TObject);
begin
   Close;
end;

procedure TFrmBusquedaDetallexEntrada.NxButton2Click(Sender: TObject);
begin
  Try
    Try
      Screen.Cursor := crAppStart;

      if Tclientdataset(dsdetalle.DataSet).RecordCount = 0 then
        exit;

      if Not CargarDatosFiltrados(cddetalles, 'IdSubgrupo', [cddatos.FieldByName('IdSubgrupo').AsInteger]) then
        raise InteligentConnection.Create('No ha sido posible acceder a los datos de los Detalles Especificados');

      cddetalles.Refresh;

      if cddetalles.RecordCount=0 then
        raise InteligentException.Create('Para poder detallar este articulo debera definir su detalle de Subgrupo');

      IdDetalle := Tclientdataset(dsdetalle.DataSet).FieldByName('identradadetalle').AsInteger;
    Finally
      Screen.Cursor := crDefault;
    End;
    Close;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal('Error de acceso a la base de datos', e.Message, mterror, [mbOK], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('El artículo no ha sido detallado previamente', e.Message, mtWarning, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

end.
