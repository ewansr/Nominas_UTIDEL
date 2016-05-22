unit UTFrmPermisoRol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxDBColumns, NxColumns, JvExControls, JvLabel, pngimage, ExtCtrls,
  Buttons, PngSpeedButton, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, DB, DBClient, DBCtrls, UInteliDialog, NxGrid,
  NxColumnClasses, ComCtrls, Menus, NxCollection, JvColorBox, JvColorButton,
  AdvShapeButton, TeeEdiGrad, TeCanvas, paramtreeview, JvExComCtrls,
  JvPageListTreeView, JvComCtrls, JvCheckTreeView, ImgList, URegistro;

type
  TFrmPermisoRol = class(TForm)
    PanelPrincipal: TPanel;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    PanelFiltro: TPanel;
    GroupBoxFiltro: TGroupBox;
    dsDatos: TDataSource;
    cdDatos: TClientDataSet;
    Label1: TLabel;
    DsRoles: TDataSource;
    CdRoles: TClientDataSet;
    CbRoles: TDBLookupComboBox;
    GridPermisos: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    PanelProgreso: TPanel;
    Progreso: TProgressBar;
    Label2: TLabel;
    EtiquetaProgreso: TLabel;
    cdVentanas: TClientDataSet;
    Cdpermisos: TClientDataSet;
    BtnRefresh: TAdvShapeButton;
    BtnAdd: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    tvMenu: TTreeView;
    tvStateImages: TImageList;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Habilitar1: TMenuItem;
    N1: TMenuItem;
    Habilitardesdeaqu1: TMenuItem;
    Deshabilitardesdeaqu1: TMenuItem;
    PopupMenu2: TPopupMenu;
    BtnSearch: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure GridPermisosCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure EditFVentanaKeyPress(Sender: TObject; var Key: Char);
    procedure CbRolesKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvMenuClick(Sender: TObject);
    procedure tvMenuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AccedeACoordenadas;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tvMenuMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    cdUpt: TClientDataSet;
    procedure Activar(Grid: TNextGrid; idPerm: Integer);
    procedure Desactivar(Grid: TNextGrid;idPerm: Integer);
    procedure LlenarGrid(Grid: TNextGrid; cCliente: TClientDataset);
    procedure EnviarCambios(Grid: TNextGrid);
    procedure ValidarTodos(Grid: TNextGrid);
    procedure GenerarPermisos(idUSer: Integer);
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPermisoRol: TFrmPermisoRol;
  ProviderName, PRovidernameupt: String;

implementation

Uses
  ClientModuleUnit1,Unit2;

const
  //ImageList.StateIndex=0 has some bugs, so we add one dummy image to position 0
  cFlatUnCheck = 1;
  cFlatChecked = 2;
  cFlatRadioUnCheck = 3;
  cFlatRadioChecked = 4;

{$R *.dfm}

procedure TFrmPermisoRol.Activar(Grid: TNextGrid; idPerm: Integer);

begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_permisorol', providernameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idpermisorol', [idPerm]);
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      try
        cdUpt.Edit;
        cdUpt.FieldByName('valor').AsString := '1';
        cdUpt.ApplyUpdates(-1);
      except
        on e: exception do
        begin
          cdUpt.Free;
          showmessage(e.Message);
        end;
      end;
    end;
    cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmPermisoRol.BtnAddClick(Sender: TObject);
begin
  if cbRoles.KeyValue = null then
    exit;
  if cdDatos.State <> dsBrowse then
    exit;
    EnviarCambios(GridPermisos);
end;

procedure TFrmPermisoRol.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPermisoRol.BtnRefreshClick(Sender: TObject);
begin
  if cbRoles.KeyValue = null then
    exit;
  if cdDatos.State <> dsBrowse then
    exit;
  cdDatos.Refresh;
  LLenarGrid(GridPermisos,cdDatos);
end;

procedure TFrmPermisoRol.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmPermisoRol.Button1Click(Sender: TObject);
begin
    tvMenu.TopItem := tvMenu.Items.GetFirstNode;
    tvMenu.TopItem.Selected := True;
    //PostMessage(tvMenu.Handle, WM_VSCROLL, SB_TOP, 0);

end;

procedure TFrmPermisoRol.CbRolesKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmPermisoRol.Desactivar(Grid: TnextGrid;idPerm: Integer);
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_permisorol', providernameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idpermisorol', [idPerm]);
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      try
        cdUpt.Edit;
        cdUpt.FieldByName('valor').AsString := '0';
        cdUpt.ApplyUpdates(-1);
      except
        on e: exception do
        begin
          cdUpt.Free;
          showmessage(e.Message);
        end;
      end;
    end;
    cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmPermisoRol.EditFVentanaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmPermisoRol.EnviarCambios(Grid: TNextGrid);
var i, idselected: integer;

begin
  if grid.RowCount < 2 then
    exit;
  if not ClientModule1.LeePermisos(TAdvShapeButton(BtnAdd),Self,False) then
    Exit;
 try
  panelProgreso.Visible := True;
  EtiquetaProgreso.Visible := True;
  panelProgreso.repaint;
  EtiquetaProgreso.repaint;
  progreso.Max := grid.RowCount-1;
  i := 1;
  while i < Grid.RowCount-1 do
  begin
    idSelected := Grid.Cell[0,i].AsInteger;
     if Grid.Cell[4,i].AsBoolean then
       activar(Grid, idselected)
     else
       desactivar(Grid,idselected);
  inc(i);
  progreso.Position := i;
  if i = Grid.RowCount-1 then
    InteliDialog.ShowModal('Cambios guardados correctamente.','', mtInformation, [mbOk], 0);
  end;
  panelProgreso.Visible := False;
  Except
    on e: Exception do
    begin
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
      panelProgreso.Visible := False;
    end;
 end;
end;

procedure TFrmPermisoRol.Filtrar;
begin
  if cbRoles.KeyValue = null then
    exit;

  CargarDatosFiltrados(cdDatos, 'idrol', [cbRoles.KeyValue]);

  cdDatos.Refresh;
  if cdDatos.RecordCount = 0 then
  begin
    GenerarPermisos(CbRoles.KeyValue);
    cdDatos.Refresh;
  end;
  LLenarGrid(GridPermisos,cdDatos);
end;

procedure TFrmPermisoRol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
end;

procedure TFrmPermisoRol.AccedeACoordenadas;
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

procedure TFrmPermisoRol.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas;
end;

procedure TFrmPermisoRol.FormShow(Sender: TObject);

function AgregaNivel(MenuItem: TMenuItem; Padre: TTreeNode): Boolean;
var
  i: Integer;
  SubItem: TMenuItem;
  SubNodo: TTreeNode;
  Nodo: TTreeNode;
begin
  Result := True;
  i := 0;
  While i < MenuItem.Count do
  begin
    SubItem := MenuItem.Items[i];
    SubNodo := tvMenu.Items.AddChild(Padre, SubItem.Caption);

    if SubItem.Count > 0 then
      AgregaNivel(SubItem, SubNodo)
    else
    begin
      // Agregar las categorias por default
      Nodo := tvMenu.Items.AddChild(SubNodo, 'Leer');
      Nodo.StateIndex := cFlatUnCheck;
      Nodo := tvMenu.Items.AddChild(SubNodo, 'Editar');
      Nodo.StateIndex := cFlatUnCheck;
      Nodo := tvMenu.Items.AddChild(SubNodo, 'Agregar');
      Nodo.StateIndex := cFlatUnCheck;
      Nodo := tvMenu.Items.AddChild(SubNodo, 'Eliminar');
      Nodo.StateIndex := cFlatUnCheck;
      Nodo := tvMenu.Items.AddChild(SubNodo, 'Imprimir');
      Nodo.StateIndex := cFlatUnCheck;
      Nodo := tvMenu.Items.AddChild(SubNodo, 'Exportar');
      Nodo.StateIndex := cFlatUnCheck;
      Nodo := tvMenu.Items.AddChild(SubNodo, 'Importar');
      Nodo.StateIndex := cFlatUnCheck;
    end;

    Inc(i);
  end;
end;

begin
  //ModuloPantalla := 'TIPOSMOVIMIENTOS';
  Try
    ClientModule1.ComponentColor(Self);
    cdRoles.Close;
    if Not CrearConjunto(cdRoles, 'nuc_rol', ProviderName, ccCatalog) then
      raise InteligentException.Create('No se pudo obtener el catálogo de roles del sistema');
    cdRoles.Open;

    cdDatos.Close;
    if Not CrearConjunto(cdDatos, 'nuc_permisorol', ProviderName, ccCatalog) then
      raise InteligentException.Create('No se pudo obtener el catálogo de permisos por rol del sistema');
    CargarDatosFiltrados(cdDatos, 'idpermisorol', [-9]);
    cdDatos.Open;

    // Leer los datos del menú de opciones
    AgregaNivel(TForm2(Application.MainForm).Menu1.Items[0], Nil);


    tvMenu.TopItem := tvMenu.Items.GetFirstNode;
    tvMenu.TopItem.Selected := True;
    //PostMessage(tvMenu.Handle, WM_VSCROLL, SB_TOP, 0);
    tvMenu.FullExpand;
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

procedure TFrmPermisoRol.GenerarPermisos(idUSer: Integer);
var i: Integer;
begin
  i := 0;
  cdVentanas.Close;
  CrearConjunto(cdVentanas, 'nuc_pantalla', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdVentanas, 'idpantalla', [-1]);
  cdVentanas.Open;
  cdPermisos.Close;
  CrearConjunto(cdPermisos, 'nuc_permiso', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdPermisos, 'idpermiso', [-1]);
  cdPermisos.Open;
  cdVentanas.First;
  panelProgreso.Visible := True;
  EtiquetaProgreso.Visible := True;
  panelProgreso.repaint;
  EtiquetaProgreso.repaint;
  progreso.Max := cdVentanas.RecordCount;
  while not cdVentanas.Eof do
  begin
    cdPermisos.First;
    while not cdPermisos.Eof do
    begin
      cdUpt := TClientDataSet.Create(Nil);
      CrearConjunto(cdUpt, 'nuc_permisorol', providernameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idpermisorol', [-9]);
      cdUpt.Open;
      cdUpt.Append;
      cdUpt.FieldByName('idpermisorol').AsInteger := 0;
      cdUpt.FieldByName('idpermiso').AsInteger := cdPermisos.FieldByName('idpermiso').AsInteger;
      cdUpt.FieldByName('idpantalla').AsInteger := cdVentanas.FieldByName('idpantalla').AsInteger;
      cdUpt.FieldByName('idrol').AsInteger := idUser;
      cdUpt.FieldByName('valor').AsString := '0';
      cdUpt.Post;
      cdUpt.ApplyUpdates(-1);
      cdUpt.Free;
      cdPermisos.Next;
    end;
    inc(i);
    progreso.Position := i;
    cdVentanas.Next;
  end;
  panelProgreso.Visible := False;
end;

procedure TFrmPermisoRol.GridPermisosCellClick(Sender: TObject; ACol,
  ARow: Integer);
  var idselected: integer;
  cdUpt: TClientDataset;
  ProvidernameUpt: String;
begin
  if GridPermisos.SelectedColumn = 4 then
  begin
   if not ClientModule1.LeePermisos(TAdvShapeButton(BtnAdd),Self,False) then
     Exit;
   if GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean then
     GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean := False
   else
     GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean := True;
   end;
   if GridPermisos.SelectedRow = 0 then
   begin
     ValidarTodos(GridPermisos);
   end
   else
   begin
     idSelected := GridPermisos.Cell[0,GridPermisos.SelectedRow].AsInteger;
     if GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean then
       activar(GridPermisos, idselected)
     else
       desactivar(GridPermisos,idselected);
   end;
end;

procedure TFrmPermisoRol.LlenarGrid(Grid: TNextGrid; cCliente: TClientDataset);
var i: integer;
begin
  if ccliente.State <> dsBrowse then
    exit;
  Grid.ClearRows;
  if ccliente.RecordCount < 1 then
    exit;
  i := 1;
  cCliente.First;
  Grid.BeginUpdate;
  Grid.AddRow(1);
  Grid.Cell[3,0].AsString := 'Todos';
  while not cCliente.Eof do
  begin
    Grid.AddRow(1);
    Grid.Cell[0,i].AsInteger := ccliente.FieldByName('idpermisorol').AsInteger;
    Grid.Cell[1,i].AsInteger := ccliente.FieldByName('idpermiso').AsInteger;
    Grid.Cell[2,i].AsString := ccliente.FieldByName('titulopantalla').AsString;
    Grid.Cell[3,i].AsString := ccliente.FieldByName('codigopermiso').AsString;
    if ccliente.FieldByName('valor').AsInteger = 1 then
      Grid.Cell[4,i].AsBoolean := True
    else
      Grid.Cell[4,i].AsBoolean := False;
    inc(i);
    cCliente.Next;
  end;
  Grid.EndUpdate;
end;

procedure TFrmPermisoRol.PopupMenu2Popup(Sender: TObject);
begin

{tvMenuMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);}

  showmessage('Haz lo que corresponda...');
end;

procedure ToggleTreeViewCheckBoxes(
   Node             :TTreeNode;
   cUnChecked,
   cChecked,
   cRadioUnchecked,
   cRadioChecked    :integer);
var
  tmp:TTreeNode;
begin
  if Assigned(Node) then
  begin
    if Node.StateIndex = cUnChecked then
      Node.StateIndex := cChecked
    else if Node.StateIndex = cChecked then
      Node.StateIndex := cUnChecked
    else if Node.StateIndex = cRadioUnChecked then
    begin
      tmp := Node.Parent;
      if not Assigned(tmp) then
        tmp := TTreeView(Node.TreeView).Items.getFirstNode
      else
        tmp := tmp.getFirstChild;
      while Assigned(tmp) do
      begin
        if (tmp.StateIndex in
                   [cRadioUnChecked,cRadioChecked]) then
          tmp.StateIndex := cRadioUnChecked;
        tmp := tmp.getNextSibling;
      end;
      Node.StateIndex := cRadioChecked;
    end;
  end;
end;

procedure TFrmPermisoRol.tvMenuClick(Sender: TObject);
var
  P:TPoint;
begin
  GetCursorPos(P);
  P := tvMenu.ScreenToClient(P);
  if (htOnStateIcon in
             tvMenu.GetHitTestInfoAt(P.X,P.Y)) then
    ToggleTreeViewCheckBoxes(
       tvMenu.Selected,
       cFlatUnCheck,
       cFlatChecked,
       cFlatRadioUnCheck,
       cFlatRadioChecked);
end;

procedure TFrmPermisoRol.tvMenuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_SPACE) and
     Assigned(tvMenu.Selected) then
       ToggleTreeViewCheckBoxes(
          tvMenu.Selected,
          cFlatUnCheck,
          cFlatChecked,
          cFlatRadioUnCheck,
          cFlatRadioChecked);
end;

procedure TFrmPermisoRol.tvMenuMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  P: TPoint;
  Nodo: TTreeNode;
begin
  if Button = mbRight then
  begin
    GetCursorPos(P);
    Nodo := tvMenu.GetNodeAt(X, Y);
    if Nodo <> nil then
    begin
      tvMenu.Select(Nodo);
      PopupMenu1.Popup(P.X, P.Y);
    end;
  end;
end;

procedure TFrmPermisoRol.ValidarTodos(Grid: TNextGrid);
var i: integer;
begin
  if grid.RowCount < 2 then
    exit;
  i := 1;
  while i < Grid.RowCount-1 do
  begin
    Grid.Cell[4,i].AsBoolean := Grid.Cell[4,0].AsBoolean;
  inc(i);
  end;
end;

end.
