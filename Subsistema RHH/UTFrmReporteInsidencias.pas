unit UTFrmReporteInsidencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, StdCtrls,
  JvExControls, JvLabel, CheckLst, cxButtons, DB, DBClient, UInteliDialog,
  ClientModuleUnit1, frxClass, frxDBSet, dxSkinSilver, cxControls, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TConceptos = class
    id: Integer;
    Titulo: string;
  end;

  TFrmReporteInsidencias = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Btn_Ok: TcxButton;
    cbgFiltro: TCheckListBox;
    rbTodos: TcxRadioButton;
    rbFiltro: TCxRadioButton;
    Btn_Cancelar: TcxButton;
    frxReporte: TfrxReport;
    fdsInsidencias: TfrxDBDataset;
    FDSOrganizacion: TfrxDBDataset;
    procedure rbTodosClick(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    cdDatosEmpresa: TClientDataSet;
    cdReporte: TClientDataSet;
    dsReporte: TDataSource;
    procedure LlenarListaConceptos;
  public
    ListaConceptos: string;
    IdNomina: Integer;
    IdPersonal: Integer;
  end;

var
  FrmReporteInsidencias: TFrmReporteInsidencias;

implementation

{$R *.dfm}

procedure TFrmReporteInsidencias.Btn_CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmReporteInsidencias.Btn_OkClick(Sender: TObject);
var
  Filtro,
  TiempoExtra,
  Infonavit,
  Excepciones,
  Inasistencias: Integer;

  i: Integer;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Screen.Cursor := crAppStart;
  //Llenar con todos los conceptos extras
  ListaConceptos := '';
  For i := 0 to cbgFiltro.Count -1  do
  begin
    if (i > 3) then
    begin
      ListaConceptos := ListaConceptos + VarToStr(TConceptos(cbgFiltro.Items.Objects[i]).id) + ',';
    end;
  end;

  Try
    Try
      // Determinar los parametros
      Filtro := -1;
      TiempoExtra := -1;
      Infonavit := -1;
      Excepciones := -1;
      Inasistencias := -1;

      if Not rbTodos.Checked then
      begin
        // Analizar los datos seleccionados
        Filtro := 9;

        if cbgFiltro.State[0] = cbChecked then
          TiempoExtra := 9;

        if cbgFiltro.State[1] = cbChecked then
          Infonavit := 9;

        if cbgFiltro.State[2] = cbChecked then
          Excepciones := 9;

        if cbgFiltro.State[3] = cbChecked then
          Inasistencias := 9;

        LlenarListaConceptos;
      end;

      cdReporte := TClientDataSet.Create(Self);
      fdsInsidencias.DataSet := cdReporte;

      if Not CrearConjunto(cdReporte, 'nom_nomina_insidencias', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Movimientos de Nómina']);

      if Not CargarDatosFiltrados(cdReporte, 'IdNomina,IdPersonal,Filtro,TiempoExtra,Infonavit,Excepciones,Inasistencia,ListaConceptos', [IdNomina, IdPersonal, Filtro, TiempoExtra, Infonavit, Excepciones, Inasistencias, ListaConceptos]) then
        raise InteligentException.CreateByCode(6, ['Movimientos de Nómina', IdNomina, 'Id. Nómina']);

      cdReporte.Open;

      if cdReporte.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Movimientos de Nómina']);

      // Generar el reporte
      frxReporte.PreviewOptions.Zoom := 125;

      ClientModule1.ImprimeReporte('InsidenciasNomina.fr3', frxReporte);

      //frxReporte.ShowReport(True);
    Finally
      if Assigned(cdReporte) then
      begin
        if cdReporte.ProviderName <> '' then
        begin
          if cdReporte.Active then
            cdReporte.Close;

          EliminarConjunto(cdReporte);
        end;

        cdReporte.Destroy;
      end;
      Screen.Cursor := Cursor;
      Close;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmReporteInsidencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdDatosEmpresa.Active then
    cdDatosEmpresa.Close;
end;

procedure TFrmReporteInsidencias.FormShow(Sender: TObject);
var
  objConceptos: TConceptos;
  cdConceptosExtra: TClientDataSet;
  Cursor: TCursor;
begin
  try

    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    cdConceptosExtra := TClientDataSet.Create(Self);
    cdDatosEmpresa := TClientDataSet.Create(Self);
    try
      if not CrearConjunto(cdConceptosExtra, 'nom_conceptoextra', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos extra']);

      if not CargarDatosFiltrados(cdConceptosExtra, 'idConceptoExtra', [-1]) then
        raise InteligentException.CreateByCode(6, ['IdConceptoExtra', 'Catálogo de Conceptos Extras', '-1']);

      if cdConceptosExtra.Active then
        cdConceptosExtra.Refresh
      else
        cdConceptosExtra.Open;

      if cdConceptosExtra.RecordCount > 0 then
      begin
        cdConceptosExtra.First;
        while Not cdConceptosExtra.Eof do
        begin
          objConceptos := TConceptos.Create;
          objConceptos.id := cdConceptosExtra.FieldByName('idConceptoExtra').AsInteger;
          objConceptos.Titulo := cdConceptosExtra.FieldByName('Titulo').AsString;
          CbgFiltro.Items.AddObject(objConceptos.Titulo, objConceptos);
          cdConceptosExtra.Next;
        end;
      end;

      if not CrearConjunto(cdDatosEmpresa, 'nuc_encabezado_reportes', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Datos empresa']);

      cdDatosEmpresa.Open;
      if cdDatosEmpresa.RecordCount > 0 then
        FDSOrganizacion.DataSet := cdDatosEmpresa;
    finally
      cdConceptosExtra.Destroy;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmReporteInsidencias.LlenarListaConceptos;
var
  i: Integer;
begin
  ListaConceptos := '';
  For i := 0 to cbgFiltro.Count -1  do
  begin
    if (i > 3) and (cbgFiltro.State[i] = cbChecked) then
    begin
      ListaConceptos := ListaConceptos + VarToStr(TConceptos(cbgFiltro.Items.Objects[i]).id) + ',';
    end;
  end;
end;

procedure TFrmReporteInsidencias.rbTodosClick(Sender: TObject);
begin
  rbFiltro.Checked := Not rbTodos.Checked;
  cbgFiltro.Enabled := rbFiltro.Checked;
end;

end.
