unit UTFrmForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvEdit, StdCtrls, Buttons, PngSpeedButton, JvExControls, JvLabel,
  AdvShapeButton, NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, ExtCtrls, IWVCLBaseControl, IWBaseControl, URegistro,
  IWBaseHTMLControl, IWControl, IWCompLabel, IWDBStdCtrls, DB, Mask, DBCtrls,
  DBClient, UInteliDialog, Menus, NxColumnClasses, NxGrid, ComCtrls, AdvMenus,
  AdvMenuStylers, ImgList, PngImageList, ComObj, UTFrmCatalogo, xDataBase;

type
  TFrmForm = class(TForm)
    PanelPrincipal: TPanel;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    BtnRefresh: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    PanelFiltro: TPanel;
    dsOrganizacion: TDataSource;
    cdNivelespred: TClientDataSet;
    dsNivelespred: TDataSource;
    CdDatos: TClientDataSet;
    dsDatos: TDataSource;
    BtnEdit: TAdvShapeButton;
    BtnCancelar: TAdvShapeButton;
    pmPrincipal: TPopupMenu;
    Verificar1: TMenuItem;
    Recargar1: TMenuItem;
    Cancelar1: TMenuItem;
    cdNiveles3: TClientDataSet;
    dsNiveles3: TDataSource;
    ProgressBar1: TProgressBar;
    NextGrid1: TNextGrid;
    NxTreeColumn1: TNxTreeColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxDateColumn1: TNxDateColumn;
    NxDateColumn2: TNxDateColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn8: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn1: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    PngImageList1: TPngImageList;
    FileOpenDialog1: TFileOpenDialog;
    PopUpMenu: TAdvPopupMenu;
    Editar1: TMenuItem;
    Eliminar1: TMenuItem;
    Hermano1: TMenuItem;
    MenuItem1: TMenuItem;
    Cancelar_: TMenuItem;
    EstiloMenu: TAdvMenuOfficeStyler;
    BtnImportar: TAdvShapeButton;
    cdDatos2: TClientDataSet;
    dsDatos2: TDataSource;
    BtnGuardar: TAdvShapeButton;
    BtnAdd: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCloseClick(Sender: TObject);
    procedure cbbEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure NextGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NextGrid1CellClick(Sender: TObject; ACol, ARow: Integer);
    procedure MostrarAnexo;
    function LocateRecord(Grid: TNextGrid; Str: string):Integer;
    procedure NextGrid1AfterRowMove(Sender: TObject; FromPos, ToPos: Integer);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Hermano1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Cancelar_Click(Sender: TObject);
    procedure NextGrid1RowMove(Sender: TObject; FromPos, ToPos: Integer;
      var Accept: Boolean);
    procedure BtnImportarClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure NextGrid1SelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure BtnAddClick(Sender: TObject);
    function SeleccionarItem: TLista;
    procedure SeleccionarRegistro;
    procedure BtnEditClick(Sender: TObject);
  private
    { Private declarations }
    providername, PNSolicitud, prov3, prov4: string;
    _RegistroActual: TLista;
    function verificar(cliente: TClientDataset; solicitud: integer ): Boolean ;
    function Cancelar(solicitud: Integer): Boolean;
    procedure AccedeACoordenadas;
    procedure CargarGrid(Cli: Tclientdataset; Grid: TNextGrid; campos: String);
  public
    ModoSeleccion: Boolean;
    idconvenio : integer;
    { Public declarations }
  end;

var
  FrmForm: TFrmForm;
  AutoIncrement, EspaciosTotales, Fila_PosicionFinal, Fila_PosicionInicial : Integer;
  Bandera, ResetGrid : Boolean;

implementation

uses ClientModuleUnit1, UTFrmDatosForm;

{$R *.dfm}

Procedure TFrmForm.SeleccionarRegistro;
begin
  if CdDatos.State = dsBrowse then
  Try
    if NextGrid1.RowCount < 1 Then
      Raise Exception.Create('No hay registros.');

      _RegistroActual := TLista.Create();
      _RegistroActual := GetCurrentRecord(cdDatos);
      close;

  Except
  on e:exception do
    InteliDialog.ShowModal('No se puede seleccionar.',e.message, mtInformation, [mbOk], 0);
  End;
end;

function TFrmForm.SeleccionarItem: TLista;
begin
  bandera := true;
  ModoSeleccion := true;
  self.FormStyle := fsNormal;
  self.Visible := false;
  BtnCancelar.Visible := False;
  BtnImportar.Visible := False;
  BtnGuardar.Visible := False;
  BtnAdd.Visible := False;
  self.ShowModal;
  result := GetCurrentRecord(cdDatos);
  result := _RegistroActual;
end;

function TFrmForm.LocateRecord(Grid: TNextGrid; Str: string):Integer;
Var
  i, Index: Integer;
begin
  Index := -1;
  for i := 0 to Grid.RowCount - 1 do begin
    if Grid.Cells[9, i] = Str then begin
      Index := i;
    end;
  end;
  Result := Index;
end;

function TFrmForm.Cancelar(solicitud: Integer):Boolean;
begin

end;

procedure TFrmForm.Cancelar_Click(Sender: TObject);
begin
  NextGrid1.MoveRow(Fila_PosicionFinal, Fila_PosicionInicial);
end;

procedure TFrmForm.BtnGuardarClick(Sender: TObject);
Var
  i, idAnterior, idPosterior, id, ParentId:Integer;
begin
  for i := 0 to NextGrid1.RowCount - 1 do begin
    CargarDatosFiltrados(cdDatos2, 'idactividad', [NextGrid1.Cell[9, i].AsInteger]);
    cdDatos2.Refresh;
    id := cdDatos2.FieldByName('idactividad').AsInteger;
    if i > 0 then begin
      idAnterior := NextGrid1.Cell[9, i - 1].AsInteger;
    end else begin
      idAnterior := NextGrid1.Cell[9, i].AsInteger;
    end;
    if i < NextGrid1.RowCount - 1 then begin
      idPosterior := NextGrid1.Cell[9, i + 1].AsInteger;
    end else begin
      idPosterior := NextGrid1.Cell[9, i].AsInteger;
    end;

    cdDatos2.Edit;
    //cdDatos2.FieldByName('between_before').AsInteger := idAnterior;
    //cdDatos2.FieldByName('between_after').AsInteger := idPosterior;
    cdDatos2.FieldByName('idOrden').AsInteger := i;
    cdDatos2.FieldByName('nivel').AsInteger := NextGrid1.Cell[11, i].AsInteger;
    cdDatos2.FieldByName('idpadre').AsInteger := NextGrid1.Cell[10, i].AsInteger;
    cdDatos2.Post;
    cdDatos2.ApplyUpdates(-1);
    {zq_x.Active := False;
    zq_x.SQL.Text := 'UPDATE AnexoC SET between_before = ' + IntToStr(idAnterior) + ', between_after = ' + IntToStr(idPosterior) + ', idOrden = '+IntToStr(i)+', iNivel = ' + NextGrid1.Cells[11, i] + ', iId_Padre = '+NextGrid1.Cells[10, i]+' WHERE iId = ' + IntToStr(id);
    zq_x.ExecSQL;}
  end;
  MostrarAnexo;
end;

procedure TFrmForm.BtnAddClick(Sender: TObject);
var
  PopUp: TFrmDatosForm;
begin
  PopUp := TFrmDatosForm.Create(Self);
  PopUp.dsDatos.DataSet := CdDatos2;
  cdDatos2.Append;
  cdDatos2.FieldByName('idactividad').AsInteger := 0;
  PopUp.ShowModal;
  cdDatos2.ApplyUpdates(-1);
  cdDatos2.Refresh;
  PopUp.Free
end;

procedure TFrmForm.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmForm.BtnEditClick(Sender: TObject);
begin
  if ModoSeleccion then
    SeleccionarRegistro;
end;

procedure TFrmForm.BtnImportarClick(Sender: TObject);
var
   appExcel: Variant;
   i, j, ActualParent, ActualLevel, y: integer;
   Hoja: OleVariant;
   Padre0,Padre1,Padre2,Padre3,Padre4,Padre5,Padre6,Padre7,Padre8,Padre9,Padre10:Integer;
const
    numColumnas: integer = 3;
    numFilas: integer = 4;
begin
  if FileOpenDialog1.Execute then begin
    appExcel := CreateOleObject('Excel.Application');
    appExcel.WorkBooks.Open(FileOpenDialog1.FileName);
    Hoja := appExcel.Worksheets.Item['Anexo C']; // Abre Hoja 'Datos'.
    Hoja.Activate;
    NextGrid1.ClearRows;
    ShowMessage(IntToStr(appExcel.Rows.CurrentRegion.Columns.Count){appExcel.Cells[1,1].Value});

    cdDatos2.Active := False;
    cdDatos2.Open;
    ActualParent := 0;
    ActualLevel := 0;
    y := 0;
    ProgressBar1.Visible := True;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := appExcel.Rows.CurrentRegion.Rows.Count;
    for i := 2 to appExcel.Rows.CurrentRegion.Rows.Count do begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      cdDatos2.Append;
      cdDatos2.FieldByName('idactividad').AsInteger := 0;
      cdDatos2.FieldByName('nivel').AsInteger := appExcel.Cells[i,2].Value;
      if appExcel.Cells[i,2].Value = 0 then begin
        cdDatos2.FieldByName('idpadre').AsInteger := 0;
      end else begin
        cdDatos2.FieldByName('idpadre').AsInteger := ActualParent;
      end;
      cdDatos2.FieldByName('idconvenio').AsString := appExcel.Cells[i,1].Value;
      cdDatos2.FieldByName('numeroactividad').AsString := appExcel.Cells[i,3].Value;
      if appExcel.Cells[i,6].Value <> '' then begin
        cdDatos2.FieldByName('iTipoActividad').AsInteger := 1;
      end else begin
        cdDatos2.FieldByName('iTipoActividad').AsInteger := 0;
      end;
      cdDatos2.FieldByName('descripcion').AsString := appExcel.Cells[i,5].Value;
      cdDatos2.FieldByName('fechainicio').AsDateTime := appExcel.Cells[i,12].Value;
      cdDatos2.FieldByName('fechainicio').AsDateTime := appExcel.Cells[i,13].Value;
      cdDatos2.FieldByName('ponderado').AsInteger := appExcel.Cells[i,8].Value;
      cdDatos2.FieldByName('cantidad').AsFloat := appExcel.Cells[i,7].Value;
      cdDatos2.FieldByName('ventamn').AsFloat := appExcel.Cells[i,9].Value;
      cdDatos2.FieldByName('idOrden').AsInteger := y;
      cdDatos2.FieldByName('iTipoActividad').AsInteger := appExcel.Cells[i,16].Value;
      Inc(Y);
      cdDatos2.Post;
      cdDatos2.ApplyUpdates(-1);
      if appExcel.Cells[i,2].Value = 0 then begin
        ActualParent := cdDatos2.FieldByName('idactividad').AsInteger;
        Padre0 := ActualParent;
      end else
      if appExcel.Cells[i,2].Value = 1 then begin
        ActualParent := Padre0;
        Padre1 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 2 then begin
        ActualParent := Padre1;
        Padre2 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 3 then begin
        ActualParent := Padre2;
        Padre3 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 4 then begin
        ActualParent := Padre3;
        Padre4 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 5 then begin
        ActualParent := Padre4;
        Padre5 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 6 then begin
        ActualParent := Padre5;
        Padre6 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 7 then begin
        ActualParent := Padre6;
        Padre7 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 8 then begin
        ActualParent := Padre7;
        Padre8 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 9 then begin
        ActualParent := Padre8;
        Padre9 := cdDatos2.FieldByName('idactividad').AsInteger;
      end else
      if appExcel.Cells[i,2].Value = 10 then begin
        ActualParent := Padre9;
        Padre10 := cdDatos2.FieldByName('idactividad').AsInteger;
      end;
      cdDatos2.Edit;
      cdDatos2.FieldByName('idpadre').AsInteger := ActualParent;
      cdDatos2.Post;
      cdDatos2.ApplyUpdates(-1);
    end;

    ProgressBar1.Position := 0;
    appExcel.Quit;
    appExcel := Unassigned;
  end;
  ProgressBar1.Visible := False;
end;

Function TFrmForm.verificar(cliente: TClientDataset; solicitud: integer ): Boolean;
begin

end;

procedure TFrmForm.cbbEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

procedure TFrmForm.Editar1Click(Sender: TObject);
begin
  Bandera := True;
end;

procedure TFrmForm.Eliminar1Click(Sender: TObject);
Var
  i,y: Integer;
  Finishit: Boolean;
  iNivel: Integer;
  NuevoNivel: Integer;
begin
  //Modifica como hijos
  Bandera := True;
  iNivel := NextGrid1.Cell[11, Fila_PosicionInicial].AsInteger;
  NextGrid1.MoveRow(Fila_PosicionInicial, Fila_PosicionFinal);
  NextGrid1.Cells[10, Fila_PosicionFinal] := NextGrid1.Cells[9, Fila_PosicionFinal - 1];
  NextGrid1.Cells[11, Fila_PosicionFinal] := IntToStr(NextGrid1.Cell[11, Fila_PosicionFinal - 1].AsInteger + 1);
  NuevoNivel := (NextGrid1.Cell[11, Fila_PosicionFinal - 1].AsInteger + 1);

  if Fila_PosicionInicial < Fila_PosicionFinal then begin
    if NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger < EspaciosTotales then begin
      Finishit := False;
      i := Fila_PosicionInicial;
      y := Fila_PosicionFinal;
      //iNivel := NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger;
      while not Finishit do begin
        if NextGrid1.Cell[11, i].AsInteger > iNivel then begin
          NextGrid1.Cell[11, i].AsInteger := NuevoNivel + 1;
          NextGrid1.MoveRow(i, y);
        end;
        if (NextGrid1.Cell[11, i].AsInteger = iNivel) OR (NextGrid1.Cell[11, i].AsInteger < iNivel) then begin
          Finishit := True;
        end;
      end;
    end;
  end else begin
    if NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger < EspaciosTotales then begin
      Finishit := False;
      i := Fila_PosicionInicial + 1;
      y := Fila_PosicionFinal + 1;
      while not Finishit do begin
        if i <= NextGrid1.RowCount - 1 then begin
          if NextGrid1.Cell[11, i].AsInteger > iNivel then begin
            NextGrid1.Cell[11, i].AsInteger := NuevoNivel + 1;
            NextGrid1.MoveRow(i, y);
          end;
          if (NextGrid1.Cell[11, i].AsInteger = iNivel) OR (NextGrid1.Cell[11, i].AsInteger < iNivel) then begin
            Finishit := True;
          end;
          Inc(i);
          Inc(y);
        end else begin
          Finishit := True;
        end;
      end
    end;
  end;

  //NxButton1.Click;
  BtnCancelar.Click;
  MostrarAnexo;
end;

procedure TFrmForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(providername);
  EliminarConjunto(PNSolicitud);
  EliminarConjunto(prov3);
  LiberarVentana(Self, Action);
end;

procedure TFrmForm.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas;
end;

procedure TFrmForm.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
begin
  // Buscar la última posición utilizada por el usuario
{  xLeft := Self.Left;
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
  Self.Height := xHeight;}
end;

procedure TFrmForm.FormShow(Sender: TObject);
begin
  try
    ClientModule1.RastrearGrids(Self);
    ClientModule1.ComponentColor(Self);

    IdConvenio := 1;

    //Carga elementos del catálogo de conceptos:
    cdDatos.Close;
    CrearConjunto(cdDatos, 'nuc_catalogodeactividades', PNSolicitud, ccCatalog);
    CargarDatosFiltrados(cdDatos, 'idconvenio', [idconvenio]);
    cdDatos.Open;
    //Enumera los espacios totales:
    cdNivelesPred.Close;
    CrearConjunto(cdNivelesPred, 'nuc_catalogodeactividades2', providername, ccCatalog);
    CargarDatosFiltrados(cdNivelesPred, 'idconvenio', [idconvenio]);
    cdNivelesPred.Open;
    EspaciosTotales := cdNivelesPred.FieldByName('iEspacios').AsInteger;
    //Saca los colores:
    {cdNiveles3.Close;
    CrearConjunto(cdNiveles3, 'nuc_conceptosxcontrato3', prov3, ccCatalog);
    CargarDatosFiltrados(cdNiveles3, 'sConfiguracion', ['sColores_Niveles']);
    cdNiveles3.Open;}
    //Updates:
    cdDatos2.Close;
    CrearConjunto(cdDatos2, 'nuc_catalogodeactividades', prov4, ccUpdate);
    CargarDatosFiltrados(cdDatos2, 'idconvenio', [idconvenio]);
    cdDatos2.Open;

    MostrarAnexo;
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

procedure TFrmForm.Hermano1Click(Sender: TObject);
Var
  i,y: Integer;
  Finishit: Boolean;
  iNivel: Integer;
  NuevoNivel: Integer;
begin
  Bandera := True;
  iNivel := NextGrid1.Cell[11, Fila_PosicionInicial].AsInteger;
  NextGrid1.MoveRow(Fila_PosicionInicial, Fila_PosicionFinal);
  NextGrid1.Cells[10, Fila_PosicionFinal] := NextGrid1.Cells[10, Fila_PosicionFinal - 1];
  NextGrid1.Cells[11, Fila_PosicionFinal] := NextGrid1.Cells[11, Fila_PosicionFinal - 1];

  NuevoNivel := NextGrid1.Cell[11, Fila_PosicionFinal - 1].AsInteger;

  if Fila_PosicionInicial < Fila_PosicionFinal then begin
    if NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger < EspaciosTotales then begin
      Finishit := False;
      i := Fila_PosicionInicial;
      y := Fila_PosicionFinal;
      //iNivel := NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger;
      while not Finishit do begin
        if NextGrid1.Cell[11, i].AsInteger > iNivel then begin
          NextGrid1.Cell[11, i].AsInteger := NuevoNivel + 1;
          NextGrid1.MoveRow(i, y);
        end;
        if (NextGrid1.Cell[11, i].AsInteger = iNivel) OR (NextGrid1.Cell[11, i].AsInteger < iNivel) then begin
          Finishit := True;
        end;
      end;
    end;
  end else begin
    if NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger < EspaciosTotales then begin
      Finishit := False;
      i := Fila_PosicionInicial + 1;
      y := Fila_PosicionFinal + 1;
      //iNivel := NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger;
      while not Finishit do begin
        if i <= NextGrid1.RowCount - 1 then begin
          if NextGrid1.Cell[11, i].AsInteger > iNivel then begin
            NextGrid1.Cell[11, i].AsInteger := NuevoNivel + 1;
            NextGrid1.MoveRow(i, y);
            Inc(i);
          end;
          if i <= NextGrid1.RowCount - 1 then begin
            if (NextGrid1.Cell[11, i].AsInteger = iNivel) OR (NextGrid1.Cell[11, i].AsInteger < iNivel) then begin
              Finishit := True;
            end;
          end;

          Inc(y);
        end else begin
          Finishit := True;
        end;
      end
    end;
  end;

  //NxButton1.Click;
  BtnCancelar.Click;
  MostrarAnexo;
end;

procedure TFrmForm.MenuItem1Click(Sender: TObject);
Var
  i,y: Integer;
  Finishit: Boolean;
  iNivel: Integer;
  NuevoNivel: Integer;
begin
//Hermano del de abajo.
  Bandera := True;
  iNivel := NextGrid1.Cell[11, Fila_PosicionInicial].AsInteger;
  NextGrid1.MoveRow(Fila_PosicionInicial, Fila_PosicionFinal);
  NextGrid1.Cells[10, Fila_PosicionFinal] := NextGrid1.Cells[10, Fila_PosicionFinal + 1];
  NextGrid1.Cells[11, Fila_PosicionFinal] := NextGrid1.Cells[11, Fila_PosicionFinal + 1];
  NuevoNivel := NextGrid1.Cell[11, Fila_PosicionFinal + 1].AsInteger;

  if Fila_PosicionInicial < Fila_PosicionFinal then begin
    if NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger < EspaciosTotales then begin
      Finishit := False;
      i := Fila_PosicionInicial;
      y := Fila_PosicionFinal;
      //iNivel := NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger;
      while not Finishit do begin
        if NextGrid1.Cell[11, i].AsInteger > iNivel then begin
          NextGrid1.Cell[11, i].AsInteger := NuevoNivel + 1;
          NextGrid1.MoveRow(i, y);
        end;
        if (NextGrid1.Cell[11, i].AsInteger = iNivel) OR (NextGrid1.Cell[11, i].AsInteger < iNivel) then begin
          Finishit := True;
        end;
      end;
    end;
  end else begin
    if NextGrid1.Cell[11, Fila_PosicionFinal].AsInteger < EspaciosTotales then begin
      Finishit := False;
      i := Fila_PosicionInicial + 1;
      y := Fila_PosicionFinal + 1;
      while not Finishit do begin
        if i <= NextGrid1.RowCount - 1 then begin
          if NextGrid1.Cell[11, i].AsInteger > iNivel then begin
            NextGrid1.Cell[11, i].AsInteger := NuevoNivel + 1;
            NextGrid1.MoveRow(i, y);
          end;
          if (NextGrid1.Cell[11, i].AsInteger = iNivel) OR (NextGrid1.Cell[11, i].AsInteger < iNivel) then begin
            Finishit := True;
          end;
          Inc(i);
          Inc(y);
        end else begin
          Finishit := True;
        end;
      end
    end;
  end;


  //NxButton1.Click;
  BtnCancelar.Click;
  MostrarAnexo;
end;

procedure TFrmForm.MostrarAnexo;
Var
  x, i, y, FilaPadreGeneral, FilaPadre, IdSearch, IdLocate: Integer;
  ValorPonderado : Double;
  Saltos : String;
begin
  Try
    NextGrid1.ClearRows;
    AutoIncrement := 0;

    NextGrid1.Columns[0].Width := ((EspaciosTotales) * 20);
    NextGrid1.Columns[1].Width := ((EspaciosTotales + 2) * 15);
    NextGrid1.BeginUpdate;

    ProgressBar1.Visible := True;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := EspaciosTotales * cdDatos.RecordCount;
    for x := 0 to EspaciosTotales do begin
      cdDatos.First;
      while not cdDatos.EoF do begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        With NextGrid1 do begin
          IdLocate := LocateRecord(NextGrid1, cdDatos.FieldByName('idActividad').AsString);
          if IdLocate = -1 then begin
            if cdDatos.FieldByName('nivel').AsInteger = 0 then begin
              AddRow;
            end else begin
              IdSearch := LocateRecord(NextGrid1, cdDatos.FieldByName('idpadre').AsString);
              AddChildRow(IdSearch);
            end;
            Inc(AutoIncrement);
            Saltos := '';
            for y := 0 to cdDatos.FieldByName('nivel').AsInteger do
              Saltos := Saltos + '  ';
            Cells[1, LastAddedRow] := Saltos + cdDatos.FieldByName('numeroactividad').AsString;
            Cells[2, LastAddedRow] := cdDatos.FieldByName('descripcion').AsString;
            Cell[3, LastAddedRow].AsDateTime := cdDatos.FieldByName('fechainicio').AsDateTime;
            Cell[4, LastAddedRow].AsDateTime := cdDatos.FieldByName('fechafinal').AsDateTime;
            Cells[5, LastAddedRow] := cdDatos.FieldByName('cantidad').AsString;
            Cells[6, LastAddedRow] := cdDatos.FieldByName('unidadmedida').AsString;
            Cells[8, LastAddedRow] := cdDatos.FieldByName('ventamn').AsString;
            Cells[9, LastAddedRow] := cdDatos.FieldByName('idactividad').AsString;
            Cells[10, LastAddedRow] := cdDatos.FieldByName('idpadre').AsString;
            Cells[11, LastAddedRow] := cdDatos.FieldByName('nivel').AsString;
            for i := 0 to 8 do begin
              if cdDatos.FieldByName('nivel').AsInteger = EspaciosTotales then begin
                NextGrid1.Cell[i,LastAddedRow].Color:=clWhite;
                if cdDatos.FieldByName('ponderado').AsString <> '' then begin
                  Cells[7, LastAddedRow] := cdDatos.FieldByName('ponderado').AsString;
                end else begin
                  Cells[7, LastAddedRow] := '0';
                end;
              end;
            end;

            for i := 0 to 8 do begin
              if cdDatos.FieldByName('nivel').AsInteger = EspaciosTotales then begin
                NextGrid1.Cell[i,LastAddedRow].Color:=clWhite;
                if cdDatos.FieldByName('ponderado').AsString <> '' then begin
                  Cells[7, LastAddedRow] := cdDatos.FieldByName('ponderado').AsString;
                end else begin
                  Cells[7, LastAddedRow] := '0';
                end;
              end else begin
                {cdNiveles3.Locate('sValor',cdDatos.FieldValues['nivel'],[]);
                NextGrid1.Cell[i,LastAddedRow].Color := cdNiveles3.FieldValues['sExtra'];}
                NextGrid1.Cell[i,LastAddedRow].Color := clWhite;
                NextGrid1.Cell[i,LastAddedRow].FontStyle := [fsBold];
              end;
            end;

          end else begin
            if cdDatos.FieldByName('nivel').AsInteger < EspaciosTotales then begin
              Cell[7, IdLocate].AsFloat := 0;
              for y := 0 to NextGrid1.RowCount - 1 do begin
                if Cells[10, y] = Cells[9, IdLocate]{zq_a.FieldByName('iId').AsString} then begin
                  Cell[7, IdLocate].AsFloat :=  (Cell[7, IdLocate].AsFloat + Cell[7, y].AsFloat);
                end;
              end;
            end;
          end;
        end;
        cdDatos.Next;
      end;
    end;
    ProgressBar1.Position := 0;
    NextGrid1.EndUpdate;
    ProgressBar1.Visible := False;
    cdDatos.Refresh;
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
  End;
end;

procedure TFrmForm.NextGrid1AfterRowMove(Sender: TObject; FromPos,
  ToPos: Integer);
Var
  After, Before, Valor : Integer;
  isFirst, isLast : Boolean;
  BtnMsg: Integer;
begin
  Bandera := False;
  ResetGrid := False;
  //Fila_PosicionInicial := FromPos;
  Fila_PosicionFinal := ToPos;
  isFirst := False;
  isLast := False;
  if ToPos = 0 then begin
    After := 1;
    isFirst := True;
  end else begin
    After := ToPos;
  end;
  if (ToPos + 1) = NextGrid1.RowCount then begin
    Before := ToPos;
    isLast := True;
  end else begin
    Before := ToPos;
  end;
  PopUpMenu.Items[0].Visible := False;
  PopUpMenu.Items[1].Visible := False;
  PopUpMenu.Items[2].Visible := False;
  PopUpMenu.Items[3].Visible := False;
  PopUpMenu.Items[4].Visible := False;
  if isFirst then begin
    PopUpMenu.Items[0].Caption:='Convertir en Padre de todos los conceptos';
    PopUpMenu.Items[0].Visible := True;
    PopUpMenu.Items[1].Visible := False;
    PopUpMenu.Items[2].Visible := False;
  end else if isLast then begin
    PopUpMenu.Items[1].Caption:='Convertir en hijo del concepto ' + Trim(NextGrid1.Cells[1, ToPos - 1]);
    PopUpMenu.Items[1].Visible := True;
    PopUpMenu.Items[2].Caption:='Convertir en hermano del concepto ' + Trim(NextGrid1.Cells[1, ToPos - 1]);
    PopUpMenu.Items[2].Visible := True;
    PopUpMenu.Items[0].Visible := False;
    //ShowMessage('La actividad, es la última de la lista, quedará debajo de la actividad ' + NextGrid1.Cells[1, ToPos - 1] );
  end else begin
    PopUpMenu.Items[0].Caption:='Convertir en Padre del concepto ' + Trim(NextGrid1.Cells[1, ToPos + 1]);
    PopUpMenu.Items[0].Visible := True;
    PopUpMenu.Items[1].Caption:='Convertir en hijo del concepto ' + Trim(NextGrid1.Cells[1, ToPos - 1]);
    PopUpMenu.Items[1].Visible := True;
    if NextGrid1.Cells[11, ToPos - 1] = NextGrid1.Cells[11, ToPos + 1] then begin
      PopUpMenu.Items[3].Caption:='Convertir en hermano del concepto ' + Trim(NextGrid1.Cells[1, ToPos + 1]);
      PopUpMenu.Items[3].Visible := True;
    end else begin
      PopUpMenu.Items[2].Caption:='Convertir en hermano del concepto ' + Trim(NextGrid1.Cells[1, ToPos - 1]);
      PopUpMenu.Items[2].Visible := True;
      PopUpMenu.Items[3].Caption:='Convertir en hermano del concepto ' + Trim(NextGrid1.Cells[1, ToPos + 1]);
      PopUpMenu.Items[3].Visible := True;
    end;
    //ShowMessage('La actividad quedará normal y quedará dentro de la partida ' + NextGrid1.Cells[1, ToPos - 1] + ' y la partida ' + NextGrid1.Cells[1, ToPos + 1]);
  end;
  PopUpMenu.PopupAtCursor;
  if Bandera = False then begin
    Cancelar_.Click;
  end;
end;

procedure TFrmForm.NextGrid1CellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  try
    CdDatos.Locate('idactividad',VarArrayOf([NextGrid1.Cell[9,NextGrid1.SelectedRow].AsInteger]),[]);
  except
    ;
  end;
end;

procedure TFrmForm.NextGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  PopUp: TFrmDatosForm;
begin
  if ModoSeleccion then
    SeleccionarRegistro;
  {if NextGrid1.RowCount > 0 then begin
    if NextGrid1.SelectedRow >= 0 then begin
      PopUp.dsDatos
    end;
  end;}
  {if ModoSeleccion then begin
    cdDatos.Locate('iId', NextGrid1.Cell[9, ARow], []);
    ModoSeleccion := False;
    Close;
  end;}
  {if NGDatos.RowCount > 0 then
  begin
    if NGDatos.SelectedRow >= 0 then
    begin
      popup := TFrmVerificacionSDetalle.Create(Self);
      popup.idsolicitud := NGDatos.Cell[0,NGDatos.SelectedRow].AsInteger;
      CdDatos.Locate('idsolicitud',VarArrayOf([NGDatos.Cell[0,NGDatos.SelectedRow].AsInteger]),[]);
      popup.dsSolicitud.DataSet := CdDatos;
      popup.ShowModal;
      CdDatos.Refresh;
      popup.Free
    end
    else
    InteliDialog.ShowModal('Información.','Seleccione una solicitud.', mtInformation, [mbOk], 0);
  end
  else
    InteliDialog.ShowModal('Información.','No hay registros.', mtInformation, [mbOk], 0);}
end;

procedure TFrmForm.NextGrid1RowMove(Sender: TObject; FromPos, ToPos: Integer;
  var Accept: Boolean);
begin
  Fila_PosicionInicial := FromPos;
end;

procedure TFrmForm.NextGrid1SelectCell(Sender: TObject; ACol, ARow: Integer);
begin
  cdDatos.Locate('idactividad', NextGrid1.Cell[9, ARow].AsInteger, []);
end;

procedure TFrmForm.CargarGrid(Cli: Tclientdataset; Grid: TNextGrid; campos: String );
begin

end;

end.
