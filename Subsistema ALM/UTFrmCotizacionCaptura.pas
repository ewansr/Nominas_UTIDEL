unit UTFrmCotizacionCaptura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvMaskEdit, StdCtrls, Buttons, NxDBColumns, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, AdvCombo,
  JvExMask, JvToolEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,
  Mask, DBCtrls, AdvSmoothTabPager, AdvShapeButton, JvExControls, JvLabel,
  ExtCtrls, NxGrid, DB, DBClient, NxColumnClasses, UInteliDialog,
  AdvSmoothLabel, AdvSmoothPanel, NxEdit, Menus, StrUtils,URegistro, AdvSpin;
type
  TImpuesto = class
  private
    id : Integer;
    Codigo  : String;
    Titulo  : String;
    Tasa: Real;
  end;
type
  TReg = class
  private
    id : Integer;
    Loc: Integer;
  end;
type
  TFrmCotizacionCaptura = class(TForm)
    Panel4: TPanel;
    JvLabel1: TJvLabel;
    edtSerie: TEdit;
    Panel3: TPanel;
    BtnRec: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    pnlPrincipal: TPanel;
    CdDatos: TClientDataSet;
    CdDetalle: TClientDataSet;
    PopupImpuestos: TPopupMenu;
    CdImpuestos: TClientDataSet;
    Panel5: TPanel;
    Panel6: TPanel;
    CbSobrecosto: TAdvComboBox;
    CbSigno: TAdvComboBox;
    CbFactor: TAdvComboBox;
    BtnNewRow: TButton;
    BtnEditRow: TButton;
    CbValor: TAdvSpinEdit;
    GroupBox1: TGroupBox;
    CbImp: TNxComboBox;
    CBXImpuesto: TCheckBox;
    BtnDelRow: TButton;
    NGSobrecosto: TNextGrid;
    NGSobrecostoidsobrecostoxcot: TNxTextColumn;
    NGSobrecostoidsobrecosto: TNxTextColumn;
    NGSobrecostoidcotizacion: TNxTextColumn;
    NGSobrecostoidimpuesto: TNxTextColumn;
    NGSobrecostodescripcionsobrecosto: TNxMemoColumn;
    NGSobrecostovalor: TNxCalcColumn;
    NGSobrecostosigno: TNxTextColumn;
    NGSobrecostofactor: TNxTextColumn;
    NGSobrecostotituloimpuesto: TNxTextColumn;
    NGSobrecostotasa: TNxTextColumn;
    NGSobrecostoorden: TNxTextColumn;
    MdSobrecostoxCot: TClientDataSet;
    Libro: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    AdvSmoothTabPager12: TAdvSmoothTabPage;
    Panel1: TPanel;
    JvLabel7: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    lblLugar: TJvLabel;
    LbReferencia: TJvLabel;
    LbFecha: TJvLabel;
    LbProveedor: TJvLabel;
    LbComentarios: TJvLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvLabel5: TJvLabel;
    JvLabel8: TJvLabel;
    CbImpuestos: TNxComboBox;
    ComboBox1: TComboBox;
    Button1: TButton;
    Panel2: TPanel;
    JvMaskEdit1: TJvMaskEdit;
    NGPartidas: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxMemoColumn1: TNxMemoColumn;
    NxDateColumn1: TNxDateColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxMemoColumn2: TNxMemoColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxDateColumn2: TNxDateColumn;
    NxNumberColumn7: TNxNumberColumn;
    NxTextColumn4: TNxTextColumn;
    pnlInfo: TAdvSmoothPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    DateVigencia: TJvDatePickerEdit;
    Button2: TButton;
    CbGravamen: TAdvComboBox;
    Panel7: TPanel;
    NGCalculos: TNextGrid;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    Splitter1: TSplitter;
    DataSource1: TDataSource;
    NxTextColumn10: TNxTextColumn;
    PopDesc: TPopupMenu;
    Eliminar1: TMenuItem;
    NxTextColumn11: TNxTextColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure NGPartidasKeyPress(Sender: TObject; var Key: Char);
    procedure NGPartidasEditExit(Sender: TObject);
    procedure CbGravamenChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbSobrecostoChange(Sender: TObject);
    procedure CbSobrecostoKeyPress(Sender: TObject; var Key: Char);
    procedure CbValorKeyPress(Sender: TObject; var Key: Char);
    procedure CbValorDownClick(Sender: TObject);
    procedure CbValorUpClick(Sender: TObject);
    procedure CbSignoChange(Sender: TObject);
    procedure CbFactorChange(Sender: TObject);
    procedure CbImpChange(Sender: TObject);
    procedure BtnNewRowClick(Sender: TObject);
    procedure BtnEditRowClick(Sender: TObject);
    procedure BtnDelRowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure NGSobrecostoAfterRowMove(Sender: TObject; FromPos,
      ToPos: Integer);
    procedure NGSobrecostoCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure Eliminar1Click(Sender: TObject);
  private
    CdSobrecosto: TClientDataSet;
    CdSobrecostoxcot: TClientDataSet;
    SCAEliminar: TStringList;//Lista de sobrecostos a eliminar

    PNameCosulta: string;
    Di: Integer;
    CambiarVigencia: Boolean;
    procedure LlenarGridDetalles(cliente: TClientDataSet; id: Integer; Grid: TNextGrid);
    function GuardaRegistro(id: Integer; Grid: Tnextgrid): Boolean;
    procedure popupItemClick(Sender: TObject);
    procedure AplicarCambiosSobrecosto(TipoCambio: String);
    procedure CargarSobrecostos;
    procedure CargarSobrecostosxCot;
    procedure LlenarGrid(Dataset: TClientDataSet; Grid: TNextGrid);
    procedure GuardaSobrecosto(Datos: Tclientdataset; IdCt: Integer);
    function Reordenar(ClientModuleUnit1: tclientdataset;
      Grids: Tnextgrid): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCotizacionCaptura: TFrmCotizacionCaptura;

implementation

uses ClientModuleUnit1,nuc_genericclasses;
{$R *.dfm}

function TFrmCotizacionCaptura.GuardaRegistro(id: Integer; Grid: Tnextgrid): Boolean;
var
  Upt,UptCot: TClientDataSet;
  Articulo: TClientDataSet;
  dig:string;
  i: Integer;
begin
  dig := '0.';
  for i := 0 to StrToInt(ComboBox1.Text)-1 do
  begin
    dig := dig + '0';
  end;
  Result := False;

  Articulo := TClientDataSet.Create(self);
  try
    if not CrearConjunto(Articulo,'alm_articulo',ccCatalog) then
      raise InteligentConnection.CreateByCode(5, ['artículos']);

    try
      Upt := TClientDataSet.Create(self);
      try
        Upt.Active := False;
        Upt.RemoteServer := ClientModule1.DSProviderConnection1;

        if not crearconjunto(Upt,'alm_cotizaciondetalle', PNameCosulta, ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['detalles de cotización']);
        try
          if not CargarDatosFiltrados(Upt,'idcotizaciondetalle',[id],False) then
            raise InteligentConnection.CreateByCode(6, ['cotizacion detalle',id,'idcotizaciondetalle']);

          Upt.Open;
          if Upt.RecordCount = 1 then
          begin
            //modifica el gravamen
            try
              UptCOT := TClientDataSet.Create(self);
              try
                if not crearconjunto(UptCOT,'alm_cotizacion',ccUpdate) then
                  raise InteligentConnection.CreateByCode(5, ['cotización']);
                try
                  if not CargarDatosFiltrados(UptCOT,'idcotizacion',[Upt.FieldByName('idcotizacion').AsInteger],False) then
                    raise InteligentConnection.CreateByCode(6, ['cotizacion',Upt.FieldByName('idcotizacion').AsString,'idcotizacion']);

                  UptCOT.Open;
                  if UptCot.RecordCount = 1 then
                  begin
                    UptCOT.Edit;
                    UptCot.FieldByName('gravamen').AsString := CbGravamen.Text ;
                    UptCot.FieldByName('vigencia').AsDateTime := DateVigencia.Date;
                    UptCot.Post;
                    UptCot.ApplyUpdates(-1);
                  end;
                finally
                  EliminarConjunto(UptCot);
                end;
              finally
                FreeAndNil(UptCot);
              end;
            except
              ;
            end;

            // Traer los valores de los impuestos del artículo
            Articulo.Close;
            if not CargarDatosFiltrados(Articulo,'idarticulo',[Grid.Cell[10,Grid.SelectedRow].AsInteger]) then
              raise InteligentConnection.CreateByCode(6, ['articulo',Articulo.FieldByName('idarticulo').AsString,'idarticulo']);

            Articulo.Open;
            Upt.Edit;
            Upt.FieldByName('cantidadcotizada').AsFloat := Grid.Cell[4,Grid.SelectedRow].AsFloat;
            Upt.FieldByName('precio').AsFloat := Grid.Cell[5,Grid.SelectedRow].AsFloat;
            Upt.FieldByName('costo').AsFloat := Upt.FieldByName('cantidadcotizada').AsFloat * Upt.FieldByName('precio').AsFloat;
            Upt.FieldByName('tiempoentrega').AsInteger := Grid.Cell[7,Grid.SelectedRow].AsInteger;
            Upt.FieldByName('referenciad').AsString := Grid.Cell[8,Grid.SelectedRow].AsString;

            Upt.FieldByName('comentarios').AsString := Grid.Cell[9,Grid.SelectedRow].AsString;
            Upt.FieldByName('vigenciad').asdatetime := Grid.Cell[12,Grid.SelectedRow].AsDateTime;
            Upt.FieldByName('credito').AsInteger := Grid.Cell[13,Grid.SelectedRow].AsInteger;
            Upt.FieldByName('idimpuesto').AsInteger := Grid.Cell[16,Grid.SelectedRow].AsInteger;
            Upt.FieldByName('codigoimpuesto').AsString := Grid.Cell[14,Grid.SelectedRow].AsString;
            Upt.FieldByName('tituloimpuesto').AsString := Grid.Cell[15,Grid.SelectedRow].AsString;
            Upt.FieldByName('tasa').AsFloat := StrToFloat(FormatFloat(dig,Grid.Cell[11,Grid.SelectedRow].AsFloat));//Articulo.FieldByName('tasa').AsFloat;
            Upt.Post;
            Upt.ApplyUpdates(-1);
            Result := True;
          end;
          Upt.Close;

        finally
          EliminarConjunto(Upt);
        end;

      finally
        FreeAndNil(Upt);
      end;
      Articulo.Close;
    finally
      EliminarConjunto(Articulo);
    end;
  finally
    FreeAndNil(Articulo);
  end;
end;

procedure TFrmCotizacionCaptura.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCotizacionCaptura.BtnDelRowClick(Sender: TObject);
var Seleccionado: integer;
begin
  Seleccionado := NGSobrecosto.SelectedRow;
  AplicarCambiosSobrecosto('Borrar');
  if (NGSobrecosto.RowCount > 0) then
  begin
    if (Seleccionado = 0)  then
    begin
      NGSobrecosto.SelectedRow := Seleccionado
    end
    else
    begin
      if Seleccionado < NGSobrecosto.RowCount then
        NGSobrecosto.SelectedRow := Seleccionado;
      if Seleccionado = NGSobrecosto.RowCount then
        NGSobrecosto.SelectedRow := Seleccionado-1;
    end;
  end
  else
    BtnDelRow.Enabled := False;
end;

procedure TFrmCotizacionCaptura.BtnEditRowClick(Sender: TObject);
var Seleccionado: integer;
begin
  Seleccionado := NGSobrecosto.SelectedRow;
  AplicarCambiosSobrecosto('Editar');
  BtnNewRow.Enabled := False;
  BtnEditRow.Enabled := False;
  NGSobrecosto.SelectedRow := Seleccionado;
end;

procedure TFrmCotizacionCaptura.BtnNewRowClick(Sender: TObject);
begin
  AplicarCambiosSobrecosto('Agregar');
  BtnNewRow.Enabled := False;
  BtnEditRow.Enabled := False;
end;

procedure TFrmCotizacionCaptura.AplicarCambiosSobrecosto(TipoCambio:String);
var Del: TClientDataSet;
begin
  if (TipoCambio = 'Editar') or (TipoCambio = 'Agregar') then
  begin
    //establece tipo de cambio insertar o editar
    if TipoCambio = 'Agregar' then
    begin
      MdSobrecostoxCot.Append;
      if MdSobrecostoxCot.RecordCount > 0 then
        MdSobrecostoxCot.FieldByName('idsobrecostoxcot').AsString:= IntToStr(-1*MdSobrecostoxCot.RecordCount)
      else
        MdSobrecostoxCot.FieldByName('idsobrecostoxcot').AsString:='-9999';
      MdSobrecostoxCot.FieldByName('orden').AsInteger:= NGSobrecosto.RowCount;
    end
    else
    begin
      MDSobrecostoxcot.Locate('idsobrecostoxcot',NGSobrecosto.Cells[0,NGSobrecosto.SelectedRow],[]);
      MdSobrecostoxCot.Edit;
    end;

    MdSobrecostoxCot.FieldByName('idsobrecosto').AsInteger:= TReg(CbSobrecosto.Items.Objects[CbSobrecosto.ItemIndex]).id;
    MdSobrecostoxCot.FieldByName('descripcionsobrecosto').AsString := CbSobrecosto.Text;
    MdSobrecostoxCot.FieldByName('valor').AsString := CbValor.Text;

    //trabajo con display y datos
    if cbsigno.Text = 'Aumento' then
      MdSobrecostoxCot.FieldByName('signo').AsString := '+'
    else
      MdSobrecostoxCot.FieldByName('signo').AsString := '-';

    if CbFactor.Text = 'Directo' then
      MdSobrecostoxCot.FieldByName('factor').AsString := '*'
    else
      MdSobrecostoxCot.FieldByName('factor').AsString := '/';

    //agregando datos de impuesto si es necesario
    if CBXImpuesto.Checked then
    begin
      MdSobrecostoxCot.FieldByName('idimpuesto').AsInteger := TImpuesto(CbImp.Items.Objects[CbImp.ItemIndex]).id;
      MdSobrecostoxCot.FieldByName('codigoimpuesto').AsString := TImpuesto(CbImp.Items.Objects[CbImp.ItemIndex]).Codigo;
      MdSobrecostoxCot.FieldByName('tituloimpuesto').AsString := TImpuesto(CbImp.Items.Objects[CbImp.ItemIndex]).Titulo;
      MdSobrecostoxCot.FieldByName('tasa').AsFloat := TImpuesto(CbImp.Items.Objects[CbImp.ItemIndex]).tasa;
    end
    else
    begin
      MdSobrecostoxCot.FieldByName('idimpuesto').AsString := '';
      MdSobrecostoxCot.FieldByName('codigoimpuesto').AsString := '';
      MdSobrecostoxCot.FieldByName('tituloimpuesto').AsString := '';
      MdSobrecostoxCot.FieldByName('tasa').AsString := '';
    end;

    MdSobrecostoxCot.FieldByName('idcotizacion').AsInteger := CdDatos.FieldByName('idcotizacion').AsInteger;
    MdSobrecostoxCot.Post;
    LlenarGrid(MDSobrecostoxcot,NGSobrecosto);
  end;

  if TipoCambio = 'Borrar' then
  begin
    MDSobrecostoxcot.Locate('idsobrecostoxcot',NGSobrecosto.Cells[0,NGSobrecosto.SelectedRow],[]);
    //si el registro a borrar está en la bd, enlistarla para borrar
    if MDSobrecostoxcot.FieldByName('idsobrecostoxcot').AsInteger > 0 then
      SCAEliminar.Add(MdSobrecostoxCot.FieldByName('idsobrecostoxcot').AsString);
    MdSobrecostoxCot.Delete;
    LlenarGrid(MDSobrecostoxcot,NGSobrecosto);
  end;

end;

procedure TFrmCotizacionCaptura.BtnRecClick(Sender: TObject);
var
  contador: Integer;
  Error: Boolean;
  Erroneos: string;
  cdCotizacionUpd: TClientDataSet;
  ProviderName: string;
begin
  try
    Contador := 0;
    Error := False;
    Erroneos := '';
    while contador < NGPartidas.RowCount do
    begin
      NGPartidas.SelectCell(1,contador,[ssShift],False);
      if not GuardaRegistro(NGPartidas.Cell[0,NGPartidas.SelectedRow].AsInteger,NGPartidas) then
      begin
        Error := True;
        Erroneos := Erroneos + NGPartidas.Cell[2,NGPartidas.SelectedRow].AsString + #10;
      end;
      Inc(contador);
    end;

    //guardar sobrecostos
    //  if MdSobrecostoxCot.RecordCount > 0 then
    GuardaSobrecosto(MdSobrecostoxCot,CdDatos.FieldByName('idcotizacion').AsInteger);

    // Cambiar el estado al encabezado si aún esta en generado
    if AnsiCompareText(CdDatos.FieldByName('estado').AsString,'generado') = 0 then
    begin
      cdCotizacionUpd := TClientDataSet.Create(nil);
      try
        if not CrearConjunto(cdCotizacionUpd,'alm_cotizacion',ProviderName,ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['cotización de materiales']);

        try
          if not CargarDatosFiltrados(cdCotizacionUpd,'idcotizacion',[CdDatos.FieldByName('idcotizacion').AsInteger]) then
            raise InteligentConnection.CreateByCode(6, ['cotización',cddatos.FieldByName('idcotizacion').AsString,'idcotizacion']);

          cdCotizacionUpd.Open;
          cdCotizacionUpd.First;
          cdCotizacionUpd.Edit;
          cdCotizacionUpd.FieldByName('estado').AsString := 'cotizado';
          cdCotizacionUpd.FieldByName('vigencia').AsDateTime := DateVigencia.Date;
          cdCotizacionUpd.Post;
          cdCotizacionUpd.ApplyUpdates(-9);
          cdCotizacionUpd.Close;
        finally
          EliminarConjunto(cdCotizacionUpd);
        end;
      finally
        FreeAndNil(cdCotizacionUpd);
      end;

    end;
    if Error then
      InteliDialog.ShowModal('Error al guardar.',' Erroneos.', mtError, [mbOk], 0)
    else
    begin
      InteliDialog.ShowModal('Proceso realizado.',' Correctamente.', mtInformation, [mbOk], 0);
      Close;
    end;
  except
    ;
  end;
end;

procedure TFrmCotizacionCaptura.GuardaSobrecosto(Datos: Tclientdataset; IdCt: Integer);
var Tmp: TClientDataSet;
i: Integer;
begin
  Datos.First;
  Tmp := TClientDataSet.Create(nil);
  try
    if not CrearConjunto(Tmp,'alm_sobrecostosxcot',ccUpdate) then
      raise InteligentConnection.CreateByCode(5, ['sobrecostos por cotización']);

    try
       while not Datos.Eof do
      begin

        if Datos.FieldByName('idsobrecostoxcot').AsInteger >= 0 then
        begin
          Tmp.Close;
          if not CargarDatosFiltrados(Tmp,'idsobrecostoxcot',[Datos.FieldByName('idsobrecostoxcot').AsInteger]) then
            raise InteligentConnection.CreateByCode(6, ['sobrecostos por cotización',Datos.FieldByName('idsobrecostoxcot').AsString,'idsobrecostoxcot']);

          Tmp.Open;
          if Tmp.RecordCount = 1 then
          begin
            Tmp.Edit;
            for i := 0 to Tmp.FieldCount-1 do
            begin
              Tmp.fieldvalues[Tmp.FieldDefs.Items[i].Name] := Datos.Fieldvalues[Tmp.FieldDefs.Items[i].Name];
            end;
            Tmp.Post;
            Tmp.ApplyUpdates(-1);
          end;
        end
        else
        begin
          Tmp.Close;
          if not CargarDatosFiltrados(Tmp,'idsobrecostoxcot',[-9]) then
            raise InteligentConnection.CreateByCode(6, ['sobrecostos por cotización','-9','idsobrecostoxcot']);

          Tmp.Open;
          Tmp.Append;
          for i := 0 to Tmp.FieldCount-1 do
          begin
            if LowerCase(Tmp.FieldDefs.Items[i].Name) <> 'idsobrecostoxcot' then
              Tmp.fieldvalues[Tmp.FieldDefs.Items[i].Name] := Datos.Fieldvalues[Tmp.FieldDefs.Items[i].Name]
            else
              Tmp.fieldvalues[Tmp.FieldDefs.Items[i].Name] := 0;
          end;
          Tmp.Post;
          Tmp.ApplyUpdates(-1);
        end;
        Datos.Next;
      end;
      for i := 0 to SCAEliminar.Count-1 do
      begin
        Tmp.Close;
        if not CargarDatosFiltrados(Tmp,'idsobrecostoxcot',[SCAEliminar[i]]) then
          raise InteligentConnection.CreateByCode(6, ['sobrecostos por cotización',SCAEliminar.CommaText,'idsobrecostoxcot']);

        Tmp.Open;
        if Tmp.RecordCount = 1 then
        begin
          Tmp.Delete;
          Tmp.ApplyUpdates(-1);
        end;
      end;
    finally
      EliminarConjunto(Tmp);
    end;

  finally
    FreeAndNil(Tmp);
  end;
end;

procedure TFrmCotizacionCaptura.Button1Click(Sender: TObject);
var i:Integer;
begin
  for i:= 0 to NGPartidas.RowCount-1 do
  begin
    NGPartidas.Cells[16,i] := IntToStr(TImpuesto(CbImpuestos.Items.Objects[CbImpuestos.ItemIndex]).id);
    NGPartidas.Cells[11,i] := FloatToStr(TImpuesto(CbImpuestos.Items.Objects[CbImpuestos.ItemIndex]).Tasa);
    NGPartidas.Cells[14,i] := TImpuesto(CbImpuestos.Items.Objects[CbImpuestos.ItemIndex]).Codigo;
    NGPartidas.Cells[15,i] := TImpuesto(CbImpuestos.Items.Objects[CbImpuestos.ItemIndex]).Titulo;
  end;
end;

procedure TFrmCotizacionCaptura.Button2Click(Sender: TObject);
var i,y,h:Integer;
  cant,net, nettot,sc,imp, imptot : Real;
  ListImpuesto,ListImpuestoSC: TStringList;
  IMPT: TImpuesto;
begin
  net := 0;
  sc  := 0;
  imp := 0;
  imptot := 0;
  nettot := 0;
  NGCalculos.BeginUpdate;
  NGCalculos.ClearRows;
  ListImpuesto := TStringList.Create;
  ListImpuestoSC := TStringList.Create;

  if NGPartidas.RowCount > 0 then
  begin
    for i := 0 to NGPartidas.RowCount-1 do
    begin
      NGCalculos.AddRow(1);
      for h := 0 to NGCalculos.Columns.Count -1 do
        NGCalculos.Cell[h,NGCalculos.RowCount-1].Color := clYellow;

      net := net + NGPartidas.Cell[6,i].AsFloat;
      NGCalculos.Cell[0,NGCalculos.RowCount-1].AsFloat := NGPartidas.Cell[6,i].AsFloat;
      //añadir impuestos la lista
      if ListImpuesto.IndexOf( NGPartidas.Cell[15,i].AsString) = -1 then
      begin
        IMPT := TImpuesto.Create;
        IMPT.id := NGPartidas.Cell[10,i].AsInteger;
        IMPT.Codigo := NGPartidas.Cell[14,i].AsString;
        IMPT.Titulo := NGPartidas.Cell[15,i].AsString;
        IMPT.Tasa := NGPartidas.Cell[11,i].AsFloat;
        ListImpuesto.AddObject(IMPT.Titulo,IMPT);
      end;
    end;
    NGCalculos.AddRow(1);
    for h := 0 to NGCalculos.Columns.Count -1 do
      NGCalculos.Cell[h,NGCalculos.RowCount-1].Color := clYellow;
    NGCalculos.Cell[3,NGCalculos.RowCount-1].AsFloat := net;
    nettot := net;

    //sobrecosto
    if NGSobrecosto.RowCount > 0 then
    begin
      for y := 0 to NGSobrecosto.RowCount-1 do
      begin
        if NGSobrecosto.Cells[7,y] <> 'Directo' then
        begin
          NGCalculos.AddRow(1);
          NGCalculos.Cell[1,NGCalculos.RowCount-1].Color := NGSobrecosto.Cell[5,y].Color;
          if NGSobrecosto.Cells[6,y] = 'Aumento' then
          begin
            NGCalculos.Cell[1,NGCalculos.RowCount-1].AsString :='+'+ NGSobrecosto.Cell[5,y].AsString+'%';
            NGCalculos.Cell[2,NGCalculos.RowCount-1].AsString := '=';
            NGCalculos.Cell[3,NGCalculos.RowCount-1].asfloat := net* (NGSobrecosto.Cell[5,y].asfloat/100);
            nettot := nettot + (net* (NGSobrecosto.Cell[5,y].asfloat/100));
          end
          else
          begin
            NGCalculos.Cell[1,NGCalculos.RowCount-1].AsString :=  '-'+NGSobrecosto.Cell[5,y].AsString+'%';
            NGCalculos.Cell[2,NGCalculos.RowCount-1].AsString := '=';
            NGCalculos.Cell[3,NGCalculos.RowCount-1].asfloat := -1*net* (NGSobrecosto.Cell[5,y].asfloat/100);
            nettot := nettot -  (net* (NGSobrecosto.Cell[5,y].asfloat/100));
          end;
        end
        else
        //cuando es cantidad el sobrecosto se hace esto
        begin
          NGCalculos.AddRow(1);
          NGCalculos.Cell[1,NGCalculos.RowCount-1].Color := NGSobrecosto.Cell[5,y].Color;
          if NGSobrecosto.Cells[6,y] = 'Aumento' then
          begin
            sc := sc + NGSobrecosto.Cell[5,y].asfloat;
            nettot := nettot + NGSobrecosto.Cell[5,y].AsFloat;
          end
          else
          begin
            sc := sc - NGSobrecosto.Cell[5,y].asfloat;
            nettot := nettot - NGSobrecosto.Cell[5,y].AsFloat;
          end;
          NGCalculos.Cell[1,NGCalculos.RowCount-1].AsFloat := NGSobrecosto.Cell[5,y].AsFloat;
        end;

        i := 0;
        //añadir impuestos la lista
        if ListImpuestoSC.IndexOf( NGSobrecosto.Cell[8,y].AsString) = -1 then
        begin
          if Length(trim(NGSobrecosto.Cell[3,y].AsString)) > 0then
          begin
            IMPT := TImpuesto.Create;
            IMPT.id := NGSobrecosto.Cell[3,y].AsInteger;
            IMPT.Codigo := NGSobrecosto.Cell[8,y].AsString;
            IMPT.Titulo := NGSobrecosto.Cell[8,y].AsString;
            IMPT.Tasa := NGSobrecosto.Cell[9,y].AsFloat;
            ListImpuestoSC.AddObject(IMPT.Codigo,IMPT);
          end;
          inc(i);
        end;
      end;
      NGCalculos.AddRow(1);

      NGCalculos.Cell[3,NGCalculos.RowCount-1].AsFloat := sc;
    end;

    //calculando impuesto de las partidas
    for i := 0 to ListImpuesto.Count-1 do
    begin
      NGCalculos.AddRow(1);
      for h := 0 to NGCalculos.Columns.Count -1 do
        NGCalculos.Cell[h,NGCalculos.RowCount-1].Color := clInfoBk;
      NGCalculos.Cell[1,NGCalculos.RowCount-1].AsString := TImpuesto(ListImpuesto.Objects[i]).Codigo;
      imp := 0;
      for y := 0 to NGPartidas.RowCount-1 do
      begin
        if NGPartidas.Cell[15,y].AsString = ListImpuesto[i] then
          imp := imp + (NGPartidas.Cell[6,y].AsFloat * NGPartidas.Cell[11,y].asfloat);
      end;
      NGCalculos.Cell[2,NGCalculos.RowCount-1].AsFloat := imp;
      imptot := imptot + imp;
    end;

    //calculando impuestos de los sobrecostos
    for i := 0 to ListImpuestoSC.Count-1 do
    begin
      NGCalculos.AddRow(1);
      for h := 0 to NGCalculos.Columns.Count -1 do
        NGCalculos.Cell[h,NGCalculos.RowCount-1].Color := clInfoBk;
      NGCalculos.Cell[1,NGCalculos.RowCount-1].AsString := TImpuesto(ListImpuestoSC.Objects[i]).Codigo;
      imp := 0;
      for y := 0 to NGSobrecosto.RowCount-1 do
      begin


        if NGSobrecosto.Cell[8,y].AsString = ListImpuestoSC[i] then
          imp := imp + (NGSobrecosto.Cell[5,y].AsFloat * NGSobrecosto.Cell[9,y].asfloat);
      end;
      NGCalculos.Cell[2,NGCalculos.RowCount-1].AsFloat := imp;
      imptot := imptot + imp;
    end;
    NGCalculos.AddRow(1);
    for h := 0 to NGCalculos.Columns.Count -1 do
      NGCalculos.Cell[h,NGCalculos.RowCount-1].Color := clInfoBk;
    NGCalculos.Cell[3,NGCalculos.RowCount-1].AsFloat := imptot;
    NGCalculos.AddRow(1);
    for h := 0 to NGCalculos.Columns.Count -1 do
      NGCalculos.Cell[h,NGCalculos.RowCount-1].Color := clSkyBlue;
    NGCalculos.Cell[3,NGCalculos.RowCount-1].AsString := 'Total';
    NGCalculos.Cell[4,NGCalculos.RowCount-1].AsFloat := imptot+nettot;
  end;
  NGCalculos.EndUpdate;
  FreeAndNil(ListImpuesto);
  FreeAndNil(ListImpuestoSC);
end;

procedure TFrmCotizacionCaptura.CbFactorChange(Sender: TObject);
begin
  BtnNewRow.Enabled := True;
  if NGSobrecosto.SelectedRow > -1 then
    BtnEditRow.Enabled := True;

  CBXImpuesto.Checked := False;
  GroupBox1.Enabled :=CbFactor.Text = 'Directo';
end;

procedure TFrmCotizacionCaptura.CbGravamenChange(Sender: TObject);
var i:integer;
  cliente: TClientDataSet;
begin
{  cliente := TClientDataSet.Create(Self);
  cliente.Active := False;
  crearconjunto(cliente,'alm_cotizaciondetalle', ccUpdate);
  CargarDatosFiltrados(cliente,'idcotizacion',[CdDatos.FieldByName('idcotizacion').AsInteger]);
  cliente.Open;

  if CbGravamen.Text = 'IVA' then
  begin
    for i := 0 to NGPartidas.RowCount-1 do
    begin
      if NGPartidas.Cell[5,i].AsFloat > 0 then
      if cliente.Locate('idcotizaciondetalle',NGPartidas.Cell[0,i].AsInteger,[]) then
      begin
         NGPartidas.Cell[5,i].AsFloat := NGPartidas.Cell[5,i].AsFloat * ((cliente.FieldByName('tasa').AsFloat/100)+1);
         NGPartidas.Cell[6,i].AsFloat := NGPartidas.Cell[5,i].AsFloat * NGPartidas.Cell[4,i].AsFloat;
      end;
    end;
  end
  else
  for i := 0 to NGPartidas.RowCount-1 do
  begin
    if NGPartidas.Cell[5,i].AsFloat > 0 then
    if cliente.Locate('idcotizaciondetalle',NGPartidas.Cell[0,i].AsInteger,[]) then
    begin
      NGPartidas.Cell[5,i].AsFloat := NGPartidas.Cell[5,i].AsFloat / ((cliente.FieldByName('tasa').AsFloat/100)+1);
      NGPartidas.Cell[6,i].AsFloat := NGPartidas.Cell[5,i].AsFloat * NGPartidas.Cell[4,i].AsFloat;
    end;
  end;

  cliente.Close;
  EliminarConjunto(cliente);
  FreeAndNil(cliente); }
end;

procedure TFrmCotizacionCaptura.CbImpChange(Sender: TObject);
begin
  BtnNewRow.Enabled := True;
  if NGSobrecosto.SelectedRow > -1 then
    BtnEditRow.Enabled := True;
end;

procedure TFrmCotizacionCaptura.CbSignoChange(Sender: TObject);
begin
  BtnNewRow.Enabled := True;
  if NGSobrecosto.SelectedRow > -1 then
    BtnEditRow.Enabled := True;
end;

procedure TFrmCotizacionCaptura.CbSobrecostoChange(Sender: TObject);
begin
  BtnNewRow.Enabled := True;
  if NGSobrecosto.SelectedRow > -1 then
    BtnEditRow.Enabled := True;
end;

procedure TFrmCotizacionCaptura.CbSobrecostoKeyPress(Sender: TObject;
  var Key: Char);
  var oj: TReg;
begin
  if key = #13 then
  begin
    if CbSobrecosto.ItemIndex= -1 then
    begin
      CdSobrecosto.Append;
      CdSobrecosto.FieldByName('idsobrecosto').AsInteger := 0;
      CdSobrecosto.FieldByName('descripcionsobrecosto').AsString := CbSobrecosto.Text;
      CdSobrecosto.Post;
      CdSobrecosto.ApplyUpdates(-1);
      CargarSobrecostos;
    end;
  end;
end;

procedure TFrmCotizacionCaptura.CbValorDownClick(Sender: TObject);
begin
  BtnNewRow.Enabled := True;
  if NGSobrecosto.SelectedRow > -1 then
    BtnEditRow.Enabled := True;
end;

procedure TFrmCotizacionCaptura.CbValorKeyPress(Sender: TObject; var Key: Char);
begin
  BtnNewRow.Enabled := True;
  if NGSobrecosto.SelectedRow > -1 then
    BtnEditRow.Enabled := True;
end;

procedure TFrmCotizacionCaptura.CbValorUpClick(Sender: TObject);
begin
  BtnNewRow.Enabled := True;
  if NGSobrecosto.SelectedRow > -1 then
    BtnEditRow.Enabled := True;
end;

procedure TFrmCotizacionCaptura.ComboBox1Change(Sender: TObject);
var i: Integer;
  dig: string;
begin
  dig := '#,##0.';
  for i := 0 to StrToInt(ComboBox1.Text)-1 do
  begin
    dig := dig + '0';
  end;
  TNxNumberColumn(NGPartidas.Columns[4]).FormatMask := dig;
  TNxNumberColumn(NGPartidas.Columns[6]).FormatMask := dig;
  TNxNumberColumn(NGPartidas.Columns[5]).FormatMask := dig;
end;

procedure TFrmCotizacionCaptura.Eliminar1Click(Sender: TObject);
var
  Temp, Temp2: TClientDataSet;
  Oj : TReg;
begin
  Temp2 := TClientDataSet.Create(nil);
  try
    if not CrearConjunto(Temp2,'alm_sobrecostosxcot',ccCatalog) then
      raise InteligentConnection.CreateByCode(5, ['sobrecostos por cotización']);

    try
      if not CargarDatosFiltrados(Temp2,'idsobrecosto',[TReg(CbSobrecosto.Items.Objects[CbSobrecosto.ItemIndex]).id]) then
        raise InteligentConnection.CreateByCode(6, ['sobrecosto',TReg(CbSobrecosto.Items.Objects[CbSobrecosto.ItemIndex]).id,'idsobrecosto']);

      Temp2.Open;
      if Temp2.RecordCount = 0 then
        raise Exception.Create('*');

      Temp := TClientDataSet.Create(nil);
      try
        if not CrearConjunto(Temp,'nuc_sobrecostos',ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['sobrecostos']);
        try
          if not CargarDatosFiltrados(Temp,'idsobrecosto',[TReg(CbSobrecosto.Items.Objects[CbSobrecosto.ItemIndex]).id]) then
            raise InteligentConnection.CreateByCode(6, ['sobrecosto',TReg(CbSobrecosto.Items.Objects[CbSobrecosto.ItemIndex]).id,'idsobrecosto']);

          Temp.Open;
          if Temp.RecordCount = 1 then
          begin
            Temp.Delete;
            Temp.ApplyUpdates(-1);
          end;
          CargarSobrecostos;
        finally
          EliminarConjunto(Temp);
        end;
      finally
        FreeAndNil(Temp);
      end;
    finally
      EliminarConjunto(Temp2);
    end;

  finally
    FreeAndNil(Temp2);
  end;

end;

procedure TFrmCotizacionCaptura.popupItemClick(Sender: TObject);
var ObjImp:Integer;
begin
  ObjImp :=   CbImp.Items.IndexOf( ReplaceStr(TMenuItem(Sender).Caption,'&','')) ;
  NGPartidas.Cell[11,NGPartidas.SelectedRow].AsFloat :=TImpuesto(CbImp.Items.Objects[ObjImp]).Tasa;
  NGPartidas.Cell[14,NGPartidas.SelectedRow].AsString :=TImpuesto(CbImp.Items.Objects[ObjImp]).Codigo;
  NGPartidas.Cell[15,NGPartidas.SelectedRow].AsString :=TImpuesto(CbImp.Items.Objects[ObjImp]).Titulo;
  NGPartidas.Cell[16,NGPartidas.SelectedRow].AsInteger :=     TImpuesto(CbImp.Items.Objects[ObjImp]).id;
end;

procedure TFrmCotizacionCaptura.FormClose(Sender: TObject;
  var Action: TCloseAction);
var h:Integer;
begin
  EliminarConjunto(CdSobrecosto);
  for h := 0 to NGPartidas.Columns.Count -1 do
  begin
    SetRegistry('\Ventanas', '\' + Self.Name, NGPartidas.Columns.Item[h].Name, IntToStr(NGPartidas.Columns.Item[h].Width));
    SetRegistry('\Ventanas', '\' + Self.Name, NGPartidas.Columns.Item[h].Name+'p', IntToStr(NGPartidas.Columns.Item[h].Position));
  end;

end;

procedure TFrmCotizacionCaptura.FormCreate(Sender: TObject);
begin
  SCAEliminar := TStringList.Create;
  CdSobrecosto:= TClientDataSet.Create(self);
  CdSobrecostoxcot:= TClientDataSet.Create(Self);
end;

procedure TFrmCotizacionCaptura.FormShow(Sender: TObject);
var
  mnuItem: TMenuItem;
  Imp: timpuesto;
  h,i:Integer;
begin
  Libro.ActivePageIndex := 0;
  ClientModule1.RastrearGrids(Self);
  ClientModule1.ComponentColor(Self);

  CrearConjunto(CdImpuestos,'nuc_impuesto',ccSelect);
  CargarDatosFiltrados(CdImpuestos,'idimpuesto',[-1]);
  CdImpuestos.Open;

  CdImpuestos.First;
  while not CdImpuestos.Eof do
  begin
    Imp := TImpuesto.Create;
    Imp.id :=CdImpuestos.FieldByName('idimpuesto').AsInteger ;
    Imp.Codigo := CdImpuestos.FieldByName('codigoimpuesto').AsString;
    Imp.Titulo := CdImpuestos.FieldByName('tituloimpuesto').AsString;
    Imp.Tasa := CdImpuestos.FieldByName('tasa').AsFloat;
    CbImpuestos.Items.AddObject(Imp.Titulo,Imp);

    mnuItem := TMenuItem.Create(PopupImpuestos);
    //mnuItem.Hint := CdImpuestos.FieldByName('idimpuesto').AsString;
    mnuItem.Caption := CdImpuestos.FieldByName('tituloimpuesto').AsString;
    mnuItem.OnClick := popupItemClick;
    mnuItem.AutoHotkeys := maManual;
    PopupImpuestos.Items.Add(mnuItem);
    CdImpuestos.Next;
  end;



  //verificar la vigencia de la cotizacion
  if CdDatos.FieldByName('vigencia').AsDateTime < Now - 150 then
  begin
    if InteliDialog.ShowModal('Fechas de vigencia con 5 meses de antigüedad :', '¿Decéa actualizar a fecha actual?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      CambiarVigencia := True;
      DateVigencia.Date := Now;
    end
    else
      DateVigencia.Date := CdDatos.FieldByName('vigencia').AsDateTime;
  end
  else
   DateVigencia.Date := Now;

  //añadiendo caption de labels
  edtSerie.Text := CdDatos.FieldByName('serie').AsString;
  LbReferencia.Caption := CdDatos.FieldByName('referencia').AsString;
  LbFecha.Caption := CdDatos.FieldByName('fecha').AsString;
  lblLugar.Caption := CdDatos.FieldByName('titulociudad').AsString;
  LbProveedor.Caption :=  CdDatos.FieldByName('codigoProveedor').AsString + ' - ' +
                        CdDatos.FieldByName('razonsocial').AsString;
  LbComentarios.Caption := CdDatos.FieldByName('comentarios').AsString;
  LlenarGridDetalles(CdDetalle,CdDatos.FieldByName('idcotizacion').AsInteger,NGPartidas);

  //numero de digitos

  if LowerCase(CdDatos.FieldByName('estado').AsString) = 'generado' then
    ComboBox1.ItemIndex := 1
  else
  begin
    Di := 0;
    for i := 0  to NGPartidas.RowCount-1 do
    begin
      if Di < (Length(Trim(NGPartidas.Cells[5,i]))-AnsiPos( '.', trim(NGPartidas.Cells[5,i]) )-1) then
        Di := Length(Trim(NGPartidas.Cells[5,i]))- AnsiPos( '.', trim(NGPartidas.Cells[5,i]) )-1;

      if Di < (Length(Trim(NGPartidas.Cells[6,i]))-AnsiPos( '.', trim(NGPartidas.Cells[6,i]) )-1) then
        Di := Length(Trim(NGPartidas.Cells[6,i]))- AnsiPos( '.', trim(NGPartidas.Cells[6,i]) )-1;
    end;
    ComboBox1.OnChange(sender);
    ComboBox1.ItemIndex := Di;
  end;


  CbGravamen.ItemIndex := CbGravamen.Items.IndexOf(CdDatos.FieldByName('gravamen').asstring);

  // Reajustar los anchos de las columnas y posiciones
  for h := 0 to NGPartidas.Columns.Count -1 do
  Try
    NGPartidas.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, NGPartidas.Columns.Item[h].Name));
    NGPartidas.Columns.Item[h].Position := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, NGPartidas.Columns.Item[h].Name+'p'));
  Except
    ;
  End;
  CrearConjunto(CdSobrecosto,'nuc_sobrecostos',ccUpdate);
  CdSobrecosto.Open;
  CargarSobrecostos;
  CargarSobrecostosxCot;
  LlenarGrid(MDSobrecostoxcot,NGSobrecosto);
  CbImp.Items := CbImpuestos.Items;

  if CbImp.Items.Count > 0 then
    CbImp.ItemIndex := 0;

  CbImpuestos.ItemIndex := 0;


end;

procedure TFrmCotizacionCaptura.CargarSobrecostos;
var Oj: TReg;
begin
  CdSobrecosto.Refresh;
  CdSobrecosto.First;
  CbSobrecosto.Items.Clear;
  while not CdSobrecosto.Eof do
  begin
    Oj := TReg.Create;
    Oj.id := CdSobrecosto.FieldByName('idsobrecosto').asinteger;
    Oj.Loc := CbSobrecosto.Items.Count;
    CbSobrecosto.Items.AddObject(CdSobrecosto.FieldByName('descripcionsobrecosto').AsString,Oj);
    CdSobrecosto.Next;
  end;
  if CbSobrecosto.Items.Count > 0 then
    CbSobrecosto.ItemIndex := 0;
end;

procedure TFrmCotizacionCaptura.CargarSobrecostosxCot;
begin
  CrearConjunto(CdSobrecostoxcot,'alm_sobrecostosxcot',ccCatalog);
  CargarDatosFiltrados(CdSobrecostoxcot,'idcotizacion',[CdDatos.FieldByName('idcotizacion').AsInteger]);
  CdSobrecostoxcot.Open;
  CopiaEstructuraDataset(CdSobrecostoxcot,MdSobrecostoxCot,True);
end;

procedure TFrmCotizacionCaptura.LlenarGrid(Dataset: TClientDataSet; Grid: TNextGrid);
var
  Row: Integer;
  i,x: Integer;
  Campo: String;
begin
  Row := 0;
  try
    Grid.ClearRows;
    if (Dataset.Active = True) and (Dataset.RecordCount > 0) then
    begin
      Dataset.First;
      Grid.BeginUpdate;
      while not Dataset.Eof do
      begin
        Grid.AddRow(1);
        for i := 0 to Grid.Columns.Count-1 do
        begin
          try
            Campo := AnsiReplaceText( Grid.Columns[i].Name, Grid.Name, '' );
            Grid.Cells[i, Row] := Dataset.FieldByName(campo).AsString;
            //signos y textos
            if Campo = 'signo' then
              if Dataset.FieldByName(campo).AsString = '-' then
                Grid.Cell[6,Row].AsString := 'Descuento'
              else
                Grid.Cell[6,Row].AsString := 'Aumento';


            if Campo = 'factor' then
              if Dataset.FieldByName(Campo).AsString = '*' then
                Grid.Cell[7,Row].AsString := 'Directo'
              else
                Grid.Cell[7,Row].AsString := 'Porciento';
          except
            ;
          end;
        end;

        if Dataset.FieldByName('signo').AsString ='-' then
        for x := 0 to Grid.Columns.Count-1 do
        begin
          Grid.Cell[x,row].Color := 26367;
        end
        else
        for x := 0 to Grid.Columns.Count-1 do
        begin
          Grid.Cell[x,row].Color := clLime;
        end;

        Inc(Row);
        Dataset.Next;
      end;
      Grid.EndUpdate;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal('No se puede llenar el grid de datos.', e.message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCotizacionCaptura.LlenarGridDetalles(cliente: TClientDataSet; id:Integer; Grid: TNextGrid);
var i: Integer;
begin
  try
    cliente.Active := False;
    if not crearconjunto(cliente,'alm_cotizaciondetalle', PNameCosulta, ccUpdate) then
      raise InteligentConnection.CreateByCode(5, ['detalle de cotización de materiales']);

    try
      if not CargarDatosFiltrados(cliente,'idcotizacion',[id],False) then
        raise InteligentConnection.CreateByCode(6, ['cotizacion detalle',id,'idcotizacion']);

      cliente.Open;
      cliente.First;
      Grid.beginupdate;
      try
        while not cliente.Eof do
        begin

          Grid.AddRow(1);
          Grid.Cell[0,Grid.RowCount-1].AsInteger := cliente.FieldByName('idcotizaciondetalle').asinteger;
          Grid.Cell[1,Grid.RowCount-1].AsFloat := cliente.FieldByName('cantidad').AsFloat;
          Grid.Cell[2,Grid.RowCount-1].AsString := cliente.FieldByName('tituloarticulo').AsString;
          Grid.Cell[3,Grid.RowCount-1].AsDateTime := cliente.FieldByName('fecharequerida').AsDateTime;
          Grid.Cell[4,Grid.RowCount-1].AsFloat := cliente.FieldByName('cantidadcotizada').AsFloat;
          //Precio  unitario????
          if cliente.FieldByName('precio').AsFloat > 0 then
            Grid.Cell[5,Grid.RowCount-1].AsFloat := cliente.FieldByName('precio').AsFloat
          else
            Grid.Cell[5,Grid.RowCount-1].AsInteger := 0;
          //Costo Total ????
         if cliente.FieldByName('costo').AsFloat > 0 then
            Grid.Cell[6,Grid.RowCount-1].AsFloat := cliente.FieldByName('costo').AsFloat
          else
            Grid.Cell[6,Grid.RowCount-1].AsInteger := 0;

          if cliente.FieldByName('tiempoentrega').AsInteger > 0 then
            Grid.Cell[7,Grid.RowCount-1].AsInteger := cliente.FieldByName('tiempoentrega').AsInteger
          else
            Grid.Cell[7,Grid.RowCount-1].AsInteger := 0;
          Grid.Cell[8,Grid.RowCount-1].AsString := cliente.FieldByName('referenciad').AsString;
          Grid.Cell[9,Grid.RowCount-1].AsString := cliente.FieldByName('comentarios').AsString;
          Grid.Cell[10,Grid.RowCount-1].AsInteger := cliente.FieldByName('idarticulo').AsInteger;
          Grid.Cell[11,Grid.RowCount-1].AsFloat := cliente.FieldByName('tasa').AsFloat;
          Grid.Cell[16,Grid.RowCount-1].AsInteger := cliente.FieldByName('idimpuesto').AsInteger;
          if (cliente.FieldByName('vigenciad').AsDateTime < Now -150) and (cambiarvigencia) then
            Grid.Cell[12,Grid.RowCount-1].AsDateTime := now
          else
            Grid.Cell[12,Grid.RowCount-1].AsDateTime := cliente.FieldByName('vigenciad').AsDateTime;
          Grid.Cell[13,Grid.RowCount-1].AsInteger := cliente.FieldByName('credito').AsInteger;
          Grid.Cell[14,Grid.RowCount-1].AsString := cliente.FieldByName('codigoimpuesto').AsString;
          Grid.Cell[15,Grid.RowCount-1].AsString := cliente.FieldByName('tituloimpuesto').AsString;

          cliente.Next;
        end;
      finally
        Grid.endupdate;
      end;
      if CdImpuestos.Locate('idimpuesto',cddetalle.FieldByName('idimpuesto').asinteger,[]) then
        CbImpuestos.ItemIndex := CbImpuestos.Items.IndexOf(CdImpuestos.FieldByName('codigoimpuesto').AsString)
      else
        CbImpuestos.ItemIndex := 0;
      cliente.Close;
    finally
      EliminarConjunto(cliente);
    end;

  finally



    Grid.SetFocus;
    if grid.RowCount > 0 then
      grid.SelectCell(4,0,[],true);
  end;
end;

procedure TFrmCotizacionCaptura.NGPartidasEditExit(Sender: TObject);
begin
try
  //Mostrar operación en el grid
      NGPartidas.Cell[6,NGPartidas.SelectedRow].AsFloat :=
      NGPartidas.Cell[4,NGPartidas.SelectedRow].AsFloat *  NGPartidas.Cell[5,NGPartidas.SelectedRow].AsFloat;
except

end;
end;

procedure TFrmCotizacionCaptura.NGPartidasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (NGPartidas.RowCount > 0) then
  begin
    // Primero saltar por columnas
    if (NGPartidas.SelectedColumn >= 4) and (NGPartidas.SelectedColumn <= 7)  then
    begin
      if NGPartidas.SelectedColumn = 5 then  // saltarme la columna de costo que no se captura
        NGPartidas.SelectCell(NGPartidas.SelectedColumn + 2, NGPartidas.SelectedRow,[],true)
      else
        NGPartidas.SelectCell(NGPartidas.SelectedColumn + 1, NGPartidas.SelectedRow,[],true);
    end
    else
      // Si estoy en la última columna editable
      if NGPartidas.SelectedColumn = 8 then
        // Checar si existe un renglón posterior
        if NGPartidas.RowExist(NGPartidas.SelectedRow + 1) then
          NGPartidas.SelectCell(4, NGPartidas.SelectedRow + 1,[],true)
        else
          NGPartidas.SelectCell(4, 0,[],true)
  end;
end;

procedure TFrmCotizacionCaptura.NGSobrecostoAfterRowMove(Sender: TObject;
  FromPos, ToPos: Integer);
begin
  Reordenar(MdSobrecostoxCot,NGSobrecosto);
end;

procedure TFrmCotizacionCaptura.NGSobrecostoCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  try
    CbSobrecosto.ItemIndex := CbSobrecosto.Items.IndexOf(TNextGrid(Sender).Cells[4,ARow]);
    CbValor.Text := TNextGrid(Sender).Cells[5,ARow];
    CbSigno.ItemIndex := CbSigno.Items.IndexOf(TNextGrid(Sender).Cells[6,ARow]);
    CbFactor.ItemIndex := CbFactor.Items.IndexOf(TNextGrid(Sender).Cells[7,ARow]);
    CbImp.ItemIndex := CbImp.Items.IndexOf(TNextGrid(Sender).Cells[8,ARow]);
//    MDSobrecostoxcot.Locate('idsobrecostoxcot',TNextGrid(Sender).Cells[0,ARow],[]);
    BtnNewRow.Enabled := False;
    BtnEditRow.Enabled := False;
    BtnDelRow.Enabled := True;
  except
    ;
  end;
end;

function TFrmCotizacionCaptura.Reordenar(ClientModuleUnit1:tclientdataset;Grids:Tnextgrid):Boolean;
var i:integer;
Resultado: Boolean;

function SortClientDataSetL(ClientDataSet: TClientDataSet;
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

  NewIndexName := FieldName + '__IdxA';
  IndexOptions := [];

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

begin
  Resultado := False;
  try
    for i := 0 to Grids.RowCount-1 do
    begin
      MDSobrecostoxcot.Locate('idsobrecostoxcot',NGSobrecosto.Cells[0,i],[]);
      MdSobrecostoxCot.Edit;
      MdSobrecostoxCot.FieldByName('orden').AsInteger:= i;
      MdSobrecostoxCot.Post;
    end;
    SortClientDataSetL(MdSobrecostoxCot,'orden');
    LlenarGrid(MDSobrecostoxcot,NGSobrecosto);
    Resultado := True;
  finally
    Result := Resultado;
  end;
end;


end.
