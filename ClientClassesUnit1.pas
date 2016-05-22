//
// Created by the DataSnap proxy generator.
// 10/04/2015 12:17:48 p.m.
//

unit ClientClassesUnit1;

interface

uses DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr, DBXDBReaders, InterClases, DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FDSServerModuleDestroyCommand: TDBXCommand;
    FConexionPrimariaAfterConnectCommand: TDBXCommand;
    FMonitorDataSetCommand: TDBXCommand;
    FSetSQLTextCommand: TDBXCommand;
    FSetSQLParameterByIndexCommand: TDBXCommand;
    FCreateDataSetCommand: TDBXCommand;
    FDataStructureCommand: TDBXCommand;
    FGetPrefixCommand: TDBXCommand;
    FGetDataBasesInfoCommand: TDBXCommand;
    FFreeDataSetCommand: TDBXCommand;
    FGetSentenceCommand: TDBXCommand;
    FHashMD5Command: TDBXCommand;
    FGetFieldPrimaryKeyCommand: TDBXCommand;
    FFindCommand: TDBXCommand;
    FInitGlobalCommand: TDBXCommand;
    FReloadFilterDataCommand: TDBXCommand;
    FHowManySelectedCommand: TDBXCommand;
    FClearFilterDataCommand: TDBXCommand;
    FGlobalCountCommand: TDBXCommand;
    FGlobalElemCommand: TDBXCommand;
    FGlobalElemByNameCommand: TDBXCommand;
    FSetGlobalElemByNameCommand: TDBXCommand;
    FCheckUnitCommand: TDBXCommand;
    FGetRecordCountCommand: TDBXCommand;
    FGetRecordMinCommand: TDBXCommand;
    FGetRecordMaxCommand: TDBXCommand;
    FHowManyRecsCommand: TDBXCommand;
    FVerifyExistsCommand: TDBXCommand;
    FGetAvailableDatabasesCommand: TDBXCommand;
    FGetLastIdCommand: TDBXCommand;
    FGetLastCodeCommand: TDBXCommand;
    FSetActivityCommand: TDBXCommand;
    FDeleteRecordCommand: TDBXCommand;
    FEraseRecordCommand: TDBXCommand;
    FBeginTransactionCommand: TDBXCommand;
    FCommitTransactionCommand: TDBXCommand;
    FRollBackTransactionCommand: TDBXCommand;
    FInTransactionCommand: TDBXCommand;
    FInitConnectionCommand: TDBXCommand;
    FLockCancelCommand: TDBXCommand;
    FLockCancel2Command: TDBXCommand;
    FReportCompareCommand: TDBXCommand;
    FFileCompareCommand: TDBXCommand;
    FGetFileCommand: TDBXCommand;
    FSetGlobalIntegerCommand: TDBXCommand;
    FSetDataUserCommand: TDBXCommand;
    FSetWhereCommand: TDBXCommand;
    FIsLockedCommand: TDBXCommand;
    FStoredProcedureCommand: TDBXCommand;
    FServerDateTimeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
    procedure ConexionPrimariaAfterConnect(Sender: TObject);
    procedure MonitorDataSet;
    function SetSQLText(Nombre: string; Value: string): Boolean;
    function SetSQLParameterByIndex(Nombre: string; index: Integer; Value: string): Boolean;
    function CreateDataSet(pDatabase: string; Tabla: string; var NameDataSet: string; ConjuntoTipo: string): Boolean;
    function DataStructure(Tabla: string): string;
    function GetPrefix(pDatabase: string; var Prefijo: string): Boolean;
    function GetDataBasesInfo(var NameDataSet: string; Tipo: string): Boolean;
    function FreeDataSet(NameDataSet: string): Integer;
    function GetSentence(pDatabase: string; Tabla: string; Tipo: string): string;
    function HashMD5(Str: string): string;
    function GetFieldPrimaryKey(pDatabase: string; Tabla: string): string;
    function Find(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function InitGlobal(pDatabase: string; Codigo: string; Parametros: string; var NameDataSet: string): Boolean;
    function ReloadFilterData(NameDataSet: string; Variables: string; Valores: string; Reusar: Boolean): Boolean;
    function HowManySelected(NameDataSet: string): Integer;
    function ClearFilterData(NameDataSet: string): Boolean;
    function GlobalCount: Integer;
    function GlobalElem(Numero: Integer): string;
    function GlobalElemByName(Name: string): string;
    function SetGlobalElemByName(Name: string; Value: string): Boolean;
    function CheckUnit(pDatabase: string; var NameDataSet: string; Medida: string): Integer;
    function GetRecordCount(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function GetRecordMin(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function GetRecordMax(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function HowManyRecs(pDatabase: string; NameDataSet: string): Integer;
    function VerifyExists(NameDataSet: string; Code: string; IdKey: Integer): Boolean;
    function GetAvailableDatabases(CualEstado: Byte): string;
    function GetLastId: Integer;
    function GetLastCode: string;
    function SetActivity(pDatabase: string; User: Integer; CodigoActividad: string; IdUsuario: Integer; Inicio: TDateTime; Termino: TDateTime; Descripcion: string): Boolean;
    function DeleteRecord(pDatabase: string; NameDataSet: string; Valores: string; Tipo: Integer; ForzarBorrado: Boolean): Integer;
    function EraseRecord(pDatabase: string; NameDataSet: string; Valores: string; Tipo: Integer; ForzarBorrado: Boolean): Integer;
    function BeginTransaction(pDatabase: string): Boolean;
    function CommitTransaction(pDatabase: string): Boolean;
    function RollBackTransaction(pDatabase: string): Boolean;
    function InTransaction(pDatabase: string): Boolean;
    function InitConnection(DataBaseName: string): Boolean;
    function LockCancel(ProviderName: string; IdLlave: Integer): Boolean;
    function LockCancel2(DataBaseName: string; IdLlave: Integer): Boolean;
    function ReportCompare(NombreReporte: string): Boolean;
    function FileCompare(Ruta: string; NombreArchivo: string): Boolean;
    function GetFile(Ruta: string; NombreArchivo: string): string;
    function SetGlobalInteger(Variable: string; Valor: Integer): Boolean;
    function SetDataUser(Tipo: TClassUser; Reiniciar: Boolean): string;
    function SetWhere(ProviderName: string; Cadena: string): Boolean;
    function IsLocked(ProviderName: string): Boolean;
    function StoredProcedure(ProcName: string; Parametros: string; Valores: string; var ProviderName: string): Boolean;
    function ServerDateTime(Modo: Integer): TDateTime;
  end;

implementation

procedure TServerMethods1Client.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TServerMethods1.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.DSServerModuleDestroy(Sender: TObject);
begin
  if FDSServerModuleDestroyCommand = nil then
  begin
    FDSServerModuleDestroyCommand := FDBXConnection.CreateCommand;
    FDSServerModuleDestroyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleDestroyCommand.Text := 'TServerMethods1.DSServerModuleDestroy';
    FDSServerModuleDestroyCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleDestroyCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleDestroyCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleDestroyCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleDestroyCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.ConexionPrimariaAfterConnect(Sender: TObject);
begin
  if FConexionPrimariaAfterConnectCommand = nil then
  begin
    FConexionPrimariaAfterConnectCommand := FDBXConnection.CreateCommand;
    FConexionPrimariaAfterConnectCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FConexionPrimariaAfterConnectCommand.Text := 'TServerMethods1.ConexionPrimariaAfterConnect';
    FConexionPrimariaAfterConnectCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FConexionPrimariaAfterConnectCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FConexionPrimariaAfterConnectCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FConexionPrimariaAfterConnectCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FConexionPrimariaAfterConnectCommand.ExecuteUpdate;
end;

procedure TServerMethods1Client.MonitorDataSet;
begin
  if FMonitorDataSetCommand = nil then
  begin
    FMonitorDataSetCommand := FDBXConnection.CreateCommand;
    FMonitorDataSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMonitorDataSetCommand.Text := 'TServerMethods1.MonitorDataSet';
    FMonitorDataSetCommand.Prepare;
  end;
  FMonitorDataSetCommand.ExecuteUpdate;
end;

function TServerMethods1Client.SetSQLText(Nombre: string; Value: string): Boolean;
begin
  if FSetSQLTextCommand = nil then
  begin
    FSetSQLTextCommand := FDBXConnection.CreateCommand;
    FSetSQLTextCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetSQLTextCommand.Text := 'TServerMethods1.SetSQLText';
    FSetSQLTextCommand.Prepare;
  end;
  FSetSQLTextCommand.Parameters[0].Value.SetWideString(Nombre);
  FSetSQLTextCommand.Parameters[1].Value.SetWideString(Value);
  FSetSQLTextCommand.ExecuteUpdate;
  Result := FSetSQLTextCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.SetSQLParameterByIndex(Nombre: string; index: Integer; Value: string): Boolean;
begin
  if FSetSQLParameterByIndexCommand = nil then
  begin
    FSetSQLParameterByIndexCommand := FDBXConnection.CreateCommand;
    FSetSQLParameterByIndexCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetSQLParameterByIndexCommand.Text := 'TServerMethods1.SetSQLParameterByIndex';
    FSetSQLParameterByIndexCommand.Prepare;
  end;
  FSetSQLParameterByIndexCommand.Parameters[0].Value.SetWideString(Nombre);
  FSetSQLParameterByIndexCommand.Parameters[1].Value.SetInt32(index);
  FSetSQLParameterByIndexCommand.Parameters[2].Value.SetWideString(Value);
  FSetSQLParameterByIndexCommand.ExecuteUpdate;
  Result := FSetSQLParameterByIndexCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethods1Client.CreateDataSet(pDatabase: string; Tabla: string; var NameDataSet: string; ConjuntoTipo: string): Boolean;
begin
  if FCreateDataSetCommand = nil then
  begin
    FCreateDataSetCommand := FDBXConnection.CreateCommand;
    FCreateDataSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateDataSetCommand.Text := 'TServerMethods1.CreateDataSet';
    FCreateDataSetCommand.Prepare;
  end;
  FCreateDataSetCommand.Parameters[0].Value.SetWideString(pDatabase);
  FCreateDataSetCommand.Parameters[1].Value.SetWideString(Tabla);
  FCreateDataSetCommand.Parameters[2].Value.SetWideString(NameDataSet);
  FCreateDataSetCommand.Parameters[3].Value.SetWideString(ConjuntoTipo);
  FCreateDataSetCommand.ExecuteUpdate;
  NameDataSet := FCreateDataSetCommand.Parameters[2].Value.GetWideString;
  Result := FCreateDataSetCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.DataStructure(Tabla: string): string;
begin
  if FDataStructureCommand = nil then
  begin
    FDataStructureCommand := FDBXConnection.CreateCommand;
    FDataStructureCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDataStructureCommand.Text := 'TServerMethods1.DataStructure';
    FDataStructureCommand.Prepare;
  end;
  FDataStructureCommand.Parameters[0].Value.SetWideString(Tabla);
  FDataStructureCommand.ExecuteUpdate;
  Result := FDataStructureCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GetPrefix(pDatabase: string; var Prefijo: string): Boolean;
begin
  if FGetPrefixCommand = nil then
  begin
    FGetPrefixCommand := FDBXConnection.CreateCommand;
    FGetPrefixCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPrefixCommand.Text := 'TServerMethods1.GetPrefix';
    FGetPrefixCommand.Prepare;
  end;
  FGetPrefixCommand.Parameters[0].Value.SetWideString(pDatabase);
  FGetPrefixCommand.Parameters[1].Value.SetWideString(Prefijo);
  FGetPrefixCommand.ExecuteUpdate;
  Prefijo := FGetPrefixCommand.Parameters[1].Value.GetWideString;
  Result := FGetPrefixCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.GetDataBasesInfo(var NameDataSet: string; Tipo: string): Boolean;
begin
  if FGetDataBasesInfoCommand = nil then
  begin
    FGetDataBasesInfoCommand := FDBXConnection.CreateCommand;
    FGetDataBasesInfoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDataBasesInfoCommand.Text := 'TServerMethods1.GetDataBasesInfo';
    FGetDataBasesInfoCommand.Prepare;
  end;
  FGetDataBasesInfoCommand.Parameters[0].Value.SetWideString(NameDataSet);
  FGetDataBasesInfoCommand.Parameters[1].Value.SetWideString(Tipo);
  FGetDataBasesInfoCommand.ExecuteUpdate;
  NameDataSet := FGetDataBasesInfoCommand.Parameters[0].Value.GetWideString;
  Result := FGetDataBasesInfoCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.FreeDataSet(NameDataSet: string): Integer;
begin
  if FFreeDataSetCommand = nil then
  begin
    FFreeDataSetCommand := FDBXConnection.CreateCommand;
    FFreeDataSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFreeDataSetCommand.Text := 'TServerMethods1.FreeDataSet';
    FFreeDataSetCommand.Prepare;
  end;
  FFreeDataSetCommand.Parameters[0].Value.SetWideString(NameDataSet);
  FFreeDataSetCommand.ExecuteUpdate;
  Result := FFreeDataSetCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.GetSentence(pDatabase: string; Tabla: string; Tipo: string): string;
begin
  if FGetSentenceCommand = nil then
  begin
    FGetSentenceCommand := FDBXConnection.CreateCommand;
    FGetSentenceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetSentenceCommand.Text := 'TServerMethods1.GetSentence';
    FGetSentenceCommand.Prepare;
  end;
  FGetSentenceCommand.Parameters[0].Value.SetWideString(pDatabase);
  FGetSentenceCommand.Parameters[1].Value.SetWideString(Tabla);
  FGetSentenceCommand.Parameters[2].Value.SetWideString(Tipo);
  FGetSentenceCommand.ExecuteUpdate;
  Result := FGetSentenceCommand.Parameters[3].Value.GetWideString;
end;

function TServerMethods1Client.HashMD5(Str: string): string;
begin
  if FHashMD5Command = nil then
  begin
    FHashMD5Command := FDBXConnection.CreateCommand;
    FHashMD5Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FHashMD5Command.Text := 'TServerMethods1.HashMD5';
    FHashMD5Command.Prepare;
  end;
  FHashMD5Command.Parameters[0].Value.SetWideString(Str);
  FHashMD5Command.ExecuteUpdate;
  Result := FHashMD5Command.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GetFieldPrimaryKey(pDatabase: string; Tabla: string): string;
begin
  if FGetFieldPrimaryKeyCommand = nil then
  begin
    FGetFieldPrimaryKeyCommand := FDBXConnection.CreateCommand;
    FGetFieldPrimaryKeyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetFieldPrimaryKeyCommand.Text := 'TServerMethods1.GetFieldPrimaryKey';
    FGetFieldPrimaryKeyCommand.Prepare;
  end;
  FGetFieldPrimaryKeyCommand.Parameters[0].Value.SetWideString(pDatabase);
  FGetFieldPrimaryKeyCommand.Parameters[1].Value.SetWideString(Tabla);
  FGetFieldPrimaryKeyCommand.ExecuteUpdate;
  Result := FGetFieldPrimaryKeyCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.Find(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
begin
  if FFindCommand = nil then
  begin
    FFindCommand := FDBXConnection.CreateCommand;
    FFindCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFindCommand.Text := 'TServerMethods1.Find';
    FFindCommand.Prepare;
  end;
  FFindCommand.Parameters[0].Value.SetWideString(pDatabase);
  FFindCommand.Parameters[1].Value.SetWideString(Tabla);
  FFindCommand.Parameters[2].Value.SetWideString(Campos);
  FFindCommand.Parameters[3].Value.SetWideString(Valores);
  FFindCommand.ExecuteUpdate;
  Result := FFindCommand.Parameters[4].Value.GetInt32;
end;

function TServerMethods1Client.InitGlobal(pDatabase: string; Codigo: string; Parametros: string; var NameDataSet: string): Boolean;
begin
  if FInitGlobalCommand = nil then
  begin
    FInitGlobalCommand := FDBXConnection.CreateCommand;
    FInitGlobalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInitGlobalCommand.Text := 'TServerMethods1.InitGlobal';
    FInitGlobalCommand.Prepare;
  end;
  FInitGlobalCommand.Parameters[0].Value.SetWideString(pDatabase);
  FInitGlobalCommand.Parameters[1].Value.SetWideString(Codigo);
  FInitGlobalCommand.Parameters[2].Value.SetWideString(Parametros);
  FInitGlobalCommand.Parameters[3].Value.SetWideString(NameDataSet);
  FInitGlobalCommand.ExecuteUpdate;
  NameDataSet := FInitGlobalCommand.Parameters[3].Value.GetWideString;
  Result := FInitGlobalCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.ReloadFilterData(NameDataSet: string; Variables: string; Valores: string; Reusar: Boolean): Boolean;
begin
  if FReloadFilterDataCommand = nil then
  begin
    FReloadFilterDataCommand := FDBXConnection.CreateCommand;
    FReloadFilterDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReloadFilterDataCommand.Text := 'TServerMethods1.ReloadFilterData';
    FReloadFilterDataCommand.Prepare;
  end;
  FReloadFilterDataCommand.Parameters[0].Value.SetWideString(NameDataSet);
  FReloadFilterDataCommand.Parameters[1].Value.SetWideString(Variables);
  FReloadFilterDataCommand.Parameters[2].Value.SetWideString(Valores);
  FReloadFilterDataCommand.Parameters[3].Value.SetBoolean(Reusar);
  FReloadFilterDataCommand.ExecuteUpdate;
  Result := FReloadFilterDataCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.HowManySelected(NameDataSet: string): Integer;
begin
  if FHowManySelectedCommand = nil then
  begin
    FHowManySelectedCommand := FDBXConnection.CreateCommand;
    FHowManySelectedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHowManySelectedCommand.Text := 'TServerMethods1.HowManySelected';
    FHowManySelectedCommand.Prepare;
  end;
  FHowManySelectedCommand.Parameters[0].Value.SetWideString(NameDataSet);
  FHowManySelectedCommand.ExecuteUpdate;
  Result := FHowManySelectedCommand.Parameters[1].Value.GetInt32;
end;

function TServerMethods1Client.ClearFilterData(NameDataSet: string): Boolean;
begin
  if FClearFilterDataCommand = nil then
  begin
    FClearFilterDataCommand := FDBXConnection.CreateCommand;
    FClearFilterDataCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FClearFilterDataCommand.Text := 'TServerMethods1.ClearFilterData';
    FClearFilterDataCommand.Prepare;
  end;
  FClearFilterDataCommand.Parameters[0].Value.SetWideString(NameDataSet);
  FClearFilterDataCommand.ExecuteUpdate;
  Result := FClearFilterDataCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.GlobalCount: Integer;
begin
  if FGlobalCountCommand = nil then
  begin
    FGlobalCountCommand := FDBXConnection.CreateCommand;
    FGlobalCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGlobalCountCommand.Text := 'TServerMethods1.GlobalCount';
    FGlobalCountCommand.Prepare;
  end;
  FGlobalCountCommand.ExecuteUpdate;
  Result := FGlobalCountCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethods1Client.GlobalElem(Numero: Integer): string;
begin
  if FGlobalElemCommand = nil then
  begin
    FGlobalElemCommand := FDBXConnection.CreateCommand;
    FGlobalElemCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGlobalElemCommand.Text := 'TServerMethods1.GlobalElem';
    FGlobalElemCommand.Prepare;
  end;
  FGlobalElemCommand.Parameters[0].Value.SetInt32(Numero);
  FGlobalElemCommand.ExecuteUpdate;
  Result := FGlobalElemCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GlobalElemByName(Name: string): string;
begin
  if FGlobalElemByNameCommand = nil then
  begin
    FGlobalElemByNameCommand := FDBXConnection.CreateCommand;
    FGlobalElemByNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGlobalElemByNameCommand.Text := 'TServerMethods1.GlobalElemByName';
    FGlobalElemByNameCommand.Prepare;
  end;
  FGlobalElemByNameCommand.Parameters[0].Value.SetWideString(Name);
  FGlobalElemByNameCommand.ExecuteUpdate;
  Result := FGlobalElemByNameCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.SetGlobalElemByName(Name: string; Value: string): Boolean;
begin
  if FSetGlobalElemByNameCommand = nil then
  begin
    FSetGlobalElemByNameCommand := FDBXConnection.CreateCommand;
    FSetGlobalElemByNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetGlobalElemByNameCommand.Text := 'TServerMethods1.SetGlobalElemByName';
    FSetGlobalElemByNameCommand.Prepare;
  end;
  FSetGlobalElemByNameCommand.Parameters[0].Value.SetWideString(Name);
  FSetGlobalElemByNameCommand.Parameters[1].Value.SetWideString(Value);
  FSetGlobalElemByNameCommand.ExecuteUpdate;
  Result := FSetGlobalElemByNameCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.CheckUnit(pDatabase: string; var NameDataSet: string; Medida: string): Integer;
begin
  if FCheckUnitCommand = nil then
  begin
    FCheckUnitCommand := FDBXConnection.CreateCommand;
    FCheckUnitCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCheckUnitCommand.Text := 'TServerMethods1.CheckUnit';
    FCheckUnitCommand.Prepare;
  end;
  FCheckUnitCommand.Parameters[0].Value.SetWideString(pDatabase);
  FCheckUnitCommand.Parameters[1].Value.SetWideString(NameDataSet);
  FCheckUnitCommand.Parameters[2].Value.SetWideString(Medida);
  FCheckUnitCommand.ExecuteUpdate;
  NameDataSet := FCheckUnitCommand.Parameters[1].Value.GetWideString;
  Result := FCheckUnitCommand.Parameters[3].Value.GetInt32;
end;

function TServerMethods1Client.GetRecordCount(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
begin
  if FGetRecordCountCommand = nil then
  begin
    FGetRecordCountCommand := FDBXConnection.CreateCommand;
    FGetRecordCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetRecordCountCommand.Text := 'TServerMethods1.GetRecordCount';
    FGetRecordCountCommand.Prepare;
  end;
  FGetRecordCountCommand.Parameters[0].Value.SetWideString(pDatabase);
  FGetRecordCountCommand.Parameters[1].Value.SetWideString(Tabla);
  FGetRecordCountCommand.Parameters[2].Value.SetWideString(Campos);
  FGetRecordCountCommand.Parameters[3].Value.SetWideString(Valores);
  FGetRecordCountCommand.ExecuteUpdate;
  Result := FGetRecordCountCommand.Parameters[4].Value.GetInt32;
end;

function TServerMethods1Client.GetRecordMin(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
begin
  if FGetRecordMinCommand = nil then
  begin
    FGetRecordMinCommand := FDBXConnection.CreateCommand;
    FGetRecordMinCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetRecordMinCommand.Text := 'TServerMethods1.GetRecordMin';
    FGetRecordMinCommand.Prepare;
  end;
  FGetRecordMinCommand.Parameters[0].Value.SetWideString(pDatabase);
  FGetRecordMinCommand.Parameters[1].Value.SetWideString(Tabla);
  FGetRecordMinCommand.Parameters[2].Value.SetWideString(Campos);
  FGetRecordMinCommand.Parameters[3].Value.SetWideString(Valores);
  FGetRecordMinCommand.ExecuteUpdate;
  Result := FGetRecordMinCommand.Parameters[4].Value.GetInt32;
end;

function TServerMethods1Client.GetRecordMax(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
begin
  if FGetRecordMaxCommand = nil then
  begin
    FGetRecordMaxCommand := FDBXConnection.CreateCommand;
    FGetRecordMaxCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetRecordMaxCommand.Text := 'TServerMethods1.GetRecordMax';
    FGetRecordMaxCommand.Prepare;
  end;
  FGetRecordMaxCommand.Parameters[0].Value.SetWideString(pDatabase);
  FGetRecordMaxCommand.Parameters[1].Value.SetWideString(Tabla);
  FGetRecordMaxCommand.Parameters[2].Value.SetWideString(Campos);
  FGetRecordMaxCommand.Parameters[3].Value.SetWideString(Valores);
  FGetRecordMaxCommand.ExecuteUpdate;
  Result := FGetRecordMaxCommand.Parameters[4].Value.GetInt32;
end;

function TServerMethods1Client.HowManyRecs(pDatabase: string; NameDataSet: string): Integer;
begin
  if FHowManyRecsCommand = nil then
  begin
    FHowManyRecsCommand := FDBXConnection.CreateCommand;
    FHowManyRecsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHowManyRecsCommand.Text := 'TServerMethods1.HowManyRecs';
    FHowManyRecsCommand.Prepare;
  end;
  FHowManyRecsCommand.Parameters[0].Value.SetWideString(pDatabase);
  FHowManyRecsCommand.Parameters[1].Value.SetWideString(NameDataSet);
  FHowManyRecsCommand.ExecuteUpdate;
  Result := FHowManyRecsCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods1Client.VerifyExists(NameDataSet: string; Code: string; IdKey: Integer): Boolean;
begin
  if FVerifyExistsCommand = nil then
  begin
    FVerifyExistsCommand := FDBXConnection.CreateCommand;
    FVerifyExistsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerifyExistsCommand.Text := 'TServerMethods1.VerifyExists';
    FVerifyExistsCommand.Prepare;
  end;
  FVerifyExistsCommand.Parameters[0].Value.SetWideString(NameDataSet);
  FVerifyExistsCommand.Parameters[1].Value.SetWideString(Code);
  FVerifyExistsCommand.Parameters[2].Value.SetInt32(IdKey);
  FVerifyExistsCommand.ExecuteUpdate;
  Result := FVerifyExistsCommand.Parameters[3].Value.GetBoolean;
end;

function TServerMethods1Client.GetAvailableDatabases(CualEstado: Byte): string;
begin
  if FGetAvailableDatabasesCommand = nil then
  begin
    FGetAvailableDatabasesCommand := FDBXConnection.CreateCommand;
    FGetAvailableDatabasesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetAvailableDatabasesCommand.Text := 'TServerMethods1.GetAvailableDatabases';
    FGetAvailableDatabasesCommand.Prepare;
  end;
  FGetAvailableDatabasesCommand.Parameters[0].Value.SetUInt8(CualEstado);
  FGetAvailableDatabasesCommand.ExecuteUpdate;
  Result := FGetAvailableDatabasesCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.GetLastId: Integer;
begin
  if FGetLastIdCommand = nil then
  begin
    FGetLastIdCommand := FDBXConnection.CreateCommand;
    FGetLastIdCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetLastIdCommand.Text := 'TServerMethods1.GetLastId';
    FGetLastIdCommand.Prepare;
  end;
  FGetLastIdCommand.ExecuteUpdate;
  Result := FGetLastIdCommand.Parameters[0].Value.GetInt32;
end;

function TServerMethods1Client.GetLastCode: string;
begin
  if FGetLastCodeCommand = nil then
  begin
    FGetLastCodeCommand := FDBXConnection.CreateCommand;
    FGetLastCodeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetLastCodeCommand.Text := 'TServerMethods1.GetLastCode';
    FGetLastCodeCommand.Prepare;
  end;
  FGetLastCodeCommand.ExecuteUpdate;
  Result := FGetLastCodeCommand.Parameters[0].Value.GetWideString;
end;

function TServerMethods1Client.SetActivity(pDatabase: string; User: Integer; CodigoActividad: string; IdUsuario: Integer; Inicio: TDateTime; Termino: TDateTime; Descripcion: string): Boolean;
begin
  if FSetActivityCommand = nil then
  begin
    FSetActivityCommand := FDBXConnection.CreateCommand;
    FSetActivityCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetActivityCommand.Text := 'TServerMethods1.SetActivity';
    FSetActivityCommand.Prepare;
  end;
  FSetActivityCommand.Parameters[0].Value.SetWideString(pDatabase);
  FSetActivityCommand.Parameters[1].Value.SetInt32(User);
  FSetActivityCommand.Parameters[2].Value.SetWideString(CodigoActividad);
  FSetActivityCommand.Parameters[3].Value.SetInt32(IdUsuario);
  FSetActivityCommand.Parameters[4].Value.AsDateTime := Inicio;
  FSetActivityCommand.Parameters[5].Value.AsDateTime := Termino;
  FSetActivityCommand.Parameters[6].Value.SetWideString(Descripcion);
  FSetActivityCommand.ExecuteUpdate;
  Result := FSetActivityCommand.Parameters[7].Value.GetBoolean;
end;

function TServerMethods1Client.DeleteRecord(pDatabase: string; NameDataSet: string; Valores: string; Tipo: Integer; ForzarBorrado: Boolean): Integer;
begin
  if FDeleteRecordCommand = nil then
  begin
    FDeleteRecordCommand := FDBXConnection.CreateCommand;
    FDeleteRecordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDeleteRecordCommand.Text := 'TServerMethods1.DeleteRecord';
    FDeleteRecordCommand.Prepare;
  end;
  FDeleteRecordCommand.Parameters[0].Value.SetWideString(pDatabase);
  FDeleteRecordCommand.Parameters[1].Value.SetWideString(NameDataSet);
  FDeleteRecordCommand.Parameters[2].Value.SetWideString(Valores);
  FDeleteRecordCommand.Parameters[3].Value.SetInt32(Tipo);
  FDeleteRecordCommand.Parameters[4].Value.SetBoolean(ForzarBorrado);
  FDeleteRecordCommand.ExecuteUpdate;
  Result := FDeleteRecordCommand.Parameters[5].Value.GetInt32;
end;

function TServerMethods1Client.EraseRecord(pDatabase: string; NameDataSet: string; Valores: string; Tipo: Integer; ForzarBorrado: Boolean): Integer;
begin
  if FEraseRecordCommand = nil then
  begin
    FEraseRecordCommand := FDBXConnection.CreateCommand;
    FEraseRecordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEraseRecordCommand.Text := 'TServerMethods1.EraseRecord';
    FEraseRecordCommand.Prepare;
  end;
  FEraseRecordCommand.Parameters[0].Value.SetWideString(pDatabase);
  FEraseRecordCommand.Parameters[1].Value.SetWideString(NameDataSet);
  FEraseRecordCommand.Parameters[2].Value.SetWideString(Valores);
  FEraseRecordCommand.Parameters[3].Value.SetInt32(Tipo);
  FEraseRecordCommand.Parameters[4].Value.SetBoolean(ForzarBorrado);
  FEraseRecordCommand.ExecuteUpdate;
  Result := FEraseRecordCommand.Parameters[5].Value.GetInt32;
end;

function TServerMethods1Client.BeginTransaction(pDatabase: string): Boolean;
begin
  if FBeginTransactionCommand = nil then
  begin
    FBeginTransactionCommand := FDBXConnection.CreateCommand;
    FBeginTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBeginTransactionCommand.Text := 'TServerMethods1.BeginTransaction';
    FBeginTransactionCommand.Prepare;
  end;
  FBeginTransactionCommand.Parameters[0].Value.SetWideString(pDatabase);
  FBeginTransactionCommand.ExecuteUpdate;
  Result := FBeginTransactionCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.CommitTransaction(pDatabase: string): Boolean;
begin
  if FCommitTransactionCommand = nil then
  begin
    FCommitTransactionCommand := FDBXConnection.CreateCommand;
    FCommitTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCommitTransactionCommand.Text := 'TServerMethods1.CommitTransaction';
    FCommitTransactionCommand.Prepare;
  end;
  FCommitTransactionCommand.Parameters[0].Value.SetWideString(pDatabase);
  FCommitTransactionCommand.ExecuteUpdate;
  Result := FCommitTransactionCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.RollBackTransaction(pDatabase: string): Boolean;
begin
  if FRollBackTransactionCommand = nil then
  begin
    FRollBackTransactionCommand := FDBXConnection.CreateCommand;
    FRollBackTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRollBackTransactionCommand.Text := 'TServerMethods1.RollBackTransaction';
    FRollBackTransactionCommand.Prepare;
  end;
  FRollBackTransactionCommand.Parameters[0].Value.SetWideString(pDatabase);
  FRollBackTransactionCommand.ExecuteUpdate;
  Result := FRollBackTransactionCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.InTransaction(pDatabase: string): Boolean;
begin
  if FInTransactionCommand = nil then
  begin
    FInTransactionCommand := FDBXConnection.CreateCommand;
    FInTransactionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInTransactionCommand.Text := 'TServerMethods1.InTransaction';
    FInTransactionCommand.Prepare;
  end;
  FInTransactionCommand.Parameters[0].Value.SetWideString(pDatabase);
  FInTransactionCommand.ExecuteUpdate;
  Result := FInTransactionCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.InitConnection(DataBaseName: string): Boolean;
begin
  if FInitConnectionCommand = nil then
  begin
    FInitConnectionCommand := FDBXConnection.CreateCommand;
    FInitConnectionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInitConnectionCommand.Text := 'TServerMethods1.InitConnection';
    FInitConnectionCommand.Prepare;
  end;
  FInitConnectionCommand.Parameters[0].Value.SetWideString(DataBaseName);
  FInitConnectionCommand.ExecuteUpdate;
  Result := FInitConnectionCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.LockCancel(ProviderName: string; IdLlave: Integer): Boolean;
begin
  if FLockCancelCommand = nil then
  begin
    FLockCancelCommand := FDBXConnection.CreateCommand;
    FLockCancelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLockCancelCommand.Text := 'TServerMethods1.LockCancel';
    FLockCancelCommand.Prepare;
  end;
  FLockCancelCommand.Parameters[0].Value.SetWideString(ProviderName);
  FLockCancelCommand.Parameters[1].Value.SetInt32(IdLlave);
  FLockCancelCommand.ExecuteUpdate;
  Result := FLockCancelCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.LockCancel2(DataBaseName: string; IdLlave: Integer): Boolean;
begin
  if FLockCancel2Command = nil then
  begin
    FLockCancel2Command := FDBXConnection.CreateCommand;
    FLockCancel2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FLockCancel2Command.Text := 'TServerMethods1.LockCancel2';
    FLockCancel2Command.Prepare;
  end;
  FLockCancel2Command.Parameters[0].Value.SetWideString(DataBaseName);
  FLockCancel2Command.Parameters[1].Value.SetInt32(IdLlave);
  FLockCancel2Command.ExecuteUpdate;
  Result := FLockCancel2Command.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.ReportCompare(NombreReporte: string): Boolean;
begin
  if FReportCompareCommand = nil then
  begin
    FReportCompareCommand := FDBXConnection.CreateCommand;
    FReportCompareCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReportCompareCommand.Text := 'TServerMethods1.ReportCompare';
    FReportCompareCommand.Prepare;
  end;
  FReportCompareCommand.Parameters[0].Value.SetWideString(NombreReporte);
  FReportCompareCommand.ExecuteUpdate;
  Result := FReportCompareCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.FileCompare(Ruta: string; NombreArchivo: string): Boolean;
begin
  if FFileCompareCommand = nil then
  begin
    FFileCompareCommand := FDBXConnection.CreateCommand;
    FFileCompareCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFileCompareCommand.Text := 'TServerMethods1.FileCompare';
    FFileCompareCommand.Prepare;
  end;
  FFileCompareCommand.Parameters[0].Value.SetWideString(Ruta);
  FFileCompareCommand.Parameters[1].Value.SetWideString(NombreArchivo);
  FFileCompareCommand.ExecuteUpdate;
  Result := FFileCompareCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.GetFile(Ruta: string; NombreArchivo: string): string;
begin
  if FGetFileCommand = nil then
  begin
    FGetFileCommand := FDBXConnection.CreateCommand;
    FGetFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetFileCommand.Text := 'TServerMethods1.GetFile';
    FGetFileCommand.Prepare;
  end;
  FGetFileCommand.Parameters[0].Value.SetWideString(Ruta);
  FGetFileCommand.Parameters[1].Value.SetWideString(NombreArchivo);
  FGetFileCommand.ExecuteUpdate;
  Result := FGetFileCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.SetGlobalInteger(Variable: string; Valor: Integer): Boolean;
begin
  if FSetGlobalIntegerCommand = nil then
  begin
    FSetGlobalIntegerCommand := FDBXConnection.CreateCommand;
    FSetGlobalIntegerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetGlobalIntegerCommand.Text := 'TServerMethods1.SetGlobalInteger';
    FSetGlobalIntegerCommand.Prepare;
  end;
  FSetGlobalIntegerCommand.Parameters[0].Value.SetWideString(Variable);
  FSetGlobalIntegerCommand.Parameters[1].Value.SetInt32(Valor);
  FSetGlobalIntegerCommand.ExecuteUpdate;
  Result := FSetGlobalIntegerCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.SetDataUser(Tipo: TClassUser; Reiniciar: Boolean): string;
begin
  if FSetDataUserCommand = nil then
  begin
    FSetDataUserCommand := FDBXConnection.CreateCommand;
    FSetDataUserCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetDataUserCommand.Text := 'TServerMethods1.SetDataUser';
    FSetDataUserCommand.Prepare;
  end;
  if not Assigned(Tipo) then
    FSetDataUserCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FSetDataUserCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FSetDataUserCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Tipo), True);
      if FInstanceOwner then
        Tipo.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSetDataUserCommand.Parameters[1].Value.SetBoolean(Reiniciar);
  FSetDataUserCommand.ExecuteUpdate;
  Result := FSetDataUserCommand.Parameters[2].Value.GetWideString;
end;

function TServerMethods1Client.SetWhere(ProviderName: string; Cadena: string): Boolean;
begin
  if FSetWhereCommand = nil then
  begin
    FSetWhereCommand := FDBXConnection.CreateCommand;
    FSetWhereCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetWhereCommand.Text := 'TServerMethods1.SetWhere';
    FSetWhereCommand.Prepare;
  end;
  FSetWhereCommand.Parameters[0].Value.SetWideString(ProviderName);
  FSetWhereCommand.Parameters[1].Value.SetWideString(Cadena);
  FSetWhereCommand.ExecuteUpdate;
  Result := FSetWhereCommand.Parameters[2].Value.GetBoolean;
end;

function TServerMethods1Client.IsLocked(ProviderName: string): Boolean;
begin
  if FIsLockedCommand = nil then
  begin
    FIsLockedCommand := FDBXConnection.CreateCommand;
    FIsLockedCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FIsLockedCommand.Text := 'TServerMethods1.IsLocked';
    FIsLockedCommand.Prepare;
  end;
  FIsLockedCommand.Parameters[0].Value.SetWideString(ProviderName);
  FIsLockedCommand.ExecuteUpdate;
  Result := FIsLockedCommand.Parameters[1].Value.GetBoolean;
end;

function TServerMethods1Client.StoredProcedure(ProcName: string; Parametros: string; Valores: string; var ProviderName: string): Boolean;
begin
  if FStoredProcedureCommand = nil then
  begin
    FStoredProcedureCommand := FDBXConnection.CreateCommand;
    FStoredProcedureCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStoredProcedureCommand.Text := 'TServerMethods1.StoredProcedure';
    FStoredProcedureCommand.Prepare;
  end;
  FStoredProcedureCommand.Parameters[0].Value.SetWideString(ProcName);
  FStoredProcedureCommand.Parameters[1].Value.SetWideString(Parametros);
  FStoredProcedureCommand.Parameters[2].Value.SetWideString(Valores);
  FStoredProcedureCommand.Parameters[3].Value.SetWideString(ProviderName);
  FStoredProcedureCommand.ExecuteUpdate;
  ProviderName := FStoredProcedureCommand.Parameters[3].Value.GetWideString;
  Result := FStoredProcedureCommand.Parameters[4].Value.GetBoolean;
end;

function TServerMethods1Client.ServerDateTime(Modo: Integer): TDateTime;
begin
  if FServerDateTimeCommand = nil then
  begin
    FServerDateTimeCommand := FDBXConnection.CreateCommand;
    FServerDateTimeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FServerDateTimeCommand.Text := 'TServerMethods1.ServerDateTime';
    FServerDateTimeCommand.Prepare;
  end;
  FServerDateTimeCommand.Parameters[0].Value.SetInt32(Modo);
  FServerDateTimeCommand.ExecuteUpdate;
  Result := FServerDateTimeCommand.Parameters[1].Value.AsDateTime;
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethods1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethods1Client.Destroy;
begin
  FreeAndNil(FDSServerModuleCreateCommand);
  FreeAndNil(FDSServerModuleDestroyCommand);
  FreeAndNil(FConexionPrimariaAfterConnectCommand);
  FreeAndNil(FMonitorDataSetCommand);
  FreeAndNil(FSetSQLTextCommand);
  FreeAndNil(FSetSQLParameterByIndexCommand);
  FreeAndNil(FCreateDataSetCommand);
  FreeAndNil(FDataStructureCommand);
  FreeAndNil(FGetPrefixCommand);
  FreeAndNil(FGetDataBasesInfoCommand);
  FreeAndNil(FFreeDataSetCommand);
  FreeAndNil(FGetSentenceCommand);
  FreeAndNil(FHashMD5Command);
  FreeAndNil(FGetFieldPrimaryKeyCommand);
  FreeAndNil(FFindCommand);
  FreeAndNil(FInitGlobalCommand);
  FreeAndNil(FReloadFilterDataCommand);
  FreeAndNil(FHowManySelectedCommand);
  FreeAndNil(FClearFilterDataCommand);
  FreeAndNil(FGlobalCountCommand);
  FreeAndNil(FGlobalElemCommand);
  FreeAndNil(FGlobalElemByNameCommand);
  FreeAndNil(FSetGlobalElemByNameCommand);
  FreeAndNil(FCheckUnitCommand);
  FreeAndNil(FGetRecordCountCommand);
  FreeAndNil(FGetRecordMinCommand);
  FreeAndNil(FGetRecordMaxCommand);
  FreeAndNil(FHowManyRecsCommand);
  FreeAndNil(FVerifyExistsCommand);
  FreeAndNil(FGetAvailableDatabasesCommand);
  FreeAndNil(FGetLastIdCommand);
  FreeAndNil(FGetLastCodeCommand);
  FreeAndNil(FSetActivityCommand);
  FreeAndNil(FDeleteRecordCommand);
  FreeAndNil(FEraseRecordCommand);
  FreeAndNil(FBeginTransactionCommand);
  FreeAndNil(FCommitTransactionCommand);
  FreeAndNil(FRollBackTransactionCommand);
  FreeAndNil(FInTransactionCommand);
  FreeAndNil(FInitConnectionCommand);
  FreeAndNil(FLockCancelCommand);
  FreeAndNil(FLockCancel2Command);
  FreeAndNil(FReportCompareCommand);
  FreeAndNil(FFileCompareCommand);
  FreeAndNil(FGetFileCommand);
  FreeAndNil(FSetGlobalIntegerCommand);
  FreeAndNil(FSetDataUserCommand);
  FreeAndNil(FSetWhereCommand);
  FreeAndNil(FIsLockedCommand);
  FreeAndNil(FStoredProcedureCommand);
  FreeAndNil(FServerDateTimeCommand);
  inherited;
end;

end.

