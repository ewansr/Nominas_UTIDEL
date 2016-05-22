unit UTFfrmAltaModDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, RxToolEdit, RXDBCtrl,
  JvExControls, JvLabel, NxEdit, JvExStdCtrls, JvBehaviorLabel, DB, DBClient,
  NxCollection, Uintelidialog, JvDBImage;

type
  TFFrmAltaModDocumentos = class(TForm)
    Panel2: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    JvLabel2: TJvLabel;
    DBDateEdit1: TDBDateEdit;
    JvLabel3: TJvLabel;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    JvLabel4: TJvLabel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    NxButton1: TNxButton;
    dsdocxpersonal: TDataSource;
    cddocxpersonal: TClientDataSet;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    JvLabel6: TJvLabel;
    cddocumentospersonal: TClientDataSet;
    dsdocumentospersonal: TDataSource;
    Panel1: TPanel;
    Panel3: TPanel;
    JvDBImage1: TJvDBImage;
    Button1: TButton;
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    valordefiltradopersonal : integer;
    valorfiltradodocumento : integer;
  end;

var
  FFrmAltaModDocumentos: TFFrmAltaModDocumentos;

implementation
uses
  ClientModuleUnit1, xDatabase, UTFrmDocumento, UTFrmCargaImagen;
{$R *.dfm}

procedure TFFrmAltaModDocumentos.Button1Click(Sender: TObject);
begin
  try
    try
      application.CreateForm(TFrmCargaImagen, FrmCargaImagen);
      FrmCargaImagen.ShowModal;
      if not FrmCargaImagen.cancelado then
      begin
        TBlobField(cddocxpersonal.FieldByName('documento')).LoadFromStream(FrmCargaImagen.MemorySTResultante);
      end;
    finally
      FrmCargaImagen.Free;
    end;
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cargar al imagen','Error inesperado, informe al administrador del sistema de este error', '', mtError,[mbOK], 0);
  end;
end;

procedure TFFrmAltaModDocumentos.FormShow(Sender: TObject);
begin
    ClientModule1.ComponentColor(self);
end;

procedure TFFrmAltaModDocumentos.NxButton1Click(Sender: TObject);
Var
  registro: TLista;
//  tForm: TFrmDocumentosPersonal;
begin
try
  try
    FrmDocumento := TFrmDocumento.Create(nil);
    FrmDocumento.BtnAdd.Visible:=false;
    FrmDocumento.BtnEdit.Visible:=false;
    FrmDocumento.BtnEdit.Visible:=false;
    FrmDocumento.BtnDelete.Visible:=false;
    FrmDocumento.BtnPrint.Visible:=false;
    FrmDocumento.BtnExport.Visible:=false;
    FrmDocumento.btnImportar.Visible:=false;

    FrmDocumento.ModoSeleccion := True;
    registro := FrmDocumento.SeleccionarItem();

    if Assigned(registro) then
    begin
{
        if cddocumentospersonal.Active=false then
        begin
          if Not CrearConjunto(cddocumentospersonal, 'rhh_documentospersonal', ccUpdate) then
            raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
          if Not CargarDatosFiltrados(cddocumentospersonal, 'iddocumentopersonal', [registro.Valor['iddocumentopersonal']]) then
            raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddocumentospersonal.open;
        end
        else
        begin
          if Not CargarDatosFiltrados(cddocumentospersonal, 'iddocumentopersonal', [registro.Valor['iddocumentopersonal']]) then
            raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cddocumentospersonal.Refresh;
        end;
}
    cddocxpersonal.FieldByName('iddocumento').AsInteger:= registro.Valor['idDocumento'];
    edit1.Text:=registro.Valor['nombredocumento'];
    end;
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cargar catalogo de Bamcos.', e.Message, mtInformation, [mbOk], 0);
  end;
finally
    FrmDocumento.Free;
end;

end;

procedure TFFrmAltaModDocumentos.NxButton2Click(Sender: TObject);
begin
  cddocxpersonal.CancelUpdates;
  close;
end;

procedure TFFrmAltaModDocumentos.NxButton3Click(Sender: TObject);
begin
  cddocxpersonal.Post;
  cddocxpersonal.ApplyUpdates(-1);
  InteliDialog.ShowModal('INFORMACIÓN','La información se ha guardado correctamente','',
  mtInformation,[mbOK],0);
  close;
end;

end.
