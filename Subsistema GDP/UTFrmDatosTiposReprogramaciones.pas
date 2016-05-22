unit UTFrmDatosTiposReprogramaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, StdCtrls, DBCtrls,
  pngimage, Mask,UTFrmCatalogo,DBClient,UinteliDialog, AppEvnts;

type
  TFrmDatosTiposReprogramaciones = class(TFrmDatosCatalogo)
    DBEditTitulo: TDBEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBMemoDescripcion: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosTiposReprogramaciones: TFrmDatosTiposReprogramaciones;

implementation

uses ClientModuleUnit1,xDatabase;
{$R *.dfm}

procedure TFrmDatosTiposReprogramaciones.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
  DBEditCodigo.Text := '';
  DBEditTitulo.Text := '';
  DBMemoDescripcion.Clear;
end;

procedure TFrmDatosTiposReprogramaciones.BtnRecClick(Sender: TObject);
begin

  if ClientModule1.VerificaVacio(DBEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosTiposReprogramaciones.FormShow(Sender: TObject);
begin
  inherited;
  DBEditCodigo.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;


end.
