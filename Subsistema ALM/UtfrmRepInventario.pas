unit UtfrmRepInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, DBChart, TeeData, TeEngine, TeeProcs, Chart,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, StdCtrls,
  AdvShapeButton, ExtCtrls, NxDBGrid, Series, GanttCh, RxMemDS, frxClass,
  frxDBSet, DBCtrls, fs_igraphicsrtti, fs_ichartrtti, frxOLE, frxChart, UInteliDialog,
  BubbleCh, JvExControls, JvLabel, NxColumns, NxDBColumns,Math, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvOfficeButtons;

type
  TDatosForma = class
    Width, Height: Integer;
    Borde: TBorderIcons;
    Caption: String;
  End;

  TFrmRepInventario = class(TForm)
    pnlPrincipal: TPanel;
    pnlSuperior: TPanel;
    pnlPosterior: TPanel;
    BtnPrint: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    ComboBox1: TComboBox;
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    NGPrincipal: TNextDBGrid;
    Panel1: TPanel;
    Splitter1: TSplitter;
    tipo: TComboBox;
    Panel4: TPanel;
    Panel3: TPanel;
    chkd: TCheckBox;
    ScrollBar3d: TScrollBar;
    ScrollElev: TScrollBar;
    Reporte: TfrxReport;
    FrxDatos: TfrxDBDataset;
    RxMemoryDataGraphic: TRxMemoryData;
    FrxGraphics: TfrxDBDataset;
    DataSource1: TDataSource;
    RxMemoryDataGraphicgrafico: TGraphicField;
    frxOLEObject1: TfrxOLEObject;
    Chart1: TChart;
    Chkmark: TCheckBox;
    pnlScrollH: TPanel;
    ScrollRot: TScrollBar;
    ScrollZoom: TScrollBar;
    Label1: TLabel;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    BtnRefresh: TAdvShapeButton;
    procedure ComboBox1Select(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkdClick(Sender: TObject);
    procedure ScrollBar3dChange(Sender: TObject);
    procedure ScrollElevChange(Sender: TObject);
    procedure ScrollRotChange(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);

    function ObtenerMax(Dataset: TClientDataSet; Campo:string):Real; //funcion para obtener el numero maximo del valor de un campo para usar en la grafica

    function GraficaBarra(ChartComponent: TChart; Cliente: TClientDataSet; Valor, Titulo, Leyenda,LabelPie, Orientacion: string; ShowMark: Boolean; AgruparPor: String):Boolean;
    function GraficaPastel(ChartComponent: TChart; Cliente: TClientDataSet; Valor, Titulo, Leyenda,LabelPie: string; ShowMark: Boolean;AgruparPor:String):Boolean;
    procedure ScrollZoomChange(Sender: TObject);
    procedure Chart1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure AccedeACoordenadas;
    procedure SavePosScroll;
    procedure NGPrincipalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnCloseClick(Sender: TObject);

  private
    { Private declarations }
     IdArticuloP: Integer;
  public
    idAlmReport: Integer;
    { Public declarations }
  end;

var
  FrmRepInventario: TFrmRepInventario;



implementation

uses
  ClientModuleUnit1, xDatabase, UTFrmArticulo2,URegistro;

{$R *.dfm}

procedure TFrmRepInventario.AccedeACoordenadas;
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

  //3d
  try
    ScrollBar3d.Position := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Pos3dBar', Existe));
    if Not Existe then ScrollBar3d.Position := 0;
  Except
    ScrollBar3d.Position := 0;
  end;

  //Zoom
  try
    ScrollZoom.Position := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'PosZoom', Existe));
    if Not Existe then ScrollZoom.Position := 100;
  Except
    ScrollZoom.Position := 100;
  end;

  //rotacion
  try
    ScrollRot.Position := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'PosRot', Existe));
    if Not Existe then ScrollRot.Position := 0;
  Except
    ScrollRot.Position := 0;
  end;

  //elevacion
  try
    ScrollElev.Position := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'PosElev', Existe));
    if Not Existe then ScrollElev.Position := 0;
  Except
    ScrollElev.Position := 0;
  end;

  //chkd
  try
    chkd.Checked := StrToBool(VarRegistry('\Ventanas', '\' + Self.Name, 'chkd', Existe));
    if Not Existe then chkd.Checked := True;
  Except
    chkd.Checked := True;
  end;

  //chkmrk
  try
    Chkmark.Checked := StrToBool(VarRegistry('\Ventanas', '\' + Self.Name, 'chkmark', Existe));
    if Not Existe then Chkmark.Checked := True;
  Except
    Chkmark.Checked := True;
  end;

  //panel1.w
  try
    Panel1.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Panel1w', Existe));
    if Not Existe then Panel1.Width := 457;
  Except
    Panel1.Width := 457;
  end;

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

procedure TFrmRepInventario.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmRepInventario.BtnPrintClick(Sender: TObject);
var
  img: TImage;

  //componente fastreport
  ima: TfrxPictureView;
  banda: TfrxColumnHeader;

begin
  TRY
    if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 1) or
       (ComboBox1.ItemIndex = 2) or (ComboBox1.ItemIndex = 3)then
    begin
      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\InventarioGrafico.fr3') then
        Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                                 ExtractFilePath(Application.ExeName) + 'Reportes\InventarioGrafico.fr3');

      Reporte.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'InventarioGrafico.fr3');

      img:=TImage.Create(nil);
      Chart1.Width:=trunc(width*600);
      Chart1.Height:=trunc(height*600);
      img.Width:=Chart1.Width;
      img.Height:=Chart1.Height;
      Chart1.PrintPartialCanvas(img.Canvas,rect(0,0,Chart1.Width,Chart1.Height));



      reporte.PreviewOptions.MDIChild := False ;
      reporte.PreviewOptions.Modal := True ;
      reporte.PreviewOptions.ShowCaptions := False ;
      reporte.Previewoptions.ZoomMode := zmPageWidth ;

      //creando reporte por codigo
      banda := TfrxColumnHeader.Create(Reporte.Pages[1]);
      banda.CreateUniqueName;

      ima := TfrxPictureView.Create(banda);
      ima.CreateUniqueName;
      ima.Picture.Bitmap := Img.Picture.Bitmap;

      ima.SetBounds(10,11,Reporte.Pages[1].Width-100,450); // Left, Top, Width, Height
      ima.Stretched := True; // con esto el width se adapta automáticamente

       //paso de variables
      clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
      clientModule1.cdOrganizacion.Prior;
      reporte.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString);
      reporte.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
      reporte.Variables['usuarionombre'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
      reporte.Variables['usuariocargo'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);

      reporte.Variables['almacen'] := QuotedStr(CdDatos.FieldByName('tituloalmacen').AsString);
      reporte.Variables['descripcion'] := QuotedStr(CdDatos.FieldByName('comentariosalm').AsString);
      reporte.Variables['ciudad'] := QuotedStr(CdDatos.FieldByName('ubicacionalm').AsString);

      if ComboBox1.ItemIndex = 0 then
      begin
        reporte.Variables['campocantidad'] := QuotedStr('existencia');
        reporte.Variables['subtitulo'] := QuotedStr('Reporte de Existencias de artículos por almacén');
      end;
      if (ComboBox1.ItemIndex = 1) then
      begin
        reporte.Variables['campocantidad'] := QuotedStr('cantidad');
        reporte.Variables['subtitulo'] := QuotedStr('Reporte de entradas de artículos por almacén');
      end;
      if (ComboBox1.ItemIndex = 2) then
      begin
        reporte.Variables['campocantidad'] := QuotedStr('cantidad');
        reporte.Variables['subtitulo'] := QuotedStr('Reporte de salida de artículos por almacén');
      end;

      if (ComboBox1.ItemIndex = 3) then
      begin
        reporte.Variables['campocantidad'] := QuotedStr('cantidad');
        reporte.Variables['subtitulo'] := QuotedStr('Reporte de rendimiento salida/entrada de artículos');
      end;

      reporte.ShowReport(False);

      ima.Clear;
      freeAndNil(img);

    end;

    if ComboBox1.ItemIndex = 4 then
    begin
      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\SolAsignXComp.fr3') then
        Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                                 ExtractFilePath(Application.ExeName) + 'Reportes\InvSolAsignXComp.fr3');

      Reporte.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'SolAsignXComp.fr3');

      img:=TImage.Create(nil);
      Chart1.Width:=trunc(width*200);
      Chart1.Height:=trunc(height*200);
      img.Width:=Chart1.Width;
      img.Height:=Chart1.Height;
      Chart1.PrintPartialCanvas(img.Canvas,rect(0,0,Chart1.Width,Chart1.Height));



      reporte.PreviewOptions.MDIChild := False ;
      reporte.PreviewOptions.Modal := True ;
      reporte.PreviewOptions.ShowCaptions := False ;
      reporte.Previewoptions.ZoomMode := zmPageWidth ;

      //creando reporte por codigo
      banda := TfrxColumnHeader.Create(Reporte.Pages[1]);
      banda.CreateUniqueName;

      ima := TfrxPictureView.Create(banda);
      ima.CreateUniqueName;
      ima.Picture.Bitmap := Img.Picture.Bitmap;

      ima.SetBounds(10,11,Reporte.Pages[1].Width-100,450); // Left, Top, Width, Height
      ima.Stretched := True; // con esto el width se adapta automáticamente

       //paso de variables
      clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
      clientModule1.cdOrganizacion.Prior;
      reporte.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString);
      reporte.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
      reporte.Variables['usuarionombre'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
      reporte.Variables['usuariocargo'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);

      reporte.Variables['campocantidad'] := QuotedStr('cantidad');
      reporte.Variables['subtitulo'] := QuotedStr('Reporte de asignaciones por comprador');

      reporte.ShowReport(False);

      ima.Clear;
      freeAndNil(img);
    end;

  except
    on e: Exception do
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
  END;
end;

procedure TFrmRepInventario.Chart1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    Button := mbRight;
end;

procedure TFrmRepInventario.chkdClick(Sender: TObject);
begin
  Chart1.View3D := chkd.Checked;
end;



procedure TFrmRepInventario.ComboBox1Select(Sender: TObject);
begin

{  ScrollRot.Position := 0;
  ScrollElev.Position := 0;
  ScrollBar3d.Position := 0;
  ScrollZoom.Position := 100; }

  try

    if Assigned(cdDatos) then
    begin
      cdDatos.Active := False;
      EliminarConjunto(cdDatos.ProviderName);

    end;

    Chart1.ClearChart;
    if ComboBox1.ItemIndex = 0 then //reporte por existencia
    begin

      CrearConjunto(cdDatos,'repexistenciaarticulo',ccSelect);
      CargarDatosFiltrados(cdDatos,'idalmacen',[idAlmReport]);
      cdDatos.Open;

      NGPrincipal.Columns.Clear;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[0].FieldName := 'codigoarticulo';
      NGPrincipal.Columns.Item[0].Header.Caption := 'Codigo';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[1].FieldName := 'tituloarticulo';
      NGPrincipal.Columns.Item[1].Header.Caption := 'titulo';
      NGPrincipal.Columns.Item[1].Width := 500;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[2].FieldName := 'existencia';
      NGPrincipal.Columns.Item[2].Header.Caption := 'cantidad';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[3].FieldName := 'codigounidad';
      NGPrincipal.Columns.Item[3].Header.Caption := 'unidad';

      if cdDatos.RecordCount > 0 then
      begin
        cdDatos.First;

        while not cdDatos.Eof do
        begin

          if tipo.ItemIndex = 0 then
          begin

            GraficaBarra(Chart1,cdDatos,'existencia','tituloarticulo','codigoarticulo','Articulos en Almacén','Vertical',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 1 then
          begin

            GraficaBarra(Chart1,cdDatos,'existencia','tituloarticulo','codigoarticulo','Articulos en Almacén','Horizontal',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 2 then
          begin

            GraficaPastel(Chart1,cdDatos,'existencia','tituloarticulo','codigoarticulo','Articulos en Almacén',Chkmark.Checked,'');

          end;

          cdDatos.Next;
        end;

      end;


    end;

    if ComboBox1.ItemIndex = 1 then //reporte entrada articulos
    begin

      CrearConjunto(cdDatos,'repvale_entrada',ccCatalog);
      if chkFecha.Checked then
        CargarDatosFiltrados(cdDatos,'idalmacen,fechaini,fechafin',[idAlmReport,ClientModule1.DatetoStrSql(dtpFiltroFechaIni.Date),ClientModule1.DatetoStrSql(dtpFiltroFechaFin.Date)])
      else
        CargarDatosFiltrados(cdDatos,'idalmacen',[idAlmReport]);
      cdDatos.Open;

      NGPrincipal.Columns.Clear;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[0].FieldName := 'codigoarticulo';
      NGPrincipal.Columns.Item[0].Header.Caption := 'Codigo';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[1].FieldName := 'tituloarticulo';
      NGPrincipal.Columns.Item[1].Header.Caption := 'titulo';
      NGPrincipal.Columns.Item[1].Width := 500;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[2].FieldName := 'cantidad';
      NGPrincipal.Columns.Item[2].Header.Caption := 'cantidad';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[3].FieldName := 'codigounidad';
      NGPrincipal.Columns.Item[3].Header.Caption := 'unidad';

      if cdDatos.RecordCount > 0 then
      begin
        cdDatos.First;

        while not cdDatos.Eof do
        begin

          if tipo.ItemIndex = 0 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Entrada de artículos','Vertical',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 1 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Entrada de artículos','Horizontal',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 2 then
          begin

            GraficaPastel(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Entrada de artículos',Chkmark.Checked,'');

          end;

          cdDatos.Next;
        end;

      end;


    end;

    if ComboBox1.ItemIndex = 2 then //reporte salida de articulos
    begin

      CrearConjunto(cdDatos,'repvale_salida',ccCatalog);
      if chkFecha.Checked then
        CargarDatosFiltrados(cdDatos,'idalmacen,fechaini,fechafin',[idAlmReport,ClientModule1.DatetoStrSql(dtpFiltroFechaIni.Date),ClientModule1.DatetoStrSql(dtpFiltroFechaFin.Date)])
      else
        CargarDatosFiltrados(cdDatos,'idalmacen',[idAlmReport]);
      cdDatos.Open;

      NGPrincipal.Columns.Clear;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[0].FieldName := 'codigoarticulo';
      NGPrincipal.Columns.Item[0].Header.Caption := 'Codigo';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[1].FieldName := 'tituloarticulo';
      NGPrincipal.Columns.Item[1].Header.Caption := 'titulo';
      NGPrincipal.Columns.Item[1].Width := 500;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[2].FieldName := 'cantidad';
      NGPrincipal.Columns.Item[2].Header.Caption := 'cantidad';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[3].FieldName := 'codigounidad';
      NGPrincipal.Columns.Item[3].Header.Caption := 'unidad';


      if cdDatos.RecordCount > 0 then
      begin
        cdDatos.First;

        while not cdDatos.Eof do
        begin

          if tipo.ItemIndex = 0 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Salida de artículos','Vertical',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 1 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Salida de artículos','Horizontal',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 2 then
          begin

            GraficaPastel(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Salida de artículos',Chkmark.Checked,'');

          end;

          cdDatos.Next;
        end;

      end;

    end;


    if ComboBox1.ItemIndex = 3 then //estradasalida por articulo
    begin

      CrearConjunto(cdDatos,'repartentsal',ccSelect);
      if chkFecha.Checked then
        CargarDatosFiltrados(cdDatos,'idalmacen,fechaini,fechafin',[idAlmReport,ClientModule1.DatetoStrSql(dtpFiltroFechaIni.Date),ClientModule1.DatetoStrSql(dtpFiltroFechaFin.Date)])
      else
        CargarDatosFiltrados(cdDatos,'idalmacen',[idAlmReport]);
      cdDatos.Open;

      NGPrincipal.Columns.Clear;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[0].FieldName := 'codigoarticulo';
      NGPrincipal.Columns.Item[0].Header.Caption := 'Codigo';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[1].FieldName := 'tituloarticulo';
      NGPrincipal.Columns.Item[1].Header.Caption := 'Titulo';
      NGPrincipal.Columns.Item[1].Width := 500;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[2].FieldName := 'totalent';
      NGPrincipal.Columns.Item[2].Header.Caption := 'Entrada';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[3].FieldName := 'totalsal';
      NGPrincipal.Columns.Item[3].Header.Caption := 'Salida';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[4].FieldName := 'codigounidad';
      NGPrincipal.Columns.Item[4].Header.Caption := 'Unidad';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[5].FieldName := 'cantidad';
      NGPrincipal.Columns.Item[5].Header.Caption := 'Rendimiento';

      if cdDatos.RecordCount > 0 then
      begin
        cdDatos.First;

        while not cdDatos.Eof do
        begin

          if tipo.ItemIndex = 0 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Rendimiento','Vertical',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 1 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Rendimiento','Horizontal',Chkmark.Checked,'');

          end;

          if tipo.ItemIndex = 2 then
          begin

            GraficaPastel(Chart1,cdDatos,'cantidad','tituloarticulo','codigoarticulo','Rendimiento',Chkmark.Checked,'');

          end;

          cdDatos.Next;
        end;

      end;


    end;

    if ComboBox1.ItemIndex = 4 then //solicitudes asignadas a comprador
    begin

      CrearConjunto(cdDatos,'repsolasigcomprador',ccCatalog);
      if chkFecha.Checked then
        CargarDatosFiltrados(cdDatos,'fechaini,fechafin',[ClientModule1.DatetoStrSql(dtpFiltroFechaIni.Date),ClientModule1.DatetoStrSql(dtpFiltroFechaFin.Date)]);

      cdDatos.Open;

      NGPrincipal.Columns.Clear;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[0].FieldName := 'nombre';
      NGPrincipal.Columns.Item[0].Header.Caption := 'Nombre';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[1].FieldName := 'apellidos';
      NGPrincipal.Columns.Item[1].Header.Caption := 'Apellidos';
      NGPrincipal.Columns.Item[1].Width := 500;

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[2].FieldName := 'serie';
      NGPrincipal.Columns.Item[2].Header.Caption := 'Serie Solicitud';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[3].FieldName := 'fecha';
      NGPrincipal.Columns.Item[3].Header.Caption := 'Fecha';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[4].FieldName := 'estado';
      NGPrincipal.Columns.Item[4].Header.Caption := 'Estado';

      NGPrincipal.Columns.Add(TNxdbTextColumn);
      NGPrincipal.Columns.Item[5].FieldName := 'tituloarticulo';
      NGPrincipal.Columns.Item[5].Header.Caption := 'Artículo';

      if cdDatos.RecordCount > 0 then
      begin
        cdDatos.First;

        while not cdDatos.Eof do
        begin

          if tipo.ItemIndex = 0 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','nombre','nombre','Solicitudes por comprador.','Vertical',Chkmark.Checked,'idusuario');

          end;

          if tipo.ItemIndex = 1 then
          begin

            GraficaBarra(Chart1,cdDatos,'cantidad','nombre','nombre','Solicitudes por comprador.','Horizontal',Chkmark.Checked,'idusuario');

          end;

          if tipo.ItemIndex = 2 then
          begin

            GraficaPastel(Chart1,cdDatos,'cantidad','nombre','nombre','Solicitudes por comprador.',Chkmark.Checked,'idusuario');

          end;

          cdDatos.Next;
        end;

      end;

    end;

  except
    on e: Exception do
      InteliDialog.ShowModal('Error al generar gráfico ',e.Message, mtWarning, [mbOk], 0);
  end;

end;

procedure TFrmRepInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    try
      LiberarVentana(Self, Action);
      SavePosScroll;
      cdDatos.Close;
      EliminarConjunto(cdDatos.ProviderName);

    finally
      ;
    end;
    Action:= caFree;
end;

procedure TFrmRepInventario.FormCreate(Sender: TObject);
begin
  dtpFiltroFechaIni.Date := Now-30;
  dtpFiltroFechaFin.Date := Now;
end;

procedure TFrmRepInventario.FormShow(Sender: TObject);

begin
  AccedeACoordenadas;

  ClientModule1.RastrearGrids(self);
  ClientModule1.ComponentColor(self);
end;

function TFrmRepInventario.GraficaBarra(ChartComponent: TChart; Cliente: TClientDataSet; Valor, Titulo,
  Leyenda,LabelPie, Orientacion: string; ShowMark: Boolean; AgruparPor: String): Boolean;
  var
  SeriesBar: TBarSeries;
  SeriesHbs: THorizBarSeries;
  Cont: Integer;
  MaxVal, Porc, ValActual:Real;
  ValorAnterior: string;
  activado: Boolean;
begin

    try
      ChartComponent.ClearChart;
      SeriesBar.Free;
    except
      ;
    end;

    try
      SeriesHbs.Free;
    except
      ;
    end;

    if Cliente.RecordCount>0 then
    begin
      Cont := 0;
      MaxVal:= 0;

      Chart1.View3DOptions.Rotation := ScrollRot.Position;
      chart1.View3DOptions.Elevation := ScrollElev.Position;
      Chart1.View3DOptions.Zoom := ScrollZoom.Position;
      Chart1.Chart3DPercent:= ScrollBar3d.Position;
      Chart1.View3D := chkd.Checked;

      //obteniendo el maximo entero del dataset local
      MaxVal := ObtenerMax(Cliente,Valor);

      if MaxVal < 1 then
        raise Exception.Create('El valor màximo es 0.');


      try
        if LowerCase(Orientacion) = 'vertical' then
        begin

        Cont := 0;

          SeriesBar :=TBarSeries.Create(self);
          SeriesBar.ParentChart := ChartComponent;
          ChartComponent.AddSeries(SeriesBar);
          ChartComponent.Legend.Alignment := laBottom;

          SeriesBar.ColorEachPoint := True;

          Cliente.First;
          while not Cliente.Eof do
          begin
            if (Length(Trim(AgruparPor)) > 1) then
            begin
              if Cliente.FieldByName(AgruparPor).AsString <> ValorAnterior then
                activado := True
              else
                activado := False;
            end
            else
              activado := True;




            if (activado = True) then
            begin

              Try
                ValActual := Cliente.FieldByName(valor).AsFloat;
              except
                ValActual := 0;
              End;

              //Calcular porcentaje
              Porc := (ValActual/MaxVal)*100  ;
              Porc := RoundTo(Porc, -2);

              SeriesBar.Add(Porc,Cliente.FieldByName(Leyenda).AsString,clTeeColor);
              ChartComponent.View3DOptions.Orthogonal := False;
             // ChartComponent.View3DOptions.Rotation := 0;

              SeriesBar.Marks.Item[Cliente.RecNo-1].Text.Add(Cliente.FieldByName(valor).AsString+':'+FloatToStr(porc)+'%');

              if not ShowMark then
                SeriesBar.Marks.Hide;

              ChartComponent.SubFoot.Text.Text := LabelPie;

            end;
            if (Length(Trim(AgruparPor)) > 1) then
              ValorAnterior :=  Cliente.FieldByName(AgruparPor).AsString;

            Inc(Cont);
            Cliente.Next;

          end;
        end;

        if LowerCase(Orientacion) = 'horizontal' then
        begin

          Cont := 0;

          SeriesHbs :=THorizBarSeries.Create(self);
          SeriesHbs.ParentChart := ChartComponent;
          ChartComponent.AddSeries(SeriesHbs);
          ChartComponent.Legend.Alignment := laBottom;

          SeriesHbs.ColorEachPoint := True;

          Cliente.First;

          while not Cliente.Eof do
          begin
            if (Length(Trim(AgruparPor)) > 1) then
            begin
              if Cliente.FieldByName(AgruparPor).AsString <> ValorAnterior then
                activado := True
              else
                activado := False;
            end
            else
              activado := True;

            if (activado = True) then
            begin

              Try
                ValActual := Cliente.FieldByName(valor).AsFloat;
              except
                ValActual := 0;
              End;

              //Calcular porcentaje
              Porc := (ValActual/MaxVal)*100  ;
              Porc := RoundTo(Porc, -2);

              SeriesHbs.Add(Porc,Cliente.FieldByName(Leyenda).AsString,clTeeColor);
              ChartComponent.View3DOptions.Orthogonal := False;
            //  ChartComponent.View3DOptions.Rotation := 0;

              SeriesHbs.Marks.Item[Cliente.RecNo-1].Text.Add(Cliente.FieldByName(valor).AsString+':'+FloatToStr(porc)+'%');

              if not ShowMark then
                SeriesHbs.Marks.Hide;

              ChartComponent.SubFoot.Text.Text := LabelPie;
            end;

            if (Length(Trim(AgruparPor)) > 1) then
              ValorAnterior :=  Cliente.FieldByName(AgruparPor).AsString;

            Inc(Cont);
            Cliente.Next;

          end;

        end;

        Result := True;

      except
       on e: Exception do
         raise Exception.Create(e.Message);

      end;
    end
    else

      raise Exception.Create('No tiene datos cargados');


end;

function TFrmRepInventario.GraficaPastel(ChartComponent: TChart;
  Cliente: TClientDataSet; Valor, Titulo, Leyenda, LabelPie: string;
  ShowMark: Boolean;AgruparPor:String): Boolean;
  var
  SeriesPie:TPieSeries;
  cont:integer;
  Porc , MaxVal,ValActual: Real;
  Activado:Boolean;
  ValorAnterior: string;
begin

    //Eliminar el componente creado
    try
      SeriesPie.Free;
    except
      ;
    end;

    MaxVal := 0;
    Porc := 0;
    Try
      if Cliente.RecordCount>0 then
      begin

      Chart1.View3DOptions.Rotation := ScrollRot.Position;
      chart1.View3DOptions.Elevation := ScrollElev.Position;
      Chart1.View3DOptions.Zoom := ScrollZoom.Position;
      Chart1.Chart3DPercent:= ScrollBar3d.Position;
      Chart1.View3D := chkd.Checked;

        //obteniendo el maximo entero del dataset local
        MaxVal := ObtenerMax(Cliente,Valor);

        if MaxVal < 1 then
          raise Exception.Create('El valor màximo es 0.');

        Cont := 0;

        SeriesPie :=TPieSeries.Create(self);
        SeriesPie.ParentChart := ChartComponent;
        ChartComponent.AddSeries(SeriesPie);
        ChartComponent.Legend.Alignment := laBottom;

        Cliente.First;
        while not Cliente.Eof do
        begin

          if (Length(Trim(AgruparPor)) > 1) then
          begin
            if Cliente.FieldByName(AgruparPor).AsString <> ValorAnterior then
              activado := True
            else
              activado := False;
          end
          else
            activado := True;

          if Activado = True then
          begin
            Try
              ValActual := Cliente.FieldByName(valor).AsFloat;
            except
              ValActual := 0;
            End;

            //Calcular porcentaje
            Porc := (ValActual/MaxVal)*100  ;
            Porc := RoundTo(Porc, -2);

            SeriesPie.Add(Porc,Cliente.FieldByName(Leyenda).AsString);

            SeriesPie.ExplodeBiggest := 20;

            SeriesPie.Marks.Item[Cliente.RecNo-1].Text.Add(Cliente.FieldByName(valor).AsString);

            if not ShowMark then
              SeriesPie.Marks.Hide;

             ChartComponent.SubFoot.Text.Text := LabelPie;
          end;

          if (Length(Trim(AgruparPor)) > 1) then
            ValorAnterior :=  Cliente.FieldByName(AgruparPor).AsString;

          Inc(Cont);
          Cliente.Next;

        end;

      end;
    except
      on e: exception do
      InteliDialog.ShowModal('No se ha podido generar la gráfica', 'Por la siguiente razòn:' + #10 + #10 +
                             e.message, mtError, [mbOk], 0);
    End;

end;

procedure TFrmRepInventario.NGPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    NGPrincipal.SelectCell(2,NGPrincipal.SelectedRow,[ssShift],False);
end;

function TFrmRepInventario.ObtenerMax(Dataset: TClientDataSet;
  Campo: string): Real;
  var
     Valor, Max: Real;
begin
  try
    if (Dataset.State <> dsBrowse) or (Dataset.RecordCount < 1) then
      raise Exception.Create('error al consultar datos.');

    Dataset.First;

    Max := 0;
    Valor := 0;

    while not Dataset.Eof do
    begin

      //Tratar de convertir el campo a numero
      try
        Valor := Dataset.FieldByName(Campo).AsInteger;
      except
        Valor := 0;
      end;

      if Valor > Max  then
        Max := Valor;


      Dataset.Next;
    end;


  except
    on e:Exception do
      raise Exception.Create('no se puede obtener el numero maximo para calcular por el siguiente motivo: '+e.Message);
  end;

    Result := Max;

end;

procedure TFrmRepInventario.SavePosScroll;
begin
   SetRegistry('\Ventanas', '\' + Self.Name, 'Pos3dBar', IntToStr(ScrollBar3d.Position));
   SetRegistry('\Ventanas', '\' + Self.Name, 'PosZoom', IntToStr(ScrollZoom.Position));
   SetRegistry('\Ventanas', '\' + Self.Name, 'PosRot', IntToStr(ScrollRot.Position));
   SetRegistry('\Ventanas', '\' + Self.Name, 'PosElev', IntToStr(ScrollElev.Position));
   SetRegistry('\Ventanas', '\' + Self.Name, 'chkd', VarToStr(chkd.Checked));
   SetRegistry('\Ventanas', '\' + Self.Name, 'chkmark', VarToStr(Chkmark.Checked));
   SetRegistry('\Ventanas', '\' + Self.Name, 'Panel1w', inttostr(Panel1.Width));
end;

procedure TFrmRepInventario.ScrollRotChange(Sender: TObject);
begin
  try
    chart1.View3DOptions.Elevation := ScrollElev.Position;
   // ScrollElev.Position := 0;
    Chart1.View3DOptions.Rotation:=ScrollRot.Position;
    ScrollRot.Hint := IntToStr(ScrollRot.Position);
    ScrollRot.ShowHint := True;
  except
   // ScrollRot.Position := 0;
    Chart1.Refresh;
  end;
end;

procedure TFrmRepInventario.ScrollElevChange(Sender: TObject);
begin
  try
    Chart1.View3DOptions.Rotation := ScrollRot.Position;
  //  ScrollRot.Position := 0;
    Chart1.View3DOptions.Elevation:=ScrollElev.Position;
    ScrollElev.Hint := IntToStr(ScrollElev.Position);
    ScrollElev.ShowHint := True;
  except
  //  ScrollElev.Position := 0;
    Chart1.Refresh;
  end;
end;

procedure TFrmRepInventario.ScrollZoomChange(Sender: TObject);
begin
  Chart1.View3DOptions.Zoom := ScrollZoom.Position;
  Chart1.Hint := IntToStr(ScrollZoom.Position);
end;

procedure TFrmRepInventario.ScrollBar3dChange(Sender: TObject);
begin
  Chart1.Chart3DPercent:=(ScrollBar3d.Position);
  ScrollBar3d.Hint := inttostr(ScrollBar3d.Position);
end;
end.


