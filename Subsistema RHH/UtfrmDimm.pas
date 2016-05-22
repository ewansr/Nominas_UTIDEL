unit UtfrmDimm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxContainer, cxDateNavigator, ClientModuleUnit1, exportaExcel , Menus,
  StdCtrls, cxButtons, comObj, UinteliDialog, DB, DBClient, cxEdit, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxDBCheckComboBox, DateUtils,
  cxLabel, cxCheckListBox, cxClasses, dxBar, dxRibbonRadialMenu;

type
  TFrmDimm = class(TForm)
    CdDatos: TClientDataSet;
    CdCuerpo: TClientDataSet;
    cxSpinAnio: TcxSpinEdit;
    btn1: TcxButton;
    btnCancel: TcxButton;
    CdTipoNomina: TClientDataSet;
    dsTipoNomina: TDataSource;
    lstTipoNomina: TcxCheckListBox;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    dxrbnrdlmn1: TdxRibbonRadialMenu;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    RInicio: Integer;{Fila de Inicio}
    CInicio: Integer;{Columna de inicio}
    RecX: Integer;   {Recorrido en x}
    RecY: Integer;   {Recorrido en y}
    ExApp: Variant;  {Aplicación de excel}
    Procedure CombinarCeldaRango(Data: TClientDataSet);

  public
    { Public declarations }
  end;

var
  FrmDimm: TFrmDimm;

implementation

{$R *.dfm}

procedure TFrmDimm.btn1Click(Sender: TObject);
var
  Continuar: Boolean;
  Cursor: tCursor;
  ListaTipoNomina: String;
  I: integer;
  Seleccion: Variant;
  Macro: OleVariant;
begin
  Try
    RecX := 1;
    RInicio := 1;
    Cinicio := 1;

    Continuar     := True;
    ExApp := CreateOleObject('Excel.Application');
    ExApp.Visible := True;
    ExApp.DisplayAlerts := False;
    ExApp.Workbooks.Add;
    ExApp.ActiveSheet.Name := 'SUELDOS Y SALARIOS'
  Except
    on e:Exception do
    begin
      Continuar := False;
      InteliDialog.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta característica', mtError, [mbOK], 0);
    end;
  End;

  if Continuar then
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      ListaTipoNomina := '';
      for i:=0 to lstTipoNomina.Items.Count-1 do
      begin
        if LstTipoNomina.Items.Items[i].Checked then
          ListaTipoNomina := ListaTipoNomina + IntToStr(LstTipoNomina.Items.Items[i].Tag) + ',';
      end;

      //Encabezado de la dimm
      If cdDatos.ProviderName = '' then
        if not CrearConjunto(cdDatos, 'nom_reportedimm', ccCatalog) then
          raise inteligentException.CreateByCode(5,['Reporte DIMM']);

      cdDatos.Open;

      CdDatos.First;
      while Not CdDatos.Eof do
      begin
        ExApp.Range[ColumnaNombre(RecX) + '1'] := CdDatos.RecNo;
        ExApp.Range[ColumnaNombre(RecX) + '2'].value := cdDatos.FieldByName('Nombregrupo').AsString;
        ExApp.Range[ColumnaNombre(RecX) + '3'].value := CdDatos.FieldByName('NombreColumna').AsString;
        ExApp.Columns[ColumnaNombre(RecX)+':'+ColumnaNombre(RecX)].ColumnWidth := CdDatos.FieldByName('Ancho').AsFloat;

        inc(RecX);
        cdDatos.Next;
      end;
      CombinarCeldaRango(cdDatos);

      //Datos de la Dimm
      if cdCuerpo.ProviderName = '' then
        if not CrearConjunto(cdCuerpo, 'nom_datos_dimm', ccCatalog) then
          raise inteligentException.CreateByCode(5, ['Datos Dimm']);

      if not CargarDatosFiltrados(cdCuerpo, 'Anio,IdTipoNomina,Sumado', [cxSpinAnio.Value,ListaTipoNomina,'Si']) then
        raise InteligentException.CreateByCode(6, ['nom_Datos_dimm', '2016,2,Si', 'Anio,IdTipoNomina,Si']);

      if cdCuerpo.Active then
        cdCuerpo.Refresh
      else
        cdCuerpo.Open;

      cdCuerpo.First;

      while not cdCuerpo.Eof do
      begin
        cdDatos.First;
        while not CdDatos.Eof do
        begin
          if Not cdDatos.FieldByName('campoConsulta').IsNull then
            ExApp.Range[ColumnaNombre(cdDatos.RecNo) + IntToStr(cdCuerpo.RecNo + 3)] := Trim(cdCuerpo.FieldByName(cdDatos.FieldByName('CampoConsulta').AsString).AsString)
          else if Not cdDatos.FieldByName('ValorFijo').IsNull then
            ExApp.Range[ColumnaNombre(cdDatos.RecNo) + IntToStr(cdCuerpo.RecNo + 3)] := Trim(cdDatos.FieldByName('ValorFijo').AsString)
          else if Not cdDatos.FieldByName('Formula').IsNull then
            ExApp.Range[ColumnaNombre(cdDatos.RecNo) + IntToStr(cdCuerpo.RecNo + 3)] := StringReplace(Trim(cdDatos.FieldByName('Formula').AsString), '#', IntToStr(cdCuerpo.RecNo + 3), [rfReplaceAll, rfIgnoreCase])
         else
            ExApp.Range[ColumnaNombre(cdDatos.RecNo) + IntToStr(cdCuerpo.RecNo + 3)] := '###';

          cdDatos.Next;
        end;
        cdCuerpo.Next;
      end;
      Seleccion := ExApp.Rows['4:'+ IntToStr(cdCuerpo.RecordCount+3)];
      Seleccion.Font.Name := 'Arial';
      Seleccion.Font.Size := 8;

      //Agregando botón culero
      //vbext_ct_StdModule = 1
      ExApp.VBE.ActiveVBProject.VBComponents.Add(1);
      ExApp.VBE.ActiveVBProject.VBComponents.Item('Módulo1').CodeModule.AddFromFile(ExtractFilePath(Application.ExeName) + 'Macros\Dimm.txt');
      Seleccion := ExApp.ActiveSheet.Buttons.Add[91.5, 56.25, 254.25, 58.5];
      Seleccion.OnAction := 'Multivaluados';
      Seleccion.Characters.Text := 'Generar Archivo';

      //Multivaludas en macro
      {
      Sub Multivaluados()

      Dim Cadena As String
      Dim Counter As Integer
      Dim incFila As Integer

      incFila = 4
      Do Until IsEmpty(ActiveCell)
        Cadena = ""

        For Counter = 1 To 134
          Cells(incFila, Counter).Select
          Cadena = Cadena & ActiveCell.Value & "|"
        Next Counter
        Cells(incFila, Counter + 2).Value = Cadena
        incFila = incFila + 1
        ActiveCell.Offset(1, 0).Select
      Loop

     End Sub
      }

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
      inteliDialog.ShowModal('Error', 'Ha ocurrido el siguiente error: ' + e.Message, mtError, [mbOK], 0);

    on e: inteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDimm.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDimm.CombinarCeldaRango(Data: TClientDataSet);
var
  Inicia, Termina: Integer;
  oldGroup: Integer;
  Seleccion: Variant;
  Color: String;
begin
  //Crear Rango a combinar
  Data.First;
  Inicia := Data.RecNo-1;
  OldGroup := Data.FieldByName('IdGrupo').AsInteger;
  while Not Data.eof do
  begin
    Color := (Data.FieldByName('Color').AsString);
    OldGroup := Data.FieldByName('IdGrupo').AsInteger;
    Termina := Data.RecNo;
    Data.Next;
    if Not Data.Eof and (Data.FieldByName('IdGrupo').AsInteger <> OldGroup) then
    begin

      Seleccion := ExApp.Range[LetraColumna(Inicia)+ '2:' +LetraColumna(termina-1)+'2'];
      Seleccion.MergeCells := True;
      Seleccion.HorizontalAlignMent := XlCenter;
      Seleccion.Font.Bold := True;
      Seleccion.Font.Name := 'Arial';
      Seleccion.Font.Size := 10;

      Seleccion := ExApp.Range[LetraColumna(Inicia) + '2:'+LetraColumna(Termina-1)+'3'];
      Seleccion.Font.Name := 'Arial';
      Seleccion.Font.Size := 10;
      Seleccion.interior.Pattern := 1;
      Seleccion.interior.PatternColorIndex := -4105;
      Seleccion.interior.Color := RGB(StrToInt(Copy(Color,0,3)),StrToInt(Copy(Color,5,3)),StrToInt(Copy(Color,9,3)));
      Seleccion.interior.PatternTintAndShade := 0;

      Inicia := Data.RecNo-1;
    end;

    if Data.Eof then
    begin
      Seleccion := ExApp.Range[LetraColumna(Inicia)+ '2:' +LetraColumna(termina)+'2'];
      Seleccion.MergeCells := True;
      Seleccion.HorizontalAlignMent := XlCenter;
      Seleccion.Font.Bold := True;

      Seleccion := ExApp.Range[LetraColumna(Inicia) + '2:'+LetraColumna(Termina)+'3'];
      Seleccion.interior.Pattern := 1;
      Seleccion.interior.PatternColorIndex := -4105;
      Seleccion.interior.Color := RGB(StrToInt(Copy(Color,0,3)),StrToInt(Copy(Color,5,3)),StrToInt(Copy(Color,9,3)));
      Seleccion.interior.PatternTintAndShade := 0;
    end;
  end;
  Seleccion := ExApp.Rows['3:3'];

  Seleccion.RowHeight := 120;
  Seleccion.HorizontalAlignment := 1;
  Seleccion.VerticalAlignment := xlBottom;
  Seleccion.WrapText := True;
  Seleccion.Orientation := 0;
  Seleccion.IndentLevel := 0;
  Seleccion.ShrinkToFit := False;
  Seleccion.ReadingOrder := xlContext;

  Seleccion := ExApp.Rows['2:3'];
  {InsideVertical}
  Seleccion.Borders[11].LineStyle := xlContinuous;
  Seleccion.Borders[11].Weight := xlThin;
  {InsideHorizontal}
  Seleccion.Borders[12].LineStyle := xlContinuous;
  Seleccion.Borders[12].Weight := xlThin;
  {Top}
  Seleccion.Borders[7].LineStyle := xlContinuous;
  Seleccion.Borders[7].Weight := xlMedium;
  {Bottom}
  Seleccion.Borders[8].LineStyle := xlContinuous;
  Seleccion.Borders[8].Weight := xlMedium;

  Seleccion.Borders[9].LineStyle := xlContinuous;
  Seleccion.Borders[9].Weight := xlThin;

  Seleccion.Borders[10].LineStyle := xlContinuous;
  Seleccion.Borders[10].Weight := xlThin;
  Seleccion := ExApp.Rows['3:3'];

  {Top}
  Seleccion.Borders[7].LineStyle := xlContinuous;
  Seleccion.Borders[7].Weight := xlMedium;
  {Bottom}
  Seleccion.Borders[8].LineStyle := xlContinuous;
  Seleccion.Borders[8].Weight := xlMedium;

end;

procedure TFrmDimm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdTipoNomina.ProviderName <> '' then
    EliminarConjunto(cdTipoNomina);

  if CdDatos.ProviderName <> '' then
    EliminarConjunto(cdDatos);

  if CdCuerpo.ProviderName <> '' then
    EliminarConjunto(CdCuerpo);
end;

procedure TFrmDimm.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
    raise inteligentException.CreateByCode(5, ['nom_tiponomina']);

end;

procedure TFrmDimm.FormShow(Sender: TObject);
var
  Cursor: TCursor;

begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppStart;
      cxSpinAnio.Value := YearOf(Now);
      if not CargarDatosFiltrados(cdTipoNomina, 'IdTipoNomina', [-1]) then
        raise inteligentException.CreateByCode(6, ['nom_tiponomina', '-1','IdTipoNomina']);

      if cdTipoNomina.Active then
        cdTipoNomina.Refresh
      else
        cdTipoNomina.Open;

      lstTipoNomina.Clear;
      cdTipoNomina.First;
      while not cdTipoNomina.Eof do
      begin
        with lstTipoNomina.Items.Add do
        begin
          Tag := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
          Text := cdTipoNomina.FieldByName('Titulo').AsString;
          if (tag = 1) or (tag = 2)  then
            Checked := True;
        end;
        cdTipoNomina.Next;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal('Error','Ha ocurrido el siguiente error: ' + e.Message, mtError, [mbOK], 0);

    on e: inteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

end.
