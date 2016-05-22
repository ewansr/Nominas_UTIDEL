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
    btnGuardar: TNxButton;
    mdDetalle: TJvMemoryData;
    MemEspecDetalle: TClientDataSet;
    DataSource1: TDataSource;
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
    result : integer;
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
  ClientModule1.ComponentColor(Self);
  Resultado := mrCancel;

{
    mdDetalle.LoadFromDataSet(MemEspecDetalle,0,JvMemoryDataset.lmCopy);
    mdDetalle.Close;

    Field1 := TStringField.Create(mdDetalle);
    Field1.Name := 'fldTituloDetalle';
    Field1.FieldName := 'titulodetalle2';
    Field1.FieldKind := fkData;
    Field1.DataSet := mdDetalle;

    mdDetalle.Open;

    MemEspecDetalle.First;
    mdDetalle.LoadFromDataSet(MemEspecDetalle,MemEspecDetalle.RecordCount,JvMemoryDataset.lmAppend);

    // Cargar el titulo de los detalles y reasignar los números del orden

      i := 1;
      mdDetalle.First;
      while not mdDetalle.Eof do
      begin
        mdDetalle.Edit;
        mdDetalle.FieldByName('titulodetalle').AsString := MemEspecDetalle.Lookup('iddetalle',mdDetalle.FieldByName('iddetalle').AsInteger,'titulodetalle');
        mdDetalle.FieldByName('noorden').AsInteger := i;
        mdDetalle.Post;
        inc(i);
        mdDetalle.Next;
      end;
      mdDetalle.SortOnFields('noorden');
}
{

        while not mdDetalle.Eof do
        begin
          mdDetalle.Edit;
          mdDetalle.FieldByName('titulodetalle').AsString := MemEspecDetalle.Lookup('iddetalle',mdDetalle.FieldByName('iddetalle').AsInteger,'titulodetalle');
          mdDetalle.FieldByName('noorden').AsInteger := i;
          mdDetalle.Post;
          inc(i);
          mdDetalle.Next;
        end;

}

end;

procedure TFrmOrdenarEsp.btnMoveUpClick(Sender: TObject);
var
  recnoactual : integer;
  recnoanterior : integer;
  nroordenactual : integer;
  nroordenanterior : integer;
begin
  try
    if MemEspecDetalle.FieldByName('noorden').AsInteger = 1 then
    begin
      InteliDialog.ShowModal('No se puede ordenar el registro ', 'El registro seleccionado es el primero', mtInformation, [mbOk], 0);
      exit;
    end;

    recnoactual := DataSource1.DataSet.RecNo;
    nroordenactual:=DataSource1.DataSet.FieldByName('noorden').AsInteger;
    DataSource1.DataSet.Prior;
    recnoanterior :=DataSource1.DataSet.RecNo;
    nroordenanterior :=  DataSource1.DataSet.FieldByName('noorden').AsInteger;

    DataSource1.DataSet.RecNo:=recnoactual;
    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName('noorden').AsInteger:=nroordenanterior;
    DataSource1.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    DataSource1.DataSet.RecNo:=recnoanterior;
    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName('noorden').AsInteger:=nroordenactual;
    DataSource1.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    Tclientdataset(DataSource1.DataSet).IndexFieldNames:='noorden';

    DataSource1.DataSet.RecNo:= recnoanterior;

    Resultado := mrOk;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al ordenar los elementos', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmOrdenarEsp.btnGuardarClick(Sender: TObject);
var
  cdupt : TClientDataset;
begin
  // Guardar los datos que se hayan modificado unicamente, para no generar tráfico en la red
  try
    try
      DataSource1.DataSet:=nil;
      cdupt := TclientDataset.Create(nil);
      MemEspecDetalle.First;
      while not MemEspecDetalle.Eof do
      begin
        try
          CrearConjunto(cdupt, 'alm_especdetallesubgrupo', ccUpdate);
          CargarDatosFiltrados(cdupt, 'idsubgrupo, iddetalle', [MemEspecDetalle.FieldByName('idsubgrupo').AsInteger, MemEspecDetalle.FieldByName('iddetalle').AsInteger]);
          cdupt.Open;
          cdupt.Refresh;
          if cdupt.FieldByName('noorden').AsInteger <> MemEspecDetalle.FieldByName('noorden').AsInteger then
          begin
            cdupt.Edit;
            cdupt.FieldByName('noorden').AsInteger := MemEspecDetalle.FieldByName('noorden').AsInteger;
            cdupt.Post;
            cdupt.ApplyUpdates(-1);
          end;
        finally
          EliminarConjunto(cdupt);
        end;
         MemEspecDetalle.Next;
      end;
      result:=mrok;
      close;
    finally
      if assigned(cdupt) then
      begin
        cdupt.Free;
      end;
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Error inesperado', 'Ha ocurrido un error inesperado, informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
  end;

{
      while not mdDetalle.Eof do
      begin
         try
          CrearConjunto(cdupt, 'alm_especdetallesubgrupo', ccUpdate);
          CargarDatosFiltrados(cdupt, 'idsubgrupo, iddetalle', [mdDetalle.FieldByName('idsubgrupo').AsInteger, mdDetalle.FieldByName('iddetalle').AsInteger]);
          cdupt.Open;
          cdupt.Refresh;
          //if cdupt.Locate('idsubgrupo;iddetalle',VarArrayof([mdDetalle.FieldByName('idsubgrupo').AsInteger,mdDetalle.FieldByName('iddetalle').AsInteger]),[]) then
            if cdupt.FieldByName('noorden').AsInteger <> mdDetalle.FieldByName('noorden').AsInteger then
            begin
              cdupt.Edit;
              cdupt.FieldByName('noorden').AsInteger := mdDetalle.FieldByName('noorden').AsInteger;
              cdupt.Post;
              cdupt.ApplyUpdates(-1);
            end;
         finally
            EliminarConjunto(cdupt);
            //cdupt.Free;
         end;
       mdDetalle.Next;
      end;
    close;
}

end;

procedure TFrmOrdenarEsp.btnMoveDownClick(Sender: TObject);
var
  recnoactual : integer;
  recnosiguiente : integer;
  nroordenactual : integer;
  nroordensiguiente : integer;
begin
  try
    recnoactual := DataSource1.DataSet.RecNo;
    recnoactual := DataSource1.DataSet.RecNo;
    if recnoactual=DataSource1.DataSet.RecordCount then
    begin
     InteliDialog.ShowModal('No se puede ordenar el registro ', 'El registro seleccionado es el ultimo', mtInformation, [mbOk], 0);
     exit;
    end;
    nroordenactual:=DataSource1.DataSet.FieldByName('noorden').AsInteger;
    DataSource1.DataSet.RecNo := recnoactual+1;
    recnosiguiente :=DataSource1.DataSet.RecNo;
    nroordensiguiente :=  DataSource1.DataSet.FieldByName('noorden').AsInteger;

    DataSource1.DataSet.RecNo:=recnosiguiente;
    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName('noorden').AsInteger:=nroordenactual;
    DataSource1.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    DataSource1.DataSet.RecNo:=recnoactual;
    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName('noorden').AsInteger:=nroordensiguiente;
    DataSource1.DataSet.Post;
    //TclientDataset(dsdetalle.DataSet).ApplyUpdates(-1);

    Tclientdataset(DataSource1.DataSet).IndexFieldNames:='noorden';

    DataSource1.DataSet.RecNo:=recnosiguiente;

    Resultado := mrOk;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al ordenar los elementos', 'Informe de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmOrdenarEsp.btnSalirClick(Sender: TObject);
begin
  result:=mrok;
  Close;
end;

end.
