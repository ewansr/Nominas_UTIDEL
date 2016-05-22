unit InterClases;

interface

Uses
  ExtCtrls, ZConnection, Classes, AdvGlowButton, Controls;

Type
  TMyConnection = Class(TZConnection)
  private
    FLogicalName: String;
    FComment: String;
    constructor Create(AOwner: TComponent); override;
  public
    property LogicalName: string read FLogicalName write FLogicalName;
    property CloseComment: String read FComment write FComment;
  End;

  // Clase para la información del cliente
  TClassUser = class
    Usuario: String;
    Nombre: String;
    IP: String;
    Cargo: String;
    NombreUnico: String;
    Departamento: String;
    DBNombreFisico: String;
    DBNombreLogico: String;
    DBServidor: String;
    Desconectando: TPanel;
    CuantosAvisos: Byte;
    RestaTiempo: Integer;
    Ciclos: Integer;
    AcumulaCiclos: Integer;
    CuentaCierre: Integer;
    InformarCada: Integer;
    Constructor Create;
  end;

  TMyAdvGlowButton = class(TAdvGlowButton)
  Private
    FStrTag: String;
  public
    property StrTag: String read FStrTag write FStrTag;
  end;

implementation

{ Class: TMyConnection }
Constructor TMyConnection.Create(AOwner: TComponent);
begin
  Inherited;

  FLogicalName := '';
end;

Constructor TClassUser.Create;
begin
  Usuario        := '';
  Nombre         := '';
  IP             := '';
  Cargo          := '';
  Departamento   := '';
  DBNombreFisico := '';
  DBNombreLogico := '';
  DBServidor     := '';
  Desconectando  := Nil;
end;

end.
