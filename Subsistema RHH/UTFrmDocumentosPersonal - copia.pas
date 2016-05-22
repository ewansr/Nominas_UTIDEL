unit UTFrmDocumentosPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  UTFrmDatosCatalogo, frxClass, frxDBSet, UInteliDialog, AdvEdit;

type
  TFrmDocumentosPersonal = class(TFrmCatalogo)
    frxReporteDocPersonal: TfrxReport;
    frxDocPersonal: TfrxDBDataset;
    edtFNombre: TAdvEdit;
    Edtfcodigo: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    { Private declarations }
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure Filtrar;
    procedure inicializar;
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmDocumentosPersonal: TFrmDocumentosPersonal;

implementation

uses UTFrmDatosDocumentosPersonal,ClientModuleUnit1;
{$R *.dfm}

{ TFrmDocumentosPersonal }

procedure TFrmDocumentosPersonal.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('´DocPersonal.fr3',frxReporteDocPersonal);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmDocumentosPersonal.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmDocumentosPersonal.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmdatosdocumentospersonal.Create(Self);
end;

procedure TFrmDocumentosPersonal.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  if Trim(edtFNombre.Text) <> '' then
    Parametros.Add('nombredocumentopersonal', '%'+Trim(edtfnombre.Text) + '%');

  if Trim(Edtfcodigo.Text) <> '' then
    Parametros.Add('codigodocumentopersonal', '%'+Trim(Edtfcodigo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);

  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmDocumentosPersonal.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'DocumentosPersonal';
  inherited;
end;

procedure TFrmDocumentosPersonal.FormShow(Sender: TObject);
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

procedure TFrmDocumentosPersonal.inicializar;
begin
  keyField := 'iddocumentopersonal';
  entityName := 'rhh_documentospersonal';
  codeField := 'nombredocumento';
end;

end.
