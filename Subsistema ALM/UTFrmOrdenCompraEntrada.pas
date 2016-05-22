unit UTFrmOrdenCompraEntrada;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDetalleDocs, AdvDBLookupComboBox, StdCtrls, JvExControls,
  JvLabel, JvMemoryDataset, DB, DBClient, AdvShapeButton, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls,
  UTFrmPartidaDoc, ClientModuleUnit1, JvDBLookup, DBCtrls, ComCtrls,
  AdvDateTimePicker, AdvDBDateTimePicker, AdvEdit, DBAdvEd, NxColumns,
  NxDBColumns, AdvEdBtn;

function SortClientDataSet(ClientDataSet: TClientDataSet;
const FieldName: String): Boolean;
type
  TFrmOrdenCompraEntrada = class(TFrmDetalleDocs)
    lbl1: TJvLabel;
    edtSerie: TEdit;
    cdEntrada: TClientDataSet;
    dsEntrada: TDataSource;
    cdAlmacen: TClientDataSet;
    dsAlmacen: TDataSource;
    cdEntradaDet: TClientDataSet;
    cmbidalmacen: TDBLookupComboBox;
    lbl2: TJvLabel;
    dtpfecha: TAdvDBDateTimePicker;
    memComentarios: TDBMemo;
    lbl3: TJvLabel;
    edtReferencia: TDBAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBNumberColumn3: TNxDBNumberColumn;
    NxDBNumberColumn4: TNxDBNumberColumn;
    edtReferencia1: TDBAdvEdit;
    edtCodigoFormaPago: TAdvEditBtn;
    edtTituloFormaPago: TAdvEdit;
    CbMoneda: TComboBox;
    procedure Inicializar; override;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure NextDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure NextDBGrid1CellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure NextDBGrid1CellFormating(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure NextDBGrid1Enter(Sender: TObject);
    procedure cmbidalmacenKeyPress(Sender: TObject; var Key: Char);
    procedure BtnRecClick(Sender: TObject);
    procedure edtCodigoFormaPagoClickBtn(Sender: TObject);
    procedure edtCodigoFormaPagoKeyPress(Sender: TObject; var Key: Char);
    procedure NextDBGrid1VerticalScroll(Sender: TObject; Position: Integer);
    procedure NextDBGrid1SortColumn(Sender: TObject; ACol: Integer;
      Ascending: Boolean);

    procedure NextDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);  private
    { Private declarations }
  protected
    procedure HacerComponentesEditables; override;
    function createPopUpPartida: TFrmPartidaDoc; override;
    procedure CargarCampos; override;
  public
    { Public declarations }
  end;

var
  FrmOrdenCompraEntrada: TFrmOrdenCompraEntrada;

implementation

uses
  xDatabase, UInteliDialog, alm_genericclasses, UTFrmFormaPago;

{$R *.dfm}


procedure TFrmOrdenCompraEntrada.Inicializar;
begin
  keyDetailField := 'idocdetalle';
  keyParentField := 'idoc';
  entityDetailName := 'alm_ordencompradetalle';
  codeDetailField := '';
end;

procedure TFrmOrdenCompraEntrada.NextDBGrid1CellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
  inherited;
  case Acol of
    3: CellColor := RGB(234,241,221);
    4: CellColor := RGB(242,221,220);
    5: CellColor := RGB(215,228,188);
    else CellColor := RGB(255,255,204);
  end;

end;

procedure TFrmOrdenCompraEntrada.NextDBGrid1CellFormating(Sender: TObject; ACol,
  ARow: Integer; Value: WideString; var TextColor: TColor;
  var FontStyle: TFontStyles; CellState: TCellState);
begin
  inherited;
  if NextDBGrid1.SelectedRow = ARow then
    FontStyle := [fsBold]
  else
    FontStyle := [];
  TextColor := clBlack;

end;

procedure TFrmOrdenCompraEntrada.NextDBGrid1Enter(Sender: TObject);
begin
  inherited;
  NextDBGrid1.SelectCell(5, NextDBGrid1.SelectedRow,[],true);
end;

procedure TFrmOrdenCompraEntrada.NextDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    if NextDBGrid1.SelectedRow < NextDBGrid1.RowCount - 1 then
      NextDBGrid1.SelectCell(5, NextDBGrid1.SelectedRow + 1,[],true)
    else
      NextDBGrid1.SelectCell(5, 0,[],true);
  end;
end;

procedure TFrmOrdenCompraEntrada.NextDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (not (ssCtrl in Shift))  then
    NextDBGrid1.SelectCell(2,NextDBGrid1.SelectedRow,[ssShift],False);

end;

procedure TFrmOrdenCompraEntrada.NextDBGrid1SortColumn(Sender: TObject;
  ACol: Integer; Ascending: Boolean);
begin
  inherited;
 { TRY
    SortClientDataSet(dsDetalle.DataSet,NextDBGrid1.Columns.Item[acol].FieldName);
    NextDBGrid1.ClearSelection;
  EXCEPT
    ;
  END;   }
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

procedure TFrmOrdenCompraEntrada.NextDBGrid1VerticalScroll(Sender: TObject;
  Position: Integer);
begin
  inherited;
  if  GetKeyState(VK_CONTROL) >= 0   then
  begin
    NextDBGrid1.ClearSelection;
    NextDBGrid1.Repaint;
    NextDBGrid1.Refresh;
  end;
end;

procedure TFrmOrdenCompraEntrada.HacerComponentesEditables;
begin
  //
end;

procedure TFrmOrdenCompraEntrada.cmbidalmacenKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
       SelectNext(Sender as TWinControl,False,True)
    else
       SelectNext(Sender as TWinControl,True,True) ;
  end;
end;

function TFrmOrdenCompraEntrada.createPopUpPartida: TFrmPartidaDoc;
begin
  //
end;

procedure TFrmOrdenCompraEntrada.edtCodigoFormaPagoClickBtn(Sender: TObject);
Var
  frm1: TFrmFormaPago;
  reg: TLista;
begin
  inherited;
  frm1 := TFrmFormaPago.Create(nil);
  reg := frm1.SeleccionarItem;
  if Assigned(reg) then
  begin
    cdEntrada.FieldValues['idformapago'] := reg['idformapago'];
    edtCodigoFormaPago.Text := reg['codigoformapago'];
    edtTituloFormaPago.Text := reg['tituloformapago'];
  end;
  frm1.Free;
end;

procedure TFrmOrdenCompraEntrada.edtCodigoFormaPagoKeyPress(Sender: TObject;
  var Key: Char);
Var
  ProviderName: String;
  cdFormaPago: TClientDataSet;
begin
  inherited;
  if (Key = #13) and (trim(edtCodigoFormaPago.Text) <> '') then
  begin
    cdFormaPago := TClientDataSet.Create(nil);
    CrearConjunto(cdFormaPago,'alm_formapago',ProviderName,ccSelect);
    CargarDatosFiltrados(cdFormaPago,'codigoformapago',[trim(edtCodigoFormaPago.Text)]);
    cdFormaPago.Open;
    if cdFormaPago.RecordCount = 1 then
    begin
      cdEntrada.FieldValues['idformapago'] := cdFormaPago.FieldValues['idformapago'];
      edtCodigoFormaPago.Text := cdFormaPago.FieldValues['codigoformapago'];
      edtTituloFormaPago.Text := cdFormaPago.FieldValues['tituloformapago'];
    end
    else
      edtCodigoFormaPagoClickBtn(Sender);
    cdFormaPago.Free;
  end;
end;

procedure TFrmOrdenCompraEntrada.FormCreate(Sender: TObject);
Var
  ProviderName: String;
begin
  // Siempre se va a hacer un documento nuevo
  CrearConjunto(cdEntrada, 'alm_entrada', ProviderDetailName, ccUpdate); // Traer el detalle en modo de edicion
  CargarDatosFiltrados(cdEntrada,'identrada',[-9]);
  CrearConjunto(cdEntradaDet, 'alm_entradadetalle', ProviderDetailName, ccUpdate); // Traer el detalle en modo de edicion
  CargarDatosFiltrados(cdEntradaDet,'identrada',[-9]);
  dsEntrada.DataSet := cdEntrada;
  cdEntrada.Open;

  // Cargar la lista de los almacenes
  CrearConjunto(cdAlmacen,'alm_almacen',ProviderName,ccSelect);
  CargarDatosFiltrados(cdAlmacen,'activo',['si']);
  cdAlmacen.Open;
  cdAlmacen.First;

  cdEntrada.Append;
  cdEntrada.FieldByName('idalmacen').ReadOnly := false;
  cdEntrada.FieldValues['idalmacen'] := cdAlmacen.FieldValues['idalmacen'];
  cdEntradaDet.Open;

  inherited;

end;

procedure TFrmOrdenCompraEntrada.FormShow(Sender: TObject);
Var
  Field,Field2: TFloatField;
  ProviderName: String;
  cdFormaPago: TClientDataSet;
  cdProveedor: TClientDataSet;
begin
  CargarCampos;
  HacerComponentesEditables;

  Try
    // Traer los datos del proveedor para obtener la forma de pago
    cdProveedor := TClientDataSet.Create(nil);
    CrearConjunto(cdProveedor,'alm_proveedor',ProviderName,ccSelect);
    CargarDatosFiltrados(cdProveedor,'idproveedor',[dsDatos.DataSet.FieldByName('idproveedor').AsInteger]);
    cdProveedor.Open;
    cdEntrada.FieldValues['idformapago'] := cdProveedor.FieldValues['idformapago'];
    edtCodigoFormaPago.Text := cdProveedor.FieldValues['codigoformapago'];
    edtTituloFormaPago.Text := cdProveedor.FieldValues['tituloformapago'];
    cdProveedor.Close;
    EliminarConjunto(cdProveedor.ProviderName);
    cdProveedor.Free;

    cdDetalle.Close;
    CrearConjunto(cdDetalle, EntityDetailName, ProviderDetailName, TypeQueryDetail); // Traer el detalle en modo de edicion
    FiltrarDetalle;
    cdDetalle.Open;
    // llenar el memorydata con la estructura de entradadetalle que es el que realmente se va a capturar
    DataSet2MemoryData(cdEntradaDet,mdDetalle);
    mdDetalle.ApplyChanges;
    mdDetalle.Active := false;
    Field := TFloatField.Create(mdDetalle);
    Field.Name := 'fldCantidadOC';
    Field.FieldName := 'cantidadoc';
    Field.FieldKind := fkData;
    Field.DataSet := mdDetalle;
    Field2 := TFloatField.Create(mdDetalle);
    Field2.Name := 'fldCantidaRec';
    Field2.FieldName := 'cantidadrec';
    Field2.FieldKind := fkData;
    Field2.DataSet := mdDetalle;
    mdDetalle.Active := true;
    // Ahora cargar todos los valores de la tabla del detalle de la orden de compra
    cdDetalle.First;
    while not cdDetalle.eof do
    begin
      mdDetalle.Append;
      mdDetalle.FieldValues['identrada'] := 0;
      mdDetalle.FieldValues['identradadetalle'] := 0;
      mdDetalle.FieldValues['idocdetalle'] := cdDetalle.FieldValues['idocdetalle'];
      mdDetalle.FieldValues['idarticulo'] := cdDetalle.FieldValues['idarticulo'];
      mdDetalle.FieldValues['codigoarticulo'] := cdDetalle.FieldValues['codigoarticulo'];
      mdDetalle.FieldValues['tituloarticulo'] := cdDetalle.FieldValues['tituloarticulo'];
      mdDetalle.FieldValues['codigounidad'] := cdDetalle.FieldValues['codigounidad'];
      mdDetalle.FieldValues['titulodisciplina'] := cdDetalle.FieldValues['titulodisciplina'];
      mdDetalle.FieldValues['cantidadoc'] := cdDetalle.FieldValues['cantidad'];
      mdDetalle.FieldValues['cantidadrec'] := NVL(cdDetalle.FieldValues['cantidadrecibida'],0);
      mdDetalle.FieldValues['idimpuesto'] := cdDetalle.FieldValues['idimpuesto'];
      mdDetalle.FieldValues['codigoimpuesto'] := cdDetalle.FieldValues['codigoimpuesto'];
      mdDetalle.FieldValues['tasa'] := cdDetalle.FieldValues['tasa'];
      mdDetalle.FieldValues['cantidad'] := 0;
      mdDetalle.FieldValues['precio'] := cdDetalle.FieldValues['precio'];
      mdDetalle.FieldValues['observaciones'] := cdDetalle.FieldValues['observaciones'];
      mdDetalle.Post;
      cdDetalle.Next;
    end;
    mdDetalle.First;
    cmbidalmacen.SetFocus;
  Except
    on e: exception do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Error al obtener el detalle del documento.',e.Message, mtWarning, [mbOk], 0);
    end;
  End;
end;

procedure TFrmOrdenCompraEntrada.btn1Click(Sender: TObject);
begin
  inherited;
  cdEntrada.FieldByName('idalmacen').AsInteger := 1;

end;

procedure TFrmOrdenCompraEntrada.BtnRecClick(Sender: TObject);
Var
  Cuantos: Integer;
  IdEntrada: Integer;
  Serie: String;
  dia,mes,anio: word;
  formatoSerie: string;
  RecNo: Integer;
  cdSerie,cdfacturau,cdauxent,cdauxoc: TClientDataSet;
  ProviderName: String;
  costotasa:Real;
begin
  try
    //inherited;
    // Validar datos del encabezado
    if cdEntrada.FieldByName('idformapago').AsInteger < 1 then
    begin
      InteliDialog.ShowModal('ERROR','No se ha indicado una forma de pago valida.',
            'La forma de pago que ha indicado no es valida. Verifique.',
            mtError,[mbOK],0);
      edtCodigoFormaPago.SetFocus;
      exit;
    end;

    cdEntrada.FieldByName('tituloalmacen').Assign(cdAlmacen.FieldByName('tituloalmacen'));


    // primero contar si existen partidas capturadas y si estas no se pasan de la
    // cantidad total de la OC.
    Cuantos := 0;
    RecNo := -1;
    mdDetalle.First;
    while not mdDetalle.eof do
    begin
      if mdDetalle.FieldByName('Cantidad').AsFloat > 0 then
      begin
        inc(Cuantos);
        if (mdDetalle.FieldByName('Cantidad').AsFloat > (mdDetalle.FieldByName('CantidadOC').AsFloat - mdDetalle.FieldByName('CantidadRec').AsFloat)) then
        begin
          RecNo := mdDetalle.RecNo;
          break;  // salir del ciclo en este momento
        end;
      end;
      mdDetalle.Next;
    end;

    if RecNo >= 0 then
    begin
      NextDBGrid1.SelectCell(5,RecNo - 1);
      InteliDialog.ShowModal('ERROR','La cantidad capturada sobrepasa la cantidad esperada.',
            'La cantidad que intenta guardar supera la cantidad esperada para surtir la orden de compra correspondiente.' + #10 + 'Nada se ha guardado.',
            mtError,[mbOK],0);
      exit;
    end;

    if Cuantos > 0 then
    begin
      // Guardar el encabezado y obtener el id
      DecodeDate(dtpFecha.Date,anio,mes,dia);
      formatoSerie := GetSerie(CadenaDoc,anio,DigitosDoc);
      cdEntrada.FieldValues['serie'] := formatoSerie;
      cdEntrada.FieldValues['periodo'] := anio;
      cdEntrada.FieldByName('fecha').AsDateTime := dtpFecha.Date;
      cdEntrada.Post;
      cdEntrada.ApplyUpdates(-9);
      IdEntrada := UltimoId;

      cdSerie := TClientDataSet.Create(nil);
      CrearConjunto(cdSerie,'alm_entrada', ProviderName, ccSelect);
      CargarDatosFiltrados(cdSerie,'identrada',[identrada]);
      cdSerie.Open;
      cdSerie.First;
      serie := cdSerie.FieldByName('serie').AsString;
      cdSerie.Close;
      EliminarConjunto(cdSerie.ProviderName);
      cdSerie.Free;

      // guardar todas las partidas que se hayan capturado cantidad
      mdDetalle.First;
      while not mdDetalle.eof do
      begin
        if mdDetalle.FieldByName('Cantidad').AsFloat > 0 then
        begin
          cdEntradaDet.Append;
          cdEntradaDet.FieldValues['identrada'] := IdEntrada;
          cdEntradaDet.FieldValues['identradadetalle'] := mdDetalle.FieldValues['identradadetalle'];
          cdEntradaDet.FieldValues['idocdetalle'] := mdDetalle.FieldValues['idocdetalle'];
          cdEntradaDet.FieldValues['idarticulo'] := mdDetalle.FieldValues['idarticulo'];
          cdEntradaDet.FieldValues['codigoarticulo'] := mdDetalle.FieldValues['codigoarticulo'];
          cdEntradaDet.FieldValues['tituloarticulo'] := mdDetalle.FieldValues['tituloarticulo'];
          cdEntradaDet.FieldValues['codigounidad'] := mdDetalle.FieldValues['codigounidad'];
          cdEntradaDet.FieldValues['titulodisciplina'] := mdDetalle.FieldValues['titulodisciplina'];
          cdEntradaDet.FieldValues['cantidad'] := mdDetalle.FieldValues['cantidad'];
          cdEntradaDet.FieldValues['precio'] := mdDetalle.FieldValues['precio'];
          cdEntradaDet.FieldValues['idimpuesto'] := mdDetalle.FieldValues['idimpuesto'];
          cdEntradaDet.FieldValues['codigoimpuesto'] := mdDetalle.FieldValues['codigoimpuesto'];
          cdEntradaDet.FieldValues['tasa'] := mdDetalle.FieldValues['tasa'];
          cdEntradaDet.FieldValues['observaciones'] := mdDetalle.FieldValues['observaciones'];
          cdEntradaDet.Post;
          cdEntradaDet.ApplyUpdates(-9);
        end;
        mdDetalle.Next;
      end;
      {
      cdauxent:= TClientDataSet.Create(nil);
      if not CrearConjunto(cdauxent,'alm_entrada',cccatalog) then
        raise InteligentConnection.Create('Al consultar alm_entrada.');
      cdauxent.Close;
      CargarDatosFiltrados(cdauxent,'identrada',[IdEntrada]);
      cdauxent.Open;

      if cdauxent.RecordCount = 1 then
      begin
        cdauxoc:= TClientDataSet.Create(nil);
        if not CrearConjunto(cdauxoc,'alm_ordencompra',cccatalog) then
        raise InteligentConnection.Create('Al consultar alm_ordencompra.');
        cdauxoc.Close;

        CargarDatosFiltrados(cdauxoc,'idoc',[cdauxent.FieldByName('idoc').AsInteger]);
        cdauxoc.Open;


        if cdauxoc.RecordCount = 1 then
        begin


          //generando factura
           cdfacturau:= TClientDataSet.Create(nil);
          if not CrearConjunto(cdfacturau,'alm_facturaxoc',ccUpdate) then
            raise InteligentConnection.Create('Al consultar cdfacturau.');
          cdfacturau.Open;
          cdfacturau.Append;

          cdfacturau.FieldByName('idfacturaxoc').AsInteger := 0;
          cdfacturau.FieldByName('idproveedor').AsInteger := cdauxoc.FieldByName('idproveedor').AsInteger;
          cdfacturau.FieldByName('idoc').AsInteger :=  cdauxoc.FieldByName('idoc').AsInteger;
          cdfacturau.FieldByName('idusuario').AsInteger :=  cdauxoc.FieldByName('idusuario').AsInteger;
          cdfacturau.FieldByName('serieoc').AsString :=  cdauxoc.FieldByName('serie').AsString;
          cdfacturau.FieldByName('fechaenvio').AsDateTime :=  cdauxoc.FieldByName('fecha').AsDateTime;
          cdfacturau.FieldByName('departamentosolicita').asstring :=  cdauxoc.FieldByName('titulodepartamento').asstring;

          costotasa:=0;
          mdDetalle.First;
          while not mdDetalle.Eof do
          begin
            if mdDetalle.FieldByName('cantidad').AsFloat > 0 then
              costotasa:= costotasa + ((mdDetalle.FieldByName('precio').AsFloat*mdDetalle.FieldByName('cantidad').AsFloat )+((mdDetalle.FieldByName('precio').AsFloat*mdDetalle.FieldByName('cantidad').AsFloat )*(mdDetalle.FieldByName('tasa').AsFloat/100)));
            mddetalle.Next;
          end;

          if CbMoneda.Text = 'MN' then
          begin
            cdfacturau.FieldByName('montomn').AsFloat := costotasa;
            cdfacturau.FieldByName('contadomn').AsFloat := costotasa;
          end;

          if CbMoneda.text = 'USD' then
          begin
            cdfacturau.FieldByName('montousd').AsFloat :=costotasa;
            cdfacturau.FieldByName('contadousd').AsFloat := costotasa;
          end;

          cdfacturau.FieldByName('nombresolicita').AsString :=  cdauxoc.FieldByName('nombreusuario').AsString;
          cdfacturau.FieldByName('proveedor').AsString :=  cdauxoc.FieldByName('nombreproveedor').AsString;
          cdfacturau.FieldByName('estado').AsString := 'activo';
          cdfacturau.Post;
          cdfacturau.ApplyUpdates(0);
        end
        else
          raise InteligentException.Create('Al Localizar la orden de compra para registrar la factura.');

      end
      else
        raise InteligentException.Create('Al Localizar la entrada para registrar la factura.');

      EliminarConjunto([cdauxent,cdauxoc,cdfacturau]);
      try
        cdauxent.free;
      except
        ;
      end;
      try
        cdauxoc.Free;
      except
        ;
      end;
      try
        cdfacturau.free;
      except
        ;
      end;
       }
      InteliDialog.ShowModal('CONFIRMACIÓN','Documento guardado correctamente',
            format('Se ha generado la entrada "%s".',[serie]),mtConfirmation,[mbOK],0);
      close;
    end
    else
      InteliDialog.ShowModal('ATENCIÓN','Nada que guardar.','No se han indicado cantidades a partidas para generar la entrada',
          mtError,[mbOK],0);
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('No se puede realizar el proceso por siguiente razón: ',e.message, mtError, [mbOk], 0);
      EliminarConjunto([cdauxent,cdauxoc,cdfacturau]);
      if Assigned(cdfacturau) then
        cdfacturau.Free;
      if Assigned(cdauxent) then
        cdauxent.Free;
      if Assigned(cdauxoc) then
        cdauxoc.Free;
    end;
    on e:InteligentConnection do
    begin
      InteliDialog.ShowModal('No se puede realizar el proceso por la siguiente razón: ',e.message, mtError, [mbOk], 0);
      EliminarConjunto([cdauxent,cdauxoc,cdfacturau]);
      if Assigned(cdfacturau) then
        cdfacturau.Free;
      if Assigned(cdauxent) then
        cdauxent.Free;
      if Assigned(cdauxoc) then
        cdauxoc.Free;
    end;
    on e:Exception do
    begin
      InteliDialog.ShowModal('Error al realizar el proceso por la siguiente razón: ',e.message, mtError, [mbOk], 0);
      EliminarConjunto([cdauxent,cdauxoc,cdfacturau]);
      if Assigned(cdfacturau) then
        cdfacturau.Free;
      if Assigned(cdauxent) then
        cdauxent.Free;
      if Assigned(cdauxoc) then
        cdauxoc.Free;
    end;

  end;
end;

procedure TFrmOrdenCompraEntrada.CargarCampos;
begin
  tDataSet := TClientDataSet(dsDatos.DataSet);
  dtpFecha.Date := now;
  cdEntrada.FieldValues['identrada'] := 0;
  cdEntrada.FieldValues['idorganizacion'] := tDataSet.FieldValues['idorganizacion'];
  cdEntrada.FieldValues['idtipomovimiento'] := -9;
  cdEntrada.FieldValues['consecutivo'] := 0;
  cdEntrada.FieldValues['idoc'] := tDataSet.FieldValues['idoc'];
  cdEntrada.FieldValues['idciudad'] := tDataSet.FieldValues['idciudad'];
  cdEntrada.FieldValues['titulociudad'] := tDataSet.FieldValues['titulociudad'];
  cdEntrada.FieldValues['tituloestado'] := tDataSet.FieldValues['tituloestado'];
  cdEntrada.FieldValues['titulopais'] := tDataSet.FieldValues['titulopais'];
  cdEntrada.FieldValues['idproveedor'] := tDataSet.FieldValues['idproveedor'];
  cdEntrada.FieldValues['nombreprov'] := tDataSet.FieldValues['nombreprov'];
  cdEntrada.FieldValues['razonsocial'] := tDataSet.FieldValues['razonsocial'];
  cdEntrada.FieldValues['idusuario'] := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
  cdEntrada.FieldValues['estado'] := 'activo';
  edtSerie.Text := tDataSet.FieldValues['serie'];
end;

end.
