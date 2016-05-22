unit UTFrmDatosTiposestimacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  DBCtrls, Mask;

type
  TFrmDatosTiposestimacion = class(TFrmDatosCatalogo)
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    DBMemoComentarios: TDBMemo;
    Image1: TImage;
    Image2: TImage;
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosTiposestimacion: TFrmDatosTiposestimacion;

implementation
uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmDatosTiposestimacion.BtnAddNewClick(Sender: TObject);
begin
  inherited;
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
  DBEditCodigo.Text := '';
  DBEditTitulo.Text := '';
  DBMemoDescripcion.Clear;
  DBMemoComentarios.Clear;
end;

procedure TFrmDatosTiposestimacion.BtnRecClick(Sender: TObject);
begin

  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosTiposestimacion.FormShow(Sender: TObject);
begin
  inherited;
  DBEditCodigo.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
