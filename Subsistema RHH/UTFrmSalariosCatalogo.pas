unit UTFrmSalariosCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, Grids, DBGrids, DB, DBClient, UInteliDialog,
  NxCollection, ExtCtrls, Menus, frxClass, frxDBSet, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExBar,
  URegistro, JvExControls, JvLabel, AdvShapeButton,xDatabase, StdCtrls, DBCtrls,
  AdvGlowButton;

type
  TFrmSalariosCatalogo = class(TForm)
    cdSalarios: TClientDataSet;
    dsSalarios: TDataSource;
    CdModificacionSalario: TClientDataSet;
    DsModificacionSalario: TDataSource;
    frxsalario: TfrxReport;
    frxReportesalario: TfrxDBDataset;
    cdCargos: TClientDataSet;
    frxReporteCargos: TfrxDBDataset;
    frxCargos: TfrxReport;
    MemorySalarios: TClientDataSet;
    cdCompSal: TClientDataSet;
    cdCompSalDetalle: TClientDataSet;
    Panel2: TPanel;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    cdpersonalDepen: TClientDataSet;
    frxReportePersonalDepen: TfrxDBDataset;
    frxPersonalDepen: TfrxReport;
    frxPuestoGenDep: TfrxReport;
    frxReportePuestoGenDep: TfrxDBDataset;
    cdConcepto: TClientDataSet;
    frxInformeGeneral: TfrxReport;
    frxReporteInformeGeneral: TfrxDBDataset;
    dspersonalDepen: TDataSource;
    frxDBMenSal: TfrxDBDataset;
    cdSalarioTotal: TClientDataSet;
    frxDBSalTotal: TfrxDBDataset;
    NxDBTextColumn5: TNxDBTextColumn;
    btnBtnSelect: TAdvShapeButton;
    cdDatos: TClientDataSet;
    Panel3: TPanel;
    cdTipoNomina: TClientDataSet;
    cdGrupoSalario: TClientDataSet;
    Panel4: TPanel;
    Panel5: TPanel;
    cbTiposNomina: TComboBox;
    cbGrupoSalario: TComboBox;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Btn_Buscar: TAdvGlowButton;
    Panel9: TPanel;
    cdOrganizacion: TClientDataSet;
    cbOrganizacion: TComboBox;
    JvLabel3: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Refrescar(DataSet: TClientDataSet);
    procedure frxsalarioDblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure NextDBGrid1CellFormating(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure cdSalariosAfterOpen(DataSet: TDataSet);
    procedure cdSalariosAfterRefresh(DataSet: TDataSet);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnBtnSelectClick(Sender: TObject);
    procedure cbTiposNominaChange(Sender: TObject);
    procedure Btn_BuscarClick(Sender: TObject);
    procedure cdSalariosAfterClose(DataSet: TDataSet);
    procedure cbOrganizacionChange(Sender: TObject);
    procedure cbGrupoSalarioChange(Sender: TObject);
  private
    FExSplitter: TSplitter;
    FExBar: TExBar;
    _RegistroActual: TLista;
    bandera: boolean;
    procedure ItemClick(Sender: TObject; Id: Integer);
    procedure CargarDatos;
    function EditarRegistro: Boolean;
  public
    AbrirPantalla: boolean;
    ModoSeleccion: Boolean;
    function SeleccionarItem(): TLista;
  protected
    ModuloPantalla: string;
  end;

var
  FrmSalariosCatalogo: TFrmSalariosCatalogo;

implementation

uses
  UTFrmHistorialSalario, UTFrmEstadoModificacion, UTFrmNuevoSalario,
  UTFrmModificacionSalario, UTFrmAgregarConcepto, UInfoPanel, UTFrmDatosCargo;

{$R *.dfm}

procedure TFrmSalariosCatalogo.Refrescar(DataSet: TClientDataSet);
var
  OldCursor: TCursor;
begin
  if DataSet.Active then
  Try
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    DataSet.Refresh;
  Finally
    Screen.Cursor := OldCursor;
  End;
end;

function TFrmSalariosCatalogo.SeleccionarItem: TLista;
begin
  Try
   { if not AbrirPantalla then
      raise InteligentException.Create('***');}

    bandera := true;
    ModoSeleccion := true;
    self.FormStyle := fsNormal;
    self.Visible := false;
    self.ShowModal;
    result := GetCurrentRecord(MemorySalarios);
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

procedure TFrmSalariosCatalogo.btnBtnSelectClick(Sender: TObject);
begin
  if MemorySalarios.State = dsBrowse then
  Try
    if NextDbGrid1.Datasource.Dataset.RecordCount < 1 Then
      raise InteligentWarning.CreateByCode(26, [Self.ModuloPantalla]);

      _RegistroActual := TLista.Create();
      _RegistroActual := GetCurrentRecord(MemorySalarios);
      close;

  Except
  on e:exception do
    InteliDialog.ShowModal('No se puede seleccionar.',e.message, mtInformation, [mbOk], 0);
  End;
end;

procedure TFrmSalariosCatalogo.Btn_BuscarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    if cbTiposNomina.ItemIndex < 0 then
    begin
      cbTiposNomina.SetFocus;
      raise InteligentException.CreateByCode(11, ['Salarios, para ello es necesario seleccionar un Tipo de Nómina en la parte superior de esta ventana.']);
    end;

    if (cbGrupoSalario.Enabled) and (cbGrupoSalario.ItemIndex < 0) then
    begin
      cbGrupoSalario.SetFocus;
      raise InteligentException.CreateByCode(11, ['Salarios, para ello es necesario seleccionar un Grupo de Salario en la parte superior de esta ventana.']);
    end;

    Try
      Screen.Cursor := crAppStart;
      cdSalarios.Close;
      cdModificacionSalario.Close;

      if cbTiposNomina.ItemIndex = 0 then
      begin
        if Not CargarDatosFiltrados(cdSalarios, 'IdTipoNomina', ['Null']) then
          raise InteligentException.CreateByCode(6, ['Salarios', cdOrganizacion.FieldByName('IdOrganizacion').AsString + '/' + cdTipoNomina.FieldByName('IdTipoNomina').AsString, 'Id. Organizacion / Id. Tipo de Nómina'])
      end
      else
        if Not CargarDatosFiltrados(cdSalarios, 'IdOrganizacion,IdTipoNomina,IdGrupoSalario,SortSalario', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, cdGrupoSalario.FieldByName('IdGrupoSalario').AsInteger, 1]) then
          raise InteligentException.CreateByCode(6, ['Salarios', cdOrganizacion.FieldByName('IdOrganizacion').AsString + '/' + cdTipoNomina.FieldByName('IdTipoNomina').AsString + '/' + cdGrupoSalario.FieldByName('IdGrupoSalario').AsString, 'Id. Organizacion / Id. Tipo de Nómina / Id. Grupo Salarios']);

      cdSalarios.Open;

      if cdSalarios.RecordCount > 0 then
      begin
        if cbTiposNomina.ItemIndex = 0 then
        begin
          if Not CargarDatosFiltrados(cdModificacionSalario, 'IdTipoNomina', ['Null']) then
            raise InteligentException.CreateByCode(6, ['Modificaciones de Salario', cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, 'Id. Tipo de Nómina']);
        end
        else
          if Not CargarDatosFiltrados(cdModificacionSalario, 'IdTipoNomina,IdGrupoSalario', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, cdGrupoSalario.FieldByName('IdGrupoSalario').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Modificaciones de Salario', cdTipoNomina.FieldByName('IdTipoNomina').AsString + '/' + cdGrupoSalario.FieldByName('IdGrupoSalario').AsString, 'Id. Tipo de Nómina / Id. Grupo Salarios']);

        cdModificacionSalario.Open;
      end
      else
        InteliDialog.ShowModal('No existen registros', 'No se han localizado registros de Salario de acuerdo al criterio indicado...', mtInformation, [mbOk], 0);
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      cdSalarios.Close;
      cdModificacionSalario.Close;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      cdSalarios.Close;
      cdModificacionSalario.Close;
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmSalariosCatalogo.CargarDatos;
var
  FieldName: String;
  Integrado: Extended;
begin
  if MemorySalarios.Active  then
  begin
    // Recargar todos los registros nuevamente
    while MemorySalarios.RecordCount > 0 do
      MemorySalarios.Delete;

    cdSalarios.First;
    while Not cdSalarios.Eof do
    begin
      MemorySalarios.Append;
      MemorySalarios.FieldByName('IdLlave').AsInteger := cdSalarios.FieldByName('IdLlave').AsInteger;
      MemorySalarios.FieldByName('IdSalario').AsInteger := cdSalarios.FieldByName('IdSalario').AsInteger;
      MemorySalarios.FieldByName('CodigoSalario').AsString := cdSalarios.FieldByName('CodigoSalario').AsString;
      MemorySalarios.FieldByName('TituloSalario').AsString := cdSalarios.FieldByName('TituloSalario').AsString;
      MemorySalarios.FieldByName('IdMoneda').AsInteger := cdSalarios.FieldByName('IdMoneda').AsInteger;
      MemorySalarios.FieldByName('Salario').AsFloat := cdSalarios.FieldByName('Salario').AsFloat;
      MemorySalarios.FieldByName('SalarioInt').AsFloat := cdSalarios.FieldByName('Salario').AsFloat;
      MemorySalarios.FieldByName('TituloMoneda').AsString := cdSalarios.FieldByName('TituloMoneda').AsString;
      MemorySalarios.FieldByName('FechaAplicacion').AsDateTime := cdSalarios.FieldByName('FechaAplicacion').AsDateTime;
      MemorySalarios.FieldByName('IdSalarioPendiente').AsInteger := cdSalarios.FieldByName('IdSalarioPendiente').AsInteger;
      MemorySalarios.FieldByName('CuentaCargos').AsInteger := cdSalarios.FieldByName('CuentaCargos').AsInteger;
      MemorySalarios.FieldByName('TipoSalario').AsString := cdSalarios.FieldByName('TipoSalario').AsString;

      CargarDatosFiltrados(cdCompSalDetalle, 'IdSalario', [cdSalarios.FieldByName('IdSalario').AsInteger]);
      cdCompSalDetalle.Refresh;
      Integrado := MemorySalarios.FieldByName('Salario').AsFloat;
      While Not cdCompSalDetalle.Eof do
      begin
        FieldName := 'ID_' + cdCompSalDetalle.FieldByName('IdCompSal').AsString;
        if Assigned(MemorySalarios.FieldDefs.Find(FieldName)) then
        begin
          MemorySalarios.FieldByName(FieldName).AsFloat := cdCompSalDetalle.FieldByName('Importe').AsFloat;
          Integrado := Integrado + cdCompSalDetalle.FieldByName('Importe').AsFloat;
        end;

        cdCompSalDetalle.Next;
      end;
      MemorySalarios.FieldByName('SalarioInt').AsFloat := Integrado;

      MemorySalarios.Post;

      cdSalarios.Next;
    end;

    MemorySalarios.First;
  end;
end;

procedure TFrmSalariosCatalogo.cbGrupoSalarioChange(Sender: TObject);
begin
  if cbGrupoSalario.ItemIndex >= 0 then
    cdGrupoSalario.Locate('IdGrupoSalario', Integer(cbGrupoSalario.Items.Objects[cbGrupoSalario.ItemIndex]), []);
end;

procedure TFrmSalariosCatalogo.cbOrganizacionChange(Sender: TObject);
begin
  cdOrganizacion.RecNo := cbOrganizacion.ItemIndex +1;
  cdSalarios.Close;
end;

procedure TFrmSalariosCatalogo.cbTiposNominaChange(Sender: TObject);
begin
  cbGrupoSalario.Items.Clear;
  cdSalarios.Close;

  if cbTiposNomina.ItemIndex > 0 then
  begin
    cdTipoNomina.RecNo := cbTiposNomina.ItemIndex;
    cdGrupoSalario.Filtered := False;
    cdGrupoSalario.Filter := 'IdTipoNomina = ' + cdTipoNomina.FieldByName('IdTipoNomina').AsString;
    cdGrupoSalario.Filtered := True;
    cdGrupoSalario.First;
    while not cdGrupoSalario.Eof do
    begin
      cbGrupoSalario.Items.AddObject(cdGrupoSalario.FieldByName('TituloGrupoSalario').AsString, TObject(cdGrupoSalario.FieldByName('IdGrupoSalario').AsInteger));

      cdGrupoSalario.Next;
    end;
    cbGrupoSalario.Enabled := True;
  end
  else
  begin
    cbGrupoSalario.Enabled := False;
  end;
end;

procedure TFrmSalariosCatalogo.cdSalariosAfterClose(DataSet: TDataSet);
begin
  while MemorySalarios.RecordCount > 0 do
    MemorySalarios.Delete;
end;

procedure TFrmSalariosCatalogo.cdSalariosAfterOpen(DataSet: TDataSet);
begin
  CargarDatos;
end;

procedure TFrmSalariosCatalogo.cdSalariosAfterRefresh(DataSet: TDataSet);
begin
  CargarDatos;
end;

procedure TFrmSalariosCatalogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
  EliminarConjunto([cdSalarios, cdModificacionSalario, cdOrganizacion, cdCargos, cdGrupoSalario, cdCompSalDetalle, cdCompSal, cdpersonalDepen, cdConcepto]);
end;

procedure TFrmSalariosCatalogo.FormCreate(Sender: TObject);
var
  OldCursor: TCursor;
  i: Integer;
begin
  Try
    ClientModule1.ComponentColor(self);
    // Crear el splitter de ancho de panel izquierdo
    FExSplitter := TSplitter.Create(self);
    FExSplitter.Parent := Self;
    FExSplitter.Align := alLeft;

    // Crear el panel izquierdo
    FExBar := TExBar.Create(self);

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

      // Crear el grupo "Archivo"
      with FExBar.ExGroups.Add('Salarios', True) do
      begin
        //State := gsClosed;
        AddMenuItem('Capturar Nuevo Salario...', 'Capturar Nuevo Salario', 0, 3);
        AddMenuItem('Eliminar Salario', 'Eliminar Salario', 1, 9);
        AddLine('', clBlack, [], False);
        AddMenuItem('Definición concepto salario', 'Definicion de concepto del salario', 2, 3);
        AddMenuItem('Imprimir Catálogo de Salarios', 'Imprimir Catálogo General de Salarios', 3, 8);
      end;

      with FExBar.ExGroups.Add('Modificacion', True) do
      begin
        //GroupIconIndex := 3;
        AddMenuItem('Modificación General de Salario', 'Haga click aquí para la modificación general de salario', 4, 2);
        AddMenuItem('Consultar estado de modificaciones', 'Haga click aquí para consultar el estado de las modificaciones', 5, 2);
      end;

      with FExBar.ExGroups.Add('Opciones', True) do
      begin
        AddMenuItem('Historial de Salario', 'Haga click aquí para consultar el historial de salario', 6, 2);
        AddMenuItem('Consulta general de Puestos dependientes', 'Haga click aquí para consulta general depuesto dependientes', 7, 2);
        AddMenuItem('Consulta de Personal dependiente del Salario', 'Haga click aquí para consulta de personal dependiente del salario', 8, 2);
      end;

      EndUpdate;
      ShowAnimate;
    end;

    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      if Not CrearConjunto(cdGrupoSalario, 'nom_gruposalario', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Grupos de Salario']);

      if Not CrearConjunto(cdSalarios, 'rhu_salario', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Salarios']);

      if Not CrearConjunto(cdModificacionSalario, 'rhu_salario_pendiente', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Salarios']);
      if Not CargarDatosFiltrados(CdModificacionSalario, 'IdLlave', [-9]) then
        raise InteligentException.CreateByCode(6, ['Cargos', cdSalarios.FieldByName('CodigoSalario').AsString, 'Código de Salario']);

      if Not CrearConjunto(cdCargos, 'nuc_cargo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Cargos']);

      if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Organización']);
      if Not CargarDatosFiltrados(cdOrganizacion, 'Padre', [-5]) then
        raise InteligentException.CreateByCode(6, ['Organizacion', -5, 'Padre']);

      if Not CrearConjunto(cdCompSalDetalle, 'rhu_compsaldetalle', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Componentes de Salario']);
      if Not CargarDatosFiltrados(cdCompSalDetalle, 'IdSalario', [-9]) then
        raise InteligentException.CreateByCode(16, ['Detalle de Componentes de Salario']);

      cdOrganizacion.Open;
      cbOrganizacion.Items.Clear;
      i := -1;
      while not cdOrganizacion.Eof do
      begin
        cbOrganizacion.Items.Add(cdOrganizacion.FieldByName('NombreOrganizacion').AsString);
        if cdOrganizacion.FieldByName('IdOrganizacion').AsInteger = Globales.Elemento('IdOrganizacion').AsInteger then
          i := cbOrganizacion.Items.Count -1;

        cdOrganizacion.Next;
      end;

      if cbOrganizacion.Items.Count > 0 then
      begin
        if i >= 0 then
          cbOrganizacion.ItemIndex := i
        else
          cbOrganizacion.ItemIndex := 0;
      end;

      cdGrupoSalario.Open;

      cdTipoNomina.Open;
      if cdTipoNomina.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Tipos de Nómina']);

      cbTiposNomina.Items.Clear;
      cbTiposNomina.Items.Add('< Generales >');
      while Not cdTipoNomina.Eof do
      begin
        cbTiposNomina.Items.Add(cdTipoNomina.FieldByName('Titulo').AsString);

        cdTipoNomina.Next;
      end;

      cdCompSalDetalle.Open;

      if Not CrearConjunto(cdCompSal, 'rhu_compsal', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Componentes de Salario']);
      cdCompSal.Open;

      // Modificar las columnas del dataset de memoria para incluir los componentes del salario
      while Not cdCompsal.Eof do
      begin
        MemorySalarios.FieldDefs.Add('ID_' + cdCompSal.FieldByName('IdCompSal').AsString, ftFloat, 0, False);
        NextDBGrid1.Columns.Add(TNxDBNumberColumn, cdCompSal.FieldByName('TituloCompSal').AsString);
        NextDBGrid1.Columns[NextDBGrid1.Columns.Count -1].FieldName := 'ID_' + cdCompSal.FieldByName('IdCompSal').AsString;
        TNxDBNumberColumn(NextDBGrid1.Columns[NextDBGrid1.Columns.Count -1]).FormatMask := '$###,###,###,###,##0.00##########';
        TNxDBNumberColumn(NextDBGrid1.Columns[NextDBGrid1.Columns.Count -1]).Header.Alignment := taRightJustify;

        cdCompSal.Next;
      end;
      MemorySalarios.CreateDataSet;

{      cdSalarios.Open;
      cdModificacionSalario.Open;}
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmSalariosCatalogo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  OldCursor: TCursor;
begin
  if (Not (ssShift in Shift)) and (Not (ssAlt in Shift)) and (Not (ssCtrl in Shift)) then
    case Key of
      27: Close;
      116: Refrescar(cdSalarios);
    end;

  if (ssCtrl in Shift) and (ssAlt in Shift) and (Key = 69) then
    EditarRegistro;
end;

procedure TFrmSalariosCatalogo.FormShow(Sender: TObject);
begin
  AccedeACoordenadas(Self);
  btnbtnSeLect.visible := ModoSeleccion;
end;

procedure TFrmSalariosCatalogo.frxsalarioDblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
    LocName : string;
begin
  try
    //if (ssCtrl in Shift) and (Button = mbLeft) and (Sender.TagStr <> '') then
    if (Button = mbLeft) and (Sender.TagStr <> '') then
    begin


        LocName := ExtractFilePath(Application.ExeName) + 'Reportes\frmSalario-Cargo.fr3';
        if FileExists(LocName) then
        begin
          frxCargos.LoadFromFile(LocName);
          frxCargos.ShowReport(TRUE);
        end
        else
        begin
          InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
        end;

      end;
  except
  on e:exception do
    InteliDialog.ShowModal('Error al Imprimir Vale de Resguardo ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmSalariosCatalogo.NextDBGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  Marca: TBookMark;
begin
  if EditarRegistro then
  begin
    Marca := cdSalarios.BookMark;
    Refrescar(cdSalarios);

    Try
    //if cdSalarios.BookmarkValid(Marca) then
      cdSalarios.GotoBookMark(Marca);
    Except

    End;
  end;
end;

procedure TFrmSalariosCatalogo.NextDBGrid1CellFormating(Sender: TObject; ACol,
  ARow: Integer; Value: WideString; var TextColor: TColor;
  var FontStyle: TFontStyles; CellState: TCellState);
begin
  if TNextDbGrid(Sender).DataSource.DataSet.FieldByName('IdSalarioPendiente').AsInteger > 0 then
    TextColor := clMaroon
  else
    TextColor := clBlack;

  if ACol = 4 then
    FontStyle := [fsBold];
end;

function TFrmSalariosCatalogo.EditarRegistro: Boolean;
var
  Resultado: Boolean;
begin
  Resultado := False;
  Try
    Try
      if NextDBGrid1.DataSource.DataSet.RecordCount <= 0 then
        Raise Exception.Create('*');

      if NextDbGrid1.DataSource.DataSet.FieldByName('IdSalarioPendiente').AsInteger > 0 then
        Raise Exception.Create('Se encuentra en un estado de modificacion pendiente de Autorizar.');

      Application.CreateForm(TFrmNuevoSalario, FrmNuevoSalario);
      FrmNuevoSalario.IdLlave := NextDBGrid1.DataSource.DataSet.FieldByName('IdSalario').AsInteger;
      FrmNuevoSalario.CodigoLlave := NextDBGrid1.DataSource.DataSet.FieldByName('CodigoSalario').AsString;
      Resultado := FrmNuevoSalario.ShowModal = mrOk;
    Except
      on e:Exception do
      begin
        Resultado := False;
        if e.Message <> '*' then
          InteliDialog.ShowModal('No se puede editar el salario', e.Message, mtWarning, [mbOk], 0);
      end;
    End;
  Finally
    Result := Resultado;
  End;
end;

procedure TFrmSalariosCatalogo.ItemClick(Sender: TObject; Id: Integer);
var
  Eliminar: TClientDataSet;
  Cursor: TCursor;
  Numrec,
  DiasFestivos: Integer;
begin
  Try
    case Id of
      0: begin
            // Nuevo salario
            if (cbTiposNomina.ItemIndex < 0) or (Not cdSalarios.Active) then
              raise InteligentException.CreateByCode(29, ['Debe seleccionar un Tipo de Nómina en donde se va a asignar el nuevo salario.']);

            // Verificar cuantos dias festivos se manejan
            DiasFestivos := 0;
            if cdGrupoSalario.Locate('IdGrupoSalario', Integer(cbGrupoSalario.Items.Objects[cbGrupoSalario.ItemIndex]), []) then
              DiasFestivos := cdGrupoSalario.FieldByName('Festivos').AsInteger;

            Try
              Application.CreateForm(TFrmNuevoSalario, FrmNuevoSalario);
              FrmNuevoSalario.IdTipoNomina := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
              FrmNuevoSalario.LeyendaTipoNomina.Caption := cdTipoNomina.FieldByName('Titulo').AsString + ' - ' + cdGrupoSalario.FieldByName('TituloGrupoSalario').AsString;
              FrmNuevoSalario.dsTipoNomina.DataSet := cdTipoNomina;
              FrmNuevoSalario.dsOrganizacion.DataSet := cdOrganizacion;
              FrmNuevoSalario.DiasFestivos := DiasFestivos;
              FrmNuevoSalario.IdOrganizacion := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
              FrmNuevoSalario.IdGrupoSalario := cdGrupoSalario.FieldByName('IdGrupoSalario').AsInteger;
              if FrmNuevoSalario.ShowModal = mrOk then
                Refrescar(cdSalarios);
            Except
              on e:exception do
                InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
            End;
      end;
      1: begin
            Try
              if MemorySalarios.FieldByName('IdSalarioPendiente').AsInteger <> 0 then
                raise InteligentWarning.Create('Existe una modificación de Salario pendiente de aplicar, no es posible eliminar este Salario por el momento.');

              if MemorySalarios.FieldByName('CuentaCargos').AsInteger > 0 then
                raise InteligentWarning.Create('Existen ' + MemorySalarios.FieldByName('CuentaCargos').AsString + ' Cargos que tienen asignado este Salario, no es posible eliminarlo en este momento.');

              if InteliDialog.ShowModal('Eliminar Salario', 'Confirmación de eliminación de Salario: [' + MemorySalarios.FieldByName('CodigoSalario').AsString + ']  ' + MemorySalarios.FieldByName('TituloSalario').AsString, 'Está a punto de eliminar el Salario ' + MemorySalarios.FieldByName('TituloSalario').AsString + ', este procedimiento eliminará de manera definitiva el salario sin la posibilidad de recuperarlo.' + #10 +
                                        'Así mismo, se verificará antes de proceder a la eliminación del Salario que no existan Cargos que se encuentren haciendo uso de este para asignar Salario al personal correspondiente.' + #10 + #10 +
                                        '¿Está seguro de tratar de eliminar este Salario en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                // Verificar si existen Cargos asignados a este salario
                Try
                  Try
                    // Procedure a eliminar el registro
                    Cursor := Screen.Cursor;
                    Screen.Cursor := crAppStart;

                    Eliminar := TClientDataSet.Create(Nil);

                    if Not CrearConjunto(Eliminar, 'rhu_salario', ccUpdate) then
                      raise InteligentException.CreateByCode(5, ['Salarios']);

                    if Not CargarDatosFiltrados(Eliminar, 'IdLlave', [MemorySalarios.FieldByName('IdLlave').AsInteger]) then
                      raise InteligentException.CreateByCode(5, ['Salarios', MemorySalarios.FieldByName('CodigoSalario').AsString, 'Codigo de Salario']);

                    Eliminar.Open;
                    if Eliminar.RecordCount = 0 then
                      raise InteligentException.CreateByCode(9, ['Salarios', 'Salario "[' + MemorySalarios.FieldByName('CodigoSalario').AsString + ']  ' + MemorySalarios.FieldByName('TituloSalario').AsString + '"', 'del catálogo de Salarios']);

                    Try
                      IniciarTransaccion;
                      while Not Eliminar.Eof do
                        Eliminar.Delete;

                      Eliminar.ApplyUpdates(-1);
                      Eliminar.Close;
                      ConcretarTransaccion;
                    Except
                      if EnTransaccion then
                        CancelarTransaccion;
                      Raise;
                    End;
                  Finally
                    Screen.Cursor := Cursor;
                    CancelarBloqueo(Eliminar, MemorySalarios.FieldByName('IdLlave').AsInteger);
                    EliminarConjunto(Eliminar);
                    Eliminar.Free;
                  End;

                  Refrescar(cdSalarios);
                Except
                  on e:InteligentException do
                    InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

                  on e:Exception do
                    InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
                End;
              end;
            Except
              on e:InteligentWarning do
                InteliDialog.ShowModal('Error de procedimiento', e.Message, mtInformation, [mbOk], 0);

              on e:Exception do
                InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
            End;
      end;
      2: begin
            try
            Application.CreateForm(TFrmAgregarConcepto, FrmAgregarConcepto);
            FrmAgregarConcepto.ShowModal;
            finally
              if assigned(FrmAgregarConcepto) then
                FrmAgregarConcepto.Free;
            end;
      end;
      3: begin
            // Imprimir .....
      end;
      4: begin
            if (MemorySalarios.Active) and (MemorySalarios.RecordCount > 0) and (MemorySalarios.FieldByName('IdSalarioPendiente').AsInteger = 0) then
            begin
              Try
              //MemorySalarios.FieldDefs.Items[0].Name;
                Application.CreateForm(TFrmModificacionSalario, FrmModificacionSalario);
                FrmModificacionSalario.dsSalario.DataSet := MemorySalarios;
                if FrmModificacionSalario.ShowModal = mrOk then
                  Refrescar(cdSalarios);
              Finally
                FrmModificacionSalario.Destroy;
              End;
            end
            else
                InteliDialog.ShowModal('El salario  ' + MemorySalarios.FieldByName('CodigoSalario').AsString  + '  ya se encuentra en un estado de solicitud de modificaciones.',''+#10 + #10 , mtinformation,[mbOk],0);
      end;
      5: begin
            if (MemorySalarios.Active) and (MemorySalarios.RecordCount > 0) and (MemorySalarios.FieldByName('IdSalarioPendiente').AsInteger <> 0) then
            begin
              try
                if Not CargarDatosFiltrados(CdModificacionSalario, 'IdLlave', [MemorySalarios.FieldByName('IdLlave').AsInteger]) then
                  raise InteligentException.CreateByCode(6, ['Modificaciones de Salarios', MemorySalarios.FieldByName('CodigoSalario').AsString, 'Código de Salario']);
                CdModificacionSalario.refresh;

                if CdModificacionSalario.RecordCount = 0 then
                  raise InteligentException.CreateByCode(22, ['Modificaciones de Salario']);

                Try
                  Application.CreateForm(TFrmEstadoModificacion, FrmEstadoModificacion);
                  FrmEstadoModificacion.dsSalario.DataSet := MemorySalarios;
                  FrmEstadoModificacion.dsModificacion.DataSet := cdModificacionSalario;
                  if FrmEstadoModificacion.ShowModal = mrOk then
                    Refrescar(cdSalarios);
                Finally
                  FrmEstadoModificacion.Destroy;
                end;
              except
                on e:InteligentException do
                  InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbok], 0);
              end;
              end
            else
                  InteliDialog.ShowModal('El salario  ' + MemorySalarios.FieldByName('CodigoSalario').AsString  + '  no se Encuentra en un estado de modificacion.',''+#10 + #10 , mtinformation,[mbOk],0);
       end;
       6: begin
            Try
              Application.CreateForm(TFrmHistorialSalario, FrmHistorialSalario);
              FrmHistorialSalario.Llave := MemorySalarios.FieldByName('IdLlave').AsInteger;
              FrmHistorialSalario.Codigo := MemorySalarios.FieldByName('CodigoSalario').AsString;
              FrmHistorialSalario.ShowModal;
            Except
              on e:exception do
                InteliDialog.ShowModal('No se ha podido generar el formulario', 'El formulario para la visualización del historial de salarios no ha podido ser generado, informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);            End;
      end;
      7: begin
        try
          try
            Cursor := Screen.Cursor;
            screen.Cursor := crAppStart;

            if cdCargos.Active=false then
            begin
              if Not CrearConjunto(cdCargos, 'nuc_cargo', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Salarios']);
              if Not CargarDatosFiltrados(cdCargos, 'IdSalario', [MemorySalarios.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdCargos.Open;
            end
            else
            begin
              if Not CargarDatosFiltrados(cdCargos, 'IdSalario', [MemorySalarios.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdCargos.Refresh;
            end;
            if cdConcepto.Active=false then
            begin
              if Not CrearConjunto(cdConcepto, 'rhu_compsaldetalle', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Salarios']);
              if Not CargarDatosFiltrados(cdConcepto, 'IdSalario', [dssalarios.DataSet.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdConcepto.Open;
            end
            else
            begin
              if Not CargarDatosFiltrados(cdConcepto, 'IdSalario', [dssalarios.DataSet.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdConcepto.Refresh;
            end;

            if cdSalarioTotal.Active=false then
            begin
              if not CrearConjunto(cdSalarioTotal,'rhu_sal_total', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Salarios']);
              if Not CargarDatosFiltrados(cdSalarioTotal, 'IdSalario', [MemorySalarios.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdSalarioTotal.Open;
            end
            else
            begin
              if Not CargarDatosFiltrados(cdSalarioTotal, 'IdSalario', [MemorySalarios.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdSalarioTotal.Refresh;
            end;
            ClientModule1.ImprimeReporte('cargosgenpuesto.fr3', frxPuestoGenDep);

          finally
            Screen.Cursor := Cursor;
          end;

        except
          on e:InteligentException do
          begin
            InteliDialog.ShowModal(e.Title, e.Message, e.MsgType,[mbOk],0);
          end;

          on e:exception do
          begin
            InteliDIalog.ShowModal('Ha ocurrido un error inesperado','Informe de lo siguiente al administrador del sistema:' +#10 +#10 + e.Message, mtError, [mbOk],0);
          end;
        end;
      end;
      8: begin
        try
          try
            cursor := Screen.Cursor;
            Screen.Cursor := crAppStart;

              //Dataset que muestra el personal dependiente
            if cdpersonalDepen.Active=false then
            begin
              if Not CrearConjunto(cdpersonalDepen, 'rhu_perdependientesal', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Salarios']);
              if Not CargarDatosFiltrados(cdpersonalDepen, 'IdSalario', [MemorySalarios.FieldByName('idllave').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdpersonalDepen.Open;
            end
            else
            begin
              if Not CargarDatosFiltrados(cdpersonalDepen, 'IdSalario', [MemorySalarios.FieldByName('idllave').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdpersonalDepen.Refresh;
            end;

             //dataset que calcula el total de los conceptos mas el salario
            if cdSalarioTotal.Active=false then
            begin
              if not CrearConjunto(cdSalarioTotal,'rhu_sal_total', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Salarios']);
              if Not CargarDatosFiltrados(cdSalarioTotal, 'IdSalario', [dssalarios.DataSet.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdSalarioTotal.Open;
            end
            else
            begin
            if Not CargarDatosFiltrados(cdSalarioTotal, 'IdSalario', [dssalarios.DataSet.FieldByName('idsalario').AsInteger])  then
              raise InteligentException.CreateByCode(16, ['IdSalario']);
            cdSalarioTotal.Refresh;
            end;
            //dataset que me muestra los ceonceptos del salario
            if cdConcepto.Active=false then
            begin
              if Not CrearConjunto(cdConcepto, 'rhu_compsaldetalle', ccCatalog) then
                raise InteligentException.CreateByCode(5, ['Salarios']);
              if Not CargarDatosFiltrados(cdConcepto, 'IdSalario', [dssalarios.DataSet.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdConcepto.Open;
            end
            else
            begin
              if Not CargarDatosFiltrados(cdConcepto, 'IdSalario', [dssalarios.DataSet.FieldByName('idsalario').AsInteger])  then
                raise InteligentException.CreateByCode(16, ['IdSalario']);
              cdConcepto.Refresh;
            end;
            ClientModule1.ImprimeReporte('personaldependientesal.fr3', frxPersonalDepen);

          finally
            Screen.Cursor := Cursor;
          end;
            // Consulta de Personal dependiente del Salario'
        except
          on e:InteligentException do
          begin
            InteliDialog.ShowModal(e.Title, e.Message, e.MsgType,[mbOk],0);
          end;
          on e:exception do
          begin
            InteliDIalog.ShowModal('Ha ocurrido un error inesperado','Informe de lo siguiente al administrador del sistema:' +#10 +#10 + e.Message,mtError, [mbOk],0);          end;
        end;
      end;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

end.
