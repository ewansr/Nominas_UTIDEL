unit UTFrmCancelarPlazas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, ExtCtrls, JvExControls, JvLabel, StdCtrls, Mask,
  AdvSpin, JvExStdCtrls, JvRichEdit, rhh_genericclasses, DBClient, StrUtils;

type
  TFrmCancelarPlazas = class(TForm)
    pnlMain: TPanel;
    pnlBottom: TPanel;
    pnl1: TPanel;
    btnBtnClose: TAdvShapeButton;
    pnlSelect: TPanel;
    btnBtnSelect: TAdvShapeButton;
    lblTexto: TJvLabel;
    edtCuantos: TAdvSpinEdit;
    edtMotivo: TJvRichEdit;
    lbl1: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure btnBtnSelectClick(Sender: TObject);
  private
    { Private declarations }
    FCantidad: Integer;
    FMax: Integer;
    FData: TJvLabelExt;
    procedure SetText(Value: string);
    procedure SetMax(Value: Integer);
    //procedure SetData(Value: TJvLabelExt);
  public
    { Public declarations }
    property Cantidad: Integer read FCantidad;
    property Max: Integer write SetMax;
    property Texto: string write SetText;
    //property Data: TJvLabelExt write setData;
    constructor Create(AOwner: TComponent; Data: TJvLabelExt); overload;
  end;

var
  FrmCancelarPlazas: TFrmCancelarPlazas;

implementation

uses
  UInteliDialog, ClientModuleUnit1;
{$R *.dfm}

procedure TFrmCancelarPlazas.btnBtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCancelarPlazas.btnBtnSelectClick(Sender: TObject);
Var
  cdUpd, cdLog: TClientDataSet;
  tCadena: String;
  Cuantos: Integer;
  CursorAnt: TCursor;
  Terminar: Boolean;
  Resp: Integer;
  RegLog: TListaCambios;
begin
  if Trim(edtMotivo.Text) = '' then
  begin
    InteliDialog.ShowModal('Error','El campo "Motivo de cancelación" es obligatorio.', 'Capture una descripción valida',mtError,[mbOK],0);
    edtMotivo.SetFocus;
    exit;
  end;

  FCantidad := edtCuantos.Value;
  Terminar := False;
  while not Terminar do
  begin
    try
      CursorAnt := Self.Cursor;
      Self.Cursor := crHourGlass;
      try
        IniciarTransaccion;

        cdUpd := TClientDataSet.Create(nil);
        CrearConjunto(cdUpd,'rhu_plazadetalle',ccUpdate);
        CargarDatosFiltrados(cdUpd,'iddepartamento,idcargo,idpersonal',[FData.iddepartamento,FData.idcargo,FData.idpersonal]);
        cdUpd.Open;

        RegLog := TListaCambios.Create;
        cdLog := TClientDataSet.Create(nil);
        CrearConjunto(cdLog, 'rhu_plazalog', ccUpdate);
        CargarDatosFiltrados(cdLog, 'idplazalog', [-9]);
        cdLog.Open;

        cdUpd.First;
        while (not cdUpd.eof) AND (cdUpd.RecNo <= FCantidad) do
        begin
          cdUpd.Edit;
          cdUpd.FieldByName('Activo').AsString := 'No';
          cdUpd.FieldByName('MotivoCancelacion').AsString := edtMotivo.Text;
          cdUpd.Post;
          cdUpd.ApplyUpdates(0);

          // Grabar el log de la eliminación
          RegLog.Clear;
          RegLog.Add('Activo','Si', 'No');
          cdLog.Append;
          cdLog.FieldByName('idplazalog').AsInteger := 0;
          cdLog.FieldByName('tabla').AsString := 'PLAZADETALLE';
          cdLog.FieldByName('idreg').AsInteger := cdupd.FieldByName('idplazadetalle').AsInteger;
          cdLog.FieldByName('cambios').AsString := RegLog.DelimitedString;
          cdLog.FieldByName('idusuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
          cdLog.Post;
          cdLog.ApplyUpdates(0);

          cdUpd.Next;
        end;
        Self.Cursor := CursorAnt;
        ConcretarTransaccion;
        InteliDialog.ShowModal('Confirmación','Los cambios se han efectuado correctamente','',mtInformation,[mbOK],0);
        Terminar := true;
        Resp := mrOK;
      finally
        cdUpd.Close;
        EliminarConjunto(cdUpd);
        cdUpd.Free;
        cdLog.Close;
        EliminarConjunto(cdLog);
        cdLog.Free;
        RegLog.Free;
        Self.Cursor := CursorAnt;
      end;
    except
      on e: Exception do
      begin
        CancelarTransaccion;
        Resp := InteliDialog.ShowModal('ERROR','Error al guardar cambios.' + #10 + 'Nada se ha guardado',e.message,mtError,[mbCancel,mbRetry,mbAbort],0);
        if (Resp = mrCancel) or (Resp = mrAbort) then
          Terminar := true;
      end;
    end;
  end;
  if (Resp = mrOK) or (Resp = mrAbort) then   // Si termino correctamente o aborto, cerrar
    Close;
end;

constructor TFrmCancelarPlazas.Create(AOwner: TComponent; Data: TJvLabelExt);
Var
  tCadena: string;
  Cuantos: Integer;
begin
  inherited Create(AOwner);
  FData := Data;
  // obtener cuantos registros estan en ese estado
  tCadena := AnsiReplaceStr(FData.Caption,TextoVacante + ' (','');
  tCadena := AnsiReplaceStr(tCadena,TextoVacanteND + ' (','');
  tCadena := AnsiReplaceStr(tCadena,')','');
  Cuantos := StrToInt(tCadena);
  SetMax(Cuantos);
  if AnsiContainsStr(FData.Caption, TextoVacante) then
    Self.Texto := Format('Son %d vacantes las cuales estan marcadas como "Vacantes disponibles" para el cargo [%s] pertenecientes al departamento [%s].',[FMax, FData.titulocargo, FData.titulodepartamento]) + #10 + 'Indicar cuantas plazas se cancelaran definitivamente.'
  else
    Self.Texto := Format('Son %d vacantes las cuales estan marcadas como "Vacantes no disponibles" para el cargo [%s] pertenecientes al departamento [%s].',[FMax, FData.titulocargo, FData.titulodepartamento]) + #10 + 'Indicar cuantas plazas se cancelaran definitivamente.';
end;

procedure TFrmCancelarPlazas.FormCreate(Sender: TObject);
begin
  FCantidad := -1;
end;

//procedure TFrmCancelarPlazas.SetData(Value: TJvLabelExt);
//begin
//end;

procedure TFrmCancelarPlazas.SetMax(Value: Integer);
begin
  FMax := Value;
  edtCuantos.MaxValue := FMax;
  edtCuantos.Value := FMax;
end;

procedure TFrmCancelarPlazas.SetText(Value: string);
begin
  lblTexto.Caption := Value;
end;

end.
