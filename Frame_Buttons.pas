unit Frame_Buttons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, AdvToolBtn, ExtCtrls;

type
  TFrameButtons = class(TFrame)
    BtnRefresh: TAdvToolButton;
    BtnDelete: TAdvToolButton;
    BtnEdit: TAdvToolButton;
    BtnAdd: TAdvToolButton;
    BtnBuscar: TAdvToolButton;
    BtnFiltrar: TAdvToolButton;
    AdvToolButton1: TAdvToolButton;
  private

  public

  end;

implementation

{$R *.dfm}

end.
