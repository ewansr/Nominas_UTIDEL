unit UtfrmKardex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, dxSkinsdxBarPainter,
  ComCtrls, StdCtrls, ExtCtrls, dxBar, ClientModuleUnit1, ExportaExcel, UInteliDialog;

type
  TfrmKardex = class(TForm)
    cdKardex: TClientDataSet;
    dsKardex: TDataSource;
    cxDbGridKardex: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    cxDBGrid1: TcxGrid;
    grdColumDbGridGrid1DBTableView1Column1: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column2: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column3: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column4: TcxGridDBColumn;
    grdColumDbGridGrid1DBTableView1Column5: TcxGridDBColumn;
    dxbrmngr1: TdxBarManager;
    Paneldxbrmngr1Bar1: TdxBar;
    AdvSmoothButton1: TdxBarLargeButton;
    pnlProgress: TPanel;
    lblProgress: TLabel;
    pbProgress: TProgressBar;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKardex: TfrmKardex;

implementation

Uses
  Unit2;
{$R *.dfm}

procedure TfrmKardex.AdvSmoothButton1Click(Sender: TObject);
begin
  if cdKardex.State = dsBrowse then
  Try
    Try
      if cxDbGridKardex.ViewData.RowCount < 1 Then
        Raise Exception.Create('No hay registros.');

      ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([clientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
      ExportarExcelDX(cdKardex,Form2.cdImagen,cxDbGridKardex,Self.Caption,
      clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString,
      clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString,
      'Ciudad del Carmen, Campeche'
      ,pbProgress,pnlProgress);

    Except
      on e:exception do
        InteliDialog.ShowModal('No se puede exportar Por el siguiente motivo: ',e.message, mtInformation, [mbOk], 0);
    End;
  Finally
    pnlProgress.Visible := False;
  End;
end;

procedure TfrmKardex.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmKardex.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdKardex, 'nuc_kardex', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Kardex del Sistema']);
end;

procedure TfrmKardex.FormShow(Sender: TObject);
begin
  try
    if not CargarDatosFiltrados(cdKardex, 'IdKardex', [-1]) then
      raise InteligentException.CreateByCode(6, ['Kardex del Sistema', 'IdKardex', '-1']);

    if cdKardex.Active then
      cdKardex.Refresh
    else
      cdKardex.Open;
  except

  end;
end;

end.
