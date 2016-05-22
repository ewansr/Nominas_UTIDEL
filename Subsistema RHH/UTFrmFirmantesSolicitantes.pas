unit UTFrmFirmantesSolicitantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractConnection, ZConnection, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, UControlExcepciones,
  UInteliDialog, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, UTFrmFirmantesSolicitantesUpt, DBClient,
  ClientModuleUnit1, UTFrmFirmantesExcepciones, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter;

type
  TFrmFirmantesSolicitantes = class(TForm)
    GridAutorizacion: TDBGrid;
    GridCargo: TDBGrid;
    dsAutorizaciones: TDataSource;
    dsAutorizacionesxCargo: TDataSource;
    Panel1: TPanel;
    lblAplica: TLabel;
    cbModo: TComboBox;
    Panel2: TPanel;
    btn_Nuevo: TcxButton;
    btn_Editar: TcxButton;
    btn_Borrar: TcxButton;
    cdAutorizaciones: TClientDataSet;
    cdCargos: TClientDataSet;
    cdPersonal: TClientDataSet;
    cdAutorizacionesxCargoUpt: TClientDataSet;
    cdAutorizacionesxCargo: TClientDataSet;
    dsCargo: TDataSource;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    pmExcepcionPersonal: TPopupMenu;
    AgregarExcepcion1: TMenuItem;
    btn_AgregarEmpleado: TcxButton;
    btn_QuitarEmpleado: TcxButton;
    Panel3: TPanel;
    procedure cbModoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_NuevoClick(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
    procedure btn_BorrarClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure cdAutorizacionesAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridCargoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_AgregarEmpleadoClick(Sender: TObject);
    procedure btn_QuitarEmpleadoClick(Sender: TObject);
    procedure cdAutorizacionesxCargoUptBeforePost(DataSet: TDataSet);
  private
    function VerificarUpdate(Id: Integer; Codigo: String): Boolean;
    function LlamarVentanaUpdate(Cual: TCualMovimiento):Boolean;
  public
    { Public declarations }
  end;

var
  FrmFirmantesSolicitantes: TFrmFirmantesSolicitantes;

implementation

{$R *.dfm}

const
  Modos: Array[0..2] of String = ('PLAZAS', 'COMPRAS', 'SALIDAS');

procedure TFrmFirmantesSolicitantes.btn_AgregarEmpleadoClick(Sender: TObject);
begin
  try
    if not CdAutorizaciones.Active then
      raise InteligentException.CreateByCode(26,['Aplica Para']);

    if cdAutorizaciones.RecordCount < 1  then
      raise InteligentException.CreateByCode(26,['Aplica Para']);

    if VerificarUpdate(-1, '*') then
      LlamarVentanaUpdate(vuAgregarEmpleado);
  except
    on e:exception do
    begin
      LevantarExcepcion(e);
      cbModo.SetFocus;
    end;
  end;
end;

procedure TFrmFirmantesSolicitantes.btn_BorrarClick(Sender: TObject);
Var
  Resultado : Boolean;
begin
  try
    Resultado := False;
    if not CdAutorizaciones.Active then
      raise InteligentException.CreateByCode(26,['Aplica Para']);

    if cdAutorizacionesxCargo.RecordCount < 1  then
      raise InteligentException.CreateByCode(26,['Autorizacion por Puesto']);

    //Pregunta al usuario si desea eliminar el registro de Cancelación de Autorizaciones para Empleado
    if (CdAutorizacionesxCargo.FieldByName('IdPersonal').AsInteger <> 0) And (CdAutorizacionesxCargo.FieldByName('Modo').AsString = 'Quitar')   then
      if InteliDialog.ShowModal('Eliminar registro de Autorizaciones por Puesto', 'Está a punto de eliminar el registro de Cancelación de Autorizaciones para Empleado:' + #10 + #10 +
                                'Código: ' + cdAutorizacionesxCargo.FieldByName('Codigo').AsString + #10 +
                                'Nombre Empleado: ' + cdAutorizacionesxCargo.FieldByName('NombreCompleto').AsString + #10 + #10 +
                                '¿Está seguro que desea eliminarlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if EliminarRegistro(cdAutorizacionesxCargo, [cdAutorizacionesxCargo.FieldByName('IdAutorizacionesxCargo').AsInteger]) = 1 then
          Resultado := True;
      end;

    //Pregunta al usuario si desea eliminar el registro de Autorizaciones para Empleado
    if (CdAutorizacionesxCargo.FieldByName('IdPersonal').AsInteger <> 0) And (CdAutorizacionesxCargo.FieldByName('Modo').AsString = 'Agregar') And (resultado = False)   then
      if InteliDialog.ShowModal('Eliminar registro de Autorizaciones por Puesto', 'Está a punto de eliminar el registro de Autorizaciones para Empleado:' + #10 + #10 +
                                'Código: ' + cdAutorizacionesxCargo.FieldByName('Codigo').AsString + #10 +
                                'Nombre Empleado: ' + cdAutorizacionesxCargo.FieldByName('NombreCompleto').AsString + #10 + #10 +
                                '¿Está seguro que desea eliminarlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if EliminarRegistro(cdAutorizacionesxCargo, [cdAutorizacionesxCargo.FieldByName('IdAutorizacionesxCargo').AsInteger]) = 1 then
          Resultado := True;
      end;

    //Pregunta al usuario si desea eliminar el registro de Autorizaciones por Puesto de Trabajo
    if (CdAutorizacionesxCargo.FieldByName('IdCargo').AsInteger <> 0) And (resultado = False)  then
      if InteliDialog.ShowModal('Eliminar registro de Autorizaciones por Puesto', 'Está a punto de eliminar el registro de Autorizaciones por Puesto de Trabajo:' + #10 + #10 +
                                'Código: ' + cdAutorizacionesxCargo.FieldByName('Codigo').AsString + #10 +
                                'Puesto de Trabajo: ' + cdAutorizacionesxCargo.FieldByName('CodigoCargo').AsString + ' - ' + cdAutorizacionesxCargo.FieldByName('TituloCargo').AsString + #10 + #10 +
                                '¿Está seguro que desea eliminarlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if EliminarRegistro(cdAutorizacionesxCargo, [cdAutorizacionesxCargo.FieldByName('IdAutorizacionesxCargo').AsInteger]) = 1 then
          Resultado := True;
      end;

    // Eliminar el registro si el resultado si el usuario lo confirma
    if Resultado = True then
      cdAutorizacionesxCargo.Refresh;

  except
    on e:exception do
    begin
      LevantarExcepcion(e);
      cbModo.SetFocus;
    end;
  end;
end;


procedure TFrmFirmantesSolicitantes.btn_CancelarClick(Sender: TObject);
begin
  close;
end;
procedure TFrmFirmantesSolicitantes.btn_EditarClick(Sender: TObject);
begin
  try
    if cdAutorizacionesxCargo.RecordCount < 1  then
      raise InteligentException.CreateByCode(26,['Autorizacion por cargo :']);

    if VerificarUpdate(cdAutorizacionesxCargo.FieldByName('IdAutorizacionesxCargo').AsInteger, cdAutorizacionesxCargo.FieldByName('Codigo').AsString) then
    begin
      if Not cdAutorizacionesxCargo.FieldByName('IdCargo').IsNull then
        LlamarVentanaUpdate(vuEditarCargo)
      else
        if AnsiCompareText(cdAutorizacionesxCargo.FieldByName('Modo').AsString, 'Agregar') = 0 then
          LlamarVentanaUpdate(vuEditarAgregarEmpleado)
        else
          LlamarVentanaUpdate(vuEditarQuitarEmpleado);
    end;
  except
    on e:exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmFirmantesSolicitantes.btn_NuevoClick(Sender: TObject);
begin
  try
    if not CdAutorizaciones.Active then
      raise InteligentException.CreateByCode(26,['Aplica Para']);

    if cdAutorizaciones.RecordCount < 1  then
      raise InteligentException.CreateByCode(26,['Aplica Para']);

    if VerificarUpdate(-1, '*') then
      LlamarVentanaUpdate(vuAgregarCargo);
  except
    on e:exception do
    begin
      LevantarExcepcion(e);
      cbModo.SetFocus;
    end;
  end;
end;

procedure TFrmFirmantesSolicitantes.btn_QuitarEmpleadoClick(Sender: TObject);
begin
  try
    if not CdAutorizaciones.Active then
      raise InteligentException.CreateByCode(26,['Aplica Para']);

    if cdAutorizaciones.RecordCount < 1  then
      raise InteligentException.CreateByCode(26,['Aplica Para']);

    if VerificarUpdate(-1, '*') then
      LlamarVentanaUpdate(vuQuitarEmpleado);
  except
    on e:exception do
    begin
      LevantarExcepcion(e);
      cbModo.SetFocus;
    end;
  end;
end;

procedure TFrmFirmantesSolicitantes.cbModoChange(Sender: TObject);
begin
  Try
    cdAutorizaciones.Close;
    if not CargarDatosFiltrados(cdAutorizaciones, 'AplicaFirma', [Modos[cbModo.ItemIndex]]) then
      raise InteligentException.CreateByCode(6, ['Autorizaciones', Modos[cbModo.ItemIndex], 'AplicaFirma']);
    cdAutorizaciones.Open;
  Except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure TFrmFirmantesSolicitantes.cdAutorizacionesAfterScroll(
  DataSet: TDataSet);
begin
  Try
    if Not CargarDatosFiltrados(cdAutorizacionesxCargo, 'IdAutorizaciones', [cdAutorizaciones.FieldByName('IdAutorizaciones').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Autorizaciones por Puesto', cdAutorizaciones.FieldByName('IdAutorizaciones').AsInteger, 'Código Autorizacion']);

    if cdAutorizacionesxCargo.Active then
      cdAutorizacionesxCargo.Refresh
    else
      cdAutorizacionesxCargo.Open;
  Except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure TFrmFirmantesSolicitantes.cdAutorizacionesxCargoUptBeforePost(
  DataSet: TDataSet);
begin
  ShowMessage('Before Post Rangel');
end;

procedure TFrmFirmantesSolicitantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
end;

procedure TFrmFirmantesSolicitantes.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas(Self);

  Try
    if Not CrearConjunto(cdAutorizaciones, 'nuc_autorizaciones', ccCatalog) then
      raise EInteliAbort.CreateByCode(5, ['Tipos de Autorización']);

    if Not CrearConjunto(cdAutorizacionesxCargo, 'nuc_autorizacionesxcargo', ccCatalog) then
      raise EInteliAbort.CreateByCode(5, ['Tipo de Autorizaciones x Puesto']);
  Except
    on e:Exception do
    begin
      LevantarExcepcion(e);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmFirmantesSolicitantes.GridCargoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Sender as TDBGrid).Datasource.DataSet.FieldByName('IdCargo').IsNull then
  begin
    if AnsiCompareText((Sender as TDBGrid).Datasource.DataSet.FieldByName('Modo').AsString, 'Quitar') = 0 then
      (Sender as TDBGrid).Canvas.Font.Color := clRed
    else
      (Sender as TDBGrid).Canvas.Font.Color := clLime;
  end
  else
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

function TFrmFirmantesSolicitantes.VerificarUpdate(Id: Integer; Codigo: String): Boolean;
var
  Cursor: TCursor;
begin
  // Si indice vale -1 entonces se debe agregar un nuevo registro
  // de lo contrario, se deberá seleccionar el Id. del registro
  // que indique el valor de Indice
  Try
    Result := False;
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Verificar si ya se creo el objeto del dataset
      if cdAutorizacionesxCargoUpt.ProviderName = '' then
        if not CrearConjunto(cdAutorizacionesxCargoUpt, 'nuc_autorizacionesxcargo', ccUpdate) then
            raise InteligentException.CreateByCode(5, ['Autorizaciones por Puesto']);

      cdAutorizacionesxCargoUpt.Close;

      if Codigo = '*' then
      begin
        // Se trata de una adición de registro
        if Not CargarDatosFiltrados(cdAutorizacionesxCargoUpt, 'IdAutorizacionesxCargo', [-9]) then
          raise InteligentException.CreateByCode(6, ['Autorizaciones por Puesto', '*', 'Id. AutorizacionesxCargo']);

        cdAutorizacionesxCargoUpt.Open;
        cdAutorizacionesxCargoUpt.Append;
      end
      else
      begin
        // Se trata de una edición de registro
        if Not CargarDatosFiltrados(cdAutorizacionesxCargoUpt, 'IdAutorizacionesxCargo', [Id]) then
          raise InteligentException.CreateByCode(6, ['Autorizaciones por Puesto', Codigo, 'Código Autorizaciones por Cargo']);

        // Se deberá verificar que el Indice sea correcto
        cdAutorizacionesxCargoUpt.Open;

        if cdAutorizacionesxCargoUpt.RecordCount = 0 then
          raise InteligentException.CreateByCode(13, [Codigo, 'Autorizaciones por Puesto']);

        cdAutorizacionesxCargoUpt.Edit;
      end;

      Result := True;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    On e:Exception do
      LevantarExcepcion(e);
  End;
end;

Function TFrmFirmantesSolicitantes.LlamarVentanaUpdate(Cual: TCualMovimiento):Boolean;
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    // verificar si es una nueva autorizacion para un cargo o para  un personal
    if (Cual = vuAgregarCargo) or (Cual = vuEditarCargo) then
    begin
      // Verificar si los datos de cargos ya han sido leidos
      if cdCargos.ProviderName = '' then
        if not CrearConjunto(cdCargos, 'nuc_cargo', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Puestos']);

      if Not cdCargos.Active then
        cdCargos.Open;
    end
    else
    begin
      // Verificar si los datos de personal ya han sido leidos
      if cdPersonal.ProviderName = '' then
        if not CrearConjunto(cdPersonal, 'nuc_personal', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal']);

      if Not cdPersonal.Active then
        cdPersonal.Open;
    end;
  Finally
    Screen.Cursor := Cursor;
  End;

  // Llamar aqui la ventana Upt
  Application.CreateForm(TFrmFirmantesSolicitantesUpt, FrmFirmantesSolicitantesUpt);

  FrmFirmantesSolicitantesUpt.dsAutorizacionesxCargoUpt.DataSet := cdAutorizacionesxCargoUpt;
  FrmFirmantesSolicitantesUpt.IdAutorizaciones := cdAutorizaciones.FieldByName('IdAutorizaciones').AsInteger;
  FrmFirmantesSolicitantesUpt.txtAplicaPara.Caption := cdAutorizaciones.FieldByName('AplicaFirma').AsString;
  FrmFirmantesSolicitantesUpt.txtTipo.Caption := cdAutorizaciones.FieldByName('TipoFirma').AsString;

  if (Cual = vuAgregarCargo) or (Cual = vuEditarCargo) then
    FrmFirmantesSolicitantesUpt.dsCargos.DataSet := cdCargos
  else
    FrmFirmantesSolicitantesUpt.dsPersonal.DataSet := cdPersonal;

  FrmFirmantesSolicitantesUpt.Cual := Cual;
  FrmFirmantesSolicitantesUpt.ShowModal;

  // se verifica  si la operacion  fue  exitosa, si es verdadero refresca la tabla
  if FrmFirmantesSolicitantesUpt.ModalResult = mrOK then
  begin
    dsAutorizacionesxCargo.DataSet.Refresh;
    Result := True;
  end;
end;

end.
