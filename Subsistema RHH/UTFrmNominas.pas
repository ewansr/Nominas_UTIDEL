unit UTFrmNominas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, DBCtrls,
  JvExControls, JvLabel, ExtCtrls, StdCtrls, NxScrollControl, StrUtils,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxDBColumns, NxColumns, ComCtrls,
  ToolWin, AdvGlowButton, Mask, JvExMask, JvToolEdit, JvMaskEdit, DateUtils,
  JvCheckedMaskEdit, JvDatePickerEdit, MoneyEdit;

type
  TFrmNominas = class(TForm)
    cdTipoNomina: TClientDataSet;
    cdNomina: TClientDataSet;
    dsTipoNomina: TDataSource;
    dsNomina: TDataSource;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    cbTipos: TComboBox;
    lblTipoNomina: TJvLabel;
    lblLeyendaTipo: TJvLabel;
    DBGridNominas: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    ToolBar1: TToolBar;
    Btn_Agregar: TToolButton;
    Btn_Editar: TToolButton;
    Btn_Quitar: TToolButton;
    ToolButton4: TToolButton;
    Btn_Refresh: TToolButton;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    Panel_Datos: TPanel;
    Panel_Botones: TPanel;
    Btn_AgregarLinea: TAdvGlowButton;
    Btn_AceptarLinea: TAdvGlowButton;
    Btn_CerrarLinea: TAdvGlowButton;
    eDias: TMoneyEdit;
    JvLabel2: TJvLabel;
    eTitulo: TEdit;
    JvLabel3: TJvLabel;
    eInicio: TJvDatePickerEdit;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    eTermino: TJvDatePickerEdit;
    cdPeriodos: TClientDataSet;
    JvLabel6: TJvLabel;
    dsPeriodos: TDataSource;
    cbPeriodos: TDBLookupComboBox;
    dsNominaUpdate: TDataSource;
    CheckBox1: TCheckBox;
    JvLabel7: TJvLabel;
    cbGuardia: TComboBox;
    cdGuardia: TClientDataSet;
    CheckBox2: TCheckBox;
    Aplicacion_Conceptos: TJvDatePickerEdit;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    Aplicacion_ISPT: TJvDatePickerEdit;
    JvLabel11: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdTipoNominaAfterOpen(DataSet: TDataSet);
    procedure cbTiposChange(Sender: TObject);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure PeriodoChange(Sender: TObject);
    procedure Btn_AgregarLineaClick(Sender: TObject);
    procedure cbGuardiaChange(Sender: TObject);
    procedure cdPeriodosAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure eTerminoChange(Sender: TObject);
    procedure DBGridNominasDblClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure cdTipoNominaAfterScroll(DataSet: TDataSet);
  private
    FrmCaptura: TForm;
    cdNominaUpdate: TClientDataSet;
    CambioAutomatico: Boolean;
    procedure LlenarCombo;
    procedure CrearUpdate;
    procedure FrmCapturaOnClose(Sender: TObject; var Action: TCloseAction);
    function AjustarFechaFinal(Fecha: TDate): TDate;
  public
    { Public declarations }
  end;

var
  FrmNominas: TFrmNominas;

implementation

{$R *.dfm}

procedure TFrmNominas.Btn_AgregarClick(Sender: TObject);
var
  sFecha: String;
  Anio, Mes1, Mes2, Dia: Word;
begin
  CrearUpdate;

  if TWinControl(Sender).Name = 'Btn_Agregar' then
  begin
    if (Not cdPeriodos.Active) or ((cdPeriodos.Active) and (cdPeriodos.RecordCount > 0) and (cdPeriodos.FieldByName('IdGuardia').AsInteger <> cdGuardia.FieldByName('IdGuardia').AsInteger)) then
    begin
      cdPeriodos.Close;
      CargarDatosFiltrados(cdPeriodos, 'Cuales,IdGuardia', ['Libres', cdGuardia.FieldByName('IdGuardia').AsInteger]);
      cdPeriodos.Open;
    end;

    Frmcaptura.Caption := 'Captura de nuevo registro de Nómina';
    cbPeriodos.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0;
    //CheckBox1.Checked := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
    eTitulo.Text := '';
    eInicio.Date := Date;
    eTermino.Date := Date + cdTipoNomina.FieldByName('DiasTrabajados').AsInteger -1;
    if cdTipoNomina.FieldByName('Ajustar').AsString = 'Si' then
      eTermino.Date := AjustarFechaFinal(eTermino.Date)
    else
    begin
      eDias.Value := cdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
    end;

    Btn_AgregarLinea.Visible := True;

    cdNominaUpdate.Close;
    if Not CargarDatosFiltrados(cdNominaUpdate, 'IdNomina', [-9]) then
      raise InteligentException.CreateByCode(6, ['Nómina', -9, 'Id. Nómina']);
    cdNominaUpdate.Open;

    cdNominaUpdate.Append;
    cdNominaUpdate.FieldByName('IdNomina').AsInteger := 0;
  end
  else
  begin
    Frmcaptura.Caption := 'Modificación de registro de Nómina';
    cbPeriodos.Enabled := cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0;
    CheckBox1.Checked := cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0;
    eTitulo.Text := cdNomina.FieldByName('Titulo').AsString;
    eInicio.Date := cdNomina.FieldByName('FechaNomina').AsDateTime;
    eTermino.Date := cdNomina.FieldByName('FechaNomina').AsDateTime + cdNomina.FieldByName('Dias').AsInteger -1;
    eDias.Value := cdNomina.FieldByName('Dias').AsInteger;
    Btn_AgregarLinea.Visible := False;

    // Verificar si el registro todavía existe físicamente
    if Not VerificaExiste(cdNominaUpdate, 'IdNomina', cdNomina.FieldByName('IdNomina').AsInteger) then
      raise InteligentException.CreateByCode(13, [cdNomina.FieldByName('Titulo').AsString, 'Nóminas']);

    if Not CargarDatosFiltrados(cdNominaUpdate, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'IdNomina']);

    cdNominaUpdate.Open;
    if cdNominaUpdate.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdNomina.FieldByName('Titulo').AsString, 'Nóminas']);

    cdNominaUpdate.Edit;
  end;

  Try
    FrmCaptura.ShowModal;
  Finally
    if cdNominaUpdate.State in [dsEdit, dsInsert] then
      cdNominaUpdate.Cancel;
  End;
end;

procedure TFrmNominas.Btn_AgregarLineaClick(Sender: TObject);
var
  Cursor: TCursor;
  Anio, Mes, Dia: Word;
  sFecha: String;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Verificar los datos capturados
      if Trim(eTitulo.Text) = '' then
      begin
        eTitulo.SetFocus;
        raise InteligentException.CreateByCode(18, ['Título']);
      end;

      if eDias.Value <= 0 then
      begin
        eDias.SetFocus;
        raise InteligentException.CreateByCode(18, ['Días']);
      end;

      if eTermino.Date < eInicio.Date then
      begin
        eInicio.SetFocus;
        raise InteligentException.CreateByCode(18, ['Inicio']);
      end;

      DecodeDate(eInicio.Date, Anio, Mes, Dia);
      sFecha := IntToStr(Anio) + '-' + RightStr('0' + IntToStr(Mes), 2) + '-' + RightStr('0' + IntToStr(Dia), 2);

      Try
        cdNominaUpdate.FieldByName('IdTipoNomina').AsInteger := cdTipoNomina.FieldByName('IdTipoNomina').AsInteger;
        cdNominaUpdate.FieldByName('Titulo').AsString := eTitulo.Text;
        cdNominaUpdate.FieldByName('FechaNomina').AsDateTime := eInicio.Date;
        cdNominaUpdate.FieldByName('Dias').AsInteger := Trunc(eDias.Value);
        cdNominaUpdate.FieldByName('Estado').AsString := 'ABIERTA';
        cdNominaUpdate.FieldByName('AplicacionConceptos').AsDateTime := Aplicacion_Conceptos.Date;
        cdNominaUpdate.FieldByName('AplicacionISPT').AsDateTime := Aplicacion_ISPT.Date;
        cdNominaUpdate.Post;
        cdNominaUpdate.ApplyUpdates(-1);

        FrmCaptura.Close;

        cdNomina.Close;
        cdNomina.Open;

        if (cdPeriodos.Active) and (cdPeriodos.RecordCount > 0) then
          cdPeriodos.Refresh;
      Except
        on e:InteligentWarning do
          ;

        on e:InteligentException do
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

        on e:Exception do
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      End;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmNominas.Btn_QuitarClick(Sender: TObject);
begin
  CrearUpdate;

  // Eliminar el registro
  Try
    if Not VerificaExiste(cdNominaUpdate, 'IdNomina', cdNomina.FieldByName('IdNomina').AsInteger) then
      raise InteligentException.CreateByCode(13, [cdNomina.FieldByName('IdNomina').AsString, 'Nóminas']);
    if Not CargarDatosFiltrados(cdNominaUpdate, 'IdNomina', [cdNomina.FieldByName('IdNomina').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nómina', cdNomina.FieldByName('IdNomina').AsInteger, 'IdNomina']);

    cdNominaUpdate.Open;
    if cdNominaUpdate.RecordCount = 0 then
      raise InteligentException.CreateByCode(13, [cdNomina.FieldByName('Titulo').AsString, 'Nóminas']);

    if InteliDialog.ShowModal('Eliminar registro', '¿Está seguro que desea eliminar este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      cdNominaUpdate.Delete;
      cdNominaUpdate.ApplyUpdates(-1);
      cdNomina.Refresh;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmNominas.cbGuardiaChange(Sender: TObject);
begin
  if Not cdGuardia.ControlsDisabled then
  begin
    cdGuardia.RecNo := cbGuardia.ItemIndex +1;

    // Cargar los datos de las nominas correspondientes a estos tipos
    cdNomina.Close;
    if Not CargarDatosFiltrados(cdNomina, 'IdTipoNomina,IdGuardia', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, cdGuardia.FieldByName('IdGuardia').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nominas', cdTipoNomina.FieldByName('IdTipoNomina').AsString + ' - ' + cdGuardia.FieldByName('IdGuardia').AsString, 'Id. TipoNomina - Id. Guardia']);

    cdNomina.Open;
  end;
end;

procedure TFrmNominas.cbTiposChange(Sender: TObject);
begin
  if cdTipoNomina.RecordCount > cbTipos.ItemIndex then
    cdTipoNomina.RecNo := cbTipos.ItemIndex + 1;
end;

procedure TFrmNominas.cdPeriodosAfterScroll(DataSet: TDataSet);
begin
  eInicio.Date := cdPeriodos.FieldByName('FechaInicio').AsDateTime;
  eTermino.Date := cdPeriodos.FieldByName('FechaTermino').AsDateTime;
end;

procedure TFrmNominas.cdTipoNominaAfterOpen(DataSet: TDataSet);
begin
  LlenarCombo;
end;

procedure TFrmNominas.cdTipoNominaAfterScroll(DataSet: TDataSet);
var
  Cursor: TCursor;
begin
  if cdTipoNomina.RecordCount = cbTipos.Items.Count then
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      lblTipoNomina.Caption := cdTipoNomina.FieldByName('Descripcion').AsString;
      if cdTipoNomina.FieldByName('DiasDescanso').AsInteger > 0 then
        lblLeyendaTipo.Caption := 'Periodo de ' + cdTipoNomina.FieldByName('DiasTrabajados').AsString + ' días Trabajados por ' + cdTipoNomina.FieldByName('DiasDescanso').AsString + ' días de Descanso'
      else
        lblLeyendaTipo.Caption := 'Periodo de ' + cdTipoNomina.FieldByName('DiasTrabajados').AsString + ' días';

      // Cargar los datos de las guardias de este tipo de nómina
      if Not CargarDatosFiltrados(cdGuardia, 'IdTipoNomina', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Guardias', cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, 'Id. Tipo Nómina']);

      if cdGuardia.Active then
        cdGuardia.Refresh
      else
        cdGuardia.Open;

      cdGuardia.DisableControls;
      Try
        cbGuardia.Items.Clear;
        while not cdGuardia.Eof do
        begin
          cbGuardia.Items.Add(cdGuardia.FieldByName('CodigoGuardia').AsString);

          cdGuardia.Next;
        end;
      Finally
        cbGuardia.Enabled := cbGuardia.Items.Count > 0;
        cdGuardia.EnableControls;

        if cbGuardia.Items.Count > 0 then
        begin
          cbGuardia.ItemIndex := 0;
          cbGuardia.OnChange(Nil);
        end
        else
        begin
          cdNomina.Close;
          CargarDatosFiltrados(cdNomina, 'IdTipoNomina', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]);
          cdNomina.Open;
        end;
      End;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmNominas.PeriodoChange(Sender: TObject);
begin
  // Actualizar la fecha de término del periodo de la nómina
  if Not CambioAutomatico then
  begin
    eTermino.Date := eInicio.Date + cdTipoNomina.FieldByName('DiasTrabajados').AsInteger;

    if cdTipoNomina.FieldByName('Ajustar').AsString = 'Si' then
      eTermino.Date := AjustarFechaFinal(eTermino.Date)
    else
      eTermino.Date := eInicio.Date + Trunc(eDias.Value - 1);
  end;
  CambioAutomatico := False;
end;

procedure TFrmNominas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto([cdTipoNomina, cdNomina, cdPeriodos]);

  if Assigned(cdNominaUpdate) then
    EliminarConjunto(cdNominaUpdate);

  LiberarVentana(Self, Action);
end;

procedure TFrmNominas.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  AccedeACoordenadas(Self);

  CambioAutomatico := False;

  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppstart;

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      if Not CrearConjunto(cdNomina, 'nom_nomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Nóminas']);

      if Not CrearConjunto(cdPeriodos, 'nom_periodosguardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Periodos Guardia']);

      if Not CrearConjunto(cdGuardia, 'nom_guardia', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Guardias']);

      cdTipoNomina.Open;

      // Crear la ventana de captura/edicion
      Try
        if Assigned(FrmCaptura) then
          FrmCaptura := Nil;

        FrmCaptura := TForm.Create(Self);
        FrmCaptura.Name := 'FrmCaptura_Nomina';
        FrmCaptura.OnClose := FrmCapturaOnClose;
        Panel_Datos.Parent := FrmCaptura;
        Panel_Botones.Parent := FrmCaptura;
        Panel_Datos.Align := alClient;
        Panel_Botones.Align := alBottom;

        AccedeACoordenadas(FrmCaptura);
      Except
        raise Exception.Create('No ha sido posible crear la ventana de Captura/Edición de datos debido a lo siguiente:');
      End;
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

procedure TFrmNominas.LlenarCombo;
begin
  lblTipoNomina.Caption := '';
  cbTipos.Items.Clear;
  cdTipoNomina.First;
  while not cdTipoNomina.Eof do
  begin
    cbTipos.Items.Add(cdTipoNomina.FieldByName('Titulo').AsString);

    cdTipoNomina.Next;
  end;

  if cbTipos.Items.Count > 0 then
  begin
    cbTipos.ItemIndex := 0;
    cbTipos.OnChange(Self);
  end;

  if cdTipoNomina.FieldByName('DiasDescanso').AsInteger = 0 then
  begin
    cdNomina.Close;
    if Not CargarDatosFiltrados(cdNomina, 'IdTipoNomina', [cdTipoNomina.FieldByName('IdTipoNomina').AsInteger]) then
      raise InteligentException.CreateByCode(6, ['Nominas', cdTipoNomina.FieldByName('IdTipoNomina').AsString, 'Id. TipoNomina']);
    cdNomina.Open;
  end;
end;

procedure TFrmNominas.FrmCapturaOnClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarVentana(FrmCaptura, Action);
  Action := caHide;
end;

procedure TFrmNominas.CheckBox1Click(Sender: TObject);
begin
  eTermino.Enabled := CheckBox1.Checked;
  eDias.Enabled := CheckBox1.Checked;
end;

procedure TFrmNominas.CrearUpdate;
begin
  if Not Assigned(cdNominaUpdate) then
  begin
    cdNominaUpdate := TClientDataSet.Create(Self);
    if Not CrearConjunto(cdNominaUpdate, 'nom_nomina', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Nómina']);

    dsNominaUpdate.DataSet := cdNominaUpdate;
  end;
end;

procedure TFrmNominas.DBGridNominasDblClick(Sender: TObject);
begin
  // Editar el registro
  if cdNomina.RecordCount > 0 then
    Btn_Editar.Click;
end;

procedure TFrmNominas.eTerminoChange(Sender: TObject);
begin
  // Al cambiar la fecha de terminación se deberá ajustar la cantidad de días
  CambioAutomatico := True;
  eDias.Value := 1 + eTermino.Date - eInicio.Date;
end;

function TFrmNominas.AjustarFechaFinal(Fecha: TDate): TDate;
var
  Anio, Mes1, Mes2, Dia: Word;
begin
  Result := Fecha;

  // Verificar si la fecha final se encuentra dentro del mismo mes
  DecodeDate(eInicio.Date, Anio, Mes1, Dia);
  DecodeDate(eTermino.Date, Anio, Mes2, Dia);

  if Mes2 > Mes1 then
    // Ajustar al último día del mes
    Result := IncDay(EncodeDate(Anio, Mes2, 1), -1)
  else
  begin
    DecodeDate(IncDay(eTermino.Date, 2), Anio, Mes2, Dia);
    if Mes2 > Mes1 then
      Result := IncDay(EncodeDate(Anio, Mes2, 1), -1);
  end;
end;

end.
