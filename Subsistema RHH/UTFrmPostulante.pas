unit UTFrmPostulante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ExtCtrls, ComCtrls, Menus, DBCtrls, StdCtrls, Mask,
  JvExControls, JvLabel, RxToolEdit, RXDBCtrl, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExStdCtrls, JvBehaviorLabel,
  DB, DBClient, Uintelidialog, AdvCircularProgress, AdvGlowButton, TypInfo,
  JvComponentBase, JvBalloonHint, NxEdit, NxColumns, NxDBColumns, Buttons,
  Grids, DBGrids, JvDBImage, AdvEdit, AdvEdBtn, JvExComCtrls, JvComCtrls,
  AdvListV, JvMemoryDataset, CheckLst, AdvSmoothButton, JvComputerInfoEx,
  OleCtrls, AcroPDFLib_TLB, JvExDBGrids, JvDBGrid, JvDBUltimGrid, DateUtils,
  pngimage,ShellAPI;

Type
    TCargoInf = ^TnCargoInf;
    TnCargoInf = Record
    Idcargo: integer;
 end;

Type
    TCartaInfLab = ^TNCartaInfLab;
    TNCartaInfLab = Record
    IdDocumentosRecomendacion : Integer;
    Idcargo: integer;
    NombreArchivo : String;
  end;

Type
    TCartaInfPer = ^TNCartaInfPer;
    TNCartaInfPer = Record
    IdDocumentosRecomendacion : Integer;
    Idcargo: integer;
    NombreArchivo : String;
  end;

type TTipoDFecha=(fdkCreado, fdkUltimaModificacion, fdkUltimoAcceso);

type TFileDateKind=(fdkCreated, fdkLastModified, fdkLastAccessed);

type

  TFrmPostulante = class(TForm)
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Panel18: TPanel;
    GroupBox1: TGroupBox;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    DBAPaterno: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    cdPostulante: TClientDataSet;
    dsPostulante: TDataSource;
    JvLabel20: TJvLabel;
    DBEdit8: TDBEdit;
    JvLabel22: TJvLabel;
    DBTelefono: TDBEdit;
    JvLabel23: TJvLabel;
    DBEditContacto: TDBEdit;
    JvLabel24: TJvLabel;
    DBTelefonoContacto: TDBEdit;
    JvLabel25: TJvLabel;
    DBEdit12: TDBEdit;
    JvLabel26: TJvLabel;
    TabSheet7: TTabSheet;
    PageControl4: TPageControl;
    TabSheet8: TTabSheet;
    cdDoctosPostulante: TClientDataSet;
    dsDoctosPostulante: TDataSource;
    DBAmaterno: TDBEdit;
    JvLabel28: TJvLabel;
    GroupBox2: TGroupBox;
    DBEditCalle: TDBEdit;
    DBEditNumero: TDBEdit;
    DBEditColonia: TDBEdit;
    DBEditMunicipio: TDBEdit;
    DBEditCiudad: TDBEdit;
    DBEditEstado: TDBEdit;
    DBEditPais: TDBEdit;
    DBEditCP: TDBEdit;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    Timer2: TTimer;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel6: TJvLabel;
    DBEdit1: TDBEdit;
    DBImss: TEdit;
    JvLabel15: TJvLabel;
    JvDBImage1: TJvDBImage;
    Button1: TButton;
    GroupBox3: TGroupBox;
    JvLabel17: TJvLabel;
    DBComboBox2: TDBComboBox;
    JvLabel18: TJvLabel;
    JvLabel19: TJvLabel;
    DBComboBox3: TDBComboBox;
    JvLabel21: TJvLabel;
    DBDateEdit1: TDBDateEdit;
    JvLabel27: TJvLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    JvLabel29: TJvLabel;
    JvLabel30: TJvLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    JvLabel31: TJvLabel;
    JvLabel32: TJvLabel;
    spli: TTabSheet;
    cddatosbancarios: TClientDataSet;
    dsdatosbancarios: TDataSource;
    TabHistorial: TTabSheet;
    CdExperiencia: TClientDataSet;
    EdtNacionalidad: TAdvEditBtn;
    DBNombre: TDBEdit;
    DBFechaAlta: TDBEdit;
    Panel8: TPanel;
    BtnGrabar: TBitBtn;
    Btn_Cancelar: TBitBtn;
    MemPostulantes: TClientDataSet;
    JvLabel33: TJvLabel;
    EdtNoInfonavit: TDBEdit;
    DBEditEMail: TDBEdit;
    JvLabel34: TJvLabel;
    BtnAgregar: TBitBtn;
    JvCInfPc: TJvComputerInfoEx;
    Splitter1: TSplitter;
    groupbox12: TGroupBox;
    GroupBox11: TGroupBox;
    Panel9: TPanel;
    Panel10: TPanel;
    BtnAddDocumentos: TNxButton;
    BtnEditDocumentos: TNxButton;
    NxButton1: TNxButton;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBDateColumn3: TNxDBDateColumn;
    ListaArchivo: TClientDataSet;
    MemArchivosNuevos: TJvMemoryData;
    CdDocumentos: TClientDataSet;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel6: TPanel;
    GroupBox7: TGroupBox;
    GrdBancarios: TDBGrid;
    Panel11: TPanel;
    GroupBox4: TGroupBox;
    BtnActivar: TNxButton;
    BtnAddBancarios: TNxButton;
    BtnDeleteBancarios: TNxButton;
    BtnEditBancarios: TNxButton;
    Panel7: TPanel;
    Splitter3: TSplitter;
    GroupBox6: TGroupBox;
    GroupBox5: TGroupBox;
    Panel12: TPanel;
    Panel13: TPanel;
    tvDocumentos: TJvTreeView;
    BtnAddHistorial: TNxButton;
    BtnEditHistorial: TNxButton;
    BtnDeleteHistorial: TNxButton;
    DsEliminarDocumento: TDataSource;
    DsEliminarExperiencia: TDataSource;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    ChkInfonavit: TCheckBox;
    Buttonopen: TButton;
    Button3: TButton;
    NxButton2: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnAddDocumentosClick(Sender: TObject);
    procedure BtnEditDocumentosClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure LongitudComponentes(FieldDefs: TFieldDefs; Control: TWinControl);
    procedure DBImssChange(Sender: TObject);
    procedure NxButton15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure BtnAddBancariosClick(Sender: TObject);
    procedure BtnAddHistorialClick(Sender: TObject);
    procedure BtnEditHistorialClick(Sender: TObject);
    procedure BtnDeleteHistorialClick(Sender: TObject);
    procedure GrdBancariosDblClick(Sender: TObject);
    procedure GrdDocumentosDblClick(Sender: TObject);
    procedure BtnEditBancariosClick(Sender: TObject);
    procedure BtnDeleteBancariosClick(Sender: TObject);
    procedure BtnActivarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure EdtNacionalidadClickBtn(Sender: TObject);
    procedure EdtNacionalidadKeyPress(Sender: TObject; var Key: Char);
    procedure tvDocumentosChange(Sender: TObject; Node: TTreeNode);
    procedure tvDocumentosDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ChkInfonavitClick(Sender: TObject);
    procedure BtnAgregarClick(Sender: TObject);
    procedure cdPostulanteAfterEdit(DataSet: TDataSet);
    procedure FormDblClick(Sender: TObject);
    procedure cdDoctosPostulanteAfterScroll(DataSet: TDataSet);
    procedure NextDBGrid1DblClick(Sender: TObject);
    procedure ButtonopenClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    CompDocumento,CompRecomendacion: TAcroPDF;
    Veces: Integer;
    cdPais: TClientDataSet;
    ClickAgregar : Boolean;
    bForzar: Boolean;
    EndShow : Boolean;
    procedure GetPais;
    function cambiarFechaFichero(const FileName: string; FileDate: TDateTime;
      SpecificFileDate: TFileDateKind): boolean;
    function ObtenerFechaArchivo(const NombreArchivo: string;
      out FechaResult: TDateTime; TipoFechaObtener: TTipoDFecha): boolean;
    procedure EnableSysCloseItem(Handle: HWND; Enable: Boolean);
    procedure CrearCompDocumento(Padre: Twincontrol;MuestraError:Boolean = True);
    procedure CargarDocumento(PathPdf: string);
    procedure LimpiarCompDocumento;
    procedure CargarCompRecomendacion(PathPdf: string);
    procedure CrearCompRecomendacion(Padre: Twincontrol;MuestraError:Boolean = True);
    procedure LimpiarCompRecomendacion;
    procedure BorrarArchivos(Ruta: string);
    Const LocValor: Array[False..True] of Integer = (0, 1);
    procedure CagarBuscarPostulante(valorfiltrar : Integer);
    procedure DocumentosATreeView;
    procedure ObligarSalir;
    procedure LeerDatos;
    function VerificaCambiosHechos: Boolean;
  public
    IdPostulante: Integer;
    Codigo: String;
    CambiosHechos : Boolean;
    Resultado : integer;
  end;

var
  FrmPostulante: TFrmPostulante;

implementation

uses
  ClientModuleUnit1, xDatabase, UTFrmPersonal, UTFrmSolicitaPersonal, UTFrmCatalogoBancos,
  UTFrmCargos, UTFrmDepartamentos, UTFfrmAltaModDocumentos, UTFrmCatalogoSalarios,
  UTFrmCargaImagen,UtFrmAltaExperiencia,UTFrmDatosBancarios,
  UTFrmAltaModDocumentos,UTFrmPais, UtfrmAltaDocumentosApirante;

{$R *.dfm}

function DigitoVerificador(Cadena: String): String;
var
  Arreglo,
  Resultado, i: Integer;
  Valor: Extended;
begin
  Try
    if Length(Cadena) <> 10 then
      raise Exception.Create('');

    // Verificar si la cadena es completamente numérica
    Try
      Valor := StrToFloat(Cadena);
    Except
      raise Exception.Create('');
    End;

    // Calcular el dígito verificador del número de IMSS
    Resultado := 0;
    for i := 1 to 10 do
    begin
      Try
        Arreglo := StrToInt(Cadena[i]);
        if i Mod 2 = 0 then
          Arreglo := Arreglo * 2;

        if Arreglo > 9 then
          Arreglo := (Arreglo - 10) + 1;

        Resultado := Resultado + Arreglo;
      Except
        raise Exception.Create('');
      End;
    end;

    // Buscar el multiplo de 10 superior inmediato para realizar la resta
    if Resultado Mod 10 = 0 then
      Resultado := 0
    else
      Resultado := (((Resultado Div 10) + 1) * 10) - Resultado;

    Result := Trim(IntToStr(Resultado));
  Except
    Result := '';
  End;
end;

procedure TFrmPostulante.ObligarSalir;
begin
  bForzar := True;
  Close;
  bForzar := False;
end;

procedure TFrmPostulante.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if (CompDocumento <> nil) or (Assigned(CompDocumento)) then
      FreeAndNil(CompDocumento);

    if (CompRecomendacion <> nil) or (Assigned(CompRecomendacion)) then
      FreeAndNil(CompRecomendacion);

    Timer2.Enabled := False;

    if cdPostulante.State in [dsInsert, dsEdit] then
      cdPostulante.Cancel;

    if cdDoctosPostulante.State In [dsInsert, dsEdit] then
      cdDoctosPostulante.Cancel;

    if cddatosbancarios.State In [dsInsert, dsEdit] then
      cddatosbancarios.Cancel;
  finally
    if EnTransaccion then
      CancelarTransaccion;

//    CancelarBloqueo(cdPostulante, cdPostulante.FieldByName('idpostulante').AsInteger);
    CancelarBloqueo(cdPostulante, IdPostulante);
    EliminarConjunto([cdPostulante,cdDoctosPostulante,cddatosbancarios,CdExperiencia,cdPais]);

    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\');

    Action := caFree;
  end;
end;

procedure TFrmPostulante.BorrarArchivos(Ruta: string);
var
  SR: TSearchRec;
begin
  if FindFirst(Ruta + '*.*', $23 , SR)= 0 then
   repeat
     DeleteFile(Ruta+'\'+SR.Name);
   until FindNext(SR) <> 0;
end;

procedure TFrmPostulante.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if Not bForzar then
  Try
    if cdPostulante.State in [dsInsert, dsEdit] then
      CambiosHechos := VerificaCambiosHechos;

    if (CambiosHechos=True) and (cdPostulante.State in [dsInsert, dsEdit]) then
      case InteliDialog.ShowModal('Existen cambios pendientes de ser grabados.', '¿Desea grabar los datos antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes: BtnGrabar.Click;

        mrNo: begin
          cdPostulante.Cancel;
          cdDoctosPostulante.Cancel;
          cdDatosBancarios.Cancel;
          CanClose := True;
        end;

        mrCancel: CanClose := False;
      end;
  Except
    on e:exception do
    begin
      CanClose := True;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmPostulante.FormCreate(Sender: TObject);
begin
  IdPostulante := -9;
  Codigo := '';
  CambiosHechos := False;
  CdPais := TClientDataSet.Create(Self);
  Resultado := mrCancel;
  EndShow := False;
  EnableSysCloseItem(self.Handle, false);
end;

procedure TFrmPostulante.FormDblClick(Sender: TObject);
begin
  if Self.WindowState = wsNormal  then
    Self.WindowState := wsMAximized
  else
    Self.WindowState := wsNormal;
end;

procedure TFrmPostulante.LongitudComponentes(FieldDefs: TFieldDefs; Control: TWinControl);
var
  i: Integer;
  Campo: TFieldDef;
begin
  for i := 0 to Control.ControlCount -1 do
  begin
    if TypInfo.IsPublishedProp(Control.Controls[i], 'DataField') and TypInfo.IsPublishedProp(Control.Controls[i], 'MaxLength') then
    begin
      Campo := FieldDefs.Find(TDBEdit(Control.Controls[i]).DataField);
      if Assigned(Campo) then
        TDBEdit(Control.Controls[i]).MaxLength := Trunc(Campo.Size / 3);
    end;

    if TWinControl(Control.Controls[i]).ControlCount > 0 then
      LongitudComponentes(FieldDefs, TWinControl(Control.Controls[i]));
  end;
end;

procedure TFrmPostulante.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  i : integer;
  NombreArchivo : String;
  FechaArchivo : TDateTime;
begin
  bForzar := False;
  ClientModule1.ComponentColor(self);
  //PFondoDoc.Color:=cl3DDkShadow;
  //PFondoPdf.Color:=cl3DDkShadow;
  pagecontrol1.Visible := False;
  MemArchivosNuevos.Open;
  Try
    try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      // Crear Contenedor para el detalle del Postulante
      if Not CrearConjunto(cdPostulante, 'rhu_postulante', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);

      // Crear contenedor para los documentos del postulante
      if Not CrearConjunto(cdDoctosPostulante, 'rhu_docxpostulante', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos de Postulante']);

      // Crear contenedor para los datos bancarios del postulante
      if Not CrearConjunto(cddatosbancarios, 'rhu_datosbancariosxpersonal', cccatalog) then
        raise InteligentException.CreateByCode(5, ['Datos Bancarios del Postulante']);

      //Crear contenedor para los documentos de experiencia
      if Not CrearConjunto(CdExperiencia, 'rhu_documentosrecomendacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos de Recomendación']);

      //Crear contenedor para la nacionalidad
      if Not CrearConjunto(cdPais, 'nuc_pais', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nacionalidad']);
    finally
      Screen.Cursor := Cursor;
    end;

    LeerDatos;    // Leer datos del postulante solicitado



    Pagecontrol1.ActivePageIndex:=0;
    //EndShow := True;
  Except
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
  End;
end;

procedure TFrmPostulante.NextDBGrid1DblClick(Sender: TObject);
begin
  BtnEditDocumentos.Click;
end;

procedure TFrmPostulante.NxButton15Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPostulante.NxButton1Click(Sender: TObject);
var
  CdEliminarDocumento : TClientDataset;
begin
  try
    self.SendToBack;
    if InteliDialog.ShowModal('Eliminacion de Documento','Usted va a eliminar un documento de un Aspirante, ¡Realmente desea eliminarlo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
    try
      CdEliminarDocumento := TClientDataset.Create(nil);
      if Not CrearConjunto(CdEliminarDocumento, 'rhu_docxpostulante', ccupdate) then
        raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
      if not CargarDatosFiltrados(CdEliminarDocumento,'idpostulante,iddocxpostulante',[cdDoctosPostulante.FieldByName('idpostulante').asinteger, cdDoctosPostulante.FieldByName('iddocxpostulante').asinteger]) then
        raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);
      CdEliminarDocumento.Open;
      CdEliminarDocumento.Delete;
      CdEliminarDocumento.ApplyUpdates(-1);
      cdDoctosPostulante.Refresh;
      if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
        CrearCompDocumento(GroupBox12);
      CargarDocumento(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
      cdDoctosPostulante.FieldByName('IdDocumento').AsString+'.pdf');
      {AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
      cdDoctosPostulante.FieldByName('IdDocumento').AsString+'.pdf');
      //AcroPdf1.show;   }
    finally
      if assigned(CdEliminarDocumento) then
      begin
        EliminarConjunto(CdEliminarDocumento);
        CdEliminarDocumento.Free;
      end;
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al eliminar documento del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;

{    try
      if InteliDialog.ShowModal('AVISO','Va a eliminar uno de los documentos presentado por esta persona.', '¿Realmente desea eliminar el documento seleccionada?', mtInformation,[mbYes, mbNo], 0) = mrNo then
        raise InteligentWarning.Create('');

      if cdDoctosPostulante.RecordCount < 1 then
        raise InteligentException.CreateByCode(26, ['Documentos']);

      BorrarRegistro('rhu_docxpostulante', [cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]);
      CambiosHechos:=true;
      cdDoctosPostulante.Refresh;
    except
      on e:InteligentWarning do
      begin
        ;
      end;

      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:exception do
      InteliDialog.ShowModal('Error al eliminar documento del postulante.', e.Message, mtInformation, [mbOk], 0);

    end;}
end;

procedure TFrmPostulante.NxButton2Click(Sender: TObject);
begin
  if Assigned(CompRecomendacion) and (CompRecomendacion <> nil)  then
  begin
    ShellExecute(self.Handle,nil,PChar(CompRecomendacion.src),'','',SW_SHOWNORMAL)
  end;
end;

procedure TFrmPostulante.BtnAddDocumentosClick(Sender: TObject);
var
  CdUptDocumentos: TClientDataSet;
begin
  try
    try
      Application.CreateForm(TfrmAltaDocumentosApirante, frmAltaDocumentosApirante);

      CdUptDocumentos := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(CdUptDocumentos, 'rhu_docxpostulante', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
        try

          if not CargarDatosFiltrados(CdUptDocumentos,'idpostulante',[-9]) then
            raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);

          CdUptDocumentos.Open;

          CdUptDocumentos.Append;
          CdUptDocumentos.FieldByName('IdDocxPostulante').AsInteger :=0;
          CdUptDocumentos.FieldByName('idpostulante').AsInteger := cdpostulante.FieldByName('idpostulante').asinteger;
          CdUptDocumentos.FieldByName('fechaexpedicion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechavigencia').AsDateTime:=now;
          CdUptDocumentos.FieldByName('fechaaplicacion').AsDateTime:=now;
          CdUptDocumentos.FieldByName('FechaMovimiento').AsDateTime:=now;
          CdUptDocumentos.FieldByName('Activo').AsString := 'Si';
          frmAltaDocumentosApirante.dsDatos.DataSet := CdUptDocumentos;
          frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;
          frmAltaDocumentosApirante.DsDocumentos.DataSet := CdDocumentos;
          frmAltaDocumentosApirante.DsPostulante.DataSet := cdpostulante;
          frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;

          self.SendToBack;
          frmAltaDocumentosApirante.BringToFront;

          frmAltaDocumentosApirante.ShowModal;
          if frmAltaDocumentosApirante.Resultado=mrOk then
          begin
            CambiosHechos:=true;
            cdDoctosPostulante.Refresh;
            cdDoctosPostulante.Locate('IdDocxPostulante', frmAltaDocumentosApirante.LastId, []);

            if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
              CrearCompDocumento(GroupBox12);
            CargarDocumento(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
            {
            AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('IdDocxPostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
            AcroPdf1.show;      }
          end;

        finally
          EliminarConjunto(CdUptDocumentos);
        end;

      finally
        if Assigned(CdUptDocumentos) then
          FreeAndNil(CdUptDocumentos);
      end;

    finally
      frmAltaDocumentosApirante.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de documento del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de documento del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmPostulante.BtnEditBancariosClick(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  try
    try

      if cddatosbancarios.RecordCount < 1 then
        raise InteligentConnection.CreateByCode(26, ['Cuentas bancarias']);

      application.CreateForm(TFrmDatosBancarios, FrmDatosBancarios);

      cdUptCuentas := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptCuentas, 'rhu_datosbancariosxpersonal', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Cuentas bancarias por postulante']);
        try

          if not CargarDatosFiltrados(cdUptCuentas,'iddatosbancariosxpersonal',[cddatosbancarios.FieldByName('iddatosbancariosxpersonal').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['Cuentas bancarias por postulante']);

          cdUptCuentas.Open;

          if cdUptCuentas.RecordCount <> 1 then
            raise InteligentException.Create('El Registro no se pudo localizar.');

          cdUptCuentas.Edit;
          FrmDatosBancarios.dsDatos.DataSet := cdUptCuentas;
          FrmDatosBancarios.ShowModal;
          if FrmDatosBancarios.Resultado = mrok then
           CambiosHechos:=true;

          cddatosbancarios.Refresh;

        finally
          EliminarConjunto(cdUptCuentas);
        end;

      finally
        if Assigned(cdUptCuentas) then
          FreeAndNil(cdUptCuentas);
      end;

    finally
      FrmDatosBancarios.Free;
    end;

  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al editar la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al editar la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmPostulante.BtnEditDocumentosClick(Sender: TObject);
var
  CdUptDocumentos: TClientDataSet;
begin
  try
    try
      if cdDoctosPostulante.RecordCount < 1 then
        raise InteligentConnection.CreateByCode(26, ['Documentos']);

      application.CreateForm(TfrmAltaDocumentosApirante, frmAltaDocumentosApirante);

      CdUptDocumentos := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(CdUptDocumentos, 'rhu_docxpostulante', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos por postulante']);
        try

          if not CargarDatosFiltrados(CdUptDocumentos,'iddocxpostulante,idpostulante',[cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger, cdDoctosPostulante.FieldByName('idpostulante').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['documentos por postulante']);

          CdUptDocumentos.Open;

          if CdUptDocumentos.RecordCount <> 1 then
            raise InteligentException.Create('El Registro no se pudo localizar.');

          CdUptDocumentos.Edit;
          CdUptDocumentos.FieldByName('FechaMovimiento').AsDateTime:=now;
          frmAltaDocumentosApirante.dsDatos.DataSet := CdUptDocumentos;
          frmAltaDocumentosApirante.EBtnDirFile.Text  := CdUptDocumentos.FieldByName('NombreArchivo').AsString;

          if fileexists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          CdUptDocumentos.FieldByName('idpostulante').AsString+'#'+CdUptDocumentos.FieldByName('IdDocxPostulante').AsString+'#'+
          CdUptDocumentos.FieldByName('IdDocumento').AsString+'.pdf') then
          //frmAltaDocumentosApirante.AcroPDF1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          //CdUptDocumentos.FieldByName('idpostulante').AsString+'#'+CdUptDocumentos.FieldByName('IdDocxPostulante').AsString+'#'+
          //CdUptDocumentos.FieldByName('IdDocumento').AsString+'.pdf');
          frmAltaDocumentosApirante.DsDocumentos.DataSet := CdDocumentos;
          frmAltaDocumentosApirante.DsPostulante.DataSet := cdpostulante;
          frmAltaDocumentosApirante.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;
          //frmAltaDocumentosApirante.PFondoPdf.Visible := false;

          //frmAltaDocumentosApirante.AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
          //cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
          //cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');

          //frmAltaDocumentosApirante.AcroPDF1.Show;
          self.SendToBack;
          frmAltaDocumentosApirante.BringToFront;

          frmAltaDocumentosApirante.ShowModal;
          if frmAltaDocumentosApirante.Resultado=mrOk then
          begin
            CambiosHechos:=true;
            cdDoctosPostulante.Refresh;
            cdDoctosPostulante.Locate('IdDocxPostulante', frmAltaDocumentosApirante.LastId, []);
            if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
              CrearCompDocumento(GroupBox12);
            CargarDocumento(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');
            {
            AcroPdf1.LoadFile(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
            cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
            cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf');

            AcroPdf1.show;   }
          end;

        finally
          EliminarConjunto(CdUptDocumentos);
        end;

      finally
        if Assigned(CdUptDocumentos) then
          FreeAndNil(CdUptDocumentos);
      end;

    finally
      frmAltaDocumentosApirante.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al editar el documento del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al editar el documento del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;

end;

procedure TFrmPostulante.BtnActivarClick(Sender: TObject);
var Upt: TClientDataSet;
  Consulta :string;
begin
  try
    if cddatosbancarios.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Datos bancarios']);

    if cddatosbancarios.FieldByName('estado').AsString = 'Activada' then
      raise InteligentException.CreateByCode(24, ['Ya está activada la cuenta']);

    Upt := TClientDataSet.Create(nil);
    try
      if not CrearConjunto(Upt, 'rhu_datosbancariosxpersonal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Datos bancarios.']);

      try

        Consulta := 'Update rhu_datosbancariosxpersonal set estado = "Inactiva" where idpostulante = '+QuotedStr(cdPostulante.FieldByName('idpostulante').AsString);
        PonerSentenciaSQL(Upt.ProviderName, Consulta);
        Upt.Execute;

        Upt.Close;

        CambiosHechos:=true;
      finally
        EliminarConjunto(Upt);
      end;

      if not CrearConjunto(Upt, 'rhu_datosbancariosxpersonal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Datos bancarios.']);
      try
        if not CargarDatosFiltrados(Upt,'Iddatosbancariosxpersonal',[cddatosbancarios.FieldByName('Iddatosbancariosxpersonal').AsInteger]) then
            raise InteligentConnection.CreateByCode(4, ['Cuentas bancarias por postulante']);

        Upt.Open;

        if Upt.RecordCount <> 1 then
          raise Exception.Create('El Registro no se pudo localizar.');

        Upt.Edit;
        Upt.FieldByName('estado').AsString := 'Activada';
        Upt.Post;
        Upt.ApplyUpdates(-1);


      finally
        EliminarConjunto(Upt);
      end;

    finally
      FreeAndNil(Upt);
    end;
    cddatosbancarios.Refresh;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    InteliDialog.ShowModal('Error al activar la cuenta bancaria del postulante.', e.Message, mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmPostulante.BtnAddBancariosClick(Sender: TObject);
var
  cdUptCuentas: TClientDataSet;
begin
  try
    try
      application.CreateForm(TFrmDatosBancarios, FrmDatosBancarios);

      cdUptCuentas := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptCuentas, 'rhu_datosbancariosxpersonal', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Cuentas bancarias por postulante']);
        try

          if not CargarDatosFiltrados(cdUptCuentas,'idpostulante',[-9]) then
            raise InteligentConnection.CreateByCode(4, ['Cuentas bancarias por postulante']);

          cdUptCuentas.Open;

          cdUptCuentas.Append;
          cdUptCuentas.FieldByName('Iddatosbancariosxpersonal').AsInteger :=0;
          if cddatosbancarios.RecordCount > 0 then
            cdUptCuentas.FieldByName('Estado').AsString := 'Inactiva'
          else
            cdUptCuentas.FieldByName('Estado').AsString := 'Activada';

          cdUptCuentas.FieldByName('idpostulante').AsInteger := cdpostulante.FieldByName('idpostulante').asinteger;
          cdUptCuentas.FieldByName('Fechadeaplicacion').AsDateTime:=now;
          cdUptCuentas.FieldByName('Activo').AsString := 'Si';
          FrmDatosBancarios.dsDatos.DataSet := cdUptCuentas;
          FrmDatosBancarios.ShowModal;
          if FrmDatosBancarios.Resultado = mrok then
            CambiosHechos:=true;

          cddatosbancarios.Refresh;

        finally
          EliminarConjunto(cdUptCuentas);
        end;

      finally
        if Assigned(cdUptCuentas) then
          FreeAndNil(cdUptCuentas);
      end;

    finally
      FrmDatosBancarios.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de la cuenta del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmPostulante.BtnAddHistorialClick(Sender: TObject);
var
  cdUptExperiencia: TClientDataSet;
  Nodo, NodoAux, NodoCargo: TTreeNode;
  Lista: TStringList;
  i: integer;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

  function CalcularAntiguedadCarta(Duracion : word; Empresa : string; Descripcion : string ):string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Empresa + ' - Antiguedad: ' + CadDura + ' - ' + Descripcion;
    Result:=Cadena;
  end;

  function CalcularAntiguedadCargo(Duracion : word; Cargo : string): string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Cargo + ' - Antiguedad: ' + CadDura;
    Result:=Cadena;
  end;

begin
  try
    try
      application.CreateForm(TFrmAltaExperiencia, FrmAltaExperiencia);

      cdUptExperiencia := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptExperiencia, 'rhu_documentosrecomendacion', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos de Recomendación']);
        try

          if not CargarDatosFiltrados(cdUptExperiencia,'iddocumentosrecomendacion',[-9]) then
            raise InteligentConnection.CreateByCode(4, ['Documentos de recomendacion']);

          cdUptExperiencia.Open;

          cdUptExperiencia.Append;
          cdUptExperiencia.FieldByName('iddocumentosrecomendacion').AsInteger :=0;
          cdUptExperiencia.FieldByName('empresa').AsString:='';
          cdUptExperiencia.FieldByName('idcargo').AsInteger :=-5;
          cdUptExperiencia.FieldByName('iddocumento').AsInteger :=-9;
          cdUptExperiencia.FieldByName('idpostulante').AsInteger := cdpostulante.FieldByName('idpostulante').asinteger;
          cdUptExperiencia.FieldByName('fechainicio').AsDateTime:= Now;
          cdUptExperiencia.FieldByName('fechatermino').AsDateTime:= Now;
          cdUptExperiencia.FieldByName('activo').AsString:= 'si';
          cdUptExperiencia.FieldByName('tipo').AsString:= 'Laboral';
          cdUptExperiencia.FieldByName('FechaMovimiento').AsDateTime:= Now;
          FrmAltaExperiencia.dsDatos.DataSet := cdUptExperiencia;
          FrmAltaExperiencia.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;

          self.SendToBack;
          FrmAltaExperiencia.BringToFront;

          FrmAltaExperiencia.ShowModal;
          //Agregar Documento al alrbol una ves agregado.
          if FrmAltaExperiencia.Resultado=mrOk then
          begin
            CdExperiencia.Refresh;
            //Si es personal hago un locate y agrego el documento.
            if cdUptExperiencia.FieldByName('Tipo').AsString='Personal' then
            begin
               CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
//               CdExperiencia.Locate('IdDocumentosRecomendacion', IdPostulante,[]);
               new(InfcartaPer);
               InfcartaPer^.IdDocumentosRecomendacion := IdPostulante;
               InfcartaPer^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;

                for i:=0 to (TvDocumentos.Items.Count - 1) do
                begin
                  if (TvDocumentos.Items[i].Level=0) and (TvDocumentos.Items[i].Text='Personal') then
                  begin
                    NodoAux:=TvDocumentos.Items[i];
                  end;
                end;

               Nodo := tvDocumentos.Items.AddChildObject(NodoAux, cdExperiencia.FieldByName('Descripcion').AsString, InfcartaPer);
               Nodo.ImageIndex := 8;
               Nodo.SelectedIndex := 8;
               Nodo.StateIndex := 8;
               Nodo.ExpandedImageIndex := 8;
               Nodo.Expand(True);
            end
            else
            begin
              //Recorro mi arbol para localizar el cargo del nuevo documento ingresado
              for i:=0 to (TvDocumentos.Items.Count - 1) do
              begin
                NodoAux:=ConocerNivelInicial(TvDocumentos.Items[i]);
                if (TvDocumentos.Items[i].Level=1) and (NodoAux.Level=0) and (NodoAux.Text='Profesional') and (cdUptExperiencia.FieldByName('idcargo').AsInteger = TCargoInf(TvDocumentos.Items[i].Data).Idcargo)   then
                begin
                  NodoCargo:=TvDocumentos.Items[i];
                end;
              end;

              //Verifico si lo encontre, entonces incrementeo el periodo de experiencia
              //Para agregar una carta de recoemndacion nueva
              if assigned(Nodocargo) then
              begin
               CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
                //CdExperiencia.Locate('IdDocumentosRecomendacion', IdPostulante,[]);
                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
              end
              else
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', FrmAltaExperiencia.LastId,[]);
                //CdExperiencia.Locate('IdDocumentosRecomendacion', IdPostulante,[]);
                New(InfCargo);
                InfCargo^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                NodoCargo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[0], CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString), InfCargo);
                NodoCargo.ImageIndex := 9;
                NodoCargo.SelectedIndex := 9;
                NodoCargo.StateIndex := 9;
                NodoCargo.ExpandedImageIndex := 9;
                NodoCargo.Expand(True);

                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;

                //###Insertar direccion de archivo #############################
                //al infcartalab insertar una variable de nombre de archivo que guarde al direccion del archivo
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                Nodo.ImageIndex := 7;
                Nodo.SelectedIndex := 7;
                Nodo.StateIndex := 7;
                Nodo.ExpandedImageIndex := 7;
              end;
            end;
            CambiosHechos:=true;
          end;

        finally
          EliminarConjunto(cdUptExperiencia);
        end;

      finally
        if Assigned(cdUptExperiencia) then
          FreeAndNil(cdUptExperiencia);
      end;

    finally
      FrmAltaExperiencia.Free;
    end;

  except

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al crear la alta de historial del postulante.', e.Message, mtInformation, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al crear la alta de historial del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmPostulante.BtnAgregarClick(Sender: TObject);
var
  Estado: TDataSetState;
  i:Integer;
  campo :string;
begin
  try
    if Length(Trim(DBNombre.Text))= 0 then
    begin
      DBNombre.SetFocus;
      raise InteligentWarning.CreateByCode(18, ['Nombre del postulante']);
    end;

    if Length(trim(DBAPaterno.Text))= 0 then
    begin
      DBAPaterno.SetFocus;
      raise InteligentWarning.CreateByCode(18, ['Apellido Paterno']);
    end;

    if Length(trim(DBAmaterno.Text))= 0 then
    begin
      DBAmaterno.SetFocus;
      raise InteligentWarning.CreateByCode(18, ['Apellido Paterno']);
    end;

    Estado := cdPostulante.State;

    cdPostulante.FieldValues['fechanacimiento'] := ClientModule1.DatetoStrSql(DBDateEdit1.Date);

    if ChkInfonavit.Checked then
      cdPostulante.FieldByName('infonavit').AsString := 'Si'
    else
      cdPostulante.FieldByName('infonavit').AsString := 'No';
    cdpostulante.Post;
    cdpostulante.ApplyUpdates(5);


    if (Estado = dsInsert) and (TWinControl(Sender).Tag = 2) then
    begin
      // Si se hizo click en el botón agregar y apenas se está registrando el
      // nuevo Postulante entonces se deberá leer el registro grabado y editarlo
      // para que se proceda a agregar los demas datos del Postulante
      IdPostulante := UltimoId;
      cdPostulante.Close;

      LeerDatos;

      BtnAgregar.Caption := '&Grabar Postulante'; // Cambiar la leyenda del botón
      PageControl1.TabIndex := 1;   // Seleccionar la pestaña de los documentos para continuar con la captura
    end;

    if (Estado = dsEdit) and (TWinControl(Sender).Tag = 2) then
    begin
      // Si se hizo click en el botón agregar y ya se estaban registrado los otros
      // datos del Postulante
      BtnAgregar.Caption := '&Grabar Ficha'; // Cambiar la leyenda del botón
      PageControl1.TabIndex := 1;   // Seleccionar la pestaña de los documentos para continuar con la captura

      MemArchivosNuevos.First;
      while not MemArchivosNuevos.Eof do
      begin
        MemArchivosNuevos.Delete;
      end;

      if EnTransaccion then
        ConcretarTransaccion;

      // Iniciar un nuevo registro
      IdPostulante := -9;
      cdPostulante.Close;
      cdDoctosPostulante.Close;
      cdDatosBancarios.Close;
      cdExperiencia.Close;
      cdPais.Close;
      DBImss.Text := '';
      JvLabel15.Caption := '-';

      LeerDatos;
    end;

    if {(Estado = dsEdit) and} (TWinControl(Sender).Tag = 4) then
    begin
      // Solo cerrar la ventana
      if EnTransaccion then
        ConcretarTransaccion;

      Close;
    end;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
    begin
      if EnTransaccion then
        CancelarTransaccion;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      ObligarSalir;
    end;

    on e:exception do
    begin
      if EnTransaccion then
        CancelarTransaccion;
      CambiosHechos:=false;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      ObligarSalir;
    end;
  end;
end;

procedure TFrmPostulante.BtnDeleteBancariosClick(Sender: TObject);
begin
  try
    if InteliDialog.ShowModal('AVISO','Va a eliminar una de las cuentas bancarias de esta persona.', '¿Realmente desea eliminar la cuenta bancaria seleccionada?', mtInformation,[mbYes, mbNo], 0) = mrNo then
      raise InteligentWarning.Create('');

    if cddatosbancarios.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Historial']);

    BorrarRegistro('rhu_datosbancariosxpersonal', [cddatosbancarios.FieldByName('Iddatosbancariosxpersonal').AsInteger]);
    CambiosHechos:=true;
    cddatosbancarios.Refresh;
  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    InteliDialog.ShowModal('Error al eliminar la cuenta bancaria del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmPostulante.BtnDeleteHistorialClick(Sender: TObject);
var
  NodoAux, Nodo, Nodocargo : TTReeNode;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

  function CalcularAntiguedadCargo(Duracion : word; Cargo : string): string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Cargo + ' - Antiguedad: ' + CadDura;
    Result:=Cadena;
  end;

begin
  try
    if  InteliDialog.ShowModal('AVISO','Va a eliminar un documento de la seccion de recomendaciones', '¿Realmente desea eliminar el documento seleccionado?', mtInformation,[mbYes, mbNo], 0) = mrNo then
    raise InteligentWarning.Create('');

    NodoAux := ConocerNivelInicial(TvDocumentos.Selected);

    if ((NodoAux.Index=0) and (TvDocumentos.Selected.Level<>2))
    or ((NodoAux.Index=1) and (TvDocumentos.Selected.Level<>1) ) then
    raise Inteligentwarning.Create('');

    Nodo:=TvDocumentos.Selected;

    if CdExperiencia.RecordCount < 1 then
      raise InteligentException.CreateByCode(26, ['Historial']);

    BorrarRegistro('rhu_documentosrecomendacion', [CdExperiencia.FieldByName('iddocumentosrecomendacion').AsInteger]);

    CdExperiencia.Refresh;

    NodoAux:=ConocerNivelInicial(TvDocumentos.Selected);
    if NodoAux.Text='Personal' then
    begin
      Nodo.Destroy;
    end
    else
    begin
      NodoCargo:=Nodo.Parent;
      Nodo.Destroy;
        if NodoCargo.Count=0  then
          NodoCargo.Destroy
        else
        begin
          CdExperiencia.Locate('iddocumentosrecomendacion', TCargoInf(NodoCargo.Data).Idcargo, []);
          NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
        end;
    end;

    CambiosHechos:=True;
  except

    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    InteliDialog.ShowModal('Error al eliminar historial del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmPostulante.BtnEditHistorialClick(Sender: TObject);
var
  cdUptExperiencia: TClientDataSet;
  NodoAux, Nodo, Nodocargo : TTReeNode;
  TipoAnterior : string;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;
  i, IdDoc : integer;
  NombreArchivo : string;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

  function CalcularAntiguedadCarta(Duracion : word; Empresa : string; Descripcion : string ):string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Empresa + ' - Antiguedad: ' + CadDura + ' - ' + Descripcion;
    Result:=Cadena;
  end;

  function CalcularAntiguedadCargo(Duracion : word; Cargo : string): string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Cargo + ' - Antiguedad: ' + CadDura;
    Result:=Cadena;
  end;

begin
  try
    try

      Nodo:=TvDocumentos.Selected;
      NodoAux := ConocerNivelInicial(TvDocumentos.Selected);

      if ((NodoAux.Index=0) and (TvDocumentos.Selected.Level<>2))
      or ((NodoAux.Index=1) and (TvDocumentos.Selected.Level<>1) ) then
      raise Inteligentwarning.Create('');



      if Nodo.Level=2 then
      begin
        IdDoc := TCartaInfLab(Nodo.Data).IdDocumentosRecomendacion;
        NombreArchivo := TCartaInfLab(Nodo.Data).NombreArchivo;
      end;

      if (Nodo.Level=1) and (Nodo.Index=1) then
      begin
        IdDoc := TCartaInfPer(Nodo.Data).IdDocumentosRecomendacion;
        NombreArchivo := TCartaInfPer(Nodo.Data).NombreArchivo;
      end;


      if CdExperiencia.RecordCount < 1 then
        raise InteligentConnection.CreateByCode(26, ['Historial']);

      application.CreateForm(TFrmAltaExperiencia, FrmAltaExperiencia);

      cdUptExperiencia := TClientDataSet.Create(nil);
      try

        if Not CrearConjunto(cdUptExperiencia, 'rhu_documentosrecomendacion', ccupdate) then
          raise InteligentConnection.CreateByCode(5, ['Documentos de Recomendación']);
        try
          if not CargarDatosFiltrados(cdUptExperiencia,'iddocumentosrecomendacion,idpostulante',[IdDoc, IdPostulante]) then
            raise InteligentConnection.CreateByCode(4, ['Documentos de recomendacion']);
          //if not CargarDatosFiltrados(cdUptExperiencia,'iddocumentosrecomendacion',[TCartaInfLab(Nodo.Data).IdDocumentosRecomendacion]) then
            //raise InteligentConnection.CreateByCode(4, ['Documentos de recomendacion']);

          cdUptExperiencia.Open;

          if cdUptExperiencia.RecordCount <> 1 then
            raise InteligentException.CreateByCode(13, [CdExperiencia.fieldbyname('Descripcion').AsString, 'Documentos de Recomendación']);

          cdUptExperiencia.Edit;

          FrmAltaExperiencia.dsDatos.DataSet := cdUptExperiencia;
          FrmAltaExperiencia.DsMemArchivosNuevos.DataSet := MemArchivosNuevos;
          FrmAltaExperiencia.AcroPdf1.LoadFile(NombreArchivo);
          FrmAltaExperiencia.AcroPDF1.Show;
          FrmAltaExperiencia.PFondoPdf.Visible := false;
          self.SendToBack;
          FrmAltaExperiencia.BringToFront;
          FrmAltaExperiencia.ShowModal;

          if FrmAltaExperiencia.Resultado=mrOk then
          begin
            CdExperiencia.Refresh;
            CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);
            NodoAux:=ConocerNivelInicial(Nodo);
            if NodoAux.Text='Personal' then
            begin
              Nodo.Destroy;
            end
            else
            begin
              NodoCargo:=Nodo.Parent;
              Nodo.Destroy;
                if NodoCargo.Count=0  then
                  NodoCargo.Destroy;
            end;

            if cdUptExperiencia.FieldByName('Tipo').AsString='Personal' then
            begin
               CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);

               new(InfcartaPer);
               InfcartaPer^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
               InfcartaPer^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;
                for i:=0 to (TvDocumentos.Items.Count - 1) do
                begin
                  if (TvDocumentos.Items[i].Level=0) and  (TvDocumentos.Items[i].Text='Personal') then
                  begin
                    NodoAux:=TvDocumentos.Items[i];
                  end;
                end;

               Nodo := tvDocumentos.Items.AddChildObject(NodoAux, cdExperiencia.FieldByName('Descripcion').AsString, InfcartaPer);
               Nodo.ImageIndex := 8;
               Nodo.SelectedIndex := 8;
               Nodo.StateIndex := 8;
               Nodo.ExpandedImageIndex := 8;
               Nodo.Expand(True);
              if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
                CrearCompRecomendacion(groupbox6);
              CargarCompRecomendacion(FrmAltaExperiencia.DireccionArchivo);
               {AcroPdf2.LoadFile(FrmAltaExperiencia.DireccionArchivo);
               AcroPDF2.Show; }
            end
            else
            begin

              NodoCargo :=nil;
              for i:=0 to (TvDocumentos.Items.Count - 1) do
              begin
                NodoAux:=ConocerNivelInicial(TvDocumentos.Items[i]);
                if (TvDocumentos.Items[i].Level=1) and (NodoAux.Text='Profesional') and (cdUptExperiencia.FieldByName('idcargo').AsInteger = TCargoInf(TvDocumentos.Items[i].Data).Idcargo)   then
                begin
                  NodoCargo:=TvDocumentos.Items[i];
                end;
              end;

              if assigned(Nodocargo) then
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);
                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;
                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
                if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
                  CrearCompRecomendacion(groupbox6);
                CargarCompRecomendacion(FrmAltaExperiencia.DireccionArchivo);
                {AcroPdf2.LoadFile(FrmAltaExperiencia.DireccionArchivo);
                AcroPDF2.Show;    }
              end
              else
              begin
                CdExperiencia.Locate('IdDocumentosRecomendacion', IdDoc, []);
                New(InfCargo);
                InfCargo^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;

                for i:=0 to (TvDocumentos.Items.Count - 1) do
                begin
                  if (TvDocumentos.Items[i].Level=0) and  (TvDocumentos.Items[i].Text='Profesional') then
                  begin
                    NodoAux:=TvDocumentos.Items[i];
                  end;
                end;

                //NodoCargo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[0], CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString), InfCargo);
                NodoCargo := tvDocumentos.Items.AddChildObject(NodoAux, CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString), InfCargo);
                NodoCargo.ImageIndex := 9;
                NodoCargo.SelectedIndex := 9;
                NodoCargo.StateIndex := 9;
                NodoCargo.ExpandedImageIndex := 9;
                NodoCargo.Expand(True);

                New(InfCartaLab);
                InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
                InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
                InfCartaLab^.NombreArchivo := FrmAltaExperiencia.DireccionArchivo;

                if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
                  CrearCompRecomendacion(groupbox6);
                CargarCompRecomendacion(FrmAltaExperiencia.DireccionArchivo);
                {AcroPdf2.LoadFile(FrmAltaExperiencia.DireccionArchivo);
                AcroPDF2.Show;  }

                Nodo := tvDocumentos.Items.AddChildObject(NodoCargo, CalcularAntiguedadCarta(cdExperiencia.FieldByName('Duracion_2').AsInteger, cdExperiencia.FieldByName('Empresa').AsString, cdExperiencia.FieldByName('Descripcion').AsString), InfCartaLab);
                Nodo.ImageIndex := 7;
                Nodo.SelectedIndex := 7;
                Nodo.StateIndex := 7;
                Nodo.ExpandedImageIndex := 7;
              end;
            end;
          CambiosHechos:=true;
          end;
        finally
          EliminarConjunto(cdUptExperiencia);
        end;

      finally
        if Assigned(cdUptExperiencia) then
          FreeAndNil(cdUptExperiencia);
      end;

    finally
      FrmAltaExperiencia.Free;
    end;

  except
    on e:InteligentWarning do
    begin
      ;
    end;

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('Error al editar historial del postulante.', e.Message, mtInformation, [mbOk], 0);


    on e:exception do
      InteliDialog.ShowModal('Error al editar historial del postulante.', e.Message, mtInformation, [mbOk], 0);

  end;
end;

procedure TFrmPostulante.PageControl1Change(Sender: TObject);
begin
  if ((cdPostulante.Active) and (cdPostulante.State = dsInsert)) and (PageControl1.ActivePageIndex<>0) then
    pagecontrol1.ActivePageIndex:=0;
end;

procedure TFrmPostulante.Btn_CancelarClick(Sender: TObject);
begin
  Try
    if cdPostulante.State in [dsInsert, dsEdit] then
    begin
      CambiosHechos := VerificaCambiosHechos;

      if CambiosHechos=True then
      begin
        case InteliDialog.ShowModal('Existen cambios pendientes de ser grabados.', '¿Desea grabar los datos antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes: BtnGrabar.Click;

          mrNo: begin
            cdPostulante.Cancel;
            cdDoctosPostulante.Cancel;
            cddatosbancarios.Cancel;
            Resultado := mrCancel;
            MemArchivosNuevos.First;
            while not MemArchivosNuevos.Eof do
            begin
              if FileExists(MemArchivosNuevos.FieldByName('NombreArchivo').AsString) then
              begin
                 DeleteFile(PChar(MemArchivosNuevos.FieldByName('NombreArchivo').AsString));
              end
              else
              begin
                MemArchivosNuevos.Next;
              end;
            end;
            Close;
          end;
        end;
      end
      else
      begin
        while not MemArchivosNuevos.Eof do
        begin
          if FileExists(MemArchivosNuevos.FieldByName('NombreArchivo').AsString) then
          begin
             DeleteFile(PChar(MemArchivosNuevos.FieldByName('NombreArchivo').AsString));
          end
          else
          begin
            MemArchivosNuevos.Next;
          end;
        end;
        close;
      end;
    end;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;

end;

procedure TFrmPostulante.Button1Click(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(cdPostulante.FieldByName('imagen')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

//CODIGO DE RECURSIVIDAD IMPORTANTE#############################################
procedure TFrmPostulante.Button2Click(Sender: TObject);
var
  i:Integer;
  naux:TTreeNode;

  function ConocerAbuelo (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerAbuelo(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;


begin

  for i:=0 to (TvDocumentos.Items.Count - 1) do
  begin
     naux:=ConocerAbuelo(TvDocumentos.Items[i]);
    if (TvDocumentos.Items[i].Level=2) and (naux.Level=0) and (naux.Index=0) then
    begin
      showmessage(inttostr(TCartaInfLab(TvDocumentos.Items[i].Data).IdDocumentosRecomendacion)+', '+inttostr(TvDocumentos.Items[i].Level));
    end;
  end;
end;
procedure TFrmPostulante.Button3Click(Sender: TObject);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo:string;
  FechaArchivo : TDateTime;

  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin

  if cdDoctosPostulante.RecordCount > 0 then
  begin
    //trabajando con el componente pdf
    if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
      CrearCompDocumento(GroupBox12);
    LimpiarCompDocumento;

    //generando el nombre del archivo, encaso de no existir directorio crearlo
    NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo := Nombrearchivo + '\Documentos RH\';

    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo:= NombreArchivo +
    cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
    cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

    stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

    StartPosition := stream.Position;
    FStreamHeader := TStringStream.Create;

    try
      With FStreamHeader do
      begin
        CopyFrom(stream, 512);
        if pos(PDFFILE_HEADER,DataString) <= 0 then
          raise Exception.Create('No es pdf');
      end;

      //Si el archivo existe verificar fecha y cargarlo
      if (FileExists(NombreArchivo)) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin

          //comparar fecha con el alojado
          if FechaArchivo <> cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime then
          begin
            //si es diferente descargarlo
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

            //y poner la fecha original
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);

          end;
        end;
      end
      else
      begin
        //En cacso de no existir no comparar nada y descargarlo
        TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
        //y poner la fecha original
        cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);

      end;



      //cargar el documento
      CargarDocumento(NombreArchivo);
      groupbox12.Visible := True;
    except
      on e:exception do
      begin
        if e.Message = 'No es pdf' then
        begin
          //borralo
          if InteliDialog.ShowModal('Distinto tipo de archivo', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
          begin
            TClientDataset(DsEliminarDocumento.DataSet).Close;
            if Not  CargarDatosFiltrados(TClientDataset(DsEliminarDocumento.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
            TClientDataset(DsEliminarDocumento.DataSet).Open;
            TClientDataset(DsEliminarDocumento.DataSet).Delete;
            TClientDataset(DsEliminarDocumento.DataSet).ApplyUpdates(-1);
            cdDoctosPostulante.Refresh;
          end;
        end
        else
        begin
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        end;
        groupbox12.Visible := False;
      end;

    end;
  end;

end;


procedure TFrmPostulante.ButtonopenClick(Sender: TObject);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo:string;
  FechaArchivo : TDateTime;

  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin

  if cdDoctosPostulante.RecordCount > 0 then
  begin


    //generando el nombre del archivo, encaso de no existir directorio crearlo
    NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo := Nombrearchivo + '\Documentos RH\';

    if not DirectoryExists(NombreArchivo) then
      MkDir(NombreArchivo);

    NombreArchivo:= NombreArchivo +
    cdDoctosPostulante.FieldByName('idpostulante').AsString+'_'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
    cdDoctosPostulante.FieldByName('IdDocumento').AsString+'_rhu_docxpostulante.pdf';

    stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);

    StartPosition := stream.Position;
    FStreamHeader := TStringStream.Create;

    try
      With FStreamHeader do
      begin
        CopyFrom(stream, 512);
        if pos(PDFFILE_HEADER,DataString) <= 0 then
          raise Exception.Create('No es pdf');
      end;

      //Si el archivo existe verificar fecha y cargarlo
      if (FileExists(NombreArchivo)) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin

          //comparar fecha con el alojado
          if FechaArchivo <> cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime then
          begin
            //si es diferente descargarlo
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);

            //y poner la fecha original
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);

          end;
        end;
      end
      else
      begin
        //En cacso de no existir no comparar nada y descargarlo
        TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
        //y poner la fecha original
        cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);

      end;



      //cargar el documento
      //CargarDocumento(NombreArchivo);
      ShellExecute(self.Handle,nil,PChar(NombreArchivo),'','',SW_SHOWNORMAL);
    except
      on e:exception do
      begin
        if e.Message = 'No es pdf' then
        begin
          //borralo
          if InteliDialog.ShowModal('Distinto tipo de archivo', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
          begin
            TClientDataset(DsEliminarDocumento.DataSet).Close;
            if Not  CargarDatosFiltrados(TClientDataset(DsEliminarDocumento.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
            TClientDataset(DsEliminarDocumento.DataSet).Open;
            TClientDataset(DsEliminarDocumento.DataSet).Delete;
            TClientDataset(DsEliminarDocumento.DataSet).ApplyUpdates(-1);
            cdDoctosPostulante.Refresh;
          end;
        end
        else
        begin
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        end;

      end;

    end;
  end;

end;

procedure TFrmPostulante.CagarBuscarPostulante;
begin
end;

procedure TFrmPostulante.cdDoctosPostulanteAfterScroll(DataSet: TDataSet);
const
  PDFFILE_HEADER = '%PDF';
var
  NombreArchivo : string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin

  if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
    CrearCompDocumento(GroupBox12,False);
  LimpiarCompDocumento;


  {
  if endshow = true then
  begin
    if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
      CrearCompDocumento(GroupBox12);
    LimpiarCompDocumento;
    NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
    cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
    cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf';


    if (FileExists(NombreArchivo)) and (cdDoctosPostulante.RecordCount > 0) then
    begin
      if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
      begin
        if FechaArchivo <> cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime then
        begin
          TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
          cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
        end;
      end;


      if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
        CrearCompDocumento(GroupBox12);

      //CargarDocumento(NombreArchivo);


    end
    else
    begin
      stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);
      StartPosition := stream.Position;
      FStreamHeader := TStringStream.Create;
      With FStreamHeader do
      begin
        CopyFrom(stream, 512);
        if pos(PDFFILE_HEADER,DataString) > 0 then
        begin
          //si es archivo pdf
          TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
          cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);

          if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
            CrearCompDocumento(GroupBox12);

          CargarDocumento(NombreArchivo);


        end
        else
        begin
          //no es archivo pdf
          self.SendToBack;
          if InteliDialog.ShowModal('Distinto tipo de archiv', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
          begin
            TClientDataset(DsEliminarDocumento.DataSet).Close;
            if Not  CargarDatosFiltrados(TClientDataset(DsEliminarDocumento.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
              raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
            TClientDataset(DsEliminarDocumento.DataSet).Open;
            TClientDataset(DsEliminarDocumento.DataSet).Delete;
            TClientDataset(DsEliminarDocumento.DataSet).ApplyUpdates(-1);
            cdDoctosPostulante.Refresh;
          end;
        end;
      end;
    end;
  end;  }
end;

{$REGION 'Componente  de PDF'}
  {$REGION 'Documentos'}
  procedure TFrmPostulante.CrearCompDocumento(Padre:Twincontrol;MuestraError:Boolean);
  begin
    try
      try
        CompDocumento := TAcroPDF.Create(Padre);
        CompDocumento.Parent := Padre;
        CompDocumento.Align:= alClient;
        CompDocumento.DoubleBuffered := False;
      except
        on e:Exception do
          if MuestraError then
            ShowMessage('Error al crear el Preview de archivos PDF de documentos, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat reader falló: '+e.Message)
          else;
      end;
    finally
      Padre.Visible := False;
    end;
  end;

  procedure TFrmPostulante.CargarDocumento(PathPdf:string);
  begin
    //Cargar pdf
    if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
    begin
      if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
      begin
        CompDocumento.LoadFile(PathPdf);
        CompDocumento.Parent.Visible := True;
        {CompDocumento.Repaint;
        CompDocumento.Refresh;
        CompDocumento.gotoFirstPage;
        Compdocumento.Show;   }
      end
      else
        LimpiarCompDocumento;
    end;
  end;

  procedure TFrmPostulante.LimpiarCompDocumento;
  var
    padre: TWinControl;
  begin
    //Limpiar el componente
    if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
    begin
      padre := CompDocumento.Parent;
      FreeAndNil(CompDocumento);
      CrearCompDocumento(padre,False);
    end;
  end;
  {$ENDREGION}

  {$REGION 'Recomendaciones'}
  procedure TFrmPostulante.CrearCompRecomendacion(Padre:Twincontrol;MuestraError:Boolean);
  begin
    try
      CompRecomendacion := TAcroPDF.Create(Padre);
      CompRecomendacion.Parent := Padre;
      CompRecomendacion.Align:= alClient;
      Padre.Visible := False;
    except
      on e:Exception do
      begin
        if MuestraError then
          ShowMessage('Error al crear el Preview de archivos PDF de documentos de recomendación, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat Reader falló : '+e.Message)
        else;
        Padre.Visible := False;
      end;
    end;
  end;

  procedure TFrmPostulante.CargarCompRecomendacion(PathPdf:string);
  begin
    //Cargar pdf
    if (Assigned(CompRecomendacion)) and (CompRecomendacion <> nil) then
    begin
      if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
      begin

        CompRecomendacion.LoadFile(PathPdf);
        CompRecomendacion.Repaint;
        CompRecomendacion.Refresh;
        CompRecomendacion.gotoFirstPage;
        CompRecomendacion.Parent.Visible := True;

      end
      else
        LimpiarCompRecomendacion;
    end;
  end;

  procedure TFrmPostulante.LimpiarCompRecomendacion;
  var
    padre: TWinControl;
  begin
    //Limpiar el componente
    if (Assigned(CompRecomendacion)) and (CompRecomendacion <> nil) then
    begin
      padre := CompRecomendacion.Parent;
      FreeAndNil(CompRecomendacion);
      CrearCompRecomendacion(padre);
    end;
  end;
  {$ENDREGION}

{$ENDREGION}

procedure TFrmPostulante.cdPostulanteAfterEdit(DataSet: TDataSet);
begin
  ChkInfonavit.Checked := DataSet.FieldByName('Infonavit').AsString <> '';
  Self.Caption := 'Ficha de Aspirante - ' + UpperCase(DataSet.FieldByName('APaterno').AsString + ', ' + DataSet.FieldByName('Nombres').AsString);
end;

procedure TFrmPostulante.GrdBancariosDblClick(Sender: TObject);
begin
  BtnEditBancarios.Click;
end;

procedure TFrmPostulante.GrdDocumentosDblClick(Sender: TObject);
begin
  BtnEditDocumentos.Click;
end;

procedure TFrmPostulante.DBImssChange(Sender: TObject);
var
  Digito: String;
begin
  Digito := DigitoVerificador(DBImss.Text);
  JvLabel15.Caption := '-' + Digito;

  if Digito <> '' then
    cdPostulante.FieldByName('NumeroSeguroSocial').AsString := DBImss.Text + Digito;
end;

procedure TFrmPostulante.EdtNacionalidadClickBtn(Sender: TObject);
begin
  if (dsPostulante.DataSet.State in [dsEdit,dsInsert])  then
    GetPais;
end;

procedure TFrmPostulante.EdtNacionalidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) and (dsPostulante.DataSet.State in [dsEdit,dsInsert]) then
  begin
    cdPais.close;
    CargarDatosFiltrados(cdPais,'codigopais',[EdtNacionalidad.text]);
    cdPais.Open;
    if cdPais.RecordCount = 1 then
    begin
      EdtNacionalidad.Text := cdPais.FieldByName('codigopais').asstring;
      dsPostulante.DataSet.FieldByName('nacionalidad').AsInteger := cdPais.FieldByName('idpais').AsInteger;
    end
    else
    if InteliDialog.ShowModal('Aviso', 'Se encontraron varias o ninguna coincidencia con el nombre ingresado.' + #10 +
                                '¿Quiere Seleccionar un registro del catálogo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      getPais;
  end;
end;

procedure TFrmPostulante.Timer2Timer(Sender: TObject);
begin
  if (cdPostulante.Active) and (cdPostulante.State = dsInsert) then
    cdPostulante.FieldByName('FechaAlta').AsDateTime := Now;
end;

procedure TFrmPostulante.tvDocumentosChange(Sender: TObject; Node: TTreeNode);
const
  PDFFILE_HEADER = '%PDF';
var
  NodeAux :TTreeNode;
  NombreArchivo : string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
  NodoAux, Nodo, Nodocargo : TTReeNode;

  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;

  function CalcularAntiguedadCargo(Duracion : word; Cargo : string): string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Cargo + ' - Antiguedad: ' + CadDura;
    Result:=Cadena;
  end;
begin
  try
    if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
      CrearCompRecomendacion(groupbox6,False);
    LimpiarCompRecomendacion;

    NodoAux := ConocerNivelInicial(TvDocumentos.Selected);
    Nodo:=TvDocumentos.Selected;

    BtnEditHistorial.Enabled := Assigned(Node.Data);
    BtnDeleteHistorial.Enabled := Assigned(Node.Data);

    NodeAux := ConocerNivelInicial(TvDocumentos.Selected);
    if TvDocumentos.Selected.Level=2 then
    begin
      cdExperiencia.Locate('IdDocumentosRecomendacion', TCartaInfLab(TvDocumentos.Selected.Data).IdDocumentosRecomendacion, []);

      NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
      cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

      if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin
          if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
          end;
        end;
        if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
          CrearCompRecomendacion(groupbox6);
        CargarCompRecomendacion(NombreArchivo);
      end
      else
      begin
        stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
        StartPosition := stream.Position;
        FStreamHeader := TStringStream.Create;
        With FStreamHeader do
        begin
          CopyFrom(stream, 512);
          if pos(PDFFILE_HEADER,DataString) > 0 then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
             if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
               CrearCompRecomendacion(groupbox6);
             CargarCompRecomendacion(NombreArchivo);

          end
          else
          begin
            self.SendToBack;
            if InteliDialog.ShowModal('Distinto tipo de archiv', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
            begin
              TClientDataset(DsEliminarExperiencia.DataSet).Close;
              if Not  CargarDatosFiltrados(TClientDataset(DsEliminarExperiencia.DataSet), 'idpostulante,IdDocxPostulante', [cdDoctosPostulante.FieldByName('idpostulante').AsInteger, cdDoctosPostulante.FieldByName('iddocxpostulante').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
              TClientDataset(DsEliminarExperiencia.DataSet).Open;
              TClientDataset(DsEliminarExperiencia.DataSet).Delete;
              TClientDataset(DsEliminarExperiencia.DataSet).ApplyUpdates(-1);
              CdExperiencia.Refresh;

              NodoAux:=ConocerNivelInicial(TvDocumentos.Selected);
              if NodoAux.Text='Personal' then
              begin
                Nodo.Destroy;
              end
              else
              begin
                NodoCargo:=Nodo.Parent;
                Nodo.Destroy;
                  if NodoCargo.Count=0  then
                    NodoCargo.Destroy
                  else
                  begin
                    CdExperiencia.Locate('iddocumentosrecomendacion', TCargoInf(NodoCargo.Data).Idcargo, []);
                    NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
                  end;
              end;
              CambiosHechos:=True;
            end;
          end;
        end;
      end;
    end;


    if (TvDocumentos.Selected.Level=1) and (NodeAux.Index=1) then
    begin
      cdExperiencia.Locate('IdDocumentosRecomendacion', TCartaInfPer(TvDocumentos.Selected.Data).IdDocumentosRecomendacion, []);

      NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
      cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

      if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin
          if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
          end;
        end;
        if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
          CrearCompRecomendacion(groupbox6);
        CargarCompRecomendacion(NombreArchivo);
      end
      else
      begin
        stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
        StartPosition := stream.Position;
        FStreamHeader := TStringStream.Create;
        With FStreamHeader do
        begin
          CopyFrom(stream, 512);
          if pos(PDFFILE_HEADER,DataString) > 0 then
          begin
            TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            if (not Assigned(CompRecomendacion)) or (CompRecomendacion = nil) then
              CrearCompRecomendacion(GroupBox6);
            CargarCompRecomendacion(NombreArchivo);
          end
          else
          begin
            self.SendToBack;
            if InteliDialog.ShowModal('Distinto tipo de archiv', 'El archivo que esta intentando mostrar no sees un pdf, desea borrarlo para cargarlo correctamente?', mtInformation, [mbyes, mbno], 0) = MrYes then
            begin
              TClientDataset(DsEliminarExperiencia.DataSet).Close;
              if Not  CargarDatosFiltrados(TClientDataset(DsEliminarExperiencia.DataSet), 'idpostulante,iddocumentosrecomendacion', [cdExperiencia.FieldByName('idpostulante').AsInteger, cdExperiencia.FieldByName('iddocumentosrecomendacion').AsInteger]) then
                raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
              TClientDataset(DsEliminarExperiencia.DataSet).Open;
              TClientDataset(DsEliminarExperiencia.DataSet).Delete;
              TClientDataset(DsEliminarExperiencia.DataSet).ApplyUpdates(-1);
              CdExperiencia.Refresh;

              NodoAux:=ConocerNivelInicial(TvDocumentos.Selected);
              if NodoAux.Text='Personal' then
              begin
                Nodo.Destroy;
              end
              else
              begin
                NodoCargo:=Nodo.Parent;
                Nodo.Destroy;
                if NodoCargo.Count=0  then
                  NodoCargo.Destroy
                else
                begin
                  CdExperiencia.Locate('idcargo', TCargoInf(NodoCargo.Data).Idcargo, []);
                  NodoCargo.Text:=CalcularAntiguedadCargo(cdExperiencia.FieldByName('Duracion').AsInteger, cdExperiencia.FieldByName('TituloCargo').AsString);
                end;
              end;
              CambiosHechos:=True;
            end;
          end;
        end;
      end;
    end;


  finally
    if (Length(trim(NombreArchivo)) > 0) and (FileExists(NombreArchivo)) and (not GroupBox6.visible) then
      ShellExecute(self.Handle,nil,PChar(NombreArchivo),'','',SW_SHOWNORMAL);
  end
end;

procedure TFrmPostulante.tvDocumentosDblClick(Sender: TObject);
var
  NodeAux :TTreeNode;
  function ConocerNivelInicial (n:TTreeNode): TTreeNode;
  var resultado:Ttreenode;
  begin
    Resultado := nil;
    if n.Level <> 0 then
    begin
      Resultado := ConocerNivelInicial(n.Parent);
    end
    else
    begin
      resultado:=n;
    end;
    Result := Resultado;
  end;
begin
  NodeAux:= ConocerNivelInicial(tvDocumentos.Selected);
  if (NodeAux.Index=0) and (TvDocumentos.Selected.Level=2) then
    BtnEditHistorial.Click;

  if (NodeAux.Index=1) and (TvDocumentos.Selected.Level=1) then
      BtnEditHistorial.Click;
end;

procedure TFrmPostulante.GetPais;
Var
  registro: TLista;
begin
  try
    try
      FrmPais := TFrmPais.Create(nil);

      FrmPais.ModoSeleccion       := True;
      FrmPais.PanelAdd.Visible    := False;
      FrmPais.PanelEdit.Visible   := False;
      FrmPais.PanelDelete.Visible := False;
      FrmPais.PanelPrint.Visible  := False;
      FrmPais.PanelExport.Visible := False;
      FrmPais.PanelImport.Visible := False;

      registro := FrmPais.SeleccionarItem();

      if Assigned(registro) then
      begin
        dsPostulante.DataSet.FieldByName('nacionalidad').AsInteger:= registro.Valor['idpais'];
        EdtNacionalidad.Text:=registro.Valor['codigopais'];
      end;

    except
      on e:exception do
      InteliDialog.ShowModal('Error al cargar catalogo de pais.', e.Message, mtInformation, [mbOk], 0);
    end;
  finally
      FrmPais.Free;
  end;
end;

procedure TFrmPostulante.ChkInfonavitClick(Sender: TObject);
begin
  EdtNoInfonavit.Enabled:=ChkInfonavit.Checked;
  if (CdPostulante.State in [DsInsert, DsEdit]) and (ChkInfonavit.Checked=false) then
  begin
    CdPostulante.FieldByName('NumeroInfonavit').AsString:='';
  end;
end;

procedure TFrmPostulante.DocumentosATreeView;
const
  PDFFILE_HEADER = '%PDF';
var
  Lista: TStringList;
  Nodo, Nodo2: TTreeNode;
  Duracion, Anios, Meses: Word;
  CadDura: String;
  InfCargo : TCargoInf;
  InfCartaLab : TCartaInfLab;
  InfcartaPer : TCartaInfPer;
  NombreArchivo : string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin
  Lista := TStringList.Create;
  Try
    Lista.Clear;

    Nodo2 := tvDocumentos.Items.Item[1];
    cdExperiencia.First;
    while not cdExperiencia.Eof do
    begin
      if cdExperiencia.FieldByName('Tipo').AsString = 'Personal' then
      begin

        NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
        cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

        if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
        begin
          if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
          begin
            if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end;
          end;
        end
        else
        begin
          stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
          StartPosition := stream.Position;
          FStreamHeader := TStringStream.Create;
          With FStreamHeader do
          begin
            CopyFrom(stream, 512);
            if pos(PDFFILE_HEADER,DataString) > 0 then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end
            else
            begin
              NombreArchivo:='';
            end;
          end;
        end;

        new(InfcartaPer);
        InfcartaPer^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
        InfcartaPer^.NombreArchivo := NombreArchivo;
        Nodo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[1], cdExperiencia.FieldByName('Descripcion').AsString, InfcartaPer);
        //Nodo.Data := TObject(cdExperiencia.RecNo);
        Nodo.ImageIndex := 8;
        Nodo.SelectedIndex := 8;
        Nodo.StateIndex := 8;
        Nodo.ExpandedImageIndex := 8;
        Nodo.Expand(True);
      end
      else
      begin
        // Localizar el cargo para usarlo como grupo
        if Lista.IndexOf(cdExperiencia.FieldByName('TituloCargo').AsString) < 0 then
        begin
          //Creo el puntero definido para poder anexarlo como objecto
          New(InfCargo);

          // Calcular los años, meses y días de antiguedad
          Duracion := cdExperiencia.FieldByName('Duracion').AsInteger;
          Anios := Trunc(Duracion / 365.25);
          Duracion := Duracion - Trunc(Anios * 365.25);
          Meses := Trunc(Duracion / 30.4);
          Duracion := Duracion - Trunc(Meses * 30.4);

          //Asigno Los Valores a Mi Clase
          InfCargo^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;

          if Anios > 0 then
            CadDura := IntToStr(Anios) + ' Años'
          else
            CadDura := '';


          if Meses > 0 then
          begin
            if CadDura <> '' then
              CadDura := CadDura + ', ';
            CadDura := CadDura + IntToStr(Meses) + ' Meses';
          end;

          if Duracion > 0 then
          begin
            if CadDura <> '' then
              CadDura := CadDura + ', ';
            CadDura := CadDura + IntToStr(Duracion) + ' Días';
          end;

          Nodo := tvDocumentos.Items.AddChildObject(tvDocumentos.Items.Item[0], cdExperiencia.FieldByName('TituloCargo').AsString + ' - Antiguedad: ' + CadDura, InfCargo);
          //tvDocumentos.Items.AddChildObject()
          Nodo.ImageIndex := 9;
          Nodo.SelectedIndex := 9;
          Nodo.StateIndex := 9;
          Nodo.ExpandedImageIndex := 9;
          Nodo.Expand(True);
          //Nodo.Data:=InfCargo;
          Lista.AddObject(cdExperiencia.FieldByName('TituloCargo').AsString, Nodo);
        end
        else
        begin
          Nodo := TTreeNode(Lista.Objects[Lista.IndexOf(cdExperiencia.FieldByName('TituloCargo').AsString)]);
        end;

        NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        cdExperiencia.FieldByName('idpostulante').AsString+'#'+cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsString+'#'+
        cdExperiencia.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

        if (FileExists(NombreArchivo)) and (cdExperiencia.RecordCount > 0) then
        begin
          if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
          begin
            if FechaArchivo <> cdExperiencia.FieldByName('FechaMovimiento').AsDateTime then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end;
          end;
        end
        else
        begin
{            try
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            except
              NombreArchivo:='';
            end;}
          stream := cdExperiencia.CreateBlobStream(cdExperiencia.FieldByName('imagen'), bmRead);
          StartPosition := stream.Position;
          FStreamHeader := TStringStream.Create;
          With FStreamHeader do
          begin
            CopyFrom(stream, 512);
            if pos(PDFFILE_HEADER,DataString) > 0 then
            begin
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
              TBlobField(cdExperiencia.FieldByName('imagen')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdExperiencia.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
            end
            else
            begin
              NombreArchivo:='';
            end;
          end;
        end;

        //Creo El Puntero de para almacenarlo junto con el nodo.
        New(InfCartaLab);

        InfCartaLab^.IdDocumentosRecomendacion:=cdExperiencia.FieldByName('IdDocumentosRecomendacion').AsInteger;
        InfCartaLab^.Idcargo:=cdExperiencia.FieldByName('IdCargo').AsInteger;
        InfCartaLab^.NombreArchivo := NombreArchivo;
        // Calcular los años, meses y días de antiguedad
        Duracion := cdExperiencia.FieldByName('Duracion_2').AsInteger;
        Anios := Trunc(Duracion / 365.25);
        Duracion := Duracion - Trunc(Anios * 365.25);
        Meses := Trunc(Duracion / 30.4);
        Duracion := Duracion - Trunc(Meses * 30.4);

        if Anios > 0 then
          CadDura := IntToStr(Anios) + ' Años'
        else
          CadDura := '';

        if Meses > 0 then
        begin
          if CadDura <> '' then
            CadDura := CadDura + ', ';
          CadDura := CadDura + IntToStr(Meses) + ' Meses';
        end;

        if Duracion > 0 then
        begin
          if CadDura <> '' then
            CadDura := CadDura + ', ';
          CadDura := CadDura + IntToStr(Duracion) + ' Días';
        end;

        Nodo := tvDocumentos.Items.AddChildObject(Nodo, cdExperiencia.FieldByName('Empresa').AsString + ' - Antiguedad: ' + CadDura + ' - ' + cdExperiencia.FieldByName('Descripcion').AsString, InfCartaLab);
        Nodo.ImageIndex := 7;
        Nodo.SelectedIndex := 7;
        Nodo.StateIndex := 7;
        Nodo.ExpandedImageIndex := 7;
        //Nodo.Data := TObject(cdExperiencia.RecNo);
      end;

      cdExperiencia.Next;
    end;
    tvDocumentos.items.Item[0].Expand(True);
    Nodo2.Expand(True);
  Finally
    Lista.Free;
  End;
end;

procedure TFrmPostulante.LeerDatos;
const
  PDFFILE_HEADER = '%PDF';
var
  i: Integer;
  NombreArchivo : string;
  FechaArchivo : TDateTime;
  Stream : TStream;
  FStreamHeader: TStringStream;
  StartPosition: Int64;
begin
  try
    EndShow := False;

    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    // Acceder a los detalles del postulante
    cdPostulante.Close;
    if Not CargarDatosFiltrados(cdPostulante, 'IdPostulante', [IdPostulante]) then
      raise InteligentException.CreateByCode(6, ['Postulantes', IdPostulante, 'IdPostulante']);
    cdPostulante.Open;



    // Abrir el contenedor de los documentos de personal
    cdDoctosPostulante.Close;
    if Not CargarDatosFiltrados(cdDoctosPostulante, 'IdPostulante', [IdPostulante]) then
      raise InteligentException.CreateByCode(6, ['Documentos de Postulante', IdPostulante, 'IdPostulante']);
    cdDoctosPostulante.Open;

//##############################################################################
    {PFondoDoc.Visible:=True;
    Acropdf1.LoadFile('');  }
  {  LimpiarCompDocumento;
    if cdDoctosPostulante.RecordCount > 0 then
    begin
      cdDoctosPostulante.First;
      NombreArchivo:= ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
      cdDoctosPostulante.FieldByName('idpostulante').AsString+'#'+cdDoctosPostulante.FieldByName('iddocxpostulante').AsString+'#'+
      cdDoctosPostulante.FieldByName('IdDocumento').AsString+'#rhu_docxpostulante.pdf';

      if (FileExists(NombreArchivo)) and (cdDoctosPostulante.RecordCount > 0) then
      begin
        if ObtenerFechaArchivo(NombreArchivo, FechaArchivo, fdkCreado) then
        begin
          if FechaArchivo <> cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime then
          begin
            TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
            cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
          end;
        end;
        if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
          CrearCompDocumento(GroupBox12);
        CargarDocumento(NombreArchivo);
        {AcroPdf1.LoadFile(NombreArchivo);
        AcroPdf1.Show;
        PFondoDoc.Visible:=False; }
    {  end
      else
      begin
          stream := cdDoctosPostulante.CreateBlobStream(cdDoctosPostulante.FieldByName('Documento'), bmRead);
          StartPosition := stream.Position;
          FStreamHeader := TStringStream.Create;
          With FStreamHeader do
          begin
            CopyFrom(stream, 512);
            if pos(PDFFILE_HEADER,DataString) > 0 then
            begin
              TBlobField(cdDoctosPostulante.FieldByName('documento')).SaveToFile(NombreArchivo);
              cambiarFechaFichero(NombreArchivo, cdDoctosPostulante.FieldByName('FechaMovimiento').AsDateTime, fdkCreated);
              if (not Assigned(CompDocumento)) or (CompDocumento = nil) then
                CrearCompDocumento(GroupBox12);
              CargarDocumento(NombreArchivo);
              {AcroPdf1.LoadFile(NombreArchivo);
              AcroPdf1.Show;
              PFondoDoc.Visible:=False; }
           { end;
          end;
      end;
    end;
                  }
//##############################################################################
    // Abrir el contenedor de los datos bancarios de personal
    cdDatosBancarios.Close;
    if Not CargarDatosFiltrados(cddatosbancarios, 'IdPostulante', [IdPostulante]) then
      raise InteligentException.CreateByCode(6, ['Documentos de Postulante', IdPostulante, 'IdPostulante']);
    cdDatosBancarios.Open;

    //Abrir el contenedor de los documentos de recomendacion
    CdExperiencia.Close;
    if Not CargarDatosFiltrados(CdExperiencia, 'IdPostulante', [IdPostulante]) then
      raise InteligentException.CreateByCode(6, ['Experiencia de Postulante', IdPostulante, 'IdPostulante']);
    CdExperiencia.Open;

    DocumentosATreeView; // Cargar los datos de la experiencia al treeview

    //Abrir el contenedor de nacionalidad
    cdPais.Close;
    if Not CargarDatosFiltrados(cdPais, 'Idpais', [cdPostulante.FieldByName('nacionalidad').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nacionalidad de Postulante', cdPostulante.FieldByName('Nacionalidad').AsInteger, 'Nacionalidad']);
    cdPais.Open;

    if cdPais.RecordCount = 1 then
      EdtNacionalidad.Text := Cdpais.FieldByName('CodigoPais').AsString;

    if IdPostulante = -9 then
    begin
      Try
        cdPostulante.Append;
        cdPostulante.FieldByName('IdPostulante').AsInteger := 0;
        cdPostulante.FieldByName('CodigoPostulante').AsString := '';
       { cdPostulante.FieldByName('Nombres').AsString := '';
        cdPostulante.FieldByName('AMaterno').AsString := '';
        cdPostulante.FieldByName('APaterno').AsString := '';
        cdPostulante.FieldByName('NumeroSeguroSocial').AsString := '';
        cdPostulante.FieldByName('Curp').AsString := '';   }
        cdPostulante.FieldByName('FechaAlta').AsDateTime := Now;
   {     cdPostulante.FieldByName('Telefono').AsString := '';
        cdPostulante.FieldByName('GrupoSanguineo').AsString := '';
        cdPostulante.FieldByName('RFC').AsString := '';   }
        cdPostulante.FieldByName('IdPlazaDetalle').AsInteger := -5;
       { cdPostulante.FieldByName('Contacto').AsString := '';
        cdPostulante.FieldByName('TelefonoContacto').AsString := '';
        cdPostulante.FieldByName('Calle').AsString := '';
        cdPostulante.FieldByName('Numero').AsString := '';
        cdPostulante.FieldByName('Colonia').AsString := '';
        cdPostulante.FieldByName('Municipio').AsString := '';
        cdPostulante.FieldByName('Ciudad').AsString := '';
        cdPostulante.FieldByName('Estado').AsString := '';
        cdPostulante.FieldByName('Pais').AsString := ''; }
        cdPostulante.FieldByName('estadocivil').AsString := 'Soltero';
        cdPostulante.FieldByName('sexo').AsString := 'Masculino';
        cdPostulante.FieldByName('Activo').AsString := 'Si';
        Timer2.Enabled := True;
      Except
        on e:exception do
          raise InteligentException.CreateByCode(14, ['Postulantes', e.message]);
      End;
    end
    else
    begin
      Try
        if cdPostulante.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [Codigo, 'Postulantes']);

        IniciarTransaccion;
        cdPostulante.Edit;



        DBImss.Text := Copy(DBEdit4.Text,1,10);
        JvLabel15.Caption := '-' + Copy(DBEdit4.Text,11,1);
      Except
        on e:InteligentException do
          raise;

        on e:Exception do
          raise InteligentException.CreateByCode(1, [e.message]);
      End;
    end;

    pagecontrol1.Visible:=true;
    Pagecontrol1.ActivePageIndex:=0;

    if MemPostulantes.FieldDefs.Count = 0 then
    begin
      for i := 0 to (cdpostulante.FieldDefs.Count-1) do
      begin
        MemPostulantes.FieldDefs.Add(cdpostulante.FieldDefs.Items[i].Name,
        cdpostulante.FieldDefs.Items[i].DataType,
        cdpostulante.FieldDefs.Items[i].Size,
        False);
      end;

      MemPostulantes.CreateDataSet;
    end
    else
      MemPostulantes.Close;

    MemPostulantes.Open;
    MemPostulantes.Append;
    for i := 0 to (cdpostulante.FieldDefs.Count-1) do
    begin
      MemPostulantes.FieldValues[cdpostulante.FieldDefs.Items[i].Name]:=cdpostulante.FieldValues[cdpostulante.FieldDefs.Items[i].Name];
    end;
    MemPostulantes.Post;
    EndShow := True;
    // Poner las ongitudes de los campos de captura
   // LongitudComponentes(cdPostulante.FieldDefs, TWinControl(Self));
     if cdpostulante.state = dsEdit then
     begin
       ChkInfonavit.Checked := cdPostulante.fieldbyname('infonavit').asstring = 'Si';
     end;
  finally
    Screen.Cursor := Cursor;
  end;
end;

function TFrmPostulante.VerificaCambiosHechos: Boolean;
var
  LocResult: Boolean;
  i: Integer;
begin
  LocResult := False;
  i := 0;
  Try
    while (i < MemPostulantes.FieldDefs.Count) and (Not LocResult) do
    begin
      if CompareText(MemPostulantes.FieldDefs.Items[i].Name, 'fechaalta') <> 0 then
      begin
        if (MemPostulantes.FieldDefs.Items[i].DataType <> FtBlob) and (Mempostulantes.FieldValues[MemPostulantes.FieldDefs.Items[i].Name] <>
        cdPostulante.FieldValues[MemPostulantes.FieldDefs.Items[i].Name])then
          LocResult := True
        else
        begin
          if (MemPostulantes.FieldDefs.Items[i].DataType = FtBlob) and (Mempostulantes.FieldByName(MemPostulantes.FieldDefs.Items[i].Name).AsWideString <>
          CdPostulante.FieldByName(MemPostulantes.FieldDefs.Items[i].Name).AsWideString)then
             LocResult := True;
        end;
      end;

      Inc(i);
    end;
  Finally
    Result := LocResult;
  End;
end;

function GetTempDir: string;
var
  Buffer : Array[0..Max_path] of char;
begin
  FillChar(Buffer,Max_Path + 1, 0);
  GetTempPath(Max_path, Buffer);
  Result := String(Buffer);
  if Result[Length(Result)] <> '\' then Result := Result + '\';
end;


//Nombre del archivo, la fecha que quiero ponerle, y el tipo de fecha (fdkCreated, fdkLastModified, fdkLastAccessed)
function TFrmPostulante.cambiarFechaFichero (const FileName: string; FileDate: TDateTime;
    SpecificFileDate: TFileDateKind): boolean;
var
  fHandle : integer;
  Succeed : boolean;
  TempFileTime, FinalFileTime : TFileTime;
  TempSystemTime : TSystemTime;
  pFileCreationDate, pFileLastModifiedDate, pFileLastAccessedDate : PFileTime;
begin
  pFileCreationDate := nil;
  pFileLastModifiedDate := nil;
  pFileLastAccessedDate := nil;

  fHandle := FileOpen(FileName, fmShareDenyWrite or fmOpenWrite);
  if fHandle < 0 then Succeed := false
  else
  begin
    DecodeDateTime(FileDate, TempSystemTime.wYear, TempSystemTime.wMonth,
        TempSystemTime.wDay, TempSystemTime.wHour, TempSystemTime.wMinute,
        TempSystemTime.wSecond, TempSystemTime.wMilliSeconds);
    SystemTimeToFileTime(TempSystemTime, TempFileTime);
    LocalFileTimeToFileTime(TempFileTime, FinalFileTime);
    case SpecificFileDate of
      fdkCreated : pFileCreationDate := @FinalFileTime;
      fdkLastModified : pFileLastModifiedDate := @FinalFileTime;
      fdkLastAccessed : pFileLastAccessedDate := @FinalFileTime;
    end;
    Succeed := SetFileTime(fHandle, pFileCreationDate,
        pFileLastAccessedDate, pFileLastModifiedDate);
    FileClose(fHandle);
  end;
  Result := Succeed;
end;

//Nombre de archivo, paso la viariable en la cual em va a devolver la fecha si se puede leer  de tipo tdatetime
//y tipo de ttipodfecha (fdkCreado, fdkUltimaModificacion, fdkUltimoAcceso)
function TFrmPostulante.ObtenerFechaArchivo (const NombreArchivo: string;
    out FechaResult: TDateTime; TipoFechaObtener: TTipoDFecha): boolean;
var
  Monitor : integer;
  Resultado : boolean;
  FechaCreacionArchivo, FechaUltimaModificacion, FechaUltimoAcceso : TFileTime;
  TempFechaArchivo : TFileTime;
  TempFechaSistema : TSystemTime;
begin
  Monitor := FileOpen(NombreArchivo, fmShareDenyNone);
  FechaResult := 0.0;
  if Monitor < 0 then Resultado := false
  else
  begin
    Resultado := GetFileTime(Monitor, @FechaCreacionArchivo,
        @FechaUltimoAcceso, @FechaUltimaModificacion);
    FileClose(Monitor);
    if Resultado then begin
      case TipoFechaObtener of
        fdkCreado : FileTimeToLocalFileTime(FechaCreacionArchivo, TempFechaArchivo);
        fdkUltimaModificacion : FileTimeToLocalFileTime(FechaUltimaModificacion, TempFechaArchivo);
        fdkUltimoAcceso : FileTimeToLocalFileTime(FechaUltimoAcceso, TempFechaArchivo);
      end;
      if FileTimeToSystemTime(TempFechaArchivo, TempFechaSistema) then
        FechaResult := EncodeDateTime(TempFechaSistema.wYear, TempFechaSistema.wMonth,
            TempFechaSistema.wDay, TempFechaSistema.wHour, TempFechaSistema.wMinute,
            TempFechaSistema.wSecond, TempFechaSistema.wMilliSeconds)
      else Resultado := false;
    end;
  end;
  Result := Resultado;
end;

procedure TFrmPostulante.EnableSysCloseItem(Handle: HWND; Enable: Boolean);
const
   Flags : array[Boolean] of Integer = (MF_GRAYED, MF_ENABLED);
var
  SysMenu : HMENU;
begin
  SysMenu := GetSystemMenu(Handle, false);
  EnableMenuItem(SysMenu, SC_CLOSE, MF_BYCOMMAND or Flags[Enable]);
end;

end.
