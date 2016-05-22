unit UTFrmAsignarPostulantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumns, NxDBColumns, DB, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, JvMemoryDataset, AdvSmoothLabel, DBClient,
  AdvShapeButton, ExtCtrls, JvExControls, JvLabel, AdvOfficeButtons, Provider;

type
  TFrmAsignarPostulantes = class(TForm)
    pnlBottom: TPanel;
    pnl1: TPanel;
    btnBtnClose: TAdvShapeButton;
    pnlSelect: TPanel;
    btnBtnSelect: TAdvShapeButton;
    pnlMain: TPanel;
    cdPostulantes: TClientDataSet;
    pnl2: TPanel;
    lbl1: TAdvSmoothLabel;
    lbl2: TAdvSmoothLabel;
    dsOrigen: TDataSource;
    dsDestino: TDataSource;
    Panel1: TPanel;
    grdDestino: TNextDBGrid;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn1: TNxDBTextColumn;
    lbl4: TJvLabel;
    Panel2: TPanel;
    grdOrigen: TNextDBGrid;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    Panel3: TPanel;
    lbl3: TJvLabel;
    chkVerTodos: TAdvOfficeCheckBox;
    Splitter1: TSplitter;
    cdDestino: TClientDataSet;
    cdOrigen: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure grdOrigenMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grdDestinoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure grdDestinoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnBtnSelectClick(Sender: TObject);
  private
    { Private declarations }
    FIdCargo: Integer;
    FIdPlazaDetalle: Integer;
    procedure SetTituloCargo(Value: String);
  public
    property IdCargo: Integer write FIdCargo;
    property IdPlazaDetalle: Integer write FIdPlazaDetalle;
    property TituloCargo: String write SetTituloCargo;
  end;

var
  FrmAsignarPostulantes: TFrmAsignarPostulantes;

implementation

uses
  UInteliDialog, ClientModuleUnit1;

{$R *.dfm}

{ TFrmAsignarPostulantes }


procedure TFrmAsignarPostulantes.btnBtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmAsignarPostulantes.btnBtnSelectClick(Sender: TObject);
begin
  //cdOrigen.ApplyUpdates(-1);

  if EnTransaccion then
    ConcretarTransaccion;
  Close;
end;

procedure TFrmAsignarPostulantes.FormDestroy(Sender: TObject);
begin
  if EnTransaccion then
    CancelarTransaccion;

  EliminarConjunto([cdOrigen, cdDestino]);
end;

procedure TFrmAsignarPostulantes.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      IniciarTransaccion;

      if Not CrearConjunto(cdOrigen, 'rhu_postulante', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not CargarDatosFiltrados(cdOrigen, 'Libres',['Si']) then
        raise InteligentException.CreateByCode(6, ['Postulantes', 'Si', 'Libres']);
      cdOrigen.Open;

      if Not CrearConjunto(cdDestino, 'rhu_postulante', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not CargarDatosFiltrados(cdDestino, 'Libres,IdPlazaDetalle',['No', FIdPlazaDetalle]) then
        raise InteligentException.CreateByCode(6, ['Postulantes', 'No|' + IntToStr(FIdCargo), 'Libres|IdPlazaDetalle']);
      cdDestino.Open;
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
      InteliDialog.ShowModal('Ha ocurrido un error inpesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmAsignarPostulantes.grdDestinoDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  i: Integer;
  Cursor: TCursor;
begin
  if (Source is TNextDBGrid) and (grdOrigen.DataSource.DataSet.RecordCount > 0) then
  begin
    Try
      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        Try
          cdOrigen.Edit;
          cdOrigen.FieldByName('IdPlazaDetalle').AsInteger := FIdPlazaDetalle;
          cdOrigen.Post;
          cdOrigen.ApplyUpdates(-1);
        Except
          cdOrigen.Cancel;
          Raise;
        End;

        cdOrigen.Refresh;
        cdDestino.Refresh;
      Finally
        Screen.Cursor := Cursor;
      End;
    Except
      on e:exception do
      begin
        showmessage(e.Message);
      end;
    End;
  end;
end;

procedure TFrmAsignarPostulantes.grdDestinoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TNextDBGrid);
end;

procedure TFrmAsignarPostulantes.grdOrigenMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  grdOrigen.BeginDrag(False);
end;

procedure TFrmAsignarPostulantes.SetTituloCargo(Value: String);
begin
  lbl2.Caption.Text := Value;
end;

end.
