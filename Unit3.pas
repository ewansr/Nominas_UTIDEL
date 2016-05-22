unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, frxClass, frxDBSet, StdCtrls, Grids, DBGrids, unit2;

type
  TForm3 = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataSet1: TfrxDBDataset;
    dsDatos: TDataSource;
    cdDatos: TClientDataSet;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
ClientModuleUnit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
DataPage: TfrxDataPage;
Page: TfrxReportPage;
Band: TfrxBand;
DataBand: TfrxMasterData;
Memo: TfrxMemoView;
logo : TfrxPictureview ;
titulo1, titulo2, titulo3, titulo4 : TfrxMemoView;
begin
{ clear a report }
frxReport1.Clear;
{ add a dataset to the list of ones accessible for a report }
frxReport1.DataSets.Add(frxDBDataSet1);
frxReport1.DataSets.Add(form2.FrxImagen);
{ add the "Data" page }
DataPage := TfrxDataPage.Create(frxReport1);
{ add a page }
Page := TfrxReportPage.Create(frxReport1);
{ create a unique name }
Page.CreateUniqueName;
{ set sizes of fields, paper and orientation by default }
Page.SetDefaults;
{ modify paper’s orientation }
//Page.Orientation := poLandscape;
page.Width := 21.59;
page.Height := 27.94;
{ add a report title band}
Band := TfrxReportTitle.Create(Page);
Band.CreateUniqueName;
{ it is sufficient to set the «Top» coordinate and height for a band }
{ both coordinates are in pixels }
Band.Top := 0.50;
Band.Height := 4.00;
Band.Width := 19.59;
band.Left := 0;
{ add an object to the report title band }
//logo
 logo := TfrxPictureview.Create(Band);
 logo.Left :=0.30;
 logo.Top := 0.20;
{ logo.Width :=3.40;
 logo.Height :=3.10; }
  logo.Width :=100;
 logo.Height :=100;

 logo.DataField := 'imagen1';
 logo.DataSet := form2.FrxImagen;

//titutlos
titulo1 := TfrxMemoView.Create(Band);
titulo1.CreateUniqueName;
titulo1.Text := 'Reporte General';
titulo1.top := 10;
titulo1.left := 120;
titulo1.width := 150;
titulo2 := TfrxMemoView.Create(Band);
titulo2.CreateUniqueName;
titulo2.Text := 'Catálogo de paises';
titulo2.left := 120;
titulo2.top := 20;
titulo2.width := 150;
titulo3 := TfrxMemoView.Create(Band);
titulo3.CreateUniqueName;
titulo3.Text := datetostr(now);
titulo3.left := 120;
titulo3.top := 40;
titulo3.width := 150;
titulo4 := TfrxMemoView.Create(Band);
titulo4.CreateUniqueName;
titulo4.Text := 'Ciudad del Carmen, Campeche';
titulo4.left := 120;
titulo4.top := 50;
titulo4.width := 150;

Memo := TfrxMemoView.Create(Band);

Memo.CreateUniqueName;
Memo.Text := 'Hello FastReport!';
Memo.Height := 20;
{ this object will be stretched according to band’s width }
Memo.Align := baWidth;
{ add the masterdata band }
//DataBand := TfrxMasterData.Create(Page);
//DataBand.CreateUniqueName;
//DataBand.DataSet := frxDBDataSet1;
{ the Top coordinate should be greater than the previously added band’s top + height}
//DataBand.Top := 100;
//DataBand.Height := 20;
{ add an object on master data }
//Memo := TfrxMemoView.Create(DataBand);
//Memo.CreateUniqueName;
{ connect to data }
//Memo.DataSet := frxDBDataSet1;
//Memo.DataField := 'nombre';
//Memo.SetBounds(0, 0, 100, 20);
{ adjust the text to the right object’s margin }
//Memo.HAlign := haRight;
{ show the report }
frxReport1.ShowReport;
end;

procedure TForm3.FormShow(Sender: TObject);
var
  providername: String;
begin

  cddatos.Close;
  CrearConjunto(cddatos, 'nuc_usuario', ProviderName, ccCatalog);
  CargarDatosFiltrados(cddatos, 'idusuario', [-1]);
  cddatos.Open;
end;

end.
