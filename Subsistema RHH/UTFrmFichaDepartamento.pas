unit UTFrmFichaDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExComCtrls, JvComCtrls, ExtCtrls, DB, JvExControls,
  JvLabel;

type
  TFrmFichaDepartamento = class(TForm)
    JvTabControl1: TJvTabControl;
    Panel1: TPanel;
    Panel2: TPanel;
    dsDepartamento: TDataSource;
    lblCodigo: TJvLabel;
    lblTitulo: TJvLabel;
    lblDescripcion: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
  private
    { Private declarations }
  public
    IdDepartamento: Integer;
  end;

var
  FrmFichaDepartamento: TFrmFichaDepartamento;

implementation

{$R *.dfm}

end.
