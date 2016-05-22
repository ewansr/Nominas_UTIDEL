unit UTFrmDatosForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, xDataBase, DB,
  AdvShapeButton, JvExMask, JvToolEdit, JvDBControls, ClientModuleUnit1;

type
  TFrmDatosForm = class(TForm)
    Label1: TLabel;
    EditPadre: TEdit;
    DBEditActividad: TDBEdit;
    BuscarConcepto: TBitBtn;
    Image5: TImage;
    DBEditIdPadre: TDBEdit;
    dsDatos: TDataSource;
    PanelBarraLugar: TPanel;
    BtnRec: TAdvShapeButton;
    BtnAddNew: TAdvShapeButton;
    BtnCancel: TAdvShapeButton;
    Label2: TLabel;
    Label3: TLabel;
    DBDateFechaInicio: TJvDBDateEdit;
    DBDateFechaFin: TJvDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEditCantidad: TDBEdit;
    Label7: TLabel;
    DBEditMedida: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBMemoDescripcion: TDBMemo;
    procedure BuscarConceptoClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosForm: TFrmDatosForm;

implementation
Uses UTFrmForm, UInteliDialog;

{$R *.dfm}

procedure TFrmDatosForm.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDatosForm.BtnRecClick(Sender: TObject);
begin
  if dsDatos.DataSet.State in [dsEdit, dsInsert] then begin
    dsDatos.DataSet.Post;
    Close;
  end;
end;

procedure TFrmDatosForm.BuscarConceptoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmForm;
begin
  Try
    tForm := TFrmForm.Create(Self);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      DsDatos.DataSet.FieldByName('IdPadre').AsString := registro.Valor['IdActividad'];
      EditPadre.Text := registro.Valor['NumeroActividad'] + ' - ';  // + registro.Valor['Descripcion'];
      //EditMovimiento.SetFocus;
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un proceso, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmDatosForm.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(self);
end;

end.
