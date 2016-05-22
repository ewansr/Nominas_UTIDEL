unit UTFrmPartidaExis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvMemoryDataset, AdvShapeButton, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, ExtCtrls, DBClient, Grids, DBGrids, UInteliDialog;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmPartidaExis = class(TForm)
    pnl1: TPanel;
    lblCodigoArticulo: TJvLabel;
    lblTituloArticulo: TJvLabel;
    lbl1: TJvLabel;
    lblAlmacen: TJvLabel;
    pnl3: TPanel;
    grd1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    pnl2: TPanel;
    btnBtnAdd: TAdvShapeButton;
    btnBtnClose: TAdvShapeButton;
    mdDetalleOC: TJvMemoryData;
    mdDetalleOriginal: TJvMemoryData;
    dsCapas: TDataSource;
    mdCapas: TJvMemoryData;
    dscant: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btnBtnAddClick(Sender: TObject);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure grd1AfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure grd1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grd1VerticalScroll(Sender: TObject; Position: Integer);
    procedure grd1SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure grd1BeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure grd1EditAccept(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var Accept: Boolean);
  private
    function cadenaaentero(cadena: string): integer;
    function cadenaafloat(cadena: string): real;
    { Private declarations }
  public
    idarticulo,idalmacen:integer;
    tituloalmacen: string;
    Cantidadt: Real;
    { Public declarations }
  end;

var
  FrmPartidaExis: TFrmPartidaExis;

implementation
uses
  ClientModuleUnit1;
{$R *.dfm}

procedure TFrmPartidaExis.btnBtnAddClick(Sender: TObject);
begin
  try
    if grd1.RowCount > 0 then
    begin
      cantidadt := cadenaafloat(grd1.Cells[3,grd1.SelectedRow]);
//      if (Cantidadt <> 0) and (Cantidadt < cadenaafloat(grd1.Cells[2,grd1.SelectedRow])) then
      if  (Cantidadt <= cadenaafloat(grd1.Cells[2,grd1.SelectedRow])) then
      begin
        dscant.DataSet.FieldByName('cantidad').AsFloat := Cantidadt;
        dscant.DataSet.FieldByName('idocdetalle').AsInteger := dsCapas.DataSet.FieldByName('idocdetalle').AsInteger;
      end
      else
        raise InteligentException.Create('verifique la cantidad ingresada.');
    end;
    close;
  except
    on e: InteligentException do
      InteliDialog.ShowModal('Información.','no se puede continuar por lo siguiente: '+e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmPartidaExis.btnBtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPartidaExis.FormShow(Sender: TObject);
Var
  cdCapas: TClientDataSet;
  idOrg: Integer;
  Field: TFloatField;
  idOCDetalle: Integer;
begin
  clientmodule1.ComponentColor(self);
  ClientModule1.RastrearGrids(self);
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

  if dscant.State = dsEdit then
  begin
    // Insertar la cantidad ya capturada
    if mdCapas.Locate('idocdetalle',idOCDetalle,[]) then
    begin
      mdCapas.Edit;
      mdCapas.FieldByName('cantidadusr').AsFloat := dscant.DataSet.FieldByName('cantidad').AsFloat;
      mdCapas.Post;
    end;
  end;
  mdCapas.First;
  grd1.SetFocus;
end;

procedure TFrmPartidaExis.grd1AfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
{  var
  fila:integer;
  encontrado: Boolean; }
begin
 { fila := 0;
  while fila < grd1.RowCount do
  begin
    if (fila <> aROW) and (cadenaafloat(grd1.Cells[3,fila]) > 0) then
    begin
      encontrado := True;
    end;
    inc(fila);
  end;
  Accept := not encontrado;}
  {fila := 0;
  while (fila < grd1.rowcount)  do
  begin
    if (fila <> aROW) and (cadenaafloat(grd1.Cells[3,aROW]) > 0) then
      grd1.Cells[ACol,arow] := '0';
    inc(fila);
  end;   }

end;

procedure TFrmPartidaExis.grd1BeforeEdit(Sender: TObject; ACol, ARow: Integer;
  var Accept: Boolean);
 { var
  fila:integer;
  encontrado: Boolean; }
begin
 { fila := 0;
  while fila < grd1.RowCount do
  begin
    if (fila <> aROW) and (cadenaafloat(grd1.Cells[3,fila]) > 0) then
    begin
      encontrado := True;
    end;
    inc(fila);
  end;
  Accept := not encontrado;
              }
end;

procedure TFrmPartidaExis.grd1EditAccept(Sender: TObject; ACol, ARow: Integer;
  Value: WideString; var Accept: Boolean);
  var
  fila:integer;
  encontrado: Boolean;
begin
  fila := 0;
  while fila < grd1.RowCount do
  begin
    if (fila <> aROW) and (cadenaafloat(grd1.Cells[3,fila]) > 0) then
    begin
      encontrado := True;
    end;
    inc(fila);
  end;
  Accept := not encontrado;

end;

procedure TFrmPartidaExis.grd1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 { if (not (ssCtrl in Shift))  then
    grd1.SelectCell(2,grd1.SelectedRow,[ssShift],False); }

end;

procedure TFrmPartidaExis.grd1SortColumn(Sender: TObject; ACol: Integer;
  Ascending: Boolean);
begin
  {TRY
    SortClientDataSet(Self.dsCapas.DataSet,Self.grd1.Columns.Item[acol].FieldName);
    Self.grd1.ClearSelection;
  EXCEPT
    ;
  END;   }
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

procedure TFrmPartidaExis.grd1VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    Self.grd1.ClearSelection;
    Self.grd1.Repaint;
    Self.grd1.Refresh;
  end;
end;

function TFrmPartidaExis.cadenaaentero(cadena:string):integer;
var
resultado :Integer;
begin
  if Length(Trim(cadena)) > 0 then
  begin
    try
      resultado := StrToInt(cadena);
    except
      resultado := 0;
    end
  end
  else
    resultado := 0;
  Result := resultado;
end;

function TFrmPartidaExis.cadenaafloat(cadena:string):real;
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

end.
