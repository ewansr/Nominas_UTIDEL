unit UTComunicationProtocol;

interface

Uses
  classes, Generics.Collections, DSHTTPCommon, DBXJSON, DSProxy, SysUtils,
  DBXCommon, SqlExpr, UTCallbacksItems;

     type
         TComunicationProtocol=class(TDSClientCallbackChannelManager)
         private
                FConnection: TDBXConnection;
                FClientSesion:string;
                FIdsesion:string;
                LsCallbacks:TStringList;

         public
               function ChannelBroadCast(const AMessage: string): Boolean;overload;
               function ChannelBroadCast(const AChannel,AType,ACode,AFrom: string; const AMessage: string): Boolean; overload;
               function ClientNotify(const AChannel, ACallback, AClient, ASession, AType,ACode,AFrom: string; const AMessage: string): Boolean;
               function ValidarCallBack(Var PItem: TCallbackClient):Boolean;
               function RegisterCallback(const CallbackId: String; const Callback: TCallbackClient): boolean; overload;
               Procedure RegisterAndSendMsg(Var PCallback:TCallbackClient;paramsMessage:TstringList);
               procedure RemoveChannel;
         published
                  constructor Create(const AClientName,AIdSesion,AServerChannelName: string;Connexion:TsqlConnection);
                  destructor Destroy;
         end;

implementation

destructor TComunicationProtocol.Destroy;
begin
     LsCallbacks.Free;
     inherited destroy;
end;

procedure TComunicationProtocol.RemoveChannel;
var
  I: Integer;
  LItem: TCallbackItem;
begin

  for I :=LsCallbacks.Count - 1 downto 0 do
  begin
    LItem := TCallbackItem(LsCallbacks.Objects[I]);
    LsCallbacks.Delete(I);
  end;

  I := LsCallbacks.IndexOfObject(self);
  if I >= 0 then
    LsCallbacks.Delete(I);
end;

function TComunicationProtocol.RegisterCallback(const CallbackId: string; const Callback:TCallbackClient):Boolean;
var
   LItem: TCallbackItem;
begin
     inherited RegisterCallback(CallbackId,Callback);
     LItem := TCallbackItem.Create(self,Callback);
     LsCallbacks.AddObject(Callback.CallbackName,LItem);
end;


function TComunicationProtocol.ValidarCallBack(var PItem: TCallbackClient):Boolean;
var
   x:Integer;
begin
     x := LsCallbacks.IndexOf(PItem.CallbackName);
     Result:=True;
     if x=-1 then
     begin
          try
             RegisterCallback(PItem.CallbackName,PItem);
          except
                Result:=False;
          end;
          LsCallbacks.AddObject(PItem.CallbackName,PItem);
     end;
end;

Constructor TComunicationProtocol.Create(const AClientName,AIdSesion, AServerChannelName: string;Connexion:TSQLConnection);
var
  posParam:Integer;
  sprotocol:string;
begin
     inherited Create(nil);
     FClientSesion:=AClientName;
     FIdsesion:=AIdSesion;
     FConnection:=Connexion.DBXConnection;
     ChannelName := AServerChannelName;
     ManagerId := AClientName;
     DSHostname := Connexion.Params.Values['Hostname'];
     DSPort := Connexion.Params.Values['port'];
     DSPath := Connexion.Params.Values['UrlPath'];
     CommunicationProtocol :=Connexion.Params.Values['communicationProtocol'];
     LsCallbacks:=TStringList.Create;
//     OnServerConnectionTerminate := OnServerConnectionTerminate;
//     OnServerConnectionError := OnServerConnectionError;
end;

procedure TComunicationProtocol.RegisterAndSendMsg(Var PCallback: TCallbackClient; paramsMessage: TStringList);
var
   LItem: TCallbackItem;
begin
     RegisterCallback(PCallback.CallbackName,PCallback);
     LItem := TCallbackItem.Create(self,PCallback);
     LsCallbacks.AddObject(PCallback.CallbackName,LItem);
     ClientNotify(PCallback.ChannelName,PCallback.CallbackName, paramsMessage.Values['from'],
                      paramsMessage.Values['Session'],paramsMessage.Values['Type'],
                      paramsMessage.Values['Code'],paramsMessage.Values['IdSesion'],paramsMessage.Values['Message']);
end;

function TComunicationProtocol.ChannelBroadCast(const AMessage: string): Boolean;
var
  LMessage: TJSONString;
begin
     Result := False;
     LMessage := TJSONString.Create(Format('Client broadcast Channel: %s° Message: %s',
                                           [ChannelName, AMessage]));
    try
      Result := BroadcastToChannel(LMessage)
    finally
      LMessage.Free;
    end;
end;

function TComunicationProtocol.ChannelBroadCast(const AChannel,AType,ACode,AFrom: string; const AMessage: string): Boolean;
var
  LClient: TDSAdminClient;
  LMessage: TJSONString;
begin
  Result := False;
  LClient := TDSAdminClient.Create(FConnection, False);
  try
    LMessage := TJSONString.Create(Format('Channel=%s° Type=%s° Code=%s° From=%s° Message=%s° Session=%s',
      [AChannel,AType,ACode,AFrom,AMessage,FIdsesion]));
    try
      Result := LClient.BroadcastToChannel(AChannel, LMessage)
    finally
      LMessage.Free;
    end;
  finally
    LClient.Free;
  end;
end;

function TComunicationProtocol.ClientNotify(const AChannel, ACallback, AClient, ASession, AType,ACode,AFrom: string; const AMessage: string): Boolean;
var
  LClient: TDSAdminClient;
  LMessage: TJSONString;
  LResponse: TJSONValue;
begin
  Result := False;
  LClient := TDSAdminClient.Create(FConnection, False);
  try
    LMessage := TJSONString.Create(Format('From=%s° Channel=%s° Callback=%s° Client=%s° Type=%s° Code=%s° Message=%s° Session=%s ',
      [AFrom,AChannel, ACallback, AClient,AType,ACode ,AMessage,ASession]));
    try
      Result := LClient.NotifyCallback(AChannel, AClient, ACallback, LMessage,
        LResponse);
      try
        if LResponse <> nil then
          //LogValue(Format('Client response: %s', [LResponse.ToString]))
        else
          //LogValue(Format('Client response: %s', ['nil']))
      finally
        LResponse.Free;
      end;
    finally
      LMessage.Free;
    end;
  finally
    LClient.Free;
  end;
end;

end.
