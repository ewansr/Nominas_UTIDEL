unit UTFrmPersonalHExtra;

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
  dxSkinsdxBarPainter, dxBar, cxContainer, cxTextEdit, cxButtons, cxGroupBox,
  cxLabel, cxCheckBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TFrmPersonalHExtra = class(TForm)
    GroupBox2: TcxGroupBox;
    dsPersonalIncluido: TDataSource;
    PopupMenu1: TPopupMenu;
    ConsultarNminasdondeaparece1: TMenuItem;
    ConsultarFichadePersonal1: TMenuItem;
    N1: TMenuItem;
    cdNominaP: TClientDataSet;
    MemHExtras: TClientDataSet;
    MemHExtrasIdPersonal: TIntegerField;
    PnlHExtras: TPanel;
    BtnExtras: TButton;
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
    cdDisponiblesIdOrganizacion: TIntegerField;
    cdDisponiblesIdDepartamento: TIntegerField;
    cdSeleccionadosIdOrganizacion: TIntegerField;
    cdSeleccionadosIdDepartamento: TIntegerField;
    cdDisponiblesNombreOrganizacion: TStringField;
    cdSeleccionadosNombreOrganizacion: TStringField;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAceptar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxBLbuttonCargarExTRas: TdxBarLargeButton;
    blnfldIncluir: TBooleanField;
    CxGridSeleccionados: TcxGrid;
    GridSeleccionados: TcxGridDBTableView;
    CxColumnCxGridMainColumn1: TcxGridDBColumn;
    CxColumnCxGridMainColumn2: TcxGridDBColumn;
    CxColumnCxGridMainColumn3: TcxGridDBColumn;
    CxColumnCxGridMainColumn4: TcxGridDBColumn;
    CxColumnCxGridMainColumn5: TcxGridDBColumn;
    CxColumnCxGridMainColumn6: TcxGridDBColumn;
    CxColumnCxGridMainColumn7: TcxGridDBColumn;
    CxColumnCxGridMainColumn8: TcxGridDBColumn;
    CxColumnCxGridMainColumn9: TcxGridDBColumn;
    CxLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxstylbG: TcxStyle;
    dtfldMemHExtrasDetalleFechaAPlicacion: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnExtrasClick(Sender: TObject);
    procedure ColExtrasChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure CxColumnCxGridMainColumn1PropertiesChange(Sender: TObject);
  private
    procedure LlenarMemory(Grid: TcxGridDBTableView);
    procedure LlamarVentana(Datos: Tclientdataset);
    procedure RevisarHExtras(Datos: Tclientdataset; Grid: TcxGridDBTableView);
    procedure LlenarMemoryDetalles(Datos: Tclientdataset);
    procedure GuardarHorasExtras(Original,Personales, Detalle: Tclientdataset);
    procedure ProcedimientoGuardarExtras(Original, Personales,
      Detalle: Tclientdataset);
  public
    ModoHExtras: Boolean;
    IdTipoNomina: Integer;
    IdNomina: Integer;
    DsExtras: TDataSource;
    Fechai,FechaF:TDate;
  end;

var
  FrmPersonalHExtra: TFrmPersonalHExtra;

implementation

uses UInteliDialog,UTFrmAsignarHorasExtras;

{$R *.dfm}

procedure TFrmPersonalHExtra.BitBtn1Click(Sender: TObject);
var
  cdModificar, cdDetalle: TClientDataSet;
  Cursor: TCursor;
  i: Integer;
  ListaSel: String;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      if ModoHExtras then
      begin
        //si la ventana es generada para guardar horas extras aqui se debe realizar
        //el proceso de asignacion de horas extras para el personal
        //el dataset de personales y el de detalle se adjuntan en este procedimiento
        //GuardarHorasExtras(tclientdataset(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);  //tarda mucho
        ProcedimientoGuardarExtras(tclientdataset(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);
        Close;
      end;
    Finally
      Screen.Cursor := Cursor;
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

procedure TFrmPersonalHExtra.Button2Click(Sender: TObject);
begin
  //GuardarHorasExtras(TClientDataSet(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);
  ProcedimientoGuardarExtras(tclientdataset(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);
end;

procedure TFrmPersonalHExtra.Button3Click(Sender: TObject);
begin
  GuardarHorasExtras(tclientdataset(DsExtras.DataSet),MemHExtras,MemHExtrasDetalle);
end;

procedure TFrmPersonalHExtra.BtnExtrasClick(Sender: TObject);
var
  Row:Integer;
  GridRef:TNextGrid;
begin
  Llenarmemory(GridSeleccionados);
  MemHExtras.Filtered := False;
  LlamarVentana(MemHExtras);
end;

procedure TFrmPersonalHExtra.ColExtrasChange(Sender: TObject);
var EliminarRegistros:Boolean;
    fila: integer;
begin
//  try
//    fila := GridSeleccionados.Controller.SelectedRows;
//    EliminarRegistros := False;
//    //se pregunta si en realidad se quieeren eliminar los registros en caso de ser necesario
//    if (not cdSeleccionados.FieldByName('Incluir').AsBoolean) then
//     if   (InteliDialog.ShowModal('Seguridad','¿Está seguro que desea eliminar las horas extras a este personal?, de ser así serán borrados permanentemente de la base de datos.', mtConfirmation, [ mbYes, mbNo ], 0) = mrNo) then
//     begin
//      GridSeleccionados.Cell[0,Fila].AsBoolean := True;
//     end
//     else
//       EliminarRegistros := True;
//
//    //Se eliminan los registros tanto del personal como del horario
//    if EliminarRegistros then
//    begin
//      if MemHExtras.Locate('idpersonal',GridSeleccionados.Cells[8,Fila],[]) then
//        MemHExtras.Delete;
//
//      while MemHExtrasDetalle.Locate('idpersonal',GridSeleccionados.Cells[8,Fila],[]) do
//        MemHExtrasDetalle.Delete;
//    end;
//  except
//    on e:InteligentException do
//    begin
//      if e.Message <> '*' then
//        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
//    end;
//    on e:Exception do
//      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
//  end;
end;

procedure TFrmPersonalHExtra.CxColumnCxGridMainColumn1PropertiesChange(
  Sender: TObject);
var EliminarRegistros:Boolean;
    fila: integer;
begin
  try
    //fila := GridSeleccionados.Controller.SelectedRows;
    EliminarRegistros := False;
    //se pregunta si en realidad se quieeren eliminar los registros en caso de ser necesario
    if (nOT cdSeleccionados.FieldByName('Incluir').AsBoolean = true) then
     if   (InteliDialog.ShowModal('Seguridad','¿Está seguro que desea eliminar las horas extras a este personal?, de ser así serán borrados permanentemente de la base de datos.', mtConfirmation, [ mbYes, mbNo ], 0) = mrNo) then
     begin
      cdSeleccionados.FieldByName('Incluir').AsBoolean := True;
     end
     else
       EliminarRegistros := True;

    //Se eliminan los registros tanto del personal como del horario
    if EliminarRegistros then
    begin
      if MemHExtras.Locate('idpersonal',cdSeleccionados.FieldByName('IdPErsonal').AsInteger,[]) then
        MemHExtras.Delete;

      while MemHExtrasDetalle.Locate('idpersonal',cdSeleccionados.FieldByName('IdPErsonal').AsInteger,[]) do
        MemHExtrasDetalle.Delete;
    end;
  except
    on e:InteligentException do
    begin
      if e.Message <> '*' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;
    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmPersonalHExtra.dxBarLargeButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPersonalHExtra.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  LiberarVentana(Self, Action);
end;

procedure TFrmPersonalHExtra.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  DsExtras := TDataSource.Create(Self);
  ModoHExtras := False;
  AccedeACoordenadas(Self);
  ClientModule1.ComponentColor(self);
  ClientModule1.RastrearGrids(self);
  MemHExtras.CreateDataSet;
  MemHExtrasDetalle.CreateDataSet;
end;

procedure TFrmPersonalHExtra.FormShow(Sender: TObject);
begin
  // Crear los conjuntos
  cdDisponibles.CreateDataSet;
  cdSeleccionados.CreateDataSet;

  dsPersonalIncluido.DataSet.First;
  while not dsPersonalIncluido.DataSet.Eof do
  begin
    if dsPersonalIncluido.DataSet.FieldByName('NominaPersonal').AsInteger = 1 then
    begin
//
//      cdDisponibles.Append;
//      cdDisponibles.FieldByName('IdOrganizacion').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdOrganizacion').AsInteger;
//      cdDisponibles.FieldByName('NombreOrganizacion').AsString := dsPersonalIncluido.DataSet.FieldByName('NombreOrganizacion').AsString;
//      cdDisponibles.FieldByName('IdDepartamento').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdDepartamento').AsInteger;
//      cdDisponibles.FieldByName('IdPersonal').AsInteger := dsPersonalIncluido.DataSet.FieldByName('IdPersonal').AsInteger;
//      cdDisponibles.FieldByName('CodigoPersonal').AsString := dsPersonalIncluido.DataSet.FieldByName('CodigoPersonal').AsString;
//      cdDisponibles.FieldByName('NombreCompleto').AsString := dsPersonalIncluido.DataSet.FieldByName('NombreCompleto').AsString;
//      cdDisponibles.FieldByName('NumIMSS').AsString := dsPersonalIncluido.DataSet.FieldByName('NumeroSeguroSocial').AsString;
//      cdDisponibles.FieldByName('Departamento').AsString := dsPersonalIncluido.DataSet.FieldByName('TituloDepartamento').AsString;
//      cdDisponibles.FieldByName('Puesto').AsString := dsPersonalIncluido.DataSet.FieldByName('TituloCargo').AsString;
//      cdDisponibles.FieldByName('Estado').AsString := dsPersonalIncluido.DataSet.FieldByName('NominaPersonal').AsString;
//      cdDisponibles.Post;
//    end
//    else
//    begin
      //GridSeleccionados.AddCells(['',dsPersonalIncluido.DataSet.FieldByName('CodigoPersonal').AsString, dsPersonalIncluido.DataSet.FieldByName('NombreCompleto').AsString, dsPersonalIncluido.DataSet.FieldByName('RegPatIMSS').AsString, dsPersonalIncluido.DataSet.FieldByName('NumeroSeguroSocial').AsString, dsPersonalIncluido.DataSet.FieldByName('TituloDepartamento').AsString, dsPersonalIncluido.DataSet.FieldByName('TituloCargo').AsString, dsPersonalIncluido.DataSet.FieldByName('NominaPersonal').AsString, dsPersonalIncluido.DataSet.FieldByName('IdPersonal').AsString]);

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
      cdSeleccionados.Post;
    end;

    dsPersonalIncluido.DataSet.Next;
  end;

  //se activan los elementos necesarios en caso de ser usado para las horas extras
  //de igual forma se juega con los align para que aparezcan de manera correcta
  //mutacion horas extras
  //PnlHExtras.Visible := ModoHExtras;
  PnlHExtras.Align := alnone;
  PnlHExtras.Align := alRight;
  if ModoHExtras then
  begin
    LlenarMemoryDetalles(TClientDataSet(DsExtras.DataSet));
    RevisarHExtras(MemHExtrasDetalle,GridSeleccionados);
    Llenarmemory(GridSeleccionados);
  end;
end;

procedure TFrmPersonalHExtra.LlenarMemory(Grid:TcxGridDBTableView);
var row:Integer;
begin
  //aqui se llenan los encabezados con los personales seleccionados
  MemHExtras.EmptyDataSet;
  cdSeleccionados.First;
  while Not cdSeleccionados.Eof do
  begin
    if cdSeleccionados.FieldByName('Incluir').AsBoolean then
    begin
      MemHExtras.Append;
      dsPersonalIncluido.DataSet.Locate('codigopersonal',cdSeleccionados.FieldByName('codigoPersonal').AsString,[]) ;
      MemHExtras.FieldByName('idpersonal').AsInteger :=  dsPersonalIncluido.DataSet.FieldByName('idpersonal').AsInteger;
      MemHExtras.FieldByName('puesto').AsString := cdSeleccionados.FieldByName('Puesto').AsString;
      MemHExtras.FieldByName('codigopersonal').AsString := cdSeleccionados.FieldByName('CodigoPersonal').AsString;
      MemHExtras.FieldByName('nombre').AsString := cdSeleccionados.FieldByName('NombreCompleto').AsString;
      MemHExtras.Post;
    end;
    cdSeleccionados.Next;
  end;
end;
procedure TFrmPersonalHExtra.LlamarVentana(Datos:Tclientdataset);
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
procedure TFrmPersonalHExtra.RevisarHExtras(Datos:Tclientdataset;Grid:TcxGridDBTableView);
var Row:Integer;
begin
  //establece los valores del checkbox
  cdSeleccionados.First;
  while not cdSeleccionados.Eof do
  begin
    if Datos.Locate('idpersonal',cdSeleccionados.FieldByName('IdPersonal').AsInteger,[]) then
    begin
      cdSeleccionados.Edit;
      cdSeleccionados.FieldByName('Incluir').AsBoolean := True;
      cdSeleccionados.Post;
    end;
    cdSeleccionados.Next;
  end;
end;

procedure TFrmPersonalHExtra.LlenarMemoryDetalles(Datos:Tclientdataset);
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
    MemHExtrasDetalle.FieldByName('FechaAplicacion').AsDateTime := Datos.FieldByName('FechaAPlicacion').AsDateTime;
    MemHExtrasDetalle.Post;
    Datos.Next;
  end;
end;

procedure TFrmPersonalHExtra.GuardarHorasExtras(Original,Personales,Detalle:Tclientdataset);
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
              cdUptHe.FieldByName('FechaAplicacion').AsDateTime := Detalle.FieldByName('FechaAplicacion').asDateTime;
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
          and ((Detalle.FieldByName('horas').Asfloat <> Original.FieldByName('horas').AsFloat) or (Detalle.FieldByName('fechaAplicacion').asDatetime <> Original.FieldByName('FechaAplicacion').asDateTime)) then
          begin
            cduptHE.Close;
            CargarDatosFiltrados(cduptHE,'idpersonal_te',[Detalle.FieldByName('idpersonal_te').AsInteger]);
            cduptHE.Open;
            cduptHE.Edit;
            cduptHE.FieldByName('horas').AsFloat := Detalle.FieldByName('horas').AsFloat;
            cdUptHE.FieLdByName('FechaAplicacion').asDateTime := Detalle.FieldByName('FechaAplicacion').asDateTime;
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

procedure TFrmPersonalHExtra.ProcedimientoGuardarExtras(Original,Personales,Detalle:Tclientdataset);
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
