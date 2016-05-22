unit UTFrmCorteNominas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBClient,
  cxContainer, ComCtrls, dxCore, cxDateUtils, Menus, cxListBox, StdCtrls,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxBar,
  dxRibbon, cxCheckBox, DateUtils, ClientModuleUnit1;

type
  TCorte = class(TObject)
    Leyenda      :    string;
    FechaInicio  : TDateTime;
    FechaCorte   : TDateTime;
    pagarDescansos :  string;
  end;

type
  TFrmCorteNominas = class(TForm)
    cxDateCorte   :    TcxDateEdit;
    cxLabel1      :       TcxLabel;
    cxbtnCorte    :      TcxButton;
    listaCortes   :     TcxListBox;
    cxLabel2      :       TcxLabel;
    cxLabel3      :       TcxLabel;
    cxLabel4      :       TcxLabel;
    lblInicio     :       TcxLabel;
    lblTermino    :       TcxLabel;
    cxbtnGuardar  :      TcxButton;
    cxbtnCancel   :      TcxButton;
    popupOpciones: TdxRibbonPopupMenu;
    lblPeriodoTrabajo    :   TcxLabel;
    checkPagarDescansos : TcxCheckBox;
    btnQuitar :      TcxButton;
    cdCortes  : TClientDataSet;
    cdFestivos: TClientDataSet;
    cdDetalleNomina: TClientDataSet;
    cdNominaPersonal: TClientDataSet;
    procedure cxbtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxbtnCorteClick(Sender: TObject);
    procedure btnQuitarClick(Sender: TObject);
    procedure cxbtnGuardarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Corte : TCorte;
  public
    idTipoNomina      : Integer;
    idPeriodosGuardia : Integer;
    Periodo           :  String;
    FechaInicio       :   TDate;
    FechaTermino      :   TDate;
    { Public declarations }
  end;

var
  FrmCorteNominas: TFrmCorteNominas;

implementation

uses
  UTFrmCatalogoNominas;

{$R *.dfm}

procedure TFrmCorteNominas.btnQuitarClick(Sender: TObject);
var
  i      : Integer;
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    i := 0;
    //Elimina el Corte seleccionado por el usuario
    with listaCortes do
    begin
      while i < Items.Count do
      begin
        if Selected[i] then
        begin
          Items.Delete(i);
          i := -1;
        end;

        i := i + 1;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCorteNominas.cxbtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCorteNominas.cxbtnCorteClick(Sender: TObject);
var
  textoPagaDescanso, CortesConPagaDescansos : string;
  i      : Integer;
  error, volverASumar  : Boolean;
  fechaMenor, fechaMayor : TDateTime;
  Cursor : TCursor;
begin
  //Agrega las fechas de corte a la lista de Cortes (listaCortes)
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;
      Corte   :=    TCorte.Create;

      error := False;
      i     :=     0;
      CortesConpagaDescansos := '';
      fechaMayor := cxDateCorte.Properties.MinDate;
      volverASumar := True;
      //Recorrer la lista y revisar si la fecha ya fue utilizada para otro corte
      while i < ListaCortes.Items.Count do
      begin
        //Revisar si ya hay una un corte con la fecha seleccionada
        if TCorte(listaCortes.Items.Objects[i]).FechaCorte = cxDateCorte.Date then
        begin
          MessageDlg('¡Ya existe un Corte con la fecha: ' + DateToStr(cxDateCorte.Date) + '!', mtInformation, [mbOk], 0);
          error := True;
          Break;
        end;

        fechaMenor := TCorte(listaCortes.Items.Objects[i]).FechaInicio;

        if TCorte(listaCortes.Items.Objects[i]).FechaCorte = cxDateCorte.Properties.MinDate then
        begin
          fechaMayor :=  TCorte(listaCortes.Items.Objects[i]).FechaCorte + 1;
          volverASumar := False;
        end
        else
        begin
          fechaMayor :=  TCorte(listaCortes.Items.Objects[i]).FechaCorte;
          volverASumar := True;
        end;
        
        while fechaMenor < fechaMayor do
        begin
          if fechaMenor = cxDateCorte.Date then
          begin
            MessageDlg('¡La fecha no es válida, se cruza con otro corte de Nómina!', mtInformation, [mbOk], 0);
            error := True;
          end;

          fechaMenor := IncDay(fechaMenor, 1);
        end;

        if checkPagarDescansos.Checked then //Si el usuario quiere pagar el descanso revisar la lista
        begin
          //Revisar si ya hay un corte con PAGO DE DESCANSO
          if TCorte(listaCortes.Items.Objects[i]).pagarDescansos = 'Si' then
          begin
            CortesConPagaDescansos := CortesConPagaDescansos + '   - ' + TCorte(listaCortes.Items.Objects[i]).Leyenda + #13 ;
          end;
        end;

        i := i + 1;
      end;

      if Not error then
      begin
        if CortesConPagaDescansos <> '' then
        begin
          if MessageDlg('¡En El/Los siguiente(s) corte(s) se paga el descanso!' + #13 + CortesConPagaDescansos +
                        '¿Está seguro que desea agregar el corte?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            error := True;
          end;
        end;
      end;

      if Not error then
      begin
        if (fechaMayor > cxDateCorte.Properties.MinDate) and (volverASumar = True) then
          Corte.FechaInicio := fechaMayor + 1
        else
          Corte.FechaInicio := fechaMayor;

        Corte.Leyenda     := 'Periodo ' + Periodo + '. Corte del: ' + DateToStr(Corte.fechaInicio) + ' al: ' + DateToStr(cxDateCorte.Date);
        Corte.FechaCorte  := cxDateCorte.Date;
        textoPagaDescanso := '';

        if checkPagarDescansos.Checked then
        begin
          Corte.pagarDescansos := 'Si';
          textoPagaDescanso := ' -- PAGA DESCANSO';
        end
        else
          Corte.pagarDescansos := 'No';

        listaCortes.Items.AddObject(Corte.Leyenda + textoPagaDescanso, Corte);

        cxDateCorte.Date := Corte.FechaCorte + 13;

        if cxDateCorte.Date > cxDateCorte.Properties.MaxDate then
          cxDateCorte.Date := cxDateCorte.Properties.MaxDate;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCorteNominas.cxbtnGuardarClick(Sender: TObject);
var
  Cursor : TCursor;
  i, dias, domingos, diasFestivos : Integer;
  fechaInicio, fechaTermino : TDateTime;
  titulo, aplicaPagoDescanso :  string;
begin
  //Crear las Listas de Raya conforme a los cortes que el usuario haya creado
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      //Revisar si hay cortes en la lista
      if listaCortes.Items.Count > 0 then
      begin
        //Eliminar cualquier corte existente aunque el usuario haya vuelto a crear nuevos cortes.
        if Not CargarDatosFiltrados(cdCortes, 'IdTipoNomina, IdPeriodosGuardia', [IdTipoNomina, idPeriodosGuardia]) then
          raise InteligentException.CreateByCode(6, ['IdTipoNomina', 'IdPeriodosGuardia', 'nom_nomina']);

        if cdCortes.Active then
          cdCortes.Refresh
        else
          cdCortes.Open;

        while Not cdCortes.Eof do
        begin
          if Not CargarDatosFiltrados(cdDetalleNomina, 'IdNomina', [cdCortes.FieldByName('IdNomina').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_detallenomina']);

          if cdDetalleNomina.Active then
            cdDetalleNomina.Refresh
          else
            cdDetalleNomina.Open;

          //Si hay registros en nom_detallenomina, proceder a eliminar los registros de dicha tabla
          if cdDetalleNomina.RecordCount > 0 then
          begin
            //Eliminar registros de la tabla nom_detallenomina
            while Not cdDetalleNomina.Eof do
            begin
              cdDetalleNomina.Delete;
              cdDetalleNomina.ApplyUpdates(-1);
            end;
          end;

          //Si hay registros en nom_nominapersonal, proceder a eliminar los registros de dicha tabla
          if Not CargarDatosFiltrados(cdNominaPersonal, 'IdNomina', [cdCortes.FieldByName('IdNomina').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['IdNomina', 'nom_nominapersonal']);

          if cdNominaPersonal.Active then
            cdNominaPersonal.Refresh
          else
            cdNominaPersonal.Open;

          if cdNominaPersonal.RecordCount > 0 then
          begin
            while Not cdNominaPersonal.Eof do
            begin
              cdNominaPersonal.Delete;
              cdNominaPersonal.ApplyUpdates(-1);
            end;
          end;

          cdCortes.Delete;
          cdCortes.ApplyUpdates(-1);
        end;

        i := 0;
        while i < listaCortes.Items.Count do
        begin
          fechaInicio        :=     TCorte(listaCortes.Items.Objects[i]).FechaInicio;
          fechaTermino       :=      TCorte(listaCortes.Items.Objects[i]).FechaCorte;
          titulo             :=         TCorte(listaCortes.Items.Objects[i]).Leyenda;
          aplicaPagoDescanso :=  TCorte(listaCortes.Items.Objects[i]).pagarDescansos;

          dias := DaysBetween(fechaInicio, fechaTermino) + 1;

          cdCortes.Append;
          cdCortes.FieldByName('IdNomina').AsInteger           :=  0;
          cdCortes.FieldByName('IdTipoNomina').AsInteger       :=       idTipoNomina;
          cdCortes.FieldByName('IdPeriodosGuardia').AsInteger  :=  idPeriodosGuardia;
          cdCortes.FieldByName('Titulo').AsString              :=             titulo;
          cdCortes.FieldByName('FechaNomina').AsDateTime       :=        fechaInicio;
          cdCortes.FieldByName('FechaTerminoNomina').AsDateTime :=      fechaTermino;
          cdCortes.FieldByName('FechaPagoNomina').AsDateTime   :=       fechaTermino;
          cdCortes.FieldByName('Dias').AsInteger               :=  dias; //Cambiar por el valor que calcula los dias

          //Obtener los domingos entre el rango de fechas del periodo
          domingos := 0;
          while fechaInicio <= fechaTermino do
          begin
            if DayOfWeek(fechaInicio) = 1 then
              domingos := domingos + 1;

            fechaInicio := IncDay(fechaInicio, 1);
          end;

          cdCortes.FieldByName('Domingos').AsInteger :=           domingos;

          fechaInicio  := TCorte(listaCortes.Items.Objects[i]).FechaInicio;
          fechaTermino :=  TCorte(listaCortes.Items.Objects[i]).FechaCorte;

          if Not CargarDatosFiltrados(cdFestivos, 'Anio', [YearOf(fechaInicio)]) then
            raise InteligentException.CreateByCode(6, ['Anio', 'rhu_diasfestivos']);

          if cdFestivos.Active then
            cdFestivos.Refresh
          else
            cdFestivos.Open;

          diasFestivos := 0;
          cdFestivos.First;
          while not cdFestivos.Eof do
          begin
            if (cdFestivos.FieldByName('Fecha').AsDateTime >= fechaInicio) and
               (cdFestivos.FieldByName('Fecha').AsDateTime <= fechaTermino) then
               diasFestivos := diasFestivos + 1;

            cdFestivos.Next;
          end;

          cdCortes.FieldByName('Festivos').AsInteger           :=       diasFestivos;
          cdCortes.FieldByName('Estado').AsString              :=          'ABIERTA';
          cdCortes.FieldByName('AplicaPagoDescanso').AsString  := aplicaPagoDescanso;
          cdCortes.Post;
          cdCortes.ApplyUpdates(-1);

          i := i + 1;
        end;

        if i > 0 then
        begin
          MessageDlg('¡Periodos creados correctamente!', mtInformation, [mbOk], 0);
          Close;
        end;
      end
      else
        MessageDlg('¡No hay cortes en la lista!', mtInformation, [mbOk], 0);
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCorteNominas.FormCreate(Sender: TObject);
begin
  try
    if Not CrearConjunto(cdCortes, 'nom_nomina', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['nom_nomina']);

    if Not CrearConjunto(cdFestivos, 'rhu_diasfestivos', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['rhu_diasfestivos']);

    if Not CrearConjunto(cdDetalleNomina, 'nom_detallenomina', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['nom_detallenomina']);

    if not CrearConjunto(cdNominaPersonal, 'nom_nominapersonal', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['nom_nominapersonal']);
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCorteNominas.FormShow(Sender: TObject);
begin
  //Valores labels
  lblPeriodoTrabajo.Caption     :=      Periodo;
  lblInicio.Caption  :=  DateToStr(FechaInicio);
  lblTermino.Caption := DateToStr(FechaTermino);

  //Poner la fecha Minima del calendario de cortes
  cxDateCorte.Properties.MinDate :=  FechaInicio;
  cxDateCorte.Properties.MaxDate := FechaTermino;
  cxDateCorte.Date     :=       FechaInicio + 14;
end;

end.
