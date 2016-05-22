unit UTFrmCantidadSalida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, UInteliDialog, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExDBGrids,
  JvDBGrid, NxColumnClasses, NxGrid, AdvShapeButton, ExtCtrls;

type
  TFrmCantidadSalida = class(TForm)
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    cdDatosIdOCDetalle: TIntegerField;
    cdDatosSerie: TStringField;
    cdDatosCantidad: TFloatField;
    cdDatosidpartida: TIntegerField;
    cdDatosCodigoUnidad: TStringField;
    CodigoArticulo: TIntegerField;
    cdDatosCodigoArticulo: TStringField;
    cdCantidades: TClientDataSet;
    cdDatosIdOC: TIntegerField;
    cdDatosCantidadUsr: TFloatField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnCancel: TAdvShapeButton;
    BtnRec: TAdvShapeButton;
    NG1: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    procedure FormShow(Sender: TObject);
    procedure NG1CellClick(Sender: TObject; ACol, ARow: Integer);
    procedure NG1EditExit(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NG1EditAccept(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var Accept: Boolean);
  private
    NombreCapas: String;
    Result: integer;
    procedure LlenarGrid(dataset: TClientDataset; Grid: TNextGrid; Campos:String; Recargar: Boolean);
  public
    IdArticulo: Integer;
    Cantidad: Real;
  end;

var
  FrmCantidadSalida: TFrmCantidadSalida;

implementation

{$R *.dfm}

Uses ClientModuleUnit1;

procedure TFrmCantidadSalida.BtnCancelClick(Sender: TObject);
begin
  cdDatos.First;
  while not cdDatos.Eof do
  begin
    ShowMessage(cdDatos.FieldByName('cantidadusr').AsString);
    cdDatos.Next;
  end;
end;

procedure TFrmCantidadSalida.BtnRecClick(Sender: TObject);
begin
  result := mrOk;
  Close;
end;

procedure TFrmCantidadSalida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := Result;
end;

procedure TFrmCantidadSalida.FormShow(Sender: TObject);
var
  Diferencia, Original: Real;
begin
  Try
    Result := 0;

    ClientModule1.RastrearGrids(Self);
    ClientModule1.ComponentColor(Self);

    cdDatos.CreateDataSet;  // Indicar que se trata solo de un objeto de memoria
    cdDatos.EmptyDataSet;

    // Seleccionar los registros posibles para el artículo
    CrearConjunto(cdCantidades, 'alm_capas_existencia', NombreCapas, ccSelect);
    CargarDatosFiltrados(cdCantidades, 'Organizacion,Articulo', [ClientModule1.cdAcceso.FieldByName('IdOrganizacion').AsInteger, IdArticulo]);
    cdCantidades.Open;

    Original := Cantidad;
    while not cdCantidades.Eof do
    begin
      if Cantidad > 0 then
        if cdCantidades.FieldByName('CantidadCapa').AsFloat > Cantidad then
          Diferencia := Cantidad
        else
          Diferencia := cdCantidades.FieldByName('CantidadCapa').AsFloat
      else
        Diferencia := 0;

      Cantidad := Cantidad - Diferencia;

      cdDatos.Append;
      cdDatos.FieldByName('IdOC').AsInteger := cdCantidades.FieldByName('IdOC').AsInteger;
      cdDatos.FieldByName('IdOCDetalle').AsInteger := cdCantidades.FieldByName('IdOCDetalle').AsInteger;
      cdDatos.FieldByName('IdPartida').AsInteger := cdCantidades.FieldByName('IdPartida').AsInteger;
      cdDatos.FieldByName('IdArticulo').AsInteger := cdCantidades.FieldByName('IdArticulo').AsInteger;
      cdDatos.FieldByName('CodigoArticulo').AsString := cdCantidades.FieldByName('CodigoArticulo').AsString;
      cdDatos.FieldByName('Serie').AsString := cdCantidades.FieldByName('Serie').AsString;
      cdDatos.FieldByName('Cantidad').AsFloat := cdCantidades.FieldByName('CantidadCapa').AsFloat;
      cdDatos.FieldByName('CantidadUsr').AsFloat := Diferencia;
      cdDatos.FieldByName('CodigoUnidad').AsString := cdCantidades.FieldByName('CodigoUnidad').AsString;
      cdDatos.Post;

      cdCantidades.Next;
    end;
    LlenarGrid(cdDatos,NG1,'serie,idpartida,codigounidad,cantidad,cantidadusr',False);

   // Veririficar si las cantidades existentes cubren toda la cantidad solicitada
    if Cantidad > 0 then
    begin
      InteliDialog.ShowModal('Cantidad no disponible',
                             'La cantidad capturada no se encuentra disponible, solo es posible dar salida a ' + FloatToStr(Original - Cantidad) + ' de los ' + FloatToStr(Original) + ' originalmente solicitados',
                             mtInformation, [mbOk], 0);
    end;
  Except
    on e:exception do
      showmessage(e.Message);
  End;
end;

procedure TFrmCantidadSalida.LlenarGrid(dataset: TClientDataset;Grid: TNextGrid; Campos:String; Recargar: Boolean);
//procedimiento recibe clientdataset un nextgrid y una cadena con los campos del dataset a usar y si decea refrescar el dataset antes de cargar el grid
var
  Col, Row: Integer;
  ListaCampo:Tstringlist;
begin
  Row := 0;
  try
    if (dataset.Active = False) or (dataset.RecordCount < 0) then
      raise Exception.Create('Dataset No activo ');

    if Recargar then
      dataset.Refresh;

    //Iniciar en el primer registro del dataset
    dataset.First;

    //Asignar a stringlist los campos para poder leerlos
    ListaCampo := TStringList.Create;
    ListaCampo.CommaText := Campos;

    //Informar si el grid no contiene la misma cantidad de columnas que de campos
    if ListaCampo.Count > Grid.Columns.Count then
      raise Exception.Create('El componente grid no tiene la misma cantidad de columnas '+ #10+
                             ' que la cantidad de campos que quiere mostrar.');

    //empieza edicion del grid
    Grid.BeginUpdate;
    Grid.ClearRows;
    while not dataset.Eof do
    begin
      Grid.AddRow(1);
      Col := 0;
      //Leer todos los campos del stringlist
      while Col < Listacampo.Count do
      begin
        //cargar en el grid el dato correspondiente de acuerdo a su campo y linea
        Grid.Cells[Col,Row] := dataset.FieldByName(ListaCampo[col]).AsString;
        inc(Col);
      end;
      Inc(Row);
      dataset.Next;
    end;
    Grid.EndUpdate;  //Finaliza la edicion del grid

  Except
   on e:exception do
      InteliDialog.ShowModal('No se puede llenar el grid de datos debido a lo siguiente: ',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCantidadSalida.NG1CellClick(Sender: TObject; ACol, ARow: Integer);
begin
  cdDatos.Locate('serie',VarArrayOf([NG1.Cell[0,ARow].AsString]),[]);
end;

procedure TFrmCantidadSalida.NG1EditAccept(Sender: TObject; ACol, ARow: Integer;
  Value: WideString; var Accept: Boolean);
begin
{  try
   // if ACol = 4 then
    begin
      if StrToInt(NG1.Cells[4,NG1.SelectedRow]) > StrToInt(ng1.Cells[3,ng1.SelectedRow]) then
      begin
        ng1.Cells[4,ng1.SelectedRow] := ng1.Cells[3,ng1.SelectedRow];
//        Value := ng1.Cells[3,ng1.SelectedRow];
        cdDatos.Edit;
        cdDatos.FieldByName('cantidadusr').AsString := NG1.Cell[4,NG1.SelectedRow].AsString;
        cdDatos.Post;
        raise Exception.Create('La cantidad capturada no se encuentra disponible en esta orden de compra, verifique la cantidad');
      end
      else
      begin
        cdDatos.Edit;
        cdDatos.FieldByName('cantidadusr').AsString := NG1.Cell[4,NG1.SelectedRow].AsString;
        cdDatos.Post;
      end;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Información', e.Message, mtInformation, [mbOk],0);

  end; }

end;

procedure TFrmCantidadSalida.NG1EditExit(Sender: TObject);
begin
  try
   // if ACol = 4 then
    begin
      if StrToInt(NG1.Cells[4,NG1.SelectedRow]) > StrToInt(ng1.Cells[3,ng1.SelectedRow]) then
      begin
        ng1.Cells[4,ng1.SelectedRow] := ng1.Cells[3,ng1.SelectedRow];
//        Value := ng1.Cells[3,ng1.SelectedRow];
        cdDatos.Edit;
        cdDatos.FieldByName('cantidadusr').AsString := NG1.Cell[4,NG1.SelectedRow].AsString;
        cdDatos.Post;
        raise Exception.Create('La cantidad capturada no se encuentra disponible en esta orden de compra, verifique la cantidad');
      end
      else
      begin
        cdDatos.Edit;
        cdDatos.FieldByName('cantidadusr').AsString := NG1.Cell[4,NG1.SelectedRow].AsString;
        cdDatos.Post;
      end;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Información', e.Message, mtInformation, [mbOk],0);
  end;
end;

end.
