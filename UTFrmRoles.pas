unit UTFrmRoles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Buttons, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, JvExControls, JvLabel, pngimage, ExtCtrls,
  PngSpeedButton,  UTFrmDatosRoles, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, AdvShapeButton, AdvEdit, JvComponentBase, JvEnterTab,
  JvMemoryDataset, ComCtrls, Spin, AdvProgressBar, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons, cxGroupBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TFrmRoles = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    FrxRoles: TfrxDBDataset;
    frxReporteRoles: TfrxReport;
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    btnPermisos: TAdvShapeButton;
    PanelPermisos: TPanel;
    frxOrganizacion: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure EditFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure btnPermisosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure Filtrar;
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    { Private declarations }
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmRoles: TFrmRoles;

implementation

uses ClientModuleUnit1, unit2, UInteliDialog, UTFrmPermisosRol2, xDatabase;

{$R *.dfm}

{ TFrmRoles }

procedure TFrmRoles.btnPermisosClick(Sender: TObject);
var
  frmPermisos: TFrmPermisosRol;
begin
  try
    if not ClientModule1.LeePermisos(ModuloPantalla,'PERMISOS') then
      Exit;

    if not cdDatos.eof then
    begin
      if AnsiCompareText(cdDatos.FieldByName('codigorol').AsString, 'admin') = 0 then
        Raise Exception.Create('Es un elemento preestablecido por el sistema.')
      else
      begin
        frmPermisos := TFrmPermisosRol.Create(nil);
        frmPermisos.Rol := GetCurrentRecord(cdDatos);
        frmPermisos.ShowModal;
        frmPermisos.Free;
      end;
    end
    else
      InteliDialog.ShowModal('Nada seleccionado','Seleccione un registro valido.',mtError,[mbOK],0);
  except
    on e:exception do
      InteliDialog.ShowModal('No se pueden cambiar los permisos.',e.message, mtInformation, [mbOk], 0);
  end;
end;
    
procedure TFrmRoles.BtnDeleteClick(Sender: TObject);
begin
  try
    if AnsiCompareText(cdDatos.FieldByName('codigorol').AsString, 'admin') = 0 then
      Raise Exception.Create('Es un elemento preestablecido por el sistema.');
    inherited;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede eliminar.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmRoles.BtnEditClick(Sender: TObject);
begin
  try
    if AnsiCompareText(cdDatos.FieldByName('codigorol').AsString, 'admin') = 0 then
      Raise Exception.Create('Es un elemento preestablecido por el sistema.');
    inherited;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede editar.',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmRoles.BtnPrintClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
    
      Reporte := 'Roles.fr3';
      CompReporte := FrxReporteRoles;
      CompDataSetReporte := FrxRoles;

      inherited;
    finally
      screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;

  end;
{
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      ClientModule1.ImprimeReporte('Roles.fr3',FrxReporteRoles);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
    end;
  End;
}
end;

procedure TFrmRoles.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

function TFrmRoles.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosRoles.Create(Self);
end;

procedure TFrmRoles.EditFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmRoles.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigorol', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulorol', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmRoles.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'ROLES';
  inherited;
end;

procedure TFrmRoles.FormShow(Sender: TObject);
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

procedure TFrmRoles.inicializar;
begin
  keyField := 'idrol';
  entityName := 'nuc_rol';
  codeField := 'codigorol';
end;

end.
