unit UTFrmEntradaXOCPartidaAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, DB, JvMemoryDataset, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, StdCtrls,
  JvExControls, JvLabel, ExtCtrls,DBClient;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmEntradaXOCPartidaAdd = class(TForm)
    pnl1: TPanel;
    lbl1: TJvLabel;
    lbl2: TJvLabel;
    edtSerie: TEdit;
    edtConsecutivo: TEdit;
    pnl2: TPanel;
    grd1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBNumberColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBNumberColumn;
    mdOCDetalle2: TJvMemoryData;
    dsOCDetalle2: TDataSource;
    pnl3: TPanel;
    btnBtnRec: TAdvShapeButton;
    btnBtnClose: TAdvShapeButton;
    mdDetalle: TJvMemoryData;
    mdOCDetalle: TJvMemoryData;
    nxdbchckbxclmn1: TNxDBCheckBoxColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    lbl3: TJvLabel;
    edtSerieOC: TEdit;
    procedure FormShow(Sender: TObject);
    procedure grd1CellClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure grd1CellFormating(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure grd1EditAccept(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var Accept: Boolean);
    procedure btnBtnRecClick(Sender: TObject);
    procedure grd1VerticalScroll(Sender: TObject; Position: Integer);
    procedure grd1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);  private
    { Private declarations }
  public
    { Public declarations }
    idEntrada: Integer;
  end;

var
  FrmEntradaXOCPartidaAdd: TFrmEntradaXOCPartidaAdd;

implementation

uses
  UInteliDialog;

{$R *.dfm}

procedure TFrmEntradaXOCPartidaAdd.btnBtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmEntradaXOCPartidaAdd.btnBtnRecClick(Sender: TObject);
Var
  Cuantos: Integer;
begin
  grd1.BeginUpdate;
  mdOCDetalle2.First;
  while not mdOCDetalle2.eof do
  begin
    if mdOCDetalle2.FieldByName('agregar').AsBoolean and (mdOCDetalle2.FieldByName('cantidadcaptura').AsFloat > 0) then
    begin
      mdDetalle.Insert;
      mdDetalle.FieldValues['identrada'] := idEntrada;
      mdDetalle.FieldValues['identradadetalle'] := 0;
      mdDetalle.FieldValues['idocdetalle'] := mdOCDetalle2.FieldValues['idocdetalle'];
      mdDetalle.FieldValues['idarticulo'] := mdOCDetalle2.FieldValues['idarticulo'];
      mdDetalle.FieldValues['codigoarticulo'] := mdOCDetalle2.FieldValues['codigoarticulo'];
      mdDetalle.FieldValues['tituloarticulo'] := mdOCDetalle2.FieldValues['tituloarticulo'];
      mdDetalle.FieldValues['codigounidad'] := mdOCDetalle2.FieldValues['codigounidad'];
      mdDetalle.FieldValues['titulodisciplina'] := mdOCDetalle2.FieldValues['titulodisciplina'];
      mdDetalle.FieldValues['cantidad'] := mdOCDetalle2.FieldValues['cantidadcaptura'];
      mdDetalle.FieldValues['precio'] := mdOCDetalle2.FieldValues['precio'];
      mdDetalle.FieldValues['costo'] := mdOCDetalle2.FieldValues['costo'];
      mdDetalle.FieldValues['idimpuesto'] := mdOCDetalle2.FieldValues['idimpuesto'];
      mdDetalle.FieldValues['codigoimpuesto'] := mdOCDetalle2.FieldValues['codigoimpuesto'];
      mdDetalle.FieldValues['tasa'] := mdOCDetalle2.FieldValues['tasa'];
      mdDetalle.FieldValues['observaciones'] := mdOCDetalle2.FieldValues['observaciones'];
      mdDetalle.Post;
    end;
    mdOCDetalle2.Next;
  end;
  grd1.EndUpdate;
  Close;
end;

procedure TFrmEntradaXOCPartidaAdd.FormShow(Sender: TObject);
var
  Field1, Field2: TBooleanField;
  Field3: TFloatField;
  //Field1: TStringField;
begin
  // copiar la estructura de la orden de compra y agregar un campo booleano
  mdOCDetalle2.LoadFromDataSet(mdOCDetalle,0,JvMemoryDataset.lmCopy);
  mdOCDetalle2.Close;
  Field1 := TBooleanField.Create(mdOCDetalle2);
  Field1.Name := 'fldAgregar';
  Field1.FieldName := 'agregar';
  Field1.FieldKind := fkData;
  Field1.DataSet := mdOCDetalle2;
  Field2 := TBooleanField.Create(mdOCDetalle2);
  Field2.Name := 'fldSeleccionable';
  Field2.FieldName := 'seleccionable';
  Field2.FieldKind := fkData;
  Field2.DataSet := mdOCDetalle2;
  Field3 := TFloatField.Create(mdOCDetalle2);
  Field3.Name := 'fldCantidadCaptura';
  Field3.FieldName := 'cantidadcaptura';
  Field3.FieldKind := fkData;
  Field3.DataSet := mdOCDetalle2;
  mdOCDetalle2.Open;
  // Cargar ahora si todos los elementos de la orden de compra
  mdOCDetalle.First;
  mdOCDetalle2.LoadFromDataSet(mdOCDetalle,mdOCDetalle.RecordCount,JvMemoryDataset.lmAppend);
  // Marcar como "no seleccionable" las partidas que ya existen en la entrada
  mdOCDetalle2.First;
  while not mdOCDetalle2.eof do
  begin
    mdOCDetalle2.Edit;
    mdOCDetalle2.FieldByName('agregar').AsBoolean := False;
    mdOCDetalle2.FieldByName('seleccionable').AsBoolean := not mdDetalle.Locate('idocdetalle',mdOCDetalle2.FieldByName('idocdetalle').AsInteger,[]);
    mdOCDetalle2.FieldByName('cantidadcaptura').AsFloat := mdOCDetalle2.FieldByName('cantidad').AsFloat - mdOCDetalle2.FieldByName('cantidadrecibida').AsFloat;
    mdOCDetalle2.Post;
    mdOCDetalle2.Next;
  end;
  mdOCDetalle2.First;
end;

procedure TFrmEntradaXOCPartidaAdd.grd1CellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  if mdOCDetalle2.FieldByName('seleccionable').AsBoolean then
  begin
    nxdbchckbxclmn1.Options := nxdbchckbxclmn1.Options + [coEditing];
    if mdOCDetalle2.FieldByName('agregar').AsBoolean then
      NxDBNumberColumn2.Options := NxDBNumberColumn2.Options + [coEditing]
    else
      NxDBNumberColumn2.Options := NxDBNumberColumn2.Options - [coEditing];
  end
  else
  begin
    nxdbchckbxclmn1.Options := nxdbchckbxclmn1.Options - [coEditing];
    NxDBNumberColumn2.Options := NxDBNumberColumn2.Options - [coEditing];
  end;
end;

procedure TFrmEntradaXOCPartidaAdd.grd1CellFormating(Sender: TObject; ACol,
  ARow: Integer; Value: WideString; var TextColor: TColor;
  var FontStyle: TFontStyles; CellState: TCellState);
begin
  if not mdOCDetalle2.FieldByName('seleccionable').AsBoolean then
    TextColor := clGray
  else
    TextColor := clBlack;
    // TextColor := clInactiveCaptionText;
end;

procedure TFrmEntradaXOCPartidaAdd.grd1EditAccept(Sender: TObject; ACol,
  ARow: Integer; Value: WideString; var Accept: Boolean);
begin
  if ACol = 6 then
  begin
    Accept := StrToFloat(Value) <= (mdOCDetalle2.FieldByName('cantidad').AsFloat - mdOCDetalle2.FieldByName('cantidadrecibida').AsFloat);
    if not Accept then
      InteliDialog.ShowModal('ERROR','Cantidad no valida','La canitdad sobrepasa lo pendiente por recibir para la orden de compra correspondiente',
                  mtError,[mbOK],0);
  end;

end;

procedure TFrmEntradaXOCPartidaAdd.grd1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    grd1.SelectCell(2,grd1.SelectedRow,[ssShift],False);

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

procedure TFrmEntradaXOCPartidaAdd.grd1VerticalScroll(Sender: TObject;
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
