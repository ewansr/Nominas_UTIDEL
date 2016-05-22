unit UTFrmDatosDepartamentoDiag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvEdit, AdvShapeButton, StdCtrls, ExtCtrls;

type
  TFrmDatosDeptoDiag = class(TForm)
    pnlDatosLugares: TPanel;
    lbl1: TLabel;
    pnlBarraLugar: TPanel;
    btnBtnRec: TAdvShapeButton;
    btnBtnCancel: TAdvShapeButton;
    edtCodigo: TAdvEdit;
    edtTitulo: TAdvEdit;
    edtDescripcion: TAdvEdit;
    edtComentarios: TAdvEdit;
    lblDeptoPadre: TLabel;
    edtEtiqueta: TAdvEdit;
    procedure btnBtnRecClick(Sender: TObject);
    procedure btnBtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }

    FGuardar: Boolean;
  public
    { Public declarations }
    Resultado: integer;
    property Guardar: Boolean read FGuardar;
  end;

var
  FrmDatosDeptoDiag: TFrmDatosDeptoDiag;

implementation

{$R *.dfm}


procedure TFrmDatosDeptoDiag.btnBtnCancelClick(Sender: TObject);
begin
  FGuardar := False;
  close;
end;

procedure TFrmDatosDeptoDiag.btnBtnRecClick(Sender: TObject);
begin
  Resultado:=Mrok;
  FGuardar := true;
  Close;
end;

procedure TFrmDatosDeptoDiag.FormCreate(Sender: TObject);
begin
  Resultado:=mrCancel;
end;




end.
