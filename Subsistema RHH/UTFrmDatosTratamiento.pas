unit UTFrmDatosTratamiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  Mask, DBCtrls;

type
  TFrmDatosTratamiento = class(TFrmDatosCatalogo)
    DBEditTratamiento: TDBEdit;
    Codigo: TLabel;
    Image2: TImage;
    DBEditAbreviatura: TDBEdit;
    Titulo: TLabel;
    DBEditdescripcion: TDBEdit;
    Label1: TLabel;
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
  FrmDatosTratamiento: TFrmDatosTratamiento;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosTratamiento.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditTratamiento, 'Tratamiento') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditAbreviatura, 'Abreviatura') = False then
    exit;
  inherited;
  DBEditTratamiento.Text := '';
  DBEditAbreviatura.Text := '';
  DBEditdescripcion.Text := '';

end;

procedure TFrmDatosTratamiento.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditTratamiento, 'Tratamiento') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditAbreviatura, 'Abreviatura') = False then
    exit;
  inherited;
end;

procedure TFrmDatosTratamiento.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.DataSet.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DBEditTratamiento.SetFocus;
end;

end.
