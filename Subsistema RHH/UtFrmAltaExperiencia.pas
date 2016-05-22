unit UtFrmAltaExperiencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UTFrmCargaImagen, DB, DBClient, DBCtrls, JvDBImage, StdCtrls, Mask,
  RxToolEdit, RXDBCtrl, JvExControls, JvLabel, NxCollection, ExtCtrls,
  UTFrmDocumento,UInteliDialog,xDatabase, AdvEdit, AdvEdBtn, pngimage, OleCtrls,
  AcroPDFLib_TLB, JvDialogs;

type
  TFrmAltaExperiencia = class(TForm)
    Panel2: TPanel;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    DateInicio: TDBDateEdit;
    DateFin: TDBDateEdit;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    dsDatos: TDataSource;
    JvLabel1: TJvLabel;
    JvLabel8: TJvLabel;
    CbTipo: TComboBox;
    MDescripcion: TDBMemo;
    JvLabel9: TJvLabel;
    OblDocumento: TImage;
    CbCargo: TDBLookupComboBox;
    JvLabel6: TJvLabel;
    GroupBox3: TGroupBox;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel7: TJvLabel;
    EdtPersona: TDBEdit;
    EdtTelefono: TDBEdit;
    EdtPuesto: TDBEdit;
    OblTipo: TImage;
    OblCargo: TImage;
    OblFechaI: TImage;
    OblFechaF: TImage;
    OblDescripcion: TImage;
    OblNombre: TImage;
    OblPuesto: TImage;
    OblTelefono: TImage;
    EdtDocumentos: TAdvEditBtn;
    DBEdit1: TDBEdit;
    Image2: TImage;
    JvLabel10: TJvLabel;
    AcroPDF1: TAcroPDF;
    PFondoPdf: TPanel;
    EBtnDirFile: TAdvEditBtn;
    JvLabel11: TJvLabel;
    Image1: TImage;
    ODlgCargarPdf: TJvOpenDialog;
    DsMemArchivosNuevos: TDataSource;
    procedure CbTipoChange(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnLoadimgClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure EdtDocumentosClickBtn(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtDocumentosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EBtnDirFileClickBtn(Sender: TObject);
  private
    ForzarSalir : Boolean;
    DsCargos: TDataSource;
    CdCargos: TClientDataSet;
    CdDocumentos: Tclientdataset;
    procedure GetDocumento;
    function VerificarVacios(datSource:Tdatasource):Boolean;
    { Private declarations }
  public
  Resultado : integer;
  LastId : Integer;
  DireccionArchivo : string;
    { Public declarations }
  end;

var
  FrmAltaExperiencia: TFrmAltaExperiencia;

implementation

uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmAltaExperiencia.EBtnDirFileClickBtn(Sender: TObject);
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
        TBlobField(TClientDataset(DsDatos.DataSet.FieldByName('imagen'))).LoadFromStream(Archivo);
        EBtnDirFile.Text:=copy(ODlgCargarPdf.FileName, LastDelimiter('\', ODlgCargarPdf.FileName)+1, Length(ODlgCargarPdf.FileName)-LastDelimiter('\', ODlgCargarPdf.FileName));
        DsDatos.DataSet.FieldByName('NombreArchivo').asstring:=copy(ODlgCargarPdf.FileName, LastDelimiter('\', ODlgCargarPdf.FileName)+1, Length(ODlgCargarPdf.FileName)-LastDelimiter('\', ODlgCargarPdf.FileName));
        AcroPdf1.LoadFile(ODlgCargarPdf.FileName);
        AcroPdf1.Show;
        PFondoPdf.Visible := False;
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

procedure TFrmAltaExperiencia.EdtDocumentosClickBtn(Sender: TObject);
begin
  GetDocumento;
end;

procedure TFrmAltaExperiencia.EdtDocumentosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    CdDocumentos.close;
    CargarDatosFiltrados(CdDocumentos,'nombredocumento',[EdtDocumentos.text]);
    CdDocumentos.Open;
    if CdDocumentos.RecordCount = 1 then
    begin
      EdtDocumentos.Text := CdDocumentos.FieldByName('nombredocumento').asstring;
      dsdatos.DataSet.FieldByName('iddocumento').AsInteger := CdDocumentos.FieldByName('iddocumento').AsInteger;
    end
    else
    if InteliDialog.ShowModal('Aviso', 'Se encontraron varias o ninguna coincidencia con el nombre ingresado.' + #10 +
                                '¿Quiere Seleccionar un registro del catálogo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      getdocumento;
  end;
end;

procedure TFrmAltaExperiencia.BtnLoadimgClick(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(dsDatos.dataset.FieldByName('imagen')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

procedure TFrmAltaExperiencia.CbTipoChange(Sender: TObject);
begin
  CbCargo.Enabled   := CbTipo.ItemIndex = 0;
  EdtPuesto.Enabled := CbTipo.ItemIndex = 0;
  OblCargo.Visible  := CbTipo.ItemIndex = 0;
  OblPuesto.Visible := CbTipo.ItemIndex = 0;
  DbEdit1.Enabled := CbTipo.ItemIndex = 0;
   if CbTipo.ItemIndex=1 then
       dsDatos.dataset.fieldbyname('Empresa').AsString:='';

end;

procedure TFrmAltaExperiencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([CdCargos,CdDocumentos]);
end;

procedure TFrmAltaExperiencia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 // CanClose := ForzarSalir;
end;

procedure TFrmAltaExperiencia.FormCreate(Sender: TObject);
begin
  //cargos
  CdCargos := TClientDataSet.Create(self);
  DsCargos := TDataSource.Create(self);
  DsCargos.DataSet := CdCargos;
  CbCargo.listsource := DsCargos;
  CbCargo.listfield := 'titulocargo';
  CbCargo.keyfield :=  'idcargo';

  //Documentos
  CdDocumentos := TClientDataSet.create(self);
  Resultado:=MrCancel;
  //ForzarSalir := true;
end;

procedure TFrmAltaExperiencia.FormShow(Sender: TObject);
begin
  try
    clientmodule1.ComponentColor(self);
    PFondoPdf.Color := cl3DDkShadow;

    if not Crearconjunto(cdcargos,'nuc_cargo',cccatalog) then
      raise InteligentException.CreateByCode(5, ['Cargos']);

    CdCargos.Open;

    if not Crearconjunto(CdDocumentos,'rhu_documento',cccatalog) then
      raise InteligentException.CreateByCode(5, ['Documentos']);

    if not CargarDatosFiltrados(CdDocumentos,'iddocumento',[dsdatos.DataSet.fieldbyname('iddocumento').AsInteger]) then
      raise InteligentException.CreateByCode(4, ['Documentos']);

    CdDocumentos.Open;

    if CdDocumentos.RecordCount = 1 then
      EdtDocumentos.text := CdDocumentos.FieldByName('nombredocumento').asstring;

    if CdCargos.Locate('idcargo',dsdatos.DataSet.FieldByName('idcargo').asinteger,[]) then
      CbCargo.KeyValue:= dsdatos.DataSet.FieldByName('idcargo').asinteger
    else
      CbCargo.ListFieldIndex := 0;

    CbTipo.ItemIndex := Cbtipo.Items.IndexOf(dsdatos.DataSet.fieldbyname('tipo').AsString);

    CbCargo.Enabled   := cbTipo.ItemIndex = 0;
    EdtPuesto.enabled := cbTipo.ItemIndex = 0;
    Dbedit1.Enabled   := cbTipo.ItemIndex = 0;
  except
    on e:InteligentConnection do
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

procedure TFrmAltaExperiencia.GetDocumento;
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
        dsDatos.DataSet.FieldByName('iddocumento').AsInteger:= registro.Valor['iddocumento'];
        EdtDocumentos.Text:=registro.Valor['nombredocumento'];
      end;

    except
      on e:exception do
      InteliDialog.ShowModal('Error al cargar catalogo de documentos.', e.Message, mtInformation, [mbOk], 0);
    end;
  finally
      FrmDocumento.Free;
  end;
end;

procedure TFrmAltaExperiencia.NxButton2Click(Sender: TObject);
begin
  TClientDataSet(dsdatos.DataSet).CancelUpdates;
  close;
end;

procedure TFrmAltaExperiencia.NxButton3Click(Sender: TObject);
var
  estado : TDatasetState;
begin
  try
    dsDatos.dataset.fieldbyname('tipo').AsString := cbtipo.Text;

    if CbCargo.Enabled then
      dsDatos.dataset.FieldValues['idcargo'] := CbCargo.KeyValue
    else
      dsDatos.dataset.fieldbyname('idcargo').asinteger := -5;

    if VerificarVacios(dsDatos) then
    begin
      if not EdtPuesto.Enabled then
        dsDatos.dataset.fieldbyname('puestofirma').AsString := '';

      Estado := dsDatos.dataset.State;
      dsdatos.DataSet.Post;

      tclientdataset(dsdatos.DataSet).ApplyUpdates(-1);

      if estado in [dsInsert] then
      begin
        LastId := UltimoId;

        DireccionArchivo:=ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        dsDatos.dataset.FieldByName('idpostulante').AsString+'#'+InttoStr(LastId)+'#'+
        dsDatos.dataset.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';


        TBlobField(dsDatos.dataset.FieldByName('imagen')).SaveToFile(DireccionArchivo);

        DsMemArchivosNuevos.Dataset.Append;
        DsMemArchivosNuevos.Dataset.fieldbyname('NombreArchivo').asstring := DireccionArchivo;
        DsMemArchivosNuevos.Dataset.Post;
      end
      else
      begin
        LastId := dsDatos.dataset.FieldByName('IdDocumentosRecomendacion').AsInteger;

        DireccionArchivo:=ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\'+
        dsDatos.dataset.FieldByName('idpostulante').AsString+'#'+InttoStr(LastId)+'#'+
        dsDatos.dataset.FieldByName('IdDocumento').AsString+'#rhu_documentosrecomendacion.pdf';

        TBlobField(dsDatos.dataset.FieldByName('imagen')).SaveToFile(DireccionArchivo);
      end;



      Resultado:= Mrok;

      close;
    end;
  except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

function TFrmAltaExperiencia.VerificarVacios(datSource: Tdatasource): Boolean;
var
  Resultado:Boolean;
begin
  Resultado := False;
  try
    try
      if datSource.DataSet.fieldbyname('iddocumento').AsInteger < 0  then
      begin
        EdtDocumentos.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Seleccione un Documento']);
      end;

      // si es laboral
      if (CbCargo.enabled) and ((length(trim(datSource.DataSet.fieldbyname('idcargo').AsString)) = 0) or (datSource.DataSet.fieldbyname('idcargo').asinteger < 0))  then
      begin
        CbCargo.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Seleccione un Cargo.']);
      end;

      if (Dbedit1.enabled) and (length(trim(datSource.DataSet.fieldbyname('Empresa').AsString)) = 0) then
      begin
        DbEdit1.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Capture la Empresa']);
      end;


      if Length(trim(datSource.DataSet.fieldbyname('fechainicio').asstring)) = 0  then
      begin
        DateInicio.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese una fecha de inicio.']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('fechatermino').asstring)) = 0  then
      begin
        DateFin.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese una fecha final.']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('descripcion').asstring)) = 0  then
      begin
        Mdescripcion.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese una descripción.']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('personafirma').asstring)) = 0  then
      begin
        EdtPersona.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese un nombre.']);
      end;

      //si es laboral
      if (EdtPuesto.enabled) and (Length(trim(datSource.DataSet.fieldbyname('puestofirma').asstring)) = 0)  then
      begin
        EdtPuesto.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese un puesto.']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('telefonofirma').asstring)) = 0  then
      begin
        EdtTelefono.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Ingrese un numero telefónico.']);
      end;

      if Length(trim(datSource.DataSet.fieldbyname('Imagen').asstring)) = 0  then
      begin
{
          BtnLoadimg.SetFocus;
          raise InteligentWarning.CreateBycode(8,['Una imagen es requerida.']);
}
      end;

      Resultado := True;

    except
     on e:InteligentWarning do
      begin
        ForzarSalir:=False;
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      end;
    end;
  finally
    Result := Resultado;
  end;
end;

end.
