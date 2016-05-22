unit frm_BasesDatosServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ClientModuleUnit1, StdCtrls, ExtCtrls, Buttons;

type
  TfrmBasesDatosServidor = class(TForm)
    sgDatabases: TStringGrid;
    Label1: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    Btn_Ok: TBitBtn;
    Btn_Cancel: TBitBtn;
    Btn_Ok2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure ActualizarBases;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure sgDatabasesDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgDatabasesDblClick(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
  private
    { Private declarations }
  public
    pIP: String;
  end;

var
  frmBasesDatosServidor: TfrmBasesDatosServidor;

implementation

{$R *.dfm}

procedure TfrmBasesDatosServidor.Btn_OkClick(Sender: TObject);
begin
  if AnsiCompareText(Copy(sgDatabases.Cells[2, sgDatabases.Row],1,3), 'Con') = 0 then
    Btn_Ok2.Click
  else
    messagedlg('No es posible conectarse con esta base de datos debido a que se encuentra desconectada.', mtInformation, [mbOk], 0);
end;

procedure TfrmBasesDatosServidor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Btn_Cancel.Click;

  if Key = 116 then
    ActualizarBases;  // Tecla <F5> actualizar bases de datos
end;

procedure TfrmBasesDatosServidor.FormShow(Sender: TObject);
begin
  Self.Caption := Self.Caption + ' [' + pIP + ']';

  sgDatabases.Cells[0,0] := 'Base de datos';
  sgDatabases.Cells[1,0] := 'Id. en servidor';
  sgDatabases.Cells[2,0] := 'Estado';

  sgDatabases.Cells[0,1] := '';
  sgDatabases.Cells[1,1] := '';
  sgDatabases.Cells[2,1] := '';

  Timer1.Enabled := True;
end;

procedure TfrmBasesDatosServidor.sgDatabasesDblClick(Sender: TObject);
begin
  Btn_Ok.Click;   // Aplicar el botón OK
end;

procedure TfrmBasesDatosServidor.sgDatabasesDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Texto: String;
begin
  if ARow >= sgDatabases.FixedRows then
  begin
    if AnsiCompareText(Copy(sgDatabases.Cells[2, ARow],1,3), 'Con') = 0 then
    begin
      sgDatabases.Canvas.Font.Color := clBlack;
    end;

    if AnsiCompareText(Copy(sgDatabases.Cells[2, ARow],1,3), 'Des') = 0 then
    begin
      sgDatabases.Canvas.Font.Color := clGray;
      sgDatabases.Canvas.Font.Style := [fsItalic];
    end;

    Inc(Rect.Left,2);
    Texto := sgDatabases.Cells[ACol, ARow];
    sgDatabases.Canvas.TextRect(Rect, Texto);
  end;
end;

procedure TfrmBasesDatosServidor.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  ActualizarBases;
end;

procedure TfrmBasesDatosServidor.ActualizarBases;
var
  ListaBases: TStringList;
  ii: Integer;
begin
  Try
    // Mostrar la leyenda de comunicación con el servidor y ocultar el grid
    sgDatabases.Visible := False;
    Label1.Visible := True;
    Label1.Repaint;

    // Borrar primero los valores que pudieran existir previamente
    sgDatabases.RowCount := sgDatabases.FixedRows + 1;
    for ii := 0 to sgDatabases.FixedCols - 1 do
      sgDatabases.Cells[sgDatabases.FixedCols + ii, sgDatabases.FixedRows + 1] := '';

    // Descomponer la lista de bases de datos
    Try
      ListaBases := TStringList.Create;
      ListaBases.CommaText := ListaBasesdeDatos(0);
      sgDatabases.RowCount := sgDatabases.FixedRows + ListaBases.Count;

      for ii := 0 to ListaBases.Count - 1 do
      begin
        sgDatabases.Cells[sgDatabases.FixedCols + 0, sgDatabases.FixedRows + ii] := Copy(ListaBases[ii], 1, Pos('|', ListaBases[ii]) - 1);
        ListaBases[ii] := Copy(ListaBases[ii], Pos('|', ListaBases[ii]) + 1, Length(ListaBases[ii]));
        sgDatabases.Cells[sgDatabases.FixedCols + 1, sgDatabases.FixedRows + ii] := Copy(ListaBases[ii], 1, Pos('|', ListaBases[ii]) - 1);
        ListaBases[ii] := Copy(ListaBases[ii], Pos('|', ListaBases[ii]) + 1, Length(ListaBases[ii]));
        sgDatabases.Cells[sgDatabases.FixedCols + 2, sgDatabases.FixedRows + ii] := ListaBases[ii];
      end;

    Finally
      ListaBases.Free;
    End;
  Finally
    // Al terminar se debe ocultar el mensaje informativo y se debe mostrar el grid
    sgDatabases.Visible := True;
    Label1.Visible := False;
  End;
end;

end.
