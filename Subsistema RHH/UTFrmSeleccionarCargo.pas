unit UTFrmSeleccionarCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ClientModuleUnit1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, Menus, StdCtrls, cxButtons, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, UControlExcepciones, UInteliDialog, URegistro;

type
  TFrmSeleccionarCargo = class(TForm)
    dsCargo: TDataSource;
    cxGridCargos: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel2: TPanel;
    cxGridCargosColumn1: TcxGridDBColumn;
    cxGridCargosColumn2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure setValoresVisuales();
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeleccionarCargo: TFrmSeleccionarCargo;

implementation

{$R *.dfm}

procedure TFrmSeleccionarCargo.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmSeleccionarCargo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SetValoresVisuales();
end;

procedure TFrmSeleccionarCargo.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  // Reajustar los anchos de las columnas
  for i := 0 to cxGridCargos.ColumnCount -1 do
  Try
    cxGridCargos.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\'+ 'Datos' + '\GridCargos', 'Column'+ IntToStr(i)));
  Except
    ;
  End;

  if self.Width > 0 then
  Try
    self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Width'));
  Except
    ;
  End;

  if self.Height > 0 then
  Try
    self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Height'));
  Except
    ;
  End;
end;

procedure TFrmSeleccionarCargo.FormShow(Sender: TObject);
begin
  Try
    if ClientModule1.cdCargo.ProviderName = '' then
      if Not CrearConjunto(ClientModule1.cdCargo, 'nuc_cargo_seleccion', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Selección de Puestos de Trabajo']);

    if Not ClientModule1.cdCargo.Active then
      ClientModule1.cdCargo.Open;
  Except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure TFrmSeleccionarCargo.setValoresVisuales();
var
  i: Integer;
begin
  // Guardar la medida de ancho de las columnas

  for i := 0 to cxGridCargos.ColumnCount -1 do
    SetRegistry('\Ventanas', '\' + Self.Name + '\' + 'Datos' + '\GridCargos', 'Column'+ IntToStr(i), IntToStr(cxGridCargos.Columns[i].Width));

  if self.Width > 0 then
    SetRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Width' , IntToStr(self.Width));

  if self.Height > 0 then
    SetRegistry('\Ventanas', '\' + Self.Name + '\Form', 'Height', IntToStr(self.Height));

end;

end.
