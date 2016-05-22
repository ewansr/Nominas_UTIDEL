unit UTFrmReportesGenerales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, AdvSmoothTabPager, ExtCtrls, DB, DBClient, frxClass,
  frxDBSet, frxPreview, ComCtrls, AdvDateTimePicker, StdCtrls, AdvGroupBox,
  Buttons, pngimage, Mask, DBCtrls, AdvEdit,UInteliDialog, RxMemDS, Grids,
  DBGrids, JvMemoryDataset,StrUtils, AdvCircularProgress,URegistro,nuc_genericclasses;

type
  TFrmReportesGenerales = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    tab1: TAdvSmoothTabPager;
    PageKardex: TAdvSmoothTabPage;
    PanelPrint: TPanel;
    BtnPrint: TAdvShapeButton;
    frxReporte: TfrxReport;
    frdsDetalle: TfrxDBDataset;
    Previsualizarkardex: TfrxPreview;
    Panel4: TPanel;
    BtnClose: TAdvShapeButton;
    PagePersonal: TAdvSmoothTabPage;
    cdArticulos: TClientDataSet;
    CdCantidades: TClientDataSet;
    CdDetalle: TClientDataSet;
    mdDetalle: TJvMemoryData;
    mdDetalletitulodisciplina: TStringField;
    mdDetalletitulogrupo: TStringField;
    mdDetalletitulosubgrupo: TStringField;
    mdDetalletituloarticulo: TStringField;
    mdDetalleserie: TStringField;
    mdDetallenombretipomovimiento: TStringField;
    mdDetallefecha: TDateTimeField;
    mdDetalleInicial: TFloatField;
    mdDetallecantidad: TFloatField;
    mdDetallefinal: TFloatField;
    mdDetalletipomovimiento: TStringField;
    cdSubgrupos: TClientDataSet;
    cdGrupos: TClientDataSet;
    CdDisciplina: TClientDataSet;
    ReporteAux: TfrxReport;
    FrxDatasetAux: TfrxDBDataset;
    mdDetallemanifiesto: TStringField;
    mdDetalleidpadre: TStringField;
    mdDetallecosto: TFloatField;
    PrevisualizarPersonal: TfrxPreview;
    Panel1: TPanel;
    BtnSearch: TAdvShapeButton;
    progreso: TProgressBar;
    Panel7: TPanel;
    AdvGroupBox1: TAdvGroupBox;
    Fechadesde: TAdvDateTimePicker;
    FechaHasta: TAdvDateTimePicker;
    GrpTipo: TGroupBox;
    Panel5: TPanel;
    Pmaterial: TPanel;
    RbGrupos: TRadioButton;
    RbDisciplinas: TRadioButton;
    RbSubgrupos: TRadioButton;
    RbArticulos: TRadioButton;
    grpArticulo: TGroupBox;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtFCodigoArt: TAdvEdit;
    BtnFindArticulo: TBitBtn;
    EdtTituloArt: TEdit;
    EdtDescripcionArt: TEdit;
    EdtSubgrupoArt: TEdit;
    EdtGrupoArt: TEdit;
    EdtDisciplinaArt: TEdit;
    edtIdArticulo: TEdit;
    GrpSubgrupo: TGroupBox;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdtFCodigoSubG: TAdvEdit;
    BtnFindSubgrupo: TBitBtn;
    EdtTituloSubg: TEdit;
    EdtDescripcionSubg: TEdit;
    EdtGrupoSubG: TEdit;
    EdtDisciplinaSubG: TEdit;
    edtIdSubgrupo: TEdit;
    GrpGrupo: TGroupBox;
    Image2: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    EdtFCodigoGrp: TAdvEdit;
    BtnFindGrupo: TBitBtn;
    EdtTituloGrp: TEdit;
    EdtDescripcionGrp: TEdit;
    EdtDisciplinaGrp: TEdit;
    edtIdGrupo: TEdit;
    GrpDisciplina: TGroupBox;
    Image4: TImage;
    Label16: TLabel;
    Label17: TLabel;
    EdtFCodigoDis: TAdvEdit;
    BtnFindDisciplina: TBitBtn;
    EdtTituloDis: TEdit;
    EdtDescripcionDis: TEdit;
    edtIdDisciplina: TEdit;
    Panel6: TPanel;
    AdvGroupBox2: TAdvGroupBox;
    FechaDesde2: TAdvDateTimePicker;
    FechaHasta2: TAdvDateTimePicker;
    GroupBox1: TGroupBox;
    Panel8: TPanel;
    Panel9: TPanel;
    RbCargo: TRadioButton;
    RbUsuario: TRadioButton;
    MdDetalle2: TJvMemoryData;
    MdDetalle2serie: TStringField;
    MdDetalle2nombrec: TStringField;
    MdDetalle2referencia: TStringField;
    MdDetalle2cargo: TStringField;
    cdkdusuario: TClientDataSet;
    frxkdusuario: TfrxDBDataset;
    frxReportKdUsuario: TfrxReport;
    MdDetalle2accion: TStringField;
    MdDetalle2documento: TStringField;
    GrpUsuario: TGroupBox;
    Image5: TImage;
    Label8: TLabel;
    Label13: TLabel;
    EdtFUsuario: TAdvEdit;
    BtnFindUsuario: TBitBtn;
    EdtNombre: TEdit;
    EdtCargo: TEdit;
    EdtIdUsuario: TEdit;
    MdDetalle2estado: TStringField;
    MdDetalle2fecha: TStringField;
    MdDetalle2id: TStringField;
    MdDetalle2nota: TStringField;
    GrpCargo: TGroupBox;
    Image6: TImage;
    Label14: TLabel;
    EdtFCargo: TAdvEdit;
    BtnFindCargo: TBitBtn;
    EdtTituloCargo: TEdit;
    EdtIdCargo: TEdit;
    CdCargos: TClientDataSet;
    FrxDatasetAux2: TfrxDBDataset;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnFindArticuloClick(Sender: TObject);
    procedure HabilitarGrupo;
    procedure RbArticulosClick(Sender: TObject);
    procedure BtnFindSubgrupoClick(Sender: TObject);
    procedure BtnFindGrupoClick(Sender: TObject);
    procedure BtnFindDisciplinaClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function generarxarticulo(idarticulo:Integer;fecha,fechaf:string;memorydata:TJvMemoryData;limpiar:boolean):TJvMemoryData;
    procedure edtFCodigoArtKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFCodigoSubGKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFCodigoGrpKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFCodigoDisKeyPress(Sender: TObject; var Key: Char);
    procedure frxReporteClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure BtnFindUsuarioClick(Sender: TObject);
    procedure frxReportKdUsuarioClickObject(Sender: TfrxView;
      Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
    procedure BtnFindCargoClick(Sender: TObject);
    procedure RbUsuarioClick(Sender: TObject);
    procedure EdtFCargoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtFUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    ModuloPantalla: String;
    function generarxusuario(idusuario: Integer;nombre,cargo:string; fecha, fechaf: string;
      memorydata: TJvMemoryData; limpiar: boolean): TJvMemoryData;
    procedure imprimesolicitud(id: string);
    procedure imprimesalida(id:string);
    procedure imprimeentrada(id:string);
    procedure HabilitarCargo;
    procedure imprimecotizacion(id: string);
    procedure imprimeoc(id: string);
    procedure imprimeLogistica(id: string);
    procedure AccedeACoordenadas;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReportesGenerales: TFrmReportesGenerales;

implementation

uses ClientModuleUnit1,unit2,UTFrmArticulo2,xDatabase,UTFrmSubgrupos,UTFrmGrupos,
     UTFrmDisciplinas, UTFrmUsuarios, UTFrmCargos;

{$R *.dfm}

procedure TFrmReportesGenerales.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := Self.Left;
  xTop := Self.Top;
  xWidth := Self.Width;
  xHeight := Self.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left', Existe));
    if Not Existe then xLeft := Self.Left;
  Except
    xLeft := Self.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top', Existe));
    if Not Existe then xTop := Self.Top;
  Except
    xTop := Self.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width', Existe));
    if Not Existe then xWidth := Self.Width;
  Except
    xWidth := Self.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height', Existe));
    if Not Existe then xHeight := Self.Height;
  Except
    xHeight := Self.Height;
  End;

  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Left := xLeft;
  Self.Width := xWidth;
  Self.Top := xTop;
  Self.Height := xHeight;

end;

procedure TFrmReportesGenerales.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmReportesGenerales.BtnFindArticuloClick(Sender: TObject);
var
  Articulo: TLista;
  frmArticulo: TFrmArticulo2;
begin

  frmArticulo := TFrmArticulo2.Create(nil);
  frmArticulo.ModoSeleccion := True;
  Articulo := frmArticulo.SeleccionarItem;
  if assigned(Articulo) then
  begin
    edtIdArticulo.Text := VarToStr(Articulo.Valor['idArticulo']);
    edtFCodigoArt.Text := VarToStr(Articulo.Valor['codigoarticulo']);
    EdtTituloArt.Text := VarToStr(Articulo.Valor['tituloArticulo']);
    EdtDescripcionArt.Text := VarToStr(Articulo.Valor['descripcion']);
    EdtSubgrupoArt.Text := VarToStr(Articulo.Valor['titulosubgrupo']);
    EdtGrupoArt.Text := VarToStr(Articulo.Valor['titulogrupo']);
    EdtDisciplinaArt.Text := VarToStr(Articulo.Valor['titulodisciplina']);
  end;
  frmArticulo.Free;
  Articulo.Free;
end;

procedure TFrmReportesGenerales.BtnFindCargoClick(Sender: TObject);
var
  Cargo: TLista;
  frmCargo: TFrmcargos;
begin
  frmCargo:= TFrmcargos.Create(nil);
  frmCargo.ModoSeleccion := True;
  Cargo := frmCargo.SeleccionarItem;
  if assigned(Cargo) then
  begin
    EdtFCargo.Text := VarToStr(Cargo.Valor['codigocargo']);
    EdtTituloCargo.Text := VarToStr(Cargo.Valor['titulocargo']);
    EdtIdCargo.text := VarToStr(Cargo.Valor['idcargo']);
  end;
  frmCargo.Free;
  Cargo.Free;
end;

procedure TFrmReportesGenerales.BtnFindDisciplinaClick(Sender: TObject);
var
  Disciplina: TLista;
  frmdisciplina: TFrmDisciplinas;
begin
  try
    frmdisciplina := TFrmDisciplinas.Create(nil);
    frmdisciplina.ModoSeleccion := True;
    Disciplina := frmdisciplina.SeleccionarItem;
    frmdisciplina.Free;
    if assigned(Disciplina) then
    begin
      edtIdDisciplina.Text := VarToStr(Disciplina.Valor['iddisciplina']);
      EdtFCodigoDis.Text := VarToStr(Disciplina.Valor['codigodisciplina']);
      EdtTituloDis.Text := VarToStr(Disciplina.Valor['titulodisciplina']);
      EdtDescripcionDis.Text := VarToStr(Disciplina.Valor['descripcion']);
    end;
    Disciplina.Destroy;
  except
    ;
  end;
end;

procedure TFrmReportesGenerales.BtnFindGrupoClick(Sender: TObject);
var
  Grupo: TLista;
  frmgrupo: TFrmGrupos;
begin
  frmgrupo := TFrmgrupos.Create(nil);
  frmgrupo.ModoSeleccion := True;
  Grupo := frmgrupo.SeleccionarItem;
  if assigned(Grupo) then
  begin
    edtIdGrupo.Text := VarToStr(Grupo.Valor['idgrupo']);
    EdtFCodigoGrp.Text := VarToStr(Grupo.Valor['codigogrupo']);
    EdtTituloGrp.Text := VarToStr(Grupo.Valor['titulogrupo']);
    EdtDescripcionGrp.Text := VarToStr(Grupo.Valor['descripcion']);
    EdtDisciplinaGrp.Text := VarToStr(Grupo.Valor['titulodisciplina']);
  end;
  frmgrupo.Free;
  Grupo.Free;
end;

procedure TFrmReportesGenerales.BtnFindSubgrupoClick(Sender: TObject);
var
  SubGrupo: TLista;
  frmSubgrupo: TFrmSubgrupos;
begin
  frmSubgrupo := TFrmSubgrupos.Create(nil);
  frmSubgrupo.ModoSeleccion := True;
  SubGrupo := frmSubgrupo.SeleccionarItem;
  if assigned(SubGrupo) then
  begin
    edtIdSubgrupo.Text := VarToStr(SubGrupo.Valor['idsubgrupo']);
    EdtFCodigoSubG.Text := VarToStr(SubGrupo.Valor['codigosubgrupo']);
    EdtTituloSubg.Text := VarToStr(SubGrupo.Valor['tituloSubgrupo']);
    EdtDescripcionSubg.Text := VarToStr(SubGrupo.Valor['descripcion']);
    EdtGrupoSubG.Text := VarToStr(SubGrupo.Valor['titulogrupo']);
    EdtDisciplinaSubG.Text := VarToStr(SubGrupo.Valor['titulodisciplina']);
  end;
  frmSubgrupo.Free;
  SubGrupo.Free;
end;

procedure TFrmReportesGenerales.BtnFindUsuarioClick(Sender: TObject);
var
  Usuario: TLista;
  frmUsuario: TFrmusuarios;
begin

  FrmUsuario:= TFrmUsuarios.Create(nil);
  FrmUsuario.ModoSeleccion := True;
  Usuario := frmUsuario.SeleccionarItem;
  if assigned(Usuario) then
  begin
    EdtFUsuario.Text := VarToStr(Usuario.Valor['usuario']);
    EdtNombre.Text := VarToStr(Usuario.Valor['nombre']);
    EdtNombre.Text := EdtNombre.Text +' '+ VarToStr(Usuario.Valor['apellidos']);
    EdtCargo.Text := VarToStr(Usuario.Valor['titulocargo']);
    EdtIdUsuario.text := VarToStr(Usuario.Valor['idusuario']);
  end;
  frmUsuario.Free;
  Usuario.Free;
end;

procedure TFrmReportesGenerales.BtnPrintClick(Sender: TObject);
begin
  if tab1.ActivePageIndex = 0 then
    frxReporte.Print;
  if tab1.ActivePageIndex = 1 then
    frxReportKdUsuario.Print;
  BtnSearch.Click;
end;

procedure TFrmReportesGenerales.BtnSearchClick(Sender: TObject);
var
  cantidadinicio:Real;
  tipo:string;
begin

  try
    if tab1.ActivePageIndex = 0 then
    begin
      try
        mddetalle.Active := True;
        mdDetalle.EmptyTable;
      except
        ;
      end;

      progreso.Max := 0;
      progreso.Position := 0;
      progreso.Visible := True;

      if RbArticulos.Checked then
      begin

        tipo := RbArticulos.Caption;
        if length(trim(edtIdArticulo.Text)) < 1 then
          raise InteligentException.Create('Seleccione un articulo.');
        mdDetalle:=generarxarticulo(StrToInt(edtIdArticulo.text),DateTimetoStrSql(FechaDesde.Datetime),DateTimetoStrSql(FechaHasta.Datetime),mdDetalle,true);
      end;

      if RbSubgrupos.Checked then
      begin
        if length(trim(edtIdSubgrupo.Text)) < 1 then
          raise InteligentException.Create('Seleccione un subgrupo.');
        tipo := RbSubgrupos.Caption;
        CrearConjunto(cdSubgrupos,'alm_articulo',ccCatalog);
        cdSubgrupos.close;
        CargarDatosFiltrados(cdSubgrupos,'idsubgrupo',[StrToInt(edtIdSubgrupo.text)],false);
        cdSubgrupos.Open;
        progreso.Max := cdSubgrupos.RecordCount ;
        if cdSubgrupos.RecordCount > 0 then
        begin
          cdSubgrupos.First;
          while not cdSubgrupos.Eof do
          begin
            mdDetalle:= generarxarticulo(cdSubgrupos.FieldByName('idarticulo').AsInteger,DateTimetoStrSql(FechaDesde.Datetime),DateTimetoStrSql(FechaHasta.Datetime),mdDetalle,false);
            cdSubgrupos.Next;
            progreso.Position := progreso.Position + 1;
          end;
        end;
        cdSubgrupos.Close;
        EliminarConjunto(cdsubgrupos);
      end;

      if Rbgrupos.Checked then
      begin
        if length(trim(edtIdGrupo.Text)) < 1 then
          raise InteligentException.Create('Seleccione un grupo.');
        tipo := Rbgrupos.Caption;
        CrearConjunto(cdgrupos,'alm_articulo',ccCatalog);
        cdgrupos.close;
        CargarDatosFiltrados(cdgrupos,'idgrupo',[StrToInt(edtIdGrupo.text)],false);
        cdgrupos.Open;
        progreso.Max := cdgrupos.RecordCount ;
        if cdgrupos.RecordCount > 0 then
        begin
          cdgrupos.First;
          while not cdgrupos.Eof do
          begin
            mdDetalle:= generarxarticulo(cdgrupos.FieldByName('idarticulo').AsInteger,DateTimetoStrSql(FechaDesde.Datetime),DateTimetoStrSql(FechaHasta.Datetime),mdDetalle,false);
            cdgrupos.Next;
            progreso.Position := progreso.Position+1;
          end;
        end;
        cdGrupos.Close;
        EliminarConjunto(cdgrupos);
      end;

      if RbDisciplinas.Checked then
      begin

        if length(trim(edtIdDisciplina.Text)) < 1 then
          raise InteligentException.Create('Seleccione una disciplina.');
        tipo := RbDisciplinas.Caption;
        CrearConjunto(CdDisciplina,'alm_articulo',ccCatalog);
        cddisciplina.close;
        CargarDatosFiltrados(cddisciplina,'iddisciplina',[StrToInt(edtIdDisciplina.text)],false);
        cddisciplina.Open;
        progreso.Max := cddisciplina.RecordCount ;
        if cddisciplina.RecordCount > 0 then
        begin
          cddisciplina.First;
          while not cddisciplina.Eof do
          begin
            mdDetalle:= generarxarticulo(cddisciplina.FieldByName('idarticulo').AsInteger,DateTimetoStrSql(FechaDesde.Datetime),DateTimetoStrSql(FechaHasta.Datetime),mdDetalle,false);
            cddisciplina.Next;
            progreso.position := progreso.position + 1;
          end;
        end;
        CdDisciplina.Close;
        EliminarConjunto(cddisciplina);
      end;

      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\SolicitudDetalle.fr3') then
      begin
      Raise InteligentException.Create('No he podido localizar el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName)+'Reportes\KardexMaterial.fr3' );
      end;

      FrxReporte.PreviewOptions.MDIChild := False ;
      FrxReporte.PreviewOptions.Modal := True ;
      FrxReporte.PreviewOptions.ShowCaptions := False ;
      FrxReporte.Previewoptions.ZoomMode := zmPageWidth ;

      FrxReporte.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'KardexMaterial.fr3');

      ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
      clientModule1.cdOrganizacion.Last;
      FrxReporte.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
      clientModule1.cdOrganizacion.Prior;
      FrxReporte.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

      FrxReporte.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
      FrxReporte.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
      FrxReporte.Variables['tipo'] := QuotedStr(tipo);

      FrxReporte.Variables['fechaini'] := QuotedStr(DateTimetoStrSql(FechaDesde.Datetime));
      FrxReporte.Variables['fechafin'] := QuotedStr(DateTimetoStrSql(FechaHasta.Datetime));

      FrxReporte.ShowReport(True);
      EliminarConjunto([cdArticulos,CdCantidades,CdDetalle]);
    end;

    if tab1.ActivePageIndex = 1 then
    begin
      try
        mddetalle2.Active := True;
        mdDetalle2.EmptyTable;
      except
        ;
      end;

      progreso.Max := 0;
      progreso.Position := 0;
      progreso.Visible := True;

      if RbUsuario.Checked then
      begin

        tipo := RbUsuario.Caption;
        if length(trim(EdtIdUsuario.Text)) < 1 then
          raise InteligentException.Create('Seleccione un usuario.');
        mdDetalle2:=generarxUsuario(StrToInt(edtIdUsuario.text),EdtNombre.text,EdtCargo.text,DateTimetoStrSql(FechaDesde2.Datetime),DateTimetoStrSql(FechaHasta2.Datetime),mdDetalle2,true);
        progreso.Visible := false;
      end;

      if RbCargo.Checked then
      begin
        if length(trim(EdtIdCargo.Text)) < 1 then
          raise InteligentException.Create('Seleccione un cargo.');
        tipo := RbCargo.Caption;
        CrearConjunto(cdCargos,'nuc_usuario',ccCatalog);
        CdCargos.close;
        CargarDatosFiltrados(cdCargos,'idcargo',[StrToInt(EdtIdCargo.text)],false);
        cdCargos.Open;
        progreso.Max := cdCargos.RecordCount ;
        if cdCargos.RecordCount > 0 then
        begin
          cdCargos.First;
          while not cdCargos.Eof do
          begin
            mdDetalle2:=generarxUsuario(CdCargos.FieldByName('idusuario').asinteger,cdCargos.FieldByName('nombre').asstring+' '+cdCargos.FieldByName('apellidos').asstring,cdCargos.FieldByName('titulocargo').asstring,DateTimetoStrSql(FechaDesde2.Datetime),DateTimetoStrSql(FechaHasta2.Datetime),mdDetalle2,false);
            cdCargos.Next;
            progreso.Position := progreso.Position + 1;
          end;
        end;
        cdCargos.Close;
        EliminarConjunto(cdCargos);
      end;

      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\kdusuario.fr3') then
      begin
      Raise InteligentException.Create('No he podido localizar el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName)+'Reportes\kdusuario.fr3' );
      end;

      FrxReportkdusuario.PreviewOptions.MDIChild := False ;
      FrxReportkdusuario.PreviewOptions.Modal := True ;
      FrxReportkdusuario.PreviewOptions.ShowCaptions := False ;
      FrxReportkdusuario.Previewoptions.ZoomMode := zmPageWidth ;

      FrxReportkdusuario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'kdusuario.fr3');

      ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
      clientModule1.cdOrganizacion.Last;
      FrxReportkdusuario.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
      clientModule1.cdOrganizacion.Prior;
      FrxReportkdusuario.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

      FrxReportkdusuario.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
      FrxReportkdusuario.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
      FrxReportkdusuario.Variables['tipo'] := QuotedStr(tipo);

      FrxReportkdusuario.Variables['fechaini'] := QuotedStr(DateTimetoStrSql(FechaDesde2.Datetime));
      FrxReportkdusuario.Variables['fechafin'] := QuotedStr(DateTimetoStrSql(FechaHasta2.Datetime));

      FrxReportkdusuario.ShowReport(True);
    end;
    progreso.Visible := False;
  except
    on e:Exception do
    begin
        InteliDialog.ShowModal('Error inesperado.', e.message, mtError, [mbOk], 0);
        try
          cdArticulos.Close;
          CdCantidades.Close;
          CdDetalle.Close;
          cdSubgrupos.Close;
          cdGrupos.Close;
          CdDisciplina.Close;
          CdCargos.Close;
        except
          ;
        end;
        EliminarConjunto([cdArticulos,CdCantidades,CdDetalle,cdSubgrupos ,cdGrupos,CdDisciplina]);
    end;

    on e:InteligentException do
    begin
        InteliDialog.ShowModal('Error al imprimir.', e.message, mtInformation, [mbOk], 0);
        try
          cdArticulos.Close;
          CdCantidades.Close;
          CdDetalle.Close;
          cdSubgrupos.Close;
          cdGrupos.Close;
          CdDisciplina.Close;
          CdCargos.Close;
        except
          ;
        end;
        EliminarConjunto([cdArticulos,CdCantidades,CdDetalle,cdSubgrupos,cdGrupos,CdDisciplina,cdcargos]);
    end;
  end;

  progreso.Visible := false;

end;

procedure TFrmReportesGenerales.EdtFCargoKeyPress(Sender: TObject;
  var Key: Char);
var
  cdCargo: TClientDataSet;
begin
  if key = #13 then
  begin
    try
      cdCargo := TClientDataSet.Create(nil);
      if not CrearConjunto(cdCargo, 'nuc_cargo', ccCatalog) then
        raise InteligentConnection.Create('Al realizar la consulta de nuc_cargo.');
      CargarDatosFiltrados(cdCargo, 'codigocargo', [trim(EdtFCargo.Text)]);
      cdCargo.Open;
      if cdCargo.RecordCount = 1 then
      begin
        EdtIdCargo.Text := cdCargo.FieldByName('idcargo').AsString;
        EdtFCargo.Text := cdCargo.FieldByName('codigocargo').AsString;
        EdtTituloCargo.Text := cdCargo.FieldByName('titulocargo').AsString;
      end
      else
      begin
        if InteliDialog.ShowModal('El código de cargo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
          BtnFindCargo.Click;
      end;

      cdCargo.Close;
      cdCargo.Free;
      EliminarConjunto(cdCargo);

    except

      on e:Exception do
      begin
          InteliDialog.ShowModal('Error inesperado.', e.message, mtError, [mbOk], 0);
        try
          cdCargo.Close;
        except
          ;
        end;
        try
          cdCargo.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdCargo);
        except
          ;
        end;
      end;

      on e:InteligentException do
      begin
          InteliDialog.ShowModal('Error al buscar el cargo, por el siguiente motivo: .', e.message, mtInformation, [mbOk], 0);
        try
          cdCargo.Close;
        except
          ;
        end;
        try
          cdCargo.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdCargo);
        except
          ;
        end;
      end;
    end;
  end;
end;

procedure TFrmReportesGenerales.edtFCodigoArtKeyPress(Sender: TObject;
  var Key: Char);
var
  cdArticulo2: TClientDataSet;
begin
  if key = #13 then
  begin
    try
      cdArticulo2 := TClientDataSet.Create(nil);
      if not CrearConjunto(cdArticulo2, 'alm_articulo', ccCatalog) then
        raise InteligentConnection.Create('Al realizar la consulta de alm_articulo.');
      CargarDatosFiltrados(cdArticulo2, 'codigoarticulo', [trim(edtFCodigoArt.Text)]);
      cdArticulo2.Open;
      if cdArticulo2.RecordCount = 1 then
      begin
        edtIdArticulo.Text :=  cdArticulo2.FieldByName('idArticulo').AsString;
        edtFCodigoArt.Text :=  cdArticulo2.FieldByName('codigoarticulo').AsString;
        EdtTituloArt.Text :=   cdArticulo2.FieldByName('tituloarticulo').AsString;
        EdtDescripcionArt.Text :=cdArticulo2.FieldByName('descripcion').AsString;
        EdtSubgrupoArt.Text := cdArticulo2.FieldByName('titulosubgrupo').AsString;
        EdtGrupoArt.Text := cdArticulo2.FieldByName('titulogrupo').AsString;
        EdtDisciplinaArt.Text :=cdArticulo2.FieldByName('titulodisciplina').AsString;
      end
      else
      begin
        if InteliDialog.ShowModal('El código de artículo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
          BtnFindArticulo.Click;
      end;

      cdArticulo2.Close;
      cdArticulo2.Free;
      EliminarConjunto(cdArticulo2);

    except

      on e:Exception do
      begin
          InteliDialog.ShowModal('Error inesperado.', e.message, mtError, [mbOk], 0);
        try
          cdArticulo2.Close;
        except
          ;
        end;
        try
          cdArticulo2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdArticulo2);
        except
          ;
        end;
      end;

      on e:InteligentException do
      begin
          InteliDialog.ShowModal('Error al buscar el artículo, por el siguiente motivo: .', e.message, mtInformation, [mbOk], 0);
        try
          cdArticulo2.Close;
        except
          ;
        end;
        try
          cdArticulo2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdArticulo2);
        except
          ;
        end;
      end;
    end;
  end;
end;

procedure TFrmReportesGenerales.EdtFCodigoDisKeyPress(Sender: TObject;
  var Key: Char);
var
  cdDisciplina2: TClientDataSet;
begin
  if key = #13 then
  begin
    try
      cdDisciplina2 := TClientDataSet.Create(nil);
      if not CrearConjunto(cdDisciplina2, 'nuc_disciplina', ccCatalog) then
        raise InteligentConnection.Create('Al realizar la consulta de nuc_disciplina.');
      CargarDatosFiltrados(cdDisciplina2, 'codigodisciplina', [trim(EdtFCodigoDis.Text)]);
      cdDisciplina2.Open;
      if cdDisciplina2.RecordCount = 1 then
      begin
        edtIdDisciplina.Text := cdDisciplina2.FieldByName('iddisciplina').AsString;
        EdtFCodigoDis.Text := cdDisciplina2.FieldByName('codigodisciplina').AsString;
        EdtTituloDis.Text := cdDisciplina2.FieldByName('titulodisciplina').AsString;
        EdtDescripcionDis.Text := cdDisciplina2.FieldByName('descripcion').AsString;
      end
      else
      begin
        if InteliDialog.ShowModal('El código de disciplina ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
          BtnFindDisciplina.Click;
      end;

      cdDisciplina2.Close;
      cdDisciplina2.Free;
      EliminarConjunto(cdDisciplina2);

    except

      on e:Exception do
      begin
          InteliDialog.ShowModal('Error inesperado.', e.message, mtError, [mbOk], 0);
        try
          cdDisciplina2.Close;
        except
          ;
        end;
        try
          cdDisciplina2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdDisciplina2);
        except
          ;
        end;
      end;

      on e:InteligentException do
      begin
          InteliDialog.ShowModal('Error al buscar la disciplina, por el siguiente motivo: .', e.message, mtInformation, [mbOk], 0);
        try
          cdDisciplina2.Close;
        except
          ;
        end;
        try
          cdDisciplina2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdDisciplina2);
        except
          ;
        end;
      end;
    end;
  end;
end;

procedure TFrmReportesGenerales.EdtFCodigoGrpKeyPress(Sender: TObject;
  var Key: Char);
var
  cdGrupo2: TClientDataSet;
begin
  if key = #13 then
  begin
    try
      cdGrupo2 := TClientDataSet.Create(nil);
      if not CrearConjunto(cdGrupo2, 'alm_grupo', ccCatalog) then
        raise InteligentConnection.Create('Al realizar la consulta de alm_grupo.');
      CargarDatosFiltrados(cdGrupo2, 'codigogrupo', [trim(EdtFCodigoGrp.Text)]);
      cdGrupo2.Open;
      if cdGrupo2.RecordCount = 1 then
      begin
        edtIdGrupo.Text := cdGrupo2.FieldByName('idgrupo').AsString;
        EdtFCodigoGrp.Text := cdGrupo2.FieldByName('codigogrupo').AsString;
        EdtTituloGrp.Text := cdGrupo2.FieldByName('titulogrupo').AsString;
        EdtDescripcionGrp.Text := cdGrupo2.FieldByName('descripcion').AsString;
        EdtDisciplinaGrp.Text := cdGrupo2.FieldByName('titulodisciplina').AsString;
      end
      else
      begin
        if InteliDialog.ShowModal('El código de grupo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
          BtnFindDisciplina.Click;
      end;

      cdGrupo2.Close;
      cdGrupo2.Free;
      EliminarConjunto(cdGrupo2);

    except

      on e:Exception do
      begin
          InteliDialog.ShowModal('Error inesperado.', e.message, mtError, [mbOk], 0);
        try
          cdGrupo2.Close;
        except
          ;
        end;
        try
          cdGrupo2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdGrupo2);
        except
          ;
        end;
      end;

      on e:InteligentException do
      begin
          InteliDialog.ShowModal('Error al buscar el grupo, por el siguiente motivo: .', e.message, mtInformation, [mbOk], 0);
        try
          cdGrupo2.Close;
        except
          ;
        end;
        try
          cdGrupo2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdGrupo2);
        except
          ;
        end;
      end;
    end;
  end;
end;

procedure TFrmReportesGenerales.EdtFCodigoSubGKeyPress(Sender: TObject;
  var Key: Char);
var
  cdSubGrupo2: TClientDataSet;
begin
  if key = #13 then
  begin
    try
      cdSubGrupo2 := TClientDataSet.Create(nil);
      if not CrearConjunto(cdSubGrupo2, 'alm_subgrupo', ccCatalog) then
        raise InteligentConnection.Create('Al realizar la consulta de alm_subgrupo.');
      CargarDatosFiltrados(cdSubGrupo2, 'codigosubgrupo', [trim(EdtFCodigoSubG.Text)]);
      cdSubGrupo2.Open;
      if cdSubGrupo2.RecordCount = 1 then
      begin
        edtIdSubgrupo.Text := cdSubGrupo2.FieldByName('idsubgrupo').AsString;
        EdtFCodigoSubG.Text := cdSubGrupo2.FieldByName('codigosubgrupo').AsString;
        EdtTituloSubg.Text := cdSubGrupo2.FieldByName('titulosubgrupo').AsString;
        EdtDescripcionSubg.Text := cdSubGrupo2.FieldByName('descripcion').AsString;
        EdtGrupoSubG.Text := cdSubGrupo2.FieldByName('titulogrupo').AsString;
        EdtDisciplinaSubG.Text := cdSubGrupo2.FieldByName('titulodisciplina').AsString;
      end
      else
      begin
        if InteliDialog.ShowModal('El código de subgrupo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
          BtnFindSubgrupo.Click;
      end;

      cdSubGrupo2.Close;
      cdSubGrupo2.Free;
      EliminarConjunto(cdSubGrupo2);

    except

      on e:Exception do
      begin
          InteliDialog.ShowModal('Error inesperado.', e.message, mtError, [mbOk], 0);
        try
          cdSubGrupo2.Close;
        except
          ;
        end;
        try
          cdSubGrupo2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdSubGrupo2);
        except
          ;
        end;
      end;

      on e:InteligentException do
      begin
          InteliDialog.ShowModal('Error al buscar el subgrupo, por el siguiente motivo: .', e.message, mtInformation, [mbOk], 0);
        try
          cdSubGrupo2.Close;
        except
          ;
        end;
        try
          cdSubGrupo2.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdSubGrupo2);
        except
          ;
        end;
      end;
    end;
  end;
end;

procedure TFrmReportesGenerales.EdtFUsuarioKeyPress(Sender: TObject;
  var Key: Char);
var
  cdusu: TClientDataSet;
begin
  if key = #13 then
  begin
    try
      cdusu := TClientDataSet.Create(nil);
      if not CrearConjunto(cdusu, 'nuc_usuario', ccCatalog) then
        raise InteligentConnection.Create('Al realizar la consulta de nuc_usuario.');
      CargarDatosFiltrados(cdusu, 'usuario', [trim(EdtFUsuario.Text)]);
      cdusu.Open;
      if cdusu.RecordCount = 1 then
      begin
        EdtIdUsuario.Text := cdusu.FieldByName('idusuario').AsString;
        EdtFUsuario.Text := cdusu.FieldByName('usuario').AsString;
        EdtNombre.Text := cdusu.FieldByName('nombre').AsString + ' '+cdusu.FieldByName('apellidos').AsString;
        EdtCargo.Text := cdusu.FieldByName('titulocargo').AsString;
      end
      else
      begin
        if InteliDialog.ShowModal('El usuario ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
          BtnFindCargo.Click;
      end;

      cdusu.Close;
      cdusu.Free;
      EliminarConjunto(cdusu);

    except

      on e:Exception do
      begin
          InteliDialog.ShowModal('Error inesperado.', e.message, mtError, [mbOk], 0);
        try
          cdusu.Close;
        except
          ;
        end;
        try
          cdusu.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdusu);
        except
          ;
        end;
      end;

      on e:InteligentException do
      begin
          InteliDialog.ShowModal('Error al buscar el usuario, por el siguiente motivo: .', e.message, mtInformation, [mbOk], 0);
        try
          cdusu.Close;
        except
          ;
        end;
        try
          cdusu.Free;
        except
          ;
        end;
        try
          EliminarConjunto(cdusu);
        except
          ;
        end;
      end;
    end;
  end;
end;

procedure TFrmReportesGenerales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
  try
    EliminarConjunto([cdArticulos,CdCantidades,CdDetalle,cdSubgrupos ,cdGrupos,CdDisciplina]);
  except
    ;
  end;
end;

procedure TFrmReportesGenerales.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'REPORTESGENERALES';
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  AccedeACoordenadas;
end;

procedure TFrmReportesGenerales.FormShow(Sender: TObject);
begin
  clientmodule1.componentcolor(Self);
  FechaDesde.DateTime := now-30;
  FechaHasta.DateTime := now;
  FechaDesde2.DateTime := now-30;
  FechaHasta2.DateTime := now;
end;

procedure TFrmReportesGenerales.frxReporteClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
  var
    lista:TStringList;
begin
  if Sender.Name = 'mserie' then
  begin
    lista := TStringList.Create;
    lista.CommaText := Sender.TagStr;
    //timomovimiento,manifiesto,padre
    if LowerCase(lista[0]) = 'entrada' then
    begin
      imprimeentrada(lista[2]);
    end;

    if LowerCase(lista[0]) = 'salida' then
    begin
        imprimesalida(lista[2]);
    end;

    lista.Free;
  end;
end;

procedure TFrmReportesGenerales.frxReportKdUsuarioClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
  var
    lista2:TStringList;
    cadena2:string;
begin
  if Sender.Name = 'mserie' then
  begin

    lista2 := TStringList.Create;
    cadena2:= Sender.TagStr;
    cadena2 := AnsireplaceText( cadena2, ' ', '_' );
    lista2.CommaText := cadena2;
    //timomovimiento,manifiesto,padre
    if AnsiLowerCase(lista2[0]) = 'solicitud' then
    begin
      imprimesolicitud(lista2[1]);
    end;

    if AnsiLowerCase(lista2[0]) = 'cotizacion' then
    begin
        imprimecotizacion(lista2[1]);
    end;

    if AnsiLowerCase(lista2[0]) = 'orden_de_compra' then
    begin
        imprimeoc(lista2[1]);
    end;

    if AnsiLowerCase(lista2[0]) = 'entrada' then
    begin
        imprimeentrada(lista2[1]);
    end;

    if AnsiLowerCase(lista2[0]) = 'salida' then
    begin
        imprimesalida(lista2[1]);
    end;

    if AnsiLowerCase(lista2[0]) = 'logística' then
    begin
        imprimeLogistica(lista2[1]);
    end;
    lista2.Free;
    cadena2:= '';
  end;
end;

function TFrmReportesGenerales.generarxarticulo(idarticulo: Integer;
  fecha,fechaf:string ; memorydata: TJvMemoryData;limpiar:boolean): TJvMemoryData;
var
  cantidadi:Real;
begin
  try
      try
        try
          cdArticulos.Close;
          CdCantidades.Close;
          cdDetalle.Close;
        except
          ;
        end;

        EliminarConjunto([cdArticulos,CdCantidades,CdDetalle]);
      except
        ;
      end;

      if not CrearConjunto(cdArticulos,'alm_articulo',ccCatalog) then
        raise InteligentConnection.Create('En la consulta alm_articulos');
      cdArticulos.close;
      CargarDatosFiltrados(cdArticulos,'idarticulo',[idarticulo],false);
      cdArticulos.open;

      if cdArticulos.RecordCount = 1 then
      begin

        if not CrearConjunto(CdCantidades,'rep_kardexarticulo',ccCatalog) then
          raise InteligentConnection.Create('En la consulta rep_kardexarticulo');
        CdCantidades.close;
        CargarDatosFiltrados(CdCantidades,'idarticulo,fecha',[idarticulo,fecha],false);
        CdCantidades.open;
      end
      else
        raise InteligentException.Create('Al localizar el artículo.');

      if CdCantidades.RecordCount = 1 then
      begin
        cantidadi := CdCantidades.FieldByName('cantidadinicio').AsFloat;

        if not CrearConjunto(CdDetalle,'rep_kardexarticulo',ccSelect) then
          raise InteligentConnection.Create('En la consulta rep_kardexarticulo');
        CdDetalle.close;
        CargarDatosFiltrados(CdDetalle,'idarticulo,fecha,fechaf',[idarticulo,fecha,fechaf],false);
        CdDetalle.open;
      end
      else
        raise InteligentException.Create('Al localizar cantidades del artículo.');
      if cdDetalle.RecordCount > 0 then
      begin
        progreso.Max := progreso.Max + CdDetalle.RecordCount;
        try
          memorydata.Active := True;
        except
          ;
        end;

        if limpiar then
          memorydata.EmptyTable;
        memorydata.Open;

        cdDetalle.First;
        while not cdDetalle.Eof do
        begin
          memorydata.Append;
          memorydata.FieldByName('tituloarticulo').AsString := cdarticulos.FieldByName('tituloarticulo').AsString;
          memorydata.FieldByName('titulosubgrupo').AsString := cdarticulos.FieldByName('titulosubgrupo').AsString;
          memorydata.FieldByName('titulogrupo').AsString := cdarticulos.FieldByName('titulogrupo').AsString;
          memorydata.FieldByName('titulodisciplina').AsString := cdarticulos.FieldByName('titulodisciplina').AsString;
          memorydata.FieldByName('nombretipomovimiento').AsString := cdDetalle.FieldByName('nombretipomovimiento').AsString;
          memorydata.FieldByName('serie').AsString := cdDetalle.FieldByName('serie').AsString;
          memorydata.FieldByName('fecha').AsString := cdDetalle.FieldByName('fecha').AsString;
          memorydata.FieldByName('tipomovimiento').AsString := cdDetalle.FieldByName('tipomovimiento').AsString;
          memorydata.FieldByName('manifiesto').AsString := cdDetalle.FieldByName('manifiesto').AsString;
          memorydata.FieldByName('idpadre').AsString := cdDetalle.FieldByName('idpadre').AsString;
          memorydata.FieldByName('costo').AsString := cdDetalle.FieldByName('costo').AsString;

          memorydata.FieldByName('inicial').AsFloat := cantidadi;

          memorydata.FieldByName('cantidad').AsFloat := cdDetalle.FieldByName('cantidad').AsFloat;

          if lowercase(memorydata.FieldByName('tipomovimiento').AsString) = 'entrada' then
            memorydata.FieldByName('final').AsFloat := memorydata.FieldByName('cantidad').AsFloat+memorydata.FieldByName('inicial').AsFloat
          else
            memorydata.FieldByName('final').AsFloat := memorydata.FieldByName('inicial').AsFloat -memorydata.FieldByName('cantidad').AsFloat;

          cantidadi := memorydata.FieldByName('final').AsFloat;
          memorydata.Post;
          cdDetalle.Next;
          progreso.Position := progreso.Position+1;
        end;

      end;

    Result := memorydata;
  except
   on e:Exception do
     ShowMessage(e.Message);
  end;
end;

function TFrmReportesGenerales.generarxusuario(idusuario: Integer; nombre,cargo:string;
  fecha,fechaf:string ; memorydata: TJvMemoryData;limpiar:boolean): TJvMemoryData;
var
  cantidadi:Real;
  solcreado,solvalidado,solverificado,cotcreado,occreado,entcreado,salcreado,controllogcreado:TClientDataSet;
begin
  try
    solcreado := TClientDataSet.Create(nil);
    if not CrearConjunto(solcreado,'alm_solicitud',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_solicitud.');
    solcreado.close;
    CargarDatosFiltrados(solcreado,'idusuario,fechareqini,fechareqfin',[idusuario,fecha,fechaf],false);
    solcreado.Open;
    if solcreado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + solcreado.RecordCount;
      try
        memorydata.Active := True;
      except
        ;
      end;

      if limpiar then
        memorydata.EmptyTable;
      memorydata.Open;

      solcreado.First;
      while not solcreado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Solicitud';
        memorydata.FieldByName('serie').AsString := solcreado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := solcreado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := solcreado.FieldByName('fecha').AsString;
        memorydata.FieldByName('accion').AsString := 'Creado';
        memorydata.FieldByName('estado').AsString := solcreado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := solcreado.FieldByName('idsolicitud').AsString;
        memorydata.FieldByName('nota').AsString := solcreado.FieldByName('comentarios').AsString;

        memorydata.Post;
        solcreado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    solcreado.Close;
    EliminarConjunto(solcreado);
    solcreado.Free;

    solvalidado := TClientDataSet.Create(nil);
    if not CrearConjunto(solvalidado,'alm_solicitud',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_solicitud.');
    solvalidado.close;
    CargarDatosFiltrados(solvalidado,'idvalido,fechareqini,fechareqfin',[idusuario,fecha,fechaf],false);
    solvalidado.Open;

    if solvalidado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + solvalidado.RecordCount;
      solvalidado.First;
      while not solvalidado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Solicitud';
        memorydata.FieldByName('serie').AsString := solvalidado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := solvalidado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := solvalidado.FieldByName('fecha').AsString;
        memorydata.FieldByName('accion').AsString := 'Validó';
        memorydata.FieldByName('estado').AsString := solvalidado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := solvalidado.FieldByName('idsolicitud').AsString;
        memorydata.FieldByName('nota').AsString := solvalidado.FieldByName('comentarios').AsString;
        memorydata.Post;
        solvalidado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    solvalidado.Close;
    EliminarConjunto(solvalidado);
    solvalidado.Free;


    solverificado := TClientDataSet.Create(nil);
    if not CrearConjunto(solverificado,'alm_solicitud',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_solicitud.');
    solverificado.close;
    CargarDatosFiltrados(solverificado,'idverifico,fechareqini,fechareqfin',[idusuario,fecha,fechaf],false);
    solverificado.Open;

    if solverificado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + solverificado.RecordCount;
      solverificado.First;
      while not solverificado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Solicitud';
        memorydata.FieldByName('serie').AsString := solverificado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := solverificado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := solverificado.FieldByName('fecha').AsString;
        memorydata.FieldByName('accion').AsString := 'Verificó';
        memorydata.FieldByName('estado').AsString := solverificado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := solverificado.FieldByName('idsolicitud').AsString;
        memorydata.FieldByName('nota').AsString := solverificado.FieldByName('comentarios').AsString;
        memorydata.Post;
        solverificado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    solverificado.Close;
    EliminarConjunto(solverificado);
    solverificado.Free;

    cotcreado := TClientDataSet.Create(nil);
    if not CrearConjunto(cotcreado,'alm_cotizacion',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_cotizacion.');
    cotcreado.close;
    CargarDatosFiltrados(cotcreado,'idusuario,fechaini,fechafin',[idusuario,fecha,fechaf],false);
    cotcreado.Open;

    if cotcreado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + cotcreado.RecordCount;
      cotcreado.First;
      while not cotcreado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Cotizacion';
        memorydata.FieldByName('serie').AsString := cotcreado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := cotcreado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := cotcreado.FieldByName('fecha').AsString;
        memorydata.FieldByName('accion').AsString := 'Creado';
        memorydata.FieldByName('estado').AsString := cotcreado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := cotcreado.FieldByName('idcotizacion').AsString;
        memorydata.FieldByName('nota').AsString := cotcreado.FieldByName('comentarios').AsString;
        memorydata.Post;
        cotcreado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    cotcreado.Close;
    EliminarConjunto(cotcreado);
    cotcreado.Free;

    occreado := TClientDataSet.Create(nil);
    if not CrearConjunto(occreado,'alm_ordencompra',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_ordencompra.');
    occreado.close;
    CargarDatosFiltrados(occreado,'idusuario,fechaini,fechafin',[idusuario,fecha,fechaf],false);
    occreado.Open;

    if occreado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + occreado.RecordCount;
      occreado.First;
      while not occreado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Orden de compra';
        memorydata.FieldByName('serie').AsString := occreado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := occreado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := occreado.FieldByName('fecha').AsString;
        memorydata.FieldByName('accion').AsString := 'Creado';
        memorydata.FieldByName('estado').AsString := occreado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := occreado.FieldByName('idoc').AsString;
        memorydata.FieldByName('nota').AsString := occreado.FieldByName('nota1').AsString;
        memorydata.Post;
        occreado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    occreado.Close;
    EliminarConjunto(occreado);
    occreado.Free;

    entcreado := TClientDataSet.Create(nil);
    if not CrearConjunto(entcreado,'alm_entrada',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_entrada.');
    entcreado.close;
    CargarDatosFiltrados(entcreado,'idusuario,fechaini,fechafin',[idusuario,fecha,fechaf],false);
    entcreado.Open;

    if entcreado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + entcreado.RecordCount;
      entcreado.First;
      while not entcreado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Entrada';
        memorydata.FieldByName('serie').AsString := entcreado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := entcreado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := entcreado.FieldByName('fecha').AsString;
        memorydata.FieldByName('accion').AsString := 'Creado';
        memorydata.FieldByName('estado').AsString := entcreado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := entcreado.FieldByName('identrada').AsString;
        memorydata.FieldByName('nota').AsString := entcreado.FieldByName('comentarios').AsString;
        memorydata.Post;
        entcreado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    entcreado.Close;
    EliminarConjunto(entcreado);
    entcreado.Free;

    salcreado := TClientDataSet.Create(nil);
    if not CrearConjunto(salcreado,'alm_salida',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_salida.');
    salcreado.close;
    CargarDatosFiltrados(salcreado,'idusuario,fechaini,fechafin',[idusuario,fecha,fechaf],false);
    salcreado.Open;

    if salcreado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + salcreado.RecordCount;
      salcreado.First;
      while not salcreado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Salida';
        memorydata.FieldByName('serie').AsString := salcreado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := salcreado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := salcreado.FieldByName('fecha').AsString;
        memorydata.FieldByName('accion').AsString := 'Creado';
        memorydata.FieldByName('estado').AsString := salcreado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := salcreado.FieldByName('idsalida').AsString;
        memorydata.FieldByName('nota').AsString := salcreado.FieldByName('comentarios').AsString;
        memorydata.Post;
        salcreado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    salcreado.Close;
    EliminarConjunto(salcreado);
    salcreado.Free;

    controllogcreado := TClientDataSet.Create(nil);
    if not CrearConjunto(controllogcreado,'alm_controllogistica',cccatalog) then
      raise InteligentException.Create('Al usar la sentencia alm_controllogistica.');
    controllogcreado.close;
    CargarDatosFiltrados(controllogcreado,'idusuario,fechaini,fechafin',[idusuario,fecha,fechaf],false);
    controllogcreado.Open;

    if controllogcreado.RecordCount > 0 then
    begin
      progreso.Max := progreso.Max + controllogcreado.RecordCount;
      controllogcreado.First;
      while not controllogcreado.Eof do
      begin
        memorydata.Append;
        memorydata.FieldByName('nombrec').AsString := nombre;
        memorydata.FieldByName('cargo').AsString := cargo;
        memorydata.FieldByName('documento').AsString := 'Logística';
        memorydata.FieldByName('serie').AsString := controllogcreado.FieldByName('serie').asstring;
        memorydata.FieldByName('referencia').AsString := controllogcreado.FieldByName('referencia').asstring;
        memorydata.FieldByName('fecha').AsString := controllogcreado.FieldByName('fechaabierto').AsString+'-'+controllogcreado.FieldByName('fechacerrado').AsString;
        memorydata.FieldByName('accion').AsString := 'Creado';
        memorydata.FieldByName('estado').AsString := controllogcreado.FieldByName('estado').asstring;
        memorydata.FieldByName('id').AsString := controllogcreado.FieldByName('idcontrollogistica').AsString;
        memorydata.FieldByName('nota').AsString := controllogcreado.FieldByName('observaciones').AsString;
        memorydata.Post;
        controllogcreado.Next;
        progreso.Position := progreso.Position+1;
      end;

    end;
    controllogcreado.Close;
    EliminarConjunto(controllogcreado);
    controllogcreado.Free;

    Result := memorydata;
  except
    try
      solcreado.Free;
    except
      ;
    end;
    try
      solvalidado.Free;
    except
      ;
    end;
    try
      solverificado.Free;
    except
      ;
    end;
    try
      cotcreado.Free;
    except
      ;
    end;
    try
      occreado.Free;
    except
      ;
    end;
    try
      entcreado.Free;
    except
      ;
    end;
    try
      salcreado.Free;
    except
      ;
    end;
    try
      controllogcreado.Free;
    except
      ;
    end;
  end;

end;


procedure TFrmReportesGenerales.HabilitarGrupo;
begin
  grpArticulo.Visible := RbArticulos.Checked;
  GrpSubgrupo.Visible := RbSubgrupos.Checked;
  GrpGrupo.Visible := RbGrupos.Checked;
  GrpDisciplina.Visible := RbDisciplinas.Checked;
end;

procedure TFrmReportesGenerales.HabilitarCargo;
begin
  GrpUsuario.Visible := RbUsuario.Checked;
  GrpCargo.Visible := RbCargo.Checked;
end;

procedure TFrmReportesGenerales.imprimeentrada(id: string);
var
  cddatosdetalle:TClientDataSet;

begin
  try
    ReporteAux.Clear;
    ReporteAux.Assign(nil);
    cddatosdetalle := TClientDataSet.Create(nil);

    CrearConjunto(cdDatosDetalle, 'RepVale_Entrada', ccSelect);
    CargarDatosFiltrados(cdDatosDetalle, 'identrada', [id]);
    cdDatosDetalle.open;

    FrxDatasetAux.UserName := 'ReporteEntradaDetalle';
    FrxDatasetAux.DataSet := cdDatosDetalle;

    //validando existencia de reporte
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3') then
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3');

    //predefiniendo estilo
    ReporteAux.PreviewOptions.MDIChild := False ;
    ReporteAux.PreviewOptions.Modal := True ;
    ReporteAux.PreviewOptions.ShowCaptions := False ;
    ReporteAux.Previewoptions.ZoomMode := zmPageWidth ;

    //Asignar archivo
    ReporteAux.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'ValeEntradaSalida.fr3');

    clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
    clientModule1.cdOrganizacion.Prior;

    //pasar variable a reporte
    ReporteAux.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    ReporteAux.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    ReporteAux.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);

    clientModule1.cdOrganizacion.Last;
    ReporteAux.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);


    ReporteAux.Variables['tipo'] := QuotedStr('entrada');

    //mostrar reporte
    ReporteAux.ShowReport(False);
    cdDatosDetalle.close;
    EliminarConjunto(cdDatosDetalle);
    cddatosdetalle.Free;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      EliminarConjunto(cdDatosDetalle);
      cddatosdetalle.Free;
    end;
  end;
end;

procedure TFrmReportesGenerales.imprimecotizacion(id: string);
var
  cddatosdetalle,cdCotizacionDetalleRp:TClientDataSet;
  nombres,puestos: string;
  ListNombres, ListPuestos: TStringList;
begin
  try
    ReporteAux.Clear;
    ReporteAux.Assign(nil);
    cddatosdetalle:= TClientDataSet.Create(nil);
    CrearConjunto(cdDatosDetalle, 'alm_cotizacion', ccCatalog);
    CargarDatosFiltrados(cdDatosDetalle, 'IdCotizacion', [id]);
    cdDatosDetalle.Open;

    FrxDatasetAux.UserName := 'frdsCotizacion';
    FrxDatasetAux.DataSet := cdDatosDetalle;

    cdCotizacionDetalleRp:= TClientDataSet.Create(nil);
    CrearConjunto(cdCotizacionDetalleRp, 'alm_cotizaciondetalle', ccCatalog);
    CargarDatosFiltrados(cdCotizacionDetalleRp, 'idcotizacion', [id]);
    cdCotizacionDetalleRp.Open;

    FrxDatasetAux2.UserName := 'frdsCotizaciondetalle';
    FrxDatasetAux2.DataSet := cdCotizacionDetalleRp;


    if Not FileExists(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'COTIZACION.fr3') then
    begin
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                             ExtractFilePath(Application.ExeName)+'\Reportes\' + 'COTIZACION.fr3' );
    end;

    reporteaux.PreviewOptions.MDIChild := False ;
    reporteaux.PreviewOptions.Modal := True ;
    reporteaux.PreviewOptions.ShowCaptions := False ;
    reporteaux.Previewoptions.ZoomMode := zmPageWidth ;
    reporteaux.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'COTIZACION.fr3') ;

    ListNombres := TStringList.Create;
    ListPuestos := TStringList.Create;

    //lOCALIZANDO FlRMANTES
    if (length(Trim(cdDatosDetalle.FieldByName('firmanombre').AsString)) > 0) and
       (length(Trim(cdDatosDetalle.FieldByName('firmapuesto').AsString)) > 0) then
    begin
      nombres := cdDatosDetalle.FieldByName('firmanombre').AsString;
      puestos := cdDatosDetalle.FieldByName('firmapuesto').AsString;

      nombres := AnsiReplaceStr( nombres, ',', '.' );// devuelve: nombre sin
      nombres := AnsiReplaceStr( nombres, '|', ',' );
      nombres := AnsiReplaceStr( nombres, '"', '' );
      nombres := AnsiReplaceStr( nombres, ' ', '_' );

      ListNombres.CommaText := nombres;

      puestos := AnsiReplaceStr( puestos, ',', '.' );// devuelve: nombre sin
      puestos := AnsiReplaceStr( puestos, '|', ',' );
      puestos := AnsiReplaceStr( puestos, '"', '' );
      puestos := AnsiReplaceStr( puestos, ' ', '_' );


      ListPuestos.CommaText := puestos;
    end;



    //nueva forma de enviar variables a fast report, declarando las variables en el fr3
    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
    clientModule1.cdOrganizacion.First;
    reporteaux.Variables['rfc'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('rfc').AsString);
    reporteaux.Variables['domiciliofiscalorg'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('domiciliofiscalorg').AsString);
    reporteaux.Variables['domicilioorg'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('domicilioorg').AsString);
    reporteaux.Variables['telefono1'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('telefono1').AsString);

    clientModule1.cdOrganizacion.Last;
    reporteaux.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    clientModule1.cdOrganizacion.Prior;
    reporteaux.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    reporteaux.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    reporteaux.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);

    if (ListNombres.Count > 0) and (ListPuestos.Count > 0) then
    begin


      reporteaux.Variables['solicitonombre'] := QuotedStr(AnsiReplaceStr( ListNombres[1], '_', ' ' ));
      reporteaux.Variables['solicitopuesto'] := QuotedStr(AnsiReplaceStr( ListPuestos[1], '_', ' ' ));
      if ListPuestos.Count > 1 then
      begin
        reporteaux.Variables['autorizonombre'] := QuotedStr(AnsiReplaceStr( ListNombres[0], '_', ' ' ));
        reporteaux.Variables['autorizopuesto'] := QuotedStr(AnsiReplaceStr( ListPuestos[0], '_', ' ' ));
      end;

    end
    else
    begin
      reporteaux.Variables['solicitonombre'] := QuotedStr(' ');
      reporteaux.Variables['solicitopuesto'] := QuotedStr(' ');
      reporteaux.Variables['autorizonombre'] := QuotedStr(' ');
      reporteaux.Variables['autorizopuesto'] := QuotedStr(' ');
    end;

    reporteaux.ShowReport(False);

    cdCotizacionDetalleRp.Close;
    cdDatosDetalle.Close;
    EliminarConjunto([cdDatosDetalle.ProviderName, cdCotizacionDetalleRp.ProviderName]);
    ListNombres.Free;
    ListPuestos.Free;
    cdCotizacionDetalleRp.Free;
    cddatosdetalle.Free;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      cdCotizacionDetalleRp.Close;
      cdDatosDetalle.Close;
      EliminarConjunto([cdDatosDetalle.ProviderName, cdCotizacionDetalleRp.ProviderName]);
      ListNombres.Free;
      ListPuestos.Free;
      cdCotizacionDetalleRp.Free;
      cddatosdetalle.Free;
    end;
  End;
end;

procedure TFrmReportesGenerales.imprimeoc(id: string);
var
  nombres,puestos,letranum: string;
  ListNombres, ListPuestos: TStringList;
  CantidadT: Real;
  cdoc,cdocdetalle:tclientdataset;
begin
  Try
    ReporteAux.Clear;
    ReporteAux.Assign(nil);
    CdOC:=TClientDataSet.Create(nil);
    CrearConjunto(CdOC, 'RepOrdenCompra', ccCatalog);
    CargarDatosFiltrados(CdOC, 'idoc', [id]);
    CdOC.Open;

    FrxDatasetAux.UserName := 'frdsOC';
    FrxDatasetAux.DataSet := CdOC;

    CdOCdetalle:=TClientDataSet.Create(nil);
    CrearConjunto(CdOCdetalle, 'RepOrdenCompra', ccSelect);
    CargarDatosFiltrados(CdOCdetalle, 'Idoc', [id]);
    CdOCdetalle.Open;

    FrxDatasetAux2.UserName := 'frdsOCdetalles';
    FrxDatasetAux2.DataSet := CdOCdetalle;

    if Not FileExists(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'Ordencompra.fr3') then
    begin
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                             ExtractFilePath(Application.ExeName)+'\Reportes\' + 'Ordencompra.fr3' );
    end;

    ReporteAux.PreviewOptions.MDIChild := False ;
    reporteaux.PreviewOptions.Modal := True ;
    reporteaux.PreviewOptions.ShowCaptions := False ;
    reporteaux.Previewoptions.ZoomMode := zmPageWidth ;
    reporteaux.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'Ordencompra.fr3') ;

    ListNombres := TStringList.Create;
    ListPuestos := TStringList.Create;

    ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);

    clientModule1.cdOrganizacion.First;
    reporteaux.Variables['rfc'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('rfc').AsString);
    reporteaux.Variables['domiciliofiscalorg'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('domiciliofiscalorg').AsString);
    reporteaux.Variables['domicilioorg'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('domicilioorg').AsString);
    reporteaux.Variables['telefono1'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('telefono1').AsString);

    clientModule1.cdOrganizacion.Last;
    reporteaux.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

    clientModule1.cdOrganizacion.Prior;
    reporteaux.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    reporteaux.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    reporteaux.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);

    CantidadT := 0;
    CdOCdetalle.First;
    while not cdocdetalle.Eof  do
    begin
      CantidadT := CantidadT + CdOCdetalle.FieldByName('costo').AsFloat+CdOCdetalle.FieldByName('tasa').AsFloat;
      CdOCdetalle.Next;
    end;
    letranum := LetrasNumeros(CantidadT, '','',2);
    reporteaux.Variables['numerotexto'] := QuotedStr(letranum);

    reporteaux.ShowReport(False);

    CdOCdetalle.Close;
    CdOC.Close;
    EliminarConjunto([CdOCdetalle.ProviderName, CdOc.ProviderName]);
    ListNombres.Free;
    ListPuestos.Free;
    cdocdetalle.Free;
    cdoc.Free;

  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      CdOCdetalle.Close;
      EliminarConjunto([CdOCdetalle.ProviderName, CdOc.ProviderName]);
      ListNombres.Free;
      ListPuestos.Free;
      cdocdetalle.Free;
      cdoc.Free;
    end;
  End;
end;

procedure TFrmReportesGenerales.imprimeLogistica(id: string);
var
  Aereo:Boolean;
  reporte: string;
  cdFirmantes, cdreporte,cdcontrol: TClientDataSet;
begin
  Try
    ReporteAux.Clear;
    ReporteAux.Assign(nil);

    cdcontrol:= TClientDataSet.Create(nil);
    CrearConjunto(cdcontrol, 'alm_controllogistica',  ccCatalog);
    CargarDatosFiltrados(cdcontrol, 'idcontrollogistica', [id]);
    cdcontrol.Open;

    FrxDatasetAux2.UserName := 'ReporteEncabezado';
    FrxDatasetAux2.DataSet := cdcontrol;

    cdreporte:=TClientDataSet.Create(nil);
    CrearConjunto(cdReporte, 'Rep_embarque',  ccSelect);
    CargarDatosFiltrados(cdreporte, 'idcontrollogistica', [id]);
    cdreporte.Open;

    FrxDatasetAux.UserName := 'Reporte';
    FrxDatasetAux.DataSet := cdreporte;

    if LowerCase(cdreporte.FieldByName('tipo').AsString) = 'aereo' then
      aereo := True
    else
      Aereo := false;

    if not Aereo then
      reporte  :=  'Reportes\PartidasEmbarque.fr3'
    else
      reporte := 'Reportes\EmbarqueAereo.fr3';

    if Not FileExists(ExtractFilePath(Application.ExeName) + reporte) then
    begin
    Raise InteligentException.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                             ExtractFilePath(Application.ExeName)+reporte );
    end;

    ReporteAux.PreviewOptions.MDIChild := False ;
    ReporteAux.PreviewOptions.Modal := True ;
    ReporteAux.PreviewOptions.ShowCaptions := False ;
    ReporteAux.Previewoptions.ZoomMode := zmPageWidth ;

    ReporteAux.LoadFromFile(ExtractFilePath(Application.ExeName)+'\'+reporte);

    if aereo then
    begin
      cdFirmantes := TClientDataSet.Create(nil);
      cdFirmantes.Active := False;

      CrearConjunto(cdFirmantes,'nuc_firmante',ccCatalog);
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[-9],false);
      cdFirmantes.Open;

      //Localizar embarcador
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[cdcontrol.FieldByName('idembarcador').AsInteger],false);
      cdFirmantes.Refresh;   //nombrecompleto titulocargo
      ReporteAux.Variables['nombreembarcador'] := QuotedStr(cdFirmantes.FieldByName('nombrecompleto').AsString);
      ReporteAux.Variables['cargoembarcador'] := QuotedStr(cdFirmantes.FieldByName('titulocargo').AsString);

      //Localizar autorizo
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[cdcontrol.FieldByName('idautorizo').AsInteger],false);
      cdFirmantes.Refresh;
      ReporteAux.Variables['nombreautorizo'] := QuotedStr(cdFirmantes.FieldByName('nombrecompleto').AsString);
      ReporteAux.Variables['cargoautorizo'] := QuotedStr(cdFirmantes.FieldByName('titulocargo').AsString);

      //Localizar vobo1
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[cdcontrol.FieldByName('idvb1').AsInteger],false);
      cdFirmantes.Refresh;
      ReporteAux.Variables['nombrevobo1'] := QuotedStr(cdFirmantes.FieldByName('nombrecompleto').AsString);
      ReporteAux.Variables['cargovobo1'] := QuotedStr(cdFirmantes.FieldByName('titulocargo').AsString);

      //Localizar embarcacion
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[cdcontrol.FieldByName('idembarcacion').AsInteger],false);
      cdFirmantes.Refresh;
      ReporteAux.Variables['nombreembarcacion'] := QuotedStr(cdFirmantes.FieldByName('nombrecompleto').AsString);
      ReporteAux.Variables['cargoembarcacion'] := QuotedStr(cdFirmantes.FieldByName('titulocargo').AsString);

      //Localizar recepcion
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[cdcontrol.FieldByName('idrecepcion').AsInteger],false);
      cdFirmantes.Refresh;
      ReporteAux.Variables['nombrerecepcion'] := QuotedStr(cdFirmantes.FieldByName('nombrecompleto').AsString);
      ReporteAux.Variables['cargorecepcion'] := QuotedStr(cdFirmantes.FieldByName('titulocargo').AsString);

      //Localizar vobo2
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[cdcontrol.FieldByName('idvb2').AsInteger],false);
      cdFirmantes.Refresh;
      ReporteAux.Variables['nombrevobo2'] := QuotedStr(cdFirmantes.FieldByName('nombrecompleto').AsString);
      ReporteAux.Variables['cargovobo2'] := QuotedStr(cdFirmantes.FieldByName('titulocargo').AsString);

      //Localizar plataforma
      CargarDatosFiltrados(cdFirmantes,'idfirmante',[cdcontrol.FieldByName('idplataforma').AsInteger],false);
      cdFirmantes.Refresh;
      ReporteAux.Variables['nombreplataforma'] := QuotedStr(cdFirmantes.FieldByName('nombrecompleto').AsString);
      ReporteAux.Variables['cargoplataforma'] := QuotedStr(cdFirmantes.FieldByName('titulocargo').AsString);


    end
    else
    begin
      //nueva forma de enviar variables a fast report, declarando las variables en el fr3
      ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
      clientModule1.cdOrganizacion.Last;
      ReporteAux.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
      clientModule1.cdOrganizacion.Prior;
      ReporteAux.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

      ReporteAux.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
      ReporteAux.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
      ReporteAux.Variables['entreganombre'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
      ReporteAux.Variables['entregacargo'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);
    end;

    ReporteAux.ShowReport(False);
    cdreporte.Close;
    EliminarConjunto(cdreporte.ProviderName);
    cdreporte.free;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      cdreporte.Close;
      EliminarConjunto(cdreporte.ProviderName);
      cdreporte.free;
      exit;
    end;
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al imprimir.',e.message, mtError, [mbOk], 0);
      cdreporte.Close;
      EliminarConjunto(cdreporte.ProviderName);
      cdreporte.free;
      exit;
    end;
  End;
end;

procedure TFrmReportesGenerales.imprimesalida(id: string);
var
  nombres,puestos: string;
  ListNombres, ListPuestos: TStringList;
  cddatosdetalle:TClientDataSet;
begin
  try
    ReporteAux.Clear;
    ReporteAux.Assign(nil);
    cddatosdetalle := TClientDataSet.Create(nil);

    CrearConjunto(cdDatosDetalle, 'RepVale_Salida',  ccSelect);
    CargarDatosFiltrados(cdDatosDetalle, 'idsalida', [id]);
    cdDatosDetalle.open;

    FrxDatasetAux.UserName := 'ReporteEntradaDetalle';
    FrxDatasetAux.DataSet := cdDatosDetalle;

    //validando existencia de reporte
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3') then
      Raise Exception.Create('No he podido localizar el el formato básico para la generación de este reporte:'+
                               ExtractFilePath(Application.ExeName) + 'Reportes\ValeEntradaSalida.fr3');

    //predefiniendo estilo
    ReporteAux.PreviewOptions.MDIChild := False ;
    ReporteAux.PreviewOptions.Modal := True ;
    ReporteAux.PreviewOptions.ShowCaptions := False ;
    ReporteAux.Previewoptions.ZoomMode := zmPageWidth ;

    //Asignar archivo
    ReporteAux.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'ValeEntradaSalida.fr3');

    clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
    clientModule1.cdOrganizacion.Prior;

    ListNombres := TStringList.Create;
    ListPuestos := TStringList.Create;

    //lOCALIZANDO FlRMANTES
    if (length(Trim(cdDatosDetalle.FieldByName('firmanombre').AsString)) > 0) and
       (length(Trim(cdDatosDetalle.FieldByName('firmapuesto').AsString)) > 0) then
    begin
      nombres := cdDatosDetalle.FieldByName('firmanombre').AsString;
      puestos := cdDatosDetalle.FieldByName('firmapuesto').AsString;

      nombres := AnsiReplaceStr( nombres, ',', '.' );// devuelve: nombre sin
      nombres := AnsiReplaceStr( nombres, '|', ',' );
      nombres := AnsiReplaceStr( nombres, '"', '' );
      nombres := AnsiReplaceStr( nombres, ' ', '_' );

      ListNombres.CommaText := nombres;

      puestos := AnsiReplaceStr( puestos, ',', '.' );// devuelve: nombre sin
      puestos := AnsiReplaceStr( puestos, '|', ',' );
      puestos := AnsiReplaceStr( puestos, '"', '' );
      puestos := AnsiReplaceStr( puestos, ' ', '_' );

      ListPuestos.CommaText := puestos;
    end;

    //pasar variable a reporte
    ReporteAux.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
    ReporteAux.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
    ReporteAux.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
    ReporteAux.Variables['tipo'] := QuotedStr('salida');
    clientModule1.cdOrganizacion.Last;
    ReporteAux.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

    if (ListNombres.Count > 0) and (ListPuestos.Count > 0) then
    begin

      ReporteAux.Variables['nombreautorizo'] := QuotedStr(AnsiReplaceStr( ListNombres[0], '_', ' ' ));

      try
        ReporteAux.Variables['nombreentrego'] := QuotedStr(AnsiReplaceStr( ListNombres[1], '_', ' ' ));
      except
        ;
      end;

      try
        ReporteAux.Variables['nombrerecibio'] := QuotedStr(AnsiReplaceStr( ListNombres[2], '_', ' ' ));
      except
        ;
      end;

      if ListPuestos.Count > 1 then
      begin
        ReporteAux.Variables['cargoautorizo'] := QuotedStr(AnsiReplaceStr( ListPuestos[0], '_', ' ' ));

        try
          ReporteAux.Variables['cargoentrego'] := QuotedStr(AnsiReplaceStr( ListPuestos[1], '_', ' ' ));
        except
          ;
        end;

        try
          ReporteAux.Variables['cargorecibio'] := QuotedStr(AnsiReplaceStr( ListPuestos[2], '_', ' ' ));
        except
          ;
        end;
      end;

    end
    else
    begin
      ReporteAux.Variables['nombreautorizo'] := QuotedStr(' ');
      ReporteAux.Variables['cargoautorizo'] := QuotedStr(' ');
      ReporteAux.Variables['nombreentrego'] := QuotedStr(' ');
      ReporteAux.Variables['cargoentrego'] := QuotedStr(' ');
      ReporteAux.Variables['nombrerecibio'] := QuotedStr(' ');
      ReporteAux.Variables['cargorecibio'] := QuotedStr(' ');
    end;

    //mostrar reporte
    ReporteAux.ShowReport(False);
    cdDatosDetalle.close;
    EliminarConjunto(cdDatosDetalle.ProviderName);
    cddatosdetalle.Free;

    listnombres.free;
    listpuestos.free;

  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);

      try
        EliminarConjunto(cdDatosDetalle.ProviderName);
        listnombres.free;
        listpuestos.free;

        EliminarConjunto(cdDatosDetalle);
        cddatosdetalle.Free;
      finally
        ;
      end;
      exit;
    end;
  end;
end;

procedure TFrmReportesGenerales.imprimesolicitud(id: string);
var
  nombres,puestos: string;
  ListNombres, ListPuestos: TStringList;
  cddatosdetalle:TClientDataSet;
begin
  try
    ReporteAux.Clear;
    ReporteAux.Assign(nil);
    cddatosdetalle := TClientDataSet.Create(nil);

    FrxDatasetAux.UserName := 'ReporteSolicitudDetalle';
    FrxDatasetAux.DataSet := cdDatosDetalle;

    CrearConjunto(cdDatosDetalle, 'RepAlm_solicitud',  ccSelect);
    CargarDatosFiltrados(cdDatosDetalle, 'idsolicitud', [id]);
    cdDatosDetalle.Open;

    if cddatosdetalle.RecordCount > 0 then
    begin

      if (LowerCase(cdDatosDetalle.FieldByName('estado').AsString) = 'pendiente') or
         (LowerCase(cdDatosDetalle.FieldByName('estado').AsString) = 'validado')  then
      begin
        if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\SolicitudDetalle.fr3') then
        begin
        Raise Exception.Create('No he podido localizar el formato básico para la generación de este reporte:'+
                                 ExtractFilePath(Application.ExeName)+'Reportes\SolicitudDetalle.fr3' );
        end;
      end
      else
      begin
        if Not FileExists(ExtractFilePath(Application.ExeName) + 'Reportes\SolicitudReq.fr3') then
        begin
          Raise Exception.Create('No he podido localizar el formato básico para la generación de este reporte:'+
                                 ExtractFilePath(Application.ExeName) + 'Reportes\SolicitudReq.fr3');
        end;
      end;


      ReporteAux.PreviewOptions.MDIChild := False ;
      ReporteAux.PreviewOptions.Modal := True ;
      ReporteAux.PreviewOptions.ShowCaptions := False ;
      ReporteAux.Previewoptions.ZoomMode := zmPageWidth ;

      if (LowerCase(cdDatosDetalle.FieldByName('estado').AsString) = 'pendiente') or
         (LowerCase(cdDatosDetalle.FieldByName('estado').AsString) = 'validado') then  // La pantalla es la de solicitudes
        ReporteAux.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'SolicitudDetalle.fr3')
      else
        if (cdDatosDetalle.FieldByName('estado').AsString = 'verificado') or (cdDatosDetalle.FieldByName('estado').AsString = 'requisitado') then
          ReporteAux.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'SolicitudReq.fr3')
        else
          Raise Exception.Create('La solicitud tiene que estar pendiente, validado o verificada para poder imprimir la requisición.');


      //nueva forma de enviar variables a fast report, declarando las variables en el fr3
      ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
      clientModule1.cdOrganizacion.Last;
      ReporteAux.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
      clientModule1.cdOrganizacion.Prior;
      ReporteAux.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);

      ReporteAux.Variables['nivel'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('titulonivel').AsString);
      ReporteAux.Variables['contrato'] := QuotedStr(ClientModule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
      ReporteAux.Variables['usuario'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
      ReporteAux.Variables['cargousuario'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);
      ReporteAux.Variables['solicitonombre'] := QuotedStr(cdDatosDetalle.FieldByName('solicitonombre').AsString);
      ReporteAux.Variables['solicitocargo'] := QuotedStr(cdDatosDetalle.FieldByName('solicitocargo').AsString);

      ReporteAux.Variables['validonombre'] := QuotedStr(cdDatosDetalle.FieldByName('validonombre').AsString);
      ReporteAux.Variables['validocargo'] := QuotedStr(cdDatosDetalle.FieldByName('validocargo').AsString);
      ReporteAux.Variables['verificonombre'] := QuotedStr(cdDatosDetalle.FieldByName('verificonombre').AsString);
      ReporteAux.Variables['verificocargo'] := QuotedStr(cdDatosDetalle.FieldByName('verificocargo').AsString);
      {if AnsiCompareText(cmbFiltroEstado.Items[cmbFiltroEstado.ItemIndex],'Para surtimento') = 0 then   }
      ReporteAux.Variables['TipoRep'] := QuotedStr('SURTIR');

      ReporteAux.ShowReport(False);
      cdDatosDetalle.Close;
      EliminarConjunto(cdDatosDetalle.ProviderName);
      cddatosdetalle.Free;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);

      try
        EliminarConjunto(cdDatosDetalle.ProviderName);
        listnombres.free;
        listpuestos.free;

        EliminarConjunto(cdDatosDetalle);
        cddatosdetalle.Free;
      finally
        ;
      end;
      exit;
    end;
  end;
end;

procedure TFrmReportesGenerales.RbArticulosClick(Sender: TObject);
begin
  HabilitarGrupo;
end;

procedure TFrmReportesGenerales.RbUsuarioClick(Sender: TObject);
begin
  HabilitarCargo;
end;

end.
