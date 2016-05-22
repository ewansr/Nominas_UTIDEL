unit UTFrmDatosCuentasCorreo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, AppEvnts, ExtCtrls, DB, DBClient, AdvShapeButton,
  JvExMask, JvSpin, JvDBSpinEdit, StdCtrls, pngimage, Mask, DBCtrls;

type
  TFrmDatosCuentasCorreo = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    DBEditTitulo: TDBEdit;
    Image1: TImage;
    DbPuerto: TJvDBSpinEdit;
    DBEditHost: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosCuentasCorreo: TFrmDatosCuentasCorreo;

implementation

{$R *.dfm}

procedure TFrmDatosCuentasCorreo.FormShow(Sender: TObject);
begin
  inherited;
  BtnAddNew.Visible := False;
end;

end.
