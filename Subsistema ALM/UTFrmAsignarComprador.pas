unit UTFrmAsignarComprador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBClient, StdCtrls, JvExControls, JvLabel, DBCtrls,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, Mask, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, JvMemoryDataset, Menus, JvMenus,
  AdvMenus, AdvSmoothPopup, AdvShapeButton;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmAsignarComprador = class(TForm)
    pnlTop: TPanel;
    pnlGeneral: TPanel;
    pnlDetalle: TPanel;
    pnlBotones: TPanel;
    cdDatos: TClientDataSet;
    cdDetalle: TClientDataSet;
    dsDetalle: TDataSource;
    lbl1: TJvLabel;
    dsDatos: TDataSource;
    JvLabel3: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    cdCompradores: TClientDataSet;
    dsCompradores: TDataSource;
    lbl4: TJvLabel;
    lblSerie: TJvLabel;
    lblReferencia: TJvLabel;
    lblFecha: TJvLabel;
    lblFechaReq: TJvLabel;
    lblCiudad: TJvLabel;
    lblComentarios: TJvLabel;
    grpComentario: TGroupBox;
    grdDetalle: TNextDBGrid;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    mdDetalle: TJvMemoryData;
    NxDBTextColumn2: TNxDBTextColumn;
    Label1: TLabel;
    cmbComprador: TComboBox;
    btnAsignar: TButton;
    popCompradores: TPopupMenu;
    NxDBNumberColumn2: TNxDBNumberColumn;
    BtnRec: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    NxDBTextColumn3: TNxDBTextColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAsignarClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure grdDetalleVerticalScroll(Sender: TObject; Position: Integer);
    procedure grdDetalleSortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure grdDetalleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    compradores: Array of integer;  // por el momento truquear el guardado del campo idcomprador
    procedure popupItemClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmAsignarComprador: TFrmAsignarComprador;

implementation

uses
  ClientModuleUnit1, xDatabase, UInteliDialog;

{$R *.dfm}

procedure TFrmAsignarComprador.BtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmAsignarComprador.BtnRecClick(Sender: TObject);
Var
  cdUpdDetalle: TClientDataSet;
  cdUpdDatos: TClientDataSet;
  NameProvider: String;
  i: Integer;
  Correcto: boolean;
begin
  // Primero verificar que ninguna partida quede sin asignar
  Correcto := true;
  mdDetalle.First;
  while not mdDetalle.Eof do
  begin
    if trim(mdDetalle.FieldByName('nombre').AsString) = '' then
      Correcto := false;
    mdDetalle.Next;
  end;

  if not Correcto then
  begin
    InteliDialog.ShowModal('Error','Error al guardar','No se ha podido guardar debido a que no a todas las partidas' + #13
      + 'se les ha asignado un proveedor, verifique e intente de nuevo.',mtError,[mbOK],0);
    exit;
  end;

  cdUpdDetalle := TClientDataSet.Create(nil);
  CrearConjunto(cdUpdDetalle,'alm_solicituddetalle',NameProvider,ccUpdate);
  cdUpdDetalle.close;
  CargarDatosFiltrados(cdUpdDetalle,'idSolicitud',[cdDatos.FieldByName('idsolicitud').Asinteger]);
  cdUpdDetalle.Open;
  mdDetalle.First;
  while not mdDetalle.eof do
  begin
    cdUpdDetalle.Locate('idsolicituddetalle',mdDetalle.FieldByName('idsolicituddetalle').AsInteger,[]);
    cdUpdDetalle.Edit;
    //cdUpdDetalle.FieldByName('idcomprador').AsInteger := compradores[mdDetalle.RecNo - 1];  // Arreglar esto
    cdUpdDetalle.FieldByName('idcomprador').AsInteger := mdDetalle.FieldByName('idcomprador').AsInteger;  // Arreglar esto
    cdUpdDetalle.Post;
    cdUpdDetalle.ApplyUpdates(-9);
    mdDetalle.Next;
  end;

  cdUpdDatos := TClientDataSet.Create(nil);
  CrearConjunto(cdUpdDatos,'alm_solicitud',NameProvider,ccUpdate);
  CargarDatosFiltrados(cdUpdDatos,'idSolicitud',[cdDatos.FieldByName('idsolicitud').Asinteger]);
  cdUpdDatos.Open;
  cdUpdDatos.First;
  cdUpdDatos.Edit;
  cdUpdDatos.FieldByName('estado').AsString := 'requisitado';
  cdUpdDatos.Post;
  cdUpdDatos.ApplyUpdates(-9);

  cdUpdDetalle.Close;
  cdUpdDatos.Close;
  EliminarConjunto(cdUpdDetalle.ProviderName);
  EliminarConjunto(cdUpdDatos.ProviderName);
  cdUpdDetalle.Free;
  cdUpdDatos.Free;
  InteliDialog.ShowModal('Confirmacion','Los datos se han guardado correctamente','',mtInformation,[mbOK],0);
  close;
end;

procedure TFrmAsignarComprador.popupItemClick(Sender: TObject);
begin
  mdDetalle.Edit;
  mdDetalle.FieldByName('idcomprador').AsInteger := TMenuItem(Sender).Tag;
  //compradores[mdDetalle.RecNo - 1] := TMenuItem(Sender).Tag;
  mdDetalle.FieldByName('nombre').AsString := TMenuItem(Sender).Caption;
  mdDetalle.Post;
end;

procedure TFrmAsignarComprador.btnAsignarClick(Sender: TObject);
Var
  i,idx: Integer;
begin
  if cmbComprador.ItemIndex >= 0 then
  begin
    i := mdDetalle.RecNo;
    idx := cmbComprador.ItemIndex;
    mdDetalle.First;
    while not mdDetalle.eof do
    begin
      mdDetalle.Edit;
      mdDetalle.FieldByName('idcomprador').AsInteger := TLista(cmbComprador.Items.Objects[idx]).Valor['idusuario'];
      // Como por el momento no me deja guardar directamente en el campo "idcomprador" por razones desconocidas
      // Guardarlo en un array mientras se resuelve este problema
      //compradores[mdDetalle.RecNo - 1] := TLista(cmbComprador.Items.Objects[idx]).Valor['idusuario'];
      mdDetalle.FieldByName('nombre').AsString := NVL(TLista(cmbComprador.Items.Objects[idx]).Valor['nombre'],'')
                                        +  ' ' + NVL(TLista(cmbComprador.Items.Objects[idx]).Valor['apellidos'],'');
      mdDetalle.Post;
      mdDetalle.Next;
    end;
    mdDetalle.RecNo := i;
  end
  else
    InteliDialog.ShowModal('Error','No se ha seleccionado un comprador válido','', mtError, [mbOk], 0);
end;

procedure TFrmAsignarComprador.FormShow(Sender: TObject);
Var
  NameProvider: String;
  Field: TField;
  j: integer;
  reg: TLista;
  mnuItem: TMenuItem;
begin
  ClientModule1.ComponentColor(self);
  // Poner los datos del encabezado
  lblSerie.Caption := cdDatos.FieldByName('serie').AsString;
  lblFecha.Caption := cdDatos.FieldByName('Fecha').AsString;
  lblFechaReq.Caption := cdDatos.FieldByName('fecharequerida').AsString;
  lblCiudad.Caption := cdDatos.FieldByName('codigociudad').AsString + ' - ' +
                       cdDatos.FieldByName('titulociudad').AsString;
  lblComentarios.Caption := cdDatos.FieldByName('comentarios').AsString;


  // Cargar la lista de compradores
  CrearConjunto(cdCompradores,'nuc_usuario',NameProvider,ccSelect);
  CargarDatosFiltrados(cdCompradores,'idcargo,activo',[2,'si']);
  cdCompradores.Open;

  // Llenar el listbox de los compradores
  cdCompradores.First;
  while not cdCompradores.eof do
  begin
    reg := GetCurrentRecord(cdCompradores);
    cmbComprador.AddItem(reg.Valor['nombre'],reg);

    mnuItem := TMenuItem.Create(popCompradores);
    mnuItem.Caption := reg.Valor['nombre'];
    mnuItem.Tag := reg.Valor['idusuario'];
    mnuItem.OnClick := popupItemClick;
    mnuItem.AutoHotkeys := maManual;
    popCompradores.Items.Add(mnuItem);
    cdCompradores.Next;
  end;
  if cmbComprador.Items.Count > 1 then
    cmbComprador.ItemIndex := 0;

  // Cargar los detalles del documento
  CrearConjunto(cdDetalle,'alm_solicituddetalle',NameProvider,ccSelect);
  CargarDatosFiltrados(cdDetalle,'idSolicitud,cantvalidada',[cdDatos.FieldByName('idsolicitud').Asinteger,0]);
  cdDetalle.ReadOnly := false;
  cdDetalle.Open;
  mdDetalle.LoadFromDataSet(cdDetalle,cdDetalle.RecordCount,JvMemoryDataset.lmCopy,true);
  mdDetalle.FieldByName('nombre').ReadOnly := false;
  // dimensionar el array para el guardado temporal de "idcomprador"
  SetLength(compradores,cdDetalle.RecordCount);
  mdDetalle.First;
  while not mdDetalle.eof do
  begin
    mdDetalle.Edit;
    try
      mdDetalle.FieldByName('nombre').AsString := mdDetalle.FieldByName('nombre').AsString + ' ' + mdDetalle.FieldByName('apellidos').AsString;
    except
      ;
    end;
    mdDetalle.Post;
    //compradores[mdDetalle.RecNo - 1] := mdDetalle.FieldByName('idcomprador').AsInteger;
    mdDetalle.Next;
  end;
  mdDetalle.First;

end;

procedure TFrmAsignarComprador.grdDetalleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    grdDetalle.SelectCell(2,grdDetalle.SelectedRow,[ssShift],False);
end;

procedure TFrmAsignarComprador.grdDetalleSortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
{  TRY
    SortClientDataSet(dsDetalle.DataSet,grdDetalle.Columns.Item[acol].FieldName);
    grdDetalle.ClearSelection;
  EXCEPT
    ;
  END;  }
end;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
var
  i: Integer;
  NewIndexName: String;
  IndexOptions: TIndexOptions;
  Field: TField;
begin
  Result := False;
  Field := ClientDataSet.Fields.FindField(FieldName);

  if Field = nil then
    Exit;

  if (Field is TObjectField) or (Field is TBlobField) or
  (Field is TAggregateField) or (Field is TVariantField)
  or (Field is TBinaryField) then
    Exit;

  ClientDataSet.IndexDefs.Update;

  if ClientDataSet.IndexName = FieldName + '__IdxA' then
  begin
    NewIndexName := FieldName + '__IdxD';
    IndexOptions := [ixDescending];
  end
  else
  begin
    NewIndexName := FieldName + '__IdxA';
    IndexOptions := [];
  end;

  for i := 0 to Pred(ClientDataSet.IndexDefs.Count) do
  begin
    if ClientDataSet.IndexDefs[i].Name = NewIndexName then
    begin
      Result := True;
      Break
    end;
  end;

  if not Result then
  begin
    ClientDataSet.AddIndex(NewIndexName,
    FieldName, IndexOptions);
    Result := True;
  end;

  ClientDataSet.IndexName := NewIndexName;
end;

procedure TFrmAsignarComprador.grdDetalleVerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    grdDetalle.ClearSelection;
    grdDetalle.Repaint;
    grdDetalle.Refresh;
  end;
end;

end.
