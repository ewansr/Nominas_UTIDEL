unit UTFrmCotizaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, PngSpeedButton, UTfrmDetalleDocs, NxDBColumns,
  NxColumns, AdvShapeButton, frxClass, frxDBSet, uIntelidialog, AdvEdit, Mask,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, AdvOfficeButtons,
  AdvCombo, JvComponentBase, JvEnterTab, JvMemoryDataset, ComCtrls,strutils,
  frxExportPDF, DBCtrls, Spin, AdvProgressBar, ComObj,
  JvComputerInfoEx;

type
  TFrmCotizaciones = class(TFrmCatalogoDoc)
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBNumberColumn1: TNxDBTextColumn;
    edtFiltroFolio: TAdvEdit;
    grpFiltroFecha: TGroupBox;
    chkFecha: TAdvOfficeCheckBox;
    dtpFiltroFechaIni: TAdvSmoothDatePicker;
    dtpFiltroFechaFin: TAdvSmoothDatePicker;
    cmbFiltroEstado: TAdvComboBox;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    BtnCapturar: TAdvShapeButton;
    frdsCotizacionDetalle: TfrxDBDataset;
    frdsCotizacion: TfrxDBDataset;
    dsCotizacionRp: TDataSource;
    cdCotizacionRp: TClientDataSet;
    cdCotizacionDetalleRp: TClientDataSet;
    frxReport1: TfrxReport;
    EditFReferencia: TAdvEdit;
    NxDBTextColumn4: TNxDBTextColumn;
    Enviarcotizacion1: TMenuItem;
    Exportarplantilla1: TMenuItem;
    Adjuntaryenviarcotizacion1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    CargarPudesdePlantilla1: TMenuItem;
    Seleccionarpudecotizacion1: TMenuItem;
    OpenDialog1: TOpenDialog;
    CdIvas: TClientDataSet;
    CdIvascodigoiva: TStringField;
    CdIvastasa: TFloatField;
    CdIvassuma: TFloatField;
    FrxIvas: TfrxDBDataset;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure frxReporteCotizacionDetalleGetValue(const VarName: string;
      var Value: Variant);
    procedure BtnCapturarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtFiltroFolioKeyPress(Sender: TObject; var Key: Char);
    procedure cmbFiltroEstadoChange(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure Enviarcotizacion1Click(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure Exportarplantilla1Click(Sender: TObject);
    procedure Adjuntaryenviarcotizacion1Click(Sender: TObject);
    procedure Seleccionarpudecotizacion1Click(Sender: TObject);
    procedure CargarPudesdePlantilla1Click(Sender: TObject);
  private
    { Private declarations }
    ModoEdicion: boolean;
    procedure RegenerarCotizacion(Encabezado, Partidas: Boolean);
    procedure Exportarplantilla(Autorrellenar,Enviar:Boolean);
    function LetraColumna(x: integer): string;
    function CompararPartidas(Cliente: tclientdataset; ApEx: Variant): Boolean;
    function CargarPartidas(Cliente: tclientdataset; ApEx: Variant): Boolean;
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
    PantallaReq: boolean;
  end;

var
  FrmCotizaciones: TFrmCotizaciones;

implementation

uses
  ClientModuleUnit1,Unit2,UTFrmCotizacionDetalle, UTFrmCotizacionCaptura,
  UTFrmPostCorreo, nuc_genericclasses;  //,UTfrmPrecargar
{$R *.dfm}

procedure TFrmCotizaciones.Adjuntaryenviarcotizacion1Click(Sender: TObject);
begin
  Exportarplantilla(False,True);
end;

procedure TFrmCotizaciones.BtnCapturarClick(Sender: TObject);
var
  CapturarCotizacion: TFrmCotizacionCaptura;
begin
  Try
    if CdDatos.State <> dsBrowse then
      raise InteligentWarning.CreateByCode(26, ['Cotización de materiales']);

    if DbGridPrincipal.RowCount < 1 Then
      raise InteligentWarning.CreateByCode(26, ['Cotización de materiales']);

    if DbGridPrincipal.SelectedCount > 1 Then
      raise InteligentWarning.CreateByCode(25, ['Cotización de materiales']);

    if not ClientModule1.LeePermisos(ModuloPantalla,'CAPTURAR') then
      Exit;

    CapturarCotizacion := TFrmCotizacionCaptura.Create(Self);
    try
      CapturarCotizacion.CdDatos := cdDatos;
      CapturarCotizacion.ShowModal;
      cdDatos.Refresh;
    finally
      FreeAndNil(CapturarCotizacion);
    end;
  Except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmCotizaciones.BtnDeleteClick(Sender: TObject);
var
  estadoErr: string;
begin
  if PantallaReq then
    ModoEdicion := false
  else
    ModoEdicion := cdDatos.FieldByName('estado').AsString = 'pendiente';
  inherited
end;

procedure TFrmCotizaciones.BtnEditClick(Sender: TObject);
var
  estadoErr: string;
begin
  ModoEdicion := true;
  inherited
end;

procedure TFrmCotizaciones.BtnExportClick(Sender: TObject);
begin
//  inherited;
  Exportarplantilla(True,False);
end;

procedure TFrmCotizaciones.Exportarplantilla(Autorrellenar,Enviar:Boolean);
var
  cdCotizacionDetalleTmp: TClientDataSet;
  Excel, WorkBook, WorkSheet: Variant;
  Columna, Linea,ColIni, RowIni, ColMaxExc: Integer;
  Colinicio, Rowinicio : string;
  tempPath,logofile:string;
  x,y,union,cel,col,inicio,fin,i:Integer;
  suma: real;
  Formulario : TFrmPostCorreo;
  NFO: TJvComputerInfoEx;

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
(*  try
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

    WorkSheet.Name := 'Cotizacion';

    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);

    //encabezado
    TempPath := GetEnvironmentVariable('TEMP');
    LogoFile := TempPath + '\Temp.bmp';
    TBlobField(  form2.cdImagen.FieldByName('imagen1')).SaveToFile(LogoFile);

    WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 60, 70);
    WorkSheet.Cells[RowIni+1,ColIni+1] := clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString;
    WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 9;
    WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    clientModule1.cdOrganizacion.Last;
    WorkSheet.Cells[RowIni+2,ColIni+1] := clientModule1.cdOrganizacion.FieldByName('domiciliofiscalorg').AsString;
    WorkSheet.Cells[RowIni+2,ColIni+1].font.size := 8;
    WorkSheet.Cells[RowIni+2,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+2,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    WorkSheet.Cells[RowIni+3,ColIni+1] := 'Ciudad del carmen campeche';
    WorkSheet.Cells[RowIni+3,colIni+1].font.size := 7;
    WorkSheet.Cells[RowIni+3,ColIni+1].WrapText := True;
    WorkSheet.Cells[RowIni+3,ColIni+1].HorizontalAlignment := xlHAlignCenter;

    RowIni := RowIni+6;

    y := 0;

    cdCotizacionDetalleTmp := TClientDataSet.Create(nil); //creando componente
    try
      if not CrearConjunto(cdCotizacionDetalleTmp,'alm_cotizaciondetalle',ccCatalog) then
        raise InteligentConnection.CreateByCode(5, ['detalle de cotización de materiales']);

      try
        if not CargarDatosFiltrados(cdCotizacionDetalleTmp,'idcotizacion',[cdDatos.FieldByName('idcotizacion').AsInteger]) then
          raise InteligentConnection.CreateByCode(6, ['detalle de cotizaciones',cdDatos.FieldByName('idcotizacion').AsString,'idcotizacion']);

        cdCotizacionDetalleTmp.Open;
        cdCotizacionDetalleTmp.First;

        x := 2;
        WorkSheet.Cells[RowIni, 1].ColumnWidth := 0.5;
        WorkSheet.Cells[RowIni, x] := 'Cantidad Solicitada';
        WorkSheet.Cells[RowIni, x].ColumnWidth := 6.86;
        WorkSheet.Cells[RowIni, x].RowHeight := 29.25;
        WorkSheet.Cells[RowIni, x].font.size := 11;
        WorkSheet.Cells[RowIni, x].WrapText := 1;

        WorkSheet.Cells[RowIni, x].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x].font.size := 8;
        WorkSheet.Cells[RowIni, x+1] := 'Descripción';
        WorkSheet.Cells[RowIni, x+1].ColumnWidth := 22.29;
        WorkSheet.Cells[RowIni, x+1].WrapText := True;
        WorkSheet.Cells[RowIni, x+1].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+1].font.size := 8;
        WorkSheet.Cells[RowIni, x+2] := 'Fecha requerida';
        WorkSheet.Cells[RowIni, x+2].ColumnWidth := 8.5;
        WorkSheet.Cells[RowIni, x+2].font.size := 8;
        WorkSheet.Cells[RowIni, x+2].WrapText := 1;
        WorkSheet.Cells[RowIni, x+2].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+3] := 'Referencia';
        WorkSheet.Cells[RowIni, x+3].ColumnWidth := 10.29;
        WorkSheet.Cells[RowIni, x+3].WrapText := True;
        WorkSheet.Cells[RowIni, x+3].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+3].font.size := 8;
        WorkSheet.Cells[RowIni, x+4] := 'Cantidad Cotizada';
        WorkSheet.Cells[RowIni, x+4].ColumnWidth := 6.14;
        WorkSheet.Cells[RowIni, x+4].font.size := 8;
        WorkSheet.Cells[RowIni, x+4].WrapText := 1;
        WorkSheet.Cells[RowIni, x+3].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+5] := 'PU M.N.';
        WorkSheet.Cells[RowIni, x+5].ColumnWidth := 8;
        WorkSheet.Cells[RowIni, x+5].font.size := 8;
        WorkSheet.Cells[RowIni, x+5].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+6] := 'Tiempo de entrega(días)';
        WorkSheet.Cells[RowIni, x+6].ColumnWidth := 9.43;
        WorkSheet.Cells[RowIni, x+6].font.size := 8;
        WorkSheet.Cells[RowIni, x+6].WrapText := 1;

        WorkSheet.Cells[RowIni, x+6].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+7] := 'Dias crédito';
        WorkSheet.Cells[RowIni, x+7].ColumnWidth := 5.14;
        WorkSheet.Cells[RowIni, x+7].font.size := 8;
        WorkSheet.Cells[RowIni, x+7].WrapText := 1;
        WorkSheet.Cells[RowIni, x+7].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+8] := 'Vigencia';
        WorkSheet.Cells[RowIni, x+8].font.size := 8;
        WorkSheet.Cells[RowIni, x+8].ColumnWidth := 7.71;
        WorkSheet.Cells[RowIni, x+8].HorizontalAlignment := xlHAlignCenter;
        WorkSheet.Cells[RowIni, x+9] := 'Observaciones';
        WorkSheet.Cells[RowIni, x+9].font.size := 8;
        WorkSheet.Cells[RowIni, x+9].ColumnWidth := 20.71;
        WorkSheet.Cells[RowIni, x+10].ColumnWidth := 10.71;
        WorkSheet.Cells[RowIni, x+9].HorizontalAlignment := xlHAlignCenter;
        Inc(rowini);
        WorkSheet.Cells[1, 1] := cdCotizacionDetalleTmp.FieldByName('idcotizacion').AsString;
        WorkSheet.Cells[1, 1].Font.Color := clWhite;
        while not cdCotizacionDetalleTmp.Eof do
        begin
          WorkSheet.Cells[RowIni, 1] := cdCotizacionDetalleTmp.FieldByName('idcotizaciondetalle').AsString;
          WorkSheet.Cells[RowIni, 1].Font.Color := clWhite;
          WorkSheet.Cells[RowIni, x] := formatfloat('#,##0.00##', cdCotizacionDetalleTmp.FieldByName('cantidad').asfloat);
          WorkSheet.Cells[RowIni, x].HorizontalAlignment := xlHAlignCenter;
          WorkSheet.Cells[RowIni, x].font.size := 8;
          WorkSheet.Cells[RowIni, x+1] := cdCotizacionDetalleTmp.FieldByName('descripcionarticulo').AsString;
          WorkSheet.Cells[RowIni, x+1].HorizontalAlignment := xlHAlignCenter;
          WorkSheet.Cells[RowIni, x+1].WrapText := 1;
          WorkSheet.Cells[RowIni, x+1].font.size := 8;
          WorkSheet.Cells[RowIni, x+2] := FormatDateTime('dd/mmm/yyyy', cdCotizacionDetalleTmp.FieldByName('fecharequerida').AsDateTime);
          WorkSheet.Cells[RowIni, x+2].HorizontalAlignment := xlHAlignCenter;
          WorkSheet.Cells[RowIni, x+2].font.size := 8;
          WorkSheet.Cells[RowIni, x+3] := cdCotizacionDetalleTmp.FieldByName('referenciad').AsString;
          WorkSheet.Cells[RowIni, x+3].HorizontalAlignment := xlHAlignCenter;
          WorkSheet.Cells[RowIni, x+3].WrapText := 1;
          WorkSheet.Cells[RowIni, x+3].font.size := 8;

          if Autorrellenar then
          begin
            WorkSheet.Cells[RowIni, x+4] := formatfloat('#,##0.00##',cdCotizacionDetalleTmp.FieldByName('cantidad').asfloat);
            WorkSheet.Cells[RowIni, x+4].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+4].font.size := 8;
            WorkSheet.Cells[RowIni, x+4].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+4].locked := False;
            WorkSheet.Cells[RowIni, x+5] := formatfloat('#,##0.00##',cdCotizacionDetalleTmp.FieldByName('costo').asfloat);
            WorkSheet.Cells[RowIni, x+5].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+5].font.size := 8;
            WorkSheet.Cells[RowIni, x+5].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+5].locked := False;
            WorkSheet.Cells[RowIni, x+6] := cdCotizacionDetalleTmp.FieldByName('tiempoentrega').AsString;
            WorkSheet.Cells[RowIni, x+6].font.size := 8;
            WorkSheet.Cells[RowIni, x+6].locked := False;
            WorkSheet.Cells[RowIni, x+6].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+7] := cdCotizacionDetalleTmp.FieldByName('credito').AsString;
            WorkSheet.Cells[RowIni, x+7].font.size := 8;
            WorkSheet.Cells[RowIni, x+7].locked := False;
            WorkSheet.Cells[RowIni, x+7].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+8] := FormatDateTime('dd/mmm/yyyy',cdCotizacionDetalleTmp.FieldByName('vigencia').AsDateTime);
            WorkSheet.Cells[RowIni, x+8].font.size := 8;
            WorkSheet.Cells[RowIni, x+8].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+8].locked := False;
            WorkSheet.Cells[RowIni, x+8].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+9] := cdCotizacionDetalleTmp.FieldByName('comentariosd').AsString;
            WorkSheet.Cells[RowIni, x+9].locked := False;
            WorkSheet.Cells[RowIni, x+9].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+9].font.size := 8;
            WorkSheet.Cells[RowIni, x+9].HorizontalAlignment := xlHAlignCenter;
          end
          else
          begin
            WorkSheet.Cells[RowIni, x+4].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+4].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+4].locked := False;
            WorkSheet.Cells[RowIni, x+5].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+5].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+5].locked := False;
            WorkSheet.Cells[RowIni, x+6].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+6].locked := False;
            WorkSheet.Cells[RowIni, x+7].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+7].locked := False;
            WorkSheet.Cells[RowIni, x+8].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+8].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+8].locked := False;
            WorkSheet.Cells[RowIni, x+9].HorizontalAlignment := xlHAlignCenter;
            WorkSheet.Cells[RowIni, x+9].ShrinkToFit:= True;
            WorkSheet.Cells[RowIni, x+9].locked := False;
          end;
          Inc(y);
          Inc(rowini);
          cdCotizacionDetalleTmp.Next;
        end;

        ColIni := 1;
        RowIni := rowini-y-6;

        //estableciendo formato del encabezado
        Excel.Range[LetraColumna(1)+inttostr(2)+':'+LetraColumna(10)+inttostr(2)].Mergecells := True;
        Excel.Range[LetraColumna(1)+inttostr(3)+':'+LetraColumna(10)+inttostr(3)].Mergecells := True;
        Excel.Range[LetraColumna(1)+inttostr(4)+':'+LetraColumna(10)+inttostr(4)].Mergecells := True;

        for i := 7 to 7 + cdCotizacionDetalleTmp.RecordCount do
        begin
          Excel.Range[LetraColumna(10)+inttostr(i)+':'+LetraColumna(10)+inttostr(i)].Mergecells := True;
        end;
        WorkSheet.Range[LetraColumna(1)+'7', LetraColumna(10)+inttostr(cdCotizacionDetalleTmp.RecordCount+7)].Borders.LineStyle := xlContinuous;

        //formateando celda excel
        WorkSheet.Range[LetraColumna(2)+'7', LetraColumna(2)+inttostr(cdCotizacionDetalleTmp.RecordCount+7)].NumberFormat{NumberFormatLocal} := 'dd/mmmm/yyyy';
        WorkSheet.Range[LetraColumna(6)+'7', LetraColumna(6)+inttostr(cdCotizacionDetalleTmp.RecordCount+7)].NumberFormat{NumberFormatLocal} := '$#,##0.00##';

        union := (ColMaxExc-5) div 3;
        col := 0;
        inicio:= 6;

        worksheet.Range[LetraColumna(1)+inttostr(7), LetraColumna(10)+inttostr(7)].Columns.Interior.ColorIndex := xl_CL_AzulCielo;
        worksheet.Range[LetraColumna(5)+inttostr(8), LetraColumna(10)+inttostr(cdCotizacionDetalleTmp.RecordCount+7)].Columns.Interior.ColorIndex := xl_CL_AmarLight;

        WorkSheet.PageSetup.Orientation := 2;//xlLandscape;

        WorkSheet.PageSetup.FitToPagesWide := 1;
        WorkSheet.PageSetup.FitToPagesTall := 1;

        //formato de pagina
        WorkSheet.PageSetup.Orientation := 2;//xlLandscape;
        workSheet.PageSetup.LeftHeader := '';
        workSheet.PageSetup.CenterHeader := '';
        workSheet.PageSetup.RightHeader := '';
        workSheet.PageSetup.LeftFooter := '';
        workSheet.PageSetup.CenterFooter := '';
        workSheet.PageSetup.RightFooter := '';
        workSheet.PageSetup.PrintHeadings := False;
        workSheet.PageSetup.PrintGridlines := False;
        workSheet.PageSetup.PrintQuality := 600;
        workSheet.PageSetup.CenterHorizontally := False;
        workSheet.PageSetup.CenterVertically := False ;
        workSheet.PageSetup.Draft := False;;
        workSheet.PageSetup.BlackAndWhite := False;
        workSheet.PageSetup.Zoom := False;
        workSheet.PageSetup.FitToPagesWide := 1;
        workSheet.PageSetup.FitToPagesTall := 1;
        workSheet.PageSetup.OddAndEvenPagesHeaderFooter := False;
        workSheet.PageSetup.DifferentFirstPageHeaderFooter := False;
        workSheet.PageSetup.ScaleWithDocHeaderFooter := True;
        workSheet.PageSetup.AlignMarginsHeaderFooter := True;
        workSheet.PageSetup.EvenPage.LeftHeader.Text := '';
        workSheet.PageSetup.EvenPage.CenterHeader.Text := '';
        workSheet.PageSetup.EvenPage.RightHeader.Text := '';
        workSheet.PageSetup.EvenPage.LeftFooter.Text := '';
        workSheet.PageSetup.EvenPage.CenterFooter.Text := '';
        workSheet.PageSetup.EvenPage.RightFooter.Text := '';
        workSheet.PageSetup.FirstPage.LeftHeader.Text := '';
        workSheet.PageSetup.FirstPage.CenterHeader.Text := '';
        workSheet.PageSetup.FirstPage.RightHeader.Text := '';
        workSheet.PageSetup.FirstPage.LeftFooter.Text := '';
        workSheet.PageSetup.FirstPage.CenterFooter.Text := '';
        workSheet.PageSetup.FirstPage.RightFooter.Text := '';


        //si es el administrador no se debe bloquear
        if Not (LowerCase(clientmodule1.cdUsuario.FieldByName('usuario').AsString) = 'admin') then
          Excel.ActiveSheet.Protect ('DrawingObjects:=True, Contents:=True, Scenarios:=True');

        Excel.DisplayAlerts := True;

        //si se envia
        if Enviar then
        Begin
          if not ClientModule1.LeePermisos(ModuloPantalla,'ENVIAREMAIL') then
            Exit;
          NFO:= TJvComputerInfoEx.Create(nil);
          try
            try
              try
                worksheet.SaveAs(NFO.Folders.Temp+'\'+cdCotizacionDetalleTmp.FieldByName('consecutivo').asstring+'.xls');
                Excel.Quit;
                Formulario := TFrmPostCorreo.Create(nil);
                try
                  Formulario.Servidor.Text := ClientModule1.cdUsuario.FieldByName('host').AsString;;
                  Formulario.Puerto.Value := ClientModule1.cdUsuario.FieldByName('puerto').AsInteger;
                  Formulario.De.text := ClientModule1.cdUsuario.FieldByName('correo').AsString;
                  Formulario.Para.Text := cdDatos.FieldByName('contactoemail').AsString;
                  Formulario.ChAddFile.Checked := True;
                  Formulario.Path.Text :=NFO.Folders.Temp+'\'+cdCotizacionDetalleTmp.FieldByName('consecutivo').asstring+'.xls';
                  Formulario.Showmodal;
                finally
                  FreeAndNil(Formulario);
                end;
              except
                Excel.Quit;
              end;
            finally
              DeleteFile(NFO.Folders.Temp+'\'+cdCotizacionDetalleTmp.FieldByName('consecutivo').asstring+'.xls');
            end;

          finally
            FreeAndNil(NFO);
          end;
        End
        else
          Excel.Visible:= True;

      finally
        EliminarConjunto(cdCotizacionDetalleTmp);
      end;

    finally
      FreeAndNil(cdCotizacionDetalleTmp)
    end;


  except
    on e: exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La exportacion no se pudo completar debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;*)
end;

procedure TFrmCotizaciones.Exportarplantilla1Click(Sender: TObject);
begin
  Exportarplantilla(False,False);
end;

function TFrmCotizaciones.LetraColumna (x:integer):string;
const letras = 'ABCDEFGHIJKLMNOPKRSTUVWXYZ';
begin
  Result := '';
  x := x+1;
  While x > 0 do begin
    Result := letras[1 + ((x - 1) Mod length(letras))] + Result;
    x := (x - 1) div length(letras);
  End;
end;

procedure TFrmCotizaciones.BtnPrintClick(Sender: TObject);
var
  nombres,puestos,letranum,codigoconvenio, tituloconvenio, titulo, sucursal: string;
  ListNombres, ListPuestos: TStringList;
  CantidadT,CantidadN,CantidadI,enteros,residuo:real;
  ivas: TStringList;
  i: integer;
begin
  Try
    if CdDatos.State <> dsBrowse then
      raise InteligentWarning.CreateByCode(26, ['Cotización de materiales']);

    if DbGridPrincipal.RowCount < 1 Then
      raise InteligentWarning.CreateByCode(26, ['Cotización de materiales']);

    if DbGridPrincipal.SelectedCount > 1 Then
      raise InteligentWarning.CreateByCode(25, ['Cotización de materiales']);

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

    if not CrearConjunto(cdCotizacionRp, 'alm_cotizacion', ccCatalog) then
        raise InteligentConnection.CreateByCode(5, ['Cotización de materiales']);

    try
      if not CargarDatosFiltrados(cdCotizacionRp, 'IdCotizacion', [cdDatos.FieldByName('IdCotizacion').AsInteger]) then
          raise InteligentConnection.CreateByCode(6, ['Cotización de materiales',cdDatos.FieldByName('IdCotizacion').AsString,'IdCotizacion']);

      cdCotizacionRp.Open;

      if not CrearConjunto(cdCotizacionDetalleRp, 'alm_cotizaciondetalle', ccCatalog) then
        raise InteligentConnection.CreateByCode(5, ['detalle de cotización de materiales']);
      try
        cdCotizacionDetalleRp.Open;

        if Not FileExists(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'COTIZACION.fr3') then
        begin
          Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                                 ExtractFilePath(Application.ExeName)+'\Reportes\' + 'COTIZACION.fr3' );
        end;

        frxReport1.PreviewOptions.MDIChild := False ;
        frxReport1.PreviewOptions.Modal := True ;
        frxReport1.PreviewOptions.ShowCaptions := False ;
        frxReport1.Previewoptions.ZoomMode := zmPageWidth ;
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'COTIZACION.fr3') ;

        ListNombres := TStringList.Create;
        ListPuestos := TStringList.Create;
        try
          //lOCALIZANDO FlRMANTES
          if (length(Trim(cdCotizacionRp.FieldByName('firmanombre').AsString)) > 0) and
             (length(Trim(cdCotizacionRP.FieldByName('firmapuesto').AsString)) > 0) then
          begin
            nombres := cdCotizacionRP.FieldByName('firmanombre').AsString;
            puestos := cdCotizacionRP.FieldByName('firmapuesto').AsString;

            nombres := AnsiReplaceStr( nombres, ',', '.' );// devuelve: nombre sin
            nombres := AnsiReplaceStr( nombres, '|', ',' );
            nombres := AnsiReplaceStr( nombres, '"', '' );
            nombres := AnsiReplaceStr( nombres, ' ', '_' );

            ListNombres.CommaText := nombres;

            puestos := AnsiReplaceStr( puestos, ',', '.' );// devuelve: nombre sin
            puestos := AnsiReplaceStr( puestos, '|', ',' );
            puestos := AnsiReplaceStr( puestos, '"', '' );
            puestos := AnsiReplaceStr( puestos, ' ', '_' );

            ListPuestos.CommaText := puestos;
          end;

          //nueva forma de enviar variables a fast report, declarando las variables en el fr3
          //primero cargar el subtitulo o nivel hijo
          if ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',cdDatos.FieldByName('idorganizacion').AsString,[]) then
          begin
            //si encuentra hijos entonces establecer titulo y subtitulo
            CodigoConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('codigoorganizacion').AsString;
            TituloConvenio := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;
            ClientModule1.CdEstructuraOrganizacion.Locate('idorganizacion',ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString,[]);
          end;
          Titulo   := ClientModule1.CdEstructuraOrganizacion.FieldByName('tituloorganizacion').AsString;
          Sucursal := ClientModule1.CdEstructuraOrganizacion.FieldByName('domicilioorg').AsString;

          frxReport1.Variables['organizacion'] := QuotedStr(Titulo);
          frxReport1.Variables['contrato'] := QuotedStr(CodigoConvenio);
          frxReport1.Variables['tituloorganizacion'] := QuotedStr(TituloConvenio);
          frxReport1.Variables['rfc'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('rfc').AsString);
          frxReport1.Variables['domiciliofiscalorg'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('domiciliofiscalorg').AsString);
          frxReport1.Variables['domicilioorg'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('domicilioorg').AsString);
          frxReport1.Variables['telefono1'] := QuotedStr(clientModule1.CdEstructuraOrganizacion.FieldByName('telefono1').AsString);
          frxReport1.Variables['domiciliofiscalorg'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('domiciliofiscalorg').AsString);
          frxReport1.Variables['domicilioorg'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('domicilioorg').AsString);

          ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
          clientModule1.cdOrganizacion.First;

          clientModule1.cdOrganizacion.Last;
          clientModule1.cdOrganizacion.Prior;

          frxReport1.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);

          ivas := TStringList.Create;
          try
            CantidadT := 0;
            CantidadN := 0;
            CantidadI := 0;
            cdCotizacionDetalleRp.First;

            while not cdCotizacionDetalleRp.Eof  do
            begin
              if Length(Trim(cdCotizacionDetalleRp.FieldByName('tasa').AsString)) > 0 then
                if ivas.IndexOf(cdCotizacionDetalleRp.FieldByName('tasa').AsString) < 0  then
                  ivas.Add(cdCotizacionDetalleRp.FieldByName('tasa').AsString);

              //si es cargado con iva primero calcular el totaln y luego el total iva
              if cdDatos.FieldByName('gravamen').AsString = 'IVA' then
              begin
                frxReport1.Variables['CnIva'] := 'True';
                CantidadN := CantidadN + cdCotizacionDetalleRp.FieldByName('costo').AsFloat / ((cdCotizacionDetalleRp.FieldByName('tasa').AsFloat)+1);
                CantidadI := CantidadI + (cdCotizacionDetalleRp.FieldByName('costo').AsFloat -  cdCotizacionDetalleRp.FieldByName('costo').AsFloat / ((cdCotizacionDetalleRp.FieldByName('tasa').AsFloat)+1));     //(cdCotizacionDetalleRp.FieldByName('costo').AsFloat*(cdCotizacionDetalleRp.FieldByName('tasa').AsFloat));
              end
              else
              begin
                CantidadN := CantidadN + cdCotizacionDetalleRp.FieldByName('costo').AsFloat;
                CantidadI := CantidadI + (cdCotizacionDetalleRp.FieldByName('costo').AsFloat*(cdCotizacionDetalleRp.FieldByName('tasa').AsFloat));
              end;
              cdCotizacionDetalleRp.Next;
            end;

            CantidadT := CantidadN + CantidadT + CantidadI;

            //añadiendo ivas a un dataset para presentarlo en el reporte
            CdIvas.CreateDataSet;
            CdIvas.Open;
            for i := 0 to ivas.Count-1 do
            begin
              //desglozando ivas
              cdCotizacionDetalleRp.Filtered := False;
              cdCotizacionDetalleRp.Filter := ' tasa = '+QuotedStr(ivas[i]);
              cdCotizacionDetalleRp.Filtered := True;
              cdCotizacionDetalleRp.First;
              while not cdCotizacionDetalleRp.Eof  do
              begin
                if CdIvas.Locate('tasa',ivas.Create[i],[]) then
                begin
                  CdIvas.Edit;
                  CdIvas.FieldByName('suma').AsFloat := CdIvas.FieldByName('suma').AsFloat + cdCotizacionDetalleRp.FieldByName('costo').AsFloat*cdCotizacionDetalleRp.FieldByName('tasa').AsFloat;
                  CdIvas.Post;
                end
                else
                begin
                  CdIvas.Append;
                  CdIvas.FieldByName('codigoiva').AsString := cdCotizacionDetalleRp.FieldByName('codigoimpuesto').AsString;
                  CdIvas.FieldByName('tasa').AsFloat := cdCotizacionDetalleRp.FieldByName('tasa').AsFloat;
                  CdIvas.FieldByName('suma').AsFloat := cdCotizacionDetalleRp.FieldByName('costo').AsFloat*cdCotizacionDetalleRp.FieldByName('tasa').AsFloat;
                  CdIvas.Post;
                end;
                cdCotizacionDetalleRp.Next;
              end;
            end;
            cdCotizacionDetalleRp.Filtered := False;

            try
              letranum := xNumerosToLletres(FloatToCurr(CantidadT));
            except
              letranum := 'Error al pasar a letras la cantidad';
            end;

            frxReport1.Variables['numerotexto'] := QuotedStr(letranum);
            frxReport1.Variables['cantidadn'] := QuotedStr(FloatToStr(cantidadn));
            frxReport1.Variables['cantidadi'] := QuotedStr(FloatToStr(cantidadi));
            frxReport1.Variables['cantidadt'] := QuotedStr(FloatToStr(cantidadt));
            if (ListNombres.Count > 0) and (ListPuestos.Count > 0) then
            begin
              frxReport1.Variables['solicitonombre'] := QuotedStr(AnsiReplaceStr( ListNombres[1], '_', ' ' ));
              frxReport1.Variables['solicitopuesto'] := QuotedStr(AnsiReplaceStr( ListPuestos[1], '_', ' ' ));
              if ListPuestos.Count > 1 then
              begin
                frxReport1.Variables['autorizonombre'] := QuotedStr(AnsiReplaceStr( ListNombres[0], '_', ' ' ));
                frxReport1.Variables['autorizopuesto'] := QuotedStr(AnsiReplaceStr( ListPuestos[0], '_', ' ' ));
              end;
            end
            else
            begin
              frxReport1.Variables['solicitonombre'] := QuotedStr(' ');
              frxReport1.Variables['solicitopuesto'] := QuotedStr(' ');
              frxReport1.Variables['autorizonombre'] := QuotedStr(' ');
              frxReport1.Variables['autorizopuesto'] := QuotedStr(' ');
            end;
            //ImprimeReporte('COTIZACION.fr3', frxReport1,False);
            frxReport1.ShowReport(False);
            CdIvas.Close;
          finally
            FreeAndNil(ivas);
          end;

        finally
          FreeAndNil(ListNombres);
          FreeAndNil(ListPuestos);
        end;

        cdCotizacionDetalleRp.Close;
      finally
        EliminarConjunto(cdCotizacionDetalleRp);
      end;

      cdCotizacionRp.Close;
    finally
      EliminarConjunto(cdCotizacionRp);
    end;

  Except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

  End;
end;

procedure TFrmCotizaciones.BtnSearchClick(Sender: TObject);
Var
  Cuantos: integer;
  Parametros: TParamFilter;
  estado: string;
begin
  inherited;
  try
    Parametros := TParamFilter.Create;
    try
      //Parametros.Add('idorganizacion', clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger);
      Parametros.Add('idorganizacion', cmbConvenio.KeyValue);
      if chkUsuario.Checked then
        Parametros.Add('idusuario', clientmodule1.cdUsuario.FieldByName('idusuario').AsInteger);
      if Trim(edtFiltroFolio.Text) <> '' then
        try
          Parametros.Add('consecutivo', strtoint(edtFiltroFolio.Text));
        except
          Parametros.Add('serie', '%' + Trim(edtFiltroFolio.Text) + '%');
        end;

      if Trim(EditFReferencia.Text) <> '' then
        Parametros.Add('referencia', '%' + Trim(editFReferencia.Text) + '%');


      if chkFecha.Checked then
      begin
        Parametros.Add('fechaini',ClientModule1.DatetoStrSql(dtpFiltroFechaIni.Date));
        Parametros.Add('fechafin',ClientModule1.DatetoStrSql(dtpFiltroFechaFin.Date));
      end;

      estado := Trim(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex]);
      if estado <> '' then
        Parametros.Add('estado', estado);

      if not CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos) then
        raise InteligentConnection.CreateByCode(6, ['cotizaciones',Parametros.Datos,Parametros.Campos]);

      cdDatos.Refresh;
    finally
      FreeAndNil(Parametros);
    end;
  except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCotizaciones.BtnSelectClick(Sender: TObject);
begin
  TRY
    if CdDatos.State <> dsBrowse then
      raise InteligentWarning.CreateByCode(26, ['Cotización de materiales']);

    if DbGridPrincipal.RowCount < 1 Then
      raise InteligentWarning.CreateByCode(26, ['Cotización de materiales']);

    if DbGridPrincipal.SelectedCount > 1 Then
      raise InteligentWarning.CreateByCode(25, ['Cotización de materiales']);

    if not ClientModule1.LeePermisos(ModuloPantalla,'REGENERAR') then
      Exit;

    RegenerarCotizacion(True,True);

  Except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
 {   on e:exception do
    begin
      InteliDialog.ShowModal('No se puede regenerar el documento por el siguiente motivo.',e.message, mtInformation, [mbOk], 0);
    end; }
  End;
end;

procedure TFrmCotizaciones.CargarPudesdePlantilla1Click(Sender: TObject);
var
  cdCotizacionDetalleTmp: TClientDataSet;
  Excel, WorkBook, WorkSheet: Variant;
  OpenDialog: TOpenDialog;

  Row: integer;
  idCot:string;

  cdUpt: TClientDataSet;

  continuar: Boolean;
const
   xlWBATWorksheet = -4167;
begin
  try
    try
      continuar := False;
      Excel := CreateOleObject('Excel.Application');

      // Mostrar el excel
      Excel.Visible:= False;

      // evitar que nos pregunte si deseamos sobreescribir el archivo
      Excel.DisplayAlerts := false;

      OpenDialog := TOpenDialog.Create(self);
      OpenDialog.Filter := 'Excel|*.xlsx;*.xls|Excel Inf 2007|*.xls|Excel sup 2007|*.xlsx'; ;

      if OpenDialog.Execute then
      begin
        WorkBook := Excel.Workbooks.Open(OpenDialog.FileName);
        WorkBook.WorkSheets['Cotizacion'].Activate;
        Idcot :=Excel.Cells[1,1].Value;
        if Idcot <> cddatos.fieldbyname('idcotizacion').asstring then
          raise inteligentexception.Create('El formato no corresponde a la cotización seleccionada, revise el formato porfavor');

        CdUpt := TclientDataset.Create(nil);
        try
          if not CrearConjunto(CdUpt,'alm_cotizaciondetalle',ccupdate) then
            raise InteligentConnection.CreateByCode(5, ['detalle de cotización de materiales']);

          try
            if not cargardatosFiltrados(CdUpt,'idcotizacion',[cddatos.FieldByName('idcotizacion').AsInteger]) then
              raise InteligentConnection.CreateByCode(6, ['cotizacion detalle',cddatos.FieldByName('idcotizacion').AsString,'idcotizacion']);

            CdUpt.Open;
            if not CompararPartidas(CdUpt,Excel) then
              raise inteligentexception.Create('Las partidas en el formato no corresponden a la cotización seleccionada, revise el formato porfavor');

            if not CargarPartidas(CdUpt,Excel) then
              raise inteligentexception.Create('Debido a un error al guardar las partidas o puede que no se pudieran cargar todas las partidas.');

            continuar := True;
            cdUpt.Close;
          finally
            EliminarConjunto(CdUpt);
          end;
        finally
          FreeAndNil(cdUpt);
        end;
       // Excel.Visible := true;

      end;
    finally
      Excel.Quit;
      if continuar then
      begin
        BtnRefresh.Click;
        if cdDatos.Locate('idcotizacion',idCot,[])then
          BtnCapturar.Click;
      end;
    end;
  except
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

function TFrmCotizaciones.CargarPartidas(Cliente: tclientdataset; ApEx: Variant): Boolean;
var
  Contador: integer;
  Total : integer;
  Resultado: Boolean;
  valor: string;
  fecha: TDate;

const
  Rowinicio = 8;
  Colinicio = 1;
begin
  try
    try
      total := Cliente.RecordCount;
      Cliente.Close;
      if not  CargarDatosFiltrados(Cliente,'idcotizaciondetalle',[-9]) then
        raise InteligentConnection.CreateByCode(6, ['cotización detalle','-9','idcotizaciondetalle']);

      Cliente.Open;

      Contador  := Rowinicio;
      valor := ApEx.Cells[Contador,Colinicio].Value;
      if valor = '' then
        raise Exception.Create('*');
        while valor <> '' do
        begin
          Cliente.Close;
          try
            if not CargarDatosFiltrados(Cliente,'idcotizaciondetalle',[valor]) then
              raise InteligentConnection.CreateByCode(6, ['cotizacón detalle',valor,'idcotizaciondetalle']);

            Cliente.open;
            if Cliente.RecordCount = 1 then
            begin
              Cliente.Edit;
              Cliente.FieldByName('cantidadcotizada').AsFloat:= ApEx.Cells[Contador,6].Value;
              Cliente.FieldByName('precio').AsFloat          := ApEx.Cells[Contador,7].Value;
              Cliente.FieldByName('costo').AsFloat           := Cliente.FieldByName('precio').AsFloat * Cliente.FieldByName('cantidadcotizada').AsFloat;
              Cliente.FieldByName('tiempoentrega').AsInteger := ApEx.Cells[Contador,8].Value;

              Cliente.FieldByName('credito').AsInteger       := ApEx.Cells[Contador,9].Value;
              try
                fecha := StrToDate(ApEx.Cells[Contador,10].Value);
              except
                fecha :=Now;
              end;
              Cliente.FieldByName('vigenciad').AsDateTime    := fecha;//ClientModule1.DatetoStrSql(fecha); //FormatDateTime('yyyy/mm/dd',ApEx.Cells[Contador,10].Value);
              Cliente.FieldByName('comentarios').AsString   := ApEx.Cells[Contador,11].Value;
              Cliente.Post;
              Cliente.ApplyUpdates(-1);
            end;

          finally
            Inc(Contador);
            valor := ApEx.Cells[Contador,Colinicio].Value;
          end;
        end;

      Resultado := Contador-Rowinicio = Total;
    except
    on Exception do
      Resultado := False;
    end;
  finally
    Result := Resultado;
  end;
end;

function TFrmCotizaciones.CompararPartidas(Cliente: tclientdataset; ApEx: Variant): Boolean;
var
  Contador: integer;
  Resultado: Boolean;
  valor: string;
const
  Rowinicio = 8;
  Colinicio = 1;
begin
  try
    Resultado := True;
    try
      Contador  := Rowinicio;
      valor := ApEx.Cells[Contador,Colinicio].Value;
      if valor = '' then
        raise Exception.Create('*');
        while valor <> '' do
        begin
          if not Cliente.Locate('idcotizaciondetalle',valor,[]) then
            Resultado := False;
          Inc(Contador);
          valor := ApEx.Cells[Contador,Colinicio].Value;
        end;
    except
    on Exception do
      Resultado := False;
    end;
  finally
    Result := Resultado;
  end;
end;

procedure TFrmCotizaciones.RegenerarCotizacion(Encabezado, Partidas: Boolean);
//por parametros decidios si se regenera solo la solicitud o tambien sus partidas
var
  CdEncabezado,CdDetalle, CdPartidas, CdAux: TClientDataSet;
  OldCursor: TCursor;
  Procesos: string;
begin
  try
    Procesos := '';
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if Encabezado then
      begin
        CdEncabezado := TClientDataSet.Create(self);
        if not CrearConjunto(CdEncabezado,'alm_cotizacion',ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['Cotización de materiales']);
       //   raise InteligentConnection.Create('Error al hacer la consulta del encabezado de cotización.');
        if not CargarDatosFiltrados(CdEncabezado,'idcotizacion',[cdDatos.FieldByName('idcotizacion').AsInteger]) then
          raise InteligentConnection.CreateByCode(6, ['cotizacion',cdDatos.FieldByName('idcotizacion').AsString,'idcotizacion']);

        CdEncabezado.Open;

        if CdEncabezado.RecordCount = 1 then
        begin
          CdEncabezado.Edit;
          CdEncabezado.FieldValues['tituloempresa']      := ClientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString;
          CdEncabezado.FieldValues['facturado']      := ClientModule1.cdOrganizacion.FieldByName('nombreorganizacion').AsString;
          CdEncabezado.FieldValues['domiciliofiscal']      := ClientModule1.cdOrganizacion.FieldByName('domiciliofiscalorg').AsString;
          CdEncabezado.FieldValues['rfcpropio']      := ClientModule1.cdOrganizacion.FieldByName('rfc').AsString;
          CdEncabezado.FieldValues['telefonopropio']      := ClientModule1.cdOrganizacion.FieldByName('telefono1').AsString;
          //solicitud
          try
            CdAux := TClientDataSet.Create(self);
            try
              if not CrearConjunto(CdAux,'alm_solicitud',ccCatalog) then
                raise InteligentConnection.CreateByCode(5, ['Solicitud']);
              try
                if not CargarDatosFiltrados(CdAux,'idsolicitud',[cdDatos.FieldByName('idsolicitud').AsInteger]) then
                  raise InteligentConnection.CreateByCode(6, ['solicitud',cdDatos.FieldByName('idsolicitud').AsString,'idsolicitud']);

                CdAux.Open;

                if CdAux.RecordCount <> 1 then
                  raise InteligentWarning.Create('No se encontro el registro de la solicitud.');

                CdEncabezado.FieldValues['referencia'] := CdAux.FieldValues['referencia'] ;
              finally
                CdAux.Close;
                EliminarConjunto(CdAux);
              end;

            finally
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;
          //proveedor
          try
            CdAux := TClientDataSet.Create(self);
            try
              if not CrearConjunto(CdAux,'alm_proveedor',ccCatalog) then
                raise InteligentWarning.Create('Error al Regenerar el proveedor.');
              try
                if not CargarDatosFiltrados(CdAux,'idproveedor',[cdDatos.FieldByName('idproveedor').AsInteger]) then
                  raise InteligentConnection.CreateByCode(6, ['proveedor',cdDatos.FieldByName('idproveedor').AsString,'idproveedor']);

                CdAux.Open;

                if CdAux.RecordCount <> 1 then
                  raise InteligentWarning.Create('No se encontro el registro de proveedor.');
                CdEncabezado.FieldValues['codigoproveedor'] := CdAux.FieldValues['codigoproveedor'] ;
                CdEncabezado.FieldValues['razonsocial'] := CdAux.FieldValues['razonsocial'] ;
                CdEncabezado.FieldValues['nombreprov'] := CdAux.FieldValues['nombre'] ;
                CdEncabezado.FieldValues['contacto'] := CdAux.FieldValues['contacto'] ;
                CdEncabezado.FieldValues['contactocargo'] := CdAux.FieldValues['contactopuesto'] ;
                CdEncabezado.FieldValues['domiciliocontacto'] := CdAux.FieldValues['domicilio'] ;
                CdEncabezado.FieldValues['contactotelefono'] := CdAux.FieldValues['contactotelefono'] ;
              finally
                CdAux.Close;
                EliminarConjunto(CdAux);
              end;
            finally
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;
          //ciudad
          try
            CdAux := TClientDataSet.Create(self);
            try
              if not CrearConjunto(CdAux,'nuc_ciudad',ccCatalog) then
                raise InteligentConnection.CreateByCode(5, ['ciudades']);

              try
                if not CargarDatosFiltrados(CdAux,'idciudad',[cdDatos.FieldByName('idciudad').AsInteger]) then
                  raise InteligentConnection.CreateByCode(6, ['ciudades',cdDatos.FieldByName('idciudad').AsString,'idciudad']);

                CdAux.Open;
                if CdAux.RecordCount <> 1 then
                  raise InteligentWarning.Create('No se encontro el registro de ciudad.');

                CdEncabezado.FieldValues['titulociudad'] := CdAux.FieldValues['titulociudad'] ;
                CdEncabezado.FieldValues['tituloestado'] := CdAux.FieldValues['tituloestado'] ;
                CdEncabezado.FieldValues['titulopais'] := CdAux.FieldValues['titulopais'];
              finally
                CdAux.Close;
                EliminarConjunto(CdAux);
              end;
            finally
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;
          //convenio
          try
            CdAux := TClientDataSet.Create(self);
            try
              if not CrearConjunto(CdAux,'nuc_organizacion',ccCatalog) then
                raise InteligentConnection.CreateByCode(5, ['estructura organizacional']);

              try
                if not CargarDatosFiltrados(CdAux,'idorganizacion',[cdDatos.FieldByName('idorganizacion').AsInteger]) then
                  raise InteligentConnection.CreateByCode(6, ['estructura organizacional',cdDatos.FieldByName('idorganizacion').AsString,'idorganizacion']);

                CdAux.Open;
                if CdAux.RecordCount <> 1 then
                  raise InteligentWarning.Create('No se encontro el registro de convenio.');

                CdEncabezado.FieldValues['codigoconvenio'] := CdAux.FieldValues['codigoorganizacion'] ;
                CdEncabezado.FieldValues['tituloconvenio'] := CdAux.FieldValues['tituloorganizacion'];
              finally
                CdAux.Close;
                EliminarConjunto(CdAux);
              end;
            finally
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;

          try
            CdAux := TClientDataSet.Create(self);
            try
              if not CrearConjunto(CdAux,'usuariopersonal',ccCatalog) then
                raise InteligentConnection.CreateByCode(5, ['Usuarios']);

              try
                if not CargarDatosFiltrados(CdAux,'idusuario',[cdDatos.FieldByName('idusuario').AsInteger]) then
                  raise InteligentConnection.CreateByCode(6, ['Usuarios',cdDatos.FieldByName('idusuario').AsString,'idusuario']);

                CdAux.Open;
                try
                  if CdAux.RecordCount <> 1 then
                    raise InteligentWarning.Create('No se encontro el usuario.');
                  CdEncabezado.FieldValues['nombrecrea'] := CdAux.FieldValues['usuarionombre'];
                  CdEncabezado.FieldValues['cargocrea']  := CdAux.FieldValues['usuariocargo'];
                  CdAux.Close;
                EXCEPT
                  on e:InteligentWarning do
                    CdAux.Close;
                end;
                Procesos := 'Encabezado de cotización';
              finally
                CdAux.Close;
                EliminarConjunto(CdAux);
              end;
            finally
              FreeAndNil(CdAux);
            end;
          except
            ;
          end;
        end;
        CdEncabezado.Post;
        CdEncabezado.ApplyUpdates(-1);
        CdEncabezado.Close;
        EliminarConjunto(CdEncabezado);
        FreeAndNil(CdEncabezado);
      end;
      if Partidas then
      begin
        CdDetalle := TClientDataSet.Create(self);
        try
          if not CrearConjunto(CdDetalle,'alm_cotizaciondetalle',ccCatalog) then
            raise InteligentConnection.CreateByCode(5, ['detalle de cotización']);
          try
            if not CargarDatosFiltrados(CdDetalle,'idcotizacion',[cdDatos.FieldByName('idcotizacion').AsInteger]) then
              raise InteligentConnection.CreateByCode(6, ['detalle de cotización',cdDatos.FieldByName('idcotizacion').AsString,'idcotizacion']);

            CdDetalle.Open;
            CdDetalle.First;

            CdPartidas := TClientDataSet.Create(Self);
            try
              if not CrearConjunto(CdPartidas,'alm_cotizaciondetalle',ccUpdate) then
                raise InteligentConnection.CreateByCode(5, ['detalle de cotización']);
              try
                if not CargarDatosFiltrados(CdPartidas,'idcotizaciondetalle',[-9]) then
                  raise InteligentConnection.CreateByCode(6, ['detalle de cotización','-9','idcotizaciondetalle']);

                CdPartidas.Open;

                while not CdDetalle.Eof do
                begin
                  try
                    if not CargarDatosFiltrados(CdPartidas,'idcotizaciondetalle',[CdDetalle.FieldByName('idcotizaciondetalle').AsInteger]) then
                      raise InteligentConnection.CreateByCode(6, ['detalle de cotización',CdDetalle.FieldByName('idcotizaciondetalle').AsString,'idcotizaciondetalle']);

                    CdPartidas.refresh;

                    if CdPartidas.RecordCount = 1 then
                    begin
                      CdPartidas.Edit;
                      try
                        CdAux := TClientDataSet.Create(self);
                        try

                          if not CrearConjunto(CdAux,'alm_articulo',ccCatalog) then
                            raise InteligentConnection.CreateByCode(5, ['artículos']);
                          try
                            if not CargarDatosFiltrados(CdAux,'idarticulo',[CdDetalle.FieldByName('idarticulo').AsString])then
                              raise InteligentConnection.CreateByCode(6, ['articulo',CdDetalle.FieldByName('idarticulo').AsString,'idarticulo']);

                            CdAux.Open;
                            if CdAux.RecordCount <> 1 then
                              raise InteligentWarning.Create('No se encontro el registro de la partida.');
                            CdPartidas.FieldValues['codigoarticulo'] := CdAux.FieldValues['codigoarticulo'] ;
                            CdPartidas.FieldValues['tituloarticulo'] := CdAux.FieldValues['tituloarticulo'] ;
                            CdPartidas.FieldValues['codigounidad'] := CdAux.FieldValues['codigounidad'] ;
                            CdPartidas.FieldValues['titulodisciplina'] := CdAux.FieldValues['titulodisciplina'] ;
                            CdPartidas.FieldValues['descripcionarticulo'] := CdAux.FieldValues['descripcion'] ;
                          finally
                            CdAux.Close;
                            EliminarConjunto(CdAux);
                          end;

                        finally
                          FreeAndNil(CdAux);
                        end;
                      except
                        ;
                      end;
                      //impuesto
                      try
                        CdAux := TClientDataSet.Create(self);
                        try
                          if not CrearConjunto(CdAux,'nuc_impuesto',ccCatalog) then
                            raise InteligentConnection.CreateByCode(5, ['impuestos']);
                          try
                            if not CargarDatosFiltrados(CdAux,'idimpuesto',[CdDetalle.FieldByName('idimpuesto').AsInteger]) then
                              raise InteligentConnection.CreateByCode(6, ['impuestos',CdDetalle.FieldByName('idimpuesto').asstring,'idimpuesto']);

                            CdAux.Open;
                            if CdAux.RecordCount <> 1 then
                              raise InteligentWarning.Create('No se encontro el registro del impuesto.');
                            CdPartidas.FieldValues['codigoimpuesto'] := CdAux.FieldValues['codigoimpuesto'] ;
                            CdPartidas.FieldValues['tasa'] := CdAux.FieldValues['tasa'] ;
                          finally
                            CdAux.Close;
                            EliminarConjunto(CdAux);
                          end;
                        finally
                          FreeAndNil(CdAux);
                        end;
                      except
                        ;
                      end;
                      //solicitud detalle
                      try
                        CdAux := TClientDataSet.Create(self);
                        try
                          if not CrearConjunto(CdAux,'alm_solicituddetalle',ccCatalog) then
                            raise InteligentConnection.CreateByCode(5, ['Detalle de solicitud']);
                          try
                            if not CargarDatosFiltrados(CdAux,'idsolicituddetalle',[CdDetalle.FieldByName('idsolicituddetalle').AsInteger])then
                              raise InteligentConnection.CreateByCode(6, ['detalle de solicitud',CdDetalle.FieldByName('idsolicituddetalle').AsString,'idsolicituddetalle']);

                            CdAux.Open;
                            if CdAux.RecordCount <> 1 then
                              raise InteligentWarning.Create('No se encontro el registro del la partida de la solicitud.');
                            CdPartidas.FieldValues['observaciones'] := CdAux.FieldValues['observaciones'] ;
                          finally
                            CdAux.Close;
                            EliminarConjunto(CdAux);
                          end;
                        finally
                          FreeAndNil(CdAux);
                        end;
                      except
                        ;
                      end;
                      CdPartidas.Post;
                      CdPartidas.ApplyUpdates(-1);
                    end;
                  finally
                    CdDetalle.Next;
                  end;
                end;
              finally
                CdPartidas.Close;
                EliminarConjunto(CdPartidas)
              end;
            finally
              FreeAndNil(CdPartidas);
            end;
          finally
            CdDetalle.Close;
            EliminarConjunto(CdDetalle);
          end;

        finally
          FreeAndNil(CdDetalle);
        end;
        Procesos := Procesos + ', Partidas de la cotización.';
      end;
      InteliDialog.ShowModal('Se regeneró correctamente lo siguiente.',Procesos, mtInformation, [mbOk], 0);
    except
      on e: InteligentConnection do
        InteliDialog.ShowModal('No se puede Regenerar el documento.',e.message, mtInformation, [mbOk], 0);
    end;

  finally
    Screen.Cursor := OldCursor;
  end;
end;

procedure TFrmCotizaciones.Seleccionarpudecotizacion1Click(Sender: TObject);
{var
  FrmPop: TfrmPrecargar;
  var x, idcotizacion: integer;   }
begin
 { FrmPop:= TfrmPrecargar.create(self);
  if CopiaEstructuraDataset(cddatos, Frmpop.CdCotizacion) then
  begin
    Frmpop.CdCotizacion.EmptyDataSet;
    with CdDatos do begin
      Frmpop.CdCotizacion.Append;
      for x := 0 to FieldCount-1 do
      begin
        Frmpop.CdCotizacion.fieldvalues[CdDatos.FieldDefs.Items[x].Name] := CdDatos.Fieldvalues[CdDatos.FieldDefs.Items[x].Name];
      end;
        Frmpop.CdCotizacion.Post;
     end;
    FrmPop.ShowModal;
    if FrmPop.Capturar then
    begin
      idcotizacion := cdDatos.FieldByName('idcotizacion').AsInteger;
      cdDatos.Refresh;
      if cdDatos.Locate('idcotizacion',idcotizacion,[]) then
        BtnCapturar.Click;
    end;
  end;
  FreeAndNil(FrmPop);    }
end;

procedure TFrmCotizaciones.cmbFiltroEstadoChange(Sender: TObject);
begin
  BtnSearch.Click;
end;

function TFrmCotizaciones.createPopUpDetalle: TFrmDetalleDocs;
Var
  tForm: TFrmCotizacionDetalle;
begin
  tForm := TFrmCotizacionDetalle.Create(nil);
  // Checar los estados del documento para permitir o no la edición
  tForm.ModoEdicion := ModoEdicion;
  result := tForm;
end;

procedure TFrmCotizaciones.edtFiltroFolioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BtnSearch.Click;
end;

procedure TFrmCotizaciones.Enviarcotizacion1Click(Sender: TObject);
var
  Formulario: TFrmPostCorreo;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'ENVIAREMAIL') then
    Exit;
  Formulario := TFrmPostCorreo.Create(nil);
  Formulario.Servidor.Text := ClientModule1.cdUsuario.FieldByName('host').AsString;;
  Formulario.Puerto.Value := ClientModule1.cdUsuario.FieldByName('puerto').AsInteger;
  Formulario.De.text := ClientModule1.cdUsuario.FieldByName('correo').AsString;
  Formulario.Para.Text := cdDatos.FieldByName('contactoemail').AsString;;
  Formulario.Showmodal;
  FreeAndNil(Formulario);
end;

procedure TFrmCotizaciones.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'COTIZACIONES';
  inherited;
end;

procedure TFrmCotizaciones.FormShow(Sender: TObject);
begin
  try
    inherited;
    dtpFiltroFechaIni.Date := Now;
    dtpFiltroFechaFin.Date := Now;
    self.AlineaBotones(2);

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
  end;
end;

procedure TFrmCotizaciones.frxReporteCotizacionDetalleGetValue(
  const VarName: string; var Value: Variant);
begin
  {
 organizacion
 sub
 contrato

}
end;

procedure TFrmCotizaciones.Inicializar;
begin
  keyField := 'idcotizacion';
  entityName := 'alm_cotizacion';
  codeField := 'serie';
end;

end.
