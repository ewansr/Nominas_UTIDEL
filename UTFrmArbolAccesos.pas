unit UTFrmArbolAccesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ExtCtrls, ComCtrls, StdCtrls, DBCtrls, Buttons, UIntelidialog,
  URegistro,AdvShapeButton;

type
  TFrmArbolAccesos = class(TForm)
    Panel1: TPanel;
    cdOrganizaciones: TClientDataSet;
    cdNiveles: TClientDataSet;
    DsOrganizaciones: TDataSource;
    DsNiveles: TDataSource;
    cdOrganizacionesAux: TClientDataSet;
    Panel2: TPanel;
    TreeView1: TTreeView;
    AdvShapeButton1: TAdvShapeButton;
    BtnRec: TAdvShapeButton;
    cdUsuarioOrg: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCancelClick(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    providername: String;
    FuncTion NivelAcceso(ClienteNiveles: TClientDataset):Integer;
    Function GeneraCadena(Dataset: TClientDataset; idOrganizacion: Integer): String;
    function NivelMinimo(Ccliente: Tclientdataset; campo: String): Integer;
    procedure AccedeACoordenadas;

    { Private declarations }
  public
    { Public declarations }
    CadenadeSeleccion: String;
    Cancelado, solovista: Boolean;
  end;

var
  FrmArbolAccesos: TFrmArbolAccesos;
  nivelAcces: Integer;
  ListaId: TStringList;
implementation

Uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmArbolAccesos.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmArbolAccesos.BtnRecClick(Sender: TObject);
begin
  Try
    if Length(Trim(cadenadeSeleccion)) = 0 then
      Raise Exception.Create('El nivel seleccionado no es un acceso permitido.');
    Cancelado := False;
    Close;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede agregar.',e.message, mtInformation, [mbOk], 0);
      Cancelado := True;
    end;
  End;
end;

procedure TFrmArbolAccesos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
end;

procedure TFrmArbolAccesos.FormCreate(Sender: TObject);
begin
  EliminarConjunto([cdUsuarioOrg, cdOrganizaciones, cdOrganizacionesAux, cdNiveles]);
  AccedeACoordenadas;
end;

procedure TFrmArbolAccesos.AccedeACoordenadas;
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

Function TFrmArbolAccesos.NivelMinimo(Ccliente: Tclientdataset; campo: String): Integer;
var
  ValorActual: Integer;
begin
  Try
    cCliente.Active := False;
    CargarDatosFiltrados(ccliente, 'idnivelorganizacion', [-1]);
    ccliente.Open;

    if cCliente.RecordCount = 0 then
      raise Exception.Create('');

    cCliente.First;
    ValorActual := cCliente.FieldByName(campo).asInteger;
    while not cCliente.eof do
    begin
      if cCliente.FieldByName(campo).asInteger < ValorActual then
        valorActual := cCliente.FieldByName(campo).asInteger;
      cCliente.next;
    end;
    Result := valoractual;
  Except
    Result := -1;
  End;
end;

procedure TFrmArbolAccesos.FormShow(Sender: TObject);
var
  Direccion: String;
  nivelInicio, x: Integer;
  PadreArbol: TTreeNode;
begin
  Cancelado := True;
  ClientModule1.ComponentColor(Self);
  if solovista = true then
    btnRec.Visible := False;
  try
    cdUsuarioOrg.Active := False;
    CrearConjunto(cdUsuarioOrg, cUsuarioOrganizacion, ccCatalog);
    CargarDatosFiltrados(cdUsuarioOrg, 'idusuario', [ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger]);
    cdUsuarioOrg.Open;
    CadenadeSeleccion := '';
    ListaId := TStringList.Create;
    TreeView1.Items.Clear;
    PadreArbol := nil;
    CrearConjunto(cdOrganizaciones, cOrganizacion, ccUpdate);
    cdOrganizaciones.Open;
    CrearConjunto(cdOrganizacionesAux, cOrganizacion, ccCatalog);
    cdOrganizacionesAux.Open;

    CrearConjunto(cdNiveles, cnivelorganizacion, ccCatalog);
    nivelAcces := NivelAcceso(cdNiveles);

    CargarDatosFiltrados(cdNiveles, 'idnivelorganizacion', [-1]);
    cdNiveles.Refresh;
    nivelInicio := Nivelminimo(cdNiveles, 'idnivelorganizacion');
    CargarDatosFiltrados(cdOrganizaciones, 'idnivel', [0]);
    cdOrganizaciones.Refresh;
    cdNiveles.first;
    while not cdNiveles.eof do
    begin
      CargarDatosFiltrados(cdOrganizaciones, 'idnivel', [cdNiveles.FieldByName('idnivelorganizacion').asInteger]);
      cdOrganizaciones.Refresh;
      cdOrganizaciones.First;
      //si el nivel es igual al nivel inicial, entonces es un padre
      if cdNiveles.FieldByName('idnivelorganizacion').asInteger = nivelinicio then
      begin
        cdOrganizaciones.First;
        while not cdOrganizaciones.Eof do
        begin
          if cdOrganizaciones.FieldByName('idnivel').AsInteger <= nivelAcces then
          begin
            TreeView1.Items.AddChild(nil,cdOrganizaciones.FieldByName('codigoorganizacion').AsString);
            ListaId.Add(cdOrganizaciones.FieldByName('idorganizacion').AsString);
            Direccion := cdOrganizaciones.FieldByName('idorganizacion').AsString;
           end;
          cdORganizaciones.Next;
        end;
      end
      // en caso contrario es un hijo y hay q localizar su padre
      else
      begin
        cdOrganizaciones.First;
        while not cdOrganizaciones.Eof do
        begin
          if (cdOrganizaciones.FieldByName('idnivel').AsInteger <= nivelacces) then
          begin
            CargarDatosFiltrados(cdOrganizacionesAux, 'idnivel', [cdOrganizaciones.FieldByName('padre').AsInteger]);
            cdOrganizacionesAux.Refresh;
          if cdORganizacionesAux.RecordCount = 1 then
          begin
            x := 0;
            //localizando al padre dentro del componente treeview
            while x < treeview1.Items.Count do
            begin
              if TTreeNode(Treeview1.Items[x]).Text = cdOrganizacionesAux.FieldByName('codigoorganizacion').AsString then
                padrearbol := TTreeNode(Treeview1.Items[x]);
               inc(x);
            end;
          end
          else
          begin
            InteliDialog.ShowModal('Error al Generar el arbol, pude que tenga codigos duplicados en tabla ' + cOrganizacion + '.','', mtInformation, [mbOk], 0);
            exit;
          end;
            TreeView1.Items.AddChild(Padrearbol,cdOrganizaciones.FieldByName('codigoorganizacion').AsString);
            ListaId.Add(cdOrganizaciones.FieldByName('idorganizacion').AsString);
            Direccion := Direccion + cdOrganizaciones.FieldByName('idorganizacion').AsString;
          end;
          cdOrganizaciones.Next;
        end;
      end;
      cdNiveles.next;
    end;
    TreeView1.FullExpand;
  except
    on e: Exception do
    begin
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

{
  Función que detecta cual es el nivel maximo a pedir durante el login
  del sistema.
}
function TFrmArbolAccesos.NivelAcceso(ClienteNiveles: TClientDataset): Integer;
begin
  try
    ClienteNiveles.Active := False;
    CargarDatosFiltrados(ClienteNiveles, 'idnivelorganizacion', [-1]);
    ClienteNiveles.Open;

    if ClienteNiveles.RecordCount = 0 then
      raise Exception.Create('No existen datos de nivel organización registrados');

    ClienteNiveles.First;
    while not ClienteNiveles.Eof do
    begin
      if ClienteNiveles.FieldByName('acceso').AsString = 'true' then
        Result := ClienteNiveles.FieldByName('idnivelorganizacion').AsInteger;

      ClienteNiveles.Next;
    end;
  Except
    Result := -1;
  end;
end;

procedure TFrmArbolAccesos.TreeView1DblClick(Sender: TObject);
begin
  TreeView1.FullExpand;
end;

procedure TFrmArbolAccesos.TreeView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Node: TTreeNode;
  idOrganizacion: Integer;
  i, niveldeacceso: Integer;
begin
  if solovista = true then
    Exit;

  i := 0;
  try
    CdNiveles.Active := False;
    CargarDatosFiltrados(CdNiveles, 'idnivelorganizacion', [-1]);
    CdNiveles.Open;
  Except
    InteliDialog.ShowModal('Error al verificar el nivel de acceso.','', mtInformation, [mbOk], 0);
    exit;
  end;
  CdNiveles.First;
  while not CdNiveles.Eof do
  begin
    if CdNiveles.FieldByName('acceso').AsString = 'true' then
    begin
      niveldeacceso := i;
    end;
    CdNiveles.Next;
    inc(i);
  end;
  Node := TreeView1.GetNodeAt(x,y);
  if Node <> nil then
  begin
    if Node.Level <> Niveldeacceso then
      Exit;
    try
      cdorganizaciones.Active := False;
      CargarDatosFiltrados(cdorganizaciones, 'codigoorganizacion', [node.Text]);
      cdorganizaciones.open;
      if (cdorganizaciones.RecordCount = 1) then
        if (cdUsuarioOrg.Locate('idorganizacion',VarArrayOf([cdORganizaciones.FieldByName('idorganizacion').AsInteger]),[])) or (LowerCase(ClientModule1.cdUsuario.FieldByName('usuario').AsString) = 'admin') then
          IdOrganizacion := cdORganizaciones.FieldByName('idorganizacion').AsInteger
          else
           idOrganizacion := -2
      else
        idOrganizacion := -2;
    except
      IdOrganizacion := -2;
    end;
    if IdOrganizacion <> -2 then
    begin
      CadenadeSeleccion := Generacadena(cdOrganizaciones, IdORganizacion);
    end
    else
      InteliDialog.ShowModal('Denegado.','No tiene este acceso asignado, notifique al administrador', mtInformation, [mbOk], 0);
  end;
end;

Function TFrmArbolAccesos.GeneraCadena(Dataset: TClientDataset; idOrganizacion: Integer): String;
var
  CadenaAux, CadenaResult, idAux: String;
  padre: Integer;
begin
  CargarDatosFiltrados(Dataset, 'idorganizacion', [-1]);
  dataset.Refresh;
  CadenaAux := '';
  CadenaResult := '';
  if Dataset.State = dsBrowse then
    CargarDatosFiltrados(Dataset, 'idorganizacion', [IntTostr(idorganizacion)]);
    dataset.Refresh;
    idAux := Dataset.FieldByName('idorganizacion').AsString;
  Padre := Dataset.FieldByName('padre').AsInteger;
  while Dataset.RecordCount = 1 do
  begin
    CargarDatosFiltrados(Dataset, 'idorganizacion', [Padre]);
    dataset.Refresh;
     if dataset.RecordCount = 1 then
     begin
      CadenaAux := Dataset.FieldByName('idorganizacion').AsString + '|' + CadenaAux;
      CadenaResult:= CadenaAux;
      Padre := Dataset.FieldByName('padre').AsInteger;
     end
     else
       CadenaResult :=  CadenaResult +  idAux;
  end;
  Result := CadenaResult;
end;

end.
