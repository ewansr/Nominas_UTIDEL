unit UTFrmSalidaDetalle2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, DBClient, ExtCtrls, ComCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, JvExControls, JvLabel, StdCtrls, Mask, Grids, DBGrids,
  Menus, AdvShapeButton;

type
  TFrmSalidaDetalle2 = class(TForm)
    cdSalidas: TClientDataSet;
    dsSalidas: TDataSource;
    dsListaSalidas: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    dtFecha: TAdvDBDateTimePicker;
    JvLabel1: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel2: TJvLabel;
    DBMemo1: TDBMemo;
    JvLabel3: TJvLabel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    cdDetalleSalida: TClientDataSet;
    dsDetalleSalida: TDataSource;
    cdDetalleSalidaIdSalidaDetalle: TIntegerField;
    cdDetalleSalidaIdArticulo: TIntegerField;
    cdDetalleSalidaTituloArticulo: TStringField;
    cdDetalleSalidaCodigoUnidad: TStringField;
    cdDetalleSalidaTituloDisciplina: TStringField;
    cdDetalleSalidaCantidad: TFloatField;
    cdDetalleSalidaPrecio: TFloatField;
    cdDetalleSalidaCosto: TFloatField;
    cdDetalleSalidaObservaciones: TMemoField;
    cdDetalleSalidaCodigoArticulo: TStringField;
    cdDetalleSalidaIdOCDetalle: TIntegerField;
    cdDetalleSalidaOC: TStringField;
    cdArticuloMem: TClientDataSet;
    cdArticulo: TClientDataSet;
    PopupMenu1: TPopupMenu;
    EditarPartida1: TMenuItem;
    EliminarPartida1: TMenuItem;
    N1: TMenuItem;
    Informacindelapartida1: TMenuItem;
    Panel4: TPanel;
    BtnCancel: TAdvShapeButton;
    BtnRec: TAdvShapeButton;
    lblProveedor: TLabel;
    CdEntrada: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cdDetalleSalidaCantidadChange(Sender: TField);
    procedure cdDetalleSalidaCodigoArticuloChange(Sender: TField);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
  private
    NombreSalidas,
    NombreArticulo: String;
    dentro: Boolean;
  public
    DevolucionProveedor: Boolean;
    { Public declarations }
  end;

var
  FrmSalidaDetalle2: TFrmSalidaDetalle2;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, UInteliDialog, UTFrmSelArticulo, UTFrmCantidadSalida;

procedure TFrmSalidaDetalle2.BtnCancelClick(Sender: TObject);
begin
  // Verificar si se realizaron modificaciones

  Close;
end;

procedure TFrmSalidaDetalle2.cdDetalleSalidaCantidadChange(Sender: TField);
var
  resultado, CantidadTotal: integer;

begin
  Try
//    dentro := False;
    if not dentro then
    begin
      if (cdDetalleSalida.FieldByName('TituloArticulo').AsString = '') and (cdDetalleSalida.FieldByName('Cantidad').AsString <> '') then
        raise InteligentException.Create('No se puede especificar una cantidad debido a que no se ha especificado un código de artículo existente');

      // Activar la ventana de selección de cantidades

      Try
        Try
          Application.CreateForm(TFrmCantidadSalida, FrmCantidadSalida);
          FrmCantidadSalida.IdArticulo := cdDetalleSalida.FieldByName('IdArticulo').AsInteger;
          FrmCantidadSalida.Cantidad := Sender.AsFloat;
          resultado := FrmCantidadSalida.ShowModal ;
          if resultado = mrok then
          begin
             FrmCantidadSalida.cdDatos.First;
             CantidadTotal := 0;
             while Not FrmCantidadSalida.cdDatos.Eof do
             begin
               if FrmCantidadSalida.cdDatos.FieldByName('cantidadusr').AsInteger > 0 then
                 CantidadTotal := CantidadTotal + FrmCantidadSalida.cdDatos.FieldByName('cantidadusr').AsInteger;
               FrmCantidadSalida.cdDatos.Next;
             end;
             dentro := True;
             cdDetalleSalida.FieldByName('cantidad').AsInteger := CantidadTotal;

          end;

        Except
          on e:Exception do
            raise InteligentWarning.Create('No ha sido posible invocar la ventana de selección de cantidades para salida al almacén debido al siguiente error:' + #10 + #10 +
                                           e.message + #10 + #10 + 'Informe de esto al administrador del sistema');
        End;
      Finally
        FrmCantidadSalida.Free;
      End;
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Error de captura', e.Message, mtInformation, [mbOk], 0);
      cdDetalleSalida.FieldByName('Cantidad').AsString := '';
    end;

    on e:InteligentWarning do
      InteliDialog.ShowModal('Error de acceso al sistema', e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmSalidaDetalle2.cdDetalleSalidaCodigoArticuloChange(Sender: TField);
var
  Creado, Encontrado: Boolean;
begin
  Creado := False;

  // Localizar el registro de artículo en el objeto de memoria para no volver a leerlo
  Encontrado := cdArticuloMem.Locate('CodigoArticulo', TStringField(Sender).Value, []);
  if Not Encontrado then
  begin
    cdArticulo.Close;
    CargarDatosFiltrados(cdArticulo, 'codigoarticulo', [TStringField(Sender).Value]);
    cdArticulo.Open;

    if cdArticulo.RecordCount > 0 then
    begin
      // Copiar el registro leido al objeto de memoria
      cdArticuloMem.Append;
      cdArticuloMem.CopyFields(cdArticulo);
      cdArticuloMem.Post;

      Creado := True;
    end
    else
    begin
      if cdDetalleSalida.State <> dsEdit then
        cdDetalleSalida.Edit;
      cdDetalleSalida.FieldByName('IdArticulo').AsString := '';
      cdDetalleSalida.FieldByName('TituloArticulo').AsString := '';
      cdDetalleSalida.FieldByName('CodigoUnidad').AsString := '';
      cdDetalleSalida.Post;
    end;
  end;

  if Creado or Encontrado then
  begin
    // Cargar la información del artículo
    if cdDetalleSalida.State <> dsEdit then
      cdDetalleSalida.Edit;
    cdDetalleSalida.FieldByName('IdArticulo').AsInteger := cdArticuloMem.FieldByName('IdArticulo').AsInteger;
    cdDetalleSalida.FieldByName('TituloArticulo').AsString := cdArticuloMem.FieldByName('TituloArticulo').AsString;
    cdDetalleSalida.FieldByName('CodigoUnidad').AsString := cdArticuloMem.FieldByName('CodigoUnidad').AsString;
    cdDetalleSalida.Post;
  end;
end;

procedure TFrmSalidaDetalle2.DBGrid1ColExit(Sender: TObject);
begin
  dentro := False;
end;

procedure TFrmSalidaDetalle2.DBGrid1DblClick(Sender: TObject);
begin
  // Mostrar la ventana de edición de datos de partida
  //ShowMessage('Rangel');
end;

procedure TFrmSalidaDetalle2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Try
    case Key of
      #10: if DbGrid1.SelectedIndex = 0 then   //tecla 10 es ctrl+enter
           begin
             Try
               // Invocar la ventana de selección de artículos
               Application.CreateForm(TFrmSelArticulo, FrmSelArticulo);
               DBGrid1.SelectedIndex := 2;
               FrmSelArticulo.Edit1.Text := DBGrid1.Fields[0].AsString;
               if FrmSelArticulo.ShowModal = mrOk then
               begin
                 // Mandar verificar el registro seleccionado
                 if cdDetalleSalida.State <> dsEdit then
                 begin
                   cdDetalleSalida.Cancel;
                   cdDetalleSalida.Edit;
                 end;

                 DBGrid1.Fields[0].Value := FrmSelArticulo.Devolver;
               end
               else
                 DBGrid1.SelectedIndex := 0;
             Finally
               FrmSelArticulo.Free;
             End;

             Key := #0;
           end;
      #13: cdDetalleSalida.Next; //tecla 13 es enter
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema',
                             'No se ha podido invocar la ventana se selección de artículos, informe de lo siguiente al administrador del sistema:' +
                             e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema',
                             'Informe de lo siguiente al administrador del sistema:' +
                             e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmSalidaDetalle2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto([NombreSalidas, NombreArticulo]);
end;

procedure TFrmSalidaDetalle2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
{    13: if (ssCtrl in Shift) and (DbGrid1.SelectedIndex = 0) then
        begin
          // Activar la ventana de busqueda
          Key := 0;
          Abort;
          //showmessage(IntToStr(DbGrid1.SelectedIndex));
        end
        else
          cdDetalleSalida.Next;}
    27: Close;
  end;
end;

procedure TFrmSalidaDetalle2.FormPaint(Sender: TObject);
begin
  if DevolucionProveedor then
    lblProveedor.Visible := True;
end;

procedure TFrmSalidaDetalle2.FormShow(Sender: TObject);
begin
  Try

    ClientModule1.ComponentColor(Self);

    // Crear el contenedor de partidas de vale de salida
    cdDetalleSalida.CreateDataSet;
    while cdDetalleSalida.RecordCount < 100 do
    begin
      cdDetalleSalida.Append;
      cdDetalleSalida.Post;
    end;
    cdDetalleSalida.First;

    // Obtener un registro vacío de encabezado de salida
    if Not CrearConjunto(cdSalidas, 'alm_salida', NombreSalidas, ccUpdate) then
      raise InteligentException.Create('Ha ocurrido un error al crear el conjunto de acceso a datos en el servidor para la tabla de salidas');
    CargarDatosFiltrados(cdSalidas, 'idsalida', [-9]);
    cdSalidas.Open;
    cdSalidas.Append;

    // Crear el contenedor para registro de articulo especificado
    if Not CrearConjunto(cdArticulo, 'alm_articulo', NombreArticulo, ccCatalog) then
      raise InteligentException.Create('Ha ocurrido un error al crear el conjunto de acceso a dato en el servidor para la tabla de articulos');
    CargarDatosFiltrados(cdArticulo, 'idArticulo', [-9]);
    cdArticulo.Open;  // Abrir en blanco para cargar la estructura solamente

    // Copiar la estructura completa al objeto de memoria
    while cdArticuloMem.FieldDefs.Count < cdArticulo.FieldDefs.Count do
      cdArticuloMem.FieldDefs.Add(cdArticulo.FieldDefs.Items[cdArticuloMem.FieldDefs.Count].Name,
                                  cdArticulo.FieldDefs.Items[cdArticuloMem.FieldDefs.Count].DataType,
                                  cdArticulo.FieldDefs.Items[cdArticuloMem.FieldDefs.Count].Size,
                                  cdArticulo.FieldDefs.Items[cdArticuloMem.FieldDefs.Count].Required);
    cdArticuloMem.CreateDataSet;
    cdArticuloMem.Open;

    dtFecha.Date := Now;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Error de acceso al servidor',
                             'No se ha podido acceder a los datos de servidor debido a lo siguiente:' + #10 + #10 +
                             e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 +
                             e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
