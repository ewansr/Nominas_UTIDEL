unit UTFrmDiasFestivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Menus, AdvGlowButton, StdCtrls, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Mask, JvExMask, JvSpin, Grids, DBGrids,
  ExtCtrls, JvExControls, JvLabel, DBCtrls, AdvCombo, AdvEdit, DBAdvEd,
  ClientModuleUnit1, DateUtils, StrUtils;

type
  TRectCoords = record
    fTop: SmallInt;
    fLeft: SmallInt;
    fBottom: SmallInt;
    fRight: SmallInt;
  end;
  TFrmDiasFestivos = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl_datosLinea: TPanel;
    pm1: TPopupMenu;
    AgregarPeriodo1: TMenuItem;
    EditarPeriodo1: TMenuItem;
    EliminarPeriodo1: TMenuItem;
    cdFecha: TClientDataSet;
    cdDiasFestivos: TClientDataSet;
    dsDiasFestivos: TDataSource;
    cbAnio: TAdvComboBox;
    cdDiasFestivosUpt: TClientDataSet;
    yp: TImage;
    dbgrd1: TDBGrid;
    Edit3: TJvLabel;
    btnNuevoAnio: TAdvGlowButton;
    btnGenerarAuto: TAdvGlowButton;
    Panel1: TPanel;
    Btn_Cerrar: TAdvGlowButton;
    Panel2: TPanel;
    Edit1: TJvLabel;
    edtAnio: TAdvEdit;
    JvLabel1: TJvLabel;
    edtFecha: TJvDatePickerEdit;
    JvLabel2: TJvLabel;
    cbTipo: TComboBox;
    Panel3: TPanel;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    procedure AgregarPeriodo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure EditarPeriodo1Click(Sender: TObject);
    procedure EliminarPeriodo1Click(Sender: TObject);
    procedure cbAnioChange(Sender: TObject);
    procedure btnNuevoAnioClick(Sender: TObject);
    procedure btnGenerarAutoClick(Sender: TObject);
    procedure edtFechaClick(Sender: TObject);
    procedure edtFechaButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CerrarClick(Sender: TObject);


  private
    { Private declarations }
    FrmEmergente: TForm;
    ArrRectCoords: array[1..12, 1..37] of TRectCoords;
    ArrFirstDayColumn: array[1..12] of SmallInt;
    ArrNumMonthDays: array[1..12] of SmallInt;
    DisplayedYear: Word;
    ApuntaFecha: TDate;
    Borrando: Boolean;
    procedure CrearVentana;
    procedure CargarDatos;
    procedure validarRegistros;
    procedure CalendarioAnual(Pyear: Word; MostrarHoy: Boolean);
    procedure genDescansoAuto(anio: integer);
  public
    { Public declarations }
  end;
Const
  ArrMonthNames: array[1..12] of string[9] = ('Enero', 'Febrero', 'Marzo',
                                               'Abril', 'Mayo', 'Junio', 'Julio',
                                               'Agosto', 'Septimbre', 'Octubre',
                                               'Noviembre', 'Deciembre');

  ArrTierCoord: array[1..6] of SmallInt = (0, 3, 6, 9, 12, 15);

var
  FrmDiasFestivos: TFrmDiasFestivos;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure TFrmDiasFestivos.AgregarPeriodo1Click(Sender: TObject);
begin
  edtAnio.Text := cdDiasFestivos.FieldByName('Anio').asString;
  edtAnio.enabled := false;
  crearVentana;
  cdDiasFestivosUpt.append;
  frmEmergente.showMOdal;
end;

procedure TFrmDiasFestivos.btn1Click(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crHourGlass;

    if edtFecha.Visible then
    begin
      // Grabar la fecha capturada
      edtFechaClick(nil);
      validarRegistros;
      if cdDiasFestivosUpt.State = dsInsert then
      begin
        cdDiasFestivosUpt.FieldByName('idDiasFestivos').asInteger := 0;
        cdDiasFestivosUpt.FieldByName('Anio').asInteger := strToInt(edtAnio.Text);
        cdDiasFestivosUpt.FieldByName('Fecha').asDateTime :=  strToDate(edtFecha.Text);
        cdDiasFestivosUpt.FieldByName('Tipo').asString :=cbTipo.text;
        cdDiasFestivosUpt.post;
        cdDiasFestivosUpt.ApplyUpdates(-1);
      end
      else
      begin
        cdDiasFestivosUpt.FieldByName('Anio').asInteger := strToInt(edtAnio.Text);
        cdDiasFestivosUpt.FieldByName('Fecha').asDateTime :=  strToDate(edtFecha.Text);
        cdDiasFestivosUpt.FieldByName('Tipo').asString :=cbTipo.text;
        cdDiasFestivosUpt.post;
        cdDiasFestivosUpt.ApplyUpdates(-1);
      end;
    end
    else
    begin
      // Generar todas las fechas festivas de acuerdo a la ley
      GenDescansoAuto(StrtoInt(edtAnio.Text));
      cbAnio.Text := edtAnio.Text;
    end;

    CargarDatos;
    cdDiasFestivos.Refresh;
    cbAnioChange(nil);
    FrmEmergente.Close;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmDiasFestivos.btnGenerarAutoClick(Sender: TObject);
begin
  GenDescansoAuto(strtoInt(cbAnio.text));
end;

procedure TFrmDiasFestivos.btnNuevoAnioClick(Sender: TObject);
var
  AltoEmergente: Integer;
begin
  CrearVentana;

  Try
    // Modificar el formulario para la captura de año
    JvLabel1.Visible := False;
    edtFecha.Visible := False;
    JvLabel2.Visible := False;
    cbTipo.Visible := False;
    AltoEmergente := FrmEmergente.Height;
    FrmEmergente.Height := AltoEmergente - 50;

    frmEmergente.caption := 'Definir Fechas del nuevo año.';
    edtAnio.Enabled := True;

    cdDiasFestivosUpt.append;
    FrmEmergente.ShowModal;
  Finally
    JvLabel1.Visible := True;
    edtFecha.Visible := True;
    JvLabel2.Visible := True;
    cbTipo.Visible := True;
    FrmEmergente.Height := AltoEmergente;
  End;
end;

procedure TFrmDiasFestivos.Btn_CerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDiasFestivos.CalendarioAnual(Pyear: Word; MostrarHoy: Boolean);
var
  GX, GY, TX, TY: SmallInt;
  x, y, c, nd, ld, nm, ny: SmallInt;
  MonthRect, DayRect, WeekendRect, HToday: TRect;
  FechaProceso: TDate;
  OrPos: Integer;
  Anio, Mes, Dia: Word;
  OldAnio: Word;
  OldFecha: TDate;

  function DibujarGuardia(PDateFrom, PDateTo: TDate; PColor, PTier: Integer; Activo: Boolean = False): Boolean;
  var
    i, ld, NumMeses, StartCol, EndCol: SmallInt;
    YYFrom, MMFrom, DDFrom: Word;
    YYTo, MMTo, DDTo,
    NewRed, NewGreen, NewBlue: Word;
    BitMap: TBitMap;
    LocWidth, LocLeft: Integer;
    OrigColor: TColor;
  begin
    Result := True;
    DecodeDate(PDateFrom, YYFrom, MMFrom, DDFrom);
    if YYFrom = PYear then
    begin
      DecodeDate(PDateTo, YYTo, MMTo, DDTo);

      if YYFrom <> YYTo then
      begin
        YYTo := YYFrom;
        MMTo := 12;
        DDTo := 31;
      end;

      YP.Canvas.Pen.Color := PColor;
      YP.Canvas.Pen.Width := 1;
      NumMeses := MMTo - MMFrom + 1;
      OrigColor := pColor;
      for i := 1 to NumMeses do
      begin
        pColor := OrigColor;

        StartCol := ArrFirstDayColumn[MMFrom] + (DDFrom - 1);
        if MMFrom < MMTo then
        begin
          ld := ArrNumMonthDays[MMFrom];
        end
        else
        begin
          ld := DDTo;
        end;

        EndCol := ArrFirstDayColumn[MMFrom] + (ld - 1);

        BitMap := TBitMap.Create;
        Try
          if Activo then
          begin
            NewRed := Trunc(GetRValue(pColor) / 1.7);
            NewGreen := Trunc(GetGValue(pColor) / 1.7);
            NewBlue := Trunc(GetBValue(pColor) / 1.7);

            if NewRed < 0 then NewRed := 0;
            if NewGreen < 0 then NewGreen := 0;
            if NewBlue < 0 then NewBlue := 0;

            pColor := RGB(NewRed, NewGreen, NewBlue);
            BitMap.Canvas.Font.Color := clWhite;
          end
          else
            BitMap.Canvas.Font.Color := clBlack;

          BitMap.Width := ArrRectCoords[MMFrom, EndCol].fRight - 4;
          BitMap.Height := 19;
          BitMap.Canvas.Brush.Color := pColor;
          locWidth := 1 + ArrRectCoords[MMFrom, EndCol].fRight - ArrRectCoords[MMFrom, StartCol].fLeft;
          locLeft := ArrRectCoords[MMFrom, StartCol].fLeft;
          BitMap.Canvas.RoundRect(0, 0, LocWidth, 19, 10, 10);

          YP.Canvas.Pen.Color := clWhite;
          YP.Canvas.MoveTo(locLeft, ArrRectCoords[MMFrom, StartCol].fBottom - ArrTierCoord[PTier]);
          YP.Canvas.LineTo(ArrRectCoords[MMFrom, EndCol].fRight, ArrRectCoords[MMFrom, EndCol].fBottom - ArrTierCoord[PTier]);

          BitBlt(YP.Canvas.Handle, locLeft, (ArrRectCoords[MMFrom, StartCol].fBottom - ArrTierCoord[PTier]) - 22, ArrRectCoords[MMFrom, EndCol].fRight, 100, BitMap.Canvas.Handle, 0, 0, SRCAND);
        Finally
          BitMap.Free;
        End;
        Inc(MMFrom);
        DDFrom := 1;
      end;
    end;
  end;

begin
  DisplayedYear := PYear;
  YP.Picture := nil;
  YP.Canvas.FloodFill(0, 0, clWhite, fsSurface);
  YP.Canvas.Pen.Width := 1;
  YP.Canvas.Pen.Color := clBlack;
  TY := Round(YP.Height / 13);
  YP.Canvas.MoveTo(0, TY);
  YP.Canvas.LineTo(YP.Width, TY);
  GY := TY * 2;
  YP.Canvas.MoveTo(60, 0);
  YP.Canvas.LineTo(60, YP.Height);
  TX := Round((YP.Width - 60) / 37);
  GX := TX + 60;
  for x := 1 to 36 do
  begin
    for y := 1 to 12 do
      begin
        ArrRectCoords[y, x].fLeft := (GX - TX) + 2;
        ArrRectCoords[y, x].fRight := GX - 2;
      end;
    //*****
    GX := GX + TX;
  end;

  for y := 1 to 12 do
  begin
    ArrRectCoords[y, 37].fLeft := (GX - TX) + 2;
    ArrRectCoords[y, 37].fRight := GX - 2;
  end;

  for y := 1 to 11 do
  begin
    for x := 1 to 37 do
      begin
        ArrRectCoords[y, x].fTop := (GY - TY) + 2;
        ArrRectCoords[y, x].fBottom := GY - 2;
      end;
    GY := GY + TY;
  end;

  for x := 1 to 37 do
  begin
    ArrRectCoords[12, x].ftop := (GY - TY) + 2;
    ArrRectCoords[12, x].fBottom := GY - 2;
  end;

  MonthRect.TopLeft := Point(0, ArrRectCoords[1, 1].fTop - 1);
  MonthRect.BottomRight := Point(ArrRectCoords[12, 1].fLeft - 2, ArrRectCoords[12, 1].fBottom + 1);
  YP.Canvas.Brush.Color := clLtGray;
  YP.Canvas.FillRect(MonthRect);

  DayRect.TopLeft := Point(ArrRectCoords[1, 1].fLeft - 1, 0);
  DayRect.BottomRight := Point(ArrRectCoords[1, 37].fRight, ArrRectCoords[1, 37].fTop - 2);
  YP.Canvas.FillRect(DayRect);
  YP.Canvas.Brush.Color := clLtGray;

  for x := 1 to 12 do
  begin
    YP.Canvas.TextOut(3, ArrRectCoords[x, 1].fTop + 2, ArrMonthNames[x]);
  end;

  y := 1;
  for x := 1 to 5 do
  begin
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'L');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'M');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'M');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'J');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'V');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'S');
    Inc(y);
    YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'D');
    Inc(y);
  end;
  YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'L');
  Inc(y);
  YP.Canvas.TextOut(ArrRectCoords[1, y].fLeft + 2, 4, 'M');
  YP.Canvas.Brush.Color := clMoneyGreen;

  for x := 1 to 5 do
  begin
    WeekendRect.TopLeft := Point(ArrRectCoords[1, (x * 6) + (x - 1)].fLeft - 1, ArrRectCoords[1, (x * 6) + (x - 1)].fTop - 1);
    WeekendRect.BottomRight := Point(ArrRectCoords[12, (x * 6) + (x - 1)].fRight + 2, ArrRectCoords[12, (x * 6) + (x - 1)].fBottom + 1);
    YP.Canvas.FillRect(WeekendRect);
  end;

  for x := 1 to 5 do
  begin
    WeekendRect.TopLeft := Point(ArrRectCoords[1, (x * 7)].fLeft - 1, ArrRectCoords[1, (x * 7)].fTop - 1);
    WeekendRect.BottomRight := Point(ArrRectCoords[12, (x * 7)].fRight + 1, ArrRectCoords[12, (x * 7)].fBottom + 1);
    YP.Canvas.FillRect(WeekendRect);
  end;

  GX := TX + 60;
  for x := 1 to 36 do
  begin
    YP.Canvas.MoveTo(GX, 0);
    YP.Canvas.LineTo(GX, YP.Height);
    GX := GX + TX;
  end;

  GY := TY * 2;
  for y := 1 to 11 do
  begin
    YP.Canvas.MoveTo(0, GY);
    YP.Canvas.LineTo(YP.Width, GY);
    GY := GY + TY;
  end;

  YP.Canvas.Brush.Color := clWhite;
  YP.Canvas.Font.Color := clRed;
  YP.Canvas.Font.Style := [fsBold];
  YP.Canvas.TextOut(3, 4, IntToStr(PYear));
  YP.Canvas.Font.Color := clBlack;
  YP.Canvas.Font.Style := [];
  for x := 1 to 12 do
  begin
    FechaProceso := EncodeDate(PYear, x, 1);
    ArrFirstDayColumn[x] := DayOfTheWeek(FechaProceso);
    ArrNumMonthDays[x] := DaysInMonth(FechaProceso);
  end;

  nd := DayOfTheMonth(Now);
  nm := MonthOfTheYear(Now);
  ny := YearOf(Now);
  for y := 1 to 12 do
  begin
    c := ArrFirstDayColumn[y];
    for x := 1 to ArrNumMonthDays[y] do
    begin
      YP.Canvas.Brush.Color := clWhite;
      YP.Canvas.Font.Color := clBlack;
      case
        c of 6, 7, 13, 14, 20, 21, 27, 28, 34, 35:  YP.Canvas.Brush.Color := clMoneyGreen;
      end;
      if (ny = PYear) and (nm = y) and (nd = x) then
      begin
        if MostrarHoy then
          begin
            HToday.TopLeft := Point(ArrRectCoords[y, c].fLeft, ArrRectCoords[y, c].fTop);
            HToday.BottomRight := Point(ArrRectCoords[y, c].fRight, ArrRectCoords[y, c].fBottom);
            YP.Canvas.Brush.Color := clRed;
            YP.Canvas.Font.Color := clWhite;
            YP.Canvas.FillRect(HToday);
          end;
      end;
      YP.Canvas.TextOut(ArrRectCoords[y, c].fLeft + 1, ArrRectCoords[y, c].fTop + 2, IntToStr(x));
      Inc(c);
    end;
  end;

  cdDiasFestivos.DisableControls;
  OldAnio := 1;
  Try
    OrPos := cdDiasFestivos.RecNo;

    cdDiasFestivos.first;//linea agregada
    while not cdDiasFestivos.Eof do
    begin
      // Marcar el descanso
      //if OldAnio <> 0 then
      //begin
      DecodeDate(cdDiasFestivos.FieldByName('Fecha').AsDateTime, Anio, Mes, Dia); //linea modificada

      OldAnio := Anio;
      OldFecha := cdDiasFestivos.FieldByName('Fecha').AsDateTime + 1;

      if cdDiasFestivos.FieldByName('Tipo').asString = 'Ley' then
        DibujarGuardia(cdDiasFestivos.FieldByName('Fecha').AsDateTime , cdDiasFestivos.FieldByName('Fecha').AsDateTime, clYellow, 1);

      if cdDiasFestivos.FieldByName('Tipo').asString = 'Local' then
        DibujarGuardia(cdDiasFestivos.FieldByName('Fecha').AsDateTime , cdDiasFestivos.FieldByName('Fecha').AsDateTime , clPurple, 1);

      if cdDiasFestivos.FieldByName('Tipo').asString = 'Sindical' then
        DibujarGuardia(cdDiasFestivos.FieldByName('Fecha').AsDateTime , cdDiasFestivos.FieldByName('Fecha').AsDateTime , clLime, 1);
      //end;



      cdDiasFestivos.Next;
    end;
  Finally
    cdDiasFestivos.RecNo := OrPos;
    cdDiasFestivos.EnableControls;
  end;
end;

procedure TFrmDiasFestivos.CargarDatos;
var
  cursor: TCursor;
begin
  try
    cursor := screen.Cursor;
    screen.Cursor := crAppStart;
    if Not CargarDatosFiltrados(cdDiasFestivos,'idDiasFestivos',[-1]) then
      raise InteligentException.CreateByCode(5,['Dias Festivos']);

    if cdDiasFestivos.active then
      cdDiasFestivos.refresh
    else
      cdDiasFestivos.Open;

    if cdDiasFestivos.RecordCount <=0 then
    begin
      if InteliDialog.ShowModal('Aviso', 'Al parecer no hay ningún registro de dias festivos, ¿Deseas Agregar uno Nuevo?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin
        cdDiasFestivosupt.Append;
        btnNuevoAnioClick(nil);
      end;
    end;

    if Not CargarDatosFiltrados(cdFecha,'idDiasFestivos',[-1]) then
      raise InteligentException.CreateByCode(5,['Dias Festivos']);

    if cdFecha.active then
      cdFecha.Refresh
    else
      cdFecha.Open;

    cbAnio.Clear;
    cdFecha.first;
    while not cdFecha.eof do
    begin
      cbAnio.Items.Add(cdFecha.FieldByName('Anio').asString);
      cdFecha.Next;
    end;
    cbAnio.ItemIndex := 0;

    if Not CargarDatosFiltrados(cdDiasFestivos,'anio',[cbanio.text]) then
      raise InteligentException.CreateByCode(5,['Dias Festivos']);

    if cdDiasFestivos.active then
      cdDiasFestivos.refresh
    else
      cdDiasFestivos.Open;

    if Not CargarDatosFiltrados(cdDiasFestivosupt,'idDiasFestivos',[-9]) then
      raise InteligentException.CreateByCode(5,['Dias Festivos']);

    if cdDiasFestivosUpt.active then
      cdDiasFestivosUpt.Refresh
    else
      cdDiasFestivosupt.open;

    CalendarioAnual(strToInt(cbanio.text),False);
  finally
    screen.cursor := cursor;
  end;
end;

procedure TFrmDiasFestivos.cbAnioChange(Sender: TObject);
var cursor: Tcursor;
begin
  try
    cursor := screen.Cursor;
    screen.Cursor := crAppStart;
    if Not CargarDatosFiltrados(cdDiasFestivos,'anio',[cbAnio.text]) then
      raise InteligentException.CreateByCode(5,['Dias Festivos']);

    if cdDiasFestivos.active then
      cdDiasFestivos.refresh
    else
      cdDiasFestivos.Open;

    CalendarioAnual(strToInt(cbAnio.text),false);
  finally
    screen.cursor := cursor;
  end;
end;

procedure TFrmDiasFestivos.crearVentana;
begin
  frmEmergente := tform.create(self);
  ClientModule1.ComponentColor(frmEmergente);
  frmEmergente.Width := pnl_DatosLinea.Width + 20;
  frmEmergente.Height := ((pnl_DatosLinea.Height) + 40);

  pnl_DatosLinea.Align := alClient;
  pnl_DatosLinea.visible := True;
  pnl_DatosLinea.parent := frmEmergente;

  cbTipo.ItemIndex := 1;
end;

procedure TFrmDiasFestivos.EditarPeriodo1Click(Sender: TObject);
begin
    if Not CargarDatosFiltrados(cdDiasFestivosUpt,'idDiasFestivos',[cdDiasFestivos.fieldByName('IdDiasFestivos').AsInteger]) then
      raise InteligentException.CreateByCode(5, [' Dias Festivos']);

    if cdDiasFestivosUpt.active then
      cdDiasFestivosupt.Refresh
    else
      cdDiasFestivosUpt.open;

    edtFecha.Text := cdDiasFestivos.FieldByName('Fecha').AsString;
    edtAnio.text := cdDiasFestivos.FieldByName('Anio').asString;
    cbTipo.ItemIndex:= cbTipo.Items.IndexOf(cdDiasFestivos.FieldByName('tipo').asString);
    edtAnio.Enabled := false;
    crearVentana;
    cdDiasFestivosupt.Edit;
    frmEmergente.ShowModal;
end;


procedure TFrmDiasFestivos.edtFechaButtonClick(Sender: TObject);
begin
  edtFechaClick(nil);
end;

procedure TFrmDiasFestivos.edtFechaClick(Sender: TObject);
var
  anio, mes, dia: word;
  fechaC: String;
begin
  DecodeDate(StrToDate(edtFecha.Text), Anio,Mes, Dia);
  fechaC := inttoSTR(dia) + '/' + inttoSTR(mes) + '/' + edtAnio.text ;
  edtFecha.text := fechaC;
end;

procedure TFrmDiasFestivos.EliminarPeriodo1Click(Sender: TObject);
begin
 try
    //cdDiasFestivos.Open;

    if not CargarDatosFiltrados(cdDiasFestivosUpt,'idDiasFestivos',[cdDiasFestivos.FieldByName('idDiasFestivos').AsInteger]) then
      raise InteligentException.CreateByCode(5,['id Dias Festivos']);

    if cdDiasFestivosUpt.Active then
      cdDiasFestivosUpt.refresh
    else
      cdDiasFestivosUpt.Open;

    if cdDiasFestivosUpt.RecordCount = 1 then
    begin
      if InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro ' + cdDiasFestivos.FieldByName('Fecha').asstring + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin
        cdDiasFestivosUpt.Delete;
        cdDiasFestivosUpt.applyUpdates(-1);
        cbAnioChange(Sender);
        //CargarDatos;
      end;
    end
    else
      raise InteligentException.CreateByCode(22, ['Dias Festivos']);
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('No Hay Datos Para Modificar', 'Ó La Lista Esta Vacia: '+ #10 + #10 + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmDiasFestivos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto([cdDiasFestivos,cdDiasFestivosUpt,cdFecha])
end;

procedure TFrmDiasFestivos.FormCreate(Sender: TObject);
begin
  ClientModule1.ComponentColor(self);
  if Not CrearConjunto(cdDiasFestivos, 'rhu_diasFestivos', ccCatalog) then
    raise InteligentException.createbycode(5,['Dias Festivos']);
  cdDiasFestivos.Open;

  if Not CrearConjunto(cdDiasFestivosUpt, 'rhu_diasFestivos', ccUpdate) then
    raise InteligentException.createbycode(5,['Dias Festivos']);
  cdDiasFestivosUpt.Open;

  if Not CrearConjunto(cdFecha, 'rhu_diasFestivos', ccSelect) then
    raise InteligentException.createbycode(5,['Dias Festivos']);
  cdFecha.Open;

  CargarDatos;
end;

procedure TFrmDiasFestivos.FormResize(Sender: TObject);
begin
  //cbAnioChange(nil);
end;

procedure TFrmDiasFestivos.genDescansoAuto(anio: integer);
const
  FileName = 'DiasFestivos.itc';
var
  FechasLey: TStringList;
  i, nFile: integer;
  Cursor: TCursor;
  ArchivoTexto: TextFile;
  Archivo: TSearchRec;
  Ruta, Cadena: String;
  Creacion, FileSize, Leidos: Integer;
  Buffer: PAnsiChar;
  nDia, sDia, Mes, sAnio, Cta: Word;
  Fecha: TDate;
begin
  // Tratar de localizar el archivo de los días festivos
  Ruta := 'Configuracion\';

  Try
    cursor := screen.cursor;
    screen.Cursor := crAppStart;
    // Verificar si la carpeta existe
    if Not DirectoryExists(Ruta) then
      ForceDirectories(ExtractFilePath(ParamStr(0)) + Ruta);

    Try
      // Verificar si el archivo ya existe
      if FindFirst(Ruta + FileName, faAnyFile, Archivo) = 0 then
      begin
        Cadena := Archivo.Name + ':' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp));

        // Verificar si el archivo está actualizado
        if Not CompararArchivo(Ruta, Cadena) then
          Cadena := ActualizaArchivo(Ruta, FileName)
        else
          Cadena := '';
      end
      else
      begin
        Cadena := '';

        // Actualizar el reporte con el reporte que se encuentra en la base de datos
        Try
          Cadena := ActualizaArchivo(Ruta, FileName);
        Except
          raise InteligentException.CreateByCode(15, [FileName]);
        End;
      end;

      // Actualizar el reporte con el reporte que se encuentra en la base de datos
      if Cadena <> '' then
      begin
        Try
          Creacion := StrToInt(Copy(Cadena, 1, 20));
          Cadena := Copy(Cadena, 21, Length(Cadena));
          AssignFile(ArchivoTexto, ExtractFilePath(ParamStr(0)) + Ruta + FileName);
          Rewrite(ArchivoTexto);
          WriteLn(ArchivoTexto, Cadena);
          CloseFile(ArchivoTexto);

          // Los primero cuatro bytes corresponden a la fecha de creación

          Try
            nFile := FileOpen(ExtractFilePath(ParamStr(0)) + Ruta + FileName, fmOpenReadWrite or fmShareDenyWrite);
            FileSetDate(nFile, Creacion);
          Finally
            FileClose(nFile);
          End;
        Except
          raise InteligentException.CreateByCode(15, [FileName]);
        End;
      end
      else
      begin
        // Leer los datos del archivo actual
        nFile := FileOpen(ExtractFilePath(ParamStr(0)) + Ruta + FileName, fmOpenReadWrite or fmShareDenyWrite);
        if nFile > 0 then
        begin
          Try
            FileSize := FileSeek(nFile, 0, 2);
            FileSeek(nFile, 0, 0);
            Buffer := PAnsiChar(System.AllocMem(nFile + 1));
            Leidos := FileRead(nFile, Buffer^, FileSize);
            Cadena := Buffer;
          Finally
            FreeMem(Buffer);
          End;
        end;

        FileClose(nFile);
      end;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;

    // Darle formato a la cadena resultante
    Cadena := StringReplace(Cadena, ',', '', [rfReplaceAll, rfIgnoreCase]);
    Cadena := StringReplace(Cadena, ' ', '', [rfReplaceAll, rfIgnoreCase]);
    Cadena := StringReplace(Cadena, #13 + #10, ',', [rfReplaceAll, rfIgnoreCase]);

    FechasLey := TStringList.Create;
    FechasLey.CommaText := Cadena;
    i := 0;
    while (i < FechasLey.Count) do
    begin
      if (FechasLey[i][1] = '#') or (Length(Trim(FechasLey[i])) = 0) then
        FechasLey.Delete(i)
      else
      begin
        // Verificar si tiene algún comentario a la derecha
        if Pos('##', FechasLey[i]) > 0 then
          FechasLey[i] := Copy(FechasLey[i], 1, Pos('##', FechasLey[i]) -1);
        Inc(i);
      end;
    end;

    for i := 0 to FechasLey.Count -1 do
    begin
      Fecha := 0;

      // Verificar si se trata de un día específico de la semana en el mes
      if (Length(FechasLey[i]) = 8) and (FechasLey[i][1] = '<') then
      begin
        nDia := StrToInt(FechasLey[i][2]);
        sDia := StrToInt(FechasLey[i][4]);
        Mes := StrToInt(Copy(FechasLey[i], 7, 2));

        // Localizar el sDia Numero nDia para el mes Mes en el año Anio
        Fecha := StrToDate('01/' + RightStr('0' + IntToStr(Mes), 2) + '/' + IntToStr(Anio));
        Cta := 0;
        repeat
          if DayOfWeek(Fecha) = sDia then
            inc(Cta);
          if Cta < nDia then
            Fecha := Fecha + 1;
        until Cta >= nDia;
      end;

      // Verificar si es una fecha específica
      if Length(FechasLey[i]) = 5 then
      begin
        Try
          nDia := StrToInt(Copy(FechasLey[i], 1, 2));
          Mes := StrToInt(Copy(FechasLey[i], 4, 2));
          Fecha := StrToDate(RightStr('0' + IntToStr(nDia), 2) + '/' + RightStr('0' + IntToStr(Mes), 2) + '/' + IntToStr(Anio));
        Except
          ;
        End;
      end;

      if Length(FechasLey[i]) = 12 then
      begin
        nDia := StrToInt(Copy(FechasLey[i], 1, 2));
        sDia := StrToInt(Copy(FechasLey[i], 7, 1));
        Mes := StrToInt(Copy(FechasLey[i], 4, 2));
        sAnio := StrToInt(Copy(FechasLey[i], 9, 4));

        if ((Anio - sAnio) Div sDia) = 0 then
          Fecha := StrToDate(RightStr('0' + IntToStr(nDia), 2) + '/' + RightStr('0' + IntToStr(Mes), 2) + '/' + IntToStr(Anio));
      end;

      if Fecha > 0 then
      begin
        cdDiasFestivosUpt.Close;

        // Verificar si la fecha ya existe
        if not CargarDatosFiltrados(cdDiasFestivosUpt, 'Fecha', [ClientModule1.DatetoStrSql(Fecha)]) then
          raise inteligentException.CreateByCode(6, ['Dias Festivos', ClientModule1.DatetoStrSql(Fecha) + 'Fecha']);

        if CuantosRegistros(cdDiasFestivosUpt) = 0 then
        begin
          // Registrar la fecha
          cdDiasFestivosupt.Open;
          if cdDiasFestivosupt.RecordCount = 0 then
          begin
            Try
              cddiasFestivosupt.append;
              cdDiasFestivosUpt.FieldByName('IdDiasFestivos').asInteger := 0;
              cdDiasFestivosUpt.FieldByName('Anio').asInteger := Anio;
              cdDiasFestivosUpt.FieldByName('Fecha').asDateTime :=  Fecha;
              cdDiasFestivosUpt.FieldByName('Tipo').asString := 'Ley';
              cdDiasFestivosUpt.Post;
              cdDiasFestivosUpt.ApplyUpdates(-1);
            Except
              cdDiasFestivosupt.Cancel;
            End;
          end;
        end;
      end;
    end;
  Finally
    screen.cursor := cursor;
    FechasLey.Free;
  End;
end;

procedure TFrmDiasFestivos.validarRegistros;
begin
  if trim(edtAnio.text) = '' then
    raise InteligentException.createBycode(18,['Año']);
  if trim(edtFecha.text) = '' then
    raise InteligentException.createBycode(18,['Fecha']);
  if trim(cbTipo.text) = '' then
    raise InteligentException.createBycode(18,['Año']);
end;

end.
