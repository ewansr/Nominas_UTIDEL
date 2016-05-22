unit UTFrmHorarios;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB,
  cxDBData, cxLabel, Menus, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxSkinsdxBarPainter, DBClient, dxSkinsForm, dxBar,
  dxRibbon, cxClasses, StdCtrls, cxButtons, cxMaskEdit, cxSpinEdit, cxTimeEdit,
  cxDBEdit, cxTextEdit, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, UInteliDialog,
  ClientModuleUnit1, cxGridExportLink, shellApi, cxCheckBox;

type
  TFrmHorarios = class(TForm)
    CxPageOpciones : TcxPageControl;
    cxPageHorario  :    TcxTabSheet;
    CxGridHorarios :        TcxGrid;
    CxDbGridHorarios :   TcxGridDBTableView;
    CxColumnTituloHorario : TcxGridDBColumn;
    CxColumnHoraInicio    : TcxGridDBColumn;
    CxColumnHoraTermino   : TcxGridDBColumn;
    cxLevelHorarios       :    TcxGridLevel;
    pnlHorarios           :          TPanel;
    CxDbTextTituloHorario :   TcxDBTextEdit;
    CxDbTimeInicio        :   TcxDBTimeEdit;
    CxDbTimeTermino       :   TcxDBTimeEdit;
    cxLabel8  : TcxLabel;
    cxLabel9  : TcxLabel;
    cxLabel10 : TcxLabel;
    cxbtnGuardarH  : TcxButton;
    cxbtnCancelarH : TcxButton;
    dxbrmngr1  : TdxBarManager;
    dxbrmngr1Bar2 :     TdxBar;
    btn_Editar  : TdxBarLargeButton;
    btn_agregar : TdxBarLargeButton;
    btn_Quitar  : TdxBarLargeButton;
    btn_refresh : TdxBarLargeButton;
    btn_imprimir: TdxBarLargeButton;
    dxBtnCerrar : TdxBarLargeButton;
    dxBtnCortesHorarios: TdxBarLargeButton;
    dxBtnAdd    : TdxBarLargeButton;
    dxBtnEdit   : TdxBarLargeButton;
    dxBtnDelete : TdxBarLargeButton;
    dxBtnRefresh: TdxBarLargeButton;
    dxBtnPrint  : TdxBarLargeButton;
    dxBtnclose  : TdxBarLargeButton;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxstyl1    : TcxStyle;
    cxstylFont : TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo : TcxStyle;
    dlgSave1   :    TSaveDialog;
    dxPopupMenu: TdxRibbonPopupMenu;
    dxskncntrlr1: TdxSkinController;
    cdHorarios    :  TClientDataSet;
    cdHorariosUpt :  TClientDataSet;
    dsHorarios    :     TDataSource;
    dsHorariosUpt :     TDataSource;
    CxColumnAplica: TcxGridDBColumn;
    lbl1: TcxLabel;
    edtTolerancia          :   TcxDBTimeEdit;
    tcxColumnHoraTolerancia: TcxGridDBColumn;
    checkLunes: TcxDBCheckBox;
    checkMartes: TcxDBCheckBox;
    checkMiercoles: TcxDBCheckBox;
    checkJueves: TcxDBCheckBox;
    checkViernes: TcxDBCheckBox;
    checkSabado: TcxDBCheckBox;
    checkDomingo: TcxDBCheckBox;
    lbl2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBtnAddClick(Sender: TObject);
    procedure dxBtnEditClick(Sender: TObject);
    procedure cxbtnGuardarHClick(Sender: TObject);
    procedure dxBtnRefreshClick(Sender: TObject);
    procedure dxBtnPrintClick(Sender: TObject);
    procedure dxBtncloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBtnDeleteClick(Sender: TObject);
  private
    frmEmergente :   TForm;
    CampoStr     :  String;
    ValorEvaluar : Integer;
    accion       :  string;
    { Private declarations }
  public
    IdTipoNomina  : Integer;
    IdCargo       : Integer;
    IdPersonalImss: Integer;
    { Public declarations }
  end;

var
  FrmHorarios: TFrmHorarios;

implementation

{$R *.dfm}

procedure TFrmHorarios.cxbtnGuardarHClick(Sender: TObject);
begin
  try
    if Length(trim(CxDbTextTituloHorario.Text)) = 0 then
      raise InteligentException.CreateByCode(18, ['Titulo']);

    if (Length(trim(CxDbTimeInicio.Text)) = 0) or (CxDbTimeInicio.Text = '00:00:00') then
      raise InteligentException.CreateByCode(18, ['Horario de Inicio']);

    if (Length(trim(CxDbTimeTermino.Text)) = 0) or (CxDbTimeTermino.Text = '00:00:00') then
      raise InteligentException.CreateByCode(18, ['Horario de Término']);

    if (Length(Trim(edtTolerancia.Text)) = 0) or (edtTolerancia.Text = '00:00:00') then
      raise InteligentException.CreateByCode(18, ['Horario de Tolerancia']);

    if (cdHorariosUpt.Active) and  (cdHorariosUpt.State in [dsEdit, dsInsert]) then
    begin
      cdHorariosUpt.Post;
      cdHorariosupt.ApplyUpdates(-1);
      dxBtnRefreshClick(Nil);

      if accion = 'Editar' then
        FrmEmergente.Close;
    end;
  except
    on e: InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmHorarios.dxBtnAddClick(Sender: TObject);
begin
  try
    try
      if Assigned(frmEmergente) then
        FrmEmergente.Destroy;

      cdHorariosUpt.close;

      FrmEmergente := TForm.Create(self);
      FrmEmergente.Caption := 'Nueva captura de corte horario';
      FrmEmergente.Position    := poScreenCenter;
      FrmEmergente.BorderStyle :=       bsDialog;
      FrmEmergente.Width  := 490;
      FrmEmergente.height := 310;
      pnlHorarios.Parent  := FrmEmergente;
      pnlHorarios.Align   :=     AlClient;
      pnlHorarios.Visible :=         true;

      if not CargarDatosFiltrados(cdHorariosUpt, 'IdHorario', [-9]) then
        raise InteligentException.CreateByCode(6, ['nom_tablahorarios', '-9', 'IdHorario']);

      if cdHorariosUpt.Active then
        cdHorariosUpt.Refresh
      else
        cdHorariosUpt.Open;

      cdHorariosUpt.Append;
      accion := 'Insertar';
      cdHorariosUpt.FieldByName('IdHorario').AsInteger   :=       0;
      cdHorariosUpt.FieldByName(CampoStr).AsInteger := ValorEvaluar;

      //Poner por default que aplique el horario de Lunes a Viernes
      cdHorariosUpt.FieldByName('Lunes').AsString     :=  'True';
      cdHorariosUpt.FieldByName('Martes').AsString    :=  'True';
      cdHorariosUpt.FieldByName('Miercoles').AsString :=  'True';
      cdHorariosUpt.FieldByName('Jueves').AsString    :=  'True';
      cdHorariosUpt.FieldByName('Viernes').AsString   :=  'True';
      cdHorariosUpt.FieldByName('Sabado').AsString    := 'False';
      cdHorariosUpt.FieldByName('Domingo').AsString   := 'False';

      FrmEmergente.ShowModal;
    finally
      if pnlHorarios.Parent <> self then
      begin
        pnlHorarios.Align   := AlNone;
        pnlHorarios.Visible :=  False;
        pnlHorarios.Parent  :=   Self;
      end;

      if cdHorariosUpt.State in [dsInsert, dsEdit] then
        cdHorarios.Cancel;
    end;
  except
    on e: InteligentException do
    begin
      if cdHorariosUpt.State in [dsInsert, dsEdit] then
        cdHorarios.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmHorarios.dxBtncloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmHorarios.dxBtnDeleteClick(Sender: TObject);
Var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if InteliDialog.ShowModal('Confirmación', '¿Está seguro que desea eliminar el Periodo laboral [' + cdHorarios.FieldByName('Titulo').AsString + ']?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if not CargarDatosFiltrados(CdHorariosUpt, 'IdHorario', [cdHorarios.FieldByName('IdHorario').AsString]) then
          raise InteligentException.CreateByCode(6, ['nom_tablahorarios', cdHorarios.FieldByName('IdHorario').AsString, 'IdHorario']);

        if cdHorariosUpt.Active then
          cdHorariosUpt.Refresh
        else
          cdHorariosUpt.Open;

        cdHorariosUpt.Delete;
        cdHorariosUpt.ApplyUpdates(-1);
        dxBtnRefreshClick(nil)
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmHorarios.dxBtnEditClick(Sender: TObject);
begin
  try
    try
      if cdHorarios.Active and (cdHorarios.RecordCount = 0) then
        raise InteligentException.CreateByCode(24, ['Sin registros Horarios para editar.']);

      if Assigned(frmEmergente) then
        FrmEmergente.Destroy;

      cdHorariosUpt.Close;

      FrmEmergente := TForm.Create(self);
      FrmEmergente.Caption := 'Nueva captura de corte horario';
      FrmEmergente.Position := poScreenCenter;
      FrmEmergente.BorderStyle :=    bsDialog;
      FrmEmergente.Width  := 490;
      FrmEmergente.height := 310;
      pnlHorarios.Parent := FrmEmergente;
      pnlHorarios.Align  :=     AlClient;
      pnlHorarios.Visible :=        true;

      if not CargarDatosFiltrados(cdHorariosUpt, 'IdHorario', [cdHorarios.FieldByName('IdHorario').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['nom_tablahorarios', '-9', 'IdHorario']);

      if cdHorariosUpt.Active then
        cdHorariosUpt.Refresh
      else
        cdHorariosUpt.Open;

      cdHorariosUpt.Edit;
      accion := 'Editar';

      FrmEmergente.ShowModal;
    finally
      if pnlHorarios.Parent <> self then
      begin
        pnlHorarios.Align   := AlNone;
        pnlHorarios.Visible :=  False;
        pnlHorarios.Parent  :=   Self;
      end;

      if cdHorariosUpt.State in [dsInsert, dsEdit] then
        cdHorarios.Cancel;
    end;
  except
    on e: InteligentException do
    begin
      if cdHorariosUpt.State in [dsInsert, dsEdit] then
        cdHorarios.Cancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;
  end;
end;

procedure TFrmHorarios.dxBtnPrintClick(Sender: TObject);
var
  rutaArchivo: string;
begin
  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
    rutaArchivo := dlgSave1.FileName + '.xls';
    ExportGridToExcel(rutaArchivo, cxGridHorarios);

    if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TFrmHorarios.dxBtnRefreshClick(Sender: TObject);
var
  cursor: TCursor;
begin
  try
    Cursor := Screen.cursor;
    Screen.Cursor := crAppStart;

    if cdHorarios.Active then
      cdHorarios.Refresh
    else
      cdHorarios.Open;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TFrmHorarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CdHorarios.ProviderName <> '' then
    Eliminarconjunto(cdHorarios);

  if cdHorariosUpt.ProviderName = '' then
    EliminarConjunto(cdHorariosUpt);

  Action := Cafree;
end;

procedure TFrmHorarios.FormCreate(Sender: TObject);
var
  Cursor: tCursor;
begin
  IdPersonalImss := -9;
  IdCargo        := -9;
  IdTipoNOmina   := -9;

  if not CrearConjunto(cdHorarios, 'nom_tablahorarios', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['nom_tablahorarios']);

  if not CrearConjunto(cdHorariosUpt, 'nom_tablahorarios', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nom_tablahorarios']);
end;

procedure TFrmHorarios.FormShow(Sender: TObject);
var
  Cursor: tCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if IdPersonalImss <> -9 then
      begin
        CampoStr := 'IdPersonalImss';
        ValorEvaluar := IdPersonalImss;
      end;

      if IdCargo <> -9 then
      begin
        CampoStr := 'IdCargo';
        valorEvaluar := IdCargo;
      end;

      if IdTipoNomina <> -9 then
      begin
        CampoStr := 'IdTipoNomina';
        ValorEvaluar := IdTipoNomina;
      end;

      if not CargarDatosFiltrados(cdHorarios, CampoStr, [ValorEvaluar]) then
        raise InteligentException.CreateByCode(6, ['nom_tablahorarios', IntToStr(ValorEvaluar), CampoStr]);

      if cdHorarios.Active then
        cdHorarios.Refresh
      else
        cdHorarios.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

end.
