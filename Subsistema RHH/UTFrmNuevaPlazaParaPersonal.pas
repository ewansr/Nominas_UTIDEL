unit UTFrmNuevaPlazaParaPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, AdvGlowButton, JvExControls, JvLabel, ExtCtrls,
  JvExExtCtrls, JvImage, DB, DBClient, ClientModuleUnit1, UInteliDialog, Mask,
  JvExMask, JvToolEdit, JvDBControls, AdvCombo, Spin, AdvEdit, AdvMoneyEdit;

type
  TFrmNuevaPlazaParaPersonal = class(TForm)
    dsPlaza: TDataSource;
    cdPlaza: TClientDataSet;
    GroupBox1: TGroupBox;
    img2: TJvImage;
    JvLabel3: TJvLabel;
    btnCargarImagen: TAdvGlowButton;
    DBMemo1: TDBMemo;
    JvLabel1: TJvLabel;
    GroupBox2: TGroupBox;
    cdPlazaDetalle: TClientDataSet;
    dsPlazaDetalle: TDataSource;
    DBCodigoPlazaDetalle: TDBEdit;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel6: TJvLabel;
    cdCargo: TClientDataSet;
    DBCargo: TDBLookupComboBox;
    DBIdTipoNomina: TDBLookupComboBox;
    cdTipoNomina: TClientDataSet;
    dsCargo: TDataSource;
    dsTipoNomina: TDataSource;
    cdDepartamento: TClientDataSet;
    dsDepartamento: TDataSource;
    JvLabel7: TJvLabel;
    DBDepartamento: TDBLookupComboBox;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    cbOrganizacion: TAdvComboBox;
    cdSubOrganizacion: TClientDataSet;
    cbSubOrganizacion: TAdvComboBox;
    cdOrganizacion: TClientDataSet;
    Panel1: TPanel;
    JvLabel5: TJvLabel;
    SalarioIndependiente: TAdvMoneyEdit;
    Panel2: TPanel;
    Btn_Aceptar: TAdvGlowButton;
    Btn_Cancelar: TAdvGlowButton;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnCargarImagenClick(Sender: TObject);
    procedure Btn_AceptarClick(Sender: TObject);
    procedure cdOrganizacionAfterScroll(DataSet: TDataSet);
    procedure cbOrganizacionChange(Sender: TObject);
    procedure cbSubOrganizacionChange(Sender: TObject);
    procedure cdSubOrganizacionAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdDepartamentoAfterScroll(DataSet: TDataSet);
    procedure cdCargoAfterScroll(DataSet: TDataSet);
    procedure cdTipoNominaAfterScroll(DataSet: TDataSet);
  private
    procedure VerificarSiEditaPlaza;
  public
    IdPlaza,
    IdPlazaDetalle: Integer;
    Salario: String;
    Factor: String;
    SalarioIntegrado: String;
    TituloCargo: String;
    FechaIngreso: TDate;
    IdCargo: Integer;
    Encabezado: String;
    procedure MuestraDatos;
  end;

var
  FrmNuevaPlazaParaPersonal: TFrmNuevaPlazaParaPersonal;

implementation

{$R *.dfm}

Uses
  UTFrmCargaImagen, nuc_genericclasses;

procedure TFrmNuevaPlazaParaPersonal.btnCargarImagenClick(Sender: TObject);
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

procedure TFrmNuevaPlazaParaPersonal.Btn_AceptarClick(Sender: TObject);
var
  cdFactor: TClientDataSet;
  CadenaFecha: String;
  Cursor: TCursor;
begin
  // Grabar los datos dentro de la transacción
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Verificar si se debió capturar el salario de manera directa
      if (cdCargo.FieldByName('Salario').IsNull) and (SalarioIndependiente.Value <= 0) then
      begin
        SalarioIndependiente.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Salario Diario']);
      end;

      // Verificar si el salario es menor que el salario mínimo
      if StrToFloat(cdOrganizacion.FieldByName('SalarioMinimo').AsString) > SalarioIndependiente.Value then
      begin
        SalarioIndependiente.SetFocus;
        raise InteligentWarning.CreateByCode(8, ['El Salario Diario capturado [' + SalarioIndependiente.Text + '] no puede ser menor que el Salario Mínimo de la Zona [' + cdOrganizacion.FieldByName('SalarioMinimo').AsString + ']' + #10 + #10 + 'Verifique esto e intente de nuevo']);
      end;

      if cdPlazaDetalle.FieldByName('IdDepartamento').IsNull then
      begin
        DBDepartamento.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Departamento']);
      end;

      if cdPlazaDetalle.FieldByName('IdCargo').IsNull then
      begin
        DBCargo.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Puesto']);
      end;

      if cdPlazaDetalle.FieldByName('IdTipoNomina').IsNull then
      begin
        DBIdTipoNomina.SetFocus;
        raise InteligentWarning.CreateByCode(18, ['Tipo de Nómina']);
      end;

      if cbSubOrganizacion.ItemIndex > 0 then
        cdPlaza.FieldByName('IdOrganizacion').AsInteger := cdSubOrganizacion.FieldByName('IdOrganizacion').AsInteger
      else
        cdPlaza.FieldByName('IdOrganizacion').AsInteger := cdOrganizacion.FieldByName('IdOrganizacion').AsInteger;
      cdPlaza.Post;
      cdPlaza.ApplyUpdates(-1);

      IdPlaza := UltimoId;

      cdPlazaDetalle.FieldByName('IdPlaza').AsInteger := IdPlaza;
      cdPlazaDetalle.FieldByName('FechaRequerido').AsDateTime := cdPlazaDetalle.FieldByName('FechaContratacion').AsDateTime;
      cdPlazaDetalle.Post;
      cdPlazaDetalle.ApplyUpdates(-1);

      IdPlazaDetalle := UltimoId;
      TituloCargo := cdCargo.FieldByName('TituloCargo').AsString;

      if cdCargo.FieldByName('Salario').IsNull then
        Salario := FloatToStr(SalarioIndependiente.Value)
      else
        Salario := cdCargo.FieldByName('Salario').AsString;
      IdCargo := cdCargo.FieldByName('IdCargo').AsInteger;

      Try
        cdFactor := TClientDataSet.Create(Nil);
        if Not CrearConjunto(cdFactor, 'nomina_factorintegracion', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Factor de Integración']);

        CadenaFecha := ClientModule1.DateToStrSQL(cdPlazaDetalle.FieldByName('FechaContratacion').AsDateTime);

        if not CargarDatosFiltrados(cdFactor, 'IdOrganizacion,IdTipoNomina,Anios', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, 1]) then
          raise InteligentException.CreateByCode(6, [cdOrganizacion.FieldByName('IdOrganizacion').AsString + '/' + cdTipoNomina.FieldByName('IdTipoNomina').AsString + '/1', 'IdOrganizacion/IdTipoNomina/Anios']);
        {if not CargarDatosFiltrados(cdFactor, 'IdOrganizacion,IdTipoNomina,Aplicacion,Anios', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, CadenaFecha, 1]) then
          raise InteligentException.CreateByCode(6, [cdOrganizacion.FieldByName('IdOrganizacion').AsString + '/' + cdTipoNomina.FieldByName('IdTipoNomina').AsString + '/' + CadenaFecha + '/1', 'IdOrganizacion/IdTipoNomina/Aplicacion/Anios']);}
        cdFactor.Open;

        if cdFactor.RecordCount > 0 then
        begin
          Factor := cdFactor.FieldByName('Factor').AsString;
          SalarioIntegrado := FloatToStr(Round((StrToFloat(Salario) * StrToFloat(cdFactor.FieldByName('Factor').AsString)) * 100) / 100);
        end
        else
        begin
          Factor := '1';
          SalarioIntegrado := Salario;
        end;
      Finally
        if cdFactor.ProviderName <> '' then
          EliminarConjunto(cdFactor);

        cdFactor.Free;
      End;

      Encabezado := cdOrganizacion.FieldByName('NombreOrganizacion').AsString + ' - ' + cdDepartamento.FieldByName('TituloDepartamento').AsString + ' - ' + cdCargo.FieldByName('TituloCargo').AsString;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentWarning do
    begin
      ModalResult := mrNone;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmNuevaPlazaParaPersonal.cbOrganizacionChange(Sender: TObject);
begin
  VerificarSiEditaPlaza;

  // Hubicar el registro
  if (cdOrganizacion.Active) and (cdOrganizacion.RecordCount > cbOrganizacion.ItemIndex) then
    cdOrganizacion.RecNo := cbOrganizacion.ItemIndex + 1;
end;

procedure TFrmNuevaPlazaParaPersonal.cbSubOrganizacionChange(Sender: TObject);
begin
  VerificarSiEditaPlaza;

  if cdSubOrganizacion.Active then
  begin
    // Verificar si se seleccionó el organigrama general
    if (cbSubOrganizacion.ItemIndex > 0) and (cdSubOrganizacion.RecordCount >= cbSubOrganizacion.ItemIndex) then
      cdSubOrganizacion.Locate('IdOrganizacion', Integer(cbSubOrganizacion.Items.Objects[cbSubOrganizacion.ItemIndex]), []);
      //cdSubOrganizacion.RecNo := cbSubOrganizacion.ItemIndex;

    //if cbSubOrganizacion.ItemIndex > 0 then
      cdSubOrganizacion.AfterScroll(cdSubOrganizacion);
  end;
end;

procedure TFrmNuevaPlazaParaPersonal.cdCargoAfterScroll(DataSet: TDataSet);
begin
  Panel1.Visible := (cdCargo.FieldByName('IdSalario').IsNull) and (cdCargo.FieldByName('IdRangoSalarios').IsNull);

  VerificarSiEditaPlaza;
end;

procedure TFrmNuevaPlazaParaPersonal.cdDepartamentoAfterScroll(
  DataSet: TDataSet);
begin
  VerificarSiEditaPlaza;
end;

procedure TFrmNuevaPlazaParaPersonal.cdOrganizacionAfterScroll(
  DataSet: TDataSet);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    if cdSubOrganizacion.Active then
    begin
      Try
        cdSubOrganizacion.Filtered := False;
        cdSubOrganizacion.Filter := 'Padre = ' + cdOrganizacion.FieldByName('IdOrganizacion').AsString;
        cdSubOrganizacion.Filtered := True;

        cbSubOrganizacion.Items.Clear;
        cbSubOrganizacion.Items.AddObject('< Organigrama General >', TObject(-1));
        cdSubOrganizacion.First;
        while Not cdSubOrganizacion.Eof do
        begin
          cbSubOrganizacion.Items.AddObject(cdSubOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdSubOrganizacion.FieldByName('IdOrganizacion').AsInteger));

          cdSubOrganizacion.Next;
        end;
      Finally
        cdSubOrganizacion.Filtered := False;
      End;

      if cdTipoNomina.Active then
      Try
        cdCargo.Filtered := False;
        cdCargo.Filter := 'IdOrganizacion = ' + cdOrganizacion.FieldByName('IdOrganizacion').AsString + ' and IdTipoNomina = ' + cdTipoNomina.FieldByName('IdTipoNomina').AsString;
        cdCargo.Filtered := True;
      Finally

      End;

      if cbSubOrganizacion.Items.Count > 0 then
      begin
        cbSubOrganizacion.ItemIndex := 0;
        cbSubOrganizacion.OnChange(Nil);
      end;
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmNuevaPlazaParaPersonal.cdSubOrganizacionAfterScroll(
  DataSet: TDataSet);
begin
  if (cbSubOrganizacion.Items.Count > 0) and (cbSubOrganizacion.ItemIndex >= 0) then
  begin
    if cbSubOrganizacion.ItemIndex = 0 then
      CargarDatosFiltrados(cdDepartamento, 'IdOrganizacion', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger])
    else
      CargarDatosFiltrados(cdDepartamento, 'IdOrganizacion', [cdSubOrganizacion.FieldByName('IdOrganizacion').AsInteger]);

    if cdDepartamento.Active then
      cdDepartamento.Refresh
    else
      cdDepartamento.Open;

    {if cdDepartamento.RecordCount > 0 then
      if (cdPlazaDetalle.Active) and (cdPlazaDetalle.RecordCount = 1) then
      begin
        if Not cdDepartamento.Locate('IdDepartamento', cdPlazaDetalle.FieldByName('IdDepartamento').AsInteger, []) then
          DBDepartamento.KeyValue := 0;
      end
      else
        DBDepartamento.KeyValue := 0; //cdDepartamento.FieldByName(DBDepartamento.Field.Name).AsString;}
  end;
end;

procedure TFrmNuevaPlazaParaPersonal.cdTipoNominaAfterScroll(DataSet: TDataSet);
begin
  VerificarSiEditaPlaza;
end;

procedure TFrmNuevaPlazaParaPersonal.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion_basico', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Organizaciones']);

      if Not CrearConjunto(cdSubOrganizacion, 'nuc_organizacion_basico', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Organizaciones']);

      if Not CrearConjunto(cdPlaza, 'rhu_plaza', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Plazas']);

      if Not CrearConjunto(cdPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Detalle de Plazas']);

      if Not CrearConjunto(cdCargo, 'nuc_cargo', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Puestos']);

      if Not CrearConjunto(cdTipoNomina, 'nom_tiponomina', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      if Not CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

      if Not CargarDatosFiltrados(cdOrganizacion, 'Padre', [-5]) then
        raise InteligentException.CreateByCode(6, ['Organizacion', -5, 'Padre']);

      if Not CargarDatosFiltrados(cdPlaza, 'IdPlaza', [-9]) then
        raise InteligentException.CreateByCode(6, ['Plazas', -9, 'Id. Plaza']);

      if Not CargarDatosFiltrados(cdPlazaDetalle, 'IdPlazaDetalle', [-9]) then
        raise InteligentException.CreateByCode(6, ['Detalle de Plazas', -9, 'Id. Plaza Detalle']);

      cdOrganizacion.Open;
      cbOrganizacion.Items.Clear;
      while not cdOrganizacion.Eof do
      begin
        cbOrganizacion.Items.AddObject(cdOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(cdOrganizacion.FieldByName('IdOrganizacion').AsInteger));

        cdOrganizacion.Next;
      end;

      if cbOrganizacion.Items.Count > 0 then
      begin
        //CargarDatosFiltrados(cdSubOrganizacion, 'Padre', [-9]);
        cdSubOrganizacion.Open;
        cbOrganizacion.ItemIndex := 0;
        cbOrganizacion.OnChange(Sender);
      end;

      cdPlaza.Open;
      cdPlazaDetalle.Open;
      cdCargo.Open;
      cdTipoNomina.Open;
//      cdDepartamento.Open;
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

procedure TFrmNuevaPlazaParaPersonal.FormDestroy(Sender: TObject);
begin
  EliminarConjunto(cdPlaza);
  EliminarConjunto(cdPlazaDetalle);
  EliminarConjunto(cdCargo);
  EliminarConjunto(cdTipoNomina);
  EliminarConjunto(cdOrganizacion);
  EliminarConjunto(cdSubOrganizacion);
  EliminarConjunto(cdDepartamento);
end;

procedure TFrmNuevaPlazaParaPersonal.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Try
      Screen.Cursor := crAppStart;

      cdPlaza.Append;
      cdPlazaDetalle.Append;

      cdPlaza.FieldByName('IdPlaza').AsInteger := 0;
      cdPlaza.FieldByName('CodigoPlaza').AsString := '';
      cdPlaza.FieldByName('Fecha').AsDateTime := Now;
      cdPlaza.FieldByName('IdUsuario').AsInteger                    := Globales.Elemento('IdUsuario').AsInteger;
      cdPlaza.FieldByName('IdSolicitante').AsInteger                := Globales.Elemento('IdUsuario').AsInteger;
//      cdPlaza.FieldByName('CodigoSolicitante').AsString             := SESeleccionado.CodigoPersonal;
//      cdPlaza.FieldByName('NombreSolicitante').AsString             := SESeleccionado.NombreCompleto;
      cdPlaza.FieldByName('IdCargoSolicitante').AsInteger           := ClientModule1.cdUsuario.FieldByName('IdCargo').AsInteger;
//      cdPlaza.FieldByName('CodigoCargoSolicitante').AsString        := SESeleccionado.CodigoCargo;
//      cdPlaza.FieldByName('TituloCargoSolicitante').AsString        := SESeleccionado.TituloCargo;
      cdPlaza.FieldByName('IdDepartamentoSolicitante').AsInteger    := ClientModule1.cdUsuario.FieldByName('IdDepartamento').AsInteger;
//      cdPlaza.FieldByName('CodigoDepartamentoSolicitante').AsString := SESeleccionado.CodigoDepartamento;
//      cdPlaza.FieldByName('TituloDepartamentoSolicitante').AsString := SESeleccionado.TituloDepartamento;
      cdPlaza.FieldByName('Activo').AsString := 'Si';

      cdPlazaDetalle.FieldByName('IdPlazaDetalle').AsInteger := 0;
      cdPlazaDetalle.FieldByName('CodigoPlazaDetalle').AsString := '';
      cdPlazaDetalle.FieldByName('IdPersonal').AsInteger := -5;
      cdPlazaDetalle.FieldByName('IdUsuario').AsInteger := Globales.Elemento('IdUsuario').AsInteger;
      cdPlazaDetalle.FieldByName('Fecha').AsDateTime := Now;
      cdPlazaDetalle.FieldByName('FechaContratacion').AsDateTime := Now;
      cdPlazaDetalle.FieldByName('DoctoAutorizacion').AsBytes := cdPlaza.FieldByName('DoctoAutorizacion').AsBytes;
      cdPlazaDetalle.FieldByName('Activo').AsString := 'Si';
      cdPlazaDetalle.FieldByName('ExperienciaMinima').AsInteger := 0;
      cdPlazaDetalle.FieldByName('UnidadExperiencia').AsString := 'Mes';
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmNuevaPlazaParaPersonal.VerificarSiEditaPlaza;
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;

  Try
    Screen.Cursor := crAppStart;

    if (cdPlazaDetalle.Active) and (cdPlazaDetalle.State <> dsInsert) and (cdPlazaDetalle.State <> dsEdit) then
    begin
      CargarDatosFiltrados(cdPlaza, 'IdPlaza', [IdPlaza]);
      cdPlaza.Refresh;
      cdPlaza.Edit;

      CargarDatosFiltrados(cdPlazaDetalle, 'IdPlazaDetalle', [IdPlazaDetalle]);
      cdPlazaDetalle.Refresh;
      cdPlazaDetalle.Edit;
    end;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmNuevaPlazaParaPersonal.MuestraDatos;
var
  i, IdOrganizacion: Integer;
begin
  cdPlazaDetalle.Close;
  cdPlaza.Close;

  if Not CargarDatosFiltrados(cdPlazaDetalle, 'IdPlazaDetalle', [IdPlazaDetalle]) then
    raise InteligentException.CreateByCode(5, ['Detalle de Plaza', IdPlazaDetalle, 'Id. Plaza Detalle']);

  cdPlazaDetalle.Open;

  if cdPlazaDetalle.RecordCount = 0 then
    raise InteligentException.CreateByCode(27, ['Detalle de Plaza', IdPlazaDetalle]);

  IdPlaza := cdPlazaDetalle.FieldByName('IdPlaza').AsInteger;

  if Not CargarDatosFiltrados(cdPlaza, 'IdPlaza', [IdPlaza]) then
    raise InteligentException.CreateByCode(5, ['Plaza', IdPlaza, 'Id. Plaza']);

  cdPlaza.Open;
  IdOrganizacion := cdPlaza.FieldByName('IdOrganizacion').AsInteger;

  // Verificar que nivel se seleccionó en la organización
  if cdSubOrganizacion.Locate('IdOrganizacion', IdOrganizacion, []) then
  begin
    i := 0;
    while (i < cbOrganizacion.Items.Count) and (Integer(cbOrganizacion.Items.Objects[i]) <> cdSubOrganizacion.FieldByName('Padre').AsInteger) do
      Inc(i);

    if Integer(cbOrganizacion.Items.Objects[i]) = cdSubOrganizacion.FieldByName('Padre').AsInteger then
    begin
      cbOrganizacion.ItemIndex := i;
      cbOrganizacion.OnChange(Nil);

      i := 0;
      while (i < cbSubOrganizacion.Items.Count) and (Integer(cbSubOrganizacion.Items.Objects[i]) <> IdOrganizacion) do
        Inc(i);

      if Integer(cbSubOrganizacion.Items.Objects[i]) = IdOrganizacion then
      begin
        cbSubOrganizacion.ItemIndex := i;
        cbSubOrganizacion.OnChange(Nil);
      end;
    end;
  end;

  cdPlazaDetalle.Edit;
  cdPlaza.Edit;

{        cbOrganizacion.ItemIndex := 0;
        cbOrganizacion.OnChange(Sender);}

  {Factor := FrmNuevaPlazaParaPersonal.Factor;
  Salario := FrmNuevaPlazaParaPersonal.Salario;
  SalarioIntegrado := FrmNuevaPlazaParaPersonal.SalarioIntegrado;
  IdCargo := FrmNuevaPlazaParaPersonal.IdCargo;
  TituloCargo := FrmNuevaPlazaParaPersonal.TituloCargo;}


  //cdPlazaDetalle.Edit;
end;

end.
