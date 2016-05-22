unit UTFrmCalculoVacAguin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, ClientModuleUnit1, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxLabel, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, URegistro, UInteliDialog, DBClient, cxGridExportLink,
  ComObj, ShellAPI, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  ExtCtrls, Menus, StdCtrls, cxButtons, cxCustomPivotGrid, cxDBPivotGrid, cxExportPivotGridLink;

type
  TFrmCalculoVacAguin = class(TForm)
    CxGridEmpleados: TcxGrid;
    CxGridDatosEmpleado: TcxGridDBTableView;
    CxColumnNombreCOmpleto: TcxGridDBColumn;
    CxColumnIdPersonal: TcxGridDBColumn;
    CxColumnReingreso: TcxGridDBColumn;
    CxColumnTipoNomina: TcxGridDBColumn;
    CxLevelDatos: TcxGridLevel;
    dlgSave1: TSaveDialog;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    cxstylAntiguedadCero: TcxStyle;
    DxBManager1: TdxBarManager;
    DxBarOpciones: TdxBar;
    DxBarBtnCerrar: TdxBarLargeButton;
    DxBarBtnCargar: TdxBarLargeButton;
    DxBarBtnExportar: TdxBarLargeButton;
    DxBarBtnRecibos: TdxBarLargeButton;
    CdDatos: TClientDataSet;
    dsDatos: TDataSource;
    CxColumnSalarioDiario: TcxGridDBColumn;
    CxColumnAguinaldo: TcxGridDBColumn;
    CxColumnVacaciones: TcxGridDBColumn;
    CxColumnprimaVacacional: TcxGridDBColumn;
    CxColumnRetencionAguinaldo: TcxGridDBColumn;
    CxColumnRentencionVacaciones: TcxGridDBColumn;
    CxColumnNetoAguinaldo: TcxGridDBColumn;
    CxColumnNetoVacaciones: TcxGridDBColumn;
    pnlAnio: TPanel;
    cxCalcEdtAnio: TcxCalcEdit;
    CxBtnCargar: TcxButton;
    CxLbl1: TcxLabel;
    CxBtnCancel: TcxButton;
    CxGridDatosEmpleadoColumn1: TcxGridDBColumn;
    CxPGridMain: TcxDBPivotGrid;
    cxPGFieldEmpleado: TcxDBPivotGridField;
    CxPGFieldRegPat: TcxDBPivotGridField;
    cxPGFieldSueldo: TcxDBPivotGridField;
    cxPGFieldVacaciones: TcxDBPivotGridField;
    CxPGFieldSalarioDiario: TcxDBPivotGridField;
    CxPGFieldAguinaldo: TcxDBPivotGridField;
    CxPGFieldPrimaVacacional: TcxDBPivotGridField;
    CxPGFieldRetAguinaldo: TcxDBPivotGridField;
    CxPGFieldRetVacaciones: TcxDBPivotGridField;
    CxPGFieldNetoAguinaldo: TcxDBPivotGridField;
    CxPGFieldNetoVacaciones: TcxDBPivotGridField;
    cxPGFieldAguinaldoGrav: TcxDBPivotGridField;
    cxPGFieldPVGrav: TcxDBPivotGridField;
    cxPGFieldBaseGrav: TcxDBPivotGridField;
    cxPGFieldLIF: TcxDBPivotGridField;
    cxPGFieldEXE: TcxDBPivotGridField;
    cxPGFieldPSELI: TcxDBPivotGridField;
    cxPGFieldImpMarginal: TcxDBPivotGridField;
    cxPGFieldCuotaF: TcxDBPivotGridField;
    cxPGFieldSubs: TcxDBPivotGridField;
    cxPGFieldDif: TcxDBPivotGridField;
    cxPGFieldImp80: TcxDBPivotGridField;
    cxPGFieldRetSueldo: TcxDBPivotGridField;
    procedure FormCreate(Sender: TObject);
    procedure DxBarBtnExportarClick(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CxBtnCargarClick(Sender: TObject);
    procedure DxBarBtnCargarClick(Sender: TObject);
    procedure CdDatosAfterOpen(DataSet: TDataSet);
    procedure CdDatosAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculoVacAguin: TFrmCalculoVacAguin;

implementation

{$R *.dfm}

procedure TFrmCalculoVacAguin.CdDatosAfterOpen(DataSet: TDataSet);
begin
  dxBarBtnExportar.Enabled := (cdDatos.Active and (cdDatos.RecordCount > 0));
end;

procedure TFrmCalculoVacAguin.CdDatosAfterRefresh(DataSet: TDataSet);
begin
  dxBarBtnExportar.Enabled := (cdDatos.Active and (cdDatos.RecordCount > 0));
end;

procedure TFrmCalculoVacAguin.CxBtnCargarClick(Sender: TObject);
var
  cursor: TCursor;
  FechaInicio, FechaTermino: TDate;
  FInicio, FTermino: string;
begin
  try
    if Length(trim(cxCalcEdtAnio.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Año']);

    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      FechaInicio := EncodeDate(StrToInt(cxCalcEdtAnio.Text), 01, 01);
      FechaTermino := EncodeDate(StrToInt(cxCalcEdtAnio.Text), 12, 31);

      FInicio := ClientModule1.DatetoStrSql(FechaInicio);
      FTermino := ClientModule1.DatetoStrSql(FechaTermino);

      if not CargarDatosFiltrados(CdDatos, 'FechaInicio,FechaTermino', [Finicio, FTermino]) then
        raise InteligentException.CreateByCode(6, ['FechaInicio, FechaTermino, IdTipoNomina, Desglose', 'nom_concentrado_vacaciones', '#Valor']);

      if CdDatos.Active then
        CdDatos.Refresh
      else
        CdDatos.Open;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCalculoVacAguin.DxBarBtnCargarClick(Sender: TObject);
var
  gForm: TForm;
begin
  try
    gForm := TForm.Create(Self);
    gForm.Caption := 'Cargar Datos';
    gForm.Position := poScreenCenter;
    gForm.BorderStyle := bsDialog;
    pnlAnio.Parent := gForm;
    pnlAnio.Align := alClient;
    gform.Width := 270;
    gform.Height := 130;
    pnlAnio.Visible := True;
    gForm.ShowModal;
  finally
    pnlAnio.Visible := False;
    pnlAnio.Align := alNone;
    pnlAnio.Parent := Self;
  end;
end;

procedure TFrmCalculoVacAguin.DxBarBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCalculoVacAguin.DxBarBtnExportarClick(Sender: TObject);
var
  rutaArchivo: string;
  Excel, Sheet: Variant;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    cxExportPivotGridToExcel(rutaArchivo, CxPGridMain);

    Excel := CreateOleObject('Excel.Application');
    Excel.workbooks.Open(rutaArchivo);

    Excel.Range['A1'].Select;
    Excel.Selection.EntireRow.Insert;
    Excel.Selection.EntireRow.Insert;
    Excel.Selection.EntireRow.Insert;
    Excel.Range['A1'].Select;
    Excel.ActiveCell.FormulaR1C1 := 'UTILIZACION Y DISTRIBUCION ELECTRICA S.A. DE C.V.';

    //Excel.ActiveCell.Font
    Excel.ActiveWorkBook.Save;

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmCalculoVacAguin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmCalculoVacAguin.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdDatos, 'nom_concentrado_vacaciones', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_concentrado_vacaciones']);
end;

end.
