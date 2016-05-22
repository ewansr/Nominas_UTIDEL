unit UTFrmImportarExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ClientModuleUnit1, DB, DBClient, StdCtrls;

type
  TFrmImportarExcel = class(TForm)
    Button1: TButton;
    qGrabar: TClientDataSet;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NombreConjunto: String;
  end;

var
  FrmImportarExcel: TFrmImportarExcel;

implementation

{$R *.dfm}

procedure TFrmImportarExcel.Button1Click(Sender: TObject);
var
  cdupdate: Tclientdataset;
begin
  cdUpdate := Tclientdataset.Create(self);
  cdUpdate.RemoteServer := ClientModule1.DSProviderConnection1;

CrearConjunto(cdUpdate, 'alm_almacen', NombreConjunto, ccUpdate);
CargarDatosFiltrados(cdUpdate, 'idalmacen', [-1]);



cdUpdate.Open;
cdUpdate.Append;
cdUpdate.FieldByName('idalmacen').AsInteger := 0;
{cdUpdate.FieldByName('idtipoalmacen').AsInteger := 1;  }
cdUpdate.FieldByName('codigoalmacen').AsString := 'ALM34';
cdUpdate.FieldByName('tituloalmacen').AsString := 'almacen 1';
cdUpdate.FieldByName('descripcion').AsString := 'ALMacen numero 1';
cdUpdate.FieldByName('ubicacion').AsString := 'Ciudad del Carmen';
cdUpdate.FieldByName('comentarios').AsString := '***';
cdUpdate.FieldByName('activo').AsString := 'si';

cdUpdate.Post;
cdUpdate.ApplyUpdates(-1);
cdUpdate.Close;
EliminarConjunto(NombreConjunto);
cdUpdate.Free;
end;

end.
