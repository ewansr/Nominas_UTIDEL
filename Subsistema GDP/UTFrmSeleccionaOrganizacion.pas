unit UTFrmSeleccionaOrganizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ClientModuleUnit1, UInteliDialog, DB, DBClient, ExtCtrls,
  StdCtrls, JvExExtCtrls, JvImage, ImgList, Menus, URegistro;

type
  TDatosNodo = class
    LevelParent: Integer;
    IdNodo: Integer;
    CodigoNodo: String;
    Level: Integer;
    Wbs: String;
  end;

  TFrmSeleccionaOrganizacion = class(TForm)
    tvOrganizacion: TTreeView;
    Splitter1: TSplitter;
    lvOrganizacion: TListView;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    dsOrganizacion: TDataSource;
    SmallIcons: TImageList;
    LargeIcons: TImageList;
    procedure FormShow(Sender: TObject);
    procedure LlenarTreeView(UltimoNivel: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure tvOrganizacionChange(Sender: TObject; Node: TTreeNode);
    procedure LocTimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvOrganizacionDblClick(Sender: TObject);
  private
    ListaImagen: TStringList;
    LocTimer: TTimer;
    LocIndex: Integer;
    LocNodo: Integer;
    Resultado: TModalResult;
  public
    PubNodo: Integer;
  end;

var
  FrmSeleccionaOrganizacion: TFrmSeleccionaOrganizacion;

implementation

{$R *.dfm}

procedure TFrmSeleccionaOrganizacion.LlenarTreeView(UltimoNivel: Integer);
var
  i: Integer;
  DatosNodo: TDatosNodo;
  Inicial: TTreeNode;
  Padre: TTreeNode;
  Found: Boolean;
  OldCursor: TCursor;
  NewNodo, UltimoNodo: TTreeNode;
begin
  Try
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    tvOrganizacion.Items.BeginUpdate;
    tvOrganizacion.Items.Clear;
    i := -5;

    DatosNodo := TDatosNodo.Create;
    DatosNodo.LevelParent := -5;
    DatosNodo.IdNodo := -5;
    DatosNodo.Level := -5;
    DatosNodo.Wbs := '';
    DatosNodo.CodigoNodo := '';

    UltimoNodo := Nil;

    Inicial := tvOrganizacion.Items.AddChildObject(Nil, 'ORGANIZACION:', Pointer(DatosNodo));
    dsOrganizacion.DataSet.First;
    while Not dsOrganizacion.DataSet.Eof do
    begin
      if dsOrganizacion.DataSet.FieldByName('IdNivel').AsInteger < Globales.Elemento('NivelOrgInferior').AsInteger then
      begin
        DatosNodo := TDatosNodo.Create;
        DatosNodo.LevelParent := -5;

        // Localizar el padre
        Padre := Inicial;
        if dsOrganizacion.DataSet.FieldByName('Padre').AsInteger > 0 then
        begin
          i := 0;
          Found := False;
          while (i < tvOrganizacion.Items.Count) and Not Found do
          begin
            Found := TDatosNodo(tvOrganizacion.Items.Item[i].Data).IdNodo = dsOrganizacion.DataSet.FieldByName('Padre').AsInteger;
            if Not Found then Inc(i);
          end;
          if Found then
          begin
            Padre := tvOrganizacion.Items.Item[i];
            DatosNodo.LevelParent := TDatosNodo(Padre.Data).Level;
          end;
        end;

        DatosNodo.Level := dsOrganizacion.DataSet.FieldByName('IdNivel').AsInteger;
        DatosNodo.IdNodo := dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger;
        DatosNodo.Wbs := dsOrganizacion.DataSet.FieldByName('Wbs').AsString;
        DatosNodo.CodigoNodo := dsOrganizacion.DataSet.FieldByName('CodigoOrganizacion').AsString;

        NewNodo := tvOrganizacion.Items.AddChildObject(Padre, dsOrganizacion.DataSet.FieldByName('TituloOrganizacion').AsString, Pointer(DatosNodo));

        if ListaImagen.Find(dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsString, i) then
          NewNodo.StateIndex := Integer(ListaImagen.Objects[i])
        else
          NewNodo.StateIndex := 0;
        NewNodo.ImageIndex := -1;

        if dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger = LocNodo then
          UltimoNodo := NewNodo;
      end;

      dsOrganizacion.DataSet.Next;
    end;
  Finally
    tvOrganizacion.Items.EndUpdate;
    Screen.Cursor := OldCursor;
  End;

  if tvOrganizacion.Items.Count > 0 then
    if Assigned(UltimoNodo) then
      tvOrganizacion.Selected := UltimoNodo
    else
      tvOrganizacion.Selected := tvOrganizacion.Items.Item[0];

  if Assigned(LocTimer) then
    LocTimer.Enabled := True;
end;

procedure TFrmSeleccionaOrganizacion.LocTimerTimer(Sender: TObject);
begin
  LocTimer.Enabled := False;
  if LocIndex = 0 then
    ComboBox1.ItemIndex := 2
  else
    ComboBox1.ItemIndex := 0;
  ComboBox1.OnChange(Sender);

  ComboBox1.ItemIndex := LocIndex;
  ComboBox1.OnChange(Sender);

  LocTimer.Free;
end;

procedure TFrmSeleccionaOrganizacion.lvOrganizacionDblClick(Sender: TObject);
begin
  // Seleccionar el nodo indicado
  if lvOrganizacion.Items.Count > 0 then
  begin
    PubNodo := Integer(lvOrganizacion.Selected.Data);
    Resultado := mrOk;
    Close;
  end;
end;

procedure TFrmSeleccionaOrganizacion.tvOrganizacionChange(Sender: TObject;
  Node: TTreeNode);
var
  OldCursor: TCursor;
  Nodo: TTreeNode;
  Indice: Integer;
begin
  // Poblar los elementos del listview
  Try
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    lvOrganizacion.Items.BeginUpdate;
    lvOrganizacion.Items.Clear;

    // Filtrar los datos que correspondan a este elemento
    dsOrganizacion.DataSet.Filtered := False;
    dsOrganizacion.DataSet.Filter := 'Padre = ' + IntToStr(TDatosNodo(Node.data).IdNodo);
    dsOrganizacion.DataSet.Filtered := True;

    dsOrganizacion.DataSet.First;
    while Not dsOrganizacion.DataSet.Eof do
    begin
      lvOrganizacion.AddItem(dsOrganizacion.DataSet.FieldByName('CodigoOrganizacion').AsString, TObject(dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger));

      if ListaImagen.Find(dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsString, Indice) then
        lvOrganizacion.Items.Item[lvOrganizacion.Items.Count -1].ImageIndex := Integer(ListaImagen.Objects[Indice])
      else
        lvOrganizacion.Items.Item[lvOrganizacion.Items.Count -1].ImageIndex := Integer(0);
      lvOrganizacion.Items.Item[lvOrganizacion.Items.Count -1].SubItems.Add(dsOrganizacion.DataSet.FieldByName('CodigoOrganizacion').AsString);
      lvOrganizacion.Items.Item[lvOrganizacion.Items.Count -1].SubItems.Add(dsOrganizacion.DataSet.FieldByName('NombreOrganizacion').AsString);
      lvOrganizacion.Items.Item[lvOrganizacion.Items.Count -1].SubItems.Add(dsOrganizacion.DataSet.FieldByName('TituloOrganizacion').AsString);

      dsOrganizacion.DataSet.Next;
    end;
  Finally
    Screen.Cursor := OldCursor;
    dsOrganizacion.DataSet.Filtered := False;
  End;
end;

procedure TFrmSeleccionaOrganizacion.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: lvOrganizacion.ViewStyle := vsIcon;
    1: lvOrganizacion.ViewStyle := vsList;
    2: lvOrganizacion.ViewStyle := vsReport;
    3: lvOrganizacion.ViewStyle := vsSmallIcon;
  end;
end;

procedure TFrmSeleccionaOrganizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  LiberarVentana(Self, Action);

  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'AnchoTreeView', IntToStr(tvOrganizacion.Width));
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'IndexCombo', IntToStr(ComboBox1.ItemIndex));
  SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'NodeSelected', IntToStr(TDatosNodo(tvOrganizacion.Selected.Data).IdNodo));

  for i := 0 to lvOrganizacion.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + TForm(Sender).Name, 'AnchoColumna' + IntToStr(i), IntToStr(lvOrganizacion.Column[i].Width));

  ModalResult := Resultado;
end;

procedure TFrmSeleccionaOrganizacion.FormCreate(Sender: TObject);
var
  Ancho: Integer;
  Existe: Boolean;
  i: Integer;
begin
  AccedeACoordenadas(Self);

  Try
    Ancho := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'AnchoTreeView', Existe));
    if Not Existe then Ancho := tvOrganizacion.Width;
  Except
    Ancho := tvOrganizacion.Width;
  End;
  tvOrganizacion.Width := Ancho;

  Try
    Ancho := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'IndexCombo', Existe));
    if Not Existe then Ancho := ComboBox1.ItemIndex;
  Except
    Ancho := ComboBox1.ItemIndex;
  End;
  ComboBox1.ItemIndex := Ancho;
  if (Ancho = -1) or (Ancho >= ComboBox1.Items.Count) then
    LocIndex := 0
  else
    LocIndex := Ancho;

  Try
    Ancho := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'NodeSelected', Existe));
    if Not Existe then Ancho := -1;
  Except
    Ancho := -1;
  End;
  LocNodo := Ancho;

  for i := 0 to lvOrganizacion.Items.Count -1 do
  begin
    Try
      Ancho := StrToInt(VarRegistry('\Ventanas', '\' + TForm(Sender).Name, 'AnchoColumna' + IntToStr(i), Existe));
      if Not Existe then Ancho := lvOrganizacion.Column[i].Width;
    Except
      Ancho := lvOrganizacion.Column[i].Width;
    End;
    lvOrganizacion.Column[i].Width := Ancho;
  end;
end;

procedure TFrmSeleccionaOrganizacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  OldCursor: TCursor;
begin
  case Key of
    27: begin
      Resultado := mrCancel;
      Close;
    end;

    116: begin
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        dsOrganizacion.DataSet.Refresh;
      Finally
        Screen.Cursor := OldCursor;
      End;
    end;
  end;
end;

procedure TFrmSeleccionaOrganizacion.FormShow(Sender: TObject);
Const
  Alto = 100;
  Ancho = 100;
var
  bs: TMemoryStream;
  BitMap, SmallImage,
  LargeImage, Cuadro : TBitMap;
begin
  Resultado := mrAbort;

  ListaImagen := TStringList.Create;
  ListaImagen.Clear;

  LocTimer := TTimer.Create(Self);
  LocTimer.Enabled := False;
  LocTimer.Interval := 500;
  LocTimer.OnTimer := LocTimerTimer;

  Try
    Try
      Cuadro := TBitMap.Create;
      Cuadro.Width := Ancho;
      Cuadro.Height := Alto;
      Cuadro.Canvas.Brush.Color := clRed;
      Cuadro.Canvas.Pen.Color := clBlue;
      Cuadro.Canvas.FillRect(Rect(0, 0, Ancho, Alto));

      // Llenar el ImageList
      SmallImage := TBitMap.Create;
      SmallImage.Width := SmallIcons.Width;
      SmallImage.Height := SmallIcons.Height;

      LargeImage := TBitMap.Create;
      LargeImage.Width := LargeIcons.Width;
      LargeImage.Height := LargeIcons.Height;

      bs := TMemoryStream.Create;
      BitMap := TBitMap.Create;

      dsOrganizacion.DataSet.First;
      while not dsOrganizacion.DataSet.Eof do
      begin
        if Not dsOrganizacion.DataSet.FieldByName('Imagen').IsNull then
        begin
          bs.Size := 0;
          TBlobField(dsOrganizacion.DataSet.FieldByName('Imagen')).SaveToStream(bs);

          bs.Position := 0;
          //BitMap.LoadFromStream(bs);

          //BitBlt(BitMap.Canvas.Handle, 0, 0, Cuadro.Width, Cuadro.Height, Cuadro.Canvas.Handle, 0, 0, SrcCopy);

          SmallImage.Canvas.StretchDraw(Rect(0, 0, SmallImage.Width-1, SmallImage.Height-1), BitMap);
          SmallIcons.Add(SmallImage, Nil);

          LargeImage.Canvas.StretchDraw(Rect(0, 0, LargeImage.Width-1, LargeImage.Height-1), BitMap);
          LargeIcons.Add(LargeImage, Nil);

          // Guardar la posición de la imagen para este registro en específico
          ListaImagen.AddObject(dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsString, TObject(SmallIcons.Count -1));
        End
        else
          ListaImagen.AddObject(dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsString, TObject(0));

        dsOrganizacion.DataSet.Next;
      end;
    Finally
      SmallImage.Free;
      BitMap.Free;
      bs.Free;
      dsOrganizacion.DataSet.First;
    End;

    LlenarTreeView(-1);
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
