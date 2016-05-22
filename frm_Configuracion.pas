unit frm_Configuracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, DBClient, ExtDlgs, StdCtrls, Buttons, AdvGlowButton,
  ExtCtrls, AdvPicture, Jpeg, ComCtrls,UInteliDialog, JvExControls, JvColorBox,
  JvColorButton, AdvSelectors, ActnMan, ActnColorMaps, AdvShapeButton, NxEdit,
  Grids, DBGrids, URegistro, JvExStdCtrls, JvCombobox, JvDBImage,UTFrmCargaImagen,
  Spin, JvLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, cxStyles, cxVGrid, cxDBVGrid, cxInplaceContainer, Menus, cxButtons;

type
  TFrmConfiguracion = class(TForm)
    cdConfiguracion: TClientDataSet;
    dsConfiguracion: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    cdImagen1: TClientDataSet;
    Panel3: TPanel;
    Panel4: TPanel;
    cbDatabase: TComboBox;
    Libro: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel1: TPanel;
    Imagen1: TImage;
    AdvGlowButton2: TAdvGlowButton;
    BitBtn1: TBitBtn;
    PGeneral: TTabSheet;
    Panel5: TPanel;
    cdNucConfiguracion: TClientDataSet;
    PApariencia: TTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    CbComponente: TComboBox;
    ColorBox1: TColorBox;
    Image1: TImage;
    BtnAdd: TAdvShapeButton;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    AdvShapeButton4: TAdvShapeButton;
    AdvShapeButton5: TAdvShapeButton;
    AdvShapeButton6: TAdvShapeButton;
    AdvShapeButton7: TAdvShapeButton;
    AdvShapeButton8: TAdvShapeButton;
    AdvShapeButton9: TAdvShapeButton;
    dsImagen: TDataSource;
    AdvShapeButton10: TAdvShapeButton;
    grpfuente: TGroupBox;
    BtnGuardas: TAdvShapeButton;
    cbbFuente: TComboBox;
    cbbTamaño: TComboBox;
    PanelBarra: TPanel;
    Panel10: TPanel;
    BtnClose: TAdvShapeButton;
    CbShowHint: TComboBox;
    PAdquisiciones: TTabSheet;
    PGDP: TTabSheet;
    PTIC: TTabSheet;
    PRH: TTabSheet;
    PContabilidad: TTabSheet;
    PLogistica: TTabSheet;
    PCdP: TTabSheet;
    PPMO: TTabSheet;
    grpProceso: TGroupBox;
    BtnProceso: TAdvShapeButton;
    chkSolicitud1: TCheckBox;
    chkRequisicion: TCheckBox;
    chkAsignación: TCheckBox;
    chkCotizacion: TCheckBox;
    chkComprar: TCheckBox;
    chkValidacion: TCheckBox;
    chkVerificacion: TCheckBox;
    DlgSave: TSavePictureDialog;
    GroupBox1: TGroupBox;
    NRegistros: TSpinEdit;
    LbFiltros: TJvLabel;
    AdvShapeButton11: TAdvShapeButton;
    cxGBContenedor: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    CxVGridDatosEmpresa: TcxDBVerticalGrid;
    CxCategoryDatosGenerales: TcxCategoryRow;
    CxEditorEmpresa: TcxDBEditorRow;
    CxEditorCalleNumero: TcxDBEditorRow;
    CxEditorColonia: TcxDBEditorRow;
    CxEditorCiudad: TcxDBEditorRow;
    CxEditorEstado: TcxDBEditorRow;
    cxGBLogoEmpresa: TcxGroupBox;
    Imagen: TJvDBImage;
    cxGroupBox1: TcxGroupBox;
    Button1: TcxButton;
    Button2: TcxButton;
    AdvShapeButton12: TAdvShapeButton;
    CdDatosGenerales: TClientDataSet;
    dsDatosGenerales: TDataSource;
    CxBtnGuardar: TcxButton;
    CxBtnCancelar: TcxButton;
    CxEditorRFC: TcxDBEditorRow;
    procedure FormShow(Sender: TObject);
    procedure Imagen1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    Function ConfigLocate(cadena: String; Cliente: TClientDataset):Integer;
    procedure ColorBox1Change(Sender: TObject);
    procedure CbComponenteChange(Sender: TObject);
    procedure AdvShapeButton5Click(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure AdvShapeButton6Click(Sender: TObject);
    procedure AdvShapeButton8Click(Sender: TObject);
    procedure AdvShapeButton4Click(Sender: TObject);
    procedure AdvShapeButton7Click(Sender: TObject);
    procedure AdvShapeButton2Click(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure AdvShapeButton3Click(Sender: TObject);
    procedure AdvShapeButton10Click(Sender: TObject);
    procedure BtnProcesoClick(Sender: TObject);
    procedure chkSolicitud1Click(Sender: TObject);
    procedure cbbFuenteChange(Sender: TObject);
    procedure cbbFuenteKeyPress(Sender: TObject; var Key: Char);
    procedure BtnGuardasClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure CbShowHintChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvShapeButton11Click(Sender: TObject);
    procedure CxBtnCancelarClick(Sender: TObject);
    procedure CxBtnGuardarClick(Sender: TObject);
  private
    Lista :TStringList;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmConfiguracion: TFrmConfiguracion;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, ClientClassesUnit1, Unit2;

var
  PName, PNameUpt: String;
  I1Name: String;

procedure TFrmConfiguracion.Imagen1DblClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    try
      Imagen1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    except
      Imagen1.Picture.LoadFromFile('');
    end
  end;
end;

procedure TFrmConfiguracion.AdvGlowButton2Click(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;

  PasoNombre: String;
  PasoCD: TClientDataSet;
begin
  CrearConjunto(cdImagen1, cConfiguracionImagen, I1Name, ccUpdate);
  cdImagen1.Open;
  if cdImagen1.RecordCount = 0 then
    cdImagen1.Append
  else
  begin
    cdImagen1.Edit;

    BlobField := cdImagen1.FieldByName('Imagen1');
    BS := cdImagen1.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 1 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          Imagen1.Picture.Graphic := TGraphic(Pic);
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    end
    else
      Imagen1.Picture.LoadFromFile('');
  end;
end;

procedure TFrmConfiguracion.AdvShapeButton10Click(Sender: TObject);
var
  idConfiguracion: integer;
  cdUpt: TClientDataSet;
  campo, valor, codigocolor : String;
  index, contador : integer;

begin
  //if not ClientModule1.LeePermisos(BtnEdit,Self,False) then
  //  Exit;
  if CbComponente.ItemIndex < 0 then
    exit;
  campo := Lista[cbComponente.ItemIndex];
  valor := ClientModule1.ConfigGetValor(Campo,ClientModule1.cdNucConfiguracion);
  codigocolor := inttostr(ColorBox1.Colors[colorbox1.ItemIndex]);
  contador := 0;
  while contador < ColorBox1.Items.Count do
  begin
    if intTostr(ColorBox1.Colors[contador]) = Valor then
      index := ColorBox1.Items.IndexOf(ColorBox1.ColorNames[contador]);
    inc(contador);
  end;
  idConfiguracion := ConfigLocate(campo,cdNucConfiguracion);
  if idConfiguracion = -9 then
  begin
    exit;
  end;
  Try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_configuracion', PNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idconfiguracion', [idConfiguracion]);
    cdUpt.Open;
    if cdUpt.RecordCount > 1 then
      exit;
    cdUpt.Edit;
    cdUpt.FieldByName('valor1').AsString := codigocolor;
    cdUpt.Post;
    cdUpt.ApplyUpdates(-1);
    //Encabezado del reporte




    cdNucConfiguracion.Refresh;
    EliminarConjunto(pNameUpt);
    cdUpt.Free;
 //   InteliDialog.ShowModal('Es necesario reiniciar el sistema para aplicar los cambios','', mtInformation, [mbOk], 0);
    Form2.PrecargaColores(ClientModule1.cdNucConfiguracion);
    InteliDialog.ShowModal('Colores guardados correctamente.','', mtInformation, [mbOk], 0);

  Except

  End;
end;

procedure TFrmConfiguracion.AdvShapeButton11Click(Sender: TObject);
var
  idConfiguracion: integer;
  cdUpt: TClientDataSet;
begin
  // if not ClientModule1.LeePermisos(BtnEdit,Self,False) then
  //    Exit;
  idConfiguracion := ConfigLocate('Registros',cdNucConfiguracion);
  if idConfiguracion = -9 then
  begin
    exit;
  end;
  Try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_configuracion', PNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idconfiguracion', [idConfiguracion]);
    cdUpt.Open;
    if cdUpt.RecordCount > 1 then
      exit;
    cdUpt.Edit;
    cdUpt.FieldByName('valor1').AsString := Nregistros.Text;
    cdUpt.Post;
    cdUpt.ApplyUpdates(-1);
    cdNucConfiguracion.Refresh;
    EliminarConjunto(pNameUpt);
    cdUpt.Free;
    InteliDialog.ShowModal('Es necesario reiniciar el sistema para aplicar los cambios','', mtInformation, [mbOk], 0);

  Except
   ;
  End;
end;

procedure TFrmConfiguracion.AdvShapeButton1Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton1.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.AdvShapeButton2Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton2.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.AdvShapeButton3Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton3.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.AdvShapeButton4Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton4.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.AdvShapeButton5Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton5.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.AdvShapeButton6Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton6.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.AdvShapeButton7Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton7.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.AdvShapeButton8Click(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(AdvShapeButton8.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.BitBtn1Click(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  proxy: TServerMethods1Client;
begin
  cdConfiguracion.FieldByName('IdLocalidad').AsInteger := 1;
  cdConfiguracion.Post;
  cdConfiguracion.ApplyUpdates(-1);

  if OpenPictureDialog1.FileName <> '' then
  begin
    try
      BlobField := cdImagen1.FieldByName('Imagen1');
      BS := cdImagen1.CreateBlobStream(BlobField, bmWrite);
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromFile(OpenPictureDialog1.FileName);
          Pic.SaveToStream(Bs);
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    except
      on e:exception do
        InteliDialog.ShowModal('Error al cargar imagen.',e.ToString, mtInformation, [mbOk], 0);
    end;

    cdImagen1.Post;
    cdImagen1.ApplyUpdates(-1);
  end
  else
    cdImagen1.Cancel;

  // Refrescar la información de la imagen
  TForm2(Application.MainForm).cdImagen.Refresh;
  TForm2(Application.MainForm).LogoEmpresa.Repaint;
//  BitBtn1.Click;

end;

procedure TFrmConfiguracion.BtnAddClick(Sender: TObject);
begin
  CbComponente.ItemIndex := CbComponente.Items.IndexOf(BtnAdd.Hint);
  CbComponenteChange(sender);
end;

procedure TFrmConfiguracion.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmConfiguracion.BtnGuardasClick(Sender: TObject);
var
  idConfiguracion: integer;
  cdUpt: TClientDataSet;
begin
  // if not ClientModule1.LeePermisos(BtnEdit,Self,False) then
  //    Exit;
  idConfiguracion := ConfigLocate(cbbFuente.Text,cdNucConfiguracion);
  if idConfiguracion = -9 then
  begin
    exit;
  end;
  Try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_configuracion', PNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idconfiguracion', [idConfiguracion]);
    cdUpt.Open;
    if cdUpt.RecordCount > 1 then
      exit;
    cdUpt.Edit;
    cdUpt.FieldByName('valor1').AsString := cbbTamaño.Text;
    cdUpt.Post;
    cdUpt.ApplyUpdates(-1);
    cdNucConfiguracion.Refresh;
    EliminarConjunto(pNameUpt);
    cdUpt.Free;
    InteliDialog.ShowModal('Es necesario reiniciar el sistema para aplicar los cambios','', mtInformation, [mbOk], 0);

  Except

  End;
end;

procedure TFrmConfiguracion.BtnProcesoClick(Sender: TObject);
var
  idConfiguracion: integer;
  cdUpt: TClientDataSet;
begin
   //if not ClientModule1.LeePermisos(BtnEdit,Self,False) then
   //   Exit;
   if (chkValidacion.Checked = False) and (chkVerificacion.Checked = False) then
   begin
     InteliDialog.ShowModal('Es necesario tener la validacion o la verificacion en el proceso','', mtInformation, [mbOk], 0);
     Exit;
   end;

  Try
    // validacion
    idConfiguracion := ConfigLocate('validacion',cdNucConfiguracion);
    if idConfiguracion = -9 then
    begin
      exit;
    end;
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_configuracion', PNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idconfiguracion', [idConfiguracion]);
    cdUpt.Open;
    if cdUpt.RecordCount > 1 then
      exit;
    cdUpt.Edit;
    if ChkValidacion.Checked then
      cdUpt.FieldByName('valor1').AsString := 'si'
    else
      cdUpt.FieldByName('valor1').AsString := 'no';
    cdUpt.Post;
    cdUpt.ApplyUpdates(-1);
    EliminarConjunto(PNameUpt);
    cdUpt.Free;
    //verificacion
    idConfiguracion := ConfigLocate('verificacion',cdNucConfiguracion);
    if idConfiguracion = -9 then
    begin
      exit;
    end;

    cdNucConfiguracion.Refresh;
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, 'nuc_configuracion', PNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idconfiguracion', [idConfiguracion]);
    cdUpt.Open;
    if cdUpt.RecordCount > 1 then
      exit;
    cdUpt.Edit;
    if ChkVerificacion.Checked then
      cdUpt.FieldByName('valor1').AsString := 'si'
    else
      cdUpt.FieldByName('valor1').AsString := 'no';
    cdUpt.Post;
    cdUpt.ApplyUpdates(-1);
    EliminarConjunto(PNameUpt);
    cdUpt.Free;
    cdNucConfiguracion.Refresh;
    InteliDialog.ShowModal('Es necesario reiniciar el sistema para aplicar los cambios','', mtInformation, [mbOk], 0);

  Except

  End;
end;

procedure TFrmConfiguracion.Button1Click(Sender: TObject);
var
  pic:TPicture;
  Jp : TJPegImage;
  tms:TMemoryStream;
  LocBitMap : TBitMap;
  bf:WORD;
  ex:string;
begin

  tms:= TMemoryStream.Create;

  TBlobField(dsimagen.DataSet.FieldByName('imagen1')).SaveToStream(tms);

  tms.Seek(0, soFromBeginning);
  //

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
               ex := '.ico';
             end;
      // WMF
     // $0001,$CDD7: ;
      // JPG
      $D8FF: begin
              ex := '.jpg';
             end
    end;
  end;

  DlgSave.Filter := '(*'+ex+')|*'+ex;
  if dlgsave.Execute then
  begin
    TBlobField(dsimagen.DataSet.FieldByName('imagen1')).SaveToFile(DlgSave.FileName+ex);
    InteliDialog.ShowModal('Informaciòn:','imagen descargada: '+DlgSave.FileName, mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmConfiguracion.Button2Click(Sender: TObject);
var
  frmimagen:TFrmCargaImagen;
begin

    try
    if cdImagen1.RecordCount > 1 then
      raise Exception.Create('Hay mas de una imagen en la base de datos.');
    if cdImagen1.RecordCount = 0 then
    begin
      cdImagen1.Append;
      cdImagen1.FieldByName('idconfiguracion').AsInteger := 0;
      cdImagen1.FieldByName('parametro').AsString := 'ImagenGrande';
      cdImagen1.FieldByName('descripcion').AsString := 'Imagen de Propietario';
    end
    else
    if cdImagen1.RecordCount = 1 then
      cdImagen1.Edit;

    try
      frmimagen := TFrmCargaImagen.Create(nil);
      frmimagen.ShowModal;
      if not frmimagen.cancelado then
      begin
        TBlobField(cdImagen1.FieldByName('imagen1')).LoadFromStream(frmimagen.MemorySTResultante);
      end;
    finally
      frmimagen.Free;
    end;

    cdimagen1.Post;
    cdimagen1.ApplyUpdates(-1);
    cdimagen1.Refresh;
    form2.cdImagen.Refresh;
  Except
     on e:Exception do
     begin
       InteliDialog.ShowModal('Error al cargar imagen:',e.Message, mtInformation, [mbOk], 0);
        cdimagen1.Cancel;
    end;
  end;

end;

procedure TFrmConfiguracion.cbbFuenteChange(Sender: TObject);
begin
  cbbTamaño.ItemIndex := cbbTamaño.Items.IndexOf(ClientModule1.ConfigGetValor(cbbFuente.Text,Clientmodule1.cdNucConfiguracion));
end;

procedure TFrmConfiguracion.cbbFuenteKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TFrmConfiguracion.CbComponenteChange(Sender: TObject);
var
  campo, valor : String;
  index, contador : integer;

begin
  if CbComponente.ItemIndex < 0 then
    exit;
  campo := Lista[cbComponente.ItemIndex];
  valor := ClientModule1.ConfigGetValor(Campo,ClientModule1.cdNucConfiguracion);
  contador := 0;
  while contador < ColorBox1.Items.Count do
  begin
    if intTostr(ColorBox1.Colors[contador]) = Valor then
      index := ColorBox1.Items.IndexOf(ColorBox1.ColorNames[contador]);
    inc(contador);
  end;
  Colorbox1.ItemIndex := index;
end;

procedure TFrmConfiguracion.CbShowHintChange(Sender: TObject);
var
  userupdate:TClientDataSet;
begin
  try
    userupdate := tclientdataset.create(nil);
    try
      if not CrearConjunto(userupdate,'nuc_usuario',ccUpdate) then
        raise InteligentConnection.Create('Error al consultar usuario en modo ediciòn.');
      userupdate.close;
      CargarDatosFiltrados(userupdate,'idusuario',[clientmodule1.cdUsuario.fieldbyname('idusuario').asinteger]);
      userupdate.open;
      if userupdate.recordcount = 1 then
      begin
        userupdate.edit;
        userupdate.fieldbyname('showhint').asinteger := CbShowHint.ItemIndex;
        userupdate.post;
        userupdate.ApplyUpdates(-1);
        ClientModule1.cdUsuario.Refresh;
        form2.HintBallon.UseBalloonAsApplicationHint :=  clientmodule1.cdUsuario.fieldbyname('showhint').AsInteger = 1;
      end;
    finally
      userupdate.close;
      EliminarConjunto(userupdate);
      userupdate.free;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No se pudo guardar el cambio por el siguiente motivo:' ,
                             e.Message, mtWarning, [mbOk], 0);
    end;

    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal('Error al realizar la consulta por el siguiente motivo:',
                             e.Message, mtWarning, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Error inesperado por el siguiente motivo:' ,
                             e.Message + #10 + #10 + 'Informe de esto al administrador del sistema', mtError, [mbOk], 0);
    end;
  end;


end;

procedure TFrmConfiguracion.chkSolicitud1Click(Sender: TObject);
begin
  TCheckBox(Sender).Checked := True;
end;

procedure TFrmConfiguracion.ColorBox1Change(Sender: TObject);
begin
//  ShowMEssage(vartostr(IntTostr(ColorBox1.Colors[colorbox1.ItemIndex])))
end;

function TFrmConfiguracion.ConfigLocate(cadena: String;
  Cliente: TClientDataset): Integer;
begin
  Result := -9;
  Cliente.First;
  while Not Cliente.Eof do
  begin
    if Cliente.FieldByName('parametro').AsString = cadena then
    begin
      Result := Cliente.FieldByName('idconfiguracion').AsInteger;
      Exit;
    end;
    Cliente.Next;
  end;
end;

procedure TFrmConfiguracion.CxBtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConfiguracion.CxBtnGuardarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  if (CdDatosGenerales.Active) and (CdDatosGenerales.State = dsEdit) then
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      CdDatosGenerales.Post;
      CdDatosGenerales.ApplyUpdates(-1);
    finally
      Screen.Cursor := Cursor;
    end;
  Except

  end;
end;

procedure TFrmConfiguracion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    cdConfiguracion.Cancel;
    cdImagen1.Cancel;
    EliminarConjunto(PName);
    EliminarConjunto(I1Name);
    Lista.Free;
  finally
    Action := caFree;
  end;
end;

procedure TFrmConfiguracion.FormShow(Sender: TObject);
var estilo,sys: String;
begin
  libro.TabIndex := 0;
  try
    //habilitar la pestaña segun el subsistema
    sys :=lowercase(globales.Elemento('Subsistema').AsString);
    Padquisiciones.TabVisible := sys = 'alm';
    Pgdp.TabVisible := sys = 'gdp';
    PTIC.TabVisible := sys = 'tic';
    //PRH.TabVisible := sys = 'rhu';
    PContabilidad.TabVisible := sys = 'con';
    PLogistica.TabVisible := sys = 'log';
    PCdP.TabVisible := sys = 'cdp';
    PPMO.TabVisible := sys = 'pmo';

    //llenado de combo colores
    ClientModule1.ComponentColor(Self);
    CbComponente.Items.Add('General1');
    CbComponente.Items.Add('General2');
    CbComponente.Items.Add('Panel');
    CbComponente.Items.Add('Grupo');
    CbComponente.Items.Add('Texto de Grupo');
    CbComponente.Items.Add('Campo');
    CbComponente.Items.Add('Texto Campo');
    CbComponente.Items.Add('Enfoque');
    CbComponente.Items.Add('Texto Boton');
    //llenado de lista de colores
    Lista := TStringList.Create;
    Lista.Clear;
    Lista.Add('GlobalColor1');
    Lista.Add('GlobalColor2');
    Lista.Add('GlobalColorPanel');
    Lista.Add('GlobalColorGroup');
    Lista.Add('GlobalColorGroupText');
    Lista.Add('GlobalColorCampo');
    Lista.Add('GlobalColorCaptura');
    Lista.Add('GlobalColorFocus');
    Lista.Add('GlobalColorTextBtn');

    CbShowHint.ItemIndex := ClientModule1.cdusuario.FieldByName('showhint').asinteger;

    //Encabezados empresa
    CrearConjunto(CdDatosGenerales, 'nuc_configuracion', ccUpdate);
    CargarDatosFiltrados(CdDatosGenerales, 'IdConfiguracion', [18]);
    CdDatosGenerales.Open;
    CdDatosGenerales.Edit;

    //creacion de una consulta a configuracion para poder editar
    CrearConjunto(cdConfiguracion, cConfiguracion, PName, ccUpdate);
    cdConfiguracion.Open;

    //llamado al dataset de configuracion para lectura
    CrearConjunto(cdNucConfiguracion, 'nuc_configuracion', PName, ccCatalog);
    CargarDatosFiltrados(cdNucConfiguracion, 'idconfiguracion', ['-1']);
    cdNucConfiguracion.Open; //se llena el dataset de configuracion

    //traer el valor de la configuracion de validacion
    if ClientModule1.ConfigGetValor('validacion',Clientmodule1.cdNucConfiguracion) = 'si' then
      chkValidacion.Checked := True
    else
      chkValidacion.Checked := False;


    //traer el valor de la configuracion de verificacion
    if ClientModule1.ConfigGetValor('verificacion',Clientmodule1.cdNucConfiguracion) = 'si' then
      chkVerificacion.Checked := True
    else
      chkVerificacion.Checked := False;

    //traer el valor de los tamaños de fuente
    cbbTamaño.ItemIndex := cbbTamaño.Items.IndexOf(ClientModule1.ConfigGetValor('Ventana',Clientmodule1.cdNucConfiguracion));

    //conectar un dataset para conectar la imagen
    CrearConjunto(cdImagen1, 'nuc_configuracion_imagen1', I1Name, ccUpdate);
    CargarDatosFiltrados(cdImagen1,'parametro',['imagengrande']);
    cdImagen1.Open;

    NRegistros.text := ClientModule1.ConfigGetValor('Registros',Clientmodule1.cdNucConfiguracion);

    //obtener el estilo de menu
    estilo := '';
    estilo := VarRegistry('\Ambiente', '\Principal', 'EstiloMenu');
    if Length(Trim(estilo)) <> 1 then
    begin
      //si no existe ese valor generar uno
      SetRegistry('\Ambiente', '\Principal', 'EstiloMenu', '0');
      estilo := '0';
    end;

  Except
    // Ante cualquier error se debe cerrar la ventana
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No se ha podido invocar la ventana',
                             'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                             e.Message, mtWarning, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Error catastrófico',
                             'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                             e.Message + #10 + #10 + 'Informe de esto al administrador del sistema', mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

end.
