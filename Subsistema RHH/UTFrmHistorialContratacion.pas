unit UTFrmHistorialContratacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBClient,
  ClientModuleUnit1, UInteliDialog;

type
  TFrmHistorialContratacion = class(TForm)
    CdPersonalImss: TClientDataSet;
    dsPersonalImss: TDataSource;
    CxGridDatos: TcxGridDBTableView;
    CxLevel1: TcxGridLevel;
    CxGridMain: TcxGrid;
    CxColumnEmpleado: TcxGridDBColumn;
    CxColumnLeyendaGuardia: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    IdPersonal: Integer;
    { Public declarations }
  end;

var
  FrmHistorialContratacion: TFrmHistorialContratacion;

implementation

{$R *.dfm}

procedure TFrmHistorialContratacion.FormCreate(Sender: TObject);
begin
   if not CrearConjunto(CdPersonalImss, 'nuc_personalimss_contratacion', ccSelect) then
     raise InteligentException.CreateByCode(5, ['nuc_personalimss_contratación']);
  IdPersonal := -9;
end;

procedure TFrmHistorialContratacion.FormShow(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CargarDatosFiltrados(CdPersonalImss, 'IdPersonal', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['IdPersonal', 'nuc_personalIMss_contratación', VarToStr(IdPersonal)]);

      if CdPersonalImss.Active then
        CdPersonalImss.Refresh
      else
        CdPersonalImss.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message , e.MsgType, [mbOK], 0);
  end;
end;

end.
