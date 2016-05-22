unit UtFrmReporteConceptoExtraEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, AcroPDFLib_TLB,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ComCtrls, dxCore, cxDateUtils, cxCalendar, Menus,
  cxButtons, cxSplitter, DB, DBClient, ClientModuleUnit1, frxClass, frxDBSet, global,
  frxPreview, UInteliDialog, cxListBox;

type
  TFrmReporteConceptoExtraEmpleados = class(TForm)
    pnlSeleccion: TPanel;
    cdConceptosExtra: TClientDataSet;
    dsConceptosExtra: TDataSource;
    cdConceptosExtraxEmpleado: TClientDataSet;
    reporteConceptosExtraXEmpleado: TfrxReport;
    frxConceptosExtraXEmpleado: TfrxDBDataset;
    grpVistaPrevia: TfrxPreview;
    reporteConceptosExtraXEmpleadoCompleto: TfrxReport;
    ListBoxListaPersonal: TcxListBox;
    pnlFiltros: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbbConceptosExtra: TcxLookupComboBox;
    tcxFechaInicio: TcxDateEdit;
    tcxFechaTermino: TcxDateEdit;
    btnVistaPrevia: TcxButton;
    btnVerCompleto: TcxButton;
    pnl2: TPanel;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVistaPreviaClick(Sender: TObject);
    procedure btnVerCompletoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure CargarPersonal(lista: TStringList);
    { Private declarations }
  public
    ListaPersonalStr: TStringList;
    listaPersonal : string;
    { Public declarations }

  end;

var
  FrmReporteConceptoExtraEmpleados: TFrmReporteConceptoExtraEmpleados;

implementation

{$R *.dfm}

procedure TFrmReporteConceptoExtraEmpleados.btnVistaPreviaClick(
  Sender: TObject);
var
   cursor: TCursor;
begin
  if cbbConceptosExtra.EditValue <> Null then
  begin
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      cdConceptosExtraxEmpleado.Close;

      //Crear conjunto de conceptos extra x Empleado, tales datos iran en el reporte que se mostrara en la vista previa
      if not CrearConjunto(cdConceptosExtraxEmpleado, 'nom_detalle_infonavit',ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Infonavit']);

      //Filtrar los empleados que tengan conceptos extra
      if not CargarDatosFiltrados(cdConceptosExtraxEmpleado, 'ClaveConcepto, ListaPersonal, FechaInicio, FechaTermino',
        [cbbConceptosExtra.EditValue, ListaPersonal, ClientModule1.DatetoStrSql(tcxFechaInicio.Date), ClientModule1.DatetoStrSql(tcxFechaTermino.Date)]) then
          raise InteligentException.CreateByCode(6, ['Conceptos extras', '', '-1']);

      if cdConceptosExtraxEmpleado.active then
        cdConceptosExtraxEmpleado.Refresh
      else
        cdConceptosExtraxEmpleado.Open;

      if cdConceptosExtraxEmpleado.RecordCount > 0 then
      begin
        btnVerCompleto.Enabled := True;
        ClientModule1.ImprimeReporte('conceptosExtraXEmpleados.fr3', reporteConceptosExtraXEmpleado);
        //reporteConceptosExtraXEmpleado.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'conceptosExtraXEmpleados.fr3');
        //reporteConceptosExtraXEmpleado.ShowReport();
      end
      else
      begin
        grpVistaPrevia.Clear;
        btnVerCompleto.Enabled := False;
        InteliDialog.ShowModal('No hay Datos', 'No hay Datos en el rango de Fechas Seleccionados', mtInformation, [mbOk], 0);
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  end;
end;

procedure TFrmReporteConceptoExtraEmpleados.CargarPersonal(lista: TStringList);
var
  idx: Integer;
begin
  if lista <> nil then
  begin
    idx := 0;
    ListBoxListaPersonal.Clear;
    while idx <= lista.Count -1 do
    begin
      ListBoxListaPersonal.Items.Add(Lista[idx]);
      inc(idx);
    end;
  end;
end;

procedure TFrmReporteConceptoExtraEmpleados.btnVerCompletoClick(
  Sender: TObject);
var
  NombreReporte: String;
  cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;
    reporteConceptosExtraXEmpleadoCompleto.LoadFromFile(ExtractFilePath(Application.ExeName) + '\Reportes\' + 'conceptosExtraXEmpleados.fr3');
    reporteConceptosExtraXEmpleadoCompleto.ShowReport();
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmReporteConceptoExtraEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmReporteConceptoExtraEmpleados.FormCreate(Sender: TObject);
begin
  //Crear conjunto de conceptos extra que iran en el combo cbbConceptosExtra
  if not CrearConjunto(cdConceptosExtra, 'nom_conceptoextra',ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Catálogo de Conceptos Extras']);

end;

procedure TFrmReporteConceptoExtraEmpleados.FormShow(Sender: TObject);
begin
  //Traer todos los conceptos extra existentes
  if not CargarDatosFiltrados(cdConceptosExtra, 'IdConceptoExtra', [-1]) then
    raise InteligentException.CreateByCode(6, ['Conceptos extras', 'IdConceptoExtra', '-1']);

  if cdConceptosExtra.active then
    cdConceptosExtra.Refresh
  else
    cdConceptosExtra.Open;

  //Poner la fecha actual en los 2 campos e Fecha(Inicio y Termino)
  tcxFechaInicio.Date := Date;
  tcxFechaTermino.Date := Date;

  CargarPersonal(ListaPersonalStr);
end;

end.
