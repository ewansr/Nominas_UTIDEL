unit UtFrmEditPlazaDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, AdvGroupBox, ExtCtrls, Mask,
  RxToolEdit, RXDBCtrl, DBCtrls, AdvShapeButton, DB, JvMemoryDataset, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, DBClient;

type
  TFrmEditPlazaDetalle = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    BtnRec: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    dsmemplazadetalles: TDataSource;
    dsdeptos: TDataSource;
    JvMemoryData1: TJvMemoryData;
    AdvGroupBox1: TAdvGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    DBDateEdit1: TDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    DBComboBox1: TDBComboBox;
    experiencia: TJvDBCalcEdit;
    dep: TDBLookupComboBox;
    ComboBox1: TComboBox;
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
   Resultado: TModalResult;
    { Private declarations }
  public
    IdOrganizacion: Integer;
  end;

var
  FrmEditPlazaDetalle: TFrmEditPlazaDetalle;

implementation

{$R *.dfm}

procedure TFrmEditPlazaDetalle.BtnCancelClick(Sender: TObject);
begin
  dsmemplazadetalles.DataSet.Cancel;
   Resultado := mrCancel;
  Close;
end;

procedure TFrmEditPlazaDetalle.BtnRecClick(Sender: TObject);
begin
  dsmemplazadetalles.DataSet.FieldByName('vacante').AsString := ComboBox1.Text;
  dsmemplazadetalles.DataSet.FieldByName('titulodepartamento').AsString := dep.Text;
  dsmemplazadetalles.DataSet.Post;
  Resultado := mrOk;
  Close;
end;

procedure TFrmEditPlazaDetalle.ComboBox1Change(Sender: TObject);
begin

  if (Combobox1.ItemIndex=1) and (dsmemplazadetalles.DataSet.State in [Dsedit, DsInsert]) then
  begin
    TjvMemoryData(dsmemplazadetalles.DataSet).Cancel;
    TjvMemoryData(dsmemplazadetalles.DataSet).Edit;
    TjvMemoryData(dsmemplazadetalles.DataSet).FieldByName('IdPersonal').AsInteger := Integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
    FrmEditPlazaDetalle.dep.Enabled:=False;
    FrmEditPlazaDetalle.DBDateEdit1.Enabled:=False;
    FrmEditPlazaDetalle.experiencia.Enabled:=False;
    FrmEditPlazaDetalle.DBComboBox1.Enabled:=False;
  end;

  if (Combobox1.ItemIndex=0) and (dsmemplazadetalles.DataSet.State in [Dsedit, DsInsert]) then
  begin
    FrmEditPlazaDetalle.dep.Enabled:=True;
    FrmEditPlazaDetalle.DBDateEdit1.Enabled:=True;
    FrmEditPlazaDetalle.experiencia.Enabled:=true;
    FrmEditPlazaDetalle.DBComboBox1.Enabled:=true;
  end;
end;

procedure TFrmEditPlazaDetalle.FormCreate(Sender: TObject);
begin
    Combobox1.Items.Clear;
    Combobox1.AddItem('Disponible', TObject(-5));
    Combobox1.AddItem('No Disponible', TObject(-6));
end;

end.
