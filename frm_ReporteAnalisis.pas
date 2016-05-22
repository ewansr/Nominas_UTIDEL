unit frm_ReporteAnalisis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, OleServer, ExcelXP, Excel2000, StdCtrls, Buttons,
  JvGIF;

type
  TfrmReporteAnalisis = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure StringGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Excel: Variant;
    flcid: Integer;
    NumErr: Integer;
  end;

var
  frmReporteAnalisis: TfrmReporteAnalisis;

implementation

{$R *.dfm}

{Function ColumnaNombre(Numero: Integer): String;
Var
  Valor, NumLetras: Integer;
  Cad: String;
Begin
  NumLetras := 26;  // O1
  Cad := '';
  Valor := Numero Mod NumLetras;
  if Valor = 0 then Valor := 26;
  if Numero - Valor > 0 then Cad := Char(64 + Trunc((Numero - Valor) / NumLetras));
  Cad := Cad + Char(64 + Valor);

  Result := Cad;
End;}

procedure TfrmReporteAnalisis.StringGrid1DblClick(Sender: TObject);
Var
  Cadena, SubCad, cCol: String;
  nRen: Integer;
begin
  Cadena := StringGrid1.Cells[0, StringGrid1.Row];
  Cadena := Copy(Cadena, Pos(' ', Cadena) + 1, Length(Cadena));
  SubCad := Copy(Cadena, 1, Pos(',', Cadena) - 1);
  nRen := StrToInt(SubCad);

  Cadena := Copy(Cadena, Pos('Col', Cadena) + 5, Length(Cadena));
  cCol := Copy(Cadena, 1, Pos(' ', Cadena) - 1);
  Excel.Visible := False;
  Excel.Visible := True;
  Excel.ScreenUpdating := True;

  Excel.ActiveSheet.Range[cCol + IntToStr(nRen), cCol + IntToStr(nRen)].Select;
end;

end.
