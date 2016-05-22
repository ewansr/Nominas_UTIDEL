unit UTFrmCriteriosBusqeudaTic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, JvExStdCtrls, JvBehaviorLabel,
  NxCollection, DB, DBClient, Mask, JvExControls, JvLabel, NxColumns,
  NxDBColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  UIntelidialog;

type
  TFrmCriteriosBusqeudaTic = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dscriteriosupdate: TDataSource;
    cdespecdetalle: TClientDataSet;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    JvBehaviorLabel1: TJvBehaviorLabel;
    dsespecdetalle: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    JvLabel2: TJvLabel;
    GroupBox2: TGroupBox;
    JvLabel1: TJvLabel;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    GroupBox4: TGroupBox;
    Edit1: TEdit;
    JvLabel3: TJvLabel;
    Panel7: TPanel;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    Edit2: TEdit;
    Edit3: TEdit;
    JvLabel4: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure NextDBGrid1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    datosconsulta : string;
    idcampodetalle : string;
  public
    { Public declarations }
  end;

var
  FrmCriteriosBusqeudaTic: TFrmCriteriosBusqeudaTic;

implementation
 uses
    ClientModuleUnit1;
{$R *.dfm}

procedure TFrmCriteriosBusqeudaTic.FormShow(Sender: TObject);
begin
      ClientModule1.ComponentColor(self);
      if Not CrearConjunto(cdespecdetalle, 'alm_especdetalle', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      cdespecdetalle.open;
      dscriteriosupdate.DataSet.Append;
      dscriteriosupdate.DataSet.FieldByName('idcriteriostic').AsInteger:=0;
      dscriteriosupdate.DataSet.FieldByName('operador').AsInteger:=ClientModule1.cdUsuario.FieldByName('idusuario').AsInteger;
      datosconsulta:='';
      jvlabel4.Caption:= datosconsulta;
end;

procedure TFrmCriteriosBusqeudaTic.NextDBGrid1CellDblClick(Sender: TObject;
  ACol, ARow: Integer);
begin
edit2.Text:='';
edit2.Text:=cdespecdetalle.FieldByName('TituloDetalle').AsString;
idcampodetalle:=inttostr(cdespecdetalle.FieldByName('IdDetalle').AsInteger);
end;

procedure TFrmCriteriosBusqeudaTic.NxButton2Click(Sender: TObject);
begin
  dscriteriosupdate.DataSet.FieldByName('cadbuscar').AsString:=edit1.Text;
  dscriteriosupdate.DataSet.FieldByName('cadbusqeudaid').AsString:=datosconsulta;
  dscriteriosupdate.DataSet.Post;
  tclientdataset(dscriteriosupdate.DataSet).ApplyUpdates(-1);
  close;
end;

procedure TFrmCriteriosBusqeudaTic.NxButton3Click(Sender: TObject);
begin
  try
    if Length(Trim(edit1.Text)) = 0 then
    begin
      edit1.Text:=edit1.Text+edit2.Text+'='+edit3.Text;
      datosconsulta:=datosconsulta+idcampodetalle+'="%'+edit3.Text+'%";';
      edit2.Text:='';
      edit3.Text:='';
    end
    else
    begin
      edit1.Text:=edit1.Text+' Y '+edit2.Text+'='+edit3.Text;
      datosconsulta:=datosconsulta+idcampodetalle+'="%'+edit3.Text+'%";';
      edit2.Text:='';
      edit3.Text:='';
    end;
    jvlabel4.Caption:= datosconsulta;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCriteriosBusqeudaTic.NxButton4Click(Sender: TObject);
begin
edit1.Text:='';
datosconsulta:='';
idcampodetalle:='';
jvlabel4.Caption:= datosconsulta;
end;

end.
