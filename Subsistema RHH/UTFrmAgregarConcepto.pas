unit UTFrmAgregarConcepto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, DB, DBClient, jpeg, ExtCtrls, JvExExtCtrls, JvImage,
  StdCtrls, JvExControls, JvLabel, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  AdvGlowButton, UInteliDialog, ClientModuleUnit1, Grids, NxDBColumns,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  NxEdit, DBGrids;

type
  TFrmAgregarConcepto = class(TForm)
    Btn_Ok: TAdvGlowButton;
    Btn_Cancel: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    JvLabel1: TJvLabel;
    DBGrid1: TDBGrid;
    cdConSal: TClientDataSet;
    dsConSal: TDataSource;
    AdvGlowButton3: TAdvGlowButton;
    cdelim: TClientDataSet;
    DBEdit1: TDBEdit;
    dselim: TDataSource;
    cdsaldetalle: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Btn_CancelClick(Sender: TObject);
    procedure cdConSalAfterScroll(DataSet: TDataSet);
  private
  Resultado: TModalResult;
  cargando : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgregarConcepto: TFrmAgregarConcepto;

implementation

{$R *.dfm}

procedure TFrmAgregarConcepto.AdvGlowButton1Click(Sender: TObject);
begin

  if InteliDialog.ShowModal('Desea Eliminar el Concepto: [' + cdelim.FieldByName('tituloCompSal').AsString + '] ?','' +#10 + #10, mtConfirmation, [mbYes, mbNo],0) = mrNo then
    abort
  else

  begin
    with cdelim do
    begin
      Close;
      if CargarDatosFiltrados(cdelim,'IdCompSal',[cdconsal.FieldByName('idcompsal').AsInteger]) then
      Open;
      if RecordCount = 1 then
      begin
        Delete;
        ApplyUpdates(-1);
      end;
    end;

    cdconsal.Refresh;
  end;

end;

procedure TFrmAgregarConcepto.AdvGlowButton2Click(Sender: TObject);
begin
Resultado := mrCancel;
Close;
end;

procedure TFrmAgregarConcepto.AdvGlowButton3Click(Sender: TObject);
begin
{
    cdelim.Append;
    registro.Text := '';
    Registro.SetFocus;
}

      if cdelim.Active=false then
      begin
        if not CrearConjunto(cdelim,'rhu_compsal',ccUpdate) then
           raise InteligentException.CreateBycode(5,['Concepto Del Salario']);
        if not CargarDatosFiltrados(cdelim,'IdCompSal',[-9]) then
           raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
        cdelim.Open;
      end
      else
      begin
        if not CargarDatosFiltrados(cdelim,'IdCompSal',[-9]) then
           raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
        cdelim.Refresh;
      end;

      cdelim.Append;
      DBEdit1.Text := '';
      DBEdit1.SetFocus;
      cdelim.FieldByName('IdCompSal').asinteger:=0;
  //  cdconsal.Refresh;
end;

procedure TFrmAgregarConcepto.Btn_CancelClick(Sender: TObject);
begin
  if cdelim.RecordCount =0 then
     raise inteligentexception.Create('No hay registros para editar');


  if not CargarDatosFiltrados(cdsaldetalle,'IdCompSal',[cdelim.fieldbyname('IdCompSal').asinteger]) then
     raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
  cdsaldetalle.Refresh;
  if cdsaldetalle.recordcount > 0 then
     messagedlg('la eliminacion podria afectar alos siguientes salarios:' + floatTostr(cdsaldetalle.FieldByName('importe').AsFloat), mtconfirmation, [mbOk], 0);


  cdelim.Edit;
  DBEdit1.SetFocus;
end;

procedure TFrmAgregarConcepto.Btn_OkClick(Sender: TObject);
var
OldCursor : TCursor;
begin
  try
      try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        if cdelim.State in [dsinsert, dsedit] then
        begin
        if DBEdit1.Text = '' then
        begin
          DBEdit1.SetFocus;
          raise InteligentException.CreateBycode(18,['Concepto']);
        end;
        cdelim.Post;
        cdelim.ApplyUpdates(-1);
        end;
        cdconsal.refresh;
        Resultado := mrOk;


      finally
        Screen.Cursor := OldCursor;
      end;
  except
      on e:InteligentException do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk],0 );
      end;
      on e:Exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado','Informar de lo siguiente al administrador del sistema:' + #10 +#10 + e.Message, mtError, [mbOk],0);
      end;
  end;
end;

procedure TFrmAgregarConcepto.cdConSalAfterScroll(DataSet: TDataSet);
begin
    if cargando=false then
    begin
      if cdelim.Active=false then
      begin
        if not CrearConjunto(cdelim,'rhu_compsal',ccUpdate) then
           raise InteligentException.CreateBycode(5,['Concepto Del Salario']);
        if not CargarDatosFiltrados(cdelim,'IdCompSal',[cdconsal.FieldByName('IdCompSal').asinteger]) then
           raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
        cdelim.Open;
      end
      else
      begin
        if not CargarDatosFiltrados(cdelim,'IdCompSal',[cdconsal.FieldByName('IdCompSal').asinteger]) then
           raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
        cdelim.Refresh;
      end;
    end;
end;

procedure TFrmAgregarConcepto.DBGrid1CellClick(Column: TColumn);
begin
  if cdelim.State in [dsbrowse] then
    DBEdit1.Text := cdconsal.fieldbyname('titulocompsal').asstring;

end;

procedure TFrmAgregarConcepto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 EliminarConjunto([cdConSal,cdelim]);
 ModalResult := Resultado;
end;

procedure TFrmAgregarConcepto.FormShow(Sender: TObject);
var
OldCursor : TCursor;
begin
  try
      try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        cargando:=true;
        if not CrearConjunto(cdConSal,'rhu_compsal',ccCatalog) then
        raise InteligentException.CreateBycode(5,['Concepto Del Salario']);
        cdConSal.Open;
        cargando:=false;

        if cargando=false then
        begin
          if cdelim.Active=false then
          begin
          if not CrearConjunto(cdelim,'rhu_compsal',ccUpdate) then
            raise InteligentException.CreateBycode(5,['Concepto Del Salario']);
          if not CargarDatosFiltrados(cdelim,'IdCompSal',[cdconsal.FieldByName('IdCompSal').asinteger]) then
            raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
          cdelim.Open;
          end
          else
          begin
          if not CargarDatosFiltrados(cdelim,'IdCompSal',[cdconsal.FieldByName('IdCompSal').asinteger]) then
            raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
          cdelim.Refresh;
          end;
        end;

        if cdsaldetalle.Active = false then
        begin
        if not CrearConjunto(cdsaldetalle,'rhu_compsaldetalle',ccCatalog) then
            raise InteligentException.CreateBycode(5,['Concepto Del Salario']);
        if not CargarDatosFiltrados(cdsaldetalle,'IdCompSal',[cdelim.fieldbyname('IdCompSal').asinteger]) then
            raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
        cdsaldetalle.Open;
        end
        else
        begin
          if not CargarDatosFiltrados(cdsaldetalle,'IdCompSal',[cdelim.fieldbyname('IdCompSal').asinteger]) then
            raise InteligentException.CreateBycode(6,['Concepto Del Salario']);
        cdsaldetalle.Refresh;
        end;

      finally
        Screen.Cursor := OldCursor;
      end;
  except
      on e:InteligentException do
      begin
        InteliDIalog.ShowModal(e.Title, e.Message, e.MsgType,[mbOk],0);
      end;

      on e:Exception do
      begin
        InteliDIalog.ShowModal('Ha ocurrido Un error Inesperado','Informe de lo siguiente al administrador del sistema:' +#10 +#10 + e.Message, mtError, [mbOk],0);
      end;
  end;
end;
end.
