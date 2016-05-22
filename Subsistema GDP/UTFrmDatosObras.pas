unit UTFrmDatosObras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, StdCtrls, DBCtrls, pngimage, ExtCtrls, Mask, DB,
  AdvShapeButton, DBClient, AppEvnts, JvExControls, JvLabel;

type
  TFrmDatosObras = class(TFrmDatosCatalogo)
    Panel2: TPanel;
    Label18: TLabel;
    DBComboBox3: TDBComboBox;
    Image9: TImage;
    Label19: TLabel;
    DBComboBox4: TDBComboBox;
    Image8: TImage;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image10: TImage;
    Image7: TImage;
    DBEditLicitacion: TDBEdit;
    cbEstado: TDBComboBox;
    DBEditPoliza: TDBEdit;
    cbTipoObra: TDBComboBox;
    DBEditCMayor: TDBEdit;
    DBEditFondo: TDBEdit;
    DBEditElementoPEP: TDBEdit;
    DBEditPFinanciera: TDBEdit;
    DBEditCCosto: TDBEdit;
    DBEditCBeneficio: TDBEdit;
    DBEditCGestor: TDBEdit;
    DBEditUbicacion: TDBEdit;
    DBMemoComentarios: TDBMemo;
    DBMemoDescripcion: TDBMemo;
    DBEditTitulo: TDBEdit;
    DBEditCodigo: TDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    mTitulo: TDBMemo;
    Panel5: TPanel;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    JvLabel1: TJvLabel;
    Image14: TImage;
    JvLabel2: TJvLabel;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    procedure FormShow(Sender: TObject);
    procedure ValidaCampos;
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosObras: TFrmDatosObras;

implementation
uses ClientModuleUnit1, UInteliDialog;
{$R *.dfm}

procedure TFrmDatosObras.BtnAddNewClick(Sender: TObject);
begin
  ValidaCampos;

  inherited;
  DbEditCodigo.Text := '';
  DBEditTitulo.Text := '';
  DBMemoDescripcion.Clear;
  DBMemoComentarios.Clear;
end;

procedure TfrmDatosObras.ValidaCampos;
begin
  if DBEditCodigo.Text = '' then
  begin
    DBEditCodigo.SetFocus;
    raise InteligentException.CreateByCode(18, ['Código']);
  end;

  if DBEditTitulo.Text = '' then
  begin
    DBEditTitulo.SetFocus;
    raise InteligentException.CreateByCode(18, ['Máscara']);
  end;

  if DBMemoDescripcion.Text = '' then
  begin
    DBMemoDescripcion.SetFocus;
    raise InteligentException.CreateByCode(18, ['Descripción']);
  end;

  if DBMemoComentarios.Text = '' then
  begin
    DBMemoComentarios.SetFocus;
    raise InteligentException.CreateByCode(18, ['Comentarios']);
  end;

  if DBEditUbicacion.Text = '' then
  begin
    DBEditUbicacion.SetFocus;
    raise InteligentException.CreateByCode(18, ['Ubicación']);
  end;

  if DBEditCGestor.Text = '' then
  begin
    DBEditCGestor.SetFocus;
    raise InteligentException.CreateByCode(18, ['Centro Gestor']);
  end;

  if DBEditCBeneficio.Text = '' then
  begin
    DBEditCBeneficio.SetFocus;
    raise InteligentException.CreateByCode(18, ['Centro de Beneficios']);
  end;

  if DBEditCCosto.Text = '' then
  begin
    DBEditCCosto.SetFocus;
    raise InteligentException.CreateByCode(18, ['Centro de Costo']);
  end;

  if DBEditPFinanciera.Text = '' then
  begin
    DBEditPFinanciera.SetFocus;
    raise InteligentException.CreateByCode(18, ['Posición Financiera']);
  end;

  if DBEditElementoPEP.Text = '' then
  begin
    DBEditElementoPEP.SetFocus;
    raise InteligentException.CreateByCode(18, ['Elemento PEP']);
  end;

  if DBEditFondo.Text = '' then
  begin
    DBEditFondo.SetFocus;
    raise InteligentException.CreateByCode(18, ['Fondo']);
  end;

  if DBEditCMayor.Text = '' then
  begin
    DBEditCMayor.SetFocus;
    raise InteligentException.CreateByCode(18, ['Cuenta Mayor']);
  end;

  if cbTipoObra.Text = '' then
  begin
    cbTipoObra.SetFocus;
    raise InteligentException.CreateByCode(18, ['Tipo de Obra']);
  end;

  if DBEditPoliza.Text = '' then
  begin
    DBEditPoliza.SetFocus;
    raise InteligentException.CreateByCode(18, ['Póliza']);
  end;

  if cbEstado.Text = '' then
  begin
    cbEstado.SetFocus;
    raise InteligentException.CreateByCode(18, ['Status']);
  end;

  if mTitulo.Text = '' then
  begin
    mTitulo.SetFocus;
    raise InteligentException.CreateByCode(18, ['Título']);
  end;
end;

procedure TFrmDatosObras.BtnRecClick(Sender: TObject);
begin
  Try
    ValidaCampos;
    inherited;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if Not (dsDatos.DataSet.State in [dsInsert, dsEdit]) then
        Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      if Not (dsDatos.DataSet.State in [dsInsert, dsEdit]) then
        Close;
    end;
  End;
end;

procedure TFrmDatosObras.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(self);
  inherited;
  DBEditCodigo.SetFocus;
  if DsDatos.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('activo').AsString := 'si';
    dsDatos.DataSet.FieldByName('Status').AsString := 'Activo';
    cbEstado.Enabled := False;
  end;
end;

end.
