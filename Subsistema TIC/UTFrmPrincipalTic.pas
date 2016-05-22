unit UTFrmPrincipalTic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, ComCtrls, DB, DBClient, frxClass, frxPreview, Grids,
  DBGrids, RxMemDS, frxDBSet, UTFrmAsignacionIndividualTIC, NxCollection, UIntelidialog,
  JvExStdCtrls, JvBehaviorLabel, Menus, UTfrmDetalleXEntrada, UTFrmAsignacionesPersonalTic, UTFrmEspecificaciones;

type
  PDatos = ^TNDatos;
    TNDatos = Record
    Id: Integer;
    Codigo: String;
end;

type
  TFrmPrincipalTic = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    TreeView1: TTreeView;
    cdsubgrupos: TClientDataSet;
    dssubgrupos: TDataSource;
    dsgrupos: TDataSource;
    cdgrupos: TClientDataSet;
    dsareas: TDataSource;
    cdareas: TClientDataSet;
    dsdetalles: TDataSource;
    cddetalles: TClientDataSet;
    Splitter1: TSplitter;
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    cddetespxarxgrxsg: TClientDataSet;
    dsdetespxarxgrxsg: TDataSource;
    dsmemdetesp: TDataSource;
    memdetesp: TClientDataSet;
    Splitter2: TSplitter;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    NxButton1: TNxButton;
    JvBehaviorLabel1: TJvBehaviorLabel;
    Archivo: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    DetalledeInsumos1: TMenuItem;
    AsignacionesDeInsumosaPersonal1: TMenuItem;
    S1: TMenuItem;
    ArboldeDetalle1: TMenuItem;
    Panel5: TPanel;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure frxReport1DblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
    procedure ArchivoClick(Sender: TObject);
    procedure DetalledeInsumos1Click(Sender: TObject);
    procedure AsignacionesDeInsumosaPersonal1Click(Sender: TObject);
    procedure ArboldeDetalle1Click(Sender: TObject);
  private
    procedure cargardatosmem;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipalTic: TFrmPrincipalTic;

implementation
uses
  ClientModuleUnit1;
{$R *.dfm}

procedure TFrmPrincipalTic.DBGrid1DblClick(Sender: TObject);
begin
   memdetesp.RecordCount;
end;

procedure TFrmPrincipalTic.DetalledeInsumos1Click(Sender: TObject);
begin
  application.CreateForm(TFrmDetalleXEntrada, FrmDetalleXEntrada);
  FrmDetalleXEntrada.ShowModal;
end;

procedure TFrmPrincipalTic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmPrincipalTic.FormShow(Sender: TObject);
var
  Leyenda: String;
  DatosPtr: PDatos;
  AreaNodo,
  GrupoNodo,
  SubGrupoNodo,
  DetalleNodo: TTreeNode;
  numinsumo_detescp, idsubgrupo_detescp, IdDisciplina_detescp, IdGrupo_detescp, IdArticulo_detescp : integer;
  descripcion_detescp, codigoinsumo_detescp  : string;
  tituloarticulo_detescp :string;
  columna : Tcolumn;
  LocName: String;
  Cursor: TCursor;
begin
  Try
    InicializarProgress(0, 10, 0);
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    Try

      IncrementarProgress(1);
      ClientModule1.ComponentColor(self);
      if Not CrearConjunto(cdareas, 'nuc_disciplina', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a "la tabla de Areas", es probable que exista un error de comunicación con el servidor de la base de datos');
      cdareas.Open;

      IncrementarProgress(1);
      if Not CrearConjunto(cdgrupos, 'alm_grupo', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la "tabla de Grupos", es probable que exista un error de comunicación con el servidor de la base de datos');
      cdgrupos.Open;

      IncrementarProgress(1);
      if Not CrearConjunto(cdsubgrupos, 'alm_subgrupo', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la "tabla de Subgrupos", es probable que exista un error de comunicación con el servidor de la base de datos');
      cdsubgrupos.Open;

      IncrementarProgress(1);
      if Not CrearConjunto(cddetalles, 'alm_especdetallesubgrupo', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de "Detalle de Insumos", es probable que exista un error de comunicación con el servidor de la base de datos');
      cddetalles.Open;

      IncrementarProgress(1);
      if Not CrearConjunto(cddetespxarxgrxsg, 'tic_detesp_xar_xgr_xsg', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cddetespxarxgrxsg.Open;

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
        //CargarDatosFiltrados(cdGrupos, 'IdDisciplina', [cdAreas.FieldByName('IdDisciplina').AsInteger]);
        //cdGrupos.Refresh;
        //-------------------------AGREGADO FILTRADOR--------------------------------------------------
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
      //-----------------------creacion del dataset en memoria--------------------
      memdetesp:=TClientDataset.Create(self);
      memdetesp.FieldDefs.Clear;
      memdetesp.FieldDefs.Add('IdDisciplina', ftInteger, 0, false);
      memdetesp.FieldDefs.Add('IdGrupo', ftInteger, 0, false);
      memdetesp.FieldDefs.Add('Idsubgrupo', ftInteger, 0, false);
      memdetesp.FieldDefs.Add('Numinsumo', ftInteger, 0, false);
      memdetesp.FieldDefs.Add('Codigo', ftString, 45, false);
      memdetesp.FieldDefs.Add('Articulo', ftString, 45, false);
      memdetesp.FieldDefs.Add('Descripcion', ftstring, 300, false);
      memdetesp.FieldDefs.Add('idarticulo', ftInteger, 0, false);
      memdetesp.CreateDataSet;
      memdetesp.Open;

      cargardatosmem();
      memdetesp.RecordCount;
      dsmemdetesp.DataSet:=memdetesp;
      frxdbdataset2.DataSet:=memdetesp;

      Try
        LocName := ExtractFilePath(Application.ExeName) + 'Reportes\PrincipalTic.fr3';
        frxReport1.LoadFromFile(LocName);
        frxReport1.ShowReport(TRUE);
      Except
        ;
      End;
    Finally
      Screen.Cursor := Cursor;
      AsignarProgress(0);
    End;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Error al consultar datos','Error al consultar y mostrar datos de una tabla',  e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar El Formulario', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmPrincipalTic.frxReport1DblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if (ssCtrl in Shift) and (Button = mbLeft) and (Sender.TagStr <> '') then
  begin
    if Sender.Name = 'codigoinsumo' then
    begin
      memdetesp.Locate('Numinsumo', strtoint(Sender.TagStr), []);
      application.CreateForm(TFrmAsignacionIndividualTIC, FrmAsignacionIndividualTIC);
      FrmAsignacionIndividualTIC.dsinsumo.DataSet:=memdetesp;
      FrmAsignacionIndividualTIC.ShowModal;
    end;
  end;
end;

procedure TFrmPrincipalTic.NxButton1Click(Sender: TObject);
begin
close;
end;

procedure TFrmPrincipalTic.ArboldeDetalle1Click(Sender: TObject);
begin
  application.CreateForm(TFrmEspecificaciones, FrmEspecificaciones);
  FrmEspecificaciones.ShowModal;
end;

procedure TFrmPrincipalTic.ArchivoClick(Sender: TObject);
var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmPrincipalTic.AsignacionesDeInsumosaPersonal1Click(
  Sender: TObject);
begin
  application.CreateForm(TFrmAsignacionesPersonalTic, FrmAsignacionesPersonalTic);
  FrmAsignacionesPersonalTic.ShowModal;
end;

procedure TFrmPrincipalTic.cargardatosmem();
var
  numinsumo_detescp, idsubgrupo_detescp, IdDisciplina_detescp, IdGrupo_detescp, IdArticulo_detescp : integer;
  descripcion_detescp, codigoinsumo_detescp : string;
  tituloarticulo_detescp :string;
begin
  try
    cddetespxarxgrxsg.first;
    numinsumo_detescp:=0;
    descripcion_detescp:='';
    numinsumo_detescp:=cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger;
    tituloarticulo_detescp:= cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
    idsubgrupo_detescp:= cddetespxarxgrxsg.FieldByName('idsubgrupo').AsInteger;
    IdDisciplina_detescp:= cddetespxarxgrxsg.FieldByName('IdDisciplina').AsInteger;
    IdGrupo_detescp:= cddetespxarxgrxsg.FieldByName('IdDisciplina').AsInteger;
    codigoinsumo_detescp:=cddetespxarxgrxsg.FieldByName('codigo').AsString;
    IdArticulo_detescp:=cddetespxarxgrxsg.FieldByName('idarticulo').AsInteger;
    while not cddetespxarxgrxsg.Eof do
    begin
      if numinsumo_detescp <> cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger then
      begin
        memdetesp.Append;
        memdetesp.FieldByName('IdDisciplina').AsInteger:= IdDisciplina_detescp;
        memdetesp.FieldByName('IdGrupo').AsInteger:= IdGrupo_detescp;
        memdetesp.FieldByName('IdSubgrupo').AsInteger:= idsubgrupo_detescp;
        memdetesp.FieldByName('Numinsumo').AsInteger:= numinsumo_detescp;
        memdetesp.FieldByName('Articulo').AsString:= tituloarticulo_detescp;
        descripcion_detescp:=descripcion_detescp+'.';
        memdetesp.FieldByName('Descripcion').AsString:= descripcion_detescp;
        memdetesp.FieldByName('Codigo').AsString:=codigoinsumo_detescp;
        memdetesp.FieldByName('IdArticulo').AsInteger:=IdArticulo_detescp;
        memdetesp.Post;
        numinsumo_detescp:=0;
        numinsumo_detescp:=cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger;
        tituloarticulo_detescp:='';
        tituloarticulo_detescp:= cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
        idsubgrupo_detescp:=0;
        idsubgrupo_detescp:= cddetespxarxgrxsg.FieldByName('idsubgrupo').AsInteger;
        IdDisciplina_detescp:=0;
        IdDisciplina_detescp:= cddetespxarxgrxsg.FieldByName('IdDisciplina').AsInteger;
        IdGrupo_detescp:=0;
        IdGrupo_detescp:= cddetespxarxgrxsg.FieldByName('IdGrupo').AsInteger;
        codigoinsumo_detescp:='';
        codigoinsumo_detescp:=cddetespxarxgrxsg.FieldByName('codigo').AsString;
        IdArticulo_detescp:=0;
        IdArticulo_detescp:=cddetespxarxgrxsg.FieldByName('idarticulo').AsInteger;
        descripcion_detescp:='';
      end;
      if descripcion_detescp <> '' then
      begin
        descripcion_detescp:=descripcion_detescp+', ';
      end;
      if cddetespxarxgrxsg.FieldByName('tipodedato').AsString = 'CADENA' then
      begin
          descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('TituloDetalle').AsString+': ';
          if cddetespxarxgrxsg.FieldByName('campocadena').AsString = '' then
          begin
            descripcion_detescp:=descripcion_detescp+'N/A';
          end
          else
          begin
            descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('campocadena').AsString;
          end;
      end;
      if cddetespxarxgrxsg.FieldByName('tipodedato').AsString = 'NUMERICO' then
      begin
        descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('TituloDetalle').AsString+': ';
        if cddetespxarxgrxsg.FieldByName('camponumerico').AsInteger = 0 then
        begin
            descripcion_detescp:=descripcion_detescp+'N/A';
        end
        else
        begin
          descripcion_detescp:=descripcion_detescp+inttostr(cddetespxarxgrxsg.FieldByName('camponumerico').AsInteger);
        end;
      end;
      if cddetespxarxgrxsg.FieldByName('tipodedato').AsString = 'FECHA' then
      begin
        descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('TituloDetalle').AsString+': ';
        if cddetespxarxgrxsg.FieldByName('campofecha1').AsDateTime = 30/12/1899 then
        begin
          descripcion_detescp:=descripcion_detescp+'N/A';
        end
        else
        begin
          descripcion_detescp:=descripcion_detescp+datetostr(cddetespxarxgrxsg.FieldByName('campofecha1').AsDateTime);
        end;
      end;
      cddetespxarxgrxsg.Next;
    end;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los Datos de los "Insumos Especificados", proceso "Cargar Datos En Memoria"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmPrincipalTic.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
  DatosPtr: PDatos;
  Nodo: TTreeNode;
  numinsumo_detescp, idsubgrupo_detescp, IdDisciplina_detescp, IdGrupo_detescp : integer;
  descripcion_detescp : string;
  tituloarticulo_detescp :string;
begin
  try
    frxReport1.ShowReport(FALSE);
    memdetesp.CancelRange;
    case Node.Level of
      0: begin
        //////////////////////////////////////////////////////////////////////////////////
        ///  MODIFICACION REALIZADA POR RANGEL.... OJO HAY QUE AGREGARSELA AL CÓDIGO DEL GABO
        /////////////////////////////////////////////////////////////////////////////////////////
        /// Seleccionar el registro de areas que identifica el nodo
        cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Data).Id, []);
        memdetesp.IndexFieldNames:='IdDisciplina;Idsubgrupo';
        memdetesp.SetRange([PDatos(TreeView1.Selected.Data).Id],[PDatos(TreeView1.Selected.Data).Id]);
        if memdetesp.RecordCount = 0 then
        begin
          memdetesp.CancelRange;
          if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [cdareas.FieldByName('IdDisciplina').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddetespxarxgrxsg.Refresh;
          cargardatosmem();
          memdetesp.IndexFieldNames:='IdDisciplina;Idsubgrupo';
          memdetesp.SetRange([cdareas.FieldByName('IdDisciplina').AsInteger],[cdareas.FieldByName('IdDisciplina').AsInteger]);
        end;
        /////////////////////////////////////////////////////////////////////////////////////////
      end;
      1: begin
        //////////////////////////////////////////////////////////////////////////////////
        ///  MODIFICACION REALIZADA POR RANGEL.... OJO HAY QUE AGREGARSELA AL CÓDIGO DEL GABO
        /////////////////////////////////////////////////////////////////////////////////////////
        /// Seleccionar el registro de areas que identifica el nodo
        cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Parent.Data).Id, []);
        cdGrupos.Locate('IdGrupo', PDatos(TreeView1.Selected.Data).Id, []);
        memdetesp.IndexFieldNames:='IdGrupo;Idsubgrupo';
        memdetesp.SetRange([PDatos(TreeView1.Selected.Data).Id],[PDatos(TreeView1.Selected.Data).Id]);
        if memdetesp.RecordCount = 0 then
        begin
          memdetesp.CancelRange;
          if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [cdareas.FieldByName('IdDisciplina').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddetespxarxgrxsg.Refresh;
          cargardatosmem();
          memdetesp.IndexFieldNames:='IdGrupo;Idsubgrupo';
          memdetesp.SetRange([cdgrupos.FieldByName('IdGrupo').AsInteger],[cdgrupos.FieldByName('IdGrupo').AsInteger]);
        end;
        /////////////////////////////////////////////////////////////////////////////////////////
      end;
      2: begin
        //////////////////////////////////////////////////////////////////////////////////
        ///  MODIFICACION REALIZADA POR RANGEL.... OJO HAY QUE AGREGARSELA AL CÓDIGO DEL GABO
        /////////////////////////////////////////////////////////////////////////////////////////
        /// Seleccionar el registro de areas que identifica el nodo
        cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Parent.Parent.Data).Id, []);
        cdGrupos.Locate('IdGrupo', PDatos(TreeView1.Selected.Parent.Data).Id, []);
        cdSubGrupos.Locate('IdSubGrupo', PDatos(TreeView1.Selected.Data).Id, []);
        memdetesp.IndexFieldNames:='Idsubgrupo;Idsubgrupo';
        memdetesp.SetRange([PDatos(TreeView1.Selected.Data).Id],[PDatos(TreeView1.Selected.Data).Id]);
        if memdetesp.RecordCount = 0 then
        begin
          memdetesp.CancelRange;
          if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [cdareas.FieldByName('IdDisciplina').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddetespxarxgrxsg.Refresh;
          cargardatosmem();
          memdetesp.IndexFieldNames:='Idsubgrupo;Idsubgrupo';
          memdetesp.SetRange([cdsubgrupos.FieldByName('Idsubgrupo').AsInteger],[cdsubgrupos.FieldByName('Idsubgrupo').AsInteger]);
        end;
        /////////////////////////////////////////////////////////////////////////////////////////
      end;
    end;

    if Assigned(frxReport1.Report) then
      frxReport1.ShowReport(TRUE);
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
