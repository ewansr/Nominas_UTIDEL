unit UTFrmSelecControlLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, DB, NxDBColumns, NxColumns, StdCtrls,DBClient;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmControlLog = class(TForm)
    pnlSuperior: TPanel;
    pnlCentral: TPanel;
    pnlInferior: TPanel;
    NextDBGrid1: TNextDBGrid;
    BtnSelect: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    dsDatos: TDataSource;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    Label1: TLabel;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NextDBGrid1VerticalScroll(Sender: TObject; Position: Integer);
    procedure NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure NextDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    Cancelado: Boolean;
  end;

var
  FrmControlLog: TFrmControlLog;

implementation
uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmControlLog.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmControlLog.BtnSelectClick(Sender: TObject);
begin
  if dsDatos.DataSet.RecordCount > 0 then
    Cancelado := False;
  close;
end;

procedure TFrmControlLog.FormShow(Sender: TObject);
begin
  clientmodule1.componentcolor(self);
  ClientModule1.RastrearGrids(self);
  Cancelado := True;
end;

procedure TFrmControlLog.NextDBGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  BtnSelect.Click;
end;

procedure TFrmControlLog.NextDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    NextDBGrid1.SelectCell(2,NextDBGrid1.SelectedRow,[ssShift],False);
end;

procedure TFrmControlLog.NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
  Ascending: Boolean);
begin
  TRY
    SortClientDataSet(TClientDataSet(dsDatos.DataSet),NextDBGrid1.Columns.Item[acol].FieldName);
    NextDBGrid1.ClearSelection;
  EXCEPT
    ;
  END;
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

procedure TFrmControlLog.NextDBGrid1VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    NextDBGrid1.ClearSelection;
    NextDBGrid1.Repaint;
    NextDBGrid1.Refresh;
  end;
end;

end.
