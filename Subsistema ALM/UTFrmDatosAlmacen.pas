unit UTFrmDatosAlmacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  pngimage, Mask, AdvShapeButton, JvComponentBase, JvEnterTab, DBClient,
  ComCtrls, AdvMemo, DBAdvMemo, AppEvnts;

type
  TFrmDatosAlmacen = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEditTitulo: TDBEdit;
    Image1: TImage;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    DBMemoUbicacion: TDBRichEdit;
    DBMemoDescripcion: TDBRichEdit;
    DBMemoComentarios: TDBRichEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosAlmacen: TFrmDatosAlmacen;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosAlmacen.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosAlmacen.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosAlmacen.FormShow(Sender: TObject);
begin
  inherited;
{  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';}
  DBEditCodigo.SetFocus;
end;

end.
