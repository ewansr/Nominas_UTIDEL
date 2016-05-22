unit UTFrmDevolucionesGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, NxCollection, DBCtrls, Mask, JvExControls, JvLabel,
  JvMemoryDataset, DB, DBClient, NxPageControl, Menus, UInteliDialog, NxColumns,
  NxDBColumns, RxToolEdit, RXDBCtrl, ComCtrls, frxClass;

type
  TFrmDevolucionesGeneral = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    nxbutto: TGroupBox;
    DBImage1: TDBImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    cdpersonal: TClientDataSet;
    cdrecibio: TClientDataSet;
    cdaprobo: TClientDataSet;
    cdenterado: TClientDataSet;
    cdinsumosasignados: TClientDataSet;
    cddetalleresguardos: TClientDataSet;
    memdevolverinsumos: TJvMemoryData;
    cdresguardos: TClientDataSet;
    dspersonal: TDataSource;
    dsrecibio: TDataSource;
    dsaprobo: TDataSource;
    dsenterado: TDataSource;
    dsinsumosasignados: TDataSource;
    dsdetalleresguardos: TDataSource;
    dsresguardos: TDataSource;
    dsmemdevolverinsumos: TDataSource;
    NxOptionButton1: TNxOptionButton;
    NxOptionButton2: TNxOptionButton;
    NxOptionButton3: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    PorPersonal1: TMenuItem;
    PorInsumo1: TMenuItem;
    Devolver1: TMenuItem;
    BorrarInsumoaDevolver1: TMenuItem;
    AgregarInsumoaDevolver1: TMenuItem;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    NxTabSheet2: TNxTabSheet;
    Panel3: TPanel;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    NextDBGrid1: TNextDBGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    NxButton1: TNxButton;
    Panel8: TPanel;
    GroupBox4: TGroupBox;
    NextDBGrid2: TNextDBGrid;
    Panel9: TPanel;
    Panel10: TPanel;
    GroupBox1: TGroupBox;
    Panel11: TPanel;
    Panel12: TPanel;
    NextDBGrid3: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    Edit2: TEdit;
    cdnumultimocodigo: TClientDataSet;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    DateTimePicker1: TDateTimePicker;
    DBMemo1: TDBMemo;
    JvLabel10: TJvLabel;
    frxReport1: TfrxReport;
    cdresguardosdevueltos: TClientDataSet;
    dsresguardosdevueltos: TDataSource;
    procedure PorPersonal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxOptionButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDevolucionesGeneral: TFrmDevolucionesGeneral;

implementation

uses
  ClientModuleUnit1, xDatabase, Frm_SelPeriodo, UTFrmSolicitaPersonal, UTfrmPersonal,
  DMTicRepModuleUnit;

{$R *.dfm}

procedure TFrmDevolucionesGeneral.FormShow(Sender: TObject);
begin
    ClientModule1.ComponentColor(self);
    memdevolverinsumos.Open;
    nxpagecontrol1.Visible:=false;
    panel4.Visible:=false;
    if Not CrearConjunto(cddetalleresguardos, 'tic_resguardosdetalle', ccUpdate) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cddetalleresguardos, 'idresguardodetalle', [-9]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cddetalleresguardos.Open;
    //memdevolverinsumos.LoadFromDataSet(cddetalleresguardos,0,jvmemorydataset.lmCopy);
{
      memdevolverinsumos.FieldDefs.Add('codigoinsumo', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('fechaasig', ftDate, 0, False);
      memdevolverinsumos.FieldDefs.Add('fechavigencia', ftDate, 0, False);
      memdevolverinsumos.FieldDefs.Add('IdAcceso', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('idarticulo', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('idpersonal', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('idresguardodetalle', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('idresguardoentrega', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('idresguardorecibido', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('numinsumoespecificado', ftInteger, 0, False);
      memdevolverinsumos.FieldDefs.Add('descripcioninsumo', ftString, 500, False);
      memdevolverinsumos.FieldDefs.Add('articulo', ftString, 200, False);
      memdevolverinsumos.FieldDefs.AddFieldDef;
}



    if Not CrearConjunto(cdresguardos, 'tic_resguardos', ccUpdate) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardos, 'idticresguardos', [-9]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdresguardos.Open;

    if Not CrearConjunto(cdnumultimocodigo, 'tic_asignacionestic_numultimocodigo', ccCatalog) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Subgrupos, es probable que exista un error de comunicación con el servidor de la base de datos');
    cdnumultimocodigo.Open;


end;

procedure TFrmDevolucionesGeneral.NextDBGrid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  try

    dsmemdevolverinsumos.DataSet:=nil;
    memdevolverinsumos.First;
    while not memdevolverinsumos.Eof do
    begin
      if memdevolverinsumos.FieldByName('idresguardodetalle').AsInteger=cdinsumosasignados.FieldByName('idresguardodetalle').AsInteger then
      raise Exception.Create('El Insumo ya se encuentra seleccionado');
      memdevolverinsumos.Next;
    end;
    memdevolverinsumos.Append;
    memdevolverinsumos.FieldByName('codigoinsumo').AsString:=cdinsumosasignados.FieldByName('codigoinsumo').AsString;
    memdevolverinsumos.FieldByName('fechaasig').AsDateTime:=cdinsumosasignados.FieldByName('fechaasig').AsDateTime;
    memdevolverinsumos.FieldByName('fechavigencia').AsDateTime:=cdinsumosasignados.FieldByName('fechavigencia').AsDateTime;
    memdevolverinsumos.FieldByName('IdAcceso').AsInteger:=cdinsumosasignados.FieldByName('IdAcceso').AsInteger;
    memdevolverinsumos.FieldByName('idarticulo').AsInteger:=cdinsumosasignados.FieldByName('idarticulo').AsInteger;
    memdevolverinsumos.FieldByName('idpersonal').AsInteger:=cdinsumosasignados.FieldByName('idpersonal').AsInteger;
    memdevolverinsumos.FieldByName('idresguardodetalle').AsInteger:=cdinsumosasignados.FieldByName('idresguardodetalle').AsInteger;
    memdevolverinsumos.FieldByName('idresguardoentrega').AsInteger:=cdinsumosasignados.FieldByName('idresguardoentrega').AsInteger;
    memdevolverinsumos.FieldByName('idresguardorecibido').AsInteger:=cdinsumosasignados.FieldByName('idresguardorecibido').AsInteger;
    memdevolverinsumos.FieldByName('numinsumoespecificado').AsInteger:=cdinsumosasignados.FieldByName('numinsumoespecificado').AsInteger;
    memdevolverinsumos.FieldByName('descripcioninsumo').AsString:=cdinsumosasignados.FieldByName('descripcioninsumo').AsString;
    memdevolverinsumos.FieldByName('articulo').AsString:=cdinsumosasignados.FieldByName('tituloarticulo').AsString;
    memdevolverinsumos.Post;
    dsmemdevolverinsumos.DataSet:=memdevolverinsumos;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
      dsmemdevolverinsumos.DataSet:=memdevolverinsumos;
    end;
  end;
end;

procedure TFrmDevolucionesGeneral.NxButton1Click(Sender: TObject);
var
  registro: TLista;
  Resultado: TModalResult;
  IdLlave, LocName: String;
begin
    Resultado := mrCancel;
      Try
        Try
          if cdrecibio.Active=false then
          begin
            if Not CrearConjunto(cdrecibio, 'nuc_personal', ccCatalog) then
              raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
            if Not CargarDatosFiltrados(cdrecibio, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdrecibio.Open;
          end
          else
          begin
            if Not CargarDatosFiltrados(cdrecibio, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdrecibio.Open;
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
              edit1.Text:=cdrecibio.FieldByName('Nombres').AsString+' '+cdrecibio.FieldByName('APaterno').AsString+' '+cdrecibio.FieldByName('AMaterno').AsString+
              ' / '+cdrecibio.FieldByName('titulocargo').AsString+' / '+cdrecibio.FieldByName('titulodepartamento').AsString;
              //ingresar firmante...............................................
              cdresguardos.FieldByName('recibio').AsInteger:=cdrecibio.FieldByName('idpersonal').AsInteger;
              if cdaprobo.Active = false then
              begin
                if Not CrearConjunto(cdaprobo, 'tic_firmresguardos', ccCatalog) then
                  raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
                if Not CargarDatosFiltrados(cdaprobo, 'iddepartamento, nivel', [cdrecibio.FieldByName('iddepartamento').AsInteger, cdrecibio.FieldByName('nivel').AsInteger]) then
                  raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
                cdaprobo.Open;
              end
              else
              begin
                if Not CargarDatosFiltrados(cdaprobo, 'iddepartamento, nivel', [cdrecibio.FieldByName('iddepartamento').AsInteger, cdrecibio.FieldByName('nivel').AsInteger]) then
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

procedure TFrmDevolucionesGeneral.NxButton3Click(Sender: TObject);
var
  idresguardo : integer;
  LocName : string;
begin
  try

    if memdevolverinsumos.RecordCount=0 then
    raise Exception.Create('Debe de seleccionar minimo 1 insumo para poder guardar el resguardo de entrada');

    cdresguardos.FieldByName('idticresguardos').AsInteger:=0;
    cdresguardos.Post;
    cdresguardos.ApplyUpdates(-1);
    idresguardo:=Ultimoid;

    memdevolverinsumos.First;
    while not memdevolverinsumos.Eof do
    begin
      if cddetalleresguardos.Active = false then
      begin
        if Not CrearConjunto(cddetalleresguardos, 'tic_resguardosdetalle', ccUpdate) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cddetalleresguardos, 'idresguardodetalle', [memdevolverinsumos.FieldByName('idresguardodetalle').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cddetalleresguardos.Open;
      end
      else
      begin
      if Not CargarDatosFiltrados(cddetalleresguardos, 'idresguardodetalle', [memdevolverinsumos.FieldByName('idresguardodetalle').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cddetalleresguardos.Refresh;
      end;
      cddetalleresguardos.Edit;
      if cddetalleresguardos.RecordCount>0 then
      begin
        cddetalleresguardos.FieldByName('fechavigencia').AsDateTime:=datetimepicker1.Date;
        cddetalleresguardos.FieldByName('idresguardorecibido').AsInteger:=idresguardo;
        cddetalleresguardos.Post;
        cddetalleresguardos.ApplyUpdates(-1);
      end;
      memdevolverinsumos.Next;
    end;
    cdinsumosasignados.Refresh;
    InteliDialog.ShowModal('Informacion Alm,acenada ', 'Se han guardado los datos correctamente', mtInformation, [mbOK], 0);

//..............................................................................
    if Not CrearConjunto(cdresguardosdevueltos, 'tic_resguardos_asignaciones', ccSelect) then
      raise InteligentException.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardosdevueltos, 'idticresguardos', [idresguardo]) then
      raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
    cdresguardosdevueltos.Open;

    TicRepModuleUnit.frxDBPersonal.DataSource:=dspersonal;
    TicRepModuleUnit.frxDBdevueltos.DataSource:=dsresguardosdevueltos;

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmValedeResguardoEntrega.fr3';
    if FileExists(LocName) then
    begin
      frxReport1.LoadFromFile(LocName);
      frxReport1.ShowReport(TRUE);
    end
    else
    begin
       InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
    end;
    close;

  except
    on e:exception do
      InteliDialog.ShowModal('No se pudo abrir al ventana de bsuqueda de personal','Por favor avise al administrador del sistema de este error', e.message, mterror, [mbOk], 0);
  end;

end;

procedure TFrmDevolucionesGeneral.NxOptionButton2Click(Sender: TObject);
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

procedure TFrmDevolucionesGeneral.PorPersonal1Click(Sender: TObject);
var
  registro: TLista;
  Resultado: TModalResult;
  IdLlave, LocName: String;
begin
    Resultado := mrCancel;
      Try
        Try
          if cdpersonal.Active=false then
          begin
            if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
              raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
            if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdpersonal.Open;
          end
          else
          begin
            if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [-9]) then
              raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
            cdpersonal.Open;
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
            cdpersonal.Close;   // Cerrar primero el registro de personal que pudiera estar activo

            if Resultado = mrOk then
            begin
              // Si ya se seleccionó el personal con la ventana de acceso directo se deberá leer este
              if Not CargarDatosFiltrados(cdpersonal, 'CodigoPersonal', [IdLlave]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
            end
            else
              if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [registro.Valor['idpersonal']]) then
                raise InteligentException.Create('No ha sido posible acceder a los datos del los Detalles Especificados');
              cdpersonal.Open;  // Abrir el registro del personal con los datos del nuevo empleado seleccionado

              //ingresar firmante...............................................
              if cdaprobo.Active = false then
              begin
                if Not CrearConjunto(cdenterado, 'tic_firmresguardos', ccCatalog) then
                  raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
                if Not CargarDatosFiltrados(cdenterado, 'iddepartamento, nivel', [cdpersonal.FieldByName('iddepartamento').AsInteger, cdpersonal.FieldByName('nivel').AsInteger]) then
                  raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
                cdenterado.Open;
              end
              else
              begin
                if Not CargarDatosFiltrados(cdenterado, 'iddepartamento, nivel', [cdpersonal.FieldByName('iddepartamento').AsInteger, cdpersonal.FieldByName('nivel').AsInteger]) then
                  raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
                cdenterado.Refresh;
              end;
              //.......Resguardos asignados....................................
              if cdinsumosasignados.Active =false then
              begin
                if Not CrearConjunto(cdinsumosasignados, 'tic_resguardos_asignaciones', ccCatalog) then
                  raise InteligentException.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
                if Not CargarDatosFiltrados(cdinsumosasignados, 'recibio', [cdpersonal.FieldByName('idpersonal').AsInteger]) then
                  raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
                cdinsumosasignados.Open;
              end
              else
              begin
                if Not CargarDatosFiltrados(cdinsumosasignados, 'recibio', [cdpersonal.FieldByName('idpersonal').AsInteger]) then
                  raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
                cdinsumosasignados.Refresh;
              end;
              //................................................................
          nxpagecontrol1.Visible:=true;
          panel4.Visible:=true;
          cdresguardos.Append;

          cdresguardos.FieldByName('codigoticresguardo').AsString:='DEV-TIC-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);;
          cdresguardos.FieldByName('area').AsString:='TIC';
          cdresguardos.FieldByName('tiporesguardo').AsString:='RECIBIDO';
          cdresguardos.FieldByName('numresguardo').AsInteger:=cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1;
          cdresguardos.FieldByName('entrego').AsInteger:=dspersonal.DataSet.FieldByName('idpersonal').AsInteger;
          cdresguardos.FieldByName('idusuario').AsInteger:=ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
          edit2.Text:='DEV-TIC-' + inttostr(cdnumultimocodigo.FieldByName('ultimo').AsInteger + 1)+'/'+formatdatetime('yyyy', now);
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
