unit UTFrmSeleccion;

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

  TAcceso = class
    Path: String;
    SeqAcceso: String;
    Wbs: String;
    Llave: String;
  end;

  TFrmSeleccion = class(TForm)
    cdOrganizacion: TClientDataSet;
    cdUsuarioOrg: TClientDataSet;
    PopupMenu1: TPopupMenu;
    Seleccionar1: TMenuItem;
    Eliminar1: TMenuItem;
    ListView1: TListView;
    ilAccesos: TImageList;
    BitBtn1: TBitBtn;
    ilAccesosSmall: TImageList;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    JvLabel1: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MouseEnter(Sender: TObject);
    procedure MouseLeave(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Providername: String;
    CodSale: Integer;
    OrgName: String;
    PnUo:string;
    RutaAccesos: TStringList;
    ListaAccesos: TStringList;
    VerMas: Boolean;
    procedure CargaRegistros;
    procedure GuardaRegistros(ValorCadena: String);
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  FrmSeleccion: TFrmSeleccion;
  
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

procedure TFrmSeleccion.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);

  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmSeleccion.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Lista: String;
  Varx: Integer;
begin
  EliminarConjunto(providerName);
  EliminarConjunto(PnUo);
  EliminarConjunto(PnUo2);

  LiberarVentana(Self, Action);

  if CodSale = mrOk then
  begin
    // ******************************************
    // Registrar el acceso correspondiente

    // Verificar si es el primer acceso registrado
    if ListaAccesos.Count = 0 then
      SetRegistry('\Ambiente', '\Principal', 'Accesos', TAcceso(ListView1.Selected.Data).Llave)
    else
    begin
      // Si existen elementos verificar si ya había entrado a este acceso en especifico
      if ListaAccesos.IndexOf(TAcceso(ListView1.Selected.Data).Llave) >= 0 then
      begin
        // Si ya existe el registro de acceso se debe verificar si es el primero
        if ListaAccesos.IndexOf(TAcceso(ListView1.Selected.Data).Llave) > 0 then
        begin
          // Si no es el primero entonces se deberá mover la lista
          Varx := ListaAccesos.IndexOf(TAcceso(ListView1.Selected.Data).Llave);
          ListaAccesos.Exchange(0, ListaAccesos.IndexOf(TAcceso(ListView1.Selected.Data).Llave));
          if Varx > 1 then
            ListaAccesos.Exchange(1, Varx);
        end;
        // SI no es el primero no hacer nada
      end
      else
        // Si no se habia entrado a este acceso se deberá colocar al inicio
        SetRegistry('\Ambiente', '\Principal', 'Accesos', TAcceso(ListView1.Selected.Data).Llave + '|' + AnsiReplaceText(ListaAccesos.CommaText,',','|'));
    end;
  end;
  
  ModalResult := CodSale;
end;

procedure TFrmSeleccion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 116) and (ssCtrl in Shift) then
  begin
    // Pulsado CTRL-F5, volver a leer los datos originales
    cdUsuarioOrg.Close;
    CargarDatosFiltrados(cdUsuarioOrg, 'nivel,cadena', [0, ListaAccesos.CommaText]);
    cdUsuarioOrg.Open;

    ListView1.Items.Clear;
    VerMas := True;
{    if cdUsuarioOrg.RecordCount = 0 then
      // Si no existen datos de acceso al sistema se deberá enviar al usuario a la ventana de configuración del mismo
      raise InteligentException.Create('No existen datos de acceso en esta base de datos, informe de esto al administrador del sistema para que el se encargue de configurar dichos datos');
}
    CargaRegistros;
  end
  else
    if Key = 116 then
    begin
      // Pulsado F5, volver a leer los datos
      cdUsuarioOrg.Refresh;
      ListView1.Items.Clear;
{      if cdUsuarioOrg.RecordCount = 0 then
        // Si no existen datos de acceso al sistema se deberá enviar al usuario a la ventana de configuración del mismo
        raise InteligentException.Create('No existen datos de acceso en esta base de datos, informe de esto al administrador del sistema para que el se encargue de configurar dichos datos');
}
      CargaRegistros;
    end;
end;

procedure TFrmSeleccion.cargaRegistros;
var
  ValorCadena: String;
  PrefijoCadena: String;
  ListaAc: TStringList;
  Acceso: TAcceso;
  UltimaImagen, ActualImagen, RespBitMap: TBitMap;
  bs: TStream;
  LocPref: String;
  Prefijo: String;
  k: Integer;
begin
  Try
    ProgressBar1.Min := 0;
    ProgressBar1.Position := 0;
    ProgressBar1.Max := cdUsuarioOrg.RecordCount;
    ProgressBar1.Visible := True;
    JvLabel1.Visible := False;
    JvLabel1.Repaint;

    // Eliminar todas las images que se pudieran haber creado en entradas anteriores
    while ilAccesos.Count > 2 do
      ilAccesos.Delete(ilAccesos.Count -1);

    while ilAccesosSmall.Count > 2 do
      ilAccesosSmall.Delete(IlAccesosSmall.Count -1);
    
    cdUsuarioOrg.First;
    ValorCadena := '';
    LocPref := '';
    ListaAc := TStringList.Create;
    ListaAc.Clear;
    while Not cdUsuarioOrg.Eof do
    begin
      // Es un inicio de ruta completa para iniciarlizar cadena de acceso e imagenes padre
      if cdUsuarioOrg.FieldByName('Padre').AsInteger = -1 then
      begin
        Prefijo := '';
        PrefijoCadena := '';
        FreeAndNil(UltimaImagen);
        ListaAc.Free;
        ListaAc := TStringList.Create;
        ListaAc.Clear;
      end;

      ListaAc.Add(cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString);
        
      // Crear el objeto necesario
      if (cdUsuarioOrg.RecNo = cdUsuarioOrg.RecordCount) or (cdUsuarioOrg.FieldByName('Hijos').AsInteger = 0) then
      begin
        if Prefijo <> '' then LocPref := Prefijo + '|' Else LocPref := '';
        LocPref := LocPref + cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;

        if PrefijoCadena <> '' then ValorCadena := PrefijoCadena + ' -> ' else ValorCadena := '';
        ValorCadena := ValorCadena + cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;

        // Respaldar la información del registro antes de avanzar al siguiente
        Acceso := TAcceso.Create;
        Acceso.Path := LocPref;
        Acceso.Wbs := cdUsuarioOrg.FieldByName('Wbs').AsString;
        Acceso.Llave := cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;
        Acceso.SeqAcceso := ValorCadena;

        // Crear el objeto correspondiente para el listview
        ListView1.AddItem(cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString, Acceso);
        ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := ListView1.Items.Count + 1;

        // Poner la información del registro
        k := 0;
        while (k < cdOrganizacion.RecordCount - 1) and (k < ListaAc.Count) do
        begin
          ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(ListaAc[k]);
          Inc(k);
        end;

        // Poner la columna de orden de acceso
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdUsuarioOrg.FieldByName('iOrden').AsString);
        
        // Agregar las imagenes correspondientes a las lista
        // Verificar si el registro contiene una imagen que se pueda mostrar
        Try
          if cdUsuarioOrg.FieldByName('Imagen').IsNull then
          begin
            ActualImagen := TBitMap.Create;

            // SI no contiene imagen este registro se debe verificar si el padre tiene imagen
            if UltimaImagen = Nil then
            begin
              // Si no es posible poner ni una sola imagen se deberá poner la imagen por default (la número 0) para respetar la secuencia
              ilAccesos.GetBitmap(0, ActualImagen);
              ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 0;
            end
            else
              ActualImagen.Assign(UltimaImagen);
          end
          else
          begin
            // Crear el objeto que contendrá la imagen correspondiente a cada nivel
            Try
              bs := TStream.Create;
              bs := cdUsuarioOrg.CreateBlobStream(cdUsuarioOrg.FieldByName('Imagen') as TBlobField, bmRead);

              ActualImagen := TBitMap.Create;
              ActualImagen.LoadFromStream(bs as TStream);
            Finally
              FreeAndNil(bs);
            End;
          end;

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
          FreeAndNil(ActualImagen);
        End;
      end
      else
      begin
        if Prefijo <> '' then Prefijo := Prefijo + '|';
        Prefijo := Prefijo + cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;

        if PrefijoCadena <> '' then PrefijoCadena := PrefijoCadena + ' -> ';
        PrefijoCadena := PrefijoCadena + cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;

        // Verificar si el registro contiene una imagen que se pueda mostrar
        if Not cdUsuarioOrg.FieldByName('Imagen').IsNull then
        begin
          // Crear el objeto que contendrá la imagen correspondiente a cada nivel
          Try
            bs := TStream.Create;
            bs := cdUsuarioOrg.CreateBlobStream(cdUsuarioOrg.FieldByName('Imagen') as TBlobField, bmRead);

            UltimaImagen := TBitMap.Create;
            UltimaImagen.LoadFromStream(bs as TStream);
          Finally
            FreeAndNil(bs);
          End;
        end;
      end;

      // Mostrar el avance del proceso
      ProgressBar1.Position := cdUsuarioOrg.RecNo;
      ProgressBar1.Repaint;

      // Avanzar al siguiente registro
      cdUsuarioOrg.Next;
    end;

    // Verificar si la lista de accesos generada corresponde al filtro en el registro del sistema
    if VerMas then
    begin
      // Si la lista pudiera estar filtrada se debe generar de manera automática el icono que permita agregar mas
      Acceso := TAcceso.Create;
      Acceso.Path := '';
      Acceso.Wbs := '';
      Acceso.Llave := '';
      Acceso.SeqAcceso := '';

      ListView1.AddItem('Ver todos...', Acceso);
      ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 1;
    end;
  Finally
    ProgressBar1.Visible := False;
    JvLabel1.Visible := False;
    ProgressBar1.Position := 0;
    FreeAndNil(ActualImagen);
  End;
end;

procedure TFrmSeleccion.FormShow(Sender: TObject);
var
  C: Integer;
  PasoCad: String;
begin
//  RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
  CodSale := mrCancel;
  Try
    ClientModule1.ComponentColor(Self);

    // Seleccionar las estructuras que han sido registradas en este equipo
    ListaAccesos := TStringList.Create;
    PasoCad := VarRegistry('\Ambiente', '\Principal', 'Accesos');
    ListaAccesos.CommaText := AnsiReplaceStr(PasoCad, '|', ',');
    VerMas := ListaAccesos.Count > 0;   // Poner icono de 'ver mas...' si se han registrado accesos

    CrearConjunto(cdOrganizacion, 'nuc_nivelorganizacion', OrgName, ccCatalog);
    cdOrganizacion.Open;
    C := 1;
    while not cdOrganizacion.eof do
    begin
      if cdOrganizacion.FieldByName('acceso').AsBoolean then
        ListView1.Columns.Items[0].Caption := cdOrganizacion.FieldByName('titulonivel').AsString
      else
      begin
        ListView1.Columns.Add;
        ListView1.Columns.Items[C].Caption := cdOrganizacion.FieldByName('titulonivel').AsString;
        ListView1.Columns.Items[C].Width := 120;
        Inc(c);
      end;

      cdOrganizacion.Next;
    end;

    // Crear el encabezado de la columna de orden de acceso
    ListView1.Columns.Items[c].Caption := 'Orden';

    CrearConjunto(cdUsuarioOrg, 'nuc_organizacion_acceso', PnUo, ccSelect);
    CargarDatosFiltrados(cdUsuarioOrg, 'nivel,cadena', [0, AnsiReplaceText(ListaAccesos.CommaText,',','|')]);
    cdUsuarioOrg.Open;

    if cdUsuarioOrg.RecordCount = 0 then
      // Si no existen datos de acceso al sistema se deberá enviar al usuario a la ventana de configuración del mismo
      raise InteligentException.Create('No existen datos de acceso en esta base de datos, informe de esto al administrador del sistema para que el se encargue de configurar dichos datos');

    CargaRegistros;
  Except
    on e:exception do
    begin
      try
        EliminarConjunto(PnUo);
      Except
        ;
      end;

      InteliDialog.ShowModal('Error al acceder a la estructura empresarial', 'No se ha podido acceder a la estructura empresarial debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      CodSale := mrNo;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmSeleccion.ListView1DblClick(Sender: TObject);
var
  proxy: TServerMethods1Client;
  NameDataset: String;
  Posicion: Integer;
  Acceso: TAcceso;
begin
  if not Assigned(ListView1.Selected) then
    Exit;

  // Localizar las propiedades del objeto seleccionado
  Acceso := TAcceso.Create;
  Acceso := TAcceso(ListView1.Selected.Data);

  // Verificar si se hizo click sobre el botón de 'ver mas...'
  if Acceso.Llave = '' then
  begin
    VerMas := False;    // Quitar el icono para permitir la lectura de todos los datos

    cdUsuarioOrg.Close;
    CargarDatosFiltrados(cdUsuarioOrg, 'nivel,cadena', [0, '']);
    cdUsuarioOrg.Open;

    ListView1.Items.Clear;
{    if cdUsuarioOrg.RecordCount = 0 then
      // Si no existen datos de acceso al sistema se deberá enviar al usuario a la ventana de configuración del mismo
      raise InteligentException.Create('No existen datos de acceso en esta base de datos, informe de esto al administrador del sistema para que el se encargue de configurar dichos datos');
}
    CargaRegistros;
  end
  else
  begin
    Try
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      if Not proxy.InitGlobal(Globales.Elemento('DATABASE').AsString, cAcceso, Acceso.Llave, NameDataSet) then
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

      Form2.MemoInfo.Text := Acceso.SeqAcceso;
//      Form2.AdvToolBarPager1.Caption.Caption := Form2.AdvToolBarPager1.Caption.Caption + ' - ' + Acceso.SeqAcceso;
      Form2.tbMain.Caption.Caption := Form2.tbMain.Caption.Caption + ' - ' + Acceso.SeqAcceso;

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

procedure TFrmSeleccion.MouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsUnderLine];
end;

procedure TFrmSeleccion.MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [];
end;

procedure TFrmSeleccion.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: ListView1.ViewStyle := vsIcon;
    1: ListView1.ViewStyle := vsList;
    2: ListView1.ViewStyle := vsReport;
    3: ListView1.ViewStyle := vsSmallIcon;
  end;
end;

Procedure TFrmSeleccion.GuardaRegistros(ValorCadena: String);
begin
end;

end.
