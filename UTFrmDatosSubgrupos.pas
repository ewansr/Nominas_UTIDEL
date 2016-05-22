unit UTFrmDatosSubgrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage,
  DBCtrls, Mask, DBClient, Uintelidialog, AdvShapeButton, Menus, JvExControls,
  JvLabel, NxEdit;

type
  TFrmDatosSubgrupos = class(TFrmDatosCatalogo)
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
    DBEditIdGrupo: TDBEdit;
    BtnFindGrupo: TBitBtn;
    EditCodigoGrupo: TEdit;
    EditTituloGrupo: TEdit;
    Label6: TLabel;
    cdGrupo: TClientDataSet;
    DataSource2: TDataSource;
    Image3: TImage;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    edtCodigoManttoPrev: TEdit;
    btnManttoPrev: TBitBtn;
    edtTituloManttoPrev: TEdit;
    Image4: TImage;
    JvLabel1: TJvLabel;
    DBESubcodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnFindGrupoClick(Sender: TObject);
    procedure DBEditIdGrupoChange(Sender: TObject);
    procedure EditCodigoGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRecClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure edtCodigoManttoPrevKeyPress(Sender: TObject; var Key: Char);
    procedure btnManttoPrevClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigoMtto, TituloMtto: String;
  end;

var
  FrmDatosSubgrupos: TFrmDatosSubgrupos;

implementation

uses ClientModuleUnit1, xDatabase, UTFrmGrupos, UTFrmDisciplinas, UTFrmManttoPrev;

{$R *.dfm}

Const
  SiNo: Array[False..True] of String = ('No', 'Si');

procedure TFrmDatosSubgrupos.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  if length(dbeditidgrupo.text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un grupo.','', mtInformation, [mbOk], 0);
    editcodigogrupo.setfocus;
    exit;
  end;

  // Si el checkbox no esta marcado, ponerle -5 a la referencia al tipo de mantenimiento
  if not checkbox1.checked then
    dsDatos.DataSet.FieldByName('idmanttoprev').AsInteger := -5
  else
  begin
    if dsDatos.DataSet.FieldByName('idmanttoprev').AsInteger <= 0 then
    begin
      InteliDialog.ShowModal('Error', 'Falta tipo de mantenimiento prevetivo',
      'Ha indicado que el subgrupo maneje mantenimientos preventivos pero no ha' + #10 +
      'indicado un tipo de mantenimiento válido.' + #10 +
      'Por favor corrija e intente guardar nuevamente.',mtError,[mbOK],0);
      edtCodigoManttoPrev.SetFocus;
      exit;
    end;
  end;

  inherited;
  EditCodigoGrupo.Text := '';
  EditTituloGrupo.Text := '';
end;

procedure TFrmDatosSubgrupos.BtnFindGrupoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmGrupos;
begin
  try
    tForm := TFrmGrupos.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idgrupo').AsInteger := registro.Valor['idgrupo'];
      EditCodigoGrupo.Text := registro.Valor['codigogrupo'];
      EditTituloGrupo.Text := registro.Valor['titulogrupo'];
      DBMemoDescripcion.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosSubgrupos.btnManttoPrevClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmManttoPrev;
begin
  try
    tForm := TFrmManttoPrev.Create(nil);
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idmanttoprev').AsInteger := registro.Valor['idmanttoprev'];
      EdtCodigoManttoPrev.Text := registro.Valor['codigoManttoPrev'];
      EdtTituloManttoPrev.Text := registro.Valor['tituloManttoPrev'];
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosSubgrupos.BtnRecClick(Sender: TObject);
var
  Enfocar: TWinControl;
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;

  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;

  Try
    if length(dbeditidgrupo.text) = 0 then
    begin
      Enfocar := editcodigogrupo;
      raise InteligentException.Create('Debe seleccionar un grupo al cual será asignado el nuevo subgrupo que está intentando dar de alta');
    end;

    // Si el checkbox no esta marcado, ponerle -5 a la referencia al tipo de mantenimiento
    if not checkbox1.checked then
      dsDatos.DataSet.FieldByName('idmanttoprev').AsInteger := -5
    else
    begin
      if dsDatos.DataSet.FieldByName('idmanttoprev').AsInteger <= 0 then
      begin
        InteliDialog.ShowModal('Error', 'Falta tipo de mantenimiento prevetivo',
        'Ha indicado que el subgrupo maneje mantenimientos preventivos pero no ha' + #10 +
        'indicado un tipo de mantenimiento válido.' + #10 +
        'Por favor corrija e intente guardar nuevamente.',mtError,[mbOK],0);
        edtCodigoManttoPrev.SetFocus;
        exit;
      end;
    end;


{    if CheckBox1.Checked then
    begin
      if Recurrencia.Value <= 0 then
      begin
        Enfocar := Recurrencia;
        raise InteligentException.Create('Debe capturar un número de días en los cuales se realizará el mantenimiento preventivo de manera recurrente');
      end;

      dsDatos.DataSet.FieldByName('Recurrencia').AsInteger := Trunc(Recurrencia.Value);
    end
    else
      dsDatos.DataSet.FieldByName('Recurrencia').AsInteger := 0;
}
    inherited;
  Except
    on e:inteligentexception do
    begin
      InteliDialog.ShowModal('Error de captura', e.Message, mtWarning, [mbOk], 0);
      if Assigned(Enfocar) then
        Enfocar.SetFocus;
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Ha ocurrido un error inesperado en el sistema, informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmDatosSubgrupos.CheckBox1Click(Sender: TObject);
begin
  inherited;
  edtCodigoManttoPrev.Enabled := Checkbox1.checked;
  btnManttoPrev.Enabled := Checkbox1.checked;
  edtTituloManttoPrev.Visible := Checkbox1.checked;
end;

procedure TFrmDatosSubgrupos.DBEditIdGrupoChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdgrupo.Text)) > 0 then
  begin
    if cdgrupo.State <> dsBrowse then
    begin
      CrearConjunto(cdGrupo, 'alm_grupo', providername, ccCatalog);
      cdGrupo.Open;
    end;
    CargarDatosFiltrados(cdGrupo, 'idgrupo', [dsDatos.DataSet.FieldByName('idgrupo').AsInteger]);
    cdGrupo.refresh;
    editCodigoGrupo.Text := cdGrupo.FieldByName('codigogrupo').AsString;
    editTituloGrupo.Text := cdGrupo.FieldByName('titulogrupo').AsString;
  end;
end;

procedure TFrmDatosSubgrupos.EditCodigoGrupoKeyPress(Sender: TObject;
  var Key: Char);
  var providername: String;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdgrupo.State <> dsBrowse then
    begin
      CrearConjunto(cdGrupo, 'alm_grupo', providername, ccCatalog);
      cdGrupo.Open;
    end;
    CargarDatosFiltrados(cdGrupo, 'codigogrupo', [tEdit(sender).Text]);
    cdGrupo.refresh;
    if cdGrupo.RecordCount = 1 then
    begin
      editCodigoGrupo.Text := cdGrupo.FieldByName('codigogrupo').AsString;
      editTituloGrupo.Text := cdGrupo.FieldByName('titulogrupo').AsString;
      dsDatos.DataSet.FieldByName('idgrupo').AsInteger := cdGrupo.FieldByName('idgrupo').AsInteger;
      DBMemoDescripcion.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de grupo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindGrupo.Click;
  end;
end;

procedure TFrmDatosSubgrupos.edtCodigoManttoPrevKeyPress(Sender: TObject;
  var Key: Char);
Var
  cdMantto: TClientDataSet;
begin
  inherited;
  if (tEdit(sender).Enabled) and (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    cdMantto := TClientDataSet.Create(nil);
    CrearConjunto(cdMantto,'alm_manttoprev',ccCatalog);
    CargarDatosFiltrados(cdMantto, 'codigomanttoprev', ['%' + tEdit(sender).Text + '%']);
    cdMantto.Open;
    if cdMantto.RecordCount = 1 then
    begin
      edtCodigoManttoPrev.Text := cdMantto.FieldByName('codigomanttoprev').AsString;
      edtTituloManttoPrev.Text := cdMantto.FieldByName('titulomanttoprev').AsString;
      dsDatos.DataSet.FieldByName('idmanttoprev').AsInteger := cdMantto.FieldByName('idmanttoprev').AsInteger;
    end
    else
      if InteliDialog.ShowModal('El código de grupo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnManttoPrev.Click;
    eliminarconjunto(cdMantto);
    cdMantto.Free;
  end;
end;

procedure TFrmDatosSubgrupos.FormCreate(Sender: TObject);
begin
  inherited;
  clientmodule1.ComponentColor(self);
end;

procedure TFrmDatosSubgrupos.FormShow(Sender: TObject);
var
  cdMantto: TClientDataSet;
begin
  inherited;

  Try
    case dsDatos.DataSet.State of
      dsEdit: begin
                //DBEditCodigo.Enabled := False;
                CheckBox1.Checked := dsDatos.DataSet.FieldByName('idManttoPrev').AsInteger > 0;
                if dsDatos.DataSet.FieldByName('idManttoPrev').AsInteger > 0 then
                begin
                  cdMantto := TClientDataSet.Create(nil);
                  CrearConjunto(cdMantto,'alm_manttoprev',ccCatalog);
                  CargarDatosFiltrados(cdMantto, 'idmanttoprev', [dsDatos.DataSet.FieldByName('idManttoPrev').AsInteger]);
                  cdMantto.Open;
                  if cdMantto.RecordCount = 1 then
                  begin
                    edtCodigoManttoPrev.Text := cdMantto.FieldByName('codigomanttoprev').AsString;
                    edtTituloManttoPrev.Text := cdMantto.FieldByName('titulomanttoprev').AsString;
                  end
                  else
                    checkbox1.Checked := false;
                  eliminarconjunto(cdMantto);
                  cdMantto.Free;
                end;
                CheckBox1Click(self);
                DBEditTitulo.SetFocus;
              end;
      dsInsert: begin
                DsDatos.DataSet.FieldByName('activo').AsString := 'Si';
                CheckBox1.Checked := False;
                CheckBox1Click(self);
                //EditCodigoGrupo.SetFocus;
              end;
    end;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Un error inesperado ha ocurrido, informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
