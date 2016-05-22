unit UTFrmGuardia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, UTFrmDatosCatalogo, UTFrmDatosGuardia, NxDBColumns, NxColumns,
  frxClass, frxDBSet, JvExControls, JvLabel, pngimage, JvComponentBase,UinteliDialog,
  JvDBGridExport, Grids, DBGrids, JvExDBGrids, JvDBGrid, AdvShapeButton, AdvEdit,
  JvMemoryDataset, ComCtrls, Spin, AdvProgressBar,URegistro, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons, cxGroupBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TFrmGuardia = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    frxReporteGuardias: TfrxReport;
    FrxGuardias: TfrxDBDataset;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    JvLabel1: TJvLabel;
    cdTipo: TClientDataSet;
    Btn_Periodos: TButton;
    CxBtnPerGuar: TcxButton;
    cbTipos: TComboBox;
    DxBarBtnPeriodos: TdxBarLargeButton;
    frxOrganizacion: TfrxDBDataset;
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure Btn_PeriodosClick(Sender: TObject);
    procedure Abrir;
    procedure cbTiposChange(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CxBtnPerGuarClick(Sender: TObject);
    procedure DxBarBtnPeriodosClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    procedure CargarTiposNomina;
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmGuardia: TFrmGuardia;

implementation

Uses ClientModuleUnit1,Unit2, UTFrmPeriodoGuardia;

{$R *.dfm}

procedure TFrmGuardia.AdvShapeButton1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmDatosGuardia, FrmDatosGuardia);
  FrmDatosGuardia.ShowModal;
end;

procedure TFrmGuardia.BtnAddClick(Sender: TObject);
begin
  Globales.SetValue('IdTipoNomina', cdTipo.FieldByName('IdTipoNomina').AsInteger);
  Globales.SetValue('DiasTrabajados', cdTipo.FieldByName('DiasTrabajados').AsInteger);
  Globales.SetValue('DiasDescanso', cdTipo.FieldByName('DiasDescanso').AsInteger);
  inherited;
end;

procedure TFrmGuardia.BtnPrintClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'Guardias.fr3';
      CompReporte := frxReporteGuardias;
      CompDataSetReporte := FrxGuardias;

      inherited;
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

procedure TFrmGuardia.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmGuardia.Btn_PeriodosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPeriodoGuardia, FrmPeriodoGuardia);
  FrmPeriodoGuardia.dsGuardia.DataSet := cdDatos;
  FrmPeriodoGuardia.ShowModal;
end;

procedure TFrmGuardia.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPeriodoGuardia, FrmPeriodoGuardia);
  FrmPeriodoGuardia.dsGuardia.DataSet := cdDatos;
  FrmPeriodoGuardia.ShowModal;
end;

procedure TFrmGuardia.cbTiposChange(Sender: TObject);
var
  OldRecNo: Integer;
begin
  // Localizar el tipo de nómina
  OldRecNo := cdTipo.RecNo;
  cdTipo.RecNo := cbTipos.ItemIndex + 1;

  // Verificar si este tipo de nómina tiene días de descanso
  if cdTipo.FieldByName('DiasDescanso').AsInteger > 0 then
  begin
    if cdDatos.Active then
      BtnSearch.Click;
  end
  else
  begin
    InteliDialog.ShowModal('No es posible registrar periodos de guardia', 'Las multiples guardias se utilizan para poder cubrir los días de descanso entre ellas mismas, debido a que el tipo de nómina ' + cdTipo.FieldByName('Titulo').AsString + ' no cuenta con días de descanso no es posible dar de alta guardias múltiples.', mtWarning, [mbOk], 0);
    cdTipo.RecNo := OldRecNo;
    cbTipos.ItemIndex := OldRecNo -1;
  end;
end;

function TFrmGuardia.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosGuardia.Create(Self);
end;

procedure TFrmGuardia.CxBtnPerGuarClick(Sender: TObject);
begin
  //inherited;
  Button1Click(nil);
end;

procedure TFrmGuardia.DxBarBtnPeriodosClick(Sender: TObject);
begin
  CxBtnPerGuarClick(nil);
end;

procedure TFrmGuardia.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmGuardia.Filtrar;
var
  FCodigo, FTitulo: String;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    FCodigo := '-1';
    FTitulo := '-1';
    if (Length(Trim(edtFCodigo.Text)) > 0) then
      FCodigo := EdtFCodigo.Text;
    if (Length(Trim(edtFtitulo.Text)) > 0) then
      FTitulo := edtFtitulo.Text;
     CargarDatosFiltrados(cdDatos, 'IdTipoNomina,CodigoGuardia,TituloGuardia', [cdTipo.FieldByName('IdTIpoNomina').AsInteger, FCodigo + '%', FTitulo + '%']);
     cdDatos.Refresh;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmGuardia.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'NOMINA';
  inherited;
end;

procedure TFrmGuardia.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;

    CrearConjunto(cdTipo, 'nom_tiponomina', ccCatalog);
    cdTipo.Open;
  Except
    ;
  End;
end;

procedure TFrmGuardia.inicializar;
begin
  keyField := 'IdGuardia';
  entityName := 'nom_guardia';
  codeField := 'CodigoGuardia';
end;

procedure TFrmGuardia.Abrir;
var
  i, idconvenio: integer;
  OldCursor: TCursor;
begin
  if Not ModoSeleccion then
  Try
    Try
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        if not CrearConjunto(cdTipo, 'nom_tiponomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

        cdDatos.Close;
        if not CrearConjunto(cdDatos, EntityName, ccCatalog) then
          raise InteligentConnection.CreateByCode(2, ['No se pudo crear el acceso de datos para la tabla ' + EntityName]);

        ProviderName := cdDatos.ProviderName;

        if UsePaginacion then
          Paginacion(PnlPro,cdDatos,CuantosRegistros(cdDatos),PBPaginacion,NPaginacion, True)
        else
          if Not CargarDatosFiltrados(cdDatos, keyfield, [-9]) then
            raise InteligentConnection.CreateByCode(2, ['No se pudo acceder a la estructura de la tabla ' + EntityName]);

        CargarTiposNomina;

        if cdDatos.State = dsInactive then
          cdDatos.Open;

        if Self.classparent.classnameIs('TFrmCatalogo') {and UsePaginacion} then
          BtnSearch.Click;

        if (Assigned(cdDatos.FieldDefs.Find(KeyField))) and (Not (pfInKey in cdDatos.FieldByName(KeyField).ProviderFlags)) then
          cdDatos.FieldByName(KeyField).ProviderFlags := cdDatos.FieldByName(KeyField).ProviderFlags + [pfInKey];

        if ModoSeleccion then
          FiltroInicial;
      Finally
        Screen.Cursor := OldCursor;
      End;
    Except
      on e:InteligentConnection do
        raise;

      on e:Exception do
        raise InteligentException.CreateByCode(1, [e.Message]);
    End;
  Except
    on e:InteligentConnection do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:exception do
      ;
  End;
end;

procedure TFrmGuardia.CargarTiposNomina;
begin
  // Llenar el combo con los tipos de nomina
  cbTipos.Items.Clear;
  if cdTipo.Active then
    cdTipo.Refresh
  else
    cdTipo.Open;
  while not cdTipo.Eof do
  begin
    cbTipos.Items.Add(cdTipo.FieldByName('Titulo').AsString);

    cdTipo.Next;
  end;

  if cbTipos.Items.Count > 0 then
  begin
    cbTipos.ItemIndex := 0;
    cbTipos.OnChange(Nil);
  end;
end;

end.
