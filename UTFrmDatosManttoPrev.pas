unit UTFrmDatosManttoPrev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, Mask, AdvSpin,
  DBAdvSp, StdCtrls, AdvEdit, DBAdvEd, DBClient;

type
  TFrmDatosManttoPrev = class(TFrmDatosCatalogo)
    edtCodigo: TDBAdvEdit;
    edtTitulo: TDBAdvEdit;
    spnRecurrencia: TDBAdvSpinEdit;
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function ValidaCampos: boolean;
  public
    { Public declarations }
  end;

var
  FrmDatosManttoPrev: TFrmDatosManttoPrev;

implementation

uses
  UIntelidialog;

{$R *.dfm}

procedure TFrmDatosManttoPrev.BtnRecClick(Sender: TObject);
begin
  if ValidaCampos then
    inherited;
end;


procedure TFrmDatosManttoPrev.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
  begin
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
    DsDatos.DataSet.FieldByName('recurrencia').AsInteger := 1;
  end;
  edtCodigo.SetFocus;
end;

function TFrmDatosManttoPrev.ValidaCampos: Boolean;
begin
  result := true;
  if TRIM(edtCodigo.Text) = '' then
  BEGIN
    InteliDialog.ShowModal('ERROR','El campo "Código" no puede ir vacio','',mtError,[mbOK],0);
    edtCodigo.SetFocus;
    result := false;
    exit;
  END;

  if TRIM(edtTitulo.Text) = '' then
  BEGIN
    InteliDialog.ShowModal('ERROR','El campo "Título" no puede ir vacio','',mtError,[mbOK],0);
    edtTitulo.SetFocus;
    result := false;
    exit;
  END;

  if spnRecurrencia.Value < 0 then
  BEGIN
    InteliDialog.ShowModal('ERROR','El campo "Recurrencia" tiene que ser mayor o igual a cero','',mtError,[mbOK],0);
    spnRecurrencia.SetFocus;
    result := false;
    exit;
  END;

end;
end.
