unit UTFrmDatosArticulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  DBClient, JvExMask, JvToolEdit, JvDBControls, pngimage, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, UIntelidialog,
  AdvShapeButton, NxEdit, AdvSmoothTabPager, JvExControls, JvLabel,
  AdvOfficeButtons, DBAdvOfficeButtons, JvDBImage, ExtDlgs,jpeg, ComCtrls,
  AppEvnts, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  cxButtons, cxGroupBox;

type
  TFrmDatosArticulo = class(TFrmDatosCatalogo)
    editCodigo: TDBEdit;
    editTitulo: TDBEdit;
    rAgrupacion: TDBRadioGroup;
    cdUnidad: TClientDataSet;
    dsUnidad: TDataSource;
    dsSubgrupo: TDataSource;
    cdSubgrupo: TClientDataSet;
    EditTituloSubgrupo: TEdit;
    DBEditIdSubgrupo: TDBEdit;
    BtnFindDisciplina: TBitBtn;
    EditCodigoSubgrupo: TEdit;
    EditCodigoUnidad: TEdit;
    BtnFindUnidad: TBitBtn;
    DBEditIdUnidad: TDBEdit;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image5: TImage;
    DateFechaCreacion: TJvDBDatePickerEdit;
    tab1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    AdvSmoothTabPager12: TAdvSmoothTabPage;
    edtTituloUnidad: TEdit;
    lbl5: TJvLabel;
    lbl6: TJvLabel;
    lbl7: TJvLabel;
    lbl8: TJvLabel;
    lbl9: TJvLabel;
    lbl12: TJvLabel;
    lbl10: TJvLabel;
    lbl11: TJvLabel;
    lbl2: TJvLabel;
    edtCodigoImpuesto: TEdit;
    btnFindImpuesto: TBitBtn;
    img1: TImage;
    edtTituloImpuesto: TEdit;
    Imagen: TJvDBImage;
    Button2: TButton;
    Button1: TButton;
    DlgSave: TSavePictureDialog;
    memcomentarios: TDBRichEdit;
    MDescripcion: TDBRichEdit;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAddNewClick(Sender: TObject);
    procedure DBEditIdSubgrupoChange(Sender: TObject);
    procedure DBEditIdUnidadChange(Sender: TObject);
    procedure BtnFindDisciplinaClick(Sender: TObject);
    procedure BtnFindUnidadClick(Sender: TObject);
    procedure EditCodigoSubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigoUnidadKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRecClick(Sender: TObject);
    procedure ImgPathKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoImpuestoKeyPress(Sender: TObject; var Key: Char);
    procedure btnFindImpuestoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    unidadProvName: string;
    subGrupoProvName: string;
  public
    { Public declarations }
  end;

var
  FrmDatosArticulo: TFrmDatosArticulo;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1,xDatabase, UTFrmSubgrupos, UTFrmUnidades, UTFrmImpuestos,UTFrmCargaImagen;

procedure TFrmDatosArticulo.BtnFindUnidadClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmUnidades;
begin
  try
    tForm := TFrmUnidades.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idunidad').AsString := registro.Valor['idunidad'];
      EditCodigoUnidad.Text := registro.Valor['codigounidad'];
      EdtTituloUnidad.Text := registro.Valor['titulounidad'];
      editCodigo.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosArticulo.BtnAddNewClick(Sender: TObject);
begin
  tab1.ActivePageIndex := 0;
  if     Length(Trim(DsDatos.DataSet.FieldByName('agrupacion').AsString)) = 0 then
  begin
    InteliDialog.ShowModal('seleccione una agrupación.','', mtInformation, [mbOk], 0);
    rAgrupacion.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(EditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(EditTitulo, 'Título') = False then
    exit;
  if ClientModule1.VerificaVacio(DateFechaCreacion, 'Fecha de Creación') = False then
    exit;
  if length(dbeditIdsubgrupo.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un subgrupo.','', mtInformation, [mbOk], 0);
    editcodigosubgrupo.SetFocus;
  end;
  if length(dbeditIdUnidad.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione una unidad.','', mtInformation, [mbOk], 0);
    editcodigounidad.SetFocus;
  end;
  inherited;

end;

procedure TFrmDatosArticulo.BtnFindDisciplinaClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmSubgrupos;
begin
  try
    tForm := TFrmSubgrupos.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idsubgrupo').AsString := registro.Valor['idsubgrupo'];
      EditCodigoSubgrupo.Text := registro.Valor['codigosubgrupo'];
      EditTituloSubgrupo.Text := registro.Valor['titulosubgrupo'];
      EditCodigoUnidad.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmDatosArticulo.btnFindImpuestoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmImpuesto;
begin
  try
    tForm := TFrmImpuesto.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idimpuesto').AsInteger := registro.Valor['idimpuesto'];
      EdtCodigoImpuesto.Text := registro.Valor['codigoimpuesto'];
      EdtTituloImpuesto.Text := registro.Valor['tituloimpuesto'];
      EdtCodigoImpuesto.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosArticulo.BtnRecClick(Sender: TObject);
begin
  tab1.ActivePageIndex := 0;

  if Length(Trim(DsDatos.DataSet.FieldByName('agrupacion').AsString)) = 0 then
  begin
    InteliDialog.ShowModal('seleccione una agrupación.','', mtInformation, [mbOk], 0);
    rAgrupacion.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(EditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(EditTitulo, 'Título') = False then
    exit;
  if ClientModule1.VerificaVacio(DateFechaCreacion, 'Fecha de Creación') = False then
    exit;
  if length(dbeditIdsubgrupo.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un subgrupo.','', mtInformation, [mbOk], 0);
    editcodigosubgrupo.SetFocus;
    exit;
  end;
  if length(dbeditIdUnidad.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione una unidad.','', mtInformation, [mbOk], 0);
    editcodigounidad.SetFocus;
    exit;
  end;
  if dsDatos.DataSet.FieldByName('idimpuesto').AsInteger < 1 then
  begin
    InteliDialog.ShowModal('Indique un tipo de impuesto para el artículo.','', mtInformation, [mbOk], 0);
    edtcodigoimpuesto.SetFocus;
    exit;
  end;

  inherited;
end;

procedure TFrmDatosArticulo.Button1Click(Sender: TObject);
var
  ex:string;
  tms:TMemoryStream;
  bf: Word;
begin

    tms:= TMemoryStream.Create;

    TBlobField(dsdatos.DataSet.FieldByName('imagen')).SaveToStream(tms);

    tms.Seek(0, soFromBeginning);
    if tms.Read(bf,4) > 0 then
    begin
      case bf of
        // BMP
        $4D42: begin
                 ex := '.bmp';
               end;
        // icono
        $0000: begin
                 ex:= '.ico';
               end;
        // WMF
//        $0001,$CDD7: ;
        // JPG
        $D8FF: begin
          ex := '.jpg';

        end
      end;
    end;


  DlgSave.Filter := '(*'+ex+')|*'+ex;

  if dlgsave.Execute then
  Begin
    TBlobField(dsdatos.DataSet.FieldByName('imagen')).SaveToFile(DlgSave.FileName+ex);
    InteliDialog.ShowModal('Informaciòn:','imagen descargada: '+DlgSave.FileName, mtInformation, [mbOk], 0);
  End
  else
    InteliDialog.ShowModal('Informaciòn:','Proceso cancelado por el usuario.', mtInformation, [mbOk], 0);
end;

procedure TFrmDatosArticulo.Button2Click(Sender: TObject);
var
  frmimagen:TFrmCargaImagen;
begin

  try
    try
      frmimagen := TFrmCargaImagen.Create(nil);
      frmimagen.ShowModal;
      if not frmimagen.cancelado then
      begin
        TBlobField(dsdatos.DataSet.FieldByName('imagen')).LoadFromStream(frmimagen.MemorySTResultante);
      end;
    finally
      frmimagen.Free;
    end;
  Except
    on e:Exception do
    InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmDatosArticulo.CheckBox1Click(Sender: TObject);
begin
  inherited;
   if checkbox1.Checked=true then
   begin
     dsdatos.DataSet.FieldByName('consumible').AsString:='Si';
   end
   else
   begin
     dsdatos.DataSet.FieldByName('consumible').AsString:='Si';
   end;
end;

procedure TFrmDatosArticulo.DBEditIdSubgrupoChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdSubgrupo.Text)) > 0 then
  begin
    if cdsubgrupo.State <> dsBrowse then
    begin
      CrearConjunto(cdSubgrupo, 'alm_subgrupo', providername, ccCatalog);
      cdSubgrupo.Open;
    end;
    CargarDatosFiltrados(cdSubgrupo, 'idsubgrupo', [dsDatos.DataSet.FieldByName('idsubgrupo').AsInteger]);
    cdSubgrupo.refresh;
    editCodigoSubgrupo.Text := cdSubgrupo.FieldByName('codigosubgrupo').AsString;
    editTituloSubgrupo.Text := cdSubgrupo.FieldByName('titulosubgrupo').AsString;
  end;
end;

procedure TFrmDatosArticulo.DBEditIdUnidadChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdUnidad.Text)) > 0 then
  begin
    if cdUnidad.State <> dsBrowse then
    begin
      CrearConjunto(cdUnidad, 'nuc_unidad', providername, ccCatalog);
      cdUnidad.Open;
    end;
    CargarDatosFiltrados(cdUnidad, 'idunidad', [dsDatos.DataSet.FieldByName('idunidad').AsInteger]);
    cdUnidad.refresh;
    editCodigoUnidad.Text := cdUnidad.FieldByName('codigounidad').AsString;
    edtTituloUnidad.Text := cdUnidad.FieldByName('titulounidad').AsString;
  end;
end;

procedure TFrmDatosArticulo.EditCodigoSubgrupoKeyPress(Sender: TObject;
  var Key: Char);
  var providername: String;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdsubgrupo.State <> dsBrowse then
    begin
      CrearConjunto(cdSubgrupo, 'alm_subgrupo', providername, ccCatalog);
      cdSubgrupo.Open;
    end;
    CargarDatosFiltrados(cdSubgrupo, 'codigosubgrupo', [tEdit(sender).Text]);
    cdSubgrupo.refresh;
    if cdSubgrupo.RecordCount = 1 then
    begin
      editCodigoSubgrupo.Text := cdSubgrupo.FieldByName('codigosubgrupo').AsString;
      editTituloSubgrupo.Text := cdSubgrupo.FieldByName('titulosubgrupo').AsString;
      dsDatos.DataSet.FieldByName('idsubgrupo').AsInteger := cdSubgrupo.FieldByName('idsubgrupo').AsInteger;
      EditCodigoUnidad.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de subgrupo ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindDisciplina.Click;
  end;
end;

procedure TFrmDatosArticulo.EditCodigoUnidadKeyPress(Sender: TObject;
  var Key: Char);
  var Providername: String;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdUnidad.State <> dsBrowse then
    begin
      CrearConjunto(cdUnidad, 'nuc_unidad', providername, ccCatalog);
      cdUnidad.Open;
    end;
    CargarDatosFiltrados(cdUnidad, 'codigounidad', [tEdit(sender).Text]);
    cdUnidad.refresh;
    if cdUnidad.RecordCount = 1 then
    begin
      editCodigoUnidad.Text := cdUnidad.FieldByName('codigounidad').AsString;
      edtTituloUnidad.Text := cdUnidad.FieldByName('titulounidad').AsString;
      dsDatos.DataSet.FieldByName('idunidad').AsInteger := cdUnidad.FieldByName('idunidad').AsInteger;
      editCodigo.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de unidad ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindUnidad.Click;
  end;
end;

procedure TFrmDatosArticulo.edtCodigoImpuestoKeyPress(Sender: TObject; var Key: Char);
Var
  cdImpuesto: TClientDataSet;
  Encontrado: Boolean;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    cdImpuesto := TClientDataSet.Create(nil);
    CrearConjunto(cdImpuesto,'nuc_impuesto',ccCatalog);
    CargarDatosFiltrados(cdImpuesto,'codigoimpuesto',[Trim(tEdit(sender).Text) + '%']);
    cdImpuesto.Open;
    if cdImpuesto.RecordCount = 1 then  // si obtengo un solo resultado, es el que solicité
    begin
      edtCodigoImpuesto.Text := cdImpuesto.FieldByName('codigoimpuesto').AsString;
      edtTituloImpuesto.Text := cdImpuesto.FieldByName('tituloimpuesto').AsString;
      dsDatos.DataSet.FieldByName('idimpuesto').AsInteger := cdImpuesto.FieldByName('idimpuesto').AsInteger;
      Encontrado := true;
    end
    else
      Encontrado := false;

    cdImpuesto.Close;
    EliminarConjunto(cdImpuesto);
    cdImpuesto.Free;

    if not Encontrado then  // si no lo encontré, buscar en todo el catálogo
      btnFindImpuesto.Click;
  end;
end;

procedure TFrmDatosArticulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EliminarConjunto(unidadProvName);
  EliminarConjunto(subGrupoProvName);
  LiberarVentana(Self, Action);
end;

procedure TFrmDatosArticulo.FormShow(Sender: TObject);
var
  st: tStream;
begin
  inherited;
  st := tstream.Create;
  if DsDatos.DataSet.State = dsInsert then
  begin
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
    DsDatos.DataSet.FieldByName('agrupacion').AsString := 'normal';
    dsDatos.DataSet.FieldByName('fechacreacion').AsDateTime := Now;
    dsdatos.DataSet.FieldByName('consumible').AsString:='Si';
    checkbox1.Checked:=true;
  end;

  if DsDatos.DataSet.State = dsInsert then
  begin
    if dsdatos.DataSet.FieldByName('consumible').AsString='Si' then
    begin
      checkbox1.Checked:=true;
    end
    else
    begin
       checkbox1.Checked:=false;
    end;
  end;


  st.free;
  tab1.ActivePageIndex := 0;
  rAgrupacion.Color := cl3DLight;
  EditCodigo.SetFocus;
end;

procedure TFrmDatosArticulo.ImgPathKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

end.
