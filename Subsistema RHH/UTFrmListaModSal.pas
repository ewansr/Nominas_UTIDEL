unit UTFrmListaModSal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  ComCtrls,ClientModuleUnit1;

type
  TFrmListaModSal = class(TForm)
    dsDatos: TDataSource;
    ListView1: TListView;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaModSal: TFrmListaModSal;

implementation

{$R *.dfm}

procedure TFrmListaModSal.FormShow(Sender: TObject);
begin
    ClientModule1.ComponentColor(self);
end;

end.
