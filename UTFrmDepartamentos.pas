unit UTFrmDepartamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls,UTFrmDatosDepartamento, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, AdvShapeButton, JvExControls, JvLabel, pngimage, UinteliDialog,
  AdvEdit, JvComponentBase, JvEnterTab, JvMemoryDataset, ComCtrls, Spin,
  AdvProgressBar;

type
  TFrmDepartamentos = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    frxReporteDepartamentos: TfrxReport;
    FrxDepartamentos: TfrxDBDataset;
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    procedure Filtrar;
    procedure EditFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
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
  FrmDepartamentos: TFrmDepartamentos;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

{ TFrmDepartamentos }

procedure TFrmDepartamentos.BtnDeleteClick(Sender: TObject);
begin
  try
    if ( cdDatos.FieldByName('codigodepartamento').AsString = 'ADMIN') or
       ( cdDatos.FieldByName('codigodepartamento').AsString = 'ALM') or
       ( cdDatos.FieldByName('codigodepartamento').AsString = 'COMP') then
      Raise Exception.Create('Es un elemento preestablecido por el sistema.');
    inherited;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede eliminar.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDepartamentos.BtnEditClick(Sender: TObject);
begin
  try
   // if InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + Cdvacaciones.FieldByName('Anios').asstring + ' : '+ Cdvacaciones.FieldByName('Dias').asstring +']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrYes then
    begin
      BorrarRegistro('nuc_departamento', [cdDatos.FieldByName('IdConcepto').AsInteger]);

    end;

    if ( cdDatos.FieldByName('codigodepartamento').AsString = 'ADMIN') or
       ( cdDatos.FieldByName('codigodepartamento').AsString = 'ALM') or
       ( cdDatos.FieldByName('codigodepartamento').AsString = 'COMP') then
      Raise Exception.Create('Es un elemento preestablecido por el sistema.');
    inherited;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede editar.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDepartamentos.BtnPrintClick(Sender: TObject);
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

     ClientModule1.ImprimeReporte('Departamentos.fr3',FrxReporteDepartamentos);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;

end;

procedure TFrmDepartamentos.BtnSearchClick(Sender: TObject);
begin
    Filtrar;
end;

function TFrmDepartamentos.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosDepartamento.Create(Self);
end;

procedure TFrmDepartamentos.EditFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmDepartamentos.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigodepartamento', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulodepartamento', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmDepartamentos.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'DEPARTAMENTOS';
  inherited;
end;

procedure TFrmDepartamentos.FormShow(Sender: TObject);
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

procedure TFrmDepartamentos.inicializar;
begin
  keyField := 'iddepartamento';
  entityName := 'nuc_departamento';
  codeField := 'codigodepartamento';
end;

end.
