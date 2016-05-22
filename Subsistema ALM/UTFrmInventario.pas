unit UTFrmInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, AdvEdit, StdCtrls, Buttons, PngSpeedButton,
  JvExControls, JvLabel, ComCtrls, AdvShapeButton, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls, UInteliDialog;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmInventario = class(TForm)
    PanelPrincipal: TPanel;
    DBGridPrincipal: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    BtnAdd: TAdvShapeButton;
    BtnEdit: TAdvShapeButton;
    BtnDelete: TAdvShapeButton;
    BtnRefresh: TAdvShapeButton;
    BtnPrint: TAdvShapeButton;
    BtnSelect: TAdvShapeButton;
    BtnExport: TAdvShapeButton;
    btnImportar: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    pnlProgress: TPanel;
    lblProgress: TLabel;
    pbProgress: TProgressBar;
    PanelFiltro: TPanel;
    LbFiltros: TJvLabel;
    btnfn1: TPngSpeedButton;
    GroupBoxFiltro: TGroupBox;
    BtnSearch: TAdvShapeButton;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridPrincipalCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFtituloKeyPress(Sender: TObject; var Key: Char);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure AccedeACoordenadas;
    procedure FormCreate(Sender: TObject);
    procedure DBGridPrincipalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridPrincipalVerticalScroll(Sender: TObject; Position: Integer);
    procedure DBGridPrincipalSortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
  private
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventario: TFrmInventario;

implementation

Uses
  ClientModuleUnit1, Unit2, UTFrmInventarioDetalle, UtfrmRepInventario, URegistro;

{$R *.dfm}

procedure TFrmInventario.AccedeACoordenadas;
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

procedure TFrmInventario.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmInventario.BtnEditClick(Sender: TObject);
  var popup: TFrmInventarioDetalle;
begin
  if DBGridPrincipal.RowCount > 0 then
  begin
    popup := TFrmInventarioDetalle.Create(nil);
    popup.iddelalmacen := cdDatos.FieldByName('idalmacen').AsInteger;
    popup.dsDatos.DataSet := cdDatos;
    popup.ShowModal;
    popup.Free;
  end
  else
  begin
    InteliDialog.ShowModal('Información.',
                           'Seleccione un almacén para visualizar su inventario.', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmInventario.BtnPrintClick(Sender: TObject);
var
  PopRepInventario: TFrmRepInventario;
begin
  PopRepInventario := TFrmRepInventario.Create(self);
  PopRepInventario.idAlmReport := cdDatos.FieldByName('idalmacen').AsInteger;
  PopRepInventario.ShowModal;
  PopRepInventario.Free;
end;

procedure TFrmInventario.BtnRefreshClick(Sender: TObject);
begin
  cdDatos.Refresh;
end;

procedure TFrmInventario.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmInventario.DBGridPrincipalCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  BtnEdit.Click;
end;

procedure TFrmInventario.DBGridPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    DbGridPrincipal.SelectCell(2,DBGridPrincipal.SelectedRow,[ssShift],False);
end;

procedure TFrmInventario.DBGridPrincipalSortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
  TRY
    SortClientDataSet(Self.cddatos,DBGridPrincipal.Columns.Item[acol].FieldName);
    DbGridPrincipal.ClearSelection;
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

procedure TFrmInventario.DBGridPrincipalVerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    DBGridPrincipal.ClearSelection;
    DBGridPrincipal.Repaint;
    DBGridPrincipal.Refresh;
  end;
end;

procedure TFrmInventario.edtFtituloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Filtrar;
end;

procedure TFrmInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(cdDatos.ProviderName);
  LiberarVentana(Self, Action);
end;

procedure TFrmInventario.FormCreate(Sender: TObject);
begin
  if not ClientModule1.LeePermisos('INVENTARIO','LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure TFrmInventario.Filtrar;
var
  FCodigo, FTitulo: String;
begin
  FCodigo := '-1';
  FTitulo := '-1';
  if (Length(Trim(edtFCodigo.Text)) > 0) then
    FCodigo := EdtFCodigo.Text;
  if (Length(Trim(edtFtitulo.Text)) > 0) then
    FTitulo := edtFtitulo.Text;
   CargarDatosFiltrados(cdDatos, 'codigoalmacen, tituloalmacen, activo', [FCodigo + '%',FTitulo + '%','si']);
   CdDatos.Refresh;
end;

procedure TFrmInventario.FormShow(Sender: TObject);
var almacenes: string;
begin
  try
    AccedeACoordenadas;
    ClientModule1.RastrearGrids(self);
    ClientModule1.ComponentColor(Self);
    CrearConjunto(cdDatos,'alm_almacen',almacenes,ccCatalog);
    CargarDatosFiltrados(cdDatos,'idalmacen',[-9]);
    cdDatos.Open;

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

end.
