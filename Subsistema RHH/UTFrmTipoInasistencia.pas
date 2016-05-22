unit UTFrmTipoInasistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, DB, DBClient,
  ClientModuleUnit1, UInteliDialog, StdCtrls, DBCtrls, AdvGlowButton, MoneyEdit,
  JvExControls, JvLabel, AdvDateTimePicker, AdvDBDateTimePicker, AdvCombo,
  AdvDBComboBox, AdvMoneyEdit, DBAdvMoneyEdit, AdvEdit, DBAdvEd,
  AdvOfficeButtons, DBAdvOfficeButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxButtons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsForm, rhh_genericclasses, frxClass,
  frxDBSet;

type
  TFrmTipoInasistencia = class(TForm)
    ToolBar1: TToolBar;
    Btn_Agregar: TToolButton;
    Btn_Editar: TToolButton;
    Btn_Quitar: TToolButton;
    ToolButton4: TToolButton;
    Btn_Refresh: TToolButton;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    cdDatos: TClientDataSet;
    dsDatos: TDataSource;
    Panel3: TPanel;
    Splitter1: TSplitter;
    pnl_BotonesLinea: TPanel;
    btnAgregarLinea: TcxButton;
    btnAceptarLinea: TcxButton;
    btnBtn_CerrarLinea: TcxButton;
    pnl_DatosLinea: TPanel;
    edtTitulo: TDBAdvEdit;
    edtDescripcion: TDBAdvEdit;
    chkAguinaldo: TDBAdvOfficeCheckBox;
    chkVacaciones: TDBAdvOfficeCheckBox;
    intfldDatosIdTipoInasistencia: TIntegerField;
    chkAguinaldoR: TDBAdvOfficeCheckBox;
    chkVacacionesR: TDBAdvOfficeCheckBox;
    edtTituloR: TDBAdvEdit;
    edtDescripcionR: TDBAdvEdit;
    strfldDatosTitulo: TWideStringField;
    strfldDatosDescripcion: TWideStringField;
    strfldDatosDisminuyeAguinaldo: TWideStringField;
    strfldDatosDisminuyeVacaciones: TWideStringField;
    DxBManagerMain: TdxBarManager;
    DxBarMain: TdxBar;
    DxBLbuttonAgregar: TdxBarLargeButton;
    DxBLbuttonEditar: TdxBarLargeButton;
    DxBLbuttonEliminar: TdxBarLargeButton;
    DxBLbuttonActualizar: TdxBarLargeButton;
    DxBLbuttonSalir: TdxBarLargeButton;
    DxBarBtnNuevaTabla: TdxBarLargeButton;
    DxSkinCtrl1: TdxSkinController;
    btnImprmir: TdxBarLargeButton;
    frxReporteInasistencias: TfrxReport;
    frxInasistencias: TfrxDBDataset;
    frxOrganizacion: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AgregarClick(Sender: TObject);
    procedure btnAgregarLineaClick(Sender: TObject);
    procedure btnBtn_CerrarLineaClick(Sender: TObject);
    procedure Btn_EditarClick(Sender: TObject);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure Btn_QuitarClick(Sender: TObject);
    procedure DxBLbuttonSalirClick(Sender: TObject);
    procedure btnImprmirClick(Sender: TObject);
  private
    { Private declarations }
    FrmCaptura: TForm;
    Modificado: Boolean;
    Buscar: TClientDataSet;
    procedure LeerDatos;
    procedure CrearVentana;
    function ValidaLinea: Boolean;
  public
    { Public declarations }
  end;

var
  FrmTipoInasistencia: TFrmTipoInasistencia;

implementation

{$R *.dfm}

procedure TFrmTipoInasistencia.btnAgregarLineaClick(Sender: TObject);
begin
  try
    ValidaLinea;

    cdDatos.Post;
    cdDatos.ApplyUpdates(-1);

    Modificado := True;
    // Antes de salir o reiniciar, se coloca el foco en el primer control para que
    // de el efecto deseado principalmente en el momento de cerrar y abrir la
    // ventana de captura.
    edtTitulo.SetFocus;

    if Sender = btnAgregarLinea then
    begin
      beep; // Avisar de alguna manera al usuario que se hizo algo
      cdDatos.Append;

      cdDatos.FieldByName('IdTipoInasistencia').AsInteger := 0;
      // Validar por que los campos no vienen con los datos inciales por default
      // indicados en la BD
      cdDatos.FieldByName('DisminuyeAguinaldo').AsString := 'No';
      cdDatos.FieldByName('DisminuyeVacaciones').AsString := 'No';
    end
    else
    Begin
      FrmCaptura.Close;
      cdDatos.Refresh;
    End;

  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
    begin
      InteliDialog.ShowModal(e.ClassName + 'Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Exit;
    end;
  End;
end;

procedure TFrmTipoInasistencia.btnBtn_CerrarLineaClick(Sender: TObject);
begin
  if cdDatos.State in [dsEdit, dsInsert] then
    cdDatos.Cancel;
  Modificado := False;
  edtTitulo.SetFocus;
end;

procedure TFrmTipoInasistencia.btnImprmirClick(Sender: TObject);
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      Reporte := 'Inasistencias.fr3';
      CompReporte := FrxReporteInasistencias;
      CompDataSetReporte := FrxInasistencias;

      LocalImprimeReporte(cdDatos, DBGrid1, 'Tabla de Tipos de inasistencias');
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
    end;
  end;


end;

procedure TFrmTipoInasistencia.Btn_AgregarClick(Sender: TObject);
Var
  PrevFocus: TWinControl;
begin
  // Agregar el renglón
  if Not Assigned(FrmCaptura) then
    CrearVentana;

  btnAgregarLinea.Visible := True;
  cdDatos.Append;

  cdDatos.FieldByName('IdTipoInasistencia').AsInteger := 0;
  // Validar por que los campos no vienen con los datos inciales por default
  // indicados en la BD
  cdDatos.FieldByName('DisminuyeAguinaldo').AsString := 'No';
  cdDatos.FieldByName('DisminuyeVacaciones').AsString := 'No';

  PrevFocus := Self.ActiveControl;
  FrmCaptura.ShowModal;

  if Modificado then
    cdDatos.Refresh;
  PrevFocus.SetFocus;
end;

procedure TFrmTipoInasistencia.Btn_EditarClick(Sender: TObject);
Var
  PrevFocus: TWinControl;
begin
  if Not Assigned(FrmCaptura) then
    CrearVentana;

  btnAgregarLinea.Visible := False;
  cdDatos.Edit;

  PrevFocus := Self.ActiveControl;
  FrmCaptura.ShowModal;

  if Modificado then
    cdDatos.Refresh;
  PrevFocus.SetFocus;
end;

procedure TFrmTipoInasistencia.Btn_QuitarClick(Sender: TObject);
var
  Mensaje: string;
begin
  //Checar que sea un registo valido
  if cdDatos.Eof or cdDatos.BoF then
  begin
    InteliDialog.ShowModal('Error', 'Seleccione un registro válido e intente de nuevo', mtError, [mbOk], 0);
    Exit;
  end;


  // Hacer las validaciones requeridas para determinar si es un registro
  // candidato a ser eliminado
  if false then
  begin
    InteliDialog.ShowModal('No se puede eliminar', 'Este registro no puede ser eliminado debido a...', mtError, [mbOk], 0);
    Exit;
  end;

  Mensaje := Format('¿Está seguro de eliminar el registro [%s]?',[cdDatos.FieldByName('Titulo').AsString]);
  if InteliDialog.ShowModal('Confirmación', Mensaje, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      cdDatos.Delete;
      cdDatos.ApplyUpdates(-1);
      InteliDialog.ShowModal('Información', 'El registro se ha eliminado correctamente.', mtInformation, [mbOk], 0)
    Except
      on e:Exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

      on e:InteligentException do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    End;
  end;

end;

procedure TFrmTipoInasistencia.Btn_RefreshClick(Sender: TObject);
var
  OldCursor: TCursor;
begin
  if CdDatos.State = DsBrowse then
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      CdDatos.Refresh;
    Finally
      Screen.Cursor := OldCursor;
    End;
end;

procedure TFrmTipoInasistencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EliminarConjunto(cdDatos);

  LiberarVentana(Self, Action);
end;

procedure TFrmTipoInasistencia.FormCreate(Sender: TObject);
var
  Cursor: TCursor;
begin
  AccedeACoordenadas(Self);
  ClientModule1.ComponentColor(Self);
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdDatos, 'nom_tipoinasistencia', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Tabla de Tipos de inasistencias']);

      cdDatos.Open;

    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;



procedure TFrmTipoInasistencia.LeerDatos;
begin
//
end;

function TFrmTipoInasistencia.ValidaLinea: Boolean;
begin
    if Not (cdDatos.State in [dsEdit, dsInsert]) then
      raise InteligentException.CreateByCode(1, ['El dataset no se encuentra en Modo de edición o edición']);

    if Trim(edtTitulo.Text) = '' then
    begin
      edtTitulo.SetFocus;
      raise InteligentException.CreateByCode(18, ['Título']);
    end;

    if Trim(edtDescripcion.Text) = '' then
    begin
      edtDescripcion.SetFocus;
      raise InteligentException.CreateByCode(18, ['Descripción']);
    end;
end;

procedure TFrmTipoInasistencia.CrearVentana;
begin
  FrmCaptura := TForm.Create(Self);
  FrmCaptura.Width := Pnl_DatosLinea.Width + 10;
  FrmCaptura.Height := Pnl_DatosLinea.Height + Pnl_BotonesLinea.Height + 40;

  Pnl_DatosLinea.Parent := FrmCaptura;
  Pnl_BotonesLinea.Parent := FrmCaptura;

  Pnl_DatosLinea.Visible := True;
  Pnl_BotonesLinea.Visible := True;

  Pnl_DatosLinea.Align := alClient;
  Pnl_BotonesLinea.Align := alBottom;
  FrmCaptura.BorderStyle := bsSingle;
  FrmCaptura.Position := poMainFormCenter;
  Pnl_DatosLinea.TabOrder := 0;
end;




procedure TFrmTipoInasistencia.DxBLbuttonSalirClick(Sender: TObject);
begin
  Close;
end;

end.
