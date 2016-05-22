unit UTFrmFirmantesExcepciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, StdCtrls, cxButtons, DB, DBCtrls, Mask, UControlExcepciones,
  ExtCtrls,DBClient, ClientModuleUnit1;

type
  TFrmFirmantesExcepciones = class(TForm)
    edtCodigo: TDBEdit;
    cbPuestoPersonal: TComboBox;
    lcbPersonal: TDBLookupComboBox;
    dsAutorizacionesxPersonalUpt: TDataSource;
    dsPersonal: TDataSource;
    lblPersonal: TLabel;
    Codigo: TLabel;
    lblTipoFirma: TLabel;
    Panel1: TPanel;
    cxButton1: TcxButton;
    txtTipo: TLabel;
    txtAplicaPara: TLabel;
    lblTipo: TLabel;
    btn_Cancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FormActualizar: TModalResult;
    CancelaCerrar : Boolean;
    OldCodigo: String;
  public
    IdAutorizaciones: Integer;
  end;

var

  FrmFirmantesExcepciones: TFrmFirmantesExcepciones;

implementation

{$R *.dfm}

procedure TFrmFirmantesExcepciones.btn_CancelarClick(Sender: TObject);
begin
 close
end;

procedure TFrmFirmantesExcepciones.cxButton1Click(Sender: TObject);
var
  Enfoque: TWinControl;
begin
  Try
    Enfoque := Nil;
    if dsAutorizacionesxPersonalUpt.DataSet.State = dsInsert then
    begin
      //Validar la captura antes de grabar
      if edtCodigo.Text = '' then
      begin
        edtCodigo.SetFocus;
        raise InteligentException.CreateByCode(8, ['Código']);
      end;

      // Verificar que el código no exista en la tabla
      if Not CargarDatosFiltrados(TClientDataSet(dsAutorizacionesxPersonalUpt.DataSet), 'Codigo', [edtCodigo.Text]) then
        raise InteligentException.CreateByCode(16, ['Autorizaciones por Cargo']);

      Enfoque := edtCodigo;
      if CuantosRegistros(TClientDataSet(dsAutorizacionesxPersonalUpt.DataSet)) > 0 then
        raise InteligentException.CreateByCode(8, ['El código ' + edtCodigo.Text + ' ya ha sido dado de alta en el catálogo, no pueden existir dos códigos identicos, por favor verifique esto e intente de nuevo.']);

      dsAutorizacionesxPersonalUpt.DataSet.FieldByName('IdAutorizacionesxCargo').AsInteger := 0;
      dsAutorizacionesxPersonalUpt.DataSet.FieldByName('IdAutorizaciones').AsInteger := IdAutorizaciones;
      dsAutorizacionesxPersonalUpt.DataSet.FieldByName('Modo').AsString := 'Agregar';

      dsAutorizacionesxPersonalUpt.DataSet.Post;
      TClientDataSet(dsAutorizacionesxPersonalUpt.DataSet).ApplyUpdates(-1);
    end;

    if dsAutorizacionesxPersonalUpt.DataSet.State = dsEdit then
    begin
      // Verificar que el código original no sea igual al nuevo código, si esto es así
      // se deberá validar el nuevo codigo para que no exista ya en la tabla
      if dsAutorizacionesxPersonalUpt.DataSet.FieldByname('Codigo').AsString <> OldCodigo then
      begin
        Enfoque := edtCodigo;

        if Not CargarDatosFiltrados(TClientDataSet(dsAutorizacionesxPersonalUpt.DataSet), 'Codigo', [edtCodigo.Text]) then
          raise InteligentException.CreateByCode(16, ['Autorizaciones por Cargo']);

        if CuantosRegistros(TClientDataSet(dsAutorizacionesxPersonalUpt.DataSet)) > 0 then
          raise InteligentException.CreateByCode(8, ['El código ' + edtCodigo.Text + ' ya ha sido dado de alta en el catálogo, no pueden existir dos códigos identicos, por favor verifique esto e intente de nuevo.']);
      end;

      dsAutorizacionesxPersonalUpt.DataSet.Post;
      TClientDataSet(dsAutorizacionesxPersonalUpt.DataSet).ApplyUpdates(-1);
    end;

    //se Cambia las variables modelResult para actualizar datos, se cierra el dataset y
    //se cambia  la  variable cancelarcierre para que sea falso y se cierre la ventana
    FormActualizar := mrOK;
    dsAutorizacionesxPersonalUpt.DataSet.Close;
  Except
    on e:Exception do
    begin
      CancelaCerrar := True;
      if Assigned(Enfoque) then
        Enfoque.SetFocus;
      LevantarExcepcion(e);
    end;
  End;
end;

procedure TFrmFirmantesExcepciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := FormActualizar;
  //EliminarConjunto(TClientDataSet(dsAutorizacionesxPersonalUpt.DataSet));
end;

procedure TFrmFirmantesExcepciones.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := Not CancelaCerrar;
  CancelaCerrar := False;
end;

procedure TFrmFirmantesExcepciones.FormCreate(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmFirmantesExcepciones.FormShow(Sender: TObject);
begin
  FormActualizar := mrCancel;
  OldCodigo := dsAutorizacionesxPersonalUpt.DataSet.FieldByName('Codigo').AsString ;
end;

end.
