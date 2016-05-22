unit UHiloProgreso;

interface

Uses
  Classes, ExtCtrls, AdvCircularProgress, Forms, SysUtils, Controls;

Type
  THiloProgreso = Class(TThread)
    FLocPanel: TPanel;
    FCircular: TAdvCircularProgress;
    FTiempo: TTime;
    TerminarProceso: Boolean;
    procedure AlTerminar(Sender: TObject);
  Private
    TiempoCuenta: Integer;
    procedure DoVisualSwap;
    procedure Execute; Override;
    procedure IniciarProgreso; virtual;
  Public
    Constructor Create(Sender: TForm);
    procedure CancelarProgreso;
    procedure VisualSwap;
  End;

implementation

Constructor THiloProgreso.Create(Sender: TForm);
begin
  FLocPanel := TPanel.Create(Sender);
  FLocPanel.Parent := Sender;
  FLocPanel.Top := 100;
  FLocPanel.Left := 100;
  FLocPanel.Height := 100;
  FLocPanel.Width := 100;
  FLocPanel.Name := 'LocPanel1';
  FLocPanel.DoubleBuffered := True;

  FCircular := TAdvCircularProgress.Create(FLocPanel);
  FCircular.Parent := FLocPanel;
  FCircular.Top := 30;
  FCircular.Left := 30;
  FCircular.Height := 50;
  FCircular.Width := 50;
  FCircular.Max := 100;
  FCircular.Name := 'Circular1';
  FCircular.Align := alClient;
  FCircular.Enabled := True;

  TiempoCuenta := 0;
  FTiempo := Time;

  FreeOnTerminate := True;
  TerminarProceso := False;
  OnTerminate := AlTerminar;
  inherited Create(False);
end;

procedure THiloProgreso.Execute;
begin
  IniciarProgreso;
end;

procedure THiloProgreso.IniciarProgreso;
begin
  VisualSwap;

  while Not TerminarProceso do
  begin
    Inc(TiempoCuenta);
    if TiempoCuenta > 10000 then
    begin
      Sleep(50);
      FCircular.Position := FCircular.Position + 1;
      FLocPanel.Caption := Copy(TimeToStr(Time - FTiempo),4,5);
      TiempoCuenta := 0;
    end;

    if FCircular.Position >= 13 then //FCircular.Max then
      FCircular.Position := 0;
  end;
end;

procedure THiloProgreso.CancelarProgreso;
begin
  TerminarProceso := True;
end;

Procedure THiloProgreso.VisualSwap;
begin
  Synchronize(DoVisualSwap);
end;

Procedure THiloProgreso.DoVisualSwap;
begin
  FLocPanel.Visible := True;
  FCircular.Enabled := True;
end;

procedure THiloProgreso.AlTerminar;
begin
  FLocPanel.Destroy;
end;

end.
