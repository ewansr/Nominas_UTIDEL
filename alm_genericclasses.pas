unit alm_genericclasses;

interface

uses
  Classes, SysUtils, ClientModuleUnit1, StrUtils;

type
  // Clases para manejo de firmantes
  TFirmante = class
    private
      _id: Integer;
      _titulo: string;
      _nombre: string;
      _puesto: string;
      _departamento: string;
    public
      property Id: Integer read _id write _id;
      property Titulo: string read _titulo write _titulo;
      property Nombre: string read _nombre write _nombre;
      property Puesto: string read _puesto write _puesto;
      property Departamento: string read _departamento write _departamento;
  end;

  TListaFirmantes = class
    private
      _listaid: TStringList;
      _listatitulo: TStringList;
      _listanombre: TStringList;
      _listapuesto: TStringList;
      _listadepartamento: TStringList;
      function _flistaid: String;
      function _flistatitulo: String;
      function _flistanombre: String;
      function _flistapuesto: String;
      function _flistadepartamento: String;
      function GetItem(index: Integer): TFirmante;
      function _count: Integer;
    public
      property ListaId: string read _flistaid;
      property ListaTitulo: string read _flistatitulo;
      property ListaNombre: string read _flistanombre;
      property ListaPuesto: string read _flistapuesto;
      property ListaDepartamento: string read _flistadepartamento;
      property Item[index: integer]: TFirmante read GetItem;
      property Count: Integer read _count;
      procedure Add(Firmante: TFirmante);
      procedure LoadData (ListaID, ListaTitulo, ListaNombre, ListaPuesto, ListaDepartamento: string);
      procedure Clear;
      constructor create;
      destructor destroy;
  end;

  TCotizacion = class
  public
    idCotizacion: Integer;
    idSolicitud: Integer;
    idOrganizacion: Integer;
    idciudad: Integer;
    titulociudad: string;
    tituloestado: string;
    titulopais: string;
    Serie: string;
    idProveedor: Integer;
    NombreProveedor: string;
    RazonSocial: String;
    Calificacion: Integer;
    Modificable: Boolean;
  end;

function GetSerie(cadena: string; anio: Integer; digitos: integer): string;


implementation

{$REGION 'TListaFirmantes'}
constructor TListaFirmantes.create;
begin
  _listaid := TStringList.Create;
  _listatitulo := TStringList.Create;
  _listanombre := TStringList.Create;
  _listapuesto := TStringList.Create;
  _listadepartamento := TStringList.Create;
end;

destructor TListaFirmantes.destroy;
begin
  _listaid.Free;
  _listatitulo.Free;
  _listanombre.Free;
  _listapuesto.Free;
  _listadepartamento.Free;
end;

procedure TListaFirmantes.Add(Firmante: TFirmante);
begin
  _listaid.Add(IntToStr(Firmante.Id));
  _listatitulo.Add(Firmante.Titulo);
  _listanombre.Add(Firmante.Nombre);
  _listapuesto.Add(Firmante.Puesto);
  _listadepartamento.Add(Firmante.Departamento);
end;

procedure TListaFirmantes.LoadData(ListaID: string; ListaTitulo: string; ListaNombre: string; ListaPuesto: string; ListaDepartamento: string);
begin
  _listaid.Delimiter := '|';
  _listaid.DelimitedText := ListaID;
  _listatitulo.Delimiter := '|';
  _listatitulo.DelimitedText := ListaTitulo;
  _listanombre.Delimiter := '|';
  _listanombre.DelimitedText := ListaNombre;
  _listapuesto.Delimiter := '|';
  _listapuesto.DelimitedText := ListaPuesto;
  _listadepartamento.Delimiter := '|';
  _listadepartamento.DelimitedText := ListaDepartamento;
end;

function TListaFirmantes.GetItem(index: Integer): TFirmante;
var
  Firmante: TFirmante;
  ErrorPos: Integer;
  Valor: Integer;
begin
  if (index <= _listaid.Count - 1) and (index >= 0) then
  begin
    Firmante := TFirmante.Create;
    with Firmante do
    begin
      val(_listaid[index],Valor,ErrorPos);
      if ErrorPos > 0 then
        Id := -1  // si es un valor que no se puede convertir a número
      else
        Id := Valor;
      Titulo := _listatitulo[index];
      Nombre := _listanombre[index];
      Puesto := _listapuesto[index];
      Departamento := _listadepartamento[index];
    end;
  end;
  result := Firmante;
end;

procedure TListaFirmantes.Clear;
begin
  _listaid.Clear;
  _listatitulo.Clear;
  _listapuesto.Clear;
  _listanombre.Clear;
  _listadepartamento.Clear;
end;

function TListaFirmantes._count: integer;
begin
  result := _listaid.Count;
end;

function TListaFirmantes._flistaid: string;
begin
  _listaid.Delimiter := '|';
  Result := _listaid.DelimitedText;
end;

function TListaFirmantes._flistanombre: string;
begin
  _listanombre.Delimiter := '|';
  Result := _listanombre.DelimitedText;
end;

function TListaFirmantes._flistatitulo: string;
begin
  _listatitulo.Delimiter := '|';
  Result := _listatitulo.DelimitedText;
end;

function TListaFirmantes._flistapuesto: string;
begin
  _listapuesto.Delimiter := '|';
  Result := _listapuesto.DelimitedText;
end;

function TListaFirmantes._flistadepartamento: string;
begin
  _listadepartamento.Delimiter := '|';
  Result := _listadepartamento.DelimitedText;
end;
{$ENDREGION}

function GetSerie(cadena: string; anio: Integer; digitos: integer): string;
Var
  Serie: string;
begin
    Serie := AnsiReplaceStr(cadena,'{año}',inttostr(anio));
    Serie := AnsiReplaceStr(Serie,'{codigo}',clientmodule1.cdAcceso.FieldByName('codigoorganizacion').AsString);
    Serie := AnsiReplaceStr(Serie,'{consecutivo}','{consecutivo:' + inttostr(digitos) + '}');
    result := Serie;
end;

end.
