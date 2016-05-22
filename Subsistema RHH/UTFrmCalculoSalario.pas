unit UTFrmCalculoSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxLabel,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxPC, DB, DBClient, rhh_genericclasses,
  ClientModuleUnit1, UInteliDialog, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxBarBuiltInMenu, DateUtils,
  cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxRichEdit;

type
  TFrmCalculoSalario = class(TForm)
    CdOrganizacion: TClientDataSet;
    CdSalMinDf: TClientDataSet;
    CdTipoNomina: TClientDataSet;
    CdDeducciones: TClientDataSet;
    CdPercepciones: TClientDataSet;
    cxPageCalculoAutomatico: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    CxLCbbOrganizacion: TcxLookupComboBox;
    CxLCbbTipoNomina: TcxLookupComboBox;
    CxTextEdtSalMinDF: TcxTextEdit;
    CxTextEdtFactorPrimaDom: TcxTextEdit;
    CxTextEdtFactorPrimaVacacional: TcxTextEdit;
    CxTextEdtSalMinGenZona: TcxTextEdit;
    CxTextEdtSeguroVidaInfonavit: TcxTextEdit;
    CxTextEdtDiasExcentoPrimaVac: TcxTextEdit;
    CxTextEdtDiasExcentoAguinaldo: TcxTextEdit;
    CxTextEdtDiasTrabajados: TcxTextEdit;
    CxTextEdtDiaSDescanso: TcxTextEdit;
    CxTextEdtFestivos: TcxTextEdit;
    CxTextEdtDomingos: TcxTextEdit;
    CxTextEdtInicioSemana: TcxTextEdit;
    CxTextEdtPeriodicidad: TcxTextEdit;
    CxBtnCalcularSalario: TcxButton;
    CxTextEdtNeto: TcxTextEdit;
    CxLbl2: TcxLabel;
    CxLbl1: TcxLabel;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CxLbl6: TcxLabel;
    CxLbl7: TcxLabel;
    CxLbl8: TcxLabel;
    CxLbl9: TcxLabel;
    CxLbl10: TcxLabel;
    CxLbl11: TcxLabel;
    CxLbl12: TcxLabel;
    CxLbl13: TcxLabel;
    CxLbl14: TcxLabel;
    CxLbl15: TcxLabel;
    CxLbl16: TcxLabel;
    CdGrupoSalario: TClientDataSet;
    dsTipoNomina: TDataSource;
    dsOrganizacion: TDataSource;
    CdSalario: TClientDataSet;
    dsPercepciones: TDataSource;
    dsDeducciones: TDataSource;
    cxRichEditCalculos: TcxRichEdit;
    cxLabel1: TcxLabel;
    CxTextJornada: TcxTextEdit;
    cxLabel2: TcxLabel;
    CxTextAntiguedad: TcxTextEdit;
    procedure CxBtnCalcularSalarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxLCbbOrganizacionPropertiesChange(Sender: TObject);
    procedure CxLCbbTipoNominaPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    esCalculoAsimilado: Boolean;
    { Public declarations }
  end;

var
  FrmCalculoSalario: TFrmCalculoSalario;

implementation

{$R *.dfm}
Uses
  UtFrmfrmConceptoExtraEmpleado;

procedure TFrmCalculoSalario.CxBtnCalcularSalarioClick(Sender: TObject);
var
  Salario, SDI, Aguinaldo, Vacaciones, PrimaDominical: Real;
  DiasT: Integer;
  MensajeDlg: String;
begin
  try
    if cxLCbbTipoNomina.EditValue = null then
    begin
      raise InteligentException.CreateByCode(18, ['Tipo Nómina']);
    end;

    if cxLcbbOrganizacion.EditValue = null then
      raise InteligentException.CreatebyCode(18, ['Organización']);

    if Length(Trim(CxTextEdtNeto.Text)) = 0 then
    Begin
      if CxTextEdtNeto.CanFocus then
        CxTextEdtNeto.SetFocus;
      raise InteligentException.CreateByCode(18, ['Neto']);
    end;

    if Length(Trim(CxTextEdtFestivos.Text)) = 0 then
    Begin
      if CxTextEdtFestivos.CanFocus then
        CxTextEdtFestivos.SetFocus;
      raise InteligentException.CreateByCode(18, ['Dias Festivos']);
    end;

    if Length(Trim(CxTextEdtDomingos.Text)) = 0 then
    Begin
      if CxTextEdtDomingos.CanFocus then
        CxTextEdtDomingos.SetFocus;
      raise InteligentException.CreateByCode(18, ['Domingos']);
    end;

    if (dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0) and (dsTipoNomina.DataSet.FieldByName('SalarioMultiple').AsString = 'Si') then
    begin
//      if (CargarDatosFiltrados(cdSalario, 'IdTipoNomina,SortGrupoSalario,AnioAplicacion', [dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger, 'Si', YearOf(Now))) then
//
//
//      if Not CargarDatosFiltrados(cdGrupoSalario, 'IdGrupoSalario', [CdSalario.FieldByName('IdGrupoSalario').AsInteger]) then
//        raise InteligentException.CreateByCode(5, ['Grupos de Salario']);
//
//      if cdGrupoSalario.Active then
//        cdGrupoSalario.Refresh
//      else
//        cdGrupoSalario.Open;
    end;
    try
      if esCalculoAsimilado then
      begin
        DiasT := 15;
        MensajeDlg := 'Se obtuvo [$ ' + FloatToStr(Salario*DiasT) + '] para alcanzar un neto de $ ' + (CxTextEdtNeto.Text)
      end
      else
      begin
        DiasT := CdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
        MensajeDlg := 'Se obtuvo un salario diario de [$ ' + FloatToStr(Salario) + '] para el neto de $ ' + (CxTextEdtNeto.Text);
      end;


        GenerarCalculoVirtual(Self,
          StrToFloat(CxTextEdtNeto.Text), cdOrganizacion.FieldByName('IdOrganizacion').AsInteger,
          cdOrganizacion.FieldByName('FactorPrimaDominical').AsFloat, cdOrganizacion.FieldByName('FactorPrimaVacacional').AsFloat,
          cdSalMinDF.FieldByName('Salario').AsFloat, cdOrganizacion.FieldByName('SalMinGenZona').AsFloat, cdOrganizacion.FieldByName('SeguroVidaInfonavit').AsFloat,
          cdOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsInteger, cdOrganizacion.FieldByName('DiasExcentoAguinaldo').AsInteger, cdOrganizacion.FieldByName('NSMTopeIntImss').AsInteger,
          CdTipoNomina.FieldByName('IdTipoNomina').AsInteger, DiasT, CdTipoNomina.FieldByName('DiasDescanso').AsInteger,
          StrToInt(CxTextEdtFestivos.Text), cdGrupoSalario.FieldByName('Domingos').AsInteger, StrToInt(cxTextJornada.Text),cdTipoNomina.FieldByName('InicioSemana').AsString, cdTipoNomina.FieldByName('IdTipoTablaISPT').AsInteger,
          CdTipoNomina.FieldByName('Periodicidad').AsFloat, -1, -1, Now, Now, strToInt(cxTextAntiguedad.Text) ,cdPercepciones, cdDeducciones, Salario, SDI, Aguinaldo,
          Vacaciones, PrimaDominical, False);

      if esCalculoAsimilado then
      begin
        DiasT := 15;
        MensajeDlg := 'Se obtuvo un [$ ' + FloatToStr(Salario*DiasT) + '] para alcanzar un neto de $ ' + (CxTextEdtNeto.Text)
      end
      else
      begin
        DiasT := CdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
        MensajeDlg := 'Se obtuvo un salario diario de [$ ' + FloatToStr(Salario) + ']  y Salario Integrado de [$' + FloatToStr(SDI) + '] para el neto de $ ' + (CxTextEdtNeto.Text);
      end;

      InteliDialog.ShowModal('Aviso', MensajeDlg, mtInformation, [mbOK],0);

      if (esCalculoAsimilado) and Assigned(frmConceptoExtraEmpleado) then
      begin
        frmConceptoExtraEmpleado.cxDbTextCantidad.Text := FloatToStr(Salario*DiasT);
        frmCOnceptoExtraEmpleado.cdUptConExtXEmp.FieldByName('Cantidad').AsFloat := Salario*DiasT;
      end;

      CdPercepciones.First;
      cxRichEditCalculos.Lines.Clear;
      cxRichEditCalculos.Lines.Add('**********PERCEPCIONES**********');

      while not CdPercepciones.Eof do
      begin
        if CdPercepciones.FieldByName('MODO').AsString = 'PERCEPCION' then
          cxRichEditCalculos.Lines.Add(CdPercepciones.FieldByName('Titulo').AsString + ' := ' + CdPercepciones.FieldByName('Importe').AsString)
        else
          cxRichEditCalculos.Lines.Add('(*) ' + CdPercepciones.FieldByName('Titulo').AsString + ' := ' + CdPercepciones.FieldByName('Importe').AsString);
        CdPercepciones.Next;
      end;

      cdDeducciones.First;
      //cxMemoDeducciones.Lines.Clear;
      cxRichEditCalculos.Lines.Add(' ');
      cxRichEditCalculos.Lines.Add('**********DEDUCCIONES**********');
      while not CdDeducciones.Eof do
      begin
        if CdDeducciones.FieldByName('MODO').AsString = 'DEDUCCION' then
          cxRichEditCalculos.Lines.Add(CdDeducciones.FieldByName('Titulo').AsString + ' := ' + CdDeducciones.FieldByName('Importe').AsString)
        else
          cxRichEditCalculos.Lines.Add('(*) ' + CdDeducciones.FieldByName('Titulo').AsString + ' := ' + CdDeducciones.FieldByName('Importe').AsString);
        CdDeducciones.Next;
      end;

    finally

      gcForma.Destroy;
      gcForma := Nil;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCalculoSalario.CxLCbbOrganizacionPropertiesChange(
  Sender: TObject);
begin
  try

    if   CdOrganizacion.Locate('IdOrganizacion', CxLCbbOrganizacion.EditValue, []) then
    begin
      CxTextEdtFactorPrimaDom.Text := CdOrganizacion.FieldByName('FactorPrimaDominical').AsString;
      CxTextEdtFactorPrimaVacacional.Text := cdOrganizacion.FieldByName('FactorPrimaVacacional').AsString;
      CxTextEdtSalMinGenZona.Text := CdOrganizacion.FieldByName('SalMinGenZona').AsString;
      CxTextEdtSeguroVidaInfonavit.Text := CdOrganizacion.FieldByName('SeguroVidaInfonavit').AsString;
      CxTextEdtDiasExcentoPrimaVac.Text := cdOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsString;
      CxTextEdtDiasExcentoAguinaldo.Text := CdOrganizacion.FieldByName('DiasExcentoAguinaldo').AsString;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmCalculoSalario.CxLCbbTipoNominaPropertiesChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    screen.Cursor := CrAppStart;
    try
      try
        CdTipoNomina.Locate('idTipoNomina', CxLCbbTipoNomina.EditValue, []);
      except
        ;
      end;
      cxTextEdtDiasTrabajados.Text := CdTipoNomina.FieldByName('DiasTrabajados').asString;
      cxTextEdtDiasDescanso.TExt := CdTipoNomina.FieldByName('DiasDescanso').asString;
      cxTextEdtInicioSemana.Text := cdTipoNomina.FieldbyName('InicioSemana').AsString;
      cxTextEdtPeriodicidad.Text := cdTipoNomina.FieldByName('Periodicidad').asString;
    finally
      screen.Cursor := Cursor
    end;
  Except
    on e: InteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);

    on e: Exception do
      Intelidialog.ShowModal('Aviso', 'Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error : ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCalculoSalario.FormCreate(Sender: TObject);
begin
  if (CdOrganizacion.ProviderName = '')  and (not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog)) then
    raise InteligentException.CreateByCode(5, ['nuc_organizacion']);

  if (CdGrupoSalario.ProviderName = '') and (Not CrearConjunto(cdGrupoSalario, 'nom_gruposalario', ccCatalog)) then
    raise InteligentException.CreateByCode(5, ['Grupos de Salario']);

  if (CdTipoNomina.ProviderName = '') and (Not CrearConjunto(CdTipoNomina, 'nom_tiponomina', ccCatalog)) then
    raise InteligentException.CreateByCode(5, ['Nom_tipoNomina']);

  if (cdSalMinDF.ProviderName = '') and (Not CrearConjunto(cdSalMinDF, 'rhu_salario', ccCatalog)) then
    raise InteligentException.CreateByCode(5, ['Salarios']);

  if (cdSalario.ProviderName = '') and (not CrearConjunto(cdSalario, 'rhu_salario', ccCatalog)) then
    raise InteligentConnection.CreateByCode(5, ['Salarios']);

  esCalculoAsimilado := False;

  cxRichEditCalculos.Text := 'Aquí se mostrará el detallado de los cálculos.';
end;

procedure TFrmCalculoSalario.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if Not CargarDatosFiltrados(cdSalMinDF, 'FechaAplicacion,TipoSalario', [ClientModule1.DatetoStrSql(Now), 'SMVDF']) then
        raise InteligentException.CreateByCode(6, ['Salarios', 'Tipo Salario', 'SMVDF']);

      if cdSalMinDF.Active then
        cdSalMinDF.Refresh
      else
        cdSalMinDF.Open;

      if cdSalMinDF.RecordCount <> 1 then
        raise InteligentException.CreateByCode(22, ['Salario Mínimo del D.F.']);

      if not CargarDatosFiltrados(CdTipoNomina, 'idTipoNomina', [-1]) then
        raise InteligentException.CreateByCode(6, ['Tipo Nómina', 'idTipoNomina', '-1']);

      if CdTipoNomina.Active then
        CdTipoNomina.Refresh
      else
        CdTipoNomina.Open;

      if (esCalculoAsimilado) and (CdTipoNomina.RecordCount > 0) and (CdTipoNomina.FieldByName('TipoCalculo').AsString = 'ASIMILADOS') then
      begin
        try
          CdTipoNomina.Filtered := False;
          CdTipoNomina.Filter := 'TipoCalculo = ' + QuotedStr('ASIMILADOS');
          CdTipoNomina.Filtered := True;
        except
          CdTipoNomina.Filtered := False;
        end;
      end;

      if not CargarDatosFiltrados(CdOrganizacion, 'padre2', [-5]) then
        raise InteligentException.CreateByCode(6, ['Nuc_organizacion', 'Padre2', '-5']);

      if CdOrganizacion.Active then
        CdOrganizacion.Refresh
      else
        CdOrganizacion.Open;

      CdGrupoSalario.Open;
      CxTextEdtSalMinDF.Text := CdSalMinDf.FieldByName('Salario').AsString;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;
end.
