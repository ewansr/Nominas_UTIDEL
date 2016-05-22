unit UTFrmSelCargoxConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, UInteliDialog, ClientModuleUnit1,
  ExtCtrls, AdvGlowButton;

type
  TFrmSelCargoxConvenio = class(TForm)
    DBGrid1: TDBGrid;
    cdCargos: TClientDataSet;
    dsCargos: TDataSource;
    Panel1: TPanel;
    Btn_Aceptar: TAdvGlowButton;
    Btn_Cancelar: TAdvGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    IdConvenio: Integer;
    procedure AbrirCargos;
  end;

var
  FrmSelCargoxConvenio: TFrmSelCargoxConvenio;

implementation

{$R *.dfm}

procedure TFrmSelCargoxConvenio.AbrirCargos;
begin
  Try
    if Not CargarDatosFiltrados(cdCargos, 'IdConvenio', [IdConvenio]) then
      raise InteligentException.CreateByCode(6, ['Puesto por Convenio', IdConvenio, 'IdConvenio']);
    cdCargos.Open;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Raise;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Raise;
    end;
  End;
end;

procedure TFrmSelCargoxConvenio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
  Action := caHide;
end;

procedure TFrmSelCargoxConvenio.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas(Self);

  Try
    if Not CrearConjunto(cdCargos, 'rhu_cargosxconvenio', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Puestos por Convenio']);
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      Raise;
      //SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Raise;
      //SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
