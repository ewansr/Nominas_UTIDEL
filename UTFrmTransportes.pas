unit UTFrmTransportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, PngSpeedButton,
  ExtCtrls, frxClass, frxDBSet, UTFrmDatosTransportes, UTFrmDatosCatalogo,
  NxDBColumns, NxColumns, AdvShapeButton, JvExControls, JvLabel, pngimage, UinteliDialog,
  AdvEdit, Mask, DBCtrls, JvMemoryDataset, ComCtrls, JvDBImage;

type
  TFrmTransportes = class(TFrmCatalogo)
    FrxTransportes: TfrxDBDataset;
    frxReporteTransportes: TfrxReport;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    edtFTipo: TAdvEdit;
    DataSource1: TDataSource;
    cdImagenPrev: TClientDataSet;
    mdImagenPrev: TJvMemoryData;
    mdImagenPrevidtransporte: TIntegerField;
    mdImagenPrevimagen: TBlobField;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdDatosAfterScroll(DataSet: TDataSet);
  private
    //se declara el panel
    FExSplitter: TSplitter;
    //componentes en barra
    code,tittle: TDBEdit;
    ima: tjvdbimage;
    lbcode,lbtittle: tlabel;

    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure BtnSelectClick(Sender: TObject);
    procedure Filtrar;
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
  FrmTransportes: TFrmTransportes;

implementation

uses ClientModuleUnit1,Unit2;

{$R *.dfm}

procedure TFrmTransportes.BtnSelectClick(Sender: TObject);
begin
  inherited;
end;

procedure TFrmTransportes.cdDatosAfterScroll(DataSet: TDataSet);
begin
  //if (cdImagenPrev.State = dsBrowse) then
    //if (cdImagenPrev.recordcount = 1) then

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
        if mdImagenPrev.Locate('idtransporte', cdDatos.FieldByName('idtransporte').AsInteger,[]) then
        begin
          //DataSource1.dataset := mdImagenPrev;
          FExBar.ExGroups.Items[0].AddImage(mdImagenPrev.fieldbyname('imagen'));
          FExBar.ExGroups.Items[0].AddLine(cdDatos.fieldbyname('titulotransporte').AsString, clBtnText, [fsBold], True);
        end;
      Finally
        FExBar.EndUpdate;
        FExBar.Repaint;
      End;
    end;
end;

function TFrmTransportes.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosTransportes.Create(Self);
end;

procedure TFrmTransportes.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmTransportes.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Transportes.fr3',FrxReporteTransportes);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;

end;

procedure TFrmTransportes.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmTransportes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    try
      CdImagenPrev.Close;
      EliminarConjunto(cdImagenPrev.ProviderName);
    finally

    end;
  inherited;

end;

procedure TFrmTransportes.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'TRANSPORTES';
  inherited;
  FExBar.BeginUpdate;
  FExBar.ExGroups.Add('Imagen', True);
  FExBar.ExGroups.Items[0].AddMenuItem('Ver imágen', MostrarImagenClick, 'Ver vista previa de la imágen', 3);
  FExBar.EndUpdate;
  FExBar.Repaint;
end;

procedure TFrmTransportes.MostrarImagenClick;
begin
  if (cddatos.recordcount > 0) and (DBGridPrincipal.SelectedRow >= 0)  then
  begin
      // Buscar primero si ya lo tengo en el buffer
      if mdImagenPrev.Locate('idtransporte', cdDatos.FieldByName('idtransporte').AsInteger,[]) then
      begin
        if InteliDialog.ShowModal('Confirmación','Intentar recargar la imágen',
          '¿Desea usted volver a recargar la imagen desde la base de datos?',mtInformation,[mbYes,mbNo],0) = mrYes then
          MostrarImagen(true);
      end
      else
        MostrarImagen(true);
  end;
end;

Procedure TFrmTransportes.MostrarImagen(Refresh: Boolean = false);
Var
  Existe: Boolean;
begin
  if (cddatos.recordcount > 0) and (DBGridPrincipal.SelectedRow >= 0)  then
  begin
    Try
      // Buscar primero si ya lo tengo en el buffer
      Existe := mdImagenPrev.Locate('idtransporte', cdDatos.FieldByName('idtransporte').AsInteger,[]);
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
        CrearConjunto(CdImagenPrev, 'alm_transporte', ccUpdate);
        CargarDatosFiltrados(CdImagenPrev, 'idtransporte', [cdDatos.FieldByName('idtransporte').AsInteger]);
        CdImagenPrev.Open;
        if CdImagenPrev.RecordCount <> 1 then
         raise Exception.Create('Al localizar la imagen.')
        else
        begin
          mdImagenPrev.Append;
          mdImagenPrev.FieldByName('idtransporte').Assign(CdImagenPrev.FieldByName('idtransporte'));
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

procedure TFrmTransportes.FormShow(Sender: TObject);
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

procedure TFrmTransportes.inicializar;
begin
  keyField := 'idtransporte';
  entityName := 'alm_transporte';
  codeField := 'codigotransporte';
end;

procedure TFrmTransportes.InitForm;
begin
  CrearBarraEx := true;
end;

procedure TFrmTransportes.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  inherited;
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtFTipo.Text) <> '' then
    Parametros.Add('titulotipotransporte', Trim(edtFTipo.Text) + '%');

  if Trim(edtFCodigo.Text) <> '' then
    Parametros.Add('codigotransporte', Trim(edtFCodigo.Text) + '%');

  if Trim(edtFTitulo.Text) <> '' then
    Parametros.Add('titulotransporte', Trim(edtFTitulo.Text) + '%');

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;

end;
end.
