unit UTFrmCatalogo;
{******************************************************************************
 Fecha : 21022013 10:57
 Nota: se agrega la variable general idactual, la cual se le asigna un valor
       siempre y cuando se use la paginacion en el formulario, en el evento de
       la edición se le asigna el id del registro actual, en el momento del agregar
       se le asigna el ultimoid, en el momento de eliminar se le asigna el valor
       de -1.
****************************************************************************** }

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, StdCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, Menus, ExtCtrls, DB, DBClient,
  UTFrmDatosCatalogo, NxGrid, xDatabase, NxCollection, URegistro, Uintelidialog,
  JvExControls, JvLabel, pngimage, JvComponentBase, JvDBGridExport, Grids,
  DBGrids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, jpeg, ExBar, {ExBarClasses,}
  tmsAdvGridExcel,tmsUFlxFormats, AdvShapeButton, frxClass, frxDBSet,
  JvMemoryDataset, ComObj, IdException, ComCtrls, DBXCommon, ImgList,
  UInfoPanel, Spin, AdvProgressBar, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, dxSkinsdxBarPainter, dxBar,
  cxClasses, cxGroupBox, cxControls, cxContainer, cxEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TDatosForma = class
    Width, Height: Integer;
    Borde: TBorderIcons;
    Caption: String;
  End;

  TFrmCatalogo = class(TForm)
    PanelFiltro: TcxGroupBox;
    GroupBoxFiltro: TcxGroupBox;
    MainPopupMenu: TPopupMenu;
    MnAgregar: TMenuItem;
    MnEditar: TMenuItem;
    MnImprimir: TMenuItem;
    PanelPrincipal: TPanel;
    DBGridPrincipal: TNextDBGrid;
    Edit2: TEdit;
    PanelBarra: TcxGroupBox;
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    Panel1: TcxGroupBox;
    Panel2: TcxGroupBox;
    MnEliminar: TMenuItem;
    mnExport: TMenuItem;
    BtnClose: TcxButton;
    LbFiltros: TJvLabel;
    btnfn1: TPngSpeedButton;
    mdEstructura: TJvMemoryData;
    qGrabar: TClientDataSet;
    mdDeposito: TClientDataSet;
    OpenXLS: TOpenDialog;
    SaveXLS: TSaveDialog;
    pnlProgress: TPanel;
    pbProgress: TProgressBar;
    lblProgress: TLabel;
    BtnSearch: TcxButton;
    PanelAdd: TPanel;
    PanelEdit: TPanel;
    BtnEdit: TcxButton;
    PanelDelete: TPanel;
    BtnDelete: TcxButton;
    PanelRefresh: TPanel;
    BtnRefresh: tcxButton;
    PanelPrint: TPanel;
    BtnPrint: TcxButton;
    PanelExport: TPanel;
    BtnExport: TcxButton;
    PanelImport: TPanel;
    PanelSelect: TPanel;
    BtnSelect: TcxButton;
    PnlPro: TPanel;
    PnlNum: TPanel;
    PBPaginacion: TAdvProgressBar;
    NPaginacion: TSpinEdit;
    AdvShapeButton3: TAdvShapeButton;
    btnImportar: TcxButton;
    DxBManagerMain: TdxBarManager;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    btnAdd: TcxButton;
    DxBarMain: TdxBar;
    DxBarBtnNuevo: TdxBarLargeButton;
    DxBarBtnEditar: TdxBarLargeButton;
    DxBarBtnEliminar: TdxBarLargeButton;
    DxBarBtnActualizar: TdxBarLargeButton;
    DxBarBtnImprimir: TdxBarLargeButton;
    DxBarBtnExportar: TdxBarLargeButton;
    DxBarBtnImportar: TdxBarLargeButton;
    DxBarBtnImportat: TdxBarLargeButton;
    DxBarBtnOcultar: TdxBarLargeButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnClose2Click(Sender: TObject);
    procedure DBGridPrincipalCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure AccedeACoordenadas;
    procedure FormCreate(Sender: TObject);
    procedure MainPopupMenuPopup(Sender: TObject);
    procedure MnAgregarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
    procedure MnImprimirClick(Sender: TObject);
    procedure MnEliminarClick(Sender: TObject);
    procedure mnExportClick(Sender: TObject);
    procedure ExcelioCellFormat(Sender: TAdvStringGrid; const GridCol, GridRow,
      XlsCol, XlsRow: Integer; const Value: WideString; var Format: TFlxFormat);
    procedure btnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure LbFiltrosClick(Sender: TObject);
    procedure btnfn1Click(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure mdEstructuraFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGridPrincipalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridPrincipalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NPaginacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnPrintClick(Sender: TObject);
    procedure AdvShapeButton3Click(Sender: TObject);
    procedure cdDatosAfterRefresh(DataSet: TDataSet);
    procedure DBGridPrincipalSelectCell(Sender: TObject; ACol, ARow: Integer);
    procedure DxBarBtnOcultarClick(Sender: TObject);
  private
    _RegistroActual: TLista;
    bandera: boolean;
    Multiplo: Real;
    ListaPermisos: TStringList;
    FExSplitter: TSplitter;
    procedure ItemClick(Sender: TObject; Id: Integer);
    procedure WMWINDOWPOSCHANGING(var msg: TWMWINDOWPOSCHANGING);
      message WM_WINDOWPOSCHANGING;

  protected
    providerName: string;
    providerNameUpt: string;
    keyField: string;
    imageField: string;
    ModuloPantalla: string;
    UsePaginacion: Boolean;
    entityName: string;
    codeField: string;
    CompReporte: tfrxReport;
    CompDatasetReporte: TfrxDBDataset;
    Reporte: string;
    FExBar: TExBar;
    CrearBarraEx: Boolean;
    ListaProc: TStringListX;
    YaMostrado: Boolean;
    function createPopUp: TFrmDatosCatalogo; Virtual;
    procedure abrir;
    procedure FiltroInicial; virtual;
    procedure InitForm; virtual;
  public
    AbrirPantalla: boolean;
    ModoSeleccion: Boolean;
    IdActual: Integer;
    NombreConjunto: String;
    ForzarSalir: Boolean;
    Salir: Boolean;
    Filtro: String;
    function SeleccionarItem(): TLista;
    procedure AlineaBotones(Espaciado: Integer);
    procedure AbreteSesamo(Var Combo: TComboBox; Descripcion: String);
    procedure Paginacion(Panel: Tpanel; Datos: Tclientdataset;Total:Integer;
      Bar: tAdvProgressBar; Spin: tspinedit;Predeterminado: Boolean = False);
  end;

var
  FrmCatalogo: TFrmCatalogo;

implementation

{$R *.dfm}

Uses
   Unit2, UTFrmSelFormato, frm_SelectSheet, ExportaExcel, ClientModuleUnit1,
  UTFrmPeriodoGuardia;

var
  pColumna: Integer;

Function ColumnaNombre(Numero: Integer): String;
Var
  Valor, NumLetras: Integer;
  Cad: String;
Begin
  NumLetras := 26;  // O1
  Cad := '';
  Valor := Numero Mod NumLetras;
  if Valor = 0 then Valor := 26;
  if Numero - Valor > 0 then Cad := Char(64 + Trunc((Numero - Valor) / NumLetras));
  Cad := Cad + Char(64 + Valor);
  Result := Cad;
End;

procedure TFrmCatalogo.Paginacion(Panel: Tpanel;Datos:Tclientdataset;Total:Integer; Bar: tAdvProgressBar; Spin: tspinedit;Predeterminado: Boolean);
var
  PorTot, PorAct: integer;
  Registros:Integer;

  RowActual,i: integer;
begin
  if predeterminado then
  begin
    try   //localizar en el registro
      Registros := strtoint(VarRegistry('\Ventanas',  '\' + Self.Name, 'Registros'));
    except
      try     //si no se asigna buscar globales
        Registros :=  globales.Elemento('Registros').asinteger;
      except //si no lo encuentra generar un 50
        Registros := 50;
      end;
    end;
    Spin.Value:= Registros;
  end;

  Datos.packetRecords := Spin.Value;
  Datos.FetchOnDemand := False;
  Bar.Max := 100;
  if Total > 0 then
  begin
    Multiplo := (100 / Total);
    if cddatos.State = dsBrowse then
      PorAct := Trunc(Multiplo * cdDatos.recordcount)
    else
      PorAct := Trunc(Multiplo * cdDatos.PacketRecords);

    if Multiplo > Trunc(Multiplo) then
      PorAct := PorAct + 1;

    if Total > PorAct then
      PorAct := 100;
  end
  else
    PorAct := 100;
  Bar.Position := PorAct;
  Panel.visible := True;
end;

procedure TFrmCatalogo.abrir;
var
  i, idconvenio: integer;
  OldCursor: TCursor;
begin
  if Not ModoSeleccion then
  Try
    Try
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        cdDatos.Close;
        if not CrearConjunto(cdDatos, EntityName, ProviderName, ccCatalog) then
          raise InteligentConnection.CreateByCode(2, ['No se pudo crear el acceso de datos para la tabla ' + EntityName]);

        if UsePaginacion then
          Paginacion(PnlPro,cdDatos,CuantosRegistros(cdDatos),PBPaginacion,NPaginacion, True)
        else
          if Not CargarDatosFiltrados(cdDatos, keyfield, [-9]) then
            raise InteligentConnection.CreateByCode(2, ['No se pudo acceder a la estructura de la tabla ' + EntityName]);

        if cdDatos.State = dsInactive then
          cdDatos.Open;

        if Self.classparent.classnameIs('TFrmCatalogo') {and UsePaginacion} then
          BtnSearch.Click;

        if (Assigned(cdDatos.FieldDefs.Find(KeyField))) and (Not (pfInKey in cdDatos.FieldByName(KeyField).ProviderFlags)) then
          cdDatos.FieldByName(KeyField).ProviderFlags := cdDatos.FieldByName(KeyField).ProviderFlags + [pfInKey];

        if ModoSeleccion then
          FiltroInicial;
      Finally
        Screen.Cursor := OldCursor;
      End;
    Except
      on e:InteligentConnection do
        raise;

      on e:Exception do
        raise InteligentException.CreateByCode(1, [e.Message]);
    End;
  Except
    on e:InteligentConnection do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:exception do
      ;
  End;
end;

procedure TFrmCatalogo.btnAddClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popUp: TFrmDatosCatalogo;
  OldCursor: TCursor;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'AGREGAR') then
    Exit;
  Try
    cdUpt := TClientDataSet.Create(Nil);
    try
      // Acceder en modo update a los datos
      if not CrearConjunto(cdUpt, entityName, providerNameUpt, ccUpdate) then
        raise InteligentConnection.CreateByCode(5, [Self.ModuloPantalla]);

      Try
        if not CargarDatosFiltrados(cdUpt, keyField, [-9]) then
          raise InteligentConnection.CreateByCode(6, [Self.ModuloPantalla,cdDatos.FieldByName(keyField).AsString,keyField]);

        // Obtener un conjunto de datos vacíos
        cdUpt.Open;
        if cdUpt.RecordCount = 0 then
        begin
          OldCursor := Screen.Cursor;
          Screen.Cursor := crAppStart;
          popUp := createPopUp;
          try
            try
              cdUpt.Append;
              cdUpt.FieldByName(keyField).AsInteger := 0;
              popUp.dsDatos.DataSet := cdUpt;
              popUp.KeyField := Keyfield;
              popUp.CodeField := CodeField;
              popUp.EntityName := EntityName;
            Finally
              Screen.Cursor := OldCursor;
            End;

            if popUp.ShowModal = mrOk then
            begin
              if UsePaginacion then
                IdActual := UltimoId; // El Id Nuevo
              cdDatos.Refresh;
              IdActual := -1;
            end
            else
            begin
              cdDatos.Cancel;
            end;
          finally
            FreeAndNil(popUp);
          end;
        end
        else
        begin
          raise InteligentException.CreateByCode(3, ['!' + entityName +'']);
        end;
      Finally
        EliminarConjunto(CdUpt);
      End;
    finally
      FreeAndNil(CdUpt);
    end;
  Except
    on e: exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', e.Message, mtWarning, [mbOk], 0);
  End;

  RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
end;

procedure TFrmCatalogo.BtnClose2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmCatalogo.cdDatosAfterRefresh(DataSet: TDataSet);
var
  MaxDat: Integer;
  PorAct: Integer;
  ExisteEnBd: Boolean;
begin
  Try
    cdDatos.DisableControls;
    if UsePaginacion then
    begin
      cdDatos.Close;
      Paginacion(PnlPro,cdDatos,CuantosRegistros(cdDatos),PBPaginacion,NPaginacion);
      cdDatos.Open;
      ExisteEnBd := VerificaExiste(cdDatos,keyField,IdActual);
      MaxDat:= CuantosRegistros(cdDatos);
      while (not cdDatos.Locate(keyField,IdActual,[])) and (cddatos.RecordCount > 0)
             and (cdDatos.RecordCount<MaxDat) and (idactual > 0) and (ExisteEnBd) do
      begin
        Cddatos.GetNextPacket;
        PorAct := Trunc(Multiplo * cdDatos.PacketRecords);
        if (Pbpaginacion.Position + PorAct) > 100  then
          Pbpaginacion.Position := 100
        else
          Pbpaginacion.Position := Pbpaginacion.Position + PorAct;
      end;
    end;
  Finally
    cdDatos.EnableControls;
  End;
end;

function TFrmCatalogo.createPopUp: TFrmDatosCatalogo;
begin

end;

procedure TFrmCatalogo.DBGridPrincipalCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  try
    if DBGridPrincipal.RowCount < 1 then
      Exit;
    if ModoSeleccion then
      BtnSelect.Click
    else
      BtnEdit.Click;
  finally

  end;
end;

procedure TFrmCatalogo.DBGridPrincipalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var PorAct:integer;
begin
  if (not (ssCtrl in Shift))  then
    DbGridPrincipal.SelectCell(2,DBGridPrincipal.SelectedRow,[ssShift],False);
  if (cdDatos.RecNo = cdDatos.RecordCount) and (Key = 40) and UsePaginacion then
  begin
    Cddatos.GetNextPacket;
    PorAct := Trunc(Multiplo * cdDatos.PacketRecords);
    if (Pbpaginacion.Position + PorAct) > 100  then
      Pbpaginacion.Position := 100
    else
      Pbpaginacion.Position := Pbpaginacion.Position + PorAct;
  end;
end;

procedure TFrmCatalogo.DBGridPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    DbGridPrincipal.SelectCell(2,DBGridPrincipal.SelectedRow,[ssShift],False);
end;

procedure TFrmCatalogo.DBGridPrincipalSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
  IdActual := cdDatos.FieldByName(keyfield).AsInteger;
end;

procedure TFrmCatalogo.DxBarBtnOcultarClick(Sender: TObject);
begin
  PanelFiltro.visible := Not PanelFiltro.Visible;
end;

procedure TFrmCatalogo.ExcelioCellFormat(Sender: TAdvStringGrid; const GridCol,
  GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
  var Format: TFlxFormat);
begin
  if (GridRow = 0) then
  begin
    Format.Borders.Right.ColorIndex := clBlue;
    format.Borders.Right.Style := fbs_Medium;
    Format.Borders.Left.ColorIndex := clBlue;
    format.Borders.Left.Style := fbs_Medium;
    Format.Borders.Top.ColorIndex := clBlue;
    format.Borders.Top.Style := fbs_Medium;
    Format.Borders.Bottom.ColorIndex := clBlue;
    format.Borders.Bottom.Style := fbs_Medium;
    Format.Font.ColorIndex := 5;
    format.HAlignment := fha_center;
    format.FillPattern.BgColorIndex := clRed;
    format.FillPattern.FgColorIndex := clRed;
    Format.VAlignment := fva_center;
    Format.Font.Underline := fu_Single;
  end
  else
  begin
    Format.Borders.Right.ColorIndex := clblack;
    format.Borders.Right.Style := fbs_Dashed;
    Format.Borders.Left.ColorIndex := clblack;
    format.Borders.Left.Style := fbs_Dashed;
    Format.Borders.Top.ColorIndex := clblack;
    format.Borders.Top.Style := fbs_Dashed;
    Format.Borders.Bottom.ColorIndex := clblack;
    format.Borders.Bottom.Style := fbs_Thin;
    Format.Font.ColorIndex := 1;
    format.HAlignment := fha_center;
    format.FillPattern.BgColorIndex := 9;
    format.FillPattern.FgColorIndex := 9;
  end;
end;

procedure TFrmCatalogo.mnExportClick(Sender: TObject);
begin
  BtnExport.Click;
end;

procedure TFrmCatalogo.AlineaBotones(Espaciado: Integer);
Var
  i, Left: Integer;
begin
  // Ajustar los botones para que queden "uno tras otro" tomando en cuenta que no
  // queden espacios en blanco si alguno de los botones se define como invisible
  Left := 0;
  for i := 0 to Panel1.ControlCount -1 do
    if (Panel1.Controls[i].ClassType = TAdvShapeButton) and (Panel1.Controls[i].Visible) then
    begin
      Panel1.Controls[i].Left := Left;
      Left := Left + Panel1.Controls[i].Width + Espaciado;
    end;
end;

procedure TFrmCatalogo.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Repite: Boolean;
  valRepite, h: Integer;
  OrdenColumnas: String;
begin
  if Not ForzarSalir then
  begin
    Repeat
      Repite := False;
      Try
        EliminarConjunto(providerName);
        LiberarVentana(Self, Action);
      Except
        on e:Exception do
        begin
          valRepite := InteliDialog.ShowModal('Ha ocurrido un error de comunicación',
                       'Ha ocurrido un error de comunicación con el servidor de la base de datos, no ha sido posible cerrar esta ventana de manera adecuada debido a lo siguiente' + #10 + #10 +
                       e.message, mtConfirmation, [mbRetry, mbCancel, mbAbort], 0);
          case valRepite of
            mrRetry: Repite := True;
            mrCancel: Repite := False;
            mrAbort: begin ForzarSalir := True; Close; end;  // No hacer nada, dejar que se cierre la ventana
          end;
        end;
      end;
    Until Not Repite;
  end;

  // Guardar el ancho del panel izquierdo
  if FExBar <> Nil then
    SetRegistry('\Ventanas', '\' + Self.Name, 'LeftPanelWidth', IntToStr(FExBar.Width));

  OrdenColumnas := '';
  for h := 0 to DBGridPrincipal.Columns.Count -1 do
  begin
    OrdenColumnas := OrdenColumnas + DBGridPrincipal.Columns.Item[h].FieldName + ',';  //    .Display + ',';
    SetRegistry('\Ventanas', '\' + Self.Name, DBGridPrincipal.Columns.Item[h].Name, IntToStr(DBGridPrincipal.Columns.Item[h].Width));
  end;

  if OrdenColumnas <> '' then
  begin
    OrdenColumnas := Copy(OrdenColumnas, 1, Length(OrdenColumnas) -1);
    SetRegistry('\Ventanas', '\' + Self.Name, 'OrdenColumnas', OrdenColumnas);
  end;

  // Guardar el numero de registros a visualizar
  if (NPaginacion.Value > 0) and UsePaginacion then
    SetRegistry('\Ventanas', '\' + Self.Name, 'Registros', NPaginacion.Text);

  Action := caFree;
end;

procedure TFrmCatalogo.FormCreate(Sender: TObject);
var
  DatosForma: TDatosForma;
  i: integer;
  OldCursor: TCursor;
begin
  YaMostrado := False;

  Try
    AbrirPantalla := True;
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    UsePaginacion := False;
    IdActual := -1;

    ListaProc := TStringListX.Create;
    CrearBarraEx := false;  // variable para indicar si se va a usar la barra lateral

    InitForm;

    ForzarSalir := False;
    //***************** CODIGO DE INICIALIZACIÓN DE LA BARRA
    if CrearBarraEx then
    begin
      // Crear el splitter de ancho de panel izquierdo
      FExSplitter := TSplitter.Create(self);
      FExSplitter.Parent := self;
      FExSplitter.Align := alLeft;

      // Crear el panel izquierdo
      FExBar := TExBar.Create(self);
      FExBar.ProcList := ListaProc;

      Try   // Recuperando ancho de la barra
        FExBar.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'LeftPanelWidth'));
      Except
        ;
      End;

      with FExBar do
      begin
        BeginUpdate;
        SetSkin(InfoPanel.BlueImg.Picture.Bitmap);
        GroupIcons := InfoPanel.Icons32;
        ItemIcons := InfoPanel.Icons16;
        Parent := Self;
        Align := alLeft;
        OnMenuItemClick := ItemClick;

        EndUpdate;
        //Show;
      end;
    end;
    //****************************************************************

    // Crear el registro de respaldo de información de formulario
    DatosForma := TDatosForma.Create;

    DatosForma.Width := Self.Width;
    DatosForma.Height := Self.Height;
    DatosForma.Borde := Self.BorderIcons;
    DatosForma.Caption := Self.Caption;

    Self.BorderIcons := [];
    Self.Caption := '';

    PanelImport.Visible := BtnImportar.Visible;
  Finally
    Screen.Cursor := OldCursor;
  End;

  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      ForzarSalir := True;

      if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
      begin
        AbrirPantalla := false;
        raise InteligentException.Create('***');
      end;

      ListaPermisos := TStringList.Create;
      ListaPermisos.Clear;
      ClientModule1.cdpermiso.Filtered := false;
      ClientModule1.cdpermiso.Filter := 'codigomodulo = ' + QuotedStr(ModuloPantalla);
      ClientModule1.cdpermiso.Filtered := true;
      ClientModule1.cdpermiso.First;
      while not ClientModule1.cdpermiso.eof do
      begin
        ListaPermisos.AddObject(ClientModule1.cdPermiso.FieldByName('CodigoPermiso').AsString, TObject(ClientModule1.cdpermiso.FieldByName('valor').AsInteger));
        ClientModule1.cdpermiso.Next;
      end;
      ClientModule1.cdpermiso.Filtered := false;

      Self.Width := DatosForma.Width;
      Self.Height := DatosForma.Height;
      Self.BorderIcons := DatosForma.Borde;
      Self.Caption := DatosForma.Caption;

      AccedeACoordenadas;
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      Try
        if e.Message <> '***' then
          InteliDialog.ShowModal('No se puede acceder a la ventana solicitada', e.message, mtError, [mbOk], 0)
        else
          InteligentException.Create('***');
      Finally
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      End;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La ventana slicitada no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmCatalogo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DBGridPrincipal.Focused then
  case Key of
    13: if DBGridPrincipal.SelectedCount > 0 then
          BtnEdit.Click;

    27: if Shift = [] then
          Close;

    45: if (DBGridPrincipal.SelectedCount > 0) and (Shift = [ssCtrl]) then
          BtnAdd.Click;

    46: if (DBGridPrincipal.SelectedCount > 0) and (Shift = [ssCtrl]) then
          BtnDelete.Click;

    116: if Shift = [] then
           BtnRefresh.Click;
  end
  else
  case Key of
    27: if Shift = [] then
          Close;
  end;
end;

procedure TFrmCatalogo.FormKeyPress(Sender: TObject; var Key: Char);
begin
(*  case key of
 {   #13:
        begin
          If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
            SelectNext(Sender as TWinControl, False, True)
          else
            SelectNext(Sender as TWinControl, True, True);
          Key := #0
        end;          }
    #27:
        begin
          Self.Close;
          Key := #0
        end;
  end;*)
end;

procedure TFrmCatalogo.FormResize(Sender: TObject);
begin
  if Self.WindowState = wsMaximized then
  begin
{    if (TipoCliente = '1') or (TipoCliente = '3')  then //barra superior
      if self.Height > Screen.WorkAreaHeight-(Form2.tbMain.Height+Form2.StatusBar1.Height) then
        Self.Height := Screen.WorkAreaHeight-(Form2.tbMain.Height+Form2.StatusBar1.Height);

    if (TipoCliente = '0') or (TipoCliente = '2')  then //barra lateral
      if self.Height > Screen.WorkAreaHeight then
        Self.Height := Screen.WorkAreaHeight;}
  end;

  if Self.WindowState = wsNormal then
  begin
    if Self.top < 0 then
      Self.top := 0;
  end;
end;

procedure TFrmCatalogo.FormShow(Sender: TObject);
var
  h: Integer;
  OldCursor: TCursor;
begin
  if Not YaMostrado then
  begin
    YaMostrado := True;

    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      if Not AbrirPantalla then
        raise InteligentException.Create('***');

      if not bandera then
      begin
        ClientModule1.RastrearGrids(Self);
        ClientModule1.ComponentColor(Self);
        bandera := true;
      end
      else
        bandera := false;

      // Reajustar los anchos de las columnas
      for h := 0 to DBGridPrincipal.Columns.Count -1 do
      Try
        DBGridPrincipal.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, DBGridPrincipal.Columns.Item[h].Name));
      Except
        ;
      End;

      DBGridPrincipal.SetFocus;
      PanelSelect.Visible := modoseleccion;
      ForzarSalir := False;

      PanelBarra.Visible := PanelSelect.Visible;
    Finally
      Screen.Cursor := OldCursor;
    End;
  end;
end;

procedure TFrmCatalogo.LbFiltrosClick(Sender: TObject);
begin
  if panelFiltro.Height <> 26 then
  begin
    GroupBoxFiltro.Visible := False;
    panelFiltro.Height := 26;
    LbFiltros.Caption := 'Ver Filtros';
    btnfn1.Visible := True
  end
  else
  begin
    panelFiltro.Height := 73;
    GroupBoxFiltro.Visible := True;
    LbFiltros.Caption := 'Ocultar Filtros';
    btnfn1.Visible := False;
  end;
end;

procedure TFrmCatalogo.MainPopupMenuPopup(Sender: TObject);
begin
  if btnAdd.Enabled = True then
    MnAgregar.Enabled := True;
  if btnEdit.Enabled = True then
    MnEditar.Enabled := True;
  if btnPrint.Enabled = True then
    MnImprimir.Enabled := True;
  if btnDelete.Enabled = True then
    MnEliminar.Enabled := True;
  if btnExport.Enabled = True then
    MnExport.Enabled := True;
end;

procedure TFrmCatalogo.mdEstructuraFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if FrmSelectSheet.Visible then
    Accept := DataSet.FieldByName('iColumna').AsInteger = FrmSelectSheet.nColumna
  else
    Accept := DataSet.FieldByName('iColumna').AsInteger = pColumna;
end;

procedure TFrmCatalogo.MnAgregarClick(Sender: TObject);
begin
  BtnAdd.Click;
end;

procedure TFrmCatalogo.MnEditarClick(Sender: TObject);
begin
  BtnEdit.Click;
end;

procedure TFrmCatalogo.MnEliminarClick(Sender: TObject);
begin
  BtnDelete.Click;
end;

procedure TFrmCatalogo.MnImprimirClick(Sender: TObject);
begin
  BtnPrint.Click;
end;

procedure TFrmCatalogo.NPaginacionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var progreso: integer;
begin
  if (Length(NPaginacion.Text) > 0) and UsePaginacion then
  if (cdDatos.State = dsBrowse) and (key = 13) then
  begin
    cdDatos.Close;
    try
      cdDatos.PacketRecords := TSpinEdit(sender).Value;
      try
        Multiplo := 100 / CuantosRegistros(cddatos);
      except
        Multiplo := 0;
      end;

      progreso := Trunc(Multiplo * TSpinEdit(sender).Value);
      if (Multiplo > Trunc(Multiplo)) then
        Inc(progreso);
      if progreso  > 100 then
        progreso := 100;

      PBPaginacion.Position := progreso;

    finally
      cdDatos.Open;
    end;
  end;
end;

function TFrmCatalogo.SeleccionarItem: TLista;
begin
  Try
    if not AbrirPantalla then
      raise InteligentException.Create('***');
    bandera := true;
    ModoSeleccion := true;
    self.FormStyle := fsNormal;
    self.Visible := false;
    self.ShowModal;
    result := GetCurrentRecord(cdDatos);
    result := _RegistroActual;
  Except
    on e:InteligentException do
      if e.Message <> '***' then
        raise
      else
      begin
        Result := Nil;
        Close;
      end;
  End;
end;

procedure TFrmCatalogo.WMWINDOWPOSCHANGING(var msg: TWMWINDOWPOSCHANGING);
var
  r: TRect;
  ancho, izquierdo, derecho: integer;
begin
  (*if ((SWP_NOMOVE or SWP_NOSIZE) and msg.WindowPos^.flags) <> (SWP_NOMOVE
    or SWP_NOSIZE) then
  begin
    {Window is moved or sized, get usable screen area}
    ancho := Form2.Panel2.Width;
    if self.FormStyle = fsMDIChild then    // Si es MDI, definir los limites de la ventana padre
    begin
      if Form2.Panel2.Left = 0 then  // el rectangulo esta a la izquierda
      begin
        r.Top := 0;
        r.Left := 0;
        r.Right := Form2.Width + self.Width;
        r.Bottom := Form2.Height + self.Height;
      end
      else
      begin
        r.top := 0;
        r.left := (-1) * self.Width;
        r.Right := Form2.Width;
        r.Bottom := Form2.Height + self.Height;
      end;
    end
    else  // Definir los limites de la pantalla "usable"
    begin
      SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
      if Form2.Panel2.Left = 0 then  // el rectangulo esta a la izquierda
      begin
        izquierdo := ancho;
        derecho := 0;
      end
      else  // el rectangulo esta a la derecha
      begin
        izquierdo := 0;
        derecho := ancho;
      end;
      r.Left := r.Left + izquierdo;
      r.Right := r.Right - derecho;
    end;
    {Obtener la posición de la barra y restarla a la parte disponible}
    {Check if operation would move part of the window out of this area.
                If so correct position and, if required, size, to keep window fully inside
                the workarea. Note that simply adding the SWM_NOMOVE and SWP_NOSIZE flags
                to the flags field does not work as intended if full dragging of windows is
                disabled. In this case the window would snap back to the start position instead
                of stopping at the edge of the workarea, and you could still move the
    drag rectangle outside that area. }
    with msg.WindowPos^ do
    begin
      if x < r.left then
        x := r.left;
      if y < r.top then
        y := r.top;
      if (x + cx) > r.right then
      begin
        x := r.right - cx;
        if x < r.left then
        begin
          cx := cx - (r.left - x);
          x := r.Left;
        end;
      end;
      if (y + cy) > r.bottom then
      begin
        y := r.bottom - cy;
        if y < r.top then
        begin
          cy := cy - (r.top - y);
          y := r.top;
        end;
      end;
    end;
  end;*)
  inherited;
end;

procedure TFrmCatalogo.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
  OldState: TWindowState;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := Self.Left;
  xTop := Self.Top;
  xWidth := Self.Width;
  xHeight := Self.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left', Existe));
    if Not Existe then xLeft := Self.Left;
  Except
    xLeft := Self.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top', Existe));
    if Not Existe then xTop := Self.Top;
  Except
    xTop := Self.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width', Existe));
    if Not Existe then xWidth := Self.Width;
  Except
    xWidth := Self.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height', Existe));
    if Not Existe then xHeight := Self.Height;
  Except
    xHeight := Self.Height;
  End;

  // Por default la ventana será tratada como Normal
  OldState := wsNormal;

  // Verificar si la ventana estaba maximizada al cerrarla la última vez
  if (xHeight = 0) or (xWidth = 0) then
    OldState := wsMaximized;

  if (xHeight = -10) or (xWidth = -10) then
    OldState := wsMinimized;

  // Posicionar la ventana en su último lugar
  Self.Left := xLeft;
  Self.Top := xTop;
  if OldState = wsNormal then
  begin
  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Width := xWidth;
  Self.Height := xHeight;
  end
  else
    Self.WindowState := OldState;
end;

procedure TFrmCatalogo.AdvShapeButton3Click(Sender: TObject);
  var PorAct:integer;
begin
  Cddatos.GetNextPacket;
  PorAct := Trunc(Multiplo * cdDatos.PacketRecords);
  if (Pbpaginacion.Position + PorAct) > 100  then
    Pbpaginacion.Position := 100
  else
    Pbpaginacion.Position := Pbpaginacion.Position + PorAct;
end;

procedure TFrmCatalogo.BtnImportarClick(Sender: TObject);
Var
  flcid, Fila, nPos    : Integer ;
  sValue,
  ImpsNumeroActividad,
  ImpsPaquete, Extra,
  ImpmDescripcion,
  ImpdCantidad,
  ImpdFecha, Tipo,
  DescripTabla         : String;
  ListaNecesarios,
  ListaLlave           : TStringList;
  TipoCampo            : Variant;
  Estructura           : TClientDataSet;
  NombreData           : String;
  Excel                : Variant;
  LocEstructura,
  LocForaneas,
  LocDestino           : TClientDataSet;
  LocName,
  LocFor,
  LocDes: String;
  Formato: Boolean;
  Ancho: Real;
  sType,
  CadForanea1,
  CadForanea2,
  CadForanea3: String;

Procedure Agregar(Estructura: TJvMemoryData; Llave, Nombre: String; pAncho: Real; pForanea1: String; pForanea2: String);
Begin
  Estructura.Append;
  Estructura.FieldByName('sIdLlave').AsString := Llave;
  Estructura.FieldByName('sNombre').AsString := Nombre;
  Estructura.FieldByName('iAncho').AsFloat := pAncho;
  Estructura.FieldByName('sForaneaTabla').AsString := pForanea1;
  Estructura.FieldByName('sForaneaCampo').AsString := pForanea2;
  Estructura.FieldByName('iColumna').AsInteger := Estructura.RecordCount + 1;
  Estructura.Post;
End;

begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'IMPORTARXLS') then
    Exit;

  ListaNecesarios := TStringList.Create;  // Lista de campos que deberá contener información de manera estricta
  ListaLlave := TStringList.Create;       // Lista de campos que son llave

  mdEstructura.Open;
  mdEstructura.EmptyTable;

  Try
    Try
      LocEstructura := TClientDataSet.Create(Nil);
      LocForaneas := TClientDataSet.Create(Nil);
      LocDestino := TClientDataSet.Create(Nil);

      CrearConjunto(LocEstructura, EntityName, LocName, ccSelect);
      CrearConjunto(LocForaneas, EntityName, LocFor, ccSelect);
      CrearConjunto(LocDestino, EntityName, LocDes, ccSelect);

      PonerSentenciaSQL(LocName, 'show full columns from ' + EntityName);
      LocEstructura.Open;

      PonerSentenciaSQL(LocFor, 'select ' +
                                'TABLE_SCHEMA, ' +
                                'TABLE_NAME, ' +
                                'COLUMN_NAME, ' +
                                'REFERENCED_TABLE_SCHEMA, ' +
                                'REFERENCED_TABLE_NAME, ' +
                                'REFERENCED_COLUMN_NAME ' +
                                'from information_schema.key_column_usage as kc ' +
                                'where kc.table_schema = ' + QuotedStr(Globales.Elemento('DATABASE').AsString) + ' and ' +
                                'kc.table_name = ' + QuotedStr(EntityName) + ' and ' +
                                'kc.referenced_table_schema is not null');
      LocForaneas.Open;

      PonerSentenciaSQL(LocDes, 'Select ' +
                                'b.TABLE_SCHEMA, ' +
                                'b.TABLE_NAME, ' +
                                'b.COLUMN_NAME, ' +
                                'b.REFERENCED_TABLE_SCHEMA, ' +
                                'b.REFERENCED_TABLE_NAME, ' +
                                'b.REFERENCED_COLUMN_NAME ' +
                                'from ' +
                                'information_schema.key_column_usage as b ' +
                                'where ' +
                                'b.table_schema = ' + QuotedStr(Globales.Elemento('DATABASE').AsString) + ' and ' +
                                'b.table_name = :Tabla and ' +
                                'b.constraint_name <> "PRIMARY" and ' +
                                'b.referenced_table_schema is null');

      while Not LocEstructura.Eof do
      begin
        sType := LocEstructura.FieldByName('Type').AsString;
        Ancho := 12;
        if AnsiCompareText(Copy(sType, 1, 7), 'varchar') = 0 then
        begin
          sType := Copy(sType, Pos('(', sType) + 1, Length(sType));
          if Pos(')', sType) > 0 then
            sType := Copy(sType, 1, Pos(')', sType) - 1);

          Try
            Ancho := StrToFloat(sType);
          Except
            Ancho := 12;
          End;
        end;

        if AnsiCompareText(Copy(sType, 1, 4), 'text') = 0 then
          Ancho := 80;

        // Verificar si este campo es una llave foranea
        CadForanea1 := '';
        CadForanea2 := '';
        CadForanea3 := '';
        if LocForaneas.Locate('column_name', LocEstructura.FieldByName('Field').AsString,[]) then
        begin
          CadForanea1 := LocForaneas.FieldByName('referenced_table_name').AsString;
          CadForanea2 := LocForaneas.FieldByName('referenced_column_name').AsString;

          // Localizar ahora el campo requerido
          LocDestino.Close;
          PonerSentenciaSQL(LocDes, 'Select ' +
                                    'b.TABLE_SCHEMA, ' +
                                    'b.TABLE_NAME, ' +
                                    'b.COLUMN_NAME, ' +
                                    'b.REFERENCED_TABLE_SCHEMA, ' +
                                    'b.REFERENCED_TABLE_NAME, ' +
                                    'b.REFERENCED_COLUMN_NAME ' +
                                    'from ' +
                                    'information_schema.key_column_usage as b ' +
                                    'where ' +
                                    'b.table_schema = ' + QuotedStr(Globales.Elemento('DATABASE').AsString) + ' and ' +
                                    'b.table_name = ' + QuotedStr(CadForanea1) + ' and ' +
                                    'b.constraint_name <> "PRIMARY" and ' +
                                    'b.referenced_table_schema is null');
          LocDestino.Open;
          if LocDestino.RecordCount = 0 then
          begin
            CadForanea1 := '';
            CadForanea2 := '';
          end
          else
            CadForanea3 := LocDestino.FieldByName('column_name').AsString;
        end;
        LocDestino.Close;

        // Evitar el campo que es llave primaria
        if LocEstructura.FieldByName('key').AsString <> 'PRI' then
        begin
          if LocEstructura.FieldByName('Comment').AsString = '' then
            Agregar(mdEstructura, LocEstructura.FieldByName('Field').AsString, '(' + LocEstructura.FieldByName('Field').AsString + ')', Ancho, CadForanea1, CadForanea3)
          else
            Agregar(mdEstructura, LocEstructura.FieldByName('Field').AsString, LocEstructura.FieldByName('Comment').AsString, Ancho, CadForanea1, CadForanea3);
        end;
        // Verificar si el campo es necesario
        if LocEstructura.FieldByName('NULL').AsString = 'NO' then
          ListaNecesarios.Add(LocEstructura.FieldByName('Field').AsString);

        LocEstructura.Next;
      End;
    Except
      Raise;
    End;
  Finally
    EliminarConjunto([LocEstructura.Name, LocForaneas.Name, LocDestino.Name]);
    LocEstructura.Destroy;
    LocForaneas.Destroy;
    LocDestino.Destroy;
  End;


  Try
    case BtnImportar.Tag of
      1: DescripTabla := 'CATÁLOGO DE ALMACENES';
      else
        DescripTabla := 'CATÁLOGO DESCONOCIDO';
    end;

    mdDeposito.FieldDefs.Clear;   // Limpiar la estructura de la tabla

    Try
      Estructura := TClientDataSet.Create(Nil);
      CrearConjunto(Estructura, EntityName, NombreData, ccCatalog);
      CargarDatosFiltrados(Estructura, KeyField, [-9]);
      Estructura.Open;

      mdDeposito.Close;
      nPos := 0;
      while nPos < Estructura.FieldDefs.Count do
      Begin
        mdDeposito.FieldDefs.Add(Estructura.FieldDefs.Items[nPos].Name, Estructura.FieldDefs.Items[nPos].DataType, Estructura.FieldDefs.Items[nPos].Size, False);

        Inc(nPos);
      End;

      mdDeposito.CreateDataSet;
      mdDeposito.Open;

      // Seleccionar tipo de formato a generar
      Try
        Application.CreateForm(TFrmSelFormato, FrmSelFormato);
        if FrmSelFormato.ShowModal = mrOk then
          Formato := FrmSelFormato.RadioGroup1.ItemIndex = 0;
      Finally
        FrmSelFormato.Destroy;
      End;

      // Proceder a seleccionar el archivo
      SaveXLS.Title := 'Generar formato vacio para captura de datos en EXCEL';
      SaveXLS.FileName := entityname;
      OpenXLS.Title := 'Importar información de captura previa en archivo de EXCEL';
      OpenXLS.FileName := entityName;
      If (Not Formato and OpenXLS.Execute) or (Formato and SaveXLS.Execute) then
      Begin
        // Generar el ambiente de excel para vaciar los datos de la gráfica
        Try
          Excel := CreateOleObject('Excel.Application');
        except
          raise Exception.Create('No se pudo crear el objeto EXCEL');
        End;

        Excel.Visible := False;
        Excel.DisplayAlerts := False;
        Excel.ScreenUpdating := False;

        if Formato then
        begin
          Excel.WorkBooks.Add;
          Excel.Visible := True;
          Excel.ScreenUpdating := True;
          mdEstructura.First;
          while Not mdEstructura.Eof do
          begin
            Excel.ActiveSheet.Range[ColumnaNombre(mdEstructura.RecNo) + '1', ColumnaNombre(mdEstructura.RecNo) + '1'].Value := mdEstructura.FieldByName('sNombre').AsString;
            Excel.ActiveSheet.Columns[mdEstructura.RecNo].ColumnWidth := mdEstructura.FieldByName('iAncho').AsFloat;

            mdEstructura.Next;
          end;

          Excel.ActiveWorkbook.SaveAs(SaveXLS.FileName);

          Excel.Application.WindowState := -4140;   // Minimizar excel para poder pareciar el dialogo
          InteliDialog.ShowModal('Proceso terminado', 'La generación del machote de captura de excel ha sido terminado correctamente', mtInformation, [mbOk], 0);
          Excel.Application.WindowState := -4143;   // Recuperar el tamaño de la ventana para mostrar el archivo de excel
        end
        else
        begin
          Excel.WorkBooks.Open(OpenXLS.FileName);

          // Revisar cuantas hojas tiene el libro
          Application.CreateForm(TFrmSelectSheet, FrmSelectSheet);
          FrmSelectSheet.ComboBox1.Clear;
          FrmSelectSheet.Excel := Excel;
          FrmSelectSheet.mdEstructura := mdEstructura;
          FrmSelectSheet.mdDeposito := mdDeposito;
          FrmSelectSheet.ListaNecesarios := ListaNecesarios;
          FrmSelectSheet.ListaLlave := ListaLlave;
          FrmSelectSheet.Excel := Excel;
          FrmSelectSheet.flcid := flcid;
          FrmSelectSheet.NombreTabla := EntityName;
          FrmSelectSheet.DescripTabla := DescripTabla;
          while FrmSelectSheet.Combobox1.Items.Count < Excel.ActiveWorkbook.Sheets.Count do
          Begin
            Excel.Sheets.Item[FrmSelectSheet.Combobox1.Items.Count + 1].Select;
            FrmSelectSheet.Combobox1.Items.Add(Excel.Sheets[FrmSelectSheet.Combobox1.Items.Count + 1].Name);
          End;
          FrmSelectSheet.ShowModal;
        End;
      End;
    Finally
      // Bloquear esta parte del código para que no genere errores provenientes de la aplicación externa (EXCEL)
      Try
        Excel.ScreenUpdating := True;
        Excel.Visible := True;

        if Not Formato then
          Excel.Quit;

        FreeAndNil(Excel);
      Except
        ;   // No hacer nada, solo es para no tener un error basura
      end;

      mdDeposito.Active := True;
      ListaNecesarios.Destroy;
      ListaLlave.Destroy;

      // Solo aplicar este código si se pudo crear el contenedor de la estructura
      if Assigned(Estructura) then
      begin
        Estructura.Close;
        EliminarConjunto(NombreData);
        Estructura.Destroy;
      end;
    End;
  Except
    on e:Exception do
      InteliDialog.ShowModal('No se ha podido levantar la información de ' + DescripTabla, 'No ha sido posible importar la información de ' + DescripTabla + ' debido a lo siguiente:' + #10 + #10 +
                             e.Message + #10 + #10 +
                             'Informe de esto al administrador del sistema.', MtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogo.BtnEditClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popUp: TFrmDatosCatalogo;
  SoloVer: boolean;
  OldCursor: TCursor;
  Terminar: Boolean;
  Resultado, RegC, RAct: Integer;
begin
  Repeat
    Terminar := True;

    if CdDatos.State = dsBrowse then
    Try
      if CdDatos.State <> dsBrowse then
        raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

      if DbGridPrincipal.RowCount < 1 Then
        raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

      if DbGridPrincipal.SelectedCount > 1 Then
        raise InteligentWarning.CreateByCode(25, [Self.ModuloPantalla]);

      //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
      if cdDatos.Active then
      begin
        SoloVer := true;   // por default se tiene que se puede ver la información
        // Checar si se puede editar
        if ClientModule1.LeePermisos(ModuloPantalla,'EDITAR',false) then
          SoloVer := False;
        Try
          cdUpt := TClientDataSet.Create(Nil);
          try
            cdUpt.RemoteServer := cdDatos.RemoteServer;
            // Acceder en modo update al usuario
            if Not CrearConjunto(cdUpt, entityName, ccUpdate) then
              raise InteligentConnection.CreateByCode(5, [Self.ModuloPantalla]);

            Try
              if not CargarDatosFiltrados(cdUpt, keyField, [cdDatos.FieldByName(keyField).AsInteger]) then
                raise InteligentConnection.CreateByCode(6, [Self.ModuloPantalla,cdDatos.FieldByName(keyField).AsString,keyField]);

              Try
                OldCursor := Screen.Cursor;
                Screen.Cursor := crSQLWait;

                cdUpt.Open;
              Finally
                Screen.Cursor := OldCursor;
              End;

              if cdUpt.RecordCount <> 1 then
                raise InteligentConnection.CreateByCode(3, [cdDatos.FieldByName(codeField).AsString, cdTexto + entityName]);

              if UsePaginacion then
                IdActual:= cdDatos.FieldByName(keyField).AsInteger; //el id a edita

              // Iniciar una transacción para editar el registro de manera protegida
              Try
                IniciarTransaccion;

                popUp := createPopUp;
                try
                  cdUpt.Edit;
                  popUp.dsDatos.DataSet := cdUpt;
                  popUp.keyField := KeyField;
                  popUp.CodeField := CodeField;
                  popUp.EntityName := EntityName;
                  case popUp.ShowModal of
                    mrCancel: raise InteligentException.Create('*');  // Solo para cambio de flujo de programa
                    mrAbort: raise InteligentException.Create('**');
                  end;

                  ConcretarTransaccion;   // Concreatar la transacción antes de refrescar la memoria de datos
                  cdDatos.Refresh;  // Refrescar los datos leidos
                  IdActual := -1;
                finally
                  FreeAndNil(popUp);
                end;

              Except
                on e:InteligentWarning do
                  Raise;

                on e:InteligentException do
                begin
                  CancelarTransaccion;  // Cancelar la transacción una cancelación del usuario y no mostrar mensaje alguno
                  if e.Message = '**' then
                    InteliDialog.ShowModal('El tiempo de espera máximo para mantener bloqueado un registro ha sido alcanzado',
                                           'Le recuerdo que no es posible mantener por mucho tiempo un registro en edición ya que otros usuarios del sistema podrían estar esperando el mismo registro.' + #10 + #10 +
                                           'Debido a lo anterior el sistema ha desbloqueado de manera automática el registro, disculpe las molestias que esto pudiera haberle ocasionado.', mtInformation, [mbOk], 0);
                end;

                on e:Exception do
                begin
                  CancelarTransaccion;  // Cancelar la transacción ante un error inesperado e informar al usuario
                  InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
                end;
              end;
            Finally
              EliminarConjunto(cdUpt);
            End;
          finally
            FreeAndNil(cdUpt);
          end;
        Except
          on e:InteligentException do
            InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', e.Message, mtError, [mbOk], 0);

          on e:InteligentConnection do
            InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

          on e:EOleException do
            case e.ErrorCode of
              -2147418113: Terminar := InteliDialog.ShowModal('El registro no puede ser editado', e.Message + #10 + #10 + '¿Desea reintentar editar el registro ahora?', mtInformation, [mbYes, mbNo], 0) = mrNo;
            else
              InteliDialog.ShowModal(IntToStr(e.ErrorCode) + ' - No se puede editar el registro', 'Este registro está siendo utilizado por otro usuario o en otra sesión del sistema.' + #10 + #10 + 'Espere a que el registro sea liberado e intente de nuevo más tarde.', mtError, [mbOk], 0);
            end;

          on e:exception do
            InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', e.Message, mtError, [mbOk], 0);
        End;
      end;
    Except
      on e:exception do
        InteliDialog.ShowModal('No se puede editar.',e.message, mtInformation, [mbOk], 0);
    End;
    RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
  Until Terminar;
end;

procedure TFrmCatalogo.BtnDeleteClick(Sender: TObject);
var
  CtaSel, CtaDel: Integer;
begin
  if CdDatos.State = dsBrowse then
  Try
    if CdDatos.State <> dsBrowse then
      raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

    if DbGridPrincipal.RowCount < 1 Then
      raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

    //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
    if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
      Exit;

    if ((DbGridPrincipal.SelectedCount = 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + cdDatos.FieldByName(CodeField).AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo)) or
       ((DbGridPrincipal.SelectedCount > 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá con el borrado de ' + IntToStr(DbGridPrincipal.SelectedCount) + ' registros' + #10 + #10 + '¿Desea borrar estos registros ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo)) then
      raise InteligentException.Create('Proceso cancelado por el usuario');

    CtaSel := DbGridPrincipal.SelectedCount;
    if UsePaginacion then
      IdActual := -1;
    CtaDel := BorrarRegistro(cdDatos, KeyField, brSelected);
    if CtaDel > 0 then
    begin
      cdDatos.Refresh;  // Si se ha podido eliminar un registro se deberá actualizar el grid

      // Informar del resultado del borrado de registros
      if CtaDel = 0 then
        InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar ningún registro de los seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
      else
        if CtaDel < CtaSel then
          InteliDialog.ShowModal('No se pudieron borrar todos los registros', 'Solamente ' + IntToStr(CtaDel) + ' registro(s) pudieron ser borrados de los ' + IntToStr(CtaSel) + ' que fueron seleccionados.' + #10 + #10 + 'Es probable que estos registros se encuentren relacionados con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
        else
          InteliDialog.ShowModal('Se borraron todos los registros seleccionados', 'El borrado de registros se ha terminado de manera satisfactoria.', mtWarning, [mbOk], 0);
    end;
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha eliminado ningún registro', e.message, mtWarning, [mbOk], 0);

    on e:InteligentException do
      ; // No hacer nada, solo es para cambiar el flujo del programa

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;

  RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
  RedrawWindow( form2.Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
end;

procedure TFrmCatalogo.BtnPrintClick(Sender: TObject);
var
 CdImprimir: Tclientdataset;
 opc: integer;
begin
  try
    if (length(trim(Reporte)) > 0) and (CompReporte <> nil) and (CompDatasetReporte <> nil) then
    begin
      if CdDatos.State <> dsBrowse then
        raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

      if DbGridPrincipal.RowCount < 1 Then
        raise InteligentWarning.CreateByCode(22, [Self.ModuloPantalla]);

      if DbGridPrincipal.SelectedCount > 1 Then
        raise InteligentWarning.CreateByCode(25, [Self.ModuloPantalla]);

      if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
        raise InteligentWarning.CreateByCode(24, ['No cuenta con permisos de impresión']);

      //si se esta usando la paginacion en el formulario entonces se debe
      //preguntar al usuario si se decea incluir todos los registros, si es necesario
      //se crea otra consulta para el puro reporte y traer todos los registros
      //en caso contrario se trabaja con el dataset creado para llenar el grid
      if (UsePaginacion) and (PBPaginacion.Position < 100)  then
      begin
        opc := InteliDialog.ShowModal('Usted está viendo sólo el '+inttostr(PBPaginacion.Position)+'% del total de los registros.', '¿Deséa usted que el reporte incluya el '+inttostr(100-PBPaginacion.Position)+'% restante de la información (puede que esto tome algunos minutos)?', mtInformation, [mbYes, mbNo, mbCancel], 0);
        case opc of
          mrYes :
            begin
              CdImprimir := TClientDataSet.Create(nil);
              try
                if not CrearConjunto(CdImprimir,entityName,ccCatalog) then
                  raise InteligentConnection.CreateByCode(5, [Self.ModuloPantalla]);

                try
                  CdImprimir.Open;
                  CompDatasetReporte.DataSet := CdImprimir;
                  ClientModule1.ImprimeReporte(Reporte,CompReporte);
                finally
                  EliminarConjunto(CdImprimir);
                end;

              finally
                FreeAndNil(CdImprimir);
              end;
            end;
          mrNo :
            begin
              CompDatasetReporte.DataSet := cdDatos;
              ClientModule1.ImprimeReporte(Reporte, CompReporte);
            end;
          mrCancel:
            begin
              ;
            end;
        end;
      end
      else
      begin
        CompDatasetReporte.DataSet := cdDatos;
        ClientModule1.ImprimeReporte(Reporte, CompReporte);
      end;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('No se puede imprimir por el siguiente motivo: ',e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCatalogo.BtnRefreshClick(Sender: TObject);
var
  OldCursor: TCursor;
begin
  if CdDatos.State = DsBrowse then
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      CdDatos.Refresh;
    Finally
      Screen.Cursor := OldCursor;
    End;
end;

procedure TFrmCatalogo.BtnSelectClick(Sender: TObject);
begin
  if CdDatos.State = dsBrowse then
  Try
    if DbGridPrincipal.RowCount < 1 Then
      raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

      _RegistroActual := TLista.Create();
      _RegistroActual := GetCurrentRecord(cdDatos);
      close;

  Except
  on e:exception do
    InteliDialog.ShowModal('No se puede seleccionar.',e.message, mtInformation, [mbOk], 0);
  End;
end;

procedure TFrmCatalogo.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCatalogo.BtnExportClick(Sender: TObject);
begin
  if CdDatos.State = dsBrowse then
  Try
    Try
      if DbGridPrincipal.RowCount < 1 Then
        Raise Exception.Create('No hay registros.');

      if not ClientModule1.LeePermisos(ModuloPantalla,'EXPORTARXLS') then
        Exit;

      ClientModule1.cdOrganizacion.Locate('idorganizacion', VarArrayOf([ClientModule1.cdAcceso.FieldByName('padre').AsString]),[]);
      ExportarExcel(cdDatos,Form2.cdImagen,DBGridPrincipal,Self.Caption,
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

procedure TFrmCatalogo.btnfn1Click(Sender: TObject);
begin
  Self.BtnSearch.Click;
end;

procedure TFrmCatalogo.FiltroInicial;
begin

end;

procedure TFrmCatalogo.ItemClick(Sender: TObject; Id: Integer);
Var
  Proc: TProc;
begin
  //Showmessage('you clicked on item nuber ' + inttostr(Id));
  if assigned(ListaProc) then
    ListaProc.Run(Id);
end;

procedure TFrmCatalogo.InitForm;
begin
  ; // Procedimiento para inicializar valores que se necesitan durante el create del objeto
end;

procedure TFrmCatalogo.AbreteSesamo(Var Combo: TComboBox; Descripcion: String);
var
  Marca: TBookmark;
begin
  Try
    cdDatos.DisableControls;
    Marca := cdDatos.Bookmark;

    cdDatos.First;
    Combo.Items.Clear;
    while not cdDatos.Eof do
    begin
      Combo.AddItem(cdDatos.FieldByName(Descripcion).AsString, TObject(cdDatos.FieldByName(KeyField).AsInteger));

      cdDatos.Next;
    end;
  Finally
    cdDatos.Bookmark := Marca;
    cdDatos.EnableControls;
  End;
end;

end.
