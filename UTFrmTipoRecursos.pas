unit UTFrmTipoRecursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, Spin,
  AdvProgressBar, ComCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls, UTFrmDatosCatalogo, UTFrmDatosTipoRecursos;

type
  TFrmTipoRecursos = class(TFrmCatalogo)
    procedure Inicializar;
    procedure FormShow(Sender: TObject);
  protected
    function createPopUp: TFrmDatosCatalogo; Override;
  private
    { Private declarations }
  public
    ModoSeleccion: Boolean;
  end;

var
  FrmTipoRecursos: TFrmTipoRecursos;

implementation

{$R *.dfm}

function TFrmTipoRecursos.CreatePopup: TFrmDatosCatalogo;
begin
  result := TFrmDatosTipoRecursos.Create(Self);
end;

procedure TFrmTipoRecursos.Inicializar;
begin
  keyField := 'IdTipoRecurso';
  entityName := 'nuc_tiporecurso';
  codeField := 'Codigo';
end;

procedure TFrmTipoRecursos.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    Inicializar;
    Abrir;
  Except
    ;
  End;
end;

end.
