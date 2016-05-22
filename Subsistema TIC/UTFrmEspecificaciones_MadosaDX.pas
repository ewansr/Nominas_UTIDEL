// Esta ventana esta validada por mi: carmen perez.
//fué adaptada para el sistema de madosa.
//por ningun motivo lo implementen en el proyecto offshore.

unit UTFrmEspecificaciones_MadosaDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ImgList, DB, DBClient, StdCtrls, AdvToolBar,
  ToolWin, JvExControls, JvXPCore, JvXPButtons, Grids, DBGrids, Menus,
  AdvShapeButton, Mask, DBCtrls;

type
  PDatos = ^TNDatos;
  TNDatos = Record
    Nivel: Integer;
    Id: Integer;
    Padre: Integer;
    ItemOrden: String;
    Codigo: String;
    Titulo: String;
    Descripcion: String;
  end;

  TFrmEspecificaciones_MadosaDX = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TreeView1: TTreeView;
    ListView1: TListView;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    cdCatalogo: TClientDataSet;
    Button1: TButton;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    Btn_Add: TAdvToolBarMenuButton;
    Btn_Edit: TAdvToolBarButton;
    Btn_Del: TAdvToolBarButton;
    Btn_AddEspec: TAdvToolBarButton;
    Btn_EditEspec: TAdvToolBarButton;
    AdvToolBarButton9: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    ImageList3: TImageList;
    ImageList2: TImageList;
    PopupMenu1: TPopupMenu;
    Agregar1: TMenuItem;
    Editar1: TMenuItem;
    E6liminar1: TMenuItem;
    N1: TMenuItem;
    Ordenar1: TMenuItem;
    Panel4: TPanel;
    BtnClose: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanded(Sender: TObject; Node: TTreeNode);
    procedure ListView1DblClick(Sender: TObject);
    procedure AdvToolBarButton1Click(Sender: TObject);
    procedure AdvToolBarButton2Click(Sender: TObject);
    procedure AdvToolBarButton4Click(Sender: TObject);
    procedure AdvToolBarButton3Click(Sender: TObject);
    procedure Btn_AddClick(Sender: TObject);
    procedure Btn_EditClick(Sender: TObject);
    procedure Btn_DelClick(Sender: TObject);
    procedure Btn_AddEspecClick(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CargarArbol;
    procedure AgregarGrupo(Nodo: TTreeNode);
    procedure AgregarSubGrupo(Nodo: TTreeNode);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    ModuloPantalla : string;
    ForzarSalir: Boolean;
    AbrirPantalla: boolean;
    ListaPermisos: TStringList;
  public
    { Public declarations }
  end;

var
  FrmEspecificaciones_MadosaDX: TFrmEspecificaciones_MadosaDX;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, UInteliDialog, UTFrmEspecfificaciones_MadosaDatosDX,
  UTFrmDatosDisciplinas, UTFrmDatosGrupos, UTFrmDatosSubGrupos,
  UTFrmespecdetallesubgrupo, UTFrmOrdenarEsp;

procedure TFrmEspecificaciones_MadosaDX.AdvToolBarButton1Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  Nodo := TreeView1.Selected.getPrevSibling;
  if Assigned(Nodo) then
    Nodo.Selected := True;
end;

procedure TFrmEspecificaciones_MadosaDX.AdvToolBarButton2Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  Nodo := TreeView1.Selected.getNextSibling;
  if Assigned(Nodo) then
    Nodo.Selected := True;
end;

procedure TFrmEspecificaciones_MadosaDX.AdvToolBarButton3Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  if (TreeView1.Selected <> Nil) and (TreeView1.Selected.Parent <> Nil) then
  begin
    Nodo := TreeView1.Selected.Parent;
    Nodo.Selected := True;
  end;
end;

procedure TFrmEspecificaciones_MadosaDX.AdvToolBarButton4Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  if TreeView1.Selected.Count > 0 then
  begin
    Nodo := TreeView1.Selected.Item[0];
    Nodo.Selected := True;
  end;
end;

procedure TFrmEspecificaciones_MadosaDX.Btn_AddEspecClick(Sender: TObject);
begin
  // Solo activar esto cuando se trate de un nodo de nivel superior a 2
  if Assigned(TreeView1.Selected) and (TreeView1.Selected.Level < 2) then
  begin
    if TreeView1.Selected.Level = 0 then
      // Insertar grupo
      AgregarGrupo(TreeView1.Selected);

    if TreeView1.Selected.Level = 1 then
      // Insertar subgrupo
      AgregarSubGrupo(TreeView1.Selected);
  end;
end;

procedure TFrmEspecificaciones_MadosaDX.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmEspecificaciones_MadosaDX.Btn_AddClick(Sender: TObject);
var
  cdUpdate: TClientDataSet;
  Nodo: TTreeNode;
  ItemOrden: String;
  DatosPtr: PDatos;
begin
  // Agregar un nuevo elemento hermano
  Try
    Try
      cdUpdate := TClientDataSet.Create(Nil);

      if (Not Assigned(TreeView1.Selected)) or (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 0)) then
      begin
        // Agregar una nueva disciplina
        CrearConjunto(cdUpdate, 'nuc_disciplina', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdDisciplina', [-9]);
        cdUpdate.Open;

        Application.CreateForm(TFrmEspecificaciones_MadosaDatosDX, FrmEspecificaciones_MadosaDatosDX);
        FrmEspecificaciones_MadosaDatosDX.dsDatos.DataSet := cdUpdate;
        FrmEspecificaciones_MadosaDatosDX.EditCodigo.DataField := 'CodigoDisciplina';
        FrmEspecificaciones_MadosaDatosDX.EditTitulo.DataField := 'TituloDisciplina';
        FrmEspecificaciones_MadosaDatosDX.MemoDescripcion.DataField := 'Descripcion';
        FrmEspecificaciones_MadosaDatosDX.MemoComentarios.DataField := 'Comentarios';
        FrmEspecificaciones_MadosaDatosDX.Caption := 'Agregar nueva Área de Artículos';
        cdUpdate.Append;
        cdUpdate.FieldByName('IdDisciplina').AsInteger := 0;
        cdUpdate.FieldByName('Activo').AsString := 'Si';
        if FrmEspecificaciones_MadosaDatosDX.ShowModal = mrOk then
        begin
          // Agregar el nodo en donde corresponde
          ItemOrden := cdUpdate.FieldByName('CodigoDisciplina').AsString + Copy('                         ', 1, 25 - Length(cdUpdate.FieldByName('CodigoDisciplina').AsString));

          New(DatosPtr);
          DatosPtr^.Nivel := 0;
          DatosPtr^.Padre := -5;
          DatosPtr^.Id := UltimoId;
          DatosPtr^.ItemOrden := ItemOrden;
          DatosPtr^.Codigo := cdUpdate.FieldByName('CodigoDisciplina').AsString;
          DatosPtr^.Titulo := cdUpdate.FieldByName('TituloDisciplina').AsString;
          DatosPtr^.Descripcion := cdUpdate.FieldByName('Descripcion').AsString;

          // Insertar el registro en esta posición
          Nodo := TreeView1.Items.AddChild(Nil, cdUpdate.FieldByName('CodigoDisciplina').AsString);
          Nodo.Data := DatosPtr;
          TreeView1.Selected := Nodo;
        end;
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 1)) then
        AgregarGrupo(TreeView1.Selected.Parent); // Agregar un nuevo grupo

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 2)) then
        AgregarSubGrupo(TreeView1.Selected.Parent); // Agregar un nuevo subgrupo

    Finally
      EliminarConjunto(cdUpdate);
      cdUpdate.Free;
    End;
  Except
    ;
  End;
end;

procedure TFrmEspecificaciones_MadosaDX.Btn_DelClick(Sender: TObject);
var
  cdUpdate: TClientDataSet;
  Resultado: Integer;
  Cadena: String;
begin
  // Borrar
  Try
    Try
      cdUpdate := TClientDataSet.Create(Nil);
      Resultado := mrNone;

      Cadena := '';
      if TreeView1.Selected.Count > 0 then
        Cadena := ' y todos sus hijos (' + IntToStr(TreeView1.Selected.Count) + ')';

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 0)) then
      begin
        // Editar disciplina
        CrearConjunto(cdUpdate, 'nuc_disciplina', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdDisciplina', [PDatos(TreeView1.Selected.Data).Id]);
        cdUpdate.Open;

        if cdUpdate.RecordCount = 1 then
        begin
          Resultado := InteliDialog.ShowModal('Eliminar Área de Grupos', 'Está a punto de eliminar el Área de Grupos' + Cadena + ': ' + #10 +
                                    '[' + PDatos(TreeView1.Selected.Data).Codigo + '] - ' + PDatos(TreeView1.Selected.Data).Titulo + #10 + #10 +
                                    '¿Está seguro de eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0);
        end;
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 1)) then
      begin
        // Editar grupo
        CrearConjunto(cdUpdate, 'alm_grupo', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdGrupo', [PDatos(TreeView1.Selected.Data).Id]);
        cdUpdate.Open;

        if cdUpdate.RecordCount = 1 then
        begin
          Resultado := InteliDialog.ShowModal('Eliminar Grupo', 'Está a punto de eliminar el Grupo: ' + #10 +
                                    '[' + PDatos(TreeView1.Selected.Data).Codigo + '] - ' + PDatos(TreeView1.Selected.Data).Titulo + #10 + #10 +
                                    '¿Está seguro de eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0);
        end;
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 2)) then
      begin
        // Editar Subgrupo
        CrearConjunto(cdUpdate, 'alm_subgrupo', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdSubGrupo', [PDatos(TreeView1.Selected.Data).Id]);
        cdUpdate.Open;

        if cdUpdate.RecordCount = 1 then
        begin
          Resultado := InteliDialog.ShowModal('Eliminar SubGrupo', 'Está a punto de eliminar el SubGrupo: ' + #10 +
                                    '[' + PDatos(TreeView1.Selected.Data).Codigo + '] - ' + PDatos(TreeView1.Selected.Data).Titulo + #10 + #10 +
                                    '¿Está seguro de eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0);
        end;
      end;

      if Resultado = mrYes then
      begin
        cdUpdate.Delete;
        cdUpdate.ApplyUpdates(-1);
        TreeView1.Selected.Delete;
      end;
    Finally
      CancelarBloqueo(cdUpdate, PDatos(TreeView1.Selected.Data).Id);
      EliminarConjunto(cdUpdate);
    End;
  Except
    ;
  End;
end;

procedure TFrmEspecificaciones_MadosaDX.Btn_EditClick(Sender: TObject);
var
  cdUpdate: TClientDataSet;
  IdBloqueado: Integer;
begin
  // Editar un elemento
  Try
    Try
      IdBloqueado := PDatos(TreeView1.Selected.Data).Id;
      cdUpdate := TClientDataSet.Create(Nil);

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 0)) then
      begin
        // Editar disciplina
        CrearConjunto(cdUpdate, 'nuc_disciplina', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdDisciplina', [IdBloqueado]);
        cdUpdate.Open;

        Application.CreateForm(TFrmEspecificaciones_MadosaDatosDX, FrmEspecificaciones_MadosaDatosDX);
        FrmEspecificaciones_MadosaDatosDX.dsDatos.DataSet := cdUpdate;
        FrmEspecificaciones_MadosaDatosDX.EditCodigo.DataField := 'CodigoDisciplina';
        FrmEspecificaciones_MadosaDatosDX.EditTitulo.DataField := 'TituloDisciplina';
        FrmEspecificaciones_MadosaDatosDX.MemoDescripcion.DataField := 'Descripcion';
        FrmEspecificaciones_MadosaDatosDX.MemoComentarios.DataField := 'Comentarios';
        FrmEspecificaciones_MadosaDatosDX.Caption := 'Edición de Área de Artículos';
        cdUpdate.Edit;
        if FrmEspecificaciones_MadosaDatosDX.ShowModal = mrOk then
        begin
          // Modificar los datos del nodo
          TreeView1.Selected.Text := cdUpdate.FieldByName('CodigoDisciplina').AsString;
        end;
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 1)) then
      begin
        // Editar grupo
        CrearConjunto(cdUpdate, 'alm_grupo', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdGrupo', [IdBloqueado]);
        cdUpdate.Open;

        Application.CreateForm(TFrmEspecificaciones_MadosaDatosDX, FrmEspecificaciones_MadosaDatosDX);
        FrmEspecificaciones_MadosaDatosDX.Panel2.Visible := True;
        FrmEspecificaciones_MadosaDatosDX.Edit1.Text := PDatos(TreeView1.Selected.Parent.Data).Codigo;
        FrmEspecificaciones_MadosaDatosDX.JvLabel2.Caption := PDatos(TreeView1.Selected.Parent.Data).Titulo;
        FrmEspecificaciones_MadosaDatosDX.dsDatos.DataSet := cdUpdate;
        FrmEspecificaciones_MadosaDatosDX.EditCodigo.DataField := 'CodigoGrupo';
        FrmEspecificaciones_MadosaDatosDX.EditTitulo.DataField := 'TituloGrupo';
        FrmEspecificaciones_MadosaDatosDX.MemoDescripcion.DataField := 'Descripcion';
        FrmEspecificaciones_MadosaDatosDX.MemoComentarios.DataField := 'Comentarios';
        FrmEspecificaciones_MadosaDatosDX.Caption := 'Modificar Grupo: ' + PDatos(TreeView1.Selected.Data).Codigo + ', de Área: ' + PDatos(TreeView1.Selected.Parent.Data).Codigo;
        cdUpdate.Edit;
        if FrmEspecificaciones_MadosaDatosDX.ShowModal = mrOk then
        begin
          // Modificar los datos del nodo
          TreeView1.Selected.Text := cdUpdate.FieldByName('CodigoGrupo').AsString;
        end;
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 2)) then
      begin
        // Editar Subgrupo
        CrearConjunto(cdUpdate, 'alm_subgrupo', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdSubGrupo', [IdBloqueado]);
        cdUpdate.Open;

        Application.CreateForm(TFrmEspecificaciones_MadosaDatosDX, FrmEspecificaciones_MadosaDatosDX);
        FrmEspecificaciones_MadosaDatosDX.Panel2.Visible := True;
        FrmEspecificaciones_MadosaDatosDX.Edit1.Text := PDatos(TreeView1.Selected.Parent.Data).Codigo;
        FrmEspecificaciones_MadosaDatosDX.JvLabel2.Caption := PDatos(TreeView1.Selected.Parent.Data).Titulo;
        FrmEspecificaciones_MadosaDatosDX.dsDatos.DataSet := cdUpdate;
        FrmEspecificaciones_MadosaDatosDX.EditCodigo.DataField := 'CodigoSubGrupo';
        FrmEspecificaciones_MadosaDatosDX.EditTitulo.DataField := 'TituloSubGrupo';
        FrmEspecificaciones_MadosaDatosDX.MemoDescripcion.DataField := 'Descripcion';
        FrmEspecificaciones_MadosaDatosDX.MemoComentarios.DataField := 'Comentarios';
        FrmEspecificaciones_MadosaDatosDX.Caption := 'Editar SubGrupo: ' + PDatos(TreeView1.Selected.Data).Codigo + ', de Grupo: ' + PDatos(TreeView1.Selected.Parent.Data).Codigo;
        cdUpdate.Edit;
        if FrmEspecificaciones_MadosaDatosDX.ShowModal = mrOk then
        begin
          // Modificar los datos del nodo
          TreeView1.Selected.Text := cdUpdate.FieldByName('CodigoSubGrupo').AsString;
        end;
      end;

    Finally
      CancelarBloqueo(cdUpdate, IdBloqueado);
      EliminarConjunto(cdUpdate);
    End;
  Except
    on e:Exception do
      InteliDialog.ShowModal('Error inesperado', 'Ha ocurrido un error inesperado, informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_MadosaDX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Eliminar los conjuntos creados
  EliminarConjunto(cdCatalogo);
  LiberarVentana(Self,Action);
end;

procedure TFrmEspecificaciones_MadosaDX.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'AREAS';

  ForzarSalir := True;

  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
  begin
    AbrirPantalla := false;
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    exit;
  end;

  ListaPermisos := TStringList.Create;
  ListaPermisos.Clear;
  ClientModule1.cdpermiso.Filtered := false;
  ClientModule1.cdpermiso.Filter := 'codigomodulo = ' + QuotedStr(ModuloPantalla);
  ClientModule1.cdpermiso.Filtered := true;
  ClientModule1.cdpermiso.First;
  while not ClientModule1.cdpermiso.eof do
  begin
    ListaPermisos.AddObject(ClientModule1.cdPermiso.FieldByName('CodigoPermiso').AsString, TObject(ClientModule1.cdpermiso.FieldByName('valor').AsInteger));
    ClientModule1.cdpermiso.Next;
  end;
  ClientModule1.cdpermiso.Filtered := false;

  // Crear el conjunto de datos para el catálogo general
  if Not CrearConjunto(cdCatalogo, 'CargarArbol', ccCatalog) then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure TFrmEspecificaciones_MadosaDX.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 116 then
    CargarArbol;  // Volver a cargar datos
end;

procedure TFrmEspecificaciones_MadosaDX.FormShow(Sender: TObject);
begin
  Try
    // Precarga colores
    ClientModule1.ComponentColor(Self);

    CargarArbol;

  Except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal('No se ha podido establecer conexión con el servidor',
                             e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema',
                             'Informe de lo siguiente al administrador del sistema:' + #10 + #10 +e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmEspecificaciones_MadosaDX.ListView1DblClick(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  // Verificar en donde se hizo click
  if not Assigned(ListView1.Selected) then
    Exit;

  // Verificar si ya se encuentra en el último nivel de acceso
  if TreeView1.Selected.Level < 2 then
  begin
    // Localizar el nodo del treeview en base al icono clicado
    Nodo := TreeView1.Selected.Item[ListView1.Selected.Index];
    Nodo.Selected := True;
    Nodo.Expand(True);
  end
  else
    Btn_EditEspec.Click;  // Editar las especificaciones de manera directa
end;

procedure TFrmEspecificaciones_MadosaDX.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
var
  DatosPtr: PDatos;
  Nodo, Nodo2: TTreeNode;
begin
  // Verificar si el elemento seleccionado es un padre con hijos
  ListView1.Items.Clear;
  Nodo := Node.getFirstChild;
  while Nodo <> Nil do
  begin
    with ListView1.Items.Add do
    begin
      Caption := PDatos(Nodo.Data).Codigo;
      Hint := PDatos(Nodo.Data).Titulo;
      ImageIndex := Node.Level + 2;
    end;

    DatosPtr := Nodo.Data;
    Nodo := Node.GetNextChild(Nodo);
  end;

  case Node.Level of
    0: begin
      Btn_Add.Hint := 'Agregar nuevo elemento de Área';
      Btn_Edit.Hint := 'Editar Área: ' + Node.Text;
      Btn_Del.Hint := 'Eliminar Área: ' + Node.Text;
      ListView1.ViewStyle := vsIcon;
    end;
    1: begin
      Btn_Add.Hint := 'Agregar nuevo elemento de Grupo para el Área: ' + Node.Parent.Text;
      Btn_Edit.Hint := 'Editar Grupo: ' + Node.Text;
      Btn_Del.Hint := 'Eliminar Grupo: ' + Node.Text;
      ListView1.ViewStyle := vsIcon;
    end;
    2: begin
      Btn_Add.Hint := 'Agregar nuevo elemento de SubGrupo para el Grupo: ' + Node.Parent.Text;
      Btn_Edit.Hint := 'Editar Subgrupo: ' + Node.Text;
      Btn_Del.Hint := 'Eliminar Subgrupo: ' + Node.Text;
      ListView1.ViewStyle := vsReport;
    end;
  end;
end;

procedure TFrmEspecificaciones_MadosaDX.TreeView1Collapsed(Sender: TObject;
  Node: TTreeNode);
begin
  TreeView1.Selected.ImageIndex := 0;
end;

procedure TFrmEspecificaciones_MadosaDX.TreeView1DblClick(Sender: TObject);
begin
  if (TreeView1.Selected.Level >= 0) and (TreeView1.Items.Count > 0) then
    Btn_Edit.Click;
end;

procedure TFrmEspecificaciones_MadosaDX.TreeView1Expanded(Sender: TObject;
  Node: TTreeNode);
begin
  Node.ImageIndex := 1;
end;

procedure TFrmEspecificaciones_MadosaDX.CargarArbol;
var
  Padre1, Padre2, Nodo: TTreeNode;
  DatosPtr: PDatos;
  i: Integer;
  Nombre: String;
  OldCursor: TCursor;
begin
  // Alimentar el tree con los datos del catálogo
  Try
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    TreeView1.Items.Clear;
    TreeView1.Items.BeginUpdate;

    if cdCatalogo.Active then
      cdCatalogo.Refresh
    else
      cdCatalogo.Open;

    TreeView1.Items.Clear;
    Padre1 := Nil;
    Padre2 := Nil;
    cdCatalogo.First;
    while not cdCatalogo.Eof do
    begin
      New(DatosPtr);
      DatosPtr^.Nivel := cdCatalogo.FieldByName('Nivel').AsInteger;
      DatosPtr^.Padre := cdCatalogo.FieldByName('IdPadre').AsInteger;
      DatosPtr^.Id := cdCatalogo.FieldByName('IdLlave').AsInteger;
      DatosPtr^.ItemOrden := cdCatalogo.FieldByName('ItemOrden').AsString;
      DatosPtr^.Codigo := cdCatalogo.FieldByName('Codigo').AsString;
      DatosPtr^.Titulo := cdCatalogo.FieldByName('Titulo').AsString;
      DatosPtr^.Descripcion := cdCatalogo.FieldByName('Descripcion').AsString;

      if cdCatalogo.FieldByName('Nivel').AsInteger = 0 then
      begin
        Nodo := TreeView1.Items.AddChild(Nil, cdCatalogo.FieldByName('Codigo').AsString);
        Padre1 := Nodo;
      end;

      if cdCatalogo.FieldByName('Nivel').AsInteger = 1 then
      begin
        Nodo := TreeView1.Items.AddChild(Padre1, cdCatalogo.FieldByName('Codigo').AsString);
        Padre2 := Nodo;
      end;

      if cdCatalogo.FieldByName('Nivel').AsInteger = 2 then
        Nodo := TreeView1.Items.AddChild(Padre2, cdCatalogo.FieldByName('Codigo').AsString);

      Nodo.Data := DatosPtr;

      if Assigned(Padre1) then
        Padre1.Expand(True);

      cdCatalogo.Next;
    end;

    TreeView1.Selected := TreeView1.Items.Item[0];
  Finally
    Screen.Cursor := OldCursor;
    TreeView1.Items.EndUpdate;
  End;
end;

procedure TFrmEspecificaciones_MadosaDX.AgregarGrupo(Nodo: TTreeNode);
var
  cdUpdate: TClientDataSet;
  ItemOrden: String;
  DatosPtr: PDatos;
begin
  Try
    cdUpdate := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpdate, 'alm_grupo', ccUpdate);
    CargarDatosFiltrados(cdUpdate, 'IdGrupo', [-9]);
    cdUpdate.Open;

    Application.CreateForm(TFrmEspecificaciones_MadosaDatosDX, FrmEspecificaciones_MadosaDatosDX);
    FrmEspecificaciones_MadosaDatosDX.Panel2.Visible := True;
    FrmEspecificaciones_MadosaDatosDX.Edit1.Text := PDatos(Nodo.Data).Codigo;
    FrmEspecificaciones_MadosaDatosDX.JvLabel2.Caption := PDatos(Nodo.Data).Titulo;
    FrmEspecificaciones_MadosaDatosDX.dsDatos.DataSet := cdUpdate;
    FrmEspecificaciones_MadosaDatosDX.EditCodigo.DataField := 'CodigoGrupo';
    FrmEspecificaciones_MadosaDatosDX.EditTitulo.DataField := 'TituloGrupo';
    FrmEspecificaciones_MadosaDatosDX.MemoDescripcion.DataField := 'Descripcion';
    FrmEspecificaciones_MadosaDatosDX.MemoComentarios.DataField := 'Comentarios';
    FrmEspecificaciones_MadosaDatosDX.Caption := 'Agregar nuevo Grupo de Área: ' + PDatos(Nodo.Data).Codigo;
    FrmEspecificaciones_MadosaDatosDX.JvLabel1.Caption := 'ÁREA:';
    FrmEspecificaciones_MadosaDatosDX.JvLabel1.Left := 41;
    cdUpdate.Append;
    cdUpdate.FieldByName('IdDisciplina').AsInteger := PDatos(Nodo.Data).Id;
    cdUpdate.FieldByName('IdGrupo').AsInteger := 0;
    cdUpdate.FieldByName('Activo').AsString := 'Si';
    if FrmEspecificaciones_MadosaDatosDX.ShowModal = mrOk then
    begin
      // Agregar el nodo en donde corresponde
      ItemOrden := PDatos(Nodo.Data).Codigo + Copy('                         ', 1, 25 - Length(PDatos(Nodo.Data).Codigo));
      ItemOrden := ItemOrden + '.' + cdUpdate.FieldByName('CodigoGrupo').AsString + Copy('                         ', 1, 25 - Length(cdUpdate.FieldByName('CodigoGrupo').AsString));

      New(DatosPtr);
      DatosPtr^.Nivel := 1;
      DatosPtr^.Id := UltimoId;
      DatosPtr^.Padre := PDatos(Nodo.Data).Id;
      DatosPtr^.ItemOrden := ItemOrden;
      DatosPtr^.Codigo := cdUpdate.FieldByName('CodigoGrupo').AsString;
      DatosPtr^.Titulo := cdUpdate.FieldByName('TituloGrupo').AsString;
      DatosPtr^.Descripcion := cdUpdate.FieldByName('Descripcion').AsString;

      // Insertar el registro en esta posición
      Nodo := TreeView1.Items.AddChild(Nodo, cdUpdate.FieldByName('CodigoGrupo').AsString);
      Nodo.Data := DatosPtr;
      TreeView1.Selected := Nodo;
    end;
  Finally
    if Assigned(cdUpdate) then
      cdUpdate.Close;
    EliminarConjunto(cdUpdate);
  End;
end;

procedure TFrmEspecificaciones_MadosaDX.AgregarSubGrupo(Nodo: TTreeNode);
var
  cdUpdate: TClientDataSet;
  ItemOrden: String;
  DatosPtr: PDatos;
begin
  Try
    // Agregar un nuevo grupo
    cdUpdate := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpdate, 'alm_subgrupo', ccUpdate);
    CargarDatosFiltrados(cdUpdate, 'IdSubGrupo', [-9]);
    cdUpdate.Open;

    Application.CreateForm(TFrmEspecificaciones_MadosaDatosDX, FrmEspecificaciones_MadosaDatosDX);
    FrmEspecificaciones_MadosaDatosDX.Panel2.Visible := True;
    FrmEspecificaciones_MadosaDatosDX.Edit1.Text := PDatos(Nodo.Data).Codigo;
    FrmEspecificaciones_MadosaDatosDX.JvLabel2.Caption := PDatos(Nodo.Data).Titulo;
    FrmEspecificaciones_MadosaDatosDX.dsDatos.DataSet := cdUpdate;
    FrmEspecificaciones_MadosaDatosDX.EditCodigo.DataField := 'CodigoSubGrupo';
    FrmEspecificaciones_MadosaDatosDX.EditTitulo.DataField := 'TituloSubGrupo';
    FrmEspecificaciones_MadosaDatosDX.MemoDescripcion.DataField := 'Descripcion';
    FrmEspecificaciones_MadosaDatosDX.MemoComentarios.DataField := 'Comentarios';
    FrmEspecificaciones_MadosaDatosDX.Caption := 'Agregar nuevo SubGrupo de Grupo: ' + PDatos(Nodo.Data).Codigo;
    cdUpdate.Append;
    cdUpdate.FieldByName('IdGrupo').AsInteger := PDatos(Nodo.Data).Id;
    cdUpdate.FieldByName('IdSubGrupo').AsInteger := 0;
    cdUpdate.FieldByName('Activo').AsString := 'Si';
    if FrmEspecificaciones_MadosaDatosDX.ShowModal = mrOk then
    begin
      // Agregar el nodo en donde corresponde
      ItemOrden := PDatos(Nodo.Parent.Data).Codigo + Copy('                         ', 1, 25 - Length(PDatos(Nodo.Parent.Data).Codigo));
      ItemOrden := ItemOrden + '.' + PDatos(Nodo.Data).Codigo + Copy('                         ', 1, 25 - Length(PDatos(Nodo.Data).Codigo));
      ItemOrden := ItemOrden + '.' + cdUpdate.FieldByName('CodigoSubGrupo').AsString + Copy('                         ', 1, 25 - Length(cdUpdate.FieldByName('CodigoSubGrupo').AsString));

      New(DatosPtr);
      DatosPtr^.Nivel := 1;
      DatosPtr^.Id := UltimoId;
      DatosPtr^.Padre := PDatos(Nodo.Data).Id;
      DatosPtr^.ItemOrden := ItemOrden;
      DatosPtr^.Codigo := cdUpdate.FieldByName('CodigoSubGrupo').AsString;
      DatosPtr^.Titulo := cdUpdate.FieldByName('TituloSubGrupo').AsString;
      DatosPtr^.Descripcion := cdUpdate.FieldByName('Descripcion').AsString;

      // Insertar el registro en esta posición
      Nodo := TreeView1.Items.AddChild(Nodo, cdUpdate.FieldByName('CodigoSubGrupo').AsString);
      Nodo.Data := DatosPtr;
      TreeView1.Selected := Nodo;
    end;
  Finally
    if Assigned(cdUpdate) then
      cdUpdate.Close;
    EliminarConjunto(cdUpdate);
  End;
end;

end.
