unit UTFrmDatosCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, UInteliDialog, ComObj,
  JvComponentBase, JvEnterTab,DBCtrls, Mask, AppEvnts,
  MMSystem, TypInfo, cxGroupBox, cxButtons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  THiloSonido = Class(TThread)
    DetenerProceso: Boolean;
  Protected
    procedure Execute; Override;
    procedure IniciarSonido; virtual;
  Public
    Constructor Create;
  End;

  TFrmDatosCatalogo = class(TForm)
    PanelBarraLugar: TcxGroupBox;
    PanelDatosLugares: TcxGroupBox;
    dsDatos: TDataSource;
    BtnRec: TcxButton;
    BtnAddNew: TcxButton;
    BtnCancel: TcxButton;
    CdTmp: TClientDataSet;
    Timer1: TTimer;
    Timer2: TTimer;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
    OrCode: String;
    oldcaption:string;
    segundo:integer;
    SoundName: PWideChar;
    FormResult: Integer;
    Cuantas: Byte;
    procedure AsignarDataset(Origen, Destino: TClientDataSet; Enviar: Boolean);
    procedure AutoFieldSize(Formulario: Tform;ds:TDataSource);
  public
    KeyField: String;
    CodeField: String;
    EntityName: String;
    SoloVer: Boolean;
  end;

const
  maxsegundos = 600;          // Numero de segundos de inactividad que se debe esperar
  EmpezarCuentaAtras = 50;    // Numero de segundos para empezar la cuenta atras
  TiempoMensaje = 300;        // Tiempo de espera del mensaje de solicitud de más tiempo de edición
  RepiteCuantas = 3;          // Número de veces que debe mostrarse el mensaje de mas tiempo antes de cerrar de manera obligatoria
  LeyendaCuantas: Array[1..3] of string = ('', 'por segunda vez ', ' por tercera vez ');
  PreguntaCuantas: Array[False..True] of String = ('¿Requiere de màs tiempo para terminar de modificar este registro?', 'No es posible mantener el registro bloqueado durante tanto tiempo, debido a esto el sistema a cancelado la transacción actual.' + #10 + #10 + 'Disculpe las molestias que esto le ocasione');

var
  FrmDatosCatalogo: TFrmDatosCatalogo;
  HiloSonido: THiloSonido;

implementation

{$R *.dfm}
{$R inteligentsound.res}

uses
  unit2, ClientModuleUnit1, StrUtils;

Constructor THiloSonido.Create;
begin
  DetenerProceso := False;
  FreeOnTerminate := True;
  inherited Create(False);
end;

Procedure THiloSonido.Execute;
begin
  IniciarSonido;
end;

Procedure THiloSonido.IniciarSonido;
var
  LocSoundName: PWideChar;
begin
  LocSoundName := FrmDatosCatalogo.SoundName;
  PlaySound(LocSoundName, hInstance, SND_RESOURCE or SND_SYNC or SND_NOWAIT);
  FrmDatosCatalogo.SoundName := '';
end;

function LeyendaTiempo(Segundos: Cardinal): String;
var
  Horas,
  Minutos: Byte;
  Resultado: String;
begin
  Horas := 0;
  Minutos := 0;

  // Verificar por horas
  if Segundos Div (60 * 60) > 0 then
  begin
    Horas := Segundos Div (60 * 60);
    Segundos := Segundos - (Horas * (60 * 60));
  end;

  if Segundos div 60 > 0 then
  begin
    Minutos := Segundos Div 60;
    Segundos := Segundos - (Minutos * 60);
  end;

  if Horas > 0 then
    Resultado := IntToStr(Horas) + ' horas';

  if Minutos > 0 then
  begin
    if Resultado <> '' then
      Resultado := Resultado + ',';
    Resultado := Resultado + IntToStr(Minutos);
    if Minutos > 1 then
      Resultado := Resultado + ' Minutos'
    else
      Resultado := Resultado + ' Minuto';
  end;

  if Segundos > 0 then
  begin
    if Resultado <> '' then
      Resultado := Resultado + ',';
    Resultado := Resultado + IntToStr(Segundos) + ' Segundos';
  end;

  Result := Resultado;
end;

procedure TFrmDatosCatalogo.BtnAddNewClick(Sender: TObject);
var
  TDataset : Tclientdataset;
  RespCursor: TCursor;
  Stado     :TDataSetState;
begin
  Try
    if self.CanFocus then
      Self.SetFocus;
    if btnAddNew.canFocus then
      BtnAddNew.SetFocus;

    tDataSet := TClientDataSet(dsDatos.DataSet);
    Stado := tDataSet.State;
    AsignarDataset(tDataSet,CdTmp,True);
    TDataSet.Post;
    TDataset.ApplyUpdates(-1);
    ConcretarTransaccion;
    FormResult := mrOk;
    DsDatos.DataSet.Append;
    DsDatos.DataSet.FieldByName(keyField).AsInteger := 0;
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
{  Try
    DsDatos.DataSet.Post;
    TClientDataset(DsDatos.DataSet).ApplyUpdates(-1);
    Cancelado := False;
    DsDatos.DataSet.Append;
    DsDatos.DataSet.FieldByName(keyField).AsInteger := 0;
    DsDatos.DataSet.FieldByName('activo').AsString := 'si'; }
  Except
    {on e:EOleException do
    begin
      case e.ErrorCode of
        -2147418113: begin
          InteliDialog.ShowModal

          ('Ha ocurrido un error de acceso a datos',
                                 'Al parecer algún otro usuario ha realizado cambios a este mismo registro, debido a esto y por motivos de seguridad se han cancelado los cambios que Usted ha realizado.' + #10 + #10 + 'Disculpe los inconvenientes causados, si persiste este problema informe de ello al administrador del sistema.',
                                 mtWarning, [mbOk], 0);
          Close;
        end;
      else
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + 'Clase: ' + e.ClassName + #10 + 'Código: ' + IntToStr(e.ErrorCode) + #10 + 'Descripción: ' + e.Message + #10, mtWarning, [mbOk], 0);
      end;
    end;}

    on e: Exception do
    begin
      InteliDialog.ShowModal('Error al guardar',e.Message, mtWarning, [mbOk], 0);

      tDataSet.CancelUpdates;
      if Stado = dsInsert then
      begin
        TClientDataSet(DsDatos.DataSet).Append;
        AsignarDataset(CdTmp,TClientDataSet(DsDatos.DataSet),False);
      end;
      if Stado = dsEdit then
      begin
        TClientDataSet(DsDatos.DataSet).Edit;
        AsignarDataset(CdTmp,TClientDataSet(DsDatos.DataSet),False);
      end;

      //      Close;
    end;
  End;
  FocusFirstObject(PanelDatosLugares);
end;

procedure TFrmDatosCatalogo.BtnCancelClick(Sender: TObject);
begin
  FormResult := mrCancel;
  close;
end;

procedure TFrmDatosCatalogo.BtnRecClick(Sender: TObject);
Var
  tDataSet: TClientDataSet;
  RespCursor: TCursor;
  Stado: TDataSetState;
  GBuscar: TClientDataSet;
  Objeto: TWinControl;

function AnalizaComponentes(Componente: TComponent): TWinControl;
var
  i: Integer;
  PInfo: PPropInfo;
  Found: TWinControl;
begin
  // Verificar si existe un objeto de captura que contenga el campo codigo
  Try
    i := 0;
    Found := Nil;
    while (i < Componente.ComponentCount) and Not Assigned(Found) do
    begin
      if Componente.Components[i].ComponentCount > 0 then
        Found := AnalizaComponentes(TWinControl(Componente).Components[i]);

      if Not Assigned(Found) then
      begin
        PInfo := GetPropInfo(TWinControl(Componente).Components[i].ClassInfo, 'DataField');
        if Assigned(PInfo) then
          if AnsiCompareText(GetStrProp(TObject(Componente.Components[i]), PInfo), CodeField) = 0 then
            Found := TWinControl(Componente.Components[i]);
      End;

      Inc(i);
    end;
  Finally
    Result := Found;
  End;
end;

begin
  Try
    Try
      if self.CanFocus then
        Self.SetFocus;
      if btnRec.CanFocus then
        BtnRec.SetFocus;

      RespCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      // Verificar que el registro no se duplique con algun otro dentro de la base de datos
      if (CodeField <> '') and (((dsDatos.DataSet.State = dsEdit) and (dsDatos.DataSet.FieldByName(CodeField).AsString <> OrCode)) or (dsDatos.DataSet.State = dsInsert)) then
      begin
        Try
          GBuscar := TClientDataSet.Create(Nil);
          if Not CrearConjunto(GBuscar, EntityName, ccUpdate) then
            raise InteligentException.CreateByCode(5, [EntityName]);
          If Not CargarDatosFiltrados(GBuscar, CodeField, [dsDatos.DataSet.FieldByName(CodeField).AsString]) then
            raise InteligentException.CreateByCode(6, [EntityName, dsDatos.DataSet.FieldByName(CodeField).AsString, CodeField]);
          if VerificaExiste(GBuscar, KeyField, dsDatos.DataSet.FieldByName(KeyField).AsInteger) then
          begin
            Objeto := AnalizaComponentes(Self);
            if Assigned(Objeto) then
            begin
              Try
                Objeto.SetFocus;
              Except
                ;
              End;
              raise InteligentException.CreateByCode(20, [CodeField]);
            end;
          end;
        Finally
          EliminarConjunto(GBuscar);
          GBuscar.Free;
        End;
      end;

      tDataSet := TClientDataSet(DsDatos.DataSet);
      Stado := tDataSet.State;
      AsignarDataset(tDataSet,CdTmp,True);
      tDataSet.Post;
      tDataSet.ApplyUpdates(-1);
      ConcretarTransaccion;
      FormResult := mrOk;
      {InteliDialog.ShowModal('INFORMACIÓN','La información se ha guardado correctamente','',
              mtInformation,[mbOK],0);}
      Close;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:EOleException do
      begin

        tDataSet.CancelUpdates;
        if Stado = dsInsert then
        begin
          TClientDataSet(DsDatos.DataSet).Append;
          AsignarDataset(CdTmp,TClientDataSet(DsDatos.DataSet),False);
        end
        else
        begin
          TClientDataSet(DsDatos.DataSet).Edit;
          AsignarDataset(CdTmp,TClientDataSet(DsDatos.DataSet),False);
        end;

        case e.ErrorCode of
          -2147418113:
          begin
            InteliDialog.ShowModal('Ha ocurrido un error de acceso a datos',
                                   'Al parecer algún otro usuario ha realizado cambios a este mismo registro, debido a esto y por motivos de seguridad se han cancelado los cambios que Usted ha realizado.' + #10 + #10 + 'Disculpe los inconvenientes causados, si persiste este problema informe de ello al administrador del sistema.',
                                   mtWarning, [mbOk], 0);

//            Close;
          end;
        else
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + 'Clase: ' + e.ClassName + #10 + 'Código: ' + IntToStr(e.ErrorCode) + #10 + 'Descripción: ' + e.Message + #10, mtWarning, [mbOk], 0);


        end;
      end;

      on e: Exception do
      begin
        InteliDialog.ShowModal('Error al guardar',e.Message, mtWarning, [mbOk], 0);
        Close;
      end;
    End;
  Finally
    Screen.Cursor := RespCursor;
    FocusFirstObject(PanelDatosLugares);
  End;
end;

procedure TFrmDatosCatalogo.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if (Msg.message = WM_LBUTTONDOWN) or (Msg.message = WM_LBUTTONUP) or (Msg.message = WM_LBUTTONDBLCLK) or
     (Msg.message = WM_RBUTTONDOWN) or (Msg.message = WM_RBUTTONUP) or (Msg.message = WM_RBUTTONDBLCLK) or
     (Msg.message = WM_MBUTTONDOWN) or (Msg.message = WM_MBUTTONUP) or (Msg.message = WM_MBUTTONDBLCLK) then
  begin
    Segundo := 0;
    Self.Caption := OldCaption;
  end;
end;

procedure TFrmDatosCatalogo.AsignarDataset(Origen, Destino: TClientDataSet; Enviar: Boolean);
var x: integer;
    resultante: TclientDataSet;
    Campo : string;
begin
  if Enviar then
  begin
    Destino.Fields.Clear;
    Destino.FieldDefs.Clear;
    Destino.Close;

    for x := 0 to Origen.FieldCount-1 do
    begin
      Destino.FieldDefs.Add(Origen.FieldDefs.Items[x].Name,Origen.FieldDefs.Items[x].DataType,Origen.FieldDefs.Items[x].Size,False);
    end;

    try
      Destino.CreateDataSet;
    except
     ;
    end;

    if Destino.State <> dsBrowse then
      Destino.Open;

    with Origen do begin
      Destino.Append;
      for x := 0 to FieldCount-1 do
      begin
        Destino.FieldByName(Origen.FieldDefs.Items[x].Name).AsVariant := Origen.FieldByName(Origen.FieldDefs.Items[x].Name).AsVariant;
      end;
        Destino.Post;

    end;
  end
  else
  begin
    if Origen.State <> dsBrowse then
      Origen.Open;

    with Origen do begin
      First;
      for x := 0 to FieldCount-1 do
      begin
        Campo := Origen.Fields[x].FieldName;
        Destino[Campo] := Origen[Campo];
      end;

    end;
  end;
end;

procedure TFrmDatosCatalogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  OldCursor: TCursor;
begin
  Try
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    CancelarBloqueo(TClientDataSet(dsDatos.DataSet), dsDatos.DataSet.FieldByName(KeyField).AsInteger);
    CancelarTransaccion;

    Timer1.Enabled := False;
    Timer2.Enabled := False;
    ModalResult := FormResult;
  Finally
    Screen.Cursor := OldCursor;
  End;
end;

procedure TFrmDatosCatalogo.FormCreate(Sender: TObject);
begin
  SoundName := 'Notify';
  segundo := 0;
  SoloVer := False;
  Timer2.Interval := TiempoMensaje * 1000;
end;

procedure TFrmDatosCatalogo.AutoFieldSize(Formulario: Tform;ds:TDataSource);
var
  i, Item, Tamaño: Integer;
  Campo: String;
  ZTabla: TClientDataSet;

begin
  if Formulario.ComponentCount > 0 then
  begin
    for i := 0 to Formulario.ComponentCount-1 do
    begin
      if (TForm(Formulario).Components[i].ClassName = 'TDBEdit') then
      Try
        Campo  :=  TDBEdit(TForm(Formulario).Components[i]).DataField;
        if Length(trim(Campo)) > 0 then
        begin
          Item   :=  TDataSet(ds.DataSet).FieldDefs.IndexOf(Campo);
          Tamaño :=  TDataSet(ds.DataSet).FieldDefs.Items[Item].Size div 3;
          if tamaño > 0 then
            TDBEdit(TForm(Formulario).Components[i]).MaxLength := Tamaño;
        end;
      Except
        ;   // No hacer nada
      End;
    end;
  end;
end;

procedure TFrmDatosCatalogo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  segundo := 0;
  Self.Caption := OldCaption;

  if (Key = 27) and (Shift = []) then
    Close;

  if BtnCancel.Focused then
    BtnCancel.Click;

  if BtnRec.Focused then
    BtnRec.Click;
end;

procedure TFrmDatosCatalogo.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);
  FormResult := mrCancel;
  Cuantas := 0;
  OrCode := '';
  if DsDatos.DataSet.State = DsEdit then
  begin
    BtnAddNew.Enabled := False;
    Timer1.Enabled := EstaBloqueado(TClientDataSet(dsDatos.DataSet));   // Solo activar el timer si se trata de una edición y el registro ha sido bloqueado
  end;

  case DsDatos.DataSet.State of
    dsBrowse: begin
                // entro en modo lectura, indicarlo en el caption y poner todos los controles
                // usado a lo largo de las pantallas en un estado no editable
                self.Caption := self.Caption + ' - (SOLO LECTURA)';
                BtnRec.Enabled := False;
                BtnAddNew.Enabled := False;
                //SetProperties(PanelDatosLugares,'AllComponents','readonly',1);
//                SetProperties(PanelDatosLugares,'TBitBtn','enabled',0);
//                SetProperties(PanelDatosLugares,'TButton','enabled',0);
                //SetProperties(PanelDatosLugares,'TAdvComboBox','enabled',0);
                //SetProperties(PanelDatosLugares,'TNxImagePathEdit','visible',0);
              end;
    dsEdit: begin
              Self.Caption := Self.Caption + ' - (EDICIÓN DE REGISTRO)';
              OrCode := DsDatos.DataSet.FieldByName(CodeField).AsString;
            end;
    dsInsert: Self.Caption := Self.Caption + ' - (NUEVO REGISTRO)';
  end;

  // Centrar la pantalla
  self.Top := (form2.Height - self.Height) div 2;

  if (DsDatos.State = dsInsert) and Assigned(dsDatos.DataSet.FieldDefs.Find('activo')) then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';

  Oldcaption := self.caption;
  AutoFieldSize(self,dsdatos);
end;

procedure TFrmDatosCatalogo.Timer1Timer(Sender: TObject);
begin
  Try
    Timer1.Enabled := False;

    if (MaxSegundos - segundo) <= EmpezarCuentaAtras then
    begin
      self.Caption := 'Tiempo restante de inactividad: ' + LeyendaTiempo(MaxSegundos - segundo);

      // Activar un sonido cada 5 segundos
      if (MaxSegundos - segundo) Mod 5 = 0 then
        HiloSonido := THiloSonido.Create;
    end;

    if segundo >= maxsegundos then
    begin
      Try
        Inc(Cuantas);
        if Cuantas >= RepiteCuantas then
        begin
          FormResult := mrAbort;
          Self.Close;
        end
        else
        begin
          Timer2.Enabled := True;
          if InteliDialog.ShowModal('(' + IntToStr(Cuantas) + '/' + IntToStr(RepiteCuantas) + ') - Tiempo de inactividad de ' + LeyendaTiempo(MaxSegundos) + ' alcanzado', 'Usted ha dejado sin atender la ventana actual ' + LeyendaCuantas[Cuantas] + 'mientras se encuentra editando un registro ' + #10 + #10 + PreguntaCuantas[Cuantas >= RepiteCuantas], mtConfirmation, [mbYes], 0) = mrYes then
          begin
            Segundo := 0;
            Self.Caption := OldCaption;
          end;
        end;
      Finally
        Timer2.Enabled := False;
      End;
    end;

    Inc(Segundo);
  Finally
    Timer1.Enabled := True;
  End;
end;

procedure TFrmDatosCatalogo.Timer2Timer(Sender: TObject);
var
  o, i: Integer;
  Forma: TComponent;
begin
  Try
    Timer2.Enabled := False;

    // Cerrar el mensaje y la ventana actual
    i := 0;
    while i < Application.Componentcount do
    begin
      if AnsiCompareText(Application.Components[i].ClassName, 'TInteliDialog') = 0 then
      begin
        if Cuantas = RepiteCuantas then
        begin
          Self.Close;   // Solo cerrar la ventana y mostrar el mensaje
        end
        else
        begin
          // Localizado el dialog proceder a cerrarlo
          TForm(Application.Components[i]).Close;

          // Y después cerrar esta ventana
          FormResult := mrAbort;
          Self.Close;
        end;

        i := Application.Componentcount;
      end;

      inc(i);
    end;
  Finally
    Timer2.Enabled := True;
  End;
end;

end.
