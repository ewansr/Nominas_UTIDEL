unit UTFrmDatosTipoRecursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, AppEvnts, ExtCtrls, DB, DBClient, AdvShapeButton,
  JvExControls, JvLabel, StdCtrls, Mask, DBCtrls;

type
  TFrmDatosTipoRecursos = class(TFrmDatosCatalogo)
    DBEdit1: TDBEdit;
    JvLabel1: TJvLabel;
    DBEdit2: TDBEdit;
    JvLabel2: TJvLabel;
    DBEdit3: TDBEdit;
    JvLabel3: TJvLabel;
    procedure BtnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosTipoRecursos: TFrmDatosTipoRecursos;

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, UInteliDialog;

procedure TFrmDatosTipoRecursos.BtnRecClick(Sender: TObject);
var
  GBuscar: TClientDataSet;
begin
  Try
    // Verificar todos los campos estén correctamente llenados
    if DbEdit1.Text = '' then
    begin
      DBEdit1.SetFocus;
      raise InteligentException.CreateByCode(18, ['Código']);
    end;

    if DbEdit2.Text = '' then
    begin
      DBEdit2.SetFocus;
      raise InteligentException.CreateByCode(18, ['Título']);
    end;

    if DbEdit3.Text = '' then
    begin
      DBEdit3.SetFocus;
      raise InteligentException.CreateByCode(18, ['Descripción']);
    end;

    // Verificar que el registro no se duplique con algun otro dentro de la base de datos
    {Try
      GBuscar := TClientDataSet.Create(Nil);
      if Not CrearConjunto(GBuscar, 'nuc_tiporecurso', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Tipos de Recursos']);
      If Not CargarDatosFiltrados(GBuscar, 'Codigo', [DBEdit1.Text]) then
        raise InteligentException.CreateByCode(6, ['Tipo de Recursos', DbEdit1.Text, 'Codigo']);
      if CuantosRegistros(GBuscar) > 0 then
      begin
        DBEdit1.SetFocus;
        raise InteligentException.CreateByCode(17, ['Tipo de Recursos', DbEdit1.Text]);
      end;
    Finally
      EliminarConjunto(GBuscar);
      GBuscar.Free;
    End;}

    if dsDatos.DataSet.State = dsInsert then
      dsDatos.DataSet.FieldByName('Tipo').AsString := 'Libre';  // Por default todos los registros ingresados aquí son libres para el usuario

    Inherited;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

end.
