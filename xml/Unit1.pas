unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, XMLDoc, XMLIntf, XMLDom,
  PFacturaElectronica, CFDI, PFacturaElectronica_PAC, PACFo;

type
  TForm1 = class(TForm)
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    NxFolderEdit1: TNxFolderEdit;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Emisor, Receptor: TPFContribuyente;
  Factura: TPFFacturaElectronica;
  Conceptos: TPFConceptos;
  Impuestos: TPFImpuestos;
  ProveedorTimbrado: TPFPac;
  Credenciales: TPFCredenciales;
  TimbreDeFactura: TPFTimbre;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
Var
  Lista: TStringList;
begin
  Emisor.RazonSocial := 'ANGEL PATRICIO RODRIGUEZ';
  Emisor.RFC := 'AAA010101AAA';
  Emisor.Domicilio.Calle := 'CAMINO AL SUMIDERO';
  Emisor.Domicilio.Numero := '37';
  Emisor.Domicilio.Colonia := 'LOMAS DEL SUMIDERO';
  Emisor.Domicilio.CodigoPostal := '91156';
  Emisor.Domicilio.Localidad := 'XALAPA';
  Emisor.Domicilio.Municipio := 'XALAPA';
  Emisor.Domicilio.Estado := 'VERACRUZ';
  Emisor.Domicilio.Pais := 'MEXICO';

  Emisor.ExpedidoEn := Emisor.Domicilio;
  Emisor.RegimenFiscal := 'REGIMEN GENERAL DE LEY';

  Receptor.RazonSocial := 'PUBLICO';
  Receptor.RFC := 'PARA900409QS9';
  Receptor.Correo := 'cliente@recibefactura.com.mx';
  Receptor.Domicilio.Calle := 'CALLE PRINCIPAL';
  Receptor.Domicilio.Numero := '1';
  Receptor.Domicilio.Colonia := 'LOMAS DEL SUMIDERO';
  Receptor.Domicilio.CodigoPostal := '91156';
  Receptor.Domicilio.Localidad := 'XALAPA';
  Receptor.Domicilio.Municipio := 'XALAPA';
  Receptor.Domicilio.Estado := 'VERACRUZ';
  Receptor.Domicilio.Pais := 'MEXICO';

  Factura := TPFFacturaElectronica.Create(Emisor, Receptor, trFactura);

  SetLength(Conceptos, 2);
  Conceptos[0].Cantidad := 2;
  Conceptos[0].Unidad := 'PZA';
  Conceptos[0].Descripcion := 'ARTICULO EJEMPLO';
  Conceptos[0].PrecioUnitario := 25.00;
  Conceptos[1].Cantidad := 5;
  Conceptos[1].Unidad := 'ARTICULO';
  Conceptos[1].Descripcion := 'DESCRIPCION DE ARTICULO';
  Conceptos[1].PrecioUnitario := 35.50;
  Factura.AgregarConceptos(Conceptos);

  SetLength(Impuestos, 1);
  Impuestos[0].Tipo := impTrasladado;
  Impuestos[0].Impuesto := 'IVA';
  Impuestos[0].Tasa := 16.00;
  Impuestos[0].Importe := (Conceptos[1].PrecioUnitario * Conceptos[1].Cantidad) * (Impuestos[0].Tasa / 100);
//  Impuestos[1].Tipo := impRetenido;
//  Impuestos[1].Impuesto := 'ISR';
//  Impuestos[1].Importe := 1.00;
  Factura.AgregarImpuestos(Impuestos);

  Factura.Folio.Serie := 'A';
  Factura.Folio.Folio := 150;

  Factura.Propiedades.TipoDeComprobante := 'ingreso';
  Factura.Propiedades.FormaDePago := 'EN UNA SOLA EXHIBICIÓN';
  Factura.Propiedades.MetodoDePago := 'TRANSFERENCIA ELECTRONICA';
  Factura.Propiedades.Moneda := 'MXP';

  Factura.Generar;

//  ProveedorTimbrado := TPACFem.Create;
//  Try
//    Credenciales.RFC := Emisor.RFC;
//    Credenciales.ID := 'mvpNUXmQfK8=';
//    ProveedorTimbrado.AsignarCredenciales(Credenciales);
//    TimbreDeFactura := ProveedorTimbrado.TimbrarXML(Factura.XML);
//
//    Factura.AsignarTimbreFiscal(TimbreDeFactura);
//
//  Finally
//    ProveedorTimbrado.Free;
//  End;

  Factura.Guardar(NxFolderEdit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
Var
  Respuesta: TStringList;
begin
  ProveedorTimbrado := TPFPACFO.Create;
  Try
    Credenciales.RFC := 'AAA010101AAA';
    Credenciales.ID := 'mvpNUXmQfK8=';
    ProveedorTimbrado.AsignarCredenciales(Credenciales);
    Respuesta := ProveedorTimbrado.CancelarXML(Edit1.Text);
    Edit1.Text := Respuesta[1];
    ShowMessage(Respuesta[0] + ': ' + Respuesta[1]);
  Finally
    ProveedorTimbrado.Free;
  End;
end;

end.
