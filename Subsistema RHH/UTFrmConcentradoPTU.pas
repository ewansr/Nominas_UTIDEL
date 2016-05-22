unit UTFrmConcentradoPTU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, cxLabel, cxSplitter, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxBar,
  DBClient, ClientModuleUnit1, UInteliDialog, cxGridExportLink, ComObj, ShellAPI,
  frxClass, frxDBSet, rhh_genericclasses;

type
  TFrmConcentradoPTU = class(TForm)
    DxBManager1: TdxBarManager;
    DxBarOpciones: TdxBar;
    DxBarBtnCerrar: TdxBarLargeButton;
    DxBarBtnCargar: TdxBarLargeButton;
    DxBarBtnExportar: TdxBarLargeButton;
    CxGridEmpleados: TcxGrid;
    CxGridDatosEmpleado: TcxGridDBTableView;
    CxColumnNombreCOmpleto: TcxGridDBColumn;
    CxColumnIdPersonal: TcxGridDBColumn;
    CxColumnReingreso: TcxGridDBColumn;
    CxColumnBaja: TcxGridDBColumn;
    CxLevelDatos: TcxGridLevel;
    CxGridNominas: TcxGrid;
    CxGridDNominas: TcxGridDBTableView;
    CxLevelDatosN: TcxGridLevel;
    CxSplit1: TcxSplitter;
    CxColumnMesInicial: TcxGridDBColumn;
    CxColumnMesFinal: TcxGridDBColumn;
    CxColumnDiasT: TcxGridDBColumn;
    CxColumnFactorDias: TcxGridDBColumn;
    CxColumnXDiasTrab: TcxGridDBColumn;
    CxColumnFactorSalario: TcxGridDBColumn;
    CxColumnXSSueldos: TcxGridDBColumn;
    CxColumnTotalPTu: TcxGridDBColumn;
    CxColumnPTUExcento: TcxGridDBColumn;
    CxColumnPTUGrav: TcxGridDBColumn;
    CxColumnSubsidio: TcxGridDBColumn;
    CxColumnNeto: TcxGridDBColumn;
    CdNominas: TClientDataSet;
    dsNominas: TDataSource;
    CdPTU: TClientDataSet;
    dsPTU: TDataSource;
    CxColumnNomina: TcxGridDBColumn;
    CxColumnAnio: TcxGridDBColumn;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    cxstylAntiguedadCero: TcxStyle;
    CxColumnIdNomina: TcxGridDBColumn;
    dlgSave1: TSaveDialog;
    CxColumnTipoNomina: TcxGridDBColumn;
    CxColumnRetencionISR: TcxGridDBColumn;
    DxBarBtnRecibos: TdxBarLargeButton;
    FrxReportRecibos: TfrxReport;
    FrxCdDatosPTU: TfrxDBDataset;
    CdDatosEmpresa: TClientDataSet;
    FrxCdDatosEmpresa: TfrxDBDataset;
    btnImprimir: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure DxBarBtnCargarClick(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DxBarBtnExportarClick(Sender: TObject);
    procedure FrxReportRecibosGetValue(const VarName: string;
      var Value: Variant);
    procedure DxBarBtnRecibosClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConcentradoPTU: TFrmConcentradoPTU;

implementation

{$R *.dfm}

procedure TFrmConcentradoPTU.btnImprimirClick(Sender: TObject);
begin
  //Variables heredadas de la clase rhh_genericclasses, se utiliza para imprimir el reporte.
  Reporte := 'ReciboPTU';
  compReporte := FrxReportRecibos;
  CompDataSetReporte := FrxCdDatosPTU;

  LocalImprimeReporte(CdPTU ,CxGridDatosEmpleado ,'Concentrado PTU');

end;

procedure TFrmConcentradoPTU.DxBarBtnCargarClick(Sender: TObject);
var
  idx: Integer;
  ListaNominas: string;
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      idx := 0;
      ListaNominas := ' ';

      Screen.Cursor := crAppStart;

      for idx := 0 to CxGridDNominas.Controller.SelectedRowCount - 1 do
        ListaNominas :=  ListaNominas + ',' + VarToStr(CxGridDNominas.Controller.SelectedRows[Idx].Values[CxColumnIdNomina.Index]);

      if not CargarDatosFiltrados(CdPTU, 'ListaNominas', [ListaNominas]) then
        raise InteligentException.CreateByCode(6, ['TipoCalculo','ListaNominas','nom_concentrado_ptu']);

      if CdPTU.Active then
        CdPTU.Refresh
      else
        CdPTU.Open;

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmConcentradoPTU.DxBarBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConcentradoPTU.DxBarBtnExportarClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  try
    if Not (CdPTU.Active) or (CdPTU.Active and (CdPTU.RecordCount = 0))then
      raise InteligentException.CreateByCode(24, ['No exiten registros que se puedan exportar']);

    dlgSave1.FileName := '';
    if dlgSave1.Execute then
    begin

      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, CxGridEmpleados);

      Excel := CreateOleObject('Excel.Application');
      Excel.workbooks.Open(rutaArchivo);

      Excel.Range['A1'].Select;
      Excel.Selection.EntireRow.Insert;
      Excel.Selection.EntireRow.Insert;
      Excel.Selection.EntireRow.Insert;
      Excel.Range['A1'].Select;
      Excel.ActiveCell.FormulaR1C1 := 'UTILIZACION Y DISTRIBUCION ELECTRICA SA DE CV';
      //Excel.ActiveCell.Font
      Excel.ActiveWorkBook.Save;

       if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmConcentradoPTU.DxBarBtnRecibosClick(Sender: TObject);
begin
  try
    if Not (CdPTU.Active) or (CdPTU.Active and (CdPTU.RecordCount = 0))then
      raise InteligentException.CreateByCode(24, ['No exiten registros que se puedan mostrar en el reporte']);

    EncabezadoReportes(CdDatosEmpresa, 18);
    ClientModule1.ImprimeReporte('ReciboPTu.fr3', FrxReportRecibos);
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType,[mbOK], 0);

  end;
end;

procedure TFrmConcentradoPTU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConcentradoPTU.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdNominas, 'nom_nomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_nomina']);

  if not CrearConjunto(CdPTU, 'nom_concentrado_ptu', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_concentrado_ptu']);

  if not CargarDatosFiltrados(CdNominas, 'TipoCalculo', ['PTU']) then
    raise InteligentException.CreateByCode(6, ['TipoCalculo','nom_concentrado_ptu','PTU']);

  if CdNominas.Active then
    CdNominas.Refresh
  else
    CdNominas.Open;

end;

procedure TFrmConcentradoPTU.FrxReportRecibosGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'DIRECCIONCOMPLETA' then
    Value := 'PRUEBA';

  if VarName = 'CANTIDADLETRA' then
    Value := Concat('(',UpperCase(LetrasNumeros(CdPTU.FieldByName('Neto').AsFloat, 'PESOS', '/100 M.N.', 2)), ')');

end;

end.
