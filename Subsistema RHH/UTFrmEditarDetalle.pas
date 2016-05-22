unit UTFrmEditarDetalle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvEdit, AdvEdBtn, ExtCtrls, DBGrids, UControlExcepciones,
  ClientModuleUnit1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, JvDBGrid, DB, DBClient, cxGridDBTableView;

type
  TFrmEditarDetalle = class(TForm)
    edtDepartamento: TAdvEditBtn;
    edtExperiencia: TAdvEdit;
    cbUnidad: TComboBox;
    pnlUnidad: TPanel;
    pnlExperiencia: TPanel;
    pnlDepartamento: TPanel;
    btn_Ok: TcxButton;
    btn_Cancelar: TcxButton;
    cdPlazaDetalleUpt: TClientDataSet;
    procedure cbUnidadChange(Sender: TObject);
    procedure edtExperienciaChange(Sender: TObject);
    procedure edtExperienciaEnter(Sender: TObject);
    procedure edtExperienciaExit(Sender: TObject);
    procedure pnlExperienciaClick(Sender: TObject);
    procedure cbUnidadEnter(Sender: TObject);
    procedure cbUnidadExit(Sender: TObject);
    procedure edtDepartamentoEnter(Sender: TObject);
    procedure edtDepartamentoExit(Sender: TObject);
    procedure edtDepartamentoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure edtDepartamentoClickBtn(Sender: TObject);
  private
    { Private declarations }
  public
    gridOriginal: TcxGridDBTableView;
  end;

var
  FrmEditarDetalle: TFrmEditarDetalle;

implementation

uses UTFrmSeleccionarDepartamento;

{$R *.dfm}

procedure TFrmEditarDetalle.btn_OkClick(Sender: TObject);
var
  i: Integer;
begin
  IniciarTransaccion;

  Try
    // Agregar los datos modificados a los registros
    cdPlazaDetalleUpt.First;
    while Not cdPlazaDetalleUpt.Eof do
    begin
      cdPlazaDetalleUpt.Edit;

      //cdPlazaDetalleUpt.FieldByName('IdDepartamento').AsInteger := edtDepartamento.Text;

      if edtExperiencia.Tag = 0 then
        cdPlazaDetalleUpt.FieldByName('ExperienciaMinima').AsString := edtExperiencia.Text;

      if cbUnidad.Tag = 0 then
        cdPlazaDetalleUpt.FieldByName('UnidadExperiencia').AsString := cbUnidad.Text;

      cdPlazaDetalleUpt.Post;
      cdPlazaDetalleUpt.ApplyUpdates(-1);

      cdPlazaDetalleUpt.Next;
    end;

    ConcretarTransaccion;
  Except
    on e:Exception do
    begin
      CancelarTransaccion;
      LevantarExcepcion(e);
    end;
  End;
end;

procedure TFrmEditarDetalle.cbUnidadChange(Sender: TObject);
begin
  pnlUnidad.Visible := cbUnidad.ItemIndex = -1;
  if cbUnidad.ItemIndex > -1 then
    cbUnidad.Tag := 0;
end;

procedure TFrmEditarDetalle.cbUnidadEnter(Sender: TObject);
begin
  pnlUnidad.Visible := False;
  cbUnidad.SetFocus;
end;

procedure TFrmEditarDetalle.cbUnidadExit(Sender: TObject);
begin
  pnlUnidad.Visible := cbUnidad.ItemIndex = -1;
end;

procedure TFrmEditarDetalle.edtDepartamentoChange(Sender: TObject);
begin
  if edtDepartamento.Text <> '' then
    edtDepartamento.Tag := 0;
end;

procedure TFrmEditarDetalle.edtDepartamentoClickBtn(Sender: TObject);
begin
  Application.CreateForm(TFrmSeleccionarDepartamento, FrmSeleccionarDepartamento);
  FrmSeleccionarDepartamento.ShowModal;
end;

procedure TFrmEditarDetalle.edtDepartamentoEnter(Sender: TObject);
begin
  pnlDepartamento.Visible := False;
  edtDepartamento.SetFocus;
end;

procedure TFrmEditarDetalle.edtDepartamentoExit(Sender: TObject);
begin
  pnlDepartamento.Visible := edtDepartamento.Tag = -1;
end;

procedure TFrmEditarDetalle.edtExperienciaChange(Sender: TObject);
begin
  edtExperiencia.Tag := 0;
end;

procedure TFrmEditarDetalle.edtExperienciaEnter(Sender: TObject);
begin
  pnlExperiencia.Visible := False;
  edtExperiencia.SetFocus;
end;

procedure TFrmEditarDetalle.edtExperienciaExit(Sender: TObject);
begin
  pnlExperiencia.Visible := edtExperiencia.Tag = -1;
end;

procedure TFrmEditarDetalle.FormShow(Sender: TObject);
const
  CualTag: Array[False..True] of Integer = (0, -1);

var
  Depto, Exper, Unidad: Boolean;
  i: Integer;
  OldDepto,
  OldExper: Integer;
  OldUnidad: String;
  Llaves: String;

begin
  Try
    if gridOriginal.DataController.GetSelectedCount <= 0 then
      raise InteligentException.CreatebyCode(1, ['Error Message']);

    if Not CrearConjunto(cdPlazaDetalleUpt, 'rhu_plazadetalle', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Partidas de documento de Plaza Vacante']);

    if ClientModule1.cdDepartamento.ProviderName = '' then
      if Not CrearConjunto(ClientModule1.cdDepartamento, 'nuc_departamento_seleccion', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

    if Not ClientModule1.cdDepartamento.Active then
      ClientModule1.cdDepartamento.Open;

    // Verificar que parametros son diferentes
    OldDepto  := gridOriginal.DataController.DataSet.FieldByName('IdDepartamento').AsInteger;
    OldExper  := gridOriginal.DataController.DataSource.DataSet.FieldByName('ExperienciaMinima').AsInteger;
    OldUnidad := gridOriginal.DataController.DataSource.DataSet.FieldByName('UnidadExperiencia').AsString;

    Depto  := False;
    Exper  := False;
    Unidad := False;

    Llaves := '';
    //NO  LE  ENTENDI :(

    {
    for i := 0 to gridOriginal.DataController.GetSelectedCount -1 do
    begin
      gridOriginal.DataController.DataSource.DataSet.GotoBookmark(Pointer(gridOriginal.DataController.SelectRows[i]));

      Llaves := Llaves + gridOriginal.DataController.DataSource.DataSet.FieldByName('IdPlazaDetalle').AsString + ',';

      if gridOriginal.DataController.DataSource.DataSet.FieldByName('IdDepartamento').AsInteger <> OldDepto then
        Depto := True;

      if gridOriginal.DataController.DataSet.FieldByName('ExperienciaMinima').AsInteger <> OldExper then
        Exper := True;

      if gridOriginal.DataController.DataSource.DataSet.FieldByName('UnidadExperiencia').AsString <> OldUnidad then
        Unidad := True;
    end;

    if Llaves <> '' then
      Llaves := Copy(Llaves, 1, Length(Llaves) -1);

    pnlDepartamento.Visible := (gridOriginal.DataController.SelectRows > 1) and (Depto);
    pnlExperiencia.Visible := (gridOriginal.DataController.SelectRows > 1) and (Exper);
    pnlUnidad.Visible := (gridOriginal.DataController.SelectRows > 1) and (Unidad);

    edtDepartamento.Tag := CualTag[(gridOriginal.DataController.SelectRows > 1) and Depto];
    edtExperiencia.Tag  := CualTag[(gridOriginal.DataController.SelectRows > 1) and Exper];
    cbUnidad.Tag        := CualTag[(gridOriginal.DataController.SelectRows > 1) and Unidad];

    // Si todos los departamentos son iguales se deberá mostrar este por default
    if edtDepartamento.Tag = 0 then
      edtDepartamento.Text := gridOriginal.DataController.DataSource.DataSet.FieldByName('TituloDepartamento').AsString;

    if edtExperiencia.Tag = 0 then
      edtExperiencia.Text := gridOriginal.DataController.DataSource.DataSet.FieldByName('ExperienciaMinima').AsString;

    if cbUnidad.Tag = 0 then
      cbUnidad.Text := gridOriginal.DataController.DataSource.DataSet.FieldByName('UnidadExperiencia').AsString;

    if Not CargarDatosFiltrados(cdPlazaDetalleUpt, 'IdPlazaDetalle', [Llaves]) then
      raise InteligentException.CreateByCode(10, ['Partidas de Solicitud de Plazas Vacantes']);

    // Seleccionar el primero registro seleccionado para obtener sus datos originales
    gridOriginal.DataController.DataSource.DataSet.GotoBookmark(Pointer(gridOriginal.DataController.SelectRows[0]));
    edtDepartamento.Text := gridOriginal.DataController.DataSource.DataSet.FieldByname('TituloDepartamento').AsString;
    edtExperiencia.Text := gridOriginal.DataController.DataSource.DataSet.FieldByname('ExperienciaMinima').AsString;
    cbUnidad.ItemIndex := cbUnidad.Items.IndexOf(gridOriginal.DataController.DataSource.DataSet.FieldByname('UnidadExperiencia').AsString);


   cdPlazaDetalleUpt.Open;
   }
  Except
    on e:Exception do
    begin
      LevantarExcepcion(e);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

  End;
end;

procedure TFrmEditarDetalle.pnlExperienciaClick(Sender: TObject);
begin
  pnlExperiencia.Visible := False;
  edtExperiencia.SetFocus;
end;

end.
