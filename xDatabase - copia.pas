unit xDatabase;

interface

uses
  SysUtils, Classes, Variants, DB, JvMemoryDataset; //, RxMemDS;

type
    TString = class(TObject)
    private
      fStr: String;
    public
      constructor Create(const AStr: String) ;
      property Str: String read FStr write FStr;
    end;

    TVariant = class(TObject)
    private
      fValor: Variant;
    public
      constructor Create(const AVar: Variant) ;
      property Valor: Variant read fValor write fValor;
    end;

    TLista = class
    private
      key: TStringList;
      value: TList;
      function GetValue(Index: String): variant;
      procedure SetValue(Index:String; pValue:variant);
      function GetCount(): integer;
    public
      property Valor[Index: String]: variant read GetValue write SetValue; default;
      property Count: integer read GetCount;
      constructor Create();
      Destructor  Destroy; override;
    end;

    TListaObjeto = class
    private
      key: TStringList;
      value: TList;
      function GetValue(Index: String): TObject;
      procedure SetValue(Index:String; pValue:TObject);
      function GetCount(): integer;
    public
      property Valor[Index: String]: TObject read GetValue write SetValue; default;
      property Count: integer read GetCount;
      constructor Create();
      Destructor  Destroy; override;
    end;

function GetCurrentRecord(Dataset: TDataSet): TLista;
procedure DataSet2MemoryData(DataSet: TDataSet; MemoryData: TJvMemoryData); Overload;
//procedure DataSet2MemoryData(DataSet: TDataSet; MemoryData: TRxMemoryData); Overload;
function NVL(Valor: Variant; ValorDefault: Variant): Variant;

implementation

Constructor TString.Create(const AStr: String) ;
 begin
    inherited Create;
    fStr := AStr;
 end;

Constructor TVariant.Create(const AVar: Variant) ;
 begin
    inherited Create;
    fValor := AVar;
 end;

Constructor TLista.Create;
begin
  key := TStringList.Create();
  value := TList.Create();
  key.Sorted := false;
end;

Destructor TLista.Destroy;
begin
  key.Clear;
  value.Clear;
end;

function TLista.GetValue(Index: string): variant;
Var
  NewIndex: integer;
  tmp: TVariant;
begin
  Index := LowerCase(Index); // poner a minusculas para que no haya problemas
  NewIndex := key.IndexOf(Index);
  if NewIndex = -1 then  // no lo encontró
    result := NULL
  else
  begin
    tmp := value[NewIndex];
    result := tmp.Valor;
  end;
end;

procedure TLista.SetValue(Index: string; pValue: Variant);
Var
  tmp: TVariant;
  i :integer;
begin
  // Buscar si existe la llave
  i := Key.IndexOf(Index);
  if i >= 0  then
    value[i] := TVariant.Create(pValue)
  else
  begin
    Key.Add(Index);
    tmp := TVariant.Create(pValue);
    value.Add(tmp);
  end;
  //result := true;  // Agregar algunas validaciones para la variable de regreso
end;

function TLista.GetCount(): Integer;
begin
  result := key.Count;
end;

function GetCurrentRecord(Dataset: Tdataset): TLista;
var
  i      : Integer;
  MiLista : TLista;
begin
  if not(Dataset.EoF) then
  begin
    // Crear el objeto
    MiLista := TLista.Create();
    // Leer los valores en la lista
    for i := 0 to (DataSet.Fieldcount-1) do
    begin
      MiLista.SetValue(LowerCase(Dataset.Fields[i].FieldName),DataSet.fields[i].Value);
    end;
  end;
  result := MiLista;
end;

procedure DataSet2MemoryData(DataSet: TDataSet; MemoryData: TJvMemoryData);
begin
  DataSet.First;
  //memorydata := TJvMemoryData.Create(nil);
  //memorydata.Open;
  memorydata.LoadFromDataSet(DataSet,DataSet.RecordCount,JvMemoryDataset.lmCopy,true);
  memoryData.First;
  {memorydata := TJvMemoryData.Create(nil);
  memorydata.FieldDefs.Clear;
  memorydata.FieldDefs.Assign(DataSet.FieldDefs);
  memorydata.Open;
  DataSet.First;
  while not DataSet.eof do
  begin
    memorydata.Insert;
    for j := 0 to DataSet.FieldCount - 1 do
    begin
      memorydata.Fields[j].AsVariant := DataSet.Fields[j].AsVariant;
    end;
    memorydata.post;
    DataSet.Next;
  end;}
end;

{
procedure DataSet2MemoryData(DataSet: TDataSet; MemoryData: TRxMemoryData);
begin
  DataSet.First;
  //memorydata := TRxMemoryData.Create(nil);
  //memorydata.Open;
  memorydata.LoadFromDataSet(DataSet,DataSet.RecordCount,RxMemDS.lmCopy);
  memoryData.First;
  {memorydata.FieldDefs.Clear;
  memorydata.FieldDefs.Assign(DataSet.FieldDefs);
  memorydata.Open;
  DataSet.First;
  while not DataSet.eof do
  begin
    memorydata.Insert;
    for j := 0 to DataSet.FieldCount - 1 do
    begin
      memorydata.Fields[j].AsVariant := DataSet.Fields[j].AsVariant;
    end;
    memorydata.post;
    DataSet.Next;
  end;}
//end;

// Función para regresar un valor valido en caso de que el valor de la variable sea nulo
function NVL(Valor: Variant; ValorDefault: Variant): Variant;
begin
  if Valor = NULL then
    result := ValorDefault
  else
    result := Valor;
end;

// ********************************************************
// ***   Implementación clase TListaObjeto
// ********************************************************
Constructor TListaObjeto.Create;
begin
  key := TStringList.Create();
  value := TList.Create();
  key.Sorted := false;
end;

Destructor TListaObjeto.Destroy;
begin
  key.Clear;
  value.Clear;
end;

function TListaObjeto.GetValue(Index: string): TObject;
Var
  NewIndex: integer;
begin
  Index := LowerCase(Index); // poner a minusculas para que no haya problemas
  NewIndex := key.IndexOf(Index);
  if NewIndex = -1 then  // no lo encontró
    result := nil
  else
  begin
    result := value[NewIndex];
  end;
end;

procedure TListaObjeto.SetValue(Index: string; pValue: TObject);
Var
  i :integer;
begin
  // Buscar si existe la llave
  i := Key.IndexOf(Index);
  if i >= 0  then
    value[i] := pValue
  else
  begin
    Key.Add(Index);
    value.Add(pValue);
  end;
  //result := true;  // Agregar algunas validaciones para la variable de regreso
end;

function TListaObjeto.GetCount(): Integer;
begin
  result := key.Count;
end;
// ********************************************************
// ***   Fin implementación clase TListaObjeto
// ********************************************************

end.
