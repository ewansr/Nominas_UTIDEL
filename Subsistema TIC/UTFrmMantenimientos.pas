unit UTFrmMantenimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Mask, JvExControls, JvLabel, dblookup,
  NxCollection, RxToolEdit, RXDBCtrl, DB, DBClient, UinteliDialog, JvExStdCtrls,
  JvBehaviorLabel, frxClass;

type
  TFrmMantenimientos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    JvLabel1: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    JvLabel2: TJvLabel;
    DBEdit3: TDBEdit;
    JvLabel3: TJvLabel;
    DBMemo1: TDBMemo;
    JvLabel4: TJvLabel;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    DBDateEdit1: TDBDateEdit;
    JvLabel8: TJvLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    JvLabel9: TJvLabel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    dsmantenimiento: TDataSource;
    cdmantenimiento: TClientDataSet;
    dsinsumoseleccionado: TDataSource;
    ComboBox1: TComboBox;
    cdultimomantto: TClientDataSet;
    dsultimomantto: TDataSource;
    Edit1: TEdit;
    JvBehaviorLabel1: TJvBehaviorLabel;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    JvLabel10: TJvLabel;
    NxButton3: TNxButton;
    JvLabel11: TJvLabel;
    Edit2: TEdit;
    cdrealizo: TClientDataSet;
    dsrealizo: TDataSource;
    Edit3: TEdit;
    DBEdit4: TDBEdit;
    JvLabel12: TJvLabel;
    CheckBox1: TCheckBox;
    cdasignado: TClientDataSet;
    dsasignado: TDataSource;
    frxImprimirMantto: TfrxReport;
    cdmanttoreporte: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipomantenimiento: string;
  end;

var
  FrmMantenimientos: TFrmMantenimientos;

implementation
uses
  ClientModuleUnit1, UTFrmPersonal, UTFrmSolicitaPersonal, DMTicRepModuleUnit, xDatabase;


{$R *.dfm}

procedure TFrmMantenimientos.CheckBox1Click(Sender: TObject);
begin
    if checkbox1.Checked=true then
    begin
      dbedit4.Enabled:=true;
    end
    else
    begin
      dbedit4.Enabled:=false;
    end;
end;

procedure TFrmMantenimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Eliminarconjunto([cdultimomantto.ProviderName, cdmantenimiento.ProviderName]);
end;

procedure TFrmMantenimientos.FormShow(Sender: TObject);
var
  ultimomantto : integer;
begin
  try
    ClientModule1.ComponentColor(self);
    if Not CrearConjunto(cdultimomantto, 'tic_mantenimientos', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      cdultimomantto.Open;
      ultimomantto:=cdultimomantto.FieldByName('ultimomantto').AsInteger;
      ultimomantto:=ultimomantto+1;

      if Not CrearConjunto(cdmantenimiento, 'tic_mantenimientos', ccUpdate) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdmantenimiento, 'idmantenimiento', [-9]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos del Catalogo de Articulos');
      cdmantenimiento.Open;
      cdmantenimiento.Append;
      cdmantenimiento.FieldByName('idmantenimiento').AsInteger:=0;

      if tipomantenimiento='PREVENTIVO' then
      begin
       cdmantenimiento.FieldByName('idmantenimiento').AsInteger:=0;
       cdmantenimiento.FieldByName('codigomantenimiento').AsString:='MAN/PREV-'+inttostr(ultimomantto)+'-'+Formatdatetime('yyyy', now);
       edit1.Text:=cdmantenimiento.FieldByName('codigomantenimiento').AsString;
       cdmantenimiento.FieldByName('tipommanto').AsString:='PREVENTIVO';
       combobox1.ItemIndex:=1;
      end
      else
      begin
        cdmantenimiento.FieldByName('idmantenimiento').AsInteger:=0;
        cdmantenimiento.FieldByName('codigomantenimiento').AsString:='MAN/CORRECT-'+inttostr(ultimomantto)+'-'+Formatdatetime('yyyy', now);
        edit1.Text:=cdmantenimiento.FieldByName('codigomantenimiento').AsString;
        cdmantenimiento.FieldByName('tipommanto').AsString:='CORRECTIVO';
        combobox1.ItemIndex:=0;
      end;
      cdmantenimiento.FieldByName('numinsumoespecificado').AsInteger:=dsinsumoseleccionado.DataSet.FieldByName('numinsumoespecificado').AsInteger;
      cdmantenimiento.FieldByName('codigoinsumo').AsString:=dsinsumoseleccionado.DataSet.FieldByName('Codigo').AsString;
      cdmantenimiento.FieldByName('fechamantto').AsDateTime:=now;

      if dsinsumoseleccionado.DataSet.FieldByName('banderaasig').AsInteger > 0 then
      begin
        cdmantenimiento.FieldByName('asignado').AsInteger:=dsinsumoseleccionado.DataSet.FieldByName('banderaasig').AsInteger;
        edit2.Text:=dsinsumoseleccionado.DataSet.FieldByName('asignado').AsString;
      end
      else
      begin
        cdmantenimiento.FieldByName('asignado').AsInteger:=-5;
        edit2.Text:=dsinsumoseleccionado.DataSet.FieldByName('asignado').AsString;
      end;
      checkbox1.Checked:=false;
     cdmantenimiento.FieldByName('pospuesto').AsInteger:=0;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mterror, [mbOK], 0);
  end;
end;

procedure TFrmMantenimientos.NxButton1Click(Sender: TObject);
begin
  cdmantenimiento.CancelUpdates;
  close;
end;

procedure TFrmMantenimientos.NxButton2Click(Sender: TObject);
  var
    ultimoidmantto : integer;
    LocName : string;
begin
  try
    if Length(Trim(dbmemo3.Text)) = 0 then
      raise Exception.Create('Debe de Llenar Las TareasRealizadas');

    if Length(Trim(dbmemo2.Text)) = 0 then
      raise Exception.Create('Debe de Llenar Las fallas que tenia el equipo');

    cdmantenimiento.Post;
    cdmantenimiento.ApplyUpdates(-1);
    ultimoidmantto:=ultimoid;

    if cdmanttoreporte.Active =false then
    begin
      if Not CrearConjunto(cdmanttoreporte, 'tic_mantenimientos', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdmanttoreporte, 'idmantenimiento', [ultimoidmantto]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Mantenimientos');
      cdmanttoreporte.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdmanttoreporte, 'idmantenimiento', [ultimoidmantto]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Mantenimientos');
      cdmanttoreporte.Refresh;
    end;

    InteliDialog.ShowModal('Se ha guardado el mantenimiento correctamente', '' + #10 + #10 + '', mtInformation, [mbOK], 0);

    TicRepModuleUnit.frxDBDMantenimientos.DataSet:=cdmanttoreporte;

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmMantenimiento.fr3';
    if FileExists(LocName) then
    begin
      frxImprimirMantto.LoadFromFile(LocName);
      frxImprimirMantto.ShowReport(TRUE);
    end
    else
    begin
      InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
    end;
    close;
  except
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mterror, [mbOK], 0);
  end;
end;

procedure TFrmMantenimientos.NxButton3Click(Sender: TObject);
var
 registro: TLista;
  Resultado: TModalResult;
  IdLlave: String;
begin
    Resultado := mrCancel;
      Try
        Try
          if cdrealizo.Active=false then
          begin
            if Not CrearConjunto(cdrealizo, 'nuc_personal', ccCatalog) then
              raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
            if Not CargarDatosFiltrados(cdrealizo, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdrealizo.Open;
          end
          else
          begin
            if Not CargarDatosFiltrados(cdrealizo, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdrealizo.Open;
          end;
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
            cdrealizo.Close;   // Cerrar primero el registro de personal que pudiera estar activo

            if Resultado = mrOk then
            begin
              // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
              if Not CargarDatosFiltrados(cdrealizo, 'CodigoPersonal', [IdLlave]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
            end
            else
              if Not CargarDatosFiltrados(cdrealizo, 'idpersonal', [registro.Valor['idpersonal']]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
              cdrealizo.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado
              edit3.Text:=cdrealizo.FieldByName('Nombres').AsString+' '+cdrealizo.FieldByName('APaterno').AsString+' '+cdrealizo.FieldByName('AMaterno').AsString+
              ' / '+cdrealizo.FieldByName('titulocargo').AsString+' / '+cdrealizo.FieldByName('titulodepartamento').AsString;
              cdmantenimiento.FieldByName('realizo').AsInteger:=cdrealizo.FieldByName('idpersonal').AsInteger;
          end;
        Finally
          Screen.Cursor := crDefault;
        End;
      except
        on e:exception do
          InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
      end;

end;

end.
