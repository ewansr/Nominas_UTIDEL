unit UTCallbacksItems;

interface
uses DBXCommon,DBXJSON,DSHTTPCommon,SysUtils;

type
    TProcedureMsjExecute= procedure(const AValue: string);


    TCallbackClient = class;

      TCallbackClient = class(TDBXCallback)
      private
        FChannelName: string;
        FClientName: string;
        FCallbackName: string;
        FSession: string;
        FUsuario: String;
        FDataBase: String;
        FTipo: String;
        FFormProcedure:TProcedureMsjExecute;

      public
        constructor Create(const AChannelName, ACallbackName, AClientName, Asession: string;FormProcedure:TProcedureMsjExecute);
        destructor Destroy; override;
        function Execute(const Arg: TJSONValue): TJSONValue; overload; override;
        property ChannelName: string read FChannelName write FChannelName;
        property ClientName: string read FClientName write FClientName;
        property CallbackName: string read FCallbackName write FCallbackName;
        property Session: string read FSession write FSession;
        property Usuario: string read FUsuario write FUsuario;
        property DataBase: string read FDataBase write FDataBase;
        property Tipo: string read FTipo write FTipo;
      end;

      TCallbackItem = class
      public
        FCallback: TCallbackClient;
        FChannel: TDSClientCallbackChannelManager;
        constructor Create(AChannel: TDSClientCallbackChannelManager; ACallback: TCallbackClient);
      end;

      TLInkItem = class
      private
         FFilenameOrigen:TFileName;
         FFilenameDestino:TFileName;
         FEstatus:string;
         FIControl:Integer;
      public
         property Estatus:string read FEstatus write FEstatus;
         property IControl:Integer read FIControl write FIControl;
         property FilenameOrigen:TFileName read FFilenameOrigen write FFilenameOrigen;
         property FilenameDestino:TFileName read FFilenameDestino write FFilenameDestino;
         constructor Create(const AFilenameOrigen:string);
      end;

const
     Separa = '!';

implementation

function NumItems(const cadena:string;const separador:char):integer;
var
  res,Npos:integer;
  salir:boolean;
  cadAux:string;
begin
  res:=0;
  salir:=false;
  cadAux:=cadena;
  while not salir do
  begin
    Npos:=pos(separador,cadAux);
    cadaux:=copy(cadaux,Npos+1,length(cadaux));
    if Npos<>0 then
      Inc(res)
    else
    begin
      if res<>0 then
        inc(res);
      salir:=true;
    end;
  end;
  result:=res;
end;

function TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
var
  Item,CadAux:string;
  Npos,auxPos:integer;
  salir:boolean;
begin
  Item:='';
  cadAux:=cadena;
  salir:=false;
  auxPos:=0;
  while not salir do
  begin
    Npos:=pos(separador,cadaux);
    if Npos<>0 then
    begin
      item:=copy(cadAux,1,Npos-1);
      cadaux:=copy(cadaux,Npos+1,length(cadaux));
      inc(auxPos);
      if auxpos=posicion then
        salir:=true;
    end
    else
    begin
      inc(auxPos);
      if auxpos=posicion then
        item:=cadAux
      else item:='';
      Salir:=true;
    end;
  end;
  result:=trim(item);
end;

constructor TCallbackItem.Create(AChannel: TDSClientCallbackChannelManager;
  ACallback: TCallbackClient);
begin
  FCallback := ACallback;
  FChannel := AChannel;
end;

constructor TCallbackClient.Create(const AChannelName, ACallbackName, AClientName, Asession: string;FormProcedure:TProcedureMsjExecute);
begin
  inherited Create;
  FChannelName := AChannelName;
  FCallbackName := ACallbackName;
  FClientName := AClientName;
  FUsuario := TraerItem(FClientName, Separa, 2);
  FDataBase := TraerItem(FClientName, Separa, 3);
  FTipo := TraerItem(FClientName, Separa, 4);
  Fsession := Asession;
  FFormProcedure:=FormProcedure;
end;

destructor TCallbackClient.Destroy;
begin
     inherited;
end;

function TCallbackClient.Execute(const Arg: TJSONValue): TJSONValue;
begin
  FFormProcedure(Format('ChannelLocal=%s° CallbackLocal=%s° ClientLocal=%s° %s',
                 [FChannelName, FCallbackName, FClientName,Arg.ToString]));
  Result := TJSONTrue.Create;
end;

constructor TLInkItem.Create(const AFilenameOrigen:string);
begin
    FFilenameOrigen:=AFilenameOrigen;
end;

end.
