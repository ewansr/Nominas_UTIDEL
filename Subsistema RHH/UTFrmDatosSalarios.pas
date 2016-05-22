unit UTFrmDatosSalarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, pngimage,
  JvToolEdit, JvDBControls, JvExMask, JvBaseEdits, StdCtrls, Mask, DBCtrls,
  JvExControls, JvLabel, DBClient, UInteliDialog, ComCtrls, AppEvnts,
  AdvSmoothLabel, DBAdvSmoothLabel;

type
  TFrmDatosSalarios = class(TFrmDatosCatalogo)
    GroupBox1: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    edcsalario: TJvDBCalcEdit;
    eddfecha: TJvDBDateEdit;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    JvLabel4: TJvLabel;
    Image2: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    cdMoneda: TClientDataSet;
    dsMoneda: TDataSource;
    CodigoSalario: TDBAdvSmoothLabel;
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdMonedaAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosSalarios: TFrmDatosSalarios;

implementation
  uses ClientModuleUnit1, xDatabase, UTFrmListaModSal;
{$R *.dfm}

procedure TFrmDatosSalarios.BtnAddNewClick(Sender: TObject);
begin
  if ClientModule1.VerificaVacio(edcsalario, 'Salario') = False then
    exit;

 if ClientModule1.VerificaVacio(eddfecha, 'fechaaplicacion') = False then
    exit;

  inherited;
  edcsalario.Text:='';
  eddfecha.Text:='';
end;

procedure TFrmDatosSalarios.BtnRecClick(Sender: TObject);
var
  Cuenta: TClientDataSet;
  Cuantos: Integer;
  OldCursor: TCursor;
begin
  if ClientModule1.VerificaVacio(edcsalario, 'Salario') = False then
    exit;

  if length(trim(dsdatos.DataSet.FieldByName('fechaaplicacion').AsString)) < 1  then
    exit;

  ShowMessage(dsdatos.DataSet.FieldByName('Salario').AsString);

  Try
    // Verificar si se trata de una edición sobre un salario que ya haya sido utilizado
    if dsDatos.DataSet.State = dsEdit then
    begin
      // Buscar registros que pudieran haber utilizando este elemento
      Try
        Cuenta := TClientDataSet.Create(Self);
        CrearConjunto(Cuenta, 'nuc_personal', ccCatalog);
        CargarDatosFiltrados(Cuenta, 'IdLlave', [dsDatos.DataSet.FieldByName('IdLlave').AsInteger]);
        Cuantos := CuantosRegistros(Cuenta);

        if Cuantos < 0 then
          raise InteligentConnection.CreateByCode(5, ['Cargos de Empleados']);

        // Informar al usuario de la cantidad de registros que se van a modificar
        // En caso de no tener registros dependientes se deberá proceder de manera directa
        if (Cuantos > 0) and (InteliDialog.ShowModal('Solicitud de autorización para modificación de salario general', 'Usted ha solicitado registrar un cambio de salario en un registro que ya se encuentra asignado a ' + IntToStr(Cuantos) + ' Empleados, de realizarse esta modificación estos empleados registrarán de manera automática una modificación de salario.' + #10 + #10 + 'Se requiere de una autorización firmada con todos los empleados que serán modificados en su salario.' + #10 + #10 + '¿Desea generar esta lista en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        begin
          Try
            Try
              OldCursor := Screen.Cursor;
              Screen.Cursor := crAppStart;
              Cuenta.Open;

              Application.CreateForm(TFrmListaModSal, FrmListaModSal);

              while not Cuenta.Eof do
              begin
                FrmListaModSal.ListView1.AddItem(Cuenta.FieldByName('NombreCompleto').AsString, TObject(Cuenta.FieldByName('IdPersonal').AsInteger));
                FrmListaModSal.ListView1.Items.Item[FrmListaModSal.ListView1.Items.Count -1].ImageIndex := 0;
                FrmListaModSal.ListView1.Items.Item[FrmListaModSal.ListView1.Items.Count -1].SubItems.Add(Cuenta.FieldByName('TituloDepartamento').AsString);
                FrmListaModSal.ListView1.Items.Item[FrmListaModSal.ListView1.Items.Count -1].SubItems.Add(Cuenta.FieldByName('TituloCargo').AsString);
                FrmListaModSal.ListView1.Items.Item[FrmListaModSal.ListView1.Items.Count -1].SubItems.Add(FloatToStrF(Cuenta.FieldByName('Salario').AsFloat, ffNumber, 14, 2));

                Cuenta.Next;
              end;
            Finally
              Screen.Cursor := OldCursor;
            End;

            FrmListaModSal.ShowModal;
          Finally
            FrmListaModSal.Free;
          End;
        end;
      Finally
        EliminarConjunto(Cuenta);
      End;
    end;

    inherited;
  Except
    on e:InteligentConnection do
      intelidialog.showmodal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Ha ocurrido un error inesperado, informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;

end;

procedure TFrmDatosSalarios.cdMonedaAfterScroll(DataSet: TDataSet);
begin
  inherited;

  EdcSalario.DisplayFormat := cdMoneda.FieldByName('Simbolo').AsString + ',0.00';
  EdcSalario.Refresh;
end;

procedure TFrmDatosSalarios.FormCreate(Sender: TObject);
begin
  inherited;

  Try
    // Seleccionar los registros del tipo de moneda
    if Not CrearConjunto(cdMoneda, 'nuc_moneda', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Tipo de Monedas']);

    cdMoneda.Open;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Ha ocurrido un error inesperado, informe de esto al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmDatosSalarios.FormDestroy(Sender: TObject);
begin
  inherited;

  Try
    if Not EliminarConjunto(cdMoneda) then
      raise InteligentException.CreateByCode(4, ['El servidor ha rechazado la solicitud de destrucción de conjunto de datos del catálogo de Monedas']);
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Ha ocurrido un error inesperado, informe de esto al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmDatosSalarios.FormShow(Sender: TObject);
begin
  inherited;

  if dsDatos.DataSet.State = dsInsert then
  begin
    dsDatos.DataSet.FieldByName('FechaAplicacion').AsDatetime := Trunc(Now);
    dsDatos.DataSet.FieldByName('CodigoSalario').AsString := '<Automático>';
  end;
end;

end.
