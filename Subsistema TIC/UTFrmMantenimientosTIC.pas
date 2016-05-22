unit UTFrmMantenimientosTIC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ToolPanels, NxCollection, JvExControls, JvLabel,
  DBCtrls, AdvPageControl, ComCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, DB, DBClient, UTFrmDisciplinas, UinteliDialog,
  UTFrmGrupos, UTFrmSubgrupos, UTFrmArticulo2, UTFrmCriteriosBusqeudaTic,
  NxColumns, NxDBColumns, JvMemoryDataset, Grids, DBGrids, NxPageControl, Mask,
  JvExMask, JvToolEdit, StrUtils, frxClass, ExBar, UInfoPanel, URegistro;

  type
    Tbusquedadet = class
    grupo : string;
    subgrupo : string;
    area : string;
    articulo : string;
  end;

  type
    tmanttoprevtipos = class
    tipo : string;
    id : integer;
  end;

  type
     TCriterio = Class
     Llave: Integer;
     Titulo: String;
     constructor Create;
  End;


type
  TFrmMantenimientosTIC = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    AdvToolPanelTab1: TAdvToolPanelTab;
    AdvToolPanel1: TAdvToolPanel;
    AdvToolPanel2: TAdvToolPanel;
    GroupBox1: TGroupBox;
    AdvToolPanel3: TAdvToolPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    JvLabel32: TJvLabel;
    NxButton14: TNxButton;
    NxButton16: TNxButton;
    NxButton17: TNxButton;
    Edit1: TEdit;
    JvLabel27: TJvLabel;
    NxButton9: TNxButton;
    Edit2: TEdit;
    NxButton10: TNxButton;
    JvLabel28: TJvLabel;
    NxButton12: TNxButton;
    Edit6: TEdit;
    JvLabel26: TJvLabel;
    NxButton13: TNxButton;
    Edit3: TEdit;
    JvLabel29: TJvLabel;
    NxButton11: TNxButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit4: TEdit;
    NxButton18: TNxButton;
    JvLabel31: TJvLabel;
    JvLabel30: TJvLabel;
    NextDBGrid1: TNextDBGrid;
    cdactdestxarxgrxsg: TClientDataSet;
    dsactdestxarxgrxsg: TDataSource;
    dsdescripciones: TDataSource;
    cddescripciones: TClientDataSet;
    dscriterios: TDataSource;
    cdcriterios: TClientDataSet;
    cdcriteriosup: TClientDataSet;
    dscriteriosup: TDataSource;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    Splitter1: TSplitter;
    cdsiguientemanttoprev: TClientDataSet;
    dssiguientemanttoprev: TDataSource;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    NxTabSheet3: TNxTabSheet;
    NxTabSheet4: TNxTabSheet;
    Panel1: TPanel;
    NextDBGrid2: TNextDBGrid;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    Memproyeccion: TJvMemoryData;
    dsmemproyeccion: TDataSource;
    memmanttosprev: TClientDataSet;
    dsmemmanttoprev: TDataSource;
    memproyhorizontal: TClientDataSet;
    dsmemproyhorizontal: TDataSource;
    memfechasmantto: TClientDataSet;
    memmanttocriterios: TClientDataSet;
    Panel6: TPanel;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    NxButton2: TNxButton;
    NxButton1: TNxButton;
    Panel7: TPanel;
    NextDBGrid3: TNextDBGrid;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    frxMantenimientos: TfrxReport;
    Panel8: TPanel;
    Panel9: TPanel;
    GroupBox3: TGroupBox;
    NextDBGrid4: TNextDBGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Panel10: TPanel;
    NxButton5: TNxButton;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    GroupBox4: TGroupBox;
    NextDBGrid5: TNextDBGrid;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    NxButton6: TNxButton;
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure NxButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton14Click(Sender: TObject);
    procedure NxButton16Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure NxButton18Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    critbusqueda : Tbusquedadet;
    FExSplitter: TSplitter;
    FExBar: TExBar;
    ListaCriterio: Array[0..3] of TCriterio;
    procedure cargarbusqueda(cadena: string);
    procedure cargarbusquedaxdes();
    procedure ItemClick(Sender: TObject; Id: Integer);
    procedure AccedeACoordenadas;
  public
    { Public declarations }
  end;

var
  FrmMantenimientosTIC: TFrmMantenimientosTIC;

implementation
  uses
    ClientModuleUnit1, xDatabase, UTFrmMantenimientos;
{$R *.dfm}
//..............................................................................
procedure TFrmMantenimientosTIC.ItemClick(Sender: TObject; Id: Integer);
begin
  case Id of
    1:begin
      Nxbutton9.Click;
    end;

    2:begin
      Nxbutton10.Click;
    end;

    3:begin
      Nxbutton11.Click;
    end;

    4:begin
      Nxbutton13.Click;
    end;

    5: begin
        try
          if cdactdestxarxgrxsg.Active = true  then
          begin
            application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
            FrmMantenimientos.dsinsumoseleccionado.DataSet:=cdactdestxarxgrxsg;
            FrmMantenimientos.tipomantenimiento:='PREVENTIVO';
            FrmMantenimientos.ComboBox1.Enabled := FALSE;
            FrmMantenimientos.Edit1.Enabled :=FALSE;
            FrmMantenimientos.ShowModal;
            cdactdestxarxgrxsg.Refresh;
          end
          else
          begin
            InteliDialog.ShowModal('No se ha seleccionado ningun insumo', 'seleccione un insumo para poder generar el mantenimiento' + #10 + #10, mtError, [mbOK], 0);
            //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
          end;
        except
        on e:exception do
        begin
          InteliDialog.ShowModal('Error al cargar la ventana de captura de Mantenimientos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
          PostMessage(Self.Handle, WM_CLOSE, 0, 0);
        end;
  end;
    end;

    6: begin
       try
        if cdactdestxarxgrxsg.Active = true then
        begin
          application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
          FrmMantenimientos.dsinsumoseleccionado.DataSet:=cdactdestxarxgrxsg;
          FrmMantenimientos.tipomantenimiento:='CORRECTIVO';
          FrmMantenimientos.ComboBox1.Enabled := FALSE;
          FrmMantenimientos.Edit1.Enabled :=FALSE;
          FrmMantenimientos.ShowModal;
          cdactdestxarxgrxsg.Refresh;
        end
        else
        begin
           InteliDialog.ShowModal('No se ha seleccionado ningun insumo', 'seleccione un insumo para poder generar el mantenimiento' + #10 + #10, mtError, [mbOK], 0);
           //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
        end;
      except
      on e:exception do
      begin
        InteliDialog.ShowModal('Error al cargar la ventana de captura de Mantenimiento', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
  end;
    end;
    9: begin

    end;
    10: begin

    end;
    11: begin

    end;
  end;
end;

constructor TCriterio.Create;
begin
  Llave := -1;
  Titulo := '';
end;

procedure TFrmMantenimientosTIC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   LiberarVentana(Self, Action);
end;

procedure TFrmMantenimientosTIC.FormCreate(Sender: TObject);
begin

  AccedeACoordenadas;

  // Inicializar llaves de criterio
  ListaCriterio[0] := TCriterio.Create;
  ListaCriterio[1] := TCriterio.Create;
  ListaCriterio[2] := TCriterio.Create;
  ListaCriterio[3] := TCriterio.Create;

  Try
    // Crear el splitter de ancho de panel izquierdo
    FExSplitter := TSplitter.Create(self);
    FExSplitter.Parent := Self;
    FExSplitter.Align := alLeft;

    // Crear el panel izquierdo
    FExBar := TExBar.Create(self);

    Try   // Recuperando ancho de la barra
      FExBar.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'LeftPanelWidth'));
    Except
      ;
    End;

    with FExBar do
    begin
      BeginUpdate;
      SetSkin(InfoPanel.BlueImg.Picture.Bitmap);
      GroupIcons := InfoPanel.Icons32;
      ItemIcons := InfoPanel.Icons16;
      Parent := Self;
      Align := alLeft;
      OnMenuItemClick := ItemClick;

      // Crear el grupo "Archivo"
{
        with FExBar.ExGroups.Add('Archivo', True) do
        begin
          State := gsClosed;
          //AddMenuItem('Nuevo...', 'Nuevo', 0, 0);
        end;

}     with FExBar.ExGroups.Add('Busqueda', True) do
      begin
        GroupIconIndex := 3;
        AddMenuItem('Área: <Todas las áreas>', 'Haga click aquí para filtrar los datos por Área', 1, 0);
        AddMenuItem('Grupo: <Todos los grupos>', 'Haga click aquí para filtrar los datos por Grupo', 2, 0);
        AddMenuItem('Subgrupo: <Todos los Subgrupos>', 'Haga click aquí para filtrar los datos por Subgrupo', 3, 0);
        AddMenuItem('Artículo: <Todos los Artículos>', 'Haga click aquí para filtrar los datos por Artículo', 4, 0);
        AddLine('', clBlack, [], False);
      end;

      with FExBar.ExGroups.Add('Capturar Mantenimiento', True) do
      begin
       State := gsClosed;
        AddMenuItem('Capturar mantenimiento Preventivo', 'Hga click aquí para capturar un evento de mantenimiento Preventivo', 5, 0);
        AddMenuItem('Capturar Mantenimiento Correctivo', 'Hga click aquí para ver mantenimiento', 6, 0);
      end;

      with FExBar.ExGroups.Add('Reportes', True) do
      begin
        State := gsClosed;
        AddMenuItem('Proyeccion De Mantenimientos', 'Haga click aquí si desea emitir el reporte de los equipos asignados', 6, 0);
        AddMenuItem('Ver mantenimiento', 'Hga click aquí para ver mantenimiento', 7, 0);
      end;

      with FExBar.ExGroups.Add('Descripcion', True) do
      begin
        AddLine('Codigo Insumo:', clBlack, [fsBold], True);
        AddLine('', clblack, [], True);
        AddLine('Articulo', clblack, [fsBold], True);
        AddLine('', clblack, [], True);
        AddLine('Descripcion', clblack, [fsBold], True);
        AddLine('', clblack, [], True)
      end;
      EndUpdate;
      ShowAnimate;
    end;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al crear el formulario', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmMantenimientosTIC.FormDestroy(Sender: TObject);
  var
    h : integer;
begin
  try
   for h := 0 to NextDBGrid1.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid1.Name, NextDBGrid1.Columns.Item[h].Name, IntToStr(NextDBGrid1.Columns.Item[h].Width));
  except
    on  e:exception do
    begin
      InteliDialog.ShowModal('Error al destruir la ventana', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
  OldState: TWindowState;
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

  // Por default la ventana será tratada como Normal
  OldState := wsNormal;

  // Verificar si la ventana estaba maximizada al cerrarla la última vez
  if (xHeight = 0) or (xWidth = 0) then
    OldState := wsMaximized;

  if (xHeight = -10) or (xWidth = -10) then
    OldState := wsMinimized;

  // Posicionar la ventana en su último lugar
  Self.Left := xLeft;
  Self.Top := xTop;
  if OldState = wsNormal then
  begin
  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Width := xWidth;
  Self.Height := xHeight;
  end
  else
    Self.WindowState := OldState;
end;
//..............................................................................

procedure TFrmMantenimientosTIC.FormShow(Sender: TObject);
var
  h: integer;
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;

    Try
      InicializarProgress(0, 3, 0);

      ClientModule1.ComponentColor(self);
      for h := 0 to NextDbGrid1.Columns.Count -1 do
      Try
        NextDbGrid1.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDbGrid1.Name, NextDbGrid1.Columns.Item[h].Name));
      Except
      ;
      End;

      IncrementarProgress(1);
      if Not CrearConjunto(cddescripciones, 'alm_especdetalle', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      cddescripciones.open;

      IncrementarProgress(1);
      if Not CrearConjunto(cdcriterios, 'tic_criteriostic', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdcriterios, 'idcriteriostic', [-1]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdcriterios.open;

      IncrementarProgress(1);
      if Not CrearConjunto(cdcriteriosup, 'tic_criteriostic', ccUpdate) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdcriteriosup, 'idcriteriostic', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdcriteriosup.open;

      memmanttocriterios:=TClientDataset.Create(self);
      memmanttocriterios.FieldDefs.Clear;
      memmanttocriterios.FieldDefs.Add('idcriterio', ftInteger, 0, false);
      memmanttocriterios.FieldDefs.Add('critmantto', ftString, 200, false);
      memmanttocriterios.CreateDataSet;
      memmanttocriterios.Open;
      memmanttocriterios.Append;
      memmanttocriterios.FieldByName('idcriterio').AsInteger:=1;
      memmanttocriterios.FieldByName('critmantto').AsString:='Mantto. No realizado';
      memmanttocriterios.Post;
      memmanttocriterios.Append;
      memmanttocriterios.FieldByName('idcriterio').AsInteger:=2;
      memmanttocriterios.FieldByName('critmantto').AsString:='Próximo';
      memmanttocriterios.Post;
      memmanttocriterios.Append;
      memmanttocriterios.FieldByName('idcriterio').AsInteger:=3;
      memmanttocriterios.FieldByName('critmantto').AsString:='Próximo (Urgente)';
      memmanttocriterios.Post;
      memmanttocriterios.Append;
      memmanttocriterios.FieldByName('idcriterio').AsInteger:=4;
      memmanttocriterios.FieldByName('critmantto').AsString:='Programado';
      memmanttocriterios.Post;
    Finally
      Screen.Cursor := Cursor;
      AsignarProgress(0);
    End;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la ventana', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton10Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmGrupos;
  titulogrupo : string;
begin
  try
    tForm := TFrmGrupos.Create(nil);

    if edit1.Text<>'' then
    begin
    tform.edtFArea.Text:=edit1.Text;
    end;

    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      titulogrupo:=registro.Valor['titulogrupo'];;
      //edit2.Text:='';
      //edit2.Text := registro.Valor['titulogrupo'];
    end;
    tForm.Free;
        if (edit1.Text<>'') or (edit3.Text<>'') then
        begin
          if InteliDialog.ShowModal('Criterios establecidos anteriormente',
          'Ya tiene criterios de busqueda seleccionados, para no afectar la bsuqueda deben eliminar los criteriso anteriores '
          + #10 + #10 + '¿Desea eliminar lso criterios anteriores?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            edit1.Text:='';
            edit3.Text:='';
            edit2.Text:='';
            edit2.Text := titulogrupo;
          end
          else
          begin
            edit2.Text:='';
            edit2.Text := titulogrupo;
          end;
        end
        else
        begin
          edit2.Text:='';
          edit2.Text := titulogrupo;
        end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la ventana de bsuqueda de grupos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton11Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmSubgrupos;
  titulosubgrupo : string;
begin
  try
    tForm := TFrmSubgrupos.Create(nil);

    if edit1.Text<>'' then
    begin
    tform.edtFArea.Text:=edit1.Text;
    end;

    if edit2.Text<>'' then
    begin
    tform.edtFGrupo.Text:=edit2.Text;
    end;

    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      titulosubgrupo:=registro.Valor['titulosubgrupo'];
      //edit3.Text:='';
      //edit3.Text := registro.Valor['titulosubgrupo'];
    end;
    tForm.Free;
     if (edit1.Text<>'') or (edit2.Text<>'') then
        begin
          if InteliDialog.ShowModal('Criterios establecidos anteriormente',
          'Ya tiene criterios de busqueda seleccionados, para no afectar la bsuqueda deben eliminar los criteriso anteriores '
          + #10 + #10 + '¿Desea eliminar lso criterios anteriores?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            edit1.Text:='';
            edit2.Text:='';
            edit3.Text:='';
            edit3.Text := titulosubgrupo;
          end
          else
          begin
            edit3.Text:='';
            edit3.Text := titulosubgrupo;
          end;
        end
        else
        begin
          edit3.Text:='';
          edit3.Text := titulosubgrupo;
        end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la ventana de bsuqueda de Subgrupos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton12Click(Sender: TObject);
  var
    consultautilizada : string;
begin
    critbusqueda:=tbusquedadet.Create;
    if edit1.Text<>'' then
    begin
      critbusqueda.area:='%'+edit1.Text+'%';
    end
    else
    begin
      critbusqueda.area:='-1';
    end;

    if edit2.Text<>'' then
    begin
      critbusqueda.grupo:='%'+edit2.Text+'%';
    end
    else
    begin
      critbusqueda.grupo:='-1';
    end;

    if edit3.Text<>'' then
    begin
      critbusqueda.subgrupo:='%'+edit3.Text+'%';
    end
    else
    begin
      critbusqueda.subgrupo:='-1';
    end;

    if edit6.Text<>'' then
    begin
      critbusqueda.articulo:='%'+edit6.Text+'%';
    end
    else
    begin
      critbusqueda.articulo:='-1';
    end;
    cdactdestxarxgrxsg.Close;
    Eliminarconjunto(cdactdestxarxgrxsg.ProviderName);
    consultautilizada:='titulodisciplina, titulogrupo, titulosubgrupo, tituloarticulo';
    cargarbusqueda(consultautilizada);
end;

procedure TFrmMantenimientosTIC.NxButton13Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmArticulo2;
begin
  try
    tForm := TFrmArticulo2.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      edit6.Text:='';
      edit6.Text := registro.Valor['tituloarticulo'];
    end;
    tForm.Free;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la ventana de bsuqueda de Articulos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton14Click(Sender: TObject);
begin
  try
  application.CreateForm(TFrmCriteriosBusqeudaTic, FrmCriteriosBusqeudaTic);
  FrmCriteriosBusqeudaTic.dscriteriosupdate.DataSet:=cdcriteriosup;
  FrmCriteriosBusqeudaTic.ShowModal;
  cdcriterios.Refresh;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la ventana de bsuqueda de Criterios', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton16Click(Sender: TObject);
begin
  try
    if (dblookupcombobox1.KeyValue = null) then
      raise InteligentException.Create('Debe de Seleccionar un Item para poder eliminarlo');
    if Not CargarDatosFiltrados(cdcriteriosup, 'idcriteriostic', [cdcriterios.FieldByName('idcriteriostic').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdcriteriosup.Refresh;
    cdcriteriosup.Delete;
    cdcriteriosup.ApplyUpdates(-1);
    cdcriterios.Refresh;
    dblookupcombobox1.Refresh;
  except
   on e:InteligentException do
      begin
        InteliDialog.ShowModal('Ha ocurrido al eliminar un criterio', e.Message, mtError, [mbOk], 0);
      end;
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al eliminar un criterio', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton18Click(Sender: TObject);
begin
  cargarbusquedaxdes;
end;

procedure TFrmMantenimientosTIC.NxButton1Click(Sender: TObject);
var
  ultimafecha : Tdate;
  primerfecha, segundadafecha : tdatetime;
  guardarfechas : tstringlist;
  numinsumo : tstringlist;
  fechaactual, ultimafechastr, anual, dias : string;
  repetido, ultimafechabo : boolean;
  i, idmanttoproy, recurrencia, j : integer;
  bancambioins : boolean;
begin
  try
    if (cdactdestxarxgrxsg.RecordCount=0) or (cdactdestxarxgrxsg.Active=false) then
    raise Exception.Create('No hay resultados en la busqueda asi que no puede generarse al proyeccion de mantenimientos');

    idmanttoproy:=0;
    repetido:=false;
    guardarfechas:=tstringlist.Create;
    numinsumo:=tstringlist.Create;
    memmanttosprev:=TClientDataset.Create(self);
    memmanttosprev.FieldDefs.Clear;
    memmanttosprev.FieldDefs.Add('Numinsumo', ftInteger, 0, false);
    memmanttosprev.FieldDefs.Add('Fecha', ftDate, 0, false);
    memmanttosprev.FieldDefs.Add('idmanttoproy', ftInteger, 0, false);
    memmanttosprev.FieldDefs.Add('critmanttoproy', ftString, 200, false);
    memmanttosprev.CreateDataSet;
    memmanttosprev.Open;

    memfechasmantto:=TClientDataset.Create(self);
    memfechasmantto.FieldDefs.Clear;
    memfechasmantto.FieldDefs.Add('Fecha', ftDate, 0, false);
    memfechasmantto.CreateDataSet;
    memfechasmantto.Open;

    if cdsiguientemanttoprev.Active=false then
    raise Exception.Create('No se han encontrado datos');

    primerfecha:=JvDateEdit1.Date;
    segundadafecha:= JvDateEdit2.Date;
    cdsiguientemanttoprev.First;
    while not cdsiguientemanttoprev.Eof do
    begin
      if cdsiguientemanttoprev.FieldByName('recurrenciaaux').AsInteger>0 then
      begin
        //........................control de recurrencia........................
        bancambioins:=false;
        recurrencia:=0;
        //......................................................................
        numinsumo.Add(inttostr(cdsiguientemanttoprev.FieldByName('numinsumoespecificado').AsInteger));
        //.................insercion de conversion................................
        ultimafechastr:=cdsiguientemanttoprev.FieldByName('proximomantto').AsString;
        ultimafechabo :=AnsiContainsStr(ultimafechastr, '-');
        while ultimafechabo=true do
        begin
          ultimafechastr:=AnsiReplaceStr(ultimafechastr, '-', '/');
          ultimafechabo :=AnsiContainsStr(ultimafechastr, '-');
        end;
        anual:=ansimidstr(ultimafechastr, 0, 4);
        dias:=ansimidstr(ultimafechastr, 9, 2);
        ultimafechastr:=AnsiReplaceStr(ultimafechastr, dias, anual);
        ultimafechastr:=stringreplace(ultimafechastr, anual, dias, []);
        ultimafecha:=strtodate(ultimafechastr);
      //........................................................................
      //ultimafecha:=cdsiguientemanttoprev.FieldByName('proximomantto').AsDateTime;
      while ultimafecha < segundadafecha do
      begin
        if ultimafecha > primerfecha then
        begin
          //ultimafecha:=ultimafecha+(cdsiguientemanttoprev.FieldByName('recurrencia').AsInteger);
          idmanttoproy:=idmanttoproy+1;

          //..............control de tipo de mantto.............................
          if (recurrencia>0) and (bancambioins=false) then
          begin
            memmanttocriterios.IndexFieldNames:='idcriterio';
            memmanttocriterios.SetRange([1],[1]);
            memmanttosprev.Append;
            memmanttosprev.FieldByName('Numinsumo').AsInteger:=cdsiguientemanttoprev.FieldByName('numinsumoespecificado').AsInteger;
            memmanttosprev.FieldByName('Fecha').AsDateTime:=ultimafecha;
            memmanttosprev.FieldByName('idmanttoproy').AsInteger:=memmanttocriterios.FieldByName('idcriterio').AsInteger;
            memmanttosprev.FieldByName('critmanttoproy').AsString:=memmanttocriterios.FieldByName('critmantto').AsString;
            memmanttosprev.Post;
            memmanttocriterios.CancelRange;
          end
          else
          begin
            memmanttosprev.Last;
            if memmanttosprev.FieldByName('Numinsumo').AsInteger=cdsiguientemanttoprev.FieldByName('numinsumoespecificado').AsInteger then
            begin
              if memmanttosprev.FieldByName('idmanttoproy').AsInteger = 1 then
              begin
                memmanttocriterios.IndexFieldNames:='idcriterio';
                memmanttocriterios.SetRange([3],[3]);
                memmanttosprev.Append;
                memmanttosprev.FieldByName('Numinsumo').AsInteger:=cdsiguientemanttoprev.FieldByName('numinsumoespecificado').AsInteger;
                memmanttosprev.FieldByName('Fecha').AsDateTime:=ultimafecha;
                memmanttosprev.FieldByName('idmanttoproy').AsInteger:=memmanttocriterios.FieldByName('idcriterio').AsInteger;
                memmanttosprev.FieldByName('critmanttoproy').AsString:=memmanttocriterios.FieldByName('critmantto').AsString;
                memmanttosprev.Post;
                memmanttocriterios.CancelRange;
              end
              else
              begin
                memmanttocriterios.IndexFieldNames:='idcriterio';
                memmanttocriterios.SetRange([4],[4]);
                memmanttosprev.Append;
                memmanttosprev.FieldByName('Numinsumo').AsInteger:=cdsiguientemanttoprev.FieldByName('numinsumoespecificado').AsInteger;
                memmanttosprev.FieldByName('Fecha').AsDateTime:=ultimafecha;
                memmanttosprev.FieldByName('idmanttoproy').AsInteger:=memmanttocriterios.FieldByName('idcriterio').AsInteger;
                memmanttosprev.FieldByName('critmanttoproy').AsString:=memmanttocriterios.FieldByName('critmantto').AsString;
                memmanttosprev.Post;
                memmanttocriterios.CancelRange;
              end;
            end
            else
            begin
                memmanttocriterios.IndexFieldNames:='idcriterio';
                memmanttocriterios.SetRange([4],[4]);
                memmanttosprev.Append;
                memmanttosprev.FieldByName('Numinsumo').AsInteger:=cdsiguientemanttoprev.FieldByName('numinsumoespecificado').AsInteger;
                memmanttosprev.FieldByName('Fecha').AsDateTime:=ultimafecha;
                memmanttosprev.FieldByName('idmanttoproy').AsInteger:=memmanttocriterios.FieldByName('idcriterio').AsInteger;
                memmanttosprev.FieldByName('critmanttoproy').AsString:=memmanttocriterios.FieldByName('critmantto').AsString;
                memmanttosprev.Post;
                memmanttocriterios.CancelRange;
            end;
          end;
          //....................................................................
          fechaactual:= datetostr(ultimafecha);
          if guardarfechas.Count=0 then
          begin
            guardarfechas.Add(fechaactual);
            memfechasmantto.Append;
            memfechasmantto.FieldByName('fecha').AsDateTime:=ultimafecha;
            memfechasmantto.Post;
          end
          else
          begin
            repetido:=false;
            for i := 0 to guardarfechas.Count-1 do
            begin
              if guardarfechas[i]=fechaactual then
              begin
                repetido:=true;
              end;
            end;
            if repetido=false then
            begin
              guardarfechas.Add(fechaactual);
              memfechasmantto.Append;
              memfechasmantto.FieldByName('fecha').AsDateTime:=ultimafecha;
              memfechasmantto.Post;
            end
            else
            begin
              repetido:=false;
            end;
          end;

        ultimafecha:=ultimafecha+(cdsiguientemanttoprev.FieldByName('recurrencia').AsInteger);
        bancambioins:=true;
        end
        else
        begin
          ultimafecha:=ultimafecha+(cdsiguientemanttoprev.FieldByName('recurrencia').AsInteger);
          //................control de recurrencia..............................
          recurrencia:=recurrencia+1;
          //....................................................................
        end;
      end;
      end;
      cdsiguientemanttoprev.Next;
    end;
    //dsmemmanttoprev.DataSet:=memmanttosprev;
    //nextdbgrid3.DataSource:= dsmemmanttoprev;
    showmessage(inttostr(guardarfechas.Count));
    //...........dataset en memoria para mostrar los proximos manttos...........
    memproyhorizontal:=TClientDataset.Create(self);
    memproyhorizontal.FieldDefs.Clear;
    memproyhorizontal.FieldDefs.Add('Numero Insumo', ftString, 20, false);
    //..........................................................................
   // for i := 0 to guardarfechas.Count-1 do
   // begin
     // memproyhorizontal.FieldDefs.Add(guardarfechas[i], ftDate, 0, false);
   // end;
    //..........................................................................
    memfechasmantto.IndexFieldNames:='Fecha';
    memfechasmantto.First;
    while not memfechasmantto.Eof do
    begin
      memproyhorizontal.FieldDefs.Add(datetostr(memfechasmantto.FieldByName('Fecha').AsDateTime), ftString, 45, false);
      memfechasmantto.Next;
    end;
    memproyhorizontal.CreateDataSet;
    memproyhorizontal.Open;

    dsmemproyhorizontal.DataSet:=memproyhorizontal;
    nextdbgrid3.DataSource:= dsmemproyhorizontal;

    dsmemmanttoprev.DataSet:=memmanttosprev;

    for i := 0 to numinsumo.Count-1 do
    begin
      memmanttosprev.IndexFieldNames:='Numinsumo;fecha';
      memmanttosprev.SetRange([strtoint(numinsumo[i])], [strtoint(numinsumo[i])]);
      memmanttosprev.first;
      memproyhorizontal.Append;
      memproyhorizontal.FieldByName('Numero Insumo').AsInteger:=memmanttosprev.FieldByName('Numinsumo').AsInteger;
        for j := 1 to memproyhorizontal.FieldCount-1 do
        begin
          if memproyhorizontal.FieldDefs.Items[j].Name=datetostr(memmanttosprev.FieldByName('fecha').AsDateTime) then
          begin
            memproyhorizontal.FieldByName(memproyhorizontal.FieldDefs.Items[j].Name).AsString:=memmanttosprev.FieldByName('critmanttoproy').AsString;
            memmanttosprev.Next;
          end;
        end;
      memproyhorizontal.Post;
      memmanttosprev.CancelRange;
    end;
    //..............Insercion de leyendas.......................................

    //..........................................................................
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

procedure TFrmMantenimientosTIC.NxButton3Click(Sender: TObject);
begin
  try
    application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
    FrmMantenimientos.dsinsumoseleccionado.DataSet:=cdactdestxarxgrxsg;
    FrmMantenimientos.tipomantenimiento:='PREVENTIVO';
    FrmMantenimientos.ComboBox1.Enabled := FALSE;
    FrmMantenimientos.Edit1.Enabled :=FALSE;
    FrmMantenimientos.ShowModal;
    cdactdestxarxgrxsg.Refresh;
  except
      on e:exception do
      begin
        InteliDialog.ShowModal('Error al cargar la ventana de captura de Mantenimientos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton4Click(Sender: TObject);
begin
  try
    application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
    FrmMantenimientos.dsinsumoseleccionado.DataSet:=cdactdestxarxgrxsg;
    FrmMantenimientos.tipomantenimiento:='CORRECTIVO';
    FrmMantenimientos.ComboBox1.Enabled := FALSE;
    FrmMantenimientos.Edit1.Enabled :=FALSE;
    FrmMantenimientos.ShowModal;
    cdactdestxarxgrxsg.Refresh;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la ventana de captura de Mantenimiento', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.NxButton9Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmDisciplinas;
  tituloarea : string;
begin
  try
    tForm := TFrmDisciplinas.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
    tituloarea:=registro.Valor['titulodisciplina'];
    end;
    tForm.Free;
        if (edit2.Text<>'') or (edit3.Text<>'') then
        begin
          if InteliDialog.ShowModal('Criterios establecidos anteriormente',
          'Ya tiene criterios de busqueda seleccionados, para no afectar la bsuqueda deben eliminar los criteriso anteriores '
          + #10 + #10 + '¿Desea eliminar lso criterios anteriores?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            edit2.Text:='';
            edit3.Text:='';
            edit1.Text:='';
            edit1.Text := tituloarea;
          end
          else
          begin
            edit1.Text:='';
            edit1.Text := tituloarea;
          end;
        end
        else
        begin
          edit1.Text:='';
          edit1.Text := tituloarea;
        end;
  except
  on e:exception do
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmMantenimientosTIC.cargarbusqueda(cadena: string);
begin
  try
      if cdactdestxarxgrxsg.Active=false then
    begin
      if Not CrearConjunto(cdactdestxarxgrxsg, 'tic_actdestesp_xar_xgr_sg', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdactdestxarxgrxsg, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdactdestxarxgrxsg.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdactdestxarxgrxsg, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdactdestxarxgrxsg.Refresh;
    end;

    //...........Siguiente Mantto prev..........................................
    if cdsiguientemanttoprev.Active=false then
    begin
      if Not CrearConjunto(cdsiguientemanttoprev, 'tic_mantto_auxiliares3', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.Refresh;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al buscar lso insumos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.cargarbusquedaxdes();
begin
  try
      if cdactdestxarxgrxsg.Active=false then
    begin
      if Not CrearConjunto(cdactdestxarxgrxsg, 'tic_actdestesp_xar_xgr_sg', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdactdestxarxgrxsg, 'idcampodetalle, campocadena', [cddescripciones.FieldByName('IdDetalle').AsInteger, edit4.Text]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdactdestxarxgrxsg.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdactdestxarxgrxsg, 'idcampodetalle, campocadena', [cddescripciones.FieldByName('IdDetalle').AsInteger, edit4.Text]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdactdestxarxgrxsg.Refresh;
    end;
    //...........Siguiente Mantto prev..........................................
    if cdsiguientemanttoprev.Active=false then
    begin
      if Not CrearConjunto(cdsiguientemanttoprev, 'tic_mantto_auxiliares3', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, 'idcampodetalle, campocadena', [cddescripciones.FieldByName('IdDetalle').AsInteger, edit4.Text]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, 'idcampodetalle, campocadena', [cddescripciones.FieldByName('IdDetalle').AsInteger, edit4.Text]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.Refresh;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la busqeuda de insumos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMantenimientosTIC.CheckBox1Click(Sender: TObject);
begin
  try
   if checkbox1.Checked=true then
   begin
     cdactdestxarxgrxsg.IndexFieldNames:='recurrencia;numinsumoespecificado';
     cdactdestxarxgrxsg.SetRange([1],[MaxInt]);
   end
   else
   begin
    cdactdestxarxgrxsg.CancelRange;
    cdactdestxarxgrxsg.IndexFieldNames:='numinsumoespecificado';
  end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al filtrar los resultados de la busqueda', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
