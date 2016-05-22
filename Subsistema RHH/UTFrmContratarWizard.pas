unit UTFrmContratarWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficePager, AdvSmoothLabel, AdvSmoothButton, AdvSmoothPanel,
  StdCtrls, AdvCombo, DBClient, DB, ClientModuleUnit1, AdvEdit, DBCtrls,
  JvExControls, JvLabel, Mask, DBAdvEd, ExtCtrls, AdvDBComboBox, frxClass,
  frxDBSet, ComCtrls, AdvDateTimePicker, AdvDBDateTimePicker, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, UTFrmPeriodoGuardia, UTFrmContratoPersonal, DateUtils, Math,
  AeroButtons, rhh_genericclasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGroupBox, Menus, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxCalc, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, AdvOfficePagerStylers,
  AdvSmoothStepControl, dxCore, cxDateUtils, cxCalendar, cxLabel, cxMemo,
  cxDBExtLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxSpinEdit, cxTimeEdit,
  dxSkinscxPCPainter, cxGridLevel;

type
  TOrganizacion = class
    Identificador: Integer;
    Isr: String;
  end;

  THorarios = Class
    TituloHorario:String;
    HoraInicio:TTime;
    HoraTermino:TTime;
  End;

  TFrmContratarWizard = class(TForm)
    GrupoPaginas: TAdvOfficePager;
    Paso1: TAdvOfficePage;
    Paso2: TAdvOfficePage;
    Paso3: TAdvOfficePage;
    Paso4: TAdvOfficePage;
    lblNombre: TAdvSmoothLabel;
    dsOrganizacion: TDataSource;
    dsDepartamento: TDataSource;
    dsImss: TDataSource;
    lblNombre2: TAdvSmoothLabel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    lblEmpresa2: TAdvSmoothLabel;
    lblArea2: TAdvSmoothLabel;
    lblNombre3: TAdvSmoothLabel;
    AdvSmoothLabel5: TAdvSmoothLabel;
    lblEmpresa3: TAdvSmoothLabel;
    lblArea3: TAdvSmoothLabel;
    AdvSmoothLabel8: TAdvSmoothLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Btn_Contratar: TcxButton;
    Btn_Siguiente: TcxButton;
    Btn_Anterior: TcxButton;
    Btn_Cancelar: TcxButton;
    dsTipoNomina: TDataSource;
    dsRangoSalario: TDataSource;
    LCbbTipoNomina: TcxDBLookupComboBox;
    Label7: TLabel;
    txtDiasTrabajados: TDBEdit;
    txtDiasDescanso: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    AdvSmoothLabel6: TAdvSmoothLabel;
    lblTipoNomina3: TAdvSmoothLabel;
    dsGuardias: TDataSource;
    cbGuardias: TcxLookupComboBox;
    JvLabel3: TJvLabel;
    Paso5: TAdvOfficePage;
    Paso6: TAdvOfficePage;
    lblNombre4: TAdvSmoothLabel;
    AdvSmoothLabel10: TAdvSmoothLabel;
    lblEmpresa4: TAdvSmoothLabel;
    lblArea4: TAdvSmoothLabel;
    AdvSmoothLabel13: TAdvSmoothLabel;
    AdvSmoothLabel14: TAdvSmoothLabel;
    lblTipoNomina4: TAdvSmoothLabel;
    AdvSmoothLabel17: TAdvSmoothLabel;
    lblGuardia4: TAdvSmoothLabel;
    LCbbCargo: TcxDBExtLookupComboBox;
    Label1: TLabel;
    dsCargo: TDataSource;
    JvLabel4: TJvLabel;
    lblNombre5: TAdvSmoothLabel;
    AdvSmoothLabel11: TAdvSmoothLabel;
    lblEmpresa5: TAdvSmoothLabel;
    lblArea5: TAdvSmoothLabel;
    AdvSmoothLabel18: TAdvSmoothLabel;
    AdvSmoothLabel19: TAdvSmoothLabel;
    lblTipoNomina5: TAdvSmoothLabel;
    lblGuardia5: TAdvSmoothLabel;
    AdvSmoothLabel22: TAdvSmoothLabel;
    AdvSmoothLabel24: TAdvSmoothLabel;
    lblDepartamento5: TAdvSmoothLabel;
    AdvSmoothLabel26: TAdvSmoothLabel;
    lblPuesto5: TAdvSmoothLabel;
    lblRangoSalario: TJvLabel;
    RangoSalario: TDBText;
    cbbSalario: TcxLookupComboBox;
    lblSalario: TJvLabel;
    EdtSalarioDiario: TcxTextEdit;
    dsSalarios: TDataSource;
    lblNombre6: TAdvSmoothLabel;
    AdvSmoothLabel12: TAdvSmoothLabel;
    lblEmpresa6: TAdvSmoothLabel;
    lblArea6: TAdvSmoothLabel;
    AdvSmoothLabel21: TAdvSmoothLabel;
    AdvSmoothLabel25: TAdvSmoothLabel;
    lblTipoNomina6: TAdvSmoothLabel;
    lblGuardia6: TAdvSmoothLabel;
    AdvSmoothLabel29: TAdvSmoothLabel;
    AdvSmoothLabel30: TAdvSmoothLabel;
    lblDepartamento6: TAdvSmoothLabel;
    AdvSmoothLabel32: TAdvSmoothLabel;
    lblPuesto6: TAdvSmoothLabel;
    lblSalarioDiario: TAdvSmoothLabel;
    AdvSmoothLabel36: TAdvSmoothLabel;
    cbJornada: TAdvDBComboBox;
    CbCobraFestivos: TCheckBox;
    MObservacion: TcxDBMemo;
    Label10: TLabel;
    frContratar: TfrxReport;
    dsDatos: TDataSource;
    frxDatos: TfrxDBDataset;
    frxCargo: TfrxDBDataset;
    jvlbl1: TJvLabel;
    dtpcontratacion: TcxdateEdit;
    btnGuardias: TButton;
    advLblidSalario: TAdvSmoothLabel;
    pnlInfoAdicional: TPanel;
    advLblGuardia: TAdvSmoothLabel;
    advLblFechai: TAdvSmoothLabel;
    advLblFechaf: TAdvSmoothLabel;
    advLbl1: TAdvSmoothLabel;
    advLblnoDomingos: TAdvSmoothLabel;
    advLblDomingo: TAdvSmoothLabel;
    advLblFestivos: TAdvSmoothLabel;
    advLblNoFestivos: TAdvSmoothLabel;
    advLblDDiasFestivos: TAdvSmoothLabel;
    frxguardias: TfrxDBDataset;
    frxSalarios: TfrxDBDataset;
    frxRangoSalario: TfrxDBDataset;
    frxTipoNomina: TfrxDBDataset;
    frxDepartamento: TfrxDBDataset;
    frxImss: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    Button1: TButton;
    cdtmp: TClientDataSet;
    intgrfldId: TIntegerField;
    frxtmp: TfrxDBDataset;
    frxbajaimss: TfrxDBDataset;
    cdPostulanteRh: TClientDataSet;
    cdEmpleadoRH: TClientDataSet;
    cdGuardiasMovto: TClientDataSet;
    cdPersonalNomina: TClientDataSet;
    cdtHistorialC: TClientDataSet;
    cdHistorialAB: TClientDataSet;
    mDeducciones: TClientDataSet;
    mPercepciones: TClientDataSet;
    cdSalMinDF: TClientDataSet;
    cdGrupoSalario: TClientDataSet;
    dtpCorte: TcxDateEdit;
    jvlbl2: TJvLabel;
    FDSPer: TfrxDBDataset;
    FDSDed: TfrxDBDataset;
    AdvSmoothLabel15: TAdvSmoothLabel;
    lblFechaContratacion: TAdvSmoothLabel;
    CdPercepcionesComp: TClientDataSet;
    CdDeduccionesComp: TClientDataSet;
    FrxCdPerComp: TfrxDBDataset;
    FrxCdDedComp: TfrxDBDataset;
    cxGBNeto: TcxGroupBox;
    edtNeto: TAdvEdit;
    btnCalcularNeto: TButton;
    BtnCalcSalario: TcxButton;
    LCbbDepartamento: TcxDBLookupComboBox;
    AdvOfficeStylePage: TAdvOfficePagerOfficeStyler;
    AdvStep1: TAdvSmoothStepControl;
    CxLCbbRegPat: TcxComboBox;
    CxLbl1: TcxLabel;
    cmbOrganizacion: TcxComboBox;
    cmbOrganizacion2: TcxComboBox;
    CxLbl2: TcxLabel;
    cmborganizacionLBL: TcxLabel;
    CxCbbPeriodosGuardia: TcxDBLookupComboBox;
    Lbl1: TJvLabel;
    CdPGuardias: TClientDataSet;
    dsPeriodosGuardia: TDataSource;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    Button2: TButton;
    lbl2: TAdvSmoothLabel;
    CxGridRepos1: TcxGridViewRepository;
    CxGridCargos: TcxGridDBTableView;
    CxColumnCargo: TcxGridDBColumn;
    CxColumnRango: TcxGridDBColumn;
    CxColumnImporte: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxstylGridBackground: TcxStyle;
    LblHorarioLaboral: TAdvSmoothLabel;
    LblHLaboral: TAdvSmoothLabel;
    cdHorarios: TClientDataSet;
    cxbtnEditar: TcxButton;
    pnlHorarios: TPanel;
    cdMemHorarios: TClientDataSet;
    CxDbGridHorarios: TcxGridDBTableView;
    cxLevelHorarios: TcxGridLevel;
    CxGridHorarios: TcxGrid;
    CxColumnTituloHorario: TcxGridDBColumn;
    CxColumnhoraInicio: TcxGridDBColumn;
    CxColumnHoraTermino: TcxGridDBColumn;
    cxbtnagregar: TcxButton;
    cxbtnEdit: TcxButton;
    cxbtnDel: TcxButton;
    cxbtnSalir: TcxButton;
    dsMemHorarios: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure LlenarComboOrg(Llave,Codigo, Titulo, isr: string;
      Cliente: TClientDataset; Combo: TcxComboBox);
    procedure cmbOrganizacionMouseEnter(Sender: TObject);
    procedure cmbOrganizacion2MouseEnter(Sender: TObject);
    procedure Btn_SiguienteClick(Sender: TObject);
    procedure Paso2Show(Sender: TObject);
    procedure LlenarCombo(Llaves, Titulos: String; Cliente: TClientDataset;
      Combo: TAdvComboBox);
    procedure Paso3Show(Sender: TObject);
    procedure Paso4Show(Sender: TObject);
    procedure Btn_AnteriorClick(Sender: TObject);
    procedure Paso5Show(Sender: TObject);
    procedure Paso6Show(Sender: TObject);
    procedure Paso1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGuardiasClick(Sender: TObject);
    procedure dtpcontratacionPopupValueAccepted(Sender: TObject);
    procedure LCbbCargoDropDown(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure frContratarDblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_ContratarClick(Sender: TObject);
    procedure frContratarGetValue(const VarName: string; var Value: Variant);
    procedure btnCalcularNetoClick(Sender: TObject);
    procedure BtnCalcSalarioClick(Sender: TObject);
    procedure dtpCorteChange(Sender: TObject);
    procedure LCbbTipoNominaCloseUp(Sender: TObject);
    procedure AdvStep1StepClick(Sender: TObject; StepIndex: Integer;
      StepMode: TStepMode);
    procedure LCbbTipoNominaPropertiesChange(Sender: TObject);
    procedure dtpcontratacionPropertiesCloseUp(Sender: TObject);
    procedure cmbOrganizacionPropertiesCloseUp(Sender: TObject);
    procedure cmbOrganizacion2PropertiesCloseUp(Sender: TObject);
    procedure cbGuardiasPropertiesChange(Sender: TObject);
    procedure CxCbbPeriodosGuardiaPropertiesChange(Sender: TObject);
    procedure cmbOrganizacionPropertiesChange(Sender: TObject);
    procedure dtpcontratacionPropertiesChange(Sender: TObject);
    procedure cxbtnEditarClick(Sender: TObject);
    procedure cxbtnagregarClick(Sender: TObject);
    procedure cxbtnDelClick(Sender: TObject);
    procedure cxbtnEditClick(Sender: TObject);
    procedure cxbtnSalirClick(Sender: TObject);
    procedure cdMemHorariosBeforePost(DataSet: TDataSet);
    procedure cdMemHorariosAfterPost(DataSet: TDataSet);
    procedure cdMemHorariosAfterOpen(DataSet: TDataSet);
    procedure EdtSalarioDiarioClick(Sender: TObject);
    procedure dtpCorteClick(Sender: TObject);
    procedure dtpcontratacionClick(Sender: TObject);
  private
    NewSalario, TotalPercepciones, TotalDeducciones, Neto,
    TotalPerComp, TotalDedComp, NetoComp: Real;
    existePersonalRh: Boolean;
    cdtOrdenesTRabajo: TClientDataSet; // saul
    cdtGuardiaRh: TClientDataSet; //
    FlagSalario: Integer; //saul
    SalarioCalculado: Extended;//saul
    cdtPeriodosG: TClientDataSet; //saul
    cdtDiasFestivos: TClientDataSet; //saul
    cdtGrupoSalario: TClientDataSet;  //saul
    cdtSalario: TClientDataSet; //saul
    iContratar: Integer;
    cdtPersonalRH : TClientDataSet;//saul
    LlenandoOrg, LlenandoOrg2: Boolean;
    cdBajaImss: TClientDataSet; //saul
    sPeriodoGuardia, DiasComp, DiasT: Integer;//saul
    StringHorarios: TStringList;
    FrmEmergente: TForm;
    SalMinZona: Double; //manuel
    function verificaExistePersRh(codigoPer: String): Boolean; //saul
    function verificarGuardiaRH: Boolean; // saul
    procedure contratarRH; //saul
    procedure contratar;   //saul
    procedure EstadoBotones;
    procedure ContarFestivos; //saul
    function calcularRango: Extended; //saul
    function acomodarGuardia(): Boolean;
    procedure ProyectarNomina(var cdNomina: TClientDataSet;
                              var cdPersonalNomina: TClientDataSet;
                              var cdPersonal: TClientDataSet;
                              var cdgcConcepto: TClientDataSet;
                              var cdConceptoExtra: TClientDataSet;
                              var cdSumaConcepto: TClientDataSet;
                              var memPercepciones: TClientDataSet;
                              var memDeducciones: TClientDataSet;

                                  IdTipoNomina: Integer;
                                  DiasTrabajados: Integer;
                                  DiasDescanso: Integer;
                                  InicioSemana: String;
                                  IdTipoTablaISPT: Integer;
                                  Periodicidad: Real;
                                  Salario: Real;
                                  SalarioIntegrado: Real;
                                  SalMinGenZona: Real;
                                  DiasVacaciones: Integer;
                                  DiasAguinaldo: Integer;
                                  FactorPrimaDominical: Real;
                                  FactorPrimaVacacional: Real;
                                  DiasExcentoPrimaVacacional: Integer;
                                  DiasExcentoAguinaldo: Integer;
                                  SeguroVidaINFONAVIT: Real;
                                  DiasFestivos: Integer);

  public
    { Public declarations }
  end;

var
  ChFecha: Boolean;
  FrmContratarWizard: TFrmContratarWizard;
  fechaCorte: string;

implementation

uses
  UInteliDialog, Unit2, UTFrmHorarios;

{$R *.dfm}

procedure TFrmContratarWizard.Paso1Show(Sender: TObject);
begin
  cmbOrganizacion.SetFocus;
  //Btn_Anterior.Visible := false;
  AdvStep1.GoToStep(0);
end;

procedure TFrmContratarWizard.Paso2Show(Sender: TObject);
begin
  lblNombre2.Caption.Text := lblNombre.Caption.Text;
  lblEmpresa2.Caption.Text := cmbOrganizacion.Text;
  lblArea2.Caption.Text := cmbOrganizacion2.Text;

  if lcbbTipoNomina.CanFocus then
    LCbbTipoNomina.SetFocus;

  //Btn_Anterior.Visible := True;
  AdvStep1.GoToStep(1);
end;

procedure TFrmContratarWizard.Paso3Show(Sender: TObject);
begin
  lblNombre3.Caption.Text := lblNombre2.Caption.Text;
  lblEmpresa3.Caption.Text := lblEmpresa2.Caption.Text;
  lblArea3.Caption.Text := lblArea2.Caption.Text;
  lblTipoNomina3.Caption.Text := LCbbTipoNomina.Text;
  AdvStep1.GoToStep(2);
  if cbGuardias.CanFocus then
    cbGuardias.SetFocus;
end;

procedure TFrmContratarWizard.Paso4Show(Sender: TObject);
var
  Cursor: TCursor;
begin
  lblNombre4.Caption.Text := lblNombre3.Caption.Text;
  lblEmpresa4.Caption.Text := lblEmpresa3.Caption.Text;
  lblArea4.Caption.Text := lblArea3.Caption.Text;
  lblTipoNomina4.Caption.Text := lblTipoNomina3.Caption.Text;

  if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0 then
    lblGuardia4.Caption.Text := 'NO APLICA SISTEMA DE GUARDIAS PARA ESTE TIPO DE NÓMINA'
  else
    lblGuardia4.Caption.Text := cbGuardias.Text;

  // Filtrar los datasets
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;
    if (Not dsCargo.DataSet.Active) or ((dsCargo.DataSet.Active) and (dsCargo.DataSet.RecordCount = 0)) or ((dsCargo.DataSet.Active) and (dsCargo.DataSet.RecordCount > 0) and (dsCargo.DataSet.FieldByName('IdOrganizacion').AsInteger <> dsDepartamento.DataSet.FieldByName('IdOrganizacion').AsInteger)) then
    begin
      if Not CargarDatosFiltrados(TClientDataSet(dsCargo.DataSet), 'IdOrganizacion', [TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador]) then
        raise InteligentException.CreateByCode(6, ['Puestos', dsDepartamento.DataSet.FieldByName('IdOrganizacion').AsInteger, 'Id. Organización']);
      if dsCargo.DataSet.Active then
        dsCargo.DataSet.Refresh
      else
        dsCargo.DataSet.Open;
    end;
  finally
    Screen.Cursor := Cursor;
  end;

  dsCargo.DataSet.Filtered := False;
  dsCargo.DataSet.Filter := 'IdOrganizacion = ' + IntToStr(TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador) +
                            ' and IdTipoNomina = ' + dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsString;
  dsCargo.DataSet.Filtered := True;
  AdvStep1.GoToStep(3);
  LCbbDepartamento.SetFocus;

end;

procedure TFrmContratarWizard.Paso5Show(Sender: TObject);
begin
  lblNombre5.Caption.Text := lblNombre4.Caption.Text;
  lblEmpresa5.Caption.Text := lblEmpresa4.Caption.Text;
  lblArea5.Caption.Text := lblArea4.Caption.Text;
  lblTipoNomina5.Caption.Text := lblTipoNomina4.Caption.Text;
  lblGuardia5.Caption.Text := lblGuardia4.Caption.Text;
  lblDepartamento5.Caption.Text := LCbbDepartamento.Text;
  lblPuesto5.Caption.Text := LCbbCargo.Text;
  AdvStep1.GoToStep(4);

  SalMinZona := (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger) * dsOrganizacion.DataSet.FieldByName('SalMinGenZona').AsFloat;

  dtpCorte.Visible := dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0;
  jvlbl2.Visible := dtpCorte.Visible;

  if not dtpCorte.Visible then
  begin
    cbbSalario.top := 157;
    lblSalario.Visible := True;
    lblSalario.Top := 157;
  end
  else
  begin
    cbbSalario.top := 177;
    lblSalario.Visible := True;
    lblSalario.Top := 177;

    EdtSalarioDiario.Top := 177;
    lblSalario.Top := 177;
    BtnCalcSalario.Top := 177;

  end;
  //dtpContratacion.date := now;
  if dsCargo.DataSet.Active then
  begin
    //1. - Si tiene idSalario y no idRangoSalario
    if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull = false) then
    begin
      try
        if not CargarDatosFiltrados(cdtSalario, 'idSalario',[dsCargo.DataSet.FieldByName('idSalario').AsString]) then
          raise InteligentException.CreateByCode(5, ['Salario']);

        if cdtSalario.Active then
          cdtSalario.Refresh
        else
          cdtSalario.Open;

      except
        on e:InteligentException do
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        on e:Exception do
          InteliDialog.ShowModal('Ha ocurrido un error inespeado', 'Informe de lo siguiente al administador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      end;

      // Si no se trata de un rango de salarios se deberá verificar si tiene un salario directo asignado
      lblRangoSalario.Visible := False;
      RangoSalario.Visible := False;
      //lblSalario.Visible := False;
      cbbSalario.Visible := False;
      EdtSalarioDiario.Visible := True;
      BtnCalcSalario.Visible := True;
      EdtSalarioDiario.Text := cdtSalario.FieldByName('Salario').AsString;
      EdtSalarioDiario.Enabled := False;
      //btnGuardias.Visible := False;
      pnlInfoAdicional.Visible := False;
      FlagSalario := 1;
      //EdtSalarioDiario.SetFocus;
    end
    //2. - Si Tiene IdRangoSalario
    else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull = False) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
    begin
      // Si tiene un rango de salarios asignado se deberá mostrar el combo para que seleccione uno de ellos
      dsRangoSalario.DataSet.Filtered := False;
      dsRangoSalario.DataSet.Filter := 'IdRangoSalarios = ' + dsCargo.DataSet.FieldByName('IdRangoSalarios').AsString;
      dsRangoSalario.DataSet.Filtered := True;

      // Abrir los rangos de salarios si es necesario
      if Not dsRangoSalario.DataSet.Active then
        dsRangoSalario.DataSet.Open;

      // Temporalmente cargar todos los salarios desde el servidor
      if (Not dsSalarios.DataSet.Active) or ((dsSalarios.DataSet.Active) and (dsSalarios.DataSet.FieldByName('IdRangoSalarios').AsInteger <> dsCargo.DataSet.FieldByName('IdRangoSalarios').AsInteger)) then
      begin
        if Not CargarDatosFiltrados(TClientDataSet(dsSalarios.DataSet), 'IdRangoSalarios', [dsCargo.DataSet.FieldByName('IdRangoSalarios').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Salarios', dsCargo.DataSet.FieldByName('IdRangoSalarios').AsInteger, 'Id. Rango Salarios']);

        if dsSalarios.DataSet.Active then
          dsSalarios.DataSet.Refresh
        else
          dsSalarios.DataSet.open;
      end;

      // Mostrar los campos para el rango de salarios
      lblRangoSalario.Visible := True;
      RangoSalario.Visible := True;
      lblSalario.Visible := True;
      cbbSalario.Visible := True;
      EdtSalarioDiario.Visible := False;
      BtnCalcSalario.Visible := False;
      cbbSalario.SetFocus;
      advLblidSalario.Caption.Text := dsRangoSalario.DataSet.FieldByName('idRangosalarios').AsString;
      //btnGuardias.Visible := true;
      pnlInfoAdicional.Visible := true;
      FlagSalario := 2;
    end
    //3. SI no tiene idRangoSalario ni idSalario
    else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
    begin
      lblRangoSalario.Visible := False;
      RangoSalario.Visible := False;
      //lblSalario.Visible := False;
      cbbSalario.Visible := False;
      EdtSalarioDiario.Visible := True;
      BtnCalcSalario.Visible := True;

      //Gustavo: validación para que no pierda el valor si retrocede en la ventana.
      if EdtSalarioDiario.Text = '' then
        EdtSalarioDiario.Text := '0.00';


      EdtSalarioDiario.Enabled := true;
      //btnGuardias.Visible := False;
      pnlInfoAdicional.Visible := False;
      FlagSalario := 3;
    end;
    dtpcontratacionPopupValueAccepted(nil);//soltar y acomodar guardias
    if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (ChFecha=False) then
    begin
      try
        dtpCorte.Date := IncDay(dtpcontratacion.Date, (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger - 1));
        ChFecha:=False;

      except
        dtpCorte.Date := Now;
      end;
    end;
    if EdtSalarioDiario.CanFocus then
      EdtSalarioDiario.SetFocus;

    Btn_Siguiente.Visible := true;
    Btn_Contratar.Visible := false;
{
    if EdtSalarioDiario.Visible then
      lblSalario.Caption := 'Salario Diario'
    else
      lblSalario.Caption := 'Salario';
}
  end;

end;

procedure TFrmContratarWizard.Paso6Show(Sender: TObject);
begin
  lblNombre6.Caption.Text := lblNombre5.Caption.Text;
  lblEmpresa6.Caption.Text := lblEmpresa5.Caption.Text;
  lblArea6.Caption.Text := lblArea5.Caption.Text;
  lblTipoNomina6.Caption.Text := lblTipoNomina5.Caption.Text;
  lblGuardia6.Caption.Text := lblGuardia5.Caption.Text;
  lblDepartamento6.Caption.Text := lblDepartamento5.Caption.Text;
  lblPuesto6.Caption.Text := lblPuesto5.Caption.Text;
  lblFechaContratacion.Caption.Text := dtpcontratacion.Text;
  LblHorarioLaboral.Caption.Text := '';
  if (cdHorarios.Active) and (cdHorarios.RecordCount > 0)then
  begin
    cdHorarios.First;
    while not cdHorarios.Eof do
    begin
      if cdHorarios.RecNo < cdHorarios.RecordCount then
        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  + cdHorarios.FieldByName('HoraInicio').AsString + ' a ' + cdHorarios.FieldByName('HoraTermino').AsString + '  -  '
      else
        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  + cdHorarios.FieldByName('HoraInicio').AsString + ' a ' + cdHorarios.FieldByName('HoraTermino').AsString;

      cdHorarios.Next
    end;

  end
  else
    LblHorarioLaboral.Caption.Text := 'ESTE TIPO DE CONFIGURACIÓN NO APLICA PARA EL TIPO DE NÓMINA SELECCIONADO';

  cbJornada.SelectItem('8 Hrs');
  CbCobraFestivos.Checked := False;
  MObservacion.Text := '';
  AdvStep1.GoToStep(5);

  // Verificar que tipo de salario se registro en la ventana anterior
  if dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull then
    lblSalarioDiario.Caption.Text := FloatToStrF(StrToFloat(EdtSalarioDiario.Text), ffCurrency, 18, 2)
  else
    lblSalarioDiario.Caption.Text := FloatToStrF(StrToFloat(cbbSalario.Text), ffCurrency, 18, 2);

  cbJornada.SetFocus;
  Btn_Siguiente.Visible := False;
  Btn_Contratar.Visible := True;
end;

function TFrmContratarWizard.verificaExistePersRh(codigoPer: String): Boolean;
  var
  cdprh: TClientDataSet;
begin
  try
    cdprh := TClientDataSet.Create(nil);
    try
      if not CrearConjunto(cdprh, 'inteligent_empleados', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Erp_empleados']);

      if not CargarDatosFiltrados(cdprh, 'sIdEmpleado', [codigoPer]) then
        raise InteligentException.CreateByCode(11, [' al filtrar por empleados']);

      if cdprh.Active then
        cdprh.Refresh
      else
        cdprh.Open;

      if cdprh.RecordCount > 0 then
        result := true
      else
        Result := false;

    except
    on e: Exception do
      showmessage(e.ToString + ' ' + e.ClassName);
    end;
  finally
    EliminarConjunto(cdprh);
    cdprh.Destroy;
  end;
end;

function TFrmContratarWizard.verificarGuardiaRH: Boolean;
var
  Cursor: TCursor;
begin
{
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(cdtGuardiaRh, 'sidFolio', [cbGuardias.KeyValue]) then
        raise InteligentException.CreateByCode(11, [' al filtrar por folio de guardia.']);

      if cdtGuardiaRh.active then
        cdtGuardiaRh.Refresh
      else
        cdtGuardiaRh.Open;

      if (cdtGuardiaRh.RecordCount = 0)  then
      begin
        if (InteliDialog.ShowModal('Confirmación','La guardia seleccionado cuenta con ningún contrato establecido, desea definir uno?',mtConfirmation, [mbYes,mbNo], 0)) = mrYes then
        begin
          //abrir form de guardias
          Application.CreateForm(TFrmGuardias, FrmGuardias);
          FrmGuardias.dsuptGuardiasRh.DataSet := cdtGuardiaRh;
          FrmGuardias.ShowModal;
        end
        else
        begin
          Result := False;
          InteliDialog.ShowModal('Aviso','Seleccione una guardia que se encuentre asignada a un contrato.',mtConfirmation, [mbOk], 0);
        end;//Exit;
      end
      else if (cdtGuardiaRh.FieldByName('Autorizar').asString = 'SI') then
      begin
        //que siga la fiesta jajaja
        //agregar mas mamadas si es necesario
        result := True;
      end
      else if  (cdtGuardiaRh.FieldByName('Autorizar').asString = 'NO') then
      begin
        InteliDialog.ShowModal('Aviso','La guardia no se encuentra autorizada.',mtConfirmation, [mbOk], 0);
        Result := False;
      end;

    except
    on e: Exception do
      InteliDialog.ShowModal('Error','Ocurrió el siguente error: ' + e.toString + ' Clase: ' + e.ClassName,mtConfirmation, [mbOk], 0);
    end;
  finally
    Screen.Cursor := Cursor;
  end; }
end;

function TFrmContratarWizard.acomodarGuardia: Boolean;
var
  CdtmpPGuardia: TClientDataSet;
  cdtmpBuscaGuardia : TClientDataSet;
  parametros: TParamFilter;
  fechaiProxima, fechatProxima, fechaSeleccionada: TDate; //fecha de inicio próxima y fecha de término próxima
begin
  CdtmpPGuardia := TClientDataSet.Create(nil);
  parametros := TParamFilter.Create;
  parametros.Add('idguardia',inttostr(cbGuardias.EditValue));
  parametros.Add('fecha',ClientModule1.DatetoStrSql(StrToDate(dtpcontratacion.Text)));
  try
    //cargar periodos, para mostrar de acuerdo a la fecha de contratación
    if not CrearConjunto(CdtmpPGuardia, 'nom_periodosguardia_disponibles', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Periodos Guardia']);

    if not CargarDatosFiltrados(CdtmpPGuardia, parametros) then
      raise InteligentException.CreateByCode(11, [' Al filtrar por fecha guardia.']);

    if CdtmpPGuardia.Active then
      CdtmpPGuardia.Refresh
    else
      CdtmpPGuardia.Open;

    //si no se encuentra en ningun periodo

    //determinar la guardia siguiente y la guardia anterior
    if CdtmpPGuardia.RecordCount = 0 then
    begin
      cdtmpBuscaGuardia := TClientDataSet.Create(nil);
      //para buscar las fechas proximas
      if not CrearConjunto(cdtmpBuscaGuardia, 'nom_periodosguardia_fsupinf', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Periodos Guardia Fecha Superior e inferior']);

      if not CargarDatosFiltrados(cdtmpBuscaGuardia, 'idGuardia,fechaInicio', [inttostr(cbGuardias.EditValue),ClientModule1.DatetoStrSql(StrToDate(dtpcontratacion.Text))]) then
        raise InteligentException.CreateByCode(11, [' al filtrar por guardia y fecha']);

      if cdtmpBuscaGuardia.active then
        cdtmpBuscaGuardia.Refresh
      else
        cdtmpBuscaGuardia.Open;

      if (cdtmpBuscaGuardia.FieldByName('fechainicio').IsNull) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino').IsNull) then
      begin
        dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio2').AsDateTime;
      end
      else if (cdtmpBuscaGuardia.FieldByName('fechainicio2').IsNull) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino3').IsNull) then
      begin
        dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio').AsDateTime;
      end
      else if (cdtmpBuscaGuardia.FieldByName('fechainicio2').IsNull = False) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino3').IsNull = False)
       and (cdtmpBuscaGuardia.FieldByName('fechainicio').IsNull = False) and (cdtmpBuscaGuardia.fieldbyname('FechaTermino').IsNull = False) then
      begin
        fechatProxima := cdtmpBuscaGuardia.FieldByName('fechainicio2').AsDateTime;
        fechaiProxima := cdtmpBuscaGuardia.FieldByName('fechatermino').AsDateTime;
        fechaSeleccionada := dtpcontratacion.Date;
        if (daysbetween(fechatProxima, fechaSeleccionada) < daysbetween(fechaSeleccionada, fechaiProxima)) then
          dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio2').AsDateTime
        else if (daysbetween(fechatProxima, fechaSeleccionada) > daysbetween(fechaSeleccionada, fechaiProxima)) then
          dtpcontratacion.Date := cdtmpBuscaGuardia.FieldByName('fechainicio').AsDateTime;
        //ShowMessage(IntToStr(daysbetween(fechatProxima,fechaiProxima)));
      end;
      //sPeriodoGuardia := cdtPeriodosG.FieldByName('IdPeriodosGuardia').AsInteger;
    end;
  finally
    EliminarConjunto(CdtmpPGuardia);
    CdtmpPGuardia.Destroy;
    parametros.Destroy;
  end;
end;

procedure TFrmContratarWizard.AdvStep1StepClick(Sender: TObject;
  StepIndex: Integer; StepMode: TStepMode);
begin
  StepIndex := AdvStep1.ActiveStep;
end;

procedure TFrmContratarWizard.BtnCalcSalarioClick(Sender: TObject);
var
  gForma: TForm;
begin
  gForma := TForm.Create(nil);
  gForma.Width := 325;
  gForma.Height := 955;
  gForma.BorderStyle := bsDialog;
  gForma.Caption := 'Calcular Salario Diario en Base al Neto.';
  cxGBNeto.Parent := gForma;
  cxGBNeto.Align := alClient;
  cxGBNeto.Visible := True;
  gForma.ShowModal;
end;

procedure TFrmContratarWizard.btnCalcularNetoClick(Sender: TObject);
var
  Salario, SDI, Aguinaldo, Vacaciones, PrimaDominical: Real;
  memoryDeducciones, memoryPercepciones, cdTmpOrganizacion: TClientDataSet;
  LocOrganizacion: Integer;
  Cur: TCursor;
begin
  try
    Cur := Screen.Cursor;
    Screen.Cursor := crSQLWait;

    if (edtNeto.Text = EmptyStr) or (StrToFloat(edtNeto.Text) <= 0) then
      raise InteligentException.CreateByCode(24, ['Debe agregar una cantidad mayor a $0.00 , para poder proceder con el cálculo']);

    if StrToFloat(edtNeto.Text) < SalMinZona then
      raise InteligentWarning.CreateByCode(24, ['Debe agregar una cantidad mayor al salario mínimo de la zona de $'  + FloatToStr(SalMinZona) + ', para poder proceder con el cálculo.']);

    if not Assigned(memoryDeducciones) then
      memoryDeducciones := TClientDataSet.Create(nil);

    if not Assigned(memoryPercepciones) then
      memoryPercepciones := TClientDataSet.Create(nil);

    if not Assigned(cdTmpOrganizacion) then
      cdTmpOrganizacion := TClientDataSet.Create(nil);

    LocOrganizacion := TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador;
    if cdTmpOrganizacion.ProviderName = '' then
      if not CrearConjunto(cdTmpOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Catálogo Organización ']);

    if not CargarDatosFiltrados(cdTmpOrganizacion, 'IdOrganizacion', [LocOrganizacion]) then
      raise InteligentException.CreateByCode(6, ['Catalogo Organizaciones', 'IdOrganizacion', IntToStr(LocOrganizacion)]);

    if cdTmpOrganizacion.Active then
      cdTmpOrganizacion.Refresh
    else
      cdTmpOrganizacion.Open;

    If cdTmpOrganizacion.RecordCount <= 0 then
      raise InteligentException.CreateByCode(24, ['No existen registros.']);

    if Length(Trim(advLblNoFestivos.Caption.Text)) <= 0 then
      advLblNoFestivos.Caption.Text := '0';


    try
      GenerarCalculoVirtual(Self, StrToFloat(edtNeto.Text), cdTmpOrganizacion.FieldByName('IdOrganizacion').AsInteger,
                            cdTmpOrganizacion.FieldByName('FactorPrimaDominical').AsFloat, cdTmpOrganizacion.FieldByName('FactorPrimaVacacional').AsFloat,
                            cdSalMinDF.FieldByName('Salario').AsFloat, cdTmpOrganizacion.FieldByName('SalMinGenZona').AsFloat, cdTmpOrganizacion.FieldByName('SeguroVidaInfonavit').AsFloat,
                            cdTmpOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsInteger, cdTmpOrganizacion.FieldByName('DiasExcentoAguinaldo').AsInteger, cdTmpOrganizacion.FieldByName('NSMTopeIntImss').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger, dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger, dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger,
                            StrToInt(advLblNoFestivos.Caption.Text), cdGrupoSalario.FieldByName('Domingos').AsInteger, dsImss.DataSet.FieldByName('Jornada').AsInteger,dsTipoNomina.DataSet.FieldByName('InicioSemana').AsString, dsTipoNomina.DataSet.FieldByName('IdTipoTablaISPT').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('Periodicidad').AsFloat, -1, -1, Now, Now, 1,memoryPercepciones, memoryDeducciones, Salario, SDI, Aguinaldo,
                            Vacaciones, PrimaDominical, False);

        InteliDialog.ShowModal('Aviso', 'Se obtuvo un salario diario de [$ ' + FloatToStr(Salario) + '] para el neto de $ ' + (edtNeto.Text), mtInformation, [mbOK],0);
        EdtSalarioDiario.Text := FloatToStr(Salario);
    finally
      screen.Cursor := Cur;
      memoryDeducciones.destroy;
      MemoryPercepciones.Destroy;
      cdTmpOrganizacion.Destroy;
      gcForma.Destroy;
      gcForma := nil;
    end;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal('Información', e.message, mtWarning, [mbOk], 0);

    On e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    On e: Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado.', e.Message + ' ' + e.ClassName, mtError, [mbok], 0);
  end;
end;

procedure TFrmContratarWizard.btnGuardiasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPeriodoGuardia, FrmPeriodoGuardia);
  FrmPeriodoGuardia.dsGuardia.DataSet := dsGuardias.DataSet;
  FrmPeriodoGuardia.ShowModal;
end;

procedure TFrmContratarWizard.Btn_AnteriorClick(Sender: TObject);
begin
  if (grupopaginas.ActivePageIndex = 3) or (grupopaginas.ActivePageIndex = 4) then
    FlagSalario := -1 ;

  if GrupoPaginas.ActivePageIndex > 0 then
  begin
    GrupoPaginas.ActivePageIndex := GrupoPaginas.ActivePageIndex -1;

    if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (GrupoPaginas.ActivePageIndex = 2) then
      GrupoPaginas.ActivePageIndex := 1;
  end;

  EstadoBotones;
end;

procedure TFrmContratarWizard.Btn_CancelarClick(Sender: TObject);
begin
  //FrmContratoPersonal.CdImss.Cancel;
  ChFecha:=False;
end;

procedure TFrmContratarWizard.Btn_ContratarClick(Sender: TObject);
begin
  Button1Click(nil);
end;

procedure TFrmContratarWizard.Btn_SiguienteClick(Sender: TObject);
var
  msjResult: Integer;
  LocIdOrganizacion: Integer;
  faltanCampos : boolean;
begin
  Try

      faltanCampos := false;

      Case GrupoPaginas.ActivePageIndex of
        0 :
        begin
          if {(cmbOrganizacion.ItemIndex <= 0) or}  (cmbOrganizacion2.ItemIndex < 0) or (CxLCbbRegPat.ItemIndex < 0) then
            faltanCampos := true;
        end;
        1 :
        begin
          if (LCbbTipoNomina.ItemIndex < 0){ or (txtDiasTrabajados.Text = '') or (txtDiasDescanso.Text = '') }then
            faltanCampos := true;
        end;
        2 :
        begin
          if (CxCbbPeriodosGuardia.ItemIndex < 0) or (cbGuardias.ItemIndex < 0) then
            faltanCampos := true;
        end;
        3 :
        begin
          if (LCbbDepartamento.ItemIndex < 0) or (LCbbCargo.ItemIndex < 0) then
            faltanCampos := true;
        end;
        4 :
        begin
          if (dtpcontratacion.Text = '') then
            faltanCampos := true;

          if (dtpCorte.Visible) and (dtpCorte.Text = '') then
            faltanCampos := True;

          if (cbbSalario.Visible) and (cbbSalario.ItemIndex < 0) then
            faltanCampos := True;

          if (EdtSalarioDiario.Visible) and (EdtSalarioDiario.Text = '') then
            faltanCampos := true;

          fechaCorte := dtpCorte.Text ;
        end;
      end;


    if not faltanCampos then
    begin

      if GrupoPaginas.ActivePageIndex < GrupoPaginas.AdvPageCount -1 then
      begin
        // Verificar si es necesario volver a leer los departamentos
        if Assigned(cmbOrganizacion2.Properties.Items.Objects[cmbOrganizacion2.ItemIndex]) then
          LocIdOrganizacion := TOrganizacion(cmbOrganizacion2.Properties.Items.Objects[cmbOrganizacion2.ItemIndex]).Identificador
        else
          LocIdOrganizacion := TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador;

        if (Not dsDepartamento.DataSet.Active) or ((dsDepartamento.DataSet.Active) and (dsDepartamento.DataSet.RecordCount = 0)) or ((dsDepartamento.DataSet.Active) and (dsDepartamento.DataSet.RecordCount > 0) and (dsDepartamento.DataSet.FieldByName('IdOrganizacion').AsInteger <> LocIdOrganizacion)) then
        begin
          LCbbDepartamento.EditValue := Null;
          dsCargo.DataSet.Close;

          if Not CargarDatosFiltrados(TClientDataSet(dsDepartamento.DataSet), 'IdOrganizacion', [LocIdOrganizacion]) then
            raise InteligentException.CreateByCode(6, ['Departamentos', LocIdOrganizacion, 'Id. Organizacion']);
          if dsDepartamento.DataSet.Active then
            dsDepartamento.DataSet.Refresh
          else
            dsDepartamento.DataSet.Open;
        end;

        if (GrupoPaginas.ActivePageIndex = 2) and (dsImss.DataSet.FieldByName('idperiodosGuardia').IsNull) then
          raise InteligentException.CreateByCode(18, ['Guardia']);

        if GrupoPaginas.ActivePageIndex = 3 then
        begin
          if dsImss.DataSet.FieldByName('IdDepartamento').IsNull then
            raise InteligentException.CreateByCode(18, ['Departamento']);

          if dsImss.DataSet.FieldByName('IdCargo').IsNull then
            raise InteligentException.CreateByCode(18, ['Puesto']);
        end;

        if GrupoPaginas.ActivePageIndex = 3 then
        begin
          LCbbCargoDropDown(nil);
        end;

        if GrupoPaginas.ActivePageIndex = 2 then
        begin
          {if verificarGuardiaRH = false then
            Exit; }
        end;

        if GrupoPaginas.ActivePageIndex = 4 then
        begin
          if dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull then
          begin
            if (EdtSalarioDiario.Text = EmptyStr) or (StrToFloat(EdtSalarioDiario.Text) <= 0) then
            begin
              EdtSalarioDiario.SetFocus;
              raise InteligentException.CreateByCode(18, ['Salario Diario']);
            end;

          if StrToFloat(EdtSalarioDiario.Text) < dsOrganizacion.DataSet.FieldByName('SalMinGenZona').AsFloat then
            raise InteligentWarning.CreateByCode(24, ['Debe agregar una cantidad mayor al sueldo mínimo de la zona de $'  + dsOrganizacion.DataSet.FieldByName('SalMinGenZona').AsString + ', para poder proceder con el cálculo.']);

          end
          else
            if (length(trim(cbbSalario.text)) > 0) and (StrToFloat(cbbSalario.Text) <= 0) then
              raise InteligentException.CreateByCode(18, ['Salario Diario']);

          if (FlagSalario = 2) and ((length(trim(cbbSalario.text)) > 0) and  (StrTofloat(cbbSalario.Text) =  SalarioCalculado)) then
            GrupoPaginas.ActivePageIndex := 5
          else if (FlagSalario = 2) and ( (length(trim(cbbSalario.text)) > 0)  and (StrTofloat(cbbSalario.Text) <>  SalarioCalculado)) then
          begin
            msjResult := InteliDialog.ShowModal('Confirmación', 'El Salario sugerido por el sistema de acuerdo a los parametros obtenidos, han sido cambiados por el usuario,'+
                                                'Desea asignar el salario seleccionado al empleado?',mtConfirmation, [mbYes,mbNo], 0);
            if msjResult = mrYes then
              GrupoPaginas.ActivePageIndex := 5;

            msjResult := mrNo;
          end
        end;
        if (FlagSalario <> 2) then
           GrupoPaginas.ActivePageIndex := GrupoPaginas.ActivePageIndex + 1 ;

        if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (GrupoPaginas.ActivePageIndex = 2) then
        begin
          // Si no es un tipo de nómina que tenga dias de descanso se deberá establecer el IdGuardia a Nulo
          dsImss.DataSet.FieldByName('IdPeriodosGuardia').Clear;
          CbCobraFestivos.Visible := False;
          // Así mismo, se deberá avanzar a la siguiente página
          GrupoPaginas.ActivePageIndex := 3;
        end
        else if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0) and (GrupoPaginas.ActivePageIndex = 2) then
        begin
          CbCobraFestivos.Visible := true;
        end;

        EstadoBotones;

      end
      else
      begin
        // Mostrar el registro que se va a generar
        //frContratar.ShowReport(False);
      end;


    end   {validacion de campos vacios}
    else
        InteliDialog.ShowModal('Aviso', 'Debe llenar toda la información solicitada en esta ventana.', mtWarning, [mbOk], 0);


  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('Aviso', e.Message, mtInformation, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inespeado', 'Informe de lo siguiente al administador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmContratarWizard.Button1Click(Sender: TObject);
var
  FechaTermino: TDate;
  SalarioDiario,
  NewSalarioIntegrado,
  NewAguinaldo,
  NewVacaciones,
  NewPrimaVacacional: Real;
  Festivos, Domingos: Integer;
begin
  try
    try
      //NewSalario := 1;
      DiasComp := 0;
      DiasT := 0;
      contratar;
      //Si es quincenal (Dias de descanso = 0) se le asigna la fecha de corte
      //sino la fecha de bajada del peludo.
      if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0 then
      begin
        festivos := 0;
        Domingos := 2;
        FechaTermino :=  dtpCorte.Date;
        SalarioDiario := StrToFloat(EdtSalarioDiario.Text);
      end
      else
      begin
        FechaTermino := cdBajaImss.FieldByName('FechaMOvimiento').AsDateTime;
        SalarioDiario := dsImss.DataSet.FieldByName('SalarioDiario').AsExtended;
        Festivos := StrToInt(advLblNoFestivos.Caption.Text);
        Domingos := cdGrupoSalario.FieldByName('Domingos').AsInteger;
      end;
      DiasT := DaysBetween(dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime, FechaTermino) + 1;
      GenerarCalculoVirtual(Self, -1,
                            dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger,
                            dsOrganizacion.DataSet.FieldByName('FactorPrimaDominical').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('FactorPrimaVacacional').AsFloat,
                            cdSalMinDF.FieldByName('Salario').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('SalMinGenZona').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('SeguroVidaInfonavit').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('DiasExcentoPrimaVacacional').AsInteger,
                            dsOrganizacion.DataSet.FieldByName('DiasExcentoAguinaldo').AsInteger,
                            dsOrganizacion.DataSet.FieldByName('NSMTopeIntIMSS').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger,
                            Festivos,
                            Domingos,
                            dsImss.DataSet.FieldByName('Jornada').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('InicioSemana').AsString,
                            dsTipoNomina.DataSet.FieldByName('IdTipoTablaIspt').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('Periodicidad').AsFloat,
                            SalarioDiario,
                            dsImss.DataSet.FieldByName('SalarioIntegrado').AsExtended,
                            dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime,
                            FechaTermino,
                            1,
                            mPercepciones,
                            mDeducciones,
                            NewSalario,
                            NewSalarioIntegrado,
                            NewAguinaldo,
                            NewVacaciones,
                            NewPrimaVacacional,
                            false);
      // Sumar percepciones y deducciones
      mPercepciones.First;
      TotalPercepciones := 0;
      while not mPercepciones.Eof do
      begin
        if (mPercepciones.FieldByName('Modo').AsString = 'PERCEPCION') and (mDeducciones.FieldByName('CodigoConcepto').AsString <> 'TOTP') then
          TotalPercepciones := TotalPercepciones + StrToFloat(mPercepciones.FieldByName('Importe').AsString);
        mPercepciones.Next;
      end;

      mDeducciones.First;
      TotalDeducciones := 0;

      while not mDeducciones.Eof do
      begin
        if (mDeducciones.FieldByName('Modo').AsString = 'DEDUCCION') then
          TotalDeducciones := TotalDeducciones + StrToFloat(mDeducciones.FieldByName('Importe').AsString);

        if (mDeducciones.FieldByName('Modo').AsString = 'DED-MEMORIA') then
        begin
          mDeducciones.Edit;
          mDeducciones.FieldByName('Titulo').AsString := '(*) ' + mDeducciones.FieldByName('Titulo').AsString;
          mDeducciones.Post;
        end;
        mDeducciones.Next;
      end;

      //Filtrar solo las deducciones y percepciones para que se muestren en el reporte
      mDeducciones.Filtered := False;
      mDeducciones.Filter := 'Modo =' + QuotedStr('DEDUCCION') + ' OR CodigoConcepto = ' + QuotedStr('32') + ' OR CodigoConcepto = ' + QuotedStr('41');
      mDeducciones.Filtered := True;

      mPercepciones.Filtered := False;
      mPercepciones.Filter := 'Modo =' + QuotedStr('PERCEPCION');
      mPercepciones.Filtered := True;

      Neto := TotalPercepciones - TotalDeducciones;
      mPercepciones.First;
      mDeducciones.First;
      FDSDed.DataSet := mDeducciones;
      FDSPer.DataSet := mPercepciones;

      //Cálculo completo de nómina
      if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0 then
      begin
        FechaTermino :=  dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime + (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger -1);
        SalarioDiario := StrToFloat(EdtSalarioDiario.Text);
        festivos := 0;
        Domingos := 2;
      end
      else
      begin
        FechaTermino := dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime + (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger - 1);
        SalarioDiario := dsImss.DataSet.FieldByName('SalarioDiario').AsExtended;
        Festivos := StrToInt(advLblNoFestivos.Caption.Text);
        Domingos := cdGrupoSalario.FieldByName('Domingos').AsInteger;
      end;
      DiasComp := DaysBetween(dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime, FechaTermino) + 1;
      GenerarCalculoVirtual(Self, -1,
                            dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger,
                            dsOrganizacion.DataSet.FieldByName('FactorPrimaDominical').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('FactorPrimaVacacional').AsFloat,
                            cdSalMinDF.FieldByName('Salario').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('SalMinGenZona').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('SeguroVidaInfonavit').AsFloat,
                            dsOrganizacion.DataSet.FieldByName('DiasExcentoPrimaVacacional').AsInteger,
                            dsOrganizacion.DataSet.FieldByName('DiasExcentoAguinaldo').AsInteger,
                            dsOrganizacion.DataSet.FieldByName('NSMTopeIntIMSS').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger,
                            Festivos,
                            Domingos,
                            dsImss.DataSet.FieldByName('Jornada').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('InicioSemana').AsString,
                            dsTipoNomina.DataSet.FieldByName('IdTipoTablaIspt').AsInteger,
                            dsTipoNomina.DataSet.FieldByName('Periodicidad').AsFloat,
                            SalarioDiario,
                            dsImss.DataSet.FieldByName('SalarioIntegrado').AsExtended,
                            dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime,
                            FechaTermino,
                            1,
                            CdPercepcionesComp,
                            CdDeduccionesComp,
                            NewSalario,
                            NewSalarioIntegrado,
                            NewAguinaldo,
                            NewVacaciones,
                            NewPrimaVacacional,
                            false);
      // Sumar percepciones y deducciones
      CdPercepcionesComp.First;
      TotalPerComp := 0;
      while not CdPercepcionesComp.Eof do
      begin
        if (CdPercepcionesComp.FieldByName('Modo').AsString = 'PERCEPCION') and (CdDeduccionesComp.FieldByName('CodigoConcepto').AsString <> 'TOTP') then
          TotalPerComp := TotalPerComp + StrToFloat(CdPercepcionesComp.FieldByName('Importe').AsString);
        CdPercepcionesComp.Next;
      end;

      CdDeduccionesComp.First;
      TotalDedComp := 0;

      while not CdDeduccionesComp.Eof do
      begin
        if (CdDeduccionesComp.FieldByName('Modo').AsString = 'DEDUCCION') then
          TotalDedComp := TotalDedComp + StrToFloat(CdDeduccionesComp.FieldByName('Importe').AsString);
        if (CdDeduccionesComp.FieldByName('Modo').AsString = 'DED-MEMORIA') then
        begin
          cdDeduccionesComp.Edit;
          CdDeduccionesComp.FieldByName('Titulo').AsString := '(*) ' + CdDeduccionesComp.FieldByName('Titulo').AsString;
          CdDeduccionesComp.Post;
        end;

        CdDeduccionesComp.Next;
      end;

      //Filtrar solo las deducciones y percepciones para que se muestren en el reporte
      CdDeduccionesComp.Filtered := False;
      CdDeduccionesComp.Filter := 'Modo =' + QuotedStr('DEDUCCION') + ' OR CodigoConcepto = ' + QuotedStr('32') + ' OR CodigoConcepto = ' + QuotedStr('41');
      CdDeduccionesComp.Filtered := True;

      CdPercepcionesComp.Filtered := False;
      CdPercepcionesComp.Filter := 'Modo =' + QuotedStr('PERCEPCION');
      CdPercepcionesComp.Filtered := True;

      NetoComp := TotalPerComp - TotalDedComp;
      CdPercepcionesComp.First;
      CdDeduccionesComp.First;
      FrxCdDedComp.DataSet := CdDeduccionesComp;
      FrxCdPerComp.DataSet := CdPercepcionesComp;

      if cdtmp.RecordCount = 0 then
      begin
        cdtmp.Append;
        cdtmp.FieldByName('id').AsInteger := 1;
        cdtmp.Post;
      end;

      ClientModule1.ImprimeReporte('fichaCOntratacion.fr3', frContratar);
    finally
       gcForma.Destroy;
       gcForma := Nil;
    end;
  Except
    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);

  end;
end;

function TFrmContratarWizard.calcularRango: Extended;
var
  parametros: TParamfilter;
begin
  try
    parametros := TParamFilter.Create;
    try
      parametros.add('idRSalarios', advLblidSalario.Caption.Text);
      parametros.Add('dFestivos', advLblNoFestivos.Caption.Text);
      //parametros.Add('dDomingos', advLblnoDomingos.Caption.Text);

      if not CargarDatosFiltrados(cdtGrupoSalario, parametros) then
          raise InteligentException.CreateByCode(11, [' Al filtrar por rango de salarios']);

      if cdtGrupoSalario.Active then
        cdtGrupoSalario.Refresh
      else
        cdtGrupoSalario.Open;

      if cdtGrupoSalario.RecordCount > 0 then
      begin
        cbbSalario.EditValue := cdtGrupoSalario.FieldByName('idsalario').AsInteger;
        try
          Result := StrToFloat(cbbSalario.Text);
        Except
          ;
        end;
      end
      else
      begin
        cbbSalario.Properties.ListFieldIndex := 0;
        //InteliDialog.ShowModal('Aviso', 'No se encontraron sugerencias de salarios para esas condiciones establecidas.', mtInformation, [mbOk], 0);
      end;
    except
    on e:Exception do
      ShowMessage(e.ToString + ' ' + e.ClassName );
    end;
  finally
    parametros.Destroy;
  end;
end;

procedure TFrmContratarWizard.cbGuardiasPropertiesChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  //dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger := 0;
  if cbGuardias.EditValue <> null then
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if CdPGuardias.ProviderName <> '' then
      begin
        if Not CargarDatosFiltrados(CdPGuardias, 'IdGuardia', [cbGuardias.EditValue]) then
          raise InteligentException.CreateByCode(6, ['IdGuardia', 'Periodos Guardia', VarToStr(cbGuardias.EditValue)]);
        if CdPGuardias.Active then
          CdPGuardias.Refresh
        else
          CdPGuardias.Open;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
  end;
end;

procedure TFrmContratarWizard.cdMemHorariosAfterOpen(DataSet: TDataSet);
var
  EstadoBtn: Boolean;
begin
  EstadoBtn := Not (cdMemHorarios.State = dsInsert) and (cdMemHorarios.RecordCount > 0);
  cxBtnEdit.Enabled := EstadoBtn;
  cxbtnDel.Enabled := EstadoBtn;
end;

procedure TFrmContratarWizard.cdMemHorariosAfterPost(DataSet: TDataSet);
var
  EstadoBtn: Boolean;
begin
  EstadoBtn :=  Not (cdMemHorarios.State = dsInsert) and (cdMemHorarios.RecordCount > 0);
  cxBtnEdit.Enabled := EstadoBtn;
  cxbtnDel.Enabled := EstadoBtn;
end;

procedure TFrmContratarWizard.cdMemHorariosBeforePost(DataSet: TDataSet);
begin
  if TimeOf(cdMemHorarios.FieldByName('HoraInicio').AsDateTime) > TimeOf(cdMemHorarios.FieldByName('HoraTermino').AsDateTime) then
  begin
    InteliDialog.ShowModal('Aviso', 'La hora de término siempre debe ser mayo que la hora de inicio.', mtInformation, [mbOK],0);
    cdMemHorarios.CancelUpdates;
  end;
end;

procedure TFrmContratarWizard.cmbOrganizacion2MouseEnter(Sender: TObject);
begin
  CmbOrganizacion.Hint := CmbOrganizacion.Text;
end;

procedure TFrmContratarWizard.cmbOrganizacion2PropertiesCloseUp(
  Sender: TObject);
begin
  try
    if LlenandoORg2 then
      raise InteligentException.Create('*');
    //Filtrando el departamento por organizacion
    if CmbORganizacion2.ItemIndex > 0 then
    begin
      try
        //DsDepartamento.DataSet.Filtered := False;
        //DsDepartamento.DataSet.Filter := 'idorganizacion = '+inttostr(TOrganizacion(CmbOrganizacion2.Items.Objects[CmbOrganizacion2.ItemIndex]).Identificador);
        //DsDepartamento.DataSet.Filtered := True;
        dsImss.DataSet.FieldByName('iddepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('IdDepartamento').AsInteger;
      except
        //DsDepartamento.DataSet.Filtered := False;
      end;
    end
    else
    begin
      try
        //DsDepartamento.DataSet.Filtered := False;
        //DsDepartamento.DataSet.Filter := 'idorganizacion = '+inttostr(TOrganizacion(CmbOrganizacion.Items.Objects[CmbOrganizacion.ItemIndex]).Identificador);
        //DsDepartamento.DataSet.Filtered := True;
        dsImss.DataSet.FieldByName('IdDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('IdDepartamento').AsInteger;
      except
        //DsDepartamento.DataSet.Filtered := False;
      end;
    end;
  except
    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratarWizard.cmbOrganizacionMouseEnter(Sender: TObject);
begin
  CmbOrganizacion.Hint := CmbOrganizacion.Text;
end;

procedure TFrmContratarWizard.cmbOrganizacionPropertiesChange(Sender: TObject);
var
  xxx: TObject;
begin
  try
    cmbOrganizacionPropertiesCloseUp(nil);
    xxx := (cmbOrganizacion.ItemObject);
    CxLCbbRegPat.ItemIndex := CxLCbbRegPat.Properties.Items.IndexOf(TOrganizacion(xxx).Isr);
  finally
  end;
end;

procedure TFrmContratarWizard.cmbOrganizacionPropertiesCloseUp(Sender: TObject);
begin
  try
    if LlenandoOrg then
      raise InteligentException.Create('*');
    //Actualizando segundo combo
    try
      CmbORganizacion2.Text := '';
      CmbORganizacion2.Properties.Items.Clear;
      CmbORganizacion2.Properties.Items.Add('<ASIGNAR A EMPRESA PRINCIPAL>');
      if CmbOrganizacion.Properties.Items.Count>0 then
      begin
        dsOrganizacion.DataSet.Filtered := False;
        dsOrganizacion.DataSet.Filter := ' padre = '+inttostr(TOrganizacion(CmbOrganizacion.Properties.Items.Objects[CmbOrganizacion.ItemIndex]).Identificador);
        dsOrganizacion.DataSet.Filtered := True;
        LlenarComboOrg('idorganizacion','codigoorganizacion','tituloorganizacion','regpatimss',TClientDataSet(dsOrganizacion.DataSet),CmbOrganizacion2);
        if dsOrganizacion.DataSet.recordcount > 0 then
        begin
          CmbOrganizacion2.ItemIndex := 0;
          //cmborganizacionLBL.Caption := dsOrganizacion.DataSet.FieldByName('titulonivel').AsString;
        end;
      end;
      CmbORganizacion2.ItemIndex := 0;
      cmbOrganizacion2PropertiesCloseUp(CmbORganizacion2);
    finally
      dsOrganizacion.DataSet.Filtered := False;
    end;
    //Filtrando el departamento por organizacion
    if CmbORganizacion2.ItemIndex <1 then
    try
      dsImss.DataSet.FieldByName('IdDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('IdDepartamento').AsInteger;
    except
      //DsDepartamento.DataSet.Filtered := False;
    end
    else
      cmbOrganizacion2PropertiesCloseUp(CmbORganizacion2);
  except
    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratarWizard.ContarFestivos;
const
  NomMes: Array [1 .. 12] of String = ('ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC');
var
  Cta: Integer;
  Cadena: String;
  LocFecha: TDate;
begin
  // Verificar cuales son los festivos que se está considerando
  if (cdtDiasFestivos.ProviderName <> '') and (cdtDiasFestivos.Active) and (cdtDiasFestivos.RecordCount > 0) then
  begin

    // Contar los domingos
    Cta := 0;
    LocFecha := dtpcontratacion.Date; //fecha inicio conteo
    while LocFecha <= StrToDate(advLblFechaf.Caption.Text) do //fecha de inicio vs fecha de termino
    begin
      if DayOfWeek(LocFecha) = 1 then
        Inc(Cta);
      LocFecha := IncDay(LocFecha);
    end;
    advLblnoDomingos.Caption.Text := IntToStr(Cta);

    // Contar los días festivos
    Cta := 0;
    Cadena := '';
    cdtDiasFestivos.First;
    while not cdtDiasFestivos.Eof do
    begin       //los que inician con 'cdt' son como los zquery y los que inician con 'dtp' son datepicker
      if (cdtDiasFestivos.FieldByName('Fecha').AsDateTime >= dtpcontratacion.Date) and (cdtDiasFestivos.FieldByName('Fecha').AsDateTime <= StrToDate(advLblFechaf.Caption.Text)) then
      begin
        if Cadena <> '' then
          Cadena := Cadena + ', ';

        Cadena := Cadena + IntToStr(DayOf(cdtDiasFestivos.FieldByName('Fecha').AsDateTime)) + '-' + NomMes[MonthOf(cdtDiasFestivos.FieldByName('Fecha').AsDateTime)];
        Inc(Cta);
      end;
      cdtDiasFestivos.Next;
    end;
    advLblnoFestivos.Caption.Text := IntToStr(Cta);
    advLblDDiasFestivos.Caption.Text := Cadena;
  end;
end;

procedure TFrmContratarWizard.Contratar;
var
  cursor: TCursor;
  cdFactor: TClientDataSet;
  cdSalarioMinDF: TClientDataSet;
  cdtPersonal: TClientDataSet;
  salarioIntegrado: Extended;
  cdNomina: TClientDataSet;
  cdPersonalNomina: TClientDataSet;
  cdPersonal: TClientDataSet;
  cdgcConcepto: TClientDataSet;
  cdConceptoExtra: TClientDataSet;
  cdSumaConcepto: TClientDataSet;
  memPercepciones: TClientDataSet;
  memDeducciones: TClientDataSet;
  cdTExcepcionesH: TClientDataset;
  LocEmpleado: string;
  UltIDPImss: Integer;
begin
  try
    cursor := screen.Cursor;
    Screen.Cursor := crAppStart;
    cdFactor := TClientDataSet.Create(nil);
    cdSalarioMinDF := TClientDataSet.Create(nil);
    existePersonalRH := False;
    try
      if not CrearConjunto(cdFactor,'nomina_factorintegracion',ccSelect) then
        raise InteligentException.CreateByCode(5,['Factor de integracion']);

       if not CargarDatosFiltrados(cdFactor, 'IdOrganizacion,IdTipoNomina,Anios', [TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador, dsTipoNomina.DataSet.fieldByName('idTipoNomina').asinteger, 1]) then
          raise InteligentException.CreateByCode(6, [IntToStr(TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador) + '/' + dsTipoNomina.DataSet.fieldByName('idTipoNomina').asString + '/1', 'IdOrganizacion/IdTipoNomina/Anios']);

      if cdFactor.Active then
        cdFactor.Refresh
      else
        cdFactor.Open;

      //GRUPO DE SALARIO PERTENECIENTE  SOLO QUINCENALES
      try
        if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0 then
        begin
          if Not CargarDatosFiltrados(cdGrupoSalario, 'IdGrupoSalario', [dsSalarios.DataSet.FieldByName('IdGrupoSalario').AsInteger]) then
            raise InteligentException.CreateByCode(5, ['Grupos de Salario']);

          if cdGrupoSalario.Active then
            cdGrupoSalario.Refresh
          else
            cdGrupoSalario.Open;
        end;
      Except
        ;
      end;

      //SALARIO MINIMO DEL DF
      if not CrearConjunto(cdSalarioMinDF,'rhu_salario',cccatalog) then
        raise InteligentException.CreateByCode(5,['Factor de integracion']);

      if not CargarDatosFiltrados(cdSalarioMinDF, 'TipoSalario', ['SMVDF']) then
        raise InteligentException.CreateByCode(11, [' al filtrar por salario Minimo DF']);

      if cdSalarioMinDF.Active then
        cdSalarioMinDF.Refresh
      else
        cdSalarioMinDF.Open;

      //DATOS PERSONAL
      dsImss.DataSet.FieldByName('idPersonal').AsInteger := dsDatos.DataSet.FieldByName('idpersonal').AsInteger;
      cdBajaImss.FieldByName('idPersonal').AsInteger := dsImss.DataSet.FieldByName('idPersonal').AsInteger;

      //FECHA DE MOVTO - CONTRATO
      dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime := StrToDate(dtpcontratacion.Text);
      dsImss.DataSet.FieldByName('FechaRegistro').AsDateTime := Now;
      if Length(Trim(advLblFechaf.Caption.Text)) > 0  then
        cdBajaImss.FieldByName('FechaMovimiento').AsDateTime := StrToDate(advLblFechaf.Caption.Text);

      cdBajaImss.FieldByName('FechaRegistro').AsDateTime := Now;

      //ORGANIZACION
      if CmbORganizacion2.ItemIndex > 0 then
      begin
        dsimss.DataSet.FieldByName('idorganizacion').AsInteger := TOrganizacion(cmbOrganizacion2.Properties.Items.Objects[cmbOrganizacion2.ItemIndex]).Identificador;
        cdBajaImss.FieldByName('idorganizacion').AsInteger := TOrganizacion(cmbOrganizacion2.Properties.Items.Objects[cmbOrganizacion2.ItemIndex]).Identificador;
        TClientDataSet(dsOrganizacion.DataSet).Locate('IdOrganizacion', TOrganizacion(cmbOrganizacion2.Properties.Items.Objects[cmbOrganizacion2.ItemIndex]).Identificador, []);
      end
      else
      begin
        dsimss.DataSet.FieldByName('idorganizacion').AsInteger := TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador;
        cdBajaImss.FieldByName('idorganizacion').AsInteger := TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador;
        TClientDataSet(dsOrganizacion.dataset).Locate('idOrganizacion', TOrganizacion(cmbOrganizacion.Properties.Items.Objects[cmbOrganizacion.ItemIndex]).Identificador, []);
      end;

      //GUARDIAS
      //IDENTIFICAR EL TIPO DE NOMINA PARA SABER QUE SE VA A GUARDAR Y QUE NO
      dsImss.DataSet.FieldByName('IdTipoNomina').AsInteger := dsTipoNomina.DataSet.fieldByName('idTipoNomina').asinteger;
      cdBajaImss.FieldByName('IdTipoNomina').AsInteger := dsTipoNomina.DataSet.fieldByName('idTipoNomina').asinteger;

      if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0 then //si es a bordo
      begin //si es a bordo, es decir tiene dias de descanso
        //1. - Si tiene idSalario y no idRangoSalario
        if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull = false) then
        begin
          dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          dsImss.DataSet.FieldByName('SalarioDiario').AsExtended := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
          cdBajaImss.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          cdBajaImss.FieldByName('SalarioDiario').AsExtended := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
        end
        //2. - Si Tiene IdRangoSalario
        else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull = False) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
        begin
          dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          dsImss.DataSet.FieldByName('SalarioDiario').AsExtended := StrToFloat(cbbSalario.Text);  //SALARIO
          cdBajaImss.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          cdBajaImss.FieldByName('SalarioDiario').AsExtended := StrToFloat(cbbSalario.Text);  //SALARIO
        end
        //3. SI no tiene idRangoSalario ni idSalario
        else if (dsCargo.DataSet.FieldByName('IdRangoSalarios').IsNull) and ( dsCargo.DataSet.FieldByName('idSalario').IsNull) then
        begin
          dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          dsImss.DataSet.FieldByName('SalarioDiario').AsExtended := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
          cdBajaImss.FieldByName('IdPeriodosGuardia').AsInteger := sPeriodoGuardia;
          cdBajaImss.FieldByName('SalarioDiario').AsExtended := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
        end;
      end
      else
      begin
        dsImss.DataSet.FieldByName('IdPeriodosGuardia').Clear;  //GUARDIA
        dsImss.DataSet.FieldByName('SalarioDiario').AsExtended := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
        cdBajaImss.FieldByName('IdPeriodosGuardia').Clear;  //GUARDIA
        cdBajaImss.FieldByName('SalarioDiario').AsExtended := StrToFloat(EdtSalarioDiario.Text);  //SALARIO
      end;

      //DEPARTAMENTOS  Y CARGO
      dsImss.DataSet.FieldByName('idcargo').AsInteger := dsCargo.DataSet.FieldByName('idCargo').AsInteger;
      dsImss.DataSet.FieldByName('idDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('idDepartamento').AsInteger;
      cdBajaImss.FieldByName('idcargo').AsInteger := dsCargo.DataSet.FieldByName('idCargo').AsInteger;
      cdBajaImss.FieldByName('idDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('idDepartamento').AsInteger;

      //para almacenar cobra festivos
      if CbCobraFestivos.Visible = False then
      begin
        dsImss.DataSet.FieldByName('CobraFestivos').AsInteger := 0;
        cdBajaImss.FieldByName('CobraFestivos').AsInteger := 0;
      end
      else if (CbCobraFestivos.Checked = true) and (CbCobraFestivos.Visible = true) then
      begin
        dsImss.DataSet.FieldByName('CobraFestivos').AsInteger := 1;
        cdBajaImss.FieldByName('CobraFestivos').AsInteger := 1;
      end
      else
      begin
        dsImss.DataSet.FieldByName('CobraFestivos').AsInteger := 0;
        cdBajaImss.FieldByName('CobraFestivos').AsInteger := 0;
      end;

      //JORNADA DE TRABAJO
      dsImss.DataSet.FieldByName('jornada').AsInteger :=  StrToInt(cbJornada.StoredStrings[cbJornada.ItemIndex]);
      dsImss.DataSet.FieldByName('Comentarios').AsString := MObservacion.Text;
      cdBajaImss.FieldByName('jornada').AsInteger :=  StrToInt(cbJornada.StoredStrings[cbJornada.ItemIndex]);
      cdBajaImss.FieldByName('Comentarios').AsString := MObservacion.Text;

      //INFORMACION EXTRA
      dsImss.DataSet.FieldByName('idPersonalImss').AsInteger := 0;
      dsImss.DataSet.FieldByName('TipoMovimiento').AsString := 'Reingreso';
      dsImss.DataSet.FieldByName('Procesado').AsString := 'Si';
      dsImss.DataSet.FieldByName('idplazadetalle').AsInteger := 0; //probar y no dejar que vuelva aparecer en la lista de no contratados
      cdBajaImss.FieldByName('idPersonalImss').AsInteger := 0;
      cdBajaImss.FieldByName('TipoMovimiento').AsString := 'Baja';
      cdBajaImss.FieldByName('Procesado').AsString := 'No';
      cdBajaImss.FieldByName('idplazadetalle').AsInteger := 0; //probar y no dejar que vuelva aparecer en la lista de no contratados

      salarioIntegrado := cdSalarioMinDF.FieldByName('Salario').AsExtended*25;

      if (RoundTo(dsImss.DataSet.FieldByName('SalarioDiario').AsExtended*cdFactor.FieldByName('Factor').AsExtended, -2)) <=
      RoundTo(salarioIntegrado,-2) then
      begin
        dsImss.DataSet.FieldByName('salarioIntegrado').asExtended := Roundto(dsImss.DataSet.FieldByName('SalarioDiario').AsExtended*cdFactor.FieldByName('Factor').AsExtended, -2);
        cdBajaImss.FieldByName('salarioIntegrado').asExtended := Roundto(dsImss.DataSet.FieldByName('SalarioDiario').AsExtended*cdFactor.FieldByName('Factor').AsExtended, -2);
      end
      else
      begin
        dsImss.DataSet.FieldByName('salarioIntegrado').asExtended := (RoundTo(salarioIntegrado,-2));
        cdBajaImss.FieldByName('salarioIntegrado').asExtended := (RoundTo(salarioIntegrado,-2));
      end;

      dsImss.DataSet.FieldByName('registroPatronal').AsString := cxLcbbRegPat.Text;//dsOrganizacion.DataSet.FieldByName('regpatimss').AsString;
      cdBajaImss.FieldByName('registroPatronal').AsString := cxLcbbRegPat.Text;//dsOrganizacion.DataSet.FieldByName('regpatimss').AsString;

      if iContratar = 1 then
      begin
        cdtPersonal := TClientDataSet.Create(nil);
        try
          try
            if not CrearConjunto(cdtPersonal, 'nuc_personal', ccUpdate) then
              raise InteligentException.CreateByCode(5,['Personal']);

            if not CargarDatosFiltrados(cdtPersonal, 'idPersonal', [dsImss.DataSet.FieldByName('idPersonal').asString]) then
              raise InteligentException.CreateByCode(11,[' al filtrar por personal']);

            if cdtPersonal.Active then
              cdtPersonal.Refresh
            else
              cdtPersonal.Open;

            LocEmpleado := cdtPersonal.FieldByName('APaterno').AsString + ' ' +
              cdtPersonal.FieldByName('AMaterno').AsString + ', ' +
              cdtPersonal.FieldByName('Nombres').AsString;

            TClientDataSet(dsImss.DataSet).Post;
            TClientDataSet(dsImss.DataSet).applyUpdates(-1);

            if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0) then
            begin
              cdBajaImss.Post;
              cdBajaImss.ApplyUpdates(-1);
            end;

            cdtPersonal.Edit;
            cdtPersonal.FieldByName('idPlazaDetalle').AsInteger := 1;
            cdtPersonal.Post;
            cdtPersonal.ApplyUpdates(-1);
            UltIDPImss := UltimoId;

            if (cdHorarios.Active) and (cdHorarios.RecordCount > 0) and (cdMemHorarios.Active) and (cdMemHorarios.RecordCount > 0) then
            begin
              try
                cdTExcepcionesH := TClientDataset.Create(self);
                if not crearConjunto(cdTExcepcionesH, 'nom_tablahorarios', ccUpdate) then
                  raise inteligentException.CreateByCode(5, ['nom_tablaHorarios']);

                if not cargarDatosFiltrados(cdTExcepcionesH, 'IdHorario', [-9]) then
                  raise InteligentException.createByCode(6, ['nom_tablaHorarios', '-9', 'IdHorario']);

                if cdTExcepcionesh.Active then
                  cdtExcepcionesh.Refresh
                else
                  cdtexcepcionesH.Open;

                cdMemHorarios.First;
                while Not cdMemHorarios.Eof do
                begin
                  cdTExcepcionesh.Append;
                  cdTExcepcionesH.FieldByName('idHorario').asInteger := 1;
                  cdTExcepcionesH.FieldByName('Horainicio').AsDateTime := TimeOf(cdMemHorarios.FieldByName('horaInicio').AsDateTime);
                  cdTExcepcionesh.FieldByName('horaTermino').AsDateTime := TimeOf(cdMemHorarios.FieldByName('HoraTermino').AsDateTime);
                  cdTExcepcionesh.FieldByName('Titulo').AsString := cdMemHorarios.FieldByName('tituloHorario').AsString;
                  cdtExcepcionesh.FieldByName('IdPersonalImss').asInteger := UltIDPImss;
                  cdTExcepcionesh.Post;
                  cdtExcepcionesh.ApplyUpdates(-1);
                  cdMemHorarios.Next;
                end;
              finally
                if cdTExcepcionesH.ProviderName <> '' then
                    EliminarConjunto(cdTExcepcionesH);

                if Assigned(cdTExcepcionesH) then
                  cdTExcepcionesh.Destroy;
              end;
            end;

            ClientModule1.registrarEvento('WIZZARD DE CONTRATACION','CONTRATACIÓN DE PERSONAL (INSERT)', LocEmpleado, 0.0, 0);
          except
          on e: Exception do
            showmessage(e.ToString + ' ' + e.ClassName);
          end;
        finally
          EliminarConjunto(cdtPersonal);
          cdtPersonal.Destroy;
        end;
      end;
    except
      on e: Exception do
        showmessage(e.ToString + ' ' + e.ClassName);
    end;
  finally
    EliminarConjunto(cdFactor);
    EliminarConjunto(cdSalarioMinDF);
    cdfactor.Destroy;
    cdSalarioMinDF.Destroy;
    Screen.Cursor := cursor;
  end;
end;

procedure TFrmContratarWizard.contratarRH;
var
  sficha: string;
  //cdthistorialC: TClientDataSet;
begin
  try
    //cdthistorialC := TClientDataSet.Create(nil);
    //cdtOrdenesTRabajo := TClientDataSet.Create(self);
    try
      //cargar datos de postulante Rh y asignarlos a EMpleado de Rh
      if not CargarDatosFiltrados(cdPostulanteRh, 'sficha', [dsDatos.DataSet.FieldByName('codigopersonal').AsString]) then
        raise InteligentException.CreateByCode(5, ['Postulantes RH']);

      if cdPostulanteRh.active then
        cdPostulanteRh.Refresh
      else
        cdPostulanteRh.Open;

      //si existe en Rh continuar con la operacion
      if cdPostulanteRh.RecordCount > 0 then
      begin

        if  existePersonalRH = false  then
        begin
          //preparar tabla empleados de Rh para almacenar el nuevo registro
          if not CargarDatosFiltrados(cdEmpleadoRH, 'sIdEmpleado', [-9]) then
            raise InteligentException.CreateByCode(11, [' al filtrar por ficha empleado.']);
        end
        else
        begin
          //preparar tabla empleados de Rh para almacenar el nuevo registro
          if not CargarDatosFiltrados(cdEmpleadoRH, 'sIdEmpleado', [dsDatos.DataSet.FieldByName('codigopersonal').AsString]) then
            raise InteligentException.CreateByCode(11, [' al filtrar por ficha empleado.']);
        end;

        if cdEmpleadoRH.Active then
          cdEmpleadoRH.Refresh
        else
        begin
          cdEmpleadoRH.Open;
        end;

        if not CargarDatosFiltrados(cdPersonalNomina, 'codigopersonal',[cdPostulanteRh.FieldByName('sficha').AsString]) then
          raise InteligentException.CreateByCode(11, [' al filtar por Personal']);

        if cdPersonalNomina.active then
          cdPersonalNomina.Refresh
        else
          cdPersonalNomina.Open;

        if not CargarDatosFiltrados(cdthistorialC, 'iidcontrato', [-9]) then
          raise InteligentException.CreateByCode(11,[' al filtrar por historial contrato']);

        if cdthistorialC.Active then
          cdthistorialC.Refresh
        else
          cdthistorialC.Open;


        if not CargarDatosFiltrados(cdHistorialAB, 'sidEmpleado', [-9]) then
          raise InteligentException.CreateByCode(11,[' al filtrar por historial Altas']);

        if cdHistorialAB.Active then
          cdHistorialAB.Refresh
        else
          cdHistorialAB.Open;

        //si no existe en table empleado Rh lo inserta sino lo edita
        if existePersonalRh = false then
        begin
          cdEmpleadoRH.Append;
          cdEmpleadoRH.FieldByName('idPersonal').asInteger := 0;
        end
        else
          cdEmpleadoRH.Edit;


        cdEmpleadoRH.FieldByName('sIdEmpleado').AsString := cdPostulanteRh.FieldByName('sficha').AsString;
        cdEmpleadoRH.FieldByName('sNombreCompleto').AsString := cdPostulanteRh.FieldByName('sNombreCompleto').AsString;
        cdEmpleadoRH.FieldByName('iidEstatus').asInteger :=  3;
        cdEmpleadoRH.FieldByName('iidNacionalidad').asInteger := 2;
        cdEmpleadoRH.FieldByName('sStatusPersonal').AsString := 'Contratado';
        cdEmpleadoRH.FieldByName('iIdDiasDescanso').Clear;
        cdEmpleadoRH.FieldByName('iIdRegistroPatronal').Clear;
        cdEmpleadoRH.FieldByName('sRfc').AsString :=  cdPostulanteRh.FieldByName('sRfc').AsString;
        cdEmpleadoRH.FieldByName('sDomicilio').AsString :=  cdPostulanteRh.FieldByName('sDomicilio').AsString;
        cdEmpleadoRH.FieldByName('sCiudad').AsString :=  cdPostulanteRh.FieldByName('sCiudad').AsString;
        cdEmpleadoRH.FieldByName('sIdArea').AsString :=  'CONST';
        cdEmpleadoRH.FieldByName('sTelefono').AsString :=  cdPostulanteRh.FieldByName('sTelefono').AsString;
        cdEmpleadoRH.FieldByName('seMail').AsString :=  cdPostulanteRh.FieldByName('seMail').AsString;
        cdEmpleadoRH.FieldByName('sCuenta').AsString :=  cdPostulanteRh.FieldByName('sCuenta').AsString;
        cdEmpleadoRH.FieldByName('sBanco').AsString :=  cdPostulanteRh.FieldByName('sBanco').AsString;
        cdEmpleadoRH.FieldByName('sCuentaInterbancaria').AsString :=  cdPostulanteRh.FieldByName('sCuentaInterbancaria').AsString;
        cdEmpleadoRH.FieldByName('sCurp').AsString :=  cdPostulanteRh.FieldByName('sCurp').AsString;
        cdEmpleadoRH.FieldByName('sImss').AsString :=  cdPostulanteRh.FieldByName('sImss').AsString;
        cdEmpleadoRH.FieldByName('sEstadoCivil').AsString :=  cdPostulanteRh.FieldByName('sEstadoCivil').AsString;
        cdEmpleadoRH.FieldByName('dFechaNacimiento').AsString :=  cdPostulanteRh.FieldByName('dFechaNacimiento').AsString;
        cdEmpleadoRH.FieldByName('sLibretaMar').AsString :=  cdPostulanteRh.FieldByName('sLibretaMar').AsString;
        cdEmpleadoRH.FieldByName('sCartilla').AsString :=  cdPostulanteRh.FieldByName('sCartilla').AsString;
        cdEmpleadoRH.FieldByName('sCedulaProfesional').AsString :=  cdPostulanteRh.FieldByName('sCedulaProfesional').AsString;
        cdEmpleadoRH.FieldByName('sLugarNacimiento').AsString :=  cdPostulanteRh.FieldByName('sLugarNacimiento').AsString;
        cdEmpleadoRH.FieldByName('sCarrera').AsString :=  cdPostulanteRh.FieldByName('sCarrera').AsString;
        cdEmpleadoRH.FieldByName('sTipoSangre').AsString :=  cdPostulanteRh.FieldByName('sTipoSangre').AsString;
        cdEmpleadoRH.FieldByName('dVigenciaLibreta').AsString :=  cdPostulanteRh.FieldByName('dVigenciaLibreta').AsString;
        cdEmpleadoRH.FieldByName('dVigenciaCertMedico').AsString :=  cdPostulanteRh.FieldByName('dVigenciaCertMedico').AsString;
        cdEmpleadoRH.FieldByName('sComentario').AsString :=  cdPostulanteRh.FieldByName('sComentario').AsString;
        cdEmpleadoRH.FieldByName('iEdad').AsString :=  cdPostulanteRh.FieldByName('iEdad').AsString;
        cdEmpleadoRH.FieldByName('lSexo').AsString :=  cdPostulanteRh.FieldByName('lSexo').AsString;
        cdEmpleadoRH.FieldByName('sApellidoPaterno').AsString :=  cdPostulanteRh.FieldByName('sApellidoP').AsString;
        cdEmpleadoRH.FieldByName('sApellidoMaterno').AsString :=  cdPostulanteRh.FieldByName('sApellidoM').AsString;
        cdEmpleadoRH.FieldByName('Iid_NumeroDeCuenta').AsInteger :=  0;
        cdEmpleadoRH.FieldByName('eActivo').AsString :=  'Si';
        cdEmpleadoRH.FieldByName('dFactorInfonavit').asInteger :=  0;
        cdEmpleadoRH.FieldByName('sCP').AsString :=   cdPersonalNomina.FieldByName('CP').AsString;
        cdEmpleadoRH.FieldByName('sInfonavit').AsString :=  cdPersonalNomina.FieldByName('Infonavit').AsString;
        cdEmpleadoRH.FieldByName('sNoCreditoInfonavit').AsString :=  cdPersonalNomina.FieldByName('NumeroInfonavit').AsString;
        cdEmpleadoRH.FieldByName('sCalle').AsString :=  cdPersonalNomina.FieldByName('Calle').AsString;
        cdEmpleadoRH.FieldByName('sColonia').AsString :=  cdPersonalNomina.FieldByName('Colonia').AsString;
        cdEmpleadoRH.FieldByName('sEstado').AsString :=  cdPersonalNomina.FieldByName('Estado').AsString;
        cdEmpleadoRH.FieldByName('sLocalidad').AsString :=  cdPersonalNomina.FieldByName('Municipio').AsString;
        cdEmpleadoRH.FieldByName('sPais').AsString :=  '';//cdPersonalNomina.FieldByName('Pais').AsString;
        cdEmpleadoRH.FieldByName('sEstadonacimiento').AsString :=  cdPersonalNomina.FieldByName('Estadonacimiento').AsString;
        cdEmpleadoRH.FieldByName('sNombremadre').AsString :=  cdPersonalNomina.FieldByName('Nombremadre').AsString;
        cdEmpleadoRH.FieldByName('sNombrepadre').AsString :=  cdPersonalNomina.FieldByName('Nombrepadre').AsString;
        cdEmpleadoRH.FieldByName('codigodepartamento').asInteger :=  dsImss.DataSet.FieldByName('idDepartamento').AsInteger;
        cdEmpleadoRH.FieldByName('dSueldo').AsString :=  dsImss.DataSet.FieldByName('SalarioDiario').AsString;
        cdEmpleadoRH.FieldByName('iId_Puesto').AsString :=  dsImss.DataSet.FieldByName('IdCargo').AsString;
        cdEmpleadoRH.FieldByName('dSalarioDiario').AsString :=  dsImss.DataSet.FieldByName('SalarioDiario').AsString;
        cdEmpleadoRH.FieldByName('dSalarioIntegrado').AsString :=  dsImss.DataSet.FieldByName('SalarioIntegrado').AsString;
        cdEmpleadoRH.FieldByName('IdOrganizacion').AsString :=  dsImss.DataSet.FieldByName('IdOrganizacion').AsString;

        //********HISTORIAL DE CONTRATO EN RH*************
        cdthistorialC.Append;
        //cdthistorialC.FieldByName('iidContrato').AsInteger := 1;
        cdthistorialC.FieldByName('sIdEmpleado').AsString := cdPostulanteRh.FieldByName('sficha').AsString;
        cdthistorialC.FieldByName('dFechaInicio').AsDateTime := dtpcontratacion.Date;

        cdHistorialAB.Append;
        //cdHistorialAB.FieldByName('iId_historialaltasbajas').AsInteger := 1;
        cdHistorialAB.FieldByName('sIdEmpleado').AsString := cdPostulanteRh.FieldByName('sficha').AsString;
        cdHistorialAB.FieldByName('stipo').AsString := 'Alta';
        cdHistorialAB.FieldByName('dfecha').AsDateTime := dtpcontratacion.Date;

        //cdthistorialC.FieldByName('sTipoContrato').AsString := 'TIERRA';

        //solo si es un contrato a bordo
        if dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0 then
        begin
          try
            try
              if not CargarDatosFiltrados(cdtOrdenesTRabajo, 'id_periodoguardia', [cbGuardias.EditValue]) then
                raise InteligentException.Createbycode(11, [' al filtrar por folio']);

              if cdtOrdenesTRabajo.Active then
                cdtOrdenesTRabajo.Refresh
              else
                cdtOrdenesTRabajo.Open;

              if not CargarDatosFiltrados(cdGuardiasMovto, 'iidGuardiasMovtos', [-9]) then
                raise InteligentException.CreateByCode(11, [' Al filtrar  guardias']);

              if cdGuardiasMovto.active then
                cdGuardiasMovto.Refresh
              else
                cdGuardiasMovto.Open;

              cdGuardiasMovto.Append;

              if not CargarDatosFiltrados(cdtGuardiaRh, 'id_PeriodoGuardia', [cbGuardias.EditValue]) then
              raise InteligentException.CreateByCode(11, [' al filtrar por folio de guardia.']);

              if cdtGuardiaRh.active then
                cdtGuardiaRh.Refresh
              else
                cdtGuardiaRh.Open;  //dddd

              //cdGuardiasMovto.FieldByName('iIdGuardiaMovtos').asInteger := 0;
              cdGuardiasMovto.FieldByName('sIdEmpleado').AsString :=  cdPostulanteRh.FieldByName('sficha').AsString;
              cdGuardiasMovto.FieldByName('iIdGuardia').asInteger := cdtGuardiaRh.FieldByName('sIdFolio').AsInteger;
              cdGuardiasMovto.FieldByName('dFechaSubida').AsDateTime := dsImss.DataSet.FieldByName('fechamovimiento').AsDateTime;
              cdGuardiasMovto.FieldByName('dFechaBajada').AsDateTime := cdBajaImss.FieldByName('fechamovimiento').AsDateTime;
              cdGuardiasMovto.FieldByName('sObservaciones').AsString := cbGuardias.Text;
              cdGuardiasMovto.FieldByName('sIdPlataforma').AsString :=  cdtOrdenesTRabajo.FieldByName('sIdPlataforma').asString;
              cdGuardiasMovto.FieldByName('sNumeroOrden').AsString := cdtOrdenesTRabajo.FieldByName('sNumeroOrden').asString;
              cdGuardiasMovto.FieldByName('sIdPernocta').AsString := cdtOrdenesTRabajo.FieldByName('sIdPernocta').asString;
              cdGuardiasMovto.FieldByName('sContrato').AsString := cdtOrdenesTRabajo.FieldByName('sContrato').asString;
              cdGuardiasMovto.FieldByName('sStatus').AsString := 'ACTIVO';
              cdGuardiasMovto.FieldByName('sComentario').Clear;
              cdGuardiasMovto.FieldByName('ID_GuardiaPeriodo').asInteger := dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger;
              cdGuardiasMovto.FieldByName('iId_Puesto').asInteger := dsImss.DataSet.FieldByName('idCargo').AsInteger;
              cdGuardiasMovto.FieldByName('sTranferido').AsString := 'NO';
              cdGuardiasMovto.FieldByName('Reprogramacion').Clear;
              cdGuardiasMovto.FieldByName('sConfirmado').AsString :=  'NO';

              if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0) AND (cdPostulanteRh.RecordCount > 0)then
              begin
                cdEmpleadoRH.FieldByName('sStatusTipoPersonal').AsString := 'A bordo';
                cdEmpleadoRH.FieldByName('codigodepartamento').AsString :=  'PLAT';
                cdthistorialC.FieldByName('sPeriodoLaboral').AsString := cdPostulanteRh.FieldByName('sficha').AsString;
                cdthistorialC.FieldByName('dFechaTermino').AsDateTime := cdBajaImss.FieldByName('fechamovimiento').AsDateTime;
                cdthistorialC.FieldByName('sidGuardia').AsInteger := cdtGuardiaRh.FieldByName('sIdFolio').AsInteger;
                cdthistorialC.FieldByName('ID_periodoguardia').asInteger := dsImss.DataSet.FieldByName('IdPeriodosGuardia').AsInteger;
                cdthistorialC.FieldByName('sPeriodoLaboral').AsString := 'del ' + DateToStr(dtpcontratacion.Date) + ' al ' + cdBajaImss.FieldByName('fechamovimiento').AsString;
                cdthistorialC.FieldByName('sTipoContrato').AsString := 'ABORDO';
              end
              else
              begin
                cdEmpleadoRH.FieldByName('sStatusTipoPersonal').AsString := 'Tierra';
                cdthistorialC.FieldByName('dFechaInicio').asString := '0000-00-00';
                cdthistorialC.FieldByName('sPeriodoLaboral').AsString := 'Indefinido';
                cdthistorialC.FieldByName('sidGuardia').Clear;
                cdthistorialC.FieldByName('ID_periodoguardia').Clear;
                cdthistorialC.FieldByName('sTipoContrato').AsString := 'TIERRA';
              end;

            except
              on e: Exception do
                InteliDialog.ShowModal('Error','Ocurrió el siguente error: ' + e.toString + ' Clase: ' + e.ClassName,mtConfirmation, [mbOk], 0);
            end;
          finally
             EliminarConjunto(cdtOrdenesTRabajo);
             cdtOrdenesTRabajo.Destroy;
          end;
        end;
      end;
    except
    on e: Exception do
       InteliDialog.ShowModal('Error','Ocurrió el siguente error: ' + e.toString + ' Clase: ' + e.ClassName,mtConfirmation, [mbOk], 0);
    end;
  finally

  end;
end;

procedure TFrmContratarWizard.cxbtnagregarClick(Sender: TObject);
var
  objHorario: THorarios;
  I: integer;
  EstadoBtn: boolean;
begin
  if Not (cdMemHorarios.State in [dsInsert, dsEdit]) then
  begin
    cdMemHorarios.Append;
    cxbtnagregar.Caption := '&Guardar';
    EstadoBtn :=  Not (cdMemHorarios.State = dsInsert) and (cdMemHorarios.RecordCount > 0);
    cxBtnEdit.Enabled := EstadoBtn;
    cxbtnDel.Enabled := EstadoBtn;
  end
  else
  begin
    cdMemHorarios.Post;
    cxBtnAgregar.Caption := '&Añadir';
  end;


//  try
//    if Length(trim(CxDbTextTituloHorario.Text)) = 0 then
//      raise InteligentException.CreateByCode(18, ['Titulo']);
//
//    if Length(trim(CxDbTimeInicio.Text)) = 0 then
//      raise InteligentException.CreateByCode(18, ['Horario de Inicio']);
//
//    if Length(trim(CxDbTimeTermino.Text)) = 0 then
//      raise InteligentException.CreateByCode(18, ['Horario de Término']);
//
//    ObjHorario := THorarios.Create;
//    objhorario.TituloHorario := CxDbTextTituloHorario.Text;
//    objHorario.HoraInicio := CxDbTimeInicio.Time;
//    objHorario.HoraTermino := CxDbTimeTermino.Time;
//    StringHorarios.AddObject(objHorario.TituloHorario, objHorario);
//    lblHorarioLaboral.Caption.Text := '';
//
//    for i := 0 to StringHorarios.Count - 1 do
//    begin
//      if cdHorarios.RecNo < cdHorarios.RecordCount then
//        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  + TimeToStr(THorarios(StringHorarios.Objects[i]).HoraInicio) + ' a ' + TimeToStr(THorarios(StringHorarios.Objects[i]).HoraTermino) + '  -  '
//      else
//        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  +  TimeToStr(THorarios(StringHorarios.Objects[i]).HoraInicio) + ' a ' + TimeToStr(THorarios(StringHorarios.Objects[i]).HoraTermino);
//    end;
//  Except
//    on e: InteligentException do
//      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
//  end;
end;

procedure TFrmContratarWizard.cxbtnDelClick(Sender: TObject);
begin
  if (cdMemHorarios.RecordCount > 0) and (InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea eliminar este corte horario?', mtConfirmation, [mbYes, mbNO], 0) = mrYes)  then
    cdMemHorarios.Delete;
end;

procedure TFrmContratarWizard.cxbtnEditarClick(Sender: TObject);
begin
  try
    try
      if Assigned(frmEmergente) then
        FrmEmergente.destroy;

      FrmEmergente := TForm.Create(self);
      FrmEmergente.Caption := 'Nueva captura de corte horario';
      FrmEmergente.Position := poScreenCenter;
      FrmEmergente.BorderStyle := bsDialog;
      FrmEmergente.Width := 490;
      FrmEmergente.height := 200;
      pnlHorarios.Parent := FrmEmergente;
      pnlHorarios.Align := AlClient;
      pnlHorarios.Visible := true;

      FrmEmergente.ShowModal;
    finally
      if pnlHorarios.Parent <> self then
      begin
        pnlHorarios.Align := AlNone;
        pnlHorarios.Visible := False;
        pnlHorarios.Parent := Self;
      end;
    end;
  except
    on e: InteligentException do
    begin

        cdHorarios.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmContratarWizard.cxbtnEditClick(Sender: TObject);
begin
  if cdMemHorarios.RecordCount > 0 then
    cdMemHorarios.Edit;
end;

procedure TFrmContratarWizard.cxbtnSalirClick(Sender: TObject);
begin
  if (cdHorarios.Active) and (cdHorarios.RecordCount > 0) and (cdMemHorarios.RecordCount > 0)then
  begin
    lblHorarioLaboral.Caption.Text := '';
    cdMemHorarios.First;
    while not cdMemHorarios.Eof do
    begin
      if cdMemHorarios.RecNo < cdMemHorarios.RecordCount then
        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  + cdMemHorarios.FieldByName('HoraInicio').AsString + ' a ' + cdMemHorarios.FieldByName('HoraTermino').AsString + '  -  '
      else
        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  + cdMemHorarios.FieldByName('HoraInicio').AsString + ' a ' + cdMemHorarios.FieldByName('HoraTermino').AsString;

      cdMemHorarios.Next
    end;
  end
  else
  begin
    cdHorarios.First;
    while not cdHorarios.Eof do
    begin
      if cdHorarios.RecNo < cdHorarios.RecordCount then
        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  + cdHorarios.FieldByName('HoraInicio').AsString + ' a ' + cdHorarios.FieldByName('HoraTermino').AsString + '  -  '
      else
        LblHorarioLaboral.Caption.Text := LblHorarioLaboral.Caption.Text  + ' '  + cdHorarios.FieldByName('HoraInicio').AsString + ' a ' + cdHorarios.FieldByName('HoraTermino').AsString;
      cdHorarios.Next
    end;
  end;
end;

procedure TFrmContratarWizard.CxCbbPeriodosGuardiaPropertiesChange(
  Sender: TObject);
begin
  if CdPGuardias.Locate('IdPeriodosGuardia', CxCbbPeriodosGuardia.EditValue, []) then
  begin
    TcxDateEditProperties(dtpContratacion.Properties).MinDate := dsPeriodosGuardia.DataSet.FieldByName('FechaInicio').AsDateTime;
    TcxDateEditProperties(dtpContratacion.Properties).MaxDate := dsPeriodosGuardia.DataSet.FieldByName('FechaTermino').AsDateTime;
//    TcxDateEditProperties(dtpCorte.Properties).MinDate := dsPeriodosGuardia.DataSet.FieldByName('FechaInicio').AsDateTime;
//    TcxDateEditProperties(dtpCorte.Properties).MaxDate := dsPeriodosGuardia.DataSet.FieldByName('FechaTermino').AsDateTime;
    //dtpCorte.Date := dsPeriodosGuardia.DataSet.FieldByName('FechaInicio').AsDateTime;
    dtpcontratacion.Date := dsPeriodosGuardia.DataSet.FieldByName('FechaInicio').AsDateTime;
  end;
end;

procedure TFrmContratarWizard.dtpcontratacionClick(Sender: TObject);
begin
 //Gustavo: Calculando 1os días trabajados a la fecha de corte a partir de la fecha de contrato
   if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (ChFecha=False) then
    begin
      try
        dtpCorte.Date := IncDay(dtpcontratacion.Date, (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger - 1));
        ChFecha:=False;

      except
        dtpCorte.Date := Now;
      end;
    end;
end;

procedure TFrmContratarWizard.dtpcontratacionPopupValueAccepted(
  Sender: TObject);
var
  parametros: TParamFilter;
  cursor: TCursor;
begin
  if (cdtPeriodosG <> nil) and (cbGuardias.EditValue <> null) then
  begin
    try
      parametros := TParamFilter.Create;
      parametros.Add('idguardia',inttostr(cbGuardias.EditValue));
      parametros.Add('fecha',ClientModule1.DatetoStrSql(StrToDate(dtpcontratacion.Text)));
      try
        if Not CargarDatosFiltrados(cdtPeriodosG, parametros) then
          raise InteligentException.CreateByCode(11, [' Al consultar por guardia y fecha']);

        if cdtPeriodosG.active then
          cdtPeriodosG.Refresh
        else
          cdtPeriodosG.Open;
        //si no coincide en ninguna guardia
        if  cdtPeriodosG.RecordCount = 0 then
        begin
//          if (InteliDialog.ShowModal('Aviso','Fecha de contratación incorrecta',
//          'La fecha de contrato no se encuentra en ningún rango de los periodos de guardia.'+
//          'Desea que el sistema ajuste la fecha de contratación a la fecha mas próxima?',
//          mtError,[mbyes, mbNo],0)) = mrYes then
//          begin
//            acomodarGuardia;
//            dtpcontratacionPopupValueAccepted(nil);
//          end
//          else
//          begin
//            advLblnoDomingos.Caption.Text := '';
//            advLblNoFestivos.Caption.Text := '';
//            advLblFechai.Caption.Text := '' ;
//            advLblFechaf.Caption.Text := '';
//            advLblDDiasFestivos.Caption.Text := '';
//            sPeriodoGuardia := -1;
//          end;
        end
        else
        begin
          advLblFechai.Caption.Text := cdtPeriodosG.FieldByName('Fechainicio').asString;
          advLblFechaf.Caption.Text := cdtPeriodosG.FieldByName('FechaTermino').asString;
          sPeriodoGuardia := cdtPeriodosG.FieldByName('IdPeriodosGuardia').AsInteger;

          //FESTIVOS Y DOMINGOS
          Try
            cdtDiasFestivos := TClientDataSet.Create(nil);
            Try
              Screen.Cursor := crHourGlass;
              advLblnoFestivos.Caption.Text := '';

              // Verificar el número de festivos y domingos
              if cdtDiasFestivos.ProviderName = '' then
              begin
                if not CrearConjunto(cdtDiasFestivos, 'rhu_diasfestivos', ccCatalog) then
                  raise InteligentException.CreateByCode(5, ['Días Festivos']);
              end;
              if ((cdtDiasFestivos.ProviderName <> '') and (Not cdtDiasFestivos.Active)) or ((cdtDiasFestivos.ProviderName <> '') and (cdtDiasFestivos.Active) and (cdtDiasFestivos.RecordCount > 0) and (YearOf(cdtDiasFestivos.FieldByName('Fecha').AsDateTime) <> YearOf(dtpcontratacion.Date))) then
              begin
                if Not CargarDatosFiltrados(cdtDiasFestivos, 'Anioinicio,Aniotermino',[YearOf(dtpcontratacion.Date), YearOf(StrToDate(advLblFechaf.Caption.Text))]) then
                  raise InteligentException.CreateByCode(6,['Días Festivos', YearOf(dtpcontratacion.Date), 'Año']);
                if cdtDiasFestivos.Active then
                  cdtDiasFestivos.Refresh
                else
                  cdtDiasFestivos.Open;
              end;
              TRY
                ContarFestivos;
              except
                ;
              END;
            except
              on e:Exception do
                InteliDialog.ShowModal('Aviso','Ah ocurrido un error inesperado',
                  'Informe al administrador del siguiente error: ' + #10#13 + e.ToString ,
                  mtError,[mbOK],0) ;
            End;
          Finally
            EliminarConjunto(cdtDiasFestivos);
            cdtDiasFestivos.Destroy;
            Screen.Cursor := Cursor;
          End;
          SalarioCalculado :=  calcularRango;
        end;
      except
      on e:Exception do
        ShowMessage(e.ToString + ' ' + e.ClassName);
      end;
    finally
      parametros.Destroy;
    end;
  end;
end;

procedure TFrmContratarWizard.dtpcontratacionPropertiesChange(Sender: TObject);
begin
  //if Paso5.Showing then
    dtpcontratacionPopupValueAccepted(Nil);
end;

procedure TFrmContratarWizard.dtpcontratacionPropertiesCloseUp(Sender: TObject);
begin
  dtpcontratacionPopupValueAccepted(nil);
end;

procedure TFrmContratarWizard.dtpCorteChange(Sender: TObject);
begin
  ChFecha:=True;
end;

procedure TFrmContratarWizard.dtpCorteClick(Sender: TObject);
begin
   //Gustavo: Calculando 1os días trabajados a la fecha de corte a partir de la fecha de contrato
   if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (ChFecha=False) then
    begin
      try
        dtpCorte.Date := IncDay(dtpcontratacion.Date, (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger - 1));
        ChFecha:=False;

      except
        dtpCorte.Date := Now;
      end;
    end;
end;

procedure TFrmContratarWizard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DsImss.DataSet.State in [dsInsert,dsEdit] then
    DsImss.DataSet.Cancel;

  if cdBajaImss.State in [dsInsert,dsEdit] then
    cdBajaImss.Cancel;

  if cdGrupoSalario.Active then
    cdGrupoSalario.Close;
  if Assigned(mPercepciones) then
    mPercepciones.Free;

  if assigned(mDeducciones) then
    mDeducciones.Free;

  If (cdEmpleadoRH <> nil) and (cdEmpleadoRH.State in [dsInsert, dsEdit]) then
    cdEmpleadoRH.Cancel;

  if (cdGuardiasMovto <> nil) and (cdGuardiasMovto.State in [dsInsert, dsEdit]) then
    cdGuardiasMovto.Cancel;

  FlagSalario := -1;
end;

procedure TFrmContratarWizard.FormCreate(Sender: TObject);
begin
  try
    cdtmp.CreateDataSet;
    cdtGuardiaRh := TClientDataSet.Create(self);
    sPeriodoGuardia := -1;
    iContratar := 0;
    cdtPeriodosG := TClientDataSet.Create(self);
    cdtGrupoSalario := TClientDataSet.Create(self);
    cdtSalario := TClientDataSet.Create(self);
    cdBajaImss := TClientDataSet.Create(self);
    cdtPersonalRH := TClientDataSet.Create(self);
    cdtOrdenesTRabajo := TClientDataSet.Create(self);

    cdMemHorarios.FieldDefs.Add('TituloHorario', ftString, 50, False);
    cdMemHorarios.FieldDefs.Add('HoraInicio', ftTime, 0, false);
    cdMemHorarios.FieldDefs.Add('HoraTermino', ftTime, 0, False);
    cdMemHorarios.CreateDataSet;


    //para consultar datos del personal de Nóminas
    if not CrearConjunto(cdPersonalNomina, 'nuc_personal',ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Personal Nomina']);

    //cargar periodos, para mostrar de acuerdo a la fecha de contratación
    if not CrearConjunto(cdtPeriodosG, 'nom_periodosguardia_disponibles', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Periodos Guardia']);

    //cargar grupos de salarios para poder seleccionar el tipo de salario que le corresponderá al empleado
    if not CrearConjunto(cdtGrupoSalario, 'rhu_salario_grupo', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Grupo de salarios']);

    //Cargar Salario del cargo
    if not CrearConjunto(cdtSalario,'rhu_salario', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Salario']);

     //PARA CREAR EL REGISTRO DE BAJA
    if not CrearConjunto(cdBajaImss,'nuc_personalimss',ccupdate) then
      raise InteligentException.CreateByCode(5,['Personal Imss']);

    if not CrearConjunto(CdPGuardias, 'nom_periodosguardia', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Periodos de Guardias']);

    if not CrearConjunto(cdHorarios, 'nom_tablahorarios', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nom_tablahorarios']);

    StringHorarios := TStringList.Create;

    //Quitar la visibilidad de las tab
    Paso1.TabVisible := False;
    Paso2.TabVisible := False;
    Paso3.TabVisible := False;
    Paso4.TabVisible := False;
    Paso5.TabVisible := False;
    Paso6.TabVisible := False;

    dtpcontratacion.Date := DateOf(now);

  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratarWizard.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  oOrg: TOrganizacion;
begin
  GrupoPaginas.ActivePageIndex := 0;
  EdtSalarioDiario.Top := 177;
  lblSalario.Top := 177;
  BtnCalcSalario.Top := 177;
  lblSalario.Visible := True;
  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      //llenamos el combo del primer nivel organizacional
      cmborganizacion.Properties.items.clear;
      CmbOrganizacion.Text := '';
      LlenandoOrg := True;
      try
        if not CargarDatosFiltrados(cdBajaImss, 'IdPersonalIMSS', [-9]) then
          raise InteligentException.CreateByCode(11, [' al filtrar por personal']);

        if cdBajaImss.Active then
          cdBajaImss.Refresh
        else
          cdBajaImss.Open;

        cdBajaImss.Append;

        frxbajaimss.DataSet := cdBajaImss;
        dsOrganizacion.DataSet.Filtered := False;
        dsOrganizacion.DataSet.Filter := ' padre = -5';
        dsOrganizacion.DataSet.Filtered := True;
        //cmborganizacionLBL.Caption := UpperCase(dsOrganizacion.DataSet.FieldByName('titulonivel').AsString)+':';

        LlenarComboOrg('IdOrganizacion','CodigoOrganizacion','TituloOrganizacion', 'RegPatImss', TClientDataSet(dsOrganizacion.DataSet), CmbOrganizacion);
        if dsOrganizacion.DataSet.RecordCount > 0 then
          CmbOrganizacion.ItemIndex := 0;

        //llenar Combos de registros Patronales de las organizaciones Padres
        dsOrganizacion.DataSet.First;
        while not dsOrganizacion.DataSet.Eof do
        begin
          if dsOrganizacion.DataSet.FieldByName('Padre').AsInteger = -5 then
          begin
            oOrg := TOrganizacion.Create;
            oOrg.Identificador := dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger;
            oOrg.Isr := dsOrganizacion.DataSet.FieldByName('regPatImss').AsString;
            CxLCbbRegPat.Properties.Items.AddObject(oOrg.Isr, oOrg);
          end;
          dsOrganizacion.DataSet.Next;
        end;

        if cdSalMinDF.ProviderName = '' then
          if Not CrearConjunto(cdSalMinDF, 'rhu_salario', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Salarios']);

        if Not CargarDatosFiltrados(cdSalMinDF, 'FechaAplicacion,TipoSalario', [ClientModule1.DatetoStrSql(Now), 'SMVDF']) then
          raise InteligentException.CreateByCode(6, ['Salarios', 'Tipo Salario', 'SMVDF']);

        if cdSalMinDF.Active then
          cdSalMinDF.Refresh
        else
          cdSalMinDF.Open;

        if cdSalMinDF.RecordCount <> 1 then
          raise InteligentException.CreateByCode(22, ['Salario Mínimo del D.F.']);

        if Not CrearConjunto(cdGrupoSalario, 'nom_gruposalario', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Grupos de Salario']);

        cdGrupoSalario.Open;
      finally
        dsOrganizacion.DataSet.Filtered := False;
        dsOrganizacion.DataSet.First;
        LlenandoOrg := False;
      end;
      cmbOrganizacionPropertiesCloseUp(CmbOrganizacion);

      advLblnoDomingos.Caption.Text := '';
      advLblNoFestivos.Caption.Text := '';
      advLblFechai.Caption.Text := '' ;
      advLblFechaf.Caption.Text := '';
      FlagSalario := -1;

//      if Form2.cdConfiguracionAcceso.fieldbyname('RegistrosIndividuales').asString = 'Si' then
//      begin
//        cmbOrganizacion.ItemIndex := cmbOrganizacion.Properties.Items.IndexOf(ClientModule1.cdOrganizacion.FieldByName('CodigoOrganizacion').AsString + ' - ' + ClientModule1.cdOrganizacion.FieldByName('TituloOrganizacion').AsString);
//        Btn_SiguienteClick(nil);
//      end
//      else
        GrupoPaginas.ActivePageIndex := 0;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmContratarWizard.frContratarDblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if (ssCtrl in Shift) and ((InteliDialog.ShowModal('Aviso','Esta seguro que desea contratar a :',
    Sender.TagStr + #10#13,mtConfirmation,[mbYes,mbNo],0)) = mryes) then
  begin
    iContratar := 1;
    contratar;
    if (InteliDialog.ShowModal('Aviso','Contratación registrada correctamente.' + #10#13 +'Desea permanecer en esta ficha de contratación?',mtConfirmation,[mbYes,mbNo],0)) = mrNo then
    begin
      frContratar.PreviewForm.Close;
      Self.Close;
    end
    else
      Self.Close;
  end;
end;

procedure TFrmContratarWizard.frContratarGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'totded') = 0 then
    Value := TotalDeducciones;

  if CompareText(VarName, 'totper') = 0 then
    Value := TotalPercepciones;

  if CompareText(VarName, 'neto') = 0 then
    Value := Neto;

  if CompareText(VarName, 'totdedcomp') = 0 then
    Value := TotalDedComp;

  if CompareText(VarName, 'totpercomp') = 0 then
    Value := TotalPerComp;

  if CompareText(VarName, 'netocomp') = 0 then
    Value := NetoComp;

  if CompareText(VarName, 'diast') = 0 then
    Value := DiasT;

  if CompareText(VarName, 'diascomp') = 0 then
    Value := DiasComp;

  if CompareText(varName, 'NombreOrganizacion') = 0 then
    Value := cmbOrganizacion.Text;
end;

procedure TFrmContratarWizard.LlenarComboOrg(Llave,Codigo, Titulo, isr: string;
  Cliente: TClientDataset; Combo: TcxComboBox);
var
  Org: TOrganizacion;
begin
  if Cliente.state = dsBrowse then
  begin
    Combo.Properties.items.Clear;
    if CompareText(Combo.Name, 'CmbORganizacion2') = 0 then
      Combo.Properties.Items.Add('<ASIGNAR A EMPRESA PRINCIPAL>');

    Cliente.first;
    while not Cliente.eof do
    begin
      Org:= TOrganizacion.Create;
      Org.Identificador := Cliente.FieldByName(llave).AsInteger;
      Org.Isr := Cliente.FieldByName(isr).asstring;
      Combo.Properties.Items.AddObject(Cliente.fieldbyname(Codigo).asstring + ' - ' + Cliente.fieldbyname(Titulo).asstring, Org);
      Cliente.next;
    end;
  end;
end;

procedure TFrmContratarWizard.LCbbCargoDropDown(Sender: TObject);
begin
  cbbSalario.Properties.ListFieldIndex := 0;
end;

procedure TFrmContratarWizard.LCbbTipoNominaCloseUp(Sender: TObject);
begin
  dsTipoNomina.Dataset.Locate('IdTipoNomina', LCbbTipoNomina.EditValue, []);
end;

procedure TFrmContratarWizard.LCbbTipoNominaPropertiesChange(Sender: TObject);
Var Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      dsTipoNomina.DataSet.Locate('IdTipoNomina', LCbbTipoNomina.EditValue, []);
      if not CargarDatosFiltrados(cdHorarios, 'IdTipoNomina', [dstipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['nom_tablaHorarios',dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsString,'idTipoNomina']);

      if cdHorarios.Active then
        cdHorarios.Refresh
      else
        cdHorarios.Open;
    Finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmContratarWizard.LlenarCombo(Llaves, Titulos:string; Cliente:TClientDataset; Combo:TAdvComboBox);
begin
  if Cliente.state = dsBrowse then
  begin
    Combo.items.Clear;
    Cliente.first;
    while not Cliente.eof do
    begin
      Combo.AddItem(Cliente.fieldbyname(Titulos).asstring, TObject(Cliente.FieldByName(llaves).AsInteger));
      Cliente.next;
    end;
  end;
end;

procedure TFrmContratarWizard.EdtSalarioDiarioClick(Sender: TObject);
begin
  //Gustavo: Calculando 1os días trabajados a la fecha de corte a partir de la fecha de contrato
   if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger = 0) and (ChFecha=False) then
    begin
      try
        dtpCorte.Date := IncDay(dtpcontratacion.Date, (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger - 1));
        ChFecha:=False;

      except
        dtpCorte.Date := Now;
      end;
    end;
end;

procedure TFrmContratarWizard.EstadoBotones;
begin
  // Verificar que botones deben estar habilitados
  Btn_Anterior.Enabled := GrupoPaginas.ActivePageIndex > 0;
  //Btn_Siguiente.Enabled := GrupoPaginas.ActivePageIndex < GrupoPaginas.AdvPageCount -1;
  Btn_Contratar.Enabled := GrupoPaginas.ActivePageIndex = GrupoPaginas.AdvPageCount -1;
end;

procedure TFrmContratarWizard.ProyectarNomina(var cdNomina: TClientDataSet;
                                              var cdPersonalNomina: TClientDataSet;
                                              var cdPersonal: TClientDataSet;
                                              var cdgcConcepto: TClientDataSet;
                                              var cdConceptoExtra: TClientDataSet;
                                              var cdSumaConcepto: TClientDataSet;
                                              var memPercepciones: TClientDataSet;
                                              var memDeducciones: TClientDataSet;

                                                  IdTipoNomina: Integer;
                                                  DiasTrabajados: Integer;
                                                  DiasDescanso: Integer;
                                                  InicioSemana: String;
                                                  IdTipoTablaISPT: Integer;
                                                  Periodicidad: Real;
                                                  Salario: Real;
                                                  SalarioIntegrado: Real;
                                                  SalMinGenZona: Real;
                                                  DiasVacaciones: Integer;
                                                  DiasAguinaldo: Integer;
                                                  FactorPrimaDominical: Real;
                                                  FactorPrimaVacacional: Real;
                                                  DiasExcentoPrimaVacacional: Integer;
                                                  DiasExcentoAguinaldo: Integer;
                                                  SeguroVidaINFONAVIT: Real;
                                                  DiasFestivos: Integer);

begin
  (*CrearConjuntoDatosProyeccion(cdNomina, cdPersonalNomina, cdPersonal,
                               cdgcConcepto,cdConceptoExtra, cdSumaConcepto,
                               memPercepciones, memDeducciones,

                               IdTipoNomina, DiasTrabajados, DiasDescanso,
                               InicioSemana, IdTipoTablaISPT, Periodicidad,
                               Salario, SalarioIntegrado, SalMinGenZona,
                               DiasVacaciones, DiasAguinaldo,
                               FactorPrimaDominical, FactorPrimaVacacional,
                               DiasExcentoPrimaVacacional, DiasExcentoAguinaldo,
                               SeguroVidaINFONAVIT, DiasFestivos); *)

{  CalcularNominaEmpleado(cdNomina,
                         cdPersonalNomina,
                         Nil,
                         cdPersonal,
                         cdgcConcepto,
                         cdConceptoExtra,
                         cdSumaConcepto,
                         memPercepciones,
                         memDeducciones,
                         Panel_Progress,
                         False,
                         Ocultar);}

end;

end.
