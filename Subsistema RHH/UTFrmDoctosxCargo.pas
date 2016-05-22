unit UTFrmDoctosxCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  dxSkinsdxBarPainter, cxClasses, dxBar, StdCtrls, cxButtons, cxCheckBox,
  DBCtrls, DB, DBClient, cxLabel, ExtCtrls, ClientModuleUnit1, UInteliDialog, UControlExcepciones,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, URegistro,
  dxLayoutContainer, dxLayoutControl, cxGroupBox, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel;

type
  TFrmDoctosxCargo = class(TForm)
    dxBarManager1: TdxBarManager;
    cdCargos: TClientDataSet;
    cdDocumentos: TClientDataSet;
    cdUptDoctosxCargo: TClientDataSet;
    dsCargos: TDataSource;
    dsDocumentos: TDataSource;
    dsUptDoctosxCargo: TDataSource;
    Panel1: TPanel;
    btnAgregar: TcxButton;
    btnAceptar: TcxButton;
    cxGridDoctosxCargo: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdDoctosxCargo: TClientDataSet;
    dsDoctosxCargo: TDataSource;
    gridColumnDocumento: TcxGridDBColumn;
    gridColumnDescripcion: TcxGridDBColumn;
    gridColumnObligatorio: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    lcbDocumentos: TcxLookupComboBox;
    lcbCargos: TcxLookupComboBox;
    chkAplicaTodos: TcxCheckBox;
    btnCancelar: TcxButton;
    lblLeyenda: TcxLabel;
    IdCargo: TcxGridDBColumn;
    StyleRegistro1: TcxStyleRepository;
    StyleRegistroGris: TcxStyle;
    StyleGeneral: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure RestaurarValores();
    procedure chkAplicaTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lcbCargosClick(Sender: TObject);
    procedure SetValoresVisuales;
    procedure GetValoresVisuales;
    procedure btnCancelarClick(Sender: TObject);
    procedure cxGridDoctosxCargoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    mrResultado : TModalResult;
  public
    { Public declarations }
  end;

var
  FrmDoctosxCargo: TFrmDoctosxCargo;

implementation

{$R *.dfm}

procedure TFrmDoctosxCargo.btnAgregarClick(Sender: TObject);
var
  Cursor: TCursor;
  Enfoque: TWinControl;
  VarNull: Variant;
begin
  try
    Cursor := Screen.Cursor;
    Enfoque := nil;

    try
      Screen.Cursor := crAppStart;

       // valida el status  del  checkbox y el contenido  de las  cajas  de  texto.
      if not chkAplicaTodos.Checked then
        if lcbCargos.EditValue < 0 then
        begin
          Enfoque := lcbCargos;
          raise InteligentException.CreateByCode(18,['cargo']);
        end;

      if lcbDocumentos.EditValue < 0 then
      begin
        Enfoque := lcbDocumentos;
        raise InteligentException.CreateByCode(18,['documento']);
      end;

      //
      if not chkAplicaTodos.Checked then
        cdUptDoctosxCargo.FieldByName('IdCargo').AsInteger := lcbCargos.EditValue;
//      else
//        cdUptDoctosxCargo.FieldByName('IdCargo').AsInteger := 'Null';

      cdUptDoctosxCargo.FieldByName('IddoctosxCargo').AsInteger := 0;
      cdUptDoctosxCargo.FieldByName('IdDocumento').AsInteger := lcbDocumentos.EditValue;
      cdUptDoctosxCargo.FieldByName('Obligatorio').AsString := 'Si';

      if not chkAplicaTodos.Checked then
        if RegistrosCuenta('rhu_doctosxcargo', 'IdCargo,IdDocumento',[cdUptDoctosxCargo.FieldByName('IdCargo').AsInteger ,cdUptDoctosxCargo.FieldByName('IdDocumento').AsInteger]) > 0 then
        begin
          Enfoque := lcbDocumentos;
          raise InteligentException.CreateByCode(17,['documento por cargo',lcbDocumentos.EditValue]);
        end;

      if RegistrosCuenta('rhu_doctosxcargo', '#IdCargo,IdDocumento',['NUll',cdUptDoctosxCargo.FieldByName('IdDocumento').AsInteger]) > 0 then
      begin
        Enfoque := lcbDocumentos;
        raise InteligentException.CreateByCode(17,['documento por cargo',lcbDocumentos.EditValue]);
      end;

      cdUptDoctosxCargo.Post;
      cdUptDoctosxCargo.ApplyUpdates(-1);

      MrResultado := mrOK;

      //refresca el ClientDataSet para mostrar el elemento agregado
      if cdDoctosxCargo.Active then
        cdDoctosxCargo.Refresh
      else
        cdDoctosxCargo.Open;

      if ModalResult = mrOk then
        close;

      // limpia  cajas de  texto del formulario.
      RestaurarValores;

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      if Assigned (Enfoque) then
        Enfoque.SetFocus;

      levantarExcepcion(e);
    end;
  end;

end;

procedure TFrmDoctosxCargo.RestaurarValores;
begin

  LcbDocumentos.EditValue := -1;

  if ModalResult = mrOk then
    lcbCargos.EditValue := -1;

  if lcbCargos.CanFocus then
    lcbCargos.SetFocus;

  if cdUptDoctosxCargo.State = dsBrowse then
    cdUptDoctosxCargo.Append;

end;

procedure TFrmDoctosxCargo.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmDoctosxCargo.chkAplicaTodosClick(Sender: TObject);
begin

  if chkAplicaTodos.Checked then
  begin
    lcbCargos.EditValue := -1;
    lcbCargos.Enabled := False;
    Caption := 'Documentación por Puesto de Trabajo : Aplica a Todos los Puestos';

    if not CargarDatosFiltrados(cdDoctosxCargo, 'IdCargo', [-5]) then
      raise InteligentException.CreateByCode(6,['Documentos por Cargo', 'IdCargo', '-5']);

    if lcbDocumentos.CanFocus then
      lcbDocumentos.SetFocus;

    if cdDoctosxCargo.Active then
      cdDoctosxCargo.refresh
    else
     cdDoctosxCargo.open;
  end
  else
  begin
    lcbDocumentos.EditValue := -1;
    lcbCargos.Enabled := True;
    cdDoctosxCargo.Close;
    Caption := 'Documentación por Puesto de Trabajo';

    if lcbCargos.CanFocus then
      lcbCargos.SetFocus;
  end;

end;

procedure TFrmDoctosxCargo.cxGridDoctosxCargoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   AItem:= (Sender as TcxGridDBTableView).GetColumnByFieldName('IdCargo');
  if VarToStr(ARecord.Values[AItem.Index]) = '' then
    AStyle := StyleRegistroGris
  else
    AStyle := StyleGeneral;

end;

procedure TFrmDoctosxCargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := mrResultado;

  if assigned(cdCargos) then
    EliminarConjunto(cdCargos);

  if assigned(cdDocumentos) then
    EliminarConjunto(cdDocumentos);

  if Assigned(cdDoctosxCargo) then
    EliminarConjunto(cdDoctosxCargo);

  if Assigned(cdUptDoctosxCargo) then
    EliminarConjunto(cdUptDoctosxCargo);

  setValoresVisuales;
  LiberarVentana(self, action);

end;

procedure TFrmDoctosxCargo.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    ModalResult := mrCancel;
    try
      Screen.Cursor := crAppStart;

      if not CrearConjunto(CdCargos, 'nuc_cargo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Catálogo general de cargos']);

      if not CrearConjunto(CdDocumentos, 'rhu_documento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Catálogo general de documentos']);

      if not CrearConjunto(CdUptDoctosxCargo, 'rhu_doctosxcargo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Catálogo general de documentos por cargo']);

      if not CrearConjunto(cdDoctosxCargo, 'rhu_doctosxcargo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Catálogo general de documentos por cargo']);

      GetValoresVisuales();

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
      LevantarExcepcion(e);
  end;

end;
procedure TFrmDoctosxCargo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    mrResultado := mrCancel;
    try
      Screen.Cursor := crAppStart;

      if cdCargos.Active then
        cdCargos.Refresh
      else
        cdCargos.Open;

      if cdDocumentos.Active then
        cdDocumentos.Refresh
      else
        cdDocumentos.Open;

      if cdUptDoctosxCargo.Active then
        cdUptDoctosxCargo.Refresh
      else
        cdUptDoctosxCargo.Open;

      cdUptDoctosxCargo.Append;

    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:Exception do
      LevantarExcepcion(e);
  end;
end;

procedure TFrmDoctosxCargo.lcbCargosClick(Sender: TObject);
begin
  try
    if not CargarDatosFiltrados(cdDoctosxCargo, 'IdCargo', [lcbCargos.EditValue]) then
      raise InteligentException.CreateByCode(6,['Documentos por Cargo', 'IdCargo',lcbCargos.EditValue]);

    if cdDoctosxCargo.Active then
      cdDoctosxCargo.Refresh
    else
      cdDoctosxCargo.Open;

    Caption := 'Documentación por Puesto de Trabajo : ' + lcbCargos.Text;

  except
    on e:exception do
      LevantarExcepcion(e);
  end;

end;

procedure TFrmDoctosxCargo.SetValoresVisuales;
var
  i: Integer;
begin
  //Guardar las  medidas  de los  anchos de las  columnas.
  for i := 0 to cxGridDoctosxCargo.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + self.Name + '\GridDoctosxCargo', 'Column' + IntToStr(i), IntToStr(cxGridDoctosxCargo.Columns[i].Width));

end;
procedure TFrmDoctosxCargo.GetValoresVisuales;
var
  i: Integer;
begin
  //GetValoresVisuales;
  for i := 0 to cxGridDoctosxCargo.ColumnCount -1 do
    try
      cxGridDoctosxCargo.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + self.Name + '\' + 'GridDoctosxCargo', 'Column'+ IntToStr(i)));
    except
      ;
    end;

end;

end.
