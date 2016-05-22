unit UTFrmConfFirmantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, AdvShapeButton, StdCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, Buttons, PngSpeedButton, UTFrmDatosConfFirmante, UTFrmDatosCatalogo,
  NxColumns, NxDBColumns, frxClass, frxDBSet, AdvEdit, JvMemoryDataset, ComCtrls;

type
  TFrmConfFirmantes = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    frxReporteCnfFirmantes: TfrxReport;
    FrxCnfFirmantes: TfrxDBDataset;
    edtFCargo: TAdvEdit;
    edtFOrganizacion: TAdvEdit;
    edtFDocumento: TAdvEdit;
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditFOrganizacionKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmConfFirmantes: TFrmConfFirmantes;

implementation

Uses ClientModuleUnit1,Unit2, UInteliDialog;
{$R *.dfm}

procedure TFrmConfFirmantes.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('CnfFirmantes.fr3',FrxReporteCnfFirmantes);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmConfFirmantes.BtnSearchClick(Sender: TObject);
begin
  filtrar;
end;

function TFrmConfFirmantes.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosConfFirmante.Create(Self);
end;

procedure TFrmConfFirmantes.EditFOrganizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmConfFirmantes.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFOrganizacion.Text) <> '' then
    Parametros.Add('codigoorganizacion', Trim(edtFOrganizacion.Text) + '%');

  if Trim(edtFDocumento.Text) <> '' then
    Parametros.Add('nombredocumento', Trim(edtFDocumento.Text) + '%');

  if Trim(edtFCargo.Text) <> '' then
    Parametros.Add('titulocargo', Trim(edtFCargo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmConfFirmantes.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'CONFIGFIRMANTES';
  inherited;
end;

procedure TFrmConfFirmantes.FormShow(Sender: TObject);
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

procedure TFrmConfFirmantes.inicializar;
begin
  keyField := 'idconfiguracionfirmante';
  entityName := 'nuc_configuracionfirmante';
  codeField := 'idconfiguracionfirmante';
end;

end.
