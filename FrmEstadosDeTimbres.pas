unit FrmEstadosDeTimbres;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, AdvGlowButton, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Unit2,
  Menus, cxButtons, DBClient, ClientModuleUnit1, cxContainer, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox,
  cxLabel, cxRadioGroup, frxClass, frxDBSet, dxSkinsdxBarPainter, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxRibbon, dxBar,
  cxFontNameComboBox, cxBarEditItem, UInteliDialog, cxGridExportLink, shellApi,
  cxDBEdit,rhh_genericclasses, cxImage, DBTables, FolderDialog, jpeg;

type
  TTFrmEstadosDeTimbres = class(TForm)
    panelInferior: TPanel;
    btnCerrar: TcxButton;
    btnReporte1: TcxButton;
    cdFacturasEmitidas: TClientDataSet;
    cdFacturasCanceladas: TClientDataSet;
    dsFacturasEmitidas: TDataSource;
    dsFacturasCanceladas: TDataSource;
    cxGBOpcionesBusqueda: TcxGroupBox;
    dtpInicio: TcxDateEdit;
    dtpTermino: TcxDateEdit;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    rbTodas: TcxRadioButton;
    rbPorFechas: TcxRadioButton;
    cxGBResumenTimbre: TcxGroupBox;
    gridFacturasCanceladas: TcxGrid;
    cxgrdbtblvwGrid1DBTableView11: TcxGridDBTableView;
    UUID2: TcxGridDBColumn;
    emisor2: TcxGridDBColumn;
    Fecha2: TcxGridDBColumn;
    cxgrdlvlGrid1Level11: TcxGridLevel;
    cxlbl4: TcxLabel;
    cxlbl3: TcxLabel;
    CxBtnImprimir: TcxButton;
    FrxCdEmitidos: TfrxDBDataset;
    FrxCdCancelados: TfrxDBDataset;
    FrxReportTimbres: TfrxReport;
    FrxCdDatosEmpresa: TfrxDBDataset;
    CdDatosEmpresa: TClientDataSet;
    CxGridFacturasEmitidas: TcxGrid;
    CxDbGridTimbres: TcxGridDBTableView;
    CxColumnUUID: TcxGridDBColumn;
    emisor: TcxGridDBColumn;
    Fecha: TcxGridDBColumn;
    CxColumnEmpleado: TcxGridDBColumn;
    CxColumnNSS: TcxGridDBColumn;
    CxColumnrfc: TcxGridDBColumn;
    CxColumnPercepcion: TcxGridDBColumn;
    CxColumnDeduccion: TcxGridDBColumn;
    CxColumnNeto: TcxGridDBColumn;
    CxColumnAnio: TcxGridDBColumn;
    CxColumnEstadoTimbre: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    DxManager1: TdxBarManager;
    dxTabTimbres: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxbrOpciones: TdxBar;
    dxBtnMostrarTodos: TdxBarLargeButton;
    dxBtnFiltrar: TdxBarLargeButton;
    CxDateInicio: TcxBarEditItem;
    CxDateTermino: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxbrExportar: TdxBar;
    dxBtnExportarExcel: TdxBarLargeButton;
    dxBtnExportarPDF: TdxBarLargeButton;
    dxBtnActualizar: TdxBarLargeButton;
    dlgSave1: TSaveDialog;
    CxColumnListaRaya: TcxGridDBColumn;
    CxDbTextActivos: TcxDBTextEdit;
    CxDbTextCancelados: TcxDBTextEdit;
    CxColumnCurp: TcxGridDBColumn;
    CxColumnGravable: TcxGridDBColumn;
    CxColumnISR: TcxGridDBColumn;
    CxColumnIMSS: TcxGridDBColumn;
    CxColumnInfonavit: TcxGridDBColumn;
    CxColumnPension: TcxGridDBColumn;
    CxColumnSubsidio: TcxGridDBColumn;
    CxColumnSVI: TcxGridDBColumn;
    btnImprimir: TdxBarLargeButton;
    dxBtnExtraXML: TdxBarLargeButton;
    dxBtnExtraerQR: TdxBarLargeButton;
    FolderDlg1: TFolderDialog;
    CxColumnIdTimbre: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure opcionPorDefecto;
    procedure habilitarFechas;
    procedure rbTodasClick(Sender: TObject);
    procedure rbPorFechasClick(Sender: TObject);

    procedure mostrarTodos; //Trae todos los timbres
    procedure facturasEmitidas;  //Trae las facturas Emitidas o Activas
    procedure facturasCanceladas;  //Trae las facturas Canceladas o Inactivas
    procedure FormCreate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnReporte1Click(Sender: TObject);
    procedure mostrarPorFechas; //Trae las facturas por fechas
    procedure facturasEmitidasPorFechas; //Trae las facturas Emitidas por fecha
    procedure facturasCanceladasPorFechas;
    procedure CxBtnImprimirClick(Sender: TObject);
    procedure dxBtnMostrarTodosClick(Sender: TObject);
    procedure dxBtnActualizarClick(Sender: TObject);
    procedure dxBtnFiltrarClick(Sender: TObject);
    procedure dxBtnExportarExcelClick(Sender: TObject);
    procedure dxBtnExportarPDFClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CxDbGridTimbresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure dxBtnExtraXMLClick(Sender: TObject);
    procedure dxBtnExtraerQRClick(Sender: TObject);  //Trae las facturas caceladas por fechas
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFrmEstadosDeTimbres: TTFrmEstadosDeTimbres;

implementation

{$R *.dfm}

procedure TTFrmEstadosDeTimbres.btnCerrarClick(Sender: TObject);
begin  //Salir
  Close;
end;

procedure TTFrmEstadosDeTimbres.btnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'ResumenCFDI.fr3';
      CompReporte := FrxReportTimbres;
      CompDataSetReporte := FrxcdEmitidos;

      LocalImprimeReporte(cdFacturasEmitidas, CxDbGridTimbres, 'Tabla de Facturas Emitidas.');
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.', e.message, mtInformation, [mbOK], 0)
    end;
  end;



end;

procedure TTFrmEstadosDeTimbres.btnReporte1Click(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    //Si el radio button seleccionado es Todos entonces que se muestren todos los timbres
    if rbTodas.Checked then
    begin
      mostrarTodos;
    end else if rbPorFechas.Checked then
    begin
      mostrarPorFechas;
    end;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TTFrmEstadosDeTimbres.CxBtnImprimirClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('ResumenCFDI.fr3', FrxReportTimbres);
end;

procedure TTFrmEstadosDeTimbres.CxDbGridTimbresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F8) and (InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea guardar esta configuración', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then //Fuck this shit
    SaveConfigCxGrid(CxGridFacturasEmitidas, self.Name);

  if (Key = Vk_F7) and (InteliDialog.ShowModal('Confirmación', '¿Estás seguro que deseas restaurar la configuración actual de la Tabla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    RestoreToDefaultCxGrid(CxGridFacturasEmitidas, Self.Name);
end;

procedure TTFrmEstadosDeTimbres.dxBtnActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if cdFacturasEmitidas.Active then
        cdFacturasEmitidas.Refresh
      else
        cdFacturasEmitidas.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0)
  end;
end;

procedure TTFrmEstadosDeTimbres.dxBtnExportarExcelClick(Sender: TObject);
var
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, CxGridFacturasEmitidas);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TTFrmEstadosDeTimbres.dxBtnExportarPDFClick(Sender: TObject);
begin
  ClientModule1.ImprimeReporte('ResumenCFDI.fr3', FrxReportTimbres);
end;

procedure TTFrmEstadosDeTimbres.dxBtnExtraerQRClick(Sender: TObject);
var
  Blob: TStream;
  fs: TFileStream;
  NombrePersonal: String;
  JPG: TJpegImage;
  i: Integer;
begin
  i := 0;
  if FolderDlg1.Execute then
  begin
    for i := 0 to CxDbGridTimbres.Controller.SelectedRowCount - 1 do
    begin
      try
        NombrePersonal := VarToStr(CxDbGridTimbres.Controller.SelectedRows[i].Values[CxColumnEmpleado.Index]);
        NombrePersonal := StringReplace(NombrePersonal, ''#9#9'', '', [rfReplaceAll, rfIgnoreCase]);
        JPG := TJpegImage.Create;
        try
          if cdFacturasEmitidas.Locate('IdTimbre', VarToStr(CxDbGridTimbres.Controller.SelectedRows[i].Values[CxColumnIdTimbre.Index]), []) then
          begin
            cdFacturasEmitidas.Edit;
            Blob := cdFacturasEmitidas.CreateBlobStream(cdFacturasEmitidas.FieldByName('QR'), bmRead);
            try
              JPG.LoadFromStream(Blob);

              JPG.SaveToFile(FolderDlg1.Directory + '\' + NombrePersonal + '.jpg');
            finally
              Blob.Free;
              cdFacturasEmitidas.cancel;
            end;
          end;
        finally
          JPG.Free;
        end;
      finally

      end;
    end;
  end;
end;

procedure TTFrmEstadosDeTimbres.dxBtnExtraXMLClick(Sender: TObject);
var
  i: integer;
  archivoTXT: TextFile;
  NombrePersonal: String;
begin
  i := 0;
  if FolderDlg1.Execute then
  begin
    for i := 0 to CxDbGridTimbres.Controller.SelectedRowCount - 1 do
    begin
      try
        NombrePersonal := VarToStr(CxDbGridTimbres.Controller.SelectedRows[i].Values[CxColumnEmpleado.Index]);
        NombrePersonal := StringReplace(NombrePersonal, ''#9#9'', '', [rfReplaceAll, rfIgnoreCase] );
        if cdFacturasEmitidas.Locate('IdTimbre', VarToStr(CxDbGridTimbres.Controller.SelectedRows[i].Values[CxColumnIdTimbre.Index]), []) then
        begin
          try
            AssignFile(archivoTxt, FolderDlg1.directory + '\' + NombrePersonal +'.xml');
            Rewrite(archivoTXT);
            Writeln(archivoTXT, cdFacturasEmitidas.FieldByName('Timbre').AsString);
          finally
             Closefile(archivoTXT);
          end;
        end;
      finally

      end;
    end;
    ShellExecute(0, 'explore', nil, nil,pchar(FolderDlg1.directory), SW_SHOW);
  end;
end;

procedure TTFrmEstadosDeTimbres.dxBtnFiltrarClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    //Si el radio button seleccionado es Todos entonces que se muestren todos los timbres
    mostrarPorFechas;

  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TTFrmEstadosDeTimbres.dxBtnMostrarTodosClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := CrAppStart;
    mostrarTodos;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TTFrmEstadosDeTimbres.facturasCanceladas;
begin
  //Muestra en la tabla las facturas canceladas
  if not CargarDatosFiltrados(cdFacturasCanceladas, 'activo,Fechai,Fechaf', ['NO', -1, -1]) then
        raise InteligentException.CreateByCode(6, ['Estado de Timbres', 'activo', '-1']);

  if cdFacturasCanceladas.Active then
    cdFacturasCanceladas.Refresh
  else
  begin
    cdFacturasCanceladas.Fields.Clear;
    cdFacturasCanceladas.Open;
  end;
end;

procedure TTFrmEstadosDeTimbres.facturasCanceladasPorFechas;
begin
  //Trae los timbres activos por fechas
   if not CargarDatosFiltrados(cdFacturasCanceladas, 'activo,Fechai,Fechaf', ['NO', ClientModule1.DatetoStrSql(dtpInicio.Date), ClientModule1.DatetoStrSql(dtpTermino.Date)]) then
        raise InteligentException.CreateByCode(6, ['Estado de Timbres', 'activo', '-1']);

      if cdFacturasCanceladas.Active then
        cdFacturasCanceladas.Refresh
      else
      begin
        cdFacturasCanceladas.Fields.Clear;
        cdFacturasCanceladas.Open;
      end;
end;

procedure TTFrmEstadosDeTimbres.facturasEmitidas;
begin
  if not CargarDatosFiltrados(cdFacturasEmitidas, 'Fechai,Fechaf', [-1, -1]) then
    raise InteligentException.CreateByCode(6, ['Estado de Timbres', 'activo', '-1']);

  if cdFacturasEmitidas.Active then
    cdFacturasEmitidas.Refresh
  else
  begin
    cdFacturasEmitidas.Fields.Clear;
    cdFacturasEmitidas.Open;

  end;

  //Muestra las facturas emitidas o con Activo = SI
//  if not CargarDatosFiltrados(cdFacturasEmitidas, 'activo,Fechai,Fechaf', ['SI', -1, -1]) then
//        raise InteligentException.CreateByCode(6, ['Estado de Timbres', 'activo', '-1']);
//
//      if cdFacturasEmitidas.Active then
//        cdFacturasEmitidas.Refresh
//      else
//      begin
//        cdFacturasEmitidas.Fields.Clear;
//        cdFacturasEmitidas.Open;
//      end;

end;

procedure TTFrmEstadosDeTimbres.facturasEmitidasPorFechas;
begin
  //Trae los timbres activos por fechas
  if not CargarDatosFiltrados(cdFacturasEmitidas, 'activo,Fechai,Fechaf', ['-1', ClientModule1.DatetoStrSql(CxDateInicio.EditValue), ClientModule1.DatetoStrSql(CxDateTermino.EditValue)]) then
    raise InteligentException.CreateByCode(6, ['Estado de Timbres', 'activo', '-1']);

  if cdFacturasEmitidas.Active then
    cdFacturasEmitidas.Refresh
  else
  begin
    cdFacturasEmitidas.Fields.Clear;
    cdFacturasEmitidas.Open;
  end;
end;

procedure TTFrmEstadosDeTimbres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdFacturasEmitidas.ProviderName <> '' then
    EliminarConjunto(cdFacturasEmitidas);
  Action := Cafree;
end;

procedure TTFrmEstadosDeTimbres.FormCreate(Sender: TObject);
begin
  //Crear conjunto de cdFacturasEmitidas
  if Not CrearConjunto(cdFacturasEmitidas, 'nom_timbrado', ccSelect) then
      raise InteligentException.CreateByCode(5, ['nom_timbrado']);

  //Crear conjunto de cdFacturasCanceledas
  if Not CrearConjunto(cdFacturasCanceladas, 'nom_timbrado', ccSelect) then
      raise InteligentException.CreateByCode(5, ['nom_timbrado']);
end;

procedure TTFrmEstadosDeTimbres.FormShow(Sender: TObject);
begin
  //Debe de ponerse el Radio Button Todos por defecto
  ReadConfigCxGrid(CxGridFacturasEmitidas, Self.Name);
  EncabezadoReportes(CdDatosEmpresa, 18);
  //opcionPorDefecto;
  //mostrarTodos;
end;

procedure TTFrmEstadosDeTimbres.habilitarFechas;
begin
  dtpInicio.Enabled := true;
  dtpTermino.Enabled := true;
end;

procedure TTFrmEstadosDeTimbres.mostrarPorFechas;
begin
  //Llama a estas funciones para que se muestren los datos por fechas
  facturasEmitidasPorFechas;
  //facturasCanceladasPorFechas;
end;

procedure TTFrmEstadosDeTimbres.mostrarTodos;
begin
  //Muestra los datos de todas los timbres en la ventana
  facturasEmitidas;
  //facturasCanceladas;
end;

procedure TTFrmEstadosDeTimbres.opcionPorDefecto;
begin
  //Coloca el radiobutton todos seleccionado por defecto, de igual manera desabilita las fechas de inicio y termino
  rbTodas.SetFocus;
  dtpInicio.Enabled := false;
  dtpTermino.Enabled := false;

end;

procedure TTFrmEstadosDeTimbres.rbPorFechasClick(Sender: TObject);
begin
  //Si se selecciona el radio button Por fechas, entonces que habilte las fechas de inicio y termino
  habilitarFechas;
end;

procedure TTFrmEstadosDeTimbres.rbTodasClick(Sender: TObject);
begin
  //Si se selecciona el radio button todos, entonces deshabilitar las fechas de inicio y termino
  opcionPorDefecto;

end;

end.
