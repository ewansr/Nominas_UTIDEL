unit UtFrmEspecificacionesDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, AdvSmoothButton, ComCtrls, ExtCtrls, StdCtrls,
  AdvToolBar, DB, DBClient;

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


type
  TFrmEspecificacionesDX = class(TForm)
    Panel8: TPanel;
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
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    TreeView1: TTreeView;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    ListView1: TListView;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    lstDetalles: TListView;
    Panel2: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    GroupBox5: TGroupBox;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton5: TAdvSmoothButton;
    AdvSmoothButton6: TAdvSmoothButton;
    GroupBox6: TGroupBox;
    AdvSmoothButton7: TAdvSmoothButton;
    AdvSmoothButton8: TAdvSmoothButton;
    AdvSmoothButton9: TAdvSmoothButton;
    AdvSmoothButton10: TAdvSmoothButton;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    Panel9: TPanel;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarButton5: TAdvToolBarButton;
    AdvToolBarButton6: TAdvToolBarButton;
    AdvToolBarButton7: TAdvToolBarButton;
    AdvToolBarButton8: TAdvToolBarButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarMenuButton1: TAdvToolBarMenuButton;
    AdvToolBarButton10: TAdvToolBarButton;
    AdvToolBarButton11: TAdvToolBarButton;
    AdvToolBarButton12: TAdvToolBarButton;
    AdvToolBarButton13: TAdvToolBarButton;
    AdvToolBarButton14: TAdvToolBarButton;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    PopupMenu1: TPopupMenu;
    Agregar1: TMenuItem;
    Editar1: TMenuItem;
    Eliminar1: TMenuItem;
    N1: TMenuItem;
    Ordenar1: TMenuItem;
    PopupMenu2: TPopupMenu;
    AgregarDet: TMenuItem;
    EditarDet: TMenuItem;
    EliminarDet: TMenuItem;
    cdCatalogo: TClientDataSet;
    AdvSmoothButton11: TAdvSmoothButton;
    cdEspecDetalle: TClientDataSet;
    cdEspecDetalleSG: TClientDataSet;
    cdUptEspecDetSG: TClientDataSet;
    cdUptEspecDetalle: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure AdvSmoothButton11Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure AdvSmoothButton4Click(Sender: TObject);
    procedure ListView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvSmoothButton5Click(Sender: TObject);
    procedure AdvSmoothButton6Click(Sender: TObject);
    procedure ListView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Agregar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure AgregarDetClick(Sender: TObject);
  private
    { Private declarations }
    Resultado: Integer;
    procedure CargarArbol;
    procedure AgregarGrupo(Nodo: TTreeNode);
    procedure AgregarSubGrupo(Nodo: TTreeNode);
    procedure CargarDetalles(idSubGrupo: Integer);
  public
    { Public declarations }
  end;

var
  FrmEspecificacionesDX: TFrmEspecificacionesDX;

implementation
  uses
    ClientModuleUnit1, UInteliDialog, UtFrmDisciplinasDatosDX, UtFrmGruposDatosDX,
    UtFrmSubgruposDatosDX, UTFrmespecdetallesubgrupo;
{$R *.dfm}

procedure TFrmEspecificacionesDX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Eliminar los conjuntos creados
  EliminarConjunto(cdCatalogo);
  LiberarVentana(Self,Action);
end;

procedure TFrmEspecificacionesDX.FormCreate(Sender: TObject);
begin

  // Crear el conjunto de datos para el catálogo general
  if Not CrearConjunto(cdCatalogo, 'CargarArbol', ccCatalog) then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure TFrmEspecificacionesDX.FormShow(Sender: TObject);
begin
  Try
    // Precarga colores
    ClientModule1.ComponentColor(Self);
    CargarArbol;

    if not CrearConjunto(cdEspecDetalleSG, 'alm_especdetallesubgrupo', ccCatalog) then
      raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Detalles de SubGrupos');
    if Not  CargarDatosFiltrados(cdEspecDetalleSG, 'IdSubGrupo', [-9]) then
      raise InteligentException.Create('No ha sido posible acceder a los datos de las Entradas al Almacén');
    cdEspecDetalleSG.Open;


//    cdEspecDetalleSG.IndexFieldNames := 'idsubgrupo;noorden';

    if not CrearConjunto(cdEspecDetalle,'alm_especdetalle', ccCatalog) then
      raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Detalles de SubGrupos');
    cdEspecDetalle.Open;

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

procedure TFrmEspecificacionesDX.ListView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
Var
  i: Integer;
  orden: integer;
  nuevos: integer;
  lastid : integer;
begin
  if (source is TListView) and (TListView(source).Name = 'lstDetalles')  then
  begin
    // asignar los nuevos elementos arrastrados
    Nuevos := 0;
    for i := 0 to lstDetalles.Items.Count -1 do
      if lstDetalles.Items.Item[i].Selected then
      begin
        orden := cdEspecDetalleSG.RecordCount + 1;
        //Cargo dataset de tipo update..........................................
        if Not CrearConjunto(cdUptEspecDetSG, 'alm_especdetallesubgrupo', ccUpdate) then
          raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');
        CargarDatosFiltrados(cdUptEspecDetSG, 'iddetalle', [-9]);
        cdUptEspecDetSG.Open;
        cdUptEspecDetSG.Append;
        cdUptEspecDetSG.FieldValues['idsubgrupo'] := PDatos(TreeView1.Selected.Data).Id;
        cdUptEspecDetSG.FieldValues['iddetalle'] := PDatos(lstDetalles.Items.Item[i].Data).Id;
        cdUptEspecDetSG.FieldValues['noorden'] := orden;
        cdUptEspecDetSG.Post;
        cdUptEspecDetSG.ApplyUpdates(0);
        lastid := ultimoid;
        CancelarBloqueo(cdUptEspecDetSG, PDatos(TreeView1.Selected.Data).Id);
        cdUptEspecDetSG.Close;
        //Cierro dataset de tipo update.........................................
        Inc(Nuevos);
      end;
    if Nuevos > 0 then
      cdEspecDetalleSG.Refresh;
      CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
  end;

end;

procedure TFrmEspecificacionesDX.ListView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := (source is TListView) and (TListView(source).Name = 'lstDetalles');
end;

procedure TFrmEspecificacionesDX.ListView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
     BorrarItem : TClientDataset;
     Nodo: TTreeNode;
begin
  if (key = VK_DELETE) AND (Shift = []) then
  begin
    if InteliDialog.ShowModal('CONFIRMACIÓN','¿Desea borrar el elemento seleccionado de la lista?','',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if cdEspecDetalleSG.Locate('idsubgrupo;iddetalle',VarArrayOf([PDatos(TreeView1.Selected.Data).Id,PDatos(ListView1.Selected.Data).Id]),[]) then
      begin
        Try
         Try
           BorrarItem := TClientDataSet.Create(Self);
           CrearConjunto(BorrarItem, 'alm_especdetallesubgrupo', ccUpdate);
           PonerSentenciaSQL(BorrarItem.ProviderName, 'delete from alm_especdetallesubgrupo where IdDetalle ='+
                             inttostr(cdEspecDetalleSG.FieldByName('IdDetalle').AsInteger)+' and IdSubgrupo='+
                             inttostr(PDatos(TreeView1.Selected.Data).Id));
           BorrarItem.Execute;
           cdEspecDetalleSG.Refresh;
           CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
         Except
         on e:exception do
           begin
             showmessage(e.Message);
           end;
         End;
       Finally
         EliminarConjunto(BorrarItem.ProviderName);
         BorrarItem.Destroy;
       End;
//##############################################################################
      end
      else

    end;
    key := 0;
  end;

end;

procedure TFrmEspecificacionesDX.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
var
  DatosPtr: PDatos;
  Nodo, Nodo2: TTreeNode;
begin
  try
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
        ListView1.Items.Clear;
        lstDetalles.Visible := true;
        ListView1.Align := alTop;
        ListView1.Height := Round(Panel4.Height * 0.65);
        ListView1.rowselect := true;
        splitter2.Top := ListView1.Height + 1;
        splitter2.Refresh;
        lstDetalles.Align := alClient;
      // Mostrar los objetos correspondientes a los Grupos
        if Not CargarDatosFiltrados(cdEspecDetalleSG, 'idsubgrupo', [Pdatos(Node.Data).Id]) then
          raise Exception.Create('No ha sido posible acceder a los datos de las Entradas al Almacén');
        cdEspecDetalleSG.Refresh;
        cdEspecDetalleSG.IndexFieldNames := 'idsubgrupo;noorden';
        CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
      end;
    end;
  except
    on e:exception do
    begin
     InteliDialog.ShowModal('Se ha producido un error al consultar el nivel, Error:', e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmEspecificacionesDX.CargarDetalles(idSubGrupo: Integer);
var
  DatosPtr: PDatos;
begin
  ListView1.Items.Clear;
  lstDetalles.Items.Clear;

  // Agregar los detalles del subgrupo
  cdEspecDetalleSG.First;
  while not cdEspecDetalleSG.eof do
  begin
    cdEspecDetalle.Locate('iddetalle',cdEspecDetalleSG.FieldByName('iddetalle').AsInteger,[]);

    New(DatosPtr);
    DatosPtr^.Id := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
    DatosPtr^.Codigo := cdEspecDetalle.FieldByName('CodigoDetalle').AsString;

    // Crear el objeto de Especificacion
    ListView1.AddItem(cdEspecDetalle.FieldByName('CodigoDetalle').AsString, TObject(DatosPtr));

    // Meter los datos agregados al objeto del listview
    ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 4;
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TituloDetalle').AsString);
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Descripcion').AsString);
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TipoDato').AsString);
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Prefijo').AsString);

    cdEspecDetalleSG.Next;
  end;



    cdEspecDetalle.First;
    while not cdEspecDetalle.Eof do
    begin
      New(DatosPtr);
      DatosPtr^.Id := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
      DatosPtr^.Codigo := cdEspecDetalle.FieldByName('CodigoDetalle').AsString;

      // si está en el listview anterior, no ponerlo en la lista general
      if not cdEspecDetalleSG.Locate('iddetalle',DatosPtr^.Id,[]) then
      begin
        // Crear el objeto de Especificacion
        lstDetalles.AddItem(cdEspecDetalle.FieldByName('CodigoDetalle').AsString, TObject(DatosPtr));

        // Meter los datos agregados al objeto del listview
        lstDetalles.Items.Item[lstDetalles.Items.Count -1].ImageIndex := 4;
        lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TituloDetalle').AsString);
        lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Descripcion').AsString);
        lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TipoDato').AsString);
        lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Prefijo').AsString);
      End;
      cdEspecDetalle.Next;
    end;
end;

procedure TFrmEspecificacionesDX.Editar1Click(Sender: TObject);
var
  noitem: Tlistitem;
  leyenda : integer;
  tmp: TListView;
begin
// Solo activar esto cuando se trate de un nodo de nivel 2
  if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
    Exit;

  AdvSmoothButton5.Click;

end;

procedure TFrmEspecificacionesDX.Eliminar1Click(Sender: TObject);
Var
  vkd: word;
begin
 // Solo activar esto cuando se trate de un nodo de nivel 2
  if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
    Exit;

  // Verificar si se está seleccionando un registro de especificaciones
  if ListView1.SelCount = 0 then
    Exit;

  vkd := VK_DELETE;
  ListView1KeyUp(Sender,vkd,[]);

end;

procedure TFrmEspecificacionesDX.AdvSmoothButton11Click(Sender: TObject);
begin
   CargarArbol;
end;

procedure TFrmEspecificacionesDX.AdvSmoothButton1Click(Sender: TObject);
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
        if not ClientModule1.LeePermisos('AREAS','AGREGAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para añadir areas o disciplinas. Si necesita este permiso notifíquelo a su administrador.');
        CrearConjunto(cdUpdate, 'nuc_disciplina', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdDisciplina', [-9]);
        cdUpdate.Open;

        Application.CreateForm(TFrmDisciplinasDatosDX, FrmDisciplinasDatosDX);
        FrmDisciplinasDatosDX.dsDatos.DataSet := cdUpdate;
        cdUpdate.Append;
        cdUpdate.FieldByName('IdDisciplina').AsInteger := 0;
        cdUpdate.FieldByName('Activo').AsString := 'Si';
        if FrmDisciplinasDatosDX.ShowModal = mrOk then
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
      begin
        if not ClientModule1.LeePermisos('GRUPOS','AGREGAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para añadir grupos. Si necesita este permiso notifíquelo a su administrador.');
        AgregarGrupo(TreeView1.Selected.Parent); // Agregar un nuevo grupo
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 2)) then
      begin
        if not ClientModule1.LeePermisos('SUBGRUPOS','AGREGAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para añadir subgrupos. Si necesita este permiso notifíquelo a su administrador.');
        AgregarSubGrupo(TreeView1.Selected.Parent); // Agregar un nuevo subgrupo
      end;

    Finally
      EliminarConjunto(cdUpdate);
    End;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha podido crear un nuevo registro', e.Message, mtInformation, [mbOk], 0);
    on e:Exception do
      ;
  End;
end;

procedure TFrmEspecificacionesDX.AdvSmoothButton2Click(Sender: TObject);
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
        if not ClientModule1.LeePermisos('AREAS','EDITAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para editar areas o disciplinas. Si necesita este permiso notifíquelo a su administrador.');

        CrearConjunto(cdUpdate, 'nuc_disciplina', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdDisciplina', [IdBloqueado]);
        cdUpdate.Open;

        Application.CreateForm(TFrmDisciplinasDatosDX, FrmDisciplinasDatosDX);
        FrmDisciplinasDatosDX.dsDatos.DataSet := cdUpdate;
        FrmDisciplinasDatosDX.Caption := 'Edición de Área de Artículos';
        cdUpdate.Edit;
        if FrmDisciplinasDatosDX.ShowModal = mrOk then
        begin
          // Modificar los datos del nodo
          TreeView1.Selected.Text := cdUpdate.FieldByName('CodigoDisciplina').AsString;
        end;
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 1)) then
      begin
        // Editar grupo
        if not ClientModule1.LeePermisos('GRUPOS','EDITAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para editar grupos. Si necesita este permiso notifíquelo a su administrador.');

        CrearConjunto(cdUpdate, 'alm_grupo', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdGrupo', [IdBloqueado]);
        cdUpdate.Open;

        Application.CreateForm(TFrmGruposDatosDX, FrmGruposDatosDX);
        FrmGruposDatosDX.dsDatos.DataSet := cdUpdate;
        FrmGruposDatosDX.EditCodigoDisciplina.Text := PDatos(TreeView1.Selected.Parent.Data).Codigo;
        FrmGruposDatosDX.EditTituloDisciplina.text := PDatos(TreeView1.Selected.Parent.Data).Titulo;
        FrmGruposDatosDX.Caption := 'Modificar Grupo: ' + PDatos(TreeView1.Selected.Data).Codigo + ', de Área: ' + PDatos(TreeView1.Selected.Parent.Data).Codigo;
        cdUpdate.Edit;
        if FrmGruposDatosDX.ShowModal = mrOk then
        begin
          // Modificar los datos del nodo
          TreeView1.Selected.Text := cdUpdate.FieldByName('CodigoGrupo').AsString;
        end;
      end;

      if (Assigned(TreeView1.Selected) and (TreeView1.Selected.Level = 2)) then
      begin
        // Editar Subgrupo
        if not ClientModule1.LeePermisos('SUBGRUPOS','EDITAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para editar subgrupos. Si necesita este permiso notifíquelo a su administrador.');

        CrearConjunto(cdUpdate, 'alm_subgrupo', ccUpdate);
        CargarDatosFiltrados(cdUpdate, 'IdSubGrupo', [IdBloqueado]);
        cdUpdate.Open;

        Application.CreateForm(TFrmSubgruposDatosDX, FrmSubgruposDatosDX);
        FrmSubgruposDatosDX.EditCodigoGrupo.Text := PDatos(TreeView1.Selected.Parent.Data).Codigo;
        FrmSubgruposDatosDX.EditTituloGrupo.text := PDatos(TreeView1.Selected.Parent.Data).Titulo;
        FrmSubgruposDatosDX.dsDatos.DataSet := cdUpdate;
        FrmSubgruposDatosDX.Caption := 'Editar SubGrupo: ' + PDatos(TreeView1.Selected.Data).Codigo + ', de Grupo: ' + PDatos(TreeView1.Selected.Parent.Data).Codigo;
        cdUpdate.Edit;
        if FrmSubgruposDatosDX.ShowModal = mrOk then
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
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha podido modificar el registro', e.Message, mtInformation, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Error inesperado', 'Ha ocurrido un error inesperado, informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
  End;

end;

procedure TFrmEspecificacionesDX.AdvSmoothButton3Click(Sender: TObject);
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
        // Eliminar disciplina
        if not ClientModule1.LeePermisos('AREAS','BORRAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para eliminar areas o disciplinas. Si necesita este permiso notifíquelo a su administrador.');

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
        // Eliminar grupo
        if not ClientModule1.LeePermisos('GRUPOS','BORRAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para eliminar grupos. Si necesita este permiso notifíquelo a su administrador.');

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
        // Eliminar Subgrupo
        if not ClientModule1.LeePermisos('SUBGRUPOS','BORRAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para eliminar subgrupos. Si necesita este permiso notifíquelo a su administrador.');

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
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha podido eliminar el registro', e.Message, mtInformation, [mbOk], 0);
    on e:Exception do
      ;
  End;
end;

procedure TFrmEspecificacionesDX.AdvSmoothButton4Click(Sender: TObject);
var
  Nodo: TTreeNode;
  DatosPtr: PDatos;
  Leyenda: String;
  AreaNodo,
  GrupoNodo,
  SubGrupoNodo,
  DetalleNodo: TTreeNode;
  titulodisciplina : string;
  i, nroorden : integer;
  respuesta: integer;
  lastid : integer;
begin
  try
    // Solo activar esto cuando se trate de un nodo de nivel superior a 2
    if Assigned(TreeView1.Selected) and (TreeView1.Selected.Level < 2) then
    begin
      if TreeView1.Selected.Level = 0 then
      begin
        // Insertar grupo
        if not ClientModule1.LeePermisos('GRUPOS','AGREGAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para añadir grupos. Si necesita este permiso notifíquelo a su administrador.');
        AgregarGrupo(TreeView1.Selected);
      end;

      if TreeView1.Selected.Level = 1 then
      begin
        // Insertar subgrupo
        if not ClientModule1.LeePermisos('SUBGRUPOS','AGREGAR',False) then
          raise InteligentWarning.Create('No tiene privilegios para añadir subgrupos. Si necesita este permiso notifíquelo a su administrador.');
        AgregarSubGrupo(TreeView1.Selected);
      end;
    end;

    if TreeView1.Selected.Level = 2 then
      begin
        Nodo := TreeView1.Selected;
        nroorden:=cdEspecDetalleSG.RecordCount+1;
        if Not Assigned(Nodo) then
          raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);

        Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
        if Not CrearConjunto(cdUptEspecDetalle, 'alm_especdetalle', ccUpdate) then
          raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');
        CargarDatosFiltrados(cdUptEspecDetalle, 'iddetalle', [-9]);
        cdUptEspecDetalle.Open;

        FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdUptEspecDetalle;
        cdUptEspecDetalle.Append;
        cdUptEspecDetalle.FieldByName('IdDetalle').AsInteger := 0;
        FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := pdatos(TreeView1.Selected.data).Codigo;
        respuesta := FrmEspecDetalleSubgrupo.ShowModal;
        lastid:= FrmEspecDetalleSubgrupo.Lastid;
        FrmEspecDetalleSubgrupo.Free;
        //cdEspecDetalle.Refresh;
        //cdEspecDetalle.Locate('IdDetalle', lastid, []);
        //cancelarbloqueo(cdUptEspecDetalle, lastid);
        //cdUptEspecDetalle.Close;


        if respuesta <> mrcancel then
        begin
          cancelarbloqueo(cdUptEspecDetalle, lastid);
          cdUptEspecDetalle.Close;
          cdEspecDetalle.Refresh;
          cdEspecDetalle.Locate('IdDetalle', lastid, []);
          if Not CrearConjunto(cdUptEspecDetSG, 'alm_especdetallesubgrupo', ccUpdate) then
            raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');
          CargarDatosFiltrados(cdUptEspecDetSG, 'iddetalle', [-9]);
          cdUptEspecDetSG.Open;
          cdUptEspecDetSG.Append;
          cdUptEspecDetSG.FieldByName('idsubgrupo').AsInteger := PDatos(TreeView1.Selected.Data).Id;
          cdUptEspecDetSG.FieldByName('iddetalle').AsInteger := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
          cdUptEspecDetSG.FieldByName('noorden').AsInteger := nroorden;
          cdUptEspecDetSG.Post;
          cdUptEspecDetSG.ApplyUpdates(-1);

          leyenda:=cdEspecDetalle.FieldByName('CodigoDetalle').AsString;
          //cdEspecDetalle.Refresh;
          New(DatosPtr);
          DatosPtr^.Id := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
          DatosPtr^.Codigo := cdEspecDetalle.FieldByName('CodigoDetalle').AsString;

          ListView1.AddItem(cdEspecDetalle.FieldByName('TituloDetalle').AsString, TObject(DatosPtr));


          ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 4;
          ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('CodigoDetalle').AsString);
          ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Descripcion').AsString);
          ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TipoDato').AsString);
          ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Prefijo').AsString);
        end
        else
        begin
          cdEspecDetalle.CancelUpdates;
          cdUptEspecDetalle.CancelUpdates;
          cdUptEspecDetalle.Close;
        end;
      end;


  except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha podido crear un nuevo registro', e.Message, mtInformation, [mbOk], 0);
    on e:Exception do
      ;
  end;
end;

procedure TFrmEspecificacionesDX.AdvSmoothButton5Click(Sender: TObject);
var
  noitem: Tlistitem;
  leyenda: integer;
  Respuesta: integer;
  Nodo: TTreeNode;
  DatosPtr: PDatos;
begin
  // Solo activar esto cuando se trate de un nodo de nivel 2
  if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
    Exit;

  // Verificar si se está seleccionando un registro de especificaciones
  if ListView1.SelCount = 0 then
    Exit;

  // Agregar el detalle
  Try
    // Localizar el registro que se va a editar
    noitem:=listview1.Selected;
    if Not cdEspecDetalle.Locate('IdDetalle', PDatos(ListView1.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');

    Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);

    if Not CrearConjunto(cdUptEspecDetalle, 'alm_especdetalle', ccUpdate) then
      raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');
    CargarDatosFiltrados(cdUptEspecDetalle, 'iddetalle', [cdEspecDetalle.FieldByName('iddetalle').AsInteger]);
    cdUptEspecDetalle.Open;
    cdUptEspecDetalle.Edit;
    FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdUptEspecDetalle;


    FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := TreeView1.Selected.Text;
    Respuesta := FrmEspecDetalleSubgrupo.ShowModal;
    FrmEspecDetalleSubgrupo.Free;

    if Respuesta <> mrcancel then
    begin
       //cdEspecDetalle.Refresh;
       listview1.Items[noitem.Index].SubItems[0]:=cdUptEspecDetalle.FieldByName('TituloDetalle').AsString;
       listview1.Items[noitem.Index].SubItems[1]:=cdUptEspecDetalle.FieldByName('Descripcion').AsString;
       listview1.Items[noitem.Index].SubItems[2]:=cdUptEspecDetalle.FieldByName('TipoDato').AsString;
       listview1.Items[noitem.Index].SubItems[3]:=cdUptEspecDetalle.FieldByName('Prefijo').AsString;

       CancelarBloqueo(cdUptEspecDetalle, PDatos(ListView1.Selected.Data).Id);
       cdUptEspecDetalle.Close;
//..............................................................................
{
        ListView1.Items.Clear;
        lstDetalles.Visible := true;
        ListView1.Align := alTop;
        ListView1.Height := Round(Panel4.Height * 0.65);
        ListView1.rowselect := true;
        splitter2.Top := ListView1.Height + 1;
        splitter2.Refresh;
        lstDetalles.Align := alClient;
        ListView1.ViewStyle := vsReport;
}
      //CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
//..............................................................................
    end
    else
    begin
      cdUptEspecDetalle.CancelUpdates;
      CancelarBloqueo(cdUptEspecDetalle, PDatos(ListView1.Selected.Data).Id);
      cdUptEspecDetalle.Close;
    end;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;

end;

procedure TFrmEspecificacionesDX.AdvSmoothButton6Click(Sender: TObject);
Var
  vkd: word;
begin
  try
    // Solo activar esto cuando se trate de un nodo de nivel 2
    if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
      Exit;

    // Verificar si se está seleccionando un registro de especificaciones
    if ListView1.SelCount = 0 then
      Exit;

    // solo quitarlo de la lista del detalle
    vkd := VK_DELETE;
    ListView1KeyUp(Sender,vkd,[]);
  except
  on e:exception do
    InteliDialog.ShowModal('No se Puede Borrar el Registro', e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmEspecificacionesDX.Agregar1Click(Sender: TObject);
var
  Nodo: TTreeNode;
  DatosPtr: PDatos;
  Leyenda: String;
  AreaNodo,
  GrupoNodo,
  SubGrupoNodo,
  DetalleNodo: TTreeNode;
  titulodisciplina : string;
  i, nroorden : integer;
begin
   if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
     Exit;
   nroorden:=0;
   Nodo := TreeView1.Selected;
   if Not Assigned(Nodo) then
     raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);

  AdvSmoothButton4.Click;
end;

procedure TFrmEspecificacionesDX.AgregarDetClick(Sender: TObject);
var
  respuesta: integer;
  lastid : integer;
  DatosPtr: PDatos;
begin

        {
        if Not CrearConjunto(cdUptEspecDetalle, 'alm_especdetalle', ccUpdate) then
              raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');
            CargarDatosFiltrados(cdUptEspecDetalle, 'iddetalle', [-9]);
            cdUptEspecDetalle.Open;
            FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdUptEspecDetalle;
            cdUptEspecDetalle.Append;
            cdUptEspecDetalle.FieldByName('IdDetalle').AsInteger := 0;
            FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := pdatos(TreeView1.Selected.data).Codigo;
            respuesta := FrmEspecDetalleSubgrupo.ShowModal;
            lastid:= FrmEspecDetalleSubgrupo.lastid;
            FrmEspecDetalleSubgrupo.Free;
            if respuesta <> mrcancel then
            begin
              cancelarbloqueo(cdUptEspecDetalle, lastid);
              cdUptEspecDetalle.Close;
              lstDetalles.Items.Clear;
              cdEspecDetalle.Refresh;
              cdEspecDetalle.First;
              while not cdEspecDetalle.Eof do
              begin
                New(DatosPtr);
                DatosPtr^.Id := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
                DatosPtr^.Codigo := cdEspecDetalle.FieldByName('CodigoDetalle').AsString;

                // si está en el listview anterior, no ponerlo en la lista general
                if not cdEspecDetalleSG.Locate('iddetalle',DatosPtr^.Id,[]) then
                begin
                  // Crear el objeto de Especificacion
                  lstDetalles.AddItem(cdEspecDetalle.FieldByName('CodigoDetalle').AsString, TObject(DatosPtr));

                  // Meter los datos agregados al objeto del listview
                  lstDetalles.Items.Item[lstDetalles.Items.Count -1].ImageIndex := 4;
                  lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TituloDetalle').AsString);
                  lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Descripcion').AsString);
                  lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TipoDato').AsString);
                  lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Prefijo').AsString);
                End;
              cdEspecDetalle.Next;
              end;
            end
            else
            begin
              cdEspecDetalle.CancelUpdates;
              cdUptEspecDetalle.CancelUpdates;
              cdUptEspecDetalle.Close;
            end;
    }
end;

procedure TFrmEspecificacionesDX.AgregarGrupo(Nodo: TTreeNode);
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

    Application.CreateForm(TFrmGruposDatosDX, FrmGruposDatosDX);
    FrmGruposDatosDX.EditCodigoDisciplina.Text:=PDatos(Nodo.Data).Codigo;
    FrmGruposDatosDX.EditTituloDisciplina.Text:=PDatos(Nodo.Data).Titulo;
    FrmGruposDatosDX.dsDatos.DataSet:= cdUpdate;
    cdUpdate.Append;
    cdUpdate.FieldByName('IdDisciplina').AsInteger := PDatos(Nodo.Data).Id;
    cdUpdate.FieldByName('IdGrupo').AsInteger := 0;
    cdUpdate.FieldByName('Activo').AsString := 'Si';
    if FrmGruposDatosDX.ShowModal = mrOk then
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

procedure TFrmEspecificacionesDX.AgregarSubGrupo(Nodo: TTreeNode);
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

    Application.CreateForm(TFrmSubgruposDatosDX, FrmSubgruposDatosDX);
    FrmSubgruposDatosDX.EditCodigoGrupo.Text:=PDatos(Nodo.Data).Codigo;
    FrmSubgruposDatosDX.EditTituloGrupo.Text:=PDatos(Nodo.Data).Titulo;
    FrmSubgruposDatosDX.dsDatos.DataSet := cdUpdate;
    cdUpdate.Append;
    cdUpdate.FieldByName('IdGrupo').AsInteger := PDatos(Nodo.Data).Id;
    cdUpdate.FieldByName('IdSubGrupo').AsInteger := 0;
    cdUpdate.FieldByName('Activo').AsString := 'Si';
    if FrmSubgruposDatosDX.ShowModal = mrOk then
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


procedure TFrmEspecificacionesDX.CargarArbol;
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


end.
