unit UTFrmAbrirNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ClientModuleUnit1, UInteliDialog, DB, DBClient,
  URegistro, StdCtrls, AdvGlowButton, DBCtrls, JvExControls, JvLabel,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, dxBar, cxButtons, cxGroupBox,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Menus, DateUtils;

type
  TInfoNodo = Class
    Abierto: Boolean;
    Anio: Word;
    IdTipoNomina: Integer;
  End;

  TInfoNomina = Class
    IdNomina: Integer;
    Titulo: String;
    Estado: String;
    FechaNomina: TDate;
    FechaTerminoNomina: TDate;
    Dias: Integer;
    CantidadPersonal: Integer;
    Pagados: Integer;
    NoPagados: Integer;
    Neto: Real;
    Anio: Word;
    IdTipoNomina: Integer;
  End;

  TMesNomina = class
    Abierto : Boolean;
    mes : string;
    numeroMes : Integer;
  end;

  TFrmAbrirNomina = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    tvNominas: TTreeView;
    Splitter1: TSplitter;
    cdAnios: TClientDataSet;
    cdTiposNomina: TClientDataSet;
    cdNomina: TClientDataSet;
    gbNomina: TcxGroupBox;
    Btn_Abrir: TcxButton;
    Btn_Cancelar: TcxButton;
    Panel4: TPanel;
    dsNominaFuera: TDataSource;
    Titulo: TMemo;
    Inicio: TLabel;
    Termino: TLabel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Estado: TLabel;
    JvLabel4: TJvLabel;
    CantidadPersonal: TLabel;
    JvLabel5: TJvLabel;
    Neto: TLabel;
    JvLabel6: TJvLabel;
    Dias: TLabel;
    dsGrafica: TDataSource;
    DxBManager1: TdxBarManager;
    JvLabel7: TJvLabel;
    lblPagados: TLabel;
    JvLabel8: TJvLabel;
    lblNoPagados: TLabel;
    btnAbrirCerrarNomina: TcxButton;
    cdNominaMod: TClientDataSet;
    lblNominasCerradas: TLabel;
    cdMeses: TClientDataSet;
    procedure tvNominasDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvNominasChange(Sender: TObject; Node: TTreeNode);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Btn_AbrirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAbrirCerrarNominaClick(Sender: TObject);
    function obtenerMesDeFecha(numeroDeMes : integer) : string;
  private
    AnioActual: Word;
    IdTipoNomina: Integer;
  public
    { Public declarations }
  end;

var
  FrmAbrirNomina: TFrmAbrirNomina;

implementation

uses
  UTFrmCatalogoNominas, UTFrmSU;

{$R *.dfm}

procedure TFrmAbrirNomina.btnAbrirCerrarNominaClick(Sender: TObject);
var
  asterisco : string;
begin
  asterisco := '* ';
  //Si lsa nomina esta abierta, entonces cerrar la nomina
  try
    Application.CreateForm(TFrmSu, FrmSu);
    FrmSu.FormularioDeLlamada := 'UTfrmAbrirNomina';
    FrmSu.ShowModal;

    if FrmSu.permitido = True then
    begin
      cdNominaMod.Close;

      if Not CrearConjunto(cdNominaMod, 'nom_nomina', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Nomina']);

      if not CargarDatosFiltrados(cdNominaMod, 'IdNomina', [TInfoNomina(tvNominas.Selected.Data).IdNomina]) then
        raise InteligentException.CreateByCode(6, ['Anio', 'Detalle Grafica', VarToStr(AnioActual)]);

      if cdNominaMod.Active then
        cdNominaMod.Refresh
      else
        cdNominaMod.Open;

      cdNominaMod.Edit;
      if TInfoNomina(tvNominas.Selected.Data).Estado = 'ABIERTA' then
      begin
        cdNominaMod.FieldByName('Estado').AsString := 'CERRADA';
        btnAbrirCerrarNomina.Caption := 'Abrir Nomina';
        lblNominasCerradas.Caption := 'Algunas opciones de esta nomina estaran deshabilitadas';
        tvNominas.Selected.Text := asterisco + TInfoNomina(tvNominas.Selected.Data).Titulo;
        TInfoNomina(tvNominas.Selected.Data).Estado := 'CERRADA';
      end
      else if TInfoNomina(tvNominas.Selected.Data).Estado = 'CERRADA' then
      begin
        cdNominaMod.FieldByName('Estado').AsString := 'ABIERTA';
        btnAbrirCerrarNomina.Caption := 'Cerrar Nomina';
        lblNominasCerradas.Caption := '';
        tvNominas.Selected.Text := TInfoNomina(tvNominas.Selected.Data).Titulo;
        TInfoNomina(tvNominas.Selected.Data).Estado := 'ABIERTA';
      end;
      cdNominaMod.Post;
      cdNominaMod.ApplyUpdates(-1);
      //Si se modifico el estado en la BD, entonces mostrar el nuevo estado en el label de Estado
      Estado.Caption := cdNominaMod.FieldByName('Estado').AsString;
    end
    else
    begin
      if FrmSu.cancelado = False then
      begin
        FrmSu.Close;
        InteliDialog.ShowModal('Error de Autenticación', 'La contraseña es incorrecta.', mtinformation, [mbOK], 0);
      end;
    end;

  except
      on e : exception do
      begin
        ShowMessage(e.Message);
      end;
  end;
end;

procedure TFrmAbrirNomina.Btn_AbrirClick(Sender: TObject);
var
  Cursor: TCursor;
  TipoNomina: Integer;
  NodoPadre : TTreeNode;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    // Localizar el registro de la nómina
    dsNominaFuera.DataSet.close;
    if CargarDatosFiltrados(TClientDataSet(dsNominaFuera.DataSet), 'IdNomina', [TInfoNomina(tvNominas.Selected.Data).IdNomina]) then
    begin
      Try
        AnioActual := TInfoNomina(tvNominas.Selected.Data).Anio;
        TipoNomina := TInfoNomina(tvNominas.Selected.Data).IdTipoNomina;
        if dsGrafica.DataSet <> nil then
          if not CargarDatosFiltrados(TClientDataSet(dsGrafica.DataSet), 'IdTipoNomina,Anio,Desglose', [TipoNomina, AnioActual, -1]) then
            raise InteligentException.CreateByCode(6, ['Anio', 'Detalle Grafica', VarToStr(AnioActual)]);

      Except
        AnioActual := 0;
      End;

      Try
        IdTipoNomina := TInfoNodo(tvNominas.Selected.Parent.Data).IdTipoNomina;
      Except
        IdTipoNomina := -1;
      End;

      if dsNominaFuera.DataSet.Active then
        dsNominaFuera.DataSet.Refresh
      else
        dsNominaFuera.DataSet.Open;

      if dsGrafica.DataSet <> nil then
      begin
        if dsGrafica.DataSet.Active then
          dsGrafica.DataSet.Refresh
        else
          dsGrafica.DataSet.Open;
      end;
       //FrmCatalogoNominas.IdTipoNomina := TInfoNodo(tvNominas.Items.Item[tvNominas.Selected.Index]).IdTipoNomina;
    end
    else
      ModalResult := mrAbort;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmAbrirNomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LimpiarBufferMouse;

  SetRegistry('\Ventanas', '\' + Self.Name, 'AnioActual', IntToStr(AnioActual));
  SetRegistry('\Ventanas', '\' + Self.Name, 'IdTipoNomina', IntToStr(IdTipoNomina));

  Action := caHide;
end;

procedure TFrmAbrirNomina.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
  YaSeleccionado: Integer;
  Padre, NodoAnio: TTreeNode;
  InfoNodo: TInfoNodo;
begin

  AccedeACoordenadas(Self);

  // Posicion del Splitter
  Try
    tvNominas.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'tvNominasWidth'));
  Except
    ;
  End;
  // Levantar el valor anterior del Anio revisado
  Try
    AnioActual := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'AnioActual'));
  Except
    AnioActual := 0;
  End;

  Try
    IdTipoNomina := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'IdTipoNomina'));
  Except
    IdTipoNomina := -1;
  End;

  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    if Not CrearConjunto(cdAnios, 'nom_nomina_anios', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Años de las Nóminas']);

    if Not CrearConjunto(cdTiposNomina, 'nom_nomina_tiponomina', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Tipos de Nómina anuales']);

    if Not CrearConjunto(cdNomina, 'nom_nomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Nóminas']);

    if Not CrearConjunto(cdMeses, 'nom_nomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Nóminas']);

    cdAnios.Open;
    cdTiposNomina.Open;

    tvNominas.Items.Clear;
    YaSeleccionado := -1;
    Padre := tvNominas.Items.Add(Nil, 'Nóminas');
    while not cdAnios.Eof do
    begin
      if (YaSeleccionado < 0) and (cdAnios.FieldByName('Anio').AsInteger = AnioActual) then
        YaSeleccionado := tvNominas.Items.Count;

      NodoAnio := tvNominas.Items.AddChild(Padre, cdAnios.FieldByName('Anio').AsString);

      // Generar los nodos correspondientes a los tipos de nómina de este año
      Try
        cdTiposNomina.Filtered := False;
        cdTiposNomina.Filter := 'Anio = ' + cdAnios.FieldByName('Anio').AsString;
        cdTiposNomina.Filtered := True;

        cdTiposNomina.First;
        while not cdTiposNomina.Eof do
        begin
          if (YaSeleccionado >= 0) and (cdAnios.FieldByName('Anio').AsInteger = AnioActual) and (cdTiposNomina.FieldByName('IdTipoNomina').AsInteger = IdTipoNomina) then
            YaSeleccionado := tvNominas.Items.Count;

          InfoNodo := TInfoNodo.Create;
          InfoNodo.Abierto := False;
          InfoNodo.Anio := cdAnios.FieldByName('Anio').AsInteger;
          InfoNodo.IdTipoNomina := cdTiposNomina.FieldByName('IdTipoNomina').AsInteger;

          tvNominas.Items.AddChildObject(NodoAnio, cdTiposNomina.FieldByName('Titulo').AsString, InfoNodo);

          cdTiposNomina.Next;
        end;
      Finally
        cdTiposNomina.Filtered := False;
      End;

      cdAnios.Next;
    end;

    if YaSeleccionado >= 0 then
    begin
      tvNominas.Items.Item[YaSeleccionado].Selected := True;
      tvNominas.Items.Item[YaSeleccionado].Expand(True);
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmAbrirNomina.FormDestroy(Sender: TObject);
var
  Action: TCloseAction;
begin
  EliminarConjunto([cdAnios, cdTiposNomina]);

  LiberarVentana(Self, Action);

  SetRegistry('\Ventanas', '\' + Self.Name, 'tvNominasWidth', IntToStr(tvNominas.Width));
end;

procedure TFrmAbrirNomina.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
  Objeto: TObject;
begin
  if (Key = 116) and (Shift = []) then
  begin
    // Si se encuentra dentro de un nivel 3 será mejor que se seleccione el padre
    if tvNominas.Selected.Level = 3 then
      tvNominas.Selected.Parent.Selected := True;

    // Eliminar los nodos de nivel 3 para forzar a que se vuelvan a leer los datos
    i := 0;
    while i < tvNominas.Items.Count do
    begin
      // Modificar el estado de lectura de nodo para el nivel 2
      if tvNominas.Items.Item[i].Level = 2 then
        TInfoNodo(tvNominas.Items.Item[i].Data).Abierto := False;

      // Si el nodo actual es nivel 3 hay que eliminarlo
      if tvNominas.Items.Item[i].Level = 3 then
      begin
        Objeto := TObject(tvNominas.Items.Item[i].Data);
        Objeto := Nil;
        tvNominas.Items.Item[i].Delete;
      end
      else
        Inc(i);
    end;
  end;
end;

function TFrmAbrirNomina.obtenerMesDeFecha(numeroDeMes: integer): string;
var
  mes : string;
begin
  //Devuelve el mes en formato string por ejemplo 01(devuelve Enero), 02(Devuelve Febrero), etc.
  if numeroDeMes = 1 then
    mes := 'ENERO'
  else if numeroDeMes = 2 then
    mes := 'FEBRERO'
  else if numeroDeMes = 3 then
    mes := 'MARZO'
  else if numeroDeMes = 4 then
    mes := 'ABRIL'
  else if numeroDeMes = 5 then
    mes := 'MAYO'
  else if numeroDeMes = 6 then
    mes := 'JUNIO'
  else if numeroDeMes = 7 then
    mes := 'JULIO'
  else if numeroDeMes = 8 then
    mes := 'AGOSTO'
  else if numeroDeMes = 9 then
    mes := 'SEPTIEMBRE'
  else if numeroDeMes = 10 then
    mes := 'OCTUBRE'
  else if numeroDeMes = 11 then
    mes := 'NOVIEMBRE'
  else if numeroDeMes = 12 then
    mes := 'DICIEMBRE';

  Result := mes;
end;

procedure TFrmAbrirNomina.tvNominasChange(Sender: TObject; Node: TTreeNode);
begin
  gbNomina.Visible := False;
  Btn_Abrir.Enabled := False;

  if Node.Level = 4 then
  begin
    // Mostrar los datos de la nómina
    Titulo.Text     :=                        TInfoNomina(tvNominas.Selected.Data).Titulo;
    Inicio.Caption  :=        DateToStr(TInfoNomina(tvNominas.Selected.Data).FechaNomina);
    Termino.Caption := DateToStr(TInfoNomina(tvNominas.Selected.Data).FechaTerminoNomina);
    Estado.Caption  :=                        TInfoNomina(tvNominas.Selected.Data).Estado;
    Dias.Caption    :=                IntToStr(TInfoNomina(tvNominas.Selected.Data).Dias);
    CantidadPersonal.Caption :=  IntToStr(TInfoNomina(tvNominas.Selected.Data).CantidadPersonal);
    Neto.Caption    := FloatToStrF(TInfoNomina(tvNominas.Selected.Data).Neto, ffCurrency, 16, 2);
    lblPagados.Caption :=          IntToStr(TInfoNomina(tvNominas.Selected.Data).Pagados);
    lblNoPagados.Caption :=      IntToStr(TInfoNomina(tvNominas.Selected.Data).NoPagados);
  end;

  gbNomina.Visible := Node.Level  = 4;
  Btn_Abrir.Enabled := Node.Level = 4;

  //Cuando la nomina este en estado ABIERTA, mostrar boton para cerrar Nomina
  if (tvNominas.Selected.Level = 4) then
  begin
    if TInfoNomina(tvNominas.Selected.Data).Estado = 'ABIERTA' then
    begin
      lblNominasCerradas.Caption := '';
      btnAbrirCerrarNomina.Caption := 'Cerrar Nomina';
    end
    else if TInfoNomina(tvNominas.Selected.Data).Estado = 'CERRADA' then
    begin
      lblNominasCerradas.Caption := 'Algunas opciones de esta nomina estaran deshabilitadas';
      btnAbrirCerrarNomina.Caption := 'Abrir Nomina';
    end;
  end;
end;

procedure TFrmAbrirNomina.tvNominasDblClick(Sender: TObject);
var
  InfoNodo, infoNodoMes  :   TInfoNodo;
  InfoNomina: TInfoNomina;
  NodoPadre, nodoPadreMes :   TTreeNode;
  CustomNOdo:   TTreeNode;
  Cursor      :   TCursor;
  mesAnterior :   integer;
  mesNomina  : TMesNomina;
  anos : array of Integer;
  i : Integer;
  pintarMes : Boolean;
begin
  if (tvNominas.Items.Count > 0) and (tvNominas.SelectionCount > 0) then
  begin
    if (tvNominas.Selected.Level = 2) and (Not tvNominas.Selected.Expanded) then
    begin
      NodoPadre := tvNominas.Selected;
      mesNomina :=     NodoPadre.Data;
      InfoNodo  :=     NodoPadre.Data;
      if Not InfoNodo.Abierto then
      begin
        Try
          Cursor := Screen.Cursor;
          Try
            Screen.Cursor := crAppStart;
            // Leer las nóminas correspondientes al año y al tipo de nómina
            if cdMeses.Active then
              cdMeses.Close;

            if Not CargarDatosFiltrados(cdMeses, 'AnioPago,IdTipoNomina', [InfoNodo.Anio, InfoNodo.IdTipoNomina]) then
              raise InteligentException.CreateByCode(6, ['Nóminas', IntToStr(InfoNodo.Anio) + '-' + IntToStr(InfoNodo.IdTipoNomina), 'Anio-Id. TipoNomina']);
            cdMeses.Open;

            mesAnterior := 0;
            while not cdMeses.Eof do
            begin
              pintarMes := True;
              if Length(anos) > 0 then
              begin
                for i := 0 to Length(anos) do
                begin
                  if anos[i] = monthOf(cdMeses.FieldByName('fechaPagoNomina').AsDateTime) then
                  begin
                    pintarMes := False;
                    break;
                  end;
                end;
              end;

              if pintarMes = True then
              begin
                //Poner el Mes como padre de las nominas (el mes estara en el nivel 3)
                if (mesAnterior <> monthOf(cdMeses.FieldByName('fechaPagoNomina').AsDateTime)) or (mesAnterior = 0) then
                begin
                  mesNomina     := TMesNomina.Create;
                  mesNomina.Abierto := False;
                  mesNomina.mes := obtenerMesDeFecha(monthOf(cdMeses.FieldByName('fechaPagoNomina').AsDateTime));
                  mesNomina.numeroMes :=              monthOf(cdMeses.FieldByName('fechaPagoNomina').AsDateTime);

                  tvNominas.Items.AddChildObject(NodoPadre, mesNomina.mes, mesNomina);

                  SetLength(anos, Length(anos) + 1);
                  anos[Length(anos) - 1] := monthOf(cdMeses.FieldByName('fechaPagoNomina').AsDateTime);
                end;
                mesAnterior := monthOf(cdMeses.FieldByName('fechaPagoNomina').AsDateTime);
              end;

              cdMeses.Next;
            end;

            if cdMeses.RecordCount > 0 then
              NodoPadre.Expand(True);

            InfoNodo.Abierto := True; // Informar al nodo que ya ha sido abierto
          Finally
            Screen.Cursor := Cursor;
          End;
        Except
          on e:InteligentException do
            InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

          on e:Exception do
            InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        End;
      end;
    end
    else if (tvNominas.Selected.Level = 3) and (Not tvNominas.Selected.Expanded) then
    begin
      NodoPadre := tvNominas.Selected.Parent;
      InfoNodo  :=     NodoPadre.Data;

      nodoPadreMes := tvNominas.Selected;
      infoNodoMes := nodoPadreMes.Data;

      if Not InfoNodoMes.Abierto then
      begin
        Try
          Cursor := Screen.Cursor;
          Try
            Screen.Cursor := crAppStart;
            // Leer las nóminas correspondientes al año y al tipo de nómina
            if cdNomina.Active then
              cdNomina.Close;

            if Not CargarDatosFiltrados(cdNomina, 'AnioPago,IdTipoNomina', [InfoNodo.Anio, InfoNodo.IdTipoNomina]) then
              raise InteligentException.CreateByCode(6, ['Nóminas', IntToStr(InfoNodo.Anio) + '-' + IntToStr(InfoNodo.IdTipoNomina), 'Anio-Id. TipoNomina']);
            cdNomina.Open;

            NodoPadre := tvNominas.Selected;
            InfoNodo  :=     NodoPadre.Data;

            while not cdNomina.Eof do
            begin
              if MonthOf(cdNomina.FieldByName('fechaPagoNomina').AsDateTime) = TMesNomina(tvNominas.Selected.Data).numeroMes then
              begin
                InfoNomina := TInfoNomina.Create;
                InfoNomina.IdNomina :=        cdNomina.FieldByName('IdNomina').AsInteger;
                InfoNomina.Titulo   :=           cdNomina.FieldByName('Titulo').AsString;
                InfoNomina.Estado   :=           cdNomina.FieldByName('Estado').AsString;
                InfoNomina.FechaNomina := cdNomina.FieldByName('FechaNomina').AsDateTime;
                InfoNomina.FechaTerminoNomina := cdNomina.FieldByName('FechaTerminoNomina').AsDateTime;
                InfoNomina.Dias     :=            cdNomina.FieldByName('Dias').AsInteger;
                InfoNomina.CantidadPersonal := cdNomina.FieldByName('CantidadPersonal').AsInteger;
                InfoNomina.Neto     :=              cdNomina.FieldByName('Neto').AsFloat;
                InfoNomina.Pagados  :=         cdNomina.FieldByName('Pagados').AsInteger;
                InfoNomina.NoPagados :=      cdNomina.FieldByName('NoPagados').AsInteger;
                InfoNomina.Anio :=      YearOf(cdNomina.FieldByName('FechaPagoNomina').AsDateTime);
                InfoNomina.idTipoNomina :=      cdNomina.FieldByName('idTipoNomina').AsInteger;

                if cdNomina.FieldByName('Estado').AsString = 'CERRADA' then
                begin
                  tvNominas.Items.AddChildObject(NodoPadre,'* ' + cdNomina.FieldByName('Titulo').AsString, InfoNomina);
                end
                else if cdNomina.FieldByName('Estado').AsString = 'ABIERTA' then
                begin
                  tvNominas.Items.AddChildObject(NodoPadre, cdNomina.FieldByName('Titulo').AsString, InfoNomina);
                end;
              end;

              cdNomina.Next;
            end;

            if cdNomina.RecordCount > 0 then
              NodoPadre.Expand(True);

            InfoNodoMes.Abierto := True; // Informar al nodo que ya ha sido abierto
          Finally
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

    if (tvNominas.Selected.Level = 4) and (Not tvNominas.Selected.Expanded) then
      // Seleccionar la Nómina
      Btn_Abrir.Click;
  end;
end;

end.

