unit UTFrmPagoNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, JvExControls, JvLabel, ClientModuleUnit1,
  ExtCtrls, AdvGlowButton, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, cxDropDownEdit, cxEditRepositoryItems,
  cxTextEdit, Menus, cxButtons, cxContainer, cxMaskEdit, ComCtrls, JvExComCtrls,
  JvDateTimePicker, PFacturaElectronica, PFacturaElectronica_PAC, CFDI,
  PACFO, ActiveX, ShlObj,
  Generics.Collections, GeneradorCBB, QuricolAPI, QuricolCode,
  cxPCdxBarPopupMenu, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxMemo, cxLabel, cxGroupBox, cxListBox,
  cxProgressBar, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxDBLookupComboBox, ShellAPI,
  FolderDialog;

type
  TCodigo = class
    Valor: String;
  end;

  TLocObject = class
    Fecha: TDate;
    Registro: TDateTime;
    IdBanco: Integer;
  end;

  TFrmPagoNomina = class(TForm)
    dsFormaPago: TDataSource;
    Panel1: TPanel;
    Btn_Cancelar: TcxButton;
    Panel2: TPanel;
    Btn_Generar: TcxButton;
    dsPersonal: TDataSource;
    ItemRes1: TcxEditRepository;
    ItemCboxFormaPago: TcxEditRepositoryComboBoxItem;
    ItemCboxHistorialReferencias: TcxEditRepositoryComboBoxItem;
    cdReferencias: TClientDataSet;
    pnlOrganizacion: TPanel;
    JvLabel2: TJvLabel;
    dsPersonalIncluido: TDataSource;
    cdPersonalIncluido: TClientDataSet;
    btn1: TcxButton;
    dsDeducciones: TDataSource;
    cdTimbrado: TClientDataSet;
    cdBancos: TClientDataSet;
    dsBancos: TDataSource;
    cxGridRepos1: TcxGridViewRepository;
    cxDbGridGridRepos1DBTableView1: TcxGridDBTableView;
    grdColumDbGridGridRepos1DBTableView1Column1: TcxGridDBColumn;
    grdColumDbGridGridRepos1DBTableView1Column2: TcxGridDBColumn;
    grdColumDbGridGridRepos1DBTableView1Column3: TcxGridDBColumn;
    grdColumDbGridGridRepos1DBTableView1Column4: TcxGridDBColumn;
    chkboxTimbrar: TcxCheckBox;
    cxDbGridGastos: TcxGridDBTableView;
    grdColumDbGridGridRepos1DBTableView2Column1: TcxGridDBColumn;
    grdColumDbGridGridRepos1DBTableView2Column2: TcxGridDBColumn;
    grdColumDbGridGridRepos1DBTableView2Column3: TcxGridDBColumn;
    grdColumDbGridGridRepos1DBTableView2Column4: TcxGridDBColumn;
    cdGastos: TClientDataSet;
    dsGastos: TDataSource;
    cdpGastos: TClientDataSet;
    dspGastos: TDataSource;
    CxChkBoxPrueba: TcxCheckBox;
    cxGBProceso: TcxGroupBox;
    GroupBox2: TcxGroupBox;
    JvLabel1: TJvLabel;
    jvlbl1: TJvLabel;
    JvLabel3: TJvLabel;
    LBL1: TJvLabel;
    cbFormaPago: TComboBox;
    cbbReferencia: TcxComboBox;
    FechaPago: TJvDateTimePicker;
    cbbBancos: TcxExtLookupComboBox;
    cbbGastos: TcxExtLookupComboBox;
    chkboxGastos: TcxCheckBox;
    btn2: TcxButton;
    GroupBox1: TcxGroupBox;
    lbPersonal: TcxListBox;
    cxGBLogCnt: TcxGroupBox;
    cxGBLog: TcxGroupBox;
    Memo1: TcxMemo;
    CxProgressBarIndividual: TcxProgressBar;
    CxProgressBarTotal: TcxProgressBar;
    cxLabel1: TcxLabel;
    CxLbl1: TcxLabel;
    Panel3: TPanel;
    JvLabel4: TJvLabel;
    LblImporte: TJvLabel;
    CxLCbbEmpresa: TcxLookupComboBox;
    CdOrganizacion: TClientDataSet;
    dsOrganizacion: TDataSource;
    CxChkBoxOrganizacion: TcxCheckBox;
    FolderDXML: TFolderDialog;
    cdIncapacidadCFDI: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFormaPagoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Btn_GenerarClick(Sender: TObject);
    procedure chkboxGastosClick(Sender: TObject);
    procedure cbbGastosPropertiesCloseUp(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cbbReferenciaFocusChanged(Sender: TObject);
    procedure CxChkBoxOrganizacionPropertiesChange(Sender: TObject);
    procedure CxLCbbEmpresaPropertiesChange(Sender: TObject);
  private
    AltoOriginal: Word;
    cdYaPagados: TClientDataSet;
    cdTDeducciones, cdTPercepciones, cdTPercepcionEspecial: TClientDataSet;

    procedure CargarOrganizacionesTimbre;
    procedure Pagar(i: Integer);
    procedure registrarGasto(registrar: Boolean; Listp: TcxListBox);
    procedure CargarReferencias(IdFormaPago: Integer);
  public
    soloTimbrar: Boolean;
    IdNomina: Integer;
    pLista: String;
    Cuenta: Integer;
  end;

var
  FrmPagoNomina: TFrmPagoNomina;

  ProveedorTimbrado : TPFPAC;
  TimbreDeFactura : TPFTimbre;
  CarpetaCFDI, CarpetaEmisor,
  archivoFacturaXML, rutaImagenCBB,
  archivoNominaPDF: String;

  Emisor, Receptor: TPFContribuyente;
  Impuesto: TPFImpuesto;
  Conceptos: TPFConceptos;
  generador_CBB: TGeneradorCBB;
  CredencialesPAC: TPFCredenciales;

  //Pago de Nómina:
  Nomina: TPFFacturaElectronica;
  Empresa,
  Empleado: TPFContribuyente;
  PercepcionesNomina,
  DeduccionesNomina: TPFNomina_Conceptos;
  Incapacidades: TPFNomina_Incapacidades;
  HorasExtra: TPFNomina_HorasExtra;

  PercepcionNomina,
  DeduccionNomina: TPFNomina_Concepto;
  Incapacidad: TPFNomina_Incapacidad;
  HoraExtra: TPFNomina_HoraExtra;

  CSD: TPFCSD;

  function GetDesktopFolder: string;

implementation

uses UInteliDialog, UtfrmGastos, Unit2;

{$R *.dfm}

function GetDesktopFolder: string;
   var
     buf: array[0..255] of char;
     pidList: PItemIDList;
   begin
     Result := 'No Desktop Folder found.';
     SHGetSpecialFolderLocation(Application.Handle, CSIDL_DESKTOP, pidList);
     if (pidList <> nil) then
      if (SHGetPathFromIDList(pidList, buf)) then
        Result := buf;
   end;


function StrIndex(Selector : string; CaseList: array of string): Integer;
var
  cnt: Integer;
begin
  Result := -1;

  for cnt:= 0 to Length(CaseList) -1 do
  begin
    if CompareText(Selector, CaseList[cnt]) = 0 then
    begin
      Result:=cnt;
      Break;
    end;
  end;
end;

function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
  end;

  Result := Copy(Cadena, 1, Pos('|', Cadena) - 1);
end;

procedure TFrmPagoNomina.btn1Click(Sender: TObject);
begin
  Pagar(0);
end;

procedure TFrmPagoNomina.btn2Click(Sender: TObject);
var
  importe: Extended;
begin
   importe := StrToFloat(StringReplace(StringReplace(lblImporte.Caption, '$', '',[rfReplaceAll, rfIgnoreCase]),',', '',[rfReplaceAll, rfIgnoreCase]));
   Application.CreateForm(TFrmGastos, FrmGastos);
   FrmGastos.ImporteTotal := (importe);
   FrmGastos.Show;
end;

procedure TFrmPagoNomina.Btn_CancelarClick(Sender: TObject);
begin
  //Close;
end;

procedure TFrmPagoNomina.Btn_GenerarClick(Sender: TObject);
var
  gForma: TForm;
begin
  try
    if (CxChkBoxOrganizacion.Checked) and ((CxLCbbEmpresa.ItemIndex = -1) or (CxLCbbEmpresa.EditValue = Null)) then
    begin
      if CxLCbbEmpresa.CanFocus then
        CxLCbbEmpresa.SetFocus;

      raise InteligentException.CreateByCode(24, ['Selecciona la organización con la que deseas timbrar']);
    end;

    if (chkboxGastos.Checked) and (cbbGastos.ItemIndex = -1) then
    begin
      cbbGastos.StyleFocused.Color := clRed;
      cbbGastos.SetFocus;
      raise InteligentException.CreateByCode(18, ['GASTOS']);
    end;

    if (chkboxTimbrar.Checked) and (InteliDialog.ShowModal('Aviso', 'Esta seguro que desea timbrar este tipo de Nómina[]', mtInformation, [mbyes, mbNo], 0) = mrYes) then
    begin
      if cbbBancos.ItemIndex = -1 then
        raise InteligentException.CreateByCode(18, ['Bancos']);
      if (chkboxGastos.Checked) and (cbbGastos.ItemIndex = -1) then
        raise InteligentException.CreateByCode(18, ['Gastos']);
//      gForma := TForm.Create(nil);
//      gForma.Name := 'frmProcesando';
//      gForma.Caption := 'Procesando...';
//      gForma.Width := 515;
//      gForma.Height := 250;
//      gForma.Position := poScreenCenter;
//      gForma.FormStyle := fsStayOnTop;
//      pnl1.Parent := gForma;
//      pnl1.Visible := True;
//      pnl1.align := alClient;
//      gForma.show;
    end;

    Pagar(0);
    Btn_Generar.Enabled := False;
//    if chkboxTimbrar.Checked then
//      gForma.close;
    //Close;
  except
    on e:InteligentWarning do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:InteligentConnection do
      ;   // No hacer nada, solo lo uso para cambiar el flujo del programa

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

  end;
end;

procedure TFrmPagoNomina.CargarOrganizacionesTimbre;
begin
    if CdOrganizacion.ProviderName = '' then
      if not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nuc_organizacion']);

    if not CargarDatosFiltrados(CdOrganizacion, 'Padre', [-5]) then
      raise InteligentException.CreateByCode(6, ['IdOrganizacion', 'Nuc_organizacion0', '-5']);

    if CdOrganizacion.Active then
      CdOrganizacion.Refresh
    else
      CdOrganizacion.Open;
end;

procedure TFrmPagoNomina.cargarReferencias(IdFormaPago: Integer);
var
  cursor: TCursor;
  LocObject: TLocObject;
begin
  try
    cursor := Screen.cursor;
    Screen.cursor := CrAppStart;
    try
      if cdReferencias.ProviderName = '' then
        if not crearConjunto(cdReferencias, 'nom_nominapersonal', ccSelect) then
          raise InteligentException.createByCode(5,['Referencias de Pago']);

      if not cargarDatosFiltrados(cdReferencias, 'IdNomina,referencia,IdFormaPago', [IdNomina, 'Si',IdFormaPago]) then
        raise InteligentException.createByCode(6, ['Referencias de Pago', 'IdNomina', IdNomina]);

      if cdReferencias.active then
        cdReferencias.refresh
      else
        cdReferencias.open;

      cbbReferencia.Properties.Items.Clear;
      cdReferencias.First;
      while not cdReferencias.Eof do
      begin
        //cbbReferencia.Properties.Items.Add(cdReferencias.FieldByName('Referencia').AsString);
        LocObject := TLocObject.Create;
        if cdReferencias.FieldByName('Registro').IsNull then
          LocObject.Registro := cdReferencias.FieldByName('Fecha').AsDateTime
        else
          LocObject.Registro := cdReferencias.FieldByName('Registro').AsDateTime;

        LocObject.Fecha := cdReferencias.FieldByName('Fecha').AsDateTime;
        LocObject.IdBanco := cdReferencias.FieldByName('IdCuentaBanco').AsInteger;

        cbbReferencia.Properties.Items.AddObject(cdReferencias.FieldByName('Referencia').AsString, LocObject);
        cdReferencias.Next;
      end;
    finally
      screen.cursor := cursor;
    end;
  except
    on e: Exception do
      showmessage(e.toString + ' ' + e.ClassName);
  end;
end;

procedure TFrmPagoNomina.cbbGastosPropertiesCloseUp(Sender: TObject);
var
  MontoMaximo, MontoExcendente, excedente, difMinima1, difMinima2, importe: Extended;
  NoPersonal, i,j: Integer;
  ListaP: TStringList;
begin

//  importe := StrToFloat(StringReplace(StringReplace(lblImporte.Caption, '$', '',[rfReplaceAll, rfIgnoreCase]),',', '',[rfReplaceAll, rfIgnoreCase]));
//  if ((importe)) > (cdGastos.FieldByName('dImporteTotal').AsExtended*-1) then
//  begin
//    //if (InteliDialog.ShowModal('Aviso', 'El importe a pagar de Nóminas excede el monto del gasto seleccionado.#10#13Desea que el sistema reajuste al personal para no exceder el monto?', mtInformation, [mbYes, mbNo], 0)) = mrYes then
//    //begin
//      //Proceso de reajuste
//      (*
//
//        i := 0;
//
//        MontoExcedente := strToFloat(lblImporte.Caption);
//        MontoMaximo := cdpGastos.FieldByName('dImporteTotal').asExtended;
//        excendente := MontoExcendente - MontoMaximo;
//        while i < LbPersonal.Items.Count do
//        begin
//          try
//            ListaP := TStringList.Create;
//            ListaP.QuoteChar := '|';
//            ListaP.DelimitedText :=  LbPersonal.Items.Strings[i];
//            ListaP[3];
//            inc(i);
//          finally
//            ListaP.Destroy;
//          end;
//        end;
//     *)
//    //end
//    //else
//    //begin
//      MontoExcendente := (importe);
//      MontoMaximo := cdGastos.FieldByName('dImporteTotal').asExtended;
//      excedente := MontoExcendente + MontoMaximo;
//      if (InteliDialog.ShowModal('Aviso', 'El monto total a pagar de la Nómina de Empleados excede el monto total en [$ '+ FloatToStr(excedente) +']Deseas generar un Nuevo gasto con el monto total de los empleados a pagar?', mtInformation, [mbYes, mbNo], 0)) = mrYes then
//      begin
//        Application.CreateForm(TFrmGastos, FrmGastos);
//        FrmGastos.ImporteTotal := (importe);
//        FrmGastos.ShowModal;
//      end;
//  end;
//    //end;

end;

procedure TFrmPagoNomina.cbbReferenciaFocusChanged(Sender: TObject);
begin
  if cbbReferencia.SelectedItem >= 0 then
  begin
    FechaPago.Date := TLocObject(cbbReferencia.Properties.Items.Objects[cbbReferencia.SelectedItem]).Fecha;
    cbbBancos.EditValue := TLocObject(cbbReferencia.Properties.Items.Objects[cbbReferencia.SelectedItem]).IdBanco;
  end;
end;

procedure TFrmPagoNomina.cbFormaPagoChange(Sender: TObject);
begin
  if Not dsFormaPago.DataSet.Locate('IdFormaPago', Integer(cbFormaPago.Items.Objects[cbFormaPago.ItemIndex]), []) then
  begin
    InteliDialog.ShowModal('Error de integridad de datos', 'Ha ocurrido un error de integridad de datos, debe reiniciar la ventana...', mtError, [mbOk], 0);
    Close;
  end;
  cargarReferencias(Integer(cbFormaPago.Items.Objects[cbFormaPago.ItemIndex]));
end;

procedure TFrmPagoNomina.chkboxGastosClick(Sender: TObject);
begin
  cbbGastos.Enabled := chkboxGastos.Checked;
  btn2.Enabled := chkboxGastos.Checked;
end;

procedure TFrmPagoNomina.CxChkBoxOrganizacionPropertiesChange(Sender: TObject);
begin
//  if CxChkBoxOrganizacion.Checked then
//  begin
//    InteliDialog.ShowModal('Aviso', 'Al cambiar la organización con la que se timbra podría provocar ');
//  end;
  CxLCbbEmpresa.Enabled := CxChkBoxOrganizacion.Checked;
end;

procedure TFrmPagoNomina.CxLCbbEmpresaPropertiesChange(Sender: TObject);
begin
  CdOrganizacion.Locate('idOrganizacion', CxLCbbEmpresa.EditValue, []);
end;

procedure TFrmPagoNomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Assigned(cdYaPagados)) and (soloTimbrar = false) then
  begin
    if cdYaPagados.ProviderName <> '' then
      EliminarConjunto(cdYaPagados);

    cdYaPagados.Destroy;
  end;

  Self.Height := AltoOriginal;
  Btn_CancelarClick(NIL);
  LiberarVentana(Self, Action);
end;

procedure TFrmPagoNomina.FormCreate(Sender: TObject);
begin
  if not CrearConjunto(cdPersonalIncluido, 'nom_nomina_cfdi', ccSelect) then
    raise InteligentException.CreateByCode(5, ['Personal Incluido para CFDI']);

  if Not CrearConjunto(cdTimbrado, 'nom_timbrado', ccUpdate) then
    raise InteligentException.CreateByCode(5, ['Timbrado']);

  if not CargarDatosFiltrados(cdTimbrado, 'idTimbre', [-9]) then
    raise Inteligentexception.CreateByCode(6, ['nom_timbrado', '-9', 'IdTimbre']);

  if not CrearConjunto(cdBancos, 'con_cuentabanco', ccCatalog) then
    raise InteligentException.CreateByCode(5,['Cuentas Bancarias']);

  if not CrearConjunto(cdGastos, 'con_tesoreriaegresos', ccCatalog) then
    raise InteligentException.CreateByCode(5,['Tesoreria Egresos']);

  if not CrearConjunto(cdpGastos, 'con_tesoreriapegresos', ccUpdate) then
    raise InteligentException.CreateByCode(5,['Detalle de Tesoreria Egresos']);

  if not CrearConjunto(cdIncapacidadCFDI, 'nom_nomina_cfdi_inasistencias', ccCatalog) then
    raise InteligentException.CreateByCode(5,['Incapacidades CFDI']);

  ClientModule1.ComponentColor(self);
  soloTimbrar := False;
end;

procedure TFrmPagoNomina.FormShow(Sender: TObject);
var
  Alto: Word;
  i: Integer;
  cdHistorialRef: TClientDataSet;
  LocLista: TStringList;
  parametros, parametros2, parametros3: TParamFilter;

  cursor: TCursor;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    parametros := TParamFilter.Create;
    parametros2 := TParamFilter.Create;
    parametros3 := TParamFilter.Create;
    Self.Width := 384;
    try
      // Verificar si los registros seleccionados ya han sido pagados
      if Not Assigned(cdYaPagados) then
        cdYaPagados := TClientDataSet.Create(Self);

      if cdYaPagados.ProviderName = '' then
        if Not Crearconjunto(cdYaPagados, 'nom_nomina_yapagados', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal ya Pagado']);

      if Not CargarDatosFiltrados(cdYaPagados, 'IdNomina,Lista', [IdNomina, pLista]) then
        raise InteligentException.CreateByCode(6, ['Personal ya Pagado', IdNomina, 'Id.Nomina']);

      cdYaPagados.Open;

      if Not CargarDatosFiltrados(cdIncapacidadCFDI, 'IdNomina,Lista', [IdNomina, pLista]) then
        raise InteligentException.CreateByCode(6, ['Incapacidades CFDI', IdNomina, 'Id.Nomina']);

      cdIncapacidadCFDI.Open;


       if not CargarDatosFiltrados(cdBancos, 'IdCuentaBanco', [-1]) then
        raise InteligentException.CreateByCode(6, ['Cuentas Bancarias', 'IdCuentaBanco', '-1']);

      if cdBancos.Active then
        cdBancos.Refresh
      else
        cdBancos.Open;

      //PARA LA TABLA FEA DE GASTOS DE INTELIGENT
      if not CargarDatosFiltrados(cdGastos, 'lComprobado,sTipoMovimiento', ['No', 'GASTOS']) then
        raise InteligentException.CreateByCode(6, ['Tesorería Egresos', 'lComprobado,sTipoMovimiento', 'No, GASTOS']);

      if cdGastos.Active then
        cdGastos.Refresh
      else
        cdGastos.Open;

      if not CargarDatosFiltrados(cdpGastos, 'iIdFolio', [-1]) then
        raise InteligentException.CreateByCode(6, ['Tesorería P. Egresos', 'iIdFolio', '-1']);

      if cdpGastos.Active then
        cdpGastos.Refresh
      else
        cdpGastos.Open;

      if (cdYaPagados.RecordCount = Cuenta) and (soloTimbrar = False) then
        raise InteligentException .CreateByCode(24, ['Todos los Empleados seleccionados ya han sido pagados previamente.' + #10 + #10 + 'Si desea modificar sus datos de pago utilice la opción de modificación de pago.']);

      if (cdYaPagados.RecordCount > 0) and (soloTimbrar = False)then
      begin
        if InteliDialog.ShowModal('Algunos de los Empleados seleccionados ya han sido pagados previamente.', '¿Desea proceder con los Empleados que no han sido pagados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          // Eliminar los registros ya pagados de la lista
          LocLista := TStringList.Create;
          LocLista.CommaText := pLista;
          cdYaPagados.First;
          while Not cdYaPagados.Eof do
          begin
            if LocLista.IndexOf(cdYaPagados.FieldByName('IdPersonal').AsString) >= 0 then
              LocLista.Delete(LocLista.IndexOf(cdYaPagados.FieldByName('IdPersonal').AsString));
            cdYaPagados.Next;
          end;
          pLista := LocLista.CommaText;
        end
        else
          raise InteligentException.Create('***');
      end
      else
      begin
        // Eliminar los registros ya pagados de la lista
        LocLista := TStringList.Create;
        LocLista.CommaText := pLista;
        pLista := LocLista.CommaText;

      end;
      if soloTimbrar = true then
        Btn_Generar.Caption := 'Timbrar Nómina';

      cdHistorialRef := TClientDataSet.Create(nil);

      if Not dsFormaPago.DataSet.Locate('IdFormaPago', Integer(cbFormaPago.Items.Objects[cbFormaPago.ItemIndex]), []) then
      begin
        InteliDialog.ShowModal('Error de integridad de datos', 'Ha ocurrido un error de integridad de datos, debe reiniciar la ventana...', mtError, [mbOk], 0);
        Close;
      end;
      if not CrearConjunto(cdHistorialRef, 'nom_nominapersonal', ccCatalog) then
        raise InteligentException.CreateByCode(5,['Nomina personal']);

      if not CargarDatosFiltrados(cdHistorialRef,'IdNOmina,Referencia', [IdNomina, 'Si']) then
        raise InteligentException.CreateByCode(6,['Nómina Personal', 'IdNomina', IdNomina]);

      if cdHistorialRef.Active then
        cdHistorialRef.Refresh
      else
        cdHistorialRef.Open;

      ItemCboxHistorialReferencias.Properties.Items.Clear;
      if cdHistorialRef.RecordCount > 0 then
      begin
        cdHistorialRef.First;
        while (Not cdHistorialRef.Eof)   do
        begin
          if (nOt cdHistorialRef.FieldbyName('referencia').isNull) and (Trim(cdHistorialRef.FieldByName('referencia').AsString) <> '') then
            ItemCboxHistorialReferencias.Properties.Items.AddObject(cdHistorialRef.FieldByName('Referencia').AsString,TObject(cdHistorialRef.RecNo));
          cdHistorialRef.Next
        end;
      end;
     if not CargarDatosFiltrados(cdPersonalIncluido, 'IdNomina,ListaPersonal,CodigoPersonal', [IdNomina,pLista,-1]) then
      raise InteligentException.CreateByCode(6, ['Personal Incluido', 'IDNOmina', IntToStr(IdNomina)]);

      cdPersonalIncluido.Open;
      AltoOriginal := Self.Height;

      // Abrir la ventana hasta el máximo posible
      if (lbPersonal.Count * 20) > Screen.Height then
        Alto := Screen.Height
      else
        Alto := lbPersonal.Count * 20;

      if Alto + GroupBox2.Height + Panel3.Height > Screen.Height then
        Alto := Alto - (GroupBox2.Height + Panel3.Height);

      Self.Height := AltoOriginal + Alto + Panel3.Height;

      FechaPago.Date := Now;

      if Form2.cdConfiguracionAcceso.FieldByName('SelOrgTimbre').asString = 'Si' then
      begin
        pnlOrganizacion.Visible := Form2.cdConfiguracionAcceso.FieldByName('SelOrgTimbre').asString = 'Si';
        CargarOrganizacionesTimbre;
      end;
    finally
      parametros3.Destroy;
      parametros2.Destroy;
      parametros.Destroy;
      if Assigned(cdHistorialRef) then
        cdHistorialRef.Destroy;
      Screen.Cursor := cursor;
    end;
  except
    on e: InteligentException do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e: Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmPagoNomina.Pagar(i: Integer);
var
  Cursor: TCursor;
  sCarpeta: string;
  ListaPersonal, Referencia, Personal, LocRFCEmpresa: String;
  {i} IdFormaPago: Integer;
  proceder: Boolean;
  contarVacios: Integer;
  BlobSTream:Tstream;
  FileStream:TFileStream;
  LocRegistro: TDateTime;
  NoSerieEmisor: String;
  pgMax: Integer;
  pgMin: Integer;
  pgPos:Integer;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crSQLWait;

      Referencia := cbbReferencia.Text;
      IdFormaPago := Integer(cbFormaPago.Items.Objects[cbFormaPago.ItemIndex]);
      ListaPersonal := '';
      Cuenta := 0;

      if chkboxTimbrar.Checked then
      begin
        //ShellExecute(0, 'explore', nil, nil,pchar(sCarpeta), SW_SHOW);

        if FolderDXML.Execute then
        begin
          sCarpeta := FolderDXML.Directory;

          Self.Width := 815;
          cxGBLogCnt.Visible := True;
          memo1.Text := '';
          pgMax := 0;
          pgMin := 0;
          pgPos := 20;
          CxProgressBarTotal.Position := 0;

          while i < lbPersonal.Items.Count do
          begin
            pgMax := lbPersonal.Items.Count * pgPos;
            CxProgressBarIndividual.Position := 0;
            CxProgressBarTotal.Properties.Max :=  pgMax;
            CxProgressBarTotal.Properties.Min := pgMin;
            CxProgressBarIndividual.Properties.Max := 160;
            CxProgressBarIndividual.Properties.Min := pgMin;

            Inc(Cuenta);
            try
              Memo1.Lines.Add('Filtrando datos de la base de datos.');
              Memo1.Lines.Add('------------------------------------------------------------------------------------------------');
              Memo1.Lines.Add('Cargando datos de [' + lbPersonal.Items.Strings[i] + ']');
              Memo1.Lines.Add('------------------------------------------------------------------------------------------------');
              Application.ProcessMessages;
              cdPersonalIncluido.Filtered := False;
              cdPersonalIncluido.Filter := 'IdPersonal = ' + QuotedStr(TCodigo(lbPersonal.Items.Objects[i]).Valor);
              cdPersonalIncluido.Filtered := True;
              CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
            except
              Memo1.Lines.Add('ERROR: No se pudo filtrar los datos del empleado.');
              Application.ProcessMessages;
              Exit;
            end;

            //DATOS DEL EMISOR
            try
              Memo1.Lines.Add('Cargando certificados de la organización.');
              Application.ProcessMessages;
              if CxChkBoxPrueba.Checked then
              begin
                CSD.Certificado := ExtractFilePath(Application.ExeName) + 'certs\aad990814bp7_1210261233s.cer';
                CSD.Llave := ExtractFilePath(Application.ExeName) + 'certs\aad990814bp7_1210261233s.key';
                CSD.Clave := '12345678a';
                Empresa.RFC:= 'AAD990814BP7'; //rfc de prueba
              end
              else
              begin
                if cdPersonalIncluido.FieldByName('RutaArchivoCert').AsString = '' then
                  raise InteligentException.CreateByCode(24, ['No se puede continuar con el timbrado debido a que el archivo *.cer no hay sido registrado']);

                if cdPersonalIncluido.FieldByName('RutaArchivoKey').AsString = '' then
                  raise InteligentException.CreateByCode(24, ['No se puede continuar con el timbrado debido a que el archivo *.key no hay sido registrado']);

                if cdPersonalIncluido.FieldByName('ClaveCSD').AsString = '' then
                  raise InteligentException.CreateByCode(24, ['No se puede continuar con el timbrado debido a que la Clave no hay sido registrado']);

                CSD.Certificado := cdPersonalIncluido.FieldByName('RutaArchivoCert').AsString;
                CSD.Llave := cdPersonalIncluido.FieldByName('RutaArchivoKey').AsString;
                CSD.Clave := cdPersonalIncluido.FieldByName('ClaveCSD').AsString;
                Empresa.RFC:= (*'AAD990814BP7';*)cdPersonalIncluido.FieldByName('rfcEmpresa').AsString; //rfc de prueba
              end;
              LocRFCEmpresa := Empresa.RFC;
              CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
            except
              Memo1.Lines.Add('ERROR: No se pudo filtrar los datos del empleado.');
              Application.ProcessMessages;
              exit;
            end;

            try
              Memo1.Lines.Add('Asignando datos del empleado.');
              Application.ProcessMessages;
              if CxChkBoxOrganizacion.Checked then
              begin
                Empresa.RazonSocial:= CdOrganizacion.FieldByName('TituloOrganizacion').AsString; //cdOrganizacion.FieldByName('RazonSocial').AsString;
                Empresa.RegimenFiscal := CdOrganizacion.FieldByName('RegimenFiscal').AsString;
                Empresa.ExpedidoEn.Calle := CdOrganizacion.FieldByName('Calle').AsString;
                Empresa.ExpedidoEn.Numero := CdOrganizacion.FieldByName('Numero').AsString;
                Empresa.ExpedidoEn.Colonia := CdOrganizacion.FieldByName('Colonia').AsString;
                Empresa.ExpedidoEn.CodigoPostal := CdOrganizacion.FieldByName('cp').AsString;
                Empresa.ExpedidoEn.Municipio := CdOrganizacion.FieldByName('Municipio').AsString;
                Empresa.ExpedidoEn.Localidad := CdOrganizacion.FieldByName('Localidad').AsString;
                Empresa.ExpedidoEn.Estado := CdOrganizacion.FieldByName('Estado').AsString;
                Empresa.ExpedidoEn.Pais := CdOrganizacion.FieldByName('Pais').AsString;

                if CxChkBoxPrueba.Checked then
                begin
                  CSD.Certificado := ExtractFilePath(Application.ExeName) + 'certs\aad990814bp7_1210261233s.cer';
                  CSD.Llave := ExtractFilePath(Application.ExeName) + 'certs\aad990814bp7_1210261233s.key';
                  CSD.Clave := '12345678a';
                  Empresa.RFC:= 'AAD990814BP7'; //rfc de prueba
                end
                else
                begin
                  if CdOrganizacion.FieldByName('RutaArchivoCert').AsString = '' then
                  raise InteligentException.CreateByCode(24, ['No se puede continuar con el timbrado debido a que el archivo *.cer no hay sido registrado']);

                  if CdOrganizacion.FieldByName('RutaArchivoKey').AsString = '' then
                    raise InteligentException.CreateByCode(24, ['No se puede continuar con el timbrado debido a que el archivo *.key no hay sido registrado']);

                  if CdOrganizacion.FieldByName('ClaveCSD').AsString = '' then
                    raise InteligentException.CreateByCode(24, ['No se puede continuar con el timbrado debido a que la Clave no hay sido registrado']);

                  CSD.Certificado := CdOrganizacion.FieldByName('RutaArchivoCert').AsString;
                  CSD.Llave := CdOrganizacion.FieldByName('RutaArchivoKey').AsString;
                  CSD.Clave := CdOrganizacion.FieldByName('ClaveCSD').AsString;
                  Empresa.RFC:= (*'AAD990814BP7';*)CdOrganizacion.FieldByName('rfc').AsString; //rfc de prueba
                end;
                LocRFCEmpresa := Empresa.RFC;
              end
              else
              begin
                Empresa.RazonSocial:= cdPersonalIncluido.FieldByName('TituloOrganizacion').AsString; //cdOrganizacion.FieldByName('RazonSocial').AsString;
                Empresa.RegimenFiscal := cdPersonalIncluido.FieldByName('RegimenFiscal').AsString;
                Empresa.ExpedidoEn.Calle := cdPersonalIncluido.FieldByName('Calle').AsString;
                Empresa.ExpedidoEn.Numero := cdPersonalIncluido.FieldByName('Numero').AsString;
                Empresa.ExpedidoEn.Colonia := cdPersonalIncluido.FieldByName('Colonia').AsString;
                Empresa.ExpedidoEn.CodigoPostal := cdPersonalIncluido.FieldByName('cp').AsString;
                Empresa.ExpedidoEn.Municipio := cdPersonalIncluido.FieldByName('Municipio').AsString;
                Empresa.ExpedidoEn.Localidad := cdPersonalIncluido.FieldByName('Localidad').AsString;
                Empresa.ExpedidoEn.Estado := cdPersonalIncluido.FieldByName('Estado').AsString;
                Empresa.ExpedidoEn.Pais := cdPersonalIncluido.FieldByName('Pais').AsString;
              end;
              //DATOS DEL EMPLEADO
              Personal := cdPersonalIncluido.FieldByName('NombreCompleto').AsString;
              Empleado.RFC:= cdPersonalIncluido.FieldByName('RFC').AsString;
              Empleado.RazonSocial:= StringReplace(String(UTF8Encode(trim(cdPersonalIncluido.FieldByName('NombreCompleto').AsString))), 'Ñ', '&Ntilde;', [rfReplaceAll, rfIgnoreCase]);
              Empleado.ComplementoNomina.NumeroEmpleado := cdPersonalIncluido.FieldByName('IdPersonal').AsString;
              Empleado.ComplementoNomina.Curp := cdPersonalIncluido.FieldByName('Curp').AsString;
              Empleado.ComplementoNomina.NumeroSeguridadSocial := cdPersonalIncluido.FieldByName('NumeroSeguroSocial').AsString;
              Empleado.ComplementoNomina.Departamento := cdPersonalIncluido.FieldByName('TituloDepartamento').AsString;
    //****REVISAR LA PARTE DE LOS BANCOS ****////////////////////////
              (*Empleado.ComplementoNomina.Banco := 2; //pendiente
              //Empleado.ComplementoNomina.ClabeBancaria := '0000000000';//pendiente  *)
              Empleado.ComplementoNomina.Banco := cdPersonalIncluido.FieldByName('ClaveBanco').AsInteger; //pendiente
              //Empleado.ComplementoNomina.ClabeBancaria := '0000000000';//pendiente
              Empleado.ComplementoNomina.FechaInicioLabores := StrToDate(cdPersonalIncluido.FieldByName('FechaReingreso').AsString);
              Empleado.ComplementoNomina.Puesto := cdPersonalIncluido.FieldByName('TituloCargo').AsString;
              Empleado.ComplementoNomina.TipoDeContrato := cdPersonalIncluido.FieldByName('Titulo').AsString;
    //********AGREGAR EL TIPO DE JORNADA A NUC_PERSONAL IMSS
              Empleado.ComplementoNomina.TipoDeJornada := 'DIURNA';
              (*Empleado.RegistroPatronal := cdPersonalIncluido.FieldByName('regpatimss').AsString; *)
              Empleado.RegistroPatronal := cdPersonalIncluido.FieldByName('RegistroPatronal').AsString;
              Empleado.ComplementoNomina.PeriodosDePago := cdPersonalIncluido.FieldByName('NombrePeriodoPago').AsString;

              Empleado.ComplementoNomina.TipoDeRiesgo := cdPersonalIncluido.FieldByName('ClaveRiesgo').asInteger; //Qry.FieldByName('iIdRiesgo').AsInteger;
              Empleado.ComplementoNomina.SalarioBase := cdPersonalIncluido.FieldByName('Salario').AsCurrency;
              Empleado.ComplementoNomina.SalarioDiarioIntegrado := cdPersonalIncluido.FieldByName('SalarioIntegrado').AsCurrency;
    //*******REVISAR EL TIPO DE REGIMEN Y PREGUNTAR A PATRICIO
              Empleado.ComplementoNomina.TipoDeRegimen := 2;//cdPersonalIncluido.FieldByName('Clave').asInteger;

              Empleado.ComplementoNomina.FechaDePago := FechaPago.Date;
              Empleado.ComplementoNomina.PeriodoDePago_Inicial :=  cdPersonalIncluido.FieldByName('FechaInicio').asDateTime;
              Empleado.ComplementoNomina.PeriodoDePago_Final :=  cdPersonalIncluido.FieldByName('FechaTermino').asDateTime;
              Empleado.ComplementoNomina.DiasPagados :=  StrToInt(cdPersonalIncluido.FieldByName('DiasT').AsString); //El objeto calcula los días
              CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
            except
              on e: Exception do
              begin
                Memo1.Lines.Add('ERROR: No se pudo asignar los datos del empleado.');
                Memo1.Lines.Add('ERROR: ' + e.Message);
                Application.ProcessMessages;
                Exit;
              end;
            end;

            Nomina := TPFFacturaElectronica.Create(Empresa, Empleado, trNomina);
  //*********AGREGAR CAMPOS RESTANTES AL CATALOGO DE NOM FORMAS PAGO
            (*Nomina.Propiedades.MetodoDePago:= 'TRANSFERENCIA ELECTRONICA';*)
            Nomina.Propiedades.MetodoDePago:=  cdPersonalIncluido.FieldByName('TituloPago').asString;
            Nomina.Propiedades.FormaDePago := 'PAGO EN UNA SOLA EXHIBICION';
            Nomina.Propiedades.CondicionesDePago := 'CONTADO';

            //PERCEPCIONEs
            try
              Memo1.Lines.Add('Añadiendo Percepciones...');
              Application.ProcessMessages;
              try
                cdPersonalIncluido.Filtered := False;
                cdPersonalIncluido.Filter := 'IdPersonal = ' + QuotedStr(TCodigo(lbPersonal.Items.Objects[i]).Valor) + ' and Modo =' + QuotedStr('PERCEPCION') + ' and incluir= ' + QuotedStr('Si');
                cdPersonalIncluido.Filtered := True;

                cdPersonalIncluido.first;
                while not cdPersonalIncluido.eof do
                begin
                  if (cdPersonalIncluido.fieldbyName('ClaveCFDI').asString <> '')  and (Not cdPersonalIncluido.fieldByName('Incluir').IsNull) and (CompareText(cdPersonalIncluido.FieldByName('Incluir').AsString, 'Si')=0) then  //NO TOMA EN CUENTA LAS HORAS EXTRAS
                  begin
                    PercepcionNomina.Tipo := cdPersonalIncluido.fieldbyname('ClaveCFDI').AsInteger;
                    PercepcionNomina.Clave := cdPersonalIncluido.fieldbyname('ClaveCFDI').asString;// corrgir
                    PercepcionNomina.Concepto := cdPersonalIncluido.fieldbyName('DescripcionCFDI').asString;
                    //Si el importe total del rubro es <> 0 pues no hará nada y solo asignará 0 a gravable y excento tambien
                    //if StrToFloatDef(Trim(cdPersonalIncluido.FieldByName('ValorConcepto').asString), 0) <> 0 then
                    //begin
                      PercepcionNomina.ImporteGravado := StrToFloatDef(Trim(cdPersonalIncluido.FieldByName('ValorConceptoGrav').AsString), 0);
                      PercepcionNomina.ImporteExento :=  StrToFloatDef(Trim(cdPersonalIncluido.FieldByName('ValorConcepto').AsString), 0) - percepcionNomina.ImporteGravado;
                      Nomina.PropiedadesNomina.AgregarConceptos(PercepcionNomina, cPercepciones);
                    //end;
                  end;
                  cdPersonalIncluido.Next;
                end;
                CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
              finally
                cdPersonalIncluido.Filtered := False;
              end;
            except
              on e: Exception do
              begin
                Memo1.Lines.Add('ERROR: No se pudo asignar las percepciones del empleado.');
                Memo1.Lines.Add('ERROR: ' + e.Message);
                Application.ProcessMessages;
                Exit;
              end;
            end;
            //DEDUCCIONES
            try
              Memo1.Lines.Add('Añadiendo Percepciones...');
              Application.ProcessMessages;
              try
                cdPersonalIncluido.Filtered := False;
                cdPersonalIncluido.Filter := 'IdPersonal = ' + QuotedStr(TCodigo(lbPersonal.Items.Objects[i]).Valor) + ' and Modo =' + QuotedStr('DEDUCCION');
                cdPersonalIncluido.Filtered := True;
                cdPersonalIncluido.First;
                while not cdPersonalIncluido.eof do
                begin
                  if (cdPersonalIncluido.fieldbyname('ClaveCFDI').AsString <> '') and (Not cdPersonalIncluido.FieldByName('Incluir').IsNull) and (CompareText(cdPersonalIncluido.FieldByName('Incluir').AsString, 'Si') = 0) then
                  begin
                    DeduccionNomina.Tipo := StrToInt(cdPersonalIncluido.fieldbyname('ClaveCFDI').asString);
                    DeduccionNomina.Clave := cdPersonalIncluido.fieldbyname('ClaveCFDI').asString;
                    DeduccionNomina.Concepto := cdPersonalIncluido.fieldbyname('Descripcioncfdi').asString;
                    DeduccionNomina.ImporteExento := StrToFloatDef(Trim(cdPersonalIncluido.fieldbyname('ValorConcepto').asString),0);
                    DeduccionNomina.ImporteGravado := 0.00;          //no existen deducciones gravables
                    DeduccionNomina.EsDeduccionTipoImpuestoRetenido := cdPersonalIncluido.fieldbyname('ImpRetenido').asString = 'Si';
                    Nomina.PropiedadesNomina.AgregarConceptos(DeduccionNomina, cDeducciones);
                  end;
                  cdPersonalIncluido.next;
                end;
                CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
              finally
                cdPersonalIncluido.Filtered := False;
              end;
            except
              on e: Exception do
              begin
                Memo1.Lines.Add('ERROR: No se pudo asignar las deducciones del empleado.');
                Memo1.Lines.Add('ERROR: ' + e.Message);
                Application.ProcessMessages;
                Exit;
              end;
            end;

            //HORAS EXTRAS
            try
              Memo1.Lines.Add('Añadiendo Concepto Horas Extras...');
              Application.ProcessMessages;
              try
                HoraExtra.Dias := 0;
                cdPersonalIncluido.Filtered := False;
                cdPersonalIncluido.Filter := 'IdPersonal = ' + QuotedStr(TCodigo(lbPersonal.Items.Objects[i]).Valor) + ' and TipoHora IS NOT NULL';
                cdPersonalIncluido.Filtered := True;
                cdPersonalIncluido.First;
                if cdPersonalIncluido.Locate('TipoHora', 'Dobles', [])  then
                begin
                  HoraExtra.TipoHoras := 'Dobles';
                  HoraExtra.HorasExtra := StrToIntDef(Trim(cdPersonalIncluido.FieldByName('ValorConcepto').AsString),0 );
                  if cdPersonalIncluido.Locate('TipoHora', 'CostoDobles', [])  then
                    HoraExtra.ImportePagado := StrToFloatDef(Trim(cdPersonalIncluido.fieldByName('ValorConcepto').AsString), 0)
                  else
                    HoraExtra.ImportePagado := 0.0;
                  Nomina.PropiedadesNomina.AgregarHorasExtra(HoraExtra);
                end;

                if cdPersonalIncluido.Locate('TipoHora', 'Triples', [])  then
                begin
                  HoraExtra.TipoHoras := 'Triples';
                  HoraExtra.HorasExtra := StrToIntDef(Trim(cdPersonalIncluido.FieldByName('ValorConcepto').AsString), 0 );
                  if cdPersonalIncluido.Locate('TipoHora', 'CostoTriples', [])  then
                    HoraExtra.ImportePagado := StrToFloatDef(Trim(cdPersonalIncluido.fieldByName('ValorConcepto').AsString), 0)
                  else
                    HoraExtra.ImportePagado := 0.0;
                  Nomina.PropiedadesNomina.AgregarHorasExtra(HoraExtra);
                end;
                CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
              Finally
                cdPersonalIncluido.Filtered := False;
              end;
            except
              on e: Exception do
              begin
                Memo1.Lines.Add('ERROR: No se pudo asignar las Horas Extras del empleado.');
                Memo1.Lines.Add('ERROR: ' + e.Message);
                Application.ProcessMessages;
                Exit;
              end;
            end;

  //          //INCAPACIDADES
            try
              try
                cdIncapacidadCFDI.Filtered := False;
                cdIncapacidadCFDI.Filter := 'IdPersonal = ' + QuotedStr(TCodigo(lbPersonal.Items.Objects[i]).Valor);
                cdIncapacidadCFDI.Filtered := True;

                if cdIncapacidadCFDI.RecordCount > 0 then
                begin
                  cdIncapacidadCFDI.First;
                  while Not cdIncapacidadCFDI.Eof do
                  begin
                    Incapacidad.Tipo := cdIncapacidadCFDI.FieldByName('Clave').AsInteger;
                    incapacidad.Dias := cdIncapacidadCFDI.FieldByName('inasistencias').AsInteger;
                    Nomina.PropiedadesNomina.AgregarIncapacidades(Incapacidad);
                    cdIncapacidadCFDI.Next;
                  end;
                end;
              finally
                cdIncapacidadCFDI.Filtered := False;
              end;
            Except
              on e: Exception do
              begin
                Memo1.Lines.Add('ERROR: No se pudo asignar las incapacidades del empleado.');
                Memo1.Lines.Add('ERROR: ' + e.Message);
                Application.ProcessMessages;
                Exit;
              end;
            end;
  //          Incapacidad.Tipo := cdPersonalIncluido.fieldbyName('ClaveIncapcidadSAT').AsInteger;
  //          Incapacidad.Dias := cdPersonalIncluido.fieldbyName('inasistencias').asINteger;
  //          Incapacidad.Descuento := 0.00;//pendiente
  //          if Incapacidad.Tipo > 0 then
  //          begin
  //            Nomina.PropiedadesNomina.AgregarIncapacidades(Incapacidad);
  //          end;


            CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;

            CarpetaCFDI := sCarpeta{GetDesktopFolder()} + '\ARCHIVOS_XML_CFDI';
            if CarpetaCFDI = '' then
            begin
              if Not(DirectoryExists(sCarpeta{GetDesktopFolder()} + '\ARCHIVOS_XML_CFDI')) then
              begin
                CreateDir(sCarpeta{GetDesktopFolder()} + '\ARCHIVOS_XML_CFDI');
              end;
            end
            else
            begin
              CarpetaCFDI := sCarpeta{GetDesktopFolder()} + '\ARCHIVOS_XML_CFDI';
            end;

            if Not(DirectoryExists(CarpetaCFDI)) then
            begin
              Try
                CreateDir(CarpetaCFDI);
              Except
                On E: Exception do
                begin
                  ShowMessage('No se pudo crear la carpeta para guardar este recibo XML, favor de ir a las opciones y modificarla.');
                end;
              End;
            end;

            CarpetaEmisor := CarpetaCFDI + '\' + Emisor.RFC;

            if Not(DirectoryExists(CarpetaEmisor)) then
            begin
              CreateDir(CarpetaEmisor);
            end;

            archivoFacturaXML := CarpetaEmisor + '\' + 'TIMBRE_NOMINA' + '-' + trim(Personal) + '.xml';
            rutaImagenCBB := CarpetaEmisor + '\' + 'TIMBRE_NOMINA' + '-' + trim(Personal) + '.jpg';
            archivoNominaPDF := CarpetaEmisor + '\' + 'TIMBRE_NOMINA' + '-' + trim(Personal) + '.pdf';

            //Nomina.Guardar(CarpetaEmisor + '\' + 'TIMBRE_NOMINA' + '-' + Empleado.RazonSocial + '.XMLBack');
            Nomina.SellarXML(CSD); //Esta linea va antes de "Generar";
            if FileExists(csd.Certificado) then
                NoSerieEmisor := Copy(ExtractFileName(csd.Certificado), 0, LastDelimiter('.',ExtractFileName(csd.Certificado)) - 1);

            Nomina.Generar;
            Memo1.Lines.Add('Generando Nómina, cadena original calculada: ' + Nomina.CadenaCalculada);
            Application.ProcessMessages;
            Nomina.Guardar(CarpetaEmisor + '\' + 'TIMBRE_NOMINA' + '-' + trim(Personal) + '.XMLBack2');
            ProveedorTimbrado := TPFPACFo.Create;
            try
              Try
                CredencialesPAC.RFC := Empresa.RFC;
                ProveedorTimbrado.AsignarCredenciales(CredencialesPAC);

                TimbreDeFactura := ProveedorTimbrado.TimbrarXML(Nomina.XML);

                Memo1.Lines.Add('Solicitando Timbre al PAC...');
                Application.ProcessMessages;

                Nomina.AsignarTimbreFiscal(TimbreDeFactura);
                Application.ProcessMessages;

                Nomina.Guardar(archivoFacturaXML);
                Memo1.Lines.Add('Recibo de Nómina en XML Timbrado Guardado en: ' + archivoFacturaXML);
                Application.ProcessMessages;

                generador_CBB := TGeneradorCBB.Create;
                Memo1.Lines.Add('Generando código bidimensional');
                Application.ProcessMessages;
                Try
                  generador_CBB.GenerarImagen(Empresa, Empleado, Nomina.Total, TimbreDeFactura.UUID, rutaImagenCBB);
                  CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
                Finally
                  generador_CBB.Free;
                  Memo1.Lines.Add('Código bidimensional guardado en: ' + rutaImagenCBB);
                  Application.ProcessMessages;
                End;
      //            Almacenar en la base de datos los datos generados por el timbrado
                cdTimbrado.Open;
                cdTimbrado.Insert;
                cdTimbrado.FieldByName('idTimbre').AsInteger:=0;

                cdTimbrado.FieldValues['IdNomina']          :=IdNomina;
                cdTimbrado.FieldValues['IdPersonal']        :=TCodigo(lbPersonal.Items.Objects[i]).Valor;
                cdTimbrado.FieldValues['rfcEmpresa']        :=LocRFCEmpresa;
                cdTimbrado.FieldValues['UUID']              :=TimbreDeFactura.UUID;
                cdTimbrado.FieldValues['SelloCFDI']         :=TimbreDeFactura.SelloCFD;
                cdTimbrado.FieldValues['SelloSat']          :=TimbreDeFactura.SelloSAT;
                cdTimbrado.FieldValues['CadenaOriginal']    :=Nomina.CadenaOriginal;
                cdTimbrado.FieldValues['NoCertificadoSat']  :=TimbreDeFactura.NoCertificadoSAT;
                cdTimbrado.FieldValues['FechaTimbrado']     :=TimbreDeFactura.FechaTimbrado;
                cdTimbrado.FieldValues['Timbre']            :=TimbreDeFactura.XML;
                cdTimbrado.FieldValues['NoSerieEmisor']     :=NoSerieEmisor;
                cdTimbrado.FieldValues['FechaSolicitud']    :=Date;
                cdTimbrado.FieldValues['HoraSolicitud']     :=Time;
                cdTimbrado.FieldValues['Activo']            := 'SI';
                cdTimbrado.FieldValues['HoraTimbrado']      :=StrToTime(FormatDateTime('tt',TimbreDeFactura.FechaTimbrado));

                BlobSTream:=cdTimbrado.CreateBlobStream(cdTimbrado.FieldByName('Qr'),bmwrite);
                try
                  FileStream := TFileStream.Create(rutaImagenCBB, fmOpenRead);
                  try
                    BlobStream.CopyFrom(FileStream, FileStream.Size);
                  finally
                    FileStream.Destroy;
                  end;
                Finally
                  BlobStream.Destroy;
                end;

                cdTimbrado.Post;
                cdTimbrado.ApplyUpdates(-1);
                Memo1.Lines.Add('Timbrado Generado Correctamente.');
                Application.ProcessMessages;
                CxProgressBarIndividual.Position := CxProgressBarIndividual.Position + 20;
              Finally
                ProveedorTimbrado.Free;
              End;
            except
              on e: Exception do
              begin
                Memo1.Lines.Add('ERROR: Los datos del empleado contiene errores, no se pudo concretar el proceso de timbrado.');
                Memo1.Lines.Add('ERROR: ' + e.Message);
                Application.ProcessMessages;
                Exit;
              end;
            end;
            ClientModule1.registrarEvento('NOMINAS','PAGO DE NOMINA','EMPLEADO: ' +  Personal, 0.0, 0);
            CxProgressBarTotal.Position := (pgPos * (i + 1));
            Inc(i);
          end;

          //Abrir la carpeta contenedora
          ShellExecute(0, 'explore', nil, nil,pchar(sCarpeta), SW_SHOW);

        end
        else
          raise InteligentException.CreateByCode(24, ['No se pudo continuar con el proceso debido a que no se seleccionó una ubicación válida']);
      end;

      registrarGasto(chkboxGastos.Checked, lbPersonal);

      // Antes de pagar, verificar la fecha de la referencia si es que ya existe
      if cbbReferencia.Properties.Items.IndexOf(cbbReferencia.Text) >= 0 then
      begin
        FechaPago.Date := TLocObject(cbbReferencia.Properties.Items.Objects[cbbReferencia.SelectedItem]).Fecha;
        LocRegistro := TLocObject(cbbReferencia.Properties.Items.Objects[cbbReferencia.SelectedItem]).Registro;
      end
      else
        LocRegistro := Now;

      if soloTimbrar = False then
      begin
        ProcedimientoAlmacenado('pagar_nomina', 'pIdNomina,pIdFormaPago,pListaPersonal,pReferencia,pFecha,pIdBanco,pRegistro', [IdNomina, IdFormaPago, '"' + pLista + '"', '"' + Referencia + '"', ClientModule1.DatetoStrSql(FechaPago.Date), cbbBancos.EditValue, '"' + ClientModule1.DateTimetoStrSql(LocRegistro) + '"']);
        InteliDialog.ShowModal('Operación concretada correctamente.', 'El pago se ha efectuado correctamente', mtInformation, [mbOK], 0);
        Btn_Cancelar.Click;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      if e.Message <> '***' then
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message + ' ' + e.toString + ' ' + e.ClassName, mtError, [mbOk], 0);
  end;
end;

procedure TFrmPagoNomina.registrarGasto(registrar: Boolean; Listp: TcxListBox);
var
  i:Integer;
  lista: TStringList;
begin
  //porner el codigo de detalle p egresos
  try
    i := 0;
    if registrar then
    begin
      while i < lbPersonal.Items.Count do
      begin
        lista := TStringList.Create;
        try
          if cdpGastos.State <> dsInsert then
            cdpGastos.Append;

          lista.QuoteChar := '|';
          //lista.Delimiter := '|';
          lista.DelimitedText := lbPersonal.Items.Strings[i];

          cdpGastos.FieldByName('dIdFecha').AsDateTime := FechaPago.Date;
          cdpGastos.FieldByName('iIdFolio').AsInteger := cdGastos.FieldByName('iIdFolio').AsInteger;
          cdpGastos.FieldByName('sIdEgreso').AsString := 'NOMINA';
          cdpGastos.FieldByName('sTipoEgreso').AsString := 'Empleados';
          cdpGastos.FieldByName('sIdProveedor').AsString := Trim(lista[0]);//codigo personal
          cdpGastos.FieldByName('sRazonSocial').AsString := Trim(lista[1]);//nombre del personal
          cdpGastos.FieldByName('sIdFactura').AsString := '*';
          cdpGastos.FieldByName('mDescripcion').AsString := cdGastos.FieldByName('mDescripcion').asString;
          cdpGastos.FieldByName('dImporte').AsExtended := strToFloat(Trim(lista[2]));
          cdpGastos.FieldByName('dFechaComprobacion').Clear;
          cdpGastos.FieldByName('dIva').AsFloat := 0.0;
          cdpGastos.FieldByName('dRetencion').AsFloat := 0.0;
          cdpGastos.FieldByName('dIspt').AsFloat := 0.0;
          cdpGastos.FieldByName('dIsr').AsFloat := 0.0;
          cdpGastos.FieldByName('dSubtotal').AsExtended := strToFloat(Trim(lista[2]));
          cdpGastos.FieldByName('sCheque').AsString := cdGastos.FieldByName('sReferencia').AsString;
          cdpGastos.FieldByName('sPoliza').AsString := cdGastos.FieldByName('sPoliza').asString;
          cdpGastos.FieldByName('eReal').AsString := 'Si';
          cdpGastos.FieldByName('sNameFilePdf').AsString := '*';
          cdpGastos.FieldByName('sNameFileJpeg').AsString := '*';
          cdpGastos.FieldByName('sNameXml').AsString := '*';
          cdpGastos.fieldByName('mDescripcion').asString := '*';
          cdpGastos.Post;
          cdpGastos.ApplyUpdates(-1);
        finally
          lista.Destroy;
        end;
        Inc(i);
      end;
    end;
  except
    on e:Exception do
    showmessage(e.toString);
  end;
end;

end.
