unit UTFrmDatosTipoMovimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  Mask, DBCtrls;

type
  TFrmDatosTipoMovimiento = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    Nombre: TLabel;
    Image2: TImage;
    Image1: TImage;
    dbrgrpTipo: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    Image3: TImage;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure dbrgrpTipoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosTipoMovimiento: TFrmDatosTipoMovimiento;
  providername: String;

implementation

uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmDatosTipoMovimiento.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  inherited;
  DBEditCodigo.Text := '';
  dsDatos.DataSet.FieldByName('tipomovimiento').AsString := 'ENTRADA';
end;

procedure TFrmDatosTipoMovimiento.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  inherited;
end;

procedure TFrmDatosTipoMovimiento.dbrgrpTipoChange(Sender: TObject);
begin
  if dbrgrpTipo.Value = 'ENTRADA' then
  begin
    DBRadioGroup1.Visible := False;
    Image3.Visible := False;
  end;
  if dbrgrpTipo.Value = 'SALIDA' then
  begin
    DBRadioGroup1.Visible := True;
    Image3.Visible := True;
  end;
end;

procedure TFrmDatosTipoMovimiento.FormShow(Sender: TObject);
begin
  inherited;
  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('tipomovimiento').AsString := 'ENTRADA';
    dsDatos.DataSet.FieldByName('manifiesto').AsString := 'N';
    Image3.Visible := False;
  end;
  if dsDatos.DataSet.State = dsEdit then
  begin
    if dsDatos.DataSet.FieldByName('tipomovimiento').AsString = 'SALIDA' then
    begin
      DBRadioGroup1.Visible := True;
      Image3.Visible := True;
    end;
  end;
  DBEditCodigo.SetFocus;
end;

end.
