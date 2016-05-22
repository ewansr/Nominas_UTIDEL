unit UtfrmEstructuraO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ToolWin, ActnMan, ActnCtrls, Ribbon,StrUtils,
  RibbonLunaStyleActnCtrls,UInteliDialog, DB, DBClient, Grids, DBGrids, AdvMemo;

type
  TConjunto = class
    Padre: TStringList;
    Hijos: TStringList;
    NumItem: Integer;
  end;

  //creamo la clase con sus propiedades
type
  Tcuadro = class
    Panel: tpanel;
    Memo: TAdvMemo;
    nPadre: Integer;
    NumPadres: Integer;
    NumSoy: Integer;
    Hijos: TStringList;
    Nivel: Integer;
    Id: Integer;
    IdPadre: Integer;

  private
    FLeft: Integer;
    FTop: Integer;
  public
    constructor create(pParent: TWinControl);
    destructor Destroy;
  published
    property Left: Integer read FLeft write FLeft;
    property Top: Integer read FTop write FTop;
  end;

type
  TFrmEstructuraO = class(TForm)
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    RibbonPage2: TRibbonPage;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    CbNiveles: TComboBox;
    RibbonGroup4: TRibbonGroup;
    Panel1: TPanel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ScrollBox1: TScrollBox;
    procedure FormCreate(Sender: TObject);
    procedure DibujarFlow(Recalcular: Boolean);
    procedure FormShow(Sender: TObject);
  private
    Arbol: TStringList;
    EspacioMaximo: Integer;
    MaximoHijos: Integer;

  public
    { Public declarations }
  end;

Const
  CuadroHeight = 41;// alto de cuadro
  EspacioHeight = 5; //espaciado entre niveles
  CuadroWidth = 185; //Y    ancho de cuadro
  CuadroZoom = 1;//dado por el scrollbar
  EspacioWidth = 10; //espacio entre paneles


var
  FrmEstructuraO: TFrmEstructuraO;

implementation

uses unit2, clientmoduleunit1;
{$R *.dfm}

{ Tcuadro }

constructor TCuadro.create(pParent: TWinControl);
begin
  //creamos el componente panel y establecemos sus propiedades
  panel:= Tpanel.create(Nil);
  with panel do
  begin
    caption := '';
    Left    := 0;
    Top     := 0;
    Height  := CuadroHeight;
    Width   := CuadroWidth;
    parent  := pParent;
  end;

  //creamos el memo y establecemos sus propiedades
  Memo := TAdvMemo.Create(Nil);
  with Memo do
  begin
    parent         := panel;
    Lines.Text     := '';
    Font.Color     := clBlack;
    tag            := 99;
    Align          := alClient;
    gutter.Visible := false;
    ScrollBars     := ssVertical;
    WordWrap       := wwClientWidth;
    ReadOnly       := true;
  end;

//  memo.OnDblClick := AdvMemoDblClick;

  Hijos := TStringList.Create;
  Hijos.Clear;

  //asignamos propiedades del objeto
  FLeft := 0;
  FTop := 0;
  Nivel := -1;
end;

destructor Tcuadro.Destroy;
begin
  //eliminamos el componente
  Panel.Free;
  Memo.free;
  Hijos.Free
end;

procedure TFrmEstructuraO.DibujarFlow(Recalcular: Boolean);
var
  LocNivel: Integer;

procedure DibujaHijos(Hijos: TStringList);
var
  i,y: Integer;
  LocLeft1, LocLeft2,Num1, Num2: Integer;
begin
  Num2 := 0;
  for i := 0 to Hijos.Count -1 do
  begin
    if Recalcular then
    begin
      try
        Num1 := EspacioMaximo div TCuadro(Hijos.Objects[i]).NumPadres;
      except
        Num1 := 0;
      end;

      LocLeft1 := Trunc((EspacioMaximo / Tcuadro(Hijos.Objects[i]).NumPadres) * (Tcuadro(Hijos.Objects[i]).nPadre -1));
      LocLeft2 := ((Num1 - (CuadroWidth * hijos.count))) div (hijos.count + 1);

      TCuadro(Hijos.Objects[i]).Panel.Top := (EspacioHeight + CuadroHeight) * TCuadro(Hijos.Objects[i]).Nivel;
      TCuadro(Hijos.Objects[i]).Panel.Left := Num2 + LocLeft1 + LocLeft2;
      Num2 := TCuadro(Hijos.Objects[i]).Panel.Left; //+ CuadroWidth;

      if TCuadro(Hijos.Objects[i]).Hijos.Count > 0 then
        DibujaHijos(TCuadro(Hijos.Objects[i]).Hijos);
    end;

  end;
end;

begin
  LocNivel := 0;
  DibujaHijos(Arbol);
end;

procedure TFrmEstructuraO.FormCreate(Sender: TObject);
var
  cdOrg,cdmax:Tclientdataset;
  nivelanterior: string;
  Cuadro: TCuadro;
  i: Integer;
  punto:TPoint;
  espacio,x,y,hijos: integer;
  CadBuscar: String;
  PasoLista: TConjunto;

function BusquedaRecursiva(Lista: TStringList; Buscar: String): TConjunto;
var
  i: Integer;
  Encuentra: Boolean;
  Resultado: TConjunto;
begin
  Try
    Encuentra := False;
    i := 0;
    while (i < Lista.Count) and (Not Encuentra) do
    begin
      Encuentra := (Lista[i] = Buscar);
      if Encuentra then
      begin
        Resultado := TConjunto.Create;
        Resultado.Padre := Lista;
        Resultado.NumItem := i;
        Resultado.Hijos := TCuadro(Lista.Objects[i]).Hijos;
      end
      else
        if TCuadro(Lista.Objects[i]).Hijos <> Nil then
        begin
          Resultado := TConjunto.Create;
          Resultado := BusquedaRecursiva(TCuadro(Lista.Objects[i]).Hijos, Buscar);
        end;
      inc(i);
    end;
  Finally
    Result := Resultado;
  End;
end;

begin
  try
    cdOrg :=  TClientdataset.Create(nil);
    cdorg.RemoteServer := ClientModule1.DSProviderConnection1;
    if not CrearConjunto(cdOrg,'rhu_estructuraorganizacional',ccSelect) then
      raise InteligentConnection.Create('Al consultar estructura rhu_organizacional.');
    cdorg.Open;

    //añadir en el combobox los diferentes niveles
    if cdOrg.RecordCount > 0 then
    begin
      nivelanterior := '';
      cdorg.First;
      while not cdOrg.Eof do
      begin
        if (cdorg.FieldByName('nivel').AsString) <> nivelanterior then
          CbNiveles.Items.Add(cdorg.FieldByName('nivel').AsString);
        nivelanterior := cdorg.FieldByName('nivel').AsString;
        cdorg.next;
      end;
    end;

    // obtener el numero maximo de hijos
    cdmax              :=  TClientdataset.Create(nil);
    cdmax.RemoteServer := ClientModule1.DSProviderConnection1;
    CrearConjunto(cdmax, 'xxx',  ccSelect);

    PonerSentenciaSQL(cdmax.providername, 'select nivelpadre as nivel, max(cuantos) as maxhijos'+
    ' from ( select count(*) as cuantos, nivel - 1 as nivelpadre '+
    ' from rhu_estructuraorganizacional where nivel > 0 group by idpadre) x '+
    ' group by nivelpadre order by nivelpadre');
    cdmax.Open;
    datasource1.DataSet := cdmax;

    MaximoHijos := 1;
    while Not cdMax.Eof do
    begin
      MaximoHijos := MaximoHijos * cdMax.FieldByName('MaxHijos').AsInteger;
      cdMax.Next;
    end;

    // Calcular el espacio Máximo
    EspacioMaximo := (CuadroWidth + EspacioWidth) * MaximoHijos;

    // Armar el árbol de estructura
    Arbol := TStringList.Create;
    for i := 0 to cdmax.RecordCount do
    begin
      // Filtrar los datos de acuerdo a este nivel
      cdOrg.Filtered := False;
      cdOrg.Filter := 'Nivel = ' + IntToStr(i);
      cdOrg.Filtered := True;
      cdOrg.First;

      while not cdOrg.Eof do
      begin
        Cuadro := TCuadro.Create(ScrollBox1);
        Cuadro.Id := cdorg.FieldByName('IdEstructuraOrganizacional').AsInteger;
        Cuadro.IdPadre := cdorg.FieldByName('idpadre').AsInteger;
        Cuadro.Nivel := cdOrg.FieldByName('Nivel').AsInteger;
        // Verificar si tiene padres
        if cdOrg.FieldByName('IdPadre').AsInteger > 0 then
        begin
          // Localizar el padre en la lista
          CadBuscar := 'ID_' + cdOrg.FieldByName('IdPadre').AsString;
          PasoLista := BusquedaRecursiva(Arbol, CadBuscar);
          //si el list paso lista esta asignado asignar propiedades del cuadro y añadir hijos
          if PasoLista <> Nil then
          begin
            Cuadro.nPadre := PasoLista.NumItem + 1;
            Cuadro.NumPadres := PasoLista.Padre.Count;
            Cuadro.NumSoy := PasoLista.Hijos.Count + 1;
            PasoLista.Hijos.AddObject('ID_' + cdOrg.FieldByName('IdEstructuraOrganizacional').AsString, Cuadro);
          end;
        end
        else
        begin
          Cuadro.nPadre := 1;
          Cuadro.NumPadres := 1;
          Cuadro.NumSoy := Arbol.Count + 1;
//          Cuadro.NumSoy := 1;
          Arbol.AddObject('ID_' + cdOrg.FieldByName('IdEstructuraOrganizacional').AsString, Cuadro);
        end;

        cdOrg.Next;
      end;
    end;

    DibujarFlow(True);

  except
    on e:InteligentConnection do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Error de conexión al servidor:', e.Message, mtError, [mbOk], 0);
    end;

    on e:InteligentException do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Error al abrir la ventana por el siguiente motivo:', e.Message, mtError, [mbOk], 0);
    end;

    on e:exception do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Error inesperado:', e.Message, mtError, [mbOk], 0);
    end;
  end;

end;

procedure TFrmEstructuraO.FormShow(Sender: TObject);
begin
    ClientModule1.ComponentColor(self);
end;

end.
