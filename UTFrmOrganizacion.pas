unit UTFrmOrganizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, DB, DBClient, ComCtrls, UInteliDialog, ExtCtrls,
  JvExControls, JvLabel, StdCtrls, Mask, DBCtrls, JvDBImage, URegistro,
  AdvGlowButton, UTFrmDatosNiveles, pngimage, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses;

type
  TDatosNodo = class
    LevelParent: Integer;
    IdNodo: Integer;
    CodigoNodo: String;
    Level: Integer;
    Wbs: String;
  end;

  TFrmOrganizacion = class(TForm)
    cdOrganizacion: TClientDataSet;
    Panel1: TPanel;
    tvOrganizacion: TTreeView;
    Splitter1: TSplitter;
    cdOrganizacion2: TClientDataSet;
    dsOrganizacion2: TDataSource;
    ScrollBox1: TScrollBox;
    Panel5: TPanel;
    JvLabel2: TJvLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    JvLabel3: TJvLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    JvLabel4: TJvLabel;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    DBMemo1: TDBMemo;
    GroupBox1: TGroupBox;
    JvLabel6: TJvLabel;
    Panel2: TPanel;
    DBMemo2: TDBMemo;
    JvLabel5: TJvLabel;
    Panel8: TPanel;
    JvLabel7: TJvLabel;
    DBMemo3: TDBMemo;
    Panel9: TPanel;
    JvDBImage1: TJvDBImage;
    Panel10: TPanel;
    JvLabel8: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel11: TPanel;
    JvLabel9: TJvLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    JvLabel10: TJvLabel;
    Panel12: TPanel;
    Panel13: TPanel;
    Btn_Eliminar: TAdvGlowButton;
    Btn_Editar: TAdvGlowButton;
    Btn_Nuevo: TAdvGlowButton;
    Panel14: TPanel;
    Btn_Imprimir: TAdvGlowButton;
    cdNivel: TClientDataSet;
    ScrollBox2: TScrollBox;
    ScrollBox0: TScrollBox;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    Label2: TLabel;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    Label3: TLabel;
    JvLabel11: TJvLabel;
    Label4: TLabel;
    DBMemoComentarios: TDBMemo;
    Label5: TLabel;
    DBEditUbicacion: TDBEdit;
    mTitulo: TDBMemo;
    JvLabel12: TJvLabel;
    cdObras: TClientDataSet;
    dsObras: TDataSource;
    dsOrganizacion: TDataSource;
    JvLabel13: TJvLabel;
    edti: TDBEdit;
    cdRiesgo: TClientDataSet;
    dxbrmngr1: TdxBarManager;
    tbdxbrmngr1Bar1: TdxBar;
    btnBtnAgregar: TdxBarLargeButton;
    btnBtnEliminar: TdxBarLargeButton;
    btnBtnEditar: TdxBarLargeButton;
    btnBtnActualizar: TdxBarLargeButton;
    procedure LlenarTreeView(IdNodo: Integer);
    procedure FormShow(Sender: TObject);
    procedure tvOrganizacionChange(Sender: TObject; Node: TTreeNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_NuevoClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_EliminarClick(Sender: TObject);
  private
    AltoOriginal: Integer;
    GroupOriginal: Integer;
    procedure CargarDatos;

  public
    { Public declarations }
  end;

var
  FrmOrganizacion: TFrmOrganizacion;

implementation

{$R *.dfm}

procedure TFrmOrganizacion.LlenarTreeView(IdNodo: Integer);
var
  i: Integer;
  DatosNodo: TDatosNodo;
  Inicial: TTreeNode;
  Padre: TTreeNode;
  Found: Boolean;
  NodoSeleccionar: TTreeNode;
begin
  Try
    tvOrganizacion.Items.BeginUpdate;
    tvOrganizacion.Items.Clear;
    NodoSeleccionar := Nil;
    i := -5;

    DatosNodo := TDatosNodo.Create;
    DatosNodo.LevelParent := -5;
    DatosNodo.IdNodo := -5;
    DatosNodo.Level := -5;
    DatosNodo.Wbs := '';
    DatosNodo.CodigoNodo := '';

    Inicial := tvOrganizacion.Items.AddChildObject(Nil, 'ORGANIZACION:', Pointer(DatosNodo));
    cdOrganizacion.First;
    while Not cdOrganizacion.Eof do
    begin
      DatosNodo := TDatosNodo.Create;
      DatosNodo.LevelParent := -5;

      // Localizar el padre
      Padre := Inicial;
      if cdOrganizacion.FieldByName('Padre').AsInteger > 0 then
      begin
        i := 0;
        Found := False;
        while (i < tvOrganizacion.Items.Count) and Not Found do
        begin
          Found := TDatosNodo(tvOrganizacion.Items.Item[i].Data).IdNodo = cdOrganizacion.FieldByName('Padre').AsInteger;
          if Not Found then Inc(i);
        end;
        if Found then
        begin
          Padre := tvOrganizacion.Items.Item[i];
          DatosNodo.LevelParent := TDatosNodo(Padre.Data).Level;
        end;
      end;

      DatosNodo.Level := cdOrganizacion.FieldByName('IdNivel').AsInteger;
      DatosNodo.IdNodo := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
      DatosNodo.Wbs := cdOrganizacion.FieldByName('Wbs').AsString;
      DatosNodo.CodigoNodo := cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;

      if cdOrganizacion.FieldByName('IdOrganizacion').AsInteger = IdNodo then
        NodoSeleccionar := tvOrganizacion.Items.AddChildObject(Padre, '(' + cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + ')  ' + cdOrganizacion.FieldByName('TituloOrganizacion').AsString, Pointer(DatosNodo))
      else
        tvOrganizacion.Items.AddChildObject(Padre, '(' + cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + ')  ' + cdOrganizacion.FieldByName('TituloOrganizacion').AsString, Pointer(DatosNodo));
      cdOrganizacion.Next;
    end;
    if tvOrganizacion.Items.Count > 0 then
      if Assigned(NodoSeleccionar) then
        tvOrganizacion.Selected := NodoSeleccionar
      else
        tvOrganizacion.Selected := tvOrganizacion.Items.Item[0];
    for i := 0 to tvOrganizacion.Items.Count -1 do
      tvOrganizacion.Items.Item[i].Expand(True);
  Finally
    tvOrganizacion.Items.EndUpdate;
  End;
end;

procedure TFrmOrganizacion.Btn_EditarClick(Sender: TObject);
begin
  Try
    Try
      Application.CreateForm(TFrmDatosNiveles, FrmDatosNiveles);

      // Localizar el nivel que corresponde a la nueva captura
      if tvOrganizacion.Selected.Level < 1 then
        raise InteligentException.CreateByCode(24, ['Debe seleccionar un organización para poder editarla.']);

      if Not cdOrganizacion.Locate('IdOrganizacion', TDatosNodo(tvOrganizacion.Selected.Data).IdNodo, []) then
        raise InteligentException.CreateByCode(13, [TDatosNodo(tvOrganizacion.Selected.Data).CodigoNodo, 'Organización de Empresa']);
//      if Not CargarDatosFiltrados(cdOrganizacion, 'IdOrganizacion', [TDatosNodo(tvOrganizacion.Selected.Data).IdNodo]) then

      IniciarTransaccion;
      {if tvOrganizacion.Selected.Level = cdNiveles.RecordCount then
        ShowMessage('Editar Convenio');}
      cdOrganizacion.Edit;
      FrmDatosNiveles.dsDatos.DataSet := cdOrganizacion;
      FrmDatosNiveles.dsRiesgo.DataSet := cdRiesgo;
      FrmDatosNiveles.IdOrganizacion := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;

      FrmDatosNiveles.dsNiveles.DataSet := cdNivel;
      if FrmDatosNiveles.ShowModal = mrOk then
      begin
        if EnTransaccion then
          ConcretarTransaccion;
        LlenarTreeView(UltimoId);
      end
      else
      begin
        if cdOrganizacion.State In [dsEdit, dsInsert] then
          cdOrganizacion.Cancel;

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
      if cdOrganizacion.State In [dsEdit, dsInsert] then
        cdOrganizacion.Cancel;

      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal('Error de captura de datos', e.Message, mtWarning, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if cdOrganizacion.State In [dsEdit, dsInsert] then
        cdOrganizacion.Cancel;

      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;

end;

procedure TFrmOrganizacion.Btn_EliminarClick(Sender: TObject);
var
  Buscar: TClientDataSet;
  Cuantos: Integer;
  IdNodo: Integer;
begin
  // Verificar si se puede eliminar este registro
  Try
    if tvOrganizacion.Selected.Level < 1 then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar un organización para poder eliminarla.']);
    Try
      if Not cdOrganizacion.Locate('IdOrganizacion', TDatosNodo(tvOrganizacion.Selected.Data).IdNodo, []) then
        raise InteligentException.CreateByCode(13, [TDatosNodo(tvOrganizacion.Selected.Data).CodigoNodo, 'Organización de Empresa']);

      // Buscar primero si tiene hijos dentro de esta misma tabla
      Buscar := TClientDataSet.Create(Self);
      if Not CrearConjunto(Buscar, 'nuc_organizacion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Organización de Empresa']);
      if Not CargarDatosFiltrados(Buscar, 'Padre', [TDatosNodo(tvOrganizacion.Selected.Data).IdNodo]) then
        raise InteligentException.CreateByCode(6, ['Organización de Empresa', TDatosNodo(tvOrganizacion.Selected.Data).CodigoNodo, 'Código de Organización']);

      Cuantos := CuantosRegistros(Buscar);
      if Cuantos > 0 then
        raise InteligentException.CreateByCode(23, [TDatosNodo(tvOrganizacion.Selected.Data).CodigoNodo, 'Organización de Empresa', Cuantos, 'Organización de Empresa']);

      if cdOrganizacion.RecNo > 1 then
      begin
        cdOrganizacion.Prior;
        IdNodo := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
        cdOrganizacion.Next;
      end
      else
      begin
        if cdOrganizacion.RecordCount > 0 then
          IdNodo := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger
        else
          IdNodo := 0;
      end;
      if InteliDialog.ShowModal('Confirmar operación.', '¿Está seguro que desea eliminar este nivel?', mtInformation, [mbYes, mbNo],0)= mrYes  then
      begin
        cdOrganizacion.Delete;
        cdOrganizacion.ApplyUpdates(-1);
        cdOrganizacion.Refresh;
        LlenarTreeView(IdNodo);
      end;
    Finally
      if Assigned(Buscar) and (Buscar.Active) then
        Buscar.Close;

      EliminarConjunto(Buscar);
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmOrganizacion.Btn_NuevoClick(Sender: TObject);
begin
{  if tvOrganizacion.Selected.Level = cdNivel.RecordCount then
    Application.CreateForm(TfrmDatosObra, frmDatosObra)
  else}
  begin
    Try

      Try
        Application.CreateForm(TFrmDatosNiveles, FrmDatosNiveles);

        // Localizar el nivel que corresponde a la nueva captura
        if tvOrganizacion.Selected.Level > cdNivel.RecordCount -1 then
          raise InteligentException.Create('No se pueden crear más de ' + IntToStr(cdNivel.RecordCount) + ' Niveles de datos.');

        cdNivel.RecNo := tvOrganizacion.Selected.Level +1;
        if cdNivel.RecNo > 1 then
        begin
          cdNivel.Prior;
          FrmDatosNiveles.NivelPadre := cdNivel.FieldByName('IdNivelOrganizacion').AsInteger;
          FrmDatosNiveles.IdPadre := TDatosNodo(tvOrganizacion.Selected.Data).IdNodo;
          FrmDatosNiveles.WbsPadre := TDatosNodo(tvOrganizacion.Selected.Data).Wbs + '.';
          cdNivel.Next;
        end
        else
        begin
          FrmDatosNiveles.NivelPadre := -5;
          FrmDatosNiveles.IdPadre := -5;
          FrmDatosNiveles.WbsPadre := '';
        end;

        IniciarTransaccion;
        cdOrganizacion.Append;
        FrmDatosNiveles.dsDatos.DataSet := cdOrganizacion;
        FrmDatosNiveles.dsNiveles.DataSet := cdNivel;
        FrmDatosNiveles.dsRiesgo.DataSet := cdRiesgo;
        FrmDatosNiveles.IdOrganizacion := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;

        if FrmDatosNiveles.ShowModal = mrOk then
        begin
          ConcretarTransaccion;
          LlenarTreeView(UltimoId);
        end
        else
        begin
          if cdOrganizacion.State In [dsEdit, dsInsert] then
            cdOrganizacion.Cancel;

          CancelarTransaccion;
        end;
      Finally
        if Assigned(FrmDatosNiveles) then
          FrmDatosNiveles.Destroy;
      End;
    Except
      on e:InteligentException do
      begin
        if cdOrganizacion.State In [dsEdit, dsInsert] then
          cdOrganizacion.Cancel;

        if EnTransaccion then
          CancelarTransaccion;

        InteliDialog.ShowModal('Error de captura de datos', e.Message, mtWarning, [mbOk], 0);
      end;

      on e:Exception do
      begin
        if cdOrganizacion.State In [dsEdit, dsInsert] then
          cdOrganizacion.Cancel;

        if EnTransaccion then
          CancelarTransaccion;

        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      end;
    End;
  End;
end;



procedure TFrmOrganizacion.CargarDatos;
begin

end;

procedure TFrmOrganizacion.FormClick(Sender: TObject);
begin
  ShowMessage('Rangel');
end;

procedure TFrmOrganizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdRiesgo.ProviderName <> '' then
    EliminarConjunto(cdRiesgo);

  EliminarConjunto([cdOrganizacion, cdNivel, cdOrganizacion2, cdObras]);
  LiberarVentana(Self, Action);
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'WidthTreeView', IntToStr(tvOrganizacion.Width));
end;

procedure TFrmOrganizacion.FormCreate(Sender: TObject);
var
  PosicionSP: Integer;
  Existe: Boolean;
begin
  AltoOriginal := Self.Height;
  GroupOriginal := GroupBox1.Height;
  AccedeACoordenadas(Self);

  Try
    PosicionSP := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'WidthTreeView', Existe));
    if Not Existe then PosicionSP := tvOrganizacion.Width;
  Except
    PosicionSP := tvOrganizacion.Width;
  End;



  tvOrganizacion.Width := PosicionSP;
end;

procedure TFrmOrganizacion.FormResize(Sender: TObject);
begin
  if Self.Height > AltoOriginal then
    GroupBox1.Height := GroupOriginal + (Self.Height - AltoOriginal)
  else
    GroupBox1.Height := GroupOriginal;
end;

procedure TFrmOrganizacion.FormShow(Sender: TObject);
var
  OldCursor: TCursor;
begin
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      If Not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Organización de Empresa']);

      if Not CrearConjunto(cdNivel, 'nuc_nivelorganizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nivel de Organización de Empresa']);

      If Not CrearConjunto(cdOrganizacion2, 'nuc_organizacion_imagen', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Organización de Empresa']);
      if Not CargarDatosFiltrados(cdOrganizacion2, 'Padre', [-9]) then
        raise InteligentException.CreateByCode(19, ['Organización de Empresa']);

      if Not CrearConjunto(cdObras, 'nuc_obras', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Catálogo de Convenios']);

      if not CargarDatosFiltrados(cdOrganizacion, 'Activo', ['Si']) then
        raise InteligentException.CreateByCode(6, ['Activo','Organizacion','Si']);

      cdOrganizacion.Open;
      cdNivel.Open;
      cdOrganizacion2.Open;
      cdObras.Open;

      LlenarTreeView(-1);
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmOrganizacion.tvOrganizacionChange(Sender: TObject;
  Node: TTreeNode);
var
  OldCursor: TCursor;
begin
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      ScrollBox0.Visible := tvOrganizacion.Selected.Level = 0;
      ScrollBox1.Visible := (tvOrganizacion.Selected.Level > 0) and (tvOrganizacion.Selected.Level < cdNivel.RecordCount);
      ScrollBox2.Visible := tvOrganizacion.Selected.Level = cdNivel.RecordCount;

      if Not CargarDatosFiltrados(cdOrganizacion2, 'IdOrganizacion', [TDatosNodo(tvOrganizacion.Selected.Data).IdNodo]) then
        raise InteligentException.CreateByCode(19, ['Organización de Empresa']);
      cdOrganizacion2.Refresh;
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

end.
