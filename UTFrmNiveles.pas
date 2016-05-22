unit UTFrmNiveles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, DBCtrls, Buttons, PngSpeedButton,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls, UInteliDialog,
  Menus, NxDBColumns, NxColumns, frxClass, frxDBSet, JvExControls, JvLabel,
  pngimage, AdvShapeButton;

type
  TFrmNiveles = class(TForm)
    PanelPrincipal: TPanel;
    DBGridPrincipal: TNextDBGrid;
    Edit2: TEdit;
    PanelBarra: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    PanelFiltro: TPanel;
    GroupBoxFiltro: TGroupBox;
    CbNiveles: TDBLookupComboBox;
    Label1: TLabel;
    cdNiveles: TClientDataSet;
    dsNiveles: TDataSource;
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    MainPopupMenu: TPopupMenu;
    MnAgregar: TMenuItem;
    MnEditar: TMenuItem;
    MnImprimir: TMenuItem;
    MnEliminar: TMenuItem;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    colpadre: TNxDBTextColumn;
    frxReporteNivelORganizacional: TfrxReport;
    FrxNivelORganizacional: TfrxDBDataset;
    BtnAdd: TAdvShapeButton;
    BtnEdit: TAdvShapeButton;
    BtnDelete: TAdvShapeButton;
    BtnRefresh: TAdvShapeButton;
    BtnPrint: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    BtnSearch1: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDelete2Click(Sender: TObject);
    procedure MainPopupMenuPopup(Sender: TObject);
    procedure ArbolOrganizacional1Click(Sender: TObject);
    procedure DBGridPrincipalCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure MnAgregarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
    procedure MnImprimirClick(Sender: TObject);
    procedure MnEliminarClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnSearch1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Providername, ProvidernameUpt: String;
    ModuloPantalla: String;
  public
    { Public declarations }
  end;

var
  FrmNiveles: TFrmNiveles;

implementation

Uses
  ClientModuleUnit1,Unit2, UTFrmDatosNiveles, UTFrmArbolAccesos;
{$R *.dfm}

procedure TFrmNiveles.ArbolOrganizacional1Click(Sender: TObject);
var
  popupArbol: TFrmArbolAccesos;
begin
  popupArbol := TFrmArbolAccesos.Create(Self);
  popupArbol.solovista := True;
  popupArbol.ShowModal;
  popupArbol.Free;
end;

procedure TFrmNiveles.BtnAddClick(Sender: TObject);
var
  PopupDatos: TFrmDatosNiveles;
  cdUpt: TClientDataSet;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'AGREGAR') then
    Exit;
  if cbNiveles.KeyValue = null then
    exit;
  if CdDatos.State <> dsBrowse then
    Exit;
  try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt,  cOrganizacion, ProviderNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idorganizacion', [-9]);
    cdUpt.Open;
    if cdUpt.RecordCount = 0 then
    begin
      PopupDatos := TFrmDatosNiveles.Create(Self);
      cdUpt.Append;
      cdUpt.FieldByName('idorganizacion').AsInteger := 0;
      cdUpt.FieldByName('idnivel').AsInteger := cbNiveles.keyvalue;
      popUpDatos.dsDatos.DataSet := cdUpt;
      //popupDatos.VarIdNivel := CbNiveles.KeyValue;
      if popupDatos.ShowModal = mrOk then
        cdDatos.Refresh
      else
        cdDatos.Cancel;

      popupDatos.Free;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;
  RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
end;

procedure TFrmNiveles.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmNiveles.BtnDelete2Click(Sender: TObject);
var
  cdUpt: TClientDataSet;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
    Exit;
  if cbNiveles.KeyValue = null then
    exit;
  if CdDatos.State <> dsBrowse then
    Exit;
  if cdDatos.RecordCount < 1 then
    exit;
  if InteliDialog.ShowModal('Desea eliminar el Registro '+Cddatos.FieldByName('codigoorganizacion').AsString+'?','', mtConfirmation, [ mbYes, mbNo ],0) = mrNo then
    Exit;
  try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt,  cOrganizacion, ProviderNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idorganizacion', [cdDatos.FieldByName('idorganizacion').AsString]);
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      cdUpt.Delete;
      cdUpt.ApplyUpdates(-1);
      cdDatos.Refresh;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;
end;

procedure TFrmNiveles.BtnDeleteClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
    Exit;
  if cbNiveles.KeyValue = null then
    exit;
  if CdDatos.State <> dsBrowse then
    Exit;
  if cdDatos.RecordCount < 1 then
    exit;
  if InteliDialog.ShowModal('Desea eliminar el Registro '+Cddatos.FieldByName('codigoorganizacion').AsString+'?','', mtConfirmation, [ mbYes, mbNo ],0) = mrNo then
    Exit;
  try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt, cOrganizacion, ProviderNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idorganizacion', [cdDatos.FieldByName('idorganizacion').AsString]);
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      cdUpt.Delete;
      cdUpt.ApplyUpdates(-1);
      cdDatos.Refresh;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;
end;

procedure TFrmNiveles.BtnEditClick(Sender: TObject);
var
  PopupDatos: TFrmDatosNiveles;
  cdUpt: TClientDataSet;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR') then
    Exit;
  if cbNiveles.KeyValue = null then
    exit;
  if CdDatos.State <> dsBrowse then
    Exit;
  if cdDatos.RecordCount < 1 then
    exit;
  try
    cdUpt := TClientDataSet.Create(Nil);
    CrearConjunto(cdUpt,  cOrganizacion, ProviderNameUpt, ccUpdate);
    CargarDatosFiltrados(cdUpt, 'idorganizacion', [cdDatos.FieldByName('idorganizacion').AsString]);
    cdUpt.Open;
    if cdUpt.RecordCount = 1 then
    begin
      PopupDatos := TFrmDatosNiveles.Create(Self);
      cdUpt.Edit;
      popUpDatos.dsDatos.DataSet := cdUpt;
      //popupDatos.VarIdNivel := CbNiveles.KeyValue;
      if popupDatos.ShowModal = mrOk then
      begin
        cdUpt.ApplyUpdates(-1);
        cdDatos.Refresh;
      end
      else
        cdDatos.Cancel;

      popupDatos.Free;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  end;
  RedrawWindow( Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN );
end;

procedure TFrmNiveles.BtnPrintClick(Sender: TObject);
begin
  Try
    if CdDatos.State <> dsBrowse then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.RowCount < 1 Then
      Raise Exception.Create('No hay registro seleccionado.');

    if DbGridPrincipal.SelectedCount > 1 Then
      Raise Exception.Create('Hay varios registros seleccionados.');

    if not ClientModule1.LeePermisos(ModuloPantalla,'IMPRIMIR') then
      Exit;

  ClientModule1.ImprimeReporte('NivelOrganizacional.fr3',FrxReporteNivelORganizacional);
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se puede imprimir.',e.message, mtInformation, [mbOk], 0);
      exit;
    end;
  End;

end;

procedure TFrmNiveles.BtnRefreshClick(Sender: TObject);
begin
  if CdDatos.State = dsBrowse then
    cdDatos.Refresh;
end;

procedure TFrmNiveles.BtnSearch1Click(Sender: TObject);
begin
  if CbNiveles.KeyValue = null then
    Exit;
  CargarDatosFiltrados(cdDatos, 'idNivel', [CbNiveles.KeyValue]);
  cdDatos.Refresh;
end;

procedure TFrmNiveles.DBGridPrincipalCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
    if DBGridPrincipal.RowCount < 1 then
      Exit;
    if BtnEdit.Enabled = False then
      Exit;
    BtnEdit.Click;
end;

procedure TFrmNiveles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(providerName);
  LiberarVentana(Self, Action);
end;

procedure TFrmNiveles.FormCreate(Sender: TObject);
begin
  ModuloPantalla := 'NIVELORG';
  if not ClientModule1.LeePermisos(ModuloPantalla,'LEER') then
    PostMessage(Self.Handle, WM_CLOSE, 0, 0);
end;

procedure TFrmNiveles.FormShow(Sender: TObject);
begin
  Try
    ClientModule1.ComponentColor(Self);
    ClientModule1.RastrearGrids(Self);
    cdNiveles.Close;
    CrearConjunto(cdNiveles, cnivelorganizacion, ProviderName, ccCatalog);
    cdNiveles.Open;
    CrearConjunto(cdDatos, cOrganizacion, ProviderName, ccCatalog);
    CargarDatosFiltrados(cdDatos, 'idNivel', [-9]);
    cdDatos.Open;
    CbNiveles.KeyValue := ClientModule1.cdAcceso.FieldByName('idnivelorganizacion').AsInteger;
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
  End;
end;

procedure TFrmNiveles.MainPopupMenuPopup(Sender: TObject);
begin
  if btnAdd.Enabled = True then
    MnAgregar.Enabled := True;
  if btnEdit.Enabled = True then
    MnEditar.Enabled := True;
  if btnPrint.Enabled = True then
    MnImprimir.Enabled := True;
  if btnDelete.Enabled = True then
    MnEliminar.Enabled := True;
end;

procedure TFrmNiveles.MnAgregarClick(Sender: TObject);
begin
  BtnAdd.Click;
end;

procedure TFrmNiveles.MnEditarClick(Sender: TObject);
begin
  BtnEdit.Click;
end;

procedure TFrmNiveles.MnEliminarClick(Sender: TObject);
begin
  BtnDelete.Click;
end;

procedure TFrmNiveles.MnImprimirClick(Sender: TObject);
begin
  btnPrint.Click;
end;

end.
