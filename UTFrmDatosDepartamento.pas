unit UTFrmDatosDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  pngimage, Mask, AdvShapeButton, AppEvnts, DBClient;

type
  TFrmDatosDepartamento = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    Image2: TImage;
    Image1: TImage;
    DBEditTitulo: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBMemoDescripcion: TDBMemo;
    DBMemoComentarios: TDBMemo;
    Label4: TLabel;
    edtEtiqueta: TDBEdit;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosDepartamento: TFrmDatosDepartamento;

implementation

{$R *.dfm}

uses ClientModuleUnit1;

procedure TFrmDatosDepartamento.BtnAddNewClick(Sender: TObject);
begin
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

procedure TFrmDatosDepartamento.BtnRecClick(Sender: TObject);
begin


  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;

  dsDatos.DataSet.FieldByName('IdOrganizacion').AsInteger := 0;
  inherited;
  cdTmp.Open;
end;

procedure TFrmDatosDepartamento.FormShow(Sender: TObject);
begin
  inherited;
  DBEditCodigo.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
