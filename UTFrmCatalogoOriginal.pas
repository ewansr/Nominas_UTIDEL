unit UTFrmCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, StdCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, Menus, ExtCtrls, DB, DBClient,
  UTFrmDatosCatalogo, NxGrid, xDatabase, NxCollection, URegistro, Uintelidialog,
  JvExControls, JvLabel, pngimage, JvComponentBase, JvDBGridExport, Grids,
  DBGrids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, jpeg, ExBar, ExBarClasses,
  tmsAdvGridExcel,tmsUFlxFormats, AdvShapeButton, frxClass, frxDBSet,
  JvMemoryDataset, ComObj, IdException, ComCtrls, DBXCommon, ImgList,
  UInfoPanel;

type
  TDatosForma = class
    Width, Height: Integer;
    Borde: TBorderIcons;
    Caption: String;
  End;

  TFrmCatalogo = class(TForm)
    PanelFiltro: TPanel;
    GroupBoxFiltro: TGroupBox;
    MainPopupMenu: TPopupMenu;
    MnAgregar: TMenuItem;
    MnEditar: TMenuItem;
    MnImprimir: TMenuItem;
    PanelPrincipal: TPanel;
    DBGridPrincipal: TNextDBGrid;
    Edit2: TEdit;
    PanelBarra: TPanel;
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    MnEliminar: TMenuItem;
    mnExport: TMenuItem;
    BtnClose: TAdvShapeButton;
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
    BtnSearch: TAdvShapeButton;
    PanelAdd: TPanel;
    BtnAdd: TAdvShapeButton;
    PanelEdit: TPanel;
    BtnEdit: TAdvShapeButton;
    PanelDelete: TPanel;
    BtnDelete: TAdvShapeButton;
    PanelRefresh: TPanel;
    BtnRefresh: TAdvShapeButton;
    PanelPrint: TPanel;
    BtnPrint: TAdvShapeButton;
    PanelExport: TPanel;
    BtnExport: TAdvShapeButton;
    PanelImport: TPanel;
    btnImportar: TAdvShapeButton;
    PanelSelect: TPanel;
    BtnSelect: TAdvShapeButton;
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
    procedure BtnAddClick(Sender: TObject);
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
  private
    _RegistroActual: TLista;
    bandera: boolean;
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
    entityName: string;
    codeField: string;
    Reporte: string;
    AbrirPantalla: boolean;
    FExBar: TExBar;
    CrearBarraEx: Boolean;
    ListaProc: TStringListX;
    function createPopUp: TFrmDatosCatalogo; Virtual;
    procedure abrir;
    procedure FiltroInicial; virtual;
    procedure InitForm; virtual;
  public
    { Public declarations }
    ModoSeleccion: Boolean;
    NombreConjunto: String;
    ForzarSalir: Boolean;
    Filtro: string;
    function SeleccionarItem(): TLista;
    procedure AlineaBotones(Espaciado: Integer);
  end;

var
  FrmCatalogo: TFrmCatalogo;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, Unit2, UTFrmSelFormato, frm_SelectSheet, ExportaExcel;

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

procedure TFrmCatalogo.abrir;
begin
  Try
    Try
      cdDatos.Close;
      if not CrearConjunto(cdDatos, EntityName, ProviderName, ccCatalog) then
        raise InteligentConnection.CreateByCode(2, ['No se pudo crear el acceso de datos para la tabla ' + EntityName]);

      if Not CargarDatosFiltrados(cdDatos, keyfield, [-9]) then
        raise InteligentConnection.CreateByCode(2, ['No se pudo acceder a la estructura de la tabla ' + EntityName]);

      cdDatos.Open;

      if (Assigned(cdDatos.FieldDefs.Find(KeyField))) and (Not (pfInKey in cdDatos.FieldByName(KeyField).ProviderFlags)) then
        cdDatos.FieldByName(KeyField).ProviderFlags := cdDatos.FieldByName(KeyField).ProviderFlags + [pfInKey];

      if ModoSeleccion then
        FiltroInicial;
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

procedure TFrmCatalogo.BtnAddClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popUp: TFrmDatosCatalogo;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'AGREGAR') then
    Exit;
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
    Try
      CrearConjunto(cdUpt, entityName, providerNameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, keyField, [-9]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 0 then
      begin
        popUp := createPopUp;
        cdUpt.Append;
        cdUpt.FieldByName(keyField).AsInteger := 0;
          popUp.dsDatos.DataSet := cdUpt;
          popup.keyField := keyfield;
        if popUp.ShowModal = mrOk then
        begin
          //cdUpt.ApplyUpdates(-1);
          cdDatos.Refresh;
        end
        else
        begin
          cdDatos.Cancel;
        end;
      end
      else
      begin
        raise InteligentException.CreateByCode(3, ['!' + entityName +'']);
      end;
    Finally
      EliminarConjunto(providerNameUpt);
      popUp.Free;
    End;
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

procedure TFrmCatalogo.DBGridPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    DbGridPrincipal.SelectCell(2,DBGridPrincipal.SelectedRow,[ssShift],False);
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
begin
  if Not ForzarSalir then
  begin
    Repite := False;
    Repeat
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
            mrCancel: Abort;
            mrAbort: begin ForzarSalir := True; Close; end;  // No hacer nada, dejar que se cierre la ventana
          end;
        end;
      end;
    Until Not Repite;
  end;

  // Guardar el ancho del panel izquierdo
  if FExBar <> Nil then
    SetRegistry('\Ventanas', '\' + Self.Name, 'LeftPanelWidth', IntToStr(FExBar.Width));

  // Registrar los datos de las columnas
  for h := 0 to DBGridPrincipal.Columns.Count -1 do
    SetRegistry('\Ventanas', '\' + Self.Name, DBGridPrincipal.Columns.Item[h].Name, IntToStr(DBGridPrincipal.Columns.Item[h].Width));

  Action := caFree;
end;

procedure TFrmCatalogo.FormCreate(Sender: TObject);
var
  DatosForma: TDatosForma;
  i: integer;
begin
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

  Try
    ForzarSalir := True;

    if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    begin
      AbrirPantalla := false;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      exit;
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


{    // Verificar si el usuario tiene permisos
    if Not ClientModule1.cdPermiso.Active then
      raise InteligentException.Create('Debido a que no se localizaron los datos correspondientes a los permisos de usuario');

    // Seleccionar todos los permisos correspondientes a esta ventana
    ListaPermisos := TStringList.Create;
    ListaPermisos.Clear;
    if ClientModule1.cdpermiso.Locate('CodigoPantalla', Self.Name, []) then
      Repeat
        ListaPermisos.AddObject(ClientModule1.cdPermiso.FieldByName('IdPermiso').AsString, TObject(ClientModule1.cdpermiso.RecNo));
        ClientModule1.cdpermiso.Next;
      Until ClientModule1.cdpermiso.Eof or (ClientModule1.cdpermiso.FieldByName('CodigoPantalla').AsString <> Self.Name);
 }
    Self.Width := DatosForma.Width;
    Self.Height := DatosForma.Height;
    Self.BorderIcons := DatosForma.Borde;
    Self.Caption := DatosForma.Caption;

    AccedeACoordenadas;

  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No se puede acceder a la ventana solicitada', e.message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
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
  if (TipoCliente = '1') or (TipoCliente = '3')  then
  if self.Height > Form2.Height-65-form2.tbmain.Height then
    self.Height := Form2.Height-65-form2.tbmain.Height;
  if (TipoCliente = '0') or (TipoCliente = '2')  then
  if self.Height > Form2.Height-40 then
    self.Height := Form2.Height-40;
end;

procedure TFrmCatalogo.FormShow(Sender: TObject);
var
  h: Integer;
begin
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

function TFrmCatalogo.SeleccionarItem: TLista;
begin
  bandera := true;
  ModoSeleccion := true;
  self.FormStyle := fsNormal;
  self.Visible := false;
  self.ShowModal;
  result := GetCurrentRecord(cdDatos);
  result := _RegistroActual;
end;

procedure TFrmCatalogo.WMWINDOWPOSCHANGING(var msg: TWMWINDOWPOSCHANGING);
var
  r: TRect;
  ancho, izquierdo, derecho: integer;
begin
  if ((SWP_NOMOVE or SWP_NOSIZE) and msg.WindowPos^.flags) <> (SWP_NOMOVE
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
  end;
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
begin
  if CdDatos.State = dsBrowse then
  Try
    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');
   //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
    if cdDatos.Active then
    begin
      SoloVer := true;   // por default se tiene que se puede ver la información
      // Checar si se puede editar
      if ClientModule1.LeePermisos(ModuloPantalla,'EDITAR',false) then
        SoloVer := False;
      Try
        cdUpt := TClientDataSet.Create(Nil);
        cdUpt.RemoteServer := cdDatos.RemoteServer;
        // Acceder en modo update al usuario
        Try
          if Not CrearConjunto(cdUpt, entityName, ccUpdate) then
            raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');

          CargarDatosFiltrados(cdUpt, keyField, [cdDatos.FieldByName(keyField).AsInteger]);
          Try
            OldCursor := Screen.Cursor;
            Screen.Cursor := crSQLWait;

            cdUpt.Open;
          Finally
            Screen.Cursor := OldCursor;
          End;
          if cdUpt.RecordCount = 1 then
          begin
            popUp := createPopUp;
            cdUpt.Edit;
            popUp.dsDatos.DataSet := cdUpt;
            if popUp.ShowModal = mrOk then
            begin
              //cdUpt.ApplyUpdates(-1);
              cdDatos.Refresh;
            end
            else
            begin
              cdDatos.Cancel;
            end;
          end
          else
          begin
            raise InteligentConnection.CreateByCode(3, [cdDatos.FieldByName(codeField).AsString, cdTexto + entityName]);
          end;
        Finally
          if cdUpt.ProviderName <> '' then
            EliminarConjunto(cdUpt);

          popUp.Free;
        End;
      Except
        on e:InteligentException do
          InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', e.Message, mtError, [mbOk], 0);

        on e:InteligentConnection do
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

        on e:EOleException do
          case e.ErrorCode of
            -2147418113: InteliDialog.ShowModal('No se puede editar el registro', 'Este registro está siendo utilizado por otro usuario o en otra sesión del sistema.' + #10 + #10 + 'Espere a que el registro sea liberado e intente de nuevo más tarde.', mtError, [mbOk], 0);
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
end;

procedure TFrmCatalogo.BtnDeleteClick(Sender: TObject);
var
  CtaSel, CtaDel: Integer;
begin
  if CdDatos.State = dsBrowse then
  Try
    if CdDatos.RecordCount < 1 Then
      Raise InteligentWarning.Create('No se han seleccionado registros que puedan ser eliminados, utilice las opciones de la parte superior llamada ''filtros'' para especificar los registros que desea consultar antes de poder seleccionar los registros a eliminar.');

    if DbGridPrincipal.SelectedCount < 1 Then
      Raise InteligentWarning.Create('Se debe seleccionar al menos un registro para que pueda ser borrado');

    //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
    if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
      Exit;

    if ((DbGridPrincipal.SelectedCount = 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + cdDatos.FieldByName(CodeField).AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo)) or
       ((DbGridPrincipal.SelectedCount > 1) and (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá con el borrado de ' + IntToStr(DbGridPrincipal.SelectedCount) + ' registros' + #10 + #10 + '¿Desea borrar estos registros ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo)) then
      raise InteligentException.Create('Proceso cancelado por el usuario');

    CtaSel := DbGridPrincipal.SelectedCount;
    CtaDel := BorrarRegistro(cdDatos, brSelected);
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
      Raise Exception.Create('No hay registros.');

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

end.
