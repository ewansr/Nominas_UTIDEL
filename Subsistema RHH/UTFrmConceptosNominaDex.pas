unit UTFrmConceptosNominaDex;

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
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxContainer, cxDBLookupComboBox, dxBar, cxBarEditItem, cxTextEdit, cxMemo,
  cxRichEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxRibbon, ExtCtrls, DBClient,
  Menus, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxLabel, StdCtrls,
  cxButtons, cxLookupEdit, cxDBLookupEdit, ClientModuleUnit1, UInteliDialog,
  URegistro, ComCtrls, dxCore, cxDateUtils;

type
  TConcepto = Class
    IdConcepto: Integer;
    IdTipoNomina: Integer;
  End;

  TFrmConceptoNominaDex = class(TForm)
    DxManager1: TdxBarManager;
    dxTabConceptos: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxPopupMenu: TdxRibbonPopupMenu;
    CxDbGridConceptos: TcxGridDBTableView;
    cxLevel1: TcxGridLevel;
    CxGridDatos: TcxGrid;
    cxrchdtFormula: TcxRichEdit;
    dxbrOpciones: TdxBar;
    dxBtnNuevo: TdxBarLargeButton;
    dxBtnEditar: TdxBarLargeButton;
    dxBtnEliminar: TdxBarLargeButton;
    dxBtnrefresh: TdxBarLargeButton;
    DxManager1Bar1: TdxBar;
    dxBarContainerItem1: TdxBarContainerItem;
    cxItemTipoNomina: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    CxColumnIdConcepto: TcxGridDBColumn;
    CxColumnCodigo: TcxGridDBColumn;
    CxColumnClave: TcxGridDBColumn;
    CxColumnOrden: TcxGridDBColumn;
    CxColumnTitulo: TcxGridDBColumn;
    CxColumnModo: TcxGridDBColumn;
    CxColumnImprime: TcxGridDBColumn;
    CxColumnConceptoGrav: TcxGridDBColumn;
    CxColumnConceptoCFDI: TcxGridDBColumn;
    pnl1: TPanel;
    dxBtnuevaAplicacion: TdxBarLargeButton;
    cdTipoNomina: TClientDataSet;
    cdFechaAplicacion: TClientDataSet;
    cdConceptos: TClientDataSet;
    cdConceptosUPT: TClientDataSet;
    dxBtnEliminarTodo: TdxBarLargeButton;
    dxBtnCopiarFormula: TdxBarLargeButton;
    dxBtnCopiarTodo: TdxBarLargeButton;
    dxBtnCerrar: TdxBarLargeButton;
    pnlDatos: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDbEdOrden: TcxDBTextEdit;
    cxDbEdCgoCpto: TcxDBTextEdit;
    cxDbEdClave: TcxDBTextEdit;
    cxDbEdTitulo: TcxDBTextEdit;
    cxDbEdDescripcion: TcxDBTextEdit;
    cxDbCbCpto: TcxDBComboBox;
    cxDbCbImprime: TcxDBComboBox;
    cxDbMeFormula: TcxDBMemo;
    cxDbDeAplic: TcxDBDateEdit;
    cxLabel9: TcxLabel;
    CxCbbConceptoCFDI: TcxDBLookupComboBox;
    cxlblCFDI: TcxLabel;
    cxlblGravado: TcxLabel;
    CxCbbGravado: TcxDBComboBox;
    pnlCopiar: TPanel;
    cxlbl1: TcxLabel;
    cxlblHacia: TcxLabel;
    cxlblFechaAplicacion: TcxLabel;
    cxlblTIPONOMINASEL: TcxLabel;
    CxLookUpTipoNomina: TcxLookupComboBox;
    cxDateEdit1: TcxDateEdit;
    cxbtnPegar: TcxButton;
    cxbtnCancela: TcxButton;
    procedure dxBtnCerrarClick(Sender: TObject);
    procedure dxBtnNuevoClick(Sender: TObject);
    procedure dxBtnEditarClick(Sender: TObject);
    procedure dxBtnEliminarClick(Sender: TObject);
    procedure dxBtnEliminarTodoClick(Sender: TObject);
    procedure dxBtnrefreshClick(Sender: TObject);
    procedure dxBtnCopiarFormulaClick(Sender: TObject);
    procedure dxBtnCopiarTodoClick(Sender: TObject);
    procedure dxBtnuevaAplicacionClick(Sender: TObject);
  private
    frmEmergente: TForm;
    Procedure CrearVentana(Forma: TForm; Panel: TPanel; Ancho, Alto: Integer; Padre: TComponent);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConceptoNominaDex: TFrmConceptoNominaDex;

implementation

{$R *.dfm}

procedure TFrmConceptoNominaDex.CrearVentana(Forma: TForm; Panel: TPanel; Ancho,
  Alto: Integer; Padre: TComponent);
begin
  try
    if assigned(Forma) then
      Forma.Destroy;

    Forma := TForm.Create(Self);

    Forma.Width   := Ancho;
    Forma.Height  :=  Alto;
    Forma.Caption := 'Agregar nueva fórmula.';
    Forma.BorderStyle :=    bsDialog;
    Forma.Position := poScreenCenter;
    Panel.Parent   :=          Forma;
    Panel.Align    :=       AlClient;
    Panel.Visible  :=           True;
    Forma.ShowModal;
  finally
    if Panel.Parent <> Self then
    begin
      Panel.Visible := False;
      Panel.Align  := AlNone;
      Panel.Parent  :=  Self;
    end;
  end;
end;

procedure TFrmConceptoNominaDex.dxBtnCerrarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConceptoNominaDex.dxBtnCopiarFormulaClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmConceptoNominaDex.dxBtnCopiarTodoClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmConceptoNominaDex.dxBtnEditarClick(Sender: TObject);
begin
  CrearVentana(FrmEmergente, pnlDatos, 410, 505, Self);
end;

procedure TFrmConceptoNominaDex.dxBtnEliminarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmConceptoNominaDex.dxBtnEliminarTodoClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmConceptoNominaDex.dxBtnNuevoClick(Sender: TObject);
begin
  CrearVentana(FrmEmergente, pnlDatos, 410, 505, Self);
end;

procedure TFrmConceptoNominaDex.dxBtnrefreshClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      if cdConceptos.Active then
        cdConceptos.Refresh
      else
        CdConceptos.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmConceptoNominaDex.dxBtnuevaAplicacionClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

end.
