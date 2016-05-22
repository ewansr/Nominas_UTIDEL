unit UTFrmSeleccionaSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvGlowButton, ExtCtrls;

type
  TFrmSeleccionaSalario = class(TForm)
    dsSalarios: TDataSource;
    NextDBGrid1: TNextDBGrid;
    Panel1: TPanel;
    Btn_Aceptar: TAdvGlowButton;
    Btn_Cancelar: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeleccionaSalario: TFrmSeleccionaSalario;

implementation
uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSeleccionaSalario.FormShow(Sender: TObject);
begin
  //clientmodule1.ComponentColor(Self);
end;

end.
