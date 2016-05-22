unit UTfrmDetalleXEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, Grids, DBGrids, ExtCtrls, Menus, Buttons, DB, DBClient,
  UinteliDialog, RxToolEdit, RXDBCtrl, StdCtrls, Mask, DBCtrls, JvExControls,
  JvLabel, Contnrs, UTFrmBusquedaDetallexEntrada, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxDbColumns, NxColumns,
  JvExStdCtrls, JvBehaviorLabel, ComCtrls, JvExComCtrls, JvDateTimePicker,
  JvDBDateTimePicker, AdvDateTimePicker, AdvDBDateTimePicker, URegistro,
  DateUtils, UTFrmConsumoxArticulo;


type
  TFrmDetalleXEntrada = class(TForm)
    PopupMenu1: TPopupMenu;
    AbrirEntrada1: TMenuItem;
    guardar: TMenuItem;
    cdentrada: TClientDataSet;
    dsentrada: TDataSource;
    Panel1: TPanel;
    Btn_Archivo: TNxOptionButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    GroupBox2: TGroupBox;
    JvLabel11: TJvLabel;
    JvLabel8: TJvLabel;
    Label6: TLabel;
    Panel6: TPanel;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    N2: TMenuItem;
    memPartidas: TClientDataSet;
    dsmemPartidas: TDataSource;
    JvLabel5: TJvLabel;
    cdarticulo: TClientDataSet;
    dsarticulo: TDataSource;
    cdespecdetallesubgrupo: TClientDataSet;
    dsespecdetallesubgrupo: TDataSource;
    Panel4: TPanel;
    cddetalleespecificado: TClientDataSet;
    dsdetalleespecificado: TDataSource;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    cdnumultimoinsumo: TClientDataSet;
    dsnumultimoinsumo: TDataSource;
    Griddetalle: TNextDBGrid;
    cdcantidadinsumos: TClientDataSet;
    dscantidadinsumos: TDataSource;
    Guardarycerrar1: TMenuItem;
    cancelarcambios1: TMenuItem;
    CancelarCambiosyCerrar1: TMenuItem;
    N3: TMenuItem;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    CerrarEntrada1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MultiplicarCeldas1: TMenuItem;
    Panel5: TPanel;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cdestadoinsumo: TClientDataSet;
    dsestadoinsumo: TDataSource;
    cdmanttoinformativa: TClientDataSet;
    dsmanttoinformativa: TDataSource;
    cdinsumoxarticulo: TClientDataSet;
    dsinsumoxarticuulo: TDataSource;
    cdsubgrupo: TClientDataSet;
    dssubgrupo: TDataSource;
    procedure nxarchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AbrirEntrada1Click(Sender: TObject);
    procedure Btn_ArchivoClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure CerrarEntrada1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure NxButton4Click(Sender: TObject);
    procedure cancelarcambios1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure CancelarCambiosyCerrar1Click(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure Guardarycerrar1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MultiplicarCeldas1Click(Sender: TObject);
    procedure GriddetalleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GriddetalleAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure FormDestroy(Sender: TObject);
  private
    forzarsalir : boolean;
    procedure refrescarentrada;
  public
    { Public declarations }
  end;

const
  CamposVal = ('codigo,numinsumoespecificado,Informacion,IdEntrada,IdEntradaDetalle,');

var
  FrmDetalleXEntrada: TFrmDetalleXEntrada;

implementation

uses
  ClientModuleUnit1;

{$R *.dfm}

procedure TFrmDetalleXEntrada.AbrirEntrada1Click(Sender: TObject);
var
  h: Integer;
  OldEstado: Boolean;
  cantidadcampos : integer;
  i, j, ultimoinsumo : integer;
  contador, contador2 : integer;
  campotexto : TNxDbTextColumn;
  camponumerico : TNxDbNumberColumn;
  campofecha : TNxDbDateColumn;
  textoej :tdbedit;
  ListaCampos: TStringList;
begin
  Listacampos := TStringList.Create;
  Listacampos.CommaText := CamposVal;

  OldEstado := Panel2.Visible;
  Try
    Screen.Cursor := crAppStart;

    Try
      application.CreateForm(TFrmBusquedaDetallexEntrada, FrmBusquedaDetallexEntrada);
      if FrmBusquedaDetallexEntrada.ShowModal = mrOk then
      begin
        if FrmBusquedaDetallexEntrada.IdDetalle < 0 then
          raise InteligentException.Create('Ha ocurrido un error durante la selección de datos de Entrada al Almacén');
       //-----------------------FORMA CORRECTA DE HACER EL FILTRADO------------------------------
        // Localizar el registro seleccionado por el usuario
        if Not CargarDatosFiltrados(cdEntrada, 'IdEntradaDetalle', [FrmBusquedaDetallexEntrada.IdDetalle]) then
          raise InteligentException.Create('El criterio para la selección de entrada "IdEntrada" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');

          // Trata de llamar el registro
        cdEntrada.Refresh;
       //------------------------------------------------------------------------------------------

       //---------------------Filtrado del Producto-------------------------------------------------
        if Not CargarDatosFiltrados(cdarticulo, 'IdArticulo', [cdentrada.FieldByName('IdArticulo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de entrada "IdArticulo" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');

          // Trata de llamar el registro
        cdarticulo.Refresh;
      //--------------------------------------------------------------------------------------------
      //---------------------Filtrado del Producto-------------------------------------------------
        if Not CargarDatosFiltrados(cdsubgrupo, 'IdSubgrupo', [cdarticulo.FieldByName('IdSubgrupo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de entrada "IdArticulo" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          // Trata de llamar el registro
        cdsubgrupo.Refresh;
      //--------------------------------------------------------------------------------
        if Not CargarDatosFiltrados(cdnumultimoinsumo, 'IdSubGrupo', [cdarticulo.FieldByName('IdSubgrupo').AsInteger]) then
          raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
        cdnumultimoinsumo.Open;
       //---------------------Filtrado del Producto-------------------------------------------------
        if Not CargarDatosFiltrados(cdespecdetallesubgrupo, 'IdSubgrupo', [cdarticulo.FieldByName('IdSubgrupo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de entrada "IdArticulo" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          // Trata de llamar el registro
        cdespecdetallesubgrupo.Refresh;
        cdespecdetallesubgrupo.IndexFieldNames:='noorden';
      //--------------------------------------------------------------------------------


        nxbutton1.Enabled := true;
        nxbutton2.Enabled := true;
        nxbutton3.Enabled := true;
        nxbutton4.Enabled := true;
        guardar.Enabled := true;
        guardarycerrar1.Enabled := true;
        cancelarcambios1.Enabled :=true;
        cancelarcambiosycerrar1.Enabled := true;
      //--------------------------------------------------------------------------------------------
        if cdEntrada.RecordCount <> 1 then
          raise InteligentException.Create('El registro seleccionado ya no se encuentra disponible en la base de datos o se ha perdido la comunicación con la base de datos, verifique esto e itente de nuevo');
        Panel2.Visible := True;
        if Assigned(memPartidas) then
        begin
          // Eliminar las partidas que pudieran haber existido
          // Verificar si el mempartidas se encuentra abierto
          while memPartidas.Active and (memPartidas.RecordCount > 0) do
            memPartidas.Delete;
          memPartidas.Close;
          memPartidas.Destroy;
        end;
        // Crear el contenedor de las partidas
        memPartidas := TClientDataSet.Create(Self);
        memPartidas.FieldDefs.Clear;
        memPartidas.FieldDefs.Add('Informacion', ftString, 20, False);
        memPartidas.FieldDefs.Add('codigo', ftString, 45, False);
        memPartidas.FieldDefs.Add('IdEntrada', ftInteger, 0, False);
        memPartidas.FieldDefs.Add('IdEntradaDetalle', ftInteger, 0, False);
        memPartidas.FieldDefs.Add('numinsumoespecificado', ftInteger, 0, False);
        cdespecdetallesubgrupo.First;
        while not cdespecdetallesubgrupo.Eof do
        begin
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='CADENA' then
            mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftString, 45, False);
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='NUMERICO' then
            mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftFloat, 0, False);
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='FECHA' then
            mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftDate, 0, False);
          cdespecdetallesubgrupo.Next;
        end;
        memPartidas.CreateDataSet;
        dsmempartidas.DataSet:=mempartidas;
        griddetalle.DataSource:=dsmempartidas;
        griddetalle.Columns.Clear;

        //------------------Insercion de Columnas en el nextgrid-------------------------
        CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
        Campotexto.Header.Caption:='Información';
        Campotexto.FieldName := 'Informacion';
        CampoTexto.Name := 'Informacion';
        CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
        //-------------------------------------------------------------------------------
        CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
        Campotexto.Header.Caption:='codigo';
        Campotexto.FieldName := 'codigo';
        CampoTexto.Name := 'Codigo';
        CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
        //-------------------------------------------------------------------------------

        // Reajustar los anchos de las columnas
        for h := 0 to GridDetalle.Columns.Count -1 do
        Try
          GridDetalle.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, GridDetalle.Columns.Item[h].Name));
        Except
          ;
        End;

        for i := 5 to memPartidas.FieldDefs.Count-1 do
        begin
          cdespecdetallesubgrupo.IndexFieldNames:='IdDetalle';
          cdespecdetallesubgrupo.SetRange([mempartidas.FieldDefs.Items[i].Name], [mempartidas.FieldDefs.Items[i].Name]);
          if cdespecdetallesubgrupo.RecordCount=1 then
          begin
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='CADENA' then
            begin
              CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
              Campotexto.Header.Caption := cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
              Campotexto.FieldName := mempartidas.FieldDefs.Items[i].Name;
              //CampoTexto.Name := Self.Name + '_' + mempartidas.FieldDefs.Items[i].Name;
              CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
            end;
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='NUMERICO' then
            begin
              camponumerico := TNxDbNumberColumn(Griddetalle.Columns.Add(TNxDbNumberColumn));
              camponumerico.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
              camponumerico.FieldName := mempartidas.FieldDefs.Items[i].Name;
              //CampoTexto.Name := Self.Name + '_' + mempartidas.FieldDefs.Items[i].Name;
              camponumerico.NullText := '';
              camponumerico.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
            end;
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='FECHA' then
            begin
              campofecha := TNxDbDateColumn(Griddetalle.Columns.Add(TNxDbDateColumn));
              campofecha.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
              campofecha.FieldName := mempartidas.FieldDefs.Items[i].Name;
              //CampoTexto.Name := Self.Name + '_' + mempartidas.FieldDefs.Items[i].Name;
              campofecha.NullText := '';
              campofecha.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
            end;
          end;
          cdespecdetallesubgrupo.CancelRange;
        end;
 //----------------------SI ES CERO, ENTONCES NO HAY REGISTRADO ARTICULSO DE LA PARTIDA-----------------------------------------
        //----------------------SE ABRE EN MODO INSERCION------------------------------------------------------------------------------
        if cdentrada.FieldByName('cuantos').AsInteger=0 then
        begin
        // Generar las N partidas que se requieren para detallar esta partida de entrada
          memPartidas.Open;
          //while contador <  do
          ultimoinsumo:=cdnumultimoinsumo.FieldByName('ultimo').AsInteger;
          while memPartidas.RecordCount < Trunc(cdEntrada.FieldByName('cantidad').AsFloat) do
          begin
            memPartidas.Append;
            memPartidas.FieldByName('IdEntrada').AsInteger := cdEntrada.FieldByName('IdEntrada').AsInteger;
            memPartidas.FieldByName('IdEntradaDetalle').AsInteger := cdEntrada.FieldByName('IdEntradaDetalle').AsInteger;
            memPartidas.FieldByName('Informacion').AsString := cdEntrada.FieldByName('tituloarticulo').AsString + ' ' + inttostr(memPartidas.RecordCount + 1)+'/'+cdEntrada.FieldByName('cantidad').AsString;
            ultimoinsumo:=ultimoinsumo+1;
            memPartidas.FieldByName('numinsumoespecificado').AsInteger:=ultimoinsumo;
            //memPartidas.FieldByName('codigo').AsString:='DT-'+cdEntrada.FieldByName('tituloarticulo').AsString+'-'+inttostr(ultimoinsumo)+'-'+Formatdatetime('yyyy', now);
            memPartidas.FieldByName('codigo').AsString:=cdsubgrupo.FieldByName('subcodigo').AsString+'-'+inttostr(ultimoinsumo);
            //----------CODIGO DE GUARDADO DE CAMPOS EN EL DATATSET ENMEMORIA-----------------------------------------
            for i := 5 to mempartidas.FieldDefs.Count-1 do
            begin
              cdespecdetallesubgrupo.IndexFieldNames:='IdDetalle';
              cdespecdetallesubgrupo.SetRange([mempartidas.FieldDefs.Items[i].Name], [mempartidas.FieldDefs.Items[i].Name]);
              memPartidas.FieldByName(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString).value := null;
              cdespecdetallesubgrupo.CancelRange;
            end;
          mempartidas.Post;
          end;
        end
        else
//--------------------SI NO ES CERO, ENTONCES DEBEMOS ABRIR EN MODO EDICION--------------------------------------------------------
        begin
          memPartidas.Open;
          if Not CargarDatosFiltrados(cddetalleespecificado, 'identradadetalle', [cdentrada.FieldByName('IdEntradaDetalle').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
          cddetalleespecificado.Refresh;

          if Not CargarDatosFiltrados(cdcantidadinsumos, 'identradadetalle', [cdentrada.FieldByName('IdEntradaDetalle').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
          cdcantidadinsumos.Refresh;
          cdcantidadinsumos.First;
          while memPartidas.RecordCount < cdCantidadInsumos.RecordCount do
          //while contador < Trunc(cdEntrada.FieldByName('cantidad').AsFloat) do
          begin
            memPartidas.Append;
            for j  := 0 to mempartidas.FieldDefs.Count-1 do
            begin
              case ListaCampos.IndexOf(mempartidas.FieldDefs.Items[j].Name) of
                0: memPartidas.FieldByName('codigo').AsString := cdcantidadinsumos.FieldByName('codigo').AsString;
                1: memPartidas.FieldByName('numinsumoespecificado').AsInteger := cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger;
                2: memPartidas.FieldByName('Informacion').AsString :=cdEntrada.FieldByName('tituloarticulo').AsString+'  '+inttostr(memPartidas.RecordCount + 1)+'/'+cdEntrada.FieldByName('cantidad').AsString;
                3: memPartidas.FieldByName('IdEntrada').AsInteger := cddetalleespecificado.FieldByName('identrada').AsInteger;
                4: memPartidas.FieldByName('IdEntradaDetalle').AsInteger:= cddetalleespecificado.FieldByName('identradadetalle').AsInteger;
                else
                begin
                  cddetalleespecificado.IndexFieldNames:='numinsumoespecificado;idcampodetalle';
                  cddetalleespecificado.SetRange([cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name],
                    [cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name]);
                  if cddetalleespecificado.FieldByName('tipodedato').AsString='CADENA' then
                    memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsString:=cddetalleespecificado.FieldByName('campocadena').AsString;
                  if cddetalleespecificado.FieldByName('tipodedato').AsString='NUMERICO' then
                    memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsVariant := cddetalleespecificado.FieldByName('camponumerico').AsVariant;
                  if cddetalleespecificado.FieldByName('tipodedato').AsString='FECHA' then
                    memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsVariant := cddetalleespecificado.FieldByName('campofecha1').AsVariant;
                  cddetalleespecificado.CancelRange;
                end;
              end;
            end;
            memPartidas.Post;
            cdCantidadInsumos.Next;
          end;
        end;
        OldEstado := True;
        ForzarSalir := True;
      end;
//-------------------Chequeo de Entradas----------------------------------------
        if Not CargarDatosFiltrados(cdinsumoxarticulo, 'idarticulo', [cdentrada.FieldByName('IdArticulo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdinsumoxarticulo.Refresh;
        if (cdinsumoxarticulo.RecordCount=0) and (cdarticulo.FieldByName('consumible').AsString='Si') then
        begin
          if InteliDialog.ShowModal('El articulo a detallar utiliza consumibles pero no tiene ninguno asignado','¿Desea Asignarselos?', mtInformation, [mbYes, mbCancel], 0)= mrYes then
          begin
            application.CreateForm(TFrmconsumoxArticulo, FrmconsumoxArticulo);
            FrmconsumoxArticulo.CodigoArticulo := cdEntrada.FieldByName('CodigoArticulo').AsString;
            FrmconsumoxArticulo.BuscaArticulo.Visible := False;
            FrmconsumoxArticulo.ShowModal;
          end;
        end;
//------------------------------------------------------------------------------
    except
      on e:InteligentException do
      begin
        OldEstado := False;
        InteliDialog.ShowModal('Ha ocurrido un error de acceso a datos', e.Message, mtError, [mbOk], 0);
      end;

      on e:exception do
      begin
        OldEstado := False;
        InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mterror, [mbOK], 0);
      end;
    end;
  Finally
    Screen.Cursor := crDefault;
    Panel2.Visible := OldEstado;
    FrmBusquedaDetallexEntrada.Free;
    Listacampos.Free;
  End;
end;

procedure TFrmDetalleXEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   EliminarConjunto([cdEntrada.ProviderName, cdarticulo.ProviderName, cdespecdetallesubgrupo.ProviderName,
   cddetalleespecificado.ProviderName, cdnumultimoinsumo.ProviderName, cdcantidadinsumos.ProviderName]);
   Action := caFree;
end;

procedure TFrmDetalleXEntrada.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Canclose := ((forzarsalir) or ((Not forzarsalir) and (InteliDialog.ShowModal('Se encuentra editando/insertando datos',
      'Si usted cierra ahora la ventana perdera los cambios realizados' + #10 + #10 + '¿Realmente desea cerrar la Ventana?', mtConfirmation, [mbYes, mbNo], 0) = mrYes)));
end;

procedure TFrmDetalleXEntrada.FormDestroy(Sender: TObject);
var
  h: Integer;
begin
  //LiberarVentana(Self);

  for h := 0 to GridDetalle.Columns.Count -1 do
    if GridDetalle.Columns.Item[h].Name <> '' then
      SetRegistry('\Ventanas', '\' + Self.Name, GridDetalle.Columns.Item[h].Name, IntToStr(GridDetalle.Columns.Item[h].Width));
end;

procedure TFrmDetalleXEntrada.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmDetalleXEntrada.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  ClientModule1.ComponentColor(self);
  AccedeACoordenadas(Self);

  Try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    Try
      nxbutton1.Enabled := false;
      nxbutton2.Enabled := false;
      nxbutton3.Enabled := false;
      nxbutton4.Enabled := false;
      guardar.Enabled := false;
      guardarycerrar1.Enabled := false;
      cancelarcambios1.Enabled :=false;
      cancelarcambiosycerrar1.Enabled := false;
      forzarsalir := True;

      // Crear los datos de la entrada
      //Proceso De Abrir Dataset Sin Extraer Datos
      if Not CrearConjunto(cdEntrada, 'alm_datosentrada', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Entradas al Almacén, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdentrada, 'IdEntrada', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de las Entradas al Almacén');

      cdEntrada.Open;
     //Fin Proceso de Abrirr Dataset
     //------------Abrir TablaArticulos--------------------------------------------
      if Not CrearConjunto(cdarticulo, 'alm_articulo', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdarticulo, 'IdArticulo', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del Catalogo de Articulos');
     cdarticulo.Open;
     //----------------------------------------------------------------------------
     //----------------Abrir Especificaciones de Detalles de Los Subrgupos---------
      if Not CrearConjunto(cdespecdetallesubgrupo, 'alm_especdetallesubgrupo', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdespecdetallesubgrupo, 'IdDetalle', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del Catalogo de Articulos');
      cdespecdetallesubgrupo.Open;
     //----------------------------------------------------------------------------
      //----------------Abrir Tabla de Volcado De Especificaciones-----------------
      if Not CrearConjunto(cddetalleespecificado, 'tic_detalleespecificado', ccUpdate) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cddetalleespecificado, 'iddetalleespecificado', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
      cddetalleespecificado.Open;
     //----------------------------------------------------------------------------
     //----------------Abrir Consulta del Ultimo Numero especificado-----------------
      if Not CrearConjunto(cdnumultimoinsumo, 'tic_detalleespecificado_numultimoinsumo', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdnumultimoinsumo, 'IdSubGrupo', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
      cdnumultimoinsumo.Open;
     //----------------------------------------------------------------------------
      //----------------Abrir Consulta de Cantidad de insumos-----------------
      if Not CrearConjunto(cdcantidadinsumos, 'tic_detalleespecificado_numerosinsumos', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdcantidadinsumos, 'identradadetalle', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
      cdcantidadinsumos.Open;
     //----------------------------------------------------------------------------
      if Not CrearConjunto(cdestadoinsumo, 'tic_estadoinsumo', ccUpdate) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de estado del insumo, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdestadoinsumo, 'idticestadoinsumo', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del los estados del los insumos');
      cdestadoinsumo.Open;
      //---------------------------------------------------------------------------
      if Not CrearConjunto(cdmanttoinformativa, 'tic_manttoinformativa', ccUpdate) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de estado del insumo, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdmanttoinformativa, 'idmanttoinformativa', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del los estados del los insumos');
      cdmanttoinformativa.Open;

      //---------------------chequeo de consumibles-----------------------------------
       if Not CrearConjunto(cdinsumoxarticulo, 'alm_consumoarticulo', ccUpdate) then
        raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdinsumoxarticulo, 'idarticulo', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdinsumoxarticulo.Open;

      //--------------------Abrir Subgrupo----------------------------------------
      if Not CrearConjunto(cdsubgrupo, 'alm_subgrupo', ccUpdate) then
        raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdsubgrupo, 'idsubgrupo', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsubgrupo.Open;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:inteligentexception do
    begin
      InteliDialog.ShowModal('Error al consultar datos', e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmDetalleXEntrada.GriddetalleAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
forzarsalir:=false;
end;

procedure TFrmDetalleXEntrada.GriddetalleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  Var
  Point : Tpoint;
begin
  try
    if button = mbRight then
    begin
      GetCursorPos(Point);
      PopupMenu2.Popup(Point.X, Point.Y);
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDetalleXEntrada.Guardarycerrar1Click(Sender: TObject);
begin
  nxbutton2.Click;
  forzarsalir:=true;
  close;
end;

procedure TFrmDetalleXEntrada.MultiplicarCeldas1Click(Sender: TObject);
var
  valor: variant;
  OldRecNo: Integer;
begin
  Try
    if griddetalle.Columns.Item[griddetalle.SelectedColumn].FieldName='Informacion' then
      raise InteligentException.Create('No se pueden igualar los valores del campo "Información"');

    if InteliDialog.ShowModal('Se van a ingualar los valores de la columna',
      'Se van a cambiar todos los valores de esta columna por el valor que selecciono'
      + #10 + #10 + '¿Desea realizar esto ahora?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      raise InteligentException.Create('**');

    Try
      mempartidas.DisableControls;
      OldRecno := memPartidas.RecNo;
      Valor := mempartidas.FieldByName(griddetalle.Columns.Item[griddetalle.SelectedColumn].FieldName).Value;
      mempartidas.First;
      while Not mempartidas.Eof do
      begin
        mempartidas.Edit;
        mempartidas.FieldByName(griddetalle.Columns.Item[griddetalle.SelectedColumn].FieldName).AsVariant := Valor;
        mempartidas.Post;
        mempartidas.Next;
      end;
    Finally
      memPartidas.RecNo := OldRecno;
      mempartidas.EnableControls;
    End;
  Except
    on e:InteligentException do
      if e.Message <> '**' then
        InteliDialog.ShowModal('Esta opción no está disponible', 'No se pueden multiplicar esta columna debido a lo siguiente:' + #10 + e.Message, mtWarning, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Ha ocurrido un error inesperado en el sistema, informe de esto al administrador del sistema:' +#10 + #10 + e.message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmDetalleXEntrada.guardarClick(Sender: TObject);
begin
  nxbutton2.Click;
end;

procedure TFrmDetalleXEntrada.nxarchivoClick(Sender: TObject);
var
  Point : Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDetalleXEntrada.NxButton1Click(Sender: TObject);
begin
  //forzarsalir := false;
  close;
end;

procedure TFrmDetalleXEntrada.NxButton2Click(Sender: TObject);
var
  i, j,ultimo : integer;
begin
  if cdentrada.FieldByName('cuantos').AsInteger=0 then
  begin
    Try
      for i := 1 to mempartidas.RecordCount do
      begin
        ultimo:=0;
        mempartidas.RecNo:=i;
        cdnumultimoinsumo.Refresh;
        ultimo:=cdnumultimoinsumo.FieldByName('ultimo').AsInteger;
        ultimo:=ultimo+1;
//#####################Insercion Del estado#####################################
        cdestadoinsumo.Append;
        cdestadoinsumo.FieldByName('idticestadoinsumo').AsInteger:=0;
        cdestadoinsumo.FieldByName('idinsumo').AsInteger:=ultimo;
        cdestadoinsumo.FieldByName('estado').AsString:='FUNCIONANDO';
        cdestadoinsumo.Post;
        cdestadoinsumo.ApplyUpdates(-1);
//##############################################################################
{
          cdmanttoinformativa.Append;
          cdmanttoinformativa.FieldByName('idmanttoinformativa').AsInteger:=0;
          cdmanttoinformativa.FieldByName('idultimomanttocorrect').AsInteger:=-5;
          cdmanttoinformativa.FieldByName('idultimomanttoprev').AsInteger:=-5;
          cdmanttoinformativa.FieldByName('numinsumoespecificado').AsInteger:=ultimo;
          cdmanttoinformativa.FieldByName('fechasigmanttoprev').AsDateTime:=IncDay(now, cdespecdetallesubgrupo.FieldByName('recurrencia').AsInteger);;
          cdmanttoinformativa.Post;
          cdmanttoinformativa.ApplyUpdates(-1);
}
//##############################################################################
        for j  := 5 to mempartidas.FieldDefs.Count-1 do
        begin
          cddetalleespecificado.Append;
          cddetalleespecificado.FieldByName('iddetalleespecificado').AsInteger:=0;
          cddetalleespecificado.FieldByName('numinsumoespecificado').AsInteger:=ultimo;
          cddetalleespecificado.FieldByName('codigo').AsString:=mempartidas.FieldByName('codigo').AsString;
          cddetalleespecificado.FieldByName('identrada').AsInteger:=mempartidas.FieldByName('IdEntrada').AsInteger;
          cddetalleespecificado.FieldByName('IdEntradaDetalle').AsInteger:=mempartidas.FieldByName('IdEntradaDetalle').AsInteger;
          cddetalleespecificado.FieldByName('idarticulo').AsInteger:=cdentrada.FieldByName('IdArticulo').AsInteger;
          cddetalleespecificado.FieldByName('idcampodetalle').AsInteger:=strtoint(mempartidas.FieldDefs[j].Name);
          cddetalleespecificado.FieldByName('idsubgrupo').AsInteger:=cdespecdetallesubgrupo.FieldByName('idsubgrupo').AsInteger;
          cddetalleespecificado.FieldByName('idmanttoprev').AsInteger:=cdespecdetallesubgrupo.FieldByName('idmanttoprev').AsInteger;
          cddetalleespecificado.FieldByName('recurrencia').AsInteger:=cdespecdetallesubgrupo.FieldByName('recurrencia').AsInteger;
          cddetalleespecificado.FieldByName('fechaespecificacion').AsDateTime:=now;
          cdespecdetallesubgrupo.IndexFieldNames:='IdDetalle';
          cdespecdetallesubgrupo.SetRange([mempartidas.FieldDefs.Items[j].Name], [mempartidas.FieldDefs.Items[j].Name]);
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='CADENA' then
            cddetalleespecificado.FieldByName('campocadena').AsString:=mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsString;
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString= 'NUMERICO' then
            cddetalleespecificado.FieldByName('camponumerico').AsFloat:=mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsFloat;
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString= 'FECHA' then
            cddetalleespecificado.FieldByName('campofecha1').AsDateTime:=mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsDateTime;
          cddetalleespecificado.FieldByName('tipodedato').AsString:=cdespecdetallesubgrupo.FieldByName('TipoDato').AsString;
          cdespecdetallesubgrupo.CancelRange;
          cddetalleespecificado.Post;
          cddetalleespecificado.ApplyUpdates(-1);
        end;
      end;

      InteliDialog.ShowModal('Operacion completada', 'Se han guardado todos las Especificaciones correctamente' + #10 + #10 +'', mtInformation, [mbOK], 0);
    Except
      On e:exception do
        intelidialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end
  else
  begin
    cdcantidadinsumos.First;
    cddetalleespecificado.CancelRange;
    for i := 1 to mempartidas.RecordCount do
    begin
      mempartidas.RecNo:=i;
      for j  := 5 to mempartidas.FieldDefs.Count-1 do
      begin
        cddetalleespecificado.IndexFieldNames:='numinsumoespecificado;idcampodetalle';
        cddetalleespecificado.SetRange([mempartidas.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name],
        [mempartidas.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name]);

        if cddetalleespecificado.FieldByName('tipodedato').AsString='CADENA' then
        begin
          if cddetalleespecificado.FieldByName('campocadena').AsString <> mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsString then
          begin
            cddetalleespecificado.Edit;
            cddetalleespecificado.FieldByName('campocadena').AsString := mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsString;
            cddetalleespecificado.Post;
            cddetalleespecificado.ApplyUpdates(-1);
          end;
        end;

        if cddetalleespecificado.FieldByName('tipodedato').AsString='NUMERICO' then
        begin
          if cddetalleespecificado.FieldByName('camponumerico').AsFloat <> mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsFloat then
          begin
            cddetalleespecificado.Edit;
            cddetalleespecificado.FieldByName('camponumerico').AsFloat := mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsFloat;
            cddetalleespecificado.Post;
            cddetalleespecificado.ApplyUpdates(-1);
          end;
        end;

        if cddetalleespecificado.FieldByName('tipodedato').AsString='FECHA' then
        begin
          if cddetalleespecificado.FieldByName('campofecha1').AsDateTime <> mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsDateTime then
          begin
            cddetalleespecificado.Edit;
            cddetalleespecificado.FieldByName('campofecha1').AsDateTime := mempartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsDateTime;
            cddetalleespecificado.Post;
            cddetalleespecificado.ApplyUpdates(-1);
          end;
        end;
      cddetalleespecificado.CancelRange;
      end;
    end;
    forzarsalir:=true;
    InteliDialog.ShowModal('Operacion completada', 'Se han guardado todos los cambios correctamente' + #10 + #10 +'', mtInformation, [mbOK], 0);
  end;
end;



procedure TFrmDetalleXEntrada.NxButton3Click(Sender: TObject);
begin
  nxbutton2.Click;
  forzarsalir:=true;
  close;
end;

procedure TFrmDetalleXEntrada.NxButton4Click(Sender: TObject);
begin
 refrescarentrada();
end;

procedure TFrmDetalleXEntrada.refrescarentrada();
 Var
  i, j,ultimoinsumo : integer;
  campotexto : TNxDbTextColumn;
  camponumerico : TNxDbNumberColumn;
  campofecha : TNxDbDateColumn;
begin
     cdespecdetallesubgrupo.IndexFieldNames:='noorden';
{
       if Assigned(memPartidas) then
          begin
            // Eliminar las partidas que pudieran haber existido
            // Verificar si el mempartidas se encuentra abierto
            while memPartidas.Active and (memPartidas.RecordCount > 0) do
              memPartidas.Delete;
            memPartidas.Close;
            memPartidas.Destroy;
          end;
          // Crear el contenedor de las partidas
          memPartidas := TClientDataSet.Create(Self);
          memPartidas.FieldDefs.Clear;
          memPartidas.FieldDefs.Add('Informacion', ftString, 20, False);
          memPartidas.FieldDefs.Add('IdEntrada', ftInteger, 0, False);
          memPartidas.FieldDefs.Add('IdEntradaDetalle', ftInteger, 0, False);
          memPartidas.FieldDefs.Add('numinsumoespecificado', ftInteger, 0, False);
          cdespecdetallesubgrupo.First;
          while not cdespecdetallesubgrupo.Eof do
          begin
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='CADENA' then
              mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftString, 45, False);
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='NUMERICO' then
              mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftFloat, 0, False);
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='FECHA' then
              mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftDate, 0, False);
            cdespecdetallesubgrupo.Next;
          end;
          memPartidas.CreateDataSet;
          dsmempartidas.DataSet:=mempartidas;
          griddetalle.DataSource:=dsmempartidas;
          griddetalle.Columns.Clear;
         //------------------Insercion de Columnas en el nextgrid-------------------------
         CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
         Campotexto.Header.Caption:='Información';
         Campotexto.FieldName := 'Informacion';
         CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
         //-------------------------------------------------------------------------------
          for i := 4 to memPartidas.FieldDefs.Count-1 do
          begin
            cdespecdetallesubgrupo.IndexFieldNames:='IdDetalle';
            cdespecdetallesubgrupo.SetRange([mempartidas.FieldDefs.Items[i].Name], [mempartidas.FieldDefs.Items[i].Name]);
            if cdespecdetallesubgrupo.RecordCount=1 then
            begin
              if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='CADENA' then
              begin
                CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
                Campotexto.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
                Campotexto.FieldName := mempartidas.FieldDefs.Items[i].Name;
                CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
              end;
              if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='NUMERICO' then
              begin
                camponumerico := TNxDbNumberColumn(Griddetalle.Columns.Add(TNxDbNumberColumn));
                camponumerico.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
                camponumerico.FieldName := mempartidas.FieldDefs.Items[i].Name;
                camponumerico.NullText := '';
                camponumerico.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
              end;
              if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='FECHA' then
              begin
                campofecha := TNxDbDateColumn(Griddetalle.Columns.Add(TNxDbDateColumn));
                campofecha.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
                campofecha.FieldName := mempartidas.FieldDefs.Items[i].Name;
                campofecha.NullText := '';
                campofecha.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
              end;
            end;
            cdespecdetallesubgrupo.CancelRange;
          end;
   //----------------------SI ES CERO, ENTONCES NO HAY REGISTRADO ARTICULSO DE LA PARTIDA-----------------------------------------
          //----------------------SE ABRE EN MODO INSERCION------------------------------------------------------------------------------
          if cdentrada.FieldByName('cuantos').AsInteger=0 then
          begin
          // Generar las N partidas que se requieren para detallar esta partida de entrada
            memPartidas.Open;
            //while contador <  do
            while memPartidas.RecordCount < Trunc(cdEntrada.FieldByName('cantidad').AsFloat) do
            begin
              memPartidas.Append;
              memPartidas.FieldByName('IdEntrada').AsInteger := cdEntrada.FieldByName('IdEntrada').AsInteger;
              memPartidas.FieldByName('IdEntradaDetalle').AsInteger := cdEntrada.FieldByName('IdEntradaDetalle').AsInteger;
              memPartidas.FieldByName('Informacion').AsString :=cdEntrada.FieldByName('tituloarticulo').AsString+' '+inttostr(memPartidas.RecordCount + 1)+'/'+cdEntrada.FieldByName('cantidad').AsString;
              memPartidas.FieldByName('numinsumoespecificado').AsInteger:=0;
              //----------CODIGO DE GUARDADO DE CAMPOS EN EL DATATSET ENMEMORIA-----------------------------------------
              for i := 4 to mempartidas.FieldDefs.Count-1 do
              begin
                cdespecdetallesubgrupo.IndexFieldNames:='IdDetalle';
                cdespecdetallesubgrupo.SetRange([mempartidas.FieldDefs.Items[i].Name], [mempartidas.FieldDefs.Items[i].Name]);
                memPartidas.FieldByName(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString).value := null;
                cdespecdetallesubgrupo.CancelRange;
              end;
            mempartidas.Post;
            end;
          end
          else
  //--------------------SI NO ES CERO, ENTONCES DEBEMOS ABRIR EN MODO EDICION--------------------------------------------------------
          begin
            memPartidas.Open;
            if Not CargarDatosFiltrados(cddetalleespecificado, 'identradadetalle', [cdentrada.FieldByName('IdEntradaDetalle').AsInteger]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
            cddetalleespecificado.Refresh;

            if Not CargarDatosFiltrados(cdcantidadinsumos, 'identradadetalle', [cdentrada.FieldByName('IdEntradaDetalle').AsInteger]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
            cdcantidadinsumos.Refresh;
            cdcantidadinsumos.First;
            while memPartidas.RecordCount < cdCantidadInsumos.RecordCount do
            //while contador < Trunc(cdEntrada.FieldByName('cantidad').AsFloat) do
            begin
              memPartidas.Append;
              for j  := 0 to mempartidas.FieldDefs.Count-1 do
              begin
                if mempartidas.FieldDefs.Items[j].Name ='numinsumoespecificado'  then
                  memPartidas.FieldByName('numinsumoespecificado').AsInteger := cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger
                else
                begin
                  if mempartidas.FieldDefs.Items[j].Name ='Informacion'  then
                    memPartidas.FieldByName('Informacion').AsString :=cdEntrada.FieldByName('tituloarticulo').AsString+'  '+inttostr(memPartidas.RecordCount + 1)+'/'+cdEntrada.FieldByName('cantidad').AsString
                  else
                  begin
                    if mempartidas.FieldDefs.Items[j].Name ='IdEntrada'  then
                      memPartidas.FieldByName('IdEntrada').AsInteger := cddetalleespecificado.FieldByName('identrada').AsInteger
                    else
                    begin
                      if mempartidas.FieldDefs.Items[j].Name ='IdEntradaDetalle'  then
                        memPartidas.FieldByName('IdEntradaDetalle').AsInteger:= cddetalleespecificado.FieldByName('identradadetalle').AsInteger
                      else
                      begin
                        cddetalleespecificado.IndexFieldNames:='numinsumoespecificado;idcampodetalle';
                        cddetalleespecificado.SetRange([cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name],
                                [cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name]);
                        if cddetalleespecificado.FieldByName('tipodedato').AsString='CADENA' then
                          memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsString:=cddetalleespecificado.FieldByName('campocadena').AsString;
                        if cddetalleespecificado.FieldByName('tipodedato').AsString='NUMERICO' then
                          memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsVariant := cddetalleespecificado.FieldByName('camponumerico').AsVariant;
                        if cddetalleespecificado.FieldByName('tipodedato').AsString='FECHA' then
                          memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsVariant := cddetalleespecificado.FieldByName('campofecha1').AsVariant;
                        cddetalleespecificado.CancelRange;
                      end;
                    end;
                  end;
                end;
              end;
              memPartidas.Post;
              cdCantidadInsumos.Next;
            end;
          end;
}

if Assigned(memPartidas) then
        begin
          // Eliminar las partidas que pudieran haber existido
          // Verificar si el mempartidas se encuentra abierto
          while memPartidas.Active and (memPartidas.RecordCount > 0) do
            memPartidas.Delete;
          memPartidas.Close;
          memPartidas.Destroy;
        end;
        // Crear el contenedor de las partidas
        memPartidas := TClientDataSet.Create(Self);
        memPartidas.FieldDefs.Clear;
        memPartidas.FieldDefs.Add('Informacion', ftString, 20, False);
        memPartidas.FieldDefs.Add('codigo', ftString, 45, False);
        memPartidas.FieldDefs.Add('IdEntrada', ftInteger, 0, False);
        memPartidas.FieldDefs.Add('IdEntradaDetalle', ftInteger, 0, False);
        memPartidas.FieldDefs.Add('numinsumoespecificado', ftInteger, 0, False);
        cdespecdetallesubgrupo.First;
        while not cdespecdetallesubgrupo.Eof do
        begin
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='CADENA' then
            mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftString, 45, False);
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='NUMERICO' then
            mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftFloat, 0, False);
          if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='FECHA' then
            mempartidas.FieldDefs.Add(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString, ftDate, 0, False);
          cdespecdetallesubgrupo.Next;
        end;
        memPartidas.CreateDataSet;
        dsmempartidas.DataSet:=mempartidas;
        griddetalle.DataSource:=dsmempartidas;
        griddetalle.Columns.Clear;
       //------------------Insercion de Columnas en el nextgrid-------------------------
       CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
       Campotexto.Header.Caption:='Información';
       Campotexto.FieldName := 'Informacion';
       CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
       //-------------------------------------------------------------------------------
       CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
       Campotexto.Header.Caption:='codigo';
       Campotexto.FieldName := 'codigo';
       CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
       //-------------------------------------------------------------------------------
        for i := 5 to memPartidas.FieldDefs.Count-1 do
        begin
          cdespecdetallesubgrupo.IndexFieldNames:='IdDetalle';
          cdespecdetallesubgrupo.SetRange([mempartidas.FieldDefs.Items[i].Name], [mempartidas.FieldDefs.Items[i].Name]);
          if cdespecdetallesubgrupo.RecordCount=1 then
          begin
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='CADENA' then
            begin
              CampoTexto := TNxDBTextColumn(Griddetalle.Columns.Add(TNxDBTextColumn));
              Campotexto.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
              Campotexto.FieldName := mempartidas.FieldDefs.Items[i].Name;
              //CampoTexto.Name := Self.Name + '_' + mempartidas.FieldDefs.Items[i].Name;
              CampoTexto.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
            end;
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='NUMERICO' then
            begin
              camponumerico := TNxDbNumberColumn(Griddetalle.Columns.Add(TNxDbNumberColumn));
              camponumerico.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
              camponumerico.FieldName := mempartidas.FieldDefs.Items[i].Name;
              //CampoTexto.Name := Self.Name + '_' + mempartidas.FieldDefs.Items[i].Name;
              camponumerico.NullText := '';
              camponumerico.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
            end;
            if cdespecdetallesubgrupo.FieldByName('TipoDato').AsString='FECHA' then
            begin
              campofecha := TNxDbDateColumn(Griddetalle.Columns.Add(TNxDbDateColumn));
              campofecha.Header.Caption:=cdespecdetallesubgrupo.FieldByName('TituloDetalle').AsString;;
              campofecha.FieldName := mempartidas.FieldDefs.Items[i].Name;
              //CampoTexto.Name := Self.Name + '_' + mempartidas.FieldDefs.Items[i].Name;
              campofecha.NullText := '';
              campofecha.Options := [coCanClick,coCanInput,coCanSort,coEditing,coEditorAutoSelect,coPublicUsing,coShowTextFitHint];
            end;
          end;
          cdespecdetallesubgrupo.CancelRange;
        end;
 //----------------------SI ES CERO, ENTONCES NO HAY REGISTRADO ARTICULSO DE LA PARTIDA-----------------------------------------
        //----------------------SE ABRE EN MODO INSERCION------------------------------------------------------------------------------
        if cdentrada.FieldByName('cuantos').AsInteger=0 then
        begin
        // Generar las N partidas que se requieren para detallar esta partida de entrada
          memPartidas.Open;
          //while contador <  do
          ultimoinsumo:=cdnumultimoinsumo.FieldByName('ultimo').AsInteger;
          while memPartidas.RecordCount < Trunc(cdEntrada.FieldByName('cantidad').AsFloat) do
          begin
            memPartidas.Append;
            memPartidas.FieldByName('IdEntrada').AsInteger := cdEntrada.FieldByName('IdEntrada').AsInteger;
            memPartidas.FieldByName('IdEntradaDetalle').AsInteger := cdEntrada.FieldByName('IdEntradaDetalle').AsInteger;
            memPartidas.FieldByName('Informacion').AsString :=cdEntrada.FieldByName('tituloarticulo').AsString+' '+inttostr(memPartidas.RecordCount + 1)+'/'+cdEntrada.FieldByName('cantidad').AsString;
            ultimoinsumo:=ultimoinsumo+1;
            memPartidas.FieldByName('numinsumoespecificado').AsInteger:=ultimoinsumo;
            memPartidas.FieldByName('codigo').AsString:='DT-'+cdEntrada.FieldByName('tituloarticulo').AsString+'-'+inttostr(ultimoinsumo)+'-'+Formatdatetime('yyyy', now);
            //----------CODIGO DE GUARDADO DE CAMPOS EN EL DATATSET ENMEMORIA-----------------------------------------
            for i := 5 to mempartidas.FieldDefs.Count-1 do
            begin
              cdespecdetallesubgrupo.IndexFieldNames:='IdDetalle';
              cdespecdetallesubgrupo.SetRange([mempartidas.FieldDefs.Items[i].Name], [mempartidas.FieldDefs.Items[i].Name]);
              memPartidas.FieldByName(cdespecdetallesubgrupo.FieldByName('IdDetalle').AsString).value := null;
              cdespecdetallesubgrupo.CancelRange;
            end;
          mempartidas.Post;
          end;
        end
        else
//--------------------SI NO ES CERO, ENTONCES DEBEMOS ABRIR EN MODO EDICION--------------------------------------------------------
        begin
          memPartidas.Open;
          if Not CargarDatosFiltrados(cddetalleespecificado, 'identradadetalle', [cdentrada.FieldByName('IdEntradaDetalle').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
          cddetalleespecificado.Refresh;

          if Not CargarDatosFiltrados(cdcantidadinsumos, 'identradadetalle', [cdentrada.FieldByName('IdEntradaDetalle').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
          cdcantidadinsumos.Refresh;
          cdcantidadinsumos.First;
          while memPartidas.RecordCount < cdCantidadInsumos.RecordCount do
          //while contador < Trunc(cdEntrada.FieldByName('cantidad').AsFloat) do
          begin
            memPartidas.Append;
            for j  := 0 to mempartidas.FieldDefs.Count-1 do
            begin
            if mempartidas.FieldDefs.Items[j].Name ='codigo' then
            memPartidas.FieldByName('codigo').AsString :=cdcantidadinsumos.FieldByName('codigo').AsString
            else
            begin
              if mempartidas.FieldDefs.Items[j].Name ='numinsumoespecificado'  then
                memPartidas.FieldByName('numinsumoespecificado').AsInteger := cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger
              else
              begin
                if mempartidas.FieldDefs.Items[j].Name ='Informacion'  then
                  memPartidas.FieldByName('Informacion').AsString :=cdEntrada.FieldByName('tituloarticulo').AsString+'  '+inttostr(memPartidas.RecordCount + 1)+'/'+cdEntrada.FieldByName('cantidad').AsString
                else
                begin
                  if mempartidas.FieldDefs.Items[j].Name ='IdEntrada'  then
                    memPartidas.FieldByName('IdEntrada').AsInteger := cddetalleespecificado.FieldByName('identrada').AsInteger
                  else
                  begin
                    if mempartidas.FieldDefs.Items[j].Name ='IdEntradaDetalle'  then
                      memPartidas.FieldByName('IdEntradaDetalle').AsInteger:= cddetalleespecificado.FieldByName('identradadetalle').AsInteger
                    else
                    begin
                      cddetalleespecificado.IndexFieldNames:='numinsumoespecificado;idcampodetalle';
                      cddetalleespecificado.SetRange([cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name],
                              [cdcantidadinsumos.FieldByName('numinsumoespecificado').AsInteger, mempartidas.FieldDefs.Items[j].Name]);
                      if cddetalleespecificado.FieldByName('tipodedato').AsString='CADENA' then
                        memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsString:=cddetalleespecificado.FieldByName('campocadena').AsString;
                      if cddetalleespecificado.FieldByName('tipodedato').AsString='NUMERICO' then
                        memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsVariant := cddetalleespecificado.FieldByName('camponumerico').AsVariant;
                      if cddetalleespecificado.FieldByName('tipodedato').AsString='FECHA' then
                        memPartidas.FieldByName(mempartidas.FieldDefs.Items[j].Name).AsVariant := cddetalleespecificado.FieldByName('campofecha1').AsVariant;
                      cddetalleespecificado.CancelRange;
                    end;
                  end;
                end;
              end;
            end;
            end;
            memPartidas.Post;
            cdCantidadInsumos.Next;
          end;
        end;
end;

procedure TFrmDetalleXEntrada.PopupMenu1Popup(Sender: TObject);
begin
  CerrarEntrada1.Enabled := Panel2.Visible;
  Guardar.Enabled := Panel2.Visible;
  GuardaryCerrar1.Enabled := Panel2.Visible;
  CancelarCambios1.Enabled := Panel2.Visible;
  CancelarCambiosyCerrar1.Enabled := Panel2.Visible;
end;

procedure TFrmDetalleXEntrada.Btn_ArchivoClick(Sender: TObject);
var
  Point : Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDetalleXEntrada.cancelarcambios1Click(Sender: TObject);
begin
  refrescarentrada();
end;

procedure TFrmDetalleXEntrada.CancelarCambiosyCerrar1Click(Sender: TObject);
begin
  forzarsalir:=true;
  close;
end;

procedure TFrmDetalleXEntrada.CerrarEntrada1Click(Sender: TObject);
begin
  // Destruir los objetos creado en la apertura
  memPartidas.Destroy;
  Panel2.Visible := False;
end;

end.
