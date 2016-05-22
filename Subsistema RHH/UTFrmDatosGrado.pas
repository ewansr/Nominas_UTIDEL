unit UTFrmDatosGrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  Mask, DBCtrls;

type
  TFrmDatosGrado = class(TFrmDatosCatalogo)
    DBEditdescripcion: TDBEdit;
    Label1: TLabel;
    DBEditGrado: TDBEdit;
    Titulo: TLabel;
    Image1: TImage;
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosGrado: TFrmDatosGrado;

implementation

uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmDatosGrado.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditGrado, 'Grado') = False then
    exit;
  inherited;
  DBEditGrado.Text := '';
  DBEditdescripcion.Text := '';

end;

procedure TFrmDatosGrado.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditGrado, 'Grado') = False then
    exit;
  inherited;

end;

procedure TFrmDatosGrado.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.DataSet.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DBEditGrado.SetFocus;
end;

end.
