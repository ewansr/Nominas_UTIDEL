unit UTFrmFichaPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ExtCtrls, ComCtrls, Menus, DBCtrls, StdCtrls, Mask,
  JvExControls, JvLabel, RxToolEdit, RXDBCtrl, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExStdCtrls, JvBehaviorLabel,
  DB, DBClient, Uintelidialog, AdvCircularProgress, AdvGlowButton, TypInfo,
  JvComponentBase, JvBalloonHint, NxEdit, NxColumns, NxDBColumns, Buttons,
  Grids, DBGrids, JvDBImage, AdvEdit, AdvEdBtn, JvExComCtrls, JvComCtrls,
  AdvListV, JvMemoryDataset, CheckLst, AdvSmoothButton, JvComputerInfoEx,
  OleCtrls, AcroPDFLib_TLB, JvExDBGrids, JvDBGrid, JvDBUltimGrid, DateUtils,
  pngimage,ShellAPI, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  ToolPanels, StrUtils, AdvMoneyEdit,ClientModuleUnit1, cxGraphics, cxControls,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Unit2, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxCheckBox, cxDBEdit, cxButtons;

Type
    TCargoInf = ^TnCargoInf;
    TnCargoInf = Record
    Idcargo: integer;
 end;

Type
    TCartaInfLab = ^TNCartaInfLab;
    TNCartaInfLab = Record
    IdDocumentosRecomendacion : Integer;
    Idcargo: integer;
    NombreArchivo : String;
  end;

Type
    TCartaInfPer = ^TNCartaInfPer;
    TNCartaInfPer = Record
    IdDocumentosRecomendacion : Integer;
    Idcargo: integer;
    NombreArchivo : String;
  end;

type TTipoDFecha=(fdkCreado, fdkUltimaModificacion, fdkUltimoAcceso);

type TFileDateKind=(fdkCreated, fdkLastModified, fdkLastAccessed);

type

  TFrmFichaPersonal = class(TForm)
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Panel18: TPanel;
    GroupBox1: TGroupBox;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    DBAPaterno: TDBEdit;
    DBEdit4: TDBEdit;
    DBCurp: TDBEdit;
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    JvLabel20: TJvLabel;
    DBGrupoSanguineo: TDBEdit;
    JvLabel22: TJvLabel;
    DBTelefono: TDBEdit;
    JvLabel23: TJvLabel;
    DBRFC: TDBEdit;
    JvLabel26: TJvLabel;
    TabSheet7: TTabSheet;
    PageControl4: TPageControl;
    TabSheet8: TTabSheet;
    cdDoctosPostulante: TClientDataSet;
    dsDoctosPostulante: TDataSource;
    DBAmaterno: TDBEdit;
    JvLabel28: TJvLabel;
    GroupBox2: TGroupBox;
    DBEditCalle: TDBEdit;
    DBEditNumero: TDBEdit;
    DBEditColonia: TDBEdit;
    DBEditMunicipio: TDBEdit;
    DBEditCiudad: TDBEdit;
    DBEditEstado: TDBEdit;
    DBEditPais: TDBEdit;
    DBEditCP: TDBEdit;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    Timer2: TTimer;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel15: TJvLabel;
    JvDBImage1: TJvDBImage;
    Button1: TButton;
    GroupBox3: TGroupBox;
    JvLabel17: TJvLabel;
    DBEstadoCivil: TDBComboBox;
    JvLabel18: TJvLabel;
    JvLabel19: TJvLabel;
    DBSexo: TDBComboBox;
    JvLabel21: TJvLabel;
    DBFechaNacimiento: TDBDateEdit;
    JvLabel27: TJvLabel;
    DBCiudadNacimiento: TDBEdit;
    DBEstadoNacimiento: TDBEdit;
    DBPaisNacimiento: TDBEdit;
    JvLabel29: TJvLabel;
    JvLabel30: TJvLabel;
    DBNombreMadre: TDBEdit;
    DBNombrePadre: TDBEdit;
    JvLabel31: TJvLabel;
    JvLabel32: TJvLabel;
    spli: TTabSheet;
    cddatosbancarios: TClientDataSet;
    dsdatosbancarios: TDataSource;
    TabHistorial: TTabSheet;
    CdExperiencia: TClientDataSet;
    DBNombre: TDBEdit;
    Panel8: TPanel;
    BtnGrabar: tcxButton;
    Btn_Cancelar: tcxButton;
    MemPersonal: TClientDataSet;
    JvLabel33: TJvLabel;
    EdtNoInfonavit: TDBEdit;
    DBEditEMail: TDBEdit;
    JvLabel34: TJvLabel;
    BtnAgregar: tcxButton;
    JvCInfPc: TJvComputerInfoEx;
    Splitter1: TSplitter;
    groupbox12: TGroupBox;
    GroupBox11: TGroupBox;
    Panel9: TPanel;
    Panel10: TPanel;
    BtnAddDocumentos: tcxButton;
    BtnEditDocumentos: tcxButton;
    NxButton1: tcxButton;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBDateColumn3: TNxDBDateColumn;
    ListaArchivo: TClientDataSet;
    MemArchivosNuevos: TJvMemoryData;
    CdDocumentos: TClientDataSet;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel6: TPanel;
    GroupBox7: TGroupBox;
    GrdBancarios: TDBGrid;
    Panel11: TPanel;
    GroupBox4: TGroupBox;
    BtnActivar: TNxButton;
    BtnAddBancarios: TNxButton;
    BtnDeleteBancarios: TNxButton;
    BtnEditBancarios: TNxButton;
    Panel7: TPanel;
    Splitter3: TSplitter;
    GroupBox6: TGroupBox;
    GroupBox5: TGroupBox;
    Panel12: TPanel;
    Panel13: TPanel;
    tvDocumentos: TJvTreeView;
    BtnAddHistorial: TNxButton;
    BtnEditHistorial: TNxButton;
    BtnDeleteHistorial: TNxButton;
    DsEliminarDocumento: TDataSource;
    DsEliminarExperiencia: TDataSource;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    ChkInfonavit: TCheckBox;
    Buttonopen: tcxButton;
    Button3: tcxButton;
    NxButton2: TNxButton;
    DBEditContacto: TDBEdit;
    JvLabel24: TJvLabel;
    JvLabel25: TJvLabel;
    DBTelefonoContacto: TDBEdit;
    JvLabel16: TJvLabel;
    DBFactorInfonavit: TJvDBCalcEdit;
    cdPostulante: TClientDataSet;
    cdEmpleado: TClientDataSet;
    cdPersonalIMSS: TClientDataSet;
    AdvToolPanelTab1: TAdvToolPanelTab;
    Panel_Plaza: TAdvToolPanel;
    DBImss: TMaskEdit;
    cdPais: TClientDataSet;
    dsPais: TDataSource;
    cbPais: TDBLookupComboBox;
    JvLabel6: TJvLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    cdPersonalRH: TClientDataSet;
    DbDateAplicacion: TDBDateEdit;
    DbDateTermino: TDBDateEdit;
    JvLabel35: TJvLabel;
    JvLabel36: TJvLabel;
    jvlbl1: TJvLabel;
    btn1: TImage;
    btn2: TImage;
    btn3: TImage;
    cbbAplica: TcxComboBox;
    Image4: TImage;
    DBEdit1: TDBEdit;
    pnlContrato: TPanel;
    JvLabel37: TJvLabel;
    CxCbbContratos: TcxDBLookupComboBox;
    dsCOntratos: TDataSource;
    dsPersonalRh: TDataSource;
    dbchkPersonalEspecial: TDBCheckBox;
    cdPersonalGeneral: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnAddDocumentosClick(Sender: TObject);
    procedure BtnEditDocumentosClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure LongitudComponentes(FieldDefs: TFieldDefs; Control: TWinControl);
    procedure NxButton15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure BtnAddBancariosClick(Sender: TObject);
    procedure BtnAddHistorialClick(Sender: TObject);
    procedure BtnEditHistorialClick(Sender: TObject);
    procedure BtnDeleteHistorialClick(Sender: TObject);
    procedure GrdBancariosDblClick(Sender: TObject);
    procedure GrdDocumentosDblClick(Sender: TObject);
    procedure BtnEditBancariosClick(Sender: TObject);
    procedure BtnDeleteBancariosClick(Sender: TObject);
    procedure BtnActivarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure tvDocumentosChange(Sender: TObject; Node: TTreeNode);
    procedure tvDocumentosDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ChkInfonavitClick(Sender: TObject);
    procedure BtnAgregarClick(Sender: TObject);
    procedure cdPersonalAfterEdit(DataSet: TDataSet);
    procedure FormDblClick(Sender: TObject);
    procedure cdDoctosPostulanteAfterScroll(DataSet: TDataSet);
    procedure NextDBGrid1DblClick(Sender: TObject);
    procedure ButtonopenClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel_PlazaExit(Sender: TObject);
    procedure DBImssChange(Sender: TObject);
    procedure GrdBancariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure validarDatos(rfc, curp, nss, ctabancaria, campoMensaje, valor:string);
    procedure DBTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure DBTelefonoContactoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditCPKeyPress(Sender: TObject; var Key: Char);
  private
    PuedeCerrar: Boolean;
    cdContratosRH: TClientDataSet;
    CompDocumento,CompRecomendacion: TAcroPDF;
    Veces: Integer;
    ClickAgregar : Boolean;
    bForzar: Boolean;
    EndShow : Boolean;
    FechaServidor: TDateTime;
    Salario: String;
    Factor: String;
    SalarioDiario: String;
    SalarioIntegrado: String;
    IdCargo: Integer;
    hayCambios: Boolean;
    function tieneCambios(var Dataset: TClientDataSet): Boolean;
    function cambiarFechaFichero(const FileName: string; FileDate: TDateTime;
      SpecificFileDate: TFileDateKind): boolean;
    function ObtenerFechaArchivo(const NombreArchivo: string;
      out FechaResult: TDateTime; TipoFechaObtener: TTipoDFecha): boolean;
    procedure EnableSysCloseItem(Handle: HWND; Enable: Boolean);
    procedure CrearCompDocumento(Padre: Twincontrol;MuestraError:Boolean = True);
    procedure CargarDocumento(PathPdf: string);
    procedure LimpiarCompDocumento;
    procedure CargarCompRecomendacion(PathPdf: string);
    procedure CrearCompRecomendacion(Padre: Twincontrol;MuestraError:Boolean = True);
    procedure LimpiarCompRecomendacion;
    procedure BorrarArchivos(Ruta: string);
    Const LocValor: Array[False..True] of Integer = (0, 1);
    procedure CagarBuscarPostulante(valorfiltrar : Integer);
    procedure DocumentosATreeView;
    procedure ObligarSalir;
    procedure LeerDatos;
    function VerificaCambiosHechos: Boolean;
  public
    datosRepetidos : Boolean;
    regRH: Boolean;
    IdPersonal: Integer;
    CodigoPersonal: String;
    IdPostulante: Integer;
    IdPlaza: Integer;
    IdPlazaDetalle: Integer;
    TituloCargo: String;
    Codigo: String;
    CambiosHechos : Boolean;
    Resultado : integer;
    Abrev: String;
    procedure guardarenRH;

  end;

var
  FrmFichaPersonal: TFrmFichaPersonal;

implementation

uses
   xDatabase, UTFrmPersonal, UTFrmSolicitaPersonal,
  UTFrmCatalogoBancos, UTFrmCargos, UTFrmDepartamentos, UTFfrmAltaModDocumentos,
  UTFrmCatalogoSalarios, UTFrmCargaImagen, UtFrmAltaExperiencia,
  UTFrmDatosBancarios, UTFrmAltaModDocumentos, UTFrmPais,
  UtfrmAltaDocumentosApirante, UTFrmNuevaPlazaParaPersonal;

{$R *.dfm}

function DigitoVerificador(Cadena: String): String;
var
  Arreglo,
  Resultado, i: Integer;
  Valor: Extended;
begin
  Try
    if Length(Cadena) <> 10 then
      raise Exception.Create('');

    // Verificar si la cadena es completamente numérica
    Try
      Valor := StrToFloat(Cadena);
    Except
      raise Exception.Create('');
    End;

    // Calcular el dígito verificador del número de IMSS
    Resultado := 0;
    for i := 1 to 10 do
    begin
      Try
        Arreglo := StrToInt(Cadena[i]);
        if i Mod 2 = 0 then
          Arreglo := Arreglo * 2;

        if Arreglo > 9 then
          Arreglo := (Arreglo - 10) + 1;

        Resultado := Resultado + Arreglo;
      Except
        raise Exception.Create('');
      End;
    end;

    // Buscar el multiplo de 10 superior inmediato para realizar la resta
    if Resultado Mod 10 = 0 then
      Resultado := 0
    else
      Resultado := (((Resultado Div 10) + 1) * 10) - Resultado;

    Result := Trim(IntToStr(Resultado));
  Except
    Result := '';
  End;
end;

procedure TFrmFichaPersonal.ObligarSalir;
begin
  bForzar := True;
  Close;
  bForzar := False;
end;

procedure TFrmFichaPersonal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    CancelarBloqueo(cdPostulante,IdPostulante);

    if (CompDocumento <> nil) or (Assigned(CompDocumento)) then
      FreeAndNil(CompDocumento);

    if (CompRecomendacion <> nil) or (Assigned(CompRecomendacion)) then
      FreeAndNil(CompRecomendacion);

    Timer2.Enabled := False;

    if cdPersonal.State in [dsInsert, dsEdit] then
      cdPersonal.Cancel;

    if cdDoctosPostulante.State In [dsInsert, dsEdit] then
      cdDoctosPostulante.Cancel;

    if cddatosbancarios.State In [dsInsert, dsEdit] then
      cddatosbancarios.Cancel;

    if Assigned(FrmNuevaPlazaParaPersonal) then
    begin
      FrmNuevaPlazaParaPersonal.Free;
      FrmNuevaPlazaParaPersonal := Nil;
    end;
  finally
    //if EnTransaccion then
      //CancelarTransaccion;

//    CancelarBloqueo(cdPostulante, cdPostulante.FieldByName('idpostulante').AsInteger);
    CancelarBloqueo(cdPersonal, IdPersonal);
    EliminarConjunto([cdPersonal,cdDoctosPostulante,cddatosbancarios,CdExperiencia,cdPais]);

    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\');

    Action := caFree;
  end;
end;

procedure TFrmFichaPersonal.BorrarArchivos(Ruta: string);
var
  SR: TSearchRec;
begin
  if FindFirst(Ruta + '*.*', $23 , SR)= 0 then
   repeat
     DeleteFile(Ruta+'\'+SR.Name);
   until FindNext(SR) <> 0;
end;

procedure TFrmFichaPersonal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if Not bForzar then
  Try
//    if cdPersonal.State in [dsInsert, dsEdit] then
//      CambiosHechos := VerificaCambiosHechos;
//
//    if (CambiosHechos=True) and (cdPersonal.State in [dsInsert, dsEdit]) then
//      case InteliDialog.ShowModal('Existen cambios pendientes de ser grabados.', '¿Desea grabar los datos antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
//        mrYes: BtnGrabar.Click;
//
//        mrNo: begin
//          cdPersonal.Cancel;
//          cdDoctosPostulante.Cancel;
//          cdDatosBancarios.Cancel;
//          CanClose := True;
//        end;
//
//        mrCancel: CanClose := False;
//      end;
  Except
    on e:exception do
    begin
      CanClose := True;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmFichaPersonal.FormCreate(Sender: TObject);
begin
  IdPersonal := -9;
  Codigo := '';
  CambiosHechos := False;
  Resultado := mrCancel;
  EndShow := False;
  hayCambios := true;
  EnableSysCloseItem(self.Handle, false);
end;

procedure TFrmFichaPersonal.FormDblClick(Sender: TObject);
begin
  if Self.WindowState = wsNormal  then
    Self.WindowState := wsMAximized
  else
    Self.WindowState := wsNormal;
end;

procedure TFrmFichaPersonal.FormDestroy(Sender: TObject);
begin
  //FrmNuevaPlazaParaPersonal.Free;
end;

procedure TFrmFichaPersonal.LongitudComponentes(FieldDefs: TFieldDefs; Control: TWinControl);
var
  i: Integer;
  Campo: TFieldDef;
begin
  for i := 0 to Control.ControlCount -1 do
  begin
    if TypInfo.IsPublishedProp(Control.Controls[i], 'DataField') and TypInfo.IsPublishedProp(Control.Controls[i], 'MaxLength') then
    begin
      Campo := FieldDefs.Find(TDBEdit(Control.Controls[i]).DataField);
      if Assigned(Campo) then
        TDBEdit(Control.Controls[i]).MaxLength := Trunc(Campo.Size / 3);
    end;

    if TWinControl(Control.Controls[i]).ControlCount > 0 then
      LongitudComponentes(FieldDefs, TWinControl(Control.Controls[i]));
  end;
end;

procedure TFrmFichaPersonal.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  i: integer;
  NombreArchivo: String;
  FechaArchivo: TDateTime;
begin
  bForzar := False;
  ClientModule1.ComponentColor(self);
  //PFondoDoc.Color:=cl3DDkShadow;
  //PFondoPdf.Color:=cl3DDkShadow;
  pagecontrol1.Visible := False;
  MemArchivosNuevos.Open;
  Try
    try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;



      // Crear Contenedor para el detalle del Personal
      if Not CrearConjunto(cdPersonal, 'nuc_personal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal']);


      // Crear Contenedor para el detalle del Postulante
      {if Not CrearConjunto(cdPostulante, 'rhu_postulante', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Postulante']);
      }
      if Not CrearConjunto(cdPersonalIMSS, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['IMSS por Personal']);

      // Crear contenedor para los documentos del postulante
      if Not CrearConjunto(cdDoctosPostulante, 'rhu_docxpostulante', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos de Postulante']);

      // Crear contenedor para los datos bancarios del postulante
      if Not CrearConjunto(cddatosbancarios, 'rhu_datosbancariosxpersonal', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Datos Bancarios del Postulante']);

      //Crear contenedor para los documentos de experiencia
      if Not CrearConjunto(CdExperiencia, 'rhu_documentosrecomendacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos de Recomendación']);

      //Crear contenedor para la nacionalidad
      if Not CrearConjunto(cdPais, 'nuc_pais', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Paises']);
      cdPais.Open;

      if cdPais.RecordCount = 0 then
        raise InteligentException.CreateByCode(11, ['Catálogo de Paises.' + #10 + #10 + 'No es posible continuar con la captura de personal si no se ha registrado los datos necesarios en esta tabla.']);


    finally
      Screen.Cursor := Cursor;
    end;

    LeerDatos;    // Leer datos del postulante solicitado

    FechaServidor := ServidorFechaHora(0);

    Pagecontrol1.ActivePageIndex:=0;

    DBImssChange(DBImss);

    if hayCambios = False then
      BtnGrabar.Enabled := False
    else
      BtnGrabar.Enabled := True;

    //Para que pueda replicar en Rh se asignar un contrato para poder ser visible
    //En el formulario de Rh
    if (form2.cdConfiguracionAcceso.fieldByName('replicarRH').asString = 'Si') then
    Try

      pnlContrato.Visible :=  (cdPersonal.State = dsInsert) or (cdPersonal.State = dsEdit);

      if Assigned(cdContratosRH) then
        cdContratosRH.Destroy;

      cdContratosRH := TClientDataSet.Create(self);

      if not CrearConjunto(cdContratosRH, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Organizacion']);

      if not CargarDatosFiltrados(cdContratosRH, 'Padre', [-5]) then
        raise InteligentException.CreateByCode(6, [ 'Organizacion', 'IdOrganizacion', '-5']);

      if cdContratosRH.Active then
        cdContratosRH.Refresh
      else
        cdContratosRH.Open;

      if cdContratosRH.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No hay contratos registrados en el sistema de Recursos Humanos.']);

      dsCOntratos.DataSet := cdContratosRH;

      if cdPersonalRH.ProviderName = '' then
        if not CrearConjunto(cdPersonalRH,'erp_empleados', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['erp_Empleados']);

      if cdPersonal.State in [dsInsert] then
      begin
        if not CargarDatosFiltrados(cdPersonalRH, 'sidEmpleado',[-9]) then
          raise InteligentException.CreateByCode(11, [' al filtrar por ficha']);
      end
      else if cdPersonal.State in [dsEdit] then
      begin
        if not CargarDatosFiltrados(cdPersonalRH, 'sIdEmpleado',[cdPersonal.FieldByName('codigopersonal').AsString]) then
          raise InteligentException.CreateByCode(11, [' al filtrar por ficha']);
      end;


      if cdPersonalRH.Active then
        cdPersonalRH.Refresh
      else
        cdPersonalRH.Open;

//      if cdPersonalRH.RecordCount = 0 then
//      begin
//        InteliDialog.ShowModal('Aviso', 'Se está intentando editar un registro replicado, el cual no se encuentra en otra. Para proceder a realizar esta operación es necesario tener ambos registros.', mtWarning, [mbOK], 0);
//        Self.Close;
//      end;

      if cdPersonal.State = dsInsert then
        cdPersonalRH.Append
      else
        cdPersonalRH.Edit;

    except
      on e: Exception do
      begin
        ShowMessage(e.Message);
        dsCOntratos := Nil;
      end;
    End;

    //EndShow := True;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmFichaPersonal.NextDBGrid1DblClick(Sender: TObject);
begin
  BtnEditDocumentos.Click;
end;

procedure TFrmFichaPersonal.NxButton15Click(Sender: TObject);
begin
  close;
end;

procedure TFrmFichaPersonal.NxButton1Click(Sender: TObject);
var
  CdEliminarDocumento : TClientDataset;
begin
  if cdDoctosPostulante.RecordCount < 1 then
    Exit;

  try
    self.SendToBack;
    if InteliDialog.ShowModal('Eliminacion de Documento','Usted va a eliminar un documento de un Aspirante, ¡Realmente desea eliminarlo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
    try
      CdEliminarDocumento := TClientDataset.Create(nil);
      if Not CrearConjunto(CdEliminarDocumento, 'rhu_docxpostulante', ccupdate) then
        raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
      if not CargarDatosFiltrados(CdEliminarDocumento,'idpostulante,iddocxpostulante',[cdDoctosPostulante.FieldByName('idpostulante').asinteger, cdDoctosPostulante.FieldByName('iddocxpostulante').asinteger]) then
        raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);
      CdEliminarDocumento.Open;
      CdEliminarDocumento.Delete;
      CdEliminarDocumento.ApplyUpdates(-1);
      cdDoctosPostulante.Refresh;
      if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
        CrearCompDocumento(GroupBox12);
      CargarDocumento(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
      cdDoctosPostulante.FieldByName('IdDocumento').AsString+'.pdf');
      {AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
      cdDoctosPostulante.FieldByName('IdDocumento').AsString+'.pdf');
      //AcroPdf1.show;   }
    finally
      if assigned(CdEliminarDocumento) then
      begin
        EliminarConjunto(CdEliminarDocumento);
        CdEliminarDocumento.Free;
      end;
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al eliminar documento del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;

{    try
      if InteliDialog.ShowModal('AVISO','Va a eliminar uno de los documentos presentado por esta persona.', '¿Realmente desea eliminar el documento seleccionada?', mtInformation,[mbYes, mbNo], 0) = mrNo then
        raise InteligentWarning.Create('');

      if cdDoctosPostulante.RecordCount < 1 then
        raise InteligentException.CreateByCode(26, ['Documentos']);

      BorrarRegistro('rhu_docxpostulante', [cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]);
      CambiosHechos:=true;
      cdDoctosPostulante.Refresh;
    except
      on e:InteligentWarning do
      begin
        ;
      end;

      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:exception do
      InteliDialog.ShowModal('Error al eliminar documento del postulante.', e.Message, mtInformation, [mbOk], 0);

    end;}
end;

procedure TFrmFichaPersonal.NxButton2Click(Sender: TObject);
begin
  if Assigned(CompRecomendacion) and (CompRecomendacion <> nil)  then
  begin
    ShellExecute(self.Handle,nil,PChar(CompRecomendacion.src),'','',SW_SHOWNORMAL)
  end;
end;

procedure TFrmFichaPersonal.BtnAddDocumentosClick(Sender: TObject);
var
  CdUptDocumentos: TClientDataSet;
begin
  try
    try
      Application.CreateForm(TfrmAltaDocumentosApirante, frmAltaDocumentosApirante);

      CdUptDocumentos := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(CdUptDocumentos, 'rhu_docxpostulante', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
        try

          if not CargarDatosFiltrados(CdUptDocumentos,'idpostulante',[-9]) then
            raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);

          CdUptDocumentos.Open;

          CdUptDocumentos.Append;
          CdUptDocumentos.FieldByName('IdDocxPostulante').AsInteger :=0;
          CdUptDocumentos.FieldByName('idpostulante').AsInteger := cdPersonal.FieldByName('idpostulante').asinteger;
          CdUptDocumentos.FieldByName('fechaexpedicion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechavigencia').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechaaplicacion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('FechaMovimiento').AsDateTime:=now;
          CdUptDocumentos.FieldByName('Activo').AsString := 'Si';
          frmAltaDocumentosApirante.dsDatos.DataSet := CdUptDocumentos;
          frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;
          frmAltaDocumentosApirante.DsDocumentos.DataSet := CdDocumentos;
          frmAltaDocumentosApirante.DsPostulante.DataSet := cdPersonal;
          frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;

          self.SendToBack;
          frmAltaDocumentosApirante.BringToFront;

          frmAltaDocumentosApirante.ShowModal;
          if frmAltaDocumentosApirante.Resultado=mrOk then
          begin
            CambiosHechos:=true;
            cdDoctosPostulante.Refresh;
            cdDoctosPostulante.Locate('IdDocxPostulante', frmAltaDocumentosApirante.LastId, []);

            if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
              CrearCompDocumento(GroupBox12);
            CargarDocumento(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
            {
            AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
            AcroPdf1.show;      }
          end;

        finally
          EliminarConjunto(CdUptDocumentos);
        end;

      finally
        if Assigned(CdUptDocumentos) then
          FreeAndNil(CdUptDocumentos);
      end;

    finally
      frmAltaDocumentosApirante.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de documento del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de documento del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaPersonal.BtnEditBancariosClick(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  if cddatosbancarios.RecordCount < 1 then
    Exit;

  try
    try

//      if cddatosbancarios.RecordCount < 1 then
//        raise InteligentConnection.CreateByCode(26, ['Cuentas bancarias']);

      application.CreateForm(TFrmDatosBancarios, FrmDatosBancarios);

      cdUptCuentas := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptCuentas, 'rhu_datosbancariosxpersonal', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Cuentas bancarias por postulante']);
        try

          if not CargarDatosFiltrados(cdUptCuentas,'iddatosbancariosxpersonal',[cddatosbancarios.FieldByName('iddatosbancariosxpersonal').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['Cuentas bancarias por postulante']);

          cdUptCuentas.Open;

          if cdUptCuentas.RecordCount <> 1 then
            raise InteligentException.Create('El Registro no se pudo localizar.');

          cdUptCuentas.Edit;
          FrmDatosBancarios.dsDatos.DataSet := cdUptCuentas;
          FrmDatosBancarios.ShowModal;
          if FrmDatosBancarios.Resultado = mrok then
          begin
             //if EnTransaccion then
              //ConcretarTransaccion;

             CambiosHechos:=true;
          end;
          cddatosbancarios.Refresh;

        finally
          EliminarConjunto(cdUptCuentas);
        end;

      finally
        if Assigned(cdUptCuentas) then
          FreeAndNil(cdUptCuentas);
      end;

    finally
      FrmDatosBancarios.Free;
    end;

  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al editar la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al editar la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmFichaPersonal.BtnEditDocumentosClick(Sender: TObject);
var
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  CdUptDocumentos: TClientDataSet;
  NombreArchivo : string;
begin
  if cdDoctosPostulante.RecordCount < 1 then
    Exit;

  try
    try

      application.CreateForm(TfrmAltaDocumentosApirante, frmAltaDocumentosApirante);

      CdUptDocumentos := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(CdUptDocumentos, 'rhu_docxpostulante', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
        try

          if not CargarDatosFiltrados(CdUptDocumentos,'iddocxpostulante,idpostulante',[cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger, cdDoctosPostulante.FieldByName('idpostulante').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);

          CdUptDocumentos.Open;

          if CdUptDocumentos.RecordCount <> 1 then
            raise InteligentException.Create('El Registro no se pudo localizar.');

          //generando el nombre del archivo, encaso de no existir directorio crearlo
          NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := Nombrearchivo + '\Documentos RH\';

          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo:= NombreArchivo +
          cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
          cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

          stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

          if (FileExists(NombreArchivo)) then
          begin
            if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
            begin

              //comparar fecha con el alojado
              //if FechaArchivo <> cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime then
              if FechaArchivo <> cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime then
              begin
                //si es diferente descargarlo
                TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

                //y poner la fecha original
                cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);

              end;
            end;
          end

          else
          begin
            //En cacso de no existir no comparar nada y descargarlo
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
            //y poner la fecha original
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('Fechaexpedicion').AsDateTime, fdkCreated);

          end;

          frmAltaDocumentosApirante.AcroPDF1.LoadFile(NombreArchivo);
          frmAltaDocumentosApirante.AcroPDF1.Parent.Visible := True;
          frmAltaDocumentosApirante.AcroPDF1.Show;

          CdUptDocumentos.Edit;
          CdUptDocumentos.FieldByName('FechaMovimiento').AsDateTime:=now;
          frmAltaDocumentosApirante.dsDatos.DataSet := CdUptDocumentos;
          frmAltaDocumentosApirante.EBtnDirFile.Text  := CdUptDocumentos.FieldByName('NombreArchivo').AsString;

          if fileexists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          CdUptDocumentos.FieldByName('idpostulante').AsString+'#'+CdUptDocumentos.FieldByName('IdDocxPostulante').AsString+'#'+
          CdUptDocumentos.FieldByName('IdDocumento').AsString+'.pdf') then
          //frmAltaDocumentosApirante.AcroPDF1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          //CdUptDocumentos.FieldByName('idpostulante').AsString+'#'+CdUptDocumentos.FieldByName('IdDocxPostulante').AsString+'#'+
          //CdUptDocumentos.FieldByName('IdDocumento').AsString+'.pdf');
          frmAltaDocumentosApirante.DsDocumentos.DataSet := CdDocumentos;
          frmAltaDocumentosApirante.DsPostulante.DataSet := cdPersonal;
          frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;
          //frmAltaDocumentosApirante.PFondoPdf.Visible := false;

          //frmAltaDocumentosApirante.AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          //cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
          //cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');

          //frmAltaDocumentosApirante.AcroPDF1.Show;
          self.SendToBack;
          frmAltaDocumentosApirante.BringToFront;

          frmAltaDocumentosApirante.ShowModal;
          if frmAltaDocumentosApirante.Resultado=mrOk then
          begin
            CambiosHechos:=true;
            cdDoctosPostulante.Refresh;
            cdDoctosPostulante.Locate('IdDocxPostulante', frmAltaDocumentosApirante.LastId, []);
            if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
              CrearCompDocumento(GroupBox12);
            CargarDocumento(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
            {
            AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');

            AcroPdf1.show;   }
          end;

        finally
          EliminarConjunto(CdUptDocumentos);
        end;

      finally
        if Assigned(CdUptDocumentos) then
          FreeAndNil(CdUptDocumentos);
      end;

    finally
      frmAltaDocumentosApirante.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al editar el documento del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al editar el documento del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaPersonal.BtnActivarClick(Sender: TObject);
var Upt: TClientDataSet;
  Consulta :string;
begin
  try
    if cddatosbancarios.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Datos bancarios']);

    if cddatosbancarios.FieldByName('estado').AsString = 'Activada' then
      raise InteligentException.CreateByCode(24, ['Ya está activada la cuenta']);

    Upt := TClientDataSet.Create(nil);
    try
      if not CrearConjunto(Upt, 'rhu_datosbancariosxpersonal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Datos bancarios.']);

      try

        Consulta := 'Update rhu_datosbancariosxpersonal set estado = "Inactiva" where idpostulante = '+QuotedStr(cdPersonal.FieldByName('idpostulante').AsString);
        PonerSentenciaSQL(Upt.ProviderName, Consulta);
        Upt.Execute;

        Upt.Close;

        CambiosHechos:=true;
      finally
        EliminarConjunto(Upt);
      end;

      if not CrearConjunto(Upt, 'rhu_datosbancariosxpersonal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Datos bancarios.']);
      try
        if not CargarDatosFiltrados(Upt,'Iddatosbancariosxpersonal',[cddatosbancarios.FieldByName('Iddatosbancariosxpersonal').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['Cuentas bancarias por postulante']);

        Upt.Open;

        if Upt.RecordCount <> 1 then
          raise Exception.Create('El Registro no se pudo localizar.');

        Upt.Edit;
        Upt.FieldByName('estado').AsString := 'Activada';
        CambiarVaciosANull(Upt);
        Upt.Post;
        Upt.ApplyUpdates(-1);


      finally
        EliminarConjunto(Upt);
      end;

    finally
      FreeAndNil(Upt);
    end;
    cddatosbancarios.Refresh;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    InteliDialog.ShowModal('Error al activar la cuenta bancaria del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmFichaPersonal.BtnAddBancariosClick(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  try
    try
      application.CreateForm(TFrmDatosBancarios, FrmDatosBancarios);

      cdUptCuentas := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptCuentas, 'rhu_datosbancariosxpersonal', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Cuentas bancarias por Persona']);
        try

          if not CargarDatosFiltrados(cdUptCuentas,'idpostulante',[-9]) then
            raise InteligentConnection.CreateByCode(11, ['Cuentas bancarias por Persona']);

          cdUptCuentas.Open;

          cdUptCuentas.Append;
          cdUptCuentas.FieldByName('Iddatosbancariosxpersonal').AsInteger :=0;
          if cddatosbancarios.RecordCount > 0 then
            cdUptCuentas.FieldByName('Estado').AsString := 'Inactiva'
          else
            cdUptCuentas.FieldByName('Estado').AsString := 'Activada';

          cdUptCuentas.FieldByName('idpostulante').AsInteger := cdPersonal.FieldByName('IdPersonal').asinteger;
          cdUptCuentas.FieldByName('Fechadeaplicacion').AsDateTime:=now;
          cdUptCuentas.FieldByName('Activo').AsString := 'Si';
          FrmDatosBancarios.dsDatos.DataSet := cdUptCuentas;
          FrmDatosBancarios.ShowModal;
          if FrmDatosBancarios.Resultado = mrok then
          begin
            //if EnTransaccion then
              //ConcretarTransaccion;

            CambiosHechos:=true;
          end;

          cddatosbancarios.Refresh;

        finally
          EliminarConjunto(cdUptCuentas);
        end;

      finally
        if Assigned(cdUptCuentas) then
          FreeAndNil(cdUptCuentas);
      end;

    finally
      FrmDatosBancarios.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaPersonal.BtnAddHistorialClick(Sender: TObject);
var
  cdUptExperiencia: TClientDataSet;
  Nodo, NodoAux, NodoCargo: TTreeNode;
  Lista: TStringList;
  i: integer;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

  function CalcularAntiguedadCarta(Duracion : word; Empresa : string; Descripcion : string ):string;
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
    cadena:=Empresa + ' - Antiguedad: ' + CadDura + ' - ' + Descripcion;
    Result:=Cadena;
  end;

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
  try
    try
      application.CreateForm(TFrmAltaExperiencia, FrmAltaExperiencia);

      cdUptExperiencia := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptExperiencia, 'rhu_documentosrecomendacion', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos de Recomendación']);
        try

          if not CargarDatosFiltrados(cdUptExperiencia,'iddocumentosrecomendacion',[-9]) then
            raise InteligentConnection.CreateByCode(4, ['Documentos de recomendacion']);

          cdUptExperiencia.Open;

          cdUptExperiencia.Append;
          cdUptExperiencia.FieldByName('iddocumentosrecomendacion').AsInteger :=0;
          cdUptExperiencia.FieldByName('empresa').AsString:='';
          cdUptExperiencia.FieldByName('idcargo').AsInteger :=-5;
          cdUptExperiencia.FieldByName('iddocumento').AsInteger :=-9;
          cdUptExperiencia.FieldByName('idpostulante').AsInteger := cdPersonal.FieldByName('idpostulante').asinteger;
          cdUptExperiencia.FieldByName('fechainicio').AsDateTime:= Now;
          cdUptExperiencia.FieldByName('fechatermino').AsDateTime:= Now;
          cdUptExperiencia.FieldByName('activo').AsString:= 'si';
          cdUptExperiencia.FieldByName('tipo').AsString:= 'Laboral';
          cdUptExperiencia.FieldByName('FechaMovimiento').AsDateTime:= Now;
          FrmAltaExperiencia.dsDatos.DataSet := cdUptExperiencia;
          FrmAltaExperiencia.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;

          self.SendToBack;
          FrmAltaExperiencia.BringToFront;

          FrmAltaExperiencia.ShowModal;
          //Agregar Documento al alrbol una ves agregado.
          if FrmAltaExperiencia.Resultado=mrOk then
          begin
            CdExperiencia.Refresh;
            //Si es personal hago un locate y agrego el documento.
            if cdUptExperiencia.FieldByName('Tipo').AsString='Personal' then
            begin
               CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
//               CdExperiencia.Locate('IdDocumentosRecomendacion', IdPostulante,[]);
               new(InfcartaPer);
               InfcartaPer^.IdDocumentosRecomendacion := IdPersonal;
               InfcartaPer^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;

                for i:=0 to (TvDocumentos.Items.Count - 1) do
                begin
                  if (TvDocumentos.Items[i].Level=0) and (TvDocumentos.Items[i].Text='Personal') then
                  begin
                    NodoAux:=TvDocumentos.Items[i];
                  end;
                end;

               Nodo := tvDocumentos.Items.AddChildObject(NodoAux, cdExperiencia.FieldByName('Descripcion').AsString, InfcartaPer);
               Nodo.ImageIndex := 8;
               Nodo.SelectedIndex := 8;
               Nodo.StateIndex := 8;
               Nodo.ExpandedImageIndex := 8;
               Nodo.Expand(True);
            end
            else
            begin
              //Recorro mi arbol para localizar el cargo del nuevo documento ingresado
              for i:=0 to (TvDocumentos.Items.Count - 1) do
              begin
                NodoAux:=ConocerNivelInicial(TvDocumentos.Items[i]);
                if (TvDocumentos.Items[i].Level=1) and (NodoAux.Level=0) and (NodoAux.Text='Profesional') and (cdUptExperiencia.FieldByName('idcargo').AsInteger = TCargoInf(TvDocumentos.Items[i].Data).Idcargo)   then
                begin
                  NodoCargo:=TvDocumentos.Items[i];
                end;
              end;

              //Verifico si lo encontre, entonces incrementeo el periodo de experiencia
              //Para agregar una carta de recoemndacion nueva
              if assigned(Nodocargo) then
              begin
               CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
                //CdExperiencia.Locate('IdDocumentosRecomendacion', IdPostulante,[]);
                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
              end
              else
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
                //CdExperiencia.Locate('IdDocumentosRecomendacion', IdPostulante,[]);
                New(InfCargo);
                InfCargo^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                NodoCargo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[0], CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString), InfCargo);
                NodoCargo.ImageIndex := 9;
                NodoCargo.SelectedIndex := 9;
                NodoCargo.StateIndex := 9;
                NodoCargo.ExpandedImageIndex := 9;
                NodoCargo.Expand(True);

                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;

                //###Insertar direccion de archivo #############################
                //al infcartalab insertar una variable de nombre de archivo que guarde al direccion del archivo
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                Nodo.ImageIndex := 7;
                Nodo.SelectedIndex := 7;
                Nodo.StateIndex := 7;
                Nodo.ExpandedImageIndex := 7;
              end;
            end;
            CambiosHechos:=true;
          end;

        finally
          EliminarConjunto(cdUptExperiencia);
        end;

      finally
        if Assigned(cdUptExperiencia) then
          FreeAndNil(cdUptExperiencia);
      end;

    finally
      FrmAltaExperiencia.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de historial del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de historial del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaPersonal.BtnAgregarClick(Sender: TObject);
var
  Estado: TDataSetState;
  i:Integer;
  campo, strFechaServidor: string;
  Cursor: TCursor;
  TipoInfonavit: string;

function ArmaNombre(Nombre, Paterno, Materno: String): String;
var
  Resultado: String;
begin
  Resultado := '';

  Resultado := Resultado + Trim(Nombre);
  if Trim(Resultado) <> '' then
    Resultado := Resultado + ' ';
  Resultado := Resultado + Trim(Paterno);

  if Trim(Resultado) <> '' then
    Resultado := Resultado + ' ';
  Resultado := Resultado + Trim(Materno);

  Result := Resultado;
end;

begin
  try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      datosRepetidos := False;

      {$REGION 'VALIDAR CURP, RFC, NSS, CTABANCARIA'}
         validarDatos('-1', DBCurp.Text, '-1', '-1', 'CURP', DBCurp.Text);   //Valida la CURP
         if datosRepetidos then
         begin
           PageControl1.ActivePageIndex := 0;
           DBCurp.SetFocus;
           Exit;
         end;

         validarDatos(DBRFC.Text, '-1', '-1', '-1', 'RFC', DBRFC.Text);   //Valida el RFC
         if datosRepetidos then
         begin
           PageControl1.ActivePageIndex := 0;
           DBRFC.SetFocus;
           Exit;
         end;

         validarDatos('-1', '-1', DBEdit4.Text, '-1', 'NSS', DBEdit4.Text);   //Valida el Numero de Seguro Social(NSS)
         if datosRepetidos then
         begin
           PageControl1.ActivePageIndex := 0;
           dbImss.SetFocus;
           Exit;
         end;
      {$ENDREGION}

      {$REGION 'VALIDACIONES'}

      if (Form2.cdConfiguracionAcceso.FieldByName('replicarRH').asString = 'Si') and (CxCbbContratos.ItemIndex < 0) and (cdPersonal.state = dsInsert) then
      begin
        if CxCbbContratos.CanFocus then
          CxCbbContratos.SetFocus;

        raise InteligentException.CreateByCode(18, ['Contrato']);
      end;

      if CxCbbContratos.ItemIndex = -1 then
      begin
        PageControl1.ActivePageIndex := 0;
        CxCbbContratos.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Contrato']);
      end;


      if Length(Trim(DBNombre.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBNombre.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Nombre del postulante']);
      end;

      if Length(trim(DBAPaterno.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBAPaterno.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Apellido Paterno']);
      end;

      if Length(trim(DBAmaterno.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBAmaterno.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Apellido Paterno']);
      end;

      if Length(trim(DBIMSS.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBIMSS.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Número de IMSS']);
      end;

      if Length(trim(DBTelefono.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBTelefono.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Teléfono']);
      end;

      if Length(trim(DBEditeMail.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBEditeMail.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Correo Electrónico']);
      end;

      if Length(trim(DBCurp.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBCurp.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['C.U.R.P.']);
      end;

      if Length(trim(DBEstadoCivil.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBEstadoCivil.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Estado Civil']);
      end;

      if Length(trim(DBRFC.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBRFC.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Reg. Fed. Caus.']);
      end;

      if Length(trim(DBSexo.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBSexo.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Sexo']);
      end;
      (*
      if Length(trim(DBEditCalle.Text))= 0 then
      begin
        DBEditCalle.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Calle']);
      end;

      if Length(trim(DBEditNumero.Text))= 0 then
      begin
        DBEditNumero.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Número']);
      end;

      if Length(trim(DBEditColonia.Text))= 0 then
      begin
        DBEditColonia.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Colónia']);
      end;

      if Length(trim(DBEditCP.Text))= 0 then
      begin
        DBEditCP.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Código Postal']);
      end;

      if Length(trim(DBEditCiudad.Text))= 0 then
      begin
        DBEditCiudad.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Ciudad']);
      end;

      if Length(trim(DBEditMunicipio.Text))= 0 then
      begin
        DBEditMunicipio.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Municipio']);
      end;

      if Length(trim(DBEditEstado.Text))= 0 then
      begin
        DBEditEstado.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Estado']);
      end;

      if Length(trim(DBEditPais.Text))= 0 then
      begin
        DBEditPais.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Pais']);
      end;
      *)
      if Length(trim(DBFechaNacimiento.Text))= 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DBFechaNacimiento.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Fecha de Nacimiento']);
      end;

      // ***********************************************
      // Verificar la lógica de la fecha capturada (Solo informativo para que no la cague el usuario
      strFechaServidor := DateToStr(FechaServidor);

      if (FechaServidor < DbFechaNacimiento.Date) and (InteliDialog.ShowModal('La fecha de Nacimiento capturada parece indicar que esta persona no ha nacido todavía.', 'Esto ha sido determinado en base a que la fecha que tiene registrada el servidor de la base de datos es ' + strFechaServidor + ' y la fecha capturada es ' + DBFechaNacimiento.Text + #10 + #10 + '¿Está seguro que desea registrar los datos con esta fecha de nacimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
      begin
        PageControl1.ActivePageIndex := 0;
        DBFechaNacimiento.SetFocus;
        raise InteligentConnection.Create('*');
      end;

      if (IncYear(Today, -18) < DbFechaNacimiento.Date) and (InteliDialog.ShowModal('La fecha de nacimiento capturada parece indicar que esta persona es menor de edad.', 'Esto ha sido determinado por que la fecha que tiene registrada el servidor de la base de datos es ' + strFechaServidor + ' y la fecha capturada es ' + DBFechaNacimiento.Text + #10 + #10 + '¿Está seguro que desea registrar los datos con esta fecha de nacimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
      begin
        PageControl1.ActivePageIndex := 0;
        DBFechaNacimiento.SetFocus;
        raise InteligentConnection.Create('*');
      end;
      // Termina verificación de lógica de fechas
      // ***********************************************

      if Length(Trim(cdPersonal.FieldByName('Correo').AsString)) = 0 then
      begin
        PageControl1.ActivePageIndex := 0;
        DbEditEMail.SetFocus;
        raise InteligentException.CreateByCode(18, ['Correo electrónico']);
      end;

      (*
      if Length(trim(DBCiudadNacimiento.Text))= 0 then
      begin
        DBCiudadNacimiento.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Ciudad de Nacimiento']);
      end;

      if Length(trim(DBEstadoNacimiento.Text))= 0 then
      begin
        DBEstadoNacimiento.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Estado de Nacimiento']);
      end;

      if Length(trim(DBPaisNacimiento.Text))= 0 then
      begin
        DBPaisNacimiento.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Pais de Nacimiento']);
      end;

      if Length(trim(DBNombreMadre.Text))= 0 then
      begin
        DBNombreMadre.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Nombre de la Madre']);
      end;

      if Length(trim(DBNombrePadre.Text))= 0 then
      begin
        DBNombrePadre.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Nombre del Padre']);
      end;
      *)
      Estado := cdPersonal.State;

      cdPersonal.FieldValues['FechaNacimiento'] := ClientModule1.DatetoStrSql(DBFechaNacimiento.Date);
      {$ENDREGION 'VALIDACIONES'}
      if ChkInfonavit.Checked then
      begin
        // Verificar los valores del infonavit
        if Trim(cdPersonal.FieldByName('NumeroInfonavit').AsString) = '' then
        begin
          PageControl1.ActivePageIndex := 0;
          EdtNoInfonavit.SetFocus;
          raise InteligentWarning.CreateByCode(18, ['Número de INFONAVIT']);
        end;

        if cdPersonal.FieldByName('FactorInfonavit').AsFloat = 0 then
        begin
          PageControl1.ActivePageIndex := 0;
          DBFactorInfonavit.SetFocus;
          raise InteligentWarning.CreateByCode(18, ['Factor de INFONAVIT']);
        end;

        if DbDateAplicacion.Date > DbDateTermino.Date then
        begin
          PageControl1.ActivePageIndex := 0;
          DbDateAplicacion.SetFocus;
          raise InteligentWarning.CreateByCode(24, ['La fecha de inicio de aplicación de Infonavit no debe ser mayor a la fecha de término.']);
        end;

        if DbDateAplicacion.Date = DbDateTermino.Date then
        begin
          //DbDateAplicacion.SetFocus;
          if InteliDialog.ShowMOdal('Aviso','La fecha de inicio y término son idénticas. ¿Desea continuar?', mtinformation, [mbYes, MbNO], 0) = mrNO then
            Exit;
        end;

        if cbbAplica.text = '' then
          raise InteligentWarning.CreateByCode(18, ['Aplica']);

        cdPersonal.FieldByName('Infonavit').AsString := 'Si';
        if cbbAplica.ItemIndex = 0 then
            TipoInfonavit := 'Fijo'
          else if  cbbAplica.ItemIndex = 1 then
            TipoInfonavit := 'Salario'
          else if  cbbAplica.ItemIndex = 2 then
            TipoInfonavit := 'SalMinZona'
          else if cbbAplica.ItemIndex = -1 then
            TipoInfonavit := 'SalMinZona';

        cdPersonal.FieldByName('tAplicacionInfonavit').AsString := TipoInfonavit;
      end
      else
      begin
        cdPersonal.FieldByName('Infonavit').AsString := 'No';
        cdPersonal.FieldByName('NumeroInfonavit').AsString := '';
        cdPersonal.FieldByName('FactorInfonavit').AsFloat := 0;
        cdPersonal.FieldByName('AplicacionInfonavit').Clear;
        cdPersonal.FieldByName('TerminoInfonavit').Clear;
        cdPersonal.FieldByName('tAplicacionInfonavit').Clear;
      end;
      {$REGION 'POSTULANTES'}
      // Llenar los datos del postulante
      {cdPostulante.FieldByName('Nombres').AsVariant := cdPersonal.FieldByName('Nombres').AsVariant;
      cdPostulante.FieldByName('APaterno').AsVariant := cdPersonal.FieldByName('APaterno').AsVariant;
      cdPostulante.FieldByName('AMaterno').AsVariant := cdPersonal.FieldByName('AMaterno').AsVariant;
      cdPostulante.FieldByName('NumeroSeguroSocial').AsVariant := cdPersonal.FieldByName('NumeroSeguroSocial').AsVariant;
      cdPostulante.FieldByName('CURP').AsVariant := cdPersonal.FieldByName('CURP').AsVariant;
      cdPostulante.FieldByName('FechaAlta').AsDateTime := cdPersonal.FieldByName('FechaAlta').AsDateTime;
      cdPostulante.FieldByName('Telefono').AsVariant := cdPersonal.FieldByName('Telefono').AsVariant;
      cdPostulante.FieldByName('GrupoSanguineo').AsVariant := cdPersonal.FieldByName('GrupoSanguineo').AsVariant;
      cdPostulante.FieldByName('RFC').AsVariant := cdPersonal.FieldByName('RFC').AsVariant;
      cdPostulante.FieldByName('Contacto').AsVariant := cdPersonal.FieldByName('Contacto').AsVariant;
      cdPostulante.FieldByName('TelefonoContacto').AsVariant := cdPersonal.FieldByName('TelefonoContacto').AsVariant;
      cdPostulante.FieldByName('Calle').AsVariant := cdPersonal.FieldByName('Calle').AsVariant;
      cdPostulante.FieldByName('Numero').AsVariant := cdPersonal.FieldByName('Numero').AsVariant;
      cdPostulante.FieldByName('Colonia').AsVariant := cdPersonal.FieldByName('Colonia').AsVariant;
      cdPostulante.FieldByName('Municipio').AsVariant := cdPersonal.FieldByName('Municipio').AsVariant;
      cdPostulante.FieldByName('Ciudad').AsVariant := cdPersonal.FieldByName('Ciudad').AsVariant;
      cdPostulante.FieldByName('Estado').AsVariant := cdPersonal.FieldByName('Estado').AsVariant;
      cdPostulante.FieldByName('Pais').AsVariant := cdPersonal.FieldByName('Pais').AsVariant;
      cdPostulante.FieldByName('CP').AsVariant := cdPersonal.FieldByName('CP').AsVariant;
      cdPostulante.FieldByName('Imagen').AsVariant := cdPersonal.FieldByName('Imagen').AsVariant;

      if cdPostulante.State = dsInsert then
      begin
        cdPostulante.FieldByName('IdPlazaDetalle').AsInteger := IdPlazaDetalle;
        cdPostulante.FieldByName('IdCargo').AsInteger := IdCargo;
        cdPostulante.FieldByName('IdDepartamento').AsVariant := cdPersonal.FieldByName('IdDepartamento').AsVariant;
        cdPostulante.FieldByName('IdPlaza').AsInteger := IdPlaza;
        cdPostulante.FieldByName('Activo').AsVariant := 'Si';
      end;

      cdPostulante.FieldByName('Infonavit').AsVariant := cdPersonal.FieldByName('Infonavit').AsVariant;
      cdPostulante.FieldByName('NumeroInfonavit').AsVariant := cdPersonal.FieldByName('NumeroInfonavit').AsVariant;
      cdPostulante.FieldByName('EstadoCivil').AsVariant := cdPersonal.FieldByName('EstadoCivil').AsVariant;
      cdPostulante.FieldByName('CiudadNacimiento').AsVariant := cdPersonal.FieldByName('CiudadNacimiento').AsVariant;
      cdPostulante.FieldByName('EstadoNacimiento').AsVariant := cdPersonal.FieldByName('Estadonacimiento').AsVariant;
      cdPostulante.FieldByName('Delegacion').AsVariant := cdPersonal.FieldByName('Delegacion').AsVariant;
      cdPostulante.FieldByName('FechaNacimiento').AsVariant := cdPersonal.FieldByName('FechaNacimiento').AsVariant;
      cdPostulante.FieldByName('NombreMadre').AsVariant := cdPersonal.FieldByName('NombreMadre').AsVariant;
      cdPostulante.FieldByName('NombrePadre').AsVariant := cdPersonal.FieldByName('NombrePadre').AsVariant;
      cdPostulante.FieldByName('Sexo').AsVariant := cdPersonal.FieldByName('Sexo').AsVariant;
      cdPostulante.FieldByName('Nacionalidad').AsVariant := cdPersonal.FieldByName('Nacionalidad').AsVariant;
      cdPostulante.FieldByName('Correo').AsVariant := cdPersonal.FieldByName('Correo').AsVariant;

      CambiarVaciosANull(cdpostulante);
      cdPostulante.Post;
      cdPostulante.ApplyUpdates(-1);
      }
      {$ENDREGION 'POSTULANTES'}
      if (Estado = dsInsert) {and (TWinControl(Sender).Tag = 2)} then
      begin
        cdPersonal.FieldByName('IdPostulante').AsInteger := UltimoID;
        /// Limpiamos los valores de plaza y plazadetwalle
        cdPersonal.FieldByName('IdPlaza').Clear;
        cdPersonal.FieldByName('IdPlazaDetalle').Clear;
        CambiarVaciosANull(cdPersonal);

        /// Asinar Valores al dataset que replica en RH


        if form2.cdConfiguracionAcceso.fieldByName('replicarRH').asString = 'Si' then
          guardarenRH;

        cdPersonal.FieldByName('Activo').AsString := 'Si';
        cdPersonal.Post;
        cdPersonal.ApplyUpdates(-1);
        Resultado := mrOk;
        IdPersonal := UltimoID;

        /// Obtener el ultimo Id Registrado para editar UltimoCodigo de la ficha personal
        /// del empleado registrado en Nóminas
        if not CargarDatosFiltrados(cdPersonal, 'idpersonal',[idpersonal]) then
          raise InteligentException.CreateByCode(1,[' al filtrar por personal.']);

        if cdPersonal.Active then
          cdPersonal.Refresh
        else
          cdPersonal.Open;

        if cdPersonal.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [VarToStr(IdPersonal), 'Nuc_Personal']);

        if cdPersonalRH.State in [dsInsert] then
        begin
          cdPersonalRH.FieldByName('sIdEmpleado').AsString := cdPersonal.FieldByName('codigopersonal').AsString;
          cdPersonalRH.FieldByName('IdPersonal').asInteger := IdPersonal;
        end;
        cdPersonal.Close;

        if form2.cdConfiguracionAcceso.fieldByName('replicarRH').asString = 'Si' then
          CambiarVaciosANull(cdPersonalRH);
        cdPersonalRH.Post;
        cdPersonalRH.ApplyUpdates(-1);
        {$REGION 'PLAZA DETALLE'}
        {
        if Not CargarDatosFiltrados(cdPersonal, 'IdPersonal', [IdPersonal]) then
          raise InteligentException.CreateByCode(6, ['Personal', IdPersonal, 'Id. Personal']);
        cdPersonal.Open;
        cdPersonal.Edit;

        CodigoPersonal := Abrev + '00-P' + RightStr('000000' + IntToStr(IdPersonal), 6);

        cdPersonal.FieldByName('CodigoPersonal').AsString := CodigoPersonal;
        CambiarVaciosANull(cdPersonal);
        cdPersonal.Post;
        cdPersonal.ApplyUpdates(-1);
        ShowMessage('despues de editar el personal');
        {
        if FrmNuevaPlazaParaPersonal.cdTipoNomina.FieldByName('SalarioMultiple').AsString = 'No' then
        begin
          cdPersonalIMSS.Append;
          cdPersonalIMSS.FieldByName('IdPersonalIMSS').AsInteger := 0;
          cdPersonalIMSS.FieldByName('IdPersonal').AsInteger := IdPersonal;
          cdPersonalIMSS.FieldByName('FechaMovimiento').AsDateTime := cdPersonal.FieldByName('FechaAlta').AsDateTime;
          cdPersonalIMSS.FieldByName('FechaRegistro').AsDateTime := Now;
          cdPersonalIMSS.FieldByName('TipoMovimiento').AsString := 'Reingreso';
          cdPersonalIMSS.FieldByName('IdPlazaDetalle').AsInteger := IdPlazaDetalle;
          cdPersonalIMSS.FieldByName('SalarioDiario').AsString := Salario;
          cdPersonalIMSS.FieldByName('SalarioIntegrado').AsString := SalarioIntegrado;
          cdPersonalIMSS.FieldByName('Procesado').AsString := 'Si';

          cdPersonalIMSS.Post;
          cdPersonalIMSS.ApplyUpdates(-1);
        end;  }

        // Registrar el Id de empleado en la plaza detalle
       { CargarDatosFiltrados(FrmNuevaPlazaParaPersonal.cdPlazaDetalle, 'IdPlazaDetalle', [IdPlazaDetalle]);
        if FrmNuevaPlazaParaPersonal.cdPlazaDetalle.Active then
          FrmNuevaPlazaParaPersonal.cdPlazaDetalle.Refresh
        else
          FrmNuevaPlazaParaPersonal.cdPlazaDetalle.Open;
        FrmNuevaPlazaParaPersonal.cdPlazaDetalle.Edit;
        FrmNuevaPlazaParaPersonal.cdPlazaDetalle.FieldByName('IdPersonal').AsInteger := IdPersonal;
        FrmNuevaPlazaParaPersonal.cdPlazaDetalle.Post;
        FrmNuevaPlazaParaPersonal.cdPlazaDetalle.ApplyUpdates(-1); }
         {$ENDREGION 'PLAZA DETALLE'}
      end
      else
      begin
        CambiarVaciosANull(cdPersonal);
        if (Form2.cdConfiguracionAcceso.FieldByName('replicarRH').asString = 'Si') then
        begin
          guardarenRH;//PREPARAR LOS DATOS
          if (regRH = True) then
          try
            if cdPersonalRH.State = dsInsert then
              cdPersonalRh.FieldByName('IdPersonal').asInteger := cdPersonal.FieldByName('idPersonal').asInteger;
            cdPersonalRh.FieldByName('sidEmpleado').asString := cdPersonal.FieldByName('codigoPersonal').asString;
            CambiarVaciosANull(cdPersonalRH);

            if tieneCambios(cdPersonalRh) = True then
            begin
              cdPersonalRH.Post;
              cdPersonalRH.ApplyUpdates(-1);
            end;
          except
            on e: InteligentException do
              InteliDialog.ShowModal('Error', 'Ha ocurrido un error durante el proceso de edición del personal de Rh. Avise al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
          end;
        end;
        if tieneCambios(cdPersonal) = True then
        begin
          cdPersonal.Post;
          cdPersonal.ApplyUpdates(-1);
        end;
        Self.close;
      end;
      {$REGION 'XXXXXXX'}
     {
      if (Estado = dsInsert) and (TWinControl(Sender).Tag = 2) then
      begin
        // Si se hizo click en el botón agregar y apenas se está registrando el
        // nuevo Postulante entonces se deberá leer el registro grabado y editarlo
        // para que se proceda a agregar los demas datos del Postulante
        IdPersonal := UltimoId;
        cdPersonal.Close;

        LeerDatos;

        BtnAgregar.Caption := '&Grabar Personal'; // Cambiar la leyenda del botón
        PageControl1.TabIndex := 1;   // Seleccionar la pestaña de los documentos para continuar con la captura
      end;
      }{
      if (Estado = dsEdit) and (TWinControl(Sender).Tag = 2) then
      begin
        // Si se hizo click en el botón agregar y ya se estaban registrado los otros
        // datos del Postulante
        BtnAgregar.Caption := '&Grabar Ficha'; // Cambiar la leyenda del botón
        PageControl1.TabIndex := 1;   // Seleccionar la pestaña de los documentos para continuar con la captura

        MemArchivosNuevos.First;
        while not MemArchivosNuevos.Eof do
        begin
          MemArchivosNuevos.Delete;
        end;

        if EnTransaccion then
          ConcretarTransaccion;

        // Iniciar un nuevo registro
        IdPersonal := -9;
        cdPersonal.Close;
        cdDoctosPostulante.Close;
        cdDatosBancarios.Close;
        cdExperiencia.Close;
        DBImss.Text := '';
        JvLabel15.Caption := '-';

        LeerDatos;
      end;
        }
      {$ENDREGION 'XXXXXXX'}
      if (TWinControl(Sender).Tag = 4) then
      begin
        // Solo cerrar la ventana
        //if EnTransaccion then
          //ConcretarTransaccion;
        Close;
      end
      else
      begin
        //ConcretarTransaccion;
        //LeerDatos;
      end;
    Finally
      if (cdPersonalRH.Active) and (cdPersonalRH.State in [dsInsert, dsEdit]) then
      begin
        //cdPersonalRH.Cancel;
        //cdPersonalRH.Close;
      end;
      if (cdPersonal.Active) and (cdPersonal.State in [dsInsert, dsEdit]) then
      begin
        //cdPersonal.Cancel;
        //cdPersonal.Close;
      end;
      Screen.Cursor := Cursor;
    End;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
    begin
      //if EnTransaccion then
        //CancelarTransaccion;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      //ObligarSalir;
    end;

    on e:InteligentConnection do
      ;   // No hacer nada, solo lo uso para cambiar el flujo del programa

    on e:exception do
    begin
      //if EnTransaccion then
        //CancelarTransaccion;
      CambiosHechos:=false;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      //ObligarSalir;
    end;
  end;
end;

procedure TFrmFichaPersonal.BtnDeleteBancariosClick(Sender: TObject);
begin
  try
    if InteliDialog.ShowModal('AVISO','Va a eliminar una de las cuentas bancarias de esta persona.', '¿Realmente desea eliminar la cuenta bancaria seleccionada?', mtInformation,[mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('');

    if cddatosbancarios.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Historial']);

    BorrarRegistro('rhu_datosbancariosxpersonal', [cddatosbancarios.FieldByName('Iddatosbancariosxpersonal').AsInteger]);

    //if EnTransaccion then
      //ConcretarTransaccion;

    CambiosHechos:=true;
    cddatosbancarios.Refresh;
  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    InteliDialog.ShowModal('Error al eliminar la cuenta bancaria del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaPersonal.BtnDeleteHistorialClick(Sender: TObject);
var
  NodoAux, Nodo, Nodocargo : TTReeNode;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

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
  try
    if  InteliDialog.ShowModal('AVISO','Va a eliminar un documento de la seccion de recomendaciones', '¿Realmente desea eliminar el documento seleccionado?', mtInformation,[mbYes, mbNo], 0) = mrNo then
    raise InteligentWarning.Create('');

    NodoAux := ConocerNivelInicial(TvDocumentos.Selected);

    if ((NodoAux.Index=0) and (TvDocumentos.Selected.Level<>2))
    or ((NodoAux.Index=1) and (TvDocumentos.Selected.Level<>1) ) then
    raise Inteligentwarning.Create('');

    Nodo:=TvDocumentos.Selected;

    if CdExperiencia.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Historial']);

    BorrarRegistro('rhu_documentosrecomendacion', [CdExperiencia.FieldByName('iddocumentosrecomendacion').AsInteger]);

    CdExperiencia.Refresh;

    NodoAux:=ConocerNivelInicial(TvDocumentos.Selected);
    if NodoAux.Text='Personal' then
    begin
      Nodo.Destroy;
    end
    else
    begin
      NodoCargo:=Nodo.Parent;
      Nodo.Destroy;
        if NodoCargo.Count=0  then
          NodoCargo.Destroy
        else
        begin
          CdExperiencia.Locate('iddocumentosrecomendacion', TCargoInf(NodoCargo.Data).Idcargo, []);
          NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
        end;
    end;

    CambiosHechos:=True;
  except

    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    InteliDialog.ShowModal('Error al eliminar historial del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaPersonal.BtnEditHistorialClick(Sender: TObject);
var
  cdUptExperiencia: TClientDataSet;
  NodoAux, Nodo, Nodocargo : TTReeNode;
  TipoAnterior : string;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;
  i, IdDoc : integer;
  NombreArchivo : string;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

  function CalcularAntiguedadCarta(Duracion : word; Empresa : string; Descripcion : string ):string;
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
    cadena:=Empresa + ' - Antiguedad: ' + CadDura + ' - ' + Descripcion;
    Result:=Cadena;
  end;

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
  try
    try

      Nodo:=TvDocumentos.Selected;
      NodoAux := ConocerNivelInicial(TvDocumentos.Selected);

      if ((NodoAux.Index=0) and (TvDocumentos.Selected.Level<>2))
      or ((NodoAux.Index=1) and (TvDocumentos.Selected.Level<>1) ) then
      raise Inteligentwarning.Create('');



      if Nodo.Level=2 then
      begin
        IdDoc := TCartaInfLab(Nodo.Data).IdDocumentosRecomendacion;
        NombreArchivo := TCartaInfLab(Nodo.Data).NombreArchivo;
      end;

      if (Nodo.Level=1) and (Nodo.Index=1) then
      begin
        IdDoc := TCartaInfPer(Nodo.Data).IdDocumentosRecomendacion;
        NombreArchivo := TCartaInfPer(Nodo.Data).NombreArchivo;
      end;


      if CdExperiencia.RecordCount < 1 then
        raise InteligentConnection.CreateByCode(26, ['Historial']);

      application.CreateForm(TFrmAltaExperiencia, FrmAltaExperiencia);

      cdUptExperiencia := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptExperiencia, 'rhu_documentosrecomendacion', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos de Recomendación']);
        try
          if not CargarDatosFiltrados(cdUptExperiencia,'iddocumentosrecomendacion,idpostulante',[IdDoc, IdPersonal]) then
            raise InteligentConnection.CreateByCode(4, ['Documentos de recomendacion']);
          //if not CargarDatosFiltrados(cdUptExperiencia,'iddocumentosrecomendacion',[TCartaInfLab(Nodo.Data).IdDocumentosRecomendacion]) then
            //raise InteligentConnection.CreateByCode(4, ['Documentos de recomendacion']);

          cdUptExperiencia.Open;

          if cdUptExperiencia.RecordCount <> 1 then
            raise InteligentException.CreateByCode(13, [CdExperiencia.fieldbyname('Descripcion').AsString, 'Documentos de Recomendación']);

          cdUptExperiencia.Edit;

          FrmAltaExperiencia.dsDatos.DataSet := cdUptExperiencia;
          FrmAltaExperiencia.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;
          FrmAltaExperiencia.AcroPdf1.LoadFile(NombreArchivo);
          FrmAltaExperiencia.AcroPDF1.Show;
          FrmAltaExperiencia.PFondoPdf.Visible := false;
          self.SendToBack;
          FrmAltaExperiencia.BringToFront;
          FrmAltaExperiencia.ShowModal;

          if FrmAltaExperiencia.Resultado=mrOk then
          begin
            CdExperiencia.Refresh;
            CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);
            NodoAux:=ConocerNivelInicial(Nodo);
            if NodoAux.Text='Personal' then
            begin
              Nodo.Destroy;
            end
            else
            begin
              NodoCargo:=Nodo.Parent;
              Nodo.Destroy;
                if NodoCargo.Count=0  then
                  NodoCargo.Destroy;
            end;

            if cdUptExperiencia.FieldByName('Tipo').AsString='Personal' then
            begin
               CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);

               new(InfcartaPer);
               InfcartaPer^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
               InfcartaPer^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;
                for i:=0 to (TvDocumentos.Items.Count - 1) do
                begin
                  if (TvDocumentos.Items[i].Level=0) and  (TvDocumentos.Items[i].Text='Personal') then
                  begin
                    NodoAux:=TvDocumentos.Items[i];
                  end;
                end;

               Nodo := tvDocumentos.Items.AddChildObject(NodoAux, cdExperiencia.FieldByName('Descripcion').AsString, InfcartaPer);
               Nodo.ImageIndex := 8;
               Nodo.SelectedIndex := 8;
               Nodo.StateIndex := 8;
               Nodo.ExpandedImageIndex := 8;
               Nodo.Expand(True);
              if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
                CrearCompRecomendacion(groupbox6);
              CargarCompRecomendacion(FrmAltaExperiencia.DireccionArchivo);
               {AcroPdf2.LoadFile(FrmAltaExperiencia.DireccionArchivo);
               AcroPDF2.Show; }
            end
            else
            begin

              NodoCargo :=nil;
              for i:=0 to (TvDocumentos.Items.Count - 1) do
              begin
                NodoAux:=ConocerNivelInicial(TvDocumentos.Items[i]);
                if (TvDocumentos.Items[i].Level=1) and (NodoAux.Text='Profesional') and (cdUptExperiencia.FieldByName('idcargo').AsInteger = TCargoInf(TvDocumentos.Items[i].Data).Idcargo)   then
                begin
                  NodoCargo:=TvDocumentos.Items[i];
                end;
              end;

              if assigned(Nodocargo) then
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);
                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
                if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
                  CrearCompRecomendacion(groupbox6);
                CargarCompRecomendacion(FrmAltaExperiencia.DireccionArchivo);
                {AcroPdf2.LoadFile(FrmAltaExperiencia.DireccionArchivo);
                AcroPDF2.Show;    }
              end
              else
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);
                New(InfCargo);
                InfCargo^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;

                for i:=0 to (TvDocumentos.Items.Count - 1) do
                begin
                  if (TvDocumentos.Items[i].Level=0) and  (TvDocumentos.Items[i].Text='Profesional') then
                  begin
                    NodoAux:=TvDocumentos.Items[i];
                  end;
                end;

                //NodoCargo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[0], CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString), InfCargo);
                NodoCargo := tvDocumentos.Items.AddChildObject(NodoAux, CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString), InfCargo);
                NodoCargo.ImageIndex := 9;
                NodoCargo.SelectedIndex := 9;
                NodoCargo.StateIndex := 9;
                NodoCargo.ExpandedImageIndex := 9;
                NodoCargo.Expand(True);

                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;

                if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
                  CrearCompRecomendacion(groupbox6);
                CargarCompRecomendacion(FrmAltaExperiencia.DireccionArchivo);
                {AcroPdf2.LoadFile(FrmAltaExperiencia.DireccionArchivo);
                AcroPDF2.Show;  }

                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                Nodo.ImageIndex := 7;
                Nodo.SelectedIndex := 7;
                Nodo.StateIndex := 7;
                Nodo.ExpandedImageIndex := 7;
              end;
            end;
          CambiosHechos:=true;
          end;
        finally
          EliminarConjunto(cdUptExperiencia);
        end;

      finally
        if Assigned(cdUptExperiencia) then
          FreeAndNil(cdUptExperiencia);
      end;

    finally
      FrmAltaExperiencia.Free;
    end;

  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al editar historial del postulante.', e.Message, mtInformation, [mbOk], 0);


    on e:exception do
      InteliDialog.ShowModal('Error al editar historial del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmFichaPersonal.PageControl1Change(Sender: TObject);
begin
  if ((cdPersonal.Active) and (cdPersonal.State = dsInsert)) and (PageControl1.ActivePageIndex<>0) then
    pagecontrol1.ActivePageIndex:=0;
end;

procedure TFrmFichaPersonal.Panel_PlazaExit(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crAppStart;

    Try
      if FrmNuevaPlazaParaPersonal.cdPlazaDetalle.State = dsEdit then
      begin
        if FrmNuevaPlazaParaPersonal.cbSubOrganizacion.ItemIndex = 0 then
          FrmNuevaPlazaParaPersonal.cdPlaza.FieldByName('IdOrganizacion').AsInteger := FrmNuevaPlazaParaPersonal.cdOrganizacion.FieldByName('IdOrganizacion').AsInteger
        else
          FrmNuevaPlazaParaPersonal.cdPlaza.FieldByName('IdOrganizacion').AsInteger := FrmNuevaPlazaParaPersonal.cdSubOrganizacion.FieldByName('IdOrganizacion').AsInteger;

        FrmNuevaPlazaParaPersonal.cdPlazaDetalle.FieldByName('IdDepartamento').AsInteger := FrmNuevaPlazaParaPersonal.cdDepartamento.FieldByName('IdDepartamento').AsInteger;
        FrmNuevaPlazaParaPersonal.cdPlazaDetalle.FieldByName('IdTipoNomina').AsInteger := FrmNuevaPlazaParaPersonal.cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;

        Try
          CambiarVaciosANull(FrmNuevaPlazaParaPersonal.cdPlaza);
          FrmNuevaPlazaParaPersonal.cdPlaza.Post;
          FrmNuevaPlazaParaPersonal.cdPlaza.ApplyUpdates(-1);
        Except
          on e:Exception do
            raise InteligentException.CreateByCode(10, ['Plazas']);
        End;

        Try
          CambiarVaciosANull(FrmNuevaPlazaParaPersonal.cdPlazaDetalle);
          FrmNuevaPlazaParaPersonal.cdPlazaDetalle.Post;
          FrmNuevaPlazaParaPersonal.cdPlazaDetalle.ApplyUpdates(-1);
        Except
          on e:Exception do
            raise InteligentException.CreateByCode(10, [e.Message]);
        End;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk] , 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmFichaPersonal.Btn_CancelarClick(Sender: TObject);
begin
  Try
    if cdPersonal.State in [dsInsert, dsEdit] then
    begin
      CambiosHechos := VerificaCambiosHechos;

      if CambiosHechos=True then
      begin
        case InteliDialog.ShowModal('Existen cambios pendientes de ser grabados.', '¿Desea grabar los datos antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: BtnGrabar.Click;

          mrNo: begin
            cdPersonal.Cancel;
            cdDoctosPostulante.Cancel;
            cddatosbancarios.Cancel;
            Resultado := mrCancel;
            MemArchivosNuevos.First;
            while not MemArchivosNuevos.Eof do
            begin
              if FileExists(MemArchivosNuevos.FieldByName('NombreArchivo').AsString) then
              begin
                 DeleteFile(PChar(MemArchivosNuevos.FieldByName('NombreArchivo').AsString));
              end
              else
              begin
                MemArchivosNuevos.Next;
              end;
            end;
            Close;
          end;
        end;
      end
      else
      begin
        while not MemArchivosNuevos.Eof do
        begin
          if FileExists(MemArchivosNuevos.FieldByName('NombreArchivo').AsString) then
          begin
             DeleteFile(PChar(MemArchivosNuevos.FieldByName('NombreArchivo').AsString));
          end
          else
          begin
            MemArchivosNuevos.Next;
          end;
        end;
        close;
      end;

      //if EnTransaccion then
        //CancelarTransaccion;
    end
    else
      Close;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmFichaPersonal.Button1Click(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(cdPersonal.FieldByName('imagen')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

//CODIGO DE RECURSIVIDAD IMPORTANTE#############################################
procedure TFrmFichaPersonal.Button2Click(Sender: TObject);
var
  i:Integer;
  naux:TTreeNode;

  function ConocerAbuelo (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerAbuelo(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;


begin

  for i:=0 to (TvDocumentos.Items.Count - 1) do
  begin
     naux:=ConocerAbuelo(TvDocumentos.Items[i]);
    if (TvDocumentos.Items[i].Level=2) and (naux.Level=0) and (naux.Index=0) then
    begin
      showmessage(inttostr(TCartaInfLab(TvDocumentos.Items[i].Data).IdDocumentosRecomendacion)+', '+inttostr(TvDocumentos.Items[i].Level));
    end;
  end;
end;

procedure TFrmFichaPersonal.Button3Click(Sender: TObject);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo:string;
  FechaArchivo : TDateTime;

  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin

  if cdDoctosPostulante.RecordCount > 0 then
  begin
    //trabajando con el componente pdf
    if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
      CrearCompDocumento(GroupBox12);
    LimpiarCompDocumento;

    //generando el nombre del archivo, encaso de no existir directorio crearlo
    NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo := Nombrearchivo + '\Documentos RH\';

    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo:= NombreArchivo +
    cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
    cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

    stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

    StartPosition := stream.Position;
    FStreamHeader := TStringStream.Create;

    try
      With FStreamHeader do
      begin
        CopyFrom(stream, 512);
        if pos(PDFFILE_HEADER,DataString) <= 0 then
          raise Exception.Create('No es pdf');
      end;

      //Si el archivo existe verificar fecha y cargarlo
      if (FileExists(NombreArchivo)) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin

          //comparar fecha con el alojado
          //if FechaArchivo <> cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime then
          if FechaArchivo <> cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime then
          begin
            //si es diferente descargarlo
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

            //y poner la fecha original
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);

          end;
        end;
      end
      else
      begin
        //En cacso de no existir no comparar nada y descargarlo
        TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
        //y poner la fecha original
        cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('Fechaexpedicion').AsDateTime, fdkCreated);

      end;



      //cargar el documento
      CargarDocumento(NombreArchivo);
      groupbox12.Visible := True;
    except
      on e:exception do
      begin
        if e.Message = 'No es pdf' then
        begin
          //borralo
          if InteliDialog.ShowModal('Distinto tipo de archivo', 'El archivo que esta intentando mostrar no es un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
          begin
            TClientDataset(DsEliminarDocumento.DataSet).Close;
            if Not  CargarDatosFiltrados(TClientDataset(DsEliminarDocumento.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
            TClientDataset(DsEliminarDocumento.DataSet).Open;
            TClientDataset(DsEliminarDocumento.DataSet).Delete;
            TClientDataset(DsEliminarDocumento.DataSet).ApplyUpdates(-1);
            cdDoctosPostulante.Refresh;
          end;
        end
        else
        begin
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        end;
        groupbox12.Visible := False;
      end;

    end;
  end;

end;


procedure TFrmFichaPersonal.ButtonopenClick(Sender: TObject);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo:string;
  FechaArchivo : TDateTime;

  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin

  if cdDoctosPostulante.RecordCount > 0 then
  begin


    //generando el nombre del archivo, encaso de no existir directorio crearlo
    NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo := Nombrearchivo + '\Documentos RH\';

    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo:= NombreArchivo +
    cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
    cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

    stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

    StartPosition := stream.Position;
    FStreamHeader := TStringStream.Create;

    try
      With FStreamHeader do
      begin
        CopyFrom(stream, 512);
        if pos(PDFFILE_HEADER,DataString) <= 0 then
          raise Exception.Create('No es pdf');
      end;

      //Si el archivo existe verificar fecha y cargarlo
      if (FileExists(NombreArchivo)) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin

          //comparar fecha con el alojado
          if FechaArchivo <> cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime then
          begin
            //si es diferente descargarlo
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

            //y poner la fecha original
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);

          end;
        end;
      end
      else
      begin
        //En cacso de no existir no comparar nada y descargarlo
        TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
        //y poner la fecha original
        cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('fechaexpedicion').AsDateTime, fdkCreated);

      end;



      //cargar el documento
      //CargarDocumento(NombreArchivo);
      ShellExecute(self.Handle,nil,PChar(NombreArchivo),'','',SW_SHOWNORMAL);
    except
      on e:exception do
      begin
        if e.Message = 'No es pdf' then
        begin
          //borralo
          if InteliDialog.ShowModal('Distinto tipo de archivo', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
          begin
            TClientDataset(DsEliminarDocumento.DataSet).Close;
            if Not  CargarDatosFiltrados(TClientDataset(DsEliminarDocumento.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
            TClientDataset(DsEliminarDocumento.DataSet).Open;
            TClientDataset(DsEliminarDocumento.DataSet).Delete;
            TClientDataset(DsEliminarDocumento.DataSet).ApplyUpdates(-1);
            cdDoctosPostulante.Refresh;
          end;
        end
        else
        begin
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        end;

      end;

    end;
  end;

end;

procedure TFrmFichaPersonal.CagarBuscarPostulante;
begin
end;

procedure TFrmFichaPersonal.cdDoctosPostulanteAfterScroll(DataSet: TDataSet);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo : string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin
  if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
    CrearCompDocumento(GroupBox12,False);
  LimpiarCompDocumento;
end;

{$REGION 'Componente  de PDF'}
  {$REGION 'Documentos'}
  procedure TFrmFichaPersonal.CrearCompDocumento(Padre:Twincontrol;MuestraError:Boolean);
  begin
    try
      try
        CompDocumento := TAcroPDF.Create(Padre);
        CompDocumento.Parent := Padre;
        CompDocumento.Align:= alClient;
        CompDocumento.DoubleBuffered := False;
      except
        on e:Exception do
          if MuestraError then
            ShowMessage('Error al crear el Preview de archivos PDF de documentos, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat reader falló: '+e.Message)
          else;
      end;
    finally
      Padre.Visible := False;
    end;
  end;

  procedure TFrmFichaPersonal.CargarDocumento(PathPdf:string);
  begin
    //Cargar pdf
    if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
    begin
      if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
      begin
        CompDocumento.LoadFile(PathPdf);
        CompDocumento.Parent.Visible := True;
        {CompDocumento.Repaint;
        CompDocumento.Refresh;
        CompDocumento.gotoFirstPage;
        Compdocumento.Show;   }
      end
      else
        LimpiarCompDocumento;
    end;
  end;

  procedure TFrmFichaPersonal.LimpiarCompDocumento;
  var
    padre: TWinControl;
  begin
    //Limpiar el componente
    if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
    begin
      padre := CompDocumento.Parent;
      FreeAndNil(CompDocumento);
      CrearCompDocumento(padre,False);
    end;
  end;
  {$ENDREGION}

  {$REGION 'Recomendaciones'}
  procedure TFrmFichaPersonal.CrearCompRecomendacion(Padre:Twincontrol;MuestraError:Boolean);
  begin
    try
      CompRecomendacion := TAcroPDF.Create(Padre);
      CompRecomendacion.Parent := Padre;
      CompRecomendacion.Align:= alClient;
      Padre.Visible := False;
    except
      on e:Exception do
      begin
        if MuestraError then
          ShowMessage('Error al crear el Preview de archivos PDF de documentos de recomendación, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat Reader falló : '+e.Message)
        else;
        Padre.Visible := False;
      end;
    end;
  end;

  procedure TFrmFichaPersonal.CargarCompRecomendacion(PathPdf:string);
  begin
    //Cargar pdf
    if (Assigned(CompRecomendacion)) and (CompRecomendacion <> nil) then
    begin
      if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
      begin

        CompRecomendacion.LoadFile(PathPdf);
        CompRecomendacion.Repaint;
        CompRecomendacion.Refresh;
        CompRecomendacion.gotoFirstPage;
        CompRecomendacion.Parent.Visible := True;

      end
      else
        LimpiarCompRecomendacion;
    end;
  end;

  procedure TFrmFichaPersonal.LimpiarCompRecomendacion;
  var
    padre: TWinControl;
  begin
    //Limpiar el componente
    if (Assigned(CompRecomendacion)) and (CompRecomendacion <> nil) then
    begin
      padre := CompRecomendacion.Parent;
      FreeAndNil(CompRecomendacion);
      CrearCompRecomendacion(padre);
    end;
  end;
  {$ENDREGION}

{$ENDREGION}

procedure TFrmFichaPersonal.cdPersonalAfterEdit(DataSet: TDataSet);
begin
  ChkInfonavit.Checked := DataSet.FieldByName('Infonavit').AsString <> '';
  Self.Caption := 'Ficha de Aspirante - ' + UpperCase(DataSet.FieldByName('APaterno').AsString + ', ' + DataSet.FieldByName('Nombres').AsString);
end;

procedure TFrmFichaPersonal.GrdBancariosDblClick(Sender: TObject);
begin
  BtnEditBancarios.Click;
end;

procedure TFrmFichaPersonal.GrdBancariosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
    GrdBancarios.DataSource.DataSet.Refresh;
end;

procedure TFrmFichaPersonal.GrdDocumentosDblClick(Sender: TObject);
begin
  BtnEditDocumentos.Click;
end;

procedure TFrmFichaPersonal.guardarenRH;
var
  cursor: TCursor;
begin
  try
    regRH := True;
    cursor := Screen.Cursor;
    screen.Cursor := crAppStart;
    try
      if (cdPersonalRh.Active) and (cdPersonalRh.RecordCount = 0) and (cdPersonalRH.state = dsEdit) and
      (Intelidialog.ShowModal('Aviso', 'El personal que desea editar no se encuentra registrado en las tablas de RH, ¿desea registrarlo ahora?', mtConfirmation, [mbYes, mbNO], 0) = mrNo) then
        regRH := False;


      if RegRh <> False then
      begin
//        if cdPersonal.State in [dsInsert] then
//          cdPersonalRH.Append
//        else
//          cdPersonalRH.Edit;

        cdPersonalRH.FieldByName('sNombreCompleto').AsString := cdPersonal.FieldByName('Nombres').AsString;
        cdPersonalRH.FieldByName('sRfc').AsString := cdPersonal.FieldByName('rfc').AsString;
        //cdPersonalRH.FieldByName('sDomicilio').AsString := leftStr('Calle ' +cdPersonal.FieldByName('Calle').AsString + ', Colonia ' + cdPersonal.FieldByName('Colonia').AsString + ', CP ' +cdPersonal.FieldByName('CP').AsString + ', ' + cdPersonal.FieldByName('Municipio').AsString + ', ' + cdPersonal.FieldByName('Estado').AsString, 50);
        cdPersonalRH.FieldByName('sCiudad').AsString := cdPersonal.FieldByName('Ciudad').AsString;
        cdPersonalRH.FieldByName('sTelefono').AsString := cdPersonal.FieldByName('telefono').AsString;
        cdPersonalRH.FieldByName('seMail').AsString := cdPersonal.FieldByName('Correo').AsString;
        cdPersonalRH.FieldByName('sCurp').AsString := cdPersonal.FieldByName('curp').AsString;
        cdPersonalRH.FieldByName('sImss').AsString := cdPersonal.FieldByName('numerosegurosocial').AsString;
        cdPersonalRH.FieldByName('sTipoSangre').AsString := cdPersonal.FieldByName('gruposanguineo').AsString;
        cdPersonalRH.FieldByName('sEstadoCivil').AsString := cdPersonal.FieldByName('EstadoCivil').AsString;
        cdPersonalRH.FieldByName('dFechaNacimiento').AsString := cdPersonal.FieldByName('fechanacimiento').AsString;
        cdPersonalRH.FieldByName('lSexo').AsString := cdPersonal.FieldByName('sexo').AsString;
        cdPersonalRH.FieldByName('sLugarNacimiento').AsString := cdPersonal.FieldByName('CiudadNacimiento').AsString;
        //cdPersonalRH.FieldByName('sInfonavit').AsString := cdPersonal.FieldByName('Infonavit').AsString;
        //cdPersonalRH.FieldByName('dFactorInfonavit').AsExtended := cdPersonal.FieldByName('FactorInfonavit').AsExtended;
        //cdPersonalRH.FieldByName('eActivo').AsString := cdPersonal.FieldByName('Activo').AsString;
        cdPersonalRH.FieldByName('sCalle').AsString := cdPersonal.FieldByName('Calle').AsString;
        cdPersonalRH.FieldByName('sColonia').AsString := cdPersonal.FieldByName('Colonia').AsString;
        cdPersonalRH.FieldByName('sEstado').AsString := cdPersonal.FieldByName('Estado').AsString;
        cdPersonalRH.FieldByName('sLocalidad').AsString := cdPersonal.FieldByName('Ciudad').AsString;
        cdPersonalRH.FieldByName('sNumero').AsString := cdPersonal.FieldByName('Numero').AsString;
        cdPersonalRH.FieldByName('sNoCreditoInfonavit').AsString := cdPersonal.FieldByName('NumeroInfonavit').AsString;
        //cdPersonalRH.FieldByName('sPais').AsString := cdPersonal.FieldByName('Pais').AsString;
        //cdPersonalRH.FieldByName('sNombreMadre').AsString := cdPersonal.FieldByName('NombreMadre').AsString;
        //cdPersonalRH.FieldByName('sNombrePadre').AsString := cdPersonal.FieldByName('NombrePadre').AsString;
        cdPersonalRH.FieldByName('iId_Puesto').AsString := cdPersonal.FieldByName('idcargo').AsString;
        cdPersonalRH.FieldByName('sApellidoPaterno').AsString := cdPersonal.FieldByName('Apaterno').AsString;
        cdPersonalRH.FieldByName('sApellidoMaterno').AsString := cdPersonal.FieldByName('Amaterno').AsString;
        cdPersonalRh.FieldByName('sNombre_emergencia').AsString := cdPersonal.FieldByName('contacto').AsString;
        cdPersonalRH.FieldByName('sNumero_Emergencia').AsString := cdPersonal.FieldByName('TelefonoContacto').AsString;
        cdPersonalRH.FieldByName('sCp').AsString := cdPersonal.FieldByName('Cp').AsString;

        if cddatosbancarios.RecordCount > 0 then
        begin
          cddatosbancarios.First;
          cdPersonalRh.FieldByName('sCuentaInterbancaria').AsString := LeftStr(cddatosbancarios.FieldByName('ClaveInterbancaria').AsString,20);
          cdPersonalRh.fieldByName('sCuenta').asString := LeftStr(cddatosbancarios.FieldByName('NumeroDeCuenta').AsString, 20);
          //cdPersonalRh.fieldByName('sBanco').asString := LeftStr(cdDatosBancarios.FieldByName('nombre').asString, 60);
          cdPersonalRH.FieldByName('sSucursal').AsString := LeftStr(cddatosbancarios.FieldByName('Sucursal').AsString, 5);
        end
        else
        begin
          if cdPersonalRH.State = dsInsert then
          begin
            cdPersonalRh.FieldByName('sCuentaInterbancaria').AsString := '*';
            cdPersonalRh.fieldByName('sCuenta').asString := '*';
            //cdPersonalRH.FieldByName('sBanco').AsString := '*';
          end;
        end;

        if cdPersonalRH.State = dsInsert then
        begin
          //cdPersonalRH.FieldByName('sPuesto').AsString := '*';
          //cdPersonalRH.FieldByName('CodigoDepartamento').AsString := '*';
          //cdPersonalRH.FieldByName('sIdArea').AsString := '*';
          cdPersonalRH.FieldByName('dSueldo').AsExtended := 0;
          //cdPersonalRH.FieldByName('lLabora').AsString := 'Si';

          //cdPersonalRH.FieldByName('sCuentaInterbancaria').AsString := '0';
          cdPersonalRH.FieldByName('sLibretaMar').AsString := '*';
          cdPersonalRH.FieldByName('sCartilla').AsString := '*';
          cdPersonalRH.FieldByName('sCedulaProfesional').AsString := '*';
          //cdPersonalRH.FieldByName('sCarrera').AsString := '*';
          //cdPersonalRH.FieldByName('dSalarioDiario').AsExtended := 0.0;
          //cdPersonalRH.FieldByName('Iid_NumeroDeCuenta').AsString := '0';

        end;
      end;
    except
       on e: InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  finally
    Screen.Cursor := cursor;
  end;
end;

procedure TFrmFichaPersonal.DBEditCPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure TFrmFichaPersonal.DBImssChange(Sender: TObject);
var
  Digito: String;
begin
  Digito := DigitoVerificador(DBImss.Text);
  JvLabel15.Caption := '-' + Digito;

  if Digito <> '' then
    cdPersonal.FieldByName('NumeroSeguroSocial').AsString := DBImss.Text + Digito;
end;

procedure TFrmFichaPersonal.DBTelefonoContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure TFrmFichaPersonal.DBTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
end;

function TFrmFichaPersonal.tieneCambios(var Dataset: TClientDataSet): Boolean;
var
  I: Integer;
  Indice: Integer;
  ListaCampos: TStringList;
  tieneModif: Boolean;
  valorOld: string;
  ValorNew: string;
begin
  tieneModif := False;
  for I := 0 to Dataset.Fields.Count-1 do
  begin
    try
      valorOld := UpperCase(Trim(VarToStr(Dataset.Fields[i].OldValue)));
    except
      valorOld := '';
    end;
    try
      ValorNew := UpperCase(Trim(VarToStr(Dataset.fields[i].Value)));
    except
      ValorNew := '';
    end;
    if (ValorNew <> valorOld) and
    (tieneModif = False) then
    begin
      tieneModif := True;
      //showmessage('Value : ' + VarToStr(Dataset.Fields[i].value) + 'OldValue: ' + VarToStr(Dataset.Fields[i].OldValue));
      //i := Dataset.Fields.Count;
    end;
  end;
  CambiosHechos := tieneModif; // Si tiene modificaciones preguntará.
  Result := tieneModif;
end;

procedure TFrmFichaPersonal.tvDocumentosChange(Sender: TObject; Node: TTreeNode);
const
  PDFFILE_HEADER = '%PDF';
var
  NodeAux :TTreeNode;
  NombreArchivo : string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
  NodoAux, Nodo, Nodocargo : TTReeNode;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

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
  try
    if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
      CrearCompRecomendacion(groupbox6,False);
    LimpiarCompRecomendacion;

    NodoAux := ConocerNivelInicial(TvDocumentos.Selected);
    Nodo:=TvDocumentos.Selected;

    BtnEditHistorial.Enabled := Assigned(Node.Data);
    BtnDeleteHistorial.Enabled := Assigned(Node.Data);

    NodeAux := ConocerNivelInicial(TvDocumentos.Selected);
    if TvDocumentos.Selected.Level=2 then
    begin
      cdExperiencia.Locate('IdDocumentosRecomendacion', TCartaInfLab(TvDocumentos.Selected.Data).IdDocumentosRecomendacion, []);

      NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
      cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

      if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin
          if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
          end;
        end;
        if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
          CrearCompRecomendacion(groupbox6);
        CargarCompRecomendacion(NombreArchivo);
      end
      else
      begin
        stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
        StartPosition := stream.Position;
        FStreamHeader := TStringStream.Create;
        With FStreamHeader do
        begin
          CopyFrom(stream, 512);
          if pos(PDFFILE_HEADER,DataString) > 0 then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
             if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
               CrearCompRecomendacion(groupbox6);
             CargarCompRecomendacion(NombreArchivo);

          end
          else
          begin
            self.SendToBack;
            if InteliDialog.ShowModal('Distinto tipo de archiv', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
            begin
              TClientDataset(DsEliminarExperiencia.DataSet).Close;
              if Not  CargarDatosFiltrados(TClientDataset(DsEliminarExperiencia.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
              TClientDataset(DsEliminarExperiencia.DataSet).Open;
              TClientDataset(DsEliminarExperiencia.DataSet).Delete;
              TClientDataset(DsEliminarExperiencia.DataSet).ApplyUpdates(-1);
              CdExperiencia.Refresh;

              NodoAux:=ConocerNivelInicial(TvDocumentos.Selected);
              if NodoAux.Text='Personal' then
              begin
                Nodo.Destroy;
              end
              else
              begin
                NodoCargo:=Nodo.Parent;
                Nodo.Destroy;
                  if NodoCargo.Count=0  then
                    NodoCargo.Destroy
                  else
                  begin
                    CdExperiencia.Locate('iddocumentosrecomendacion', TCargoInf(NodoCargo.Data).Idcargo, []);
                    NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
                  end;
              end;
              CambiosHechos:=True;
            end;
          end;
        end;
      end;
    end;


    if (TvDocumentos.Selected.Level=1) and (NodeAux.Index=1) then
    begin
      cdExperiencia.Locate('IdDocumentosRecomendacion', TCartaInfPer(TvDocumentos.Selected.Data).IdDocumentosRecomendacion, []);

      NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
      cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

      if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin
          if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
          end;
        end;
        if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
          CrearCompRecomendacion(groupbox6);
        CargarCompRecomendacion(NombreArchivo);
      end
      else
      begin
        stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
        StartPosition := stream.Position;
        FStreamHeader := TStringStream.Create;
        With FStreamHeader do
        begin
          CopyFrom(stream, 512);
          if pos(PDFFILE_HEADER,DataString) > 0 then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
              CrearCompRecomendacion(GroupBox6);
            CargarCompRecomendacion(NombreArchivo);
          end
          else
          begin
            self.SendToBack;
            if InteliDialog.ShowModal('Distinto tipo de archiv', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
            begin
              TClientDataset(DsEliminarExperiencia.DataSet).Close;
              if Not  CargarDatosFiltrados(TClientDataset(DsEliminarExperiencia.DataSet), 'idpostulante,iddocumentosrecomendacion', [cdExperiencia.FieldByName('idpostulante').AsInteger, cdExperiencia.FieldByName('iddocumentosrecomendacion').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
              TClientDataset(DsEliminarExperiencia.DataSet).Open;
              TClientDataset(DsEliminarExperiencia.DataSet).Delete;
              TClientDataset(DsEliminarExperiencia.DataSet).ApplyUpdates(-1);
              CdExperiencia.Refresh;

              NodoAux:=ConocerNivelInicial(TvDocumentos.Selected);
              if NodoAux.Text='Personal' then
              begin
                Nodo.Destroy;
              end
              else
              begin
                NodoCargo:=Nodo.Parent;
                Nodo.Destroy;
                if NodoCargo.Count=0  then
                  NodoCargo.Destroy
                else
                begin
                  CdExperiencia.Locate('idcargo', TCargoInf(NodoCargo.Data).Idcargo, []);
                  NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
                end;
              end;
              CambiosHechos:=True;
            end;
          end;
        end;
      end;
    end;


  finally
    if (Length(trim(NombreArchivo)) > 0) and (FileExists(NombreArchivo)) and (not GroupBox6.visible) then
      ShellExecute(self.Handle,nil,PChar(NombreArchivo),'','',SW_SHOWNORMAL);
  end
end;

procedure TFrmFichaPersonal.tvDocumentosDblClick(Sender: TObject);
var
  NodeAux :TTreeNode;
  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;
begin
  NodeAux:= ConocerNivelInicial(tvDocumentos.Selected);
  if (NodeAux.Index=0) and (TvDocumentos.Selected.Level=2) then
    BtnEditHistorial.Click;

  if (NodeAux.Index=1) and (TvDocumentos.Selected.Level=1) then
      BtnEditHistorial.Click;
end;



procedure TFrmFichaPersonal.validarDatos(rfc, curp, nss, ctabancaria,
  campoMensaje, valor: string);
var
  nombre : string;
begin
  if cdPersonalGeneral.Active = True then
  begin
    cdPersonalGeneral.Active := False;
    cdPersonalGeneral.Close;
  end;
  if Not CrearConjunto(cdPersonalGeneral, 'nuc_personal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal']);

  //Valida si ya existe el registro ya sea RFC, CURP, CTA BANCARIA, ETC.
  if Not CargarDatosFiltrados(cdPersonalGeneral, 'idPersonal,activo,Gruposanguineo,rfc, ' +
                                          'contacto,telefonocontacto,codigopersonal,curp, ' +
                                          'descripcion,imagenpersonal,doccontratacion,Nombres,apaterno, ' +
                                          'amaterno,numerosegurosocial,fechaalta',
                                          [-1, -1, -1, rfc,
                                           -1, -1, -1, curp,
                                           -1, -1, -1, -1, -1,
                                           -1, nss, -1]) then
      raise InteligentException.CreateByCode(6, ['Personal', IdPersonal, 'IdPersonal']);

  cdPersonalGeneral.Open;

  if cdPersonalGeneral.RecordCount >= 1 then
  begin
    if cdPersonal.fieldByName('idPersonal').AsInteger <> cdPersonalGeneral.fieldByName('idPersonal').AsInteger then
    begin
      datosRepetidos := True;
      nombre := cdPersonalGeneral.FieldByName('Nombres').AsString + ' ' + cdPersonalGeneral.FieldByName('APaterno').AsString + ' ' +  cdPersonalGeneral.FieldByName('AMaterno').AsString;
      InteliDialog.ShowModal('Aviso.','El valor: ' + valor + ' del campo ' + campoMensaje + ' ya se ha asignado al empleado ' + nombre, mtInformation, [mbOk], 0)
    end;
  end;
end;

procedure TFrmFichaPersonal.ChkInfonavitClick(Sender: TObject);
begin
  if cdpersonal.fieldByName('Infonavit').asString = 'Si' then
  begin
    if (ChkInfonavit.Checked = false) and (InteliDialog.ShowModal('Aviso.','Se perderá toda la información del infonavit.', mtInformation, [mbYes, mbNo], 0) = mrYes) then
    begin
      EdtNoInfonavit.Text := '';
      DBFactorInfonavit.Text := '';
      cdPersonal.FieldByName('AplicacionInfonavit').Clear;
      cdPersonal.FieldByName('terminoInfonavit').Clear;
      cdPersonal.FieldByName('tAplicacionInfonavit').Clear;
      EdtNoInfonavit.Enabled := ChkInfonavit.Checked;
      DBFactorInfonavit.Enabled := ChkInfonavit.Checked;
      DbDateAplicacion.Enabled := ChkInfonavit.Checked;
      DbDateTermino.Enabled := ChkInfonavit.Checked;
      cbbAplica.Enabled := ChkInfonavit.Checked;
    end
    else
    begin
      ChkInfonavit.Checked := True;
      EdtNoInfonavit.Enabled := ChkInfonavit.Checked;
      DBFactorInfonavit.Enabled := ChkInfonavit.Checked;
      DbDateAplicacion.Enabled := ChkInfonavit.Checked;
      DbDateTermino.Enabled := ChkInfonavit.Checked;
      cbbAplica.Enabled := ChkInfonavit.Checked;
    end;
  end
  else
  begin
      EdtNoInfonavit.Enabled := ChkInfonavit.Checked;
      DBFactorInfonavit.Enabled := ChkInfonavit.Checked;
      DbDateAplicacion.Enabled := ChkInfonavit.Checked;
      DbDateTermino.Enabled := ChkInfonavit.Checked;
      cbbAplica.Enabled := ChkInfonavit.Checked;
      cbbAplica.ItemIndex := 2;
  end;
  if (cdPersonal.State in [DsInsert, DsEdit]) and (ChkInfonavit.Checked=false) then
  begin
    cdPersonal.FieldByName('NumeroInfonavit').AsString:='';
    DBFactorInfonavit.Value := 0;
  end;
end;

procedure TFrmFichaPersonal.DocumentosATreeView;
const
  PDFFILE_HEADER = '%PDF';
var
  Lista: TStringList;
  Nodo, Nodo2: TTreeNode;
  Duracion, Anios, Meses: Word;
  CadDura: String;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;
  NombreArchivo : string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin
  Lista := TStringList.Create;
  Try
    Lista.Clear;

    Nodo2 := tvDocumentos.Items.Item[1];
    cdExperiencia.First;
    while not cdExperiencia.Eof do
    begin
      if cdExperiencia.FieldByName('Tipo').AsString = 'Personal' then
      begin

        NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
        cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

        if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
        begin
          if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
          begin
            if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end;
          end;
        end
        else
        begin
          stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
          StartPosition := stream.Position;
          FStreamHeader := TStringStream.Create;
          With FStreamHeader do
          begin
            CopyFrom(stream, 512);
            if pos(PDFFILE_HEADER,DataString) > 0 then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end
            else
            begin
              NombreArchivo:='';
            end;
          end;
        end;

        new(InfcartaPer);
        InfcartaPer^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
        InfcartaPer^.NombreArchivo := NombreArchivo;
        Nodo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[1], cdExperiencia.FieldByName('Descripcion').AsString, InfcartaPer);
        //Nodo.Data := TObject(cdExperiencia.RecNo);
        Nodo.ImageIndex := 8;
        Nodo.SelectedIndex := 8;
        Nodo.StateIndex := 8;
        Nodo.ExpandedImageIndex := 8;
        Nodo.Expand(True);
      end
      else
      begin
        // Localizar el cargo para usarlo como grupo
        if Lista.IndexOf(cdExperiencia.FieldByName('TituloCargo').AsString) < 0 then
        begin
          //Creo el puntero definido para poder anexarlo como objecto
          New(InfCargo);

          // Calcular los años, meses y días de antiguedad
          Duracion := cdExperiencia.FieldByName('Duracion').AsInteger;
          Anios := Trunc(Duracion / 365.25);
          Duracion := Duracion - Trunc(Anios * 365.25);
          Meses := Trunc(Duracion / 30.4);
          Duracion := Duracion - Trunc(Meses * 30.4);

          //Asigno Los Valores a Mi Clase
          InfCargo^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;

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

          Nodo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[0], cdExperiencia.FieldByName('TituloCargo').AsString + ' - Antiguedad: ' + CadDura, InfCargo);
          //tvDocumentos.Items.AddChildObject()
          Nodo.ImageIndex := 9;
          Nodo.SelectedIndex := 9;
          Nodo.StateIndex := 9;
          Nodo.ExpandedImageIndex := 9;
          Nodo.Expand(True);
          //Nodo.Data:=InfCargo;
          Lista.AddObject(cdExperiencia.FieldByName('TituloCargo').AsString, Nodo);
        end
        else
        begin
          Nodo := TTreeNode(Lista.Objects[Lista.IndexOf(cdExperiencia.FieldByName('TituloCargo').AsString)]);
        end;

        NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
        cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

        if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
        begin
          if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
          begin
            if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end;
          end;
        end
        else
        begin
{            try
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            except
              NombreArchivo:='';
            end;}
          stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
          StartPosition := stream.Position;
          FStreamHeader := TStringStream.Create;
          With FStreamHeader do
          begin
            CopyFrom(stream, 512);
            if pos(PDFFILE_HEADER,DataString) > 0 then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end
            else
            begin
              NombreArchivo:='';
            end;
          end;
        end;

        //Creo El Puntero de para almacenarlo junto con el nodo.
        New(InfCartaLab);

        InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
        InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
        InfCartaLab^.NombreArchivo := NombreArchivo;
        // Calcular los años, meses y días de antiguedad
        Duracion := cdExperiencia.FieldByName('Duracion_2').AsInteger;
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

        Nodo := tvDocumentos.Items.AddChildObject(Nodo, cdExperiencia.FieldByName('Empresa').AsString + ' - Antiguedad: ' + CadDura + ' - ' + cdExperiencia.FieldByName('Descripcion').AsString, InfCartaLab);
        Nodo.ImageIndex := 7;
        Nodo.SelectedIndex := 7;
        Nodo.StateIndex := 7;
        Nodo.ExpandedImageIndex := 7;
        //Nodo.Data := TObject(cdExperiencia.RecNo);
      end;

      cdExperiencia.Next;
    end;
    tvDocumentos.items.Item[0].Expand(True);
    Nodo2.Expand(True);
  Finally
    Lista.Free;
  End;
end;

procedure TFrmFichaPersonal.LeerDatos;
const
  PDFFILE_HEADER = '%PDF';
var
  i: Integer;
  NombreArchivo, sIdEmpleado: string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin
  try
    EndShow := False;

    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    // Acceder a los detalles del postulante
    cdPersonal.Close;
    if Not CargarDatosFiltrados(cdPersonal, 'IdPersonal', [IdPersonal]) then
      raise InteligentException.CreateByCode(6, ['Personal', IdPersonal, 'IdPersonal']);
    cdPersonal.Open;

    // Acceder a los detalles del postulante
    (*cdPostulante.Close;
    if Not CargarDatosFiltrados(cdPostulante, 'IdPostulante', [IdPostulante]) then
      raise InteligentException.CreateByCode(6, ['Postulante', IdPostulante, 'IdPostulante']);
    cdPostulante.Open;
    *)
    if cdPersonal.RecordCount = 1 then
      sIdEmpleado := cdPersonal.FieldByName('CodigoPersonal').AsString
    else
      sIdEmpleado := '*';

    {cdEmpleado.Close;
    if Not CargarDatosFiltrados(cdEmpleado, 'sIdEmpleado', [sIdEmpleado]) then
      raise InteligentException.CreateByCode(6, ['Empleados', sIdEmpleado, 'sIdEmpleado']);
    cdEmpleado.Open;}

    cdPersonalIMSS.Close;
    if Not CargarDatosFiltrados(cdPersonalIMSS, 'IdPersonal', [IdPersonal]) then
      raise InteligentException.CreateByCode(6, ['IMSS de Personal', IdPersonal, 'IdPersonal']);
    cdPersonalIMSS.Open;

    // Abrir el contenedor de los documentos de personal
    cdDoctosPostulante.Close;
    if Not CargarDatosFiltrados(cdDoctosPostulante, 'IdPostulante', [IdPostulante]) then
      raise InteligentException.CreateByCode(6, ['Documentos de Postulante', IdPersonal, 'IdPostulante']);
    cdDoctosPostulante.Open;

    // Abrir el contenedor de los datos bancarios de personal
    cdDatosBancarios.Close;
    if Not CargarDatosFiltrados(cddatosbancarios, 'IdPostulante', [IdPersonal]) then
      raise InteligentException.CreateByCode(6, ['Documentos de Postulante', IdPersonal, 'IdPostulante']);
    cdDatosBancarios.Open;

    //Abrir el contenedor de los documentos de recomendacion
    cdExperiencia.Close;
    if Not CargarDatosFiltrados(CdExperiencia, 'IdPostulante', [IdPostulante]) then
      raise InteligentException.CreateByCode(6, ['Experiencia de Postulante', IdPersonal, 'IdPostulante']);
    CdExperiencia.Open;

    DocumentosATreeView; // Cargar los datos de la experiencia al treeview

    //IniciarTransaccion;
    {
    if Not Assigned(FrmNuevaPlazaParaPersonal) then
      Application.CreateForm(TFrmNuevaPlazaParaPersonal, FrmNuevaPlazaParaPersonal);
       }
    if IdPersonal = -9 then
    begin
      Try
        // ***********************************************************************
        // Si el personal es de nuevo ingreso se deberá capturar su plaza vacante
        Try
          {if FrmNuevaPlazaParaPersonal.ShowModal <> mrOk then
            raise InteligentException.CreateByCode(24, ['Proceso cancelado por el usuario']);

          IdPlaza := FrmNuevaPlazaParaPersonal.IdPlaza;
          IdPlazaDetalle := FrmNuevaPlazaParaPersonal.IdPlazaDetalle;
          Factor := FrmNuevaPlazaParaPersonal.Factor;
          Salario := FrmNuevaPlazaParaPersonal.Salario;
          SalarioIntegrado := FrmNuevaPlazaParaPersonal.SalarioIntegrado;
          IdCargo := FrmNuevaPlazaParaPersonal.IdCargo;
          TituloCargo := FrmNuevaPlazaParaPersonal.TituloCargo;
{
          FrmNuevaPlazaParaPersonal.JvLabel8.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.JvLabel8.Top := 30;
          FrmNuevaPlazaParaPersonal.JvLabel8.Left := 10;

          FrmNuevaPlazaParaPersonal.cbOrganizacion.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.cbOrganizacion.Top := 46;
          FrmNuevaPlazaParaPersonal.cbOrganizacion.Left := 20;

          FrmNuevaPlazaParaPersonal.JvLabel9.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.JvLabel9.Top := 80;
          FrmNuevaPlazaParaPersonal.JvLabel9.Left := 10;

          FrmNuevaPlazaParaPersonal.cbSubOrganizacion.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.cbSubOrganizacion.Top := 96;
          FrmNuevaPlazaParaPersonal.cbSubOrganizacion.Left := 20;

          FrmNuevaPlazaParaPersonal.JvLabel7.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.JvLabel7.Top := 130;
          FrmNuevaPlazaParaPersonal.JvLabel7.Left := 10;

          FrmNuevaPlazaParaPersonal.DBDepartamento.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.DBDepartamento.Top := 146;
          FrmNuevaPlazaParaPersonal.DBDepartamento.Left := 20;

          FrmNuevaPlazaParaPersonal.JvLabel4.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.JvLabel4.Top := 180;
          FrmNuevaPlazaParaPersonal.JvLabel4.Left := 10;

          FrmNuevaPlazaParaPersonal.DBCargo.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.DBCargo.Top := 196;
          FrmNuevaPlazaParaPersonal.DBCargo.Left := 20;

          FrmNuevaPlazaParaPersonal.JvLabel6.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.JvLabel6.Top := 230;
          FrmNuevaPlazaParaPersonal.JvLabel6.Left := 10;

          FrmNuevaPlazaParaPersonal.DBIdTipoNomina.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.DBIdTipoNomina.Top := 246;
          FrmNuevaPlazaParaPersonal.DBIdTipoNomina.Left := 20;

          FrmNuevaPlazaParaPersonal.JvLabel5.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.JvLabel5.Top := 280;
          FrmNuevaPlazaParaPersonal.JvLabel5.Left := 10;

          FrmNuevaPlazaParaPersonal.SalarioIndependiente.Parent := Panel_Plaza;
          FrmNuevaPlazaParaPersonal.SalarioIndependiente.Top := 296;
          FrmNuevaPlazaParaPersonal.SalarioIndependiente.Left := 20;

          Self.Caption := 'Alta de Personal - ' + FrmNuevaPlazaParaPersonal.Encabezado;
     }   Finally
          //FrmNuevaPlazaParaPersonal.Free;
        End;
        // Termina proceso de captura de plaza vacante
        // ***********************************************************************

        cdPersonal.Append;
        cdPersonal.FieldByName('IdPostulante').AsInteger := 0;
        cdPersonal.FieldByName('IdPersonal').AsInteger := 0;
        cdPersonal.FieldByName('CodigoPersonal').AsString := '';
        cdPersonal.FieldByName('FechaAlta').AsDateTime := Now;
        cdPersonal.FieldByName('IdPlazaDetalle').AsInteger := -5;
        cdPersonal.FieldByName('estadocivil').AsString := 'Soltero';
        cdPersonal.FieldByName('sexo').AsString := 'Masculino';
        cdPersonal.FieldByName('Activo').AsString := 'Si';
        cdPersonal.FieldByName('Infonavit').AsString := 'No';
        cdPersonal.FieldByName('NumeroInfonavit').AsString := '';
        cdPersonal.FieldByName('FactorInfonavit').AsFloat := 0;
        if cdPais.RecordCount > 0 then
          cdPersonal.FieldByName('Nacionalidad').AsInteger := cdPais.FieldByName('IdPais').AsInteger;

        (*cdPostulante.Append;
        cdPostulante.FieldByName('IdPostulante').AsInteger := 0;
        cdPostulante.FieldByName('CodigoPostulante').AsString := '';
        cdPostulante.FieldByName('Activo').AsString := 'Si';
        *)
        //cdEmpleado.Append;

        //AdvToolPanelTab1.Visible := True;
        Timer2.Enabled := True;
      Except
        on e:exception do
          raise InteligentException.CreateByCode(14, ['Personal', e.message]);
      End;
    end
    else
    begin
      Try
        if cdPersonal.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [Codigo, 'Personal']);

        //if cdPostulante.RecordCount = 0 then
          //raise InteligentException.CreateByCode(13, [IdPostulante, 'Id. Postulante']);

        //AdvToolPanelTab1.Visible := False;

        {FrmNuevaPlazaParaPersonal.IdPlazaDetalle := cdPersonal.FieldByName('IdPlazaDetalle').AsInteger;
        FrmNuevaPlazaParaPersonal.MuestraDatos;

        IdPlaza := FrmNuevaPlazaParaPersonal.IdPlaza;
        IdPlazaDetalle := FrmNuevaPlazaParaPersonal.IdPlazaDetalle;
        Factor := FrmNuevaPlazaParaPersonal.Factor;
        Salario := FrmNuevaPlazaParaPersonal.Salario;
        SalarioIntegrado := FrmNuevaPlazaParaPersonal.SalarioIntegrado;
        IdCargo := FrmNuevaPlazaParaPersonal.IdCargo;
        TituloCargo := FrmNuevaPlazaParaPersonal.TituloCargo;

        FrmNuevaPlazaParaPersonal.JvLabel8.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.JvLabel8.Top := 30;
        FrmNuevaPlazaParaPersonal.JvLabel8.Left := 10;

        FrmNuevaPlazaParaPersonal.cbOrganizacion.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.cbOrganizacion.Top := 46;
        FrmNuevaPlazaParaPersonal.cbOrganizacion.Left := 20;

        FrmNuevaPlazaParaPersonal.JvLabel9.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.JvLabel9.Top := 80;
        FrmNuevaPlazaParaPersonal.JvLabel9.Left := 10;

        FrmNuevaPlazaParaPersonal.cbSubOrganizacion.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.cbSubOrganizacion.Top := 96;
        FrmNuevaPlazaParaPersonal.cbSubOrganizacion.Left := 20;

        FrmNuevaPlazaParaPersonal.JvLabel7.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.JvLabel7.Top := 130;
        FrmNuevaPlazaParaPersonal.JvLabel7.Left := 10;

        FrmNuevaPlazaParaPersonal.DBDepartamento.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.DBDepartamento.Top := 146;
        FrmNuevaPlazaParaPersonal.DBDepartamento.Left := 20;

        FrmNuevaPlazaParaPersonal.JvLabel4.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.JvLabel4.Top := 180;
        FrmNuevaPlazaParaPersonal.JvLabel4.Left := 10;

        FrmNuevaPlazaParaPersonal.DBCargo.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.DBCargo.Top := 196;
        FrmNuevaPlazaParaPersonal.DBCargo.Left := 20;

        FrmNuevaPlazaParaPersonal.JvLabel6.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.JvLabel6.Top := 230;
        FrmNuevaPlazaParaPersonal.JvLabel6.Left := 10;

        FrmNuevaPlazaParaPersonal.DBIdTipoNomina.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.DBIdTipoNomina.Top := 246;
        FrmNuevaPlazaParaPersonal.DBIdTipoNomina.Left := 20;

        FrmNuevaPlazaParaPersonal.JvLabel5.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.JvLabel5.Top := 280;
        FrmNuevaPlazaParaPersonal.JvLabel5.Left := 10;

        FrmNuevaPlazaParaPersonal.SalarioIndependiente.Parent := Panel_Plaza;
        FrmNuevaPlazaParaPersonal.SalarioIndependiente.Top := 296;
        FrmNuevaPlazaParaPersonal.SalarioIndependiente.Left := 20;}

        cdPersonal.Edit;
        //cdPostulante.Edit;

        DBImss.Text := Copy(DBEdit4.Text,1,10);
        JvLabel15.Caption := '-' + Copy(DBEdit4.Text,11,1);
      Except
        on e:InteligentException do
          raise;

        on e:Exception do
          raise InteligentException.CreateByCode(1, [e.message]);
      End;
    end;

    pagecontrol1.Visible:=true;
    Pagecontrol1.ActivePageIndex:=0;

    if MemPersonal.FieldDefs.Count = 0 then
    begin
      for i := 0 to (cdPersonal.FieldDefs.Count-1) do
        MemPersonal.FieldDefs.Add(cdPersonal.FieldDefs.Items[i].Name, cdPersonal.FieldDefs.Items[i].DataType, cdPersonal.FieldDefs.Items[i].Size, False);

      MemPersonal.CreateDataSet;
    end
    else
      MemPersonal.Close;

    MemPersonal.Open;
    MemPersonal.Append;
    for i := 0 to (cdPersonal.FieldDefs.Count-1) do
      MemPersonal.FieldValues[cdPersonal.FieldDefs.Items[i].Name] := cdPersonal.FieldValues[cdPersonal.FieldDefs.Items[i].Name];
    MemPersonal.Post;
    EndShow := True;

    // Poner las ongitudes de los campos de captura
    // LongitudComponentes(cdPostulante.FieldDefs, TWinControl(Self));

    ChkInfonavit.Checked := (cdPersonal.state = dsEdit) and (cdPersonal.fieldbyname('infonavit').asstring = 'Si');
  finally
    Screen.Cursor := Cursor;
  end;
end;

function TFrmFichaPersonal.VerificaCambiosHechos: Boolean;
var
  LocResult: Boolean;
  i: Integer;
begin
  LocResult := False;
  i := 0;
  Try
    while (i < MemPersonal.FieldDefs.Count) and (Not LocResult) do
    begin
      if CompareText(MemPersonal.FieldDefs.Items[i].Name, 'fechaalta') <> 0 then
      begin
        if (MemPersonal.FieldDefs.Items[i].DataType <> FtBlob) and (MemPersonal.FieldValues[MemPersonal.FieldDefs.Items[i].Name] <>
        cdPersonal.FieldValues[MemPersonal.FieldDefs.Items[i].Name])then
          LocResult := True
        else
        begin
          if (MemPersonal.FieldDefs.Items[i].DataType = FtBlob) and (MemPersonal.FieldByName(MemPersonal.FieldDefs.Items[i].Name).AsWideString <>
          cdPersonal.FieldByName(MemPersonal.FieldDefs.Items[i].Name).AsWideString)then
             LocResult := True;
        end;
      end;

      Inc(i);
    end;
  Finally
    Result := LocResult;
  End;
end;

function GetTempDir: string;
var
  Buffer : Array[0..Max_path] of char;
begin
  FillChar(Buffer,Max_Path + 1, 0);
  GetTempPath(Max_path, Buffer);
  Result := String(Buffer);
  if Result[Length(Result)] <> '\' then Result := Result + '\';
end;


//Nombre del archivo, la fecha que quiero ponerle, y el tipo de fecha (fdkCreated, fdkLastModified, fdkLastAccessed)
function TFrmFichaPersonal.cambiarFechaFichero (const FileName: string; FileDate: TDateTime;
    SpecificFileDate: TFileDateKind): boolean;
var
  fHandle : integer;
  Succeed : boolean;
  TempFileTime, FinalFileTime : TFileTime;
  TempSystemTime : TSystemTime;
  pFileCreationDate, pFileLastModifiedDate, pFileLastAccessedDate : PFileTime;
begin
  pFileCreationDate := nil;
  pFileLastModifiedDate := nil;
  pFileLastAccessedDate := nil;

  fHandle := FileOpen(FileName, fmShareDenyWrite or fmOpenWrite);
  if fHandle < 0 then Succeed := false
  else
  begin
    DecodeDateTime(FileDate, TempSystemTime.wYear, TempSystemTime.wMonth,
        TempSystemTime.wDay, TempSystemTime.wHour, TempSystemTime.wMinute,
        TempSystemTime.wSecond, TempSystemTime.wMilliSeconds);
    SystemTimeToFileTime(TempSystemTime, TempFileTime);
    LocalFileTimeToFileTime(TempFileTime, FinalFileTime);
    case SpecificFileDate of
      fdkCreated : pFileCreationDate := @FinalFileTime;
      fdkLastModified : pFileLastModifiedDate := @FinalFileTime;
      fdkLastAccessed : pFileLastAccessedDate := @FinalFileTime;
    end;
    Succeed := SetFileTime(fHandle, pFileCreationDate,
        pFileLastAccessedDate, pFileLastModifiedDate);
    FileClose(fHandle);
  end;
  Result := Succeed;
end;

//Nombre de archivo, paso la viariable en la cual em va a devolver la fecha si se puede leer  de tipo tdatetime
//y tipo de ttipodfecha (fdkCreado, fdkUltimaModificacion, fdkUltimoAcceso)
function TFrmFichaPersonal.ObtenerFechaArchivo (const NombreArchivo: string;
    out FechaResult: TDateTime; TipoFechaObtener: TTipoDFecha): boolean;
var
  Monitor : integer;
  Resultado : boolean;
  FechaCreacionArchivo, FechaUltimaModificacion, FechaUltimoAcceso : TFileTime;
  TempFechaArchivo : TFileTime;
  TempFechaSistema : TSystemTime;
begin
  Monitor := FileOpen(NombreArchivo, fmShareDenyNone);
  FechaResult := 0.0;
  if Monitor < 0 then Resultado := false
  else
  begin
    Resultado := GetFileTime(Monitor, @FechaCreacionArchivo,
        @FechaUltimoAcceso, @FechaUltimaModificacion);
    FileClose(Monitor);
    if Resultado then begin
      case TipoFechaObtener of
        fdkCreado : FileTimeToLocalFileTime(FechaCreacionArchivo, TempFechaArchivo);
        fdkUltimaModificacion : FileTimeToLocalFileTime(FechaUltimaModificacion, TempFechaArchivo);
        fdkUltimoAcceso : FileTimeToLocalFileTime(FechaUltimoAcceso, TempFechaArchivo);
      end;
      if FileTimeToSystemTime(TempFechaArchivo, TempFechaSistema) then
        FechaResult := EncodeDateTime(TempFechaSistema.wYear, TempFechaSistema.wMonth,
            TempFechaSistema.wDay, TempFechaSistema.wHour, TempFechaSistema.wMinute,
            TempFechaSistema.wSecond, TempFechaSistema.wMilliSeconds)
      else Resultado := false;
    end;
  end;
  Result := Resultado;
end;

procedure TFrmFichaPersonal.EnableSysCloseItem(Handle: HWND; Enable: Boolean);
const
   Flags : array[Boolean] of Integer = (MF_GRAYED, MF_ENABLED);
var
  SysMenu : HMENU;
begin
  SysMenu := GetSystemMenu(Handle, false);
  EnableMenuItem(SysMenu, SC_CLOSE, MF_BYCOMMAND or Flags[Enable]);
end;

end.
