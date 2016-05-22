unit UTFrmInasistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, AdvGlowButton, StdCtrls, AdvEdit, DBAdvEd, UInteliDialog,
  ClientModuleUnit1, AdvOfficeButtons, DBAdvOfficeButtons, Grids, DBGrids, ExtCtrls, ComCtrls,
  ToolWin, DBCtrls, Mask, RxToolEdit, RXDBCtrl, JvExControls, JvLabel;

type

  TFrmInasistencia = class(TForm)
    ToolBar1: TToolBar;
    Btn_Agregar: TToolButton;
    Btn_Editar: TToolButton;
    Btn_Quitar: TToolButton;
    ToolButton4: TToolButton;
    Btn_Refresh: TToolButton;
    ToolButton1: TToolButton;
    Splitter1: TSplitter;
    Panel2: TPanel;
    pnl_BotonesLinea: TPanel;
    btnAgregarLinea: TAdvGlowButton;
    btnAceptarLinea: TAdvGlowButton;
    btnBtn_CerrarLinea: TAdvGlowButton;
    pnl_agregar: TPanel;
    cdInasistencia: TClientDataSet;
    dsInasistencia: TDataSource;
    finicio: TDBDateEdit;
    ftermino: TDBDateEdit;
    referencia: TDBEdit;
    DBGrid1: TDBGrid;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    dias: TDBEdit;
    cdPersonal: TClientDataSet;
    cdTipo: TClientDataSet;
    JvLabel6: TJvLabel;
    cbPersonal: TDBComboBox;
    cbTipo: TDBComboBox;
    procedure Btn_AgregarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure finicioChange(Sender: TObject);
    procedure fterminoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure btnAgregarLineaClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure btnBtn_CerrarLineaClick(Sender: TObject);

  private
    { Private declarations }
    FrmCaptura: TForm;
    Modificado: Boolean;
    procedure CrearVentana;
  public
    { Public declarations }
  end;

var
  FrmInasistencia: TFrmInasistencia;

implementation

{$R *.dfm}



procedure TFrmInasistencia.btnAgregarLineaClick(Sender: TObject);
begin
   Try

    if Not (cdInasistencia.State in [dsEdit, dsInsert]) then
      raise InteligentException.CreateByCode(1, ['El dataset cdInasistencia no se encuentra en Modo de edición o edición']);

   if Trim(referencia.Text) = '' then
    begin
      referencia.SetFocus;
      raise InteligentException.CreateByCode(18, ['Referencia']);
    end;

    cdInasistencia.FieldByName('IdExcepcion').AsInteger := 0;
    cdInasistencia.FieldByName('IdPersonal').AsInteger := StrToInt(cbPersonal.text);
    cdInasistencia.FieldByName('IdTipoInasistencia').AsInteger := StrToInt(cbTipo.text);
    cdInasistencia.FieldByName('Inicio').AsDateTime := finicio.Date;
    cdInasistencia.FieldByName('Termino').AsDateTime := ftermino.Date;
    cdInasistencia.FieldByName('Referencia').AsString := referencia.Text;

    cdInasistencia.Post;
    cdInasistencia.ApplyUpdates(-1);

    Modificado := True;
   Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
    begin
      InteliDialog.ShowModal(e.ClassName + 'Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Exit;
    end;
  End;
end;

procedure TFrmInasistencia.btnBtn_CerrarLineaClick(Sender: TObject);
begin
   if cdInasistencia.State in [dsEdit, dsInsert] then
    cdInasistencia.Cancel;
  Modificado := False;
  cbPersonal.SetFocus;
end;

procedure TFrmInasistencia.Btn_AgregarClick(Sender: TObject);
begin
if Not Assigned(FrmCaptura) then
    CrearVentana;

  cdInasistencia.Append;
  FrmCaptura.ShowModal;

  if Modificado then
    cdInasistencia.Refresh;
end;

procedure TFrmInasistencia.Btn_EditarClick(Sender: TObject);
Var
  PrevFocus: TWinControl;
begin
  if Not Assigned(FrmCaptura) then
    CrearVentana;

  btnAgregarLinea.Visible := False;
  cdInasistencia.Edit;

  PrevFocus := Self.ActiveControl;
  FrmCaptura.ShowModal;

  if Modificado then
    cdInasistencia.Refresh;
  PrevFocus.SetFocus;
end;

procedure TFrmInasistencia.Btn_QuitarClick(Sender: TObject);
var
  Mensaje: string;
begin

  if cdInasistencia.Eof or cdInasistencia.BoF then
  begin
    InteliDialog.ShowModal('Error', 'Seleccione un registro válido e intente de nuevo', mtError, [mbOk], 0);
    Exit;
  end;

  if false then
  begin
    InteliDialog.ShowModal('No se puede eliminar', 'Este registro no puede ser eliminado debido a...', mtError, [mbOk], 0);
    Exit;
  end;

  Mensaje := Format('¿Está seguro de eliminar el registro [%s]?',[cdInasistencia.FieldByName('IdExcepcion').AsString]);
  if InteliDialog.ShowModal('Confirmación', Mensaje, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      cdInasistencia.Delete;
      cdInasistencia.ApplyUpdates(-1);
      InteliDialog.ShowModal('Información', 'El registro se ha eliminado correctamente.', mtInformation, [mbOk], 0)
    Except
      on e:Exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

      on e:InteligentException do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    End;
  end;

end;

procedure TFrmInasistencia.Btn_RefreshClick(Sender: TObject);
var
  OldCursor: TCursor;
begin
  if cdInasistencia.State = DsBrowse then
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      cdInasistencia.Refresh;
    Finally
      Screen.Cursor := OldCursor;
    End;
end;

procedure TFrmInasistencia.Button1Click(Sender: TObject);
begin
  //dias.Text:=inttostr(trunc((ftermino.Date)-(finicio.Date)));
  //dias.Text:=datetostr(finicio.Date);
end;

procedure TFrmInasistencia.CrearVentana;
begin
  FrmCaptura := TForm.Create(Self);
  FrmCaptura.Width := pnl_agregar.Width + 6;
  FrmCaptura.Height := pnl_agregar.Height + Pnl_BotonesLinea.Height + 25;

  pnl_agregar.Parent := FrmCaptura;
  Pnl_BotonesLinea.Parent := FrmCaptura;

  pnl_agregar.Visible := True;
  Pnl_BotonesLinea.Visible := True;

  pnl_agregar.Align := alClient;
  Pnl_BotonesLinea.Align := alBottom;
  FrmCaptura.BorderStyle := bsSingle;
  FrmCaptura.Position := poMainFormCenter;
  pnl_agregar.TabOrder := 0;
end;

procedure TFrmInasistencia.finicioChange(Sender: TObject);
begin
  dias.Text:=inttostr(trunc((ftermino.Date)-(finicio.Date)));
end;

procedure TFrmInasistencia.FormCreate(Sender: TObject);
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      if Not CrearConjunto(cdInasistencia, 'nom_inasistencia', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Inasistencia']);

      if Not CrearConjunto(cdPersonal, 'nuc_personal', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Personal']);

      if Not CrearConjunto(cdTipo, 'nom_tipoinasistencia', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Tabla de Tipos de inasistencias']);

      cdPersonal.Open;
      cdTipo.Open;
      cdinasistencia.Open;

      cbPersonal.Items.Clear;
      while Not cdPersonal.Eof do
      begin
        cbPersonal.Items.Add(cdPersonal.FieldByName('idpersonal').AsString);
        cdPersonal.Next;
      end;

      cbTipo.Items.Clear;
      while Not cdTipo.Eof do
      begin
        cbTipo.Items.Add(cdTipo.FieldByName('IdTipoInasistencia').AsString);
        cdTipo.Next;
      end;

  Finally
      Screen.Cursor := Cursor;
  End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.handle, WM_CLOSE, 0, 0);
    end;
  End;

end;

procedure TFrmInasistencia.fterminoChange(Sender: TObject);
begin
  dias.Text:=inttostr(trunc((ftermino.Date)-(finicio.Date)));
end;

end.
