unit UTFrmDatosBancarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, NxCollection, StdCtrls, DBCtrls, Mask, Uintelidialog,
  JvExControls, JvLabel, pngimage, ExtCtrls, AdvEdit, AdvEdBtn, RxToolEdit,
  RXDBCtrl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, cxClasses, dxRibbon,
  dxSkinsdxBarPainter, dxBar;

type
  TFrmDatosBancarios = class(TForm)
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    DsDatos: TDataSource;
    EdtBancos: TAdvEditBtn;
    OblDocumento: TImage;
    JvLabel9: TJvLabel;
    EdtSucursal: TDBEdit;
    EdtNumeroCuenta: TDBEdit;
    EdtClaveInterbancaria: TDBEdit;
    CbEstado: TDBComboBox;
    DateFecha: TDBDateEdit;
    MObservaciones: TDBMemo;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    tdxRibbonDatosBancarios1Tab1: TdxRibbonTab;
    tdxRibbonDatosBancarios1: TdxRibbon;
    dxBarManagerDocumentos1: TdxBarManager;
    dxToolBarManagerDocumentos1Bar: TdxBar;
    btn1: TdxBarLargeButton;
    btn2: TdxBarLargeButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtBancosClickBtn(Sender: TObject);
    procedure EdtBancosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_GrabarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure EdtNumeroCuentaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtClaveInterbancariaKeyPress(Sender: TObject; var Key: Char);
  private
    cdBancos : TClientDataSet;
    cdBuscar: TClientDataSet;
    cdPersonal : TClientDataSet;
    procedure GetBancos;
    function VerificarVacios(datSource:Tdatasource):Boolean;
    { Private declarations }
  public
    Resultado : integer;
    { Public declarations }
  end;

var
  FrmDatosBancarios: TFrmDatosBancarios;

implementation
uses
  ClientModuleUnit1, xDatabase, UTFrmCatalogoBancos;
{$R *.dfm}

procedure TFrmDatosBancarios.EdtBancosClickBtn(Sender: TObject);
begin
  GetBancos;
end;

procedure TFrmDatosBancarios.EdtBancosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cdBancos.close;
    CargarDatosFiltrados(CdBancos,'nombre',[EdtBancos.text + '%']);
    cdBancos.Open;
    if CdBancos.RecordCount = 1 then
    begin
      EdtBancos.Text := CdBancos.FieldByName('nombre').asstring;
      dsdatos.DataSet.FieldByName('idbanco').AsInteger := CdBancos.FieldByName('idbanco').AsInteger;
    end
    else
    if InteliDialog.ShowModal('Aviso', 'Se encontraron varias o ninguna coincidencia con el nombre ingresado.' + #10 +
                                '¿Quiere Seleccionar un registro del catálogo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      GetBancos;
  end;
end;

procedure TFrmDatosBancarios.EdtClaveInterbancariaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure TFrmDatosBancarios.EdtNumeroCuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure TFrmDatosBancarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsDatos.DataSet.Cancel;

  EliminarConjunto([cdBancos, cdBuscar]);
end;

procedure TFrmDatosBancarios.FormCreate(Sender: TObject);
begin
  //Bancos
  cdBancos := TClientDataSet.create(self);
  cdBuscar := TClientDataSet.create(Self);
  cdPersonal := TClientDataSet.create(Self);
  Resultado:=mrCancel;
end;

procedure TFrmDatosBancarios.FormShow(Sender: TObject);
begin
  try
    clientmodule1.ComponentColor(self);

    if not Crearconjunto(cdBuscar, 'rhu_datosbancariosxpersonal', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Bancos por Postulante']);

    if not Crearconjunto(CdBancos,'con_bancos',cccatalog) then
      raise InteligentException.CreateByCode(5, ['Bancos']);

    if not CargarDatosFiltrados(CdBancos,'idbanco',[dsdatos.DataSet.fieldbyname('idbanco').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Bancos', dsdatos.DataSet.fieldbyname('idbanco').AsInteger, 'Id. Banco']);

    CdBancos.Open;

    if CdBancos.RecordCount = 1 then
      EdtBancos.text := CdBancos.FieldByName('nombre').asstring;

    EdtBancos.Enabled := dsDatos.DataSet.State = dsInsert;
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

procedure TFrmDatosBancarios.GetBancos;
Var
  registro: TLista;
begin
  try
    try
      FrmCatalogoBancos := TFrmCatalogoBancos.Create(nil);

      FrmCatalogoBancos.ModoSeleccion       := True;
      FrmCatalogoBancos.PanelAdd.Visible    := False;
      FrmCatalogoBancos.PanelEdit.Visible   := False;
      FrmCatalogoBancos.PanelDelete.Visible := False;
      FrmCatalogoBancos.PanelPrint.Visible  := False;
      FrmCatalogoBancos.PanelExport.Visible := False;
      FrmCatalogoBancos.PanelImport.Visible := False;

      registro := FrmCatalogoBancos.SeleccionarItem();

      if Assigned(registro) then
      begin
        cdBancos.Close;
        if Not CargarDatosFiltrados(cdBancos, 'IdBanco', [Registro.Valor['IdBanco']]) then
          raise InteligentException.CreateByCode(6, ['Bancos', Registro.Valor['IdBanco'], 'Identificador de Banco']);

        cdBancos.Open;

        if cdBancos.RecordCount <> 1 then
          raise InteligentException.CreateByCode(6, ['Bancos', Registro.Valor['CodigoBanco']]);

        dsDatos.DataSet.FieldByName('IdBanco').AsInteger := registro.Valor['IdBanco'];
        EdtBancos.Text := registro.Valor['Nombre'];
      end;

    except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:exception do
        InteliDialog.ShowModal('Error al cargar catalogo de bancos.', e.Message, mtInformation, [mbOk], 0);
    end;
  finally
    FrmCatalogoBancos.Free;
  end;
end;

procedure TFrmDatosBancarios.Btn_CancelarClick(Sender: TObject);
begin
  TClientDataSet(dsdatos.DataSet).CancelUpdates;
  close;
end;

procedure TFrmDatosBancarios.Btn_GrabarClick(Sender: TObject);
var
  nombre : string;
begin
  try
    if VerificarVacios(dsDatos) then
    begin
      // Verificar que se haya localizado un banco adecuado
      if (Not cdBancos.Active) or ((cdBancos.Active) and (cdBancos.RecordCount <> 1)) then
        raise InteligentException.CreateByCode(24, ['Es necesario seleccionar un Banco antes de proceder a grabar el registro']);

      if dsDatos.Dataset.State = dsInsert then
      begin
        // Verificar que el documento no exista previamente en este postulante
        if Not CargarDatosFiltrados(cdBuscar, 'IdBanco,IdPostulante', [dsDatos.DataSet.FieldByName('IdBanco').AsInteger, dsDatos.DataSet.FieldByName('IdPostulante').AsInteger]) then
          raise InteligentException.CreateByCode(6, [dsDatos.DataSet.FieldByName('IdBanco').AsString + ' - ' + dsDatos.DataSet.FieldByName('IdDocumento').AsString, 'IdBanco - IdPostulante']);

        if CuantosRegistros(cdBuscar) > 0 then
          raise InteligentException.CreateByCode(17, ['Bancos del Postulante', dsDatos.DataSet.FieldByName('IdBanco').AsString + ' - ' + dsDatos.DataSet.FieldByName('IdPostulante').AsString]);

        //Crear conjunto de las cuentas bancarias, para ver si la cuenta bancaria ya ha sido asignada a otro empleado
        if cdBuscar.Active = True then
        begin
          cdBuscar.Active := False;
          cdBuscar.Close;
        end;

        if not Crearconjunto(cdBuscar, 'rhu_datosbancariosxpersonal', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Bancos por Postulante']);

        //Verificar que el numero de cuenta no se le halla asignado a otro postulante
        if Not CargarDatosFiltrados(cdBuscar, 'numerodecuenta,IdBanco', [edtNumeroCuenta.Text, dsDatos.DataSet.FieldByName('IdBanco').AsInteger]) then
          raise InteligentException.CreateByCode(6, [dsDatos.DataSet.FieldByName('IdBanco').AsString + ' - ' + dsDatos.DataSet.FieldByName('IdDocumento').AsString, 'IdBanco - IdPostulante']);

        cdBuscar.Open;

        if cdBuscar.RecordCount > 0 then
        begin
          //Si la cuenta bancaria ya ha sido asignada a otro empleado, entonces mostrar a que empleado le fue asignada esa cuenta bancaria
          if cdPersonal.Active = True then
          begin
            cdPersonal.Active := False;
            cdPersonal.Close;
          end;

          if not Crearconjunto(cdPersonal, 'nuc_personal', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Personal']);

          cdPersonal.Open;

          cdPersonal.Locate('idPersonal', cdBuscar.FieldByName('IdPostulante').AsInteger, [loCaseInsensitive]);






          nombre := cdPersonal.FieldByName('Nombres').AsString + ' ' + cdPersonal.FieldByName('APaterno').AsString + ' ' +  cdPersonal.FieldByName('AMaterno').AsString;
          InteliDialog.ShowModal('Aviso.','El numero de cuenta bancaria ya fue asignado al empleado: ' + nombre, mtInformation, [mbOk], 0);
          Exit;
        end;
      end;

      dsdatos.DataSet.Post;
      TClientDataset(dsDatos.Dataset).ApplyUpdates(-1);

      Resultado:=mrOk;
      close;
    end;
  except
    on e:InteligentException do
    begin
      //EdtBancos.SetFocus;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;

  end;
end;

function TFrmDatosBancarios.VerificarVacios(datSource: Tdatasource): Boolean;
var
  Resultado:Boolean;
begin
  Resultado := False;
  try
    try

      if datSource.DataSet.fieldbyname('idbanco').AsInteger < 0  then
      begin
        EdtBancos.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Seleccione un Banco']);
      end;

      if Length(Trim(EdtSucursal.Text))=0 then
      begin
        EdtSucursal.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Por favor capture la sucursal a la que pertenece al cuenta']);
      end;

      if Length(Trim(EdtNumeroCuenta.Text))=0 then
      begin
        EdtNumeroCuenta.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Por favor capture El Numero cuenta']);
      end;

      if Length(Trim(EdtClaveInterBancaria.Text))=0 then
      begin
        EdtClaveInterBancaria.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Por favor capture la Interbancaria']);
      end;

      if Length(Trim(DateFecha.EditText))=0 then
      begin
        DateFecha.SetFocus;
        raise InteligentWarning.CreateBycode(8,['Por favor capture la fecha']);
      end;

      Resultado := True;

    except
      on e:InteligentWarning do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        Close;
      end;
    end;

  finally
    Result := Resultado;
  end;
end;

end.
