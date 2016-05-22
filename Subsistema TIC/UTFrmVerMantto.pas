unit UTFrmVerMantto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvBehaviorLabel, ExtCtrls, DBCtrls,
  RxToolEdit, RXDBCtrl, Mask, DB, JvExControls, JvLabel,ClientModuleUnit1;

type
  TFrmVerMantto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    JvBehaviorLabel1: TJvBehaviorLabel;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    dsmantenimiento: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    DBEdit3: TDBEdit;
    JvLabel7: TJvLabel;
    DBEdit4: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVerMantto: TFrmVerMantto;

implementation

{$R *.dfm}

procedure TFrmVerMantto.FormShow(Sender: TObject);
begin
    ClientModule1.ComponentColor(self);
end;

end.
