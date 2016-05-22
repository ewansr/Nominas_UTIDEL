unit UTFrmDatosFormaPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, AdvShapeButton, ExtCtrls, AdvSmoothLabel,
  StdCtrls, AdvGroupBox, Mask, AdvSpin, DBAdvSp, AdvEdit, DBAdvEd,
  AdvOfficeButtons, DBAdvOfficeButtons, AppEvnts, DBClient;

type
  TFrmDatosFormaPago = class(TFrmDatosCatalogo)
    edtcodigo: TDBAdvEdit;
    edttitulo: TDBAdvEdit;
    edtVencimientos: TDBAdvSpinEdit;
    grp1: TAdvGroupBox;
    edtdiapago1: TDBAdvEdit;
    edtdiapago2: TDBAdvEdit;
    edtdiapago3: TDBAdvEdit;
    edtdiapago4: TDBAdvEdit;
    edtdiapago5: TDBAdvEdit;
    edtdiapago6: TDBAdvEdit;
    edtprop1: TDBAdvEdit;
    edtprop2: TDBAdvEdit;
    edtprop3: TDBAdvEdit;
    edtprop4: TDBAdvEdit;
    edtprop5: TDBAdvEdit;
    edtprop6: TDBAdvEdit;
    AdvSmoothLabel1: TAdvSmoothLabel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    AdvSmoothLabel3: TAdvSmoothLabel;
    AdvSmoothLabel4: TAdvSmoothLabel;
    AdvSmoothLabel5: TAdvSmoothLabel;
    AdvSmoothLabel6: TAdvSmoothLabel;
    chkproporcionales: TDBAdvOfficeCheckBox;
    procedure edtVencimientosChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkproporcionalesClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitarConfiguracion;
    procedure Inicializa;
    function ValoresValidos: Boolean;
  public
    { Public declarations }
  end;

var
  FrmDatosFormaPago: TFrmDatosFormaPago;

implementation

uses
  UInteliDialog;

{$R *.dfm}

procedure TFrmDatosFormaPago.BtnAddNewClick(Sender: TObject);
begin
  if ValoresValidos then
  begin
    inherited;
    Inicializa;
  end;

end;

procedure TFrmDatosFormaPago.BtnRecClick(Sender: TObject);
begin
  if ValoresValidos then
    inherited;
end;

procedure TFrmDatosFormaPago.chkproporcionalesClick(Sender: TObject);
begin
  inherited;
  HabilitarConfiguracion;
end;

procedure TFrmDatosFormaPago.edtVencimientosChange(Sender: TObject);
begin
  inherited;
  HabilitarConfiguracion;
end;

procedure TFrmDatosFormaPago.FormShow(Sender: TObject);
begin
  inherited;
  // Si es un registro nuevo, llenar los valores que deban de ir por default
  if dsDatos.DataSet.State = dsInsert then
    Inicializa;
  HabilitarConfiguracion;
end;

procedure TFrmDatosFormaPago.Inicializa;
begin
  dsDatos.DataSet.FieldValues['proporcionales'] := 'si';
  dsDatos.DataSet.FieldValues['vencimientos'] := 1;
  dsDatos.DataSet.FieldValues['diapago1'] := 0;
  dsDatos.DataSet.FieldValues['prop1'] := 100;
  dsDatos.DataSet.FieldValues['activo'] := 'si';
end;

procedure TFrmDatosFormaPago.HabilitarConfiguracion;
begin
  edtdiapago1.Enabled := not (edtVencimientos.Value < 1);
  edtdiapago2.Enabled := not (edtVencimientos.Value < 2);
  edtdiapago3.Enabled := not (edtVencimientos.Value < 3);
  edtdiapago4.Enabled := not (edtVencimientos.Value < 4);
  edtdiapago5.Enabled := not (edtVencimientos.Value < 5);
  edtdiapago6.Enabled := not (edtVencimientos.Value < 6);

  edtprop1.Enabled :=  not((edtVencimientos.Value < 1) OR (chkproporcionales.Checked));
  edtprop2.Enabled :=  not((edtVencimientos.Value < 2) OR (chkproporcionales.Checked));
  edtprop3.Enabled :=  not((edtVencimientos.Value < 3) OR (chkproporcionales.Checked));
  edtprop4.Enabled :=  not((edtVencimientos.Value < 4) OR (chkproporcionales.Checked));
  edtprop5.Enabled :=  not((edtVencimientos.Value < 5) OR (chkproporcionales.Checked));
  edtprop6.Enabled :=  not((edtVencimientos.Value < 6) OR (chkproporcionales.Checked));
end;

function TFrmDatosFormaPago.ValoresValidos: boolean;
Var
  edtTmp: TDBAdvEdit;
  i, val1, val2: Integer;
  correcto: boolean;
begin
  Result := true;
  if TRIM(edtCodigo.Text) = '' then
  begin
    InteliDialog.ShowModal('ERROR','Capture un código valido.','El valor capturado no es valido.',mtError,[mbOK],0);
    Result := False;
    edtCodigo.SetFocus;
    exit;
  end;

  if TRIM(edtTitulo.Text) = '' then
  begin
    InteliDialog.ShowModal('ERROR','Capture una descripción valida.','El valor capturado no es valido.',mtError,[mbOK],0);
    Result := False;
    edtTitulo.SetFocus;
    exit;
  end;

  // Validar que los vencimientos sean ascendentes
  i := 2;
  correcto := true;
  if Trim(edtdiapago1.Text) <> '' then
    val1 := StrToInt(edtdiapago1.Text)
  else
    val1 := 0;
  edtTmp := edtdiapago1;
  while (i <= edtVencimientos.Value) and correcto do
  begin
    edtTmp := TDBAdvEdit(FindNextControl(TWinControl(edtTmp),true,true,false));
    if Trim(edtTmp.Text) <> '' then
      val2 := StrToInt(edtTmp.Text)
    else
      val2 := 0;
    correcto := val2 > val1;
    val1 := val2;
    inc(i);
  end;

  if not correcto then
  begin
    InteliDialog.ShowModal('ERROR','Capture una valor valido.','El vencimiento capturado es menor al anterior.',mtError,[mbOK],0);
    Result := False;
    edtTmp.SetFocus;
    exit;
  end;

  // Validar que los porcentajes sumen el 100% si la distribución no es proporcional
  if not chkproporcionales.Checked then
  begin
    i := 1;
    val1 := 0;
    edtTmp := edtprop1;
    while (i <= edtVencimientos.Value) do
    begin
      if Trim(edtTmp.Text) <> '' then
        val1 := val1 + StrToInt(edtTmp.Text);
      edtTmp := TDBAdvEdit(FindNextControl(edtTmp,true,true,false));
      inc(i);
    end;
    if val1 <> 100 then
    begin
      InteliDialog.ShowModal('ERROR','Capture una valor valido.','La suma de las proporciones no suma el 100%.',mtError,[mbOK],0);
      Result := False;
      edtTmp.SetFocus;
      exit;
    end;
  end;
end;

end.
