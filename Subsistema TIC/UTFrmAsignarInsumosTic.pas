unit UTFrmAsignarInsumosTic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, NxCollection, DB,
  DBClient, UinteliDialog, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDbColumns, JvExControls, JvLabel, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, DBCtrls, Contnrs,
  JvExStdCtrls, JvBehaviorLabel, Menus, NxColumns, frxClass, frxDBSet;

  type
    PDatos = ^TNDatos;
    TNDatos = Record
      Id: Integer;
      Codigo: String;
  end;

  type
    TInsumos = class
     numinsumo : integer;
     codigoinsumo : string;
     idarticulo : integer;
     articulo : string;
     numarticulo : integer;
     descripcion : string;
  end;

type
  TFrmAsignarInsumosTic = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    TreeView1: TTreeView;
    GroupBox2: TGroupBox;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Panel4: TPanel;
    cdsubgrupos: TClientDataSet;
    memespecificados: TClientDataSet;
    dsmemespecificados: TDataSource;
    cdgrupos: TClientDataSet;
    cdareas: TClientDataSet;
    dsareas: TDataSource;
    dsgrupos: TDataSource;
    dssubgrupos: TDataSource;
    GridDetalle: TNextDBGrid;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    Panel6: TPanel;
    Panel7: TPanel;
    dsdetalleresguardos: TDataSource;
    GroupBox4: TGroupBox;
    JvLabel2: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel6: TJvLabel;
    dspersonal: TDataSource;
    DTFechaAsignacion: TDateTimePicker;
    EdCodigoAsignacion: TEdit;
    Splitter1: TSplitter;
    cddetalleresguardos: TClientDataSet;
    Panel8: TPanel;
    JvBehaviorLabel1: TJvBehaviorLabel;
    Btn_Archivo: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    Asignar1: TMenuItem;
    Cancelar1: TMenuItem;
    Salir1: TMenuItem;
    dsnumultimocodigo: TDataSource;
    cdnumultimocodigo: TClientDataSet;
    cdresguardos: TClientDataSet;
    DataSource1: TDataSource;
    dsresguardos: TDataSource;
    JvLabel8: TJvLabel;
    JvLabel11: TJvLabel;
    DBMemo1: TDBMemo;
    cdentrego: TClientDataSet;
    cdaprobo: TClientDataSet;
    dsentrego: TDataSource;
    dsaprobo: TDataSource;
    dsdetespxarxgrxsg: TDataSource;
    cddetespxarxgrxsg: TClientDataSet;
    MemAsignados: TClientDataSet;
    dsmemasignados: TDataSource;
    cdmanttoprev: TClientDataSet;
    dsmanttoprev: TDataSource;
    frxReport1: TfrxReport;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxLookupColumn1: TNxLookupColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    frxDBPersonal: TfrxDBDataset;
    frxDBDResguardo: TfrxDBDataset;
    cdReportResDet: TClientDataSet;
    frxDBDOrganizacion: TfrxDBDataset;
    JvLabel12: TJvLabel;
    cdenterado: TClientDataSet;
    dsenterado: TDataSource;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Edit1: TEdit;
    NxButton3: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure GridDetalleCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure ListView1DblClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Asignar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Btn_ArchivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NextDBGrid1Change(Sender: TObject; ACol, ARow: Integer);
    procedure NxButton3Click(Sender: TObject);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
    Insumostotal : Tobjectlist;
    procedure cargardatosmem;
  public
    { Public declarations }
  end;

var
  FrmAsignarInsumosTic: TFrmAsignarInsumosTic;

implementation
 uses
  ClientModuleUnit1, xDatabase, UTFrmPersonal, UTFrmSolicitaPersonal, DMTicRepModuleUnit;
{$R *.dfm}

procedure TFrmAsignarInsumosTic.Asignar1Click(Sender: TObject);
begin
  NxButton2.Click;
end;

procedure TFrmAsignarInsumosTic.Btn_ArchivoClick(Sender: TObject);
var
  Point : Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignarInsumosTic.Cancelar1Click(Sender: TObject);
begin
  NxButton1.Click;
end;

procedure TFrmAsignarInsumosTic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  eliminarconjunto([cdsubgrupos.ProviderName, cdgrupos.ProviderName, cdareas.ProviderName]);
  Action := caFree;
end;

procedure TFrmAsignarInsumosTic.FormCreate(Sender: TObject);
begin
  try
    screen.Cursor:=crhourglass;
  finally
    screen.Cursor:=crdefault;
  end;
end;

procedure TFrmAsignarInsumosTic.FormShow(Sender: TObject);
var
Leyenda: String;
DatosPtr: PDatos;
AreaNodo : TTreeNode;
GrupoNodo : TTreeNode;
SubgrupoNodo : TTreeNode;
begin
try
  ClientModule1.ComponentColor(self);
screen.Cursor:=crhourglass;
  try
    Insumostotal:= TobjectList.Create;
    if Not CrearConjunto(cdareas, 'nuc_disciplina', ccCatalog) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Subgrupos, es probable que exista un error de comunicación con el servidor de la base de datos');
    cdareas.Open;

    if Not CrearConjunto(cdgrupos, 'alm_grupo', ccCatalog) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de grupo, es probable que exista un error de comunicación con el servidor de la base de datos');
    cdgrupos.Open;

    if Not CrearConjunto(cdsubgrupos, 'alm_subgrupo', ccCatalog) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Subgrupos, es probable que exista un error de comunicación con el servidor de la base de datos');
    cdsubgrupos.Open;

//-------------------------------------------------------------------------------
    //Se abre el dataset de resguardos
    if Not CrearConjunto(cdresguardos, 'tic_resguardos', ccUpdate) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardos, 'idticresguardos', [-9]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdresguardos.Open;

    //Se consigue el Ultimo Codigo de Resguardo de TIC
    if Not CrearConjunto(cdnumultimocodigo, 'tic_asignacionestic_numultimocodigo', ccCatalog) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Subgrupos, es probable que exista un error de comunicación con el servidor de la base de datos');
    cdnumultimocodigo.Open;

    //Sentencia Mostrar los insumos no asignados
    if Not CrearConjunto(cddetespxarxgrxsg, 'tic_actresguardodetalle', ccSelect) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [-9]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cddetespxarxgrxsg.Open;

    //Dataset de firmantes


    if Not CrearConjunto(cdenterado, 'tic_firmresguardos', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdenterado, 'iddepartamento, nivel', [dspersonal.DataSet.FieldByName('iddepartamento').AsInteger, dspersonal.DataSet.FieldByName('nivel').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdenterado.Open;


    if Not CrearConjunto(cdmanttoprev, 'alm_manttoprev', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdmanttoprev, 'idmanttoprev', [-1]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdmanttoprev.Open;

    cdresguardos.Append;

    cdresguardos.FieldByName('codigoticresguardo').AsString:='ENTR-TIC-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);
    cdresguardos.FieldByName('numresguardo').AsInteger:=cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1;
    cdresguardos.FieldByName('tiporesguardo').AsString:='ENTREGA';
    cdresguardos.FieldByName('recibio').AsInteger:=dspersonal.DataSet.FieldByName('idpersonal').AsInteger;
    cdresguardos.FieldByName('idusuario').AsInteger:=ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    EdCodigoAsignacion.Text:='ENTR-TIC-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);

//-----------------------Generacion del Arbol-----------------------------------
  cdareas.First;
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
//-----------------------Fin Generacion del Arbol-------------------------------

//---------------Creacion Dataset En Memoria Insumos Asignados------------------

        MemAsignados:=TClientDataset.Create(self);
        MemAsignados.FieldDefs.Clear;
        MemAsignados.FieldDefs.Add('numinsumo', ftInteger, 0, false);
        MemAsignados.FieldDefs.Add('codigoinsumo', ftstring, 45, false);
        MemAsignados.FieldDefs.Add('idarticulo', ftInteger, 0, false);
        MemAsignados.FieldDefs.Add('descripcion', ftstring, 200, false);
        MemAsignados.FieldDefs.Add('nombrearticulo', ftString, 45, false);
        MemAsignados.FieldDefs.Add('idmantto', ftInteger, 0, false);
        MemAsignados.FieldDefs.Add('recurrencia', ftInteger, 0, false);
        MemAsignados.CreateDataSet;
        MemAsignados.Open;

        dsmemasignados.DataSet:=Memasignados;

     {
    //-----------------------Creacion Dataset En memoria----------------------------
        memespecificados:=TClientDataset.Create(self);
        memespecificados.FieldDefs.Clear;
        memespecificados.FieldDefs.Add('IdDisciplina', ftInteger, 0, false);
        memespecificados.FieldDefs.Add('IdGrupo', ftInteger, 0, false);
        memespecificados.FieldDefs.Add('Idsubgrupo', ftInteger, 0, false);
        memespecificados.FieldDefs.Add('Numinsumo', ftInteger, 0, false);
        memespecificados.FieldDefs.Add('Codigo', ftString, 45, false);
        memespecificados.FieldDefs.Add('Articulo', ftString, 45, false);
        memespecificados.FieldDefs.Add('Descripcion', ftstring, 300, false);
        memespecificados.FieldDefs.Add('idarticulo', ftInteger, 0, false);
        memespecificados.FieldDefs.Add('idmantto', ftInteger, 0, false);
        memespecificados.FieldDefs.Add('recurrencia', ftInteger, 0, false);
        memespecificados.CreateDataSet;
        memespecificados.Open;

        cargardatosmem();
  }
//------------------------------------------------------------------------------

  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error de comunicación con el servidor de datos', 'No se ha podido establecer lo siguiente: ' + e.message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
finally
screen.Cursor:=crdefault;
end;
end;

procedure TFrmAsignarInsumosTic.GridDetalleCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
  var
  Insumos : Tinsumos;
  i : integer;
begin
//####################Este codigo se reemplazara por un dataset en memoria#################################
{
    for i  := 0 to insumostotal.Count-1 do
    begin
      if Tinsumos(Insumostotal[i]).numinsumo=memespecificados.FieldByName('Numinsumo').AsInteger then
      begin
        InteliDialog.ShowModal('El Insumo ya ha sido agregado a la lista', ' Por Favor, elija otro insumo' + #10 + #10 + '', mtInformation, [mbOK], 0);
        Exit;
      end;

    end;
    insumos:=Tinsumos.Create;
    insumos.numinsumo:= memespecificados.FieldByName('Numinsumo').AsInteger;
    insumos.idarticulo:= memespecificados.FieldByName('IdArticulo').AsInteger;
    insumos.articulo:= memespecificados.FieldByName('Articulo').AsString;
    insumos.codigoinsumo:=memespecificados.FieldByName('codigo').AsString;
    insumos.descripcion:=memespecificados.FieldByName('Descripcion').AsString;
    Insumostotal.Add(insumos);

}

//####################################################################################################

{
  MemAsignados.Append;
  MemAsignados.FieldByName('numinsumo').AsInteger:=memespecificados.FieldByName('Numinsumo').AsInteger;
  MemAsignados.FieldByName('idarticulo').AsInteger:=memespecificados.FieldByName('IdArticulo').AsInteger;
  MemAsignados.FieldByName('nombrearticulo').AsString:=memespecificados.FieldByName('Articulo').AsString;
  MemAsignados.FieldByName('codigoinsumo').AsString:=memespecificados.FieldByName('codigo').AsString;
  MemAsignados.FieldByName('descripcion').AsString:=memespecificados.FieldByName('Descripcion').AsString;
  MemAsignados.FieldByName('idmantto').AsInteger:=memespecificados.FieldByName('idmantto').AsInteger;
  MemAsignados.FieldByName('recurrencia').AsInteger:=memespecificados.FieldByName('recurrencia').AsInteger;
  MemAsignados.Post;

}

  try
    memasignados.IndexFieldNames:='numinsumo';
    memasignados.SetRange([cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger],[cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]);
    if memasignados.RecordCount>0 then
    begin
      memasignados.CancelRange;
      InteliDialog.ShowModal('Atencion!', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 , mtInformation, [mbOK], 0);
      exit;
    end;

    memasignados.CancelRange;
    MemAsignados.Append;
    MemAsignados.FieldByName('numinsumo').AsInteger:=cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger;
    MemAsignados.FieldByName('idarticulo').AsInteger:=cddetespxarxgrxsg.FieldByName('idarticulo').AsInteger;
    MemAsignados.FieldByName('nombrearticulo').AsString:=cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
    MemAsignados.FieldByName('codigoinsumo').AsString:=cddetespxarxgrxsg.FieldByName('codigo').AsString;
    MemAsignados.FieldByName('descripcion').AsString:=cddetespxarxgrxsg.FieldByName('descripciontotal').AsString;
    MemAsignados.FieldByName('idmantto').AsInteger:=cddetespxarxgrxsg.FieldByName('idmanttoprev').AsInteger;
    MemAsignados.FieldByName('recurrencia').AsInteger:=cddetespxarxgrxsg.FieldByName('recurrencia').AsInteger;
    MemAsignados.Post;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al Guardar Los Datos de Asignacion', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
  end;

end;


procedure TFrmAsignarInsumosTic.ListView1DblClick(Sender: TObject);
var
 i , posicionobjectlist : integer;
begin
{
    posicionobjectlist:=0;
    if listview1.Selected <> nil then
    begin
      for i := 1 to insumostotal.Count-1 do
      begin
        if (inttostr(TInsumos(insumostotal.Items[i]).numinsumo) = ListView1.Items[listview1.ItemIndex].SubItems[0])  then
        begin
          posicionobjectlist:=i;
        end;
      end;
    insumostotal.Items[posicionobjectlist].Destroy;
    listview1.Selected.Delete;
    end;

}
end;

procedure TFrmAsignarInsumosTic.NextDBGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  try
    MemAsignados.Delete;
  except
  on e:exception do
      InteliDialog.ShowModal('Error al eliminar insumo asignado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignarInsumosTic.NextDBGrid1Change(Sender: TObject; ACol,
  ARow: Integer);
begin
  if (Sender.ClassType = TNextDBGrid) and ((Sender as TNextDBGrid).Columns.Item[ACol].Name = NXLookupColumn1.Name) then
  begin
    showmessage((Sender as TNextDBGrid).CellValue[ACol, ARow]);
  end;
end;

procedure TFrmAsignarInsumosTic.NxButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmAsignarInsumosTic.NxButton2Click(Sender: TObject);
var
  i, numultimoresguardo, idresguardo : integer;
  LocName : string;
begin

    try
      if (EdCodigoAsignacion.text='') or (DTFechaAsignacion.GetTextLen=0)  then
      begin
        InteliDialog.ShowModal('Faltan llenar datos para poder guardar', 'Verifique los datos de "Codigo Asignacion" y "Fecha de Asignaciion" que tengan un valor correcto' + #10 + #10 + '', mtInformation, [mbOK], 0);
        exit;
      end;

//---------------------Verificacion del guardado------------------------------------------------------------
      if memasignados.RecordCount > 0 then
      begin
      cdresguardos.FieldByName('idticresguardos').AsInteger:=0;
      cdresguardos.FieldByName('area').AsString:='TIC';
      cdresguardos.Post;
      cdresguardos.ApplyUpdates(-1);
      idresguardo:=Ultimoid;

  {
        if Not CargarDatosFiltrados(cdresguardos, 'numresguardo', [numultimoresguardo]) then
         raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
         cdresguardos.Refresh;
}
      if Not CrearConjunto(cddetalleresguardos, 'tic_resguardosdetalle', ccUpdate) then
        raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cddetalleresguardos, 'idresguardodetalle', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cddetalleresguardos.Open;


      memasignados.First;
        while not memasignados.Eof do
        begin
          cddetalleresguardos.Append;
          cddetalleresguardos.FieldByName('IdAcceso').AsInteger:=1;
          cddetalleresguardos.FieldByName('idresguardodetalle').AsInteger:=0;
          cddetalleresguardos.FieldByName('idresguardoentrega').AsInteger:=idresguardo;
          cddetalleresguardos.FieldByName('idpersonal').AsInteger:=dspersonal.DataSet.FieldByName('idpersonal').AsInteger;
          cddetalleresguardos.FieldByName('codigoinsumo').AsString:=MemAsignados.FieldByName('codigoinsumo').AsString;
          cddetalleresguardos.FieldByName('fechaasig').AsDateTime:=DTFechaAsignacion.DateTime;
          cddetalleresguardos.FieldByName('fechavigencia').Clear;
          cddetalleresguardos.FieldByName('idarticulo').AsInteger:=MemAsignados.FieldByName('idarticulo').AsInteger;
          cddetalleresguardos.FieldByName('numinsumoespecificado').AsInteger:=MemAsignados.FieldByName('numinsumo').AsInteger;
          cddetalleresguardos.FieldByName('idresguardorecibido').AsInteger:=-5;
          cddetalleresguardos.FieldByName('descripcioninsumo').AsString:=MemAsignados.FieldByName('descripcion').AsString;
          cddetalleresguardos.Post;
          cddetalleresguardos.ApplyUpdates(-1);
          memasignados.Next;
        end;
        cddetalleresguardos.Refresh;

        if Not CargarDatosFiltrados(cddetalleresguardos, 'idresguardoentrega', [idresguardo]) then
          raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cddetalleresguardos.Refresh;
        InteliDialog.ShowModal('Los datos se han almacenado correctamente', '' + #10 + #10 + '', mtInformation, [mbOK], 0);

        if Not CrearConjunto(cdReportResDet, 'tic_resguardos_asignaciones', ccCatalog) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de la "Resguardos y Detalles", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdReportResDet, 'idticresguardos', [idresguardo]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdReportResDet.Open;

        TicRepModuleUnit.frxDBPersonal.DataSource:=dspersonal;
        TicRepModuleUnit.frxDBDResguardo.DataSet:=cdReportResDet;

        LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmValedeResguardo.fr3';

        if FileExists(LocName) then
        begin
          frxReport1.LoadFromFile(LocName);
          frxReport1.ShowReport(TRUE);
        end
        else
        begin
          InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
        end;
        close;
      end
      else
      begin
        InteliDialog.ShowModal('No Hay Ningun Insumo Asignado ', ' Por favor seleccdione algun insumo ' + #10 + #10, mtInformation, [mbOK], 0);
        exit;
      end;
    except
    on e:exception do
      InteliDialog.ShowModal('Error al Guardar Los Datos de Asignacion', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;

end;

procedure TFrmAsignarInsumosTic.NxButton3Click(Sender: TObject);
var
 registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
    Resultado := mrCancel;
      Try
        Try
          if cdentrego.Active=false then
          begin
            if Not CrearConjunto(cdentrego, 'nuc_personal', ccCatalog) then
              raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
            if Not CargarDatosFiltrados(cdentrego, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdentrego.Open;
          end
          else
          begin
            if Not CargarDatosFiltrados(cdentrego, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdentrego.Open;
          end;
          // Mandar llamar primero la ventana de selección directa
          Application.CreateForm(TFrmSolicitaPersonal, FrmSolicitaPersonal);
          FrmSolicitaPersonal.Top := Application.MainForm.Top + GetSystemMetrics(SM_CYCAPTION) + 174 + Self.Top + GetSystemMetrics(SM_CYCAPTION);
          FrmSolicitaPersonal.Left := Application.MainForm.Left + GetSystemMetrics(SM_CXSIZEFRAME) + Self.Left;
          Resultado := FrmSolicitaPersonal.ShowModal;

          case Resultado of
            mrOk: IdLlave := FrmSolicitaPersonal.Edit1.Text;
            mrCancel: Exit;
          end;
        Finally
          FrmSolicitaPersonal.Free;
        End;

        if (Resultado = mrAbort) or (Resultado = mrOk) then
        Try
          Screen.Cursor := crAppStart;

          if Resultado = mrAbort then
          begin
            Application.CreateForm(TFrmPersonal, FrmPersonal);
            FrmPersonal.PanelAdd.Visible := False;
            FrmPersonal.PanelEdit.Visible := False;
            FrmPersonal.PanelDelete.Visible := False;
            FrmPersonal.PanelPrint.Visible := False;
            FrmPersonal.PanelImport.Visible := False;
            FrmPersonal.PanelExport.Visible := False;
            FrmPersonal.ModoSeleccion := True;

            registro := FrmPersonal.SeleccionarItem();
          end;

          if (Assigned(registro) and (Resultado = mrAbort)) or (Resultado = mrOk) then
          begin
            cdentrego.Close;   // Cerrar primero el registro de personal que pudiera estar activo

            if Resultado = mrOk then
            begin
              // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
              if Not CargarDatosFiltrados(cdentrego, 'CodigoPersonal', [IdLlave]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
            end
            else
              if Not CargarDatosFiltrados(cdentrego, 'idpersonal', [registro.Valor['idpersonal']]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
              cdentrego.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
              edit1.Text:=cdentrego.FieldByName('Nombres').AsString+' '+cdentrego.FieldByName('APaterno').AsString+' '+cdentrego.FieldByName('AMaterno').AsString+
              ' / '+cdentrego.FieldByName('titulocargo').AsString+' / '+cdentrego.FieldByName('titulodepartamento').AsString;
              cdresguardos.FieldByName('entrego').AsInteger:=cdentrego.FieldByName('idpersonal').AsInteger;
              //ingresar firmante...............................................
              if cdaprobo.Active = false then
              begin
                if Not CrearConjunto(cdaprobo, 'tic_firmresguardos', ccCatalog) then
                  raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
                if Not CargarDatosFiltrados(cdaprobo, 'iddepartamento, nivel', [cdentrego.FieldByName('iddepartamento').AsInteger, cdentrego.FieldByName('nivel').AsInteger]) then
                  raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
                cdaprobo.Open;
              end
              else
              begin
                if Not CargarDatosFiltrados(cdaprobo, 'iddepartamento, nivel', [cdentrego.FieldByName('iddepartamento').AsInteger, cdentrego.FieldByName('nivel').AsInteger]) then
                  raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
                cdaprobo.Refresh;
              end;
              //................................................................
          end;
        Finally
          Screen.Cursor := crDefault;
        End;
      except
        on e:exception do
          InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
      end;
end;

procedure TFrmAsignarInsumosTic.NxButton4Click(Sender: TObject);
var
 registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
{
    Resultado := mrCancel;
    Try
      Try
        if Not CargarDatosFiltrados(cdfirmante2, 'idpersonal', [-9]) then
          raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdfirmante2.Open;
        // Mandar llamar primero la ventana de selección directa
        Application.CreateForm(TFrmSolicitaPersonal, FrmSolicitaPersonal);
        FrmSolicitaPersonal.Top := Application.MainForm.Top + GetSystemMetrics(SM_CYCAPTION) + 174 + Self.Top + GetSystemMetrics(SM_CYCAPTION);
        FrmSolicitaPersonal.Left := Application.MainForm.Left + GetSystemMetrics(SM_CXSIZEFRAME) + Self.Left;
        Resultado := FrmSolicitaPersonal.ShowModal;

        case Resultado of
          mrOk: IdLlave := FrmSolicitaPersonal.Edit1.Text;
          mrCancel: Exit;
        end;
      Finally
        FrmSolicitaPersonal.Free;
      End;

      if (Resultado = mrAbort) or (Resultado = mrOk) then
      Try
        Screen.Cursor := crAppStart;

        if Resultado = mrAbort then
        begin
          Application.CreateForm(TFrmPersonal, FrmPersonal);
          FrmPersonal.AdvToolPanelTab1.Visible := False;
          FrmPersonal.PanelAdd.Visible := False;
          FrmPersonal.PanelEdit.Visible := False;
          FrmPersonal.PanelDelete.Visible := False;
          FrmPersonal.PanelPrint.Visible := False;
          FrmPersonal.PanelImport.Visible := False;
          FrmPersonal.PanelExport.Visible := False;
          FrmPersonal.ModoSeleccion := True;

          registro := FrmPersonal.SeleccionarItem();
        end;

        if (Assigned(registro) and (Resultado = mrAbort)) or (Resultado = mrOk) then
        begin
          cdfirmante2.Close;   // Cerrar primero el registro de personal que pudiera estar activo

          if Resultado = mrOk then
          begin
            // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
            if Not CargarDatosFiltrados(cdfirmante2, 'CodigoPersonal', [IdLlave]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
          end
          else
            if Not CargarDatosFiltrados(cdfirmante2, 'idpersonal', [registro.Valor['idpersonal']]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');

          cdfirmante2.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
          edit2.Text:=cdfirmante2.FieldByName('Nombres').AsString+' '+cdfirmante2.FieldByName('APaterno').AsString+' '+cdfirmante2.FieldByName('AMaterno').AsString;
          cdresguardos.FieldByName('firmante2').AsInteger:=cdfirmante2.FieldByName('idpersonal').AsInteger;
        end;
      Finally
        Screen.Cursor := crDefault;
      End;
    except
      on e:exception do
        InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
    end;
}
end;

procedure TFrmAsignarInsumosTic.NxButton5Click(Sender: TObject);
var
  registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
    {
    Resultado := mrCancel;

      Try
        Try
          if Not CargarDatosFiltrados(cdfirmante1, 'idpersonal', [-9]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cdfirmante1.Open;
          // Mandar llamar primero la ventana de selección directa
          Application.CreateForm(TFrmSolicitaPersonal, FrmSolicitaPersonal);
          FrmSolicitaPersonal.Top := Application.MainForm.Top + GetSystemMetrics(SM_CYCAPTION) + 174 + Self.Top + GetSystemMetrics(SM_CYCAPTION);
          FrmSolicitaPersonal.Left := Application.MainForm.Left + GetSystemMetrics(SM_CXSIZEFRAME) + Self.Left;
          Resultado := FrmSolicitaPersonal.ShowModal;

          case Resultado of
            mrOk: IdLlave := FrmSolicitaPersonal.Edit1.Text;
            mrCancel: Exit;
          end;
        Finally
          FrmSolicitaPersonal.Free;
        End;

        if (Resultado = mrAbort) or (Resultado = mrOk) then
        Try
          Screen.Cursor := crAppStart;

          if Resultado = mrAbort then
          begin
            Application.CreateForm(TFrmPersonal, FrmPersonal);
            FrmPersonal.AdvToolPanelTab1.Visible := False;
            FrmPersonal.PanelAdd.Visible := False;
            FrmPersonal.PanelEdit.Visible := False;
            FrmPersonal.PanelDelete.Visible := False;
            FrmPersonal.PanelPrint.Visible := False;
            FrmPersonal.PanelImport.Visible := False;
            FrmPersonal.PanelExport.Visible := False;
            FrmPersonal.ModoSeleccion := True;

            registro := FrmPersonal.SeleccionarItem();
          end;

          if (Assigned(registro) and (Resultado = mrAbort)) or (Resultado = mrOk) then
          begin
            cdfirmante1.Close;   // Cerrar primero el registro de personal que pudiera estar activo

            if Resultado = mrOk then
            begin
              // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
              if Not CargarDatosFiltrados(cdfirmante1, 'CodigoPersonal', [IdLlave]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
            end
            else
              if Not CargarDatosFiltrados(cdfirmante1, 'idpersonal', [registro.Valor['idpersonal']]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');

            cdfirmante1.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
            edit1.Text:=cdfirmante1.FieldByName('Nombres').AsString+' '+cdfirmante1.FieldByName('APaterno').AsString+' '+cdfirmante1.FieldByName('AMaterno').AsString;
            cdresguardos.FieldByName('firmante1').AsInteger:=cdfirmante1.FieldByName('idpersonal').AsInteger;
          end;
        Finally
          Screen.Cursor := crDefault;
        End;
      except
        on e:exception do
          InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
      end;
  }
end;

procedure TFrmAsignarInsumosTic.Salir1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmAsignarInsumosTic.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
  var
  campotexto : TNxDbTextColumn;
  camponumerico : TNxDbNumberColumn;
  campofecha : TNxDbDateColumn;
  i, j : integer;
begin

  try
    case Node.Level of
      0: begin
        cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Data).Id, []);
          if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [cdareas.FieldByName('IdDisciplina').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddetespxarxgrxsg.Refresh;
        /////////////////////////////////////////////////////////////////////////////////////////
      end;
      1: begin
        cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Parent.Data).Id, []);
        cdGrupos.Locate('IdGrupo', PDatos(TreeView1.Selected.Data).Id, []);
          if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [cdareas.FieldByName('IdDisciplina').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddetespxarxgrxsg.Refresh;
      end;
      2: begin

        cdAreas.Locate('IdDisciplina', PDatos(TreeView1.Selected.Parent.Parent.Data).Id, []);
        cdGrupos.Locate('IdGrupo', PDatos(TreeView1.Selected.Parent.Data).Id, []);
        cdSubGrupos.Locate('IdSubGrupo', PDatos(TreeView1.Selected.Data).Id, []);
          if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'iddisciplina', [cdareas.FieldByName('IdDisciplina').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddetespxarxgrxsg.Refresh;
        end;
    end;

  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;



end;


procedure TFrmAsignarInsumosTic.cargardatosmem();
var
  numinsumo_detescp, idsubgrupo_detescp, IdDisciplina_detescp, IdGrupo_detescp,
  IdArticulo_detescp, IdMantto, Recurrencia : integer;
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
    IdGrupo_detescp:= cddetespxarxgrxsg.FieldByName('idgrupo').AsInteger;
    codigoinsumo_detescp:=cddetespxarxgrxsg.FieldByName('codigo').AsString;
    IdArticulo_detescp:=cddetespxarxgrxsg.FieldByName('idarticulo').AsInteger;
    IdMantto:=cddetespxarxgrxsg.FieldByName('idmanttoprev').AsInteger;
    Recurrencia:=cddetespxarxgrxsg.FieldByName('recurrencia').AsInteger;
    while not cddetespxarxgrxsg.Eof do
    begin
      if numinsumo_detescp <> cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger then
      begin
        memespecificados.Append;
        memespecificados.FieldByName('IdDisciplina').AsInteger:= IdDisciplina_detescp;
        memespecificados.FieldByName('IdGrupo').AsInteger:= IdGrupo_detescp;
        memespecificados.FieldByName('IdSubgrupo').AsInteger:= idsubgrupo_detescp;
        memespecificados.FieldByName('Numinsumo').AsInteger:= numinsumo_detescp;
        memespecificados.FieldByName('Articulo').AsString:= tituloarticulo_detescp;
        descripcion_detescp:=descripcion_detescp+'.';
        memespecificados.FieldByName('Descripcion').AsString:= descripcion_detescp;
        memespecificados.FieldByName('Codigo').AsString:=codigoinsumo_detescp;
        memespecificados.FieldByName('IdArticulo').AsInteger:=IdArticulo_detescp;
        memespecificados.FieldByName('idmantto').AsInteger:=IdMantto;
        memespecificados.FieldByName('recurrencia').AsInteger:=Recurrencia;
        memespecificados.Post;
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
        IdMantto:=0;
        IdMantto:=cddetespxarxgrxsg.FieldByName('idmanttoprev').AsInteger;
        Recurrencia:=0;
        Recurrencia:=cddetespxarxgrxsg.FieldByName('recurrencia').AsInteger;
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



end.
