unit UTFrmPresentaAnalisis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, frxClass, frxPreview, DB, DBClient, frxDBSet,
  ClientModuleUnit1, UInteliDialog, DBCtrls, JvDBImage, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxLabel, cxGroupBox,
  cxRadioGroup, Grids, DBGrids, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TFrmPresentaAnalisis = class(TForm)
    ReporteAnalisis: TfrxReport;
    PreviewAnalisis: TfrxPreview;
    Panel1: TPanel;
    Panel2: TPanel;
    cdAnalisis: TClientDataSet;
    frdsAnalisisPostulante: TfrxDBDataset;
    cdDetalleDoctos: TClientDataSet;
    frdsDetalleDoctos: TfrxDBDataset;
    dsAnalisis: TDataSource;
    TimerDblClick: TTimer;
    PanelMovimiento: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lblDocumentacion2: TcxLabel;
    lblDocumentacion1: TcxLabel;
    PanelBotones: TPanel;
    btnAceptar: TcxButton;
    btnCancelar: TcxButton;
    lblPregunta: TcxLabel;
    lblNombre: TcxLabel;
    lblStatus: TcxLabel;
    lblRequerido: TcxLabel;
    lblEntregado: TcxLabel;
    cxLabel6: TcxLabel;
    lblCodigo: TcxLabel;
    lblDocumentacion3: TcxLabel;
    lblAdicional: TcxLabel;
    rgCondicion2: TcxRadioGroup;
    cdUptPostulanteGP: TClientDataSet;
    cdUptPlazaDetalle: TClientDataSet;
    cdDocumentos: TClientDataSet;
    dsDocumentos: TDataSource;
    lblAsignadoInfo: TcxLabel;
    lblPostulanteInfo: TcxLabel;
    lblPersonalInfo: TcxLabel;
    gridListaDocumentos1: TcxGridDBTableView;
    gridDocumentosLevel1: TcxGridLevel;
    gridDocumentos: TcxGrid;
    ColumnaNombre: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure ReporteAnalisisClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure TimerDblClickTimer(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure RGCondicion2PropertiesEditValueChanged(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure lblRequeridoClick(Sender: TObject);
  private
    RecienEntra: Boolean;
    Posicion: TPoint;
    Cuenta: Integer;
    Operacion: Integer;
    FormMovimiento: TForm;
    ListaIdDocumento: String;
    procedure GenerarAnalisis;
    procedure MostrarImagen(TagStr: String);
    procedure MostrarPanel(TagStr: String);
  public
    EstadoCheck: Boolean;
    ListaIdPersonal: String;
  end;

var
  FrmPresentaAnalisis: TFrmPresentaAnalisis;

implementation

{$R *.dfm}

Uses
  UTFrmAnalisisPostulantes;

procedure TFrmPresentaAnalisis.btnAceptarClick(Sender: TObject);
var
  Resultado: Boolean;
  Cursor: Tcursor;
begin
  Resultado := False;
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      // se filtra todo  el  personal  por la plaza y por  el  cargo.
      if not CargarDatosFiltrados(cdUptPlazaDetalle,'IdPlaza, IdCargo',[FrmAnalisisPostulantes.dsPlazaDetalleGpo.DataSet.FieldByName('IdPlaza').AsInteger, FrmAnalisisPostulantes.dsPlazaDetalleGpo.DataSet.FieldByName('IdCargo').AsInteger]) then
        raise InteligentException.CreateByCode(11,['Detalle de Plazas Vacantes']);

      cdUptPlazaDetalle.Open;

      //Cambiar al sujeto a Personal.
      if operacion = 1 then
      begin
        if not CargarDatosFiltrados(cdUptPostulanteGP,'IdPersonal',[cdAnalisis.FieldByName('IdPersonal').AsInteger]) then
          raise InteligentException.CreateByCode(11,['Detalle de Postulantes Grupo Plaza']);

        cdUptPostulanteGP.Open;
        CdUptPostulanteGP.Delete;
        cdUptPostulanteGP.ApplyUpdates(-1);
        Resultado := True;
      end;

      //Cambiar a Postulante.
      if operacion = 2 then
      begin
        //Verificar que  la persona no  este  asignada a este puesto.
        cdUptPlazaDetalle.Filtered := False;
        cdUptPlazaDetalle.Filter :='IdPersonal = ' + cdAnalisis.FieldByName('IdPersonal').AsString ;
        cdUptPlazaDetalle.Filtered := True;

        //Si la persona no se  encuentra  registrado entonces se agrega como postulante.
        if cdUptPlazaDetalle.RecordCount < 1 then
        begin
          cdUptPostulanteGP.Open;
          cdUptPostulanteGP.Append;

          cdUptPostulanteGP.FieldByName('IdPostulantesxGrupoPlaza').AsInteger := 0;
          cdUptPostulanteGP.FieldByName('IdPlaza').AsInteger := FrmAnalisisPostulantes.dsPlazaDetalleGpo.DataSet.FieldByName('IdPlaza').AsInteger;
          cdUptPostulanteGP.FieldByName('IdGrupo').AsInteger := FrmAnalisisPostulantes.dsPlazaDetalleGpo.DataSet.FieldByName('IdGrupo').AsInteger;
          cdUptPostulanteGP.FieldByName('IdPersonal').AsInteger := cdAnalisis.FieldByName('IdPersonal').AsInteger;

          cdUptPostulanteGP.Post;
          cdUptPostulanteGP.ApplyUpdates(-1);
          Resultado := True;
        end
        else
        begin
          //Si el sujeto ya esta asignado en el registro, se desvincula quitando la IdPersonal.
          //dejando  a la  plaza vacante  libre para  que  otra  persona sea  asignada.
          if cdUptPlazaDetalle.Locate('IdPersonal', cdAnalisis.FieldByName('IdPersonal').AsInteger, []) then
          begin
            cdUptPlazaDetalle.Edit;
            cdUptPlazaDetalle.FieldByName('IdPersonal').Clear;

            cdUptPlazaDetalle.Post;
            cdUptPlazaDetalle.ApplyUpdates(-1);
            Resultado := True;
          end;
        end;
      end;

      //Cambiar al Sujeto  como Asignado
      if operacion = 3 then
      begin
        if not cdUptPlazaDetalle.Locate('IdPersonal', null, []) then
          raise InteligentException.CreateByCode(24,['Por el momento no se puede asignar a esta persona para ocupar el puesto. Excede la Cantidad Solicitada']);

        cdUptPlazaDetalle.Edit;

        cdUptPlazaDetalle.FieldByName('IdPersonal').AsInteger := cdAnalisis.FieldByName('IdPersonal').AsInteger;

        cdUptPlazaDetalle.Post;
        cdUptPlazaDetalle.ApplyUpdates(-1);
        Resultado := True;
      end;

      //Actualizar el formulario para que los cambios sean visibles al usuario.
      //Todavia  no  refresca correctamente.
      if Resultado then
      begin
        GenerarAnalisis;
        ClientModule1.ImprimeReporte('AnalisisPersonal.fr3', ReporteAnalisis, PreviewAnalisis);
      end;

    Finally
      Screen.Cursor := Cursor;
    end;
  except
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
  end;

end;

procedure TFrmPresentaAnalisis.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  RecienEntra := True;
end;

procedure TFrmPresentaAnalisis.FormShow(Sender: TObject);
var
  CualIdDocxPostulante: Integer;
begin
  RecienEntra := True;

  Try
    if Not CrearConjunto(cdDocumentos, 'rhu_documento_lista', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Detalle de Plazas Vacantes']);

    if Not CrearConjunto(cdUptPostulanteGP, 'rhu_postulantesxgrupoplaza', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Detalle de Plazas Vacantes']);

    if Not CrearConjunto(cdUptPlazaDetalle, 'rhu_plazadetalle', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Detalle de Plazas Vacantes']);

    if Not CrearConjunto(cdDetalleDoctos, 'rhu_docxpostulante', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Documentos por Personal']);

    // Existe un error que consiste en que esta madre se está trayendo todos los documentos
    // de todos los empleados de todas las solicitudes (se trae toda la pinche tabla)
    // Debe existir un cargardatosfiltrados que no existia pero que voy a poner
    // para filtrar si se deben ver los documentos o no
    if EstadoCheck then
      CualIdDocxPostulante := -1
    else
      CualIdDocxPostulante := -9;
    if Not CargarDatosFiltrados(cdDetalleDoctos, 'IdDocxPostulante', [CualIdDocxPostulante]) then
      raise InteligentException.CreateByCode(6, ['Documentos por Personal', 1, 1]);

    cdDetalleDoctos.Open;

    GenerarAnalisis;

    if not CargarDatosFiltrados(cdDocumentos, 'ListaDocumento', [ListaIdDocumento]) then
      raise InteligentException.CreateByCode(5, ['Detalle Lista de Documentos']);

    ClientModule1.ImprimeReporte('AnalisisPersonal.fr3', ReporteAnalisis, PreviewAnalisis);
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

procedure TFrmPresentaAnalisis.GenerarAnalisis;
var
  Procedimiento: TClientDataSet;
  NombreCampo: String;
  i: Integer;
begin
  Procedimiento := TClientDataSet.Create(Self);
  Try
    ProcedimientoAlmacenado(Procedimiento, 'Res_AnalisisPostulantes',
      'pIdPlaza,pIdGrupo,pCuales,pEstado,pModo,pImagen,pListaPersonal,pModoLista',
      [FrmAnalisisPostulantes.dsPlazaDetalleGpo.DataSet.FieldByName('IdPlaza').AsInteger,
      FrmAnalisisPostulantes.dsPlazaDetalleGpo.DataSet.FieldByName('IdGrupo').AsInteger,
      FrmAnalisisPostulantes.pCuales, FrmAnalisisPostulantes.pEstado, FrmAnalisisPostulantes.pModo, 'Si', ListaIdPersonal, 'Si']);

    if cdAnalisis.Fields.Count = 0 then
    begin
      for i := 0 to Procedimiento.Fields.Count -1 do
        cdAnalisis.FieldDefs.Add(Procedimiento.FieldDefs.Items[i].Name, Procedimiento.FieldDefs.Items[i].DataType, Procedimiento.FieldDefs.Items[i].Size, False);

      for i := 0 to cdDetalleDoctos.Fields.Count -1 do
        cdAnalisis.FieldDefs.Add(cdDetalleDoctos.FieldDefs.Items[i].Name, cdDetalleDoctos.FieldDefs.Items[i].DataType, cdDetalleDoctos.FieldDefs.Items[i].Size, False);

      cdAnalisis.CreateDataSet;
      cdAnalisis.Open;
    end;

    while not Procedimiento.Eof do
    begin
      Try
        cdDetalleDoctos.Filtered := False;
        cdDetalleDoctos.Filter := 'IdPostulante = ' + Procedimiento.FieldByName('IdPersonal').AsString;
        cdDetalleDoctos.Filtered := True;
        cdDEtalleDoctos.First;
        Repeat
          cdAnalisis.Append;

          for i := 0 to Procedimiento.Fields.Count -1 do
          begin
            NombreCampo := cdAnalisis.FieldDefs.Items[i].Name;

            cdAnalisis.FieldByName(NombreCampo).AsVariant := Procedimiento.FieldByName(NombreCampo).AsVariant;
          end;

          if not cdDetalleDoctos.Eof then
            for i := 0 to cdDetalleDoctos.Fields.Count -1 do
            begin
              NombreCampo := cdDetalleDoctos.FieldDefs.Items[i].Name;

              cdAnalisis.FieldByName(NombreCampo).AsVariant := cdDetalleDoctos.FieldByName(NombreCampo).AsVariant;
            end;

          cdAnalisis.Post;

          if not cdDetalleDoctos.Eof then
            cdDetalleDoctos.Next;
        Until cdDetalleDoctos.Eof;
      Finally
        cdDetalleDoctos.Filtered := False;
      End;

      Procedimiento.Next;
    end;

    ListaIddocumento := Procedimiento.FieldByName('ListaIddocumento').AsString;

  Finally
    EliminarConjunto(Procedimiento);
    Procedimiento.Free;
  End;
end;

procedure TFrmPresentaAnalisis.lblRequeridoClick(Sender: TObject);
begin
  if gridDocumentos.Visible = False then
  begin
    gridDocumentos.Visible := true;

    if cdDocumentos.Active then
      cdDocumentos.Refresh
    else
      cdDocumentos.Open;
  end
  else
  begin
    gridDocumentos.Visible := False;
  end;

end;

procedure TFrmPresentaAnalisis.ReporteAnalisisClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if TimerDblClick.Enabled then
  begin
    // Se ha pulsado el Doble Click
    TimerDblClick.Enabled := False;
    RecienEntra := True;

    if Sender.Name = 'Picture1' then
      MostrarImagen(Sender.TagStr);

    if Sender.Name = 'BanderinRojo' then
      MostrarPanel(Sender.TagStr);

    if Sender.Name = 'BanderinVerde' then
      MostrarPanel(Sender.TagStr);

    if Sender.Name = 'BanderinAzul' then
      MostrarPanel(Sender.TagStr);

  end
  else
  begin
    Posicion := Mouse.CursorPos;
    Cuenta := 0;
    TimerDblClick.Enabled := True;
    RecienEntra := True;
  end;
end;

procedure TFrmPresentaAnalisis.RGCondicion2PropertiesEditValueChanged(
  Sender: TObject);
begin
  btnAceptar.Enabled := True;
  BtnCancelar.Enabled := True;

  if rgCondicion2.EditValue = 'Personal' then
    Operacion := 1;  //Hacer solo personal es decir no es postulante ni esta asignado  a ningun  cargo

  if rgCondicion2.EditValue = 'Asignado' then
    Operacion := 3;  //se autoriza que la persona  tome un cargo
end;

procedure TFrmPresentaAnalisis.TimerDblClickTimer(Sender: TObject);
var
  NewPosicion: TPoint;
begin
  RecienEntra := False;
  Inc(Cuenta);

  NewPosicion := Mouse.CursorPos;

  if (Cuenta > 400) or ((NewPosicion.x <> Posicion.x) or (NewPosicion.y <> Posicion.y)) then
    TimerDblClick.Enabled := False;
end;

procedure TFrmPresentaAnalisis.MostrarImagen(TagStr: String);
var
  IdPersonal: Integer;
  FormImg: TForm;
  Imagen: TJvDBImage;
begin
  try
    IdPersonal := StrToInt(TagStr);
  Except
    IdPersonal := -1;
  end;

  if cdAnalisis.Locate('IdPersonal', IdPersonal, []) then
  begin
    FormImg := TForm.Create(Self);
    Try
      Imagen := TJvDBImage.Create(FormImg);
      Try
        Imagen.Parent := FormImg;
        Imagen.DataSource := dsAnalisis;
        Imagen.DataField := 'Imagen';
        Imagen.Align := alClient;

        FormImg.ShowModal;
      Finally
        Imagen.Free;
      End;
    Finally
      FormImg.Free;
    End;
  end;
end;

procedure TFrmPresentaAnalisis.MostrarPanel(TagStr: String);
var
  IdPersonal: Integer;
begin
  try
    IdPersonal := StrToInt(TagStr);
  Except
    IdPersonal := -1;
  end;

  if cdAnalisis.Locate('IdPersonal', IdPersonal, []) then
  begin
    FormMovimiento := TForm.Create(Self);
    Try
      Try
        PanelMovimiento.Parent := FormMovimiento;
        PanelMovimiento.Visible := True;
        PanelMovimiento.Align := alClient;
        PanelBotones.Parent := FormMovimiento;
        Panelbotones.Visible := True;
        PanelBotones.Align := alBottom;

        lblCodigo.Caption := cdAnalisis.FieldByName('CodigoPersonal').AsString;
        lblNombre.Caption := cdAnalisis.FieldByName('NombreCompleto').AsString;
        lblRequerido.Caption := cdAnalisis.FieldByName('NumeroDocumentos').AsString;
        lblEntregado.Caption := cdAnalisis.FieldByName('CtaDoc').AsString;
        lblAdicional.Caption := cdAnalisis.FieldByName('CtaMaxExtra').AsString;

        FormMovimiento.Caption := 'Presentacion Movimiento de Personal';
        FormMovimiento.BorderStyle := bsDialog;
        FormMovimiento.Width := 600;
        FormMovimiento.Height := 280;

        //verifica  si el codigo personal no sea espacio o un  null, si lo es cambia este por  la  etiqueta N/A.
        if (cdAnalisis.FieldByName('CodigoPersonal').AsString = '') or (cdAnalisis.FieldByName('CodigoPersonal').AsString = null) then
          lblCodigo.Caption := 'N/A'
        else
          lblCodigo.Caption := cdAnalisis.FieldByName('CodigoPersonal').AsString;

        //Configura el formulario para hacer al sujeto un postulante.
        if (cdAnalisis.FieldByName('Asignado').AsString = 'No') and (cdAnalisis.FieldByName('Postulado').AsInteger = 0) then
        begin
          lblStatus.Caption := 'Personal';
          lblStatus.Style.TextColor := clRed;
          lblPregunta.Caption := '¿Desea cambiar  la condición  de esta  personal  a  Postulante?';
          Operacion := 2; //postular
        end;

        //Identifica  si la persona  es  un  postulante  y habilita el  formulario  para  volverlo persona o asignarlo a un cargo
        if (cdAnalisis.FieldByName('Asignado').AsString = 'No') and (cdAnalisis.FieldByName('Postulado').AsInteger = 1) then
        begin
          lblStatus.Caption := 'Postulante';
          lblStatus.Style.TextColor := clGreen;
          lblPregunta.Caption := '¿Desea cambiar la condicion  del postulante a Personal/Asignado?';
          lblPostulanteInfo.Visible := False;
          lblPersonalInfo.Visible := True;
          lblAsignadoInfo.Visible := True;
          lblAsignadoInfo.Top := lblPersonalInfo.Top + 15;
          btnAceptar.Enabled := False;
          btnCancelar.Enabled := False;
          rgCondicion2.Visible := True;
          FormMovimiento.Height := 300;
        end;

        //Identifica  si  la persona  esta  asignada  y  habilita  el  formulario  para  volverlo postulante
        if (cdAnalisis.FieldByName('Asignado').AsString = 'Si') and (cdAnalisis.FieldByName('Postulado').AsInteger = 1) then
        begin
          lblStatus.Caption := 'Asignado';
          lblStatus.Style.TextColor := clBlue;
          lblPregunta.Caption := '¿Desea cambiar la condicion  del Asignado a Postulante?';
          lblPersonalInfo.Visible := False;
          lblPostulanteInfo.Visible := True;
          LblPostulanteInfo.Top := LblPersonalInfo.Top;

          Operacion := 2; //Postular
        end;

        FormMovimiento.ShowModal;

      Finally
        rgCondicion2.Visible := False;
        PanelMovimiento.Parent := self;
        PanelMovimiento.Align := alCustom;
        PanelMovimiento.Visible := False;
        PanelBotones.Parent := self;
        PanelBotones.Align := alCustom;
        PanelBotones.Visible := False;
        btnAceptar.Enabled := True;
        btnCancelar.Enabled := True;
        lblPostulanteInfo.Visible := True;
        lblPersonalInfo.Visible := False;
        lblAsignadoInfo.Visible := False;
        gridDocumentos.Visible := False;
      End;
    Finally
      FormMovimiento.Destroy;
    End;
  end;

end;

end.
