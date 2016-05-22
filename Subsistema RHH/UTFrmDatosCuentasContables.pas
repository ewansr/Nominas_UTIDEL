unit UTFrmDatosCuentasContables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, NxCollection, StdCtrls, Mask, DBCtrls,
  JvExControls, JvLabel, DB, AdvShapeButton, ExtCtrls, UInteliDialog, pngimage;

type
  TFrmDatosCuentasContables = class(TFrmDatosCatalogo)
    GroupBox1: TGroupBox;
    JvLabel1: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel2: TJvLabel;
    Edit1: TEdit;
    NxButton1: TNxButton;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Edit2: TEdit;
    JvLabel5: TJvLabel;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosCuentasContables: TFrmDatosCuentasContables;

implementation
   uses ClientModuleUnit1, xDatabase, UTFrmCatalogoBancos;
{$R *.dfm}

procedure TFrmDatosCuentasContables.BtnAddNewClick(Sender: TObject);
begin
    if ClientModule1.VerificaVacio(dbedit1, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(dbedit3, 'Título') = False then
    exit;
  if ClientModule1.VerificaVacio(dbedit4, 'Título') = False then
    exit;
  if length(dbedit2.text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un Banco.','', mtInformation, [mbOk], 0);
    dbedit1.setfocus;
    exit;
  end;
  inherited;
  dbedit1.Text:='';
  dbedit2.Text:='';
  dbedit3.Text:='';
  dbedit4.Text:='';
  edit1.Text:='';
  edit2.Text:='';
end;

procedure TFrmDatosCuentasContables.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(dbedit1, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(dbedit3, 'Título') = False then
    exit;
  if ClientModule1.VerificaVacio(dbedit4, 'Título') = False then
    exit;
  if length(dbedit2.text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un Banco.','', mtInformation, [mbOk], 0);
    dbedit1.setfocus;
    exit;
  end;
  inherited;
end;

procedure TFrmDatosCuentasContables.FormShow(Sender: TObject);
begin
  inherited;
   if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

procedure TFrmDatosCuentasContables.NxButton1Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmCatalogoBancos;
begin
  try
    tForm := TFrmCatalogoBancos.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idbanco').AsString := registro.Valor['idbanco'];
      edit1.Text := registro.Valor['codigo'];
      edit2.Text := registro.Valor['nombre'];
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

end.
