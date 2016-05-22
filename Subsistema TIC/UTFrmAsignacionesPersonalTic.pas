unit UTFrmAsignacionesPersonalTic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, NxCollection, ExtCtrls, UinteliDialog, StdCtrls, DBCtrls,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, UTFrmAsignarInsumosTic, DB, DBClient, UTFrmPersonal, NxDBColumns,
  NxColumns, JvExStdCtrls, JvBehaviorLabel, AdvSmoothStepControl, Mask, ComCtrls,
  frxClass, frxDBSet, frxPreview, AdvCircularProgress, fs_ichartrtti, DMTicRepModuleUnit;

type
  TFrmAsignacionesPersonalTic = class(TForm)
    Panel1: TPanel;
    BtnHerramientas: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    BuscarPersonal1: TMenuItem;
    Salir1: TMenuItem;
    Devolucion1: TMenuItem;
    Archivo: TNxOptionButton;
    cdpersonal: TClientDataSet;
    dspersonal: TDataSource;
    cdresguardosasignados: TClientDataSet;
    dsresguardostic: TDataSource;
    Panel8: TPanel;
    CerrarPersonal1: TMenuItem;
    N1: TMenuItem;
    ImprimirFichadePersonal1: TMenuItem;
    N2: TMenuItem;
    EditarInsumo1: TMenuItem;
    BtnInsumo: TNxOptionButton;
    PopupMenu3: TPopupMenu;
    RegistrarDevolucindeInsumo1: TMenuItem;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    DBImage1: TDBImage;
    Panel6: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    TabControl1: TTabControl;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    cdresguardoshistorial: TClientDataSet;
    dsdetallesreguardostic: TDataSource;
    Panel2: TPanel;
    DBEdit5: TDBEdit;
    Panel7: TPanel;
    JvLabel6: TJvLabel;
    DBEdit1: TDBEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    JvLabel5: TJvLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    DBEdit7: TDBEdit;
    Panel16: TPanel;
    JvLabel4: TJvLabel;
    Panel17: TPanel;
    Panel18: TPanel;
    DBEdit8: TDBEdit;
    Guardar1: TMenuItem;
    N3: TMenuItem;
    frxResguardosAsignados: TfrxDBDataset;
    frxDBDPersonal: TfrxDBDataset;
    frxDBDOrganizacion: TfrxDBDataset;
    frxDBDHistorial: TfrxDBDataset;
    cdresguardos: TClientDataSet;
    dsresguardos: TDataSource;
    frxDBresguardos: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    procedure ArchivoClick(Sender: TObject);
    procedure BtnHerramientasClick(Sender: TObject);
    procedure BuscarPersonal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdresguardosasignadosAfterScroll(DataSet: TDataSet);
    procedure Salir1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure cdpersonalAfterOpen(DataSet: TDataSet);
    procedure cdpersonalAfterClose(DataSet: TDataSet);
    procedure CerrarPersonal1Click(Sender: TObject);
    procedure cdresguardosasignadosAfterPost(DataSet: TDataSet);
    procedure BtnInsumoClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel9Resize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Devolucion1Click(Sender: TObject);
    procedure frxReport1DblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
  private
    DebeGrabar: Boolean;
    YaLeido: Boolean;
  public
    { Public declarations }
  end;

var
  FrmAsignacionesPersonalTic: TFrmAsignacionesPersonalTic;

implementation

uses
  ClientModuleUnit1, xDatabase, Frm_SelPeriodo, UTFrmSolicitaPersonal, UTFrmDevolucionIndividualIns;

{$R *.dfm}

procedure TFrmAsignacionesPersonalTic.ArchivoClick(Sender: TObject);
Var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionesPersonalTic.BuscarPersonal1Click(Sender: TObject);
var
  registro: TLista;
  Resultado: TModalResult;
  IdLlave, LocName: String;
begin
  Resultado := mrCancel;

  Try
    Try
      // Mandar llamar primero la ventana de selección directa
      Application.CreateForm(TFrmSolicitaPersonal, FrmSolicitaPersonal);
      FrmSolicitaPersonal.Top := Application.MainForm.Top + GetSystemMetrics(SM_CYCAPTION) + 174 + Self.Top + GetSystemMetrics(SM_CYCAPTION);
      FrmSolicitaPersonal.Left := Application.MainForm.Left + GetSystemMetrics(SM_CXSIZEFRAME) + Self.Left;
      Resultado := FrmSolicitaPersonal.ShowModal;

      case Resultado of
        mrOk: IdLlave := FrmSolicitaPersonal.Edit1.Text;
        mrCancel: Exit;
      end;
    Finally
      FrmSolicitaPersonal.Free;
    End;

    if (Resultado = mrAbort) or (Resultado = mrOk) then
    Try
      Screen.Cursor := crAppStart;

      if Resultado = mrAbort then
      begin
        Application.CreateForm(TFrmPersonal, FrmPersonal);
        FrmPersonal.PanelAdd.Visible := False;
        FrmPersonal.PanelEdit.Visible := False;
        FrmPersonal.PanelDelete.Visible := False;
        FrmPersonal.PanelPrint.Visible := False;
        FrmPersonal.PanelImport.Visible := False;
        FrmPersonal.PanelExport.Visible := False;
        FrmPersonal.ModoSeleccion := True;

        registro := FrmPersonal.SeleccionarItem();
      end;

      if (Assigned(registro) and (Resultado = mrAbort)) or (Resultado = mrOk) then
      begin
        cdPersonal.Close;   // Cerrar primero el registro de personal que pudiera estar activo

        if Resultado = mrOk then
        begin
          // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
          if Not CargarDatosFiltrados(cdpersonal, 'CodigoPersonal', [IdLlave]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
        end
        else
          if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [registro.Valor['idpersonal']]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');

        cdPersonal.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado

{
          cdresguardostic.Close;
          if Not CargarDatosFiltrados(cdresguardostic, 'idpersonal', [cdpersonal.FieldByName('idpersonal').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
          cdresguardostic.Open;

          if Not CargarDatosFiltrados(cddetallesresguardostic, 'idpersonal', [cdpersonal.FieldByName('idpersonal').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
          cddetallesresguardostic.Open;
}

            if Not CargarDatosFiltrados(cdresguardoshistorial, 'idpersonal', [cdpersonal.FieldByName('idpersonal').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
            cdresguardoshistorial.Refresh;

            if Not CargarDatosFiltrados(cdresguardosasignados, 'idpersonal', [cdpersonal.FieldByName('idpersonal').AsInteger]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
            cdresguardosasignados.Refresh;

      end;

      //frxReport1.ShowReport(True);
      LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmResguardosAsignados.fr3';
      if FileExists(LocName) then
      begin
        frxReport1.LoadFromFile(LocName);
        frxReport1.ShowReport(TRUE);
      end
      else
        MessageDlg('No Existe el archivo: '+LocName,mtInformation,[mbOk],0);
    Finally
      Screen.Cursor := crDefault;
    End;
  except
    on e:exception do
      InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
  end;
end;

procedure TFrmAsignacionesPersonalTic.cdresguardosasignadosAfterPost(
  DataSet: TDataSet);
begin
  // Ante cada modificación del registro de insumos asignados se debe habilitar el botón de grabar
  DebeGrabar := True;
end;

procedure TFrmAsignacionesPersonalTic.cdresguardosasignadosAfterScroll(
  DataSet: TDataSet);
begin
{
    JVLabel23.Caption:= cdasignacionestic.FieldByName('codigoasignacionestic').AsString;
    JVLabel24.Caption:= datetostr(cdasignacionestic.FieldByName('fechaasig').AsDateTime);
    if cdasignacionestic.FieldByName('fechavigencia').AsDateTime = null then
    begin
      JVLabel25.Caption:= '';
    end
    else
    begin
      JVLabel25.Caption:= datetostr(cdasignacionestic.FieldByName('fechavigencia').AsDateTime);
    end;
    JVLabel26.Caption:= cdasignacionestic.FieldByName('tituloarticulo').AsString;
    JVLabel27.Caption:= cdasignacionestic.FieldByName('codigoinsumo').AsString;
    JVLabel28.Caption:= cdasignacionestic.FieldByName('descricioninsumo').AsString;
}
end;

procedure TFrmAsignacionesPersonalTic.cdpersonalAfterClose(DataSet: TDataSet);
begin
  //cdAsignacionestic.Close;

  BtnInsumo.Enabled := False;
  BtnHerramientas.Enabled := False;
  DebeGrabar := False;
  Panel8.Visible := False;
end;

procedure TFrmAsignacionesPersonalTic.cdpersonalAfterOpen(DataSet: TDataSet);
begin
  BtnInsumo.Enabled := cdPersonal.RecordCount > 0;
  BtnHerramientas.Enabled := cdpersonal.RecordCount > 0;
  Panel8.Visible := cdpersonal.RecordCount > 0;
end;

procedure TFrmAsignacionesPersonalTic.CerrarPersonal1Click(Sender: TObject);
begin
  cdPersonal.Close;
  cdresguardosasignados.Close;
  cdresguardoshistorial.Close;
end;

procedure TFrmAsignacionesPersonalTic.Devolucion1Click(Sender: TObject);
begin
  Try
    frxReport1.ShowReport(FALSE);
    application.CreateForm(TFrmAsignarInsumosTic, FrmAsignarInsumosTic);
    FrmAsignarInsumosTic.dspersonal.DataSet:= cdpersonal;
    FrmAsignarInsumosTic.Caption := FrmAsignarInsumosTic.Caption + ' ' + cdPersonal.FieldByName('NombreCompleto').AsString + ' - ' + cdPersonal.FieldByName('TituloCargo').AsString;
    FrmAsignarInsumosTic.JvLabel7.Caption:=cdpersonal.FieldByName('codigopersonal').AsString;
    FrmAsignarInsumosTic.JvLabel9.Caption:=cdpersonal.FieldByName('Nombres').AsString;
    FrmAsignarInsumosTic.JvLabel10.Caption:=cdpersonal.FieldByName('APaterno').AsString+' '+cdpersonal.FieldByName('AMaterno').AsString;
    FrmAsignarInsumosTic.ShowModal;
    cdresguardosasignados.Refresh;
    cdresguardoshistorial.Refresh;
    if Assigned(frxReport1.Report) then
      frxReport1.ShowReport(TRUE);
  Finally
    FrmAsignarInsumosTic.Free;
  End;
end;

procedure TFrmAsignacionesPersonalTic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  eliminarconjunto([cdpersonal.ProviderName, cdresguardosasignados.ProviderName, cdresguardoshistorial.ProviderName]);
  Action := caFree;
end;

procedure TFrmAsignacionesPersonalTic.FormCreate(Sender: TObject);
begin
  DebeGrabar := False;
  YaLeido := False;
end;

procedure TFrmAsignacionesPersonalTic.FormDestroy(Sender: TObject);
begin
  //LiberarVentana(Self);
end;

procedure TFrmAsignacionesPersonalTic.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{  if (Key = 116) and (cdResguardostic.Active) then
  begin

      Try
        Screen.Cursor := crAppStart;
        GroupBox1.Visible := False;
        GroupBox2.Visible := False;

        cdPersonal.Refresh;
        GroupBox1.Visible := True;
        GroupBox1.Repaint;

        cdresguardostic.Refresh;
        cddetallesresguardostic.Refresh;
        GroupBox2.Visible := True;
      Finally
        Screen.Cursor := crDefault;
        GroupBox1.Visible := True;
        GroupBox2.Visible := True;
      End;
    end;

    if Key = 27 then
      if (Not cdResguardosTic.Active) or (cdResguardosTic.Active and (InteliDialog.ShowModal('Existen datos en la pantalla', 'Se encuentra consultando la fIcha de resguardos de: ' + cdPersonal.FieldByName('NombreCompuesto').AsString + #10 + #10 + '¿Desea salir de esta ventana en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes)) then
        Close;
}
end;

procedure TFrmAsignacionesPersonalTic.FormShow(Sender: TObject);
begin
  try
    ClientModule1.ComponentColor(self);
    AccedeACoordenadas(Self);   // Posicionar la ventana a la última Ubicación

    if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la tabla de Personal, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [-9]) then
      raise InteligentException.Create('No ha sido posible acceder a los datos de Personal');
    cdpersonal.Open;

    if Not CrearConjunto(cdresguardosasignados, 'tic_resguardos_asignaciones', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardosasignados, 'recibio', [-9]) then
      raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
    cdresguardosasignados.Open;

    if Not CrearConjunto(cdresguardoshistorial, 'tic_resguardos_asignaciones', ccSelect) then
      raise InteligentException.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardoshistorial, 'entrego', [-9]) then
      raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
    cdresguardoshistorial.Open;

{
      if Not CrearConjunto(cdresguardos, 'tic_asignacionestic', ccCatalog) then
        raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdresguardos, 'idticresguardos', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresguardos.Open;
}

  except
    on e:inteligentexception do
    begin
      InteliDialog.ShowModal('Error al consultar datos', e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Error al cargar la ventana de Asignación de Insumos a Usuario (Vales de resguardo)', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

  end;
end;

procedure TFrmAsignacionesPersonalTic.frxReport1DblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
  var
    LocName : string;
begin
  try
    //if (ssCtrl in Shift) and (Button = mbLeft) and (Sender.TagStr <> '') then
    if (Button = mbLeft) and (Sender.TagStr <> '') then
    begin
      if Sender.Name = 'codigoticresguardo' then
      begin
        if Not CargarDatosFiltrados(cdresguardos, 'codigoticresguardo', [Sender.TagStr]) then
          raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdresguardos.Refresh;

        LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmValedeResguardoPersonal.fr3';
        if FileExists(LocName) then
        begin
          frxReport2.LoadFromFile(LocName);
          frxReport2.ShowReport(TRUE);
        end
        else
        begin
          InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
        end;

      end;
      if Sender.Name = 'codigoinsumo' then
      begin
        cdresguardosasignados.IndexFieldNames:='codigoinsumo';
        cdresguardosasignados.SetRange([Sender.TagStr], [Sender.TagStr]);
        Application.CreateForm(TFrmDevolucionIndividualIns, FrmDevolucionIndividualIns);
        FrmDevolucionIndividualIns.dsresguardosasignados.DataSet:= cdresguardosasignados;
//        FrmDevolucionIndividualIns.dsresguardosdevueltos.DataSet:= cdresguardoshistorial;
        //FrmDevolucionIndividualIns.dspersonal.DataSet:= cdpersonal;
        FrmDevolucionIndividualIns.ShowModal;
        cdresguardosasignados.CancelRange;
        cdresguardoshistorial.Refresh;
        cdresguardosasignados.Refresh;
      end;
    end;
    if sender.Name='codigoresguardo' then
    begin
      cdresguardosasignados.IndexFieldNames:='idticresguardos';
      cdresguardosasignados.SetRange([Sender.TagStr], [Sender.TagStr]);
      LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmValedeResguardo.fr3';
      TicRepModuleUnit.frxDBDResguardo.DataSet:=cdresguardosasignados;
      TicRepModuleUnit.frxDBPersonal.DataSource:=dspersonal;
        if FileExists(LocName) then
        begin
          frxReport3.LoadFromFile(LocName);
          frxReport3.ShowReport(TRUE);
        end
        else
        begin
          InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
        end;
    end;
  except
  on e:exception do
    InteliDialog.ShowModal('Error al Imprimir Vale de Resguardo ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionesPersonalTic.BtnHerramientasClick(Sender: TObject);
var
  Point : Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu3.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionesPersonalTic.BtnInsumoClick(Sender: TObject);
var
  Point : Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu2.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionesPersonalTic.Panel9Resize(Sender: TObject);
var
  Media: Word;
begin
  Media := Panel9.Width Div 2;
  Panel11.Width := Media;
  Panel12.Width := Panel9.Width - Media;
end;

procedure TFrmAsignacionesPersonalTic.PopupMenu1Popup(Sender: TObject);
begin
  CerrarPersonal1.Enabled := cdPersonal.Active and (cdPersonal.RecordCount > 0);
  ImprimirFichadePersonal1.Enabled := CerrarPersonal1.Enabled;
end;

procedure TFrmAsignacionesPersonalTic.Salir1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmAsignacionesPersonalTic.TabControl1Change(Sender: TObject);
var
  LocName : string;
begin
{
    // Verificar si ya se leyó le historiak previamente
    if Not YaLeido then
    begin
      // Verificar la fecha en la cual inician los registros
      Try
        Application.CreateForm(TFrmSelPeriodo, FrmSelPeriodo);
        FrmSelPeriodo.Texto.Caption.Text := 'Indique el periodo del cual desea obtener el historial de datos:';
        if FrmSelPeriodo.ShowModal = mrOk then
        begin
          // Modificar el registro de datos de acuerdo al periodo seleccionado
        end;
      Finally
        FrmSelPeriodo.Free;
      End;
    end;
}

  if tabcontrol1.TabIndex=0 then
  begin
     LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmResguardosAsignados.fr3';
      if FileExists(LocName) then
      begin
        frxReport1.LoadFromFile(LocName);
        frxReport1.ShowReport(TRUE);
      end
      else
        MessageDlg('No Existe el archivo: '+LocName,mtInformation,[mbOk],0);
  end
  else
  begin
      LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmResguardosDevueltos.fr3';
      if FileExists(LocName) then
      begin
        frxReport1.LoadFromFile(LocName);
        frxReport1.ShowReport(TRUE);
      end
      else
        MessageDlg('No Existe el archivo: '+LocName,mtInformation,[mbOk],0);
  end;


end;

end.
