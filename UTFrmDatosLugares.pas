unit UTFrmDatosLugares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage,
  DBCtrls, Mask, AdvShapeButton;

type
  TFrmDatosLugares = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    DBMemoComentarios: TDBMemo;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image2: TImage;
    Image1: TImage;
    Label5: TLabel;
    DBMemoUbicacion: TDBMemo;
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosLugares: TFrmDatosLugares;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosLugares.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosLugares.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;

end;

procedure TFrmDatosLugares.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DBEditCodigo.SetFocus;
end;

end.
