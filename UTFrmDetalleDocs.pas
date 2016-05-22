unit UTFrmDetalleDocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvLabel, pngimage, Buttons, PngSpeedButton,
  StdCtrls, DB, DBClient, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxCollection, JvMemoryDataset, xDatabase, UTfrmPartidaDoc,
  ClientModuleUnit1,AdvShapeButton, JvComponentBase, JvEnterTab;

type
  TFrmDetalleDocs = class(TForm)
    Panel2: TPanel;
    NextDBGrid1: TNextDBGrid;
    dsDatos: TDataSource;
    cdDetalle: TClientDataSet;
    dsDetalle: TDataSource;
    Panel3: TPanel;
    btnAgregarDetalle: TBitBtn;
    btnEditarDetalle: TBitBtn;
    btnQuitarDetalle: TBitBtn;
    Panel1: TPanel;
    mdDetalle: TJvMemoryData;
    BtnRec: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    Panel4: TPanel;
    dsConvenio: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Inicializar; virtual; abstract;
    procedure FormShow(Sender: TObject);
    procedure btnAgregarDetalleClick(Sender: TObject);
    procedure btnEditarDetalleClick(Sender: TObject);
    procedure btnQuitarDetalleClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FiltrarDetalle; virtual;
    procedure dsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure NextDBGrid1VerticalScroll(Sender: TObject; Position: Integer);
    procedure NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);
    procedure NextDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
  private
    { Private declarations }
    //procedure VerConvenio;
    procedure WMWINDOWPOSCHANGING(var msg: TWMWINDOWPOSCHANGING);
      message WM_WINDOWPOSCHANGING;
  protected
    id: integer;
    tDataSet: TClientDataSet;
    providerDetailName: string;
    providerDetailNameUpt: string;
    keyDetailField: string;
    entityDetailName: string;
    codeDetailField: string;
    TypeQueryDetail: string;
    EditableComponents: TList;
    procedure HacerComponentesEditables; virtual; abstract;
    function createPopUpPartida: TFrmPartidaDoc; virtual; abstract;
    // Procedimiento para cargar los campos que no estan ligados directamente a la
    // tabla pero que describen alguno de los campos
    procedure CargarCampos; virtual; abstract;
  public
    { Public declarations }
    keyParentField: string;
    ModoEdicion: boolean;
    CadenaDoc: string;
    DigitosDoc: Integer;
    idultimo: integer;
  end;

var
  FrmDetalleDocs: TFrmDetalleDocs;

implementation

Uses
  UInteliDialog,Unit2;

{$R *.dfm}

procedure TFrmDetalleDocs.btnAgregarDetalleClick(Sender: TObject);
Var
  frmPartida: TFrmPartidaDoc;
begin
  frmPartida := createPopupPartida;
  frmPartida.mdDetalle := mdDetalle;
  frmPartida.idDetailField := keyDetailField;
  frmPartida.idMasterField := keyParentField;
  frmPartida.idMasterKeyFieldValue := dsDatos.DataSet.FieldByName(keyParentField).AsInteger;
  frmPartida.Caption := self.Caption;
  frmPartida.AddRecord;
  frmPartida.Free;
end;

procedure TFrmDetalleDocs.BtnCloseClick(Sender: TObject);
begin
  TClientDataSet(dsDatos.DataSet).Cancel;
  close;
end;

procedure TFrmDetalleDocs.btnEditarDetalleClick(Sender: TObject);
Var
  frmPartida: TFrmPartidaDoc;
begin
 frmPartida := createPopupPartida;
  frmPartida.mdDetalle := mdDetalle;
  frmPartida.idDetailField := keyDetailField;
  frmPartida.idMasterField := keyParentField;
  frmPartida.idMasterKeyFieldValue := dsDatos.DataSet.FieldByName(keyParentField).AsInteger;
  frmPartida.Caption := self.Caption;
  frmPartida.EditRecord;
  frmPartida.Free;
end;

procedure TFrmDetalleDocs.btnQuitarDetalleClick(Sender: TObject);
begin
  if not mdDetalle.eof then
    if InteliDialog.ShowModal('¿Quitar el registro actual?','',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      mdDetalle.Delete;
end;

procedure TFrmDetalleDocs.BtnRecClick(Sender: TObject);
Var
  j: integer;
  guid: TGuid;
  cdCtrlLog:TClientDataSet;
begin
  try
    tdataset.onreconcileerror := dsreconcileerror;

    // Crear un ID Unico a nivel aplicación para poder regresar el mismo registro
    if tDataSet.State = dsInsert then
    begin
      tDataSet.Post;
      tDataSet.ApplyUpdates(0);
      id := UltimoId;
      idultimo := id;
    end
    else
    begin
      tDataSet.Post;
      tDataSet.ApplyUpdates(0);
      id := tDataSet.FieldByName(keyParentField).AsInteger;
    end;

    if tDataSet.FieldList.IndexOf('idorganizacion') >= 0 then
      Globales.SetValue('OrgPredeterminada',tDataSet.FieldByName('idorganizacion').AsString);

    //guardar en llave el tdataset.fieldbynme idorganizacion

    if id = 0 then   // Esto me indica que realmente no se guardó nada
      raise Exception.Create('No se pudo crear el encabezado del documento.');

    // Borrar todos los registros del detalle
    cdDetalle.First;
    cdDetalle.readonly := false;
    while not cdDetalle.eof do
    begin
      cdDetalle.Delete;
      cdDetalle.First;
    end;
    // Poner el campo de relación del padre
    mdDetalle.First;
    while not mdDetalle.eof do
    begin
      cdDetalle.Insert;
      for j := 0 to cdDetalle.FieldCount - 1 do
      begin
        if ansilowercase(cdDetalle.FieldDefs.Items[j].Name) = ansilowercase(KeyParentField) then
          cdDetalle.Fields[j].AsVariant := id
        else
          cdDetalle.Fields[j].AsVariant := mdDetalle.Fields[j].AsVariant;
      end;
      cdDetalle.post;
      cdDetalle.ApplyUpdates(0);
      mdDetalle.Next;
    end;
    // Agregar los registros del memorydata al dataset del detalle
    InteliDialog.ShowModal('Información guardada',
      'La información se ha guardado correctamente',mtInformation,[mbOK],0);
    self.Close;
  except
    on e: exception do
    begin
      InteliDialog.ShowModal('Error al guardar el documento',
      'La información no se ha podido guardar correctamente debido al siguiente error:'
      + #13 + #10 + e.Message,mtError,[mbOK],0);
    end;
  end;

end;

procedure TFrmDetalleDocs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(providerDetailName);
  LiberarVentana(Self, Action);
end;

procedure TFrmDetalleDocs.FormCreate(Sender: TObject);
begin
  TypeQueryDetail := ccUpdate;  // Por default el detalle se consulta para update
  ModoEdicion := true;          // por default, todos los controles (que así lo requieran) son editables
  Inicializar;
  ClientModule1.ComponentColor(self);
  //VerConvenio;
end;

{
procedure TFrmDetalleDocs.VerConvenio;
var
  cdOrgNiv: TClientDataSet;
  NivelEmp: integer;
  idOrgEmp: variant;
const
  NivelMay = 'EMPRESA';
  NivelMen = 'CONVENIO';
begin
  // Cargar los datos de los convenios si se indica
  try
    // Checar que nivel es el de EMPRESA
    cdOrgNiv := TClientDataSet.Create(nil);
    CrearConjunto(cdOrgNiv,'nuc_nivelorganizacion',ccCatalog);
    CargarDatosFiltrados(cdOrgNiv,'titulonivel',[NivelMay]);
    cdOrgNiv.Open;
    if cdOrgNiv.RecordCount > 0 then
    begin
      cdOrgNiv.First;
      NivelEmp := cdOrgNiv.FieldByName('idnivelorganizacion').AsInteger;
      // Ahora buscar en el dataset el registro que corresponde al nivel para obtener su id
      idOrgEmp := ClientModule1.cdOrganizacion.Lookup('idnivel',NivelEmp,'idorganizacion');
      // Cargar todos los niveles de los convenios
      CrearConjunto(cdConvenio,'nuc_organizacion_nivel',ccSelect);
      CargarDatosFiltrados(cdConvenio,'empresa,titulo',[idOrgEmp,NivelMen]);
      cdConvenio.Open;
      if cdConvenio.RecordCount = 0 then
      begin
        InteliDialog.ShowModal('No se encuentran convenios para la empresa.',
          'No se encontraron convenios correspondientes a la empresa actual.' + #10 +
          'Intente nuevamente. Si el problema persiste avise al administrador del sistema.',
          mtError,[mbOK],0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  finally
    cdOrgNiv.Close;
    cdOrgNiv.Free;
  end;
end;
}

procedure TFrmDetalleDocs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
{    #13:
        begin
          If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
            SelectNext(Sender as TWinControl, False, True)
          else
            SelectNext(Sender as TWinControl, True, True);
          Key := #0
        end;      }
    #27:
        begin
          if InteliDialog.ShowModal('Confirmación','¿Realmente desea salir del documento sin guardar los cambios hechos recientemente?','',mtConfirmation,[mbYes,mbNo],0) = mrYes then
          begin
            Self.Close;
            Key := #0
          end;
        end;
  end;

end;

procedure TFrmDetalleDocs.FiltrarDetalle;
Var
  key: integer;
begin
  key := dsDatos.DataSet.FieldByName(keyParentField).AsInteger;
  CargarDatosFiltrados(cdDetalle, keyParentfield, [Key]);  // Regresar los detalles del documento
end;

procedure TFrmDetalleDocs.FormShow(Sender: TObject);
begin
  // entro en modo lectura, indicarlo en el caption y poner todos los controles
  // usado a lo largo de las pantallas en un estado no editable
  if DsDatos.DataSet.State = dsBrowse then
  begin
    self.Caption :=self.Caption + ' - (SOLO LECTURA)';
    BtnRec.Enabled := False;
    SetProperties(Panel1,'AllComponents','readonly',1);
    SetProperties(Panel1,'TBitBtn','enabled',0);
    SetProperties(Panel1,'TButton','enabled',0);
    SetProperties(Panel1,'TAdvComboBox','enabled',0);
    SetProperties(Panel2,'TBitBtn','enabled',0);
  end;

  CargarCampos;
  HacerComponentesEditables;
  tDataSet := TClientDataSet(dsDatos.DataSet);
  tDataSet.OnReconcileError := dsReconcileError;
  cdDetalle.Close;
  CrearConjunto(cdDetalle, EntityDetailName, ProviderDetailName, TypeQueryDetail); // Traer el detalle en modo de edicion
  FiltrarDetalle;
  Try
    cdDetalle.Open;
    DataSet2MemoryData(cdDetalle,mdDetalle);  // pasar el detalle a un memory data para poder manejarlo de manera local
    mdDetalle.ApplyChanges;
  Except
    on e: exception do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Error al obtener el detalle del documento.',e.Message, mtWarning, [mbOk], 0);
    end;
  End;
end;

procedure TFrmDetalleDocs.NextDBGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  if (btneditardetalle.enabled) and (btneditardetalle.visible) then
     btneditardetalle.click;
end;

procedure TFrmDetalleDocs.NextDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (not (ssCtrl in Shift))  then
    NextDBGrid1.SelectCell(2,NextDBGrid1.SelectedRow,[ssShift],False);

end;

procedure TFrmDetalleDocs.NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
  Ascending: Boolean);
begin
  Ascending := not Ascending;
  mdDetalle.SortOnFields(NextDBGrid1.Columns.Item[acol].FieldName,False,Ascending);
  {TRY
    SortClientDataSet(dsDetalle.dataset,NextDBGrid1.Columns.Item[acol].FieldName);
    NextDBGrid1.ClearSelection;
  EXCEPT
    ;
  END;   }
end;

procedure TFrmDetalleDocs.NextDBGrid1VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    NextDBGrid1.ClearSelection;
    NextDBGrid1.Repaint;
    NextDBGrid1.Refresh;
  end;
end;

procedure TFrmDetalleDocs.WMWINDOWPOSCHANGING(var msg: TWMWINDOWPOSCHANGING);
var
  r: TRect;
  ancho, izquierdo, derecho: integer;
  MainForm: TForm;
begin
  MainForm := application.MainForm;
  if ((SWP_NOMOVE or SWP_NOSIZE) and msg.WindowPos^.flags) <> (SWP_NOMOVE
    or SWP_NOSIZE) then
  begin
    {Window is moved or sized, get usable screen area}
    ancho := Form2.Panel2.Width;
    if self.FormStyle = fsMDIChild then    // Si es MDI, definir los limites de la ventana padre
    begin
      if Form2.Panel2.Left = 0 then  // el rectangulo esta a la izquierda
      begin
        r.Top := 0;
        r.Left := 0;
        r.Right := Form2.Width + self.Width;
        r.Bottom := Form2.Height + self.Height;
      end
      else
      begin
        r.top := 0;
        r.left := (-1) * self.Width;
        r.Right := Form2.Width;
        r.Bottom := Form2.Height + self.Height;
      end;
    end
    else  // Definir los limites de la pantalla "usable"
    begin
      SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
      if Form2.Panel2.Left = 0 then  // el rectangulo esta a la izquierda
      begin
        izquierdo := ancho;
        derecho := 0;
      end
      else  // el rectangulo esta a la derecha
      begin
        izquierdo := 0;
        derecho := ancho;
      end;
      r.Left := r.Left + izquierdo;
      r.Right := r.Right - derecho;
    end;
    {Obtener la posición de la barra y restarla a la parte disponible}
    {Check if operation would move part of the window out of this area.
                If so correct position and, if required, size, to keep window fully inside
                the workarea. Note that simply adding the SWM_NOMOVE and SWP_NOSIZE flags
                to the flags field does not work as intended if full dragging of windows is
                disabled. In this case the window would snap back to the start position instead
                of stopping at the edge of the workarea, and you could still move the
    drag rectangle outside that area. }
    with msg.WindowPos^ do
    begin
      if x < r.left then
        x := r.left;
      if y < r.top then
        y := r.top;
      if (x + cx) > r.right then
      begin
        x := r.right - cx;
        if x < r.left then
        begin
          cx := cx - (r.left - x);
          x := r.Left;
        end;
      end;
      if (y + cy) > r.bottom then
      begin
        y := r.bottom - cy;
        if y < r.top then
        begin
          cy := cy - (r.top - y);
          y := r.top;
        end;
      end;
    end;
  end;
  inherited;
end;

procedure TFrmDetalleDocs.dsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  InteliDialog.ShowModal('ERROR FATAL','Error en la base de datos',e.Message,mtError,[mbOK],0);
end;

end.
