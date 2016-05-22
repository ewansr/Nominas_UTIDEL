unit UTFrmDisenoReporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, ExtCtrls, frxDock, frxDCtrl,
  frxDesgn, frxClass, cxClasses, dxBar, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, ClientModuleUnit1, UInteliDialog,
  frxDesgnCtrls, StdCtrls, frxCtrls, ComCtrls, cxContainer, cxEdit, cxListView,
  ImgList;

type
  TFrmDisenoReporte = class(TForm)
    DxBManagerMain: TdxBarManager;
    FrxReportGeneral: TfrxReport;
    FrxDesignerReporte: TfrxDesigner;
    FrxDialogCtrlsReporte: TfrxDialogControls;
    FrxTBPanelreporte: TfrxTBPanel;
    DxRibbonReportesTab1: TdxRibbonTab;
    DxRibbonReportes: TdxRibbon;
    DxBarOpciones: TdxBar;
    DxBarBtnAbrir: TdxBarLargeButton;
    DxBarBtnCerrar: TdxBarLargeButton;
    DxBarBtnGuardarComo: TdxBarLargeButton;
    dlgOpenReporte: TOpenDialog;
    dlgSaveReporte: TSaveDialog;
    DxBarBtnCancelarEdicion: TdxBarLargeButton;
    CxImageLista: TcxImageList;
    cxListvReportes: TcxListView;
    procedure DxBarBtnAbrirClick(Sender: TObject);
    procedure DxBarBtnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DxBarBtnGuardarComoClick(Sender: TObject);
    procedure DxBarBtnCancelarEdicionClick(Sender: TObject);
    procedure FrxTBPanelreporteDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FrxTBPanelreporteDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    procedure llenarList;
    Procedure AbrirReporte(Reporte: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDisenoReporte: TFrmDisenoReporte;

implementation

{$R *.dfm}

procedure TFrmDisenoReporte.AbrirReporte(Reporte: String);
var
  RutaReporte: String;
begin
  RutaReporte := ExtractFilePath(Application.ExeName)+ ClientModule1.CdRutaReportes.FieldByName('Valor1').AsString + Reporte ;
  try
    FrxReportGeneral.LoadFromFile(RutaReporte);
  except
    ;
  end;
  FrxReportGeneral.DesignReportInPanel(FrxTBPanelreporte);
end;

procedure TFrmDisenoReporte.DxBarBtnAbrirClick(Sender: TObject);
var
  RutaReporte: string;
begin
  RutaReporte := ExtractFilePath(Application.ExeName);
  dlgOpenReporte.InitialDir := RutaReporte + ClientModule1.CdRutaReportes.FieldByName('Valor1').AsString;
  if dlgOpenReporte.Execute then
  begin
    try
      RutaReporte := dlgOpenReporte.FileName;
      FrxReportGeneral.LoadFromFile(RutaReporte);
    except
      ;
    end;
    FrxReportGeneral.DesignReportInPanel(FrxTBPanelreporte);
  end;
end;

procedure TFrmDisenoReporte.DxBarBtnCancelarEdicionClick(Sender: TObject);
begin
//  if Assigned(FrxDesignerReporte) then
//  begin
  try
    try
      //FrxReportGeneral.Clear;
      if FrxReportGeneral.Designer <> nil then
        FrxReportGeneral.Designer.Close;
    finally
      FrxDesignerReporte := nil;
    end;
  except
    ;
  end;
  //end;
end;

procedure TFrmDisenoReporte.DxBarBtnCerrarClick(Sender: TObject);
begin

  Close;
end;

procedure TFrmDisenoReporte.DxBarBtnGuardarComoClick(Sender: TObject);
var
  RutaDestino: string;
begin
  if dlgSaveReporte.Execute then
  begin
    RutaDestino := dlgSaveReporte.FileName;
    FrxReportGeneral.SaveToFile(RutaDestino);
  end;
end;

procedure TFrmDisenoReporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FrxReportGeneral.Designer <> nil then
    FrxReportGeneral.Designer.Close;

  if Assigned(FrxDesignerReporte) then
    FrxDesignerReporte.Destroy;

  Action := caFree;
end;

procedure TFrmDisenoReporte.FrxTBPanelreporteDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  Reporte: string;
begin
  ShowMessage('Hola');
  if cxListvReportes.ItemIndex = 0 then
    AbrirReporte('Recibo.fr3');

end;

procedure TFrmDisenoReporte.FrxTBPanelreporteDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmDisenoReporte.llenarList;
var
  Item: TListItem;
begin
  Item := cxListvReportes.Items.Add;
  Item.Caption := 'Prueba';
end;

end.
