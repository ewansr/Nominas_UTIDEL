unit UTFrmExistenciaArticulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvSmoothLabel, ExtCtrls, DB, DBClient, AdvShapeButton, NxDBColumns, NxColumns;

type
  TfrmExistenciaArticulo = class(TForm)
    cdExistencias: TClientDataSet;
    pnlTop: TPanel;
    pnlData: TPanel;
    pnlBottom: TPanel;
    lblArticulo: TAdvSmoothLabel;
    lblSubGrupo: TAdvSmoothLabel;
    lblGrupo: TAdvSmoothLabel;
    grdExistencias: TNextDBGrid;
    lbl1: TAdvSmoothLabel;
    btnBtnClose: TAdvShapeButton;
    dsExistencias: TDataSource;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    procedure btnBtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    idOrganizacion: Integer;
    idArticulo: Integer;
    idAlmacen: Integer;
  public
    { Public declarations }
    procedure Existencia(idOrganizacion,idArticulo :Integer); overload;
    procedure Existencia(idOrganizacion,idArticulo,idAlmacen :Integer); overload;
  end;

var
  frmExistenciaArticulo: TfrmExistenciaArticulo;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TfrmExistenciaArticulo.Existencia(idOrganizacion,idArticulo: Integer);
begin
  Existencia(idOrganizacion,idArticulo,-1);
end;

procedure TfrmExistenciaArticulo.Existencia(idOrganizacion,idArticulo: Integer; idAlmacen: Integer);
begin
  self.idOrganizacion := idOrganizacion;
  self.idArticulo := idArticulo;
  Self.idAlmacen := idAlmacen;
  self.ShowModal;
end;

procedure TfrmExistenciaArticulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdExistencias);
end;

procedure TfrmExistenciaArticulo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    close;
end;

procedure TfrmExistenciaArticulo.FormShow(Sender: TObject);
Var
  cdArticulo: TClientDataSet;
begin
  ClientModule1.ComponentColor(Self);
  cdArticulo := TClientDataSet.Create(nil);
  CrearConjunto(cdArticulo,'alm_articulo',ccCatalog);
  CargarDatosFiltrados(cdArticulo,'idarticulo',[idArticulo]);
  cdArticulo.Open;
  lblArticulo.Caption.Text := cdArticulo.FieldByName('tituloarticulo').AsString;
  lblSubGrupo.Caption.Text := cdArticulo.FieldByName('titulosubgrupo').AsString;
  lblGrupo.Caption.Text := cdArticulo.FieldByName('titulogrupo').AsString;
  cdArticulo.Close;
  EliminarConjunto(cdArticulo);
  cdArticulo.Free;

  CrearConjunto(cdExistencias,'alm_existencias_articulo',ccCatalog);
  CargarDatosFiltrados(cdExistencias,'idOrganizacion,idarticulo,idalmacen',[idOrganizacion,idArticulo,idAlmacen]);
  cdExistencias.Open;
  grdExistencias.CalculateFooter(true);
end;

procedure TfrmExistenciaArticulo.btnBtnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
