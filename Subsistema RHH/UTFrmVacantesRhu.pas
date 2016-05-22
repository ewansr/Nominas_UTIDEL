unit UTFrmVacantesRhu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, JvExControls, JvLabel, NxEdit, Mask,
  RxToolEdit, RXDBCtrl, StdCtrls, ExtCtrls, NxCollection, DB, DBClient;

type
  TFrmVacantesRhu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    DBDateEdit1: TDBDateEdit;
    Edit2: TEdit;
    DBImage1: TDBImage;
    NxImagePathEdit1: TNxImagePathEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Edit3: TEdit;
    JvLabel4: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel5: TJvLabel;
    DBGrid1: TDBGrid;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    cdvacantes: TClientDataSet;
    NxButton5: TNxButton;
    cdvacantedetalles: TClientDataSet;
    dsvacantes: TDataSource;
    dsvacantedetalles: TDataSource;
    cdultidvacante: TClientDataSet;
    dsultvacante: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVacantesRhu: TFrmVacantesRhu;

implementation
   uses
    ClientModuleUnit1, xDatabase;

{$R *.dfm}

end.
