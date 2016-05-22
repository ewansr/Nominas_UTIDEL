unit UTFrmCotizadorCompara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, ClientModuleUnit1, ExtCtrls,
  DBClient, AdvGlassButton, AdvSmoothLabel, StdCtrls, AdvGroupBox, DB,
  AdvShapeButton,ComObj;



type
  TTipoMarca = (tmPoner, tmQuitar, tmInvertir);
  TfrmCotizadorCompara = class(TForm)
    grdCotizador: TAdvStringGrid;
    pnlTop: TPanel;
    pnlBottom: TPanel;
    pnlCenter: TPanel;
    btnAnalizar: TAdvGlassButton;
    btnGenerar: TAdvGlassButton;
    AdvSmoothLabel4: TAdvSmoothLabel;
    grp1: TAdvGroupBox;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    BtnExport: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure grdCotizadorDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnAnalizarClick(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure grdCotizadorCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure grdCotizadorGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure grdCotizadorCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure BtnExportClick(Sender: TObject);
  private
    { Private declarations }
    CadenaDoc: string;
    DigitosDoc: Integer;
    function AnalizarRenglon(ARow: Integer): Integer;
    procedure MarcarPartida(ACol, ARow: Integer; Accion: TTipoMarca; Color1: TColor = clBlack; Color2: TColor = clRed);
    function LetraColumna(x: integer): string;
  public
    { Public declarations }
    Cotizaciones: TList;
    cdCotizaciones: TList;
    Solicitudes: TStringList;
  end;

var
  frmCotizadorCompara: TfrmCotizadorCompara;

const
  FIXED_COLS = 7;
  FIXED_ROWS = 2;
  FONT_SIZE = 7;
//  CadenaDoc = 'OC-OT1-{consecutivo}/{año}';


implementation

uses DateUtils, UInteliDialog, xDatabase, strUtils, alm_genericclasses, Unit2;


{$R *.dfm}

procedure TfrmCotizadorCompara.btnAnalizarClick(Sender: TObject);
var
  i: integer;
begin
  for i := FIXED_ROWS to grdCotizador.RowCount - 1 do
  begin
    AnalizarRenglon(i);
  end;
end;

procedure TfrmCotizadorCompara.BtnExportClick(Sender: TObject);
var

  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  tempPath,logofile:string;
  x,y,union,cel,col,inicio,fin,i:Integer;
  suma: real;
  const
   //hoja
   xlWBATWorksheet = -4167;

   //borde
   xlDouble = $FFFFEFE9;
   xlContinuous = $00000001;

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;

   xlVAlignCenter = $FFFFEFF4;
   xlVAlignTop = $FFFFEFC0;

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000022; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo
   xl_CL_Gris      = $00000010;
   xl_CL_GrisLight = $0000000f;
begin
  try

    ColMAxExc := 0;
    ColIni := 1;
    RowIni := 1;

    // Se crea la aplicacion

    Excel := CreateOleObject('Excel.Application');

    // Mostrar el excel
    Excel.Visible:= False;

    // evitar que nos pregunte si deseamos sobreescribir el archivo

    Excel.DisplayAlerts := false;

    // agregar libro de trabajo

    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

    // tomar una referencia a la hoja creada

    WorkSheet := WorkBook.WorkSheets[1];

    WorkSheet.Name := 'Cotizador';

    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);

    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField(  form2.cdImagen.FieldByName('imagen1')).SaveToFile(LogoFile);

    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 50, 70);
    WorkSheet.Cells[RowIni+1,ColIni+1] := clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString;
    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    clientModule1.cdOrganizacion.Last;
    WorkSheet.Cells[RowIni+2,ColIni+1] := clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+3,ColIni+1] := 'Ciudad del carmen campeche';
    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    RowIni := RowIni+6;

    y := 0;

    while y < grdcotizador.RowCount do
    begin
      x := 2;

      while x < grdcotizador.ColCount do
      begin
        WorkSheet.Cells[RowIni, x] := grdCotizador.Cells[x,y];
        WorkSheet.Cells[RowIni, x].VerticalAlignment := xlVAlignCenter;
        WorkSheet.Cells[RowIni, x].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x].ColumnWidth := grdCotizador.ColWidths[x]*0.15;

//        worksheet.Range[LetraColumna(x-1)+inttostr(RowIni), LetraColumna(x-1)+inttostr(RowIni)].Columns.Interior.ColorIndex :=;
        if y > 1 then
          WorkSheet.Cells[RowIni, x].font.Color := grdCotizador.FontColors[x,y];
        Inc(x);
        if y = 0 then
          inc(ColMaxExc);
      end;
      Inc(y);
      Inc(rowini);
    end;

    RowIni := rowini-y-6;
    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(x-1)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(x-1)+inttostr(RowIni+2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+3)+':'+LetraColumna(x-1)+inttostr(RowIni+3)].Mergecells := True;

    WorkSheet.Range[LetraColumna(4)+inttostr(7), LetraColumna(colmaxexc+1)+inttostr(8)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(1)+inttostr(7), LetraColumna(3)+inttostr(8)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(1)+inttostr(9), LetraColumna(ColMaxExc)+inttostr(y+14)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(4)+inttostr(7)+':'+LetraColumna(5)+inttostr(8)].Mergecells := True;
    Excel.Range[LetraColumna(ColMaxExc+1)+inttostr(7)+':'+LetraColumna(ColMaxExc+2)+inttostr(7)].Mergecells := True;
    WorkSheet.Range[LetraColumna(ColMaxExc+1)+inttostr(9), LetraColumna(ColMaxExc+3)+inttostr(y+6)].Borders.LineStyle := xlContinuous;

    union := (ColMaxExc-5) div 3;
    col := 0;
    inicio:= 6;

    while col < union do
    begin
      fin := inicio+2;
      Excel.Range[LetraColumna(inicio)+inttostr(7)+':'+LetraColumna(fin)+inttostr(7)].Mergecells := True;
      Excel.Range[LetraColumna(inicio)+inttostr(y+7)+':'+LetraColumna(fin)+inttostr(y+9)].Mergecells := True;
      Excel.Range[LetraColumna(inicio)+inttostr(y+10)+':'+LetraColumna(fin)+inttostr(y+14)].Mergecells := True;
      Excel.Range[LetraColumna(1)+inttostr(y+7)+':'+LetraColumna(5)+inttostr(y+14)].Mergecells := True;

      suma := 0;
      for i := 2 to y+6 do
      begin
        Excel.Range[LetraColumna(ColMaxExc+1)+inttostr(i+5)+':'+LetraColumna(ColMaxExc+3)+inttostr(i+5)].Mergecells := True;

        if grdCotizador.FontColors[fin,i]= clred then
          suma := suma + StrToFloat(grdCotizador.Cells[fin,i]);

      end;

      if col mod 2 = 0 then
        worksheet.Range[LetraColumna(inicio)+inttostr(9), LetraColumna(fin)+inttostr(y+6)].Columns.Interior.ColorIndex := xl_CL_AmarLight
      else
        worksheet.Range[LetraColumna(inicio)+inttostr(9), LetraColumna(fin)+inttostr(y+6)].Columns.Interior.ColorIndex := xl_CL_AzulCielo;
      WorkSheet.Cells[8,ColMaxExc+2] := 'OBSERVACIONES';
      WorkSheet.Cells[8,ColMaxExc+2].VerticalAlignment := xlVAlignCenter;
      WorkSheet.Cells[8,ColMaxExc+2].HorizontalAlignment := xlHAlignCenter;
      WorkSheet.Cells[y+7,2] := 'OBSERVACIONES GENERALES:';
      WorkSheet.Cells[y+7,2].VerticalAlignment := xlVAligntop;
      WorkSheet.Cells[y+7,inicio+1] := 'SUBTOTAL  $ '+FloatToStr(suma)+#10+'IVA  $'+FloatToStr(suma*0.16)+#10+'TOTAL  $'+FloatToStr(suma+(SUMA*0.16));
      WorkSheet.Cells[y+10,inicio+1] := 'CONDICIONES COMERCIALES:'+#10+'T.E.:'+#10+'PAGO:'+#10+'LAB:'+#10+'MONEDA: M.N.';

      inicio := inicio +3;
      Inc(col);
    end;

    worksheet.Range[LetraColumna(colini)+inttostr(7), LetraColumna(ColMaxExc+1)+inttostr(8)].Columns.Interior.ColorIndex := xl_CL_Gris;
    worksheet.Range[LetraColumna(colini)+inttostr(9), LetraColumna(5)+inttostr(y+6)].Columns.Interior.ColorIndex := xl_CL_GrisLight;



   // WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Excel.DisplayAlerts := True;
    Excel.Visible:= True;

  except
    on e: exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La la exportacion no se pudo completar debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);

  end;
end;

function TfrmCotizadorCompara.LetraColumna (x:integer):string;
const letras = 'ABCDEFGHIJKLMNOPKRSTUVWXYZ';
begin
  Result := '';
  x := x+1;
  While x > 0 do begin
    Result := letras[1 + ((x - 1) Mod length(letras))] + Result;
    x := (x - 1) div length(letras);
  End;
end;


procedure TfrmCotizadorCompara.FormCreate(Sender: TObject);
Var
  cdDocSerie: TClientDataSet;
  ProviderName: string;
  Documento: string;
begin
  // Cargar la plantilla para generar la serie de los documentos
  // Primero cargar algun formato por default
  CadenaDoc := '{codigo}-{consecutivo}/{año}';
  DigitosDoc := 5;
  Documento := 'ORDEN DE COMPRA';
    cdDocSerie := TClientDataSet.Create(nil);
    CrearConjunto(cdDocSerie,'nuc_documentoserie',ProviderName,ccSelect);
    CargarDatosFiltrados(cdDocSerie,'idorganizacion,nombredocumento,activo',
                  [clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger,Documento,'si']);
    cdDocSerie.Open;
    if cdDocSerie.RecordCount > 0 then
    begin
      cdDocSerie.First;
      CadenaDoc := cdDocSerie.FieldByName('serie').AsString;
      DigitosDoc := cdDocSerie.FieldByName('digitos').AsInteger;
    end;
end;

procedure TfrmCotizadorCompara.FormShow(Sender: TObject);
var
  i,ii,subidx: Integer;
  rowidx,colidx: Integer;
  idSolicitud: Integer;
  cdSolDetalle: TClientDataSet;
  NameProvider: string;
  tmpLista: TStringList;
  cdCotDetalle: TClientDataSet;
  ListaArts: TStringList;
  color: TColor;
  cdOC: TClientDataSet;
  cdCot:TClientDataset;
begin

  cdCot:= TClientDataSet.Create(self);
  CrearConjunto(cdCot,'alm_cotizacion',ccCatalog);
  CargarDatosFiltrados(cdCot,'idcotizacion',[-9]);
//  CargarDatosFiltrados(cdCot,'idcotizacion',[TCotizacion(Cotizaciones[i]).idCotizacion]);
  cdCot.Open;

  grdCotizador.AddBalloon(2,2,'Title A','Cell 2,2 is here', biError);
  grdCotizador.AddBalloon(3,3,'Title B','Cell 3,3 is here', biWarning);

  cdCotizaciones := TList.Create;
  grdCotizador.ColCount := FIXED_COLS + Cotizaciones.Count * 3;
  grdCotizador.MergeCells(0,0,5,1);
  grdCotizador.MergeCells(5,0,1,2);
  grdCotizador.Cells[2,1] := 'Articulo';
  grdCotizador.Cells[4,1] := 'Unidad';
  grdCotizador.Cells[3,1] := 'Cantidad';
  grdCotizador.Cells[5,0] := 'Fecha requerida';
  grdCotizador.ColWidths[0] := 10;
  grdCotizador.ColWidths[1] := 0;
  grdCotizador.ColWidths[2] := 300;
  grdCotizador.ColWidths[3] := 55;
  grdCotizador.ColWidths[4] := 75;
  grdCotizador.ColWidths[5] := 75;
  grdCotizador.CellProperties[2,0].Alignment := taCenter;
  grdCotizador.CellProperties[3,0].Alignment := taCenter;
  grdCotizador.CellProperties[4,0].Alignment := taCenter;
  grdCotizador.CellProperties[5,0].Alignment := taCenter;
  // dejar una columna vacia como separador, solo hacerla estrecha
  grdCotizador.ColWidths[6] := 3;


  for i := 0 to Cotizaciones.Count - 1 do
  begin
    subidx := i*3;
    grdCotizador.MergeCells(FIXED_COLS + subidx, 0, 3, 1);
    grdCotizador.Cells[FIXED_COLS + subidx, 0] := TCotizacion(Cotizaciones[i]).NombreProveedor;
    grdCotizador.Cells[FIXED_COLS + subidx, 1] := 'Cantidad';
    grdCotizador.CellProperties[FIXED_COLS + subidx,0].Alignment := taCenter;
    Inc(subidx);
    grdCotizador.Cells[FIXED_COLS + subidx, 1] := 'Costo';
    grdCotizador.ColWidths[FIXED_COLS + subidx] := 100;
    grdCotizador.CellProperties[FIXED_COLS + subidx,0].Alignment := taCenter;
    Inc(subidx);
    grdCotizador.Cells[FIXED_COLS + subidx, 1] := 'T. Entrega';
    grdCotizador.ColWidths[FIXED_COLS + subidx] := 120;
    grdCotizador.CellProperties[FIXED_COLS + subidx,0].Alignment := taCenter;

    // Crear los dataset para cada cotizacion
    cdCotDetalle := TClientDataSet.Create(nil);
    CrearConjunto(cdCotDetalle,'alm_cotizaciondetalle',NameProvider,ccUpdate);
    CargarDatosFiltrados(cdCotDetalle,'idcotizacion',[TCotizacion(Cotizaciones[i]).idCotizacion]);
    cdCotDetalle.Open;
    cdCotizaciones.Add(cdCotDetalle);
  end;

  // Hacer un concentrado de las partidas
  tmpLista := TStringList.Create;
  ListaArts := TStringList.Create;
  rowidx := FIXED_ROWS;
  //grdCotizador.FloatFormat := '%.4f';
  for i := 0 to Solicitudes.Count - 1 do
  begin
    idSolicitud := StrToInt(Solicitudes[i]);
    cdSolDetalle := TClientDataSet.Create(nil);
    CrearConjunto(cdSolDetalle,'alm_solicituddetalle',NameProvider,ccSelect);
    CargarDatosFiltrados(cdSolDetalle,'idSolicitud',[idsolicitud]);
    cdSolDetalle.Open;
    cdSolDetalle.First;
    while not cdSolDetalle.eof do
    begin
      if not tmpLista.Find(cdSolDetalle.FieldByName('idarticulo').AsString, ii) then
      begin
        tmpLista.Add(cdSolDetalle.FieldByName('idarticulo').AsString);
        grdCotizador.AddRow;
        grdCotizador.Ints[1, rowidx] := cdSolDetalle.FieldByName('idarticulo').AsInteger;
        grdCotizador.FontSizes[2, rowidx] := FONT_SIZE;
        grdCotizador.CellProperties[2, rowidx].Alignment := taLeftJustify;
        grdCotizador.Cells[2, rowidx] := cdSolDetalle.FieldByName('tituloarticulo').AsString;
        grdCotizador.FontSizes[4, rowidx] := FONT_SIZE;
        grdCotizador.CellProperties[4, rowidx].Alignment := taLeftJustify;
        grdCotizador.Cells[4, rowidx] := cdSolDetalle.FieldByName('codigounidad').AsString;
        grdCotizador.FontSizes[3, rowidx] := FONT_SIZE;
        grdCotizador.CellProperties[3, rowidx].Alignment := taRightJustify;
        grdCotizador.Cells[3, rowidx] := FormatFloat('#,##0.00',cdSolDetalle.FieldByName('cantidadvalidada').AsFloat);
        grdCotizador.FontSizes[5, rowidx] := FONT_SIZE;
        grdCotizador.CellProperties[5, rowidx].Alignment := taRightJustify;
        grdCotizador.Cells[5, rowidx] := cdSolDetalle.FieldByName('fecharequerida').AsString;
        inc(rowidx);
        ListaArts.Add(cdSolDetalle.FieldByName('idarticulo').AsString);
      end;
      cdSolDetalle.Next;
    end;
    grdCotizador.RemoveRows(grdCotizador.RowCount - 1, 1);
    cdSolDetalle.Close;
    EliminarConjunto(cdSolDetalle.ProviderName);
    cdSolDetalle.Free;
  end;

  grdCotizador.FixedCols := FIXED_COLS;

  for i := 0 to Cotizaciones.Count - 1 do
  begin
    cdCotDetalle := TClientDataSet(cdCotizaciones[i]);
    cdCotDetalle.First;
    while not cdCotDetalle.eof do
    begin
      colidx := FIXED_COLS + 3*i;
      //ListaArts.Find(cdCotDetalle.FieldByName('idarticulo').AsString,ii);
      ii := ListaArts.IndexOf(cdCotDetalle.FieldByName('idarticulo').AsString);
      rowidx := FIXED_ROWS + ii;
      if cdCotDetalle.FieldByName('cantidadoc').AsFloat > 0 then
      begin
        // Checar si la cotización no tiene una OC enviada, de lo contrario, no permitir que se bloquee
        cdOC := TClientDataSet.Create(nil);
        CrearConjunto(cdOC,'alm_ordencompra',NameProvider,'LOCATE');
        CargarDatosFiltrados(cdOC,'idcotizacion,estado',[TCotizacion(Cotizaciones[i]).idCotizacion,'NC']);
        cdOC.Open;
        cdOC.First;

        grdCotizador.Cells[colidx,rowidx] := FormatFloat('#,##0.00',cdCotDetalle.FieldByName('cantidadoc').AsFloat);
        if (cdOC.RecordCount > 0) AND (cdOc.FieldByName('estado').AsString = 'enviado') then
        begin
          MarcarPartida(colidx,rowidx,tmPoner,clGreen,clGreen);
          TCotizacion(Cotizaciones[i]).Modificable := False;
        end
        else
          MarcarPartida(colidx,rowidx,tmPoner);


        cdOC.Close;
        EliminarConjunto(cdOC.ProviderName);
        cdOC.Free;
      end
      else
        grdCotizador.Cells[colidx,rowidx] := FormatFloat('#,##0.00',cdCotDetalle.FieldByName('cantidadcotizada').AsFloat);
      grdCotizador.CellProperties[colidx, rowidx].Alignment := taRightJustify;
      Inc(colidx);
     // if cdCotDetalle.FieldByName() then
      CargarDatosFiltrados(cdCot,'idcotizacion',[TCotizacion(Cotizaciones[i]).idCotizacion]);     //cod cpl
      cdCot.Refresh;
      if lowercase(cdcot.FieldByName('gravamen').AsString) = 'neto' then
        grdCotizador.Cells[colidx,rowidx] := FormatFloat('#,##0.00',cdCotDetalle.FieldByName('precio').AsFloat)
      else
        grdCotizador.Cells[colidx,rowidx] := FormatFloat('#,##0.00',cdCotDetalle.FieldByName('precio').AsFloat/(1+cdCotDetalle.FieldByName('tasa').AsFloat));

//      grdCotizador.Cells[colidx,rowidx]. :=cdCotDetalle.FieldByName('tasa').AsString;
      grdCotizador.CellProperties[colidx, rowidx].Alignment := taRightJustify;
      Inc(colidx);
      grdCotizador.Cells[colidx,rowidx] := cdCotDetalle.FieldByName('tiempoentrega').AsString;
      grdCotizador.CellProperties[colidx, rowidx].Alignment := taRightJustify;
      cdCotDetalle.Next;
    end;
    // Colorear todo el grupo
    colidx := FIXED_COLS + 3*i;
    for ii := FIXED_ROWS to grdCotizador.RowCount do
    begin
      if i mod 2 = 0 then
        color := RGB(250,250,180)
      else
        color := RGB(215,251,202);
      grdCotizador.Colors[colidx,ii] := color;
      grdCotizador.Colors[colidx+1,ii] := color;
      grdCotizador.Colors[colidx+2,ii] := color;
    end;
    grdCotizador.ColWidths[colidx+1] := 75;
    grdCotizador.ColWidths[colidx+2] := 70;
  end;
  EliminarConjunto(cdCot);

end;

procedure TfrmCotizadorCompara.grdCotizadorCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
Var
  FirstCol: Integer;
begin
  FirstCol := FIXED_COLS + 3 * ((ACol - FIXED_COLS) DIV 3);
  CanEdit := (ARow >= FIXED_ROWS) AND (ACol >= FIXED_COLS)
         AND (ACol = FirstCol) AND (TAdvStringGrid(sender).Floats[ACol+1,ARow] > 0);
end;

procedure TfrmCotizadorCompara.grdCotizadorCellValidate(Sender: TObject; ACol,
  ARow: Integer; var Value: string; var Valid: Boolean);
Var
  Validar: Boolean;
begin
  try
    validar := strtofloat(Value) > 0;
  except
    Validar := False;
  end;
  if not validar then
  begin
    grdCotizador.InvalidEntryIcon := ieError;
    grdCotizador.InvalidEntryTitle := 'Valor no valido';
    grdCotizador.InvalidEntryText := 'El valor debe de ser a cero';
    InteliDialog.ShowModal('AVISO','Valor no valido','El  valor debe de ser mayor a cero',
        mtError,[mbOK],0);
    Value := grdCotizador.OriginalCellValue;
    Valid := false;
  end;
end;

procedure TfrmCotizadorCompara.grdCotizadorDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
Var
  NumCot: Integer;
begin
  if (ARow >= FIXED_ROWS) and (ACol >= FIXED_COLS) and (grdCotizador.Cells[ACol,ARow]<>'') then
  begin
    NumCot := (ACol - FIXED_COLS) div 3;
    if TCotizacion(Cotizaciones[NumCot]).Modificable then
      MarcarPartida(ACol,ARow,tmInvertir);
  end;
end;

procedure TfrmCotizadorCompara.grdCotizadorGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
Var
  FirstCol: Integer;
  NumCot: Integer;
begin
  FirstCol := FIXED_COLS + 3 * ((ACol - FIXED_COLS) DIV 3);
  NumCot := (ACol - FIXED_COLS) div 3;
  if (ARow >= FIXED_ROWS) AND (ACol >= FIXED_COLS)
         AND (ACol = FirstCol) AND (TAdvStringGrid(sender).Floats[ACol+1,ARow] > 0)
         AND TCotizacion(Cotizaciones[NumCot]).Modificable then
    AEditor := edFloat
  else
    AEditor := edNone;
end;

procedure TfrmCotizadorCompara.MarcarPartida(ACol: Integer; ARow: Integer; Accion: TTipoMarca; Color1: TColor = clBlack; Color2: TColor = clRed);

  procedure Marcado(ACol,ARow: Integer; Color: TColor);
  Var
    ini: Integer;
  begin
    // Calcular cual es la primer celda del grupo para poder marcar todos juntos
    ini := FIXED_COLS + 3 * ((ACol - FIXED_COLS) DIV 3);

    grdCotizador.FontColors[ini,ARow] := Color;
    grdCotizador.FontColors[ini+1,ARow] := Color;
    grdCotizador.FontColors[ini+2,ARow] := Color;
    grdCotizador.FontStyles[ini,ARow] := grdCotizador.FontStyles[ACol,ARow] + [fsBold];
    grdCotizador.FontStyles[ini+1,ARow] := grdCotizador.FontStyles[ACol,ARow] + [fsBold];
    grdCotizador.FontStyles[ini+2,ARow] := grdCotizador.FontStyles[ACol,ARow] + [fsBold];
  end;

  procedure Desmarcado(ACol,ARow: Integer; Color: TColor);
  Var
    ini: Integer;
  begin
    // Calcular cual es la primer celda del grupo para poder marcar todos juntos
    ini := FIXED_COLS + 3 * ((ACol - FIXED_COLS) DIV 3);

    grdCotizador.FontColors[ini,ARow] := Color;
    grdCotizador.FontColors[ini+1,ARow] := Color;
    grdCotizador.FontColors[ini+2,ARow] := Color;
    grdCotizador.FontStyles[ini,ARow] := grdCotizador.FontStyles[ACol,ARow] - [fsBold];
    grdCotizador.FontStyles[ini+1,ARow] := grdCotizador.FontStyles[ACol,ARow] - [fsBold];
    grdCotizador.FontStyles[ini+2,ARow] := grdCotizador.FontStyles[ACol,ARow] - [fsBold];
  end;

begin
  case Accion of
    tmPoner: Marcado(ACol,ARow,Color2);
    tmQuitar: Desmarcado(ACol,ARow,Color1);
    tmInvertir: if grdCotizador.FontColors[ACol,ARow] = clRed then Desmarcado(ACol,ARow,clBlack) else Marcado(ACol,ARow,clRed);
  end;
end;

function TfrmCotizadorCompara.AnalizarRenglon(ARow: Integer): Integer;
var
  NumCots: integer;
  j: Integer;
  index: integer;
  hoy, fechaentrega: TDate;
  fecharequerida: TDate;
  tFecha: TDate;
  tPrecio,Precio,tPrecioEnFecha: single;
  Calificacion: array of integer;  // Arreglo para calificar
  PuntosFecha, PuntoMax: integer;
begin
  hoy := date();
  NumCots := Cotizaciones.Count;
  SetLength(Calificacion,NumCots);

  // inicializar el arreglo de calificaciones con las calificaciones directas
  // por proveedor
  for j := low(Calificacion) to High(Calificacion) do
    Calificacion[j] := TCotizacion(Cotizaciones[j]).Calificacion * 2;

  // Inicializar valores pivote con la primera cotizacion
  tPrecio := grdCotizador.Floats[FIXED_COLS+1,ARow];
  tPrecioEnFecha := -1;
  // Si el primer proveedor no cotiza, poner la fecha muy adelantada
  if tPrecio = 0 then
    tFecha := IncDay(hoy,1000)
  else
    tFecha := IncDay(hoy,grdCotizador.Ints[FIXED_COLS + 2,ARow]);


  fecharequerida := StrToDate(grdCotizador.Cells[5, ARow]);

  // Primero descartar los que no cumplen con las fechas de entrega
  // aprovechando el ciclo para obtener los valores menores
  for j := 0 to NumCots - 1 do
  begin
    index := FIXED_COLS + (3*j);
    // no tomar en cuenta las columnas que pertenecen a OC's ya enviadas
    if TCotizacion(Cotizaciones[j]).Modificable then
    begin
      fechaentrega := IncDay(hoy,grdCotizador.Ints[index+2,ARow]);
      Precio := grdCotizador.Floats[index+1,ARow];
      if (Precio > 0) Then
      begin
        // si en una columna con precio, tomar en cuenta
        if fechaentrega <= fecharequerida then
        begin
          inc(Calificacion[j],2);  // dar dos punto a los que cumplen en fecha
          // inicializar con el primer precio dentro del rango de fechas
          if (tPrecioEnFecha = -1) OR (Precio < tPrecioEnFecha) then
            tPrecioEnFecha := Precio
        end;

        if fechaentrega < tFecha then  // encontré una fecha menor
        begin
          tFecha := fechaentrega;
        end;

        // el OR lo agregué por que el cero no es un valor a tomar en cuenta en la variable tPrecio
        if ((Precio < tPrecio) OR (tPrecio <= 0) ) then  // encontré un precio menor diferente de cero
        begin
          tPrecio := Precio;
        end;
      end
      else  // si no tiene precio, poner si calificacion a cero y no tomar en cuenta
        Calificacion[j] := 0;
    end; // end for
  end;

  // Dar otra vuelta para calificar de acuerdo a los valores menores
  for j := 0 to NumCots - 1 do
  begin
    if TCotizacion(Cotizaciones[j]).Modificable then
    begin
      index := FIXED_COLS + (3*j);

      Precio := grdCotizador.Floats[index+1,ARow];
      // Solo calificar los que tienen precio
      if Precio > 0 then
      begin
        // si la fecha mínima es posterior a la requerida, asignar 3 puntos
        // debido a que si ninguno cumple en tiempo se le dá mayor prioridad al
        // más próximo
        if tFecha > FechaRequerida then
          PuntosFecha := 3
        else  // si no, solo se le dá un punto al más próximo
          PuntosFecha := 1;
        fechaentrega := IncDay(hoy,grdCotizador.Ints[index+2,ARow]);
        // si la fecha es la menor, darle los puntos correspondientes
        if FechaEntrega = tFecha then
          inc(Calificacion[j],PuntosFecha);
        // si el precio es el menor, darle dos puntos
        if ((tPrecio > 0) AND (Precio = tPrecio)) OR ((tPrecioEnFecha > 0) AND (Precio = tPrecioEnFecha)) then
          inc(Calificacion[j],2);
      end;
    end;
  end;

    PuntoMax := Calificacion[0];
    // Buscar la calificación mayor
    for j := 0 to NumCots - 1 do
    begin
      if Calificacion[j] > PuntoMax then  //encontré un número mayor
        PuntoMax := Calificacion[j];
    end;

  // Nuevamente dar una vuelta completa ya que más de una cólumna pudo}
  // haber obtenido el valor mayor
  for j := 0 to NumCots - 1 do
  begin
    if TCotizacion(Cotizaciones[j]).Modificable then
    begin
      index := FIXED_COLS + (3*j);
      if (Calificacion[j] = PuntoMax) AND (PuntoMax > 0) then
        MarcarPartida(index,ARow,tmPoner)
      else
        MarcarPartida(index,ARow,tmQuitar);
    end;
  end;

  Result := 0;
end;

procedure TfrmCotizadorCompara.btnGenerarClick(Sender: TObject);
Var
  i, j: Integer;
  ACol: Integer;
  idOC: Integer;
  idarticulo: Integer;
  idPartida: Integer;
  NumRegs: Integer;
  cdCotDetalle: TClientDataSet;
  cdOCDetalle: TClientDataSet;
  cdOC, cdOCSerie: TClientDataSet;
  NameProvider: string;
  Cotizacion: TCotizacion;
  dia,mes,anio: word;
  formatoSerie: String;
  nuevas, modificadas: TStringList;
  MensajeDetalle: string;
  cdTempCotizacion: TClientDataSet;
begin
  if InteliDialog.ShowModal('CONFIRMACIÓN',
          '¿Desea generar las Ordenes de compra correspondientes a los datos indicados?',
          'Si confirma, se generarán las ordenes de compra de acuerdo a las partidas que tenga marcadas.',
          mtConfirmation, [mbYes,mbNo],0) = mrYes   then
  begin
    idoc := 0;
    nuevas := TStringList.Create;
    modificadas := TStringList.Create;
    DecodeDate(date,anio,mes,dia);
    //formatoSerie := AnsiReplaceStr(CadenaDoc,'{año}',inttostr(anio));
    //formatoSerie := AnsiReplaceStr(FormatoSerie,'{consecutivo}','{consecutivo:' + inttostr(DigitosDoc) + '}');
    formatoSerie := GetSerie(CadenaDoc,anio,DigitosDoc);
    // para guardar, hay que crear el encabezado de la OC (para los nuevos)
    // Primero hay que guardar las cantidades en el detalle para determinar si
    // estos ya vienen de una OC, de lo contrario, generar el encabezado
        cdTempCotizacion := tclientdataset.Create(nil);
        CrearConjunto(cdTempCotizacion,'alm_cotizacion',ccCatalog);
    for i := 0 to Cotizaciones.Count - 1 do
    begin
      Cotizacion := TCotizacion(Cotizaciones[i]);
      if Cotizacion.Modificable Then
      begin
        ACol := FIXED_COLS + 3*i;
        cdCotDetalle := TClientDataSet(cdCotizaciones[i]);
        cdCotDetalle.OnReconcileError := dsReconcileError;
        NumRegs := 0; // Contar cuantos registros se van a procesar
        for j := FIXED_ROWS to grdCotizador.RowCount -1 do
        begin
            idarticulo := grdCotizador.Ints[1,j];
            if cdCotDetalle.Locate('idarticulo',idarticulo,[]) then
            begin
              // si al menos una de las cantidades trae un valor mayor a cero
              // significa que ya existe un encabezado
              cdCotDetalle.Edit;
              if grdCotizador.FontColors[ACol,j] = clRed then
              begin
                cdCotDetalle.FieldByName('cantidadoc').AsFloat := grdCotizador.Floats[ACol,j];
                Inc(NumRegs);
              end
              else
                if cdCotDetalle.FieldByName('cantidadoc').AsFloat > 0 then
                begin
                  cdCotDetalle.FieldValues['cantidadoc'] := NULL;
                  inc(NumRegs);
                end;
              cdCotDetalle.Post;
              cdCotDetalle.ApplyUpdates(-1);
            end;
        end;


        cdOC := TClientDataSet.Create(nil);
        cdOc.OnReconcileError := dsReconcileError;
        CrearConjunto(cdOC,'alm_ordencompra',NameProvider,ccUpdate);
        CargarDatosFiltrados(cdOC,'idcotizacion,idproveedor,estado',[cotizacion.idCotizacion,Cotizacion.idProveedor,'NC']);
        cdOC.Open;
//        CargarDatosFiltrados(cdTempCotizacion)

        idOC := -9;  // inicializarlo con un valor no valido para que en el caso de no generar nada tampoco traiga los detalles
        if (cdOC.RecordCount > 0) then
        begin
          modificadas.Add(' ' + cdOC.FieldByName('serie').AsString);
          idOC := cdOC.FieldByName('idoc').AsInteger;
          // si se quitaron los detalles, cancelar la OC
          if NumRegs = 0 then
          begin
            cdOC.Edit;
            cdOC.FieldByName('estado').AsString := 'cancelado';
            cdOC.Post;
            cdOC.ApplyUpdates(-9);
          end;
        end;
        if (NumRegs > 0) then
        begin
          CargarDatosFiltrados(cdTempCotizacion,'idcotizacion',[cotizacion.idCotizacion]);
          cdTempCotizacion.open;
          if (cdOC.RecordCount = 0) then
          begin
            cdOC.Append;
            cdOC.FieldByName('serie').AsString := formatoSerie;
            cdOC.FieldByName('consecutivo').AsInteger := 0;
            cdOC.FieldByName('idoc').AsInteger := 0;
            cdOC.FieldByName('comentarios').AsString := '';
          end
          else
            cdOC.Edit;
          cdOC.FieldByName('idcotizacion').AsInteger := cotizacion.idCotizacion;
          //cdOC.FieldByName('idorganizacion').AsInteger := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
          cdOC.FieldByName('idorganizacion').AsInteger := Cotizacion.idOrganizacion;
          cdOC.FieldByName('idproveedor').AsInteger := Cotizacion.idProveedor;
          cdOC.FieldByName('nombreprov').AsString := Cotizacion.NombreProveedor;
          cdOC.FieldByName('razonsocial').AsString := Cotizacion.RazonSocial;
          cdOC.FieldByName('idciudad').AsInteger := Cotizacion.idCiudad;
          cdOC.FieldByName('titulociudad').AsString := Cotizacion.TituloCiudad;
          cdOC.FieldByName('tituloestado').AsString := Cotizacion.TituloEstado;
          cdOC.FieldByName('titulopais').AsString := Cotizacion.TituloPais;
          cdOC.FieldByName('fecha').AsDateTime := date;


          cdOC.FieldByName('periodo').AsInteger := anio;

          cdOC.FieldByName('referencia').AsString := '';
          cdOC.FieldByName('idusuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
          cdOC.FieldByName('estado').AsString := 'activo';
          cdOC.FieldByName('firmaid').AsString := '';
          cdOC.FieldByName('firmatitulo').AsString := '';
          cdOC.FieldByName('firmanombre').AsString := '';
          cdOC.FieldByName('firmapuesto').AsString := '';
          cdOC.FieldByName('firmadepto').AsString := '';
          //datoos fijos para el reporte
          cdOC.FieldValues['nombreusuario']     := ClientModule1.cdUsuario.FieldValues['nombreusuario'];
          cdOC.FieldValues['cargousuario']      := ClientModule1.cdUsuario.FieldValues['titulocargo'];
          cdOC.FieldValues['facturado']         := cdTempCotizacion.FieldValues['facturado'];
          cdOC.FieldValues['domiciliofiscal']   := cdTempCotizacion.FieldValues['domiciliofiscal'];
          cdOC.FieldValues['rfcpropio']         := cdTempCotizacion.FieldValues['rfcpropio'];
          cdOC.FieldValues['telefonopropio']    := cdTempCotizacion.FieldValues['telefonopropio'];
          cdOC.FieldValues['codigoconvenio']    := cdTempCotizacion.FieldValues['codigoconvenio'];
          cdOC.FieldValues['tituloconvenio']    := cdTempCotizacion.FieldValues['tituloconvenio'];
          cdOC.FieldValues['tituloempresa']     := cdTempCotizacion.FieldValues['tituloempresa'];
          cdOC.FieldValues['nombrecontacto']    := cdTempCotizacion.FieldValues['contacto'];
          cdOC.FieldValues['cargocontacto']     := cdTempCotizacion.FieldValues['contactocargo'];
          cdOC.FieldValues['domiciliocontacto'] := cdTempCotizacion.FieldValues['domiciliocontacto'];
          cdOC.FieldValues['telefonocontacto']  := cdTempCotizacion.FieldValues['contactotelefono'];
          cdOC.FieldValues['condicionproveedor']:= cdTempCotizacion.FieldValues['comentarios'];
          cdOC.FieldValues['domicilioentrega']  := cdTempCotizacion.FieldValues['domiciliofiscal'];
          cdOC.FieldValues['gravamen']   := cdTempCotizacion.FieldValues['gravamen'];
          cdOC.FieldValues['referencia']   := cdTempCotizacion.FieldValues['referencia'];

          if cdoc.state = dsEdit then
            idOC := cdOC.FieldByName('idoc').AsInteger;
          cdTempCotizacion.close;

          cdOC.Post;
          cdOC.ApplyUpdates(-1);
          if idOC < 0 then
           idOC := UltimoId;
          // leer el serie que se le asignó al documento
          cdOCSerie := TClientDataSet.Create(nil);
          CrearConjunto(cdOCSerie,'alm_ordencompra',NameProvider,ccSelect);
          CargarDatosFiltrados(cdOCSerie,'idoc',[idOC]);
          cdOCSerie.Open;
          cdOCSerie.First;
          nuevas.Add(' ' + cdOCSerie.FieldByName('serie').AsString);
          cdOCSerie.Close;
          EliminarConjunto(cdOCSerie.ProviderName);
          cdOCSerie.Free;
        end;

        // Checar si se canceló el documento o no se creo encabezado, no tiene caso procesar el detalle
        if (cdOC.RecordCount = 1) and (cdOC.FieldByName('estado').AsString <> 'cancelado') then
        begin
          // Crear los detalles de la orden de compra
          cdOCDetalle := TClientDataSet.Create(nil);
          cdOcDetalle.OnReconcileError := dsReconcileError;
          CrearConjunto(cdOCDetalle,'alm_ordencompradetalle',NameProvider,ccUpdate);
          CargarDatosFiltrados(cdOCDetalle,'idoc',[idOC]);
          cdOCDetalle.Open;
          cdOCDetalle.First;
          while not cdOCDetalle.eof do
          begin
            cdOCDetalle.Delete;
            cdOCDetalle.ApplyUpdates(-9);
            cdOCDetalle.First;
          end;

          idPartida := 1;
          cdCotDetalle.First;
          while not cdCotDetalle.eof do
          begin
            if cdCotDetalle.FieldByName('cantidadoc').AsFloat > 0 then
            begin
              cdOCDetalle.Append;
              cdOCDetalle.FieldByName('idoc').AsInteger := idOC;
              cdOCDetalle.FieldByName('idocdetalle').AsInteger := 0;
              cdOCDetalle.FieldByName('idcotizaciondetalle').AsInteger := cdCotDetalle.FieldByName('idcotizaciondetalle').AsInteger;
              cdOCDetalle.FieldByName('idpartida').AsInteger := idPartida;
              cdOCDetalle.FieldByName('idarticulo').AsInteger := cdCotDetalle.FieldByName('idarticulo').AsInteger;
              cdOCDetalle.FieldByName('codigoarticulo').AsString := cdCotDetalle.FieldByName('codigoarticulo').AsString;
              cdOCDetalle.FieldByName('tituloarticulo').AsString := cdCotDetalle.FieldByName('tituloarticulo').AsString;
              cdOCDetalle.FieldByName('codigounidad').AsString := cdCotDetalle.FieldByName('codigounidad').AsString;
              cdOCDetalle.FieldByName('titulodisciplina').AsString := cdCotDetalle.FieldByName('titulodisciplina').AsString;
              cdOCDetalle.FieldByName('cantidad').AsFloat := cdCotDetalle.FieldByName('cantidadoc').AsFloat;
              cdOCDetalle.FieldByName('precio').AsFloat := cdCotDetalle.FieldByName('precio').AsFloat;
              cdOCDetalle.FieldByName('costo').AsFloat := cdCotDetalle.FieldByName('cantidadoc').AsFloat * cdCotDetalle.FieldByName('precio').AsFloat;
              cdOCDetalle.FieldByName('idimpuesto').AsInteger := cdCotDetalle.FieldByName('idimpuesto').AsInteger;
              cdOCDetalle.FieldByName('codigoimpuesto').AsString := cdCotDetalle.FieldByName('codigoimpuesto').AsString;
              cdOCDetalle.FieldByName('tasa').AsFloat := cdCotDetalle.FieldByName('tasa').AsFloat;
              cdOCDetalle.FieldByName('tiempoentrega').AsInteger := cdCotDetalle.FieldByName('tiempoentrega').AsInteger;
              cdOCDetalle.FieldByName('fecharequerida').AsDateTime := cdCotDetalle.FieldByName('fecharequerida').AsDateTime;
              cdOCDetalle.FieldByName('observaciones').AsString := cdCotDetalle.FieldByName('observaciones').AsString;
              cdOCDetalle.FieldByName('descripcionarticulo').AsString := cdCotDetalle.FieldByName('descripcionarticulo').AsString;
              cdOCDetalle.Post;
              cdOCDetalle.ApplyUpdates(-9);
              inc(idPartida);
            end;
            cdCotDetalle.Next;
          end;
          cdOCDetalle.Close;
          EliminarConjunto(cdOCDetalle.ProviderName);
          cdOCDetalle.Free;
        end;

        cdOC.Close;
        EliminarConjunto(cdOC.ProviderName);
        cdOC.Free;
      end;
    end;
    EliminarConjunto(cdTempCotizacion);
    if nuevas.Count > 0 then
      MensajeDetalle := 'Se crearon las siguientes ordenes de compra:' + #10 +
          '   ' + nuevas.DelimitedText + #10
    else
      MensajeDetalle := '';
    if modificadas.Count > 0 then
      MensajeDetalle := MensajeDetalle + 'Se modificaron las siguientes ordenes de compra:' + #10 +
          '   ' + modificadas.DelimitedText;

    nuevas.Free;
    modificadas.Free;
    InteliDialog.ShowModal('INFORMACIÓN','La información se ha guardado correctamente',
            MensajeDetalle,
            mtInformation,[mbOK],0);
    close;
  end;

end;

procedure TfrmCotizadorCompara.dsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
   ShowMessage(e.Message);
end;

end.
