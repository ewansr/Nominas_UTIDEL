unit UTFrmCargaImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvCombo, ExtCtrls, AdvShapeButton, ExtDlgs,UInteliDialog,
  JvExExtCtrls, JvImage,StrUtils,jpeg;

type
  ResolImage = record
    x:Integer;
    y:Integer;
  end;


type
  TFrmCargaImagen = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GbRedimencionar: TGroupBox;
    SBResolucion: TScrollBar;
    PanelSelect: TPanel;
    BtnSelect: TAdvShapeButton;
    Panel3: TPanel;
    BtnClose: TAdvShapeButton;
    Panel4: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    CBRelacion: TCheckBox;
    Memo1: TMemo;
    ScrollBox1: TScrollBox;
    PrevImagen: TImage;
    procedure SBResolucionChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure CBRelacionClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    resolucion: ResolImage;
    pictureTemp:TPicture;
    function Redim(Imagen: TGraphic; Ancho, Alto: Integer;
      Ajustar: boolean = True): TGraphic; overload;
    function Redim(extenc: string;Imagen: TGraphic; Ancho, Alto: Integer;
      Ajustar: boolean = True): TGraphic; overload;


  public
    PictureEntrante: Tpicture;
    PictureResultante: Tpicture;
    MemorySTResultante: TMemoryStream;
    cancelado: Boolean;
    extencion:string;
    { Public declarations }
  end;

var
  FrmCargaImagen: TFrmCargaImagen;

implementation
uses Clientmoduleunit1;

{$R *.dfm}

procedure TFrmCargaImagen.BtnCloseClick(Sender: TObject);
begin
  //Cierre de ventana
  close;
end;

procedure TFrmCargaImagen.BtnSelectClick(Sender: TObject);
begin
  try
    //al pulsar el boton aceptar asignar los valores resultantes
    //y cerrar la ventana
    PrevImagen.Picture.Graphic.SaveToStream(MemorySTResultante);
    MemorySTResultante.Position := 0;
    PictureResultante := PrevImagen.Picture;
    cancelado := false;
    close;
  except
      on e:Exception do
      InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCargaImagen.CBRelacionClick(Sender: TObject);
var pic:TPicture;
begin
  try
    try
      //al establecer si se mantiene la relaciòn de aspecto, actualizar la imagen
      pic := TPicture.Create;
      pic.LoadFromFile(openpicturedialog1.filename);
      GbRedimencionar.Caption := 'Redimencionar a: '+inttostr(resolucion.x)+' x '+inttostr(resolucion.y);
      PrevImagen.picture.Graphic := redim(extencion,pic.Graphic,resolucion.x,resolucion.y,CBRelacion.Checked);
      previmagen.Left := Trunc(ScrollBox1.Width/2-(previmagen.Width/2));
    finally
      pic.free;
    end;
  except
      on e:Exception do
      InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCargaImagen.FormCreate(Sender: TObject);
begin
  //Creando objetos
  MemorySTResultante := TMemoryStream.Create;
  PictureResultante := TPicture.Create;
  Cancelado := true;
  extencion := '';
end;

procedure TFrmCargaImagen.FormResize(Sender: TObject);
begin
      previmagen.Left := Trunc(ScrollBox1.Width/2-(previmagen.Width/2));
end;

procedure TFrmCargaImagen.FormShow(Sender: TObject);
var
  pic:TPicture;
  Jp : TJPegImage;
  bs:TMemoryStream;
  LocBitMap : TBitMap;
  bf:WORD;
begin
  //colores en pantalla
  clientmodule1.ComponentColor(self);
  //si se ejecuta el buscador
  if openpicturedialog1.execute then
  begin
    try
      try
        pic:= TPicture.Create; //cargamos la imagen

        pic.LoadFromFile(openpicturedialog1.filename);
//
        bs := TMemoryStream.Create;
        pic.Graphic.SaveToStream(bs);

        bs.Seek(0, soFromBeginning);
        if bs.Read(bf,4) > 0 then
        begin
          case bf of
            // BMP
            $4D42: begin
                     extencion := '.bmp';
                   end;
            // icono
            $0000: begin
                     extencion := '.ico';
                   end;
            // WMF
           // $0001,$CDD7: ;
            // JPG
            $D8FF: begin
                    extencion := '.jpg';
                   end
          end;
        end;

       // extencion := AnsiRightStr(openpicturedialog1.filename,4);
//
        //calculamos la resolucion de acuerdo al scrollbar
        resolucion.x := 320*SBResolucion.Position;
        resolucion.y := 240*SBResolucion.Position;
        //texto del grupo redimencionar
        GbRedimencionar.Caption := 'Redimencionar a: '+inttostr(resolucion.x)+' x '+inttostr(resolucion.x);
        //mostrar la imagen en el componente grafico
        PrevImagen.picture.Graphic := redim(extencion,pic.Graphic,resolucion.x,resolucion.y);
        previmagen.Left := Trunc(ScrollBox1.Width/2-(resolucion.x/2));
      finally
        pic.free;
      end;
    Except
      on e:Exception do
      begin
        InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  end
  else
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure TFrmCargaImagen.SBResolucionChange(Sender: TObject);
var pic:TPicture;
begin
  try
    try
      //al modificar el valor de la posicion del scrollbar tenemos que
      //actualizar el valor de la resolucion  asi como tambien
      //actualizar la imagen de acuerdo a la resolucion actual
      if TScrollBar(sender).Position > 0 then
      begin
        resolucion.x := 320*TScrollBar(sender).Position;
        resolucion.y := 240*TScrollBar(sender).Position;
      end;
      pic := TPicture.Create;

      pic.LoadFromFile(openpicturedialog1.filename);
      GbRedimencionar.Caption := 'Redimencionar a: '+inttostr(resolucion.x)+' x '+inttostr(resolucion.y);
      PrevImagen.picture.Graphic := redim(extencion,pic.Graphic,resolucion.x,resolucion.y,CBRelacion.Checked);
      previmagen.Left := Trunc(ScrollBox1.Width/2-(previmagen.Width/2));
    finally
      pic.free;
    end;
  except
      on e:Exception do
      InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
  end;
end;

function TFrmCargaImagen.Redim(extenc: string;Imagen: TGraphic; Ancho, Alto: Integer;Ajustar:boolean):TGraphic;
var
  Bitmap: TBitmap;
  Rect:TRect;
  pictemp:TPicture;
  AnchoOrg,AltoOrg:Integer;
  ico: Ticon;
begin

  try
    //creando objetos
    Bitmap  := TBitmap.Create;
    pictemp :=TPicture.create;

    //establecemos  el tamaño del bmp temporal
    Bitmap.Width  := Ancho;
    Bitmap.Height := Alto;

    // Calculos para que quede proporcional
    if ajustar then
    begin
      Ancho:= Trunc((Imagen.Width*Alto)/Imagen.Height);
    end;

    // posición nueva
    // Hay que centarla para que queden márgenes iguales a ambos lados

    Rect.Left := ((Bitmap.Width - Ancho) div 2);
    Rect.Top := ((Bitmap.Height - Alto) div 2);
    Rect.Right:= Rect.Left + Ancho;
    Rect.Bottom := Rect.Top + Alto;

    // Color neutro para márgenes
    Bitmap.Canvas.Brush.Color := clwhite;

    if (LowerCase(extenc) = '.ico') then
    begin
      // copiar
      ico := ticon.Create;
      ico.Assign(imagen);
      imagen.Assign(ico);
      ico.free;
    end;
    if (LowerCase(extenc) = '.bmp') or (LowerCase(extencion) = '.jpg') then
    begin
      // copiar
      Bitmap.Canvas.FillRect(Bitmap.Canvas.ClipRect);
      Bitmap.Canvas.StretchDraw(Rect,imagen);

      imagen.Assign(bitmap);
    end;

    //se regresa el grapic
    result:=imagen;
  finally
    Bitmap.Free;
    pictemp.free;


  end;
end;

function TFrmCargaImagen.Redim(Imagen: TGraphic; Ancho, Alto: Integer;Ajustar:boolean):TGraphic;
var
  Bitmap: TBitmap;
  Rect:TRect;
  pictemp:TPicture;
  AnchoOrg,AltoOrg:Integer;
  ico: Ticon;
begin

  try
    //creando objetos
    Bitmap  := TBitmap.Create;
    pictemp :=TPicture.create;

    //establecemos  el tamaño del bmp temporal
    Bitmap.Width  := Ancho;
    Bitmap.Height := Alto;

    // Calculos para que quede proporcional
    if ajustar then
    begin
      Ancho:= Trunc((Imagen.Width*Alto)/Imagen.Height);
    end;

    // posición nueva
    // Hay que centarla para que queden márgenes iguales a ambos lados

    Rect.Left := ((Bitmap.Width - Ancho) div 2);
    Rect.Top := ((Bitmap.Height - Alto) div 2);
    Rect.Right:= Rect.Left + Ancho;
    Rect.Bottom := Rect.Top + Alto;

    // Color neutro para márgenes
    Bitmap.Canvas.Brush.Color := clwhite;

    // copiar
    Bitmap.Canvas.FillRect(Bitmap.Canvas.ClipRect);
    Bitmap.Canvas.StretchDraw(Rect,imagen);

    imagen.Assign(bitmap);

    //se regresa el grapic
    result:=imagen;
  finally
    Bitmap.Free;
    pictemp.free;
  end;
end;

end.
