unit UTFrmNewItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvShapeButton, ExtCtrls, ComCtrls;

type
  TFrmNewItem = class(TForm)
    PanelBarraLugar: TPanel;
    BtnAddNew: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    Panel1: TPanel;
    EdTexto: TEdit;
    CmbImagenes: TComboBoxEx;
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    Cancelado : Boolean;
    { Public declarations }
  end;

var
  FrmNewItem: TFrmNewItem;


implementation
uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmNewItem.BtnAddNewClick(Sender: TObject);
begin
  if Length(trim(EdTexto.Text)) > 0 then
  begin
    Cancelado := False;
    Close;
  end;
end;

procedure TFrmNewItem.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNewItem.FormCreate(Sender: TObject);
begin
  clientmodule1.componentcolor(self);
  Cancelado := True;
end;

procedure TFrmNewItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BtnAddNew.Click;
  if Key = #27 then
    BtnCancel.Click;
end;

end.
