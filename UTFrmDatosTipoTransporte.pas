unit UTFrmDatosTipoTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  pngimage, Mask, AdvShapeButton, ComCtrls, DBClient;

type
  TFrmDatosTipoTransporte = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEditTitulo: TDBEdit;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    Label3: TLabel;
    DBMemoDescripcion: TDBRichEdit;
    DBMemoComentarios: TDBRichEdit;
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosTipoTransporte: TFrmDatosTipoTransporte;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosTipoTransporte.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;

end;

procedure TFrmDatosTipoTransporte.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosTipoTransporte.FormShow(Sender: TObject);
begin
  inherited;
  DBEditCodigo.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
