unit FrmHistorialGuardias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ClientModuleUnit1,
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
  ExtCtrls, Menus, StdCtrls, cxButtons, Unit2, frxClass, frxDBSet, frm_connection, UinteliDialog;

type
  TTFrmHistorialGuardias = class(TForm)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    gridHistorialContrataciones: TcxGrid;
    cdHistorialContratacion: TClientDataSet;
    dsHistorialContratacion: TDataSource;
    TipoMovimiento: TcxGridDBColumn;
    Guardia: TcxGridDBColumn;
    fechaalta: TcxGridDBColumn;
    Titulo: TcxGridDBColumn;
    TituloSalario: TcxGridDBColumn;
    FechaMovimiento: TcxGridDBColumn;
    TituloTipoNomina: TcxGridDBColumn;
    TituloGuardia: TcxGridDBColumn;
    panelTabla: TPanel;
    panelBotones: TPanel;
    btnReporte: TcxButton;
    btnCerrar: TcxButton;
    frxReporteHistorialGuardias: TfrxReport;
    dsReporteHistorialGuardias: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
  private
    { Private declarations }
  public
    IdPersonal : Integer;
    { Public declarations }
  end;

var
  TFrmHistorialGuardias: TTFrmHistorialGuardias;

implementation

{$R *.dfm}

procedure TTFrmHistorialGuardias.btnCerrarClick(Sender: TObject);
begin
  //Cerrar esta ventana
  Close;
end;

procedure TTFrmHistorialGuardias.btnReporteClick(Sender: TObject);
begin
  //Imprimir el reporte
    ClientModule1.ImprimeReporte('HistorialGuardias.fr3', frxReporteHistorialGuardias);
end;

procedure TTFrmHistorialGuardias.FormCreate(Sender: TObject);
begin
  //Traer la consulta del servidor
  if Not CrearConjunto(cdHistorialContratacion, 'nuc_personalimss_contratacion', ccSelect) then
      raise InteligentException.CreateByCode(5, ['nuc_personalimss_contratacion']);

end;

procedure TTFrmHistorialGuardias.FormShow(Sender: TObject);
var
  cursor: TCursor;
begin
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if not CargarDatosFiltrados(cdHistorialContratacion, 'IdPersonal', [IdPersonal]) then
        raise InteligentException.CreateByCode(6, ['Historial de Guardias', 'IdPersonal', '-1']);

      if cdHistorialContratacion.Active then
        cdHistorialContratacion.Refresh
      else
      begin
        cdHistorialContratacion.Fields.Clear;
        cdHistorialContratacion.Open;
      end;

    finally
      Screen.Cursor := Cursor;
    end;

    cxgrdlvlGrid1Level1.Caption := 'Historial de Contratos de: ' + Form2.cdPersonal.FieldByName('NombreCompleto').AsString;
end;

end.
