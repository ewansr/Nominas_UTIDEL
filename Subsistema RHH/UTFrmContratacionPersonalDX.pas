unit UTFrmContratacionPersonalDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TFrmContratacionPersonalDX = class(TForm)
    pcMain: TPageControl;
    tabPostulantes: TTabSheet;
    tabDirecta: TTabSheet;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContratacionPersonalDX: TFrmContratacionPersonalDX;

implementation

{$R *.dfm}

procedure TFrmContratacionPersonalDX.FormShow(Sender: TObject);
begin
  pcMain.TabIndex := 1;
  tabPostulantes.Destroy;
end;

end.
