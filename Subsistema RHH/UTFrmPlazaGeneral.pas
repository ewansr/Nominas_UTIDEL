unit UTFrmPlazaGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, StdCtrls, cxButtons, AdvEdBtn, pngimage, JvExControls,
  JvLabel, AdvGroupBox, ComCtrls, DBCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker, AdvEdit, DBAdvEd, ExtCtrls, JvExExtCtrls, JvImage,
  AdvGlowButton, UInteliDialog, ClientModuleUnit1, UControlExcepciones,
  URegistro, DB, DBClient, Mask;

type
  TOFirma = class
    IdPersonal: Integer;
    CodigoPersonal: string;
    NombreCompleto: string;
    IdCargo: Integer;
    CodigoCargo: string;
    TituloCargo: string;
    IdDepartamento: Integer;
    CodigoDepartamento: string;
    TituloDepartamento: string;
  end;

  TFrmPlazaGeneral = class(TForm)
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel4: TPanel;
    btnCargarImagen: TAdvGlowButton;
    Panel5: TPanel;
    Panel6: TPanel;
    img2: TJvImage;
    Panel3: TPanel;
    Panel7: TPanel;
    Panel11: TPanel;
    Panel10: TPanel;
    grp1: TAdvGroupBox;
    lbl1: TJvLabel;
    lbl2: TJvLabel;
    lblCargoHist: TJvLabel;
    lblDeptoHist: TJvLabel;
    img1: TImage;
    lblSolicitante: TJvLabel;
    edtCodigoSolic: TAdvEditBtn;
    Panel2: TPanel;
    CxBtnCargar: TcxButton;
    CxBtnCancel: TcxButton;
    dsUptPlazaGeneral: TDataSource;
    pnlFirmantes: TPanel;
    pnlAutoriza: TPanel;
    JvLabel6: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    pnlVoBo: TPanel;
    JvLabel7: TJvLabel;
    Panel8: TPanel;
    edtObservaciones: TDBRichEdit;
    Panel9: TPanel;
    Splitter2: TSplitter;
    Panel12: TPanel;
    edtCodigo: TDBAdvEdit;
    lblCargoAutoriza: TJvLabel;
    lblDepartamentoAutoriza: TJvLabel;
    JvLabel4: TJvLabel;
    lblCargoVoBo: TJvLabel;
    JvLabel8: TJvLabel;
    lblDepartamentoVoBo: TJvLabel;
    cbAutoriza: TComboBox;
    cbVoBo: TComboBox;
    dtpFecha: TAdvDBDateTimePicker;
    AdvGroupBox1: TAdvGroupBox;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    cbDepartamento: TDBLookupComboBox;
    Panel16: TPanel;
    JvLabel1: TJvLabel;
    JvLabel5: TJvLabel;
    dsOrganizacionRuta: TDataSource;
    dsDepartamento: TDataSource;
    cdDepartamento: TClientDataSet;
    cbOrganizacionRuta: TComboBox;
    procedure edtCodigoSolicClickBtn(Sender: TObject);
    procedure edtCodigoSolicKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CxBtnCargarClick(Sender: TObject);
    procedure cbAutorizaChange(Sender: TObject);
    procedure cbVoBoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbOrganizacionRutaChange(Sender: TObject);
  private
    cdBuscaCliente: TClientDataSet;
    Resultado: TModalResult;
    OldIdOrganizacion: Integer;
    procedure SeleccionarEmpleado;
  public
    LastId: Integer;
    LastCode: String;
  end;

var
  FrmPlazaGeneral: TFrmPlazaGeneral;

implementation

uses UTFrmSeleccionarEmpleado, UTFrmSeleccionaSolicitante;

{$R *.dfm}

procedure TFrmPlazaGeneral.cbAutorizaChange(Sender: TObject);
var
  OFirma: TOFirma;
begin
  OFirma := TOFirma.Create;
  OFirma := TOFirma(cbAutoriza.Items.Objects[cbAutoriza.ItemIndex]);

  lblCargoAutoriza.Caption        := OFirma.CodigoCargo + ' - ' + OFirma.TituloCargo;
  lblDepartamentoAutoriza.Caption := OFirma.CodigoDepartamento + ' - ' + OFirma.TituloDepartamento;
end;

procedure TFrmPlazaGeneral.cbOrganizacionRutaChange(Sender: TObject);
var
  locIdOrganizacion: Integer;
begin
  locIdOrganizacion := Integer(cbOrganizacionRuta.Items.Objects[cbOrganizacionRuta.ItemIndex]);

  if OldIdOrganizacion <> locIdOrganizacion then
  begin
    if Not CargarDatosFiltrados(cdDepartamento, 'IdOrganizacion', [locIdOrganizacion]) then
      raise InteligentException.CreateByCode(6, ['Departamento', locIdOrganizacion, 'Id. Organizacion']);

    if cdDepartamento.Active then
      cdDepartamento.Refresh
    else
      cdDepartamento.Open;

    cdDepartamento.First;
    dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamento').AsInteger := cdDepartamento.FieldByName('IdDepartamento').AsInteger;
  end;

  OldIdOrganizacion := locIdOrganizacion;
end;

procedure TFrmPlazaGeneral.cbVoBoChange(Sender: TObject);
var
  OFirma: TOFirma;
begin
  OFirma := TOFirma.Create;
  OFirma := TOFirma(cbVoBo.Items.Objects[cbVoBo.ItemIndex]);

  lblCargoVoBo.Caption        := OFirma.CodigoCargo + ' - ' + OFirma.TituloCargo;
  lblDepartamentoVoBo.Caption := OFirma.CodigoDepartamento + ' - ' + OFirma.TituloDepartamento;
end;

procedure TFrmPlazaGeneral.CxBtnCargarClick(Sender: TObject);
var
  Cursor: TCursor;
  OFirma: TOFirma;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      // Verificar los datos antes de grabar
      if edtCodigoSolic.Text <> 'SuperUsuario' then
      begin
        if dsUptPlazaGeneral.DataSet.FieldByName('IdSolicitante').AsInteger <= 0 then
        begin
          if edtCodigoSolic.CanFocus then
            edtCodigoSolic.SetFocus
          else
            edtObservaciones.SetFocus;

          raise InteligentException.CreateByCode(18, ['Solicitante']);
        end;

        if dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamentoSolicitante').AsInteger <= 0 then
          raise InteligentException.CreateByCode(8, ['El solicitante parece no estar dado de alta en un departamento activo.' + #10 + #10 + 'Verifique esto e intente de nuevo']);

        if dsUptPlazaGeneral.DataSet.FieldByName('IdCargoSolicitante').AsInteger <= 0 then
          raise InteligentException.CreateByCode(8, ['El solicitante parece no estar dado de alta con un puesto activo.' + #10 + #10 + 'Verifique esto e intente de nuevo']);
      end;

      if cdDepartamento.RecordCount = 0 then
      begin
        if cbOrganizacionRuta.CanFocus then
          cbOrganizacionRuta.SetFocus
        else
          edtObservaciones.SetFocus;

        raise InteligentException.CreateByCode(29,['La organización seleccionada parece no tener ningún departamento activo' + #10 + #10 + 'Verifique esto e intente de nuevo']);
      end;
      // Determinar los datos de los firmantes
      OFirma := TOFirma.Create;
      OFirma := TOFirma(cbAutoriza.Items.Objects[cbAutoriza.ItemIndex]);

      dsUptPlazaGeneral.DataSet.FieldByName('IdAutoriza').AsInteger                := OFirma.IdPersonal;
      dsUptPlazaGeneral.DataSet.FieldByName('CodigoAutoriza').AsString             := ''; //OFirma.CodigoPersonal;
      dsUptPlazaGeneral.DataSet.FieldByName('NombreAutoriza').AsString             := ''; //OFirma.NombreCompleto;
      dsUptPlazaGeneral.DataSet.FieldByName('IdCargoAutoriza').AsInteger           := OFirma.IdCargo;
      dsUptPlazaGeneral.DataSet.FieldByName('CodigoCargoAutoriza').AsString        := ''; //OFirma.CodigoCargo;
      dsUptPlazaGeneral.DataSet.FieldByName('TituloCargoAutoriza').AsString        := ''; //OFirma.TituloCargo;
      dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamentoAutoriza').AsInteger    := OFirma.IdDepartamento;
      dsUptPlazaGeneral.DataSet.FieldByName('CodigoDepartamentoAutoriza').AsString := ''; //OFirma.CodigoDepartamento;
      dsUptPlazaGeneral.DataSet.FieldByName('TituloDepartamentoAutoriza').AsString := ''; //OFirma.TituloDepartamento;

      OFirma := TOFirma.Create;
      OFirma := TOFirma(cbVoBo.Items.Objects[cbVoBo.ItemIndex]);

      dsUptPlazaGeneral.DataSet.FieldByName('IdVoBo').AsInteger                := OFirma.IdPersonal;
      dsUptPlazaGeneral.DataSet.FieldByName('CodigoVoBo').AsString             := ''; //OFirma.CodigoPersonal;
      dsUptPlazaGeneral.DataSet.FieldByName('NombreVoBo').AsString             := ''; //OFirma.NombreCompleto;
      dsUptPlazaGeneral.DataSet.FieldByName('IdCargoVoBo').AsInteger           := OFirma.IdCargo;
      dsUptPlazaGeneral.DataSet.FieldByName('CodigoCargoVoBo').AsString        := ''; //OFirma.CodigoCargo;
      dsUptPlazaGeneral.DataSet.FieldByName('TituloCargoVoBo').AsString        := ''; //OFirma.TituloCargo;
      dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamentoVoBo').AsInteger    := OFirma.IdDepartamento;
      dsUptPlazaGeneral.DataSet.FieldByName('CodigoDepartamentoVoBo').AsString := ''; //OFirma.CodigoDepartamento;
      dsUptPlazaGeneral.DataSet.FieldByName('TituloDepartamentoVoBo').AsString := ''; //OFirma.TituloDepartamento;

      if dsUptPlazaGeneral.State = dsInsert then
      begin
        dsUptPlazaGeneral.DataSet.FieldByName('CodigoSolicitante').AsString := '';
        dsUptPlazaGeneral.DataSet.FieldByName('NombreSolicitante').AsString := '';

        dsUptPlazaGeneral.DataSet.FieldByName('CodigoCargoSolicitante').AsString := '';
        dsUptPlazaGeneral.DataSet.FieldByName('TituloCargoSolicitante').AsString := '';

        dsUptPlazaGeneral.DataSet.FieldByName('CodigoDepartamentoSolicitante').AsString := '';
        dsUptPlazaGeneral.DataSet.FieldByName('TituloDepartamentoSolicitante').AsString := '';
      end;

      dsUptPlazaGeneral.DataSet.Post;
      TClientDataSet(dsUptPlazaGeneral.DataSet).ApplyUpdates(-1);

      LastId := UltimoId;
      LastCode := UltimoCodigo;
      Resultado := mrOk;
      Close;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;
procedure TFrmPlazaGeneral.edtCodigoSolicClickBtn(Sender: TObject);
begin
  SeleccionarEmpleado;
end;

procedure TFrmPlazaGeneral.edtCodigoSolicKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    SeleccionarEmpleado;
end;

procedure TFrmPlazaGeneral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsUptPlazaGeneral.DataSet.Cancel;

  if Assigned(cdBuscaCliente) then
    EliminarConjunto(cdBuscaCliente);

  SetRegistry('\Ventanas', '\' + Self.Name, Panel1.Name, IntToStr(Panel1.Width));

  LiberarVentana(Self, Action);

  ModalResult := Resultado;
end;

procedure TFrmPlazaGeneral.FormCreate(Sender: TObject);
var
  OFirma: TOFirma;
begin
  Resultado := mrCancel;
  OldIdOrganizacion := -1;

  AccedeACoordenadas(Self);

  // Obtener los tamaño del panel
  Try
    Panel1.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, Panel1.Name));
  Except
    ;
  End;

  Try
    AccedeARutaOrganizacion('Si');

    AbrirAutorizaciones('PLAZAS');
    AbrirSolicitantes('PLAZAS');

    // Se verifica  que  exista  un autorizador  y si no existe se  crea  un  super usuario.
    if ClientModule1.cdAutorizaciones.RecordCount = 0 then
    begin
      OFirma := TOFirma.Create;
      OFirma.CodigoPersonal     := 'SuperUsuario';
      OFirma.NombreCompleto     := 'Super Usuario';
      OFirma.CodigoCargo        := 'N/A';
      OFirma.TituloCargo        := 'N/A';
      OFirma.CodigoDepartamento := 'N/A';
      OFirma.TituloDepartamento := 'N/A';

      cbAutoriza.Items.AddObject('Super Usuario', OFirma);
      cbVoBo.Items.AddObject('Super Usuario', OFirma);
    end
    else
    begin
      //Si existe un  autorizador  se  sigue  el  flujo normal  del sistema y se salta el if anterior.
      // Leer los datos completos
      ClientModule1.cdAutorizaciones.First;
      while Not ClientModule1.cdAutorizaciones.Eof do
      begin
        OFirma := TOFirma.Create;
        OFirma.IdPersonal         := ClientModule1.cdAutorizaciones.FieldByName('IdPersonal').AsInteger;
        OFirma.CodigoPersonal     := ClientModule1.cdAutorizaciones.FieldByName('CodigoPersonal').AsString;
        OFirma.NombreCompleto     := ClientModule1.cdAutorizaciones.FieldByName('NombreCompleto').AsString;
        OFirma.IdCargo            := ClientModule1.cdAutorizaciones.FieldByName('IdCargo').AsInteger;
        OFirma.CodigoCargo        := ClientModule1.cdAutorizaciones.FieldByName('CodigoCargo').AsString;
        OFirma.TituloCargo        := ClientModule1.cdAutorizaciones.FieldByName('TituloCargo').AsString;
        OFirma.IdDepartamento     := ClientModule1.cdAutorizaciones.FieldByName('IdDepartamento').AsInteger;
        OFirma.CodigoDepartamento := ClientModule1.cdAutorizaciones.FieldByName('CodigoDepartamento').AsString;
        OFirma.TituloDepartamento := ClientModule1.cdAutorizaciones.FieldByName('TituloDepartamento').AsString;

        if AnsiCompareText(ClientModule1.cdAutorizaciones.FieldByName('TipoFirma').AsString, 'AUTORIZACION') = 0 then
          cbAutoriza.Items.AddObject(ClientModule1.cdAutorizaciones.FieldByName('NombreCompleto').AsString, OFirma);

        if AnsiCompareText(ClientModule1.cdAutorizaciones.FieldByName('TipoFirma').AsString, 'VoBo') = 0 then
          cbVoBo.Items.AddObject(ClientModule1.cdAutorizaciones.FieldByName('NombreCompleto').AsString, OFirma);

        ClientModule1.cdAutorizaciones.Next;
      end;

      // Leer los datos completos
      ClientModule1.cdSolicitantes.First;
      while Not ClientModule1.cdSolicitantes.Eof do
      begin
        OFirma := TOFirma.Create;
        OFirma.IdPersonal         := ClientModule1.cdSolicitantes.FieldByName('IdPersonal').AsInteger;
        OFirma.CodigoPersonal     := ClientModule1.cdSolicitantes.FieldByName('CodigoPersonal').AsString;
        OFirma.NombreCompleto     := ClientModule1.cdSolicitantes.FieldByName('NombreCompleto').AsString;
        OFirma.IdCargo            := ClientModule1.cdSolicitantes.FieldByName('IdCargo').AsInteger;
        OFirma.CodigoCargo        := ClientModule1.cdSolicitantes.FieldByName('CodigoCargo').AsString;
        OFirma.TituloCargo        := ClientModule1.cdSolicitantes.FieldByName('TituloCargo').AsString;
        OFirma.IdDepartamento     := ClientModule1.cdSolicitantes.FieldByName('IdDepartamento').AsInteger;
        OFirma.CodigoDepartamento := ClientModule1.cdSolicitantes.FieldByName('CodigoDepartamento').AsString;
        OFirma.TituloDepartamento := ClientModule1.cdSolicitantes.FieldByName('TituloDepartamento').AsString;

        ClientModule1.cdSolicitantes.Next;
      end;
    end;

    // Verificar si existe personal necesario para la autorización
    if cbAutoriza.Items.Count = 0 then
      raise InteligentException.CreateByCode(30, ['Catálogo de personal para Autorización de Plazas Vacantes']);

    if cbVoBo.Items.Count = 0 then
      raise InteligentException.CreateByCode(30, ['Catálogo de personal para Visto Bueno de Plazas Vacantes']);

    cbAutoriza.ItemIndex := 0;
    cbVoBo.ItemIndex := 0;

    cbAutoriza.OnChange(Sender);
    cbVoBo.OnChange(Sender);
  Except
    on e:Exception do
    begin
      LevantarExcepcion(e);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmPlazaGeneral.FormShow(Sender: TObject);
begin
  Try
    if Not CrearConjunto(cdDepartamento, 'nuc_departamento', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Departamentos']);

    // Llenar el combo de las Organizaciones
    ClientModule1.cdOrganizacionRuta.First;
    while not ClientModule1.cdOrganizacionRuta.Eof do
    begin
      cbOrganizacionRuta.Items.AddObject(ClientModule1.cdOrganizacionRuta.FieldByName('TituloOrganizacion').AsString, TObject(ClientModule1.cdOrganizacionRuta.FieldByName('IdOrganizacion').AsInteger));

      ClientModule1.cdOrganizacionRuta.Next;
    end;

    if cbOrganizacionRuta.Items.Count > 0 then
    begin
      cbOrganizacionRuta.ItemIndex := 0;
      cbOrganizacionRuta.OnChange(cbOrganizacionRuta);
    end;

    // Aquí verificas si hay al menos un solicitante
    if ClientModule1.cdSolicitantes.RecordCount = 0 then
    begin
      dsUptPlazaGeneral.DataSet.FieldByName('IdSolicitante').AsVariant             := NULL;
      dsUptPlazaGeneral.DataSet.FieldByName('CodigoSolicitante').AsString          := 'SuperUsuario';
      dsUptPlazaGeneral.DataSet.FieldByName('NombreSolicitante').AsString          := 'Super Usuario';
      dsUptPlazaGeneral.DataSet.FieldByName('IdCargoSolicitante').AsVariant        := NULL;
      dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamentoSolicitante').AsVariant := NULL;

      edtCodigoSolic.Text := 'SuperUsuario';
      lblSolicitante.Caption := 'Super Usuario';
      lblCargoHist.Caption := 'N/A' + ' - ' + 'N/A';
      lblDeptoHist.Caption := 'N/A' + ' - ' + 'N/A';

      edtCodigoSolic.Enabled := False;
    end;
  Except
    on e:Exception do
    begin
      LevantarExcepcion(e);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmPlazaGeneral.SeleccionarEmpleado;
begin
  Try
    // Verificar si se ha especificado un criterio
    if edtCodigoSolic.Text = '' then
    begin
      // Si no se ha solicitado un criterio se deberá mostrar el dataset completo
      Application.CreateForm(TFrmSeleccionaSolicitante, FrmSeleccionaSolicitante);
      FrmSeleccionaSolicitante.dsSolicitantes.DataSet := ClientModule1.cdSolicitantes;
      if FrmSeleccionaSolicitante.ShowModal = mrOk then
      begin
        dsUptPlazaGeneral.DataSet.FieldByName('IdSolicitante').AsInteger             := ClientModule1.cdSolicitantes.FieldByName('IdPersonal').AsInteger;
        dsUptPlazaGeneral.DataSet.FieldByName('CodigoSolicitante').AsString          := ClientModule1.cdSolicitantes.FieldByName('CodigoPersonal').AsString;
        dsUptPlazaGeneral.DataSet.FieldByName('NombreSolicitante').AsString          := ClientModule1.cdSolicitantes.FieldByName('NombreCompleto').AsString;
        dsUptPlazaGeneral.DataSet.FieldByName('IdCargoSolicitante').AsInteger        := ClientModule1.cdSolicitantes.FieldByName('IdCargo').AsInteger;
        dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamentoSolicitante').AsInteger := ClientModule1.cdSolicitantes.FieldByName('IdDepartamento').AsInteger;

        edtCodigoSolic.Text := ClientModule1.cdSolicitantes.FieldByName('CodigoPersonal').AsString;
        lblSolicitante.Caption := ClientModule1.cdSolicitantes.FieldByName('NombreCompleto').AsString;
        lblCargoHist.Caption := ClientModule1.cdSolicitantes.FieldByName('CodigoCargo').AsString + ' - ' + ClientModule1.cdSolicitantes.FieldByName('TituloCargo').AsString;
        lblDeptoHist.Caption := ClientModule1.cdSolicitantes.FieldByName('CodigoDepartamento').AsString + ' - ' + ClientModule1.cdSolicitantes.FieldByName('TituloDepartamento').AsString;
      end;
    end
    else
    begin
      Try
        ClientModule1.cdSolicitantes.Filtered := False;
        ClientModule1.cdSolicitantes.Filter := 'CodigoPersonal = ' + QuotedStr(edtCodigoSolic.Text);
        ClientModule1.cdSolicitantes.Filtered := True;

        if ClientModule1.cdSolicitantes.RecordCount > 1 then
        begin
          Application.CreateForm(TFrmSeleccionaSolicitante, FrmSeleccionaSolicitante);
          FrmSeleccionaSolicitante.dsSolicitantes.DataSet := ClientModule1.cdSolicitantes;
          if FrmSeleccionaSolicitante.ShowModal = mrOk then
          begin
            dsUptPlazaGeneral.DataSet.FieldByName('IdSolicitante').AsInteger             := ClientModule1.cdSolicitantes.FieldByName('IdPersonal').AsInteger;
            dsUptPlazaGeneral.DataSet.FieldByName('CodigoSolicitante').AsString          := ClientModule1.cdSolicitantes.FieldByName('CodigoPersonal').AsString;
            dsUptPlazaGeneral.DataSet.FieldByName('NombreSolicitante').AsString          := ClientModule1.cdSolicitantes.FieldByName('NombreCompleto').AsString;
            dsUptPlazaGeneral.DataSet.FieldByName('IdCargoSolicitante').AsInteger        := ClientModule1.cdSolicitantes.FieldByName('IdCargo').AsInteger;
            dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamentoSolicitante').AsInteger := ClientModule1.cdSolicitantes.FieldByName('IdDepartamento').AsInteger;

            edtCodigoSolic.Text    := ClientModule1.cdSolicitantes.FieldByName('CodigoPersonal').AsString;
            lblSolicitante.Caption := ClientModule1.cdSolicitantes.FieldByName('NombreCompleto').AsString;
            lblCargoHist.Caption   := ClientModule1.cdSolicitantes.FieldByName('CodigoCargo').AsString + ' - ' + ClientModule1.cdSolicitantes.FieldByName('TituloCargo').AsString;
            lblDeptoHist.Caption   := ClientModule1.cdSolicitantes.FieldByName('CodigoDepartamento').AsString + ' - ' + ClientModule1.cdSolicitantes.FieldByName('TituloDepartamento').AsString;
          end;
        end;

        if ClientModule1.cdSolicitantes.RecordCount = 1 then
        begin
          dsUptPlazaGeneral.DataSet.FieldByName('IdSolicitante').AsInteger             := ClientModule1.cdSolicitantes.FieldByName('IdPersonal').AsInteger;
          dsUptPlazaGeneral.DataSet.FieldByName('CodigoSolicitante').AsString          := ClientModule1.cdSolicitantes.FieldByName('CodigoPersonal').AsString;
          dsUptPlazaGeneral.DataSet.FieldByName('NombreSolicitante').AsString          := ClientModule1.cdSolicitantes.FieldByName('NombreCompleto').AsString;
          dsUptPlazaGeneral.DataSet.FieldByName('IdCargoSolicitante').AsInteger        := ClientModule1.cdSolicitantes.FieldByName('IdCargo').AsInteger;
          dsUptPlazaGeneral.DataSet.FieldByName('IdDepartamentoSolicitante').AsInteger := ClientModule1.cdSolicitantes.FieldByName('IdDepartamento').AsInteger;

          edtCodigoSolic.Text := ClientModule1.cdSolicitantes.FieldByName('CodigoPersonal').AsString;
          lblSolicitante.Caption := ClientModule1.cdSolicitantes.FieldByName('NombreCompleto').AsString;
          lblCargoHist.Caption := ClientModule1.cdSolicitantes.FieldByName('CodigoCargo').AsString + ' - ' + ClientModule1.cdSolicitantes.FieldByName('TituloCargo').AsString;
          lblDeptoHist.Caption := ClientModule1.cdSolicitantes.FieldByName('CodigoDepartamento').AsString + ' - ' + ClientModule1.cdSolicitantes.FieldByName('TituloDepartamento').AsString;

        end;
      Finally
        ClientModule1.cdSolicitantes.Filtered := False;
      End;
    end;
  Except
    on e:exception do
      LevantarExcepcion(e);
  End;
end;

end.
