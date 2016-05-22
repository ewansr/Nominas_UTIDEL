unit UTFrmOrdenarEsp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ComCtrls, ExtCtrls, DB, Contnrs, Grids, DBGrids,
  DBClient, JvMemoryDataset;

type
  TFrmOrdenarEsp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnMoveUp: TNxButton;
    btnMoveDown: TNxButton;
    btnSalir: TNxButton;
    dsdetalle: TDataSource;
    DBGrid1: TDBGrid;
    cdDetalle: TClientDataSet;
    btnGuardar: TNxButton;
    mdDetalle: TJvMemoryData;
    cdDetalleSG: TClientDataSet;
    procedure btnMoveUpClick(Sender: TObject);
    procedure btnMoveDownClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
    Resultado: Integer;
  public
    { Public declarations }
  end;

var
  FrmOrdenarEsp: TFrmOrdenarEsp;

implementation
 uses ClientModuleUnit1, UInteliDialog;
{$R *.dfm}

procedure TFrmOrdenarEsp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;
end;

procedure TFrmOrdenarEsp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmOrdenarEsp.FormShow(Sender: TObject);
Var
  Field1: TStringField;
  i: integer;
begin
  Resultado := mrCancel;
  cdDetalleSG.First;
  mdDetalle.LoadFromDataSet(cdDetalleSG,0,JvMemoryDataset.lmCopy);
  mdDetalle.Close;
  Field1 := TStringField.Create(mdDetalle);
  Field1.Name := 'fldTituloDetalle';
  Field1.FieldName := 'titulodetalle';
  Field1.FieldKind := fkData;
  Field1.DataSet := mdDetalle;
  mdDetalle.Open;
  cdDetalleSG.First;
  mdDetalle.LoadFromDataSet(cdDetalleSG,cdDetalleSG.RecordCount,JvMemoryDataset.lmAppend);

  // Cargar el titulo de los detalles y reasignar los números del orden
  i := 1;
  mdDetalle.First;
  while not mdDetalle.Eof do
  begin
    mdDetalle.Edit;
    mdDetalle.FieldByName('titulodetalle').AsString := cdDetalle.Lookup('iddetalle',mdDetalle.FieldByName('iddetalle').AsInteger,'titulodetalle');
    mdDetalle.FieldByName('noorden').AsInteger := i;
    mdDetalle.Post;
    inc(i);
    mdDetalle.Next;
  end;
  mdDetalle.SortOnFields('noorden');
end;

procedure TFrmOrdenarEsp.btnMoveUpClick(Sender: TObject);
var
  recnoactual : integer;
  recnoanterior : integer;
  nroordenactual : integer;
  nroordenanterior : integer;
begin
  try
    if mddetalle.FieldByName('noorden').AsInteger = 1 then
    begin
      InteliDialog.ShowModal('No se puede ordenar el registro ', 'El registro seleccionado es el primero', mtError, [mbOk], 0);
      exit;
    end;

    recnoactual := dsdetalle.DataSet.RecNo;
    nroordenactual:=dsdetalle.DataSet.FieldByName('noorden').AsInteger;
    dsDetalle.DataSet.Prior;
    recnoanterior :=dsdetalle.DataSet.RecNo;
    nroordenanterior :=  dsdetalle.DataSet.FieldByName('noorden').AsInteger;

    dsdetalle.DataSet.RecNo:=recnoactual;
    dsdetalle.DataSet.Edit;
    dsdetalle.DataSet.FieldByName('noorden').AsInteger:=nroordenanterior;
    dsdetalle.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    dsdetalle.DataSet.RecNo:=recnoanterior;
    dsdetalle.DataSet.Edit;
    dsdetalle.DataSet.FieldByName('noorden').AsInteger:=nroordenactual;
    dsdetalle.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    mdDetalle.SortOnFields('noorden');
    dsdetalle.DataSet.Refresh;

    dsdetalle.DataSet.RecNo:= recnoanterior;

    Resultado := mrOk;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al ordenar los elementos', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmOrdenarEsp.btnGuardarClick(Sender: TObject);
begin
  // Guardar los datos que se hayan modificado unicamente, para no generar tráfico en la red
  mdDetalle.First;
  while not mdDetalle.Eof do
  begin
    if cdDetalleSG.Locate('idsubgrupo;iddetalle',VarArrayof([mdDetalle.FieldByName('idsubgrupo').AsInteger,mdDetalle.FieldByName('iddetalle').AsInteger]),[]) then
      if cdDetalleSG.FieldByName('noorden').AsInteger <> mdDetalle.FieldByName('noorden').AsInteger then
      begin
        cdDetalleSG.Edit;
        cdDetalleSG.FieldByName('noorden').AsInteger := mdDetalle.FieldByName('noorden').AsInteger;
        cdDetalleSG.Post;
        cdDetalleSG.ApplyUpdates(-1);
      end;
    mdDetalle.Next;
  end;
  close;
end;

procedure TFrmOrdenarEsp.btnMoveDownClick(Sender: TObject);
var
  recnoactual : integer;
  recnosiguiente : integer;
  nroordenactual : integer;
  nroordensiguiente : integer;
begin
  try
    recnoactual := dsdetalle.DataSet.RecNo;
    recnoactual := dsdetalle.DataSet.RecNo;
    if recnoactual=dsdetalle.DataSet.RecordCount then
    begin
     InteliDialog.ShowModal('No se puede ordenar el registro ', 'El registro seleccionado es el ultimo', mtError, [mbOk], 0);
     exit;
    end;
    nroordenactual:=dsdetalle.DataSet.FieldByName('noorden').AsInteger;
    dsdetalle.DataSet.RecNo := recnoactual+1;
    recnosiguiente :=dsdetalle.DataSet.RecNo;
    nroordensiguiente :=  dsdetalle.DataSet.FieldByName('noorden').AsInteger;

    dsdetalle.DataSet.RecNo:=recnosiguiente;
    dsdetalle.DataSet.Edit;
    dsdetalle.DataSet.FieldByName('noorden').AsInteger:=nroordenactual;
    dsdetalle.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    dsdetalle.DataSet.RecNo:=recnoactual;
    dsdetalle.DataSet.Edit;
    dsdetalle.DataSet.FieldByName('noorden').AsInteger:=nroordensiguiente;
    dsdetalle.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    mdDetalle.SortOnFields('noorden');
    dsdetalle.DataSet.Refresh;
    dsdetalle.DataSet.RecNo:=recnosiguiente;

    Resultado := mrOk;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al ordenar los elementos', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmOrdenarEsp.btnSalirClick(Sender: TObject);
begin
  Close;
end;

end.
