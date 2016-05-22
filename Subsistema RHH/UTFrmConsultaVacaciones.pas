unit UTFrmConsultaVacaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ComObj, ExportaExcel, cxGraphics, cxControls,
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
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  cxContainer, cxLabel, cxDBLabel, dxSkinsdxBarPainter, dxBar, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxDBEdit, DBClient, Menus, StdCtrls, cxButtons,
  ClientModuleUnit1, cxGridExportLink, ShellAPI, DateUtils;

type
  TFrmConsultaVacaciones = class(TForm)
    dsNomina: TDataSource;
    dsHistorial: TDataSource;
    cxGridVacaciones: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
    CxGrdHistorialVacaciones: TcxGrid;
    cxColFechaInicio: TcxGridDBColumn;
    cxColFechaTermino: TcxGridDBColumn;
    cxColDiasPeriodo: TcxGridDBColumn;
    cxColAnios: TcxGridDBColumn;
    cxColDiasVacaciones: TcxGridDBColumn;
    cxColDiasVacPagar: TcxGridDBColumn;
    cxColDiasVacPagadas: TcxGridDBColumn;
    pnlDatos: TPanel;
    DbLblNombre: TcxDBLabel;
    DbLblFechaReingreso: TcxDBLabel;
    DbLblFechaBaja: TcxDBLabel;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    DbLblAnios: TcxDBLabel;
    cxlbl4: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxButtonGenerarReporte: TdxBarLargeButton;
    dxButtonImprimirGrid: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cxColEmpleado: TcxGridDBColumn;
    cxlblVacPag: TcxLabel;
    cxlblVacPend: TcxLabel;
    cxlbl7: TcxLabel;
    cxlblVacTot: TcxLabel;
    pnlAjuste: TPanel;
    cxlbl8: TcxLabel;
    cxlbl9: TcxLabel;
    cxlblClave: TcxLabel;
    cxlbl10: TcxLabel;
    cxSpinAjuste: TcxSpinEdit;
    cxlbl11: TcxLabel;
    DbLbl1: TcxDBLabel;
    cdAjustes: TClientDataSet;
    btnGuardar: TcxButton;
    dlgSave1: TSaveDialog;
    cdDatos: TClientDataSet;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxButtonSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure dxButtonImprimirGridClick(Sender: TObject);
    procedure dxButtonGenerarReporteClick(Sender: TObject);
  private
    ExApp, Excel, Workbook, Worksheet: Variant;
    RInicio,CInicio: Integer;
    procedure encabezado;
    procedure BordesYNegritas(Rango: Variant;Negritas: Boolean = True);
  public
    IdNomina: Integer;
    IdPersonal: Integer;
    { Public declarations }
  end;

var
  FrmConsultaVacaciones: TFrmConsultaVacaciones;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure TFrmConsultaVacaciones.BordesYNegritas(Rango: Variant;Negritas: Boolean = True);
begin
  try
    Rango.Borders[xlDiagonalDown].LineStyle := xlNone;
    Rango.Borders[xlDiagonalUp].LineStyle := xlNone;
    Rango.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Rango.Borders[xlEdgeLeft].Weight := xlThin;
    Rango.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Rango.Borders[xlEdgeTop].Weight := xlThin;
    Rango.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Rango.Borders[xlEdgeBottom].Weight := xlThin;
    Rango.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Rango.Borders[xlEdgeRight].Weight := xlThin;
    Rango.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Rango.Borders[xlInsideVertical].Weight := xlThin;
    Rango.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    Rango.Borders[xlInsideHorizontal].Weight := xlThin;

    if Negritas then
    begin
      Rango.Interior.Color := RGB(149,179,215);
      Rango.Font.Bold := True;
    end;
  except
    raise;
  end;
end;

procedure TFrmConsultaVacaciones.btnGuardarClick(Sender: TObject);
begin
  if cdAjustes.Recordcount > 0 then
  begin
    with cdAjustes do
    begin
      Edit;
      FieldByName('ValorAjuste').asExtended := cxSpinAjuste.Value;
      Post;
    end;
  end
  else
  begin
    with cdAjustes do
    begin
      Append;
      FieldByName('IdAjuste').asInteger := 0;
      FieldByName('IdPersonal').asInteger := IdPersonal;
      FieldByName('ClaveConcepto').asString := cxlblClave.caption;
      FieldByName('IdNomina').asInteger := IdNomina;
      FieldByName('ValorAjuste').asExtended := cxSpinAjuste.Value;
      Post;
    end;
  end;
  cdAjustes.ApplyUpdates(-1);
  InteliDialog.ShowModal('Aviso', 'Se ha registrado el ajuste correctamente. Ahora recalcula esta nomina para que los cambios sean aplicados.', mtInformation, [mbOK], 0);
end;

procedure TFrmConsultaVacaciones.dxButtonGenerarReporteClick(Sender: TObject);
Var
  continuar: Boolean;
  Cursor   : TCursor;
  rowIni, ColIni, renR, renC, j : Integer;
  Formula   : String;
  Suma, Suma2: Extended;
  Rango: Variant;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      cdDatos := TClientDataSet(dsHistorial.DataSet);
      Try
        RInicio := 6;
        Cinicio := 1;
        Continuar     := True;
        ExApp := CreateOleObject('Excel.Application');
        ExApp.Visible := True;
        ExApp.DisplayAlerts := False;
        ExApp.Workbooks.Add;
      Except
        on e:Exception do
        begin
          Continuar := False;
          InteliDialog.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta característica', mtError, [mbOK], 0);
        end;
      End;

      //Si no se vá al chorizo continuar
      if Continuar then
      begin
        renR := 0;
        renC := 0;
        Suma := 0;
        encabezado;
        cdDatos.First;
        while not cdDatos.Eof do
        begin
          if (Yearof(cdDatos.FieldByName('FechaInicio').AsDateTime)= Yearof(cdDatos.FieldByName('fb').AsDateTime)) or (Yearof(cdDatos.FieldByName('FechaTermino').AsDateTime)= Yearof(cdDatos.FieldByName('fb').AsDateTime)) then
          begin
            ExApp.Range['A' + IntToStr(6+RenR)].Value := cdDatos.FieldByName('LeyendaPeriodo').AsString;
            ExApp.Range['B' + IntToStr(6+RenR)].Value := cdDatos.FieldByName('Dias').AsString;
            ExApp.Range['C' + IntToStr(6+RenR)].Value := cdDatos.FieldByName('Anios').AsString;
            ExApp.Range['D' + IntToStr(6+RenR)].Value := cdDatos.FieldByName('DiasVac').AsString;
            ExApp.Range['E' + IntToStr(6+RenR)].Value := cdDatos.FieldByName('DiasVacPeriodo').AsString;
            Suma := Suma + cdDatos.FieldByName('DiasVacPeriodo').AsExtended;
            Inc(renR)
          end;
          cdDatos.Next;
        end;

        BordesYNegritas(ExApp.Range['A6:A'+IntToStr(6+renR)]);
        ExApp.Range['A'+ IntToStr(6+RenR)+':D'+IntToStr(6+RenR)].Value := 'SUMA';

        BordesYNegritas(ExApp.Range['A'+ IntToStr(6+RenR)+':E'+IntToStr(6+RenR)]);
        ExApp.Range['A'+ IntToStr(6+RenR)+':D'+IntToStr(6+RenR)].Merge;
        ExApp.Range['E'+IntToStr(6+RenR)].Value := Suma;

        renR := renR + 9;
        Suma := 0;

        ExApp.Range['A' + IntToStr(RenR)].Value := 'Vacaciones';
        ExApp.Range['B' + IntToStr(RenR)].Value := 'Pagado';
        ExApp.Range['C' + IntToStr(RenR)].Value := 'Toca';
        BordesYNegritas(ExApp.Range['A' + IntToStr(RenR) + ':C'+ IntToStr(RenR)]);

        J := renR;
        Inc(renR);

        cdDatos.First;
        while not cdDatos.Eof do
        begin
          ExApp.Range['A' + IntToStr(RenR)].Value := cdDatos.FieldByName('LeyendaPeriodo').AsString;
          ExApp.Range['B' + IntToStr(RenR)].Value := cdDatos.FieldByName('DiasVacPagadas').AsString;
          ExApp.Range['C' + IntToStr(RenR)].Value := cdDatos.FieldByName('DiasVacPeriodo').AsString;
          Suma := Suma + cdDatos.FieldByName('DiasVacPagadas').AsExtended;
          Suma2 := Suma2 + cdDatos.FieldByName('DiasVacPeriodo').AsExtended;

          Inc(renR);
          cdDatos.Next;
        end;

        ExApp.Range['A'+IntToStr(RenR)].Value := 'Total Pagado';
        ExApp.Range['A'+IntToStr(RenR+1)].Value := 'Total a Pagar';

        ExApp.Range['B'+IntToStr(RenR)].Value := Suma;
        ExApp.Range['C'+IntToStr(RenR)].Value := Suma2;

        Rango := ExApp.Range['B'+IntToStr(RenR+1)];
        Rango.Value := StrToFloat(VartoStr(Suma2)) - StrToFloat(VarToStr(Suma));
        BordesYNegritas(Rango);

        BordesYNegritas(ExApp.Range['A'+IntToStr(j) + ':C'+IntToStr(RenR)], False);
        BordesYNegritas( ExApp.Range['A'+IntToStr(j)+ ':A'+IntToStr(RenR+1)]);
        ExApp.Columns['A:E'].EntireColumn.Autofit;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', 'Ha ocurrido un error, informe de lo siguiente a su administrador de sistema: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmConsultaVacaciones.dxButtonImprimirGridClick(Sender: TObject);
var
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';

  if dlgSave1.Execute then
  begin

    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, CxGrdHistorialVacaciones);

     if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmConsultaVacaciones.dxButtonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaVacaciones.encabezado;
Var
  Rango: Variant;
begin
  try
    ExApp.Range['A1'].Value := 'Nombre';
    ExApp.Range['B1'].Value := CdDatos.FieldByName('Empleado').AsString;
    ExApp.Range['A2'].Value := 'Fecha de Ingreso';
    ExApp.Range['B2'].FormulaR1C1 := CdDatos.FieldByName('FechaReingreso').AsString;
    ExApp.Range['A3'].Value := 'Fecha de Baja';
    ExApp.Range['B3'].FormulaR1C1 := CdDatos.FieldByName('FechaBaja').AsString;
    ExApp.Range['D3'].Value := 'Años Trabajados';
    ExApp.Range['E3'].Value := CdDatos.FieldByName('AniosT').AsString;;

    ExApp.Range['B5'].Value := 'Días Trabajados';
    ExApp.Range['C5'].Value := 'Años';
    ExApp.Range['D5'].Value := 'Vacaciones Días';
    ExApp.Range['E5'].Value := 'Total';

    //Fuente y Tamano
    Rango := ExApp.Range['A1:E5'];
    Rango.Font.Name := 'Arial';
    Rango.Font.Size := 10;

    //Bordes
    Rango := ExApp.Range['A1:A3'];
    BordesYNegritas(Rango);

    Rango := ExApp.Range['B5:E5'];
    BordesYNegritas(Rango);

    Rango := ExApp.Range['E1:B1'];
    Rango.Font.Bold := True;
    Rango.Merge;
    Rango.Font.Name := 'Times New Roman';
    Rango.interior.Color := RGB(178,178,178);
  Except
    Raise;
  end;
end;

procedure TFrmConsultaVacaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdAjustes.providerName <> '' then
    EliminarConjunto(cdAjustes);

  Action := caFree;
end;

procedure TFrmConsultaVacaciones.FormCreate(Sender: TObject);
begin
  if not crearConjunto(cdAjustes, 'nom_ajustesconceptos', ccUpdate) then
    raise inteligentException.CreateByCode(5,['Ajuste de conceptos de nómina.'])
end;

procedure TFrmConsultaVacaciones.FormShow(Sender: TObject);
var
  VacPag: Extended;
  VacTot: Extended;
begin
//  Try
//    Excel := CreateOleObject('Excel.Application');
//    // Mostrar el excel
//    Excel.Visible:= true;
//    // evitar que nos pregunte si deseamos sobreescribir el archivo
//    Excel.DisplayAlerts := false;
//    // agregar libro de trabajo
//    Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
//
//    // Eliminar todas las hojas excepto 1
//    while Workbook.Sheets.Count > 1 do
//      WorkBook.WorkSheets[1].Delete;
//
//      //Excel.ActiveWindow.SelectedSheets.Delete;
//
//    // tomar una referencia a la hoja creada
//    WorkSheet := WorkBook.WorkSheets[1];
//
//    WorkSheet.Cells[1, 1].Value := 'Nombre';
//  Except
//    on e:Exception do
//    begin
//      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
//      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
//    end;
//  End;
  try
    VacPag := 0;
    VacTot := 0;
    if dsHistorial.DataSet.Active and (dsHistorial.DataSet.RecordCount > 0) then
    begin
      dsHistorial.DataSet.First;
      while Not dsHistorial.DataSet.Eof do
      begin
        VacPag := VacPag  + dsHistorial.DataSet.FieldByName('DiasVacPagadas').AsExtended;
        VacTot := VacTot + dsHistorial.DataSet.FieldByName('DiasVacPeriodo').AsExtended;
        dsHistorial.DataSet.Next;
      end;
      cxlblVacPag.Caption := FloatToStr(VacPag);
      if FloatToStr(VacTot) = FloatToStr(VacPag) then
        cxlblVacPend.Caption := '0'
      else
        cxlblVacPend.Caption := FloatToStr(VacTot - VacPag);
      cxlblVacTot.Caption := FloatToStr(VacTot);
    end;

    if not CargarDatosFiltrados(cdajustes, 'idNomina,IdPersonal', [IdNomina, IdPersonal]) then
      raise InteligentException.CreateByCode(5, ['Ajuste de conceptos de nómina.']);

    if cdAjustes.active then
      cdAjustes.Refresh
    else
     cdAjustes.Open;

    if cdAjustes.Recordcount > 0 then
      cxSpinAjuste.Value := cdAjustes.FieldByName('ValorAjuste').asExtended
    else
      cxSpinAjuste.Value := 0;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
