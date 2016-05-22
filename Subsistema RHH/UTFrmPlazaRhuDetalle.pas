Unit UTFrmPlazaRhuDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NxCollection, Grids, DBGrids, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, JvExControls, JvLabel, Mask, DBCtrls,
  NxEdit, ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, pngimage,
  DB, DBClient, UIntelidialog, NxDBColumns, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, ExBar, UInfoPanel,
  JvMemoryDataset, AdvEdBtn, AdvGroupBox, AdvDateTimePicker,
  AdvDBDateTimePicker, AdvEdit, DBAdvEd, CurvyControls, AdvGlowButton,
  AdvOfficeImage, JvExExtCtrls, JvImage, Collections.Lists, NxVirtualColumn,
  Menus, AdvMenus, frxClass, frxDBSet, UControlExcepciones,
  UTFrmSeleccionarEmpleado;

type
  TFrmPlazaRhuDetalle = class(TForm)
    Panel1: TPanel;
    admi: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    JvLabel3: TJvLabel;
    btnCancelar: TNxButton;
    btnGuardar: TNxButton;
    cdplaza: TClientDataSet;
    cdplazadetalle: TClientDataSet;
    dsGrupoPlazas: TDataSource;
    dsPlazaDetalle: TDataSource;
    cdpersonal: TClientDataSet;
    pnlDatos: TPanel;
    mdGrupoPlazas: TJvMemoryData;
    mdPlazaDetalle: TJvMemoryData;
    edtCodigo: TDBAdvEdit;
    dtpFecha: TAdvDBDateTimePicker;
    dsPlaza: TDataSource;
    grp1: TAdvGroupBox;
    edtCodigoSolic: TAdvEditBtn;
    lbl1: TJvLabel;
    lbl2: TJvLabel;
    lblCargoHist: TJvLabel;
    lblDeptoHist: TJvLabel;
    img1: TImage;
    lblSolicitante: TJvLabel;
    lbl3: TJvLabel;
    btnCargarImagen: TAdvGlowButton;
    cdDeptos: TClientDataSet;
    img2: TJvImage;
    dsDeptos: TDataSource;
    pmnuEstado: TAdvPopupMenu;
    Vacante1: TMenuItem;
    Nodisponible1: TMenuItem;
    edtObservaciones: TDBRichEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    cdgruposplaza: TClientDataSet;
    cdborraractno: TClientDataSet;
    cddepartamentos: TClientDataSet;
    dsdepartamentos: TDataSource;
    frxReport1: TfrxReport;
    frxDBCdPersonal: TfrxDBDataset;
    frxDBOrganizacion: TfrxDBDataset;
    cdplazapersonal: TClientDataSet;
    frxDBplazapersonal: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure edtCodigoSolicKeyPress(Sender: TObject; var Key: Char);
    procedure cdplazaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCargarImagenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxVirtualColumn1GetText(Sender: TObject; const ACol,
      ARow: Integer; var Value: WideString);
    procedure mdPlazaDetalleAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtCodigoSolicClickBtn(Sender: TObject);
  private
    { Private declarations }
    IdGrupo: Integer;
    Contador : Integer;
    FExBar: TExBar;
    ListaProc: TStringListX;
    IndicesGrupos : Tstringlist;
    FExSplitter: TSplitter;
    ListaBorrar: TList<Integer>;
    cdBuscaCliente: TClientDataSet;
    procedure ItemClick(Sender: TObject; Id: Integer);
    procedure AgregarGrupoPlazas;
    procedure EliminarGrupoPlazas;
    procedure AgregarPlaza;
    procedure EliminarPlaza;
    procedure ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure SeleccionarEmpleado;
  public
    IdOrganizacion: Integer;
    idPlaza: Integer;
    IdDepartamento: Integer;
    TituloDepartamento: String;
  end;

var
  FrmPlazaRhuDetalle: TFrmPlazaRhuDetalle;

implementation

uses
  ClientModuleUnit1, xDatabase,Frm_SelPeriodo, UTFrmSolicitaPersonal,
  UTFrmPersonal, UTFrmGrupoPlazas, nuc_genericclasses, UTFrmCargaImagen,
  rhh_genericclasses, StrUtils, UtFrmEditPlazaDetalle;

{$R *.dfm}


procedure TFrmPlazaRhuDetalle.AgregarGrupoPlazas;
Var
  i: Integer;
begin
  // Validar que ya se haya indicado un solicitante para asegurarse de tener cargado un listado de departamentos posibles
  if cdPlaza.FieldByName('idDepartamentoSolicitante').AsInteger <= 0 then
  begin
    InteliDialog.ShowModal('Atención','No se ha indicado un solicitante valido.',
          'No se ha indicado un solicitante valido, o bien el indicado no tiene asignado un departamento valido' +
          #10 + 'Verifique e intente nuevamente.', mtInformation, [mbOK],0);
          Exit;
  end;

  Try
    Application.CreateForm(TFrmGrupoPlazas, FrmGrupoPlazas);
    if FrmGrupoPlazas.ShowModal = mrOk Then
    begin
      IndicesGrupos.Add(inttostr(IdGrupo));
      mdGrupoPlazas.Append;
      mdGrupoPlazas.FieldByName('IdOrganizacion').AsInteger := IdOrganizacion;
      mdGrupoPlazas.FieldByName('idgrupo').AsInteger := IdGrupo;
      mdGrupoPlazas.FieldByName('idcargo').AsInteger := ClientModule1.cdCargo.FieldByname('IdCargo').AsInteger;
      mdGrupoPlazas.FieldByName('codigocargo').AsString := ClientModule1.cdCargo.FieldByname('CodigoCargo').AsString;
      mdGrupoPlazas.FieldByName('titulocargo').AsString := ClientModule1.cdCargo.FieldByname('TituloCargo').AsString;
      mdGrupoPlazas.FieldByName('cantidad').AsInteger := FrmGrupoPlazas.edtCantidad.IntValue;
      mdGrupoPlazas.Post;

      for i := 1 to FrmGrupoPlazas.edtCantidad.IntValue do
      begin
        with mdPlazaDetalle do
        begin
          Append;
          FieldByName('IdGrupo').AsInteger := IdGrupo;
          FieldByName('IdPlazaDetalle').AsInteger := 0;
          FieldByName('IdOrganizacion').AsInteger := IdOrganizacion;
          FieldByName('IdPlaza').Assign(cdPlaza.FieldByName('IdPlaza'));
          FieldByName('CodigoPlaza').Assign(cdPlaza.FieldByName('CodigoPlaza'));
          FieldByName('CodigoPlazaDetalle').AsString := 'N/A';
          FieldValues['IdDepartamento'] := IdDepartamento; //cdplaza.FieldValues['IdDepartamentoHist'];
          FieldValues['codigodepartamento']:= '-';
          //FieldValues['titulodepartamento']:= TituloDepartamento;
          FieldValues['titulodepartamento']:= ' ';
          FieldByName('TituloSalario').AsString := '*';
          FieldByName('Salario').AsFloat := 0;
          FieldValues['IdCargo']:= mdGrupoPlazas.FieldByName('idcargo').AsInteger;
          FieldValues['CodigoCargo']:= mdGrupoPlazas.FieldByName('CodigoCargo').AsString;
          FieldValues['TituloCargo']:= mdGrupoPlazas.FieldByName('TituloCargo').AsString;
          FieldValues['IdPersonal']:= -5;
          FieldValues['IdUsuario'] := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
          FieldValues['Fecha']:= date;
          FieldValues['FechaRequerido']:= FrmGrupoPlazas.dtpFechaReq.Date;
          FieldValues['FechaContratacion']:= null;
          FieldValues['Activo']:= 'Si';
          FieldValues['Vacante']:='Disponible';
          FieldValues['ExperienciaMinima'] := 0;
          FieldValues['UnidadExperiencia'] := 'Mes';
          FieldValues['CodigoPersonal'] := '-9';
          FieldValues['CodigoOrganizacion'] := '-9';
          //FieldValues['IdSalario']:=FrmGrupoPlazas.idsalario;
          Post;
        end;
      end;
      Inc(IdGrupo);
    end;
  Finally
    FrmGrupoPlazas.Free;
  End;
end;

procedure TFrmPlazaRhuDetalle.EliminarGrupoPlazas;
Var
  RegAnt, idgrupo, RegantGP: Integer;
begin
  if mdPlazaDetalle.RecNo > 0 then
  begin
      idgrupo:=mdPlazaDetalle.FieldByName('idgrupo').AsInteger;

    if InteliDialog.ShowModal('Confirmación',
          Format('¿Desea eliminar los %d registros correspondientes al cargo "%s"', [mdGrupoPlazas.FieldByName('Cantidad').AsInteger, mdGrupoPlazas.FieldByName('titulocargo').AsString])
          + #10 +  'agregados recientemente?',
            'Confirmar eliminación', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      indicesgrupos.Delete(indicesgrupos.IndexOf(inttostr(mdPlazaDetalle.FieldByName('idgrupo').AsInteger)));
      RegAnt := mdPlazaDetalle.RecNo;
      mdgrupoplazas.Delete;
      mdPlazaDetalle.First;
      while not mdPlazaDetalle.eof do
      begin
        if mdPlazaDetalle.FieldByName('idgrupo').AsInteger = idgrupo then
        begin
          ListaBorrar.Add(mdPlazaDetalle.FieldByName('idplazadetalle').AsInteger);
          mdPlazaDetalle.Delete
        end
        else
          mdPlazaDetalle.Next;
      end;
    end;
  end
  else
    InteliDialog.ShowModal('Error','No se ha seleccionado un registro válido de grupos','Nada se ha eliminado.',mtError,[mbOK],0);
end;

procedure TFrmPlazaRhuDetalle.AgregarPlaza;
Var
  Frm: TFrmGrupoPlazas;
begin
  // Validar que ya se haya indicado un solicitante para asegurarse de tener cargado un listado de departamentos posibles
  if cdPlaza.FieldByName('idDepartamentoSolicitante').AsInteger <= 0 then
  begin
    InteliDialog.ShowModal('Atención','No se ha indicado un solicitante valido.',
          'No se ha indicado un solicitante valido, o bien el indicado no tiene asignado un departamento valido' +
          #10 + 'Verifique e intente nuevamente.', mtInformation, [mbOK],0);
          Exit;
  end;
  Frm := TFrmGrupoPlazas.Create(nil);
  Frm.edtCantidad.IntValue := 1;
  Frm.edtCantidad.Enabled := false;
  if Frm.ShowModal = mrOk then
  begin
    with mdPlazaDetalle do
    begin
      Append;
      FieldByName('IdGrupo').AsInteger := Contador;
      FieldByName('IdPlazaDetalle').AsInteger := 0;
      FieldByName('IdPlaza').Assign(cdPlaza.FieldByName('IdPlaza'));
      FieldByName('CodigoPlaza').Assign(cdPlaza.FieldByName('CodigoPlaza'));
      FieldByName('CodigoPlazaDetalle').AsString := 'N/A';
      FieldValues['IdDepartamento'] := cdplaza.FieldByName('IdDepartamentoSolicitante').AsInteger;
      FieldValues['codigodepartamento']:= '-';
      FieldValues['titulodepartamento']:= lblDeptoHist.Caption;
      FieldValues['IdCargo']:= ClientModule1.cdCargo.FieldByName('IdCargo').AsInteger;
      FieldValues['CodigoCargo']:= ClientModule1.cdCargo.FieldByName('CodigoCargo').AsString;
      FieldValues['TituloCargo']:= ClientModule1.cdCargo.FieldByName('TituloCargo').AsString;
      FieldValues['IdPersonal']:= -5;
      FieldValues['IdUsuario'] := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
      FieldValues['Fecha']:= date;
      FieldValues['FechaRequerido']:= Frm.dtpFechaReq.Date;
      FieldValues['FechaContratacion']:= null;
      FieldValues['Activo']:= 'Si';
      FieldValues['Vacante']:='Disponible';
      FieldValues['ExperienciaMinima'] := 0;
      FieldValues['UnidadExperiencia'] := 'Mes';


      Post;
      mdplazadetalle.SortOnFields('IdCargo', false, false);
      IndicesGrupos.Add(inttostr(Contador));
      Contador:=Contador-1;
    end;
  end;
  Frm.Free;
end;

procedure TFrmPlazaRhuDetalle.EliminarPlaza;
var
  idgrupo, regpergrupos, registro : integer;

begin
  regpergrupos := 0;
  registro:=0;
  // Validar que la plaza no esté asignada a personal
  if mdPlazaDetalle.FieldByName('idpersonal').AsInteger > 0 then
  begin
    InteliDialog.ShowModal('Error','No se puede eliminar una plaza ya asignada a un personal.','',mtError,[mbOK],0);
    exit;
  end;

  cdDeptos.Locate('iddepartamento',mdPlazaDetalle.FieldByName('iddepartamento').AsInteger,[]);

  if InteliDialog.ShowModal('Confirmación',
    format('¿Eliminar el cargo "%s" asignado al departamento "%s"?',[mdPlazaDetalle.FieldByName('titulocargo').AsString, cdDeptos.FieldByName('titulodepartamento').AsString]),
    mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
      if mdgrupoplazas.FieldByName('cantidad').AsInteger = 1 then
      begin
        mdgrupoplazas.Delete;
        ListaBorrar.Add(mdPlazaDetalle.FieldByName('idplazadetalle').AsInteger);
        mdPlazaDetalle.Delete;
        indicesgrupos.Delete(indicesgrupos.IndexOf(inttostr(idgrupo)));
      end
      else
      begin
        mdgrupoplazas.Edit;
        mdgrupoplazas.FieldByName('cantidad').AsInteger:=mdgrupoplazas.FieldByName('cantidad').AsInteger-1;
        mdgrupoplazas.Post;
        ListaBorrar.Add(mdPlazaDetalle.FieldByName('idplazadetalle').AsInteger);
        mdplazadetalle.Delete;
      end;
  end;

end;


procedure TFrmPlazaRhuDetalle.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPlazaRhuDetalle.btnGuardarClick(Sender: TObject);
Var
  RegNuevo: Boolean;
  faltadep:boolean;
  i: Integer;
  cdUpd: TClientDataSet;
  cdLog: TClientDataSet;
  NombreCampo: String;
  Aplicar: Boolean;
  dummy: TField;
  RegLog: TListaCambios;

  procedure GrabarLog(Var ARegLog: TListaCambios; ACampo, AOldValue, ANewValue: variant);
  Var
    CamposTrans: String;
    Reg: TLista;
    OldValue, NewValue: String;
  begin
    // Checar cuales son los campos que necesitan ser transformados
    CamposTrans := '.idSolicitante.idDepartamentoSolicitante.iddepartamento.idcargo.idpersonal.';
    if AnsiContainsText(CamposTrans, '.'+ACampo+'.') then
    begin
      if AnsiCompareText(ACampo,'idsolicitante') = 0 then
      begin
        Reg := ObtenerRegistroXId('nuc_usuario','idusuario',AOldValue);
        OldValue := NVL(Reg['Apellidos'],'') + ' ' + NVL(Reg['Nombres'],'');
        Reg := ObtenerRegistroXId('nuc_usuario','idusuario',ANewValue);
        NewValue := NVL(Reg['Apellidos'],'') + ' ' + NVL(Reg['Nombres'],'');
      end
      else
      if (AnsiCompareText(ACampo,'idDepartamentoSolicitante') = 0) OR (AnsiCompareText(ACampo,'iddepartamento') = 0) then
      begin
        Reg := ObtenerRegistroXId('nuc_departamento','iddepartamento',AOldValue);
        OldValue := NVL(Reg['titulodepartamento'],'');
        Reg := ObtenerRegistroXId('nuc_departamento','iddepartamento',ANewValue);
        NewValue := NVL(Reg['titulodepartamento'],'');
      end
      else
      if AnsiCompareText(ACampo,'idcargo') = 0 then
      begin
        Reg := ObtenerRegistroXId('nuc_cargo','idcargo',AOldValue);
        OldValue := NVL(Reg['TituloCargo'],'');
        Reg := ObtenerRegistroXId('nuc_cargo','idcargo',ANewValue);
        NewValue := NVL(Reg['TituloCargo'],'');
      end
      else
      if AnsiCompareText(ACampo,'idPersonal') = 0 then
      begin
        if AOldValue = -5 then
          OldValue := 'Vacante'
        else
          OldValue := 'Vacante no disponible';

        if ANewValue = -5 then
          NewValue := 'Vacante'
        else
          NewValue := 'Vacante no disponible';
      end
    end
    else
    begin
      OldValue := VarToStr(AOldValue);
      NewValue := VarToStr(ANewValue);
    end;
    ARegLog.Add(ACampo, OldValue, NewValue);
  end;


begin
  try
    try
      faltadep:=false;
      mdplazadetalle.First;
      while not mdplazadetalle.Eof  do
      begin
        if mdplazadetalle.FieldByName('iddepartamento').AsInteger  < 1 then
        begin
          faltadep:=true;
        end;
      mdplazadetalle.Next;
      end;
      if faltadep = true then
      raise InteligentException .Create('Hay plaza sin departamento asignado');

      RegLog := TListaCambios.Create;
      cdLog := TClientDataSet.Create(nil);
      CrearConjunto(cdLog, 'rhu_plazalog', ccUpdate);
      CargarDatosFiltrados(cdLog, 'idplazalog', [-9]);
      cdLog.Open;
      RegNuevo := (cdplaza.State = dsInsert);
      // Guardar el encabezado
      //cdplaza.FieldByName('IdOrganizacion').AsInteger:=clientmodule1.cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
      cdplaza.FieldByName('IdOrganizacion').AsInteger:=IdOrganizacion;
      cdplaza.Post;
      cdplaza.ApplyUpdates(0);
      idPlaza := 0;
      // si fue un registro nuevo, obtener el id que se le asignó
      if RegNuevo then
      begin
        idplaza := UltimoId;
      end
      else
        idplaza := cdplaza.FieldByName('idPlaza').AsInteger;

      if idPlaza = 0 then
      begin
        raise Exception.Create('Error al grabar el encabezado');
      end;

      // Traer el registro de encabezado si este es nuevo
      if RegNuevo then
      begin
        CargarDatosFiltrados(cdPlaza,'idplaza',[idplaza]);
        cdPlaza.Refresh;

        // Llenar los datos de la tabla de detalle dependientes del encabezado
        mdPlazaDetalle.First;
        while not mdPlazaDetalle.eof do
        begin
          mdPlazaDetalle.Edit;
          mdPlazaDetalle.FieldByName('idplaza').AsInteger := idPlaza;
          mdPlazaDetalle.Next;
        end;
      end
      else  // Si no es nuevo, verificar que campos se cambiaron y registrarlos
      begin
        for i := 0 to cdplaza.FieldCount - 1 do
        begin
          NombreCampo := cdplaza.FieldDefs.Items[i].Name;
          if NombreCampo='Observaciones' then
          begin
              GrabarLog(RegLog,NombreCampo,cdplaza.FieldByName(NombreCampo).OldValue,cdplaza.FieldByName(NombreCampo).NewValue);
          end
          else
          begin
            if cdplaza.FieldByName(NombreCampo).OldValue <> cdplaza.FieldByName(NombreCampo).NewValue then
            begin
              GrabarLog(RegLog,NombreCampo,cdplaza.FieldByName(NombreCampo).OldValue,cdplaza.FieldByName(NombreCampo).NewValue);
            end;
          end;
        end;
      end;

      // Si se grabaron cambios en el encabezado, hacer el log
      if RegLog.count > 0 then
      begin
        cdLog.Append;
        cdLog.FieldByName('idplazalog').AsInteger := 0;
        cdLog.FieldByName('tabla').AsString := 'PLAZA';
        cdLog.FieldByName('idreg').AsInteger := cdplaza.FieldByName('idplaza').AsInteger;
        cdLog.FieldByName('cambios').AsString := RegLog.DelimitedString;
        cdLog.FieldByName('idusuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
        cdLog.Post;
        cdLog.ApplyUpdates(0);
      end;


//##############################################################################
//Se limpiar los datos de la palza detalle completamente
      cdUpd := TClientDataSet.Create(nil);
      cdUpd.OnReconcileError := ReconcileError;
      CrearConjunto(cdUpd,'rhu_plazadetalle',ccUpdate);
      CargarDatosFiltrados(cdUpd,'idplaza',[idplaza]);
      cdUpd.Open;

      //borrar todos los registros que esten en la lista
      for i := 0 to ListaBorrar.Count - 1 do
      begin
        if cdUpd.Locate('idplazadetalle', ListaBorrar[i], []) then
        begin
          cdUpd.Edit;
          cdUpd.FieldByName('Activo').AsString := 'No';
          cdUpd.Post;
          cdUpd.ApplyUpdates(0);
          // Grabar el log de la eliminación
          RegLog.Clear;
          RegLog.Add('Activo','Si', 'No');
          cdLog.Append;
          cdLog.FieldByName('idplazalog').AsInteger := 0;
          cdLog.FieldByName('tabla').AsString := 'PLAZADETALLE';
          cdLog.FieldByName('idreg').AsInteger := cdupd.FieldByName('idplazadetalle').AsInteger;
          cdLog.FieldByName('cambios').AsString := RegLog.DelimitedString;
          cdLog.FieldByName('idusuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
          cdLog.Post;
          cdLog.ApplyUpdates(0);
        end;
      end;
//##############################################################################

      // Actualizar todos los registros que se hayan modificado
      mdPlazaDetalle.First;
      while not mdPlazaDetalle.eof do
      begin
        if mdPlazaDetalle.FieldByName('idplazadetalle').AsInteger = 0 then
        begin
          cdUpd.Append;
          //cdUpd.FieldByName('IdOrganizacion').AsInteger := IdOrganizacion;
          Aplicar := true;
        end
        else
        begin
          cdUpd.Locate('idplazadetalle', mdPlazaDetalle.FieldByName('idplazadetalle').AsInteger, []);
          cdUpd.Edit;
          Aplicar := false;
        end;
        RegLog.Clear;
        for i := 0 to cdUpd.FieldDefs.Count - 1 do
        begin
          NombreCampo := cdUpd.FieldDefs.Items[i].Name;
          // Ignorar el campo de Fecha de contratacion
          if AnsiCompareText(NombreCampo,'FechaContratacion') <> 0 then
          begin
            dummy := mdPlazaDetalle.FindField(NombreCampo);
            if Assigned(dummy) then
              if cdUpd.FieldByName(NombreCampo).AsVariant <> dummy.AsVariant then
              begin
                cdUpd.FieldByName(NombreCampo).Assign(dummy);
                Aplicar := true;
                if cdUpd.State = dsEdit then  // Si es una edición y hubo cambios, registrarlos
                  //RegLog.Add(NombreCampo,VarToStrDef(cdUpd.FieldByName(NombreCampo).OldValue,''),VarToStrDef(cdUpd.FieldByName(NombreCampo).NewValue,''));
                  GrabarLog(RegLog,NombreCampo,cdUpd.FieldByName(NombreCampo).OldValue,cdUpd.FieldByName(NombreCampo).NewValue);
              end;
          end;
          // si el valor nuevo es diferente al anterior, indicar que se tiene que aplicar la actualización del registro
          //if (cdUpd.State = dsEdit) AND (cdUpd.FieldByName(NombreCampo).NewValue <> cdUpd.FieldByName(NombreCampo).OldValue) then
          //  Aplicar := true;
        end;
        if Aplicar then
        begin
          // Grabar el registo del log del cambio unicamente
          if cdUpd.state = dsEdit then
          begin
            cdLog.Append;
            cdLog.FieldByName('idplazalog').AsInteger := 0;
            cdLog.FieldByName('tabla').AsString := 'PLAZADETALLE';
            cdLog.FieldByName('idreg').AsInteger := cdupd.FieldByName('idplazadetalle').AsInteger;
            cdLog.FieldByName('cambios').AsString := RegLog.DelimitedString;
            cdLog.FieldByName('idusuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
            cdLog.Post;
            cdLog.ApplyUpdates(0);
          end;
          cdUpd.Post;
          cdUpd.ApplyUpdates(0);
        end
        else
          cdUpd.Cancel;
        mdPlazaDetalle.Next;
      end;
//##############################################################################
      //Insertado del borrado de lso campos cambiados a activos no
      if Not CrearConjunto(cdborraractno, 'rhu_plazadetalle_grupos', ccUpdate) then
        raise InteligentException.Create('Al parecer la conexión con el servidor de base de datos se ha perdido, verifique esto e intente de nuevo.');
      CargarDatosFiltrados(cdborraractno,'idplaza',[idPlaza]);
      cdborraractno.Open;
      cdborraractno.First;
      while not cdborraractno.Eof do
      begin
        cdborraractno.Delete;
        cdborraractno.Next;
      end;
      eliminarconjunto(cdborraractno);
//##############################################################################
      ConcretarTransaccion;
      InteliDialog.ShowModal('Confirmación','La información se ha guardado correctamente.','',
                          mtConfirmation, [mbOK], 0);
    finally
      if Assigned(cdUpd) then
      begin
        if cdUpd.Active then
        begin
          cdUpd.Close;
        end;
        EliminarConjunto(cdUpd);
        cdUpd.Free;
      end;

      if Assigned(cdLog) then
      begin
        if cdLog.Active then
        begin
          cdLog.Close;
        end;
        EliminarConjunto(cdLog);
        cdLog.Free;
      end;
      close;
    end;
 except
      on e:Inteligentexception do
    begin
       inteliDialog.ShowModal('No se puede guardar la informacion correctamente:','' +#10 +#10 + e.Message, mtWarning,[mbOk],0);
    end;
    on e: Exception do
    begin
      CancelarTransaccion;
      InteliDialog.ShowModal('Error','La información no se pudo guardar debido al siguiente error:',
                          e.Message + #10 + 'Nada se ha guardado.',
                          mtError, [mbOK], 0);
      close;
    end;
  end;

end;



procedure TFrmPlazaRhuDetalle.cdplazaReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  showmessage(e.Message);
end;

procedure TFrmPlazaRhuDetalle.DBGrid1DblClick(Sender: TObject);
begin
  if mdplazadetalle.RecordCount<>0 then
  begin
    if MdPlazaDetalle.FieldByName('IdPersonal').AsInteger < 0 then
    begin
      application.CreateForm(TFrmEditPlazaDetalle, FrmEditPlazaDetalle);
      if cddepartamentos.Active=false then
      begin
        if Not CrearConjunto(cddepartamentos, 'nuc_departamento', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Departamentos']);
        if Not CargarDatosFiltrados(cddepartamentos, 'iddepartamento', [-1]) then
          raise InteligentException.CreateByCode(6, ['Departamentos', IdOrganizacion, 'IdOrganizacion']);
        cddepartamentos.Open;
      end
      else
      begin
        if Not CargarDatosFiltrados(cddepartamentos, 'iddepartamento', [-1]) then
          raise InteligentException.CreateByCode(6, ['Departamentos', IdOrganizacion, 'IdOrganizacion']);
        cddepartamentos.Refresh;
      end;

      FrmEditPlazaDetalle.dsdeptos.DataSet := cddepartamentos;
      FrmEditPlazaDetalle.dsmemplazadetalles.DataSet := mdPlazaDetalle;
      FrmEditPlazaDetalle.IdOrganizacion := IdOrganizacion;
      FrmEditPlazaDetalle.JvLabel2.Caption:=mdplazadetalle.FieldByName('CodigoPlazaDetalle').AsString;
      FrmEditPlazaDetalle.JvLabel5.Caption:=mdplazadetalle.FieldByName('titulocargo').AsString;

      if mdplazadetalle.FieldByName('IdPersonal').AsInteger=-5 then
      begin
        FrmEditPlazaDetalle.ComboBox1.ItemIndex:=0;
        FrmEditPlazaDetalle.dep.Enabled:=True;
        FrmEditPlazaDetalle.DBDateEdit1.Enabled:=True;
        FrmEditPlazaDetalle.experiencia.Enabled:=true;
        FrmEditPlazaDetalle.DBComboBox1.Enabled:=true;
      end
      else
      begin
        FrmEditPlazaDetalle.ComboBox1.ItemIndex:=1;
        FrmEditPlazaDetalle.dep.Enabled:=False;
        FrmEditPlazaDetalle.DBDateEdit1.Enabled:=False;
        FrmEditPlazaDetalle.experiencia.Enabled:=False;
        FrmEditPlazaDetalle.DBComboBox1.Enabled:=False;
      end;
      mdplazadetalle.Edit;
      FrmEditPlazaDetalle.Show;
    end
    else
    begin
      try
        if Not CrearConjunto(CdPersonal, 'nuc_personal_admin', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal']);
        if Not CargarDatosFiltrados(CdPersonal, 'idpersonal', [MdPlazaDetalle.FieldByName('IdPersonal').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Personal', MdPlazaDetalle.FieldByName('IdPersonal').AsInteger, 'Idpersonal']);
        if CdPersonal.Active then
          CdPersonal.Refresh
        else
          CdPersonal.Open;

        if Not CrearConjunto(cdplazapersonal, 'rhu_plaza', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Datos de la plaza']);
        if Not CargarDatosFiltrados(CdPlazaPersonal, 'IdPersonal', [MdPlazaDetalle.FieldByName('IdPersonal').AsInteger]) then
          raise InteligentException.CreateByCode(6, ['Plaza del Personal', MdPlazaDetalle.FieldByName('IdPersonal').AsInteger, 'IdPersonal']);
        if CdPlazaPersonal.Active then
          CdPlazaPersonal.Refresh
        else
          CdPlazaPersonal.Open;

        ClientModule1.ImprimeReporte('FichaDelPersonal.fr3', frxReport1);

      finally

          if Assigned(cdpersonal) then
            EliminarConjunto(CdPersonal);

          if Assigned(CdPlazaPersonal) then
            EliminarConjunto(CdPlazaPersonal);

      end;
    end;
  end;
end;

procedure TFrmPlazaRhuDetalle.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  indices : integer;
begin
  indices := IndicesGrupos.IndexOf(inttostr(mdplazadetalle.FieldByName('idgrupo').AsInteger));
  if (indices mod 2)= 0 then
  begin
    (sender as Tdbgrid).Canvas.Brush.Color := clMoneyGreen;
    (sender as Tdbgrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else
  begin
    (sender as Tdbgrid).Canvas.Brush.Color := clWhite;
    (sender as Tdbgrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFrmPlazaRhuDetalle.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = []) AND (Key = VK_F10) then
  begin
    if mdPlazaDetalle.RecNo > 0 then
    begin
      case mdPlazaDetalle.FieldByName('idpersonal').AsInteger of
        -5: begin
              mdPlazaDetalle.Edit;
              mdPlazaDetalle.FieldByName('idpersonal').AsInteger := -6;
              mdPlazaDetalle.Post;
              //NextDBGrid1.Refresh;
              dbgrid1.Refresh;
            end;
        -6: begin
              mdPlazaDetalle.Edit;
              mdPlazaDetalle.FieldByName('idpersonal').AsInteger := -5;
              mdPlazaDetalle.Post;
              //NextDBGrid1.Refresh;
              dbgrid1.Refresh;
            end;
        else
          InteliDialog.ShowModal('Información','La plaza ya se encuentra asignada.',
                      'No se puede cambiar de estado.',mtInformation, [mbOK], 0);
      end;
    end;
  end;
end;

procedure TFrmPlazaRhuDetalle.edtCodigoSolicClickBtn(Sender: TObject);
begin
  SeleccionarEmpleado;
end;

procedure TFrmPlazaRhuDetalle.edtCodigoSolicKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    SeleccionarEmpleado;
end;

procedure TFrmPlazaRhuDetalle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdPlaza.Close;
  cdPlazaDetalle.Close;
  if Assigned(cdBuscaCliente) then
    EliminarConjunto(cdBuscaCliente);

  EliminarConjunto([cdPlaza, cdPlazaDetalle]);
end;

procedure TFrmPlazaRhuDetalle.FormCreate(Sender: TObject);
var
  items : tstrings;
begin
  Contador := -1;
  IdGrupo := 1;  // Inicializar un contador para identificar los grupos
  ListaProc := TStringListX.Create;
    // Crear el splitter de ancho de panel izquierdo
  FExSplitter := TSplitter.Create(self);
  FExSplitter.Parent := self;
  FExSplitter.Align := alLeft;
  FExBar := TExBar.Create(self);
  FExBar.ProcList := ListaProc;
  IndicesGrupos:= Tstringlist.Create;
  with FExBar do
  begin
    BeginUpdate;
    SetSkin(InfoPanel.BlueImg.Picture.Bitmap);
    GroupIcons := InfoPanel.Icons32;
    ItemIcons := InfoPanel.Icons16;
    Parent := Self;
    Align := alLeft;
    OnMenuItemClick := ItemClick;
    with ExGroups.Add('Acciones', True) do
    begin
      AddMenuItem('Agregar grupo de plazas', AgregarGrupoPlazas, 'Agregar un grupo de plazas', 1);
      AddMenuItem('Eliminar grupo de plazas', EliminarGrupoPlazas, 'Eliminar un grupo de plazas', 2);
      AddMenuItem('Eliminar partidas', EliminarPlaza, 'Eliminar una plaza individual', 4);
    end;
    EndUpdate;
  end;
  ListaBorrar := TList<Integer>.Create;
end;

procedure TFrmPlazaRhuDetalle.FormShow(Sender: TObject);
Var
  Reg: TLista;
  FldGrupo: TIntegerField;
  FldVacante : TStringField;
  Campo : Tfield;
  Tipodato : TFieldType;
  i : integer;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    try
      cdPlaza.Close;
      if Not CrearConjunto(cdplaza, 'rhu_plaza', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Plazas']);
      if Not CargarDatosFiltrados(cdplaza,'idplaza',[idPlaza]) then
        raise InteligentException.CreateByCode(21, ['Plazas']);
      cdplaza.Open;

      cdgruposplaza.Close;
      if Not CrearConjunto(cdgruposplaza, 'rhu_plazadetalle_grupos', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Grupos de Plazas']);
      if Not CargarDatosFiltrados(cdgruposplaza,'idplaza',[idPlaza]) then
        raise InteligentException.CreateByCode(21, ['Grupos de Plazas']);
      cdgruposplaza.Open;

      cdplazadetalle.Close;
      if Not CrearConjunto(cdplazadetalle, 'rhu_plazadetalle', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Plazas']);
      if Not CargarDatosFiltrados(cdplazadetalle,'idplaza',[idPlaza]) then
        raise InteligentException.CreateByCode(21, ['Detalle de Plazas']);
      cdplazadetalle.Open;

      cdDeptos.Close;
      if Not CrearConjunto(cdDeptos, 'nuc_departamento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);
      if Not CargarDatosFiltrados(cdDeptos, 'IdOrganizacion', [IdOrganizacion]) then
        raise InteligentException.CreateByCode(6, ['Departamentos', IdOrganizacion, 'IdOrganizacion']);
      cdDeptos.Open;

      if cdplaza.RecordCount = 1 then
      begin
        // Cargar las descripciones del departamento y cargo del solicitante
        Reg := ObtenerRegistroXId('nuc_personal','idpersonal', cdplaza.FieldByName('idSolicitante').AsInteger);
        if Assigned(Reg) then
        begin
          edtCodigoSolic.Text := Reg['codigopersonal'];
          lblSolicitante.Caption := Reg['NombreCompleto'];
          lblCargoHist.Caption := NVL(Reg['TituloCargo'],'');
          lblDeptoHist.Caption := NVL(Reg['TituloDepartamento'],'');
        end;
      end;

      cdplazadetalle.First;
      mdPlazaDetalle.CopyStructure(cdplazadetalle);

  //##############################################################################

      for i := 0 to (mdPlazaDetalle.FieldDefs.Count-1) do
      begin
       mdPlazaDetalle.FieldDefs.Items[i].Required:=false;
      end;

  //##############################################################################
      for i := 0 to (mdGrupoPlazas.FieldDefs.Count-1) do
      begin
       mdGrupoPlazas.FieldDefs.Items[i].Required:=false;
      end;

      mdGrupoPlazas.Open;
      mdGrupoPlazas.LoadFromDataSet(cdgruposplaza, cdgruposplaza.RecordCount, lmAppend);

      mdGrupoPlazas.First;
      while not mdGrupoPlazas.Eof do
      begin
        indicesgrupos.Add(inttostr(mdgrupoplazas.FieldByName('idgrupo').AsInteger));
        idgrupo:=mdgrupoplazas.FieldByName('idgrupo').AsInteger;
        mdGrupoPlazas.Next;
      end;
      idgrupo:=idgrupo+1;

      FldVacante := TStringField.Create(mdPlazaDetalle);
      FldVacante.Name := 'Vacante';
      FldVacante.FieldName := 'Vacante';
      FldVacante.DataSet := mdPlazaDetalle;
      mdPlazaDetalle.Open;

      mdPlazaDetalle.LoadFromDataSet(cdplazadetalle, cdplazadetalle.RecordCount, lmAppend);
  //##############################################################################
  {
      cdplazadetalle.First;
      while not cdplazadetalle.Eof do
      begin
        MdPlazadetalle.Append;
        for i := 0 to (CdPlazaDetalle.FieldDefs.Count-1) do
        begin
          //MdPlazaDetalle.FieldValues[CdPlazaDetalle.FieldDefs.Items[i].Name]:=CdPlazaDetalle.FieldValues[CdPlazaDetalle.FieldDefs.Items[i].Name];
          MdPlazaDetalle.FieldByName(CdPlazaDetalle.FieldDefs.Items[i].Name).AsVariant:=CdPlazaDetalle.FieldByName(CdPlazaDetalle.FieldDefs.Items[i].Name).AsVariant;

        end;
        MdPlazadetalle.Post;
        CdPlazaDetalle.Next;
      end;

  }
  //##############################################################################


      //IniciarTransaccion;
      if cdplaza.RecordCount = 0 then
      begin
        cdplaza.Append;
        cdplaza.FieldByName('CodigoPlaza').AsString := '-';
        cdPlaza.FieldByName('idPlaza').AsInteger := 0;
        cdplaza.FieldByName('Fecha').AsDateTime := date;
        cdplaza.FieldByName('Activo').AsString := 'Si';
        edtCodigo.Visible := False;
      end
      else
      begin
        cdplaza.Edit;
        MdPlazaDetalle.First;
        while not MdPlazaDetalle.Eof do
        begin
          MdPlazaDetalle.Edit;
          if MdPlazaDetalle.FieldByName('IdPersonal').AsInteger=-5 then
              MdPlazaDetalle.FieldByName('Vacante').AsString:='Disponible';

          if MdPlazaDetalle.FieldByName('IdPersonal').AsInteger=-6 then
              MdPlazaDetalle.FieldByName('Vacante').AsString:='No Disponible';


          if MdPlazaDetalle.FieldByName('IdPersonal').AsInteger>0 then
              MdPlazaDetalle.FieldByName('Vacante').AsString:=MdPlazaDetalle.FieldByName('NombreCompleto').AsString;

          MdPlazaDetalle.Post;
          MdPlazaDetalle.Next;
        end;
      end;

      cdplaza.FieldByName('idusuario').AsInteger := ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmPlazaRhuDetalle.ItemClick(Sender: TObject; Id: Integer);
Var
  Proc: TProc;
begin
  if assigned(ListaProc) then
    ListaProc.Run(Id);
end;

procedure TFrmPlazaRhuDetalle.mdPlazaDetalleAfterScroll(DataSet: TDataSet);
var
  idgrupo: integer;
begin
  if mdGrupoPlazas.Active=true then
  begin
      idgrupo:=mdPlazaDetalle.FieldByName('idgrupo').AsInteger;
      dsgrupoplazas.DataSet:=nil;
      mdGrupoPlazas.First;
      while not mdGrupoPlazas.Eof do
      begin
        if mdGrupoPlazas.FieldByName('idgrupo').AsInteger=idgrupo then
        begin
          break;
        end;
        mdGrupoPlazas.Next;
      end;
      dsgrupoplazas.DataSet:=mdGrupoPlazas;
  end;
end;



procedure TFrmPlazaRhuDetalle.NxVirtualColumn1GetText(Sender: TObject; const ACol,
  ARow: Integer; var Value: WideString);
begin
  case mdPlazaDetalle.FieldByName('idpersonal').AsInteger of
    -5: Value := 'Disponible';
    -6: Value := 'No disponible';
    else
      Value := 'Ocupada';
  end;
end;

procedure TFrmPlazaRhuDetalle.btnCargarImagenClick(Sender: TObject);
var
  frmimagen: TFrmCargaImagen;
  strmImagen: TMemoryStream;
begin
  try
    try
      frmimagen := TFrmCargaImagen.Create(nil);
      frmimagen.ShowModal;
      if not frmimagen.cancelado then
      begin
        strmImagen := frmimagen.MemorySTResultante;
        TBlobField(cdPlaza.FieldByName('DoctoAutorizacion')).LoadFromStream(strmImagen);
        img2.LoadFromStream(ALL2BMP(strmImagen));
        img2.Refresh;
      end;
    finally
      frmimagen.Free;
    end;
  Except
    on e:Exception do
    InteliDialog.ShowModal('Error al cargar imagen',e.Message, mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmPlazaRhuDetalle.ReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin

end;

procedure TFrmPlazaRhuDetalle.SeleccionarEmpleado;
begin
  Try
    if edtCodigoSolic.Text = '' then
      raise InteligentWarning.Create('Debe especificar un criterio para iniciar la busqueda de empleados en activo.');

    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Proceder a buscar los empleados que cumplan con el criterio
      if Not Assigned(cdBuscaCliente) then
      begin
        cdBuscaCliente := TClientDataSet.Create(Self);

        if not CrearConjunto(cdBuscaCliente, 'nuc_personal_buscaractivos', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['nuc_personal_buscaractivos']);
      end;

      cdBuscaCliente.Close;

      if Not CargarDatosFiltrados(cdBuscaCliente, 'Buscar', [edtCodigoSolic.Text]) then
        raise InteligentException.CreateByCode(6, ['nuc_personal_buscaractivos', edtCodigoSolic.Text, 'Buscar']);

      cdBuscaCliente.Open;

      if cdBuscaCliente.RecordCount = 0 then
        raise InteligentWarning.Create('No existen empleados con el criterio indicado.' + #10 + #10 + 'Indique otro criterio de busqueda e intente de nuevo.');

      if cdBuscaCliente.RecordCount > 1 then
      begin
        // Mostrar todos los registros que coinsiden con la selección
        Application.CreateForm(TFrmSeleccionarEmpleado, FrmSeleccionarEmpleado);
        Try
          FrmSeleccionarEmpleado.dsEmpleado.DataSet := cdBuscaCliente;
          if FrmSeleccionarEmpleado.ShowModal = mrOk then
          begin
            lblSolicitante.Caption := SESeleccionado.CodigoPersonal + ' - ' + SESeleccionado.NombreCompleto;
            lblCargoHist.Caption   := SESeleccionado.CodigoCargo + ' - ' + SESeleccionado.TituloCargo;
            lblDeptoHist.Caption   := SESeleccionado.CodigoDepartamento + ' - ' + SESeleccionado.TituloDepartamento;

            cdPlaza.FieldByName('idCargoSolicitante').AsInteger           := SESeleccionado.IdCargo;
            cdPlaza.FieldByName('CodigoCargoSolicitante').AsString        := SESeleccionado.CodigoCargo;
            cdPlaza.FieldByName('TituloCargoSolicitante').AsString        := SESeleccionado.TituloCargo;
            cdPlaza.FieldByName('idDepartamentoSolicitante').AsInteger    := SESeleccionado.IdDepartamento;
            cdPlaza.FieldByName('CodigoDepartamentoSolicitante').AsString := SESeleccionado.CodigoDepartamento;
            cdPlaza.FieldByName('TituloDepartamentoSolicitante').AsString := SESeleccionado.TituloDepartamento;
          end;
        Finally
          FrmSeleccionarEmpleado := nil;
        End;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:exception do
      LevantarExcepcion(e);
  End;
end;

end.
