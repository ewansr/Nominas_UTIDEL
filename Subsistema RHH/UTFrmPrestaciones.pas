unit UTFrmPrestaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ClientModuleUnit1, UInteliDialog, JvExControls,
  JvLabel, StdCtrls, AdvCombo, AdvSmoothPanel, AdvOfficePager, AdvTabSet, Grids,
  DBGrids, ComCtrls, ToolWin, AdvGlowButton, MoneyEdit, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, ExtCtrls,
  AdvEdit, DBAdvEd,StrUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, rhh_genericclasses, frxClass, frxDBSet;

type
  TtipoNomina = class
    identificador: Integer;
    titulo: string;
  end;

  TFrmPrestaciones = class(TForm)
    cdAguinaldo: TClientDataSet;
    AdvSmoothPanel1: TAdvSmoothPanel;
    JvLabel1: TJvLabel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    cbTipoNomina1: TAdvComboBox;
    dsAguinaldo: TDataSource;
    dsTipoNomina: TDataSource;
    cdTipoNomina: TClientDataSet;
    dsAguinaldos: TDataSource;
    cdAguinaldos: TClientDataSet;
    advfcpgr1: TAdvOfficePager;
    advfcpgPage_Aguinaldo: TAdvOfficePage;
    dbgrd3: TDBGrid;
    advtbstDiasAguinaldo: TAdvTabSet;
    pnl_DatosLinea: TPanel;
    jvlbl4: TJvLabel;
    edtFechaAplicacion: TJvDatePickerEdit;
    dbEditDescripcion: TDBAdvEdit;
    dbEditDias: TDBAdvEdit;
    cbTipoNomina: TAdvComboBox;
    dbEditCodDiasAguinaldo: TDBAdvEdit;
    pnl_BotonesLinea: TPanel;
    dbgrd1: TDBGrid;
    dbgrd2: TDBGrid;
    dsAguinaldo_Sel: TDataSource;
    cdAguinaldo_Sel: TClientDataSet;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    btnBtn_agregar: TdxBarLargeButton;
    btnBtn_editar: TdxBarLargeButton;
    btnBtn_quitar: TdxBarLargeButton;
    btnBtn_refresh: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    Btn_NuevaTabla: TdxBarLargeButton;
    btnBtn_CerrarLinea: TcxButton;
    btnBtn_AceptarLinea: TcxButton;
    btnBtn_AgregarLinea: TcxButton;
    btnImprmir: TdxBarLargeButton;
    frxReporteAguinaldos: TfrxReport;
    FrxAguinaldos: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    frxTipoNomina: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTipoNomina1Change(Sender: TObject);
    procedure advtbstDiasAguinaldoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnBtn_AgregarClick(Sender: TObject);
    procedure btnBtn_CerrarLineaClick(Sender: TObject);
    procedure btnBtn_AgregarLineaClick(Sender: TObject);
    procedure btnBtn_AceptarLineaClick(Sender: TObject);
    procedure btnBtn_EditarClick(Sender: TObject);
    procedure dbgrd3DblClick(Sender: TObject);
    procedure btn_NuevaTablaClick(Sender: TObject);
    procedure btnBtn_QuitarClick(Sender: TObject);
    procedure btnBtn_RefreshClick(Sender: TObject);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure cdAguinaldoAfterOpen(DataSet: TDataSet);
    procedure cdAguinaldoAfterRefresh(DataSet: TDataSet);
    procedure btnImprmirClick(Sender: TObject);
  private
    frmEmergente: TForm;
    procedure CargarDatos;
    procedure CargarDatos_DatosPanel;
    procedure CrearVentana;
    procedure filtrarFecha;
    procedure editarReg;
    procedure addNuevo;
  public
    { Public declarations }
  end;

var
  FrmPrestaciones: TFrmPrestaciones;

implementation

{$R *.dfm}

procedure TFrmPrestaciones.addNuevo;
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    with cdAguinaldos do
      begin
        FieldByName('IdDiasAguinaldo').AsInteger := 0;
        FieldByName('IdTipoNomina').AsInteger := TtipoNomina(cbTipoNomina.Items.Objects[cbTipoNomina.ItemIndex]).identificador;
        FieldByName('Aplicacion').AsDateTime := StrToDate(edtFechaAplicacion.Text);
        FieldByName('Activo').AsString := 'Si';
      end;
    cdAguinaldos.Post;
    cdAguinaldos.ApplyUpdates(-1);
    CargarDatos;

  finally
    Screen.Cursor := Cursor;
  end;
end;


procedure TFrmPrestaciones.advtbstDiasAguinaldoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  filtrarFecha;
end;

procedure TFrmPrestaciones.btnBtn_AceptarLineaClick(Sender: TObject);
begin
  try
    btnBtn_AceptarLinea.SetFocus;
    if cbTipoNomina.ItemIndex < 0 then
    begin
      cbTipoNomina.SetFocus;
      raise InteligentException.Create('El tipo de nómina no puede ir vacío, indique uno porfavor.');
    end;
    if length(trim(cdAguinaldos.FieldByName('CodigoDiasAguinaldo').AsString)) = 0 then
    begin
      dbEditCodDiasAguinaldo.SetFocus;
      raise InteligentException.Create('El código no puede ir vacío, indique uno porfavor.');
    end;
    if length(trim(cdAguinaldos.FieldByName('Descripcion').AsString)) = 0 then
    begin
      dbEditDescripcion.SetFocus;
      raise InteligentException.Create('La descripción no puede ir vacío, indique uno porfavor.');
    end;
    if dbEditDias.Text = '0' then
      cdAguinaldos.FieldByName('Dias').AsInteger :=0;
    if length(trim(cdAguinaldos.FieldByName('Dias').AsString)) = 0 then
    begin
      dbEditDias.SetFocus;
      raise InteligentException.Create('El numero de días no puede ir vacío, indique uno porfavor.');
    end;
    case cdAguinaldos.State of
      dsInsert:addNuevo;
      dsEdit:editarReg;
    end;
    frmEmergente.close;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
      frmEmergente.close;
    end;
  end;

end;

procedure TFrmPrestaciones.btnBtn_AgregarClick(Sender: TObject);
begin
  if cdAguinaldo.RecordCount<1 then
    raise InteligentException.CreateByCode(29,['No hay fechas creadas, Intente agregar un registro para una fecha nueva.']);


  CrearVentana;
  CargarDatos_DatosPanel;//Cargar datos dentro de la ventana emergente.

  pnl_DatosLinea.Visible := true;
  pnl_DatosLinea.parent := frmEmergente;
  pnl_DatosLinea.Align := alClient;
  edtFechaAplicacion.Text := advtbstDiasAguinaldo.AdvTabs.Items[advtbstDiasAguinaldo.TabIndex].Caption;
  edtFechaAplicacion.Enabled := false;
  dbEditDescripcion.Text := '';
  dbEditCodDiasAguinaldo.Text :='';
  DbEditDias.Text := '';
  btnBtn_AgregarLinea.Visible  :=True;
  btnBtn_AgregarLinea.Caption := 'Agregar';

  pnl_BotonesLinea.Visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;
  pnl_BotonesLinea.Align := alBottom;



  if cdAguinaldos.Active then
    cdAguinaldos.Refresh
  else
    cdAguinaldos.Open;

  cdAguinaldos.append;
  cdAguinaldos.FieldByName('idtiponomina').AsInteger := TtipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador;
  cbTipoNomina.ItemIndex := cbTipoNomina1.ItemIndex;
  frmEmergente.ShowModal;
  if cdAguinaldos.State = dsInsert then
    cdAguinaldos.Cancel;
end;

procedure TFrmPrestaciones.btnBtn_AgregarLineaClick(Sender: TObject);
begin
  try
    btnBtn_AgregarLinea.SetFocus;
    if cbTipoNomina.ItemIndex < 0 then
    begin
      cbTipoNomina.SetFocus;
      raise InteligentException.Create('El tipo de nómina no puede ir vacío, indique uno porfavor.');
    end;
    if length(trim(cdAguinaldos.FieldByName('CodigoDiasAguinaldo').AsString)) = 0 then
    begin
      dbEditCodDiasAguinaldo.SetFocus;
      raise InteligentException.Create('El código no puede ir vacío, indique uno porfavor.');
    end;
    if length(trim(cdAguinaldos.FieldByName('Descripcion').AsString)) = 0 then
    begin
      dbEditDescripcion.SetFocus;
      raise InteligentException.Create('La descripción no puede ir vacío, indique uno porfavor.');
    end;

    if dbEditDias.Text = '0' then
      cdAguinaldos.FieldByName('Dias').AsInteger :=0;

    if length(trim(cdAguinaldos.FieldByName('Dias').AsString)) = 0 then
    begin
      dbEditDias.SetFocus;
      raise InteligentException.Create('El numero de días no puede ir vacío, indique uno porfavor.');
    end;
    If cdAguinaldos.State = dsInsert then
      addNuevo
    else if cdAguinaldos.State = dsEdit then
    Begin
      editarReg;
      frmEmergente.close;
    End;
    cdAguinaldos.Open;
    cdAguinaldos.Append;
    dbEditDescripcion.Text := '';
    dbEditCodDiasAguinaldo.Text :='';
    DbEditDias.Text := '';
    btnBtn_AceptarLinea.Enabled :=True;
    btnBtn_AgregarLinea.Caption := 'Agregar';
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
      frmEmergente.close;
    end;
  end;

end;

procedure TFrmPrestaciones.btnBtn_CerrarLineaClick(Sender: TObject);
begin
  if Assigned(FrmEmergente) then
    frmEmergente.Close;
end;

procedure TFrmPrestaciones.btnBtn_EditarClick(Sender: TObject);
begin
  if cdAguinaldo.RecordCount<1 then
    raise InteligentException.CreateByCode(29,['No hay registros para editar, Intente agregar un registro para una fecha nueva.']);

  CrearVentana;
  CargarDatos_DatosPanel;

  pnl_DatosLinea.Visible := true;
  pnl_DatosLinea.parent := frmEmergente;
  pnl_DatosLinea.Align := alClient;
  edtFechaAplicacion.Enabled := true;
  btnBtn_AgregarLinea.Visible :=False;
  btnBtn_AgregarLinea.Caption := 'Guardar Cambios.';
  cbTipoNomina.ItemIndex := cbTipoNomina1.itemindex;
  pnl_BotonesLinea.Visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;
  pnl_BotonesLinea.Align := alBottom;

  cdAguinaldos.close;
  If Not CargarDatosFiltrados(cdAguinaldos,'idDiasAguinaldo',[cdAguinaldo.fieldByName('IdDiasAguinaldo').AsInteger]) then
     raise Exception.Create('No se pudo cargar los datos de la tabla.');
  cdAguinaldos.Open;


  EdtFechaAplicacion.Date := cdAguinaldos.FieldByName('Aplicacion').AsDateTime;
  dbEditCodDiasAguinaldo.Text := cdAguinaldos.FieldByName('CodigoDiasAguinaldo').AsString;
  dbEditDescripcion.Text := cdAguinaldos.FieldByName('Descripcion').AsString;
  dbEditDias.Text := cdAguinaldos.FieldByName('Dias').AsString;
  cbTipoNomina.ItemIndex := cbTipoNomina1.ItemIndex;
  cdAguinaldos.Edit;
  frmEmergente.ShowModal;
  if cdAguinaldos.State = dsEdit then
    cdAguinaldos.Cancel;
end;

procedure TFrmPrestaciones.btnBtn_QuitarClick(Sender: TObject);
begin
  try
    if cdAguinaldo.RecordCount<1 then
      raise InteligentException.CreateByCode(29,['No hay registros para editar, Intente agregar un registro para una fecha nueva.']);
    cdAguinaldos.close;
    If Not CargarDatosFiltrados(cdAguinaldos,'idDiasAguinaldo',[cdAguinaldo.fieldByName('IdDiasAguinaldo').AsInteger]) then
       raise Exception.Create('No se pudo cargar los datos de la tabla.');
    cdAguinaldos.Open;
    if cdAguinaldos.RecordCount <> 1 then
      raise InteligentException.Create('Ocurrió un error al tratar de localizar el registro para ser eliminado, puede que ya esté eliminado.');
    if InteliDialog.ShowModal('Seguridad','¿Está seguro que desea eliminar el registro?', mtConfirmation, [ mbYes, mbNo ], 0) = mrNo then
      raise InteligentException.Create('Proceso cancelado por el usuario.');
    cdAguinaldos.Delete;
    cdAguinaldos.ApplyUpdates(-1);
    cdAguinaldos.Close;
    btnBtn_RefreshClick(btnBtn_Refresh);
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmPrestaciones.btnBtn_RefreshClick(Sender: TObject);
begin
  CargarDatos;
end;

procedure TFrmPrestaciones.btnImprmirClick(Sender: TObject);
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'Aguinaldos.fr3';
      CompReporte := FrxReporteAguinaldos;
      CompDataSetReporte := FrxAguinaldos;

      LocalImprimeReporte(cdAguinaldo, dbgrd3, 'Dias de Aguinaldo');
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

procedure TFrmPrestaciones.btn_NuevaTablaClick(Sender: TObject);
begin
  CrearVentana;
  CargarDatos_DatosPanel;

  pnl_DatosLinea.Visible := true;
  pnl_DatosLinea.parent := frmEmergente;
  pnl_DatosLinea.Align := alClient;
  edtFechaAplicacion.Enabled := true;
  dbEditDescripcion.Text := '';
  dbEditCodDiasAguinaldo.Text :='';
  DbEditDias.Text := '';
  btnBtn_AgregarLinea.Visible :=true;
  btnBtn_AgregarLinea.Caption := 'Agregar.';

  pnl_BotonesLinea.Visible := True;
  pnl_BotonesLinea.Parent := frmEmergente;
  pnl_BotonesLinea.Align := alBottom;

  if cdAguinaldos.Active then
    cdAguinaldos.refresh
  else
    cdAguinaldos.Open;

  cdAguinaldos.Append;
  cdAguinaldos.FieldByName('idtiponomina').AsInteger := TtipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador;
  cbTipoNomina.ItemIndex := cbTipoNomina1.ItemIndex;
  frmEmergente.ShowModal;
  if cdAguinaldos.State = dsInsert then
    cdAguinaldos.Cancel;
end;

Procedure TFrmPrestaciones.CargarDatos;
var
  Cursor: TCursor;
  TiNomina:TtipoNomina;
begin
  Cursor := Screen.Cursor;
  Try
    screen.Cursor := crAppStart;
    if cdTipoNomina.Active then
      cdTipoNomina.Refresh
    else
      cdTipoNomina.Open;

    cbTipoNomina1.Items.Clear;
    cdTipoNomina.First;

    while Not cdTipoNomina.Eof do
    begin
      TiNomina := TtipoNomina.Create;
      TiNomina.identificador := cdTipoNomina.FieldByName('idtiponomina').AsInteger;
      TiNomina.titulo := cdTipoNomina.FieldByName('titulo').AsString;
      //cbTipoNomina1.items.Add(cdTipoNomina.FieldByName('titulo').AsString);
      cbTipoNomina1.AddItem(TiNomina.titulo,TiNomina);
      cdTipoNomina.Next;
    end;

    if cbTipoNomina1.Items.Count >0 then
    begin
      cbTipoNomina1.ItemIndex := 0;
      cbTipoNomina1Change(nil);
    end;
    //filtrarFecha;
  Finally
    screen.Cursor := Cursor;
  End;
end;


//Metodo que cargar en los Controles (Objetos) del panel DatosLinea.
procedure TFrmPrestaciones.CargarDatos_DatosPanel;
var
  Cursor: TCursor;
  tipoNomina: TtipoNomina;
begin
  Cursor := Screen.Cursor;
  Try
    screen.Cursor := crAppStart;
    //Cargar Registros en combobox Tipo Nomina
    if cdTipoNomina.Active then
      cdTipoNomina.Refresh
    else
      cdTipoNomina.Open;

    cbTipoNomina.Items.Clear;
    cdTipoNomina.First;

    while Not cdTipoNomina.Eof do
    begin
      tipoNomina := TtipoNomina.Create;
      tipoNomina.identificador := cdTipoNomina.fieldByName('IdTipoNomina').AsInteger;
      tipoNomina.titulo := cdTipoNomina.fieldByName('Titulo').AsString;

      cbTipoNomina.items.AddObject(tipoNomina.titulo,tipoNomina);
      cdTipoNomina.Next;
    end;

    if cbTipoNomina.Items.Count >0 then
    begin
      cbTipoNomina.ItemIndex := 0;
    end;
    //--------------------------------------------
  Finally
    screen.Cursor := Cursor;
  End;
End;


procedure TFrmPrestaciones.cbTipoNomina1Change(Sender: TObject);
Var
  Cursor: TCursor;
begin
  try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdAguinaldo.close;

      cdAguinaldo_sel.close;

      //Aqui agrego pestañas al TAdvTabSet
      if Not CargarDatosFiltrados(cdAguinaldo_sel, 'IdTipoNomina',  [TtipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador]) then
        raise InteligentException.CreateByCode(6, ['Aguinaldos', cdTipoNomina.fieldByName('IdTipoNomina').AsInteger, 'Id. Tipo Nómina']);

      cdAguinaldo_sel.open;
      advtbstDiasAguinaldo.AdvTabs.Clear;
      cdAguinaldo_sel.First;


      while Not cdAguinaldo_sel.Eof do
      begin
        advtbstDiasAguinaldo.AdvTabs.Add().Caption := cdAguinaldo_sel.FieldByName('Aplicacion').AsString;
        cdAguinaldo_sel.Next;
      end;
      if advtbstDiasAguinaldo.AdvTabs.Count > 0 then
        filtrarFecha;
    Finally
      Screen.Cursor := Cursor;
    End;
    filtrarFecha;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmPrestaciones.cdAguinaldoAfterOpen(DataSet: TDataSet);
begin
  btnBtn_editar.Enabled := (cdAguinaldo.Active) and (cdAguinaldo.RecordCount > 0);
  btnBtn_quitar.Enabled := btnBtn_editar.Enabled;
end;

procedure TFrmPrestaciones.cdAguinaldoAfterRefresh(DataSet: TDataSet);
begin
  btnBtn_editar.Enabled := (cdAguinaldo.Active) and (cdAguinaldo.RecordCount > 0);
  btnBtn_quitar.Enabled := btnBtn_editar.Enabled;
end;

procedure TFrmPrestaciones.CrearVentana;
begin
  frmEmergente := Tform.Create(self);
  ClientModule1.ComponentColor(frmEmergente);
  frmEmergente.Width := pnl_DatosLinea.Width+20;
  frmEmergente.Height := 250;
  frmEmergente.Position := poOwnerFormCenter;
end;

procedure TFrmPrestaciones.dbgrd3DblClick(Sender: TObject);
begin
  btnBtn_EditarClick(nil);
end;

procedure TFrmPrestaciones.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrestaciones.editarReg;
begin
  try
   { If Not CargarDatosFiltrados(cdAguinaldos,'idDiasAguinaldo',[cdAguinaldos.FieldByName('IdDiasAguinaldo').AsInteger]) then
        raise Exception.Create('No se pudo cargar los datos de la tabla.');

    if cdAguinaldos.Active then
      cdAguinaldos.Refresh
    else
      cdAguinaldos.Open;

    //Editar registro
    cdAguinaldos.Edit;  }
    with cdAguinaldos do
      begin
        FieldByName('IdTipoNomina').AsInteger := TtipoNomina(cbTipoNomina.Items.Objects[cbTipoNomina.ItemIndex]).identificador;
        FieldByName('Aplicacion').AsDateTime := StrToDate(edtFechaAplicacion.Text);
        FieldByName('Activo').AsString := 'Si';
      end;
    cdAguinaldos.Post;
    cdAguinaldos.ApplyUpdates(-1);
    CargarDatos;
  finally
  end;
end;

procedure TFrmPrestaciones.filtrarFecha;
var Fecha:string;
begin
  if length(trim(advtbstDiasAguinaldo.AdvTabs.Items[advtbstDiasAguinaldo.TabIndex].Caption)) > 0 then
  begin
    cdAguinaldo.close;
    Fecha := ClientModule1.DatetoStrSql(StrToDate(advtbstDiasAguinaldo.AdvTabs.Items[advtbstDiasAguinaldo.TabIndex].Caption));
    Fecha := AnsiReplaceStr(Fecha,'/','-');
    if Not CargarDatosFiltrados(cdAguinaldo,'Aplicacion,IdTipoNomina',[Fecha ,TtipoNomina(cbTipoNomina1.Items.Objects[cbTipoNomina1.ItemIndex]).identificador]) then
      raise InteligentException.CreateByCode(6, ['Aguinaldos', cdAguinaldo.fieldByName('Aplicacion').AsDateTime, 'Fecha Aplicaciòn']);
    cdAguinaldo.Open;
  end;
end;

procedure TFrmPrestaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    EliminarConjunto([cdTipoNomina, cdAguinaldo,cdAguinaldos,cdAguinaldo_sel]);
  finally
    LiberarVentana(Self, Action);
  end;
end;

procedure TFrmPrestaciones.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  ClientModule1.ComponentColor(self);
  ClientModule1.RastrearGrids(self);
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog)  then
        raise InteligentException.CreateByCode(5, ['Tipo Nomina']);

      if Not CrearConjunto(cdAguinaldo, 'rhu_diasaguinaldo_periodos', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Días de Aguinaldo']);

      if Not CrearConjunto(cdAguinaldos, 'rhu_diasAguinaldo', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Dias de Aguinaldo']);

      if Not CrearConjunto(cdAguinaldo_sel, 'rhu_diasaguinaldo_periodos', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Dias de Aguinaldo']);

      CargarDatos;
    Finally
      Screen.Cursor := cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;
end.
