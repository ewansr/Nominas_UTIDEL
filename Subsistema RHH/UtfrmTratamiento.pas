unit UtfrmTratamiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
   UTFrmDatosCatalogo, UTFrmDatosTratamiento,UInteliDialog, NxColumns,
  NxDBColumns, AdvEdit;

type
  TFrmTratamiento = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    edtFTratamiento: TAdvEdit;
    edtFAbreviatura: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtFTratamientoKeyPress(Sender: TObject; var Key: Char);
    procedure edtFAbreviaturaKeyPress(Sender: TObject; var Key: Char);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    ModoSeleccion: Boolean;
  end;

var
  FrmTratamiento: TFrmTratamiento;

implementation

uses ClientModuleUnit1,Unit2;
{$R *.dfm}

{ TFrmTratamiento }

procedure TFrmTratamiento.BtnPrintClick(Sender: TObject);
begin
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

    {ClientModule1.ImprimeReporte('Ciudades.fr3',FrxReporteCiudades);  }
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmTratamiento.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmTratamiento.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosTratamiento.Create(Self);
end;

procedure TFrmTratamiento.edtFAbreviaturaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
   filtrar;
end;

procedure TFrmTratamiento.edtFTratamientoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
   filtrar;
end;

procedure TFrmTratamiento.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  if Trim(edtFTratamiento.Text) <> '' then
    Parametros.Add('tratamiento', '%' +Trim(edtFTratamiento.Text) + '%');

  if Trim(edtFAbreviatura.Text) <> '' then
    Parametros.Add('abreviatura', '%' +Trim(edtFAbreviatura.Text) + '%');


  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmTratamiento.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TRATAMIENTO';
  inherited;

end;

procedure TFrmTratamiento.FormShow(Sender: TObject);
begin
  Try
    inherited;
    if ModoSeleccion = True then
      BtnSelect.Visible := True;
    inicializar;
    abrir;
  Except
    ;
  End;
end;

procedure TFrmTratamiento.inicializar;
begin
  keyField := 'idtratamiento';
  entityName := 'rhu_tratamiento';
  codeField := 'tratamiento';
end;

end.
