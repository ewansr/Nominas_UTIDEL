unit Frm_SelPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvSmoothPanel, AdvSmoothExpanderPanel,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, datelbl,
  AdvSmoothLabel, NxCollection;

type
  TFrmSelPeriodo = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    Texto: TAdvSmoothLabel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothDatePicker1: TAdvSmoothDatePicker;
    AdvSmoothDatePicker2: TAdvSmoothDatePicker;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    NxGlyphButton1: TNxGlyphButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure TextoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NxGlyphButton1Click(Sender: TObject);
  private
    Resultado: Word;
  public
    { Public declarations }
  end;

var
  FrmSelPeriodo: TFrmSelPeriodo;

implementation

{$R *.dfm}

procedure TFrmSelPeriodo.FormCreate(Sender: TObject);
begin
  Self.Left := Trunc((Screen.Width - Self.Width) / 2);
  Self.Top := Trunc((Screen.Height - Self.Height) / 3);
  Resultado := mrCancel;
end;

procedure TFrmSelPeriodo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    13: begin resultado := mrOk; Close; end;
    27: Close;
  end;
end;

procedure TFrmSelPeriodo.NxGlyphButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelPeriodo.TextoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

end.
