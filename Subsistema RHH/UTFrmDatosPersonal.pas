unit UTFrmDatosPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, JvExControls,
  JvLabel, StdCtrls, Mask, DBCtrls, NxEdit, UIntelidialog;

type
  TFrmDatosPersonal = class(TFrmDatosCatalogo)
    GroupBox1: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel7: TJvLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    JvLabel11: TJvLabel;
    DBEdit11: TDBEdit;
    JvLabel9: TJvLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    JvLabel10: TJvLabel;
    JvLabel4: TJvLabel;
    DBImage1: TDBImage;
    DBMemo1: TDBMemo;
    NxImagePathEdit1: TNxImagePathEdit;
    procedure FormShow(Sender: TObject);
    procedure NxImagePathEdit1Change(Sender: TObject);
    procedure NxImagePathEdit1ButtonClick(Sender: TObject);
    procedure NxImagePathEdit1Enter(Sender: TObject);
    procedure NxImagePathEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosPersonal: TFrmDatosPersonal;

implementation
  uses ClientModuleUnit1, xDatabase;
{$R *.dfm}

procedure TFrmDatosPersonal.FormShow(Sender: TObject);
begin
  inherited;
   if DsDatos.DataSet.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

procedure TFrmDatosPersonal.NxImagePathEdit1ButtonClick(Sender: TObject);
begin
  inherited;
    NxImagePathEdit1.PictureDialog.Filter:='Imagen de mapa de bits (*.Bmp)|*.bmp';
end;

procedure TFrmDatosPersonal.NxImagePathEdit1Change(Sender: TObject);
begin
    if (Length(Trim(NxImagePathEdit1.Text)) > 0) and (NxImagePathEdit1.Text <> 'Dirección') then
  begin
    try
      DBImage1.Picture.Bitmap.LoadFromFile(NxImagePathEdit1.Text);
    Except
      InteliDialog.ShowModal('Error al cargar imagen, verifique que el tipo sea bmp.','', mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TFrmDatosPersonal.NxImagePathEdit1Enter(Sender: TObject);
begin
  inherited;
   if NxImagePathEdit1.Text = 'Dirección' then
    NxImagePathEdit1.Text := '';
end;

procedure TFrmDatosPersonal.NxImagePathEdit1Exit(Sender: TObject);
begin
  inherited;
    if NxImagePathEdit1.Text = '' then
      NxImagePathEdit1.Text := 'Dirección';
end;



end.
