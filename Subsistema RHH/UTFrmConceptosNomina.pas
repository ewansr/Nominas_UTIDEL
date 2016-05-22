unit UTFrmConceptosNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, JvExControls,
  JvLabel, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, Mask, AdvGlowButton,
  ActnCtrls, ActnList, ActnMan, ToolWin, Ribbon, Menus, RibbonLunaStyleActnCtrls,
  ComCtrls, AdvShapeButton,xDatabase, AdvToolBar, AdvSmoothButton, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter, dxBar,
  cxClasses, dxRibbon, cxContainer, cxEdit, cxGroupBox, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxTextEdit, cxLabel, cxMemo, cxCalendar,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxRibbonCustomizationForm, JvExMask, JvToolEdit,
  JvBaseEdits, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, URegistro,
  cxGridDBDataDefinitions, StrUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl, cxPC, dxDockControl, dxDockPanel, dxLayoutLookAndFeels,
  cxDBLabel, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TSigno = (sgNil, sgSuma, sgResta, sgMult, sgDiv, sgResiduo, sgEQ, sgMT, sgME, sgGT, sgGE, sgNE, sgRango, sgInv);
  TTipo = (teNumero, teEmpleado, teNomina, teExtra, teSistema, teOAritmetico, teOLogico, teCondicion, teParentesis1, teParentesis2, teComa, teInvertido, teRango, teFuncion, teTruncarDecimales, teRedondearDecimales, teFormula);
  TBorrarElemento = (beIzquierda, beActual);
  TPosicion = (tiDerecha, tiIzquierda);

  TConcepto = Class
    Tipo: TTipo;
    Estilo: TFontStyles;
    Color: TColor;
    Cadena: String;
    Leyenda: String;
  End;

  TErrores = Class
    Idx: Integer;
  End;

  TFrmConceptosNomina = class(TForm)
    cdConcepto: TClientDataSet;
    dsConcepto: TDataSource;
    cdEmpleado: TClientDataSet;
    memEmpleado: TClientDataSet;
    memEmpleadoClave: TStringField;
    memEmpleadoTipo: TStringField;
    dsEmpleado: TDataSource;
    cdBuscar: TClientDataSet;
    PnlSeleccion: TPanel;
    Panel10: TPanel;
    BtnClose: TAdvShapeButton;
    PanelSelect: TPanel;
    BtnSelect: TAdvShapeButton;
    dxbrmngr1: TdxBarManager;
    dxrbn1Tab1: TdxRibbonTab;
    dxrbn1: TdxRibbon;
    Paneldxbrmngr1Bar1: TdxBar;
    btn_editar: TdxBarLargeButton;
    btn_refresh: TdxBarButton;
    btn_Imprimir: TdxBarButton;
    btn_Nuevo: TdxBarButton;
    btn_Eliminar: TdxBarButton;
    AdvGlowButton1: TdxBarLargeButton;
    cxGBConceptos: TcxGroupBox;
    dsBuscar: TDataSource;
    cdLeyenda: TClientDataSet;
    memDatosEmpleado: TClientDataSet;
    memDatosEmpleadoClave: TStringField;
    memDatosEmpleadoNombre: TStringField;
    cdDatosEmpleado: TClientDataSet;
    pnlEditarNumero: TPanel;
    lblNumeroOriginal: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    edtNumero: TJvCalcEdit;
    NumeroAceptar: TAdvGlowButton;
    NumeroCancelar: TAdvGlowButton;
    pnleditar: TPanel;
    Splitter3: TSplitter;
    pnlDatos: TPanel;
    mCadenaEdit: TRichEdit;
    Panel15: TPanel;
    cxGrid2: TcxGrid;
    tvDatosEmpleado: TcxGridDBTableView;
    deClave: TcxGridDBColumn;
    deNombre: TcxGridDBColumn;
    tvCalculos: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2Level2: TcxGridLevel;
    dsDatosEmpleado: TDataSource;
    Panel18: TPanel;
    Panel19: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel21: TPanel;
    sbFormulaEdit: TStatusBar;
    cdConceptoConsulta: TClientDataSet;
    dsConceptoConsulta: TDataSource;
    CodigoConcepto: TcxGridDBColumn;
    tvCalculosColumn2: TcxGridDBColumn;
    Panel14: TPanel;
    btn_Validar: TcxButton;
    cxGrid2Level3: TcxGridLevel;
    tvFormulas: TcxGridDBTableView;
    NombreFormula: TcxGridDBColumn;
    cdFormulas: TClientDataSet;
    cdFormulasFormula: TStringField;
    dsFormulas: TDataSource;
    cdFormulasTitulo: TStringField;
    TituloFormula: TcxGridDBColumn;
    cdFormulasGrupo: TStringField;
    GrupoFormula: TcxGridDBColumn;
    cdExtra: TClientDataSet;
    pnlFiltro: TPanel;
    lyFiltrosGroup_Root: TdxLayoutGroup;
    lyFiltros: TdxLayoutControl;
    cbbTipoNomin: TcxComboBox;
    lyFiltrosItem1: TdxLayoutItem;
    dxDockSite1: TdxDockSite;
    dxPanelListaFormulas: TdxDockPanel;
    dxPanelDetalle: TdxDockPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    JvLabel2: TJvLabel;
    pnlFormulaColor: TPanel;
    mCadena: TRichEdit;
    Panel7: TPanel;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    cxGridConceptos: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdConceptos: TcxGrid;
    cxColCodigo: TcxGridDBColumn;
    cxColClave: TcxGridDBColumn;
    cxColConcepto: TcxGridDBColumn;
    cxColFechaAplicacion: TcxGridDBColumn;
    cxColImprimir: TcxGridDBColumn;
    cxColOrden: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    DbLblTitulo: TcxDBLabel;
    lyLayoutControl1Item1: TdxLayoutItem;
    DbLblNombre: TcxDBLabel;
    lyLayoutControl1Item11: TdxLayoutItem;
    DbLblModo: TcxDBLabel;
    lyLayoutControl1Item12: TdxLayoutItem;
    DbLblImprime: TcxDBLabel;
    lyLayoutControl1Item13: TdxLayoutItem;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxstyl2: TcxStyle;
    dxLayoutDockSite1: TdxLayoutDockSite;
    btnNuevo: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnActualizar: TdxBarLargeButton;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    cxColTitulo: TcxGridDBColumn;
    cxColClave2: TcxGridDBColumn;
    Lbl1: TcxLabel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxBarDockControl1: TdxBarDockControl;
    Panel17: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    cxDbEdOrden: TcxDBTextEdit;
    cxDbEdClave: TcxDBTextEdit;
    cxDbEdDescripcion: TcxDBTextEdit;
    cxDbEdTitulo: TcxDBTextEdit;
    cxDbCbCpto: TcxDBComboBox;
    cxDbDeAplic: TcxDBDateEdit;
    cxDbEdCgoCpto: TcxDBTextEdit;
    cxDbCbImprime: TcxDBComboBox;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup;
    dxbrmngr1Bar1: TdxBar;
    btnSave: TdxBarLargeButton;
    btnCancelBar: TdxBarLargeButton;
    btnValidar: TdxBarLargeButton;
    dbmemo1: TDBMemo;
    cbbConceptoCFDI: TcxDBLookupComboBox;
    lyCFDi: TdxLayoutItem;
    cdCFDi: TClientDataSet;
    dsCFDI: TDataSource;
    dxPopup1: TdxBarPopupMenu;
    btnCerrar: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTiposChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FechaAplicChange(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure mCadenaSelectionChange(Sender: TObject);
    procedure mCadenaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mCadenaKeyPress(Sender: TObject; var Key: Char);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure mCadenaEditDblClick(Sender: TObject);
    procedure mCadenaEditDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure mCadenaEditDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure mCadenaEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mCadenaEditKeyPress(Sender: TObject; var Key: Char);
    procedure mCadenaEditMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure mCadenaEditMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NumeroAceptarClick(Sender: TObject);
    procedure LocFormaEditarShow(Sender: TObject);
    procedure tvCalculosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvDatosEmpleadoCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_ValidarClick(Sender: TObject);
    procedure tvFormulasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbbTipoNominPropertiesChange(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelBarClick(Sender: TObject);
    procedure cxDbCbCptoPropertiesChange(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure edtNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    CurrentAdvPage: TAdvPage;
    _RegistroActual: TLista;
    Form: TForm;
    IdxIzquierda: Integer;
    IdxActual: Integer;
    CambiaElPedo: Boolean;
    EstaDentro: Word;
    Pulsado: Boolean;
    CambiosRealizados: Boolean;
    Insertar: Boolean;
    FrmParametros: TForm;
    procedure CargarDatosInicio;
    procedure VerificaDatosEmpleado;
    function TransCadena(Cadena: String; Leyenda: String): String;
    function BuscarLeyendaConcepto(DataSet: TClientDataSet;
      Clave: String): String;
    procedure BorrarElemento(Modo: TBorrarElemento);
    procedure MostrarFormula(Posicion: Integer);
    function Convierte(myLista: TStringList): String;
    procedure EditarNumero(Envio: Char; Con: TConcepto);
    procedure AgregarElemento(Envio: String; LocTipo: TTipo;
      LocEstilo: TFontStyles; LocColor: TColor);
    function ValidaFormula(var pLista: TStringList;
      MostrarErrores: Boolean = True): Boolean;
    function InterpretaFormula(var pLista: TStringList;
      Inicio, Termino: Integer): Boolean;
    procedure VerificaSiAgrega(Key: Char);
  public
    ModoSeleccion:Boolean;
    Lista: TStringList;
    function SeleccionarItem: TLista;
  end;

const
  IncreOrden = 10000;
  ListaColores: Array[0..16] of TColor = (clBlack, clMaroon, clGreen, clOlive, clNavy, clPurple, clTeal, clGray, clSilver, clRed, clLime, clYellow, clBlue, clFuchsia, clAqua, clLtGray, clDkGray);
  ListaFunciones: Array[0..1] of String = ('ENTERO', 'ECIMAL');
  SepLey = ' = ';

var
  FrmConceptosNomina: TFrmConceptosNomina;

implementation

uses UTFrmDatosConceptosNomina, Unit2;

{$R *.dfm}

function sNombre(Caracter: Char): String;
begin
  case Caracter of
    '+': Result := 'Suma';
    '-': Result := 'Resta';
    '*': Result := 'Multiplicación';
    '/': Result := 'División';
    '\': Result := 'División entera';
  end;
end;

procedure TFrmConceptosNomina.cbbTipoNominPropertiesChange(Sender: TObject);
begin
  cbtiposChange(cbbtiponomin);
end;

procedure TFrmConceptosNomina.cbtiposChange(Sender: TObject);
var
  Cursor: TCursor;
  anio, mes, dia: Word;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crAppStart;

    //Decodedate(FechaAplic.Date,anio, mes, dia);
    cdConcepto.Close;
//    CargarDatosFiltrados(cdConcepto, 'IdTipoNomina,Aplicacion', [Integer(cbbtiponomin.Items.Objects[cbbtiponomin.ItemIndex]), anio]);
    CargarDatosFiltrados(cdConcepto, 'IdTipoNomina,Todos', [Integer(cbbtiponomin.Properties.Items.Objects[cbbtiponomin.ItemIndex]), 'Si']);
    cdConcepto.Open;

//    CargarDatosFiltrados(cdLeyenda, 'IdTipoNomina,Aplicacion', [Integer(cbbtiponomin.Items.Objects[cbbtiponomin.ItemIndex]), anio]);
    CargarDatosFiltrados(cdLeyenda, 'IdConcepto,IdNomina,IdTipoNomina', [-1, -1, Integer(cbbtiponomin.Properties.Items.Objects[cbbtiponomin.ItemIndex])]);
    cdLeyenda.Open;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmConceptosNomina.cxButton2Click(Sender: TObject);
begin
  cdBuscar.Cancel;
end;

procedure TFrmConceptosNomina.cxDbCbCptoPropertiesChange(Sender: TObject);
begin
  try

    if cxDbCbCpto.Text <> '' then
    begin
      if cdbuscar.active and (cdBuscar.state in [dsedit, dsinsert]) then
      begin
        lyCFDi.Visible := (cxDbCbCpto.Text = 'PERCEPCION') OR (cxDbCbCpto.Text = 'DEDUCCION');

        if not lyCFDi.Visible then
          cdBuscar.FieldByName('IdConceptoCFDi').Clear;

        cdCFDi.Filtered := false;
        cdCFDi.Filter := 'Modo = ' + QuotedStr(cxDbCbCpto.Text);
        cdCFDi.Filtered := true;
      end;
    end;
  finally
  end;
end;

procedure TFrmConceptosNomina.FechaAplicChange(Sender: TObject);
begin
  cbbtiponomin.Properties.OnChange(cbbtiponomin);
end;

procedure TFrmConceptosNomina.DBGrid1DblClick(Sender: TObject);
begin
  if not ModoSeleccion then
    Btn_Editar.Click
  else
    BtnSelect.Click;
end;

procedure TFrmConceptosNomina.DBMemo1Change(Sender: TObject);
begin
  if cdConcepto.Active then
    TransCadena(cdConcepto.FieldByName('Cadena').AsString, cdConcepto.FieldByName('Nombre').AsString);
end;

procedure TFrmConceptosNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Insertar then
    SetRegistry('\Ventanas', '\' + Self.Name, 'Insertar', 'True')
  else
    SetRegistry('\Ventanas', '\' + Self.Name, 'Insertar', 'False');

  EliminarConjunto([cdConcepto, cdBuscar, cdLeyenda]);
  if cdEmpleado.ProviderName <> '' then
    EliminarConjunto(cdEmpleado);
  Form2.tbMain.ActivePage := CurrentAdvpage;
  LiberarVentana(Self, Action);
end;

procedure TFrmConceptosNomina.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
  i, Idx: Integer;
  myLista: TStringList;
begin
  ClientModule1.ComponentColor(Self);
  ModoSeleccion := False;
  AccedeACoordenadas(Self);

  Lista := TStringList.Create;
  Lista.Clear;
  IdxIzquierda := -1;
  IdxActual := -1;
  CambiaElPedo := True;
  memDatosEmpleado.CreateDataSet;
  memDatosEmpleado.Open;

  memEmpleado.CreateDataSet;

  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      // Mostrar el menú de opciones en el menú principal
      CurrentAdvPage := Form2.tbMain.ActivePage;

      //PageArchivo.Parent := Form2.tbMain;
      //PageArchivo.PageIndex := 0;
      Form2.tbMain.ActivePageIndex := 0;

      if Not CrearConjunto(cdLeyenda, 'cxc_leyenda', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Leyenda de Conceptos de Nómina']);

      if Not CrearConjunto(cdConcepto, 'nom_concepto', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos de Nómina']);

      if Not CrearConjunto(cdConceptoConsulta, 'nom_concepto', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos de Nómina']);

      if Not CrearConjunto(cdDatosEmpleado, 'nuc_personal_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Datos de Personal']);

      if Not CrearConjunto(cdBuscar, 'nom_concepto', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Conceptos de Nómina']);

      if Not CrearConjunto(cdExtra, 'nom_conceptoextra', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos Extra']);

      if Not CargarDatosFiltrados(cdDatosEmpleado, 'IdNomina,IdPersonal,CodigoPersonal', [-9, -9, -9]) then
        raise InteligentException.CreateByCode(16, ['Datos de Personal']);


     if Not CrearConjunto(cdCFDi, 'nom_tiposconcepto_cfdi', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['ListaConceptos CFDI']);

      if Not CargarDatosFiltrados(cdCFDi, 'IdConceptoCFDI', [-1]) then
        raise InteligentException.CreateByCode(16, ['ListaConceptos CFDI']);


      cdCFDi.Open;

      cdDatosEmpleado.Open;
      cdBuscar.Open;

      myLista := TStringList.Create;
      myLista.CommaText := cdDatosEmpleado.FieldDefList.CommaText;
      myLista.Sort;

      for i:= 0 to myLista.Count -1 do
      begin
        Idx := cdDatosEmpleado.FieldDefs.IndexOf(myLista[i]);

        memDatosEmpleado.Append;
        if cdDatosEmpleado.FieldDefs.Items[Idx].DataType in [ftInteger, ftFloat] then
        begin
          memDatosEmpleado.FieldByName('Clave').AsString := cdDatosEmpleado.FieldDefs.Items[Idx].Name;
          memDatosEmpleado.FieldByName('Nombre').AsString := cdDatosEmpleado.FieldDefs.Items[Idx].DisplayName;
          memDatosEmpleado.Post;
        end;
      end;
      memDatosEmpleado.First;

      cdFormulas.CreateDataSet;
      cdFormulas.Append;
      cdFormulas.FieldByName('Formula').AsString := 'ENTERO';
      cdFormulas.FieldByName('Titulo').AsString := 'Obtiene la parte entera del valor';
      cdFormulas.FieldByName('Grupo').AsString := 'FORMULAS';
      cdFormulas.Post;

      cdFormulas.Append;
      cdFormulas.FieldByName('Formula').AsString := 'DECIMAL';
      cdFormulas.FieldByName('Titulo').AsString := 'Obtiene la parte decimal del valor';
      cdFormulas.FieldByName('Grupo').AsString := 'FORMULAS';
      cdFormulas.Post;

      cdFormulas.Append;
      cdFormulas.FieldByName('Formula').AsString := 'SI';
      cdFormulas.FieldByName('Titulo').AsString := 'Realiza una condición y devuelve el resultado para verdadero y falso';
      cdFormulas.FieldByName('Grupo').AsString := 'INTERNO';
      cdFormulas.Post;

      cdFormulas.First;

      cdFormulas.Append;
      cdFormulas.FieldByName('Formula').AsString := 'CALCULARJORNADA';
      cdFormulas.FieldByName('Titulo').AsString := 'Calcular la jornada por día de trabajo';
      cdFormulas.FieldByName('Grupo').AsString := 'SISTEMA';
      cdFormulas.Post;

      cdFormulas.Append;
      cdFormulas.FieldByName('Formula').AsString := 'CALCMINNT';
      cdFormulas.FieldByName('Titulo').AsString := 'Calcular los minutos no trabajados';
      cdFormulas.FieldByName('Grupo').AsString := 'SISTEMA';
      cdFormulas.Post;

      cdExtra.Open;
      while Not cdExtra.Eof do
      begin
        cdFormulas.Append;
        cdFormulas.FieldByName('Formula').AsString := cdExtra.FieldByName('ClaveConcepto').AsString;
        cdFormulas.FieldByName('Titulo').AsString := cdExtra.FieldByName('Titulo').AsString;
        cdFormulas.FieldByName('Grupo').AsString := 'EXTRA';
        cdFormulas.Post;

        cdExtra.Next;
      end;

      cdExtra.Close;
      EliminarConjunto(cdExtra);

      tvFormulas.DataController.Groups.FullExpand;

      CargarDatosInicio;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmConceptosNomina.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 59 then
    CargarDatosInicio;
end;

procedure TFrmConceptosNomina.FormShow(Sender: TObject);
begin
  try
    Insertar := VarRegistry('\Ventanas', '\' + Self.Name, '\Insertar') <> 'False';
  except
    Insertar := True;
  end;

  if Insertar then
    sbFormulaEdit.Panels[1].Text := 'Insertar'
  else
    sbFormulaEdit.Panels[1].Text := 'Sobreescribir';

  if ModoSeleccion then
    PanelSelect.Visible := True;
end;

procedure TFrmConceptosNomina.mCadenaEditDblClick(Sender: TObject);
var
  Concepto: TConcepto;

begin
  Concepto := TConcepto(Lista.Objects[IdxActual]);
  case Concepto.Tipo of
    teNumero: EditarNumero(#0, Concepto);
  end;
end;

procedure TFrmConceptosNomina.mCadenaEditDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Control: TControl;
  DataSet: TDataSet;
begin
  Control := TcxDragControlObject(Source).Control;
  if (Control is TcxGridSite) then
  begin
    DataSet := TcxGridDBDataController(TcxGridSite(Control).GridView.DataController).DataSet;
  end;
end;

procedure TFrmConceptosNomina.mCadenaEditDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  pMouse, oMouse: TPoint;
  LineIndex, LineLength: Integer;
begin
  Accept := False;

  // Encontrar la posición relativa al RichEdit del Mouse
  //oMouse := Control.ScreenToClient(Mouse.CursorPos);
  {GetCursorPos(pMouse);
  oMouse := mCadenaEdit.ScreenToClient(pMouse);

  LineIndex := mCadenaEdit.Perform(EM_LINEINDEX, oMouse.Y, 0);
}
  {if LineIndex = -1 then
    mCadenaEdit.SelStart := Length(mCadenaEdit.Text)
  else}
{  begin
    LineLength := mCadenaEdit.Perform(EM_LINELENGTH, LineIndex, 0);
    if oMouse.Y > LineLength then oMouse.Y := LineLength;

    //mCadenaEdit.Perform(EM_SETSEL, 15, 15)
    mCadenaEdit.Perform(EM_SETSEL, LineIndex + oMouse.Y, LineIndex + oMouse.Y)
  end;

  mCadenaEdit.Perform(EM_SCROLLCARET, 0, 0);
}
  if (Sender is TRichEdit) and (Source is TcxDragControlObject) then
    with TcxDragControlObject(Source) do
      if (Control is TcxGridSite) or (Control is TcxGrid) then
      begin
        //ShowMessage(IntToStr(oMouse.X) + ' - ' + IntToStr(pMouse.X));

        Accept := True;
      end;
end;

procedure TFrmConceptosNomina.mCadenaEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if cxGBConceptos.Visible  then
  begin
    case Key of
      8: begin
          if (mCadenaEdit.Text <> '') then
          begin
            Key := 0;
            BorrarElemento(beIzquierda);
          end;

        end; // Backspace
      45: begin Insertar := Not Insertar; if Insertar then sbFormulaEdit.Panels[1].Text := 'Insertar' Else sbFormulaEdit.Panels[1].Text := 'Sobreescribir'; end;
      46:begin
          if (mCadenaEdit.Text <> '') then
          begin
            Key := 0;
            BorrarElemento(beActual)
          end;
        end; // Delete
    end;
  end;
end;

procedure TFrmConceptosNomina.mCadenaEditKeyPress(Sender: TObject;
  var Key: Char);
var
  Concepto: TConcepto;
begin
  if cxGBConceptos.Visible   then
  begin
    case Key of
      '0'..'9': begin
                  if IdxActual >= 0 then
                  begin
                    Concepto := TConcepto(Lista.Objects[IdxActual]);
                    case Concepto.Tipo of
                      teNumero: EditarNumero(Key, Concepto)
                      else
                      begin
                        Concepto := TConcepto.Create;
                        Concepto.Tipo := teNumero;
                        Concepto.Estilo := [];
                        Concepto.Color := clHotLight;
                        Concepto.Cadena := '';
                        Concepto.Leyenda := '';
                        EditarNumero(Key, Concepto);
                      end;
                    end;
                  end
                  else
                  begin
                    Concepto := TConcepto.Create;
                    Concepto.Tipo := teNumero;
                    Concepto.Estilo := [];
                    Concepto.Color := clHotLight;
                    Concepto.Cadena := '';
                    Concepto.Leyenda := '';
                    EditarNumero(Key, Concepto);
                  end;
                end;
      ',': AgregarElemento(Key, teComa, [fsBold], clNavy);
      '=': AgregarElemento(Key, teOLogico, [fsBold], clNavy);
      '(': AgregarElemento(Key, teParentesis1, [], clBlack);
      ')': AgregarElemento(Key, teParentesis2, [], clBlack);
      '<', '>': VerificaSiAgrega(Key);
      'S', 's': AgregarElemento('SI', teCondicion, [fsBold], clGreen);
      '#': AgregarElemento(Key, teRango, [fsBold], clMaroon);
      '@': AgregarElemento(Key, teInvertido, [fsBold], clPurple);
      '+', '-', '*', '/', '\': AgregarElemento(Key, teOAritmetico, [fsBold], clRed);
    end;
  end;
end;

procedure TFrmConceptosNomina.mCadenaEditMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Pulsado) and (Not TRichEdit(Sender).Dragging) then
  begin
    TRichEdit(Sender).BeginDrag(False);
  end;
end;

procedure TFrmConceptosNomina.mCadenaEditMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Pulsado := False;
end;

procedure TFrmConceptosNomina.mCadenaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if cxGBConceptos.Visible then
  begin
    case Key of
      8: begin Key := 0; BorrarElemento(beIzquierda); end; // Backspace
      46: begin Key := 0; BorrarElemento(beActual) end; // Delete
    end;
  end;
end;

procedure TFrmConceptosNomina.mCadenaKeyPress(Sender: TObject; var Key: Char);
begin
{  if cxGBConceptos.Visible then
  begin
    case Key of
      'A'..'Z',
      'a'..'z',
      '0'..'9',
      'ñ', 'Ñ',
      'Á', 'É', 'Í', 'Ó', 'Ú',
      'á', 'é', 'í', 'ó', 'ú',
      '@', '+', '-', '*', '/', '\', ',', '=', '<', '>': ShowMessage(Key);
    end;
  end;}
end;

procedure TFrmConceptosNomina.EditKeyPress(Sender: TObject; var Key: Char);
begin
  ShowMessage('Rangel');
end;

procedure TFrmConceptosNomina.edtNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13  then
    btnOk.Click;
end;

procedure TFrmConceptosNomina.mCadenaSelectionChange(Sender: TObject);
var
  i, ii, cp: Integer;
  pmCadena: TRichEdit;
  Uno, Dos,
  oUno, oDos: String;
  oSelStart: Integer;
  OldIdxActual: Integer;
  OldUno, OldDos: String;
  Concepto: TConcepto;
  oCambiar: Boolean;

function EnRango(Leyenda: String): Integer;
var
  Cad1, Cad2: String;
  pSelStart: Integer;
begin
  Cad1 := Copy(Leyenda, 1, Pos(':', Leyenda) -1);
  Cad2 := Copy(Leyenda, Length(Cad1) +2, Length(Leyenda));

  if cxGBConceptos.Visible then
    pSelStart := mCadenaEdit.SelStart
  else
    pSelStart := mCadena.SelStart;

  if (pSelStart >= StrToInt(Cad1)) and (pSelStart <= StrToInt(Cad2)) then
  begin
    if (pSelStart = StrToInt(Cad1)) and (pSelStart > 0) then
      Result := 1
    else
      Result := 0;
  end
  else
    Result := -1;
end;

begin
  if Assigned(Lista) and CambiaElPedo then
  begin
    if cxGBConceptos.Visible then
      pmCadena := mCadenaEdit
    else
      pmCadena := mCadena;

    oCambiar := CambiaElPedo;
    oSelStart := pmCadena.SelStart;
    CambiaElPedo := False;
    Try
    pmCadena.SelStart := 0;
    pmCadena.SelLength := Length(pmCadena.Text);
    pmCadena.SelAttributes.Style := [];
    Finally
      pmCadena.SelStart := oSelStart;
      pmCadena.SelLength := 0;
      CambiaElPedo := oCambiar;
    end;

    i := 0;
    while (i < Lista.Count) and (EnRango(Lista[i]) = -1) do
      Inc(i);

    if pmCadena.SelStart >= Length(pmCadena.Text) then
    begin
      IdxActual := -1;
      EstaDentro := 0;
      if i > 0 then
        IdxIzquierda := (i -1)
      else
        IdxIzquierda := -1;

      CambiaElPedo := False;
      oSelStart := pmCadena.SelStart;
      try
        pmCadena.SelectAll;
        pmCadena.SelAttributes.Style := pmCadena.SelAttributes.Style - [fsBold];

      finally
        pmCadena.SelStart := oSelStart;
        pmCadena.SelLength := 0;
        CambiaElPedo := True;
      end;

      pmCadena.Hint := '';
    end
    else
    begin
      EstaDentro := 0;
      if i < Lista.Count then
      begin
        OldIdxActual := IdxActual;
        Concepto := nil;
        if OldIdxActual >= 0 then
        begin
          OldUno := Copy(Lista[OldIdxActual], 1, Pos(':', Lista[OldIdxActual]) -1);
          OldDos := Copy(Lista[OldIdxActual], Length(OldUno) +2, Length(Lista[OldIdxActual]));
          Concepto := TConcepto(Lista.Objects[OldIdxActual]);
        end;

        IdxActual := i;
        IdxIzquierda := i - EnRango(Lista[i]);
        if IdxActual = IdxIzquierda then
        begin
          EstaDentro := 0;
          for i:= 0 to IdxActual -1 do
            EstaDentro := EstaDentro + Length(TConcepto(Lista.Objects[i]).Cadena);

          EstaDentro := pmCadena.SelStart - EstaDentro;
        end;
        //EstaDentro := IdxActual = IdxIzquierda;
        Uno := Copy(Lista[i], 1, Pos(':', Lista[i]) -1);
        Dos := Copy(Lista[i], Length(Uno) +2, Length(Lista[i]));
        CambiaElPedo := False;
        oSelStart := pmCadena.SelStart;
        try
          if OldIdxActual >= 0 then
          begin
            //pmCadena.SelectAll;
            pmCadena.SelStart := StrToInt(OldUno);
            pmCadena.SelLength := 1 + StrToint(OldDos) - StrToint(OldUno);
            pmCadena.SelAttributes.Color := Concepto.Color;
            pmCadena.SelAttributes.Style := Concepto.Estilo;
          end;

          if TConcepto(Lista.Objects[IdxActual]).Cadena = '(' then
          begin
            // Localizar su parentesis que cierra
            ii := IdxActual +1;
            cp := 0;
            while (ii < Lista.Count) and (cp > -1) do
            begin
              if TConcepto(Lista.Objects[ii]).Cadena = '(' then
                Inc(cp);

              if TConcepto(Lista.Objects[ii]).Cadena = ')' then
                Dec(cp);

              if cp <> -1 then
                Inc(ii);
            end;

            if cp = -1 then
            begin
              oUno := Copy(Lista[ii], 1, Pos(':', Lista[ii]) -1);
              oDos := Copy(Lista[ii], Length(oUno) +2, Length(Lista[ii]));

              pmCadena.SelStart := StrToint(oUno);
              pmCadena.SelLength := 1 + StrToint(oDos) - StrToint(oUno);
              pmCadena.SelAttributes.Style := pmCadena.SelAttributes.Style + [fsBold, fsUnderLine];
            end;
          end;

          if TConcepto(Lista.Objects[IdxActual]).Cadena = ')' then
          begin
            // Localizar su parentesis que abre
            ii := IdxActual -1;
            cp := 0;
            while (ii >= 0) and (cp > -1) do
            begin
              if TConcepto(Lista.Objects[ii]).Cadena = '(' then
                Dec(cp);

              if TConcepto(Lista.Objects[ii]).Cadena = ')' then
                Inc(cp);

              if cp <> -1 then
                Dec(ii);
            end;

            if cp = -1 then
            begin
              oUno := Copy(Lista[ii], 1, Pos(':', Lista[ii]) -1);
              oDos := Copy(Lista[ii], Length(oUno) +2, Length(Lista[ii]));

              pmCadena.SelStart := StrToint(oUno);
              pmCadena.SelLength := 1 + StrToint(oDos) - StrToint(oUno);
              pmCadena.SelAttributes.Style := pmCadena.SelAttributes.Style + [fsBold, fsUnderLine];
            end;
          end;

          pmCadena.SelStart := StrToint(Uno);
          pmCadena.SelLength := 1 + StrToint(Dos) - StrToint(Uno);
          pmCadena.SelAttributes.Style := pmCadena.SelAttributes.Style + [fsBold, fsUnderLine];
        Finally
          pmCadena.SelStart := oSelStart;
          pmCadena.SelLength := 0;
          CambiaElPedo := True;
        end;
        pmCadena.Hint := TConcepto(Lista.Objects[i]).Leyenda;
      end;
    end;
  end;
end;

procedure TFrmConceptosNomina.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConceptosNomina.btnEliminarClick(Sender: TObject);
var
  Posicion: Integer;
  Clave: String;
  Existe: Boolean;
begin
  // Verificar si este elemento no ha sido utilizando en posteriores cálculos
  Try
    cdConcepto.DisableControls;
    Posicion := cdConcepto.RecNo;
    Clave := '{NOMINA.' + cdConcepto.FieldByName('Clave').AsString + '}';
    cdConcepto.Next;
    Existe := False;
    while (not cdConcepto.Eof) and (Not Existe) do
    begin
      Existe := Pos(Clave, cdConcepto.FieldByName('Cadena').AsString) > 0;

      if Not Existe then
        cdConcepto.Next;
    end;

    if Existe then
    begin
      InteliDialog.ShowModal('No es posible eliminar el registro indicado',
                             'Debido a que se hace referencia a este elemento en el registro de [' + cdConcepto.FieldByName('CodigoConcepto').AsString + ' - ' + cdConcepto.FieldByName('Clave').AsString + ']' + #10 + #10 +
                             cdConcepto.FieldByName('Cadena').AsString, mtInformation, [mbOk], 0);
    end;
  Finally
    cdConcepto.RecNo := Posicion;
    cdConcepto.EnableControls;
  End;

  if Not Existe then
  begin
    // Eliminar el registro
    cdBuscar.Close;
    CargarDatosFiltrados(cdBuscar, 'IdTipoNomina,IdConcepto', [cdConcepto.FieldByName('IdTipoNomina').AsInteger, cdConcepto.FieldByName('IdConcepto').AsInteger]);
    cdBuscar.Open;
    if cdBuscar.RecordCount = 1 then
    begin
      if InteliDialog.ShowModal('Eliminar registro', 'Está a punto de eliminar de manera definitiva el registro de Concepto [' + cdConcepto.FieldByName('CodigoConcepto').AsString + ' - ' + cdConcepto.FieldByName('Clave').AsString + ']' + #10 + #10 +
                                                     cdConcepto.FieldByName('Cadena').AsString + #10 + #10 +
                                                     '¿Está seguro que desea eliminarlo de manera definitiva?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cdBuscar.BeforeDelete := nil;
        cdBuscar.AfterDelete := nil;
        cdBuscar.Delete;
        cdBuscar.ApplyUpdates(-1);
        cdConcepto.Refresh;
      end;
    end;
  end;
end;

procedure TFrmConceptosNomina.btnNuevoClick(Sender: TObject);
var
  Orden, Valor: Integer;
  oLista: TStringList;
  Concepto: TConcepto;
  i: Integer;
  ordenC: integer;
  Punto: TBookMark;
begin
  try
    // Nuevo Concepto
    VerificaDatosEmpleado;

    // Obtener el consecutivo de orden
    if cdConcepto.RecordCount > 0 then
    begin
      if cdConcepto.RecNo = cdConcepto.RecordCount then
        Orden := cdConcepto.FieldByName('Orden').AsInteger + IncreOrden
      else
      begin
        Try
          // Verificar el consecutivo del registro siguiente al seleccionado
          cdConcepto.DisableControls;
          cdConcepto.Next;
          Valor := cdConcepto.FieldByName('Orden').AsInteger;
          cdConcepto.Prior;
          Orden := cdConcepto.FieldByName('Orden').AsInteger + ((Valor - cdConcepto.FieldByName('Orden').AsInteger) div 2);
        Finally
          cdConcepto.EnableControls;
        End;
      end;
    end
    else
      Orden := IncreOrden;

    {$REGION 'Almacenar datos'}
    cdBuscar.Append;
    cdBuscar.FieldByName('IdConcepto').AsInteger := 0;
    cdBuscar.FieldByName('IdTipoNomina').AsInteger := Integer(cbbtiponomin.Properties.Items.Objects[cbbtiponomin.ItemIndex]);
    cdBuscar.FieldbyName('Aplicacion').asDateTime := dsConcepto.DataSet.FieldByName('Aplicacion').AsDateTime;
    cxDbDeAplic.Date := dsConcepto.DataSet.FieldByName('Aplicacion').AsDateTime;
    cdBuscar.FieldByName('Tipo').AsString := 'Formula';
    cdBuscar.FieldByName('Font').AsString := 'Arial';
    cdBuscar.FieldByName('Size').AsString := '8';
    cdBuscar.FieldByName('Color').AsString := '0';
    cdBuscar.FieldByName('Height').AsString := '12';
    cdBuscar.FieldByName('Style').AsString := 'NORMAL';

    Form := TForm.Create(nil);
    Form.BorderStyle := bsSingle;
    form.WindowState := wsMaximized;
    Form.Caption := 'Nuevo Concepto.';
    Form.Name := 'frmAdd';
    cxGBConceptos.Parent := Form;
    cxGBConceptos.Visible := True;
    cxGBConceptos.Align := alClient;


    pnlEditar.Parent := Panel21;
    pnlEditar.Align := alClient;
    pnlEditar.Visible := True;


      oLista := TStringList.Create;
      Punto := cdConcepto.Bookmark;
      cdConcepto.DisableControls;
      try

//        for i:= 0 to Lista.Count -1 do
//        begin
//          Concepto := TConcepto.Create;
//          Concepto.Tipo := TConcepto(Lista.Objects[i]).Tipo;
//          Concepto.Estilo := TConcepto(Lista.Objects[i]).Estilo;
//          Concepto.Color := TConcepto(Lista.Objects[i]).Color;
//          Concepto.Cadena := TConcepto(Lista.Objects[i]).Cadena;
//          Concepto.Leyenda := TConcepto(Lista.Objects[i]).Leyenda;
//
//          oLista.AddObject(Lista[i], Concepto);
//        end;
        lista.clear;

        if Not CargarDatosFiltrados(cdConceptoConsulta, 'IdTipoNomina,aplicacion', [Integer(cbbtiponomin.Properties.Items.Objects[cbbtiponomin.ItemIndex]),ClientModule1.DatetoStrSql(cdConcepto.FieldByName('Aplicacion').AsDateTime)]) then
          raise InteligentException.CreateByCode(6, ['Conceptos de Nómina', Integer(cbbtiponomin.Properties.Items.Objects[cbbtiponomin.ItemIndex]), 'Id. Tipo Nomina']);

        if cdConceptoConsulta.Active then
          cdConceptoConsulta.Refresh
        else
          cdConceptoConsulta.Open;


        cdConceptoConsulta.IndexFieldNames := 'Orden';
        cdConceptoConsulta.Last;

        ordenc := cdConceptoConsulta.FieldByName('Orden').asinteger + 1;
        cdBuscar.FieldByName('Orden').AsInteger := Ordenc;
        cxDbEdOrden.Text := inttostr(Ordenc);


        MostrarFormula(0);
        CambiosRealizados := False;

        mCadenaEdit.Lines.Clear;
        if Form.ShowModal = mrOk then
        begin

          // Si hubieron cambios a la formula se deberá volver a generar
          if CambiosRealizados then
            cdBuscar.FieldByName('Cadena').AsString := Convierte(Lista);

          cdBuscar.Post;
          cdBuscar.ApplyUpdates(-1);
          cdConcepto.Refresh;

          Form.Close;
        end
        else
        begin
          // Regenerar la lista original
          for i := 0 to Lista.Count -1 do
          begin
            Lista.Objects[i].Free;
            Lista.Objects[i] := Nil;
          end;

          Lista.Clear;

          for i := 0 to oLista.Count -1 do
          begin
            Concepto := TConcepto.Create;
            Concepto.Tipo := TConcepto(oLista.Objects[i]).Tipo;
            Concepto.Estilo := TConcepto(oLista.Objects[i]).Estilo;
            Concepto.Color := TConcepto(oLista.Objects[i]).Color;
            Concepto.Cadena := TConcepto(oLista.Objects[i]).Cadena;
            Concepto.Leyenda := TConcepto(oLista.Objects[i]).Leyenda;

            Lista.AddObject(oLista[i], Concepto);
          end;
        end;
      finally
        if cdConcepto.BookmarkValid(Punto) then
          cdConcepto.GotoBookmark(Punto);
        cdConcepto.EnableControls;

        for i := 0 to oLista.Count -1 do
        begin
          oLista.Objects[i].Free;
          oLista.Objects[i] := Nil;
        end;

        oLista.Clear;
        //Form.Free;
      end;

   // Form.ShowModal;
    {$ENDREGION}

    {Application.CreateForm(TFrmDatosConceptosNomina, FrmDatosConceptosNomina);
    FrmDatosConceptosNomina.Caption := 'Captura de nuevo concepto de Nómina [' + cbbtiponomin.Text + ']';
    FrmDatosConceptosNomina.GridConceptos.DataSource := dsConcepto;
    FrmDatosConceptosNomina.GridEmpleado.DataSource := dsEmpleado;
    FrmDatosConceptosNomina.IdConcepto := -9; //cdConcepto.FieldByName('CodigoConcepto').AsString;
    FrmDatosConceptosNomina.IdTipoNomina := Integer(cbbtiponomin.Items.Objects[cbbtiponomin.ItemIndex]);
    FrmDatosConceptosNomina.dsBuscar.DataSet := cdBuscar;
    FrmDatosConceptosNomina.Orden := Orden;
    if FrmDatosConceptosNomina.ShowModal = mrOk then
      cdConcepto.Refresh;}
  finally
    if cxGBConceptos.Parent <> self then
    begin
      cxGBConceptos.Align := alNone;
      cxGBConceptos.Parent := Self;
      cxGBConceptos.Visible := False;
    end;

    if cdBuscar.State in [dsInsert, dsEdit] then
    begin
      cdBuscar.Cancel;
    end;
    form.Free;

    if cdBuscar.State in [dsInsert, dsEdit] then
      cdBuscar.Cancel
    else
      MostrarFormula(-1);
  end;
end;

procedure TFrmConceptosNomina.btnSaveClick(Sender: TObject);
var
  idConcepto: String;
begin
  try
    if cdBuscar.State = dsInsert then
    begin
      if cdConceptoConsulta.Locate('CodigoConcepto', cxDbEdCgoCpto.Text, [loCaseInsensitive]) then
      begin
        cxDbEdCgoCpto.SetFocus;
        //cxgrid2.Levels.Index := 1;
        raise InteligentWarning.Create('Ya existe un concepto con ese código');
      end;

      if cdConceptoConsulta.Locate('Clave', cxDbEdClave.Text, [loCaseInsensitive]) then
      begin
        cxDbEdClave.SetFocus;
        //cxgrid2.Levels.Index := 1;
        raise InteligentWarning.Create('Ya existe un concepto con esa Clave');
      end;
    end;

    if cdBuscar.State = dsEdit then
    begin
      try
        idConcepto := cdBuscar.FieldByName('IdConcepto').AsString;
        cdConceptoConsulta.Filtered := False;
        cdConceptoConsulta.Filter := 'idConcepto <> ' + QuotedStr(idCOncepto);
        cdConceptoConsulta.Filtered := True;

        if cdConceptoConsulta.Locate('CodigoConcepto', cxDbEdCgoCpto.Text, [loCaseInsensitive]) then
        begin
          cxDbEdCgoCpto.SetFocus;

          raise InteligentWarning.Create('Ya existe un concepto con ese código');
        end;

        if cdConceptoConsulta.Locate('Clave', cxDbEdClave.Text, [loCaseInsensitive]) then
        begin
          cxDbEdClave.SetFocus;

          raise InteligentWarning.Create('Ya existe un concepto con esa Clave');
        end;

      finally
        cdConceptoConsulta.Filtered := False;
      end;
    end;

    // Verificar si los campos está capturados
    if Trim(cxDbEdOrden.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Orden de Concepto']);
      cxDbEdOrden.SetFocus;
    end;

    if Trim(cxDbEdCgoCpto.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Código de Concepto']);
      cxDbEdCgoCpto.SetFocus;
    end;

    if Trim(cxDbEdClave.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Clave del Concepto']);
      cxDbEdClave.SetFocus;
    end;

    if Trim(cxDbEdTitulo.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Título del Concepto']);
      cxDbEdTitulo.SetFocus;
    end;

    if Trim(cxDbEdDescripcion.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Descripción del Concepto']);
      cxDbEdDescripcion.SetFocus;
    end;

    if Trim(cxDbCbCpto.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Concepto']);
      cxDbCbCpto.SetFocus;
    end;

    if Trim(cxDbCbImprime.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Imprime']);
      cxDbCbImprime.SetFocus;
    end;

    if Trim(mCadenaEdit.Text) = '' then
    begin
      raise InteligentWarning.CreateByCode(18 , ['Formula del concepto']);
      mCadenaEdit.SetFocus;
    end;


    If ValidaFormula(Lista) then
      cxButton1.Click;
  except
    on e: InteligentWarning do
      InteliDialog.ShowModal('Aviso', e.Message, mtWarning, [mbOK], 0)

  end;
end;

procedure TFrmConceptosNomina.BtnSelectClick(Sender: TObject);
begin
  if cdConcepto.State = dsBrowse then
  Try
    if cdConcepto.RecordCount < 1 Then
      raise InteligentWarning.CreateByCode(26, ['Catalogo de conceptos']);

      _RegistroActual := TLista.Create();
      _RegistroActual := GetCurrentRecord(cdConcepto);
      close;

  Except
  on e:exception do
    InteliDialog.ShowModal('No se puede seleccionar.',e.message, mtInformation, [mbOk], 0);
  End;
end;

procedure TFrmConceptosNomina.btnValidarClick(Sender: TObject);
begin
  btn_Validar.Click;
end;

procedure TFrmConceptosNomina.Btn_EditarClick(Sender: TObject);
var
  oLista: TStringList;
  Concepto: TConcepto;
  i: Integer;
  Punto: TBookMark;
begin
  if cdConcepto.RecordCount > 0 then
  begin
    try
    // Editar el registro
    VerificaDatosEmpleado;

    {$REGION 'Editar Concepto'}
      CargarDatosFiltrados(cdBuscar, 'IdTipoNomina,IdConcepto', [cdConcepto.FieldByName('IdTipoNomina').AsInteger, cdConcepto.FieldByName('IdConcepto').AsInteger]);

      if cdBuscar.Active then
        cdBuscar.Refresh
      else
        cdBuscar.Open;

      if cdBuscar.RecordCount = 1 then
        cdBuscar.Edit;
//
//      if assigned(FindComponent('frmAdd')) then
//        TForm(FindComponent('fmrAdd')).Destroy;

      //if not assigned(form) then
        Form := TForm.Create(self);

      Form.Position := poScreenCenter;
      Form.OnKeyPress := EditKeyPress;
      Form.ShowHint := True;
      form.WindowState := wsMaximized;
      Form.Caption := 'Editar Concepto.';
      Form.Name := 'frmAdd';

      try
        Form.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Top'));
      except
        ;
      end;

      try
        Form.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Left'));
      except
        ;
      end;

      try
        Form.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Width'));
      except
        ;
      end;

      try
        Form.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Height'));
      except
        ;
      end;

      try
        Panel15.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Panel15', 'Width'));
      except
        ;
      end;

      cxGBConceptos.Parent := Form;
      cxGBConceptos.Visible := True;
      cxGBConceptos.Align := alClient;

      pnlEditar.Parent := Panel21;
      pnlEditar.Align := alClient;
      pnlEditar.Visible := True;

      oLista := TStringList.Create;
      Punto := cdConcepto.Bookmark;
      cdConcepto.DisableControls;
      try

        for i:= 0 to Lista.Count -1 do
        begin
          Concepto := TConcepto.Create;
          Concepto.Tipo := TConcepto(Lista.Objects[i]).Tipo;
          Concepto.Estilo := TConcepto(Lista.Objects[i]).Estilo;
          Concepto.Color := TConcepto(Lista.Objects[i]).Color;
          Concepto.Cadena := TConcepto(Lista.Objects[i]).Cadena;
          Concepto.Leyenda := TConcepto(Lista.Objects[i]).Leyenda;

          oLista.AddObject(Lista[i], Concepto);
        end;

        if Not CargarDatosFiltrados(cdConceptoConsulta, 'IdTipoNomina,Aplicacion', [Integer(cbbtiponomin.Properties.Items.Objects[cbbtiponomin.ItemIndex]), ClientModule1.DatetoStrSql(cdConcepto.FieldByName('Aplicacion').AsDateTime)]) then
          raise InteligentException.CreateByCode(6, ['Conceptos de Nómina', Integer(cbbtiponomin.Properties.Items.Objects[cbbtiponomin.ItemIndex]), 'Id. Tipo Nomina']);

        if cdConceptoConsulta.Active then
          cdConceptoConsulta.Refresh
        else
          cdConceptoConsulta.Open;

        MostrarFormula(0);
        CambiosRealizados := False;
        if Form.ShowModal = mrOk then
        begin
          // Verificar si los campos está capturados
          if Trim(cxDbEdOrden.Text) = '' then
          begin
            raise InteligentException.CreateByCode(18 , ['Orden de Concepto']);
            cxDbEdOrden.SetFocus;
          end;

          if Trim(cxDbEdCgoCpto.Text) = '' then
          begin
            raise InteligentException.CreateByCode(18 , ['Código de Concepto']);
            cxDbEdCgoCpto.SetFocus;
          end;

          if Trim(cxDbEdClave.Text) = '' then
          begin
            raise InteligentException.CreateByCode(18 , ['Clave del Concepto']);
            cxDbEdClave.SetFocus;
          end;

          if Trim(cxDbEdTitulo.Text) = '' then
          begin
            raise InteligentException.CreateByCode(18 , ['Título del Concepto']);
            cxDbEdTitulo.SetFocus;
          end;

          if Trim(cxDbEdDescripcion.Text) = '' then
          begin
            raise InteligentException.CreateByCode(18 , ['Descripción del Concepto']);
            cxDbEdDescripcion.SetFocus;
          end;

          if Trim(cxDbCbCpto.Text) = '' then
          begin
            raise InteligentException.CreateByCode(18 , ['Concepto']);
            cxDbCbCpto.SetFocus;
          end;

          if Trim(cxDbCbImprime.Text) = '' then
          begin
            raise InteligentException.CreateByCode(18 , ['Imprime']);
            cxDbCbImprime.SetFocus;
          end;

          // Si hubieron cambios a la formula se deberá volver a generar
          if CambiosRealizados then
            cdBuscar.FieldByName('Cadena').AsString := Convierte(Lista);

          cdBuscar.Post;
          cdBuscar.ApplyUpdates(-1);
          cdConcepto.Refresh;

          Form.Close;
        end
        else
        begin
          // Regenerar la lista original
          for i := 0 to Lista.Count -1 do
          begin
            Lista.Objects[i].Free;
            Lista.Objects[i] := Nil;
          end;

          Lista.Clear;

          for i := 0 to oLista.Count -1 do
          begin
            Concepto := TConcepto.Create;
            Concepto.Tipo := TConcepto(oLista.Objects[i]).Tipo;
            Concepto.Estilo := TConcepto(oLista.Objects[i]).Estilo;
            Concepto.Color := TConcepto(oLista.Objects[i]).Color;
            Concepto.Cadena := TConcepto(oLista.Objects[i]).Cadena;
            Concepto.Leyenda := TConcepto(oLista.Objects[i]).Leyenda;

            Lista.AddObject(oLista[i], Concepto);
          end;
        end;
      finally
        if cdConcepto.BookmarkValid(Punto) then
          cdConcepto.GotoBookmark(Punto);
        cdConcepto.EnableControls;

        for i := 0 to oLista.Count -1 do
        begin
          oLista.Objects[i].Free;
          oLista.Objects[i] := Nil;
        end;

        oLista.Clear;
        //Form.Free;
      end;

      SetRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Top', IntToStr(Form.Top));
      SetRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Left', IntToStr(Form.Left));
      SetRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Width', IntToStr(Form.Width));
      SetRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Height', IntToStr(Form.Height));
      SetRegistry('\Ventanas', '\' + Self.Name + '\Panel15', 'Width', IntToStr(Panel15.Width));
    {$ENDREGION}

      {Application.CreateForm(TFrmDatosConceptosNomina, FrmDatosConceptosNomina);
      FrmDatosConceptosNomina.Caption := 'Edición de Concepto de Nómina [' + cbbtiponomin.Text + '] - ' + cdConcepto.FieldByName('Titulo').AsString;
      FrmDatosConceptosNomina.GridConceptos.DataSource := dsConcepto;
      FrmDatosConceptosNomina.GridEmpleado.DataSource := dsEmpleado;
      FrmDatosConceptosNomina.IdConcepto := cdConcepto.FieldByName('IdConcepto').AsInteger;
      FrmDatosConceptosNomina.dsBuscar.DataSet := cdBuscar;
      if FrmDatosConceptosNomina.ShowModal = mrOk then
        cdConcepto.Refresh;}
    finally
      if cxGBConceptos.Parent <> self then
      begin
        pnlEditar.Visible := False;
        pnlEditar.Align := alNone;
        pnlEditar.Parent := Self;

        cxGBConceptos.Align := alNone;
        cxGBConceptos.Parent := Self;
        cxGBConceptos.Visible := False;
      end;

      if cdBuscar.State in [dsInsert, dsEdit] then
        cdBuscar.Cancel
      else
        MostrarFormula(-1);
      Form.free;
    end;
  end;
end;

procedure TFrmConceptosNomina.btn_ValidarClick(Sender: TObject);
begin
  if ValidaFormula(Lista) then
    InteliDialog.ShowModal('Verificación de Fórmula', 'La Fórmula es correcta.', mtInformation, [mbOk], 0);
end;

procedure TFrmConceptosNomina.CargarDatosInicio;
var
  cdTipoNomina: TClientDataSet;
  Cursor: TCursor;
begin
  cdTipoNomina := TClientDataSet.Create(Self);

  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

{    if cdConcepto.Active then
      cdConcepto.Refresh
    else
      cdConcepto.Open;}

    if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

    cdTipoNomina.Open;

    cbbtiponomin.Properties.Items.Clear;
    cdTipoNomina.First;
    while not cdTipoNomina.Eof do
    begin
      cbbtiponomin.Properties.Items.AddObject(cdTipoNomina.FieldByName('Titulo').AsString, TObject(cdTipoNomina.FieldByName('IdTipoNomina').AsInteger));

      cdTipoNomina.Next;
    end;

    if cbbtiponomin.Properties.Items.Count > 0 then
    begin
      cbbtiponomin.ItemIndex := 0;
      cbbtiponomin.Properties.OnChange(Nil);
    end;
  Finally
    cdTipoNomina.Close;
    EliminarConjunto(cdTipoNomina);
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmConceptosNomina.VerificaDatosEmpleado;
var
  i: Integer;
begin
  try
    if cdEmpleado.ProviderName = '' then
    begin
      CrearConjunto(cdEmpleado, 'nuc_personal_nomina', ccCatalog);
      CargarDatosFiltrados(cdEmpleado, 'IdPersonal', [-9]);
      cdEmpleado.Open;

      for i := 0 to cdEmpleado.FieldDefs.Count -1 do
      begin
        if (cdEmpleado.FieldDefs.Items[i].DataType in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftLargeint, ftLongWord, ftShortint, ftByte, ftExtended, ftSingle]) and (CompareText(Copy(cdEmpleado.FieldDefs.Items[i].Name,1,2), 'Id') <> 0) then
        begin
          memEmpleado.Append;
          memEmpleado.FieldByName('Clave').AsString := cdEmpleado.FieldDefs.Items[i].Name;
          memEmpleado.FieldByName('Tipo').AsString := cdEmpleado.FieldDefs.Items[i].DisplayName;
          memEmpleado.Post;
        end;
      end;
    end;

    memEmpleado.First;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al adminsitrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

function TFrmConceptosNomina.SeleccionarItem: TLista;
begin
  Try

    ModoSeleccion := true;
    self.FormStyle := fsNormal;
    self.Visible := false;
    self.ShowModal;
    result := GetCurrentRecord(cdconcepto);
    result := _RegistroActual;
  Except
    on e:InteligentException do
      if e.Message <> '***' then
        raise
      else
      begin
        Result := Nil;
        Close;
      end;
  End;
end;

function TFrmConceptosNomina.TransCadena(Cadena: String; Leyenda: String): String;
var
  i, ii: Integer;
  Paso: String;
  sCad: String;
  Concepto, oConcepto: TConcepto;
  Color: TColor;
  idxColor,
  myPos, pPos: Integer;
  Cond2, Cond3: Boolean;
  PasoCad, CadFormula, DetFormula: String;

function ConceptoStr(pInicio: Integer; pTermino: Integer): String;
var
  Cad1, Cad2: String;
begin
  Cad1 := IntToStr(pInicio);
  Cad2 := IntToStr(pTermino);
  Result := Cad1 + ':' + Cad2;
end;

begin
  for i := 0 to Lista.Count -1 do
  begin
    Lista.Objects[i].Free;
    Lista.Objects[i] := Nil;
  end;

  Lista.Clear;

  i := 1;
  sCad := Cadena;
  idxColor := 0;
  pPos := 0;
  //Cadena := '({10}/{2},132)';
  while i <= Length(Cadena) do
  begin
    case Cadena[i] of
      '0'..'9': begin
                  ii := 0;
                  while Cadena[i + ii +1] in ['0'..'9'] do
                    Inc(ii);

                  Concepto := TConcepto.Create;
                  Concepto.Estilo := [];
                  Concepto.Color := clHotLight;
                  Concepto.Tipo := teRedondearDecimales;
                  Concepto.Cadena := Copy(Cadena, i, ii +1);
                  Concepto.Leyenda := Concepto.Cadena + SepLey + 'Redondear a ' + Copy(Concepto.Cadena, 2, Length(Concepto.Cadena)) + ' decimales';
                  Lista.AddObject(ConceptoStr(pPos, pPos + ii), Concepto);
                  Inc(pPos, Length(Concepto.Cadena));
                  Inc(i, ii);
                end;
      '@': begin
             Concepto := TConcepto.Create;
             Concepto.Estilo := [fsBold];
             Concepto.Color := clPurple;
             Concepto.Tipo := teInvertido;
             Concepto.Cadena := Cadena[i];
             Concepto.Leyenda := Cadena[i] + SepLey + 'Forzar negativo';
             Lista.AddObject(ConceptoStr(pPos, pPos), Concepto);
             Inc(pPos, Length(Concepto.Cadena));
           end;
      '#': begin
             Concepto := TConcepto.Create;
             Concepto.Estilo := [fsBold];
             Concepto.Color := clMaroon;
             Concepto.Tipo := teRango;
             Concepto.Cadena := Cadena[i];
             Concepto.Leyenda := Cadena[i] + SepLey + 'Ubicar en Tabla';
             Lista.AddObject(ConceptoStr(pPos, pPos), Concepto);
             Inc(pPos, Length(Concepto.Cadena));
           end;
      'S': if AnsiCompareText(Cadena[i +1], 'i') = 0 then
           begin
             Concepto := TConcepto.Create;
             Concepto.Estilo := [fsBold];
             Concepto.Color := clGreen;
             Concepto.Tipo := teCondicion;
             Concepto.Cadena := Copy(Cadena, i, 2);
             Concepto.Leyenda := Copy(Cadena, i, 2) + SepLey + 'Condición';
             Lista.AddObject(ConceptoStr(pPos, pPos +1), Concepto);
             Inc(pPos, Length(Concepto.Cadena));

             Inc(i);
           end;
      '{': begin
             myPos := i;
             ii := Pos('}', sCad);
             Paso := Copy(Cadena, i +1, ii -2);
             i := i + ii;

             Concepto := TConcepto.Create;
             Concepto.Estilo := [];
             if Copy(Paso, 1, 8) = 'EMPLEADO' then
             begin
               Concepto.Color := clBlue;
               Concepto.Tipo := teEmpleado;
             end
             else
               if Copy(Paso, 1, 6) = 'NOMINA' then
               begin
                 Concepto.Color := clFuchsia;
                 Concepto.Tipo := teNomina;
               end
               else
                 if Copy(Paso, 1, 5) = 'EXTRA' then
                 begin
                   Concepto.Color := clMaroon;
                   Concepto.Estilo := [];
                   Concepto.Tipo := teExtra;
                 end
                 else
                 begin
                   if Copy(Paso, 1, 7) = 'SISTEMA' then
                   begin
                     Concepto.Color := clLime;
                     Concepto.Estilo := [];
                     Concepto.Tipo := teSistema;
                   end
                   else
                   begin
                     Concepto.Color := clHotLight;
                     Concepto.Estilo := [];
                     Concepto.Tipo := teNumero;
                   end;
                 end;

             if Pos('.', Paso) > 0 then
               Paso := Copy(Paso, Pos('.', Paso) +1, Length(Paso));

             case Concepto.Tipo of
               teNumero: Concepto.Leyenda := Paso + SepLey + Paso;
               teEmpleado: Concepto.Leyenda := Paso + SepLey + '(Valor proveniente de datos del Empleado)';
               teNomina: Concepto.Leyenda := Paso + SepLey + BuscarLeyendaConcepto(cdLeyenda, Paso);
               teExtra: Concepto.Leyenda := Paso + SepLey + '(Concepto extraordinario por Empleado)';
               teSistema: Concepto.Leyenda := Paso + SepLey + '(Función del sistema)';
             end;

             Concepto.Cadena := Paso;
             Lista.AddObject(ConceptoStr(pPos, pPos + Length(Paso) -1), Concepto);
             Inc(pPos, Length(Concepto.Cadena));

             Dec(i);
           end;
      '<', '>': begin
                  Concepto := TConcepto.Create;
                  Concepto.Estilo := [fsBold];
                  Concepto.Color := clTeal;
                  Concepto.Tipo := teOLogico;
                  Concepto.Cadena := Cadena[i];
                  if Cadena[i] = '<' then
                    Concepto.Leyenda := Cadena[i] + SepLey + 'Menor que...'
                  else
                    Concepto.Leyenda := Cadena[i] + SepLey + 'Mayor que...';
                  Lista.AddObject(ConceptoStr(pPos, pPos), Concepto);
                  Inc(pPos, Length(Concepto.Cadena));
                end;
      '(', ')': begin
                  Concepto := TConcepto.Create;

                  if Cadena[i] = ')' then
                  begin
                    Concepto.Tipo := teParentesis2;
                    if idxColor = 0 then
                      idxColor := High(ListaColores)
                    else
                      Dec(idxColor);
                  end
                  else
                  begin
                    Concepto.Tipo := teParentesis1;

                    // Verificar si se trata de una función
                    Cond2 := (((i > 11) and (CompareText(Copy(Cadena, i - 11, 11), 'ACUMDETALLE') = 0)) or ((i > 14) and ((CompareText(Copy(Cadena, i - 14, 14), 'ACUMDETALLEPER') = 0) or (CompareText(Copy(Cadena, i - 14, 14), 'ACUMDETALLEPTU') = 0) or (CompareText(Copy(Cadena, i - 17, 17), 'ACUMDETALLEPTUMEM') = 0))));

                    if Cond2 then
                    begin
                      // Contar el número de comas en la cadena
                      oConcepto := TConcepto.Create;

                      if (i > 11) and (CompareText(Copy(Cadena, i - 11, 11), 'ACUMDETALLE') = 0) then
                      begin
                        CadFormula := 'ACUMDETALLE';
                        DetFormula := 'Función que acumula un concepto de Nómina' + #10;
                      end;

                      if (i > 14) and (CompareText(Copy(Cadena, i - 14, 14), 'ACUMDETALLEPER') = 0) then
                      begin
                        CadFormula := 'ACUMDETALLEPER';
                        DetFormula := '';
                      end;

                      if (i > 14) and (CompareText(Copy(Cadena, i - 14, 14), 'ACUMDETALLEPTU') = 0) then
                      begin
                        CadFormula := 'ACUMDETALLEPTU';
                        DetFormula := '';
                      end;

                      if (i > 14) and (CompareText(Copy(Cadena, i - 17, 17), 'ACUMDETALLEPTUMEM') = 0) then
                      begin
                        CadFormula := 'ACUMDETALLEPTUMEM';
                        DetFormula := '';
                      end;

                      oConcepto.Estilo := [fsBold];
                      oConcepto.Color := clAqua;
                      oConcepto.Tipo := teFuncion;
                      oConcepto.Cadena := CadFormula;
                      oConcepto.Leyenda := CadFormula + SepLey + 'Formula del Sistema';
                      Lista.AddObject(ConceptoStr(i - (1 + Length(CadFormula)), i -2), oConcepto);
                      pPos := i -1;
                    end;
                  end;

                  Concepto.Estilo := [fsBold];
                  Concepto.Color := ListaColores[idxColor]; //clBlack;
                  Concepto.Cadena := Cadena[i];
                  if Cadena[i] = '(' then
                    Concepto.Leyenda := Cadena[i] + SepLey + 'Abrir paréntesis'
                  else
                    Concepto.Leyenda := Cadena[i] + SepLey + 'Cerrar paréntesis';
                  Lista.AddObject(ConceptoStr(pPos, pPos), Concepto);
                  Inc(pPos, Length(Concepto.Cadena));

                  if Cadena[i] = '(' then
                  begin
                    if idxColor > High(ListaColores) then
                      idxColor := 0
                    else
                      Inc(idxColor);
                  end;
                end;

      '+', '-', '*', '/', '\': begin
                                 Concepto := TConcepto.Create;

                                 // Verificar si es un parámetro negativo
                                 if (Cadena[i] = '-') and (Cadena[i +1] in ['0'..'9']) then
                                 begin
                                   ii := 0;
                                   while Cadena[i + ii +1] in ['0'..'9'] do
                                     Inc(ii);

                                   Concepto.Estilo := [];
                                   Concepto.Color := clHotLight;
                                   Concepto.Tipo := teTruncarDecimales;
                                   Concepto.Cadena := Copy(Cadena, i, ii +1);
                                   Concepto.Leyenda := Concepto.Cadena + SepLey + 'Truncar a ' + Copy(Concepto.Cadena, 2, Length(Concepto.Cadena)) + ' decimales';
                                   Lista.AddObject(ConceptoStr(pPos, pPos + ii), Concepto);
                                   Inc(pPos, Length(Concepto.Cadena));
                                   Inc(i, ii);
                                 end
                                 else
                                 begin
                                   Concepto.Estilo := [fsBold];
                                   Concepto.Color := clRed;
                                   Concepto.Tipo := teOAritmetico;
                                   Concepto.Cadena := Cadena[i];
                                   Concepto.Leyenda := Cadena[i] + SepLey + 'Operador aritmético ' + sNombre(Cadena[i]);
                                   Lista.AddObject(ConceptoStr(pPos, pPos), Concepto);
                                   Inc(pPos, Length(Concepto.Cadena));
                                 end;
                               end;
      ',', '=': begin
                  Concepto := TConcepto.Create;
                  Concepto.Estilo := [fsBold];
                  Concepto.Color := clNavy;
                  Concepto.Cadena := Cadena[i];
                  if Cadena[i] = ',' then
                    Concepto.Leyenda := Cadena[i] + SepLey + 'Coma'
                  else
                    Concepto.Leyenda := Cadena[i] + SepLey + 'Igual';

                  if Cadena[i] = ',' then
                    Concepto.Tipo := teComa
                  else
                    Concepto.Tipo := teOLogico;

                  Lista.AddObject(ConceptoStr(pPos, pPos), Concepto);
                  Inc(pPos, Length(Concepto.Cadena));
                end;
    end;

    Inc(i);
    sCad := Copy(Cadena, i, Length(Cadena));
  end;

  MostrarFormula(-1);
end;

procedure TFrmConceptosNomina.tvCalculosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  // Pasar el concepto a la formula
  AgregarElemento(cdConceptoConsulta.FieldByName('Clave').AsString, teNomina, [], clFuchsia);
end;

procedure TFrmConceptosNomina.tvDatosEmpleadoCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  // Pasar el concepto a la formula
  AgregarElemento(memDatosEmpleado.FieldByName('Clave').AsString, teEmpleado, [], clBlue);
end;

procedure TFrmConceptosNomina.tvFormulasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  // Pasar el concepto a la formula
  If cdFormulas.FieldByName('Formula').AsString = 'SI' then
    AgregarElemento(cdFormulas.FieldByName('Formula').AsString, teCondicion, [], clGreen)
  else
    AgregarElemento(cdFormulas.FieldByName('Formula').AsString, teFormula, [], clNavy);
end;

function TFrmConceptosNomina.BuscarLeyendaConcepto(DataSet: TClientDataSet;
  Clave: String): String;
var
  Resultado: String;
begin
  Resultado := '';
  try
    if DataSet.Locate('Clave', Clave, []) then
      Resultado := DataSet.FieldByName('Nombre').AsString;
  finally
    Result := Resultado;
  end;
end;

procedure TFrmConceptosNomina.BorrarElemento(Modo: TBorrarElemento);
var
  RespDel, Cad1, Cad2: String;
  IdxDel: Integer;
  i, Resta, Repos: Integer;
  EsParentesis: Byte;
  idxColor: Integer;
  ReColor: Boolean;
begin
  CambiosRealizados := True;

  IdxDel := -1;
  if Modo = beIzquierda then
  begin
    if IdxIzquierda >= 0 then
      IdxDel := IdxIzquierda;
  end
  else
  begin
    if IdxActual >= 0 then
      IdxDel := IdxActual;
  end;
  if IdxDel <> -1 then
    ReColor := TConcepto(Lista.Objects[IdxDel]).Tipo in [teParentesis1, teParentesis2];

  if IdxDel >= 0 then
  begin
    RespDel := Lista[IdxDel];
    Cad1 := Copy(RespDel, 1, Pos(':', RespDel) -1);
    Cad2 := Copy(RespDel, Length(Cad1) +2, Length(RespDel));
    Resta := 1 + StrToInt(Cad2) - StrToInt(Cad1);
    Repos := StrToInt(Cad1);
    Lista.Delete(IdxDel);
    for i := IdxDel to Lista.Count -1 do
    begin
      // Modificar los índices de cada uno
      Cad1 := Copy(Lista[i], 1, Pos(':', Lista[i]) -1);
      Cad2 := Copy(Lista[i], Length(Cad1) +2, Length(Lista[i]));
      Cad1 := IntToStr(StrToInt(Cad1) - Resta);
      Cad2 := IntToStr(StrToInt(Cad2) - Resta);
      Lista[i] := Cad1 + ':' + Cad2;
    end;

    MostrarFormula(Repos);
  end;

  if ReColor then
  begin
    idxColor := 0;

    for i := 0 to Lista.Count -1 do
    begin
      if TConcepto(Lista.Objects[i]).Tipo in [teParentesis1, teParentesis2] then
      begin
        // Si se eliminó un parentesis se deben reacomodar los colores
        if TConcepto(Lista.Objects[i]).Tipo = teParentesis2 then
        begin
          if idxColor = 0 then
            idxColor := High(ListaColores)
          else
            Dec(idxColor);
        end;

        TConcepto(Lista.Objects[i]).Color := ListaColores[idxColor];

        if TConcepto(Lista.Objects[i]).Tipo = teParentesis1 then
        begin
          if idxColor > High(ListaColores) then
            idxColor := 0
          else
            Inc(idxColor);
        end;
      end;
    end;
  end;
end;

procedure TFrmConceptosNomina.btnActualizarClick(Sender: TObject);
begin
  if cdConcepto.ProviderName <> '' then
    if cdConcepto.Active then
      cdConcepto.Refresh
    else
      cdConcepto.Open;
end;

procedure TFrmConceptosNomina.btnCancelBarClick(Sender: TObject);
begin
  cxbutton2.Click;
end;

procedure TFrmConceptosNomina.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConceptosNomina.MostrarFormula(Posicion: Integer);
var
  i: Integer;
  Concepto: TConcepto;
  pmCadena: TRichEdit;
  Uno, Dos: String;
  oSelStart: Integer;
begin
  if cxGBConceptos.Visible then
    pmCadena := mCadenaEdit
  else
    pmCadena := mCadena;

  pmCadena.Clear;
  CambiaElPedo := False;
  try
    oSelStart := pmCadena.SelStart;
    for i := 0 to Lista.Count -1 do
    begin
      Concepto := TConcepto(Lista.Objects[i]);

      Uno := Copy(Lista[i], 1, Pos(':', Lista[i]) -1);
      Dos := Copy(Lista[i], Length(Uno) +2, Length(Lista[i]));

      pmCadena.SelStart := StrToint(Uno);
      pmCadena.SelLength := 1 + StrToint(Dos) - StrToint(Uno);

      pmCadena.SelAttributes.Style := Concepto.Estilo;
      pmCadena.SelAttributes.Color := Concepto.Color;
      pmCadena.SelText := Concepto.Cadena;
    end;
  finally
    pmCadena.SelStart := oSelStart;
    pmCadena.SelLength := 0;
    CambiaElPedo := True;
  end;

  if Posicion >= 0 then
  begin
    if Posicion <= Length(pmCadena.Text) then
      pmCadena.SelStart := Posicion
    else
      pmCadena.SelStart := Length(pmCadena.Text);

    try
      pmCadena.SetFocus;
    except
      ;
    end;

    mCadenaSelectionChange(pmCadena);
  end;
end;

procedure TFrmConceptosNomina.NumeroAceptarClick(Sender: TObject);
var
  i, Largo: Integer;
  Uno, Dos: String;
  Concepto: TConcepto;
  NewIdxActual: Integer;
begin
  CambiosRealizados := True;

  if Insertar then
  begin
    Largo := 0;
    if IdxActual = -1 then
      NewIdxActual := Lista.Count -1
    else
      NewIdxActual := IdxActual;

    for i := 0 to Lista.Count -1 do
    begin
      Concepto := TConcepto.Create;
      Concepto := TConcepto(Lista.Objects[i]);

      if i = NewIdxActual then
      begin
        Concepto.Cadena := FloatToStr(edtNumero.Value);
        Concepto.Leyenda := Concepto.Cadena + ' = ' + Concepto.Cadena;
      end;

      Uno := IntToStr(Largo);
      Dos := IntToStr(Largo + Length(Concepto.Cadena) -1);

      Lista[i] := Uno + ':' + Dos;
      Lista.Objects[i] := Concepto;

      Largo := Largo + Length(Concepto.Cadena);
    end;

    IdxActual := NewIdxActual;
  end;
end;

function TFrmConceptosNomina.Convierte(myLista: TStringList): String;
const
  cLlave: Array[False..True, 1..2] Of String = (('', ''), ('{', '}'));
var
  i: Integer;
  Res, Prefijo: String;
  Llaves: Boolean;
  Tipo: TTipo;
begin
  Res := '';
  for i := 0 to myLista.Count -1 do
  begin
    Prefijo := '';
    case TConcepto(myLista.Objects[i]).Tipo of
      teNumero: Llaves := True;
      teEmpleado: begin Prefijo := 'EMPLEADO.'; Llaves := True; end;
      teNomina: begin Prefijo := 'NOMINA.'; Llaves := True; end;
      teExtra: begin Prefijo := 'EXTRA.'; Llaves := True; end;
      teSistema: begin Prefijo := 'SISTEMA.'; Llaves := True; end;
      teOAritmetico, teOLogico, teCondicion,
      teParentesis1, teParentesis2,
      teComa, teInvertido, teRango,
      teFuncion, teTruncarDecimales,
      teRedondearDecimales: Llaves := False;
    else
      Prefijo := 'error';
    end;

    Res := Res + cLlave[Llaves, 1] + Prefijo + TConcepto(myLista.Objects[i]).Cadena + cLlave[Llaves, 2];
  end;

  Result := Res;
end;

procedure TFrmConceptosNomina.EditarNumero(Envio: Char; Con: TConcepto);
var
  Punto: TPoint;
  oSize: TPoint;
  i, Difer: Integer;
  Uno, Dos: String;
  LocFormaEditar: TForm;
  PasoCad: String;
  Concepto: TConcepto;
begin
  oSize.X := pnlEditarNumero.Width;
  oSize.Y := pnlEditarNumero.Height;

  LocFormaEditar := TForm.Create(Self);
  LocFormaEditar.Caption := 'Captura número';
  LocFormaEditar.BorderStyle := bsDialog;
  LocFormaEditar.Position := poDesigned;

  try
    LocFormaEditar.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Top'));
  except
    ;
  end;

  try
    LocFormaEditar.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Left'));
  except
    ;
  end;

  try
    LocFormaEditar.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Width'));
  except
    ;
  end;

  try
    LocFormaEditar.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Height'));
  except
    ;
  end;

  try
    GetCursorPos(Punto);
    LocFormaEditar.Top := Punto.Y;
    LocFormaEditar.Left := Punto.X;
    LocFormaEditar.OnShow := LocFormaEditarShow;
    LocFormaEditar.Width := pnlEditarNumero.Width + (GetSystemMetrics(SM_CXBORDER) * 2) + 12;
    LocFormaEditar.Height := pnlEditarNumero.Height + GetSystemMetrics(SM_CYCAPTION) + (GetSystemMetrics(SM_CYBORDER) * 2) + 14;
    lblNumeroOriginal.Caption := Con.Cadena;
//    edtNumero.Text := Con.Cadena;
    pnlEditarNumero.Parent := LocFormaEditar;
    pnlEditarNumero.Align := alClient;
    pnlEditarNumero.Visible := True;

    if Envio <> #0 then
    begin
      PasoCad := Con.Cadena;
      if Insertar then
      begin
        PasoCad := Envio;
        Concepto := TConcepto.Create;
        Concepto.Tipo := teNumero;
        Concepto.Estilo := [];
        Concepto.Color := clHotLight;
        Concepto.Cadena := PasoCad;
        Concepto.Leyenda := PasoCad + ' = ' + PasoCad;
        if IdxActual = -1 then
          Lista.AddObject('0:0', Concepto)
        else
          Lista.InsertObject(IdxActual, '0:0', Concepto);
        //Valor
      end
      else
        PasoCad := Copy(PasoCad, 1, EstaDentro) + Envio + Copy(PasoCad, EstaDentro +2, Length(PasoCad));

      edtNumero.Text := PasoCad;
    end
    else
      edtNumero.Text := Con.Cadena;

    if LocFormaEditar.ShowModal = mrOk then
    begin
      Difer := 0;
      for i := 0 to IdxActual do
        Difer := Difer + Length(TConcepto(Lista.Objects[i]).Cadena);
      MostrarFormula(Difer);
    end;

    SetRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Top', IntToStr(LocFormaEditar.Top));
    SetRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Left', IntToStr(LocFormaEditar.Left));
    SetRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Width', IntToStr(LocFormaEditar.Width));
    SetRegistry('\Ventanas', '\' + Self.Name + '\LocFormaEditar', 'Height', IntToStr(LocFormaEditar.Height));
  finally
    pnlEditarNumero.Visible := False;
    pnlEditarNumero.Align := alNone;
    pnlEditarNumero.Parent := Self;

    pnlEditarNumero.Width := oSize.X;
    pnlEditarNumero.Height := oSize.Y;

    LocFormaEditar.Free;
  end;
end;


procedure TFrmConceptosNomina.LocFormaEditarShow(Sender: TObject);
begin
  if Insertar then
  begin
    edtNumero.SetFocus;
    edtNumero.SelStart := 1;
  end
  else
  begin
    edtNumero.SetFocus;
    edtNumero.SelStart := EstaDentro +1;
  end;
end;

procedure TFrmConceptosNomina.AgregarElemento(Envio: String; LocTipo: TTipo; LocEstilo: TFontStyles; LocColor: TColor);
var
  Concepto: TConcepto;
  i, Difer, Repos: Integer;
  Uno, Dos: String;
  NewIdxActual, IdxColor: Integer;
begin
  CambiosRealizados := True;

  if IdxActual = -1 then
  begin
    if Lista.Count > 0 then
      NewIdxActual := Lista.Count
    else
      NewIdxActual := 0;
      //NewIdxActual := 1;
  end
  else
    NewIdxActual := IdxActual;

  Difer := 0;
  if NewIdxActual > 0 then
  begin
    Uno := Copy(Lista[NewIdxActual -1], 1, Pos(':', Lista[NewIdxActual -1]) -1);
    Dos := Copy(Lista[NewIdxActual -1], Length(Uno) +2, Length(Lista[NewIdxActual -1]));

    Difer := StrToInt(Dos) +1
  end
  else
    Difer := 0;

  Concepto := TConcepto.Create;
  Concepto.Tipo := LocTipo;
  Concepto.Estilo := LocEstilo;
  Concepto.Color := LocColor;
  Concepto.Cadena := Envio;
  case LocTipo of
    teParentesis1: Concepto.Leyenda := Envio + SepLey + 'Abrir paréntesis';
    teParentesis2: Concepto.Leyenda := Envio + SepLey + 'Cerrar paréntesis';
    teOAritmetico: Concepto.Leyenda := Envio + SepLey + 'Operador aritmético ' + sNombre(Envio[1]);
    teCondicion: Concepto.Leyenda := 'SI' + SepLey + 'Condición';
    teRango: Concepto.Leyenda := Envio + SepLey + 'Ubicar en Tabla';
    teInvertido: Concepto.Leyenda := Envio + SepLey + 'Forzar negativo';
  end;

  if IdxActual = -1 then
    Lista.AddObject(IntToStr(Difer) + ':' + IntToStr(Difer + Length(Envio) -1), Concepto)
  else
    Lista.InsertObject(IdxActual, IntToStr(Difer) + ':' + IntToStr(Difer + Length(Envio) -1), Concepto);
  Difer := Difer + Length(Envio);
  Repos := Difer;

  for i := NewIdxActual +1 to Lista.Count -1 do
  begin
    Uno := IntToStr(Difer);
    Dos := IntToStr(Difer + Length(TConcepto(Lista.Objects[i]).Cadena) -1);

    Lista[i] := Uno + ':' + Dos;

    Difer := Difer + Length(TConcepto(Lista.Objects[i]).Cadena);
  end;

  // Verfificar si es un parentesis
  if (Envio = '(') or (Envio = ')') then
  begin
    // Asignar el color correspondiente a cada parentesis
    IdxColor := -1;
    for i := 0 to Lista.Count -1 do
    begin
      Concepto := TConcepto.Create;
      Concepto := TConcepto(Lista.Objects[i]);
      if Concepto.Tipo in [teParentesis1, teParentesis2] then
      begin
        if Concepto.Tipo = teParentesis1 then
          Concepto.Color := ListaColores[IdxColor +1]
        else
          Concepto.Color := ListaColores[IdxColor];

        if Concepto.Tipo = teParentesis2 then
        begin
          if idxColor = 0 then
            idxColor := High(ListaColores)
          else
            Dec(idxColor);
        end
        else
          Inc(IdxColor);
      end;
    end;
  end;

  if Envio = 'SI' then
  begin
    Inc(IdxActual);
    AgregarElemento('(', teParentesis1, [], clBlack);

    // Reposicionar el cursor hacia delante del (
    Inc(Repos);
  end;

  MostrarFormula(Repos);
end;

function TFrmConceptosNomina.ValidaFormula(var pLista: TStringList;
  MostrarErrores: Boolean = True): Boolean;
var
  pi, z, ii, xx, cp, PrimeraComa: Integer;
  ListaErr: TStringList;
  PasoCadena, SubCadena, Cadena: String;
  Operador: Integer;
  ComasCondicion: TStringList;
  Uno, Dos: String;

procedure ValidaCondicion(Const i: Integer);
var
  x: Integer;
begin
  // Verificar si la condición tiene un parentesis al lado derecho
  if i < pLista.Count -1 then
  begin
    if TConcepto(pLista.Objects[i +1]).Tipo = teParentesis1 then
    begin
      // Localizar el parentesis que cierra la condición
      ii := i +2;
      cp := 0;
      while (ii < pLista.Count) and (cp <> -1) do
      begin
        if TConcepto(pLista.Objects[ii]).Tipo = teParentesis1 then
          Inc(cp);

        if TConcepto(pLista.Objects[ii]).Tipo = teParentesis2 then
          Dec(cp);

        if cp <> -1 then
          Inc(ii);
      end;

      if cp = -1 then
      begin
        // Tomar la cadena que engloba los dos parentesis
        SubCadena := '';
        for x := i +2 to ii -1 do
          SubCadena := SubCadena + TConcepto(pLista.Objects[x]).Cadena;

        // Contar las comas, deben estar todas en el mismo nivel que la primera que encuentres

        xx := 0;
        cp := 0;
        z := -1;
        PrimeraComa := -1;
        for x:= i +2 to ii -1 do
        begin
          if TConcepto(pLista.Objects[x]).Tipo = teParentesis1 then
            Inc(xx);

          if TConcepto(pLista.Objects[x]).Tipo = teParentesis2 then
            Dec(xx);

          if (TConcepto(pLista.Objects[x]).Tipo = teComa) and ((z = -1) or (z = xx)) then
          begin
            if z = -1 then
            begin
              z := xx;
              PrimeraComa := x;
            end;

            Inc(cp);
          end;
        end;

        if cp <> 2 then
          ListaErr.Add('La siguiente condición no tiene los parametros requeridos (SI(<CONDICION>| <VERDADERO>| <FALSO>): ' + 'SI(' + SubCadena + ')')
        else
        begin
          // Verificar si la condición se puede desarrollar
          SubCadena := '';
          cp := 0;
          for x:= i +2 to PrimeraComa -1 do
            if TConcepto(pLista.Objects[x]).Tipo = teParentesis2 then
              Inc(cp);

          for x:= PrimeraComa -1 downto i +2 do
          begin
            if TConcepto(pLista.Objects[x]).Tipo = teParentesis1 then
              Dec(cp);

            if cp = -1 then
              xx := x;
          end;

          // Verificar si esta parte tiene un operador lógico
          Operador := 0;
          cp := 0;
          SubCadena := '';
          for x := 1 + i + xx to PrimeraComa -1 do
          begin
            if TConcepto(pLista.Objects[x]).Tipo = teOLogico then
              Inc(cp);

            if cp = 1 then
              Operador := x;

            SubCadena := SubCadena + TConcepto(pLista.Objects[x]).Cadena;
          end;

          if cp > 0 then
          begin
            if Not ((cp = 1) or ((cp = 2) and (((TConcepto(pLista.Objects[Operador]).Tipo = teOLogico) and (TConcepto(pLista.Objects[Operador]).Cadena[1] in ['<', '>'])) and ((TConcepto(pLista.Objects[Operador +1]).Tipo = teOLogico) and (TConcepto(pLista.Objects[Operador +1]).Cadena[1] in ['=', '>']))) or ((TConcepto(pLista.Objects[Operador]).Tipo = teOLogico) and (TConcepto(pLista.Objects[Operador]).Cadena = '<')) and ((TConcepto(pLista.Objects[Operador +1]).Tipo = teOLogico) and (TConcepto(pLista.Objects[Operador +1]).Cadena = '>')))) then
              ListaErr.Add('La condición no puede ser interpretada: ' + SubCadena)
          end
          else
            ListaErr.Add('La condición no cuenta con un operador lógico: ' + SubCadena);
        end;
      end;
    end
    else
      ListaErr.Add('La condición no cuenta con su correspondiente parentesis: ' + TConcepto(pLista.Objects[i]).Cadena + TConcepto(pLista.Objects[i +1]).Cadena);
  end
  else
    ListaErr.Add('La condición no cuenta con sus correspondiente parametros por encontrarse al final de la formula: ' + TConcepto(pLista.Objects[i]).Cadena);
end;

procedure ValidaFormula(Const i: Integer);
var
  x: Integer;
begin
  // Verificar si la función tiene un parentesis al lado derecho
  if i < pLista.Count -1 then
  begin
    if TConcepto(pLista.Objects[i +1]).Tipo = teParentesis1 then
    begin
      // Localizar el parentesis que cierra la función
      ii := i +2;
      cp := 0;
      while (ii < pLista.Count) and (cp <> -1) do
      begin
        if TConcepto(pLista.Objects[ii]).Tipo = teParentesis1 then
          Inc(cp);

        if TConcepto(pLista.Objects[ii]).Tipo = teParentesis2 then
          Dec(cp);

        if cp <> -1 then
          Inc(ii);
      end;

      if cp <> -1 then
        ListaErr.Add('La Fórmula no cuenta con el parentesis que lo debería cerrar: ' + TConcepto(pLista.Objects[i]).Cadena);
    end;
  end
  else
    ListaErr.Add('La Formula no cuenta con su correspondiente parentesis: ' + TConcepto(pLista.Objects[i]).Cadena + TConcepto(pLista.Objects[i +1]).Cadena);
end;

begin
  // Verificar primero el número de parentesis
  ListaErr := TStringList.Create;
  ListaErr.Clear;
  ComasCondicion := TStringList.Create;
  ComasCondicion.Clear;
  cp := 0;
  for pi := 0 to pLista.Count -1 do
  begin
    if TConcepto(pLista.Objects[pi]).Tipo = teParentesis1 then
      Inc(cp);

    if TConcepto(pLista.Objects[pi]).Tipo = teParentesis2 then
      Dec(cp);

    if TConcepto(pLista.Objects[pi]).Tipo = teComa then
      ComasCondicion.Add(IntToStr(cp));
  end;

  if cp <> 0 then
  begin
    if cp > 0 then
      ListaErr.Add('El número de parentesis no corresponde| existen más parentesis abiertos que cerrados.')
    else
      ListaErr.Add('El número de parentesis no corresponde| existen más parentesis cerrados que abiertos.');
  end;

  PasoCadena := '';
  for pi := 0 to pLista.Count -1 do
  begin
    PasoCadena := PasoCadena + TConcepto(pLista.Objects[pi]).Cadena;

    if pi < pLista.Count -1 then
    begin
      if TConcepto(pLista.Objects[pi]).Tipo = TConcepto(pLista.Objects[pi +1]).Tipo then
      begin
        case TConcepto(pLista.Objects[pi]).Tipo of
          teOLogico: ListaErr.Add('Existen dos operadores lógicos juntos en el caracter ' + IntToStr(Length(PasoCadena) +1) + ': ' + RightStr(PasoCadena, 30) + TConcepto(pLista.Objects[pi +1]).Cadena);
          teOAritmetico: ListaErr.Add('Existen dos operadores aritméticos juntos en el caracter ' + IntToStr(Length(PasoCadena) +1) + ': ' + RightStr(PasoCadena, 30) + TConcepto(pLista.Objects[pi +1]).Cadena);
          teComa: ListaErr.Add('Existen dos comas juntas en el caracter ' + IntToStr(Length(PasoCadena) +1) + ': ' + RightStr(PasoCadena, 30) + TConcepto(pLista.Objects[pi +1]).Cadena);
        end;
      end;
    end;

    // Verificar los parametros de las condiciones
    case TConcepto(pLista.Objects[pi]).Tipo of
      teCondicion: ValidaCondicion(pi);
      teFormula: ValidaFormula(pi);
    end;
  end;

  // Verificar si existen operadores lógicos o matematicos al final o al inicio de la formula
  // el único permitod al inicio es el -
  if TConcepto(pLista.Objects[0]).Tipo = teOLogico then
    ListaErr.Add('No se permite un operador lógico al inicio de la f+ormula: ' + TConcepto(pLista.Objects[0]).Cadena);

  if (TConcepto(pLista.Objects[0]).Tipo = teOAritmetico) and (TConcepto(pLista.Objects[0]).Cadena <> '-') then
    ListaErr.Add('No se permite un operador aritmetico al inicio de la fórmula: ' + TConcepto(pLista.Objects[0]).Cadena);

  // Verificar los elementos Numericos, Empleado, Extra y Nomina tienen un operador matematico, logico o parentesis abierto al lado izquierdo (o bien es el primer elemento)
  for pi := 1 to pLista.Count -1 do
  begin
    if TConcepto(pLista.Objects[pi]).Tipo in [teNumero, teEmpleado, teNomina, teExtra] then
      if Not (TConcepto(pLista.Objects[pi -1]).Tipo in [teOLogico, teOAritmetico, teParentesis1, teComa]) then
      begin
        Uno := Copy(pLista[pi], 1, Pos(':', pLista[pi]) -1);
        Uno := Copy(pLista[pi], Length(Uno) +2, Length(pLista[pi]));

        Dos := '';
        cp := pi -1;
        while (cp < pLista.Count) and (Length(Dos + TConcepto(pLista.Objects[cp]).Cadena) <= 50) do
        begin
          Dos := Dos + TConcepto(pLista.Objects[cp]).Cadena;
          Inc(cp);
        end;

        ListaErr.Add('Existe un error en el caracter ' + Uno + ': ' + Dos);
      end;
  end;

  if MostrarErrores and (ListaErr.Count > 0) then
  begin
    Cadena := ListaErr.CommaText;
    Cadena := StringReplace(Cadena, ',', #10, [rfReplaceAll, rfIgnoreCase]);
    Cadena := StringReplace(Cadena, '|', ',', [rfReplaceAll, rfIgnoreCase]);
    InteliDialog.ShowModal('Errores', Cadena, mtWarning, [mbOk], 0);
  end
  else
    InterpretaFormula(pLista, 0, pLista.Count -1);

  Result := ListaErr.Count = 0;
end;

function TFrmConceptosNomina.InterpretaFormula(var pLista: TStringList;
  Inicio, Termino: Integer): Boolean;
begin
  try
    try

    finally
    end;
  except
    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConceptosNomina.VerificaSiAgrega(Key: Char);
var
  Procesado: Boolean;

procedure SoloModifica(Idx: Integer; LocKey: Char; LocLeyenda: String; Posicion: TPosicion);
var
  LocConcepto: TConcepto;
  Uno, Dos: String;
  q, qP: Integer;
begin
  // No agregar el pedo, solo modificar el que se encuentra en la posicion Idx
  LocConcepto := TConcepto.Create;
  LocConcepto := TConcepto(Lista.Objects[Idx]);
  if Posicion = tiIzquierda then
  begin
    LocConcepto.Cadena := LocConcepto.Cadena + LocKey;
    LocConcepto.Leyenda := LocConcepto.Cadena + SepLey + LocLeyenda;
  end
  else
  begin
    LocConcepto.Cadena := LocKey + LocConcepto.Cadena;
    LocConcepto.Leyenda := LocConcepto.Cadena + SepLey + LocLeyenda;
  end;

  // Cambiar tanto la terminación del modificado (agregar la longitud del caracter agregado) así como todas las demás hacia delante
  Uno := Copy(Lista[Idx], 1, Pos(':', Lista[Idx]) -1);
  Dos := Copy(Lista[Idx], Length(Uno) +2, Length(Lista[Idx]));
  qP := StrToInt(Dos) + Length(LocKey);
  Dos := IntToStr(qP);
  Lista[Idx] := Uno + ':' + Dos;

  for q := Idx +1 to Lista.Count -1 do
  begin
    Uno := Copy(Lista[q], 1, Pos(':', Lista[q]) -1);
    Dos := Copy(Lista[q], Length(Uno) +2, Length(Lista[q]));
    Uno := IntToStr(StrToInt(Uno) + Length(LocKey));
    Dos := IntToStr(StrToInt(Dos) + Length(LocKey));
    Lista[q] := Uno + ':' + Dos;
  end;

  Procesado := True;
  MostrarFormula(qP +1);
end;

begin
  Procesado := False;

  // Verificar si tiene elementos a la izquierda
  if IdxActual > 0 then
  begin
    // Verificar si yo soy un > y el de la izquierda es Operador Lógico y un =
    if (Key = '>') and (TConcepto(Lista.Objects[IdxActual -1]).Tipo = teOLogico) and (TConcepto(Lista.Objects[IdxActual -1]).Cadena = '=') then
      SoloModifica(IdxActual -1, Key, 'Igual o Mayor que...', tiIzquierda);

    // Verificar si yo soy un = y el de la izquierda es operador logico y un <
    if (TConcepto(Lista.Objects[IdxActual]).Cadena = '=') and (TConcepto(Lista.Objects[IdxActual -1]).Tipo = teOLogico) and (TConcepto(Lista.Objects[IdxActual -1]).Cadena = '<') then
      SoloModifica(IdxActual -1, Key, 'Igual o Menor que', tiIzquierda);

    // Verificar si yo soy un > y el de la izquierda es operador logico y un <
    if (TConcepto(Lista.Objects[IdxActual]).Cadena = '>') and (TConcepto(Lista.Objects[IdxActual -1]).Tipo = teOLogico) and (TConcepto(Lista.Objects[IdxActual -1]).Cadena = '<') then
      SoloModifica(IdxActual -1, Key, 'Diferente a...', tiIzquierda);
  end;

  // Verificar si tiene elementos a la derecha
  if IdxActual < Lista.Count then
  begin
    // Verificar si yo soy un = y el de la derecha es un operador lógico y un >
    if (Key = '=') and (TConcepto(Lista.Objects[IdxActual]).Tipo = teOLogico) and (TConcepto(Lista.Objects[IdxActual]).Cadena = '>') then
      SoloModifica(IdxActual, Key, 'Igual o Mayor que...', tiDerecha);

    // Verificar si yo soy un < y el de la derecha es operador logico y un =
    if (Key = '<') and (TConcepto(Lista.Objects[IdxActual]).Tipo = teOLogico) and (TConcepto(Lista.Objects[IdxActual]).Cadena = '=') then
      SoloModifica(IdxActual, Key, 'Igual o Menor que...', tiDerecha);

    // Verificar si yo soy un < y el de la derecha es un Operador Lógico y un >
    if (Key = '<') and (TConcepto(Lista.Objects[IdxActual]).Tipo = teOLogico) and (TConcepto(Lista.Objects[IdxActual]).Cadena = '>') then
      SoloModifica(IdxActual, Key, 'Diferente a...', tiDerecha);
  end;

  if Not Procesado then
    AgregarElemento(Key, teOLogico, [fsBold], clTeal);
end;

end.
