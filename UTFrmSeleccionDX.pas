unit UTFrmSeleccionDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSelectors, StdCtrls, ExtCtrls, DB, DBClient, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxGrid, StrUtils, Buttons, UInteliDialog, AdvShapeButton, Menus, ComCtrls,
  ImgList, JvExControls, JvLookOut, JvExStdCtrls, JvButton, JvStartMenuButton,
  JvLabel;

type
  TRGBTripleArray = array[0..32767] of TRGBTriple;
  PRGBTripleArray = ^TRGBTripleArray;

  PDatos = ^TNDatos;
  TNDatos = Record
    Id: Integer;
    Codigo: String;
    Nombre: String;
    Titulo: String;
    IdNivel: Integer;
  end;

  TAcceso = class
    Path: String;
    SeqAcceso: String;
    Wbs: String;
    Llave: String;
  end;

  TFrmSeleccionDX = class(TForm)
    cdOrganizacion: TClientDataSet;
    cdUsuarioOrg: TClientDataSet;
    PopupMenu1: TPopupMenu;
    Seleccionar1: TMenuItem;
    Eliminar1: TMenuItem;
    ilAccesos: TImageList;
    BitBtn1: TBitBtn;
    ilAccesosSmall: TImageList;
    tvEstructura: TTreeView;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    ListView1: TListView;
    Panel8: TPanel;
    Panel9: TPanel;
    Image1: TImage;
    JvLabel2: TJvLabel;
    Memo1: TMemo;
    JvLabel4: TJvLabel;
    Splitter2: TSplitter;
    Panel10: TPanel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MouseEnter(Sender: TObject);
    procedure MouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvEstructuraDblClick(Sender: TObject);
    procedure tvEstructuraChange(Sender: TObject; Node: TTreeNode);
    procedure ListView1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  private
    Providername: String;
    CodSale: Integer;
    OrgName: String;
    PnUo:string;
    ListaAccesos: TStringList;
    NivelAcceso: Integer;
    procedure CargaRegistros;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  FrmSeleccionDX: TFrmSeleccionDX;
  
implementation

uses Uregistro, UTFrmArbolAccesos, UTFrmMuestraAccesos, ClientModuleUnit1,
     ClientClassesUnit1, unit2;

{$R *.dfm}

procedure Redimensionar(Imagen:TBitmap; Ancho, Alto: Integer);
var
  Bitmap: TBitmap;

  //····························································
  // Procedimiento de Antialiasing con Distancia=1
  procedure Antialiasing(bmp1, bmp2:TBitmap);
  var
    r1,g1,b1:Integer;
    Y, X, j:integer;
    SL1, SL2, SL3: PRGBTripleArray;
  begin

    // Tamaño del bitmap destino
    bmp2.Height := bmp1.Height;
    bmp2.Width := bmp1.Width;
    // SCANLINE
    SL1 := bmp1.ScanLine[0];
    SL2 := bmp1.ScanLine[1];
    SL3 := bmp1.ScanLine[2];

    // reorrido para todos los pixels
    for Y := 1 to (bmp1.Height - 2) do 
    begin
      for X := 1 to (bmp1.Width - 2) do 
      begin
        R1 := 0;  G1 := 0; B1 := 0;
        // los 9 pixels a tener en cuenta
        for j := -1 to 1 do begin
          // FIla anterior
          R1 := R1 + SL1[X+j].rgbtRed    + SL2[X+j].rgbtRed    + SL3[X+j].rgbtRed;
          G1 := G1 + SL1[X+j].rgbtGreen  + SL2[X+j].rgbtGreen  + SL3[X+j].rgbtGreen;
          B1 := B1 + SL1[X+j].rgbtBlue   + SL2[X+j].rgbtBlue   + SL3[X+j].rgbtBlue;
        end;
        // Nuevo color
        R1:=Round(R1 div 9);
        G1:=Round(G1 div 9);
        B1:=Round(B1 div 9);
        // Asignar el nuevo
        bmp2.Canvas.Pixels[X, Y] := RGB(R1,G1,B1);
      end;
      // Siguientes...
      SL1 := SL2;
      SL2 := SL3;
      SL3 := bmp1.ScanLine[Y+1];
    end;
  end;

begin
  Bitmap:= TBitmap.Create;

  // Aplicamos antialiasing
  Antialiasing(Imagen, Bitmap);
  Imagen.Assign(Bitmap);

  // reducir
  try
    Bitmap.Width:= Ancho;
    Bitmap.Height:= Alto;
    Bitmap.Canvas.StretchDraw(Bitmap.Canvas.ClipRect, Imagen);
    Imagen.Assign(Bitmap);
  finally
    Bitmap.Free;
  end;
end;

procedure TFrmSeleccionDX.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);

  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmSeleccionDX.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Lista: String;
  Varx: Integer;
begin
  EliminarConjunto(providerName);
//  EliminarConjunto(PnUo);
//  EliminarConjunto(PnUo2);

  LiberarVentana(Self, Action);

  ModalResult := CodSale;
end;

procedure TFrmSeleccionDX.FormCreate(Sender: TObject);
var
  DatosPtr: PDatos;
  Cadena: String;
  NewNode: TTreeNode;
begin
  CodSale := mrCancel;

  Try
    ClientModule1.ComponentColor(Self);

    // Seleccionar las estructuras que han sido registradas en este equipo
    ListaAccesos := TStringList.Create;
    Cadena := VarRegistry('\Ambiente', '\Principal', 'Accesos');
    ListaAccesos.CommaText := AnsiReplaceStr(Cadena, '|', ',');

    // Leer el primer nivel de registros solamente
    CrearConjunto(cdOrganizacion, 'nuc_organizacion_sel', ccSelect);
    CargarDatosFiltrados(cdOrganizacion, 'padre', [-5]);
    cdOrganizacion.Open;

    CrearConjunto(cdUsuarioOrg, 'nuc_organizacion_acceso2', ccSelect);
    CargarDatosFiltrados(cdUsuarioOrg, 'Padre', [-9]);
    cdUsuarioOrg.Open;

    NivelAcceso := cdOrganizacion.FieldByName('NivelAcceso').AsInteger;

    tvEstructura.Items.Clear;
    while Not cdOrganizacion.Eof do
    begin
      // Crear el objeto del primer nivel
      Cadena := cdOrganizacion.FieldByName('NombreOrganizacion').AsString;
      if cdOrganizacion.FieldByName('Cuenta').AsInteger > 0 then
        Cadena := Cadena + ' (' + cdOrganizacion.FieldByName('Cuenta').AsString + ')';
      New(DatosPtr);
      DatosPtr^.Id := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
      DatosPtr^.Codigo := cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;
      DatosPtr^.Nombre := cdOrganizacion.FieldByName('NombreOrganizacion').AsString;
      DatosPtr^.Titulo := cdOrganizacion.FieldByName('TituloOrganizacion').AsString;
      DatosPtr^.IdNivel := cdOrganizacion.FieldByName('IdNivel').AsInteger;
      NewNode := tvEstructura.Items.AddChildObject(Nil, Cadena, TObject(DatosPtr));
      NewNode.ImageIndex := 0;
      NewNode.SelectedIndex := 0;

      cdOrganizacion.Next;
    end;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de esto al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmSeleccionDX.FormDestroy(Sender: TObject);
begin
  EliminarConjunto(cdOrganizacion.ProviderName);
end;

procedure TFrmSeleccionDX.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;

  if (Key = 116) and (ssCtrl in Shift) then
  begin
    // Pulsado CTRL-F5, volver a leer los datos originales
    cdUsuarioOrg.Close;
    CargarDatosFiltrados(cdUsuarioOrg, 'Padre', [PDatos(tvEstructura.Selected.Data).Id]);
    cdUsuarioOrg.Open;

    CargaRegistros;
  end
  else
    if Key = 116 then
    begin
      // Pulsado F5, volver a leer los datos
      cdUsuarioOrg.Refresh;
      CargaRegistros;
    end;
end;

procedure TFrmSeleccionDX.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  Nodo: TTreeNode;
  LocCadena: String;
begin
  if Not Assigned(ListView1.Selected) then
    Exit;

  Nodo := tvEstructura.Selected;
  LocCadena := ListView1.Selected.Caption;
  while Assigned(Nodo) do
  begin
    LocCadena := Nodo.Text + ' -> ' + LocCadena;
    Nodo := Nodo.Parent
  end;
  Edit1.Text := LocCadena;
end;

procedure TFrmSeleccionDX.ListView1DblClick(Sender: TObject);
begin
  Button1.Click;
end;

procedure TFrmSeleccionDX.Button1Click(Sender: TObject);
var
  proxy: TServerMethods1Client;
  NameDataSet, LocCadena: String;
  Acceso: TAcceso;
  Nodo: TTreeNode;
begin
  if not Assigned(ListView1.Selected) then
    Exit;

  // Localizar las propiedades del objeto seleccionado
  Acceso := TAcceso.Create;
  Acceso := TAcceso(ListView1.Selected.Data);

  begin
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      if Not proxy.InitGlobal(Globales.Elemento('DATABASE').AsString, 'ALM_ACCESO', Acceso.Llave, NameDataSet) then
        raise InteligentException.Create('No se pudieron cargar los datos de acceso ');
      clientmodule1.cdAcceso.ProviderName := NameDataset;
      clientmodule1.cdAcceso.Open;

      Try
        CrearConjunto(ClientModule1.cdOrganizacion, 'nuc_organizacion', NameDataSet, ccSelect);
        CargarDatosFiltrados(ClientModule1.cdOrganizacion, 'nivel,idorganizacion', [0, Acceso.Llave]);
        ClientModule1.cdOrganizacion.Open;
      Except
        raise InteligentException.Create('No se han podido cargar los datos correspondientes a los niveles de organización');
      End;

      Nodo := tvEstructura.Selected;
      LocCadena := ListView1.Selected.Caption;
      while Assigned(Nodo) do
      begin
        LocCadena := Nodo.Text + ' -> ' + LocCadena;
        Nodo := Nodo.Parent;
      end;

//      Form2.MemoInfo.Text := LocCadena;
//      Form2.tbMain.Caption.Caption := Form2.tbMain.Caption.Caption + ' - ' + LocCadena;

      CodSale := mrOk;
    Except
      on e:inteligentexception do
        InteliDialog.ShowModal('No se ha podido acceder al sistema', 'No se pudo acceder al sistema debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error catastrofico','Informe de lo siguiente al administrador del sistema' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
    End;
    Close;
  end;
end;

procedure TFrmSeleccionDX.cargaRegistros;
var
  ValorCadena: String;
  PrefijoCadena: String;
  Acceso: TAcceso;
  ActualImagen, RespBitMap: TBitMap;
  bs: TStream;
  LocPref: String;
  Prefijo: String;
  k: Integer;
  ListItem: TListItem;
begin
  Try
    // Eliminar todas las images que se pudieran haber creado en entradas anteriores
    while ilAccesos.Count > 2 do
      ilAccesos.Delete(ilAccesos.Count -1);

    while ilAccesosSmall.Count > 2 do
      ilAccesosSmall.Delete(IlAccesosSmall.Count -1);

    cdUsuarioOrg.First;
    ValorCadena := '';
    LocPref := '';
    ListView1.Items.Clear;

    CargarDatosFiltrados(cdUsuarioOrg, 'padre', [PDatos(tvEstructura.Selected.Data).Id]);
    cdUsuarioOrg.Refresh;

    while Not cdUsuarioOrg.Eof do
    begin
      // Es un inicio de ruta completa para iniciarlizar cadena de acceso e imagenes padre
      if cdUsuarioOrg.FieldByName('Padre').AsInteger = -5 then
      begin
        Prefijo := '';
        PrefijoCadena := '';
      end;

      // Crear el objeto necesario
      Acceso := TAcceso.Create;
      Acceso.Path := LocPref;
      Acceso.Wbs := cdUsuarioOrg.FieldByName('Wbs').AsString;
      Acceso.Llave := cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;
      Acceso.SeqAcceso := ValorCadena;

      ListItem := ListView1.Items.Add;
      ListItem.Caption := cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;
      ListItem.Data := Acceso;

      begin
        if Prefijo <> '' then Prefijo := Prefijo + '|';
        Prefijo := Prefijo + cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;

        if PrefijoCadena <> '' then PrefijoCadena := PrefijoCadena + ' -> ';
        PrefijoCadena := PrefijoCadena + cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;

        // Verificar si el registro contiene una imagen que se pueda mostrar
        if cdUsuarioOrg.FieldByName('Imagen').IsNull then
        begin
          // Si no existe una imagen verificar si se trata del nivel 0
          if tvEstructura.Selected.Level = 0 then
            // Si se trata del nivel 0 y no contiene imagen se debe asignar la imagen por default
            ListItem.ImageIndex := 0
          else
            // Si no se trata del nivel 0 y no tienen¿ imagen, se deberá asimilar la imagen de su padre
            ListItem.ImageIndex := tvEstructura.Selected.ImageIndex;
        end
        else
        begin
          Try
            // Se trata del nivel 0 y también tiene una imagen particular, se debe agregar esa imagen particula
            Try
              bs := TStream.Create;
              bs := cdUsuarioOrg.CreateBlobStream(cdUsuarioOrg.FieldByName('Imagen') as TBlobField, bmRead);

              ActualImagen := TBitMap.Create;
              ActualImagen.LoadFromStream(bs as TStream);

              Try
                RespBitMap := TBitMap.Create;
                RespBitMap.Assign(ActualImagen);

                Redimensionar(ActualImagen, ilAccesos.Width, ilAccesos.Height);
                ilAccesos.Add(ActualImagen, Nil);   // Agregar la imagen a la lista de imagenes normales

                Redimensionar(RespBitMap, ilAccesosSmall.Width, ilAccesosSmall.Height);
                ilAccesosSmall.Add(RespBitMap, Nil);   // Agregar la imagen a la lista de imagenes pequeñas}
              Finally
                FreeAndNil(RespBitMap);
              End;
            Finally
              FreeAndNil(bs);
              FreeAndNil(ActualImagen);
            End;
          Except
            // SI ocurrió un error
            on e:exception do
              showmessage(e.message);
          end;
        end;
      end;

      // Avanzar al siguiente registro
      cdUsuarioOrg.Next;
    end;
  Except
    ;
  End;
end;

procedure TFrmSeleccionDX.MouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsUnderLine];
end;

procedure TFrmSeleccionDX.MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [];
end;

procedure TFrmSeleccionDX.tvEstructuraChange(Sender: TObject; Node: TTreeNode);
var
  Acceso: TAcceso;
  ListItem: TListItem;
begin
  // Mostrar los datos completos del objeto
  ilAccesos.Draw (Image1.Canvas, 0, 0, Node.ImageIndex);
  JvLabel2.Caption := PDatos(Node.Data).Codigo;
  Memo1.Text := PDatos(Node.Data).Titulo;
  JvLabel4.Caption := PDatos(Node.Data).Nombre;

  ListView1.Visible := PDatos(Node.Data).IdNivel + 1 = NivelAcceso;
  if ListView1.Visible then
  begin
    // Traer los datos de los accesos ya registrados en este equipo
    CargarDatosFiltrados(cdUsuarioOrg, 'Padre', [PDatos(tvEstructura.Selected.Data).Id]);
    cdUsuarioOrg.Refresh;

    CargaRegistros;
  end;
end;

procedure TFrmSeleccionDX.tvEstructuraDblClick(Sender: TObject);
var
  Cta: Integer;
  Cadena: String;
  ActualImagen,
  RespBitMap: TBitMap;
  NewNode: TTreeNode;
  bs: TStream;
  DatosPtr: PDatos;
begin
  if TTreeView(Sender).Selected.Count > 0 then
    Exit;

  // Seleccionar los datos del subnivel
  Cta := PDatos(TTreeView(Sender).Selected.Data).Id;
  CargarDatosFiltrados(cdOrganizacion, 'Padre', [Cta]);
  cdOrganizacion.Refresh;
  while not cdOrganizacion.Eof do
  begin
    Cadena := cdOrganizacion.FieldByName('NombreOrganizacion').AsString;
    if cdOrganizacion.FieldByName('Cuenta').AsInteger > 0 then
      Cadena := Cadena + ' (' + cdOrganizacion.FieldByName('Cuenta').AsString + ')';
    New(DatosPtr);
    DatosPtr^.Id := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
    DatosPtr^.Codigo := cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;
    DatosPtr^.Nombre := cdOrganizacion.FieldByName('NombreOrganizacion').AsString;
    DatosPtr^.Titulo := cdOrganizacion.FieldByName('TituloOrganizacion').AsString;
    DatosPtr^.IdNivel := cdOrganizacion.FieldByName('IdNivel').AsInteger;
    NewNode := tvEstructura.Items.AddChildObject(TTreeView(Sender).Selected, Cadena, TObject(DatosPtr));

    // Verificar si contiene una imagen que se pueda mostrar
    if cdOrganizacion.FieldByName('Imagen').IsNull then
    begin
      // Si no contiene imagen se deberá seleccionar la misma que su padre
      NewNode.ImageIndex := NewNode.Parent.ImageIndex;
      NewNode.SelectedIndex := NewNode.Parent.SelectedIndex;
    end
    else
    begin
      // Crear el objeto que contendrá la imagen correspondiente a cada nivel
      Try
        bs := TStream.Create;
        bs := cdUsuarioOrg.CreateBlobStream(cdUsuarioOrg.FieldByName('Imagen') as TBlobField, bmRead);

        ActualImagen := TBitMap.Create;
        ActualImagen.LoadFromStream(bs as TStream);

        RespBitMap := TBitMap.Create;
        RespBitMap.Assign(ActualImagen);

        Redimensionar(ActualImagen, Image1.Width, Image1.Height);
        ilAccesos.Add(ActualImagen, Nil);   // Agregar la imagen a la lista de imagenes normales

        Redimensionar(RespBitMap, ilAccesosSmall.Width, ilAccesosSmall.Height);
        ilAccesosSmall.Add(RespBitMap, Nil);   // Agregar la imagen a la lista de imagenes pequeñas}

        NewNode.ImageIndex := ilAccesos.Count -1;
        NewNode.SelectedIndex := ilAccesos.Count -1;
      Finally
        FreeAndNil(bs);
        FreeAndNil(RespBitMap);
        FreeAndNil(ActualImagen);
      End;
    end;

    cdOrganizacion.Next;
  end;

  if cdOrganizacion.RecordCount > 0 then
  begin
    TTreeView(Sender).Selected.Expand(True);
    TTreeView(Sender).Selected.Item[0].Selected := True;
  end;
end;

end.
