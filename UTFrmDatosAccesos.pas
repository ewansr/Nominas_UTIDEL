unit UTFrmDatosAccesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFrmDatosAccesos = class(TForm)
    PanelDatosLugares: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    PanelBarraLugar: TPanel;
    GroupBoxBotones: TGroupBox;
    BtnAdd: TBitBtn;
    BtnCancel: TBitBtn;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Cancelado: Boolean;
    { Public declarations }
  end;

var
  FrmDatosAccesos: TFrmDatosAccesos;

implementation

{$R *.dfm}

procedure TFrmDatosAccesos.BtnAddClick(Sender: TObject);
begin
  Cancelado := False;
  close;
end;

procedure TFrmDatosAccesos.BtnAddNewClick(Sender: TObject);
begin
  close;
end;

procedure TFrmDatosAccesos.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmDatosAccesos.FormShow(Sender: TObject);
begin
  Cancelado := True;
end;

end.
