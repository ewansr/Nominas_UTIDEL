unit UTFrmConsumoxArticulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, JvExControls, JvLabel,
  NxCollection, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  DB, DBClient, JvExStdCtrls, JvBehaviorLabel, Uintelidialog, NxDBColumns,
  NxColumns, ClientModuleUnit1;

type
  TFrmConsumoxArticulo = class(TForm)
    Panel2: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    BuscaArticulo: TNxButton;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    DBEdit2: TDBEdit;
    JvLabel3: TJvLabel;
    DBEdit3: TDBEdit;
    JvLabel4: TJvLabel;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    Panel6: TPanel;
    NextDBGrid1: TNextDBGrid;
    Panel7: TPanel;
    EliminarConsumible: TNxButton;
    AgregarConsumible: TNxButton;
    cdconsumoarticulo: TClientDataSet;
    dsconsumoarticulo: TDataSource;
    cdarticulo: TClientDataSet;
    dsarticulo: TDataSource;
    cdConsumible: TClientDataSet;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    NxButton4: TNxButton;
    Btn_Grabar: TNxButton;
    ECodigoArticulo: TEdit;
    procedure BuscaArticuloClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AgregarConsumibleClick(Sender: TObject);
    procedure EliminarConsumibleClick(Sender: TObject);
    procedure Btn_GrabarClick(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ECodigoArticuloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ECodigoArticuloChange(Sender: TObject);
    procedure LigarConHijos;
    procedure cdarticuloAfterRefresh(DataSet: TDataSet);
    procedure cdarticuloAfterOpen(DataSet: TDataSet);
    procedure cdConsumibleAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdarticuloBeforeClose(DataSet: TDataSet);
  private
    NecesitaGrabar: Boolean;
  public
    CodigoArticulo: String;
  end;

var
  FrmConsumoxArticulo: TFrmConsumoxArticulo;

implementation

uses
  xDatabase, UTFrmArticulo2;
  
{$R *.dfm}

procedure TFrmConsumoxArticulo.ECodigoArticuloChange(Sender: TObject);
begin
  cdArticulo.Close;
end;

procedure TFrmConsumoxArticulo.ECodigoArticuloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  Cuantos: Integer;
  Cursor: TCursor;
begin
  if Key = 13 then
  begin
    Try
      if ECodigoArticulo.Text = '' then
        raise InteligentWarning.Create('Debe capturar un código de Artículo para que se pueda proceder a localizarlo en la tabla correspondiente.');

      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        // Tratar de localizar el artículo con el dato indicado
        CargarDatosFiltrados(cdArticulo, 'CodigoArticulo', ['%' + ECodigoArticulo.Text + '%']);
        Cuantos := CuantosRegistros(cdArticulo);
        case Cuantos of
          0: raise InteligentWarning.Create('No se ha encontrado ningún artículo con esa referencia dentro de su código');
          1: begin
                if cdArticulo.Active then
                  cdArticulo.Close;

               // Verificar si se puede abrir el archivo
               Try
                 cdArticulo.Open // Si se ha localizado solo un registro se deberá seleccionar este para mostrarlo en la ventana
               Except
                 on e:Exception do
                   raise InteligentException.CreateByCode(24, [e.Message]);
               End;
             end;
          else
            raise InteligentWarning.Create('Existen un total de ' + IntToStr(Cuantos) + ' Registros que concuerdan con el valor [' + ECodigoArticulo.Text + '], su captura debe ser más específica o bien utilice el botón de la derecha para abrir la ventana del catálogo general de Artículos.');
        end;
      Finally
        Screen.Cursor := Cursor;
      End;
    Except
      on e:InteligentWarning do
        InteliDialog.ShowModal('No se ha podido seleccionar un artículo', e.Message, mtWarning, [mbOk], 0);

      on e:InteligentException do
        InteliDialog.ShowModal('Información de servidor', e.Message, mtInformation, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmConsumoxArticulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;
    if cdArticulo.Active then
      cdArticulo.Close;

    EliminarConjunto([cdArticulo, cdConsumoArticulo]);
    LiberarVentana(Self, Action);
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmConsumoxArticulo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;

  if EnTransaccion then
  begin
    if NecesitaGrabar then
    begin
      case InteliDialog.ShowModal('Se han realizado cambios', '¿Desea grabar los cambios realizados antes de cerrar la ventana?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes: ConcretarTransaccion;
        mrNo: CancelarTransaccion;
        mrCancel: CanClose := False;
      end;
    end
    else
      CancelarTransaccion;
  end;
end;

procedure TFrmConsumoxArticulo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cursor: TCursor;
begin
  if (Key = 116) and (cdConsumoArticulo.Active) then
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdConsumoArticulo.Refresh;
    Finally
      Screen.Cursor := Cursor;
    End;
end;

procedure TFrmConsumoxArticulo.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  CodigoArticulo := '-9';
  
  AccedeACoordenadas(Self);

  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
    
      if Not CrearConjunto(cdarticulo, 'alm_articulo_lock', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Artículos']);
      if Not CargarDatosFiltrados(cdarticulo, 'CodigoArticulo', [CodigoArticulo]) then
        raise InteligentException.CreateByCode(6, ['Artículos', CodigoArticulo, 'Código de Artículo']);

      if Not CrearConjunto(cdconsumoarticulo, 'alm_consumoarticulo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Consumos por Artículo']);

      if Not CrearConjunto(cdConsumible, 'alm_consumoarticulo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Consumos por Artículo']);
      if Not CargarDatosFiltrados(cdConsumible, 'IdArticulo', [-9]) then
        raise InteligentException.CreateByCode(21, ['Consumibles por Artículo']);

      if CuantosRegistros(cdArticulo) = 1 then
        ECodigoArticulo.Text := CodigoArticulo;
        
      cdArticulo.Open;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmConsumoxArticulo.BuscaArticuloClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmArticulo2;
begin
  Try
    tForm := TFrmArticulo2.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      if Not CargarDatosFiltrados(cdarticulo, 'idarticulo', [registro.Valor['idarticulo']]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');

      ECodigoArticulo.Text := registro.Valor['CodigoArticulo'];

      if cdArticulo.Active then
        cdArticulo.Close;
      cdArticulo.Open;
    end;
    tForm.Free;
  except
    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado','Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConsumoxArticulo.cdarticuloAfterOpen(DataSet: TDataSet);
begin
  LigarConHijos;
end;

procedure TFrmConsumoxArticulo.cdarticuloAfterRefresh(DataSet: TDataSet);
begin
  LigarConHijos;
end;

procedure TFrmConsumoxArticulo.cdarticuloBeforeClose(DataSet: TDataSet);
begin
  CancelarBloqueo(cdArticulo, cdArticulo.FieldByName('IdArticulo').AsInteger);
  if cdConsumoArticulo.Active then
    cdConsumoArticulo.Close;
end;

procedure TFrmConsumoxArticulo.cdConsumibleAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  NecesitaGrabar := True;
end;

procedure TFrmConsumoxArticulo.EliminarConsumibleClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    // Localizar el registro que se va a eliminar
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdConsumible.Close;
      CargarDatosFiltrados(cdConsumible, 'IdConsumoArticulo', [cdConsumoArticulo.FieldByName('IdConsumoArticulo').AsInteger]);
      cdConsumible.Open;
    Finally
      Screen.Cursor := Cursor;
    End;
    if cdConsumible.RecordCount = 1 then
    begin
      if InteliDialog.ShowModal('Confirmar borrao de registro', 'Está a punto de eliminar el registro [' + cdConsumoArticulo.FieldByName('CodigoConsumible').AsString + ']' + #10 +
                                '"' + cdConsumoArticulo.FieldByName('TituloConsumible').AsString + '"' + #10 + #10 +
                                '¿Está seguro de eliminarlo de manera definitiva?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        Try
          Cursor := Screen.Cursor;
          Screen.Cursor := crAppStart;

          cdConsumible.Delete;
          cdConsumible.ApplyUpdates(-1);

          cdConsumoArticulo.Refresh;
        Finally
          Screen.Cursor := Cursor;
        End;
      end;
    end
    else
      InteliDialog.ShowModal('El registros ya no se encuentra disponible', 'El registro que está intentando eliminar ya no se encuentra disponible o bien ha ocurrido un error de comunicación con el servidor, actualice la información en pantalla e intente de nuevo.', mtWarning, [mbOk], 0);

    cdConsumible.Close;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConsumoxArticulo.AgregarConsumibleClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmArticulo2;
begin
  Try
    if (Not cdArticulo.Active) or (cdArticulo.RecordCount = 0) then
    begin
      if ECodigoArticulo.CanFocus then
        ECodigoArticulo.SetFocus;
        
      raise InteligentException.CreateByCode(26, ['Artículos']);
    end;

    tForm := TFrmArticulo2.Create(nil);
    Try
      tForm.ModoSeleccion := True;
      tForm.ArticuloActual := cdArticulo.FieldByName('IdArticulo').AsInteger;
      tForm.Filtrar;
      registro := tForm.SeleccionarItem();
    Finally
      tForm.Free;
    End;
    
    if Assigned(registro) then
      Try
        if Not cdConsumible.Active then
          cdConsumible.Open;

        cdConsumible.Append;
        cdConsumible.FieldByName('IdConsumoArticulo').AsInteger := 0;
        cdConsumible.FieldByName('IdArticulo').AsInteger := cdArticulo.FieldByName('IdArticulo').AsInteger;
        cdConsumible.FieldByName('IdConsumible').AsInteger := Registro.Valor['IdArticulo'];
        cdConsumible.Post;
        cdConsumible.ApplyUpdates(-1);

        cdConsumoArticulo.Refresh;
      Finally
        cdConsumible.Close;
      End;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmConsumoxArticulo.NxButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsumoxArticulo.Btn_GrabarClick(Sender: TObject);
begin
  try
    if (Not cdArticulo.Active) or (cdArticulo.RecordCount = 0) then
      raise InteligentException.Create('No se puede asignar consumibles ya que no se ha seleccionado nigun articulo que los utilice');

    if cdConsumoArticulo.RecordCount=0 then
      raise InteligentException.Create('No se ha seleccionado ningun consumible');

    ConcretarTransaccion;
    NecesitaGrabar := True;
    Close;
  except
    on e:inteligentexception do
      if e.Message <> '**' then
        InteliDialog.ShowModal('No se puede Guardar la informacion', 'No se puede almacenar el articulo con sus consimibles:' + #10 + e.Message, mtWarning, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Ha ocurrido un error inesperado en el sistema, informe de esto al administrador del sistema:' +#10 + #10 + e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmConsumoxArticulo.LigarConHijos;
begin
  if (cdArticulo.Active) and (cdArticulo.RecordCount > 0) then
  begin
    CargarDatosFiltrados(cdConsumoArticulo, 'IdArticulo', [cdArticulo.FieldByName('IdArticulo').AsInteger]);
    if cdConsumoArticulo.Active then
      cdConsumoArticulo.Refresh
    else
      cdConsumoArticulo.Open;
  end
  else
    cdConsumoArticulo.Close;

  if EnTransaccion then
    CancelarTransaccion;
    
  IniciarTransaccion;
end;

end.
