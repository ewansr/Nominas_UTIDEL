unit UtfrmGuardias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxDBEdit, cxLabel, cxTextEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  DBClient, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, ClientModuleUnit1,
  cxDBExtLookupComboBox, UInteliDialog;

type
  TFrmGuardias = class(TForm)
    editNoGUardia: TcxDBTextEdit;
    editDescripcion: TcxDBTextEdit;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    dxDateSubida: TcxDBDateEdit;
    dxDateBajada: TcxDBDateEdit;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    pnlGrid: TPanel;
    cxGrid1: TcxGrid;
    cxGridPeriodosGuardias: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdPeriodosGUardia: TClientDataSet;
    dsPeriodosGuardia: TDataSource;
    btnAgregar: TcxButton;
    btnSeleccionar: TcxButton;
    dsuptGuardiasRh: TDataSource;
    grdColumid: TcxGridDBColumn;
    grdColumNombre: TcxGridDBColumn;
    grdColuminciio: TcxGridDBColumn;
    grdColumtermino: TcxGridDBColumn;
    cdProyectos: TClientDataSet;
    dsProyectos: TDataSource;
    cxGridRepos1: TcxGridViewRepository;
    cbbProyectos: TcxDBExtLookupComboBox;
    cxDBGridBandProyectos: TcxGridDBTableView;
    grdColumcontrato: TcxGridDBColumn;
    grdColumOrden: TcxGridDBColumn;
    grdColumPlataforma: TcxGridDBColumn;
    grdColumPernocta: TcxGridDBColumn;
    editPlataforma: TcxDBTextEdit;
    editPernocta: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbProyectosPropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    frmEmergente: TForm;
    procedure cargarGuardias;
    { Private declarations }
  public
    resultado: Boolean;
    { Public declarations }
  end;

var
  FrmGuardias: TFrmGuardias;

implementation



{$R *.dfm}

procedure TFrmGuardias.btnAgregarClick(Sender: TObject);
begin
  try
    resultado := False;
    cargarGuardias;
    frmEmergente := TForm.Create(nil);
    pnlGrid.Parent := frmEmergente;
    pnlGrid.Visible := True;
    frmEmergente.Width := pnlGrid.Width;
    frmEmergente.Height := pnlGrid.Height;
    //frmEmergente
    pnlGrid.Align := alClient;

    frmEmergente.ShowModal;

    if resultado = True then
    begin
      if (dsuptGuardiasRh.DataSet.State in [dsInsert,dsEdit]) and (Length(Trim(editNoGUardia.Text)) > 0 ) then
      begin
        dsuptGuardiasRh.DataSet.cancel;
        dsuptGuardiasRh.DataSet.Append;
      end
      else
        dsuptGuardiasRh.DataSet.append;

      editNoGUardia.Text := cdPeriodosGUardia.FieldByName('IdGuardia').asString;
      editDescripcion.Text := cdPeriodosGUardia.FieldByName('TituloGuardia').AsString;

      //if cdPeriodosGUardia.FieldByName('Festivos').asInteger = 0  then
        //cbbTipoGuardia.ItemIndex := 0;
      //else
        //cbbTipoGuardia.ItemIndex := 1;

      dxDateSubida.Date := cdPeriodosGUardia.FieldByName('FechaInicio').AsDateTime;
      dxDateBajada.Date := cdPeriodosGUardia.FieldByName('FechaTermino').AsDateTime;

    end
    else if (resultado = false) and (dsuptGuardiasRh.State in [dsEdit, dsInsert]) then
    begin
      dsuptGuardiasRh.DataSet.Cancel;
    end;
  finally
    //frmEmergente.Free;
  end;

end;

procedure TFrmGuardias.btnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmGuardias.btnCancelClick(Sender: TObject);
begin
  resultado := False;
  frmEmergente.Close;
end;

procedure TFrmGuardias.btnGuardarClick(Sender: TObject);
begin
  try
      //temrinar de llenar los campos para guardar guardia en RH
    dsuptGuardiasRh.DataSet.FieldByName('Reprogramacion').Clear;
    dsuptGuardiasRh.DataSet.FieldByName('idtiponomina').AsInteger := cdPeriodosGUardia.FieldByName('idtiponomina').AsInteger;
    dsuptGuardiasRh.DataSet.FieldByName('Autorizar').AsString := 'Si';
    dsuptGuardiasRh.DataSet.FieldByName('id_periodoGuardia').AsString := cdPeriodosGUardia.FieldByName('idperiodosGuardia').AsString;
    dsuptGuardiasRh.DataSet.FieldByName('sCOmentario').Clear;
    dsuptGuardiasRh.DataSet.FieldByName('SStatusGuardia').AsString := 'Activo';
    dsuptGuardiasRh.DataSet.FieldByName('StipoGuardia').AsString := 'Normal';
    dsuptGuardiasRh.DataSet.FieldByName('iidGuardia').AsInteger := strtoint(editNoGUardia.Text);
    dsuptGuardiasRh.DataSet.FieldByName('snumeroOrdenAux').AsString := cdProyectos.FieldByName('snumeroOrden').AsString;
    TClientDataSet(dsuptGuardiasRh.DataSet).Post;
    TClientDataSet(dsuptGuardiasRh.DataSet).ApplyUpdates(-1);
    InteliDialog.ShowModal('Aviso','Se estableció el contrato a la Guardia.',mtConfirmation, [mbOk], 0);
    Self.Close;
  except
  on e:Exception do
     InteliDialog.ShowModal('Error','Ocurrió el siguente error: ' + e.toString + ' Clase: ' + e.ClassName,mtConfirmation, [mbOk], 0);
  end;

end;

procedure TFrmGuardias.btnSeleccionarClick(Sender: TObject);
begin
  resultado := True;
  frmEmergente.Close;
end;

procedure TFrmGuardias.cargarGuardias;
var
  parametros: TParamFilter;
begin
  try
    parametros := TParamFilter.Create;
    try
      //parametros.Add('Activo','Si');
      parametros.Add('FechaInicio', ClientModule1.DatetoStrSql(Now));

      if not CargarDatosFiltrados(cdPeriodosGUardia, parametros) then
        raise InteligentException.CreateByCode(11, [' al filtrar guardias']);

      if cdPeriodosGUardia.Active then
        cdPeriodosGUardia.Refresh
      else
        cdPeriodosGUardia.Open;

    except
      on e: Exception do
        ShowMessage(e.ToString +' '+ e.ClassName);
    end;
  finally
    parametros.Destroy;
  end;
end;

procedure TFrmGuardias.cbbProyectosPropertiesCloseUp(Sender: TObject);
begin
  editPlataforma.Text := cdProyectos.FieldByName('sidplataforma').AsString;
  editPernocta.Text := cdProyectos.FieldByName('sidPernocta').asString;
end;

procedure TFrmGuardias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsuptGuardiasRh.DataSet.State in [dsInsert, dsEdit] then
    dsuptGuardiasRh.DataSet.Cancel;
end;

procedure TFrmGuardias.FormCreate(Sender: TObject);
begin
  if not crearconjunto(cdPeriodosGUardia, 'nom_periodosguardia_disponibles', ccCatalog) then
    raise inteligentException.createbycode(5, ['Periodos Guardia']);

  if Not CrearConjunto(cdProyectos, 'erp_ordenestrabajo', ccselect) then
    raise InteligentException.CreateByCode(5, ['Ordenes de Trabajo']);


end;

procedure TFrmGuardias.FormShow(Sender: TObject);
begin
  if not CargarDatosFiltrados(TClientDataSet(dsuptGuardiasRh.DataSet), 'iidGuardia', [-9]) then
    raise InteligentException.CreateByCode(11, [' al filtrar guardias']);

  if TClientDataSet(dsuptGuardiasRh.DataSet).Active then
    TClientDataSet(dsuptGuardiasRh.DataSet).Refresh
  else
    TClientDataSet(dsuptGuardiasRh.DataSet).Open;

  Self.Width := 350;

  if not CargarDatosFiltrados(cdProyectos, 'cidStatus', ['P'] ) then
    raise InteligentException.CreateByCode(11, [' al filtrar Ordenes de Trabajo']);

  if cdProyectos.Active then
    cdProyectos.Refresh
  else
    cdProyectos.Open;


  //cxGridPeriodosGuardias.DataController.DataSource := dsPeriodosGuardia;
end;

end.
