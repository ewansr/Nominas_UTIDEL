unit UTFrmCuantos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, ExtCtrls, JvExControls, JvLabel, StdCtrls, Mask,
  AdvSpin;

type
  TFrmCuantos = class(TForm)
    pnlMain: TPanel;
    pnlBottom: TPanel;
    pnl1: TPanel;
    btnBtnClose: TAdvShapeButton;
    pnlSelect: TPanel;
    btnBtnSelect: TAdvShapeButton;
    lblTexto: TJvLabel;
    edtCuantos: TAdvSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure btnBtnSelectClick(Sender: TObject);
  private
    { Private declarations }
    FCantidad: Integer;
    FMax: Integer;
    procedure SetText(Value: string);
    procedure SetMax(Value: Integer);
  public
    { Public declarations }
    property Cantidad: Integer read FCantidad;
    property Max: Integer write SetMax;
    property Texto: string write SetText;
  end;

var
  FrmCuantos: TFrmCuantos;

implementation

{$R *.dfm}

procedure TFrmCuantos.btnBtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCuantos.btnBtnSelectClick(Sender: TObject);
begin
  FCantidad := edtCuantos.Value;
  close;
end;

procedure TFrmCuantos.FormCreate(Sender: TObject);
begin
  FCantidad := -1;
end;

procedure TFrmCuantos.SetMax(Value: Integer);
begin
  FMax := Value;
  edtCuantos.MaxValue := Value;
  edtCuantos.Value := Value;
end;

procedure TFrmCuantos.SetText(Value: string);
begin
  lblTexto.Caption := Value;
end;

end.
