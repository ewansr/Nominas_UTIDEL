unit UTFrmDatosEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage, StdCtrls,
  Buttons, DBCtrls, Mask, UIntelidialog, DBClient, JvComponentBase, JvEnterTab,
  ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Menus, AppEvnts, cxButtons, cxGroupBox,
  cxLabel;

type
  TFrmDatosEstado = class(TFrmDatosCatalogo)
    EditCodigoPais: TEdit;
    EditTituloPais: TEdit;
    DBEditIdPais: TDBEdit;
    Codigo_pais: TcxLabel;
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    Codigo: TcxLabel;
    Titulo: TcxLabel;
    Descripcion: TcxLabel;
    BtnFindPais: TcxButton;
    DataSource1: TDataSource;
    cdPaises: TClientDataSet;
    DBMemoDescripcion: TDBRichEdit;
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnFindPaisClick(Sender: TObject);
    procedure DBEditIdPaisChange(Sender: TObject);
    procedure EditCodigoPaisKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosEstado: TFrmDatosEstado;
  providername: String;

implementation

uses ClientModuleUnit1,xDatabase, UTFrmPais;

{$R *.dfm}

procedure TFrmDatosEstado.BtnAddNewClick(Sender: TObject);
begin
  if length(dbeditIdPais.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un pais.','', mtInformation, [mbOk], 0);
    editcodigopais.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
  DBEditCodigo.Text := '';
  DBEditTitulo.Text := '';
end;

procedure TFrmDatosEstado.BtnFindPaisClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmPais;
begin
  Try
    tForm := TFrmPais.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idpais').AsString := registro.Valor['idpais'];
      EditCodigoPais.Text := registro.Valor['codigopais'];
      EditTituloPais.Text := registro.Valor['titulopais'];
      DBEditCodigo.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosEstado.BtnRecClick(Sender: TObject);
begin
  if length(dbeditIdPais.Text) = 0 then
  begin
    InteliDialog.ShowModal('seleccione un pais.','', mtInformation, [mbOk], 0);
    editcodigopais.SetFocus;
    exit;
  end;
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;

end;

procedure TFrmDatosEstado.DBEditIdPaisChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditIdPais.Text)) > 0 then
  begin
    if cdPaises.State <> dsBrowse then
    begin
      CrearConjunto(cdPaises, 'nuc_pais', providername, ccCatalog);
      CargarDatosFiltrados(cdPaises, 'idpais', [-9]);
      cdPaises.Open;
    end;
    CargarDatosFiltrados(cdPaises, 'idpais', [dsDatos.DataSet.FieldByName('idpais').AsInteger]);
    cdPaises.refresh;
    editCodigoPais.Text := cdPaises.FieldByName('codigopais').AsString;
    editTituloPais.Text := cdPaises.FieldByName('titulopais').AsString;
  end;
end;

procedure TFrmDatosEstado.EditCodigoPaisKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdPaises.State <> dsBrowse then
    begin
      CrearConjunto(cdPaises, 'nuc_pais', providername, ccCatalog);
      CargarDatosFiltrados(cdPaises, 'idpais', [-9]);
      cdPaises.Open;
    end;
    CargarDatosFiltrados(cdPaises, 'codigopais', [tEdit(sender).Text]);
    cdPaises.refresh;
    if cdPaises.RecordCount = 1 then
    begin
      editCodigoPais.Text := cdPaises.FieldByName('codigopais').AsString;
      editTituloPais.Text := cdPaises.FieldByName('titulopais').AsString;
      dsDatos.DataSet.FieldByName('idpais').AsInteger := cdPaises.FieldByName('idpais').AsInteger;
      DBEditCodigo.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de área ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindPais.Click;
  end;
end;

procedure TFrmDatosEstado.FormShow(Sender: TObject);
begin
  inherited;
  EditCodigoPais.SetFocus;
  if DsDatos.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
end;

end.
