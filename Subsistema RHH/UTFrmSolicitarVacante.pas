unit UTFrmSolicitarVacante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvLabel, ExtCtrls, Mask, DBCtrls, Buttons,
  Menus, JvExExtCtrls, JvImage, jpeg, DB, UInteliDialog, DBClient;

type
  TFrmSolicitarVacante = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    JvLabel1: TJvLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel4: TPanel;
    Panel2: TPanel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel3: TPanel;
    JvLabel6: TJvLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    JvLabel9: TJvLabel;
    PopupMenu1: TPopupMenu;
    BuscarPlazaVacante1: TMenuItem;
    JvImage1: TJvImage;
    DsPlaza: TDataSource;
    ClientDataSet1: TClientDataSet;
    JvLabel7: TJvLabel;
    DBEdit5: TDBEdit;
    JvLabel8: TJvLabel;
    DBEdit7: TDBEdit;
    JvLabel11: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    resultado : integer;
    { Public declarations }
  end;

var
  FrmSolicitarVacante: TFrmSolicitarVacante;

implementation
uses
    ClientModuleUnit1;

{$R *.dfm}

procedure TFrmSolicitarVacante.BitBtn1Click(Sender: TObject);
begin
  resultado:=mrok;
  close;
end;

procedure TFrmSolicitarVacante.BitBtn3Click(Sender: TObject);
begin
    Self.Height := GetSystemMetrics(SM_CYCAPTION) + Panel1.Height + 2;
    edit1.Text:='';
    if DsPlaza.DataSet.Active then
      DsPlaza.DataSet.close;
end;

procedure TFrmSolicitarVacante.Button1Click(Sender: TObject);
begin
  try
    if DsPlaza.DataSet.Active then
      DsPlaza.DataSet.Close;

    if not CargarDatosFiltrados(TClientDataset(DsPlaza.DataSet),'CodigoPlazaDetalle',[Edit1.Text]) then
      raise InteligentConnection.CreateByCode(4, ['Error al Localizar la plaza detalle']);
    DsPlaza.DataSet.Open;

    if DsPlaza.DataSet.RecordCount=0 then
       InteliDialog.ShowModal('Importante', 'No se ha encontrado ninguna plaza conel siguiente codigo: "'+edit1.Text+'"', MtInformation, [mbOk], 0);

    Panel4.Visible:=true;
    Self.Height := Self.Height+Panel4.Height + 2;

  except
    on e:InteligentConnection do
       InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
    begin
      InteliDialog.ShowModal('Se ha Producido un error al buscar la plaza', e.Message, mtInformation, [mbOk], 0);
      if DsPlaza.DataSet.Active then
        DsPlaza.DataSet.close;
    end;

  end;
end;

procedure TFrmSolicitarVacante.FormCreate(Sender: TObject);
begin
  resultado:=mrcancel;
end;

procedure TFrmSolicitarVacante.FormShow(Sender: TObject);
begin
  Self.Height := GetSystemMetrics(SM_CYCAPTION) + Panel1.Height + 2;
end;

end.
