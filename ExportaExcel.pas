unit ExportaExcel;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ExtCtrls,
  Dialogs, StdCtrls, ComObj, DB, DBClient, NxCustomGridControl, NxCustomGrid, NxDBGrid, ComCtrls, cxGridDBTableView,cxCheckListBox;

  Function ExportarExcel(Datos,DatoImagen: TclientDataset;DBGrid: TNextDbGrid;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
  Function ExportarExcelDX(Datos,DatoImagen: TclientDataset;DBGrid: TcxGridDBTableView;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
  Function CadenaEntero (Cadena: String): Integer;
  function LetraColumna (x:integer):string;
  function ColumnaNombre(Numero:Integer):string;
type
  TBorderWeight = (bwHairline,bwMedium,bwThick,bwThin);
  TBorderLineStyle = (blContinuous, blDash, blDashDot, blDashDotDot,
                      blDot, blDouble, blSlantDashDot, blLine, blNone);

const
  //borde
  xlCenter = -4108;
  xlRight = -4152;
  xlTop = -4160;

  //alineaciones  horizontal
  xlBottom =-4107;
  xlDiagonalDown = 5;
  xlDiagonalUp = 6;
  xlNone = -4142;
  xlContext = -5002;
  xlEdgeBottom = 9;
  xlEdgeLeft = 7;
  xlEdgeTop = 8;
  xlEdgeRight = 10;
  xlInsideVertical = 11;
  xlInsideHorizontal = 12;

  //--------- Colores en Fondo de Celdas -------------------------------------
  xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
  xl_CL_AzulCielo = $00000022; // (33) Azul Cielo
  xl_CL_Turq      = $00000008; // ( 8) Truquesa
  xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
  xl_CL_Rojo      = $00000003; // ( 3) Rojo
  xl_CL_Gris      = $00000010;
  xl_CL_GrisLight = $0000000f;

   //hoja
   xlWBATWorksheet = -4167;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;

   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;

implementation

Function ExportarExcelDX(Datos,DatoImagen: TclientDataset;DBGrid: TcxGridDBTableView;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
var
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  TempPath: String;
  LogoFile: String;

begin
  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  Try
    Progress.Position := 0;
    Panel.Visible := True;
  //lblprogress.Visible := True;
    panel.repaint;
  //lblprogress.repaint;
    Progress.Max := Datos.RecordCount;

    // Se crea la aplicacion

    Excel := CreateOleObject('Excel.Application');

    // Mostrar el excel
    Excel.Visible:= False;

    // evitar que nos pregunte si deseamos sobreescribir el archivo

    Excel.DisplayAlerts := true;

    // agregar libro de trabajo

    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

    // tomar una referencia a la hoja creada

    WorkSheet := WorkBook.WorkSheets[1];

    WorkSheet.Name := TituloPestaña;


    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( DatoImagen.FieldByName('imagen1')).SaveToFile(LogoFile);

    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 50, 70);
    WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+2,ColIni+1] := Titulo;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+3,ColIni+1] := Subtitulo;
    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < DBGrid.ColumnCount do
    begin
      if DBGrid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := DBGrid.Columns[columna].Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := 12;//DBGrid.Columns[Columna].Styles.Header.Font.Size;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := DBGrid.Columns[Columna].Width*0.15;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
        Inc(ColMaxExc);

      end;
      Inc(Columna);
    end;

    ColMaxExc := ColMaxExc - 1;

    //estableciendo formato a los titulos de las columns
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_TurqLight ;

    RowIni := RowIni-6;

    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+3)].Mergecells := True;

    RowIni := RowIni+6;

    columna:= 1;
    ColMaxExc := 1;

    Linea := 2;
    Datos.first;
    while not Datos.Eof do
    begin
      columna := 1;
      ColMaxExc := 1;
      while columna-1 < DBGrid.ColumnCount do
      begin
        if DBGrid.Columns[columna-1].Visible then
        begin
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Datos.FieldByName(DBGrid.Columns[columna-1].DataBinding.FieldName).AsString;
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := 10;//DBGrid.Columns[columna-1].Styles.Header.Font.Size;
          //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
          inc(ColMaxExc);
        end;
        Inc(Columna);
      end;
      Datos.Next;
      Progress.Position := Linea;
      inc(linea);
    end;

    ColMaxExc := ColMaxExc-1;

    //estableciendo formato a las celdas
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Panel.Visible := False;

    Excel.Visible:= True;

    //guardar el archivo
   // WorkBook.SaveAs('archivo.xls');

   //cerrar el excel
  //  Excel.Quit;


  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
      Panel.Visible := False;
    end;

  End;
  DeleteFile(PChar(LogoFile));
end;



Function ExportarExcel(Datos,DatoImagen: TclientDataset;DBGrid: TNextDbGrid;TituloPestaña,encabezado,titulo,subtitulo: string;Progress:TProgressBar;Panel:TPanel):Boolean;
var
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  TempPath: String;
  LogoFile: String;

const
   //hoja
   xlWBATWorksheet = -4167;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo


   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;

begin
  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  Try
    Progress.Position := 0;
    Panel.Visible := True;
  //lblprogress.Visible := True;
    panel.repaint;
  //lblprogress.repaint;
    Progress.Max := Datos.RecordCount;

    // Se crea la aplicacion

    Excel := CreateOleObject('Excel.Application');

    // Mostrar el excel
    Excel.Visible:= False;

    // evitar que nos pregunte si deseamos sobreescribir el archivo

    Excel.DisplayAlerts := true;

    // agregar libro de trabajo

    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

    // tomar una referencia a la hoja creada

    WorkSheet := WorkBook.WorkSheets[1];

    WorkSheet.Name := TituloPestaña;


    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField( DatoImagen.FieldByName('imagen1')).SaveToFile(LogoFile);

    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 50, 70);
    WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+2,ColIni+1] := Titulo;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 12;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+3,ColIni+1] := Subtitulo;
    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 11;
    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < DBGrid.Columns.Count do
    begin
      if DBGrid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := DBGrid.Columns[columna].Header.Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.size := DBGrid.Columns[Columna].Font.Size;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.bold := true;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].ColumnWidth := DBGrid.Columns[Columna].Width*0.15;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].HorizontalAlignment := xlVAlignCenter;
        Inc(ColMaxExc);

      end;
      Inc(Columna);
    end;

    ColMaxExc := ColMaxExc - 1;

    //estableciendo formato a los titulos de las columns
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(ColIni-1))+inttostr(RowIni)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(Colini-1))+inttostr(RowIni)].Borders.Weight:= 3;
    worksheet.Range[LetraColumna(ColIni-1)+inttostr(RowIni), LetraColumna(ColMaxExc+(colini-1))+inttostr(RowIni)].Columns.Interior.ColorIndex := xl_CL_TurqLight ;

    RowIni := RowIni-6;

    //estableciendo formato del encabezado
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+2)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+2)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+3)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+3)].Mergecells := True;

    RowIni := RowIni+6;

    columna:= 1;
    ColMaxExc := 1;

    Linea := 2;
    Datos.first;
    while not Datos.Eof do
    begin
      columna := 1;
      ColMaxExc := 1;
      while columna-1 < DBGrid.Columns.Count do
      begin
        if DBGrid.Columns[columna-1].Visible then
        begin
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1] := Datos.FieldByName(DBGrid.Columns[columna-1].FieldName).AsString;
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].font.size := DBGrid.Columns[columna-1].Font.Size;
          //WorkSheet.Cells[linea, columna].ShrinkToFit := True; redimenciona el texto a la celda
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].WrapText := True;         //redimenciona celda al texto
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].VerticalAlignment := xlVAlignTop;
          WorkSheet.Cells[linea+RowIni-1, ColMaxExc+ColIni-1].HorizontalAlignment := xlHAlignLeft;
          inc(ColMaxExc);
        end;
        Inc(Columna);
      end;
      Datos.Next;
      Progress.Position := Linea;
      inc(linea);

    end;

    ColMaxExc := ColMaxExc-1;

    //estableciendo formato a las celdas
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.LineStyle := XlDouble;
    WorkSheet.Range[LetraColumna(ColIni-1)+inttostr(rowini+1), LetraColumna(ColMaxExc-1+(ColIni-1))+inttostr(linea-1+RowIni-1)].Borders.Weight:= 1;

    Panel.Visible := False;

    Excel.Visible:= True;

    //guardar el archivo
   // WorkBook.SaveAs('archivo.xls');

   //cerrar el excel
  //  Excel.Quit;


  except
    on e: Exception do
    begin
      ShowMessage('No se puede iniciar la exportación por lo siguiente: '+e.Message);
      Excel.Quit;
      Panel.Visible := False;
    end;

  End;
  DeleteFile(PChar(LogoFile));
end;

Function CadenaEntero (Cadena: String): Integer;
var entero : Integer;
begin
  Result := -1;
  Try
    entero := strToInt(Cadena);
    if entero >=0 then
      Result :=  entero;

  Except
    on e: exception do
      ShowMessage('Error el valor ingreso no es numérico');

  End;
end;

function LetraColumna (x:integer):string;
const letras = 'ABCDEFGHIJKLMNOPKRSTUVWXYZ';
begin
  Result := '';
  x := x+1;
  While x > 0 do begin
    Result := letras[1 + ((x - 1) Mod length(letras))] + Result;
    x := (x - 1) div length(letras);
  End;
end;

function ColumnaNombre(Numero:Integer):string;
var
    Valor,NumLetras:Integer;
    Cad:string;
begin
  NumLetras:=26;
  Cad:='';
  Valor:=Numero mod NumLetras;
  if Valor=0 then Valor:=26;
  if Numero-valor > 0 then Cad:=Char(64 + Trunc((Numero-Valor)/NumLetras));
  Cad:=cad + Char(64 + Valor);

  Result:=Cad;
end;

end.
