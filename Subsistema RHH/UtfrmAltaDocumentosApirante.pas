unit UtfrmAltaDocumentosApirante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, DBCtrls, JvDBImage, JvExControls, JvLabel,
  Mask, RxToolEdit, RXDBCtrl, StdCtrls, AdvEdit, AdvEdBtn, AdvGroupBox, DB,
  DBClient, OleCtrls, AcroPDFLib_TLB, JvDialogs, JvComponentBase,
  JvComputerInfoEx, frxClass, frxExportPDF, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxRibbon, UControlExcepciones;

type
  TfrmAltaDocumentosApirante = class(TForm)
    DsDatos: TDataSource;
    ClientDataSet1: TClientDataSet;
    Panel3: TPanel;
    Panel2: TPanel;
    JvLabel9: TJvLabel;
    JvLabel2: TJvLabel;
    DateExpedicion: TDBDateEdit;
    JvLabel3: TJvLabel;
    DateVigencia: TDBDateEdit;
    DateAplicacion: TDBDateEdit;
    JvLabel4: TJvLabel;
    //AcroPDF1: TAcroPDF;
    EBtnDirFile: TAdvEditBtn;
    JvLabel1: TJvLabel;
    ODlgCargarPdf: TJvOpenDialog;
    JvCInfPc: TJvComputerInfoEx;
    DsMemArchivosNuevos: TDataSource;
    cbDocumento: TDBLookupComboBox;
    DsDocumentos: TDataSource;
    DsPostulante: TDataSource;
    PFondoPdf: TPanel;
    frxPDFExport1: TfrxPDFExport;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManagerDocumentos: TdxBarManager;
    dxToolBarManagerDocumentosBar: TdxBar;
    btn1: TdxBarLargeButton;
    btn2: TdxBarLargeButton;
    dxToolBarManagerDocumentosBar1: TdxBar;
    btn3: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure Btn_GrabarClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdtDocumentosClickBtn(Sender: TObject);
    procedure EBtnDirFileClickBtn(Sender: TObject);
    procedure cbDocumentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDocumentoCloseUp(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure cbDocumentoClick(Sender: TObject);
  private
    //AcroPDF1: TAcroPDF;
    cdDocumentos: TClientDataSet;
    cdBuscar: TClientDataSet;
    procedure GetDocumento;
    function VerificarVacios(datSource: Tdatasource): Boolean;

    { Private declarations }
  public
    { Public declarations }
    AcroPDF1: TAcroPDF;
    Resultado : integer;
    valordefiltradopersonal : integer;
    valorfiltradodocumento : integer;
    DireccionArchivo : string;
    LastId : Integer;
  end;

var
  frmAltaDocumentosApirante: TfrmAltaDocumentosApirante;

implementation
uses
  ClientModuleUnit1, xDatabase, UTFrmDocumento, UTFrmCargaImagen, UInteliDialog, UTFrmFichaPersonal, Unit2;

{$R *.dfm}

procedure TfrmAltaDocumentosApirante.EdtDocumentosClickBtn(Sender: TObject);
begin
  GetDocumento;   // Llamar la ventana de selección de documentos
end;

procedure TfrmAltaDocumentosApirante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([CdDocumentos, cdBuscar]);
end;

procedure TfrmAltaDocumentosApirante.FormCreate(Sender: TObject);
begin
  AcroPDF1 := TAcroPDF.Create(PFondoPDF);

  AcroPDF1.Parent := PFondoPDF;
  AcroPDF1.Align:= alClient;
  AcroPDF1.DoubleBuffered := False;

  resultado:= mrcancel;
  cdDocumentos := TClientDataSet.create(Self);
  cdBuscar := TClientDataSet.create(Self);
end;

procedure TfrmAltaDocumentosApirante.FormShow(Sender: TObject);
begin
  try
    ClientModule1.ComponentColor(self);

    PFondoPdf.Color := cl3DDkShadow;

    if not Crearconjunto(cdBuscar, 'rhu_docxpostulante', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Documentos el Personal']);

    if not Crearconjunto(cdDocumentos, 'rhu_documento', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Documentos']);

    if Not CargarDatosFiltrados(cdDocumentos, 'Todos', ['No']) then
      raise InteligentException.CreateByCode(16, ['Documentos']);

    CdDocumentos.Open;
    DsDocumentos.DataSet := CdDocumentos;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TfrmAltaDocumentosApirante.GetDocumento;
Var
  registro: TLista;
begin
  try
    try
      FrmDocumento := TFrmDocumento.Create(nil);

      FrmDocumento.ModoSeleccion       := True;
      FrmDocumento.PanelAdd.Visible    := False;
      FrmDocumento.PanelEdit.Visible   := False;
      FrmDocumento.PanelDelete.Visible := False;
      FrmDocumento.PanelPrint.Visible  := False;
      FrmDocumento.PanelExport.Visible := False;
      FrmDocumento.PanelImport.Visible := False;

      registro := FrmDocumento.SeleccionarItem();

      if Assigned(registro) then
      begin
        cdDocumentos.Close;
        if Not CargarDatosFiltrados(cdDocumentos, 'IdDocumento', [Registro.Valor['iddocumento']]) then
          raise InteligentException.CreateByCode(6, ['Documentos', Registro.Valor['iddocumento'], 'Identificador de Documento']);

        cdDocumentos.Open;

        if cdDocumentos.RecordCount <> 1 then
          raise InteligentException.CreateByCode(27, ['Documentos', Registro.Valor['CodigoDocumento']]);

        dsDatos.DataSet.FieldByName('iddocumento').AsInteger:= registro.Valor['iddocumento'];
        //EdtDocumentos.Text:=registro.Valor['nombredocumento'];
      end;
    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:exception do
        InteliDialog.ShowModal('Error al cargar catalogo de documentos.', e.Message, mtInformation, [mbOk], 0);
    end;
  finally
    FrmDocumento.Free;
  end;
end;

procedure TfrmAltaDocumentosApirante.NxButton1Click(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(dsDatos.DataSet.FieldByName('documento')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

procedure TfrmAltaDocumentosApirante.NxButton2Click(Sender: TObject);
begin
  TClientDataSet(dsdatos.DataSet).CancelUpdates;
  close;
end;

procedure TfrmAltaDocumentosApirante.cbDocumentoClick(Sender: TObject);
begin
  try
    if (cdDocumentos.FieldByName('Tipo').AsString = 'Caducidad') then
      DateVigencia.Enabled := True
    else
      DateVigencia.Enabled := False;
  except
    on e:Exception do
    LevantarExcepcion(e);
  end;

end;

procedure TfrmAltaDocumentosApirante.cbDocumentoCloseUp(Sender: TObject);
begin
  //Si no hay nada en el combo mandar un mensaje de que no hay documentos y preguntar si desea agregar uno
  if cdDocumentos.recordCount = 0 then
  begin
    if MessageDlg ('No hay documentos registrados Desea agregar uno nuevo?', mtConfirmation, [mbYes, mbNo],0) = mrYes  then
    begin
      Close;
      FrmFichaPersonal.Close;
      Form2.IniciarForm(TFrmDocumento, FrmDocumento, False);
    end;
  end;
end;

procedure TfrmAltaDocumentosApirante.cbDocumentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 116 then
    if cdDocumentos.Active then
      cdDocumentos.Refresh
    else
      cdDocumentos.Open;
end;

procedure TfrmAltaDocumentosApirante.EBtnDirFileClickBtn(Sender: TObject);
var
   Archivo:TMemoryStream;
begin
  try
   Archivo := TMemoryStream.Create;
   try
     if ODlgCargarPdf.Execute then
     begin
        Archivo.Clear;
        Archivo.LoadFromFile(ODlgCargarPdf.FileName);
        TBlobField(TClientDataset(DsDatos.DataSet.FieldByName('Documento'))).LoadFromStream(Archivo);
        EBtnDirFile.Text:=copy(ODlgCargarPdf.FileName, LastDelimiter('\', ODlgCargarPdf.FileName)+1, Length(ODlgCargarPdf.FileName)-LastDelimiter('\', ODlgCargarPdf.FileName));
        DsDatos.DataSet.FieldByName('NombreArchivo').AsString := copy(ODlgCargarPdf.FileName, LastDelimiter('\', ODlgCargarPdf.FileName)+1, Length(ODlgCargarPdf.FileName)-LastDelimiter('\', ODlgCargarPdf.FileName));

        AcroPdf1.LoadFile(ODlgCargarPdf.FileName);
         AcroPdf1.Show;
        PFondoPdf.Visible := True;
        DireccionArchivo:= String(ODlgCargarPdf.FileName);
     end;
   finally
    if assigned(Archivo) then
      Archivo.Free;
   end;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha Ocurrido un error inesperaqdo del sistema, avise al administrador del siguiente error', e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmAltaDocumentosApirante.btn3Click(Sender: TObject);
begin
  TClientDataSet(dsdatos.DataSet).CancelUpdates;
  close;
end;

procedure TfrmAltaDocumentosApirante.Btn_GrabarClick(Sender: TObject);
var
  estado : TDatasetState;
  IdLast : TclientDataset;
  NombreArchivo : string;
begin
  try
    if VerificarVacios(dsDatos) then
    begin
      if dsDatos.Dataset.State = dsInsert then
      begin
        // Verificar que el documento no exista previamente en este postulante
        if Not CargarDatosFiltrados(cdBuscar, 'IdDocumento,IdPostulante', [dsDatos.DataSet.FieldByName('IdDocumento').AsInteger, dsDatos.DataSet.FieldByName('IdPostulante').AsInteger]) then
          raise InteligentException.CreateByCode(6, [dsDatos.DataSet.FieldByName('IdDocumento').AsString + ' - ' + dsDatos.DataSet.FieldByName('IdDocumento').AsString, 'IdDocumento - IdPostulante']);

        if CuantosRegistros(cdBuscar) > 0 then
          raise InteligentException.CreateByCode(17, ['Documentos por Postulante', dsDatos.DataSet.FieldByName('IdDocumento').AsString + ' - ' + dsDatos.DataSet.FieldByName('IdPostulante').AsString]);
      end;

      if TWinControl(Sender).Tag = 1 then
      begin
        if cbDocumento.KeyValue = NULL then
        begin
          if cbDocumento.CanFocus then
            cbDocumento.SetFocus;
          raise InteligentException.CreateByCode(18, ['Documento']);
        end;

        if EBtnDirFile.Text = '' then
        begin
          EBtnDirFile.SetFocus;
          raise InteligentException.CreateByCode(18, ['Cargar Documento']);
        end;

        if DateVigencia.Enabled = False then
          DateVigencia.EditText := '';
      end;

      Estado := dsDatos.dataset.State;
      dsDatos.DataSet.Post;
      tclientdataset(dsDatos.DataSet).ApplyUpdates(-1);
      if estado in [dsInsert] then
      begin
        LastId := UltimoId;

        if TWinControl(Sender).Tag = 0 then
        begin
          NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\';
          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);
        end;

        TBlobField(dsDatos.dataset.FieldByName('documento')).SaveToFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        dsDatos.dataset.FieldByName('idpostulante').AsString+'#'+InttoStr(LastId)+'#'+
        dsDatos.dataset.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');

        DsMemArchivosNuevos.Dataset.Append;
        DsMemArchivosNuevos.Dataset.fieldbyname('NombreArchivo').asstring := ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        dsDatos.dataset.FieldByName('idpostulante').AsString+'#'+InttoStr(LastId)+'#'+
        dsDatos.dataset.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf';
        DsMemArchivosNuevos.Dataset.Post;
      end
      else
      begin
        LastId := dsDatos.dataset.FieldByName('IdDocxPostulante').AsInteger;

        if TWinControl(Sender).Tag = 1 then
        begin
          TBlobField(dsDatos.dataset.FieldByName('documento')).SaveToFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          dsDatos.dataset.FieldByName('idpostulante').AsString+'#'+InttoStr(LastId)+'#'+
          dsDatos.dataset.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
        end;
      end;
      resultado:=mrok;

      if TWinControl(Sender).Tag = 1 then
        close
      else
      begin
//######Reinicio del dataset para que se pueda ingresar ########################
        TClientDataset(dsDatos.DataSet).Close;
        if not CargarDatosFiltrados(TClientDataset(dsDatos.DataSet),'idpostulante',[-9]) then
          raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);
        TClientDataset(dsDatos.DataSet).Open;
        TClientDataset(dsDatos.DataSet).Append;
        TClientDataset(dsDatos.DataSet).FieldByName('IdDocxPostulante').AsInteger :=0;
        TClientDataset(dsDatos.DataSet).FieldByName('idpostulante').AsInteger := dsDatos.DataSet.FieldByName('IdPostulante').AsInteger;
        //TClientDataset(dsDatos.DataSet).FieldByName('idpostulante').AsInteger := DsPostulante.DataSet.FieldByName('idpostulante').asinteger;
        TClientDataset(dsDatos.DataSet).FieldByName('fechaexpedicion').AsDateTime:=now;
        TClientDataset(dsDatos.DataSet).FieldByName('fechavigencia').AsDateTime:=now;
        TClientDataset(dsDatos.DataSet).FieldByName('fechaaplicacion').AsDateTime:=now;
        TClientDataset(dsDatos.DataSet).FieldByName('FechaMovimiento').AsDateTime:=now;
        TClientDataset(dsDatos.DataSet).FieldByName('Activo').AsString := 'Si';
        AcroPdf1.Show;
        PFondoPdf.Visible := true;
        EBtnDirFile.Text:='';
//##############################################################################
      end;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  end;
end;

function TfrmAltaDocumentosApirante.VerificarVacios(datSource: Tdatasource): Boolean;
var
  Resultado:Boolean;
begin
  Resultado := False;
  try
    try

      if datSource.DataSet.fieldbyname('iddocumento').AsInteger < 0  then
      begin
        //EdtDocumentos.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Seleccione un Documento']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('fechaexpedicion').asstring)) = 0  then
      begin
        Dateexpedicion.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese una fecha de expedición.']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('fechavigencia').asstring)) = 0  then
      begin
        DateVigencia.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese una fecha de vigencia.']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('fechaaplicacion').asstring)) = 0  then
      begin
        dateAplicacion.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese una fecha de aplicación.']);
      end;

      Resultado := True;

    except
    on e:InteligentWarning do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;
    end;

  finally
    Result := Resultado;
  end;
end;


end.
