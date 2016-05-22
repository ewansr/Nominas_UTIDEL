unit PFacturaElectronica_CadenaOriginal;

interface

// Incluimos el recurso que guarda el archivo XSLT para cuando se compile
// esta unidad en cualquier proyecto que la use, se incluya en el ejecutable
// Ref: http://delphi.about.com/od/objectpascalide/a/embed_resources.htm
{$R 'CadenaOriginalTimbre.res' 'CadenaOriginalTimbre.rc'}

uses
  PFacturaElectronica,
  Classes,
  XMLDoc,
  XMLIntf,
  XSLProd,
  SysUtils;

type
  TCadenaOriginalDeTimbre = class
  private
    fXMLTimbre: TStringCadenaOriginal;
    fXSLT: string;
    function LeerXSLTDeRecurso(const aNombreRecurso: string): string;
  public
    constructor Create(const aXMLTimbre: WideString; const aRutaXSLT: WideString);
        overload;
    function Generar: TStringCadenaOriginal;
  end;

implementation

constructor TCadenaOriginalDeTimbre.Create(const aXMLTimbre: WideString; const
    aRutaXSLT: WideString);
const
  _NOMBRE_DEL_RECURSO_XSLT = 'CADENA_ORIGINAL_TFD_1_0';
begin
  fXMLTimbre := aXMLTimbre;

  // Obtenemos el archivo XSLT para transformar el XML del timbre a cadena original usando
  // el XSLT proveido por el SAT de la direccion:
  // ftp://ftp2.sat.gob.mx/asistencia_servicio_ftp/publicaciones/solcedi/cadenaoriginal_TFD_1_0.xslt
  fXSLT := LeerXSLTDeRecurso(_NOMBRE_DEL_RECURSO_XSLT);

  Assert(fXMLTimbre <> '', 'El XML del timbre no debe ser vacio');
  Assert(fXSLT <> '', 'El XSLT de transformacion del timbre no debe ser vacio');
end;


function TCadenaOriginalDeTimbre.Generar: TStringCadenaOriginal;
var
  XML : IXMLDocument;
  XSL : IXMLDocument;
  res: WideString;
begin
  XML := LoadXMLData(fXMLTimbre);
  XSL := LoadXMLData(fXSLT);

  // Transformamos el XML del timbre usando el XSLT proveido por el SAT
  XML.DocumentElement.TransformNode(XSL.DocumentElement, res);

  // Fix temporal debido a que por alguna razon el XSLT no aplica correctamente las cadenas de inicio y terminacion
  Result := '|' + res + '||';
end;


function TCadenaOriginalDeTimbre.LeerXSLTDeRecurso(const aNombreRecurso:
    string): string;
var
  RS: TResourceStream;
  sl: TStringList;
begin
  RS := TResourceStream.Create(HInstance, aNombreRecurso, 'TEXT');
  try
    SL := TStringList.Create;
    SL.LoadFromStream(RS);
    Result := sl.Text;
  finally
    RS.Free;
    sl.Free;
  end;
end;

end.
