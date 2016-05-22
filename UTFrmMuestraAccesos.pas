unit UTFrmMuestraAccesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxGrid, NxColumns, NxColumnClasses, StdCtrls, Buttons, ExtCtrls,
  AdvShapeButton;

type
  TFrmMuestraAccesos = class(TForm)
    dsNiveles: TDataSource;
    cdNiveles: TClientDataSet;
    cdOrganizacion: TClientDataSet;
    DsOrganizacion: TDataSource;
    Panel1: TPanel;
    PanelBarraLugar: TPanel;
    GridAccesos: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    BtnCancel: TAdvShapeButton;
    BtnSelect: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure GridAccesosCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure BtnSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    Cancelado: Boolean;
    AccesoSeleccionado: Integer;
    { Public declarations }
  end;

var
  FrmMuestraAccesos: TFrmMuestraAccesos;

implementation

uses ClientModuleunit1;

{$R *.dfm}

procedure TFrmMuestraAccesos.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMuestraAccesos.BtnSelectClick(Sender: TObject);
begin
  Cancelado := False;
  Close;
end;

procedure TFrmMuestraAccesos.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);
  Cancelado := True;
end;

procedure TFrmMuestraAccesos.GridAccesosCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  AccesoSeleccionado := GridAccesos.Cell[0,ARow].AsInteger;
end;

end.
