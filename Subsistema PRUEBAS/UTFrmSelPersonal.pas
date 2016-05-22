unit UTFrmSelPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DB, DBClient, ClientModuleUnit1, UInteliDialog,
  AdvCircularProgress, JvExComCtrls, JvListView, AdvWiiProgressBar;

type
  TCualTabla = (ctDepartamentos, ctCargos);

  TDatosDepto = Class
    IdDepartamento: Integer;
    YaLeido: Boolean;
  End;

  TDatosCargo = Class
    IdCargo: Integer;
  End;

  THiloConexion = Class(TThread)
    DetenerProceso: Boolean;
    FCualTabla: TCualTabla;
    procedure Terminate(Sender: TObject);
  Protected
    procedure Execute; Override;
    procedure IniciarConexion(CualTabla: TCualTabla); virtual;
  Public
    Constructor Create(CualTabla: TCualTabla);
  End;

  TFrmSelPersonal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    TreeView1: TTreeView;
    JvListView1: TJvListView;
    Panel3: TPanel;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure ShowError(pTitle: String; pMessage: String; pMsgType: TMsgDlgType; pButtons: TMsgDlgButtons; HelpId: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelPersonal: TFrmSelPersonal;
  HiloConexion: THiloConexion;

implementation

{$R *.dfm}

Constructor THiloConexion.Create(CualTabla: TCualTabla);
begin
  FCualTabla := CualTabla;
  DetenerProceso := False;
  FreeOnTerminate := True;
  OnTerminate := Terminate;
  inherited Create(False);
end;

procedure THiloConexion.Terminate(Sender: TObject);
begin
  FrmSelPersonal.AdvCircularProgress1.Enabled := False;
  FrmSelPersonal.Panel3.Visible := False;
end;

Procedure THiloConexion.Execute;
begin
  IniciarConexion(FCualTabla);
end;

Procedure THiloConexion.IniciarConexion(CualTabla: TCualTabla);
var
  Deptos: TClientDataSet;
  Cargos: TClientDataSet;
  Empleados: TClientDataSet;
  FirstNode: TTreeNode;
  ChildNode: TDatosDepto;

  DatosCargo: TDatosCargo;
  YaCargado: Boolean;
begin
  if CualTabla = ctDepartamentos then
  begin
    // Cargar los datos de los departamentos
    Try
      Try
        Deptos := TClientDataSet.Create(FrmSelPersonal);
        Cargos := TClientDataSet.Create(FrmSelPersonal);

        if Not CrearConjunto(Deptos, 'nuc_departamento', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Catálogo de Departamentos']);

        if Not CrearConjunto(Cargos, 'nuc_cargo', ccCatalog) then
          raise InteligentConnection.CreateByCode(5, ['Catálogo de Cargos por Departamento']);

        if not CargarDatosFiltrados(Cargos, 'IdCargo', [-9]) then
          raise InteligentException.CreateByCode(6, ['Catálogo de Cargos por Departamento', 'Null', 'Identificador de Cargo']);
        Cargos.Open;

        Deptos.Open;

        FrmSelPersonal.TreeView1.Items.Clear;
        FirstNode := FrmSelPersonal.TreeView1.Items.Add(Nil, 'Departamentos:');
        while not Deptos.Eof do
        begin
          if DetenerProceso then
            Exit;

          ChildNode := TDatosDepto.Create;
          ChildNode.IdDepartamento := Deptos.FieldByName('IdDepartamento').AsInteger;
          ChildNode.YaLeido := False;

          FrmSelPersonal.TreeView1.Items.AddChildObject(FirstNode, Deptos.FieldByName('TituloDepartamento').AsString, ChildNode);

          Deptos.Next;
        end;
      Except
        on e:InteligentConnection do
        begin
          PostMessage(FrmSelPersonal.Handle, WM_CLOSE, 0, 0);
          InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        end;

        on e:exception do
        begin
          PostMessage(FrmSelPersonal.Handle, WM_CLOSE, 0, 0);
          InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Un error inesperado ha sucedido, informe de lo siguiente a administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        end;
      End;
    Finally
      EliminarConjunto([Deptos, Cargos]);
      Deptos.Free;
      Cargos.Free;
    End;
  end;
{
  if CualTabla = ctCargos then
  begin
    // Cargar los datos de los cargos del departamento seleccionado
    if Assigned(FrmSelPersonal.TreeView1.Selected) then
    begin
      if FrmSelPersonal.TreeView1.Selected.Level = 1 then
      begin
        // Cargar los datos de los cargos por departamento
        YaCargado := FrmSelPersonal.TreeView1.Selected.Count > 0;

        if Not YaCargado then
        // Acceder a los cargos de este departamento
        Try
          Try
            If Not CargarDatosFiltrados(Cargos, 'IdDepartamento', [TDatosDepto(FrmSelPersonal.TreeView1.Selected.Data).IdDepartamento]) then
              raise InteligentConnection.CreateByCode(6, ['Catálogo de Cargos por Departamento', TDatosDepto(FrmSelPersonal.TreeView1.Selected.Data).IdDepartamento, 'Identificador de Departamento']);

            Cargos.Open;

            while Not Cargos.Eof do
            begin
              DatosCargo := TDatosCargo.Create;
              DatosCargo.IdCargo := Cargos.FieldByName('IdCargo').AsInteger;

              FrmSelPersonal.TreeView1.Items.AddChildObject(FrmSelPersonal.TreeView1.Selected, Cargos.FieldByName('TituloCargo').AsString, DatosCargo);

              Cargos.Next;
            end;
          Except
            //FrmSelPersonal.ShowError;
            on e:InteligentConnection do
              FrmSelPersonal.ShowError(e.Title, e.Message, e.MsgType, [mbOk], 0);
              //InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

            on e:Exception do
              FrmSelPersonal.ShowError('Ha ocurrido un error inesperado', 'Un error inesperado ha sucedido, informe de lo siguiente a administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
              //InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Un error inesperado ha sucedido, informe de lo siguiente a administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
          End;
        Finally
          Cargos.Close;
        End;

        // Cambiar el modo de la rama seleccionada
        if (FrmSelPersonal.TreeView1.Selected.Count > 0) and (Not YaCargado) then
          FrmSelPersonal.TreeView1.Selected.Expand(True);
      end;
    end;
  end;}
end;

procedure TFrmSelPersonal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmSelPersonal.FormCreate(Sender: TObject);
begin
  Panel2.OnResize(Sender);
  HiloConexion := THiloConexion.Create(ctDepartamentos);
end;

procedure TFrmSelPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    if Assigned(HiloConexion) then
      HiloConexion.DetenerProceso := True;
  end;
end;

procedure TFrmSelPersonal.Panel2Resize(Sender: TObject);
begin
  Panel3.Left := Trunc((Panel2.Width - Panel3.Width) / 2);
  Panel3.Top := Trunc((Panel2.Height - Panel3.Height) / 4);
end;

procedure TFrmSelPersonal.TreeView1DblClick(Sender: TObject);
begin
  if (Sender.ClassType = TTreeView) and Assigned(TTreeView(Sender).Selected) then
  begin
    if TTreeView(Sender).Selected.Level = 1 then
      HiloConexion := THiloConexion.Create(ctCargos);

    if TTreeView(Sender).Selected.Level = 2 then
    begin
      // Cargar todo el personal correspondiente a este cargo

    end;
  end;
end;

procedure TFrmSelPersonal.ShowError(pTitle: String; pMessage: String; pMsgType: TMsgDlgType; pButtons: TMsgDlgButtons; HelpId: Integer);
begin
  InteliDialog.ShowModal(pTitle, pMessage, pMsgType, pButtons, HelpId);
end;

end.
