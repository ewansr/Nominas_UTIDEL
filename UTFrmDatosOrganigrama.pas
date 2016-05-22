unit UTFrmDatosOrganigrama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage, Mask,
  DBCtrls, UIntelidialog, AdvShapeButton, DBClient, AppEvnts;

type
  TFrmDatosOrganigrama = class(TFrmDatosCatalogo)
    DBEdittitulo: TDBEdit;
    Image1: TImage;
    Label2: TLabel;
    ClientDataSet1: TClientDataSet;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    Cancelado: Boolean;
    { Public declarations }
  end;

var
  FrmDatosOrganigrama: TFrmDatosOrganigrama;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosOrganigrama.BtnAddClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  try
    DsDatos.DataSet.FieldByName('acceso').AsString := 'false';
    DsDatos.DataSet.Post;
    Cancelado := False;
    close;
  except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;

end;

procedure TFrmDatosOrganigrama.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  try
    DsDatos.DataSet.FieldByName('acceso').AsString := 'false';
    DsDatos.DataSet.Post;
    tclientdataset(DsDatos.DataSet).ApplyUpdates(-1);
    DsDatos.DataSet.Append;
    DsDatos.Dataset.FieldByName('idnivelorganizacion').AsInteger := 0;
    Cancelado := False;
  except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;
end;

procedure TFrmDatosOrganigrama.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmDatosOrganigrama.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  try
    DsDatos.DataSet.FieldByName('acceso').AsString := 'false';
    DsDatos.DataSet.Post;
    tclientdataset(DsDatos.DataSet).ApplyUpdates(-1);
    Cancelado := False;
    close;
  except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;
end;

procedure TFrmDatosOrganigrama.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);
  Cancelado := True;
  if DsDatos.DataSet.State = dsEdit then
    BtnAddnew.Enabled := False;
  DbEditTitulo.SetFocus;
end;

end.
