unit UTFrmSolicitaPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvLabel, DBClient,
  ClientModuleUnit1, UInteliDialog;

type
  TFrmSolicitaPersonal = class(TForm)
    Edit1: TEdit;
    JvLabel1: TJvLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    JvLabel3: TJvLabel;
    JvLabel2: TJvLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    cdPersonal: TClientDataSet;
  public
    { Public declarations }
  end;

var
  FrmSolicitaPersonal: TFrmSolicitaPersonal;

implementation

{$R *.dfm}

procedure TFrmSolicitaPersonal.Edit1Change(Sender: TObject);
begin
  Jvlabel3.Visible := False;
  BitBtn1.Enabled := False;
end;

procedure TFrmSolicitaPersonal.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cuantos: Integer;
begin
  if Key = 13 then
    if Edit1.Text <> '' then
    begin
      CargarDatosFiltrados(cdPersonal, 'CodigoPersonal', [Edit1.Text]);
      Cuantos := CuantosRegistros(cdPersonal);
      if Cuantos = 0 then
        InteliDialog.ShowModal('Código de personal incorrecto', 'No existe un empleado que tenga el código de personal "' + Edit1.Text + '"' + #10 + #10 + 'Verifique esto e intente de nuevo', mtInformation, [mbOk], 0);
      if Cuantos = 1 then
      begin
        Jvlabel3.Visible := True;
        BitBtn1.Enabled := True;
        BitBtn1.SetFocus;
      end;
      if Cuantos > 1 then
        InteliDialog.ShowModal('Código de personal incorrecto', 'El código de personal "' + Edit1.Text + '" coinside con ' + IntToStr(Cuantos) + ' registros de empleado.' + #10 + #10 + 'Verifique esto e intente de nuevo', mtInformation, [mbOk], 0);
    end;
end;

procedure TFrmSolicitaPersonal.FormCreate(Sender: TObject);
begin
  cdPersonal := TClientDataSet.Create(Self);
  CrearConjunto(cdPersonal, 'nuc_personal', ccUpdate);
end;

procedure TFrmSolicitaPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    27: if Shift = [] then BitBtn2.Click;
    120: if ssCtrl in Shift then BitBtn3.Click;
  end;
end;

end.
