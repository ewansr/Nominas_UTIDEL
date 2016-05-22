unit UTFrmMachotes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxContainer,
  cxSplitter, cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, OleCtnrs,
  dxBar, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBClient,
  ClientModuleUnit1, UInteliDialog, rhh_genericclasses, cxCheckBox, ShellAPI,
  cxButtonEdit, cxDBEdit, cxRadioGroup, ExtCtrls;

type
  TFrmMachotes = class(TForm)
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    OLECntExcel: TOleContainer;
    CxGridPlantillas: TcxGridDBTableView;
    CxLevelNivel1: TcxGridLevel;
    CxGridMachotes: TcxGrid;
    cxGBFiltos: TcxGroupBox;
    CxSplitm: TcxSplitter;
    CxLCbbTipoNomina: TcxLookupComboBox;
    CxLbl1: TcxLabel;
    CxBtnFiltrar: TcxButton;
    CxColumnNombreMachote: TcxGridDBColumn;
    CxColumnAplica: TcxGridDBColumn;
    CdTipoNomina: TClientDataSet;
    CdMachotes: TClientDataSet;
    CdMachoteupt: TClientDataSet;
    dsTipoNomina: TDataSource;
    dsMachotes: TDataSource;
    dxBarLargeButton1: TdxBarLargeButton;
    cxGBDatos: TcxGroupBox;
    CxDbTxtNombre: TcxDBTextEdit;
    CxBtnEdtPLantilla: TcxButtonEdit;
    CxLbl2: TcxLabel;
    CxLbl3: TcxLabel;
    Panel1: TPanel;
    CxBtnGuardar: TcxButton;
    CxBtnCancelar: TcxButton;
    OLECntDialog: TOleContainer;
    dlgOpenExcel: TOpenDialog;
    dsMachoteUpt: TDataSource;
    CxLCbbTipoNominaUpt: TcxLookupComboBox;
    CxLblTipoNomina: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxBtnFiltrarClick(Sender: TObject);
    procedure CxGridPlantillasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CxChkBoxPreviewPropertiesChange(Sender: TObject);
    procedure DxBLbuttonActualizarClick(Sender: TObject);
    procedure DxBLbuttonEliminarClick(Sender: TObject);
    procedure CxBtnGuardarClick(Sender: TObject);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure CxBtnEdtPLantillaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DxBLbuttonAgregarClick(Sender: TObject);
    procedure CxBtnCancelarClick(Sender: TObject);
    procedure OLECntExcelStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure CdMachotesAfterRefresh(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OLECntDialogStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure DxBLbuttonEditarClick(Sender: TObject);
  private
    gForm: TForm;
    RutaArchivo: string;
    RutaArchivoSave: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMachotes: TFrmMachotes;

implementation

{$R *.dfm}

procedure TFrmMachotes.CdMachotesAfterRefresh(DataSet: TDataSet);
begin
  DxBLbuttonEliminar.Enabled := (cdMachotes.active) and (cdMachotes.recordcount > 0);
  DxBLbuttonEditar.Enabled := DxBLbuttonEliminar.Enabled;
end;

procedure TFrmMachotes.CxBtnCancelarClick(Sender: TObject);
begin
  RutaArchivoSave := '';
end;

procedure TFrmMachotes.CxBtnEdtPLantillaPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if dlgOpenExcel.Execute then
  begin
    RutaArchivoSave := dlgOpenExcel.FileName;
    CxBtnEdtPLantilla.Text := RutaArchivoSave;
    try
      OLECntDialog.CreateObjectFromFile(RutaArchivoSave, False);
    except
      InteliDialog.ShowModal('Aviso', 'La imagen no fue encontrada.', mtInformation, [mbOK], 0);
    end;
  end;
end;

procedure TFrmMachotes.CxBtnFiltrarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if CxLCbbTipoNomina.EditValue <> null then
      begin
        if not CargarDatosFiltrados(cdMachotes, 'IdTipoNomina', [CxLCbbTipoNomina.EditValue]) then
          raise InteligentException.CreateByCode(6, ['Machotes', 'IdTipoNomina', cdTipoNomina.FieldbyName('idTipoNomina').asString]);

        if cdMachotes.Active then
          cdMachotes.Refresh
        else
          cdMachotes.Open;
      end;
    finally
      screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      Intelidialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);

    on e: Exception do
      Intelidialog.ShowModal('Error', 'Ha Ocurrido un error inesperado, informe a su administrador de sistema del siguiente error' + e.message, mtError, [mbOK],0);
  end;
end;

procedure TFrmMachotes.CxBtnGuardarClick(Sender: TObject);
var
  BlobStream: TStream;
  FileStream: TFileStream;
begin
  try
    //CambiarVaciosANull(CdMachoteupt);
    if CdMachoteupt.FieldByName('NombreMachote').IsNull then
      raise InteligentException.CreateByCode(18, ['Nombre de Plantilla']);

    //if CdMachoteupt.FieldByName('Machote').IsNull then
      //raise InteligentException.CreatebyCode(18,['Documento Plantilla']);

    if CdMachoteupt.State in [dsInsert, dsEdit] then
    begin
      if CdMachoteupt.State in [dsInsert] then
        CdMachoteupt.FieldByName('IdMachoteTipoNomina').AsInteger := 0;

      CdMachoteupt.FieldByName('IdTipoNomina').AsInteger := CxLCbbTipoNominaUpt.EditValue;
      BlobSTream:=CdMachoteupt.CreateBlobStream(CdMachoteupt.FieldByName('Machote'),bmwrite);
      try
        FileStream := TFileStream.Create(RutaArchivoSave, fmOpenRead);
        try
          BlobStream.CopyFrom(FileStream, FileStream.Size);
        finally
          FileStream.Destroy;
        end;
      Finally
        BlobStream.Destroy;
      end;

      CdMachoteupt.Post;
      CdMachoteupt.ApplyUpdates(-1);
      DxBLbuttonActualizarClick(nil);
    end;
  finally
    RutaArchivoSave := '';
  end;
end;

procedure TFrmMachotes.CxChkBoxPreviewPropertiesChange(Sender: TObject);
begin
  //OLECntExcel.Visible := CxChkBoxPreview.Checked;
end;

procedure TFrmMachotes.CxGridPlantillasCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //if CxChkBoxPreview.Checked then
  try
    RutaArchivo := descargarPlantilla(cdMachotes, '_tmp', '\Preview\');
    OLEcntExcel.CreateObjectFromFile(RutaArchivo, False);
  except
    Intelidialog.ShowModal('Aviso', 'Archivo no encontrado.', mtInformation, [mbOK],0);
  end;
end;

procedure TFrmMachotes.DxBLbuttonActualizarClick(Sender: TObject);
begin
  try
    CdMachotes.Refresh;
  except
    on e: InteligentException do
      Intelidialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);

    on e: Exception do
      Intelidialog.ShowModal('Error', 'Ha Ocurrido un error inesperado, informe a su administrador de sistema del siguiente error' + e.message, mtError, [mbOK],0);
  end;
end;

procedure TFrmMachotes.DxBLbuttonAgregarClick(Sender: TObject);
begin
  try
    gForm := TForm.Create(self);
    gForm.Width := 400;
    gForm.Height := 470;
    cxGBDatos.Parent := gForm;
    cxGBDatos.Visible := True;
    cxGBDatos.Align := alClient;
    cxGBDatos.Visible := True;
    CdMachoteupt.Close;
    if not CargarDatosFiltrados(CdMachoteupt, 'idMachoteTipoNomina', [-9]) then
      raise InteligentException.CreateByCode(6, ['Catálogo de Plantillas','IdMachoteTipoNomina','-9']);
    CdMachoteupt.Open;
    CdMachoteupt.Append;
    if gForm.ShowModal = mrOk then
      DxBLbuttonActualizarClick(nil);
  finally
    cxGBDatos.Visible := False;
    cxGBDatos.Align := alNone;
    cxGBDatos.Parent := Self;
  end;
end;

procedure TFrmMachotes.DxBLbuttonEditarClick(Sender: TObject);
begin
  try
    gForm := TForm.Create(self);
    gForm.Width := 400;
    gForm.Height := 470;
    cxGBDatos.Parent := gForm;
    cxGBDatos.Visible := True;
    cxGBDatos.Align := alClient;
    cxGBDatos.Visible := True;
    CdMachoteupt.Close;
    if not CargarDatosFiltrados(CdMachoteupt, 'IdMachoteTipoNomina', [CdMachotes.FieldByName('IdMachoteTipoNomina').AsInteger])  then
      raise InteligentException.CreateByCode(6, ['Catálogo de Plantillas', 'IdMachoteTipoNomina', CdMachotes.FieldByName('IdMachoteTipoNomina').AsString]);
    CdMachoteupt.Open;
    CdMachoteupt.Edit;
    CxLCbbTipoNominaUpt.EditValue := CdMachoteupt.FieldByName('IdTipoNomina').AsInteger;
    RutaArchivoSave := DescargarPlantilla(CdMachoteupt, '_temp', '\preview\');
    CxBtnEdtPLantilla.Text := RutaArchivoSave;
    OLECntDialog.CreateObjectFromFile(RutaArchivoSave, false);
    if gForm.ShowModal = mrOk then
      DxBLbuttonActualizarClick(nil);
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmMachotes.DxBLbuttonEliminarClick(Sender: TObject);
begin
  try
    if (InteliDialog.ShowModal('Aviso', '¿Éstá seguro que desea Elimnar el registro [' + CdMachotes.FieldByName('NombreMachote').AsString + '] ?', mtConfirmation, [mbYes, mbNo], 0 )) = mrYes then
    begin
      CdMachoteupt.Close;
      if not CargarDatosFiltrados(CdMachoteupt, 'idMachoteTipoNomina', [CdMachotes.FieldByName('IdMachoteTipoNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Catálogo de Plantillas', 'IdMachoteTipoNomina', CdMachotes.FieldByName('IdMachoteTipoNomina').AsString]);

      if CdMachoteupt.Active then
        CdMachoteupt.Refresh
      else
        CdMachoteupt.Open;

      if CdMachoteupt.RecordCount <> 1 then
        raise InteligentException.CreateByCode(24, ['La tabla [nom_MachoteTipoNomina] tiene registros duplicados, contactar a su administrador de Sistemas']);

      CdMachoteupt.Delete;
      CdMachoteupt.ApplyUpdates(-1);
      DxBLbuttonActualizarClick(nil);
    end;
  Except
    on e: InteligentException do
      Intelidialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);
  end;
end;

procedure TFrmMachotes.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMachotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmMachotes.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdMachotes, 'nom_machotetiponomina', ccCatalog ) then
    raise inteligentException.createByCode(5, ['Machote tipo Nómina']);

  if not CrearConjunto(CdMachoteupt, 'nom_machotetiponomina', ccUpdate) then
    raise inteligentException.createByCode(5, ['Machote tipo Nómina']);

  if not crearconjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
    raise inteligentException.createByCode(5, ['Tipos de Nómina']);
end;

procedure TFrmMachotes.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.cursor;
    screen.cursor := crAppStart;
    try
      if not cargarDatosFiltrados(cdTipoNomina, 'IdTipoNomina', [-1]) then
        raise inteligentException.createByCode(6, ['Tipos de Nómina', 'IdTipoNomina', '-1']);

      if cdTipoNomina.Active then
        cdTipoNomina.Refresh
      else
        cdTipoNomina.Open;
    finally
      Screen.cursor := Cursor;
    end;
  except
    on e: InteligentException do
      Intelidialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);

    on e: Exception do
      Intelidialog.ShowModal('Error', 'Ha Ocurrido un error inesperado, informe a su administrador de sistema del siguiente error' + e.message, mtError, [mbOK],0);
  end;
end;

procedure TFrmMachotes.OLECntDialogStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  ShellExecute(Self.Handle, nil, PChar(RutaArchivoSave), '','', SW_SHOWNORMAL);
end;

procedure TFrmMachotes.OLECntExcelStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  ShellExecute(Self.Handle, nil, PChar(RutaArchivo), '','', SW_SHOWNORMAL);
end;

end.
