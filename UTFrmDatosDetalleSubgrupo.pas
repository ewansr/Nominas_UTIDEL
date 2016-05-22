unit UTFrmDatosDetalleSubgrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, JvExControls,
  JvLabel, StdCtrls, DBCtrls, Mask, Buttons, DBClient, UIntelidialog;

type
  TFrmDatosDetalleSubgrupo = class(TFrmDatosCatalogo)
    DBEcodigo: TDBEdit;
    DBEtitulo: TDBEdit;
    DBMdescripcion: TDBMemo;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    EditCodigosubgrupo: TEdit;
    JvLabel4: TJvLabel;
    BtnFindDisciplina: TBitBtn;
    DBEsubgrupo: TDBEdit;
    cdsubgrupo: TClientDataSet;
    dssubgrupo: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBEsubgrupoChange(Sender: TObject);
    procedure BtnFindDisciplinaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosDetalleSubgrupo: TFrmDatosDetalleSubgrupo;

implementation
uses ClientModuleUnit1,xDatabase, UTFrmSubgrupos;
{$R *.dfm}

procedure TFrmDatosDetalleSubgrupo.BtnFindDisciplinaClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmSubgrupos;
begin
   Try
    tForm := TFrmSubgrupos.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idsubgrupo').AsString := registro.Valor['idsubgrupo'];
      EditCodigosubgrupo.Text := registro.Valor['codigosubgrupo'];
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro.',', intente de nuevo.', mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmDatosDetalleSubgrupo.DBEsubgrupoChange(Sender: TObject);
var
 providername: String;
begin
  if Length(Trim(DBEsubgrupo.Text)) > 0 then
  begin
    if cdsubgrupo.State <> dsBrowse then
    begin
      CrearConjunto(cdsubgrupo, 'alm_subgrupo', providername, ccCatalog);
      CargarDatosFiltrados(cdsubgrupo, 'idsubgrupo', [-9]);
      cdsubgrupo.Open;
    end;
    CargarDatosFiltrados(cdsubgrupo, 'idsubgrupo', [dsDatos.DataSet.FieldByName('idsubgrupo').AsInteger]);
    cdsubgrupo.refresh;
    EditCodigosubgrupo.Text := cdsubgrupo.FieldByName('codigosubgrupo').AsString;
  end;
end;

procedure TFrmDatosDetalleSubgrupo.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
