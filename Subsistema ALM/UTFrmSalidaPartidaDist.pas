unit UTFrmSalidaPartidaDist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, DB, JvMemoryDataset, AdvShapeButton,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls,
  DBClient, NxDBColumns, NxColumns;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmSalidaPartidaDist = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    grd1: TNextDBGrid;
    btnBtnAdd: TAdvShapeButton;
    btnBtnClose: TAdvShapeButton;
    mdCapas: TJvMemoryData;
    dsCapas: TDataSource;
    lblCodigoArticulo: TJvLabel;
    lblTituloArticulo: TJvLabel;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    lbl1: TJvLabel;
    lblAlmacen: TJvLabel;
    mdDetalleOriginal: TJvMemoryData;
    mdDetalleOC: TJvMemoryData;
    procedure FormShow(Sender: TObject);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure btnBtnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grd1EditAccept(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var Accept: Boolean);
    procedure grd1Enter(Sender: TObject);
    procedure grd1KeyPress(Sender: TObject; var Key: Char);
    procedure grd1VerticalScroll(Sender: TObject; Position: Integer);
    procedure grd1SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);

    procedure grd1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);  private
    { Private declarations }
    formresult: Integer;
  public
    { Public declarations }
    IdAlmacen: Integer;
    IdArticulo: Integer;
    ModoEncabezado: TDataSetState;
  end;

var
  FrmSalidaPartidaDist: TFrmSalidaPartidaDist;

implementation

uses
  ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSalidaPartidaDist.btnBtnAddClick(Sender: TObject);
begin
  formresult := mrOK;
  Close;
end;

procedure TFrmSalidaPartidaDist.btnBtnCloseClick(Sender: TObject);
begin
  formresult := mrCancel;
  Close;
end;

procedure TFrmSalidaPartidaDist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := formResult;
end;

procedure TFrmSalidaPartidaDist.FormShow(Sender: TObject);
Var
  cdCapas: TClientDataSet;
  idOrg: Integer;
  Field: TFloatField;
  idOCDetalle: Integer;
begin
  clientmodule1.ComponentColor(self);
  ClientModule1.RastrearGrids(self);
  formresult := mrCancel;
  cdCapas := TClientDataSet.Create(nil);
  idOrg := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
  CrearConjunto(cdCapas,'alm_capas',ccCatalog);
  CargarDatosFiltrados(cdCapas,'idorganizacion,idalmacen,idarticulo',[idOrg,IdAlmacen,IdArticulo]);
  cdCapas.Open;
  cdCapas.First;
  // Primero crear la estructura igual al clientdataset para agregar un campo extra
  mdCapas.LoadFromDataSet(cdCapas,0,JvMemoryDataset.lmCopy);
  mdCapas.Close;
  Field := TFloatField.Create(mdCapas);
  Field.Name := 'fldCantidadUsr';
  Field.FieldName := 'cantidadusr';
  Field.FieldKind := fkData;
  Field.DataSet := mdCapas;
  mdCapas.Open;
  mdCapas.LoadFromDataSet(cdCapas,cdCapas.RecordCount,JvMemoryDataset.lmAppend);
  cdCapas.Close;
  EliminarConjunto(cdCapas.ProviderName);
  cdCapas.Free;

  // Para ajustar la cantidad en inventario es necesario sumar lo original en la salida si corresponde
  mdCapas.First;
  while not mdCapas.eof do
  begin
    idOCDetalle := mdCapas.FieldByName('idocdetalle').AsInteger;
    // Ajustar la cantidad del inventario
    if mdDetalleOriginal.Locate('idocdetalle',idOCDetalle,[]) then
    begin
      mdCapas.FieldByName('cantidadcapa').ReadOnly := False;
      mdCapas.Edit;
      mdCapas.FieldByName('cantidadcapa').AsFloat := mdCapas.FieldByName('cantidadcapa').AsFloat +
              mdDetalleOriginal.FieldByName('cantidad').AsFloat;
      mdCapas.Post;
      mdCapas.FieldByName('cantidadcapa').ReadOnly := True;
    end;
    // Insertar la cantidad ya capturada
    if mdDetalleOC.Locate('idocdetalle',idOCDetalle,[]) then
    begin
      mdCapas.Edit;
      mdCapas.FieldByName('cantidadusr').AsFloat := mdDetalleOC.FieldByName('cantidad').AsFloat;
      mdCapas.Post;
    end;

    mdCapas.Next;
  end;
  mdCapas.First;
  grd1.SetFocus;
end;

procedure TFrmSalidaPartidaDist.grd1EditAccept(Sender: TObject; ACol,
  ARow: Integer; Value: WideString; var Accept: Boolean);
begin
  if ACol = 3 then      // Validar la cantidad
  begin
    Accept := (Value <= grd1.GetCellValue(ACol - 1, ARow));
  end;
end;

procedure TFrmSalidaPartidaDist.grd1Enter(Sender: TObject);
begin
  if grd1.SelectedRow >= 0 then
    grd1.SelectCell(3,grd1.SelectedRow,[],true);
end;

procedure TFrmSalidaPartidaDist.grd1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if grd1.SelectedRow < grd1.RowCount - 1 then
      grd1.SelectCell(3, grd1.SelectedRow + 1,[],true)
    else
      grd1.SelectCell(3, 0,[],true);
  end;
end;

procedure TFrmSalidaPartidaDist.grd1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 { if (not (ssCtrl in Shift))  then
    grd1.SelectCell(2,grd1.SelectedRow,[ssShift],False);
  }
end;

procedure TFrmSalidaPartidaDist.grd1SortColumn(Sender: TObject; ACol: Integer;
  Ascending: Boolean);
begin
 { TRY
    SortClientDataSet(dsCapas.DataSet,grd1.Columns.Item[acol].FieldName);
    grd1.ClearSelection;
  EXCEPT
    ;
  END;    }
end;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
var
  i: Integer;
  NewIndexName: String;
  IndexOptions: TIndexOptions;
  Field: TField;
begin
  Result := False;
  Field := ClientDataSet.Fields.FindField(FieldName);

  if Field = nil then
    Exit;

  if (Field is TObjectField) or (Field is TBlobField) or
  (Field is TAggregateField) or (Field is TVariantField)
  or (Field is TBinaryField) then
    Exit;

  ClientDataSet.IndexDefs.Update;

  if ClientDataSet.IndexName = FieldName + '__IdxA' then
  begin
    NewIndexName := FieldName + '__IdxD';
    IndexOptions := [ixDescending];
  end
  else
  begin
    NewIndexName := FieldName + '__IdxA';
    IndexOptions := [];
  end;

  for i := 0 to Pred(ClientDataSet.IndexDefs.Count) do
  begin
    if ClientDataSet.IndexDefs[i].Name = NewIndexName then
    begin
      Result := True;
      Break
    end;
  end;

  if not Result then
  begin
    ClientDataSet.AddIndex(NewIndexName,
    FieldName, IndexOptions);
    Result := True;
  end;

  ClientDataSet.IndexName := NewIndexName;
end;

procedure TFrmSalidaPartidaDist.grd1VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    grd1.ClearSelection;
    grd1.Repaint;
    grd1.Refresh;
  end;
end;

end.
