unit UTFrmCatalogoSalarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, JvMemoryDataset, DB, DBClient, Menus, ComCtrls,
  StdCtrls, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  AdvShapeButton, Buttons, PngSpeedButton, JvExControls, JvLabel, ExtCtrls,
  AdvEdit, UinteliDialog, NxDBColumns, NxColumns, UTFrmDatosCatalogo,
  UTFrmDatosSalarios, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Grids, DBGrids, NxVirtualColumn, URegistro, ExBar,
  UInfoPanel, ImgList;

type
  TFrmCatalogoSalarios = class(TFrmCatalogo)
    edtcodigo: TAdvEdit;
    edtsalario: TAdvEdit;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    FechaAplicacion: TJvDatePickerEdit;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxVirtualColumn1: TNxVirtualColumn;
    procedure FormShow(Sender: TObject);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtsalarioKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);//procedimiento global para el panel indicar un indice diferente
    procedure cdDatosAfterScroll(DataSet: TDataSet);
    procedure ModificaFecha;
    procedure FechaAplicacionChange(Sender: TObject);
    procedure DBGridPrincipalCellFormating(Sender: TObject; ACol, ARow: Integer;
      Value: WideString; var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure RegistroCambiado;
    procedure BtnEditClick(Sender: TObject);
    procedure NxVirtualColumn1GetText(Sender: TObject; const ACol,
      ARow: Integer; var Value: WideString);
    procedure FormDestroy(Sender: TObject);
    procedure InitForm; override;
    procedure CambiaFecha;
    procedure MostrarHistorial;
  private
    function createPopUp: TFrmDatosCatalogo; Override;
    procedure inicializar;
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FrmCatalogoSalarios: TFrmCatalogoSalarios;

implementation

  Uses ClientModuleUnit1, Unit2, UTFrmHistorialSalario;

{$R *.dfm}

procedure TFrmCatalogoSalarios.InitForm;
begin
  CrearBarraEx := True;
end;

procedure TFrmCatalogoSalarios.ModificaFecha;
var
  RespFor: String;
begin
  if (FExBar <> Nil) and (FExBar.ExGroups.Count > 0) then
  begin
    Try
      RespFor := ShortDateFormat;
      ShortDateFormat := 'dddd, dd "de" mmmm "de" yyyy';
      FExBar.ExGroups.Items[0].Items.Clear;
      FExBar.ExGroups.Items[0].AddMenuItem(DateToStr(FechaAplicacion.Date), CambiaFecha, 'Haga click aquí si desea consultar los salarios existentes en otra fecha', 0, 0);
      FExBar.ExGroups.Items[0].AddMenuItem('', MostrarHistorial, '',1,-1);   // Consulta de historial de salarios
      FExBar.ExGroups.Items[0].AddMenuItem('','',2,-1);   // Modificación de salario general
    Finally
      ShortDateFormat := RespFor;
      FExBar.Refresh;
    End;

    // Al modificar la fecha se deberá volver a leer la información
    if cdDatos.Active then
      BtnSearch.Click;
  end;
end;

procedure TFrmCatalogoSalarios.NxVirtualColumn1GetText(Sender: TObject;
  const ACol, ARow: Integer; var Value: WideString);
begin
  inherited;

  Value := cdDatos.FieldByName('Simbolo').AsString + FloatToStrF(cdDatos.FieldByName('Salario').AsFloat, ffNumber, 12 + cdDatos.FieldByName('Decimales').AsInteger, cdDatos.FieldByName('Decimales').AsInteger);
end;

procedure TFrmCatalogoSalarios.CambiaFecha;
var
  Posicion: TPoint;
begin
  // Modificar la fecha de consulta de datos
  GetCursorPos(Posicion);
  FechaAplicacion.Left := Posicion.X - Self.Left;
  FechaAplicacion.Top := Posicion.Y - (Form2.tbMain.Height + PanelFiltro.Height + GetSystemMetrics(SM_CYCAPTION));

  FechaAplicacion.DoClick;
end;

procedure TFrmCatalogoSalarios.MostrarHistorial;
var
  i: Integer;
  Encontrado: Boolean;
begin
  // Verificar si el historial ya se ha mostrado
  i := 0;
  Encontrado := False;
  while (i < Application.ComponentCount) and (Not Encontrado) do
  begin
    Encontrado := ((Application.Components[i].ClassType = TFrmHistorialSalario) and (TFrmHistorialSalario(Application.Components[i]).Llave = cdDatos.FieldByName('IdLlave').AsInteger));

    if Not Encontrado then
      Inc(i);
  end;

  if Encontrado then
    TFrmHistorialSalario(Application.Components[i]).BringToFront
  else
  begin
    // Mostrar el historial de salarios
    Application.CreateForm(TFrmHistorialSalario, FrmHistorialSalario);
    FrmHistorialSalario.Llave := cdDatos.FieldByName('IdLlave').AsInteger;
    FrmHistorialSalario.Chart1.Title.Text.Text := cdDatos.FieldByName('TituloSalario').AsString;
    FrmHistorialSalario.Chart1.Axes.Left.Title.Caption := cdDatos.FieldByName('TituloMoneda').AsString;
    FrmHistorialSalario.Chart1.Legend.Title.Caption := 'Historial';
    FrmHistorialSalario.Caption := FrmHistorialSalario.Caption + ' - ' + cdDatos.FieldByName('TituloSalario').AsString;
    FrmHistorialSalario.Show;
  end;
end;

procedure TFrmCatalogoSalarios.FormCreate(Sender: TObject);
begin
  inherited;

  FechaAplicacion.Date := Now;    // Fecha de inicio de aplicacion a buscar

  with FExBar do
  begin
    BeginUpdate;
    with ExGroups.Add('Salarios', True) do
    begin
      GroupIconIndex := 0;
      ModificaFecha;
    end;

    ExGroups.Add('Detalles');
    EndUpdate;
    ShowAnimate;
  end;
end;

procedure TFrmCatalogoSalarios.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  // Eliminar las ventanas historicas que pudieran haber sido abiertas
  i := 0;
  while i < Application.ComponentCount do
  begin
    if Application.Components[i].ClassType = TFrmHistorialSalario then
      Application.Components[i].Free
    else
      Inc(i);
  end;
end;

procedure TFrmCatalogoSalarios.FormShow(Sender: TObject);
begin
  Try
    inherited;

    inicializar;
    abrir;
    BtnSearch.Click;
  Except
    ;
  End;
end;

procedure TFrmCatalogoSalarios.BtnEditClick(Sender: TObject);
begin
  Try
    if (cdDatos.RecordCount > 0) and (cdDatos.FieldByName('Actual').AsInteger = 0) then
      raise InteligentException.CreateByCode(7, ['Salarios']);

    Try
      inherited;
    Except
      on e:Exception do
        raise InteligentException.CreateByCode(1, [e.Message]);
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoSalarios.BtnSearchClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFrmCatalogoSalarios.RegistroCambiado;
begin
  with FExBar do
  begin
    BeginUpdate;
    ExGroups.Items[1].Items.Clear;

    if cdDatos.RecordCount > 0 then
    begin
      // Poner etiquetas de opción de historial de salario
      TExMenuItem(ExGroups.Items[0].Items[1]).Caption := 'Ver Historial de ' + cdDatos.FieldByName('CodigoSalario').AsString;
      TExMenuItem(ExGroups.Items[0].Items[1]).Hint := 'Haga click aquí si desea ver el historial completo del salario ' + cdDatos.FieldByName('TituloSalario').AsString;
      TExMenuItem(ExGroups.Items[0].Items[1]).IconIndex := 14;

      // Poner etiquetas de opción de Modificación de Salario general
      TExMenuItem(ExGroups.Items[0].Items[2]).Caption := 'Generar Modificación de Salario ' + cdDatos.FieldByName('CodigoSalario').AsString;
      TExMenuItem(ExGroups.Items[0].Items[2]).Hint := 'Haga click aquí si desea generar la Modificación de Salario General para ' + cdDatos.FieldByName('TituloSalario').AsString;
      TExMenuItem(ExGroups.Items[0].Items[2]).IconIndex := 15;

      with ExGroups.Items[1] do
      begin
        AddLine(cdDatos.FieldByName('CodigoSalario').AsString, clBtnText, [fsBold], True);
        AddLine(cdDatos.FieldByName('TituloSalario').AsString, clBtnText, [], True);
        AddLine('Valor: ' + cdDatos.FieldByName('Simbolo').AsString + FloatToStrF(cdDatos.FieldByName('Salario').AsFloat, ffNumber,10 + cdDatos.FieldByName('Decimales').AsInteger, cdDatos.FieldByName('Decimales').AsInteger) + ' ' + cdDatos.FieldByName('TituloMoneda').AsString, clBtnText, [], True);
        AddLine('Aplicable para el día ' + DateToStr(FechaAplicacion.Date) + ' desde el día ' + cdDatos.FieldByName('FechaAplicacion').AsString, clBtnText, [], True);
        AddLine('',clBtnText,[],True);
        if cdDatos.FieldByName('Actual').AsInteger = 0 then
          AddLine('Este NO es el salario que maneja el sistema actualmente', clRed, [fsBold], True);
      end;
    end
    else
    begin
      TExMenuItem(ExGroups.Items[0].Items[1]).Caption := '';
      TExMenuItem(ExGroups.Items[0].Items[1]).Hint := '';
      TExMenuItem(ExGroups.Items[0].Items[1]).IconIndex := -1;
    end;

    EndUpdate;
    FExBar.Refresh;
  end;
end;

procedure TFrmCatalogoSalarios.cdDatosAfterScroll(DataSet: TDataSet);
begin
  inherited;

  RegistroCambiado;
end;

function TFrmCatalogoSalarios.createPopUp: TFrmDatosCatalogo;
begin
  result := TFrmDatosSalarios.Create(Self);
end;

procedure TFrmCatalogoSalarios.DBGridPrincipalCellFormating(Sender: TObject;
  ACol, ARow: Integer; Value: WideString; var TextColor: TColor;
  var FontStyle: TFontStyles; CellState: TCellState);
begin
  inherited;

  // Pintar de gris los registros que no estan disponibles para edición
  if cdDatos.FieldByName('Actual').AsInteger = 0 then
    TextColor := clGray;
end;

procedure TFrmCatalogoSalarios.inicializar;
begin
  keyField := 'idsalario';
  entityName := 'rhu_salario';
  codeField := 'codigosalario';
end;

procedure TFrmCatalogoSalarios.edtcodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmCatalogoSalarios.edtsalarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    Filtrar;
end;

procedure TFrmCatalogoSalarios.FechaAplicacionChange(Sender: TObject);
begin
  inherited;

  ModificaFecha;    // Informar de la modificación de la fecha
end;

procedure TFrmCatalogoSalarios.Filtrar;
Var
  Cuantos: integer;
  Parametros: TParamFilter;
  OldFormat: String;
begin
  Parametros := TParamFilter.Create;

  Parametros.Add('activo', 'si');

  if Trim(edtsalario.Text) <> '' then
    Parametros.Add('salario', Trim(edtsalario.Text) + '%');

  if Trim(edtcodigo.Text) <> '' then
    Parametros.Add('codigosalario', Trim(edtcodigo.Text) + '%');

  // Cargar por default la fecha de aplicación de salarios
  OldFormat := ShortDateFormat;
  ShortDateFormat := 'yyyy-mm-dd';
  Parametros.Add('fechaaplicacion',DateToStr(FechaAplicacion.Date));
  ShortDateFormat := OldFormat;

  CargarDatosFiltrados(cdDatos, Parametros.Campos, Parametros.Datos);
  cdDatos.Refresh;
  Parametros.Free;

  if cdDatos.RecordCount > 0 then
    DBGridPrincipal.Selected[0] := True;

  RegistroCambiado;
end;

end.
