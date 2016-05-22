unit UTFrmConsultaFichaPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass;

type
  TFrmConsultaFichaPersonal = class(TForm)
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    IdPersonal: Integer;
  end;

var
  FrmConsultaFichaPersonal: TFrmConsultaFichaPersonal;

implementation

{$R *.dfm}

end.
