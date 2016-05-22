unit UTFrmFirmantesSolicitantesUpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxButtons, UControlExcepciones, ExtCtrls, DBClient, ClientModuleUnit1;

type
  TFrmFirmantesSolicitantesUpt = class(TForm)
    dsAutorizacionesxCargoUpt: TDataSource;
    edtCodigo: TDBEdit;
    lcbDatos: TDBLookupComboBox;
    lblDatos: TLabel;
    lblCodigo: TLabel;
    lblTipoFirma: TLabel;
    dsCargos: TDataSource;
    Label1: TLabel;
    Panel1: TPanel;
    btn_Ok: TcxButton;
    btn_Cancelar: TcxButton;
    txtAplicaPara: TLabel;
    txtTipo: TLabel;
    dsPersonal: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_CancelarClick(Sender: TObject);
  private
    CancelaCerrar: Boolean;
    OldCodigo: String;
    FormActualizar: TModalResult;
  public
    IdAutorizaciones: Integer;
    Cual: TCualMovimiento;
  end;

{const
  vuAgregarCargo = 0;
  vuEditarCargo = 1;
  vuAgregarEmpleado = 2;
  vuEditarAgregarEmpleado = 3;
  vuQuitarEmpleado = 4;
  vuEditarQuitarEmpleado = 5;}

var
  FrmFirmantesSolicitantesUpt: TFrmFirmantesSolicitantesUpt;

implementation

{$R *.dfm}

procedure TFrmFirmantesSolicitantesUpt.btn_CancelarClick(Sender: TObject);
begin
 close;
end;

procedure TFrmFirmantesSolicitantesUpt.btn_OkClick(Sender: TObject);
var
  Enfoque: TWinControl;
begin
  Try
    Enfoque := Nil;
    if dsAutorizacionesxCargoUpt.DataSet.State = dsInsert then
    begin
      //Validar la captura antes de grabar
      if edtCodigo.Text = '' then
      begin
        Enfoque := edtCodigo;
        raise EInteliException.CreateByCode(8, ['Código']);
        //raise InteligentException.CreateByCode(8, ['Código']);
      end;

      //Validar la captura si el tipo de movimiento  es para un cargo
      if (Cual = vuAgregarCargo) or (Cual = vuEditarCargo) then
      begin
        if LcbDatos.KeyValue = Null then
        begin
          Enfoque := LcbDatos;
          raise InteligentException.CreateByCode(8, ['Puesto de Trabajo']);
        end;

        // Verificar que el Cargo no exista ya para este IdAutorizaciones
        if RegistrosCuenta('nuc_autorizacionesxcargo', 'IdAutorizaciones,IdCargo', [IdAutorizaciones, dsCargos.DataSet.FieldByName('IdCargo').AsInteger]) > 0 then
        begin
          Enfoque := LcbDatos;
          raise InteligentException.CreateByCode(8, ['El Puesto de Trabajo ' + dsCargos.DataSet.FieldByname('TituloCargo').AsString + ' ya ha sido asignado al tipo de Movimiento [' + txtTipo.Caption + ' - ' + txtAplicaPara.Caption + '], por favor verifique esto e intente de nuevo.']);
        end;
      end
      else
      begin
        //Validar la captura si el tipo de movimiento  es para un empleado
        if LcbDatos.KeyValue = Null then
        begin
          Enfoque := LcbDatos;
          raise InteligentException.CreateByCode(8, ['Personal']);
        end;

        // Verificar que el Empleado no exista ya para este IdAutorizaciones
        if RegistrosCuenta('nuc_autorizacionesxcargo', 'IdAutorizaciones,IdPersonal', [IdAutorizaciones, dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger]) > 0 then
        begin
          Enfoque := LcbDatos;
          raise InteligentException.CreateByCode(8,['El Empleado' + dsCargos.DataSet.FieldByName('NombreCompleto').AsString + ' Ya ha sido asignado al Tipo de Movimiento [' + txtTipo.Caption + ' - ' + txtAplicaPara.Caption + '], por favor verifique esto e intente de nuevo.']);
        end;
      end;

      // Verificar que el código no exista en la tabla
      if RegistrosCuenta('nuc_autorizacionesxcargo', 'Codigo', [dsAutorizacionesxCargoUpt.DataSet.FieldByname('Codigo').AsString]) > 0 then
      begin
        Enfoque := edtCodigo;
        raise InteligentException.CreateByCode(8, ['El código ' + dsAutorizacionesxCargoUpt.DataSet.FieldByname('Codigo').AsString + ' ya ha sido dado de alta en el catálogo, no pueden existir dos códigos identicos, por favor verifique esto e intente de nuevo.']);
      end;

      //dsAutorizacionesxCargoUpt.DataSet.FieldByName('IdAutorizacionesxCargo').AsInteger := 0;
      dsAutorizacionesxCargoUpt.DataSet.FieldByName('IdAutorizaciones').AsInteger := IdAutorizaciones;
      //dsAutorizacionesxCargoUpt.DataSet.FieldByName('Modo').AsString := 'Agregar';

      if Cual = vuQuitarEmpleado then
        dsAutorizacionesxCargoUpt.DataSet.FieldByName('Modo').AsString := 'Quitar';

      dsAutorizacionesxCargoUpt.DataSet.Post;
      TClientDataSet(dsAutorizacionesxCargoUpt.DataSet).ApplyUpdates(-1);
    end;

    if dsAutorizacionesxCargoUpt.DataSet.State = dsEdit then
    begin
      // Verificar que el código original no sea igual al nuevo código, si esto es así
      // se deberá validar el nuevo codigo para que no exista ya en la tabla
      Enfoque := edtCodigo;

      if (Cual = vuAgregarCargo) or (Cual = vuEditarCargo) then
      begin
        if RegistrosCuenta('nuc_autorizacionesxcargo', 'IdAutorizaciones,IdCargo', [IdAutorizaciones, dsCargos.DataSet.FieldByName('IdCargo').AsInteger]) > 0 then
          raise InteligentException.CreateByCode(8, ['El código ' + dsAutorizacionesxCargoUpt.DataSet.FieldByname('Codigo').AsString + ' ya ha sido dado de alta en el catálogo, no pueden existir dos códigos identicos, por favor verifique esto e intente de nuevo.']);
      end
      else
      begin
        if RegistrosCuenta('nuc_autorizacionesxcargo', 'IdAutorizaciones,IdPersonal', [IdAutorizaciones, dsPersonal.DataSet.FieldByName('IdPersonal').AsInteger]) > 0 then
          raise InteligentException.CreateByCode(8, ['El código ' + dsAutorizacionesxCargoUpt.DataSet.FieldByname('Codigo').AsString + ' ya ha sido dado de alta en el catálogo, no pueden existir dos códigos identicos, por favor verifique esto e intente de nuevo.']);
      end;

      dsAutorizacionesxCargoUpt.DataSet.Post;
      TClientDataSet(dsAutorizacionesxCargoUpt.DataSet).ApplyUpdates(-1);
    end;

    //se Cambia las variables modelResult para actualizar datos, se cierra el dataset y
    //se cambia  la  variable cancelarcierre para que sea falso y se cierre la ventana
    FormActualizar := mrOK;
    dsAutorizacionesxCargoUpt.DataSet.Close;
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

procedure TFrmFirmantesSolicitantesUpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ModalResult := FormActualizar;
end;

procedure TFrmFirmantesSolicitantesUpt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := Not CancelaCerrar;
  CancelaCerrar := False;
end;

procedure TFrmFirmantesSolicitantesUpt.FormCreate(Sender: TObject);
begin
  CancelaCerrar := False;
  ModalResult := mrCancel;
end;

procedure TFrmFirmantesSolicitantesUpt.FormShow(Sender: TObject);
begin
  FormActualizar := mrCancel;
  OldCodigo := dsAutorizacionesxCargoUpt.DataSet.FieldByName('Codigo').AsString;    // Respaldar el código original

  try
    
    //Llena el LookupComboBox si es nuevo registro(cargo) o si es para editar la autorizacion para un Cargo
    if (Cual = vuAgregarCargo) or (Cual = vuEditarCargo) then
    begin
      LcbDatos.ListSource := dsCargos;
      LcbDatos.ListField  := 'TituloCargo';
      LcbDatos.KeyField   := 'IdCargo';
      LcbDatos.DataField  := 'IdCargo';
      LblDatos.Caption    := 'Cargo:';
      LblDatos.Left       := 66;
    end;

    //Llena el LookupComboBox si es para editar la autorizacion para un empleado
    if (Cual <> vuAgregarCargo) And (Cual <> vuEditarCargo) then
    begin
      LcbDatos.ListSource := dsPersonal;
      LcbDatos.ListField  := 'NombreCompleto';
      LcbDatos.KeyField   := 'IdPersonal';
      LcbDatos.DataField  := 'IdPersonal';
      LblDatos.Caption    := 'Personal:';
      LblDatos.Left       := 54;
    end;
  Except
    On e:Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;
end.
