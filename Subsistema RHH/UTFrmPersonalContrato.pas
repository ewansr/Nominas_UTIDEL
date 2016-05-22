unit UTFrmPersonalContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, Spin,
  AdvProgressBar, ComCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, AdvShapeButton, Buttons, PngSpeedButton, JvExControls,
  JvLabel, ExtCtrls,ClientModuleUnit1,UInteliDialog, AdvEdit, NxColumns,
  NxDBColumns, NxColumnClasses, NxGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, cxButtons, cxGroupBox;

type
  TFrmPersonalContrato = class(TFrmCatalogo)
    EdtfFiltrado: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NextGrid1: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    CdORganizacion: TClientDataSet;
    CdTipoNomina: TClientDataSet;
    CdDepartamento: TClientDataSet;
    CdAguinaldos: TClientDataSet;
    CdCargo: TClientDataSet;
    CdSalarioBase: TClientDataSet;
    CdVacacional: TClientDataSet;
    CdGuardias: TClientDataSet;
    CdPeriodosGuardias: TClientDataSet;
    CdBuscaGuardia: TClientDataSet;
    CdSalario: TClientDataSet;
    CdRangoSalario: TClientDataSet;
    CdPlazaDetalle: TClientDataSet;
    CdPlaza: TClientDataSet;
    CdImss: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure btnfn1Click(Sender: TObject);
    procedure DBGridPrincipalCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    CdPersonalUpt:Tclientdataset;
    procedure Filtrar;
    procedure inicializar;
    procedure abrir2v;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPersonalContrato: TFrmPersonalContrato;

implementation

uses UTfrmContratoPersonalDetalle;
{$R *.dfm}

procedure TFrmPersonalContrato.btnfn1Click(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmPersonalContrato.BtnSearchClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmPersonalContrato.BtnSelectClick(Sender: TObject);
var
    Resp,PlazaLibre:Integer;
begin
  try
    if not IniciarTransaccion then
      raise Exception.Create('No se puede iniciar la transacción con el servidor.');
    try
      if Length(Trim(CdPersonalUpt.ProviderName)) = 0 then
        if not CrearConjunto(CdPersonalUpt,'nuc_personal',ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['personal']);

      try
        if not CargarDatosFiltrados(CdPersonalUpt,'idpersonal',[cdDatos.FieldByName('idpersonal').AsInteger]) then
          raise InteligentConnection.CreateByCode(6, ['personal', cdDatos.FieldByName('idpersonal').AsString, 'idpersonal']);

        CdPersonalUpt.Open;

        if CdPersonalUpt.RecordCount < 1 then
          raise Exception.Create('Error Message');

        if CdPersonalUpt.RecordCount > 1 then
          raise Exception.Create('Error Message');

        //creando los conjuntos de la ventana que se desplegará
        //Revisar y optimizar
        PlazaLibre := -9;
        try
          if length(trim(CdPlazaDetalle.ProviderName)) > 0 then
          begin
            CdPlazaDetalle.Close;
            EliminarConjunto(CdPlazaDetalle);
          end;


          //DsPlazaDetalle.DataSet := nil;
          CdPlazaDetalle.close;
          if not CrearConjunto(CdPlazaDetalle,'rhu_plazadetalle_disponibles',ccSelect) then
            raise InteligentConnection.CreateByCode(5, ['detalle disponibles']);
          CdPlazaDetalle.Open;
          if CdPlazaDetalle.RecordCount > 0 then
            PlazaLibre := CdPlazaDetalle.FieldByName('idplazadetalle').AsInteger;
        finally
          CdPlazaDetalle.Close;
          EliminarConjunto(CdPlazaDetalle);
        end;

        if not CrearConjunto(CdPlazaDetalle,'rhu_plazadetalle',ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['detalle de plazas']);

        if not CargarDatosFiltrados(CdPlazaDetalle,'idplazadetalle',[PlazaLibre]) then
          raise InteligentConnection.CreateByCode(6, ['detalle de plazas', 'Null', 'idpersonal']);

        CdPlazaDetalle.Open;

        if length(CdPlaza.ProviderName) = 0 then
        begin
          if not CrearConjunto(CdPlaza,'rhu_plaza',ccUpdate) then
            raise InteligentConnection.CreateByCode(5, ['plaza']);
        end;

        if length(CdImss.ProviderName) = 0 then
        begin
          if not CrearConjunto(CdImss,'nuc_personalimss',ccUpdate) then
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

        if length(CdCargo.ProviderName) = 0 then
        begin
          if not CrearConjunto(CdCargo,'nuc_cargo',ccCatalog) then
            raise InteligentConnection.CreateByCode(5, ['Cargos']);
          if not CargarDatosFiltrados(CdCargo,'idcargo',[-9]) then
            raise InteligentConnection.CreateByCode(6, ['Cargos', '-9', 'cargo']);
          CdCargo.Open;
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
  finally
    CancelarBloqueo(CdPersonalUpt,CdPersonalUpt.FieldByName('idpersonal').AsInteger);
  end;
  if Resp = mrok then
    cdDatos.Refresh;
end;

procedure TFrmPersonalContrato.DBGridPrincipalCellDblClick(Sender: TObject;
  ACol, ARow: Integer);
begin
  //inherited;
  BtnSelect.Click;
end;

procedure TFrmPersonalContrato.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;
  cdDatos.close;
  Parametros.Add('activo', 'si');
  Parametros.Add('idplazadetalle','');
  {
  if Trim(edtcodigo.Text) <> '' then
    Parametros.Add('nombre', Trim(edtcodigo.Text) + '%');

  if Trim(edtsucursal.Text) <> '' then
    Parametros.Add('sucursal', Trim(edtsucursal.Text) + '%');

  if Trim(edtcodigo.Text) <> '' then
    Parametros.Add('codigo', Trim(edtcodigo.Text) + '%');
                                                           }
  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.open;
  Parametros.Free;
end;

procedure TFrmPersonalContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([cdDatos,CdPersonalUpt,CdAguinaldos,cdorganizacion,cddepartamento,cdtiponomina,CdCargo,CdVacacional,CdGuardias,CdPeriodosGuardias,CdBuscaGuardia,CdSalario,CdRangoSalario,CdPlaza,CdPlazaDetalle,CdImss]);
  inherited;
end;

procedure TFrmPersonalContrato.FormCreate(Sender: TObject);
begin
  CdPersonalUpt := TClientDataSet.Create(self);
  inherited;
end;

procedure TFrmPersonalContrato.FormShow(Sender: TObject);
begin
  Try
    inherited;
    inicializar;
    abrir2v;
    PanelSelect.Visible := True;
  Except

    ;
  End;
end;

procedure TFrmPersonalContrato.abrir2v;
var
  i, idconvenio: integer;
  OldCursor: TCursor;
begin
  UsePaginacion := False;
  if Not ModoSeleccion then
  Try
    Try
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        cdDatos.Close;
        if not CrearConjunto(cdDatos, EntityName, ccCatalog) then
         raise InteligentConnection.CreateByCode(5, ['personal']);

        if UsePaginacion then
          Paginacion(PnlPro,cdDatos,CuantosRegistros(cdDatos),PBPaginacion,NPaginacion, True)
        else
          if Not CargarDatosFiltrados(cdDatos, keyfield, [-9]) then
            raise InteligentConnection.CreateByCode(6, ['personal', '-9', 'idpersonal']);

        //if cdDatos.State = dsInactive then
        //  cdDatos.Open;

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

procedure TFrmPersonalContrato.inicializar;
begin
  keyField := 'idpersonal';
  entityName := 'nuc_personal';
  codeField := 'codigopersonal';
  //    if key = #13 then
  //  Filtrar;
end;

end.
