unit frm_ModificaBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, DBClient, ExtDlgs, StdCtrls, Buttons, AdvGlowButton,
  ExtCtrls, AdvPicture, Jpeg, URegistro;

type
  TFrmModificaBase = class(TForm)
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    BitBtn1: TBitBtn;
    cbDatabase: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModificaBase: TFrmModificaBase;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, ClientClassesUnit1, Frm_SelDatabase;

var
  PName: String;

procedure TFrmModificaBase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(PName);
end;

procedure TFrmModificaBase.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;

  PasoNombre: String;
  PasoCD: TClientDataSet;
begin
  Try
    Try
      Application.CreateForm(TFrmSelDatabase, FrmSelDatabase);
      if FrmSelDatabase.ShowModal = mrOk then
      begin
        Try
          // Registrar la base de datos que se seleccionó
          SetRegistry('\Configuracion', '\Conexion', 'DATABASE', FrmSelDataBase.ListBox1.Items.Strings[FrmSelDataBase.ListBox1.ItemIndex]);
        Except
          on e:exception do
          begin
            MessageDlg('No ha sido posible registrar la base de datos de trabajo para el sistema, informe de esto al administrador del sistema.', mtWarning, [mbOk], 0);
            Close;
          end;
        End;
      end
      else
        Close;
    Except
      Close;
    End;
  Finally
    FrmSelDatabase.Free;
  End;
end;

end.
