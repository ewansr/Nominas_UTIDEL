unit UTFrmFormatosExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxNavBarPainter, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxContainer,
  cxDateNavigator, ExtCtrls, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  Menus, StdCtrls, cxButtons, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ImgList, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxSplitter, DBClient, ClientModuleUnit1, UInteliDialog,
  cxLabel, cxRadioGroup, cxGroupBox, dxBarBuiltInMenu, cxPC, ComCtrls, dxCore,
  cxDateUtils, cxCalendar, DateUtils, dxBar, dxRibbon, ExportaExcel, rhh_genericclasses,
  Math, comObj, dxSkinsdxBarPainter, dxNavBarGroupItems, strUtils;

type
  TDetDes = class
    ColumnaInicial: Integer;
    FilaInicial   : Integer;
    Titulo         : String;
    Separador      : String;
    AgrupaRegPat   : String;
    AgrupaFormaPago: String;
  end;

  TTipoNomina = class
    IdTipoNomina: Integer;
    TituloNomina:  String;
    diasDescanso: Integer;
  end;

  TMisDesgloses = Class(TStringList)
  Public
    function AddObject(const S: string; AObject: TObject): Integer; override;
  published
    property Count;
  End;


  TFrmFormatosExcel = class(TForm)
    DxNavOpciones: TdxNavBar;
    NavGrpCalendario: TdxNavBarGroup;
    NavGrpFormatos: TdxNavBarGroup;
    DxNavControlCalendario: TdxNavBarGroupControl;
    cxbtnFiltrar: TcxButton;
    NavItemEmbarcados: TdxNavBarItem;
    NavItemNominaQuincenal: TdxNavBarItem;
    NavItemAsimilados: TdxNavBarItem;
    NavItemResumen: TdxNavBarItem;
    CxLookUpTipoNomina: TcxLookupComboBox;
    CxImageList16: TcxImageList;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    cxspltr1: TcxSplitter;
    cdTipoNomina: TClientDataSet;
    cdNomina: TClientDataSet;
    cdDatosExcel: TClientDataSet;
    dsNomina: TDataSource;
    dsTipoNomina: TDataSource;
    dsDatosExcel: TDataSource;
    CxGroupFiltros: TcxGroupBox;
    dxRbMes: TcxRadioButton;
    dxRbAnio: TcxRadioButton;
    dxRbRango: TcxRadioButton;
    CxPageFiltros: TcxPageControl;
    cxPageMes: TcxTabSheet;
    cxPageAnio: TcxTabSheet;
    cxPageRango: TcxTabSheet;
    CxDateNav1: TcxDateNavigator;
    cxDateInicio: TcxDateEdit;
    cxDateTermino: TcxDateEdit;
    cxlblDesde: TcxLabel;
    cxlblHasta: TcxLabel;
    cxlblAnio: TcxLabel;
    CxTextAnio: TcxTextEdit;
    pnl1: TPanel;
    CxGridNominas: TcxGrid;
    CxDbGridNominas: TcxGridDBTableView;
    CxColumnInicio: TcxGridDBColumn;
    CxColumnTermino: TcxGridDBColumn;
    CxColumnTitulo: TcxGridDBColumn;
    CxColumnAnio: TcxGridDBColumn;
    CxColumnTituloTipoNomina: TcxGridDBColumn;
    CxColumnTipoCalculo: TcxGridDBColumn;
    CxColumnPersonalNomina: TcxGridDBColumn;
    CxColumnPagado: TcxGridDBColumn;
    CxColumnNoPagado: TcxGridDBColumn;
    CxColumnNeto: TcxGridDBColumn;
    tcxColumnIdNomina: TcxGridDBColumn;
    CxColumnGuardia: TcxGridDBColumn;
    CxColumnMes: TcxGridDBColumn;
    cxLevel1: TcxGridLevel;
    pnl2: TPanel;
    cxlblTipoNomina: TcxLabel;
    dxPopup1: TdxRibbonPopupMenu;
    cdListaConceptos: TClientDataSet;
    mDeducciones: TClientDataSet;
    cdImss: TClientDataSet;
    mPercepciones: TClientDataSet;
    cdFirmantes: TClientDataSet;
    cdDatos: TClientDataSet;
    cxLabel1: TcxLabel;
    DxManager1: TdxBarManager;
    cdDesgloseGral: TClientDataSet;
    NavItemDesglosePago: TdxNavBarItem;
    dxSeparator1: TdxNavBarSeparator;
    cdCejas: TClientDataSet;
    dlgSaveExcel: TSaveDialog;
    cdDesgloses: TClientDataSet;
    cdFExcel: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxbtnFiltrarClick(Sender: TObject);
    procedure CxDateNav1SelectionChanged(Sender: TObject; const AStart,
      AFinish: TDateTime);
    procedure dxRbMesClick(Sender: TObject);
    procedure dxRbAnioClick(Sender: TObject);
    procedure dxRbRangoClick(Sender: TObject);
    procedure CxDateNav1PeriodChanged(Sender: TObject; const AStart,
      AFinish: TDateTime);
    procedure CxLookUpTipoNominaPropertiesEditValueChanged(Sender: TObject);
    procedure NavItemEmbarcadosClick(Sender: TObject);
    procedure NavItemNominaQuincenalClick(Sender: TObject);
    procedure NavItemAsimiladosClick(Sender: TObject);
    procedure NavItemResumenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NavItemDesglosePagoClick(Sender: TObject);
  private
    { Private declarations }
    ExApp, ExRango : Variant;
    rInicio, rFinal: Integer;
    CInicio, cFinal: Integer;
    MiListaEncabezado, CamposBD, UbicaFormula: TStringList;

    Procedure DesglosePagos;
    Procedure ExportarDesgloseGral;
    Procedure ImprimeReporte(Opcion: Integer);
    Procedure FormatoQuincenal;
    Procedure FormatoAsimilados;
    Procedure FormatoEmbarcados;
    Procedure FormatoResumen;
    Procedure cabeceraExcelCalculoNomina(Excel: Variant;
              TipoNomina, NombreNomina, fechaPagoNomina, nombreEmpresa: string);
    procedure colorCeldas(Excel: Variant; rango: string; TemaColor : Integer;
              TintAndShade : Double; conColor : Boolean);
    Procedure columnasDelCuerpo(Excel: Variant; IdNomina : Integer;
              var finPercepciones, inicioDeducciones, finDeducciones : Integer);
    Procedure combinarYCentrarDatosEncabezados(Excel: Variant;
              rangoColumnas: string);
    Procedure datosDelCuerpo(Excel: Variant; IdNomina,
              finPercepciones, inicioDeducciones, finDeducciones: Integer);
    Procedure formatoTextoPlano(Excel: Variant; rango,
              valor: string);
    Procedure SetFormula(Columna: Variant; Formula: String);
    Function obtenerPercepcionDeduccion(IdNomina, IdConcepto,
              IdPersonal: Integer): string;
    Procedure lineaInferior(Excel: Variant; rango: string);
    Procedure bordesCeldas(Excel: Variant; rangoCeldas: string;
              bordeGrueso: Boolean);
    Procedure fuenteLetras(Excel: Variant; rangoColumna,
              fuente: string; tamanoLetra: Integer; negritas: Boolean);
    Procedure alineacionTextoExcel(Excel: Variant; rango : string;
              alineacionHorizontal, alineacionVertical: Integer; negritas: Boolean);
    Procedure fuenteTexto(Excel: Variant; rango, fuente: string; tamano,
              ColorTexto: Integer; cursiva, negritas: Boolean);
    Procedure encabezadoAsimilados(Excel : Variant; NombreEmpresa, TituloCabecera,
              rangoFechasNomina, nombreOtraEmpresa, ciudad, serviciosPrestadosEn,
              Al: string);
    Procedure colorLetras(Excel: Variant; rango: string; colrTema,
              ThinAndShade: Integer; negritas: Boolean);
    Procedure AjustarTexto(Excel: Variant; rango: string);
    Procedure cuerpoReporteAsimilados(Excel: Variant;
              IdNomina: Integer);
    Procedure negritas(Excel: Variant; rango: string);
    Procedure Encabezados(Lista: TStringList);
    Procedure SetCellProperties(Rango: Variant; Fuente: String;
              Tamano, AlineacionH, AlineacionV: Integer; AjustarTexto: Boolean;
              OrdenLectura: Integer; Negrita: Boolean);
    Procedure SetAgrupadores;
    Procedure SetBorders(Rango: Variant; Grosor, Tipo: integer);
    Procedure setAsCurrency(Rango: Variant);
    Procedure cabeceraReporteResumen(Excel: Variant;
              IdNomina: Integer; nombreNomina : string);
    Procedure cuerpoReporteResumen(Excel: Variant;
              IdNomina: Integer);
    Procedure bordesSemiPunteados(Excel: Variant; rango: string);
    Procedure formatoConSignoDePesos(Excel: Variant;
              rango: string);
    Procedure estirarFila(Excel: Variant; rango: string; ancho : Integer);
    Procedure alinearTexto(Excel: Variant; rango, vertical,
              horizontal: string; ajustarTexto: Boolean);
    Procedure estirarColumnas(Excel: Variant; rango: string);
    Procedure filtros(Excel: Variant; rango: string);
    Procedure CrearNiveles(ColIni, FilaInicio: Integer;
              Titulo, AgrupaRegPat, AgrupaFormaPago, Separador: String);

    Procedure SetFirmantes(Var Excel: Variant; posX, PosY: Integer; CodigoReporte: String);

  public
    DetDesglose: TDetDes;
    DInicio, DTermino, Seleccionados: String;
    NivelDesglose  : TMisDesgloses;
    { Public declarations }
  end;

var
  FrmFormatosExcel: TFrmFormatosExcel;

implementation

{$R *.dfm}

procedure TFrmFormatosExcel.AjustarTexto(Excel: Variant; rango: string);
var
  ExcelRango : Variant;
begin
  //Ajusta el texto de una celda o de un rango de celdas, para que el texto se vea en varias lineas si es que no entra en la celda
  ExcelRango := Excel.Range[rango];
  ExcelRango.HorizontalAlignment := -4108;
  ExcelRango.VerticalAlignment   := -4108;
  ExcelRango.WrapText  :=  True;
  ExcelRango.Orientation  :=  0;
  ExcelRango.AddIndent := False;
  ExcelRango.IndentLevel :=   0;
  ExcelRango.ShrinkToFit  := False;
  ExcelRango.ReadingOrder := -5002;
  ExcelRango.MergeCells  :=  False;
end;

procedure TFrmFormatosExcel.alineacionTextoExcel(Excel: Variant; rango: string;
  alineacionHorizontal, alineacionVertical: Integer; negritas: Boolean);
var
  rangoExcel : Variant;
begin
  //Alinea el texto en el Excel, izquierda, centro, derecha, abajo, centro, arriba
  rangoExcel := Excel.Range[rango];
  rangoExcel.HorizontalAlignment := alineacionHorizontal;
  rangoExcel.VerticalAlignment   :=   alineacionVertical;
  rangoExcel.WrapText    := False;
  rangoExcel.Orientation :=     0;
  rangoExcel.AddIndent   := False;
  rangoExcel.IndentLevel :=     0;
  rangoExcel.ShrinkToFit := False;
  rangoExcel.ReadingOrder := -5002; //xlContext
  rangoExcel.MergeCells   := False;
  rangoExcel.Font.Bold := negritas;
end;

procedure TFrmFormatosExcel.alinearTexto(Excel: Variant; rango, vertical,
  horizontal: string; ajustarTexto: Boolean);
var
  rangoExcel : Variant;
begin
  //Alinea el texto
  //Valores aceptados vertical("arriba", "enmedio", "abajo"), horizontal("izquierda", "centro", "derecha")
  rangoExcel := Excel.Range[rango];

  if vertical = 'arriba' then
  begin
    rangoExcel.VerticalAlignment   := -4160;
  end else if vertical = 'enmedio' then
  begin
    rangoExcel.VerticalAlignment   := -4108;
  end else if vertical = 'bajo' then
  begin
    rangoExcel.VerticalAlignment   := -4107;
  end;

  if horizontal = 'izquierda' then
  begin
    rangoExcel.HorizontalAlignment := -4131;
  end else if horizontal = 'centro' then
  begin
    rangoExcel.HorizontalAlignment := -4108;
  end else if horizontal = 'derecha' then
  begin
    rangoExcel.HorizontalAlignment := -4152;
  end;

  if ajustarTexto then
  begin
    rangoExcel.VerticalAlignment   := -4108;
    rangoExcel.HorizontalAlignment := -4108;
    rangoExcel.WrapText            :=  True;
    rangoExcel.ReadingOrder        := -5002;
  end;

  rangoExcel.MergeCells      := False;
end;

procedure TFrmFormatosExcel.bordesCeldas(Excel: Variant; rangoCeldas: string;
  bordeGrueso: Boolean);
var
  rangoExcel : Variant;
begin
  //Pinta los bordes de un rango de Celdas
  if bordeGrueso then
  begin
    //Pintar el borde Grueso
    rangoExcel := Excel.Range[rangoCeldas];
    rangoExcel.Borders[xlDiagonalDown].LineStyle     :=       xlNone;
    rangoExcel.Borders[xlDiagonalUp].LineStyle       :=       xlNone;

    rangoExcel.Borders[xlEdgeLeft].LineStyle         := xlContinuous;
    rangoExcel.Borders[xlEdgeLeft].Weight            :=     xlMedium;

    rangoExcel.Borders[xlEdgeTop].LineStyle          := xlContinuous;
    rangoExcel.Borders[xlEdgeTop].Weight             :=     xlMedium;

    rangoExcel.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    rangoExcel.Borders[xlEdgeBottom].Weight          :=     xlMedium;

    rangoExcel.Borders[xlEdgeRight].LineStyle        := xlContinuous;
    rangoExcel.Borders[xlEdgeRight].Weight           :=     xlMedium;

    rangoExcel.Borders[xlInsideVertical].LineStyle   := xlContinuous;
    rangoExcel.Borders[xlInsideVertical].Weight      :=       xlThin;

    rangoExcel.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    rangoExcel.Borders[xlInsideHorizontal].Weight    :=       xlThin;
  end
  else
  begin
    //Pintar los bordes delgados
    rangoExcel := Excel.Range[rangoCeldas];
    rangoExcel.Borders[xlDiagonalDown].LineStyle :=       xlNone;
    rangoExcel.Borders[xlDiagonalUp].LineStyle   :=       xlNone;

    rangoExcel.Borders[xlEdgeLeft].LineStyle     := xlContinuous;
    rangoExcel.Borders[xlEdgeLeft].Weight        :=       xlThin;

    rangoExcel.Borders[xlEdgeRight].LineStyle    := xlContinuous;
    rangoExcel.Borders[xlEdgeRight].Weight       :=       xlThin;

    rangoExcel.Borders[xlEdgeBottom].LineStyle   := xlContinuous;
    rangoExcel.Borders[xlEdgeBottom].Weight      :=       xlThin;

    rangoExcel.Borders[xlEdgeTop].LineStyle      := xlContinuous;
    rangoExcel.Borders[xlEdgeTop].Weight         :=       xlThin;

    rangoExcel.Borders[xlInsideVertical].LineStyle := xlContinuous;
    rangoExcel.Borders[xlInsideVertical].Weight    :=       xlThin;

    rangoExcel.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    rangoExcel.Borders[xlInsideHorizontal].Weight    :=       xlThin;
  end;
end;

procedure TFrmFormatosExcel.bordesSemiPunteados(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  //Coloca bordes semipunteados en un rango de celdas
  rangoExcel := Excel.Range[rango];
  rangoExcel.Borders[5].LineStyle := -4142;
  rangoExcel.Borders[6].LineStyle := -4142;

  rangoExcel.Borders[7].Weight     := 1;
  rangoExcel.Borders[8].Weight     := 1;
  rangoExcel.Borders[9].Weight     := 1;
  rangoExcel.Borders[10].Weight    := 1;
  rangoExcel.Borders[11].LineStyle := -4142;
  rangoExcel.Borders[12].Weight    := 1;
end;

procedure TFrmFormatosExcel.cabeceraExcelCalculoNomina(Excel: Variant;
  TipoNomina, NombreNomina, fechaPagoNomina, nombreEmpresa: string);
begin
  //Imprime la cabecera del reporte del calculo de nomina(Tipo de Nomina, Prevision Social, Nombre de la nomina, fecha de Pago y Nombre de a empresa)
  try
    Excel.Range['A1:A1'].Value :=         TipoNomina;
    Excel.Range['A2:A2'].Value := 'PREVISION SOCIAL';
    Excel.Range['A3:A3'].Value :=       NombreNomina;
    Excel.Range['A4:A4'].Value :=    FechaPagoNomina;
    Excel.Range['A5:A5'].Value :=      nombreEmpresa;

    //Poner color amarillo de la celda A3 a la C4
    colorCeldas(Excel, 'A3:C4', 65535, 0, True);
    colorCeldas(Excel, 'A5:C5', clBlack, 0, True);
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFormatosExcel.cabeceraReporteResumen(Excel: Variant;
  IdNomina: Integer; nombreNomina: string);
begin
  //Imprime la cabecera del formato "Resumen"
  combinarYCentrarDatosEncabezados(Excel, 'H1:L1');
  Excel.Range['H1'].Value := nombreNomina;
  fuenteTexto(Excel, 'H1', 'Calibri', 9, 2, False, True);
end;

procedure TFrmFormatosExcel.colorCeldas(Excel: Variant; rango: string;
  TemaColor: Integer; TintAndShade: Double; conColor: Boolean);
var
  rangoExcel : Variant;
begin
  //Define el colo del rango de celdas para el archivo de excel
  rangoExcel := Excel.Range[rango];
  rangoExcel.Interior.Pattern             :=     1;
  rangoExcel.Interior.PatternColorIndex   := -4105;

  if conColor then
    rangoExcel.Interior.Color           := TemaColor
  else
    rangoExcel.Interior.ThemeColor      := TemaColor;

  rangoExcel.Interior.TintAndShade := TintAndShade;
  rangoExcel.Interior.PatternTintAndShade :=     0;
end;

procedure TFrmFormatosExcel.colorLetras(Excel: Variant; rango: string; colrTema,
  ThinAndShade: Integer; negritas: Boolean);
var
  ExcelRango : Variant;
begin
  //Pone color a las letras(texto)
  ExcelRango := Excel.Range[rango];
  ExcelRango.Font.Color := colrTema;
  ExcelRango.Font.TintAndShade := ThinAndShade;
  ExcelRango.Font.Bold := negritas;
end;

procedure TFrmFormatosExcel.columnasDelCuerpo(Excel: Variant; IdNomina: Integer;
  var finPercepciones, inicioDeducciones, finDeducciones: Integer);
const
  columnasDatosPersonales : array[1 .. 7] of string = ('A. PATERNO', 'A. MATERNO', 'NOMBRE', 'CUENTA',
                                                      'BANCO', 'DÍAS TRABAJADOS', 'SUELDO QUINCENAL');
var
  columna   :        Integer;
begin
  //Imprime las cabeceras del cuerpo con los datos que debera llevar el reporte(datos personales, percepcioes, deducciones, totales, etc).
  try
    try
      //Poner Color rosa encima de las cabeceras de los datos personales
      combinarYCentrarDatosEncabezados(Excel, 'A7:F7');
      colorCeldas(Excel, 'A7', 10, 0.799981688894314, False);

      //Colocar los datos personales del empleado
      for columna := 1 to 7 do
      begin
        Excel.Range[ColumnaNombre(columna) + '8'].Value := columnasDatosPersonales[columna];
        combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(columna) + '8:' + ColumnaNombre(columna) + '9');
      end;

      //Colocar las percepciones
      if Not CargarDatosFiltrados(cdListaConceptos, 'IdNomina', [Seleccionados]) then
        raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_listaconceptos_nomina']);

      if cdListaConceptos.Active then
        cdListaConceptos.Refresh
      else
        cdListaConceptos.Open;

      if cdListaConceptos.RecordCount > 0 then
      begin
        columna := 8;

        //Colocar las percepciones
        cdListaConceptos.First;
        while Not cdListaConceptos.Eof do
        begin
          if cdListaConceptos.FieldByName('Modo').AsString = 'PERCEPCION' then
          begin
            Excel.Range[ColumnaNombre(columna) + '9'].Value := cdListaConceptos.FieldByName('Titulo').AsString;
            columna := columna + 1;
          end;

          cdListaConceptos.Next;
        end;

        Excel.Range[ColumnaNombre(columna) + '8'].Value := 'TOTAL';
        Excel.Range[ColumnaNombre(columna) + '9'].Value := 'PERCEPCIONES';
        finPercepciones := columna - 1;

        columna     :=   columna + 1;

        inicioDeducciones := columna;

        //colocar las deducciones
        cdListaConceptos.First;
        while Not cdListaConceptos.Eof do
        begin
          if cdListaConceptos.FieldByName('Modo').AsString = 'DEDUCCION' then
          begin
            Excel.Range[ColumnaNombre(columna) + '9'].Value := cdListaConceptos.FieldByName('Titulo').AsString;
            columna := columna + 1;
          end;

          cdListaConceptos.Next;
        end;

        Excel.Range[ColumnaNombre(columna) + '8'].Value :=       'TOTAL';
        Excel.Range[ColumnaNombre(columna) + '9'].Value := 'DEDUCCIONES';
        finDeducciones := columna - 1;
        columna        := columna + 1;
        Excel.Range[ColumnaNombre(columna) + '8'].Value :=      'NETO A';
        Excel.Range[ColumnaNombre(columna) + '9'].Value :=       'PAGAR';

        combinarYCentrarDatosEncabezados(Excel, 'H8:' + ColumnaNombre(finPercepciones) + '8');
        Excel.Range['H8'].Value := 'PERCEPCIONES DEL PERIODO';

        combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(inicioDeducciones) + '8:' + ColumnaNombre(finDeducciones) + '8');
        Excel.Range[ColumnaNombre(inicioDeducciones) + '8'].Value := 'DESCUENTOS';
      end;
    finally

    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFormatosExcel.combinarYCentrarDatosEncabezados(Excel: Variant;
  rangoColumnas: string);
var
  rangoExcel : Variant;
begin
  //Combina y centra los datos del encabezado con los datos de la empresa
  rangoExcel   := Excel.Range[rangoColumnas];
  rangoExcel.HorizontalAlignment := xlCenter;
  rangoExcel.VerticalAlignment   := xlCenter;
  rangoExcel.WrapText            :=    False;
  rangoExcel.Orientation         :=        0;
  rangoExcel.AddIndent           :=    False;
  rangoExcel.IndentLevel         :=        0;
  rangoExcel.ShrinkToFit         :=    False;
  rangoExcel.ReadingOrder        :=xlContext;
  rangoExcel.MergeCells          :=    False;
  rangoExcel.Merge;
end;

procedure TFrmFormatosExcel.CrearNiveles(ColIni, FilaInicio: Integer; Titulo,
  AgrupaRegPat, AgrupaFormaPago, Separador: String);
begin
  if not Assigned(NivelDesglose) then
    NivelDesglose := TMisDesgloses.Create;

  DetDesglose := TDetDes.Create;

  DetDesglose.ColumnaInicial  := ColIni;
  DetDesglose.FilaInicial := FilaInicio;
  DetDesglose.Titulo          := Titulo;
  DetDesglose.AgrupaRegPat    :=    AgrupaRegPat;
  DetDesglose.AgrupaFormaPago := AgrupaFormaPago;
  DetDesglose.Separador    := Separador;

  NivelDesglose.AddObject(DetDesglose.Titulo, DetDesglose);
end;

procedure TFrmFormatosExcel.cuerpoReporteAsimilados(Excel: Variant;
  IdNomina: Integer);
const
  arrayCampos : array[1 .. 5] of string = ('AutoInc', 'NombreCompleto', 'Neto', 'NumeroDecuenta', 'Banco');
  arrayTotalesNomina : array [1 .. 12] of string = ('NÓMINA', '', 'COMISIÓN 4%', 'SUBTOTAL', 'IVA', 'TOTAL', 'FACTURA NUM.',
                                                    'BANCO PROPIO', 'BANCO CLIENTE', 'FECHA DE DEPOSITO CLIENTE',
                                                    'FECHA DE TRASPASO SOE', 'FECHA Y HORA AUTORIZADA PARA COBRO');
var
  numeroDeEmpleado, IdPersonalAnterior, Columna, Fila, i, FilaInicioDespliegue : Integer;
  //nomDetalleNomina : TClientDataset;
  excelRango : Variant;
  formula    :  string;
  elaboro, reviso, autorizo, VoBo : string;
  cargoElaboro, cargoReviso, cargoAutorizo, cargoVoBo : string;
begin
  try
    //Coloca los datos de los empleados para el formato de Asimilados
    //Columnas de Cuerpo
    Excel.Range['B11'].Value := 'SOCIO(nombre completo)';
    Excel.Range['C11'].Value :=     'INGRESOS';
    Excel.Range['D11'].Value := 'CLABE/CUENTA';
    Excel.Range['E11'].Value :=        'BANCO';

    fuenteLetras(Excel, 'B11:E11', 'Arial', 9, True);
    cdDatosExcel.Close;
    if Not CargarDatosFiltrados(cdDatosExcel, 'IdTipoNomina,ListaNominas', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger,
                                                  Seleccionados]) then
      raise InteligentException.CreateByCode(6, ['Error Message']);

    if cdDatosExcel.Active then
      cdDatosExcel.Refresh
    else
      cdDatosExcel.Open;

    numeroDeEmpleado := 1;

    if cdDatosExcel.RecordCount > 0 then
    begin
      IdPersonalAnterior := 0;
      cdDatosExcel.First;
      Fila := 12;
      while Not cdDatosExcel.Eof do
      begin
        if (IdPersonalAnterior <> cdDatosExcel.FieldByName('IdPersonal').AsInteger) or
           (IdPersonalAnterior = 0) then
        begin
          for Columna := 1 to 5 do
          begin
            if arrayCampos[Columna] = 'AutoInc' then
            begin
              Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := IntToStr(numeroDeEmpleado);
              fuenteLetras(Excel, ColumnaNombre(Columna) + IntToStr(Fila), 'Arial', 9, True);
            end
            else
            begin
              if arrayCampos[Columna] = 'Neto' then
              begin
                Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := FloatToStr(RoundTo(StrToFloat(cdDatosExcel.FieldByName(arrayCampos[Columna]).AsString), -2));
                ExcelRango := Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)];
                ExcelRango.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';
              end
              else
              begin
                if arrayCampos[Columna] = 'NumeroDecuenta' then
                begin
                  formatoTextoPlano(Excel, ColumnaNombre(Columna) + IntToStr(Fila), cdDatosExcel.FieldByName(arrayCampos[Columna]).AsString);
                end
                else
                  Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := cdDatosExcel.FieldByName(arrayCampos[Columna]).AsString;
              end;
            end;
          end;
          numeroDeEmpleado := numeroDeEmpleado + 1;
          Fila := Fila + 1;
          IdPersonalAnterior := cdDatosExcel.FieldByName('IdPersonal').AsInteger;
        end;

        cdDatosExcel.Next;
      end;

      //Colocar los Totales
      Excel.Range['B' + IntToStr(Fila)].Value := 'TOTALES';
      fuenteLetras(Excel, 'B' + IntToStr(Fila), 'Arial', 9, True);
      combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila));

      formula := '=SUM(R[-' + IntToStr(Fila - 12) + ']C:R[-1]C';
      ExcelRango     :=       Excel.Range['C' + IntToStr(Fila)];
      SetFormula(excelRango, formula);

      //Poner bordes al cuerpo del reporte
      bordesCeldas(Excel, 'B11:' + 'E' + IntToStr(Fila - 1), False);
      bordesCeldas(Excel, 'B' + IntToStr(Fila) + ':' + 'C' + IntToStr(Fila), False);

      if cdFirmantes.Active then
        cdFirmantes.Refresh
      else
        cdFirmantes.Open;

      if cdFirmantes.RecordCount > 0 then
      begin
        cdFirmantes.First;
        while Not cdFirmantes.Eof do
        begin
          if (cdFirmantes.FieldByName('Accion').AsString = 'REALIZO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            elaboro := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoElaboro := cdFirmantes.FieldByName('TituloCargo').AsString
          end else if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            reviso := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoReviso := cdFirmantes.FieldByName('TituloCargo').AsString
          end else if (cdFirmantes.FieldByName('Accion').AsString = 'VOBO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            VoBo := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoVoBo := cdFirmantes.FieldByName('TituloCargo').AsString
          end else if (cdFirmantes.FieldByName('Accion').AsString = 'AUTORIZO') and
             (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
          begin
            Autorizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
            cargoAutorizo := cdFirmantes.FieldByName('TituloCargo').AsString;
          end;

          cdFirmantes.Next;
        end;
      end;

      //Colocar los firmantes
      Excel.Range['D' + IntToStr(Fila + 2)].Value :=     'ELABORA';
      Excel.Range['D' + IntToStr(Fila + 5)].Value :=      elaboro;
      Excel.Range['D' + IntToStr(Fila + 6)].Value := cargoElaboro;
      negritas(Excel, 'D' + IntToStr(Fila + 2));

      Excel.Range['D' + IntToStr(Fila + 9)].Value :=     'REVISA';
      Excel.Range['D' + IntToStr(Fila + 12)].Value :=      reviso;
      Excel.Range['D' + IntToStr(Fila + 13)].Value := cargoReviso;
      negritas(Excel, 'D' + IntToStr(Fila + 9));

      Excel.Range['D' + IntToStr(Fila + 17)].Value :=    'AUTORIZO';
      Excel.Range['D' + IntToStr(Fila + 20)].Value :=      autorizo;
      Excel.Range['D' + IntToStr(Fila + 21)].Value := cargoAutorizo;
      negritas(Excel, 'D' + IntToStr(Fila + 17));

      Excel.Range['A' + IntToStr(Fila + 17)].Value :=   'Vo.Bo';
      Excel.Range['A' + IntToStr(Fila + 20)].Value :=      VoBo;
      Excel.Range['A' + IntToStr(Fila + 21)].Value := cargoVoBo;
      negritas(Excel, 'A' + IntToStr(Fila + 17));

      Fila := Fila + 3;
      FilaInicioDespliegue := Fila;

      //Colocar el valor en Nomina
      Excel.Range['C' + IntToStr(Fila)].Value     :=        Excel.Range['C' + IntToStr(Fila - 3)].Value;
      Excel.Range['C' + IntToStr(Fila + 2)].Value :=     Excel.Range['C' + IntToStr(Fila)].Value * 0.04;  //Comision 4%
      Excel.Range['C' + IntToStr(Fila + 3)].Value :=     Excel.Range['C' + IntToStr(Fila + 2)].Value + Excel.Range['C' + IntToStr(Fila)].Value; //Subtotal
      Excel.Range['C' + IntToStr(Fila + 4)].Value := Excel.Range['C' + IntToStr(Fila + 3)].Value * 0.16; //IVA
      Excel.Range['C' + IntToStr(Fila + 5)].Value := Excel.Range['C' + IntToStr(Fila + 4)].Value + Excel.Range['C' + IntToStr(Fila + 3)].Value;

      //Colocar los totales de la Nomina(el despliegue de la nomina)
      for i := 1 to Length(arrayTotalesNomina) do
      begin
        Excel.Range['B' + IntToStr(Fila)].Value := arrayTotalesNomina[i];
        Fila := Fila + 1;
      end;

      bordesCeldas(Excel, 'B' + IntToStr(FilaInicioDespliegue) + ':' + 'C' + IntToStr(Fila - 1), False);
      ExcelRango :=  Excel.Range['C' + IntToStr(FilaInicioDespliegue) + ':' + 'C' + IntToStr(Fila - 1)];
      excelRango.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFormatosExcel.cuerpoReporteResumen(Excel: Variant;
  IdNomina: Integer);
const
  columnasCuerpo : array[1 .. 7] of string = ('ID', 'APELLIDO PATERNO', 'APELLIDO MATERNO', 'NOMBRE', 'PUESTO', 'DÍAS', 'SUELDO DIARIO');
  camposBD       : array[2 .. 7] of string = ('APaterno', 'AMaterno', 'Nombres', 'TituloCargo', 'Dias', 'SalarioDiario');
var
  i, idPersonalAnterior, Fila, Columna, noEmpleado, inicioPercepciones, finPercepciones, inicioDeducciones, finDeducciones, fin,
  inicioPercepciones2, inicioDeducciones2 : Integer;
  formula : string;
  rangoExcel : Variant;
  reviso, VoBo, Autorizo, cargoReviso, cargoVoBo, cargoAutorizo : string;
begin
  try
    //Genera el cuerpo del reporte "Resumen"
    for i := 1 to Length(columnasCuerpo) do
    begin
      Excel.Range[ColumnaNombre(i) + '2'].Value := columnasCuerpo[i];
    end;

    if Not CargarDatosFiltrados(cdListaConceptos, 'IdNomina', [Seleccionados]) then
      raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_listaconceptos_nomina']);

    if CdListaConceptos.Active then
      cdListaConceptos.Refresh
    else
      cdListaConceptos.Open;

    inicioPercepciones := i;
    //Colocar las columnas(cabeceras) de Percepciones
    cdListaConceptos.First;
    while Not cdListaConceptos.Eof do
    begin
      if cdListaConceptos.FieldByName('Modo').AsString = 'PERCEPCION' then
      begin
        Excel.Range[ColumnaNombre(i) + '2'].Value := cdListaConceptos.FieldByName('Titulo').AsString;
        i := i + 1;
      end;

      cdListaconceptos.Next;
    end;

    finPercepciones := i - 1;

    inicioDeducciones :=   i;
    //Colocar las columnas(cabeceras) de Deducciones
    cdListaconceptos.First;
    while Not cdListaConceptos.Eof do
    begin
      if cdListaConceptos.FieldByName('Modo').AsString = 'DEDUCCION' then
      begin
        Excel.Range[ColumnaNombre(i) + '2'].Value := cdListaConceptos.FieldByName('Titulo').AsString;
        i := i + 1;
      end;

      cdListaConceptos.Next;
    end;

    finDeducciones := i - 1;

    fin := i;

    Excel.Range[ColumnaNombre(i) + '2'].Value := 'TOTAL';

    if CdDatosExcel.active then
      cdDatosExcel.refresh
    else
      cdDatosExcel.Open;

    CdDatosExcel.Close;
    if Not CargarDatosFiltrados(cdDatosExcel, 'ListaNominas', [Seleccionados]) then
      raise InteligentException.CreateByCode(6, ['ListaNominas', 'nom_detallenomina_excel']);

    cdDatosExcel.Open;

    //Poner datos de las primeras columnas
    idPersonalAnterior := 0;
    noEmpleado         := 1;
    Fila               := 3;
    cdDatosExcel.First;
    while Not cdDatosExcel.Eof do
    begin
      if (cdDatosExcel.FieldByName('IdPersonal').AsInteger <> idPersonalAnterior) or (idPersonalAnterior = 0) then
      begin
        for Columna := 1 to Length(columnasCuerpo) do
        begin
          if Columna = 1 then
          begin
            Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := IntToStr(noEmpleado);
            if (noEmpleado mod 2) = 0 then
            begin
              colorCeldas(Excel, 'A' + IntToStr(Fila) + ':' + 'F' + IntToStr(Fila), 10397206, 0, True);
            end;
          end
          else
          begin
            Excel.Range[ColumnaNombre(Columna) + IntToStr(Fila)].Value := cdDatosExcel.FieldByName(camposBD[Columna]).AsString;
            Excel.Range[ColumnaNombre(fin) + IntToStr(Fila)].Value     :=            cdDatosExcel.FieldByName('Neto').AsString;
          end;

          inicioPercepciones2 := inicioPercepciones;
          inicioDeducciones2  :=  inicioDeducciones;
        end;

        noEmpleado := noEmpleado + 1;
        Fila := Fila + 1;
        idPersonalAnterior := cdDatosExcel.FieldByName('IdPersonal').AsInteger;
      end;

      cdListaConceptos.First;
      while Not cdListaConceptos.Eof do
      begin
        if (cdListaConceptos.FieldByName('Modo').AsString = 'PERCEPCION') and
           (cdListaConceptos.FieldByName('CodigoConcepto').AsString = cdDatosExcel.FieldByName('CodigoConcepto').AsString)then
        begin
          Excel.Range[ColumnaNombre(inicioPercepciones2) + IntToStr(Fila - 1)].Value := cdDatosExcel.FieldByName('Importe').AsString;
          inicioPercepciones2 := inicioPercepciones2 + 1;
        end
        else
          Excel.Range[ColumnaNombre(inicioPercepciones2) + IntToStr(Fila - 1)].Value := 0;

        cdListaConceptos.Next;
      end;

      cdListaConceptos.First;
      while Not cdListaConceptos.Eof do
      begin
        if (cdListaConceptos.FieldByName('Modo').AsString = 'DEDUCCION') and
           (cdListaConceptos.FieldByName('CodigoConcepto').AsString = cdDatosExcel.FieldByName('CodigoConcepto').AsString)then
        begin
          Excel.Range[ColumnaNombre(inicioDeducciones2) + IntToStr(Fila - 1)].Value := cdDatosExcel.FieldByName('Importe').AsString;
          inicioDeducciones2 := inicioDeducciones2 + 1;
        end;

        cdListaConceptos.Next;
      end;

      cdDatosExcel.Next;
    end;

    //Colocar los Totales
    for i := 7 to fin do
    begin
      formula := '=SUM(R[-' + IntToStr(noEmpleado - 1) + ']C:R[-1]C)';
      rangoExcel := Excel.Range[ColumnaNombre(i) + IntToStr(Fila)];
      SetFormula(rangoExcel, formula);
    end;

    //Formato para los Totales(Sumatorias en negritas)
    fuenteLetras(Excel, 'G' + IntToStr(Fila) + ':' + ColumnaNombre(fin) + IntToStr(Fila), 'Calibri', 9, True);
    bordesSemiPunteados(Excel, 'G' + IntToStr(Fila) + ':' + ColumnaNombre(fin) + IntToStr(Fila));
    formatoConSignoDePesos(Excel, 'G' + IntToStr(Fila) + ':' + ColumnaNombre(fin) + IntToStr(Fila));

    //Buscar los firmantes en la tabla de firmantes excel
//    if cdFirmantes.Active then
//      cdFirmantes.Refresh
//    else
//      cdFirmantes.Open;
//
//    reviso := '';
//    VoBo := '';
//    Autorizo := '';
//
//    if cdFirmantes.RecordCount > 0 then
//    begin
//      cdFirmantes.First;
//      while Not cdFirmantes.Eof do
//      begin
//        if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO') and
//           (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//        begin
//          reviso := cdFirmantes.FieldByName('NombreFirmante').AsString;
//          cargoReviso := cdFirmantes.FieldByName('TituloCargo').AsString
//        end else if (cdFirmantes.FieldByName('Accion').AsString = 'VOBO') and
//           (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//        begin
//          VoBo := cdFirmantes.FieldByName('NombreFirmante').AsString;
//          cargoVoBo := cdFirmantes.FieldByName('TituloCargo').AsString
//        end else if (cdFirmantes.FieldByName('Accion').AsString = 'AUTORIZO') and
//           (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//        begin
//          Autorizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
//          cargoAutorizo := cdFirmantes.FieldByName('TituloCargo').AsString;
//        end;
//
//        cdFirmantes.Next;
//      end;
//    end;
//
//    //Colocar los firmantes
//    //REVISO
//    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 2) + ':' + 'D' + IntToStr(Fila + 2));
//    Excel.Range['B' + IntToStr(Fila + 2)].Value := 'REVISÓ';
//    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 4) + ':' + 'D' + IntToStr(Fila + 4));
//    lineaInferior(Excel, 'B' + IntToStr(Fila + 4) + ':' + 'D' + IntToStr(Fila + 4));
//    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 5) + ':' + 'D' + IntToStr(Fila + 5));
//    Excel.Range['B' + IntToStr(Fila + 5) + ':' + 'D' + IntToStr(Fila + 5)].Value := reviso;
//    combinarYCentrarDatosEncabezados(Excel, 'B' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6));
//    Excel.Range['B' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6)].Value := cargoReviso;
//
//    //Vo. Bo.
//    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 2) + ':' + 'G' + IntToStr(Fila + 2));
//    Excel.Range['F' + IntToStr(Fila + 2)].Value := 'Vo. Bo.';
//    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 4) + ':' + 'G' + IntToStr(Fila + 4));
//    lineaInferior(Excel, 'F' + IntToStr(Fila + 4) + ':' + 'G' + IntToStr(Fila + 4));
//    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 5) + ':' + 'G' + IntToStr(Fila + 5));
//    Excel.Range['F' + IntToStr(Fila + 5) + ':' + 'G' + IntToStr(Fila + 5)].Value := VoBo;
//    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6));
//    Excel.Range['F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6)].Value := cargoVoBo;
//
//    //Autorizo
//    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 2) + ':' + 'K' + IntToStr(Fila + 2));
//    Excel.Range['I' + IntToStr(Fila + 2)].Value := 'AUTORIZO';
//    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 4) + ':' + 'K' + IntToStr(Fila + 4));
//    lineaInferior(Excel, 'I' + IntToStr(Fila + 4) + ':' + 'K' + IntToStr(Fila + 4));
//    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 5) + ':' + 'K' + IntToStr(Fila + 5));
//    Excel.Range['I' + IntToStr(Fila + 5) + ':' + 'K' + IntToStr(Fila + 5)].Value := autorizo;
//    combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 6) + ':' + 'K' + IntToStr(Fila + 6));
//    Excel.Range['I' + IntToStr(Fila + 6) + ':' + 'K' + IntToStr(Fila + 6)].Value := cargoAutorizo;

    SetFirmantes(Excel, 1, Fila+2, 'AQ-REXC004');
    //Estirar ancho de la Fila 1
    estirarFila(Excel, '1:1', 24);

    //Estirar ancho de la Fila 2
    estirarFila(Excel, '2:2', 30);

    alinearTexto(Excel, 'A2:' + ColumnaNombre(fin) + '2', 'enmedio', 'centro', True);

    estirarColumnas(Excel, 'A:' + ColumnaNombre(fin));

    //Poner color a las columnas azules
    colorCeldas(Excel, 'A2:' + ColumnaNombre(fin) + '2', 13145891, 0, True);
    fuenteTexto(Excel, 'A2:' + ColumnaNombre(fin) + '2', 'Calibri', 9, 1, False, True);

    //Fuente de los datos
    fuenteLetras(Excel, 'A3:' + ColumnaNombre(fin) + IntToStr(Fila - 1), 'Calibri', 9, False);

    //Poner bordes semipunteados
    bordesSemiPunteados(Excel, 'A3:' + ColumnaNombre(fin) + IntToStr(Fila - 1));

    //Poner signo de pesos a los datos
    formatoConSignoDePesos(Excel, 'G3:' + ColumnaNombre(fin) + IntToStr(Fila - 1));

    filtros(Excel, 'A2:' + ColumnaNombre(fin) + '2');
  finally
    cdDatosExcel.Close;
  end;
end;

procedure TFrmFormatosExcel.cxbtnFiltrarClick(Sender: TObject);
var
  Cursor: TCursor;
  LocTipoNomina: Integer;
  Parametros: TParamFilter;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      if CxLookUpTipoNomina.EditValue = null then
        raise inteligentException.CreateByCode(24, ['Debes seleccionar un tipo de nómina de la lista desplegable superior.']);

      LocTipoNomina := CxLookUpTipoNomina.EditValue;

      Parametros := TparamFilter.Create;
      if dxrbMes.Checked then
      begin
        Parametros.Add('Rango', '123');
        Parametros.Add('Inicio', DInicio);
        Parametros.Add('Termino', DTermino);
        Parametros.Add('IdTiponomina', LocTipoNomina);
      end;

      if dxRbAnio.Checked then
      begin
        Parametros.Add('Anio', CxTextAnio.Text);
        Parametros.Add('IdTiponomina', LocTipoNomina);
      end;

      if dxRbRango.Checked then
      begin
        Parametros.Add('Rango', '123');
        Parametros.Add('Inicio', ClientModule1.DatetoStrSql(cxDateInicio.Date));
        Parametros.Add('Termino', ClientModule1.DatetoStrSql(cxDateTermino.date));
        Parametros.Add('IdTiponomina', LocTipoNomina);
      end;

      if not CargarDatosFiltrados(cdNomina, parametros) then
        raise InteligentException.CreateByCode(6, ['nom_tipoNomina', 'Sin liga', 'Liga']);

      if CdNomina.Active then
        cdNomina.Refresh
      else
        cdNomina.Open;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    On e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFormatosExcel.CxDateNav1PeriodChanged(Sender: TObject;
  const AStart, AFinish: TDateTime);
begin
  DInicio := ClientModule1.DatetoStrSql(StartOfTheMonth((cxDateNav1.Date)));
  DTermino := ClientModule1.DatetoStrSql(EndOfTheMonth((cxDateNav1.Date)));
end;

procedure TFrmFormatosExcel.CxDateNav1SelectionChanged(Sender: TObject;
  const AStart, AFinish: TDateTime);
begin
  DInicio := ClientMOdule1.DatetoStrSql(AStart);
  DTermino := ClientModule1.DatetoStrSql(AFinish);
end;

procedure TFrmFormatosExcel.CxLookUpTipoNominaPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxlblTipoNomina.Caption := CxLookUpTipoNomina.Text;
end;

procedure TFrmFormatosExcel.datosDelCuerpo(Excel: Variant; IdNomina,
  finPercepciones, inicioDeducciones, finDeducciones: Integer);
const
  camposPersonales : array [1 .. 6] of string = ('APaterno', 'AMaterno', 'Nombres', 'NumeroDeCuenta', 'Banco', 'Dias');
var
  Fila, columna, idPersonalAnterior, i, jornada : Integer;
  formula : string;
  rango  : Variant;
  totalPercepciones, totalDeducciones : Double;
  newSalario, NewSalarioIntegrado, NewAguinaldo, NewVacaciones, NewPrimaVacacional : Real;
  barraProgresoActivada : Boolean;
  realizo, reviso1, reviso2, VoBo, Autorizo : string;
  cargoRealizo, cargoReviso1, cargoReviso2, cargoVoBo, cargoAutorizo : string;
  TopeMaximo: Real;
begin
  //Coloca los datos del calculo de la nomina en el cuerpo del reporte
  try
    TopeMaximo := 30000;
    try
      cdDatosExcel.Close;
      if Not CargarDatosFiltrados(cdDatosExcel, 'ListaNominas,ModoMaximo,MontoTope', [Seleccionados, 'Si', TopeMaximo]) then
        raise InteligentException.CreateByCode(6, ['ListaNominas', 'nom_detallenomina_excel']);

      if cdDatosExcel.Active then
        cdDatosExcel.Refresh
      else
        cdDatosExcel.Open;

      if cdDatosExcel.RecordCount > 0 then
      begin
        cdDatosExcel.First;
        idPersonalAnterior :=  0;
        Fila := 10;
        barraProgresoActivada := False;

        while Not cdDatosExcel.Eof do
        begin
          if (idPersonalAnterior <> cdDatosExcel.FieldByName('idPersonal').AsInteger) or (idPersonalAnterior = 0) then
          begin
            //Colocar los datos personales
            {$REGION 'DATOS PERSONALES'}
            for columna := 1 to 6 do
            begin
              if camposPersonales[Columna] = 'NumeroDeCuenta' then
                formatoTextoPlano(Excel, ColumnaNombre(columna) + IntToStr(Fila), cdDatosExcel.FieldByName(camposPersonales[columna]).AsString)
              else
                Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := cdDatosExcel.FieldByName(camposPersonales[columna]).AsString;
            end;

            newSalario          := 0;
            NewSalarioIntegrado := 0;
            NewAguinaldo        := 0;
            NewVacaciones       := 0;
            NewPrimaVacacional  := 0;
            jornada := 0;

            if cdTipoNomina.FieldByName('DiasDescanso').asInteger = 0 then  //Si es una nomina quincenal
            begin
              if Not cdDatosExcel.FieldByName('horasXIdPersonalImss').IsNull then
              begin
                jornada := cdDatosExcel.FieldByName('horasXIdPersonalImss').AsInteger
              end else if Not cdDatosExcel.FieldByName('horasXIdCargo').IsNull then
              begin
                jornada := cdDatosExcel.FieldByName('horasXIdCargo').AsInteger
              end else if Not cdDatosExcel.FieldByName('horasXIdTipoNomina').IsNull then
              begin
                jornada := cdDatosExcel.FieldByName('horasXIdTipoNomina').AsInteger
              end;

              if Not CargarDatosFiltrados(cdImss, 'IdPersonalImss', [cdDatosExcel.FieldByName('idPersonal').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['Registros de Personal ante el IMSS', -9, 'IdPersonalImss']);

              if cdImss.Active then
                cdImss.Refresh
              else
                cdImss.Open;

              try
                //Obtener el Neto quincenal de personal de Tierra haciendo una proyeccion de Nomina
                {GenerarCalculoVirtual(
                                      Self, -1,
                                      cdOrganizacion.FieldByName('IdOrganizacion').AsInteger,
                                      cdOrganizacion.FieldByName('FactorPrimaDominical').AsFloat,
                                      cdOrganizacion.FieldByName('FactorPrimaVacacional').AsFloat,
                                      cdSalMinDF.FieldByName('Salario').AsFloat,
                                      cdOrganizacion.FieldByName('SalMinGenZona').AsFloat,
                                      cdOrganizacion.FieldByName('SeguroVidaInfonavit').AsFloat,
                                      cdOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsInteger,
                                      cdOrganizacion.FieldByName('DiasExcentoAguinaldo').AsInteger,
                                      cdOrganizacion.FieldByName('NSMTopeIntIMSS').AsInteger,
                                      cdTipoNomina.FieldByName('IdTipoNomina').AsInteger,
                                      cdTipoNomina.FieldByName('DiasTrabajados').AsInteger,
                                      cdTipoNomina.FieldByName('DiasDescanso').AsInteger,
                                      cdTipoNomina.FieldByName('Festivos').AsInteger,
                                      cdTipoNomina.FieldByName('Domingos').AsInteger,
                                      jornada,//8,
                                      cdTipoNomina.FieldByName('InicioSemana').AsString,
                                      cdTipoNomina.FieldByName('IdTipoTablaIspt').AsInteger,
                                      cdTipoNomina.FieldByName('Periodicidad').AsFloat,
                                      cdImss.FieldByName('SalarioDiario').AsFloat, //Salario diario
                                      cdImss.FieldByName('SalarioIntegrado').AsExtended,
                                      StrToDate('01/01/2015'),
                                      StrToDate('15/01/2015'),
                                      1,
                                      mPercepciones,
                                      mDeducciones,
                                      NewSalario,
                                      NewSalarioIntegrado,
                                      NewAguinaldo,
                                      NewVacaciones,
                                      NewPrimaVacacional,
                                      False
                                     );
                barraProgresoActivada := True;           }
                {mPercepciones.Locate('Titulo', 'SUELDO', []); }
                Excel.Range['G' + IntToStr(Fila)].Value := '$$$';//mPercepciones.FieldByName('Importe').AsString;
              finally
                gcForma.Visible := False;
              end;
            end
            else
            begin
              //Crear codigo para los de abordo
              Excel.Range['G' + IntToStr(Fila)].Value :=  FloatToStr(RoundTo(cdDatosExcel.FieldByName('importeXGuardia').AsFloat, -2));
            end;

            {$ENDREGION}

            columna := 8;

            //Colocar los Importes de las percepciones
            {$REGION 'PERCEPCIONES'}
            cdlistaConceptos.First;
            while Not cdlistaConceptos.Eof do
            begin
              if cdlistaConceptos.FieldByName('Modo').AsString = 'PERCEPCION' then
              begin
                Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := obtenerPercepcionDeduccion(IdNomina, cdlistaConceptos.FieldByName('IdConcepto').AsInteger, cdDatosExcel.FieldByName('idPersonal').AsInteger);

                columna := columna + 1;
              end;
              cdlistaConceptos.Next;
            end;

            //Sumas las percepciones y ponerlo en el total de percepciones
            formula := '=SUM(RC[-' + IntToStr(columna - 8) + ']:RC[-1])';
            rango := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)];
            SetFormula(rango, formula);

            totalPercepciones := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value;

            //Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := 'PENDIENTE TOTAL DE PERCEPCIONES';
            columna := columna + 1;
            {$ENDREGION}

            //Colocar los Importes de las deducciones
            {$REGION 'DEDUCCIONES'}
            cdlistaConceptos.First;
            while Not cdlistaConceptos.Eof do
            begin
              if cdlistaConceptos.FieldByName('Modo').AsString = 'DEDUCCION' then
              begin
                Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := obtenerPercepcionDeduccion(IdNomina, cdlistaConceptos.FieldByName('IdConcepto').AsInteger, cdDatosExcel.FieldByName('idPersonal').AsInteger);

                columna := columna + 1;
              end;

              cdlistaConceptos.Next;
            end;

            //Colocar el total de la suma de los importes de las deducciones
            formula := '=SUM(RC[-' + IntToStr(columna - inicioDeducciones) + ']:RC[-1]';
            rango := Excel.Range[ColumnaNombre(finDeducciones + 1) + IntToStr(Fila)];
            setFormula(rango, formula);

            totalDeducciones := Excel.Range[ColumnaNombre(finDeducciones + 1) + IntToStr(Fila)].Value;

            columna := columna + 1;
            {$ENDREGION}

            //Colocar el Neto a Pagar(Es el importe total de las percepciones menos el importe total de las deducciones)
            Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value := totalPercepciones - totalDeducciones;

            Fila := Fila + 1;
          end;

          idPersonalAnterior := cdDatosExcel.FieldByName('idPersonal').AsInteger;
          cdDatosExcel.Next;
        end;

        Excel.Range['E' + IntToStr(Fila)].Value := 'TOTALES';

        //Colocar la suma de los totales en forma vertical
        for i := 8 to columna do
        begin
          formula := '=SUM(R[-' + IntToStr(Fila - 1) + ']C:R[-1]C';
          rango  := Excel.Range[ColumnaNombre(i) + IntToStr(Fila)];
          SetFormula(rango, formula);
        end;




//        if cdFirmantes.Active then
//          cdFirmantes.Refresh
//        else
//          cdFirmantes.Open;
//
//        realizo := '';
//        reviso1 := '';
//        reviso2 := '';
//        VoBo := '';
//        Autorizo := '';
//
//        if cdFirmantes.RecordCount > 0 then
//        begin
//          cdFirmantes.First;
//          while Not cdFirmantes.Eof do
//          begin
//            if (cdFirmantes.FieldByName('Accion').AsString = 'REALIZO') and
//               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//            begin
//              realizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
//              cargoRealizo := cdFirmantes.FieldByName('TituloCargo').AsString
//            end else if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO') and
//               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//            begin
//              reviso1 := cdFirmantes.FieldByName('NombreFirmante').AsString;
//              cargoReviso1 := cdFirmantes.FieldByName('TituloCargo').AsString
//            end else if (cdFirmantes.FieldByName('Accion').AsString = 'REVISO2') and
//               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//            begin
//              reviso2 := cdFirmantes.FieldByName('NombreFirmante').AsString;
//              cargoReviso2 := cdFirmantes.FieldByName('TituloCargo').AsString
//            end else if (cdFirmantes.FieldByName('Accion').AsString = 'VOBO') and
//               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//            begin
//              VoBo := cdFirmantes.FieldByName('NombreFirmante').AsString;
//              cargoVoBo := cdFirmantes.FieldByName('TituloCargo').AsString
//            end else if (cdFirmantes.FieldByName('Accion').AsString = 'AUTORIZO') and
//               (cdFirmantes.FieldByName('FechaAplicacion').AsDateTime <= Now) then
//            begin
//              Autorizo := cdFirmantes.FieldByName('NombreFirmante').AsString;
//              cargoAutorizo := cdFirmantes.FieldByName('TituloCargo').AsString;
//            end;
//
//            cdFirmantes.Next;
//          end;
//        end;
//
//        //Colocar los firmantes
//        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 6));
//        Excel.Range['A' + IntToStr(Fila + 6)].Value := 'REALIZÓ';
//        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 8));
//        lineaInferior(Excel, 'A' + IntToStr(Fila + 8));
//        Excel.Range['A' + IntToStr(Fila + 9)].Value := realizo;
//        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 10));
//        Excel.Range['A' + IntToStr(Fila + 10)].Value := cargoRealizo;
//
//        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6));
//        Excel.Range['C' + IntToStr(Fila + 6) + ':' + 'D' + IntToStr(Fila + 6)].Value := 'REVISÓ';
//        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 8) + ':' + 'D' + IntToStr(Fila + 8));
//        lineaInferior(Excel, 'C' + IntToStr(Fila + 8) + ':' + 'D' + IntToStr(Fila + 8));
//        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 9) + ':' + 'D' + IntToStr(Fila + 9));
//        Excel.Range['C' + IntToStr(Fila + 9) + ':' + 'D' + IntToStr(Fila + 9)].Value := reviso1;
//        combinarYCentrarDatosEncabezados(Excel, 'C' + IntToStr(Fila + 10) + ':' + 'D' + IntToStr(Fila + 10));
//        Excel.Range['C' + IntToStr(Fila + 10) + ':' + 'D' + IntToStr(Fila + 10)].Value := cargoReviso1;
//
//        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6));
//        Excel.Range['F' + IntToStr(Fila + 6) + ':' + 'G' + IntToStr(Fila + 6)].Value := 'REVISÓ';
//        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 8) + ':' + 'G' + IntToStr(Fila + 8));
//        lineaInferior(Excel, 'F' + IntToStr(Fila + 8) + ':' + 'G' + IntToStr(Fila + 8));
//        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 9) + ':' + 'G' + IntToStr(Fila + 9));
//        Excel.Range['F' + IntToStr(Fila + 9) + ':' + 'G' + IntToStr(Fila + 9)].Value := reviso2;
//        combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 10) + ':' + 'G' + IntToStr(Fila + 10));
//        Excel.Range['F' + IntToStr(Fila + 10) + ':' + 'G' + IntToStr(Fila + 10)].Value := cargoReviso2;
//
//        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 6) + ':' + 'J' + IntToStr(Fila + 6));
//        Excel.Range['I' + IntToStr(Fila + 6) + ':' + 'J' + IntToStr(Fila + 6)].Value := 'Vo. Bo.';
//        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 8) + ':' + 'J' + IntToStr(Fila + 8));
//        lineaInferior(Excel, 'I' + IntToStr(Fila + 8) + ':' + 'J' + IntToStr(Fila + 8));
//        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 9) + ':' + 'J' + IntToStr(Fila + 9));
//        Excel.Range['I' + IntToStr(Fila + 9) + ':' + 'J' + IntToStr(Fila + 9)].Value := VoBo;
//        combinarYCentrarDatosEncabezados(Excel, 'I' + IntToStr(Fila + 10) + ':' + 'J' + IntToStr(Fila + 10));
//        Excel.Range['I' + IntToStr(Fila + 10) + ':' + 'J' + IntToStr(Fila + 10)].Value := cargoVoBo;
//
//        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 6) + ':' + 'M' + IntToStr(Fila + 6));
//        Excel.Range['L' + IntToStr(Fila + 6) + ':' + 'M' + IntToStr(Fila + 6)].Value := 'AUTORIZÓ';
//        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 8) + ':' + 'M' + IntToStr(Fila + 8));
//        lineaInferior(Excel, 'L' + IntToStr(Fila + 8) + ':' + 'M' + IntToStr(Fila + 8));
//        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 9) + ':' + 'M' + IntToStr(Fila + 9));
//        Excel.Range['L' + IntToStr(Fila + 9) + ':' + 'M' + IntToStr(Fila + 9)].Value := autorizo;
//        combinarYCentrarDatosEncabezados(Excel, 'L' + IntToStr(Fila + 10) + ':' + 'M' + IntToStr(Fila + 10));
//        Excel.Range['L' + IntToStr(Fila + 10) + ':' + 'M' + IntToStr(Fila + 10)].Value := cargoAutorizo;

        //Combinar y centrar la fila de TOTALES antes del texto
        combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila) + ':D' + IntToStr(Fila));

        //Poner gris claro a los datos de las percepciones
        colorCeldas(Excel, ColumnaNombre(finPercepciones + 1) + '10' + ':' + ColumnaNombre(finPercepciones + 1) + IntToStr(Fila - 1), 1, -4.99893185216834E-02, False);

        //Poner gris claro a los datos de deducciones
        colorCeldas(Excel, ColumnaNombre(finDeducciones + 1) + '10' + ':' + ColumnaNombre(finDeducciones + 1) + IntToStr(Fila -1), 1, -4.99893185216834E-02, False);

        //Poner formato con signo de pesos
        Excel.Range['G10:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila)].Select;
        Excel.Selection.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';

        //Poner color amarillo a los datos de las percepciones
        colorCeldas(Excel, 'H10:' + ColumnaNombre(finPercepciones) + IntToStr(Fila - 1), 65535, 0, True);

        //Poner color amarillo a los datos de las Deducciones
        colorCeldas(Excel, ColumnaNombre(inicioDeducciones) + '10:' + ColumnaNombre(finDeducciones) + IntToStr(Fila - 1), 65535, 0, True);

        //Poner azul verdoso a los datos del Neto a Pagar
        colorCeldas(Excel, ColumnaNombre(finDeducciones + 2) + '10:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila - 1), 13434624, 0, True);

        //Poner color a la fila que dice TOTALES
        colorCeldas(Excel, 'A' + IntToStr(Fila) + ':' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila), 1, -0.249977111117893, False);

        //Colocar el 1% de comision debajo del TOTAL del Neto
        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 1)].Value := '1% COMISION';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 1)].Value :=     Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value * 0.01;

        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 2)].Value :=    'SUBTOTAL';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 2)].Value :=     Excel.Range[ColumnaNombre(columna) + IntToStr(Fila)].Value + Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 1)].Value;

        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 3)].Value :=     '16% IVA';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 3)].Value := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 2)].Value * 0.16;

        Excel.Range[ColumnaNombre(columna - 1) + IntToStr(Fila + 4)].Value :=       'TOTAL';
        Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 4)].Value := Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 3)].Value + Excel.Range[ColumnaNombre(columna) + IntToStr(Fila + 2)].Value;

        //Poner color el color naranja de los totales (1%comision, subtotal, 16%iva, total).
        colorCeldas(Excel, ColumnaNombre(columna - 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(columna - 1) + IntToStr(Fila + 4), 49407, 0, True);

        //Poner color Rosa fuerte de los totales numericos de (1%comision, subtotal, 16% iva)
        colorCeldas(Excel, ColumnaNombre(columna) + IntToStr(Fila + 1) + ':' + ColumnaNombre(columna) + IntToStr(Fila + 3), 6, 0.599993896298105, False);

        //Poner color rojo quemado al TOTAL
        colorCeldas(Excel, ColumnaNombre(columna) + IntToStr(Fila + 4), 192, 0, True);

        //Poner bordes a las celdas
        bordesCeldas(Excel, 'A7:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila), False);

        //Poner bordes a los totales (1% comision, subtotal, 16% iva, total)
        bordesCeldas(Excel, ColumnaNombre(finDeducciones + 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila + 4), False);
        Excel.Range[ColumnaNombre(finDeducciones + 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila + 4)].Select;
        Excel.Selection.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';

        //Poner la fuente Arial tamano 9 al texto del reporte
        fuenteLetras(Excel, 'A1:' + ColumnaNombre(finDeducciones + 2) + IntToStr(Fila + 4), 'Arial', 9, False);

        alineacionTextoExcel(Excel, ColumnaNombre(columna - 1) + IntToStr(Fila + 1) + ':' + ColumnaNombre(columna - 1) + IntToStr(Fila + 4), -4152, -4107, True);

        //Fuentes
        fuenteLetras(Excel, 'A3:C4', 'Arial', 9, True); //Negritas para el periodo y la fecha de pago de la nomina
        fuenteTexto(Excel, 'A5', 'Arial', 9, 1, True, True); //Negritas,Blanco, Cursiva Nombre de la empresa
        fuenteTexto(Excel, 'A8:' + ColumnaNombre(finDeducciones + 2) + '9', 'Arial', 9, 2, False, True); //Negritas para las cabeceras

        fuenteTexto(Excel, 'H8:' + ColumnaNombre(finPercepciones) + '9', 'Arial', 9, 1, False, True); //Blanco y negritas Cabeceras percepciones
        fuenteTexto(Excel, ColumnaNombre(inicioDeducciones) + '8' + ':' + ColumnaNombre(finDeducciones) + '9', 'Arial', 9, 1, False, True); //Blanco y negritas cabeceras deducciones
        fuenteTexto(Excel, ColumnaNombre(columna) + IntToStr(Fila + 4), 'Arial', 9, 1, False, True); //Blanco y negritas para el total
        fuenteTexto(Excel, 'E' + IntToStr(Fila), 'Arial', 9, 2, False, True); //Negritas al texto (TOTALES)

        //Centrar total Percepciones, totalDeducciones y Neto a Pagar
        alineacionTextoExcel(Excel, ColumnaNombre(finPercepciones + 1) + '8' + ':' + ColumnaNombre(finPercepciones + 1) + '9', -4108, -4107, True);
        alineacionTextoExcel(Excel, ColumnaNombre(finDeducciones + 1) + '8' + ':' + ColumnaNombre(finDeducciones + 1) + '9', -4108, -4107, True);
        alineacionTextoExcel(Excel, ColumnaNombre(finDeducciones + 2) + '8' + ':' + ColumnaNombre(finDeducciones + 2) + '9', -4108, -4107, True);

        SetFirmantes(Excel, 1, Fila+2, 'AQ-REXC002');

        Excel.activeWindow.zoom := 75;
        Excel.Cells.Columns.AutoFit;
        Excel.Columns['A:A'].ColumnWidth := 35;
      end;
    finally
      if barraProgresoActivada then
      begin
        gcForma.Destroy;
        gcForma := nil;
      end;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFormatosExcel.DesglosePagos;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if cdCejas.ProviderName = '' then
        if not crearConjunto(cdCejas, 'nom_detallenomina_desglosegeneral', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nom_detallenomina_desglosegeneral']);

      if not CargarDatosFiltrados(cdCejas, 'ListaNominas,SoloCejas', [cdNomina.FieldByName('IdNomina').AsInteger, 'Si']) then
        raise InteligentException.CreateByCode(6, ['nom_detallenomina_desglosegeneral', 'ListaNominas', cdNomina.FieldByName('IdNomina').AsString]);

      if cdCejas.Active then
        cdCejas.Refresh
      else
        cdCejas.Open;

      ExportarDesgloseGral;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFormatosExcel.dxRbAnioClick(Sender: TObject);
begin
  CxPageFiltros.ActivePage := cxPageAnio;
  CxTextAnio.Text := IntToStr(YearOf(Now));

  if cxTextAnio.CanFocus then
    cxTextAnio.SetFocus;
end;

procedure TFrmFormatosExcel.dxRbMesClick(Sender: TObject);
begin
  CxPageFiltros.ActivePage := cxPageMes;

end;

procedure TFrmFormatosExcel.dxRbRangoClick(Sender: TObject);
begin
  CxPageFiltros.ActivePage := cxPageRango;
end;

procedure TFrmFormatosExcel.encabezadoAsimilados(Excel: Variant; NombreEmpresa,
  TituloCabecera, rangoFechasNomina, nombreOtraEmpresa, ciudad,
  serviciosPrestadosEn, Al: string);
begin
//Coloca los datos del encabezado del reporte con formato de Asimilados
  combinarYCentrarDatosEncabezados(Excel, 'A1:D1');
  Excel.Range['A1:D1'].Value :=      NombreEmpresa;

  combinarYCentrarDatosEncabezados(Excel, 'A2:D2');
  Excel.Range['A2:D2'].Value :=     TituloCabecera;

  Excel.Range['A3'].Value :=     'AL PERIODO DEL:';
  colorCeldas(Excel, 'A3', 10066176, 0, True);

  combinarYCentrarDatosEncabezados(Excel, 'B3:F3');
  Excel.Range['B3:F3'].Value :=  rangoFechasNomina;
  colorCeldas(Excel, 'B3:F3', 12619264, 0, True);

  //combinarYCentrarDatosEncabezados(Excel, 'D6:E6');
  //Excel.Range['D6:E6'].Value :=  nombreOtraEmpresa;

  combinarYCentrarDatosEncabezados(Excel, 'A5:B5');
  Excel.Range['A5:B5'].Value :=      NombreEmpresa;

  combinarYCentrarDatosEncabezados(Excel, 'A6:B6');
  Excel.Range['A6:B6'].Value :=             ciudad;

  Excel.Range['B8'].Value := 'SERVICIOS PRESTADOS EN:';
  Excel.Range['B9'].Value :=      serviciosPrestadosEn;
  colorLetras(Excel, 'B9', -3407872, 0, True);
  combinarYCentrarDatosEncabezados(Excel, 'B9:B9');

  Excel.Range['D9'].Value := 'AL:';
  Excel.Range['D10'].Value :=   Al;
  colorLetras(Excel, 'D10', -3407872, 0, False);
  combinarYCentrarDatosEncabezados(Excel, 'D10:D10');

  fuenteLetras(Excel, 'A1:F6', 'Arial', 9, True);

  fuenteLetras(Excel, 'A1:D1', 'Arial', 12, True);
  fuenteTexto(Excel, 'A2:D2', 'Arial', 12, 2, True,False);
  fuenteTexto(Excel, 'B3:F3', 'Arial', 12, 2, False, True);

  Excel.Rows['3:3'].RowHeight := 27;
  combinarYCentrarDatosEncabezados(Excel, 'A3:A3');
  AjustarTexto(Excel, 'A3:A3');
end;

procedure TFrmFormatosExcel.Encabezados(Lista: TStringList);
var
  i: Integer;
begin
  Try
    if Lista.Count = 0 then
      raise InteligentException.CreateByCode(24, ['No existen elementos a imprimir.']);

    if ClientModule1.cdOrganizacion.Active then
    begin
      ExApp.Range['A1'].Value := ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').asString;
      ExRango := ExApp.Range[ColumnaNombre(CInicio) + IntToStr(1) +':'+ ColumnaNombre(Lista.Count) + IntToStr(1)];
      ExRango.mergeCells := True;
      ExRango.Font.Name := 'Arial';
      ExRango.Font.Bold := True;
      ExRango.Font.Size := 9;
      ExRango.HorizontalAlignment := xlCenter;
    end;

    ExApp.Range['A2'].value := 'NOMINA CORRESPONDIENTE';
    ExRango := ExApp.Range['A2'];
    SetCellProperties(ExRango, 'Arial', 9, -4131 , xlCenter, False, xlContext, true);
    ExApp.Range['A3'].Value := 'AL PERIODO DEL: ';

    ExRango := ExApp.Range['A3:D3'];
    ExRango.mergeCells := True;
    ExRango.interior.Color := 13408512;
    SetCellProperties(ExRango, 'Arial', 9, -4131 , xlCenter, False, xlContext, true);

    ExRango := ExApp.Range['E3:' + ColumnaNombre(Lista.Count) + '3'];
    ExRango.mergeCells := True;
    ExRango.interior.Color := 10066176;
    SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);

    //ExRango := ExApp.Range['A2:A3'];
    //SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);

    for i := 0 to (Lista.Count -1) do
      ExApp.Range[(ColumnaNombre(CInicio + i)) + IntToStr(rInicio)].value := lista[i];

    //for i := 0 to 4 do
    ExRango := ExApp.Range[ColumnaNombre(CInicio) + IntToStr(rInicio) +':'+ ColumnaNombre(CInicio + 3) + IntToStr(RInicio)];
    ExRango.ColumnWidth := 23;
    ExRango := ExApp.Range[ColumnaNombre(CInicio + 3) + IntToStr(rInicio) +':'+ ColumnaNombre(CInicio + i) + IntToStr(RInicio)];
    Exrango.ColumnWidth := 18;

    //Todas las Celdas
    ExRango := ExApp.Range[ColumnaNombre(CInicio) + IntToStr(rInicio) +':'+ ColumnaNombre(CInicio + (i-1)) + IntToStr(RInicio)];
    SetBorders(ExRango, xlThin, xlContinuous);

    //Color de Celda
    ExRango.Interior.Color := 10066176; //Verde shit
    SetCellProperties(ExRango,'Arial', 9, xlCenter, xlcenter, True, xlCOntext, True);

    ExApp.ActiveWindow.Zoom := 75;
    ExApp.Rows['6:6'].RowHeight := 45;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  End;
end;

procedure TFrmFormatosExcel.estirarColumnas(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  //Estira las columnas, haciendo que se acomoden al texto de dicha columna
  rangoExcel := Excel.Range[rango];
  rangoExcel.EntireColumn.Autofit;
end;

procedure TFrmFormatosExcel.estirarFila(Excel: Variant; rango: string;
  ancho: Integer);
begin
  //Estira el ancho de una Fila
  Excel.Rows[rango].RowHeight := ancho;
end;

procedure TFrmFormatosExcel.ExportarDesgloseGral;
var
  ExApp, book, Sheet, ExRango  : Variant;
  ColumnaInicial, FilaInicial   :Integer;
  incColumna, IncFila, incNivel: Integer;
  DesgloseXRegPat, DeslgoseXPago, CampoSeparador, NetoMemoria, LocNombreCeja: String;
  OldregPat: String;
  Salir   : Boolean;
  Cursor  : TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if dlgSaveExcel.Execute then
      begin
        //*Creando el objeto*/
        try
          ExApp := CreateOleObject('Excel.Application');
          ExApp.Visible       :=  true;
          ExApp.DisplayAlerts := False;
          ExApp.WorkBooks.Add;
          Book := ExApp.Workbooks[1];
        Except
          on e: Exception do
          begin
            Salir := true;
            InteliDialog.ShowModal('Aviso', 'La aplicación de Microfost Excel no se encuentra instalada en el equipo, informe a su administrador de sistema de este error', mtError, [mbOK], 0);
          end;
        end;
        //*iniciando proceso si no hay error*/
        if not Salir then
        begin
          while Book.Sheets.Count > 1 do
              Book.WorkSheets[1].Delete;

          Sheet := Book.sheets[book.Sheets.Count];
          sheet.Select;

          cdCejas.First;
          while Not cdCejas.Eof do
          begin
            incNivel := 0;
            ExRango := ExApp.Range['A1'];
            LocNombreCeja := cdCejas.FieldByName('NombreCeja').AsString;
            ExRango.Value := cdNomina.FieldByName('Titulo').AsString;
            ExRango.Font.bold   := True;
            ExRango.Font.UnderLine := 2;
            combinarYCentrarDatosEncabezados(ExApp,'A1:G1');

            ExApp.ActiveSheet.Name := LeftStr(LocNombreCeja, 31);
            ExApp.ActiveSheet.Move(Book.WorkSheets[book.Sheets.Count]);

            while incNivel < nivelDesglose.Count do
            Begin
              oldregPat:= '';

              DesgloseXRegPat :=  TDetDes(nivelDesglose.Objects[incNivel]).AgrupaRegPat;
              DeslgoseXPago := TDetDes(nivelDesglose.Objects[incNivel]).AgrupaFormaPago;
              CampoSeparador  :=     TDetDes(nivelDesglose.Objects[incNivel]).Separador;
              incFila := 0;
              ColumnaInicial := TDetDes(nivelDesglose.Objects[incNivel]).ColumnaInicial;
              FilaInicial    :=    TDetDes(nivelDesglose.Objects[incNivel]).FilaInicial;

              if cdDesgloseGral.ProviderName = '' then
                if not CrearConjunto(cdDesgloseGral, 'nom_detallenomina_desglosegeneral', ccCatalog) then
                  raise InteligentException.CreateByCode(5, ['nom_detallenomina_desglosegeneral']);

              if not CargarDatosFiltrados(cdDesgloseGral, 'ListaNominas,AgrupaRegPat,AgrupaPago,NombreCeja', [cdNomina.FieldByName('IdNomina').AsInteger, DesgloseXRegPat, DeslgoseXPago,LocNombreCeja]) then
                raise InteligentException.CreateByCode(6, ['nom_detallenomina_desglosegeneral', cdNomina.FieldByName('IdNomina').AsString, 'ListaNominas']);

              if cdDesgloseGral.Active then
                cdDesgloseGral.Refresh
              else
                cdDesgloseGral.Open;

              //*Título del Desglose*/
              ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila -1)].Value := TdetDes(nivelDesglose.Objects[incNivel]).Titulo;
              ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila -1)].Font.Bold := True;

              cdDesgloseGral.first;
              while not cdDesgloseGral.Eof do
              begin
                //*Titulo registro Patronal/
                if CampoSeparador <> '-9' then
                begin
                  if OldRegPat = '' then
                  begin
                    oldregPat := cdDesgloseGral.FieldByName(CampoSeparador).AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := OldregPat;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Font.Bold :=  True;
                    Inc(IncFila)
                  end;

                  if (OldregPat <> (cdDesgloseGral.FieldByName(CampoSeparador).AsString)) or (cdDesgloseGral.RecNo = cdDesgloseGral.recordcount) then
                  begin
                    if (cdDesgloseGral.RecNo = cdDesgloseGral.recordcount) then
                    begin
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila + 1)].Value := NetoMemoria;
                      ExRango     :=       ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + IntToStr(FilaInicial + IncFila + 1)];
                      ExRango.Font.Bold := True;
                      Exrango.Borders[xlEdgeTop].LineStyle := 1;
                      ExRango.Borders[xlEdgeTop].Weight    := 2;
                    end
                    else
                    begin
                      ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := NetoMemoria;
                      ExRango := ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)];
                      ExRango.Font.Bold := True;
                      Exrango.Borders[xlEdgeTop].LineStyle := 1;
                      ExRango.Borders[xlEdgeTop].Weight    := 2;
                    end;
                  end;

                  //*Titulo registro Patronal/
                  if (OldregPat <> (cdDesgloseGral.FieldByName(CampoSeparador).AsString)) then
                  begin
                    Inc(IncFila);
                    oldRegPat := cdDesgloseGral.FieldByName(CampoSeparador).AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := OldregPat;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Font.Bold :=  True;
                    Inc(IncFila);
                  end;

                  //*Conceptos por registro patronal*/
                  if (OldRegPat <> '') and (OldregPat =  (cdDesgloseGral.FieldByName(CampoSeparador).AsString)) then
                  begin
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Titulo').AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Importe').AsString;
                  end
                  else
                  begin
                    inc(incFila); //*incremento una fila para dejar un espacio entre registros patronales*/
                    oldRegPat := cdDesgloseGral.FieldByName(CampoSeparador).AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value := OldregPat;
                    ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value     :=  cdDesgloseGral.FieldByName('Titulo').AsString;
                    ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Importe').AsString;
                  end;
                end
                else
                begin
                   ExApp.Range[ColumnaNombre(ColumnaInicial) + intToStr(FilaInicial + incFila)].Value     :=  cdDesgloseGral.FieldByName('Titulo').AsString;
                   ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := cdDesgloseGral.FieldByName('Importe').AsString;
                end;
                NetoMemoria := cdDesgloseGral.FieldByName('Neto').AsString;
                inc(incFila);
                cdDesgloseGral.Next;
              end;
              if CampoSeparador = '-9' then
              begin
                ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)].Value := NetoMemoria;
                ExRango   :=         ExApp.Range[ColumnaNombre(ColumnaInicial + 1) + intToStr(FilaInicial + incFila)];
                ExRango.Font.Bold := True;
                Exrango.Borders[xlEdgeTop].LineStyle := 1;
                ExRango.Borders[xlEdgeTop].Weight    := 2;

                //*Desglose general*/
                if not CargarDatosFiltrados(cdDesgloses, 'ListaNominas,NombreCeja', [CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, LocNombreCeja]) then
                  raise InteligentException.CreateByCode(6, ['ListaNominas', CxDbGridNominas.DataController.DataSource.DataSet.FieldByName('IdNomina').AsString, 'IdNomina']);

                if cdDesgloses.Active then
                  cdDesgloses.Refresh
                else
                  cdDesgloses.Open;

                cdDesgloses.First;
                while not cdDesgloses.eof do
                begin
                  ExApp.Range[ColumnaNombre(1) + IntToStr(FilaInicial + incFila + 1)].Value := cdDesgloses.FieldByName('Referencia').AsString; //Pago
                  ExApp.Range[ColumnaNombre(2) + IntToStr(FilaInicial + incFila + 1)].Value :=       cdDesgloses.FieldByName('Neto').AsString; //Valor
                  ExApp.Range[ColumnaNombre(2) + IntToStr(FilaInicial + incFila + 1)].Style := 'Currency';
                  cdDesgloses.next;
                  Inc(incFila);
                end;
                ExApp.Columns[ColumnaNombre(1)].EntireColumn.Autofit;
              end;

              ExApp.Columns[ColumnaNombre(ColumnaInicial)].EntireColumn.Autofit;
              inc(incNivel);
            end;

            ExApp.ScreenUpdating := True;
            ExApp.ActiveWindow.DisplayGridLines := False;

            if cdCejas.recno < cdCejas.RecordCount then
              Book.sheets.Add;

            cdCejas.Next;
          End;

          try
            ExApp.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + 'DESGLOSE GENERAL DE NÓMINA.xls');
            InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
          except
            on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
          end;
        end;
      end;
    Finally
      cdDesgloseGral.Close;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFormatosExcel.filtros(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  //Pone filtros a las columnas
  rangoExcel := Excel.Range[rango];
  rangoExcel.AutoFilter;
end;

procedure TFrmFormatosExcel.FormatoAsimilados;
var
  Excel, Libro, Hoja : Variant;
  errorExcel : Boolean;
  nomNomina : TClientDataset;
begin
  //Crea el reporte en excel del reporte de asimilados dependiendo la nomina que se le pase como parametro
  try
    errorExcel          := False;
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible       :=  True;
    Excel.displayAlerts := False;
    Excel.WorkBooks.Add;
    Libro :=  Excel.WorkBooks[1];
    Hoja  :=     Libro.Sheets[1];
    Hoja.Select;
  except
    on e : Exception do
    begin
      errorExcel := True;
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
    end;
  end;

  if Not errorExcel then  //Si no hay error al crear el Excel, entonces continuar
  begin
    try
      try
        nomNomina := TClientDataset.Create(Self);

        if Not CrearConjunto(nomNomina, 'nom_nomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nom_nomina']);

        if Not CargarDatosFiltrados(nomNomina, 'IdNomina', [IdNomina]) then
          raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_nomina']);

        nomNomina.Open;

        encabezadoAsimilados(Excel, ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').asString, cdTipoNomina.FieldByName('Titulo').AsString,
                            DateToStr(nomNomina.FieldByName('FechaNomina').AsDateTime) + ' - ' + DateToStr(nomNomina.FieldByName('FechaTerminoNomina').AsDateTime),
                            'SINERGIA INTEGRAL EMPRESARIAL SA DE CV', ClientModule1.cdOrganizacion.FieldByName('Municipio').asString, ClientModule1.cdOrganizacion.FieldByName('tituloorganizacion').asString, DateToStr(nomNomina.FieldByName('FechaTerminoNomina').AsDateTime));

        cuerpoReporteAsimilados(Excel, IdNomina);

        Excel.activeWindow.zoom := 80;
        Excel.Cells.Columns.AutoFit;
        Excel.Columns['A:A'].ColumnWidth := 15;
        Excel.Columns['B:B'].ColumnWidth := 42;
        Excel.Columns['D:D'].ColumnWidth := 30;
        Excel.Columns['E:E'].ColumnWidth := 18;
      finally
        nomNomina.Destroy;
      end;
    except
      on e : Exception do
      begin
        MessageDlg(e.Message, mtInformation, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TFrmFormatosExcel.formatoConSignoDePesos(Excel: Variant;
  rango: string);
var
  rangoExcel : Variant;
begin
  //Pone formato de signo de pesos a los datos numericos en el archivo de excel
  rangoExcel := Excel.Range[rango];
  rangoExcel.NumberFormat := '_-[$$-409]* #,##0.00_ ;_-[$$-409]* -#,##0.00 ;_-[$$-409]* ""-""??_ ;_-@_ ';
end;

procedure TFrmFormatosExcel.FormatoEmbarcados;
Var
  continuar: Boolean;
  Cursor   : TCursor;
  rowIni, ColIni, renR, renC, j : Integer;
  Formula   : String;
begin
  //Codigo para imprimir reporte de embarcados [Codigo de SAUL que imprime reporte de personal abordo embarcados]
  try

    if cdDatos.ProviderName = '' then
      if not CrearConjunto(cdDatos, 'nom_detallenomina_embarcados', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nom_detallenomina_embarcados']);

    if CdDatos.Active then
      CdDatos.Close;

    if not CargarDatosFiltrados(cdDatos, 'IdNomina', [Seleccionados]) then
      raise InteligentException.CreateByCode(6, ['nom_detallenomina_embarcados', 'IdNomina', '2']);

    if cdDatos.Active then
      cdDatos.Refresh
    else
      cdDatos.Open;

    Try
      RInicio := 6;
      Cinicio := 1;
      Continuar     := True;
      ExApp := CreateOleObject('Excel.Application');
      ExApp.Visible := True;
      ExApp.DisplayAlerts := False;
      ExApp.Workbooks.Add;
    Except
      on e:Exception do
      begin
        Continuar := False;
        InteliDialog.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta característica', mtError, [mbOK], 0);
      end;
    End;

    //Si no se vá al chorizo continuar
    if Continuar then
    begin
      Encabezados(MiListaEncabezado);
      SetAgrupadores;

      ColIni :=     CInicio;
      RowIni := rInicio + 1;
      renR := 0;

      cdDatos.First;
      while not cdDatos.Eof do
      begin
        for j := 0 to (CamposBD.Count - 1) do
        begin
          ExApp.Range[ColumnaNombre(ColIni + j) + IntToStr(RowIni + RenR)].value := cdDatos.FieldByName(CamposBD[j]).AsString;
        end;
        inc(renR);
        cdDatos.Next;
      end;
      ExRango := ExApp.Range[ColumnaNombre(ColIni) + IntToStr(RowIni) + ':' + ColumnaNombre(CamposBd.Count) + IntToStr(RowIni + (renR - 1))];
      SetBorders(ExRango, xlThin, xlContinuous);
      SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, True, xlContext, False);

      //Formulas
      for j := 0 to ubicaFormula.Count - 1 do
      begin
        Formula := '=SUM(R[-' + intToStr(cdDatos.RecordCount) + ']C:R[-1]C)';
        ExRango :=    ExApp.Range[UbicaFormula[j] + intToStr(RowIni + Renr)];
        SetFormula(ExRango, Formula);
        SetBorders(ExRango, xlThin, xlContinuous);
        SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, True);
      end;

      SetFirmantes(Exapp, 1, CdDatos.RecordCount + 2, 'AQ-REXC001');

      ExRango := ExApp.Range['E:E'];
      setAsCurrency(ExRango);

      ExRango := ExApp.Range['F:F'];
      setAsCurrency(ExRango);

      ExRango := ExApp.Range['S:S'];
      setAsCurrency(ExRango);
    end;
  except
    on e: InteligentException do
    InteliDialog.ShowModal(e.Title,e.ClassName + ' ' + e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFormatosExcel.FormatoQuincenal;
var
  Excel, Libro, Hoja, Rango : Variant;
  errorExcel, error : Boolean;
  finPercepciones, inicioDeducciones, finDeducciones : Integer;
begin
  try
    try


        //Crea archivo de excel con los calculos de la nomina
        try
          errorExcel          := False;
          Excel := CreateOleObject('Excel.Application');
          Excel.Visible       :=  True;
          Excel.displayAlerts := False;
          Excel.WorkBooks.Add;
          Libro := Excel.WorkBooks[1];
          Hoja  :=    Libro.Sheets[1];
          Hoja.Select;
        except
          on e : Exception do
          begin
            errorExcel := True;
            MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
          end;
        end;

        //Si no hay error, entonces generar el reporte de Calculo de Nomina
        if Not errorExcel then
        begin
          cabeceraExcelCalculoNomina(Excel, cdNomina.FieldByName('TituloGeneral').AsString,
                                    cdNomina.FieldByName('Titulo').AsString, DateToStr(cdNomina.FieldByName('FechaPagoNomina').AsDateTime),
                                    ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').asString);

          columnasDelCuerpo(Excel, IdNomina, finPercepciones, inicioDeducciones, finDeducciones);

          datosDelCuerpo(Excel, IdNomina, finPercepciones, inicioDeducciones, finDeducciones);

          //Poner color morado a las cabeceras de las percepciones
          colorCeldas(Excel, 'H8:' + ColumnaNombre(finPercepciones) + '9', 10498160, 0, True);

          //Poner color gris a la cabecera total de percepciones
          colorCeldas(Excel, ColumnaNombre(finPercepciones + 1) + '8' + ':' + ColumnaNombre(finPercepciones + 1) + '9', 1, -0.249977111117893, False);

          //Poner color Rosa Fosforecente a las cabeceras de las deducciones
          colorCeldas(Excel, ColumnaNombre(inicioDeducciones) + '8' + ':' + ColumnaNombre(finDeducciones) + '9', 6684927, 0, True);

          //Poner color gris al total de deducciones y Neto a pagar
          colorCeldas(Excel, ColumnaNombre(finDeducciones + 1) + '8' + ':' + ColumnaNombre(finDeducciones + 2) + '9', 1, -0.249977111117893, False);

          //Poner el color Azul Verdoso con el texto "NOMINA"
          colorCeldas(Excel, 'G7:' + ColumnaNombre(finDeducciones + 2) + '7', 13434624, 0, True);
          combinarYCentrarDatosEncabezados(Excel, 'G7:' + ColumnaNombre(finDeducciones + 2) + '7');
          Excel.Range['G7'].Value := 'NÓMINA';
          fuenteTexto(Excel, 'G7', 'Arial', 9, 2, False, True);

          //Poner de color gris las cabeceras con los datos personales del empleado
          colorCeldas(Excel, 'A8:G9', 1, -0.249977111117893, False);
        end;


    finally
      try
        //Excel.Quit;
      except
        ;
      end;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFormatosExcel.FormatoResumen;
var
  Excel, Libro, Hoja : Variant;
  errorExcel : Boolean;
begin
  //Genera el reporte formato Resumen conforme al IdNomina que se le pase como parametro
  try
    errorExcel          := False;
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible       :=  True;
    Excel.displayAlerts := False;
    Excel.WorkBooks.Add;
    Libro :=  Excel.WorkBooks[1];
    Hoja  :=     Libro.Sheets[1];
    Hoja.Select;
  except
    on e : Exception do
    begin
      errorExcel := True;
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
    end;
  end;

  if Not errorExcel then
  begin
    cabeceraReporteResumen(Excel, IdNomina, cdNomina.FieldByName('Titulo').AsString);

    cuerpoReporteResumen(Excel, IdNomina);
  end;
end;

procedure TFrmFormatosExcel.formatoTextoPlano(Excel: Variant; rango,
  valor: string);
var
  rangoExcel : Variant;
begin
  //Convierte el formato de las celdas de excel a formato "Texto"
  rangoExcel := Excel.Range[rango];
  rangoExcel.NumberFormat := AnsiChar('@');
  rangoExcel.FormulaR1C1  :=         valor;
end;

Procedure TFrmFormatosExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if CdTiponomina.ProviderName <> '' then
    eliminarConjunto(CdTipoNomina);

  if CdNomina.ProviderName <> '' then
    EliminarConjunto(cdNomina);

  if CdListaConceptos.ProviderName <> '' then
    EliminarConjunto(cdListaConceptos);

  if cdImss.ProviderName <> '' then
    EliminarConjunto(cdImss);

  if cdFirmantes.ProviderName <> '' then
    EliminarConjunto(cdFirmantes);

  if cdDatos.ProviderName <> '' then
    EliminarConjunto(cdDatos);

  if CdFExcel.ProviderName <> '' then
    EliminarConjunto(cdFExcel);

  Action := Cafree;

end;

Procedure TFrmFormatosExcel.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
    raise inteligentException.CreateByCode(5, ['nom_tiponomina']);

  if not CrearConjunto(cdDatosExcel, 'nom_detallenomina_excel', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_detallenomina_excel']);

  if not CrearConjunto(cdNomina, 'nom_nomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_nomina']);

  if not CrearConjunto(cdListaConceptos, 'nom_listaconceptos_nomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_nomina']);

  if not CrearConjunto(CdImss, 'nuc_personalimss', ccUpdate) then
    raise InteligentConnection.CreateByCode(5, ['datos de IMSS']);

  if Not CrearConjunto(cdFirmantes, 'nuc_firmantesreportes', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_firmantesreportes']);

  if not crearConjunto(cdDesgloses, 'nom_detallenomina_desgloses', ccCatalog) then
    raise inteligentException.CreateByCode(5, ['nom_detallenomina_desgloses']);

  CrearNiveles(3,4,'Total General', '-1', '-1', '-9');
  CrearNiveles(6,4,'Desglose Por Reg. Patronal', 'Si', '-1', 'registroPatronal');
  CrearNiveles(9,4,'Desglose Por Forma de Pago', '-1', 'Si', 'Referencia');

  MiListaEncabezado := TStringList.Create;
  MiListaEncabezado.Add('A. PATERNO');
  MiListaEncabezado.Add('A. MATERNO');
  MiListaEncabezado.Add('NOMBRES');
  MiListaEncabezado.Add('CATEGORIA');
  MiListaEncabezado.Add('SUELDO POR GUARDIA');
  MiListaEncabezado.Add('SUELDO DIARIO');
  MiListaEncabezado.Add('EMBARCADO');
  MiListaEncabezado.Add('DESCANSO');
  MiListaEncabezado.Add('FECHA EMBARQUE PROGRAMADA');
  MiListaEncabezado.Add('FECHA DE EMBARQUE');
  MiListaEncabezado.Add('FECHA DE BAJADA');
  MiListaEncabezado.Add('DIAS PAGADOS AL CORTE ACTUAL');
  MiListaEncabezado.Add('DIAS PENDIENTES DE PAGO');
  MiListaEncabezado.Add('INICIA PERIODO PAGO');
  MiListaEncabezado.Add('CORTE PERIODO DE PAGO');
  MiListaEncabezado.Add('DIAS A PAGAR DURANTE EL PERIODO');
  MiListaEncabezado.Add('DIAS DE DESCANSO A PAGAR');
  MiListaEncabezado.Add('TOTAL DIAS A PAGAR AL CORTE');
  MiListaEncabezado.Add('TOTAL IMPORTE A PAGAR');

  CamposBd := TStringList.Create;
  CamposBd.Add('AMaterno');
  CamposBd.Add('APaterno');
  CamposBd.Add('Nombres');
  CamposBd.Add('TituloCargo');
  CamposBd.Add('SueldoGuardia');
  CamposBd.Add('SalarioDiario');
  CamposBd.Add('DiasTTotalGuardia');
  CamposBd.Add('DiasDescanso');
  CamposBd.Add('FechaReal');
  CamposBd.Add('FechaMovimiento');
  CamposBd.Add('FechaBajada');
  CamposBd.Add('DiasPagadosCorteActual');
  CamposBd.Add('DiasPendientePago');
  CamposBd.Add('FechaNomina');
  CamposBd.Add('FechaTerminoNomina');
  CamposBd.Add('DiasAPagar');
  CamposBd.Add('DescansoPagar');
  CamposBd.Add('DiasAPagar');
  CamposBd.Add('Neto');

  UbicaFormula := TStringList.Create;
  UbicaFormula.Add('E');
  UbicaFormula.Add('F');
  UbicaFormula.Add('S');
end;

procedure TFrmFormatosExcel.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      if not CargarDatosFiltrados(cdTipoNomina, 'Liga', ['Sin liga']) then
        raise InteligentException.CreateByCode(6, ['nom_tipoNomina', 'Sin liga', 'Liga']);

      cdTipoNomina.Open;

      if Not CargarDatosFiltrados(cdImss, 'IdPersonalImss', [-9]) then
        raise InteligentException.CreateByCode(6, ['Registros de Personal ante el IMSS', -9, 'IdPersonalImss']);

      cdImss.Open;

      if cdTipoNomina.RecordCount > 0 then
        CxLookUpTipoNomina.ItemIndex := 0;

      cxDbGridNominas.OptionsView.GroupByBox := False;
      CxPageFiltros.HideTabs := true
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    On e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFormatosExcel.fuenteLetras(Excel: Variant; rangoColumna,
  fuente: string; tamanoLetra: Integer; negritas: Boolean);
var
  rangoExcel : Variant;
begin
  //Fuente de letras para cualquier rango de celdas
  rangoExcel := Excel.Range[rangoColumna];
  rangoExcel.Font.Name          :=  fuente;
  rangoExcel.Font.Size      := tamanoLetra;
  rangoExcel.Font.Strikethrough :=   False;
  rangoExcel.Font.Superscript   :=   False;
  rangoExcel.Font.Subscript     :=   False;
  rangoExcel.Font.OutlineFont   :=   False;
  rangoExcel.Font.Shadow        :=   False;
  rangoExcel.Font.Underline     :=   -4142;
  rangoExcel.Font.ThemeColor    :=       2;
  rangoExcel.Font.TintAndShade  :=       0;
  rangoExcel.Font.ThemeFont     :=       0;
  rangoExcel.Font.Bold         := negritas;
end;

procedure TFrmFormatosExcel.fuenteTexto(Excel: Variant; rango, fuente: string;
  tamano, ColorTexto: Integer; cursiva, negritas: Boolean);
var
  rangoExcel : Variant;
begin
  //Configurar la fuente del texto del reporte del calculo de nomina
  rangoExcel := Excel.Range[rango];
  rangoExcel.Font.Name          :=  fuente;
  rangoExcel.Font.Size          :=  tamano;
  //Excel.Selection.Font.Color      := ColorTexto;
  rangoExcel.Font.Strikethrough :=   False;
  rangoExcel.Font.Superscript   :=   False;
  rangoExcel.Font.Subscript     :=   False;
  rangoExcel.Font.OutlineFont   :=   False;
  rangoExcel.Font.Shadow        :=   False;
  rangoExcel.Font.Underline     :=   -4142;
  rangoExcel.Font.ThemeColor := ColorTexto;
  rangoExcel.Font.TintAndShade  :=       0;
  //Excel.Selection.Font.ThemeFont     :=       0;
  rangoExcel.Font.Bold         := negritas;
  rangoExcel.Font.Italic        := cursiva;
end;

procedure TFrmFormatosExcel.ImprimeReporte(Opcion: Integer);
var
  Cursor : TCursor;
  idx: Integer;
begin
  Screen.Cursor := crDefault;
  Try
    try
      Screen.Cursor := crAppStart;
      Seleccionados := '';

      if CxDbgridNominas.Controller.SelectedRowCount = 0 then
        raise InteligentException.CreateByCode(24, ['Debes seleccionar una nómina de la lista.']);

      if CxdbGridNominas.Controller.SelectedRowCount > 1 then
        for idx := 0 to CxDbGridNominas.Controller.SelectedRowCount - 1 do
        begin
          if Idx <> (CxDbGridNominas.Controller.SelectedRowCount - 1) then
            Seleccionados := Seleccionados + VarToStr(CxDbGridNominas.Controller.SelectedRows[idx].Values[tcxColumnIdNomina.Index]) + ','
          Else
            Seleccionados := Seleccionados + VarToStr(CxDbGridNominas.Controller.SelectedRows[idx].Values[tcxColumnIdNomina.Index]);
        End
      else
        Seleccionados :=  VarToStr(CxDbGridNominas.Controller.SelectedRows[idx].Values[tcxColumnIdNomina.Index]);

      case Opcion of
        0: begin
          //Codigo de Saul
          FormatoEmbarcados;
        End;
        1: begin
          //Codigo de Marcos
          FormatoQuincenal;
        end;
        2: begin
          //Reporte de Asimilados
          FormatoAsimilados;
        end;
        3: begin
          //Reporte de Resumen
          FormatoResumen;
        end;
      end;

    finally
      Screen.Cursor := crDefault;
    end;
  Except
    On e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  End;
end;

procedure TFrmFormatosExcel.lineaInferior(Excel: Variant; rango: string);
var
  rangoExcel : Variant;
begin
  rangoExcel := Excel.Range[rango];

  rangoExcel.Borders[9].LineStyle := 1;
  rangoExcel.Borders[9].ColorIndex := 0;
  rangoExcel.Borders[9].TintAndShade := 0;
  rangoExcel.Borders[9].Weight := 2;
end;

procedure TFrmFormatosExcel.NavItemAsimiladosClick(Sender: TObject);
begin
  ImprimeReporte(2);
end;

procedure TFrmFormatosExcel.NavItemDesglosePagoClick(Sender: TObject);
begin
  DesglosePagos;
end;

procedure TFrmFormatosExcel.NavItemEmbarcadosClick(Sender: TObject);
begin
  ImprimeReporte(0);
end;

procedure TFrmFormatosExcel.NavItemNominaQuincenalClick(Sender: TObject);
begin
  ImprimeReporte(1);
end;

procedure TFrmFormatosExcel.NavItemResumenClick(Sender: TObject);
begin
  ImprimeReporte(3);
end;

procedure TFrmFormatosExcel.negritas(Excel: Variant; rango: string);
var
  excelRango : Variant;
begin
  excelRango := Excel.Range[rango];
  excelRango.Font.Bold := True;
end;

function TFrmFormatosExcel.obtenerPercepcionDeduccion(IdNomina, IdConcepto,
  IdPersonal: Integer): string;
begin
  //Devuelve la percepcion si es que se encuentra en la consulta de nom_detallenomina_excel, si no devuelve vacio
  try
    if cdDatosExcel.Locate('IdConcepto;IdPersonal', VarArrayOf([IdConcepto, IdPersonal]), []) then
      Result := cdDatosExcel.FieldByName('Importe').AsString
    else
      Result := '0';
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmFormatosExcel.SetAgrupadores;
begin
  ExRango           := ExApp.Range['G5:K5'];
  ExRango.Value := 'DURACIÓN DE LA GUARDIA';
  ExRango.mergeCells     :=     True;
  ExRango.Interior.Color := 10066176;
  SetBorders(ExRango, xlThin, xlContinuous);
  SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);

  ExRango       :=               ExApp.Range['N5:R5'];
  ExRango.Value := 'CALCULO PARA EL PAGO DEL PERIODO';
  ExRango.mergeCells     :=     True;
  ExRango.Interior.Color := 10066176;
  SetBorders(ExRango, xlThin, xlContinuous);
  SetCellProperties(ExRango, 'Arial', 9, xlCenter, xlCenter, False, xlContext, true);
end;

procedure TFrmFormatosExcel.setAsCurrency(Rango: Variant);
begin
  Rango.Style := 'Currency';
end;

procedure TFrmFormatosExcel.SetBorders(Rango: Variant; Grosor, Tipo: integer);
begin
    //Bordes
  Rango.Borders[xlEdgeTop].lineStyle          := Tipo;
  Rango.Borders[xlEdgeLeft].lineStyle         := Tipo;
  Rango.Borders[xlEdgeBottom].lineStyle       := Tipo;
  Rango.Borders[xlEdgeRight].lineStyle        := Tipo;
  Rango.Borders[xlInsideVertical].lineStyle   := Tipo;
  Rango.Borders[xlInsideHorizontal].lineStyle := Tipo;

  //Grosor de Linea
  Rango.Borders[xlEdgeTop].Weight          := Grosor;
  Rango.Borders[xlEdgeLeft].Weight         := Grosor;
  Rango.Borders[xlEdgeBottom].Weight       := Grosor;
  Rango.Borders[xlEdgeRight].Weight        := Grosor;
  Rango.Borders[xlInsideVertical].Weight   := Grosor;
  Rango.Borders[xlInsideHorizontal].Weight := Grosor;
end;

procedure TFrmFormatosExcel.SetCellProperties(Rango: Variant; Fuente: String;
  Tamano, AlineacionH, AlineacionV: Integer; AjustarTexto: Boolean;
  OrdenLectura: Integer; Negrita: Boolean);
begin
  //Fuente de celda
  ExRango.Font.Name :=  Fuente;
  ExRango.Font.Size :=  Tamano;
  ExRango.Font.Bold := Negrita;
  ExRango.HorizontalAlignment := AlineacionH;
  ExRango.VerticalAlignment   := AlineacionV;
  ExRango.WrapText     := AjustarTexto;
  ExRango.ReadingOrder := OrdenLectura;
end;

procedure TFrmFormatosExcel.SetFirmantes(var Excel: Variant; posX, PosY: Integer; CodigoReporte: String);
Var
  Rango: Variant;
  Cursor: TCursor;
  IncColumna: Integer;
  IncFila: Integer;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      incColumna := 0;
      incFila := 0;
      if CdFExcel.ProviderName = '' then
        if not CrearConjunto(cdFExcel, 'nuc_firmantesreportes', CCCatalog) then
          raise InteligentException.CreateByCode(5, ['nuc_firmantesreportes']);

      if not CargarDatosFiltrados(cdFExcel, 'Codigo,FechaAplicacion', [CodigoReporte,-1]) then
        raise InteligentException.CreateByCode(6, ['nuc_firmantesreportes', '','Codigo,Aplicacion']);

      if cdFExcel.Active then
        cdFExcel.Refresh
      else
        cdFExcel.Open;

      if cdFExcel.RecordCount = 0 then
        raise inteligentException.CreateByCode(24, ['No hay firmantes establecidos para este reporte.']);

      Rango := Excel.Range[LetraColumna(PosX)+ IntToStr(PosY)];

      //Ordenar por el numero de firmante para que lo imprima en ese orden
      cdFExcel.IndexFieldNames := 'NoFirmante';
      cdFExcel.First;
      while Not cdFExcel.Eof do
      begin
        Excel.Range[LetraColumna(PosX+IncColumna)+ IntToStr(Posy+8)] := cdFExcel.FieldByName('Accion').AsString;
        Excel.Range[LetraColumna(PosX+IncColumna)+ IntToStr(posy+9)] := '____________________________';
        Excel.Range[LetraColumna(PosX+IncColumna)+ IntToStr(posy+10)] := cdFExcel.FieldByName('NombreFirmante').AsString;
        Excel.Range[LetraColumna(PosX+incColumna)+ IntToStr(posy+11)] := cdFExcel.FieldByName('TituloCargo').AsString;
        incColumna := IncColumna + 3;
        cdFExcel.Next;
      end;
     Excel.Range[LetraColumna(Posx)+intToStr(posY+8)+':'+LetraColumna(posx+incColumna)+intToStr(posy+11)].HorizontalAlignment := XlCenter;
    finally
      Cursor := Screen.Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmFormatosExcel.SetFormula(Columna: Variant; Formula: String);
begin
  Columna.FormulaR1C1 := Formula;
end;

function TMisDesgloses.AddObject(const S: string; AObject: TObject): Integer;
begin
  inherited;
end;
end.
