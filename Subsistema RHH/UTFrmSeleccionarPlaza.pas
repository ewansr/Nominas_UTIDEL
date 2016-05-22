unit UTFrmSeleccionarPlaza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ExtCtrls,
  cxContainer, cxEdit, cxTreeView, DB, UControlExcepciones, UInteliDialog,
  ClientModuleUnit1, URegistro, JvExComCtrls, JvListView, Menus, StdCtrls,
  cxButtons, cxListView, AdvListV;

type
  TNodo = class
    NodoPadre: TTreeNode;
  end;

  TFrmSeleccionarPlaza = class(TForm)
    tvEstructura: TcxTreeView;
    Panel1: TPanel;
    dsOrganizacion: TDataSource;
    lvPlazas: TJvListView;
    Splitter1: TSplitter;
    dsCatalogoPlazas: TDataSource;
    PopupMenu1: TPopupMenu;
    Iconos1: TMenuItem;
    Lista1: TMenuItem;
    Reporte1: TMenuItem;
    Iconospequeos1: TMenuItem;
    Encuadrado1: TMenuItem;
    rgTipoPlazas: TRadioGroup;
    Panel2: TPanel;
    Btn_Abrir: TcxButton;
    Btn_Cancelar: TcxButton;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure tvEstructuraChange(Sender: TObject; Node: TTreeNode);
    procedure EstiloVistaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgTipoPlazasClick(Sender: TObject);
    procedure Btn_AbrirClick(Sender: TObject);
    procedure lvPlazasDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    mResultado: TModalResult;
  public
    { Public declarations }
  end;

const
  cVistaEstilo = [vsIcon, vsSmallIcon, vsList, vsReport, vsTile];

var
  FrmSeleccionarPlaza: TFrmSeleccionarPlaza;

implementation

{$R *.dfm}

procedure CambiarDatos(pDataSet: TDataSet; Node: TTreeNode;
  pListView: TListView; pRadioGroup: TRadioGroup);
var
  Elemento: TListItem;
  Cursor: TCursor;
  ListaGrupos: TStringList;
  Grupo: TListGroup;
  IdGrupo: Integer;
begin
  pDataSet.Filtered := False;
  pDataSet.Filter := '(IdOrganizacion = ' + IntToStr(Integer(Node.Data)) + ' or IdOrganizacionPadre = ' + IntToStr(Integer(Node.Data)) + ')';

  case pRadioGroup.ItemIndex of
    0: pDataSet.Filter := pDataSet.Filter + ' and (Cuenta - Contratados > 0 or Cuenta = 0)';
    1: pDataSet.Filter := pDataSet.Filter + ' and (Cuenta - Contratados = 0 and Cuenta > 0)';
  end;

  pDataSet.Filtered := True;

  pListView.Items.BeginUpdate;
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;
    pListView.Items.Clear;

    ListaGrupos := TStringList.Create;
    ListaGrupos.Clear;
    pDataSet.First;
    while not pDataSet.Eof do
    begin
      with pListView.Items.Add do
      begin
        IdGrupo := ListaGrupos.IndexOf(pDataSet.FieldByName('IdDepartamento').AsString);
        if IdGrupo < 0 then
        begin
          Grupo := pListView.Groups.Add;
          Grupo.Header := pDataSet.FieldByName('TituloDepartamento').AsString;

          IdGrupo := ListaGrupos.Add(pDataSet.FieldByName('IdDepartamento').AsString);
        end;

        Caption := pDataSet.FieldByName('CodigoPlaza').AsString;
        GroupID := IdGrupo;
        ImageIndex := 7;

        SubItems.Add(pDataSet.FieldByName('FechaDocumento').AsString);
        SubItems.Add(pDataSet.FieldByName('Fecha').AsString);
        SubItems.Add(pDataSet.FieldByName('TituloCargo').AsString);
        SubItems.Add(pDataSet.FieldByName('Observaciones').AsString);
      end;

      pDataSet.Next;
    end;
  Finally
    Screen.Cursor := Cursor;
    pListView.Items.EndUpdate;
  End;

  FrmSeleccionarPlaza.Btn_Abrir.Enabled := pListView.Items.Count > 0;
end;

procedure TFrmSeleccionarPlaza.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  Try
    for i := 0 to lvPlazas.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name, 'Col' + IntToStr(i), IntToStr(lvPlazas.Columns.Items[i].Width));

    case lvPlazas.ViewStyle of
      vsIcon: i := 0;
      vsSmallIcon: i := 1;
      vsList: i := 2;
      vsReport: i := 3;
      vsTile: i := 4;
    end;

    SetRegistry('\Ventanas', '\' + Self.Name, 'ViewStyle', IntToStr(i));

    LiberarVentana(Self, Action);
  Finally
    ModalResult := mResultado;
  End;
end;

procedure TFrmSeleccionarPlaza.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  mResultado := mrCancel;

  AccedeACoordenadas(Self);

  case lvPlazas.ViewStyle of
    vsIcon: i := 0;
    vsSmallIcon: i := 1;
    vsList: i := 2;
    vsReport: i := 3;
    vsTile: i := 4;
  end;

  Try
    i := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'ViewStyle'));
  Except
    i := 0;
  End;

  case i of
    1: lvPlazas.ViewStyle := vsSmallIcon;
    2: lvPlazas.ViewStyle := vsList;
    3: lvPlazas.ViewStyle := vsReport;
    4: lvPlazas.ViewStyle := vsTile
  else
    lvPlazas.ViewStyle := vsIcon;
  end;

  // Obtener el tamaño de las columnas
  for i := 0 to lvPlazas.Columns.Count -1 do
  Try
    lvPlazas.Columns.Items[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Col' + IntToStr(i)));
  Except
    ;
  End;
end;

procedure TFrmSeleccionarPlaza.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  ListaNodos: TStringList;
  Nodo: TNodo;
  Padre: TTreeNode;
  locNodo: TTreeNode;
  miPadre, i: Integer;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      ListaNodos := TStringList.Create;

      // Crear el primer nodo para mostrar todas
      tvEstructura.Items.AddChildObject(nil, Globales.Elemento('TituloOrganizacion').AsString, TObject(Globales.Elemento('IdOrganizacion').AsInteger));

      dsOrganizacion.DataSet.First;
      while not dsOrganizacion.DataSet.Eof do
      begin
        Nodo := TNodo.Create;

        miPadre := dsOrganizacion.DataSet.FieldByName('Padre').AsInteger;
        Padre := tvEstructura.Items[0];
        if miPadre > 0 then
        begin
          if ListaNodos.IndexOf(IntToStr(miPadre)) >= 0 then
            Padre := TNodo(ListaNodos.Objects[ListaNodos.IndexOf(IntToStr(miPadre))]).NodoPadre;
        end;

        Nodo.NodoPadre := tvEstructura.Items.AddChildObject(Padre, dsOrganizacion.DataSet.FieldByName('TituloOrganizacion').AsString, TObject(dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsInteger));
        if Nodo.NodoPadre <> nil then
          Nodo.NodoPadre.Expand(True);

        ListaNodos.AddObject(dsOrganizacion.DataSet.FieldByName('IdOrganizacion').AsString, Nodo);

        dsOrganizacion.DataSet.Next;
      end;

      // Abrir el primer nodo por default
      tvEstructura.Items[0].Expand(True);

      // Obtener el tamaño de las columnas
      for i := 0 to lvPlazas.Columns.Count -1 do
      Try
        lvPlazas.Columns.Items[i].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Col' + IntToStr(i)));
      Except
        ;
      End;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:Exception do
      LevantarExcepcion(e);
  End;
end;

procedure TFrmSeleccionarPlaza.lvPlazasDblClick(Sender: TObject);
begin
  if Assigned(lvPlazas.Selected) then
    Btn_Abrir.Click;
end;

procedure TFrmSeleccionarPlaza.rgTipoPlazasClick(Sender: TObject);
begin
  CambiarDatos(dsCatalogoPlazas.DataSet, tvEstructura.Selected, lvPlazas, rgTipoPlazas);
end;

procedure TFrmSeleccionarPlaza.Btn_AbrirClick(Sender: TObject);
var
  Codigo: string;
begin
  if Assigned(lvPlazas.Selected) then
  begin
    Codigo := lvPlazas.Selected.Caption;
    if dsCatalogoPlazas.DataSet.Locate('CodigoPlaza', Codigo, []) then
    begin
      mResultado := mrOk;
      Close;
    end
    else
      LevantarExcepcion(InteligentException.CreateByCode(1, ['No se ha podido abrir la solicitud de Plazas Vacantes con código: ' + Codigo + #10 + #10 + 'Informe de esto al administrador del sistema']));
  end;
end;

procedure TFrmSeleccionarPlaza.Button1Click(Sender: TObject);
begin
  lvPlazas.GroupView := True;
end;

procedure TFrmSeleccionarPlaza.EstiloVistaClick(Sender: TObject);
begin
  case TWinControl(Sender).Tag of
    0: lvPlazas.ViewStyle := vsIcon;
    1: lvPlazas.ViewStyle := vsList;
    2: lvPlazas.ViewStyle := vsReport;
    3: lvPlazas.ViewStyle := vsSmallIcon;
    4: lvPlazas.ViewStyle := vsTile;
  end;
end;

procedure TFrmSeleccionarPlaza.tvEstructuraChange(Sender: TObject;
  Node: TTreeNode);
begin
{procedure CambiarDatos(pDataSet: TDataSet; Node: TTreeNode;
  var pListView: TListView; pRadioGroup: TRadioGroup);
}
  CambiarDatos(dsCatalogoPlazas.DataSet, Node, lvPlazas, rgTipoPlazas);
end;

end.
