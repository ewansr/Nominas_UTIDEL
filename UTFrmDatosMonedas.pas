unit UTFrmDatosMonedas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage,
  DBCtrls, Mask, AdvShapeButton, JvExControls, JvLabel, AppEvnts, DBClient, Spin,
  JvExMask, JvSpin, JvDBSpinEdit;

type
  TFrmDatosMonedas = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Image2: TImage;
    Image1: TImage;
    DBEdit2: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosMonedas: TFrmDatosMonedas;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosMonedas.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
  DBEditCodigo.Text := '';
  DBEditTitulo.Text := '';
  DBEdit1.Text := '';
  DBMemoDescripcion.Clear;
end;

procedure TFrmDatosMonedas.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosMonedas.FormShow(Sender: TObject);
begin
  inherited;
  DBEditCodigo.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
