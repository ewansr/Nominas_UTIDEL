//
// Created by the DataSnap proxy generator.
// 11/02/2012 11:17:30 a.m.
//

unit ClientClassesUnit1;

interface

uses DBXCommon, DBXClient, DBXJSON, DSProxy, Classes, SysUtils, DB, SqlExpr, DBXDBReaders, DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FMonitorDataSetCommand: TDBXCommand;
    FSetSQLTextCommand: TDBXCommand;
    FSetSQLParameterByIndexCommand: TDBXCommand;
    FCreateDataSetCommand: TDBXCommand;
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
    FCheckUnitCommand: TDBXCommand;
    FGetRecordCountCommand: TDBXCommand;
    FGetRecordMinCommand: TDBXCommand;
    FGetRecordMaxCommand: TDBXCommand;
    FHowManyRecsCommand: TDBXCommand;
    FGetAvailableDatabasesCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure MonitorDataSet;
    function SetSQLText(Nombre: string; Value: string): Boolean;
    function SetSQLParameterByIndex(Nombre: String; index: integer; Value: string): Boolean;
    function CreateDataSet(pDatabase: string; Tabla: string; var NameDataSet: string; ConjuntoTipo: string): Boolean;
    function FreeDataSet(NameDataSet: string): Integer;
    function GetSentence(pDataBase: string; Tabla: string; Tipo: string): string;
    function HashMD5(Str: string): string;
    function GetFieldPrimaryKey(pDatabase: string; Tabla: string): string;
    function Find(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function InitGlobal(pDatabase: string; Codigo: string; Parametros: string; Var NameDataSet: String): Boolean;
    function ReloadFilterData(NameDataSet: string; Variables: string; Valores: string): Boolean;
    function HowManySelected(NameDataSet: string): Integer;
    function ClearFilterData(NameDataSet: string): Boolean;
    function GlobalCount: Integer;
    function GlobalElem(Numero: Integer): string;
    function GlobalElemByName(Name: string): string;
    function CheckUnit(pDatabase: string; var NameDataSet: string; Medida: string): Integer;
    function GetRecordCount(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function GetRecordMin(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function GetRecordMax(pDatabase: string; Tabla: string; Campos: string; Valores: string): Integer;
    function HowManyRecs(pDatabase: string; Tabla: string; Variables: string; Valores: string): Integer;
    function GetAvailableDatabases(CualEstado: Byte): string;
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

function TServerMethods1Client.SetSQLParameterByIndex(Nombre: String; index: integer; Value: string): Boolean;
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
  FSetSQLParameterByIndexCommand.Parameters[2].Value.SetWideString(value);
  FSetSQLParameterByIndexCommand.ExecuteUpdate;
  Result := FSetSQLTextCommand.Parameters[3].Value.GetBoolean;
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

function TServerMethods1Client.GetSentence(pDataBase: string; Tabla: string; Tipo: string): string;
begin
  if FGetSentenceCommand = nil then
  begin
    FGetSentenceCommand := FDBXConnection.CreateCommand;
    FGetSentenceCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetSentenceCommand.Text := 'TServerMethods1.GetSentence';
    FGetSentenceCommand.Prepare;
  end;
  FGetSentenceCommand.Parameters[0].Value.SetWideString(pDataBase);
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

function TServerMethods1Client.InitGlobal(pDatabase: string; Codigo: string; Parametros: string; Var NameDataSet: String): Boolean;
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

function TServerMethods1Client.ReloadFilterData(NameDataSet: string; Variables: string; Valores: string): Boolean;
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
  FReloadFilterDataCommand.ExecuteUpdate;
  Result := FReloadFilterDataCommand.Parameters[3].Value.GetBoolean;
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

function TServerMethods1Client.HowManyRecs(pDatabase: string; Tabla: string; Variables: string; Valores: string): Integer;
begin
  if FHowManyRecsCommand = nil then
  begin
    FHowManyRecsCommand := FDBXConnection.CreateCommand;
    FHowManyRecsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FHowManyRecsCommand.Text := 'TServerMethods1.HowManyRecs';
    FHowManyRecsCommand.Prepare;
  end;
  FHowManyRecsCommand.Parameters[0].Value.SetWideString(pDatabase);
  FHowManyRecsCommand.Parameters[1].Value.SetWideString(Tabla);
  FHowManyRecsCommand.Parameters[2].Value.SetWideString(Variables);
  FHowManyRecsCommand.Parameters[3].Value.SetWideString(Valores);
  FHowManyRecsCommand.ExecuteUpdate;
  Result := FHowManyRecsCommand.Parameters[4].Value.GetInt32;
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
  FreeAndNil(FMonitorDataSetCommand);
  FreeAndNil(FSetSQLTextCommand);
  FreeAndNil(FSetSQLParameterByIndexCommand);
  FreeAndNil(FCreateDataSetCommand);
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
  FreeAndNil(FCheckUnitCommand);
  FreeAndNil(FGetRecordCountCommand);
  FreeAndNil(FGetRecordMinCommand);
  FreeAndNil(FGetRecordMaxCommand);
  FreeAndNil(FHowManyRecsCommand);
  FreeAndNil(FGetAvailableDatabasesCommand);
  inherited;
end;

end.

