unit UEstructuraDatos;

interface

Uses
  Classes, DB;

Type
  TTiposCampo = (TCInteger, TCFloat, TCDate, TCDateTime, TCTime, TCYear, TCString, TCBlob, TCText, TCENUM);
  TEDAntesDespues = (EDADAntes, EDADDespues, MEListaErrores, MEPrimerError);

  TCMCCOpciones = (CCOOpenAntes, CCOOpenDespues, CCOPostAntes, CCOPostDespues, CCOListaErrores, CCOPrimerError);
  TSetCMCCOpciones = Set of TCMCCOpciones;

  TElementos = class
    Valores: TStringList;
    constructor Create;
    destructor Destroy;
    procedure Add(Valor: String);
    function IndexOf(NombreElemento: String): Integer;
  private
    function fItems(Index: Integer): String;
    function fCuantosElementos: Integer;
  public
    property Items[Index: Integer]: String read fItems;
    property CuantosElementos: Integer read fCuantosElementos;
  end;

  TDatosCampo = class
    Posicion: Integer;
    Default: Variant;
    NotNull: Boolean;
    Tipo: TTiposCampo;
    Largo: Int64;
    Precision: Int64;
    LlavePrimaria: Boolean;
    Unico: Boolean;
    Externo: Boolean;
    Descripcion: String;
    Elementos: TElementos;
    constructor Create;
    destructor Destroy;
  end;

  TItemTablaData = class
    Lista: TStringList;
    ItemIndex: Integer;
    Nombre: String;
    Datos: TDatosCampo;
    constructor Create;
    destructor Destroy;
  public
    procedure Delete;
  end;

  TProcBefore = Procedure(DataSet: TDataSet) of Object;

  TItemTabla = class
    Lista: TStringList;
    ItemIndex: Integer;
    NombreTabla: String;
    pItem: TStringList;
    BeforeOpen: TProcBefore;
    BeforePost: TProcBefore;
    MomentoBeforeOpen: TEDAntesDespues;
    MomentoBeforePost: TEDAntesDespues;
    ModoErrores: TEDAntesDespues;
    Constructor Create;
    Destructor Destroy;
    function Add(Const NombreCampo: String; MomentoBeforeOpen: TEDAntesDespues = EDADDespues; MomentoBeforePost: TEDAntesDespues = EDADDespues): Integer;
    function Campo(Const NombreCampo: String): TItemTablaData;
    procedure Delete;
  private
    function ValidBefore(Cual: Byte): Boolean;
    function ValidBeforeOpen: Boolean;
    function ValidBeforePost: Boolean;
    function fCuantosCampos: Integer;
    function fNombreCampo(Index: Integer): String;
  public
    Property IsBeforeOpen: Boolean Read ValidBeforeOpen;
    Property IsBeforePost: Boolean Read ValidBeforePost;
    Property CuantosCampos: Integer Read fCuantosCampos;
    Property NombreCampo[Index: Integer]: String read fNombreCampo;
  end;

  TTablas = class
    ItemIndex: Integer;
    pTabla: TStringList;
    Constructor Create;
    Destructor Destroy;
    function Add(const NombreTabla: string; Opciones: TSetCMCCOpciones =
      [CCOOpenDespues, CCOPostDespues, CCOPrimerError]): Integer;
    function Tabla(Const NombreTabla: String): TItemTabla;
    function IndexOf(Const NombreTabla: String): Integer;
  end;

var
  MisTablas: TTablas;
  EDContinuarGlobal: Boolean;

implementation

constructor TDatosCampo.Create;
begin
  Elementos := TElementos.Create;
end;

destructor TDatosCampo.Destroy;
begin
  Elementos.Destroy;
  Elementos.Free;
end;

constructor TElementos.Create;
begin
  Valores := TStringList.Create;
  Valores.Clear;
end;

destructor TElementos.Destroy;
begin
  Valores.Clear;
  Valores.Free;
end;

procedure TElementos.Add(Valor: string);
begin
  Valores.Add(Valor);
end;

function TElementos.fItems(Index: Integer): String;
begin
  if Index < Valores.Count then
    Result := Valores[Index]
  else
    Result := '';
end;

function TElementos.fCuantosElementos: Integer;
begin
  Result := Valores.Count;
end;

function TElementos.IndexOf(NombreElemento: String): Integer;
begin
  Result := Valores.IndexOf(NombreElemento);
end;

function TItemTabla.ValidBefore(Cual: Byte): Boolean;
begin
  case Cual of
    1: Result := Assigned(TItemTabla(Lista.Objects[ItemIndex]).BeforeOpen);
    2: Result := Assigned(TItemTabla(Lista.Objects[ItemIndex]).BeforePost)
  else
    Result := False;
  end;
end;

function TItemTabla.ValidBeforeOpen: Boolean;
begin
  Result := ValidBefore(1);   // 1 = Open, para before open
end;

function TItemTabla.ValidBeforePost: Boolean;
begin
  Result := ValidBefore(2);   // 2 = Post, para before post
end;

function TItemTabla.fCuantosCampos: Integer;
begin
  Try
    Result := pItem.Count;
  Except
    Result := -1;
  End;
end;

function TItemTabla.fNombreCampo(Index: Integer): String;
begin
  Result := pItem[Index];
end;

Constructor TItemTabla.Create;
begin
  pItem := TStringList.Create;
  pItem.Clear;
end;

Destructor TItemTabla.Destroy;
begin
  pItem.Clear;
  pItem.Free;
end;

function TItemTabla.Add(Const NombreCampo: String; MomentoBeforeOpen: TEDAntesDespues = EDADDespues; MomentoBeforePost: TEDAntesDespues = EDADDespues): Integer;
var
  locData: TItemTablaData;
  Index: Integer;
begin
  locData := TItemTablaData.Create;
  locData.Nombre := NombreCampo;
  locData.Lista := pItem;

  Index := pItem.AddObject(NombreCampo, locData);
  locData.ItemIndex := Index;
  Result := Index;
end;

function TItemTabla.Campo(const NombreCampo: string): TItemTablaData;
var
  pPos: Integer;
begin
  pPos := pItem.IndexOf(NombreCampo);
  if pPos >= 0 then
    Result := TItemTablaData(pItem.Objects[pPos])
  else
    Result := Nil
end;

procedure TItemTabla.Delete;
begin
  Lista.Delete(ItemIndex);
end;

Constructor TTablas.Create;
begin
  pTabla := TStringList.Create;
  EDContinuarGlobal := True;
end;

Destructor TTablas.Destroy;
begin
  pTabla.Destroy;
end;

function TTablas.Add(const NombreTabla: string; Opciones: TSetCMCCOpciones =
  [CCOOpenDespues, CCOPostDespues, CCOPrimerError]): Integer;
var
  locItem: TItemTabla;
  Index: Integer;
begin
  locItem := TItemTabla.Create;
  locItem.Lista := pTabla;

  if CCOOpenAntes in Opciones then
    locItem.MomentoBeforeOpen := EDADAntes
  else
    locItem.MomentoBeforeOpen := EDADDespues;

  if CCOOpenAntes in Opciones then
    locItem.MomentoBeforePost := EDADAntes
  else
    locItem.MomentoBeforePost := EDADDespues;

  if CCOListaErrores in Opciones then
    locItem.ModoErrores := MEListaErrores
  else
    locItem.ModoErrores := MEPrimerError;

  Index := pTabla.AddObject(NombreTabla, locItem);
  locItem.ItemIndex := Index;
  Result := Index;
end;

function TTablas.Tabla(const NombreTabla: string): TItemTabla;
var
  pPos: Integer;
begin
  pPos := pTabla.IndexOf(NombreTabla);
  if pPos >= 0 then
    Result := TItemTabla(pTabla.Objects[pPos])
  else
    Result := Nil
end;

function TTablas.IndexOf(const NombreTabla: string): Integer;
begin
  Result := pTabla.IndexOf(NombreTabla);
end;

constructor TItemTablaData.Create;
begin
  Datos := TDatosCampo.Create;
end;

destructor TItemTablaData.Destroy;
begin
  Datos.Destroy;
end;

procedure TItemTablaData.Delete;
begin
  // Eliminar el Campo indicado
  Lista.Delete(ItemIndex);
end;

end.
