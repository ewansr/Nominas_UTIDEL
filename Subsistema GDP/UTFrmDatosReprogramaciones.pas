unit UTFrmDatosReprogramaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, pngimage, Mask, UIntelidialog, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AppEvnts, DBClient;

type
  TFrmDatosReprogramaciones = class(TFrmDatosCatalogo)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    Label3: TLabel;
    DBMemoDescripcion: TDBMemo;
    Label4: TLabel;
    DBMemoComentarios: TDBMemo;
    EditTituloDepartamento: TEdit;
    BtnFindDepartamento: TBitBtn;
    txtTipoReprogramacion: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    txtDescripcionObra: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    dtpFecha: TJvDBDatePickerEdit;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    Label9: TLabel;
    Label10: TLabel;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBComboBox1: TDBComboBox;
    procedure BtnFindDepartamentoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosReprogramaciones: TFrmDatosReprogramaciones;

implementation

uses ClientModuleUnit1, xDatabase, UTFrmTiposReprogramaciones, UTFrmObras;
{$R *.dfm}

procedure TFrmDatosReprogramaciones.BitBtn1Click(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmObras;
begin
  Try
    tForm := TFrmObras.Create(nil);
    tForm.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idobra').AsString := registro.Valor['idobra'];
      txtDescripcionObra.Text := registro.Valor['descripcion'];
      DBEditCodigo.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.', '', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosReprogramaciones.BtnFindDepartamentoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmTiposReprogramaciones;
begin
  Try
    tForm := TFrmTiposReprogramaciones.Create(nil);
    tForm.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idtipoconvenio').AsString := registro.Valor['idtipoconvenio'];
      txtTipoReprogramacion.Text := registro.Valor['idtipoconvenio'];
      EditTituloDepartamento.Text := registro.Valor['descripcion'];
      DBEditCodigo.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.', '', mtInformation, [mbOk], 0);
  end;
end;

end.
