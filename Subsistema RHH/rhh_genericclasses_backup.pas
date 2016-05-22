//****************************************************************************
// Variables incluidas en el cálculo:
//   1.- DiasMesInicio (Numero de días en el mes de inicio de nómina)
//   2.- DiasMesTermino  (Número de días en el mes de termino de nómina)
//   3.- DiasMesAntes  (Número de días en el mes anterior al inicio de la nómina)
//   4.- DiasMesDespues  (Número de días en el mes posterior al termino de la nómina)
//   5.- NumeroSemanasInicio  (Número de semanas en el mes de inicio de la nómina)
//   6.- NumeroSemanasTermino  (Númoer de semanas en el mes de termino de la nómina)
//   7.- NumeroDiasBimestreInicio  (Número de dias en el bimestre al inicio de la nómina
//   8.- NumeroSemanasBimestreInicio  (Númoer de semanas en el bimestre al inicio de la nómina
//   9.- NumeroDiasBimestreTermino  (Número de dias en el bimestre al termino de la nómina
//  10.- NumeroSemanasBimestreTermino  (Número de semanas en el bimestre al termino de la nómina
//****************************************************************************
unit rhh_genericclasses;

interface

uses
  Windows, Classes, SysUtils, StrUtils, jvLabel, Graphics, DBClient, ExtCtrls,
  Controls, UInteliDialog, ClientModuleUnit1, DB, Variants, ComCtrls, Forms,
  DateUtils, StdCtrls, AdvOfficePager, AdvGlowButton, Dialogs;

type
  TSigno = (sgNil, sgSuma, sgResta, sgMult, sgDiv, sgEQ, sgMT, sgME, sgGT, sgGE, sgNE, sgRango);

  TFormato = class
    CodigoConcepto: String;
    Clave: String;
    Titulo: String;
    Nombre: String;
    Modo: String;
    IdGrupoConcepto: Integer;
    Font: String;
    Size: Integer;
    Color: Integer;
    Height: Integer;
    Style: String;
  end;

  TVarValores = Class
  Protected
    sClase: String;
    sCodigo: String;
    sFormato: TFormato;
  Private
    vValor: Variant;
  Public
    function AsString: String;
    function AsInteger: Integer;
    function AsFloat: Extended;
    function AsDate: TDate;
    function AsDateTime: TDateTime;
    function AsVariant: Variant;
    property Formato: TFormato read sFormato write sFormato;
  End;

  TValores = class
  private
    ListaValor: TStringList;
  public
    Constructor Create;
    Destructor Destroy;

    function Elemento(Nombre: String): TVarValores;
    procedure SetValue(Nombre: String; Valor: Variant; Datos: String = '');
    function ResetValue(Nombre: String; Valor: Variant): Boolean;
  End;

  RegLog = record
    Campo: string;
    ValorAnt: string;
    ValorNuevo: string;
  end;

  TListaCambios = class
  protected
    FLista: TStringList;
    function GetCount: Integer;
    function GetItem(Index: Integer): RegLog;
    procedure SetItem(Index:Integer; pRegLog:RegLog);
    function Encode(ACampo, AValorAnt, AValorNuevo: string): string;
  public
    constructor Create; overload;
    constructor Create(AListaCambios: string); overload;
    destructor Destroy;
    procedure Add(ACampo, AValorAnt, AValorNuevo: string); overload;
    procedure Add(ARegLog: RegLog); overload;
    procedure Clear;
    function DelimitedString: String;
    property Items[Index: integer]: RegLog read GetItem write SetItem; default;
    property Count: Integer read GetCount;
  end;

  TJvLabelExt = class(TJvLabel)
  public
    oldFont: TFont;
    idplazadetalle: Integer;
    iddepartamento: Integer;
    titulodepartamento: String;
    idcargo: Integer;
    titulocargo: String;
    idpersonal: Integer;
    idplaza: integer;
  end;

  TPrueba = Class
    procedure OnClickCancel(Sender: TObject);
  End;

const
  TextoVacante = '(Vacante)';
  TextoVacanteND = '(Vacante no disponible)';

Var
  cdDetalle,
  cdDetalleSave: TClientDataSet;
  IdPersonal, IdNomina,
  IdCargo, IdDepartamento: Integer;
  SMGVDF: Real;
  Valores: TValores;
  NuevoTitulo: String;
  cdgcConcepto: TClientDataSet;
  myPrueba: TPrueba;
  TerminarProceso: Boolean;
  gcForma: TForm;
  dsAcumDetalle: TDataSource;

procedure CalcularDatosGeneralesEmpleado(DataSet: TClientDataSet;
  Valores: TValores; Panel_Progress: TPanel = Nil);

procedure CargarExcepcionesConceptosGenerales(IdPersonal: Integer; DataSet: TClientDataSet);

procedure CalcularConceptosNomina(DataSet: TClientDataSet;
  cdConceptoExtra: TClientDataSet; cdSumaConcepto: TClientDataSet;
  Var DataSetBuscar: TClientDataSet; Valores: TValores;
  var memPercepciones: TClientDataSet; var memDeducciones: TClientDataSet;
  var TotalPercepciones: Real; var TotalDeducciones: Real;
  const IdTipoTablaISPT: Integer; const Periodicidad: Word;
  Panel_Progress: TPanel = Nil);

procedure CalcularNominaEmpleado(DataSet, cdPersonalNomina, cdExcepciones,
  cdPersonal, cdConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones,
  memDeducciones: TClientDataSet; Panel_Progress: TPanel = Nil;
  EliminarConjuntos: Boolean = True;
  Ocultar: Boolean = True);

function Reemplazar(Cadena, Buscar, Cambiar: String): String;

procedure GenerarCalculoVirtual(FormaPadre: TForm;
                                Limite: Real;

                                IdOrganizacion: Integer;
                                FactorPrimaDominical,
                                FactorPrimaVacacional,
                                SalMinGenZona,
                                SeguroVidaINFONAVIT: Real;
                                DiasExcentoPrimaVacacional,
                                DiasExcentoAguinaldo: Integer;

                                IdTipoNomina,
                                DiasTrabajados,
                                DiasDescanso: Integer;

                                DiasFestivos: Integer;
                                Domingos: Integer;

                                InicioSemana: String;
                                IdTipoTablaISPT: Integer;
                                Periodicidad: Real;
                                Var NewSalario: Real;
                                Ocultar: Boolean = True);

procedure EliminarTodosConjuntos;
procedure ProcesarMensajes;

implementation

{ TValores }

Constructor TValores.Create;
begin
  ListaValor := TStringList.Create;
  ListaValor.Clear;
end;

Destructor TValores.Destroy;
begin
  ListaValor.Clear;
  ListaValor.Free;
end;

function TValores.Elemento(Nombre: string): TVarValores;
var
  Indice: Integer;
  Variable: String;
begin
  Indice := ListaValor.IndexOf(Nombre);
  if Indice >= 0 then
    Result := TVarValores(ListaValor.Objects[Indice])
  else
    Result := Nil;
end;

procedure TValores.SetValue(Nombre: String; Valor: Variant; Datos: String = '');
var
  Indice: Integer;
  Lista: TStringList;

function Formatea(Cadena: String): String;
var
  Cad: String;
  i: Integer;
begin
  Cad := '';
  for i := 1 to Length(Cadena) do
    if Cadena[i] = ' ' then
      Cad := Cad + '_'
    else
      Cad := Cad + Cadena[i];

  Result := Cad;
end;

begin
  if Pos('.', Nombre) < 1 then
    raise Exception.Create('Formato de llave de valor de nómina es incorrecto, la tabla "nom_concepto" está corrompida.');

  // Modificar el valor de la variable de memoria especificada
  Indice := ListaValor.IndexOf(Nombre);
  if Indice < 0 then
  begin
    ListaValor.AddObject(Nombre, TVarValores.Create);
    Indice := ListaValor.IndexOf(Nombre);

    cdDetalle.Append;
  end
  else
  begin
    if Not cdDetalle.Locate('IdPersonal', IdPersonal, []) then
      raise InteligentException.CreateByCode(12, [IdPersonal, 'Detalle de Nómina']);
    cdDetalle.Edit;
  end;

  TVarValores(ListaValor.Objects[Indice]).sClase := Copy(Nombre, 1, Pos('.', Nombre) -1);
  TVarValores(ListaValor.Objects[Indice]).sCodigo := Copy(Nombre, Pos('.', Nombre) +1, Length(Nombre));
  TVarValores(ListaValor.Objects[Indice]).vValor := Valor;
  if Datos <> '' then
  begin
    Try
      Lista := TStringList.Create;
      Lista.CommaText := Formatea(Datos);

      if Not Assigned(TVarValores(ListaValor.Objects[Indice]).Formato) then
        TVarValores(ListaValor.Objects[Indice]).Formato := TFormato.Create;

      TVarValores(ListaValor.Objects[Indice]).Formato.CodigoConcepto  := Lista[0];
      TVarValores(ListaValor.Objects[Indice]).Formato.Clave           := Lista[1];
      TVarValores(ListaValor.Objects[Indice]).Formato.Titulo          := Lista[2];
      TVarValores(ListaValor.Objects[Indice]).Formato.Nombre          := Lista[3];
      TVarValores(ListaValor.Objects[Indice]).Formato.Modo            := Lista[4];
      Try
        TVarValores(ListaValor.Objects[Indice]).Formato.IdGrupoConcepto := StrToInt(Lista[5]);
      Except
        TVarValores(ListaValor.Objects[Indice]).Formato.IdGrupoConcepto := -1;
      End;

      // Crear/Actualizar el registro
      if cdDetalle.State = dsInsert then
      begin
        cdDetalle.FieldByName('IdDetalleNomina').AsInteger := 0;
        cdDetalle.FieldByName('IdPersonal').AsInteger := IdPersonal;
        cdDetalle.FieldByName('IdNomina').AsInteger := IdNomina;
        cdDetalle.FieldByName('IdCargo').AsInteger := IdCargo;
        cdDetalle.FieldByName('IdDepartamento').AsInteger := IdDepartamento;
        cdDetalle.FieldByName('IdGrupoConcepto').AsInteger := TVarValores(ListaValor.Objects[Indice]).Formato.IdGrupoConcepto;
        cdDetalle.FieldByName('CodigoConcepto').AsString := Lista[0];
        cdDetalle.FieldByName('Clave').AsString := Lista[1];
        cdDetalle.FieldByName('Titulo').AsString := Lista[2];
        cdDetalle.FieldByName('Descripcion').AsString := Lista[3];
        cdDetalle.FieldByName('Imprime').AsString := Lista[6];
        if (Length(Lista[4]) > 7) and (CompareText(Copy(Lista[4], Length(Lista[4]) - 6, 7), '-PATRON') = 0) then
        begin
          cdDetalle.FieldByName('Modo').AsString := 'IMSS';
          cdDetalle.FieldByName('Cargo').AsString := 'PATRONAL';
        end
        else
        begin
          if (Length(Lista[4]) > 7) and (CompareText(Copy(Lista[4], Length(Lista[4]) - 6, 7), '-OBRERO') = 0) then
          begin
            cdDetalle.FieldByName('Modo').AsString := 'IMSS';
            cdDetalle.FieldByName('Cargo').AsString := 'OBRERO';
          end
          else
          begin
            cdDetalle.FieldByName('Modo').AsString := Lista[4];
            cdDetalle.FieldByName('Cargo').AsString := 'OBRERO';
          end;
        end;
      end;
    Finally
      Lista.Clear;
      Lista.Free;
    End;

    if Valor = Null then
      cdDetalle.FieldByName('Valor').AsString := ''
    else
      cdDetalle.FieldByName('Valor').AsString := String(Valor);

    cdDetalle.Post;
  end;
end;

function TValores.ResetValue(Nombre: String; Valor: Variant): Boolean;
var
  Indice: Integer;
begin
  Result := False;

  // Actualizar los valores si es que este registro ya existe
  if Pos('.', Nombre) < 1 then
    Nombre := 'EMPLEADO.' + Nombre;

  // Modificar el valor de la variable de memoria especificada
  Indice := ListaValor.IndexOf(Nombre);

  // Solo procesar los registros que ya existan
  if Indice >= 0 then
  begin
    Valor := TVarValores(ListaValor.Objects[Indice]).vValor + Valor;
    TVarValores(ListaValor.Objects[Indice]).vValor := Valor;

    Result := True;
  end;
end;

{ TVarValores }

function TVarValores.AsString: String;
begin
  if vValor = Null then
    Result := ''
  else
    Result := vValor;
end;

function TVarValores.AsInteger: Integer;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarValores.AsFloat: Extended;
begin
  Try
    if vValor = Null then
      Result := 0
    else
      Try
        Result := vValor;
      Except
        Result := 0;
      End;
  Except
    Result := 0;
  End;
end;

function TVarValores.AsDate: TDate;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := Trunc(vValor);
    Except
      Result := 0;
    End;
end;

function TVarValores.AsDateTime: TDateTime;
begin
  if vValor = Null then
    Result := 0
  else
    Try
      Result := vValor;
    Except
      Result := 0;
    End;
end;

function TVarValores.AsVariant: Variant;
begin
  Result := vValor;
end;

{ TListaCambios }

procedure TListaCambios.Add(ARegLog: RegLog);
begin
  FLista.Add(Encode(ARegLog.Campo, ARegLog.ValorAnt, ARegLog.ValorNuevo));
end;

procedure TListaCambios.clear;
begin
  FLista.Clear;
end;

procedure TListaCambios.Add(ACampo, AValorAnt, AValorNuevo: String);
begin
  FLista.Add(Encode(ACampo, AValorAnt, AValorNuevo));
end;

constructor TListaCambios.Create;
begin
  FLista := TStringList.Create;
end;

constructor TListaCambios.Create(AListaCambios: string);
begin
  self.Create;
  FLista.Delimiter := ',';
  FLista.DelimitedText := AListaCambios;
end;

function TListaCambios.DelimitedString: String;
begin
  FLista.Delimiter := ',';
  result := FLista.DelimitedText;
end;

destructor TListaCambios.Destroy;
begin
  FLista.Clear;
  FLista.Free;
end;

function TListaCambios.Encode(ACampo, AValorAnt, AValorNuevo: string): string;
begin
  result := format('%s(''%s''-''%s'')', [ACampo, AValorAnt, AValorNuevo]);
end;

function TListaCambios.GetCount: Integer;
begin
  result := FLista.Count;
end;

function TListaCambios.GetItem(Index: Integer): RegLog;
Var
  tRegLog: RegLog;
  tString: String;
  Pos1,Pos2, Long: Integer;
begin
  tString := FLista[Index];
  // Decodificar la cadena para obtener los valores correspondientes a cada campo
  Long := Length(tString);
  Pos1 := AnsiPos('(''', tString);
  tRegLog.Campo := AnsiLeftStr(tString, Pos1 - 1);
  Pos1 := Pos1 + 2;
  Pos2 := AnsiPos('''-''', tString);
  tRegLog.ValorAnt := AnsiMidStr(tString, Pos1, Pos2 - Pos1);
  Pos1 := Pos2 + 3;
  Pos2 := Long - 1;
  tRegLog.ValorNuevo := AnsiMidStr(tString, Pos1, Pos2 - Pos1);
  Result := tRegLog;
end;

procedure TListaCambios.SetItem(Index: Integer; pRegLog: RegLog);
begin
  if Index < FLista.Count then
    FLista[Index] := Encode(pRegLog.Campo, pRegLog.ValorAnt, pRegLog.ValorNuevo)
end;

procedure CalcularDatosGeneralesEmpleado(DataSet: TClientDataSet;
  Valores: TValores; Panel_Progress: TPanel = Nil);
var
  i: Integer;
  ProcedePanel: Boolean;
begin
  ProcedePanel := False;
  if Assigned(Panel_Progress) and (Panel_Progress.Visible) and (Panel_Progress.ControlCount > 0) then
  begin
    ProcedePanel := True;

    if Panel_Progress.Controls[0].ClassType = TJvLabel then
      TJvLabel(Panel_Progress.Controls[0]).Caption := 'Cargando datos de Nómina...';
  end;

  // Cargar los datos generales del Empleado
  //Try
    for i := 0 to DataSet.FieldDefs.Count -1 do
    begin
      ProcesarMensajes;

      if (ProcedePanel) and (Panel_Progress.Controls[1].ClassType = TJvLabel) then
        TJvLabel(Panel_Progress.Controls[1]).Caption := 'Tomando el Valor: ' + DataSet.FieldDefs.Items[i].Name;

      Valores.SetValue('EMPLEADO.' + DataSet.FieldDefs.Items[i].Name, DataSet.FieldByName(DataSet.FieldDefs.Items[i].Name).AsVariant, DataSet.FieldDefs.Items[i].Name + ',' + DataSet.FieldDefs.Items[i].Name + ',' + DataSet.FieldDefs.Items[i].Name + ',' + DataSet.FieldDefs.Items[i].Name + ',EMPLEADO,Nil,Si');

      if ProcedePanel then
      begin
        if (Panel_Progress.Controls[3].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[3]).Controls[0].ClassType = TProgressBar) then
          TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position := TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position +1;

        if (Panel_Progress.Controls[4].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[4]).Controls[0].ClassType = TProgressBar) then
          TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position := TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position +1;

        Panel_Progress.Repaint;
      end;
    end;
  {Except
    Raise;
  End;}
end;

procedure TPrueba.OnClickCancel(Sender: TObject);
begin
  TerminarProceso := True;
end;

procedure CalcularConceptosNomina(DataSet: TClientDataSet;
  cdConceptoExtra: TClientDataSet; cdSumaConcepto: TClientDataSet;
  Var DataSetBuscar: TClientDataSet; Valores: TValores;
  var memPercepciones: TClientDataSet; var memDeducciones: TClientDataSet;
  var TotalPercepciones: Real; var TotalDeducciones: Real;
  const IdTipoTablaISPT: Integer; const Periodicidad: Word;
  Panel_Progress: TPanel = Nil);

var
  ProcedePanel: Boolean;

function DescomponerValores(Analizar: String): Real;
var
  Cadena,
  Nombre,
  CampoValor: String;
  i: Integer;
  NewValor, Valor: Real;
  Signo: TSigno;
  NewDate: TDate;
  Cuenta: Integer;
  Componente: TComponent;
  Conjunto: TClientDataSet;
  Campo, sFecha: String;
  Anio, Mes, Dia: Word;
  Aplicar,
  IMSSPatron,
  IMSSEmpleado,
  LocNewValor,
  Descontado,
  Maximo: Real;
begin
  // Analizar la cadena
  Cadena := '';
  i := 0;
  Valor := 0;
  Campo := '';
  Signo := sgNil;
  if Analizar[1] = '-' then
    Analizar := Copy(Analizar, 2, Length(Analizar));
  while i < Length(Analizar) do
  begin
    Inc(i);

    if Analizar[i] = '{' then
    begin
      Cadena := TrimRight(TrimLeft(Cadena));
      if Cadena <> '' then
      begin
        case Cadena[1] of
          '+': Signo := sgSuma;
          '-': Signo := sgResta;
          '*': Signo := sgMult;
          '/': Signo := sgDiv;
          '=': Signo := sgEQ;
          '#': Signo := sgRango;
          '<': begin
                 if Length(Cadena) > 1 then
                 begin
                   if Cadena[2] = '=' then
                     Signo := sgME;
                   if Cadena[2] = '>' then
                     Signo := sgNE;
                 end
                 else
                   Signo := sgMT;
               end;
          '>': if Length(Cadena) > 1 then
               begin
                 if Cadena[2] = '=' then
                   Signo := sgGE
               end
               else
                 Signo := sgGT;
        end;
      end;

      Cadena := '';
    end;

    if Analizar[i] = '}' then
    begin
      // Verificar si se trata de un resultado o de una variable
      Try
        NewValor := StrToFloat(Cadena);
      Except
        NewValor := 0;

        // Verificar si es un campo de una tabla
        if (Copy(Cadena, 1, 9) = 'TABLAISPT') or (Copy(Cadena, 1, 8) = 'SUBSIDIO') or (Copy(Cadena, 1, 9) = 'TABLAIMSS') then
        begin
          // Buscar en la memoria si existe un objeto con dicho nombre
          Nombre := Copy(Cadena, 1, Pos('.', Cadena) -1);
          Campo := Copy(Cadena, Pos('.', Cadena) +1, Length(Cadena));

          //Componente := Screen.ActiveForm.FindComponent(Nombre);
          Componente := Application.MainForm.FindComponent(Nombre);
          //Componente := Self.FindComponent(Nombre);
          if Assigned(Componente) then
          begin
            Conjunto := TClientDataSet(Componente);

            if (Not Conjunto.Active) or ((Conjunto.Active) and (Conjunto.RecordCount = 0)) or ((Conjunto.Active) and (Conjunto.RecordCount > 0) and (Conjunto.FieldDefs.IndexOf('IdTipoTablaISPT') >= 0) and (Conjunto.FieldByName('IdTipoTablaISPT').AsInteger <> IdTipoTablaISPT)) then
              if Conjunto.Active then
                Conjunto.Refresh
              else
                Conjunto.Open;
          end
          else
          begin
            // Crear el conjunto de datos
            //Conjunto := TClientDataSet.Create(Screen.ActiveForm);
            Conjunto := TClientDataSet.Create(Application.MainForm);
            Conjunto.Name := Nombre;

            // Cerificar si es necesario crear el conjunto en el servidor
            if Not CrearConjunto(Conjunto, 'nom_' + LowerCase(nombre), ccCatalog) then
              raise InteligentException.CreateByCode(5, ['datos de la ' + Nombre]);

            Decodedate(DataSetBuscar.FieldByName('FechaTerminoNomina').AsDateTime, Anio, Mes, Dia);
            sFecha := IntToStr(Anio) + '-' + RightStr('0' + IntToStr(Mes), 2) + '-' + RightStr('0' + IntToStr(Dia), 2);

            if Copy(Cadena, 1, 9) = 'TABLAIMSS' then
            begin
              if Not CargarDatosFiltrados(Conjunto, 'FechaAplicacion', [sFecha]) then
                raise InteligentException.CreateByCode(6, ['datos de la ' + Nombre, 1, 'Fecha de Aplicación']);
            end
            else
              if Not CargarDatosFiltrados(Conjunto, 'IdTipoTablaISPT,FechaAplicacion', [IdTipoTablaISPT, sFecha]) then
                raise InteligentException.CreateByCode(6, ['datos de la ' + Nombre, IdTipoTablaISPT, 'Tipo de Tabla de ISPT']);

            Conjunto.Open;
          end;

          if (Assigned(Conjunto)) and (Not Conjunto.Active) then
            Conjunto.Open;
        end
        else
        begin
          // Verificar si es un campo especial
          if CompareText(Cadena, 'EMPLEADO.DOMINGOS') = 0 then
          begin
            // Contar el número de domingos que caen en este periodo
            NewDate := Trunc(Valores.Elemento('EMPLEADO.FechaInicio').AsDateTime);
            Cuenta := 0;
            while NewDate <= Trunc(Valores.Elemento('EMPLEADO.FechaTermino').AsDateTime) do
            begin
              if DayOfTheWeek(NewDate) = 7 then
                Inc(Cuenta);
              NewDate := IncDay(NewDate, 1);
            end;
            NewValor := Cuenta;
          end
          else
          begin
            Nombre := Copy(Cadena, 1, Pos('.', Cadena) -1);
            if CompareText(Nombre, 'EXTRA') = 0 then
            begin
              Campo := Copy(Cadena, Pos('.', Cadena) +1, Length(Cadena));

              // Localizar el concepto extra para este empleado
              Try
                cdConceptoExtra.Filtered := False;
                cdConceptoExtra.Filter := '(IdPersonal = ' + IntToStr(IdPersonal) + ') and (ClaveConcepto = ' + QuotedStr(Campo) + ')';
                cdConceptoExtra.Filtered := True;

                cdConceptoExtra.First;

                // Verificar el acumulado total para saber si se tiene que continuar descontando y cuanto es lo máximo
                Descontado := 0;
                if CompareText(cdConceptoExtra.FieldByName('Modo').AsString, 'DEDUCCION') = 0 then
                begin
                  cdSumaConcepto.Close;
                  CargarDatosFiltrados(cdSumaConcepto, 'IdConceptoExtra,IdPersonal,IdNomina', [cdConceptoExtra.FieldByName('IdConceptoExtra').AsInteger, IdPersonal, IdNomina]);
                  cdSumaConcepto.Open;
                  if cdSumaConcepto.RecordCount > 0 then
                  begin
                    Try
                      Descontado := StrToFloat(cdSumaConcepto.FieldByName('Importe').AsString);
                    Except
                      Descontado := 0;
                    End;

                    Try
                      Maximo := StrToFloat(cdSumaConcepto.FieldByName('Maximo').AsString);
                    Except
                      Maximo := 0;
                    End;

                    if Maximo = 0 then
                      Descontado := 0;
                  end;
                end;

                NewValor := 0;
                while Not cdConceptoExtra.Eof do
                begin
                  Try
                    Campo := Copy(cdConceptoExtra.FieldByName('AplicarSobre').AsString, 2, Length(cdConceptoExtra.FieldByName('AplicarSobre').AsString) -2);
                    if CompareText(cdConceptoExtra.FieldByName('Tipo').AsString, 'FIJO') = 0 then
                      LocNewValor := cdConceptoExtra.FieldByName('Cantidad').AsFloat;
                    if CompareText(cdConceptoExtra.FieldByName('Tipo').AsString, 'PORCENTAJE') = 0 then
                      LocNewValor := Valores.Elemento(Campo).AsFloat * (cdConceptoExtra.FieldByName('Cantidad').AsFloat / 100);
                  Except
                    LocNewValor := 0;
                  end;

                  NewValor := NewValor + LocNewValor;

                  cdConceptoExtra.Next;
                end;

                if (CompareText(cdConceptoExtra.FieldByName('Modo').AsString, 'DEDUCCION') = 0) and (Maximo > 0) then
                begin
                  // Verificar si el descuento total es mayor a la cantidad maxima
                  if Descontado + NewValor > Maximo then
                    NewValor := Maximo - Descontado;  // Ajustar la cantidad para cerrar el saldo
                end;

                if NewValor < 0 then
                  NewValor := 0;
              Finally
                cdConceptoExtra.Filtered := False;
              End;
            end
            else
            begin
              // Realizar la modificación para el ajuste en el cálculo del aguinaldo
//              if CompareText(Cadena, '{365} then

              NewValor := Valores.Elemento(Cadena).AsFloat;
            end;
          end;
        end;
      End;

      // Devolver el valor
      case Signo of
        sgNil: Valor := NewValor;
        sgSuma: Valor := Valor + NewValor;
        sgResta: Valor := Valor - NewValor;
        sgMult: Valor := Valor * NewValor;
        sgDiv: Valor := Valor / NewValor;
        sgMT: begin
                if Valor > NewValor then
                  Valor := 1
                else
                  Valor := -1;
              end;
        sgEQ: begin
                if Valor = NewValor then
                  Valor := 1
                else
                  Valor := -1;
              end;
        sgME: begin
                if Valor <= NewValor then
                  Valor := 1
                else
                  Valor := -1;
              end;
        sgGT: begin
                if Valor > NewValor then
                  Valor := 1
                else
                  Valor := -1;
              end;
        sgGE: begin
                if Valor >= NewValor then
                  Valor := 1
                else
                  Valor := -1;
              end;
        sgNE: begin
                if Valor <> NewValor then
                  Valor := 1
                else
                  Valor := -1;
              end;
        sgRango: begin
                   Conjunto.First;
                   while (not Conjunto.Eof) and (StrToFloat(Conjunto.FieldByName(Campo).AsString) <= Valor) do
                     Conjunto.Next;
                   if Not Conjunto.Eof then
                     Valor := Conjunto.FieldByName(DataSet.FieldByName('Clave').AsString).AsVariant;
                 end;
      end;

      if Cadena = 'TABLAIMSS.CalcularCuota' then
      begin
        {if (ProcedePanel) and (Not Assigned(Componente)) then
        begin
          if (Panel_Progress.Controls[3].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[3]).Controls[0].ClassType = TProgressBar) then
            TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Max := TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Max + Conjunto.RecordCount;

          if (Panel_Progress.Controls[4].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[4]).Controls[0].ClassType = TProgressBar) then
            TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Max := TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Max + Conjunto.RecordCount;

          Panel_Progress.Repaint;
        end;}

        Conjunto.First;
        IMSSPatron := 0.00;
        IMSSEmpleado := 0.00;
        while Not Conjunto.Eof do
        begin
          if ProcedePanel then
          begin
            if (Panel_Progress.Controls[3].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[3]).Controls[0].ClassType = TProgressBar) then
              TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position := TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position +1;

            if (Panel_Progress.Controls[4].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[4]).Controls[0].ClassType = TProgressBar) then
              TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position := TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position +1;

            Panel_Progress.Repaint;
          end;

          if Conjunto.FieldByName('ExentoSobre').AsString = 'NINGUNO' then
          begin
            if Conjunto.FieldByName('AplicarSobre').AsString = 'SMGVDF' then
              Aplicar := (Valores.Elemento('EMPLEADO.SMDF').AsFloat * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger));

            if Conjunto.FieldByName('AplicarSobre').AsString = 'SMGVZ' then
              Aplicar := (Valores.Elemento('EMPLEADO.SalMinGenZona').AsFloat * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger));

            if Conjunto.FieldByName('AplicarSobre').AsString = 'SBC' then
              Aplicar := (Valores.Elemento('EMPLEADO.SalarioIntegrado').AsFloat * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger));

            if Conjunto.FieldByName('AplicarSobre').AsString = 'DIFERENCIA' then
              Aplicar := 0;
          end;

          if Conjunto.FieldByName('ExentoSobre').AsString = 'SMGVDF' then
          begin
            if Conjunto.FieldByName('AplicarSobre').AsString = 'SMGVDF' then
              Aplicar := (Valores.Elemento('EMPLEADO.SMDF').AsFloat - (Valores.Elemento('EMPLEADO.SMDF').AsFloat * Conjunto.FieldByName('CuantoExento').AsInteger)) * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger);

            if Conjunto.FieldByName('AplicarSobre').AsString = 'SMGVZ' then
              Aplicar := (Valores.Elemento('EMPLEADO.SalMinGenZona').AsFloat - (Valores.Elemento('EMPLEADO.SMDF').AsFloat * Conjunto.FieldByName('CuantoExento').AsInteger)) * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger);

            if Conjunto.FieldByName('AplicarSobre').AsString = 'SBC' then
              Aplicar := (Valores.Elemento('EMPLEADO.SalarioIntegrado').AsFloat - (Valores.Elemento('EMPLEADO.SMDF').AsFloat * Conjunto.FieldByName('CuantoExento').AsInteger)) * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger);

            if Conjunto.FieldByName('AplicarSobre').AsString = 'DIFERENCIA' then
              Aplicar := 0;
          end;

          if Conjunto.FieldByName('ExentoSobre').AsString = 'SMGVZ' then
          begin
            if Conjunto.FieldByName('AplicarSobre').AsString = 'SMGVDF' then
              Aplicar := (Valores.Elemento('EMPLEADO.SMDF').AsFloat * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger)) - (Valores.Elemento('EMPLEADO.SalMinGenZona').AsFloat * Conjunto.FieldByName('CuantoExento').AsInteger);

            if Conjunto.FieldByName('AplicarSobre').AsString = 'SMGVZ' then
              Aplicar := (Valores.Elemento('EMPLEADO.SalMinGenZona').AsFloat * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger)) - (Valores.Elemento('EMPLEADO.SalMinGenZona').AsFloat * Conjunto.FieldByName('CuantoExento').AsInteger);

            if Conjunto.FieldByName('AplicarSobre').AsString = 'SBC' then
              Aplicar := (Valores.Elemento('EMPLEADO.SalarioIntegrado').AsFloat * (Valores.Elemento('EMPLEADO.DIASTIMSS').AsInteger - Valores.Elemento('EMPLEADO.Inasistencias').AsInteger)) - (Valores.Elemento('EMPLEADO.SalMinGenZona').AsFloat * Conjunto.FieldByName('CuantoExento').AsInteger);

            if Conjunto.FieldByName('AplicarSobre').AsString = 'DIFERENCIA' then
              Aplicar := 0;
          end;

          if Aplicar < 0 then
            Aplicar := 0;

          Valores.SetValue('NOMINA.' + Conjunto.FieldByName('CodigoFactor').AsString + '-Patron', Round((Aplicar * (StrToFloat(Conjunto.FieldByName('Patron').AsString) / 100)) * 100) / 100, Conjunto.FieldByName('CodigoFactor').AsString + ',' + Conjunto.FieldByName('CodigoFactor').AsString + ',' + Conjunto.FieldByName('Nombre').AsString + ',' + Conjunto.FieldByName('Nombre').AsString + ',IMSS-PATRON,' + Conjunto.FieldByName('IdGrupoConcepto').AsString + ',Si');
          Valores.SetValue('NOMINA.' + Conjunto.FieldByName('CodigoFactor').AsString + '-Obrero', Round((Aplicar * (StrToFloat(Conjunto.FieldByName('Empleado').AsString) / 100)) * 100) / 100, Conjunto.FieldByName('CodigoFactor').AsString + ',' + Conjunto.FieldByName('IdGrupoConcepto').AsString + ',' + Conjunto.FieldByName('Nombre').AsString + ',' + Conjunto.FieldByName('Nombre').AsString + ',IMSS-OBRERO,' + Conjunto.FieldByName('IdGrupoConcepto').AsString + ',Si');

          IMSSPatron := IMSSPatron + Valores.Elemento('NOMINA.' + Conjunto.FieldByName('Codigofactor').AsString + '-Patron').AsFloat;       //Round((Aplicar * (StrToFloat(Conjunto.FieldByName('Patron').AsString) / 100)) * 100) / 100;
          IMSSEmpleado := IMSSEmpleado + Valores.Elemento('NOMINA.' + Conjunto.FieldByName('Codigofactor').AsString + '-Obrero').AsFloat;   //Round((Aplicar * (StrToFloat(Conjunto.FieldByName('Empleado').AsString) / 100)) * 100) / 100;

          Conjunto.Next;
        end;

        Valores.SetValue('NOMINA.CUOTAIMSS-Patron', IMSSPatron, 'CUOTAIMSS-Patron,Nil,CUOTAIMSS-Patron,CUOTAIMSS-Patron,CUOTAIMSS-Patron,-1,Si');
        Valores.SetValue('NOMINA.CUOTAIMSS-Obrero', IMSSEmpleado, 'CUOTAIMSS-Obrero,Nil,CUOTAIMSS-Obrero,CUOTAIMSS-Obrero,CUOTAIMSS-Obrero,-1,Si');
      end;

      Campo := Cadena;

      Cadena := '';
    end;

    if (Analizar[i] <> '{') and (Analizar[i] <> '}') then
      Cadena := Cadena + Analizar[i];
  end;

  Result := Valor;
end;

function AnalizaFormula(CadenaFormula: String): Real;
var
  i, iSub, Bi, APar, Ai, Par, CtaComa: Integer;
  Cadena, Analizar, Sub, Opcion: String;
  Resultado: Real;
  Multiplo: Int64;
  Truncar: Boolean;
  IdPersonal: Integer;
  ClaveConcepto: String;
  FechaInicio,
  FechaTermino: TDate;
begin
  // Verificar si se tienen datos de decimales
  Truncar := False;
  if (Pos(',', CadenaFormula) > 0) and (CadenaFormula[1] = '(') and (CadenaFormula[Length(CadenaFormula)] = ')') then
  begin
    CadenaFormula := Copy(CadenaFormula, 2, Length(CadenaFormula) -2);
    Sub := Copy(CadenaFormula, Pos(',', CadenaFormula) +1, Length(CadenaFormula));
    CadenaFormula := Copy(CadenaFormula, 1, Pos(',', CadenaFormula) -1);
    Try
      iSub := StrToInt(Sub);
      Truncar := iSub < 0;
      if Truncar then
        iSub := Abs(iSub);

      if iSub > 16 then
        iSub := 16;
    Except
      iSub := 2;
    End;

    Multiplo := 1;
    for i := 1 to iSub do
      Multiplo := Multiplo * 10;
  end
  else
    Multiplo := 100;

  CadenaFormula := '(' + CadenaFormula + ')';

  // Verificar los conjuntos de parentesis
  Par := 0;
  for i := 1 to Length(CadenaFormula) do
    case CadenaFormula[i] of
      '(': Inc(Par);
      ')': Dec(Par);
    end;

  if Par = 0 then
  begin
    // Localizar el parentesis más interno
    Cadena := CadenaFormula;

    Repeat
      i := 0;
      Par := 0;
      APar := 0;
      Bi := 0;
      while i < Length(Cadena) do
      begin
        Inc(i);

        if Cadena[i] = '(' then
        begin
          Inc(Par);
          if Par > APar then
            Bi := i;
        end;

        if Cadena[i] = ')' then
        begin
          // Si se cierra un parentesis se deberá guardar el número máximo al cual se llegó siempre y cuando sea superior al último localizado
          if Par > APar then
          begin
            APar := Par;
            Ai := i;
          end;

          Dec(Par);
        end;
      end;

      // Verificar si el parentesis corresponde a una condición
      if (bi > 3) and ((CompareText(Copy(Cadena, bi - 2, 2), 'SI') = 0)) and (Pos(',', Cadena) > 0) then
      begin
        // Realizar la condición para seleccionar la cadena que se va a procesar
        Opcion := Copy(Cadena, bi + 1, ai - bi - 1);
        Opcion := Copy(Opcion, 1, Pos(',', Opcion) - 1);
        Resultado := DescomponerValores(Opcion);
        if Resultado > 0 then
        begin
          // Obtener la formular para el caso de TRUE
          Analizar := Copy(Cadena, bi +1, ai - bi - 1);
          Analizar := Copy(Analizar, Pos(',', Analizar) +1, Length(Analizar));
          Analizar := Copy(Analizar, 1, Pos(',', Analizar) -1);
        end
        else
        begin
          // Obtener la formula para el caso de FALSE
          Analizar := Copy(Cadena, bi +1, ai - bi - 1);
          Analizar := Copy(Analizar, Pos(',', Analizar) +1, Length(Analizar));
          Analizar := Copy(Analizar, Pos(',', Analizar) +1, Length(Analizar));
        end;
      end
      else
        // Verificar si el parentesis corresponde a un acumulado del detalle
        if (bi > 12) and ((CompareText(Copy(Cadena, bi - 11, 11), 'ACUMDETALLE') = 0)) and (Pos(',', Cadena) > 0) then
        begin
          // Contar el número de comas en la cadena
          CtaComa := 0;
          for i := 1 to Length(Cadena) do
            if Cadena[i] = ',' then
              Inc(CtaComa);

          if CtaComa = 3 then
          begin
            // Verificar si ya existe el dataset para las totalizaciones
            if Not Assigned(dsAcumDetalle.DataSet) then
            begin
              dsAcumDetalle.DataSet := TClientDataSet.Create(Application.MainForm);
              CrearConjunto(TClientDataSet(dsAcumDetalle.DataSet), 'nom_nomina_totaliza', ccSelect);
            end;

            // Descomponer la cadena para obtener los parametros para el dataset
            Cadena := Copy(Cadena, 13, Length(Cadena));
            Cadena := Copy(Cadena, 1, Length(Cadena) -1);
            while Cadena[1] = '(' do
              Cadena := Copy(Cadena, 2, Length(Cadena) -2);

            // Obtener el Id del empleado que se va a acumular
            Sub := TrimLeft(TrimRight(Copy(Cadena, 1, Pos(',', Cadena) -1)));
            while Sub[1] = '{' do
              Sub := Copy(Sub, 2, Length(Sub) -2);

            Cadena := TrimLeft(TrimRight(Copy(Cadena, Pos(',', Cadena) +1, Length(Cadena))));
            while Cadena[1] = '(' do
              Cadena := Copy(Cadena, 2, Length(Cadena) -2);

            IdPersonal := Valores.Elemento(Sub).AsInteger;

            // Obtener el rubro que se va a acumular
            Sub := TrimLeft(TrimRight(Copy(Cadena, 1, Pos(',', Cadena) -1)));
            while Sub[1] = '{' do
              Sub := Copy(Sub, 2, Length(Sub) -2);

            Cadena := TrimLeft(TrimRight(Copy(Cadena, Pos(',', Cadena) +1, Length(Cadena))));
            while Cadena[1] = '(' do
              Cadena := Copy(Cadena, 2, Length(Cadena) -2);

            ClaveConcepto := Copy(Sub, Pos('.', Sub) +1, Length(Sub));

            // Obtener fecha de inicio
            Sub := TrimLeft(TrimRight(Copy(Cadena, 1, Pos(',', Cadena) -1)));
            while Sub[1] = '{' do
              Sub := Copy(Sub, 2, Length(Sub) -2);

            Cadena := TrimLeft(TrimRight(Copy(Cadena, Pos(',', Cadena) +1, Length(Cadena))));
            while Cadena[1] = '(' do
              Cadena := Copy(Cadena, 2, Length(Cadena) -2);

            FechaInicio := Valores.Elemento(Sub).AsDate;

            // Obtener fecha de termino
            while Cadena[1] = '{' do
              Cadena := Copy(Cadena, 2, Length(Cadena) -2);

            Cadena := TrimLeft(TrimRight(Copy(Cadena, Pos(',', Cadena) +1, Length(Cadena))));
            while Cadena[1] = '(' do
              Cadena := Copy(Cadena, 2, Length(Cadena) -2);

            FechaTermino := Valores.Elemento(Cadena).AsDate;

            // Obtener los valores acumulados
            CargarDatosFiltrados(TClientDataSet(dsAcumDetalle.DataSet), 'IdPersonal,Clave,FechaInicio,FechaTermino', [IdPersonal, ClaveConcepto, ClientModule1.DateToStrSQL(FechaInicio), ClientModule1.DatetoStrSql(FechaTermino)]);
            if dsAcumDetalle.DataSet.Active then
              dsAcumDetalle.DataSet.Refresh
            else
              dsAcumDetalle.DataSet.Open;

            Bi :=1;
            Cadena := '{' + dsAcumDetalle.DataSet.FieldByName('Importe').AsString + '}';
            Analizar := Cadena;
          end;
        end
        else
          Analizar := Copy(Cadena, bi + 1, ai - bi - 1);

      if Analizar <> '' then
      begin
        // Descomponer los valores de esta parte
        Resultado := DescomponerValores(Analizar);
        if (Resultado < 0) and (Cadena[1] <> '-') and (Cadena[2] <> '-') then
          Resultado := 0;
      end
      else
        Resultado := 0;

        if Cadena[1] = '(' then
          Cadena := Copy(Cadena, 1, Bi - 1) + '{' + FloatToStr(Resultado) + '}' + Copy(Cadena, Ai + 1, Length(Cadena))
        else
          Cadena := Copy(Cadena, 1, Bi - 1) + '{' + FloatToStr(Trunc(Resultado * Multiplo) / Multiplo) + '}' + Copy(Cadena, Ai + 1, Length(Cadena));
    Until Cadena[1] <> '(';

    // Ajustar el redondeo tipo Excel
    if Resultado <> Trunc(Resultado) then
    begin
      if Resultado > 0 then
      begin
        if Truncar then
          Result := Trunc(Resultado * Multiplo) / Multiplo
        else
          Result := Round(Resultado * Multiplo) / Multiplo
        //Result := Round((Resultado + (1 / (Multiplo * 10))) * Multiplo) / Multiplo
      end
      else
        if Resultado < 0 then
          if Truncar then
            Result := Trunc(Resultado * Multiplo) / Multiplo
          else
            Result := Round(Resultado * Multiplo) / Multiplo;
          //Result := Round((Resultado + (-1 / (Multiplo * 10))) * Multiplo) / Multiplo;
    end
    else
      Result := Resultado;
  end
  else
    Result := -1; // Indicar que no coinsiden los parentesis
end;

begin
  DataSet.First;
  memPercepciones.EmptyDataSet;
  memDeducciones.EmptyDataSet;

  ProcedePanel := False;
  if Assigned(Panel_Progress) and (Panel_Progress.Visible) and (Panel_Progress.ControlCount > 0) then
  begin
    ProcedePanel := True;
    TJvLabel(Panel_Progress.Controls[0]).Caption := 'Calculando valores de Nómina';
  end;

  // Localizar los registros de los conceptos extra
  if cdConceptoExtra.ProviderName <> '' then
  begin
    cdConceptoExtra.Close;
    CargarDatosFiltrados(cdConceptoExtra, 'IdPersonal,IdNomina', [IdPersonal, IdNomina]);
    cdConceptoExtra.Open;
  end;

  TotalPercepciones := 0;
  TotalDeducciones := 0;

  Try
  while not DataSet.Eof do
  begin
    ProcesarMensajes;

    if (ProcedePanel) and (Panel_Progress.Controls[1].ClassType = TJvLabel) then
      TJvLabel(Panel_Progress.Controls[1]).Caption := '(' + DataSet.FieldByName('Clave').AsString + ')  - ' + DataSet.FieldByName('Titulo').AsString;

    if (ProcedePanel) and (Panel_Progress.Controls[2].ClassType = TJvLabel) then
      TJvLabel(Panel_Progress.Controls[2]).Caption := DataSet.FieldByName('Nombre').AsString;

    Valores.SetValue('NOMINA.' + DataSet.FieldByName('Clave').AsString, AnalizaFormula(DataSet.FieldByName('Cadena').AsString), DataSet.FieldByName('CodigoConcepto').AsString + ',' + DataSet.FieldByName('Clave').AsString + ',' + DataSet.FieldByName('Titulo').AsString + ',' + DataSet.FieldByName('Nombre').AsString + ',' + DataSet.FieldByName('Modo').AsString + ',' + DataSet.FieldByName('IdGrupoConcepto').AsString + ',' + DataSet.FieldByName('Imprime').AsString);

    if (DataSet.FieldByName('Modo').AsString = 'PERCEPCION') or (DataSet.FieldByName('Modo').AsString = 'PER-MEMORIA') then
    begin
      if (DataSet.FieldByName('Imprime').AsString = 'Si') or ((DataSet.FieldByName('Imprime').AsString = 'Datos') and (Valores.Elemento('NOMINA.' + DataSet.FieldByName('Clave').AsString).AsFloat <> 0)) then
      begin
        memPercepciones.Append;
        memPercepciones.FieldByName('IdPersonal').AsInteger := IdPersonal;
        memPercepciones.FieldByName('CodigoConcepto').AsString := DataSet.FieldByName('CodigoConcepto').AsString;
        memPercepciones.FieldByName('Titulo').AsString := DataSet.FieldByName('Titulo').AsString;
        memPercepciones.FieldByName('Nombre').AsString := DataSet.FieldByName('Nombre').AsString;
        memPercepciones.FieldByName('Modo').AsString := DataSet.FieldByName('Modo').AsString;
        memPercepciones.FieldByName('Importe').AsString := Valores.Elemento('NOMINA.' + DataSet.FieldByName('Clave').AsString).AsString;
        memPercepciones.Post;
      end;

      if (DataSet.FieldByName('Modo').AsString = 'PERCEPCION') then
        TotalPercepciones := TotalPercepciones + Valores.Elemento('NOMINA.' + DataSet.FieldByName('Clave').AsString).AsFloat;
    end;

    if (DataSet.FieldByName('Modo').AsString = 'DEDUCCION') or (DataSet.FieldByName('Modo').AsString = 'DED-MEMORIA') then
    begin
      if DataSet.FieldByName('Imprime').AsString = 'Si' then
      begin
        memDeducciones.Append;
        memDeducciones.FieldByName('IdPersonal').AsInteger := IdPersonal;
        memDeducciones.FieldByName('CodigoConcepto').AsString := DataSet.FieldByName('CodigoConcepto').AsString;
        memDeducciones.FieldByName('Titulo').AsString := DataSet.FieldByName('Titulo').AsString;
        memDeducciones.FieldByName('Nombre').AsString := DataSet.FieldByName('Nombre').AsString;
        memDeducciones.FieldByName('Modo').AsString := DataSet.FieldByName('Modo').AsString;
        memDeducciones.FieldByName('Importe').AsString := Valores.Elemento('NOMINA.' + DataSet.FieldByName('Clave').AsString).AsString;
        memDeducciones.Post;
      end;

      if (DataSet.FieldByName('Modo').AsString = 'DEDUCCION') then
        TotalDeducciones := TotalDeducciones + Valores.Elemento('NOMINA.' + DataSet.FieldByName('Clave').AsString).AsFloat;
    end;

    DataSet.Next;

    if ProcedePanel then
    begin
      if (Panel_Progress.Controls[3].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[3]).Controls[0].ClassType = TProgressBar) then
        TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position := TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position +1;

      if (Panel_Progress.Controls[4].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[4]).Controls[0].ClassType = TProgressBar) then
        TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position := TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position +1;

      Panel_Progress.Repaint;
    end;
  end;
  Except
    raise;
  end;

  // Registrar los totales de las percepciones y deducciones
  Valores.SetValue('NOMINA.TOTPER', TotalPercepciones, 'TOTPER,TOTPER,TOTAL PERCEPCIONES,TOTAL DE PERCEPCIONES,PER-MEMORIA,,No');
  memPercepciones.Append;
  memPercepciones.FieldByName('IdPersonal').AsInteger := IdPersonal;
  memPercepciones.FieldByName('CodigoConcepto').AsString := 'TOTPER';
  memPercepciones.FieldByName('Titulo').AsString := 'TOTAL PERCEPCIONES';
  memPercepciones.FieldByName('Nombre').AsString := 'TOTAL DE PERCEPCIONES';
  memPercepciones.FieldByName('Modo').AsString := 'PER-MEMORIA';
  memPercepciones.FieldByName('Importe').AsString := FloatToStr(TotalPercepciones);
  memPercepciones.Post;

  Valores.SetValue('NOMINA.TOTDED', TotalDeducciones, 'TOTDED,TOTDED,TOTAL DEDUCCIONES,TOTAL DE DEDUCCIONES,DED-MEMORIA,,No');
  memDeducciones.Append;
  memDeducciones.FieldByName('IdPersonal').AsInteger := IdPersonal;
  memDeducciones.FieldByName('CodigoConcepto').AsString := 'TOTPER';
  memDeducciones.FieldByName('Titulo').AsString := 'TOTAL PERCEPCIONES';
  memDeducciones.FieldByName('Nombre').AsString := 'TOTAL DE PERCEPCIONES';
  memDeducciones.FieldByName('Modo').AsString := 'DED-MEMORIA';
  memDeducciones.FieldByName('Importe').AsString := FloatToStr(TotalPercepciones);
  memDeducciones.Post;

  Valores.SetValue('NOMINA.NETO', TotalPercepciones - TotalDeducciones, 'NETO,NETO,NETO,NETO,MEMORIA,,No');
  memDeducciones.Append;
  memDeducciones.FieldByName('IdPersonal').AsInteger := IdPersonal;
  memDeducciones.FieldByName('CodigoConcepto').AsString := 'NETO';
  memDeducciones.FieldByName('Titulo').AsString := 'NETO';
  memDeducciones.FieldByName('Nombre').AsString := 'NETO';
  memDeducciones.FieldByName('Modo').AsString := 'MEMORIA';
  memDeducciones.FieldByName('Importe').AsString := FloatToStr(TotalPercepciones - TotalDeducciones);
  memDeducciones.Post;
end;

procedure CalcularNominaEmpleado(DataSet, cdPersonalNomina, cdExcepciones,
  cdPersonal, cdConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones,
  memDeducciones: TClientDataSet; Panel_Progress: TPanel = Nil;
  EliminarConjuntos: Boolean = True;
  Ocultar: Boolean = True);
var
  Cursor: TCursor;
  GenLabel: TLabel;
  i: Integer;
  Lista: TStringList;
  Acceso: TClientDataSet;
  TotalPercepciones,
  TotalDeducciones, Valor: Real;
  Fecha, FechaTermino: TDate;
  Anio, Semanas, Mes, TerminoSemana: Word;
  NumDias: TStringList;
  PadreOriginal: TWinControl;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crAppStart;

    cdDetalle.Open;
    cdDetalle.EmptyDataSet;

    // Crear la lista de los conceptos de nómina
    Valores := TValores.Create;

  Finally
    Screen.Cursor := Cursor;
  End;

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
      end;
    End;
  end;

  // Determinar las variables de cálculo
  Valor := DaysInMonth(MonthOf(DataSet.FieldByName('FechaNomina').AsDateTime));
  Valores.SetValue('EMPLEADO.DiasMesInicio', Valor, 'DiasMesInicio,DiasMesInicio,Número_de_dias_del_mes_al_inicio_de_Nómina,Número de días en el mes de Inicio de la Nómina,MEMORIA,Nil,No');

  Valor := DaysInMonth(MonthOf(DataSet.FieldByName('FechaTerminoNomina').AsDateTime));
  Valores.SetValue('EMPLEADO.DiasMesTermino', Valor, 'DiasMesTermino,DiasMesTermino,Número_de_dias_del_mes_al_termino_de_Nómina,Número de días en el mes de Término de la Nómina,MEMORIA,Nil,No');

  Valor := DaysInMonth(MonthOf(IncMonth(DataSet.FieldByName('FechaNomina').AsDateTime, -1)));
  Valores.SetValue('EMPLEADO.DiasMesAntes', Valor, 'DiasMesAntes,DiasMesAntes,DiasMesAntes,Número de días en el mes anterior al Inicio de la Nómina,MEMORIA,Nil,No');

  Valor := DaysInMonth(MonthOf(IncMonth(DataSet.FieldByName('FechaTerminoNomina').AsDateTime, 1)));
  Valores.SetValue('EMPLEADO.DiasMesDespues', Valor, 'DiasMesDespues,DiasMesDespues,DiasMesDespues,Número de días en el mes posterior al Inicio de la Nómina,MEMORIA,Nil,No');

  // Contar los días en el bimestre de Inicio de Nómina
  Valor := DaysInMonth(MonthOf(DataSet.FieldByName('FechaNomina').AsDateTime));
  Valor := Valor + DaysInMonth(MonthOf(IncMonth(DataSet.FieldByName('FechaNomina').AsDateTime)));
  Valores.SetValue('EMPLEADO.NumeroDiasBimestreInicio', Valor, 'NumeroDiasBimestreInicio,NumeroDiasBimestreInicio,NumeroDiasBimestreInicio,Número de días en el bimestre de inicio de la Nómina,MEMORIA,Nil,No');

  // Contar los días en el bimestre de Término de Nómina
  Valor := DaysInMonth(MonthOf(DataSet.FieldByName('FechaTerminoNomina').AsDateTime));
  Valor := Valor + DaysInMonth(MonthOf(IncMonth(DataSet.FieldByName('FechaTerminoNomina').AsDateTime)));
  Valores.SetValue('EMPLEADO.NumeroDiasBimestreTermino', Valor, 'NumeroDiasBimestreTermino,NumeroDiasBimestreTermino,NumeroDiasBimestreTermino,Número de días en el bimestre de Termino de la Nómina,MEMORIA,Nil,No');

  Try
    NumDias := TStringList.Create;
    NumDias.Clear;
    NumDias.CommaText := 'DOMINGO,LUNES,MARTES,MIERCOLES,JUEVES,VIERNES,SABADO';

    Fecha := EncodeDate(YearOf(DataSet.FieldByName('FechaNomina').AsDateTime), MonthOf(DataSet.FieldByName('FechaNomina').AsDateTime), 1);
    Semanas := 0;
    Mes := MonthOf(Fecha);
    TerminoSemana := NumDias.IndexOf(DataSet.FieldByName('InicioSemana').AsString);
    if TerminoSemana < 1 then
      TerminoSemana := 7;

    while MonthOf(Fecha) = Mes do
    begin
      if DayOfWeek(Fecha) = TerminoSemana then
        Inc(Semanas);

      Fecha := IncDay(Fecha);
    end;

    Valor := Semanas;
    Valores.SetValue('EMPLEADO.NumeroSemanasInicio', Valor, 'NumeroSemanasInicio,NumeroSemanasInicio,NumeroSemanasInicio,Número de semanas en el mes de Inicio de la Nómina,MEMORIA,Nil,No');

    FechaTermino := EncodeDate(YearOf(DataSet.FieldByName('FechaTerminoNomina').AsDateTime), MonthOf(DataSet.FieldByName('FechaTerminoNomina').AsDateTime), 1);
    if MonthOf(FechaTermino) <> Mes then
    begin
      Mes := MonthOf(FechaTermino);
      Semanas := 0;
      while MonthOf(FechaTermino) = Mes do
      begin
        if DayOfWeek(FechaTermino) = TerminoSemana then
          Inc(Semanas);

        FechaTermino := IncDay(FechaTermino);
      end;
    end;

    Valor := Semanas;
    Valores.SetValue('EMPLEADO.NumeroSemanasTermino', Valor, 'NumeroSemanasTermino,NumeroSemanasTermino,NumeroSemanasTermino,Número de semanas en el mes de Termino de la Nómina,MEMORIA,Nil,No');

    // Contar las semanas en el bimestre de inicio de Nómina
    Fecha := EncodeDate(YearOf(DataSet.FieldByName('FechaNomina').AsDateTime), MonthOf(DataSet.FieldByName('FechaNomina').AsDateTime), 1);
    if MonthOf(Fecha) Mod 2 = 0 then
      Fecha := IncMonth(Fecha, -1);

    FechaTermino := IncDay(IncMonth(Fecha,2), -1);
    Semanas := 0;

    while Fecha <= FechaTermino do
    begin
      if DayOfWeek(Fecha) = TerminoSemana then
        Inc(Semanas);

      Fecha := IncDay(Fecha);
    end;

    Valor := Semanas;
    Valores.SetValue('EMPLEADO.NumeroSemanasBimestreInicio', Valor, 'NumeroSemanasBimestreInicio,NumeroSemanasBimestreInicio,NumeroSemanasBimestreInicio,Número de semanas en el bimestre de inicio de la Nómina,MEMORIA,Nil,No');

    // Contar las semanas en el bimestre de término de Nómina
    Fecha := EncodeDate(YearOf(DataSet.FieldByName('FechaTerminoNomina').AsDateTime), MonthOf(DataSet.FieldByName('FechaTerminoNomina').AsDateTime), 1);
    if MonthOf(Fecha) Mod 2 = 0 then
      Fecha := IncMonth(Fecha, -1);

    FechaTermino := IncDay(IncMonth(Fecha,2), -1);
    Semanas := 0;

    while Fecha <= FechaTermino do
    begin
      if DayOfWeek(Fecha) = TerminoSemana then
        Inc(Semanas);

      Fecha := IncDay(Fecha);
    end;

    Valor := Semanas;
    Valores.SetValue('EMPLEADO.NumeroSemanasBimestreTermino', Valor, 'NumeroSemanasBimestreTermino,NumeroSemanasBimestreTermino,NumeroSemanasBimestreTermino,Número de semanas en el bimestre de término de la Nómina,MEMORIA,Nil,No');
  Finally
    NumDias.Clear;
    NumDias.Free;
  End;

  TotalPercepciones := 0;
  TotalDeducciones := 0;

  if cdDetalleSave.ProviderName <> '' then
  begin
    if Not CargarDatosFiltrados(cdDetalleSave, 'IdPersonal,IdNomina', [-9, -9]) then
      raise InteligentException.CreateByCode(28, ['No se pudo leer la estructura de la tabla del detalle de Nómina']);
    if cdDetalleSave.Active then
      cdDetalleSave.Refresh
    else
      cdDetalleSave.Open;
  end;

  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;
    Try
      if (Not Assigned(gcForma)) and (Assigned(Panel_Progress)) then
      begin
        gcForma := TForm.Create(Screen.ActiveForm);
        gcForma.Height := 133 + GetSystemMetrics(SM_CYCaption) + 6;
        gcForma.Width := 632 + 6;
        gcForma.Position := poOwnerFormCenter;
      end;

      if (Assigned(gcForma)) and (Assigned(Panel_Progress)) then
      begin
        PadreOriginal := Panel_Progress.Parent;
        Panel_Progress.Parent := gcForma;
        Panel_Progress.Align := alClient;
        Panel_Progress.Visible := True;
      end;


      {if (Not Ocultar) and (Assigned(gcForma)) and (Assigned(Panel_Progress)) then
      begin
        if (Panel_Progress.Controls[3].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[3]).Controls[0].ClassType = TProgressBar) then
          TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position := 0;

        if (Panel_Progress.Controls[4].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[4]).Controls[0].ClassType = TProgressBar) then
          TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position := 0;
      end;}


      if Assigned(Panel_Progress) and (Panel_Progress.Visible) and (Panel_Progress.ControlCount > 0) then
      begin
        if (Panel_Progress.Controls[3].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[3]).Controls[0].ClassType = TProgressBar) then
        begin
          TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position := 0;
          TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Max := cdPersonalNomina.FieldDefs.Count + cdConcepto.RecordCount;
        end;

        if (Panel_Progress.Controls[4].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[4]).Controls[0].ClassType = TProgressBar) then
        begin
          TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Position := 0;
          TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Max := TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Max * cdPersonalNomina.RecordCount;
        end;

        if Panel_Progress.Controls[0].ClassType = TJvLabel then
          TJvLabel(Panel_Progress.Controls[0]).Caption := 'Iniciando Cálculo de Nómina...';

        if Panel_Progress.Controls[1].ClassType = TJvLabel then
          TJvLabel(Panel_Progress.Controls[1]).Caption := '';

        if Panel_Progress.Controls[2].ClassType = TJvLabel then
          TJvLabel(Panel_Progress.Controls[2]).Caption := '';

        Panel_Progress.Repaint;
        TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Repaint;
      end;

      if Assigned(gcForma) then
      begin
        gcForma.Show;
      end;

      cdPersonalNomina.First;
      while Not cdPersonalNomina.Eof do
      begin
        ProcesarMensajes;

        if Assigned(Panel_Progress) and (Panel_Progress.Visible) and (Panel_Progress.ControlCount > 0) and (Panel_Progress.Controls[3].ClassType = TPanel) and (TPanel(Panel_Progress.Controls[3]).Controls[0].ClassType = TProgressBar) then
          TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Position := 0;

        if NuevoTitulo = '' then
          gcForma.Caption := IntToStr(cdPersonalNomina.RecNo) + '/' + IntToStr(cdPersonalNomina.RecordCount) + ' : ' + cdPersonalNomina.FieldByName('CodigoPersonal').AsString + ' - ' + cdPersonalNomina.FieldByName('NombreCompleto').AsString
        else
          gcForma.Caption := NuevoTitulo;

        if cdPersonalNomina.FieldByName('IdFormaPago').IsNull then
        begin
          Valores.ListaValor.Clear;
          cdDetalle.EmptyDataSet;

          Valores.SetValue('EMPLEADO.SMDF', SMGVDF, 'SMGVDF,SMGVDF,Salario_Minimo_D.F.,SALARIO MINIMO GENERAL VIGENTE DEL D.F.,MEMORIA,Nil,No');    // Guardar en la memoria el valor del salario mínimo general vigente para el D.F.

          IdPersonal := cdPersonalNomina.FieldByName('IdPersonal').AsInteger;
          IdNomina := DataSet.FieldByName('IdNomina').AsInteger;
          IdCargo := cdPersonalNomina.FieldByname('IdCargo').AsInteger;
          IdDepartamento := cdPersonalNomina.FieldByname('IdDepartamento').AsInteger;

          // Cargar los datos generales del Empleado
          CalcularDatosGeneralesEmpleado(cdPersonalNomina, Valores, Panel_Progress);

          // Verificar si se deben cargar las excepciones a los conceptos generales
          if Assigned(cdExcepciones) then
            CargarExcepcionesConceptosGenerales(IdPersonal, cdExcepciones);

          // Calcular los conceptos de Nómina
          CalcularConceptosNomina(cdConcepto, cdConceptoExtra, cdSumaConcepto, DataSet, Valores, memPercepciones, memDeducciones, TotalPercepciones, TotalDeducciones, DataSet.FieldByName('IdTipoTablaISPT').AsInteger, DataSet.FieldByName('Periodicidad').AsInteger, Panel_Progress); // Calcular todos los conceptos de nómina

          if cdDetalleSave.ProviderName <> '' then
            gcForma.Caption := gcForma.Caption + '  [Grabando...]';

          TotalDeducciones := TotalDeducciones + Valores.Elemento('NOMINA.CUOTAIMSS-Obrero').AsFloat;

          Try
            // Concentrar todos los datos del empleado en elementos multivaluados
            Lista := TStringList.Create;
            Lista.Clear;

            for i := 0 to cdDetalleSave.FieldDefs.Count -1 do
              Lista.Add('');

            Lista[0] := cdDetalle.FieldByName('IdDetalleNomina').AsString;
            Lista[1] := cdDetalle.FieldByName('IdPersonal').AsString;
            Lista[2] := cdDetalle.FieldByName('IdNomina').AsString;
            Lista[3] := cdDetalle.FieldByName('IdCargo').AsString;
            Lista[4] := cdDetalle.FieldByName('IdDepartamento').AsString;
            Lista[5] := '';   // Poner la forma de pago en automático a nula

            cdDetalle.First;
            while not cdDetalle.Eof do
            begin
              //if CompareText(cdDetalle.FieldByName('Modo').AsString, 'MEMORIA') <> 0 then
              begin
                for i := 6 to cdDetalleSave.FieldDefs.Count -1 do
                  Lista[i] := Lista[i] + cdDetalle.FieldByName(cdDetalle.FieldDefs.Items[i].Name).AsString + '|';
              end;

              cdDetalle.Next;
            end;

            Try
              if cdDetalleSave.ProviderName <> '' then
              begin
                cdDetalleSave.Append;
                for i := 0 to cdDetalleSave.FieldDefs.Count -1 do
                  cdDetalleSave.FieldByName(cdDetalleSave.FieldDefs.Items[i].Name).AsString := Reemplazar(Lista[i], '_', ' ');
                cdDetalleSave.Post;

                if cdDetalleSave.ProviderName <> '' then
                  cdDetalleSave.ApplyUpdates(-1);
              end;
            Finally
              if (cdDetalleSave.ProviderName <> '') and (cdDetalleSave.State = dsInsert) then
                cdDetalleSave.Cancel;
            End;
          Finally
            Lista.Free;
          End;
        end;

        cdPersonalNomina.Next;
      End;
    Finally
      Screen.Cursor := Cursor;
      if (Ocultar) and (Assigned(gcForma)) then
      begin
        Panel_Progress.Visible := False;
        Panel_Progress.Align := alNone;
        Panel_Progress.Parent := PadreOriginal;
        gcForma.Free;
        gcForma := Nil;
        //gcForma.Hide;
      end;
    End;
  Except
    on e:InteligentConnection do
      Raise;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentWarning do
      raise;

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema: ' + e.Message, mtError, [mbOk], 0);
  End;
end;

function Reemplazar(Cadena, Buscar, Cambiar: String): String;
var
  i: Integer;
  Cad2: String;
begin
  i := 0;
  Cad2 := '';
  for i := 1 to Length(Cadena) do
    if Cadena[i] = '_' then
      Cad2 := Cad2 + ' '
    else
      Cad2 := Cad2 + Cadena[i];

  Result := Cad2;
end;

procedure GenerarCalculoVirtual(FormaPadre: TForm;
                                Limite: Real;

                                IdOrganizacion: Integer;
                                FactorPrimaDominical,
                                FactorPrimaVacacional,
                                SalMinGenZona,
                                SeguroVidaINFONAVIT: Real;
                                DiasExcentoPrimaVacacional,
                                DiasExcentoAguinaldo: Integer;

                                IdTipoNomina,
                                DiasTrabajados,
                                DiasDescanso: Integer;

                                DiasFestivos: Integer;
                                Domingos: Integer;

                                InicioSemana: String;
                                IdTipoTablaISPT: Integer;
                                Periodicidad: Real;
                                Var NewSalario: Real;
                                Ocultar: Boolean = True);
var
  cdNomina,
  cdPersonalNomina,
  cdPersonal,
  cdConceptoExtra,
  cdSumaConcepto,
  memPercepciones,
  memDeducciones: TClientDataSet;
  Forma: TForm;
  Cursor: TCursor;
  dsDetalle: TDataSource;
  AproxSalario,
  FactorIntegracion,
  AproxSalarioIntegrado,
  TotalPercepciones,
  TotalDeducciones,
  Neto, Neto1: Extended;
  DiasVacaciones,
  DiasAguinaldo,
  CuentaCiclo: Integer;
  cdBuscar: TClientDataSet;
  Termina: Boolean;
  Panel_Progress: TPanel;
begin
  TerminarProceso := False;

  // Crear el panel de avance de cálculo
  if Assigned(FormaPadre) then
  begin
    Panel_Progress := TPanel.Create(FormaPadre);
    Panel_Progress.Height := 138;
    Panel_Progress.Width := 279;

    Panel_Progress.InsertControl(TJvLabel.Create(Panel_Progress));
    TJvLabel(Panel_Progress.Controls[0]).Caption := 'lblLeyenda1';
    TJvLabel(Panel_Progress.Controls[0]).Height := 13;
    TJvLabel(Panel_Progress.Controls[0]).Left := 21;
    TJvLabel(Panel_Progress.Controls[0]).Top := 35;
    TJvLabel(Panel_Progress.Controls[0]).Width := 59;

    Panel_Progress.InsertControl(TJvLabel.Create(Panel_Progress));
    TJvLabel(Panel_Progress.Controls[1]).Caption := 'lblLeyenda2';
    TJvLabel(Panel_Progress.Controls[1]).Height := 13;
    TJvLabel(Panel_Progress.Controls[1]).Left := 21;
    TJvLabel(Panel_Progress.Controls[1]).Top := 54;
    TJvLabel(Panel_Progress.Controls[1]).Width := 59;

    Panel_Progress.InsertControl(TJvLabel.Create(Panel_Progress));
    TJvLabel(Panel_Progress.Controls[2]).Caption := 'lblTitulo';
    TJvLabel(Panel_Progress.Controls[2]).Height := 16;
    TJvLabel(Panel_Progress.Controls[2]).Left := 21;
    TJvLabel(Panel_Progress.Controls[2]).Top := 13;
    TJvLabel(Panel_Progress.Controls[2]).Width := 51;

    Panel_Progress.InsertControl(TPanel.Create(Panel_Progress));
    TPanel(Panel_Progress.Controls[3]).Align := alBottom;
    TPanel(Panel_Progress.Controls[3]).BevelOuter := bvNone;
    TPanel(Panel_Progress.Controls[3]).Caption := '';
    TPanel(Panel_Progress.Controls[3]).Height := 25;
    TPanel(Panel_Progress.Controls[3]).Left := 1;
    TPanel(Panel_Progress.Controls[3]).Padding.Bottom := 8;
    TPanel(Panel_Progress.Controls[3]).Padding.Left := 10;
    TPanel(Panel_Progress.Controls[3]).Padding.Right := 8;
    TPanel(Panel_Progress.Controls[3]).Padding.Top := 0;
    TPanel(Panel_Progress.Controls[3]).Top := 112;
    TPanel(Panel_Progress.Controls[3]).Width := 277;

    TPanel(Panel_Progress.Controls[3]).InsertControl(TProgressBar.Create(Panel_Progress.Controls[3]));
    TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Align := alClient;
    TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Height := 17;
    TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Left := 10;
    TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Top := 0;
    TProgressBar(TPanel(Panel_Progress.Controls[3]).Controls[0]).Width := 259;

    Panel_Progress.InsertControl(TPanel.Create(Panel_Progress));
    TPanel(Panel_Progress.Controls[4]).Align := alBottom;
    TPanel(Panel_Progress.Controls[4]).BevelOuter := bvNone;
    TPanel(Panel_Progress.Controls[4]).Caption := '';
    TPanel(Panel_Progress.Controls[4]).Height := 25;
    TPanel(Panel_Progress.Controls[4]).Left := 1;
    TPanel(Panel_Progress.Controls[4]).Padding.Bottom := 8;
    TPanel(Panel_Progress.Controls[4]).Padding.Left := 10;
    TPanel(Panel_Progress.Controls[4]).Padding.Right := 8;
    TPanel(Panel_Progress.Controls[4]).Padding.Top := 0;
    TPanel(Panel_Progress.Controls[4]).Top := 87;
    TPanel(Panel_Progress.Controls[4]).Width := 277;

    TPanel(Panel_Progress.Controls[4]).InsertControl(TProgressBar.Create(Panel_Progress.Controls[4]));
    TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Align := alClient;
    TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Height := 17;
    TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Left := 10;
    TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Top := 0;
    TProgressBar(TPanel(Panel_Progress.Controls[4]).Controls[0]).Width := 259;

    Panel_Progress.InsertControl(TAdvGlowButton.Create(Panel_Progress));
    TAdvGlowButton(Panel_Progress.Controls[5]).Caption := '&Cancelar';
    TAdvGlowButton(Panel_Progress.Controls[5]).Height := 26;
    TAdvGlowButton(Panel_Progress.Controls[5]).Left := 463;
    TAdvGlowButton(Panel_Progress.Controls[5]).TabOrder := 2;
    TAdvGlowButton(Panel_Progress.Controls[5]).Top := 36;
    TAdvGlowButton(Panel_Progress.Controls[5]).Width := 121;
    TAdvGlowButton(Panel_Progress.Controls[5]).OnClick := myPrueba.OnClickCancel;
  end;

  // Definir un periodo de nómina lógico
  Try
    Try
      Cursor := Screen.Cursor;
      ProcesarMensajes;

      Try
        Screen.Cursor := crSQLWait;

        AproxSalario := Round(Limite / ((DiasTrabajados + DiasFestivos) / 100)) / 100;

        // Obtener los datos del tipo de nómina
        Try
          cdBuscar := TClientDataSet.Create(Nil);
          CrearConjunto(cdBuscar, 'nomina_factorintegracion', ccSelect);
          CargarDatosFiltrados(cdBuscar, 'IdOrganizacion,IdTipoNomina,Aplicacion,Anios', [IdOrganizacion, IdTipoNomina, FechaACadena(Now), 1]);
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

        if Not Assigned(cdNomina) then
        begin
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
          cdNomina.FieldDefs.Add('IdFormaPago', ftInteger);
          cdNomina.FieldDefs.Add('Descripcion', ftString, 200);
          cdNomina.FieldDefs.Add('DiasTrabajados', ftInteger);
          cdNomina.FieldDefs.Add('DiasDescanso', ftInteger);
          cdNomina.FieldDefs.Add('InicioSemana', ftString, 12);
          cdNomina.FieldDefs.Add('IdTipoTablaISPT', ftInteger);
          cdNomina.FieldDefs.Add('Periodicidad', ftFloat);
          cdNomina.CreateDataSet;
        end;

        cdNomina.Open;
        cdNomina.Append;
        cdNomina.FieldByName('IdNomina').AsInteger := 1;
        cdNomina.FieldByName('IdTipoNomina').AsInteger := IdTipoNomina;
        cdNomina.FieldByName('IdGuardia').AsInteger := 1;
        cdNomina.FieldByName('IdPeriodosGuardia').AsInteger := 1;
        cdNomina.FieldByName('Titulo').AsString := '*';
        cdNomina.FieldByName('FechaNomina').AsDateTime := Now;
        cdNomina.FieldByName('Estado').AsString := 'Abierta';
        cdNomina.FieldByName('FechaTerminoNomina').AsDateTime := Now + DiasTrabajados -1;
        cdNomina.FieldByName('Dias').AsInteger := DiasTrabajados;
        cdNomina.FieldByName('TituloGeneral').AsString := '*';
        cdNomina.FieldByName('Descripcion').AsString := '*';
        cdNomina.FieldByName('DiasTrabajados').AsInteger := DiasTrabajados;
        cdNomina.FieldByName('DiasDescanso').AsInteger := DiasDescanso;
        cdNomina.FieldByName('InicioSemana').AsString := InicioSemana;
        cdNomina.FieldByName('IdTipoTablaISPT').AsInteger := IdTipoTablaISPT;
        cdNomina.FieldByName('Periodicidad').AsFloat := Periodicidad;
        cdNomina.Post;

        if Not Assigned(cdPersonalNomina) then
        begin
          cdPersonalNomina := TClientDataSet.Create(Nil);
          cdPersonalNomina.FieldDefs.Add('FechaNomina', ftDate);
          cdPersonalNomina.FieldDefs.Add('Fecha', ftDate);
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
          cdPersonalNomina.FieldDefs.Add('DIASTIMSS', ftInteger);
          cdPersonalNomina.FieldDefs.Add('Inasistencias', ftInteger);
          cdPersonalNomina.FieldDefs.Add('InasistenciasAguinaldo', ftInteger);
          cdPersonalNomina.FieldDefs.Add('InasistenciasVacaciones', ftInteger);
          cdPersonalNomina.FieldDefs.Add('HorasExtra', ftFloat);
          cdPersonalNomina.FieldDefs.Add('Periodo', ftString, 10);
          cdPersonalNomina.FieldDefs.Add('EstadoPersonal', ftString, 10);
          cdPersonalNomina.FieldDefs.Add('FechaBaja', ftDate);
          cdPersonalNomina.FieldDefs.Add('DiasFestivos', ftInteger);
          cdPersonalNomina.FieldDefs.Add('IdFormaPago', ftInteger);
          cdPersonalNomina.CreateDataSet;
        end;

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
        cdPersonalNomina.FieldByName('DiasTrabajados').AsInteger := DiasTrabajados;
        cdPersonalNomina.FieldByName('IdDepartamento').AsInteger := 1;
        cdPersonalNomina.FieldByName('CodigoDepartamento').AsString := '*';
        cdPersonalNomina.FieldByName('TituloDepartamento').AsString := '*';
        cdPersonalNomina.FieldByName('Salario').AsFloat := AproxSalario;
        cdPersonalNomina.FieldByName('TituloSalario').AsString := '*';
        cdPersonalNomina.FieldByName('SalarioIntegrado').AsFloat := AproxSalarioIntegrado;
        cdPersonalNomina.FieldByName('IdCargo').AsInteger := 1;
        cdPersonalNomina.FieldByName('CodigoCargo').AsString := '*';
        cdPersonalNomina.FieldByName('TituloMoneda').AsString := '*';
        cdPersonalNomina.FieldByName('SalMinGenZona').AsFloat := SalMinGenZona;
        cdPersonalNomina.FieldByName('FechaReingreso').AsDateTime := Now;
        cdPersonalNomina.FieldByName('DiasVacaciones').AsInteger := DiasVacaciones;
        cdPersonalNomina.FieldByName('DiasAguinaldo').AsInteger := DiasAguinaldo;
        cdPersonalNomina.FieldByName('FactorPrimaDominical').AsFloat := FactorPrimaDominical;
        cdPersonalNomina.FieldByName('FactorPrimaVacacional').AsFloat := FactorPrimaVacacional;
        cdPersonalNomina.FieldByName('DiasExcentoPrimaVacacional').AsInteger := DiasExcentoPrimaVacacional;
        cdPersonalNomina.FieldByName('DiasExcentoAguinaldo').AsInteger := DiasExcentoAguinaldo;
        cdPersonalNomina.FieldByName('SeguroVidaINFONAVIT').AsFloat := SeguroVidaINFONAVIT;
        cdPersonalNomina.FieldByName('FechaInicio').AsDateTime := Now;
        cdPersonalNomina.FieldByName('FechaTermino').AsDateTime := Now + DiasTrabajados -1;
        cdPersonalNomina.FieldByName('DIAST').AsInteger := DiasTrabajados;
        cdPersonalNomina.FieldByName('DIASTIMSS').AsInteger := DiasTrabajados;
        cdPersonalNomina.FieldByName('Inasistencias').AsInteger := 0;
        cdPersonalNomina.FieldByName('InasistenciasAguinaldo').AsInteger := 0;
        cdPersonalNomina.FieldByName('InasistenciasVacaciones').AsInteger := 0;
        cdPersonalNomina.FieldByName('HorasExtra').AsFloat := 0;
        cdPersonalNomina.FieldByName('Periodo').AsString := '';
        cdPersonalNomina.FieldByName('EstadoPersonal').AsString := 'Activo';
        cdPersonalNomina.FieldByName('FechaBaja').AsDateTime := Now + DiasTrabajados -1;
        cdPersonalNomina.FieldByName('DiasFestivos').AsInteger := DiasFestivos;
        cdPersonalNomina.Post;

        if Not Assigned(cdPersonal) then
        begin
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
        end;

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

        if Not Assigned(cdgcConcepto) then
        begin
          cdgcConcepto := TClientDataSet.Create(Nil);
          CrearConjunto(cdgcConcepto, 'nom_concepto', ccCatalog);
          CargarDatosFiltrados(cdgcConcepto, 'IdTipoNomina', [IdTipoNomina]);
          cdgcConcepto.Open;
        end;

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

        cdDetalleSave := TClientDataSet.Create(Nil);
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

        cdDetalle := TClientDataSet.Create(Nil);
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
      Finally
        Screen.Cursor := Cursor;
      End;

      ProcesarMensajes;

      dsDetalle := TDataSource.Create(Nil);
      dsDetalle.DataSet := cdDetalle;

      Termina := False;
      NuevoTitulo := 'Calculando salario diario para: ' + FloatToStrF(AproxSalario, ffCurrency, 16, 2);
      Neto1 := 0;
      CuentaCiclo := 0;
      NewSalario := 0;

      while Not Termina do
      begin
        ProcesarMensajes;

        CalcularNominaEmpleado(cdNomina, cdPersonalNomina, Nil, cdPersonal, cdgcConcepto, cdConceptoExtra, cdSumaConcepto, memPercepciones, memDeducciones, Panel_Progress, False, Ocultar);

        ProcesarMensajes;

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

        // Se debe terminar en los siguiente casos:
        //   1.- Cuando se haya alcanzado el mismo Neto buscado
        //   2.- Cuando se haya superado el Neto buscado después de venir de abajo
        //   3.- Cuando se haya ciclado el proceso y haya dado 3 ciclos de más y estemos por arriba del Limite

        Termina := (FloatToStrF(Neto, ffFixed, 16, 2) = FloatToStrF(Limite, ffFixed, 16, 2)) or
                   ((Trunc(Neto * 100) > Trunc(Limite * 100)) and (Neto1 > 0) and (Trunc(Neto * 100) > Trunc(Neto1 * 100))) or
                   ((CuentaCiclo > 2) and (Trunc(Neto * 100) > Trunc(Limite * 100)));

        // Verificar si ya se cicló este pedo
        if (Trunc(Neto * 100) > Trunc(Limite * 100)) and (Trunc(Neto1 * 100) < Trunc(Neto * 100)) then
          Inc(CuentaCiclo);

        // Registrar el Neto anterior
        Neto1 := Neto;

        if Not Termina then
        begin
          if Neto < Limite then
          begin
            if (Round((AproxSalario + (((Limite - Neto) / (DiasTrabajados + DiasFestivos)) / 1)) * 100) / 100) = AproxSalario then
              AproxSalario := AproxSalario + 0.01
            else
              AproxSalario := Round((AproxSalario + (((Limite - Neto) / (DiasTrabajados + DiasFestivos)) / 1)) * 100) / 100;

            AproxSalarioIntegrado := Round((AproxSalario * FactorIntegracion) * 100) / 100;
          end;

          if Neto > Limite then
          begin
            if (Round((AproxSalario + (((Limite - Neto) / (DiasTrabajados + DiasFestivos)) / 1)) * 100) / 100) = AproxSalario then
              AproxSalario := AproxSalario - 0.01
            else
              AproxSalario := Round((AproxSalario + (((Limite - Neto) / (DiasTrabajados + DiasFestivos)) / 1)) * 100) / 100;

            AproxSalarioIntegrado := Round((AproxSalario * FactorIntegracion) * 100) / 100;
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

        if Termina then
        begin
          NuevoTitulo := 'Salario diario determinado: ' + FloatToStrF(AproxSalario, ffCurrency, 16, 2) + ' - Neto alcanzado: ' + FloatToStrF(Neto, ffCurrency, 16, 2);
          gcForma.Caption := NuevoTitulo;
          gcForma.Repaint;
        end
        else
          NuevoTitulo := 'Calculando salario diario para: ' + FloatToStrF(AproxSalario, ffCurrency, 16, 2) + ' - Último neto alcanzado: ' + FloatToStrF(Neto, ffCurrency, 16, 2);
      end;

      NewSalario := AproxSalario;
    Except
      on e:InteligentConnection do
        Raise;

      on e:InteligentWarning do
        InteliDialog.ShowModal('Cancelado', e.Message, mtInformation, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  Finally
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

procedure EliminarTodosConjuntos;
begin
  Try
    if Assigned(cdgcConcepto) then
      EliminarConjunto(cdgcConcepto);
  Except
    ;
  End;
  Try
    cdgcConcepto.Destroy;
  Except
    ;
  End;

  Try
    FreeAndNil(cdgcConcepto);
  Except
    ;
  End;
end;

procedure ProcesarMensajes;
begin
  Application.ProcessMessages;
  if TerminarProceso then
    if InteliDialog.ShowModal('Cancelar proceso', 'Si cancela el proceso en este momento, todos los cambios realizados se perderán.' + #10 + #10 + '¿Está seguro que desea detener el proceso en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      raise InteligentConnection.Create('***')
    else
      TerminarProceso := False;
end;

procedure CargarExcepcionesConceptosGenerales(IdPersonal: Integer;
  DataSet: TClientDataSet);
var
  NewValue: Variant;
  OrValor, myNewValor: Integer;
begin
  // Cargar las excepciones de los empleados
  Try
    DataSet.Filtered := False;
    DataSet.Filter := 'IdPersonal = ' + IntToStr(IdPersonal);
    DataSet.Filtered := True;

    DataSet.First;
    while not DataSet.Eof do
    begin
      Try
        NewValue := DataSet.FieldByName('Cantidad').AsFloat;
        if CompareText(DataSet.FieldByName('TipoExcepcion').AsString, 'Resta') = 0 then
          NewValue := NewValue * -1;
      Except
        NewValue := DataSet.FieldByName('Cantidad').AsString;
      End;

      if (CompareText(DataSet.FieldByName('ClaveConcepto').AsString, 'DiasFestivos') = 0) and (Valores.Elemento('EMPLEADO.CobraFestivos').AsInteger = 0) then
      begin
        // Si esta persona no cobra festivos regularmente, se deberá agregar solamente el valor que se capturó en la excepción
        OrValor := Valores.Elemento('EMPLEADO.DiasFestivos').AsInteger;
        NewValue := (OrValor * -1) + NewValue;

        Valores.ResetValue('CobraFestivos', 1); // Indicar que se deben cobrar los festivos cuando exista una exepcion de este tipo
      end;

      // Sumar o restar (según sea el caso) la cantidad de días festivos que considera la excepción
      Valores.ResetValue(DataSet.FieldByName('ClaveConcepto').AsString, NewValue);

{      if (CompareText(DataSet.FieldByName('ClaveConcepto').AsString, 'DiasFestivos') = 0) and (Valores.Elemento('EMPLEADO.CobraFestivos').AsInteger = 0) then
        Valores.ResetValue('CobraFestivos', 1);}

      DataSet.Next;
    end;
  Finally
    DataSet.Filtered := False;
  End;
end;

end.
