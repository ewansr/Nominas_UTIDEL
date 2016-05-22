unit UTFrmDatosDocumento;

interface

uses
  Windows, UTFrmDatosCatalogo, StdCtrls, DBCtrls, Controls, Mask, JvExControls,
  JvLabel, pngimage, ExtCtrls, AppEvnts, DB, DBClient, AdvShapeButton, Classes,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  cxButtons, cxGroupBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, JvExStdCtrls,
  AdvGlowButton, Forms, UTFrmSelGrupos, UInteliDialog, Dialogs, SysUtils,
  StrUtils, Messages,  RxCtrls, JvCheckBox, UTFrmSelDocumentos;

type
  TFrmDatosDocuumento = class(TFrmDatosCatalogo)
    Panel1: TPanel;
    Panel2: TPanel;
    DBMemoDescripcion: TDBMemo;
    Panel3: TPanel;
    Lbl2: TJvLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBEditNombre: TDBEdit;
    tipo: TDBComboBox;
    Panel6: TPanel;
    Lbl1: TJvLabel;
    Panel7: TPanel;
    JvLabel1: TJvLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    JvLabel12: TJvLabel;
    btnAgregarGrupo: TAdvGlowButton;
    Panel11: TPanel;
    LeyGrupos: TEdit;
    cdGrupo: TClientDataSet;
    cdDoctosxGrupo: TClientDataSet;
    chboxEsGrupo: TJvCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure btnAgregarGrupoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chboxEsGrupoClick(Sender: TObject);
  private
    procedure GenerarListaGrupos;
    procedure EsGrupo;

  public
    { Public declarations }
  end;

var
  FrmDatosDocuumento: TFrmDatosDocuumento;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDatosDocuumento.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditNombre, 'Nombre') = False then
    exit;
  if ClientModule1.VerificaVacio(DBMemoDescripcion, 'Descripción') = False then
    exit;
  inherited;
end;

procedure TFrmDatosDocuumento.btnAgregarGrupoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmSelGrupos, FrmSelGrupos);
    FrmSelGrupos.dsGrupo.DataSet := cdGrupo;
    FrmSelGrupos.dsDoctosxGrupo.DataSet := cdDoctosxGrupo;
    FrmSelGrupos.IdDocumento := dsDatos.DataSet.FieldByName('IdDocumento').AsInteger;

    if FrmSelGrupos.ShowModal = mrOk then
    begin
      cdGrupo.Refresh;
      GenerarListaGrupos;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmDatosDocuumento.BtnRecClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(DBEditNombre, 'Nombre') = False then
    exit;

  if ClientModule1.VerificaVacio(DBMemoDescripcion, 'Descripción') = False then
    exit;

  inherited;
end;

procedure TFrmDatosDocuumento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdGrupo, cdDoctosxGrupo]);

  inherited;
end;

procedure TFrmDatosDocuumento.FormShow(Sender: TObject);
begin
  Try
    inherited;

    // Verifidar si ya se ha creado el dataset de los grupos, si no es así hay que crearlo
    if cdGrupo.ProviderName = '' then
    begin
      if Not CrearConjunto(cdGrupo, 'rhu_documento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentos']);

      if Not CargarDatosFiltrados(cdGrupo, 'PorGrupos,IdDocumento_t', ['Si', dsDatos.DataSet.FieldByName('IdDocumento').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Documentos', 'Si', 'PorGrupos']);

      cdGrupo.Open;
    end;

    chboxEsGrupo.Checked := cdGrupo.FieldByName('EsGrupo').AsString = 'Si';

    if cdDoctosxGrupo.Providername = '' then
    begin
      if Not CrearConjunto(cdDoctosxGrupo, 'rhu_doctosxgrupo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Documentos por Grupo']);

      if Not CargarDatosFiltrados(cdDoctosxGrupo, 'IdDocumento_t', [dsDatos.DataSet.FieldByName('IdDocumento').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Documentos por Grupo', dsDatos.DataSet.FieldByName('IdDocumento').AsInteger, 'Id. Documento_t']);

      cdDoctosxGrupo.Open;
    end;

    if DsDatos.State = dsInsert then
    begin
      DsDatos.DataSet.FieldByName('activo').AsString := 'si';
      DsDatos.DataSet.FieldByName('tipo').AsString := 'Normal';
    end
    else
      GenerarListaGrupos;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmDatosDocuumento.GenerarListaGrupos;
var
  CadPaso: String;
begin
  // Generar la cadena de Grupos correspondientes (Solo en caso de edición)
  Try
    cdGrupo.First;
    CadPaso := '';
    while not cdGrupo.Eof do
    begin
      if Not cdGrupo.FieldByName('IdDocumento_s').IsNull then
        CadPaso := CadPaso + cdGrupo.FieldByName('NombreDocumento').AsString + ', ';

      cdGrupo.Next;
    end;

    if CadPaso <> '' then
      LeyGrupos.Text := LeftStr(CadPaso, Length(CadPaso) - 2)
    else
      LeyGrupos.Text := '< No asignado a ningún grupo >';
  Finally
    cdGrupo.First;
  End;
end;



procedure TFrmDatosDocuumento.EsGrupo;
begin
  // Gustavo: identificando si el elemento seleccionado es grupo o no!
  Try
    cdGrupo.First;
    while not cdGrupo.Eof do
    begin
      if cdGrupo.FieldByName('IdDocumento_s').IsNull then
          chboxEsGrupo.Checked := true;

      cdGrupo.Next;

    end;

  Finally
    cdGrupo.First;
  End;
end;



procedure TFrmDatosDocuumento.chboxEsGrupoClick(Sender: TObject);
begin
  inherited;

  //Deshabilitando la selección  de grupos cuando el nuevo registro es un grupo

  btnAgregarGrupo.Enabled := Not chboxEsGrupo.Checked;
  LeyGrupos.Enabled := Not chboxEsGrupo.Checked;

  //Gustavo: abriendo ventana para seleccion de "documentos" para el "grupo"
  try
    Application.CreateForm(TFrmSelDocumentos, FrmSelDocumentos);
    FrmSelDocumentos.dsGrupo.DataSet := cdGrupo;
    FrmSelDocumentos.dsDoctosxGrupo.DataSet := cdDoctosxGrupo;
    FrmSelDocumentos.IdDocumento := dsDatos.DataSet.FieldByName('IdDocumento').AsInteger;

    if FrmSelDocumentos.ShowModal = mrOk then
    begin
      cdGrupo.Refresh;
      GenerarListaGrupos;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;



end;

end.
