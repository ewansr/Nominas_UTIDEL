unit UTFrmMenuSalidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CategoryButtons, ButtonGroup, StdCtrls, BtnListB, ImgList, ToolWin,
  ActnMan, ActnCtrls, ExtCtrls, UInteliDialog, DB, DBClient;

type
  TFrmMenuSalidas = class(TForm)
    ButtonGroup1: TButtonGroup;
    ImageList1: TImageList;
    Panel1: TPanel;
    cdListaSalidas: TClientDataSet;
    dsListaSalidas: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonGroup1ButtonClicked(Sender: TObject; Index: Integer);
    procedure FormCreate(Sender: TObject);
  private
    NombreListaSalidas: String;
  public
    { Public declarations }
  end;

var
  FrmMenuSalidas: TFrmMenuSalidas;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, Unit2, UTFrmSalidaDetalle2;

procedure TFrmMenuSalidas.ButtonGroup1ButtonClicked(Sender: TObject;
  Index: Integer);
  var
    PopupSalida: TFrmSalidaDetalle2;
begin
  Try
    if Index = ButtonGroup1.Items.Count -1 then
      Close
    else
    begin
      // Ubicar el registro que se seleccionó
      if Index +1 > cdListaSalidas.RecordCount then
        raise InteligentException.Create('Ha ocurrido un error al intentar invocar la ventana de captura de salida al almacén');

      //localizar en el dataset el registro del boton pulsado
      cdListaSalidas.RecNo := Index +1;

      //localizar tipo de movimiento
      cdListaSalidas.Locate('NombreTipoMovimiento',VarArrayOf([ButtonGroup1.Items[index].Caption]),[]);

      // Llamar a la ventana de salidas
      PopupSalida := TFrmSalidaDetalle2.Create(self);
      //verificar si es tipo devolucion proveedor
      if cdListaSalidas.FieldByName('tipomovimiento').AsString = 'DEVOLUCIONPROV' then
        PopupSalida.DevolucionProveedor := True;
      PopupSalida.Caption := 'Captura salida de almacén - ' + cdListaSalidas.FieldByName('NombreTipoMovimiento').AsString;
      PopupSalida.dsListaSalidas.DataSet := cdListaSalidas;
      PopupSalida.Show;


    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('Error de acceso a datos', e.Message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema',
                             'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmMenuSalidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(NombreListaSalidas);
  Action := caFree;
end;

procedure TFrmMenuSalidas.FormCreate(Sender: TObject);
begin
  if TForm2(Application.MainForm).Panel2.Visible then
    Self.Width := Application.MainForm.Width - (TForm2(Application.MainForm).Panel2.Width + 10)
  else
    Self.Width := Application.MainForm.Width - 10;

  Self.Left := 5;
end;

procedure TFrmMenuSalidas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    close;
end;

procedure TFrmMenuSalidas.FormShow(Sender: TObject);
var
  ButtonItem: TGrpButtonItem;
  Cuantos: Integer;
begin
  Try

    ClientModule1.ComponentColor(Self);

    // Obtener la lista de tipos de salidas
    if not CrearConjunto(cdListaSalidas, 'alm_tipomovimiento', NombreListaSalidas, ccCatalog) then
      raise InteligentException.Create('Ha ocurrido un error al crear el conjunto de acceso a datos en el servidor para la tabla tipos de salida del almacén');

    CargarDatosFiltrados(cdListaSalidas, 'tipomovimiento', ['SALIDA|DEVOLUCIONPROV']);
    cdListaSalidas.Open;

    while Not cdListaSalidas.Eof do
    begin
      ButtonItem := ButtonGroup1.Items.Add;
      ButtonItem.Caption := cdListaSalidas.FieldByName('NombreTipoMovimiento').AsString;
      if cdListaSalidas.FieldByName('Manifiesto').AsString = 'Si' then
        ButtonItem.ImageIndex := 1
      else
        ButtonItem.ImageIndex := 0;

      cdListaSalidas.Next;
    end;

    // Calcular el alto de la ventana
    Cuantos := Trunc(ButtonGroup1.Width / ButtonGroup1.ButtonWidth);
    Cuantos := Round((cdListaSalidas.RecordCount / Cuantos) + 0.9);
    Self.Height := 10 + Panel1.Height + (Cuantos * (ButtonGroup1.ButtonHeight + 6)) + GetSystemMetrics(SM_CYCAPTION);

    // Agregar el botón de cerrado de ventana
    ButtonItem := ButtonGroup1.Items.Add;
    ButtonItem.Caption := '&Cerrar esta ventana';
    ButtonItem.ImageIndex := 2;

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
