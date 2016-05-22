unit UtFrmHistorialPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, cxGroupBox, ClientModuleUnit1;

type
  TFrmHistorialPago = class(TForm)
    Panel1: TcxGroupBox;
    Panel2: TcxGroupBox;
    cdHistorialPago: TClientDataSet;
    dsHistorialPago: TDataSource;
    cxDBGrid1: TcxGrid;
    cxDbGridHistorialPago: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    cxDateEdit1: TcxDateEdit;
    grdColumDbGridHistorialPagoColumn1: TcxGridDBColumn;
    grdColumDbGridHistorialPagoColumn2: TcxGridDBColumn;
    grdColumDbGridHistorialPagoColumn3: TcxGridDBColumn;
    grdColumDbGridHistorialPagoColumn4: TcxGridDBColumn;
    grdColumDbGridHistorialPagoColumn5: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    IdPersonal, IdNomina, IdTipoNomina: Integer;
    { Public declarations }
  end;

var
  FrmHistorialPago: TFrmHistorialPago;

implementation

{$R *.dfm}

procedure TFrmHistorialPago.FormCreate(Sender: TObject);
begin
  if not crearconjunto(cdHistorialPago, 'nom_nomina_totalizaempleado', ccSelect) then
    raise inteligentException.createbycode(5, ['Total Neto Empleados']);
end;

procedure TFrmHistorialPago.FormShow(Sender: TObject);
begin
   if not CargarDatosFiltrados(cdHistorialPago, 'Clave,IdPersonal,IdNomina,IdTipoNomina', ['NETO',IdPersonal, IdNomina, IdTipoNomina]) then
    raise InteligentException.CreateByCode(6, ['TotalNetoEmpleados', 'IdPersonal','-9']);

   if cdHistorialPago.Active then
    cdHistorialPago.Refresh
   else
    cdHistorialPago.Open;
end;

end.
