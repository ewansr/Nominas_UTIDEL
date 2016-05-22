unit UTFrmDatosViaEmbarque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, JvExControls,
  JvLabel, StdCtrls, DBCtrls, AdvEdit, DBAdvEd, AppEvnts, DBClient;

type
  TFrmDatosViaEmbarque = class(TFrmDatosCatalogo)
    edtcodigoviaembarque: TDBAdvEdit;
    edttituloviaembarque: TDBAdvEdit;
    memdescripcion: TDBMemo;
    lbl1: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosViaEmbarque: TFrmDatosViaEmbarque;

implementation

Uses
  UInteliDialog;

{$R *.dfm}

procedure TFrmDatosViaEmbarque.BtnAddNewClick(Sender: TObject);
begin
  Try
    if trim(DsDatos.DataSet.FieldByName('codigoviaembarque').AsString) = '' then
    begin
      edtcodigoviaembarque.SetFocus;
      raise Exception.Create('El campo "Código" no puede ir vacio.');
    end;
    if trim(DsDatos.DataSet.FieldByName('tituloviaembarque').AsString) = '' then
    begin
      edttituloviaembarque.SetFocus;
      raise Exception.Create('El campo "Título" no puede ir vacio.');
    end;
    inherited;
  Except
    on e: Exception do
      InteliDialog.ShowModal('ERROR','Error al guardar la información',e.Message,mtError,[mbOK],0);
  End;
end;

procedure TFrmDatosViaEmbarque.BtnRecClick(Sender: TObject);
begin
  Try
    if trim(DsDatos.DataSet.FieldByName('codigoviaembarque').AsString) = '' then
    begin
      edtcodigoviaembarque.SetFocus;
      raise Exception.Create('El campo "Código" no puede ir vacio.');
    end;
    if trim(DsDatos.DataSet.FieldByName('tituloviaembarque').AsString) = '' then
    begin
      edttituloviaembarque.SetFocus;
      raise Exception.Create('El campo "Título" no puede ir vacio.');
    end;
    inherited;
  Except
    on e: Exception do
      InteliDialog.ShowModal('ERROR','Error al guardar la información',e.Message,mtError,[mbOK],0);
  End;
end;

procedure TFrmDatosViaEmbarque.FormShow(Sender: TObject);
begin
  inherited;
  edtCodigoViaEmbarque.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
