unit UTFrmSeleccionarEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, ExtCtrls, Grids, DBGrids, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, StdCtrls,
  cxButtons, DB, URegistro, ClientModuleUnit1;

type
  TSeleccionado = class
    IdPersonal: Integer;
    CodigoPersonal: string;
    NombreCompleto: string;
    IdCargo: Integer;
    CodigoCargo: string;
    TituloCargo: string;
    IdDepartamento: Integer;
    CodigoDepartamento: string;
    TituloDepartamento: string;
    constructor Create;
  end;

  TFrmSeleccionarEmpleado = class(TForm)
    GridEmpleados: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    CxBtnCargar: TcxButton;
    CxBtnCancel: TcxButton;
    Panel3: TPanel;
    dsEmpleado: TDataSource;
    procedure CxBtnCargarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeleccionarEmpleado: TFrmSeleccionarEmpleado;
  SESeleccionado: TSeleccionado;

implementation

{$R *.dfm}

constructor TSeleccionado.Create;
begin
  IdPersonal := -1;
  CodigoPersonal := '';
  NombreCompleto := '';
  IdCargo := -1;
  CodigoCargo := '';
  TituloCargo := '';
  IdDepartamento := -1;
  CodigoDepartamento := '';
  TituloDepartamento := '';
end;

procedure TFrmSeleccionarEmpleado.CxBtnCargarClick(Sender: TObject);
begin
  SESeleccionado.IdPersonal         := dsEmpleado.DataSet.FieldByName('IdPersonal').AsInteger;
  SESeleccionado.CodigoPersonal     := dsEmpleado.DataSet.FieldByName('CodigoPersonal').AsString;
  SESeleccionado.NombreCompleto     := dsEmpleado.DataSet.FieldByName('NombreCompleto').AsString;
  SESeleccionado.IdCargo            := dsEmpleado.DataSet.FieldByName('IdCargo').AsInteger;
  SESeleccionado.CodigoCargo        := dsEmpleado.DataSet.FieldByName('CodigoCargo').AsString;
  SESeleccionado.TituloCargo        := dsEmpleado.DataSet.FieldByName('TituloCargo').AsString;
  SESeleccionado.IdDepartamento     := dsEmpleado.DataSet.FieldByName('IdDepartamento').AsInteger;
  SESeleccionado.CodigoDepartamento := dsEmpleado.DataSet.FieldByName('CodigoDepartamento').AsString;
  SESeleccionado.TituloDepartamento := dsEmpleado.DataSet.FieldByName('TituloDepartamento').AsString;
end;

procedure TFrmSeleccionarEmpleado.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  LiberarVentana(Self, Action);

  for i := 0 to GridEmpleados.Columns.Count -1 do
    if GridEmpleados.Columns.Items[i].FieldName <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, GridEmpleados.Columns.Items[i].FieldName, IntToStr(GridEmpleados.Columns.Items[i].Width));

  Action := caFree;
end;

procedure TFrmSeleccionarEmpleado.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  if not Assigned(SESeleccionado) then
    SESeleccionado := TSeleccionado.Create;

  AccedeACoordenadas(Self);

  // Reajustar los anchos de las columnas
  for i := 0 to GridEmpleados.Columns.Count -1 do
  Try
    GridEmpleados.Columns.Items[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, GridEmpleados.Columns.Items[i].FieldName));
  Except
    ;
  End;
end;

end.
