unit UTFrmUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Buttons, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, JvExControls, JvLabel, pngimage, ExtCtrls,
  PngSpeedButton, UTFrmDatosUsuarios, UTFrmDatosCatalogo, NxDBColumns, NxColumns,
  frxClass, frxDBSet, AdvShapeButton, UinteliDialog, AdvEdit, JvMemoryDataset,
  ComCtrls, Mask, DBCtrls, JvDBImage, Spin, AdvProgressBar, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons,
  cxGroupBox;

type
  TFrmUsuarios = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    FrxUsuarios: TfrxDBDataset;
    frxReporteUsuarios: TfrxReport;
    edtFNombre: TAdvEdit;
    edtFUsuario: TAdvEdit;
    edtFRol: TAdvEdit;
    edtFDepartamento: TAdvEdit;
    edtFCargo: TAdvEdit;
    cdImagenPrev: TClientDataSet;
    dsimagen: TDataSource;
    mdImagenPrev: TJvMemoryData;
    mdImagenPrevimagen: TBlobField;
    mdImagenPrevidpersonal: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure EditFUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure edtFCargoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cdDatosAfterScroll(DataSet: TDataSet);
  private
    //se declara el panel
    FExSplitter: TSplitter;
    //componentes en barra
    code,tittle: TDBEdit;
    ima: tjvdbimage;
    lbcode,lbtittle: tlabel;

    procedure Filtrar;
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure MostrarImagenClick;
    procedure MostrarImagen(Refresh: Boolean = false);
    { Private declarations }
  protected
    procedure InitForm; Override;
  public
    ModoSeleccion: Boolean;
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

uses ClientModuleUnit1, unit2;

{$R *.dfm}

{ TFrmUsuarios }

procedure TFrmUsuarios.BtnDeleteClick(Sender: TObject);
begin
  try
    if AnsiLowerCase(cdDatos.FieldByName('usuario').AsString) = 'admin' then
      raise Exception.Create('Porque el usuario es el Administrador principal.');

    if (cdDatos.FieldByName('usuario').AsString = ClientModule1.cdUsuario.FieldByName('usuario').AsString) then
      raise Exception.Create('Porque el usuario esta en uso.');

    inherited;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede eliminar.',e.message, mtInformation, [mbOk], 0);
   end;
end;

procedure TFrmUsuarios.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Usuarios.fr3',FrxReporteUsuarios);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmUsuarios.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmUsuarios.cdDatosAfterScroll(DataSet: TDataSet);
begin
    begin
      Try
        FExBar.BeginUpdate;
        try
          FExBar.ExGroups.Items[0].items.Clear;
        except
          ;  // Extrañamente el Clear genera un error despues de eliminar todos los elementos
        end;
        FExBar.ExGroups.Items[0].AddMenuItem('Ver imágen', MostrarImagenClick, 'Ver vista previa de la imágen', 3);
        {if cddatos.FieldByName('idarticulo').asinteger <> cdImagenPrev.fieldbyname('idarticulo').AsInteger  then
        begin
          DataSource1.dataset := nil;
        end
        else}
        if mdImagenPrev.Locate('idpersonal', cdDatos.FieldByName('idpersonal').AsInteger,[]) then
        begin
          //DataSource1.dataset := mdImagenPrev;
          FExBar.ExGroups.Items[0].AddImage(mdImagenPrev.fieldbyname('imagen'));
          FExBar.ExGroups.Items[0].AddLine(cdDatos.fieldbyname('nombres').AsString, clBtnText, [fsBold], True);
        end;
      Finally
        FExBar.EndUpdate;
        FExBar.Repaint;
      End;
    end;
end;

function TFrmUsuarios.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosUsuarios.Create(Self);
end;

procedure TFrmUsuarios.EditFUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmUsuarios.edtFCargoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmUsuarios.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFRol.Text) <> '' then
    Parametros.Add('titulorol', Trim(edtFRol.Text) + '%');

  if Trim(edtFDepartamento.Text) <> '' then
    Parametros.Add('titulodepartamento', Trim(edtFDepartamento.Text) + '%');

  if Trim(edtFCargo.Text) <> '' then
    Parametros.Add('titulocargo', Trim(edtFCargo.Text) + '%');

  if Trim(edtFUsuario.Text) <> '' then
    Parametros.Add('usuario', Trim(edtFUsuario.Text) + '%');

  if Trim(edtFNombre.Text) <> '' then
    Parametros.Add('nombre', Trim(edtFNombre.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;
end;

procedure TFrmUsuarios.MostrarImagenClick;
begin
  if (cddatos.recordcount > 0) and (DBGridPrincipal.SelectedRow >= 0)  then
  begin
      // Buscar primero si ya lo tengo en el buffer
      if mdImagenPrev.Locate('idpersonal', cdDatos.FieldByName('idpersonal').AsInteger,[]) then
      begin
        if InteliDialog.ShowModal('Confirmación','Intentar recargar la imágen',
          '¿Desea usted volver a recargar la imagen desde la base de datos?',mtInformation,[mbYes,mbNo],0) = mrYes then
          MostrarImagen(true);
      end
      else
        MostrarImagen(true);
  end;
end;

Procedure TFrmUsuarios.MostrarImagen(Refresh: Boolean = false);
Var
  Existe: Boolean;
begin
  if (cddatos.recordcount > 0) and (DBGridPrincipal.SelectedRow >= 0)  then
  begin
    Try
      // Buscar primero si ya lo tengo en el buffer
      Existe := mdImagenPrev.Locate('idpersonal', cdDatos.FieldByName('idpersonal').AsInteger,[]);
      if Existe and Refresh then    // Si se pide recargar la imagen, borrarla del buffer
      begin
        mdImagenPrev.Delete;
        Existe := false;
      end;
      if not Existe then
      begin
        try
          CdImagenPrev.Close;
          EliminarConjunto(cdImagenPrev.ProviderName);
        finally
          ;
        end;
        CdImagenPrev.Close;
        CrearConjunto(CdImagenPrev, 'nuc_personal', ccUpdate);
        CargarDatosFiltrados(CdImagenPrev, 'idpersonal', [cdDatos.FieldByName('idpersonal').AsInteger]);
        CdImagenPrev.Open;
        if CdImagenPrev.RecordCount <> 1 then
         raise Exception.Create('Al localizar la imagen.')
        else
        begin
          mdImagenPrev.Append;
          mdImagenPrev.FieldByName('idpersonal').Assign(CdImagenPrev.FieldByName('idpersonal'));
          mdImagenPrev.FieldByName('imagen').Assign(CdImagenPrev.FieldByName('imagen'));
          mdImagenPrev.Post;
        end;
      end;
      cdDatosAfterScroll(cdDatos);
    Except
      on e:exception do
        InteliDialog.ShowModal('No se puede generar la vista previa.',e.message, mtInformation, [mbOk], 0);
    End;
  end;
end;

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'USUARIOS';
  inherited;
  FExBar.BeginUpdate;
  FExBar.ExGroups.Add('Imagen', True);
  FExBar.ExGroups.Items[0].AddMenuItem('Ver imágen', MostrarImagenClick, 'Ver vista previa de la imágen', 3);
  FExBar.EndUpdate;
  FExBar.Repaint;
end;

procedure TFrmUsuarios.FormShow(Sender: TObject);
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

procedure TFrmUsuarios.inicializar;
begin
  keyField := 'idusuario';
  entityName := 'nuc_usuario';
  codeField := 'usuario';
end;

procedure TFrmUsuarios.InitForm;
begin
  CrearBarraEx := true;
end;

end.
