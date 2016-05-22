unit PFacturaElectronica_PAC;

interface

uses
  PFacturaElectronica, Classes;

type
  TPFPAC = class
    public
      procedure AsignarCredenciales(Credenciales: TPFCredenciales); virtual; abstract;
      function TimbrarXML(XML: String): TPFTimbre; virtual; abstract;
      function CancelarXML(UUID: String): TStringList; virtual; abstract;
  end;

implementation

end.
