unit UTFrmPlantillaBancaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ClientModuleUnit1, DBClient, UInteliDialog, StdCtrls, Mask,
  DBCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSpringTime, dxSkinStardust, ExportaExcel,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxButtons, ComObj, ShellApi, cxControls, cxContainer, cxEdit, dxSkinSilver,
  cxGroupBox, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckGroup, cxCheckBox, cxExtEditRepositoryItems, cxEditRepositoryItems,
  cxClasses;

type
  TFrmPlantillaBancaria = class(TForm)
    dsNomina: TDataSource;
    cdBancosNomina: TClientDataSet;
    dsBancosNomina: TDataSource;
    cdPlantilla: TClientDataSet;
    SaveDialog1: TSaveDialog;
    cxGBDatos: TcxGroupBox;
    dbTitulo: TDBText;
    dbFecha: TDBEdit;
    dbBanco: TDBEdit;
    dbCuenta: TDBEdit;
    Btn_Generar: TcxButton;
    cxButton1: TcxButton;
    CxCbbRegistroPat: TcxComboBox;
    CxCbbReferencia: TcxComboBox;
    CdOrganizacion: TClientDataSet;
    CxItemRepos1: TcxEditRepository;
    cxCheckMetodoPago: TcxEditRepositoryCheckBoxItem;
    cxdtrpstrychckgrptmCxItemRepos1CheckGroupItem1: TcxEditRepositoryCheckGroupItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbReferenciaChange(Sender: TObject);
    procedure Btn_GenerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlantillaBancaria: TFrmPlantillaBancaria;

implementation

{$R *.dfm}

procedure TFrmPlantillaBancaria.cbReferenciaChange(Sender: TObject);
begin
  Try
    if CxCbbReferencia.Tag = 0 then
    begin
      if CxCbbReferencia.ItemIndex >= 0 then
        if Not cdbancosNomina.Locate('Referencia', CxCbbReferencia.Text, []) then
          raise InteligentException.CreateByCode(27, ['Pagos de Nómina', CxCbbReferencia.Text]);
    end;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmPlantillaBancaria.Btn_GenerarClick(Sender: TObject);
Var
  Excel: OleVariant;
  Workbook, WorkSheet: Variant;
  Lista16: TStringList;
  Cursor: TCursor;
  parOrganizacion, parReferencia: string;
  inicio: Integer;
begin
  Try
    if SaveDialog1.Execute then
    begin
      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        // Seleccionar los datos
        if CxCbbRegistroPat.ItemIndex = 0 then
          parOrganizacion := '-1'
        else
          parOrganizacion := CxCbbRegistroPat.Text;

        if CxCbbReferencia.ItemIndex = 0 then
          parReferencia := '-1'
        else
          parReferencia := CxCbbReferencia.Text;

        if Not CargarDatosFiltrados(cdPlantilla, 'IdNomina,Referencia,regPatronal', [dsNomina.DataSet.FieldByName('IdNomina').AsInteger, parReferencia, parOrganizacion]) then
          raise InteligentException.CreateByCode(6, ['Detalle de Nómina', dsNomina.DataSet.FieldByName('IdNomina').AsString + '/' + CxCbbReferencia.Text, 'Id. Nómina / Referencia']);

        if cdPlantilla.Active then
          cdPlantilla.Refresh
        else
          cdPlantilla.Open;

        if cdPlantilla.RecordCount = 0 then
          raise InteligentException.CreateByCode(24, ['Los empleados no tienen registrado una cuenta bancaria válida. ¿Deseas ver los detalles?' + CxCbbReferencia.Text]);

        Try
          Lista16 := TStringList.Create;

          // Preparar el reporte
          Excel := CreateOleObject('Excel.Application');
          Excel.Visible:= true;
          Excel.DisplayAlerts := false;
          Workbook := Excel.Workbooks.Add(xlWBATWorksheet);

          while Workbook.Sheets.Count > 1 do
            WorkBook.WorkSheets[1].Delete;

          WorkSheet := WorkBook.WorkSheets[1];
          WorkSheet.Name := cdBancosNomina.FieldByName('Cuenta').AsString;

          // Alto de renglones
          Excel.Rows['1:1'].RowHeight := 26.25;

          // Ancho de columnas
          Excel.Columns['A:A'].ColumnWidth := 15.71;
          Excel.Columns['B:B'].ColumnWidth := 14.14;
          Excel.Columns['C:C'].ColumnWidth := 22.14;
          Excel.Columns['D:D'].ColumnWidth := 39.86;
          Excel.Columns['D:D'].Font.Bold := True;
          Excel.Columns['E:E'].ColumnWidth := 15.14;
          Excel.Columns['F:F'].ColumnWidth := 13.57;
          Excel.Columns['G:G'].ColumnWidth := 20.29;

          // Colocar el encabezado
          WorkSheet.Cells[1, 1].Value := 'Método de Pago';
          WorkSheet.Cells[1, 2].Value := 'Tipo de Cuenta';
          WorkSheet.Cells[1, 3].Value := 'Cuenta';
          WorkSheet.Cells[1, 4].Value := 'Nombre';
          WorkSheet.Cells[1, 5].Value := 'Tipo de Pago';
          WorkSheet.Cells[1, 6].Value := 'Importe';
          WorkSheet.Cells[1, 7].Value := 'Referencia';

          // Proceder a vaciar la información
          cdPlantilla.First;
          while Not cdPlantilla.Eof do
          begin
            if Length(Trim(cdPlantilla.FieldByName('NumerodeCuenta').AsString)) <> 16 then
              Lista16.Add(cdPlantilla.FieldByName('NombreEmpleado').AsString + ' No. Cuenta: ' + cdPlantilla.FieldByName('NumerodeCuenta').AsString);
            WorkSheet.Cells[cdPlantilla.RecNo +1, 1].Value := cdPlantilla.FieldByName('Nombre').AsString;
            WorkSheet.Cells[cdPlantilla.RecNo +1, 2].Value := cdPlantilla.FieldByName('TipoCuenta').AsString;
            WorkSheet.Cells[cdPlantilla.RecNo +1, 3].Value := Chr(39) + cdPlantilla.FieldByName('NumerodeCuenta').AsString;
            WorkSheet.Cells[cdPlantilla.RecNo +1, 4].Value := UpperCase(cdPlantilla.FieldByName('NombreEmpleado').AsString);
            WorkSheet.Cells[cdPlantilla.RecNo +1, 5].Value := cdPlantilla.FieldByName('TipoPago').AsString;
            WorkSheet.Cells[cdPlantilla.RecNo +1, 6].Value := cdPlantilla.FieldByName('Neto').AsString;
            WorkSheet.Cells[cdPlantilla.RecNo +1, 6].NumberFormat := '0.00';
            WorkSheet.Cells[cdPlantilla.RecNo +1, 7].Value := 'REF';

            cdPlantilla.Next;
          end;

          if Lista16.Count > 0 then
            InteliDialog.ShowModal('Existen números de cuenta con longitud incorrecta', 'Los siguientes empleados tienen un número de cuenta diferente de 16 dígitos:' + #10 + #10 + StringReplace(Lista16.CommaText, ',', #10, [rfReplaceAll]), mtWarning, [mbOk], 0);

          // Grabar el pedo
          try
            Excel.ActiveWorkBook.SaveAs(SaveDialog1.FileName + '.xls');
            InteliDialog.ShowModal('Nóminas','Se ha almacenado el archivo en ' + SaveDialog1.FileName + '.xls', mtinformation, [mbOK], 0 );
          except
            on e:Exception do
              InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe del siguiente error al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0 );
          end;

          {WorkBook.SaveAs(SaveDialog1.FileName);
          WorkBook.Close;

          ShellExecute(Self.Handle, 'open', 'Excel.exe', PWideChar(SaveDialog1.FileName), '', SW_SHOWNORMAL);}
        Finally
          Lista16.Clear;
          Lista16.Free;

          //Excel.Quit;
          Excel := Unassigned;
        End;
      Finally
        Screen.Cursor := Cursor;
      End;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0); End;
end;

procedure TFrmPlantillaBancaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdBancosNomina);
end;

procedure TFrmPlantillaBancaria.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  i: Integer;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdPlantilla, 'nom_nomina_plantilla', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Personal en la Nómina']);

      if Not CrearConjunto(cdBancosNomina, 'nom_nomina_referencias', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Nóminas']);

      if Not CargarDatosFiltrados(cdBancosNomina, 'IdNomina,Movimiento', [dsNomina.DataSet.FieldByName('IdNomina').AsInteger, 'Electrónico']) then
        raise InteligentException.CreateByCode(6, ['Nóminas', dsNomina.DataSet.FieldByName('IdNomina').AsInteger, 'Id. Nómina']);

      if not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['nuc_organizacion']);

      if not CargarDatosFiltrados(CdOrganizacion, 'Padre', [-5]) then
        raise InteligentException.CreateByCode(6, ['nuc_organizacion', 'IdOrganizacion', '-5']);

      if CdOrganizacion.Active then
        CdOrganizacion.Refresh
      else
        CdOrganizacion.Open;

      if CdOrganizacion.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No existen organizacion creadas dentro del sistema.']);

      CdOrganizacion.First;
      CxCbbRegistroPat.Properties.Items.Clear;
      CxCbbRegistroPat.Properties.Items.Add('< TODAS LAS ORGANIZACIONES >');
      while Not CdOrganizacion.Eof do
      begin
        CxCbbRegistroPat.Properties.Items.Add(CdOrganizacion.FieldByName('RegPatImss').AsString);
        CdOrganizacion.Next;
      end;

      CxCbbRegistroPat.ItemIndex := 0;

      cdBancosNomina.Open;
      if cdBancosNomina.RecordCount = 0 then
        raise InteligentException.CreateByCode(24, ['No se han efectuado Pagos de Nómina con referencias.']);

      cdBancosNomina.First;
      CxCbbReferencia.Properties.Items.Clear;
      CxCbbReferencia.Properties.Items.Add('< TODAS LAS REFERENCIAS DE PAGO >');

      while Not cdBancosNomina.Eof do
      begin
        CxCbbReferencia.Properties.Items.Add(cdBancosNomina.FieldByName('Referencia').AsString);
        cdBancosNomina.Next;
      end;

      CxCbbReferencia.ItemIndex := 0;

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

end.
