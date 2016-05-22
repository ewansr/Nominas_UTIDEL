unit UTFrmGruposSalarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, cxClasses, dxRibbon,
  dxSkinsdxBarPainter, dxBar, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Mask, DBCtrls, cxSpinEdit, cxDBEdit, DBClient, ClientModuleUnit1, UInteliDialog,
  rhh_genericclasses, frxClass, frxDBSet;

type
  TFrmGruposSalarios = class(TForm)
    tdxOpciones: TdxRibbonTab;
    tdxRibbonDatosBancariosOpciones: TdxRibbon;
    barManagerGruposSalarios: TdxBarManager;
    dxToolBarbotones: TdxBar;
    btnGuardar: TdxBarLargeButton;
    btnEditar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    cxVista: TcxGridDBTableView;
    cxNivel: TcxGridLevel;
    gridGruposSalarios: TcxGrid;
    pnl1: TPanel;
    lbl1: TLabel;
    cbbTipoNomina: TcxDBLookupComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    edtDomingos: TcxDBSpinEdit;
    lbl4: TLabel;
    edtFestivos: TcxDBSpinEdit;
    tcxTituloGrupoSalario: TcxGridDBColumn;
    tcxDomingos: TcxGridDBColumn;
    tcxFestivos: TcxGridDBColumn;
    dsGruposSalarios: TDataSource;
    cdGruposSalarios: TClientDataSet;
    dsTiposNomina: TDataSource;
    cdTiposNomina: TClientDataSet;
    btnNuevo: TdxBarLargeButton;
    tcxIdGrupoSalario: TcxGridDBColumn;
    btnEliminar: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxstylGridBackground: TcxStyle;
    cxstyl1: TcxStyle;
    dbedtTitulo: TcxDBTextEdit;
    DxBarBtnCerrar: TdxBarLargeButton;
    dxBarBtnImprimir: TdxBarLargeButton;
    frxOrganizacion: TfrxDBDataset;
    frxGruposSalarios: TfrxDBDataset;
    frxReporteGruposSalarios: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure estadoBotones(estadoCampos:Boolean; botonNuevo : Boolean; botonEditar:Boolean;
                        botonGuardar:Boolean; botonCancelar:Boolean; botonEliminar:Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure dxBarBtnImprimirClick(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGruposSalarios: TFrmGruposSalarios;

implementation

{$R *.dfm}

procedure TFrmGruposSalarios.btnGuardarClick(Sender: TObject);
begin
  if cdGruposSalarios.State in [dsEdit, dsInsert] then
  begin
    cdGruposSalarios.Post;
    cdGruposSalarios.ApplyUpdates(-1);

    //Regresar el estado de los botones como al principio
    estadoBotones(False, True, True, False, False, True);
  end;
end;

procedure TFrmGruposSalarios.btnCancelarClick(Sender: TObject);
begin
  estadoBotones(False, True, True, False, False, True);
end;

procedure TFrmGruposSalarios.btnEditarClick(Sender: TObject);
begin
  estadoBotones(True, False, False, True, True, False);
  with cdGruposSalarios do
  begin
    Edit;
  end;
end;

procedure TFrmGruposSalarios.btnEliminarClick(Sender: TObject);
begin
  if (InteliDialog.ShowModal('Eliminar Registro', 'Desea Eliminar el registro?', mtConfirmation, [ mbYes, mbNo ], 0) = mrYes) then
  begin
    cdGruposSalarios.Delete;
    cdGruposSalarios.ApplyUpdates(-1);
    InteliDialog.ShowModal('Eliminado', 'Registro eliminado correctamente', mtInformation, [ mbOk], 0);
  end;
end;

procedure TFrmGruposSalarios.btnNuevoClick(Sender: TObject);
begin
  try
    estadoBotones(True, False, False, True, True, False);
    with cdGruposSalarios do
    begin
      Append; //modo insercion dataset
      cbbTipoNomina.ItemIndex := 0;
      FieldByName('IdGrupoSalario').AsInteger := 0;
      FieldByName('IdTipoNomina').AsInteger := cbbTipoNomina.EditValue;
      FieldByName('TituloGrupoSalario').AsString := '*';
      FieldByName('Domingos').AsInteger := 0;
      FieldByName('Festivos').AsInteger := 0;
    end;
  except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.title, e.Message, e.msgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmGruposSalarios.DxBarBtnCerrarClick(Sender: TObject);
begin
  Close;
end;


procedure TFrmGruposSalarios.dxBarBtnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'GruposSalarios.fr3';
      CompReporte := FrxReporteGruposSalarios;
      CompDataSetReporte := FrxGruposSalarios;

      LocalImprimeReporte(cdGruposSalarios, cxvista, 'GrupoSalario');
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

procedure TFrmGruposSalarios.estadoBotones(EstadoCampos, botonNuevo, botonEditar,
  botonGuardar, botonCancelar, botonEliminar: Boolean);
begin
  //Estado de los botones
  cbbTipoNomina.Enabled := EstadoCampos;
  dbedtTitulo.Enabled   := EstadoCampos;
  edtDomingos.Enabled   := EstadoCampos;
  edtFestivos.Enabled   := EstadoCampos;

  btnNuevo.Enabled    :=    botonNuevo;
  btnEditar.Enabled   :=   botonEditar;
  btnGuardar.Enabled  :=  botonGuardar;
  btnCancelar.Enabled := botonCancelar;
  btnEliminar.Enabled := botonEliminar;
end;

procedure TFrmGruposSalarios.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdGruposSalarios, 'nom_gruposalario', ccupdate) then
    raise InteligentException.CreateByCode(5, ['nom_gruposalario']);

  if not CrearConjunto(cdTiposNomina, 'nom_tiponomina', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_tiponomina']);
end;

procedure TFrmGruposSalarios.FormShow(Sender: TObject);
begin
  estadoBotones(False, True, True, False, False, True);
  //Carga todos los grupos de salarios que hay en la tabla
  if Not CargarDatosFiltrados(cdGruposSalarios, 'IdGrupoSalario', [-1]) then
    raise InteligentException.CreateByCode(6,['IdGrupoSalario','Grupo de Salario','nom_gruposalario']);

  if cdGruposSalarios.Active then
    cdGruposSalarios.Refresh
  else
    cdGruposSalarios.Open;

  //Carga todos los tipos de nomina que hay en la tabla
  if Not CargarDatosFiltrados(cdTiposNomina, 'IdTipoNomina, Liga', [-1, '']) then
    raise InteligentException.CreateByCode(6, ['IdTipoNomina', 'Tipo de Nomina', 'nom_tiponomina']);

  if cdTiposNomina.Active then
    cdTiposNomina.Refresh
  else
    cdTiposNomina.Open;
end;

end.
