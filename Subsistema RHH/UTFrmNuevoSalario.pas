unit UTFrmNuevoSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, DB, DBClient, jpeg, ExtCtrls, JvExExtCtrls, JvImage,
  StdCtrls, JvExControls, JvLabel, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  AdvGlowButton, UInteliDialog, ClientModuleUnit1, Grids, NxDBColumns,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  NxEdit, AdvSmoothLabel, DBAdvSmoothLabel, rhh_genericclasses, Buttons, DBGrids,
  AdvSmoothPanel;

type
  TFrmNuevoSalario = class(TForm)
    cdSalario: TClientDataSet;
    dsSalario: TDataSource;
    cdMoneda: TClientDataSet;
    dsMoneda: TDataSource;
    MemoryCompSal: TClientDataSet;
    dsMemoryCompSal: TDataSource;
    cdCompSal: TClientDataSet;
    cdCompSalDetalle: TClientDataSet;
    Panel2: TPanel;
    JvImage1: TJvImage;
    Memo1: TMemo;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    DBEdit2: TDBEdit;
    JvLabel3: TJvLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel1: TPanel;
    SalarioCompleto: TJvCalcEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    JvLabel5: TJvLabel;
    JvDBDateTimePicker1: TJvDBDateTimePicker;
    JvLabel4: TJvLabel;
    DBEditSalario: TJvDBCalcEdit;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    CodigoSalario: TDBAdvSmoothLabel;
    JvLabel6: TJvLabel;
    cbTipoSalario: TDBComboBox;
    JvLabel7: TJvLabel;
    LeyendaTipoNomina: TJvLabel;
    AdvGlowButton1: TAdvGlowButton;
    Panel_Progress: TPanel;
    lblTitulo: TJvLabel;
    lblLeyenda1: TJvLabel;
    lblLeyenda2: TJvLabel;
    Panel7: TPanel;
    JvLabel8: TJvLabel;
    edt_Maximo: TJvCalcEdit;
    BitBtn1: TBitBtn;
    JvLabel9: TJvLabel;
    dsTipoNomina: TDataSource;
    dsOrganizacion: TDataSource;
    DBGrid1: TNextDBGrid;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    Panel8: TPanel;
    Btn_Cancel: TAdvGlowButton;
    Btn_Ok: TAdvGlowButton;
    Panel5: TPanel;
    pbNomina: TProgressBar;
    Panel6: TPanel;
    pbCompleto: TProgressBar;
    Btn_Cancelar: TAdvGlowButton;
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NextDBGrid1BeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure NextDBGrid1AfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NextDBGrid1CellFormating(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
  private
    Resultado: TModalResult;
    OldImporte: Extended;
    OldWidth: Integer;
    Abortar: Boolean;
    procedure ProcesarMensajes;
  public
    IdLlave: Integer;
    IdTipoNomina: Integer;
    DiasFestivos: Integer;
    CodigoLlave: String;
    IdOrganizacion: Integer;
    IdGrupoSalario: Integer;
  end;

var
  FrmNuevoSalario: TFrmNuevoSalario;

implementation

{$R *.dfm}

procedure TFrmNuevoSalario.AdvGlowButton1Click(Sender: TObject);
var
  cdNomina,
  cdPersonalNomina,
  cdPersonal,
  cdConcepto,
  cdConceptoExtra,
  cdSumaConcepto,
  memPercepciones,
  memDeducciones: TClientDataSet;
  Forma: TForm;
  Cursor: TCursor;
  dsDetalle: TDataSource;
  Limite,
  AproxSalario,
  FactorIntegracion,
  AproxSalarioIntegrado,
  TotalPercepciones,
  TotalDeducciones, Neto, Minimo,
  Neto1, Neto2: Extended;
  DiasVacaciones, DiasAguinaldo,
  cNeto1, cNeto2: Integer;
  cdBuscar: TClientDataSet;
  Termina, YaPasamos: Boolean;
begin
  // Realizar el cálculo de la nómina en base a los datos presentados

  // Definir un periodo de nómina lógico
  Try
    Try
      Cursor := Screen.Cursor;
      Try
        Try
          Forma := TForm.Create(Self);
          Forma.Height := 133 + GetSystemMetrics(SM_CYCaption) + 6;
          Forma.Width := 632 + 6;
          Forma.Position := poOwnerFormCenter;
          Panel7.Parent := Forma;
          Panel7.Align := alClient;
          Panel7.Visible := True;

          if Forma.ShowModal <> mrOk then
            Exit;

          Limite := edt_Maximo.Value;
          AproxSalario := Round(Limite / (dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger / 100)) / 100;

          // Obtener los datos del tipo de nómina
          Try
            cdBuscar := TClientDataSet.Create(Nil);
            CrearConjunto(cdBuscar, 'nomina_factorintegracion', ccSelect);
            CargarDatosFiltrados(cdBuscar, 'IdOrganizacion,IdTipoNomina,Aplicacion,Anios', [dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger, dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger, FechaACadena(Now), 1]);
            cdBuscar.Open;
            if Not cdBuscar.FieldByName('Factor').IsNull then
            begin
              FactorIntegracion := cdBuscar.FieldByName('Factor').AsFloat;
              DiasVacaciones := cdBuscar.FieldByName('DiasVacaciones').AsInteger;
              DiasAguinaldo := cdBuscar.FieldByName('DiasAguinaldo').AsInteger;
            end
            else
            begin
              FactorIntegracion := 1;
              DiasVacaciones := 0;
              DiasAguinaldo := 0;
            end;
            cdBuscar.Close;
          Finally
            if cdBuscar.ProviderName <> '' then
              EliminarConjunto(cdBuscar);
          End;

          AproxSalarioIntegrado := Round((AproxSalario * FactorIntegracion) * 100) / 100;
        Finally
          Panel7.Visible := False;
          Panel7.Parent := Self;
          Forma.Free;
        End;

        Screen.Cursor := crAppStart;

        cdNomina := TClientDataSet.Create(Nil);
        cdNomina.FieldDefs.Add('IdNomina', ftInteger);
        cdNomina.FieldDefs.Add('IdTipoNomina', ftInteger);
        cdNomina.FieldDefs.Add('IdGuardia', ftInteger);
        cdNomina.FieldDefs.Add('IdPeriodosGuardia', ftInteger);
        cdNomina.FieldDefs.Add('Titulo', ftString, 200);
        cdNomina.FieldDefs.Add('FechaNomina', ftDate);
        cdNomina.FieldDefs.Add('Estado', ftString, 40);
        cdNomina.FieldDefs.Add('FechaTerminoNomina', ftDate);
        cdNomina.FieldDefs.Add('Dias', ftInteger);
        cdNomina.FieldDefs.Add('TituloGeneral', ftString, 200);
        cdNomina.FieldDefs.Add('Descripcion', ftString, 200);
        cdNomina.FieldDefs.Add('DiasTrabajados', ftInteger);
        cdNomina.FieldDefs.Add('DiasDescanso', ftInteger);
        cdNomina.CreateDataSet;

        cdNomina.Open;
        cdNomina.Append;
        cdNomina.FieldByName('IdNomina').AsInteger := 1;
        cdNomina.FieldByName('IdTipoNomina').AsInteger := dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger;
        cdNomina.FieldByName('IdGuardia').AsInteger := 1;
        cdNomina.FieldByName('IdPeriodosGuardia').AsInteger := 1;
        cdNomina.FieldByName('Titulo').AsString := '*';
        cdNomina.FieldByName('FechaNomina').AsDateTime := Now;
        cdNomina.FieldByName('Estado').AsString := 'Abierta';
        cdNomina.FieldByName('FechaTerminoNomina').AsDateTime := Now + dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger -1;
        cdNomina.FieldByName('Dias').AsInteger := dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger;
        cdNomina.FieldByName('TituloGeneral').AsString := '*';
        cdNomina.FieldByName('Descripcion').AsString := '*';
        cdNomina.FieldByName('DiasTrabajados').AsInteger := dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger;
        cdNomina.FieldByName('DiasDescanso').AsInteger := dsTipoNomina.DataSet.FieldByName('DiasDescanso').AsInteger;
        cdNomina.Post;

        cdPersonalNomina := TClientDataSet.Create(Nil);
        cdPersonalNomina.FieldDefs.Add('FechaNomina', ftDate);
        cdPersonalNomina.FieldDefs.Add('fecha', ftDate);
        cdPersonalNomina.FieldDefs.Add('IdPersonal', ftInteger);
        cdPersonalNomina.FieldDefs.Add('CodigoPersonal', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('RegPatIMSS', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('NumeroSeguroSocial', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('NombreCompleto', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('IdPlazaDetalle', ftInteger);
        cdPersonalNomina.FieldDefs.Add('Infonavit', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('NumeroInfonavit', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('FactorInfonavit', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('TituloCargo', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('Titulo', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('Descripcion', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('DiasTrabajados', ftInteger);
        cdPersonalNomina.FieldDefs.Add('IdDepartamento', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('CodigoDepartamento', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('TituloDepartamento', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('Salario', ftFloat);
        cdPersonalNomina.FieldDefs.Add('TituloSalario', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('SalarioIntegrado', ftFloat);
        cdPersonalNomina.FieldDefs.Add('IdCargo', ftInteger);
        cdPersonalNomina.FieldDefs.Add('CodigoCargo', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('TituloMoneda', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('SalMinGenZona', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('FechaReingreso', ftDate);
        cdPersonalNomina.FieldDefs.Add('DiasVacaciones', ftInteger);
        cdPersonalNomina.FieldDefs.Add('DiasAguinaldo', ftInteger);
        cdPersonalNomina.FieldDefs.Add('FactorPrimaDominical', ftFloat);
        cdPersonalNomina.FieldDefs.Add('FactorPrimaVacacional', ftFloat);
        cdPersonalNomina.FieldDefs.Add('DiasExcentoPrimaVacacional', ftInteger);
        cdPersonalNomina.FieldDefs.Add('DiasExcentoAguinaldo', ftInteger);
        cdPersonalNomina.FieldDefs.Add('SeguroVidaINFONAVIT', ftFloat);
        cdPersonalNomina.FieldDefs.Add('FechaInicio', ftDate);
        cdPersonalNomina.FieldDefs.Add('FechaTermino', ftDate);
        cdPersonalNomina.FieldDefs.Add('DIAST', ftInteger);
        cdPersonalNomina.FieldDefs.Add('HorasExtra', ftFloat);
        cdPersonalNomina.FieldDefs.Add('Periodo', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('EstadoPersonal', ftString, 10);
        cdPersonalNomina.FieldDefs.Add('FechaBaja', ftDate);
        cdPersonalNomina.FieldDefs.Add('DiasFestivos', ftInteger);
        cdPersonalNomina.CreateDataSet;

        cdPersonalNomina.Append;
        cdPersonalNomina.FieldByName('FechaNomina').AsDateTime := Now;
        cdPersonalNomina.FieldByName('fecha').AsDateTime := Now;
        cdPersonalNomina.FieldByName('IdPersonal').AsInteger := -9;
        cdPersonalNomina.FieldByName('CodigoPersonal').AsString := '*';
        cdPersonalNomina.FieldByName('RegPatIMSS').AsString := '*';
        cdPersonalNomina.FieldByName('NumeroSeguroSocial').AsString := '*';
        cdPersonalNomina.FieldByName('NombreCompleto').AsString := '*';
        cdPersonalNomina.FieldByName('IdPlazaDetalle').AsInteger := 1;
        cdPersonalNomina.FieldByName('Infonavit').AsString := '*';
        cdPersonalNomina.FieldByName('NumeroInfonavit').AsString := '*';
        cdPersonalNomina.FieldByName('FactorInfonavit').AsFloat := 0;
        cdPersonalNomina.FieldByName('TituloCargo').AsString := '*';
        cdPersonalNomina.FieldByName('Titulo').AsString := '*';
        cdPersonalNomina.FieldByName('Descripcion').AsString := '*';
        cdPersonalNomina.FieldByName('DiasTrabajados').AsInteger := dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger;
        cdPersonalNomina.FieldByName('IdDepartamento').AsInteger := 1;
        cdPersonalNomina.FieldByName('CodigoDepartamento').AsString := '*';
        cdPersonalNomina.FieldByName('TituloDepartamento').AsString := '*';
        cdPersonalNomina.FieldByName('Salario').AsFloat := AproxSalario;
        cdPersonalNomina.FieldByName('TituloSalario').AsString := '*';
        cdPersonalNomina.FieldByName('SalarioIntegrado').AsFloat := AproxSalarioIntegrado;
        cdPersonalNomina.FieldByName('IdCargo').AsInteger := 1;
        cdPersonalNomina.FieldByName('CodigoCargo').AsString := '*';
        cdPersonalNomina.FieldByName('TituloMoneda').AsString := '*';
        cdPersonalNomina.FieldByName('SalMinGenZona').AsFloat := 0;
        cdPersonalNomina.FieldByName('FechaReingreso').AsDateTime := Now;
        cdPersonalNomina.FieldByName('DiasVacaciones').AsInteger := DiasVacaciones;
        cdPersonalNomina.FieldByName('DiasAguinaldo').AsInteger := DiasAguinaldo;
        cdPersonalNomina.FieldByName('FactorPrimaDominical').AsFloat := dsOrganizacion.DataSet.FieldByName('FactorPrimaDominical').AsFloat;
        cdPersonalNomina.FieldByName('FactorPrimaVacacional').AsFloat := dsOrganizacion.DataSet.FieldByName('FactorPrimaVacacional').AsFloat;
        cdPersonalNomina.FieldByName('DiasExcentoPrimaVacacional').AsInteger := dsOrganizacion.DataSet.FieldByName('DiasExcentoPrimaVacacional').AsInteger;
        cdPersonalNomina.FieldByName('DiasExcentoAguinaldo').AsInteger := dsOrganizacion.DataSet.FieldByName('DiasExcentoAguinaldo').AsInteger;
        cdPersonalNomina.FieldByName('SeguroVidaINFONAVIT').AsFloat := dsOrganizacion.DataSet.FieldByName('SeguroVidaINFONAVIT').AsFloat;
        cdPersonalNomina.FieldByName('FechaInicio').AsDateTime := Now;
        cdPersonalNomina.FieldByName('FechaTermino').AsDateTime := Now + dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger -1;
        cdPersonalNomina.FieldByName('DIAST').AsInteger := dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger;
        cdPersonalNomina.FieldByName('HorasExtra').AsFloat := 0;
        cdPersonalNomina.FieldByName('Periodo').AsString := '';
        cdPersonalNomina.FieldByName('EstadoPersonal').AsString := 'Activo';
        cdPersonalNomina.FieldByName('FechaBaja').AsDateTime := Now + dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger -1;
        cdPersonalNomina.FieldByName('DiasFestivos').AsInteger := DiasFestivos;
        cdPersonalNomina.Post;

        cdPersonal := TClientDataSet.Create(Nil);
        cdPersonal.FieldDefs.Add('Activo', ftString, 20);
        cdPersonal.FieldDefs.Add('CodigoPersonal', ftString, 10);
        cdPersonal.FieldDefs.Add('Nombres', ftString, 10);
        cdPersonal.FieldDefs.Add('APaterno', ftString, 10);
        cdPersonal.FieldDefs.Add('AMaterno', ftString, 10);
        cdPersonal.FieldDefs.Add('NombreCompleto', ftString, 10);
        cdPersonal.FieldDefs.Add('curp', ftString, 10);
        cdPersonal.FieldDefs.Add('descripcion', ftString, 10);
        cdPersonal.FieldDefs.Add('correo', ftString, 10);
        cdPersonal.FieldDefs.Add('idpersonal', ftInteger);
        cdPersonal.FieldDefs.Add('imagenpersonal', ftString, 10);
        cdPersonal.FieldDefs.Add('Numerosegurosocial', ftString, 10);
        cdPersonal.FieldDefs.Add('fechaalta', ftDate);
        cdPersonal.FieldDefs.Add('Gruposanguineo', ftString, 10);
        cdPersonal.FieldDefs.Add('rfc', ftString, 10);
        cdPersonal.FieldDefs.Add('telefono', ftString, 10);
        cdPersonal.FieldDefs.Add('contacto', ftString, 10);
        cdPersonal.FieldDefs.Add('idpostulante', ftString, 10);
        cdPersonal.FieldDefs.Add('telefonocontacto', ftString, 10);
        cdPersonal.FieldDefs.Add('doccontratacion', ftString, 10);
        cdPersonal.FieldDefs.Add('infonavit', ftString, 10);
        cdPersonal.FieldDefs.Add('NumeroInfonavit', ftString, 10);
        cdPersonal.FieldDefs.Add('FactorInfonavit', ftString, 10);
        cdPersonal.FieldDefs.Add('Estado', ftString, 10);
        cdPersonal.FieldDefs.Add('EstadoCivil', ftString, 10);
        cdPersonal.FieldDefs.Add('estadonacimiento', ftString, 10);
        cdPersonal.FieldDefs.Add('sexo', ftString, 10);
        cdPersonal.FieldDefs.Add('nacionalidad', ftString, 10);
        cdPersonal.FieldDefs.Add('Municipio', ftString, 10);
        cdPersonal.FieldDefs.Add('Calle', ftString, 10);
        cdPersonal.FieldDefs.Add('Numero', ftString, 10);
        cdPersonal.FieldDefs.Add('Colonia', ftString, 10);
        cdPersonal.FieldDefs.Add('fechanacimiento', ftString, 10);
        cdPersonal.FieldDefs.Add('delegacion', ftString, 10);
        cdPersonal.FieldDefs.Add('nombremadre', ftString, 10);
        cdPersonal.FieldDefs.Add('nombrepadre', ftString, 10);
        cdPersonal.FieldDefs.Add('CP', ftString, 10);
        cdPersonal.FieldDefs.Add('FechaReingreso', ftString, 10);
        cdPersonal.FieldDefs.Add('IdPlazaDetalle', ftInteger);
        cdPersonal.FieldDefs.Add('IdCargo', ftInteger);
        cdPersonal.FieldDefs.Add('IdTipoNomina', ftInteger);
        cdPersonal.FieldDefs.Add('CodigoCargo', ftString, 10);
        cdPersonal.FieldDefs.Add('TituloCargo', ftString, 10);
        cdPersonal.FieldDefs.Add('IdDepartamento', ftInteger);
        cdPersonal.FieldDefs.Add('CodigoDepartamento', ftString, 10);
        cdPersonal.FieldDefs.Add('TituloDepartamento', ftString, 10);
        cdPersonal.FieldDefs.Add('DescripcionDepartamento', ftString, 10);
        cdPersonal.FieldDefs.Add('Nivel', ftString, 10);
        cdPersonal.FieldDefs.Add('IdSalario', ftInteger);
        cdPersonal.FieldDefs.Add('CodigoSalario', ftString, 10);
        cdPersonal.FieldDefs.Add('TituloSalario', ftString, 10);
        cdPersonal.FieldDefs.Add('salario', ftFloat);
        cdPersonal.FieldDefs.Add('IdMoneda', ftString, 10);
        cdPersonal.FieldDefs.Add('codigomoneda', ftString, 10);
        cdPersonal.FieldDefs.Add('TituloMoneda', ftString, 10);
        cdPersonal.CreateDataSet;

        cdPersonal.Append;
        cdPersonal.FieldByName('Activo').AsString := 'Si';
        cdPersonal.FieldByName('CodigoPersonal').AsString := '*';
        cdPersonal.FieldByName('Nombres').AsString := '*';
        cdPersonal.FieldByName('APaterno').AsString := '*';
        cdPersonal.FieldByName('AMaterno').AsString := '*';
        cdPersonal.FieldByName('NombreCompleto').AsString := '*';
        cdPersonal.FieldByName('codigopersonal').AsString := '*';
        cdPersonal.FieldByName('curp').AsString := '*';
        cdPersonal.FieldByName('descripcion').AsString := '*';
        cdPersonal.FieldByName('correo').AsString := '*';
        cdPersonal.FieldByName('idpersonal').AsInteger := -9;
        cdPersonal.FieldByName('imagenpersonal').AsString := '';
        cdPersonal.FieldByName('Numerosegurosocial').AsString := '*';
        cdPersonal.FieldByName('fechaalta').AsDateTime := Now;
        cdPersonal.FieldByName('Gruposanguineo').AsString := '*';
        cdPersonal.FieldByName('rfc').AsString := '*';
        cdPersonal.FieldByName('telefono').AsString := '*';
        cdPersonal.FieldByName('contacto').AsString := '*';
        cdPersonal.FieldByName('idpostulante').AsInteger := 1;
        cdPersonal.FieldByName('telefonocontacto').AsString := '*';
        cdPersonal.FieldByName('doccontratacion').AsString := '*';
        cdPersonal.FieldByName('infonavit').AsString := '*';
        cdPersonal.FieldByName('NumeroInfonavit').AsString := '*';
        cdPersonal.FieldByName('FactorInfonavit').AsFloat := 0;
        cdPersonal.FieldByName('Estado').AsString := '*';
        cdPersonal.FieldByName('EstadoCivil').AsString := '*';
        cdPersonal.FieldByName('estadonacimiento').AsString := '*';
        cdPersonal.FieldByName('numerosegurosocial').AsString := '*';
        cdPersonal.FieldByName('sexo').AsString := '*';
        cdPersonal.FieldByName('nacionalidad').AsString := '*';
        cdPersonal.FieldByName('Municipio').AsString := '*';
        cdPersonal.FieldByName('Calle').AsString := '*';
        cdPersonal.FieldByName('Numero').AsString := '*';
        cdPersonal.FieldByName('Colonia').AsString := '*';
        cdPersonal.FieldByName('fechanacimiento').AsString := '*';
        cdPersonal.FieldByName('delegacion').AsString := '*';
        cdPersonal.FieldByName('nombremadre').AsString := '*';
        cdPersonal.FieldByName('nombrepadre').AsString := '*';
        cdPersonal.FieldByName('CP').AsString := '*';
        cdPersonal.FieldByName('Correo').AsString := '*';
        cdPersonal.FieldByName('FechaReingreso').AsString := '*';
        cdPersonal.FieldByName('IdPlazaDetalle').AsInteger := 1;
        cdPersonal.FieldByName('IdCargo').AsInteger := 1;
        cdPersonal.FieldByName('IdTipoNomina').AsInteger := 1;
        cdPersonal.FieldByName('CodigoCargo').AsString := '*';
        cdPersonal.FieldByName('TituloCargo').AsString := '*';
        cdPersonal.FieldByName('IdDepartamento').AsInteger := 1;
        cdPersonal.FieldByName('CodigoDepartamento').AsString := '*';
        cdPersonal.FieldByName('TituloDepartamento').AsString := '*';
        cdPersonal.FieldByName('DescripcionDepartamento').AsString := '*';
        cdPersonal.FieldByName('Nivel').AsString := '*';
        cdPersonal.FieldByName('IdSalario').AsInteger := 1;
        cdPersonal.FieldByName('CodigoSalario').AsString := '*';
        cdPersonal.FieldByName('TituloSalario').AsString := '*';
        cdPersonal.FieldByName('salario').AsFloat := AproxSalario;
        cdPersonal.FieldByName('IdMoneda').AsInteger := 1;
        cdPersonal.FieldByName('codigomoneda').AsString := '*';
        cdPersonal.FieldByName('TituloMoneda').AsString := '*';
        cdPersonal.Post;

        cdConcepto := TClientDataSet.Create(Nil);
        CrearConjunto(cdConcepto, 'nom_concepto', ccCatalog);
        CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger]);
        cdConcepto.Open;

        cdConceptoExtra := TClientDataSet.Create(Nil);
        Try
          CrearConjunto(cdConceptoExtra, 'nom_conceptosextraxempleado', ccCatalog);
          CargarDatosFiltrados(cdConceptoExtra, 'IdPersonal', [-9]);
          cdConceptoExtra.Open; // Traerse la estructura
        Finally
          cdConceptoExtra.Close;
          EliminarConjunto(cdConceptoExtra);
          cdConceptoExtra.ProviderName := '';
          cdConceptoExtra.CreateDataSet;
          cdConceptoExtra.Open;
        End;

        cdSumaConcepto := TClientDataSet.Create(Nil);
        CrearConjunto(cdSumaConcepto, 'nom_detallenomina_suma', ccCatalog);

        memPercepciones := TClientDataSet.Create(Nil);
        memPercepciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
        memPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
        memPercepciones.FieldDefs.Add('Titulo', ftString, 20, False);
        memPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
        memPercepciones.FieldDefs.Add('Modo', ftString, 20, False);
        memPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
        memPercepciones.CreateDataSet;
        memPercepciones.Open;

        memDeducciones := TClientDataSet.Create(Nil);
        memDeducciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
        memDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
        memDeducciones.FieldDefs.Add('Titulo', ftString, 20, False);
        memDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
        memDeducciones.FieldDefs.Add('Modo', ftString, 20, False);
        memDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
        memDeducciones.CreateDataSet;
        memDeducciones.Open;

        cdDetalleSave := TClientDataSet.Create(Self);
        Try
          if Not CrearConjunto(cdDetalleSave, 'nom_detallenomina', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

          if Not CargarDatosFiltrados(cdDetalleSave, 'IdPersonal', [-9]) then
            raise InteligentException.CreateByCode(21, ['Detalle de Nómina']);

          cdDetalleSave.Open;   // Traer la estructura de la tabla
        Finally
          cdDetalleSave.Close;
          EliminarConjunto(cdDetalleSave);
          cdDetalleSave.ProviderName := '';
          cdDetalleSave.CreateDataSet;
          cdDetalleSave.Open;
        End;

        cdDetalle := TClientDataSet.Create(Self);
        cdDetalle.FieldDefs.Add('IdDetalleNomina', ftInteger);
        cdDetalle.FieldDefs.Add('IdPersonal', ftInteger);
        cdDetalle.FieldDefs.Add('IdNomina', ftInteger);
        cdDetalle.FieldDefs.Add('IdCargo', ftInteger);
        cdDetalle.FieldDefs.Add('IdDepartamento', ftInteger);
        cdDetalle.FieldDefs.Add('CodigoConcepto', ftString, 100);
        cdDetalle.FieldDefs.Add('IdGrupoConcepto', ftInteger);
        cdDetalle.FieldDefs.Add('Clave', ftString, 100);
        cdDetalle.FieldDefs.Add('Titulo', ftString, 100);
        cdDetalle.FieldDefs.Add('Descripcion', ftString, 100);
        cdDetalle.FieldDefs.Add('Modo', ftString, 100);
        cdDetalle.FieldDefs.Add('Imprime', ftString, 2);
        cdDetalle.FieldDefs.Add('Valor', ftString, 100);
        cdDetalle.FieldDefs.Add('Cargo', ftString, 100);

        cdDetalle.CreateDataSet;
      Finally
        Screen.Cursor := Cursor;
      End;

      dsDetalle := TDataSource.Create(Self);
      dsDetalle.DataSet := cdDetalle;
      DBGrid1.DataSource := dsDetalle;

      Minimo := 1;  // Ajustar hasta un peso de diferencia
      Termina := False;
      Abortar := False;
      YaPasamos := False;
      NuevoTitulo := 'Calculando salario diario para: ' + FloatToStr(AproxSalario);
      Neto1 := 0;
      Neto2 := 0;
      cNeto1 := 0;
      cNeto2 := 0;

      while Not Termina do
      begin
        CalcularNominaEmpleado(cdNomina, cdPersonalNomina, Nil, cdPersonal,
        cdConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones,
        memDeducciones, Panel_Progress);

        // Sumar percepciones y deducciones
        memPercepciones.First;
        TotalPercepciones := 0;
        while not memPercepciones.Eof do
        begin
          if memPercepciones.FieldByName('Modo').AsString = 'PERCEPCION' then
            TotalPercepciones := TotalPercepciones + StrToFloat(memPercepciones.FieldByName('Importe').AsString);

          memPercepciones.Next;
        end;

        memDeducciones.First;
        TotalDeducciones := 0;
        while not memDeducciones.Eof do
        begin
          if memDeducciones.FieldByName('Modo').AsString = 'DEDUCCION' then
            TotalDeducciones := TotalDeducciones + StrToFloat(memDeducciones.FieldByName('Importe').AsString);

          memDeducciones.Next;
        end;

        Neto := TotalPercepciones - TotalDeducciones;

        Termina := (FloatToStr(Neto) = FloatToStr(Limite)) or ((YaPasamos)); // and ((Limite >= Neto - Minimo) and (Limite <= Neto + Minimo)));

        // Registrar los dos últimos netos
        if (Not Termina) and ((Neto1 = Neto) or (Neto2 = Neto)) then
        begin
          if Neto1 = Neto then
            Inc(cNeto1)
          else
            Inc(cNeto2);
        end;

        if (Neto <> Neto1) and (Neto <> Neto2) then
          cNeto1 := 0;

        Neto2 := Neto1;
        Neto1 := Neto;

        if (Not Termina) and (cNeto1 > 1) and (cNeto2 > 1) and (Neto = Neto1) then
          Termina := True;

        if (Not Termina) and (Not YaPasamos) then
        begin
          if Neto < Limite then
          begin
            if (Round((AproxSalario + ((Limite - Neto) / dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger)) * 100) / 100) = AproxSalario then
            begin
              AproxSalario := AproxSalario + 0.01;
              YaPasamos := True;
            end
            else
              AproxSalario := Round((AproxSalario + ((Limite - Neto) / dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger)) * 100) / 100;
            AproxSalarioIntegrado := Round((AproxSalario * FactorIntegracion) * 100) / 100;
          end;

          if Neto > Limite then
          begin
            if (Round((AproxSalario + ((Limite - Neto) / dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger)) * 100) / 100) = AproxSalario then
            begin
              Termina := True;
              {AproxSalario := AproxSalario - 0.01;
              YaPasamos := True;}
            end
            else
            begin
              AproxSalario := Round((AproxSalario + ((Limite - Neto) / dsTipoNomina.DataSet.FieldByName('DiasTrabajados').AsInteger)) * 100) / 100;
              AproxSalarioIntegrado := Round((AproxSalario * FactorIntegracion) * 100) / 100;
            end;
          end;

          if Not Termina then
          begin
            cdPersonalNomina.Edit;
            cdPersonalNomina.FieldByName('Salario').AsFloat := AproxSalario;
            cdPersonalNomina.FieldByName('SalarioIntegrado').AsFloat := AproxSalarioIntegrado;
            cdPersonalNomina.Post;

            cdPersonal.Edit;
            cdPersonal.FieldByName('salario').AsFloat := AproxSalario;
            cdPersonal.Post;
          end;
        end;
        NuevoTitulo := 'Calculando salario diario para: ' + FloatToStr(AproxSalario) + ' - Último neto alcanzado: ' + FloatToStr(Neto);
      end;

      MemoryCompSal.First;
      MemoryCompSal.Edit;
      MemoryCompSal.FieldByName('Importe').AsString := FloatToStr(AproxSalario);
      MemoryCompSal.Post;

      SalarioCompleto.Value := AproxSalario;
      //if (Neto > Limite) and ((Neto - Limite) < 1) then

      Try
        cdDetalle.Filtered := False;
        cdDetalle.Filter := 'Modo <> ' + QuotedStr('EMPLEADO');
        cdDetalle.Filtered := True;

        Forma := TForm.Create(Self);
        DBGrid1.Parent := Forma;
        DBGrid1.Visible := True;
        DBGrid1.Align := alClient;
        Forma.ShowModal;
      Finally
        DBGrid1.Visible := False;
        DBGrid1.Parent := Self;
        Forma.Free;
        cdConcepto.Filtered := False;
        cdConcepto.Close;
      End;

    Except
      on e:InteligentWarning do
        InteliDialog.ShowModal('Cancelado', e.Message, mtInformation, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;

  Finally
    if Assigned(cdConcepto) then
      Try
        EliminarConjunto(cdConcepto);
      Except
        ;
      End;
    if Assigned(cdConceptoExtra) then
      Try
        EliminarConjunto(cdConceptoExtra);
      Except
        ;
      End;

    cdNomina.Free;
    cdPersonalNomina.Free;
    cdPersonal.Free;
  End;

end;

procedure TFrmNuevoSalario.Btn_CancelarClick(Sender: TObject);
begin
  Abortar := InteliDialog.ShowModal('Cancelar proceso', '¿Desea cancelar este proceso en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
  if Abortar then
    raise InteligentWarning.Create('Proceso cancelado por el usuario...');
end;

procedure TFrmNuevoSalario.Btn_CancelClick(Sender: TObject);
begin
  if cdSalario.State in [dsInsert, dsEdit] then
    cdsalario.Cancel;

  Resultado := mrCancel;
  Close;
end;

procedure TFrmNuevoSalario.Btn_OkClick(Sender: TObject);
var
  GBuscar: TClientDataSet;
  oldcursor:Tcursor;
  NuevoId: LongInt;
begin
  Try
    Try
      oldcursor:=Screen.Cursor;
      Screen.Cursor:=crAppStart;

      // Verificar todos los campos estén correctamente llenados
      if DbEdit2.Text = '' then
      begin
        DBEdit2.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Titulo de Salario']);
      end;

      if SalarioCompleto.Value <= 0 then
      begin
        MemoryCompSal.First;
        NextDBGrid1.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Salario']);
      end;

      GBuscar := TClientDataSet.Create(Nil);
      if Not CrearConjunto(GBuscar, 'rhu_salario', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Salarios']);

      if cbTipoSalario.ItemIndex > 0 then
        cdSalario.FieldByName('IdTipoNomina').AsVariant := Null
      else
        cdSalario.FieldByName('IdTipoNomina').AsInteger := IdTipoNomina;
      cdSalario.FieldByName('IdLlave').AsInteger := 0;
      cdSalario.FieldByName('Salario').AsFloat := SalarioCompleto.Value;
      cdSalario.FieldByName('FechaModificacion').AsDateTime := Now;
      cdSalario.FieldByName('IdUsuarioModificacion').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
      cdSalario.FieldByName('IdOrganizacion').AsInteger := IdOrganizacion;
      cdSalario.FieldByName('IdGrupoSalario').AsInteger := IdGrupoSalario;
      cdSalario.Post;
      cdSalario.ApplyUpdates(-1);
      if IdLlave = -9 then
        NuevoId := UltimoId
      else
        NuevoId := IdLlave;

      // Grabar el detalle de los salarios
      MemoryCompSal.First;
      while Not MemoryCompSal.Eof do
      begin
        if (MemoryCompSal.FieldByName('Importe').AsFloat > 0) and (MemoryCompSal.FieldByName('IdCompSal').AsInteger >= 0) then
        begin
          // Tratar de localizar el registro en la tabla, si ya existe se deberá actualizar el mismo
          if cdCompSalDetalle.Locate('IdCompSal', MemoryCompSal.FieldByName('IdCompSal').AsInteger, []) then
            cdCompSaldetalle.Edit
          else
          begin
            cdCompSalDetalle.Append;
            cdCompSalDetalle.FieldByName('IdCompSalDetalle').AsInteger := 0;
            cdCompSalDetalle.FieldByName('IdCompSal').AsInteger := MemoryCompSal.FieldByName('IdCompSal').AsInteger;
            cdCompSalDetalle.FieldByName('IdSalario').AsInteger := NuevoID;
          end;

          cdCompSalDetalle.FieldByName('Importe').AsFloat := MemoryCompSal.FieldByName('Importe').AsFloat;
          cdCompSalDetalle.Post;
          cdCompSalDetalle.ApplyUpdates(-1);
        end
        else
        begin
          // Buscar el registro, si existiera se deberá eliminar
          if cdCompSalDetalle.Locate('IdCompSal', MemoryCompSal.FieldByName('IdCompSal').AsInteger, []) then
          begin
            cdCompSalDetalle.Delete;
            cdCompSalDetalle.ApplyUpdates(-1);
          end;
        end;

        MemoryCompSal.Next;
      end;
      MemoryCompSal.First;

      if IdLlave = -9 then
      begin
        // Modificar el IdLlave para que coinsida con el IdSalario ya que esta es una creación de nuevo salario
        cdSalario.Close;
        if Not CargarDatosFiltrados(cdSalario, 'IdSalario', [NuevoId]) then
          raise InteligentConnection.CreateByCode(14, ['Catálogo de Salarios', 'No se ha podido actualizar el campo llave de acuerdo con su Id único']);

        cdSalario.Open;
        if cdSalario.RecordCount <> 1 then
          raise InteligentConnection.CreateByCode(14, ['Catálogo de Salarios', 'No se ha localizado el nuevo registro de Salario para actualizar el campo llave de acuerdo con su Id único']);

        cdSalario.Edit;
        cdSalario.FieldByName('IdLlave').AsInteger := NuevoId;
        cdSalario.Post;
        cdSalario.ApplyUpdates(-1);
      end;

      ConcretarTransaccion;

      Resultado := mrOk;
      Close;
    Finally
      Screen.Cursor := oldcursor;
      if Assigned(GBuscar) then
        EliminarConjunto(GBuscar);
    End;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Inteligentexception do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      if Not (cdSalario.State in [dsInsert, dsEdit]) then
        Close;
    end;
  End;
end;

procedure TFrmNuevoSalario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if EnTransaccion then
   CancelarTransaccion;

  EliminarConjunto([cdSalario, cdMoneda, cdCompSal]);

  ModalResult := Resultado;
end;

procedure TFrmNuevoSalario.FormCreate(Sender: TObject);
begin
  IdLlave := -9;
end;

procedure TFrmNuevoSalario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Btn_Cancel.click;

end;

procedure TFrmNuevoSalario.FormResize(Sender: TObject);
begin
  Self.Width := OldWidth;
end;

procedure TFrmNuevoSalario.FormShow(Sender: TObject);
var
  OldCursor: TCursor;
  Valor: Extended;
begin
  Resultado := mrAbort;
  OldWidth := Self.Width;

  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      IniciarTransaccion;

      if Not CrearConjunto(cdCompSalDetalle, 'rhu_compsaldetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Detalle de Composición de Salario']);

      if Not CargarDatosFiltrados(cdCompSalDetalle, 'IdSalario', [IdLlave]) then
        raise InteligentException.CreateByCode(6, ['Detalle de Composición de Salario', CodigoLlave, 'Código de Salario']);

      if Not CrearConjunto(cdCompSal, 'rhu_compsal', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Composición de Salarios']);
      {if cdCompSal.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Composición de Salarios']);}

      if Not CrearConjunto(cdMoneda, 'nuc_moneda', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Monedas']);

      cdCompSalDetalle.Open;
      cdCompSal.Open;
      cdMoneda.Open;

      if cdMoneda.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Tipos de Moneda']);

      if Not CrearConjunto(cdSalario, 'rhu_salario', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Salarios']);

      if Not CargarDatosFiltrados(cdSalario, 'IdSalario', [IdLlave]) then
        if IdLlave = -9 then
          raise InteligentException.CreateByCode(6, ['Salarios', '<Nuevo Registro>', 'Código de Salario'])
        else
          raise InteligentException.CreateByCode(6, ['Salarios', CodigoLlave, 'Código de Salario']);

      cdSalario.Open;
      if (IdLlave = -9) and (cdSalario.RecordCount > 0) then
        raise InteligentException.CreateByCode(21, ['Salarios']);

      if (IdLlave <> -9) and (cdSalario.RecordCount = 0)  then
        raise InteligentException.CreateByCode(13, [CodigoLlave, 'Catálogo de Salarios']);

      if IdLlave = -9 then
      begin
        cdSalario.Append;
        cdSalario.FieldByName('IdSalario').AsInteger := 0;
        cdSalario.FieldByName('IdTipoNomina').AsInteger := IdTipoNomina;
        cdSalario.FieldByName('IdUsuario').AsInteger := 0;
        cdSalario.FieldByName('Activo').AsString := 'Si';
        cdSalario.FieldByName('FechaAplicacion').AsDateTime := Now;
        cdSalario.FieldByName('IdMoneda').AsInteger := cdMoneda.FieldByName('IdMoneda').AsInteger;
        cdSalario.FieldByName('FechaRegistro').AsDateTime := Now;
        cdSalario.FieldByName('TipoSalario').AsString := 'Ninguno';
      end
      else
      begin
        cdSalario.Edit;
        cdSalario.FieldByName('IdUsuarioModificacion').AsInteger := 0;
        cdSalario.FieldByName('FechaModificacion').AsDateTime := Now;
      end;

      // Crear componente de composicion de salario
      MemoryCompSal.FieldDefs.Add('IdCompSal', ftInteger, 0, True);
      MemoryCompSal.FieldDefs.Add('TituloCompSal', ftString, 45, True);
      MemoryCompSal.FieldDefs.Add('Importe', ftFloat, 0, True);
      MemoryCompSal.CreateDataSet;
      MemoryCompSal.Open;

      // Generar el registro del salario
      MemoryCompSal.Append;
      MemoryCompSal.FieldByName('IdCompSal').AsInteger := -1;
      MemoryCompSal.FieldByName('TituloCompSal').AsString := 'SALARIO';
      if IdLlave = -9 then
        MemoryCompSal.FieldByName('Importe').AsFloat := 0
      else
        MemoryCompSal.FieldByName('Importe').AsFloat := cdSalario.FieldByName('Salario').AsFloat;
      MemoryCompSal.Post;

      SalarioCompleto.Value := MemoryCompSal.FieldByName('Importe').AsFloat;

      // Llenar todos los elementos que integran el salario
      Valor := 0;
      while not cdCompSal.Eof do
      begin
        if IdLlave <> -9 then
        begin
          // Localizar el componente de integracion de salario
          Valor := 0;
          if cdCompSalDetalle.Locate('IdCompSal', cdCompSal.FieldByName('IdCompSal').AsInteger, []) then
            Valor := cdCompSalDetalle.FieldByName('Importe').AsFloat;
          SalarioCompleto.Value := SalarioCompleto.Value + Valor;
        end;
        MemoryCompSal.Append;
        MemoryCompSal.FieldByName('IdCompSal').AsInteger := cdCompSal.FieldByName('IdCompSal').AsInteger;
        MemoryCompSal.FieldByName('TituloCompSal').AsString := cdCompSal.FieldByName('TituloCompSal').AsString;
        MemoryCompSal.FieldByName('Importe').AsFloat := Valor;
        MemoryCompSal.Post;

        cdCompSal.Next;
      end;
      MemoryCompSal.First;
      cdCompSal.First;

      if cdSalario.State = dsInsert then
        cdSalario.FieldByName('CodigoSalario').AsString := '<Automático>';
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmNuevoSalario.NextDBGrid1AfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if ACol = 1 then
  begin
    if ARow = 0 then
    begin
        if cdSalario.State in [dsedit]  then
        begin
          MemoryCompSal.FieldByName('Importe').AsFloat := OldImporte;
          InteliDialog.ShowModal('Intento de modificación de Salario', 'Este datos no puede ser modificado en esta ventana, para poder hacerlo es necesario realizar una modificación de Salario para este registro.', mtInformation, [mbOk], 0);
        end
        else
        begin
          SalarioCompleto.Value := SalarioCompleto.Value - OldImporte + MemoryCompSal.FieldByName('Importe').AsFloat;
          if ARow = 0 then
            cdSalario.FieldByname('Salario').AsFloat := MemoryCompSal.FieldByName('Importe').AsFloat;
        end;
    end
    else
    begin
      SalarioCompleto.Value := SalarioCompleto.Value - OldImporte + MemoryCompSal.FieldByName('Importe').AsFloat;
      if ARow = 0 then
        cdSalario.FieldByname('Salario').AsFloat := MemoryCompSal.FieldByName('Importe').AsFloat;
    end;
  end;
end;

procedure TFrmNuevoSalario.NextDBGrid1BeforeEdit(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
  if ACol = 1 then
    OldImporte := MemoryCompSal.FieldByName('Importe').AsFloat;
end;

procedure TFrmNuevoSalario.NextDBGrid1CellFormating(Sender: TObject; ACol,
  ARow: Integer; Value: WideString; var TextColor: TColor;
  var FontStyle: TFontStyles; CellState: TCellState);
begin
  if (ARow=0) and (ACol=1) then
    TextColor := clGray;
end;

procedure TFrmNuevoSalario.ProcesarMensajes;
begin
  Application.ProcessMessages;

  if Abortar then
    raise InteligentWarning.Create('Proceso cancelado por el usuario.');
end;

end.
