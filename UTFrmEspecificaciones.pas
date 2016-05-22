unit UTFrmEspecificaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ImgList, DB, DBClient, StdCtrls, AdvToolBar,
  ToolWin, JvExControls, JvXPCore, JvXPButtons, Grids, DBGrids, Menus, frxClass,
  AdvSmoothButton, AdvProgr;

type
  PDatos = ^TNDatos;
  TNDatos = Record
    Id: Integer;
    Codigo: String;
  end;

  TFrmEspecificaciones = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    ImageList1: TImageList;
    cdAreas: TClientDataSet;
    cdGrupos: TClientDataSet;
    cdSubGrupos: TClientDataSet;
    cdDetalles_: TClientDataSet;
    Button1: TButton;
    ImageList3: TImageList;
    ImageList2: TImageList;
    PopupMenu1: TPopupMenu;
    Agregar1: TMenuItem;
    Editar1: TMenuItem;
    Eliminar1: TMenuItem;
    N1: TMenuItem;
    Ordenar1: TMenuItem;
    dsAreas: TDataSource;
    dsGrupos: TDataSource;
    dsSubGrupos: TDataSource;
    Panel4: TPanel;
    cdEspecDetalle: TClientDataSet;
    cdEspecDetalleSG: TClientDataSet;
    Label2: TLabel;
    PopupMenu2: TPopupMenu;
    AgregarDet: TMenuItem;
    EditarDet: TMenuItem;
    EliminarDet: TMenuItem;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    ListView1: TListView;
    GroupBox2: TGroupBox;
    lstDetalles: TListView;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    TreeView1: TTreeView;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    GroupBox4: TGroupBox;
    Btn_Agregar: TAdvSmoothButton;
    Btn_Editar: TAdvSmoothButton;
    Btn_Eliminar: TAdvSmoothButton;
    GroupBox5: TGroupBox;
    Btn_AgregarDetalle: TAdvSmoothButton;
    Btn_EditarDetalle: TAdvSmoothButton;
    Btn_EliminarDetalle: TAdvSmoothButton;
    GroupBox6: TGroupBox;
    Btn_Arriba: TAdvSmoothButton;
    Btn_Abajo: TAdvSmoothButton;
    Btn_SubirNivel: TAdvSmoothButton;
    Btn_BajarNivel: TAdvSmoothButton;
    Panel8: TPanel;
    AdvToolBar1: TAdvToolBar;
    BtnSubir: TAdvToolBarButton;
    BtnBajar: TAdvToolBarButton;
    BtnIzquierda: TAdvToolBarButton;
    BtnDerecha: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    Btn_Add: TAdvToolBarMenuButton;
    Btn_Edit: TAdvToolBarButton;
    Btn_Del: TAdvToolBarButton;
    Btn_AddEspec: TAdvToolBarButton;
    Btn_EditEspec: TAdvToolBarButton;
    Btn_DelEspec: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    ProgressAbrir: TAdvProgress;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Expanded(Sender: TObject; Node: TTreeNode);
    procedure ListView1DblClick(Sender: TObject);
    procedure BtnSubirClick(Sender: TObject);
    procedure BtnBajarClick(Sender: TObject);
    procedure BtnDerechaClick(Sender: TObject);
    procedure BtnIzquierdaClick(Sender: TObject);
    procedure Btn_AddClick(Sender: TObject);
    procedure Btn_EditClick(Sender: TObject);
    procedure Btn_DelClick(Sender: TObject);
    procedure Btn_AddEspecClick(Sender: TObject);
    procedure Btn_EditEspecClick(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure Btn_DelEspecClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Agregar1Click(Sender: TObject);
    procedure Ordenar1Click(Sender: TObject);
    procedure ListView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cdEspecDetalleSGReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ListView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AgregarDetClick(Sender: TObject);
    procedure EditarDetClick(Sender: TObject);
    procedure EliminarDetClick(Sender: TObject);
    procedure Panel4Resize(Sender: TObject);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_EliminarClick(Sender: TObject);
    procedure Btn_AgregarDetalleClick(Sender: TObject);
    procedure Btn_EditarDetalleClick(Sender: TObject);
    procedure Btn_EliminarDetalleClick(Sender: TObject);
    procedure Btn_ArribaClick(Sender: TObject);
    procedure Btn_AbajoClick(Sender: TObject);
    procedure Btn_SubirNivelClick(Sender: TObject);
    procedure Btn_BajarNivelClick(Sender: TObject);
  private
    { Private declarations }
    ultimoid : integer;
    procedure CargarDetalles(idSubGrupo: Integer);
    procedure habilitardetalles;
    procedure Deshabilitardetalles;
  public
    { Public declarations }
  end;

var
  FrmEspecificaciones: TFrmEspecificaciones;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, UInteliDialog, UTFrmDatosDisciplinas, UTFrmDatosGrupos,
  UTFrmDatosSubGrupos, UTFrmespecdetallesubgrupo, UTFrmOrdenarEsp;

procedure TFrmEspecificaciones.Btn_BajarNivelClick(Sender: TObject);
begin
  BtnDerecha.Click;
end;

procedure TFrmEspecificaciones.Btn_AgregarClick(Sender: TObject);
begin
  Btn_Add.Click;
end;

procedure TFrmEspecificaciones.Btn_EditarClick(Sender: TObject);
begin
Btn_Edit.Click;
end;

procedure TFrmEspecificaciones.Btn_EliminarClick(Sender: TObject);
begin
Btn_Del.Click;
end;

procedure TFrmEspecificaciones.Btn_AgregarDetalleClick(Sender: TObject);
begin
Btn_AddEspec.Click;
end;

procedure TFrmEspecificaciones.Btn_EditarDetalleClick(Sender: TObject);
begin
Btn_EditEspec.Click;
end;

procedure TFrmEspecificaciones.Btn_EliminarDetalleClick(Sender: TObject);
begin
  Btn_DelEspec.Click;
end;

procedure TFrmEspecificaciones.Btn_ArribaClick(Sender: TObject);
begin
  BtnSubir.Click;
end;

procedure TFrmEspecificaciones.Btn_AbajoClick(Sender: TObject);
begin
  BtnBajar.Click;
end;

procedure TFrmEspecificaciones.Btn_SubirNivelClick(Sender: TObject);
begin
  BtnIzquierda.Click;
end;

procedure TFrmEspecificaciones.BtnSubirClick(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  Nodo := TreeView1.Selected.getPrevSibling;
  if Assigned(Nodo) then
    Nodo.Selected := True;
end;

procedure TFrmEspecificaciones.BtnBajarClick(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  Nodo := TreeView1.Selected.getNextSibling;
  if Assigned(Nodo) then
    Nodo.Selected := True;
end;

procedure TFrmEspecificaciones.BtnIzquierdaClick(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  if (TreeView1.Selected <> Nil) and (TreeView1.Selected.Parent <> Nil) then
  begin
    Nodo := TreeView1.Selected.Parent;
    Nodo.Selected := True;
  end;
end;

procedure TFrmEspecificaciones.BtnDerechaClick(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  if TreeView1.Selected.Count > 0 then
  begin
    Nodo := TreeView1.Selected.Item[0];
    Nodo.Selected := True;
  end;
end;

procedure TFrmEspecificaciones.Btn_DelEspecClick(Sender: TObject);
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

procedure TFrmEspecificaciones.Agregar1Click(Sender: TObject);
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

  btn_addespec.Click;
  //Btn_AddEspecClick(TWinControl(Sender).parent);
end;

procedure TFrmEspecificaciones.Btn_AddEspecClick(Sender: TObject);
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
begin
  // Solo activar esto cuando se trate de un nodo de nivel 2
  if Not TreeView1.SelectionCount = 0 then
    Exit;
  case treeview1.Selected.Level of
    0: begin
       // Localizar la disciplina (Área) a la cual corresponde este nuevo grupo
          Nodo := TreeView1.Selected;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Area: ' + TreeView1.Selected.Text);

          // Agregar nuevo Grupo
          Application.CreateForm(TFrmDatosGrupos, FrmDatosGrupos);
          FrmDatosGrupos.dsDatos.DataSet := cdGrupos;
          FrmDatosGrupos.Caption := 'Agregar nuevo Grupo para Área: ' + Nodo.Text;
          cdGrupos.Append;
          cdGrupos.FieldByName('IdGrupo').AsInteger := 0;
          cdGrupos.FieldByName('IdDisciplina').AsInteger := PDatos(Nodo.Data).Id;
          FrmDatosGrupos.EditCodigoDisciplina.Text := Nodo.Text;
          FrmDatosGrupos.EditCodigoDisciplina.Enabled := false;
          FrmDatosGrupos.BtnFindDisciplina.Visible := False;
          FrmDatosGrupos.ShowModal;
          if FrmDatosGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdGrupos.FieldByName('codigogrupo').AsString;
            cdGrupos.Refresh;
            cdGrupos.Locate('codigogrupo', Leyenda, []);
            New(DatosPtr);
            DatosPtr^.Id := cdGrupos.FieldByName('idgrupo').AsInteger;
            DatosPtr^.Codigo := cdGrupos.FieldByName('codigogrupo').AsString;
            GrupoNodo := TreeView1.Items.AddChildObject(nodo, cdGrupos.FieldByName('titulogrupo').AsString, DatosPtr);
            GrupoNodo.ImageIndex := 1;
          end
          else
          cdgrupos.CancelUpdates;
    end;
    1: begin
       Nodo := TreeView1.Selected;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Subgrupo: ' + TreeView1.Selected.Text);

          // Agregar nuevo SubGrupo
          Application.CreateForm(TFrmDatosSubGrupos, FrmDatosSubGrupos);
          FrmDatosSubGrupos.dsDatos.DataSet := cdSubGrupos;
          FrmDatosSubGrupos.Caption := 'Agregar nuevo Subgrupo para el Grupo: ' + Nodo.Text;
          cdSubGrupos.Append;
          cdSubGrupos.FieldByName('IdGrupo').AsInteger := PDatos(Nodo.Data).Id;
          cdSubGrupos.FieldByName('IdSubGrupo').AsInteger := 0;
          FrmDatosSubGrupos.Caption := 'Editar Subgrupo: ' + TreeView1.Selected.Text + ' de Grupo: ' + Nodo.Text;
          FrmDatosSubGrupos.BtnFindGrupo.Visible := False;
          FrmDatosSubGrupos.EditTituloGrupo.Enabled :=false;
          FrmDatosSubGrupos.EditCodigoGrupo.Enabled :=false;
          FrmDatosSubGrupos.ShowModal;
          if FrmDatosSubGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdSubGrupos.FieldByName('codigosubgrupo').AsString;
            cdSubGrupos.Refresh;
            cdSubGrupos.Locate('codigosubgrupo', Leyenda, []);
            New(DatosPtr);
            DatosPtr^.Id := cdSubGrupos.FieldByName('IdSubGrupo').AsInteger;
            DatosPtr^.Codigo := cdSubGrupos.FieldByName('codigosubgrupo').AsString;
            SubGrupoNodo := TreeView1.Items.AddChildObject(nodo, cdSubGrupos.FieldByName('titulosubgrupo').AsString, DatosPtr);
            SubGrupoNodo.ImageIndex := 1;
          end
          else
          cdsubgrupos.CancelUpdates;
    end;
    2:begin
      Nodo := TreeView1.Selected;

      nroorden:=cdEspecDetalleSG.RecordCount+1;
      if Not Assigned(Nodo) then
        raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);
      Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
      FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdEspecDetalle;
      cdEspecDetalle.Append;
      //cdEspecDetalle.FieldByName('IdSubGrupo').AsInteger := PDatos(TreeView1.Selected.Data).Id;
      cdEspecDetalle.FieldByName('IdDetalle').AsInteger := 0;
      //cdEspecDetalle.FieldByName('noorden').AsInteger := nroorden;
      FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := TreeView1.Selected.Text;
      respuesta := FrmEspecDetalleSubgrupo.ShowModal;
      FrmEspecDetalleSubgrupo.Free;
      //if FrmEspecDetalleSubgrupo.ModalResult<>mrcancel the
      leyenda:=cdEspecDetalle.FieldByName('CodigoDetalle').AsString;
      cdEspecDetalle.Refresh;
      cdEspecDetalle.Locate('CodigoDetalle', Leyenda, []);
      if respuesta <> mrcancel then
      begin
        // insertar el detalle automáticamente al subgrupo
        cdEspecDetalleSG.Append;
        cdEspecDetalleSG.FieldByName('idsubgrupo').AsInteger := PDatos(TreeView1.Selected.Data).Id;
        cdEspecDetalleSG.FieldByName('iddetalle').AsInteger := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
        cdEspecDetalleSG.FieldByName('noorden').AsInteger := nroorden;
        cdEspecDetalleSG.Post;
        cdEspecDetalleSG.ApplyUpdates(-1);

        leyenda:=cdEspecDetalle.FieldByName('CodigoDetalle').AsString;
        cdEspecDetalle.Refresh;
        New(DatosPtr);
        DatosPtr^.Id := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
        DatosPtr^.Codigo := cdEspecDetalle.FieldByName('CodigoDetalle').AsString;
        // Crear el objeto de Especificacion
        ListView1.AddItem(cdEspecDetalle.FieldByName('TituloDetalle').AsString, TObject(DatosPtr));

        // Meter los datos agregados al objeto del listview
        ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 4;
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('CodigoDetalle').AsString);
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Descripcion').AsString);
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TipoDato').AsString);
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Prefijo').AsString);
      end
      else
        cdEspecDetalle.CancelUpdates;
      end;
  end;

  // Editar el detalle
  Try


  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones.Btn_AddClick(Sender: TObject);
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
  // Agregar un nuevo elemento
  Try
    Try
      // Verificar en que nivel se está generando
      case TreeView1.Selected.Level of
        0: begin
          // Agregar nueva disciplina (Área)
          //if not ClientModule1.LeePermisos('AREAS','AGREGAR') then
            //Exit;

          Application.CreateForm(TFrmDatosDisciplinas, FrmDatosDisciplinas);
          FrmDatosDisciplinas.dsDatos.DataSet := cdAreas;
          FrmDatosDisciplinas.Caption := 'Agregar nueva Área de artículos';
          cdAreas.Append;
          cdAreas.FieldByName('IdDisciplina').AsInteger := 0;
          FrmDatosDisciplinas.ShowModal;

          //Agregar Nuevo Nodo
          if FrmDatosDisciplinas.ModalResult<>mrcancel then
          begin
            Leyenda :=cdAreas.FieldByName('CodigoDisciplina').AsString;
            cdAreas.Refresh;
            cdAreas.Locate('CodigoDisciplina', Leyenda, []);
            New(DatosPtr);
            DatosPtr^.Id := cdAreas.FieldByName('IdDisciplina').AsInteger;
            DatosPtr^.Codigo := cdAreas.FieldByName('CodigoDisciplina').AsString;
            GrupoNodo := TreeView1.Items.AddChildObject(Nil, cdAreas.FieldByName('titulodisciplina').AsString, DatosPtr);
            GrupoNodo.ImageIndex := 1;
          end
          else
            cdareas.CancelUpdates;
        end;
        1: begin
          //if not ClientModule1.LeePermisos('GRUPOS','AGREGAR') then
            //Exit;
          // Localizar la disciplina (Área) a la cual corresponde este nuevo grupo
          Nodo := TreeView1.Selected.Parent;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);

          // Agregar nuevo Grupo
          Application.CreateForm(TFrmDatosGrupos, FrmDatosGrupos);
          FrmDatosGrupos.dsDatos.DataSet := cdGrupos;
          FrmDatosGrupos.Caption := 'Agregar nuevo Grupo para Área: ' + Nodo.Text;
          cdGrupos.Append;
          cdGrupos.FieldByName('IdGrupo').AsInteger := 0;
          cdGrupos.FieldByName('IdDisciplina').AsInteger := PDatos(Nodo.Data).Id;
          FrmDatosGrupos.EditCodigoDisciplina.Text := Nodo.Text;
          FrmDatosGrupos.EditCodigoDisciplina.Enabled := false;
          FrmDatosGrupos.BtnFindDisciplina.Visible := False;
          FrmDatosGrupos.ShowModal;
          if FrmDatosGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdGrupos.FieldByName('codigogrupo').AsString;
            cdGrupos.Refresh;
            cdGrupos.Locate('codigogrupo', Leyenda, []);
              for i := 1 to treeview1.Items.Count-1 do
              begin
                if (treeview1.Items[i].Level=0) and (Pdatos(treeview1.Items[i].Data).Id= cdGrupos.FieldByName('IdDisciplina').AsInteger) then
                begin
                    New(DatosPtr);
                    DatosPtr^.Id := cdGrupos.FieldByName('idgrupo').AsInteger;
                    DatosPtr^.Codigo := cdGrupos.FieldByName('codigogrupo').AsString;
                    GrupoNodo := TreeView1.Items.AddChildObject(treeview1.Items[i], cdGrupos.FieldByName('titulogrupo').AsString, DatosPtr);
                    GrupoNodo.ImageIndex := 1;
                end;
              end;
          end
          else
          cdgrupos.CancelUpdates;
        end;

        2: begin
          //if not ClientModule1.LeePermisos('SUBGRUPOS','AGREGAR') then
            //Exit;
          // Localizar el grupo al cual corresponde el nuevo subgrupo
          Nodo := TreeView1.Selected.Parent;
          //nroorden:=0;
          //Nodo := TreeView1.Selected;
          //nroorden:=cddetalles.RecordCount+1;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Subgrupo: ' + TreeView1.Selected.Text);

          // Agregar nuevo SubGrupo
          Application.CreateForm(TFrmDatosSubGrupos, FrmDatosSubGrupos);
          FrmDatosSubGrupos.dsDatos.DataSet := cdSubGrupos;
          FrmDatosSubGrupos.Caption := 'Agregar nuevo Subgrupo para el Grupo: ' + Nodo.Text;
          cdSubGrupos.Append;
          cdSubGrupos.FieldByName('IdGrupo').AsInteger := PDatos(TreeView1.Selected.Parent.Data).Id;
          cdSubGrupos.FieldByName('IdSubGrupo').AsInteger := 0;
          //cdDetalles.FieldByName('noorden').AsInteger := nroorden;
          FrmDatosSubGrupos.Caption := 'Editar Subgrupo: ' + TreeView1.Selected.Text + ' de Grupo: ' + Nodo.Text;
          FrmDatosSubGrupos.BtnFindGrupo.Visible := False;
          FrmDatosSubGrupos.EditTituloGrupo.Enabled :=false;
          FrmDatosSubGrupos.EditCodigoGrupo.Enabled :=false;

          FrmDatosSubGrupos.ShowModal;
          if FrmDatosSubGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdSubGrupos.FieldByName('codigosubgrupo').AsString;
            cdSubGrupos.Refresh;
            cdSubGrupos.Locate('codigosubgrupo', Leyenda, []);
            for i := 1 to treeview1.Items.Count-1 do
              begin
                if (treeview1.Items[i].Level=1) and (Pdatos(treeview1.Items[i].Data).Id= cdSubGrupos.FieldByName('IdGrupo').AsInteger) then
                begin
                  New(DatosPtr);
                  DatosPtr^.Id := cdSubGrupos.FieldByName('IdSubGrupo').AsInteger;
                  DatosPtr^.Codigo := cdSubGrupos.FieldByName('codigosubgrupo').AsString;
                  SubGrupoNodo := TreeView1.Items.AddChildObject(treeview1.Items[i], cdSubGrupos.FieldByName('titulosubgrupo').AsString, DatosPtr);
                  SubGrupoNodo.ImageIndex := 1;
                end
              end;
          end
          else
          cdsubgrupos.CancelUpdates;
        end;
      end;
    Finally
      //FrmDatosDisciplinas.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('No se ha podido crear un nuevo registro', e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones.Btn_DelClick(Sender: TObject);
Const
  Opcion: Array[0..2] of String = ('Área', 'Grupo', 'Subgrupo');
var
  Nodo: TTreeNode;
  BorrarItem : TClientDataset;
begin
  if TreeView1.SelectionCount = 0 then
    Exit;   // No continuar si no hay nada seleccionado

  if InteliDialog.ShowModal('Borrado de registros', 'Está a punto de eliminar el registro de ' + Opcion[TreeView1.Selected.Level] + ': ' +
                            TreeView1.Selected.Text + #10 + #10 + '¿Está seguro que desea hacer esto ahora?', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    // Marcar el registro como borrado
    case TreeView1.Selected.Level of
      0: if cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Data).Id, []) then
         begin
           Try
             Try
               BorrarItem := TClientDataSet.Create(Self);
               CrearConjunto(BorrarItem, 'nuc_disciplina', ccUpdate);
               PonerSentenciaSQL(BorrarItem.ProviderName, 'delete from nuc_disciplina where iddisciplina ='+
                                 inttostr(cdareas.FieldByName('iddisciplina').AsInteger));
               BorrarItem.Execute;
               TreeView1.Selected.Destroy;
             Except
             on e:exception do
               begin
                 showmessage(e.Message);
               end;
             End;
           Finally
             EliminarConjunto(BorrarItem.ProviderName);
             BorrarItem.Destroy;
             cdareas.Refresh;
           End;
         end;
      1: if cdGrupos.Locate('IdGrupo', PDatos(TreeView1.Selected.Data).Id, []) then
         begin
           Try
             Try
               BorrarItem := TClientDataSet.Create(Self);
               CrearConjunto(BorrarItem, 'alm_grupo', ccUpdate);
               PonerSentenciaSQL(BorrarItem.ProviderName, 'delete from alm_grupo where idgrupo ='+
                           inttostr(cdGrupos.FieldByName('idgrupo').AsInteger));
               BorrarItem.Execute;
               TreeView1.Selected.Destroy;
             Except
               on e:exception do
               begin
                 showmessage(e.Message);
               end;
             End;
           Finally
             EliminarConjunto(BorrarItem.ProviderName);
             BorrarItem.Destroy;
             cdGrupos.Refresh;
           End;
         end;
      2: if cdSubgrupos.Locate('IdSubGrupo', PDatos(TreeView1.Selected.Data).Id, []) then
         begin
           Try
             Try
               BorrarItem := TClientDataSet.Create(Self);
               CrearConjunto(BorrarItem, 'alm_subgrupo', ccUpdate);
               PonerSentenciaSQL(BorrarItem.ProviderName, 'delete from alm_subgrupo where idsubgrupo ='+
                           inttostr(cdSubGrupos.FieldByName('idsubgrupo').AsInteger));
               BorrarItem.Execute;
               TreeView1.Selected.Destroy;
             Except
               on e:exception do
               begin
                 showmessage(e.Message);
               end;
             End;
           Finally
             EliminarConjunto(BorrarItem.ProviderName);
             BorrarItem.Destroy;
             cdSubGrupos.Refresh;
           End;
         end;
    end;
  end;
end;

procedure TFrmEspecificaciones.Btn_EditClick(Sender: TObject);
var
  Nodo: TTreeNode;
  Leyenda : Integer;
  cdUpt: TClientDataSet;
begin
  if TreeView1.SelectionCount = 0 then
    Exit;   // No continiuar si no hay nada seleccionado

  // Editar un elemento
  Try
    Try
      // Verificar en que nivel se está generando
      case TreeView1.Selected.Level of
        0: begin
          //if not ClientModule1.LeePermisos('AREAS','EDITAR') then
            //Exit;
          // Editar disciplina (Área)
          if Not cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Data).Id, []) then
            raise InteligentException.Create('No se ha podido editar el Área: ' + TreeView1.Selected.Text);
          Leyenda:=PDatos(TreeView1.Selected.Data).Id;
          Application.CreateForm(TFrmDatosDisciplinas, FrmDatosDisciplinas);
          FrmDatosDisciplinas.dsDatos.DataSet := cdAreas;
          FrmDatosDisciplinas.Caption := 'Editar Área de artículos: ' + TreeView1.Selected.Text;
          cdAreas.Edit;
          FrmDatosDisciplinas.ShowModal;
          if FrmDatosDisciplinas.ModalResult<>mrcancel then
          begin
            cdAreas.Refresh;
            treeview1.Selected.Text := cdAreas.FieldByName('titulodisciplina').AsString;
          end
          else
          cdareas.CancelUpdates;
        end;
        1: begin
          //if not ClientModule1.LeePermisos('GRUPOS','EDITAR') then
            //Exit;
          // Localizar la disciplina (Área) a la cual corresponde este grupo
          Nodo := TreeView1.Selected.Parent;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);

          // Editar Grupo
          if Not cdGrupos.Locate('IdGrupo', PDatos(TreeView1.Selected.Data).Id, []) then
            raise InteligentException.Create('No se ha podido editar el Grupo: ' + TreeView1.Selected.Text);
          Leyenda:=PDatos(TreeView1.Selected.Data).Id;
          Application.CreateForm(TFrmDatosGrupos, FrmDatosGrupos);
          FrmDatosGrupos.dsDatos.DataSet := cdGrupos;
          FrmDatosGrupos.Caption := 'Editar Grupo: ' + Treeview1.Selected.Text + ' de Área: ' + Nodo.Text;
          FrmDatosGrupos.EditCodigoDisciplina.Text := Nodo.Text;
          //FrmDatosGrupos.DBEditCodigo.Enabled := False;
          FrmDatosGrupos.BtnFindDisciplina.Visible := False;
          cdGrupos.Edit;
          FrmDatosGrupos.ShowModal;
            if FrmDatosGrupos.ModalResult<>mrcancel then
            begin
              cdGrupos.Refresh;
              treeview1.Selected.text := cdGrupos.FieldByName('titulogrupo').AsString;
            end
            else
            cdgrupos.CancelUpdates;
        end;
        2: begin
          //if not ClientModule1.LeePermisos('SUBGRUPOS','EDITAR') then
            //Exit;
          // Localizar el grupo al cual corresponde el nuevo subgrupo
          Nodo := TreeView1.Selected.Parent;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Subgrupo: ' + TreeView1.Selected.Text);

          // Editar SubGrupo
          if Not cdSubGrupos.Locate('IdSubGrupo', PDatos(TreeView1.Selected.Data).Id, []) then
            raise InteligentException.Create('No se ha podido editar el Subgrupo: ' + TreeView1.Selected.Text);
          Leyenda:=PDatos(TreeView1.Selected.Data).Id;
          Application.CreateForm(TFrmDatosSubGrupos, FrmDatosSubGrupos);
          //--------------------------------------------------------------------
          cdUpt := TClientDataSet.Create(Nil);
          if Not CrearConjunto(cdUpt, 'alm_subgrupo', ccUpdate) then
            raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');

          Try
            CargarDatosFiltrados(cdUpt, 'IdSubGrupo', [PDatos(TreeView1.Selected.Data).Id]);
            cdUpt.Open;
            FrmDatosSubGrupos.dsDatos.DataSet:=cdUpt;
            //--------------------------------------------------------------------
            //FrmDatosSubGrupos.dsDatos.DataSet := cdSubGrupos;
            FrmDatosSubGrupos.Caption := 'Editar Subgrupo: ' + TreeView1.Selected.Text + ' de Grupo: ' + Nodo.Text;
            FrmDatosSubGrupos.EditCodigoGrupo.Enabled := False;
            FrmDatosSubGrupos.BtnFindGrupo.Visible := False;
            //FrmDatosSubGrupos.EditTituloGrupo.Enabled := False;
            //cdSubGrupos.Edit;
            cdUpt.Edit;
            FrmDatosSubGrupos.ShowModal;
            if FrmDatosSubGrupos.ModalResult <> mrCancel then
            begin
              cdSubGrupos.Refresh;
              treeview1.Selected.text := cdSubGrupos.FieldByName('titulosubgrupo').AsString;
            end
            else
            cdsubgrupos.CancelUpdates;
          Finally
            eliminarconjunto(cdUpt.ProviderName);
            cdupt.Destroy;
          End;
        end;
      end;
    Finally
      //FrmDatosDisciplinas.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('No se ha podido crear un nuevo registro', e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones.Btn_EditEspecClick(Sender: TObject);
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
    if Not cdEspecDetalle.Locate('IdDetalle', PDatos(ListView1.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');
    noitem:=listview1.Selected;
    leyenda := PDatos(ListView1.Selected.Data).Id;
    Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
    FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdEspecDetalle;
    cdEspecDetalle.Edit;
    FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := TreeView1.Selected.Text;
    //FrmEspecDetalleSubgrupo.DBEcodigo.Enabled := False;
    Respuesta := FrmEspecDetalleSubgrupo.ShowModal;
    FrmEspecDetalleSubgrupo.Free;
    if Respuesta <> mrcancel then
    begin

       cdEspecDetalle.Refresh;
       listview1.Items[noitem.Index].SubItems[0]:=cdEspecDetalle.FieldByName('TituloDetalle').AsString;
       listview1.Items[noitem.Index].SubItems[1]:=cdEspecDetalle.FieldByName('Descripcion').AsString;
       listview1.Items[noitem.Index].SubItems[2]:=cdEspecDetalle.FieldByName('TipoDato').AsString;
       listview1.Items[noitem.Index].SubItems[3]:=cdEspecDetalle.FieldByName('Prefijo').AsString;

//..............................................................................
      ListView1.Items.Clear;
      lstDetalles.Visible := true;
      ListView1.Align := alTop;
      ListView1.Height := Round(Panel4.Height * 0.65);
      ListView1.rowselect := true;
      splitter2.Top := ListView1.Height + 1;
      splitter2.Refresh;
      lstDetalles.Align := alClient;
      Habilitardetalles;
      ListView1.ViewStyle := vsReport;
      cdSubGrupos.Locate('idsubgrupo', leyenda, []);
      CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
//..............................................................................
    end
    else
    cdEspecDetalle.CancelUpdates;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones.Eliminar1Click(Sender: TObject);
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

procedure TFrmEspecificaciones.EliminarDetClick(Sender: TObject);
var
  BorrarItem : TClientDataset;
begin
  Try
    if lstDetalles.SelCount = 0 then
      Exit;
    // Localizar el registro que se va a editar
    if Not cdEspecDetalle.Locate('IdDetalle', PDatos(lstDetalles.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');

    if InteliDialog.ShowModal('Eliminar registro de Detalle de Subgrupo',
                              '¿Está seguro que desea eliminar el registro de Detalle: ' + cdEspecDetalle.FieldByName('TituloDetalle').AsString + #10 + #10 +
                              cdEspecDetalle.FieldByName('Descripcion').AsString + #10 + #10 +
                              'Si elimina este detalle, este se eliminará automáticamente de todos los subgrupos' + #10 +
                              'a los que se haya asignado,', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Try
        Try
          BorrarItem := TClientDataSet.Create(Self);
          CrearConjunto(BorrarItem, 'nuc_disciplina', ccUpdate);
          PonerSentenciaSQL(BorrarItem.ProviderName, 'delete from alm_especdetalle where IdDetalle ='+
                        inttostr(cdEspecDetalle.FieldByName('IdDetalle').AsInteger));
          BorrarItem.Execute;
          lstDetalles.Selected.Destroy;
        Except
          on e:exception do
          begin
            showmessage(e.Message);
          end;
        End;
      Finally
        EliminarConjunto(BorrarItem.ProviderName);
        BorrarItem.Destroy;
        cdEspecDetalle.Refresh;
      End;
    end;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones.Editar1Click(Sender: TObject);
var
  noitem: Tlistitem;
  leyenda : integer;
  tmp: TListView;
begin
  // Solo activar esto cuando se trate de un nodo de nivel 2
  if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
    Exit;

  btn_EditEspec.Click;
end;

procedure TFrmEspecificaciones.EditarDetClick(Sender: TObject);
var
  noitem: Tlistitem;
  leyenda : integer;
  respuesta: integer;
begin
  // Agregar el detalle
  Try
    // Localizar el registro que se va a editar
    if Not cdEspecDetalle.Locate('IdDetalle', PDatos(lstDetalles.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');
    noitem:=lstDetalles.Selected;
    leyenda := PDatos(lstDetalles.Selected.Data).Id;
    Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
    FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdEspecDetalle;
    cdEspecDetalle.Edit;
    FrmEspecDetalleSubgrupo.editdetallesubgrupo.Visible := False;
    FrmEspecDetalleSubgrupo.jvLabel4.Visible := False;
    //FrmEspecDetalleSubgrupo.DBEcodigo.Enabled := False;
    Respuesta := FrmEspecDetalleSubgrupo.ShowModal;
    FrmEspecDetalleSubgrupo.Free;
    if Respuesta <> mrcancel then
    begin
       lstDetalles.Items[noitem.Index].SubItems[0] := cdEspecDetalle.FieldByName('TituloDetalle').AsString;
       lstDetalles.Items[noitem.Index].SubItems[1] := cdEspecDetalle.FieldByName('Descripcion').AsString;
       lstDetalles.Items[noitem.Index].SubItems[2] := cdEspecDetalle.FieldByName('TipoDato').AsString;
       lstDetalles.Items[noitem.Index].SubItems[3] := cdEspecDetalle.FieldByName('Prefijo').AsString;
       CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
    end
    else
      cdEspecDetalle.CancelUpdates;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Eliminar los conjuntos creados
  EliminarConjunto([cdAreas, cdGrupos, cdSubGrupos, cdEspecDetalle, cdEspecDetalleSG]);
  Liberarventana(Self,Action);
end;

procedure TFrmEspecificaciones.FormShow(Sender: TObject);
var
  Leyenda: String;
  DatosPtr: PDatos;
  AreaNodo,
  GrupoNodo,
  SubGrupoNodo,
  DetalleNodo: TTreeNode;
begin
  AccedeACoordenadas(Self);
  Try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    InicializarProgress(0, 10, 0);

    Try
      // Leer los datos de las áreas
      IncrementarProgress(1);
      clientmodule1.ComponentColor(self);
      if not CrearConjunto(cdAreas, 'nuc_disciplina', ccUpdate) then
        raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Áreas');
      cdAreas.Open;

      // Acceder a los datos de los Grupos
      IncrementarProgress(1);
      if not CrearConjunto(cdGrupos, 'alm_grupo', ccUpdate) then
        raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Grupos de Área');
      cdGrupos.Open;

      // Acceder a los datos de los SubGrupos
      IncrementarProgress(1);
      if not CrearConjunto(cdSubGrupos, 'alm_subgrupo', ccUpdate) then
        raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de SubGrupos de Área');
      cdSubGrupos.Open;

      // Acceder a los datos de los Detalles de SubGrupo
      IncrementarProgress(1);
      if not CrearConjunto(cdEspecDetalleSG, 'alm_especdetallesubgrupo', ccUpdate) then
        raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Detalles de SubGrupos');
      cdEspecDetalleSG.Open;
      cdEspecDetalleSG.IndexFieldNames := 'idsubgrupo;noorden';

      // Traerme todos los registros del detalle
      IncrementarProgress(1);
      if not CrearConjunto(cdEspecDetalle,'alm_especdetalle', ccUpdate) then
        raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Detalles de SubGrupos');
      cdEspecDetalle.Open;

      // Ajustar la barra de progreso a los nuevos valores
      InicializarProgress(0, cdAreas.RecordCount * 2, cdAreas.RecordCount);

      while Not cdAreas.eof do
      begin
        IncrementarProgress(1);

        Leyenda := cdAreas.FieldByName('TituloDisciplina').AsString;
        New(DatosPtr);
        DatosPtr^.Id := cdAreas.FieldByName('IdDisciplina').AsInteger;
        DatosPtr^.Codigo := cdAreas.FieldByName('CodigoDisciplina').AsString;

        // Crear el nodo de la área
        AreaNodo := TreeView1.Items.AddChildObject(Nil, Leyenda, DatosPtr);
        AreaNodo.ImageIndex := 1;

        // Proceder con los nodos de los grupos (hijos del AreaNodo que acabamos de crear)
        cdGrupos.Locate('IdDisciplina', cdAreas.FieldByName('IdDisciplina').AsInteger, []);
        while (Not cdGrupos.Eof) and (cdGrupos.FieldByName('IdDisciplina').AsInteger = cdAreas.FieldByName('IdDisciplina').AsInteger) do
        begin
          Leyenda := cdGrupos.FieldByName('TituloGrupo').AsString;
          New(DatosPtr);
          DatosPtr^.Id := cdGrupos.FieldByName('IdGrupo').AsInteger;
          DatosPtr^.Codigo := cdGrupos.FieldByName('CodigoGrupo').AsString;

          // Crear el nodo del Grupo de Área
          GrupoNodo := TreeView1.Items.AddChildObject(AreaNodo, Leyenda, DatosPtr);
          GrupoNodo.ImageIndex := 1;

          // Proceder con los nodos de los subgrupos (hijos del GrupoNodo que acabamos de crear)
          // Localizar el primero registro que tiene el IdGrupo que se está procesando en este ciclo
          cdSubGrupos.First;
          cdSubGrupos.Locate('IdGrupo', cdGrupos.FieldByName('IdGrupo').AsInteger, []);
          while (Not cdSubGrupos.Eof) and (cdSubGrupos.FieldByName('IdGrupo').AsInteger = cdGrupos.FieldByName('IdGrupo').AsInteger) do
          begin
            Leyenda := cdSubGrupos.FieldByName('TituloSubGrupo').AsString;
            New(DatosPtr);
            DatosPtr^.Id := cdSubGrupos.FieldByName('IdSubGrupo').AsInteger;
            DatosPtr^.Codigo := cdSubGrupos.FieldByName('CodigoSubGrupo').AsString;

            // Crear el nodo del SubGrupo de Área
            SubGrupoNodo := TreeView1.Items.AddChildObject(GrupoNodo, Leyenda, DatosPtr);
            SubGrupoNodo.ImageIndex := 1;

            cdSubGrupos.Next;
          end;

          cdGrupos.Next;
        end;

        cdAreas.Next;
      end;
      treeview1.SetFocus;

      {cdGrupos.MasterSource := dsAreas;
      cdGrupos.MasterFields := 'IdDisciplina';

      cdSubGrupos.MasterSource := dsGrupos;
      cdSubGrupos.MasterFields := 'IdGrupo';

      cdEspecDetalleSG.MasterSource := dsSubGrupos;
      cdEspecDetalleSG.MasterFields := 'IdSubGrupo';

      cdDetalles_.MasterSource := dsSubGrupos;
      cdDetalles_.MasterFields := 'IdSubGrupo';}

      cdAreas.First;

      //-----------------CANCELAR FILTROS--------------------------------------
    Finally
      Screen.Cursor := Cursor;

      AsignarProgress(0);
    End;
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

procedure TFrmEspecificaciones.ListView1DblClick(Sender: TObject);
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

procedure TFrmEspecificaciones.ListView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
Var
  i: Integer;
  orden: integer;
  nuevos: integer;
begin
  if (source is TListView) and (TListView(source).Name = 'lstDetalles')  then
  begin
    // asignar los nuevos elementos arrastrados
    Nuevos := 0;
    for i := 0 to lstDetalles.Items.Count -1 do
      if lstDetalles.Items.Item[i].Selected then
      begin
        orden := cdEspecDetalleSG.RecordCount + 1;
        cdEspecDetalleSG.Append;
        cdEspecDetalleSG.FieldValues['idsubgrupo'] := PDatos(TreeView1.Selected.Data).Id;
        cdEspecDetalleSG.FieldValues['iddetalle'] := PDatos(lstDetalles.Items.Item[i].Data).Id;
        cdEspecDetalleSG.FieldValues['noorden'] := orden;
        cdEspecDetalleSG.Post;
        cdEspecDetalleSG.ApplyUpdates(0);
        Inc(Nuevos);
      end;
    if Nuevos > 0 then
      CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
  end;
end;

procedure TFrmEspecificaciones.ListView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (source is TListView) and (TListView(source).Name = 'lstDetalles');
end;

procedure TFrmEspecificaciones.ListView1KeyUp(Sender: TObject; var Key: Word;
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
            cdSubGrupos.Locate('IdSubgrupo',Pdatos(Treeview1.Selected.Data).Id,[]);
            BorrarItem := TClientDataSet.Create(Self);
            CrearConjunto(BorrarItem, 'alm_especdetallesubgrupo', ccUpdate);
            PonerSentenciaSQL(BorrarItem.ProviderName, 'delete from alm_especdetallesubgrupo where IdDetalle ='+
                              inttostr(cdEspecDetalleSG.FieldByName('IdDetalle').AsInteger)+' and IdSubgrupo='+
                              inttostr(cdSubGrupos.FieldByName('IdSubgrupo').AsInteger));
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
          EliminarConjunto(BorrarItem);
          BorrarItem.Destroy;
          cdareas.Refresh;
        End;
      end;
    end;
    key := 0;
  end;
end;

procedure TFrmEspecificaciones.AgregarDetClick(Sender: TObject);
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
begin
  Nodo := TreeView1.Selected;

  if Not Assigned(Nodo) then
    raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);
  Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
  FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdEspecDetalle;
  cdEspecDetalle.Append;
  cdEspecDetalle.FieldByName('IdDetalle').AsInteger := 0;
  FrmEspecDetalleSubgrupo.editdetallesubgrupo.Visible := False;
  FrmEspecDetalleSubgrupo.jvLabel4.Visible := False;
  respuesta := FrmEspecDetalleSubgrupo.ShowModal;
  FrmEspecDetalleSubgrupo.Free;
  if respuesta <> mrcancel then
  begin
    leyenda:=cdEspecDetalle.FieldByName('CodigoDetalle').AsString;
    cdEspecDetalle.Refresh;
    New(DatosPtr);
    DatosPtr^.Id := cdEspecDetalle.FieldByName('IdDetalle').AsInteger;
    DatosPtr^.Codigo := cdEspecDetalle.FieldByName('CodigoDetalle').AsString;
    // Crear el objeto de Especificacion
    lstDetalles.AddItem(cdEspecDetalle.FieldByName('TituloDetalle').AsString, TObject(DatosPtr));

    // Meter los datos agregados al objeto del listview
    lstDetalles.Items.Item[lstDetalles.Items.Count -1].ImageIndex := 4;
    lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('CodigoDetalle').AsString);
    lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Descripcion').AsString);
    lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('TipoDato').AsString);
    lstDetalles.Items.Item[lstDetalles.Items.Count -1].SubItems.Add(cdEspecDetalle.FieldByName('Prefijo').AsString);
  end
  else
    cdEspecDetalle.CancelUpdates;
end;

procedure TFrmEspecificaciones.Ordenar1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmOrdenarEsp, FrmOrdenarEsp);
  //FrmOrdenarEsp.dsdetalle.DataSet := cddetalles;
  FrmOrdenarEsp.cdDetalle := cdEspecdetalle;
  FrmOrdenarEsp.cdDetalleSG := cdEspecdetalleSG;
  if FrmOrdenarEsp.ShowModal = mrOk then
    TreeView1.OnChange(Sender, Treeview1.Selected);
  FrmOrdenarEsp.Free;
end;

procedure TFrmEspecificaciones.Panel4Resize(Sender: TObject);
begin
  if lstDetalles.Visible then
  begin
    ListView1.Height := Round(Panel4.Height * 0.65);
    ListView1.rowselect := true;
    splitter2.Top := ListView1.Height + 1;
    splitter2.Refresh;
    lstDetalles.Align := alClient;
  end;
end;

procedure TFrmEspecificaciones.PopupMenu1Popup(Sender: TObject);
Var
  tmp: TListView;
  cdTmp: TClientDataSet;
begin
  // Checar cual listview esta seleccionado
  if TListView(Sender).Name = 'ListView1' then
  begin
    tmp := ListView1;
    cdTmp := cdEspecDetalleSG;
  end
  else
  begin
    tmp := lstDetalles;
    cdTmp := cdEspecDetalle;
  end;

  if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
  begin
    agregar1.Enabled := false;
    editar1.Enabled :=false;
    eliminar1.Enabled :=false;
    n1.Enabled :=false;
    ordenar1.Enabled :=false;
  end
  else
  begin
    if cdTmp.RecordCount =0  then
    begin
       agregar1.Enabled := True;
       editar1.Enabled :=false;
       eliminar1.Enabled :=false;
       n1.Enabled :=false;
       ordenar1.Enabled :=false;
    end
    else
    begin
      if cdTmp.RecordCount=1 then
      begin
        agregar1.Enabled := True;
        editar1.Enabled :=True;
        eliminar1.Enabled :=True;
        n1.Enabled :=false;
       ordenar1.Enabled :=false;
      end
      else
      begin
        agregar1.Enabled := True;
        editar1.Enabled :=True;
        eliminar1.Enabled :=True;
        n1.Enabled :=True;
        ordenar1.Enabled :=true;
      end;
    end;
  end;
end;

procedure TFrmEspecificaciones.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
var
  DatosPtr: PDatos;
  Nodo: TTreeNode;
begin
  // Identificar el nivel en el cual se encuentra la selección
  ListView1.Items.Clear;
  if Node.Level = 2 then
  begin
    lstDetalles.Visible := true;
    ListView1.Align := alTop;
    ListView1.Height := Round(Panel4.Height * 0.65);
    ListView1.rowselect := true;
    splitter2.Top := ListView1.Height + 1;
    splitter2.Refresh;
    lstDetalles.Align := alClient;
  end
  else
  begin
    lstDetalles.Visible := false;
    ListView1.Align := alClient;
    ListView1.RowSelect := false;
  end;


  // Modificar el hint para que coincida con el nivel que se está procesando
  case Node.Level of
    0: begin
      //........................................................................
      Deshabilitardetalles;
      //........................................................................
      Btn_Add.Hint := 'Agregar nuevo elemento de Área';
      Btn_Edit.Hint := 'Editar Área: ' + Node.Text;
      Btn_Del.Hint := 'Eliminar Área: ' + Node.Text;
      ListView1.ViewStyle := vsIcon;
      cdAreas.Locate('iddisciplina',PDatos(TreeView1.Selected.Data).Id,[]);
    end;
    1: begin
      //........................................................................
      Deshabilitardetalles;
      //........................................................................
      Btn_Add.Hint := 'Agregar nuevo elemento de Grupo para el Área: ' + Node.Parent.Text;
      Btn_Edit.Hint := 'Editar Grupo: ' + Node.Text;
      Btn_Del.Hint := 'Eliminar Grupo: ' + Node.Text;
      ListView1.ViewStyle := vsIcon;
      cdAreas.Locate('iddisciplina',PDatos(TreeView1.Selected.parent.Data).Id,[]);
      cdGrupos.Locate('idgrupo',PDatos(TreeView1.Selected.Data).Id,[]);
    end;
    2: begin
      //........................................................................
      Habilitardetalles;
      //........................................................................
      Btn_Add.Hint := 'Agregar nuevo elemento de SubGrupo para el Grupo: ' + Node.Parent.Text;
      Btn_Edit.Hint := 'Editar Subgrupo: ' + Node.Text;
      Btn_Del.Hint := 'Eliminar Subgrupo: ' + Node.Text;
      ListView1.ViewStyle := vsReport;
      cdAreas.Locate('iddisciplina',PDatos(TreeView1.Selected.parent.parent.Data).Id,[]);
      cdGrupos.Locate('idgrupo',PDatos(TreeView1.Selected.parent.Data).Id,[]);
      cdSubGrupos.Locate('idsubgrupo',PDatos(TreeView1.Selected.Data).Id,[]);
    end;
  end;

  if Node.Level <= 1 then
  begin
    // Mostrar los objetos correspondientes a los Grupos
    Nodo := Node.getFirstChild;
    while Nodo <> Nil do
    begin
      New(DatosPtr);
      DatosPtr := Nodo.Data;

      ListView1.AddItem(Nodo.Text, TObject(DatosPtr));
      ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := Node.Level + 2;

      Nodo := Node.GetNextChild(Nodo);
    end;
  end;

  if Node.Level = 2 then
  begin
    // Proceder con los nodos de los Detalles de SubGrupos
    CargarDetalles(PDatos(TreeView1.Selected.Data).Id);
  end;
end;

procedure TFrmEspecificaciones.TreeView1Collapsed(Sender: TObject;
  Node: TTreeNode);
begin
  TreeView1.Selected.ImageIndex := 0;
end;

procedure TFrmEspecificaciones.TreeView1DblClick(Sender: TObject);
begin
  if TreeView1.Selected.Count > 0 then
    Btn_Edit.Click;
end;

procedure TFrmEspecificaciones.TreeView1Expanded(Sender: TObject;
  Node: TTreeNode);
begin
  Node.ImageIndex := 1;
end;


procedure TFrmEspecificaciones.CargarDetalles(idSubGrupo: Integer);
var
  DatosPtr: PDatos;
begin
  ListView1.Items.Clear;
  lstDetalles.Items.Clear;

  // Agregar los detalles del subgrupo
  cdEspecDetalleSG.Locate('IdSubGrupo', cdSubGrupos.FieldByname('IdSubGrupo').AsInteger, []);
  while (not cdEspecDetalleSG.eof) and (cdEspecDetalleSG.FieldByName('IdSubGrupo').AsInteger = cdSubGrupos.FieldByname('IdSubGrupo').AsInteger) do
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

procedure TFrmEspecificaciones.cdEspecDetalleSGReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  showmessage(e.Message);
end;

procedure TFrmEspecificaciones.habilitardetalles;
begin
  Btn_AgregarDetalle.Enabled :=true;
  Btn_EditarDetalle.Enabled :=true;
  Btn_EliminarDetalle.Enabled :=true;
end;

procedure TFrmEspecificaciones.Deshabilitardetalles;
begin
  Btn_Agregar.Enabled :=false;
  Btn_EditarDetalle.Enabled :=false;
  Btn_EliminarDetalle.Enabled :=false;
end;

end.
