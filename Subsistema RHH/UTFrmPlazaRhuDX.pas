unit UTFrmPlazaRhuDX;

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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, DB, DBClient,
  ClientModuleUnit1, UInteliDialog, UControlExcepciones, ExtCtrls, JvExControls,
  JvLabel, StdCtrls, DBCtrls, ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons,
  URegistro, NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, RXDBCtrl, dxGDIPlusClasses, cxControls, cxContainer,
  cxEdit, cxLabel, AdvPageControl, JvExComCtrls, JvDateTimePicker, JvExStdCtrls,
  JvEdit, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, frxClass, frxDBSet, frxPreview, Tabs, DockTabSet, DBTables,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, rhh_genericclasses;

type
  TFrmPlazaRhuDX = class(TForm)
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxBarBtnNuevo: TdxBarLargeButton;
    DxBarBtnAbrir: TdxBarLargeButton;
    DxBarBtnCerrar: TdxBarLargeButton;
    DxBarBtnActualizar: TdxBarLargeButton;
    DxBarBtnImprimir: TdxBarLargeButton;
    DxBarBtnExportar: TdxBarLargeButton;
    DxBarBtnImportar: TdxBarLargeButton;
    DxBarBtnImportat: TdxBarLargeButton;
    DxBarBtnOcultar: TdxBarLargeButton;
    dsPlazaGeneral: TDataSource;
    pnlPlaza: TPanel;
    pnlEncabezado: TPanel;
    JvLabel1: TJvLabel;
    DBText1: TDBText;
    JvLabel2: TJvLabel;
    DBText2: TDBText;
    JvLabel3: TJvLabel;
    DBText3: TDBText;
    JvLabel4: TJvLabel;
    DBText4: TDBText;
    JvLabel5: TJvLabel;
    DBText5: TDBText;
    Panel4: TPanel;
    cdCatalogoPlazas: TClientDataSet;
    cdOrganizacion: TClientDataSet;
    Panel1: TPanel;
    dsUptPlazaDetalle: TDataSource;
    Panel2: TPanel;
    btn_Nueva: TcxButton;
    Panel3: TPanel;
    Panel5: TPanel;
    gridGrupos: TJvDBGrid;
    Panel6: TPanel;
    dsPlazaDetalleGpo: TDataSource;
    dsPlazaDetalle: TDataSource;
    Splitter2: TSplitter;
    Splitter1: TSplitter;
    pumDetalle: TPopupMenu;
    AgregarDetalle1: TMenuItem;
    EliminarDetalle1: TMenuItem;
    N1: TMenuItem;
    CancelarDetalle1: TMenuItem;
    EditarDetalle1: TMenuItem;
    lblNombreSolicitante: TcxLabel;
    lblPuesto: TcxLabel;
    lblDepartamento: TcxLabel;
    cdPlazaDetalleGpo: TClientDataSet;
    dsPostulantesxGrupoPlaza: TDataSource;
    frxRepDocumentos: TfrxReport;
    frxDSDocumentos: TfrxDBDataset;
    cdPostulantes: TClientDataSet;
    btnAnalisis: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dsPostulantes: TDataSource;
    cdMemoryPost: TClientDataSet;
    tmrAfterScroll: TTimer;
    pcGrupos: TAdvPageControl;
    GpoDetalle: TAdvTabSheet;
    Panel8: TPanel;
    gpoDocumentos: TAdvTabSheet;
    Panel11: TPanel;
    CheckBox1: TCheckBox;
    FrxPrevDocumentos: TfrxPreview;
    GpoPostulantes: TAdvTabSheet;
    Panel7: TPanel;
    Panel9: TPanel;
    btn_AgregarPostulante: TcxButton;
    cxGridPostulantes: TcxGrid;
    gridPostulantes: TcxGridDBTableView;
    columnaNombre: TcxGridDBColumn;
    ColumnaAsignado: TcxGridDBColumn;
    ColumnaOrganizacion: TcxGridDBColumn;
    ColumnaDepartamento: TcxGridDBColumn;
    ColumnaCargo: TcxGridDBColumn;
    ColumnaDocumentacion: TcxGridDBColumn;
    cxGridPostulantesLevel1: TcxGridLevel;
    gpoAnálisis: TAdvTabSheet;
    Panel10: TPanel;
    DBGrid1: TDBGrid;
    DockTabSet1: TDockTabSet;
    Panel12: TPanel;
    sgAnalisisPersonal: TStringGrid;
    btnImprimirOficio: TMenuItem;
    frxOficio: TfrxDBDataset;
    frxReporteOficio: TfrxReport;
    gridDetalle1: TcxGrid;
    cxGridDetalle: TcxGridDBTableView;
    gridDetalle1Level1: TcxGridLevel;
    ColCodigoDepartamento: TcxGridDBColumn;
    ColTituloDepartamento: TcxGridDBColumn;
    ColExperienciaMinima: TcxGridDBColumn;
    ColUnidadExperiencia: TcxGridDBColumn;
    ColCodigoPersonal: TcxGridDBColumn;
    ColNombreCompleto: TcxGridDBColumn;
    ColIdPlazaDetalle: TcxGridDBColumn;
    frxPlazaDetalle: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    frxPlazaGeneral: TfrxDBDataset;
    procedure DxBarBtnNuevoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DxBarBtnAbrirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetPropiedadesVisuales(DataSet: TDataSet);
    procedure GetPropiedadesVisuales(DataSet: TDataSet);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure CrearConjuntosPartidas(CodigoPlaza: String);
    //procedure gridDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
    //  DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_NuevaClick(Sender: TObject);
 //   procedure gridDetalleKeyDown(Sender: TObject; var Key: Word;
 //     Shift: TShiftState);
    procedure EditarDetalle1Click(Sender: TObject);
//    procedure gridDetalleDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdPlazaDetalleGpoAfterScroll(DataSet: TDataSet);
    procedure btnAnalisisClick(Sender: TObject);
    procedure tmrAfterScrollTimer(Sender: TObject);
    procedure btnImprimirOficioClick(Sender: TObject);
    procedure cxGridDetalleCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    CuentaTicks: Integer;
    cdUptPlazaGeneral: TClientDataSet;
    cdPlazaGeneral: TClientDataSet;
    cdPlazaDetalle: TClientDataSet;
    cdUptPlazaDetalle: TClientDataSet;
    cdPostulantesxGrupoPlaza: TClientDataSet;
    OrigHeight: Integer;
    OldCaption: String;
    cdDocumentos: TClientDataSet;
    NecesitaAnalizar: Boolean;
    NecesitaAnalizarPost: Boolean;
    procedure CambiarTitulo(Cadena: String; Estado: String);
    procedure cdPlazaGeneralAfterScroll(DataSet: TDataSet);
    procedure cdPlazaGeneralAfterClose(DataSet: TDataSet);
    procedure cdPlazaGeneralAfterOpen(DataSet: TDataSet);
    procedure cdPlazaGeneralAfterInsert(DataSet: TDataSet);
    procedure cdPlazaGeneralAfterPost(DataSet: TDataSet);
    procedure cdPlazaGeneralAfterRefresh(DataSet: TDataSet);
    procedure cdPlazaGeneralAfterEdit(DataSet: TDataSet);
    procedure EditarDetalle(Sender: TObject);
    procedure ProcedeAnalisis;
  public
    { Public declarations }
  end;

var
  FrmPlazaRhuDX: TFrmPlazaRhuDX;

implementation

{$R *.dfm}

Uses
  UTFrmPlazaGeneral, UTFrmSeleccionarPlaza, UTFrmGrupoPlazas,
  UTFrmEditarDetalle, UTFrmAnalisisPostulantes;

procedure TFrmPlazaRhuDX.CambiarTitulo(Cadena: String; Estado: String);
begin
  Self.Caption := OldCaption + ' - ' + Cadena;
  if Estado <> '' then
    Self.Caption := Self.Caption + ' [' + Estado + ']';
end;

procedure TFrmPlazaRhuDX.cdPlazaGeneralAfterClose(DataSet: TDataSet);
begin
  Self.Caption := OldCaption;
end;

procedure TFrmPlazaRhuDX.cdPlazaGeneralAfterOpen(DataSet: TDataSet);
begin
  SetPropiedadesVisuales(DataSet);
  CambiarTitulo(DataSet.FieldByName('CodigoPlaza').AsString, '');
end;

procedure TFrmPlazaRhuDX.GetPropiedadesVisuales(DataSet: TDataSet);
var
  i: Integer;
begin
  pnlPlaza.Visible := False;

  if DataSet.RecordCount > 0 then
    SetRegistry('\Ventanas', '\' + Self.Name + '\Panel5\' + DataSet.FieldByName('CodigoPlaza').AsString, 'Width', IntToStr(Panel5.Width));

  for i := 0 to gridGrupos.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\' + DataSet.FieldByName('CodigoPlaza').AsString + '\gridGrupos', 'Column' + IntToStr(i), IntToStr(gridGrupos.Columns.Items[i].Width));

  for i := 0 to gridPostulantes.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\' + DataSet.FieldByName('CodigoPlaza').AsString + '\gridPostulantes', 'Column' + IntToStr(i), IntToStr(gridPostulantes.Columns[i].Width));

end;

{
procedure TFrmPlazaRhuDX.gridDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gridDetalle.DataSource.DataSet.FieldByName('IdPersonalIMSS').IsNull and Not gridDetalle.DataSource.DataSet.FieldByName('IdPersonal').IsNull and (DataCol >= 2) then
  begin
    gridDetalle.Canvas.Font.Color := clGreen;
    gridDetalle.Canvas.Font.Style := [fsItalic];
  end;

  gridDetalle.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmPlazaRhuDX.gridDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (gridDetalle.SelCount > 0) then
    EditarDetalle(Sender);
end;
   }
procedure TFrmPlazaRhuDX.SetPropiedadesVisuales(DataSet: TDataSet);
var
  i: Integer;
begin
  if DataSet.RecordCount > 0 then
    Try
      Panel5.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Panel5\' + DataSet.FieldByName('CodigoPlaza').AsString, 'Width'));
    Except
      ;
    End;

  for i := 0 to gridGrupos.Columns.Count -1 do
    Try
      gridGrupos.Columns.Items[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + DataSet.FieldByName('CodigoPlaza').AsString + '\gridGrupos', 'Column' + IntToStr(i)));
    Except
      ;
    End;

  for i := 0 to cxgridDetalle.ColumnCount -1 do
    Try
      cxgridDetalle.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + DataSet.FieldByName('CodigoPlaza').AsString + '\gridDetalle', 'Column' + IntToStr(i)));
    Except
      ;
    End;

  for i := 0 to gridPostulantes.ColumnCount -1 do
    Try
      gridPostulantes.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + DataSet.FieldByName('CodigoPlaza').AsString + '\gridPostulantes', 'Column' + IntToStr(i)));
    Except
      ;
    End;

end;

procedure TFrmPlazaRhuDX.tmrAfterScrollTimer(Sender: TObject);
begin
  inc(CuentaTicks);

  if CuentaTicks >= 2 then
  begin
    tmrAfterScroll.Enabled := False;
    ProcedeAnalisis;

    //se crea una variable llamado  TituloCargo en  el frxRepDocumentos y a continuacion se le asigna  valor
    frxRepDocumentos.Variables['TituloCargo'] := '''' + (cdPlazaDetalleGpo.FieldByName('TituloCargo').AsVariant) + '''';
    frxRepDocumentos.ShowReport(True);
  end;

end;

procedure TFrmPlazaRhuDX.cdPlazaGeneralAfterScroll(DataSet: TDataSet);
begin
  // Cargar el detalle del grupo seleccionado
end;

procedure TFrmPlazaRhuDX.btnAnalisisClick(Sender: TObject);
begin
  try
    if not cdPLazaDetalleGpo.Active then
      raise InteligentException.CreateByCode(26,['Solicitud de Plaza Vacante.']);

    Application.CreateForm(TFrmAnalisisPostulantes, FrmAnalisisPostulantes);
    FrmAnalisisPostulantes.dsPlazaDetalleGpo.DataSet := cdPlazaDetalleGpo;
    FrmAnalisisPostulantes.dsPostulante.DataSet := cdPostulantes;
    FrmAnalisisPostulantes.ShowModal;
    FrmAnalisisPostulantes.Free;

  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmPlazaRhuDX.btnImprimirOficioClick(Sender: TObject);
var
  RegistroFalso: Boolean;
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      RegistroFalso := False;

      //Se filtra para  que  solo  salgan  los  firmantes  que  autorizan y dan el visto bueno.
      cdplazaGeneral.Filtered := False;
      cdPlazaGeneral.Filter :='IdPlaza = ' + dsPlazaDetalle.DataSet.FieldByName('IdPlaza').AsString;
      cdPlazaGeneral.Filtered := True;

      //se filtra por medio del IdPersonal para  que  solo  salga  la persona  seleccionada en el grid.
      cdMemoryPost.Filtered := False;
      if dsPlazaDetalle.DataSet.FieldByName('IdPersonal').AsString = '' then
      begin
        cdMemoryPost.Filter := 'IdPersonal = -5';

        cdMemoryPost.Append; //crear un  registro falso para que no marque error de dataset vacio.
        cdMemoryPost.FieldByName('IdPersonal').AsVariant := -5;
        cdMemoryPost.Post;
        RegistroFalso := True;
      end
      else
        cdMemoryPost.Filter := 'IdPersonal = ' + dsPlazaDetalle.DataSet.FieldByName('IdPersonal').AsString;

      cdMemoryPost.Filtered := True;

      Reporte := 'OficioContratacion.fr3'; //proceso Para imprimir el reporte
      CompReporte := frxReporteOficio;
      CompDatasetReporte := frxOficio;
      LocalImprimeReporte(cdMemoryPost,CxGridDetalle,'Oficio de Contratación')

    finally
      if RegistroFalso then
      begin
        cdMemoryPost.Delete;
      end;
      cdPlazaGeneral.Filtered := False;
      cdMemoryPost.Filtered := False;
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmPlazaRhuDX.btn_NuevaClick(Sender: TObject);
var
  mdPlazaDetalle: TClientDataSet;
  i: Integer;
  ConsecutivoGrupo: Integer;
begin
  Try
    Application.CreateForm(TFrmGrupoPlazas, FrmGrupoPlazas);
    if FrmGrupoPlazas.ShowModal = mrOk then
    begin
      Try
        mdPlazaDetalle := TClientDataSet.Create(Nil);

        if Not CrearConjunto(mdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Detalle de Plazas Vacantes']);

        if Not CargarDatosFiltrados(mdPlazaDetalle, 'IdPlazaDetalle', [-9]) then
          raise InteligentException.CreateByCode(16, ['Detalle de Plazas Vacantes']);

        mdPlazaDetalle.Open;

        // Encontrar el último consecutivo de grupo para asignar un nuevo consecutiv
        // a este grupo de puestos vacantes
        ConsecutivoGrupo := RegistrosMaximo('rhu_plazadetalle', 'IdGrupo', 'IdPlaza', [dsPlazaGeneral.DataSet.FieldByName('IdPlaza').AsInteger]);
        Inc(ConsecutivoGrupo);

        for i := 1 to FrmGrupoPlazas.edtCantidad.IntValue do
        begin
          with mdPlazaDetalle do
          begin
            Append;
            FieldByName('IdGrupo').AsInteger           := ConsecutivoGrupo;
            FieldByName('IdDepartamento').AsInteger    := dsPlazaGeneral.DataSet.FieldByName('IdDepartamento').AsInteger;
            FieldByName('IdPlazaDetalle').AsInteger    := 0;
            FieldByName('IdPlaza').AsInteger           := dsPlazaGeneral.DataSet.FieldByName('IdPlaza').AsInteger;
            FieldByName('CodigoPlazaDetalle').AsString := dsPlazaGeneral.DataSet.FieldByName('CodigoPlaza').AsString + '-' + IntToStr(i) + '/' + IntToStr(FrmGrupoPlazas.edtCantidad.IntValue);
            FieldByName('IdCargo').AsInteger           := ClientModule1.cdCargo.FieldByName('IdCargo').AsInteger;
            FieldByName('IdUsuario').AsInteger         := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
            FieldByName('Fecha').AsDateTime            := date;
            FieldByName('FechaRequerido').AsDateTime   := FrmGrupoPlazas.dtpFechaReq.Date;
            FieldByName('Activo').AsString             := 'Si';
            FieldByName('ExperienciaMinima').AsInteger := 0;
            FieldByName('UnidadExperiencia').AsString  := 'Mes';
            Post;
            ApplyUpdates(-1);
          end;
        end;

        if cdPlazaDetalleGpo.Active then
          cdPlazaDetalleGpo.Refresh
        else
          cdPlazaDetalleGpo.Open;

        if dsPlazaDetalle.Dataset.Active then
          dsPlazaDetalle.DataSet.Refresh
        else
          dsPlazaDetalle.Dataset.Open;

      Finally
        EliminarConjunto(mdPlazaDetalle);
        mdPlazaDetalle.Free;
      End;
    end;
  Except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure TFrmPlazaRhuDX.cdPlazaGeneralAfterInsert(DataSet: TDataSet);
begin
  CambiarTitulo('', 'INSERTANDO');
end;

procedure TFrmPlazaRhuDX.cdPlazaGeneralAfterPost(DataSet: TDataSet);
begin
  CambiarTitulo(DataSet.FieldByName('CodigoPlaza').AsString, '');
end;

procedure TFrmPlazaRhuDX.cdPlazaGeneralAfterRefresh(DataSet: TDataSet);
begin
  SetPropiedadesVisuales(DataSet);
  CambiarTitulo(DataSet.FieldByName('CodigoPlaza').AsString, '');
end;

procedure TFrmPlazaRhuDX.cdPlazaGeneralAfterEdit(DataSet: TDataSet);
begin
  CambiarTitulo(DataSet.FieldByName('CodigoPlaza').AsString, 'EDITANDO');
end;

procedure TFrmPlazaRhuDX.cdPlazaDetalleGpoAfterScroll(DataSet: TDataSet);
begin
  CuentaTicks := 0;

  // Filtrar los datos del conjunto de detalle
  if Assigned(cdPlazaDetalle) then
    if CdPlazaDetalle.RecordCount <> 0 then
    begin
      tmrAfterScroll.Enabled := True;

      cdPlazaDetalle.Filtered := False;
      cdPlazaDetalle.Filter := 'IdGrupo = ' + DataSet.FieldByName('IdGrupo').AsString;
      cdPlazaDetalle.Filtered := True;

      cdPostulantesxGrupoPlaza.Filtered := False;
      cdPostulantesxGrupoPlaza.Filter := 'IdGrupo = ' + DataSet.FieldByName('IdGrupo').AsString;
      cdPostulantesxGrupoPlaza.Filtered := True;

      cdDocumentos.Filtered := False;
      cdDocumentos.Filter := 'IdGrupo = ' + DataSet.FieldByName('IdGrupo').AsString;
      cdDocumentos.Filtered := True;

    end;
end;

procedure TFrmPlazaRhuDX.DxBarBtnAbrirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // verificar si ya se creó el conjunto de datos de organizacion
      if cdOrganizacion.ProviderName = '' then
      begin
        if not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['la estructura organizacional']);

        if Not CargarDatosFiltrados(cdOrganizacion, 'Padre', [Globales.Elemento('IdOrganizacion').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['la estructura organizacional', Globales.Elemento('IdOrganizacion').AsString, 'Id. Organizacion Padre']);

        if Not cdOrganizacion.Active then
          cdOrganizacion.Open;
      end;

      // Verificar si ya se creo el conjunto de datos del departamento
      if cdCatalogoPlazas.ProviderName = '' then
      begin
        if Not CrearConjunto(cdCatalogoPlazas, 'rhu_plazadetalle_organizado', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Plazas vacantes']);

        if Not CargarDatosFiltrados(cdCatalogoPlazas, 'Cuales', [1]) then
          raise InteligentException.CreateByCode(6, ['Plazas vacantes', 1, 'Cuales']);

        cdCatalogoPlazas.Open;
      end;

      Application.CreateForm(TFrmSeleccionarPlaza, FrmSeleccionarPlaza);
      FrmSeleccionarPlaza.dsOrganizacion.Dataset := cdOrganizacion;
      FrmSeleccionarPlaza.dsCatalogoPlazas.DataSet := cdCatalogoPlazas;
    Finally
      Screen.Cursor := Cursor;
    End;

    //FrmSeleccionarPlaza.Show;
    if FrmSeleccionarPlaza.ShowModal = mrOk then
      CrearConjuntosPartidas(cdCatalogoPlazas.FieldByName('CodigoPlaza').AsString);
  Except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure TFrmPlazaRhuDX.DxBarBtnCerrarClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    Cursor := Screen.Cursor;

    try
      Screen.Cursor := crAppStart;

      if Assigned(CdPLazaDetalle) then
      begin
        cdPlazaDetalle.Close;
        cdPlazaDetalle.Filtered := False;
      end;

      if Assigned(cdPlazaDetalleGpo) then
        cdPlazaDetalleGpo.Close;

      if Assigned(cdPlazaGeneral) then
        cdPlazaGeneral.Close;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: Exception do
      levantarExcepcion(e);
  end;
end;

procedure TFrmPlazaRhuDX.DxBarBtnNuevoClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      // Verificar si ya se ha creado el conjunto de datos
      if not Assigned(cdPlazaGeneral) then
        cdPlazaGeneral := TClientDataSet.Create(Self);

      // Verificar si ya se ha creado el conjunto de datos de Update
      if not Assigned(cdUptPlazaGeneral) then
        cdUptPlazaGeneral := TClientDataSet.Create(Self);

      if cdPlazaGeneral.ProviderName = '' then
      begin
        if not CrearConjunto(cdPlazaGeneral, 'rhu_plaza', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Catálogo general de plazas de trabajo']);

        dsPlazaGeneral.DataSet      := cdPlazaGeneral;
        cdPlazaGeneral.AfterClose   := cdPlazaGeneralAfterClose;
        cdPlazaGeneral.AfterOpen    := cdPlazaGeneralAfterOpen;
        cdPlazaGeneral.AfterInsert  := cdPlazaGeneralAfterInsert;
        cdPlazaGeneral.AfterPost    := cdPlazaGeneralAfterPost;
        cdPlazaGeneral.AfterRefresh := cdPlazaGeneralAfterRefresh;
        cdPlazaGeneral.AfterEdit    := cdPlazaGeneralAfterEdit;
        cdPlazaGeneral.BeforeClose  := GetPropiedadesVisuales;
        cdPlazaGeneral.AfterScroll  := cdPlazaGeneralAfterScroll;
      end;

      if cdUptPlazaGeneral.ProviderName = '' then
        if Not CrearConjunto(cdUptPlazaGeneral, 'rhu_plaza', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Catálogo general de Plazas de trabajo']);

      if Not CargarDatosFiltrados(cdUptPlazaGeneral, 'IdPlaza', [-9]) then
        raise InteligentException.CreateByCode(21, ['Plazas de trabajo']);

      cdUptPlazaGeneral.Open;
      cdUptPlazaGeneral.Append;
      cdUptPlazaGeneral.FieldByName('IdPlaza').AsInteger := 0;
      cdUptPlazaGeneral.FieldByName('CodigoPlaza').AsString := '';
      cdUptPlazaGeneral.FieldByName('FechaDocumento').AsDateTime := Int(Now());
      cdUptPlazaGeneral.FieldByName('Fecha').AsDateTime := Now();
      cdUptPlazaGeneral.FieldByName('IdUsuario').AsInteger := Globales.Elemento('Usuario').AsInteger;
      cdUptPlazaGeneral.FieldByName('Activo').AsString := '';
    Finally
      Screen.Cursor := Cursor;
    End;

    Application.CreateForm(TFrmPlazaGeneral, FrmPlazaGeneral);
    FrmPlazaGeneral.dsUptPlazaGeneral.DataSet := cdUptPlazaGeneral;
    if FrmPlazaGeneral.ShowModal = mrOk then
    begin
      Cursor := Screen.Cursor;
      //CodigoPlaza := FrmPlazaGeneral.LastCode;

      Try
        Screen.Cursor := crAppStart;

        if Not CargarDatosFiltrados(cdPlazaGeneral, 'IdPlaza', [FrmPlazaGeneral.LastId]) then
          raise InteligentException.CreateByCode(6, ['Plazas vacantes', FrmPlazaGeneral.LastId, 'Id. Plaza']);

        if Assigned(cdPLazaGeneral) then
          cdPlazaGeneral.Close;

        cdPlazaGeneral.Open;

        CrearConjuntosPartidas(FrmPlazaGeneral.LastCode); // Crear los conjuntos de datos de las partidas
      Finally
        Screen.Cursor := Cursor;
      End;
    end;
  Except
    on e:Exception do
    begin
      LevantarExcepcion(e);
      cdPlazaGeneral.Cancel;
    end;
  End;
end;

procedure TFrmPlazaRhuDX.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if Assigned(cdPlazaGeneral) then
    EliminarConjunto(cdPlazaGeneral);

  if Assigned(cdUptPlazaGeneral) then
    EliminarConjunto(cdUptPlazaGeneral);

  if Assigned(cdPlazaDetalle) then
    EliminarConjunto(cdPlazaDetalle);

  if Assigned(cdPostulantesxGrupoPlaza) then
    EliminarConjunto(cdPostulantesxGrupoPlaza);

  if Assigned(cdPlazaDetalleGpo) then
    EliminarConjunto(cdPlazaDetalleGpo);

  if Assigned(cdUptPlazaGeneral) then
    EliminarConjunto(cdUptPlazaDetalle);

  if Assigned(cdDocumentos) then
    EliminarConjunto(cdDocumentos);

  if Assigned(cdPostulantes) then
    EliminarConjunto(cdPostulantes);

  if Assigned(cdMemoryPost) then
    EliminarConjunto(cdMemoryPost);

  EliminarConjunto([cdOrganizacion, cdCatalogoPlazas]);

  LiberarVentana(Self, Action);
end;

procedure TFrmPlazaRhuDX.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas(Self);
  OldCaption := Self.Caption;
end;

procedure TFrmPlazaRhuDX.FormShow(Sender: TObject);
begin
  if DBText2.Caption = '' then
  begin
    lblNombreSolicitante.Visible := true;
    LblNombreSolicitante.Top     := 35;
    LblNombreSolicitante.Left    := 101;

    lblPuesto.Visible := true;
    lblPuesto.Top     := 50;
    lblPuesto.Left    := 47;

    lblDepartamento.Visible := true;
    lblDepartamento.Top     := 65;
    lblDepartamento.Left    := 80;
  end
  else
  begin
   lblNombreSolicitante.Visible := false;
   lblPuesto.Visible            := false;
   lblDepartamento.Visible      := False;
  end;

  //ClientModule1.ImprimeReporte('Visualizacion_Documentos_por_Plaza.fr3', frxRepDocumentos, frxPrevDocumentos);
end;

procedure TFrmPlazaRhuDX.CrearConjuntosPartidas(CodigoPlaza: String);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    // Verificar si ya se ha creado el conjunto de datos
    if not Assigned(cdPlazaGeneral) then
    begin
      cdPlazaGeneral := TClientDataSet.Create(Self);

      cdPlazaGeneral.AfterClose   := cdPlazaGeneralAfterClose;
      cdPlazaGeneral.AfterOpen    := cdPlazaGeneralAfterOpen;
      cdPlazaGeneral.AfterInsert  := cdPlazaGeneralAfterInsert;
      cdPlazaGeneral.AfterPost    := cdPlazaGeneralAfterPost;
      cdPlazaGeneral.AfterRefresh := cdPlazaGeneralAfterRefresh;
      cdPlazaGeneral.AfterEdit    := cdPlazaGeneralAfterEdit;
      cdPlazaGeneral.BeforeClose  := GetPropiedadesVisuales;
      cdPlazaGeneral.AfterScroll  := cdPlazaGeneralAfterScroll;
    end;

    if cdPlazaGeneral.ProviderName = '' then
      if not CrearConjunto(cdPlazaGeneral, 'rhu_plaza', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Catálogo general de plazas de trabajo']);

    if Not CargarDatosFiltrados(cdPlazaGeneral, 'CodigoPlaza', [CodigoPlaza]) then
      raise InteligentException.CreateByCode(6, ['Catalogo general de Plazas de Trabajo', CodigoPlaza, 'Codigo de Solicitud de Plazas']);

    if Assigned(cdPlazaGeneral) then
      cdPlazaGeneral.Close;

    cdPlazaGeneral.Open;

    //Reporte de oficio de contratacion.
    frxPlazaGeneral.DataSet := cdPlazaGeneral;

    // Datos de las partidas individuales
    if Not Assigned(cdPlazaDetalle) then
      cdPlazaDetalle := TClientDataSet.Create(Self);

    if cdPlazaDetalle.ProviderName = '' then
      if not CrearConjunto(cdPlazaDetalle, 'rhu_plazadetalle_organizado', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['partidas de solicitud de Plazas de Puestos vacantes']);

    if cdPlazaDetalle.Filtered = True then
      cdPlazaDetalle.Filtered := False;

    if Not CargarDatosFiltrados(cdPlazaDetalle, 'IdPlaza,SeparaGrupo,Cuales', [cdPlazaGeneral.FieldByName('IdPlaza').AsInteger, 'Si', 2]) then
      raise InteligentException.CreateByCode(6, ['partidas de solicitud de Plazas de Puestos de vacantes']);

    if cdPlazaDetalle.Active then
      cdPlazaDetalle.Refresh
    else
      cdPlazaDetalle.Open;

    //Lo siguiente  es para  imprimir  el  oficio
    frxPlazaDetalle.DataSet := cdPlazaDetalle;

    // Datos de los documentos por plaza
    if Not Assigned(cdDocumentos) then
      cdDocumentos := TClientDataSet.Create(Self);

    if cdDocumentos.ProviderName = '' then
      if Not CrearConjunto(cdDocumentos, 'rhu_documentos_por_plaza', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos por Solicitu de Plazas']);

    cdDocumentos.Filtered := False;

    if Not CargarDatosFiltrados(cdDocumentos, 'IdPlaza', [cdPlazaGeneral.FieldByName('IdPlaza').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Documentos por Solicitud de Plazas', cdPlazaGeneral.FieldByName('IdPlaza').AsInteger, 'Id.Plaza']);

    if cdDocumentos.Active then
      cdDocumentos.Refresh
    else
      cdDocumentos.Open;

    frxDSDocumentos.DataSet := cdDocumentos;

    // Datos de los postulantes
    if Not Assigned(cdPostulantesxGrupoPlaza) then
      cdPostulantesxGrupoPlaza := TClientDataSet.Create(Self);

    if cdPostulantesxGrupoPlaza.ProviderName = '' then
      if Not CrearConjunto(cdPostulantesxGrupoPlaza, 'rhu_PostulantesxGrupoPlaza', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Postulantes de Puestos Vacantes']);

    cdPostulantesxGrupoPlaza.Filtered := False;

    if Not CargarDatosFiltrados(cdPostulantesxGrupoPlaza, 'IdPlaza', [cdPlazaGeneral.FieldByName('IdPlaza').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Postulantes de Puestos Vacantes', cdPlazaGeneral.FieldByName('IdPlaza').AsInteger, 'Id. Plaza']);

    if cdPostulantesxGrupoPlaza.Active then
      cdPostulantesxGrupoPlaza.Refresh
    else
      cdPostulantesxGrupoPlaza.Open;

    // Datos de los grupos de partidas
    if  cdPlazaDetalleGpo.ProviderName = '' then
      if not CrearConjunto(cdPlazaDetalleGpo, 'rhu_plazadetalle_organizado', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['partidas de solicitud de Plazas de Puestos vacantes']);

    if Not CargarDatosFiltrados(cdPlazaDetalleGpo, 'IdPlaza,SeparaGrupo,Cuales', [cdPlazaGeneral.FieldByName('IdPlaza').AsInteger, 'Si', 1]) then
      raise InteligentException.CreateByCode(6, ['partidas de solicitud de Plazas de Puestos de vacantes']);

    if cdPlazaDetalleGpo.Active then
      cdPlazaDetalleGpo.Refresh
    else
      cdPlazaDetalleGpo.Open;

    //dsPlazaGeneral.DataSet := cdPlazaGeneral;

    dsPlazaDetalle.DataSet := cdPlazaDetalle;
    dsPostulantesxGrupoPlaza.DataSet := cdPostulantesxGrupoPlaza;
    dsPlazaGeneral.DataSet := cdPlazaGeneral;

    pnlPlaza.Visible := cdPlazaGeneral.RecordCount = 1;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmPlazaRhuDX.cxGridDetalleCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxgridDetalle.DataController.GetSelectedCount > 0 then
    EditarDetalle(Sender)
end;

procedure TFrmPlazaRhuDX.cxGridDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (cxGridDetalle.DataController.GetSelectedCount > 0) then
    EditarDetalle(Sender);
end;

procedure TFrmPlazaRhuDX.EditarDetalle(Sender: TObject);
begin
  Application.CreateForm(TFrmEditarDetalle, FrmEditarDetalle);
  FrmEditarDetalle.gridOriginal := cxgridDetalle;
  if FrmEditarDetalle.ShowModal = mrOk then
  begin
    dsPlazaDetalle.DataSet.Refresh;
  end;
end;

{
procedure TFrmPlazaRhuDX.ProcedeAnalisis;
var
  Cursor: TCursor;
begin

  Cursor := Screen.Cursor;
  Try
    Try
      Screen.Cursor := crAppStart;

      if cdPostulantes.ProviderName = '' then
        ProcedimientoAlmacenado(cdPostulantes, 'Res_AnalisisPostulantes',
          'pIdPlaza,pIdGrupo,pCuales,pEstado,pModo',
          [cdPlazaDetalleGpo.FieldByName('IdPlaza').AsInteger,
           cdPlazaDetalleGpo.FieldByName('IdGrupo').AsInteger,
           'Todos', -1, 3]);

      cdPostulantes.First;
      sgPostulante.RowCount := cdPostulantes.RecordCount +1;
      while Not cdPostulantes.Eof do
      begin
        sgPostulante.Cells[0, cdPostulantes.RecNo] := cdPostulantes.FieldByName('NombreCompleto').AsString;

        cdPostulantes.Next;
      end;
    finally
      NecesitaAnalizar := False;
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;

end;
}

procedure TFrmPlazaRhuDX.ProcedeAnalisis;
var
  Cursor: TCursor;
  i: Integer;
  CampoNombre: String;
begin
  Cursor := Screen.Cursor;
  Try
    Try
      Screen.Cursor := crAppStart;
      cdMemoryPost.DisableControls;
      cdMemoryPost.Filtered := False;

      if (Not cdMemoryPost.Active) or (Not cdMemoryPost.Locate('IdGrupo', cdPlazaDetalleGpo.FieldByName('IdGrupo').AsInteger, [])) then
      begin
        if cdPostulantes.ProviderName = '' then
          ProcedimientoAlmacenado(cdPostulantes, 'Res_AnalisisPostulantes',
            'pIdPlaza,pIdGrupo,pCuales,pEstado,pModo,pImagen,pListaPersonal,pModoLista',
            [cdPlazaDetalleGpo.FieldByName('IdPlaza').AsInteger,
            cdPlazaDetalleGpo.FieldByName('IdGrupo').AsInteger,
            'Todos', -1, 1, 'Si','No','No']);

        // Crear estructura de datos en nuevo dataset
        if cdMemoryPost.Fields.Count = 0 then
        begin
          Try
            for i := 0 to cdPostulantes.Fields.Count -1 do
              cdMemoryPost.FieldDefs.Add(cdPostulantes.Fields[i].FieldName, cdPostulantes.Fields[i].DataType, cdPostulantes.Fields[i].Size, False);

            cdMemoryPost.FieldDefs.Add('IdGrupo',ftInteger);
            cdMemoryPost.CreateDataSet;
            cdMemoryPost.Open;
          Except
            cdMemoryPost.FieldDefs.Clear;
            raise;
          End;
        end;

        // Vaciar los nuevos datos hacia el dataset de memoria
        cdPostulantes.DisableControls;
        try
          cdPostulantes.First;
          while not cdPostulantes.Eof do
          begin
            cdMemoryPost.Append;    // Agrego nuevo regsitro

            // Copio los datos de todas las columnas
            for i := 0 to cdPostulantes.Fields.Count -1 do
            begin
              CampoNombre := cdPostulantes.Fields[i].FieldName;
              cdMemoryPost.FieldByName(CampoNombre).AsVariant := cdPostulantes.FieldByName(CampoNombre).AsVariant;
            end;
            cdMemoryPost.FieldByName('IdGrupo').AsVariant := cdPlazaDetalleGpo.FieldByName('IdGrupo').AsVariant;

            //Terminado de asignar todas las columnas, grabo el pedo
            cdMemoryPost.Post;
            cdPostulantes.Next;
          end;
          cdPostulantes.First;

          // Verificar si se registraron documentos de esta persona
          if cdPostulantes.RecordCount = 0 then
          begin
            // Meter un registro fantasma para que no quede vacio
            cdMemoryPost.Append;
            cdMemoryPost.FieldByName('IdGrupo').AsVariant := cdPlazaDetalleGpo.FieldByName('IdGrupo').AsVariant;
            cdMemoryPost.Post;
          end;
        finally
          cdPostulantes.EnableControls;
        end;
      end;

      //Para el reporte.
      //frxOficio.DataSet := cdMemoryPost;
      cdMemoryPost.Filter := 'IdGrupo = ' + cdPlazaDetalleGpo.FieldByName('IdGrupo').AsString;
    finally
      if Assigned(cdPostulantes) then
      begin
        EliminarConjunto(cdPostulantes);
        cdPostulantes.ProviderName := '';
      end;

      cdMemoryPost.Filtered := True;
      cdMemoryPost.EnableControls;
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;

end;

procedure TFrmPlazaRhuDX.EditarDetalle1Click(Sender: TObject);
begin
  if cxGridDetalle.DataController.GetSelectedCount > 0 then
    EditarDetalle(Sender);

end;
end.
