unit UTFrmDatosConceptoExtra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, AppEvnts, ExtCtrls, DB, DBClient, AdvShapeButton,
  StdCtrls, AdvEdit, DBAdvEd, AdvCombo, AdvDBComboBox, pngimage, AdvEdBtn,
  DBAdvEdBtn,UInteliDialog;

type
  TFrmDatosConceptoExtra = class(TFrmDatosCatalogo)
    DBEditClave: TDBAdvEdit;
    DBEditTitulo: TDBAdvEdit;
    CBBTipo: TAdvDBComboBox;
    CBBModo: TAdvDBComboBox;
    Image3: TImage;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    edtaplicasobre: TDBAdvEditBtn;
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure edtaplicasobreClickBtn(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosConceptoExtra: TFrmDatosConceptoExtra;

implementation
uses ClientModuleUnit1,UTFrmConceptosNomina,xDatabase;
{$R *.dfm}

procedure TFrmDatosConceptoExtra.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditClave, 'Clave') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  if ClientModule1.VerificaVacio(edtaplicasobre, 'Aplica sobre') = False then
    exit;
  dsDatos.DataSet.FieldByName('tipo').AsString:= CBBTipo.Text;
  dsDatos.DataSet.FieldByName('modo').AsString := CBBModo.Text;
  inherited;
  cbbtipo.ItemIndex := 0;
  CBBModo.itemindex := 0;
end;

procedure TFrmDatosConceptoExtra.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditClave, 'Clave') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  if ClientModule1.VerificaVacio(edtaplicasobre, 'Aplica sobre') = False then
    exit;
  dsDatos.DataSet.FieldByName('tipo').AsString:= CBBTipo.Text;
  dsDatos.DataSet.FieldByName('modo').AsString := CBBModo.Text;
  inherited;

end;

procedure TFrmDatosConceptoExtra.edtaplicasobreClickBtn(Sender: TObject);
var registro: TLista;
  tForm: TFrmConceptosNomina;
begin
  try
    tForm := TFrmConceptosNomina.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
      DsDatos.DataSet.FieldByName('aplicarsobre').AsString := registro.Valor['cadena']
    else
      raise inteligentexception.Create('Proceso cancelado por el usuario.');
  except
    on e:Exception do
      InteliDialog.ShowModal('No se pudo cargar el Registro por el siguiente motivo.',e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosConceptoExtra.FormShow(Sender: TObject);
begin
  inherited;
  if dsDatos.State = dsInsert then
  begin
    cbbtipo.ItemIndex := 0;
    CBBModo.ItemIndex := 0;
  end;
end;

end.
