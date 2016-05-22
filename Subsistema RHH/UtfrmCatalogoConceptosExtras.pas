unit UtfrmCatalogoConceptosExtras;

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
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxContainer, dxBar,
  cxClasses, cxGroupBox, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, Menus, cxLabel,
  StdCtrls, cxButtons, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, ExtCtrls, URegistro, ClientModuleUnit1, UInteliDialog, xDatabase,
  ComCtrls, ExportaExcel, cxCalendar, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, rhh_genericclasses,
  frxClass, frxDBSet;

type
  TfrmCatalogoConceptosExtras = class(TForm)
    dxbrmngr1: TdxBarManager;
    cdConceptosExtras: TClientDataSet;
    cdUptConceptosExtras: TClientDataSet;
    dsUptConceptosExtras: TDataSource;
    dsConceptosExtras: TDataSource;
    cxDbGridConceptosExtras: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    cxDBGrid1: TcxGrid;
    tbdxbrmngr1Bar1: TdxBar;
    btnBtnAgregar: TdxBarLargeButton;
    btnBtnEditar: TdxBarLargeButton;
    btnBtnEliminar: TdxBarLargeButton;
    btnBtnActualizar: TdxBarLargeButton;
    btnBtnExportar: TdxBarLargeButton;
    btnBtnSalir: TdxBarLargeButton;
    grdColumDbGridConceptosExtrasColumn1: TcxGridDBColumn;
    grdColumDbGridConceptosExtrasColumn2: TcxGridDBColumn;
    grdColumDbGridConceptosExtrasColumn3: TcxGridDBColumn;
    grdColumDbGridConceptosExtrasColumn4: TcxGridDBColumn;
    grdColumDbGridConceptosExtrasColumn5: TcxGridDBColumn;
    pnlEdicion: TPanel;
    edit1: TcxDBTextEdit;
    edit2: TcxDBTextEdit;
    cbb1: TcxDBComboBox;
    cbb2: TcxDBComboBox;
    editBtn1: TcxButtonEdit;
    btn1: TcxButton;
    btn2: TcxButton;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    pnlProgress: TPanel;
    LabelProgress: TLabel;
    pbProgress: TProgressBar;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    ComboBox1: TComboBox;
    btnImprimir: TdxBarLargeButton;
    frxReporteConceptosExtras: TfrxReport;
    frxOrganizacion: TfrxDBDataset;
    frxConceptosExtras: TfrxDBDataset;
    procedure editBtn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnBtnAgregarClick(Sender: TObject);
    procedure btnBtnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnBtnActualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBtnSalirClick(Sender: TObject);
    procedure btnBtnExportarClick(Sender: TObject);
    procedure btnBtnEliminarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    function validarForm: Boolean;
    { Private declarations }
  public
    AbrirPantalla: boolean;
    { Public declarations }
  protected
    ModuloPantalla: string;
  end;

var
  frmCatalogoConceptosExtras: TfrmCatalogoConceptosExtras;

implementation
uses
  UTFrmConceptosNomina, Unit2;
{$R *.dfm}

procedure TfrmCatalogoConceptosExtras.btn1Click(Sender: TObject);
begin
  if validarForm then
  begin
    if cdUptConceptosExtras.State in [dsInsert, dsEdit] then
    begin
      cdUptConceptosExtras.FieldByName('aplicarsobre').AsString := editBtn1.Text;
      cdUptConceptosExtras.Post;
      cdUptConceptosExtras.ApplyUpdates(-1);
    end;
    cdConceptosExtras.Refresh;
    TForm(FindComponent('FrmAgregar')).Close;
  end;
end;

procedure TfrmCatalogoConceptosExtras.btn2Click(Sender: TObject);
begin
  TForm(FindComponent('FrmAgregar')).Close;
end;

procedure TfrmCatalogoConceptosExtras.btnBtnActualizarClick(Sender: TObject);
var
  OldCursor: TCursor;
begin
  if cdConceptosExtras.State = DsBrowse then
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      cdConceptosExtras.Refresh;
      if cdConceptosextras.recordCount > 0 then
        cdConceptosExtras.first;
    Finally
      Screen.Cursor := OldCursor;
    End;
end;

procedure TfrmCatalogoConceptosExtras.btnBtnAgregarClick(Sender: TObject);
var
  gForma: TForm;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'AGREGAR') then
    Exit;
  if not Assigned(FindComponent('FrmAgregar')) then
  begin
    gForma := TForm.Create(self);
    gForma.Name := 'FrmAgregar';
    ClientModule1.ComponentColor(gForma);
  end;
  TForm(FindComponent('FrmAgregar')).Caption := 'Agregar concepto extra.';
  pnlEdicion.Parent := TForm(FindComponent('FrmAgregar'));
  pnlEdicion.Visible := True;
  pnlEdicion.Align := alClient;
  TForm(FindComponent('FrmAgregar')).width := 385;
  TForm(FindComponent('FrmAgregar')).height := 225;
  cdUptConceptosExtras.Append;
  cdUptConceptosExtras.FieldByName('IdConceptoExtra').AsInteger := 0;
  cdUptConceptosExtras.FieldByName('Activo').AsString := 'Si';
  cdUptConceptosExtras.FieldByName('AplicarSobre').Clear;
  editBtn1.Text := '{Nomina.Sueldo}';
  //{Nomina.Sueldo}
  editBtn1.Text := '';
  TForm(FindComponent('FrmAgregar')).ShowModal;
end;

procedure TfrmCatalogoConceptosExtras.btnBtnEditarClick(Sender: TObject);
var
  gForma: TForm;
begin
  if not Assigned(FindComponent('FrmAgregar')) then
  begin
    gForma := TForm.Create(self);
    gForma.Name := 'FrmAgregar';
    ClientModule1.ComponentColor(gForma);
  end;
  TForm(FindComponent('FrmAgregar')).Caption := 'Editar Concepto Extra. ';
  pnlEdicion.Parent := TForm(FindComponent('FrmAgregar'));
  pnlEdicion.Visible := True;
  pnlEdicion.Align := alClient;
  TForm(FindComponent('FrmAgregar')).width := 385;
  TForm(FindComponent('FrmAgregar')).height := 225;
  cdUptConceptosExtras.Close;

  if not CargarDatosFiltrados(cdUptConceptosExtras,'idconceptoextra',[cdConceptosExtras.FieldByName('idconceptoextra').AsInteger]) then
    raise InteligentConnection.CreateByCode(6, ['concepto extra',cdUptConceptosExtras.FieldByName('IdConceptoExtra').AsString,'IdConceptoExtra']);
  cdUptConceptosExtras.Open;

  if cdUptConceptosExtras.RecordCount <> 1 then
    raise InteligentException.CreateByCode(27,['concepto extra por empleado',cdUptConceptosExtras.FieldByName('IdConceptoExtra').AsString]);

  cdUptConceptosExtras.Locate('IdConceptoExtra', cdConceptosExtras.FieldByName('idconceptoextra').AsInteger, []);
  cdUptConceptosExtras.edit;
  editBtn1.Text :=  cdConceptosExtras.FieldByName('AplicarSobre').AsString;
  TForm(FindComponent('FrmAgregar')).ShowModal;
end;

procedure TfrmCatalogoConceptosExtras.btnBtnEliminarClick(Sender: TObject);
var
  CtaSel, CtaDel: Integer;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
    Exit;
  if cdConceptosExtras.State = dsBrowse then
  Try
    if cdConceptosExtras.State <> dsBrowse then
      raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

    if cxDbGridConceptosExtras.ViewData.RowCount < 1 Then
      raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

    //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
    if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
      Exit;

    if ((cxDbGridConceptosExtras.Controller.SelectedRecordCount = 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + cdConceptosExtras.FieldByName('Titulo').AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo)) or
       ((cxDbGridConceptosExtras.Controller.SelectedRecordCount > 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá con el borrado de ' + IntToStr(cxDbGridConceptosExtras.Controller.SelectedRecordCount) + ' registros' + #10 + #10 + '¿Desea borrar estos registros ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo)) then
      raise InteligentException.Create('Proceso cancelado por el usuario');

    CtaSel := cxDbGridConceptosExtras.Controller.SelectedRecordCount;

    CtaDel := BorrarRegistro(cdConceptosExtras, 'idconceptoextra', brSelected);
    if CtaDel > 0 then
    begin
      cdConceptosExtras.Refresh;  // Si se ha podido eliminar un registro se deberá actualizar el grid

      // Informar del resultado del borrado de registros
      if CtaDel = 0 then
        InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar ningún registro de los seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
      else
        if CtaDel < CtaSel then
          InteliDialog.ShowModal('No se pudieron borrar todos los registros', 'Solamente ' + IntToStr(CtaDel) + ' registro(s) pudieron ser borrados de los ' + IntToStr(CtaSel) + ' que fueron seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
        else
          InteliDialog.ShowModal('Se borraron todos los registros seleccionados', 'El borrado de registros se ha terminado de manera satisfactoria.', mtWarning, [mbOk], 0);
    end;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha eliminado ningún registro', e.message, mtWarning, [mbOk], 0);

    on e:InteligentException do
      ; // No hacer nada, solo es para cambiar el flujo del programa

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TfrmCatalogoConceptosExtras.btnBtnExportarClick(Sender: TObject);
begin
  if cdConceptosExtras.State = dsBrowse then
  Try
    Try
      if cxDbGridConceptosExtras.ViewData.RowCount < 1 Then
        Raise Exception.Create('No hay registros.');

      //if not ClientModule1.LeePermisos(ModuloPantalla,'EXPORTARXLS') then
        //Exit;

      ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
      ExportarExcelDX(cdConceptosExtras,Form2.cdImagen,cxDbGridConceptosExtras,Self.Caption,
      clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString,
      clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString,
      'Ciudad del Carmen, Campeche'
      ,pbProgress,pnlProgress);

    Except
      on e:exception do
        InteliDialog.ShowModal('No se puede exportar Por el siguiente motivo: ',e.message, mtInformation, [mbOk], 0);
    End;
  Finally
    pnlProgress.Visible := False;
  End;
end;

procedure TfrmCatalogoConceptosExtras.btnBtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCatalogoConceptosExtras.btnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'ConceptosExtras.fr3';
      CompReporte := FrxReporteConceptosExtras;
      CompDataSetReporte := FrxConceptosExtras;

      LocalImprimeReporte(cdConceptosExtras,cxDbGridConceptosExtras,'Conceptos Extras');
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

procedure TfrmCatalogoConceptosExtras.editBtn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var registro: TLista;
  tForm: TFrmConceptosNomina;
begin
  try
    tForm := TFrmConceptosNomina.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      cdUptConceptosExtras.FieldByName('aplicarsobre').AsString := registro.Valor['cadena'] ;
      editBtn1.Text :=  cdUptConceptosExtras.FieldByName('aplicarsobre').AsString ;
    end
    else
      raise inteligentexception.Create('Proceso cancelado por el usuario.');
  except
    on e:Exception do
      InteliDialog.ShowModal('No se pudo cargar el Registro por el siguiente motivo.',e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCatalogoConceptosExtras.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Repite: Boolean;
  valRepite, h: Integer;
  OrdenColumnas: String;
begin
  Action := caFree;
end;

procedure TfrmCatalogoConceptosExtras.FormCreate(Sender: TObject);
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
  begin
    AbrirPantalla := false;
    raise InteligentException.Create('***');
  end;

  if not CrearConjunto(cdConceptosExtras, 'nom_conceptoextra',ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Conceptos Extras']);

  if not CrearConjunto(cdUptConceptosExtras, 'nom_conceptoextra', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Conceptos Extras']);

  ClientModule1.ComponentColor(self);
end;

procedure TfrmCatalogoConceptosExtras.FormShow(Sender: TObject);
begin
  if not CargarDatosFiltrados(cdConceptosExtras, 'IdConceptoExtra', [-1]) then
    raise InteligentException.CreateByCode(6, ['Conceptos extras', 'IdConceptoExtra', '-1']);

  if not CargarDatosFiltrados(cdUptConceptosExtras, 'IdConceptoExtra', [-1]) then
    raise InteligentException.CreateByCode(6, ['Conceptos extras', 'IdConceptoExtra', '-1']);

  if cdConceptosExtras.Active then
    cdConceptosExtras.Refresh
  else
    cdConceptosExtras.Open;

  if cdUptConceptosExtras.Active then
    cdUptConceptosExtras.Refresh
  else
    cdUptConceptosExtras.Open;
end;

function TfrmCatalogoConceptosExtras.validarForm: Boolean;
begin
  try
    Result := False;
    if Length(trim(edit1.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Clave Concepto']);

    if Length(trim(edit2.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Título del concepto']);

    if Length(trim(cbb1.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Tipo']);

    if Length(trim(cbb2.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Modo']);

    if Length(trim(editBtn1.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Modo']);

    Result := True;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
    begin
      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentConnection do
      ;   // No hacer nada, solo lo uso para cambiar el flujo del programa

    on e:exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;
end.

