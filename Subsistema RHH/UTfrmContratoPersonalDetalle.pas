unit UTfrmContratoPersonalDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  ExtCtrls, DB, DBClient, StdCtrls, AdvEdit, DBAdvEd, AdvSmoothTabPager,ClientModuleUnit1,
  AdvShapeButton, DBCtrls, JvDBImage, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit,UInteliDialog, Buttons,
  StrUtils,AcroPDFLib_TLB, pngimage, ComCtrls, DateUtils, NxColumns,
  NxColumnClasses, NxGrid, AdvSmoothLabel, JvExControls, JvLabel,math, AdvCombo,
  frxClass, IdBaseComponent, IdThreadComponent, JvExStdCtrls, JvCombobox,
  JvDBCombobox, AdvDBComboBox;

type
  TInteger = class
    Entero:Integer;
  end;
  TOrganizacion = class
    Identificador:Integer;
    Isr:string;

  end;
  TFrmContratoPersonalDetalle = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    DsPersonal: TDataSource;
    Splitter1: TSplitter;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit3: TDBAdvEdit;
    DBAdvEdit4: TDBAdvEdit;
    DBAdvEdit5: TDBAdvEdit;
    AdvSmoothTabPager1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    BtnRec: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    PnlNombre: TPanel;
    JvDBImage1: TJvDBImage;
    DBAdvEdit1: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    DBAdvEdit7: TDBAdvEdit;
    DBAdvEdit8: TDBAdvEdit;
    DBAdvEdit9: TDBAdvEdit;
    DBAdvEdit10: TDBAdvEdit;
    DBAdvEdit11: TDBAdvEdit;
    DBAdvEdit12: TDBAdvEdit;
    AdvSmoothTabPage1: TAdvSmoothTabPage;
    PnlBtnPdf: TPanel;
    PnlPdf: TPanel;
    DsImss: TDataSource;
    AdvSmoothTabPage2: TAdvSmoothTabPage;
    PnlPdf2: TPanel;
    Panel7: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel8: TPanel;
    pnlSalarioIntegrado: TPanel;
    Panel6: TPanel;
    GridSalarioIntegrado: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    LblVerSalario: TJvLabel;
    GrbAbordo: TGroupBox;
    GroupBox2: TGroupBox;
    EdtDescanso: TAdvEdit;
    EdtTrabajo: TAdvEdit;
    CmbGuardias: TAdvComboBox;
    GrpSalarios: TGroupBox;
    CmbRangosS: TAdvComboBox;
    CmbSalarios: TAdvComboBox;
    GroupBox1: TGroupBox;
    CmbOrganizacion: TAdvComboBox;
    CmbORganizacion2: TAdvComboBox;
    PnlDatosContratacion: TPanel;
    Image1: TImage;
    GrpTipoNomFecha: TGroupBox;
    LCbbTipoNomina: TDBLookupComboBox;
    Image3: TImage;
    DtFechaContratación: TJvDBDatePickerEdit;
    Image5: TImage;
    Label5: TLabel;
    Label7: TLabel;
    GrpCargoDepto: TGroupBox;
    GrpSDiarioIntegrado: TGroupBox;
    Image4: TImage;
    LCbbDepartamento: TDBLookupComboBox;
    LCbbCargo: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    MObservacion: TDBMemo;
    EdtSalarioIntegrado: TDBAdvEdit;
    EdtSalarioDiario: TDBAdvEdit;
    Label10: TLabel;
    Image2: TImage;
    AdvDBComboBox1: TAdvDBComboBox;
    CbCobraFestivos: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRecClick(Sender: TObject);
    procedure LblVerSalarioClick(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure GridSalarioIntegradoCellColoring(Sender: TObject; ACol,
      ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
    procedure EdtSalarioDiarioChange(Sender: TObject);
    procedure LCbbTipoNominaClick(Sender: TObject);
    procedure CmbGuardiasSelect(Sender: TObject);
    procedure LCbbCargoClick(Sender: TObject);
    procedure CmbRangosSSelect(Sender: TObject);
    procedure CmbSalariosSelect(Sender: TObject);
    procedure CmbOrganizacionSelect(Sender: TObject);
    procedure CmbORganizacion2Select(Sender: TObject);
    procedure CmbGuardiasEnter(Sender: TObject);
    procedure EdtSalarioIntegradoExit(Sender: TObject);
    procedure EdtTrabajoExit(Sender: TObject);
    procedure EdtDescansoExit(Sender: TObject);
    procedure EdtSalarioDiarioExit(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure EdtSalarioDiarioEnter(Sender: TObject);
    procedure CmbOrganizacionMouseEnter(Sender: TObject);
  private
    PlazaLibre:Integer;//se declara aquí porque hay que liberar el bloqueo despues
    CompContrato : TAcroPDF;
    CompAutorizacion : TAcroPDF;
    GuardiaAnt: String;
    NominaABordo,
    ExisteSalario: Boolean;
    LlenandoOrg, LlenandoORg2: Boolean;

    procedure CargarDocumento(PathPdf: string);
    procedure CrearCompDocumento(Padre: Twincontrol; MuestraError: Boolean);
    procedure LimpiarCompDocumento;
    procedure CargarDocumentoAutorizacion(PathPdf: string);
    procedure CrearCompDocumentoAutorizacion(Padre: Twincontrol;
      MuestraError: Boolean);
    procedure LimpiarCompDocumentoAutorizacion;
    procedure CalculaSalarioDiario(Diario: Double; Aguinaldos,
      Vacaciones: Integer);
    procedure LlenarCombo(Llaves,Titulos:string;Cliente: TClientDataset; Combo: TAdvComboBox);
    procedure LlenarComboOrg(Llave,Codigo,Titulo,isr:string;Cliente: TClientDataset; Combo: TAdvComboBox);
  public
    Accion:integer;
    DsOrganizacion, DsTipoNomina, DsDepartamento, Dsaguinaldos, DsCargo,
    DsSalarioBase, DsVacacional, DsGuardias, DsPeriodosGuardias, DsBuscaGuardia,
    DsSalario, DsRangoSalario: TDataSource;
  end;

Const
  myColor: array[False..True] of TColor = (clGray, clBlack);

var
  FrmContratoPersonalDetalle: TFrmContratoPersonalDetalle;

implementation

{$R *.dfm}

procedure TFrmContratoPersonalDetalle.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmContratoPersonalDetalle.BtnRecClick(Sender: TObject);
var
  OldCur: TCursor;
begin
  try
    try
      OldCur := Screen.Cursor;
      Screen.Cursor := crHourGlass;

      //Validaciones
      if LCbbTipoNomina.KeyValue <= 0 then
        raise InteligentException.Create('Por favor seleccione un tipo de nómina.');

      if ((CmbOrganizacion2.ItemIndex<0) and (CmbORganizacion.ItemIndex = -1) )  then
        raise InteligentException.Create('Por favor seleccione una organización.');

      if DtFechaContratación.date <= dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime-1 then
        if  InteliDialog.ShowModal('Confirmación','¿Está seguro que desea generar la contratación con una fecha menor a la fecha actual?', mtConfirmation, [ mbYes, mbNo ], 0) = mrNo then
          raise InteligentException.Create('Proceso cancelado por el usuario.');

      dsImss.DataSet.FieldByName('IdPersonalImss').Clear;

      // Validar que si es abordo se encuentre la guardia en tiempo y forma
      if NominaABordo then
      begin
        if (CmbGuardias.ItemIndex <> -1) and (CmbGuardias.Items.Objects[CmbGuardias.ItemIndex] <> nil) then
        begin
          DsPeriodosGuardias.DataSet.close;

          if not CargarDatosFiltrados(tclientdataset(DsPeriodosGuardias.DataSet),'IdTipoNomina,fecha,idguardia',[dsTiponomina.DataSet.FieldByName('idtiponomina').AsInteger,ClientModule1.DatetoStrSql(DtFechaContratación.Date),TInteger(CmbGuardias.Items.Objects[CmbGuardias.ItemIndex]).Entero]) then
            raise InteligentConnection.CreateByCode(6, ['Periodo de guardia',dsTiponomina.DataSet.FieldByName('idtiponomina').asstring+','+','+DtFechaContratación.Text+vartostr(TInteger(CmbGuardias.Items.Objects[CmbGuardias.ItemIndex]).Entero), 'IdTipoNomina,Trabajados,Descanso,fecha,idguardia']);

          DsPeriodosGuardias.DataSet.Open;

          if DsPeriodosGuardias.DataSet.RecordCount = 0 then
            raise InteligentException.Create('La guardia seleccionada no esta disponible para esa fecha.');

          DsImss.DataSet.FieldByName('idguardia').AsInteger := TInteger(CmbGuardias.Items.Objects[CmbGuardias.ItemIndex]).Entero;

        end
        else
          raise Exception.Create('Seleccione una guardia');
      end;

      if LCbbCargo.KeyValue <= 0 then
        raise InteligentException.Create('Por favor seleccione un cargo.');

      if LCbbDepartamento.KeyValue <= 0 then
        raise InteligentException.Create('Por favor seleccione un departamento.');

      if GrpSalarios.Visible then
      begin
        if CmbSalarios.ItemIndex = -1 then
        begin
          CmbSalarios.SetFocus;
          raise InteligentException.Create('Por favor seleccione un salario.');
        end;
      end;

      if Length(Trim(EdtSalarioDiario.Text))=0 then
        raise InteligentException.Create('Por favor ingrese un salario diario.');

      if Length(Trim(EdtSalarioIntegrado.Text))=0 then
        raise InteligentException.Create('Por favor ingrese un salario integrado.');

      //y por ultimo se guarda el nuc:personalimss
      case dsImss.DataSet.state of
        dsInactive: raise exception.Create('Error al tratar de agregar el registro de imss.');
        dsBrowse: raise exception.Create('Error al tratar de agregar el registro imss.');
        dsEdit: ; // Siempre de los siempres debe de ser inserccion
        dsInsert:
        begin
          dsImss.DataSet.FieldByName('idpersonalimss').AsInteger := 0;;
          dsImss.DataSet.FieldByName('idpersonal').AsInteger := DsPersonal.DataSet.FieldByName('idpersonal').AsInteger;
          dsImss.DataSet.FieldByName('fecharegistro').AsDateTime := Today;
          dsImss.DataSet.FieldByName('procesado').AsString := 'Si';
          dsImss.DataSet.FieldByName('registropatronal').AsString := TOrganizacion(CmbOrganizacion.Items.Objects[CmbOrganizacion.ItemIndex]).Isr;
          dsImss.DataSet.FieldByName('tipomovimiento').AsString := 'Reingreso';

          if CmbORganizacion2.ItemIndex <> 0 then
            dsImss.DataSet.FieldByName('IdOrganizacion').AsInteger := TOrganizacion(CmbORganizacion2.Items.Objects[CmbORganizacion2.ItemIndex]).Identificador
          else
            dsImss.DataSet.FieldByName('IdOrganizacion').AsInteger := TOrganizacion(CmbORganizacion.Items.Objects[CmbORganizacion.ItemIndex]).Identificador;

          if CbCobraFestivos.Checked then
            DsImss.DataSet.FieldByName('cobrafestivos').AsInteger := 1
          else
            DsImss.DataSet.FieldByName('cobrafestivos').AsInteger := 0;
          DsImss.DataSet.Post;
          TClientDataSet(DsImss.DataSet).ApplyUpdates(-1);
        end;
      end;
      TClientDataSet(DsPersonal.DataSet).Post;
      TClientDataSet(DsPersonal.DataSet).ApplyUpdates(-1);
      ConcretarTransaccion;
      Accion := mrOk;
    finally
      Screen.Cursor := OldCur;
    end;

    InteliDialog.ShowModal('Proceso de contratación.:','el proceso de contratación para el personal '+#10+pnlnombre.Caption+#10+' se completó correctamente.', mtInformation, [mbOk], 0);

    Close;
  except
    on e:InteligentException do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal('No se puede Guardar la información por lo siguiente:', e.message, mtError, [mbOk], 0)
      else
        InteligentException.Create('***');
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Información', 'No se puede guardar la información debido a lo siguiente:' + #10 + #10 + e.message , mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmContratoPersonalDetalle.Button1Click(Sender: TObject);
var
  DialogoArchivo:tsavedialog;
  PrcCancelado,Continuar:Boolean;

  bs:TMemoryStream;
  bf:WORD;
begin
  //intentar cargar el archivo, validando que sea pdf
  try

    DialogoArchivo := TSaveDialog.Create(nil);
    try
      PrcCancelado := False;
      Continuar := False;
      DialogoArchivo.Filter := 'Acrobat Reader|*.pdf';

      repeat
        if DialogoArchivo.Execute then
        begin
          bs := TMemoryStream.Create;
          bs.LoadFromFile(DialogoArchivo.FileName);
          bs.Seek(0, soFromBeginning);
          if bs.Read(bf,4) > 0 then
          begin
            Continuar := bf = 20517;
          end;
          if not Continuar then
            InteliDialog.ShowModal('Error de tipo de archivo.','No se puede cargar ese archivo, debe ser del tipo Acroba Reader (*.pdf), intente con otro archivo.', mtError, [mbOk], 0);
        end
        else
          PrcCancelado := True;
      until PrcCancelado or Continuar;
      if PrcCancelado then
        raise inteligentException.Create('*');

      //Todo va bien :-)
      TBlobField(DsPersonal.DataSet.FieldByName('doccontratacion')).LoadFromFile(DialogoArchivo.FileName);

      CargarDocumento(DialogoArchivo.FileName);
        
    finally
      DialogoArchivo.Free;
    end;

  except
    on e:InteligentException do
      ;
    on e:exception do
      InteliDialog.ShowModal('Error al tratar de subir el archivo.', e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(CompContrato) or (CompContrato <> nil) then
    CompContrato.Free;
  if Assigned(CompAutorizacion) or (CompAutorizacion <> nil) then
    CompAutorizacion.Free;
  if DsImss.DataSet.State in [dsInsert,dsEdit] then
    DsImss.DataSet.Cancel;
//  EliminarConjunto([{DsPlaza.DataSet,}{cdplazadetalle,}cdimss{,CdSalarioBase}]);
  if (DsPersonal.DataSet.State in [dsInsert,dsEdit]) then
    DsPersonal.DataSet.cancel;
  Self.ModalResult := Accion;
end;

procedure TFrmContratoPersonalDetalle.FormCreate(Sender: TObject);
begin
  Accion:= mrCancel;
  pnlSalarioIntegrado.Width := 25;
  pnlSalarioIntegrado.DoubleBuffered := False;

  ClientModule1.ComponentColor(self);

  DsGuardias := TDataSource.Create(Self);

  DsPeriodosGuardias := TDataSource.Create(Self);

  DsDepartamento:= TDataSource.Create(Self);

  Dsaguinaldos := TDataSource.Create(Self);

  DsCargo:=TDataSource.Create(Self);

  DsTipoNomina:=TDataSource.Create(Self);

  DsOrganizacion:=TDataSource.Create(Self);

  DsVacacional := TDataSource.Create(Self);

  DsBuscaGuardia := TDataSource.Create(Self);

  DsSalario := TDataSource.Create(self);

  DsSalarioBase := Tdatasource.create(self);

  DsRangoSalario := TDataSource.Create(self);

end;

procedure TFrmContratoPersonalDetalle.FormShow(Sender: TObject);
var
  oldc:Tcursor;
begin
  try
    oldc := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    PnlNombre.Caption := DsPersonal.DataSet.FieldByName('apaterno').AsString+' ' + DsPersonal.DataSet.FieldByName('amaterno').AsString +' '+ DsPersonal.DataSet.FieldByName('nombres').AsString;
    //Formatear componente de nombres
   { EdtAp.Width := Length(EdtAp.Text)*16;
    EdtAm.Width := Length(EdtAm.Text)*16;
    EdtNombre.Width := Length(EdtNombre.Text)*16;  }

    //tratamos de obtener los datos necesarioss de conexion con tablas
    //en caso de generar un error se informará y cerrara la ventana
    try

      LCbbDepartamento.ListSource := DsDepartamento;

      LCbbCargo.ListSource := DsCargo;

      LCbbTipoNomina.ListSource := DsTipoNomina;

      //llenamos el combo del primer nivel organizacional
      cmborganizacion.items.clear;
      CmbOrganizacion.Text := '';
      LlenandoOrg := True;
      try
        dsOrganizacion.DataSet.Filtered := False;
        dsOrganizacion.DataSet.Filter := ' padre = -5';
        dsOrganizacion.DataSet.Filtered := True;
        CmbOrganizacion.LabelCaption := UpperCase(dsOrganizacion.DataSet.FieldByName('titulonivel').AsString)+':';
        LlenarComboOrg('idorganizacion','codigoorganizacion','tituloorganizacion','regpatimss',TClientDataSet(dsOrganizacion.DataSet),CmbOrganizacion);
        if dsOrganizacion.DataSet.RecordCount > 0 then
          CmbOrganizacion.ItemIndex := 0;
      finally
        dsOrganizacion.DataSet.Filtered := False;
        dsOrganizacion.DataSet.First;
        LlenandoOrg := False;
      end;
      CmbOrganizacionSelect(CmbOrganizacion);

      LlenarCombo('idrangosalarios','titulo',TClientDataSet(dsRangoSalario.DataSet),CmbRangosS);

      try
        CrearCompDocumento(PnlPdf,True);
      except
        ;
      end;

      try
        CrearCompDocumentoAutorizacion(PnlPdf2,True);
      except
        ;
      end;

      TClientDataSet(DsImss.DataSet).Close;
      if not CargarDatosFiltrados(TClientDataSet(DsImss.DataSet),'idplazadetalle',[-9]) then
        raise InteligentConnection.CreateByCode(6, ['detalle de plazas', '-9', 'idplazadetalle']);

      dsImss.DataSet.Open;
      dsImss.DataSet.Append;
      dsImss.DataSet.FieldByName('TipoMovimiento').AsString := 'Alta';
      dsImss.DataSet.FieldByName('FechaMovimiento').AsDateTime := Today;
      dsImss.DataSet.FieldByName('IdTipoNomina').AsInteger := DsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger;

      LCbbTipoNominaClick(LCbbTipoNomina);

      CmbOrganizacionSelect(CmbOrganizacion);
      if CmbORganizacion2.Visible then
        CmbORganizacion2Select(CmbORganizacion2);
    except
      on e:InteligentException do
      begin
        Try
          if e.Message <> '***' then
            InteliDialog.ShowModal('No se puede acceder a la ventana solicitada', e.message, mtError, [mbOk], 0)
          else
            InteligentException.Create('***');
        Finally
          PostMessage(Self.Handle, WM_CLOSE, 0, 0);
        End;
      end;

      on e:InteligentConnection do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

      on e:Exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La ventana solicitada no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  finally
    Screen.Cursor := oldc;
  end;
end;

procedure TFrmContratoPersonalDetalle.GridSalarioIntegradoCellColoring(
  Sender: TObject; ACol, ARow: Integer; var CellColor, GridColor: TColor;
  CellState: TCellState);
begin
  if not(csSelected in CellState) then
  begin
    if ARow mod 2 = 0 then
      CellColor := $00F5FCFE;
    if ((ACol = 2) and (ARow = 1)) or ((ACol = 2) and (ARow = 3)) or ((ACol = 3) and (ARow = 4))then
      CellColor := clYellow;
    if (ACol = 4) and (ARow = 5) then
      CellColor := clGreen;
  end;
end;

procedure TFrmContratoPersonalDetalle.CrearCompDocumento(Padre:Twincontrol;MuestraError:Boolean);
begin
  try
    try
      CompContrato := TAcroPDF.Create(Padre);
      CompContrato.Parent := Padre;
      CompContrato.Align:= alClient;
      CompContrato.DoubleBuffered := False;
    except
      on e:Exception do
        if MuestraError then
          ShowMessage('Error al crear el Preview de archivos PDF de documentos, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat reader falló: '+e.Message)
        else;
    end;
  finally
    Padre.Visible := False;
  end;
end;

procedure TFrmContratoPersonalDetalle.Button2Click(Sender: TObject);
var
  DialogoArchivo:tsavedialog;
  PrcCancelado,Continuar:Boolean;

  bs:TMemoryStream;
  bf:WORD;
begin
  //intentar cargar el archivo, validando que sea pdf
  try
    DialogoArchivo := TSaveDialog.Create(nil);
    try
      PrcCancelado := False;
      Continuar := False;
      DialogoArchivo.Filter := 'Acrobat Reader|*.pdf';

      repeat
        if DialogoArchivo.Execute then
        begin
          bs := TMemoryStream.Create;
          bs.LoadFromFile(DialogoArchivo.FileName);
          bs.Seek(0, soFromBeginning);
          if bs.Read(bf,4) > 0 then
          begin
            Continuar := bf = 20517;
          end;
          if not Continuar then
            InteliDialog.ShowModal('Error de tipo de archivo.','No se puede cargar ese archivo, debe ser del tipo Acroba Reader (*.pdf), intente con otro archivo.', mtError, [mbOk], 0);
        end
        else
          PrcCancelado := True;
      until PrcCancelado or Continuar;
      if PrcCancelado then
        raise inteligentException.Create('*');

      //Todo va bien :-)
      TBlobField(dsImss.DataSet.FieldByName('DoctoAutorizacion')).LoadFromFile(DialogoArchivo.FileName);

      CargarDocumentoAutorizacion(DialogoArchivo.FileName);

    finally
      DialogoArchivo.Free;
    end;

  except
    on e:InteligentException do
      ;
    on e:exception do
      InteliDialog.ShowModal('Error al tratar de subir el archivo.', e.message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.CargarDocumento(PathPdf:string);
begin
  //Cargar pdf
  if (Assigned(CompContrato)) and (CompContrato <> nil) then
  begin
    if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
    begin
      CompContrato.LoadFile(PathPdf);
      CompContrato.Parent.Visible := True;
    end
    else
      LimpiarCompDocumento;
  end;
end;

procedure TFrmContratoPersonalDetalle.LblVerSalarioClick(Sender: TObject);
begin
  if pnlSalarioIntegrado.Width <> 25 then
    pnlSalarioIntegrado.Width := 25
  else
    pnlSalarioIntegrado.Width := 681;
  pnlSalarioIntegrado.Repaint;
end;

procedure TFrmContratoPersonalDetalle.LCbbCargoClick(Sender: TObject);
begin
  //si en cargo tengo salario nulo y un idrangosalario tambien nulo
  if (Length(trim(DsCargo.DataSet.FieldByName('idsalario').AsString)) = 0) and (Length(trim(dscargo.DataSet.FieldByName('IdRangoSalarios').AsString)) = 0) then
  begin
    //se deja capturable el salariodiario          IdRangoSalarios
    EdtSalarioDiario.ReadOnly := False;
    EdtSalarioDiario.ParentColor := False;
    ExisteSalario := False;
    CmbRangosS.ItemIndex:= -1;
  end
  else
  begin
    ExisteSalario := True;
    CmbRangosS.ItemIndex := 0;
    CmbRangosSSelect(CmbRangosS);
    EdtSalarioDiario.ReadOnly := True;
    EdtSalarioDiario.ParentColor := True;
  end;

  GrpSalarios.Font.Color := myColor[Existesalario];
  GrpSalarios.Enabled := ExisteSalario;

  //Verificamos la jornada del cargo
  if (length(trim(DsCargo.DataSet.FieldByName('jornada').AsString)) <> 0) and (dscargo.DataSet.FieldByName('jornada').AsString <> '0') then
  begin
    DsImss.DataSet.FieldByName('jornada').AsInteger := DsCargo.DataSet.FieldByName('jornada').AsInteger;
  end
  else
  begin
    DsImss.DataSet.FieldByName('jornada').AsInteger := 8;
  end;
  EdtSalarioDiario.SetFocus;
  MObservacion.SetFocus;
end;

procedure TFrmContratoPersonalDetalle.LCbbTipoNominaClick(Sender: TObject);
  var SalarioDiario:Double;
begin
  try
    //Localizamos el registro vacacional de acuerdo a su tipo de nomina
    DsVacacional.DataSet.Filtered := False;
    DsVacacional.DataSet.Filter := 'idtiponomina = '+inttostr(dsTiponomina.DataSet.FieldByName('idtiponomina').AsInteger);
    DsVacacional.DataSet.Filtered := True;

    //Localizamos el registro de aguinaldo de acuerdo al tipo de nomina
    Dsaguinaldos.dataset.Filtered := False;
    Dsaguinaldos.dataset.Filter := 'idtiponomina = '+inttostr(dsTiponomina.DataSet.FieldByName('idtiponomina').AsInteger);
    Dsaguinaldos.dataset.Filtered := True;

    //Si tiene dias de descanso, entonces trabaja abordo
    NominaABordo := dsTiponomina.DataSet.FieldByName('DiasDescanso').AsInteger > 0;
    GrbABordo.Font.Color := myColor[NominaABordo];
    GrbABordo.Enabled := NominaABordo;

    if NominaABordo then
    begin
      //filtrar las guardias por el tipo de nomina
      DsGuardias.dataset.Close;
      if not CargarDatosFiltrados(tclientdataset(DsGuardias.dataset),'idtiponomina',[dsTiponomina.DataSet.FieldByName('idtiponomina').AsInteger]) then
        raise InteligentConnection.CreateByCode(6, ['idtiponomina', dsTiponomina.DataSet.FieldByName('idtiponomina').AsString, 'idtiponomina']);
      DsGuardias.dataset.Open;

      LlenarCombo('idguardia','tituloguardia',tclientdataset(DsGuardias.dataset),CmbGuardias);

      //aqui se debe seleccionar la guardia para el personal en cuestion

      //buscamos en registroimss al personal con guardia
      DsBuscaGuardia.DataSet.Close;
      if not CargarDatosFiltrados(TClientDataSet(DsBuscaGuardia.DataSet),'idpersonal,idguardia',[DsPersonal.DataSet.FieldByName('idpersonal').AsInteger,'con_guardia']) then
        raise InteligentConnection.CreateByCode(6, ['idpersonal', DsPersonal.DataSet.FieldByName('idpersonal').AsString, 'idpersonal']);
      DsBuscaGuardia.DataSet.Open;

      //si el personal subio anteriormente se busca su guardia y se preestablece
      if DsBuscaGuardia.DataSet.RecordCount > 0 then
        CmbGuardias.ItemIndex := CmbGuardias.Items.IndexOf(DsBuscaGuardia.DataSet.FieldByName('tituloguardia').AsString)
      else
        CmbGuardias.ItemIndex := 0;
    end;

    //al cambiar de nomina filtrar los cargos
    dscargo.dataset.Close;
    if not CargarDatosFiltrados(TClientDataSet(dscargo.DataSet),'idtiponomina',[dsTiponomina.DataSet.FieldByName('idtiponomina').AsInteger]) then
      raise InteligentConnection.CreateByCode(6, ['Cargos',dsTiponomina.DataSet.FieldByName('idtiponomina').AsString, 'idtiponomina']);
    DsCargo.DataSet.Open;

    if dsImss.DataSet.State in [dsInsert,dsedit] then
      if (length(trim(dsImss.DataSet.FieldByName('idcargo').AsString)) = 0) and (dscargo.DataSet.RecordCount > 0) then
        dsImss.DataSet.FieldByName('IdCargo').AsInteger := dsCargo.DataSet.FieldByName('IdCargo').AsInteger;
    LCbbCargoClick(LCbbCargo);

    //Realizar un procedimiento que calcule el salario integrado para la tabla imss
    try
      SalarioDiario :=  StrToFloat(EdtSalarioDiario.Text);
    except
      on e:Exception do
        SalarioDiario := 0;
    end;
    try
      CalculaSalarioDiario(SalarioDiario,Dsaguinaldos.dataset.FieldByName('Dias').AsInteger,DsVacacional.DataSet.FieldByName('Dias').AsInteger);
    except
      on e:Exception do
        ;
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.LimpiarCompDocumento;
var
  padre: TWinControl;
begin
  try
    //Limpiar el componente
    if (Assigned(CompContrato)) and (CompContrato <> nil) then
    begin
      padre := CompContrato.Parent;
      FreeAndNil(CompContrato);
      CrearCompDocumento(padre,False);
    end;
  except
    on e:exception do
       ;
  end;
end;

procedure TFrmContratoPersonalDetalle.CrearCompDocumentoAutorizacion(Padre:Twincontrol;MuestraError:Boolean);
begin
  try
    try
      CompAutorizacion := TAcroPDF.Create(Padre);
      CompAutorizacion.Parent := Padre;
      CompAutorizacion.Align:= alClient;
      CompAutorizacion.DoubleBuffered := False;
    except
      on e:Exception do
        if MuestraError then
          ShowMessage('Error al crear el Preview de archivos PDF de documentos, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat reader falló: '+e.Message)
        else;
    end;
  finally
    Padre.Visible := False;
  end;
end;

procedure TFrmContratoPersonalDetalle.EdtDescansoExit(Sender: TObject);
begin
  EdtDescanso.ParentColor := True;
end;

procedure TFrmContratoPersonalDetalle.EdtSalarioDiarioChange(Sender: TObject);
var SalarioDiario:Double;
begin
  if Dsaguinaldos.dataset <> nil then
  begin
    //Realizar un procedimiento que calcule el salario integrado para la tabla imss
    try
      SalarioDiario :=  StrToFloat(EdtSalarioDiario.Text);
    except
      on e:Exception do
        SalarioDiario := 0;
    end;
    CalculaSalarioDiario(SalarioDiario,Dsaguinaldos.dataset.FieldByName('Dias').AsInteger,DsVacacional.DataSet.FieldByName('Dias').AsInteger);
  end;
end;

procedure TFrmContratoPersonalDetalle.EdtSalarioDiarioEnter(Sender: TObject);
begin
  ;
end;

procedure TFrmContratoPersonalDetalle.EdtSalarioDiarioExit(Sender: TObject);
begin
  EdtSalarioDiario.ParentColor := EdtSalarioDiario.ReadOnly;
end;

procedure TFrmContratoPersonalDetalle.EdtSalarioIntegradoExit(Sender: TObject);
begin
  EdtSalarioIntegrado.ParentColor := True;
end;

procedure TFrmContratoPersonalDetalle.EdtTrabajoExit(Sender: TObject);
begin
  EdtTrabajo.ParentColor := True;
end;

procedure TFrmContratoPersonalDetalle.CargarDocumentoAutorizacion(PathPdf:string);
begin
  //Cargar pdf
  if (Assigned(CompAutorizacion)) and (CompAutorizacion <> nil) then
  begin
    if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
    begin
      CompAutorizacion.LoadFile(PathPdf);
      CompAutorizacion.Parent.Visible := True;
    end
    else
      LimpiarCompDocumentoAutorizacion;
  end;
end;

procedure TFrmContratoPersonalDetalle.CmbGuardiasEnter(Sender: TObject);
begin
  GuardiaAnt := CmbGuardias.Text;
end;

procedure TFrmContratoPersonalDetalle.CmbGuardiasSelect(Sender: TObject);
var guardiapred:string;
begin
  try

    if CmbGuardias.ItemIndex = -1 then
      raise InteligentException.Create('Seleccione una opción válida.');

    //primero obtendremos una guardia predefinida de acuerdo con la fecha de contrato
    DsPeriodosGuardias.DataSet.Close;
    if not CargarDatosFiltrados(TClientDataSet(DsPeriodosGuardias.DataSet),'IdTipoNomina,fecha',[dsTiponomina.DataSet.FieldByName('idtiponomina').AsInteger,ClientModule1.DatetoStrSql(DtFechaContratación.Date)]) then
      raise InteligentConnection.CreateByCode(6, ['Periodo de guardia',dsTiponomina.DataSet.FieldByName('idtiponomina').asstring+','+','+DtFechaContratación.Text, 'IdTipoNomina,fecha']);
    DsPeriodosGuardias.DataSet.Open;

    if not DsPeriodosGuardias.DataSet.Locate('tituloguardia',GuardiaAnt,[]) then
      guardiapred := GuardiaAnt
    else
      guardiapred := DsPeriodosGuardias.DataSet.FieldByName('tituloguardia').AsString;


    DsPeriodosGuardias.DataSet.Close;

    if not CargarDatosFiltrados(TClientDataSet(DsPeriodosGuardias.DataSet),'IdTipoNomina,fecha,idguardia',[dsTiponomina.DataSet.FieldByName('idtiponomina').AsInteger,ClientModule1.DatetoStrSql(DtFechaContratación.Date),TInteger(CmbGuardias.Items.Objects[CmbGuardias.ItemIndex]).Entero]) then
      raise InteligentConnection.CreateByCode(6, ['Periodo de guardia',dsTiponomina.DataSet.FieldByName('idtiponomina').asstring+','+','+DtFechaContratación.Text+vartostr(TInteger(CmbGuardias.Items.Objects[CmbGuardias.ItemIndex]).Entero), 'IdTipoNomina,fecha,idguardia']);


    DsPeriodosGuardias.DataSet.Open;

    if DsPeriodosGuardias.DataSet.RecordCount = 0 then
    begin
      CmbGuardias.ItemIndex := CmbGuardias.Items.IndexOf(guardiapred);
      raise InteligentException.Create('La guardia seleccionada no esta disponible para esa fecha.');
    end;

    EdtTrabajo.Text := DsPeriodosGuardias.DataSet.FieldByName('Trabajados').AsString;
    EdtTrabajo.Text := DsPeriodosGuardias.DataSet.FieldByName('Descanso').AsString;

    GuardiaAnt := CmbGuardias.Text;
  except
    on e:InteligentException do
      InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.CmbORganizacion2Select(Sender: TObject);
begin
  try
    if LlenandoORg2 then
      raise InteligentException.Create('*');
    //Filtrando el departamento por organizacion
    if CmbORganizacion2.ItemIndex > 0 then
    begin
      try
        DsDepartamento.DataSet.Filtered := False;
        DsDepartamento.DataSet.Filter := 'idorganizacion = '+inttostr(TOrganizacion(CmbOrganizacion2.Items.Objects[CmbOrganizacion2.ItemIndex]).Identificador);
        DsDepartamento.DataSet.Filtered := True;
        dsImss.DataSet.FieldByName('iddepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('IdDepartamento').AsInteger;
      except
        DsDepartamento.DataSet.Filtered := False;
      end;
    end
    else
    begin
      try
        DsDepartamento.DataSet.Filtered := False;
        DsDepartamento.DataSet.Filter := 'idorganizacion = '+inttostr(TOrganizacion(CmbOrganizacion.Items.Objects[CmbOrganizacion.ItemIndex]).Identificador);
        DsDepartamento.DataSet.Filtered := True;
        dsImss.DataSet.FieldByName('IdDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('IdDepartamento').AsInteger;
      except
        DsDepartamento.DataSet.Filtered := False;
      end;
    end;
  except
    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.CmbOrganizacionMouseEnter(
  Sender: TObject);
begin
  CmbOrganizacion.Hint := CmbOrganizacion.Text;
end;

procedure TFrmContratoPersonalDetalle.CmbOrganizacionSelect(Sender: TObject);
begin
  try
    if LlenandoOrg then
      raise InteligentException.Create('*');
    //Actualizando segundo combo
    try
      CmbORganizacion2.Text := '';
      CmbORganizacion2.Items.Clear;
      CmbORganizacion2.Items.Add('<ASIGNAR A '+CMBORGANIZACION.LabelCaption+' PRINCIPAL>');
      if CmbOrganizacion.Items.Count>0 then
      begin
        dsOrganizacion.DataSet.Filtered := False;
        dsOrganizacion.DataSet.Filter := ' padre = '+inttostr(TOrganizacion(CmbOrganizacion.Items.Objects[CmbOrganizacion.ItemIndex]).Identificador);
        dsOrganizacion.DataSet.Filtered := True;
        LlenarComboOrg('idorganizacion','codigoorganizacion','tituloorganizacion','regpatimss',TClientDataSet(dsOrganizacion.DataSet),CmbOrganizacion2);
        if dsOrganizacion.DataSet.recordcount > 0 then
        begin
          CmbOrganizacion2.ItemIndex := 0;
          CmbORganizacion2.LabelCaption := dsOrganizacion.DataSet.FieldByName('titulonivel').AsString;
        end;
      end;
      CmbORganizacion2.ItemIndex := 0;
      CmbORganizacion2Select(CmbORganizacion2);
    finally
      dsOrganizacion.DataSet.Filtered := False;
    end;
    //Filtrando el departamento por organizacion
    if CmbORganizacion2.ItemIndex <1 then
    try
      DsDepartamento.DataSet.Filtered := False;
      DsDepartamento.DataSet.Filter := 'idorganizacion = '+inttostr(TOrganizacion(CmbOrganizacion.Items.Objects[CmbOrganizacion.ItemIndex]).Identificador);
      DsDepartamento.DataSet.Filtered := True;
      dsImss.DataSet.FieldByName('IdDepartamento').AsInteger := dsDepartamento.DataSet.FieldByName('IdDepartamento').AsInteger;
      //CmbORganizacion2Select(CmbORganizacion2);
    except
      DsDepartamento.DataSet.Filtered := False;
    end
    else
      CmbORganizacion2Select(CmbORganizacion2);
  except
    on e:InteligentException do
      if e.Message <> '*' then
        InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.CmbRangosSSelect(Sender: TObject);
begin
  try
    //filtramos salarios
    DsSalario.DataSet.Close;

    if not CargarDatosFiltrados(TClientDataSet(DsSalario.DataSet),'idrangosalarios',[TInteger(CmbRangosS.Items.Objects[CmbRangosS.ItemIndex]).Entero]) then
      raise InteligentConnection.CreateByCode(6, ['salarios',vartostr(TInteger(CmbRangosS.Items.Objects[CmbRangosS.ItemIndex]).Entero), 'idrangosalario']);

    DsSalario.DataSet.Open;
    CmbSalarios.Text := 'Seleccione un salario';
    LlenarCombo('idsalario','titulosalario',tclientdataset(DsSalario.DataSet),CmbSalarios);
    if CmbSalarios.Items.Count>0 then
      CmbSalarios.ItemIndex := 0;
    CmbSalariosSelect(CmbSalarios);
  except
    on e:InteligentException do
      InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.CmbSalariosSelect(Sender: TObject);
begin
  try
    if (CmbSalarios.ItemIndex <> -1) and (CmbSalarios.Items.Objects[CmbSalarios.ItemIndex] <> nil) then
      DsSalario.DataSet.Locate('idsalario',TInteger(CmbSalarios.Items.Objects[CmbSalarios.ItemIndex]).Entero,[]);
    EdtSalarioDiario.Text := DsSalario.DataSet.FieldByName('salario').AsString;
    DsImss.DataSet.FieldByName('salariodiario').AsFloat := DsSalario.DataSet.FieldByName('salario').AsFloat;
    EdtSalarioDiarioChange(EdtSalarioDiario);
  except
    on e:InteligentException do
      InteliDialog.ShowModal('Información',e.Message, mtInformation, [mbOk], 0);
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
  end;
end;

procedure TFrmContratoPersonalDetalle.LimpiarCompDocumentoAutorizacion;
var
  padre: TWinControl;
begin
  try
    //Limpiar el componente
    if (Assigned(CompAutorizacion)) and (CompAutorizacion <> nil) then
    begin
      padre := CompAutorizacion.Parent;
      FreeAndNil(CompAutorizacion);
      CrearCompDocumentoAutorizacion(padre,False);
    end;
  except
    on e:exception do
       ;
  end;
end;

procedure TFrmContratoPersonalDetalle.LlenarCombo(Llaves,Titulos:string;Cliente:TClientDataset;Combo:TAdvComboBox);
var
  Identificador:TInteger;
begin
  if Cliente.state = dsBrowse then
  begin
    Combo.items.Clear;
    Cliente.first;
    while not Cliente.eof do
    begin
      Identificador:= TInteger.Create;
      Identificador.Entero := Cliente.FieldByName(llaves).AsInteger;
      Combo.AddItem(Cliente.fieldbyname(Titulos).asstring,Identificador);
      Cliente.next;
    end;
  end;
end;

procedure TFrmContratoPersonalDetalle.LlenarComboOrg(Llave,Codigo, Titulo, isr: string;
  Cliente: TClientDataset; Combo: TAdvComboBox);
var Org:TOrganizacion;
begin
  if Cliente.state = dsBrowse then
  begin
    Combo.items.Clear;
    if Combo.Name = 'CmbORganizacion2' then
      Combo.Items.Add('<ASIGNAR A '+CMBORGANIZACION.LabelCaption+' PRINCIPAL>');
    Cliente.first;
    while not Cliente.eof do
    begin
      Org:= TOrganizacion.Create;
      Org.Identificador := Cliente.FieldByName(llave).AsInteger;
      Org.Isr := Cliente.FieldByName(isr).asstring;
      Combo.AddItem(Cliente.fieldbyname(Codigo).asstring+' - '+Cliente.fieldbyname(Titulo).asstring,Org);
      Cliente.next;
    end;
  end;
end;

procedure TFrmContratoPersonalDetalle.Panel8Click(Sender: TObject);
begin
  pnlSalarioIntegrado.Width := 25;
end;

procedure TFrmContratoPersonalDetalle.CalculaSalarioDiario(Diario:Double;Aguinaldos,Vacaciones:Integer);
 var SA, //Salario al año
     AA, //Aguinaldo al año
     AD, //Aguinaldo diario
     VA, //Vacacional al año
     VD, //Vacacional Diario
     PV, //Prima vacacional
     PIN,//Prestaciones integras
     Calculo:Double;
     Dias:Integer;  //Dias al año
 begin
   try
     //calculando todo el rollo
     Dias := 365;

     AD := Aguinaldos / Dias;

     VD := Vacaciones / Dias;

     PV := VD * 0.25;

     PIN := AD + PV + 1;

     Calculo := Diario * PIN;

     GridSalarioIntegrado.BeginUpdate;
     GridSalarioIntegrado.AddRow(6);

     //Dibujando CONCEPTOS
     GridSalarioIntegrado.Cells[0,0] := 'SALARIO';
     GridSalarioIntegrado.Cells[0,1] := 'AGUINALDO';
     GridSalarioIntegrado.Cells[0,2] := 'VACACIONES';
     GridSalarioIntegrado.Cells[0,3] := 'PRIMA VACACIONAL';
     GridSalarioIntegrado.Cells[0,4] := 'FACTOR DE INTEGRACION';
     GridSalarioIntegrado.Cells[0,5] := 'SALARIO INTEGRADO';

     //llenando valores
     //Columna valores
     GridSalarioIntegrado.Cells[1,0] := '';
     GridSalarioIntegrado.Cells[1,1] := VarToStr(Aguinaldos);
     GridSalarioIntegrado.Cells[1,2] := VarToStr(Vacaciones);
     GridSalarioIntegrado.Cells[1,3] := '25%';

     //Columna DIARIO
     GridSalarioIntegrado.Cells[2,0] := VarToStr(DIARIO);
     GridSalarioIntegrado.Cells[2,1] := VarToStr(AD);
     GridSalarioIntegrado.Cells[2,2] := VarToStr(VD);
     GridSalarioIntegrado.Cells[2,3] := VarToStr(PV);

     //SUBTOTAL
     GridSalarioIntegrado.Cells[3,0] := VarToStr(Diario);
     GridSalarioIntegrado.Cells[3,4] := FormatFloat('##,###.####',PIN);

     //Total
     Calculo := roundto(Calculo,-2);

     DsSalarioBase.DataSet.Close;
     if not CargarDatosFiltrados(TClientDataSet(DsSalarioBase.DataSet),'TipoSalario,fechaaplicacion',['SMVDF',ClientModule1.DatetoStrSql(DtFechaContratación.Date)]) then
       raise InteligentConnection.CreateByCode(6, ['TipoSalario', 'SMVDF', 'TipoSalario']);
     DsSalarioBase.DataSet.Open;
     if DsSalarioBase.DataSet.RecordCount > 0 then
       if Calculo > (25 * DsSalarioBase.DataSet.FieldByName('salario').AsFloat) then
         Calculo := 25 * DsSalarioBase.DataSet.FieldByName('salario').AsFloat;

     GridSalarioIntegrado.Cells[4,5] := VarToStr(Calculo);
     if DsImss.DataSet.State in [dsInsert,dsEdit] then
       DsImss.DataSet.FieldByName('salariointegrado').AsFloat := Calculo;
     GridSalarioIntegrado.EndUpdate;
   except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Error debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
   end;

 end;
end.
