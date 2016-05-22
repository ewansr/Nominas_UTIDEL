unit UTFRMDatosContratacion;

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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxContainer, cxGroupBox, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, DBClient, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxLabel, cxDBEdit, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  ClientModuleUnit1, UInteliDialog, cxDBLookupComboBox, cxGridChartView,
  cxGridDBChartView, Menus, StdCtrls, cxButtons;

type
  TFrmDatosContratacion = class(TForm)
    dxbrmngr1: TdxBarManager;
    dxbrmngr1Bar1: TdxBar;
    dxBtnSave: TdxBarLargeButton;
    CxGridDatos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox1: TcxGroupBox;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    CdPersonalImss: TClientDataSet;
    dsPersonalImss: TDataSource;
    CdPersonalImssUpt: TClientDataSet;
    dsPersonalImssUpt: TDataSource;
    dxDateFechaReal: TcxDBDateEdit;
    cbbTipoMovto: TcxComboBox;
    dxDateFechaMovimiento: TcxDBDateEdit;
    cbbJornada: TcxDBComboBox;
    editSalarioIntegrado: TcxDBTextEdit;
    editSalarioDiario: TcxDBTextEdit;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    cbbDepartamento: TcxDBLookupComboBox;
    cbbCargo: TcxDBLookupComboBox;
    cbbPeriodosGuardia: TcxDBLookupComboBox;
    cbbOrganizacion: TcxDBLookupComboBox;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    lbl10: TcxLabel;
    lbl11: TcxLabel;
    CxColumnFechaMovto: TcxGridDBColumn;
    CxColumnTipoMovimiento: TcxGridDBColumn;
    CxColumnJornada: TcxGridDBColumn;
    CxColumnSalarioDiario: TcxGridDBColumn;
    CxColumnSalarioIntegrado: TcxGridDBColumn;
    CxColumnOrganizacion: TcxGridDBColumn;
    CxColumnDepartamento: TcxGridDBColumn;
    CxColumnPeriodoGuardia: TcxGridDBColumn;
    CxColumnCargo: TcxGridDBColumn;
    DxBarBtnEditar: TdxBarLargeButton;
    DxBarBtnCancel: TdxBarLargeButton;
    CdOrganizacion: TClientDataSet;
    dsOrganizacion: TDataSource;
    CdDepartamentos: TClientDataSet;
    dsDepartamentos: TDataSource;
    CdCargos: TClientDataSet;
    dsCargos: TDataSource;
    CdPeriodosGuardia: TClientDataSet;
    dsPeriodosGuardia: TDataSource;
    DxBarBtnAgregarMSD: TdxBarLargeButton;
    DxBarBtnActualizar: TdxBarLargeButton;
    CxLevel2: TcxGridLevel;
    cxGridChartDatos: TcxGridDBChartView;
    CxSerieDatos: TcxGridDBChartSeries;
    CxDataGroupsueldos: TcxGridDBChartDataGroup;
    cxGBDatosSalario: TcxGroupBox;
    CxDbTxtSD: TcxDBTextEdit;
    CxDbTxtSDI: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    CxDbDateMovto: TcxDBDateEdit;
    CxBtnGuardar: TcxButton;
    CxBtnCancel: TcxButton;
    dsTPimss: TDataSource;
    DxBarBtnEliminar: TdxBarLargeButton;
    cxStyle1: TcxStyle;
    DxBarBtn1: TdxBarLargeButton;
    DxBarBtn2: TdxBarLargeButton;
    CxColumnTipoNomina: TcxGridDBColumn;
    CxLbl1: TcxLabel;
    CxCbbRegPat: TcxDBLookupComboBox;
    cxlbl2: TcxLabel;
    cxCbbCobraFestivos: TcxComboBox;
    procedure estadoBotones;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdPersonalImssAfterScroll(DataSet: TDataSet);
    procedure DxBarBtnEditarClick(Sender: TObject);
    procedure dxBtnSaveClick(Sender: TObject);
    procedure DxBarBtnCancelClick(Sender: TObject);
    procedure CdOrganizacionAfterScroll(DataSet: TDataSet);
    procedure cbbOrganizacionPropertiesChange(Sender: TObject);
    procedure cbbPeriodosGuardiaPropertiesChange(Sender: TObject);
    procedure CxGridDatosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DxBarBtnActualizarClick(Sender: TObject);
    procedure DxBarBtnAgregarMSDClick(Sender: TObject);
    procedure CxBtnGuardarClick(Sender: TObject);
    procedure DxBarBtnEliminarClick(Sender: TObject);
    procedure CxBtnCancelClick(Sender: TObject);
  private
    gForm: TForm;
    TPImss: TClientDataSet;
    function tieneCambios(var Dataset: TClientDataSet): Boolean;
    { Private declarations }
  public
    idPersonal: Integer;
    { Public declarations }
  end;

var
  FrmDatosContratacion: TFrmDatosContratacion;

implementation

{$R *.dfm}

procedure TFrmDatosContratacion.cbbOrganizacionPropertiesChange(
  Sender: TObject);
var
  LocIdCargo: Integer;
begin
  LocIdCargo := CdPersonalImss.FieldByName('IdCargo').AsInteger;
  if (CdOrganizacion.Active) and (CdOrganizacion.RecordCount > 0) then
  begin
    try
      if CdOrganizacion.Locate('idOrganizacion', cbbOrganizacion.EditValue, []) then
        if CdOrganizacion.FieldByName('Padre').AsInteger = -5 then
        begin
          CdCargos.Filtered := False;
          CdCargos.Filter := 'IdOrganizacion= ' +  QuotedStr(VarToStr(CdOrganizacion.FieldByName('IdOrganizacion').AsInteger));
          CdCargos.Filtered := True;
        end
        else
        begin
          CdCargos.Filtered := False;
          CdCargos.Filter := 'IdOrganizacion= ' +  QuotedStr(VarToStr(CdOrganizacion.FieldByName('Padre').AsInteger));
          CdCargos.Filtered := True;
        end;
      cbbCargo.EditValue := LocIdCargo;
    except
      CdCargos.Filtered := False;
    end;
  end;
end;

procedure TFrmDatosContratacion.cbbPeriodosGuardiaPropertiesChange(
  Sender: TObject);
begin
  if (cbbPeriodosGuardia.EditValue <> null) and (CdPeriodosGuardia.Locate('IdPeriodosGuardia', cbbPeriodosGuardia.EditValue, [])) then
  begin
    dxDateFechaMovimiento.Properties.MinDate := CdPeriodosGuardia.FieldByName('FechaInicio').AsDateTime;
    dxDateFechaMovimiento.Properties.MaxDate := CdPeriodosGuardia.FieldByName('FechaTermino').AsDateTime;
  end;
end;

procedure TFrmDatosContratacion.CdOrganizacionAfterScroll(DataSet: TDataSet);
begin
  if (CdOrganizacion.Active) and (CdOrganizacion.RecordCount > 0) then
  begin
    try
      CdDepartamentos.Filtered := False;
      CdDepartamentos.Filter := 'IdOrganizacion= ' +  QuotedStr(VarToStr(cbbOrganizacion.EditValue));
      CdDepartamentos.Filtered := True;
    except
      CdDepartamentos.Filtered := False;
    end;
  end;
end;

procedure TFrmDatosContratacion.CdPersonalImssAfterScroll(DataSet: TDataSet);
begin
  if (CdPersonalImssupt.Active) and (CdPersonalImssUpt.Locate('IdPersonalImss', CdPersonalImss.FieldByName('IdPersonalImss').AsInteger, [])) then
  begin
    cbbTipoMovto.Text := CdPersonalImss.FieldByName('TipoMovimiento').AsString;
    if CdPersonalImssUpt.FieldByName('CobraFestivos').AsInteger = 1 then
      cxCbbCobraFestivos.ItemIndex := 0
    else
      cxCbbCobraFestivos.ItemIndex := 1;
  end;
end;

procedure TFrmDatosContratacion.CxBtnCancelClick(Sender: TObject);
begin
  try
    ;
  finally
    cxGBDatosSalario.Parent := Self;
    cxGBDatosSalario.Align := AlCustom;
    cxGBDatosSalario.Visible := False;
  end;
end;

procedure TFrmDatosContratacion.CxBtnGuardarClick(Sender: TObject);
var
  LocIdPersonal: string;
begin
  try
    try
      if (Assigned(TPImss)) and (TPImss.State = dsInsert) then
      begin
        LocIdPersonal := CdPersonalImss.FieldByName('IdPersonal').AsString;

        TPImss.FieldByName('IdPersonalImss').AsInteger := 0;
        TPImss.FieldByName('IdPersonal').AsInteger := CdPersonalImss.FieldByName('IdPersonal').AsInteger;
        TPImss.FieldByName('FechaMovimiento').AsDateTime := CxDbDateMovto.Date;
        TPImss.FieldByName('FechaRegistro').AsDateTime := Now();
        TPImss.FieldByName('TipoMovimiento').asString := 'Modificación';
        TPImss.FieldByName('Jornada').AsInteger := CdPersonalImss.FieldByName('Jornada').AsInteger;
        TPImss.FieldByName('cobraFestivos').AsInteger := CdPersonalImss.FieldByName('cobrafestivos').AsInteger;
        TPImss.FieldByName('idPlazaDetalle').AsInteger := CdPersonalImss.FieldByName('IdPlazaDetalle').AsInteger;
        TPImss.FieldByName('RegistroPatronal').AsString := CdPersonalImss.FieldByName('RegistroPatronal').AsString;
        TPImss.FieldByName('SalarioDiario').AsString := CxDbTxtSD.Text;
        TPImss.FieldByName('SalarioIntegrado').AsString := CxDbTxtSDI.Text;
        TPImss.FieldByName('Procesado').AsString := 'Si';
        if Not CdPersonalImss.FieldByName('IdPeriodosGuardia').IsNull then
          TPImss.FieldByName('IdPeriodosGuardia').AsInteger := CdPersonalImss.FieldByName('IdPeriodosGuardia').AsInteger
        else
          TPImss.FieldByName('IdPeriodosGuardia').Clear;
        TPImss.FieldByName('idDepartamento').AsInteger := CdPersonalImss.FieldByName('IdDepartamento').AsInteger;
        TPImss.FieldByName('IdCargo').AsInteger := CdPersonalImss.FieldByName('IdCargo').AsInteger;
        TPImss.FieldByName('IdTipoNomina').AsInteger := CdPersonalImss.FieldByName('IdTipoNomina').AsInteger;
        TPImss.FieldByName('IdOrganizacion').AsInteger := CdPersonalImss.FieldByName('IdOrganizacion').AsInteger;
        TPImss.FieldByName('Comentarios').AsString := CdPersonalImss.FieldByName('Comentarios').asString;
        if Not CdPersonalImss.FieldByName('TipoFiniquito').IsNull then
          TPImss.FieldByName('TipoFiniquito').AsString := CdPersonalImss.FieldByName('TipoFiniquito').AsString
        else
          TPImss.FieldByName('TipoFiniquito').Clear;

        TPImss.Post;
        TPImss.ApplyUpdates(-1);
        ClientModule1.registrarEvento('DATOS DE CONTRATACION', 'NUEVA MODIFICACION DE SALARIO', 'IDPERSONAL: ' + LocIdPersonal, 0.0, 0);

        InteliDialog.ShowModal('Aviso', 'Se añadió una nueva modifiación del Salario.', mtInformation, [mbOK], 0);

      end;
    finally
      cxGBDatosSalario.Parent := Self;
      cxGBDatosSalario.Align := AlCustom;
      cxGBDatosSalario.Visible := False;

      if Assigned(TForm(FindComponent('FrmAdd'))) then
        TForm(FindComponent('FrmAdd')).Close;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDatosContratacion.CxGridDatosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (CdPersonalImssupt.Active) and (CdPersonalImssUpt.Locate('IdPersonalImss', CdPersonalImss.FieldByName('IdPersonalImss').AsInteger, [])) then
  begin

  end;
end;

procedure TFrmDatosContratacion.DxBarBtnActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  try
    if (CdPersonalImss.Active) and  (CdPersonalImssUpt.Active) then
    begin
      CdPersonalImssUpt.Refresh;
      CdPersonalImss.Refresh;
    end;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmDatosContratacion.DxBarBtnAgregarMSDClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    if (Assigned(TForm(FindComponent('FrmAdd')))) then
      TForm(FindComponent('FrmAdd')).Destroy;

    gForm := TForm.Create(Self);
    gForm.Name := 'FrmAdd';
    gForm.BorderStyle := bsNone;
    gForm.Position := poScreenCenter;
    gForm.Caption := 'Modificación de Salario.';
    gForm.Width := 281;
    gForm.Height := 165;
    cxGBDatosSalario.Parent := gForm;
    cxGBDatosSalario.Align := alClient;
    cxGBDatosSalario.Visible := True;
    TPImss := TClientDataSet.Create(Self);
    try
      if TPImss.ProviderName = '' then
        if not CrearConjunto(TPImss, 'nuc_personalimss_contratacion2', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['nuc_personalimss_contratacion2']);

      if not CargarDatosFiltrados(TPImss, 'idPersonalImss', [-9]) then
        raise InteligentException.CreateByCode(6, ['IdPersonalImss','nuc_personalImss_contratacion2','-9']);

      TPImss.Open;
      dsTPimss.DataSet := TPImss;
      TPImss.Append;
      gForm.ShowModal;
      DxBarBtnActualizarClick(nil);
    finally
      Screen.Cursor := Cursor;
      dsTPimss.DataSet := nil;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
  end;
end;

procedure TFrmDatosContratacion.DxBarBtnCancelClick(Sender: TObject);
begin
  if (CdPersonalImssUpt.State = dsEdit) and (InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea cancelar esta operación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  try
    Try
      CdPersonalImssUpt.Cancel;
    finally
      estadoBotones;
    End;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDatosContratacion.DxBarBtnEditarClick(Sender: TObject);
begin
  if CdPersonalImssUpt.State = dsBrowse then
  try
    if CdPersonalImssUpt.Locate('IdPersonalIMss', CdPersonalImss.FieldByName('IdPersonalImss').AsInteger, []) then
    Try
      CdPersonalImssUpt.Edit;
    finally
      estadoBotones;
      dxDateFechaReal.Enabled := Not (CdPersonalImss.FieldByName('Guardia').AsString = 'NO APLICA');
      cbbPeriodosGuardia.Enabled := Not (CdPersonalImss.FieldByName('Guardia').AsString = 'NO APLICA');
    End;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDatosContratacion.DxBarBtnEliminarClick(Sender: TObject);
var
  LocTipoMovto: string;
  LocIdPersonal: string;
begin
  try
    LocTipoMovto := CdPersonalImss.FieldByName('TipoMovimiento').AsString;
    if Not (LocTipoMovto = 'Reingreso') then
    begin
      iF (InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea Eliminar este registro de contratación?, Recuerde que una vez eliminado este registro, el calculo de nómina podría verse afectado.', mtConfirmation, [MBYes, MBNo], 0) = mrYes) then
      begin
        LocIdPersonal := CdPersonalImssUpt.FieldByName('IdPersonal').AsString;
        if CdPersonalImssUpt.Locate('IdPersonalImss', CdPersonalImss.FieldByName('IdPersonalImss').AsInteger, []) then
          CdPersonalImssUpt.Delete;
        CdPersonalImssUpt.ApplyUpdates(-1);
        ClientModule1.registrarEvento('DATOS DE CONTRATACION', 'ELIMINAR MODIFICACION DE SALARIO', 'IDPERSONAL: ' + LocIdPersonal, 0.0, 0);
        DxBarBtnActualizarClick(nil);
        InteliDialog.ShowModal('Aviso', 'Se Eliminó correctamente el registro de contratación', mtInformation, [mbOK], 0);
      end;
    end
    else
      InteliDialog.ShowModal('Aviso', 'No se puede eliminar el registro de Reingreso/Alta. Solo es posible eliminar los registros de modificación.', mtInformation, [mbOK], 0);
  finally
    //LocTipoMovto := Null;
  end;
end;

procedure TFrmDatosContratacion.dxBtnSaveClick(Sender: TObject);
var
  LocFechaMovto, LocFechaReal: TDate;
  LocIdPersonal: string;
begin
  if cxGroupBox1.CanFocus then
    cxGroupBox1.SetFocus;

  //Validar fechas de reingreso y fecha real
  LocFechaMovto := dxDateFechaMovimiento.Date;
  LocFechaReal := dxDateFechaReal.Date;

  CdPersonalImssUpt.FieldByName('FechaMovimiento').AsDateTime := LocFechaMovto;
  try
    CdPersonalImssUpt.FieldByName('FechaReal').AsDateTime := LocFechaReal;
  except
    CdPersonalImssUpt.FieldByName('FechaReal').Clear;
  end;
  CdPersonalImssUpt.FieldByName('Jornada').AsInteger := StrToInt(cbbJornada.Text);
  CdPersonalImssUpt.FieldByName('SalarioDiario').AsExtended := StrToFloat(editSalarioDiario.Text);
  CdPersonalImssUpt.FieldByName('SalarioIntegrado').AsExtended := StrToFloat(editSalarioIntegrado.Text);
  CdPersonalImssUpt.FieldByName('IdOrganizacion').AsInteger := cbbOrganizacion.EditValue;
  CdPersonalImssUpt.FieldByName('IdDepartamento').AsInteger := cbbDepartamento.EditValue;

  if cxCbbCobraFestivos.Text = 'Si' then
    cdPersonalImssupt.FieldByName('CobraFestivos').AsInteger := 1
  else
    cdPersonalImssUpt.FieldByName('CobraFestivos').AsInteger := 0;

  try
    CdPersonalImssUpt.FieldByName('IdPeriodosGuardia').AsInteger := cbbPeriodosGuardia.EditValue;
  except
    CdPersonalImssUpt.FieldByName('IdPeriodosGuardia').clear;
  end;
  CdPersonalImssUpt.FieldByName('IdCargo').AsInteger := cbbCargo.EditValue;
  try
    try
      (CdPeriodosGuardia.Locate('IdPeriodosGuardia', cbbPeriodosGuardia.EditValue, []));
      If (Length(Trim(dxDateFechaMovimiento.Text)) = 0) then
      begin
        if dxDateFechaMovimiento.CanFocus then
          dxDateFechaMovimiento.SetFocus;
        raise InteligentException.CreateByCode(18, ['[FechaMovimiento]']);
      end;

      if (CdPersonalImss.FieldByName('Guardia').AsString <> 'NO APLICA') then
        If ((CdPeriodosGuardia.FieldByName('FechaInicio').AsDateTime > LocFechaMovto) or  (LocFechaMovto > CdPeriodosGuardia.FieldByName('FechaTermino').AsDateTime)) then
        begin
          if dxDateFechaMovimiento.CanFocus then
            dxDateFechaMovimiento.SetFocus;
          raise InteligentException.CreateByCode(8, ['[Fecha Movimiento] debe estar entre ' + CdPeriodosGuardia.FieldByName('FechaInicio').AsString + ' y ' + CdPeriodosGuardia.FieldByName('FechaTermino').asString ]);
        end;

      if (CdPersonalImss.FieldByName('Guardia').AsString <> 'NO APLICA') and (Length(Trim(dxDateFechaReal.Text)) = 0) then
        If (CdPeriodosGuardia.FieldByName('FechaInicio').AsDateTime > LocFechaReal) or  (LocFechaReal > CdPeriodosGuardia.FieldByName('FechaTermino').AsDateTime) then
        begin
          if dxDateFechaReal.CanFocus then
            dxDateFechaReal.SetFocus;
          raise InteligentException.CreateByCode(8, ['[Fecha Real] debe estar contenida entre ' + CdPeriodosGuardia.FieldByName('FechaInicio').AsString + ' y ' + CdPeriodosGuardia.FieldByName('FechaTermino').asString ]);
        end;

      if Length(Trim(editSalarioDiario.Text)) = 0 then
      begin
        if editSalarioDiario.CanFocus then
          editSalarioDiario.SetFocus;
        raise InteligentException.CreateByCode(18, ['[Salario Diario]']);
      end;

      if Length(Trim(editSalarioIntegrado.Text)) = 0 then
      begin
        if editSalarioIntegrado.CanFocus then
          editSalarioIntegrado.SetFocus;
        raise InteligentException.CreateByCode(18, ['[Salario Diario Integrado]']);
      end;

      if CdPersonalImssUpt.FieldByName('IdOrganizacion').IsNull then
      begin
        if cbbOrganizacion.CanFocus then
          cbbOrganizacion.SetFocus;
        raise InteligentException.CreateByCode(18, ['[Organización]']);
      end;

      if CdPersonalImssUpt.FieldByName('IdDepartamento').IsNull then
      begin
        if cbbDepartamento.CanFocus then
          cbbDepartamento.SetFocus;
        raise InteligentException.CreateByCode(18, ['[Departamento]']);
      end;

      if CdPersonalImssUpt.FieldByName('IdCargo').IsNull then
      begin
        if cbbCargo.CanFocus then
          cbbCargo.SetFocus;
        raise InteligentException.CreateByCode(18, ['[Puesto]']);
      end;

      if CdPersonalImssUpt.FieldByName('IdCargo').IsNull then
      begin
        if cbbCargo.CanFocus then
          cbbCargo.SetFocus;
        raise InteligentException.CreateByCode(18, ['[Puesto]']);
      end;

      if (CdPersonalImss.FieldByName('Guardia').AsString <> 'NO APLICA') and (CdPersonalImssUpt.FieldByName('IdPeriodosGuardia').IsNull) then
      begin
        if cbbPeriodosGuardia.CanFocus then
          cbbPeriodosGuardia.SetFocus;
        raise InteligentException.CreateByCode(18, ['[Periodo Guardia]']);
      end;

      if (CdPersonalImssUpt.State = dsEdit) and (InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea Aplicar estos cambios al registro de contratación actual?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      try
        if tieneCambios(CdPersonalImssUpt) = true then
        begin
//          if CdPersonalImssUpt.FieldByName('TipoMovimiento').AsString <> 'Reingreso' then
//            CdPersonalImssUpt.FieldByName('TipoMovimiento').AsString := 'Modificación';
          LocIdPersonal := IntToStr(IdPersonal);
          CdPersonalImssUpt.Post;
          CdPersonalImssUpt.ApplyUpdates(-1);
          ClientModule1.registrarEvento('DATOS DE CONTRATACION', 'MODIFICACION DE REGISTRO DE CONTRATACION', 'IDPERSONAL: ' + LocIdPersonal, 0.0, 0);
          InteliDialog.ShowModal('Operación Exitosa', 'Se actualizó el registro de contratación correctamente.', mtInformation, [mbOK], 0) ;
          DxBarBtnActualizarClick(nil);
        end
        else
        begin
          CdPersonalImssUpt.Cancel;
        end;
      except
        on e: InteligentException do
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
      end;
    finally
      estadoBotones;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDatosContratacion.estadoBotones;
var
  Estado: Boolean;
  //EstadoV:
begin
  if CdPersonalImssUpt.Active then
  begin
    Estado := CdPersonalImssUpt.RecordCount > 0;
    DxBarBtnEditar.Enabled := Estado;

    Estado := CdPersonalImssUpt.State = dsEdit;
    dxDateFechaMovimiento.Enabled := Estado;
    dxDateFechaReal.Enabled := Estado;
    cbbJornada.Enabled := Estado;
    editSalarioDiario.Enabled := Estado;
    editSalarioIntegrado.Enabled := Estado;
    CxCbbRegPat.Enabled := Estado;
    CxCbbCobraFestivos.Enabled := Estado;
    cbbDepartamento.Enabled := Estado;
    cbbCargo.Enabled := Estado;
    cbbPeriodosGuardia.Enabled := Estado;  
    CxGrid1.Enabled := Not Estado;
    DxBarBtnEditar.enabled := Not Estado;
    if CdPersonalImss.FieldByName('DiasDescanso').AsInteger <= 0 then
      DxBarBtnAgregarMSD.Visible := ivAlways
    else
      DxBarBtnAgregarMSD.Visible := ivNever;
    DxBarBtnAgregarMSD.Enabled := Not Estado;
    DxBarBtnActualizar.Enabled := Not Estado;
    DxBarBtnEliminar.Enabled := (CdPersonalImss.Active) and (CdPersonalImss.RecordCount > 0) and not (Estado);
    DxBarBtnCancel.Enabled := Estado;
    DxBtnSave.Enabled := Estado;
  end;
end;

procedure TFrmDatosContratacion.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(CdPersonalImss, 'nuc_personalimss_contratacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Personal IMss']);

  if not CrearConjunto(CdPersonalImssUpt, 'nuc_personalimss_contratacion', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Personal IMss']);

  if not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog) then
    Raise InteligentException.CreateByCode(5, ['Catálogo de Organizaciones']);

  if not CrearConjunto(CdDepartamentos, 'nuc_departamento', ccCatalog) then
    Raise InteligentException.CreateByCode(5, ['Catálogo de Departamentos']);

  if not CrearConjunto(CdCargos, 'nuc_cargo', ccCatalog) then
    Raise InteligentException.CreateByCode(5, ['Catálogo de Organizaciones']);

  if not CrearConjunto(CdPeriodosGuardia, 'nom_periodosguardia', ccCatalog) then
    Raise InteligentException.CreateByCode(5, ['Catálogo de Organizaciones']);

  idPersonal := -9;
end;

procedure TFrmDatosContratacion.FormShow(Sender: TObject);
var
 Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(CdPersonalImss, 'IdPersonal', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['Personal IMss','IdPersonal',VarToStr(IdPersonal)]);

      CdPersonalImss.Open;
        
      if not CargarDatosFiltrados(CdPersonalImssUpt, 'IdPersonal', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['Personal IMss','IdPersonal',VarToStr(IdPersonal)]);

      CdPersonalImssUpt.Open;

      if not CargarDatosFiltrados(CdOrganizacion, 'IdOrganizacion', [-1]) then
        raise InteligentException.CreateByCode(6, ['Nuc_organizacion','IdOrganizacion',VarToStr(-1)]);  

      CdOrganizacion.Open;

      if not CargarDatosFiltrados(CdDepartamentos, 'IdDepartamento', [-1]) then
        raise InteligentException.CreateByCode(6, ['nuc_departamentos','IdDepartamentos',VarToStr(-1)]);  

      CdDepartamentos.Open;

      If not CargarDatosFiltrados(CdCargos, 'IdCargo', [-1]) then
        raise InteligentException.CreateByCode(6, ['nuc_cargos','IdCargo',VarToStr(-1)]);  

      CdCargos.Open;

      if not CargarDatosFiltrados(CdPeriodosGuardia, 'IdPeriodosGuardia', [-1]) then
        raise InteligentException.CreateByCode(6, ['nom_PeriodosGuardia','IdPeriodosGuardia',VarToStr(-1)]);  

      CdPeriodosGuardia.Open;
      
      CxGridDatos.OptionsView.GroupByBox := False;

      if CdPersonalImssUpt.FieldByName('CobraFestivos').AsInteger = 1 then
        cxCbbCobraFestivos.ItemIndex := 0
      else
        cxCbbCobraFestivos.ItemIndex := 1;

      estadoBotones;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

function TFrmDatosContratacion.tieneCambios(
  var Dataset: TClientDataSet): Boolean;
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
      valorOld := UpperCase(VarToStr(Dataset.Fields[i].OldValue));
    except
      valorOld := '';
    end;
    try
      ValorNew := UpperCase(VarToStr(Dataset.fields[i].Value));
    except
      ValorNew := '';
    end;
    if (ValorNew <> valorOld) and
    (tieneModif = False) then
    begin
      tieneModif := True;

    end;
  end;
  //CambiosHechos := tieneModif; // Si tiene modificaciones preguntará.
  Result := tieneModif;
end;

end.
