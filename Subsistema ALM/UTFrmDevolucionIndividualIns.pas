unit UTFrmDevolucionIndividualIns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExStdCtrls, JvBehaviorLabel, NxCollection,
  DBCtrls, Mask, JvExControls, JvLabel, RxToolEdit, RXDBCtrl, DB, DBClient,
  UinteliDialog;

type
  TFrmDevolucionIndividualIns = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    JvBehaviorLabel1: TJvBehaviorLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    JvLabel1: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel2: TJvLabel;
    DBMemo1: TDBMemo;
    JvLabel4: TJvLabel;
    DBEdit2: TDBEdit;
    JvLabel5: TJvLabel;
    DBEdit3: TDBEdit;
    JvLabel6: TJvLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    JvLabel7: TJvLabel;
    ComboBox1: TComboBox;
    JvLabel8: TJvLabel;
    DBMemo2: TDBMemo;
    JvLabel9: TJvLabel;
    dsresguardosasignados: TDataSource;
    cdresguardosdetalle: TClientDataSet;
    dsresguardosdetalle: TDataSource;
    cdestados: TClientDataSet;
    dsestado: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDevolucionIndividualIns: TFrmDevolucionIndividualIns;

implementation
 uses
     ClientModuleUnit1;
{$R *.dfm}

procedure TFrmDevolucionIndividualIns.ComboBox1Change(Sender: TObject);
begin
  if combobox1.ItemIndex=0 then
  begin
    dbmemo2.Enabled :=false;
    dbmemo2.Color:=clWindow;
  end
  else
  begin
    dbmemo2.Enabled :=true;
    dbmemo2.Color:=clInactiveBorder;
  end;

end;

procedure TFrmDevolucionIndividualIns.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
eliminarconjunto([cdresguardosdetalle.ProviderName, cdestados.ProviderName]);
end;

procedure TFrmDevolucionIndividualIns.FormShow(Sender: TObject);
begin
  try
    if Not CrearConjunto(cdresguardosdetalle, 'tic_resguardosdetalle', ccUpdate) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardosdetalle, 'idresguardodetalle', [dsresguardosasignados.DataSet.FieldByName('idresguardodetalle').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdresguardosdetalle.Open;
    cdresguardosdetalle.Edit;
    if Not CrearConjunto(cdestados, 'tic_estadoinsumo', ccUpdate) then
      raise InteligentConnection.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdestados, 'idinsumo', [cdresguardosdetalle.FieldByName('numinsumoespecificado').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdestados.Open;
    cdestados.Edit;
    dbmemo2.Enabled :=false;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al abrir carga de datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmDevolucionIndividualIns.NxButton1Click(Sender: TObject);
begin
  cdestados.CancelUpdates;
  cdresguardosdetalle.CancelUpdates;
  close;
end;

procedure TFrmDevolucionIndividualIns.NxButton2Click(Sender: TObject);
begin
  if cdresguardosdetalle.FieldByName('fechavigencia').AsDateTime=null then
  begin
    InteliDialog.ShowModal('No ha seleccionado una fecha de devolucion ', 'Debe de seleccionar una fecha de devolucion del insumo', mtInformation, [mbOK], 0);
    exit;
  end;

  if (combobox1.ItemIndex<>0) and (combobox1.ItemIndex<>1) then
  begin
    InteliDialog.ShowModal('No ha seleccionado el estado del equipo ', 'Debe seleccionar el estado en como se esta recibiendo el insumo', mtInformation, [mbOK], 0);
    exit;
  end
  else
  begin
    if (combobox1.ItemIndex=1) and (Length(Trim(dbmemo2.Text)) = 0) then
    begin
      InteliDialog.ShowModal('Al estar el equipo dañado, debe colocar comentarios  ', 'Debe de especificr los daños del equipo en la caja de texto "Descripcion"', mtInformation, [mbOK], 0);
      exit;
    end;
  end;
  cdresguardosdetalle.Post;
  cdresguardosdetalle.ApplyUpdates(-1);

  cdestados.FieldByName('estado').AsString:=combobox1.Items.Text;
  cdestados.Post;
  cdestados.ApplyUpdates(-1);
  close;
end;

end.
