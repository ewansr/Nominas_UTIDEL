unit UtfrmOrganizaciones;

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
  cxContainer, cxEdit, ComCtrls, cxTreeView, cxGroupBox, cxSplitter,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxGallery, dxGalleryControl, ClientModuleUnit1,
  DB, DBClient, UInteliDialog, ImgList, cxCustomData, cxStyles, cxTL,
  cxTextEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxVGrid, cxDBVGrid,
  cxImage, cxDBEdit, URegistro, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TNodo = class
    IdOrganizacion: Integer;
    NombreOrganizaion: string;
    wbs: String;
    CodigoOrganizacion: string;
    Padre: Integer;
    Nivel: Integer;
  end;

  TFrmOrganizaciones = class(TForm)
    dxbrmngr1: TdxBarManager;
    dxbrpmn1: TdxBarPopupMenu;
    CdOrganizacion: TClientDataSet;
    dsOrganizacion: TDataSource;
    Paneldxbrmngr1Bar1: TdxBar;
    cxImageRes1: TcxImageList;
    Btn1: TdxBarLargeButton;
    Btn2: TdxBarLargeButton;
    Btn3: TdxBarLargeButton;
    Btn4: TdxBarLargeButton;
    Btn5: TdxBarLargeButton;
    cxspltr1: TcxSplitter;
    cxVGrid1: TcxDBVerticalGrid;
    cxCategoryVGrid1CategoryRow1: TcxCategoryRow;
    cxGrdRowVGrid1DBEditorRow2: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow3: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow4: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow1: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow5: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow6: TcxDBEditorRow;
    cxCategoryVGrid1CategoryRow2: TcxCategoryRow;
    cxGrdRowVGrid1DBEditorRow8: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow9: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow10: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow11: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow12: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow13: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow14: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow15: TcxDBEditorRow;
    cxCategoryVGrid1CategoryRow3: TcxCategoryRow;
    cxGrdRowVGrid1DBEditorRow22: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow23: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow24: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow25: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow26: TcxDBEditorRow;
    cxCategoryVGrid1CategoryRow4: TcxCategoryRow;
    cxGrdRowVGrid1DBEditorRow32: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow33: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow34: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow35: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow36: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow37: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow38: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow39: TcxDBEditorRow;
    CxTVOrganizaciones: TcxTreeView;
    cdRiesgo: TClientDataSet;
    cdNivel: TClientDataSet;
    CdOrganizacionUpt: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxTVOrganizacionesChange(Sender: TObject; Node: TTreeNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn4Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
  private
    procedure crearArbolOrganizaciones(IdNodo: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrganizaciones: TFrmOrganizaciones;

implementation
Uses UTFrmDatosNiveles;

{$R *.dfm}

procedure TFrmOrganizaciones.Btn1Click(Sender: TObject);
begin
  Try
    Try
      Application.CreateForm(TFrmDatosNiveles, FrmDatosNiveles);

      // Localizar el nivel que corresponde a la nueva captura
      if CxTVOrganizaciones.Selected.Level > cdNivel.RecordCount -1 then
        raise InteligentException.Create('No se pueden crear más de ' + IntToStr(cdNivel.RecordCount) + ' Niveles de datos.');

      cdNivel.RecNo := CxTVOrganizaciones.Selected.Level +1;
      if cdNivel.RecNo > 1 then
      begin
        cdNivel.Prior;
        FrmDatosNiveles.NivelPadre := cdNivel.FieldByName('IdNivelOrganizacion').AsInteger;
        FrmDatosNiveles.IdPadre := TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion;
        FrmDatosNiveles.WbsPadre := TNodo(CxTVOrganizaciones.Selected.Data).Wbs + '.';
        cdNivel.Next;
      end
      else
      begin
        FrmDatosNiveles.NivelPadre := -5;
        FrmDatosNiveles.IdPadre := -5;
        FrmDatosNiveles.WbsPadre := '';
      end;

      //Vamos a insertar un registro
//      if not CargarDatosFiltrados(CdOrganizacionUpt, 'idOrganizacion', [CdOrganizacion.FieldByName('IdOrganizacion').AsInteger]) then
//        raise InteligentException.CreateByCode(6, ['Cataiogo de Organizaciones', 'idOrganizacion', '-9']);

      if CdOrganizacionUpt.Active then
        CdOrganizacionUpt.Refresh
      else
        CdOrganizacionUpt.Open;

      IniciarTransaccion;
      CdOrganizacionUpt.Append;
      FrmDatosNiveles.dsDatos.DataSet := CdOrganizacionUpt;
      FrmDatosNiveles.dsNiveles.DataSet := cdNivel;
      FrmDatosNiveles.dsRiesgo.DataSet := cdRiesgo;
      FrmDatosNiveles.IdOrganizacion := CdOrganizacionUpt.FieldByName('IdOrganizacion').AsInteger;

      if FrmDatosNiveles.ShowModal = mrOk then
      begin
        ConcretarTransaccion;
        CdOrganizacion.Refresh;
        CrearArbolOrganizaciones(-1);
      end
      else
      begin
        if CdOrganizacionUpt.State In [dsEdit, dsInsert] then
          CdOrganizacionUpt.Cancel;

        if EnTransaccion then
          CancelarTransaccion;
      end;
    Finally
      if Assigned(FrmDatosNiveles) then
        FrmDatosNiveles.Destroy;
    End;
  Except
    on e:InteligentException do
    begin
      if CdOrganizacionUpt.State In [dsEdit, dsInsert] then
        CdOrganizacionUpt.Cancel;

      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal('Error de captura de datos', e.Message, mtWarning, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if CdOrganizacionUpt.State In [dsEdit, dsInsert] then
        CdOrganizacionUpt.Cancel;

      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
End;


procedure TFrmOrganizaciones.Btn3Click(Sender: TObject);
var
  Buscar: TClientDataSet;
  Cuantos: Integer;
  IdNodo: Integer;
begin
  // Verificar si se puede eliminar este registro
  if CxTVOrganizaciones.Selected.Level < 1 then
    raise InteligentException.CreateByCode(24, ['Debe seleccionar un organización para poder eliminarla.']);
  Try
    Try
      if Not cdOrganizacionUpt.Locate('IdOrganizacion', TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion, []) then
        raise InteligentException.CreateByCode(13, [TNodo(CxTVOrganizaciones.Selected.Data).CodigoOrganizacion, 'Organización de Empresa']);

      // Buscar primero si tiene hijos dentro de esta misma tabla
      Buscar := TClientDataSet.Create(Self);
      if Not CrearConjunto(Buscar, 'nuc_organizacion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Organización de Empresa']);
      if Not CargarDatosFiltrados(Buscar, 'Padre', [TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion]) then
        raise InteligentException.CreateByCode(6, ['Organización de Empresa', TNodo(CxTVOrganizaciones.Selected.Data).CodigoOrganizacion, 'Código de Organización']);

      Cuantos := CuantosRegistros(Buscar);
      if Cuantos > 0 then
        raise InteligentException.CreateByCode(23, [TNodo(CxTVOrganizaciones.Selected.Data).CodigoOrganizacion, 'Organización de Empresa', Cuantos, 'Organización de Empresa']);

//      if CdOrganizacionUpt.RecNo > 1 then
//      begin
//        CdOrganizacionUpt.Prior;
//        IdNodo := CdOrganizacionUpt.FieldByName('IdOrganizacion').AsInteger;
//        CdOrganizacionUpt.Next;
//      end
//      else
//      begin
//        if CdOrganizacionUpt.RecordCount > 0 then
//          IdNodo := CdOrganizacionUpt.FieldByName('IdOrganizacion').AsInteger
//        else
//          IdNodo := 0;
//      end;
      if InteliDialog.ShowModal('Confirmar operación.', '¿Está seguro que desea eliminar este nivel?', mtInformation, [mbYes, mbNo],0)= mrYes  then
      begin
        CdOrganizacionUpt.Delete;
        CdOrganizacionUpt.ApplyUpdates(-1);
      end;
    Finally
      if Assigned(Buscar) and (Buscar.Active) then
        Buscar.Close;

      if Not (cdOrganizacionUpt.State in [dsInsert, dsEdit]) then
      begin
        CdOrganizacion.Refresh;
        crearArbolOrganizaciones(-1);
      end;

      EliminarConjunto(Buscar);
    End;

  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmOrganizaciones.Btn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmOrganizaciones.Btn5Click(Sender: TObject);
var
  LocIdOrganizacion: Integer;
begin
  Try
    Try
      Application.CreateForm(TFrmDatosNiveles, FrmDatosNiveles);
      // Localizar el nivel que corresponde a la nueva captura
      if CxTVOrganizaciones.Selected.Level < 1 then
        raise InteligentException.CreateByCode(24, ['No se puede editar este elemento.']);

      if Not cdOrganizacion.Locate('IdOrganizacion', TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion, []) then
        raise InteligentException.CreateByCode(13, [TNodo(CxTVOrganizaciones.Selected.Data).CodigoOrganizacion, 'Organización de Empresa']);

      IniciarTransaccion;
      LocIdOrganizacion := CdOrganizacion.FieldByName('idOrganizacion').AsInteger;

      if not CargarDatosFiltrados(CdOrganizacionUpt, 'idOrganizacion', [LocIdOrganizacion]) then
        raise InteligentException.CreateByCode(6, ['Catálogo Organizaciones', 'idOrganizacion', intToStr(LocIdOrganizacion)]);

      if CdOrganizacionUpt.Active then
        CdOrganizacionUpt.Refresh
      else
        CdOrganizacionUpt.Open;

      CdOrganizacionUpt.Edit;
      FrmDatosNiveles.dsDatos.DataSet := CdOrganizacionUpt;
      FrmDatosNiveles.dsRiesgo.DataSet := cdRiesgo;
      FrmDatosNiveles.IdOrganizacion := CdOrganizacionUpt.FieldByName('IdOrganizacion').AsInteger;

      FrmDatosNiveles.dsNiveles.DataSet := cdNivel;
      if FrmDatosNiveles.ShowModal = mrOk then
      begin
        if EnTransaccion then
          ConcretarTransaccion;

        CdOrganizacion.Refresh;
        crearArbolOrganizaciones(-1);
      end
      else
      begin
        if CdOrganizacionUpt.State In [dsEdit, dsInsert] then
          CdOrganizacionUpt.Cancel;

        if EnTransaccion then
          CancelarTransaccion;
      end;
    Finally
      if Assigned(FrmDatosNiveles) then
        FrmDatosNiveles.Destroy;

      crearArbolOrganizaciones(-1);
    End;
  Except
    on e:InteligentException do
    begin
      if CdOrganizacionUpt.State In [dsEdit, dsInsert] then
        CdOrganizacionUpt.Cancel;

      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal('Error de captura de datos', e.Message, mtWarning, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if CdOrganizacionUpt.State In [dsEdit, dsInsert] then
        CdOrganizacionUpt.Cancel;

      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmOrganizaciones.crearArbolOrganizaciones(IdNodo: Integer);
var
  Grupos: TdxGalleryControlGroup;
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

procedure TFrmOrganizaciones.CxTVOrganizacionesChange(Sender: TObject;
  Node: TTreeNode);
begin
  try
    if CdOrganizacion.Locate('IdOrganizacion', TNodo(CxTVOrganizaciones.Selected.Data).IdOrganizacion, []) then
    begin
      ;
    end;
  finally

  end;
end;

procedure TFrmOrganizaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdRiesgo.ProviderName <> '' then
    EliminarConjunto(cdRiesgo);

  EliminarConjunto([cdOrganizacion, cdNivel]);
  LiberarVentana(Self, Action);
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'WidthTreeView', IntToStr(CxTVOrganizaciones.Width));
  //Action := caFree;
end;

procedure TFrmOrganizaciones.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Organizaciones']);

  if not CrearConjunto(CdOrganizacionUpt, 'nuc_organizacion', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Catálogo Organizaciones /* Update']);

end;

procedure TFrmOrganizaciones.FormShow(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(CdOrganizacion, 'IdOrganizacion', [-1]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Organizaciones', 'IdOrganización', '-1']);

      if CdOrganizacion.Active then
        CdOrganizacion.Refresh
      else
        CdOrganizacion.Open;


      if not CargarDatosFiltrados(cdOrganizacionUpt, 'Activo', ['Si']) then
          raise InteligentException.CreateByCode(6, ['Activo','Organizacion','Si']);

      cdOrganizacionUpt.Open;

      if Not CrearConjunto(cdNivel, 'nuc_nivelorganizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nivel de Organización de Empresa']);

      cdNivel.Open;

      crearArbolOrganizaciones(-1);
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
  end;
end;

end.
