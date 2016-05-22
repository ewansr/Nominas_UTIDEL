unit UTFrmPermisosRol2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExComCtrls, JvComCtrls, JvCheckTreeView, AdvShapeButton,
  ExtCtrls, xDatabase, DBClient, DB, JvExControls, JvLabel, AdvSmoothLabel,
  StdCtrls, AdvCombo, AdvDBComboBox, DBCtrls, AdvFontCombo;

type
  TFrmPermisosRol = class(TForm)
    pnlBotones: TPanel;
    btnBtnAdd: TAdvShapeButton;
    pnl2: TPanel;
    btnBtnClose: TAdvShapeButton;
    pnlTop: TPanel;
    pnlData: TPanel;
    treePermisos: TJvCheckTreeView;
    cdPermisosRol: TClientDataSet;
    lblTituloRol: TAdvSmoothLabel;
    lblDescripcion: TJvLabel;
    btnTodos: TButton;
    btnNinguno: TButton;
    cdSistemas: TClientDataSet;
    dsSistemas: TDataSource;
    cmbSistemas: TAdvOfficeComboBox;
    JvLabel1: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure btnBtnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTodosClick(Sender: TObject);
    procedure btnNingunoClick(Sender: TObject);
    procedure cmbSistemasChange(Sender: TObject);
    procedure Guardar(VerConfirmacion: boolean = true);
  private
    { Private declarations }
    ModuloNuevo: boolean;
    ListaModulos: TLista;
    ListaPermisos: TListaObjeto;
    procedure LlenarTree;
    procedure CargarPermisos;
  public
    { Public declarations }
    Rol: TLista;
  end;

type
  TModuloPermiso = class
    Modulo: Integer;
    Permiso: Integer;
    constructor Create(Modulo, Permiso: Integer);
  end;

var
  FrmPermisosRol: TFrmPermisosRol;

implementation

uses
  ClientModuleUnit1, UInteliDialog;
{$R *.dfm}


constructor TModuloPermiso.Create(Modulo: Integer; Permiso: Integer);
begin
  Self.Modulo := Modulo;
  Self.Permiso := Permiso;
end;

procedure TFrmPermisosRol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto([cdPermisosRol,cdSistemas]);
end;

procedure TFrmPermisosRol.FormShow(Sender: TObject);
begin
  // cargar los datos de los sistemas
  ClientModule1.ComponentColor(self);
  CrearConjunto(cdSistemas,'nuc_sistema',ccCatalog);
  CargarDatosFiltrados(cdSistemas,'disponibles',['si']);
  cdSistemas.Open;
  while not cdSistemas.eof do
  begin
    cmbSistemas.Items.AddObject(cdSistemas.FieldByName('descripcion').AsString,TObject(cdSistemas.RecNo));
    cdSistemas.Next;
  end;

  cdSistemas.First;
  cmbSistemas.ItemIndex := 0;

  cursor := crSQLWait;
  LlenarTree;
  CargarPermisos;
  cursor := crDefault;
end;

procedure TFrmPermisosRol.LlenarTree;
var
  TreeParent,TreeChild: TTreeNode;
  zona: integer;
  lPerfiles: TListaObjeto;
  Nivel,NivelAnt: string;
  cdModulos,
  cdPermisosMod: TClientDataSet;
begin
  treePermisos.Items.Clear;

  // cargar los datos de los módulos
  cdModulos := TClientDataSet.Create(nil);
  CrearConjunto(cdModulos,'nuc_modulo',ccCatalog);
  CargarDatosFiltrados(cdModulos,'idsistema',[cdSistemas.FieldByName('idsistema').AsInteger]);
  cdModulos.Open;

  // cargar los datos de los permisos por módulo
  cdPermisosMod := TClientDataSet.Create(nil);
  CrearConjunto(cdPermisosMod,'nuc_modulopermiso',ccCatalog);
  CargarDatosFiltrados(cdPermisosMod,'idsistema',[cdSistemas.FieldByName('idsistema').AsInteger]);
  cdPermisosMod.Open;

  ListaModulos := TLista.Create();
  lPerfiles := TListaObjeto.Create();
  ListaPermisos := TListaObjeto.Create();
  // Cargar los módulos para los permisos
  cdModulos.First;
  while not cdModulos.Eof do
  begin
    Nivel := cdModulos.FieldByName('Nivel').AsString;
    with treePermisos.Items do
    begin
      if Nivel = '0' then
      begin
        lPerfiles.Valor[Nivel] := TObject(Add(nil, cdModulos.FieldByName('TituloModulo').AsString));
        treePermisos.CheckBox[TTreeNode(lPerfiles.Valor[Nivel])] := false;
      end
      else
      begin
        NivelAnt := IntToStr(StrToInt(Nivel) - 1);
        lPerfiles.Valor[Nivel] := TObject(AddChild(TTreeNode(lPerfiles.Valor[NivelAnt]),cdModulos.FieldByName('TituloModulo').AsString));
        treePermisos.CheckBox[TTreeNode(lPerfiles.Valor[Nivel])] := false;
        if cdModulos.FieldByName('Permisos').AsString = 'si' then
        begin
          ListaModulos.Valor[IntToStr(TTreeNode(lPerfiles.Valor[Nivel]).AbsoluteIndex)] :=
                              cdModulos.FieldByName('IdModulo').AsInteger;
          // Filtrar los permisos correspondientes por cada módulo
          cdPermisosMod.Filtered := false;
          cdPermisosMod.Filter := format('idmodulo = %d',[cdModulos.FieldByName('IdModulo').AsInteger]);
          cdPermisosMod.Filtered := true;
          cdPermisosMod.First;
          while not cdPermisosMod.eof do
          begin
            TreeChild := AddChild(TTreeNode(lPerfiles.Valor[Nivel]),cdPermisosMod.FieldByName('titulopermiso').AsString);
            ListaPermisos[IntToStr(TreeChild.AbsoluteIndex)] := TModuloPermiso.Create(cdModulos.FieldByName('IdModulo').AsInteger,cdPermisosMod.FieldByName('idpermiso').AsInteger);
            cdPermisosMod.Next;
          end;

        {  ListaModulos.Valor[IntToStr(TTreeNode(lPerfiles.Valor[Nivel]).AbsoluteIndex)] :=
                              cdModulos.FieldByName('iIdModulo').AsInteger;
          AddChild(TTreeNode(lPerfiles.Valor[Nivel]),'Ver');
          AddChild(TTreeNode(lPerfiles.Valor[Nivel]),'Insertar/Editar');
          AddChild(TTreeNode(lPerfiles.Valor[Nivel]),'Cancelar/Borrar');
          AddChild(TTreeNode(lPerfiles.Valor[Nivel]),'Imprimir');
          if AnsiCompareText(cdModulos.FieldByName('sNombre').AsString,'Salida de equipo') = 0 then
            AddChild(TTreeNode(lPerfiles.Valor[Nivel]),'Entregar/Recibir'); }
        end;
      end;
    end;
    cdModulos.Next;
  end;
  treePermisos.FullExpand;
  cdModulos.Close;
  EliminarConjunto(cdModulos);
  cdModulos.Free;
  cdPermisosMod.Close;
  EliminarConjunto(cdPermisosMod);
  cdPermisosMod.Free;
end;

procedure TFrmPermisosRol.btnBtnAddClick(Sender: TObject);
begin
  Guardar();
end;

procedure TFrmPermisosRol.Guardar(VerConfirmacion: boolean = true);
var
  i: integer;
  objPermiso: TModuloPermiso;
  Valor: integer;
  CuantosSi,Cuantos: integer;
  Respuesta: integer;
begin
  try
    cursor := crSQLWait;
    CuantosSi := 0; // Con esto puedo saber si estan marcados todos o ninguno de los permisos
    Cuantos := 0; // Saber el total de permisos para comparar el anterior

    // Primero hacer un barrido y calcular si hay necesidad de notificaciones
    for i := 0 to TreePermisos.Items.Count - 1 do
    begin
      if TreePermisos.CheckBox[TreePermisos.Items[i]] then
      begin
        Inc(Cuantos);
        if TreePermisos.Checked[TreePermisos.Items[i]] then
            Inc(CuantosSi);
      end;
    end;


    // Checar si no se tenian permisos al subsistema y se le van a comenzar a agregar
    if ModuloNuevo AND (CuantosSi > 0) then
    begin
      if InteliDialog.ShowModal('CONFIRMACION','Confirmar nuevo acceso a subsistema.',
        'Se han asignado permisos a un subsistema al cual el rol no tenia permisos anteriormente.'
        + #10 + '¿Desea guardar los permisos y darle acceso al subsistema:'
        + #10 + cmbSistemas.Text
        + #10 + 'al rol:'
        + #10 + lblTituloRol.Caption.Text + '?',
        mtConfirmation,[mbYes,mbNo],0) = mrNo then
          Exit;
    end;

    // Checar si se tenian permisos al subsistema y se le van a quitar todos
    if (not ModuloNuevo) AND (CuantosSi = 0) then
    begin
      if InteliDialog.ShowModal('CONFIRMACION','Confirmar revocamiento de acceso a subsistema.',
        'Se han quitado todos los permisos a un subsistema al cual el rol tenia permisos anteriormente.' +
        #10 + 'Esto quita por default el acceso al subsistema.' +
        #10 + '¿Desea guardar los permisos y revocar el acceso al subsistema:' +
        #10 + cmbSistemas.Text +
        #10 + 'al rol:' +
        #10 + lblTituloRol.Caption.text + '?',
        mtConfirmation,[mbYes,mbNo],0) = mrNo then
          Exit;
    end;


    for i := 0 to TreePermisos.Items.Count - 1 do
    begin
      if TreePermisos.CheckBox[TreePermisos.Items[i]] then
      begin
        Inc(Cuantos);
        objPermiso := TModuloPermiso(ListaPermisos.Valor[IntToStr(i)]);
        // si lo encuentra, guardar el valor
        if cdPermisosRol.Locate('idmodulo; idpermiso', VarArrayOf([objPermiso.Modulo, objPermiso.Permiso]),[]) then
        begin

          if TreePermisos.Checked[TreePermisos.Items[i]] then
          begin
            Valor := 1;
            Inc(CuantosSi);
          end
          else
            Valor := 0;
          if cdPermisosRol.FieldByName('valor').AsInteger <> Valor then
          begin
            cdPermisosRol.Edit;
            cdPermisosRol.FieldByName('valor').AsInteger := valor;
            cdPermisosRol.Post;
            cdPermisosRol.ApplyUpdates(-1);
          end;
        end
        else  // si no lo encuentra, crearlo
        begin
          cdPermisosRol.Append;
          cdPermisosRol.FieldByName('idsistema').AsInteger := cdSistemas.FieldByName('idsistema').AsInteger;
          cdPermisosRol.FieldByName('idrol').AsInteger := Rol['idrol'];
          cdPermisosRol.FieldByName('idmodulo').AsInteger := objPermiso.Modulo;
          cdPermisosRol.FieldByName('idpermiso').AsInteger := objPermiso.Permiso;
          if TreePermisos.Checked[TreePermisos.Items[i]] then
          begin
            cdPermisosRol.FieldByName('valor').AsInteger := 1;
            Inc(CuantosSi);
          end
          else
            cdPermisosRol.FieldByName('valor').AsInteger := 0;
          cdPermisosRol.Post;
          cdPermisosRol.ApplyUpdates(-1);
        end;
      end;
    end;
    if VerConfirmacion then
      InteliDialog.ShowModal('Información','La información se ha guardado satisfactoriamente','',mtInformation,[mbOK],0);
    Close;
  except
    on e: exception do
      InteliDialog.ShowModal('Error al guardar',e.Message,mtError,[mbOK],0);
  end;
  cursor := crDefault;
end;

procedure TFrmPermisosRol.btnBtnCloseClick(Sender: TObject);
begin
  Close;
end;



procedure TFrmPermisosRol.btnNingunoClick(Sender: TObject);
Var
  i: Integer;
begin
  inherited;
  for i := 0 to TreePermisos.Items.Count - 1 do
  begin
    if TreePermisos.CheckBox[TreePermisos.Items[i]] then
    begin
      TreePermisos.Checked[TreePermisos.Items[i]] := false;
    end;
  end;
end;

procedure TFrmPermisosRol.btnTodosClick(Sender: TObject);
Var
  i: Integer;
begin
  inherited;
  for i := 0 to TreePermisos.Items.Count - 1 do
  begin
    if TreePermisos.CheckBox[TreePermisos.Items[i]] then
    begin
      TreePermisos.Checked[TreePermisos.Items[i]] := true;
    end;
  end;
end;

procedure TFrmPermisosRol.CargarPermisos;
var
  i: integer;
  objPermiso: TModuloPermiso;
begin
  lblTituloRol.Caption.Text := rol['titulorol'];
  lblDescripcion.Caption := rol['descripcion'];
  // Cargar los permisos del rol
  cdPermisosRol.Close;
  CrearConjunto(cdPermisosRol,'nuc_permisorol',ccUpdate);
  CargarDatosFiltrados(cdPermisosRol,'idsistema,idrol',[cdSistemas.FieldByName('idsistema').AsInteger,rol['idrol']]);
  cdPermisosRol.Open;

  ModuloNuevo := true;
  // llenar el tree con los valores indicados
  for i := 0 to TreePermisos.Items.Count - 1 do
  begin
    if TreePermisos.CheckBox[TreePermisos.Items[i]] then
    begin
      objPermiso := TModuloPermiso(ListaPermisos.Valor[IntToStr(i)]);
      if cdPermisosRol.Locate('idmodulo; idpermiso', VarArrayOf([objPermiso.Modulo, objPermiso.Permiso]),[]) then
        TreePermisos.Checked[TreePermisos.Items[i]] := (cdPermisosRol.FieldByName('valor').AsInteger = 1)
      else
        TreePermisos.Checked[TreePermisos.Items[i]] := false;

      // Con al menos un checkbox marcado poner la variable a falso
      if TreePermisos.Checked[TreePermisos.Items[i]] then
        ModuloNuevo := true;
    end;
  end;
  treePermisos.SelectItem(TreePermisos.Items[0]);
  treePermisos.SetFocus;
end;

procedure TFrmPermisosRol.cmbSistemasChange(Sender: TObject);
Var
  respuesta: integer;
begin
  respuesta := InteliDialog.ShowModal('CONFIRMACION','Confirmar guardar los cambios.',
    'Si ha hecho cambios, estos podrían perderse.' + #10 + '¿Desea guardar los cambios ahora?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0);

  case respuesta of
    mrCancel: exit;
    mrYes: Guardar(false);
  end;

  cdSistemas.RecNo := integer(cmbSistemas.Items.Objects[cmbSistemas.ItemIndex]);
  cursor := crSQLWait;
  LlenarTree;
  CargarPermisos;
  cursor := crDefault;
end;

end.
