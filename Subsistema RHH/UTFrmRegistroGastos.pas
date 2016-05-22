unit UTFrmRegistroGastos;

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
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB,
  cxDBData, dxRibbonSkins, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxBar, cxClasses, dxRibbon, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxBarBuiltInMenu, cxPC, Menus, StdCtrls, cxButtons, ExtCtrls, cxContainer,
  cxGroupBox, cxLabel, cxTextEdit, DBClient, ClientModuleUnit1, UInteliDialog,
  ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxMemo, DateUtils;

type
  TFrmRegistroGastos = class(TForm)
    DxBManager1: TdxBarManager;
    DxBarOpciones: TdxBar;
    DxBarBtnRegistrarGasto: TdxBarLargeButton;
    DxBarBtnEliminarGasto: TdxBarLargeButton;
    dex: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    CxGridDatos: TcxGrid;
    CxGridGastos: TcxGridDBTableView;
    CxLevel1: TcxGridLevel;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    CxColumnFolio: TcxGridDBColumn;
    DxBarBtnComprobar: TdxBarLargeButton;
    pnlNomina: TPanel;
    CxTextEdtNomina: TcxTextEdit;
    CxLbl1: TcxLabel;
    CxBtnabrirNomina: TcxButton;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    CdNomina: TClientDataSet;
    CxLblFechaI: TcxLabel;
    CxLblFechaT: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    CdPersonalIncluido: TClientDataSet;
    CdTipoNomina: TClientDataSet;
    CdListaGastos: TClientDataSet;
    dsListaGastos: TDataSource;
    pnlBotones: TPanel;
    CxBtnCancelar: TcxButton;
    CxBtnGuardar: TcxButton;
    cxTabSheet3: TcxTabSheet;
    Panel1: TPanel;
    cxGBPersonalIncluido: TcxGroupBox;
    CxGridPersonalIncluido: TcxGrid;
    CxGridPIncluido: TcxGridDBTableView;
    CxColumnEmpresa: TcxGridDBColumn;
    CxColumnCodigoPersonal: TcxGridDBColumn;
    CxColumnEmpleado: TcxGridDBColumn;
    CxColumnPercepciones: TcxGridDBColumn;
    CxColumnDeducciones: TcxGridDBColumn;
    CxColumnNeto: TcxGridDBColumn;
    CxLevelPersonalIncluido: TcxGridLevel;
    cxCurrencyEdtSubtotal: TcxCurrencyEdit;
    CxLbl6: TcxLabel;
    dsPersonalIncluido: TDataSource;
    CdPI: TClientDataSet;
    CxColumnincluir: TcxGridDBColumn;
    CxColumnejercicio: TcxGridDBColumn;
    CxColumnTipoMovimiento: TcxGridDBColumn;
    CxColumnNumeroOrden: TcxGridDBColumn;
    CxColumnReferencia: TcxGridDBColumn;
    CxColumnProveedor: TcxGridDBColumn;
    CxColumnRFC: TcxGridDBColumn;
    CxColumnRazonSocial: TcxGridDBColumn;
    CxColumnImporte: TcxGridDBColumn;
    CxColumnDescripcion: TcxGridDBColumn;
    CxColumnFecha: TcxGridDBColumn;
    CxColumnArea: TcxGridDBColumn;
    CxColumnCuenta: TcxGridDBColumn;
    DxBarBtnDetalle: TdxBarLargeButton;
    CdUptGastos: TClientDataSet;
    dsUptGastos: TDataSource;
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    dsOrden: TDataSource;
    cdOrden: TClientDataSet;
    dsCuentaBancaria: TDataSource;
    cdCuentaBancaria: TClientDataSet;
    dsCargo: TDataSource;
    cdCargo: TClientDataSet;
    cxGBGastos: TcxGroupBox;
    CxDbTxtReferencia: TcxDBTextEdit;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CxLbl7: TcxLabel;
    CxDbDateFecha: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    CxLblDescripcion: TcxLabel;
    CxDbMemoDescripcion: TcxDBMemo;
    CxLbl8: TcxLabel;
    CxLbl9: TcxLabel;
    CxLbl10: TcxLabel;
    CxLbl11: TcxLabel;
    CxLbl12: TcxLabel;
    CxLbl13: TcxLabel;
    CxLbl14: TcxLabel;
    CxDbTxtRazonSocial: TcxDBTextEdit;
    CxDbTxtCiudad: TcxDBTextEdit;
    CxDbTxtCP: TcxDBTextEdit;
    CxDbTxtRFC: TcxDBTextEdit;
    CxDbTxtDomicilio: TcxDBTextEdit;
    CxDbTxtEstado: TcxDBTextEdit;
    CxDbTxtTelefono: TcxDBTextEdit;
    CxLbl15: TcxLabel;
    CxDbTxtImporte: TcxDBTextEdit;
    CxCbbArea: TcxDBLookupComboBox;
    CxCbbBeneficiario: TcxDBLookupComboBox;
    CxCbbCuentaBanco: TcxDBLookupComboBox;
    Panel2: TPanel;
    cxButton1: TcxButton;
    CxBtnGuardarTodo: TcxButton;
    CxLbl2: TcxLabel;
    CxCbbProyectos: TcxDBLookupComboBox;
    DxBarBtnCerrar: TdxBarLargeButton;
    CxChkBoxComprobar: TcxCheckBox;
    CdPEgresos: TClientDataSet;
    procedure CxBtnabrirNominaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CxColumnincluirPropertiesChange(Sender: TObject);
    procedure DxBarBtnRegistrarGastoClick(Sender: TObject);
    procedure CxBtnGuardarClick(Sender: TObject);
    procedure CxBtnGuardarTodoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CxCbbBeneficiarioPropertiesCloseUp(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
  private
    procedure GuardarDetalleGasto;
    Procedure validarNumero(Sender: TObject; var Key: Char);
    Procedure AbrirTipoNomina(IdTipoNomina: Integer);
    procedure AbrirPersonalIncluido(var cdPersonalIncluido: TClientDataSet; IdNomina: Integer; Incluidos: Boolean;SoloBajas:Boolean);
    procedure CargarPersonalIncluido;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegistroGastos: TFrmRegistroGastos;

implementation

uses
  UTFrmAbrirNomina;
{$R *.dfm}

procedure TFrmRegistroGastos.AbrirPersonalIncluido(
  var cdPersonalIncluido: TClientDataSet; IdNomina: Integer; Incluidos,
  SoloBajas: Boolean);
var
  NombreSentencia: String;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crSQLWait;

    if Incluidos then
      NombreSentencia := 'nuc_personal_nomina'
    else
      NombreSentencia := 'nuc_personal_nomina_exclusivo';

    if (Assigned(cdPersonalIncluido)) and (cdPersonalIncluido.active) then
      cdPersonalIncluido.close;

    if Not Assigned(cdPersonalIncluido) then
      cdPersonalIncluido := TClientDataSet.Create(Nil);

    if cdPersonalIncluido.ProviderName = '' then
    begin
      if (cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0) and (NombreSentencia <> 'nuc_personal_nomina')
          and (cdTipoNomina.FieldByName('SalarioMultiple').AsString = 'Si') then
      begin
        if Not CrearConjunto(cdPersonalIncluido, NombreSentencia, ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal Incluido en Nómina']);
      end
      else
        if Not CrearConjunto(cdPersonalIncluido, NombreSentencia, ccSelect) then
          raise InteligentException.CreateByCode(5, ['Personal Incluido en Nómina']);
    end;

    if SoloBajas then
    begin
      if Not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina,Cuales', [IdNomina,'Baja']) then
        raise InteligentException.CreateByCode(6, ['Personal Incluido en Nómina', IdNomina, 'Id. Nomina']);
    end
    else
      if NombreSentencia <> 'nuc_personal_nomina' then
      begin
        if Not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina', [IdNomina]) then
          raise InteligentException.CreateByCode(6, ['Personal Incluido en Nómina', IdNomina, 'Id. Nomina']);
      end
      else
        if Not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina', [IdNomina]) then
          raise InteligentException.CreateByCode(6, ['Personal Incluido en Nómina', IdNomina, 'Id. Nomina']);

    if cdPersonalIncluido.Active then
      cdPersonalIncluido.Refresh
    else
      cdPersonalIncluido.Open;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmRegistroGastos.AbrirTipoNomina(IdTipoNomina: Integer);
begin
  if CdTipoNomina.ProviderName = '' then
    if not CrearConjunto(CdTipoNomina, 'nom_tiponomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nom_tipoNomina']);

  if not CargarDatosFiltrados(CdTipoNomina, 'idTipoNomina', [IdTipoNomina]) then
     raise InteligentException.CreateByCode(6, ['nom_tipoNomina', 'IdTipoNomina', IntToStr(IdTipoNomina)]);

  if CdTipoNomina.Active then
    CdTipoNomina.Refresh
  else
    CdTipoNomina.Open;
end;

procedure TFrmRegistroGastos.CargarPersonalIncluido;
var
  Cursor: TCursor;
  TPercepcion, TDeduccion, TNeto: Extended;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crSQLWait;
      AbrirPersonalIncluido(cdPersonalIncluido, cdNomina.FieldByName('IdNomina').AsInteger, False, False);
      //dsPersonalIncluido.DataSet := cdPersonalIncluido;

      CdPI.EmptyDataSet;
      cxCurrencyEdtSubtotal.Value := 0;
      if CdPersonalIncluido.RecordCount > 0 then
      begin
        CdPersonalIncluido.First;
        while Not CdPersonalIncluido.Eof do
        begin
          CdPI.Append;
          CdPI.FieldByName('incluir').AsBoolean := True;
          CdPI.FieldByName('tituloOrganizacion').AsString := CdPersonalIncluido.FieldByName('TituloOrganizacion').AsString;
          CdPI.FieldByName('CodigoPersonal').AsString := CdPersonalIncluido.FieldByName('CodigoPersonal').AsString;
          CdPI.FieldByName('NombreCompleto').AsString := CdPersonalIncluido.FieldByName('NombreCompleto').AsString;
          CdPI.FieldByName('totper').AsString := CdPersonalIncluido.FieldByName('totper').AsString;
          CdPI.FieldByName('totDed').AsString := CdPersonalIncluido.FieldByName('totDed').AsString;
          CdPI.FieldByName('Neto').AsString := cdPersonalIncluido.FieldByName('Neto').AsString;
          CdPI.Post;
          if CdPI.FieldByName('incluir').AsBoolean then
            cxCurrencyEdtSubtotal.Value := cxCurrencyEdtSubtotal.Value + StrToFloat(CdPI.FieldByName('Neto').AsString);




          CdPersonalIncluido.Next;
        end;

        if cxCurrencyEdtSubtotal.Value <> 0 then
          cxCurrencyEdtSubtotal.Value := cxCurrencyEdtSubtotal.Value * -1;
      end;

    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmRegistroGastos.CxBtnabrirNominaClick(Sender: TObject);
begin
// Llamar la ventana de Abrir...
  if Not Assigned(FrmAbrirNomina) then
    Application.CreateForm(TFrmAbrirNomina, FrmAbrirNomina);

  Try
    FrmAbrirNomina.dsNominaFuera.DataSet   :=   cdNomina;
    if FrmAbrirNomina.ShowModal = mrOk then
    begin
      CxTextEdtNomina.Text := CdNomina.FieldByName('Titulo').AsString;
      cxDateEdit1.Date := CdNomina.FieldByName('FechaNomina').AsDateTime;
      cxDateEdit2.Date := CdNomina.FieldByName('FechaTerminoNomina').AsDateTime;
      AbrirTipoNomina(CdNomina.FieldByName('IdTipoNomina').AsInteger);
      CargarPersonalIncluido;
    end;
  Finally
    FrmAbrirNomina.dsNominaFuera.DataSet := Nil;
    FrmAbrirNomina.dsGrafica.DataSet := Nil;
  End;
end;

procedure TFrmRegistroGastos.CxBtnGuardarClick(Sender: TObject);
var
  dForm: TForm;
  cursor: TCursor;
begin

  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    if not CargarDatosFiltrados(cdOrden, 'sNumeroOden', [-1]) then
      raise InteligentException.CreateByCode(6, ['Ordenes de Trabajo','sNumeroOrden', '-1']);

    if not CargarDatosFiltrados(cdCargo, 'sIdArea', [-1]) then
      raise InteligentException.CreateByCode(6, ['Areas','sIdArea', '-1']);

//    if not CargarDatosFiltrados(cdCuentaBancaria, 'sIdNumeroCuenta', [-1]) then
//      raise InteligentException.CreateByCode(6, ['Cuentas Bancarias','sIdNumeroCuenta', '-1']);
    cdCuentaBancaria.Open;

    if not CargarDatosFiltrados(cdPersonal, 'IdPersonal', [-1]) then
      raise InteligentException.CreateByCode(6, ['Empleados','IdPersonal', '-1']);

    if cdOrden.Active then
      cdOrden.Refresh
    else
      cdOrden.Open;

    if cdCargo.Active then
      cdCargo.Refresh
    else
      cdCargo.Open;

    if cdCuentaBancaria.Active then
      cdCuentaBancaria.Refresh
    else
      cdCuentaBancaria.Open;

    if cdPersonal.Active then
      cdPersonal.Refresh
    else
      cdPersonal.Open;

    dForm := TForm.Create(self);
    dForm.Caption := 'Detalle de Gastos.';
    dForm.Width := 460;
    dForm.Height := 500;
    dForm.BorderStyle := bsDialog;
    dForm.Position := poScreenCenter;
    cxGBGastos.Parent := dForm;
    cxGBGastos.Align := alClient;

    if CdUptGastos.State in [dsInsert, dsEdit] then
      CdUptGastos.Cancel;

    CdUptGastos.Append;
    CxDbTxtImporte.Text := cxCurrencyEdtSubtotal.Text;
    CdUptGastos.FieldByName('dImporteTotal').AsFloat := cxCurrencyEdtSubtotal.Value;

    if dForm.ShowModal = mrOk then
    begin

    end;
  finally
    Screen.Cursor := cursor;
    if Assigned(dForm) then
    begin
      cxGBGastos.Parent := cxTabSheet3;
    end;
  end;
end;

procedure TFrmRegistroGastos.CxBtnGuardarTodoClick(Sender: TObject);
var
  Cursor: TCursor;
  idFolio: Integer;
  Fecha: TDate;
  Descripcion, Referencia: string;

begin
  Cursor := Screen.Cursor;
  try
    try
      Screen.Cursor := crAppStart;

      if (CxChkBoxComprobar.Checked) and (InteliDialog.ShowModal('Confirmación de Proceso.','El sistema comprobobará automáticamente este gasto. ¿Está seguro que desea continuar?', mtCOnfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        if CdUptGastos.State in [dsInsert, dsEdit] then
        begin
          Fecha := CxDbDateFecha.Date;
          Referencia := CdUptGastos.FieldByName('sReferencia').asString;
          Descripcion := CdUptGastos.FieldByName('mDescripcion').asString;

          CdUptGastos.FieldByName('iIdFolio').AsInteger := 0;
          CdUptGastos.FieldByName('iFolio').AsInteger := 0;
          CdUptGastos.FieldByName('sTipoMovimiento').AsString := 'GASTOS';
          CdUptGastos.FieldByName('lNotaCredito').asString := 'No';
          CdUptGastos.FieldByName('iEjercicio').AsInteger := YearOf(CxDbDateFecha.Date);
          CdUptGastos.Post;
          CdUptGastos.ApplyUpdates(-1);

          if CdPEgresos.ProviderName = '' then
            if not CrearConjunto(CdPEgresos, 'con_tesoreriapegresos', ccUpdate) then
              raise InteligentException.CreateByCode(5, ['con_tesoreriaPEgresos']);

          if not CargarDatosFiltrados(CdPEgresos, 'iIdFolio', [-9]) then
            raise InteligentException.CreateByCode(6,['con_tesoreriapegresos', 'idFolio', '-9']);

          if CdPEgresos.Active then
            CdPEgresos.Refresh
          else
            CdPEgresos.Open;

          //Salvar el detalle
          CdPI.First;
          while not cdPi.Eof do
          begin
            if CdPEgresos.State in [dsEdit, dsInsert] then
              CdPEgresos.Cancel;

            if CDPI.FieldbyName('Incluir').AsBoolean then
            begin
              CdPEgresos.Append;

              CdPEgresos.FieldByName('dIdFecha').AsDateTime := Fecha;
              CdPEgresos.FieldByName('iIdFolio').AsInteger := IdFolio;
              CdPEgresos.FieldByName('sIdEgreso').AsString := 'NOMINA';
              CdPEgresos.FieldByName('sTipoEgreso').AsString := 'Empleados';
              CdPEgresos.FieldByName('sIdProveedor').AsString := CdPI.FieldByName('CodigoPersonal').AsString; //codigo personal
              CdPEgresos.FieldByName('sRazonSocial').AsString := CdPI.FieldByName('NombreCompleto').AsString;//nombre del personal
              CdPEgresos.FieldByName('sIdFactura').AsString := '*';
              CdPEgresos.FieldByName('mDescripcion').AsString := Descripcion;
              CdPEgresos.FieldByName('dImporte').AsExtended := CdPI.FieldByName('Neto').AsExtended;
              CdPEgresos.FieldByName('dFechaComprobacion').Clear;
              CdPEgresos.FieldByName('dIva').AsFloat := 0.0;
              CdPEgresos.FieldByName('dRetencion').AsFloat := 0.0;
              CdPEgresos.FieldByName('dIspt').AsFloat := 0.0;
              CdPEgresos.FieldByName('dIsr').AsFloat := 0.0;
              CdPEgresos.FieldByName('dSubtotal').AsExtended := CdPI.FieldByName('Neto').AsExtended;
              CdPEgresos.FieldByName('sCheque').AsString := Referencia;
              CdPEgresos.FieldByName('sPoliza').AsString := '*';
              CdPEgresos.FieldByName('eReal').AsString := 'Si';
              CdPEgresos.FieldByName('sNameFilePdf').AsString := '*';
              CdPEgresos.FieldByName('sNameFileJpeg').AsString := '*';
              CdPEgresos.FieldByName('sNameXml').AsString := '*';
              CdPEgresos.fieldByName('mDescripcion').asString := '*';
              CdPEgresos.Post;
              CdPEgresos.ApplyUpdates(-1);
            end;
            CdPI.Next;
          end;
        end;
      end;

      if not CxChkBoxComprobar.Checked then
      begin
        if CdUptGastos.State in [dsInsert, dsEdit] then
        begin
          CdUptGastos.FieldByName('iIdFolio').AsInteger := 0;
          CdUptGastos.FieldByName('iFolio').AsInteger := 0;
          CdUptGastos.FieldByName('sTipoMovimiento').AsString := 'GASTOS';
          CdUptGastos.FieldByName('lNotaCredito').asString := 'No';
          CdUptGastos.FieldByName('iEjercicio').AsInteger := YearOf(CxDbDateFecha.Date);
          CdUptGastos.Post;
          CdUptGastos.ApplyUpdates(-1);
          idFolio := UltimoId;
        end;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
    begin
//      if CdUptGastos.State in [dsInsert, dsEdit] then
//        CdUptGastos.Cancel;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmRegistroGastos.CxCbbBeneficiarioPropertiesCloseUp(
  Sender: TObject);
begin
  if (CdUptGastos.State = dsInsert) and (cdPersonal.Locate('sIdEmpleado', CxCbbBeneficiario.EditValue, []))then
  begin
    CdUptGastos.FieldByName('sRazonSocial').AsString := cdPersonal.FieldByName('NombreEmpleado').AsString;
    CdUptGastos.FieldByName('sCiudad').AsString := cdPersonal.FieldByName('sCiudad').AsString;
    CdUptGastos.FieldByName('sCP').AsString := cdPersonal.FieldByName('sCP').AsString;
    CdUptGastos.FieldByName('sRFC').AsString := cdPersonal.FieldByName('sRFC').AsString;
    CdUptGastos.FieldByName('sDomicilio').AsString := cdPersonal.FieldByName('sDomicilio').AsString;
    CdUptGastos.FieldByName('sEstado').AsString := cdPersonal.FieldByName('sEstado').AsString;
  end;
end;

procedure TFrmRegistroGastos.CxColumnincluirPropertiesChange(Sender: TObject);
begin
  if CdPI.FieldByName('incluir').AsBoolean then
    cxCurrencyEdtSubtotal.Value := cxCurrencyEdtSubtotal.Value + ((CdPI.FieldByName('Neto').AsFloat) * -1);

  if Not CdPI.FieldByName('incluir').AsBoolean then
    cxCurrencyEdtSubtotal.Value := cxCurrencyEdtSubtotal.Value + ((CdPI.FieldByName('Neto').AsFloat)    );

end;

procedure TFrmRegistroGastos.DxBarBtnCerrarClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFrmRegistroGastos.DxBarBtnRegistrarGastoClick(Sender: TObject);
var
  gForm: TForm;
begin
  try
    GForm := TForm.Create(self);
    gForm.Caption := 'Información de Nómina y Personal Incluido.';
    gForm.Width := 900;
    gForm.Height := 450;
    gForm.WindowState := wsMaximized;
    pnlNomina.Parent := gForm;
    pnlNomina.Align := alClient;
    if gForm.ShowModal = mrOk then
    begin

    end;
  finally
    if Assigned(gForm) then
    begin
      pnlNomina.Parent := cxTabSheet2;
    end;
  end;
end;

procedure TFrmRegistroGastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmRegistroGastos.FormCreate(Sender: TObject);
begin
  if cdNomina.ProviderName = '' then
    if Not CrearConjunto(cdNomina, 'nom_nomina', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Nóminas]']);

  if not CrearConjunto(CdListaGastos, 'con_tesoreriaegresos', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['con_tesoreriaegresos']);

  if not CargarDatosFiltrados(CdListaGastos, 'Folio', [-1]) then
    raise InteligentException.CreateByCode(6, ['con_tesoreriaegresos', 'Folio', '-1']);

  if not CrearConjunto(CdUptGastos, 'con_tesoreriaegresos', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['con_tesoreriaegresos']);

  if not CargarDatosFiltrados(CdUptGastos, 'Folio', [-9]) then
    raise InteligentException.CreateByCode(6, ['con_tesoreriaegresos', 'Folio', '-1']);

  if not CrearConjunto(cdOrden, 'con_ordenesdetrabajo', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Órdenes de trabajo'] );

  if not CrearConjunto(cdCuentaBancaria, 'con_cuentasbancarias', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Cuentas Bancarias'] );

  if not CrearConjunto(cdCargo, 'con_areas', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Areas'] );

  if not CrearConjunto(cdPersonal, 'erp_empleados', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Empleados'] );

  if not CrearConjunto(cdOrden, 'con_ordenesdetrabajo', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Órdenes de trabajo'] );

  if CdUptGastos.Active then
    CdUptGastos.Refresh
  else
    CdUptGastos.Open;

  if CdListaGastos.Active then
    CdListaGastos.Refresh
  else
    CdListaGastos.Open;






  CdPI.FieldDefs.Add('incluir', ftBoolean, 0, false);
  cdPi.FieldDefs.Add('TituloOrganizacion', ftString, 100, false);
  cdPi.FieldDefs.Add('CodigoPersonal', ftString, 100, false);
  cdPi.FieldDefs.Add('NombreCompleto', ftString, 100, false);
  cdPi.FieldDefs.Add('TotPer', ftFloat, 0, false);
  cdPi.FieldDefs.Add('TotDed', ftFloat, 0, false);
  cdPi.FieldDefs.Add('Neto', ftFloat, 0, false);
  CdPI.CreateDataSet;
  CdPI.Open;

  cxTabSheet3.TabVisible := False;
  cxTabSheet2.TabVisible := False;
end;

procedure TFrmRegistroGastos.GuardarDetalleGasto;
begin
  try
    
  except
    on e: InteligentException do
      InteliDialog.ShowModal();
  end;
end;

procedure TFrmRegistroGastos.validarNumero(Sender: TObject; var Key: Char);
begin
  ////djfhsjfhskj
  ///  sjdhfsjfd
  ///  jsdhfjsdhf
  ///
end;

end.
