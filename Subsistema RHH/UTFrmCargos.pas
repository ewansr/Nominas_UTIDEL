unit UTFrmCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, PngSpeedButton,  UTFrmDatosCargo, UTFrmDatosCatalogo,
  NxColumns, NxDBColumns, frxClass, frxDBSet, AdvShapeButton,UinteliDialog,
  AdvEdit, JvComponentBase, JvEnterTab, JvMemoryDataset, ComCtrls, Grids,
  DBGrids, Spin, AdvProgressBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxButtons, cxControls, cxContainer, cxEdit, cxGroupBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmCargos = class(TFrmCatalogo)
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    FrxCargos: TfrxDBDataset;
    frxReporteCargos: TfrxReport;
    NxDBTextColumn5: TNxDBTextColumn;
    MdDocumentoPrev: TClientDataSet;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    cbbTipoNomina: TComboBox;
    cdTipoNomina: TClientDataSet;
    cdRangoSalarios: TClientDataSet;
    cbbOrganizacion: TComboBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    cdOrganizacion: TClientDataSet;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    cdSalariosIndep: TClientDataSet;
    NxColumnAplicacion: TNxDBTextColumn;
    frxOrganizacion: TfrxDBDataset;
    pnl: TPanel;
    lblFiltro: TJvLabel;
    procedure EditFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdDatosAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure cbbTipoNominaChange(Sender: TObject);
    procedure cbbOrganizacionChange(Sender: TObject);
    procedure dxBtnPeriodoHorariosClick(Sender: TObject);
  private
    Creando: Boolean;
    procedure Filtrar;
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;

    procedure ConsultarDocumentos;
    procedure FiltrarDocumentos(Dats: TClientDataset; IdsDocumentos: String);
    { Private declarations }
  public
    { Public declarations }
  protected
  procedure InitForm; Override;

  end;

var
  FrmCargos: TFrmCargos;

implementation

uses ClientModuleUnit1, unit2, UtfrmHorarios;

{$R *.dfm}

{ TFrmCargos }

procedure TFrmCargos.BtnAddClick(Sender: TObject);
begin
  inherited;
  BtnRefresh.Click;
  FiltrarDocumentos(MdDocumentoPrev,cdDatos.FieldByName('iddocumentos').asstring);
end;

procedure TFrmCargos.BtnDeleteClick(Sender: TObject);
begin
  try
    if ( cdDatos.FieldByName('codigocargo').AsString = 'TI') or
       ( cdDatos.FieldByName('codigocargo').AsString = 'SPRV') then
      Raise Exception.Create('Es un elemento preestablecido por el sistema.');
    inherited;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede eliminar.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCargos.BtnEditClick(Sender: TObject);
begin
  try
    if ( cdDatos.FieldByName('codigocargo').AsString = 'TI') or
       ( cdDatos.FieldByName('codigocargo').AsString = 'SPRV') then
      Raise Exception.Create('Es un elemento preestablecido por el sistema.');
    inherited;
    BtnRefresh.Click;
    FiltrarDocumentos(MdDocumentoPrev,cdDatos.FieldByName('iddocumentos').asstring);
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede editar.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCargos.BtnPrintClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      Reporte := 'Cargos.fr3';
      CompReporte := FrxReporteCargos;
      CompDataSetReporte := FrxCargos;

      inherited
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;

  end;

{
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      ClientModule1.ImprimeReporte('Cargos.fr3', FrxReporteCargos);
  Except
    on e:exception do
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
  End;
}
end;

procedure TFrmCargos.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  FiltrarDocumentos(MdDocumentoPrev,cdDatos.FieldByName('iddocumentos').asstring);
end;

procedure TFrmCargos.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
  cdDatos.First;
end;

procedure TFrmCargos.cbbOrganizacionChange(Sender: TObject);
begin
  inherited;
  //Globales.Elemento('IdOrganizacion').AsInteger := vartostr(cbbOrganizacion.Items.Objects[cbbOrganizacion.ItemIndex]);
  BtnSearch.Click;
end;

procedure TFrmCargos.cbbTipoNominaChange(Sender: TObject);
begin
  inherited;

  BtnSearch.Click;
end;

procedure TFrmCargos.cdDatosAfterScroll(DataSet: TDataSet);
begin
  //Mostrar los documentos de cada cargo
  FiltrarDocumentos(MdDocumentoPrev,cdDatos.FieldByName('iddocumentos').asstring);
end;

function TFrmCargos.createPopUp: TFrmDatosCatalogo;
begin
  if cdTipoNomina.Locate('IdTipoNomina', Integer(cbbTipoNomina.Items.Objects[cbbTipoNomina.ItemIndex]), []) then
  begin
    Result := TFrmDatosCargo.Create(Self);
    TFrmDatosCargo(Result).IdOrganizacion := Integer(cbbOrganizacion.Items.Objects[cbbOrganizacion.ItemIndex]);
    TFrmDatosCargo(Result).IdTipoNomina := Integer(cbbTipoNomina.Items.Objects[cbbTipoNomina.ItemIndex]);
    TFrmDatosCargo(Result).RangoSalario := cdTipoNomina.FieldByName('SalarioMultiple').AsString;
    TFrmDatosCargo(Result).dsTipoNomina.DataSet := cdTipoNomina;
    TFrmDatosCargo(Result).dsRangoSalarios.DataSet := cdRangoSalarios;
    TFrmDatosCargo(Result).dsSalariosIndep.DataSet := cdSalariosIndep;
    TFrmDatosCargo(Result).lblOrganizacion.Caption := cbbOrganizacion.Text;
    TFrmDatosCargo(Result).lblTipoNomina.Caption := cbbTipoNomina.Text;
  end;
end;

procedure TFrmCargos.dxBtnPeriodoHorariosClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
       if (CdTipoNomina.Active) and (CdtipoNomina.RecordCount > 0) then
      begin
        if cdTipoNomina.Locate('IdTipoNomina', Integer(cbbTipoNomina.Items.Objects[cbbTipoNomina.ItemIndex]), []) then
          if cdTipoNomina.FieldByName('TipoOperacion').AsString <> 'HORA' then
            raise InteligentException.CreateByCode(24, ['El tipo de Nómina que seleccionaste no está configurada para cálculo por fracción de hora.']);

        Application.CreateForm(TFrmHorarios, FrmHorarios);
        FrmHorarios.IdCargo := cdDatos.FieldByName('IdCargo').AsInteger;
        FrmHorarios.ShowModal;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
     InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCargos.EditFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmCargos.Filtrar;
Var
  Parametros: TParamFilter;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Parametros := TParamFilter.Create;

  Try
    Screen.Cursor := crSQLWait;

    inherited;

    Parametros.Add('IdOrganizacion', Integer(cbbOrganizacion.Items.Objects[cbbOrganizacion.ItemIndex]));
    Parametros.Add('IdTipoNomina', Integer(cbbTipoNomina.Items.Objects[cbbTipoNomina.ItemIndex]));

    CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
    if cdDatos.Active then
      cdDatos.Refresh
    else
      cdDatos.Open;

    lblFiltro.Caption := cbbTipoNomina.Items[cbbTipoNomina.ItemIndex];
  Finally
    Screen.Cursor := Cursor;
    Parametros.Free;
  End;
end;

procedure TFrmCargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(MdDocumentoPrev);
  EliminarConjunto(cdTipoNomina);
  EliminarConjunto(cdOrganizacion);

  inherited;
end;

procedure TFrmCargos.FormCreate(Sender: TObject);
var
  Indice: Integer;
begin
  ModuloPantalla := 'CARGOS';
  inherited;
  Creando := True;

  Try
    Try
      // Cargar las Organizaciones
      if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Empresas']);

      if Not CargarDatosFiltrados(cdOrganizacion, 'Padre', [-5]) then
        raise InteligentException.CreateByCode(30, ['Empresas']);

      cdOrganizacion.Open;

      if cdOrganizacion.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Empresas']);

      // Llenar el combo con los datos
      cbbOrganizacion.Items.Clear;
      Indice := 0;
      while Not cdOrganizacion.Eof do
      begin
        if Globales.Elemento('IdOrganizacion').AsInteger = cdOrganizacion.FieldByName('IdOrganizacion').AsInteger then
          Indice := cbbOrganizacion.Items.Count;

        cbbOrganizacion.AddItem(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));

        cdOrganizacion.Next;
      end;

      if cbbOrganizacion.Items.Count > 0 then
        cbbOrganizacion.ItemIndex := Indice;

      //***********************************************************************
      // Cargar los tipos de Nómina
      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      cdTipoNomina.Open;

      if cdTipoNomina.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Tipos de Nómina']);

      // Llenar el combo con los datos
      cbbTipoNomina.Items.Clear;
      while Not cdTipoNomina.Eof do
      begin
        cbbTipoNomina.AddItem(cdTipoNomina.FieldByName('Titulo').AsString, TObject(cdTipoNomina.FieldByName('IdTipoNomina').AsInteger));

        cdTipoNomina.Next;
      end;

      if cbbTipoNomina.Items.Count > 0 then
        cbbTipoNomina.ItemIndex := 0;
    Finally
      Creando := False;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;

//  FExBar.BeginUpdate;
//  FExBar.ExGroups.Add('Documentos', True);
//  FExBar.EndUpdate;
//  FExBar.Repaint;
end;

procedure TFrmCargos.FormShow(Sender: TObject);
begin
  Try
    inherited;
    ConsultarDocumentos; //1) traer todos los documentos existentes
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmCargos.ConsultarDocumentos;
begin
  if not CrearConjunto(MdDocumentoPrev,'rhu_documento',ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Documentos']);
  MdDocumentoPrev.Open;
end;

procedure TFrmCargos.FiltrarDocumentos(Dats:TClientDataset; IdsDocumentos: String);
var
 ListaTemp : TStringList;
 x         : Integer;
begin
  //limpieza del componente
  //FExBar.ExGroups.Items[0].Items.Clear;

  ListaTemp := TStringList.Create;
  ListaTemp.CommaText := IdsDocumentos;

  x := 0;
  //FExBar.BeginUpdate;
  while x < ListaTemp.count do
  begin
    //filtrado de dataset
    Dats.Filtered := False;
    Dats.Filter := ' iddocumento = ' + ListaTemp[x];
    Dats.Filtered  := True;

    //añadir los items en la barra
    if Dats.RecordCount > 0 then
    begin
      Dats.First;
      while not Dats.Eof do
      begin
        //FExBar.ExGroups.Items[0].AddLine(Dats.FieldByName('nombredocumento').AsString, clBtnText, [fsBold], True);
        Dats.Next;
      end;
    end;
    inc(x);
  end;
//  FExBar.EndUpdate;
//  FExBar.Repaint;
  Dats.Filtered := False;
  ListaTemp.Free;
end;

procedure TFrmCargos.inicializar;
begin
  keyField := 'idcargo';
  entityName := 'nuc_cargo';
  codeField := 'codigocargo';
end;

procedure TFrmCargos.InitForm;
begin
  //CrearBarraEx := true;
end;

end.
