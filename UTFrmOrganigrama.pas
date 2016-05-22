unit UTFrmOrganigrama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, DB, DBClient, JvExComCtrls,
  JvDBTreeView, NxDBColumns, NxColumns, UInteliDialog, AdvShapeButton;

type
  TFrmOrganigrama = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    TreeViewNiveles: TTreeView;
    PanelBarra: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter1: TSplitter;
    cdNivelespred: TClientDataSet;
    dsNivelespred: TDataSource;
    Gridnivelpred: TNextDBGrid;
    NxDBCheckBoxColumn1: TNxDBCheckBoxColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    BtnClose: TAdvShapeButton;
    BtnRefresh: TAdvShapeButton;
    BtnDelete: TAdvShapeButton;
    BtnEdit: TAdvShapeButton;
    BtnAdd: TAdvShapeButton;
    procedure FormShow(Sender: TObject);
    procedure CargarArbol;
    procedure BtnAdd2Click(Sender: TObject);
    procedure BtnEdit2Click(Sender: TObject);
    procedure GridnivelpredCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
  private
    Providername: String;
    procedure activar;
    procedure desactivar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrganigrama: TFrmOrganigrama;

implementation

Uses
  ClientModuleUnit1, UTfrmDatosORganigrama;

{$R *.dfm}

procedure TFrmOrganigrama.BtnAdd2Click(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popup: TFrmDatosOrganigrama;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providername, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;


      popup := TFrmDatosORganigrama.Create(nil);
      cdUpt.Append;
      popUp.dsDatos.DataSet := cdUpt;
      if popUp.ShowModal = mrOk then
      begin
        cdUpt.ApplyUpdates(-1);
          BtnRefresh.Click;
      end
      else
      begin
        cdNivelesPred.Cancel;
      end;
      popUp.Free;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmOrganigrama.BtnAddClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popup: TFrmDatosOrganigrama;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providername, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;


      popup := TFrmDatosORganigrama.Create(nil);
      cdUpt.Append;
      popUp.dsDatos.DataSet := cdUpt;
      if popUp.ShowModal = mrOk then
      begin
        cdUpt.ApplyUpdates(-1);
          BtnRefresh.Click;
      end
      else
      begin
        cdNivelesPred.Cancel;
      end;
      popUp.Free;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmOrganigrama.BtnDeleteClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);

    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providername, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;

      if cdUpt.RecordCount = 1 then
      begin
        try
          cdUpt.Delete;
          cdUpt.ApplyUpdates(-1);
          BtnRefresh.Click;
        except
          on e: exception do
          begin
            cdUpt.Free;
            InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
          end;
        end;
      end;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmOrganigrama.BtnEdit2Click(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popup: TFrmDatosOrganigrama;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);

    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providername, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;

      if cdUpt.RecordCount = 1 then
      begin
        popup := TFrmDatosORganigrama.Create(nil);
        cdUpt.Edit;
        popUp.dsDatos.DataSet := cdUpt;
        if popUp.ShowModal = mrOk then
        begin
          cdUpt.ApplyUpdates(-1);
          BtnRefresh.Click;
        end
        else
        begin
          cdNivelesPred.Cancel;
        end;
        popUp.Free;
      end;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmOrganigrama.BtnEditClick(Sender: TObject);
var
  cdUpt: TClientDataSet;
  popup: TFrmDatosOrganigrama;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);

    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providername, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;

      if cdUpt.RecordCount = 1 then
      begin
        popup := TFrmDatosORganigrama.Create(nil);
        cdUpt.Edit;
        popUp.dsDatos.DataSet := cdUpt;
        if popUp.ShowModal = mrOk then
        begin
          cdUpt.ApplyUpdates(-1);
          BtnRefresh.Click;
        end
        else
        begin
          cdNivelesPred.Cancel;
        end;
        popUp.Free;
      end;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmOrganigrama.BtnRefreshClick(Sender: TObject);
begin
  if cdNivelesPred.State = dsBrowse then
    cdNivelesPred.Refresh;
  if GridNivelpred.rowCount > 0 then
    CargarArbol;
end;

procedure TFrmOrganigrama.CargarArbol;
var
  Padre: TTreeNode;
begin
  Try
    TreeViewNiveles.Items.Clear;
    cdNivelesPred.First;
    Padre := nil;
    while not cdNivelesPred.Eof do
    begin
      Padre := TreeViewNiveles.Items.AddChild(Padre,cdNivelesPred.FieldByName('titulonivel').AsString);
      cdNivelesPred.Next;
    end;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmOrganigrama.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(providerName);
  LiberarVentana(Self, Action);
end;

procedure TFrmOrganigrama.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);
  Try
    cdNivelesPred.Close;
    CrearConjunto(cdNivelesPred, cnivelorganizacion, providername, ccCatalog);
    cdNivelesPred.Open;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;

  if GridNivelpred.rowCount > 0 then
    CargarArbol;
end;

procedure TFrmOrganigrama.GridnivelpredCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var i, idselected: integer;
begin
  idselected := StrToInt(GridNivelpred.CellValue[1,GridNivelpred.SelectedRow]);
  if GridNivelpred.SelectedColumn = 0 then
  begin
   cdNivelesPred.First;
   i := 0;
   while not cdNivelesPred.Eof do
   begin
     if cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger = idselected then
       activar
     else
       desactivar;
     cdNivelesPred.Next;
   end;
  end;
   btnrefresh.Click;
end;

procedure TFrmOrganigrama.activar;
var
  cdUpt: TClientDataSet;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providername, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);
      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 1 then
      begin
        try
          cdUpt.Edit;
          cdUpt.FieldByName('acceso').AsString := 'true';
          cdUpt.ApplyUpdates(-1);
        except
          on e: exception do
          begin
            cdUpt.Free;
            InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
          end;
        end;
      end;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

procedure TFrmOrganigrama.desactivar;
var
  cdUpt: TClientDataSet;
begin
  Try
    cdUpt := TClientDataSet.Create(Nil);
    // Acceder en modo update a los datos
      CrearConjunto(cdUpt, cnivelorganizacion, providername, ccUpdate);
      CargarDatosFiltrados(cdUpt, 'idnivelorganizacion', [cdNivelesPred.FieldByName('idnivelorganizacion').AsInteger]);      // Obtener un conjunto de datos vacíos
      cdUpt.Open;
      if cdUpt.RecordCount = 1 then
      begin
        try
          cdUpt.Edit;
          cdUpt.FieldByName('acceso').AsString := 'false';
          cdUpt.ApplyUpdates(-1);
        except
          on e: exception do
          begin
            cdUpt.Free;
            InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
          end;
        end;
      end;
      cdUpt.Free;
  Except
    on e: Exception do
      InteliDialog.ShowModal(e.Message,'', mtWarning, [mbOk], 0);
  End;
end;

end.
