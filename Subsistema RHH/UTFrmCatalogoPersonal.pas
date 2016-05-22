unit UTFrmCatalogoPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvGroupBox, AdvShapeButton, Grids, DBGrids,
  JvExControls, JvLabel, frxClass, frxPreview, NxCollection, Menus, AdvMenus,
  UinteliDialog, DB, DBClient, frxDBSet, ToolPanels, URegistro, NxDBGrid,
  UTFrmAnalizaPerfiles, Mask, RxToolEdit, RxCurrEdit, frxExportXLS,
  frxExportRTF, frxExportPDF, JvComponentBase, JvComputerInfoEx, AdvGlowButton,
  AdvToolBar, AdvSmoothPanel, NxColumns, NxDBColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, AdvSmoothButton, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbon, cxRadioGroup, cxBarEditItem, cxEditRepositoryItems, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, dxRibbonRadialMenu,
  cxButtons, cxTextEdit, cxDBLookupComboBox, ComObj, DateUtils, StrUtils, ExportaExcel,
  cxPropertiesStore, ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxGDIPlusClasses, cxImage, cxFontNameComboBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxRibbonCustomizationForm, FrmHistorialGuardias, cxCurrencyEdit;

type
  TFiltro = Class
    Conjuncion: Integer;
    Campo: Integer;
    Operador: Integer;
    Valor: String;
  End;
  TDatos = class
    id: String;
    titulo: string;
  end;
  TObjRef = class
    Subsidio: Real;
    Ispt: Real;
  end;
  TFrmCatalogoPersonal = class(TForm)
    dsPersonal: TDataSource;
    frxReport1: TfrxReport;
    frxDBOrganizacion: TfrxDBDataset;
    frxDBDPersonal: TfrxDBDataset;
    cddocxpostulante: TClientDataSet;
    frxDBDocxPostulante: TfrxDBDataset;
    frxReport2: TfrxReport;
    Timer1: TTimer;
    MemoryDocumentos: TClientDataSet;
    Timer2: TTimer;
    PopupMenu1: TPopupMenu;
    Apreciacin1: TMenuItem;
    AjusteNormal1: TMenuItem;
    VariasPginas1: TMenuItem;
    AnchodePgina1: TMenuItem;
    PginaCompleta1: TMenuItem;
    N2: TMenuItem;
    Documentos1: TMenuItem;
    N3: TMenuItem;
    FichaPostulante1: TMenuItem;
    AdvPopupMenu2: TAdvPopupMenu;
    AnalizarPerfiles1: TMenuItem;
    PlazasdeacuerdoaPerfil1: TMenuItem;
    AdvPopupMenu3: TAdvPopupMenu;
    PlazasVacantes1: TMenuItem;
    CdExperiencia: TClientDataSet;
    MemExperiencia: TClientDataSet;
    frxDBMemExperiencia: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    cdEmpresas: TClientDataSet;
    JvCInfPc: TJvComputerInfoEx;
    cdDepartamento: TClientDataSet;
    DsDocumentosw: TDataSource;
    cdDocumentos: TClientDataSet;
    cdTipoNomina: TClientDataSet;
    Panel10: TPanel;
    GroupBox1: TcxGroupBox;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    Buscar_Codigo: TcxTextEdit;
    Buscar_Nombre: TcxTextEdit;
    cdInasistenciaUpt: TClientDataSet;
    cdInasistencia: TClientDataSet;
    cdTipoInasistencia: TClientDataSet;
    cdPersonalTE: TClientDataSet;
    cdPersonalTEUpt: TClientDataSet;
    cdPersonalimss: TClientDataSet;
    cdBaja: TClientDataSet;
    frxPreview1: TfrxPreview;
    ActividadContratacion: TfrxReport;
    frxDBContratacion: TfrxDBDataset;
    cdContratacion: TClientDataSet;
    frxDBEncabezado: TfrxDBDataset;
    dxbrmngrMain: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    dxBtnEditar: TdxBarLargeButton;
    dxBorrarFijo: TdxBarButton;
    dxBtnBuscar: TdxBarButton;
    dxBtnRefresh: TdxBarButton;
    dxBtnActividadContratacion: TdxBarLargeButton;
    btnBtnInasistencias: TdxBarLargeButton;
    btnBtnDatosContratacion: TdxBarLargeButton;
    dxrbn1Tab1: TdxRibbonTab;
    dxrbn1: TdxRibbon;
    dxbrmngrMainBar1: TdxBar;
    dxbrmngrMainBar2: TdxBar;
    tbFiltro: TdxBar;
    btn1: TdxBarLargeButton;
    cbEmpresas: TdxBarCombo;
    cbDepartamento: TdxBarCombo;
    cbTipoNomina: TdxBarCombo;
    dxBarButton1: TdxBarButton;
    btn_buscar: TdxBarLargeButton;
    tbMainBar3: TdxBar;
    rgTipoPersonal: TcxBarEditItem;
    ItemRes1: TcxEditRepository;
    ItemRes2: TcxEditRepository;
    cxRadiogRadioFiltro: TcxEditRepositoryRadioGroupItem;
    Panel1: TPanel;
    grp1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edtfechab: TDateEdit;
    btn2: TcxButton;
    btn3: TcxButton;
    Panel2: TPanel;
    lbl4: TLabel;
    grp2: TGroupBox;
    edtFechaInicio: TDateEdit;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    EdtFechaTermino: TDateEdit;
    btn4: TAdvGlowButton;
    btn5: TAdvGlowButton;
    dxrbnpmn1: TdxRibbonPopupMenu;
    dxBtnHistorialNominas: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    Btn_Baja: TdxBarLargeButton;
    cdFechaBaja: TClientDataSet;
    cbTipoFiniquito: TComboBox;
    JvLabel1: TJvLabel;
    groupBox2: TcxGroupBox;
    cxDBGrid1: TcxGrid;
    DbGrid1: TcxGridDBTableView;
    grdColumDbGridGrid1DBTableView1Column1: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column12: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column2: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column3: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column4: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column5: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column6: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column7: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column8: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column9: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column10: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column11: TcxGridDBColumn;
    CxGridNivelGrid1Level1: TcxGridLevel;
    Btn_Aceptar: TcxButton;
    Btn_Cancelar: TcxButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxLookupCBEmpresas: TcxBarEditItem;
    dsEmpresas: TDataSource;
    cxLookupCBDepartamento: TcxBarEditItem;
    cxLookupCBTipoNomina: TcxBarEditItem;
    dsDeptos: TDataSource;
    dsTipoNomina: TDataSource;
    DxBarBtnListaNominas: TdxBarLargeButton;
    dlgSaveExcel: TSaveDialog;
    DxBarBtnNominasIncluidas: TdxBarLargeButton;
    FrxReportListaNominas: TfrxReport;
    FrxCdListaNominas: TfrxDBDataset;
    CdListaNominasIncluidas: TClientDataSet;
    DxBarBtnCartaRenuncia: TdxBarLargeButton;
    DxBarBtnTodoPErsonal: TdxBarLargeButton;
    DxBarBtnEliminarPersonal: TdxBarButton;
    DxBarBtPersonalInfonavit: TdxBarButton;
    CxColumnInfonavit: TcxGridDBColumn;
    CxColumnAplicacion: TcxGridDBColumn;
    CxColumnTérmino: TcxGridDBColumn;
    CxColumnTermino: TcxGridDBColumn;
    DxBarMainBar3: TdxBar;
    DxBarBtnPersonalInfonavit: TdxBarLargeButton;
    CdDatosEmpresa: TClientDataSet;
    FrxReportInfonavit: TfrxReport;
    FrxCdDatosEmpresa: TfrxDBDataset;
    cxGBOnfonavit: TcxGroupBox;
    cxprprtstr1: TcxPropertiesStore;
    imgLogo2: TcxImage;
    pnlBtn: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    CxLbl3: TcxLabel;
    CxRGroupInfonavit: TcxRadioGroup;
    cxGBFiltroinfo: TcxGroupBox;
    cxDateEditInicio: TcxDateEdit;
    cxDateEditTermino: TcxDateEdit;
    CxLbl1: TcxLabel;
    CxLbl2: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    DxBarBtnDatosContratacion: TdxBarLargeButton;
    cxColumnatAplicacionInfonavit: TcxGridDBColumn;
    btnHistorialContratos: TdxBarLargeButton;
    CdEncabezado: TClientDataSet;
    cxstylPersonalEspecial: TcxStyle;
    CxColumnEspecial: TcxGridDBColumn;
    DxBarBtnDetalladoPagos: TdxBarLargeButton;
    CxColumnSueldoPactado: TcxGridDBColumn;
    DxBarBtnSueldoPactado: TdxBarButton;
    CxColumnTipoMovimiento: TcxGridDBColumn;
    cxstylPersonalBaja: TcxStyle;
    CxColumnDiasDescanso: TcxGridDBColumn;
    cxstylBajaEspecial: TcxStyle;
    procedure FormShow(Sender: TObject);
    procedure cdPersonalAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1DblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Timer1Timer(Sender: TObject);
    function CopiarEstructura(Fuente: TClientDataSet; Destino: TClientDataSet): Boolean;
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AjusteNormal1Click(Sender: TObject);
    procedure VariasPginas1Click(Sender: TObject);
    procedure AnchodePgina1Click(Sender: TObject);
    procedure PginaCompleta1Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AnalizarPerfiles1Click(Sender: TObject);
    procedure Filtroavanzado1Click(Sender: TObject);
    procedure PlazasdeacuerdoaPerfil1Click(Sender: TObject);
    procedure cdPersonalCalcFields(DataSet: TDataSet);
    procedure CbEmpresasChange(Sender: TObject);
    procedure cbDepartamentoChange(Sender: TObject);
    procedure Btn_AceptarClick(Sender: TObject);
    procedure cbTipoNominaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure Btn_AbrirClick(Sender: TObject);
    procedure Btn_ExcepcionesClick(Sender: TObject);
    procedure Btn_FichaBClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure Btn_BuscarClick(Sender: TObject);
    procedure Btn_ActividadClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure BtnModificarContratacionClick(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure rg1PropertiesChange(Sender: TObject);
    procedure rgTipoPersonalPropertiesChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dxBtnHistorialNominasClick(Sender: TObject);
    procedure cxLookupCBEmpresasPropertiesCloseUp(Sender: TObject);
    procedure DxBarBtnListaNominasClick(Sender: TObject);
    procedure DxBarBtnNominasIncluidasClick(Sender: TObject);
    procedure DxBarBtnTodoPErsonalClick(Sender: TObject);
    procedure DbGrid1NavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure DxBarBtnEliminarPersonalClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FrxReportInfonavitGetValue(const VarName: string;
      var Value: Variant);
    procedure DxBarBtnPersonalInfonavitClick(Sender: TObject);
    procedure CxRGroupInfonavitPropertiesChange(Sender: TObject);
    procedure DxBarBtnDatosContratacionClick(Sender: TObject);
    procedure btnHistorialContratosClick(Sender: TObject);
    procedure DbGrid1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure DxBarBtnDetalladoPagosClick(Sender: TObject);
    procedure DxBarBtnSueldoPactadoClick(Sender: TObject);
    procedure DbGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    IdOrganizacion: Integer;
    ListaFiltros: TStringList;
    CurPage: TAdvPage;
    FormaPreview: TForm;
    cdBuscar: TClientDataSet;
    procedure generarInformeInfonavit(imprime: Boolean);
    procedure EncabezadoConcetrado(Referencia: String; SoloEtiquetas: Boolean; WorkSheet: Variant; Excel: Variant; DiasDescanso: Integer; FechaNomina, FechaTerminoNomina: String; TituloOrganizacion: String; Var Colx: Integer; Var RowX: Integer; Var x: Integer);
    procedure CambiaEstadoBtn;
    function CopiarEstructuraExp(Fuente, Destino: TClientDataSet): Boolean;
    procedure BorrarArchivos(Ruta: string);
    procedure VerificarFormulario;
  public
    { Public declarations }
  end;

var
  FrmCatalogoPersonal: TFrmCatalogoPersonal;

implementation
  uses
    clientmoduleunit1, UTFrmFichaPersonal, Unit2, UTFrmFiltroPostulante,
    UTFrmDocumento, xDatabase, UTFrmCargos, UTFrmExcepciones, UtfrmModificaPersonalImss,
    UtFrmHistorialPago, UtFrmFichaGeneralPersonal, UTFRMDatosContratacion,UTFrmDiasPTU,
    UTFrmConcentradoNomina;

{$R *.dfm}

procedure TFrmCatalogoPersonal.Btn_EditarClick(Sender: TObject);
var
  TipoInfonavit: string;
begin
  try
    (*if true Form2.cdConfiguracionAcceso.FieldByName('RegistrosIndividuales').AsString = 'Si' then
    begin
      Application.CreateForm(TFrmFichaGeneralPersonal, FrmFichaGeneralPersonal);
      FrmFichaGeneralPersonal.IdPersonal := Form2.cdPersonal.FieldByName('IdPersonal').AsInteger;
      FrmFichaGeneralPersonal.Show;
    end
    else
    begin*)
      Application.CreateForm(TFrmFichaPersonal, FrmFichaPersonal);
      FrmFichaPersonal.IdPersonal := Form2.cdPersonal.FieldByName('IdPersonal').AsInteger;
      FrmFichaPersonal.IdPostulante := Form2.cdPersonal.FieldByName('IdPostulante').AsInteger;
      TipoInfonavit := UpperCase(Form2.cdPersonal.FieldByName('tAplicacionInfonavit').AsString);
      if TipoInfonavit = 'CUOTA MONETARIA FIJA' then
        FrmFichaPersonal.cbbAplica.ItemIndex := 0
      else if  TipoInfonavit = 'PORCENTAJE SOBRE EL SALARIO' then
        FrmFichaPersonal.cbbAplica.ItemIndex := 1
      else if  TipoInfonavit = 'VECES EL SALARIO MINIMO' then
        FrmFichaPersonal.cbbAplica.ItemIndex := 2
      else if TipoInfonavit = '' then
         FrmFichaPersonal.cbbAplica.ItemIndex := -1;
      //Form2.cdPersonal.FieldByName('tAplicacionInfonavit').AsString := TipoInfonavit;
      //FrmFichaPersonal.cbbAplica := Form2.cdPersonal.FieldByName('IdPostulante').AsInteger;
      FrmFichaPersonal.BtnAgregar.Visible := false;
      FrmFichaPersonal.CdDocumentos := Form2.cdDocumentos;
      FrmFichaPersonal.ShowModal;
      if FrmFichaPersonal.Resultado = 2 then
      begin
        try
          Form2.cdPersonal.AfterScroll := nil;
          Form2.cdPersonal.Refresh;
        finally
          //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
        end;
        // Eliminar los documentos en memoria
        MemoryDocumentos.First;
        while not MemoryDocumentos.Eof do
        begin
          if MemoryDocumentos.FieldByName('IdPostulante').AsInteger = Form2.cdPersonal.FieldByName('IdPostulante').AsInteger then
            MemoryDocumentos.Delete
          else
            MemoryDocumentos.Next;
        end;

        MemExperiencia.First;
        while not MemExperiencia.Eof do
        begin
          if MemExperiencia.FieldByName('IdPostulante').AsInteger = Form2.cdPersonal.FieldByName('IdPostulante').AsInteger then
            MemExperiencia.Delete
          else
            MemExperiencia.Next;
        end;
        //frxReport1.ShowReport(TRUE);
      end;
    //end;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPersonal.Btn_ExcepcionesClick(Sender: TObject);
begin
  Try
    if Form2.cdPersonal.FieldByName('IdPersonalimss').IsNull then
      raise InteligentException.CreateByCode(24, ['El Personal que intenta modificar, no se encuentra contratado.']);

    if cdInasistenciaUpt.ProviderName = '' then
      if Not CrearConjunto(cdInasistenciaUpt, 'nom_inasistencia', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Inasistencias']);

    if cdTipoInasistencia.ProviderName = '' then
    begin
      if Not CrearConjunto(cdTipoInasistencia, 'nom_tipoinasistencia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Inasistencia']);

      cdTipoInasistencia.Open;
    end;

    Application.CreateForm(TFrmExcepciones, FrmExcepciones);
    FrmExcepciones.dsPersonal.DataSet := Form2.cdPersonal;
    FrmExcepciones.dsInasistencia.DataSet := cdInasistencia;
    FrmExcepciones.dsTipoInasistencia.DataSet := cdTipoInasistencia;
    FrmExcepciones.dsInasistenciaUpt.DataSet := cdInasistenciaUpt;

    if Not CargarDatosFiltrados(cdInasistenciaUpt, 'IdExcepcion', [-9]) then
      raise InteligentException.CreateByCode(21, ['Inasistencia']);

    if cdInasistenciaUpt.Active then
      cdInasistenciaUpt.Refresh
    else
      cdInasistenciaUpt.Open;

    FrmExcepciones.ShowModal;
  Finally
    FrmExcepciones.dsPersonal.DataSet := Nil;
    cdInasistenciaUpt.Close;
  End;
end;

procedure TFrmCatalogoPersonal.Btn_QuitarClick(Sender: TObject);
var
  cdBuscar: TClientDataSet;

begin
{  if Form2.cdPersonal.State = dsBrowse then
  Try
    if Form2.cdPersonal.RecordCount <= 0 then
      raise InteligentWarning.CreateByCode(26, ['Postulantes']);

    //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
    if not ClientModule1.LeePermisos('Postulantes','BORRAR') then
      Exit;

    if (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + Form2.cdPersonal.FieldByName('CodigoPersonal').AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo) then
      raise InteligentException.Create('Proceso cancelado por el usuario');

    if BorrarRegistro('rhu_postulante', [Form2.cdPersonal.FieldByName('IdPostulante').AsInteger]) > 0 then
      Form2.cdPersonal.Refresh  // Si se ha podido eliminar un registro se deberá actualizar el grid
    else
      InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar el registro [' + Form2.cdPersonal.FieldByName('CodigoPersonal').AsString + ']' + #10 + #10 + 'Es probable que este registro se encuentre relacionado con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha eliminado ningún registro', e.message, mtWarning, [mbOk], 0);

    on e:InteligentException do
      ; // No hacer nada, solo es para cambiar el flujo del programa

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;



  if (Form2.cdPersonal.Active) and (Form2.cdPersonal.RecordCount > 0) then
  begin
    // Primero verificar si el empleado a eliminar ya ha sido incluido en una nómina
    Try
      Try
        EliminarRegistro(Form2.cdPersonal, [Form2.cdPersonal.FieldByName('IdPersonal').AsInteger]);
      Finally
        EliminarConjunto(cdBuscar);
        cdBuscar.Free;
      End;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end;}
end;

procedure TFrmCatalogoPersonal.Btn_RefreshClick(Sender: TObject);
begin
  try
    // Limpiar los datos de documentos para que estos vuelvan a ser releidos nuevamente
    MemoryDocumentos.First;
    while Not MemoryDocumentos.Eof do
      MemoryDocumentos.Delete;

    MemExperiencia.First;
    while Not MemExperiencia.Eof do
      MemExperiencia.Delete;

    //Btn_Buscar.Click;

    {if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;

    Form2.cdPersonal.AfterScroll(Form2.cdPersonal);}
    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;

    //Btn_FichaB.Enabled := (Form2.cdPersonal.RecordCount > 0) and (Form2.cdTipoNomina.FieldByName('IdTipoNomina').AsInteger = 2);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPersonal.CambiaEstadoBtn;
var
  EstadoBtn: Boolean;
begin
  EstadoBtn := (Form2.cdPersonal.Active) and (Form2.cdPersonal.RecordCount > 0);
  dxBtnEditar.Enabled := EstadoBtn;
  dxBorrarFijo.Enabled := EstadoBtn;
  btnBtnInasistencias.Enabled := EstadoBtn;
  btnBtnDatosContratacion.Enabled := EstadoBtn;
  dxBtnActividadContratacion.Enabled := EstadoBtn;
  DxBarBtnNominasIncluidas.Enabled := EstadoBtn;
  DxBarBtnEliminarPersonal.Enabled := EstadoBtn;
  DxBarBtnDatosContratacion.Enabled := EstadoBtn;
  btnHistorialContratos.Enabled := EstadoBtn;
  dxbarbtnDetalladoPagos.enabled := EstadoBtn;
end;

procedure TFrmCatalogoPersonal.btn2Click(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Form2.cdPersonal.Refresh;

    // Validar la fecha de baja
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not Assigned(cdBuscar) then
        cdBuscar := TClientDataSet.Create(Self);

      if Assigned(cdBuscar) then
      begin
        if cdBuscar.ProviderName = '' then
          if Not CrearConjunto(cdBuscar, 'nuc_personal_validafecha', ccSelect) then
            raise InteligentException.CreateByCode(5, ['nuc_personal_validafecha']);

        if cdBuscar.ProviderName <> '' then
        begin
          if Not CargarDatosFiltrados(cdBuscar, 'IdPersonal,Fecha', [Form2.cdPersonal.FieldByName('IdPersonal').AsInteger, ClientModule1.DatetoStrSql(EdtFechaB.Date)]) then
            raise InteligentException.CreateByCode(6, ['nuc_personal_validafecha', Form2.cdPersonal.FieldByName('IdPersonal').AsString + '/' + ClientModule1.DatetoStrSql(EdtFechaB.Date), 'Id. Personal / Fecha']);

          if cdBuscar.Active then
            cdBuscar.Refresh
          else
            cdBuscar.Open;

          if cdBuscar.RecordCount = 0 then
            raise InteligentException.CreateByCode(24, ['No es posible dar de baja a esta personal ya que no ha sido dada de alta nunca.']);

          if cdBuscar.FieldByName('Reingreso').IsNull then
            raise InteligentException.CreateByCode(24, ['La persona que está tratando dar de baja no ha sido contratada a la fecha de ' + ClientModule1.DatetoStrSql(EdtFechaB.Date)]);

          if (Not cdBuscar.FieldByName('Baja').IsNull) {and (cdBuscar.FieldByName('Baja').AsDateTime < EdtFechaB.Date)} then
            raise InteligentException.CreateByCode(24, ['No es posible dar de baja a ' + Form2.cdPersonal.FieldByName('NombreCompleto').AsString + ' con fecha ' + DateToStr(EdtFechaB.Date) + ' debido a que ya que existe un movimiento de ' + cdBuscar.FieldByName('TipoMovimiento').AsString + ' el día ' + cdBuscar.FieldByName('Baja').AsString]);
        end;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;

    ClientModule1.ImprimeReporte('fichabaja.fr3',frxReport1);
    Panel1.Visible:=False;

  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoPersonal.Btn_FichaBClick(Sender: TObject);
var
  Forma: TForm;
begin
  Try
    Form2.cdPersonal.AfterScroll := nil;
    Form2.cdPersonal.Refresh;

    if Form2.cdPersonal.FieldByName('IdPersonalimss').IsNull then
      raise InteligentException.CreateByCode(24, ['El Personal que intenta modificar, no se encuentra contratado.']);

    // Verificar si el personal está activo
    if cdFechaBaja.ProviderName = '' then
      if Not CrearConjunto(cdFechaBaja, 'nuc_personal_baja', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Movimientos de contratación']);

    if Not CargarDatosFiltrados(cdFechaBaja, 'IdPersonal', [Form2.cdPersonal.FieldByName('IdPersonal').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Movimientos de contratación', Form2.cdPersonal.FieldByName('IdPersonal').AsInteger, 'Id. Personal']);

    if cdFechaBaja.Active then
      cdFechaBaja.Refresh
    else
      cdFechaBaja.Open;

    if cdFechaBaja.RecordCount > 0 then
      raise InteligentException.CreateByCode(24, ['El empleado ' + Form2.cdPersonal.FieldByName('NombreCompleto').AsString + ' ya se encuentra dado de baja el día: ' + cdFechaBaja.FieldByName('FechaBaja').AsString]);

    Label1.Caption:=Form2.cdPersonal.FieldByName('NombreCompleto').AsString;
    Edtfechab.Date:=Date;
    Panel1.Visible := True;
    Try
      Forma := TForm.Create(Nil);
      Forma.Width := 295;
      Forma.Height := 195;
      Forma.Position := poMainFormCenter;
      Forma.Caption := 'Baja de Personal';
      Panel1.Parent := Forma;
      Panel1.Align := alClient;
      Panel1.Visible := True;

      Forma.ShowModal;
    Finally
      //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
      Panel1.Visible := False;
      Panel1.Align := alNone;
      Panel1.Parent := Self;
      Forma.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoPersonal.btn4Click(Sender: TObject);
begin
  try
    // Verificar si ya se cargaron los encabezados
    if Form2.cdEncabezado.ProviderName = '' then
      if Not CrearConjunto(Form2.cdEncabezado, 'nuc_configuracion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Configuración']);

    if Not CargarDatosFiltrados(Form2.cdEncabezado, 'Parametro', ['Encabezado']) then
      raise InteligentException.CreateByCode(6, ['Configuración', 'Encabezado', 'Parametro']);

    if Form2.cdEncabezado.Active then
      Form2.cdEncabezado.Refresh
    else
      Form2.cdEncabezado.Open;

    if cdContratacion.ProviderName = '' then
      if Not CrearConjunto(cdContratacion, 'historial_contratacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Historial de Contratación']);

    if Not CargarDatosFiltrados(cdContratacion, 'IdPersonal,fechai,fechat', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger,ClientModule1.DatetoStrSql(edtFechaInicio.Date),ClientModule1.DatetoStrSql(EdtFechaTermino.Date)]) then
      raise InteligentException.CreateByCode(6, ['Historial de Contratación', dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger, 'Id. Personal']);

    if cdContratacion.Active then
      cdContratacion.Refresh
    else
      cdContratacion.Open;

    if cdContratacion.RecordCount = 0 then
      raise InteligentException.CreateByCode(22,['Historial de Contratación.']);
    ClientModule1.ImprimeReporte('HistorialContratacion.fr3', ActividadContratacion);

  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoPersonal.btn5Click(Sender: TObject);
begin
  if Assigned(FindComponent('FrmActividad')) then
    TForm(FindComponent('FrmActividad')).Close;
end;

procedure TFrmCatalogoPersonal.btnHistorialContratosClick(Sender: TObject);
var
  Id_Personal : Integer;
begin
  Id_Personal := Form2.cdPersonal.FieldByName('IdPersonal').AsInteger;
  //Cuando se de click en Historial de Guardias, debe de mostrar el historial de guardias del empleado seleeccionado
  Application.CreateForm(TTFrmHistorialGuardias, TFrmHistorialGuardias);
  TFrmHistorialGuardias.IdPersonal := Id_Personal;
  TFrmHistorialGuardias.ShowModal;
end;

procedure TFrmCatalogoPersonal.AjusteNormal1Click(Sender: TObject);
begin
  {frxReport1.PreviewOptions.ZoomMode := zmDefault;
  frxReport1.ShowReport(); }
end;

procedure TFrmCatalogoPersonal.AnalizarPerfiles1Click(Sender: TObject);
var
  i: Integer;
begin
  Try
    Application.CreateForm(TFrmAnalizaPerfiles, FrmAnalizaPerfiles);
    FrmAnalizaPerfiles.LlavePostulante := Form2.cdPersonal.FieldByName('IdPostulante').AsInteger;;
    FrmAnalizaPerfiles.Llavemenu:=1;
    FrmAnalizaPerfiles.ShowModal;
  Finally
    FrmAnalizaPerfiles.Free;
  End;
end;

procedure TFrmCatalogoPersonal.AnchodePgina1Click(Sender: TObject);
begin   {
  frxReport1.PreviewOptions.ZoomMode := zmPageWidth;
  frxReport1.ShowReport();   }
end;

procedure TFrmCatalogoPersonal.cbTipoNominaChange(Sender: TObject);
begin
  Form2.cdTipoNomina.RecNo := cbTipoNomina.ItemIndex +1;
  //Btn_Buscar.Enabled := True;
  //Btn_FichaB.Enabled:= False;
end;

procedure TFrmCatalogoPersonal.cdPersonalAfterScroll(DataSet: TDataSet);
var
  FieldName: string;
  Cursor: TCursor;
  i: Integer;

  function CalcularAntiguedadCargo(Duracion : word; Cargo : string): string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Cargo + ' - Antiguedad: ' + CadDura;
    Result:=Cadena;
  end;

begin
  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      //if Form2.cdPersonal.FieldByName('IdPersonalimss').IsNull then
        //raise InteligentException.CreateByCode(24, ['El Personal que intenta modificar, no se encuentra contratado.']);

      //cbEmpresas.Text := Form2.cdPersonal.FieldByName('NombreOrganizacion').AsString;

      // Verificar si ya se han leido los documentos para este postulante
      MemExperiencia.CancelRange;
      if Not MemoryDocumentos.Locate('IdPostulante', Form2.cdPersonal.FieldByName('IdPostulante').AsInteger, []) then
      begin
        if Form2.cdDocxPostulante.Active then
          Form2.cdDocxPostulante.Close;

        CargarDatosFiltrados(Form2.cddocxpostulante, 'idpostulante', [Form2.cdPersonal.FieldByName('idpostulante').AsInteger]);
        Form2.cdDocxPostulante.Open;

        // Cargar los datos en memoria para su uso posterior
        Form2.cdDocxPostulante.First;
        while not Form2.cdDocxPostulante.Eof do
        begin
          MemoryDocumentos.Append;
          for i := 0 to Form2.cdDocxPostulante.FieldDefs.Count -1 do
          begin
            FieldName := Form2.cdDocxPostulante.FieldDefs.Items[i].Name;
            MemoryDocumentos.FieldByName(FieldName).AsVariant := Form2.cdDocxPostulante.FieldByName(FieldName).AsVariant;
          end;
          MemoryDocumentos.Post;

          Form2.cdDocxPostulante.Next;
        end;

        if Form2.cdDocxPostulante.RecordCount = 0 then
        begin
          // Si no existen registros se deberá grabar un registro "falso" que indique que no existen documentos
          MemoryDocumentos.Append;

          for i := 0 to MemoryDocumentos.FieldDefs.Count -1 do
          begin
            FieldName := MemoryDocumentos.FieldDefs.Items[i].Name;
            MemoryDocumentos.FieldByName(FieldName).AsString := '';
          end;
          MemoryDocumentos.FieldByName('IdPostulante').AsInteger := Form2.cdPersonal.FieldByName('idpostulante').AsInteger;
          MemoryDocumentos.FieldByName('NombreDocumento').AsString := '( NO EXISTEN DOCUMENTOS ASIGNADOS )';
          MemoryDocumentos.Post;
        end;
      end;
//##############################################################################
//##############################################################################
      if not MemExperiencia.Locate('IdPostulante', Form2.cdPersonal.FieldByName('IdPostulante').AsInteger, []) then
      begin
        if Form2.cdExperiencia.Active then
        Form2.cdExperiencia.Close;

        CargarDatosFiltrados(Form2.cdExperiencia, 'idpostulante', [Form2.cdPersonal.FieldByName('idpostulante').AsInteger]);
        Form2.cdExperiencia.Open;

        // Cargar los datos en memoria para su uso posterior
        Form2.cdExperiencia.First;
        while not Form2.cdExperiencia.Eof do
        begin
          MemExperiencia.Append;
          for i := 0 to Form2.cdExperiencia.FieldDefs.Count -1 do
          begin
            FieldName := Form2.cdExperiencia.FieldDefs.Items[i].Name;
            MemExperiencia.FieldByName(FieldName).AsVariant := Form2.cdExperiencia.FieldByName(FieldName).AsVariant;
          end;
          MemExperiencia.FieldByName('Experiencia').AsString:=CalcularAntiguedadCargo(Form2.cdExperiencia.FieldByName('Duracion').AsInteger, Form2.cdExperiencia.FieldByName('Titulocargo').AsString);
          MemExperiencia.Post;

          Form2.cdExperiencia.Next;
        end;


          if Form2.cdExperiencia.RecordCount = 0 then
          begin
            // Si no existen registros se deberá grabar un registro "falso" que indique que no existen documentos
            MemExperiencia.Append;

            for i := 0 to MemExperiencia.FieldDefs.Count -1 do
            begin
              FieldName := MemExperiencia.FieldDefs.Items[i].Name;
              MemExperiencia.FieldByName(FieldName).AsString := '';
            end;
            MemExperiencia.FieldByName('IdPostulante').AsInteger := Form2.cdPersonal.FieldByName('idpostulante').AsInteger;
            MemExperiencia.FieldByName('Experiencia').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
            MemExperiencia.FieldByName('TituloCargo').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
            MemExperiencia.Post;
          end;
      end;
      MemExperiencia.CancelRange;
      MemExperiencia.IndexFieldNames:='Idpostulante';
      MemExperiencia.SetRange([Form2.cdPersonal.FieldByName('idpostulante').AsInteger],[Form2.cdPersonal.FieldByName('idpostulante').AsInteger]);
//##############################################################################

      Timer1.Enabled := True;

      if Form2.cdPersonal.RecNo = Form2.cdPersonal.RecordCount then
        Form2.cdPersonal.GetNextPacket;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    ; // No hacer nada
  end;
end;

procedure TFrmCatalogoPersonal.cdPersonalCalcFields(DataSet: TDataSet);
var
  Ruta, NombreReporte: String;
  Archivo: TSearchRec;
begin
  // Verificar si la imagen ya existe de manera local
  Ruta := ExtractFilePath(ParamStr(0)) + 'Temp\Imagenes\';
  if Not DirectoryExists(Ruta) then
    ForceDirectories(Ruta);

  NombreReporte := DataSet.FieldByName('CodigoPersonal').AsString + '.jpg';

  if FindFirst(Ruta + NombreReporte, faAnyFile, Archivo) = 0 then
  begin
    ShowMessage(DataSet.FieldByName('FechaHoraImagen').AsString + '  ' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp)));

    {Cadena := Archivo.Name + ':' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp));

    // Verificar si el archivo está actualizado
    if Not CompararReporte(Ruta, Cadena) then
      // Actualizar el reporte con el reporte que se encuentra en la base de datos
      Try
        if not ActualizaReporte(Ruta, NombreReporte) then
        begin
          // Creo que aquí es donde se debe borrar el reporte de TEMP
        end;
      Except
        raise InteligentException.CreateByCode(15, [NombreReporte]);
      End;}
  end
  else
  begin
    // Actualizar el reporte con el reporte que se encuentra en la base de datos
    Try
      if not ActualizaReporte(Ruta, NombreReporte) then
      begin
        // Por el momento se deberá obtener el reporte de la carpeta de reportes, paulatinamente esto dejará de funcionar cuando los reportes se encuentren en la base de datos
        Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
        if Not FileExists(Ruta + NombreReporte) then
          raise InteligentException.CreateByCode(15, [NombreReporte]);
      end;
    Except
      raise InteligentException.CreateByCode(15, [NombreReporte]);
    End;
  end;
end;

procedure TFrmCatalogoPersonal.Filtroavanzado1Click(Sender: TObject);
var
  i: Integer;
  Cadena: String;
  Valores: Array of Variant;
begin
  Application.CreateForm(TFrmFiltroPostulante, FrmFiltroPostulante);
  if FrmFiltroPostulante.ShowModal = mrOk then
  begin
    ListaFiltros.Clear;
    SetLength(Valores, FrmFiltroPostulante.ListBox1.Count);
    for i := 0 to FrmFiltroPostulante.ListBox1.Count -1 do
    begin
      Cadena := Cadena + FrmFiltroPostulante.ComboBox1.Items[TFiltro(FrmFiltroPostulante.ListBox1.Items.Objects[i]).Campo];
      Valores[i] := TFiltro(FrmFiltroPostulante.ListBox1.Items.Objects[i]).Valor;
      ListaFiltros.AddObject(FrmFiltroPostulante.ListBox1.Items[i], FrmFiltroPostulante.ListBox1.Items.Objects[i]);
    end;

    if FrmFiltroPostulante.ListBox1.Count > 0 then
    begin
      CargarDatosFiltrados(Form2.cdPersonal, Cadena, Valores);
      Form2.cdPersonal.Refresh;
      Form2.cdPersonal.First;
    end;
  end;
end;

procedure TFrmCatalogoPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
  OrdenColumnas: String;
begin
  FrxPreview1.Align := alNone;
  FrxPreview1.Parent := Self;

  if (Form2.cdPersonal.ProviderName <> '') and (Form2.cdPersonal.Active) then
  Form2.cdPersonal.Close;

  if Assigned(cdBuscar) and (cdBuscar.ProviderName <> '') then
    EliminarConjunto(cdBuscar);

  EliminarConjunto(cdFechaBaja);

  //Archivo_Catalogo_Personal.Parent := Menu;
  //Opciones_Catalogo_Personal.Parent := Menu;

  for i := 0 to Form2.tbMain.AdvPageCount -1 do
    Form2.tbMain.AdvPages[i].PageIndex := i;

  Form2.tbMain.ActivePage := CurPage;

  OrdenColumnas := '';
  for i := 0 to DBGrid1.ColumnCount -1 do
  Try
    OrdenColumnas := OrdenColumnas + DbGrid1.Columns[i].DataBinding.FieldName + ',';
    SetRegistry('\Ventanas', '\' + Self.Name, DbGrid1.Columns[i].DataBinding.FieldName, IntToStr(DbGrid1.Columns[i].Width));
  Except
    ;
  End;

  if OrdenColumnas <> '' then
  begin
    OrdenColumnas := Copy(OrdenColumnas, 1, Length(OrdenColumnas) -1);
    SetRegistry('\Ventanas', '\' + Self.Name, 'OrdenColumnas', OrdenColumnas);
  end;

  //ListaFiltros.SaveToFile(Self.Name + '.flt');
  //Eliminarconjunto([{Form2.cdPersonal,} cddocxpostulante]);
  LiberarVentana(Self, Action);
  //SetRegistry('\Ventanas', '\' + Self.Name, 'Panel4_Width', IntToStr(Panel4.Width));
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH') then
  begin
    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\');
    RemoveDir(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH');
  end;

  if cdInasistencia.ProviderName <> '' then
    EliminarConjunto(cdInasistencia);

  if cdInasistenciaUpt.ProviderName <> '' then
    EliminarConjunto(cdInasistenciaUpt);

  if cdTipoInasistencia.ProviderName <> '' then
    EliminarConjunto(cdTipoInasistencia);

  Action := cafree;
end;

procedure TFrmCatalogoPersonal.FormCreate(Sender: TObject);
var
  Existe: Boolean;
  i: Word;
  OrdenColumnas: String;
begin
  FormaPreview := TForm.Create(Self);
  FrxPreview1.Parent := FormaPreview;
  FrxPreview1.Align := alClient;

  //ClientModule1.ComponentColor(self);
//  for i := 0 to DBGrid1.ColumnCount -1 do
//  Try
//    DbGrid1.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, DbGrid1.Columns[i].DataBinding.FieldName));
//  Except
//    ;
//  End;
//
//  OrdenColumnas := '';
//  Try
//    OrdenColumnas := VarRegistry('\Ventanas', '\' + Self.Name, 'OrdenColumnas');
//  Except
//    ;
//  End;

  //Creacion de la carpeta temporal
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH') then
    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\')
  else
    mkdir(ExtractFilePath(Application.ExeName)+'Temp\Documentos RH');

  PosicionAnterior(Self);
  ListaFiltros := TStringList.Create;
  Try
    //Panel4.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Panel4_Width', Existe));
  Except
    ;
  End;

  ////*******TRATANDO DE OPTIMIZAR EL CODIGO******
  //OldTextStatus := Form2.StatusBar1.Panels[0].Text;

  //Form2.StatusBar1.Panels[0].Text := 'Estructura de datos de Empresas';
  //Form2.Repaint;

  if Form2.cdEmpresas.ProviderName = '' then
    if Not CrearConjunto(Form2.cdEmpresas, 'nuc_organizacion_basico', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Organizaciones']);

  //Form2.StatusBar1.Panels[0].Text := 'Estructura de datos de Personal';
  //Form2.StatusBar1.Repaint;

  if Form2.cdPersonal.ProviderName = '' then
    if not CrearConjunto(Form2.cdPersonal, 'nuc_personal', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Personal']);

  Form2.cdPersonal.OnCalcFields := cdPersonalCalcFields;

  if cdTipoNomina.ProviderName = '' then
    if not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);


  //Form2.StatusBar1.Panels[0].Text := 'Estructura de datos de Documentación';
  //Form2.StatusBar1.Repaint;

  if Form2.cdDocumentos.ProviderName = '' then
    if Not CrearConjunto(Form2.cdDocumentos, 'rhu_documento', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Documentos']);

  if Form2.cdDocxPostulante.ProviderName = '' then
    if not CrearConjunto(Form2.cdDocxPostulante, 'rhu_docxpostulante', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Documentación de Postulantes']);

  if Form2.cdDepartamento.ProviderName = '' then
    if Not CrearConjunto(Form2.cdDepartamento, 'nuc_departamento', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Departamentos']);

  if Not CrearConjunto(cdPersonalimss, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal']);

  if Not CrearConjunto(cdBaja, 'nuc_personalimss', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Personal']);

  if not CrearConjunto(CdDatosEmpresa, 'nuc_configuracion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_Configuración']);
end;

procedure TFrmCatalogoPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cursor: TCursor;
begin
  if (Shift = []) and (Key = 116) then
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      //Btn_Refresh.Click;
    Finally
      Screen.Cursor := Cursor;
    End;
end;

procedure TFrmCatalogoPersonal.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  OldTextStatus: String;
  i: Integer;
  oDatos, dDatos: TDatos;
begin

  CurPage := Form2.tbMain.ActivePage;
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

       ReadConfigCxGrid(CxDbGrid1, Self.Name);


      if not CargarDatosFiltrados(cdTipoNomina, 'idTipoNomina', [-1]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Tipos de Nómina', 'IdTipoNomina', '-1']);

      if cdTipoNomina.Active then
        cdTipoNomina.Refresh
      else
        cdTipoNomina.Open;

      if not CargarDatosFiltrados(cdDocumentos, 'idDocumento', [-9]) then
        raise InteligentException.CreateByCode(6, ['iddocumento', 'Rhu Documentos', '-9']);

      if Not Form2.cdDocumentos.Active then
        Form2.cdDocumentos.Open;

      //Form2.StatusBar1.Panels[0].Text := 'Leyendo datos de Empresas';
      //Form2.StatusBar1.Repaint;

      if (Not Form2.cdEmpresas.Active) or ((Form2.cdEmpresas.Active) and (Form2.cdEmpresas.RecordCount = 0)) or ((Form2.cdEmpresas.Active) and (Form2.cdEmpresas.RecordCount > 0) and (Form2.cdEmpresas.FieldByName('Padre').AsInteger <> -5)) then
      begin
        if Not CargarDatosFiltrados(Form2.cdEmpresas, 'Padre', [-5]) then
          raise InteligentException.CreateByCode(6, ['Organizaciones', -5, 'Padre']);

        Form2.cdEmpresas.Open;
      end;

      //Form2.StatusBar1.Panels[0].Text := 'Leyendo datos de Documentación';
      //Form2.StatusBar1.Repaint;


      if (Not Form2.cdDocxPostulante.Active) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount = 0)) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount > 0) and (Form2.cdDocxPostulante.FieldByName('Padre').AsInteger <> -5)) then
      begin
        if Not  CargarDatosFiltrados(Form2.cdDocxPostulante, 'idpostulante', [-9]) then
          raise InteligentException.CreateByCode(6, ['Documentación de Postulantes', -9, 'IdPostulante']);

        Form2.cdDocxPostulante.Open;
      end;

      if Not CopiarEstructura(Form2.cdDocxPostulante, MemoryDocumentos) then
        raise InteligentException.CreateByCode(16, ['Documentos de Postulantes']);


      if Not Form2.cdDepartamento.Active then
        Form2.cdDepartamento.Open;
      //*****EN CASO NECESARIO VOLVER A UTILIZAR
      //**** LO QUITÉ PARA OPTIMIZAR LA VELOCIDAD DEL CATALOGO

      if Form2.cdExperiencia.ProviderName = '' then
        if not CrearConjunto(Form2.cdExperiencia, 'rhu_documentosrecomendacion', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Postulantes']);

      if (Not Form2.cdDocxPostulante.Active) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount = 0)) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount > 0) and (Form2.cdDocxPostulante.FieldByName('Padre').AsInteger <> -5)) then
      begin
        if Not  CargarDatosFiltrados(Form2.CdExperiencia, 'idpostulante', [-9]) then
          raise InteligentException.CreateByCode(6, ['Documentos Recomendacion', -9, 'IdPostulante']);

        Form2.cdExperiencia.Open;
      end;

      if Not CopiarEstructuraExp(Form2.cdExperiencia, MemExperiencia) then
        raise InteligentException.CreateByCode(16, ['Documentos Recomendacion']);

      //Form2.StatusBar1.Panels[0].Text := 'Leyendo datos de Empresas';
      //Form2.StatusBar1.Repaint;

      Form2.cdEmpresas.First;
      //CbEmpresas.items.AddObject('TODAS LAS EMPRESAS', TObject(-1));
      (*while not Form2.cdEmpresas.Eof do
      begin
        oDatos := TDatos.Create;
        oDatos.titulo := Form2.cdEmpresas.FieldByName('NombreOrganizacion').AsString;
        oDatos.id := Form2.cdEmpresas.FieldByName('IdOrganizacion').asString;
        CbEmpresas.items.AddObject(oDatos.titulo, TObject(oDatos.id));
        Form2.CdEmpresas.Next;
      end;
      *)
      //if Not Form2.cdTipoNomina.Active then
        //Form2.cdTipoNomina.Open;

      //cbTipoNomina.Items.Clear;

      //Form2.cdTipoNomina.First;

      (*while not Form2.cdTipoNomina.Eof do
      begin
        dDatos := TDatos.Create;
        dDatos.id := Form2.cdTipoNomina.FieldByName('idTipoNomina').asString;
        dDatos.titulo := Form2.cdTipoNomina.FieldByName('Titulo').AsString;
        cbTipoNomina.Items.AddObject(dDatos.titulo,TObject(dDatos.id));
        Form2.cdTipoNomina.Next;
      end;
      *)


      dsEmpresas.DataSet := Form2.cdEmpresas;
      Timer2.Enabled := True;
    finally
      Form2.StatusBar1.Panels[0].Text := OldTextStatus;
      Form2.StatusBar1.Repaint;
      Screen.Cursor := Cursor;
    end;

    for i := 0 to Form2.tbMain.AdvPageCount -1 do
      Form2.tbMain.AdvPages[i].PageIndex := i +2;

    CambiaEstadoBtn;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Por favor informe de lo siguiente al administrador del sistema:' + #10 + e.message, mterror, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogoPersonal.frxReport1DblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  locname : string;
begin
  try
    if not CargarDatosFiltrados(cdBaja, 'idPersonalIMss', [-9]) then
      raise InteligentException.CreateByCode(6, ['IdPErsonalImss', 'Personal Imss', '-9']);

    if cdBaja.Active then
      cdBaja.Refresh
    else
      cdBaja.Open;
    if sender.name = 'MFechaB' then
      Btn_FichaBClick(nil);



    if sender.name = 'MBajaP' then
    try
      if ssCtrl in Shift then
      begin
        if (InteliDialog.ShowModal('Confirmación.', 'Está seguro que desea dar de baja al personal seleccionado?', mtConfirmation, [mbYes,mbNo], 0)) = mryes then
        begin
          if not CargarDatosFiltrados(cdPersonalimss, 'IdPersonal', [Sender.TagStr]) then
            raise InteligentException.CreateByCode(6,['Personal IMSS',Sender.TagStr,'IdPersonal']);

          if cdPersonalImss.Active then
            cdPersonalImss.Refresh
          else
            cdPersonalImss.Open;

          if (cdPersonalimss.FieldByName('FechaMovimiento').AsDateTime < Edtfechab.Date) and (cdPersonalimss.FieldByName('TipoMovimiento').AsString<>'Baja') then
          begin
            cdBaja.Append;
            cdBaja.FieldByName('IdPersonalIMSS').AsInteger := 0;
            cdBaja.FieldByName('IdPersonal').AsInteger := cdPersonalimss.FieldByName('IdPersonal').AsInteger;
            cdBaja.FieldByName('IdTipoNomina').AsInteger := cdPersonalimss.FieldByName('IdTipoNomina').AsInteger;
            cdBaja.FieldByName('FechaMovimiento').AsDateTime := Edtfechab.Date;
            cdBaja.FieldByName('FechaRegistro').AsDateTime := Now();
            cdBaja.FieldByName('TipoMovimiento').AsString := 'Baja';
            cdBaja.FieldByName('IdPlazaDetalle').AsInteger := cdPersonalimss.FieldByName('IdPlazaDetalle').AsInteger;
            cdBaja.FieldByName('RegistroPatronal').AsString := cdPersonalimss.FieldByName('RegistroPatronal').AsString;
            cdBaja.FieldByName('SalarioDiario').AsFloat := cdPersonalimss.FieldByName('SalarioDiario').AsFloat;
            cdBaja.FieldByName('SalarioIntegrado').AsFloat := cdPersonalimss.FieldByName('SalarioIntegrado').AsFloat;
            cdBaja.FieldByName('Procesado').AsString := 'Si';
            cdBaja.FieldByName('cobrafestivos').AsString := cdPersonalimss.FieldByName('cobrafestivos').AsString;
            cdBaja.FieldByName('jornada').AsInteger := cdPersonalimss.FieldByName('jornada').AsInteger;
            if not cdPersonalimss.FieldByName('idPeriodosGuardia').IsNull then
              cdBaja.FieldByName('idPeriodosGuardia').AsInteger := cdPersonalimss.FieldByName('idPeriodosGuardia').AsInteger
            else
              cdBaja.FieldByName('idPeriodosGuardia').Clear;
            cdBaja.FieldByName('IdDepartamento').AsInteger := cdPersonalimss.FieldByName('IdDepartamento').AsInteger;
            cdBaja.FieldByName('IdCargo').AsInteger := cdPersonalimss.FieldByName('IdCargo').AsInteger;
            cdBaja.FieldByName('IdOrganizacion').AsInteger := cdPersonalimss.FieldByName('IdOrganizacion').AsInteger;
            cdBaja.FieldByName('TipoFiniquito').AsInteger := cbTipoFiniquito.ItemIndex;
            cdBaja.Post;
            cdBaja.ApplyUpdates(-1);
            InteliDialog.ShowModal('Aviso', 'Se ah registrado la baja del personal correctamente.', mtInformation, [mbOk], 0);
            frxReport1.PreviewForm.Close;
          end;
        end;
      end;
    except
      on e:InteligentException do
        ;
      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
    End;

    if sender.name = 'iddocxpostulante' then
    Try
      if Not ((ssCtrl in Shift) and (Button = mbLeft) and (Sender.TagStr <> '')) then
        raise InteligentException.Create('');

      Try
        MemoryDocumentos.Filter := 'IdDocxPostulante = ' + Sender.TagStr;
        MemoryDocumentos.Filtered := True;

        ClientModule1.ImprimeReporte('CatalogoPostulantesDocumentosPreview.fr3', frxReport2);
      Finally
        MemoryDocumentos.Filter := '';
        MemoryDocumentos.Filtered := False;
      End;
    Except
      on e:InteligentException do
        ;
      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
    End;
  finally
    if (cdBaja.Active) and (cdBaja.State in [dsInsert, dsEdit]) then
      cdBaja.Close;
  end;
end;

procedure TFrmCatalogoPersonal.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'FECHABAJA') = 0 then
    Value := EdtFechaB.text;
end;

procedure TFrmCatalogoPersonal.FrxReportInfonavitGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'LeyendaRango') = 0 then
  begin
    if (cxDateEditInicio.Text = '') and (cxDateEditTermino.Text = '') then
      Value := 'Procesado: Todo el Personal'
    else
      Value := 'Procesado del ' + cxDateEditInicio.Text + ' al ' + cxDateEditTermino.Text;
  end;
end;

procedure TFrmCatalogoPersonal.generarInformeInfonavit(imprime: Boolean);
begin
  try

  except

  end;
end;

procedure TFrmCatalogoPersonal.BtnModificarContratacionClick(Sender: TObject);
var
  Marca: TBookMark;
begin
  try
    form2.cdPersonal.AfterScroll := nil;
    try
      Try
        Marca := Form2.cdPersonal.Bookmark;
        Form2.cdPersonal.Refresh;
      Finally
        Form2.cdPersonal.GotoBookmark(Marca);
      End;

      if Form2.cdPersonal.FieldByName('IdPersonalimss').IsNull then
        raise InteligentException.CreateByCode(24, ['El Personal que intenta modificar, no se encuentra contratado.']);

      Application.CreateForm(tfrmModificaPersonalImss ,FrmModificaPersonalImss);
      FrmModificaPersonalImss.IdPersonalImss := Form2.cdPersonal.FieldByName('IdPersonalimss').AsInteger;
      FrmModificaPersonalImss.IdPersonalImssBaja := Form2.cdPersonal.FieldByName('IdPersonalimssBaja').AsInteger;
      FrmModificaPersonalImss.NombrePersonal := Form2.cdPersonal.FieldByName('NombreCompleto').AsString;
      FrmModificaPersonalImss.Curp := Form2.cdPersonal.FieldByName('Curp').AsString;
      FrmModificaPersonalImss.Rfc := Form2.cdPersonal.FieldByName('RFC').AsString;
      FrmModificaPersonalImss.Correo := Form2.cdPersonal.FieldByName('Correo').AsString;
      FrmModificaPersonalImss.telefono := Form2.cdPersonal.FieldByName('Telefono').AsString;
      FrmModificaPersonalImss.IdTipoNomina := Form2.cdPersonal.FieldByName('idTipoNomina').AsInteger;
      FrmModificaPersonalImss.ShowModal;
    finally
      //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
      FrmModificaPersonalImss.Free;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoPersonal.Btn_AbrirClick(Sender: TObject);
var
  Forma: TForm;
begin
  Try
    Form2.cdPersonal.AfterScroll := nil;
    Form2.cdPersonal.filtered := False;
    Forma := TForm.Create(Nil);
    Forma.Width := 315;
    Forma.Height := 174;
    Forma.BorderStyle := bsDialog;
    Forma.Position := poMainFormCenter;
    Forma.Caption := 'Cuadro de Búsqueda.';
    Panel10.Parent := Forma;
    Panel10.Align := alClient;
    Panel10.Visible := True;
    Forma.ShowModal;
    if Form2.cdPersonal.Active then
      CambiaEstadoBtn;
  Finally
    //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
    Panel10.Visible := False;
    Panel10.Align := alNone;
    Panel10.Parent := Self;
    Forma.Free;
  End;
end;

procedure TFrmCatalogoPersonal.Btn_AceptarClick(Sender: TObject);
var
  ALeer: Real;
  EstadoBtn: Boolean;
  locParam: TParamFilter;
begin
  try
    try
      locParam := TParamFilter.Create;
      if rgtipoPersonal.CurEditValue = 2  then
        locParam.Add('idPersonalImss', 'NULO');

      if rgtipoPersonal.CurEditValue = 1  then
        locParam.Add('IdPersonalImss2', 'NONULO');

      // Localizar el personal indicado
      Form2.cdPersonal.Close;
      Buscar_Codigo.Text := TrimRight(TrimLeft(Buscar_Codigo.Text));
      Buscar_Nombre.Text := TrimRight(TrimLeft(Buscar_Nombre.Text));

      if (Buscar_Codigo.Text <> '') or (Buscar_Nombre.Text <> '') then
      begin

        if Buscar_Codigo.Text <> '' then
          if Buscar_Nombre.Text <> '' then
          begin
            locParam.Add('CodigoPersonal', Buscar_Codigo.Text);
            locParam.Add('CadenaBuscar', '%' + Buscar_Nombre.Text + '%');
            CargarDatosFiltrados(Form2.cdPersonal, locParam.Campos, [locParam.Datos]);
          end
          else
          begin
            locParam.Add('CodigoPersonal', '%' + Buscar_Codigo.Text + '%');
            CargarDatosFiltrados(Form2.cdPersonal, locParam.Campos, [locParam.Datos]);
          end
        else
          if Buscar_Nombre.Text <> '' then
          begin
            locParam.Add('CadenaBuscar', Buscar_Nombre.Text);
            CargarDatosFiltrados(Form2.cdPersonal,locParam);
          end;

        ALeer := CuantosRegistros(Form2.cdPersonal);
        if (ALeer < 100) or ((ALeer >= 100) and (InteliDialog.ShowModal('Se han localizado muchos registros', 'El criterio de busqueda que se ha especificado devuelve un total de ' + FloatToStrF(ALeer, ffNumber, 10, 0) + ' Empleados.' + #10 + #10 + '¿Desea leer todos esos registros en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes)) then
        begin
          // Refrescar los datos
          if Form2.cdPersonal.Active then
            Form2.cdPersonal.Refresh
          else
            Form2.cdPersonal.Open;

          CambiaEstadoBtn;
        end
        else
        // Limpiar el criterio
        CargarDatosFiltrados(Form2.cdPersonal, 'CodigoPersonal,CadenaBuscar', [-1, -1]);
      end;
    finally
      locParam.Destroy;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPersonal.Btn_ActividadClick(Sender: TObject);
var
  Forma: TForm;
  cdtFechaif: TClientDataSet;
begin
  Try
    lbl4.Caption:=Form2.cdPersonal.FieldByName('NombreCompleto').AsString;
    Edtfechab.Date:=Date;
    Panel2.Visible := True;
    cdtFechaif := TClientDataSet.Create(nil);
    Try
      if not CrearConjunto(cdtFechaif, 'nuc_personalimss_fechasactividad', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Fechas Actividad']);

      if not CargarDatosFiltrados(cdtFechaif, 'idPersonal', [dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['','','']);

      if cdtFechaif.Active then
        cdtFechaif.Refresh
      else
        cdtFechaif.Open;

      Forma := TForm.Create(Nil);
      Forma.Name := 'FrmActividad';
      Forma.Width := 295;
      Forma.Height := 190;

      Panel2.Parent := Forma;
      Panel2.Align := alClient;
      Panel2.Visible := True;

      EdtFechaTermino.Date := cdtFechaif.FieldByName('FechaFinal').AsDateTime;
      edtFechaInicio.Date := cdtFechaif.FieldByName('FechaInicio').AsDateTime;
      if cdtFechaif.FieldByName('FechaFinal').isNull and cdtFechaif.FieldByName('FechaInicio').isNull then
        InteliDialog.ShowModal('Aviso','El Personal seleccionado no tiene actividad de contratación.', mtInformation,[mbOK],0)
      else
        Forma.ShowModal;
    Finally
      cdtFechaif.Destroy;
      Panel2.Visible := False;
      Panel2.Align := alNone;
      Panel2.Parent := Self;
      Forma.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoPersonal.Btn_AgregarClick(Sender: TObject);
var
  Locname : string;
  Cursor: TCursor;
  Parametros: TParamFilter;
begin
  try
    VerificarFormulario;

    Application.CreateForm(TFrmFichaPersonal, FrmFichaPersonal);
    FrmFichaPersonal.IdPersonal := -9;
    FrmFichaPersonal.CdDocumentos := Form2.cdDocumentos;
    FrmFichaPersonal.Abrev := Copy(Form2.cdEmpresas.FieldByName('NombreOrganizacion').AsString, 1, 3) + '-' + Form2.cdEmpresas.FieldByName('Abrev').AsString + '-';
    FrmFichaPersonal.ShowModal;
    if FrmFichaPersonal.Resultado = mrOk then
      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        //Form2.cdPersonal.Refresh;
        {$REGION 'Filtrar'}
        Form2.cdPersonal.AfterScroll := nil;
        Parametros := TParamFilter.Create;

        Try
          if cbEmpresas.ItemIndex >= 0 then
            Parametros.Add('IdOrganizacion', Form2.cdEmpresas.FieldByName('IdOrganizacion').AsInteger);

          if cbDepartamento.ItemIndex >= 0 then
            Parametros.Add('IdDepartamento', Integer(cbDepartamento.Items.Objects[cbDepartamento.ItemIndex]));

          if cbTipoNomina.ItemIndex >= 0 then
            Parametros.Add('IdTipoNomina', Form2.cdTipoNomina.FieldByName('IdTipoNomina').AsInteger);

          CargarDatosFiltrados(Form2.cdPersonal, Parametros.Campos, Parametros.Datos);

          if Form2.cdPersonal.Active then
            Form2.cdPersonal.Refresh
          else
            Form2.cdPersonal.Open;

          Form2.cdPersonal.Filtered := False;

          //Asignar estados a los botones
          if Form2.cdPersonal.Active then
            CambiaEstadoBtn;
        Finally
          Form2.cdPersonal.Filtered := rgTipoPersonal.CurEditValue <> 0;
          Parametros.Free;
          //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
        End;
        {$ENDREGION}
      Finally
        Screen.Cursor := Cursor;
      End;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPersonal.Btn_BuscarClick(Sender: TObject);
Var
  Parametros: TParamFilter;
  estadoBtn: Boolean;
  Filtrar: String;
  i: Integer;
begin
  Try
    Filtrar := '';
    VerificarFormulario;
    Form2.cdPersonal.AfterScroll := nil;
    if cxLookupCBEmpresas.EditValue <> null then
    begin
      Filtrar :=  'IdOrganizacion = ' +  VarToStr(cxLookupCBEmpresas.EditValue);
      if cxLookupCBDepartamento.EditValue <> null then
        Filtrar := Filtrar + ' and idDepartamento = ' + VarToStr(cxLookupCBDepartamento.EditValue);
    end;

    if (cxLookupCBTipoNomina.EditValue <> null) and (Length(Trim(Filtrar)) <> 0) then
      Filtrar := Filtrar + ' and IdTipoNomina = ' + VarToStr(cxLookupCBTipoNomina.EditValue)
    else
      Filtrar := Filtrar + 'IdTipoNomina = ' + VarToStr(cxLookupCBTipoNomina.EditValue);

    Form2.cdPersonal.Filtered := False;
    Form2.cdPersonal.Filter := Filtrar;
    Form2.cdPersonal.Filtered := True;

    //Asignar estados a los botones
    if Form2.cdPersonal.Active then
      CambiaEstadoBtn;
  Finally
    Filtrar := '';
    //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
  End;
end;

procedure TFrmCatalogoPersonal.PginaCompleta1Click(Sender: TObject);
begin         {
  frxReport1.PreviewOptions.ZoomMode := zmWholePage;
  frxReport1.ShowReport();    }
end;

procedure TFrmCatalogoPersonal.PlazasdeacuerdoaPerfil1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmAnalizaPerfiles, FrmAnalizaPerfiles);
    FrmAnalizaPerfiles.LlavePostulante := Form2.cdPersonal.FieldByName('IdPostulante').AsInteger;
    FrmAnalizaPerfiles.Llavemenu:=2;
    FrmAnalizaPerfiles.ShowModal;
  Finally
    FrmAnalizaPerfiles.Free;
  End;
end;

procedure TFrmCatalogoPersonal.rg1Click(Sender: TObject);
begin
  //ShowMessage(IntToStr(cxRadiogRadioFiltro.Tag));
end;

procedure TFrmCatalogoPersonal.rg1PropertiesChange(Sender: TObject);
begin
  //ShowMessage(IntToStr(rg1.CurEditValue));
  //cxRadiogRadioFiltro.Properties.Items.Items.Index;

end;

procedure TFrmCatalogoPersonal.rgTipoPersonalPropertiesChange(Sender: TObject);
begin
  try


    //Form2.cdPersonal.AfterScroll := nil;
    if rgTipoPersonal.CurEditValue = 1 then
      tbFiltro.Visible := true
    else
      tbFiltro.Visible := false;
(*
    if rgtipoPersonal.CurEditValue = 0 then
    begin
       Form2.cdPersonal.close;
      CargarDatosFiltrados(Form2.cdPersonal, 'IdPersonal', [-1]);
      if Form2.cdPersonal.Active then
        Form2.cdPersonal.Refresh
      else
        Form2.cdPersonal.Open;
    end
    else if rgTipoPersonal.CurEditValue = 2 then
    begin
      Form2.cdPersonal.close;
      CargarDatosFiltrados(Form2.cdPersonal, 'IdPersonalImss', ['NULO']);
      if Form2.cdPersonal.Active then
        Form2.cdPersonal.Refresh
      else
        Form2.cdPersonal.Open;
    end
    else if rgTipoPersonal.CurEditValue = 1 then
    begin
       Form2.cdPersonal.close;
      CargarDatosFiltrados(Form2.cdPersonal, 'IdPersonalImss2', ['NONULO']);
      if Form2.cdPersonal.Active then
        Form2.cdPersonal.Refresh
      else
        Form2.cdPersonal.Open;
    end;
    if Form2.cdPersonal.Active then
      CambiaEstadoBtn;
    Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
*)
  except
    on e: Exception do
      ShowMessage(e.toString + ' ' + e.Message);
  end;
end;

procedure TFrmCatalogoPersonal.Timer1Timer(Sender: TObject);
var
  Locname : string;
begin {
  if Not frxReport1.IsLoading then
  begin
    timer1.Enabled := false;
    //frxReport1.LoadFromFile('C:\Users\Rangel\Documents\svn\Utidel RHH\Reportes\CatalogoPersonalPreview.fr3', False);
    frxReport1.ShowReport(True);
  end;   }
end;

procedure TFrmCatalogoPersonal.Timer2Timer(Sender: TObject);
var
  Cursor: TCursor;
  OldTextStatus,
  Ruta, Cadena,
  NombreReporte: String;
  Archivo: TSearchRec;
begin
  Timer2.Enabled := False;
  NombreReporte := 'CatalogoPersonalPreview.fr3';

  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      OldTextStatus := Form2.StatusBar1.Panels[0].Text;

      Try
        Ruta := ExtractFilePath(ParamStr(0)) + 'Temp\';
        if Not DirectoryExists(Ruta) then
          ForceDirectories(Ruta);

        // Verificar si el archivo ya existe
        if FindFirst(Ruta + NombreReporte, faAnyFile, Archivo) = 0 then
        begin
          Cadena := Archivo.Name + ':' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp));

          // Verificar si el archivo está actualizado
          if Not CompararReporte(Ruta, Cadena) then
            // Actualizar el reporte con el reporte que se encuentra en la base de datos
            if not ActualizaReporte(Ruta, NombreReporte) then
            begin
              // Creo que aquí es donde se debe borrar el reporte de TEMP
            end;
        end
        else
        begin
          // Actualizar el reporte con el reporte que se encuentra en la base de datos
          Try
            if not ActualizaReporte(Ruta, NombreReporte) then
            begin
              // Por el momento se deberá obtener el reporte de la carpeta de reportes, paulatinamente esto dejará de funcionar cuando los reportes se encuentren en la base de datos
              Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
              if Not FileExists(Ruta + NombreReporte) then
                raise Exception.Create('*');
            end;
          Except
            raise Exception.Create('*');
          End;
        end;
      Except
        Ruta := '';
      End;

      if Ruta <> '' then
      begin
        frxReport1.PreviewOptions.MDIChild := False;
        frxReport1.PreviewOptions.Modal := True;
        frxReport1.PreviewOptions.ShowCaptions := False;
        //frxReport1.Previewoptions.ZoomMode := zmPageWidth;
        frxReport1.LoadFromFile(Ruta + NombreReporte);
        //Reporte.ShowReport(False);
      end;

      //ClientModule1.ImprimeReporte('CatalogoPersonalPreview.fr3', frxReport1, frxPreview1);
    Finally
      Screen.Cursor := Cursor;
      Form2.StatusBar1.Panels[0].Text := OldTextStatus;
      Form2.StatusBar1.Repaint;
    End;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Por favor informe de lo siguiente al administrador del sistema:' + #10 + e.message, mterror, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogoPersonal.VariasPginas1Click(Sender: TObject);
begin        {
  frxReport1.PreviewOptions.ZoomMode := zmManyPages;
  frxReport1.ShowReport();  }
end;

function TFrmCatalogoPersonal.CopiarEstructura(Fuente: TClientDataSet;
  Destino: TClientDataSet): Boolean;
var
  i: Integer;
begin
  Try
    Destino.FieldDefs.Clear;
    for i := 0 to Fuente.FieldDefs.Count -1 do
      Destino.FieldDefs.Add(Fuente.FieldDefs.Items[i].Name, Fuente.FieldDefs.Items[i].DataType, Fuente.FieldDefs.Items[i].Size, False);
    Destino.CreateDataSet;
    Destino.Open;

    Result := True;
  Except
    Result := False;
  End;
end;

function TFrmCatalogoPersonal.CopiarEstructuraExp(Fuente: TClientDataSet;
  Destino: TClientDataSet): Boolean;
var
  i: Integer;
begin
  Try
    Destino.FieldDefs.Clear;
    for i := 0 to Fuente.FieldDefs.Count -1 do
      Destino.FieldDefs.Add(Fuente.FieldDefs.Items[i].Name, Fuente.FieldDefs.Items[i].DataType, Fuente.FieldDefs.Items[i].Size, False);
    Destino.FieldDefs.Add('Experiencia', FtString, 400, False);

    Destino.CreateDataSet;
    Destino.Open;

    Result := True;
  Except
    Result := False;
  End;
end;



procedure TFrmCatalogoPersonal.cxButton1Click(Sender: TObject);
var
  cursor: TCursor;
  param: TParamFilter;
begin
  try
    param := TParamFilter.Create;
    Form2.cdPersonal.AfterScroll := nil;
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      param.Add('Infonavit', 'Si');
      if CxRGroupInfonavit.ItemIndex <> 0 then
      begin
//        param.Add('FechaInicio', ClientModule1.DatetoStrSql(cxDateEditInicio.Date));
//        param.Add('FechaTermino', ClientModule1.DatetoStrSql(cxDateEditTermino.Date));
        if not CargarDatosFiltrados(Form2.cdPersonal, 'infonavit,FechaInicio,FechaTermino', ['Si', ClientModule1.DatetoStrSql(cxDateEditInicio.Date), ClientModule1.DatetoStrSql(cxDateEditTermino.Date)]) then
          raise InteligentException.CreateByCode(6, ['Infonavit', 'Catálogo de Personal', 'Si']);
      end
      else
        if not CargarDatosFiltrados(Form2.cdPersonal, 'infonavit', ['Si']) then
          raise InteligentException.CreateByCode(6, ['Infonavit', 'Catálogo de Personal', 'Si']);

      if Form2.cdPersonal.Active then
        Form2.cdPersonal.Refresh
      else
        Form2.cdPersonal.Open;

      if not CargarDatosFiltrados(CdDatosEmpresa, 'idConfiguracion', [18]) then
        raise InteligentException.CreateByCode(6, ['idConfiguracion', 'Configuracion', '18']);

      if CdDatosEmpresa.Active then
        CdDatosEmpresa.Refresh
      else
        CdDatosEmpresa.Open;

      CambiaEstadoBtn;
      //form2.cdPersonal.IndexFieldNames := 'NombreOrganizacion';
      //FrxReportInfonavit.ShowReport(true);
      ClientModule1.ImprimeReporte('resumenInfonavit.fr3', FrxReportInfonavit);
    finally
      param.Destroy;
      Screen.Cursor := cursor;
      //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0 );
  end;
end;

procedure TFrmCatalogoPersonal.cxLookupCBEmpresasPropertiesCloseUp(
  Sender: TObject);
begin
  if (Form2.cdDepartamento.ProviderName <> '') and (form2.cdDepartamento.Active) and
     (Form2.cdDepartamento.RecordCount > 0) and (cxLookupCBEmpresas.EditValue <> null)  then
  begin
    Form2.cdDepartamento.Filtered := False;
    Form2.cdDepartamento.Filter := 'IdOrganizacion = ' + VarToStr(cxLookupCBEmpresas.EditValue);
    Form2.cdDepartamento.Filtered := True;
    dsDeptos.DataSet := Form2.cdDepartamento;
  end;
end;

procedure TFrmCatalogoPersonal.CxRGroupInfonavitPropertiesChange(
  Sender: TObject);
begin
  cxGBFiltroinfo.Enabled := CxRGroupInfonavit.ItemIndex > 0;
  if CxRGroupInfonavit.ItemIndex = 0 then
  begin
    cxDateEditTermino.Text := '';
    cxDateEditInicio.Text := '';
  end;
end;

procedure TFrmCatalogoPersonal.DBGrid1DblClick(Sender: TObject);
begin
    if DBGrid1.DataController.DataSource.DataSet.RecordCount > 0 then
    Btn_EditarClick(nil);
end;

procedure TFrmCatalogoPersonal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //DBGrid1.Canvas.TextRect(Rect, 0, 0, 'Rangel');
end;

procedure TFrmCatalogoPersonal.DbGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F8) and (InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea guardar esta configuración', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then //Fuck this shit
    SaveConfigCxGrid(CxDbGrid1, self.Name);

  if (Key = Vk_F7) and (InteliDialog.ShowModal('Confirmación', '¿Estás seguro que deseas restaurar la configuración actual de la Tabla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    RestoreToDefaultCxGrid(CxDbGrid1, Self.Name);
end;

procedure TFrmCatalogoPersonal.DbGrid1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = 16 then
    DbGrid1.FilterRow.Visible := Not DbGrid1.FilterRow.Visible;
end;

procedure TFrmCatalogoPersonal.DbGrid1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.values[CxColumnEspecial.Index] = 'Si' then
    AStyle := cxstylPersonalEspecial;

  if (ARecord.values[CxColumnTipoMovimiento.Index] = 'Baja') and (ARecord.Values[CxColumnDiasDescanso.Index] = 0) then
    AStyle := cxstylPersonalBaja;

  if (ARecord.values[CxColumnTipoMovimiento.Index] = 'Baja') and (ARecord.Values[CxColumnDiasDescanso.Index] = 0) and (ARecord.values[CxColumnEspecial.Index] = 'Si') then
    AStyle := cxstylBajaEspecial;

end;

procedure TFrmCatalogoPersonal.Documentos1Click(Sender: TObject);
begin
  if MemoryDocumentos.RecordCount > 0 then
    ClientModule1.ImprimeReporte('CatalogoPostulantesDocumentosPreview.fr3', frxReport2);
end;

procedure TFrmCatalogoPersonal.DxBarBtnDatosContratacionClick(Sender: TObject);
var
  Marca: TBookMark;
begin
  try
    form2.cdPersonal.AfterScroll := nil;
    try
      Try
        Marca := nil;
        Marca := Form2.cdPersonal.Bookmark;
        Form2.cdPersonal.Refresh;
      Finally
        Form2.cdPersonal.GotoBookmark(Marca);
      End;

      if Form2.cdPersonal.FieldByName('IdPersonalimss').IsNull then
        raise InteligentException.CreateByCode(24, ['El Personal que intenta modificar, no se encuentra contratado.']);

      Application.CreateForm(TFrmDatosContratacion ,FrmDatosContratacion);
      FrmDatosContratacion.IdPersonal := Form2.cdPersonal.FieldByName('IdPersonal').AsInteger;

      FrmDatosContratacion.ShowModal;

      if Marca <> Nil then
      begin
        Form2.cdPersonal.Refresh;
        Form2.cdPersonal.GotoBookmark(Marca);
      end;
    finally
      //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
      FrmModificaPersonalImss.Free;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoPersonal.DxBarBtnDetalladoPagosClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmConcentradoNomina, FrmConcentradoNomina);
    FrmConcentradoNomina.Individual := True;
    FrmConcentradoNomina.IdPersonal := form2.CdPersonal.FieldByName('IdPersonal').asInteger;
    FrmConcentradoNomina.Nombre := Form2.CdPersonal.FieldByName('nombreCompleto').asString;
    FrmConcentradoNomina.ShowModal;
  Finally
    FreeAndNil(FrmConcentradoNomina);
  End;
end;

procedure TFrmCatalogoPersonal.DxBarBtnEliminarPersonalClick(Sender: TObject);
var
  cdPersonalUpt: TClientDataSet;
  LocIdPersonal: Integer;
  LocNamePersonal: string;
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      cdPersonalUpt := TClientDataSet.Create(Self);
      LocIdPersonal := Form2.cdPersonal.FieldByName('IdPersonal').AsInteger;
      LocNamePersonal := Form2.cdPersonal.FieldByName('NombreCompleto').AsString;
      if InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea eliminar el empleado [' + LocNamePersonal + ']', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if cdPersonalUpt.ProviderName = '' then
          if not CrearConjunto(cdPersonalUpt, 'nuc_personal', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Catálogo de Personal']);

        if not CargarDatosFiltrados(cdPersonalUpt, 'idPersonal', [LocIdPersonal]) then
          raise InteligentException.CreateByCode(6, ['IdPersonal', 'Catálogo de Personal', VarToStr(LocIdPersonal)]);

        if cdPersonalUpt.Active then
          cdPersonalUpt.Refresh
        else
          cdPersonalUpt.Open;

        if cdPersonalUpt.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, ['IdPersonal', 'Personal']);

        cdPersonalUpt.Edit;
        cdPersonalUpt.FieldByName('Activo').AsString := 'No';
        cdPersonalUpt.Post;
        cdPersonalUpt.ApplyUpdates(-1);

        Form2.cdPersonal.Refresh;
      end;
    finally
      if cdPersonalUpt.State  in [dsEdit, dsInsert] then
        cdPersonalUpt.Cancel;

      if Assigned(cdPersonalUpt) then
        cdPersonalUpt.Destroy;

      screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPersonal.DxBarBtnListaNominasClick(Sender: TObject);
var
  Excel, Workbook, Worksheet: Variant;
  Listaid: Tstringlist;
  Campo, Cadena, Modo, Codigo, Titulo, Nombre,Grupo,Cargo, Valor,FNomina,
  regPatronal, idNomina, Imprime: String;
  rowx,colx,idxLista, NumRec,i, columx, x,numLin, ExcelCol: Integer;
  FloatValor: Real;
  cursor: TCursor;
  CadParam: String;
  ValImpuesto, Paso, fValor: Real;
  eu: Integer;
  cdDatos: TClientDataSet; //TOTAL
  prgValor: Extended;
  fechaExcel: string;
  OldCeja: String;
  OldIdPersonal: Integer;
  ListaReferencias: TStringList;
  ObjRef: TObjRef;
  Indice: Integer;

function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;
  Result := Copy(Cadena, 1, Pos('|', Cadena) -1);
end;
function DecodeFecha(Fecha: TDate = 0; FechaHora: TDateTime = 0; DiaSemana: Boolean = False; Modo: TModoFecha = tmMayuscula): String;
const
  NombreDia: Array[1..7] of String = ('Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado');
  Leyenda: Array[1..2, tmMinuscula..tmMayuscula] of String = ((' ', ' '), (' rangel ', ' RANGEL '));
  NomMes: Array[1..12, tmMinuscula..tmMayuscula] of String = ((' Ene ', ' ENERO '), (' Feb ', ' FEBRERO '), (' Mar ', ' MARZO '), (' Abr ', ' ABRIL '), (' May ', ' MAYO '), (' Jun ', ' JUNIO '),
                                                              (' Jul ', ' JULIO '), (' Ago ', ' AGOSTO '), (' Sep ', ' SEPTIEMBRE '), (' Oct ', ' OCTUBRE '), (' Nov ', ' NOVIEMBRE '), (' Dic ', ' DICIEMBRE '));
var
  Resultado: String;
begin
  Result := '';

  if Fecha = 0 then
    Fecha := FechaHora;

  if Fecha <> 0 then
  begin
    if DiaSemana then
      Resultado := NombreDia[DayOfWeek(Fecha)] + ' '
    else
      Resultado := '';

    Resultado := Resultado + RightStr(('0' + IntToStr(DayOfTheMonth(Fecha))), 2) + Leyenda[1, Modo] + NomMes[MonthOfTheYear(Fecha), Modo] + Leyenda[1, Modo] + IntToStr(YearOf(Fecha));

    Result := Resultado;
  end;
end;
function unirfechas(fInicial, fFinal: String; formato: Integer): string;
var
  fechaCompuesta: string;
  fi, ff: TStringList;
  idx: Integer;
begin
  idx := 0;
  fi := TStringList.Create;
  ff := TStringList.Create;
  fInicial := StringReplace(fInicial, '  ', ',',[rfReplaceAll, rfIgnoreCase]);
  fFinal := StringReplace(fFinal, '  ', ',',[rfReplaceAll, rfIgnoreCase]);
  ff.CommaText := fFinal;
  fi.CommaText := fInicial;
  if formato = 1 then
  begin
    while idx < fi.Count do
    begin
      if idx = 0 then
        fechaCompuesta := fi[idx] + '-' + ff[idx]
     else if idx = 1 then
        fechaCompuesta := fechaCompuesta + ' ' + fi[idx]
      else if idx = 2 then
        fechacompuesta := fechaCompuesta + ' ' + fi[idx];
    Inc(idx);
    end;
  end
  else
  begin
    if  (fi[1] <> ff[1]) and  (fi[2] = ff[2]) then
    begin
        fechaCompuesta := fi[0] + ' ' + fi[1] + ' AL ' + ff[0] + ' ' + ff[1] + ' ' + fi[2]
    end;
    if  (fi[1] <> ff[1]) and  (fi[2] <> ff[2]) then
    begin
        fechaCompuesta := fi[0] + ' ' + fi[1] + ' ' + fi[2] + ' AL ' + ff[0] + ' ' + ff[1] + ' ' + ff[2]
    end;
    if  (fi[1] = ff[1]) and  (fi[2] = ff[2]) then
    begin
    while idx < fi.Count do
      begin
        if idx = 0 then
          fechaCompuesta := fi[idx] + ' AL ' + ff[idx]
        else if idx = 1 then
          fechaCompuesta := fechaCompuesta + ' ' + fi[idx]
        else if idx = 2 then
          fechacompuesta := fechaCompuesta + ' ' + fi[idx];
        Inc(idx);
      end;
    end;
  end;
  //ShowMessage(fechaCompuesta);
  Result := fechaCompuesta;
end;
function existePestana(pestanas: TStringList; nomPestana: string): Boolean;
var
  idx: Integer;
begin
  idx := 0;
  //pestanas := TStringList.Create;
  while idx < pestanas.Count do
  begin
    if pestanas[idx] = nomPestana then
    begin
      idx := pestanas.Count;
      Result := True;
    end
    else
      Result := False;

    inc(idx);
  end;
end;

begin
  try
    if dlgSaveExcel.Execute then
    begin
      dlgSaveExcel.FileName;
      cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      try
        ListaReferencias := TStringList.Create;
        ListaReferencias.Clear;

        //HOja
        Excel := CreateOleObject('Excel.Application');
        // Mostrar el excel
        Excel.Visible:= true;
        // evitar que nos pregunte si deseamos sobreescribir el archivo
        Excel.DisplayAlerts := false;
        // agregar libro de trabajo
        Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

        // Eliminar todas las hojas excepto 1
        while Workbook.Sheets.Count > 1 do
          WorkBook.WorkSheets[1].Delete;

          //Excel.ActiveWindow.SelectedSheets.Delete;

        // tomar una referencia a la hoja creada
        WorkSheet := WorkBook.WorkSheets[1];

        cdDatos := TClientDataSet.Create(Nil);
        if Not CrearConjunto(cdDatos, 'nom_detallenomina_excelpersonal', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);

        if Not CargarDatosFiltrados(cdDatos, 'personal', [Form2.cdPersonal.FieldByName('idPersonal').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Detalle de Nóminas', CadParam , 'Id. Nómina/Referencia']);

        cdDatos.Open;

        OldCeja := '';
        OldIdPersonal := 0;
        RowX := 7;
        eu := 1;
        cdDatos.first;
        while not cdDatos.Eof do
        begin
          if (cdDatos.FieldByName('Clave').AsString = 'SubsidioDT') or (cdDatos.FieldByName('Clave').AsString = 'ISPTAS') then
          begin
            // Verificar si ya existe el registro de esta referencia
            ObjRef := TObjRef.Create;
            Indice := ListaReferencias.IndexOf(cdDatos.FieldByName('Referencia').AsString);
            if Indice < 0 then
            begin
              ObjRef.Subsidio := 0;
              ObjRef.Ispt := 0;
              Indice := ListaReferencias.AddObject(cdDatos.FieldByName('Referencia').AsString, ObjRef);
            end;

            if cdDatos.FieldByName('Clave').AsString = 'SubsidioDT' then
              TObjRef(ListaReferencias.Objects[Indice]).Subsidio := TObjRef(ListaReferencias.Objects[Indice]).Subsidio + cdDatos.FieldByName('Importe').AsFloat
            else
              TObjRef(ListaReferencias.Objects[Indice]).Ispt := TObjRef(ListaReferencias.Objects[Indice]).Ispt + cdDatos.FieldByName('Importe').AsFloat;
          end;

          if (OldCeja <> cdDatos.FieldByName('NombreCeja').AsString) or (cdDatos.RecNo = cdDatos.RecordCount) then
          begin
            if OldCeja <> '' then
            begin
              // Colocar el encabezado
              EncabezadoConcetrado('', True, WorkSheet, Excel, 0, DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x);

              // Colocar las sumas totales
              WorkSheet.cells[RowX+1,1].Select;
              Excel.selection.value:='TOTALES';
              Excel.selection.HorizontalAlignment:=xlRight;
              Excel.selection.WrapText:=true;
              WorkSheet.range[ColumnaNombre(1) +inttostr(RowX+1)+':' + ColumnaNombre(2) +inttostr(RowX+1)].Mergecells := True;;
              (*for i := 3 to 24 do
              begin
                WorkSheet.Cells[RowX +1, i].Select;
                Excel.ActiveCell.FormulaR1C1 := '=+SUM(R[-' + IntToStr(RowX -7) + ']C:R[-1]C)';
              end;   *)
              // Marcar la hoja con su número de renglones utilizados
              WorkSheet.cells[1, 41].Value := RowX;
            end;

            if OldCeja <> cdDatos.FieldByName('NombreCeja').AsString then
            begin
              // Crear nueva ceja
              ColX := 0;
              //RowX := 7;
              x := 1;
              OldIdPersonal := 0;
              //WorkSheet := Excel.Worksheets.Add;
              //WorkSheet.Name := LeftStr(cdDatos.FieldByName('NombreCeja').AsString, 31);
              //WorkSheet.Move(WorkBook.WorkSheets[Workbook.Sheets.Count]);
            end;
          end;

          // Poner los datos de los empleados
          //if (OldIdPersonal <> cdDatos.FieldByName('IdPersonal').AsInteger) or ((OldIdPersonal)=0)  then
          if OldCeja <> cdDatos.FieldByName('NombreCeja').AsString then
          begin

            Inc(RowX);
            //showmessage('Row : ' + inttoStr(Rowx) + ' IdPErsonal: ' + cdDatos.FieldByName('IdPersonal').AsString + ' No: ' + IntToStr(eu)) ;
            Inc(eu);

            WorkSheet.cells[RowX, 1] :=  RowX -7;
            WorkSheet.cells[RowX, 2] :=  UpperCase(cdDatos.FieldByName('NombreCompleto').AsString);
            WorkSheet.cells[RowX, 3] :=  cdDatos.FieldByName('Salario').AsString;

            // Colocar las formulas
            WorkSheet.cells[RowX, 15].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+RC[-1]+RC[-2]+RC[-3]+RC[-5]+RC[-6]+RC[-8]+RC[-9]+RC[-10]+RC[-11]';

            WorkSheet.cells[RowX, 21].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+RC[-1]+RC[-2]+RC[-3]+RC[-4]+RC[-5]';

            WorkSheet.cells[RowX, 22].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+RC[-7]-RC[-1]';

            WorkSheet.cells[RowX, 23].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+IF((RC[-7]-RC[-18])<0,ABS(RC[-7]-RC[-18]),0)';
            Excel.ActiveCell.NumberFormat := '#,##0.00';

            WorkSheet.cells[RowX, 24].Select;
            Excel.ActiveCell.FormulaR1C1 := '=+IF((RC[-8]-RC[-19])>0,RC[-8]-RC[-19],0)';
            Excel.ActiveCell.NumberFormat := '#,##0.00';

            if (RowX Mod 5 = 0) or (cdDatos.RecNo = cdDatos.RecordCount) then
            begin
              Excel.ScreenUpdating := True;
              WorkSheet.cells[RowX, 1].Select;
              Excel.ScreenUpdating := False;
            end;
          end;

          case AnsiIndexStr(cdDatos.FieldByName('Clave').AsString, ['SUELDO', 'SubsidioDT', 'TEXTRA', 'DiasFestivos', 'DomingosLaborados', 'PrimaDominical', 'Vacaciones', 'PrimaVacacional', 'Aguinaldo', 'ISPTAS', 'IMSSEmpleado', 'PrestamoInfonavit']) of
            0: ExcelCol := 5;
            1: ExcelCol := 6;
            2: ExcelCol := 7;
            3: ExcelCol := 11;
            4: ExcelCol := 10;
            5: ExcelCol := 8;
            6: ExcelCol := 13;
            7: ExcelCol := 14;
            8: ExcelCol := 15;
            9: ExcelCol := 17;
            10: ExcelCol := 18;
            11: ExcelCol := 19;
            12: ExcelCol := 24;
            13: ExcelCol := 25
            else
              ExcelCol := 1;
          end;

          if ExcelCol > 0 then
          begin
            Try
              FloatValor := StrToFloat(WorkSheet.Cells[RowX, ExcelCol].Value);
            Except
              FloatValor := 0;
            end;
            FloatValor := FloatValor + Abs(StrToFloat(cdDatos.FieldByName('Importe').AsString));
            WorkSheet.cells[RowX, ExcelCol] := FloatValor;
          end;

          OldCeja := cdDatos.FieldByName('NombreCeja').AsString;
          OldIdPersonal := cdDatos.FieldByName('IdPersonal').AsInteger;

          cdDatos.Next;
        end;

        Excel.ScreenUpdating := False;

        // Eliminar la ceja original del archivo de excel
        if Workbook.Sheets.Count > 1 then
          WorkBook.WorkSheets[Workbook.Sheets.Count].Delete;

        // Darle formato a todas las hojas
        for x := 1 to Workbook.Sheets.Count do
        begin
          WorkSheet := WorkBook.WorkSheets[x];
          WorkSheet.Select;
          EncabezadoConcetrado('', False, WorkSheet, Excel, 0, DecodeFecha(cdDatos.FieldByName('FechaNomina').AsDateTime), DecodeFecha(cdDatos.FieldByName('FechaTerminoNomina').AsDateTime), cdDatos.FieldByName('TituloDepartamento').AsString, ColX, RowX, x);

          Excel.ScreenUpdating := False;

          RowX := WorkSheet.cells[1, 41].Value;
          WorkSheet.Cells[1, 41].ClearContents;

          if RowX > 0 then
          begin
            // Dar formato al cuadro de datos
            //if Referencia <> '' then
              WorkSheet.Range['A8:X' + IntToStr(RowX+1)].Select;
            //else
              //WorkSheet.Range['A8:V' + IntToStr(RowX +1)].Select;

            Excel.Selection.Borders[xlDiagonalDown].LineStyle := xlNone;
            Excel.Selection.Borders[xlDiagonalUp].LineStyle := xlNone;

            Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;

            Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;

            Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;

            Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;

            Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;

            Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

            WorkSheet.Range['A'+ IntToStr(RowX+1) +':X' + IntToStr(RowX+1)].Select;
            Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;

            Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
            Excel.Selection.Borders[xlInsideVertical].Weight := xlMedium;

             //FORMATO NUMERICO A CELDAS DE EXCEL NumberFormat:='#.##0,00';
            WorkSheet.Range['C8:V' + IntToStr(RowX +1)].Select;

            Excel.Selection.NumberFormat := '#,##0.00';

            Excel.activeWindow.zoom := 83;
            Excel.activeWindow.DisplayGridlines := False;
            Excel.Cells.Columns.AutoFit;

            if Excel.Columns['D:D'].ColumnWidth < 11.57 then
              Excel.Columns['D:D'].ColumnWidth := 11.57;

            if Excel.Columns['I:I'].ColumnWidth < 12.43 then
              Excel.Columns['I:I'].ColumnWidth := 12.43;

            if Excel.Columns['L:L'].ColumnWidth < 12.57 then
              Excel.Columns['L:L'].ColumnWidth := 12.57;

            if Excel.Columns['M:M'].ColumnWidth < 13 then
              Excel.Columns['M:M'].ColumnWidth := 13;

            if Excel.Columns['N:N'].ColumnWidth < 11.86 then
              Excel.Columns['N:N'].ColumnWidth := 11.86;

            if Excel.Columns['O:O'].ColumnWidth < 12.43 then
              Excel.Columns['O:O'].ColumnWidth := 12.43;

            if Excel.Columns['T:T'].ColumnWidth < 13 then
              Excel.Columns['T:T'].ColumnWidth := 13;

            if Excel.Columns['U:U'].ColumnWidth < 11.14 then
              Excel.Columns['U:U'].ColumnWidth := 11.14;

            if Excel.Columns['V:V'].ColumnWidth < 11 then
              Excel.Columns['V:V'].ColumnWidth := 11;

            Excel.Rows['6:7'].Select;
            Excel.Selection.RowHeight := 24.75;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;

            Excel.ScreenUpdating := True;
          end;

          WorkSheet.Cells[1, 1].Select;
          Excel.ScreenUpdating := True;
        end;

        try
          Excel.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + '.xls');
          InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
        except
          on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
        end;

      finally
        ListaReferencias.Clear;
        ListaReferencias.Free;

        Try
          Excel.ScreenUpdating := True;
          Excel.DisplayAlerts := True;
        Except
          ;
        end;

        EliminarConjunto(cdDatos);
        FreeAndNil(cdDatos);

        Screen.Cursor := Cursor;
      end;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
  end;
end;

procedure TFrmCatalogoPersonal.DxBarBtnNominasIncluidasClick(Sender: TObject);
var
  cursor: TCursor;
  LocPersonal: Integer;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    application.CreateForm(TfrmDiasPtu, FrmDiasPtu);
    FrmDiasPtu.IdPersonal := Form2.cdPersonal.fieldbyname('IdPersonal').AsInteger;
    FrmDiasPtu.IdTipoNomina := Form2.cdPersonal.fieldbyname('IdTipoNomina').AsInteger;
    FrmDiasPtu.ShowModal;

//    try
//      LocPersonal := Form2.cdPersonal.fieldbyname('IdPersonal').AsInteger;
//      if CdListaNominasIncluidas.ProviderName = '' then
//        if not CrearConjunto(CdListaNominasIncluidas, 'nom_detallenomina_excelpersonal', ccCatalog) then
//          raise inteligentexception.CreateByCode(5 , ['Lista de nóminas incluidas del personal seleccionado']);
//
//      if not CargarDatosFiltrados(CdListaNominasIncluidas, 'personal, agrupa', [LocPersonal, 'No']) then
//        raise InteligentException.CreateByCode(6, ['Lista Nominas', 'IdPersonal', intToStr(LocPersonal)]);
//
//      if CdListaNominasIncluidas.Active then
//        CdListaNominasIncluidas.Refresh
//      else
//        CdListaNominasIncluidas.Open;
//
//      if CdListaNominasIncluidas.RecordCount = 0  then
//        raise InteligentException.CreateByCode(24, ['El Personal [' + Form2.cdPersonal.FieldByName('NombreCompleto').AsString + '] no está incluido en ninguna nómina del sistema.']);
//
//      ClientModule1.ImprimeReporte('ListaNominasIncluidas.fr3', FrxReportListaNominas);
//      //FrxReportListaNominas.ShowReport(true);
//    finally
//      Screen.Cursor := Cursor;
//    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', 'Ha ocurrido un error inesperado, avise al administrador del sistema del sigueinte error ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPersonal.DxBarBtnPersonalInfonavitClick(Sender: TObject);
var
  Forma: TForm;
begin
  Try
    //Form2.cdPersonal.AfterScroll := nil;
    //Form2.cdPersonal.filtered := False;
    //EncabezadoReportes(CdEncabezado, 18);
    Forma := TForm.Create(Nil);
    Forma.Width := 285;
    Forma.Height := 225;
    Forma.BorderStyle := bsDialog;
    Forma.Position := poMainFormCenter;
    Forma.Caption := 'Filtros infonavit.';
    cxGBOnfonavit.Parent := Forma;
    cxGBOnfonavit.Align := alClient;
    cxGBOnfonavit.Visible := True;
    Forma.ShowModal;
    if Form2.cdPersonal.Active then
      CambiaEstadoBtn;
  Finally
    //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
    cxGBOnfonavit.Visible := False;
    cxGBOnfonavit.Align := alNone;
    cxGBOnfonavit.Parent := Self;
    Forma.free;
  End;
end;

procedure TFrmCatalogoPersonal.DxBarBtnSueldoPactadoClick(Sender: TObject);
begin
  CxColumnSueldoPactado.Visible := not CxColumnSueldoPactado.Visible;
end;

procedure TFrmCatalogoPersonal.DxBarBtnTodoPErsonalClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    Form2.cdPersonal.AfterScroll := nil;
    Form2.cdPersonal.close;
    CargarDatosFiltrados(Form2.cdPersonal, 'IdPersonal', [-1]);
    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;
    CambiaEstadoBtn;
  finally
    Screen.Cursor := cursor;
    //Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
  end;
end;

procedure TFrmCatalogoPersonal.dxBtnHistorialNominasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmHistorialPago, FrmHistorialPago);
  FrmHistorialPago.IdPersonal := Form2.cdPersonal.FieldByName('IdPersonal').AsInteger;
  FrmHistorialPago.IdNomina := -1;//Form2.cdPersonal.FieldByName('IdNomina').AsInteger;
  FrmHistorialPago.IdTipoNomina := Form2.cdPersonal.FieldByName('IdTipoNomina').AsInteger;
  FrmHistorialPago.Show;
end;

procedure TFrmCatalogoPersonal.EncabezadoConcetrado(Referencia: String;
  SoloEtiquetas: Boolean; WorkSheet, Excel: Variant; DiasDescanso: Integer;
  FechaNomina, FechaTerminoNomina, TituloOrganizacion: String; var Colx, RowX,
  x: Integer);

procedure Titulo(Rango, Etiqueta: String);
begin
  WorkSheet.Range[Rango].Select;

  if SoloEtiquetas then
    Excel.Selection.Value := Etiqueta
  else
  begin
    Excel.Selection.Merge;
    Excel.Selection.WrapText := True;
  end;
end;

begin
  Excel.ScreenUpdating := False;

  if SoloEtiquetas then
  begin
    WorkSheet.cells[1, 1] := 'UTILIZACIÓN Y DISTRIBUCIÓN ELECTRICA, S.A. DE C.V.';
    WorkSheet.cells[2, 1] := 'R.F.C. UDE 851129 ES1';
    (*if DiasDescanso > 0 then
    begin
      WorkSheet.cells[3, 1] := 'NOMINA PERSONAL A BORDO DEL: ' + FechaNomina + ' AL ' + FechaTerminoNomina;
      WorkSheet.cells[4, 1] := 'PLATAFORMA: ' + TituloOrganizacion;
    end
    ELSE
    begin
      WorkSheet.cells[3, 1] := 'NOMINA PERSONAL FIJO DEL: ' + FechaNomina + ' AL ' + FechaTerminoNomina;
      WorkSheet.cells[4, 1] := 'MATRIZ: ' + TituloOrganizacion;
    end; *)
  end
  else
  begin
    Excel.Range['A1:L1'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlBottom;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.Size := 16;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Merge;

    Excel.Range['A2:L2'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlBottom;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.Size := 14;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Merge;

    Excel.Range['A3:L3'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlBottom;
    Excel.Selection.Font.Name := 'Bookman Old Style';
    Excel.Selection.Font.size := 14;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Merge;

    Excel.Range['A4:L4'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlBottom;
    Excel.Selection.Font.Name := 'Bookman Old Style';
    Excel.Selection.Font.size := 14;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Merge;
  end;

  //ENCABEZADO COLUMNAS
  Titulo('B6:B7', 'No.');
  Titulo('C6:C7', 'NOMBRE');
  Titulo('D6:D7', 'SUELDO' + #10 + 'DIARIO');
  Titulo('E6:E7', 'SALARIO' + #10 + 'QUINCENAL');
  Titulo('F6:F7', 'SUBSIDIO' + #10 + 'AL EMPLEO');
  Titulo('G6:G7', 'HORAS' + #10 + 'EXTRA');
  Titulo('G6:G7', 'PRIMA' + #10 + 'DOMINICAL');
  Titulo('H6:H7', 'PRIMA' + #10 + 'DOMINICAL EXCENTA');
  Titulo('I6:I7', 'DOMINGOS' + #10 + 'LABORADOS');
  Titulo('J6:J7', 'DIA' + #10 + 'FESTIVO');
  Titulo('K6:K7', 'DIA' + #10 + 'FESTIVO EXCENTO');
  Titulo('L6:L7', 'VACACIONES');
  Titulo('M6:M7', 'PRIMA' + #10 + 'VACACIONAL');
  Titulo('N6:N7', 'AGUINALDO');
  Titulo('O6:O7', 'TOTAL' + #10 + 'PERCEPCION');
  Titulo('P6:P7', '(-)' + #10 + 'I.S.P.T.');
  Titulo('Q6:Q7', '(-)' + #10 + 'I.M.S.S.');
  Titulo('R6:R7', '(-)' + #10 + 'INFONAVIT');
  Titulo('S6:S7', 'OTRAS' + #10 + 'DEDUCC');
  Titulo('T6:T7', 'PENSION' + #10 + 'ALIMENTICIA 50%');
  Titulo('U6:U7', 'TOTAL' + #10 + 'DEDUCCION');
  Titulo('V6:V7', 'SUELDO' + #10 + 'NETO');
  Titulo('W6:W7', 'SUBSIDIO');
  Titulo('X6:X7', 'I.S.P.T.');

  if Referencia <> '' then
  begin
    Titulo('W6:W7', 'SUBSIDIO' + #10 + 'AL' + #10 + 'EMPLEO');
    Titulo('X6:X7', 'ISPT');
  end;

  if Not SoloEtiquetas then
  begin
    // Dar formato a encabezado de excel
    Excel.Range['A6:X7'].select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlBottom;
    Excel.Selection.Font.Name := 'Arial';
    Excel.Selection.Font.size := 10;
    Excel.Selection.Font.Bold := true;
    Excel.Selection.Borders.Weight := xlMedium;
    Excel.Selection.Borders.LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].weight := xlMedium;

    Excel.ScreenUpdating := True;
    Excel.Range['A8:A8'].select;
    Excel.ActiveWindow.FreezePanes := True;
    Excel.ScreenUpdating := False;
  end;

  Excel.ScreenUpdating := True;
  Excel.ScreenUpdating := False;
end;

procedure TFrmCatalogoPersonal.BorrarArchivos(Ruta: string);
var
  SR: TSearchRec;
begin
  if FindFirst(Ruta + '*.*', $23 , SR)= 0 then
   repeat
     DeleteFile(Ruta+'\'+SR.Name);
   until FindNext(SR) <> 0;
end;

procedure TFrmCatalogoPersonal.cbDepartamentoChange(Sender: TObject);
begin
  // Cerrar el personal
  //Form2.cdPersonal.Close;
  //Btn_Buscar.Enabled := True;
  //Btn_FichaB.Enabled:= False;
end;

procedure TFrmCatalogoPersonal.CbEmpresasChange(Sender: TObject);
var
  ddDatos: TDatos;
begin
  Try
    // Cerrar la lista de personal
    //Form2.cdPersonal.Close;

    // Posicionar el apuntador de registro
    Form2.cdEmpresas.First;
    //Form2.cdEmpresas.RecNo := cbEmpresas.ItemIndex +1;

    // Filtrar los departamentos
    cbDepartamento.Items.Clear;

    // cbDepartamento.Items.AddObject('< TODOS LOS DEPARTAMENTOS >', TObject(-1));
    Form2.cdDepartamento.Filtered := False;
    Form2.cdDepartamento.Filter := 'IdOrganizacion = ' + Form2.cdEmpresas.FieldByName('IdOrganizacion').AsString;
    Form2.cdDepartamento.Filtered := True;
    Form2.cdDepartamento.First;

    while Not Form2.cdDepartamento.Eof do
    begin
      ddDatos := TDatos.Create;
      ddDatos.titulo := Form2.cdDepartamento.FieldByName('TituloDepartamento').AsString;
      ddDatos.id := Form2.cdDepartamento.FieldByName('IdDepartamento').AsString;
      cbDepartamento.Items.AddObject(ddDatos.Titulo, TObject(ddDatos.id));
      Form2.cdDepartamento.Next;
    end;
  Finally
    Form2.cdDepartamento.Filtered := False;
  End;
end;

procedure TFrmCatalogoPersonal.VerificarFormulario;
var
  Found: Boolean;
begin
  if TForm(Self).WindowState = wsMinimized then
    TForm(Self).WindowState := wsNormal;

  TForm(Self).BringToFront;   // Taer al frente
end;

end.

