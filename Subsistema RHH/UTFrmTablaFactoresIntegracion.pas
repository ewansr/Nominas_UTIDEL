unit UTFrmTablaFactoresIntegracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBClient,
  ClientModuleUnit1, UInteliDialog, DateUtils, dxSkinsdxBarPainter, dxBar,
  dxSkinsForm, ExtCtrls, cxContainer, ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Menus, cxLabel, StdCtrls, cxButtons,
  cxFilterControl, cxDBFilterControl, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Math, cxCheckBox, cxCalc, cxExport, cxExportPivotGridLink,
  cxDBPivotGrid, cxGridExportLink, ShellAPI, cxProgressBar,rhh_genericclasses,
  frxClass, frxDBSet;

type
  TFrmTablaFactoresIntegracion = class(TForm)
    dsPersonal: TDataSource;
    CdPersonal: TClientDataSet;
    CxGridDatosEmpleado: TcxGridDBTableView;
    CxLevelDatos: TcxGridLevel;
    CxGridEmpleados: TcxGrid;
    CdMemoria: TClientDataSet;
    dsMemoria: TDataSource;
    pnlOpciones: TPanel;
    DxSkinCtrl1: TdxSkinController;
    DxBManager1: TdxBarManager;
    cxDateEditAplicacion: TcxDateEdit;
    CxBtnCargarPersonal: TcxButton;
    CxLblFechaAplicacion: TcxLabel;
    CxColumnIncluir: TcxGridDBColumn;
    CxColumnIdPersonal: TcxGridDBColumn;
    CxColumnNombreCompleto: TcxGridDBColumn;
    CxColumnReingreso: TcxGridDBColumn;
    CxColumnBaja: TcxGridDBColumn;
    CxColumnSDActual: TcxGridDBColumn;
    CxColumnSDIActual: TcxGridDBColumn;
    CxColumnFIActual: TcxGridDBColumn;
    CxColumnAniosCompletos: TcxGridDBColumn;
    CxColumnFiCorrespondiente: TcxGridDBColumn;
    CxColumnNewSDI: TcxGridDBColumn;
    DxRibbonFactorIntegracionTab1: TdxRibbonTab;
    DxRibbonFactorIntegracion: TdxRibbon;
    DxBarOpciones: TdxBar;
    DxBarBtnAgregar: TdxBarLargeButton;
    DxBarBtnCerrar: TdxBarLargeButton;
    DxBarBtnCargar: TdxBarLargeButton;
    DxBarBtnCalcular: TdxBarLargeButton;
    CxLCbbTipoNomina: TcxLookupComboBox;
    CxLbl1: TcxLabel;
    CdTipoNomina: TClientDataSet;
    dsTipoNomina: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxstylBackground: TcxStyle;
    dxPopupOpciones: TdxBarPopupMenu;
    DxBarBtnCalcularSDi: TdxBarButton;
    DxBarBtnDeseleccionar: TdxBarButton;
    DxBarBtnSeleccionar: TdxBarLargeButton;
    DxBarBtnSeleccionarTodo: TdxBarButton;
    CxColumnTopeImss: TcxGridDBColumn;
    cxstylCambiados: TcxStyle;
    CxLbl2: TcxLabel;
    CxLblSdIModificado: TcxLabel;
    cxstylTopados: TcxStyle;
    CxColumnTopado: TcxGridDBColumn;
    DxBarBtnDeseleccionarTodos: TdxBarButton;
    DxBarBtnExportar: TdxBarLargeButton;
    dlgSave1: TSaveDialog;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    Panel1: TPanel;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    CxColumnModificacion: TcxGridDBColumn;
    CxColumnComentarios: TcxGridDBColumn;
    DxBarSeleccion: TdxBar;
    CdPersonalImss: TClientDataSet;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    CxProgressBarGrabar: TcxProgressBar;
    DxBarBtnEliminarModificacion: TdxBarLargeButton;
    BtnImprimir: TdxBarLargeButton;
    frxReporteFactoresIntegracion: TfrxReport;
    frxFactoresIntegracion: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    cxLevelFactores: TcxGridLevel;
    CxDbGridFactores: TcxGridDBTableView;
    CxColumnAnios: TcxGridDBColumn;
    cxlbl3: TcxLabel;
    CxLookUpOrganizacion: TcxLookupComboBox;
    cdOrganizacion: TClientDataSet;
    dsOrganizacion: TDataSource;
    CxColumnDiasVacaciones: TcxGridDBColumn;
    CxColumnDiasAguinaldo: TcxGridDBColumn;
    CxColumnPrimaDominical: TcxGridDBColumn;
    CxColumnPrimaVacacional: TcxGridDBColumn;
    CxColumnFactor: TcxGridDBColumn;
    cdFactorIntegracion: TClientDataSet;
    dsFactorIntegracion: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxBtnCargarPersonalClick(Sender: TObject);
    procedure DxBarBtnCargarClick(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DxBarBtnCalcularClick(Sender: TObject);
    procedure DxBarBtnAgregarClick(Sender: TObject);
    procedure DxBarBtnCalcularSDiClick(Sender: TObject);
    procedure DxBarBtnDeseleccionarClick(Sender: TObject);
    procedure DxBarBtnSeleccionarClick(Sender: TObject);
    procedure DxBarBtnSeleccionarTodoClick(Sender: TObject);
    procedure CxGridDatosEmpleadoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure DxBarBtnDeseleccionarTodosClick(Sender: TObject);
    procedure DxBarBtnExportarClick(Sender: TObject);
    procedure DxBarBtnEliminarModificacionClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure CxGridEmpleadosActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
  private
    procedure EstadoBotones;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTablaFactoresIntegracion: TFrmTablaFactoresIntegracion;

implementation

{$R *.dfm}

procedure TFrmTablaFactoresIntegracion.BtnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;

    try
      Screen.Cursor := crAppStart;

      Reporte := 'FactoresIntegracion.fr3';
      CompReporte := frxReporteFactoresIntegracion;
      CompDatasetReporte := frxFactoresIntegracion;

      LocalImprimeReporte(cdmemoria,CxGridDatosEmpleado,'Factores de Integracion')

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;
  end;
end;





procedure TFrmTablaFactoresIntegracion.CxBtnCargarPersonalClick(
  Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    if cxGridEmpleados.ActiveLevel = CxLevelDatos then
    begin
      CxGridDatosEmpleado.Styles.OnGetContentStyle := nil;
      Screen.Cursor := crAppStart;
      try
        if (CxLCbbTipoNomina.EditValue) and (cxDateEditAplicacion.Text <> '') then
        begin
          if not CargarDatosFiltrados(cdPersonal, 'FechaCorte,IdTipoNomina,Activo,TipoSalario', [ClientModule1.DateToStrSQL(cxDateEditAplicacion.Date), CxLCbbTipoNomina.EditValue,'Si','SMVDF']) then
            raise InteligentException.CreateByCode(6, ['FechaCorte', 'nom_dias_Antiguedad', cxDateEditAplicacion.Text]);

          if cdPersonal.Active then
            cdPersonal.Refresh
          else
            cdPersonal.Open;

          CdPersonal.First;
          CdMemoria.EmptyDataSet;
          while Not cdPersonal.eof do
          begin
            cdMemoria.Append;

            if cdPersonal.FieldByName('Baja').IsNull then
              cdMemoria.FieldByName('Incluir').asBoolean := True
            else
              cdMemoria.FieldByName('Incluir').asBoolean := False;

            cdMemoria.FieldByName('IdPersonal').asInteger := cdPersonal.FieldByName('IdPersonal').asInteger;
            cdMemoria.FieldByName('IdPersonalImss').asInteger := cdPersonal.FieldByName('IdPersonalImss').asInteger;

            cdMemoria.FieldByName('FechaMovimiento').AsDateTime := CdPersonal.FieldByName('FechaMovimiento').AsDateTime;
            cdMemoria.FieldByName('FechaReal').AsDateTime := CdPersonal.FieldByName('FechaReal').AsDateTime;
            cdMemoria.FieldByName('FechaRegistro').AsDateTime := CdPersonal.FieldByName('FechaRegistro').AsDateTime;
            cdMemoria.FieldByName('TipoMovimiento').AsString := CdPersonal.FieldByName('TipoMovimiento').AsString;
            cdMemoria.FieldByName('Jornada').AsInteger := CdPersonal.FieldByName('Jornada').AsInteger;
            cdMemoria.FieldByName('CobraFestivos').asInteger := CdPersonal.FieldByName('CobraFestivos').asInteger;
            cdMemoria.FieldByName('IdPlazaDetalle').asInteger := CdPersonal.FieldByName('IdPlazaDetalle').asInteger;
            cdMemoria.FieldByName('RegistroPatronal').AsString := CdPersonal.FieldByName('RegistroPatronal').AsString;
            cdMemoria.FieldByName('SalarioDiario').AsExtended := CdPersonal.FieldByName('SalarioDiario').AsExtended;
            cdMemoria.FieldByName('SalarioIntegrado').AsExtended := CdPersonal.FieldByName('SalarioIntegrado').AsExtended;
            cdMemoria.FieldByName('Procesado').AsString := CdPersonal.FieldByName('Procesado').AsString;
            cdMemoria.FieldByName('IdPeriodosGuardia').asInteger := CdPersonal.FieldByName('IdPeriodosGuardia').asInteger;
            cdMemoria.FieldByName('IdDepartamento').asInteger := CdPersonal.FieldByName('IdDepartamento').asInteger;
            cdMemoria.FieldByName('IdCargo').asInteger := CdPersonal.FieldByName('IdCargo').asInteger;
            cdMemoria.FieldByName('IdTipoNomina').asInteger := CdPersonal.FieldByName('IdTipoNomina').asInteger;
            cdMemoria.FieldByName('IdOrganizacion').asInteger := CdPersonal.FieldByName('IdOrganizacion').asInteger;
            cdMemoria.FieldByName('Comentarios').AsString := CdPersonal.FieldByName('Comentarios').AsString;
            cdMemoria.FieldByName('TipoFiniquito').Clear;
            cdMemoria.FieldByName('DiasIndemnizacion').Clear;

            cdMemoria.FieldByName('NombreCompleto').asString := cdPersonal.FieldByName('NombreCompleto').asString;
            cdMemoria.FieldByName('Reingreso').AsDateTime := cdPersonal.FieldByName('Reingreso').asDateTime;
            cdMemoria.FieldByName('Baja').AsString := cdPersonal.FieldByName('Baja').AsString;
            cdMemoria.FieldByName('SDActual').AsExtended := cdPersonal.FieldByName('SDActual').AsExtended;
            cdMemoria.FieldByName('SDIActual').asExtended := cdPersonal.FieldByName('SDIActual').asExtended;
            cdMemoria.FieldByName('FIActual').asExtended := cdPersonal.FieldByName('FiActual').asExtended;
            cdMemoria.FieldByName('AniosCompletos').AsInteger := cdPersonal.FieldByName('AniosCompletos').AsInteger;
            cdMemoria.FieldByName('FICorrespondiente').asExtended := cdPersonal.FieldByName('FICorrespondiente').asExtended;
            cdMemoria.FieldByName('TopeImss').AsInteger := cdPersonal.FieldByName('TopeImss').AsInteger;
            cdMemoria.FieldByName('SalMinDF').asExtended := cdPersonal.FieldByName('SalMinDF').asExtended;
            cdMemoria.FieldByName('UltimaModificacion').AsString := cdPersonal.FieldByName('UltimaModificacion').AsString;
            cdMemoria.FieldByName('Comentarios').AsString := cdPersonal.FieldByName('Comentarios').AsString;
            cdMemoria.FieldByName('Topado').asBoolean := False;
            cdMemoria.FieldByName('NewSDI').asExtended := 0;
            cdMemoria.Post;
            cdPersonal.Next;
          end;

        end;
      finally
        EstadoBotones;
        CxGridDatosEmpleado.Styles.OnGetContentStyle := nil;//CxGridDatosEmpleadoStylesGetContentStyle;
        Screen.Cursor := Cursor;
      end;
    end
    else
    begin
      if cdFactorIntegracion.ProviderName = '' then
        if not crearConjunto(cdFactorIntegracion, 'nomina_factorintegracion', ccSelect) then
          raise InteligentException.CreateByCode(5, ['nomina_factorintegracion']);

      if not CargarDatosFiltrados(cdFactorIntegracion, 'IdOrganizacion,IdTipoNomina,Anios,Aplicacion', [CxLookUpOrganizacion.EditValue, CxLCbbTipoNomina.EditValue, -1, ClientModule1.DatetoStrSql(CxDateEditAplicacion.Date)]) then
        raise InteligentException.CreateByCode(5, ['nomina_factorintegracion']);

      if CdFactorIntegracion.active then
        cdFactorIntegracion.Refresh
      else
        cdFactorIntegracion.Open;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.CxGridDatosEmpleadoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if (ARecord.values[CxColumnNewSDI.Index] <>  ARecord.values[CxColumnSDIActual.Index]) and
     (ARecord.values[CxColumnIncluir.Index] = True)
  then
    AStyle := cxstylCambiados;

  if (ARecord.values[CxColumnBaja.Index] <> '') then
    AStyle := cxstylTopados;
end;

procedure TFrmTablaFactoresIntegracion.CxGridEmpleadosActiveTabChanged(
  Sender: TcxCustomGrid; ALevel: TcxGridLevel);
begin
  CxLookUpOrganizacion.Enabled := Not (cxGridEmpleados.ActiveLevel = CxlevelDatos);
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnAgregarClick(Sender: TObject);
var
  Cursor: TCursor;
  Calculo, Tope: Extended;
  pgItem, pgMax: Integer;
begin
  try
    pgItem := 20;
    CxProgressBarGrabar.Position := 0;
    Cursor := Screen.Cursor;

    if InteliDialog.ShowModal('Aviso', '¿Está seguro que desea aplicar todas estas modificaciones de salario [' + VarToStr(CdMemoria.RecordCount) + ']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try
      Screen.Cursor := crAppStart;
      pgMax := CdMemoria.RecordCount * pgItem;
      CxProgressBarGrabar.Properties.Max := pgMax;
      CxProgressBarGrabar.Properties.Min := 0;

      if not CargarDatosFiltrados(CdPersonalImss, 'idPersonalImss', [-9]) then
        raise InteligentException.CreateByCode(6, ['IdPersonalImss', 'nuc_personalImss', '-9']);

      if CdPersonalImss.Active then
        CdPersonalImss.Refresh
      else
        CdPersonalImss.Open;

       CdMemoria.First;
       while not CdMemoria.Eof do
       begin
         if cdMemoria.FieldByName('Incluir').AsBoolean then
         begin
           CdPersonalImss.Append;
           CdPersonalImss.FieldByName('IdPersonalImss').AsInteger := 0;
           CdPersonalImss.FieldByName('IdPersonal').AsInteger := CdMemoria.FieldByName('IdPersonal').AsInteger;
           CdPersonalImss.FieldByName('FechaMovimiento').AsDateTime := cxDateEditAplicacion.Date;

           CdPersonalImss.FieldByName('FechaRegistro').AsDateTime := Now;
           CdPersonalImss.FieldByName('TipoMovimiento').AsString := 'Modificacion';
           CdPersonalImss.FieldByName('Jornada').AsInteger := CdMemoria.FieldByName('Jornada').AsInteger;
           CdPersonalImss.FieldByName('CobraFestivos').AsInteger := CdMemoria.FieldByName('CobraFestivos').AsInteger;
           CdPersonalImss.FieldByName('IdPlazaDetalle').AsInteger := CdMemoria.FieldByName('IdPlazaDetalle').AsInteger;
           CdPersonalImss.FieldByName('RegistroPatronal').AsString := CdMemoria.FieldByName('RegistroPatronal').AsString;
           CdPersonalImss.FieldByName('SalarioDiario').AsExtended := CdMemoria.FieldByName('SDACTUAl').AsExtended;
           CdPersonalImss.FieldByName('SalarioIntegrado').AsExtended := CdMemoria.FieldByName('NewSDI').AsExtended;
           CdPersonalImss.FieldByName('Procesado').AsString := CdMemoria.FieldByName('Procesado').AsString;
           CdPersonalImss.FieldByName('IdPeriodosGuardia').Clear;
           CdPersonalImss.FieldByName('IdDepartamento').AsInteger := CdMemoria.FieldByName('IdDepartamento').AsInteger;
           CdPersonalImss.FieldByName('IdCargo').AsInteger := CdMemoria.FieldByName('IdCargo').AsInteger;
           CdPersonalImss.FieldByName('IdTipoNomina').AsInteger := CdMemoria.FieldByName('IdTipoNomina').AsInteger;
           CdPersonalImss.FieldByName('IdOrganizacion').AsInteger := CdMemoria.FieldByName('IdOrganizacion').AsInteger;
           CdPersonalImss.FieldByName('Comentarios').AsString := 'Registro Calculado Generado por el sistema ' + VarToStr(now);
           CdPersonalImss.FieldByName('TipoFiniquito').AsInteger := CdMemoria.FieldByName('TipoFiniquito').AsInteger;
           CdPersonalImss.FieldByName('DiasIndemnizacion').AsInteger := CdMemoria.FieldByName('DiasIndemnizacion').AsInteger;
           CdPersonalImss.Post;
           CdPersonalImss.ApplyUpdates(-1);
         end;
         CxProgressBarGrabar.Position := CxProgressBarGrabar.Position + pgItem;
         Application.ProcessMessages;

         CdMemoria.Next;
       end;
       InteliDialog.ShowModal('Aviso', 'Proceso finalizado correctamente.', mtInformation, [mbOK], 0);
    finally
      CxBtnCargarPersonalClick(Nil);
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnCalcularClick(Sender: TObject);
var
  Cursor: TCursor;
  Calculo, Tope: Extended;
begin
  try
    Cursor := Screen.Cursor;
    try
      if (InteliDialog.ShowModal('Aviso', 'Está seguro que desea proceder con el calculo del nuevo SDI del personal Seleccionado?', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
      begin
        Screen.Cursor := crAppStart;
        CxGridDatosEmpleado.Styles.OnGetContentStyle := CxGridDatosEmpleadoStylesGetContentStyle;
        CdMemoria.First;
        while Not CdMemoria.Eof do
        begin
          cdMemoria.Edit;
          if CdMemoria.FieldByName('Incluir').AsBoolean then
          begin
            Calculo := RoundTo((CdMemoria.FieldByName('SDActual').AsExtended * CdMemoria.FieldByName('FiCorrespondiente').AsExtended), -2);
            Tope := RoundTo((CdMemoria.FieldByName('TopeImss').AsExtended * CdMemoria.FieldByName('SalMinDF').AsExtended), -2);

            if Calculo > Tope then
            begin
              CdMemoria.FieldByName('NewSDI').AsExtended :=  Tope;
              CdMemoria.FieldByName('Topado').AsBoolean := True;
            end
            else
              CdMemoria.FieldByName('NewSDI').AsExtended := Calculo;

            cdMemoria.Post;
          end;
          CdMemoria.Next;
        end;
      end;
    finally
      CxGridDatosEmpleado.Styles.OnGetContentStyle := CxGridDatosEmpleadoStylesGetContentStyle;
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnCalcularSDiClick(
  Sender: TObject);
var
  Cursor: TCursor;
  Calculo, Tope: Extended;
begin
  try
    Cursor := Screen.Cursor;
    try
      if (InteliDialog.ShowModal('Aviso', 'Está seguro que desea proceder a Grabar el nuevo SDI de este personal?', mtConfirmation, [mbYes, mbNo], 0)) = mrYes then
      begin
        Screen.Cursor := crAppStart;
        cdMemoria.Edit;
        Calculo := RoundTo((CdMemoria.FieldByName('SDActual').AsExtended * CdMemoria.FieldByName('FiCorrespondiente').AsExtended), -2);
        Tope := RoundTo((CdMemoria.FieldByName('TopeImss').AsExtended * CdMemoria.FieldByName('SalMinDF').AsExtended), -2);

        if Calculo > Tope then
        begin
          CdMemoria.FieldByName('NewSDI').AsExtended :=  Tope;
          CdMemoria.FieldByName('Topado').AsBoolean := True;
        end
        else
          CdMemoria.FieldByName('NewSDI').AsExtended := Calculo;

        cdMemoria.Post;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnCargarClick(Sender: TObject);
begin
  pnlOpciones.Visible := not pnlOpciones.Visible;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnDeseleccionarClick(
  Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      cdMemoria.Edit;
      CdMemoria.FieldByName('Incluir').AsBoolean := False;
      cdMemoria.Post;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnDeseleccionarTodosClick(
  Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      CdMemoria.First;
      while Not CdMemoria.Eof do
      begin
        cdMemoria.Edit;
        CdMemoria.FieldByName('Incluir').AsBoolean := False;
        cdMemoria.Post;
        CdMemoria.Next;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnEliminarModificacionClick(
  Sender: TObject);
var
  Cursor: TCursor;
  Calculo, Tope: Extended;
  pgItem, pgMax, CuentaBorrados: Integer;
begin
  try
    pgItem := 20;
    CuentaBorrados := 0;
    CxProgressBarGrabar.Position := 0;
    Cursor := Screen.Cursor;

    if InteliDialog.ShowModal('Aviso', '¿Está seguro que desea Quitar todas estas modificaciones de salario [' + VarToStr(CdMemoria.RecordCount) + ']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    try
      Screen.Cursor := crAppStart;
      pgMax := CdMemoria.RecordCount * pgItem;

      CxProgressBarGrabar.Properties.Max := pgMax;
      CxProgressBarGrabar.Properties.Min := 0;

      CdMemoria.First;
      while not CdMemoria.Eof do
      begin
        if CdMemoria.FieldByName('Incluir').AsBoolean then
        begin
          if not CargarDatosFiltrados(CdPersonalImss, 'idPersonalImss,TipoMovimiento', [CdMemoria.FieldByName('IdPersonalImss').AsInteger,'Modificacion']) then
          raise InteligentException.CreateByCode(6, ['IdPersonalImss', 'nuc_personalImss', '-9']);

          if CdPersonalImss.Active then
            CdPersonalImss.Refresh
          else
            CdPersonalImss.Open;

          if CdPersonalImss.RecordCount = 1 then
          begin
            CdPersonalImss.Delete;
            CdPersonalImss.ApplyUpdates(-1);
            Inc(CuentaBorrados);
          end;
        end;
        CxProgressBarGrabar.Position := CxProgressBarGrabar.Position + pgItem;
        Application.ProcessMessages;

        CdMemoria.Next;
      end;
      InteliDialog.ShowModal('Aviso', 'Se eliminaron [' + VarToStr(CuentaBorrados) + '] Modificaciones de Salario', mtInformation, [mbOK], 0);
    finally
      CxBtnCargarPersonalClick(Nil);
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnExportarClick(Sender: TObject);
var
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';

  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, CxGridEmpleados);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnSeleccionarClick(
  Sender: TObject);
var
  Cursor: TCursor;
begin

  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      cdMemoria.Edit;
      CdMemoria.FieldByName('Incluir').AsBoolean := True;
      cdMemoria.Post;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.DxBarBtnSeleccionarTodoClick(
  Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      CdMemoria.First;
      while Not CdMemoria.Eof do
      begin
        cdMemoria.Edit;
        CdMemoria.FieldByName('Incluir').AsBoolean := True;
        cdMemoria.Post;
        CdMemoria.Next;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmTablaFactoresIntegracion.EstadoBotones;
var
  Estado: Boolean;
begin
  Estado := (CdMemoria.Active) and (CdMemoria.RecordCount > 0);
  DxBarBtnAgregar.Enabled := Estado;
  DxBarBtnCalcular.Enabled := Estado;
end;

procedure TFrmTablaFactoresIntegracion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdPersonal.ProviderName <> '' then
    EliminarConjunto(cdPersonal);

  if cdTipoNomina.ProviderName <> '' then
    EliminarConjunto(cdTipoNomina);

  if cdPersonalImss.ProviderName <> '' then
    EliminarConjunto(cdPersonalImss);

  if cdOrganizacion.ProviderName <> '' then
    EliminarConjunto(cdOrganizacion);

  if cdFactorIntegracion.ProviderName <> '' then
    EliminarConjunto(cdFactorIntegracion);

  Action := caFree;
end;

procedure TFrmTablaFactoresIntegracion.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdPersonal, 'nom_anios_antiguedad', ccCatalog) then
    raise InteligentException.CreateByCode(5,['nom_anios_antiguedad']);

  if not CrearConjunto(CdTipoNomina, 'nom_tiponomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_tiponomina']);

  if not CrearConjunto(CdPersonalImss, 'nuc_personalimss', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nuc_personalimss']);

  if not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nuc_organizacion']);

  CdMemoria.FieldDefs.Add('Incluir', ftBoolean, 0, False);
  CdMemoria.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('idPersonalImss', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('FechaMovimiento', ftDate, 0, False);
  CdMemoria.FieldDefs.Add('FechaReal', ftDate, 0, False);
  CdMemoria.FieldDefs.Add('FechaRegistro', ftDate, 0, False);
  CdMemoria.FieldDefs.Add('TipoMovimiento', ftString, 50, False);
  CdMemoria.FieldDefs.Add('Jornada', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('CobraFestivos', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('IdPlazaDetalle', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('RegistroPatronal', ftString, 100, False);
  CdMemoria.FieldDefs.Add('SalarioDiario', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('SalarioIntegrado', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('Procesado', ftString, 10, False);
  CdMemoria.FieldDefs.Add('IdPeriodosGuardia', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('IdDepartamento', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('IdCargo', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('IdTipoNomina', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('Comentarios', FtMemo, 0, False);
  CdMemoria.FieldDefs.Add('TipoFiniquito', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('DiasIndemnizacion', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('NombreCompleto', ftString, 255, False);
  CdMemoria.FieldDefs.Add('Reingreso', ftDate, 0, False);
  CdMemoria.FieldDefs.Add('Baja', ftString, 10, False);
  CdMemoria.FieldDefs.Add('UltimaModificacion', ftString, 10, False);
  CdMemoria.FieldDefs.Add('SDActual', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('SDIActual', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('FIActual', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('AniosCompletos', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('FICorrespondiente', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('SalMinDF', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('TopeImss', ftInteger, 0, False);
  CdMemoria.FieldDefs.Add('NewSDI', ftFloat, 0, False);
  CdMemoria.FieldDefs.Add('Topado', ftBoolean, 0, False);
  CdMemoria.CreateDataSet;

  CxGridDatosEmpleado.Styles.OnGetContentStyle := nil;//CxGridDatosEmpleadoStylesGetContentStyle;
end;

procedure TFrmTablaFactoresIntegracion.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    try
      CdMemoria.Open;
      if not CargarDatosFiltrados(CdTipoNomina, 'Descanso,Liga', [0,'No']) then
        raise InteligentException.CreateByCode(6, ['Descanso, Liga', '0, No', 'nom_TipoNomina']);

      if CdTipoNomina.Active then
        CdTipoNomina.Refresh
      else
        CdTipoNomina.Open;

      if not CargarDatosFiltrados(cdOrganizacion, 'Padre', [-5]) then
        raise InteligentException.CreateByCode(6, ['nuc_organizacion', 'IdOrganizacion', '-5']);

      if cdOrganizacion.Active then
        cdOrganizacion.Refresh
      else
        cdOrganizacion.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except  
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.MsgType, [mbOK], 0);
  end;
end;

end.
