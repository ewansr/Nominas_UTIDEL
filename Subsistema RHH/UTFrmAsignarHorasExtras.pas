unit UTFrmAsignarHorasExtras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls,
  NxColumns, NxColumnClasses, StdCtrls, DB,DBClient, AdvCombo,DateUtils, Menus,
  ImgList, AdvSmoothButton,URegistro, cxButtons, cxGraphics, cxLookAndFeels,
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
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxLabel, dxSkinsForm;

type
  TDuplicar = (Siguiente,Todas,Abajo,Anterior,Arriba);


  TFrmAsignarHorasExtras = class(TForm)
    Panel1: TPanel;
    GridEmpleados: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    DsHExtras: TDataSource;
    CbbPuestos: TAdvComboBox;
    PopupPrincipal: TPopupMenu;
    NxTextColumn3: TNxTextColumn;
    LineaSeleccionada1: TMenuItem;
    Duplicarasiguiente1: TMenuItem;
    Duplicaratodas1: TMenuItem;
    DuplicarHaciaabajo1: TMenuItem;
    ImageDias: TImageList;
    Btn_Guardar: TcxBUtton;
    Btn_Cerrar: TcxBUtton;
    Duplicarvaloresaanterior1: TMenuItem;
    Duplicarvaloreshaciaarriba1: TMenuItem;
    CopiarHorasNminaAnterior1: TMenuItem;
    NxColumnTotalHoras: TNxTextColumn;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonGuardar: TdxBarLargeButton;
    DxBLbuttonCerrar: TdxBarLargeButton;
    cxlbl1: TcxLabel;
    cxlblTotalHrs: TcxLabel;
    dxskncntrlr1: TdxSkinController;
    LblNombre: TcxLabel;
    LblExtras: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure CbbPuestosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Duplicarasiguiente1Click(Sender: TObject);
    procedure Duplicaratodas1Click(Sender: TObject);
    procedure DuplicarHaciaabajo1Click(Sender: TObject);
    procedure GridEmpleadosColumnResize(Sender: TObject; ACol: Integer);
    procedure GridEmpleadosCellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure Btn_GuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CerrarClick(Sender: TObject);
    procedure Duplicarvaloreshaciaarriba1Click(Sender: TObject);
    procedure Duplicarvaloresaanterior1Click(Sender: TObject);
    procedure CopiarHorasNminaAnterior1Click(Sender: TObject);
    procedure GridEmpleadosCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure GridEmpleadosAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure GridEmpleadosChange(Sender: TObject; ACol, ARow: Integer);
  private
    procedure LlenarGrid(Datas: Tclientdataset);
    procedure LlenarCombo(Data: Tclientdataset);
    procedure DuplicarLinea(Modo: tduplicar);
    procedure GuardarCambios(Grid: tnextgrid; Datos: Tclientdataset);
  public
    Desde:TDate;
    Hasta:TDate;
    DsHExtrasOrg:Tdatasource;
    IdNomina, IdTipoNomina: Integer;
  end;

var
  FrmAsignarHorasExtras: TFrmAsignarHorasExtras;

implementation
uses ClientModuleUnit1, UInteliDialog;

{$R *.dfm}

procedure TFrmAsignarHorasExtras.Btn_CerrarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmAsignarHorasExtras.Btn_GuardarClick(Sender: TObject);
begin
  //Btn_Guardar.SetFocus;
  CbbPuestos.SetFocus;
  GuardarCambios(GridEmpleados,TClientDataSet(DsHExtrasOrg.DataSet));
end;

procedure TFrmAsignarHorasExtras.CbbPuestosClick(Sender: TObject);
begin
  if CbbPuestos.ItemIndex = 0 then
  begin
    TClientDataSet(DsHExtras.DataSet).Filtered := False;
    LlenarGrid(TClientDataSet(DsHExtras.DataSet));
  end
  else
  begin
    TClientDataSet(DsHExtras.DataSet).Filtered := False;
    TClientDataSet(DsHExtras.DataSet).Filter := 'puesto = '+quotedstr(CbbPuestos.Text);
    TClientDataSet(DsHExtras.DataSet).Filtered := true;
    LlenarGrid(TClientDataSet(DsHExtras.DataSet));
  end;

end;

procedure TFrmAsignarHorasExtras.CopiarHorasNminaAnterior1Click(
  Sender: TObject);
var
  cdHoras: TClientDataSet;
  FechaNomina,
  FechaTerminoNomina: String;
  IdPersonal: Integer;
  DiaSemanaAnterior,
  DiaSemanaActual,
  myCuenta, Cuenta, oCuenta: Word;
  DateFechaNomina: TDate;
begin
  IdPersonal := GridEmpleados.Cell[1, GridEmpleados.SelectedRow].AsInteger;

  Try
    // Copiar las horas extra de la nómina anterior
    cdHoras := TClientDataSet.Create(Self);
    Try
      // Localizar primero la nómina anterior a la actual
      Try
        if Not CrearConjunto(cdHoras, 'nom_nomina', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Nóminas']);

        if Not CargarDatosFiltrados(cdHoras, 'IdTipoNomina,IdNominaSiguiente', [IdTipoNomina, IdNomina]) then
          raise InteligentException.CreateByCode(6, ['Nóminas', IntToStr(IdTipoNomina) + '/' + IntToStr(IdNomina), 'Id. Tipo Nomina / Id. Nómina Siguiente']);

        cdHoras.Open;

        if cdHoras.RecordCount = 0 then
          raise InteligentException.CreateByCode(22, ['Horas Extra']);

        FechaNomina := ClientModule1.DateToStrSQL(cdHoras.FieldByName('FechaNomina').AsDateTime);
        DateFechaNomina := cdHoras.FieldByName('FechaNomina').AsDateTime;
        FechaTerminoNomina := ClientModule1.DateToStrSQL(cdHoras.FieldByName('FechaTerminoNomina').AsDateTime);
      Finally
        if cdHoras.Active then
          cdHoras.Close;
        EliminarConjunto(cdHoras);
      End;

      Try
        // Abrir ahora las horas extra de la nómina anterior
        if Not CrearConjunto(cdHoras, 'nom_personal_te', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Horas extra por Personal']);

        if Not CargarDatosFiltrados(cdHoras, 'IdPersonal,FechaInicio,FechaTermino', [IdPersonal, FechaNomina, FechaTerminoNomina]) then
          raise InteligentException.CreateByCode(6, ['Horas extra por Personal', IntToStr(IdPersonal) + '/' + FechaNomina + '/' + FechaTerminoNomina, 'Id. Personal / Fecha Inicio / Fecha Término']);

        cdHoras.Open;

        // Analizar los datos para reflejarlos a esta nómina
        // Primero verificar cuantos dias de desface existen entre esta nómina y la anterior
        DiaSemanaAnterior := DayOfWeek(DateFechaNomina);
        DiaSemanaActual := DayOfWeek(Desde);
        Cuenta := 0;

        if DiaSemanaAnterior > DiaSemanaActual then
        begin
          Cuenta := 6 - DiaSemanaAnterior;
          DiaSemanaAnterior := 0;
        end;

        while DiaSemanaAnterior < DiaSemanaActual do
        begin
          Inc(Cuenta);
          Inc(DiaSemanaAnterior);
        end;

        myCuenta := 0;
        while (Not cdHoras.Eof) and (myCuenta < Cuenta) do
        begin
          cdHoras.Next;
          Inc(myCuenta);
        end;

        myCuenta := 5;
        while (Not cdHoras.Eof) and (myCuenta < GridEmpleados.Columns.Count) do
        begin
          GridEmpleados.Cell[myCuenta, GridEmpleados.SelectedRow].AsInteger := cdHoras.FieldByName('Horas').AsInteger;

          Inc(myCuenta);
          cdHoras.Next;
        end;

        cdHoras.First;
        oCuenta := 0;
        while (Not cdHoras.Eof) and (oCuenta < Cuenta) do
        begin
          GridEmpleados.Cell[myCuenta, GridEmpleados.SelectedRow].AsInteger := cdHoras.FieldByName('Horas').AsInteger;

          Inc(oCuenta);
          Inc(myCuenta);
          cdHoras.Next;
        end;

        InteliDialog.ShowModal('Proceso terminado', 'La copia de horas extra ha terminado de manera satisfactoria', mtInformation, [mbOk], 0);
      Finally
        if cdHoras.Active then
          cdHoras.Close;

        EliminarConjunto(cdHoras);
      End;
    Finally
      cdHoras.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmAsignarHorasExtras.Duplicarasiguiente1Click(Sender: TObject);
begin
  DuplicarLinea(Siguiente);
end;

procedure TFrmAsignarHorasExtras.Duplicaratodas1Click(Sender: TObject);
begin
  DuplicarLinea(Todas);
end;

procedure TFrmAsignarHorasExtras.DuplicarHaciaabajo1Click(Sender: TObject);
begin
  DuplicarLinea(Abajo);
end;

procedure TFrmAsignarHorasExtras.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var i:Integer;
begin
  for i := 0 to 3 do
    if GridEmpleados.Columns.Item[i].Name <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, GridEmpleados.Columns.Item[i].Name, IntToStr(GridEmpleados.Columns.Item[i].Width));

  LiberarVentana(Self,action);
end;

procedure TFrmAsignarHorasExtras.FormCreate(Sender: TObject);
var i:integer;
begin
  AccedeACoordenadas(Self);
  //ClientModule1.ComponentColor(self);
  DsHExtrasOrg := TDataSource.Create(Self);
  GridEmpleados.DoubleBuffered := False;
  GridEmpleados.Refresh;

  // Reajustar los anchos de las columnas
  for i := 0 to 3 do
  Try
    GridEmpleados.Columns.Item[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, GridEmpleados.Columns.Item[i].Name));
  Except
    ;
  End;
end;

procedure TFrmAsignarHorasExtras.FormShow(Sender: TObject);
var horas, x, j: Integer;
begin
  LlenarCombo(TClientDataSet(dsHExtras.DataSet));
  LlenarGrid(TClientDataSet(dsHExtras.DataSet));
  //Mostrar las horas extras establecidas anteriormente
  j := 0;
  while j <= GridEmpleados.RowCount -1 do
  begin
    horas := 0;
    x := 5;
    While x <= GridEmpleados.Columns.Count-1 do
    begin
      horas := horas + GridEmpleados.Cell[x, j].AsInteger;
      x := x + 1;
    end;
    GridEmpleados.Cell[0, j].AsInteger := horas;
    Inc(j);
  end;
end;

procedure TFrmAsignarHorasExtras.GridEmpleadosAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  GridEmpleadosCellClick(Sender,ACol,ARow);
end;

procedure TFrmAsignarHorasExtras.GridEmpleadosCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  x,horas: integer;
begin
  horas := 0;
  x := 5;
  While x <= GridEmpleados.Columns.Count-1 do
  begin
    horas := horas + GridEmpleados.Cell[x, aRow].AsInteger;
    x := x + 1;
  end;
  lblNombre.Caption := GridEmpleados.Cell[4, aRow].AsString;
  lblExtras.Caption := IntToStr(horas);
  GridEmpleados.Cell[0, aRow].AsInteger := horas;
end;

procedure TFrmAsignarHorasExtras.GridEmpleadosCellColoring(Sender: TObject;
  ACol, ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
  try
  if not(csSelected in CellState) then
  if CellColor = -16777211 then
    if ARow mod 2 = 0 then
      CellColor := $00F5FCFE;
  except
    on e:Exception do
      ShowMessage(e.Message);

  end;
end;

procedure TFrmAsignarHorasExtras.GridEmpleadosChange(Sender: TObject; ACol,
  ARow: Integer);
var
  x,horas: integer;
begin
  horas := 0;
  for x := 5 to GridEmpleados.Columns.Count-1 do
  begin
    horas := horas + GridEmpleados.Cell[x, aRow].AsInteger;
  end;
  lblNombre.Caption := GridEmpleados.Cell[4, aRow].AsString;
  lblExtras.Caption := IntToStr(horas);
  GridEmpleados.Cell[0, aRow].AsInteger := horas;
end;

procedure TFrmAsignarHorasExtras.GridEmpleadosColumnResize(Sender: TObject;
  ACol: Integer);
begin
  GridEmpleados.Refresh;
  GridEmpleados.Repaint;
end;

procedure TFrmAsignarHorasExtras.LlenarGrid(Datas:Tclientdataset);
var x,y,NDias:Integer;
  Cad:string;
  ima:TBitmap;
  RowX, ColY, TotalExtras: Integer;
  nxCol: TNxCustomColumn;
begin
  Datas.first;
  GridEmpleados.BeginUpdate;
  GridEmpleados.ClearRows;
  RowX := 0;
  ColY := 1;
  //Creamos las columnas de los dias
  NDias := 1 + trunc(Hasta - Desde);
  for x := 0 to Ndias-1 do
  begin
    GridEmpleados.Columns.Add(TNxNumberColumn,DateToStr(desde+x));
    GridEmpleados.Columns[GridEmpleados.Columns.Count-1].Options:= [coEditing,coCanClick,coCanInput,coCanSort,coPublicUsing,coShowTextFitHint];
//    NxCol := GridEmpleados.Columns.Add(TNxDateColumn , 'Aplicación');

    GridEmpleados.Columns[GridEmpleados.Columns.Count-1].Options:= [coEditing,coCanClick,coCanInput,coCanSort,coPublicUsing,coShowTextFitHint];
  end;

  for y := 0 to GridEmpleados.RowCount-1 do
  begin
    x := 5;
    While x <= GridEmpleados.Columns.Count-1 do
    begin
      if DayOfWeek(StrToDate(GridEmpleados.Columns[x].Header.Caption)) = 1 then
        GridEmpleados.Cell[x,y].Color := $00E6E6E6;
      if not Assigned(ima) or  (ima = nil) then
        ima := TBitmap.Create;
      imagedias.GetBitmap(DayOfWeek(StrToDate(GridEmpleados.Columns[x].Header.Caption))-1,ima);
      GridEmpleados.Columns[x].Header.Glyph := ima;

      //*Columna de Aplicación*/
      //GridEmpleados.Cells[x + 1, y] := GridEmpleados.Columns[x].Header.Caption;

      x := x + 1;
    end;
  end;

  //llenamos los datos de personal
  Datas.First;
  while not Datas.Eof do
  begin
    GridEmpleados.AddCells(['0',Datas.FieldByName('idpersonal').AsString,Datas.FieldByName('puesto').AsString,Datas.FieldByName('codigopersonal').AsString,Datas.FieldByName('nombre').AsString]);
    with tclientdataset(DsHExtrasOrg.DataSet) do
    begin
      try
        Filtered := False;
        Cad :=  'idpersonal = '+vartostr(Datas.FieldValues['idpersonal']);
        Filter := Cad;
        Filtered := True;

        while not eof do
        begin
          x := 5;
          While x <= GridEmpleados.Columns.Count-1 do
          begin
            if GridEmpleados.Columns[x].Header.Caption = FieldByName('fecha').AsString then
              GridEmpleados.Cells[x,GridEmpleados.RowCount-1] := DsHExtrasOrg.DataSet.FieldByName('Horas').AsString;
          //  if DayOfWeek(StrToDate(GridEmpleados.Columns[x].Header.Caption)) = 1 then
          //    GridEmpleados.Cell[x,GridEmpleados.RowCount-1].Color := $00E6E6E6;
            GridEmpleados.Columns[x].Header.DisplayMode :=dmTextAndImage;
            GridEmpleados.Columns[x].Header.Alignment := taCenter;

            //GridEmpleados.Cells[x + 1,GridEmpleados.RowCount-1] := FieldByName('FechaAplicacion').AsString;

            x := x + 1; //2;
          end;
          Next;
        end;
      finally
        Filtered := False;
      end;
    end;
    Inc(RowX);
    Datas.Next;
  end;



  GridEmpleados.EndUpdate;
end;

procedure TFrmAsignarHorasExtras.LlenarCombo(Data:Tclientdataset);
begin
  CbbPuestos.Items.Clear;
  CbbPuestos.AddItem('Todos',nil);
  DATA.First;
  while not DATA.Eof do
  begin
    if CbbPuestos.Items.IndexOf(Data.FieldByName('puesto').AsString) < 0 then
      CbbPuestos.AddItem(Data.FieldByName('puesto').AsString,nil);
    Data.Next;
  end;
  CbbPuestos.ItemIndex := 0;
end;

procedure TFrmAsignarHorasExtras.DuplicarLinea(Modo:tduplicar);
var RInt,x:Integer;
procedure CopiarLinea(Origen,destino:Integer);
var c:integer;
begin
  for c := 5 to GridEmpleados.Columns.Count-1 do
  begin
    GridEmpleados.Cells[c,destino] := GridEmpleados.Cells[c,origen];
  end;
end;
begin
  if (GridEmpleados.SelectedRow >= 0)  then
  begin
    RInt := GridEmpleados.SelectedRow;
    case modo of
      Siguiente:
      begin
        if (GridEmpleados.SelectedRow < GridEmpleados.RowCount-1) then
          CopiarLinea(RInt,Rint+1);
      end;
      Todas:
      begin
        for x := 0 to GridEmpleados.RowCount-1 do
        begin
          if x <> RInt then
            CopiarLinea(RInt,x);
        end;
      end;
      Abajo:
      begin
        if (GridEmpleados.SelectedRow < GridEmpleados.RowCount-1) then
          for x := RInt+1 to GridEmpleados.RowCount-1 do
            CopiarLinea(RInt,x);
      end;
      Anterior:
      begin
        if (RInt > 0) then
          CopiarLinea(RInt,Rint-1);
      end;
      Arriba:
      begin
        if (RInt > 0) then
          for x := RInt downto 0 do
            CopiarLinea(RInt,x);
      end;
    end;
  end;
end;

procedure TFrmAsignarHorasExtras.Duplicarvaloresaanterior1Click(
  Sender: TObject);
begin
  DuplicarLinea(Anterior);
end;

procedure TFrmAsignarHorasExtras.Duplicarvaloreshaciaarriba1Click(
  Sender: TObject);
begin
  DuplicarLinea(Arriba);
end;

procedure TFrmAsignarHorasExtras.GuardarCambios(Grid:tnextgrid;Datos:Tclientdataset);
var r,c:integer;
begin
  //guardar datos
  //rrecorrer todas las filas
  for r := 0 to Grid.RowCount-1 do
  begin
    //primero filtrar por empleado
    try
      datos.Filtered := False;
      //el grid guarda el id en la columna 0 invisible
      Datos.Filter := ' idpersonal = '+grid.Cells[1,r];
      Datos.Filtered := True;
      c := 5;
      While c <= grid.columns.count-1 do
      begin
        if Datos.Locate('fecha',StrToDate(Grid.Columns[c].Header.Caption),[]) then
        //si encuentro el registro filtrando por idpersonal y fecha quiere decir que debo editar
        begin
          Datos.Edit;
          Datos.FieldByName('horas').AsFloat := StrToFloat(Grid.Cells[c,r]);
          Datos.Post;
        end
        else
        //En caso contrario debo añadirlo al dataset de detalles
        begin
          Datos.Append;
          Datos.FieldByName('idpersonal_te').AsInteger := -2; //esto indica que no existe en base de datos, y se debe crear
          Datos.FieldByName('idpersonal').asstring := grid.Cells[1,r];
          Datos.FieldByName('fecha').AsDateTime := StrToDate(Grid.Columns[c].Header.Caption);
          Datos.FieldByName('horas').AsFloat := StrToFloat(Grid.Cells[c,r]);
          Datos.Post;
        end;
        c := c + 1;
      end;
    finally
      Datos.Filtered := False;
    end;
    //luego añadir o editar su registro de acuerdo al recorrido de columnas
  end;
  close;
end;
end.
