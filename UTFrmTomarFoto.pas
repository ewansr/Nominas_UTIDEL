unit UTFrmTomarFoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,webcam, AdvShapeButton,Frame_Video;

type
  TFrmTomarFoto = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    BtnSelect: TAdvShapeButton;
    AdvShapeButton1: TAdvShapeButton;
    Button1: TButton;
    Button2: TButton;
    Frame_Video1: TFrame1;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton_RunVideoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnSelectClick(Sender: TObject);
    procedure Frame_Video1ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    camera: TWebcam;
    cancelado: Boolean;

    { Public declarations }
  end;

var
  FrmTomarFoto: TFrmTomarFoto;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmTomarFoto.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTomarFoto.BtnSelectClick(Sender: TObject);
begin
  cancelado := false;
  close;
end;

procedure TFrmTomarFoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frame_Video1.SpeedButton_Stop.Click;
  Frame_Video1.Close;
end;

procedure TFrmTomarFoto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  Frame_Video1.Stop;
  Screen.Cursor := crdefault;
end;

procedure TFrmTomarFoto.FormCreate(Sender: TObject);
begin
  cancelado := true;
end;

procedure TFrmTomarFoto.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(self);
  Frame_Video1.InitFrame;
  if Frame_Video1.ComboBox_Cams.ItemIndex = 0 then
    Frame_Video1.speedbutton_runvideo.Click;
end;

procedure TFrmTomarFoto.Frame_Video1ComboBox1Change(Sender: TObject);
begin
  Frame_Video1.ComboBox1Change(Sender);
end;

procedure TFrmTomarFoto.SpeedButton_RunVideoClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_RunVideoClick(Sender);
end;

end.
