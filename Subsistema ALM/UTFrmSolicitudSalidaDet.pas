unit UTFrmSolicitudSalidaDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmSalidaDetalle, JvMemoryDataset, DB, DBClient, StdCtrls,
  AdvCombo, DBCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, AdvSmoothTabPager, JvExControls,
  JvLabel, AdvShapeButton, Buttons, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls,
  UTFrmPartidaDoc;

type
  TFrmSolicitudSalidaDet = class(TFrmSalidaDetalle)
    cdSolDet: TClientDataSet;
    cdExistencia: TClientDataSet;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    function createPopUpPartida: TFrmPartidaDoc; override;
  public
    { Public declarations }
  end;

var
  FrmSolicitudSalidaDet: TFrmSolicitudSalidaDet;

implementation

uses
  UTFrmSalidaPartida;

{$R *.dfm}

function TFrmSolicitudSalidaDet.createPopUpPartida: TFrmPartidaDoc;
var
  tmpForm: TFrmSalidaPartida;
begin
  tmpForm := TFrmSalidaPartida.Create(self);
  tmpForm.mdDetalleOC := mdDetalleOC;
  tmpForm.mdDetalleOriginal := mdDetalleOriginal;
  tmpForm.IdAlmacen := dsDatos.DataSet.FieldByName('idalmacen').AsInteger;
  tmpForm.tituloAlmacen := cdAlmacen.FieldByName('tituloalmacen').AsString;
  tmpForm.ModoEncabezado := dsDatos.State;
  tmpForm.btnArticulo.Visible := False;
  tmpForm.edtCodigoArticulo.Visible := False;
  tmpForm.JvLabel1.Top := tmpForm.Panel2.Top + tmpForm.edtTituloArticulo.Top;
  Result := tmpForm;
end;

procedure TFrmSolicitudSalidaDet.FormShow(Sender: TObject);
begin
  inherited;

  cdSolDet.First;
  while not cdSolDet.eof do
  begin
    if cdExistencia.Locate('idarticulo',cdSolDet.FieldByName('idarticulo').AsInteger,[]) then
    begin
      mdDetalle.Append;
      mdDetalle.CopyFields(cdSolDet);
      mdDetalle.FieldByName('idsalida').AsInteger := 0;
      mdDetalle.FieldByName('idsalidadetalle').AsInteger := 0;
      mdDetalle.FieldByName('cantidad').AsFloat := 0;
      mdDetalle.Post;
    end;

    cdSolDet.Next;
  end;

end;

end.
