unit UTFrmPrincipalTicDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxDBGrid, ComCtrls, DB, DBClient, frxClass, frxPreview, Grids,
  DBGrids, RxMemDS, frxDBSet, UTFrmAsignacionIndividualTIC, NxCollection, UIntelidialog,
  JvExStdCtrls, JvBehaviorLabel, Menus, UTfrmDetalleXEntrada, UTFrmAsignacionesPersonalTic, UTFrmEspecificaciones;

type
  PDatos = ^TNDatos;
    TNDatos = Record
    Id: Integer;
    Codigo: String;
end;

type
  TFrmPrincipalTicDX = class(TForm)
    Panel1: TPanel;
    cdsubgrupos: TClientDataSet;
    dssubgrupos: TDataSource;
    dsgrupos: TDataSource;
    cdgrupos: TClientDataSet;
    dsareas: TDataSource;
    cdareas: TClientDataSet;
    dsdetalles: TDataSource;
    cddetalles: TClientDataSet;
    frxReport1: TfrxReport;
    cddetespxarxgrxsg: TClientDataSet;
    dsdetespxarxgrxsg: TDataSource;
    dsmemdetesp: TDataSource;
    memdetesp: TClientDataSet;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    Archivo: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    DetalledeInsumos1: TMenuItem;
    AsignacionesDeInsumosaPersonal1: TMenuItem;
    S1: TMenuItem;
    ArboldeDetalle1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ArchivoClick(Sender: TObject);
    procedure DetalledeInsumos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipalTicDX: TFrmPrincipalTicDX;

implementation
uses
  ClientModuleUnit1;
{$R *.dfm}

procedure TFrmPrincipalTicDX.DBGrid1DblClick(Sender: TObject);
begin
   memdetesp.RecordCount;
end;

procedure TFrmPrincipalTicDX.DetalledeInsumos1Click(Sender: TObject);
begin
  application.CreateForm(TFrmDetalleXEntrada, FrmDetalleXEntrada);
  FrmDetalleXEntrada.ShowModal;
end;

procedure TFrmPrincipalTicDX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmPrincipalTicDX.FormCreate(Sender: TObject);
begin
  //
end;

procedure TFrmPrincipalTicDX.FormShow(Sender: TObject);
begin
  //
end;

procedure TFrmPrincipalTicDX.ArchivoClick(Sender: TObject);
var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

end.
