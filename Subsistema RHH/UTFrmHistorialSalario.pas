unit UTFrmHistorialSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBClient,
  ClientModuleUnit1, AdvSmoothPanel, DB, AdvShapeButton, frxClass, frxDBSet;

type
  TFrmHistorialSalario = class(TForm)
    Chart1: TChart;
    Series1: TBarSeries;
    Panel1: TPanel;
    Btn_Grafica: TAdvShapeButton;
    cdHistorialSalario: TClientDataSet;
    Panel2: TPanel;
    AdvShapeButton3: TAdvShapeButton;
    frReporteSalario: TfrxReport;
    dbHistorialSalario: TfrxDBDataset;
    Btn_Listado: TAdvShapeButton;
    memHoja2: TClientDataSet;
    memHoja2Campo1: TIntegerField;
    memHoja1: TClientDataSet;
    IntegerField1: TIntegerField;
    frdsHoja1: TfrxDBDataset;
    frdsHoja2: TfrxDBDataset;
    Btn_Ambos: TAdvShapeButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Chart1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvShapeButton3Click(Sender: TObject);
    procedure Btn_ListadoClick(Sender: TObject);
    procedure frReporteSalarioGetValue(const VarName: string;
      var Value: Variant);
    procedure Btn_GraficaClick(Sender: TObject);
    procedure Btn_AmbosClick(Sender: TObject);
    procedure LimpiarHojas;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { private declarations }
  public
    Llave: Integer;
    Codigo: String;
  end;

var
  FrmHistorialSalario: TFrmHistorialSalario;

implementation

uses UInteliDialog;

{$R *.dfm}

procedure TFrmHistorialSalario.LimpiarHojas;
begin
  memHoja1.First;
  memHoja2.First;

  while not memHoja1.Eof do
    memHoja1.Delete;
  while not memHoja2.Eof do
    memHoja2.Delete;
end;

procedure TFrmHistorialSalario.Btn_GraficaClick(Sender: TObject);
begin
  LimpiarHojas;

  memHoja1.Append;
  memHoja1.FieldByName('Campo1').AsInteger := 1;
  memHoja1.Post;

  ClientModule1.ImprimeReporte('FrmHistorialSalario.fr3', frReporteSalario);
end;

procedure TFrmHistorialSalario.Btn_ListadoClick(Sender: TObject);
begin
  LimpiarHojas;

  memHoja2.Append;
  memHoja2.FieldByName('Campo1').AsInteger := 1;
  memHoja2.Post;

  ClientModule1.ImprimeReporte('FrmHistorialSalario.fr3', frReporteSalario);
end;

procedure TFrmHistorialSalario.AdvShapeButton3Click(Sender: TObject);
begin
  close;
end;

procedure TFrmHistorialSalario.Btn_AmbosClick(Sender: TObject);
begin
  LimpiarHojas;

  memHoja1.Append;
  memHoja1.FieldByName('Campo1').AsInteger := 1;
  memHoja1.Post;

  memHoja2.Append;
  memHoja2.FieldByName('Campo1').AsInteger := 1;
  memHoja2.Post;

  ClientModule1.ImprimeReporte('FrmHistorialSalario.fr3', frReporteSalario);
end;

procedure TFrmHistorialSalario.Chart1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TFrmHistorialSalario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmHistorialSalario.FormCreate(Sender: TObject);
var
  OldCursor: TCursor;
begin
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdHistorialSalario, 'rhu_salario_historial', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Historial de Salarios']);
    Finally
      Screen.Cursor := OldCursor;
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

procedure TFrmHistorialSalario.FormDestroy(Sender: TObject);
begin
  EliminarConjunto(cdHistorialSalario);
end;

procedure TFrmHistorialSalario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TFrmHistorialSalario.FormShow(Sender: TObject);
var
  OldCursor: TCursor;
begin
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      ClientModule1.ComponentColor(self);
      if Not cdHistorialSalario.Active then
      begin
        if Not CargarDatosFiltrados(cdHistorialSalario, 'IdLlave', [Llave]) then
          raise InteligentException.CreateByCode(6, ['Historial de Salarios', Codigo, 'Código de Salario']);

        cdHistorialSalario.Open;
      end;

      Try
        Chart1.Series[0].BeginUpdate;
        Chart1.Series[0].Clear;
        while not cdHistorialSalario.Eof do
        begin
          Chart1.Series[0].Add(cdHistorialSalario.FieldByName('Salario').AsFloat, cdHistorialSalario.FieldByName('FechaAplicacion').AsString);

          cdHistorialSalario.Next;
        end;

        Chart1.Title.Caption := 'SALARIO: (' + cdHistorialSalario.FieldByName('CodigoSalario').AsString + ')  ' + cdHistorialSalario.FieldByName('TituloSalario').AsString + '        MONEDA: ' + cdHistorialSalario.FieldByName('TituloMoneda').AsString;
      Finally
        Chart1.Series[0].EndUpdate;
      End;

      // Dar formato a los conjuntos de datos para seleccion de hojas a imprimir
      memHoja1.CreateDataSet;
      memHoja2.CreateDataSet;
      memHoja1.Open;
      memHoja2.Open;
    Finally
      Screen.Cursor := OldCursor;
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

procedure TFrmHistorialSalario.frReporteSalarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if AnsiCompareText(VarName, 'Parametro') = 0 then
    Value := 1;
end;

end.
