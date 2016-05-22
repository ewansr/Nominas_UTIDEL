unit UTfrmDatosUnidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  pngimage, Mask, AdvShapeButton;

type
  TFrmDatosUnidades = class(TFrmDatosCatalogo)
    editCodigo: TDBEdit;
    editTitulo: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    Image3: TImage;
    Image5: TImage;
    Label5: TLabel;
    Label6: TLabel;
    mComentarios: TDBMemo;
    mDescripcion: TDBMemo;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosUnidades: TFrmDatosUnidades;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosUnidades.BtnAddClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(EditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(EditTitulo, 'Título') = False then
    exit;
  inherited;

end;

procedure TFrmDatosUnidades.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(EditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(EditTitulo, 'Título') = False then
    exit;
  inherited;

end;

procedure TFrmDatosUnidades.FormShow(Sender: TObject);
begin
  inherited;
  EditCodigo.SetFocus;
  if DsDatos.DataSet.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
