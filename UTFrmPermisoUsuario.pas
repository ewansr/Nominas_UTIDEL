unit UTFrmPermisoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UInteliDialog, Menus, DB, DBClient, JvExControls, JvLabel, pngimage,
  ExtCtrls, DBCtrls, Buttons, PngSpeedButton, StdCtrls, ComCtrls,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, AdvShapeButton;

type
  TFrmPermisoUsuario = class(TForm)
    PanelPrincipal: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    GridPermisos: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    PanelProgreso: TPanel;
    EtiquetaProgreso: TLabel;
    Progreso: TProgressBar;
    PanelFiltro: TPanel;
    GroupBoxFiltro: TGroupBox;
    Label1: TLabel;
    CbUsuarios: TDBLookupComboBox;
    EditFVentana: TEdit;
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    DsUsuarios: TDataSource;
    CdUsuarios: TClientDataSet;
    cdVentanas: TClientDataSet;
    Cdpermisos: TClientDataSet;
    BtnRefresh: TAdvShapeButton;
    BtnAdd: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    BtnSearch: TAdvShapeButton;
    procedure CbUsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure EditFVentanaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure GridPermisosCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure EditFVentanaEnter(Sender: TObject);
    procedure EditFVentanaExit(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    cdUpt: TClientDataSet;
    procedure LlenarGrid(Grid: TNextGrid; cCliente: TClientDataset);
    procedure ValidarTodos(Grid: TNextGrid);
    procedure Activar(Grid: TNextGrid; idPerm: Integer);
    procedure Desactivar(Grid: TnextGrid; idPerm: Integer);
    procedure EnviarCambios(Grid: TNextGrid);
    procedure GenerarPErmisos(idUSer: Integer);
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPermisoUsuario: TFrmPermisoUsuario;
  ProviderName, PRovidernameupt: String;

implementation

Uses
  ClientModuleUnit1,Unit2;

{$R *.dfm}

procedure TFrmPermisoUsuario.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPermisoUsuario.BtnAddClick(Sender: TObject);
begin
  if cbusuarios.KeyValue = null then
    exit;
  if cdDatos.State <> dsBrowse then
    exit;
    EnviarCambios(GridPermisos);
end;

procedure TFrmPermisoUsuario.BtnRefreshClick(Sender: TObject);
begin
  if cbUsuarios.KeyValue = null then
    exit;
  if cdDatos.State <> dsBrowse then
    exit;
  cdDatos.Refresh;
  LLenarGrid(GridPermisos,cdDatos);
end;

procedure TFrmPermisoUsuario.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmPermisoUsuario.CbUsuariosKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmPermisoUsuario.EditFVentanaEnter(Sender: TObject);
begin
  if EditFVentana.Text = 'Ventana' then
    EditFVentana.Text := '';
end;

procedure TFrmPermisoUsuario.EditFVentanaExit(Sender: TObject);
begin
  if   (Length(Trim(EditFVentana.Text)) = 0) then
      EditFVentana.Text := 'Ventana';
end;

procedure TFrmPermisoUsuario.EditFVentanaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmPermisoUsuario.LlenarGrid(Grid: TNextGrid; cCliente: TClientDataset);
var i: integer;
begin
  if ccliente.State <> dsBrowse then
    exit;
  Grid.ClearRows;
  if ccliente.RecordCount < 1 then
    exit;
  i := 1;
  cCliente.First;
  Grid.BeginUpdate;
  Grid.AddRow(1);
  Grid.Cell[3,0].AsString := 'Todos';
  while not cCliente.Eof do
  begin
    Grid.AddRow(1);
    Grid.Cell[0,i].AsInteger := ccliente.FieldByName('idpermisousuario').AsInteger;
    Grid.Cell[1,i].AsInteger := ccliente.FieldByName('idpermiso').AsInteger;
    Grid.Cell[2,i].AsString := ccliente.FieldByName('titulopantalla').AsString;
    Grid.Cell[3,i].AsString := ccliente.FieldByName('codigopermiso').AsString;
    if ccliente.FieldByName('valor').AsInteger = 1 then
      Grid.Cell[4,i].AsBoolean := True
    else
      Grid.Cell[4,i].AsBoolean := False;
    inc(i);
    cCliente.Next;
  end;
  Grid.EndUpdate;
end;

procedure TFrmPermisoUsuario.ValidarTodos(Grid: TNextGrid);
var i: integer;
begin
  if grid.RowCount < 2 then
    exit;
  i := 1;
  while i < Grid.RowCount-1 do
  begin
    Grid.Cell[4,i].AsBoolean := Grid.Cell[4,0].AsBoolean;
  inc(i);
  end;
end;

procedure TFrmPermisoUsuario.Filtrar;
begin
  if cbUsuarios.KeyValue = null then
    exit;
  CargarDatosFiltrados(cdDatos, 'idusuario, titulopantalla', ['' + '%','' + '%']);
  if (Length(Trim(EditFVentana.Text)) > 0) and (EditFVentana.Text <> 'Ventana') then
  Begin
    CargarDatosFiltrados(cdDatos, 'idusuario, titulopantalla', [cbUsuarios.KeyValue ,EditFVentana.text + '%']);
  End
  else
  begin
    CargarDatosFiltrados(cdDatos, 'idusuario', [cbUsuarios.KeyValue]);
  end;
  cdDatos.Refresh;
  if cdDatos.RecordCount = 0 then
  begin
    GenerarPermisos(CbUsuarios.KeyValue);
    cdDatos.Refresh;
  end;
  LLenarGrid(GridPermisos,cdDatos);
end;

procedure TFrmPermisoUsuario.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);
  cdUsuarios.Close;
  CrearConjunto(cdUsuarios, 'nuc_usuario', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdUsuarios, 'idusuario', [-1]);
  cdUsuarios.Open;
  cdDatos.Close;
  CrearConjunto(cdDatos, 'nuc_permisousuario', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdDatos, 'idpermisousuario', [-9]);
  cdDatos.Open;
end;

procedure TFrmPermisoUsuario.GenerarPErmisos(idUSer: Integer);
var i: integer;
begin
  i := 0;
  cdVentanas.Close;
  CrearConjunto(cdVentanas, 'nuc_pantalla', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdVentanas, 'idpantalla', [-1]);
  cdVentanas.Open;
  cdPermisos.Close;
  CrearConjunto(cdPermisos, 'nuc_permiso', ProviderName, ccCatalog);
  CargarDatosFiltrados(cdPermisos, 'idpermiso', [-1]);
  cdPermisos.Open;
  cdVentanas.First;
  panelProgreso.Visible := True;
  EtiquetaProgreso.Visible := True;
  panelProgreso.repaint;
  EtiquetaProgreso.repaint;
  progreso.Max := cdVentanas.RecordCount;
  while not cdVentanas.Eof do
  begin
    cdPermisos.First;
    while not cdPermisos.Eof do
    begin
      cdUpt := TClientDataSet.Create(Nil);
      CrearConjunto(cdUpt, 'nuc_permisousuario', providernameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idpermisousuario', [-9]);
      cdUpt.Open;
      cdUpt.Append;
      cdUpt.FieldByName('idpermisousuario').AsInteger := 0;
      cdUpt.FieldByName('idpermiso').AsInteger := cdPermisos.FieldByName('idpermiso').AsInteger;
      cdUpt.FieldByName('idpantalla').AsInteger := cdVentanas.FieldByName('idpantalla').AsInteger;
      cdUpt.FieldByName('idusuario').AsInteger := idUser;
      cdUpt.FieldByName('valor').AsString := '0';
      cdUpt.Post;
      cdUpt.ApplyUpdates(-1);
      cdUpt.Free;
      cdPermisos.Next;
    end;
    inc(i);
    progreso.Position := i;
    cdVentanas.Next;
  end;
  panelProgreso.Visible := False;
end;

procedure TFrmPermisoUsuario.GridPermisosCellClick(Sender: TObject; ACol,
  ARow: Integer);
  var idselected: integer;
  cdUpt: TClientDataset;
  ProvidernameUpt: String;
begin
  if GridPermisos.SelectedColumn = 4 then
  begin
   if not ClientModule1.LeePermisos(TAdvShapeButton(BtnAdd),Self,False) then
     Exit;
   if GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean then
     GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean := False
   else
     GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean := True;
   end;
   if GridPermisos.SelectedRow = 0 then
   begin
     ValidarTodos(GridPermisos);
   end
   else
   begin
     idSelected := GridPermisos.Cell[0,GridPermisos.SelectedRow].AsInteger;
     if GridPermisos.Cell[4,GridPermisos.SelectedRow].AsBoolean then
       activar(GridPermisos, idselected)
     else
       desactivar(GridPermisos,idselected);
   end;
end;

procedure TFrmPermisoUsuario.EnviarCambios(Grid: TNextGrid);
var i, idselected: integer;

begin
  if grid.RowCount < 2 then
    exit;
  if not ClientModule1.LeePermisos(TAdvShapeButton(BtnAdd),Self,False) then
    Exit;
 try
  panelProgreso.Visible := True;
  EtiquetaProgreso.Visible := True;
  panelProgreso.repaint;
  EtiquetaProgreso.repaint;
  progreso.Max := grid.RowCount-1;
  i := 1;
  while i < Grid.RowCount-1 do
  begin
    idSelected := Grid.Cell[0,i].AsInteger;
     if Grid.Cell[4,i].AsBoolean then
       activar(Grid, idselected)
     else
       desactivar(Grid,idselected);
  inc(i);
  progreso.Position := i;
  if i = Grid.RowCount-1 then
    InteliDialog.ShowModal('Cambios guardados correctamente.','', mtInformation, [mbOk], 0);
  end;
  panelProgreso.Visible := False;
  Except
    on e: Exception do
    begin
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
      panelProgreso.Visible := False;
    end;
 end;
end;

procedure TFrmPermisoUsuario.Desactivar(Grid: TnextGrid;idPerm: Integer);
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_permisousuario', providernameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idpermisousuario', [idPerm]);
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      try
        cdUpt.Edit;
        cdUpt.FieldByName('valor').AsString := '0';
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

procedure TFrmPermisoUsuario.Activar(Grid: TNextGrid; idPerm: Integer);

begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_permisousuario', providernameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idpermisousuario', [idPerm]);
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      try
        cdUpt.Edit;
        cdUpt.FieldByName('valor').AsString := '1';
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
end.
