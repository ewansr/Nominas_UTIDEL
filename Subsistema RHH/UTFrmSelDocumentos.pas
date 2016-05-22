unit UTFrmSelDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, JvExComCtrls, JvComCtrls, JvCheckTreeView, URegistro,
  UInteliDialog, ClientModuleUnit1, AdvGlowButton, JvExControls, JvLabel,
  ExtCtrls, DBClient, Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxInplaceContainer, cxDBTL, cxTLData, dxSkinscxPCPainter, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxLabel,
  cxDropDownEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TFrmSelDocumentos = class(TForm)
    dsGrupo: TDataSource;
    ctvDocumentos: TJvCheckTreeView;
    Panel1: TPanel;
    JvLabel1: TJvLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnAgregar: TAdvGlowButton;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    dsDoctosxGrupo: TDataSource;
    cdAllDocuments: TClientDataSet;
    dsAllDocuments: TDataSource;
    CxDbGridDocumentos: TcxGridDBTableView;
    cxLevel1: TcxGridLevel;
    CxGridDocumentos: TcxGrid;
    CxColumnCheck: TcxGridDBColumn;
    CxColumnNombreDoc: TcxGridDBColumn;
    CxColumnOpcional: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Resultado: TModalResult;
    procedure LlenarTree;
  public
    IdDocumento: Integer;
  end;

var
  FrmSelDocumentos: TFrmSelDocumentos;

implementation

{$R *.dfm}

procedure TFrmSelDocumentos.btnAceptarClick(Sender: TObject);
var
  i, IdGrupo: Integer;
begin
  Try
    Resultado := mrOk;

    Try
      for i := 0 to ctvDocumentos.Items.Count -1 do
      begin
        IdGrupo := Integer(ctvDocumentos.Items.Item[i].Data);

        if ctvDocumentos.Checked[ctvDocumentos.Items.Item[i]] then
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

procedure TFrmSelDocumentos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSelDocumentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Resultado;

  SetRegistry('\Ventanas', '\' + Self.Name, 'Top', IntToStr(Self.Top));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Left', IntToStr(Self.Left));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Width', IntToStr(Self.Width));
  SetRegistry('\Ventanas', '\' + Self.Name, 'Height', IntToStr(Self.Height));

  Action := caFree;
end;

procedure TFrmSelDocumentos.FormCreate(Sender: TObject);
begin
  if not crearConjunto(cdAllDocuments,'rhu_documento', ccCatalog) then
    raise InteligentException.CreateByCode(5,['Tabla Documentos {rhu_documento/Catalog}']);
end;

procedure TFrmSelDocumentos.FormShow(Sender: TObject);
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

      if not CargarDatosFiltrados(cdAllDocuments, 'Todos', ['No']) then
        raise InteligentException.CreatebyCode(6, ['rhu_documento', 'No', 'Todos']);

      if cdAllDocuments.active then
        cdAllDocuments.Refresh
      else
        cdAllDocuments.Open;

      //LlenarTree;   // Llenar el tree con las marcas posibles
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

procedure TFrmSelDocumentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 116 then
  begin
    dsGrupo.DataSet.Refresh;
    LlenarTree;   // Volver a llenar el tree con los datos actuales
  end;
end;

procedure TFrmSelDocumentos.LlenarTree;
var
  Padre: TTreeNode;
  Nodo: TTreeNode;
begin
  Try
    dsGrupo.DataSet.First;
    Padre := Nil;
    ctvDocumentos.Items.Clear;
    while Not dsGrupo.DataSet.Eof do
    begin
      Nodo := ctvDocumentos.Items.AddObject(Padre, dsGrupo.DataSet.FieldByName('NombreDocumento').AsString, TObject(dsGrupo.DataSet.FieldByName('IdDocumento').AsInteger));

      // Verificar si debe estar checkeado
      ctvDocumentos.Checked[Nodo] := Not dsGrupo.DataSet.FieldByName('IdDocumento_s').IsNull;

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
