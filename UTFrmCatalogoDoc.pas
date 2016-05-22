unit UTFrmCatalogoDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmCatalogo, DB, DBClient, Menus, StdCtrls, Buttons,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, JvExControls,
  JvLabel, pngimage, ExtCtrls, PngSpeedButton,UTFrmDetalleDocs, AdvShapeButton,
  JvComponentBase, JvEnterTab, JvMemoryDataset, AdvOfficeButtons, ComCtrls,
  frxClass, frxExportPDF, RxAnimate, RxGIFCtrl, DBCtrls, Spin, AdvProgressBar,
  URegistro, frxDBSet, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  cxControls, cxContainer, cxEdit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinsdxBarPainter,
  dxBar, cxClasses, cxGroupBox;

type
  TFrmCatalogoDoc = class(TFrmCatalogo)
    chkUsuario: TAdvOfficeCheckBox;
    cdConvenio: TClientDataSet;
    dsConvenio: TDataSource;
    cmbConvenio: TDBLookupComboBox;
    AdvShapeButton1: TAdvShapeButton;
    Panel3: TPanel;
    AdvShapeButton2: TAdvShapeButton;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CargarConvenios(Refrescar: Boolean = false);
    procedure EstableceIndex(Data: TclientDataset; Combo: TDBLookupComboBox);
  protected
    Documento: string;
    CadenaDoc: string;
    DigitosDoc: Integer;
    function createPopUpDetalle: TFrmDetalleDocs; virtual; abstract;
    procedure Inicializar; virtual; abstract;
  public
    { Public declarations }
  end;

var
  FrmCatalogoDoc: TFrmCatalogoDoc;

implementation

Uses
  ClientModuleUnit1,Unit2,Uintelidialog;

{$R *.dfm}

procedure TFrmCatalogoDoc.BtnDeleteClick(Sender: TObject);
var
  providerNameUpt: String;
  cdUpt: TClientDataSet;
 ultimo, actual, primero, iItem : Integer ;
 eliminado: Boolean;
begin
  try
    // Validar si es un registro valido
    if cdDatos.eof then
      Raise Exception.Create('Nada que cancelar.');

    Eliminado := False;
    if CdDatos.State <> dsBrowse then
      Exit;
    if DbGridPrincipal.SelectedCount > 0 Then
    begin
      if not ClientModule1.LeePermisos(ModuloPantalla,'BORRAR') then
        Exit;
      cdUpt := TClientDataSet.Create(Nil);
      cdUpt.RemoteServer := cdDatos.RemoteServer;
      CrearConjunto(cdUpt, entityName, providerNameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, keyField, [-1]);
      cdUpt.Open;
      ultimo := DbGridPrincipal.SelectedRow;
      Primero := ultimo - (DbGridPrincipal.SelectedCount-1);
      for iItem := 0 To DbGridPrincipal.SelectedCount - 1 do
      begin
        DbGridPrincipal.SelectCell(2,primero,[ssShift],False);
        CargarDatosFiltrados(cdUpt, keyField, [cdDatos.FieldByName(keyField).AsInteger]);
        cdUpt.Refresh;
      if InteliDialog.ShowModal('Desea cancelar el documento '+CdUpt.FieldByName(codeField).AsString+'?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
      begin
          if cdUpt.RecordCount = 1 then
          begin
            cdUpt.Edit;
            cdUpt.FieldByname('estado').AsString := 'cancelado';
            cdUpt.post;
            cdUpt.ApplyUpdates(-1);
            cdDatos.Refresh;
            Eliminado := True;
          end
          else
          begin
            raise InteligentException.CreateByCode(2,
              [cdDatos.FieldByName(codeField).AsString,
              cdTexto + entityName]);
          end;
      end;
        DbGridPrincipal.SelectCell(2,primero,[ssShift],False);
      if Eliminado = False then
        Inc(Primero);
      end;
    end;
  except
    on e: Exception do
      InteliDialog.ShowModal('Error',e.Message,'',mtError,[mbOK],0);
  end;
end;

procedure TFrmCatalogoDoc.BtnEditClick(Sender: TObject);
var
  providerNameUpt: String;
  cdUpt: TClientDataSet;
  popUp: TFrmDetalleDocs;
  SoloVer: boolean;
begin
  if CdDatos.State <> dsBrowse then
    Exit;
  if DbGridPrincipal.SelectedCount > 1 Then
    Exit;
  if cdDatos.Active and (cdDatos.RecordCount > 0) then
  begin
    if not ClientModule1.LeePermisos(ModuloPantalla,'EDITAR',false) then
      SoloVer := False;
    Try
      cdUpt := TClientDataSet.Create(Nil);
      cdUpt.RemoteServer := cdDatos.RemoteServer;

      // Acceder en modo update al usuario
      Try
        CrearConjunto(cdUpt, entityName, providerNameUpt, ccUpdate);
        CargarDatosFiltrados(cdUpt, keyField, [cdDatos.FieldByName(keyField).AsInteger]);
        cdUpt.Open;

        if cdUpt.RecordCount = 1 then
        begin
          popUp := createPopUpDetalle;

          if not SoloVer then
            cdUpt.Edit;
          popUp.dsConvenio.DataSet := cdConvenio;
          popUp.dsDatos.DataSet := cdUpt;
          popUp.ShowModal;
        end
        else
        begin
          raise InteligentException.CreateByCode(2,
            [cdDatos.FieldByName(codeField).AsString,
            cdTexto + entityName]);
        end;
      Finally
        EliminarConjunto(providerNameUpt);
        popUp.Free;
      End;
    Except
      on e: exception do
        InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
    End;
  end;
end;

procedure TFrmCatalogoDoc.FormCreate(Sender: TObject);
Var
  cdDocSerie: TClientDataSet;
  ProviderName: string;
begin
  inherited;

  // Cargar la plantilla para generar la serie de los documentos
  // Primero cargar algun formato por default
  CadenaDoc := '{codigo}-{consecutivo}/{año}';
  DigitosDoc := 5;
  if Documento <> '' then
  begin
    cdDocSerie := TClientDataSet.Create(nil);
    CrearConjunto(cdDocSerie,'nuc_documentoserie',ProviderName,ccSelect);
    CargarDatosFiltrados(cdDocSerie,'idorganizacion,nombredocumento,activo',
                  [clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger,Documento,'si']);
    cdDocSerie.Open;
    if cdDocSerie.RecordCount > 0 then
    begin
      cdDocSerie.First;
      CadenaDoc := cdDocSerie.FieldByName('serie').AsString;
      DigitosDoc := cdDocSerie.FieldByName('digitos').AsInteger;
    end;
    EliminarConjunto(cdDocSerie);
  end;

  Inicializar;
  CargarConvenios;
  Abrir;
end;

procedure TFrmCatalogoDoc.FormDestroy(Sender: TObject);
begin
  inherited;
  Globales.SetValue('OrgPredeterminada',cmbConvenio.KeyValue);
end;

procedure TFrmCatalogoDoc.EstableceIndex(Data:TclientDataset;Combo:TDBLookupComboBox);
begin
  try
    if Length(Trim(globales.Elemento('OrgPredeterminada').AsString) ) > 0 then
    begin
      Data.Locate('idorganizacion',Globales.Elemento('OrgPredeterminada').AsString,[]);
      Combo.KeyValue := Data.FieldByName('idorganizacion').AsInteger;
    end
    else
    begin
      Data.First;
      Combo.KeyValue := Data.FieldByName('idorganizacion').AsInteger;
      Globales.SetValue('OrgPredeterminada',Data.FieldByName('idorganizacion').AsInteger);
    end;
  except
    ;
  end;
end;

procedure TFrmCatalogoDoc.FormShow(Sender: TObject);
begin
  inherited;
 if AnsiLowerCase(ClientModule1.cdUsuario.FieldByName('usuario').AsString) <> 'admin' then
   chkUsuario.Visible := False;
end;

procedure TFrmCatalogoDoc.AdvShapeButton1Click(Sender: TObject);
begin
  CargarConvenios(True);
end;

procedure TFrmCatalogoDoc.BtnAddClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popUp: TFrmDetalleDocs;
begin
  if not ClientModule1.LeePermisos(ModuloPantalla,'AGREGAR') then
    Exit;
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
    Try
      CrearConjunto(cdUpt, entityName, providerNameUpt, ccUpdate);
      CargarDatosFiltrados(cdUpt, keyField, [-9]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 0 then
      begin
        popUp := createPopUpDetalle;
        cdUpt.Append;
        cdUpt.FieldByName(keyField).AsInteger := 0;
        popUp.dsDatos.DataSet := cdUpt;
        popUp.dsConvenio.DataSet := cdConvenio;
        popup.keyParentField := keyfield;
        popup.Caption := self.Caption;
        popUp.CadenaDoc := CadenaDoc;
        popUp.DigitosDoc := DigitosDoc;
        popUp.ShowModal;
      end
      else
      begin
        raise InteligentException.CreateByCode(3, ['!' + entityName +'']);
      end;
    Finally
      EliminarConjunto(providerNameUpt);
      popUp.Free;
    End;
  Except
    on e: exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoDoc.CargarConvenios(Refrescar: Boolean);
var
  i: integer;
begin
  // Cargar los datos de los convenios si se indica
  try
    if Refrescar then
    begin
      ClientModule1.CdEstructuraOrganizacion.Refresh;
      cdConvenio.EmptyDataSet;
    end
    else
    begin
      cdConvenio.FieldDefs.Clear;
      //copiando estructura
      cdConvenio.Close;
      for i := 0 to ClientModule1.CdEstructuraOrganizacion.FieldCount -1 do
      begin
        cdConvenio.FieldDefs.Add(ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Name,ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].DataType,ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Size,False);
      end;
      cdConvenio.CreateDataSet;
    end;

    //copiando datos
    if cdConvenio.State <> dsBrowse then
      cdConvenio.Open;

    //buscar todos los hijos
    ClientModule1.CdEstructuraOrganizacion.Filtered := False;
    ClientModule1.CdEstructuraOrganizacion.Filter := ' padre = ' + ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString;
    ClientModule1.CdEstructuraOrganizacion.Filtered  := True;

    //si no encuentra hijos mostrar la accesada
    if ClientModule1.CdEstructuraOrganizacion.RecordCount = 0 then
    begin
      ClientModule1.CdEstructuraOrganizacion.Filtered := False;
      ClientModule1.CdEstructuraOrganizacion.Filter := ' idorganizacion = ' + ClientModule1.cdAcceso.FieldByName('idorganizacion').AsString;
      ClientModule1.CdEstructuraOrganizacion.Filtered  := True;
    end;

    //añadiendo los q estan filtrados
    ClientModule1.CdEstructuraOrganizacion.First;
    while not ClientModule1.CdEstructuraOrganizacion.Eof do
    begin
      cdConvenio.Append;
      with ClientModule1.CdEstructuraOrganizacion do
      begin
        for i := 0 to FieldCount-1 do
        begin
          cdConvenio.FieldByName(ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Name).AsVariant := ClientModule1.CdEstructuraOrganizacion.FieldByName(ClientModule1.CdEstructuraOrganizacion.FieldDefs.Items[i].Name).AsVariant;
        end;
      end;
      cdConvenio.Post;
      ClientModule1.CdEstructuraOrganizacion.Next;
    end;

    ClientModule1.CdEstructuraOrganizacion.Filtered := False;

    EstableceIndex(cdConvenio,cmbConvenio);

  finally
    ;
  end;
end;


end.
