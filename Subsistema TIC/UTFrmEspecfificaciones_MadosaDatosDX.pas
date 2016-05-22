unit UTFrmEspecfificaciones_MadosaDatosDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, ExtCtrls, StdCtrls, JvExControls, JvLabel, DB,
  DBCtrls, Mask, DBClient, UInteliDialog;

type
  TFrmEspecificaciones_MadosaDatosDX = class(TForm)
    Panel1: TPanel;
    BtnRec: TAdvShapeButton;
    BtnAddNew: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    Panel2: TPanel;
    Panel3: TPanel;
    JvLabel1: TJvLabel;
    Edit1: TEdit;
    JvLabel2: TJvLabel;
    dsDatos: TDataSource;
    EditCodigo: TDBEdit;
    EditTitulo: TDBEdit;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    MemoDescripcion: TDBMemo;
    MemoComentarios: TDBMemo;
    procedure BtnRecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    Resultado: Integer;
  public
    { Public declarations }
  end;

var
  FrmEspecificaciones_MadosaDatosDX: TFrmEspecificaciones_MadosaDatosDX;

implementation

{$R *.dfm}

procedure TFrmEspecificaciones_MadosaDatosDX.BtnCancelClick(Sender: TObject);
begin
  dsDatos.DataSet.Cancel;
  Close;
end;

procedure TFrmEspecificaciones_MadosaDatosDX.BtnRecClick(Sender: TObject);
begin
  // Grabar los datos
  Try
    dsDatos.DataSet.Post;
    TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);
    Resultado := mrOk;
    Close;
  Except
    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmEspecificaciones_MadosaDatosDX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmEspecificaciones_MadosaDatosDX.FormShow(Sender: TObject);
begin
  Resultado := mrCancel;
end;

end.
