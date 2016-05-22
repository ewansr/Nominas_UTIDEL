unit UTFrmInventarioDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, ExtCtrls, DBCtrls, JvExControls, JvLabel, DB, DBClient, UInteliDialog,
  AdvEdit, NxEdit,URegistro, frxClass, frxDBSet, Grids, DBGrids,StrUtils,frxCross;

type
  TInv = class

  private
    Id       : Integer;
    Cod   : string;
    Tit   : string;
    Cant : real;

  published
    property Ide  : Integer read Id write Id;
    property Codigo: string read Cod write Cod;
    property Titulo: string read Tit write Tit;
    property Cantidad: Real read Cant write Cant;
  end;
type
  TAlm = class

  private
    Id       : Integer;
    Cod   : string;
    Tit   : string;
  published
    property Ide  : Integer read Id write Id;
    property Codigo: string read Cod write Cod;
    property Titulo: string read Tit write Tit;


  end;

type
  TFrmInventarioDetalle = class(TForm)
    Panel2: TPanel;
    NextDBGrid1: TNextDBGrid;
    JvMaskEdit1: TJvMaskEdit;
    pnlSuperior: TPanel;
    Panel3: TPanel;
    BtnClose: TAdvShapeButton;
    dsDatos: TDataSource;
    cdDetalle: TClientDataSet;
    DsDetalle: TDataSource;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    GroupBoxFiltro: TGroupBox;
    BtnSearch: TAdvShapeButton;
    edtFGrupo: TAdvEdit;
    edtFArea: TAdvEdit;
    edtFSubgrupo: TAdvEdit;
    edtFCodigo: TAdvEdit;
    edtFtitulo: TAdvEdit;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    GroupBox1: TGroupBox;
    Inter: TCheckBox;
    Min: TNxNumberEdit;
    Max: TNxNumberEdit;
    Label1: TLabel;
    NxDBTextColumn6: TNxDBTextColumn;
    EdtfAlmacen: TAdvEdit;
    PPrint: TPanel;
    BtnPrint: TAdvShapeButton;
    FrxDatos: TfrxDBDataset;
    cdMemoryInv: TClientDataSet;
    DataSource1: TDataSource;
    Reporte: TfrxReport;
    cdDetalleidarticulo: TIntegerField;
    cdDetalleidalmacen: TIntegerField;
    cdDetalleexistencia: TFloatField;
    cdDetallecodigoalmacen: TWideStringField;
    cdDetalletituloalmacen: TWideStringField;
    cdDetalletitulogrupo: TWideStringField;
    cdDetalletitulosubgrupo: TWideStringField;
    cdDetallecodigoarticulo: TWideStringField;
    cdDetalletituloarticulo: TWideStringField;
    cdDetalletitulodisciplina: TWideStringField;
    frxCrossObject1: TfrxCrossObject;
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure edtFtituloKeyPress(Sender: TObject; var Key: Char);
    procedure NextDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    procedure Filtrar;
    procedure AccedeACoordenadas;
    { Private declarations }
  public
    iddelalmacen: Integer;
    { Public declarations }
  end;

var
  FrmInventarioDetalle: TFrmInventarioDetalle;

implementation

Uses
  ClientModuleUnit1, Unit2;

{$R *.dfm}

procedure TFrmInventarioDetalle.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmInventarioDetalle.BtnPrintClick(Sender: TObject);
begin
//  Imprimir(cddetalle,CdMemoryInv);
  Reporte.PreviewOptions.MDIChild := False ;
  Reporte.PreviewOptions.Modal := True ;
  Reporte.PreviewOptions.ShowCaptions := False ;
  Reporte.Previewoptions.ZoomMode := zmPageWidth ;
  Reporte.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+'inventarios.fr3') ;

   //paso de variables
  clientModule1.cdOrganizacion.Locate('idnivel',ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').asstring,[]);
  clientModule1.cdOrganizacion.Prior;
  reporte.Variables['organizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('codigoorganizacion').AsString);
  reporte.Variables['tituloorganizacion'] := QuotedStr(clientModule1.cdOrganizacion.FieldByName('tituloorganizacion').AsString);
  reporte.Variables['usuarionombre'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString);
  reporte.Variables['usuariocargo'] := QuotedStr(ClientModule1.cdUsuario.FieldByName('titulocargo').AsString);

  Reporte.ShowReport(False);
end;

procedure TFrmInventarioDetalle.BtnSearchClick(Sender: TObject);
begin
  filtrar;
end;

procedure TFrmInventarioDetalle.edtFtituloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmInventarioDetalle.Filtrar;
var
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;
//    parametros.add('idalmacen',iddelalmacen);
  if Length(Trim(edtFArea.Text)) > 0 then
    Parametros.Add('titulodisciplina',  '%' + edtFArea.Text + '%');
  if Length(Trim(edtFGrupo.Text)) > 0 then
    Parametros.Add('titulogrupo', '%' + edtFGrupo.Text + '%');
  if Length(Trim(edtFSubgrupo.Text)) > 0 then
    Parametros.Add('titulosubgrupo', '%' + edtFSubgrupo.Text + '%');
  if Length(Trim(edtFCodigo.Text)) > 0 then
    Parametros.Add('codigoarticulo', edtFCodigo.Text + '%');
  if Length(Trim(edtFtitulo.Text)) > 0 then
    Parametros.Add('tituloarticulo', '%' + edtFtitulo.Text + '%');
  if Length(Trim(EdtfAlmacen.Text)) > 0 then
    Parametros.Add('tituloalmacen', '%' + EdtfAlmacen.Text + '%');
  if Inter.Checked then
  begin
    Parametros.Add('min', Min.Value);
    Parametros.Add('max', Max.Value);
  end;

  CargarDatosFiltrados(cdDetalle, Parametros.Campos, Parametros.Datos);
  cdDetalle.Refresh;
  Parametros.Free;
end;


procedure TFrmInventarioDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdDetalle);
  LiberarVentana(Self, Action);
end;

procedure TFrmInventarioDetalle.FormCreate(Sender: TObject);
begin
  if not ClientModule1.LeePermisos('INVENTARIO','LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);

end;

procedure TFrmInventarioDetalle.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := Self.Left;
  xTop := Self.Top;
  xWidth := Self.Width;
  xHeight := Self.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left', Existe));
    if Not Existe then xLeft := Self.Left;
  Except
    xLeft := Self.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top', Existe));
    if Not Existe then xTop := Self.Top;
  Except
    xTop := Self.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width', Existe));
    if Not Existe then xWidth := Self.Width;
  Except
    xWidth := Self.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height', Existe));
    if Not Existe then xHeight := Self.Height;
  Except
    xHeight := Self.Height;
  End;

  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Left := xLeft;
  Self.Width := xWidth;
  Self.Top := xTop;
  Self.Height := xHeight;
end;

procedure TFrmInventarioDetalle.FormShow(Sender: TObject);
var existencias: string;
begin
  try
    AccedeACoordenadas;
    ClientModule1.RastrearGrids(self);
    ClientModule1.ComponentColor(Self);
    CrearConjunto(cdDetalle,'alm_existencias_articulo',existencias,ccCatalog);
    CargarDatosFiltrados(cdDetalle,'idalmacen',[-9]);
    cdDetalle.Open;

  Except
  // Ante cualquier error se debe cerrar la ventana
  on e:InteligentException do
  begin
    InteliDialog.ShowModal('No se ha podido invocar la ventana',
                           'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                           e.Message, mtWarning, [mbOk], 0);
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  end;

  on e:Exception do
  begin
    InteliDialog.ShowModal('Error catastrófico',
                           'La ventana no ha podido ser invocada debido a lo siguiente:' + #10 + #10 +
                           e.Message + #10 + #10 + 'Informe de esto al administrador del sistema', mtError, [mbOk], 0);
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
  end;

  end;
end;

procedure TFrmInventarioDetalle.NextDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    NextDBGrid1.SelectCell(2,NextDBGrid1.SelectedRow,[ssShift],False);
end;

end.
