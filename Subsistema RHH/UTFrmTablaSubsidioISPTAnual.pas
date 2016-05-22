unit UTFrmTablaSubsidioISPTAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UInteliDialog, ClientModuleUnit1, JvCombobox, JvExControls, JvLabel,
  StdCtrls, JvExStdCtrls, JvDBCombobox, ExtCtrls, Grids, DBGrids, DB, AdvTabSet,
  DBClient, StrUtils, DBCtrls, JvDBLookup, NxColumns, NxDBColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, AdvGlowButton,
  ComCtrls, ToolWin, Spin, NxEdit, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, MoneyEdit, AdvCombo,DateUtils, AdvEdit;

type
  TFrmTablaSubsidioISPTAnual = class(TForm)
    Panel1: TPanel;
    tsPeriodos: TAdvTabSet;
    dsTablaISPT: TDataSource;
    NextDBGrid1: TNextDBGrid;
    LimiteInferior: TNxDBNumberColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    Memo1: TMemo;
    ToolBar1: TToolBar;
    Btn_Agregar: TToolButton;
    Btn_Editar: TToolButton;
    Btn_Quitar: TToolButton;
    Btn_Refresh: TToolButton;
    ToolButton6: TToolButton;
    Panel_BotonesLinea: TPanel;
    Btn_AgregarLinea: TAdvGlowButton;
    Btn_AceptarLinea: TAdvGlowButton;
    Btn_CerrarLinea: TAdvGlowButton;
    Panel_DatosLinea: TPanel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    ToolButton1: TToolButton;
    Btn_NuevaTabla: TToolButton;
    ToolButton5: TToolButton;
    eLimiteInferior: TMoneyEdit;
    eSubsidio: TMoneyEdit;
    eAñoAplicacion: TAdvEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsPeriodosChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure cbTipoTablaClick(Sender: TObject);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure Btn_AgregarLineaClick(Sender: TObject);
    procedure Btn_CerrarLineaClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
  private
    cdTablaISPTAnual,
    cdHistorial: TClientDataSet;
    Llenando: Boolean;
    OrigCaption: String;
    FrmCaptura: TForm;
    Buscar: TClientDataSet;
    Actualizar: Boolean;
    procedure LeerDatos;
    procedure ValidaCaptura;
    procedure CrearVentana;
  public
    { Public declarations }
  end;

var
  FrmTablaSubsidioISPTAnual: TFrmTablaSubsidioISPTAnual;

implementation

{$R *.dfm}

procedure TFrmTablaSubsidioISPTAnual.cbTipoTablaClick(Sender: TObject);
var
  sFecha: String;
  Anio, Mes, Dia: Word;
  Cursor: TCursor;
begin
  if Not Llenando then
  begin
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      DecodeDate(cdHistorial.FieldByName('FechaAplicacion').AsDateTime, Anio, Mes, Dia);
      sFecha := IntToStr(Anio) + '-' + RightStr('0' + IntToStr(Mes), 2) + '-' + RightStr('0' + IntToStr(Dia), 2);
      try
        cdTablaISPTAnual.Close;
      except
        ;
      end;

      if Not CargarDatosFiltrados(cdTablaISPTAnual, 'FechaAplicacion', [sFecha]) then
        raise InteligentException.CreateByCode(6, ['Fecha de Aplicación',  sFecha]);
      cdTablaISPTAnual.Open;
    Finally
      Screen.Cursor := Cursor;
    End;
  end;
end;

procedure TFrmTablaSubsidioISPTAnual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    EliminarConjunto([cdTablaISPTAnual,  cdHistorial]);
    if Assigned(Buscar) then
      EliminarConjunto(Buscar);
  finally
    LiberarVentana(Self, Action);
  end;
end;



procedure TFrmTablaSubsidioISPTAnual.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  Actualizar := False;

  Try
    ClientModule1.ComponentColor(Self);
    ClientModule1.RastrearGrids(self);
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      cdTablaISPTAnual := TClientDataSet.Create(Self);
      cdHistorial := TClientDataSet.Create(Self);

      dsTablaISPT.DataSet := cdTablaISPTAnual;

      if Not CrearConjunto(cdHistorial, 'nom_subsidioisptanual', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Historial de la Tabla del subsidio del Impuesto Sobre el Producto del Trabajo (ISPT) anual']);
      cdHistorial.Open;

      if Not CrearConjunto(cdTablaISPTAnual, 'nom_subsidioisptanual', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tabla del subsidio del Impuesto Sobre el Producto del Trabajo (ISPT) anual']);
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

procedure TFrmTablaSubsidioISPTAnual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
     27: Close;
     46: Btn_Quitar.Click;
    116: Btn_Refresh.Click;
  end;
end;

procedure TFrmTablaSubsidioISPTAnual.FormShow(Sender: TObject);
begin
  OrigCaption := Self.Caption;

  LeerDatos;
end;

procedure TFrmTablaSubsidioISPTAnual.tsPeriodosChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  Cursor: TCursor;
begin
  if (Not Llenando) and (tsPeriodos.AdvTabs.Count > 0) then
  begin
    cdHistorial.RecNo := NewTab +1;

    if Not Llenando then
    begin
      Cursor := Screen.Cursor;
      Try
        Screen.Cursor := crAppStart;

       try
          cdTablaISPTAnual.Close;
        except
          ;
        end;

        if Not CargarDatosFiltrados(cdTablaISPTAnual, 'year', [cdHistorial.FieldByName('year').asstring]) then
          raise InteligentException.CreateByCode(6, ['Año de Aplicación', cdHistorial.FieldByName('year').asstring]);
        cdTablaISPTAnual.Open;
      Finally
        Screen.Cursor := Cursor;
      End;
    end;

    if NewTab = 0 then
      Caption := OrigCaption
    else
      Caption := OrigCaption + ' (SOLO LECTURA)';
  end;
end;

procedure TFrmTablaSubsidioISPTAnual.LeerDatos;
Const
  NomMes: Array[1..12] of String = ('ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC');
var
  Resultado: Boolean;
begin
  tsPeriodos.AdvTabs.Clear;

  // Llenar las cejas inferiores
  Try
    Llenando := True;
    while not cdHistorial.Eof do
    begin
      With tsPeriodos.AdvTabs.Add do
        if tsPeriodos.AdvTabs.Count = 1 then
          Caption := '* Actual (' + cdHistorial.FieldByName('year').AsString + ')'
        else
          Caption := cdHistorial.FieldByName('year').AsString;
      cdHistorial.Next;
    end;
  Finally
    Llenando := False;
    dsTablaISPT.dataset := cdTablaISPTAnual;
  End;

  tsPeriodos.OnChange(Nil, 0, Resultado);
end;

procedure TFrmTablaSubsidioISPTAnual.NextDBGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  Btn_EditarClick(Btn_Editar);
end;

procedure TFrmTablaSubsidioISPTAnual.Btn_AgregarClick(Sender: TObject);
var
  Resultado: Integer;
begin
  Try
    // Crear la ventana de captura de nuevos renglones en caso de ser necesario
    if Not Assigned(FrmCaptura) then
    begin
      if Not Assigned(Buscar) then
      begin
        Buscar := TClientDataSet.Create(Self);
        if Not CrearConjunto(Buscar, 'nom_subsidioisptanual', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Tabla del subsidio de I.S.P.T. anual']);
      end;

      CrearVentana;
      
      Panel_DatosLinea.Parent := FrmCaptura;
      Panel_BotonesLinea.Parent := FrmCaptura;

      Panel_DatosLinea.Visible := True;
      Panel_DatosLinea.Align := alClient;

      Panel_BotonesLinea.Visible := True;
      Panel_BotonesLinea.Align := alBottom;
    end;
    if FrmCaptura.Width < 340 then
      FrmCaptura.width := 340;
    FrmCaptura.height := 190;
    FrmCaptura.Position := poOwnerFormCenter;
    // Verificar si se debe editar la fecha de aplicación
    if CompareText(TWinControl(Sender).Name, 'Btn_NuevaTabla') = 0 then
    begin
      eAñoAplicacion.text := VarToStr(yearof(Now));
      eAñoAplicacion.Enabled := True;
    end
    else
    begin
      if cdTablaISPTAnual.RecordCount > 0 then
        eAñoAplicacion.text := VarToStr(yearof(cdTablaISPTAnual.FieldByName('FechaAplicacion').AsDateTime))
      else
        eAñoAplicacion.text := VarToStr(yearof(Now));
      eAñoAplicacion.Enabled := False;
    end;
    eLimiteInferior.Text := '0.01';
    eSubsidio.Text := '0';
    Btn_AgregarLinea.Visible := True;
    FrmCaptura.Caption := 'Captura datos de nuevo renglón de subsidio de tabla de I.S.P.T. anual';
    Try
      Resultado := FrmCaptura.ShowModal;
      if (Resultado <> mrAbort) and (Resultado <> mrCancel) and (Resultado <> mrNone) or (Actualizar) then
      begin
        //Verificar si se requiere actualizar el Historial de la tabla
        if CompareText(TWinControl(Sender).Name, 'Btn_NuevaTabla') = 0 then
        begin
          cdHistorial.Refresh;
          LeerDatos;
        end;

        if Actualizar then
          Btn_Refresh.Click;
      end;
    Finally
      Btn_AceptarLinea.ModalResult := mrNone;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmTablaSubsidioISPTAnual.Btn_AgregarLineaClick(Sender: TObject);
var dia,mes,año:Word;
  fecha:TDateTime;
begin
  Try
    ModalResult := mrNone;
    Btn_AceptarLinea.ModalResult := mrNone;
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      ValidaCaptura;
      if not AnsiContainsText(FrmCaptura.Caption,'Edicion') then
      begin
        // Si todo está bien, proceder a grabar los datos
        Buscar.close;
        If Not CargarDatosFiltrados(Buscar, 'IdSubsidioISPT', [-9]) then
          raise Exception.Create('No se ha podido acceder a la tabla de I.S.P.T.');
        Buscar.Open;
        Buscar.Append;
        Buscar.FieldByName('IdSubsidioISPT').AsInteger := 0;
        Buscar.FieldByName('IdUsuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
        Buscar.FieldByName('sIdUsuario').AsString := ClientModule1.cdUsuario.FieldByName('idusuario').AsString;
        dia := dayof(Now);
        mes := MonthOf(Now);
        año :=StrToInt(eAñoAplicacion.Text);
        Buscar.FieldByName('FechaAplicacion').AsDateTime := EncodeDate(año,mes,dia);
      end
      else
      begin
        Buscar.close;
        If Not CargarDatosFiltrados(Buscar, 'IdSubsidioISPT', [cdTablaISPTAnual.FieldByName('IdSubsidioISPT').AsInteger]) then
          raise Exception.Create('No se ha podido acceder a la tabla de I.S.P.T.');
        Buscar.Open;
        Buscar.Edit;
      end;
      Buscar.FieldValues['LimiteInferior'] := eLimiteInferior.Value;
      Buscar.FieldByName('subsidio').AsString := FloatToStr(eSubsidio.Value);

      Buscar.Post;
      Buscar.ApplyUpdates(-1);

      if CompareText(TWinControl(Sender).Name, 'Btn_AgregarLinea') = 0 then
      begin
        eLimiteInferior.Value := 0.01;
        eSubsidio.Value := 0;
        eLimiteInferior.SetFocus;
      end;

      Actualizar := True;
      ModalResult := mrOk; 
      Btn_AceptarLinea.ModalResult := mrOk;
      if (ModalResult = mrOk) and (CompareText(TWinControl(Sender).Name, 'Btn_AgregarLinea') <> 0) then
        FrmCaptura.Close;

    Finally
      Screen.Cursor := Cursor;
    End;


  Except
    on e:InteligentException do
      InteliDialog.ShowModal('Error de captura', e.message, mtInformation, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmTablaSubsidioISPTAnual.Btn_CerrarLineaClick(Sender: TObject);
begin
  if Assigned(FrmCaptura) then
    FrmCaptura.Close;
end;

procedure TFrmTablaSubsidioISPTAnual.Btn_EditarClick(Sender: TObject);
Var
  i,Resultado: integer;
begin
  try

    if (cdTablaISPTAnual.State <> dsBrowse) or (cdTablaISPTAnual.RecordCount = 0) then
      raise InteligentException.CreateByCode(29,['No hay Datos, Pruebe Insertando un nuevo Registro']);

      
    if AnsiContainsText(SELF.Caption,'LECTURA') then
      raise inteligentexception.Create('Estos registros son de sólo lectura.');

    CrearVentana;
    if FrmCaptura.width < 247 then
      FrmCaptura.width := 247;
    FrmCaptura.height := 190;

    FrmCaptura.Position := poOwnerFormCenter;

    Panel_DatosLinea.Parent := FrmCaptura;
    Panel_BotonesLinea.Parent := FrmCaptura;

    Panel_DatosLinea.Visible := True;
    Panel_DatosLinea.Align := alClient;

    Panel_BotonesLinea.Visible := True;
    Panel_BotonesLinea.Align := alBottom;

    // Verificar si se debe editar la fecha de aplicación
    if CompareText(TWinControl(Sender).Name, 'Btn_NuevaTabla') = 0 then
    begin
      eañoAplicacion.text := VarToStr(yearof(Now));
      eañoAplicacion.Enabled := True;
    end
    else
    begin
      eañoAplicacion.text := cdHistorial.FieldByName('year').AsString;
      eañoAplicacion.Enabled := False;
    end;

    eLimiteInferior.Text := cdTablaISPTAnual.FieldByName('LimiteInferior').AsString;
    eSubsidio.Text := cdTablaISPTAnual.FieldByName('subsidio').AsString;
    FrmCaptura.Caption := 'Edicion de  datos de tabla de subsidio de I.S.P.T. anual';

    if Not Assigned(Buscar) then
    begin
      Buscar := TClientDataSet.Create(Self);
      if Not CrearConjunto(Buscar, 'nom_subsidioisptanual', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Tabla del I.S.P.T.']);
    end;
    Btn_AgregarLinea.Visible := False;      
    Try
      Resultado := FrmCaptura.ShowModal;
      if (Resultado <> mrAbort) and (Resultado <> mrCancel) then
      begin
        // Verificar si se requiere actualizar el Historial de la tabla
        if CompareText(TWinControl(Sender).Name, 'Btn_NuevaTabla') = 0 then
        begin
          cdHistorial.Refresh;
          LeerDatos;
        end;

        if Actualizar then
          Btn_Refresh.Click;
      end;
    Finally
      Btn_AceptarLinea.ModalResult := mrNone;
    End;    

  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);

    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title,e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al Administrador del sistema:'+ #10 + #10 + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmTablaSubsidioISPTAnual.Btn_QuitarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  // Eliminar el registro solicitado
  Try
    if cdTablaISPTAnual.RecordCount <= 0 then
      raise Exception.Create('No existen registros que eliminar');
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not Assigned(Buscar) then
      begin
        Buscar := TClientDataSet.Create(Self);
        if Not CrearConjunto(Buscar, 'nom_subsidioisptanual', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Tabla de subsidio I.S.P.T. anual']);
      end;

      Buscar.Close;
      If Not CargarDatosFiltrados(Buscar, 'IdSubsidioISPT', [cdTablaISPTAnual.FieldByName('IdSubsidioISPT').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Tabla I.S.P.T.', 'IdSubsidioISPT',  cdTablaISPTAnual.FieldByName('IdTablaISPT').AsString]);
      Buscar.Open;
    Finally
      Screen.Cursor := Cursor;
    End;

    if (Buscar.RecordCount = 1) and (InteliDialog.ShowModal('Eliminar Línea de Tabla de subsidio de I.S.P.T. anual', '¿Está seguro que desea eliminar está línea de la tabla de subsidio del Impuesto Sobre el Producto del Trabajo anual?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      Buscar.Delete;
      Buscar.ApplyUpdates(-1);

      cdHistorial.Refresh;
      LeerDatos;
    end;
  Except
    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmTablaSubsidioISPTAnual.Btn_RefreshClick(Sender: TObject);
begin
  try
    cdHistorial.Close;
    CargarDatosFiltrados(cdHistorial,'IdTablaISPT',[-1]);
  finally
    cdhistorial.Open; 
  end;   
  LeerDatos;
end;

procedure TFrmTablaSubsidioISPTAnual.ValidaCaptura;
begin
  Try
    if Length(Trim(eAñoAplicacion.Text)) = 0 then
    begin
      eAñoAplicacion.SetFocus;
      raise Exception.Create('El valor para el Año de aplicación no puede estar vacío');

    end;

    // Primero verificar que el límite inferior no sea menor o igual a cero
    if eLimiteInferior.Value <= 0 then
    begin
      eLimiteInferior.SetFocus;
      raise Exception.Create('El valor para el Límite Inferior no puede ser menor a 0.01');
    end;

    //que no se duplique limites inferiores
    if Not CargarDatosFiltrados(Buscar, 'year,LimiteInferior', [eAñoAplicacion.text, eLimiteInferior.Value]) then
    begin
      eLimiteInferior.SetFocus;
      raise InteligentException.CreateByCode(5, ['Tabla del I.S.P.T.']);
    end;

    if not AnsiContainsText(FrmCaptura.Caption,'Edicion') then
      if CuantosRegistros(Buscar) > 0 then
      begin
        eLimiteInferior.SetFocus;
        raise InteligentException.CreateByCode(8, ['El valor para el Límite Inferior: ' + eLimiteInferior.Text + ' ya existe en la tabla para este año.']);
      end;

  Except
    Raise;
  End;
end;

procedure TFrmTablaSubsidioISPTAnual.CrearVentana;
begin
  FrmCaptura := TForm.Create(Self);
  Btn_AceptarLinea.ModalResult := mrNone;
  FrmCaptura.ModalResult := mrNone;
  actualizar := False;

end;


end.
