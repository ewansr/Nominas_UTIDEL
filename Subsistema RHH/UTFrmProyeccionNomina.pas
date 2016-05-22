unit UTFrmProyeccionNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExControls, JvLabel, DB, DBClient, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBControls, Mask, DBCtrls, ClientModuleUnit1,
  MoneyEdit, AdvGlowButton, AdvOfficePager, ComCtrls, ToolWin, AdvToolBar,
  dbmnyed, DateUtils, StrUtils, frxClass, frxDBSet, AdvSmoothPanel, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, AdvOfficeSelectors, AdvCombo,
  rhh_genericclasses;

type
  TFrmProyeccionNomina = class(TForm)
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager12: TAdvOfficePage;
    Panel3: TPanel;
    Panel1: TPanel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    meDomingos: TMoneyEdit;
    meFestivos: TMoneyEdit;
    Panel_Cargo: TPanel;
    JvLabel2: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel3: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    JvDBMaskEdit1: TJvDBMaskEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel_Personal: TPanel;
    JvLabel1: TJvLabel;
    JvLabel4: TJvLabel;
    cbPersonal: TComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    AdvToolBar1: TAdvToolBar;
    Btn_Proceder: TAdvGlowButton;
    cdPersonalNomina: TClientDataSet;
    cbNominas: TComboBox;
    JvLabel9: TJvLabel;
    DBEdit8: TDBEdit;
    cdBuscar: TClientDataSet;
    dsBuscar: TDataSource;
    meDias: TDBMoneyEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    cdConcepto: TClientDataSet;
    RNomina: TfrxReport;
    FDSOrganizacion: TfrxDBDataset;
    FDSPersonal: TfrxDBDataset;
    memPercepciones: TClientDataSet;
    FDSPercepciones: TfrxDBDataset;
    memDeducciones: TClientDataSet;
    FDSDeducciones: TfrxDBDataset;
    Panel_Progress: TPanel;
    lblTitulo: TJvLabel;
    lblLeyenda1: TJvLabel;
    lblLeyenda2: TJvLabel;
    Panel2: TPanel;
    pbNomina: TProgressBar;
    Panel5: TPanel;
    pbCompleto: TProgressBar;
    spCalculoGeneral: TAdvSmoothPanel;
    GridNominas: TJvDBGrid;
    cdTipoNomina: TClientDataSet;
    dsTipoNomina: TDataSource;
    AdvSmoothPanel2: TAdvSmoothPanel;
    DBText1: TDBText;
    DBText6: TDBText;
    JvLabel11: TJvLabel;
    DBText2: TDBText;
    JvLabel12: TJvLabel;
    DBText3: TDBText;
    JvLabel13: TJvLabel;
    DBText4: TDBText;
    JvLabel14: TJvLabel;
    DBText5: TDBText;
    AdvSmoothPanel3: TAdvSmoothPanel;
    AdvToolBar2: TAdvToolBar;
    cbTipoNomina: TAdvComboBox;
    JvLabel15: TJvLabel;
    AdvToolBar3: TAdvToolBar;
    Btn_CalcularNómina: TAdvGlowButton;
    FDSDetalle: TfrxDBDataset;
    Btn_ImprimirNomina: TAdvGlowButton;
    cdPersonalDetalleNomina: TClientDataSet;
    FDSPersonalDetalleNomina: TfrxDBDataset;
    FDSBuscar: TfrxDBDataset;
    memDeptoPercepciones: TClientDataSet;
    memDeptoDeducciones: TClientDataSet;
    FDSDeptoPercepciones: TfrxDBDataset;
    FDSDeptoDeducciones: TfrxDBDataset;
    memObligacion: TClientDataSet;
    FDSObligacion: TfrxDBDataset;
    memRubrosIMSS: TClientDataSet;
    FDSRubrosIMSS: TfrxDBDataset;
    DataSource1: TDataSource;
    FDSGenerales: TfrxDBDataset;
    cdConceptoExtra: TClientDataSet;
    Btn_CalcularNómina2: TAdvGlowButton;
    RSubReporte: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure cbPersonalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbPersonalChange(Sender: TObject);
    procedure Btn_ProcederClick(Sender: TObject);
    procedure cbNominasChange(Sender: TObject);
    procedure cdBuscarAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_ImprimirReciboClick(Sender: TObject);
    procedure RNominaGetValue(const VarName: string; var Value: Variant);
    procedure cbTipoNomina2Change(Sender: TObject);
    procedure Btn_CalcularNóminaClick(Sender: TObject);
    procedure Btn_ImprimirNominaClick(Sender: TObject);
    procedure cdPersonalDetalleNominaAfterScroll(DataSet: TDataSet);
    procedure RNominaDblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Btn_CalcularNómina2Click(Sender: TObject);
    procedure RSubReporteGetValue(const VarName: string; var Value: Variant);
    procedure FormShow(Sender: TObject);
  private
    NetoPagar,
    NetoDeptoPagar: Real;
    cdGruposConcepto,
    cdGenerales,
    cdSumaConcepto,
    cdDetalleRubro: TClientDataSet;
    SMGVDF: Real;
    procedure ImprimeCalculo(Id: Integer);
    procedure CalcularNomina(Seleccion: Boolean);
    procedure GenerarLinea(Padre: TScrollBox; Texto: String;
      Var Altura: Integer; Alto: Word = 16; Tamanio: Word = 8;
      Bold: Boolean = False);
  public
    procedure AccedeRegistro(Id: Integer);
  end;

var
  FrmProyeccionNomina: TFrmProyeccionNomina;

implementation

uses
  UInteliDialog, Unit2, UTFrmPersonalNomina;

{$R *.dfm}

function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;

  Result := Copy(Cadena, 1, Pos('|', Cadena) -1);
end;

function CuentaPartes(Cadena: String): Integer;
var
  ii: Integer;
begin
  ii := 0;
  while Pos('|', Cadena) > 0 do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;

  Result := ii;
end;

procedure TFrmProyeccionNomina.CalcularNomina(Seleccion: Boolean);
var
  Cursor: TCursor;
  cdPersonalIncluido: TClientDataSet;
  Field: TField;
  SumaPer, SumaDed: Extended;
begin
  Try
    if Seleccion then
    begin
      // Seleccionar el personal que se va a calcular
      Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        cdPersonalIncluido := TClientDataSet.Create(Nil);
        if Not CrearConjunto(cdPersonalIncluido, 'nuc_personal_nomina', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Personal Incluido en Nómina']);

        if Not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina', [cdBuscar.FieldByName('IdNomina').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Personal Incluido en Nómina', cdBuscar.FieldByName('IdNomina').AsInteger, 'Id. Nomina']);

        cdPersonalIncluido.Open;
        {cdPersonalIncluido.Close;

        // add calculated field
        Field := TStringField.Create(cdPersonalIncluido);
        Field.FieldName := 'Check';
        Field.Calculated := True;
        Field.DataSet := cdPersonalIncluido;

        cdPersonalIncluido.Open;}
  {      cdPersonalIncluido.Close;
        cdPersonalIncluido.FieldDefs.Add('Check', TFieldType);}

        Application.CreateForm(TFrmPersonalNomina, FrmPersonalNomina);
        FrmPersonalNomina.dsPersonalIncluido.DataSet := cdPersonalIncluido;
        FrmPersonalNomina.IdNomina := cdBuscar.FieldByName('IdNomina').AsInteger;
        if FrmPersonalNomina.ShowModal = mrCancel then
          raise InteligentWarning.Create('*');
      Finally
        Screen.Cursor := Cursor;

        if cdPersonalIncluido.ProviderName <> '' then
          EliminarConjunto(cdPersonalIncluido);

        cdPersonalIncluido.Free;
      End;
    end
    else
    begin
      // Eliminar la nómina existente
      Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

        ProcedimientoAlmacenado('nom_detallenomina_delete', 'pIdNomina,pListaSel,pCompleta', [cdBuscar.FieldByName('IdNomina').AsInteger, '"0"', 0]);
      Finally
        Screen.Cursor := Cursor;
      End;
    end;

    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Abrir los datos del empleado
      cdPersonalNomina.Close;
      CargarDatosFiltrados(cdPersonalNomina, 'IdNomina', [cdBuscar.FieldByName('IdNomina').AsInteger]);
      cdPersonalNomina.Open;

      // Abrir la lista de conceptos de Nómina
      CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdBuscar.FieldByName('IdTipoNomina').AsInteger]);
      cdConcepto.Open;
    Finally
      Screen.Cursor := Cursor;
    End;

    CalcularNominaEmpleado(cdBuscar, cdPersonalNomina, Nil, cdPersonal, cdConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones, memDeducciones, Panel_Progress);

    // Totalizar percepciones y deducciones para informar al usuario
    memPercepciones.First;
    SumaPer := 0;
    while not memPercepciones.Eof do
    begin
      SumaPer := SumaPer + StrToFloat(memPercepciones.FieldByName('Importe').AsString);
      memPercepciones.Next;
    end;

    memDeducciones.First;
    SumaDed := 0;
    while not memDeducciones.Eof do
    begin
      SumaDed := SumaDed + StrToFloat(memDeducciones.FieldByName('Importe').AsString);
      memDeducciones.Next;
    end;

    // Si todo ha salido correcto se debe preguntar al usuario si quiere ver la nómina en este momento
    CurrencyString := '$ ';
    if InteliDialog.ShowModal('Cálculo de Nómina ha finalizado', 'Se han procesado un total de ' + IntToStr(cdPersonalNomina.RecordCount) + ' Empleados.' + #10 + #10 + '¿Desea ver en este momento la Nómina generada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Btn_ImprimirNomina.Click;
  Except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmProyeccionNomina.Btn_CalcularNómina2Click(Sender: TObject);
begin
  CalcularNomina(True);
end;

procedure TFrmProyeccionNomina.Btn_CalcularNóminaClick(Sender: TObject);
begin
  CalcularNomina(False);
end;

procedure TFrmProyeccionNomina.Btn_ImprimirReciboClick(Sender: TObject);
var
  Id: Integer;
begin
  // Proceder con la impresión del registro seleccionado
  Id := 0;
  if Pos('_', TWinControl(Sender).Name) > 0 then
  begin
    Try
      Id := StrToInt(Copy(TWinControl(Sender).Name, Pos('_', TWinControl(Sender).Name) +1, Length(TWinControl(Sender).Name)));
    Except
      Id := -1;
    End;
  end;

  if (Id > 0) and (cdPersonalNomina.Locate('IdPersonal', Id, [])) then
  begin
    RNomina.LoadFromFile('C:\Proyectos DELPHI XE\Actualizaciones Proyecto Nucleo\Enviado 09-05-2011\Utidel RHH\Reportes\Finiquito.fr3');
    RNomina.ShowReport;
  end;
end;

procedure TFrmProyeccionNomina.ImprimeCalculo(Id: Integer);
begin
  // Proceder con la impresión de los datos del registro seleccionado
  if (Id > 0) and (cdPersonalDetalleNomina.Locate('IdPersonal', Id, [])) then
  begin
    Try
      cdDetalle.Filter := 'Modo <> ' + QuotedStr('MEMORIA') + ' AND Modo <> ' + QuotedStr('EMPLEADO');
      cdDetalle.Filtered := True;

      ClientModule1.ImprimeReporte('CalculoNomina.fr3', RSubReporte);
      {RSubReporte.LoadFromFile('C:\Proyectos DELPHI XE\Actualizaciones Proyecto Nucleo\Enviado 09-05-2011\Utidel RHH\Reportes\CalculoNomina.fr3');
      RSubReporte.ShowReport;}
    Finally
      cdDetalle.Filtered := False;
    End;
  end;
end;

procedure TFrmProyeccionNomina.Btn_ImprimirNominaClick(Sender: TObject);
var
  Cursor: TCursor;
  NumRec, i: Integer;
  Cadena,
  Modo,
  Codigo,
  Titulo,
  Nombre,
  Grupo,
  Cargo,
  Valor: String;
  Acceso: TClientDataSet;
begin
  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      // Verificar si ya se ha cargado el salario minimo del DF
      if SMGVDF = 0 then
      begin
        Try
          //Acceso := TClientDataSet.Create(Screen.ActiveForm);
          Acceso := TClientDataSet.Create(Nil);

          // Obtener el salario mínimo del D.F.
          if Not CrearConjunto(Acceso, 'rhu_salario', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Catálogo de Salarios']);

          if Not CargarDatosFiltrados(Acceso, 'TipoSalario', ['SMVDF']) then
            raise InteligentException.CreateByCode(6, ['Catalogo de Salarios', ClientModule1.cdOrganizacion.FieldByName('IdSalario').AsInteger, 'IdLlave']);
          Acceso.Open;

          if Acceso.RecordCount = 0 then
            raise InteligentException.CreateByCode(1, ['No existe el Salario Mínimo para el D.F.']);

          SMGVDF := StrToFloat(Acceso.FieldByName('Salario').AsString);

          Acceso.Close;
        Finally
          if Assigned(Acceso) then
          begin
            if Acceso.Active then
              Acceso.Close;

            EliminarConjunto(Acceso);
            Acceso.Free;
          end;
        End;
      end;
      // Crear el conjunto de los datos generales del empleado
      cdGenerales := TClientDataSet.Create(Self);

      // Crear el conjunto de personal
      if cdPersonalDetalleNomina.ProviderName = '' then
      begin
        if Not CrearConjunto(cdPersonalDetalleNomina, 'nuc_personal_detallenomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal por Detalle de Nómina']);
      end
      else
        cdPersonalDetalleNomina.Close;

      if Not CargarDatosFiltrados(cdPersonalDetalleNomina, 'IdNomina', [cdBuscar.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Personal por Detalle de Nómina', cdBuscar.FieldByName('IdNomina').AsInteger, 'IdNomina']);
      cdPersonalDetalleNomina.Open;

      if cdPersonalDetalleNomina.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['Personal por Detalle de Nómina']);

      // Leer los datos de la nómina
      if Not CargarDatosFiltrados(cdDetalleSave, 'IdNomina', [cdBuscar.FieldByName('IdNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['la nómina ' + cdBuscar.FieldByName('Titulo').AsString, cdBuscar.FieldByName('IdNomina').AsInteger, 'IdNomina']);
      if cdDetalleSave.Active then
        cdDetalleSave.Refresh
      else
        cdDetalleSave.Open;

      if cdDetalleSave.RecordCount = 0 then
        raise InteligentException.CreateByCode(22, ['la nómina ' + cdBuscar.FieldByName('Titulo').AsString + ' del ' + cdBuscar.FieldByName('FechaNomina').AsString]);

      // Limpiar los datos de nómina de empleado que pudieran existir
      memPercepciones.EmptyDataSet;
      memDeducciones.EmptyDataSet;

      // Limpiar los datos de nómina de departamento que pudieran existir
      memDeptoPercepciones.EmptyDataSet;
      memDeptoDeducciones.EmptyDataSet;

      // Limpiar los datos de Obligaciones Fiscales de departamento que pudieran existir
      memObligacion.EmptyDataSet;

      // Limpiar los rubros de IMSS por departamento que pudieran existir
      memRubrosIMSS.EmptyDataSet;

      cdDetalleSave.First;

      // Identificar cuantos registros componen su nómina
      NumRec := 0;
      Cadena := cdDetalleSave.FieldByName('Clave').AsString;
      while Pos('|', Cadena) > 0 do
      begin
        Inc(NumRec);
        Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
      end;

      // Obtener el universo de conceptos de entre todos los empleados
      cdDetalleSave.First;
      while not cdDetalleSave.Eof do
      begin
        for i := 0 to NumRec -1 do
        begin
          Modo := Parte(i, cdDetalleSave.FieldByName('Modo').AsString);
          Codigo := Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);

          if (CompareText(Modo, 'EMPLEADO') = 0) and (cdGenerales.FieldDefs.IndexOf(Codigo) < 0) then
            cdGenerales.FieldDefs.Add(Codigo, ftString, 200, False);
        end;

        cdDetalleSave.Next;
      end;
      cdGenerales.CreateDataSet;
      cdGenerales.Open;

      cdDetalleSave.First;
      while not cdDetalleSave.Eof do
      begin
        // Identificar cuantos registros componen su nómina
        NumRec := 0;
        Cadena := cdDetalleSave.FieldByName('Clave').AsString;
        while Pos('|', Cadena) > 0 do
        begin
          Inc(NumRec);
          Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
        end;

        cdGenerales.Append;
        cdGenerales.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;

        for i := 0 to NumRec -1 do
        begin
          Modo := Parte(i, cdDetalleSave.FieldByName('Modo').AsString);
          Codigo := Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);
          Titulo := Parte(i, cdDetalleSave.FieldByName('Titulo').AsString);
          Nombre := Parte(i, cdDetalleSave.FieldByName('Descripcion').AsString);
          Grupo := Parte(i, cdDetalleSave.FieldByName('IdGrupoConcepto').AsString);
          Cargo := Parte(i, cdDetalleSave.FieldByName('Cargo').AsString);
          Valor := Parte(i, cdDetalleSave.FieldByName('Valor').AsString);

          if CompareText(Modo, 'EMPLEADO') = 0 then
            cdGenerales.FieldByName(Codigo).AsString := Valor;

          if CompareText(Modo, 'PERCEPCION') = 0 then
          begin
            memPercepciones.Append;
            memPercepciones.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;
            memPercepciones.FieldByName('CodigoConcepto').AsString := Codigo;
            memPercepciones.FieldByName('Titulo').AsString := Titulo;
            memPercepciones.FieldByName('Nombre').AsString := Nombre;
            memPercepciones.FieldByName('Importe').AsString := Valor;
            memPercepciones.Post;

            // Verificar si ya existe el registro para departamento para este rubro
            Try
              memDeptoPercepciones.Filtered := False;
              memDeptoPercepciones.Filter := 'IdDepartamento = ' + cdDetalleSave.FieldByName('IdDepartamento').AsString + ' and CodigoConcepto = ' + QuotedStr(Codigo);
              memDeptoPercepciones.Filtered := True;

              if memDeptoPercepciones.RecordCount = 0 then
              begin
                memDeptoPercepciones.Append;
                memDeptoPercepciones.FieldByName('IdDepartamento').AsInteger := cdDetalleSave.FieldByName('IdDepartamento').AsInteger;
                memDeptoPercepciones.FieldByName('CodigoConcepto').AsString := Codigo;
                memDeptoPercepciones.FieldByName('Titulo').AsString := Titulo;
                memDeptoPercepciones.FieldByName('Nombre').AsString := Nombre;
                memDeptoPercepciones.FieldByName('Modo').AsString := Modo;
              end
              else
                memDeptoPercepciones.Edit;

              memDeptoPercepciones.FieldByName('Importe').AsFloat := memDeptoPercepciones.FieldByName('Importe').AsFloat + StrToFloat(Valor);
              memDeptoPercepciones.Post;
            Finally
              memDeptoPercepciones.Filtered := False;
            end;
          end;

          if CompareText(Modo, 'DEDUCCION') = 0 then
          begin
{            Codigo := Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);
            Titulo := Parte(i, cdDetalleSave.FieldByName('Titulo').AsString);
            Nombre := Parte(i, cdDetalleSave.FieldByName('Descripcion').AsString);
            Valor := Parte(i, cdDetalleSave.FieldByName('Valor').AsString);
}
            memDeducciones.Append;
            memDeducciones.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;
            memDeducciones.FieldByName('CodigoConcepto').AsString := Codigo;
            memDeducciones.FieldByName('Titulo').AsString := Titulo;
            memDeducciones.FieldByName('Nombre').AsString := Nombre;
            memDeducciones.FieldByName('Importe').AsString := Valor;
            memDeducciones.Post;

            // Verificar si ya existe el registro para departamento para este rubro
            Try
              memDeptoDeducciones.Filtered := False;
              memDeptoDeducciones.Filter := 'IdDepartamento = ' + cdDetalleSave.FieldByName('IdDepartamento').AsString + ' and CodigoConcepto = ' + QuotedStr(Codigo);
              memDeptoDeducciones.Filtered := True;

              if memDeptoDeducciones.RecordCount = 0 then
              begin
                memDeptoDeducciones.Append;
                memDeptoDeducciones.FieldByName('IdDepartamento').AsInteger := cdDetalleSave.FieldByName('IdDepartamento').AsInteger;
                memDeptoDeducciones.FieldByName('CodigoConcepto').AsString := Codigo;
                memDeptoDeducciones.FieldByName('Titulo').AsString := Titulo;
                memDeptoDeducciones.FieldByName('Nombre').AsString := Nombre;
                memDeptoDeducciones.FieldByName('Modo').AsString := Modo;
              end
              else
                memDeptoDeducciones.Edit;

              memDeptoDeducciones.FieldByName('Importe').AsFloat := memDeptoDeducciones.FieldByName('Importe').AsFloat + StrToFloat(Valor);
              memDeptoDeducciones.Post;
            Finally
              memDeptoDeducciones.Filtered := False;
            end;
          end;

          // Gardar los datos de las obligaciones
          if CompareText(Modo, 'OBLIGACION') = 0 then
          begin
 {           Codigo := Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);
            Titulo := Parte(i, cdDetalleSave.FieldByName('Titulo').AsString);
            Nombre := Parte(i, cdDetalleSave.FieldByName('Descripcion').AsString);
            Valor := Parte(i, cdDetalleSave.FieldByName('Valor').AsString);
}
            // Verificar si ya existe el registro para departamento para este rubro
            Try
              memObligacion.Filtered := False;
              memObligacion.Filter := 'IdDepartamento = ' + cdDetalleSave.FieldByName('IdDepartamento').AsString + ' and CodigoConcepto = ' + QuotedStr(Codigo);
              memObligacion.Filtered := True;

              if memObligacion.RecordCount = 0 then
              begin
                memObligacion.Append;
                memObligacion.FieldByName('IdDepartamento').AsInteger := cdDetalleSave.FieldByName('IdDepartamento').AsInteger;
                memObligacion.FieldByName('CodigoConcepto').AsString := Codigo;
                memObligacion.FieldByName('Nombre').AsString := Nombre;
              end
              else
                memObligacion.Edit;

              memObligacion.FieldByName('Importe').AsFloat := memObligacion.FieldByName('Importe').AsFloat + StrToFloat(Valor);
              memObligacion.Post;
            Finally
              memObligacion.Filtered := False;
            end;
          end;

          // Verificar si es un rubro de IMSS
          if (CompareText(Modo, 'IMSS') = 0) and (Grupo <> '-1') then
          begin
            Try
              memRubrosIMSS.Filtered := False;
              memRubrosIMSS.Filter := 'IdDepartamento = ' + cdDetalleSave.FieldByName('IdDepartamento').AsString + ' and IdGrupoConcepto = ' + Grupo;
              memRubrosIMSS.Filtered := True;
              if memRubrosIMSS.RecordCount = 0 then
              begin
                memRubrosIMSS.Append;
                memRubrosIMSS.FieldByName('IdDepartamento').AsInteger := cdDetalleSave.FieldByName('IdDepartamento').AsInteger;
                memRubrosIMSS.FieldByName('IdGrupoConcepto').AsString := Grupo;

                // Localizar el registro de grupo
                if cdGruposConcepto.Locate('IdGrupoConcepto', Grupo, []) then
                  memRubrosIMSS.FieldByName('Nombre').AsString := cdGruposConcepto.FieldByName('Nombre').AsString
                else
                  memRubrosIMSS.FieldByName('Nombre').AsString := '*** ERROR DE ACCESO A DATOS';
              end
              else
                memRubrosIMSS.Edit;

              if memRubrosIMSS.State in [dsEdit, dsInsert] then
              begin
                if CompareText(Cargo, 'PATRONAL') = 0 then
                  memRubrosIMSS.FieldByName('Patronal').AsFloat := memRubrosIMSS.FieldByName('Patronal').AsFloat + StrToFloat(Valor)
                else
                  memRubrosIMSS.FieldByName('Obrero').AsFloat := memRubrosIMSS.FieldByName('Obrero').AsFloat + StrToFloat(Valor);
                memRubrosIMSS.Post;
              end;
            Finally
              memRubrosIMSS.Filtered := False;
            end;
          end;
        end;
        cdGenerales.Post;

        cdDetalleSave.Next;
      end;

      FDSGenerales.DataSet := cdGenerales;

      // Generar el reporte de nómina
      ClientModule1.ImprimeReporte('Nomina.fr3', RNomina);
    Finally
      Screen.Cursor := Cursor;
      //cdPersonalDetalleNomina.Close;
      //EliminarConjunto(cdPersonalDetalleNomina);
      //cdPersonalDetalleNomina.ProviderName := '';

      memPercepciones.Filtered := False;
      memDeducciones.Filtered := False;

      memDeptoPercepciones.Filtered := False;
      memDeptoDeducciones.Filtered := False;
      memObligacion.Filtered := False;
      memRubrosIMSS.Filtered := False;

      cdGenerales.Free;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmProyeccionNomina.Btn_ProcederClick(Sender: TObject);
var
  Componente: TComponent;
  NewPageCalculo: TAdvOfficePage;
  NewPanelCalculo,
  NewPanelBottom: TPanel;
  NewScrollBox: TScrollBox;
  Btn_Imprimir,
  Btn_ImprimirRecibo: TAdvGlowButton;
  Altura: Integer;
  OldClave: String;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    // Abrir los datos del empleado
    cdPersonalNomina.Close;
    CargarDatosFiltrados(cdPersonalNomina, 'IdPersonal,IdNomina', [cdPersonal.FieldByName('IdPersonal').AsInteger, cdBuscar.FieldByName('IdNomina').AsInteger]);
    cdPersonalNomina.Open;

    // Abrir la lista de conceptos de Nómina
    CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdBuscar.FieldByName('IdTipoNomina').AsInteger]);
    cdConcepto.Open;
  Finally
    Screen.Cursor := Cursor;
  End;

  CalcularNominaEmpleado(cdBuscar, cdPersonalNomina, Nil, cdPersonal, cdConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones, memDeducciones, Panel_Progress);

  Altura := 0;

  Componente := AdvOfficePager1.FindComponent('EMPLEADO_' + cdPersonalNomina.FieldByname('IdPersonal').AsString);
  if Assigned(Componente) then
    NewPageCalculo := Componente as TAdvOfficePage
  else
  begin
    NewPageCalculo := TAdvOfficePage.Create(AdvOfficePager1);
    NewPageCalculo.Name := 'EMPLEADO_' + cdPersonalNomina.FieldByName('IdPersonal').AsString;
    NewPageCalculo.Caption := cdPersonalNomina.FieldByName('CodigoPersonal').AsString;

    NewPanelCalculo := TPanel.Create(AdvOfficePager1);
    NewPanelCalculo.Parent := NewPageCalculo;
    NewPanelCalculo.Align := alClient;
    NewPanelCalculo.Color := clWhite;
    NewPanelCalculo.BorderStyle := bsNone;
    NewPanelCalculo.Padding.Left := 6;
    NewPanelCalculo.Padding.Right := 6;
    NewPanelCalculo.Padding.Top := 6;
    NewPanelCalculo.Padding.Bottom := 6;

    NewScrollBox := TScrollBox.Create(NewPanelCalculo);
    NewScrollBox.Parent := NewPanelCalculo;
    NewScrollBox.Align := alClient;
    NewScrollBox.Color := clWhite;

    NewPanelBottom := TPanel.Create(NewPanelCalculo);
    NewPanelBottom.Parent := NewPanelCalculo;
    NewPanelBottom.Align := alBottom;

    Btn_ImprimirRecibo := TAdvGlowButton.Create(NewPanelBottom);
    Btn_ImprimirRecibo.Parent := NewPanelBottom;
    Btn_ImprimirRecibo.Name := 'ImprimirRecibo_' + cdPersonalNomina.FieldByName('IdPersonal').AsString;
    Btn_ImprimirRecibo.Caption := '&Imprimir Recibo';
    Btn_ImprimirRecibo.OnClick := Btn_ImprimirReciboClick;
    Btn_ImprimirRecibo.Align := alLeft;

    Btn_Imprimir := TAdvGlowButton.Create(NewPanelBottom);
    Btn_Imprimir.Parent := NewPanelBottom;
    Btn_Imprimir.Name := 'Imprimir_' + cdPersonalNomina.FieldByName('IdPersonal').AsString;
    Btn_Imprimir.Caption := '&Imprimir';
    //Btn_Imprimir.OnClick := Btn_ImprimirClick;
    Btn_Imprimir.Left := Btn_Imprimir.Width;
    Btn_Imprimir.Align := alRight;

    AdvOfficePager1.AddAdvPage(NewPageCalculo);
  end;

  // Colocar los datos generales del Empleado
  GenerarLinea(NewScrollBox, 'DATOS GENERALES DEL CÁLCULO', Altura, 40, 14, True);
  GenerarLinea(NewScrollBox, cdPersonalNomina.FieldByName('NombreCompleto').AsString, Altura, 20, 10, True);
  GenerarLinea(NewScrollBox, cdPersonalNomina.FieldByName('CodigoDepartamento').AsString + ' - ' + cdPersonalNomina.FieldByName('TituloDepartamento').AsString, Altura);
  GenerarLinea(NewScrollBox, cdPersonalNomina.FieldByName('CodigoCargo').AsString + ' - ' + cdPersonalNomina.FieldByName('TituloCargo').AsString, Altura);
  GenerarLinea(NewScrollBox, 'SALARIO DIARIO: ' + FloatToStrF(Valores.Elemento('EMPLEADO.Salario').AsFloat, ffCurrency, 12, 2) + ' - ' + cdPersonalNomina.FieldByName('TituloMoneda').AsString, Altura);
  GenerarLinea(NewScrollBox, 'Salario Diario I.M.S.S.:  ' + Valores.Elemento('EMPLEADO.SalarioIntegrado').AsString, Altura, 40);
  GenerarLinea(NewScrollBox, 'DIAS PARA AGUINALDO (DA):  ' + Valores.Elemento('EMPLEADO.DIASAGUINALDO').AsString, Altura);
  GenerarLinea(NewScrollBox, 'DIAS PARA VACACIONES (DV):  ' + Valores.Elemento('EMPLEADO.DIASVACACIONES').AsString, Altura);
  GenerarLinea(NewScrollBox, 'FACTOR PRIMA VACACIONAL (FPV):  ' + FloatToStr(Valores.Elemento('EMPLEADO.FactorPrimaVacacional').AsFloat * 100) + '%', Altura);
  GenerarLinea(NewScrollBox, 'FACTOR PRIMA DOMINICAL:  ' + FloatToStr(Valores.Elemento('EMPLEADO.FactorPrimaDominical').AsFloat * 100) + '%', Altura);
  GenerarLinea(NewScrollBox, 'SALARIO MÍNIMO GENERAL VIGENTE DE ZONA (SMGZ): ' + Valores.Elemento('EMPLEADO.SalMinGenZona').AsString, Altura);
  GenerarLinea(NewScrollBox, 'SALARIO MÍNIMO GENERAL VIGENTE DEL DISTRITO FEDERAL (SMGVDF) : ' + Valores.Elemento('EMPLEADO.SMDF').AsString, Altura, 40);

  // Mostrar los rubros calculados hasta aquí
  GenerarLinea(NewScrollBox, 'DIAS TRABAJADOS:  ' + FloatToStrF(Valores.Elemento('EMPLEADO.DIAST').AsVariant, ffCurrency, 12,2), Altura);
  GenerarLinea(NewScrollBox, 'SUELDO:  ' + FloatToStrF(Valores.Elemento('NOMINA.SUELDO').AsVariant, ffCurrency, 12,2), Altura);
  GenerarLinea(NewScrollBox, 'SUELDO SEMANAL:  ' + FloatToStrF(Valores.Elemento('NOMINA.SUELDOSEMANAL').AsVariant, ffCurrency, 12,2), Altura);
  GenerarLinea(NewScrollBox, 'DOMINGOS TRABAJADOS:  ' + FloatToStrF(Valores.Elemento('NOMINA.DOMINGOSTRABAJADOS').AsVariant, ffCurrency, 12,2), Altura);
  GenerarLinea(NewScrollBox, 'Tiempo Extra:  ' + FloatToStrF(Valores.Elemento('NOMINA.HorasExtra').AsVariant, ffCurrency, 12,2) + '  -  ' + '(Gravable para I.S.P.T.: ' + FloatToStrF(Valores.Elemento('NOMINA.HorasExtraGrav').AsVariant, ffCurrency, 12,2) + ')', Altura);
  GenerarLinea(NewScrollBox, 'Prima Dominical:  ' + FloatToStrF(Valores.Elemento('NOMINA.PrimaDominical').AsVariant, ffCurrency, 12,2) + '  -  (Gravable para I.S.P.T.: ' + FloatToStrF(Valores.Elemento('NOMINA.PrimaDominicalGravable').AsVariant, ffCurrency, 12, 2) + ')', Altura);
  GenerarLinea(NewScrollBox, 'Aguinaldo:  ' + FloatToStrF(Valores.Elemento('NOMINA.Aguinaldo').AsVariant, ffCurrency, 12,2) + '  -  (Gravable para I.S.P.T.: ' + FloatToStrF(Valores.Elemento('NOMINA.AguinaldoGravable').AsVariant, ffCurrency, 12, 2) + ')', Altura);
  GenerarLinea(NewScrollBox, 'Vacaciones:  ' + FloatToStrF(Valores.Elemento('NOMINA.Vacaciones').AsVariant, ffCurrency, 12,2) + '  -  (Gravable para I.S.P.T.: ' + FloatToStrF(Valores.Elemento('NOMINA.VacacionesGravables').AsVariant, ffCurrency, 12, 2) + ')', Altura);
  GenerarLinea(NewScrollBox, 'Prima Vacacional:  ' + FloatToStrF(Valores.Elemento('NOMINA.PrimaVacacional').AsVariant, ffCurrency, 12,2) + '  -  (Prima Vacacional para I.S.P.T.: ' + FloatToStrF(Valores.Elemento('NOMINA.PrimaVacacionalGravable').AsVariant, ffCurrency, 12, 2) + ')', Altura, 30);

  GenerarLinea(NewScrollBox, 'Total de Percepciones:  ' + FloatToStrF(Valores.Elemento('NOMINA.TotalPercepciones').AsFloat, ffCurrency, 12,2), Altura, 30, 10, True);
  GenerarLinea(NewScrollBox, 'Percepción Gravable Diaria para I.S.P.T.:  ' + FloatToStrF(Valores.Elemento('NOMINA.GravadoDiaISPT').AsFloat, ffCurrency, 12,2), Altura, 40, 10);

  GenerarLinea(NewScrollBox, 'RENGLÓN TABLA DIARIA I.S.P.T.', Altura, 30, 10, True);
  GenerarLinea(NewScrollBox, 'Limite Inferior:  ' + FloatToStrF(Valores.Elemento('NOMINA.LimiteInferior').AsFloat, ffCurrency, 12, 2), Altura);
  GenerarLinea(NewScrollBox, 'Cuota Fija:  ' + FloatToStrF(Valores.Elemento('NOMINA.CuotaFija').AsFloat, ffCurrency, 12, 2), Altura);
  GenerarLinea(NewScrollBox, '% Sobre Límite Inferior:  ' + Valores.Elemento('NOMINA.PSELI').AsString + '%', Altura, 30);

  GenerarLinea(NewScrollBox, 'Diferencia Sobre Límite Inferior:  ' + FloatToStrF(Valores.Elemento('NOMINA.DifLimiteInferiorDT').AsFloat, ffCurrency, 12, 2), Altura);
  GenerarLinea(NewScrollBox, 'Aplicar % Sobre Limite Inferior:  ' + FloatToStrF(Valores.Elemento('NOMINA.ISPT1').AsFloat, ffCurrency, 12, 2), Altura);
  GenerarLinea(NewScrollBox, 'Cuota Fija:  ' + FloatToStrF(Valores.Elemento('NOMINA.CuotaFijaDT').AsFloat, ffCurrency, 12, 2), Altura, 30);
  GenerarLinea(NewScrollBox, 'Subsidio ISPT:  ' + FloatToStrF(Valores.Elemento('NOMINA.Subsidio').AsVariant, ffCurrency, 12, 2), Altura, 30);

  GenerarLinea(NewScrollBox, 'Impuesto Sobre el Producto del Trabajo:  ' + FloatToStrF(Valores.Elemento('NOMINA.ISPT').AsFloat, ffCurrency, 12, 2), Altura, 30);

  // Calcular el IMSS
  GenerarLinea(NewScrollBox, 'CALCULO DE CUOTAS OBRERO/PATRONALES DEL I.M.S.S.', Altura, 20, 10, True);

  OldClave := '';
  cdDetalle.First;
  while not cdDetalle.Eof do
  begin
    if CompareText(cdDetalle.FieldByName('Modo').AsString, 'IMSS') = 0 then
    begin
      if AnsiCompareText(cdDetalle.FieldByName('Clave').AsString, 'Nil') <> 0 then
      begin
        if AnsiCompareText(OldClave, cdDetalle.FieldByName('CodigoConcepto').AsString) <> 0 then
        begin
          if OldClave <> '' then
            GenerarLinea(NewScrollBox, '  ', Altura);

          OldClave := cdDetalle.FieldByName('CodigoConcepto').AsString;

          GenerarLinea(NewScrollBox, StringReplace(cdDetalle.FieldByName('Descripcion').AsString, '_', ' ', [rfReplaceAll]), Altura);
        end;
        GenerarLinea(NewScrollBox, cdDetalle.FieldByName('Cargo').AsString + ':  ' + FloatToStrF(cdDetalle.FieldByName('Valor').AsFloat, ffCurrency, 12, 2), Altura);
      end;
    end;

    cdDetalle.Next;
  end;

  GenerarLinea(NewScrollBox, ' ', Altura);
  GenerarLinea(NewScrollBox, 'DEDUCCIONES', Altura, 30, 11, True);
  GenerarLinea(NewScrollBox, 'I.S.P.T.:  ' + FloatToStrF(Valores.Elemento('NOMINA.ISPT').AsFloat, ffCurrency, 12, 2), Altura);
  GenerarLinea(NewScrollBox, 'I.M.S.S.:  ' + FloatToStrF(Valores.Elemento('NOMINA.CUOTAIMSS-Obrero').AsFloat, ffCurrency, 12, 2), Altura);
  if Valores.Elemento('EMPLEADO.Infonavit').AsString = 'Si' then
    GenerarLinea(NewScrollBox, 'PRESTAMO INFONAVIT:  ' + FloatToStrF(Valores.Elemento('NOMINA.PrestamoInfonavit').AsFloat, ffCurrency, 12, 2), Altura); //FloatToStrF(IMSSEmpleado, ffCurrency, 12, 2), Altura);
  GenerarLinea(NewScrollBox, 'TOTAL DEDUCCIONES:  ' + FloatToStrF(Valores.Elemento('NOMINA.TotalDeducciones').AsFloat, ffCurrency, 12, 2), Altura);

  GenerarLinea(NewScrollBox, '', Altura, 30);
  GenerarLinea(NewScrollBox, 'NETO A PAGAR:  ' + FloatToStrF(Valores.Elemento('NOMINA.TotalPercepciones').AsFloat - Valores.Elemento('NOMINA.TotalDeducciones').AsFloat, ffCurrency, 12, 2), Altura, 30, 16, True);

  AdvOfficePager1.ActivePageIndex := NewPageCalculo.PageIndex;
end;

procedure TFrmProyeccionNomina.cbNominasChange(Sender: TObject);
begin
  // Mostrar los datos de la nómina
  cdBuscar.RecNo := cbNominas.ItemIndex + 1;
end;

procedure TFrmProyeccionNomina.cbPersonalChange(Sender: TObject);
begin
  if cdPersonal.Active then
    cdPersonal.Close;

  if cdPersonalNomina.Active then
    cdPersonalNomina.Close;
end;

procedure TFrmProyeccionNomina.cbPersonalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    // Buscar el registro de personal
    if Not CargarDatosFiltrados(cdPersonal, 'CodigoPersonal', [cbPersonal.Text]) then
      raise InteligentException.CreateByCode(6, ['Personal', cbPersonal.Text, 'Codigo de Personal']);
    if cdPersonal.Active then
      cdPersonal.Refresh
    else
      cdPersonal.Open;
    if cdPersonal.RecordCount <> 1 then
    begin
      InteliDialog.ShowModal('No existe el registro de personal', 'No se ha localizado el registro de Personal con código [' + cbPersonal.Text + ']', mtInformation, [mbOk], 0);
      cdPersonal.Close;
    end
    else
    begin
      // Localizar las nóminas en base al tipo de nomina del cargo
      cdBuscar.Close;
      CargarDatosFiltrados(cdBuscar, 'IdTipoNomina', [cdPersonal.FieldByName('IdTipoNomina').AsInteger]);
      cdBuscar.Open;

      cbNominas.Items.Clear;
      while Not cdBuscar.Eof do
      begin
        cbNominas.Items.Add(cdBuscar.FieldByName('Titulo').AsString);

        cdBuscar.Next;
      end;
      if cbNominas.Items.Count > 0 then
      begin
        cbNominas.ItemIndex := 0;
        cbNominas.OnChange(Self);
      end;
      //showmessage(CDpERSONAL.FieldByName()
    end;
  end;
end;

procedure TFrmProyeccionNomina.cbTipoNomina2Change(Sender: TObject);
begin
  cdTipoNomina.RecNo := cbTipoNomina.ItemIndex + 1;

  if Not CargarDatosFiltrados(cdBuscar, 'IdTipoNomina,Estado', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, 'ABIERTA']) then
    raise InteligentException.CreateByCode(6, ['Nominas', cdTipoNomina.FieldByName('IdTipoNomina').AsString + '/ABIERTA', 'IdTipoNomina/Estado']);

  if cdBuscar.Active then
    cdBuscar.Refresh
  else
    cdBuscar.Open;
end;

procedure TFrmProyeccionNomina.cdBuscarAfterScroll(DataSet: TDataSet);
var
  NewDate: TDate;
  Domingos: Word;
begin
  // Contar el número de domingos que caen en este periodo
  NewDate := Trunc(cdBuscar.FieldByName('FechaNomina').AsDateTime);
  Domingos := 0;
  while NewDate <= Trunc(cdBuscar.FieldByName('FechaTerminoNomina').AsDateTime) do
  begin
    if DayOfTheWeek(NewDate) = 7 then
      Inc(Domingos);
    NewDate := IncDay(NewDate, 1);
  end;

  meDomingos.Value := Domingos;
end;

procedure TFrmProyeccionNomina.cdPersonalDetalleNominaAfterScroll(
  DataSet: TDataSet);
begin
  if Assigned(cdGenerales) and (cdGenerales.Active) then
    cdGenerales.Locate('IdPersonal', cdPersonalDetalleNomina.FieldByName('IdPersonal').AsInteger, []);

  memPercepciones.Filtered := False;
  memPercepciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
  memPercepciones.Filtered := True;

  memDeducciones.Filtered := False;
  memDeducciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
  memDeducciones.Filtered := True;

  memDeptoPercepciones.Filtered := False;
  memDeptoPercepciones.Filter := 'IdDepartamento = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString;
  memDeptoPercepciones.Filtered := True;

  memDeptoDeducciones.Filtered := False;
  memDeptoDeducciones.Filter := 'IdDepartamento = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString;
  memDeptoDeducciones.Filtered := True;

  memObligacion.Filtered := False;
  memObligacion.Filter := 'IdDepartamento = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString;
  memObligacion.Filtered := True;

  memRubrosIMSS.Filtered := False;
  memRubrosIMSS.Filter := 'IdDepartamento = ' + cdPersonalDetalleNomina.FieldByName('IdDepartamento').AsString;
  memRubrosIMSS.Filtered := True;

  // Obtener el neto a pagar por empleado
  NetoPagar := 0;
  while not memPercepciones.Eof do
  begin
    NetoPagar := NetoPagar + StrToFloat(memPercepciones.FieldByName('Importe').AsString);
    memPercepciones.Next;
  end;
  memPercepciones.First;

  while not memDeducciones.Eof do
  begin
    NetoPagar := NetoPagar - StrToFloat(memDeducciones.FieldByName('Importe').AsString);
    memDeducciones.Next;
  end;
  memDeducciones.First;

  // Obtener el neto a pagar por departamento
  NetoDeptoPagar := 0;
  while not memDeptoPercepciones.Eof do
  begin
    NetoDeptoPagar := NetoDeptoPagar + StrToFloat(memDeptoPercepciones.FieldByName('Importe').AsString);
    memDeptoPercepciones.Next;
  end;
  memDeptoPercepciones.First;

  while not memDeptoDeducciones.Eof do
  begin
    NetoDeptoPagar := NetoDeptoPagar - StrToFloat(memDeptoDeducciones.FieldByName('Importe').AsString);
    memDeptoDeducciones.Next;
  end;
  memDeptoDeducciones.First;
end;

procedure TFrmProyeccionNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Try
    if cdPersonalDetalleNomina.ProviderName <> '' then
      EliminarConjunto(cdPersonalDetalleNomina);

    EliminarConjunto([cdPersonal, cdPersonalNomina, cdConcepto, cdConceptoExtra]);

    if Assigned(cdGruposConcepto) then
      EliminarConjunto(cdGruposConcepto);

    if Assigned(cdBuscar) then
      EliminarConjunto(cdBuscar);

    if Assigned(cdSumaConcepto) then
      EliminarConjunto(cdSumaConcepto);
  Finally
    LiberarVentana(Self, Action);
  End;
end;

procedure TFrmProyeccionNomina.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  AccedeACoordenadas(Self);

  cdDetalleSave := TClientDataSet.Create(Self);
  cdDetalle := TClientDataSet.Create(Self);
  FDSDetalle.DataSet := cdDetalle;

  // Verificar el tipo de formato de la ventana (0 = Proceso General, 1 = Proceso Individual)
  spCalculoGeneral.Visible := True;
  AdvOfficePager1.Visible := Not spCalculoGeneral.Visible;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Personal']);

      if Not CrearConjunto(cdBuscar, 'nom_nomina', ccCatalog) then
        raise InteligentException.CreatebyCode(16, ['Nóminas']);

      if Not CrearConjunto(cdPersonalNomina, 'nuc_personal_nomina', ccCatalog) then
        raise InteligentException.CreatebyCode(16, ['Personal para Nómina']);

      if Not CrearConjunto(cdConcepto, 'nom_concepto', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos de Nómina']);

      if Not CrearConjunto(cdConceptoExtra, 'nom_conceptosextraxempleado', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Conceptos Extra de Nómina']);

      if Not CrearConjunto(cdDetalleSave, 'nom_detallenomina', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Detalle de Nómina']);

      if Not CargarDatosFiltrados(cdDetalleSave, 'IdPersonal', [-9]) then
        raise InteligentException.CreateByCode(21, ['Detalle de Nómina']);

      cdDetalleSave.Open;   // Traer la estructura de la tabla

      cdDetalle.FieldDefs.Add('IdDetalleNomina', ftInteger);
      cdDetalle.FieldDefs.Add('IdPersonal', ftInteger);
      cdDetalle.FieldDefs.Add('IdNomina', ftInteger);
      cdDetalle.FieldDefs.Add('IdCargo', ftInteger);
      cdDetalle.FieldDefs.Add('IdDepartamento', ftInteger);
      cdDetalle.FieldDefs.Add('IdFormaPago', ftInteger);
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

      cdGruposConcepto := TClientDataSet.Create(Self);
      cdSumaConcepto := TClientDataSet.Create(Self);

      // Proceder con el proceso general de la nómina
      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      if Not CrearConjunto(cdGruposConcepto, 'nom_grupoconcepto', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Grupos de Concepto']);

      if Not CrearConjunto(cdSumaConcepto, 'nom_detallenomina_suma', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Suma de Conceptos']);

      cdTipoNomina.Open;
      cdGruposConcepto.Open;

      if cdTipoNomina.RecordCount <= 0 then
        raise InteligentException.CreateByCode(22, ['Tipos de Nómina']);

      if Not CrearConjunto(cdBuscar, 'nom_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nóminas']);

      // Cargar los tipos de nómina al combo
      cbTipoNomina.Items.Clear;
      while Not cdTipoNomina.Eof do
      begin
        cbTipoNomina.Items.Add(cdTipoNomina.FieldByName('Titulo').AsString);
        cdTipoNomina.Next;
      end;

      // Crear los contenedores para las prestaciones y deducciones por departamento
      memDeptoPercepciones.FieldDefs.Add('IdDepartamento', ftInteger, 0, False);
      memDeptoPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
      memDeptoPercepciones.FieldDefs.Add('Titulo', ftString, 20, False);
      memDeptoPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeptoPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeptoPercepciones.FieldDefs.Add('Modo', ftString, 50, False);
      memDeptoPercepciones.CreateDataSet;
      memDeptoPercepciones.Open;

      memDeptoDeducciones.FieldDefs.Add('IdDepartamento', ftInteger, 0, False);
      memDeptoDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 60, False);
      memDeptoDeducciones.FieldDefs.Add('Titulo', ftString, 40, False);
      memDeptoDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeptoDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memdeptoDeducciones.FieldDefs.Add('Modo', ftString, 50, False);
      memDeptoDeducciones.CreateDataSet;
      memDeptoDeducciones.Open;

      memObligacion.FieldDefs.Add('IdDepartamento', ftInteger, 0, False);
      memObligacion.FieldDefs.Add('CodigoConcepto', ftString, 60, False);
      memObligacion.FieldDefs.Add('Nombre', ftString, 80, False);
      memObligacion.FieldDefs.Add('Importe', ftFloat, 0, False);
      memObligacion.CreateDataSet;
      memObligacion.Open;

      memRubrosIMSS.FieldDefs.Add('IdDepartamento', ftInteger, 0, False);
      memRubrosIMSS.FieldDefs.Add('IdGrupoConcepto', ftInteger, 0, False);
      memRubrosIMSS.FieldDefs.Add('Nombre', ftString, 80, False);
      memRubrosIMSS.FieldDefs.Add('Patronal', ftFloat, 0, False);
      memRubrosIMSS.FieldDefs.Add('Obrero', ftFloat, 0, False);
      memRubrosIMSS.CreateDataSet;
      memRubrosIMSS.Open;

      cbTipoNomina.ItemIndex := 0;
      cbTipoNomina.OnChange(Sender);

      meFestivos.Value := 0;

      memPercepciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
      memPercepciones.FieldDefs.Add('Titulo', ftString, 20, False);
      memPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memPercepciones.FieldDefs.Add('Modo', ftString, 50, False);
      memPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memPercepciones.CreateDataSet;
      memPercepciones.Open;

      memDeducciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
      memDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
      memDeducciones.FieldDefs.Add('Titulo', ftString, 20, False);
      memDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
      memDeducciones.FieldDefs.Add('Modo', ftString, 50, False);
      memDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
      memDeducciones.CreateDataSet;
      memDeducciones.Open;

      cbPersonal.Items.Clear;
      cbPersonal.Items.AddObject('< Buscar Empleado >', Nil);
    Finally
      Screen.Cursor := Cursor;
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
  end;
end;

procedure TFrmProyeccionNomina.FormShow(Sender: TObject);
begin
  SMGVDF := 0;
end;

procedure TFrmProyeccionNomina.GenerarLinea(Padre: TScrollBox; Texto: String;
  Var Altura: Integer; Alto: Word = 16; Tamanio: Word = 8;
  Bold: Boolean = False);
var
  GenLabel: TLabel;
begin
  GenLabel := TLabel.Create(Self);
  GenLabel.Parent := Padre;
  GenLabel.AutoSize := False;
  GenLabel.Top := Altura;
  GenLabel.Align := alTop;
  if Bold then
    GenLabel.Font.Style := [fsBold]
  else
    GenLabel.Font.Style := [];
  GenLabel.Font.Size := Tamanio;
  GenLabel.Height := Alto;
  GenLabel.Caption := Texto;
  Altura := Altura + GenLabel.Height;
end;

procedure TFrmProyeccionNomina.RNominaDblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  Tipo: String;
  IdEmpleado, Cuenta, ii: Integer;
  CodigoConcepto: String;
  Cantidad: Real;

  Elemento, ListaDetalleObrero, ListaDetallePatronal: TStringList;
  Cadena, SubCadena: String;
  Forma: TForm;
begin
  if ssCtrl in Shift then
  begin
    // Contar los elementos del TagStr
    Try
      Try
        Elemento := TStringList.Create;
        Elemento.Clear;
        Cadena := Sender.TagStr + ':';
        while Pos(':', Cadena) > 0 do
        begin
          Elemento.Add(Copy(Cadena, 1, Pos(':', Cadena) - 1));
          Cadena := Copy(Cadena, Pos(':', Cadena) +1, Length(Cadena));
        end;

        if (Elemento.Count = 2) and (Elemento[0] = 'NETO') then
        begin
          // Mostrar el detalle general del neto
          ImprimeCalculo(StrToInt(Elemento[1]));
        end;

        if Elemento.Count = 4 then
        begin
          Tipo := Elemento[0];
          IdPersonal := StrToInt(Elemento[1]);
          CodigoConcepto := Elemento[2];
          Cantidad := StrToFloat(Elemento[3]);
          ListaDetalleObrero := TStringList.Create;
          ListaDetallePatronal := TStringList.Create;
          ListaDetalleObrero.Clear;
          ListaDetallePatronal.Clear;

          // Localizar el registo adecuado de acuerdo a los parametros obtenidos
          Try
            cdDetalleSave.Filtered := False;
            cdDetalleSave.Filter := '(IdPersonal = ' + IntToStr(IdPersonal) + ')';
            cdDetalleSave.Filtered := True;

            while not cdDetalleSave.Eof do
            begin
              Cuenta := CuentaPartes(cdDetalleSave.FieldByName('Modo').AsString) -1;
              for ii := 0 to Cuenta do
              begin
//                  if Parte(ii, cdDetalleSave.FieldByName('Cadena').AsString) = '{NOMINA.CUOTAIMSS-Obrero}' then
                if (Copy(Parte(ii, cdDetalleSave.FieldByName('Modo').AsString), 1, 3) = Tipo) or ((Parte(ii, cdDetalleSave.FieldByName('Modo').AsString) = 'IMSS') and (Tipo = 'DED')) then
                begin
                  // Localizar el concepto
                  SubCadena := Parte(ii, cdDetalleSave.FieldByName('CodigoConcepto').AsString);

                  if (SubCadena = CodigoConcepto) or ((CodigoConcepto = '52') and ((Parte(ii, cdDetalleSave.FieldByName('Modo').AsString) = 'IMSS'))) then
                  begin
                    if (Not cdConcepto.Active) or ((cdConcepto.Active) and (cdConcepto.FieldByName('IdTipoNomina').AsInteger <> cdBuscar.FieldByName('IdTipoNomina').AsInteger)) then
                    begin
                      if Not CargarDatosFiltrados(cdConcepto, 'IdTipoNomina', [cdBuscar.FieldByName('IdTipoNomina').AsInteger]) then
                        raise InteligentException.CreateByCode(6, ['Conceptos de Nómina', cdBuscar.FieldByName('IdTipoNomina').AsInteger, 'Id. Tipo Nómina']);

                      if cdConcepto.Active then
                        cdConcepto.Refresh
                      else
                        cdConcepto.Open;
                    end;

  //                  if Parte(ii, cdDetalleSave.FieldByName('Cadena').AsString) = '{NOMINA.CUOTAIMSS-Obrero}' then

                    if (cdConcepto.Locate('CodigoConcepto', SubCadena, [])) or ((Parte(ii, cdDetalleSave.FieldByName('Modo').AsString) = 'IMSS') and (Tipo = 'DED')) then
                      if Parte(ii, cdDetalleSave.FieldByName('Cargo').AsString) = 'OBRERO' then
                        ListaDetalleObrero.Add(Parte(ii, cdDetalleSave.FieldByName('CodigoConcepto').AsString) + ' - ' + FloatToStrF(StrToFloat(Parte(ii, cdDetalleSave.FieldByName('Valor').AsString)), ffCurrency, 16, 2))
                      else
                        ListaDetallePatronal.Add(Parte(ii, cdDetalleSave.FieldByName('CodigoConcepto').AsString) + ' - ' + FloatToStrF(StrToFloat(Parte(ii, cdDetalleSave.FieldByName('Valor').AsString)), ffCurrency, 16, 2));
                  end;
                end;
              end;

              cdDetalleSave.Next;
            end;

            Try
              Forma := TForm.Create(Self);
              Forma.InsertControl(TMemo.Create(Forma));
              Forma.Controls[0].Align := alClient;
              TMemo(Forma.Controls[0]).ReadOnly := True;

              while ListaDetalleObrero.Count > 0 do
              begin
                TMemo(Forma.Controls[0]).Lines.Add(ListaDetalleObrero[0]);
                ListaDetalleObrero.Delete(0);
              end;

              TMemo(Forma.Controls[0]).Lines.Add('  ');

              while ListaDetallePatronal.Count > 0 do
              begin
                TMemo(Forma.Controls[0]).Lines.Add(ListaDetallePatronal[0]);
                ListaDetallePatronal.Delete(0);
              end;

              Forma.ShowModal;
            Finally
              Forma.Free;
            End;
          Finally
            cdDetalleSave.Filtered := False;
          End;
        end;
      Finally
        Elemento.Free;
      End;
    Except
      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmProyeccionNomina.RNominaGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(varName, 'InicioPeriodo') = 0 then
    Value := DescomponerFecha(cdBuscar.FieldByName('FechaNomina').AsDateTime);

  if CompareText(varName, 'TerminoPeriodo') = 0 then
    Value := DescomponerFecha(cdBuscar.FieldByName('FechaTerminoNomina').AsDateTime);

  if CompareText(VarName, 'SMGVDF') = 0 then
    Value := Valores.Elemento('EMPLEADO.SMDF').AsFloat;

  if CompareText(VarName, 'TotalPercepciones') = 0 then
    Value := Valores.Elemento('NOMINA.TotalPercepciones').AsFloat;

  if CompareText(VarName, 'TotalDeducciones') = 0 then
    Value := Valores.Elemento('NOMINA.TotalDeducciones').AsFloat;

  if CompareText(VarName, 'TotalNeto') = 0 then
    Value := Valores.Elemento('NOMINA.TotalPercepciones').AsFloat - Valores.Elemento('NOMINA.TotalDeducciones').AsFloat;

  if CompareText(VarName, 'NominaNeto') = 0 then
    Value := NetoPagar;

  if CompareText(VarName, 'NominaDeptoNeto') = 0 then
    Value := NetoDeptoPagar;
end;

procedure TFrmProyeccionNomina.RSubReporteGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'SMGVDF') = 0 then
    Value := SMGVDF;
end;

procedure TFrmProyeccionNomina.AccedeRegistro(Id: Integer);
begin
  if Id = -9 then
    cdDetalle.Append
  else
  begin
    if Not cdDetalle.Locate('IdPersonal', Id, []) then
      raise InteligentException.CreateByCode(12, [Id, 'Detalle de Nómina']);
    cdDetalle.Edit;
  end;
end;

end.
