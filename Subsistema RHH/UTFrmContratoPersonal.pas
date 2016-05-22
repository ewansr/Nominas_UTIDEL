unit UTFrmContratoPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Spin, AdvProgressBar, ComCtrls, StdCtrls, NxDBColumns,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  ClientModuleUnit1,UInteliDialog, AdvEdit, NxGrid, NxColumnClasses, AdvCombo,
  Menus, AdvEdBtn, Grids, DBGrids,URegistro;

type
  TModo = (Asignar,DesAsignar);
  TFrmContratoPersonal = class(TForm)
    PanelFiltro: TPanel;
    btnfn1: TPngSpeedButton;
    GroupBoxFiltro: TGroupBox;
    BtnSearch: TAdvShapeButton;
    PanelPrincipal: TPanel;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    PanelRefresh: TPanel;
    BtnRefresh: TAdvShapeButton;
    PanelSelect: TPanel;
    BtnSelect: TAdvShapeButton;
    Panel2: TPanel;
    BtnClose: TAdvShapeButton;
    cdBusqueda: TClientDataSet;
    CdRangoSalario: TClientDataSet;
    CdSalario: TClientDataSet;
    CdGuardias: TClientDataSet;
    CdBuscaGuardia: TClientDataSet;
    CdImss: TClientDataSet;
    CdPeriodosGuardias: TClientDataSet;
    CdVacacional: TClientDataSet;
    CdAguinaldos: TClientDataSet;
    CdDepartamento: TClientDataSet;
    CdORganizacion: TClientDataSet;
    CdTipoNomina: TClientDataSet;
    CdSalarioBase: TClientDataSet;
    CdCargo: TClientDataSet;
    EdtFCadenaBuscar: TAdvEdit;
    Panel3: TPanel;
    NgBusqueda: TNextGrid;
    Panel4: TPanel;
    Splitter1: TSplitter;
    BtnAsignar: TButton;
    BtnDesAsignar: TButton;
    BtnGuardar: TButton;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxTextColumn14: TNxTextColumn;
    NxTextColumn15: TNxTextColumn;
    NxTextColumn16: TNxTextColumn;
    NxTextColumn17: TNxTextColumn;
    NxTextColumn18: TNxTextColumn;
    NxTextColumn20: TNxTextColumn;
    NgProcesando: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn21: TNxTextColumn;
    NxTextColumn22: TNxTextColumn;
    NxTextColumn24: TNxTextColumn;
    MdDatos: TClientDataSet;
    MdDatosIdPerSeleccionado: TIntegerField;
    CmbListas: TAdvComboBox;
    CdLista: TClientDataSet;
    MdDatosidpersonal: TIntegerField;
    MdDatosFecha: TDateField;
    MdDatosCodigo: TStringField;
    strngfldMdDatosEstado: TStringField;
    MdDatosUsuario: TStringField;
    MdDatosNombre: TStringField;
    MdDatoscurp: TStringField;
    MdDatosrfc: TStringField;
    MdDatosimss: TStringField;
    MdDatosEdoCivil: TStringField;
    MdDatosSexo: TStringField;
    MdDatosFechaNacimiento: TDateField;
    MdDatosCodigoPersonal: TStringField;
    PopupLista: TPopupMenu;
    EditarCodigo1: TMenuItem;
    Eliminarlista1: TMenuItem;
    Agregarlista1: TMenuItem;
    GuardarLista1: TMenuItem;
    EditCodigoLista: TAdvEditBtn;
    Button1: TButton;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxTextColumn11: TNxTextColumn;
    MdDatosFechaContratacion: TDateField;
    MdDatosTituloCargo: TStringField;
    MdDatosTituloDepartamento: TStringField;
    MdDatosTituloNomina: TStringField;
    DataSource1: TDataSource;
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnAsignarClick(Sender: TObject);
    procedure BtnDesAsignarClick(Sender: TObject);
    procedure NgBusquedaCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NgProcesandoCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure BtnCloseClick(Sender: TObject);
    procedure NgBusquedaColumnResize(Sender: TObject; ACol: Integer);
    procedure NgProcesandoColumnResize(Sender: TObject; ACol: Integer);
    procedure NgBusquedaClick(Sender: TObject);
    procedure NgProcesandoClick(Sender: TObject);
    procedure CmbListasSelect(Sender: TObject);
    procedure EditCodigoListaClickBtn(Sender: TObject);
    procedure EditarCodigo1Click(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure EditCodigoListaExit(Sender: TObject);
    procedure CmbListasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Agregarlista1Click(Sender: TObject);
    procedure PopupListaPopup(Sender: TObject);
    procedure GuardarLista1Click(Sender: TObject);
    procedure Eliminarlista1Click(Sender: TObject);
    procedure EdtFCadenaBuscarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnRefreshClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NgProcesandoBeforeSelect(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure CdTipoNominaAfterScroll(DataSet: TDataSet);
  private
    EstadoLista :string;
    ListaSeleccionados:TStringList;
    CdPersonalUpt,CdListaUpt:Tclientdataset;
    GFocus:Integer;
    procedure Filtrar;
    procedure LlenarGridBusqueda(Datos: TclientDataset; Grid: TnextGrid);
    procedure Mover(Origen, Destino: TNextgrid; Modo: TModo);
    procedure GuardarSeleccionados(Grd: Tnextgrid);
    procedure EstablecerSeleccionados(Grd: Tnextgrid);
    procedure LlenarMemoryLista(Refrescar: boolean);
    procedure LlenarGridProcesando(Datos: TclientDataset; Grid: TnextGrid);
    procedure LlenarCmbListas(Datos: Tclientdataset);
    procedure CambiarCodigoLista;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmContratoPersonal: TFrmContratoPersonal;

implementation

uses
  UTfrmContratoPersonalDetalle, UTFrmContratarWizard;

{$R *.dfm}
    {$REGION 'Formulario'}
procedure TFrmContratoPersonal.FormCreate(Sender: TObject);
var h:integer;
begin
    for h := 0 to NgProcesando.Columns.Count - 1 do
      Try
        NgProcesando.Columns[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, NgProcesando.Columns[h].Header.Caption));
      Except
        ;
      End;
    for h := 0 to NgBusqueda.Columns.Count - 1 do
      Try
        NgBusqueda.Columns[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, NgBusqueda.Columns[h].Header.Caption));
      Except
        ;
      End;
  CdListaUpt := TClientDataSet.Create(Self);
  CdLista.ReadOnly := False;
  ListaSeleccionados := TStringList.Create;
  AccedeACoordenadas(Self);
  ClientModule1.ComponentColor(self);
  ClientModule1.RastrearGrids(self);
  CdPersonalUpt := TClientDataSet.Create(self);
  MdDatos.CreateDataSet;
  MdDatos.Open;
end;

procedure TFrmContratoPersonal.FormShow(Sender: TObject);
var
  i, idconvenio: integer;
  OldCursor: TCursor;
begin
  Try
    Try
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        cdbusqueda.Close;
        if not CrearConjunto(cdbusqueda, 'nuc_personal', ccCatalog) then
         raise InteligentConnection.CreateByCode(5, ['personal']);

        if Not  CargarDatosFiltrados(cdbusqueda, 'idpersonal', [-9]) then
          raise InteligentException.CreateByCode(6, ['Personal', 'idpersonal', '-9']);
        cdbusqueda.Open;

        if not CrearConjunto(CdListaUpt, 'nom_ListaProcesandoPErsonal', ccupdate) then
         raise InteligentConnection.CreateByCode(5, ['Procesando personal']);

        CdLista.Close;
        if not CrearConjunto(CdLista, 'nom_ListaProcesandoPErsonal', ccCatalog) then
         raise InteligentConnection.CreateByCode(5, ['Procesando personal']);

        CdLista.Open;

        LlenarMemoryLista(False);

        LlenarCmbListas(MdDatos);

        if CmbListas.Items.Count > 0 then
        begin
          CmbListas.ItemIndex := 0;
          CmbListas.OnSelect(CmbListas);
        end;

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

procedure TFrmContratoPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var h:Integer;
begin
  for h := 0 to NgProcesando.Columns.Count - 1 do
    if NgProcesando.Columns[h].Header.Caption <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, NgProcesando.Columns[h].Header.Caption, IntToStr(NgProcesando.Columns[h].Width));

  ListaSeleccionados.Free;
  EliminarConjunto([CdListaUpt,cdBusqueda,CdLista,CdPersonalUpt,CdAguinaldos,cdorganizacion,cddepartamento,cdtiponomina,CdCargo,CdVacacional,CdGuardias,CdPeriodosGuardias,CdBuscaGuardia,CdSalario,CdRangoSalario,CdImss]);
  LiberarVentana(Self,Action);
end;

procedure TFrmContratoPersonal.BtnSearchClick(Sender: TObject);
begin
  if NgBusqueda.SelectedCount > 0 then
    GuardarSeleccionados(NgBusqueda);
  Filtrar;
  if NgBusqueda.RowCount > 0 then
    EstablecerSeleccionados(NgBusqueda);
end;

procedure TFrmContratoPersonal.GuardarLista1Click(Sender: TObject);
begin
  BtnGuardarClick(BtnGuardar);
end;

procedure TFrmContratoPersonal.GuardarSeleccionados(Grd:Tnextgrid);
var i:Integer;
begin
  ListaSeleccionados.Clear;
  for i := 0 to Grd.RowCount-1 do
  begin
    if Grd.Row[i].Selected then
      ListaSeleccionados.Add(Grd.Cells[0,i]);
  end;
end;

procedure TFrmContratoPersonal.EditarCodigo1Click(Sender: TObject);
begin
  EstadoLista := 'Editando';
  EditCodigoLista.Left := CmbListas.Left;
  EditCodigoLista.Top := CmbListas.Top;
  EditCodigoLista.Width := CmbListas.Width;
  EditCodigoLista.Text := CmbListas.Text;
  EditCodigoLista.Visible := True;
  EditCodigoLista.SetFocus;
end;

procedure TFrmContratoPersonal.EditCodigoListaClickBtn(Sender: TObject);
begin
  try
    mddatos.Filtered := False;
    if mddatos.Locate('codigo',EditCodigoLista.Text,[]) then
      raise InteligentException.Create('El código ingresado ya existe, intente con otro nombre.');
    try
      if EstadoLista = 'Editando' then
      begin
        try
          //if EstadoLista = 'Editando' then
          MdDatos.Filtered := False;
          MdDatos.Filter := ' codigo = '+quotedstr(CmbListas.Items[CmbListas.ItemIndex]);
          MdDatos.Filtered := True;

          MdDatos.First;
          while not Mddatos.eof do
          begin
            MdDatos.Edit;
            MdDatos.FieldByName('codigo').AsString := EditCodigoLista.Text;
            MdDatos.FieldByName('estado').AsString := 'Editado';
            MdDatos.FieldByName('usuario').AsString := ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString;
            MdDatos.Post;
            MdDatos.Next;
          end;
          CmbListas.Items[CmbListas.ItemIndex] := EditCodigoLista.Text;
        finally
          MdDatos.Filtered := False;
        end;
        LlenarCmbListas(MdDatos);
        CmbListas.ItemIndex := CmbListas.Items.IndexOf(EditCodigoLista.Text);
      end;
      if EstadoLista = 'Agregando' then
      begin
        CmbListas.AddItem(EditCodigoLista.Text,nil);
        CmbListas.ItemIndex := CmbListas.Items.IndexOf(EditCodigoLista.Text);
      end;
      CmbListasSelect(CmbListas);
    finally
      EditCodigoLista.Visible := False;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  end;

end;

procedure TFrmContratoPersonal.EditCodigoListaExit(Sender: TObject);
begin
  EditCodigoLista.Visible := False;
end;

procedure TFrmContratoPersonal.EdtFCadenaBuscarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    BtnSearchClick(btnsearch);

end;

procedure TFrmContratoPersonal.Eliminarlista1Click(Sender: TObject);
begin
  if InteliDialog.ShowModal('Confirmación','¿Está seguro que quiere eliminar todos los registros que correspondan a este oficio?', mtConfirmation, [ mbYes, mbNo ], 0) = mrYes then
  begin
    try
      try
        MdDatos.Filtered := False;
        MdDatos.Filter := ' codigo = '+quotedstr(CmbListas.Items[CmbListas.ItemIndex]);
        MdDatos.Filtered := True;

        MdDatos.First;
        while not Mddatos.eof do
        begin
          MdDatos.Delete;
        end;
      finally
        MdDatos.Filtered := False;
      end;
      LlenarCmbListas(MdDatos);
      if CmbListas.Items.Count > 0 then
        CmbListas.ItemIndex := 0;
      CmbListasSelect(CmbListas);
    finally
      EditCodigoLista.Visible := False;
    end;
  end;
end;

procedure TFrmContratoPersonal.EstablecerSeleccionados(Grd:Tnextgrid);
var i:Integer;
begin
  if ListaSeleccionados.Count > 0 then
    for i := 0 to Grd.RowCount-1 do
    begin
      if ListaSeleccionados.IndexOf(Grd.Cells[0,i])<>-1 then
        Grd.SelectCell(0,i,[ssCtrl],False);
    end;
end;

procedure TFrmContratoPersonal.BtnSelectClick(Sender: TObject);
var
    Resp:Integer;
    OldC:TCursor;
    FechaC,Cargo,Depto,Nomina:string;
begin
  // Iniciar wizard de contratación
  Try
    OldC := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if CdORganizacion.ProviderName = '' then
      begin
        if not CrearConjunto(CdOrganizacion,'nuc_organizacion',ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Organización']);
        CdOrganizacion.open;
      end;

      if CdDepartamento.ProviderName = '' then
      begin
        if not CrearConjunto(CdDepartamento, 'nuc_departamento', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Departamentos']);

        //cdDepartamento.Open;
      end;

      if CdCargo.ProviderName = '' then
      begin
        if not CrearConjunto(CdCargo,'nuc_cargo',ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Cargos']);
      end;

      if cdImss.ProviderName = '' then
      begin
        if not CrearConjunto(CdImss, 'nuc_personalimss', ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['datos de IMSS']);
      end;

      if cdGuardias.ProviderName = '' then
      begin
        if not CrearConjunto(cdGuardias, 'nom_guardia', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Guardias']);

        cdGuardias.Open;
      end;

      if cdTipoNomina.ProviderName = '' then
      begin
        if not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Tipos de nóminas']);

        if Not CargarDatosFiltrados(cdTipoNomina, 'TipoCalculo', ['PERIODICA']) then
          raise InteligentException.CreateByCode(6, ['Tipos de Nómina', 'PERIODICA', 'Tipo Cálculo']);

        cdTipoNomina.Open;
      end;

      if cdSalario.ProviderName = '' then
      begin
        // Nos permite buscar los salarios
        if not CrearConjunto(cdSalario, 'rhu_salario', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Salarios']);
      end;

      if cdRangoSalario.ProviderName = '' then
      begin
        //nos permite buscar los rangos de salarios
        if not CrearConjunto(CdRangoSalario, 'nom_rangosalarios', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['rangos de salarios']);
      end;

      cdTipoNomina.First;

      if Not CargarDatosFiltrados(cdImss, 'IdPersonalImss', [-9]) then
        raise InteligentException.CreateByCode(6, ['Registros de Personal ante el IMSS', -9, 'IdPersonalImss']);

      cdImss.Open;
      cdImss.Append;
      cdImss.FieldByName('TipoMovimiento').AsString := 'Alta';
      cdImss.FieldByName('FechaMovimiento').AsDateTime := Now;
      cdImss.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;

      Application.CreateForm(TFrmContratarWizard, FrmContratarWizard);
      FrmContratarWizard.lblNombre.Caption.Text := mdDatos.FieldByName('NombreCompleto').AsString;
      FrmContratarWizard.dsOrganizacion.DataSet := cdOrganizacion;
      FrmContratarWizard.dsDepartamento.DataSet := cdDepartamento;
      FrmContratarWizard.dsCargo.DataSet := cdCargo;
      FrmContratarWizard.dsTipoNomina.DataSet := cdTipoNomina;
      FrmContratarWizard.dsRangoSalario.DataSet := cdRangoSalario;
      FrmContratarWizard.dsSalarios.DataSet := cdSalario;
      FrmContratarWizard.dsGuardias.DataSet := cdGuardias;
      FrmContratarWizard.dsImss.DataSet := cdImss;
      FrmContratarWizard.dsDatos.DataSet := MdDatos;
      FrmContratarWizard.ShowModal;
    Finally
      Screen.Cursor := OldC;
      FrmContratarWizard.Free;
      BtnGuardarClick(nil);
    End;
  Except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
(*  try
    OldC := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if NgProcesando.RowCount = 0 then
        raise InteligentException.Create('No hay personal cargado en el oficio.');

      if not MdDatos.Locate('codigo;idpersonal',VarArrayOf([CmbListas.Text,NgProcesando.Cells[0,NgProcesando.SelectedRow]]),[]) then
        raise InteligentException.Create('No se puede localizar el registro en memoria, guarde la lista e intente nuevamente.');

      if not IniciarTransaccion then
        raise Exception.Create('No se puede iniciar la transacción con el servidor.');

      try
        if Length(Trim(CdPersonalUpt.ProviderName)) = 0 then
          if not CrearConjunto(CdPersonalUpt,'nuc_personal',ccUpdate) then
            raise InteligentConnection.CreateByCode(5, ['personal']);

        try
          CdPersonalUpt.Close;
          if not CargarDatosFiltrados(CdPersonalUpt,'idpersonal',[ngprocesando.cells[0,NgProcesando.SelectedRow]{cdDatos.FieldByName('idpersonal').AsInteger}]) then
            raise InteligentConnection.CreateByCode(6, ['personal', ngprocesando.cells[0,NgProcesando.SelectedRow], 'idpersonal']);

          CdPersonalUpt.Open;

          if CdPersonalUpt.RecordCount < 1 then
            raise Exception.Create('Error Message');

          if CdPersonalUpt.RecordCount > 1 then
            raise Exception.Create('Error Message');

          //creando los conjuntos de la ventana que se desplegará
          //Revisar y optimizar
          if length(CdImss.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdImss, 'nuc_personalimss', ccUpdate) then
              raise InteligentConnection.CreateByCode(5, ['datos de IMSS']);
          end;

          if length(CdORganizacion.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdOrganizacion,'nuc_organizacion',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Organización']);
            CdOrganizacion.open;
          end;

          if length(CdTipoNomina.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdTipoNomina,'nom_tiponomina',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Tipos de nóminas']);
            CdTipoNomina.Open;
          end;

          if length(CdDepartamento.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdDepartamento,'nuc_departamento',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Departamentos']);
            CdDepartamento.Open;
          end;

          if length(CdAguinaldos.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdAguinaldos,'rhu_diasaguinaldo',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Dias Aguinaldos']);
            CdAguinaldos.Open;
          end;


          if length(CdSalarioBase.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdSalarioBase,'rhu_salario',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Departamentos']);
            if not CargarDatosFiltrados(CdSalarioBase,'tiposalario',[-9]) then
              raise InteligentConnection.CreateByCode(6, ['Salario', '-9', 'Salario']);
            CdSalarioBase.Open;
          end;

          if length(CdVacacional.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdVacacional,'rhu_diasvacaciones',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Dias Vacaciones']);
            if not CargarDatosFiltrados(CdVacacional,'anios',[1]) then
              raise InteligentConnection.CreateByCode(6, ['Vacaciones', '1', 'años']);
            CdVacacional.Open;
          end;

          if length(CdGuardias.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdGuardias,'nom_guardia',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Guardias']);
            if not CargarDatosFiltrados(CdGuardias,'idguardia',[-9]) then
              raise InteligentConnection.CreateByCode(6, ['idguardia', '-9', 'idtiponomina']);
            CdGuardias.Open;
          end;

          if length(CdPeriodosGuardias.ProviderName) = 0 then
          begin
            if not CrearConjunto(CdPeriodosGuardias,'nom_periodosguardia_disponibles',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Periodos de Guardias']);
            if not CargarDatosFiltrados(CdPeriodosGuardias,'idtiponomina',[-9]) then
              raise InteligentConnection.CreateByCode(6, ['idtiponomina', '-9', 'idtiponomina']);
            CdPeriodosGuardias.Open;
          end;

          if length(CdBuscaGuardia.ProviderName) = 0 then
          begin
            //nos permite buscar si ya subio aguna vez y obtener la guardia
            if not CrearConjunto(CdBuscaGuardia,'nuc_personalimss',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['datos de IMSS']);
          end;

          if length(CdSalario.ProviderName) = 0 then
          begin
            //nos permite buscar los salarios
            if not CrearConjunto(CdSalario,'rhu_salario',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['Salarios']);
          end;

          if length(CdRangoSalario.ProviderName) = 0 then
          begin
            //nos permite buscar los rangos de salarios
            if not CrearConjunto(CdRangoSalario,'nom_rangosalarios',ccCatalog) then
              raise InteligentConnection.CreateByCode(5, ['rangos de salarios']);
            CdRangoSalario.Open;
          end;

          Application.CreateForm(TFrmContratoPersonalDetalle,frmcontratopersonaldetalle);
          CdPersonalUpt.Edit;
          try
            //asignando dataset a datasources
            FrmContratoPersonalDetalle.DsImss.DataSet := CdImss;
            FrmContratoPersonalDetalle.DsPersonal.DataSet := CdPersonalUpt;
            FrmContratoPersonalDetalle.dsorganizacion.dataset := CdORganizacion;
            FrmContratoPersonalDetalle.DsTipoNomina.DataSet := CdTipoNomina;
            FrmContratoPersonalDetalle.DsDepartamento.DataSet := CdDepartamento;
            FrmContratoPersonalDetalle.Dsaguinaldos.DataSet := CdAguinaldos;
            FrmContratoPersonalDetalle.DsCargo.DataSet := CdCargo;
            FrmContratoPersonalDetalle.DsSalarioBase.DataSet := CdSalarioBase;
            FrmContratoPersonalDetalle.DsVacacional.Dataset := CdVacacional;
            FrmContratoPersonalDetalle.DsGuardias.DataSet := CdGuardias;
            FrmContratoPersonalDetalle.DsPeriodosGuardias.DataSet := CdPeriodosGuardias;
            FrmContratoPersonalDetalle.DsBuscaGuardia.DataSet := CdBuscaGuardia;
            FrmContratoPersonalDetalle.DsSalario.DataSet := CdSalario;
            FrmContratoPersonalDetalle.DsRangoSalario.DataSet := cdRangoSalario;
            Resp := FrmContratoPersonalDetalle.ShowModal;
            FechaC := FrmContratoPersonalDetalle.DtFechaContratación.Text;
            Cargo := FrmContratoPersonalDetalle.LCbbCargo.Text;
            Depto := FrmContratoPersonalDetalle.LCbbDepartamento.Text;
            Nomina := FrmContratoPersonalDetalle.LCbbTipoNomina.Text;
          finally
            FrmContratoPersonalDetalle.Free;
          end;
          if CdPersonalUpt.State in [dsInsert,dsEdit] then
            CdPersonalUpt.Cancel;
        finally
          if EnTransaccion then
            CancelarTransaccion;
        end;
      finally
  //      EliminarConjunto(CdPersonalUpt);
      end;

      if Resp = mrok then
      begin
        MdDatos.Edit;
        MdDatos.FieldByName('Estado').AsString := 'Contratado';
        MdDatos.FieldByName('fechacontratacion').AsString := FechaC;
        MdDatos.FieldByName('titulocargo').AsString := Cargo;
        MdDatos.FieldByName('titulodepartamento').AsString := Depto;
        MdDatos.FieldByName('titulonomina').AsString := Nomina;
        MdDatos.FieldByName('usuario').AsString := ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString;
        MdDatos.Post;
        BtnGuardarClick(BtnGuardar);
        //LlenarMemoryLista(true);
        //LlenarGridProcesando(MdDatos,NgProcesando);
      end;
    finally
      CancelarBloqueo(CdPersonalUpt,CdPersonalUpt.FieldByName('idpersonal').AsInteger);
    end;

  finally
    Screen.Cursor := OldC;
  end;*)
end;


procedure TFrmContratoPersonal.Button1Click(Sender: TObject);
begin
  Agregarlista1Click(Agregarlista1);
end;

procedure TFrmContratoPersonal.Agregarlista1Click(Sender: TObject);
begin
  EstadoLista := 'Agregando';
  EditCodigoLista.Left := CmbListas.Left;
  EditCodigoLista.Top := CmbListas.Top;
  EditCodigoLista.Width := CmbListas.Width;
  EditCodigoLista.Text := 'Lista Nueva '+datetostr(now);
  EditCodigoLista.Visible := True;
  EditCodigoLista.SetFocus;
end;

procedure TFrmContratoPersonal.BtnAsignarClick(Sender: TObject);
begin
  if CmbListas.ItemIndex <> -1 then
    Mover(NgBusqueda,NgProcesando,Asignar)
  else
    if  InteliDialog.ShowModal('Información','Es necesario que antes de agregar un personal se de de alta un oficio nuevo.'+#10+'¿Quiere crear un oficio nuevo?', mtConfirmation, [ mbYes, mbNo ], 0) = mrYes then
      Agregarlista1Click(Agregarlista1);
end;

procedure TFrmContratoPersonal.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmContratoPersonal.BtnDesAsignarClick(Sender: TObject);
begin
  try
    if NgProcesando.RowCount = 0 then
      raise InteligentException.Create('No hay registros para ejecutar la acción.');

    if NgProcesando.SelectedRow < 0 then
      raise InteligentException.Create('Seleccione un registro');

    if  NgProcesando.Cell[0,NgProcesando.SelectedRow].Color = $00EBECCC then
      raise InteligentException.Create('El personal seleccionado ya se encuentra contratado, no se puede realizar esta acción.');

    if InteliDialog.ShowModal('Confirmación','¿Realmente quiere usted eliminar éste personal del oficio?', mtConfirmation, [ mbYes, mbNo ], 0) = mrYes then
      Mover(NgProcesando,NgBusqueda,DesAsignar);
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmContratoPersonal.BtnGuardarClick(Sender: TObject);
var Indice:string;
  seguir :Boolean;
begin
  try
    if CmbListas.ItemIndex = -1 then
      raise InteligentException.Create('Seleccione una lista.');

    Indice := CmbListas.Text;
    MdDatos.First;
    while not MdDatos.eof do
    begin
      if (MdDatos.FieldByName('estado').AsString = 'Editado') or ((MdDatos.FieldByName('estado').AsString = 'Contratado') and (MdDatos.FieldByName('IdProcesandoPersonal').AsInteger > 0)) then
      begin
        if (MdDatos.FieldByName('estado').AsString = 'Contratado') then
        begin
          if CdLista.Locate('IdProcesandoPersonal',MdDatos.FieldByName('IdProcesandoPersonal').AsInteger,[]) then
          begin
            if length( Trim(CdLista.FieldByName('idplazadetalle').AsString)) = 0  then
              seguir := True
            else
              seguir := False;
          end;
        end
        else
          seguir := True;

        if seguir then
        begin
          CdListaUpt.Close;
          CargarDatosFiltrados(CdListaUpt,'IdProcesandoPersonal',[MdDatos.FieldByName('IdProcesandoPersonal').AsInteger]);
          CdListaUpt.Open;
          CdListaUpt.Edit;
          CdListaUpt.FieldByName('Fecha').AsDateTime := MdDatos.FieldByName('Fecha').AsDateTime;
          CdListaUpt.FieldByName('Codigo').AsString := MdDatos.FieldByName('Codigo').AsString;
          CdListaUpt.FieldByName('Usuario').AsString := MdDatos.FieldByName('Usuario').AsString;
          CdListaUpt.FieldByName('FechaContratacion').AsDateTime := MdDatos.FieldByName('FechaContratacion').AsDateTime;
          CdListaUpt.FieldByName('Titulocargo').AsString := MdDatos.FieldByName('Titulocargo').AsString;
          CdListaUpt.FieldByName('TituloDepartamento').AsString := MdDatos.FieldByName('TituloDepartamento').AsString;
          CdListaUpt.FieldByName('TituloNomina').AsString   := MdDatos.FieldByName('TituloNomina').AsString;
          CdListaUpt.Post;
          CdListaUpt.ApplyUpdates(-1);
        end;
      end;
      if (MdDatos.FieldByName('estado').AsString = 'Nuevo') or ((MdDatos.FieldByName('estado').AsString = 'Contratado') and (MdDatos.FieldByName('IdProcesandoPersonal').AsInteger < 0)) then
      begin
        CdListaUpt.Close;
        CargarDatosFiltrados(CdListaUpt,'IdProcesandoPersonal',[-9]);
        CdListaUpt.Open;
        CdListaUpt.append;
        CdListaUpt.FieldByName('IdProcesandoPersonal').AsInteger := 0;
        CdListaUpt.FieldByName('idpersonal').AsInteger := MdDatos.FieldByName('idpersonal').AsInteger;
        CdListaUpt.FieldByName('Fecha').AsDateTime := ServidorFechaHora(0);
        CdListaUpt.FieldByName('Codigo').AsString := MdDatos.FieldByName('Codigo').AsString;
        CdListaUpt.FieldByName('Usuario').AsString := MdDatos.FieldByName('Usuario').AsString;
          CdListaUpt.FieldByName('FechaContratacion').AsDateTime := MdDatos.FieldByName('FechaContratacion').AsDateTime;
          CdListaUpt.FieldByName('Titulocargo').AsString := MdDatos.FieldByName('Titulocargo').AsString;
          CdListaUpt.FieldByName('TituloDepartamento').AsString := MdDatos.FieldByName('TituloDepartamento').AsString;
          CdListaUpt.FieldByName('TituloNomina').AsString   := MdDatos.FieldByName('TituloNomina').AsString;

        CdListaUpt.Post;
        CdListaUpt.ApplyUpdates(-1);
      end;
      {if (MdDatos.FieldByName('estado').AsString = 'Contratado') and (MdDatos.FieldByName('IdProcesandoPersonal').AsInteger>0) then
      begin
        CdListaUpt.Close;
        CargarDatosFiltrados(CdListaUpt,'IdProcesandoPersonal',[-9]);
        CdListaUpt.Open;
        CdListaUpt.append;
        CdListaUpt.FieldByName('IdProcesandoPersonal').AsInteger := 0;
        CdListaUpt.FieldByName('idpersonal').AsInteger := MdDatos.FieldByName('idpersonal').AsInteger;
        CdListaUpt.FieldByName('Fecha').AsDateTime := ServidorFechaHora(0);
        CdListaUpt.FieldByName('Codigo').AsString := MdDatos.FieldByName('Codigo').AsString;
        CdListaUpt.FieldByName('Usuario').AsString := MdDatos.FieldByName('Usuario').AsString;
        CdListaUpt.Post;
        CdListaUpt.ApplyUpdates(-1);
      end;    }
      MdDatos.Next;
    end;
    CdLista.First;
    while not CdLista.Eof do
    begin
      if not MdDatos.Locate('IdProcesandoPersonal',CdLista.FieldByName('IdProcesandoPersonal').AsInteger,[]) then
      begin
        CdListaUpt.Close;
        CargarDatosFiltrados(CdListaUpt,'IdProcesandoPersonal',[CdLista.FieldByName('IdProcesandoPersonal').AsInteger]);
        CdListaUpt.Open;
        CdListaUpt.Delete;
        CdListaUpt.ApplyUpdates(-1);
      end;
      CdLista.Next;
    end;
    //CdLista.Refresh;
    LlenarMemoryLista(True);
    LlenarCmbListas(MdDatos);
    if CmbListas.Items.Count > 0 then
    begin
      if CmbListas.Items.IndexOf(indice)<>-1 then
        CmbListas.ItemIndex := CmbListas.Items.IndexOf(Indice)
      else
        CmbListas.ItemIndex := 0;
      CmbListasSelect(CmbListas);
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmContratoPersonal.BtnRefreshClick(Sender: TObject);
begin
  if InteliDialog.ShowModal('Confirmación','¿Realmente quiere recargar los datos del oficio con su contenido original?', mtConfirmation, [ mbYes, mbNo ], 0) = mrYes then
  begin
    //CdLista.Refresh;
    LlenarMemoryLista(true);
    LlenarGridProcesando(MdDatos,NgProcesando);
  end;
end;

procedure TFrmContratoPersonal.Mover(Origen,Destino:TNextgrid;Modo:TModo);
var i,n:integer;
begin
  case Modo of
    Asignar:
    begin
      Destino.BeginUpdate;
      for i := 0 to Origen.RowCount-1 do
      begin
        if Origen.Row[i].Selected then
        begin
          Destino.AddCells([Origen.Cells[0,i],Origen.Cells[1,i],Origen.Cells[2,i],Origen.Cells[3,i],Origen.Cells[4,i],Origen.Cells[5,i],
                            Origen.Cells[6,i],Origen.Cells[7,i],Origen.Cells[8,i]]);
          for n := 0 to Destino.Columns.Count-1 do
            Destino.Cell[n,Destino.RowCount-1].Color := $00B7DFDE;
          MdDatos.Append;
          if CdLista.Locate('idpersonal;codigo',VarArrayOf([Origen.Cells[0,i],CmbListas.Text]),[]) then
          begin
            MdDatos.FieldByName('idprocesandopersonal').AsInteger := CdLista.FieldByName('idprocesandopersonal').AsInteger;
            MdDatos.FieldByName('estado').AsString := 'Editado';
          end
          else
          begin
            MdDatos.FieldByName('idprocesandopersonal').AsInteger := -2;
            MdDatos.FieldByName('estado').AsString := 'Nuevo';
          end;
          {if CmbListas.Items.Count = 0 then
          begin
            CmbListas.AddItem(DateToStr(now)+' Nueva lista',nil);
            CmbListas.ItemIndex := 0;
            CmbListasSelect(CmbListas);
          end;  }
          MdDatos.FieldByName('codigo').AsString := CmbListas.Text;
          MdDatos.FieldByName('idpersonal').AsString := Origen.Cells[0,i];
          MdDatos.FieldByName('NombreCompleto').AsString := Origen.Cells[2,i];
          MdDatos.FieldByName('curp').AsString := Origen.Cells[3,i];
          MdDatos.FieldByName('rfc').AsString := Origen.Cells[4,i];
          MdDatos.FieldByName('numerosegurosocial').AsString := Origen.Cells[5,i];
          MdDatos.FieldByName('estadocivil').AsString := Origen.Cells[6,i];
          MdDatos.FieldByName('sexo').AsString := Origen.Cells[7,i];
          MdDatos.FieldByName('fechanacimiento').AsString := Origen.Cells[8,i];
          MdDatos.FieldByName('codigopersonal').AsString := Origen.Cells[1,i];
          MdDatos.FieldByName('usuario').AsString := clientmodule1.cdUsuario.FieldByName('nombreusuario').AsString;
          MdDatos.Post;
        end;
      end;
      Destino.EndUpdate;
      Origen.BeginUpdate;
      for i := Origen.RowCount-1 downto 0 do
      begin
        if Origen.Row[i].Selected then
          Origen.DeleteRow(i);
      end;
      Origen.EndUpdate;
    end;
    DesAsignar:
    begin
      Destino.BeginUpdate;
      for i := 0 to Origen.RowCount-1 do
      begin
        if Origen.Row[i].Selected then
        begin
          Destino.AddCells([Origen.Cells[0,i],Origen.Cells[1,i],Origen.Cells[2,i],Origen.Cells[3,i],Origen.Cells[4,i],Origen.Cells[5,i],
                            Origen.Cells[6,i],Origen.Cells[7,i],Origen.Cells[8,i]]);
          if MdDatos.Locate('idpersonal;codigo',VarArrayOf([Origen.Cells[0,i],CmbListas.Text]),[]) then
            MdDatos.Delete;
        end;
      end;
      Destino.EndUpdate;
      Origen.BeginUpdate;
      for i := Origen.RowCount-1 downto 0 do
      begin
        if Origen.Row[i].Selected then
          Origen.DeleteRow(i);
      end;
      Origen.EndUpdate;
    end;
  end;
end;
    {$ENDREGION}

    {$REGION 'Busqueda de personal'}
procedure TFrmContratoPersonal.NgBusquedaCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  BtnAsignarClick(BtnAsignar);
end;

procedure TFrmContratoPersonal.NgBusquedaClick(Sender: TObject);
begin
  GFocus := 0;
end;

procedure TFrmContratoPersonal.NgBusquedaColumnResize(Sender: TObject;
  ACol: Integer);
begin
  try
    if GFocus = 0 then
      NgProcesando.Columns[Acol].Width := NgBusqueda.Columns[ACol].Width;
  except
    on e:Exception do
      ;
  end;
end;

procedure TFrmContratoPersonal.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;
  cdBusqueda.close;
  Parametros.Add('activo', 'si');
  Parametros.Add('idplazadetalle','');
  if Length(Trim(EdtFCadenaBuscar.Text)) > 0 then
    Parametros.Add('CadenaBuscar', Trim(EdtFCadenaBuscar.Text) );

  CargarDatosFiltrados(cdBusqueda, Parametros.Campos, Parametros.Datos);
  cdBusqueda.open;
  LlenarGridBusqueda(cdBusqueda,NgBusqueda);
  Parametros.Free;
end;

procedure TFrmContratoPersonal.LlenarGridBusqueda(Datos:TclientDataset;Grid:TnextGrid);
begin
  try
    if Datos.State <> dsBrowse then
      raise InteligentConnection.Create('Error de conexion de datos');

    if Datos.RecordCount = 0 then
      raise InteligentException.Create('*');
    Grid.BeginUpdate;
    Grid.ClearRows;
    try
      with Datos do
      begin
        First;
        while not Eof  do
        begin
          if not MdDatos.Locate('codigo;idpersonal',VarArrayOf([CmbListas.Text,FieldByName('idpersonal').AsString]),[]) then
          begin
            Grid.AddCells([FieldByName('idpersonal').AsString,
                          FieldByName('codigopersonal').AsString,FieldByName('nombrecompleto').AsString,FieldByName('curp').AsString,
                          FieldByName('rfc').AsString,FieldByName('numerosegurosocial').AsString,FieldByName('EstadoCivil').AsString,
                          FieldByName('sexo').AsString,FieldByName('fechanacimiento').AsString]);
          end;
          Next;
        end;
      end;
    finally
      Grid.EndUpdate;
    end;
  except
    on e:Exception do
      if e.Message = '*' then
        ;
  end;
end;
    {$ENDREGION}

    {$REGION 'Trabajando con Lista'}
procedure TFrmContratoPersonal.NgProcesandoClick(Sender: TObject);
begin
  GFocus := 1;
end;

procedure TFrmContratoPersonal.NgProcesandoColumnResize(Sender: TObject;
  ACol: Integer);
begin
  try
    if GFocus = 1 then
      NgBusqueda.Columns[ACol].Width := NgProcesando.Columns[Acol].Width;
  except
    on e:Exception do
      ;
  end;
end;

procedure TFrmContratoPersonal.PopupListaPopup(Sender: TObject);
begin
  EditarCodigo1.Enabled := CmbListas.ItemIndex <> -1;
  Eliminarlista1.Enabled := CmbListas.ItemIndex <> -1;
  if Eliminarlista1.Enabled then
    Eliminarlista1.Caption := 'Eliminar lista: '+cmblistas.Text;
end;

procedure TFrmContratoPersonal.NgProcesandoBeforeSelect(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
  mdDatos.Locate('IdPersonal', NgProcesando.Cells[0, ARow], []);
end;

procedure TFrmContratoPersonal.NgProcesandoCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  BtnDesAsignarClick(BtnDesAsignar);
end;

procedure TFrmContratoPersonal.LlenarMemoryLista(Refrescar:boolean);
begin
  if Refrescar then
    CdLista.Refresh;
  CdLista.First;
  if MdDatos.State <> dsBrowse then
    MdDatos.open;
  MdDatos.EmptyDataSet;

  while not CdLista.Eof do
  begin
    MdDatos.Append;
    MdDatos.FieldByName('idProcesandoPersonal').AsString := CdLista.FieldByName('idProcesandoPersonal').AsString;
    MdDatos.FieldByName('IdPersonal').AsString := CdLista.FieldByName('IdPersonal').AsString;
    MdDatos.FieldByName('Fecha').AsString := CdLista.FieldByName('Fecha').AsString;
    MdDatos.FieldByName('Codigo').AsString := CdLista.FieldByName('Codigo').AsString;
    MdDatos.FieldByName('Usuario').AsString := CdLista.FieldByName('Usuario').AsString;

    if length(trim(CdLista.FieldByName('idPlazadetalle').AsString)) = 0 then
      MdDatos.FieldByName('Estado').AsString := 'EnLista'
    else
      MdDatos.FieldByName('Estado').AsString := 'Contratado';

    MdDatos.FieldByName('NombreCompleto').AsString := CdLista.FieldByName('NombreCompleto').AsString;
    MdDatos.FieldByName('curp').AsString := CdLista.FieldByName('curp').AsString;
    MdDatos.FieldByName('rfc').AsString := CdLista.FieldByName('rfc').AsString;
    MdDatos.FieldByName('numerosegurosocial').AsString := CdLista.FieldByName('numerosegurosocial').AsString;
    MdDatos.FieldByName('estadocivil').AsString := CdLista.FieldByName('estadocivil').AsString;
    MdDatos.FieldByName('sexo').AsString := CdLista.FieldByName('sexo').AsString;
    MdDatos.FieldByName('FechaNacimiento').AsString := CdLista.FieldByName('FechaNacimiento').AsString;
    MdDatos.FieldByName('codigopersonal').AsString := CdLista.FieldByName('codigopersonal').AsString;
    MdDatos.FieldByName('Fechacontratacion').AsString := CdLista.FieldByName('Fechacontratacion').AsString;
    MdDatos.FieldByName('titulocargo').AsString := CdLista.FieldByName('titulocargo').AsString;
    MdDatos.FieldByName('titulodepartamento').AsString := CdLista.FieldByName('titulodepartamento').AsString;
    MdDatos.FieldByName('titulonomina').AsString := CdLista.FieldByName('titulonomina').AsString;

    MdDatos.Post;
    CdLista.Next;
  end;
end;

procedure TFrmContratoPersonal.LlenarCmbListas(Datos:Tclientdataset);
begin
  CmbListas.Clear;
  Datos.First;
  while not Datos.Eof do
  begin
    if CmbListas.Items.IndexOf(Datos.FieldByName('Codigo').AsString) = -1 then
      CmbListas.AddItem(Datos.FieldByName('Codigo').AsString,nil);
    Datos.Next;
  end;
end;

procedure TFrmContratoPersonal.CmbListasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  ShowMessage(VarToStr(key));
end;

procedure TFrmContratoPersonal.CmbListasSelect(Sender: TObject);
begin
  try
    MdDatos.Filtered := False;
    MdDatos.Filter := 'codigo = '+quotedstr(cmbListas.text);
    MdDatos.Filtered := True;
    BtnGuardar.Enabled := True;
    LlenarGridProcesando(MdDatos,NgProcesando);
  finally
    MdDatos.Filtered := False;
  end;
end;

procedure TFrmContratoPersonal.LlenarGridProcesando(Datos:TclientDataset;Grid:TnextGrid);
var n:Integer;
begin
  try
    try
      Grid.BeginUpdate;
      if Datos.State <> dsBrowse then
        raise InteligentConnection.Create('Error de conexion de datos');

      Grid.ClearRows;

      if Datos.RecordCount = 0 then
        raise InteligentException.Create('*');


      with Datos do
      begin
        First;
        while not Eof  do
        begin
          if (FieldByName('estado').AsString = 'EnLista') or (FieldByName('estado').AsString = 'Editado') or (FieldByName('estado').AsString = 'Nuevo')  or (FieldByName('estado').AsString = 'Contratado') then
            Grid.AddCells([FieldByName('idpersonal').AsString,
                          FieldByName('codigopersonal').AsString,FieldByName('nombrecompleto').AsString,FieldByName('curp').AsString,
                          FieldByName('rfc').AsString,FieldByName('numerosegurosocial').AsString,FieldByName('EstadoCivil').AsString,
                          FieldByName('sexo').AsString,FieldByName('fechanacimiento').AsString,FieldByName('fechacontratacion').AsString,FieldByName('titulocargo').AsString
                          ,FieldByName('titulodepartamento').AsString,FieldByName('titulonomina').AsString]);
                     // Grid.OnCellFormating(nil,n,Grid.RowCount-1,clblue,fsBold,csEmpty);
          if FieldByName('estado').AsString = 'Contratado' then
            for n := 0 to Grid.Columns.Count-1 do
             // Grid.OnCellFormating(Grid.Cell[n,Grid.RowCount-1],n,Grid.RowCount-1,clblue);
               Grid.Cell[n,Grid.RowCount-1].Color := $00EBECCC;
          if FieldByName('estado').AsString = 'EnLista' then
            for n := 0 to Grid.Columns.Count-1 do
              Grid.Cell[n,Grid.RowCount-1].Color := $00B7DFDE;
              //Grid.OnCellFormating(Grid.Cell[n,Grid.RowCount-1],n,Grid.RowCount-1,clblack);  }
          Next;
        end;
      end;
    finally
      Grid.EndUpdate;
    end;
  except
    on e:InteligentException do
      if e.Message = '*' then
        ;
  end;
end;

procedure TFrmContratoPersonal.CambiarCodigoLista();
begin

end;

procedure TFrmContratoPersonal.CdTipoNominaAfterScroll(DataSet: TDataSet);
begin
  // Localizar las guardias correspondientes a este tipo de Nómina
  cdGuardias.Filtered := False;
  cdGuardias.Filter := 'IdTipoNomina = ' + cdTipoNomina.FieldByName('IdTipoNomina').AsString;
  cdGuardias.Filtered := True;
end;

{$ENDREGION}
end.


