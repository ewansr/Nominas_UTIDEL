unit UTFrmPartidaDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, ExtCtrls, DB, JvMemoryDataset, DBClient,
  JvComponentBase, JvEnterTab;

type
  TFrmPartidaDoc = class(TForm)
    Panel1: TPanel;
    dsDetalle: TDataSource;
    mdDetalle: TJvMemoryData;
    BtnAdd: TAdvShapeButton;
    BtnClose: TAdvShapeButton;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ModoEdit: boolean;
  protected
    // definir una función en la que se puedan hacer las validaciones necesarias
    // antes de guardar
    function ValidaCampos: boolean; virtual; abstract;
    procedure LimpiarCampos; virtual; abstract;
    // procedimiento para poner los campos que deben de llevar un valor por default al
    // crear un nuevo registro
    procedure InicializarCampos; virtual; abstract;
    // procedimiento para llenar los campos que no pertenecen a la consulta pero que
    // dependen de alguno de los campos
    procedure CargarCampos; virtual; abstract;
  public
    { Public declarations }
    idDetailField: string;
    idMasterField: string;
    idMasterKeyFieldValue: integer;   // valor de la llave del padre
    procedure AddRecord;
    Procedure EditRecord;
  end;

var
  FrmPartidaDoc: TFrmPartidaDoc;

implementation

uses ClientModuleUnit1;

{$R *.dfm}

procedure TFrmPartidaDoc.BtnAddClick(Sender: TObject);
begin
  if ValidaCampos then
  begin
    mdDetalle.Post;
    if ModoEdit then  // si es modo edicion, guardar y salir
      self.Close
    else
    begin
      mdDetalle.Append; // si estoy en agregar, continuar agregando
      mdDetalle.FieldByName(idDetailField).AsInteger := 0;
      mdDetalle.FieldByName(idMasterField).AsInteger := idMasterKeyFieldValue;
      // si hay objetos que no estan asignados a un campo, brindar un metodo
      // para borrarlos manualmente
      LimpiarCampos;
    end;
  end;
end;

procedure TFrmPartidaDoc.BtnCloseClick(Sender: TObject);
begin
  close;
end;


procedure TFrmPartidaDoc.AddRecord;
begin
  ModoEdit := false;
  mdDetalle.Append;
  mdDetalle.FieldByName(idDetailField).AsInteger := 0;
  mdDetalle.FieldByName(idMasterField).AsInteger := idMasterKeyFieldValue;
  self.showModal;
end;

procedure TFrmPartidaDoc.EditRecord;
begin
  ModoEdit := true;
  mdDetalle.Edit;
  self.ShowModal;
end;

procedure TFrmPartidaDoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mdDetalle.Cancel;
end;

procedure TFrmPartidaDoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Corregir el problema de que cuando estoy con el foco en el botón "Agregar"
  // y presiono enter, no hace la funciín del click
  case key of
    #13:
        begin
          If (btnAdd.Focused) then
          begin
            btnAdd.Click;
            key := #0;
          end;
        end;
    #27:
        begin
          Self.Close;
          Key := #0
        end;
  end;



end;

procedure TFrmPartidaDoc.FormShow(Sender: TObject);
begin
  clientmodule1.componentcolor(Self);
  clientmodule1.RastrearGrids(Self);
  dsDetalle.DataSet := mdDetalle;
  if mdDetalle.State = dsInsert then
    InicializarCampos
  else
    CargarCampos;
end;

end.
