unit webcam;
interface
uses
  Windows, Messages;
type
  TWebcam = class
    constructor Create(
      const WindowName: String = '';
      ParentWnd: Hwnd = 0;
      Left: Integer = 0;
      Top: Integer = 0;
      Width: Integer = 0;
      height: Integer = 0;
      Style: Cardinal = WS_CHILD or WS_VISIBLE;
      WebcamID: Integer = 0);
    public
      var
        Detecto :Boolean;
      const
        WM_Connect     = WM_USER + 10;
        WM_Disconnect  = WM_USER + 11;
        WM_GrabFrame   = WM_USER + 60;
        WM_SaveDIB     = WM_USER + 25;
        WM_Preview     = WM_USER + 50;
        WM_PreviewRate = WM_USER + 52;
        WM_Configure   = WM_USER + 41;

    public
      procedure Connect;
      procedure Disconnect;
      procedure GrabFrame;
      procedure SaveDIB(const FileName: String = 'webcam.bmp');
      procedure Preview(&on: Boolean = True);
      procedure PreviewRate(Rate: Integer = 42);
      procedure Configure;
      Function Detectar(ent: Integer):Boolean;
    private
      CaptureWnd: HWnd;
  end;
implementation
function capCreateCaptureWindowA(
  WindowName: PChar;
  dwStyle: Cardinal;
  x,y,width,height: Integer;
  ParentWin: HWnd;
  WebcamID: Integer): Hwnd; stdcall external 'AVICAP32.dll';
{ TWebcam }

Procedure TWebcam.Configure;
begin
  if CaptureWnd <> 0 then
  begin
    SendMessage(CaptureWnd, WM_Configure, 0, 0);
  end;
end;

procedure TWebcam.Connect;
begin
  if CaptureWnd <> 0 then
    SendMessage(CaptureWnd, WM_Connect, 0,100);
 // Detectar(CaptureWnd);
end;

constructor TWebcam.Create(const WindowName: String; ParentWnd: Hwnd; Left, Top,
  Width, height: Integer; Style: Cardinal; WebcamID: Integer);
begin
  CaptureWnd := capCreateCaptureWindowA(PChar(WindowName), Style, Left, Top, Width, Height,
    ParentWnd, WebcamID);
end;

procedure TWebcam.Disconnect;
begin
  if CaptureWnd <> 0 then
  begin
    SendMessage(CaptureWnd, WM_Disconnect, 0, 1000);
    captureWnd := 0;
  end;
end;

Function TWebcam.Detectar(ent: Integer):boolean;
var
  Resulta: Boolean;
begin
  if ent <> 0 then
    Resulta := True
  else
    Resulta := False;
  Result := Resulta;
end;

procedure TWebcam.GrabFrame;
begin
  if CaptureWnd <> 0 then
    SendMessage(CaptureWnd, WM_GrabFrame, 0, 0);
end;

procedure TWebcam.Preview(&on: Boolean);
begin
  if CaptureWnd <> 0 then
    if &on then
      SendMessage(CaptureWnd, WM_Preview, 1, 0)
    else
      SendMessage(CaptureWnd, WM_Preview, 0, 0);
end;

procedure TWebcam.PreviewRate(Rate: Integer);
begin
  if CaptureWnd <> 0 then
    SendMessage(CaptureWnd, WM_PreviewRate, Rate, 0);
end;

procedure TWebcam.SaveDIB(const FileName: String);
begin
  if CaptureWnd <> 0 then
    SendMessage(CaptureWnd, WM_SaveDIB, 0, Cardinal(PChar(FileName)));
end;

end.
