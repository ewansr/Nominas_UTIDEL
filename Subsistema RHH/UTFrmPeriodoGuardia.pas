unit UTFrmPeriodoGuardia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, ExtCtrls, JvExControls, JvLabel, Grids,
  DBGrids, ClientModuleUnit1, UInteliDialog, DBClient, AdvSmoothTimeLine,
  Buttons, DateUtils, Menus, JvDBSpinEdit, Mask, JvExMask, JvSpin, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, AdvGlowButton,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxGroupBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TRectCoords = record
    fTop: SmallInt;
    fLeft: SmallInt;
    fBottom: SmallInt;
    fRight: SmallInt;
  end;

  TFrmPeriodoGuardia = class(TForm)
    dsGuardia: TDataSource;
    Panel1: tcxGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    cdPeriodo: TClientDataSet;
    dsPeriodo: TDataSource;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    AgregarPeriodo1: TMenuItem;
    Panel3: TPanel;
    JvSpinEdit1: TJvSpinEdit;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    FechaInicio: TJvDatePickerEdit;
    JvLabel8: TJvLabel;
    FechaTermino: TJvDatePickerEdit;
    cbTermino: TCheckBox;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    cdFecha: TClientDataSet;
    cdTraslape: TClientDataSet;
    EditarPeriodo1: TMenuItem;
    EliminarPeriodo1: TMenuItem;
    cdPersonalimss: TClientDataSet;
    dsPersonalimss: TDataSource;
    Reprogramacin1: TMenuItem;
    Panel4: TPanel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    Fecharepro: TJvDatePickerEdit;
    Diasext: TEdit;
    cdPdoGuardias: TClientDataSet;
    dsPdoGuardias: TDataSource;
    pnl_Periodo: TPanel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    dsGuardia1: TDataSource;
    dsPeriodosG1: TDataSource;
    cbbGuardias: TcxExtLookupComboBox;
    cxGridRepos1: TcxGridViewRepository;
    cbbPeriodosG: TcxExtLookupComboBox;
    cxDBGridGuardias: TcxGridDBTableView;
    grdColumGuardia: TcxGridDBColumn;
    grdColumTRabajados: TcxGridDBColumn;
    grdColumDescanso: TcxGridDBColumn;
    cdGuardia1: TClientDataSet;
    cdPeriodosG1: TClientDataSet;
    cxDBGridPeriodos: TcxGridDBTableView;
    grdColumFechasubida: TcxGridDBColumn;
    grdColumFechaBajada: TcxGridDBColumn;
    grdColumConvenio: TcxGridDBColumn;
    grdColumCOntrataro: TcxGridDBColumn;
    grdColumLeyenda: TcxGridDBColumn;
    cxGBPersonalActivo: TcxGroupBox;
    GridPersonal: TNextGrid;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    ColExtras: TNxCheckBoxColumn;
    cxGBPeriodos: TcxGroupBox;
    DBGrid1: TDBGrid;
    YP: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cdPeriodoAfterScroll(DataSet: TDataSet);
    procedure AgregarPeriodo1Click(Sender: TObject);
    procedure FechaInicioChange(Sender: TObject);
    procedure cbTerminoClick(Sender: TObject);
    procedure FechaTerminoChange(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure EditarPeriodo1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure EliminarPeriodo1Click(Sender: TObject);
    procedure Reprogramacin1Click(Sender: TObject);
    procedure DiasextKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure cbbGuardiasPropertiesCloseUp(Sender: TObject);
    procedure cbbPeriodosGPropertiesCloseUp(Sender: TObject);
    procedure cxYearViewruebaClick(Sender: TObject);
  private
    ArrRectCoords: array[1..12, 1..37] of TRectCoords;
    ArrFirstDayColumn: array[1..12] of SmallInt;
    ArrNumMonthDays: array[1..12] of SmallInt;
    DisplayedYear: Word;
    ApuntaFecha: TDate;
    Borrando: Boolean;
    procedure CalendarioAnual(PYear: Word; MostrarHoy: Boolean);
    procedure LlenarGrid(Datas: Tclientdataset);
    procedure ColorearPeriodos;
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
  FrmPeriodoGuardia: TFrmPeriodoGuardia;

implementation

{$R *.dfm}

procedure TFrmPeriodoGuardia.FechaInicioChange(Sender: TObject);
var
  Anio, Mes, Dia: Word;
begin
  if cbTermino.Checked then
  begin
    if FechaInicio.Date > FechaTermino.Date then
      FechaTermino.Date := FechaInicio.Date + cdFecha.FieldByName('Trabajados').AsInteger - 1;
  end
  else
  begin
    if cdFecha.Active then
      FechaTermino.Date := FechaInicio.Date + cdFecha.FieldByName('Trabajados').AsInteger -1;
  end;

  DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
  ApuntaFecha := FechaInicio.Date;
  CalendarioAnual(Anio, True);
end;

procedure TFrmPeriodoGuardia.FechaTerminoChange(Sender: TObject);
var
  Anio, Mes, Dia: Word;
begin
  if FechaInicio.Date > FechaTermino.Date then
    FechaTermino.Date := FechaInicio.Date;
  DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
  ApuntaFecha := FechaInicio.Date;
  CalendarioAnual(Anio, True);
end;

procedure TFrmPeriodoGuardia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdFecha, cdPeriodo, cdTraslape]);
end;

procedure TFrmPeriodoGuardia.FormShow(Sender: TObject);
      var
  di: TDate;
  i: Integer;
  f: Integer;
  Cursor: TCursor;
  Anio, Mes, Dia: Word;
begin
  ApuntaFecha := 0;
  Borrando := False;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if not CrearConjunto(cdGuardia1, 'nom_guardia', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Guardias']);

      if not CrearConjunto(cdPeriodosG1, 'erp_guardias', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Periodos Guardia']);

      if Not CrearConjunto(cdFecha, 'nom_periodosguardia_ultima', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Periodos de guardia']);

      if Not CrearConjunto(cdPeriodo, 'nom_periodosguardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Periodos de Nómina']);

      if Not CrearConjunto(cdTraslape, 'nom_periodosguardia_traslape', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Periodos de Nómina']);

      if Not CargarDatosFiltrados(cdPeriodo, 'IdGuardia', [dsGuardia.DataSet.FieldByName('IdGuardia').AsInteger]) then
        raise InteligentException.CreatebyCode(6, ['Periodos de Nómina', dsGuardia.DataSet.FieldByName('IdGuardia').AsInteger, 'Id. Guardia']);

      if Not CrearConjunto(cdPersonalimss, 'nuc_personalimss_pdog', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal']);

      if Not CrearConjunto(cdPdoGuardias, 'nuc_personal_periodosguardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Personal']);

      cdPeriodo.Open;

      if cdPeriodo.RecordCount > 0 then
        DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia)
      else
        DecodeDate(Now, Anio, Mes, Dia);

      CalendarioAnual(Anio, True);



    Finally
      Screen.Cursor := Cursor;
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
end;

procedure TFrmPeriodoGuardia.Reprogramacin1Click(Sender: TObject);
var
  Forma: TForm;
  Anio, Mes, Dia: Word;
begin
  Try

    if not CargarDatosFiltrados(cdGuardia1, 'idguardia', [-1]) then
      raise InteligentException.CreateByCode(11, [' al filtra por guardias']);

    if cdGuardia1.Active then
      cdGuardia1.Refresh
    else
      cdGuardia1.Open;

    Forma := TForm.Create(Self);
    Forma.Width := 285;
    Forma.Height := 130;
    Panel4.Parent := Forma;
    Panel4.Align := alClient;
    Panel4.Visible := True;

    cdTraslape.Close;
    CargarDatosFiltrados(cdTraslape, 'IdPeriodosGuardia', [cdPeriodo.FieldByName('IdPeriodosGuardia').AsInteger]);
    if cdTraslape.Active then
      cdTraslape.Refresh
    else
      cdTraslape.Open;

    if cdTraslape.RecordCount = 1 then
    begin

      Fecharepro.Date := cdTraslape.FieldByName('FechaTermino').AsDateTime;

      cdTraslape.Edit;
    end;

    Forma.ShowModal;

  Finally
    Panel4.Visible := False;
    Panel4.Align := alNone;
    Panel4.Parent := Self;
    Forma.Destroy;
    cdTraslape.Cancel;
    cdTraslape.Close;
  End;
end;

procedure TFrmPeriodoGuardia.AdvGlowButton1Click(Sender: TObject);
var
  Anio, Mes, Dia: Word;
  Cursor: TCursor;
  row: Integer;
begin
  if cdTraslape.State = dsEdit then
  begin
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if InteliDialog.ShowModal('Editar registro', 'Está a punto de editar el periodo de guardia del ' + cdTraslape.FieldByName('FechaInicio').AsString + ' al ' + cdTraslape.FieldByName('FechaTermino').AsString + #10 + #10 +
                                                       '¿Está seguro que desea editar este periodo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          CargarDatosFiltrados(cdPersonalimss, 'IdPeriodosGuardia', [cdTraslape.FieldByName('IdPeriodosGuardia').AsInteger]);
          if cdPersonalimss.Active then
            cdPersonalimss.Refresh
          else
            cdPersonalimss.Open;

          cdPersonalimss.First;
          while not cdPersonalimss.eof do
          begin

            cdPersonalimss.Edit;
            if cdPersonalimss.FieldByName('TipoMovimiento').AsString='Reingreso' then
               cdPersonalimss.FieldByName('FechaMovimiento').AsDateTime := FechaInicio.Date;
            if cdPersonalimss.FieldByName('TipoMovimiento').AsString='Baja' then
               cdPersonalimss.FieldByName('FechaMovimiento').AsDateTime := FechaTermino.Date;
            cdPersonalimss.Post;
            cdPersonalimss.ApplyUpdates(-1);
            
            cdPersonalimss.Next;
          end;         

          cdTraslape.FieldByName('FechaInicio').AsDateTime := FechaInicio.Date;
          cdTraslape.FieldByName('FechaTermino').AsDateTime := FechaTermino.Date;

          cdTraslape.Post;
          cdTraslape.ApplyUpdates(-1);
          dsGuardia.DataSet.Refresh;
          cdPeriodo.Refresh;

          DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
          CalendarioAnual(Anio, True);
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  end
  else
  begin
    // Verificar si el nuevo periodo no se traslapa con otro regisgtro
    cdTraslape.Close;
    if CargarDatosFiltrados(cdTraslape, 'FechaInicio,FechaTermino', [FechaInicio.Date, FechaTermino.Date]) then
    begin
      Try
        Cursor := Screen.Cursor;
        Try
          Screen.Cursor := crAppStart;

          cdTraslape.Open;
          if cdTraslape.RecordCount > 0 then
            raise InteligentException.CreateByCode(24, ['El periodo de guardia indicado es incorrecto ya que sus fechas traslapan con ' + cdTraslape.FieldByName('Cuenta').AsString + ' registros de guardia dentro del catálogo.' + #10 + #10 +
                                                        'Debido a esto no es posible grabar el registro de guardia.']);
          // Grabar el registro
          cdTraslape.Append;
          cdTraslape.FieldByName('IdPeriodosGuardia').AsInteger := 0;
          cdTraslape.FieldByName('IdGuardia').AsInteger := dsGuardia.DataSet.FieldByName('IdGuardia').AsInteger;
          cdTraslape.FieldByName('FechaInicio').AsDateTime := FechaInicio.Date;
          cdTraslape.FieldByName('FechaTermino').AsDateTime := FechaTermino.Date;
          //cdTraslape.FieldByName('Reprogramacion').AsDateTime := 0000-00-00;
          cdTraslape.Post;
          cdTraslape.ApplyUpdates(-1);
          dsGuardia.DataSet.Refresh;
          cdPeriodo.Refresh;

          DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
          CalendarioAnual(Anio, True);
        Finally
          cdTraslape.Close;
          Screen.Cursor := Cursor;
        End;
      Except
        on e:InteligentException do
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

        on e:Exception do
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      End;
    end;
  end;
end;

procedure TFrmPeriodoGuardia.AdvGlowButton2Click(Sender: TObject);
begin
  if cdTraslape.State = dsEdit then
    cdTraslape.Cancel;
end;

procedure TFrmPeriodoGuardia.AdvGlowButton4Click(Sender: TObject);
var
  Fechab:string;
  Row:Integer;
  cdtMovimiento : TClientDataSet;
  diasDispobles: Integer;
begin
  if Fecharepro.Date < cdPeriodosG1.FieldByName('dfechaInicial').AsDateTime then
    raise InteligentException.createbycode(24, ['El periodo seleccionado es menor a la fecha de reprogramación']) ;

  if (Fecharepro.Date >= cdPeriodosG1.FieldByName('dfechaInicial').AsDateTime) and  (Fecharepro.Date <= cdPeriodosG1.FieldByName('dfechaFinal').AsDateTime) then
  begin
    diasDispobles := DaysBetween(Fecharepro.Date, cdPeriodosG1.FieldByName('dfechaFinal').AsDateTime);
    if NOt diasDispobles >= strtoInt(Diasext.Text) then
      raise InteligentException.createbycode(24, ['La guardia no cumple con los dias requeridos. ' + #10#13 + ' Dias Requerido [' + fecharepro.text + '] Disponibles [' + IntToStr(DaysBetween(Fecharepro.Date, cdPeriodosG1.FieldByName('dfechaFinal').AsDateTime))+ ']']);

    try
      cdtMovimiento := TClientDataSet.Create(nil);
      Try
        Cursor := Screen.Cursor;
        //*****************************
        if not CrearConjunto(cdtMovimiento, 'nuc_personalimss', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Personal']);

        if not CargarDatosFiltrados(cdtMovimiento,'idPersonal', [-9]) then
          raise InteligentException.CreateByCode(11, [' al filtrar personal.']);

        if cdtMovimiento.Active then
          cdtMovimiento.Refresh
        else
          cdtMovimiento.Open;
        //********************************


        CargarDatosFiltrados(cdPdoGuardias, 'IdPeriodosGuardia', [cdTraslape.FieldByName('IdPeriodosGuardia').AsInteger]);

        if cdPdoGuardias.Active then
          cdPdoGuardias.Refresh
        else
          cdPdoGuardias.Open;

        cdPdoGuardias.First;
        while not cdPdoGuardias.eof do
        begin
            Fechab:=ClientModule1.DatetoStrSql(cdPdoGuardias.FieldByName('FechaBaja').AsDateTime);
            Fechab := StringReplace(Fechab, '/', '-',[rfReplaceAll, rfIgnoreCase]);
            CargarDatosFiltrados(cdPersonalimss, 'IdPersonal,FechaMovimiento,Procesado', [cdPdoGuardias.FieldByName('IdPersonal').AsInteger,Fechab,'No']);
            if cdPersonalimss.Active then
              cdPersonalimss.Refresh
            else
              cdPersonalimss.Open;

            if cdPersonalimss.RecordCount=1 then
            begin
              for row := 0 to GridPersonal.rowcount-1 do
              begin
                if (GridPersonal.Cell[8,Row].AsInteger = cdPersonalimss.FieldByName('IdPersonal').AsInteger) and (GridPersonal.Cell[9,Row].AsBoolean = True) then
                begin
                  //*****************************************************
                  //*********CREAR REGISTRO DE MODIFICACION**************
                  //*****************************************************
                  cdtMovimiento.Append;
                  cdtMovimiento.FieldByName('IdPersonalImss').asINteger := 0;
                  cdtMovimiento.FieldByName('IdPersonal').AsString := cdPersonalimss.FieldByName('IdPersonal').AsString;
                  cdtMovimiento.FieldByName('IdTipoNomina').AsString := cdPersonalimss.FieldByName('IdTipoNomina').AsString;
                  cdtMovimiento.FieldByName('IdPlazaDetalle').asINteger := 0;
                  cdtMovimiento.FieldByName('FechaMovimiento').asDateTime:= cdperiodosG1.fieldbyname('dfechaInicial').asDatetime;
                  cdtMovimiento.FieldByName('FechaRegistro').AsDateTime:= cdPersonalimss.FieldByName('FechaRegistro').AsDateTime;
                  cdtMovimiento.FieldByName('TipoMovimiento').AsString := 'Modificación';
                  cdtMovimiento.FieldByName('RegistroPatronal').AsString := cdPersonalimss.FieldByName('RegistroPatronal').AsString;
                  cdtMovimiento.FieldByName('SalarioDiario').AsString := cdPersonalimss.FieldByName('SalarioDiario').AsString;
                  cdtMovimiento.FieldByName('SalarioIntegrado').AsString := cdPersonalimss.FieldByName('SalarioIntegrado').AsString;
                  cdtMovimiento.FieldByName('Procesado').AsString := 'Si';
                  cdtMovimiento.FieldByName('cobrafestivos').AsString := cdPersonalimss.FieldByName('cobrafestivos').AsString;
                  cdtMovimiento.FieldByName('IdPeriodosGuardia').AsInteger := cdperiodosG1.fieldbyname('id_periodoguardia').AsInteger;
                  cdtMovimiento.FieldByName('IdDepartamento').AsString := cdPersonalimss.FieldByName('IdDepartamento').AsString;
                  cdtMovimiento.FieldByName('IdCargo').AsString := cdPersonalimss.FieldByName('IdCargo').AsString;
                  cdtMovimiento.FieldByName('IdOrganizacion').AsString := cdPersonalimss.FieldByName('IdOrganizacion').AsString;
                  cdtMovimiento.FieldByName('Comentarios').AsString := cdPersonalimss.FieldByName('Comentarios').AsString;
                  cdtMovimiento.FieldByName('jornada').AsString := cdPersonalimss.FieldByName('jornada').AsString;
                  cdtMovimiento.Post;
                  cdtMovimiento.ApplyUpdates(-1);
                  //*****************************************************

                  cdPersonalimss.Edit;
                  cdPersonalimss.FieldByName('FechaMovimiento').AsDateTime:=Fecharepro.Date;
                  cdPersonalimss.Post;
                  cdPersonalimss.ApplyUpdates(-1);

                end;
              end;
            end;

          cdPdoGuardias.Next;
        end;

        cdTraslape.FieldByName('Reprogramacion').AsDateTime:=Fecharepro.Date;
        cdTraslape.Post;
        cdTraslape.ApplyUpdates(-1);
      Except
            on e:InteligentException do
              InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

            on e:Exception do

              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      End;
    finally

    end;
  end;

end;

procedure TFrmPeriodoGuardia.AgregarPeriodo1Click(Sender: TObject);
var
  Forma: TForm;
  Anio, Mes, Dia: Word;
begin
  Try
    // Localizar la última fecha registrada
    cdFecha.Close;
    CargarDatosFiltrados(cdFecha, 'IdGuardia', [dsGuardia.DataSet.FieldByName('IdGuardia').AsInteger]);
    cdFecha.Open;

    Forma := TForm.Create(Self);
    Forma.Width := Panel3.Width + (GetSystemMetrics(SM_CXBORDER) * 2);
    Forma.Height := Panel3.Height + GetSystemMetrics(SM_CYCAPTION);
    Panel3.Parent := Forma;
    Panel3.Align := alClient;
    Panel3.Visible := True;

    if cdFecha.FieldByName('FechaInicio').AsDateTime = 0 then
      FechaInicio.Date := Now
    else
      FechaInicio.Date := cdFecha.FieldByName('FechaInicio').AsDateTime;
    FechaInicio.OnChange(Nil);

    Forma.ShowModal;
  Finally
    Panel3.Visible := False;
    Panel3.Align := alNone;
    Panel3.Parent := Self;
    Forma.Destroy;

    DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);
  End;
end;

procedure TFrmPeriodoGuardia.cbbGuardiasPropertiesCloseUp(Sender: TObject);
begin
  if not CargarDatosFiltrados(cdPeriodosG1, 'sidfolio', [cbbGuardias.EditValue]) then
    raise InteligentException.CreateByCode(11, [' al filtrar por periodos guardias.']);

  if cdPeriodosG1.Active then
    cdPeriodosG1.Refresh
  else
    cdPeriodosG1.Open;

end;

procedure TFrmPeriodoGuardia.cbbPeriodosGPropertiesCloseUp(Sender: TObject);
begin
  cbbPeriodosG.EditValue;
end;

procedure TFrmPeriodoGuardia.cbTerminoClick(Sender: TObject);
begin
  FechaTermino.Enabled := cbTermino.Checked;
  if Not cbTermino.Checked then
    FechaInicio.OnChange(Self);
end;

procedure TFrmPeriodoGuardia.cdPeriodoAfterScroll(DataSet: TDataSet);
var
  Anio, Mes, Dia: Word;
begin
  if Not cdPeriodo.ControlsDisabled then
  begin
    DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);

    CargarDatosFiltrados(cdPdoGuardias, 'IdPeriodosGuardia', [cdPeriodo.FieldByName('IdPeriodosGuardia').AsInteger]);
    if cdPdoGuardias.Active then
      cdPdoGuardias.Refresh
    else
      cdPdoGuardias.Open;

    cdPdoGuardias.First;
    LlenarGrid(TClientDataSet(dsPdoGuardias.DataSet));
  end;
end;

procedure TFrmPeriodoGuardia.ColorearPeriodos;
var
  i: Integer;
  f: Integer;
  AnioActual: string;
begin
  try
    //AnioActual := dPeriodo.FieldByName('FechaInicio').AsDateTime;
    cdPeriodo.FieldByName('FechaInicio').AsDateTime;
    cdPeriodo.AfterScroll := nil;
    cdPeriodo.First;
    while not cdPeriodo.Eof do
    begin
      i := 0;
      f := DaysBetween(cdPeriodo.FieldByName('FechaInicio').AsDateTime, cdPeriodo.FieldByName('FechaTermino').AsDateTime);

//      for i := 0 to f do
//        cxYearViewrueba.SelectedDays.Add(IncDay(cdPeriodo.FieldByName('FechaInicio').AsDateTime, i));
      cdPeriodo.Next;
    end;
  finally
    cdPeriodo.AfterScroll := cdPeriodoAfterScroll;
  end;
end;

procedure TFrmPeriodoGuardia.cxYearViewruebaClick(Sender: TObject);
begin
  ColorearPeriodos;
end;

procedure TFrmPeriodoGuardia.DiasextKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    Fecharepro.Date:=IncDay(Fecharepro.Date,StrToInt(Diasext.Text));
end;

procedure TFrmPeriodoGuardia.EditarPeriodo1Click(Sender: TObject);
var
  Forma: TForm;
  Anio, Mes, Dia: Word;
begin
  Try
    Forma := TForm.Create(Self);
    Forma.Width := Panel3.Width + (GetSystemMetrics(SM_CXBORDER) * 2);
    Forma.Height := Panel3.Height + GetSystemMetrics(SM_CYCAPTION);
    Panel3.Parent := Forma;
    Panel3.Align := alClient;
    Panel3.Visible := True;

    cdTraslape.Close;
    CargarDatosFiltrados(cdTraslape, 'IdPeriodosGuardia', [cdPeriodo.FieldByName('IdPeriodosGuardia').AsInteger]);
    cdTraslape.Open;

    if cdTraslape.RecordCount = 1 then
    begin
      if cdTraslape.FieldByName('FechaInicio').AsDateTime > FechaTermino.Date then
        FechaTermino.Date := cdTraslape.FieldByName('FechaInicio').AsDateTime;

      FechaInicio.Date := cdTraslape.FieldByName('FechaInicio').AsDateTime;
      FechaTermino.Date := cdTraslape.FieldByName('FechaTermino').AsDateTime;

      cdTraslape.Edit;

      ApuntaFecha := FechaInicio.Date;
      DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
      CalendarioAnual(Anio, True);

      Forma.ShowModal;
    end;
  Finally
    Panel3.Visible := False;
    Panel3.Align := alNone;
    Panel3.Parent := Self;
    Forma.Destroy;

    cdTraslape.Cancel;
    cdTraslape.Close;

    DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);
  End;
end;

procedure TFrmPeriodoGuardia.EliminarPeriodo1Click(Sender: TObject);
var
  Anio, Mes, Dia: Word;
begin
  Try
    cdTraslape.Close;
    CargarDatosFiltrados(cdTraslape, 'IdPeriodosGuardia', [cdPeriodo.FieldByName('IdPeriodosGuardia').AsInteger]);
    cdTraslape.Open;

    if cdTraslape.RecordCount = 1 then
    begin
      if cdTraslape.FieldByName('FechaInicio').AsDateTime > FechaTermino.Date then
        FechaTermino.Date := cdTraslape.FieldByName('FechaInicio').AsDateTime;

      FechaInicio.Date := cdTraslape.FieldByName('FechaInicio').AsDateTime;
      FechaTermino.Date := cdTraslape.FieldByName('FechaTermino').AsDateTime;

      Try
        Borrando := True;
        DecodeDate(cdTraslape.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
        CalendarioAnual(Anio, True);

        if InteliDialog.ShowModal('Eliminar registro', 'Está a punto de eliminar el periodo de guardia del ' + cdTraslape.FieldByName('FechaInicio').AsString + ' al ' + cdTraslape.FieldByName('FechaTermino').AsString + #10 + #10 +
                                                       '¿Está seguro que desea eliminar este periodo en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Cursor := Screen.Cursor;
          Try
            Screen.Cursor := crAppStart;

            cdTraslape.Delete;
            cdTraslape.ApplyUpdates(-1);

            dsGuardia.DataSet.Refresh;
            cdPeriodo.Refresh;

            if cdPeriodo.RecordCount > 0 then
              DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia)
            else
              DecodeDate(Today, Anio, Mes, Dia);

            CalendarioAnual(Anio, True);
          Finally
            Screen.Cursor := Cursor;
          End;
        end;
      Finally
        Borrando := False;
      End;
    end;
  Finally
    Panel3.Visible := False;
    Panel3.Align := alNone;
    Panel3.Parent := Self;

    cdTraslape.Cancel;
    cdTraslape.Close;

    DecodeDate(FechaInicio.Date, Anio, Mes, Dia);
    CalendarioAnual(Anio, True);
  End;
end;

procedure TFrmPeriodoGuardia.CalendarioAnual(PYear: Word; MostrarHoy: Boolean);
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
      if PDateFrom > PDateTo then
      begin
        Result := False;
        MessageDlg('La fecha final debe ser posterior a la fecha inicial', mtError, [mbOK], 0);
        Exit;
      end;

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

          BitBlt(YP.Canvas.Handle, locLeft, (ArrRectCoords[MMFrom, StartCol].fBottom - ArrTierCoord[PTier]) - 18, ArrRectCoords[MMFrom, EndCol].fRight, 100, BitMap.Canvas.Handle, 0, 0, SRCAND);
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

  cdPeriodo.DisableControls;
  OldAnio := 0;
  Try
    OrPos := cdPeriodo.RecNo;

    // Localizar el primer registro que no corresponde al año actual
//    repeat
//      DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);
//      if PYear = Anio then
//        cdPeriodo.Prior;
//    Until (PYear <> Anio) or (cdPeriodo.Bof);

    while not cdPeriodo.Eof do
    begin
      // Marcar el descanso
      {if OldAnio <> 0 then
        DibujarGuardia(OldFecha, cdPeriodo.FieldByName('FechaInicio').AsDateTime -1, clYellow, 1);}

      DecodeDate(cdPeriodo.FieldByName('FechaInicio').AsDateTime, Anio, Mes, Dia);

      OldAnio := Anio;
      OldFecha := cdPeriodo.FieldByName('FechaTermino').AsDateTime + 1;

      if (PYear = Anio) and (((OrPos = cdPeriodo.RecNo) and (Not Borrando)) or ((OrPos <> cdPeriodo.RecNo))) and ((cdTraslape.State <> dsEdit) Or ((OrPos <> cdPeriodo.RecNo) And (cdTraslape.State = dsEdit))) then
        DibujarGuardia(cdPeriodo.FieldByName('FechaInicio').AsDateTime, cdPeriodo.FieldByName('FechaTermino').AsDateTime, clLime, 1, (OrPos = cdPeriodo.RecNo));

      if PYear > Anio then
        cdPeriodo.Last;

      cdPeriodo.Next;
    end;

    if (ApuntaFecha > 0) or (Borrando) then
      if Borrando then
        DibujarGuardia(cdTraslape.FieldByName('FechaInicio').AsDateTime, cdTraslape.FieldByName('FechaTermino').AsDateTime, clRed, 1)
      else
        DibujarGuardia(ApuntaFecha, FechaTermino.Date, clYellow, 1);
    ApuntaFecha := 0;
  Finally
    cdPeriodo.RecNo := OrPos;
    cdPeriodo.EnableControls;
  end;
end;

procedure TFrmPeriodoGuardia.LlenarGrid(Datas:Tclientdataset);
var x,y,NDias:Integer;
  Cad:string;
  ima:TBitmap;
begin
  Datas.first;
  GridPersonal.BeginUpdate;
  GridPersonal.ClearRows;

  //llenamos los datos de personal
  while not Datas.Eof do
  begin
    GridPersonal.AddCells([Datas.FieldByName('CodigoPersonal').AsString,Datas.FieldByName('NombreCompleto').AsString,Datas.FieldByName('rfc').AsString,Datas.FieldByName('curp').AsString,Datas.FieldByName('TituloCargo').AsString,Datas.FieldByName('NumeroInfonavit').AsString,Datas.FieldByName('FechaReingreso').AsString,Datas.FieldByName('FechaBaja').AsString,Datas.FieldByName('IdPersonal').AsString]);
    GridPersonal.Cell[9,GridPersonal.rowcount-1].AsBoolean := True;
    Datas.Next;
  end;

  GridPersonal.EndUpdate;
end;

end.
