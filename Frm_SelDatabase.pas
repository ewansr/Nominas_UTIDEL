unit Frm_SelDatabase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, AdvGlowButton, ExtCtrls;

type
  TFrmSelDataBase = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelDataBase: TFrmSelDataBase;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1;

procedure TFrmSelDataBase.FormShow(Sender: TObject);
var
  dsDatos,
  dsTablas: TClientDataSet;
  Nombre, NombreTablas: String;
  sDatabase: String;
begin
  Try
    dsDatos := TClientDataSet.Create(Nil);
    dsDatos.RemoteServer := ClientModule1.DSProviderConnection1;
    CrearConjunto(dsDatos, 'databases', Nombre, ccCatalog);
    PonerSentenciaSQL(Nombre, 'show databases');

    dsTablas := TClientDataSet.Create(Nil);
    dsTablas.RemoteServer := ClientModule1.DSProviderConnection1;
    CrearConjunto(dsTablas, 'tables', NombreTablas, ccCatalog);

    dsDatos.Open;
    ListBox1.Items.Clear;
    while Not dsDatos.Eof do
    begin
      sDatabase := dsDatos.FieldByName('Database').AsString;
      sDatabase := 'show tables in ' + sDatabase + ' where tables_in_' + sDatabase + ' = ' + QuotedStr(cConfiguracion);
      dsTablas.Close;
      PonerSentenciaSQL(NombreTablas, sDatabase);
      dsTablas.Open;
      if dsTablas.RecordCount = 1 then
        ListBox1.Items.Add(dsDatos.FieldByName('Database').AsString);
      dsDatos.Next;
    end;
    if ListBox1.Items.Count > 0 then
      ListBox1.ItemIndex := 0;
    Button1.Enabled := ListBox1.Items.Count > 0;
  Finally
    dsDatos.Close;
    EliminarConjunto(Nombre);
    FreeAndNil(dsDatos);

    dsTablas.Close;
    EliminarConjunto(NombreTablas);
    FreeAndNil(dsTablas);
  End;

end;

end.
