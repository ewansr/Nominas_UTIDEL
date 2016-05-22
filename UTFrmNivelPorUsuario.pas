unit UTFrmNivelPorUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,URegistro, Forms,
  Dialogs, AdvShapeButton, StdCtrls, DBCtrls, ExtCtrls, DB, DBClient, UInteliDialog,
  ComCtrls;

type
  TFrmNivelPorUsuario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    CblcUsuario: TDBLookupComboBox;
    Label1: TLabel;
    LbxAsignados: TListBox;
    LbxDisponibles: TListBox;
    BtnEdit1: TAdvShapeButton;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    Panel4: TPanel;
    BtnClose: TAdvShapeButton;
    CdDisponibles: TClientDataSet;
    DsDisponibles: TDataSource;
    CdUsuarios: TClientDataSet;
    DsUsuarios: TDataSource;
    CdAsignados: TClientDataSet;
    DsAsignados: TDataSource;
    Label2: TLabel;
    Asignados: TLabel;
    lblDisponibles: TLabel;
    BtnEdit: TAdvShapeButton;
    PanelProgreso: TPanel;
    EtiquetaProgreso: TLabel;
    Progreso: TProgressBar;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CblcUsuarioClick(Sender: TObject);
    procedure BtnEdit1Click(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure AdvShapeButton2Click(Sender: TObject);
    procedure AdvShapeButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    PnUsuario : string;
    ModuloPantalla: string;
    function CargarLista(Campo, campo2: string ;Lista: TListbox; Cliente: TClientDataSet; listaString: TStringlist): Boolean;
    procedure Asigna(listboxAsig, ListboxDis: Tlistbox; ListaAsig,
      ListaDis: TStringList);
    procedure DesAsigna(listboxAsig, ListboxDis: Tlistbox; ListaAsig,
      ListaDis: TStringList);
    Function CargarListaDisp(Campo,campo2: string ;Lista:TListbox; Cliente:TClientDataSet; ListaAsig,listaString: TstringList):Boolean;
    procedure AccedeACoordenadas;
  public
    { Public declarations }
  end;

var
  FrmNivelPorUsuario: TFrmNivelPorUsuario;
    ListaAsignado , ListaDisponible: TStringList;
implementation

uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmNivelPorUsuario.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNivelPorUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(CdUsuarios.ProviderName);
  ListaDisponible.Free;
  ListaAsignado.Free;
  LiberarVentana(Self, Action);
end;

procedure TFrmNivelPorUsuario.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'NIVELXUSUARIO';
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  AccedeACoordenadas;
end;

procedure TFrmNivelPorUsuario.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
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

  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Left := xLeft;
  Self.Width := xWidth;
  Self.Top := xTop;
  Self.Height := xHeight;
end;

procedure TFrmNivelPorUsuario.AdvShapeButton1Click(Sender: TObject);
begin
  if CblcUsuario.KeyValue <> null then
  begin
    if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
      Exit;
    desAsigna(LbxAsignados,LbxDisponibles,ListaAsignado,ListaDisponible);
  end;
end;

procedure TFrmNivelPorUsuario.BtnEdit1Click(Sender: TObject);
begin
  if CblcUsuario.KeyValue <> null then
  begin
    if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
      Exit;
    Asigna(LbxAsignados,LbxDisponibles,ListaAsignado,ListaDisponible);
  end;
end;

procedure TFrmNivelPorUsuario.AdvShapeButton2Click(Sender: TObject);
var progres: Integer;
begin
  if CblcUsuario.KeyValue <> null then
  begin
    panelProgreso.Visible := True;
    EtiquetaProgreso.Visible := True;
    panelProgreso.repaint;
    EtiquetaProgreso.repaint;
    progreso.Max := LbxDisponibles.Count;
    progres := 0;
    while LbxDisponibles.Count > 0 do
    begin
      if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
        Exit;
      Asigna(LbxAsignados,LbxDisponibles,ListaAsignado,ListaDisponible);
      progreso.Position := progres;
      Inc(progres);
    end;
    panelProgreso.Visible := False;
  end;
end;

procedure TFrmNivelPorUsuario.AdvShapeButton3Click(Sender: TObject);
var progres: Integer;
begin
  if CblcUsuario.KeyValue <> null then
  begin
    panelProgreso.Visible := True;
    EtiquetaProgreso.Visible := True;
    panelProgreso.repaint;
    EtiquetaProgreso.repaint;
    progreso.Max := LbxAsignados.Count;
    progres := 0;
    while LbxAsignados.Count > 0 do
    begin
      if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
        Exit;
      DesAsigna(LbxAsignados,LbxDisponibles,ListaAsignado,ListaDisponible);
      progreso.Position := progres;
      Inc(progres);
    end;
    panelProgreso.Visible := False;
  end;
end;

procedure TFrmNivelPorUsuario.Asigna(listboxAsig, ListboxDis: Tlistbox; ListaAsig, ListaDis: TStringList );
var
  cdUpdte: TClientDataSet;
  PnUpdate : string;
begin
  cdUpdte := TClientDataSet.Create(self);
  cdUpdte.RemoteServer := ClientModule1.DSProviderConnection1;
  CrearConjunto(cdUpdte,'nuc_usuarioorganizacion',PnUpdate,ccUpdate);
  CargarDatosFiltrados(cdUpdte,'idusuario',[-9]);
 { ListaDis[ListboxDis.ItemIndex]}
  cdUpdte.Open;
  if ListboxDis.Count > 0 then
  begin
    cdUpdte.Append;
    cdUpdte.fieldbyname('idusuarioorganizacion').AsInteger := 0;
    cdUpdte.fieldbyname('idusuario').asstring := CblcUsuario.KeyValue;
    cdUpdte.fieldbyname('idorganizacion').asstring := ListaDis[ListboxDis.ItemIndex];
    cdUpdte.Post;
    cdUpdte.ApplyUpdates(-1);

    ListboxAsig.Items.Add(ListboxDis.Items.Strings[ListboxDis.ItemIndex]);
    ListaAsig.Add(ListaDis[ListboxDis.ItemIndex]);
    ListaDis.Delete(listboxDis.ItemIndex);
    ListboxDis.Items.Delete(listboxDis.ItemIndex);
    listboxAsig.ItemIndex := 0;
    if listboxDis.Count > 0 then
      listboxDis.ItemIndex := 0;
  end;
  EliminarConjunto(cdUpdte.ProviderName);
  cdUpdte.Free;
end;

procedure TFrmNivelPorUsuario.DesAsigna(listboxAsig, ListboxDis: Tlistbox; ListaAsig, ListaDis: TStringList );
var
  cdUpdte: TClientDataSet;
  PnUpdate : string;
begin
  cdUpdte := TClientDataSet.Create(self);
  cdUpdte.RemoteServer := ClientModule1.DSProviderConnection1;
  CrearConjunto(cdUpdte,'nuc_usuarioorganizacion',PnUpdate,ccUpdate);
  CargarDatosFiltrados(cdUpdte,'idusuario, idorganizacion',[CblcUsuario.KeyValue,ListaAsig[ListboxAsig.ItemIndex]]);
 { ListaDis[ListboxDis.ItemIndex]}
  cdUpdte.Open;
  if ListboxAsig.Count > 0 then
  begin
    cdUpdte.First;
    while not cdUpdte.eof do
    begin
      cdUpdte.Delete;
      cdUpdte.ApplyUpdates(-1);
    cdUpdte.Next;
    end;

    ListboxDis.Items.Add(ListboxAsig.Items.Strings[ListboxAsig.ItemIndex]);
    ListaDis.Add(ListaAsig[ListboxAsig.ItemIndex]);

    ListaAsig.Delete(ListboxAsig.ItemIndex);
    ListboxAsig.Items.Delete(ListboxAsig.ItemIndex);
    ListboxDis.ItemIndex := 0;
    if listboxAsig.Count > 0 then
      listboxAsig.ItemIndex := 0;
  end;
  EliminarConjunto(cdUpdte.ProviderName);
  cdUpdte.Free;
end;

Function TFrmNivelPorUsuario.CargarLista(Campo,campo2: string ;Lista:TListbox; Cliente:TClientDataSet; listaString: TstringList):Boolean;
// esta funcion recibe los nombres de los campos de, listbox y clientdataset
// y llena el listbox que se le ingresa con los datos del campo ingresado
// se genera una lista de id o del campo2 en el Tstringlist ingresado
begin
  Result := False;
    Lista.Clear;
    Lista.Items.Clear;
    listaString.BeginUpdate;
    listaString.Clear;
  if Cliente.RecordCount > 0 then
  begin
    Cliente.First;
    while not Cliente.Eof do
    begin
      Lista.Items.Add(Cliente.FieldByName(campo).AsString);
      listaString.Add(Cliente.FieldByName(campo2).AsString);
      Cliente.Next;
    end;
    Result := True;
    Lista.ItemIndex := 0;
  end;
      listaString.EndUpdate;
end;

procedure TFrmNivelPorUsuario.CblcUsuarioClick(Sender: TObject);
begin
  if Length(Trim(CblcUsuario.Text)) > 0 then
  begin
    CargarDatosFiltrados(CdAsignados, 'idusuario', [CblcUsuario.KeyValue]);
    CdAsignados.Refresh;
    CargarLista('nombreorganizacion','idorganizacion' ,LbxAsignados, CdAsignados, ListaAsignado);
    CargarListaDisp('nombreorganizacion','idorganizacion',LbxDisponibles, CdDisponibles,ListaAsignado,ListaDisponible);
  end;
end;

Function TFrmNivelPorUsuario.CargarListaDisp(Campo,campo2: string ;Lista:TListbox; Cliente:TClientDataSet; ListaAsig,listaString: TstringList):Boolean;
var
  cont: Integer;
  Encontrado : Boolean;
begin
  Result := False;
    Lista.Clear;
    Lista.Items.Clear;
    listaString.BeginUpdate;
    listaString.Clear;
  if Cliente.RecordCount > 0 then
  begin
    Cliente.First;
    while not Cliente.Eof do
    begin
      Encontrado := False;
      cont := 0;
      while cont < ListaAsig.Count do
      begin
        if ListaAsig[cont] = Cliente.FieldByName(campo2).AsString then
          Encontrado := True;
        inc(cont);
      end;
      if not Encontrado then
      begin
        Lista.Items.Add(Cliente.FieldByName(campo).AsString);
        listaString.Add(Cliente.FieldByName(campo2).AsString);
      end;
      Cliente.Next;
    end;
    Result := True;
    Lista.ItemIndex := 0;
  end;
    listaString.EndUpdate;

end;

procedure TFrmNivelPorUsuario.FormShow(Sender: TObject);
begin
  Try
    ClientModule1.RastrearGrids(Self);
    ClientModule1.ComponentColor(Self);
    Self.Caption := LowerCase(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString) + ' por usuario';
    Asignados.Caption := LowerCase(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString) + ' asignado';
    lblDisponibles.Caption := LowerCase(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString) + ' disponible';

    ListaAsignado := TStringList.Create;
    ListaDisponible := TStringList.Create;

    CdUsuarios.Close;
    CrearConjunto(CdUsuarios, 'nuc_usuario', PnUsuario, ccSelect);
   // CargarDatosFiltrados(CdUsuarios, 'idusuario', [idsolicitud]);
    CdUsuarios.Open;

    CdAsignados.Close;
    CrearConjunto(CdAsignados, 'nuc_usuarioorganizacion', PnUsuario, ccCatalog);
    CargarDatosFiltrados(CdAsignados, 'idusuario', [-9]);
    CdAsignados.Open;

    CdDisponibles.Close;
    CrearConjunto(CdDisponibles, cOrganizacion, PnUsuario, ccCatalog);
    CargarDatosFiltrados(CdDisponibles, 'idnivel', [ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').AsInteger]);
    CdDisponibles.Open;
    CargarLista('nombreorganizacion','idorganizacion',LbxDisponibles, CdDisponibles, ListaDisponible);
    LbxDisponibles.ItemIndex := 0;
  Except
    // Ante cualquier error se debe cerrar la ventana
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No se ha podido invocar la ventana',
                             'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                             e.Message, mtWarning, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Error catastrófico',
                             'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                             e.Message + #10 + #10 + 'Informe de esto al administrador del sistema', mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
