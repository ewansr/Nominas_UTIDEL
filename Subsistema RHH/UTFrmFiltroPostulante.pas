unit UTFrmFiltroPostulante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, ExtCtrls, Buttons;

type
  TFiltro = Class
    Conjuncion: Integer;
    Campo: Integer;
    Operador: Integer;
    Valor: String;
  End;

  TFrmFiltroPostulante = class(TForm)
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Campo: TJvLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    ComboBox3: TComboBox;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    JvLabel1: TJvLabel;
    Button4: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    function ArmaCadena: String;
  private
    OldIndex: Integer;
  public

  end;

var
  FrmFiltroPostulante: TFrmFiltroPostulante;

implementation

{$R *.dfm}

procedure TFrmFiltroPostulante.Button1Click(Sender: TObject);
var
  Filtro: TFiltro;
  Cadena: String;
begin
  Filtro := TFiltro.Create;
  Filtro.Conjuncion := ComboBox2.ItemIndex;
  Filtro.Campo := ComboBox1.ItemIndex;
  Filtro.Operador := ComboBox3.ItemIndex;
  Filtro.Valor := Edit1.Text;

  Cadena := ArmaCadena;

  ListBox1.Items.AddObject(Cadena, Filtro);

  ComboBox2.ItemIndex := -1;
  ComboBox1.ItemIndex := -1;
  ComboBox3.ItemIndex := -1;
  Edit1.Text := '';

  Button1.Enabled := False;
  ComboBox2.Enabled := ListBox1.Items.Count > 0;
  ComboBox1.SetFocus;
end;

procedure TFrmFiltroPostulante.Button4Click(Sender: TObject);
begin
  if ListBox1.ItemIndex >= 0 then
  begin
    TFiltro(ListBox1.Items.Objects[ListBox1.ItemIndex]).Conjuncion := ComboBox2.ItemIndex;
    TFiltro(ListBox1.Items.Objects[ListBox1.ItemIndex]).Campo := ComboBox1.ItemIndex;
    TFiltro(ListBox1.Items.Objects[ListBox1.ItemIndex]).Operador := ComboBox3.ItemIndex;
    TFiltro(ListBox1.Items.Objects[ListBox1.ItemIndex]).Valor := Edit1.Text;

    ListBox1.Items[ListBox1.ItemIndex] := ArmaCadena;
  end;
end;

procedure TFrmFiltroPostulante.ComboBox1Change(Sender: TObject);
begin
  Button1.Enabled := True;
  Button4.Enabled := ListBox1.ItemIndex >= 0;
end;

procedure TFrmFiltroPostulante.ComboBox2Change(Sender: TObject);
begin
  Button1.Enabled := True;
  Button4.Enabled := ListBox1.ItemIndex >= 0;
end;

procedure TFrmFiltroPostulante.ComboBox3Change(Sender: TObject);
begin
  Button1.Enabled := True;
  Button4.Enabled := ListBox1.ItemIndex >= 0;
end;

procedure TFrmFiltroPostulante.Edit1Change(Sender: TObject);
begin
  Button1.Enabled := True;
  Button4.Enabled := ListBox1.ItemIndex >= 0;
end;

procedure TFrmFiltroPostulante.FormShow(Sender: TObject);
begin
  if ListBox1.Items.Count = 0 then
  begin
    ComboBox2.Enabled := False;
    ComboBox2.ItemIndex := -1;
    OldIndex := -1;
  end;
end;

procedure TFrmFiltroPostulante.Timer1Timer(Sender: TObject);
var
  Filtro: TFiltro;
begin
  if (OldIndex <> ListBox1.ItemIndex) then
  begin
    OldIndex := ListBox1.ItemIndex;

    Filtro := TFiltro(ListBox1.Items.Objects[OldIndex]);
    ComboBox2.ItemIndex := Filtro.Conjuncion;
    ComboBox1.ItemIndex := Filtro.Campo;
    ComboBox3.ItemIndex := Filtro.Operador;
    Edit1.Text := Filtro.Valor;

    ComboBox2.Enabled :=  OldIndex > 0;
    Button1.Enabled := False;
    Button4.Enabled := False;
  end;
end;

function TFrmFiltroPostulante.ArmaCadena: String;
begin
  Result := ComboBox2.Text + ' ' + ComboBox1.Text + ' ' + ComboBox3.Text + ' ' + Edit1.Text;
end;

end.
