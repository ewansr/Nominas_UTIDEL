unit UTFrmespecdetallesubgrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, ComCtrls, DB, DBClient, StdCtrls, JvExComCtrls,
  JvDBTreeView, DBCtrls, JvExControls, JvLabel, Mask, UInteliDialog, Contnrs,
  UTFrmSubgrupos;

type
  tconjuntohijo = class
    absoluteindex : integer;
    iddetallegrupo : integer;
  end;

  tconjuntonieto = class
    absoluteindex : integer;
    id: integer;
    iddetallesubgrupo : integer;
  end;

  TFrmEspecDetalleSubgrupo = class(TForm)
    dsEspecDetalleSubGrupo: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBEcodigo: TDBEdit;
    JvLabel1: TJvLabel;
    DBEtitulo: TDBEdit;
    JvLabel2: TJvLabel;
    DBMdescripcion: TDBMemo;
    JvLabel3: TJvLabel;
    BtnRec: TAdvShapeButton;
    DBEsubgrupo: TDBEdit;
    JvLabel4: TJvLabel;
    editdetallesubgrupo: TEdit;
    Cddesub: TClientDataSet;
    dsdetsub: TDataSource;
    BtnCancel: TAdvShapeButton;
    DBCTipoDato: TDBComboBox;
    Prefijo: TDBEdit;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    procedure BtnRecClick(Sender: TObject);
    procedure DBEsubgrupoChange(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    padre, hijo, nieto, aux : TTreeNode;
    posicion: integer;

  public
    { Public declarations }
    lastid : integer;
  end;

var
  FrmEspecDetalleSubgrupo: TFrmEspecDetalleSubgrupo;

implementation

{$R *.dfm}

uses
  ClientModuleUnit1;

procedure TFrmEspecDetalleSubgrupo.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmEspecDetalleSubgrupo.BtnRecClick(Sender: TObject);
begin
  if TRIM(dsEspecDetalleSubgrupo.DataSet.FieldByName('codigodetalle').AsString) = '' then
  begin
    InteliDialog.ShowModal('ATENCIÓN','Debe de indicar un código.','',mtError,[mbOK],0);
    DBECodigo.SetFocus;
    exit;
  end;

  if dsEspecDetalleSubgrupo.DataSet.FieldByName('titulodetalle').AsString = '' then
  begin
    InteliDialog.ShowModal('ATENCIÓN','Debe de indicar un título.','',mtError,[mbOK],0);
    DBETitulo.SetFocus;
    exit;
  end;

  if dsEspecDetalleSubgrupo.DataSet.FieldByName('tipodato').AsString = '' then
  begin
    InteliDialog.ShowModal('ATENCIÓN','Debe de seleccionar un tipo de dato.','',mtError,[mbOK],0);
    DBCTipoDato.SetFocus;
    exit;
  end;

  try
    if dsEspecDetalleSubgrupo.DataSet.State = dsInsert  then
      dsEspecDetalleSubgrupo.DataSet.FieldByName('Activo').AsString := 'Si';
    dsespecdetallesubgrupo.DataSet.Post;
    TClientdataset(dsespecdetallesubgrupo.DataSet).ApplyUpdates(-1);
    lastid:=ultimoid;
    ModalResult := mrOk;
  Except
    on e:exception do
    begin
      dsEspecDetalleSubGrupo.DataSet.Cancel;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      Close;
    end;
  end;
end;

procedure TFrmEspecDetalleSubgrupo.DBEsubgrupoChange(Sender: TObject);
var
  NombrePaso: String;
begin
  if Length(Trim(DBEsubgrupo.Text)) > 0 then
  begin
    if dsdetsub.DataSet.State <> dsBrowse then
    begin
      CrearConjunto(TClientDataset(dsdetsub.DataSet), 'alm_detallesubgrupo', NombrePaso, ccCatalog);
      CargarDatosFiltrados(TClientDataset(dsdetsub.DataSet), 'idetallesubgrupo', [-9]);
      dsdetsub.DataSet.Open;
    end;
    CargarDatosFiltrados(TClientDataset(dsdetsub.DataSet), 'idetallesubgrupo', [strtoint(DBEsubgrupo.Text)]);
    dsdetsub.DataSet.refresh;
    editdetallesubgrupo.Text := TClientDataset(dsdetsub.DataSet).FieldByName('titulo').AsString;
  end;
end;

procedure TFrmEspecDetalleSubgrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if TClientDataset(dsespecdetallesubgrupo.DataSet).State in [dsEdit, dsInsert] then
      TClientDataset(dsespecdetallesubgrupo.DataSet).Cancel;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;
  end;

end;

end.
