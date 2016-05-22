unit UTFrmEstadoModificacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, StdCtrls, Mask,
  DBCtrls, JvExControls, JvLabel, AdvShapeButton, ExtCtrls, DBClient, ClientModuleUnit1,
  UInteliDialog, JvDBImage, ExtDlgs, AdvGlowButton, JvBaseEdits, ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel, IWDBStdCtrls;

type
  TFrmEstadoModificacion = class(TForm)
    dsSalario: TDataSource;
    Panel1: TPanel;
    Btn_Guardar: TAdvShapeButton;
    Btn_Cancelar: TAdvShapeButton;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cdEstadoModificacion: TClientDataSet;
    dsEstadoModificacion: TDataSource;
    OpenDialog1: TOpenDialog;
    dtAplicacion: TJvDBDateTimePicker;
    edSalario: TJvDBCalcEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    Picture: TJvDBImage;
    cdConsultaModificacion: TClientDataSet;
    dsConsultaModificacion: TDataSource;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Button1: TButton;
    dsModificacion: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_GuardarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  imagen : string;
  Resultado: TModalResult;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmEstadoModificacion: TFrmEstadoModificacion;

implementation



{$R *.dfm}


procedure TFrmEstadoModificacion.Btn_CancelarClick(Sender: TObject);
begin
  if cdEstadoModificacion.State in [dsInsert, dsEdit] then
    cdEstadoModificacion.Cancel;

  if EnTransaccion then
    CancelarTransaccion;

  Resultado := mrCancel;
  Close;
end;

procedure TFrmEstadoModificacion.Btn_GuardarClick(Sender: TObject);
var
  OldCursor: TCursor;
begin


  Try
    if length(trim(imagen))=0 then
      raise InteligentException.Create('No se puede guardar lso cambios ya que debe adjuntar el documento escaneado');
    if InteliDialog.ShowModal('Autorizar', 'Confirmación de Autorización  de Salario:'+ #10 +#10 + 'Está a punto de Autorizar el Salario  [' +  dsSalario.DataSet.FieldByName('TituloSalario').AsString + '], este procedimiento Modificara  el salario: ' + #10 +
                            '¿Está seguro de Autorizar este Salario en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdEstadoModificacion.FieldByName('Estado').AsString := 'Autorizada';
      cdEstadoModificacion.Post;
      cdEstadoModificacion.ApplyUpdates(-1);

      if EnTransaccion then
        ConcretarTransaccion;

      Resultado := mrOk;
      Close;
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

      if Not (cdEstadoModificacion.State in [dsInsert, dsEdit]) then
        Btn_Cancelar.Click;
    end;
  End;
End;

procedure TFrmEstadoModificacion.Button1Click(Sender: TObject);
begin
if opendialog1.Execute then
  begin
    Picture.Picture.LoadFromFile(opendialog1.FileName);
    imagen:= opendialog1.FileName;
  end;
end;

procedure TFrmEstadoModificacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdEstadoModificacion.State in [dsInsert, dsEdit] then
    cdEstadoModificacion.Cancel;

    if cdConsultaModificacion.State in [dsInsert, dsEdit] then
    cdConsultaModificacion.Cancel;

  if EnTransaccion then
    CancelarTransaccion;

  EliminarConjunto([cdEstadoModificacion, cdConsultaModificacion]);

  ModalResult := Resultado;
  Action := caFree;
end;

procedure TFrmEstadoModificacion.FormCreate(Sender: TObject);
begin
  IniciarTransaccion;
  Resultado := mrAbort;
end;

procedure TFrmEstadoModificacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    27: Btn_Cancelar.Click;
    116: begin
      if cdEstadoModificacion.State in [dsInsert, dsEdit] then
        cdEstadoModificacion.Cancel;
      cdEstadoModificacion.Refresh;
    end;
  end;
end;

procedure TFrmEstadoModificacion.FormShow(Sender: TObject);
var
  oldcursor:Tcursor;
begin
  try
    try
      oldcursor:=Screen.Cursor;
      Screen.Cursor:=crAppStart;

      if Not CrearConjunto(cdConsultaModificacion, 'rhu_modificacionSalario', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Estado de Modificacioón de Salarios']);
      if Not CargarDatosFiltrados(cdEstadoModificacion, 'IdSalario', [dsSalario.DataSet.FieldByName('idsalario').AsInteger])then
        raise InteligentException.CreateByCode(19, ['Estado de Modificacioón de Salarios']);
        cdConsultaModificacion.Open;

      if Not CrearConjunto(cdEstadoModificacion, 'rhu_modificacionSalario', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Modificación de Salarios']);
      if Not CargarDatosFiltrados(cdEstadoModificacion, 'IdSalario', [dsModificacion.DataSet.FieldByName('IdSalarioPendiente').AsInteger]) then
        raise InteligentException.CreateByCode(19, ['Modificación de Salarios']);
      cdEstadoModificacion.Open;
      if cdEstadoModificacion.RecordCount <> 1 then
        raise InteligentException.CreateByCode(13, [dsModificacion.DataSet.FieldByName('CodigoSalario').AsString, 'Modificación de Salarios']);
      cdEstadoModificacion.Edit;

    finally
      Screen.Cursor := oldcursor;
    End;

  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
