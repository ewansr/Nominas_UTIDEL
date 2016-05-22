unit UTFrmAltaModDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, RxToolEdit, RXDBCtrl,
  JvExControls, JvLabel, NxEdit, JvExStdCtrls, JvBehaviorLabel, DB, DBClient,
  NxCollection, Uintelidialog, JvDBImage, pngimage, AdvEdit, AdvEdBtn;

type
  TFrmAltaModDocumentos = class(TForm)
    Panel2: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    JvLabel2: TJvLabel;
    DateExpedicion: TDBDateEdit;
    JvLabel3: TJvLabel;
    DateVigencia: TDBDateEdit;
    DateAplicacion: TDBDateEdit;
    JvLabel4: TJvLabel;
    GroupBox2: TGroupBox;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    Panel1: TPanel;
    Panel3: TPanel;
    JvDBImage1: TJvDBImage;
    BtnLoadimg: TButton;
    EdtDocumentos: TAdvEditBtn;
    OblDocumento: TImage;
    JvLabel9: TJvLabel;
    dsDatos: TDataSource;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnLoadimgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtDocumentosClickBtn(Sender: TObject);
    procedure EdtDocumentosKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    CdDocumentos: TClientDataSet;
    procedure GetDocumento;
    function VerificarVacios(datSource: Tdatasource): Boolean;
    { Private declarations }

  public
    { Public declarations }
    valordefiltradopersonal : integer;
    valorfiltradodocumento : integer;
    Resultado: integer;
  end;

var
  FrmAltaModDocumentos: TFrmAltaModDocumentos;

implementation
uses
  ClientModuleUnit1, xDatabase, UTFrmDocumento, UTFrmCargaImagen;
{$R *.dfm}

procedure TFrmAltaModDocumentos.BtnLoadimgClick(Sender: TObject);
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

procedure TFrmAltaModDocumentos.EdtDocumentosClickBtn(Sender: TObject);
begin
  GetDocumento;
end;

procedure TFrmAltaModDocumentos.EdtDocumentosKeyPress(Sender: TObject;
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

procedure TFrmAltaModDocumentos.GetDocumento;
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

procedure TFrmAltaModDocumentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([CdDocumentos]);
end;

procedure TFrmAltaModDocumentos.FormCreate(Sender: TObject);
begin
  //Documentos
  CdDocumentos := TClientDataSet.create(self);
  Resultado := mrCancel;
end;

procedure TFrmAltaModDocumentos.FormShow(Sender: TObject);
begin
  try
    ClientModule1.ComponentColor(self);

    if not Crearconjunto(CdDocumentos,'rhu_documento',cccatalog) then
      raise InteligentException.CreateByCode(5, ['Documentos']);

    if not CargarDatosFiltrados(CdDocumentos,'iddocumento',[dsdatos.DataSet.fieldbyname('iddocumento').AsInteger]) then
      raise InteligentException.CreateByCode(4, ['Documentos']);

    CdDocumentos.Open;

    if CdDocumentos.RecordCount = 1 then
      EdtDocumentos.text := CdDocumentos.FieldByName('nombredocumento').asstring;

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

procedure TFrmAltaModDocumentos.NxButton2Click(Sender: TObject);
begin
  TClientDataSet(dsdatos.DataSet).CancelUpdates;
  close;
end;

function TFrmAltaModDocumentos.VerificarVacios(datSource: Tdatasource): Boolean;
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

      if Length(trim(datSource.DataSet.fieldbyname('documento').asstring)) = 0  then
      begin
        BtnLoadimg.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Una imagen es requerida para el documento.']);
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

procedure TFrmAltaModDocumentos.NxButton3Click(Sender: TObject);
begin
  try
    if VerificarVacios(dsDatos) then
    begin

      dsdatos.DataSet.Post;

      tclientdataset(dsdatos.DataSet).ApplyUpdates(-1);

      InteliDialog.ShowModal('INFORMACIÓN','La información se ha guardado correctamente','',
      mtInformation,[mbOK],0);
      Resultado := mrOk;
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

end.
