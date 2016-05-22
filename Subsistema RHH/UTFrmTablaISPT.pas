unit UTFrmTablaISPT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UInteliDialog, ClientModuleUnit1, JvCombobox, JvExControls, JvLabel,
  StdCtrls, JvExStdCtrls, JvDBCombobox, ExtCtrls, Grids, DBGrids, DB, AdvTabSet,
  DBClient, StrUtils, DBCtrls, JvDBLookup, NxColumns, NxDBColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, AdvGlowButton,
  ComCtrls, ToolWin, Spin, NxEdit, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, MoneyEdit, AdvCombo, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, frxClass, frxDBSet,
  rhh_genericclasses;

type
  TFrmTablaISPT = class(TForm)
    dsTipoTablaISR: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    tsPeriodos: TAdvTabSet;
    dsTablaISR: TDataSource;
    cdTipoTablaISR: TClientDataSet;
    cbTipoTabla: TDBLookupComboBox;
    NextDBGrid1: TNextDBGrid;
    LimiteInferior: TNxDBNumberColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBNumberColumn3: TNxDBNumberColumn;
    Memo1: TMemo;
    Panel_BotonesLinea: TPanel;
    Btn_AgregarLinea: TAdvGlowButton;
    Btn_AceptarLinea: TAdvGlowButton;
    Btn_CerrarLinea: TAdvGlowButton;
    Panel_DatosLinea: TPanel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    eFechaAplicacion: TJvDatePickerEdit;
    JvLabel5: TJvLabel;
    eLimiteInferior: TMoneyEdit;
    eCuotaFija: TMoneyEdit;
    ePSELI: TMoneyEdit;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    Btn_agregar: TdxBarLargeButton;
    Btn_editar: TdxBarLargeButton;
    Btn_quitar: TdxBarLargeButton;
    Btn_refresh: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    BtnImprimir: TdxBarLargeButton;
    FrxReporteISPT: TfrxReport;
    FrxISPT: TfrxDBDataset;
    FrxOrganizacion: TfrxDBDataset;
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
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure cdTipoTablaISRAfterOpen(DataSet: TDataSet);
    procedure cdTipoTablaISRAfterRefresh(DataSet: TDataSet);
    procedure BtnImprimirClick(Sender: TObject);
  private
    cdTablaISR,
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
  FrmTablaISPT: TFrmTablaISPT;

implementation

{$R *.dfm}

procedure TFrmTablaISPT.cbTipoTablaClick(Sender: TObject);
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
        cdTablaISR.Close;
      except
        ;
      end;

      if Not CargarDatosFiltrados(cdTablaISR, 'IdTipoTablaISPT,FechaAplicacion', [cdTipoTablaISR.FieldByName('IdTipoTablaISPT').AsInteger, sFecha]) then
        raise InteligentException.CreateByCode(6, ['Tipo de Tabla de ISPT/Fecha de Aplicación', cdTipoTablaISR.FieldByName('IdTipoTabla').AsString + '/' + sFecha]);
      cdTablaISR.Open;
    Finally
      Screen.Cursor := Cursor;
    End;
  end;
end;

procedure TFrmTablaISPT.cdTipoTablaISRAfterOpen(DataSet: TDataSet);
begin
  Btn_editar.Enabled := (cdTipoTablaISR.Active) and (cdTipoTablaISR.RecordCount > 0);
  Btn_quitar.Enabled := Btn_editar.Enabled;
end;

procedure TFrmTablaISPT.cdTipoTablaISRAfterRefresh(DataSet: TDataSet);
begin
  Btn_editar.Enabled := (cdTipoTablaISR.Active) and (cdTipoTablaISR.RecordCount > 0);
  Btn_quitar.Enabled := Btn_editar.Enabled;
end;

procedure TFrmTablaISPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    EliminarConjunto([cdTablaISR, cdTipoTablaISR, cdHistorial]);
    if Assigned(Buscar) then
      EliminarConjunto(Buscar);
  finally
    LiberarVentana(Self, Action);
  end;
end;



procedure TFrmTablaISPT.FormCreate(Sender: TObject);
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

      cdTablaISR := TClientDataSet.Create(Self);
      cdHistorial := TClientDataSet.Create(Self);

      dsTablaISR.DataSet := cdTablaISR;

      if Not CrearConjunto(cdTipoTablaISR, 'nom_tipotablaispt', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipo de Tablas del Impuesto Sobre el Producto del Trabajo (ISPT)']);
      cdTipoTablaISR.Open;
      cdTipoTablaISR.First;

      if cdTipoTablaISR.RecordCount > 0 then
        cbTipoTabla.KeyValue := cdTipoTablaISR.FieldByName('IdTipoTablaISPT').AsInteger;

      if Not CrearConjunto(cdHistorial, 'nom_tablaispt_historial', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Historial de la Tabla del Impuesto Sobre el Producto del Trabajo (ISPT)']);
      cdHistorial.Open;

      if Not CrearConjunto(cdTablaISR, 'nom_tablaispt', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tabla del Impuesto Sobre el Producto del Trabajo (ISPT)']);
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

procedure TFrmTablaISPT.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
     27: Close;
     46: Btn_Quitar.Click;
    116: Btn_Refresh.Click;
  end;
end;

procedure TFrmTablaISPT.FormShow(Sender: TObject);
begin
  OrigCaption := Self.Caption;

  LeerDatos;
end;

procedure TFrmTablaISPT.tsPeriodosChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  if (Not Llenando) and (tsPeriodos.AdvTabs.Count > 0) then
  begin
    cdHistorial.RecNo := NewTab +1;
    cbTipoTabla.OnClick(Sender);

    if NewTab = 0 then
      Caption := OrigCaption
    else
      Caption := OrigCaption + ' (SOLO LECTURA)';
  end;
end;

procedure TFrmTablaISPT.LeerDatos;
Const
  NomMes: Array[1..12] of String = ('ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC');
var
  Resultado: Boolean;
  sFecha: String;
begin
  tsPeriodos.AdvTabs.Clear;

  // Llenar las cejas inferiores
  Try
    Llenando := True;
    while not cdHistorial.Eof do
    begin
      sFecha := cdHistorial.FieldByName('FechaAplicacion').AsString;
      sFecha := Copy(sFecha,1,2) + '-' + NomMes[StrToInt(Copy(sFecha,4,2))] + '-' + Copy(sFecha,7,4);
      With tsPeriodos.AdvTabs.Add do
        if tsPeriodos.AdvTabs.Count = 1 then
          Caption := '* Actual (' + sFecha + ')'
        else
          Caption := sFecha;

      cdHistorial.Next;
    end;
  Finally
    Llenando := False;
    dstablaisr.dataset := cdTablaISR;
  End;

  tsPeriodos.OnChange(Nil, 0, Resultado);
end;

procedure TFrmTablaISPT.NextDBGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  Btn_EditarClick(Btn_Editar);
end;

procedure TFrmTablaISPT.BtnImprimirClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'ISPT.fr3';
      CompReporte := FrxReporteISPT;
      CompDataSetReporte := FrxISPT;

      LocalImprimeReporte(cdTablaISR, NextDBGrid1, 'Tabla ISR');
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmTablaISPT.Btn_AgregarClick(Sender: TObject);
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
        if Not CrearConjunto(Buscar, 'nom_tablaispt', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Tabla del I.S.P.T.']);
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
      
    // Verificar si se debe editar la fecha de aplicación
    if CompareText(TWinControl(Sender).Name, 'Btn_NuevaTabla') = 0 then
    begin
      eFechaAplicacion.Date := Now;
      eFechaAplicacion.Enabled := True;
    end
    else
    begin
      eFechaAplicacion.Date := cdHistorial.FieldByName('FechaAplicacion').AsDateTime;
      eFechaAplicacion.Enabled := False;
    end;
    eLimiteInferior.Text := '0';
    eCuotaFija.Text := '0';
    ePSELI.Text := '0'; 
    Btn_AgregarLinea.Visible := True;
    FrmCaptura.Caption := 'Captura datos de nuevo renglón de tabla de I.S.P.T.';
    Try
      Resultado := FrmCaptura.ShowModal;
      //if Resultado <> mrAbort then
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
      ;
    End;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmTablaISPT.Btn_AgregarLineaClick(Sender: TObject);
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
        If Not CargarDatosFiltrados(Buscar, 'IdTablaISPT', [-9]) then
          raise Exception.Create('No se ha podido acceder a la tabla de I.S.P.T.');
        Buscar.Open;      
        Buscar.Append;
        Buscar.FieldByName('IdTablaISPT').AsInteger := 0;
        Buscar.FieldByName('IdUsuario').AsInteger := 0;
        Buscar.FieldByName('sIdUsuario').AsString := '0';
        Buscar.FieldByName('FechaAplicacion').AsDateTime := eFechaAplicacion.Date;        
      end
      else
      begin  
        Buscar.close;
        If Not CargarDatosFiltrados(Buscar, 'IdTablaISPT', [cdTablaISR.FieldByName('IdTablaISPT').AsInteger]) then
          raise Exception.Create('No se ha podido acceder a la tabla de I.S.P.T.');
        Buscar.Open;      
        Buscar.Edit;      
      end;
      Buscar.FieldValues['LimiteInferior'] := eLimiteInferior.Value;
      //Buscar.FieldByName('LimiteInferior').AsString := FloatToStr(eLimiteInferior.Value);
      Buscar.FieldByName('CuotaFija').AsString := FloatToStr(eCuotaFija.Value);
      Buscar.FieldByName('PSELI').AsString := FloatToStr(ePSELI.Value);

      Buscar.Post;
      Buscar.ApplyUpdates(-1);

      if CompareText(TWinControl(Sender).Name, 'Btn_AgregarLinea') = 0 then
      begin
        eLimiteInferior.Value := 0.01;
        eCuotaFija.Value := 0;
        ePSELI.Value := 0;
        eLimiteInferior.SetFocus;
      end;

      Actualizar := True;
      ModalResult := mrOk; 
      Btn_AceptarLinea.ModalResult := mrOk;
     
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

procedure TFrmTablaISPT.Btn_CerrarLineaClick(Sender: TObject);
begin
  if Assigned(FrmCaptura) then
    FrmCaptura.Close;
end;

procedure TFrmTablaISPT.Btn_EditarClick(Sender: TObject);
Var
  i,Resultado: integer;
begin          
  try

    if (cdTablaISR.State <> dsBrowse) or (cdTablaISR.RecordCount = 0) then
      raise InteligentException.CreateByCode(29,['No hay Datos, Pruebe Insertando un nuevo Registro']);

      
    if AnsiContainsText(SELF.Caption,'LECTURA') then
      raise inteligentexception.Create('Estos registros son de sólo lectura.');

    CrearVentana;
    if FrmCaptura.width < 247 then
      FrmCaptura.width := 247;
    FrmCaptura.height := 190;
    Panel_DatosLinea.Parent := FrmCaptura;
    Panel_BotonesLinea.Parent := FrmCaptura;

    Panel_DatosLinea.Visible := True;
    Panel_DatosLinea.Align := alClient;

    Panel_BotonesLinea.Visible := True;
    Panel_BotonesLinea.Align := alBottom;

    // Verificar si se debe editar la fecha de aplicación
    if CompareText(TWinControl(Sender).Name, 'Btn_NuevaTabla') = 0 then
    begin
      eFechaAplicacion.Date := Now;
      eFechaAplicacion.Enabled := True;
    end
    else
    begin
      eFechaAplicacion.Date := cdHistorial.FieldByName('FechaAplicacion').AsDateTime;
      eFechaAplicacion.Enabled := False;
    end;

    eLimiteInferior.Text := cdTablaISR.FieldByName('LimiteInferior').AsString;
    eCuotaFija.Text := cdTablaISR.FieldByName('CuotaFija').AsString;
    ePSELI.Text := cdTablaISR.FieldByName('PSELI').AsString;    
    FrmCaptura.Caption := 'Edicion de  datos de tabla de I.S.P.T.';

    if Not Assigned(Buscar) then
    begin
      Buscar := TClientDataSet.Create(Self);
      if Not CrearConjunto(Buscar, 'nom_tablaispt', ccUpdate) then
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
      ;
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

procedure TFrmTablaISPT.Btn_QuitarClick(Sender: TObject);
var
  Anio, Mes, Dia: Word;
  sFecha: String;
  Cursor: TCursor;
begin
  // Eliminar el registro solicitado
  Try
    if cdTablaISR.RecordCount <= 0 then
      raise Exception.Create('No existen registros que eliminar');

    DecodeDate(cdTablaISR.FieldByName('FechaAplicacion').AsDateTime, Anio, Mes, Dia);
    sFecha := IntToStr(Anio) + '-' + RightStr('0' + IntToStr(Mes), 2) + '-' + RightStr('0' + IntToStr(Dia), 2);

    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not Assigned(Buscar) then
      begin
        Buscar := TClientDataSet.Create(Self);
        if Not CrearConjunto(Buscar, 'nom_tablaispt', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Tabla del I.S.P.T.']);
      end;

      Buscar.Close;
      If Not CargarDatosFiltrados(Buscar, 'FechaAplicacion,IdTablaISPT', [sFecha, cdTablaISR.FieldByName('IdTablaISPT').AsInteger]) then
        raise InteligentException.CreateByCode(6, ['Tabla I.S.P.T.', 'FechaAplicacion,IdTablaISPT', sFecha + '/' + cdTablaISR.FieldByName('IdTablaISPT').AsString]);
      Buscar.Open;
    Finally
      Screen.Cursor := Cursor;
    End;

    if (Buscar.RecordCount > 0) and (InteliDialog.ShowModal('Eliminar Línea de Tabla de I.S.P.T.', '¿Está seguro que desea eliminar está línea de la tabla del Impuesto Sobre el Producto del Trabajo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
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

procedure TFrmTablaISPT.Btn_RefreshClick(Sender: TObject);
begin
  try
    cdHistorial.Close;
    CargarDatosFiltrados(cdHistorial,'IdTablaISPT',[-1]);
  finally
    cdhistorial.Open; 
  end;   
  LeerDatos;
end;

procedure TFrmTablaISPT.ValidaCaptura;
var
  sFecha: String;
  Anio, Mes, Dia: Word;
begin
  Try
    // Primero verificar que el límite inferior no sea menor o igual a cero
    if eLimiteInferior.Value <= 0 then
    begin
      eLimiteInferior.SetFocus;
      raise Exception.Create('El valor para el Límite Inferior no puede ser menor a 0.01');
    end;

    // Verificar que el Limite Inferior no exista ya en la base de datos
    DecodeDate(eFechaAplicacion.date, Anio, Mes, Dia);
    sFecha := IntToStr(Anio) + '-' + RightStr('0' + IntToStr(Mes), 2) + '-' + RightStr('0' + IntToStr(Dia), 2);

    if Not CargarDatosFiltrados(Buscar, 'FechaAplicacion,LimiteInferior', [sFecha, eLimiteInferior.Value]) then
    begin
      eLimiteInferior.SetFocus;
      raise InteligentException.CreateByCode(5, ['Tabla del I.S.P.T.']);
    end;

    if not AnsiContainsText(FrmCaptura.Caption,'Edicion') then
      if CuantosRegistros(Buscar) > 0 then
      begin
        eLimiteInferior.SetFocus;
        raise InteligentException.CreateByCode(8, ['El valor para el Límite Inferior: ' + eLimiteInferior.Text + ' ya existe en la tabla.']);
      end;

  Except
    Raise;
  End;
end;

procedure TFrmTablaISPT.CrearVentana;
begin
  FrmCaptura := TForm.Create(Self);
  //FrmCaptura.Width := Panel_DatosLinea.Width + 6;
end;


procedure TFrmTablaISPT.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

end.
