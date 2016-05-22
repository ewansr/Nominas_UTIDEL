unit UTFrmArticulo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,  NxDBGrid,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, PngSpeedButton, ExtCtrls,
  UTFrmDatosCatalogo, UTFrmDatosArticulo, NxColumns, NxDBColumns, frxClass,
  frxDBSet, AdvShapeButton, JvExControls, JvLabel, pngimage, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, DBCtrls, Uintelidialog,
  Grids, DBGrids,DateUtils, AdvEdit, JvMemoryDataset, ComCtrls, tmsAdvGridExcel,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, JvDBImage,ExBar,UInfoPanel,URegistro,
  ImgList, Spin, AdvProgressBar;

type
  TFrmArticulo2 = class(TFrmCatalogo)
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    frxReporteArticulos: TfrxReport;
    FrxArticulos: TfrxDBDataset;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cdImagenPrev: TClientDataSet;
    DataSource1: TDataSource;
    Splitter2: TSplitter;
    JvLabel2: TJvLabel;
    edtFtitulo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    grpFecha: TGroupBox;
    ChFechas: TCheckBox;
    FechaI: TJvDatePickerEdit;
    FechaF: TJvDatePickerEdit;
    lbl1: TLabel;
    edtFArea: TAdvEdit;
    edtFGrupo: TAdvEdit;
    edtFSubgrupo: TAdvEdit;
    Foto: TJvDBImage;
    mdImagenPrev: TJvMemoryData;
    NxDBTextColumn9: TNxDBTextColumn;
    cdUnidad: TClientDataSet;
    cdImpuesto: TClientDataSet;
    cdSubgrupo: TClientDataSet;
    cdTipoRecursos: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure JvLabel2Click(Sender: TObject);
    procedure FechaFChange(Sender: TObject);
    procedure edtFCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdDatosAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
  private
    { Private declarations }
    //se declara el panel
    //FExBar: TExBar;
    FExSplitter: TSplitter;
    //componentes en barra
    code,tittle: TDBEdit;
    ima: tjvdbimage;
    lbcode,lbtittle: tlabel;

    procedure ItemClick(Sender: TObject; Id: Integer);
    procedure RegistroCambiado;
    procedure MostrarImagen(Refresh: Boolean = false);
    procedure MostrarImagenClick;
  protected
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure FiltroInicial; Override;
    procedure InitForm; Override;
    function CrearConjuntosNecesarios: Boolean;
  public
    ArticuloActual: Integer;
    procedure Filtrar;
  end;

var
  FrmArticulo2: TFrmArticulo2;

implementation

uses ClientModuleUnit1,Unit2,ExportaExcel;

{$R *.dfm}

procedure TFrmArticulo2.AdvShapeButton1Click(Sender: TObject);
//var
//  PNImagen: string;
begin
  MostrarImagen;
end;

procedure TFrmArticulo2.ItemClick(Sender: TObject; Id: Integer);
begin
  case Id of
    0: begin
      //mostrar imagen
      if (cddatos.recordcount > 0) and (DBGridPrincipal.SelectedRow >= 0)  then
      begin
        Try
          try
            CdImagenPrev.Close;
            EliminarConjunto(cdImagenPrev.ProviderName);
          finally
            ;
          end;
          CdImagenPrev.Close;
          CrearConjunto(CdImagenPrev, 'alm_articulo', ccUpdate);
          CargarDatosFiltrados(CdImagenPrev, 'idarticulo', [cdDatos.FieldByName('idarticulo').AsInteger]);
          CdImagenPrev.Open;
          DataSource1.dataset := cdImagenPrev;
          foto.DataSource := DataSource1;
          if CdImagenPrev.RecordCount <> 1 then
           raise Exception.Create('Al localizar la imagen.');
        Except
          on e:exception do
            InteliDialog.ShowModal('No se puede generar la vista previa.',e.message, mtInformation, [mbOk], 0);
        End;
      end;
    end;

  end;
end;

procedure TFrmArticulo2.BtnAddClick(Sender: TObject);
begin
  if CrearConjuntosNecesarios then
    inherited;
end;

procedure TFrmArticulo2.BtnEditClick(Sender: TObject);
begin
  if CrearConjuntosNecesarios then
    inherited;
end;

procedure TFrmArticulo2.BtnPrintClick(Sender: TObject);
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

    ClientModule1.ImprimeReporte('Articulos.fr3',FrxReporteArticulos);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;
end;

procedure TFrmArticulo2.BtnRefreshClick(Sender: TObject);
begin
  inherited;
  DBGridPrincipal.Refresh;
end;

procedure TFrmArticulo2.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmArticulo2.cdDatosAfterScroll(DataSet: TDataSet);
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
        if mdImagenPrev.Locate('idarticulo', cdDatos.FieldByName('idarticulo').AsInteger,[]) then
        begin
          //DataSource1.dataset := mdImagenPrev;
          FExBar.ExGroups.Items[0].AddImage(mdImagenPrev.fieldbyname('imagen'));
          FExBar.ExGroups.Items[0].AddLine(cdDatos.fieldbyname('tituloarticulo').AsString, clBtnText, [fsBold], True);
        end;
      Finally
        FExBar.EndUpdate;
        FExBar.Repaint;
      End;
    end;
end;

function TFrmArticulo2.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosArticulo.Create(Self);
end;

procedure TFrmArticulo2.edtFCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmArticulo2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    mdImagenPrev.Close;
    CdImagenPrev.Close;
    if (cdUnidad.ProviderName <> '') and cdUnidad.Active then
      cdUnidad.Close;
    EliminarConjunto([cdImagenPrev, cdUnidad, cdImpuesto, cdSubgrupo, cdTipoRecursos]);
  Except
    ;
  end;
  inherited;
end;

procedure TFrmArticulo2.FormCreate(Sender: TObject);

begin
  ModuloPantalla := 'ARTICULOS';
  ArticuloActual := -1;
  inherited;

  FExBar.BeginUpdate;
  FExBar.ExGroups.Add('Imagen', True);
  FExBar.ExGroups.Items[0].AddMenuItem('Ver imágen', MostrarImagenClick, 'Ver vista previa de la imágen', 3);
  FExBar.EndUpdate;
  FExBar.Repaint;
{  //se crea el spliyter
  FExSplitter := TSplitter.Create(Self);
  FExSplitter.Parent := Self;
  FExSplitter.Align := alLeft;
  //se crea la barra
  FExBar := TExBar.Create(Self);
  Try   //guardando lugar de la barra
    FExBar.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'LeftPanelWidth'));
  Except
    ;
  End;

  with FExBar do
  begin
    BeginUpdate;
    SetSkin(InfoPanel.BlueImg.Picture.Bitmap);
    GroupIcons := InfoPanel.Icons32;
    ItemIcons := InfoPanel.Icons16;
    Parent := Self;
    Align := alLeft;
    OnMenuItemClick := ItemClick;

    with ExGroups.Add('Opciones de articulos', True) do
    begin
      GroupIconIndex := -1;
    end;

//    ExGroups.Items[0].AddCheckBox('Ver imagen','',0,False,True,true);
   // ExGroups.Items[0].AddMenuItem('Opciones de artículos','',0,0);

    ima := TJvDBImage.Create(nil);
    with ima do
    begin
      Width := 185;
      Height := 160;
      PArent := FExBar;
      top := 185;
      left := 5;
      datafield :='imagen';
      datasource :=datasource1;
    end;


    ExGroups.Add('Detalles de artículos');
    EndUpdate;
  end; }
end;

procedure TFrmArticulo2.RegistroCambiado;
begin
  with FExBar do
  begin
    BeginUpdate;
    ExGroups.Items[0].Items.Clear;

    if cdDatos.RecordCount > 0 then
    begin
      with ExGroups.Items[0] do
      begin
        AddCheckBox('Ver imagen','',0,False,True,true);
        AddLine(cdDatos.FieldByName('codigoarticulo').AsString, clBtnText, [fsBold], True);
        AddLine(cdDatos.FieldByName('tituloarticulo').AsString, clBtnText, [], True);
      end;
    end;

    EndUpdate;
    FExBar.Refresh;
  end;
end;

procedure TFrmArticulo2.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  // Eliminar las ventanas historicas que pudieran haber sido abiertas
{  i := 0;
  while i < Application.ComponentCount do
  begin
    if Application.Components[i].ClassType = TFrmArticulo2 then
      Application.Components[i].Free
    else
      Inc(i);
  end;  }
end;

procedure TFrmArticulo2.FiltroInicial;
Begin
  if TRIM(Filtro) <> '' then
  begin
    edtFTitulo.Text := Filtro;
    Filtrar;
  end;
End;

procedure TFrmArticulo2.FormShow(Sender: TObject);
begin
  Try
    inherited;

    EntityName := 'alm_articulo';
    KeyField := 'idarticulo';
    CodeField := 'codigoarticulo';
    Abrir;
  Except
    ;
  End;
end;

procedure TFrmArticulo2.JvLabel2Click(Sender: TObject);
begin
  if panel4.Width <> 33 then
    panel4.Width := 33
  else
    panel4.Width := 225;
end;



procedure TFrmArticulo2.FechaFChange(Sender: TObject);
begin
  if Fechaf.Date < FechaI.Date then
    Fechaf.Date := Fechai.Date;
end;

procedure TFrmArticulo2.Filtrar;
var
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;
  Parametros.Add('IdConArticulo', ArticuloActual);

  if (Length(Trim(EdtFArea.Text)) > 0) then
    Parametros.Add('titulodisciplina',Trim(EdtFArea.Text) + '%');

  if (Length(Trim(edtFGrupo.Text)) > 0) then
    Parametros.Add('titulogrupo','%' +Trim(edtFGrupo.Text) + '%');

  if (Length(Trim(edtFSubGrupo.Text)) > 0) then
    Parametros.Add('titulosubgrupo','%' +Trim(edtFSubGrupo.Text) + '%');

  if (Length(Trim(edtFCodigo.Text)) > 0) then
    Parametros.Add('codigoarticulo',Trim(EdtFCodigo.Text) + '%');

  if (Length(Trim(edtFtitulo.Text)) > 0)  then
    Parametros.Add('tituloarticulo','%' + Trim(edtFtitulo.Text) + '%');

  if ChFechas.Checked = True then
  begin
    Parametros.Add('fechai',ClientModule1.DatetoStrSql(FechaI.Date));
    Parametros.Add('fechaf',ClientModule1.DatetoStrSql(FechaF.Date));
  end;

  CargarDatosFiltrados(cdDatos,Parametros.Campos,Parametros.Datos);
  if cdDatos.Active then
    cdDatos.Refresh
  ELSE
    cdDatos.Open;

  Parametros.Free;
  //RegistroCambiado;
end;


procedure TFrmArticulo2.InitForm;
begin
  CrearBarraEx := true;
end;


Procedure TFrmArticulo2.MostrarImagen(Refresh: Boolean = false);
Var
  Existe: Boolean;
begin
  if (cddatos.recordcount > 0) and (DBGridPrincipal.SelectedRow >= 0)  then
  begin
    Try
      // Buscar primero si ya lo tengo en el buffer
      Existe := mdImagenPrev.Locate('idarticulo', cdDatos.FieldByName('idarticulo').AsInteger,[]);
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
        CrearConjunto(CdImagenPrev, 'alm_articulo', ccUpdate);
        CargarDatosFiltrados(CdImagenPrev, 'idarticulo', [cdDatos.FieldByName('idarticulo').AsInteger]);
        CdImagenPrev.Open;
        foto.DataSource := DataSource1;
        if CdImagenPrev.RecordCount <> 1 then
         raise Exception.Create('Al localizar la imagen.')
        else
        begin
          mdImagenPrev.Append;
          mdImagenPrev.FieldByName('idarticulo').Assign(CdImagenPrev.FieldByName('idarticulo'));
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


procedure TFrmArticulo2.MostrarImagenClick;
begin
  if (cddatos.recordcount > 0) and (DBGridPrincipal.SelectedRow >= 0)  then
  begin
      // Buscar primero si ya lo tengo en el buffer
      if mdImagenPrev.Locate('idarticulo', cdDatos.FieldByName('idarticulo').AsInteger,[]) then
      begin
        if InteliDialog.ShowModal('Confirmación','Intentar recargar la imágen',
          '¿Desea usted volver a recargar la imagen desde la base de datos?',mtInformation,[mbYes,mbNo],0) = mrYes then
          MostrarImagen(true);
      end
      else
        MostrarImagen(true);
  end;
end;

function TFrmArticulo2.CrearConjuntosNecesarios: Boolean;
begin
  Result := False;

  Try
    if cdUnidad.ProviderName = '' then
    begin
      if Not CrearConjunto(cdUnidad, 'nuc_unidad', ccCatalog) then
        raise InteligentException.CreateByCode(19, ['Unidades de Medida']);
      cdUnidad.Open;
    end;

    if cdImpuesto.ProviderName = '' then
    begin
      if Not CrearConjunto(cdImpuesto, 'nuc_impuesto', ccCatalog) then
        raise InteligentException.CreateByCode(19, ['Impuestos']);
      cdImpuesto.Open;
    end;

    if cdSubgrupo.ProviderName = '' then
    begin
      if Not CrearConjunto(cdSubgrupo, 'alm_subgrupo', ccCatalog) then
        raise InteligentException.CreateByCode(19, ['Subgrupos']);
      cdImpuesto.Open;
    end;

    if cdTipoRecursos.ProviderName = '' then
    begin
      if Not CrearConjunto(cdTipoRecursos, 'nuc_tiporecurso', ccCatalog) then
        raise InteligentException.CreateByCode(19, ['Tipos de Recursos']);
      cdTipoRecursos.Open;
    end;

    Result := True;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

end.
