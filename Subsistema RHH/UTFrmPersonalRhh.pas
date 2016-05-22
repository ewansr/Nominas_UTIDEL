unit UTFrmPersonalRhh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ExtCtrls, ComCtrls, Menus, DBCtrls, StdCtrls, Mask,
  JvExControls, JvLabel, RxToolEdit, RXDBCtrl, NxScrollControl, TypInfo,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExStdCtrls, JvBehaviorLabel,
  DB, DBClient, Uintelidialog, AdvCircularProgress, AdvGlowButton,
  JvComponentBase, JvBalloonHint, NxEdit, NxColumns, NxDBColumns, JvDBImage,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,
  JvToolEdit, JvBaseEdits, JvDBControls, JvExMask, frxClass, frxPreview,
  AdvListV, AdvEdit, AdvEdBtn, Buttons, JvExComCtrls, JvComCtrls, Grids, DBGrids,
  AdvGroupBox, JvAutoComplete, UTFrmCargaImagen, frxDBSet, AdvToolBtn,
  JvMemoryDataset;

Const
  WM_SEHACERRADO = WM_APP + 2;

Type
  TDatosGenerales = Class(Tobject)
    idbanco : integer;
    ctabancaria : string;
    idcargo : integer;
    iddepartamento : integer;
    idconvenio : integer;
    idsalario : integer;
  end;

  TDatosDomicilio = Class(Tobject)
    ciudad : string;
    colonia : string;
    calle : string;
    numero : string;
    cp : string;
  end;


Type
    TCargoInf = ^TnCargoInf;
    TnCargoInf = Record
    Idcargo: integer;
 end;

Type
  TMedidasGroupBox = Class(TObject)
    GbPersonalesT : Integer;
    GbDomicilioT : Integer;
    GbNacimientoT : Integer;
    GbDescripcionT : Integer;
    GroupBox1H : Integer;
  End;

Type
    TCartaInfLab = ^TNCartaInfLab;
    TNCartaInfLab = Record
    IdDocumentosRecomendacion : Integer;
    Idcargo: integer;
  end;

Type
    TCartaInfPer = ^TNCartaInfPer;
    TNCartaInfPer = Record
    IdDocumentosRecomendacion : Integer;
    Idcargo: integer;
  end;

Type
  TdatosAsignado = class
    IdPostulante : integer;
    IdPlazaDetalle: Integer;
    Constructor Create;
  end;

Type
  TMovimientosPersonal = class
    PBaja : Integer;
    PCambioSalario : Integer;
    PCambioConvenio : Integer;
    PContratacion : Integer;
    PReingreso : Integer;
    Constructor Create;
  end;



  TFrmPersonalRhh = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    PopupMenu1: TPopupMenu;
    Nuevo1: TMenuItem;
    Abrir1: TMenuItem;
    Imprimir1: TMenuItem;
    N1: TMenuItem;
    cdpersonal: TClientDataSet;
    dspersonal: TDataSource;
    cdconvenio: TClientDataSet;
    dsconvenio: TDataSource;
    JvLabel20: TJvLabel;
    cdauxgenerales: TClientDataSet;
    dsauxgenerales: TDataSource;
    N2: TMenuItem;
    erminar1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    JvLabel27: TJvLabel;
    Button1: TButton;
    TabSheet11: TTabSheet;
    frxPreview1: TfrxPreview;
    JvDBImage1: TJvDBImage;
    GbDomicilio: TGroupBox;
    JvLabel40: TJvLabel;
    JvLabel41: TJvLabel;
    JvLabel42: TJvLabel;
    JvLabel43: TJvLabel;
    JvLabel44: TJvLabel;
    JvLabel45: TJvLabel;
    JvLabel46: TJvLabel;
    JvLabel47: TJvLabel;
    DBEditCalle: TDBEdit;
    DBEditNumero: TDBEdit;
    DBEditColonia: TDBEdit;
    DBEditMunicipio: TDBEdit;
    DBEditCiudad: TDBEdit;
    DBEditEstado: TDBEdit;
    DBEditPais: TDBEdit;
    DBEditCP: TDBEdit;
    GbNacimiento: TGroupBox;
    JvLabel48: TJvLabel;
    JvLabel49: TJvLabel;
    JvLabel50: TJvLabel;
    JvLabel51: TJvLabel;
    JvLabel52: TJvLabel;
    JvLabel53: TJvLabel;
    DBDateEdit4: TDBDateEdit;
    DBEdit3: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CdPlaza: TClientDataSet;
    DsPlaza: TDataSource;
    Panel1: TPanel;
    BtnMenuArchivo: TNxOptionButton;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Recomendaciones: TTabSheet;
    GroupBox11: TGroupBox;
    GrdDocumentos: TDBGrid;
    GroupBox12: TGroupBox;
    GroupBox7: TGroupBox;
    GrdBancarios: TDBGrid;
    GroupBox5: TGroupBox;
    Panel7: TPanel;
    tvDocumentos: TJvTreeView;
    GroupBox6: TGroupBox;
    BtnAddHistorial: TNxButton;
    BtnDeleteHistorial: TNxButton;
    BtnEditHistorial: TNxButton;
    CdDoctosPersonal: TClientDataSet;
    DsDoctosPersonal: TDataSource;
    CdDatosBancarios: TClientDataSet;
    DsDatosBancarios: TDataSource;
    CdPlazaPersonal: TClientDataSet;
    DsPlazaPersonal: TDataSource;
    Panel6: TPanel;
    AdvGroupBox1: TAdvGroupBox;
    DBEdit7: TDBEdit;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    DBEdit13: TDBEdit;
    JvLabel9: TJvLabel;
    DBEdit14: TDBEdit;
    JvLabel10: TJvLabel;
    DBEdit15: TDBEdit;
    JvLabel11: TJvLabel;
    DBEdit16: TDBEdit;
    CdExperiencia: TClientDataSet;
    DsExperiencia: TDataSource;
    GroupBox4: TGroupBox;
    BtnActivar: TNxButton;
    BtnAddBancarios: TNxButton;
    BtnDeleteBancarios: TNxButton;
    BtnEditBancarios: TNxButton;
    BtmAgergarDoc: TNxButton;
    BtnEditarDoc: TNxButton;
    BtnEliminarDoc: TNxButton;
    CdMemPersonal: TClientDataSet;
    JvDBImage2: TJvDBImage;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    frxReport1: TfrxReport;
    frxDBContrato: TfrxDBDataset;
    BtnMostrarPlazas: TAdvRepeatButton;
    CdPlazaPersonalSel: TClientDataSet;
    DsPlazaPersonalSel: TDataSource;
    GbInfPlaza: TGroupBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    CmbAcciones: TComboBox;
    JvLabel14: TJvLabel;
    JvLabel15: TJvLabel;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    JvLabel18: TJvLabel;
    JvLabel19: TJvLabel;
    MemPlaza: TJvMemoryData;
    DsMemPlaza: TDataSource;
    GbDescripcion: TGroupBox;
    JvLabel21: TJvLabel;
    DBMemo1: TDBMemo;
    GbPersonales: TGroupBox;
    JvLabel6: TJvLabel;
    DBDateEdit1: TDBDateEdit;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    Edt_Imss: TEdit;
    DBEdit4: TDBEdit;
    JvLabel12: TJvLabel;
    JvLabel5: TJvLabel;
    DBEdit5: TDBEdit;
    JvLabel26: TJvLabel;
    DBEdit12: TDBEdit;
    JvLabel24: TJvLabel;
    DBEdit9: TDBEdit;
    JvLabel25: TJvLabel;
    DBEdit10: TDBEdit;
    ChkInfonavit: TDBCheckBox;
    JvLabel28: TJvLabel;
    EdtNoInfonavit: TDBEdit;
    JvLabel33: TJvLabel;
    JvLabel3: TJvLabel;
    EdtNacionalidad: TAdvEditBtn;
    JvLabel37: TJvLabel;
    DBComboBox3: TDBComboBox;
    DBComboBox2: TDBComboBox;
    JvLabel38: TJvLabel;
    JvLabel39: TJvLabel;
    DBEdit2: TDBEdit;
    DBEdit17: TDBEdit;
    JvLabel13: TJvLabel;
    JvLabel22: TJvLabel;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    JvLabel23: TJvLabel;
    EdtNombreCompleto: TEdit;
    Panel3: TPanel;
    JvLabel1: TJvLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Nuevo1Click(Sender: TObject);
//  procedure Btn_GrabarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
//  procedure Abrir1Click(Sender: TObject);
    procedure BtnMenuArchivoClick(Sender: TObject);
//    procedure AdvGlowButton1Click(Sender: TObject);
//    procedure NxImagePathEdit1Change(Sender: TObject);
    procedure BtnEliminarDocClick(Sender: TObject);
    procedure NxImagePathEdit2Change(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Edt_ImssChange(Sender: TObject);
    procedure cdpersonalAfterScroll(DataSet: TDataSet);
    procedure cdpersonalAfterOpen(DataSet: TDataSet);
    procedure cdpersonalAfterInsert(DataSet: TDataSet);
    procedure cdpersonalAfterRefresh(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Panel4DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Panel4DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AbrirPersonal(Llave: Integer; Codigo: String);
    procedure CierraTodo;
//    procedure cbPostulantesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CdExperienciaAfterOpen(DataSet: TDataSet);
    procedure BtmAgergarDocClick(Sender: TObject);
    procedure BtnEditarDocClick(Sender: TObject);
    procedure BtnAddBancariosClick(Sender: TObject);
    procedure BtnEditBancariosClick(Sender: TObject);
    procedure BtnDeleteBancariosClick(Sender: TObject);
    procedure BtnActivarClick(Sender: TObject);
    procedure BtnAddHistorialClick(Sender: TObject);
    procedure BtnEditHistorialClick(Sender: TObject);
    procedure BtnDeleteHistorialClick(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNacionalidadClickBtn(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NxImagePathEdit2Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure erminar1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnMostrarPlazasClick(Sender: TObject);
    procedure ChkInfonavitClick(Sender: TObject);
  private
    MovimientosPersonal: TMovimientosPersonal;
    DatosAsignados : TdatosAsignado;
    codigopersonal: string;
    ingresopersonal: string;
    cdPostulante: TClientDataSet;
    MedidasGroupBox : TMedidasGroupBox;
    procedure CargarBuscarPersonal(ValorFiltrar: Integer; Codigo: String);
    procedure InabilitaCampos(Objeto: TWinControl; Modo: Boolean);
    procedure CambiarBotones(Modo: Boolean);
    procedure DocumentosATreeView;
    function verificarcambios(MemOriginal, CdActual: TclientDataset): Boolean;
    procedure DedondeViene(Sender: TObject);
    //procedure CerrarPersonal;
    procedure GuardarPersonal();
    procedure resetearventana();
    function CerrarPersonal: integer;
    procedure PlazasCerradas(var Msg: TMessage); message WM_SEHACERRADO;
    procedure BajadePersonal();
    procedure Reingreso;
    procedure CambioConvDep;
    procedure CambioSalario;
    procedure ValidarVacios;
  public
    { Public declarations }
    CambiosHechos : Boolean;
  end;

var
  FrmPersonalRhh: TFrmPersonalRhh;

implementation

uses
  ClientModuleUnit1, xDatabase, UTFrmPersonal, UTFrmSolicitaPersonal,
  UTFrmCatalogoBancos, UTFrmCargos, UTFrmDepartamentos, UTFrmAltaModDocumentos,
  UTFrmCatalogoSalarios, UTFrmSolicitarVacante, UTFrmConsultaPlazaDX,
  UTFfrmAltaModDocumentos, UTFrmDatosBancarios, UtFrmAltaExperiencia, UTFrmPais;

{$R *.dfm}
constructor TdatosAsignado.Create;
begin
  IdPostulante := -5;
  IdPlazaDetalle := -5;
end;

constructor TMovimientosPersonal.Create;
begin
  PBaja:= 1;
  PCambioSalario:= 2;
  PCambioConvenio:= 3;
  PContratacion:= 4;
  PReingreso:= 5;
end;

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

procedure TFrmPersonalRhh.CambiarBotones(Modo: Boolean);
begin
end;

procedure TFrmPersonalRhh.Imprimir1Click(Sender: TObject);
var
  aux: integer;
begin

end;

procedure TFrmPersonalRhh.InabilitaCampos(Objeto: TWinControl; Modo: Boolean);
const
  Tipos: Array[false..true] of Integer = (0, 1);
  PropName = 'BorderStyle';
var
  i: Integer;
  PInfo: PPropInfo;
begin
  for i := 0 to Objeto.ControlCount -1 do
  begin
    if Objeto.Controls[i].ClassType = TPanel then
      InabilitaCampos(TWinControl(Objeto.Controls[i]), Modo)
    else
      if IsPublishedProp(Objeto.Controls[i], PropName) then
      begin
        PInfo := GetPropInfo(Objeto.Controls[i].ClassInfo, PropName);
        if Assigned(PInfo) then
          SetOrdProp(TObject(Objeto.Controls[i]), PInfo, Tipos[Modo]);

        pInfo := GetPropInfo(Objeto.Controls[i].ClassInfo, 'ReadOnly');
        if Assigned(PInfo) then
          SetOrdProp(TObject(Objeto.Controls[i]), PInfo, 1)
        else
        begin
          pInfo := GetPropInfo(Objeto.Controls[i].ClassInfo, 'Enabled');
          if Assigned(PInfo) then
            SetOrdProp(TObject(Objeto.Controls[i]), PInfo, 0);
        end;

        if Modo then
          TDBEdit(Objeto.Controls[i]).Font.Style := [fsBold]
        else
          TDBEdit(Objeto.Controls[i]).Font.Style := [];
      end;
  end;
end;

procedure TFrmPersonalRhh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto([cdPostulante, cdPersonal]);
  LiberarVentana(Self, Action);

  if Assigned(FrmConsultaPlazaDX) then
  begin
    if FrmConsultaPlazaDX.Tag = 0 then
    begin
      FrmConsultaPlazaDX.FormStyle := fsMDIChild;
      FrmConsultaPlazaDX.WindowState := wsNormal;
    end
    else
      FrmConsultaPlazaDX.Close;
  end;
end;

procedure TFrmPersonalRhh.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  aux : boolean;
begin
//  CanClose := (Not cdPersonal.Active) or ((cdPersonal.Active) and (InteliDialog.ShowModal('No se han llenado los datos generales del personal. ', 'Esto puede carusar que este persona no pueda ser utilizado en otras funciones del sistema' + #10 + #10 +
        //'¿Desea continuar con otra operacion y dejar a este personal sin sus datos generales?', mtConfirmation, [mbYes, mbNo], 0) = mrYes));
    try
      if CdPersonal.State in [DsInsert, DsEdit] then
      begin
        aux:=VerificarCambios(CdMemPersonal, CdPersonal);
        if (aux=True) or (CambiosHechos=true) then
        begin
          case InteliDialog.ShowModal('Existen cambios pendientes de ser grabados.', '¿Desea grabar los datos antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
            mrYes: begin
              BitBtn1.Click;
            end;

            mrNo: begin
              CdPersonal.CancelUpdates;
              if EnTransaccion then
                CancelarTransaccion;
              CanClose:=True;
            end;

            mrCancel : begin
              if EnTransaccion then
                //CancelarTransaccion;
              CanClose:=false;
            end;
          end;
        end
        else
        begin
           if EnTransaccion then
              CancelarTransaccion;
           CanClose:=true;
        end;
      end
      else
      begin
        CanClose:=true;
      end;
    except
      on e:exception do
        InteliDialog.ShowModal('Error al crear la alta de documento del postulante.', e.Message, mtInformation, [mbOk], 0);
    end;
end;

procedure TFrmPersonalRhh.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  MovimientosPersonal:= TMovimientosPersonal.create;

  CambiosHechos := False;
  cdPostulante := TClientDataSet.Create(Self);

  DatosAsignados := TdatosAsignado.create;

  MedidasGroupBox := TMedidasGroupBox.create;
  MedidasGroupBox.GbPersonalesT:= GbPersonales.Top;
  MedidasGroupBox.GbDomicilioT:= GbDomicilio.Top;
  MedidasGroupBox.GbNacimientoT:= GbNacimiento.Top;
  MedidasGroupBox.GbDescripcionT:= GbDescripcion.Top;
  MedidasGroupBox.GroupBox1H:= GroupBox1.Height;

  // Verificar si la ventana de las plazas ya se encuentra abierta
  i := 0;
  while (i < Application.ComponentCount) and (Not Assigned(FrmConsultaPlazaDX)) do
  begin
    if Application.Components[i].ClassType = TFrmConsultaPlazaDX then
      FrmConsultaPlazaDX := Application.Components[i] as TFrmConsultaPlazaDX;
    Inc(i);
  end;

  BtnMostrarPlazas.Down := Assigned(FrmConsultaPlazaDX);
  if Assigned(FrmConsultaPlazaDX) then
    FrmConsultaPlazaDX.FormStyle := fsNormal;
end;

procedure TFrmPersonalRhh.FormDestroy(Sender: TObject);
begin
  cdPostulante.Free;
end;

procedure TFrmPersonalRhh.FormShow(Sender: TObject);
var
  OldCursor: TCursor;
begin
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdPostulante, 'rhu_postulante', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);

      if Not CrearConjunto(cdPersonal, 'nuc_personal', ccUpdate) then
        raise InteligentException.CreatebyCode(5, ['Personal']);

      if Not CrearConjunto(CdDoctosPersonal, 'rhu_docxpostulante', ccCatalog) then
        raise InteligentException.CreatebyCode(5, ['Documentos de Personal']);

      if Not CrearConjunto(cddatosbancarios, 'rhu_datosbancariosxpersonal', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Datos Bancarios del Postulante']);

      if Not CrearConjunto(cdplazapersonal, 'rhu_plaza', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Datos de la plaza']);

      if Not CrearConjunto(CdExperiencia, 'rhu_documentosrecomendacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos de Recomendación']);

      ClientModule1.ComponentColor(self);
      ingresopersonal := '';
      pagecontrol1.Visible := False;
      AccedeACoordenadas(Self);
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema: ' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmPersonalRhh.N1Click(Sender: TObject);
var
  aux: integer;
begin
  try
      if (pagecontrol1.Visible = true) then
      begin
        Aux:=CerrarPersonal;
        case Aux of
          mrcancel: begin  
            raise inteligentexception.Create('');
          end;
        
          -9: begin
            raise InteligentWarning.Create('Ha Ocurrido un error "Function CerrarPersonal" Value=-9');
          end;

          mrno : begin
            resetearventana;
          end;

          mryes: begin
            resetearventana;
          end;                
        end;
      end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Advertencia, Error: '+e.Message,'', mtInformation, [mbOk], 0);        
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha Ocurrido un error grave, Error: '+e.Message,'', mtInformation, [mbOk], 0);        
    end;
  end;
end;

procedure TFrmPersonalRhh.Nuevo1Click(Sender: TObject);
var
  Cursor : Tcursor;
  CdPlazaDetalle, CdAuxPostulante : TClientDataset;
  Aux: Integer;
begin
  try
    try
      if (pagecontrol1.Visible = true) then
      begin
        Aux:=CerrarPersonal;
        case Aux of
          mrcancel: begin
            raise inteligentexception.Create('');
          end;

          -9: begin
            raise InteligentWarning.Create('Ha Ocurrido un error "Function CerrarPersonal" Value=-9');
          end;

          mrno : begin
            resetearventana;
          end;

          mryes: begin
            resetearventana;
          end;
        end;
      end;
      CdPlazaDetalle:= TClientDataset.Create(nil);
      Application.CreateForm(TFrmSolicitarVacante, FrmSolicitarVacante);
      if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Plazas']);
      FrmSolicitarVacante.DsPlaza.DataSet:=CdPlazaDetalle;
      FrmSolicitarVacante.ShowModal;
      if FrmSolicitarVacante.resultado=mrok then
      begin
        if CdPlazaDetalle.FieldByName('IdPersonal').asinteger < 0 then
        begin
          try
            CdAuxPostulante := TClientDataset.Create(nil);
            if Not CrearConjunto(CdAuxPostulante, 'rhu_postulante', ccCatalog) then
              raise InteligentException.CreateByCode(5, ['Postulantes']);
            if Not CargarDatosFiltrados(CdAuxPostulante, 'IdPlaza,IdCargo,IdDepartamento', [FrmConsultaPlazaDX.cdPlaza.FieldByName('IdPlaza').AsInteger, FrmConsultaPlazaDX.cdPlaza.FieldByName('IdCargo').AsInteger, FrmConsultaPlazaDX.cdPlaza.FieldByName('IdDepartamento').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Postulantes', CdPlazaDetalle.FieldByName('CodigoPlazaDetalle').AsInteger, 'Código de Plaza']);
            CdAuxPostulante.Open;

            cdPersonal.Close;
            if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [-9]) then
              raise InteligentException.CreateByCode(6, ['Personal', '', 'Código de Personal']);
            cdPersonal.open;

            cdpersonal.Append;
            cdPersonal.FieldByName('FechaAlta').AsDateTime := Now;
            cdPersonal.FieldByName('CodigoPersonal').AsString := '<GENERACIÓN AUTOMÁTICA>';
            cdPersonal.FieldByName('idpersonal').AsInteger := 0;

          finally
            if assigned(CdAuxPostulante) then
              CdAuxPostulante.Free;
          end;
        end
        else
        begin
          AbrirPersonal(CdPlazaDetalle.FieldByName('IdPersonal').AsInteger, CdPlazaDetalle.FieldByName('CodigoPersonal').AsString);
          cdPersonal.Edit;
        end;
      end;
    finally
      if assigned(FrmSolicitarVacante) then
        FrmSolicitarVacante.Free;

      if assigned(CdPlazaDetalle) then
      begin
        EliminarConjunto(CdPlazaDetalle);
        CdPlazaDetalle.Free;
      end;
    end;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal('Error al guardar los datos ya ingresados. Error: ', e.Message, mtInformation,[mbOK],0);

    on e:exception do
      InteliDialog.ShowModal('Error al generar nuevo personal, por favor informe al adminsitrador del sistema del siguienbte error', e.Message, mtInformation,[mbOK],0);
  end;
end;

procedure TFrmPersonalRhh.Button1Click(Sender: TObject);
begin
  DedondeViene(sender);
end;

procedure TFrmPersonalRhh.ChkInfonavitClick(Sender: TObject);
begin
  if (CdPersonal.Active= True) and (CdPersonal.State in [DsInsert]) then
    if chkinfonavit.Checked then
    begin
      EdtNoInfonavit.Tag := 28;
      JvLabel33.Tag := 28;
    end
    else
    begin
      cdpersonal.FieldByName('NumeroInfonavit').AsString :='';
      EdtNoInfonavit.Tag := 0;
      JvLabel33.Tag := 0;
    end;
end;

procedure TFrmPersonalRhh.DedondeViene(Sender: TObject);
begin
  if (sender is TButton) then
    showmessage('Soy el boton: '+Tbutton(sender).Name);
end;

procedure TFrmPersonalRhh.BitBtn1Click(Sender: TObject);
  procedure OcultarAcciones ();
  begin
    GbInfPlaza.Visible := false;
    GbPersonales.Top:= MedidasGroupBox.GbPersonalesT;
    GbDomicilio.Top:= MedidasGroupBox.GbDomicilioT;
    GbNacimiento.Top:= MedidasGroupBox.GbNacimientoT;
    GbDescripcion.Top:= MedidasGroupBox.GbDescripcionT;
    GroupBox1.Height:= MedidasGroupBox.GroupBox1H;
    CmbAcciones.Clear;
  end;
var
 ControlCmb : Integer;
begin
  try
//    Integer(CmbAcciones.Items.Objects[CmbAcciones.ItemIndex])
    if CmbAcciones.Items.Count > 0 then
    begin
      ControlCmb :=Integer(CmbAcciones.Items.Objects[CmbAcciones.ItemIndex]);
      case ControlCmb of
       1: begin
         //Baja de Përsonal
         if InteliDialog.ShowModal('Atencion.', 'Al dar de baja a este peronasl:'+#10+#10+
         cdpersonal.FieldByName('codigopersonal').AsString+#10+cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString+#10+#10+', este volvera a ser un aspirante nuevamente, al mismo tiempo dejara libre la siguiente vacante:'+#10+
         #10+CdPlazaPersonal.FieldByName('CodigoPlaza').AsString+#10+CdPlazaPersonal.FieldByName('CodigoPlazaDetalle').AsString+#10+
         #10+CdPlazaPersonal.FieldByName('titulocargo').AsString+#10+CdPlazaPersonal.FieldByName('codigodepartamento').AsString+#10+
         #10+CdPlazaPersonal.FieldByName('codigoorganizacion').AsString+#10+#10+
         'Realmente desea dar de baja a este personal?', mtInformation, [mbYes, mbNo], 0)= MrNo then
            raise InteligentWarning.Create('');
         BajadePersonal();
         InteliDialog.ShowModal('Atencion.', 'La baja del personal se ha completado exitosamente', mtInformation, [mbOk], 0);
         N1.Click;
       end;
       2:begin
         //Cambio de Salario
         if InteliDialog.ShowModal('Atencion.', 'Se va a realizar un cambio de salario'+#10+#10+
         cdpersonal.FieldByName('codigopersonal').AsString+#10+cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString+#10+#10+', que se encuentra en la la siguiente plaza: '+#10+
         #10+CdPlazaPersonal.FieldByName('CodigoPlaza').AsString+#10+CdPlazaPersonal.FieldByName('CodigoPlazaDetalle').AsString+#10+
         #10+CdPlazaPersonal.FieldByName('titulocargo').AsString+#10+CdPlazaPersonal.FieldByName('codigodepartamento').AsString+#10+
         #10+CdPlazaPersonal.FieldByName('codigoorganizacion').AsString+#10+#10+
         'Pasara a pertenercer a la siguiente plaza'+#10+
         #10+MemPlaza.FieldByName('CodigoPlaza').AsString+#10+MemPlaza.FieldByName('CodigoPlazaDetalle').AsString+#10+
         #10+MemPlaza.FieldByName('titulocargo').AsString+#10+MemPlaza.FieldByName('codigodepartamento').AsString+#10+
         #10+MemPlaza.FieldByName('codigoorganizacion').AsString+#10+#10+'Desea realmente cambiar de salario a este personal?', mtInformation, [mbYes, mbNo], 0)= MrNo then
            raise InteligentWarning.Create('');
          CambioSalario();
         InteliDialog.ShowModal('Atencion.', 'El cambio de salario se ha hecho correctamente', mtInformation, [mbOk], 0);
         OcultarAcciones();
       end;
       3:begin
         //Cambio convenio
         if InteliDialog.ShowModal('Atencion.', 'Se va a realizar un cambio de convenio'+#10+#10+
         cdpersonal.FieldByName('codigopersonal').AsString+#10+cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString+#10+#10+', que se encuentra en la la siguiente plaza: '+#10+
         #10+CdPlazaPersonal.FieldByName('CodigoPlaza').AsString+#10+CdPlazaPersonal.FieldByName('CodigoPlazaDetalle').AsString+#10+
         #10+CdPlazaPersonal.FieldByName('titulocargo').AsString+#10+CdPlazaPersonal.FieldByName('codigodepartamento').AsString+#10+
         #10+CdPlazaPersonal.FieldByName('codigoorganizacion').AsString+#10+#10+
         'Pasara a pertenercer a la siguiente plaza'+#10+
         #10+MemPlaza.FieldByName('CodigoPlaza').AsString+#10+MemPlaza.FieldByName('CodigoPlazaDetalle').AsString+#10+
         #10+MemPlaza.FieldByName('titulocargo').AsString+#10+MemPlaza.FieldByName('codigodepartamento').AsString+#10+
         #10+MemPlaza.FieldByName('codigoorganizacion').AsString+#10+#10+'Desea realmente realizar este cambio de convenio?', mtInformation, [mbYes, mbNo], 0)= MrNo then
            raise InteligentWarning.Create('');
          CambioConvDep();
          InteliDialog.ShowModal('Atencion.', 'El cambio de convenio se ha hecho correctamente', mtInformation, [mbOk], 0);
         OcultarAcciones();
       end;
       4:begin
          //Contratacion
          GuardarPersonal;
          InteliDialog.ShowModal('Atencion.', 'Los Cambios se han guardado correctamente', mtInformation, [mbOk], 0);
          OcultarAcciones();
       end;
       5:begin
          //Reingreso
         if InteliDialog.ShowModal('Atencion.', 'Se va realizar un reingreso de personal: '+#10+#10+
         cdpersonal.FieldByName('codigopersonal').AsString+#10+cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString+#10+#10+', que se reingresara a la siguiente plaza'+
         #10+MemPlaza.FieldByName('CodigoPlaza').AsString+#10+MemPlaza.FieldByName('CodigoPlazaDetalle').AsString+#10+
         #10+MemPlaza.FieldByName('titulocargo').AsString+#10+MemPlaza.FieldByName('codigodepartamento').AsString+#10+
         #10+MemPlaza.FieldByName('codigoorganizacion').AsString+#10+#10+'Desea realmente realizar este cambio de convenio?', mtInformation, [mbYes, mbNo], 0)= MrNo then
            raise InteligentWarning.Create('');
          Reingreso();
          InteliDialog.ShowModal('Atencion.', 'El Reingreso se ha realizado correctamnte', mtInformation, [mbOk], 0);
          OcultarAcciones();
       end;
      end;
    end
    else
    begin
      GuardarPersonal;
      InteliDialog.ShowModal('Atencion.', 'Los Cambios se han guardado correctamente', mtInformation, [mbOk], 0);
      OcultarAcciones();
    end;

  Except
    on e: InteligentWarning do
    begin
      ;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal('Atencion.', e.Message, mtInformation, [mbOk], 0);

    on e: exception do
    begin
      InteliDialog.ShowModal('Se ha Producido un error desconocido, por favor indique sobre esto al administrador', e.Message, mtInformation, [mbOk], 0);
      if EnTransaccion then
        CancelarTransaccion;
    end;
  end;

end;


procedure TFrmPersonalRhh.BitBtn2Click(Sender: TObject);
var
  aux : Integer;
begin
    try
        if CdPersonal.State in [DsInsert] then
        begin  
          Aux:=CerrarPersonal;
          case Aux of
            mrcancel: begin  
              raise inteligentexception.Create('');
            end;
        
            -9: begin
              raise InteligentWarning.Create('Ha Ocurrido un error "Function CerrarPersonal" Value=-9');
            end;

            mrno : begin
              resetearventana;
            end;

            mryes: begin
              resetearventana;
            end;                
          end;
        end;
        if (CdPersonal.State in [dsEdit]) and 
        (InteliDialog.ShowModal('Advertencia', '¿Realmente desea cancelar los cambios realizados?', mtConfirmation, [mbYes, mbNo], 0)=MrYes)  then
        begin
          CdPersonal.CancelUpdates;
          CdPersonal.Refresh;
        end;
    except
      on e:inteligentwarning do
      begin
        InteliDialog.ShowModal('Ha Ocurrido un error grave, Error: '+e.Message,'', mtInformation, [mbOk], 0);    
      end;
    
      on e:exception do  
      begin  
        InteliDialog.ShowModal('Ha Ocurrido un error inesperado en el sistema, por favor informe al administrador. Error: ', e.Message, mtInformation, [mbOk], 0);
      end;
    end;
end;


procedure TFrmPersonalRhh.Btn_CancelarClick(Sender: TObject);
var
  CerrarAlFinal: Boolean;
begin
  try
    CerrarAlFinal := cdPersonal.State = dsInsert;

    cdPersonal.Cancel;

    if CerrarAlFinal then
      cdPersonal.Close;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al cancelar los datos informativos del personal.', e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmPersonalRhh.BtmAgergarDocClick(Sender: TObject);
var
  CdUptDocumentos: TClientDataSet;
begin
  try
    try
      application.CreateForm(TFrmAltaModDocumentos, FrmAltaModDocumentos);

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
          CdUptDocumentos.FieldByName('idpostulante').AsInteger := cdpersonal.FieldByName('idpostulante').asinteger;
          CdUptDocumentos.FieldByName('fechaexpedicion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechavigencia').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechaaplicacion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('Activo').AsString := 'Si';
          FrmAltaModDocumentos.dsDatos.DataSet := CdUptDocumentos;
          FrmAltaModDocumentos.ShowModal;
          if FrmAltaModDocumentos.Resultado=mrOk then
            CambiosHechos:=true;

          CdDoctosPersonal.Refresh;

        finally
          EliminarConjunto(CdUptDocumentos);
        end;

      finally
        if Assigned(CdUptDocumentos) then
          FreeAndNil(CdUptDocumentos);
      end;

    finally
      FrmAltaModDocumentos.Free;
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

procedure TFrmPersonalRhh.BtnActivarClick(Sender: TObject);
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

        Consulta := 'Update rhu_datosbancariosxpersonal set estado = "Inactiva" where idpostulante = '+QuotedStr(cdPostulante.FieldByName('idpostulante').AsString);
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

procedure TFrmPersonalRhh.BtnAddBancariosClick(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  try
    try
      application.CreateForm(TFrmDatosBancarios, FrmDatosBancarios);

      cdUptCuentas := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptCuentas, 'rhu_datosbancariosxpersonal', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Cuentas bancarias por postulante']);
        try

          if not CargarDatosFiltrados(cdUptCuentas,'idpostulante',[-9]) then
            raise InteligentConnection.CreateByCode(4, ['Cuentas bancarias por postulante']);

          cdUptCuentas.Open;

          cdUptCuentas.Append;
          cdUptCuentas.FieldByName('Iddatosbancariosxpersonal').AsInteger :=0;
          if cddatosbancarios.RecordCount > 0 then
            cdUptCuentas.FieldByName('Estado').AsString := 'Inactiva'
          else
            cdUptCuentas.FieldByName('Estado').AsString := 'Activada';

          cdUptCuentas.FieldByName('idpostulante').AsInteger := CdPersonal.FieldByName('idpostulante').asinteger;
          cdUptCuentas.FieldByName('Fechadeaplicacion').AsDateTime:=now;
          cdUptCuentas.FieldByName('Activo').AsString := 'Si';
          FrmDatosBancarios.dsDatos.DataSet := cdUptCuentas;
          FrmDatosBancarios.ShowModal;
          if FrmDatosBancarios.Resultado = mrok then
           CambiosHechos:=true;

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

procedure TFrmPersonalRhh.BtnAddHistorialClick(Sender: TObject);
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
          cdUptExperiencia.FieldByName('idpostulante').AsInteger := CdPersonal.FieldByName('idpostulante').asinteger;
          cdUptExperiencia.FieldByName('fechainicio').AsDateTime:= Now;
          cdUptExperiencia.FieldByName('fechatermino').AsDateTime:= Now;
          cdUptExperiencia.FieldByName('activo').AsString:= 'si';
          cdUptExperiencia.FieldByName('tipo').AsString:= 'Laboral';
          FrmAltaExperiencia.dsDatos.DataSet := cdUptExperiencia;
          FrmAltaExperiencia.ShowModal;
          //Agregar Documento al alrbol una ves agregado.
          if FrmAltaExperiencia.Resultado=mrOk then
          begin
            CdExperiencia.Refresh;
            if cdUptExperiencia.FieldByName('Tipo').AsString='Personal' then
            begin
               CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
               new(InfcartaPer);
               InfcartaPer^.IdDocumentosRecomendacion:=FrmAltaExperiencia.LastId;

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
              if assigned(Nodocargo) then
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
              end
              else
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
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

procedure TFrmPersonalRhh.BtnDeleteBancariosClick(Sender: TObject);
begin
  try
    if InteliDialog.ShowModal('AVISO','Va a eliminar una de las cuentas bancarias de esta persona.', '¿Realmente desea eliminar la cuenta bancaria seleccionada?', mtInformation,[mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('');

    if cddatosbancarios.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Historial']);

    BorrarRegistro('rhu_datosbancariosxpersonal', [cddatosbancarios.FieldByName('Iddatosbancariosxpersonal').AsInteger]);
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

procedure TFrmPersonalRhh.BtnDeleteHistorialClick(Sender: TObject);
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

procedure TFrmPersonalRhh.BtnEditarDocClick(Sender: TObject);
var
  CdUptDocumentos: TClientDataSet;
begin
  try
    try
      if CdDoctosPersonal.RecordCount < 1 then
        raise InteligentConnection.CreateByCode(26, ['Documentos']);

      application.CreateForm(TFrmAltaModDocumentos, FrmAltaModDocumentos);

      CdUptDocumentos := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(CdUptDocumentos, 'rhu_docxpostulante', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
        try

          if not CargarDatosFiltrados(CdUptDocumentos,'iddocxpostulante',[CdDoctosPersonal.FieldByName('iddocxpostulante').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);

          CdUptDocumentos.Open;

          if CdUptDocumentos.RecordCount <> 1 then
            raise InteligentException.Create('El Registro no se pudo localizar.');

          CdUptDocumentos.Edit;
          FrmAltaModDocumentos.dsDatos.DataSet := CdUptDocumentos;
          FrmAltaModDocumentos.ShowModal;
          if FrmAltaModDocumentos.Resultado=mrOk then
            CambiosHechos:=true;

          CdDoctosPersonal.Refresh;

        finally
          EliminarConjunto(CdUptDocumentos);
        end;

      finally
        if Assigned(CdUptDocumentos) then
          FreeAndNil(CdUptDocumentos);
      end;

    finally
      FrmAltaModDocumentos.Free;
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

procedure TFrmPersonalRhh.BtnEditBancariosClick(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  try
    try

      if cddatosbancarios.RecordCount < 1 then
        raise InteligentConnection.CreateByCode(26, ['Cuentas bancarias']);

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
           CambiosHechos:=true;

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

procedure TFrmPersonalRhh.BtnEditHistorialClick(Sender: TObject);
var
  cdUptExperiencia: TClientDataSet;
  NodoAux, Nodo, Nodocargo : TTReeNode;
  TipoAnterior : string;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;
  i, IdDoc : integer;

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

      NodoAux := ConocerNivelInicial(TvDocumentos.Selected);

      if ((NodoAux.Index=0) and (TvDocumentos.Selected.Level<>2))
      or ((NodoAux.Index=1) and (TvDocumentos.Selected.Level<>1) ) then
      raise Inteligentwarning.Create('');

      Nodo:=TvDocumentos.Selected;
      IdDoc := TCartaInfLab(Nodo.Data).IdDocumentosRecomendacion;

      if CdExperiencia.RecordCount < 1 then
        raise InteligentConnection.CreateByCode(26, ['Historial']);

      application.CreateForm(TFrmAltaExperiencia, FrmAltaExperiencia);

      cdUptExperiencia := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptExperiencia, 'rhu_documentosrecomendacion', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos de Recomendación']);
        try
          if not CargarDatosFiltrados(cdUptExperiencia,'iddocumentosrecomendacion',[TCartaInfLab(Nodo.Data).IdDocumentosRecomendacion]) then
            raise InteligentConnection.CreateByCode(4, ['Documentos de recomendacion']);

          cdUptExperiencia.Open;

          if cdUptExperiencia.RecordCount <> 1 then
            raise InteligentException.CreateByCode(13, [CdExperiencia.fieldbyname('Descripcion').AsString, 'Documentos de Recomendación']);

          cdUptExperiencia.Edit;

          FrmAltaExperiencia.dsDatos.DataSet := cdUptExperiencia;
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
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
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

procedure TFrmPersonalRhh.BtnEliminarDocClick(Sender: TObject);
begin
 try
    if InteliDialog.ShowModal('AVISO','Va a eliminar uno de los documentos presentado por esta persona.', '¿Realmente desea eliminar el documento seleccionada?', mtInformation,[mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('');

    if CdDoctosPersonal.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Documentos']);

    BorrarRegistro('rhu_docxpostulante', [CdDoctosPersonal.FieldByName('iddocxpostulante').AsInteger]);
    CambiosHechos:=true;
    CdDoctosPersonal.Refresh;
  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al eliminar documento del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;
end;


procedure TFrmPersonalRhh.NxButton1Click(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(DsPersonal.dataset.FieldByName('doccontratacion')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

procedure TFrmPersonalRhh.NxButton2Click(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(DsPersonal.dataset.FieldByName('imagen')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

{ procedure TFrmPersonalRhh.NxImagePathEdit1Change(Sender: TObject);
  begin
    if (Length(Trim(NxImagePathEdit1.Text)) > 0) and (NxImagePathEdit1.Text <> 'Dirección') then
    begin
      try
        JvDBImage1.Picture.Bitmap.LoadFromFile(NxImagePathEdit1.Text);
      Except
        InteliDialog.ShowModal('Error al cargar imagen, verifique que el tipo sea bmp.','', mtInformation, [mbOk], 0);
      end;
    end;
  end;}

procedure TFrmPersonalRhh.NxImagePathEdit2Change(Sender: TObject);
begin
{   if (Length(Trim(NxImagePathEdit2.Text)) > 0) and (NxImagePathEdit2.Text <> 'Documento Contratacion') then
    begin
      try
        DBImage2.Picture.Bitmap.LoadFromFile(NxImagePathEdit2.Text);
      Except
        InteliDialog.ShowModal('Error al cargar imagen, verifique que el tipo sea bmp.','', mtInformation, [mbOk], 0);
      end;
    end;}
end;

procedure TFrmPersonalRhh.NxImagePathEdit2Click(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(DsPersonal.dataset.FieldByName('doccontratacion')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

procedure TFrmPersonalRhh.BtnMenuArchivoClick(Sender: TObject);
Var
  Point :Tpoint;
begin
  try
    BtnMenuArchivo.SetFocus;
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmPersonalRhh.PageControl1Change(Sender: TObject);
begin
   if (cdPersonal.State = dsInsert) and (PageControl1.ActivePageIndex<>0) then
      pagecontrol1.ActivePageIndex:=0;
end;

procedure TFrmPersonalRhh.Panel4DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Postulantes : TClientDataSet;
  i, j : integer;
  TfieldPostulante, TfieldPersonal : string;
  FIndField : Boolean;
begin
  // Verificar si se arrastró una vacante o un puesto ocupado
  try
    if (assigned(FrmConsultaPlazaDX)) and (Source <> nil) and (Source.ClassType = TAdvListView) and (TAdvListView(Source).Name = 'lvAsignados')then
        if (FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('Categoria').AsInteger < 0) then
        begin
          //cargar Informacion de la plaza disponible
            DsMemPlaza.DataSet := nil;
            if MemPlaza.Active = true then
            begin
              MemPlaza.First;
              while not Memplaza.Eof do
              begin
                MemPlaza.Delete;
              end;
              Memplaza.Close;
            end;
            Memplaza.Open;
            MemPlaza.LoadFromDataSet(FrmConsultaPlazaDX.cdPlaza, 1, lmCopy);
            DsMemPlaza.DataSet := MemPlaza;

            cdPersonal.Close;
            if Not CargarDatosFiltrados(cdpersonal, 'idpostulante', [FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('idpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Personal', -9, 'Código de Personal']);
            cdPersonal.open;

           if cdPersonal.RecordCount = 0 then
           begin
              cdpersonal.Append;
              cdPostulante.Close;
              if not CargarDatosFiltrados(cdPostulante, 'IdPostulante', [FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('idpostulante').AsInteger]) then
               raise InteligentException.CreateByCode(6, ['Postulantes', FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('NombreCompleto').AsString, 'IdPostulante']);
              cdPostulante.Open;

              if (cdPostulante.RecordCount = 0) and (cdPostulante.RecordCount > 1) then
                raise InteligentException.Create('Error al cargar al postulante');
              //begin
                // Darle tratamiento diferente al número de seguro social
                Edt_Imss.Text := Copy(cdPostulante.FieldByName('NumeroSeguroSocial').AsString, 1, 10);
                Edt_ImssChange(Sender);

                // Cambiar los datos en pantalla por los del nuevo postulante
                for i := 0 to (CdPostulante.FieldDefs.Count-1) do
                begin
                   j:=0;
                   TFieldPostulante:=CdPostulante.FieldDefs.Items[i].Name;
                   FindField:=false;
                   while (j<=(CdPersonal.FieldDefs.Count-1)) and (FindField=False) do
                   begin
                     TfieldPersonal:=CdPersonal.FieldDefs.Items[j].Name;
                     if AnsiCompareText(TfieldPersonal, TfieldPostulante)=0 then
                     begin
                       FIndField:=true;
                       CdPersonal.FieldByName(TfieldPostulante).AsVariant:=CdPostulante.FieldByName(TfieldPostulante).AsVariant;
                     end;
                     j:=j+1;
                   end;
                //end;
                cdPersonal.FieldByName('FechaAlta').AsDateTime := Now;
                cdPersonal.FieldByName('CodigoPersonal').AsString := '<GENERACIÓN AUTOMÁTICA>';
                cdPersonal.FieldByName('idpersonal').AsInteger := 0;
                DatosAsignados.IdPostulante := FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('idpostulante').AsInteger;
                DatosAsignados.IdPlazaDetalle := FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('idplazadetalle').AsInteger;
                EdtNombreCompleto.Text := cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString;
              end;
              GbInfPlaza.Visible := true;
              GbPersonales.Top:= MedidasGroupBox.GbPersonalesT+105;
              GbDomicilio.Top:= MedidasGroupBox.GbDomicilioT+105;
              GbNacimiento.Top:= MedidasGroupBox.GbNacimientoT+105;
              GbDescripcion.Top:= MedidasGroupBox.GbDescripcionT+105;
              GroupBox1.Height:= MedidasGroupBox.GroupBox1H+105;
              CmbAcciones.Clear;
              CmbAcciones.AddItem('Contratacion de Personal', Tobject(MovimientosPersonal.PContratacion));
              CmbAcciones.ItemIndex := 0;
           end
           else
           begin
              AbrirPersonal(cdPersonal.FieldByName('IdPersonal').AsInteger, cdPersonal.FieldByName('CodigoPersonal').AsString);
              EdtNombreCompleto.Text := cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString;
              cdPersonal.Edit;
              GbInfPlaza.Visible := true;
              GbPersonales.Top:= MedidasGroupBox.GbPersonalesT+105;
              GbDomicilio.Top:= MedidasGroupBox.GbDomicilioT+105;
              GbNacimiento.Top:= MedidasGroupBox.GbNacimientoT+105;
              GbDescripcion.Top:= MedidasGroupBox.GbDescripcionT+105;
              GroupBox1.Height:= MedidasGroupBox.GroupBox1H+105;
              CmbAcciones.Clear;
              CmbAcciones.AddItem('Reingreso del personal', Tobject(MovimientosPersonal.PReingreso));
              CmbAcciones.ItemIndex := 0;
           end;
        end
        else
        begin
          //cargar Informacion de la plaza disponible
          DsMemPlaza.DataSet := nil;
          if MemPlaza.Active = true then
          begin
            MemPlaza.First;
            while not Memplaza.Eof do
            begin
              MemPlaza.Delete;
            end;
            Memplaza.Close;
          end;
          Memplaza.Open;
          MemPlaza.LoadFromDataSet(FrmConsultaPlazaDX.cdPlaza, 1, lmCopy);
          DsMemPlaza.DataSet := MemPlaza;

          AbrirPersonal(FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('IdPersonal').AsInteger, FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('CodigoPersonal').AsString);
          EdtNombreCompleto.Text := cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString;
          cdPersonal.Edit;

          GbInfPlaza.Visible := True;
          GbPersonales.Top:= MedidasGroupBox.GbPersonalesT+105;
          GbDomicilio.Top:= MedidasGroupBox.GbDomicilioT+105;
          GbNacimiento.Top:= MedidasGroupBox.GbNacimientoT+105;
          GbDescripcion.Top:= MedidasGroupBox.GbDescripcionT+105;
          GroupBox1.Height:= MedidasGroupBox.GroupBox1H+105;
          CmbAcciones.Clear;

          if MemPlaza.FieldByName('IdCargo').AsInteger = CdPersonal.FieldByName('IdCargo').AsInteger then
            CmbAcciones.AddItem('Realizar Cambio de Departamento/Convenio', TObject(MovimientosPersonal.PCambioConvenio))
          else
            CmbAcciones.AddItem('Realizar Cambio de Salaario/Puesto', TObject(MovimientosPersonal.PCambioSalario));
          CmbAcciones.AddItem('Realizar Baja de Personal', TObject(MovimientosPersonal.PBaja));
          CmbAcciones.ItemIndex := 0;
        end;

    if (assigned(FrmConsultaPlazaDX)) and (Source <> nil) and (Source.ClassType = TAdvListView) and (TAdvListView(Source).Name = 'lvPlaza') then
      if (FrmConsultaPlazaDX.cdPlaza.FieldByName('IdPersonal').AsInteger = -5) then
      begin
        CmbAcciones.Clear;
        raise inteligentexception.Create('La plaza que ha seleccionado se encuentra en estado vacante.'+#10+'Por favor seleccione sus aspirantes para contratacion o seleccione una plaza ocupada para editar su personal');
      end
      else
      begin
        AbrirPersonal(FrmConsultaPlazaDX.cdPlaza.FieldByName('IdPersonal').AsInteger, FrmConsultaPlazaDX.CdAsigPlaza.FieldByName('CodigoPersonal').AsString);
        EdtNombreCompleto.Text := cdpersonal.FieldByName('Nombres').AsString+' '+cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString;
        cdPersonal.Edit;
        GbInfPlaza.Visible := false;
        GbPersonales.Top:= MedidasGroupBox.GbPersonalesT;
        GbDomicilio.Top:= MedidasGroupBox.GbDomicilioT;
        GbNacimiento.Top:= MedidasGroupBox.GbNacimientoT;
        GbDescripcion.Top:= MedidasGroupBox.GbDescripcionT;
        GroupBox1.Height:= MedidasGroupBox.GroupBox1H;
        CmbAcciones.Clear;
      end;
      FrmConsultaPlazaDX.WindowState := wsMinimized;
  except
    on e:inteligentexception do
    begin
        InteliDialog.ShowModal('Aviso: ', e.Message, mtInformation, [mbOk], 0);
    end;

    on e:exception do
    begin
        InteliDialog.ShowModal('Error desconocido, pro favor informa al administrador, Error: .', e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmPersonalRhh.Panel4DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//  if (Sender.ClassType = TPanel) and (TPanel(Sender).Name = 'Panel4') and (Source.ClassType = TAdvListView) and (Assigned(TAdvListView(Source).Selected)) then
//    Accept := True;
  if (Sender.ClassType = TPanel) and (TPanel(Sender).Name = 'Panel4') and (Source.ClassType = TAdvListView) and (Assigned(TAdvListView(Source).Selected)) then
    Accept := True;
end;

procedure TFrmPersonalRhh.CargarBuscarPersonal(ValorFiltrar: Integer; Codigo: String);
begin
  try

    cdPersonal.Close;
    if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [ValorFiltrar]) then
      raise InteligentException.CreateByCode(6, ['Personal', Codigo, 'Código de Personal']);
    cdPersonal.open;

  except
    on e:InteligentException do
    begin
      CierraTodo;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:exception do
    begin
      CierraTodo;
      InteliDialog.ShowModal('Error en elm proceso de cargar datos del personal.', e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

{
  procedure TFrmPersonalRhh.cbPostulantesChange(Sender: TObject);
  var
    i, j : integer;
    TfieldPostulante, TfieldPersonal : string;
    FIndField : Boolean;
  begin
    if not CargarDatosFiltrados(cdPostulante, 'IdPostulante', [Integer(cbPostulantes.Items.Objects[cbPostulantes.ItemIndex])]) then
      raise InteligentException.CreateByCode(6, ['Postulantes', Integer(cbPostulantes.Items.Objects[cbPostulantes.ItemIndex]), 'IdPostulante']);

    if cdPostulante.Active then
      cdPostulante.Refresh
    else
      cdPostulante.Open;

    if cdPostulante.RecordCount = 1 then
    begin
      // Darle tratamiento diferente al número de seguro social
      Edt_Imss.Text := Copy(cdPostulante.FieldByName('NumeroSeguroSocial').AsString, 1, 10);
      Edt_ImssChange(Sender);

      // Cambiar los datos en pantalla por los del nuevo postulante
      for i := 0 to (CdPostulante.FieldDefs.Count-1) do
      begin
         j:=0;
         TFieldPostulante:=CdPostulante.FieldDefs.Items[i].Name;
         FindField:=false;
         while (j<=(CdPersonal.FieldDefs.Count-1)) and (FindField=False) do
         begin
           TfieldPersonal:=CdPersonal.FieldDefs.Items[j].Name;
           if AnsiCompareText(TfieldPersonal, TfieldPostulante)=0 then
           begin
             FIndField:=true;
             CdPersonal.FieldByName(TfieldPostulante).AsVariant:=CdPostulante.FieldByName(TfieldPostulante).AsVariant;
           end;
           j:=j+1;
         end;
      end;
      cdPersonal.FieldByName('FechaAlta').AsDateTime := Now;
      cdPersonal.FieldByName('CodigoPersonal').AsString := '<GENERACIÓN AUTOMÁTICA>';
      cdPersonal.FieldByName('idpersonal').AsInteger := 0;
    end;
  end;
}

procedure TFrmPersonalRhh.CdExperienciaAfterOpen(DataSet: TDataSet);
begin
  DocumentosATreeView;
end;

procedure TFrmPersonalRhh.cdpersonalAfterInsert(DataSet: TDataSet);
begin
  CambiarBotones(True);
  Edt_Imss.Enabled := True;
end;

procedure TFrmPersonalRhh.cdpersonalAfterOpen(DataSet: TDataSet);
begin
  // Mostrar los datos cada vez que se abra el dataset
  PageControl1.Visible         := True;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmPersonalRhh.cdpersonalAfterRefresh(DataSet: TDataSet);
begin
  CambiarBotones(False);
  Edt_Imss.Enabled := False;
end;

procedure TFrmPersonalRhh.cdpersonalAfterScroll(DataSet: TDataSet);
begin
  Edt_Imss.Text := Copy(cdPersonal.FieldByName('NumeroSeguroSocial').AsString, 1, 10);
  JvLabel12.Caption := Copy(cdPersonal.FieldByName('NumeroSeguroSocial').AsString, 11, 1);
end;

procedure TFrmPersonalRhh.EdtNacionalidadClickBtn(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmPais;
begin
  Try
    tForm := TFrmPais.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      CdPersonal.FieldByName('nacionalidad').AsInteger := registro.Valor['idpais'];
      EdtNacionalidad.Text :=registro.Valor['titulopais'];
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmPersonalRhh.Edt_ImssChange(Sender: TObject);
var
  Digito: String;
begin
  if cdPersonal.Active and (cdPersonal.State <> dsBrowse) then
  begin
    Digito := DigitoVerificador(Edt_Imss.Text);
    JvLabel12.Caption := '-' + Digito;
    if Digito <> '' then
      cdPersonal.FieldByName('NumeroSeguroSocial').AsString := Edt_Imss.Text + Digito
    else
      cdPersonal.FieldByName('NumeroSeguroSocial').AsString := '';
  end;
end;

procedure TFrmPersonalRhh.erminar1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPersonalRhh.Abrir1Click(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmPersonal;
  Aux: integer;
begin
  Try
    if (pagecontrol1.Visible = true) then
    begin
      Aux:=CerrarPersonal;
      case Aux of
        mrcancel: begin
          raise inteligentexception.Create('');
        end;

        -9: begin
          raise InteligentWarning.Create('Ha Ocurrido un error "Function CerrarPersonal" Value=-9');
        end;

        mrno : begin
          resetearventana;
        end;

        mryes: begin
          resetearventana;
        end;
      end;
    end;
    tForm := TFrmPersonal.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      AbrirPersonal(registro.Valor['IdPersonal'], registro.Valor['CodigoPersonal']);
      cdPersonal.Edit;
    end;
    tForm.Free;
  except
    on e:inteligentexception do
    begin
      ;
    end;

    on e:inteligentwarning do
    begin
      InteliDialog.ShowModal('Ha Ocurrido un error grave, Error: '+e.Message,'', mtInformation, [mbOk], 0);    
    end;
    
    on e:exception do  
    begin  
      InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmPersonalRhh.AbrirPersonal(Llave: Integer; Codigo: String);

procedure copiardataset (CdtOrigen : TClientDataset; CdtDestino: TclientDataset);
var
 i: integer;
 Campo : string;
begin
  try
    for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
    begin
      CdtDestino.FieldDefs.Add(CdtOrigen.FieldDefs.Items[i].Name,
      CdtOrigen.FieldDefs.Items[i].DataType,
      CdtOrigen.FieldDefs.Items[i].Size,
      False);
    end;

    CdtDestino.CreateDataSet;
    CdtDestino.Open;
    CdtDestino.Append;
    for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
    begin
      Campo := CdtOrigen.FieldDefs.Items[i].Name;
      CdtDestino.FieldValues[Campo]:=CdtOrigen.FieldValues[Campo];
    end;
    CdtDestino.Post;
  except
    raise;
  end;
end;

procedure limpiardataset (CdMemoria: TClientDataset);
begin
  try
    CdMemoria.First;
    while not Cdmemoria.Eof do
    begin
      CdMemoria.delete;
    end;
    CdMemoria.FieldDefs.Clear;  
    CdMemoria.Close;
  except
    raise;
  end;
end;

var
  CdAuxPais : TClientDataset;
  locname : string;

begin
  try
    try
      Cursor:=Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdPersonal.Close;

      if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [LLave]) then
        raise InteligentException.CreateByCode(6, ['Personal', Codigo, 'Código de Personal']);
      cdPersonal.open;

{       CbPostulantes.AddItem(CdPersonal.FieldByName('Nombres').AsString+' '+CdPersonal.FieldByName('APaterno').AsString+' '+CdPersonal.FieldByName('AMaterno').AsString, nil);
        CbPostulantes.ItemIndex:=0;}

      try
        try
          CdAuxPais := Tclientdataset.Create(nil);
          if Not CrearConjunto(CdAuxPais, 'nuc_pais', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Pais']);

          if Not CargarDatosFiltrados(CdAuxPais, 'idpais', [cdPersonal.FieldByName('nacionalidad').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Pais', cdPersonal.FieldByName('IdPostulante').AsInteger, 'IdPais']);
          CdAuxPais.Open;

          EdtNacionalidad.Text :=CdAuxPais.FieldByName('titulopais').AsString;
        except
          on e:InteligentException do
          begin
            InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
          end;
        end;
      finally
        if assigned(CdAuxPais) then
        begin
          EliminarConjunto(CdAuxPais);
          CdAuxPais.Free;
        end;
      end;

      CdDoctosPersonal.Close;
      if Not CargarDatosFiltrados(CdDoctosPersonal, 'IdPostulante', [cdPersonal.FieldByName('IdPostulante').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Documentos de Personal', cdPersonal.FieldByName('IdPostulante').AsInteger, 'IdPostulante']);
      CdDoctosPersonal.Open;

      CdDatosBancarios.Close;
      if Not CargarDatosFiltrados(CdDatosBancarios, 'IdPostulante', [cdPersonal.FieldByName('IdPostulante').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Datos bancarios del personal', cdPersonal.FieldByName('IdPostulante').AsInteger, 'IdPostulante']);
      CdDatosBancarios.Open;

      CdPlazaPersonal.Close;
      if Not CargarDatosFiltrados(CdPlazaPersonal, 'IdPersonal', [LLave]) then
        raise InteligentException.CreateByCode(6, ['Plaza del Personal', llave, 'IdPersonal']);
      CdPlazaPersonal.Open;

      CdExperiencia.Close;
      if Not CargarDatosFiltrados(CdExperiencia, 'IdPostulante', [cdPersonal.FieldByName('IdPostulante').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Experiencia del Personal', cdPersonal.FieldByName('IdPostulante').AsInteger, 'IdPostulante']);
      CdExperiencia.Open;

      pagecontrol1.Visible:=true;
      Pagecontrol1.ActivePageIndex:=0;
      Screen.Cursor := crDefault;

      if CdMemPersonal.Active=true then
        LimpiarDataset(CdMemPersonal);

      copiardataset(CdPersonal, CdMemPersonal);

      frxreport1.Clear;
      LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmPersonalRhh_Contrato.fr3';

      if FileExists(LocName) then
      begin
        frxReport1.LoadFromFile(LocName);
        frxReport1.ShowReport(TRUE);
      end;


    finally
      Screen.Cursor:=Cursor;
    end;
  except
    raise;
  end;
end;

procedure TFrmPersonalRhh.BtnMostrarPlazasClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    if Assigned(FrmConsultaPlazaDX) then
    begin
      // Mostrar la ventana de plazas
      FrmConsultaPlazaDX.Show;
      FrmConsultaPlazaDX.WindowState := wsNormal;
      BtnMostrarPlazas.Down := True;
    end
    else
    begin
      // Abrir la ventana de plazas
      Application.CreateForm(TFrmConsultaPlazaDX, FrmConsultaPlazaDX);
      FrmConsultaPlazaDX.FormStyle := fsNormal;
      FrmConsultaPlazaDX.Tag := 1;
      if FrmConsultaPlazaDX.cdPlaza.ProviderName <> '' then
        FrmConsultaPlazaDX.AbreDatos;

      BtnMostrarPlazas.Down := True;
    end;

    if FrmConsultaPlazaDX.cdPlaza.ProviderName <> '' then
      FrmConsultaPlazaDX.Show;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmPersonalRhh.CierraTodo;
begin
  cdPersonal.Close;

  PageControl1.Visible := False;
end;

procedure TFrmPersonalRhh.DocumentosATreeView;
var
  Lista: TStringList;
  Nodo, Nodo2: TTreeNode;
  Duracion, Anios, Meses: Word;
  CadDura: String;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;
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
        new(InfcartaPer);
        InfcartaPer^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
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
        //Creo El Puntero de para almacenarlo junto con el nodo.
        New(InfCartaLab);

        InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
        InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;

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

function TFrmPersonalRhh.verificarcambios (MemOriginal : Tclientdataset; CdActual : TclientDataset): Boolean;
var
  HayCambios : boolean;
  i : integer;
begin
  try
    for i := 0 to (MemOriginal.FieldDefs.Count-1) do
      if (MemOriginal.FieldDefs.Items[i].DataType <> FtBlob) and (MemOriginal.FieldValues[MemOriginal.FieldDefs.Items[i].Name] <>
        CdActual.FieldValues[MemOriginal.FieldDefs.Items[i].Name])then
      HayCambios:=True
    else
    begin
      if (MemOriginal.FieldDefs.Items[i].DataType = FtBlob) and (MemOriginal.FieldByName(MemOriginal.FieldDefs.Items[i].Name).AsWideString <>
        CdActual.FieldByName(MemOriginal.FieldDefs.Items[i].Name).AsWideString)then
      HayCambios:=True;
    end;
    Result := Haycambios;
  except
    Result :=True;
  end;
end;

//###########Procedimientos de Control##########################################
Function TFrmPersonalRhh.CerrarPersonal : integer;
var
  aux : boolean;
  Resultado : integer;
begin
    try
      if CdPersonal.State in [DsInsert, DsEdit] then
      begin
        aux:=VerificarCambios(CdMemPersonal, CdPersonal);
        if (aux=True) or (CambiosHechos=true) then
        begin
          case InteliDialog.ShowModal('Existen cambios pendientes de ser grabados.', '¿Desea grabar los datos antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
            mrYes: begin
              GuardarPersonal;
              resultado:=mrYes;
            end;

            mrNo: begin
              CdPersonal.CancelUpdates;
              if EnTransaccion then
               CancelarTransaccion;
              CdPersonal.CancelUpdates;
              resultado:=mrNo;
            end;

            mrCancel : begin
              if EnTransaccion then
                resultado:=mrCancel;
              end;
          end;
        end
        else
        begin
           if EnTransaccion then
              CancelarTransaccion;
           resultado:=mrno;
        end;
      end
      else
      begin
        resultado:=mrno;
      end;
      result := resultado;
    except
      resultado:=-9;
      result:=resultado;
    end;
end;

procedure TFrmPersonalRhh.GuardarPersonal();

  procedure copiardataset (CdtOrigen : TClientDataset; CdtDestino: TclientDataset);
  var
   i: integer;
   Campo : string;
  begin
    try
      for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
      begin
        CdtDestino.FieldDefs.Add(CdtOrigen.FieldDefs.Items[i].Name,
        CdtOrigen.FieldDefs.Items[i].DataType,
        CdtOrigen.FieldDefs.Items[i].Size,
        False);
      end;

      CdtDestino.CreateDataSet;
      CdtDestino.Open;
      CdtDestino.Append;
      for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
      begin
        Campo := CdtOrigen.FieldDefs.Items[i].Name;
        CdtDestino.FieldValues[Campo]:=CdtOrigen.FieldValues[Campo];
      end;
      CdtDestino.Post;
    except
      raise;
    end;
  end;

  procedure limpiardataset (CdMemoria: TClientDataset);
  begin
    try
      CdMemoria.First;
      while not Cdmemoria.Eof do
      begin
        CdMemoria.delete;
      end;
      CdMemoria.FieldDefs.Clear;
      CdMemoria.Close;
    except
      raise;
    end;
  end;

Var
  CdPostulante, CdPlazaDetalle, CdAltaPerImms,CdPosSobrantes, CdConsultaPzDisp : TclientDataset;
  NombreCampo, Locname : string;
  i, j, UltimoIdPersonal : integer;
  OldCursor: TCursor;
begin
  try
   //Validar casillas vacias
    ValidarVacios;
    try
      Cursor:=Screen.Cursor;
      Screen.Cursor := crAppStart;

      IniciarTransaccion;
      //Comienzo por la contratacion de un personal
      if CdPersonal.State in [DsInsert] then
      begin
        CdPostulante:=Tclientdataset.Create(nil);
        CdPlazaDetalle:=Tclientdataset.Create(nil);
        CdAltaPerImms:=Tclientdataset.Create(nil);

        //Se crea conjunto de postulante de tipo update
        if Not CrearConjunto(cdPostulante, 'rhu_postulante', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Postulantes']);
        if Not CargarDatosFiltrados(CdPostulante, 'IdPostulante', [DatosAsignados.IdPostulante]) then
          raise InteligentException.CreateByCode(6, ['Postulante', inttostr(DatosAsignados.IdPostulante), 'IdPostulante']);
        CdPostulante.Open;

        //se crea conjunto de plaza detalle para actualizar el estatus de la plaza
        if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['PLaza']);
        if Not CargarDatosFiltrados(CdPlazaDetalle, 'IdPlazaDetalle', [DatosAsignados.IdPlazaDetalle]) then
          raise InteligentException.CreateByCode(6, ['Plaza', inttostr(DatosAsignados.IdPlazaDetalle), 'Plaza']);
        CdPlazaDetalle.Open;

        //Se Guarda Movimiento en la tabla de personal imss
        if Not CrearConjunto(CdAltaPerImms, 'nuc_personalimss', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Alta Imms']);
        if Not CargarDatosFiltrados(CdAltaPerImms, 'IdPersonalIMSS', [-9]) then
          raise InteligentException.CreateByCode(6, ['ALta Imms', -9, 'IdPersonalIMSS']);
        CdAltaPerImms.Open;

        //Repercuto lso datos de la plaza en la tabla de personal
        CdPersonal.FieldByName('idplaza').AsInteger:=CdPlazaDetalle.FieldByName('IdPlaza').AsInteger;
        CdPersonal.FieldByName('IdPlazaDetalle').AsInteger:=CdPlazaDetalle.FieldByName('IdPlazaDetalle').AsInteger;
        CdPersonal.FieldByName('idcargo').AsInteger:=CdPlazaDetalle.FieldByName('IdCargo').AsInteger;
        CdPersonal.FieldByName('iddepartamento').AsInteger:=CdPlazaDetalle.FieldByName('IdDepartamento').AsInteger;

        //Todos los datos del personnal lso repercuto en la tabal de psotulante para actualizacion
        CdPostulante.edit;
        for i := 0 to (CdPostulante.FieldDefs.Count-1) do
        begin
          for j := 0 to (CdPersonal.FieldDefs.Count-1) do
          begin
            if AnsiCompareText(CdPostulante.FieldDefs.Items[i].Name, CdPersonal.FieldDefs.Items[j].Name)=0 then
            begin
              NombreCampo:=CdPostulante.FieldDefs.Items[i].Name;
              CdPostulante.FieldByName(NombreCampo).AsVariant:=CdPersonal.FieldByName(NombreCampo).AsVariant;
            end;
          end;
        end;
        CdPostulante.Post;
        CdPostulante.ApplyUpdates(-1);

        CdPersonal.Post;
        CdPersonal.ApplyUpdates(-1);

        UltimoIdPersonal:=UltimoId;

        //Doy de alta el movimiento en el imss
        CdAltaPerImms.Append;
        CdAltaPerImms.FieldByName('IdPersonalIMSS').AsInteger:=0;
        CdAltaPerImms.FieldByName('IdPersonal').AsInteger:=UltimoIdPersonal;
        CdAltaPerImms.FieldByName('FechaMovimiento').AsDateTime:=now;
        CdAltaPerImms.FieldByName('FechaRegistro').AsDateTime:=now;
        CdAltaPerImms.FieldByName('TipoMovimiento').AsString:='Alta';
        CdAltaPerImms.FieldByName('IdPlazaDetalle').AsInteger:=CdPersonal.FieldByName('IdPlazaDetalle').AsInteger;
        CdAltaPerImms.FieldByName('Procesado').AsString:='Si';
        CdAltaPerImms.Post;
        CdAltaPerImms.ApplyUpdates(-1);

        //A la plaza le coloco el numero de personal que obtengo para informar que esta ocupada
        CdPlazaDetalle.Edit;
        CdPlazaDetalle.FieldByName('IdPersonal').AsInteger:=UltimoIdPersonal;

        CdPlazaDetalle.Post;
        CdPlazaDetalle.ApplyUpdates(-1);

        if EnTransaccion then
          ConcretarTransaccion;

        cdPersonal.Close;
        Abrirpersonal(UltimoIdPersonal, '');
      end
      else
      begin
        //en caso que el personal sea editado
        if CdPersonal.State in [DsEdit] then
        begin
          CdPersonal.Post;
          CdPersonal.ApplyUpdates(-1);
          if EnTransaccion then
            ConcretarTransaccion;
          CdPersonal.Refresh;

          frxreport1.Clear;
          LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmPersonalRhh_Contrato.fr3';

          if FileExists(LocName) then
          begin
            frxReport1.LoadFromFile(LocName);
            frxReport1.ShowReport(TRUE);
          end;

          if CdMemPersonal.Active=true then
            LimpiarDataset(CdMemPersonal);

          copiardataset(CdPersonal, CdMemPersonal);
          CdPersonal.Edit;
        end;
      end;

    finally
      if assigned(CdPostulante) then
      begin
        EliminarConjunto(cdPostulante);
        CdPostulante.Free;
      end;

      if assigned(CdAltaPerImms) then
      begin
        EliminarConjunto(CdAltaPerImms);
        CdAltaPerImms.Free;
      end;

      if assigned(CdPlazaDetalle) then
      begin
        EliminarConjunto(CdPlazaDetalle);
        CdPlazaDetalle.Free;
      end;

      Screen.Cursor := OldCursor;
    end;
  Except
    on e:InteligentException do
    begin
      raise;
    end;
    
    on e: exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      raise;
    end;
  end;
end;

procedure TFrmPersonalRhh.resetearventana();
var
  OldCursor: TCursor;
begin
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdPostulante.close;
      cdPersonal.close;
      CdDoctosPersonal.close;
      cddatosbancarios.close;
      cdplazapersonal.close;
      CdExperiencia.close;

      //CbPostulantes.Items.Clear;
      TvDocumentos.Items.Clear;
      TvDocumentos.Items.Add(nil, 'Profesional');
      TvDocumentos.Items.Add(nil, 'Personal');

      if Not CrearConjunto(cdPostulante, 'rhu_postulante', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);

      if Not CrearConjunto(cdPersonal, 'nuc_personal', ccUpdate) then
        raise InteligentException.CreatebyCode(5, ['Personal']);

      if Not CrearConjunto(CdDoctosPersonal, 'rhu_docxpostulante', ccCatalog) then
        raise InteligentException.CreatebyCode(5, ['Documentos de Personal']);

      if Not CrearConjunto(cddatosbancarios, 'rhu_datosbancariosxpersonal', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Datos Bancarios del Postulante']);

      if Not CrearConjunto(cdplazapersonal, 'rhu_plaza', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Datos de la plaza']);

      if Not CrearConjunto(CdExperiencia, 'rhu_documentosrecomendacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos de Recomendación']);

      ingresopersonal := '';
      pagecontrol1.Visible := False;
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      raise;
    end;

    on e:Exception do
    begin
      raise;
    end;
  End;
end;

procedure TFrmPersonalRhh.PlazasCerradas(var Msg: TMessage);
begin
  FrmConsultaPlazaDX := Nil;
  BtnMostrarPlazas.Down := False;
end;


procedure TFrmPersonalRhh.BajadePersonal();
var
  CdPostulante, CdPlazaDetalle, CdAltaPerImms : TclientDataset;
  OldCursor: TCursor;
begin
  try
    ValidarVacios();
    try
      Cursor:=Screen.Cursor;
      Screen.Cursor := crAppStart;
      IniciarTransaccion;

      CdPostulante:=Tclientdataset.Create(nil);
      CdPlazaDetalle:=Tclientdataset.Create(nil);
      CdAltaPerImms:=Tclientdataset.Create(nil);

      //Se crea conjunto de postulante de tipo update
      if Not CrearConjunto(cdPostulante, 'rhu_postulante_aux', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not CargarDatosFiltrados(CdPostulante, 'IdPostulante', [CdPersonal.FieldByName('idpostulante').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Postulante', inttostr(DatosAsignados.IdPostulante), 'IdPostulante']);
      CdPostulante.Open;

      //se crea conjunto de plaza detalle para actualizar el estatus de la plaza
      if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['PLaza']);
      if Not CargarDatosFiltrados(CdPlazaDetalle, 'IdPlazaDetalle', [CdPersonal.FieldByName('IdPlazaDetalle').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Plaza', inttostr(DatosAsignados.IdPlazaDetalle), 'Plaza']);
      CdPlazaDetalle.Open;

      //Se Guarda Movimiento en la tabla de personal imss
      if Not CrearConjunto(CdAltaPerImms, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Alta Imms']);
      if Not CargarDatosFiltrados(CdAltaPerImms, 'IdPersonalIMSS', [-9]) then
        raise InteligentException.CreateByCode(6, ['ALta Imms', -9, 'IdPersonalIMSS']);
      CdAltaPerImms.Open;


      CdPostulante.Edit;
      CdPostulante.FieldByName('IdPlazaDetalle').AsInteger :=-5;
      CdPostulante.FieldByName('idcargo').AsInteger :=-5;
      CdPostulante.FieldByName('iddepartamento').AsInteger :=-5;
      CdPostulante.FieldByName('idplaza').AsInteger :=-5;
      CdPostulante.Post;
      CdPostulante.ApplyUpdates(-1);

      CdPlazaDetalle.Edit;
      CdPlazaDetalle.FieldByName('IdPersonal').AsInteger := -5;
      CdPlazaDetalle.Post;
      CdPlazaDetalle.ApplyUpdates(-1);

      CdAltaPerImms.Append;
      CdAltaPerImms.FieldByName('IdPersonalIMSS').AsInteger:=0;
      CdAltaPerImms.FieldByName('IdPersonal').AsInteger:=CdPersonal.FieldByName('idpersonal').AsInteger;
      CdAltaPerImms.FieldByName('FechaMovimiento').AsDateTime:=now;
      CdAltaPerImms.FieldByName('FechaRegistro').AsDateTime:=now;
      CdAltaPerImms.FieldByName('TipoMovimiento').AsString:='Baja';
      CdAltaPerImms.FieldByName('IdPlazaDetalle').AsInteger:=CdPersonal.FieldByName('IdPlazaDetalle').AsInteger;
      CdAltaPerImms.FieldByName('Procesado').AsString:='Si';
      CdAltaPerImms.Post;
      CdAltaPerImms.ApplyUpdates(-1);

      CdPersonal.FieldByName('Activo').AsString := 'No';
      CdPersonal.FieldByName('idplaza').AsInteger := -5;
      CdPersonal.FieldByName('idcargo').AsInteger := -5;
      CdPersonal.FieldByName('iddepartamento').AsInteger := -5;
      CdPersonal.FieldByName('IdPlazaDetalle').AsInteger := -5;
      CdPersonal.Post;
      CdPersonal.ApplyUpdates(-1);

      if EnTransaccion then
        ConcretarTransaccion;

    Finally
      if assigned(CdPostulante) then
      begin
        EliminarConjunto(cdPostulante);
        CdPostulante.Free;
      end;

      if assigned(CdAltaPerImms) then
      begin
        EliminarConjunto(CdAltaPerImms);
        CdAltaPerImms.Free;
      end;

      if assigned(CdPlazaDetalle) then
      begin
        EliminarConjunto(CdPlazaDetalle);
        CdPlazaDetalle.Free;
      end;

      Screen.Cursor := OldCursor;
    end;
  except
    on e:inteligentexception do
    begin
      raise;
    end;

    on e:exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      raise;
    end;
  end;
end;


procedure TFrmPersonalRhh.Reingreso();
var
  CdPlazaDetalle, CdAltaPerImms : TclientDataset;
  OldCursor: TCursor;
  IdPersonal: integer;
begin
  try
    ValidarVacios();
    try
      Cursor:=Screen.Cursor;
      Screen.Cursor := crAppStart;

      CdPlazaDetalle := TClientDataset.Create(nil);
      CdAltaPerImms := TClientDataset.Create(nil);

      //se crea conjunto de plaza detalle para actualizar el estatus de la plaza
      if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['PLaza']);
      if Not CargarDatosFiltrados(CdPlazaDetalle, 'IdPlazaDetalle', [MemPlaza.FieldByName('IdPlazaDetalle').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Plaza', MemPlaza.FieldByName('IdPlazaDetalle').AsInteger, 'Plaza']);
      CdPlazaDetalle.Open;

      //Se Guarda Movimiento en la tabla de personal imss
      if Not CrearConjunto(CdAltaPerImms, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Alta Imms']);
      if Not CargarDatosFiltrados(CdAltaPerImms, 'IdPersonalIMSS', [-9]) then
        raise InteligentException.CreateByCode(6, ['ALta Imms', -9, 'IdPersonalIMSS']);
      CdAltaPerImms.Open;

      //Repercuto lso datos de la plaza en la tabla de personal
      IdPersonal:= cdpersonal.FieldByName('idpersonal').AsInteger;
      CdPersonal.FieldByName('idplaza').AsInteger:= MemPlaza.FieldByName('IdPlaza').AsInteger;
      CdPersonal.FieldByName('IdPlazaDetalle').AsInteger:= MemPlaza.FieldByName('IdPlazaDetalle').AsInteger;
      CdPersonal.FieldByName('idcargo').AsInteger:= MemPlaza.FieldByName('IdCargo').AsInteger;
      CdPersonal.FieldByName('iddepartamento').AsInteger:= MemPlaza.FieldByName('IdDepartamento').AsInteger;
      CdPersonal.FieldByName('Activo').AsString := 'Si';
      CdPersonal.Post;
      CdPersonal.ApplyUpdates(-1);

      CdPlazaDetalle.Edit;
      CdPlazaDetalle.FieldByName('IdPersonal').AsInteger := cdpersonal.FieldByName('idpersonal').AsInteger;
      CdPlazaDetalle.Post;
      CdPlazaDetalle.ApplyUpdates(-1);


      CdAltaPerImms.Append;
      CdAltaPerImms.FieldByName('IdPersonalIMSS').AsInteger:= 0;
      CdAltaPerImms.FieldByName('IdPersonal').AsInteger:= cdpersonal.FieldByName('idpersonal').AsInteger;
      CdAltaPerImms.FieldByName('FechaMovimiento').AsDateTime:= now;
      CdAltaPerImms.FieldByName('FechaRegistro').AsDateTime:= now;
      CdAltaPerImms.FieldByName('TipoMovimiento').AsString:= 'Reingreso';
      CdAltaPerImms.FieldByName('IdPlazaDetalle').AsInteger:= MemPlaza.FieldByName('IdPlazaDetalle').AsInteger;;
      CdAltaPerImms.FieldByName('Procesado').AsString:= 'Si';
      CdAltaPerImms.Post;
      CdAltaPerImms.ApplyUpdates(-1);

      if EnTransaccion then
        ConcretarTransaccion;

      cdPersonal.Close;
      Abrirpersonal(IdPersonal, '');

    Finally
      if assigned(CdAltaPerImms) then
      begin
        EliminarConjunto(CdAltaPerImms);
        CdAltaPerImms.Free;
      end;

      if assigned(CdPlazaDetalle) then
      begin
        EliminarConjunto(CdPlazaDetalle);
        CdPlazaDetalle.Free;
      end;

      Screen.Cursor := OldCursor;
    end;
  except
    on e:inteligentexception do
    begin
      raise;
    end;

    on e:exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      raise;
    end;
  end;
end;


procedure TFrmPersonalRhh.CambioConvDep();
var
  CdPlazaDetalle, CdAltaPerImms : TclientDataset;
  OldCursor: TCursor;
  IdPersonal : integer;
begin
  try
    ValidarVacios();
    try
      Cursor:=Screen.Cursor;
      Screen.Cursor := crAppStart;

      CdPlazaDetalle := TClientDataset.Create(nil);
      CdAltaPerImms := TClientDataset.Create(nil);

      //se crea conjunto de plaza detalle para actualizar el estatus de la plaza
      if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['PLaza']);
      if Not CargarDatosFiltrados(CdPlazaDetalle, 'IdPlazaDetalle', [CdPersonal.FieldByName('IdPlazaDetalle').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Plaza', CdPersonal.FieldByName('IdPlazaDetalle').AsInteger, 'Plaza']);
      CdPlazaDetalle.Open;

      //Desocupo la plazaactual
      CdPlazaDetalle.Edit;
      CdPlazaDetalle.FieldByName('IdPersonal').AsInteger := -5;
      CdPlazaDetalle.Post;
      CdPlazaDetalle.ApplyUpdates(-1);

      CdPlazaDetalle.Close;
      //Actualizo la nueva plaza
{       if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['PLaza']);}
      if Not CargarDatosFiltrados(CdPlazaDetalle, 'IdPlazaDetalle', [MemPlaza.FieldByName('IdPlazaDetalle').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Plaza', MemPlaza.FieldByName('IdPlazaDetalle').AsInteger, 'Plaza']);
      CdPlazaDetalle.Open;

      CdPlazaDetalle.Edit;
      CdPlazaDetalle.FieldByName('IdPersonal').AsInteger := CdPersonal.FieldByName('idpersonal').AsInteger;;
      CdPlazaDetalle.Post;
      CdPlazaDetalle.ApplyUpdates(-1);

      //Se Guarda Movimiento en la tabla de personal imss
      if Not CrearConjunto(CdAltaPerImms, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Alta Imms']);
      if Not CargarDatosFiltrados(CdAltaPerImms, 'IdPersonalIMSS', [-9]) then
        raise InteligentException.CreateByCode(6, ['ALta Imms', -9, 'IdPersonalIMSS']);
      CdAltaPerImms.Open;

      //Doy de Alta el movimiento de cambio
      CdAltaPerImms.Append;
      CdAltaPerImms.FieldByName('IdPersonalIMSS').AsInteger:=0;
      CdAltaPerImms.FieldByName('IdPersonal').AsInteger:=CdPersonal.FieldByName('idpersonal').AsInteger;
      CdAltaPerImms.FieldByName('FechaMovimiento').AsDateTime:=now;
      CdAltaPerImms.FieldByName('FechaRegistro').AsDateTime:=now;
      CdAltaPerImms.FieldByName('TipoMovimiento').AsString:='Movimiento';
      CdAltaPerImms.FieldByName('IdPlazaDetalle').AsInteger:=MemPlaza.FieldByName('IdPlazaDetalle').AsInteger;
      CdAltaPerImms.FieldByName('Procesado').AsString:='Si';
      CdAltaPerImms.Post;
      CdAltaPerImms.ApplyUpdates(-1);

      //Actualixo la plaza del personal
      IdPersonal:= cdpersonal.FieldByName('idpersonal').AsInteger;
      CdPersonal.FieldByName('idplaza').AsInteger:= MemPlaza.FieldByName('IdPlaza').AsInteger;
      CdPersonal.FieldByName('IdPlazaDetalle').AsInteger:= MemPlaza.FieldByName('IdPlazaDetalle').AsInteger;
      CdPersonal.FieldByName('idcargo').AsInteger:= MemPlaza.FieldByName('IdCargo').AsInteger;
      CdPersonal.FieldByName('iddepartamento').AsInteger:= MemPlaza.FieldByName('IdDepartamento').AsInteger;
      CdPersonal.FieldByName('Activo').AsString := 'Si';
      CdPersonal.Post;
      CdPersonal.ApplyUpdates(-1);

      if EnTransaccion then
        ConcretarTransaccion;

      cdPersonal.Close;
      Abrirpersonal(IdPersonal, '');
    finally
      if assigned(CdPostulante) then
      begin
        EliminarConjunto(CdPlazaDetalle);
        CdPlazaDetalle.Free;
      end;

      if assigned(CdAltaPerImms) then
      begin
        EliminarConjunto(CdAltaPerImms);
        CdAltaPerImms.Free;
      end;

      Screen.Cursor := OldCursor;
    end;
  except
    on e:inteligentexception do
    begin
      raise;
    end;

    on e:exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      raise;
    end;
  end;
end;


procedure TFrmPersonalRhh.CambioSalario();
var
  CdPlazaDetalle, CdAltaPerImms : TclientDataset;
  OldCursor: TCursor;
  IdPersonal : integer;

begin
  try
    ValidarVacios();
    try
      Cursor:=Screen.Cursor;
      Screen.Cursor := crAppStart;

      CdPlazaDetalle := TClientDataset.Create(nil);
      CdAltaPerImms := TClientDataset.Create(nil);

      //se crea conjunto de plaza detalle para actualizar el estatus de la plaza
      if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['PLaza']);
      if Not CargarDatosFiltrados(CdPlazaDetalle, 'IdPlazaDetalle', [CdPersonal.FieldByName('IdPlazaDetalle').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Plaza', CdPersonal.FieldByName('IdPlazaDetalle').AsInteger, 'Plaza']);
      CdPlazaDetalle.Open;

      //Desocupo la plazaactual
      CdPlazaDetalle.Edit;
      CdPlazaDetalle.FieldByName('IdPersonal').AsInteger := -5;
      CdPlazaDetalle.Post;
      CdPlazaDetalle.ApplyUpdates(-1);

      //Abro al nueva plaza
      CdPlazaDetalle.Close;
{       if Not CrearConjunto(CdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['PLaza']);}
      if Not CargarDatosFiltrados(CdPlazaDetalle, 'IdPlazaDetalle', [MemPlaza.FieldByName('IdPlazaDetalle').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Plaza', MemPlaza.FieldByName('IdPlazaDetalle').AsInteger, 'Plaza']);
      CdPlazaDetalle.Open;

      //Actualizo la nueva plaza
      CdPlazaDetalle.Edit;
      CdPlazaDetalle.FieldByName('IdPersonal').AsInteger := CdPersonal.FieldByName('idpersonal').AsInteger;;
      CdPlazaDetalle.Post;
      CdPlazaDetalle.ApplyUpdates(-1);

      //Se Guarda Movimiento en la tabla de personal imss
      if Not CrearConjunto(CdAltaPerImms, 'nuc_personalimss', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Alta Imms']);
      if Not CargarDatosFiltrados(CdAltaPerImms, 'IdPersonalIMSS', [-9]) then
        raise InteligentException.CreateByCode(6, ['ALta Imms', -9, 'IdPersonalIMSS']);
      CdAltaPerImms.Open;

      //Hago movimiento de baja correspondiente a cambio de puesto
      CdAltaPerImms.Append;
      CdAltaPerImms.FieldByName('IdPersonalIMSS').AsInteger:=0;
      CdAltaPerImms.FieldByName('IdPersonal').AsInteger:=CdPersonal.FieldByName('idpersonal').AsInteger;
      CdAltaPerImms.FieldByName('FechaMovimiento').AsDateTime:=now;
      CdAltaPerImms.FieldByName('FechaRegistro').AsDateTime:=now;
      CdAltaPerImms.FieldByName('TipoMovimiento').AsString:='Baja';
      CdAltaPerImms.FieldByName('IdPlazaDetalle').AsInteger:=CdPersonal.FieldByName('IdPlazaDetalle').AsInteger;
      CdAltaPerImms.FieldByName('Procesado').AsString:='Si';
      CdAltaPerImms.Post;
      CdAltaPerImms.ApplyUpdates(-1);

      //Hago movimiento de alta correspondiente a cambio de puesto
      CdAltaPerImms.Append;
      CdAltaPerImms.FieldByName('IdPersonalIMSS').AsInteger:= 0;
      CdAltaPerImms.FieldByName('IdPersonal').AsInteger:= CdPersonal.FieldByName('idpersonal').AsInteger;
      CdAltaPerImms.FieldByName('FechaMovimiento').AsDateTime:= now;
      CdAltaPerImms.FieldByName('FechaRegistro').AsDateTime:= now;
      CdAltaPerImms.FieldByName('TipoMovimiento').AsString:= 'Alta';
      CdAltaPerImms.FieldByName('IdPlazaDetalle').AsInteger:= MemPlaza.FieldByName('IdPlazaDetalle').AsInteger;
      CdAltaPerImms.FieldByName('Procesado').AsString:= 'Si';
      CdAltaPerImms.Post;
      CdAltaPerImms.ApplyUpdates(-1);


      //Actualizo la plaza del personal
      IdPersonal:= cdpersonal.FieldByName('idpersonal').AsInteger;
      CdPersonal.FieldByName('idplaza').AsInteger:= MemPlaza.FieldByName('IdPlaza').AsInteger;
      CdPersonal.FieldByName('IdPlazaDetalle').AsInteger:= MemPlaza.FieldByName('IdPlazaDetalle').AsInteger;
      CdPersonal.FieldByName('idcargo').AsInteger:= MemPlaza.FieldByName('IdCargo').AsInteger;
      CdPersonal.FieldByName('iddepartamento').AsInteger:= MemPlaza.FieldByName('IdDepartamento').AsInteger;
      CdPersonal.FieldByName('Activo').AsString := 'Si';
      CdPersonal.Post;
      CdPersonal.ApplyUpdates(-1);

      if EnTransaccion then
        ConcretarTransaccion;

      cdPersonal.Close;
      Abrirpersonal(IdPersonal, '');

    finally
      if assigned(CdPostulante) then
      begin
        EliminarConjunto(CdPlazaDetalle);
        CdPlazaDetalle.Free;
      end;

      if assigned(CdAltaPerImms) then
      begin
        EliminarConjunto(CdAltaPerImms);
        CdAltaPerImms.Free;
      end;

      Screen.Cursor := OldCursor;
    end;
  except
    on e:inteligentexception do
    begin
      raise;
    end;

    on e:exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      raise;
    end;
  end;
end;

procedure TFrmPersonalRhh.ValidarVacios ();
var
  i, j : integer;
  Cajas : TWincontrol;
  Nombres : TstringList;
  Mensaje : string;
begin
    Nombres := Tstringlist.Create;
    for i := 0 to self.ComponentCount-1 do
    begin
      if (self.Components[i] is Twincontrol) then
      begin
        Cajas:=Twincontrol(self.Components[i]);

        if assigned(cajas.Parent) and (cajas.Parent.Name='GbPersonales') and (cajas.ClassType = Tedit) and (Tedit(cajas).Text='') and (Tedit(cajas).Tag > 0)then
        begin
          for j := 0 to (self.ComponentCount-1) do
          begin
             if (self.Components[j].ClassType = TJVLabel) and (cajas.Tag = TJVLabel(self.Components[j]).tag) then
               Nombres.Add(TJVLabel(self.Components[j]).Caption);
          end;
        end;

        if assigned(cajas.Parent) and (cajas.Parent.Name='GbPersonales') and (cajas.ClassType = TDbEdit) and (TDbEdit(cajas).Text='') and (TDbEdit(cajas).Tag > 0) then
        begin
          for j := 0 to (self.ComponentCount-1) do
          begin
             if (self.Components[j].ClassType = TJVLabel) and (cajas.Tag = TJVLabel(self.Components[j]).tag) then
               Nombres.Add(TJVLabel(self.Components[j]).Caption);
          end;
        end;

        if assigned(cajas.Parent) and (cajas.Parent.Name='GbPersonales') and (cajas.ClassType = TAdvEditBtn) and (TAdvEditBtn(cajas).Text='') and (TAdvEditBtn(cajas).Tag > 0) then
        begin
          for j := 0 to (self.ComponentCount-1) do
          begin
             if (self.Components[j].ClassType = TJVLabel) and (cajas.Tag = TJVLabel(self.Components[j]).tag) then
               Nombres.Add(TJVLabel(self.Components[j]).Caption);
          end;
        end;


        if assigned(cajas.Parent) and (cajas.Parent.Name='GbPersonales') and (cajas.ClassType = TdbComboBox) and (TdbComboBox(cajas).Text='') and (TdbComboBox(cajas).Tag > 0) then
        begin
          for j := 0 to (self.ComponentCount-1) do
          begin
             if (self.Components[j].ClassType = TJVLabel) and (cajas.Tag = TJVLabel(self.Components[j]).tag) then
               Nombres.Add(TJVLabel(self.Components[j]).Caption);
          end;
        end;

        if assigned(cajas.Parent) and (cajas.Parent.Name='GbDomicilio') and (cajas.ClassType = TDbEdit) and (Tedit(cajas).Text='') and (Tedit(cajas).Tag > 0) then
        begin
          for j := 0 to (self.ComponentCount-1) do
          begin
             if (self.Components[j].ClassType = TJVLabel) and (cajas.Tag = TJVLabel(self.Components[j]).tag) then
               Nombres.Add(TJVLabel(self.Components[j]).Caption);
          end;
        end;


        if assigned(cajas.Parent) and (cajas.Parent.Name='GbNacimiento') and (cajas.ClassType = TDbEdit) and (TDbEdit(cajas).Text='') and (TDbEdit(cajas).Tag > 0) then
        begin
          for j := 0 to (self.ComponentCount-1) do
          begin
             if (self.Components[j].ClassType = TJVLabel) and (cajas.Tag = TJVLabel(self.Components[j]).tag) then
               Nombres.Add(TJVLabel(self.Components[j]).Caption);
          end;
        end;


        if assigned(cajas.Parent) and (cajas.Parent.Name='GbNacimiento') and (cajas.ClassType = TdbDateEdit) and (datetostr(TdbDateEdit(cajas).date)='30/12/1899') and (TdbDateEdit(cajas).Tag > 0) then
        begin
          for j := 0 to (self.ComponentCount-1) do
          begin
             if (self.Components[j].ClassType = TJVLabel) and (cajas.Tag = TJVLabel(self.Components[j]).tag) then
               Nombres.Add(TJVLabel(self.Components[j]).Caption);
          end;
        end;

      end;
    end;

    if CdPersonal.FieldByName('doccontratacion').AsVariant = null then
      Nombres.Add('Documento Contratacion');

    if nombres.Count>0 then
    begin
      Mensaje:='No se puede guardar al personal ya que falta llenar los siguientes campos: ';
      for i := 0 to Nombres.Count-1 do
      begin
        Mensaje:=Mensaje+#10+Nombres[i];
      end;
      raise Inteligentexception.Create(Mensaje);
    end;
end;



end.
