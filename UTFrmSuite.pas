unit UTFrmSuite;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, AdvSmoothButton, ClientModuleUnit1,
  UInteliDialog, StdCtrls, AdvSmoothPanel, ImgList, AdvSmoothLabel, AdvGroupBox;

type
  TDatosGlobo = class
    Globo: TImage;
    Left,
    Top: Integer;
    Descripcion: String;
    Prefijo: String;
  end;

  TFrmSuite = class(TForm)
    AdvSmoothPanel1: TAdvSmoothPanel;
    Image1: TImage;
    Descripcion: TMemo;
    ImageList1: TImageList;
    Btn_Salir: TAdvSmoothButton;
    AdvGroupBox1: TAdvGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    LabelMsg: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    btn_11: TAdvSmoothButton;
    btn_10: TAdvSmoothButton;
    btn_7: TAdvSmoothButton;
    btn_8: TAdvSmoothButton;
    btn_9: TAdvSmoothButton;
    btn_6: TAdvSmoothButton;
    btn_5: TAdvSmoothButton;
    btn_4: TAdvSmoothButton;
    btn_1: TAdvSmoothButton;
    btn_2: TAdvSmoothButton;
    btn_3: TAdvSmoothButton;
    Image2: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GlobalEnter(Sender: TObject);
    procedure GlobalExit(Sender: TObject);
    procedure GlobalClick(Sender: TObject);
    procedure GlobalMouseEnter(Sender: TObject);
    procedure GlobalMouseLeave(Sender: TObject);
    procedure CrearBotones;
    procedure FormShow(Sender: TObject);
    procedure btn_9MouseEnter(Sender: TObject);
    procedure btn_10MouseEnter(Sender: TObject);
    procedure btn_8MouseEnter(Sender: TObject);
    procedure btn_3MouseEnter(Sender: TObject);
    procedure btn_5MouseEnter(Sender: TObject);
    procedure btn_6MouseEnter(Sender: TObject);
    procedure btn_7MouseEnter(Sender: TObject);
    procedure btn_4MouseEnter(Sender: TObject);
    procedure btn_2MouseEnter(Sender: TObject);
    procedure btn_11MouseEnter(Sender: TObject);
    procedure btn_1MouseEnter(Sender: TObject);
    procedure btn_9MouseLeave(Sender: TObject);
    procedure btn_10MouseLeave(Sender: TObject);
    procedure btn_8MouseLeave(Sender: TObject);
    procedure btn_3MouseLeave(Sender: TObject);
    procedure btn_5MouseLeave(Sender: TObject);
    procedure btn_6MouseLeave(Sender: TObject);
    procedure btn_7MouseLeave(Sender: TObject);
    procedure btn_4MouseLeave(Sender: TObject);
    procedure btn_2MouseLeave(Sender: TObject);
    procedure btn_11MouseLeave(Sender: TObject);
    procedure btn_1MouseLeave(Sender: TObject);
  private
    Resultado: Integer;
    CuentaEntra: Integer;
    LPos: Word;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    ListaPrefijos: TStringList;
    ListaDisponibles: TStringList;
    PrefIndex: Word;
  end;

var
  FrmSuite: TFrmSuite;

implementation

{$R *.dfm}

Const
  Leyenda1: Array[0..9] of String = ('ADQUISICIONES/ALMACÉN',
                                      'GESTIÓN DE PROYECTOS',
                                      'TECNOLOGÍA DE INFORMÁTICA Y COMUNICACIONES',
                                      'LOGISTICA',
                                      'RECURSOS HUMANOS',
                                      'CONTABILIDAD',
                                      '','','',
                                      'SALIDA DEL SISTEMA');
  LeyendaDefault: String = 'SUITE DE ACCESO - INTELI-CODE, S.A. DE C.V.';

  Descripcion1: Array[0..9] of String = (
  //Descripción del módulo de compras y almacén
    'EN ESTE DEPARTAMENTO ENCONTRARÁ LAS SOLICITUDES, REQUISICIONES, COTIZACIONES '+
    'Y ORDENES DE COMPRA, ASI COMO TAMBIÉN EL ESTADO DEL INVENTARIO.',
  //Descripción del modulo de gestión de proyectos
    'EN ESTE DEPARTAMENTO ENCONTRARÁ LOS PROYECTOS Y PODRÁ MANIPULARLOS PARA'+
    ' TENER UN CONTROL  DE ELLOS.',
  //Descripción del módulo de TI
    'EN ESTE DEPARTAMENTO ENCONTRARÁ LA GESTION, ADMINISTRACION Y CONTROL DE EQUIPOS '+
    'INFORMATICOS CON LOS QUE CUENTA LA EMPRESA.',
  //Descripción del módulo de logistica
    'EN ESTE DEPARTAMENTO ENCONTRARÁ LOS MOVIMIENTOS DE MATERIALES Y PERSONAL '+
    ' YA SEA EN TIERRA O COSTA AFUERA, Y CONTROLARLOS.',
  //Descripción del módulo de RH
    'EN ESTE DEPARTAMENTO ENCONTRARÁ LOS DATOS RELACIONADOS CON EL PERSONAL '+
    'ASI COMO TAMBIEN SU HISTORICO DE DOCUMENTACION.',
  //Descripción del módulo de contabilidad
    'EN ESTE DEPARTAMENTO ENCONTRARÁ LOS ACTIVOS FIJOS O CIRCULANTES, GASTOS'+
    ' Y OBTENER EL BALANCE GENERAL.',
  //Descripción de los siguientes módulos
                                      '1','2','3',
  //Boton salir
  'PERMITE SALIR DEL SISTEMA.'
  );
  DescripcionDefault: String = 'SELECCIONE UN DEPARTAMENTO PARA VER SU DESCRIPCIÓN.';

procedure TFrmSuite.GlobalMouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);

  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmSuite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmSuite.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (TWinControl(Sender).Name <> 'Btn_Salir') or ((TWinControl(Sender).Name = 'Btn_Salir') and (InteliDialog.ShowModal('Cancelar acceso al sistema', '¿Desea salir del sistema en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes));
end;

procedure TFrmSuite.FormCreate(Sender: TObject);
begin
  Resultado := mrCancel;

  // Centar la ventana
  Self.Left := Trunc((Screen.Width - Self.Width) / 2);
  Self.Top := Trunc((Screen.Height - Self.Height) / 2);
  ListaPrefijos := TStringList.Create;
  ListaPrefijos.Delimiter := ',';
  ListaPrefijos.DelimitedText := 'alm_,gdp_,tic_,log_,rhu_,con_,_,_,_';

  GlobalExit(Btn_Salir);
end;

procedure TFrmSuite.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmSuite.FormShow(Sender: TObject);
begin
  CrearBotones;

  Btn_8.Click;
  PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure TFrmSuite.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TFrmSuite.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Self.Handle, WM_SYSCOMMAND, 61458, 0);
end;

procedure TFrmSuite.GlobalClick(Sender: TObject);
begin
  if Sender.ClassType = TAdvSmoothButton then
  begin
    if TAdvSmoothButton(Sender).Name = 'Btn_Salir' then
    begin
      Resultado := mrCancel;
      Close
    end
    else
    begin
      if TAdvSmoothButton(Sender).Tag and (1 shl 1) <> 0 then PrefIndex := 0;
      if TAdvSmoothButton(Sender).Tag and (1 shl 2) <> 0 then PrefIndex := 1;
      if TAdvSmoothButton(Sender).Tag and (1 shl 3) <> 0 then PrefIndex := 2;
      if TAdvSmoothButton(Sender).Tag and (1 shl 4) <> 0 then PrefIndex := 3;
      if TAdvSmoothButton(Sender).Tag and (1 shl 5) <> 0 then PrefIndex := 4;
      if TAdvSmoothButton(Sender).Tag and (1 shl 6) <> 0 then PrefIndex := 5;
      if TAdvSmoothButton(Sender).Tag and (1 shl 7) <> 0 then PrefIndex := 6;
      if TAdvSmoothButton(Sender).Tag and (1 shl 8) <> 0 then PrefIndex := 7;
      if TAdvSmoothButton(Sender).Tag and (1 shl 9) <> 0 then PrefIndex := 8;
      if TAdvSmoothButton(Sender).Tag and (1 shl 10) <> 0 then PrefIndex := 9;
      if TAdvSmoothButton(Sender).Tag and (1 shl 11) <> 0 then PrefIndex := 10;

   // Registrar el subsistema al cual se accedió
   //   Globales.SetValue('Subsistema', Copy(ListaPrefijos[LPos],1,3));
      Resultado := mrOk;
      Close;
    end;
  end;
end;

procedure TFrmSuite.GlobalEnter(Sender: TObject);
begin
  if Sender.ClassType = TAdvSmoothButton then
  begin
    TAdvSmoothButton(Sender).Shadow := True;
    Image1.Picture.Bitmap := Nil;

    LPos := 10;
{    if TAdvSmoothButton(Sender).Tag and (1 shl 10) <> 0 then
      LPos := 9
    else   }
    begin
      if TAdvSmoothButton(Sender).Tag and (1 shl 1) <> 0 then LPos := 0;
      if TAdvSmoothButton(Sender).Tag and (1 shl 2) <> 0 then LPos := 1;
      if TAdvSmoothButton(Sender).Tag and (1 shl 3) <> 0 then LPos := 2;
      if TAdvSmoothButton(Sender).Tag and (1 shl 4) <> 0 then LPos := 3;
      if TAdvSmoothButton(Sender).Tag and (1 shl 5) <> 0 then LPos := 4;
      if TAdvSmoothButton(Sender).Tag and (1 shl 6) <> 0 then LPos := 5;
      if TAdvSmoothButton(Sender).Tag and (1 shl 7) <> 0 then LPos := 6;
      if TAdvSmoothButton(Sender).Tag and (1 shl 8) <> 0 then LPos := 7;
      if TAdvSmoothButton(Sender).Tag and (1 shl 9) <> 0 then LPos := 8;
      if TAdvSmoothButton(Sender).Tag and (1 shl 10) <> 0 then LPos := 9;
      if TAdvSmoothButton(Sender).Tag and (1 shl 11) <> 0 then LPos := 10;
    end;
    ImageList1.GetBitmap(LPos, Image1.Picture.Bitmap);
    Descripcion.Text := Descripcion1[LPos];
    LabelMsg.Caption.Text := Leyenda1[LPos];

  end;
end;

procedure TFrmSuite.GlobalExit(Sender: TObject);
begin
  if Sender.ClassType = TAdvSmoothButton then
  begin
    TAdvSmoothButton(Sender).Shadow := False;
    Image1.Picture.Bitmap := Nil;
    if TAdvSmoothButton(Sender).Tag = 1025 then
      TAdvSmoothButton(Sender).Color := clSkyBlue
    else
      TAdvSmoothButton(Sender).Color := clNavy;
    ImageList1.GetBitmap(10, Image1.Picture.Bitmap);
    Descripcion.Text := DescripcionDefault;
    LabelMsg.Caption.Text := LeyendaDefault;
  end;
end;

procedure TFrmSuite.GlobalMouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_10MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_10MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_11MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_11MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_1MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_1MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_2MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_2MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_3MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_3MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_4MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_4MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_5MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_5MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_6MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_6MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_7MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_7MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_8MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_8MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.btn_9MouseEnter(Sender: TObject);
begin
  TAdvSmoothButton(Sender).SetFocus;
  GlobalEnter(Sender);
end;

procedure TFrmSuite.btn_9MouseLeave(Sender: TObject);
begin
  GlobalExit(Sender);
end;

procedure TFrmSuite.CrearBotones;
begin
{  Btn_1.Visible := ListaDisponibles.IndexOf('alm_') >= 0;
  Btn_2.Visible := ListaDisponibles.IndexOf('gdp_') >= 0;
  Btn_3.Visible := ListaDisponibles.IndexOf('tic_') >= 0;
  Btn_4.Visible := ListaDisponibles.IndexOf('log_') >= 0;
  Btn_5.Visible := ListaDisponibles.IndexOf('rhu_') >= 0;
  Btn_6.Visible := ListaDisponibles.IndexOf('con_') >= 0;
  Btn_7.Visible := ListaDisponibles.IndexOf('_') >= 0;
  Btn_8.Visible := ListaDisponibles.IndexOf('_') >= 0;
  Btn_9.Visible := ListaDisponibles.IndexOf('_') >= 0;     }
  Btn_1.Enabled := ListaDisponibles.IndexOf('_') >= 0;
  Btn_2.Enabled := ListaDisponibles.IndexOf('_') >= 0;
  Btn_3.Enabled := ListaDisponibles.IndexOf('gdp_') >= 0;
  Btn_4.Enabled := ListaDisponibles.IndexOf('_') >= 0;
  Btn_5.Enabled := ListaDisponibles.IndexOf('con_') >= 0;
  Btn_6.Enabled := ListaDisponibles.IndexOf('_') >= 0;
  Btn_7.Enabled := ListaDisponibles.IndexOf('log_') >= 0;
  Btn_8.Enabled := ListaDisponibles.IndexOf('rhu_') >= 0;
  Btn_9.Enabled := ListaDisponibles.IndexOf('alm_') >= 0;
  Btn_10.Enabled := ListaDisponibles.IndexOf('tic_') >= 0;
  Btn_11.Enabled := ListaDisponibles.IndexOf('_') >= 0;
end;

end.
