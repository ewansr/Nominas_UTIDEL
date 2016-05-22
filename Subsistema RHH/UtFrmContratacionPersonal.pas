unit UtFrmContratacionPersonal;

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
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxTextEdit, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  DBClient, ClientModuleUnit1, UInteliDialog, cxListBox, cxDBEdit, cxRadioGroup,
  cxEditRepositoryItems, Menus, cxLabel, StdCtrls, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmContratacionPersonal = class(TForm)
    dxbrmngr1: TdxBarManager;
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    Panel2: TcxGroupBox;
    cxDBGrid1: TcxGrid;
    cxDbGridPersonal: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    Adv1: TdxBarLargeButton;
    Paneldxbrmngr1Bar2: TdxBar;
    BtnContratar: TdxBarLargeButton;
    cdSalario: TClientDataSet;
    cdDepartamento: TClientDataSet;
    cdCargo: TClientDataSet;
    cdOrganizacion: TClientDataSet;
    cdTipoNomina: TClientDataSet;
    cdImss: TClientDataSet;
    cdRangoSalario: TClientDataSet;
    cdGuardias: TClientDataSet;
    MdDatos: TClientDataSet;
    intgrfldMdDatosIdPerSeleccionado: TIntegerField;
    intgrfldMdDatosidpersonal: TIntegerField;
    MdDatosFecha: TDateField;
    MdDatosCodigo: TStringField;
    strngfldMdDatosEstado: TStringField;
    MdDatosUsuario: TStringField;
    MdDatosNombre: TStringField;
    MdDatoscurp: TStringField;
    MdDatosrfc: TStringField;
    MdDatosimss: TStringField;
    MdDatosEdoCivil: TStringField;
    MdDatosSexo: TStringField;
    MdDatosFechaNacimiento: TDateField;
    MdDatosCodigoPersonal: TStringField;
    MdDatosFechaContratacion: TDateField;
    MdDatosTituloCargo: TStringField;
    MdDatosTituloDepartamento: TStringField;
    MdDatosTituloNomina: TStringField;
    grdColumDbGridPersonalColumn1: TcxGridDBColumn;
    grdColumDbGridPersonalColumn2: TcxGridDBColumn;
    grdColumDbGridPersonalColumn3: TcxGridDBColumn;
    grdColumDbGridPersonalColumn4: TcxGridDBColumn;
    grdColumDbGridPersonalColumn5: TcxGridDBColumn;
    grdColumDbGridPersonalColumn6: TcxGridDBColumn;
    grdColumDbGridPersonalColumn7: TcxGridDBColumn;
    grdColumDbGridPersonalColumn8: TcxGridDBColumn;
    grdColumDbGridPersonalColumn9: TcxGridDBColumn;
    grdColumDbGridPersonalColumn10: TcxGridDBColumn;
    style1: TcxStyleRepository;
    cxstylYellow: TcxStyle;
    cxstylGreen: TcxStyle;
    grdColumDbGridPersonalColumn11: TcxGridDBColumn;
    BtnActualizar: TdxBarLargeButton;
    dxBarCombo1: TdxBarCombo;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    cxEditRepository1: TcxEditRepository;
    cxEdRGContatacion: TcxEditRepositoryRadioGroupItem;
    cxGBFiltros: TcxGroupBox;
    btnBuscar: TcxButton;
    EdtBuscar: TcxTextEdit;
    cxBEContratado: TcxRadioGroup;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    dxBtnSalir: TdxBarLargeButton;
    procedure BtnContratarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDbGridPersonalStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxDbGridPersonalCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnActualizarClick(Sender: TObject);
    procedure EdtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxBEContratadoPropertiesChange(Sender: TObject);
  private
    perContratado: Boolean;
    cadenaBuscar: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContratacionPersonal: TFrmContratacionPersonal;

implementation
uses
  UTFrmContratarWizard;
{$R *.dfm}

procedure TFrmContratacionPersonal.BtnContratarClick(Sender: TObject);
var
    Resp:Integer;
    OldC:TCursor;
    FechaC,Cargo,Depto,Nomina:string;
begin

  //cxDBListBox1.Items.AddObject('',TObject(Id))

  // Iniciar wizard de contratación
  Try
    if (Not cdPersonal.FieldByName('IdPersonalImss').IsNull) or (cdPersonal.FieldByName('IdPersonalImss').AsString <> '')  then
      if (InteliDialog.ShowModal('Aviso', 'El personal seleccionado ya se encuentra contratado. Es recomendable recontratar con una nómina diferente. Desea continuar?', mtConfirmation, [mbYes, mbNo], 0)) = mrNo then
        raise InteligentException.CreateByCode(24, ['Proceso de contratación cancelado por el usuario.']);

    OldC := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if CdORganizacion.ProviderName = '' then
      begin
        if not CrearConjunto(CdOrganizacion,'nuc_organizacion',ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Organización']);
        CdOrganizacion.open;
      end;

      if CdDepartamento.ProviderName = '' then
        if not CrearConjunto(CdDepartamento, 'nuc_departamento', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Departamentos']);

      if CdCargo.ProviderName = '' then
        if not CrearConjunto(CdCargo,'nuc_cargo',ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Cargos']);

      if cdImss.ProviderName = '' then
        if not CrearConjunto(CdImss, 'nuc_personalimss', ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['datos de IMSS']);

      if cdGuardias.ProviderName = '' then
      begin
        if not CrearConjunto(cdGuardias, 'nom_guardia', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Guardias']);

        cdGuardias.Open;
      end;

      if cdTipoNomina.ProviderName = '' then
      begin
        if not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Tipos de nóminas']);

        if Not CargarDatosFiltrados(cdTipoNomina, 'TipoCalculo', ['PERIODICA']) then
          raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'PERIODICA', 'Tipo Cálculo']);

        cdTipoNomina.Open;
      end;

      if cdSalario.ProviderName = '' then
        // Nos permite buscar los salarios
        if not CrearConjunto(cdSalario, 'rhu_salario', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Salarios']);

      if cdRangoSalario.ProviderName = '' then
        //nos permite buscar los rangos de salarios
        if not CrearConjunto(CdRangoSalario, 'nom_rangosalarios', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['rangos de salarios']);

      cdTipoNomina.First;

      if Not CargarDatosFiltrados(cdImss, 'IdPersonalImss', [-9]) then
        raise InteligentException.CreateByCode(6, ['Registros de Personal ante el IMSS', -9, 'IdPersonalImss']);

      cdImss.Open;
      cdImss.Append;
      cdImss.FieldByName('TipoMovimiento').AsString := 'Alta';
      cdImss.FieldByName('FechaMovimiento').AsDateTime := Now;
      cdImss.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;

      Application.CreateForm(TFrmContratarWizard, FrmContratarWizard);
      FrmContratarWizard.lblNombre.Caption.Text := cdPersonal.FieldByName('NombreCompleto').AsString;
      FrmContratarWizard.dsOrganizacion.DataSet := cdOrganizacion;
      FrmContratarWizard.dsDepartamento.DataSet := cdDepartamento;
      FrmContratarWizard.dsCargo.DataSet := cdCargo;
      FrmContratarWizard.dsTipoNomina.DataSet := cdTipoNomina;
      FrmContratarWizard.dsRangoSalario.DataSet := cdRangoSalario;
      FrmContratarWizard.dsSalarios.DataSet := cdSalario;
      FrmContratarWizard.dsGuardias.DataSet := cdGuardias;
      FrmContratarWizard.dsImss.DataSet := cdImss;
      FrmContratarWizard.dsDatos.DataSet := cdPersonal;
      FrmContratarWizard.ShowModal;
    Finally
      Screen.Cursor := OldC;
      FrmContratarWizard.Free;
      BtnActualizarClick(nil);
      //BtnGuardarClick(nil);
    End;
  Except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmContratacionPersonal.BtnActualizarClick(Sender: TObject);
Var
  Cuantos: integer;
  Parametros: TParamFilter;
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      Parametros := TParamFilter.Create;
      cdPersonal.close;
      Parametros.Add('activo', 'si');
      CargarDatosFiltrados(cdPersonal, Parametros.Campos, Parametros.Datos);
      if cdPersonal.active then
        cdPersonal.refresh
      else
        cdPersonal.open;
    finally
      Parametros.Destroy;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

  end;
end;

procedure TFrmContratacionPersonal.btnBuscarClick(Sender: TObject);
Var
  Cuantos: integer;
  Parametros: TParamFilter;
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      Parametros := TParamFilter.Create;
      cdPersonal.close;
      Parametros.Add('activo', 'si');

      if perContratado then
        Parametros.add('Contratado', 'Si')
      else
        Parametros.add('Contratado', 'No');

      if Length(Trim(EdtBuscar.Text)) > 0 then
        Parametros.Add('CadenaBuscar', Trim(EdtBuscar.text) );

      CargarDatosFiltrados(cdPersonal, Parametros.Campos, Parametros.Datos);
      cdPersonal.open;
    finally
      Parametros.Destroy;
      Screen.Cursor := Cursor;
    end;
  except

  end;
end;

procedure TFrmContratacionPersonal.cxBEContratadoPropertiesChange(
  Sender: TObject);
var
  OldCursor: TCursor;
begin
    Try
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        if cxBEContratado.ItemIndex = 0 then
        begin
          perContratado := true;
          if Not  CargarDatosFiltrados(cdPersonal, 'Contratado', ['Si']) then
            raise InteligentException.CreateByCode(6, ['Personal', 'idpersonal', '-9']);
        end
        else
        begin
          perContratado := False;
          if Not  CargarDatosFiltrados(cdPersonal, 'Contratado', ['No']) then
            raise InteligentException.CreateByCode(6, ['Personal', 'idpersonal', '-9']);
        end;

        if cdPersonal.Active then
          cdPersonal.Refresh
        else
          cdPersonal.Open;

      Finally
        Screen.Cursor := OldCursor;
      End;
    Except
      on e:InteligentConnection do
        raise;

      on e:Exception do
        raise InteligentException.CreateByCode(1, [e.Message]);
    End;
end;

procedure TFrmContratacionPersonal.cxDbGridPersonalCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  BtnActualizarClick(nil);
end;

procedure TFrmContratacionPersonal.cxDbGridPersonalStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if AItem = nil then exit;

  if not VarIsNull(ARecord.Values[9]) then
    AStyle := cxstylYellow
  else
    AStyle := cxstylGreen;

end;

procedure TFrmContratacionPersonal.EdtBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
  //cadenaBuscar := cadenaBuscar + Key;
end;

procedure TFrmContratacionPersonal.edtBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13  then
  begin
    btnBuscarClick(nil);
  end;
end;

procedure TFrmContratacionPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmContratacionPersonal.FormCreate(Sender: TObject);
begin
  MdDatos.CreateDataSet;
  MdDatos.Open;
end;

procedure TFrmContratacionPersonal.FormShow(Sender: TObject);
  var
  i, idconvenio: integer;
  OldCursor: TCursor;
begin
  Try
    Try
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        cdPersonal.Close;
        if not CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog) then
         raise InteligentConnection.CreateByCode(5, ['personal']);

        if Not  CargarDatosFiltrados(cdPersonal, 'idpersonal', [-9]) then
          raise InteligentException.CreateByCode(6, ['Personal', 'idpersonal', '-9']);
        cdPersonal.Open;
      Finally
        perContratado := False;
        Screen.Cursor := OldCursor;
        if EdtBuscar.CanFocus then
          EdtBuscar.SetFocus;
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

end.
