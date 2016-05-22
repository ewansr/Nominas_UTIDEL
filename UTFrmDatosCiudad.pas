unit UTFrmDatosCiudad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, StdCtrls, Buttons,
  DBClient, DBCtrls, Mask, pngimage, UInteliDialog, JvComponentBase, JvEnterTab,
  ComCtrls, AppEvnts, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Menus, cxButtons, cxGroupBox, cxLabel;

type
  TFrmDatosCiudad = class(TFrmDatosCatalogo)
    DBEditCodigo: TDBEdit;
    DBEditTitulo: TDBEdit;
    EditCodigoEstado: TEdit;
    EditTituloEstado: TEdit;
    Codigo: TcxLabel;
    Titulo: TcxLabel;
    Codigo_estado: TcxLabel;
    Descripcion: TcxLabel;
    cdEstado: TClientDataSet;
    DataSource1: TDataSource;
    BtnFindGrupo: TcxButton;
    DBEditEstado: TDBEdit;
    DBMemoDescripcion: TDBRichEdit;
    procedure BtnAddNewClick(Sender: TObject);
    procedure BtnFindGrupoClick(Sender: TObject);
    procedure DBEditEstadoChange(Sender: TObject);
    procedure EditCodigoEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosCiudad: TFrmDatosCiudad;

implementation

uses ClientModuleUnit1, xDatabase, UTFrmEstado, UTFrmPais;

{$R *.dfm}

procedure TFrmDatosCiudad.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  if length(DBEditEstado.text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un estado.','', mtInformation, [mbOk], 0);
    EditCodigoEstado.setfocus;
    exit;
  end;
  inherited;
  DBEditCodigo.Text := '';
  DBEditTitulo.Text := '';
  EditCodigoEstado.Text := '';
  EditTituloEstado.Text := '';
  DBMemoDescripcion.Clear;
end;

procedure TFrmDatosCiudad.BtnFindGrupoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmEstado;
begin
  try
    tForm := TFrmEstado.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('idestado').AsString := registro.Valor['idestado'];
      EditCodigoEstado.Text := registro.Valor['codigoestado'];
      EditTituloEstado.Text := registro.Valor['tituloestado'];
      DBMemoDescripcion.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosCiudad.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DbEditCodigo, 'Código') = False then
    exit;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  if length(DBEditEstado.text) = 0 then
  begin
    InteliDialog.ShowModal('Seleccione un estado.','', mtInformation, [mbOk], 0);
    EditCodigoEstado.setfocus;
    exit;
  end;
  inherited;

end;

procedure TFrmDatosCiudad.DBEditEstadoChange(Sender: TObject);
var
  providername: String;
begin
  if Length(Trim(DBEditEstado.Text)) > 0 then
  begin
    if cdEstado.State <> dsBrowse then
    begin
      CrearConjunto(cdEstado, 'nuc_estado', providername, ccCatalog);
      cdEstado.Open;
    end;
    CargarDatosFiltrados(cdEstado, 'idestado', [dsDatos.DataSet.FieldByName('idestado').AsInteger]);
    cdEstado.refresh;
    editCodigoEstado.Text := cdEstado.FieldByName('codigoestado').AsString;
    editTituloEstado.Text := cdEstado.FieldByName('tituloestado').AsString;
  end;
end;

procedure TFrmDatosCiudad.EditCodigoEstadoKeyPress(Sender: TObject;
  var Key: Char);
var providername: String;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    if cdEstado.State <> dsBrowse then
    begin
      CrearConjunto(cdEstado, 'nuc_estado', providername, ccCatalog);
      cdEstado.Open;
    end;
    CargarDatosFiltrados(cdEstado, 'codigoestado', [tEdit(sender).Text]);
    cdEstado.refresh;
    if cdEstado.RecordCount = 1 then
    begin
      editCodigoEstado.Text := cdEstado.FieldByName('codigoestado').AsString;
      editTituloEstado.Text := cdEstado.FieldByName('tituloestado').AsString;
      dsDatos.DataSet.FieldByName('idestado').AsInteger := cdEstado.FieldByName('idestado').AsInteger;
      DBMemoDescripcion.SetFocus;
    end
    else
      if InteliDialog.ShowModal('El código de estado ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
        BtnFindGrupo.Click;
  end;
end;

procedure TFrmDatosCiudad.FormShow(Sender: TObject);
begin
  inherited;
  if DsDatos.DataSet.State = dsInsert then
    DsDatos.DataSet.FieldByName('activo').AsString := 'si';
  DBEditCodigo.SetFocus;
end;

end.
