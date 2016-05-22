unit UtfrmModificaPersonalImss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, dxBar, cxClasses,
  cxContainer, cxEdit, cxGroupBox, DB, DBClient, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxDBEdit, cxCheckBox, cxDropDownEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, ClientModuleUnit1, cxGrid, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxLabel, UInteliDialog,
  StdCtrls, Mask, JvExMask, JvToolEdit, JvDBControls, JvExControls, JvLabel,
  DBCtrls, Menus, cxButtons, cxDBNavigator, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxBarBuiltInMenu;

type
  TFrmModificaPersonalImss = class(TForm)
    dxbrmngr1: TdxBarManager;
    dxbrmngr1Bar1: TdxBar;
    dxBtnSave: TdxBarLargeButton;
    dxBtnCancelar: TdxBarLargeButton;
    pageMain: TcxPageControl;
    tabSheetPersonal: TcxTabSheet;
    cdPersonalImss: TClientDataSet;
    dsPersonalImss: TDataSource;
    groupBoxContrato: TcxGroupBox;
    dxDateFechaReal: TcxDBDateEdit;
    cbbTipoMovto: TcxDBComboBox;
    dxDateFechaMovimiento: TcxDBDateEdit;
    cbbJornada: TcxDBComboBox;
    editSalarioIntegrado: TcxDBTextEdit;
    editSalarioDiario: TcxDBTextEdit;
    cbbDepartamento: TcxDBExtLookupComboBox;
    cbbCargo: TcxDBExtLookupComboBox;
    cbbPeriodosGuardia: TcxDBExtLookupComboBox;
    cbbOrganizacion: TcxDBExtLookupComboBox;
    cdGenerales: TClientDataSet;
    cxGridReposMain: TcxGridViewRepository;
    cxDBGridDepartamento: TcxGridDBTableView;
    cxDBGridGuardias: TcxGridDBTableView;
    cxDBGridCargo: TcxGridDBTableView;
    cxDBGridOrganizacion: TcxGridDBTableView;
    grdColumGuardia: TcxGridDBColumn;
    grdColumDepartamento: TcxGridDBColumn;
    grdColumCargo: TcxGridDBColumn;
    grdColumOrganizacion: TcxGridDBColumn;
    cxCheckFestivos: TcxDBCheckBox;
    cdOrganizacion: TClientDataSet;
    cdDepartamento: TClientDataSet;
    cdPeriodosGuardia: TClientDataSet;
    cdCargo: TClientDataSet;
    dsOrganizacion: TDataSource;
    dsDepartamento: TDataSource;
    dsPeriodosGuardia: TDataSource;
    dsCargo: TDataSource;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    lbl10: TcxLabel;
    lbl11: TcxLabel;
    tabSheetBaja: TcxTabSheet;
    cdPersonalBaja: TClientDataSet;
    JvLabel1: TJvLabel;
    FechaBaja: TJvDBDateEdit;
    dsPersonalBaja: TDataSource;
    EliminarBaja: TCheckBox;
    JvLabel2: TJvLabel;
    cbTipoFiniquito: TComboBox;
    cdPosterior: TClientDataSet;
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    dsPerImssAltaBaja: TDataSource;
    cdPerImssAltaBaja: TClientDataSet;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    CxDbTxtDiasIndemnizacion: TcxDBTextEdit;
    CxDbTxtDiasAnio: TcxDBTextEdit;
    CxDbTxtDiasPrimaAntiguedad: TcxDBTextEdit;
    Lbl1: TJvLabel;
    Lbl12: TJvLabel;
    Lbl13: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBtnCancelarClick(Sender: TObject);
    procedure dxBtnSaveClick(Sender: TObject);
    procedure cbbOrganizacionPropertiesChange(Sender: TObject);
    procedure EliminarBajaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cdPerImssAltaBajaAfterScroll(DataSet: TDataSet);
    procedure cbTipoFiniquitoChange(Sender: TObject);
  private
    OrigFechaBaja: TDate;
    function tieneDescanso(IdTipNom: Integer): Boolean; // para verificar el tipo de guardia y amarrar mas el sistema
  public
    IdPersonalImss: Integer;
    IdPersonalImssBaja: Integer;
    NombrePersonal: string;
    IdTipoNomina: Integer;
    Curp: string;
    Correo: string;
    Rfc: string;
    Telefono: string;
    { Public declarations }
  end;

var
  FrmModificaPersonalImss: TFrmModificaPersonalImss;

implementation


{$R *.dfm}

procedure TFrmModificaPersonalImss.cbbOrganizacionPropertiesChange(
  Sender: TObject);
begin
  try
    if not CargarDatosFiltrados(cdCargo, 'IdOrganizacion', [cbbOrganizacion.EditValue]) then
      raise InteligentException.CreateByCode(6, ['Personal Imss', 'IdPersonal' , IdPersonalImss]);

    if cdCargo.active then
      cdCargo.Refresh
    else
      cdCargo.Open;

    cbbCargo.EditValue := cdPersonalImss.FieldByName('IdPersonalImss').AsInteger;
  Except
    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmModificaPersonalImss.cbTipoFiniquitoChange(Sender: TObject);
begin
  CxDbTxtDiasPrimaAntiguedad.Enabled := cbTipoFiniquito.ItemIndex > -1;
  CxDbTxtDiasIndemnizacion.Enabled := cbTipoFiniquito.ItemIndex = 1;
  CxDbTxtDiasAnio.Enabled := cbTipoFiniquito.ItemIndex = 1;
end;

procedure TFrmModificaPersonalImss.cdPerImssAltaBajaAfterScroll(
  DataSet: TDataSet);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    if not CargarDatosFiltrados(cdPersonalImss, 'IdPersonalImss', [cdPerImssAltaBaja.FieldByName('IdPersonalIMSS_Entrada').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Personal Imss', 'IdPersonal' , cdPerImssAltaBaja.FieldByName('IdPersonalIMSS_Entrada').AsInteger]);

        if cdPersonalImss.active then
          cdPersonalImss.Refresh
        else
          cdPersonalImss.Open;

    if Not CargarDatosFiltrados(cdPersonalBaja, 'IdPersonalImss', [cdPerImssAltaBaja.FieldByName('IdPersonalIMSS_Salida').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Personal IMSS', 'Id. Personal', cdPerImssAltaBaja.FieldByName('IdPersonalIMSS_Salida').AsInteger]);

    if cdPersonalBaja.active then
      cdPersonalBaja.Refresh
    else
      cdPersonalBaja.Open;

    tabSheetBaja.Enabled := cdPersonalBaja.RecordCount = 1;
    if tabSheetBaja.Enabled then
    begin
      cdPersonalBaja.Edit;
      if Not cdPersonalBaja.FieldByName('TipoFiniquito').IsNull then
        cbTipoFiniquito.ItemIndex := StrToInt(cdPersonalBaja.FieldByName('TipoFiniquito').AsString)
      else
        cbTipoFiniquito.ItemIndex := -1;

      // Guardar los valores originales de la baja
      OrigFechaBaja := cdPersonalBaja.FieldByName('FechaMovimiento').AsDateTime;
    end;

    If tieneDescanso(IdTipoNomina) = false then
    begin
      dxDateFechaReal.Enabled := False;
      cbbPeriodosGuardia.Enabled := False;
    end
    else
    begin
      dxDateFechaReal.Enabled := True;
      cbbPeriodosGuardia.Enabled := true;
    end;
    cdPersonalImss.Edit;
  finally
    Screen.Cursor := cursor;
  end;
end;

procedure TFrmModificaPersonalImss.cxNavigator1ButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  ShowMessage(IntToStr(AButtonIndex));
end;

procedure TFrmModificaPersonalImss.dxBtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmModificaPersonalImss.dxBtnSaveClick(Sender: TObject);
var
  LocIdPersonal: string;
begin
  try
    LocIdPersonal := cdPersonalBaja.FieldByName('IdPersonal').AsString;

    if (cbTipoFiniquito.ItemIndex = 1) and  (Length(Trim(CxDbTxtDiasIndemnizacion.Text)) = 0) then
      raise InteligentException.CreateByCode(24, ['Escriba los días de indemnización a pagar para este personal.'])
    else
      try
        cdPersonalBaja.FieldByName('DiasIndemnizacion').AsInteger := StrToInt(CxDbTxtDiasIndemnizacion.Text);
      except
        cdPersonalBaja.FieldByName('DiasIndemnizacion').AsInteger := 0;
      end;

    if InteliDialog.ShowModal('Aviso', 'Está a punto de modificar 1 registro correspondiente al empleado [' + NombrePersonal + ']. Estás seguro que deseas continuar?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      if tabSheetBaja.Enabled then
      begin
        if EliminarBaja.Checked then
        begin
          // Verificar si el registro de baja se puede eliminar
          if cdPosterior.ProviderName = '' then
            if Not CrearConjunto(cdPosterior, 'nuc_personalimss_fechaposterior', ccSelect) then
              raise InteligentWarning.Create('*');

          if Not CargarDatosFiltrados(cdPosterior, 'IdPersonal,FechaMovimiento', [cdPersonalBaja.FieldByName('IdPersonal').AsInteger, ClientModule1.DateToStrSQL(cdPersonalBaja.FieldByName('FechaMovimiento').AsDateTime)]) then
            raise InteligentWarning.Create('*');

          cdPosterior.Open;
          if cdPosterior.RecordCount > 0 then
            raise InteligentWarning.CreateByCode(24, ['No es posible eliminar el registro de baja de este Empleado, debido a que ya existen movimientos posteriores a este']);

          // Si todo está correcto, verificar si confirma la eliminación
          if InteliDialog.ShowModal('Eliminación de registro', 'Está a punto de eliminar el registro de BAJA del empleado ' + NombrePersonal + #10 + #10 + '¿Está seguro que desea eliminarlo en este momento?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
            raise InteligentWarning.Create('*');

          cdPersonalBaja.Delete;
          cdPersonalBaja.ApplyUpdates(-1);
          ClientModule1.registrarEvento('MODULO BAJAS', 'ELIMINACION DE FECHA DE BAJA', 'IDPersonal: ' + LocIdPersonal, 0.0, 0);
        end
        else
        begin
          // Si no se debe eliminar el registro de baja se deberá verificar si se hicieron cambios
          if (cdPersonalBaja.FieldByName('FechaMovimiento').AsDateTime <> FechaBaja.Date) or (cdPersonalBaja.FieldByName('TipoFiniquito').asstring <> IntToStr(cbTipoFiniquito.ItemIndex)) or (cdPersonalBaja.FieldByName('DiasIndemnizacion').OldValue <> cdPersonalBaja.FieldByName('DiasIndemnizacion').Value) then
          begin
            if cbTipoFiniquito.ItemIndex = 0 then
            begin
              cdPersonalBaja.FieldByName('DiasAnio').Clear;
              cdPersonalBaja.fieldbyName('DiasIndemnizacion').Clear;
            end;

            cdPersonalBaja.FieldByName('FechaMovimiento').AsDateTime := FechaBaja.Date;
            cdPersonalBaja.FieldByName('TipoFiniquito').AsInteger := cbTipoFiniquito.ItemIndex;

            cdPersonalBaja.Post;
            cdPersonalBaja.ApplyUpdates(-1);
          end
          else
            cdPersonalBaja.Cancel;
        end;
      end;

      cdPersonalImss.post;
      cdPersonalImss.ApplyUpdates(-1);
      ClientModule1.registrarEvento('MODULO BAJAS', 'MODIFICACION DE FECHA DE BAJA', 'IDPersonal: ' + LocIdPersonal, 0.0, 0);
      InteliDialog.ShowModal('Aviso', 'Se actualizaron los datos de contratación del Personal [' + NombrePersonal + ']', mtInformation, [mbOk], 0);
      Close;
    end;
  except
    on e: InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmModificaPersonalImss.EliminarBajaClick(Sender: TObject);
begin
  FechaBaja.Enabled := Not EliminarBaja.Checked;
  cbTipoFiniquito.Enabled := Not EliminarBaja.Checked;
end;

procedure TFrmModificaPersonalImss.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdPosterior);
end;

procedure TFrmModificaPersonalImss.FormCreate(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      //cxdbtxtDiasIndemnizacion.Text := '90';
      cdPerImssAltaBaja.AfterScroll := nil;

      if not CrearConjunto(cdPersonalImss, 'nuc_personalimss_modificar', ccUpdate ) then
        raise InteligentException.CreateByCode(5, ['Personal Imss']);

      if not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Oranizaciones']);

      if not CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

      if not CrearConjunto(cdPeriodosGuardia, 'nom_periodosguardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Periodos por Guardia']);

      if not CrearConjunto(cdCargo, 'nuc_cargo', ccCatalog ) then
        raise InteligentException.CreateByCode(5, ['Cargos']);

      if not CrearConjunto(cdPersonalBaja, 'nuc_personalimss_modificar', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal IMSS para Baja']);

      if not CrearConjunto(cdPerImssAltaBaja, 'nuc_personalimss_altabaja', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Personal IMSS para Fecha de Alta']);
    finally
      Screen.Cursor := cursor;
    end;
  Except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmModificaPersonalImss.FormShow(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(cdOrganizacion, 'IdOrganizacion', [-1]) then
        raise InteligentException.CreateByCode(6, ['Organizaciones', 'IdOrganizacion' , -1]);

      if cdOrganizacion.active then
        cdOrganizacion.Refresh
      else
        cdOrganizacion.Open;

      if not CargarDatosFiltrados(cdDepartamento, 'IdDepartamento', [-1]) then
        raise InteligentException.CreateByCode(6, ['Departamentos', 'IdDepartamento' , -1]);

      if cdDepartamento.active then
        cdDepartamento.Refresh
      else
        cdDepartamento.Open;

      if not CargarDatosFiltrados(cdPeriodosGuardia, 'idPeriodosGuardia', [-1]) then
        raise InteligentException.CreateByCode(6, ['Periodos Guardia', 'IdPeriodosGuardia' , -1]);

      if cdPeriodosGuardia.active then
        cdPeriodosGuardia.Refresh
      else
        cdPeriodosGuardia.Open;

      if not CargarDatosFiltrados(cdCargo, 'IdCargo', [-1]) then
        raise InteligentException.CreateByCode(6, ['Personal Imss', 'IdPersonal' , IdPersonalImss]);

      if cdCargo.active then
        cdCargo.Refresh
      else
        cdCargo.Open;

      if not CargarDatosFiltrados(cdPersonalImss, 'IdPersonalImss', [IdPersonalImss]) then
        raise InteligentException.CreateByCode(6, ['Personal Imss', 'IdPersonal' , IdPersonalImss]);

      if cdPersonalImss.active then
        cdPersonalImss.Refresh
      else
        cdPersonalImss.Open;

      if not CargarDatosFiltrados(cdPerImssAltaBaja, 'IdPersonal', [cdPersonalImss.FieldByName('IdPersonal').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Personal Imss', 'IdPersonal' , IdPersonalImss]);

      if cdPerImssAltaBaja.active then
        cdPerImssAltaBaja.Refresh
      else
        cdPerImssAltaBaja.Open;

      if Not CargarDatosFiltrados(cdPersonalBaja, 'IdPersonalImss', [IdPersonalImssBaja]) then
        raise InteligentException.CreateByCode(6, ['Personal IMSS', 'Id. Personal', IdPersonalImssBaja]);

      cdPersonalBaja.Open;

      tabSheetBaja.Enabled := cdPersonalBaja.RecordCount = 1;
      if tabSheetBaja.Enabled then
      begin
        cdPersonalBaja.Edit;
        if Not cdPersonalBaja.FieldByName('TipoFiniquito').IsNull then
          cbTipoFiniquito.ItemIndex := cdPersonalBaja.FieldByName('TipoFiniquito').AsInteger
        else
          cbTipoFiniquito.ItemIndex := -1;

        // Guardar los valores originales de la baja
        OrigFechaBaja := cdPersonalBaja.FieldByName('FechaMovimiento').AsDateTime;
      end;

      tabSheetPersonal.Caption := NombrePersonal;
      If tieneDescanso(IdTipoNomina) = false then
      begin
        dxDateFechaReal.Enabled := False;
        cbbPeriodosGuardia.Enabled := False;
      end
      else
      begin
        dxDateFechaReal.Enabled := True;
        cbbPeriodosGuardia.Enabled := true;
      end;
      cdPersonalImss.Edit;

      CxDbTxtDiasPrimaAntiguedad.Enabled := cbTipoFiniquito.ItemIndex > -1;
      CxDbTxtDiasIndemnizacion.Enabled := cbTipoFiniquito.ItemIndex = 1;
      CxDbTxtDiasAnio.Enabled := cbTipoFiniquito.ItemIndex = 1;

    finally
      cdPerImssAltaBaja.AfterScroll := cdPerImssAltaBajaAfterScroll;
      Screen.Cursor := cursor;
    end;
  Except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

function TFrmModificaPersonalImss.tieneDescanso(IdTipNom: Integer): Boolean;
var
  cdTipoNomina: TClientDataSet;
begin
  try
    cdTipoNomina := TClientDataSet.Create(nil);
    try
      if not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipo Nómina']);

      if not CargarDatosFiltrados(cdTipoNomina, 'IdTipoNomina', [IdTipNom]) then
        raise InteligentException.createBycode(6,['Tipo Nómina', 'IdTipoNomina',IdTipNom]);

      if cdTipoNomina.Active then
        cdTipoNomina.Refresh
      else
        cdTipoNomina.Open;

      if cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0 then
        Result := True
      else
        Result := False;
    finally
      cdTipoNomina.Destroy;
    end;
  Except
      on e: InteligentException do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

      on e: Exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
  end;
end;
end.
