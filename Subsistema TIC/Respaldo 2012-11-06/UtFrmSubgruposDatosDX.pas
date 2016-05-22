unit UtFrmSubgruposDatosDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, JvExControls, JvLabel, pngimage,
  ExtCtrls, AdvShapeButton, DB, DBClient, UInteliDialog;

type
  TFrmSubgruposDatosDX = class(TForm)
    PanelBarraLugar: TPanel;
    BtnRec: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    PanelDatosLugares: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label6: TLabel;
    Image3: TImage;
    Image4: TImage;
    JvLabel1: TJvLabel;
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    DBMemoComentarios: TDBMemo;
    EditCodigoGrupo: TEdit;
    EditTituloGrupo: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    edtCodigoManttoPrev: TEdit;
    btnManttoPrev: TBitBtn;
    edtTituloManttoPrev: TEdit;
    DBESubcodigo: TDBEdit;
    dsDatos: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
    Resultado: Integer;
  public
    { Public declarations }
  end;

var
  FrmSubgruposDatosDX: TFrmSubgruposDatosDX;

implementation
  uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSubgruposDatosDX.BtnCancelClick(Sender: TObject);
begin
  dsDatos.DataSet.Cancel;
  Close;
end;

procedure TFrmSubgruposDatosDX.BtnRecClick(Sender: TObject);
begin
  // Grabar los datos
  Try
    if Length(trim(DBEditCodigo.text)) < 3 then
    begin
      DBEditCodigo.SetFocus;
      raise InteligentWarning.Create('Ingrese un código con mas de 3 dígitos');
    end;
    if Length(trim(DBEditTitulo.text)) = 0 then
    begin
      DBEditTitulo.SetFocus;
      raise InteligentWarning.Create('Ingrese un título');
    end;
    dsDatos.DataSet.Post;
    TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);
    Resultado := mrOk;
    Close;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha podido guardar','Por el siguiente motivo: '+ e.Message, mtInformation, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Puede que necesite actualizar su ventana ó Informe de lo siguiente al administrador del sistema:' + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmSubgruposDatosDX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmSubgruposDatosDX.FormCreate(Sender: TObject);
begin
   ClientModule1.ComponentColor(Self);
end;

procedure TFrmSubgruposDatosDX.FormShow(Sender: TObject);
begin
  Resultado := mrCancel;
end;

end.
