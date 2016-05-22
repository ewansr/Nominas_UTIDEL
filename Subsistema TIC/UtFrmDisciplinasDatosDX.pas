unit UtFrmDisciplinasDatosDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, pngimage, ExtCtrls, AdvShapeButton,
  DBClient, UInteliDialog;

type
  TFrmDisciplinasDatosDX = class(TForm)
    PanelBarraLugar: TPanel;
    BtnRec: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    PanelDatosLugares: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image2: TImage;
    Image1: TImage;
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    DBMemoComentarios: TDBMemo;
    dsDatos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
    Resultado: Integer;
  public
    { Public declarations }
  end;

var
  FrmDisciplinasDatosDX: TFrmDisciplinasDatosDX;

implementation
  uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmDisciplinasDatosDX.BtnCancelClick(Sender: TObject);
begin
  dsDatos.DataSet.Cancel;
  Close;
end;

procedure TFrmDisciplinasDatosDX.BtnRecClick(Sender: TObject);
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

procedure TFrmDisciplinasDatosDX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmDisciplinasDatosDX.FormCreate(Sender: TObject);
begin
   ClientModule1.ComponentColor(Self);
end;

procedure TFrmDisciplinasDatosDX.FormShow(Sender: TObject);
begin
    Resultado := mrCancel;
end;

end.
