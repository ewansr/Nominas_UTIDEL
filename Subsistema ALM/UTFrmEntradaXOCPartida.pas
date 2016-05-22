unit UTFrmEntradaXOCPartida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmPartidaDoc, DB, JvMemoryDataset, AdvShapeButton, ExtCtrls,
  StdCtrls,  Mask, DBCtrls, RxToolEdit, RxCurrEdit, RXDBCtrl, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, DBClient, JvExControls, JvLabel, JvBaseEdits, JvDBControls,
  AdvEdit;

type
  TFrmEntradaXOCPartida = class(TFrmPartidaDoc)
    edtCodigoUnidad: TDBEdit;
    edtCantidad: TJvDBCalcEdit;
    JvLabel2: TJvLabel;
    memObservaciones: TDBMemo;
    JvLabel4: TJvLabel;
    Panel2: TPanel;
    edtTituloArticulo: TDBEdit;
    edtTituloDisciplina: TDBEdit;
    edtcodigoarticulo: TDBEdit;
    edtPreciocantidad: TJvDBCalcEdit;
    lbl1: TJvLabel;
    edtCantidadOC: TAdvEdit;
    edtCantidadRec: TAdvEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtCantidadKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  protected
    function ValidaCampos: boolean; override;
    procedure LimpiarCampos; override;
    procedure InicializarCampos; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
  end;

var
  FrmEntradaXOCPartida: TFrmEntradaXOCPartida;

implementation

Uses
  ClientModuleUnit1, xDatabase, UTFrmArticulo2, UInteliDialog;

{$R *.dfm}


procedure TFrmEntradaXOCPartida.CargarCampos;
begin
  edtCantidadOC.FloatValue := mdDetalle.FieldByName('cantidadoc').AsFloat;
  edtCantidadRec.FloatValue := mdDetalle.FieldByName('cantidadoc').AsFloat - mdDetalle.FieldByName('cantpend').AsFloat;
end;

function TFrmEntradaXOCPartida.ValidaCampos: Boolean;
begin
  // validar que no se de entrada a más de lo indicado en la OC
  edtPrecioCantidad.SetFocus;
  edtCantidad.SetFocus;
  if mdDetalle.FieldByName('cantidad').AsFloat > mdDetalle.FieldByName('cantpend').AsFloat then
  begin
    InteliDialog.ShowModal('ERROR','Cantidad no valida.','La cantidad indicada sobrepasa la cantidad en la orden de compra.',
                mtError,[mbOK],0);
    Result := false;
  end
  else
    result := true;
end;

procedure TFrmEntradaXOCPartida.LimpiarCampos;
begin
  InicializarCampos;
end;

procedure TFrmEntradaXOCPartida.InicializarCampos;
begin
  mdDetalle.FieldByName('cantidad').AsFloat := 1.0;
end;

procedure TFrmEntradaXOCPartida.edtCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
       SelectNext(Sender as TWinControl,False,True)
    else
       SelectNext(Sender as TWinControl,True,True) ;
  end;
end;


procedure TFrmEntradaXOCPartida.FormCreate(Sender: TObject);
begin
  inherited;
  idDetailField := 'identradadetalle';
end;

end.
