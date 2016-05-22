unit UtFrmWizardReporteExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxGraphics, cxLookAndFeelPainters, cxLookAndFeels,
  dxCustomWizardControl, dxWizardControl, dxWizardControlForm, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, cxImage,
  DB, DBClient, ClientModuleUnit1, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, ComCtrls, cxListView, cxListBox,
  cxDropDownEdit, cxSpinEdit, Menus, StdCtrls, cxButtons, UInteliDialog;

type
  TConceptos = class
    IdConcepto: Integer;
    Nombre : string;
    Clave : string;
    tituloConcepto : string;
    IdTipoNomina: Integer;
    TipoNomina: string;
    Titulo: string;
    Modo: string;
    Descripcion : string;
  end;

  TDatosPersonales = class
    nombreCampo : string;
    tituloCampo : string;
  end;

  TFrmWizardReporteExcel = class(TdxWizardControlForm)
    controlWizard: TdxWizardControl;
    paginaBienvenida: TdxWizardControlPage;
    CxImgLogo: TcxImage;
    CxLblReporteConfigurar: TcxLabel;
    CxLblNombreReporte: TcxLabel;
    CxLblTipo: TcxLabel;
    CxLbltipoNomina: TcxLabel;
    CxLbl1: TcxLabel;
    paginaConceptos: TdxWizardControlPage;
    cdConceptos: TClientDataSet;
    dsConceptos: TDataSource;
    cxVistaConceptos: TcxGridDBTableView;
    cxNivelConceptos: TcxGridLevel;
    gridConceptos: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxstylGridBackground: TcxStyle;
    cxstyl1: TcxStyle;
    cdConceptosMemoria: TClientDataSet;
    dsConceptosMemoria: TDataSource;
    tcxIncluir: TcxGridDBColumn;
    tcxNombre: TcxGridDBColumn;
    tcxModo: TcxGridDBColumn;
    tcxIdConcepto: TcxGridDBColumn;
    paginaDispersionConceptos: TdxWizardControlPage;
    listaConceptos: TcxListBox;
    vistaPercepciones: TcxGridDBTableView;
    nivelPercepciones: TcxGridLevel;
    gridPercepciones: TcxGrid;
    vistaDeducciones: TcxGridDBTableView;
    nivelDeducciones: TcxGridLevel;
    gridDeducciones: TcxGrid;
    tcxIdConceptoPercepcion: TcxGridDBColumn;
    tcxModoPercepcion: TcxGridDBColumn;
    tcxTipoNominaPercepcion: TcxGridDBColumn;
    tcxNombrePercepcion: TcxGridDBColumn;
    tcxIdConceptoDeducciones: TcxGridDBColumn;
    tcxNombreDeducciones: TcxGridDBColumn;
    tcxModoDeducciones: TcxGridDBColumn;
    tcxTipoNominaDeducciones: TcxGridDBColumn;
    cdPercepcionesMemoria: TClientDataSet;
    dsPercepcionesMemoria: TDataSource;
    cdDeduccionesMemoria: TClientDataSet;
    dsDeduccionesMemoria: TDataSource;
    tcxFuncionPercepciones: TcxGridDBColumn;
    tcxColPosicionPercepciones: TcxGridDBColumn;
    tcxFuncionDeducciones: TcxGridDBColumn;
    tcxColPosicionDeducciones: TcxGridDBColumn;
    paginaDatosPersonales: TdxWizardControlPage;
    listaDatosEmpleados: TcxListBox;
    listaDatosEmpleadosElegidos: TcxListBox;
    btnIzquierdaDerecha: TcxButton;
    btnDerechaIzquierda: TcxButton;
    paginaExtra: TdxWizardControlPage;
    cdDatosPersonalesMemoria: TClientDataSet;
    paginaFinalizar: TdxWizardControlPage;
    vistaConceptosExtra: TcxGridDBTableView;
    nivelConceptosExtra: TcxGridLevel;
    gridConceptosExtra: TcxGrid;
    tcxExtraIncluir: TcxGridDBColumn;
    tcxExtraNombre: TcxGridDBColumn;
    tcxExtraModo: TcxGridDBColumn;
    cdConceptosExtraMemoria: TClientDataSet;
    dsConceptosExtraMemoria: TDataSource;
    cdReporteDetalle: TClientDataSet;
    cdConceptosExtra: TClientDataSet;
    cxlbl3: TcxLabel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cdDatosPersonales: TClientDataSet;
    listaResumen: TcxListBox;
    cxlbl2: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl7: TcxLabel;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    cxImage4: TcxImage;
    cxlbl8: TcxLabel;
    cxlbl9: TcxLabel;
    cxlbl10: TcxLabel;
    cxlbl11: TcxLabel;
    paginaConfiguracionAnterior: TdxWizardControlPage;
    listaConfiguracionAnterior: TcxListBox;
    cxImage5: TcxImage;
    cxlbl13: TcxLabel;
    cxlbl14: TcxLabel;
    cxlbl12: TcxLabel;
    cxlbl15: TcxLabel;
    btnArriba: TcxButton;
    btnAbajo: TcxButton;
    tcxClave: TcxGridDBColumn;
    tcxClavePercepcion: TcxGridDBColumn;
    tcxClaveDeducciones: TcxGridDBColumn;
    tcxExtraClave: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure controlWizardPageChanged(Sender: TObject);
    procedure vistaPercepcionesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure vistaPercepcionesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure vistaDeduccionesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure vistaDeduccionesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure crearDatasetMemoria(dataset : TClientDataSet; vista : TcxGridDBTableView);
    procedure validarDragDrop(dataset : TClientDataSet);
    procedure listaConceptosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure listaConceptosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnIzquierdaDerechaClick(Sender: TObject);
    procedure pasarDeGridAGrid(de : tcxListBox; para : tcxListBox);
    procedure btnDerechaIzquierdaClick(Sender: TObject);
    procedure listaDatosEmpleadosElegidosDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure listaDatosEmpleadosElegidosDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure listaDatosEmpleadosDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure listaDatosEmpleadosDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure tcxIncluirPropertiesEditValueChanged(Sender: TObject);
    procedure tcxExtraIncluirPropertiesEditValueChanged(Sender: TObject);
    procedure controlWizardButtonClick(Sender: TObject;
      AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure tcxIncluirPropertiesChange(Sender: TObject);
    procedure insertarReporteDetalle(datasetFuente : TClientDataset; datasetObjetivo : TClientDataset; modo : string);
    procedure tcxColPosicionPercepcionesPropertiesEditValueChanged(
      Sender: TObject);
    procedure validarColumnas(datasetPosicionado : TClientDataset; datasetForaneo : TClientDataset);
    procedure tcxColPosicionDeduccionesPropertiesEditValueChanged(
      Sender: TObject);
    procedure grabarDatosPersonales();
    procedure btnAbajoClick(Sender: TObject);
    procedure btnArribaClick(Sender: TObject);
    procedure vistaPercepcionesStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure vistaDeduccionesStartDrag(Sender: TObject;
      var DragObject: TDragObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdReporte : integer;
    nombreReporte : string;
    idTipoNomina : integer;
    tipoNomina : string;
    conceptosChequeados : integer;
    contadorPercepcionesDeducciones : integer;
    conceptosExtraChequeados : integer;
    incluirOtrosConceptos : Boolean;
    noColumnasRepetidas : Integer;
    datosPersonales : TClientDataSet;
    gridConDrag : string;
  end;

var
  FrmWizardReporteExcel: TFrmWizardReporteExcel;

implementation

{$R *.dfm}

procedure TFrmWizardReporteExcel.btnAbajoClick(Sender: TObject);
var
  CurrIndex, LastIndex: Integer;
begin
  with listaDatosEmpleadosElegidos do
  begin
    CurrIndex := ItemIndex;
    LastIndex := Items.Count;
    if ItemIndex <> -1 then
    begin
      if CurrIndex + 1 < LastIndex then
      begin
        Items.Move(ItemIndex, (CurrIndex + 1));
        ItemIndex := CurrIndex + 1;
      end;
    end;
  end;
end;

procedure TFrmWizardReporteExcel.btnArribaClick(Sender: TObject);
var
  CurrIndex, LastIndex: Integer;
begin
  with listaDatosEmpleadosElegidos do
  begin
    CurrIndex := ItemIndex;
    LastIndex := Items.Count;
    if ItemIndex <> -1 then
    begin
      if CurrIndex - 1 > -1 then
      begin
        Items.Move(ItemIndex, (CurrIndex - 1));
        ItemIndex := CurrIndex - 1;
      end;
    end;
  end;
end;

procedure TFrmWizardReporteExcel.btnDerechaIzquierdaClick(Sender: TObject);
begin
  //Pasar de la lista de Datos personales elegidos por el usuario a la lista de datos personales(Derecha a izquierda)
  pasarDeGridAGrid(listaDatosEmpleadosElegidos, listaDatosEmpleados);
end;

procedure TFrmWizardReporteExcel.btnIzquierdaDerechaClick(Sender: TObject);
var
  i : Integer;
begin
  //Pasar de la lista de Datos Personales a la lista de Datos Personales Elegidos(izquierda a derecha)
  pasarDeGridAGrid(listaDatosEmpleados, listaDatosEmpleadosElegidos);
end;

procedure TFrmWizardReporteExcel.controlWizardButtonClick(Sender: TObject;
  AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
var
  Cursor : TCursor;
  percepcionesColumna1 : TClientDataset;
  percepcionesColumna2 : TClientDataSet;
  columnasRepetidas : Boolean;
begin
  //Si el boton es el boton cancelar, entonces salir del wizard y destruir los objetos
  if AKind = wcbkCancel then
  begin
    Close;
  end;

  //Si el boton es el boton finish, entonces terminar el wizard y hacer la grabacion de los datos en nuc_reportedetalle
  if AKind = wcbkFinish then
  begin
    //Grabar registros en nuc_reportedetalle
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if cdReporteDetalle.RecordCount > 0 then
      begin
        if (InteliDialog.ShowModal('Aviso', '¿Está Seguro que desea crear esta configuración y reemplazar la existente?', mtInformation, [mbYes, mbNo], 0)) = mrYes then
        begin
          cdReporteDetalle.First;
          while Not cdReporteDetalle.Eof do
          begin
            cdReporteDetalle.Delete;
            cdReporteDetalle.ApplyUpdates(-1);
            //cdReporteDetalle.Next;
          end;

          datosPersonales.First;
          while Not datosPersonales.Eof do
          begin
            datosPersonales.Delete;
            datosPersonales.ApplyUpdates(-1);
            //datosPersonales.Next;
          end;

          //Grabar PERCEPCIONES
          insertarReporteDetalle(cdPercepcionesMemoria, cdReporteDetalle, 'PERCEPCION');

          //Grabar DEDUCCIONES
          insertarReporteDetalle(cdDeduccionesMemoria, cdReporteDetalle, 'DEDUCCION');

          //Grabar EXTRA
          insertarReporteDetalle(cdConceptosExtra, cdReporteDetalle, 'EXTRA');

          //Grabar DATOS PERSONALES
          grabarDatosPersonales;

          InteliDialog.ShowModal('Aviso', 'Configuración exitosa', mtInformation, [mbOK], 0);

          Close;
        end;
      end
      else
      begin
        //Grabar PERCEPCIONES
        insertarReporteDetalle(cdPercepcionesMemoria, cdReporteDetalle, 'PERCEPCION');

        //Grabar DEDUCCIONES
        insertarReporteDetalle(cdDeduccionesMemoria, cdReporteDetalle, 'DEDUCCION');

        //Grabar EXTRA
        insertarReporteDetalle(cdConceptosExtra, cdReporteDetalle, 'EXTRA');

        //Grabar DATOS PERSONALES
        grabarDatosPersonales;

        InteliDialog.ShowModal('Aviso', 'Configuración exitosa', mtInformation, [mbOK], 0);

        Close;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TFrmWizardReporteExcel.controlWizardPageChanged(Sender: TObject);
const
  nombresCampos : Array[1..34] of string = ('idPersonal', 'codigoPersonal', 'nombre', 'curp', 'rfc', 'numeroSeguroSocial',
                                            'Gruposanguineo', 'aplicacionInfonavit', 'terminoInfonavit', 'telefono',
                                            'correo', 'NumeroInfonavit', 'FactorInfonavit', 'Estado', 'EstadoCivil',
                                            'estadonacimiento', 'sexo', 'nacionalidad', 'municipio', 'calle', 'Numero',
                                            'Colonia', 'fechanacimiento', 'delegacion', 'CP', 'TituloCargo',
                                            'TituloDepartamento', 'TituloSalario', 'SalarioDiario', 'SalarioIntegrado',
                                            'NombreOrganizacion', 'DiasDescanso', 'DiasTrabajados', 'RegistroPatronal'); //Datos de la consulta nuc_personal de tipo CATALOGO
  titulosCampos : array[1..34] of string = ('Id', 'Ficha', 'Nombre', 'Curp', 'RFC', 'NSS',
                                            'Grupo Sanguineo', 'Fecha Aplicacion Infonavit', 'Fecha Termino Infonavit', 'Telefono',
                                            'Correo', 'Numero Infonavit', 'Factor Infonavit', 'Estado', 'Estado Civil',
                                            'Estado de Nacimiento', 'Sexo', 'Nacionalidad', 'Municipio', 'Calle', 'Numero',
                                            'Colonia', 'Fecha de Nacimiento', 'Delegacion', 'CP', 'Puesto',
                                            'Departamento', 'Titulo Salario', 'Salario Diario', 'Salario Integrado',
                                            'Empresa', 'Dias de Descanso', 'Dias Trabajados', 'Registro Patronal');
var
  Cursor : TCursor;
  DatosConceptos: TConceptos;
  i : integer;
  datosPersonales : TDatosPersonales;
  contadorPercepcionesDeducciones : Integer;
begin
  //Si la hoja es la hoja de bienvenida
  {$REGION 'HOJA BIENVENIDA'}
  if controlWizard.ActivePage = paginaBienvenida then
  begin
    controlWizard.Buttons.Back.Enabled := True;
    controlWizard.Buttons.Next.Enabled := True;
  end;
  {$ENDREGION}

  //Si la hoja es la hoja de Conceptos
  {$REGION 'PAGINA CONCEPTOS'}
  if controlWizard.ActivePage = paginaConceptos then
  begin
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if conceptosChequeados = 0 then
      begin
        //Deshabilitar el boton next(NOTA: Se habilitara cuando el usuario seleccione algun concepto con los checkbox).
        controlWizard.Buttons.Next.Enabled := False;
      end
      else
      begin
        controlWizard.Buttons.Next.Enabled := True;
      end;

      cxVistaConceptos.Styles.OnGetContentStyle := nil;

      if Not cdConceptos.Active then
      begin
        //Abrir cdConceptos y mostrar checkboxes en el grid
        if Not CargarDatosFiltrados(cdConceptos, 'IdConcepto, IdTipoNomina, Liga, IdNomina', [-1, idTipoNomina, '-1', -1]) then
          raise InteligentException.CreateByCode(5, ['nom_conceptos']);

        if cdConceptos.Active = True then
          cdConceptos.Refresh
        else
          cdConceptos.Open;

        cdConceptos.First;

        cdConceptosMemoria.Open;

        cdConceptosMemoria.EmptyDataSet;
        while Not cdConceptos.Eof do
        begin
          cdConceptosMemoria.Append;
          cdConceptosMemoria.FieldByName('Incluir').AsBoolean       := False;
          cdConceptosMemoria.FieldByName('IdConcepto').AsInteger    :=    cdConceptos.FieldByName('IdConcepto').AsInteger;
          cdConceptosMemoria.FieldByName('IdTipoNomina').AsInteger  :=  cdConceptos.FieldByName('IdTipoNomina').AsInteger;
          cdConceptosMemoria.FieldByName('Nombre').AsString         :=         cdConceptos.FieldByName('Nombre').AsString;
          cdConceptosMemoria.FieldByName('Clave').AsString         :=         cdConceptos.FieldByName('Clave').AsString;
          cdConceptosMemoria.FieldByName('tituloConcepto').AsString := cdConceptos.FieldByName('tituloConcepto').AsString;
          cdConceptosMemoria.FieldByName('Modo').AsString           :=           cdConceptos.FieldByName('Modo').AsString;
          cdConceptosMemoria.FieldByName('Titulo').AsString         :=         cdConceptos.FieldByName('Titulo').AsString;
          cdConceptosMemoria.FieldByName('Descripcion').AsString    :=    cdConceptos.FieldByName('Descripcion').AsString;
          cdConceptosMemoria.FieldByName('Aplicacion').AsDateTime   :=   cdConceptos.FieldByName('Aplicacion').AsDateTime;

          cdConceptosMemoria.Post;
          cdConceptos.Next;
        end;
      end;
    finally
      cxVistaConceptos.Styles.OnGetContentStyle := nil;
      Screen.Cursor := crDefault;
    end;
  end
  {$ENDREGION}

  //Si la hoja es la hoja de Dispersion de conceptos
  {$REGION 'DISPERSION CONCEPTOS'}
  else if controlWizard.ActivePage = paginaDispersionConceptos then
  begin
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;      
      
      if incluirOtrosConceptos = True then
      begin
        //Se deshabilita el boton Next.(NOTA: Se habilitara cuando el usuario disperse los conceptos hacia los grids)
        controlWizard.Buttons.Next.Enabled := False;

        //Obtener los IdConcepto de los conceptos elegidos por el usuario en la pagina 'paginaConceptos'
        cdConceptosMemoria.First;

        listaConceptos.Clear;
        while Not cdConceptosMemoria.Eof do
        begin
          if cdConceptosMemoria.FieldByName('Incluir').AsBoolean then
          begin
            DatosConceptos := TConceptos.Create;
            DatosConceptos.IdConcepto :=  cdConceptosMemoria.FieldByName('IdConcepto').AsInteger;
            DatosConceptos.Nombre     :=       cdConceptosMemoria.FieldByName('Nombre').AsString;
            DatosConceptos.Clave     :=       cdConceptosMemoria.FieldByName('Clave').AsString;
            DatosConceptos.tituloConcepto := cdConceptosMemoria.FieldByName('tituloConcepto').AsString;
            DatosConceptos.Modo       :=         cdConceptosMemoria.FieldByName('Modo').AsString;
            DatosConceptos.Titulo     :=       cdConceptosMemoria.FieldByName('Titulo').AsString;
            DatosConceptos.Descripcion := cdConceptosMemoria.FieldByName('Descripcion').AsString;

            listaConceptos.Items.AddObject(DatosConceptos.Nombre + '-' + DatosConceptos.Modo, DatosConceptos);
          end;
          cdConceptosMemoria.Next;
        end;

        if listaConceptos.Count = 0 then
          listaConceptos.Enabled := False
        else
          listaConceptos.Enabled := True;

        //Aqui crear campos para las percepciones
        if Not cdPercepcionesMemoria.Active then
        begin
          crearDatasetMemoria(cdPercepcionesMemoria, vistaPercepciones);
        end
        else
          cdPercepcionesMemoria.EmptyDataSet;

        //Aqui crear campos para las deducciones
        if Not cdDeduccionesMemoria.Active then
        begin
          crearDatasetMemoria(cdDeduccionesMemoria, vistaDeducciones);
        end
        else
          cdDeduccionesMemoria.EmptyDataSet;
      end
      else
      begin
        controlWizard.Buttons.Next.Enabled := True;
      end;
      incluirOtrosConceptos := False;
    finally
      Screen.Cursor := crDefault;
    end;
  end;

  {$ENDREGION}

  //Si la hoja es la hoja de Datos Personales
  {$REGION 'DATOS PERSONALES'}
  if controlWizard.ActivePage = paginaDatosPersonales then
  begin
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if listaDatosEmpleadosElegidos.Count = 0 then
      begin
        //Poner boton siguiente deshabilitado
        controlWizard.Buttons.Next.Enabled := False;

        listaDatosEmpleados.Clear;
        listaDatosEmpleadosElegidos.Clear;
        i := 1;
        while i <= Length(nombresCampos) do
        begin
          datosPersonales := TDatosPersonales.Create;
          datosPersonales.nombreCampo := nombresCampos[i];
          datosPersonales.tituloCampo := titulosCampos[i];

          listaDatosEmpleados.Items.AddObject(datosPersonales.tituloCampo, datosPersonales);

          i := i + 1;
        end;
      end
      else
        controlWizard.Buttons.Next.Enabled := True;
    finally
      Screen.Cursor := crDefault;
    end;

  end;

  {$ENDREGION}

  //Si la hoja es la hoja de Extra
  {$REGION 'EXTRA'}
  if controlWizard.ActivePage = paginaExtra then
  begin
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if conceptosExtraChequeados = 0 then
      begin
        //Deshabilitar el boton next(NOTA: Se habilitara cuando el usuario seleccione algun concepto con los checkbox).
        controlWizard.Buttons.Next.Enabled := False;
      end
      else
      begin
        controlWizard.Buttons.Next.Enabled := True;
      end;
      contadorPercepcionesDeducciones := 0;

      //Llenar cdDatosPersonalesMemoria con los datos Personales Elegidos por el usuario
      cdDatosPersonalesMemoria.EmptyDataSet;

      while contadorPercepcionesDeducciones < listaDatosEmpleadosElegidos.Count do
      begin
        cdDatosPersonalesMemoria.Append;
        cdDatosPersonalesMemoria.FieldByName('nombreCampo').AsString := TDatosPersonales(listaDatosEmpleadosElegidos.Items.Objects[contadorPercepcionesDeducciones]).nombreCampo;
        cdDatosPersonalesMemoria.FieldByName('tituloCampo').AsString := TDatosPersonales(listaDatosEmpleadosElegidos.Items.Objects[contadorPercepcionesDeducciones]).tituloCampo;
        contadorPercepcionesDeducciones := contadorPercepcionesDeducciones + 1;
        cdDatosPersonalesMemoria.Post;
      end;

      if cdConceptosExtraMemoria.RecordCount = 0 then
      begin
        //Pasar los conceptos de cdConceptos a cdConceptosExtraMemoria
        cdConceptos.First;

        while Not cdConceptos.Eof do
        begin
          cdConceptosExtraMemoria.Append;

          cdConceptosExtraMemoria.FieldByName('Incluir').AsBoolean       := False;
          cdConceptosExtraMemoria.FieldByName('IdConcepto').AsInteger    :=    cdConceptos.FieldByName('IdConcepto').AsInteger;
          cdConceptosExtraMemoria.FieldByName('IdTipoNomina').AsInteger  :=  cdConceptos.FieldByName('IdTipoNomina').AsInteger;
          cdConceptosExtraMemoria.FieldByName('Nombre').AsString         :=         cdConceptos.FieldByName('Nombre').AsString;
          cdConceptosExtraMemoria.FieldByName('Clave').AsString         :=         cdConceptos.FieldByName('Clave').AsString;
          cdConceptosExtraMemoria.FieldByName('tituloConcepto').AsString := cdConceptos.FieldByName('tituloConcepto').AsString;
          cdConceptosExtraMemoria.FieldByName('Modo').AsString           :=           cdConceptos.FieldByName('Modo').AsString;
          cdConceptosExtraMemoria.FieldByName('Titulo').AsString         :=         cdConceptos.FieldByName('Titulo').AsString;
          cdConceptosExtraMemoria.FieldByName('Descripcion').AsString    :=    cdConceptos.FieldByName('Descripcion').AsString;
          cdConceptosExtraMemoria.FieldByName('Aplicacion').AsDateTime   :=   cdConceptos.FieldByName('Aplicacion').AsDateTime;

          cdConceptosExtraMemoria.Post;

          cdConceptos.Next;
        end;
      end;

    finally
      Screen.Cursor := crDefault;
    end;
  end;
  {$ENDREGION}

  {$REGION 'FINALIZAR'}
   //Si la pagina es la pagina de finalizar
   if controlWizard.ActivePage = paginaFinalizar then
   begin
     controlWizard.Buttons.Back.Enabled := True;
     //Obtener los conceptos extra que el usuario halla elegido y meterlos a cdConceptosExtra ya que ahi estaran almacenados
     cdConceptosExtraMemoria.First;
     cdConceptosExtra.EmptyDataSet;
     while Not cdConceptosExtraMemoria.Eof do
     begin
       if cdConceptosExtraMemoria.FieldByName('Incluir').AsBoolean = True then
       begin
         cdConceptosExtra.Append;
         cdConceptosExtra.FieldByName('Incluir').AsBoolean       :=       cdConceptosExtraMemoria.FieldByName('Incluir').AsBoolean;
         cdConceptosExtra.FieldByName('IdConcepto').AsInteger    :=    cdConceptosExtraMemoria.FieldByName('IdConcepto').AsInteger;
         cdConceptosExtra.FieldByName('IdTipoNomina').AsInteger  :=  cdConceptosExtraMemoria.FieldByName('IdTipoNomina').AsInteger;
         cdConceptosExtra.FieldByName('Nombre').AsString         :=         cdConceptosExtraMemoria.FieldByName('Nombre').AsString;
         cdConceptosExtra.FieldByName('tituloConcepto').AsString := cdConceptosExtraMemoria.FieldByName('tituloConcepto').AsString;
         cdConceptosExtra.FieldByName('Modo').AsString           :=           cdConceptosExtraMemoria.FieldByName('Modo').AsString;
         cdConceptosExtra.FieldByName('Titulo').AsString         :=         cdConceptosExtraMemoria.FieldByName('Titulo').AsString;
         cdConceptosExtra.FieldByName('Descripcion').AsString    :=    cdConceptosExtraMemoria.FieldByName('Descripcion').AsString;
         cdConceptosExtra.FieldByName('Aplicacion').AsDateTime   :=   cdConceptosExtraMemoria.FieldByName('Aplicacion').AsDateTime;
         cdConceptosExtra.FieldByName('Funcion').AsString        := 'NOFUNCION';
         cdConceptosExtra.FieldByName('ColPosicion').AsInteger   :=   cdConceptosExtraMemoria.FieldByName('ColPosicion').AsInteger;
         cdConceptosExtra.Post;
       end;

       cdConceptosExtraMemoria.Next;
     end;

     listaResumen.Clear;
     //Mostrar las columnas que se mostraran en el excel como resumen de los datos que el usuario eligio
     cdDatosPersonalesMemoria.First;
     while Not cdDatosPersonalesMemoria.Eof do
     begin
       //Meter los datos Personales a la lista
       listaResumen.Items.Add('DATO PERSONAL --  ' + cdDatosPersonalesMemoria.FieldByName('tituloCampo').AsString);
       cdDatosPersonalesMemoria.Next;
     end;

     cdPercepcionesMemoria.First;
     while Not cdPercepcionesMemoria.Eof do
     begin
       //Meter las percepciones a la lista
       listaResumen.Items.Add('PERCEPCION       --  ' + cdPercepcionesMemoria.FieldByName('Nombre').AsString);
       cdPercepcionesMemoria.Next;
     end;

     cdDeduccionesMemoria.First;
     while Not cdDeduccionesMemoria.Eof do
     begin
       listaResumen.Items.Add('DEDUCCION        --  ' + cdDeduccionesMemoria.FieldByName('Nombre').AsString);
       cdDeduccionesMemoria.Next;
     end;

     cdConceptosExtra.First;
     while Not cdConceptosExtra.Eof do
     begin
       listaResumen.Items.Add('EXTRA                  --  ' + cdConceptosExtra.FieldByName('Nombre').AsString);
       cdConceptosExtra.Next;
     end;
   end;
  {$ENDREGION}

end;

procedure TFrmWizardReporteExcel.crearDatasetMemoria(dataset: TClientDataSet; vista : TcxGridDBTableView);
begin
  //Crea un dataset con los respectivos campos
  dataset.FieldDefs.Add('Incluir', ftBoolean, 0, False);
  dataset.FieldDefs.Add('IdConcepto', ftInteger, 0, False);
  dataset.FieldDefs.Add('IdTipoNomina', ftInteger, 0, False);
  dataset.FieldDefs.Add('Nombre', ftString, 80, False);
  dataset.FieldDefs.Add('Clave', ftString, 80, False);
  dataset.FieldDefs.Add('tituloConcepto', ftString, 100, False);
  dataset.FieldDefs.Add('Modo', ftString, 50, False);
  dataset.FieldDefs.Add('Titulo', ftString, 20, False);
  dataset.FieldDefs.Add('Descripcion', ftString, 100, False);
  dataset.FieldDefs.Add('Aplicacion', ftDate, 0, False);
  dataset.FieldDefs.Add('Funcion', ftString, 15, False);
  dataset.FieldDefs.Add('ColPosicion', ftInteger, 0, False);
  dataset.CreateDataSet;
  vista.Styles.OnGetContentStyle := nil;
end;

procedure TFrmWizardReporteExcel.FormCreate(Sender: TObject);
begin
  controlWizard.Buttons.Next.Caption   := 'Siguiente';
  controlWizard.Buttons.Cancel.Caption :=  'Cancelar';
  controlWizard.Buttons.Finish.Caption := 'Finalizar';

  if Not crearConjunto(cdConceptos, 'nom_concepto', ccSelect) then
    raise InteligentException.CreateByCode(5, ['nom_concepto']);

  //Crear tipos de datos y campos para el dataset manejado en memoria
  crearDatasetMemoria(cdConceptosMemoria, cxVistaConceptos);

  //Crear dataset para los datos Personales que el usuario eligira en la paginaDatosPersonales
  cdDatosPersonalesMemoria.FieldDefs.Add('nombreCampo', ftString, 150, False);
  cdDatosPersonalesMemoria.FieldDefs.Add('tituloCampo', ftString, 150, False);
  cdDatosPersonalesMemoria.CreateDataSet;

  crearDatasetMemoria(cdConceptosExtraMemoria, vistaConceptosExtra);
  crearDatasetMemoria(cdConceptosExtra, vistaConceptosExtra);

  //Crear dataset para cdReporteDetalle, en el cual se grabara la configuracion una vez terminado el wizard
  if not CrearConjunto(cdReporteDetalle, 'nuc_reportedetalle', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nuc_reportedetalle']);

  if Not CrearConjunto(cdDatosPersonales, 'nom_datosgral_excel', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['nom_datosgral_excel']);

  if cdDatosPersonales.Active then
    cdDatosPersonales.Refresh
  else
    cdDatosPersonales.Open;
end;

procedure TFrmWizardReporteExcel.FormShow(Sender: TObject);
//var
  //datosPersonales : TClientDataSet;
begin
  conceptosChequeados      := 0;
  conceptosExtraChequeados := 0;
  //Mostrar el nombre del reporte y el tipo de nomina que es en los labels correspondientes
  CxLblNombreReporte.Caption := nombreReporte;
  CxLbltipoNomina.Caption    :=    tipoNomina;

  if Not CargarDatosFiltrados(cdReporteDetalle, 'idCReporte, idConcepto, modo, Funcion, IdReporte', [-1, -1, -1, -1, IdReporte]) then
    raise InteligentException.CreateByCode(6, ['Configuracion reporte Excel', 'IdCReporte', '']);

  if cdReporteDetalle.Active then
    cdReporteDetalle.Refresh
  else
    cdReporteDetalle.Open;

  //Si ya existe una configuracion del reporte, entonces mostrar la hoja de resumen
  if cdReporteDetalle.RecordCount > 0 then
  begin
    datosPersonales := TClientDataSet.Create(Self);
    if Not CrearConjunto(datosPersonales, 'nom_datosgral_excel', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['nom_datosgral_excel']);

    if not CargarDatosFiltrados(datosPersonales, 'IdDatoGral, IdReporte', [-1, IdReporte]) then
      raise InteligentException.CreateByCode(6, ['Datos Personales excel', 'IdReporte', '']);

    if datosPersonales.Active then
      datosPersonales.Refresh
    else
      datosPersonales.Open;

    datosPersonales.First;
    while Not datosPersonales.Eof do
    begin
      listaConfiguracionAnterior.Items.Add('DATO PERSONAL -- ' + datosPersonales.FieldByName('tituloCampo').AsString);

      datosPersonales.Next;
    end;

    cdReporteDetalle.First;
    while Not cdReporteDetalle.Eof do
    begin
      if cdReporteDetalle.FieldByName('Modo').AsString = 'PERCEPCION' then
      begin
        listaConfiguracionAnterior.Items.Add('PERCEPCION        -- ' + cdReporteDetalle.FieldByName('Descripcion').AsString);
      end;
      cdReporteDetalle.Next;
    end;

    cdReporteDetalle.First;
    while Not cdReporteDetalle.Eof do
    begin
      if cdReporteDetalle.FieldByName('Modo').AsString = 'DEDUCCION' then
      begin
        listaConfiguracionAnterior.Items.Add('DEDUCCION         -- ' + cdReporteDetalle.FieldByName('Descripcion').AsString);
      end;
      cdReporteDetalle.Next;
    end;

    cdReporteDetalle.First;
    while Not cdReporteDetalle.Eof do
    begin
      if cdReporteDetalle.FieldByName('Modo').AsString = 'EXTRA' then
      begin
        listaConfiguracionAnterior.Items.Add('EXTRA                  -- ' + cdReporteDetalle.FieldByName('Descripcion').AsString);
      end;
      cdReporteDetalle.Next;
    end;

    controlWizard.ActivePage := paginaConfiguracionAnterior;
  end
  else
  begin
    controlWizard.ActivePage := paginaBienvenida;
    paginaConfiguracionAnterior.PageVisible := False;
  end;
end;

procedure TFrmWizardReporteExcel.grabarDatosPersonales;
begin
  //Graba los datos Personales que el usuario halla seleccionado de la hoja DATOS PERSONALES
  cdDatosPersonalesMemoria.First;
  while Not cdDatosPersonalesMemoria.Eof do
  begin
    cdDatosPersonales.Append;
    cdDatosPersonales.FieldByName('IdDatoGral').AsInteger := 0;
    cdDatosPersonales.FieldByName('nombreCampo').AsString := cdDatosPersonalesMemoria.FieldByName('nombreCampo').AsString;
    cdDatosPersonales.FieldByName('tituloCampo').AsString := cdDatosPersonalesMemoria.FieldByName('tituloCampo').AsString;
    cdDatosPersonales.FieldByName('IdReporte').AsInteger := IdReporte;
    cdDatosPersonales.Post;
    cdDatosPersonales.ApplyUpdates(-1);

    cdDatosPersonalesMemoria.Next;
  end;
end;

procedure TFrmWizardReporteExcel.insertarReporteDetalle(datasetFuente,
  datasetObjetivo: TClientDataset; modo: string);
begin
  //Inserta los datos elegidos durtante el wizard a la tabla nuc_reportedetalle
  datasetFuente.First;
  while Not datasetFuente.Eof do
  begin
    datasetObjetivo.Append;
    datasetObjetivo.FieldByName('IdCReporte').AsInteger := 0;
    datasetObjetivo.FieldByName('IdConcepto').AsInteger   := datasetFuente.FieldByName('IdConcepto').AsInteger;
    datasetObjetivo.FieldByName('Titulo').AsString     := datasetFuente.FieldByName('tituloConcepto').AsString;
    datasetObjetivo.FieldByName('Descripcion').AsString :=        datasetFuente.FieldByName('Nombre').AsString;//datasetFuente.FieldByName('Descripcion').AsString;
    datasetObjetivo.FieldByName('Modo').AsString := modo;
    datasetObjetivo.FieldByName('Funcion').AsString           := datasetFuente.FieldByName('Funcion').AsString;
    datasetObjetivo.FieldByName('ColPosicion').AsInteger := datasetFuente.FieldByName('ColPosicion').AsInteger;
    datasetObjetivo.FieldByName('IdReporte').AsInteger :=   IdReporte;
    datasetObjetivo.Post;
    datasetObjetivo.ApplyUpdates(-1);

    datasetFuente.Next;
  end;
end;

procedure TFrmWizardReporteExcel.listaConceptosDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  if gridConDrag = 'gridPercepciones' then
    cdPercepcionesMemoria.Delete
  else if gridConDrag = 'gridDeducciones' then
    cdDeduccionesMemoria.Delete;   
end;

procedure TFrmWizardReporteExcel.listaConceptosDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmWizardReporteExcel.listaDatosEmpleadosDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  pasarDeGridAGrid(listaDatosEmpleadosElegidos, listaDatosEmpleados);
end;

procedure TFrmWizardReporteExcel.listaDatosEmpleadosDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmWizardReporteExcel.listaDatosEmpleadosElegidosDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  DropPosition, startPosition : Integer;
  DropPoint : TPoint;
begin
  pasarDeGridAGrid(listaDatosEmpleados, listaDatosEmpleadosElegidos);
end;

procedure TFrmWizardReporteExcel.listaDatosEmpleadosElegidosDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmWizardReporteExcel.pasarDeGridAGrid(de, para: tcxListBox);
var
  i : Integer;
begin
  //Pasa los datos de un listBox a otro listBox
  i := 0;
  with de do
  begin
    while i < Items.Count do
    begin
      if Selected[i] then
      begin
        para.Items.AddObject(TDatosPersonales(Items.Objects[i]).tituloCampo, Items.Objects[i]);
        Items.Delete(i);
        i := -1;
      end;
      i := i + 1;
    end;
  end;

  //Si la lista de Datos Personales elgidos esta vacia, entonces dechabilitar boton siguiente
  if listaDatosEmpleadosElegidos.Count = 0 then
    controlWizard.Buttons.Next.Enabled := False
  else
    controlWizard.Buttons.Next.Enabled := True;
end;

procedure TFrmWizardReporteExcel.tcxColPosicionDeduccionesPropertiesEditValueChanged(
  Sender: TObject);
begin
  //Si la pagina activa es la pagina dispersion conceptos
  if controlWizard.ActivePage = paginaDispersionConceptos then
  begin
    //Revisar que los numeros de las columnas no se repitan, estando posicionado en el grid de deducciones
    validarColumnas(cdDeduccionesMemoria, cdPercepcionesMemoria);
    if noColumnasRepetidas > 0 then
    begin
      //InteliDialog.ShowModal('Aviso', 'Los numeros de columnas no se deben repetir.', mtInformation, [mbOk], 0);
      controlWizard.Buttons.Next.Enabled := False;
    end
    else
    begin
      controlWizard.Buttons.Next.Enabled := True;
    end;
  end;
end;                                                                      
                                          
procedure TFrmWizardReporteExcel.tcxColPosicionPercepcionesPropertiesEditValueChanged(
  Sender: TObject);
var
  Cursor : TCursor;
  EstaColumna1 : TClientDataset;
  EstaColumna2 : TClientDataSet;
  OtraColumna   : TClientDataSet;
begin
  //Si la pagina activa es la pagina dispersion conceptos
  if controlWizard.ActivePage = paginaDispersionConceptos then
  begin
    //Revisar que los numeros de las columnas no se repitan, estando posicionado en el gri de percepciones
    validarColumnas(cdPercepcionesMemoria, cdDeduccionesMemoria);
    if noColumnasRepetidas > 0 then
    begin
      //InteliDialog.ShowModal('Aviso', 'Los numeros de columnas no se deben repetir.', mtInformation, [mbOk], 0);
      controlWizard.Buttons.Next.Enabled := False;
    end
    else
    begin
      controlWizard.Buttons.Next.Enabled := True;
    end;
  end;
end;

procedure TFrmWizardReporteExcel.tcxExtraIncluirPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cdConceptosExtraMemoria.FieldByName('Incluir').AsBoolean then
  begin
    conceptosExtraChequeados := conceptosExtraChequeados + 1;
  end
  else
  begin
    conceptosExtraChequeados := conceptosExtraChequeados - 1;
  end;

  if conceptosExtraChequeados > 0 then
    controlWizard.Buttons.Next.Enabled :=   True
  else
    controlWizard.Buttons.Next.Enabled := False;
end;

procedure TFrmWizardReporteExcel.tcxIncluirPropertiesChange(Sender: TObject);
begin
  incluirOtrosConceptos := True;
end;

procedure TFrmWizardReporteExcel.tcxIncluirPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cdConceptosMemoria.FieldByName('Incluir').AsBoolean then
  begin
    conceptosChequeados := conceptosChequeados + 1;
  end
  else
  begin
    conceptosChequeados := conceptosChequeados - 1;
  end;

  if conceptosChequeados > 0 then
    controlWizard.Buttons.Next.Enabled := True
  else
    controlWizard.Buttons.Next.Enabled := False;
end;

procedure TFrmWizardReporteExcel.validarColumnas(datasetPosicionado,
  datasetForaneo: TClientDataset);
var
  Cursor : TCursor;
  EstaColumna1 : TClientDataset;
  EstaColumna2 : TClientDataSet;
  OtraColumna   : TClientDataSet;
  OtraColumna2  : TClientDataSet;
begin
  //Valida que los numeros de columnas no se repitan, y habilita el boton siguiente hasta que los numero sean diferwentes
  if controlWizard.ActivePage = paginaDispersionConceptos then
  begin
    //Revisar que los numeros de las columnas no se repitan
    if datasetPosicionado.RecordCount > 0 then
    begin
      noColumnasRepetidas := 0;
      EstaColumna1 := TClientDataSet.Create(Self);
      EstaColumna2 := TClientDataSet.Create(Self);
      OtraColumna  := TClientDataSet.Create(Self);
      OtraColumna2 := TClientDataSet.Create(Self);
        
      EstaColumna1.Data := datasetPosicionado.Data;
      EstaColumna2.Data := datasetPosicionado.Data;
      OtraColumna.Data  := datasetForaneo.Data;
      OtraColumna2.Data := datasetForaneo.Data;
        
      EstaColumna1.First;
      while not EstaColumna1.Eof do
      begin

        EstaColumna2.First;
        while not EstaColumna2.Eof do
        begin

          if EstaColumna2.FieldByName('IdConcepto').AsInteger <> EstaColumna1.FieldByName('IdConcepto').AsInteger then
          begin
            if EstaColumna2.FieldByName('ColPosicion').AsInteger = EstaColumna1.FieldByName('ColPosicion').AsInteger then
            begin
              noColumnasRepetidas := noColumnasRepetidas + 1;
            end;
          end;
            
          EstaColumna2.Next;            
        end;
        
        //Tambien comparar con el grid de deducciones
        if OtraColumna.RecordCount > 0 then
        begin
          //Comparar los dos grid
          OtraColumna.First;
          while Not OtraColumna.Eof do
          begin
            if OtraColumna.FieldByName('ColPosicion').AsInteger = EstaColumna1.FieldByName('ColPosicion').AsInteger then
            begin
              noColumnasRepetidas := noColumnasRepetidas + 1;
            end;

            OtraColumna.Next;
          end;

          //Comparar los numero de columna del grid foraneo
          OtraColumna2.First;
          while not OtraColumna2.Eof do
          begin
            if OtraColumna2.FieldByName('IdConcepto').AsInteger <> OtraColumna.FieldByName('IdConcepto').AsInteger then
            begin
              if OtraColumna2.FieldByName('ColPosicion').AsInteger = OtraColumna.FieldByName('ColPosicion').AsInteger then
              begin
                noColumnasRepetidas := noColumnasRepetidas + 1;
              end;
            end;

            OtraColumna2.Next;
          end;
        end;
        
        EstaColumna1.Next;
      end;
    end; 
  end;
end;

procedure TFrmWizardReporteExcel.validarDragDrop(dataset: TClientDataSet);
var
  Cursor : TCursor;
  idConceptoExiste : Boolean;
begin
  //Hace el proceso Drag and Drop y lo valida
  //Cuando se arrastre un concepto de la lista de conceptos hacia el grid, entonces pasar los datos de la lista al grid.
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    idConceptoExiste := False;

    if dataset.RecordCount > 0 then
    begin
      dataset.First;
      while Not dataset.Eof do
      begin
        if dataset.FieldByName('IdConcepto').AsInteger = TConceptos(listaConceptos.ItemObject).IdConcepto then
          idConceptoExiste := True;

        dataset.Next;
      end;
    end;

    if Not idConceptoExiste then
    begin
      dataset.Append;
      dataset.FieldByName('IdConcepto').AsInteger :=   TConceptos(listaConceptos.ItemObject).IdConcepto;
      dataset.FieldByName('Nombre').AsString      :=       TConceptos(listaConceptos.ItemObject).Nombre;
      dataset.FieldByName('Clave').AsString      :=       TConceptos(listaConceptos.ItemObject).Clave;
      dataset.FieldByName('tituloConcepto').AsString := TConceptos(listaConceptos.ItemObject).tituloConcepto;
      dataset.FieldByName('Modo').AsString        :=         TConceptos(listaConceptos.ItemObject).Modo;
      dataset.FieldByName('Titulo').AsString      :=       TConceptos(listaConceptos.ItemObject).Titulo;
      dataset.FieldByName('Funcion').AsString     :=  'SUMATORIA';
      dataset.FieldByName('ColPosicion').AsInteger := 1;
      dataset.FieldByName('Descripcion').AsString :=  TConceptos(listaConceptos.ItemObject).Descripcion;
      dataset.Post;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmWizardReporteExcel.vistaDeduccionesDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  validarDragDrop(cdDeduccionesMemoria);

  validarColumnas(cdDeduccionesMemoria, cdPercepcionesMemoria);

  if noColumnasRepetidas > 0 then
  begin
    controlWizard.Buttons.Next.Enabled := False;
  end
  else
  begin
    controlWizard.Buttons.Next.Enabled := True;
  end;
end;

procedure TFrmWizardReporteExcel.vistaDeduccionesDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmWizardReporteExcel.vistaDeduccionesStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  gridConDrag := 'gridDeducciones';
end;

procedure TFrmWizardReporteExcel.vistaPercepcionesDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  //Cuando se arrastre un concepto de la lista de conceptos hacia el grid, entonces pasar los datos de la lista al grid.
  validarDragDrop(cdPercepcionesMemoria);

  validarColumnas(cdPercepcionesMemoria, cdDeduccionesMemoria);

  if noColumnasRepetidas > 0 then
  begin
    controlWizard.Buttons.Next.Enabled := False;
  end
  else
  begin
    controlWizard.Buttons.Next.Enabled := True;
  end;
end;

procedure TFrmWizardReporteExcel.vistaPercepcionesDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmWizardReporteExcel.vistaPercepcionesStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  gridConDrag := 'gridPercepciones';
end;

end.
