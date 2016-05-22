unit UTFrmRangoSalarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, UInteliDialog, ExtCtrls, DB, DBClient, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, AdvTabSet, StrUtils, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ComCtrls,
  ToolWin, AdvGlowButton, JvExControls, JvLabel, StdCtrls, MoneyEdit,
  rhh_genericclasses, DBCtrls, Mask, DateUtils, frxClass, frxPreview, frxDBSet,
  AdvSmoothButton, AdvToolBar, URegistro, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses,
  Menus, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxControls, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, cxContainer, cxEdit, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TOpciones = (opNil, opSumando, opRestando);

  TFrmRangoSalarios = class(TForm)
    cdRango: TClientDataSet;
    Panel1: TPanel;
    cdHistorial: TClientDataSet;
    tsPeriodos: TAdvTabSet;
    Panel_DatosLinea: TPanel;
    Panel_BotonesLinea: TPanel;
    Btn_AgregarLinea: tcxButton;
    Btn_AceptarLinea: TcxButton;
    Btn_CerrarLinea: TcxButton;
    eImporte: TMoneyEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    eDurante: TMoneyEdit;
    JvLabel3: TJvLabel;
    eTitulo: TEdit;
    Panel2: TPanel;
    JvLabel4: TJvLabel;
    cdTipoNomina: TClientDataSet;
    cbTiposNomina: TComboBox;
    Panel_Progress: TPanel;
    lblTitulo: TJvLabel;
    lblLeyenda1: TJvLabel;
    lblLeyenda2: TJvLabel;
    Panel5: TPanel;
    pbNomina: TProgressBar;
    Panel6: TPanel;
    pbCompleto: TProgressBar;
    lblGrupos: TJvLabel;
    cdSalarios: TClientDataSet;
    cdGrupoSalario: TClientDataSet;
    cbOrganizacion: TComboBox;
    jvlbl2: TJvLabel;
    cdOrganizacion: TClientDataSet;
    cbGrupoSalario: TListBox;
    dsRango: TDataSource;
    cdSalarioUpt: TClientDataSet;
    Panel3: TPanel;
    DBGridDatos: TNextDBGrid;
    NxDBNumberColumn1: TNxDBNumberColumn;
    RepoSalarios: TfrxReport;
    fdsSalarios: TfrxDBDataset;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBNumberColumn4: TNxDBDateColumn;
    cdMoneda: TClientDataSet;
    dsMoneda: TDataSource;
    cbbMoneda: TDBLookupComboBox;
    cdSalMinDF: TClientDataSet;
    dxbrmngr1: TdxBarManager;
    Paneldxbrmngr1Bar1: TdxBar;
    btn1: TdxBarLargeButton;
    btn_Agregar: TdxBarLargeButton;
    btn_Quitar: TdxBarLargeButton;
    btn_NuevaTabla: TdxBarLargeButton;
    btn_refresh: TdxBarLargeButton;
    btn_imprimir: TdxBarLargeButton;
    CalcularRango: TdxBarLargeButton;
    Btn_ListadoRango: TdxBarButton;
    pmRangoSalarios: TPopupMenu;
    CalcularRangodeSalarios1: TMenuItem;
    DxRibbonRangoTab1: TdxRibbonTab;
    DxRibbonRango: TdxRibbon;
    pnlAplicacion: TPanel;
    JvLabel5: TJvLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    frxOrganizacion: TfrxDBDataset;
    cxDateAplicacion: TcxDateEdit;
    cxDateApl: TcxDateEdit;
    nxCheck1: TNxDBCheckBoxColumn;
    NxColumnIdRango: TNxDBTextColumn;
    procedure FormCreate(Sender: TObject);
    procedure tsPeriodosChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cdRangoCalcFields(DataSet: TDataSet);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure Btn_AgregarLineaClick(Sender: TObject);
    procedure Btn_ProyectarClick(Sender: TObject);
    procedure cbTiposNominaChange(Sender: TObject);
    procedure cbOrganizacionChange(Sender: TObject);
    procedure cdOrganizacionAfterScroll(DataSet: TDataSet);
    procedure cdTipoNominaAfterScroll(DataSet: TDataSet);
    procedure cbGrupoSalarioDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure cdRangoBeforeScroll(DataSet: TDataSet);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure CalcularRangodeSalarios1Click(Sender: TObject);
    procedure pmRangoSalariosPopup(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure cdRangoAfterOpen(DataSet: TDataSet);
    procedure cdRangoAfterRefresh(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btn_NuevaTablaClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Llenando: Boolean;
    OrigCaption: String;
    FrmCaptura: TForm;
    Modificado: Boolean;
    Abortar: Boolean;
    ActualizarRango: Boolean;
    CurrentAdvPage: TAdvPage;
    procedure CargarDatos;
    procedure LeerDatos;
    procedure CrearVentana;
  public
  DiasFestivos: Integer;
    { Public declarations }
  end;

var
  FrmRangoSalarios: TFrmRangoSalarios;

implementation

{$R *.dfm}

Uses
  Unit2, UtFrmCatalogoSalarios2;

procedure TFrmRangoSalarios.Btn_AgregarClick(Sender: TObject);
begin
  // Agregar el renglón
  if Not Assigned(FrmCaptura) then
    CrearVentana;

  FrmCaptura.Caption := 'Crear nuevo Rango de Salarios';

  cdRango.Append;

  if TWinControl(Sender).Tag = 1 then
  begin
    eDurante.Text := tsPeriodos.AdvTabs.Items[tsPeriodos.TabIndex].Caption;
    eDurante.Enabled := False;
  end
  else
  begin
    eDurante.Text := IntToStr(YearOf(Now));
    eDurante.Enabled := True;
  end;

  FrmCaptura.ShowModal;

  if Modificado then
    cdRango.Refresh;
end;

procedure TFrmRangoSalarios.Btn_AgregarLineaClick(Sender: TObject);
var
  sFecha: String;
  Anio, Mes, Dia: Word;
begin
  Try
    {CargarDatosFiltrados(cdRango, 'IdOrganizacion,IdTipoNomina', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]);
    if cdRango.Active then
      cdRango.Refresh
    else
      cdRango.Open;
      cdrango.Append;}

    if Not (cdRango.State in [dsEdit, dsInsert]) then
      raise InteligentException.CreateByCode(1, ['El dataset cdRango no se encuentra en Modo de edición o inserción']);

    if Trim(eTitulo.Text) = '' then
    begin
      eTitulo.SetFocus;
      raise InteligentException.CreateByCode(18, ['Titulo']);
    end;

    if eImporte.Value <= 0 then
    begin
      eImporte.SetFocus;
      raise InteligentException.CreateByCode(8, ['El campo [Importe] debe ser mayor que cero']);
    end;

//    if eDurante.Value <= 0 then
//    begin
//      eDurante.SetFocus;
//      raise InteligentException.CreateByCode(8, ['El campo [Durante] debe ser mayor que cero']);
//    end;

    // Verificar si no existe este importe en la tabla

    DecodeDate(cdHistorial.FieldByName('FechaAplicacion').AsDateTime, Anio, Mes, Dia);
    sFecha := eDurante.text + '-' + RightStr('0' + IntToStr(Mes), 2) + '-' + RightStr('0' + IntToStr(Dia), 2);



    // Si todo es correcto proceder a grabar el pedo
    cdRango.FieldByName('IdRangoSalarios').AsInteger := 0;
    cdRango.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
    cdRango.FieldByName('Titulo').AsString := eTitulo.Text;
    cdRango.FieldByName('Importe').AsString := FloatToStr(eImporte.Value);
    cdRango.FieldByName('Periodo').AsString := FloatToStr(eDurante.Value);
    cdRango.FieldByName('FechaAplicacion').AsDateTime := cxDateAplicacion.Date;//EncodeDate(StrToInt(eDurante.text),Mes,Dia);
    cdRango.FieldByName('IdOrganizacion').AsInteger := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
    cdRango.Post;
    cdRango.ApplyUpdates(-1);

    Modificado := True;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
    begin
      InteliDialog.ShowModal(e.ClassName + 'Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Exit;
    end;
  End;
end;

procedure TFrmRangoSalarios.Btn_ImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin

  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if not (CargarDatosFiltrados(cdSalarios, 'IdTipoNomina,SortGrupoSalario,AnioAplicacion', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, 'Si', tsPeriodos.AdvTabs.Items[tsPeriodos.TabIndex].Caption])) then
        raise InteligentException.CreateByCode(11, ['Salarios por Rango']);

      if cdSalarios.Active then
        cdSalarios.Refresh
      else
        cdSalarios.Open;

      Reporte := 'SalariosxRango.fr3';
      CompReporte := RepoSalarios;
      CompDatasetReporte := FdsSalarios;

      LocalImprimeReporte(cdSalarios, DBGridDatos,'Salarios');
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;
  end;
 {

  if (CargarDatosFiltrados(cdSalarios, 'IdTipoNomina,SortGrupoSalario,AnioAplicacion', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, 'Si', tsPeriodos.AdvTabs.Items[tsPeriodos.TabIndex].Caption])) then
  begin
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crSQLWait;

      if cdSalarios.Active then
        cdSalarios.Refresh
      else
        cdSalarios.Open;

      ClientModule1.ImprimeReporte('SalariosxRango.fr3', RepoSalarios);
    Finally
      Screen.Cursor := Cursor;
    End;
  end;
  }
end;

procedure TFrmRangoSalarios.btn_NuevaTablaClick(Sender: TObject);
var
  cursor: TCursor;
  gForm: TForm;
begin
  if cdRango.RecordCount > 0 then
  Try

    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      gForm := TForm.Create(self);
      gForm.Caption := 'Copiar Salarios a Nuevo Periodo';
      gForm.Width := 290;
      gForm.Height := 130;
      gForm.Position := poScreenCenter;
      gForm.BorderStyle := bsDialog;
      pnlAplicacion.Parent := gForm;
      pnlAplicacion.Align := alClient;
      pnlAplicacion.Visible := True;

      if gForm.ShowModal = mrOk then
        //cdRango.Refresh;

    finally

      pnlAplicacion.Visible := False;
      pnlAplicacion.Parent := Self;
      pnlAplicacion.Align := alNone;
    end;
  Except on e: InteligentException do
    InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmRangoSalarios.Btn_ProyectarClick(Sender: TObject);
var
  Importe, Salario,
  PrimaDominical,
  DiasTrabajados,
  DomingosTrabajados,
  GravadoISPT, SalMinZona,
  SalMinDF, Vacaciones,
  Aguinaldo,
  PrimaVacacional,
  FactorPrimaVacacional,
  FactorPrimaDominical,
  DiasExcentoPrimaVacacional,
  DiasExcentoAguinaldo,
  DifLimiteInferior,
  CuotaFija, FactorISPT,
  Subsidio, Diferencia,
  ISPT, ODiferencia,
  TotalPercepciones,
  TotalDeducciones,
  Aplicar, IMSSPatron,
  SMDF, SMZ, SBC,
  IMSSEmpleado,
  FactorIntegracion: Real;
  Periodo, Domingos,
  DiasVacaciones,
  DiasAguinaldo: Integer;
  Acceso,
  TablaISPT,
  SubsidioISPT,
  TablaIMSS: TClientDataSet;
  Opcion,
  OldOpcion: TOpciones;
  Cursor: TCursor;
  NewSalario,
  NewSalarioIntegrado,
  NewAguinaldo,
  NewVacaciones,
  NewPrimaVacacional: Real;
  IdSalario,
  PasoIdSalario: Integer;
  Respuesta,
  RespuestaTodo: Word;
  Procede: Boolean;
  mPercepciones,
  mDeducciones: TClientDataSet;
  IdRSSeleccionado: string;
  CdUs: TClientDataSet;
var
  i: Integer;
begin
  for i:= Form2.MDIChildCount -1 downto 0 do
    if  form2.MDIChildren[i].Name = 'FrmCatalogoSalarios2' then
    begin
      InteliDialog.ShowModal('Aviso', 'El sistema detectó que está abierta la ventana de Cátalogo de Salarios, para poder continuar con este proceso el sistema lo cerrará en automático.', mtInformation, [mbOK], 0);
      form2.MDIChildren[i].Close;
    end;

  if InteliDialog.ShowModal('Calcular Salarios multiples', 'Este proceso puede tardar varios minutos dependiendo de la cantidad de Salarios a calcular y de la velocidad de su motor de la base de datos.' + #10 + #10 + '¿Desea proceder con este cálculo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  EliminarTodosConjuntos;

  RespuestaTodo := mrNone;

  Try
    try
      CdUs := TClientDataSet.Create(Self);

      // Localizar el salario mínimo de DF
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

      //if cdSalarioUpt.ProviderName = '' then
        if Not CrearConjunto(cdUs, 'rhu_salario', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Salarios']);

      cdus.Close;
      if Not CargarDatosFiltrados(cdus, 'IdSalario', [-9]) then
        raise InteligentException.CreateByCode(16, ['Salarios']);

      Try
        IniciarTransaccion;

        cdus.Open;

        //cdRango.First;
        //while Not cdRango.Eof do
        begin
          cdGrupoSalario.First;
          while not cdGrupoSalario.Eof do
          begin
            Procede := True;

            // Primero verificar si el salario que se va a registrar existe
            //cdSalarioUpt.Close;

            IdRSSeleccionado := VarToStr(DBGridDatos.CellValue[5, DBGridDatos.SelectedRow]);
            if Not CargarDatosFiltrados(cdus, 'IdOrganizacion,IdTipoNomina,IdGrupoSalario,IdRangoSalarios', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, cdGrupoSalario.FieldByName('IdGrupoSalario').AsInteger, IdRSSeleccionado{cdRango.FieldByName('IdRangoSalarios').AsInteger}]) then
              raise InteligentException.CreateByCode(16, ['Salarios']);

            if CuantosRegistros(cdus) > 0 then
            begin
              if RespuestaTodo = mrNone then
                Respuesta := InteliDialog.ShowModal('El registro a calcular ya existe', 'El registro de Salario multiple que está a punto de calcular ya existe:' + #10 + #10 +
                                                    cdGrupoSalario.FieldByName('TituloGrupoSalario').AsString + ' para alcanzar ' + FloatToStrF(cdRango.FieldByName('Importe').AsFloat, ffCurrency, 16, 2) + #10 + #10 +
                                                    '¿Desea sobreescribir este Salario?', mtConfirmation, [mbYes, mbNo, mbYesToAll, mbNoToAll, mbCancel], 0)
              else
                Respuesta := RespuestaTodo;

              case Respuesta of
                mrYes, mrYesToAll: begin
                  // Eliminar el registro actual
                  Try
                   // if cdSalarioUpt.Active then
                      cdus.Refresh;
                   // else
                     // cdSalarioUpt.Open;

                    PasoIdSalario := cdus.FieldByName('IdSalario').AsInteger;
                    ProcedimientoAlmacenado('Borrar_Registros', 'Tabla,pListaSel', ['rhu_salario', PasoIdSalario]);

                    //if cdSalarioUpt.Active then
                      cdus.Refresh;
                    //else
                      //cdSalarioUpt.Open;

                  Finally
                    CancelarBloqueo(cdus, PasoIdSalario);
                  End;

                  if Respuesta = mrYesToAll then
                    RespuestaTodo := mrYes;
                end;

                mrNo: Procede := False;  // No realizar el cálculo del salario, respetando el cálculo actual

                mrNoToAll: begin Procede := False; RespuestaTodo := mrNo; end;

                mrCancel: raise InteligentConnection.Create('***');
              end;
            end;

            if Procede then
            begin
              GenerarCalculoVirtual(Self,
                                    cdRango.FieldByName('Importe').AsFloat,
                                    cdOrganizacion.FieldByName('IdOrganizacion').AsInteger,
                                    cdOrganizacion.FieldByName('FactorPrimaDominical').AsFloat,
                                    cdOrganizacion.FieldByName('FactorPrimaVacacional').AsFloat,
                                    cdSalMinDF.FieldByName('Salario').AsFloat,
                                    cdOrganizacion.FieldByName('SalMinGenZona').AsFloat,
                                    cdOrganizacion.FieldByName('SeguroVidaINFONAVIT').AsFloat,
                                    cdOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsInteger,
                                    cdOrganizacion.FieldByName('DiasExcentoAguinaldo').AsInteger,
                                    cdOrganizacion.FieldByName('NSMTopeIntIMSS').AsInteger,
                                    cdTipoNomina.FieldByName('IdTipoNomina').AsInteger,
                                    cdTipoNomina.FieldByName('DiasTrabajados').AsInteger,
                                    cdTipoNomina.FieldByName('DiasDescanso').AsInteger,
                                    cdGrupoSalario.FieldByName('Festivos').AsInteger,
                                    cdGrupoSalario.FieldByName('Domingos').AsInteger,
                                    8,
                                    cdTipoNomina.FieldByName('InicioSemana').AsString,
                                    cdTipoNomina.FieldByName('IdTipoTablaISPT').AsInteger,
                                    cdTipoNomina.FieldByName('Periodicidad').AsFloat,
                                    -1,
                                    -1,
                                    now,
                                    Now,
                                    1,
                                    mPercepciones,
                                    mDeducciones,
                                    NewSalario,
                                    NewSalarioIntegrado,
                                    NewAguinaldo,
                                    NewVacaciones,
                                    NewPrimaVacacional,
                                    False);

              Cursor := Screen.Cursor;
              Try
                Screen.Cursor := crSQLWait;

                // Grabar el salario obtenido
  //              if cdSalarioUpt.State = dsInsert then
  //                cdSalarioUpt.Cancel;

                cdus.Append;
                cdus.FieldByName('IdSalario').AsInteger := 0;
                cdus.FieldByName('IdLlave').AsInteger := 0;
                cdus.FieldByName('IdOrganizacion').AsInteger := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
                cdus.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
                cdus.FieldByName('CodigoSalario').AsString := '';
                cdus.FieldByName('TituloSalario').AsString := cdRango.FieldByName('Titulo').AsString + ', ' + cdGrupoSalario.FieldByName('TituloGrupoSalario').AsString;
                cdus.FieldByName('Salario').AsString := FloatToStr(NewSalario);

                cdus.FieldByName('SalarioIntegrado').AsString := FloatToStr(NewSalarioIntegrado);
                cdus.FieldByName('Aguinaldo').AsString := FloatToStr(NewAguinaldo);
                cdus.FieldByName('Vacaciones').AsString := FloatToStr(NewVacaciones);
                cdus.FieldByName('PrimaVacacional').AsString := FloatToStr(NewPrimaVacacional);

                cdus.FieldByName('FechaAplicacion').AsDateTime := CdRango.FieldByName('FechaAplicacion').asDateTime;//EncodeDate(StrToInt(tsPeriodos.AdvTabs.Items[tsPeriodos.TabIndex].Caption), 1, 1);
                cdus.FieldByName('IdMoneda').AsInteger := cdRango.FieldByName('IdMoneda').AsInteger;
                cdus.FieldByName('IdUsuario').AsInteger := Globales.Elemento('IdUsuario').AsInteger;
                cdus.FieldByName('FechaRegistro').AsDateTime := Now;
                cdus.FieldByName('TipoSalario').AsString := 'Ninguno';
                cdus.FieldByName('IdGrupoSalario').AsInteger := cdGrupoSalario.FieldByName('IdGrupoSalario').AsInteger;
                cdus.FieldByName('IdRangoSalarios').AsInteger := cdRango.FieldByName('IdRangoSalarios').AsInteger;
                cdus.FieldByName('Activo').AsString := 'Si';
                cdus.Post;
                cdus.ApplyUpdates(-1);

  //              IdSalario := UltimoId;
  //
  //              cdSalarioUpt.Close;
  //              if Not CargarDatosFiltrados(cdSalarioUpt, 'IdSalario', [IdSalario]) then
  //                raise InteligentException.CreateByCode(13, [IdSalario, 'Salarios']);

                Try
  //                cdSalarioUpt.Open;
  //                if cdTipoNomina.RecordCount <> 1 then
  //                  raise InteligentException.CreateByCode(13, [IdSalario, 'Salarios']);
  //
  //                cdSalarioUpt.Edit;
  //                cdSalarioUpt.FieldByName('IdSalario').AsInteger := IdSalario;
  //                cdSalarioUpt.FieldByName('IdLlave').AsInteger := IdSalario;
  //                cdSalarioUpt.Post;
  //                cdSalarioUpt.ApplyUpdates(-1);
                Finally
                  CancelarBloqueo(cdus, IdSalario);
                End;

                gcForma.Destroy;
                gcForma := Nil;
              Finally
                Screen.Cursor := Cursor;
              End;
            end;

            cdGrupoSalario.Next;
          end;

          cdRango.Next;
        end;

        if EnTransaccion then
          ConcretarTransaccion;

        InteliDialog.ShowModal('Proceso terminado', 'El cálculo de los Salarios multiples ha terminado de manera satisfactoria.', mtInformation, [mbOk], 0);
      Finally
        if cdSalarioUpt.ProviderName <> '' then
          EliminarConjunto(cdSalarioUpt);

        EliminarTodosConjuntos;
      End;
    finally
      if CdUs.ProviderName <> '' then
        EliminarConjunto(CdUs);
      CdUs.Destroy;

    end;
  Except
    on e:InteligentConnection do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      InteliDialog.ShowModal('Proceso cancelado por el usuario', 'El proceso de cálculo de Salarios múltiples ha sido cancelado por el usuario.', mtInformation, [mbOk], 0);
    end;

    on e:Exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmRangoSalarios.Btn_QuitarClick(Sender: TObject);
begin
  // Eliminar el rango de salarios

end;

procedure TFrmRangoSalarios.btn_refreshClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.cursor;
  Screen.Cursor := crAppStart;
  try
    cdRango.Refresh;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmRangoSalarios.CalcularRangodeSalarios1Click(Sender: TObject);
begin
  if CalcularRango.Enabled then
    CalcularRango.Click;
end;

procedure TFrmRangoSalarios.CargarDatos;
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  if Assigned(cdTipoNomina) and (cdTipoNomina.ProviderName <> '') and (cdTipoNomina.Active) and (cdTipoNomina.RecordCount > 0) then
  Try
    Screen.Cursor := crSQLWait;

    if (cdTipoNomina.Active) and (cdTipoNomina.RecordCount > 0) then
    begin
      if CargarDatosFiltrados(cdRango, 'IdOrganizacion,IdTipoNomina', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]) then
      //if CargarDatosFiltrados(cdRango, 'IdOrganizacion', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger]) then
      begin
        if cdRango.Active then
          cdRango.Refresh
        else
          cdRango.Open;

        LeerDatos;
      end
      else
        cdRango.Close;
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmRangoSalarios.cbGrupoSalarioDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
const Colors: array [Boolean] of Cardinal = (clWhite, clSilver);
begin
 with (Control as TListBox).Canvas do
  begin
   Brush.Color := Colors[odSelected in State]; FillRect(Rect);
   TextOut(4, Rect.Top, (Control as TListBox).Items[Index]);
  end;
end;

procedure TFrmRangoSalarios.cbOrganizacionChange(Sender: TObject);
begin
  if cdOrganizacion.RecordCount > cbOrganizacion.ItemIndex then
    cdOrganizacion.RecNo := cbOrganizacion.ItemIndex+1;
end;

procedure TFrmRangoSalarios.cbTiposNominaChange(Sender: TObject);
begin
  if cdTipoNomina.RecordCount > cbTiposNomina.ItemIndex then
    cdTipoNomina.RecNo := cbTiposNomina.ItemIndex+1;
end;

procedure TFrmRangoSalarios.cdOrganizacionAfterScroll(DataSet: TDataSet);
begin
  CargarDatos;
end;

procedure TFrmRangoSalarios.cdRangoAfterOpen(DataSet: TDataSet);
begin
  btn_agregar.Enabled := cdRango.Active;

  btn_Quitar.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
  CalcularRango.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
  btn_NuevaTabla.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
  btn_imprimir.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
end;

procedure TFrmRangoSalarios.cdRangoAfterRefresh(DataSet: TDataSet);
begin
  btn_agregar.Enabled := cdRango.Active;
  btn_refresh.Enabled := cdRango.Active;
  btn_Quitar.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
  CalcularRango.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
  btn_NuevaTabla.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
  btn_imprimir.Enabled := (cdRango.Active) and (cdRango.RecordCount > 0);
end;

procedure TFrmRangoSalarios.cdRangoBeforeScroll(DataSet: TDataSet);
begin
  CancelarBloqueo(cdRango, cdRango.FieldByName('IdRangoSalarios').AsInteger);
end;

procedure TFrmRangoSalarios.cdRangoCalcFields(DataSet: TDataSet);
begin
  cdRango.FieldByName('Consecutivo').AsInteger := cdRango.RecNo;
end;

procedure TFrmRangoSalarios.cdTipoNominaAfterScroll(DataSet: TDataSet);
begin
  if (cdRango.Active) and (cdOrganizacion.Active) and (cdOrganizacion.RecordCount > 0) and (cbTiposNomina.Items.Count = cdTipoNomina.RecordCount) then
  begin
    CargarDatosFiltrados(cdRango, 'IdOrganizacion,IdTipoNomina', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]);
    if cdRango.Active then
      cdRango.Refresh
    else
      cdRango.Open;

    LeerDatos;
  end;
end;

procedure TFrmRangoSalarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  //PageRangoSalarios.Parent  := AdvToolBarPager1;

  if cdSalMinDF.ProviderName <> '' then
    EliminarConjunto(cdSalMinDF);

  for i := 0 to DBGridDatos.Columns.Count -1 do
    if DBGridDatos.Columns.Item[i].Name <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, DBGridDatos.Columns.Item[i].Name, IntToStr(DBGridDatos.Columns.Item[i].Width));

  for i := 0 to Form2.tbMain.AdvPageCount -1 do
    Form2.tbMain.AdvPages[i].PageIndex := i;

  Form2.tbMain.ActivePage := CurrentAdvpage;

  Action := caFree;
end;

procedure TFrmRangoSalarios.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
  i: Integer;
begin
  ClientModule1.ComponentColor(self);
  Llenando := False;
  OrigCaption := Caption;
  ActualizarRango := False;

  // Reajustar los anchos de las columnas
  for i := 0 to DBGridDatos.Columns.Count -1 do
  Try
    DBGridDatos.Columns.Item[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, DBGridDatos.Columns.Item[i].Name));
  Except
    ;
  End;

  Try
    Cursor := Screen.Cursor;

    CurrentAdvPage := Form2.tbMain.ActivePage;

    //PageRangoSalarios.Parent := Form2.tbMain;
    //PageRangoSalarios.PageIndex := 0;
    Form2.tbMain.ActivePageIndex := 0;

    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdMoneda, 'nuc_moneda', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Monedas']);

      cdMoneda.Open;
      if cdMoneda.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Monedas']);

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      if Not CrearConjunto(cdHistorial, 'nom_rangosalarios_historial', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Historial del Rango de Salarios']);
      cdHistorial.Open;

      if Not CrearConjunto(cdRango, 'nom_rangosalarios', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Rango de Salarios']);

      if Not CrearConjunto(cdGrupoSalario, 'nom_gruposalario', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Grupos de Salario']);

      if Not CrearConjunto(cdSalarios, 'rhu_salario_grupo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Salarios']);

      if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Organización']);
      if Not CargarDatosFiltrados(cdOrganizacion, 'Padre', [-5]) then
        raise InteligentException.CreateByCode(6, ['Organizacion', -5, 'Padre']);

      cdOrganizacion.Open;
      cbOrganizacion.Items.Clear;
      i := -1;
      while not cdOrganizacion.Eof do
      begin
        cbOrganizacion.Items.Add(cdOrganizacion.FieldByName('NombreOrganizacion').AsString);
        if cdOrganizacion.FieldByName('IdOrganizacion').AsInteger = Globales.Elemento('IdOrganizacion').AsInteger then
          i := cbOrganizacion.Items.Count -1;

        cdOrganizacion.Next;
      end;

      if cbOrganizacion.Items.Count > 0 then
        cbOrganizacion.ItemIndex := 0;

      cdGrupoSalario.Open;

      CargarDatosFiltrados(cdTipoNomina, 'SalarioMultiple', ['Si']);
      cdTipoNomina.Open;
      if cdTipoNomina.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Tipos de Nómina']);

      cbTiposNomina.Items.Clear;
      //cbTiposNomina.Items.Add('< Generales >');
      cdTipoNomina.DisableControls;
      Try
        while Not cdTipoNomina.Eof do
        begin
          if cdTipoNomina.FieldByName('SalarioMultiple').AsString = 'Si' then
            cbTiposNomina.Items.Add(cdTipoNomina.FieldByName('Titulo').AsString);

          cdTipoNomina.Next;
        end;
      Finally
        cdTipoNomina.EnableControls;
      End;

      if cbTiposNomina.Items.Count > 0 then
      begin
        cbTiposNomina.ItemIndex := 0;
        cbTiposNomina.OnChange(Sender);
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmRangoSalarios.FormDestroy(Sender: TObject);
begin
  EliminarConjunto([cdRango, cdHistorial]);
end;

procedure TFrmRangoSalarios.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  if Assigned(cdTipoNomina) and (cdTipoNomina.ProviderName <> '') and (cdTipoNomina.Active) and (cdTipoNomina.RecordCount > 0) then
  Try
    Screen.Cursor := crSQLWait;

    if (cdTipoNomina.Active) and (cdTipoNomina.RecordCount > 0) then
    begin
      if CargarDatosFiltrados(cdRango, 'IdOrganizacion,IdTipoNomina', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]) then
      //if CargarDatosFiltrados(cdRango, 'IdOrganizacion', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger]) then
      begin
        if cdRango.Active then
          cdRango.Refresh
        else
          cdRango.Open;

        LeerDatos;
      end
      else
        cdRango.Close;
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmRangoSalarios.LeerDatos;
Const
  NomMes: Array[1..12] of String = ('ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC');
var
  Resultado: Boolean;
  periodoexi: String;
begin
  tsPeriodos.AdvTabs.Clear;
  // Llenar las cejas inferiores
  Try
    Llenando := True;

    cbGrupoSalario.Items.Clear;

    if cbTiposNomina.ItemIndex >= 0 then
    begin
      cdGrupoSalario.Filtered := False;
      cdGrupoSalario.Filter := 'IdTipoNomina = ' + cdTipoNomina.FieldByName('IdTipoNomina').AsString;
      cdGrupoSalario.Filtered := True;
      cdGrupoSalario.First;
      while not cdGrupoSalario.Eof do
      begin
        cbGrupoSalario.Items.AddObject(cdGrupoSalario.FieldByName('TituloGrupoSalario').AsString, TObject(cdGrupoSalario.FieldByName('IdGrupoSalario').AsInteger));

        cdGrupoSalario.Next;
      end;
      cbGrupoSalario.Enabled := True;
    end
    else
    begin
      cbGrupoSalario.Enabled := False;
    end;
    periodoexi:='';

    ActualizarRango := False;
    Try
      while not cdRango.Eof do
      begin
        if cdRango.FieldByName('Periodo').AsString<>periodoexi then
        tsPeriodos.AdvTabs.Add().Caption := cdRango.FieldByName('Periodo').AsString;
        periodoexi:=cdRango.FieldByName('Periodo').AsString;

        cdRango.Next;
      end;
    Finally
      ActualizarRango := True;
    End;
  Finally
    Llenando := False;
  End;

  tsPeriodos.OnChange(Nil, 0, Resultado);
end;

procedure TFrmRangoSalarios.pmRangoSalariosPopup(Sender: TObject);
begin
  // Verificar si hay información seleccionada
  CalcularRangodeSalarios1.Enabled := DbGridDatos.SelectedCount = 1;
end;

procedure TFrmRangoSalarios.tsPeriodosChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  periodo: String;

begin
  Try
    if (Not Llenando) and (tsPeriodos.AdvTabs.Count > 0) then
    begin
      cdRango.Close;
      periodo := tsPeriodos.AdvTabs.Items[NewTab].Caption;
      if Not CargarDatosFiltrados(cdRango, 'Periodo', [periodo]) then
        raise InteligentException.CreateByCode(6, ['Rango de Salarios', periodo, 'Periodo']);
      cdRango.Open;

      {if NewTab = 0 then
        Caption := OrigCaption
      else
        Caption := OrigCaption + ' (SOLO LECTURA)';}
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmRangoSalarios.CrearVentana;
begin
  FrmCaptura := TForm.Create(Self);
  FrmCaptura.Width := Panel_DatosLinea.Width + 6;
  FrmCaptura.Height := 170;

  Panel_DatosLinea.Parent := FrmCaptura;
  Panel_BotonesLinea.Parent := FrmCaptura;

  Panel_DatosLinea.Visible := True;
  Panel_BotonesLinea.Visible := True;

  Panel_DatosLinea.Align := alClient;
  Panel_BotonesLinea.Align := alBottom;
end;

procedure TFrmRangoSalarios.cxButton1Click(Sender: TObject);
var
  cursor: TCursor;
  cdtmpRango: TClientDataSet;
  sFecha: string;
  Anio, mes, dia: Integer;
  LSel: TStringList;
  i: Integer;
begin

  try
    LSel := TStringList.Create;
    i := 0;
    while i <= DBGridDatos.RowCount - 1 do
    begin
      If DBGridDatos.Selected[i] then
        LSel.Add(DBGridDatos.CellValue[5, i]);
      Inc(i);
    end;

    mes := 1;
    Dia := 1;
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      cdtmpRango := TClientDataSet.Create(self);
      if not CrearConjunto(cdtmpRango, 'nom_rangosalarios', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['nom_rangoSalarios']);

      if not CargarDatosFiltrados(cdtmpRango, 'idRangoSalarios', [-9]) then
        raise InteligentException.CreateByCode(6, ['idRangoSalarios', 'nom_rangoSalarios', '-9']);

      if cdtmpRango.Active then
        cdtmpRango.Refresh
      else
        cdtmpRango.Open;

      if cdRango.Active then
      begin
        cdRango.First;
        while not cdRango.Eof do
        begin
          i := 0;
          while i <= Lsel.Count-1 do
          begin
            if Lsel[i] = cdRango.FieldByName('IdRangoSalarios').AsString then
            begin
              cdtmpRango.Append;

              cdtmpRango.FieldByName('IdRangoSalarios').AsInteger := cdRango.FieldByName('IdRangoSalarios').asInteger;
              cdtmpRango.FieldByName('idOrganizacion').AsInteger := cdRango.FieldByName('IdOrganizacion').AsInteger;
              cdTmpRango.FieldByName('IdTipoNomina').asInteger := cdRango.FieldByName('IdTipoNomina').asInteger;
              cdtmpRango.FieldByName('importe').asFloat := cdRango.FieldByName('importe').AsFloat;
              cdtmpRango.FieldByName('Titulo').AsString := cdRango.FieldByName('Titulo').asString;
              cdtmpRango.FieldByName('Importe').AsFloat := cdtmpRango.FieldByName('Importe').asFloat;
              cdtmpRango.FieldByName('Periodo').AsInteger := YearOf(cxDateApl.Date);//StrToInt(edtApl.Text);
              cdtmpRango.FieldByName('FechaAplicacion').AsDateTime := cxDateApl.Date;//EncodeDate(StrToInt(edtApl.Text),Mes,Dia);
              cdtmpRango.FieldByName('IdMoneda').AsInteger := cdRango.FieldByName('idMoneda').AsInteger;

              cdtmpRango.Post;
              cdTmpRango.ApplyUpdates(-1);

            end;
            Inc(i);
          end;
          cdRango.Next;
        end;
      end;

      FormShow(nil);
      InteliDialog.ShowModal('Aviso.', 'Se ha copiado los rangos de salarios seleccionados correctamente', mtInformation, [mbOK], 0);
    finally
      LSel.Destroy;

      EliminarConjunto(cdtmpRango);

      if Assigned(cdtmpRango) then
        cdtmpRango.Destroy;

      Screen.Cursor := Cursor;
      CargarDatos;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Ha ocurrido un error.', 'Informe al administrador de sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

end.
