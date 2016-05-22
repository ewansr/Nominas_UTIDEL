unit UTFrmSelGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, JvExComCtrls, JvComCtrls, JvCheckTreeView, URegistro,
  UInteliDialog, ClientModuleUnit1, AdvGlowButton, JvExControls, JvLabel,
  ExtCtrls, DBClient, Provider;

type
  TFrmSelGrupos = class(TForm)
    dsGrupo: TDataSource;
    ctvGrupos: TJvCheckTreeView;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnAgregar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsDoctosxGrupo: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    Resultado: TModalResult;
    procedure LlenarTree;
  public
    IdDocumento: Integer;
  end;

var
  FrmSelGrupos: TFrmSelGrupos;

implementation

{$R *.dfm}

procedure TFrmSelGrupos.btnAceptarClick(Sender: TObject);
var
  i, IdGrupo: Integer;
begin
  Try
    Resultado := mrOk;

    Try
      for i := 0 to ctvGrupos.Items.Count -1 do
      begin
        IdGrupo := Integer(ctvGrupos.Items.Item[i].Data);

        if ctvGrupos.Checked[ctvGrupos.Items.Item[i]] then
        begin
          // Verificar si el nodo existe en la tabla (si no es asi crearlo)
          if not dsDoctosxGrupo.DataSet.Locate('IdDocumento_s;IdDocumento_t', VarArrayOf([IdGrupo, IdDocumento]), []) then
          begin
            //Debo encontrar


            // Crear nuevo registro en doctosxgrupo
            dsDoctosxGrupo.DataSet.Append;
            dsDoctosxGrupo.DataSet.FieldByName('IdDoctosxGrupo').AsInteger := 0;
            dsDoctosxGrupo.DataSet.FieldByName('IdDocumento_s').AsInteger := IdGrupo;
            dsDoctosxGrupo.DataSet.FieldByName('IdDocumento_t').AsInteger := IdDocumento;
            dsDoctosxGrupo.DataSet.Post;
            TClientDataSet(dsDoctosxGrupo.DataSet).ApplyUpdates(-1);
          end;
        end
        else
        begin
          // Verificar si el nodo existe en la tabla (si es asi eliminarlo)
          if dsDoctosxGrupo.DataSet.Locate('IdDocumento_s;IdDocumento_t', VarArrayOf([IdGrupo, IdDocumento]), []) then
          begin
            // Eliminar el registro de la tabla
            dsDoctosxGrupo.DataSet.Delete;
            TClientDataSet(dsDoctosxGrupo.DataSet).ApplyUpdates(-1);
          end;
        end;
      end;
    Except
      Resultado := mrAbort;
    End;
  Finally
    Close;
  End;
end;

procedure TFrmSelGrupos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  Action := caFree;
end;

procedure TFrmSelGrupos.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  Resultado := mrCancel;

  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;

      Try
        Self.Top := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top'));
      Except
        ;
      End;

      Try
        Self.Left := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left'));
      Except
        ;
      End;

      Try
        Self.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width'));
      Except
        ;
      End;

      Try
        Self.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height'));
      Except
        ;
      End;

      LlenarTree;   // Llenar el tree con las marcas posibles
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmSelGrupos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
  begin
    dsGrupo.DataSet.Refresh;
    LlenarTree;   // Volver a llenar el tree con los datos actuales
  end;
end;

procedure TFrmSelGrupos.LlenarTree;
var
  Padre: TTreeNode;
  Nodo: TTreeNode;
begin
  Try
    dsGrupo.DataSet.First;
    Padre := Nil;
    ctvGrupos.Items.Clear;
    while Not dsGrupo.DataSet.Eof do
    begin
      Nodo := ctvGrupos.Items.AddObject(Padre, dsGrupo.DataSet.FieldByName('NombreDocumento').AsString, TObject(dsGrupo.DataSet.FieldByName('IdDocumento').AsInteger));

      //Verificar si debe estar checkeado
      ctvGrupos.Checked[Nodo] := Not dsGrupo.DataSet.FieldByName('IdDocumento_s').IsNull;

      dsGrupo.DataSet.Next;
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

end.
