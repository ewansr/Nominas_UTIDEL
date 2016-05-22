unit UTFrmDatosNiveles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, pngimage, ExtCtrls, NxEdit,
  JvExMask, JvToolEdit, JvDBControls, DB, DBClient, UInteliDialog,
  AdvShapeButton, AdvSmoothTabPager, JvBaseEdits, JvMemoryDataset, Grids,
  DBGrids, AdvGlowButton, ComCtrls, AdvCombo, JvExControls, JvLabel, RxToolEdit,
  RxCurrEdit, RxDBCurrEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxDBEdit, cxLabel, Menus, cxButtons, cxImage, ExtDlgs, jpeg, UTFrmCargaImagen,
  JvDBImage, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, dxSkinsdxBarPainter, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxBar, cxClasses, dxRibbon,
  cxMemo, cxCalendar, cxSpinEdit, cxGroupBox;

type
//
  TSalarioMinimo = Class
    identificador: Integer;
    Titulo: String;
    Salario: String;
  End;

  TFrmDatosNiveles = class(TForm)
    PanelBarraLugar: TPanel;
    dsDatos: TDataSource;
    cdOrganizacion: TClientDataSet;
    dsOrganizacion: TDataSource;
    dsNiveles: TDataSource;
    Btn_Cancelar: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    BtnRec: TAdvShapeButton;
    CdDocumentos: TClientDataSet;
    DsDocumentos: TDataSource;
    CdSeries: TClientDataSet;
    MdTemp: TJvMemoryData;
    MdTempiddocumento: TIntegerField;
    MdTempserie: TStringField;
    MdTempdigitos: TIntegerField;
    dsSalario_sel: TDataSource;
    cdSalario_sel: TClientDataSet;
    dsRiesgo: TDataSource;
    pnl_Captura: TPanel;
    Panel8: TPanel;
    Button1: TButton;
    Button2: TButton;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    DBFactor: TDBCurrencyEdit;
    dsRiesgoUpt: TDataSource;
    cdRiesgoUpt: TClientDataSet;
    DBAplicacion: TJvDBDateEdit;
    cdRiesgoPuesto: TClientDataSet;
    dsRiesgoPuesto: TDataSource;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    Tab1: TcxPageControl;
    cxTabGenerales: TcxTabSheet;
    cxTabTelefonos: TcxTabSheet;
    cxTabLogotipo: TcxTabSheet;
    cxTabSerie: TcxTabSheet;
    cxTabDomicilio: TcxTabSheet;
    cxTabConfiguracionNomina: TcxTabSheet;
    cxTabCFDI: TcxTabSheet;
    Panel6: TPanel;
    Image1: TImage;
    Image2: TImage;
    btn1: TImage;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel4: TPanel;
    cxButton3: TcxButton;
    Panel3: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblactual: TLabel;
    lblvalActual: TLabel;
    lbl1: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Edit2: TEdit;
    Button5: TButton;
    JvCalcEdit1: TJvCalcEdit;
    BtnAgregar: TAdvShapeButton;
    BtnEliminar: TAdvShapeButton;
    BtnArriba: TAdvShapeButton;
    BtnAbajo: TAdvShapeButton;
    CblcDocumentos: TDBLookupComboBox;
    Panel7: TPanel;
    lb2: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel6: TJvLabel;
    Image3: TImage;
    Image4: TImage;
    Panel9: TPanel;
    JvLabel1: TJvLabel;
    DBGrid1: TDBGrid;
    Btn_Nuevo: TButton;
    Btn_Editar: TButton;
    Btn_Borrar: TButton;
    Panel10: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCer: TcxDBTextEdit;
    cxDBKey: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    DxBManager1: TdxBarManager;
    DxBaropciones: TdxBar;
    DxBarBtnGuardar: TdxBarLargeButton;
    DxBarBtnCerrar: TdxBarLargeButton;
    Label3: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    CxDbTxtCodigo: TcxDBTextEdit;
    CxDbTxtTitulo: TcxDBTextEdit;
    CxDbTxtNombre: TcxDBTextEdit;
    CxDbTxtRfc: TcxDBTextEdit;
    CxDbDateFecha: TcxDBDateEdit;
    CxDbTxtEtiqueta: TcxDBTextEdit;
    CxDbMemoDescripcion: TcxDBMemo;
    lbl4: TLabel;
    CxDbTxtTel1: TcxDBTextEdit;
    CxDbTxtTel2: TcxDBTextEdit;
    CxDbTxtTel3: TcxDBTextEdit;
    CxDbTxtTel4: TcxDBTextEdit;
    CxDbTxtTel5: TcxDBTextEdit;
    CxDbTxtRegPat: TcxDBTextEdit;
    CxDbMemoDomicilioFiscal: TcxDBMemo;
    CxDbMemoDomicilioOrg: TcxDBMemo;
    CxSpinEditFPD: TcxDBSpinEdit;
    CxSpinEditFPV: TcxDBSpinEdit;
    CxSpinEditDEPV: TcxDBSpinEdit;
    CxSpinEditDEA: TcxDBSpinEdit;
    CxSpinEditSVI: TcxDBSpinEdit;
    CxSpinEditPNOMINA: TcxDBSpinEdit;
    CxCbbSalario: TcxDBLookupComboBox;
    dsSalMin: TDataSource;
    lbl6: TLabel;
    lblconvenio: TLabel;
    img6: TImage;
    jvlbl1: TJvLabel;
    CxDbSpinBtn1: TcxDBSpinEdit;
    img7: TImage;
    Foto: TcxDBImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure CblcDocumentosClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure JvCalcEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox2DblClick(Sender: TObject);
    procedure BtnAgregarClick(Sender: TObject);
    procedure BtnEliminarClick(Sender: TObject);
    procedure BtnArribaClick(Sender: TObject);
    procedure BtnAbajoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Btn_NuevoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_BorrarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure DxBarBtnGuardarClick(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure CxDbTxtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtTituloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtRfcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbDateFechaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtEtiquetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtTel1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtTel2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtTel3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtTel4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbTxtRegPatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxDbMemoDomicilioFiscalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTextEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxCbbSalarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxSpinEditFPDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxSpinEditFPVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxSpinEditDEPVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxSpinEditDEAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxSpinEditSVIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CxSpinEditPNOMINAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Grupo: TcxGroupbox;
    Padre: TcxDBLookupCombobox;
    asterisco: Timage;
    TituloCreado: String;
    CodigoSalida: TModalResult;
    ModalResultado: Integer;
    Forma: TForm;
    OldFecha: TDate;
    procedure cargarDatos;
    procedure validarCampos;
    function CargarSerie(idorganizacion, iddocumento: Integer;
      Cliente: TClientDataset): Boolean;
    function GuardarSerie(idorganizacion, iddocumento, digitos: Integer; cadena: string; Cliente: TClientDataset): Boolean;
    function GuardarTemporal(iddocumento, digitos: Integer; cadena: string;
      Cliente: Tjvmemorydata): Boolean;
    procedure buscarItemCbBox;
    procedure ActualizaBotones;
    procedure FormaClose(Sender: TObject; var Action: TCloseAction);
  public
    tieneRiesgo: Boolean;
    NivelPadre: Integer;
    WbsPadre: String;
    IdPadre: Integer;
    IdOrganizacion: Integer;
  end;

var
  FrmDatosNiveles: TFrmDatosNiveles;
  ComponentCreate: Boolean;

  campos : Array[1..10] of string;
  i : Integer;
  ingcadena, nomen : string;

  ubicacion: array[1..100] of Integer;
  categoria: array[1..100] of string;
  contenido: array[1..100] of string;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

Function TFrmDatosNiveles.CargarSerie(idorganizacion, iddocumento: Integer; Cliente: TClientDataset):Boolean;
//cargar los datos de la serie dado una organizacion y un documento
Begin
  Result := False;
  lblvalActual.Caption := 'Vacío';
  try
    //
    if Cliente.State = dsBrowse then
    begin
      CargarDatosFiltrados(Cliente,'idorganizacion,iddocumento',[idorganizacion, iddocumento],False);
      Cliente.Refresh;
      if Cliente.RecordCount > 0 then
      begin
        Cliente.First;
        GuardarTemporal(iddocumento,Cliente.FieldByName('digitos').AsInteger,Cliente.FieldByName('serie').AsString, MdTemp);
        lblvalActual.Caption := Cliente.FieldByName('serie').AsString;
        JvCalcEdit1.Text := Cliente.FieldByName('digitos').AsString;
        Result := True;
      end;
    end;
  except
  on e:Exception do
    raise Exception.Create(e.Message);
  end;
End;

Function TFrmDatosNiveles.GuardarTemporal(iddocumento, digitos: Integer; cadena: string; Cliente: Tjvmemorydata):Boolean;
//guardar la serie temporal, si ya existe la edita si no la crea
Begin
  Result := False;
  try
    Cliente.Open;

    if not Cliente.Locate('iddocumento',IntToStr(iddocumento),[]) then
      Cliente.Append
    else
      Cliente.Edit;
    Cliente.FieldByName('iddocumento').AsInteger := iddocumento;
    Cliente.FieldByName('serie').AsString := cadena;
    Cliente.FieldByName('digitos').AsInteger := digitos;

    Cliente.Post;

    Result := True;

  except
  on e:Exception do
    raise Exception.Create(e.Message);
  end;
End;

Function TFrmDatosNiveles.GuardarSerie(idorganizacion, iddocumento, digitos: Integer; cadena: string; Cliente: TClientDataset):Boolean;
//guardar la serie, si ya existe la edita si no la crea
var
  CdUpt: TClientDataSet;
  PNUpt : string;
Begin
  Result := False;
  try
    CdUpt := TClientDataSet.Create(Self);
    CdUpt.RemoteServer := ClientModule1.DSProviderConnection1;
    CrearConjunto(CdUpt,'nuc_documentoserie',PNUpt,ccUpdate);
    CargarDatosFiltrados(CdUpt,'idorganizacion,iddocumento',[idorganizacion,iddocumento],False);
    CdUpt.Open;

    if CdUpt.RecordCount = 0 then
    begin
      CdUpt.Append;
      CdUpt.FieldByName('iddocumentoserie').AsInteger := 0;
    end;

    if CdUpt.RecordCount = 1 then
      CdUpt.Edit;

    CdUpt.FieldByName('idorganizacion').AsInteger := idorganizacion;
    CdUpt.FieldByName('iddocumento').AsInteger := iddocumento;
    CdUpt.FieldByName('serie').AsString := cadena;
    CdUpt.FieldByName('digitos').AsInteger := digitos;

    CdUpt.Post;

    CdUpt.ApplyUpdates(-1);

    Result := True;

  except
    on e:Exception do
      raise Exception.Create(e.Message);
  end;

  CdUpt.Close;
  EliminarConjunto(CdUpt);
  CdUpt.Free;
End;

procedure TFrmDatosNiveles.CblcDocumentosClick(Sender: TObject);
begin
  if CblcDocumentos.KeyValue <> null then
  begin
    ListBox2.Items.Clear;
    JvCalcEdit1.Text := '0';
    Edit2.Text := '';
    Edit1.Text:='';
    nomen := '';
    CargarSerie(dsDatos.DataSet.FieldByName('idorganizacion').AsInteger, CblcDocumentos.KeyValue,CdSeries)
  end;
end;



procedure TFrmDatosNiveles.cxButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    cxDBCer.Text:=OpenDialog1.FileName;
end;

procedure TFrmDatosNiveles.cxButton2Click(Sender: TObject);
begin
  if OpenDialog2.Execute then
    cxDBKey.Text:=OpenDialog2.FileName;
end;

procedure TFrmDatosNiveles.cxButton3Click(Sender: TObject);
begin
try
  TcxImage(Foto).LoadFromFile;
//    try
//      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
//      FrmCargaImagen.ShowModal;
//      if not FrmCargaImagen.cancelado then
//      begin
//        TBlobField(dsDatos.DataSet.FieldByName('imagen')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
//      end;
//    finally
//      FrmCargaImagen.Free;
//    end;
  except
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

procedure TFrmDatosNiveles.CxCbbSalarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxSpinEditFPD.CanFocus then
      CxSpinEditFPD.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbDateFechaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtEtiqueta.CanFocus then
      CxDbTxtEtiqueta.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit12.CanFocus then
      cxDBTextEdit12.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbMemoDomicilioFiscalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    if CxDbMemoDomicilioOrg.CanFocus then
      CxDbMemoDomicilioOrg.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit2.CanFocus then
      cxDBTextEdit2.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit3.CanFocus then
      cxDBTextEdit3.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit4.CanFocus then
      cxDBTextEdit4.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit5.CanFocus then
      cxDBTextEdit5.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit6.CanFocus then
      cxDBTextEdit6.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit7.CanFocus then
      cxDBTextEdit7.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit8.CanFocus then
      cxDBTextEdit8.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBTextEdit9.CanFocus then
      cxDBTextEdit9.SetFocus;
end;

procedure TFrmDatosNiveles.cxDBTextEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if cxDBLookupComboBox1.CanFocus then
      cxDBLookupComboBox1.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtTitulo.CanFocus then
      CxDbTxtTitulo.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtEtiquetaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    if CxDbMemoDescripcion.CanFocus then
      CxDbMemoDescripcion.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtRfc.CanFocus then
      CxDbTxtRfc.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtRegPatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbMemoDomicilioFiscal.CanFocus then
      CxDbMemoDomicilioFiscal.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtRfcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbDateFecha.CanFocus then
      CxDbDateFecha.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtTel1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtTel2.CanFocus then
      CxDbTxtTel2.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtTel2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtTel3.CanFocus then
      CxDbTxtTel3.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtTel3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtTel4.CanFocus then
      CxDbTxtTel4.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtTel4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtTel5.CanFocus then
      CxDbTxtTel5.SetFocus;
end;

procedure TFrmDatosNiveles.CxDbTxtTituloKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxDbTxtNombre.CanFocus then
      CxDbTxtNombre.SetFocus;
end;

procedure TFrmDatosNiveles.CxSpinEditDEAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxSpinEditSVI.CanFocus then
      CxSpinEditSVI.SetFocus;
end;

procedure TFrmDatosNiveles.CxSpinEditDEPVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxSpinEditDEA.CanFocus then
      CxSpinEditDEA.SetFocus;
end;

procedure TFrmDatosNiveles.CxSpinEditFPDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxSpinEditFPV.CanFocus then
      CxSpinEditFPV.SetFocus;
end;

procedure TFrmDatosNiveles.CxSpinEditFPVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxSpinEditDEPV.CanFocus then
      CxSpinEditDEPV.SetFocus;
end;

procedure TFrmDatosNiveles.CxSpinEditPNOMINAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    if Btn_Nuevo.CanFocus then
      Btn_Nuevo.SetFocus;
end;

procedure TFrmDatosNiveles.CxSpinEditSVIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if CxSpinEditPNOMINA.CanFocus then
      CxSpinEditPNOMINA.SetFocus;
end;

procedure TFrmDatosNiveles.DxBarBtnCerrarClick(Sender: TObject);
begin
  BtnCancelClick(nil);
end;

procedure TFrmDatosNiveles.DxBarBtnGuardarClick(Sender: TObject);
begin
  BtnRecClick(nil);
end;

procedure TFrmDatosNiveles.BtnAbajoClick(Sender: TObject);
var
cadsig: string;
ultimo: Integer;
begin
  if CblcDocumentos.KeyValue <> null then
  begin
    nomen:='';
    i:=0;
    if ListBox2.ItemIndex<ListBox2.Items.Count-1 then
    Begin
      cadsig:=Listbox2.Items[ListBox2.ItemIndex+1];
      ListBox2.Items[ListBox2.ItemIndex+1]:=Listbox2.Items[ListBox2.ItemIndex];
      ListBox2.Items[ListBox2.ItemIndex]:=cadsig;
    End;
    ultimo:= ListBox2.Items.Count-1;
    for i := 0 to ultimo do
      nomen:=nomen+ListBox2.Items[i];
    Edit1.Text:=nomen;
  end;
end;

procedure TFrmDatosNiveles.BtnAgregarClick(Sender: TObject);
begin
  if CblcDocumentos.KeyValue <> null then
  begin
    ListBox2.Items.Add('{'+ListBox1.Items[ListBox1.ItemIndex]+'}');
    nomen:=nomen+'{'+ListBox1.Items[ListBox1.ItemIndex]+'}';
    Edit1.Text:=nomen;
  end;

end;

procedure TFrmDatosNiveles.BtnArribaClick(Sender: TObject);
var
cadant: string;
ultimo: Integer;
begin
  if CblcDocumentos.KeyValue <> null then
  begin
    nomen:='';
    i:=0;
    if ListBox2.ItemIndex>0 then
    Begin
      cadant:=Listbox2.Items[ListBox2.ItemIndex-1];
      ListBox2.Items[ListBox2.ItemIndex-1]:=Listbox2.Items[ListBox2.ItemIndex];
      ListBox2.Items[ListBox2.ItemIndex]:=cadant;
    End;
    ultimo:= ListBox2.Items.Count-1;

    for i := 0 to ultimo do
      nomen:=nomen+ListBox2.Items[i];
    Edit1.Text:=nomen;
  end;
end;

procedure TFrmDatosNiveles.BtnCancelClick(Sender: TObject);
begin
  if dsDatos.Dataset.State in [dsInsert, dsEdit] then
    dsDatos.Dataset.Cancel;

  CodigoSalida := mrCancel;
  close;
end;

procedure TFrmDatosNiveles.BtnEliminarClick(Sender: TObject);
var
ultimo: Integer;
begin
  if CblcDocumentos.KeyValue <> null then
  begin
    nomen:='';
    ListBox2.Items.Delete(listBox2.ItemIndex);
    ultimo:= ListBox2.Items.Count-1;
    for i := 0 to ultimo do
    nomen:=nomen+ListBox2.Items[i];
    Edit1.Text:=nomen;
  end;
end;

procedure TFrmDatosNiveles.BtnRecClick(Sender: TObject);
var
  IdAsignado: Integer;
  OldCursor: TCursor;
  Buscar: TClientDataSet;
begin

  Try
    if tieneRiesgo = false then
    begin
      if cxTabConfiguracionNomina.TabVisible then
        validarCampos;
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        // Manejando la cabecera si es nivel acceso
        if (ComponentCreate = True) and (Padre.EditValue = null) then
        begin
          Padre.SetFocus;
          raise InteligentException.CreateByCode(8, ['Seleccione un ' + titulocreado]);
        end;

        tab1.ActivePageIndex := 0;

        // Validando campos
        if cxDbTxtCodigo.Text = '' then
          raise InteligentException.CreateByCode(18, ['Código']);

        if cxDbtxtTitulo.Text = '' then
          raise InteligentException.CreateByCode(18, ['Título']);

        //antes de enviar verificar cual era el estado del dataset
        if dsDatos.DataSet.State = dsInsert then
        begin
          // Verificar si el código no se duplica
          Try
            Buscar := TClientDataSet.Create(Self);
            if Not CrearConjunto(Buscar, 'nuc_organizacion', ccUpdate) then
              raise InteligentException.CreateByCode(5, ['Organizacion de Empresa']);
            if Not CargarDatosFiltrados(Buscar, 'CodigoOrganizacion', [cxDbTxtCodigo.Text]) then
              raise InteligentException.CreateByCode(6, ['Organizacion de Empresa', cxDbTxtCodigo.Text, 'Código de Organización']);

            if CuantosRegistros(Buscar) > 0 then
            begin
              cxDbTxtCodigo.SetFocus;
              raise InteligentException.CreateByCode(17, ['Organizacion de Empresa', cxDbTxtCodigo.Text]);
            end;
          Finally
            if Assigned(Buscar) and (Buscar.Active) then
              Buscar.Close;
            EliminarConjunto(Buscar);
            FreeAndNil(Buscar);
          End;

          dsDatos.DataSet.FieldByName('Activo').AsString := 'Si';
          if cxTabConfiguracionNomina.TabVisible then
            //dsDatos.dataset.FieldByName('idSalario').AsInteger := TSalarioMinimo(cbSalarioMinimo.Items.Objects[cbSalarioMinimo.ItemIndex]).identificador
          else
            dsDatos.DataSet.FieldByName('idSalario').Clear;
          //dsDatos.DataSet.FieldByName('Padre').AsInteger := NivelPadre;
        end;


        IdAsignado := -1;
        if dsDatos.DataSet.State = dsEdit then
          IdAsignado := dsDatos.DataSet.FieldByName('idorganizacion').AsInteger;

        if (cxTabConfiguracionNomina.TabVisible) and (CxCbbSalario.ItemIndex = -1) then
        begin
          tab1.ActivePageIndex := 5;
          CxCbbSalario.SetFocus;
          raise InteligentException.CreateByCode(18, ['Salario Minimo']);
        end;

        //enviar informacion
        dsDatos.dataset.post;
        TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);

        //de acuerdo al estado, asignar el id padre
        if IdAsignado = -1 then
          IdAsignado := UltimoId;

        dsDatos.DataSet.Refresh;
        if (Not dsDatos.DataSet.Locate('IdOrganizacion', IdAsignado, [])) or (dsDatos.DataSet.RecordCount = 0) then
          raise InteligentException.CreateByCode(14, ['Estructura Organizacional']);

        dsDatos.DataSet.Edit;
        dsDatos.DataSet.FieldByName('Wbs').AsString := WbsPadre + dsDatos.DataSet.FieldByName('IdOrganizacion').AsString;
        if cxTabConfiguracionNomina.TabVisible then
          dsDatos.dataset.FieldByName('idSalario').AsInteger := CxCbbSalario.EditValue;
//        else
//          dsDatos.DataSet.FieldByName('IdSalario').Clear;



        dsDatos.DataSet.Post;
        TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);
        //cdRiesgoUpt.ApplyUpdates(-1);

            // si el tab esta visible quieree decir que es un nivel de acceso
        if tab1.Pages[3].TabVisible = True then
        begin
          // si tiene algun registro el memorydata de series, entonces se procede a su guardado
          if MdTemp.RecordCount > 0 then
          begin
            MdTemp.First;
            while not MdTemp.Eof do
            begin
              try
                GuardarSerie(IdAsignado, MdTemp.FieldByName('iddocumento').AsInteger,
                MdTemp.FieldByName('digitos').AsInteger,MdTemp.FieldByName('serie').AsString, CdSeries);
              finally
                MdTemp.Next;
              end;
            end;
          end;
        end;

        CodigoSalida := mrOk;
        close;
      Finally
        Screen.Cursor := OldCursor;
      End;
    end;
  Except
      on e:InteligentException do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        if Not (dsDatos.DataSet.State in [dsEdit, dsInsert]) then
          Close;
      end;

      on e:Exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        if Not (dsDatos.DataSet.State in [dsEdit, dsInsert]) then
          Close;
      end;

  End;
end;


procedure TFrmDatosNiveles.Btn_BorrarClick(Sender: TObject);
begin
  Try
    Try
      Forma := TForm.Create(Self);
      Forma.OnClose := FormaClose;
      pnl_Captura.Parent := Forma;
      pnl_Captura.Visible := True;
      pnl_Captura.Align := alClient;

      if cdRiesgoUpt.ProviderName = '' then
        if Not CrearConjunto(cdRiesgoUpt, 'nom_riesgotrabajo', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Riesgo de Trabajo']);

      if cdRiesgoUpt.ProviderName <> '' then
      begin
        if Not CargarDatosFiltrados(cdRiesgoUpt, 'IdRiesgoTrabajo', [dsRiesgo.DataSet.FieldByName('IdRiesgoTrabajo').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Riesgo de Trabajo', dsRiesgo.DataSet.FieldByName('IdRiesgoTrabajo').AsInteger, 'Id. Riesgo Trabajo']);

        if cdRiesgoUpt.Active then
          cdRiesgoUpt.Refresh
        else
          cdRiesgoUpt.Open;

        OldFecha := cdRiesgoUpt.FieldByName('Aplicacion').AsDateTime;
        cdRiesgoUpt.Edit;
      end;

      if Forma.ShowModal = mrOk then
      begin
        dsRiesgo.DataSet.Refresh;
        ActualizaBotones;
      end;
    Finally
      pnl_Captura.Parent := Self;
      pnl_Captura.Visible := False;
      pnl_Captura.Align := alNone;
      Forma.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmDatosNiveles.Btn_EditarClick(Sender: TObject);
begin
  Try
    Try
      Forma := TForm.Create(Self);
      Forma.OnClose := FormaClose;
      pnl_Captura.Parent := Forma;
      pnl_Captura.Visible := True;
      pnl_Captura.Align := alClient;

      if cdRiesgoUpt.ProviderName = '' then
        if Not CrearConjunto(cdRiesgoUpt, 'nom_riesgotrabajo', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Riesgo de Trabajo']);
    
      if cdRiesgoUpt.ProviderName <> '' then
      begin
        if Not CargarDatosFiltrados(cdRiesgoUpt, 'IdRiesgoTrabajo', [dsRiesgo.DataSet.FieldByName('IdRiesgoTrabajo').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Riesgo de Trabajo', dsRiesgo.DataSet.FieldByName('IdRiesgoTrabajo').AsInteger, 'Id. Riesgo Trabajo']);

        if cdRiesgoUpt.Active then
          cdRiesgoUpt.Refresh
        else
          cdRiesgoUpt.Open;

        OldFecha := cdRiesgoUpt.FieldByName('Aplicacion').AsDateTime;
        cdRiesgoUpt.Edit;
      end;  
    
      if Forma.ShowModal = mrOk then
      begin
        dsRiesgo.DataSet.Refresh;
        ActualizaBotones;
      end;
    Finally
      pnl_Captura.Parent := Self;
      pnl_Captura.Visible := False;
      pnl_Captura.Align := alNone;
      Forma.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmDatosNiveles.Btn_NuevoClick(Sender: TObject);
begin
  Try
    Try
      Forma := TForm.Create(Self);
      Forma.OnClose := FormaClose;
      pnl_Captura.Parent := Forma;
      pnl_Captura.Visible := True;
      pnl_Captura.Align := alClient;

      if cdRiesgoUpt.ProviderName = '' then
        if Not CrearConjunto(cdRiesgoUpt, 'nom_riesgotrabajo', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Riesgo de Trabajo']);
    
      if cdRiesgoUpt.ProviderName <> '' then
      begin
        if Not CargarDatosFiltrados(cdRiesgoUpt, 'IdOrganizacion', [-9]) then
          raise InteligentException.CreateByCode(21, ['Riesgo de Trabajo']);

        if cdRiesgoUpt.Active then
          cdRiesgoUpt.Refresh
        else
          cdRiesgoUpt.Open;

        cdRiesgoUpt.Append;
        cdRiesgoUpt.FieldByName('IdRiesgoTrabajo').AsInteger := 0;
        cdRiesgoUpt.FieldByName('IdOrganizacion').AsInteger := IdOrganizacion;
        cdRiesgoUpt.FieldByName('Aplicacion').AsDateTime := Now;
        cdRiesgoUpt.FieldByName('Factor').AsInteger := 0;
      end;  
    
      if Forma.ShowModal = mrOk then
      begin
        dsRiesgo.DataSet.Refresh;
        ActualizaBotones;
      end;
    Finally
      pnl_Captura.Parent := Self;
      pnl_Captura.Visible := False;
      pnl_Captura.Align := alNone;
      Forma.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmDatosNiveles.buscarItemCbBox;
var
  idx: Integer;
  encontrado: Boolean;
begin
//  idx := 0;
//  cdSalario_sel.First;
//  encontrado := False;
//  try
//    while (idx < cbSalarioMinimo.Items.Count) and encontrado = false do
//    begin
//      if TSalarioMinimo(cbSalarioMinimo.Items.Objects[idx]).identificador = dsDatos.DataSet.FieldByName('idSalario').AsInteger then
//      Begin
//         cbSalarioMinimo.ItemIndex := idx;
//         encontrado := true;
//      End;
//    idx := idx +1;
//    end;
//  Except
//    ;
//  end;
end;

procedure TFrmDatosNiveles.Button1Click(Sender: TObject);
var
  Foco: TWinControl;
begin
  Foco := Nil;

  Try
    if cdRiesgoUpt.State In [dsEdit, dsInsert] then
    begin
      // Validar los datos
      if DBFactor.Value <= 0 then
      begin
        Foco := DBFactor;
        raise InteligentException.CreateByCode(8, ['El valor del Factor de Riesgo de Trabajo debe ser mayor que cero.']);
      end;

      if ((cdRiesgoUpt.State = dsEdit) and (cdRiesgoUpt.FieldByName('Aplicacion').AsDateTime <> OldFecha)) or (cdRiesgoUpt.State = dsInsert) then
      begin
        CargarDatosFiltrados(cdRiesgoUpt, 'IdOrganizacion,Aplicacion', [IdOrganizacion, ClientModule1.DatetoStrSql(DBAplicacion.Date, '-')]);
        if CuantosRegistros(cdRiesgoUpt) > 0 then
        begin
          Foco := DBAplicacion;
          raise InteligentException.CreateByCode(8, ['Ya existe un registro de Factor de Riesgo de Trabajo con fecha de Aplicación ' + ClientModule1.DatetoStrSql(DBAplicacion.Date, '-')]);
        end;
      end;

      cdRiesgoUpt.FieldByName('Factor').AsFloat := DBFactor.Value;

      cdRiesgoUpt.Post;
      cdRiesgoUpt.ApplyUpdates(-1);
    end;

    ModalResultado := mrOk;
    Forma.Close;
  Except
    on e:InteligentException do
    begin
      if Assigned(Foco) then
        Foco.SetFocus;
      
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Forma.Close;
    end;
  End;
end;

procedure TFrmDatosNiveles.Button2Click(Sender: TObject);
begin
  ModalResultado := mrCancel;
end;

procedure TFrmDatosNiveles.Button5Click(Sender: TObject);
begin
  ingcadena:=Edit2.Text;
  ListBox2.Items.Add(ingcadena);
  nomen:=nomen+ingcadena;
  Edit1.Text:=nomen;
  ingcadena:='';
  edit2.Text:='';
end;

procedure TFrmDatosNiveles.cargarDatos;
  var
    SalarioMin: TSalarioMinimo;

begin
  if cdsalario_sel.Active then
    cdSalario_sel.Refresh
  else
    cdSalario_sel.Open;

end;

procedure TFrmDatosNiveles.Edit1Change(Sender: TObject);
begin

    GuardarTemporal(CblcDocumentos.KeyValue, StrToInt(JvCalcEdit1.Text), Edit1.Text, MdTemp);
    lblvalActual.Caption := Edit1.Text;

end;

procedure TFrmDatosNiveles.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    ingcadena:=Edit2.Text;
    ListBox2.Items.Add('$'+ingcadena+'$');
    nomen:=nomen+'$'+ingcadena+'$';
    Edit1.Text:=nomen;
    ingcadena:='';
    edit2.Text:='';
  end;
end;

procedure TFrmDatosNiveles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(cdRiesgoUpt);

  if ComponentCreate = True then
    Grupo.Free;

  ModalResult := CodigoSalida;
end;

procedure TFrmDatosNiveles.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   // si se hizo cambios en el formulario pregunta si lo quieres cerrar
  if (DatasetConCambios(dsDatos)) = true  then
  begin
    if (InteliDialog.ShowModal('Confirmar operación.','¿Está seguro que deseas salir sin guardar cambios?',
      mtInformation, [mbYes, mbNo],0)= mrNo) then
      CanClose := false;
  end;
end;

procedure TFrmDatosNiveles.FormCreate(Sender: TObject);
begin
  //ClientModule1.ComponentColor(self);
  campos[1]:='codigo';
  campos[2]:='consecutivo';
  campos[3]:='año';
  nomen:='';
  for i := 1 to 4 do
   ListBox1.Items.Add(campos[i]);


  if Not CrearConjunto(cdSalario_sel,'rhu_salario',ccCatalog) then
    raise InteligentException.CreateByCode(6, ['Salarios']);

  if Not CargarDatosFiltrados(cdSalario_sel, 'isNulo', ['Si']) then
        raise InteligentException.CreateByCode(19, ['Salarios']);
  cargarDatos;

  if Not CargarDatosFiltrados(cdSalario_sel, 'isNulo', [-1]) then
        raise InteligentException.CreateByCode(19, ['Salarios']);

  if Not CrearConjunto(cdRiesgoPuesto,'nom_riesgopuesto',ccCatalog) then
    raise InteligentException.CreateByCode(6, ['Riesgo Puesto']);

  cdRiesgoPuesto.Open;

end;

procedure TFrmDatosNiveles.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Btn_Cancelar.Click;
end;

procedure TFrmDatosNiveles.FormShow(Sender: TObject);
var
  VarIdNivel, NivelAcceso, nivelraiz, idx: Integer;
begin
  ModalResultado := mrAbort;
  CodigoSalida := mrAbort;
  tab1.Pages[3].TabVisible := False;
  ClientModule1.ComponentColor(Self);
  ComponentCreate := False;
  TituloCreado := '';
  idx := 0;
  Try
    if (IdPadre = -5) OR (dsDatos.DataSet.FieldByName('padre').AsInteger = -5) then
    begin
      JvLabel6.Visible := True;
      CxSpinEditPNOMINA.Visible := True;
      Panel9.Visible := true;
    end
    else
    begin
      tab1.Pages[2].TabVisible:= False;
      tab1.Pages[4].TabVisible:= False;
      tab1.Pages[5].TabVisible:= False;
    end;

    // Verificar si es necesario crear el conjunto de factores de riesgo de trabajo
    if TClientDataSet(dsRiesgo.DataSet).ProviderName = '' then
      if Not CrearConjunto(TClientDataSet(dsRiesgo.DataSet), 'nom_riesgotrabajo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Factores de Riesgo de Trabajo']);

    if TClientDataSet(dsRiesgo.DataSet).ProviderName <> '' then
    begin
      if Not CargarDatosFiltrados(TClientDataSet(dsRiesgo.DataSet), 'IdOrganizacion', [dsDatos.DataSet.FieldByName('IdOrganizacion').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Factores de Riesgo de Trabajo', dsDatos.DataSet.FieldByName('IdOrganizacion').AsString, 'Id. Organizacion']);

      if dsRiesgo.DataSet.Active then
        dsRiesgo.DataSet.Refresh
      else
        dsRiesgo.DataSet.Open;

      ActualizaBotones;
    end;

    //si se inserta establecer fecha actual
    if dsDatos.DataSet.State = dsInsert then
    begin
      //DateFecha.Date := Now;
      dsDatos.DataSet.FieldByName('Fecha').AsDateTime := Now;
      dsDatos.DataSet.FieldByName('IdNivel').AsInteger := dsNiveles.DataSet.FieldByName('IdNivelOrganizacion').AsInteger;
      dsDatos.DataSet.FieldByName('IdOrganizacion').AsInteger := 0;
      dsDatos.DataSet.FieldByName('Wbs').AsString := '';
      dsDatos.DataSet.FieldByName('Padre').AsInteger := IdPadre;
    end;

    //consultar el nivel de acceso
    NivelAcceso := ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').AsInteger;

    //consultar nivel del padre
    TituloCreado := dsNiveles.DataSet.FieldByName('titulonivel').AsString;
    VarIdNivel := dsNiveles.DataSet.FieldByName('IdNivelOrganizacion').AsInteger;

    //obtener el primer nivel o nivelraiz
    dsNiveles.DataSet.First;
    nivelraiz := dsNiveles.DataSet.FieldByName('idnivelorganizacion').AsInteger;

    //si el nivel es el primero no es necesario poner barra
    if VarIdNivel <> nivelraiz then
    begin
      //si nivel es de acceso visualizar tab de series
      if VarIdNivel = NivelAcceso then
      begin
        tab1.Pages[3].TabVisible:= True;
        CrearConjunto(CdDocumentos, 'nuc_documento', ccCatalog);
        CdDocumentos.Open;

        if CdDocumentos.RecordCount > 0 then
          CblcDocumentos.ListFieldIndex := 1;

        CrearConjunto(CdSeries,'nuc_documentoserie', ccCatalog);
        CargarDatosFiltrados(CdSeries,'iddocumentoserie',[-9],False);
        CdSeries.Open;

      end;
      lblconvenio.Visible := True;
      img6.Visible := True;
      cdOrganizacion.Close;
      CrearConjunto(cdOrganizacion, cOrganizacion, ccCatalog);
      CargarDatosFiltrados(cdOrganizacion, 'idnivel', [nivelPadre]);
      cdOrganizacion.Open;

      //Creando Combo
      Padre := TcxDbLookupComboBox.Create(Self);
      with Padre do
      begin
        Left := 289;
        Top := 16;
        Width := 246 ;
        Height := 21;
        Parent := Panel6;
        name := 'idPadres';
        DataBinding.DataField := 'padre';
        DataBinding.DataSource := dsdatos;
        Properties.KeyFieldNames := 'idorganizacion';
        Properties.ListFieldNames := 'codigoorganizacion';
        Properties.ListFieldIndex := 0;
        Properties.ListSource := DsOrganizacion;
      end;
      Padre.Properties.ListFieldIndex := 0;

      //Creando la imagen del asterisco
//      Asterisco := TImage.Create(Self);
//      with Asterisco do
//      begin
//        Left := 320;
//        Top := 17 ;
//        Width := 17 ;
//        Height := 17;
//        Parent := Grupo;
//        name := 'Asterisco';
//        picture := image2.Picture;
//      end;
      ComponentCreate := True;
      if padre.Canfocus then
        Padre.SetFocus;
    end;

    tab1.ActivePageIndex := 0;
    Try
      if cxDbTxtCodigo.CanFocus then
        cxDbTxtCodigo.SetFocus;
    Except
      ;
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

  if dsDatos.DataSet.State = dsEdit then
    buscarItemCbBox;
end;

procedure TFrmDatosNiveles.JvCalcEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if CblcDocumentos.KeyValue <> null then
  begin
    if Length(Trim(JvCalcEdit1.Text)) > 0 then
    begin
      if Length(Trim(Edit1.Text)) > 0 then
      begin
        GuardarTemporal(CblcDocumentos.KeyValue, StrToInt(JvCalcEdit1.Text), Edit1.Text, MdTemp);
        lblvalActual.Caption := Edit1.Text;
      end
      else
        GuardarTemporal(CblcDocumentos.KeyValue, StrToInt(JvCalcEdit1.Text), lblvalActual.Caption, MdTemp)
    end;
  end;
end;

procedure TFrmDatosNiveles.ListBox1DblClick(Sender: TObject);
begin
  BtnAgregar.Click;
{  ListBox2.Items.Add('<&'+ListBox1.Items[ListBox1.ItemIndex]+'&>');
  nomen:=nomen+'<&'+ListBox1.Items[ListBox1.ItemIndex]+'&>';
  Edit1.Text:=nomen;  }
end;
procedure TFrmDatosNiveles.ListBox2DblClick(Sender: TObject);
begin
  BtnEliminar.Click;
end;

procedure TFrmDatosNiveles.validarCampos;
begin
//VALIDAR CAMPOS VACIOS
  //Pestaña Recursos Humanos

  if trim(CxCbbSalario.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Salario Mínimo']);
    if cxTabConfiguracionNomina.TabVisible then
    begin
      Tab1.ActivePage := cxTabConfiguracionNomina;
      if CxCbbSalario.CanFocus then
        CxCbbSalario.SetFocus;
    end;
  end;
  if trim(CxSpinEditFPD.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Factor Prima Dominical']);
    if cxTabConfiguracionNomina.TabVisible then
    begin
      Tab1.ActivePage := cxTabConfiguracionNomina;
      if CxSpinEditFPD.CanFocus then
        CxSpinEditFPD.SetFocus;
    end;
  end;
  if trim(CxSpinEditFPV.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Factor Prima Vacacional']);
    if cxTabConfiguracionNomina.TabVisible then
    begin
      Tab1.ActivePage := cxTabConfiguracionNomina;
      if CxSpinEditFPV.CanFocus then
        CxSpinEditFPV.setFocus;
    end;
  end;
  if trim(CxSpinEditDEA.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Dias Excento Aguinaldo']);
    if cxTabConfiguracionNomina.TabVisible then
    begin
      Tab1.ActivePage := cxTabConfiguracionNomina;
      if CxSpinEditDEA.CanFocus then
        CxSpinEditDEA.setFocus;
    end;
  end;
  if trim(CxSpinEditDEPV.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Dias Excento Prima Vacacional']);
    if cxTabConfiguracionNomina.TabVisible then
    begin
      Tab1.ActivePage := cxTabConfiguracionNomina;
      if CxSpinEditDEPV.CanFocus then
        CxSpinEditDEPV.setFocus;
    end;
  end;
  if trim(CxSpinEditSVI.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Seguro de vida INFONAVIT']);
    if cxTabConfiguracionNomina.TabVisible then
    begin
      Tab1.ActivePage := cxTabConfiguracionNomina;
      if CxSpinEditSVI.CanFocus then
        CxSpinEditSVI.setFocus;
    end;
  end;
  if trim(CxSpinEditPNOMINA.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['% Nómina Estado']);
    if cxTabConfiguracionNomina.TabVisible then
    begin
      Tab1.ActivePage := cxTabConfiguracionNomina;
      if CxSpinEditPNOMINA.CanFocus then
        CxSpinEditPNOMINA.setFocus;
    end;
  end;
  //Pestaña Departamento
  if trim(CxDbMemoDomicilioFiscal.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Domicilio fiscal']);
    if cxTabDomicilio.TabVisible then
    begin
      Tab1.ActivePage := cxTabDomicilio;
      if CxDbMemoDomicilioFiscal.CanFocus then
        CxDbMemoDomicilioFiscal.setFocus;
    end;
  end;
  if trim(CxDbMemoDomicilioOrg.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Domicilio']);
    if cxTabDomicilio.TabVisible then
    begin
      Tab1.ActivePage := cxTabDomicilio;
      if CxDbMemoDomicilioOrg.CanFocus then
        CxDbMemoDomicilioOrg.setFocus;
    end;
  end;
  if trim(CxDbTxtRfc.Text) = '' then
  begin
    raise InteligentException.CreateByCode(18,['Reg. Imss']);
    if cxTabGenerales.TabVisible then
    begin
      Tab1.ActivePage := cxTabGenerales;
      if CxDbTxtRfc.CanFocus then
        CxDbTxtRfc.setFocus;
    end;
  end;
end;

procedure TFrmDatosNiveles.ActualizaBotones;
begin
  Btn_Editar.Enabled := dsRiesgo.DataSet.RecordCount > 0;
  Btn_Borrar.Enabled := dsRiesgo.DataSet.RecordCount > 0;
end;

procedure TFrmDatosNiveles.FormaClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdRiesgoUpt.State in [dsEdit, dsInsert] then
    cdRiesgoUpt.Cancel;

  Forma.ModalResult := ModalResultado;
end;

end.



