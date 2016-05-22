unit UTFrmSueldosSalarios;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Menus, ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  cxButtons, cxGroupBox, ComObj, ClientModuleUnit1, UInteliDialog, ExportaExcel,
  DB, DBClient;

type
  TTipoNomina = class
    identificador: Integer;
    Titulo: string;
  end;

  TFrmSueldosSalarios = class(TForm)
    cxGBSueldosSalarios: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    CxBtnCancela: TcxButton;
    CxBtnGenerar: TcxButton;
    CxLbl1: TcxLabel;
    CxLbl2: TcxLabel;
    cxDateEditFechaInicio: TcxDateEdit;
    cxDateEditFechaTermino: TcxDateEdit;
    CdTipoNomina: TClientDataSet;
    CxCbbTipoNomina: TcxComboBox;
    CxLbl3: TcxLabel;
    procedure CxBtnGenerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure cargarTiposNomina;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSueldosSalarios: TFrmSueldosSalarios;

implementation

{$R *.dfm}

procedure TFrmSueldosSalarios.cargarTiposNomina;
var
  //cdTipoNomina: TClientDataset;
  objTipoNomina: TTipoNomina;
begin
  try
    try
      //if Not Assigned(cdTipoNomina) then
        //cdTipoNomina := TClientDataSet.create(self);
      
      if cdTipoNomina.ProviderName = '' then
        if not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Catálogo de Tipos de Nómina']);

      if not CargarDatosFiltrados(cdTipoNomina, 'TipoCalculo', ['PERIODICA']) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Tipos de Nómina', 'IdTipoNomina', 'PERIODICA']);

      if cdTipoNomina.Active then
        cdTipoNomina.refresh
      else
        cdTipoNomina.open;

      if cdTipoNomina.recordCount = 0  then
        raise InteligentException.CreateByCode(24, ['No existen Tipos de Nómina dados de alta en el Catálogo']);

      cdTipoNomina.first;

      //objTipoNomina := TTipoNomina.Create;
      //objTipoNomina.Identificador := -1;
      //objTipoNomina.Titulo := '< TODOS LOS TIPOS DE NOMINA >';

      while Not cdTipoNomina.eof do
      begin
        objTipoNomina := TTipoNomina.Create;
        objTipoNomina.Identificador := cdTipoNomina.FieldByName('idTipoNomina').asInteger;
        objTipoNomina.Titulo := cdTipoNomina.FieldByName('Titulo').asString;
        cxcbbTipoNomina.Properties.Items.AddObject(objTipoNomina.Titulo, ObjTipoNomina);
        cdTipoNomina.Next;
      end;
    finally
      //cdTipoNomina.destroy;
    end;
  except
     on e: InteligentException do
      intelidialog.ShowModal(e.title, e.Message, e.msgType, [mbOk], 0);

    on e: exception do
      Intelidialog.ShowModal('Error', 'Ha ocurrido un error inesperado, informe al admunistrador del sistema del siguiente error: ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmSueldosSalarios.CxBtnGenerarClick(Sender: TObject);
var
  Excel, Workbook, Worksheet: Variant;
  rowx, num: Integer;
  mnom_total, tipo: TClientDataSet;
  LocTipoNomina: Integer;
begin
  try
    //if CxCbbTipoNomina.ItemIndex > -1 then
      //raise InteligentException.CreateByCode(24, ['Seleccionar el ']);

    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      //HOja
      Excel := CreateOleObject('Excel.Application');
      // Mostrar el excel
      Excel.Visible:= true;
      // evitar que nos pregunte si deseamos sobreescribir el archivo
      Excel.DisplayAlerts := false;
      // agregar libro de trabajo
      Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
      // tomar una referencia a la hoja creada
      WorkSheet := WorkBook.WorkSheets[1];

      Worksheet := Excel.Worksheets.Add;

      {$REGION 'Encabesado'}
      WorkSheet.cells[1,8] := 'FECHA';
      WorkSheet.cells[1,11] := 'PREMIO';
      WorkSheet.cells[1,12] := 'PREMIO';
      WorkSheet.cells[1,13] := 'HORAS EXTRAS';
      WorkSheet.cells[1,16] := 'DESPENSA Y PREV. SOCIAL';
      WorkSheet.cells[1,20] := 'PRIMA VACACIONAL';
      WorkSheet.cells[1,23] := 'PTU';
      WorkSheet.cells[1,26] := 'OTROS INGRESOS';
      WorkSheet.cells[1,29] := 'AGUINALDO Y GRATIFICACION';
      WorkSheet.cells[1,32] := 'PRIMA DOMINICAL';
      WorkSheet.cells[1,35] := 'INDENMIZACION';
      WorkSheet.cells[1,38] := 'DIAS FESTIVOS';
      WorkSheet.cells[1,42] := 'Dias';
      WorkSheet.cells[1,43] := 'ISPT';
      WorkSheet.cells[1,44] := 'INGRESO';
      WorkSheet.cells[1,45] := 'INGRESO';
      WorkSheet.cells[1,46] := 'INGRESO';
      WorkSheet.cells[1,47] := 'LIMITE';
      WorkSheet.cells[1,48] := 'EXEDENTE';
      WorkSheet.cells[1,49] := '% SOBRE';
      WorkSheet.cells[1,50] := 'IMPUESTO';
      WorkSheet.cells[1,51] := 'CUOTA';
      WorkSheet.cells[1,52] := 'IMPUESTO';
      WorkSheet.cells[1,53] := 'S-E.';
      WorkSheet.cells[1,54] := 'ISR (CAS)';
      WorkSheet.cells[1,55] := 'S.E.';
      WorkSheet.cells[1,56] := 'S.E. POR';
      WorkSheet.cells[1,57] := 'CAS PAGADO';
      WorkSheet.cells[1,58] := 'ISR A retener';


      WorkSheet.cells[2,1] := 'No.';
      WorkSheet.cells[2,2] := 'APELLIDO PATERNO';
      WorkSheet.cells[2,3] := 'APELLIDO MATERNO';
      WorkSheet.cells[2,4] := 'NOMBRE';
      WorkSheet.cells[2,5] := 'R.F.C.';
      WorkSheet.cells[2,6] := 'CURP';
      WorkSheet.cells[2,7] := 'S.D.';
      WorkSheet.cells[2,8] := 'ALTA';
      WorkSheet.cells[2,9] := 'BAJA';
      WorkSheet.cells[2,10] := 'SUELDOS';
      WorkSheet.cells[2,11] := 'PUNTUALIDAD';
      WorkSheet.cells[2,12] := 'ASISTENCIA';
      WorkSheet.cells[2,13] := 'TOTAL';
      WorkSheet.cells[2,14] := 'EXCENTO';
      WorkSheet.cells[2,15] := 'GRAVADAS';
      WorkSheet.cells[2,16] := 'TOTAL';
      WorkSheet.cells[2,17] := 'EXCENTO';
      WorkSheet.cells[2,18] := 'GRAVADA';
      WorkSheet.cells[2,19] := 'VACACIONES';
      WorkSheet.cells[2,20] := 'TOTAL';
      WorkSheet.cells[2,21] := 'EXCENTO';
      WorkSheet.cells[2,22] := 'GRAVADA';
      WorkSheet.cells[2,23] := 'TOTAL';
      WorkSheet.cells[2,24] := 'EXCENTO';
      WorkSheet.cells[2,25] := 'GRAVADO';
      WorkSheet.cells[2,26] := 'TOTAL';
      WorkSheet.cells[2,27] := 'EXCENTO';
      WorkSheet.cells[2,28] := 'GRAVADO';
      WorkSheet.cells[2,29] := 'TOTAL';
      WorkSheet.cells[2,30] := 'EXCENTO';
      WorkSheet.cells[2,31] := 'GRAVADO';
      WorkSheet.cells[2,32] := 'TOTAL';
      WorkSheet.cells[2,33] := 'EXCENTO';
      WorkSheet.cells[2,34] := 'GRAVADO';
      WorkSheet.cells[2,35] := 'TOTAL';
      WorkSheet.cells[2,36] := 'EXCENTO';
      WorkSheet.cells[2,37] := 'GRAVADO';
      WorkSheet.cells[2,38] := 'TOTAL';
      WorkSheet.cells[2,39] := 'EXCENTO';
      WorkSheet.cells[2,40] := 'GRAVADO';
      WorkSheet.cells[2,41] := 'TOTAL ING';
      WorkSheet.cells[2,42] := 'Trab.';
      WorkSheet.cells[2,43] := 'RETENIDO';
      WorkSheet.cells[2,44] := 'TOTAL';
      WorkSheet.cells[2,45] := 'EXENTO';
      WorkSheet.cells[2,46] := 'GRAVADO';
      WorkSheet.cells[2,47] := 'INFERIOR';
      WorkSheet.cells[2,48] := 'S/LIM. INF.';
      WorkSheet.cells[2,49] := 'EXEDENTE';
      WorkSheet.cells[2,50] := 'MARGINAL';
      WorkSheet.cells[2,51] := 'FIJA';
      WorkSheet.cells[2,52] := 'antes de SE';
      WorkSheet.cells[2,53] := 'que correspondio';
      WorkSheet.cells[2,54] := 'ANUAL';
      WorkSheet.cells[2,55] := 'PAGADO';
      WorkSheet.cells[2,56] := 'PAGAR';
      WorkSheet.cells[2,57] := 'EN EXCESO';
      WorkSheet.cells[2,58] := '(A FAVOR)';
      {$ENDREGION 'Encabesado'}

      tipo := TClientDataSet.Create(nil);
      mnom_total := TClientDataSet.Create(nil);

//      if tipo.ProviderName = '' then
//        if not CrearConjunto(tipo, 'nom_detallenomina_suc', ccCatalog) then
//          raise InteligentException.CreateByCode(5, ['Detalle Nóminas']);
//
//      if Not CargarDatosFiltrados(tipo, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
//        raise InteligentException.CreateByCode(6, ['Detalle Nóminas', cdNomina.FieldByName('IdNomina').AsInteger, 'IdNomina']);
//
//      if tipo.Active then
//        tipo.Refresh
//      else
//        tipo.Open;

      LocTipoNomina := TTipoNomina(CxCbbTipoNomina.Properties.Items.Objects[CxCbbTipoNomina.ItemIndex]).identificador;
      if CdTipoNomina.ProviderName = '' then
        if not CrearConjunto(CdTipoNomina, 'nom_tiponomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Catálogo Tipos de Nómina']);

      if Not CargarDatosFiltrados(CdTipoNomina, 'idTipoNomina', [LocTipoNomina]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Tipos de Nómina', 'IdTipoNomina', IntToStr(LocTipoNomina)]);

      if CdTipoNomina.Active then
        CdTipoNomina.Refresh
      else
        CdTipoNomina.Open;

      if CdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0 then
      begin
        if mnom_total.ProviderName = '' then
          if not CrearConjunto(mnom_total, 'nom_nomina_totaliza_a', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Nóminas']);
      end
      else
      begin
        if mnom_total.ProviderName = '' then
          if not CrearConjunto(mnom_total, 'nom_nomina_totaliza_q', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Nóminas']);
      end;

      LocTipoNomina := TTipoNomina(CxCbbTipoNomina.Properties.Items.Objects[CxCbbTipoNomina.ItemIndex]).identificador;
      if Not CargarDatosFiltrados(mnom_total, 'IdTipoNomina,FechaInicio,FechaTermino', [LocTipoNomina, ClientModule1.DatetoStrSql(cxDateEditFechaInicio.Date), ClientModule1.DatetoStrSql(cxDateEditFechaTermino.Date)]) then
        raise InteligentException.CreateByCode(6, ['Nóminas','Catálogo de Nóminas' , 'IdNomina']);

      if mnom_total.Active then
        mnom_total.Refresh
      else
        mnom_total.Open;

      mnom_total.First;
      num:=1;
      rowx:=3;
      while Not mnom_total.Eof do
      begin
        {$REGION 'Datos'}
        WorkSheet.cells[rowx,1] := num;
        WorkSheet.cells[rowx,2] := mnom_total.fieldbyName('APaterno').AsString;
        WorkSheet.cells[rowx,3] := mnom_total.fieldbyName('AMaterno').AsString;
        WorkSheet.cells[rowx,4] := mnom_total.fieldbyName('Nombres').AsString;
        WorkSheet.cells[rowx,5] := mnom_total.fieldbyName('RFC').AsString;
        WorkSheet.cells[rowx,6] := mnom_total.fieldbyName('Curp').AsString;
        WorkSheet.cells[rowx,7] := mnom_total.fieldbyName('SalarioDiario').AsString;
        //WorkSheet.cells[2,7] := mnom_total.fieldbyName('SalarioIntegrado').AsString;
        WorkSheet.cells[rowx,8] := mnom_total.fieldbyName('FechaAlta').AsString;
        WorkSheet.cells[rowx,9] := mnom_total.fieldbyName('FechaBaja').AsString;
        WorkSheet.cells[rowx,10] := mnom_total.fieldbyName('Sueldos').AsString;
        WorkSheet.cells[rowx,11] := mnom_total.fieldbyName('PremioPuntualidad').AsString;
        WorkSheet.cells[rowx,12] := mnom_total.fieldbyName('PremioAsistencia').AsString;
        WorkSheet.cells[rowx,13] := mnom_total.fieldbyName('HorasExtra').AsString;
        WorkSheet.cells[rowx,14] := mnom_total.fieldbyName('HorasExtra').AsInteger-mnom_total.fieldbyName('HorasExtraGravables').AsInteger;
        WorkSheet.cells[rowx,15] := mnom_total.fieldbyName('HorasExtraGravables').AsInteger;
        WorkSheet.cells[rowx,16] := mnom_total.fieldbyName('Despensa').AsString;
        WorkSheet.cells[rowx,17] := mnom_total.fieldbyName('Despensa').AsInteger-mnom_total.fieldbyName('DespensaGrav').AsInteger;
        WorkSheet.cells[rowx,18] := mnom_total.fieldbyName('DespensaGrav').AsString;
        WorkSheet.cells[rowx,19] := mnom_total.fieldbyName('Vacaciones').AsString;
        //WorkSheet.cells[2,18] := mnom_total.fieldbyName('VacacionesGravadas').AsString;
        WorkSheet.cells[rowx,20] := mnom_total.fieldbyName('PrimaVacacional').AsString;
        WorkSheet.cells[rowx,21] := mnom_total.fieldbyName('PrimaVacacional').AsInteger-mnom_total.fieldbyName('PrimaVacacionalGravada').AsInteger;
        WorkSheet.cells[rowx,22] := mnom_total.fieldbyName('PrimaVacacionalGravada').AsString;
        WorkSheet.cells[rowx,23] := mnom_total.fieldbyName('PTU').AsString;
        WorkSheet.cells[rowx,24] := mnom_total.fieldbyName('PTU').AsInteger-mnom_total.fieldbyName('PTUGravable').AsInteger;
        WorkSheet.cells[rowx,25] := mnom_total.fieldbyName('PTUGravable').AsString;
        WorkSheet.cells[rowx,26] := mnom_total.fieldbyName('OtrosIngresos').AsString;
        WorkSheet.cells[rowx,27] := mnom_total.fieldbyName('OtrosIngresos').AsInteger-mnom_total.fieldbyName('OtrosIngresosGravables').AsInteger;
        WorkSheet.cells[rowx,28] := mnom_total.fieldbyName('OtrosIngresosGravables').AsString;
        WorkSheet.cells[rowx,29] := mnom_total.fieldbyName('Aguinaldo').AsString;
        WorkSheet.cells[rowx,30] := mnom_total.fieldbyName('Aguinaldo').AsInteger-mnom_total.fieldbyName('AguinaldoGravable').AsInteger;
        WorkSheet.cells[rowx,31] := mnom_total.fieldbyName('AguinaldoGravable').AsString;
        WorkSheet.cells[rowx,32] := mnom_total.fieldbyName('PrimaDominical').AsString;
        WorkSheet.cells[rowx,33] := mnom_total.fieldbyName('PrimaDominical').AsInteger-mnom_total.fieldbyName('PrimaDominicalGravable').AsInteger;
        WorkSheet.cells[rowx,34] := mnom_total.fieldbyName('PrimaDominicalGravable').AsString;
        WorkSheet.cells[rowx,35] := mnom_total.fieldbyName('Indemnizacion').AsString;
        WorkSheet.cells[rowx,36] := mnom_total.fieldbyName('Indemnizacion').AsInteger-mnom_total.fieldbyName('IndemnizacionGravable').AsInteger;
        WorkSheet.cells[rowx,37] := mnom_total.fieldbyName('IndemnizacionGravable').AsString;
        WorkSheet.cells[rowx,38] := mnom_total.fieldbyName('DiasFestivos').AsString;
        WorkSheet.cells[rowx,39] := mnom_total.fieldbyName('DiasFestivos').AsInteger-mnom_total.fieldbyName('DiasFestivosGrav').AsInteger;
        WorkSheet.cells[rowx,40] := mnom_total.fieldbyName('DiasFestivosGrav').AsInteger;

        WorkSheet.cells[rowx,42] := mnom_total.fieldbyName('DiasTrab').AsString;
        WorkSheet.cells[rowx,43] := mnom_total.fieldbyName('ISPTRetenido').AsString;
        WorkSheet.cells[rowx,47] := mnom_total.fieldbyName('LimiteInferior').AsString;
        WorkSheet.cells[rowx,48] := mnom_total.fieldbyName('ExedenteLimiteInferior').AsString;
        WorkSheet.cells[rowx,49] := mnom_total.fieldbyName('PorcentajeSExedente').AsString;
        WorkSheet.cells[rowx,50] := mnom_total.fieldbyName('ImpuestoMarginal').AsString;
        WorkSheet.cells[rowx,51] := mnom_total.fieldbyName('CuotaFija').AsString;
        WorkSheet.cells[rowx,52] := mnom_total.fieldbyName('ISPTAntesSubsidio').AsString;
        WorkSheet.cells[rowx,53] := mnom_total.fieldbyName('Subsidio').AsString;
        WorkSheet.cells[rowx,54] := mnom_total.fieldbyName('ISPTCAS').AsString;
        WorkSheet.cells[rowx,55] := mnom_total.fieldbyName('SEPagado').AsString;
        WorkSheet.cells[rowx,56] := mnom_total.fieldbyName('ISPTPorPagar').AsString;
        WorkSheet.cells[rowx,57] := mnom_total.fieldbyName('CASPagadoExceso').AsString;
        WorkSheet.cells[rowx,58] := mnom_total.fieldbyName('ISRARetener').AsString;
        {$ENDREGION 'Datos'}
        Inc(num);
        Inc(rowx);
        mnom_total.Next;
      end;

      {$REGION 'Formato'}
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(6)+IntToStr(1)].select;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(6)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(7)+IntToStr(1)+':'+LetraColumna(8)+IntToStr(1)].select;
      Excel.Range[LetraColumna(7)+IntToStr(1)+':'+LetraColumna(8)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(12)+IntToStr(1)+':'+LetraColumna(14)+IntToStr(1)].select;
      Excel.Range[LetraColumna(12)+IntToStr(1)+':'+LetraColumna(14)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(15)+IntToStr(1)+':'+LetraColumna(17)+IntToStr(1)].select;
      Excel.Range[LetraColumna(15)+IntToStr(1)+':'+LetraColumna(17)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(19)+IntToStr(1)+':'+LetraColumna(21)+IntToStr(1)].select;
      Excel.Range[LetraColumna(19)+IntToStr(1)+':'+LetraColumna(21)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(22)+IntToStr(1)+':'+LetraColumna(24)+IntToStr(1)].select;
      Excel.Range[LetraColumna(22)+IntToStr(1)+':'+LetraColumna(24)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(25)+IntToStr(1)+':'+LetraColumna(27)+IntToStr(1)].select;
      Excel.Range[LetraColumna(25)+IntToStr(1)+':'+LetraColumna(27)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(28)+IntToStr(1)+':'+LetraColumna(30)+IntToStr(1)].select;
      Excel.Range[LetraColumna(28)+IntToStr(1)+':'+LetraColumna(30)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(31)+IntToStr(1)+':'+LetraColumna(33)+IntToStr(1)].select;
      Excel.Range[LetraColumna(31)+IntToStr(1)+':'+LetraColumna(33)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(34)+IntToStr(1)+':'+LetraColumna(36)+IntToStr(1)].select;
      Excel.Range[LetraColumna(34)+IntToStr(1)+':'+LetraColumna(36)+IntToStr(1)].merge;
      Excel.Range[LetraColumna(37)+IntToStr(1)+':'+LetraColumna(39)+IntToStr(1)].select;
      Excel.Range[LetraColumna(37)+IntToStr(1)+':'+LetraColumna(39)+IntToStr(1)].merge;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].select;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].HorizontalAlignment := xlCenter;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].VerticalAlignment := xlBottom;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(2)].Font.Bold := true;

      Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].select;
      Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].HorizontalAlignment := xlRight;
      Excel.Range[LetraColumna(7)+IntToStr(3)+':'+LetraColumna(8)+IntToStr(rowx)].VerticalAlignment := xlBottom;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].select;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].Font.Name := 'Arial';
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(58)+IntToStr(rowx)].Font.size := 8;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.colorIndex := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.TintAndShade := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.Weight := xlMedium;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders.LineStyle := xlContinuous;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlDiagonalDown].LineStyle := xlNone;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlDiagonalUp].LineStyle := xlNone;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideVertical].weight := xlMedium;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(2)].Borders[xlInsideHorizontal].LineStyle := xlNone;

      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.colorIndex := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.TintAndShade := 0;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.Weight := xlMedium;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders.LineStyle := xlContinuous;
      Excel.Range[LetraColumna(0)+IntToStr(1)+':'+LetraColumna(57)+IntToStr(1)].Borders[xlInsideHorizontal].LineStyle := xlNone;

      Excel.Range[LetraColumna(6)+IntToStr(3)+':'+LetraColumna(57)+IntToStr(rowx)].NumberFormat := '###,###,##0.00';
      Excel.Range[LetraColumna(6)+IntToStr(3)+':'+LetraColumna(57)+IntToStr(rowx)].NumberFormat := '###,###,##0.00';

      Excel.cells.Columns.AutoFit;
      {$ENDREGION 'Formato'}
    finally
      FreeAndNil(tipo);
      FreeAndNil(mnom_total);
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
  end;
end;

procedure TFrmSueldosSalarios.FormShow(Sender: TObject);
begin
  cargarTiposNomina;
end;

end.
