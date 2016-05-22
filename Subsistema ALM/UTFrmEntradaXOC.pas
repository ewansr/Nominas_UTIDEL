unit UTFrmEntradaXOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, UTFrmCatalogoDoc, JvMemoryDataset, DB, DBClient,
  Menus, ComCtrls, StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, AdvOfficeButtons, AdvShapeButton, Buttons, PngSpeedButton,
  JvExControls, JvLabel, ExtCtrls, frxClass, frxExportPDF, Spin, AdvProgressBar,
  DBCtrls;

type
  TFrmEntradaXOC = class(TFrmCatalogoDoc)
  private
    { Private declarations }
  protected
    function createPopUpDetalle: TFrmDetalleDocs; override;
    procedure Inicializar; override;
  public
    { Public declarations }
  end;

var
  FrmEntradaXOC: TFrmEntradaXOC;

implementation

{$R *.dfm}


function TFrmEntradaXOC.createPopUpDetalle: TFrmDetalleDocs;
begin

end;

procedure TFrmEntradaXOC.Inicializar;
begin
  keyField := 'identrada';
  entityName := 'alm_entrada';
  codeField := 'serie';
end;

end.
