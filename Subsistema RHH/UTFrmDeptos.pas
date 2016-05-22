unit UTFrmDeptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxorgchr, cxContainer, cxEdit,
  cxGroupBox, dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbon, Menus, StdCtrls,
  cxButtons, cxTextEdit, ComCtrls, cxTreeView, ClientModuleUnit1, UInteliDialog,
  DB, DBClient, cxSplitter, cxMemo, cxLabel, dxRibbonRadialMenu,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinsForm, cxListBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid;

type
  TDeptos = class
    identificador: Integer;
    Indice: Integer;
    Descripcion: string;
  end;

  TDataDeptos = class
    identificador: Integer;
    Indice: Integer;
    Descripcion: string;
    idOrganización: Integer;
    idDepto: Integer;
    idPadre: Integer;
  end;

  TNodo = class
    IdOrganizacion: Integer;
    NombreOrganizaion: string;
    wbs: String;
    CodigoOrganizacion: string;
    Padre: Integer;
    Nivel: Integer;
  end;

  TFrmDeptos = class(TForm)
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    Btn_agregar: TdxBarLargeButton;
    Btn_editar: TdxBarLargeButton;
    Btn_quitar: TdxBarLargeButton;
    Btn_refresh: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    DxBarBtnNuevo: TdxBarLargeButton;
    DxBarBtnEditar: TdxBarButton;
    DxBarBtnEliminar: TdxBarButton;
    DxBarBtnModificar: TdxBarButton;
    dsOrganizacion: TDataSource;
    CdOrganizacion: TClientDataSet;
    cdNivel: TClientDataSet;
    CdDeptosUpt: TClientDataSet;
    DxRadialPrincipal: TdxRibbonRadialMenu;
    DxBarBtnZoom: TdxBarLargeButton;
    cxGBOrganizacion: TcxGroupBox;
    CxTVOrganizaciones: TcxTreeView;
    cxGBDeptos: TcxGroupBox;
    dxOrgChart1: TdxOrgChart;
    Plazas: TdxBarButton;
    cxGBDatos: TcxGroupBox;
    CxBtnAceptar: TcxButton;
    CxBtnClose: TcxButton;
    cxMemo1: TcxMemo;
    CxLbl1: TcxLabel;
    CxLbl2: TcxLabel;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CxTextEdtEtiqueta: TcxTextEdit;
    CxTextEdtDescripcion: TcxTextEdit;
    CxTextEdtTitulo: TcxTextEdit;
    CxTextEdtCodigo: TcxTextEdit;
    dxskncntrlr1: TdxSkinController;
    cdPersonalIncluido: TClientDataSet;
    CxGroupPersonalIncluido: TcxGroupBox;
    lstPersonal: TcxListBox;
    cxspltr1: TcxSplitter;
    cxSplitter1: TcxSplitter;
    CxGrid2: TcxGrid;
    CxDbGridPersonalIncluido: TcxGridDBTableView;
    cxLevel1: TcxGridLevel;
    CxColumnEmpleado: TcxGridDBColumn;
    CxColumnReingreso: TcxGridDBColumn;
    CxColumnCargo: TcxGridDBColumn;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    dsPersonalIncluido: TDataSource;    procedure Btn_agregarClick(Sender: TObject);
    procedure dxOrgChart1Click(Sender: TObject);
    procedure CxBtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxTVOrganizacionesChange(Sender: TObject; Node: TTreeNode);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_refreshClick(Sender: TObject);
    procedure CxBtnCloseClick(Sender: TObject);
    procedure DxBarBtnZoomClick(Sender: TObject);
    procedure Btn_quitarClick(Sender: TObject);
    procedure Btn_editarClick(Sender: TObject);
  private
    gForm: TForm;
    mResult: Integer;
    LocOrganizacion: Integer;
    procedure crearArbolOrganizaciones(IdNodo: Integer);
    Procedure crearDiagrama(idNodo: Integer);
    Procedure CargarPersonaldepto(IdOrganizacion: Integer);
    procedure llenarLbox(Data: TClientDataset; Campo: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDeptos: TFrmDeptos;

implementation

{$R *.dfm}

procedure TFrmDeptos.Btn_agregarClick(Sender: TObject);
begin
  try
    if not CargarDatosFiltrados(CdDeptosUpt, 'idDepartamento', [-9]) then
      raise InteligentException.CreateByCode(6, ['IdDepartamento', 'Departamentos', '-9']);

    if CdDeptosUpt.Active then
      CdDeptosUpt.Refresh
    else
      CdDeptosUpt.Open;

    CdDeptosUpt.Append;
    gForm := TForm.Create(Self);
    gForm.Name := 'FrmAdd';
    gForm.Width := 335;
    gForm.Height := 365;
    gForm.Caption := 'Departamento Nuevo';
    gForm.BorderStyle := bsToolWindow;
    cxGBDatos.Parent := gForm;
    cxGBDatos.Visible := True;
    cxGBDatos.Align := alClient;
    mResult := mrCancel;
    CxTextEdtCodigo.Text := '';
    CxTextEdtTitulo.Text := '';
    CxTextEdtEtiqueta.Text := '';
    CxTextEdtDescripcion.Text := '';
    cxMemo1.Text := '';
    gForm.ShowModal;
    if mResult = mrOk then
      ;//no hagas nada jajaja
  finally
    cxGBDatos.Align := alNone;
    cxGBDatos.Visible := False;
    cxGBDatos.Parent := Self;
    if Assigned(TForm(FindComponent('FrmAdd'))) then
      TForm(FindComponent('FrmAdd')).Destroy;
  end;
end;

procedure TFrmDeptos.Btn_editarClick(Sender: TObject);
var
  locIdDepto: Integer;
  LocNodo: TdxOcNode;
begin
  try
    locIdDepto := TDataDeptos(dxOrgChart1.Selected.Data).idDepto;
    LocNodo := dxOrgChart1.Selected;
    try
      if not CargarDatosFiltrados(CdDeptosUpt, 'idDepartamento', [locIdDepto]) then
        raise InteligentException.CreateByCode(6, ['IdDepartamento', 'Departamentos', '-9']);

      if CdDeptosUpt.Active then
        CdDeptosUpt.Refresh
      else
        CdDeptosUpt.Open;

      if CdDeptosUpt.RecordCount = 0 then
        raise InteligentException.CreateByCode(13, [VarToStr(TDataDeptos(dxOrgChart1.Selected.Data).Descripcion), 'Departamentos']);

      CdDeptosUpt.edit;
      gForm := TForm.Create(Self);
      gForm.Name := 'frmAdd';
      gForm.Width := 335;
      gForm.Height := 365;
      gForm.Caption := 'Departamento Nuevo';
      gForm.BorderStyle := bsToolWindow;
      cxGBDatos.Parent := gForm;
      cxGBDatos.Visible := True;
      cxGBDatos.Align := alClient;
      mResult := mrCancel;
      CxTextEdtCodigo.Text := CdDeptosUpt.FieldByName('codigodepartamento').AsString ;
      CxTextEdtTitulo.Text := CdDeptosUpt.FieldByName('TituloDepartamento').AsString;
      CxTextEdtEtiqueta.Text := CdDeptosUpt.FieldByName('Etiqueta').AsString;
      CxTextEdtDescripcion.Text := CdDeptosUpt.FieldByName('Descripcion').AsString;
      cxMemo1.Text := CdDeptosUpt.FieldByName('comentarios').AsString;
      gForm.ShowModal;

      if mResult = mrOk then
        ;//no hagas nada jajaja
    finally
      cxGBDatos.Align := alNone;
      cxGBDatos.Visible := False;
      cxGBDatos.Parent := Self;
      if Assigned(TForm(FindComponent('FrmAdd'))) then
        TForm(FindComponent('FrmAdd')).Destroy;
    end;
//      CdDeptosUpt.Edit;
//      CdDeptosUpt.FieldByName('Activo').AsString := 'No';
//      CdDeptosUpt.Post;
//      CdDeptosUpt.ApplyUpdates(-1);

  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDeptos.Btn_quitarClick(Sender: TObject);
var
  locIdDepto: Integer;
  LocNodo: TdxOcNode;
begin
  try
    locIdDepto := TDataDeptos(dxOrgChart1.Selected.Data).idDepto;
    LocNodo := dxOrgChart1.Selected;
    try
      if not CargarDatosFiltrados(CdDeptosUpt, 'idDepartamento', [locIdDepto]) then
        raise InteligentException.CreateByCode(6, ['IdDepartamento', 'Departamentos', '-9']);

      if CdDeptosUpt.Active then
        CdDeptosUpt.Refresh
      else
        CdDeptosUpt.Open;

      if CdDeptosUpt.RecordCount = 0 then
        raise InteligentException.CreateByCode(13, [VarToStr(TDataDeptos(dxOrgChart1.Selected.Data).Descripcion), 'Departamentos']);

      if InteliDialog.ShowModal('Confirmación', '¿Estás seguro que deseas eliminar este departamento [' + VarToStr(TDataDeptos(dxOrgChart1.Selected.Data).Descripcion) + ']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        CdDeptosUpt.Edit;
        CdDeptosUpt.FieldByName('Activo').AsString := 'No';
        CdDeptosUpt.Post;
        CdDeptosUpt.ApplyUpdates(-1);
        //Borrar el Nodo en el Diagrama
        dxOrgChart1.Delete(LocNodo);
      end;
    finally
      locIdDepto := 0;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDeptos.Btn_refreshClick(Sender: TObject);
begin
  CxTVOrganizacionesChange(nil,CxTVOrganizaciones.Selected);
end;

procedure TFrmDeptos.CargarPersonaldepto(IdOrganizacion: Integer);
var
  Cursor: TCursor;
begin
  try
    try
      Cursor := Screen.Cursor;
      Screen.Cursor := CrAppStart;

      if not CargarDatosFiltrados(cdPersonalIncluido, 'IdOrganizacion', [IdOrganizacion]) then
        raise InteligentException.CreateByCode(6, ['nuc_personalxDepto', 'IdOrganizacion', inttostr(IdOrganizacion)]);

      if cdPersonalIncluido.Active then
        cdPersonalIncluido.refresh
      else
        cdPersonalIncluido.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDeptos.crearArbolOrganizaciones(IdNodo: Integer);
var
  //Grupos: TdxGalleryControlGroup;
  i, norec, idOrg: Integer;
  oNodo : TNodo;
  SuperPadre: TTreeNode;
  //oNodo: TDatosNodo;
  Inicial: TTreeNode;
  Padre: TTreeNode;
  Found: Boolean;
  NodoSeleccionar: TTreeNode;
begin
  try
    CxTVOrganizaciones.Items.BeginUpdate;
    CxTVOrganizaciones.Items.Clear;
    NodoSeleccionar := Nil;
    i := -5;

    oNodo := TNodo.Create;
    oNodo.Padre := -5;
    oNodo.IdOrganizacion := -5;
    oNodo.Nivel := -5;
    oNodo.Wbs := '';
    oNodo.CodigoOrganizacion := '';

    Inicial := CxTVOrganizaciones.Items.AddChildObject(Nil, 'ORGANIZACION:', Pointer(oNodo));
    cdOrganizacion.First;
    while Not cdOrganizacion.Eof do
    begin
      oNodo := TNodo.Create;
      oNodo.Padre := -5;

      // Localizar el padre
      Padre := Inicial;
      if cdOrganizacion.FieldByName('Padre').AsInteger > 0 then
      begin
        i := 0;
        Found := False;
        while (i < CxTvOrganizaciones.Items.Count) and Not Found do
        begin
          Found := TNodo(CxTvOrganizaciones.Items.Item[i].Data).IdOrganizacion = cdOrganizacion.FieldByName('Padre').AsInteger;
          if Not Found then Inc(i);
        end;
        if Found then
        begin
          Padre := CxTVOrganizaciones.Items.Item[i];
          ONodo.Padre := TNodo(Padre.Data).Nivel;
        end;
      end;

      oNodo.Nivel := cdOrganizacion.FieldByName('IdNivel').AsInteger;
      oNodo.IdOrganizacion := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
      oNodo.Wbs := cdOrganizacion.FieldByName('Wbs').AsString;
      oNodo.CodigoOrganizacion := cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;

      if cdOrganizacion.FieldByName('IdOrganizacion').AsInteger = IdNodo then
        NodoSeleccionar := CxTVOrganizaciones.Items.AddChildObject(Padre, '(' + cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + ')  ' + cdOrganizacion.FieldByName('TituloOrganizacion').AsString, Pointer(oNodo))
      else
        CxTVOrganizaciones.Items.AddChildObject(Padre, '(' + cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + ')  ' + cdOrganizacion.FieldByName('TituloOrganizacion').AsString, Pointer(oNodo));
      cdOrganizacion.Next;
    end;
    if CxTVOrganizaciones.Items.Count > 0 then
    if Assigned(NodoSeleccionar) then
      CxTVOrganizaciones.Selected := NodoSeleccionar
    else
      CxTVOrganizaciones.Selected := CxTVOrganizaciones.Items.Item[0];

    for i := 0 to CxTVOrganizaciones.Items.Count -1 do
      CxTVOrganizaciones.Items.Item[i].Expand(True);

  finally
    CxTVOrganizaciones.Items.EndUpdate;
  end;
end;

procedure TFrmDeptos.crearDiagrama(idNodo: Integer);
var
  cdOrg: TClientDataSet;
  NodoPadre: TdxOcNode;
  NodoHijos: TDataDeptos;
  Nodos: TDataDeptos;
  NodoActual: TdxOcNode;
  cursor: TCursor;
procedure buscarHijos(idOrganizacion: Integer; var NodoPivote: TdxOCNode);
var
  cdHijos: TClientDataSet;
  NodoAct: TdxOcNode;
begin
  //Aqui va el codigo que busca hijos y los creará
  try
    try
      cdHijos := TClientDataSet.Create(self);
      if cdHijos.ProviderName = '' then
        if not CrearConjunto(cdHijos, 'nuc_departamento', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Nuc_Departemento']);

      if not CargarDatosFiltrados(cdHijos, 'IdPadre', [idOrganizacion]) then
        raise InteligentException.CreateByCode(6, ['idPadre', 'Departamentos',VarToStr(idOrganizacion)]);

      if cdHijos.Active then
        cdHijos.Refresh
      else
        cdHijos.Open;

      cdHijos.First;
      while not cdHijos.Eof do
      begin
        Nodos := TDataDeptos.Create;
        Nodos.Indice := -5;
        Nodos.idPadre := cdHijos.FieldByName('idPadre').AsInteger;
        Nodos.idDepto := cdHijos.FieldByName('IdDepartamento').AsInteger;
        Nodos.Descripcion := cdHijos.FieldByName('TituloDepartamento').AsString;
        Nodos.idOrganización := cdHijos.FieldByName('IdOrganizacion').AsInteger;
        NodoAct := dxOrgChart1.AddChild(NodoPivote, Pointer(Nodos));
        NodoAct.Color := $00FED8B1;
        NodoAct.Shape := shRoundRect;
        NodoAct.Text := Nodos.Descripcion;
        buscarHijos(cdHijos.FieldByName('idDepartamento').AsInteger, NodoAct);
        cdHijos.Next;
      end;
    finally
      cdHijos.Destroy;
    end;
  except
    on e: exception do
      ShowMessage(e.Message);
  end;
end;
begin
  try
    dxOrgChart1.Clear;
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      NodoPadre := TdxOcNode.Create(dxOrgChart1);
      cdOrg := TClientDataSet.Create(self);

      if cdOrg.ProviderName = '' then
        if not CrearConjunto(cdOrg, 'nuc_departamento', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Departamentos']);

     if not CargarDatosFiltrados(cdOrg, 'idOrganizacion,idPadre', [idNodo, -5]) then
        raise InteligentException.CreateByCode(6, ['IdDeptos', 'Departamentos', VarToStr(idNodo)]);

      if cdOrg.Active then
        cdOrg.Refresh
      else
        cdOrg.Open;

      NodoHijos := TDataDeptos.Create;
      NodoHijos.idDepto := -5;
      NodoHijos.idPadre := -5;
      NodoHijos.idOrganización := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;
      NodoHijos.Descripcion := TNodo(CxTVOrganizaciones.Selected.Data).CodigoOrganizacion;
      NodoPadre := dxOrgChart1.AddChild(nil, Pointer(NodoHijos));
      NodoPadre.Color := $00FED8B1;
      NodoPadre.Shape := shRoundRect;
      NodoPadre.Text := NodoHijos.Descripcion;

      cdOrg.First;
      while Not cdOrg.Eof do
      begin
        Nodos := TDataDeptos.Create;
        Nodos.idPadre := cdOrg.FieldByName('idPadre').AsInteger;
        Nodos.idDepto := cdOrg.FieldByName('IdDepartamento').AsInteger;
        Nodos.Descripcion := cdOrg.FieldByName('TituloDepartamento').AsString;
        Nodos.idOrganización := cdOrg.FieldByName('IdOrganizacion').AsInteger;
        NodoActual := dxOrgChart1.AddChild(NodoPadre, Pointer(Nodos));
        NodoActual.Color := $00FED8B1;
        NodoActual.Shape := shRoundRect;
        NodoActual.Text := Nodos.Descripcion;
        buscarHijos(cdOrg.FieldByName('IdDepartamento').AsInteger, NodoActual);
        cdOrg.Next;
      end;
    finally
      cdOrg.Destroy;
      NodoPadre := Nil;
      NodoActual := Nil;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: exception do
      ShowMessage(e.Message);
  end;
end;

procedure TFrmDeptos.CxBtnAceptarClick(Sender: TObject);
var
  dDeptos: TDataDeptos;
  nodoSeleccionado: TdxOcNode;
  NodoABorrar: TdxOcNode;
  NodoEnfoca: TWinControl;
begin
  try
    //Validar no vacios
    if Length(Trim(CxTextEdtCodigo.text)) = 0 then
    begin
      NodoEnfoca := CxTextEdtCodigo;
      raise InteligentException.CreateByCode(18, ['Código Departamento']);
    end;

    if Length(Trim(CxTextEdtTitulo.text)) = 0 then
    begin
      NodoEnfoca := CxTextEdtTitulo;
      raise InteligentException.CreateByCode(18, ['Título Departamento']);
    end;

    if Length(Trim(CxTextEdtEtiqueta.text)) = 0 then
    begin
      NodoEnfoca := CxTextEdtEtiqueta;
      raise InteligentException.CreateByCode(18, ['Etiqueta Departamento']);
    end;

    if Length(Trim(CxTextEdtDescripcion.text)) = 0 then
    begin
      NodoEnfoca := CxTextEdtDescripcion;
      raise InteligentException.CreateByCode(18, ['Descripcion Departamento']);
    end;

    try
      NodoABorrar := nil;
      nodoSeleccionado := dxOrgChart1.Selected;
      if CdDeptosUpt.State = dsInsert then
      begin
        CdDeptosUpt.FieldByName('idDepartamento').AsInteger := 0;
        CdDeptosUpt.FieldByName('idOrganizacion').AsInteger := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;
        CdDeptosUpt.FieldByName('idPadre').AsInteger := TDataDeptos(nodoSeleccionado.Data).idDepto;
        CdDeptosUpt.FieldByName('IdArbol').AsInteger := TDataDeptos(nodoSeleccionado.Data).idDepto; //tevisar
        CdDeptosUpt.FieldByName('Nivel').AsInteger := nodoSeleccionado.Level -1;
        CdDeptosUpt.FieldByName('Herencia').AsString := '*';
        CdDeptosUpt.FieldByName('Activo').AsString := 'Si';
      end;

      try
        CdDeptosUpt.FieldByName('codigodepartamento').AsString := CxTextEdtCodigo.Text;
        CdDeptosUpt.FieldByName('TituloDepartamento').AsString := CxTextEdtTitulo.Text;
        CdDeptosUpt.FieldByName('Etiqueta').AsString := CxTextEdtEtiqueta.Text;
        CdDeptosUpt.FieldByName('Descripcion').AsString := CxTextEdtDescripcion.Text;
        CdDeptosUpt.FieldByName('comentarios').AsString := cxMemo1.Text;

        //Asignar valores a mi objeto Odepto
        dDeptos := TDataDeptos.Create;
        dDeptos.idOrganización := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;
        dDeptos.Descripcion := CxTextEdtTitulo.Text;
        dDeptos.idPadre := TDataDeptos(nodoSeleccionado.Data).idDepto;

        //si se edita borrar el nodo y actualizar su data
        if CdDeptosUpt.State = dsEdit then
          NodoABorrar := nodoSeleccionado;

        CdDeptosUpt.Post;
        CdDeptosUpt.ApplyUpdates(-1);
        dDeptos.idDepto := UltimoId;

        mResult := mrOk;
        if mResult = mrOK then
        begin
          if NodoABorrar = nil then
          begin
            nodoSeleccionado := dxOrgChart1.Selected;
            nodoSeleccionado := dxOrgChart1.AddChild(nodoSeleccionado, Pointer(dDeptos));
            nodoSeleccionado.Text := dDeptos.Descripcion;
          end
          else
          begin
            nodoSeleccionado.Data := Pointer(dDeptos);
            nodoSeleccionado.Text := dDeptos.Descripcion;
          end;
        end
        else
        begin
          dDeptos := nil;
          dDeptos.Destroy;
        end;
      except
        on e: InteligentException do
        begin
          mResult := mrCancel;
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
        end;
      end;
      if Assigned(TForm(FindComponent('FrmAdd'))) then
        TForm(FindComponent('FrmAdd')).Close
    finally
      if NodoABorrar <> nil then
        NodoABorrar := nil;

      if CdDeptosUpt.State in [dsInsert, dsEdit] then
        CdDeptosUpt.Cancel;
    end;
  Except
    on e: InteligentException do
    begin
      if NodoEnfoca.CanFocus then
        NodoEnfoca.SetFocus;

     InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmDeptos.CxBtnCloseClick(Sender: TObject);
begin
  mResult := mrCancel;
end;

procedure TFrmDeptos.CxTVOrganizacionesChange(Sender: TObject; Node: TTreeNode);
var
  i: Integer;
begin
  dxOrgChart1.Clear;
  cxGBDeptos.Caption := 'Departamentos';
  Btn_agregar.Enabled := CxTVOrganizaciones.Selected.Level >= 1;
  Btn_editar.Enabled := CxTVOrganizaciones.Selected.Level >= 1;
  Btn_quitar.Enabled := CxTVOrganizaciones.Selected.Level >= 1;
  Btn_refresh.Enabled := CxTVOrganizaciones.Selected.Level >= 1;
  if CxTVOrganizaciones.Selected.Level >= 1 then
  begin
    cxGBDeptos.Caption := 'Nivel organizacional: [' + TNodo(CxTVOrganizaciones.Selected.Data).CodigoOrganizacion + ']';
    LocOrganizacion := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;
    if CdPersonalIncluido.Filtered then
      cdPersonalIncluido.Filtered := False;

    crearDiagrama(LocOrganizacion);
    CargarPersonaldepto(locOrganizacion);
    llenarLbox(cdPersonalIncluido, 'DatosCompletos');
    try
      for i := 0 to dxOrgChart1.Count - 1 do
        dxOrgChart1.Items[i].Expand(true);
    except
      ;
    end;
  end;
end;

procedure TFrmDeptos.DxBarBtnZoomClick(Sender: TObject);
begin
  dxOrgChart1.Zoom := not dxOrgChart1.Zoom;
end;

procedure TFrmDeptos.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDeptos.dxOrgChart1Click(Sender: TObject);
var
  Cursor: TCursor;
  NodoSeleccionado: TdxOcNode;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      NodoSeleccionado := dxOrgChart1.Selected;
      cxGroupPersonalIncluido.Caption := 'Departamento/Jefatura: ' + NodoSeleccionado.Text;
      If TDataDeptos(dxOrgChart1.Selected.Data).idDepto <> -5 then
      Begin
        try
          cdPersonalIncluido.Filtered := False;
          cdPersonalIncluido.Filter := 'IdDepartamento = ' + QuotedStr(intToStr(TDataDeptos(dxOrgChart1.Selected.Data).idDepto));
          cdPersonalIncluido.Filtered := True;
          lstPersonal.Clear;
          llenarLbox(cdPersonalIncluido, 'DatosCompletos');
        Except
          cdPersonalIncluido.Filtered := False;
        end;
      End
      else
        cdPersonalIncluido.Filtered := False;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDeptos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmDeptos.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Organizaciones']);

  if not CrearConjunto(CdDeptosUpt, 'nuc_departamento', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Departamento']);

  if Not crearConjunto(CdPersonalIncluido, 'nuc_personalxdepto', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_personalxdepto']);

end;

procedure TFrmDeptos.FormShow(Sender: TObject);
begin
  if not CargarDatosFiltrados(CdOrganizacion, 'IdOrganizacion', [-1]) then
    raise InteligentException.CreateByCode(6, ['Catálogo de Organizaciones', 'IdOrganización', '-1']);

  if CdOrganizacion.Active then
    CdOrganizacion.Refresh
  else
    CdOrganizacion.Open;

  if Not CrearConjunto(cdNivel, 'nuc_nivelorganizacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Nivel de Organización de Empresa']);

  cdNivel.Open;
  crearArbolOrganizaciones(-1);
  cxMemo1.Text := '';
end;
procedure TFrmDeptos.llenarLbox(Data: TClientDataset; Campo: String);
begin
  lstPersonal.Clear;
  if (Data.Active) and (data.RecordCount > 0) then
  begin
    Data.First;
    while not Data.Eof do
    begin
      lstPersonal.AddItem(Data.FieldByName(Campo).AsString,TObject(-1));
      Data.Next;
    end;
  end;
end;

end.
