unit UTFrmTipoTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, UTFrmDatosTipoTransporte, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, AdvShapeButton, JvExControls, JvLabel, pngimage, UinteliDialog,
  AdvEdit, JvMemoryDataset, ComCtrls;

type
  TFrmTipoTransporte = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    frxReporteTipoTransportes: TfrxReport;
    FrxTipoTransportes: TfrxDBDataset;
    editFcodigos: TAdvEdit;
    editFTitulos: TAdvEdit;
    procedure BtnSearchClick(Sender: TObject);
    procedure Filtrar;
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure editFcodigosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmTipoTransporte: TFrmTipoTransporte;

implementation

{$R *.dfm}

uses ClientModuleUnit1,Unit2;

procedure TFrmTipoTransporte.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('TipoTransportes.fr3',FrxReporteTipoTransportes);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;

end;

procedure TFrmTipoTransporte.BtnSearchClick(Sender: TObject);
begin
    Filtrar;
end;

function TFrmTipoTransporte.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosTipoTransporte.Create(Self);
end;

procedure TFrmTipoTransporte.editFcodigosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmTipoTransporte.Filtrar;
var
  FCodigo, FTitulo: String;
begin
  FCodigo:= '-1';
  FTitulo := '-1';
  if (Length(Trim(EditFCodigos.Text)) > 0) then
    FCodigo := EditFCodigos.Text;
  if (Length(Trim(EditFTitulos.Text)) > 0)  then
    FTitulo := EditFTitulos.Text;
  CargarDatosFiltrados(cdDatos, 'codigotipotransporte, titulotipotransporte, activo', [EditFCodigos.text + '%',EditFTitulos.text + '%','si']);
  cdDatos.Refresh;
end;

procedure TFrmTipoTransporte.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TIPOSTRANSPORTES';
  inherited;
end;

procedure TFrmTipoTransporte.FormShow(Sender: TObject);
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

procedure TFrmTipoTransporte.inicializar;
begin
  keyField := 'idtipotransporte';
  entityName := 'alm_tipotransporte';
  codeField := 'codigotipotransporte';
end;

end.
