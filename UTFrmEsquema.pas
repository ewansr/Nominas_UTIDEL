unit UTFrmEsquema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DBCtrls, DB, DBClient, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, StdCtrls, Buttons, NxDBColumns,
  NxColumns, Menus, JvDatePickerEdit, pngimage, jpeg, UIntelidialog,
  AdvShapeButton;

type
  TFrmEsquema = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    LibroPasos: TPageControl;
    pagina1: TTabSheet;
    pagina2: TTabSheet;
    Panel5: TPanel;
    Panel8: TPanel;
    MemoPaso: TMemo;
    cdNiveles: TClientDataSet;
    dsNiveles: TDataSource;
    PopupNiveles: TPopupMenu;
    Agregar1: TMenuItem;
    Editar1: TMenuItem;
    Eliminar1: TMenuItem;
    TreeViewNiveles: TTreeView;
    BtnBack: TBitBtn;
    BtnNext: TBitBtn;
    pagina3: TTabSheet;
    paginafin: TTabSheet;
    Label1: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    cdOrganizacion: TClientDataSet;
    DsOrganizacion: TDataSource;
    PanelBarra: TPanel;
    Panel10: TPanel;
    BtnAdd: TBitBtn;
    BtnEdit: TBitBtn;
    BtnRefresh: TBitBtn;
    BtnDelete: TBitBtn;
    Panel11: TPanel;
    dsNivelespred: TDataSource;
    Gridnivelpred: TNextDBGrid;
    NxDBCheckBoxColumn1: TNxDBCheckBoxColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    Image1: TImage;
    ProgressBar: TProgressBar;
    Panel12: TPanel;
    cdNivelespred: TClientDataSet;
    Panel13: TPanel;
    Image2: TImage;
    AdvShapeButton1: TAdvShapeButton;
    lblFinalizacion: TLabel;
    procedure CargaPagina1;
    procedure CargaPagina2;
    procedure GuardaPagina2;
    procedure CargaPagina3;
    procedure CargaPagina4;
    procedure FormShow(Sender: TObject);
    procedure LibroPasosChange(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Agregar1Click(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure BtnBackClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure TreeViewNivelesCollapsed(Sender: TObject; Node: TTreeNode);
    procedure TreeViewNivelesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeViewNivelesDblClick(Sender: TObject);
    procedure GridnivelpredCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridnivelpredCellClick(Sender: TObject; ACol, ARow: Integer);
  private
    ProviderName, ProviderNameUpt: String;
    procedure CargarArbol;
    procedure Refrescar;
    procedure Activar;
    procedure Desactivar;
    { Private declarations }
  public
    { Public declarations }
    Cancelado: Boolean;
  end;

var
  FrmEsquema: TFrmEsquema;
  //pagina 1
  valoresId: Tstringlist;
  nodoactual: TTreeNode;

  //pagina 2
  Principal: TScrollBox;
  Grupo: TGroupbox;
  Campo1, campo2: Tedit;
  Fecha: TJvDatePickerEdit;
  Etiqueta, EtiquetaNombre, EtiquetaFecha: TLabel;

  ObjetosCreados, DatosGuardados, EditarNiveles: Boolean;
implementation

Uses
  ClientModuleUnit1, UTfrmDatosORganigrama;

{$R *.dfm}

 {$REGION 'Paginas'}
procedure TFrmEsquema.CargaPagina1;
begin
  memopaso.Text :=
  'En este paso, usted '+
  'puede crear su nivel '+
  'organizacional, para  '+
  'diseñar              '+
  'el esquema de trabajo '+
  'a usar por el sistema. '+
  'ejemplo:               '+
  ' Organizacion >       '+
  'Empresa > Contrato >  '+
  'Ot > Folio.           '+
  'Hacer click derecho   '+
  'sobre la superficie principal '+
  'para empezar a hacer su  '+
  'estructura.       ';
  cdNiveles.Close;
  CrearConjunto(cdNiveles, cnivelorganizacion, providername, ccCatalog);
  cdNiveles.Open;
  Refrescar;
end;

procedure TFrmEsquema.CargaPagina2;
var
  iteraciones, i, topactual: Integer;
begin
  memopaso.Text :=
  'En este paso, usted debe '+
  'ingresar los datos principales '+
  'del esquema creado anteriormente, '+
  'estos datos seran requeridos al iniciar '+
  'la aplicación.';

  if (objetoscreados = True) and (EditarNiveles = False)then
    exit;
  if (objetoscreados = True) then
    Principal.Free;
  i := 0;
  topactual := 10;
  iteraciones := cdNiveles.RecordCount;
  cdNiveles.First;
  Principal := TScrollBox.Create(self);
  with Principal do
  begin
     Left := 10;
     Top :=  10 ;
     Width := 800 ;
     Height := 57;
     align := alClient;
     Parent := Panel6;
     name := 'panelprinc';
     caption := '';
  end;
  while not cdNiveles.Eof do
  begin
    //  creando grupo
    grupo := TGroupBox.Create(self);
    with grupo do
    begin
       Left := 10;
       Top := topactual ;
       Width := 650 ;
       Height := 57;
       Parent := Principal;
       name := 'grupos'+ cdNiveles.FieldByName('titulonivel').AsString;
       caption := cdNiveles.FieldByName('titulonivel').AsString;
    end;

    Etiqueta := TLabel.Create(self);
    with Etiqueta do
    begin
       Left := 3;
       Top := 12 ;
       Width := 40 ;
       Height := 13 ;
       Caption := 'Código';
       Parent := grupo;
       visible := True;
       name := 'etiquetas' + cdNiveles.FieldByName('titulonivel').AsString;
    end;

    Campo1 := Tedit.Create(self);
    with Campo1 do
    begin
       Left := 3;
       Top := 31 ;
       Width := 200 ;
       Height := 21 ;
       Parent := grupo;
       visible := True;
       name := 'Editcodigo' + cdNiveles.FieldByName('idnivelorganizacion').AsString;
       Text := '';
       hint := 'Editcodigo' + cdNiveles.FieldByName('idnivelorganizacion').AsString;
       showhint := true;
    end;

    EtiquetaNombre := TLabel.Create(self);
    with EtiquetaNombre do
    begin
       Left := 250;
       Top := 12 ;
       Width := 40 ;
       Height := 13 ;
       Caption := 'Titulo';
       Parent := grupo;
       visible := True;
       name := 'etiquetasNombre' + cdNiveles.FieldByName('titulonivel').AsString;
    end;

    Campo2 := Tedit.Create(self);
    with Campo2 do
    begin
       Left := 250;
       Top := 31 ;
       Width := 200 ;
       Height := 21 ;
       Parent := grupo;
       visible := True;
       name := 'EditNombre' + cdNiveles.FieldByName('idnivelorganizacion').AsString;
       Text := '';
       hint := 'EditNombre' + cdNiveles.FieldByName('idnivelorganizacion').AsString;
              showhint := true;
    end;

    EtiquetaFecha := TLabel.Create(self);
    with EtiquetaFecha do
    begin
       Left := 500;
       Top := 12 ;
       Width := 40 ;
       Height := 13 ;
       Caption := 'Fecha';
       Parent := grupo;
       visible := True;
       name := 'etiquetasFecha' + cdNiveles.FieldByName('titulonivel').AsString;
    end;

    Fecha := TJvDatePickerEdit.create(self);
    with Fecha do
    begin
       Left := 500;
       Top := 31 ;
       Width := 100 ;
       Height := 21 ;
       Parent := grupo;
       visible := True;
       name := 'Datefecha' + cdNiveles.FieldByName('idnivelorganizacion').AsString;
       date := Now;
    end;

    topactual := topactual + 60;
    cdNiveles.Next;
    //fin de creado de componentes
  end;
  objetoscreados := True;
  EditarNiveles := False;
end;

procedure TFrmEsquema.cargaPagina3;
begin
  memopaso.Text :=
  'En este paso, usted debe '+
  'seleccionar el último nivel '+
  'a solicitar al usuario para '+
  'acceder al sistema';
  cdNivelesPred.Close;
  CrearConjunto(cdNivelesPred, cnivelorganizacion, providername, ccCatalog);
  cdNivelesPred.Open;
  cdNivelesPred.Refresh;
end;

procedure TFrmEsquema.CargaPagina4;
begin
  memopaso.Text :=
  'Personalización realizada '+
  'con éxito. '+
  '                 '+
  'ya puede empezar a usar '+
  'el sistema';
end;

 {$ENDREGION}

 {$REGION 'Eventos'}
procedure TFrmEsquema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(providerName);
  EliminarConjunto(providerNameUpt);
  LiberarVentana(Self, Action);
end;

procedure TFrmEsquema.FormShow(Sender: TObject);
var i: integer;
begin
  ClientModule1.ComponentColor(Self);
  Cancelado := True;
  DatosGuardados := False;
  ObjetosCreados := False;
  EditarNiveles := False;
  ClientModule1.RastrearGrids(Self);
  cargapagina1;
  libropasos.TabIndex := 0;
  i:=1;
  while i < libropasos.PageCount do
  begin
    libropasos.Pages[i].TabVisible := false;
    inc(i);
  end;
  progressbar.Min := 0;
  progressbar.Max := 100;
  progressbar.Position := 25;
end;

procedure TFrmEsquema.GridnivelpredCellClick(Sender: TObject; ACol,
  ARow: Integer);
var i, idselected: integer;
begin
  Try
    idselected := StrToInt(GridNivelpred.CellValue[1,GridNivelpred.SelectedRow]);
    if GridNivelpred.SelectedColumn = 0 then
    begin
      if Gridnivelpred.SelectedRow < Gridnivelpred.RowCount - 2 then
        raise Exception.Create('el nivel predeterminado deberá ser el ultimo o penultimo.');

     cdNivelesPred.First;
     i := 0;
     while not cdNivelesPred.Eof do
     begin
       if cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger = idselected then
         activar
       else
         desactivar;
       cdNivelesPred.Next;
     end;
    end;
    cdNivelesPred.Refresh;
  Except
    on e: Exception do
      InteliDialog.ShowModal('Error al seleccionar nivel predeterminado',e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEsquema.GridnivelpredCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var i, idselected: integer;
begin
  Try
    idselected := StrToInt(GridNivelpred.CellValue[1,GridNivelpred.SelectedRow]);
    if GridNivelpred.SelectedColumn = 0 then
    begin
      if Gridnivelpred.SelectedRow < Gridnivelpred.RowCount - 2 then
        raise Exception.Create('El nivel predeterminado deberá ser el ultimo o penultimo.');
     cdNivelesPred.First;
     i := 0;
     while not cdNivelesPred.Eof do
     begin
       if cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger = idselected then
         activar
       else
         desactivar;
       cdNivelesPred.Next;
     end;

    end;
    cdNivelesPred.Refresh;
  Except
    on e: Exception do
      InteliDialog.ShowModal('Error al seleccionar nivel predeterminado',e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEsquema.activar;
var
  cdUpt: TClientDataSet;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providernameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 1 then
      begin
        try
          cdUpt.Edit;
          cdUpt.FieldByName('acceso').AsString := 'true';
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

procedure TFrmEsquema.desactivar;
var
  cdUpt: TClientDataSet;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providernameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 1 then
      begin
        try
          cdUpt.Edit;
          cdUpt.FieldByName('acceso').AsString := 'false';
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

procedure TFrmEsquema.TreeViewNivelesCollapsed(Sender: TObject;
  Node: TTreeNode);
begin
  exit;
end;

procedure TFrmEsquema.TreeViewNivelesDblClick(Sender: TObject);
begin
  TreeViewNiveles.FullExpand;
end;

procedure TFrmEsquema.TreeViewNivelesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Node: TTreeNode;
begin
  Node := TreeViewNiveles.GetNodeAt(x,y);
  if Node <> nil then
    nodoactual := Node;
end;

procedure TFrmEsquema.LibroPasosChange(Sender: TObject);
begin
  if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina1' then
  begin
    cargapagina1;
  end;
  if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina2' then
  begin
    cargapagina2;
  end;
  if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina3' then
  begin
    cargapagina3;
  end;
  if libropasos.Pages[libropasos.ActivePageIndex].Name = 'paginafin' then
  begin
    cargapagina4;
  end;
end;

procedure TFrmEsquema.Panel13Click(Sender: TObject);
begin

end;

{$REGION 'Eventos Botones'}
procedure TFrmEsquema.BtnAddClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popup: TFrmDatosOrganigrama;
begin  //popup
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providernameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNiveles.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      popup := TFrmDatosORganigrama.Create(nil);
      cdUpt.Append;
      cdUpt.FieldByName('idnivelorganizacion').AsInteger := 0;
      popUp.dsDatos.DataSet := cdUpt;
      popUp.ShowModal;
      if popUp.Cancelado = False then
      begin
        //cdUpt.ApplyUpdates(-1);
        Refrescar;
        EditarNiveles := True;
      end
      else
      begin
        cdNiveles.Cancel;
      end;
      popUp.Free;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal('Error al agregar el nivel organizacional por el siguiente motivo: ',e.Message, mtWarning, [mbOk], 0);
  End;
  if TreeViewNiveles.Items.Count > 0 then
    treeviewNiveles.Select(treeviewNiveles.Items[treeviewNiveles.Items.Count-1], [ssShift]);

end;

procedure TFrmEsquema.BtnEditClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popup: TFrmDatosOrganigrama;
  nivelActual: integer;
begin
  Try
    if TreeViewNiveles.Items.Count < 1 then
      raise Exception.Create('No hay niveles para editar.');
    try
      valoresid[nodoactual.Level];
    except
      raise Exception.Create('Seleccione un nivel.');
    end;
    nivelActual := treeviewniveles.Selected.Level;
    if (treeviewNiveles.Selected = nil) or (nivelactual < 0) then
      raise Exception.Create('Seleccione un nivel.');

    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
    CrearConjunto(cdUpt, cnivelorganizacion, providernameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [valoresid[nodoactual.Level]]);
    // Obtener un conjunto de datos vacíos
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      popup := TFrmDatosORganigrama.Create(nil);
      cdUpt.Edit;
      popUp.dsDatos.DataSet := cdUpt;
      if popUp.ShowModal = mrOk then
      begin
        cdUpt.ApplyUpdates(-1);
        Refrescar;
        EditarNiveles := True;
      end
      else
      begin
        cdNiveles.Cancel;
      end;
      popUp.Free;
    end;
    cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal('Error al editar el nivel organizacional por el siguiente motivo:',e.Message, mtWarning, [mbOk], 0);
  End;
  TreeViewNiveles.Select(nodoactual, [ssShift]);
end;

procedure TFrmEsquema.BtnRefreshClick(Sender: TObject);
begin
  refrescar;
end;

procedure TFrmEsquema.BtnDeleteClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
begin
  Try
    if TreeViewNiveles.Items.Count < 1 then
      raise Exception.Create('No hay niveles para borrar.');

    if InteliDialog.ShowModal('Eliminar el nivel?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
    begin
      try
        valoresid[nodoactual.Level];
      except
        raise Exception.Create('Seleccione un nivel.');
      end;
      if (treeviewNiveles.Selected = nil) or (treeviewniveles.Selected.Level < 0) then
        raise Exception.Create('Seleccione un nivel.');

      cdUpt := TClientDataSet.Create(Nil);
      // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providernameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [valoresid[nodoactual.Level]]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 1 then
      begin
        try
          cdUpt.Delete;
          cdUpt.ApplyUpdates(-1);
          Refrescar;
          EditarNiveles := True;
        except
          on e: exception do
          begin
            cdUpt.Free;
            showmessage(e.Message);
          end;
        end;
      end;
      cdUpt.Free;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal('Error al borrar el nivel organizacional por el siguiente motivo:',e.Message, mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEsquema.BtnBackClick(Sender: TObject);
begin
  if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina1' then
    exit;
  if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina2' then
  begin
    if cdOrganizacion.State = dsInsert then
      cdOrganizacion.Cancel;
    BtnBack.Visible := False;
  end;
  BtnNext.Caption := 'siguiente';
  libropasos.SelectNextPage(false,false);
  progressbar.Position := progressbar.Position - 25;
end;

procedure TFrmEsquema.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEsquema.GuardaPagina2;
var
  i,pad,g, grupoFound, editFound: Integer;
begin
  Try
    if cdniveles.State = dsBrowse then
    begin
      cdOrganizacion.Close;
      CrearConjunto(cdOrganizacion, cOrganizacion, providernameUpt, ccUpdate);
      cdOrganizacion.Open;
      i := 0;
      g:=0;
      grupoFound := cdNiveles.RecordCount;
      cdNiveles.First;
      pad := -1;
      //rastrea numero de grupos
      while i < grupofound do
      begin
        //rastrear grupos
        if principal.Controls[i].ClassType = TGroupbox then
        begin
          editfound := TGroupBox(principal.Controls[i]).ControlCount;
          g:=0;
          cdOrganizacion.Append;
          while g < editFound do
          begin
            //asignar valores
            cdORganizacion.FieldByName('idorganizacion').AsInteger := 0;
            cdORganizacion.FieldByName('idnivel').AsInteger := cdNiveles.FieldByName('idnivelorganizacion').AsInteger;
            cdORganizacion.FieldByName('padre').AsInteger := pad;
            if TGroupBox(principal.Controls[i]).Controls[g].ClassType = TEdit then  //              showmessage(principal.Controls[i].Name+' :'+TGroupBox(principal.Controls[i]).Controls[g].Name);
            begin
              if TEdit(TGroupBox(principal.Controls[i]).Controls[g]).Name = 'Editcodigo' + cdNiveles.FieldByName('idnivelorganizacion').AsString then
              begin
                cdORganizacion.FieldByName('codigoorganizacion').AsString := TEdit(TGroupBox(principal.Controls[i]).Controls[g]).Text;
                cdORganizacion.FieldByName('nombreorganizacion').AsString := TEdit(TGroupBox(principal.Controls[i]).Controls[g]).Text;
              end;
              if TEdit(TGroupBox(principal.Controls[i]).Controls[g]).Name = 'EditNombre' + cdNiveles.FieldByName('idnivelorganizacion').AsString then
                cdORganizacion.FieldByName('tituloorganizacion').AsString := TEdit(TGroupBox(principal.Controls[i]).Controls[g]).Text;
            end;
            if TGroupBox(principal.Controls[i]).Controls[g].ClassType = TJvDatePickerEdit then    //              showmessage(principal.Controls[i].Name+' :'+TGroupBox(principal.Controls[i]).Controls[g].Name);
               cdORganizacion.FieldByName('fecha').AsDateTime := TJvDatePickerEdit(TGroupBox(principal.Controls[i]).Controls[g]).Date;
            inc(g);
          end;
            //enviar valores
            cdOrganizacion.Post;
            cdORganizacion.ApplyUpdates(-1);
            //obtener el padre
            cdOrganizacion.Open;
            cdOrganizacion.Refresh;
            cdOrganizacion.Last;
            pad := cdORganizacion.FieldByName('idorganizacion').AsInteger;
        end;
        inc(i);
        cdNiveles.Next;
      end;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmEsquema.BtnNextClick(Sender: TObject);
var conta, g, editfound: Integer;
  accesoElegido: Boolean;
begin
  try
    accesoElegido := False;
    if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina1' then
    begin
      if TreeViewNiveles.Items.Count = 0 then
        raise Exception.Create('Tiene que agregar los niveles organizacionales antes de seguir.');
    end;

    if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina2' then
    begin
      conta := 0;
      while conta < Principal.ControlCount  do
      begin
        if principal.Controls[conta].ClassType = TGroupbox then
        begin
          editfound := TGroupBox(principal.Controls[conta]).ControlCount;
          g:=0;
          while g < editFound do
          begin
            if Length(Trim(TEdit(TGroupBox(principal.Controls[conta]).Controls[g]).Text)) < 1 then
              raise Exception.Create('No deje ningun campo vacío');
             Inc(g);
          end;
        end;
        Inc(conta);
      end;
    end;

    if libropasos.Pages[libropasos.ActivePageIndex].Name = 'pagina3' then
    begin
      cdNivelespred.First;
      while not cdNivelespred.Eof do
      begin
        if cdNivelespred.FieldByName('acceso').AsString = 'true' then
          accesoElegido := True;
        cdNivelespred.Next;
      end;
      if not accesoElegido then
        raise Exception.Create('Debe seleccionar el nivel que usará como acceso.');
      BtnNext.Caption := 'finalizar';
    end;

    if libropasos.Pages[libropasos.ActivePageIndex].Name = 'paginafin' then
    begin
      if DatosGuardados = False then
      begin
        guardapagina2;
        DatosGuardados := True;
      if objetosCreados = True then
        principal.Free;
      end;
      Cancelado := False;
      close;
    end;

    btnBack.Visible := True;;
    libropasos.SelectNextPage(true,false);
    progressbar.Position := progressbar.Position + 25;
  except
    on e: Exception do
      InteliDialog.ShowModal('No puede seguir por el siguiente motivo: ',e.Message, mtInformation, [mbOk], 0);

  end;

end;
 {$ENDREGION}

 {$REGION 'Eventos popup'}
procedure TFrmEsquema.Agregar1Click(Sender: TObject);
begin  //popup
  btnAdd.Click;
end;

procedure TFrmEsquema.Editar1Click(Sender: TObject);
begin  //popup
  BtnEdit.Click;
end;

procedure TFrmEsquema.Eliminar1Click(Sender: TObject);
begin     //popup
  BtnDelete.Click;
end;



 {$ENDREGION}
 {$ENDREGION}

 {$REGION 'Procesos'}
procedure TFrmEsquema.Refrescar;
begin
  if cdNiveles.State = dsBrowse then
    cdNiveles.Refresh;
    CargarArbol;
end;

procedure  TFrmEsquema.CargarArbol;
var
  Padre: TTreeNode;
begin
  Try
    valoresId := TStringList.Create;
    TreeViewNiveles.Items.Clear;
    cdNiveles.First;
    Padre := nil;
    while not cdNiveles.Eof do
    begin
      valoresId.Add(cdNiveles.FieldByName('idnivelorganizacion').AsString);
      Padre := TreeViewNiveles.Items.AddChild(Padre,cdNiveles.FieldByName('titulonivel').AsString);
      cdNiveles.Next;
    end;
    TreeViewNiveles.FullExpand;
  Except
    on e: Exception do
      InteliDialog.ShowModal('Error al cargar el arbol de niveles por el siguiente motivo: ',e.Message, mtWarning, [mbOk], 0);
  End;
end;

 {$ENDREGION}
end.
