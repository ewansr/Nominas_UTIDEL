unit UTFrmModificarImportesNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, DBClient, Grids, DBGrids, ExtCtrls,
  NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, JvExControls, JvLabel, AdvGlowButton, ClientModuleUnit1, URegistro,
  JvExDBGrids, JvDBGrid, Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TDetalleRecord = class
    CodigoConcepto,
    IdGrupoConcepto,
    Clave,
    Titulo,
    Descripcion,
    Modo,
    Imprime,
    Valor,
    Cargo: String;
  end;

  TFrmModificarImportesNomina = class(TForm)
    dsDetalle: TDataSource;
    cdPerDetalle: TClientDataSet;
    cdPerDetalleCodigoConcepto: TStringField;
    cdPerDetalleIdGrupoConcepto: TIntegerField;
    cdPerDetalleClave: TStringField;
    cdPerDetalleTitulo: TStringField;
    cdPerDetalleDescripcion: TStringField;
    cdPerDetalleModo: TStringField;
    cdPerDetalleImprime: TStringField;
    cdPerDetalleCargo: TStringField;
    dsPerDetalle: TDataSource;
    Panel1: TPanel;
    DBText1: TDBText;
    Panel2: TPanel;
    cdPerDetalleValor: TStringField;
    cdDedDetalle: TClientDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    dsDedDetalle: TDataSource;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    lblPercepciones: TJvLabel;
    JvLabel2: TJvLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    lblDeducciones: TJvLabel;
    JvLabel4: TJvLabel;
    Panel8: TPanel;
    lblNeto: TJvLabel;
    JvLabel3: TJvLabel;
    Panel9: TPanel;
    Btn_Cancelar: TAdvGlowButton;
    Panel10: TPanel;
    Btn_Aceptar: TAdvGlowButton;
    DBPercepciones: TJvDBGrid;
    DBDeducciones: TJvDBGrid;
    Panel_Captura1: TPanel;
    lblCampo: TJvLabel;
    Nuevo: TJvDBCalcEdit;
    Panel11: TPanel;
    Btn_Ok1: TAdvGlowButton;
    Btn_Cancelar1: TAdvGlowButton;
    Panel12: TPanel;
    Panel13: TPanel;
    Original: TEdit;
    JvLabel1: TJvLabel;
    JvLabel5: TJvLabel;
    Panel_Captura2: TPanel;
    Panel14: TPanel;
    lblCampo2: TJvLabel;
    Panel15: TPanel;
    Panel16: TPanel;
    Btn_Ok2: TAdvGlowButton;
    Btn_Cancelar2: TAdvGlowButton;
    Panel17: TPanel;
    cdObrero: TClientDataSet;
    cdPatronal: TClientDataSet;
    cdObreroIdConcepto: TIntegerField;
    cdObreroTitulo: TStringField;
    cdObreroValor: TFloatField;
    cdObreroOrValor: TFloatField;
    cdPatronalIdConcepto: TIntegerField;
    cdPatronalTitulo: TStringField;
    cdPatronalValor: TFloatField;
    cdPatronalOrValor: TFloatField;
    dsObrero: TDataSource;
    dsPatronal: TDataSource;
    Obrero: TJvDBGrid;
    cdObreroCodigoConcepto: TStringField;
    cdPatronalCodigoConcepto: TStringField;
    cdObreroCurValor: TFloatField;
    cdPatronalCurValor: TFloatField;
    Patronal: TJvDBGrid;
    jvlbl1: TJvLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdDedDetalleAfterPost(DataSet: TDataSet);
    procedure cdDedDetalleBeforeEdit(DataSet: TDataSet);
    procedure Btn_AceptarClick(Sender: TObject);
    procedure cdPerDetalleAfterPost(DataSet: TDataSet);
    procedure cdPerDetalleBeforeEdit(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure DBPercepcionesDblClick(Sender: TObject);
    procedure Btn_Cancelar1Click(Sender: TObject);
    procedure Btn_Ok1Click(Sender: TObject);
    procedure ObreroDblClick(Sender: TObject);
    procedure Btn_Ok2Click(Sender: TObject);
  private
    OrigValor: Real;
    Elementos: TDataSetField;
    EnProceso: Boolean;
    SeModifico: Boolean;
    mrSalida: Byte;
    CuentaBase: Integer;
    AltoOriginal: Word;
    procedure LimpiaMemoria(Cual: Word);
  public
    Percepciones,
    Deducciones: Real;
    procedure recargarValores;
  end;

var
  FrmModificarImportesNomina: TFrmModificarImportesNomina;

implementation

uses UInteliDialog;

{$R *.dfm}

function Parte(Const Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;

  Result := Copy(Cadena, 1, Pos('|', Cadena) -1);
end;

function Cuenta(Cadena: String): Integer;
var
  Cta: Integer;
begin
  Cta := 0;
  while Pos('|', Cadena) > 0 do
  begin
    Inc(Cta);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;

  Result := Cta;
end;

procedure CambiarValor(Var Original: String; Const Indice: Integer; Const NuevoValor: String);
var
  i, x: Integer;
  Paso, Respaldo: String;
begin
  Paso := Original;
  Respaldo := '';
  i := 0;
  x := Pos('|', Paso);
  while (i < Indice) and (x > 0) do
  begin
    Inc(i);
    Respaldo := Respaldo + Copy(Paso, 1, x);
    Paso := Copy(Paso, x +1, Length(Paso));
    x := Pos('|', Paso);
  end;

  if i = Indice then
  begin
    Original := Respaldo + NuevoValor;
    if Paso <> '' then
      Original := Original + '|' + Copy(Paso, Pos('|', Paso) +1, Length(Paso));
  end;
end;

procedure TFrmModificarImportesNomina.LimpiaMemoria(Cual: Word);
begin
  if Cual = 1 then
  begin
    Panel_Captura1.Visible := False;
    Panel_Captura1.Parent := Self;
    Panel_Captura1.Align := alNone;
    Panel_Captura1.Height := AltoOriginal;
    lblCampo.Caption := '';
    Original.Text := '';
    Nuevo.DataSource := Nil;
  end
  else
  begin
    Panel_Captura2.Visible := False;
    Panel_Captura2.Parent := Self;
    Panel_Captura2.Align := alNone;
    Panel_Captura2.Height := AltoOriginal;
    lblCampo2.Caption := '';
  end;
end;

procedure TFrmModificarImportesNomina.Btn_AceptarClick(Sender: TObject);
var
  Posicion: Integer;
  LocCadena: String;
  Cursor: TCursor;
  per: string;
  ded: string;

function BuscarPosicion(Cadena: String; CadBuscar: String): Integer;
var
  Paso,
  SubCad: String;
  i: Integer;
begin
  Paso := Cadena;
  i := 0;
  repeat
    inc(i);
    SubCad := Copy(Paso, 1, Pos('|', Paso) -1);
    Paso := Copy(Paso, Pos('|', Paso) +1, Length(Paso));
  until (CompareText(SubCad, CadBuscar) = 0) or (Paso = '');

  if CompareText(SubCad, CadBuscar) = 0 then
    Result := i
  else
    Result := -1;
end;

procedure CambiarValor(Var Original: String; Const Indice: Integer; Const NuevoValor: String);
var
  i, x: Integer;
  Paso, Respaldo: String;
begin
  Paso := Original;
  Respaldo := '';
  i := 0;
  x := Pos('|', Paso);
  while (i +1 < Indice) and (x > 0) do
  begin
    Inc(i);
    Respaldo := Respaldo + Copy(Paso, 1, x);
    Paso := Copy(Paso, x +1, Length(Paso));
    x := Pos('|', Paso);

  end;

  if i +1 = Indice then
  begin
    Original := Respaldo + NuevoValor;
    if Paso <> '' then
      Original := Original + '|' + Copy(Paso, Pos('|', Paso) +1, Length(Paso));
  end;
end;


begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crSQLWait;
    cdPerDetalle.DisableControls;
    cdDedDetalle.DisableControls;

    StrToFloat('-18.85');
    per := StringReplace(lblPercepciones.Caption, '$', '',[rfReplaceAll, rfIgnoreCase]);
    per := StringReplace(per, ',', '',[rfReplaceAll, rfIgnoreCase]);
    per := StringReplace(per, ' ', '',[rfReplaceAll, rfIgnoreCase]);
    per := StringReplace(per, '(', '',[rfReplaceAll, rfIgnoreCase]);
    per := StringReplace(per, ')', '',[rfReplaceAll, rfIgnoreCase]);
    Percepciones := StrToFloat(per);
    ded := StringReplace(lblDeducciones.Caption, '$', '',[rfReplaceAll, rfIgnoreCase]);
    ded := StringReplace(ded, ',', '',[rfReplaceAll, rfIgnoreCase]);
    ded := StringReplace(ded, ' ', '',[rfReplaceAll, rfIgnoreCase]);
    ded := StringReplace(ded, '(', '',[rfReplaceAll, rfIgnoreCase]);
    ded := StringReplace(ded, ')', '',[rfReplaceAll, rfIgnoreCase]);
    Deducciones := StrToFloat(ded);

    // Asegurarse de que ambos dataset's se encuentren concretados
    if dsEdit in [cdPerDetalle.State, cdDedDetalle.State] then
    begin
      if cdPerDetalle.State = dsEdit then
        cdPerDetalle.Post
      else
        cdDedDetalle.Post;
    end;

    if SeModifico then
    begin
      LocCadena := dsDetalle.DataSet.FieldByName('Valor').AsString;
      dsDetalle.DataSet.Edit;

      // Verificar si se hicieron modificaciones en los rubros de detalle
      cdObrero.First;
      while Not cdObrero.Eof do
      begin
        if cdObrero.FieldByName('OrValor').AsFloat <> cdObrero.FieldByName('Valor').AsFloat then
        begin
          // Actualizar el registro de detalle
          Posicion := BuscarPosicion(dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString, cdObrero.FieldByName('CodigoConcepto').AsString);
          if Posicion >= 0 then
          begin
            CambiarValor(LocCadena, Posicion, cdObrero.FieldByName('Valor').AsString);
            dsDetalle.DataSet.FieldByName('Valor').AsString := LocCadena;
          end;
        end;
        cdObrero.Next;
      end;

      cdPatronal.First;
      while not cdPatronal.Eof do
      begin
        if cdPatronal.FieldByName('OrValor').AsFloat <> cdPatronal.FieldByName('Valor').AsFloat then
        begin
          // Actualizar el registro de detalle
          Posicion := BuscarPosicion(dsDetalle.DataSet.FieldByName('CodigoConcePto').AsString, cdPatronal.FieldByName('CodigoConcepto').AsString);
          if Posicion >= 0 then
          begin
            CambiarValor(LocCadena, Posicion, cdPatronal.FieldByName('Valor').AsString);
            dsDetalle.DataSet.FieldByName('Valor').AsString := LocCadena;
          end;
        end;

        cdPatronal.Next;
      end;

      // Localizar la posición de los conceptos de percepciones
      cdPerDetalle.First;
      while Not cdPerDetalle.Eof do
      begin
        Posicion := BuscarPosicion(dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString, cdPerDetalle.FieldByName('CodigoConcepto').AsString);
        if Posicion >= 0 then
        begin
          CambiarValor(LocCadena, Posicion, cdPerDetalle.FieldByName('Valor').AsString);
          dsDetalle.DataSet.FieldByName('Valor').AsString := LocCadena;
        end;

        cdPerDetalle.Next;
      end;

      // Localizar el elemento que guarda el total de percepciones
      Posicion := BuscarPosicion(dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString, 'TotPer');
      if Posicion >= 0 then
      begin
        LocCadena := dsDetalle.DataSet.FieldByName('Valor').AsString;
        CambiarValor(LocCadena, Posicion, floatToStr(percepciones));
        dsDetalle.DataSet.FieldByName('Valor').AsString := LocCadena;
      end;

      // Localizar la posición de los conceptos de Deducciones
      LocCadena := dsDetalle.DataSet.FieldByName('Valor').AsString;
      cdDedDetalle.First;
      while Not cdDedDetalle.Eof do
      begin
        Posicion := BuscarPosicion(dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString, cdDedDetalle.FieldByName('CodigoConcepto').AsString);
        if Posicion >= 0 then
        begin
          CambiarValor(LocCadena, Posicion, cdDedDetalle.FieldByName('Valor').AsString);
          dsDetalle.DataSet.FieldByName('Valor').AsString := LocCadena;
        end;

        cdDedDetalle.Next;
      end;

      // Localizar el elemento que guarda el total de Deducciones
      Posicion := BuscarPosicion(dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString, 'TotDed');
      if Posicion >= 0 then
      begin
        LocCadena := dsDetalle.DataSet.FieldByName('Valor').AsString;
        CambiarValor(LocCadena, Posicion, FloatToStr(Deducciones));
        dsDetalle.DataSet.FieldByName('Valor').AsString := LocCadena;
      end;

      // Localizar el elemento que guarda el Neto
      Posicion := BuscarPosicion(dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString, 'NETO');
      if Posicion >= 0 then
      begin
        LocCadena := dsDetalle.DataSet.FieldByName('Valor').AsString;
        CambiarValor(LocCadena, Posicion, FloatToStr(Percepciones - Deducciones));
        dsDetalle.DataSet.FieldByName('Valor').AsString := LocCadena;
      end;


      dsDetalle.DataSet.Post;
      TClientDataSet(dsDetalle.DataSet).ApplyUpdates(-1);
      //TClientDataSet(dsDetalle.DataSet).refresh;
      ClientModule1.registrarEvento('NOMINAS','MODIFICACION CALCULO DE NOMINA','MODIFICACION CALCULO DE NOMINA' , 0.0, 0);
    end;

    SeModifico := False;  // Si bien se hubiese modificado aquí ya se grabó y ya no es necesario validar
    mrSalida := mrOk;
    Close;
  Finally
    Screen.Cursor := Cursor;
    cdPerDetalle.EnableControls;
    cdDedDetalle.EnableControls;
  end;
end;

procedure TFrmModificarImportesNomina.Btn_Cancelar1Click(Sender: TObject);
begin
  Nuevo.DataSource.DataSet.Cancel;
end;

procedure TFrmModificarImportesNomina.Btn_CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmModificarImportesNomina.Btn_Ok1Click(Sender: TObject);
begin
  Nuevo.DataSource.DataSet.Post;
end;

procedure TFrmModificarImportesNomina.Btn_Ok2Click(Sender: TObject);
var
  TotalObrero,
  TotalPatron: Real;
begin
  // Total el imss obrero
  TotalObrero := 0;
  cdObrero.First;
  while Not cdObrero.Eof do
  begin
    TotalObrero := TotalObrero + cdObrero.FieldByName('Valor').AsFloat;

    cdObrero.Next;
  end;

  // Totaliar el imss patronal
  TotalPatron := 0;
  cdPatronal.First;
  while Not cdPatronal.Eof do
  begin
    TotalPatron := TotalPatron + cdPatronal.FieldByName('Valor').AsFloat;

    cdPatronal.Next;
  end;

  if cdDedDetalle.FieldByName('Valor').AsFloat <> TotalObrero then
  begin
    cdDedDetalle.Edit;
    cdDedDetalle.FieldByName('Valor').AsFloat := TotalObrero;
    cdDedDetalle.Post;
  end;
end;

procedure TFrmModificarImportesNomina.cdDedDetalleAfterPost(DataSet: TDataSet);
var
  ActualValor: Real;
begin
  if EnProceso then
  begin
    SeModifico := True;
    if DataSet.FieldByName('Modo').AsString = 'DEDUCCION'  then
    begin
      ActualValor := StrToFloat(DataSet.FieldByName('Valor').AsString);
      Deducciones := (Deducciones - OrigValor) + ActualValor;
      lblDeducciones.Caption := FloatToStrF(Deducciones, ffCurrency, 16, 2);
      lblNeto.Caption := FloatToStrF(Percepciones - Deducciones, ffCurrency, 16, 2);
    end;
  end;
end;

procedure TFrmModificarImportesNomina.cdDedDetalleBeforeEdit(DataSet: TDataSet);
begin
  OrigValor := StrToFloat(DataSet.FieldByName('Valor').AsString);
end;

procedure TFrmModificarImportesNomina.cdPerDetalleAfterPost(DataSet: TDataSet);
var
  ActualValor: Real;
begin
  if EnProceso then
  begin
    SeModifico := True;
    if DataSet.FieldByName('Modo').AsString = 'PERCEPCION'  then
    begin
      ActualValor := StrToFloat(DataSet.FieldByName('Valor').AsString);
      Percepciones := (Percepciones - OrigValor) + ActualValor;
      lblPercepciones.Caption := FloatToStrF(Percepciones, ffCurrency, 16, 2);
      lblNeto.Caption := FloatToStrF(Percepciones - Deducciones, ffCurrency, 16, 2);
    end;
  end;
end;

procedure TFrmModificarImportesNomina.cdPerDetalleBeforeEdit(DataSet: TDataSet);
begin
  OrigValor := StrToFloat(DataSet.FieldByName('Valor').AsString);
end;

procedure TFrmModificarImportesNomina.DBPercepcionesDblClick(Sender: TObject);
var
  FrmCaptura: TForm;
  i: Word;
  Modo, Clave, Titulo: String;

begin
  Try
    if TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Clave').AsString = 'IMSSEmpleado' then
    begin
      // Generar la ventana de captura de datos del seguro social
      if cdObrero.RecordCount = 0 then
      begin
      {cdObrero.EmptyDataSet;
      cdPatronal.EmptyDataSet;}

      for i := 0 to CuentaBase do
      begin
        Modo := Parte(i, dsDetalle.DataSet.FieldByName('Modo').AsString);
        Clave := Parte(i, dsDetalle.DataSet.FieldByName('Clave').AsString);
        Titulo := Parte(i, dsDetalle.DataSet.FieldByName('Titulo').AsString);
        if (Modo = 'IMSS') and (Clave <> 'Nil') and (Clave <> '') then
        begin
          if Parte(i, dsDetalle.DataSet.FieldByName('Cargo').AsString) = 'OBRERO' then
          begin
            cdObrero.Append;
            cdObrero.FieldByName('IdConcepto').AsInteger := i;
            cdObrero.FieldByName('CodigoConcepto').AsString := Parte(i, dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString);
            cdObrero.FieldByName('Titulo').AsString := Parte(i, dsDetalle.DataSet.FieldByName('Titulo').AsString);
            cdObrero.FieldByName('Valor').AsString := Parte(i, dsDetalle.DataSet.FieldByName('Valor').AsString);
            cdObrero.FieldByName('OrValor').AsString := cdObrero.FieldByName('Valor').AsString;
            cdObrero.Post;
          end;

          if Parte(i, dsDetalle.DataSet.FieldByName('Cargo').AsString) = 'PATRONAL' then
          begin
            cdPatronal.Append;
            cdPatronal.FieldByName('IdConcepto').AsInteger := i;
            cdPatronal.FieldByName('CodigoConcepto').AsString := Parte(i, dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString);
            cdPatronal.FieldByName('Titulo').AsString := Parte(i, dsDetalle.DataSet.FieldByName('Titulo').AsString);
            cdPatronal.FieldByName('Valor').AsString := Parte(i, dsDetalle.DataSet.FieldByName('Valor').AsString);
            cdPatronal.FieldByName('OrValor').AsString := cdObrero.FieldByName('Valor').AsString;
            cdPatronal.Post;
          end;
        end;
      end;
      end;

      FrmCaptura := TForm.Create(Self);
      Try
        AltoOriginal := Panel_Captura2.Height;
        FrmCaptura.Caption := 'Captura concepto de ' + TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Modo').AsString;
        FrmCaptura.Height := Panel_Captura2.Height + 40;
        FrmCaptura.Width := Panel_Captura2.Width;
        lblCampo2.Caption := TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Titulo').AsString;
        Panel_Captura2.Parent := FrmCaptura;
        Panel_Captura2.Align := alClient;
        Panel_Captura2.Visible := True;

        if FrmCaptura.ShowModal <> mrOk then
          ShowMessage('Error Actualizar los datos');


      Finally
        LimpiaMemoria(2);

        if Assigned(FrmCaptura) then
          FrmCaptura.Free;
      end;
    end
    else
    begin
      // Generar la ventana de captura de datos regular
      FrmCaptura := TForm.Create(Self);
      Try
        AltoOriginal := Panel_Captura1.Height;
        FrmCaptura.Caption := 'Captura concepto de ' + TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Modo').AsString;
        FrmCaptura.Height := Panel_Captura1.Height + 40;
        FrmCaptura.Width := Panel_Captura1.Width;
        lblCampo.Caption := TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Titulo').AsString;
        Original.Text := TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Valor').AsString;
        Nuevo.DataSource := TJvDBGrid(Sender).DataSource;
        Panel_Captura1.Parent := FrmCaptura;
        Panel_Captura1.Align := alClient;
        Panel_Captura1.Visible := True;

        TJvDBGrid(Sender).DataSource.DataSet.Edit;
        if FrmCaptura.ShowModal <> mrOk then
          ShowMessage('Error Actualizar los datos');
      Finally
        LimpiaMemoria(1);

        if Assigned(FrmCaptura) then
          FrmCaptura.Free;
      End;
    end;
  Except
    on e:Exception do
    begin
      TJvDBGrid(Sender).DataSource.DataSet.Cancel;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmModificarImportesNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  dsDetalle.DataSet := Nil;

  LiberarVentana(Self, Action);

  for i := 0 to DBPercepciones.Columns.Count - 1 do
    if DBPercepciones.Columns.Items[i].Title.Caption <> '' then
      Try
        SetRegistry('\Ventanas', '\' + Self.Name, 'DBPercepciones-' + DBPercepciones.Columns.Items[i].Title.Caption, IntToStr(DBPercepciones.Columns.Items[i].Width));
      Except
        ;
      End;

  for i := 0 to DBDeducciones.Columns.Count - 1 do
    if DBDeducciones.Columns.Items[i].Title.Caption <> '' then
      Try
        SetRegistry('\Ventanas', '\' + Self.Name, 'DBDeducciones-' + DBDeducciones.Columns.Items[i].Title.Caption, IntToStr(DBDeducciones.Columns.Items[i].Width));
      Except
        ;
      End;

  Try
    SetRegistry('\Ventanas', '\' + Self.Name, Panel6.Name, IntToStr(Panel6.Height));
  Except
    ;
  End;

  ModalResult := mrSalida;
end;

procedure TFrmModificarImportesNomina.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if SeModifico then
    case InteliDialog.ShowModal('Se han modificado valores en esta ventana', 'Se han realizado cambios a los valores de esta ventana, si la cierra sin grabar estos cambios se perderán.' + #10 + #10 + '¿Desea grabar los datos antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: Btn_Aceptar.Click;
      mrNo: CanClose := True;
      mrCancel: CanClose := False;
    end

  else
    CanClose := Not SeModifico;
end;

procedure TFrmModificarImportesNomina.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  EnProceso := False;

  cdPerDetalle.CreateDataSet;
  cdDedDetalle.CreateDataSet;

  cdObrero.CreateDataSet;
  cdPatronal.CreateDataSet;

  AccedeACoordenadas(Self);
  ClientModule1.ComponentColor(Self);
  // Reajustar los anchos de las columnas
  for i := 0 to DBPercepciones.Columns.Count - 1 do
    Try
      DBPercepciones.Columns.Items[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'DBPercepciones-' + DBPercepciones.Columns.Items[i].Title.Caption));
    Except
      ;
    End;

  for i := 0 to DBDeducciones.Columns.Count - 1 do
    Try
      DBDeducciones.Columns.Items[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'DBDeducciones-' + DBDeducciones.Columns.Items[i].Title.Caption));
    Except
      ;
    End;

  Try
    Panel6.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, Panel6.Name));
  Except
    ;
  End;
end;

procedure TFrmModificarImportesNomina.FormShow(Sender: TObject);
var
  i: Integer;
  Cursor: TCursor;
  DetalleRecord: TDetalleRecord;
  Modo, CadValor: String;

begin
  SeModifico := False;
  mrSalida := mrCancel;

  Panel_Captura2.Width := 950;
  Panel_Captura2.Height := 400;
  Patronal.Width := 470;

  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crSQLWait;

      // Descomponer todos los elementos
      DetalleRecord := TDetalleRecord.Create;

      DetalleRecord.CodigoConcepto := dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString;
      DetalleRecord.IdGrupoConcepto := dsDetalle.DataSet.FieldByName('IdGrupoConcepto').AsString;
      DetalleRecord.Clave := dsDetalle.DataSet.FieldByName('Clave').AsString;
      DetalleRecord.Titulo := dsDetalle.DataSet.FieldByName('Titulo').AsString;
      DetalleRecord.Descripcion := dsDetalle.DataSet.FieldByName('Descripcion').AsString;
      DetalleRecord.Modo := dsDetalle.DataSet.FieldByName('Modo').AsString;
      DetalleRecord.Imprime := dsDetalle.DataSet.FieldByName('Imprime').AsString;
      DetalleRecord.Valor := dsDetalle.DataSet.FieldByName('Valor').AsString;
      DetalleRecord.Cargo := dsDetalle.DataSet.FieldByName('Cargo').AsString;

      // Verificar la integridad de la información
      CuentaBase := Cuenta(DetalleRecord.CodigoConcepto);
      if (Cuenta(DetalleRecord.IdGrupoConcepto) <> CuentaBase) or (Cuenta(DetalleRecord.Clave) <> CuentaBase) or (Cuenta(DetalleRecord.Titulo) <> CuentaBase) or (Cuenta(DetalleRecord.Descripcion) <> CuentaBase) or (Cuenta(DetalleRecord.Modo) <> CuentaBase) or (Cuenta(DetalleRecord.Imprime) <> CuentaBase) or (Cuenta(DetalleRecord.Valor) <> CuentaBase) or (Cuenta(DetalleRecord.Cargo) <> CuentaBase) then
        raise Exception.Create('La estructura de Nómina se encuentra dañada, intente recalcular para corregir el problema.');

      Percepciones := 0;
      Deducciones := 0;

      for i := 0 to CuentaBase do
      begin
        Modo := Parte(i, DetalleRecord.Modo);
        if (Modo = 'PERCEPCION') or (Modo = 'PER-MEMORIA') then
        begin
          CadValor := Parte(i, DetalleRecord.Valor);
          if Modo = 'PERCEPCION' then
            Percepciones := Percepciones + StrToFloat(CadValor);

          cdPerDetalle.Append;
          cdPerDetalle.FieldByName('CodigoConcepto').AsString := Parte(i, DetalleRecord.CodigoConcepto);
          cdPerDetalle.FieldByName('IdGrupoConcepto').AsString := Parte(i, DetalleRecord.IdGrupoConcepto);
          cdPerDetalle.FieldByName('Clave').AsString := Parte(i, DetalleRecord.Clave);
          cdPerDetalle.FieldByName('Titulo').AsString := Parte(i, DetalleRecord.Titulo);
          cdPerDetalle.FieldByName('Descripcion').AsString := Parte(i, DetalleRecord.Descripcion);
          cdPerDetalle.FieldByName('Modo').AsString := Modo;
          cdPerDetalle.FieldByName('Imprime').AsString := Parte(i, DetalleRecord.Imprime);
          cdPerDetalle.FieldByName('Valor').AsString := CadValor;
          cdPerDetalle.FieldByName('Cargo').AsString := Parte(i, DetalleRecord.Cargo);
          cdPerDetalle.Post;
        end;

        if (Modo = 'DEDUCCION') or (Modo='DED-MEMORIA') then
        begin
          CadValor := Parte(i, DetalleRecord.Valor);
          if Modo = 'DEDUCCION' then
            Deducciones := Deducciones + StrToFloat(CadValor);

          cdDedDetalle.Append;
          cdDedDetalle.FieldByName('CodigoConcepto').AsString := Parte(i, DetalleRecord.CodigoConcepto);
          cdDedDetalle.FieldByName('IdGrupoConcepto').AsString := Parte(i, DetalleRecord.IdGrupoConcepto);
          cdDedDetalle.FieldByName('Clave').AsString := Parte(i, DetalleRecord.Clave);
          cdDedDetalle.FieldByName('Titulo').AsString := Parte(i, DetalleRecord.Titulo);
          cdDedDetalle.FieldByName('Descripcion').AsString := Parte(i, DetalleRecord.Descripcion);
          cdDedDetalle.FieldByName('Modo').AsString := Modo;
          cdDedDetalle.FieldByName('Imprime').AsString := Parte(i, DetalleRecord.Imprime);
          cdDedDetalle.FieldByName('Valor').AsString := CadValor;
          cdDedDetalle.FieldByName('Cargo').AsString := Parte(i, DetalleRecord.Cargo);
          cdDedDetalle.Post;
        end;
      end;

      // Mostrar los totales

      lblPercepciones.Caption := FloatToStrF(Percepciones, ffCurrency, 16, 2);
      lblDeducciones.Caption := FloatToStrF(Deducciones, ffCurrency, 16, 2);
      lblNeto.Caption := FloatToStrF(Percepciones - Deducciones, ffCurrency, 16, 2);

      EnProceso := True;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmModificarImportesNomina.ObreroDblClick(Sender: TObject);
var
  Captura: TForm;
begin
  // Generar ventana de captura de datos
  Try
    Captura := TForm.Create(Self);

    AltoOriginal := Panel_Captura1.Height;
    Captura.Caption := 'Captura concepto de ' + cdDedDetalle.FieldByName('Modo').AsString;
    Captura.Height := Panel_Captura1.Height + 40;
    Captura.Width := Panel_Captura1.Width;
    lblCampo.Caption := TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Titulo').AsString + '  -  ' + TJvDBGrid(Sender).Name;
    Original.Text := TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Valor').AsString;
    Nuevo.DataSource := TJvDBGrid(Sender).DataSource;
    Panel_Captura1.Parent := Captura;
    Panel_Captura1.Align := alClient;
    Panel_Captura1.Visible := True;

    TJvDBGrid(Sender).DataSource.DataSet.Edit;
    TJvDBGrid(Sender).DataSource.DataSet.FieldByName('CurValor').AsFloat := TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Valor').AsFloat;
    if (Captura.ShowModal = mrOk) and (TJvDBGrid(Sender).DataSource.DataSet.FieldByName('Valor').AsFloat <> TJvDBGrid(Sender).DataSource.DataSet.FieldByName('CurValor').AsFloat) then
    begin
    end;
  Finally
    LimpiaMemoria(1);
    Captura.Free;
  End;
end;

procedure TFrmModificarImportesNomina.recargarValores;
var
  i: Integer;
  Cursor: TCursor;
  DetalleRecord: TDetalleRecord;
  Modo, CadValor: String;

begin
  SeModifico := False;
  mrSalida := mrCancel;

  Panel_Captura2.Width := 950;
  Panel_Captura2.Height := 400;
  Patronal.Width := 470;

  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crSQLWait;

      // Descomponer todos los elementos
      DetalleRecord := TDetalleRecord.Create;

      DetalleRecord.CodigoConcepto := dsDetalle.DataSet.FieldByName('CodigoConcepto').AsString;
      DetalleRecord.IdGrupoConcepto := dsDetalle.DataSet.FieldByName('IdGrupoConcepto').AsString;
      DetalleRecord.Clave := dsDetalle.DataSet.FieldByName('Clave').AsString;
      DetalleRecord.Titulo := dsDetalle.DataSet.FieldByName('Titulo').AsString;
      DetalleRecord.Descripcion := dsDetalle.DataSet.FieldByName('Descripcion').AsString;
      DetalleRecord.Modo := dsDetalle.DataSet.FieldByName('Modo').AsString;
      DetalleRecord.Imprime := dsDetalle.DataSet.FieldByName('Imprime').AsString;
      DetalleRecord.Valor := dsDetalle.DataSet.FieldByName('Valor').AsString;
      DetalleRecord.Cargo := dsDetalle.DataSet.FieldByName('Cargo').AsString;

      // Verificar la integridad de la información
      CuentaBase := Cuenta(DetalleRecord.CodigoConcepto);
      if (Cuenta(DetalleRecord.IdGrupoConcepto) <> CuentaBase) or (Cuenta(DetalleRecord.Clave) <> CuentaBase) or (Cuenta(DetalleRecord.Titulo) <> CuentaBase) or (Cuenta(DetalleRecord.Descripcion) <> CuentaBase) or (Cuenta(DetalleRecord.Modo) <> CuentaBase) or (Cuenta(DetalleRecord.Imprime) <> CuentaBase) or (Cuenta(DetalleRecord.Valor) <> CuentaBase) or (Cuenta(DetalleRecord.Cargo) <> CuentaBase) then
        raise Exception.Create('La estructura de Nómina se encuentra dañada, intente recalcular para corregir el problema.');

      Percepciones := 0;
      Deducciones := 0;

      for i := 0 to CuentaBase do
      begin
        Modo := Parte(i, DetalleRecord.Modo);
        if (Modo = 'PERCEPCION') or (Modo = 'PER-MEMORIA') then
        begin
          CadValor := Parte(i, DetalleRecord.Valor);
          if Modo = 'PERCEPCION' then
            Percepciones := Percepciones + StrToFloat(CadValor);

          cdPerDetalle.Append;
          cdPerDetalle.FieldByName('CodigoConcepto').AsString := Parte(i, DetalleRecord.CodigoConcepto);
          cdPerDetalle.FieldByName('IdGrupoConcepto').AsString := Parte(i, DetalleRecord.IdGrupoConcepto);
          cdPerDetalle.FieldByName('Clave').AsString := Parte(i, DetalleRecord.Clave);
          cdPerDetalle.FieldByName('Titulo').AsString := Parte(i, DetalleRecord.Titulo);
          cdPerDetalle.FieldByName('Descripcion').AsString := Parte(i, DetalleRecord.Descripcion);
          cdPerDetalle.FieldByName('Modo').AsString := Modo;
          cdPerDetalle.FieldByName('Imprime').AsString := Parte(i, DetalleRecord.Imprime);
          cdPerDetalle.FieldByName('Valor').AsString := CadValor;
          cdPerDetalle.FieldByName('Cargo').AsString := Parte(i, DetalleRecord.Cargo);
          cdPerDetalle.Post;
        end;

        if (Modo = 'DEDUCCION') or (Modo='DED-MEMORIA') then
        begin
          CadValor := Parte(i, DetalleRecord.Valor);
          if Modo = 'DEDUCCION' then
            Deducciones := Deducciones + StrToFloat(CadValor);

          cdDedDetalle.Append;
          cdDedDetalle.FieldByName('CodigoConcepto').AsString := Parte(i, DetalleRecord.CodigoConcepto);
          cdDedDetalle.FieldByName('IdGrupoConcepto').AsString := Parte(i, DetalleRecord.IdGrupoConcepto);
          cdDedDetalle.FieldByName('Clave').AsString := Parte(i, DetalleRecord.Clave);
          cdDedDetalle.FieldByName('Titulo').AsString := Parte(i, DetalleRecord.Titulo);
          cdDedDetalle.FieldByName('Descripcion').AsString := Parte(i, DetalleRecord.Descripcion);
          cdDedDetalle.FieldByName('Modo').AsString := Modo;
          cdDedDetalle.FieldByName('Imprime').AsString := Parte(i, DetalleRecord.Imprime);
          cdDedDetalle.FieldByName('Valor').AsString := CadValor;
          cdDedDetalle.FieldByName('Cargo').AsString := Parte(i, DetalleRecord.Cargo);
          cdDedDetalle.Post;
        end;
      end;

      // Mostrar los totales

      lblPercepciones.Caption := FloatToStrF(Percepciones, ffCurrency, 16, 2);
      lblDeducciones.Caption := FloatToStrF(Deducciones, ffCurrency, 16, 2);
      lblNeto.Caption := FloatToStrF(Percepciones - Deducciones, ffCurrency, 16, 2);

      EnProceso := True;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.

