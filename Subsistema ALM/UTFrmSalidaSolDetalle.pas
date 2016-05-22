unit UTFrmSalidaSolDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmSalidaDetalle, JvMemoryDataset, DB, DBClient, StdCtrls,
  AdvCombo, DBCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, AdvSmoothTabPager, JvExControls,
  JvLabel, AdvShapeButton, Buttons, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, ExtCtrls, ClientModuleUnit1,
  alm_GenericClasses;

type
  TFrmSalidaSolDetalle = class(TFrmSalidaDetalle)
    procedure CargarFirmantes;
    procedure FormShow(Sender: TObject);
  private
    ListaFirmas: array[0..9] of TAdvComboBox;
    FirmantesDoc: TListaFirmantes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSalidaSolDetalle: TFrmSalidaSolDetalle;

implementation

Uses
  StrUtils, xDatabase;

{$R *.dfm}

procedure TFrmSalidaSolDetalle.FormShow(Sender: TObject);
Var
  ProviderName: string;
begin
  // Cargar la lista de los tipos de salida
  CrearConjunto(CdTipo, 'alm_tipomovimiento', ccCatalog);
  // Solicitar solo los movimientos de salida
  CargarDatosFiltrados(cdTipo, 'tipomovimiento,manifiesto', ['SALIDA','N']);
  cdTipo.Open;
  cdTipo.First;
  dsDatos.DataSet.FieldValues['idtipomovimiento'] := cdTipo.FieldValues['idtipomovimiento'];
  dsDatos.DataSet.FieldValues['nombretipomovimiento'] := cdTipo.FieldValues['nombretipomovimiento'];

  // Cargar la lista de los almacenes
  CrearConjunto(cdAlmacen,'alm_almacen',ProviderName,ccSelect);
  CargarDatosFiltrados(cdAlmacen,'activo',['si']);
  cdAlmacen.Open;
  cdAlmacen.First;
  dsDatos.DataSet.FieldValues['idalmacen'] := cdAlmacen.FieldValues['idalmacen'];
  dsDatos.DataSet.FieldValues['tituloalmacen'] := cdAlmacen.FieldValues['tituloalmacen'];

  tab1.ActivePageIndex := 0;
  CargarFirmantes;

  ClientModule1.ComponentColor(self); //coloreado de formulario
  ClientModule1.RastrearGrids(self);  // formateo de grid


  if dsdatos.State = dsInsert then
  begin
    CdTipo.First;
    dsDatos.DataSet.FieldByName('idtipomovimiento').AsInteger := cdTipo.FieldByName('idtipomovimiento').AsInteger;
    dsDatos.DataSet.FieldByName('nombretipomovimiento').AsString := cdTipo.FieldByName('nombretipomovimiento').AsString;
    cmbTipo.Update;
    lblSerie.Caption := AnsiReplaceStr(CadenaDoc,'{año}','0000');
    lblSerie.Caption := AnsiReplaceStr(lblSerie.Caption,'{consecutivo}',DupeString('0',DigitosDoc));
  end;
  cmbTipo.SetFocus;

  // Crear una copia del dataset del detalle donde se guardará el detalle por OC
  mdDetalle.First;
  mdDetalleOC.LoadFromDataSet(mdDetalle,mdDetalle.RecordCount,JvMemoryDataset.lmCopy);
  // Crear una copia inalterada del detalle por OC pasa su uso en la pantalla de PartidaDist
  mdDetalle.First;
  mdDetalleOriginal.LoadFromDataSet(mdDetalle,mdDetalle.RecordCount,JvMemoryDataset.lmCopy);
  // borrar el memory que se muestra para crear los acumulados
  mdDetalle.First;
  while not mdDetalle.eof do
  begin
    mdDetalle.Delete;
    mdDetalle.First;
  end;

  mdDetalleOC.First;
  while not mdDetalleOC.eof do
  begin
    if mdDetalle.Locate('idarticulo',mdDetalleOC.FieldByName('idarticulo').AsInteger,[]) then
    begin
      mdDetalle.Edit;
      mdDetalle.FieldByName('cantidad').AsFloat := mdDetalle.FieldByName('cantidad').AsFloat + mdDetalleOC.FieldByName('cantidad').AsFloat;
      mdDetalle.Post;
    end
    else
    begin
      mdDetalle.Append;
      mdDetalle.CopyFields(mdDetalleOC);
      mdDetalle.Post;
    end;

    mdDetalleOC.Next;
  end;
  NextDBGrid1.show;
end;


procedure TFrmSalidaSolDetalle.CargarFirmantes;
var
  cdConfFirmantes,
  cdFirmantes: TClientDataSet;
  dpConfFirmantes,
  dpFirmantes: string;
  regFirmante: TLista;
  ItemSeleccionado: Integer;
  Hoy,FechaIni,FechaFin: TDate;
  i1,i2: integer;
  //Firmante: TFirmante;
begin
  // Llenar manualmente el arreglo para que posteriormente sea más sencillo el
  // manejo de los combos
  ListaFirmas[0] := cmbFirmante1;
  ListaFirmas[1] := cmbFirmante2;
  ListaFirmas[2] := cmbFirmante3;
  ListaFirmas[3] := cmbFirmante4;
  ListaFirmas[4] := cmbFirmante5;
  ListaFirmas[5] := cmbFirmante6;
  ListaFirmas[6] := cmbFirmante7;
  ListaFirmas[7] := cmbFirmante8;
  ListaFirmas[8] := cmbFirmante9;
  ListaFirmas[9] := cmbFirmante10;

  FirmantesDoc := TListaFirmantes.Create;
  with dsDatos.DataSet do
  begin
    FirmantesDoc.LoadData(FieldByName('firmaid').AsString,
                          FieldByName('firmatitulo').AsString,
                          FieldByName('firmanombre').AsString,
                          FieldByName('firmapuesto').AsString,
                          FieldByName('firmadepto').AsString);
  end;

  cdConfFirmantes := TClientDataSet.Create(nil);
  CrearConjunto(cdConfFirmantes, 'nuc_configuracionfirmante', dpConfFirmantes, ccCatalog);
  CargarDatosFiltrados(cdConfFirmantes, 'nombredocumento', ['SALIDA']);
  cdConfFirmantes.Open;

  // Checar cuantos firmantes tiene el documento y hacer el llenado de los combos
  // correspondinetes
  cdConfFirmantes.First;
  while not cdConfFirmantes.eof do
  begin
    i1 := cdConfFirmantes.RecNo - 1;
    cdFirmantes := TClientDataSet.Create(nil);
    CrearConjunto(cdFirmantes, 'nuc_firmante', dpFirmantes, ccSelect);
    CargarDatosFiltrados(cdFirmantes, 'idcargo', [cdConfFirmantes.FieldByName('idcargo').AsInteger]);
    cdFirmantes.Open;
    with ListaFirmas[i1] do
    begin
      Visible := true;
      LabelCaption := cdConfFirmantes.FieldByName('titulocargo').AsString;
      // Llenar el combo con los firmantes para ese cargo
      cdFirmantes.First;
      while not cdFirmantes.eof do
      begin
        i2 := cdFirmantes.RecNo - 1;
        regFirmante := GetCurrentRecord(cdFirmantes);
        AddItem(regFirmante.Valor['nombre'] + ' ' + regFirmante.Valor['apellidos'],regFirmante);
        Hoy := Now;
        FechaIni := NVL(regFirmante.Valor['FechaInicio'],StrToDate('01/01/1900'));
        FechaFin := NVL(regFirmante.Valor['FechaFin'],StrToDate('01/01/1900'));
        // Checar cual es el indice del firmante que deberá aparecer como seleccionado
        // Si es una insercion, seleccionar el que esté vigente
        if (dsDatos.DataSet.State = dsInsert)
            or ((dsDatos.DataSet.State = dsEdit) and (i1 > FirmantesDoc.Count )) then
        begin
          if (Hoy >= FechaIni) and (Hoy <= FechaFin) then
            ItemSeleccionado := i2;
        end
        else  // Si es edición, seleccionar el que indica el registro
        begin
          if FirmantesDoc.Item[i1].Id = regFirmante.Valor['idfirmante'] then
            ItemSeleccionado := i2;
        end;
        cdFirmantes.Next;
      end;
      ItemIndex := ItemSeleccionado;
    end;

    EliminarConjunto(dpFirmantes);
    cdFirmantes.Free;
    cdConfFirmantes.Next;
  end;
end;


end.
