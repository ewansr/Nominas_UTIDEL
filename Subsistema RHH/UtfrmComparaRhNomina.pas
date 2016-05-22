unit UtfrmComparaRhNomina;

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
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, DBClient, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, ClientModuleUnit1, cxSplitter, Menus, StdCtrls,
  cxButtons, cxProgressBar, ExtCtrls;

type
  TFrmComparaRhNomina = class(TForm)
    groupBox1: TcxGroupBox;
    groupBox2: TcxGroupBox;
    cxDBGrid1: TcxGrid;
    cxDbGridNominas: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    lbl1: TcxLabel;
    cxGridRepos1: TcxGridViewRepository;
    dsGuardias: TDataSource;
    dsRh: TDataSource;
    dsNomina: TDataSource;
    cdGuardias: TClientDataSet;
    cdRh: TClientDataSet;
    cdNomina: TClientDataSet;
    cxDbGridGuardias: TcxGridDBTableView;
    grdColumDbGridGuardiasColumn1: TcxGridDBColumn;
    grdColumDbGridNominasColumn1: TcxGridDBColumn;
    grdColumDbGridNominasColumn2: TcxGridDBColumn;
    grdColumDbGridNominasColumn3: TcxGridDBColumn;
    grdColumDbGridNominasColumn4: TcxGridDBColumn;
    grdColumDbGridNominasColumn5: TcxGridDBColumn;
    grdColumDbGridNominasColumn6: TcxGridDBColumn;
    cbb1: TcxExtLookupComboBox;
    btn1: TcxButton;
    groupBox3: TcxGroupBox;
    cxDBGrid3: TcxGrid;
    cxDbGridRH: TcxGridDBTableView;
    grdColumDbGridRHColumn1: TcxGridDBColumn;
    grdColumDbGridRHColumn2: TcxGridDBColumn;
    grdColumDbGridRHColumn3: TcxGridDBColumn;
    grdColumDbGridRHColumn4: TcxGridDBColumn;
    CxGridNivel1: TcxGridLevel;
    cxspltr1: TcxSplitter;
    pnl1: TPanel;
    lbl2: TcxLabel;
    style1: TcxStyleRepository;
    cxstylRed: TcxStyle;
    grdColumDbGridRHColumn5: TcxGridDBColumn;
    grdColumDbGridNominasColumn7: TcxGridDBColumn;
    cxstylGreen: TcxStyle;
    cxstylNomal: TcxStyle;
    cxstyl1: TcxStyle;
    procedure copiardataset (CdtOrigen : TClientDataset; CdtDestino: TclientDataset);
    procedure FormCreate(Sender: TObject);
    procedure cbb1PropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxDbGridRHStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cxDbGridNominasStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComparaRhNomina: TFrmComparaRhNomina;

implementation

{$R *.dfm}

procedure TFrmComparaRhNomina.btn1Click(Sender: TObject);
var
  gForma: TForm;
  porcentaje, total, nrec: Integer;
  localizado: Boolean;
  lstPersonal: TStringList;
  ListaPersonal: TListBox;
begin
  lstPersonal := TStringList.Create;
  gForma := TForm.Create(nil);
  gForma.Name := 'frmProcesando';
  gForma.Width := 515;
  gForma.Height := 120;
  gForma.Position := poScreenCenter;
  gForma.FormStyle := fsStayOnTop;
  pnl1.Parent := gForma;
  pnl1.Visible := True;
  pnl1.align := alClient;
  porcentaje := Trunc(100/(cdNomina.RecordCount));
  gForma.show;
  cdNomina.First;

  //analizar los registros de nomina
  while Not cdNomina.Eof do
  begin
    if not cdRh.Locate('codigopersonal', cdNomina.FieldByName('codigopersonal').AsString,[]) then
    begin
      //lstPersonal.Add(cdNomina.FieldByName('CodigoPersonal').AsString + ' - ' + cdNomina.FieldByName('NombreCOmpleto').AsString);
      nrec := cdNomina.RecNo;
      cdNomina.Edit;
      cdNomina.FieldByName('Estado').AsInteger := 1;
      cdNomina.Post;
      cdNomina.RecNo := nrec;
    end
    else
    begin
      nrec := cdNomina.RecNo;
      cdNomina.Edit;
      cdNomina.FieldByName('Estado').AsInteger := 0;
      cdNomina.Post;
      cdNomina.RecNo := nrec;
    end;
    cdNomina.Next;
  end;
  cdRh.First;
  //analizar los registros de Recursos Humanos
  while NOt cdRh.Eof do
  begin
    if not cdNomina.Locate('codigopersonal', cdRh.FieldByName('codigopersonal').AsString,[]) then
    begin
      //lstPersonal.Add(cdNomina.FieldByName('CodigoPersonal').AsString + ' - ' + cdNomina.FieldByName('NombreCOmpleto').AsString);
      nrec := cdRh.RecNo;
      cdRh.Edit;
      cdRh.FieldByName('Estado').AsInteger := 1;
      cdRh.Post;
      cdRh.RecNo := nrec;
    end
    else
    begin
      nrec := cdRh.RecNo;
      cdRh.Edit;
      cdRh.FieldByName('Estado').AsInteger := 0;
      cdRh.Post;
      cdRh.RecNo := nrec;
    end;
    cdRh.Next;
  end;

  gForma.close;
end;

procedure TFrmComparaRhNomina.cbb1PropertiesChange(Sender: TObject);
var
  cdTmpNomina, cdTmpRh: TClientDataset;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    cdTmpNomina := TClientDataSet.Create(nil);
    cdTmpRh := TClientDataSet.Create(nil);
    try
      if not CrearConjunto(cdTmpNomina, 'ext_registrospimss', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nóminas cargadas.']);

      if not CrearConjunto(cdTmpRh, 'ext_registrosrh', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nóminas cargadas.']);

      if not CargarDatosFiltrados(cdTmpNomina, 'IdPeriodoGuardia', [cbb1.EditValue]) then
        raise InteligentException.CreateByCode(5, ['Nóminas cargadas.']);

      if not CargarDatosFiltrados(cdTmpRh, 'IdPeriodoGuardia', [cbb1.EditValue]) then
        raise InteligentException.CreateByCode(5, ['Nóminas cargadas.']);

      if cdTmpNomina.Active then
        cdTmpNomina.Refresh
      else
        cdTmpNomina.Open;

      if cdTmpRh.Active then
        cdTmpRh.Refresh
      else
        cdTmpRh.Open;

      cdNomina.Open;
      cdRh.Open;
      cdNomina.EmptyDataSet;
      cdRh.EmptyDataSet;
      cdTmpNomina.First;
      while not cdTmpNomina.Eof do
      begin
        cdNomina.Append;
        cdNomina.FieldByName('IdPersonalImss').AsInteger := cdTmpNomina.FieldByName('IdPersonalImss').AsInteger ;
        cdNomina.FieldByName('NombreCompleto').AsString := cdTmpNomina.FieldByName('NombreCompleto').AsString ;
        cdNomina.FieldByName('codigoPersonal').AsString := cdTmpNomina.FieldByName('codigoPersonal').AsString;
        cdNomina.FieldByName('tituloDepartamento').asString := cdTmpNomina.FieldByName('tituloDepartamento').asString;
        cdNomina.FieldByName('CodigoPersonal').AsString := cdTmpNomina.FieldByName('CodigoPersonal').AsString;
        cdNomina.FieldByName('FechaMovimiento').AsString := cdTmpNomina.FieldByName('FechaMovimiento').AsString;
        cdNomina.FieldByName('SalarioDiario').AsString := cdTmpNomina.FieldByName('SalarioDiario').AsString;
        cdNomina.FieldByName('SalarioIntegrado').AsString := cdTmpNomina.FieldByName('SalarioIntegrado').AsString;
        cdNomina.FieldByName('Estado').AsInteger := -1;
        cdNomina.Post;
        cdTmpNomina.Next;
      end;
      cdTmpRh.First;
      while not cdTmpRh.Eof do
      begin
        cdRh.Append;
        cdRh.FieldByName('NombreCompleto').AsString := cdTmpRh.FieldByName('NombreCompleto').AsString;
        cdRh.FieldByName('CodigoPersonal').asString := cdTmpRh.FieldByName('CodigoPersonal').AsString;
        cdRh.FieldByName('dFechaSubida').asString := cdTmpRh.FieldByName('dFechaSubida').AsString;
        cdRh.FieldByName('sIdPlataforma').asString := cdTmpRh.FieldByName('sIdPlataforma').AsString;
        cdRh.FieldByName('estado').asInteger := -1;
        cdRh.Post;
        cdTmpRh.Next;
      end;
      //cdNomina.Refresh;
      //cdRh.Refresh;
    finally
      cdTmpNomina.Destroy;
      cdTmpRh.Destroy;
      Screen.Cursor := Cursor;
    end;
  except
  on e: Exception do
    ShowMessage(e.ToString + ' ' + e.ClassName);
  end;
end;

procedure TFrmComparaRhNomina.copiardataset(CdtOrigen,
  CdtDestino: TclientDataset);
var
 i: integer;
 Campo : string;
begin
  try
    for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
    begin
      CdtDestino.FieldDefs.Add(CdtOrigen.FieldDefs.Items[i].Name,
      CdtOrigen.FieldDefs.Items[i].DataType,
      CdtOrigen.FieldDefs.Items[i].Size,
      False);
    end;

    CdtDestino.CreateDataSet;
    CdtDestino.Open;
    CdtDestino.Append;
    for i := 0 to (CdtOrigen.FieldDefs.Count-1) do
    begin
      Campo := CdtOrigen.FieldDefs.Items[i].Name;
      CdtDestino.FieldValues[Campo]:=CdtOrigen.FieldValues[Campo];
    end;
    CdtDestino.Post;
  except
    raise;
  end;
end;
procedure TFrmComparaRhNomina.cxDbGridNominasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.Values[6] = '1' then
    AStyle := cxstylRed;
  if ARecord.Values[6] = '0' then
    AStyle := cxstylGreen;
end;

procedure TFrmComparaRhNomina.cxDbGridRHStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.Values[4] = '1' then
    AStyle := cxstylRed;
  if ARecord.Values[4] = '0' then
    AStyle := cxstylGreen;
end;

procedure TFrmComparaRhNomina.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if not CrearConjunto(cdGuardias, 'ext_nominas', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nóminas cargadas.']);

        cdGuardias.Open;

      cdNomina.FieldDefs.Add('IdPersonalImss', ftInteger, 0, false);
      cdNomina.FieldDefs.Add('NombreCompleto', ftString, 100, false);
      cdNomina.FieldDefs.Add('codigoPersonal', ftString, 100, false);
      cdNomina.FieldDefs.Add('tituloDepartamento', ftString, 50, false);
      cdNomina.FieldDefs.Add('FechaMovimiento', ftDate, 0, false);
      cdNomina.FieldDefs.Add('SalarioDiario', ftFloat, 0, false);
      cdNomina.FieldDefs.Add('SalarioIntegrado', ftFloat, 0, false);
      cdNomina.FieldDefs.Add('Estado', ftInteger, 0, false);
      cdNomina.CreateDataSet;
      cdNomina.Open;

      cdRh.FieldDefs.Add('NombreCompleto', ftString, 100, false);
      cdRh.FieldDefs.Add('codigoPersonal', ftString, 100, false);
      cdRh.FieldDefs.Add('dFechaSubida', ftDate, 0, false);
      cdRh.FieldDefs.Add('sidPlataforma', ftString, 50, false);
      cdRh.FieldDefs.Add('Estado', ftInteger, 0, false);
      cdRh.CreateDataSet;
      cdRh.Open;

    finally
      Screen.Cursor := Cursor;
    end;
  except

  end;
end;

end.
