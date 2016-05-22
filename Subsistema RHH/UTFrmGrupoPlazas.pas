unit UTFrmGrupoPlazas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvEdBtn, AdvShapeButton, JvExControls, JvLabel,
  ExtCtrls, DBClient, xDatabase, ComCtrls, AdvDateTimePicker,
  UControlExcepciones, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
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
  dxSkinXmas2008Blue, cxButtons;

type
  TOTipoNomina = class
    IdTipoNomina: Integer;
    TipoCalculo: String;
    Etiqueta: String;
    Titulo: String;
  end;

  TFrmGrupoPlazas = class(TForm)
    pnlDatos: TPanel;
    edtCargo: TAdvEditBtn;
    lblTituloCargo: TJvLabel;
    edtCantidad: TAdvEdit;
    pnlBotones: TPanel;
    pnl1: TPanel;
    dtpFechaReq: TAdvDateTimePicker;
    cxButton1: TcxButton;
    btnBtnAdd: TcxButton;
    lblSalario: TJvLabel;
    JvLabel2: TJvLabel;
    lblLeyendaSalario: TJvLabel;
    JvLabel4: TJvLabel;
    lblSueldo: TJvLabel;
    lblLeyendaSueldo: TJvLabel;
    cbTipoNomina: TComboBox;
    JvLabel1: TJvLabel;
    procedure edtCargoClickBtn(Sender: TObject);
    procedure edtCargoKeyPress(Sender: TObject; var Key: Char);
    procedure btnBtnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FCantidad: Integer;
    FFecha: TDate;
    IdPointer: Integer;
    CancelarCierre: Boolean;
  public
    idsalario : integer;
  end;

var
  FrmGrupoPlazas: TFrmGrupoPlazas;

implementation

uses
  ClientModuleUnit1, nuc_genericclasses, UTFrmCargos, UInteliDialog,
  UTFrmSeleccionarCargo;

{$R *.dfm}

procedure TFrmGrupoPlazas.btnBtnAddClick(Sender: TObject);
begin
  try
    if IdPointer = -1 then
    begin
      edtCargo.SetFocus;
      Raise InteligentException.CreateByCode(18, ['Puesto']);
    end;

    if edtCantidad.IntValue <= 0 then
    begin
      edtCantidad.SetFocus;
      Raise InteligentException.CreateByCode(8, ['El campo Cantidad debe tener un valor superior a 0']);
    end;

    FCantidad := edtCantidad.IntValue;
    FFecha := dtpFechaReq.Date;
  except
    on e:Exception do
    begin
      CancelarCierre := True;
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmGrupoPlazas.edtCargoClickBtn(Sender: TObject);
Var
  Reg: TLista;
  Codigo: string;
begin
  try
    Application.CreateForm(TFrmSeleccionarCargo, FrmSeleccionarCargo);
    if FrmSeleccionarCargo.ShowModal = mrOk then
    begin
      edtCargo.Text := ClientModule1.cdCargo.FieldByName('CodigoCargo').AsString;
      lblTituloCargo.Caption := ClientModule1.cdCargo.FieldByName('TituloCargo').AsString;
      lblSalario.Caption := FloatToStrF(ClientModule1.cdCargo.FieldByName('Salario').AsFloat, ffCurrency, 12, 2);
      lblLeyendaSalario.Caption := ClientModule1.cdCargo.FieldByName('CodigoSalario').AsString + ' - ' + ClientModule1.cdCargo.FieldByName('TituloSalario').AsString;
      lblSueldo.Caption := FloatToStrF(ClientModule1.cdCargo.FieldByName('Importe').AsFloat, ffCurrency, 12, 2);
      lblLeyendaSueldo.Caption := ClientModule1.cdCargo.FieldByName('Titulo').AsString;

      IdPointer := ClientModule1.cdCargo.RecNo;
      //GetKeyState(VK_SHIFT) and $80 = 0
      //SelectNext(edtCargo, True, True);
      edtCantidad.SetFocus;
    end;

    FrmSeleccionarCArgo.Free;
    FrmSeleccionarCargo := nil;
    {idsalario:=-9;
    Codigo := trim(edtCargo.Text);
    Codigo := Codigo + '%';
    Reg := BuscarEnCatalogo(Codigo, TFrmCargos, 'nuc_cargo', 'codigocargo');
    if Assigned(Reg) then
    begin
      edtCargo.Text := Reg['codigocargo'];
      lblTituloCargo.Caption := Reg['titulocargo'];
      if not (Reg['idsalario']>0) then
        raise inteligentexception.Create('El cargo que ha seleccionado no0 contiene un salario asignado. Por favor asignele un salario al cargo para poder seleccionarlo');
      idsalario:=Reg['idsalario'];
      FCargo := Reg;
      SelectNext(Sender as TWinControl,True,True)
    end;}
  except
    on e:Exception do
      LevantarExcepcion(e);
  end;
end;

procedure TFrmGrupoPlazas.edtCargoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtCargo.OnClickBtn(Sender);
end;

procedure TFrmGrupoPlazas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := Not CancelarCierre;
  CancelarCierre := False;
end;

procedure TFrmGrupoPlazas.FormShow(Sender: TObject);
var
  OTipo: TOTipoNomina;
  Marca: System.TArray<System.Byte>;
begin
  dtpFechaReq.Date := Date;
  IdPointer := -1;
  CancelarCierre := False;

  Try
    if ClientModule1.cdTipoNomina.ProviderName = '' then
      if Not CrearConjunto(ClientModule1.cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

    if Not ClientModule1.cdTipoNomina.Active then
      ClientModule1.cdTipoNomina.Open;

    Marca := ClientModule1.cdTipoNomina.BookMark;
    Try
      ClientModule1.cdTipoNomina.First;
      while Not ClientModule1.cdTipoNomina.Eof do
      begin
        OTipo := TOTipoNomina.Create;
        OTipo.IdTipoNomina := ClientModule1.cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
        OTipo.TipoCalculo  := ClientModule1.cdTipoNomina.FieldByName('TipoCalculo').AsString;
        OTipo.Etiqueta     := ClientModule1.cdTipoNomina.FieldByName('Etiqueta').AsString;
        OTipo.Titulo       := ClientModule1.cdTipoNomina.FieldByName('Titulo').AsString;

        cbTipoNomina.Items.AddObject(ClientModule1.cdTipoNomina.FieldByName('Etiqueta').AsString, OTipo);

        ClientModule1.cdTipoNomina.Next;
      end;
    Finally
      if ClientModule1.cdTipoNomina.BookmarkValid(Marca) then
        ClientModule1.cdTipoNomina.GotoBookMark(Marca)
      else
        ClientModule1.cdTipoNomina.First;

      cbTipoNomina.ItemIndex := cbTipoNomina.Items.IndexOf(ClientModule1.cdTipoNomina.FieldByName('Etiqueta').AsString);
    End;
  Except
    on e:Exception do
    begin
      LevantarExcepcion(e);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
