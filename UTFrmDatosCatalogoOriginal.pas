unit UTFrmDatosCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, UInteliDialog,
  AdvShapeButton, JvComponentBase, JvEnterTab;

type
  TFrmDatosCatalogo = class(TForm)
    PanelBarraLugar: TPanel;
    PanelDatosLugares: TPanel;
    dsDatos: TDataSource;
    BtnRec: TAdvShapeButton;
    BtnAddNew: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Cancelado: Boolean;
  public
    keyField: string;
    SoloVer: Boolean;
    { Public declarations }
  end;

var
  FrmDatosCatalogo: TFrmDatosCatalogo;

implementation

{$R *.dfm}

uses
  unit2, ClientModuleUnit1, StrUtils;


procedure TFrmDatosCatalogo.BtnAddNewClick(Sender: TObject);
begin
  Try
    DsDatos.DataSet.Post;
    TClientDataset(DsDatos.DataSet).ApplyUpdates(-1);
    Cancelado := False;
    DsDatos.DataSet.Append;
    DsDatos.DataSet.FieldByName(keyField).AsInteger := 0;
//    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  Except
    on e: Exception do
    begin
      if AnsiLeftStr(e.Message,31) = 'Remote error: -1 is not a valid' then
        InteliDialog.ShowModal('Error al guardar','El código ya existe, intente nuevamente', mtWarning, [mbOk], 0)
      else
        InteliDialog.ShowModal('Error al guardar',e.Message, mtWarning, [mbOk], 0);
    end;
  End;
  FocusFirstObject(PanelDatosLugares);
end;

procedure TFrmDatosCatalogo.BtnCancelClick(Sender: TObject);
begin
  Cancelado := True;
  close;
end;

procedure TFrmDatosCatalogo.BtnRecClick(Sender: TObject);
Var
  tDataSet: TClientDataSet;
  RespCursor: TCursor;
begin
  Try
    Try
      RespCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      tDataSet := TClientDataSet(DsDatos.DataSet);
      tDataSet.Post;
      tDataSet.ApplyUpdates(-1);
      ConcretarTransaccion;

      Cancelado := False;
      InteliDialog.ShowModal('INFORMACIÓN','La información se ha guardado correctamente','',
              mtInformation,[mbOK],0);
      Close;
    Except
      on e: Exception do
      begin
        if AnsiLeftStr(e.Message,31) = 'Remote error: -1 is not a valid' then
          InteliDialog.ShowModal('Error al guardar','El código ya existe, intente nuevamente', mtWarning, [mbOk], 0)
        else
          InteliDialog.ShowModal('Error al guardar',e.Message, mtWarning, [mbOk], 0);
      end;
    End;
  Finally
    Screen.Cursor := RespCursor;
    FocusFirstObject(PanelDatosLugares);
  End;
end;

procedure TFrmDatosCatalogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Cancelado = True then
    ModalResult := mrCancel
  else
    ModalResult := mrOk;
end;

procedure TFrmDatosCatalogo.FormCreate(Sender: TObject);
begin
  IniciarTransaccion;

  SoloVer := False;
end;

procedure TFrmDatosCatalogo.FormDestroy(Sender: TObject);
begin
  CancelarTransaccion;
end;

procedure TFrmDatosCatalogo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) and (Shift = []) then
    Close;

  if BtnCancel.Focused then
    BtnCancel.Click;

  if BtnRec.Focused then
    BtnRec.Click;
end;

procedure TFrmDatosCatalogo.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);
  Cancelado := True;
  if DsDatos.DataSet.State = DsEdit then
    BtnAddNew.Enabled := False;

  case DsDatos.DataSet.State of
    dsBrowse: begin
                // entro en modo lectura, indicarlo en el caption y poner todos los controles
                // usado a lo largo de las pantallas en un estado no editable
                self.Caption := self.Caption + ' - (SOLO LECTURA)';
                BtnRec.Enabled := False;
                BtnAddNew.Enabled := False;
                SetProperties(PanelDatosLugares,'AllComponents','readonly',1);
                SetProperties(PanelDatosLugares,'TBitBtn','enabled',0);
                SetProperties(PanelDatosLugares,'TButton','enabled',0);
                SetProperties(PanelDatosLugares,'TAdvComboBox','enabled',0);
                SetProperties(PanelDatosLugares,'TNxImagePathEdit','visible',0);
              end;
    dsEdit: Self.Caption := Self.Caption + ' - (EDICIÓN DE REGISTRO)';
    dsInsert: Self.Caption := Self.Caption + ' - (NUEVO REGISTRO)';
  end;

  // Centrar la pantalla
  self.Top := (form2.Height - self.Height) div 2;
  if form2.Panel2.Left = 0 then   // si el panel esta a la izquierda
    self.Left := (form2.Width - form2.Panel2.width - self.Width) div 2
  else // el panel esta a la derecha
    self.Left := (form2.Width - self.Width) div 2;

//  if (DsDatos.State = dsInsert) and Assigned(dsDatos.DataSet.FieldDefs.Find('activo')) then
//    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
