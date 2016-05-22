unit UTFrmPapelera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,UInteliDialog,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, URegistro,
  ExtCtrls, DB, DBClient, NxDBColumns, NxColumns, Menus, NxGrid, NxColumnClasses,
  AdvShapeButton, StdCtrls, ComCtrls,StrUtils;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmPapelera = class(TForm)
    pnlsuperior: TPanel;
    pnlBtnes: TPanel;
    pnlDatos: TPanel;
    pnlVentana: TPanel;
    DbGridVentanas: TNextDBGrid;
    Splitter1: TSplitter;
    CdVentanas: TClientDataSet;
    DsVentanas: TDataSource;
    DsDatos: TDataSource;
    CdDatos: TClientDataSet;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    pmRecuperar: TPopupMenu;
    Recuperar1: TMenuItem;
    NGDatos: TNextGrid;
    CdTemp: TClientDataSet;
    BtnRefresh: TAdvShapeButton;
    lblInstrucciones: TLabel;
    BtnRecuperar: TAdvShapeButton;
    pnlProgress: TPanel;
    lblProgress: TLabel;
    pbProgress: TProgressBar;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DbGridVentanasCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure Recuperar1Click(Sender: TObject);
    procedure NGDatosCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnRecuperarClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure DbGridVentanasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DbGridVentanasVerticalScroll(Sender: TObject; Position: Integer);
    procedure DbGridVentanasSortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
  private
    function BuscaDatos(Clien: TClientdataset; tabla,
      provider: string): Boolean;
    function CargarGrid(tab,base:string;grid: TnextGrid; Cli: Tclientdataset): Boolean;
    function activa(id: string; Grid: TnextGrid): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPapelera: TFrmPapelera;
  PNVentana, PNDatos: string;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmPapelera.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPapelera.BtnRecuperarClick(Sender: TObject);
var
  i :Integer;
begin
  i := 0;
  pbProgress.Position := 0;
  pnlprogress.Visible := True;
  lblprogress.Visible := True;
  pnlprogress.repaint;
  lblprogress.repaint;
  pbProgress.Max := NGDatos.RowCount;
  while i < NGDatos.RowCount do
  begin
    NGDatos.SelectCell(0,i,[ssShift],True);
    activa(NGDatos.Cell[0,NGDatos.SelectedRow].Hint,NGDatos);
    Inc(i);
    pbProgress.Position := i;
    NGDatos.Row[i-1].Selected := False;
  end;
  pnlProgress.Visible := False;
  BtnRefresh.Click;
end;

procedure TFrmPapelera.BtnRefreshClick(Sender: TObject);
begin
  BuscaDatos(CdDatos,CdVentanas.FieldByName('tabla').AsString,PNDatos);
end;

function TFrmPapelera.BuscaDatos(Clien: TClientdataset; tabla, provider: string):Boolean;
var
  Listabases: TStringlist;
begin
  Result := False;
  try
    Clien.Close;
    EliminarConjunto(provider);
  except
  end;
  try
    CrearConjunto(Clien,tabla,provider,ccUpdate);
    CargarDatosFiltrados(Clien,'activo',['no'],false);
    Clien.Open;
    ListaBases := TStringList.Create;
    ListaBases.Clear;
    ListaBases.CommaText := VarRegistry('\Configuracion', '\Conexion', 'DATABASE');
    CargarGrid(tabla,ListaBases[ListaBases.IndexOf(Globales.Elemento('DATABASE').AsString)],NGDatos,Clien);
    Result := True;
    Listabases.Free;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede buscar datos.',e.message, mtInformation, [mbOk], 0);
  end;
end;

function TFrmPapelera.activa(id:string;Grid: TnextGrid):Boolean;
var
  PNUpdate, base: string;
  cdUpdate: TClientDataSet;
  consulta, pntemp, llave, tabla: string;
  Listabases: TStringList;
begin
  if (Grid.Cell[Grid.Columns.Count-1,Grid.SelectedRow].AsBoolean) and (Grid.SelectedRow <> 0) then
  begin
    try
      tabla := CdVentanas.FieldByName('tabla').AsString;
      ListaBases := TStringList.Create;
      ListaBases.Clear;
      ListaBases.CommaText := VarRegistry('\Configuracion', '\Conexion', 'DATABASE');
      base := ListaBases[ListaBases.IndexOf(Globales.Elemento('DATABASE').AsString)];
      llave := '';
      consulta := 'select * from information_schema.COLUMNS where TABLE_SCHEMA = '+'"'+base+'"'+' and table_name = '+'"'+tabla+'"'+' and column_key = '+'"'+'PRI'+'"';
      CrearConjunto(CdTemp, 'tabla',pntemp,ccCatalog);
      PonerSentenciaSQL(pntemp,consulta);
      CdTemp.Open;
      llave := CdTemp.FieldByName('column_name').AsString;
      cdUpdate := TClientDataSet.Create(self);
      cdUpdate.RemoteServer := ClientModule1.DSProviderConnection1;
      CrearConjunto(cdUpdate,tabla,PNUpdate,ccUpdate);
      cdUpdate.Close;
      CargarDatosFiltrados(cdUpdate,llave+',activo',[id,'no']);
      cdUpdate.Open;
      if cdUpdate.RecordCount = 1 then
      begin
        cdUpdate.Edit;
        cdUpdate.FieldByName('activo').AsString := 'si';
        cdUpdate.Post;
        cdUpdate.ApplyUpdates(-1);
      end;
      cdUpdate.Close;
      EliminarConjunto(cdUpdate.ProviderName);
      cdUpdate.Free;
      cdtemp.close;
      EliminarConjunto(CdTemp.ProviderName);
      Listabases.Free;
    except
     on e:exception do
       InteliDialog.ShowModal('No se puede recuperar el registro.',e.message, mtInformation, [mbOk], 0);
    end;
  end;
  //sd
end;

function TFrmPapelera.CargarGrid(tab,base:string; grid: TnextGrid; Cli: Tclientdataset):Boolean;
var i: Integer;
  consulta, pntemp, llave: string;

begin
  consulta := '';
  llave := '';
  try
    if Cli.State <> dsBrowse then
      raise Exception.Create('Consulta cerrada.');
      grid.BeginUpdate;
      grid.ClearRows;
      grid.Columns.Clear;
    if Cli.RecordCount > 0  then
    begin
      i := 0;
      while i < Cli.FieldCount-1 do
      begin

//      ShowMessage(Cli.FieldList.Fields[i].FullName);
        grid.Columns.Add(TNxTextColumn,Cli.FieldList.Fields[i].FullName);
        if AnsiContainsText(Cli.FieldList.Fields[i].FullName,'id') then
         grid.Columns[i].Visible :=false;
        inc(i);
      end;
      consulta := 'select * from information_schema.COLUMNS where TABLE_SCHEMA = '+'"'+base+'"'+' and table_name = '+'"'+tab+'"'+' and column_key = '+'"'+'PRI'+'"';
      CrearConjunto(CdTemp, 'tabla',pntemp,ccUpdate);
      PonerSentenciaSQL(pntemp,consulta);
      CdTemp.Open;
//    ShowMessage(CdTemp.FieldByName('column_name').AsString);
      llave := CdTemp.FieldByName('column_name').AsString;
      grid.AddRow(1);
      grid.Cell[grid.Columns.Count-1,0].AsString := 'Todos';
      grid.Columns.Add(TNxCheckBoxColumn,'Recuperar');
      grid.Columns[grid.Columns.Count-1].Options := grid.Columns[grid.Columns.Count-1].Options+[coCanClick,coCanInput,coEditing,coPublicUsing];
      Cli.First;
      while not Cli.Eof do
      begin
        grid.AddRow(1);
        i := 0;
        while i < grid.Columns.Count-1 do
        begin
          grid.Cell[i,grid.RowCount-1].AsString := Cli.FieldByName(Cli.FieldList.Fields[i].FullName).AsString;
          if CdTemp.FieldByName('column_name').AsString = llave then
            grid.Cell[0,grid.RowCount-1].Hint := Cli.FieldByName(llave).AsString ;
          Inc(i);
        end;
        Cli.Next;
      end;
    end;
    grid.EndUpdate;
    cdtemp.close;
    EliminarConjunto(CdTemp.ProviderName);
  except
   on e:exception do
      InteliDialog.ShowModal('No se puede cargar el grid.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmPapelera.DbGridVentanasCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  BuscaDatos(CdDatos,CdVentanas.FieldByName('tabla').AsString,PNDatos);
end;

procedure TFrmPapelera.DbGridVentanasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    DbGridVentanas.SelectCell(2,DbGridVentanas.SelectedRow,[ssShift],False);
end;

procedure TFrmPapelera.DbGridVentanasSortColumn(Sender: TObject; ACol: Integer;
  Ascending: Boolean);
begin
  TRY
    SortClientDataSet(Self.cddatos,Self.DbGridVentanas.Columns.Item[acol].FieldName);
    Self.DbGridVentanas.ClearSelection;
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

procedure TFrmPapelera.DbGridVentanasVerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    Self.DbGridVentanas.ClearSelection;
    Self.DbGridVentanas.Repaint;
    Self.DbGridVentanas.Refresh;
  end;
end;

procedure TFrmPapelera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    EliminarConjunto(CdVentanas.ProviderName);
  finally
    Action := caFree;
  end;

end;

procedure TFrmPapelera.FormShow(Sender: TObject);
begin
  try
    ClientModule1.RastrearGrids(Self);
    ClientModule1.ComponentColor(self);
    CrearConjunto(cdventanas, 'nuc_pantalla', PNVentana, ccSelect);
    cdventanas.Open;
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

procedure TFrmPapelera.NGDatosCellClick(Sender: TObject; ACol, ARow: Integer);
var
  i: Integer;
begin
  i := 1;
  if (ACol = NGDatos.Columns.Count-1) and (ARow = 0) then
  begin
//    ShowMessage(VarToStr(NGDatos.Cell[ACol,ARow].AsBoolean));
    while i < (NGDatos.RowCount) do
    begin
      NGDatos.Cell[ACol,i].AsBoolean := not NGDatos.Cell[ACol,ARow].AsBoolean;
      Inc(i);
    end;
  end;
end;

procedure TFrmPapelera.Recuperar1Click(Sender: TObject);
begin
  NGDatos.Cell[NGDatos.Columns.Count-1, NGDatos.SelectedRow].AsBoolean := True;
  activa(NGDatos.Cell[0,NGDatos.SelectedRow].Hint,NGDatos);
  BtnRefresh.Click;
end;

end.
