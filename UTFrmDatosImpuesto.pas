unit UTFrmDatosImpuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, StdCtrls, AdvEdit,
  DBAdvEd;

type
  TFrmDatosImpuesto = class(TFrmDatosCatalogo)
    edtcodigoimpuesto: TDBAdvEdit;
    edttituloimpuesto: TDBAdvEdit;
    edttituloviaembarque1: TDBAdvEdit;
    procedure BtnRecClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosImpuesto: TFrmDatosImpuesto;

implementation

Uses
  UInteliDialog;

{$R *.dfm}

procedure TFrmDatosImpuesto.BtnAddNewClick(Sender: TObject);
begin
  Try
    if trim(DsDatos.DataSet.FieldByName('codigoimpuesto').AsString) = '' then
    begin
      edtcodigoimpuesto.SetFocus;
      raise Exception.Create('El campo "Código" no puede ir vacio.');
    end;
    if trim(DsDatos.DataSet.FieldByName('tituloimpuesto').AsString) = '' then
    begin
      edttituloimpuesto.SetFocus;
      raise Exception.Create('El campo "Título" no puede ir vacio.');
    end;
    inherited;
    DsDatos.DataSet.FieldByName('tasa').AsFloat := 0;
  Except
    on e: Exception do
      InteliDialog.ShowModal('ERROR','Error al guardar la información',e.Message,mtError,[mbOK],0);
  End;
end;

procedure TFrmDatosImpuesto.BtnRecClick(Sender: TObject);
begin
  Try
    if trim(DsDatos.DataSet.FieldByName('codigoimpuesto').AsString) = '' then
    begin
      edtcodigoimpuesto.SetFocus;
      raise Exception.Create('El campo "Código" no puede ir vacio.');
    end;
    if trim(DsDatos.DataSet.FieldByName('tituloimpuesto').AsString) = '' then
    begin
      edttituloimpuesto.SetFocus;
      raise Exception.Create('El campo "Título" no puede ir vacio.');
    end;
    inherited;
  Except
    on e: Exception do
      InteliDialog.ShowModal('ERROR','Error al guardar la información',e.Message,mtError,[mbOK],0);
  End;
end;

procedure TFrmDatosImpuesto.FormShow(Sender: TObject);
begin
  inherited;
  edtCodigoImpuesto.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
