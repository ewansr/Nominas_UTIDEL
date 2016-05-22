///////////////////////////////////////////////////////////////////////////////
// Este es un formulario de proceso, el cual utiliza 2 o mas tablas, por     //
// ejemplo, tabla alm_movimiento, la cual contiene partidas en               //
// alm_movimientodetalle, entonces en esta ventana consultamos la primera    //
// luego llamamos a la segunta ventana en la cual asignamos las partidas de  //
// este movimiento. se iran escribiendo paso a paso las lineas, solo para    //
// este proceso y despues se pueden eliminar dichas lineas de comentarios.   //
// Este formulario, es del tipo TFrmCatalogoDoc                              //
///////////////////////////////////////////////////////////////////////////////
unit UTFrmMovimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogoDoc, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvOfficeButtons, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls,UTfrmDetalleDocs, frxClass, frxExportPDF, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, Spin,
  AdvProgressBar, DBCtrls, cxButtons, cxGroupBox;

type
  TFrmMovimientos = class(TFrmCatalogoDoc)
    procedure FormCreate(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
  private
    ModoEdicion: boolean;
  protected
    //funcion que llama al formulario detalle del tipo TFrmDetalleDocs
    // cuidado con las palabras override, si se les pasa les generara error
    function createPopUpDetalle: TFrmDetalleDocs; override;
    //procedimiento inicializar las conexiones
    procedure Inicializar; override;
    { Private declarations }
  public
    PantallaReq: boolean;
    { Public declarations }
  end;

var
  FrmMovimientos: TFrmMovimientos;

implementation

uses
  ClientModuleUnit1,Unit2,UTFrmMovimientosDetalle;
{$R *.dfm}

{ TFrmMovimientos }

procedure TFrmMovimientos.BtnSearchClick(Sender: TObject);

begin
  inherited;
  CargarDatosFiltrados(cdDatos, 'idmovimiento', [-1]);
  cdDatos.Refresh;

end;

function TFrmMovimientos.createPopUpDetalle: TFrmDetalleDocs;
Var
  tForm: TFrmMovimientosDetalle;
begin
  //Aqui se llama al formulario detalle, notese que solo aqui se le asigna
  //el formulario que creamos a partir de TFrmDetalleDocs,
  //en este caso se manda a llamar FrmDetalleMovimientos
  tForm := TFrmMovimientosDetalle.Create(nil);
  // Checar los estados del documento para permitir o no la edición
  tForm.ModoEdicion := ModoEdicion;
  result := tForm;
end;

procedure TFrmMovimientos.FormCreate(Sender: TObject);
begin
{  Documento := 'MOVIMIENTO';
  PantallaReq := false;    }
  inherited;

end;

procedure TFrmMovimientos.Inicializar;
begin
  // Aqui se asigna el nombre de la consulta, el id y el codigo
  keyField := 'idmovimiento';
  entityName := 'alm_movimiento';
  codeField := 'serie';
end;

end.

