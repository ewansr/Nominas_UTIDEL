unit UTFrmSeleccionSalMultiple;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, NxColumns, NxDBColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, AdvGlowButton, ExtCtrls, JvExControls, JvLabel;

type
  TFrmSeleccionSalMultiple = class(TForm)
    dsRangoSalarios: TDataSource;
    GridRango: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    Panel1: TPanel;
    Btn_Aceptar: TAdvGlowButton;
    Btn_Cancelar: TAdvGlowButton;
    Splitter1: TSplitter;
    Panel2: TPanel;
    GridSalario: TNextDBGrid;
    Panel3: TPanel;
    JvLabel1: TJvLabel;
    dsSalariosIndep: TDataSource;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    Panel4: TPanel;
    Panel5: TPanel;
    PnlSeleccionado: TPanel;
    nxdbtxtclmnAplicacion: TNxDBTextColumn;
    procedure FormCreate(Sender: TObject);
    procedure GridRangoEnter(Sender: TObject);
    procedure GridSalarioEnter(Sender: TObject);
    procedure GridRangoSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure GridSalarioSelectCell(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
  public
    Rango: Boolean;
  end;

var
  FrmSeleccionSalMultiple: TFrmSeleccionSalMultiple;

implementation
uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmSeleccionSalMultiple.FormCreate(Sender: TObject);
begin
  clientmodule1.componentcolor(Self);
  Rango := True;
end;

procedure TFrmSeleccionSalMultiple.GridRangoEnter(Sender: TObject);
begin
  Rango := True;
end;

procedure TFrmSeleccionSalMultiple.GridRangoSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
  PnlSeleccionado.Caption := 'Seleccionado Rangos de salario para: '+Gridrango.Cells[1,ARow];
end;

procedure TFrmSeleccionSalMultiple.GridSalarioEnter(Sender: TObject);
begin
  Rango := False;
end;

procedure TFrmSeleccionSalMultiple.GridSalarioSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
  PnlSeleccionado.Caption := 'Seleccionado Salario directo de: '+Gridsalario.Cells[1,ARow];
end;

end.
