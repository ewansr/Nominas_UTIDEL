// Esta ventana esta validada por mi: carmen perez.
//fué adaptada para el sistema de madosa.
//por ningun motivo lo implementen en el proyecto offshore.

unit UTFrmEspecificaciones_Madosa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ImgList, DB, DBClient, StdCtrls, AdvToolBar,
  ToolWin, JvExControls, JvXPCore, JvXPButtons, Grids, DBGrids, Menus,
  AdvShapeButton;

type
  PDatos = ^TNDatos;
  TNDatos = Record
    Id: Integer;
    Codigo: String;
  end;

  TFrmEspecificaciones_Madosa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TreeView1: TTreeView;
    ListView1: TListView;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    cdAreas: TClientDataSet;
    cdGrupos: TClientDataSet;
    cdSubGrupos: TClientDataSet;
    cdDetalles: TClientDataSet;
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
    procedure Btn_EditEspecClick(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure AdvToolBarButton9Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure E6liminar1Click(Sender: TObject);
    procedure Agregar1Click(Sender: TObject);
    procedure Ordenar1Click(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEspecificaciones_Madosa: TFrmEspecificaciones_Madosa;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, UInteliDialog, UTFrmDatosDisciplinas, UTFrmDatosGrupos,
  UTFrmDatosSubGrupos, UTFrmespecdetallesubgrupo, UTFrmOrdenarEsp;

procedure TFrmEspecificaciones_Madosa.AdvToolBarButton1Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  Nodo := TreeView1.Selected.getPrevSibling;
  if Assigned(Nodo) then
    Nodo.Selected := True;
end;

procedure TFrmEspecificaciones_Madosa.AdvToolBarButton2Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  Nodo := TreeView1.Selected.getNextSibling;
  if Assigned(Nodo) then
    Nodo.Selected := True;
end;

procedure TFrmEspecificaciones_Madosa.AdvToolBarButton3Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  if (TreeView1.Selected <> Nil) and (TreeView1.Selected.Parent <> Nil) then
  begin
    Nodo := TreeView1.Selected.Parent;
    Nodo.Selected := True;
  end;
end;

procedure TFrmEspecificaciones_Madosa.AdvToolBarButton4Click(Sender: TObject);
var
  Nodo: TTreeNode;
begin
  if TreeView1.Selected.Count > 0 then
  begin
    Nodo := TreeView1.Selected.Item[0];
    Nodo.Selected := True;
  end;
end;

procedure TFrmEspecificaciones_Madosa.AdvToolBarButton9Click(Sender: TObject);
begin
  // Solo activar esto cuando se trate de un nodo de nivel 2
  if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
    Exit;

  // Verificar si se está seleccionando un registro de especificaciones
  if ListView1.SelCount = 0 then
    Exit;

  // Eliminar el detalle
  Try
    // Localizar el registro que se va a editar
    if Not cdDetalles.Locate('IdDetalle', PDatos(ListView1.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');

    if InteliDialog.ShowModal('Eliminar registro de Detalle de Subgrupo',
                              '¿Está seguro que desea eliminar el registro de Detalle: ' + cdDetalles.FieldByName('TituloDetalle').AsString + #10 + #10 +
                              cdDetalles.FieldByName('Descripcion').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      // Marcar el registro con inactivo
      cdDetalles.Edit;
      cdDetalles.FieldByName('Activo').AsString := 'No';
      cdDetalles.Post;
      cdDetalles.ApplyUpdates(-1);

      // Eliminar el nodo del listview
      ListView1.Selected.Destroy;
    end;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_Madosa.Agregar1Click(Sender: TObject);
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
   cddetalles.IndexFieldNames:='IdSubGrupo';
   cddetalles.SetRange([PDatos(TreeView1.Selected.Data).Id], [PDatos(TreeView1.Selected.Data).Id]);
   nroorden:=cddetalles.RecordCount+1;
   cddetalles.CancelRange;
   if Not Assigned(Nodo) then
    raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);
   Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
   FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdDetalles;
   cdDetalles.Append;
   cdDetalles.FieldByName('IdSubGrupo').AsInteger := PDatos(TreeView1.Selected.Data).Id;
   cdDetalles.FieldByName('IdDetalle').AsInteger := 0;
   cdDetalles.FieldByName('noorden').AsInteger := nroorden;
   FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := TreeView1.Selected.Text;
   FrmEspecDetalleSubgrupo.ShowModal;
   if FrmEspecDetalleSubgrupo.ModalResult<>mrcancel then
   begin
    leyenda:=cddetalles.FieldByName('CodigoDetalle').AsString;
    cddetalles.Refresh;
    cddetalles.IndexFieldNames:='CodigoDetalle';
    cddetalles.SetRange([leyenda], [leyenda]);
    New(DatosPtr);
    DatosPtr^.Id := cdDetalles.FieldByName('IdDetalle').AsInteger;
    DatosPtr^.Codigo := cdDetalles.FieldByName('CodigoDetalle').AsString;
    // Crear el objeto de Especificacion
    ListView1.AddItem(cdDetalles.FieldByName('TituloDetalle').AsString, TObject(DatosPtr));
    // Meter los datos agregados al objeto del listview
    ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 4;
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('CodigoDetalle').AsString);
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('Descripcion').AsString);
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('TipoDato').AsString);
    ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('Prefijo').AsString);
   end
   else
    cddetalles.CancelUpdates;
end;

procedure TFrmEspecificaciones_Madosa.Btn_AddEspecClick(Sender: TObject);
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
  // Solo activar esto cuando se trate de un nodo de nivel 2
  if Not TreeView1.SelectionCount = 0 then
    Exit;

  if TreeView1.Selected.Level > 1 then
    raise Exception.Create('No se puede agregar mas niveles.');

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
          FrmDatosGrupos.BtnAddNew.Visible := False;
          FrmDatosGrupos.ShowModal;
          if FrmDatosGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdGrupos.FieldByName('codigogrupo').AsString;
            cdGrupos.Refresh;
            cdGrupos.IndexFieldNames:='codigogrupo';
            cdGrupos.SetRange([Leyenda], [Leyenda]);
            New(DatosPtr);
            DatosPtr^.Id := cdGrupos.FieldByName('idgrupo').AsInteger;
            DatosPtr^.Codigo := cdGrupos.FieldByName('codigogrupo').AsString;
            GrupoNodo := TreeView1.Items.AddChildObject(nodo, cdGrupos.FieldByName('titulogrupo').AsString, DatosPtr);
            GrupoNodo.ImageIndex := 1;
            cdGrupos.CancelRange;
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
          FrmDatosSubgrupos.BtnAddNew.Visible := False;
          FrmDatosSubGrupos.ShowModal;
          if FrmDatosSubGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdSubGrupos.FieldByName('codigosubgrupo').AsString;
            cdSubGrupos.Refresh;
            cdSubGrupos.IndexFieldNames:='codigosubgrupo';
            cdSubGrupos.SetRange([Leyenda], [Leyenda]);
            New(DatosPtr);
            DatosPtr^.Id := cdSubGrupos.FieldByName('IdSubGrupo').AsInteger;
            DatosPtr^.Codigo := cdSubGrupos.FieldByName('codigosubgrupo').AsString;
            SubGrupoNodo := TreeView1.Items.AddChildObject(nodo, cdSubGrupos.FieldByName('titulosubgrupo').AsString, DatosPtr);
            SubGrupoNodo.ImageIndex := 1;
            cdSubGrupos.CancelRange;
          end
          else
          cdsubgrupos.CancelUpdates;
    end;
    2:begin
      nroorden:=0;
      Nodo := TreeView1.Selected;
      cddetalles.IndexFieldNames:='IdSubGrupo';
      cddetalles.SetRange([PDatos(TreeView1.Selected.Data).Id], [PDatos(TreeView1.Selected.Data).Id]);
      nroorden:=cddetalles.RecordCount+1;
      cddetalles.CancelRange;
      if Not Assigned(Nodo) then
      raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Grupo: ' + TreeView1.Selected.Text);
      Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
      FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdDetalles;
      cdDetalles.Append;
      cdDetalles.FieldByName('IdSubGrupo').AsInteger := PDatos(TreeView1.Selected.Data).Id;
      cdDetalles.FieldByName('IdDetalle').AsInteger := 0;
      cdDetalles.FieldByName('noorden').AsInteger := nroorden;
      FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := TreeView1.Selected.Text;
      FrmEspecDetalleSubgrupo.ShowModal;
      if FrmEspecDetalleSubgrupo.ModalResult<>mrcancel then
      begin
        leyenda:=cddetalles.FieldByName('CodigoDetalle').AsString;
        cddetalles.Refresh;
        cddetalles.IndexFieldNames:='CodigoDetalle';
        cddetalles.SetRange([leyenda], [leyenda]);
        New(DatosPtr);
        DatosPtr^.Id := cdDetalles.FieldByName('IdDetalle').AsInteger;
        DatosPtr^.Codigo := cdDetalles.FieldByName('CodigoDetalle').AsString;
        // Crear el objeto de Especificacion
        ListView1.AddItem(cdDetalles.FieldByName('TituloDetalle').AsString, TObject(DatosPtr));

        // Meter los datos agregados al objeto del listview
        ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 4;
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('CodigoDetalle').AsString);
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('Descripcion').AsString);
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('TipoDato').AsString);
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('Prefijo').AsString);
      end
      else
        cddetalles.CancelUpdates;
      end;
  end;

  // Editar el detalle
  Try


  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_Madosa.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmEspecificaciones_Madosa.Btn_AddClick(Sender: TObject);
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
          Application.CreateForm(TFrmDatosDisciplinas, FrmDatosDisciplinas);
          FrmDatosDisciplinas.dsDatos.DataSet := cdAreas;
          FrmDatosDisciplinas.Caption := 'Agregar nueva Área de artículos';
          cdAreas.Append;
          cdAreas.FieldByName('IdDisciplina').AsInteger := 0;
          FrmDatosDisciplinas.BtnAddNew.Visible := False;
          FrmDatosDisciplinas.ShowModal;

          //Agregar Nuevo Nodo
          FrmDatosDisciplinas.BtnAddNew.Visible := False;
          if FrmDatosDisciplinas.ModalResult<>mrcancel then
          begin
            Leyenda :=cdAreas.FieldByName('CodigoDisciplina').AsString;
            cdAreas.Refresh;
            cdareas.IndexFieldNames:='CodigoDisciplina';
            cdareas.SetRange([Leyenda], [Leyenda]);
            New(DatosPtr);
            DatosPtr^.Id := cdAreas.FieldByName('IdDisciplina').AsInteger;
            DatosPtr^.Codigo := cdAreas.FieldByName('CodigoDisciplina').AsString;
            GrupoNodo := TreeView1.Items.AddChildObject(Nil, cdAreas.FieldByName('titulodisciplina').AsString, DatosPtr);
            GrupoNodo.ImageIndex := 1;
            cdareas.CancelRange;
          end
          else
            cdareas.CancelUpdates;
        end;
        1: begin
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
          FrmDatosGrupos.BtnAddNew.Visible := False;
          if FrmDatosGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdGrupos.FieldByName('codigogrupo').AsString;
            cdGrupos.Refresh;
            cdGrupos.IndexFieldNames:='codigogrupo';
            cdGrupos.SetRange([Leyenda], [Leyenda]);
              for i := 1 to treeview1.Items.Count-1 do
              begin
                if (treeview1.Items[i].Level=0) and (Pdatos(treeview1.Items[i].Data).Id= cdGrupos.FieldByName('IdDisciplina').AsInteger) then
                begin
                  New(DatosPtr);
                  DatosPtr^.Id := cdGrupos.FieldByName('idgrupo').AsInteger;
                  DatosPtr^.Codigo := cdGrupos.FieldByName('codigogrupo').AsString;
                  GrupoNodo := TreeView1.Items.AddChildObject(treeview1.Items[i], cdGrupos.FieldByName('titulogrupo').AsString, DatosPtr);
                  GrupoNodo.ImageIndex := 1;
                  cdGrupos.CancelRange;
                end;
              end;
          end
          else
          cdgrupos.CancelUpdates;
        end;

        2: begin  // ese mero es el que hay que revizar, sale? yasta
          // Localizar el grupo al cual corresponde el nuevo subgrupo
          Nodo := TreeView1.Selected.Parent;
          nroorden:=0;
        //  Nodo := TreeView1.Selected;
          cddetalles.IndexFieldNames:='IdSubGrupo';
          cddetalles.SetRange([PDatos(TreeView1.Selected.Data).Id], [PDatos(TreeView1.Selected.Data).Id]);
          nroorden:=cddetalles.RecordCount+1;
          cddetalles.CancelRange;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Subgrupo: ' + TreeView1.Selected.Text);

          // Agregar nuevo SubGrupo
          Application.CreateForm(TFrmDatosSubGrupos, FrmDatosSubGrupos);
          FrmDatosSubGrupos.dsDatos.DataSet := cdSubGrupos;
          FrmDatosSubGrupos.Caption := 'Agregar nuevo Subgrupo para el Grupo: ' + Nodo.Text;
          cdSubGrupos.Cancel;
          cdSubGrupos.Append;
          cdSubGrupos.FieldByName('IdGrupo').AsInteger := PDatos(Nodo.Data).Id;
          cdSubGrupos.FieldByName('IdSubGrupo').AsInteger := 0;
//          cdDetalles.FieldByName('noorden').AsInteger := nroorden;
//          FrmDatosSubGrupos.Caption := 'Agregar Subgrupo: ' + TreeView1.Selected.Text + ' de Grupo: ' + Nodo.Text;
          FrmDatosSubGrupos.BtnFindGrupo.Visible := False;
          FrmDatosSubGrupos.EditTituloGrupo.Enabled :=false;
          FrmDatosSubGrupos.EditCodigoGrupo.Enabled :=false;

          FrmDatosSubgrupos.BtnAddNew.Visible := False;
          FrmDatosSubGrupos.ShowModal;
          if FrmDatosSubGrupos.ModalResult<>mrcancel then
          begin
            Leyenda :=cdSubGrupos.FieldByName('codigosubgrupo').AsString;
            cdSubGrupos.Refresh;
            cdSubGrupos.IndexFieldNames:='codigosubgrupo';
            cdSubGrupos.SetRange([Leyenda], [Leyenda]);
            for i := 1 to treeview1.Items.Count-1 do
              begin
                if (treeview1.Items[i].Level=1) and (Pdatos(treeview1.Items[i].Data).Id= cdSubGrupos.FieldByName('IdGrupo').AsInteger) then
                begin
                  New(DatosPtr);
                  DatosPtr^.Id := cdSubGrupos.FieldByName('IdSubGrupo').AsInteger;
                  DatosPtr^.Codigo := cdSubGrupos.FieldByName('codigosubgrupo').AsString;
                  SubGrupoNodo := TreeView1.Items.AddChildObject(treeview1.Items[i], cdSubGrupos.FieldByName('titulosubgrupo').AsString, DatosPtr);
                  SubGrupoNodo.ImageIndex := 1;
                  cdSubGrupos.CancelRange;
                end
              end;
          end
          else
          cdsubgrupos.CancelUpdates;
        end;
      end;
    Finally
      FrmDatosDisciplinas.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('No se ha podido crear un nuevo registro', e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_Madosa.Btn_DelClick(Sender: TObject);
Const
  Opcion: Array[0..2] of String = ('Área', 'Grupo', 'Subgrupo');
var
  Nodo: TTreeNode;
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
           // Marcar el registro de Disciplina (Área)
           cdAreas.Edit;
           cdAreas.FieldByName('activo').AsString := 'no';
           cdAreas.Post;
           cdAreas.ApplyUpdates(-1);

           // Eliminar el nodo seleccionado
           TreeView1.Selected.Destroy;
         end;
      1: if cdGrupos.Locate('IdGrupo', PDatos(TreeView1.Selected.Data).Id, []) then
         begin
           // Marcar el registro de Grupo
           cdGrupos.Edit;
           cdGrupos.FieldByName('Activo').AsString := 'No';
           cdGrupos.Post;
           cdGrupos.ApplyUpdates(-1);

           // Eliminar el nodo seleccionado
           TreeView1.Selected.Destroy;
         end;
      2: if cdSubgrupos.Locate('IdSubGrupo', PDatos(TreeView1.Selected.Data).Id, []) then
         begin
           // Marcar el registro de Subgrupo
           cdSubGrupos.Edit;
           cdSubGrupos.FieldByName('Activo').AsString := 'no';
           cdSubGrupos.Post;
           cdSubGrupos.ApplyUpdates(-1);

           // Eliminar el nodo seleccionado
           TreeView1.Selected.Destroy;
         end;
    end;

  end;
end;

procedure TFrmEspecificaciones_Madosa.Btn_EditClick(Sender: TObject);
var
  Nodo: TTreeNode;
  Leyenda : Integer;
begin
  if TreeView1.SelectionCount = 0 then
    Exit;   // No continiuar si no hay nada seleccionado

  // Editar un elemento
  Try
    Try
      // Verificar en que nivel se está generando
      case TreeView1.Selected.Level of
        0: begin
          // Editar disciplina (Área)
          if Not cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Data).Id, []) then
            raise InteligentException.Create('No se ha podido editar el Área: ' + TreeView1.Selected.Text);
          Leyenda:=PDatos(TreeView1.Selected.Data).Id;
          Application.CreateForm(TFrmDatosDisciplinas, FrmDatosDisciplinas);
          FrmDatosDisciplinas.dsDatos.DataSet := cdAreas;
          FrmDatosDisciplinas.Caption := 'Editar Área de artículos: ' + TreeView1.Selected.Text;
          cdAreas.Edit;
          FrmDatosDisciplinas.BtnAddNew.Visible := False;
          FrmDatosDisciplinas.ShowModal;
          if FrmDatosDisciplinas.ModalResult<>mrcancel then
          begin
            cdAreas.Refresh;
            cdAreas.IndexFieldNames:= 'IdDisciplina';
            cdareas.SetRange([Leyenda], [Leyenda]);
            treeview1.Selected.Text := cdAreas.FieldByName('titulodisciplina').AsString;
            cdareas.CancelRange;
          end
          else
          cdareas.CancelUpdates;
        end;
        1: begin
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
          FrmDatosGrupos.DBEditCodigo.Enabled := False;
          FrmDatosGrupos.BtnFindDisciplina.Visible := False;
          cdGrupos.Edit;
          FrmDatosGrupos.BtnAddNew.Visible := False;
          FrmDatosGrupos.ShowModal;
            if FrmDatosGrupos.ModalResult<>mrcancel then
            begin
              cdGrupos.Refresh;
              cdGrupos.IndexFieldNames:='IdGrupo';
              cdGrupos.SetRange([Leyenda], [Leyenda]);
              treeview1.Selected.text := cdGrupos.FieldByName('titulogrupo').AsString;
              cdGrupos.CancelRange;
            end
            else
            cdgrupos.CancelUpdates;
        end;
        2: begin
          // Localizar el grupo al cual corresponde el nuevo subgrupo
          Nodo := TreeView1.Selected.Parent;
          if Not Assigned(Nodo) then
            raise InteligentException.Create('No se ha podido acceder a los datos del nodo principal del Subgrupo: ' + TreeView1.Selected.Text);

          // Editar SubGrupo
          if Not cdSubGrupos.Locate('IdSubGrupo', PDatos(TreeView1.Selected.Data).Id, []) then
            raise InteligentException.Create('No se ha podido editar el Subgrupo: ' + TreeView1.Selected.Text);
          Leyenda:=PDatos(TreeView1.Selected.Data).Id;
          Application.CreateForm(TFrmDatosSubGrupos, FrmDatosSubGrupos);
          FrmDatosSubGrupos.dsDatos.DataSet := cdSubGrupos;
          FrmDatosSubGrupos.Caption := 'Editar Subgrupo: ' + TreeView1.Selected.Text + ' de Grupo: ' + Nodo.Text;
          FrmDatosSubGrupos.EditCodigoGrupo.Enabled := False;
          FrmDatosSubGrupos.BtnFindGrupo.Visible := False;
          FrmDatosSubGrupos.EditTituloGrupo.Enabled := False;
          cdSubGrupos.Edit;
          FrmDatosSubgrupos.BtnAddNew.Visible := False;
          FrmDatosSubGrupos.ShowModal;
            if FrmDatosSubGrupos.ModalResult<>mrcancel then
            begin
              cdSubGrupos.Refresh;
              cdSubGrupos.IndexFieldNames:= 'IdSubGrupo';
              cdSubGrupos.SetRange([Leyenda], [Leyenda]);
              treeview1.Selected.text := cdSubGrupos.FieldByName('titulosubgrupo').AsString;
              cdSubGrupos.CancelRange;
            end
            else
            cdsubgrupos.CancelUpdates;
        end;
      end;
    Finally
      FrmDatosDisciplinas.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('No se ha podido crear un nuevo registro', e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_Madosa.Btn_EditEspecClick(Sender: TObject);
var
noitem: Tlistitem;
leyenda : integer;
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
    if Not cdDetalles.Locate('IdDetalle', PDatos(ListView1.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');
    noitem:=listview1.Selected;
    leyenda := PDatos(ListView1.Selected.Data).Id;
    Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
    FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdDetalles;
    cdDetalles.Edit;
    FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := TreeView1.Selected.Text;
    FrmEspecDetalleSubgrupo.DBEcodigo.Enabled := False;
    FrmEspecDetalleSubgrupo.ShowModal;
    if FrmEspecDetalleSubgrupo.ModalResult<>mrcancel then
    begin
       cdDetalles.IndexFieldNames:='IdDetalle';
       cdDetalles.SetRange([leyenda], [leyenda]);
       listview1.Items[noitem.Index].SubItems[0]:=cdDetalles.FieldByName('TituloDetalle').AsString;
       listview1.Items[noitem.Index].SubItems[1]:=cdDetalles.FieldByName('Descripcion').AsString;
       listview1.Items[noitem.Index].SubItems[2]:=cdDetalles.FieldByName('TipoDato').AsString;
       listview1.Items[noitem.Index].SubItems[3]:=cdDetalles.FieldByName('Prefijo').AsString;
    end
    else
    cddetalles.CancelUpdates;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_Madosa.E6liminar1Click(Sender: TObject);
begin
 // Solo activar esto cuando se trate de un nodo de nivel 2
  if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
    Exit;

  // Verificar si se está seleccionando un registro de especificaciones
  if ListView1.SelCount = 0 then
    Exit;

  // Eliminar el detalle
  Try
    // Localizar el registro que se va a editar
    if Not cdDetalles.Locate('IdDetalle', PDatos(ListView1.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');

    if InteliDialog.ShowModal('Eliminar registro de Detalle de Subgrupo',
                              '¿Está seguro que desea eliminar el registro de Detalle: ' + cdDetalles.FieldByName('TituloDetalle').AsString + #10 + #10 +
                              cdDetalles.FieldByName('Descripcion').AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      // Marcar el registro con inactivo
      cdDetalles.Edit;
      cdDetalles.FieldByName('Activo').AsString := 'No';
      cdDetalles.Post;
      cdDetalles.ApplyUpdates(-1);

      // Eliminar el nodo del listview
      ListView1.Selected.Destroy;
    end;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_Madosa.Editar1Click(Sender: TObject);
var
  noitem: Tlistitem;
  leyenda : integer;
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
    if Not cdDetalles.Locate('IdDetalle', PDatos(ListView1.Selected.Data).Id, []) then
      raise InteligentException.Create('No ha sido posible editar el registro de Especificaciones de Subgrupo');
    noitem:=listview1.Selected;
    leyenda := PDatos(ListView1.Selected.Data).Id;
    Application.CreateForm(TFrmEspecDetalleSubgrupo, FrmEspecDetalleSubgrupo);
    FrmEspecDetalleSubgrupo.dsEspecDetalleSubGrupo.DataSet := cdDetalles;
    cdDetalles.Edit;
    FrmEspecDetalleSubgrupo.editdetallesubgrupo.Text := TreeView1.Selected.Text;
    FrmEspecDetalleSubgrupo.DBEcodigo.Enabled := False;
    FrmEspecDetalleSubgrupo.ShowModal;
    if FrmEspecDetalleSubgrupo.ModalResult<>mrcancel then
    begin
       cdDetalles.IndexFieldNames:='IdDetalle';
       cdDetalles.SetRange([leyenda], [leyenda]);
       listview1.Items[noitem.Index].SubItems[0]:=cdDetalles.FieldByName('TituloDetalle').AsString;
       listview1.Items[noitem.Index].SubItems[1]:=cdDetalles.FieldByName('Descripcion').AsString;
       listview1.Items[noitem.Index].SubItems[2]:=cdDetalles.FieldByName('TipoDato').AsString;
       listview1.Items[noitem.Index].SubItems[3]:=cdDetalles.FieldByName('Prefijo').AsString;
    end
    else
    cddetalles.CancelUpdates;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_Madosa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Eliminar los conjuntos creados
  EliminarConjunto([cdAreas.ProviderName, cdgrupos.ProviderName, cdsubgrupos.ProviderName, cddetalles.ProviderName]);
  LiberarVentana(Self,Action);
end;

procedure TFrmEspecificaciones_Madosa.FormShow(Sender: TObject);
var
  Leyenda: String;
  DatosPtr: PDatos;
  AreaNodo,
  GrupoNodo,
  SubGrupoNodo,
  DetalleNodo: TTreeNode;
begin
  Try
    //precarga colores
    ClientModule1.ComponentColor(Self);

    // Leer los datos de las áreas
    if not CrearConjunto(cdAreas, 'nuc_disciplina', ccUpdate) then
      raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Áreas');

    cdAreas.Open;

    // Acceder a los datos de los Grupos
    if not CrearConjunto(cdGrupos, 'alm_grupo', ccUpdate) then
      raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Grupos de Área');
    //if Not CargarDatosFiltrados(cdGrupos, 'IdDisciplina', [-9]) then
      //raise InteligentConnection.Create('No ha sido posible recuperar la información filtrada para la tabla de Grupos de Áreas, es probable que los parámetros pasados no sean correctos (IdDisciplina), informe de esto al administrador del sistema');
    cdGrupos.Open;

    // Acceder a los datos de los SubGrupos
    if not CrearConjunto(cdSubGrupos, 'alm_subgrupo', ccUpdate) then
      raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de SubGrupos de Área');
    //if Not CargarDatosFiltrados(cdSubGrupos, 'IdGrupo', [-9]) then
      //raise InteligentConnection.Create('No ha sido posible recuperar la información filtrada para la tabla de Subgrupos de Áreas, es probable que los parámetros pasados no sean correctos (IdGrupo), Informe de esto al administrador del sistema');
    cdSubGrupos.Open;

    // Acceder a los datos de los Detalles de SubGrupo
    if not CrearConjunto(cdDetalles, 'alm_especdetallesubgrupo', ccUpdate) then
      raise InteligentConnection.Create('No ha sido posible obtener información correspondiente a la tabla de Detalles de SubGrupos');
    //if Not CargarDatosFiltrados(cdDetalles, 'IdSubGrupo', [-9]) then
      //raise InteligentConnection.Create('No ha sido posible recuperar la información filtrada para la tabla de Detalle de SubGrupos, es probable que los parámetros pasados no sean correctos (IdSubGrupo), Informe de esto al administrador del sistema');
    cdDetalles.Open;

    while Not cdAreas.eof do
    begin
      Leyenda := cdAreas.FieldByName('TituloDisciplina').AsString;
      New(DatosPtr);
      DatosPtr^.Id := cdAreas.FieldByName('IdDisciplina').AsInteger;
      DatosPtr^.Codigo := cdAreas.FieldByName('CodigoDisciplina').AsString;

      // Crear el nodo de la área
      AreaNodo := TreeView1.Items.AddChildObject(Nil, Leyenda, DatosPtr);
      AreaNodo.ImageIndex := 1;

      // Proceder con los nodos de los grupos (hijos del AreaNodo que acabamos de crear)
      //CargarDatosFiltrados(cdGrupos, 'IdDisciplina', [cdAreas.FieldByName('IdDisciplina').AsInteger]);
      //cdGrupos.Refresh;
      //-------------------------AGREGADO FILTRADOR--------------------------------------------------
       cdGrupos.CancelRange;
       cdGrupos.IndexFieldNames:='iddisciplina';
       cdGrupos.SetRange([cdAreas.FieldByName('iddisciplina').AsInteger], [cdAreas.FieldByName('iddisciplina').AsInteger]);
       cdGrupos.RecordCount;
      //-------------------------FIN AGREGADO FILTRADO-----------------------------------------------
      while Not cdGrupos.Eof do
      begin
        Leyenda := cdGrupos.FieldByName('TituloGrupo').AsString;
        New(DatosPtr);
        DatosPtr^.Id := cdGrupos.FieldByName('IdGrupo').AsInteger;
        DatosPtr^.Codigo := cdGrupos.FieldByName('CodigoGrupo').AsString;

        // Crear el nodo del Grupo de Área
        GrupoNodo := TreeView1.Items.AddChildObject(AreaNodo, Leyenda, DatosPtr);
        GrupoNodo.ImageIndex := 1;

        // Proceder con los nodos de los subgrupos (hijos del GrupoNodo que acabamos de crear)
        //CargarDatosFiltrados(cdSubGrupos, 'IdGrupo', [cdGrupos.FieldByName('IdGrupo').AsInteger]);
        //cdSubGrupos.Refresh;
        //-------------------------AGREGADO FILTRADOR--------------------------------------------------
        cdSubGrupos.CancelRange;
        cdSubGrupos.IndexFieldNames:='IdGrupo';
        cdSubGrupos.SetRange([cdGrupos.FieldByName('IdGrupo').AsInteger], [cdGrupos.FieldByName('IdGrupo').AsInteger]);
        //-------------------------FIN AGREGADO FILTRADO-----------------------------------------------
        while Not cdSubGrupos.Eof do
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

    // Quitar todos los filtros utilizados
    //LimpiarDatosFiltrados(cdGrupos);
    //cdGrupos.Refresh;
    //LimpiarDatosFiltrados(cdSubGrupos);
    //cdSubGrupos.Refresh;
    //-----------------CANCELAR FILTROS--------------------------------------
    cdGrupos.CancelRange;
    cdSubGrupos.CancelRange;
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

procedure TFrmEspecificaciones_Madosa.ListView1DblClick(Sender: TObject);
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

procedure TFrmEspecificaciones_Madosa.Ordenar1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmDatosDisciplinas, FrmDatosDisciplinas);
  FrmOrdenarEsp.dsdetalle.DataSet := cddetalles;
  if FrmOrdenarEsp.ShowModal = mrOk then
    TreeView1.OnChange(Sender, Treeview1.Selected);
end;

procedure TFrmEspecificaciones_Madosa.PopupMenu1Popup(Sender: TObject);
begin
  //ejemplo
  //Agregar1.Enabled := False;
  //Editar1.Enabled := False;
    if (Not TreeView1.SelectionCount <> 0) And (TreeView1.Selected.Level < 2) then
    begin
      agregar1.Enabled := false;
      editar1.Enabled :=false;
      e6liminar1.Enabled :=false;
      n1.Enabled :=false;
      ordenar1.Enabled :=false;
    end
    else
    begin
      if cddetalles.RecordCount =0  then
      begin
         agregar1.Enabled := True;
         editar1.Enabled :=false;
         e6liminar1.Enabled :=false;
         n1.Enabled :=false;
         ordenar1.Enabled :=false;
      end
      else
      begin
        if cddetalles.RecordCount=1 then
        begin
          agregar1.Enabled := True;
          editar1.Enabled :=True;
          e6liminar1.Enabled :=True;
          n1.Enabled :=false;
         ordenar1.Enabled :=false;
        end
        else
        begin
          agregar1.Enabled := True;
          editar1.Enabled :=True;
          e6liminar1.Enabled :=True;
          n1.Enabled :=True;
          ordenar1.Enabled :=true;
        end;
      end;
    end;

end;

procedure TFrmEspecificaciones_Madosa.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
var
  DatosPtr: PDatos;
  Nodo: TTreeNode;
begin
  cddetalles.CancelRange;
  // Identificar el nivel en el cual se encuentra la selección
  ListView1.Items.Clear;


  // Modificar el hint para que coincida con el nivel que se está procesando
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
    //CargarDatosFiltrados(cdDetalles, 'IdSubGrupo', [PDatos(Node.Data).Id]);
    //cdDetalles.Refresh;
    //------------------------AGREGAR FILTRADO----------------------------------
    cdDetalles.IndexFieldNames:='idsubgrupo;noorden';
    cddetalles.SetRange([PDatos(Node.Data).Id], [PDatos(Node.Data).Id]);
    while not cdDetalles.Eof do
    begin
      New(DatosPtr);
      DatosPtr^.Id := cdDetalles.FieldByName('IdDetalle').AsInteger;
      DatosPtr^.Codigo := cdDetalles.FieldByName('CodigoDetalle').AsString;

      // Crear el objeto de Especificacion
      ListView1.AddItem(cdDetalles.FieldByName('CodigoDetalle').AsString, TObject(DatosPtr));

      // Meter los datos agregados al objeto del listview
      ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 4;
      ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('TituloDetalle').AsString);
      ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('Descripcion').AsString);
      ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('TipoDato').AsString);
      ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdDetalles.FieldByName('Prefijo').AsString);

      cdDetalles.Next;
    end;
  end;
end;

procedure TFrmEspecificaciones_Madosa.TreeView1Collapsed(Sender: TObject;
  Node: TTreeNode);
begin
  TreeView1.Selected.ImageIndex := 0;
end;

procedure TFrmEspecificaciones_Madosa.TreeView1DblClick(Sender: TObject);
begin
  if (TreeView1.Selected.Level >= 0) and (TreeView1.Items.Count > 0) then
    Btn_Edit.Click;
end;

procedure TFrmEspecificaciones_Madosa.TreeView1Expanded(Sender: TObject;
  Node: TTreeNode);
begin
  Node.ImageIndex := 1;
end;

end.
