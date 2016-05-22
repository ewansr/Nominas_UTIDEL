unit UTFrmDatosGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage,
  DBCtrls, Mask, DBClient, UIntelidialog, AdvShapeButton;

type
  TFrmDatosGrupos = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    DBMemoComentarios: TDBMemo;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    EditCodigoDisciplina: TEdit;
    Label5: TLabel;
    EditTituloDisciplina: TEdit;
    BtnFindDisciplina: TBitBtn;
    DBEditIdDisciplina: TDBEdit;
    cdDisciplinas: TClientDataSet;
    DataSource1: TDataSource;
    Image3: TImage;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnFindDisciplinaClick(Sender: TObject);
    procedure DBEditIdDisciplinaChange(Sender: TObject);
    procedure EditCodigoDisciplinaKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosGrupos: TFrmDatosGrupos;
  providername: String;

implementation

uses ClientModuleUnit1,xDatabase, UTFrmDisciplinas;

{$R *.dfm}

procedure TFrmDatosGrupos.BtnAddNewClick(Sender: TObject);
begin
  if length(dbeditIdDisciplina.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un área.','', mtInformation, [mbOk], 0);
    editcodigodisciplina.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
  EditCodigoDisciplina.Text := '';
  EditTituloDisciplina.Text := '';
end;

procedure TFrmDatosGrupos.BtnFindDisciplinaClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmDisciplinas;
begin
  Try
    tForm := TFrmDisciplinas.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('iddisciplina').AsString := registro.Valor['iddisciplina'];
      EditCodigoDisciplina.Text := registro.Valor['codigodisciplina'];
      EditTitulodisciplina.Text := registro.Valor['titulodisciplina'];
      DBEditCodigo.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro.',', intente de nuevo.', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosGrupos.BtnRecClick(Sender: TObject);
begin
  if length(dbeditIdDisciplina.Text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un área.','', mtInformation, [mbOk], 0);
    editcodigodisciplina.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;

end;

procedure TFrmDatosGrupos.DBEditIdDisciplinaChange(Sender: TObject);
var
  providername: String;
begin
{  if Length(Trim(DBEditIddisciplina.Text)) > 0 then
  begin
    if cdDisciplinas.State <> dsBrowse then
    begin
      CrearConjunto(cdDisciplinas, 'nuc_disciplina', providername, ccCatalog);
      CargarDatosFiltrados(cdDisciplinas, 'iddisciplina', [-9]);
      cdDisciplinas.Open;
    end;
    CargarDatosFiltrados(cdDisciplinas, 'iddisciplina', [dsDatos.DataSet.FieldByName('iddisciplina').AsInteger]);
    cdDisciplinas.refresh;
    editCodigoDisciplina.Text := cdDisciplinas.FieldByName('codigodisciplina').AsString;
    editTituloDisciplina.Text := cdDisciplinas.FieldByName('titulodisciplina').AsString;
  end;   }
end;

procedure TFrmDatosGrupos.EditCodigoDisciplinaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdDisciplinas.State <> dsBrowse then
    begin
      CrearConjunto(cdDisciplinas, 'nuc_disciplina', providername, ccCatalog);
      CargarDatosFiltrados(cdDisciplinas, 'iddisciplina', [-9]);
      cdDisciplinas.Open;
    end;
    CargarDatosFiltrados(cdDisciplinas, 'codigodisciplina', [tEdit(sender).Text]);
    cdDisciplinas.refresh;
    if cdDisciplinas.RecordCount = 1 then
    begin
      editCodigoDisciplina.Text := cdDisciplinas.FieldByName('codigodisciplina').AsString;
      editTituloDisciplina.Text := cdDisciplinas.FieldByName('titulodisciplina').AsString;
      dsDatos.DataSet.FieldByName('iddisciplina').AsInteger := cdDisciplinas.FieldByName('iddisciplina').AsInteger;
      DBEditCodigo.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de área ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindDisciplina.Click;
  end;
end;

procedure TFrmDatosGrupos.FormShow(Sender: TObject);
begin
  inherited;
  if EditCodigoDisciplina.Enabled then
    EditCodigoDisciplina.SetFocus
  else
    DBEditCodigo.SetFocus;

  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
