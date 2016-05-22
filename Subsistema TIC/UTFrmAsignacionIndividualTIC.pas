unit UTFrmAsignacionIndividualTIC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExStdCtrls, JvBehaviorLabel, NxCollection,
  Menus, DBCtrls, JvExControls, JvLabel, Mask, RxToolEdit, RXDBCtrl, DB,
  DBClient, UTFrmPersonal, UinteliDialog, UTFrmSolicitaPersonal, dblookup;

type
  TFrmAsignacionIndividualTIC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    JvBehaviorLabel1: TJvBehaviorLabel;
    Splitter1: TSplitter;
    Panel8: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Btn_Archivo: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    SeleccionarPersonal1: TMenuItem;
    Asignar1: TMenuItem;
    Salir1: TMenuItem;
    NxButton2: TNxButton;
    asignar: TNxButton;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    dsinsumo: TDataSource;
    selpersonal: TNxButton;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel6: TJvLabel;
    DBMemo1: TDBMemo;
    Edit1: TEdit;
    DTFechaAsignacion: TDBDateEdit;
    Edit2: TEdit;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    NxButton1: TNxButton;
    Panel9: TPanel;
    JvLabel2: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel4: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    NxButton5: TNxButton;
    cdrecibio: TClientDataSet;
    dsrecibio: TDataSource;
    cdentrego: TClientDataSet;
    cdaprobo: TClientDataSet;
    cdenterado: TClientDataSet;
    dsentrego: TDataSource;
    dsaprobo: TDataSource;
    dsenterado: TDataSource;
    cdresguardos: TClientDataSet;
    cdresguardodetalle: TClientDataSet;
    dsresguardos: TDataSource;
    dsresguardodetalle: TDataSource;
    cdnumultimocodigo: TClientDataSet;
    dsnumultimocodigo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure SeleccionarPersonal1Click(Sender: TObject);
    procedure Asignar1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_ArchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure asignarClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAsignacionIndividualTIC: TFrmAsignacionIndividualTIC;

implementation
  uses
    ClientModuleUnit1, xDatabase;
{$R *.dfm}

procedure TFrmAsignacionIndividualTIC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmAsignacionIndividualTIC.FormShow(Sender: TObject);
var
  ultimocodigo : integer;
begin
  try
    ClientModule1.ComponentColor(self);
    if Not CrearConjunto(cdresguardos, 'tic_resguardos', ccUpdate) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardos, 'idticresguardos', [-9]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdresguardos.Open;

{
      if Not CrearConjunto(cdresguardodetalle, 'tic_resguardosdetalle', ccUpdate) then
        raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdresguardodetalle, 'idresguardodetalle', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresguardodetalle.Open;
}

    if Not CrearConjunto(cdnumultimocodigo, 'tic_asignacionestic_numultimocodigo', ccCatalog) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Subgrupos, es probable que exista un error de comunicación con el servidor de la base de datos');
    cdnumultimocodigo.Open;

    if Not CrearConjunto(cdrecibio, 'nuc_personal', ccCatalog) then
     raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdrecibio, 'idpersonal', [-9]) then
     raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdrecibio.Open;

    if Not CrearConjunto(cdentrego, 'nuc_personal', ccCatalog) then
     raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdentrego, 'idpersonal', [-9]) then
     raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdentrego.Open;

    cdresguardos.Append;

    cdresguardos.FieldByName('codigoticresguardo').AsString:='ENTR-TIC-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);
    cdresguardos.FieldByName('numresguardo').AsInteger:=cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1;
    cdresguardos.FieldByName('tiporesguardo').AsString:='ENTREGA';
    cdresguardos.FieldByName('idusuario').AsInteger:=ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    edit1.Text:='ENTR-TIC-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);
{
      cdresguardos.Append;
      cdresguardos.FieldByName('idticresguardos').AsInteger:=0;
      cdresguardos.FieldByName('codigoticresguardo').AsString:='AS-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);;
      Edit1.Text:='AS-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);
      ultimocodigo:=cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1;
      cdresguardos.FieldByName('numresguardo').AsInteger:=ultimocodigo;

      cdresguardodetalle.Append;
      cdresguardodetalle.FieldByName('idresguardodetalle').AsInteger:=0;
      cdresguardodetalle.FieldByName('fechaasig').AsDateTime:=now;}
    except
      on e:exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error de comunicación con el servidor de datos', 'No se ha podido establecer lo siguiente: ' + e.message, mtError, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;


    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmAsignacionIndividualTIC.NxButton1Click(Sender: TObject);
var
  registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
Resultado := mrCancel;
  Try
    Try
      if Not CargarDatosFiltrados(cdentrego, 'idpersonal', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdentrego.Open;
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
        cdentrego.Close;   // Cerrar primero el registro de personal que pudiera estar activo

        if Resultado = mrOk then
        begin
          // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
          if Not CargarDatosFiltrados(cdentrego, 'CodigoPersonal', [IdLlave]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
        end
        else
          if Not CargarDatosFiltrados(cdentrego, 'idpersonal', [registro.Valor['idpersonal']]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');

        cdentrego.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
        //cdresguardos.FieldByName('recibio').AsInteger:=cdrecibio.FieldByName('idpersonal').AsInteger;
        edit2.Text:=cdrecibio.FieldByName('NombreCompleto').AsString+' / '+cdrecibio.FieldByName('titulocargo').AsString+' / '+cdrecibio.FieldByName('titulodepartamento').AsString;
        cdresguardos.FieldByName('entrego').AsInteger:=cdrecibio.FieldByName('idpersonal').AsInteger;
        //ingresar firmante...............................................
        if cdaprobo.Active = false then
        begin
          if Not CrearConjunto(cdaprobo, 'tic_firmresguardos', ccCatalog) then
            raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
          if Not CargarDatosFiltrados(cdaprobo, 'iddepartamento, nivel', [cdentrego.FieldByName('iddepartamento').AsInteger, cdentrego.FieldByName('nivel').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
              cdaprobo.Open;
          end
          else
          begin
            if Not CargarDatosFiltrados(cdaprobo, 'iddepartamento, nivel', [cdentrego.FieldByName('iddepartamento').AsInteger, cdentrego.FieldByName('nivel').AsInteger]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdaprobo.Refresh;
          end;
        //................................................................
      end;
    Finally
      Screen.Cursor := crDefault;
    End;
  except
    on e:exception do
      InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
  end;
end;

procedure TFrmAsignacionIndividualTIC.NxButton2Click(Sender: TObject);
begin
close;
end;

procedure TFrmAsignacionIndividualTIC.NxButton3Click(Sender: TObject);
var
 registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
{
    Resultado := mrCancel;
    Try
      Try
        if Not CargarDatosFiltrados(cdfirmante2, 'idpersonal', [-9]) then
          raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdfirmante2.Open;
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
          FrmPersonal.AdvToolPanelTab1.Visible := False;
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
          cdfirmante2.Close;   // Cerrar primero el registro de personal que pudiera estar activo

          if Resultado = mrOk then
          begin
            // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
            if Not CargarDatosFiltrados(cdfirmante2, 'CodigoPersonal', [IdLlave]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
          end
          else
            if Not CargarDatosFiltrados(cdfirmante2, 'idpersonal', [registro.Valor['idpersonal']]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');

          cdfirmante2.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
          edit3.Text:=cdfirmante2.FieldByName('Nombres').AsString+' '+cdfirmante2.FieldByName('apellidos').AsString;
          cdresguardos.FieldByName('firmante2').AsInteger:=cdfirmante2.FieldByName('idpersonal').AsInteger;
        end;
      Finally
        Screen.Cursor := crDefault;
      End;
    except
      on e:exception do
        InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
    end;

}
end;

procedure TFrmAsignacionIndividualTIC.NxButton4Click(Sender: TObject);
var
 registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
{
    Resultado := mrCancel;
    Try
      Try
        if Not CargarDatosFiltrados(cdresponsable, 'idpersonal', [-9]) then
          raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdresponsable.Open;
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
          FrmPersonal.AdvToolPanelTab1.Visible := False;
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
          cdresponsable.Close;   // Cerrar primero el registro de personal que pudiera estar activo

          if Resultado = mrOk then
          begin
            // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
            if Not CargarDatosFiltrados(cdresponsable, 'CodigoPersonal', [IdLlave]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
          end
          else
            if Not CargarDatosFiltrados(cdresponsable, 'idpersonal', [registro.Valor['idpersonal']]) then
              raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');

          cdresponsable.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
          edit4.Text:=cdresponsable.FieldByName('Nombres').AsString+' '+cdresponsable.FieldByName('apellidos').AsString;
          cdresguardos.FieldByName('responsable').AsInteger:=cdresponsable.FieldByName('idpersonal').AsInteger;
        end;
      Finally
        Screen.Cursor := crDefault;
      End;
    except
      on e:exception do
        InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
    end;


}
end;

procedure TFrmAsignacionIndividualTIC.NxButton5Click(Sender: TObject);
var
  registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
Resultado := mrCancel;
  Try
    Try
      if Not CargarDatosFiltrados(cdrecibio, 'idpersonal', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdrecibio.Open;
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
        cdrecibio.Close;   // Cerrar primero el registro de personal que pudiera estar activo

        if Resultado = mrOk then
        begin
          // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
          if Not CargarDatosFiltrados(cdrecibio, 'CodigoPersonal', [IdLlave]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
        end
        else
          if Not CargarDatosFiltrados(cdrecibio, 'idpersonal', [registro.Valor['idpersonal']]) then
            raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');

        cdrecibio.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
        cdresguardos.FieldByName('recibio').AsInteger:=cdrecibio.FieldByName('idpersonal').AsInteger;
        //ingresar firmante...............................................
        if cdaprobo.Active = false then
        begin
          if Not CrearConjunto(cdenterado, 'tic_firmresguardos', ccCatalog) then
            raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
          if Not CargarDatosFiltrados(cdenterado, 'iddepartamento, nivel', [cdrecibio.FieldByName('iddepartamento').AsInteger, cdrecibio.FieldByName('nivel').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
              cdenterado.Open;
          end
          else
          begin
            if Not CargarDatosFiltrados(cdenterado, 'iddepartamento, nivel', [cdrecibio.FieldByName('iddepartamento').AsInteger, cdrecibio.FieldByName('nivel').AsInteger]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdenterado.Refresh;
          end;
        //................................................................
      end;
    Finally
      Screen.Cursor := crDefault;
    End;
  except
    on e:exception do
      InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
  end;

end;

procedure TFrmAsignacionIndividualTIC.Salir1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmAsignacionIndividualTIC.SeleccionarPersonal1Click(
  Sender: TObject);
begin
  selpersonal.Click;
end;

procedure TFrmAsignacionIndividualTIC.Asignar1Click(Sender: TObject);
begin
  asignar.Click;
end;

procedure TFrmAsignacionIndividualTIC.asignarClick(Sender: TObject);
var
  idresguardo, numultimoresguardo : integer;

begin
  {
    try
     if DTFechaAsignacion.GetTextLen=0  then
       raise Exception.Create('No se ha asignado fecha de resguardo');

     {
       if cdpersonal.FieldByName('idpersonal').AsInteger=0 then
          raise Exception.Create('No ha seleccionado un personal al cual asignar el insumo');
    }

 {    if cdresguardos.FieldByName('firmante1').AsInteger=0 then
       raise Exception.Create('No ha seleccionado el primer firmante');

     if cdresguardos.FieldByName('firmante2').AsInteger=0 then
       raise Exception.Create('No ha seleccionado el segundo firmante');

     if cdresguardos.FieldByName('responsable').AsInteger=0 then
       raise Exception.Create('No ha seleccionado el responsable');
     numultimoresguardo := cdnumultimocodigo.FieldByName('ultimo').AsInteger;
     cdresguardos.Post;
     cdresguardos.ApplyUpdates(-1);
     if Not CargarDatosFiltrados(cdresguardos, 'numresguardo', [numultimoresguardo]) then
       raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
     cdresguardos.Refresh;

     cdresguardodetalle.FieldByName('IdAcceso').AsInteger:=1;
     cdresguardodetalle.FieldByName('idresguardodetalle').AsInteger:=0;
     cdresguardodetalle.FieldByName('idpersonal').AsInteger:=dspersonal.DataSet.FieldByName('idpersonal').AsInteger;
     cdresguardodetalle.FieldByName('codigoinsumo').AsString:=dsinsumo.DataSet.FieldByName('Codigo').AsString;
     cdresguardodetalle.FieldByName('fechavigencia').Clear;
     cdresguardodetalle.FieldByName('idarticulo').AsInteger:=dsinsumo.DataSet.FieldByName('idarticulo').AsInteger;
     cdresguardodetalle.FieldByName('numinsumoespecificado').AsInteger:=dsinsumo.DataSet.FieldByName('numinsumo').AsInteger;
     cdresguardodetalle.FieldByName('idresguardo').AsInteger:=cdresguardos.FieldByName('idticresguardos').AsInteger;
     cdresguardodetalle.FieldByName('devcomentarios').AsString:='';
     cdresguardodetalle.Post;
     cdresguardodetalle.ApplyUpdates(-1);
     InteliDialog.ShowModal('Los datos se han almacenado correctamente', '' + #10 + #10 + '', mtInformation, [mbOK], 0);
     except
     on e:exception do
         InteliDialog.ShowModal('Error al Guardar Los Datos de Asignacion', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
     end;
 }
  try
      cdresguardos.FieldByName('idticresguardos').AsInteger:=0;
      cdresguardos.FieldByName('area').AsString:='TIC';
      cdresguardos.Post;
      cdresguardos.ApplyUpdates(-1);
      idresguardo:=Ultimoid;

       if Not CrearConjunto(cdresguardodetalle, 'tic_resguardosdetalle', ccUpdate) then
        raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdresguardodetalle, 'idresguardodetalle', [-9]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresguardodetalle.Open;

      cdresguardodetalle.Append;
      cdresguardodetalle.FieldByName('IdAcceso').AsInteger:=1;
      cdresguardodetalle.FieldByName('idresguardodetalle').AsInteger:=0;
      cdresguardodetalle.FieldByName('idresguardoentrega').AsInteger:=idresguardo;
      cdresguardodetalle.FieldByName('idpersonal').AsInteger:=cdrecibio.FieldByName('idpersonal').AsInteger;
      cdresguardodetalle.FieldByName('codigoinsumo').AsString:=dsinsumo.DataSet.FieldByName('codigo').AsString;
      cdresguardodetalle.FieldByName('fechaasig').AsDateTime:=DTFechaAsignacion.Date;
      cdresguardodetalle.FieldByName('fechavigencia').Clear;
      cdresguardodetalle.FieldByName('idarticulo').AsInteger:=dsinsumo.DataSet.FieldByName('idarticulo').AsInteger;
      cdresguardodetalle.FieldByName('numinsumoespecificado').AsInteger:=dsinsumo.DataSet.FieldByName('numinsumoespecificado').AsInteger;
      cdresguardodetalle.FieldByName('idresguardorecibido').AsInteger:=-5;
      cdresguardodetalle.FieldByName('descripcioninsumo').AsString:=dsinsumo.DataSet.FieldByName('descripciontotal').AsString;
      cdresguardodetalle.Post;
      cdresguardodetalle.ApplyUpdates(-1);

      InteliDialog.ShowModal('Almacenamiento de datos', 'Los datos se han guardando correctamente' + '', mtInformation, [mbOK], 0);

  except
    on e:Inteligentexception do
      InteliDialog.ShowModal('Error al asignar insumo ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al asignar insumo ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;

end;

procedure TFrmAsignacionIndividualTIC.Btn_ArchivoClick(Sender: TObject);
var
  Point : Tpoint;
begin
   try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;
end.

