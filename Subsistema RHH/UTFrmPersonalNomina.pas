unit UTFrmPersonalNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, DB, NxColumns, NxDBColumns, ClientModuleUnit1,
  URegistro, NxColumnClasses, NxGrid, Menus, Buttons, DBClient, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZStoredProcedure, Grids, DBGrids,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsdxBarPainter, dxBar, dxRibbon, ImgList, DBCtrls, cxContainer, cxLabel,
  cxGroupBox, dxStatusBar, dxSkinsdxStatusBarPainter, cxButtons,
  dxGDIPlusClasses, cxImage, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmPersonalNomina = class(TForm)
    GroupBox2: TcxGroupBox;
    Panel1: TcxGroupBox;
    Panel2: TcxGroupBox;
    dsPersonalIncluido: TDataSource;
    Panel3: TcxGroupBox;
    Splitter1: TSplitter;
    Button1: TcxButton;
    Btn_Agregar: TcxButton;
    Btn_Quitar: TcxButton;
    Button4: TcxButton;
    PopupMenu1: TPopupMenu;
    ConsultarNminasdondeaparece1: TMenuItem;
    ConsultarFichadePersonal1: TMenuItem;
    N1: TMenuItem;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    StatusBar1: TDXStatusBar;
    cdNominaP: TClientDataSet;
    Btn_SeleccionarNomina: TcxButton;
    MemHExtras: TClientDataSet;
    MemHExtrasIdPersonal: TIntegerField;
    MemHExtrasPuesto: TStringField;
    MemHExtrasCodigoPersonal: TStringField;
    MemHExtrasNombre: TStringField;
    MemHExtrasDetalle: TClientDataSet;
    IntegerField1: TIntegerField;
    MemHExtrasDetalleIdPersonal_TE: TIntegerField;
    MemHExtrasDetalleFecha: TDateField;
    MemHExtrasDetalleHoras: TFloatField;
    DataSource1: TDataSource;
    cdDisponibles: TClientDataSet;
    cdSeleccionados: TClientDataSet;
    cdDisponiblesIdPersonal: TIntegerField;
    cdDisponiblesNombreCompleto: TStringField;
    cdDisponiblesRegPatIMSS: TStringField;
    cdDisponiblesNumIMSS: TStringField;
    cdDisponiblesDepartamento: TStringField;
    cdDisponiblesPuesto: TStringField;
    cdDisponiblesEstado: TStringField;
    cdDisponiblesCodigoPersonal: TStringField;
    dsDisponibles: TDataSource;
    cdSeleccionadosIdPersonal: TIntegerField;
    cdSeleccionadosCodigoPersonal: TStringField;
    cdSeleccionadosNombreCompleto: TStringField;
    cdSeleccionadosRegPatIMSS: TStringField;
    cdSeleccionadosNumIMSS: TStringField;
    cdSeleccionadosDepartamento: TStringField;
    cdSeleccionadosPuesto: TStringField;
    cdSeleccionadosEstado: TStringField;
    dsSeleccionados: TDataSource;
    cxGridDbSeleccionados: TcxGridDBTableView;
    cxGridSeleccionadosLevel1: TcxGridLevel;
    cxGridSeleccionados: TcxGrid;
    cdDisponiblesIdOrganizacion: TIntegerField;
    cdDisponiblesIdDepartamento: TIntegerField;
    cdSeleccionadosIdOrganizacion: TIntegerField;
    cdSeleccionadosIdDepartamento: TIntegerField;
    cdDisponiblesNombreOrganizacion: TStringField;
    cdSeleccionadosNombreOrganizacion: TStringField;
    cxGridDbSeleccionadosIdPersonal1: TcxGridDBColumn;
    cxGridDbSeleccionadosCodigoPersonal1: TcxGridDBColumn;
    cxGridDbSeleccionadosNombreCompleto1: TcxGridDBColumn;
    cxGridDbSeleccionadosRegPatIMSS1: TcxGridDBColumn;
    cxGridDbSeleccionadosNumIMSS1: TcxGridDBColumn;
    cxGridDbSeleccionadosDepartamento1: TcxGridDBColumn;
    cxGridDbSeleccionadosPuesto1: TcxGridDBColumn;
    cxGridDbSeleccionadosEstado1: TcxGridDBColumn;
    cxGridDbSeleccionadosColumn1: TcxGridDBColumn;
    cxGridDetalle: TcxGrid;
    cxGridDbDetalle: TcxGridDBTableView;
    cxGridDbDetalleIdOrganizacion1: TcxGridDBColumn;
    cxGridDbDetalleNombreOrganizacion1: TcxGridDBColumn;
    cxGridDbDetalleIdDepartamento1: TcxGridDBColumn;
    cxGridDbDetalleIdPersonal1: TcxGridDBColumn;
    cxGridDbDetalleCodigoPersonal1: TcxGridDBColumn;
    cxGridDbDetalleNombreCompleto1: TcxGridDBColumn;
    cxGridDbDetalleRegPatIMSS1: TcxGridDBColumn;
    cxGridDbDetalleNumIMSS1: TcxGridDBColumn;
    cxGridDbDetalleDepartamento1: TcxGridDBColumn;
    cxGridDbDetallePuesto1: TcxGridDBColumn;
    cxGridDbDetalleEstado1: TcxGridDBColumn;
    cxGridDetalleLevel1: TcxGridLevel;
    dxbrmngr1: TdxBarManager;
    dxrbnpmn1: TdxRibbonPopupMenu;
    btn1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    style1: TcxStyleRepository;
    cxstyleItalicGray: TcxStyle;
    cxstyleNormalRed: TcxStyle;
    cxstylBoldBlack: TcxStyle;
    cxImageRes1: TcxImageList;
    GroupBox1: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    LblNomina: TcxLabel;
    cxLabel2: TcxLabel;
    lblInicio: TcxLabel;
    cxLabel4: TcxLabel;
    LblTermino: TcxLabel;
    cxLabel6: TcxLabel;
    strngfldSeleccionadosEspecial: TStringField;
    strngfldDisponiblesEspecial: TStringField;
    CxColumnEspecial: TcxGridDBColumn;
    CxColumnEspecial2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylPersonalEspecial: TcxStyle;
    cxstylPersonalEspecialPagado: TcxStyle;
    cxStyleReposEstilosGrid: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxstylFont: TcxStyle;
    cxstylFontContent: TcxStyle;
    cxstylSexo: TcxStyle;
    intgrfldDisponiblesPagado: TIntegerField;
    intgrfldSeleccionadospagado: TIntegerField;
    CxColumnPagado: TcxGridDBColumn;
    cxstylPagado: TcxStyle;
    cxLabel11: TcxLabel;
    cxLabel10: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_SeleccionarNominaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGridDbDetalleCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDbDetalleStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGridDbSeleccionadosStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxGridDbDetalleNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDbSeleccionadosNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxGridDbSeleccionadosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure LlamarVentana(Datos: Tclientdataset);
    procedure RevisarHExtras(Datos: Tclientdataset; Grid: Tnextgrid);
    procedure LlenarMemoryDetalles(Datos: Tclientdataset);
    procedure GuardarHorasExtras(Original,Personales, Detalle: Tclientdataset);
    procedure ProcedimientoGuardarExtras(Original, Personales,
      Detalle: Tclientdataset);
  public
    IdTipoNomina: Integer;
    IdNomina: Integer;
    DsExtras: TDataSource;
    Fechai,FechaF:TDate;
  end;

var
  FrmPersonalNomina: TFrmPersonalNomina;

implementation

uses UInteliDialog,UTFrmAsignarHorasExtras;

{$R *.dfm}

procedure TFrmPersonalNomina.BitBtn1Click(Sender: TObject);
var
  cdModificar, cdDetalle, PersonalPermitido: TClientDataSet;
  Cursor: TCursor;
  i: Integer;
  ListaSel, listNuevo: String;
  HayPagados: Boolean;
  CuentaPagados: Integer;
begin
  StatusBar1.Panels.Items[0].Text := 'Cargando información de personal...';
  StatusBar1.Repaint;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      CuentaPagados := 0;
      hayPagados := False;
      //en caso contrario sigue su comportamiento normal para el proceso de nominas
      StatusBar1.Panels.Items[0].Text := 'Cargando información de Nómina... [nom_nominapersonal]';
      StatusBar1.Repaint;

      // Modificar el estado de los registros para la Nómina
      cdModificar := TClientDataSet.Create(Nil);
      if Not CrearConjunto(cdModificar, 'nom_nominapersonal', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Personal en Nóminas']);

      StatusBar1.Panels.Items[0].Text := 'Cargando información de Nómina... [nom_detallenomina]';
      StatusBar1.Repaint;

      ListaSel := '';
      //Solo agregar los no pagados
      cdSeleccionados.First;
      while Not cdSeleccionados.eof do
      begin
        if cdSeleccionados.FieldByName('Pagado').AsInteger = 0 then
          ListaSel := ListaSel + cdSeleccionados.FieldByName('IdPersonal').asString + ','
        else
        begin
          HayPagados := True;
          inc(Cuentapagados);
        end;
        cdSeleccionados.Next;
      end;

      (*for i := 0 to GridSeleccionados.RowCount -1 do
        ListaSel := ListaSel + GridSeleccionados.Cell[7, i].AsString + ','; *)
      if HayPagados then
        InteliDialog.ShowModal('Aviso', 'El sistema detectó [' + intTostr(CuentaPagados) + '] registros pagados. Estos permanecerán intactos a menos que elimine los pagos registrados de los mismos', mtInformation, [mbok], 0);

      ProcedimientoAlmacenado('nom_detallenomina_delete', 'pIdNomina,pListaSel,pCompleta', [IdNomina, '"' + ListaSel + '"', 1]);

      ClientModule1.registrarEvento('NOMINAS','CALCULO DE NOMINA','CALCULO DE NOMINA SELECTIVO', 0.0, 0);
    Finally
      StatusBar1.Panels.Items[0].Text := '';
      StatusBar1.Repaint;

      Screen.Cursor := Cursor;

      if assigned(cdModificar) and (cdmodificar <> nil) and (cdModificar.ProviderName <> '') then
        EliminarConjunto(cdModificar);

      cdModificar.Free;
    End;
  Except
    on e:InteligentException do
    begin
      ModalResult := mrCancel;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      ModalResult := mrCancel;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmPersonalNomina.Btn_AgregarClick(Sender: TObject);
var
  i, Estado, Last, seleccionados: Integer;
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Try
//      if cxGridDbDetalle.Controller.SelectedRowCount = 0 then
//        raise InteligentException.CreateByCode(24, ['Debe seleccionar por lo menos un registro de la tabla para poder agregar.']);

      Screen.Cursor := crAppStart;

      // Agregar el o los registros seleccionados
      //cxGridDbSeleccionados.DataController
      //cxgriddbDetalle.OptionsView.GroupByBox := false;
      Last := cxgriddbDetalle.ViewData.RecordCount -1;
      for i := 0 to Last do
      begin
        ///cxGridDbDetalle.Controller.SelectedRecords[i].Selected;
        //cxGridDbDetalle.viewData.Records[i].Selected
        if cxGridDbDetalle.viewData.Records[i].Selected then
        begin
          cdDisponibles.Locate('IdPersonal',cxGridDbDetalle.viewData.Records[i].Values[3] ,[]);
          cdSeleccionados.Append;
          cdSeleccionados.FieldByName('IdPersonal').AsInteger := cdDisponibles.FieldByName('idPersonal').AsInteger;
          cdSeleccionados.FieldByName('CodigoPersonal').AsString := cdDisponibles.FieldByName('CodigoPersonal').AsString;
          cdSeleccionados.FieldByName('NombreCompleto').AsString := cdDisponibles.FieldByName('NombreCompleto').AsString;
          cdSeleccionados.FieldByName('RegPatIMss').asString := cdDisponibles.FieldByName('RegPatImss').AsString;
          cdSeleccionados.FieldbyName('NumImss').asString := cdDisponibles.FieldByName('NumImss').AsString;
          cdSeleccionados.FieldByName('Departamento').AsString := cdDisponibles.FieldByName('Departamento').AsString;
          cdSeleccionados.FieldByName('Puesto').AsString := cdDisponibles.FieldByName('Puesto').AsString;
          //if cdSeleccionados.FieldByName('estado').AsInteger = 0 then

          cdSeleccionados.FieldByName('Estado').AsINteger := cdDisponibles.FieldByName('Estado').AsINteger;
          cdSeleccionados.FieldByName('IdOrganizacion').AsInteger := cdDisponibles.FieldByName('IdOrganizacion').AsInteger;
          cdSeleccionados.FieldByName('Especial').asString := cdDisponibles.FieldByName('Especial').asString;
          cdSeleccionados.FieldByName('NombreOrganizacion').AsString := cdDisponibles.FieldByName('NombreOrganizacion').asString;
          cdSeleccionados.Post;
          cdDisponibles.Delete;
          Break;
        end;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmPersonalNomina.Btn_QuitarClick(Sender: TObject);
var
  i, Estado, Last, numcount: Integer;
  IdPersonalIndex: Integer;
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Agregar el o los registros seleccionados
      IdPersonalIndex := cxGridDbSeleccionados.DataController.GetItemByFieldName('IdPersonal').Index;

      //Verificar si ya está pagado
      if cdSeleccionados.FieldByName('Pagado').AsInteger = 1 then
        raise InteligentException.CreateByCode(24, ['Imposible mover de lista al personal [' + cdSeleccionados.FieldByName('NombreCompleto').AsString + '] debido a que se encuentra pagado']);

      for i := 0 to cxGridDbSeleccionados.Controller.SelectedRecordCount -1 do
      begin
        cdDisponibles.Append;
        cdDisponibles.FieldByName('IdOrganizacion').AsInteger := cdSeleccionados.FieldByName('IdOrganizacion').AsInteger;
        cdDisponibles.FieldByName('IdPersonal').AsInteger := cdSeleccionados.FieldByName('idPersonal').AsInteger;
        cdDisponibles.FieldByName('CodigoPersonal').AsString := cdSeleccionados.FieldByName('CodigoPersonal').AsString;
        cdDisponibles.FieldByName('NombreCompleto').AsString := cdSeleccionados.FieldByName('NombreCompleto').AsString;
        cdDisponibles.FieldByName('RegPatIMss').asString := cdSeleccionados.FieldByName('RegPatImss').AsString;
        cdDisponibles.FieldbyName('NumImss').asString := cdSeleccionados.FieldByName('NumImss').AsString;
        cdDisponibles.FieldByName('Departamento').AsString := cdSeleccionados.FieldByName('Departamento').AsString;
        cdDisponibles.FieldByName('Puesto').AsString := cdSeleccionados.FieldByName('Puesto').AsString;
        cdDisponibles.FieldByName('Estado').AsINteger := cdSeleccionados.FieldByName('Estado').AsINteger;
        cdDisponibles.FieldByName('IdOrganizacion').AsInteger := cdSeleccionados.FieldByName('IdOrganizacion').AsInteger;
        cdDisponibles.FieldByName('Especial').AsString := cdSeleccionados.FieldByName('Especial').asString;
        cdDisponibles.FieldByName('NombreOrganizacion').asString := cdSeleccionados.FieldByName('NombreOrganizacion').asString;
        cdDisponibles.Post;
        cdSeleccionados.Delete;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on E: inteligentException do
      InteliDialog.ShowModal(e.Title, e.message, e.MsgType, [mbOk], 0);
  end;
end;

procedure TFrmPersonalNomina.Btn_SeleccionarNominaClick(Sender: TObject);
var
  cdData: TClientDataSet;
  i, CtaAntes, CtaNuevos: Word;
begin
  i := InteliDialog.ShowModal('Copiar Personal de Nómina anterior',
                              'Este procedimiento copiara automáticamente todo el personal considerado en la Nómina anterior.' + #10 + #10 +
                              '¿Desea incluir también el personal que se hubiera dado de Alta recién en esta Nómina?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);

  if i <> mrCancel then
  // Copiar el personal de la nómina anterior
  Try
    cdData := TClientDataSet.Create(Self);
    Try
      if Not CrearConjunto(cdData, 'nuc_personal_nomina_anterior', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Personal']);

      if ((i = mrYes) and (Not CargarDatosFiltrados(cdData, 'IdNomina,NuevaAlta', [IdNomina, 'Si']))) or ((i = mrNo) and (Not CargarDatosFiltrados(cdData, 'IdNomina', [IdNomina]))) then
        raise InteligentException.CreateByCode(6, ['Personal', IdNomina, 'Id. Nómina']);

      cdData.Open;
      if cdData.RecordCount = 0 then
        raise InteligentWarning.Create('No existe una Nómina del mismo tipo anterior a esta...');

      // Verificar cual de los registros de la lista de la izquierda se encuentra en el dataset leido
      CtaAntes := 0;
      CtaNuevos := 0;

      (*for i := 0 to GridDetalle.RowCount -1 do
        if cdData.Locate('IdPersonal', GridDetalle.Cell[7, i].AsInteger, []) then
        begin
          if cdData.FieldByName('Modo').AsInteger = 0 then
            Inc(CtaAntes)
          else
            Inc(CtaNuevos);

          GridDetalle.Row[i].Selected := True;

        end;*)
      cdDisponibles.First;
      while not cdDisponibles.Eof do
      begin
        if cdData.Locate('IdPersonal', cdDisponibles.FieldByName('IdPersonal').AsInteger, []) then
        begin
          if cdData.FieldByName('Modo').AsInteger = 0 then
            Inc(CtaAntes)
          else
            Inc(CtaNuevos);
        end;

        cdDisponibles.Locate('IdPersonal', cdData.FieldByName('idPersonal').AsInteger,[]);
        cdSeleccionados.Append;
        cdSeleccionados.FieldByName('IdPersonal').AsInteger := cdDisponibles.FieldByName('idPersonal').AsInteger;
        cdSeleccionados.FieldByName('CodigoPersonal').AsString := cdDisponibles.FieldByName('CodigoPersonal').AsString;
        cdSeleccionados.FieldByName('NombreCompleto').AsString := cdDisponibles.FieldByName('NombreCompleto').AsString;
        cdSeleccionados.FieldByName('RegPatIMss').asString := cdDisponibles.FieldByName('RegPatImss').AsString;
        cdSeleccionados.FieldbyName('NumImss').asString := cdDisponibles.FieldByName('NumImss').AsString;
        cdSeleccionados.FieldByName('Departamento').AsString := cdDisponibles.FieldByName('Departamento').AsString;
        cdSeleccionados.FieldByName('Puesto').AsString := cdDisponibles.FieldByName('Puesto').AsString;

        cdSeleccionados.FieldByName('Estado').AsINteger := cdDisponibles.FieldByName('Estado').AsINteger;
        cdSeleccionados.FieldByName('IdOrganizacion').AsInteger := cdDisponibles.FieldByName('IdOrganizacion').AsInteger;
        cdSeleccionados.FieldByName('Especial').asString := cdDisponibles.FieldByName('Especial').asString;
        cdSeleccionados.FieldByName('NombreOrganizacion').AsString := cdDisponibles.FieldByName('NombreOrganizacion').asString;
        cdSeleccionados.Post;
        cdDisponibles.Delete;

        cdDisponibles.Next;
      end;
      InteliDialog.ShowModal('Proceso terminado',
                             'Se han procesado un total de:' + #10 + #10 +
                             'Personal incluido en Nómina anterior: ' + IntToStr(CtaAntes) + #10 +
                             'Personal dado de alta recien para esta Nómina: ' + IntToStr(CtaNuevos) + #10 + #10 +
                             'Total de Personal procesado: ' + IntToStr(CtaAntes + CtaNuevos),
                             mtInformation, [mbOk], 0);
    Finally
      if cdData.ProviderName = '' then
        EliminarConjunto(cdData);
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentWarning do
      InteliDialog.ShowModal('No existen datos', e.Message, mtInformation, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmPersonalNomina.Button1Click(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    //cxGridDbDetalle.
    //Btn_Agregar.Click;
    cdDisponibles.First;
    while not cdDisponibles.Eof do
    begin
      //cdDisponibles.Locate('IdPersonal', cdSeleccionados.FieldByName('IdPersonal').AsInteger ,[]);
      cdSeleccionados.Append;
      cdSeleccionados.FieldByName('IdPersonal').AsInteger := cdDisponibles.FieldByName('idPersonal').AsInteger;
      cdSeleccionados.FieldByName('CodigoPersonal').AsString := cdDisponibles.FieldByName('CodigoPersonal').AsString;
      cdSeleccionados.FieldByName('NombreCompleto').AsString := cdDisponibles.FieldByName('NombreCompleto').AsString;
      cdSeleccionados.FieldByName('RegPatIMss').asString := cdDisponibles.FieldByName('RegPatImss').AsString;
      cdSeleccionados.FieldbyName('NumImss').asString := cdDisponibles.FieldByName('NumImss').AsString;
      cdSeleccionados.FieldByName('Departamento').AsString := cdDisponibles.FieldByName('Departamento').AsString;
      cdSeleccionados.FieldByName('Puesto').AsString := cdDisponibles.FieldByName('Puesto').AsString;
      //if cdDisponibles.FieldByName('Estado').AsInteger =  then

      cdSeleccionados.FieldByName('Estado').asInteger := cdDisponibles.FieldByName('Estado').asInteger ;
      cdSeleccionados.FieldByName('IdOrganizacion').AsInteger := cdDisponibles.FieldByName('IdOrganizacion').AsInteger;
      cdSeleccionados.FieldByName('Especial').asString := cdDisponibles.FieldByName('Especial').asString;
      cdSeleccionados.FieldByName('NombreOrganizacion').asString := CdDisponibles.FieldByName('NombreOrganizacion').asString;
      cdSeleccionados.Post;
      //cdDisponibles.Delete;
      cdDisponibles.Next;
    end;
    cdDisponibles.First;
    while not cdDisponibles.Eof do
    begin
      cdDisponibles.First;
      cdDisponibles.Delete;
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmPersonalNomina.Button2Click(Sender: TObject);
begin
  //GuardarHorasExtras(TClientDataSet(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);
  ProcedimientoGuardarExtras(tclientdataset(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);
end;

procedure TFrmPersonalNomina.Button3Click(Sender: TObject);
begin
  GuardarHorasExtras(tclientdataset(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);
end;

procedure TFrmPersonalNomina.Button4Click(Sender: TObject);
var
  i, Estado, Last, numcount: Integer;
  IdPersonalIndex: Integer;
  Cursor: TCursor;
  HayPagados: Boolean;
  ListaBorrar: TStringList;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    ListaBorrar := TStringList.Create;

    HayPagados := False;
    IdPersonalIndex := cxGridDbSeleccionados.DataController.GetItemByFieldName('IdPersonal').Index;
    cdSeleccionados.First;
    while not cdSeleccionados.Eof do
    begin
      //Si no están pagados adelante quitalos, sino solo quita los que se puedan
      if cdSeleccionados.FieldByName('Pagado').AsInteger = 0 then
      begin
        ListaBorrar.Add(cdSeleccionados.FieldByName('IdPersonal').AsString);
        cdDisponibles.Append;
        cdDisponibles.FieldByName('IdPersonal').AsInteger := cdSeleccionados.FieldByName('idPersonal').AsInteger;
        cdDisponibles.FieldByName('CodigoPersonal').AsString := cdSeleccionados.FieldByName('CodigoPersonal').AsString;
        cdDisponibles.FieldByName('NombreCompleto').AsString := cdSeleccionados.FieldByName('NombreCompleto').AsString;
        cdDisponibles.FieldByName('RegPatIMss').asString := cdSeleccionados.FieldByName('RegPatImss').AsString;
        cdDisponibles.FieldbyName('NumImss').asString := cdSeleccionados.FieldByName('NumImss').AsString;
        cdDisponibles.FieldByName('Departamento').AsString := cdSeleccionados.FieldByName('Departamento').AsString;
        cdDisponibles.FieldByName('Puesto').AsString := cdSeleccionados.FieldByName('Puesto').AsString;
        cdDisponibles.FieldByName('Estado').asInteger := cdSeleccionados.FieldByName('Estado').AsInteger;
        cdDisponibles.FieldByName('IdOrganizacion').AsInteger := cdSeleccionados.FieldByName('IdOrganizacion').AsInteger;
        cdDisponibles.FieldByName('Especial').AsString := cdSeleccionados.FieldByName('Especial').asString;
        cdDisponibles.FieldByName('NombreOrganizacion').asString := cdSeleccionados.FieldByName('NombreOrganizacion').asString;
        cdDisponibles.Post;
      end else hayPagados := True;
      cdSeleccionados.Next;
    end;
    cdSeleccionados.First;

    //Quitar solo los no pagados
    for i := 0 to ListaBorrar.Count - 1 do
    begin
      if cdSeleccionados.Locate('IdPersonal', ListaBorrar[i], []) then
        cdSeleccionados.Delete;
    end;


    if HayPagados then
      InteliDialog.ShowModal('Aviso', 'Algunos registros no pudieron moverse debido a que se encuentran pagados.', mtWarning, [mbOK], 0)
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmPersonalNomina.cxGridDbDetalleCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxGridDbDetalle.Controller.SelectedRowCount > 0 then
    Btn_Agregar.Click;
end;



procedure TFrmPersonalNomina.cxGridDbDetalleNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  cxGridDbDetalle.FilterRow.Visible := ((AButtonIndex = 16) and (not cxGridDbDetalle.FilterRow.Visible));
end;

procedure TFrmPersonalNomina.cxGridDbDetalleStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if VarToSTR(ARecord.Values[10]) = '-1' then
    AStyle := cxstyleItalicGray;

  if VarToStr(ARecord.Values[10]) = '1' then
    AStyle := cxstyleNormalRed;

  if ARecord.values[CxColumnEspecial.Index] = 'Si' then
    AStyle := cxstylPersonalEspecial;

  if (ARecord.values[CxColumnEspecial.Index] = 'Si') and ((VarToSTR(ARecord.Values[10]) = '-1') or (VarToStr(ARecord.Values[10]) = '1')) then
    AStyle := cxstylPersonalEspecialPagado;
end;

procedure TFrmPersonalNomina.cxGridDbSeleccionadosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Btn_QuitarClick(nil);
end;

procedure TFrmPersonalNomina.cxGridDbSeleccionadosNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  cxGridDbSeleccionados.FilterRow.Visible := ((AButtonIndex = 16) and (not cxGridDbSeleccionados.FilterRow.Visible));
end;

procedure TFrmPersonalNomina.cxGridDbSeleccionadosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if VarToStr(ARecord.Values[7]) = '0' then
    AStyle := cxstylBoldBlack;

  if ARecord.values[CxColumnEspecial2.Index] = 'Si' then
    AStyle := cxstylPersonalEspecial;

  if ARecord.Values[CxColumnPagado.Index] = 1 then
    AStyle := cxstylPagado;

end;

procedure TFrmPersonalNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  LiberarVentana(Self, Action);

  // Registrar la posición del splitter
  SetRegistry('\Ventanas', '\' + Self.Name + '\' + cxGridSeleccionados.Name, 'Width', IntToStr(cxGridSeleccionados.Width));

  for i := 0 to cxGridDbDetalle.ColumnCount -1 do
    if cxGridDBDetalle.Columns[i].Name <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, cxGridDBDetalle.Columns[i].Name, IntToStr(cxGridDBDetalle.Columns[i].Width));

  for i := 0 to cxGridDBSeleccionados.ColumnCount -1 do
    if cxGridDBSeleccionados.Columns[i].Name <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, cxGridDBSeleccionados.Columns[i].Name, IntToStr(self.cxGridDbSeleccionados.Columns[i].Width));
end;

procedure TFrmPersonalNomina.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  DsExtras := TDataSource.Create(Self);
  AccedeACoordenadas(Self);
  ClientModule1.ComponentColor(self);
  ClientModule1.RastrearGrids(self);
  MemHExtras.CreateDataSet;
  MemHExtrasDetalle.CreateDataSet;
//  // Reajustar la posición del splitter
//  Try
//    cxGridSeleccionados.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + cxGridSeleccionados.Name, 'Width'));
//  Except
//    ;
//  End;
//
//  // Reajustar los anchos de las columnas
//  for i := 0 to GridDetalle.Columns.Count -1 do
//  Try
//    cxGridDBDetalle.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, cxGridDBDetalle.Columns[i].Name));
//  Except
//    ;
//  End;
//
//  // Reajustar los anchos de las columnas
//  for i := 0 to cxGridDbSeleccionados.ColumnCount -1 do
//  Try
//    cxGridDBSeleccionados.Columns[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, cxGridDBSeleccionados.Columns[i].Name));
//  Except
//    ;
//  End;
end;

procedure TFrmPersonalNomina.FormShow(Sender: TObject);
begin
  // Crear los conjuntos
  cdDisponibles.CreateDataSet;
  cdSeleccionados.CreateDataSet;

  dsPersonalIncluido.DataSet.First;
  while not dsPersonalIncluido.DataSet.Eof do
  begin
    if dsPersonalIncluido.DataSet.FieldByName('NominaPersonal').AsInteger <> 1 then
    begin
      cdDisponibles.Append;
      cdDisponibles.FieldByName('IdOrganizacion').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdOrganizacion').AsInteger;
      cdDisponibles.FieldByName('NombreOrganizacion').AsString := dsPersonalIncluido.DataSet.FieldByName('NombreOrganizacion').AsString;
      cdDisponibles.FieldByName('IdDepartamento').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdDepartamento').AsInteger;
      cdDisponibles.FieldByName('IdPersonal').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdPersonal').AsInteger;
      cdDisponibles.FieldByName('CodigoPersonal').AsString := dsPersonalIncluido.DataSet.FieldByName('CodigoPersonal').AsString;
      cdDisponibles.FieldByName('NombreCompleto').AsString := dsPersonalIncluido.DataSet.FieldByName('NombreCompleto').AsString;
      cdDisponibles.FieldByName('NumIMSS').AsString := dsPersonalIncluido.DataSet.FieldByName('NumeroSeguroSocial').AsString;
      cdDisponibles.FieldByName('Departamento').AsString := dsPersonalIncluido.DataSet.FieldByName('TituloDepartamento').AsString;
      cdDisponibles.FieldByName('Puesto').AsString := dsPersonalIncluido.DataSet.FieldByName('TituloCargo').AsString;
      cdDisponibles.FieldByName('Estado').AsString := dsPersonalIncluido.DataSet.FieldByName('NominaPersonal').AsString;
      cdDisponibles.FieldByName('Especial').AsString := dsPersonalIncluido.DataSet.FieldByName('Especial').AsString;
      cdDisponibles.FieldByName('Pagado').AsString := dsPersonalIncluido.DataSet.FieldByName('Pagado').AsString;
      cdDisponibles.Post;
    end
    else
    begin
      cdSeleccionados.Append;
      cdSeleccionados.FieldByName('IdOrganizacion').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdOrganizacion').AsInteger;
      cdSeleccionados.FieldByName('NombreOrganizacion').AsString := dsPersonalIncluido.DataSet.FieldByName('NombreOrganizacion').AsString;
      cdSeleccionados.FieldByName('IdDepartamento').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdDepartamento').AsInteger;
      cdSeleccionados.FieldByName('IdPersonal').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdPersonal').AsInteger;
      cdSeleccionados.FieldByName('CodigoPersonal').AsString := dsPersonalIncluido.DataSet.FieldByName('CodigoPersonal').AsString;
      cdSeleccionados.FieldByName('NombreCompleto').AsString := dsPersonalIncluido.DataSet.FieldByName('NombreCompleto').AsString;
      cdSeleccionados.FieldByName('NumIMSS').AsString := dsPersonalIncluido.DataSet.FieldByName('NumeroSeguroSocial').AsString;
      cdSeleccionados.FieldByName('Departamento').AsString := dsPersonalIncluido.DataSet.FieldByName('TituloDepartamento').AsString;
      cdSeleccionados.FieldByName('Puesto').AsString := dsPersonalIncluido.DataSet.FieldByName('TituloCargo').AsString;
      cdSeleccionados.FieldByName('Estado').AsString := dsPersonalIncluido.DataSet.FieldByName('NominaPersonal').AsString;
      cdSeleccionados.FieldByName('Especial').AsString := dsPersonalIncluido.DataSet.FieldByName('Especial').AsString;
      cdSeleccionados.FieldByName('Pagado').AsString := dsPersonalIncluido.DataSet.FieldByName('Pagado').AsString;
      cdSeleccionados.Post;
    end;

    dsPersonalIncluido.DataSet.Next;
  end;
end;

procedure TFrmPersonalNomina.PopupMenu1Popup(Sender: TObject);
begin
  // Verificar el estado de la opcion de consulta de nóminas en donde aparece
  //PopupMenu1.Items.Items[1].Enabled := GridDetalle.Cell[6, GridDetalle.SelectedRow].AsInteger <> 0;
end;

procedure TFrmPersonalNomina.LlamarVentana(Datos:Tclientdataset);
begin
  //aqui llamamos a la ventana que muestra las fechas y horas
  Application.CreateForm(TFrmAsignarHorasExtras,FrmAsignarHorasExtras);
  FrmAsignarHorasExtras.DsHExtras.DataSet := Datos; //encabezado
  FrmAsignarHorasExtras.IdTipoNomina := IdTipoNomina;
  FrmAsignarHorasExtras.IdNomina := IdNomina;
  FrmAsignarHorasExtras.desde := Fechai;
  FrmAsignarHorasExtras.Hasta := FechaF;
  FrmAsignarHorasExtras.DsHExtrasOrg.DataSet := MemHExtrasDetalle; //detalle con horas y fechas
  FrmAsignarHorasExtras.ShowModal;
end;
procedure TFrmPersonalNomina.RevisarHExtras(Datos:Tclientdataset;Grid:Tnextgrid);
var Row:Integer;
begin
  //establece los valores del checkbox
  for row := 0 to grid.rowcount-1 do
  begin
    if Datos.Locate('idpersonal',Grid.Cells[7,row],[]) then
      Grid.Cell[8,Row].AsBoolean := True;
  end;

end;

procedure TFrmPersonalNomina.LlenarMemoryDetalles(Datos:Tclientdataset);
begin
  //Aqui se guarda el horario extra de cada dia por peronal
  Datos.First;
  while not Datos.Eof do
  begin
    MemHExtrasDetalle.Append;
    MemHExtrasDetalle.FieldByName('idpersonal_te').AsInteger := Datos.FieldByName('idpersonal_te').AsInteger;
    MemHExtrasDetalle.FieldByName('idpersonal').AsInteger := Datos.FieldByName('idpersonal').AsInteger;
    MemHExtrasDetalle.FieldByName('fecha').AsDateTime := Datos.FieldByName('fecha').AsDateTime;
    MemHExtrasDetalle.FieldByName('horas').AsFloat := Datos.FieldByName('horas').AsFloat;
    MemHExtrasDetalle.Post;
    Datos.Next;
  end;
end;

procedure TFrmPersonalNomina.GuardarHorasExtras(Original,Personales,Detalle:Tclientdataset);
var cduptHE:TClientDataSet;
begin
  try
    IniciarTransaccion;
    cduptHE := TClientDataSet.Create(nil);
    try
      if not CrearConjunto(cduptHE,'nom_personal_te',ccUpdate) then
        raise InteligentConnection.CreateByCode(5,['w']);
      try
        Personales.first;
        while not Personales.eof do
        begin //trabajando con el primer personal
          try
            //primero sustituir id en local para no hacer necesaria un insert
            Detalle.Filtered := False;
            Detalle.Filter := ' idpersonal = '+personales.fieldbyname('idpersonal').asstring;
            Detalle.Filtered := True;
            Detalle.First;
            while not Detalle.eof do
            begin
              if Original.Locate('idpersonal;fecha',VarArrayOf([Detalle.FieldByName('idpersonal').AsString,Detalle.FieldByName('fecha').AsDateTime]),[]) then
              begin
                Detalle.Edit;
                Detalle.FieldByName('idpersonal_te').AsInteger := Original.FieldByName('idpersonal_te').AsInteger;
                Detalle.Post;
              end;
              Detalle.Next;
            end;
          finally
            Detalle.Filtered := False;
          end;
          Personales.Next;
        end;
        //se eliminan los que tienen valor cero para no generar registros basura
        //y afectar la bd
        Detalle.First;
        while not Detalle.eof do
        begin
          if (Detalle.FieldByName('horas').AsInteger = 0) or (length(trim(Detalle.FieldByName('horas').AsString)) = 0) then
            Detalle.Delete
          else
            Detalle.Next;
        end;
        //procedemos a trabajar con la base de datos
        //primero añadimos los necesarios
        Detalle.First;
        while not Detalle.Eof do
        begin
          if Detalle.FieldByName('idpersonal_te').AsInteger < 0 then
          begin
            //si la hora es mayor a 0 entonces se guarda en caso contrario no
            if Detalle.FieldByName('horas').AsFloat > 0 then
            begin
              cduptHE.Close;
              CargarDatosFiltrados(cduptHE,'idpersonal_te',[-9]);
              cduptHE.Open;
              cduptHE.Append;
              cduptHE.FieldByName('idpersonal_te').AsInteger := 0;
              cduptHE.FieldByName('idpersonal').AsInteger := Detalle.FieldByName('idpersonal').AsInteger;
              cduptHE.fieldbyname('fecha').AsDateTime := Detalle.FieldByName('fecha').AsDateTime;
              cduptHE.FieldByName('horas').AsFloat := Detalle.FieldByName('horas').AsFloat;
              cduptHE.Post;
              cduptHE.ApplyUpdates(-1);
            end;
            Detalle.Delete;
          end
          else
            Detalle.Next;
        end;

        //se procede a editar los necesarios cuidando el performance de red
        Detalle.First;
        while not Detalle.Eof do
        begin
          if (Original.Locate('idpersonal_te',Detalle.FieldByName('idpersonal_te').AsInteger,[]))
          and ((Detalle.FieldByName('horas').Asfloat <> Original.FieldByName('horas').AsFloat)) then
          begin
            cduptHE.Close;
            CargarDatosFiltrados(cduptHE,'idpersonal_te',[Detalle.FieldByName('idpersonal_te').AsInteger]);
            cduptHE.Open;
            cduptHE.Edit;
            cduptHE.FieldByName('horas').AsFloat := Detalle.FieldByName('horas').AsFloat;
            cduptHE.Post;
            cduptHE.ApplyUpdates(-1);
          end;
          Detalle.Next;
        end;
        //por ultimo procedemos a eliminar los que se encuentren en original pero q ya no se
        //encuentren en el memory
        Original.First;
        while not Original.Eof do
        begin
          if not (Detalle.Locate('idpersonal_te',Original.FieldByName('idpersonal_te').AsInteger,[])) then
          begin
            cduptHE.Close;
            CargarDatosFiltrados(cduptHE,'idpersonal_te',[Original.FieldByName('idpersonal_te').AsInteger]);
            cduptHE.Open;
            if cduptHE.RecordCount = 1 then
            begin
              cduptHE.Delete;
              cduptHE.ApplyUpdates(-1);
            end;
          end;
          Original.Next;
        end;
      finally
        EliminarConjunto(cduptHE);
      end;
    finally
      cduptHE.Free;
    end;
    ConcretarTransaccion;
  except
    on e:Exception do
    begin
      CancelarTransaccion;
      ShowMessage(e.Message);
    end;

  end;
  //
end;

procedure TFrmPersonalNomina.ProcedimientoGuardarExtras(Original,Personales,Detalle:Tclientdataset);
var PersonalAnt:Integer;
  Eliminar,Cambiar,cadenafinal,fechainicial,fechafinal:string;
begin
 {
  ProcedimientoAlmacenado('pagar_nomina', 'pIdNomina,pIdFormaPago,pListaPersonal', [IdNomina, IdFormaPago, '"' + ListaPersonal + '"']);
  }
  //implementacion de procedimiento almacenado
  //primero se deberan detectar los personales que tienen que eliminarse
  PersonalAnt := -9;
  Eliminar := '';
  Cambiar := '';
  Original.First;
  Original.IndexFieldNames := 'idpersonal';  //ordenamos por personal para no tener broncas
  while not Original.eof do
  begin
    if PersonalAnt <> Original.FieldByName('idpersonal').AsInteger then //para no duplicar búsquedas
      if not Personales.Locate('idpersonal',Original.FieldByName('idpersonal').AsInteger,[]) then  //si no se encuentra en el modificado, entonces hay q borrar todos sus registros
      begin
        if Length(Trim(Eliminar))>0 then
          Eliminar := Eliminar +'#';
        Eliminar := Eliminar +Original.FieldByName('idpersonal').AsString;
      end;
    PersonalAnt := Original.FieldByName('idpersonal').AsInteger;
    Original.Next;
  end;

  //si se asignan y desasignan personales y estos estaban originalmente entonces reusar los
  //registros
  Personales.first;
  while not Personales.eof do
  begin //trabajando con el primer personal
    try
      //primero sustituir id en local para no hacer necesaria un insert
      Detalle.Filtered := False;
      Detalle.Filter := ' idpersonal = '+personales.fieldbyname('idpersonal').asstring;
      Detalle.Filtered := True;
      Detalle.First;
      while not Detalle.eof do
      begin
        if Original.Locate('idpersonal;fecha',VarArrayOf([Detalle.FieldByName('idpersonal').AsString,Detalle.FieldByName('fecha').AsDateTime]),[]) then
        begin
          Detalle.Edit;
          Detalle.FieldByName('idpersonal_te').AsInteger := Original.FieldByName('idpersonal_te').AsInteger;
          Detalle.Post;
        end;
        Detalle.Next;
      end;
    finally
      Detalle.Filtered := False;
    end;
    Personales.Next;
  end;
  //se deberan enviar los personales con sus cambios
  Personales.First;
  while not Personales.Eof do
  begin
    try
      Detalle.Filtered := False;
      Detalle.Filter := ' idpersonal = '+personales.FieldByName('idpersonal').AsString;
      Detalle.Filtered := True;
      Detalle.First;
      while not Detalle.Eof do
      begin
        if not Original.Locate('idpersonal;fecha;horas',VarArrayOf([Detalle.FieldByName('idpersonal').AsInteger,Detalle.FieldByName('fecha').AsString,Detalle.FieldByName('horas').AsFloat]),[]) then
        begin
          if  not((detalle.FieldByName('horas').AsFloat = 0)  and (Detalle.FieldByName('idpersonal_te').AsInteger = -2)) then
          begin
            if Length(Trim(cambiar))>0 then
              Cambiar := Cambiar + '#';
            Cambiar := Cambiar + Personales.FieldByName('idpersonal').AsString+'$';
            Cambiar := cambiar+clientmodule1.DatetoStrSql(Detalle.FieldByName('fecha').AsDateTime,'/')+'&'+Detalle.FieldByName('horas').AsString;
          end;
        end;
        Detalle.Next;
      end;
    finally
      Detalle.Filtered := False;
    end;
    Personales.Next;
  end;
  if (length(Trim(Eliminar)) > 0)  and (Length(Trim(cambiar)) > 0) then
  begin
    eliminar := Eliminar + '#';
  end;
  cadenafinal :=Eliminar+cambiar;
  fechainicial :=  ClientModule1.DatetoStrSql(Fechai,'/');
  fechafinal := ClientModule1.DatetoStrSql(FechaF,'/');
  cadenafinal :=cadenafinal;
//  fechainicial := '"'+fechainicial+'"';
//  fechafinal := '"'+fechafinal+'"';
  //aqui se realiza el procedimiento almacenado, el error actual es que no se pueden generar
  //los nuevos registros,al mandar 59|2013/10/1&0 me elimina todo del usuario con id 59,
  if Length(Trim(cadenafinal)) > 0 then
    ProcedimientoAlmacenado('Actualiza_TExtra', 'pLista,pFechaInicio,pFechaTermino', [cadenafinal,fechainicial,fechafinal]);

end;

end.
