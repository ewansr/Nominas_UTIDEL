unit UfrmAutentic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls;

type
  TfrmAutentic = class(TForm)
    Edit1: TEdit;
    btnOk: TNxButton;
    NxButton2: TNxButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAutentic: TfrmAutentic;

implementation

{$R *.dfm}

procedure TfrmAutentic.FormShow(Sender: TObject);
begin
  //showmessage('Rangel' + Self.Label1.Caption);
end;

end.
