unit UTFrmConcentradoNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, Mask, JvExMask, JvToolEdit,
  ClientModuleUnit1, UInteliDialog, DB, DBClient, ComObj, ExportaExcel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxLabel, DateUtils, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  dxSkinsdxBarPainter, cxRadioGroup, dxBar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, dxSkinsForm, dxGDIPlusClasses, cxImage, cxButtons, Menus;

type
  TFrmConcentradoNomina = class(TForm)
    cdTipoNomina: TClientDataSet;
    dlgSaveExcel: TSaveDialog;
    pnlRangofechas: TPanel;
    pnlBotonera: TPanel;
    pnlInformacionAdicional: TPanel;
    JvLabel1: TJvLabel;
    cbTipoNomina: TComboBox;
    CxLblNombre: TcxLabel;
    DtedtInicio: TJvDateEdit;
    DtedtTermino: TJvDateEdit;
    btn3: TcxButton;
    btn2: TcxButton;
    PnlListaNominas: TPanel;
    CxGridNominas: TcxGridDBTableView;
    CxLevelDatos: TcxGridLevel;
    CxGridDNominas: TcxGrid;
    DxBManager1: TdxBarManager;
    cxRbtnNominas: TcxRadioButton;
    cxRbtnFechas: TcxRadioButton;
    CxColumnIdNomina: TcxGridDBColumn;
    CxColumnNomina: TcxGridDBColumn;
    CxColumnInicio: TcxGridDBColumn;
    CxColumnTermino: TcxGridDBColumn;
    CdNominas: TClientDataSet;
    dsNominas: TDataSource;
    DxSkinCtrl1: TdxSkinController;
    CxImgeXCEL: TcxImage;
    CxLbl1: TcxLabel;
    Lbl1: TJvLabel;
    JvLabel2: TJvLabel;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtedtTerminoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTipoNominaChange(Sender: TObject);
    procedure DtedtInicioChange(Sender: TObject);
    procedure cxRbtnFechasClick(Sender: TObject);
    procedure cxRbtnNominasClick(Sender: TObject);
  private
    procedure SalariosAcumulados(Excel: Variant; FechaInicio,
      FechaTermino: TDate);
  public
    Individual: Boolean;
    IdPersonal: Integer;
    Nombre: string;
    ColIniSum: Integer;
    { Public declarations }
  end;

var
  FrmConcentradoNomina: TFrmConcentradoNomina;

implementation

{$R *.dfm}

procedure TFrmConcentradoNomina.btn3Click(Sender: TObject);
var
  Cursor: TCursor;
  Excel: Variant;
begin
  Try
    if (cxRbtnNominas.Checked) and (CxGridNominas.Controller.SelectedRowCount = 0) then
      raise InteligentException.CreateByCode(24, ['Debe seleccionar al menos un registro de Nómina.']);

    if dlgSaveExcel.Execute then
    begin
      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        Excel := CreateOleObject('Excel.Application');

        try
          Excel.Visible:= true;
          Excel.DisplayAlerts := false;
          Excel.ScreenUpdating:=false;
          SalariosAcumulados(Excel,DtedtInicio.Date,DtedtTermino.Date);
        finally
          Excel.DisplayAlerts :=True;
          Excel.ScreenUpdating:=true;
        end;

        try
          Excel.ActiveWorkBook.SaveAs(dlgSaveExcel.FileName + '.xls');
          InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + dlgSaveExcel.FileName + '.xls', mtinformation, [mbOK], 0 );
        except
          on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
        end;
      Finally
        Screen.Cursor := Cursor;
      End;
    end;
  Except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
  End;
end;

procedure TFrmConcentradoNomina.cbTipoNominaChange(Sender: TObject);
var
  LocIdTipoNomina: Integer;
begin
  LocIdTipoNomina := Integer(cbTipoNomina.Items.Objects[cbTipoNomina.ItemIndex]);
  if cdTipoNomina.Locate('IdTipoNomina', Integer(cbTipoNomina.Items.Objects[cbTipoNomina.ItemIndex]), []) then
  begin
    DtedtTermino.Date := IncDay(DtedtInicio.Date, cdTipoNomina.FieldByName('DiasTrabajados').asInteger);

    if cxRbtnNominas.Checked then
    begin
      if not CargarDatosFiltrados(CdNominas, 'IdTipoNomina', [LocIdTipoNomina]) then
        raise InteligentException.CreateByCode(6, ['IdTipoNomina', 'nom_nomina', VarToStr(LocIdTipoNomina)]);

      if cdNominas.Active then
        CdNominas.Refresh
      else
        CdNominas.Open;
    end;
  end;
end;

procedure TFrmConcentradoNomina.cxRbtnFechasClick(Sender: TObject);
begin
//  pnlListaNominas.Enabled := Not cxRbtnFechas.Checked;
//  pnlRangofechas.Enabled := cxRbtnFechas.Checked;
end;

procedure TFrmConcentradoNomina.cxRbtnNominasClick(Sender: TObject);
begin
//  pnlListaNominas.Enabled := cxRbtnFechas.Checked;
//  pnlListaNominas.Enabled := Not cxRbtnFechas.Checked;
end;

procedure TFrmConcentradoNomina.DtedtInicioChange(Sender: TObject);
begin
  DtedtTermino.Date := IncDay(DtedtInicio.Date, cdTipoNomina.FieldByName('DiasTrabajados').asInteger);
end;

procedure TFrmConcentradoNomina.DtedtTerminoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
   btn3.Click;
end;

procedure TFrmConcentradoNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdTipoNomina);
end;

procedure TFrmConcentradoNomina.FormCreate(Sender: TObject);
begin
  Try
    Individual := False;

    if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);
    if Not CargarDatosFiltrados(cdTipoNomina, 'TipoCalculo', ['PERIODICA']) then
      raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'PERIDICA', 'Tipo de Cálculo']);

    if not CrearConjunto(CdNominas, 'nom_nomina', ccCatalog) then
      raise InteligentException.CreateBycode(5, ['nom_nomina']);


    cdTipoNomina.Open;
    if cdTipoNomina.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Tipos de Nómina']);
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

procedure TFrmConcentradoNomina.FormShow(Sender: TObject);
begin
  // Llenar el combo de los tipos de nómina
  while not cdTipoNomina.Eof do
  begin
    cbTipoNomina.AddItem(cdTipoNomina.FieldByName('Titulo').AsString, TObject(cdTipoNomina.FieldByName('IdTipoNomina').AsInteger));
    cdTipoNomina.Next;
  end;

  dtEdtInicio.Date := Date - 30;
  dtEdtTermino.Date := Date;

  if Individual then
    CxLblNombre.Caption := Nombre
  else
    CxLblNombre.Caption := '';
end;

procedure TFrmConcentradoNomina.SalariosAcumulados(Excel: Variant; FechaInicio,
  FechaTermino: TDate);
const
  xlLeft=-4131;
  xlCenter=-4108;
  xlEdgeLeft=7;
  xlContinuous=1;
  xlAutomatic=-4105;
  xlMedium=-4138;
  xlEdgeTop=8;
  xlEdgeRight=10;
  xlInsideVertical=11;
  xlInsideHorizontal=12;
  xlThin=2;
  xlEdgeBottom=9;
  xlright=-4152;
var
  Libro,Hoja:Variant;
  RenY,ColX:Integer;
  TotalCol:Integer;
  CdsDatos: TClientDataSet;
  FiltroParametros: TParamFilter;
  x,y:Integer;
  ListaNominas: string;
  idx: Integer;

procedure MostrarValores(pRenY: Integer; Var pColX: Integer; pValor: Variant);
var
  locValor: Real;

begin
  Hoja.cells[pRenY, pColX].Select;
  Try
    locValor := pValor;
    if locValor = 0 then
      pValor := '';
  Except
    ;
  End;

  if String(pValor) <> '' then
    Excel.selection.value := String(pValor);

  Inc(pColx);
end;

procedure MostrarTitulos(pRenY: Integer; Var pColX: Integer; pTitulo: String);
begin
  Hoja.cells[pRenY, pColX].Value := pTitulo;
  Inc(pColX);
end;

begin
  CdsDatos := TClientDataSet.Create(nil);
  FiltroParametros := TParamFilter.Create;
  try
    Libro := Excel.Workbooks.Add;
    Hoja := Libro.WorkSheets[1];
    Hoja.Select;
    {$REGION 'Titulos'}
    RenY:=1;
    ColX:=1;
    x:=1;y:=33;
    Hoja.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].select;
    Excel.selection.ColumnWidth:=13;
    x:=3;y:=3;
    Hoja.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].select;
    Excel.selection.ColumnWidth:=18;
    x:=7;y:=7;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=16;
    x:=8;y:=8;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=24;
    x:=9;y:=10;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=11;
    x:=19;y:=20;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=14;
    x:=23;y:=23;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=15;
    x:=25;y:=25;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=13;
    x:=30;y:=30;
    Excel.columns[ColumnaNombre(x) +':' +ColumnaNombre(y)].ColumnWidth:=17;
    Excel.rows[IntToStr(RenY) + ':' + IntToStr(RenY)].RowHeight:=40;

    //Excel.ScreenUpdating:=true;
    if Individual then
      MostrarTitulos(RenY, ColX, 'PERIODO NOMINA');

    MostrarTitulos(RenY, ColX, 'REGISTRO PATRONAL');
    MostrarTitulos(RenY, ColX, 'FECHA');
    MostrarTitulos(RenY, ColX, 'NO');
    MostrarTitulos(RenY, ColX, 'APELLIDO PATERNO');
    MostrarTitulos(RenY, ColX, 'APELLIDO MATERNO');
    MostrarTitulos(RenY, ColX, 'NOMBRE');
    MostrarTitulos(RenY, ColX, 'RFC');
    MostrarTitulos(RenY, ColX, 'CURP');
    MostrarTitulos(RenY, ColX, 'FECHA ALTA');
    MostrarTitulos(RenY, ColX, 'FECHA BAJA');
    MostrarTitulos(RenY, ColX, 'SUELDO DIARIO');

    MostrarTitulos(RenY, ColX, 'SUELDO');
    MostrarTitulos(RenY, ColX, 'SUBSIDIO AL EMPLEO');
    MostrarTitulos(RenY, ColX, 'HORAS EXTRAS');
    MostrarTitulos(RenY, ColX, 'HORAS EXTRAS GRAV');
    MostrarTitulos(RenY, ColX, 'PRIMA DOMINICAL');
    MostrarTitulos(RenY, ColX, 'PRIMA DOMINICAL GRAV');
    MostrarTitulos(RenY, ColX, 'DIA FESTIVO');
    MostrarTitulos(RenY, ColX, 'DIA FESTIVO GRAV');
    MostrarTitulos(RenY, ColX, 'VACACIONES');
    MostrarTitulos(RenY, ColX, 'VACACIONES GRAV');
    MostrarTitulos(RenY, ColX, 'PRIMA VACACIONAL');
    MostrarTitulos(RenY, ColX, 'PRIMA VACACIONAL GRAV');
    MostrarTitulos(RenY, ColX, 'PTU');
    MostrarTitulos(RenY, ColX, 'PTU GRAV');
    MostrarTitulos(RenY, ColX, 'AGUINALDO');
    MostrarTitulos(RenY, ColX, 'AGUINALDO GRAV');
    MostrarTitulos(RenY, ColX, 'PRIMA ANTIGÜEDAD');
    MostrarTitulos(RenY, ColX, 'PRIMA ANTIGÜEDAD GRAV');
    MostrarTitulos(RenY, ColX, 'INDEMNIZACIÓN');
    MostrarTitulos(RenY, ColX, 'INDEMNIZACIÓN GRAV');
    MostrarTitulos(RenY, ColX, '20 DIAS POR AÑO');
    MostrarTitulos(RenY, ColX, '20 DIAS POR AÑO GRAV');
    MostrarTitulos(RenY, ColX, 'Comisiones');
    MostrarTitulos(RenY, ColX, 'Comisiones Grav.');
    MostrarTitulos(RenY, ColX, 'Otros Ingresos');
    MostrarTitulos(RenY, ColX, 'Otros Ingresos Grav.');
    MostrarTitulos(RenY, ColX, 'TOTAL PERCEPCIÓN');
    MostrarTitulos(RenY, ColX, 'I.S.R');
    MostrarTitulos(RenY, ColX, 'I.M.S.S.');
    MostrarTitulos(RenY, ColX, 'INFONAVIT');
    MostrarTitulos(RenY, ColX, 'OTRAS DEDUCCIONES');
    MostrarTitulos(RenY, ColX, 'AJUSTE NETO');
    MostrarTitulos(RenY, ColX, 'PENSIÓN ALIMENTICIA');
    MostrarTitulos(RenY, ColX, 'TOTAL DEDUCCIÓN');
    MostrarTitulos(RenY, ColX, 'SUELDO NETO');

    TotalCol := Colx -1;

    Excel.Columns['I:J'].NumberFormat := 'dd/mm/aaaa';
    Excel.Columns['I:J'].VerticalAlignment := xlCenter;

    Excel.ScreenUpdating:=true;
    Excel.ScreenUpdating:=false;
    //Inc(Colx);
    {$ENDREGION}
    Inc(RenY);
    if not CrearConjunto(CdsDatos, 'nom_acumulados', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);

    if cxRbtnFechas.Checked then
    begin
      FiltroParametros.Add('FechaInicio', FormatDateTime('yyyy-mm-dd', FechaInicio));
      FiltroParametros.Add('FechaTermino', FormatDateTime('yyyy-mm-dd', FechaTermino));
    end;

    if cxRbtnNominas.Checked then
    begin
      idx := 0;
      ListaNominas := '';
      for idx := 0 to CxGridNominas.Controller.SelectedRowCount - 1 do
      begin
        ListaNominas := ListaNominas + VarToStr(CxGridNominas.Controller.SelectedRows[idx].Values[CxColumnIdNomina.Index]) + ',';
      end;

      FiltroParametros.Add('IdNomina', ListaNominas);
    end;

    if cbTipoNomina.ItemIndex > 0 then
      FiltroParametros.Add('IdTipoNomina', Integer(cbTipoNomina.Items.Objects[cbTipoNomina.ItemIndex]));

    //Si es necesario mostrar un detallado por personal agregamos un corte.
    if Individual then
    begin
      FiltroParametros.Add('IdPersonal', IdPersonal);
      FiltroParametros.Add('CorteNomina', 'yes');
    end;
    if not CargarDatosFiltrados(CdsDatos, FiltroParametros.Campos, FiltroParametros.Datos) then
       raise InteligentException.CreateByCode(5, ['Detalle de Nóminas']);

    CdsDatos.Open;

    while not CdsDatos.Eof do
    begin
      {$REGION 'Grabando Informacion'}
      ColX:=1;
      //Individual es una bandera para mostrar un concentrado detallado por personal
      if Individual then
        MostrarValores(RenY, ColX, UpperCase(Trim(CdsDatos.FieldbyName ('PeriodoNomina').asString)));

      MostrarValores(RenY, ColX, UpperCase(CdsDatos.FieldByName('RegistroPatronal').AsString));
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('fecha').AsDateTime);
      MostrarValores(RenY, ColX, UpperCase(Trim(CdsDatos.FieldByName('CodigoPersonal').AsString)));
      MostrarValores(RenY, ColX, UpperCase(Trim(CdsDatos.FieldByName('Apaterno').AsString)));
      MostrarValores(RenY, ColX, UpperCase(Trim(CdsDatos.FieldByName('amaterno').AsString)));
      MostrarValores(RenY, ColX, UpperCase(Trim(CdsDatos.FieldByName('nombres').AsString)));
      MostrarValores(RenY, ColX, UpperCase(CdsDatos.FieldByName('rfc').AsString));
      MostrarValores(RenY, ColX, UpperCase(CdsDatos.FieldByName('curp').AsString));
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('FechaAlta').AsDateTime);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('FechaBaja').AsDateTime);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('salariodiario').AsFloat);

      MostrarValores(RenY, ColX, CdsDatos.FieldByName('sueldos').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('subsidio').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('horasextra').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('HorasExtraGravables').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('primadominical').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('PrimaDominicalGravable').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('diasfestivos').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('DiasFestivosGrav').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('vacaciones').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('VacacionesGravadas').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('primavacacional').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('PrimaVacacionalGravada').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('PTU').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('PTUGravable').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('aguinaldo').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('AguinaldoGravable').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('PrimaAntiguedad').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('PrimaAntiguedadGrav').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('Indemnizacion').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('IndemnizacionGrav').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('20DIANIO').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('20DIANIOGRAV').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('Comisiones').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('ComisionesGrav').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('OtrosIngresos').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('OtrosIngresosGrav').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('percepciones').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('impuestomarginal').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('imss').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('infonavit').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('OtrasDeducciones').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('AjusteNETO').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('PensionAlimenticia').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('deducciones').AsFloat);
      MostrarValores(RenY, ColX, CdsDatos.FieldByName('neto').AsFloat);

      CdsDatos.Next;
      Inc(RenY);

      Excel.ScreenUpdating:=true;
      Hoja.cells[RenY,1].Select;
      Excel.ScreenUpdating:=false;
      {$ENDREGION}
    end;

    {$REGION 'Totales'}
    Hoja.cells[RenY,1].Select;
    Excel.selection.value:='TOTALES';
    Excel.selection.HorizontalAlignment:=xlLeft;
    Excel.selection.WrapText:=true;
    if individual then
      Hoja.range[ColumnaNombre(1) +inttostr(RenY)+':' + ColumnaNombre(11) +inttostr(RenY)].Mergecells := True
    else
      Hoja.range[ColumnaNombre(1) +inttostr(RenY)+':' + ColumnaNombre(10) +inttostr(RenY)].Mergecells := True;;

    ColIniSum := 0;
    If Individual then
      ColIniSum := 12
    else
      ColIniSum := 11;

    for ColX := ColIniSum to TotalCol do
    begin
      Hoja.cells[RenY,ColX].Select;
      Excel.Selection.Formula := '=SUM(' + ColumnaNombre(Colx)+'2 :' +ColumnaNombre(Colx)+IntToStr(RenY - 1);
      Excel.Selection.NumberFormat := '#,##0.00';
      //Excel.Selection.Align := xlright;
    end;
    {$ENDREGION}

    {$REGION 'Formato de la Informacion'}
    Hoja.range[ColumnaNombre(1) +'1:' + ColumnaNombre(TotalCol) +'1'].Select;
    Excel.Selection.NumberFormat:='@';
    Excel.selection.HorizontalAlignment:=xlCenter;
    Excel.selection.VerticalAlignment:=xlCenter;
    Excel.selection.Font.Name:='Arial';
    Excel.selection.Font.Size:=10;
    Excel.selection.Font.Bold:=true;

    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeLeft].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeTop].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;


    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeBottom].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeRight].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;

    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlInsideVertical].TintAndShade := 0;
    Excel.Selection.Borders[xlInsideVertical].Weight := xlMedium;

    Hoja.range[ColumnaNombre(1) +'2:' + ColumnaNombre(TotalCol) + inttostr(RenY-1)].Select;
    //Excel.Selection.NumberFormat:='#,##0.00';
    Excel.selection.HorizontalAlignment:= xlLeft;
    Excel.selection.VerticalAlignment:=xlCenter;
    Excel.selection.Font.Name:='Arial';
    Excel.selection.Font.Size:=10;
    Excel.cells.Columns.AutoFit;
    //Excel.selection.Font.Bold:=true;

    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeLeft].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeTop].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeBottom].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeRight].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;

    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlInsideVertical].TintAndShade := 0;
    Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;

    Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideHorizontal].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlInsideHorizontal].TintAndShade := 0;
    Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

    Hoja.range[ColumnaNombre(1) +inttostr(RenY)+':' + ColumnaNombre(TotalCol) +inttostr(RenY)].Select;
    Excel.selection.HorizontalAlignment:=xlright;
    Excel.selection.VerticalAlignment:=xlCenter;
    Excel.selection.Font.Name:='Arial';
    Excel.selection.Font.Size:=10;
    Excel.selection.Font.Bold:=true;

    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeLeft].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeTop].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlMedium;


    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeBottom].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlMedium;

    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlEdgeRight].TintAndShade := 0;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlMedium;

    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].ColorIndex := xlAutomatic;
    Excel.Selection.Borders[xlInsideVertical].TintAndShade := 0;
    Excel.Selection.Borders[xlInsideVertical].Weight := xlMedium;
    //Formato al contenido de los números
    Hoja.range[ColumnaNombre(11) +'2:' + ColumnaNombre(TotalCol) + inttostr(RenY-1)].Select;
    Excel.Selection.NumberFormat:='#,##0.00';
    Excel.selection.HorizontalAlignment:= xlRight;
    Excel.selection.VerticalAlignment:=xlCenter;
    Excel.selection.Font.Name:='Arial';
    Excel.selection.Font.Size:=10;
    Excel.cells.Columns.AutoFit;
   {$ENDREGION}
  finally
    EliminarConjunto(CdsDatos);
    CdsDatos.destroy;
    FiltroParametros.Destroy;
  end;
end;

end.
