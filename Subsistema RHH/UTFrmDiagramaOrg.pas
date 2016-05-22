unit UTFrmDiagramaOrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSmoothLabel, AdvSmoothPanel, AdvToolBar, AdvToolBarStylers,
  StdCtrls, JvExControls, JvLabel, DBClient, DB, JvMemoryDataset, JvJCLUtils,
  ExtCtrls, Menus, AdvMenus, AdvGlassButton, Collections.Stacks, GDIPFill,
  AdvSmoothStepControl, AdvPanel, AdvOfficeButtons, AdvScrollBox, Grids,
  Outline, frxClass, frxDBSet, rhh_genericclasses, UTFrmPlazaRhu;

type
  TAnchoLinea = (alDelgada, alMedia, alAncha);
  TTipoLinea = (tlNone, tlDiagonal, tlGreca);
  TEstadoModificado = (emNone, emInsert, emEdit, emDelete);
  TPanel = class(ExtCtrls.TPanel);

  TScroll = class
    HorzPosition: Integer;
    VertPosition: Integer;
  end;

  TConjunto = class
    Padre: TStringList;
    Hijos: TStringList;
    NumItem: Integer;
  end;

  TDatos = record
    Id: String;
    IdDepartamento: integer;
    Nivel: integer;
  end;

  // Creamo la clase con sus propiedades
  TMyPanel = class;    // Declarar solo la cabecera para poder hacer la relación ciclica

  TLineaPadre = class
    Linea1,
    Linea2,
    Linea3: TPanel;
    Constructor Create(AOwner: TWinControl);
    Destructor Destroy;
  end;

  TCuadro = class
    LineaPadre: TLineaPadre;
    sPanel: TMyPanel;
    LabelDepto: TAdvSmoothLabel;
    NumSoy: Integer;
    Hijos: TStringList;
    Hermanos: TStringList;
    Nivel: Integer;
    Id: Integer;
    IdPadre: Integer;
    IdArbol : Integer;
    Codigo: string;
    Titulo: String;
    Descripcion: string;
    Comentarios: string;
    Padre: TCuadro;
    Modificado: TEstadoModificado;
  protected
    FLeft: Integer;
    FTop: Integer;
    FWidth: Integer;
    FHeight: Integer;
  public
    constructor create(Sender: TForm; pParent: TWinControl);
    destructor Destroy;
  published
    property Left: Integer read FLeft write FLeft;
    property Top: Integer read FTop write FTop;
    property Width: Integer read FWidth write FWidth;
    property Height: Integer read FHeight write FHeight;
  end;

  TMyPanel = class(TAdvSmoothPanel)
  Public
    Cuadro: TCuadro;
    Padre: TMyPanel;
  end;

  TLineas = class
  public
    Padre: TMyPanel;
    Hijo: TMyPanel;
    constructor Create(Padre, Hijo: TMyPanel);
  end;

  TAnterior = class
    Nodo: Integer;
    NivelIni: Integer;
    Niveles: Integer;
    Zoom: integer;
    Scroll: TPoint;
    constructor Create(ANodoActual, ANivelIni, ANiveles, AZoom: Integer; AScroll: TPoint);
  end;

  TMousePanel = Class
    OnClick: Boolean;
    X,Y: Integer;
  End;

  TFrmDiagramaOrg = class(TForm)
    AdvToolBarFantasyStyler1: TAdvToolBarFantasyStyler;
    ScrollBox1: TScrollBox;
    PanelDiag: TPanel;
    Timer1: TTimer;
    pmnuPanel: TAdvPopupMenu;
    Agregardepartamento1: TMenuItem;
    Eliminar1: TMenuItem;
    Modificar1: TMenuItem;
    cdPlazas: TClientDataSet;
    ListaCargos: TAdvSmoothPanel;
    TimerLeave: TTimer;
    TimerShow: TTimer;
    Panel1: TPanel;
    pnl5: TPanel;
    stpHistorial: TAdvSmoothStepControl;
    chkVerPersonal: TAdvOfficeCheckBox;
    scrlbxLista: TAdvScrollBox;
    TimerNodo: TTimer;
    N1: TMenuItem;
    Imprimirdetalle1: TMenuItem;
    frxdsPlazas: TfrxDBDataset;
    dsPlazas: TDataSource;
    mdPlazas: TJvMemoryData;
    pmnuLabelEmpl: TAdvPopupMenu;
    Datospersonales1: TMenuItem;
    Historial1: TMenuItem;
    Datosdelanomina1: TMenuItem;
    pmnuLabelVacante: TAdvPopupMenu;
    Asignarpostulante1: TMenuItem;
    Asignarempleado1: TMenuItem;
    N2: TMenuItem;
    CambiaraNodisponible1: TMenuItem;
    pmnuLabelVacanteND: TAdvPopupMenu;
    MenuItem4: TMenuItem;
    Verdocumentacinparacontratacin1: TMenuItem;
    CancelarVacante1: TMenuItem;
    CancelarVacante2: TMenuItem;
    frxdsReporte: TfrxDBDataset;
    frxrpReporte: TfrxReport;
    cmbNiveles: TComboBox;
    dsPersonal: TDataSource;
    TimerPaint: TTimer;
    frxrpDatosdelPersonal: TfrxReport;
    frxDBDatos: TfrxDBDataset;
    frxDBDocumentospostulante: TfrxDBDataset;
    cddocumentosxpostulantes: TClientDataSet;
    cdPersonal: TClientDataSet;
    AsignarAspirantesalDepartamento1: TMenuItem;
    procedure PanelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure CambiarZoom(ItemIndex: Integer);
    procedure CambiarNivel(ItemIndex: Integer);
    procedure sPanelDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure Agregardepartamento1Click(Sender: TObject);
    procedure ProcedeGuardar;
    procedure BorrarNodo(Nodo: TCuadro);
    procedure Eliminar1Click(Sender: TObject);

    // Agregado de Rangel 31/08/2012
    procedure NodoMouseEnter(Sender: TObject);
    procedure NodoMouseLeave(Sender: TObject);
    procedure TimerLeaveTimer(Sender: TObject);
    procedure ListaCargosMouseEnter(Sender: TObject);
    procedure ListaCargosMouseLeave(Sender: TObject);
    //procedure cmbHistorialChange(Sender: TObject);
    procedure TimerShowTimer(Sender: TObject);
    procedure NodoEnter(Sender: TObject);
    procedure NodoMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure stpHistorialStepClick(Sender: TObject; StepIndex: Integer;
      StepMode: TStepMode);
    procedure chkVerPersonalClick(Sender: TObject);
    procedure Imprimirdetalle1Click(Sender: TObject);
    procedure Datospersonales1Click(Sender: TObject);
    procedure Asignarpostulante1Click(Sender: TObject);
    procedure Asignarempleado1Click(Sender: TObject);
    procedure Historial1Click(Sender: TObject);
    procedure Datosdelanomina1Click(Sender: TObject);
    procedure PanelDiagClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure Verdocumentacinparacontratacin1Click(Sender: TObject);
    procedure CambiaraNodisponible1Click(Sender: TObject);
    procedure CancelarVacante2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PanelDiagMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PanelDiagMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PanelDiagMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditarPlazas;
    procedure AsignarAspirantesalDepartamento1Click(Sender: TObject);
  private
    { Private declarations }
    FNodo: Integer;       // id del nodo principal
    FNivelIni: Integer;   // Nivel inicial a ver (ya sin uso)
    FNivelTop: Integer;   // Nivel del nodo principal
    FNiveles: Integer;    // Niveles a visualizar
    FNodoColor: TColor;
    FNodoColorTo: TColor;
    FOrganizacion: Integer;
    Arbol: TStringList;
    EspacioMaximo: Integer;
    MaximoHijos: Integer;
    Historial: TStack<TAnterior>;
    RigthMost, BottomMost: Integer;
    Scroll: TScroll;
    NodosBorrar: TList;
    Reasignado: Boolean;
    PanelActual: TMyPanel;
    LastShow: THandle;
    CursorAntesClick: TCursor;
    MouseP: TMousePanel;
    procedure MostrarDiagrama(IdOrganizacion: integer; NodoInicial: Integer);
    procedure DibujarFlow(Lista: TStringList; Recalcular: Boolean; Niveles: integer = 0);
    procedure LlenarPanelCargos;
    procedure LabelMouseEnter(Sender: TObject);
    procedure LabelMouseLeave(Sender: TObject);
    procedure LabelClick(Sender: TObject);
    procedure DocumentosContratacion(LabelExt: TJvLabelExt);
    procedure DocumentoPersonal(LabelExt: TJvLabelExt);
    procedure EstablecerColores(Sender: TObject);
  public
    ZoomIndex: Integer;
    NivelIndex: Integer;
    constructor Create(Sender: TObject; LlaveBuscar, NivelInicial: Integer); overload;
  end;

Const
  CuadroHeight = 80;     // alto de cuadro
  EspacioHeight = 150;   // espaciado entre niveles
  CuadroWidth = 300;     // ancho de cuadro
  EspacioWidth = 10;     // espacio entre paneles
  SizeFontTitle = 12;    // Tamaño de la fuente del título
  SizeFontLabel = 10;    // Tamaño de la fuente de la etiqueta
  AnchoLineaSel = 8;    // Ancho de la linea del nodo seleccionado
  NodoColor: TColor = 16711680;
  NodoColorTo: TColor = 16737843;
  NodoCaptionColor: TColor = clWhite;
  ValZoom: Array[0..6] of Real = (0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75);

var
  FrmDiagramaOrg: TFrmDiagramaOrg;
  Lineas: TList;
  CuadroZoom: Real;
  MyCanvas: TCanvas;

implementation

uses
  unit2, clientmoduleunit1, UInteliDialog, UTFrmDatosDepartamentoDiag,
  StrUtils, UTFrmCuantos, UTFrmCancelarPlazas, UTFrmAsignarPostulantes,
  UTFrmAnalizaPerfiles, UTFrmFichaDepartamento, UtFrmAsignacionDePostulantes;

{$R *.dfm}

Constructor TLineaPadre.Create(AOwner: TWinControl);
begin
  Linea1 := TPanel.Create(AOwner);
  Linea1.Parent := AOwner;
  Linea1.BevelOuter := bvNone;
  Linea1.Color := clGrayText;

  Linea2:= TPanel.Create(AOwner);
  Linea2.Parent := AOwner;
  Linea2.BevelOuter := bvNone;
  Linea2.Color := clGrayText;

  Linea3 := TPanel.Create(AOwner);
  Linea3.Parent := AOwner;
  Linea3.BevelOuter := bvNone;
  Linea3.Color := clGrayText;
end;

Destructor TLineaPadre.Destroy;
begin
  FreeAndNil(Linea1);
  FreeAndNil(Linea2);
  FreeAndNil(Linea3);
end;

function ZoomIndexOf(Zoom: Real; Arreglo: Array of Real): Integer;
var
  Cta: Integer;
  Found: Boolean;
begin
  Cta := Low(Arreglo);
  while (Cta <= High(Arreglo)) and (Not Found) do
  begin
    Found := Zoom = Arreglo[Cta];
    if Not Found then Inc(Cta);
  end;
  if Found then
    Result := Cta
  else
    Result := -1;
end;

constructor TCuadro.Create(Sender: TForm; pParent: TWinControl);
begin
  LineaPadre := TLineaPadre.Create(pParent);

  // Creamos el componente panel y establecemos sus propiedades
  sPanel := TMyPanel.Create(FrmDiagramaOrg);
  with sPanel do
  begin
    Caption.Font.Size := SizeFontTitle;
    Caption.Location  := plTopCenter;
    Fill.Color := NodoColor;
    Fill.ColorTo := NodoColorTo;
    Fill.ColorMirror := NodoColorTo;
    Fill.ColorMirrorTo := NodoColorTo;
    Fill.BorderColor := clBlack;
    Caption.ColorEnd := NodoCaptionColor;
    Caption.ColorStart := NodoCaptionColor;
    Caption.Font.Name := 'Times New Roman';
    Caption.Font.Style := [fsBold];
    Left   := 0;
    Top    := 0;
    Height := CuadroHeight;
    Width  := CuadroWidth;
    parent := pParent;
    Modificado := emNone;
    TabStop := True;
    OnEnter := TFrmDiagramaOrg(Sender).NodoEnter;
    OnMouseActivate := TFrmDiagramaOrg(Sender).NodoMouseActivate;
    OnMouseEnter := TFrmDiagramaOrg(Sender).NodoMouseEnter;
    OnMouseLeave := TFrmDiagramaOrg(Sender).NodoMouseLeave;
    PopupMenu := TFrmDiagramaOrg(Sender).pmnuPanel;
    OnDblClick := TFrmDiagramaOrg(Sender).sPanelDblClick;
  end;

  LabelDepto := TAdvSmoothLabel.Create(sPanel);
  LabelDepto.Parent := sPanel;
  LabelDepto.Align := alClient;
  LabelDepto.Caption.Font.Name := 'Tahoma';
  LabelDepto.Caption.Font.Size := SizeFontLabel;
  LabelDepto.Caption.Text := '';
  LabelDepto.OnDblClick := TFrmDiagramaOrg(Sender).sPanelDblClick;
  LabelDepto.Caption.ColorStart := NodoCaptionColor;
  LabelDepto.Caption.ColorEnd := NodoCaptionColor;

  Hijos := TStringList.Create;
  Hijos.Clear;

  //asignamos propiedades del objeto
  FLeft := 0;
  FTop := 0;
  Nivel := -1;
end;

destructor Tcuadro.Destroy;
begin
  //eliminamos el componente
  sPanel := nil;
  Hijos := nil;
  sPanel.Free;
  Hijos.Free;

  if Assigned(LineaPadre) then
    LineaPadre.Free;
end;

constructor TAnterior.Create(ANodoActual, ANivelIni, ANiveles, AZoom: Integer; AScroll: TPoint);
begin
  Nodo := ANodoActual;
  NivelIni := ANivelIni;
  Niveles := ANiveles;
  Zoom := AZoom;
  Scroll := ASCroll;
end;

constructor TLineas.Create(Padre: TMyPanel; Hijo: TMyPanel);
begin
  Self.Padre := Padre;
  Self.Hijo := Hijo;
end;

constructor TFrmDiagramaOrg.Create(Sender: TObject; LlaveBuscar, NivelInicial: Integer);
begin
  FNivelIni := NivelInicial;
  FNiveles := 0;
  inherited Create(TComponent(Sender));
  ParentWindow := TForm(Sender).Handle;
  Historial := TStack<TAnterior>.create();
  FOrganizacion := LlaveBuscar;
  FNodo := NivelInicial;
  Scroll := TScroll.Create;
  Scroll.HorzPosition := ScrollBox1.HorzScrollBar.Position;
  Scroll.VertPosition := ScrollBox1.VertScrollBar.Position;
  ZoomIndex := TForm2(Application.MainForm).cmbZoom.ItemIndex;
  CuadroZoom := ValZoom[ZoomIndex];    // Iniciar zoom al 100%
  NivelIndex := 0;
  NodosBorrar  := TList.Create;
  MostrarDiagrama(FOrganizacion, FNodo);
end;

procedure TFrmDiagramaOrg.NodoMouseEnter(Sender: TObject);
var
  InicioTop: Integer;
  ctrl: TWinControl;
begin
  ListaCargos.Visible := False;

  ListaCargos.Left := TWinControl(Sender).Left - ListaCargos.Width - Trunc(6 * CuadroZoom);

  if ListaCargos.Left < scrollbox1.HorzScrollBar.Position then
    ListaCargos.Left := TWinControl(Sender).Left + TWinControl(Sender).Width + Trunc(6 * CuadroZoom);

  InicioTop := TWinControl(Sender).Top;
  InicioTop := InicioTop - Trunc((ListaCargos.Height - TWinControl(Sender).Height) / 2);

  if InicioTop > 0 then
    ListaCargos.Top := InicioTop
  else
    ListaCargos.Top := TWinControl(Sender).Top;

  if TWinControl(Sender).Handle <> LastShow then
    LastShow := TWinControl(Sender).Handle;

  TimerShow.Enabled := TForm2(Application.MainForm).cbMostrarPanel.Checked;
  timerleave.Enabled := false;
end;

procedure TFrmDiagramaOrg.NodoMouseLeave(Sender: TObject);
begin
  TimerLeave.Enabled := True;   // Activar temporizador para desaparecer la ventana
end;

procedure TFrmDiagramaOrg.TimerLeaveTimer(Sender: TObject);
var
  Ctrl: TWinControl;

  function InsideRectangle(APoint: TPoint; ARect: TRect): boolean;
  begin
    result := ((APoint.x >= ARect.Left) and (APoint.x <= ARect.Right)) and
              ((APoint.y >= ARect.Top) and (APoint.y <= ARect.Bottom));
  end;

begin
  //.............................................................................
  TimerLeave.Enabled := False;
  Ctrl := FindControl(LastShow);
  if Assigned(Ctrl) then
  begin
    if NOT(InsideRectangle(Ctrl.ScreenToClient(Mouse.CursorPos), Ctrl.ClientRect) OR
          InsideRectangle(ListaCargos.ScreenToClient(Mouse.CursorPos),ListaCargos.ClientRect)) then
      ListaCargos.Visible := False;
  end;
end;

procedure TFrmDiagramaOrg.LlenarPanelCargos;
var
  CargoAnt: Integer;
  tCargo: Integer;
  PersAnt: Integer;
  Cuantos: Integer;
  TotalCargo, PersCargo: Integer;
  tmpLabel: TJvLabelExt;
  LabelTop: Integer;
  i: Integer;
  NombrePersonal: string;
const
  LabelLeft = 15;
begin
  // quitar todos los labels que existan
  i := 0;
  while i < scrlbxLista.ControlCount do
  begin
    if scrlbxLista.Controls[i].ClassNameIs('TJvLabelExt') then
      scrlbxLista.RemoveControl(scrlbxLista.Controls[i])
    else
      inc(i);
  end;

  scrlbxLista.HorzScrollBar.Position := 0;
  scrlbxLista.VertScrollBar.Position := 0;
  scrlbxLista.Repaint;
  scrlbxLista.Refresh;

  // Cargar los datos de los puestos
  cdPlazas.Filtered := False;
  cdPlazas.Filter := Format('iddepartamento = %d',[ListaCargos.Tag]);
  cdPlazas.Filtered := True;
  cdPlazas.First;
  CargoAnt := -1;
  LabelTop := 7;
  Cuantos := 1;
  PersAnt := -100;
  while not cdPlazas.eof do
  begin
    if CargoAnt <> cdPlazas.FieldByName('idcargo').AsInteger then
    begin
      TotalCargo := 0;
      PersCargo := 0;
      tmpLabel := TJvLabelExt.Create(scrlbxLista);
      tmpLabel.Parent := scrlbxLista;
      tmpLabel.Transparent := true;
      tmpLabel.Top := LabelTop;
      tmpLabel.Left := LabelLeft;
      tmpLabel.Font.Color := clBlue;
      tmpLabel.Font.Style := [fsBold];
      tmpLabel.Caption := cdPlazas.FieldByName('TituloCargo').AsString;
    end;

    if cdPlazas.FieldByName('idpersonal').AsInteger > 0 then
    begin
      Inc(PersCargo);
      if chkVerPersonal.Checked then
      begin
        LabelTop := LabelTop + 12;
        tmpLabel := TJvLabelExt.Create(scrlbxLista);
        tmpLabel.Parent := scrlbxLista;
        tmpLabel.Transparent := true;
        tmpLabel.Top := LabelTop;
        tmpLabel.Left := LabelLeft + 20;
        NombrePersonal := cdPlazas.FieldByName('APaterno').AsString;
        NombrePersonal := NombrePersonal + ' ' + cdPlazas.FieldByName('AMaterno').AsString;
        NombrePersonal := NombrePersonal + ' ' + cdPlazas.FieldByName('Nombres').AsString;
        // Quitar espacios dobles que pudieran quedar
        NombrePersonal := StringReplace(NombrePersonal, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
        NombrePersonal := Trim(NombrePersonal);
        tmpLabel.Caption := NombrePersonal;
        // identificar el registro de plazadetalle
        tmpLabel.idplazadetalle := cdPlazas.FieldByName('idplazadetalle').AsInteger;
        tmpLabel.idcargo := cdPlazas.FieldByName('idcargo').AsInteger;
        tmpLabel.titulocargo := cdPlazas.FieldByName('titulocargo').AsString;
        tmpLabel.idpersonal := cdPlazas.FieldByName('idpersonal').AsInteger;
        tmpLabel.OnMouseEnter := LabelMouseEnter;
        tmpLabel.OnMouseLeave := LabelMouseLeave;
        tmpLabel.OnClick := LabelClick;
        tmpLabel.Cursor := crHandPoint;
        tmpLabel.PopupMenu := pmnuLabelEmpl;
      end;
    end;

    if (chkVerPersonal.Checked) AND (cdPlazas.FieldByName('idpersonal').AsInteger < 0) then
    begin
        LabelTop := LabelTop + 12;
        tmpLabel := TJvLabelExt.Create(scrlbxLista);
        tmpLabel.Parent := scrlbxLista;
        tmpLabel.Transparent := true;
        tmpLabel.Top := LabelTop;
        tmpLabel.Left := LabelLeft + 20;
        tmpLabel.idplazadetalle := cdPlazas.FieldByName('idplazadetalle').AsInteger;
        tmpLabel.iddepartamento := cdPlazas.FieldByName('iddepartamento').AsInteger;
        tmpLabel.titulodepartamento := cdPlazas.FieldByName('titulodepartamento').AsString;
        tmpLabel.idcargo := cdPlazas.FieldByName('idcargo').AsInteger;
        tmpLabel.titulocargo := cdPlazas.FieldByName('titulocargo').AsString;
        tmpLabel.idpersonal := cdPlazas.FieldByName('idpersonal').AsInteger;
        tmpLabel.idplaza:=cdPlazas.FieldByName('idplaza').AsInteger;
        tmpLabel.OnMouseEnter := LabelMouseEnter;
        tmpLabel.OnMouseLeave := LabelMouseLeave;
        tmpLabel.Cursor := crHandPoint;
        if cdPlazas.FieldByName('idpersonal').AsInteger = -5 then
        begin
          tmpLabel.Font.Color := clGreen;
          tmpLabel.Caption := TextoVacante;
          tmpLabel.OnClick := LabelClick;
          tmpLabel.PopupMenu := pmnuLabelVacante;
        end
        else
        begin
          tmpLabel.Font.Color := clred;
          tmpLabel.Caption := TextoVacanteND;
          tmpLabel.PopupMenu := pmnuLabelVacanteND;
        end;
        tCargo := cdPlazas.FieldByName('idcargo').AsInteger;
        PersAnt := cdPlazas.FieldByName('idpersonal').AsInteger;
        Cuantos := 0;
        while (cdPlazas.FieldByName('idcargo').AsInteger = tCargo) AND (cdPlazas.FieldByName('idpersonal').AsInteger = PersAnt) AND (not cdPlazas.Eof) do
        begin
          Inc(Cuantos);
          cdPlazas.Next;
        end;
        tmpLabel.Caption := tmpLabel.Caption + Format(' (%d)',[Cuantos]);
        if cdPlazas.eof then
          CargoAnt := tCargo
        else
          cdPlazas.Prior;
    end;

    Inc(TotalCargo);
    if not cdPlazas.eof then
      CargoAnt := cdPlazas.FieldByName('idcargo').AsInteger;
    cdPlazas.Next;
    if cdPlazas.eof OR (cdPlazas.FieldByName('idcargo').AsInteger <> CargoAnt) then
    begin
      if not chkVerPersonal.Checked then
        tmpLabel.Caption := tmpLabel.Caption + Format(' (%d/%d)',[PersCargo, TotalCargo]);

      LabelTop := LabelTop + 12;
    end
  end;
end;

procedure TFrmDiagramaOrg.TimerShowTimer(Sender: TObject);
var
  ctrl: TWinControl;
begin
  TimerShow.Enabled := False;
  // Checar si sigo en el mismo objeto que cuando se inicio el timer
  ctrl := FindVCLWindow(Mouse.CursorPos);
  if (Assigned(ctrl)) AND (LastShow = ctrl.Handle) then
  begin
    ListaCargos.Caption.Text := ' ' + TMyPanel(ctrl).Cuadro.LabelDepto.Caption.Text;

    ListaCargos.Visible := False;
    ListaCargos.Tag := TMyPanel(ctrl).Cuadro.Id;

    LlenarPanelCargos;
    ListaCargos.BringToFront;
    ListaCargos.Visible := True;

    TimerLeave.Enabled := true;
  end;
end;

procedure TFrmDiagramaOrg.Verdocumentacinparacontratacin1Click(Sender: TObject);
Begin
  DocumentosContratacion((((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt));
End;

procedure TFrmDiagramaOrg.LabelClick(Sender: TObject);
begin
  // usar
  // TJvLabelExt(Sender).iddepartamento
  // TJvLabelExt(Sender).idcargo
  // y buscar el primer registro en plazadetalle con "idpersonal = -5"
  if TJvLabelExt(Sender).idpersonal = -5 then
    DocumentosContratacion(TJvLabelExt(Sender));

  if TJvLabelExt(Sender).IdPersonal > 0 then
  begin
    cdPersonal.Close;
    cddocumentosxpostulantes.Close;

    if not CargarDatosFiltrados(cdPersonal, 'idpersonal', [TJvLabelExt(Sender).IdPersonal])  then
      raise InteligentException.CreateByCode(19, ['Personal']);
    cdPersonal.Open;

    if not CargarDatosFiltrados(cddocumentosxpostulantes, 'idpostulante,idcargo', [TJvLabelExt(Sender).IdPersonal, TJvLabelExt(Sender).Idcargo]) then
      raise InteligentException.CreateByCode(19, ['Documento por Postulante']);
    cddocumentosxpostulantes.Open;


    if cdPersonal.RecordCount >0 then
      ClientModule1.ImprimeReporte('DatosGenerales.fr3',frxrpDatosdelPersonal);
  end;
end;
procedure TFrmDiagramaOrg.DocumentoPersonal(LabelExt: TJvLabelExt);
var
  CdPersonal: TClientDataSet;
  id: Integer;
  dsReporte: TDataSource;
begin
  try
    // df  aqui se imprime el reporte
    Id := TJvLabelExt(LabelExt).idpersonal;
    CdPersonal := TClientDataSet.Create(nil);
    if not CrearConjunto(CdPersonal,'rhu_repdocpersonal',ccCatalog) then
      raise InteligentConnection.Create('Al realizar la consulta de repdocpersonal, infórmelo al administrador del sistema.');
    CargarDatosFiltrados(CdPersonal,'idpersonal',[Id]);
    CdPersonal.Open;
    if CdPersonal.RecordCount <> 1 then
      raise InteligentWarning.Create('Al localizar el personal.');

    dsReporte := TDataSource.Create(CdPersonal);

    dsReporte.DataSet := CdPersonal;
    frxdsReporte.DataSource := dsReporte;
    ClientModule1.ImprimeReporte('DatosGenerales.fr3',frxrpReporte);
    //ClientModule1.ImprimeReporte('DatosPersonal.fr3',frxrpReporte);

    try
      frxdsReporte.DataSource := nil;
      dsReporte.DataSet := nil;
      CdPersonal.Close;
      EliminarConjunto(CdPersonal);
      CdPersonal.Free;
      dsReporte.Free;
    except
      ;
    end;

  except
    on e:InteligentConnection do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Error de conexión al servidor:', e.Message, mtError, [mbOk], 0);
    end;

    on e:InteligentWarning do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Error al generar el reporte:', e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmDiagramaOrg.LabelMouseEnter(Sender: TObject);
begin
  if not assigned(TJvLabelExt(Sender).oldFont) then
    TJvLabelExt(Sender).oldFont := TFont.Create;

  TJvLabelExt(Sender).oldFont.Assign(TJvLabelExt(Sender).Font);
  TJvLabelExt(Sender).Font.Style := [fsUnderline];
  TJvLabelExt(Sender).Font.Color := clBlue;
end;

procedure TFrmDiagramaOrg.LabelMouseLeave(Sender: TObject);
begin
  TJvLabelExt(Sender).Font.Assign(TJvLabelExt(Sender).OldFont);
end;

procedure TFrmDiagramaOrg.ListaCargosMouseEnter(Sender: TObject);
begin
  TimerLeave.Enabled := False;
end;

procedure TFrmDiagramaOrg.ListaCargosMouseLeave(Sender: TObject);
begin
  TimerLeave.Enabled := True;
end;

procedure TFrmDiagramaOrg.NodoEnter(Sender: TObject);
begin
  EstablecerColores(Sender);

  if Not (fsBold in TAdvSmoothPanel(Sender).Caption.Font.Style) then
    TAdvSmoothPanel(Sender).Caption.Font.Style := TAdvSmoothPanel(Sender).Caption.Font.Style + [fsBold];
end;

procedure TFrmDiagramaOrg.NodoMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  TAdvSmoothPanel(Sender).SetFocus;
end;

procedure TFrmDiagramaOrg.AgregarDepartamento1Click(Sender: TObject);
Var
  Cuadro: Tcuadro;
  CdDepartamento: TClientDataset;
  DepUltimoId : Integer;
begin
  // Verificar si existe un departamento padre
  try
    //if Assigned(PanelActual) then
    begin
      Application.CreateForm(TFrmDatosDeptoDiag, FrmDatosDeptoDiag);
      if Assigned(PanelActual) then
        FrmDatosDeptoDiag.lblDeptoPadre.Caption := PanelActual.Cuadro.Titulo
      else
        FrmDatosDeptoDiag.lblDeptoPadre.Caption := '<INICIO DE DIAGRAMA>';
        FrmDatosDeptoDiag.ShowModal;

      if FrmDatosDeptoDiag.Resultado = mrOk then
      begin
        Cuadro := TCuadro.Create(Self, PanelDiag);
        Cuadro.Codigo := FrmDatosDeptoDiag.edtCodigo.Text;
        Cuadro.Titulo := FrmDatosDeptoDiag.edtTitulo.Text;
        Cuadro.Descripcion := FrmDatosDeptoDiag.edtDescripcion.Text;
        Cuadro.Comentarios := FrmDatosDeptoDiag.edtComentarios.Text;
        Cuadro.Modificado := emInsert;
        Cuadro.Id := 0;
        if Assigned(PanelActual) then
        begin
          Cuadro.IdPadre := PanelActual.Cuadro.Id;
          Cuadro.Nivel := PanelActual.Cuadro.Nivel + 1;
          Cuadro.NumSoy := PanelActual.Cuadro.Hijos.Count + 1;
          Cuadro.IdArbol := PanelActual.cuadro.IdArbol;

          // asignarle la dirección del panel padre
          Cuadro.Padre := PanelActual.Cuadro;
          Cuadro.sPanel.Padre := PanelActual;

          PanelActual.Cuadro.Hijos.AddObject('ID_X', Cuadro);
          Cuadro.Hermanos := PanelActual.Cuadro.Hijos;
        end
        else
        begin
          Cuadro.IdPadre := -5;
          Cuadro.Nivel := 0;
          Cuadro.NumSoy := 1;
          Cuadro.Padre := Nil;
          Cuadro.sPanel.Padre := Nil;
          Cuadro.IdArbol := -9;

          Arbol.AddObject('ID_' + '0', Cuadro);
          PanelActual := TCuadro(Arbol.Objects[0]).sPanel;
          Cuadro.Hermanos := Nil;
        end;

        try
          try
            CdDepartamento :=TclientDataset.Create(nil);
            if not CrearConjunto(CdDepartamento, 'nuc_departamento', ccUpdate) then
              raise InteligentException.CreateByCode(5, ['Departamento']);
            if Not  CargarDatosFiltrados(CdDepartamento, 'iddepartamento', [-9]) then
              raise InteligentException.CreateByCode(6, ['Departamento', -9, 'IdDepartamento']);
            CdDepartamento.Open;
            CdDepartamento.Append;

            CdDepartamento.FieldByName('iddepartamento').asinteger:= 0;
            CdDepartamento.FieldByName('IdOrganizacion').asinteger:= FOrganizacion;
            CdDepartamento.FieldByName('codigodepartamento').asstring:= Cuadro.Codigo;
            CdDepartamento.FieldByName('titulodepartamento').asstring:= Cuadro.Titulo;
            CdDepartamento.FieldByName('descripcion').asstring:= Cuadro.Descripcion;
            CdDepartamento.FieldByName('comentarios').asstring:= Cuadro.Comentarios;
            CdDepartamento.FieldByName('etiqueta').asstring:= FrmDatosDeptoDiag.edtEtiqueta.Text;
            if Cuadro.IdPadre > 0 then
              CdDepartamento.FieldByName('idarbol').asinteger:= Cuadro.IdArbol
            else
              CdDepartamento.FieldByName('idarbol').asinteger:= -5;

            CdDepartamento.FieldByName('idpadre').asinteger:= Cuadro.IdPadre;
            CdDepartamento.FieldByName('nivel').asinteger:= Cuadro.Nivel;
            CdDepartamento.FieldByName('herencia').asstring:= '*';
            CdDepartamento.FieldByName('activo').asstring:= 'Si';

            CdDepartamento.Post;
            CdDepartamento.ApplyUpdates(-1);

            DepUltimoId := Ultimoid;
            Cuadro.Id := DepUltimoId;

            if Cuadro.IdPadre < 0 then
            begin
              CargarDatosFiltrados(cdDepartamento, 'IdDepartamento', [DepUltimoId]);
              cdDepartamento.Refresh;
              if cdDepartamento.RecordCount = 1 then
              begin
                cdDepartamento.Edit;
                Cuadro.IdArbol := DepUltimoId;
                Cddepartamento.FieldByName('idarbol').asinteger:= DepUltimoId;
                Cddepartamento.Post;
                Cddepartamento.ApplyUpdates(-1);
              end;
            end;
          finally
            if assigned(CdDepartamento) then
            begin
              EliminarConjunto(CdDepartamento);
              cdDepartamento.Free;
            end;
          end;
        except
          raise;
        end;

        DibujarFlow(Arbol, True, FNiveles);
      end;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      if assigned(cuadro) then
        cuadro.Free;
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Por favor informe de lo siguiente al administrador del sistema:' + #10 + e.message, mterror, [mbOk], 0);
      if assigned(cuadro) then
        cuadro.Free;
    end;
  end;
end;

procedure TFrmDiagramaOrg.MenuItem4Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
  cdUpd: TClientDataSet;
  tCadena: String;
  Cuantos: Integer;
  Frm: TFrmCuantos;
begin
  tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
  if AnsiRightStr(tmp.Caption,3) = '(1)' then  // solo hay un registro, confirmar
  begin
    TimerLeave.Enabled := false;
    if InteliDialog.ShowModal('Confirmación','¿Cambiar la vacante a disponible?','',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      try
        cdUpd := TClientDataSet.Create(nil);
        CrearConjunto(cdUpd,'rhu_plazadetalle',ccUpdate);
        CargarDatosFiltrados(cdUpd,'idplazaDetalle',[tmp.idplazadetalle]);
        cdUpd.Open;
        if cdUpd.RecordCount = 1 then
        begin
          cdUpd.First;
          cdUpd.Edit;
          cdUpd.FieldByName('idpersonal').AsInteger := -5;
          cdUpd.Post;
          cdUpd.ApplyUpdates(0);
        end;
        cdUpd.Close;
        EliminarConjunto(cdUpd);
        cdUpd.Free;
        cdPlazas.Refresh;
        LlenarPanelCargos;
        InteliDialog.ShowModal('Confirmación','Los cambios se han efectuado correctamente','',mtInformation,[mbOK],0);
      except
        on e: Exception do
        begin
          InteliDialog.ShowModal('ERROR','Error al guardar cambios.' + #10 + 'Nada se ha guardado',e.message,mtError,[mbOK],0);
        end;
      end;
    end;
    TimerLeave.Enabled := true;
  end
  else
  begin
    try
      // obtener cuantos registros estan en ese estado
      tCadena := AnsiMidStr(tmp.Caption,26,100);
      tCadena := AnsiReplaceStr(tCadena,')','');
      Cuantos := StrToInt(tCadena);
      TimerLeave.Enabled := False;
      Frm := TFrmCuantos.Create(nil);
      Frm.Max := Cuantos;
      Frm.Texto := Format('Son %d vacantes las cuales estan marcadas como "no disponibles" para el cargo [%s] del departamento [%s].',[Cuantos,tmp.titulocargo,tmp.titulodepartamento]) + #10 + 'Indicar cuantas plazas se cambiaran de estado a "Disponibles".';
      Frm.ShowModal;
      if Frm.Cantidad > 0 then
      begin
        try
          cdUpd := TClientDataSet.Create(nil);
          CrearConjunto(cdUpd,'rhu_plazadetalle',ccUpdate);
          CargarDatosFiltrados(cdUpd,'iddepartamento,idcargo,idpersonal',[tmp.iddepartamento,tmp.idcargo,-6]);
          cdUpd.Open;
          cdUpd.First;
          while (not cdUpd.eof) AND (cdUpd.RecNo <= Frm.Cantidad) do
          begin
            cdUpd.Edit;
            cdUpd.FieldByName('idpersonal').AsInteger := -5;
            cdUpd.Post;
            cdUpd.ApplyUpdates(0);
            cdUpd.Next;
          end;
          cdPlazas.Refresh;
          LlenarPanelCargos;
          InteliDialog.ShowModal('Confirmación','Los cambios se han efectuado correctamente','',mtInformation,[mbOK],0);
        finally
          cdUpd.Close;
          EliminarConjunto(cdUpd);
          cdUpd.Free;
          TimerLeave.Enabled := true;
        end;
      end;
    except
      on e: Exception do
      begin
        InteliDialog.ShowModal('ERROR','Error al guardar cambios.' + #10 + 'Nada se ha guardado',e.message,mtError,[mbOK],0);
      end;
    end;
  end;
end;

procedure TFrmDiagramaOrg.Modificar1Click(Sender: TObject);
Var
  Frm: TFrmDatosDeptoDiag;
  CdDepartamento: TClientDataset;
begin
  if Assigned(PanelActual) then
  begin
    Application.CreateForm(TFrmDatosDeptoDiag, FrmDatosDeptoDiag);
    FrmDatosDeptoDiag.edtCodigo.Text := PanelActual.Cuadro.Codigo;
    FrmDatosDeptoDiag.edtCodigo.ReadOnly := true;
    FrmDatosDeptoDiag.edtTitulo.Text := PanelActual.Cuadro.Titulo;
    FrmDatosDeptoDiag.edtDescripcion.Text := PanelActual.Cuadro.Descripcion;
    FrmDatosDeptoDiag.edtComentarios.Text := PanelActual.Cuadro.Comentarios;
    if Assigned(PanelActual.Padre) then
      FrmDatosDeptoDiag.lblDeptoPadre.Caption := PanelActual.Padre.Cuadro.Titulo
    else
      FrmDatosDeptoDiag.lblDeptoPadre.Caption := 'NODO PADRE';

    FrmDatosDeptoDiag.ShowModal;
    if FrmDatosDeptoDiag.Resultado = mrOk then
    begin
      PanelActual.Cuadro.Titulo := FrmDatosDeptoDiag.edtTitulo.Text;
      PanelActual.Cuadro.Descripcion := FrmDatosDeptoDiag.edtDescripcion.Text;
      PanelActual.Cuadro.Comentarios := FrmDatosDeptoDiag.edtComentarios.Text;
      PanelActual.Caption.Text := '  ' + FrmDatosDeptoDiag.edtTitulo.Text;
      PanelActual.Cuadro.Modificado := emEdit;
      PanelActual.Refresh;
      try
        CdDepartamento:= TClientDataset.Create(nil);
        if not CrearConjunto(CdDepartamento, 'nuc_departamento', ccUpdate) then
          raise InteligentException.CreateByCode(5, ['Departamento']);
        if Not  CargarDatosFiltrados(CdDepartamento, 'iddepartamento', [PanelActual.cuadro.Id]) then
          raise InteligentException.CreateByCode(6, ['Departamento', -9, 'IdDepartamento']);
        CdDepartamento.Open;
        CdDepartamento.edit;

        CdDepartamento.FieldByName('titulodepartamento').asstring:= PanelActual.Cuadro.Titulo;
        CdDepartamento.FieldByName('descripcion').AsVariant:= PanelActual.Cuadro.Descripcion;
        CdDepartamento.FieldByName('comentarios').AsVariant:= PanelActual.Cuadro.Comentarios;

        CdDepartamento.Post;
        CdDepartamento.ApplyUpdates(-1);
      finally
        if assigned(CdDepartamento) then
        begin
          EliminarConjunto(CdDepartamento);
          cdDepartamento.Free;
        end;
      end;
    end;
  end;
end;

procedure TFrmDiagramaOrg.MostrarDiagrama(IdOrganizacion: integer; NodoInicial: Integer);
var
  cdOrg: Tclientdataset;
  Cuadro: TCuadro;
  NivelMax, i: Integer;
  CadBuscar: String;
  PasoLista: TConjunto;

  function BusquedaRecursiva(Lista: TStringList; Buscar: String): TConjunto;
  var
    i: Integer;
    Encuentra: Boolean;
    Resultado: TConjunto;
  begin
    Try
      Resultado := nil;
      Encuentra := False;
      i := 0;
      while (i < Lista.Count) and (Not Encuentra) and not Assigned(Resultado) do
      begin
        Encuentra := (Lista[i] = Buscar);
        if Encuentra then
        begin
          Resultado := TConjunto.Create;
          Resultado.Padre := Lista;
          Resultado.NumItem := i;
          Resultado.Hijos := TCuadro(Lista.Objects[i]).Hijos;
        end
        else
          if TCuadro(Lista.Objects[i]).Hijos <> Nil then
          begin
            //Resultado := TConjunto.Create;
            Resultado := BusquedaRecursiva(TCuadro(Lista.Objects[i]).Hijos, Buscar);
          end;
        inc(i);
      end;
    Finally
      Result := Resultado;
    End;
  end;

begin
  PanelDiag.Visible := False;

  // Mostrar diagrama sobre un panel limpio
  if Assigned(Arbol) then
  begin
    BorrarNodo(Tcuadro(Arbol.Objects[0]));
    Arbol := nil;
  end;

  while PanelDiag.ComponentCount > 0 do
    PanelDiag.Components[0].Destroy;

  ScrollBox1.HorzScrollBar.Position := 0;
  ScrollBox1.VertScrollBar.Position := 0;

  Try
    Try
      cdOrg :=  TClientdataset.Create(nil);
      cdorg.RemoteServer := ClientModule1.DSProviderConnection1;
      if not CrearConjunto(cdOrg,'nuc_departamento',ccSelect) then
        raise InteligentConnection.CreateByCode(5, ['Departamentos']);

      If Not CargarDatosFiltrados(cdOrg,'IdOrganizacion,IdNodo',[IdOrganizacion, NodoInicial]) Then
        raise InteligentConnection.CreateByCode(6, ['Departamentos', IdOrganizacion, 'IdOrganizacion']);
      cdorg.Open;

      cdPlazas :=  TClientdataset.Create(nil);
      //cdPlazas.RemoteServer := ClientModule1.DSProviderConnection1;
      if not CrearConjunto(cdPlazas,'rhu_plazadetalle',ccSelect) then
        raise InteligentConnection.CreateByCode(5, ['Plazas Vacantes']);

      if Not CargarDatosFiltrados(cdPlazas,'IdOrganizacion',[IdOrganizacion]) then
        raise InteligentConnection.CreateByCode(6, ['Plazas Vacantes', IdOrganizacion, 'IdOrganizacion']);
      cdPlazas.Open;

      cmbNiveles.Clear;

      // Armar el árbol de estructura
      Arbol := TStringList.Create;

      if cdOrg.RecordCount > 0 then
      begin
        // Obtener el nivel del nodo principal
        cdOrg.First;
        FNivelTop := cdOrg.FieldByName('nivel').AsInteger;
        stpHistorial.BeginUpdate;
        with TStepAction.Create(stpHistorial.StepActions) do
        begin
          ActiveContent.Caption := IntToStr(stpHistorial.StepActions.Count);
          ActiveContent.Description.Text := cdOrg.FieldByName('TituloDepartamento').AsString;
          InActiveContent.Caption := IntToStr(stpHistorial.StepActions.Count);
          InActiveContent.Description.Text := cdOrg.FieldByName('TituloDepartamento').AsString;
          ProcessedContent.Caption := IntToStr(stpHistorial.StepActions.Count);
          ProcessedContent.Description.Text := cdOrg.FieldByName('TituloDepartamento').AsString;
        end;
        stpHistorial.EndUpdate;
        stpHistorial.ActiveStep := stpHistorial.StepActions.Count - 1;

        // Obtener el nivel máximo
        cdOrg.Last;
        NivelMax := cdOrg.FieldByName('nivel').AsInteger;
        //for i := 0 to cdmax.RecordCount do
        for i := FNivelTop to NivelMax do
        begin
          // Filtrar los datos de acuerdo a este nivel
          cdOrg.Filtered := False;
          cdOrg.Filter := 'Nivel = ' + IntToStr(i);
          cdOrg.Filtered := True;
          cdOrg.First;

          while not cdOrg.Eof do
          begin
            Cuadro := TCuadro.Create(Self, PanelDiag);
            Cuadro.Id := cdOrg.FieldByName('IdDepartamento').AsInteger;
            Cuadro.IdPadre := cdOrg.FieldByName('idpadre').AsInteger;
            Cuadro.Nivel := cdOrg.FieldByName('Nivel').AsInteger - FNivelTop;
            Cuadro.Codigo := cdOrg.FieldByName('CodigoDepartamento').AsString;
            Cuadro.Titulo := cdOrg.FieldByName('TituloDepartamento').AsString;
            Cuadro.Descripcion := cdOrg.FieldByName('Descripcion').AsString;
            Cuadro.Comentarios := cdOrg.FieldByName('Comentarios').AsString;
            Cuadro.IdArbol := cdOrg.FieldByName('IdArbol').asinteger;


            // Verificar si tiene padres
            if FNivelTop <> cdOrg.FieldByName('Nivel').AsInteger {cdOrg.FieldByName('IdPadre').AsInteger > -5} then
            begin
              // Localizar el padre en la lista
              CadBuscar := 'ID_' + cdOrg.FieldByName('IdPadre').AsString;
              PasoLista := BusquedaRecursiva(Arbol, CadBuscar);
              //si el list paso lista esta asignado asignar propiedades del cuadro y añadir hijos
              if PasoLista <> Nil then
              begin
                Cuadro.NumSoy := PasoLista.Hijos.Count + 1;
                // asignarle la dirección del panel padre
                Cuadro.Padre := TCuadro(PasoLista.Padre.Objects[PasoLista.Padre.IndexOf(CadBuscar)]);
                Cuadro.sPanel.Padre := TCuadro(PasoLista.Padre.Objects[PasoLista.Padre.IndexOf(CadBuscar)]).sPanel;
                PasoLista.Hijos.AddObject('ID_' + cdOrg.FieldByName('iddepartamento').AsString, Cuadro);
                Cuadro.Hermanos := PasoLista.Hijos;
              end;
            end
            else
            begin
              Cuadro.NumSoy := Arbol.Count + 1;
              Arbol.AddObject('ID_' + cdOrg.FieldByName('iddepartamento').AsString, Cuadro);
              Cuadro.Hermanos := Arbol;
            end;
            cdOrg.Next;
          end;
        end;
      end;

      TForm2(Application.MainForm).cmbNiveles.Items := cmbNiveles.Items;
      if cmbNiveles.Items.Count > 0 then
        TForm2(Application.MainForm).cmbNiveles.ItemIndex := 0
      else
        TForm2(Application.MainForm).cmbNiveles.ItemIndex := -1;
      FNiveles := 0;
      if Arbol.Count > 0 then
        DibujarFlow(Arbol, True, FNiveles);
      cdOrg.Close;
    Finally
      EliminarConjunto(cdOrg);
      cdOrg.Free;
      if Arbol.Count > 0 then
        PanelActual := TCuadro(Arbol.Objects[0]).sPanel
      else
        PanelActual := Nil;
    End;
  except
    on e:InteligentConnection do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:exception do
    begin
      PostMessage(Self.Handle, WM_Close, 0, 0);
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  end;
  PanelDiag.Visible := true;
end;

procedure TFrmDiagramaOrg.chkVerPersonalClick(Sender: TObject);
begin
  LlenarPanelCargos;
end;

procedure TFrmDiagramaOrg.PanelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Sender is TWinControl) and (Sender.ClassType = TMyPanel) then
    EstablecerColores(Sender);
end;

procedure TFrmDiagramaOrg.PanelDiagClick(Sender: TObject);
begin
  TimerLeave.Enabled := false;
  ListaCargos.Visible := false;
end;

procedure TFrmDiagramaOrg.PanelDiagMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ScrollBox1.HorzScrollBar.IsScrollBarVisible or ScrollBox1.VertScrollBar.IsScrollBarVisible then
  begin
    CursorAntesClick := Screen.Cursor;
    Screen.Cursor := crSizeAll;
    MouseP.OnClick := True;
    MouseP.X := X;
    MouseP.Y := Y;
  end;
end;

procedure TFrmDiagramaOrg.PanelDiagMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if MouseP.OnClick then
  begin
    ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position + (MouseP.X - X);
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position + (MouseP.Y - Y);
  end;
end;

procedure TFrmDiagramaOrg.PanelDiagMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if MouseP.OnClick then
  begin
    Screen.Cursor := CursorAntesClick;
    MouseP.OnClick := False;
  end;
end;

procedure TFrmDiagramaOrg.ProcedeGuardar;
Var
  cdDepto: TClientDataSet;
  OldCursor: TCursor;

  Procedure GuardarArbol(ALista: TStringList);
  Var
    i: Integer;
  begin
    Try
      for i := 0 to ALista.Count - 1 do
      begin
        if TCuadro(ALista.Objects[i]).Modificado in [emEdit, emInsert] then
        begin
          cdDepto.Close;
          if Not CargarDatosFiltrados(cdDepto,'iddepartamento',[Tcuadro(ALista.Objects[i]).id]) then
            raise InteligentException.CreateByCode(21, ['Departamento']);
          cdDepto.Open;
          if cdDepto.RecordCount = 0 then     // Agregar nuevo registro
          begin
            cdDepto.Append;
            cdDepto.FieldByName('iddepartamento').AsInteger := 0;
            cdDepto.FieldByName('IdOrganizacion').AsInteger := FOrganizacion;
            cdDepto.FieldByName('codigodepartamento').AsString := Tcuadro(ALista.Objects[i]).Codigo;
            cdDepto.FieldByName('idarbol').AsInteger := 0;
            cdDepto.FieldByName('herencia').AsString := '';
            cdDepto.FieldByName('activo').AsString := 'Si';
          end
          else
          begin
            cdDepto.First;
            cdDepto.Edit;
          end;
          cdDepto.FieldByName('titulodepartamento').AsString := Tcuadro(ALista.Objects[i]).Titulo;
          cdDepto.FieldByName('descripcion').AsString := Tcuadro(ALista.Objects[i]).Descripcion;
          cdDepto.FieldByName('comentarios').AsString := Tcuadro(ALista.Objects[i]).Comentarios;
          if Assigned(Tcuadro(ALista.Objects[i]).Padre) then
            cdDepto.FieldByName('idpadre').AsInteger := Tcuadro(ALista.Objects[i]).Padre.id
          else
            cdDepto.FieldByName('idpadre').AsInteger := -5;
          cdDepto.FieldByName('nivel').AsInteger := Tcuadro(ALista.Objects[i]).Nivel;
          cdDepto.Post;
          cdDepto.ApplyUpdates(-1);

          // Si era un regístro nuevo, ajustarle su ID actual
          if TCuadro(ALista.Objects[i]).Modificado = emInsert {cdDepto.FieldByName('iddepartamento').AsInteger = 0} then
            Tcuadro(ALista.Objects[i]).id := UltimoId;

          TCuadro(ALista.Objects[i]).Modificado := emNone;
        end;
        if Tcuadro(ALista.Objects[i]).hijos.Count > 0 then
          GuardarArbol(TCuadro(ALista.Objects[i]).hijos);
      end;
    Except
      on e:InteligentException do
        Raise;

      on e:Exception do
        raise InteligentException.CreateByCode(1, [e.Message]);
    End;
  end;

begin
  try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdDepto := TClientDataSet.Create(nil);
      if Not CrearConjunto(cdDepto,'nuc_departamento',ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Departamentos']);

      GuardarArbol(Arbol);

      // borrar los nodos indicados y limpiar la lista
      while NodosBorrar.Count > 0 do
      begin
        cdDepto.Close;
        if Not CargarDatosFiltrados(cdDepto,'IdDepartamento',[Integer(NodosBorrar[0])]) then
          raise InteligentException.CreateByCode(21, ['Departamentos']);
        cdDepto.Open;
        if cdDepto.RecordCount > 0 then     // Eliminar el registro
        begin
          cdDepto.First;
          cdDepto.Edit;
          cdDepto.FieldByName('Activo').AsString := 'No';
          cdDepto.Post;
          cdDepto.ApplyUpdates(0);
        end;
        NodosBorrar.Delete(0);
      end;
    Finally
      Screen.Cursor := OldCursor;
      EliminarConjunto(cdDepto);
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Error al guardar.',e.Message,mtError,[mbOK],0);
  end;
end;

procedure TFrmDiagramaOrg.CambiaraNodisponible1Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
  cdUpd: TClientDataSet;
  tCadena: String;
  Cuantos: Integer;
  Frm: TFrmCuantos;
begin
  tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
  if AnsiRightStr(tmp.Caption,3) = '(1)' then  // solo hay un registro, confirmar
  begin
    TimerLeave.Enabled := false;
    if InteliDialog.ShowModal('Confirmación','¿Cambiar la vacante a "No disponible"?','',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      try
        cdUpd := TClientDataSet.Create(nil);
        CrearConjunto(cdUpd,'rhu_plazadetalle',ccUpdate);
        CargarDatosFiltrados(cdUpd,'idplazaDetalle',[tmp.idplazadetalle]);
        cdUpd.Open;
        if cdUpd.RecordCount = 1 then
        begin
          cdUpd.First;
          cdUpd.Edit;
          cdUpd.FieldByName('idpersonal').AsInteger := -6;
          cdUpd.Post;
          cdUpd.ApplyUpdates(0);
        end;
        cdUpd.Close;
        EliminarConjunto(cdUpd);
        cdUpd.Free;
        cdPlazas.Refresh;
        LlenarPanelCargos;
        InteliDialog.ShowModal('Confirmación','Los cambios se han efectuado correctamente','',mtInformation,[mbOK],0);
      except
        on e: Exception do
        begin
          InteliDialog.ShowModal('ERROR','Error al guardar cambios.' + #10 + 'Nada se ha guardado',e.message,mtError,[mbOK],0);
        end;
      end;
    end;
    TimerLeave.Enabled := true;
  end
  else
  begin
    try
      // obtener cuantos registros estan en ese estado
      tCadena := AnsiMidStr(tmp.Caption,12,100);
      tCadena := AnsiReplaceStr(tCadena,')','');
      Cuantos := StrToInt(tCadena);
      TimerLeave.Enabled := False;
      Frm := TFrmCuantos.Create(nil);
      Frm.Max := Cuantos;
      Frm.Texto := Format('Son %d vacantes las cuales estan marcadas como "Disponibles" para el cargo de [%s] del departamento [%s].',[Cuantos,tmp.titulocargo,tmp.titulodepartamento]) + #10 + 'Indicar cuantas plazas se cambiaran de estado a "No disponibles".';
      Frm.ShowModal;
      if Frm.Cantidad > 0 then
      begin
        try
          cdUpd := TClientDataSet.Create(nil);
          CrearConjunto(cdUpd,'rhu_plazadetalle',ccUpdate);
          CargarDatosFiltrados(cdUpd,'iddepartamento,idcargo,idpersonal',[tmp.iddepartamento,tmp.idcargo, -5]);
          cdUpd.Open;
          cdUpd.First;
          while (not cdUpd.eof) AND (cdUpd.RecNo <= Frm.Cantidad) do
          begin
            cdUpd.Edit;
            cdUpd.FieldByName('idpersonal').AsInteger := -6;
            cdUpd.Post;
            cdUpd.ApplyUpdates(0);
            cdUpd.Next;
          end;
          cdPlazas.Refresh;
          LlenarPanelCargos;
          InteliDialog.ShowModal('Confirmación','Los cambios se han efectuado correctamente','',mtInformation,[mbOK],0);
        finally
          cdUpd.Close;
          EliminarConjunto(cdUpd);
          cdUpd.Free;
          TimerLeave.Enabled := true;
        end;
      end;
    except
      on e: Exception do
      begin
        InteliDialog.ShowModal('ERROR','Error al guardar cambios.' + #10 + 'Nada se ha guardado',e.message,mtError,[mbOK],0);
      end;
    end;
  end;
end;

procedure TFrmDiagramaOrg.CancelarVacante2Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
  Frm: TFrmCancelarPlazas;
begin
  tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
  TimerLeave.Enabled := false;
  Frm := TFrmCancelarPlazas.Create(nil, tmp);
  Frm.ShowModal;
  Frm.Free;
  cdPlazas.Refresh;
  LlenarPanelCargos;
  TimerLeave.Enabled := true;
end;

procedure TFrmDiagramaOrg.CambiarZoom(ItemIndex: Integer);
begin
  CuadroZoom := ValZoom[ItemIndex];
  ZoomIndex := ItemIndex;
  DibujarFlow(Arbol, False, FNiveles);
end;

procedure TFrmDiagramaOrg.CambiarNivel(ItemIndex: Integer);
begin
  FNiveles := StrToInt(TForm2(Application.MainForm).cmbNiveles.Text);
  NivelIndex := ItemIndex;
  DibujarFlow(Arbol, True, FNiveles);
end;

procedure TFrmDiagramaOrg.Datosdelanomina1Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
begin
  tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
  ShowMessage(tmp.Caption);
end;

procedure TFrmDiagramaOrg.Datospersonales1Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
begin
  tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
  ShowMessage(tmp.Caption);
end;

procedure TFrmDiagramaOrg.DibujarFlow(Lista: TStringList; Recalcular: Boolean; Niveles: integer = 0);
Const
  AnchoLinea = 4;

var
  LocNivel: Integer;
  Dibujar: boolean;
  HijosNivel: Array of integer;
  i: integer;
  NivelAnt, NivelesAnt: Integer;
  WidthAnt: integer;
  PrcAnt: real;

  procedure DibujaHijos(Hijos: TStringList; PadreLimite: TRect);
  var
    i: Integer;
    LocLeft2, Num2: Integer;
    MiEspacio: Integer;
  begin

    Num2 := 0;
    Inc(LocNivel);

    MiEspacio := PadreLimite.Right div Hijos.Count;

    for i := 0 to Hijos.Count -1 do
    begin
      if Recalcular then
      begin
        TCuadro(Hijos.Objects[i]).Top := (EspacioHeight + CuadroHeight) * (TCuadro(Hijos.Objects[i]).Nivel);
        TCuadro(Hijos.Objects[i]).Left := PadreLimite.Left + (MiEspacio * i) + (MiEspacio div 2) - (CuadroWidth div 2);
        TCuadro(Hijos.Objects[i]).Width := CuadroWidth;
        TCuadro(Hijos.Objects[i]).Height := CuadroHeight;
        Num2 := TCuadro(Hijos.Objects[i]).Left + CuadroWidth + (LocLeft2 * 2);
      end;

      // Dibujar el panel
      if  TCuadro(Hijos.Objects[i]).sPanel <> nil then
      begin
        TCuadro(Hijos.Objects[i]).sPanel.Top := Trunc(TCuadro(Hijos.Objects[i]).Top * CuadroZoom);
        TCuadro(Hijos.Objects[i]).sPanel.Left := Trunc(TCuadro(Hijos.Objects[i]).Left * CuadroZoom);
        TCuadro(Hijos.Objects[i]).sPanel.Width := Trunc(CuadroWidth * CuadroZoom);
        TCuadro(Hijos.Objects[i]).sPanel.Height := Trunc(CuadroHeight * CuadroZoom);
        TCuadro(Hijos.Objects[i]).sPanel.Fill.ShadowOffset := Trunc(10 * CuadroZoom);
        TCuadro(Hijos.Objects[i]).sPanel.Caption.Text := '  ' + TCuadro(Hijos.Objects[i]).Codigo;
        TCuadro(Hijos.Objects[i]).sPanel.Caption.Font.Size := Trunc(SizeFontTitle * CuadroZoom);
        TCuadro(Hijos.Objects[i]).sPanel.Cuadro := TCuadro(Hijos.Objects[i]);
      end;
      TCuadro(Hijos.Objects[i]).LabelDepto.Caption.Text := TCuadro(Hijos.Objects[i]).Titulo;
      TCuadro(Hijos.Objects[i]).LabelDepto.Caption.Font.Size := Trunc(SizeFontLabel * CuadroZoom);


      if Assigned(TCuadro(Hijos.Objects[i]).Padre) then
      begin
        // Crear las líneas que se comunican al padre
        if Assigned(TCuadro(Hijos.Objects[i]).LineaPadre) then
        begin
          // Línea 1 (Sale del padre hacia abajo)
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea1.Top := TCuadro(Hijos.Objects[i]).Padre.sPanel.Top + TCuadro(Hijos.Objects[i]).Padre.sPanel.Height;
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea1.Left := TCuadro(Hijos.Objects[i]).Padre.sPanel.Left + Trunc(TCuadro(Hijos.Objects[i]).Padre.sPanel.Width / 2);
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea1.Width := Trunc(AnchoLinea * CuadroZoom);
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea1.Height := Trunc((EspacioHeight / 2) * CuadroZoom);

          // Línea 2 (Del centro del padre hacia el centro del hijo)
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Top := TCuadro(Hijos.Objects[i]).sPanel.Top - Trunc(((EspacioHeight / 2) + AnchoLinea) * CuadroZoom);
          if TCuadro(Hijos.Objects[i]).sPanel.Left > TCuadro(Hijos.Objects[i]).LineaPadre.Linea1.Left then
            TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Left := TCuadro(Hijos.Objects[i]).LineaPadre.Linea1.Left
          else
            TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Left := TCuadro(Hijos.Objects[i]).sPanel.Left + Trunc(TCuadro(Hijos.Objects[i]).sPanel.Width / 2);
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Width := Abs(TCuadro(Hijos.Objects[i]).sPanel.Left - TCuadro(Hijos.Objects[i]).Padre.sPanel.Left);
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Height := Trunc(AnchoLinea * CuadroZoom);

          // Línea 3 (Del centro del hijo hacia el cuadro del hijo)
          if TCuadro(Hijos.Objects[i]).sPanel.Left > TCuadro(Hijos.Objects[i]).LineaPadre.Linea1.Left then
            TCuadro(Hijos.Objects[i]).LineaPadre.Linea3.Left := TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Left + TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Width
          else
            TCuadro(Hijos.Objects[i]).LineaPadre.Linea3.Left := TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Left;
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea3.Top := TCuadro(Hijos.Objects[i]).LineaPadre.Linea2.Top;
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea3.Width := Trunc(AnchoLinea * CuadroZoom);
          TCuadro(Hijos.Objects[i]).LineaPadre.Linea3.Height := Trunc((EspacioHeight / 2) * CuadroZoom);
        end;
      end
      else
        if Assigned(TCuadro(Hijos.Objects[i]).LineaPadre) then
        begin
          TCuadro(Hijos.Objects[i]).LineaPadre.Destroy;
          TCuadro(Hijos.Objects[i]).LineaPadre := Nil;
        end;

      TMyPanel(TCuadro(Hijos.Objects[i]).sPanel).OnMouseDown := PanelMouseDown;

      // Checar cuales elementos no se deben de mostrar debido al filtro de "niveles mostrados"
      if (Niveles > 0) AND (TCuadro(Hijos.Objects[i]).Nivel > (Niveles - 1)) then
        TCuadro(Hijos.Objects[i]).sPanel.Visible := false
      else
      begin
        TCuadro(Hijos.Objects[i]).sPanel.Visible := true;
        // Calcular cual es el espacio más a la derecha y hacia abajo necesarios
        if TCuadro(Hijos.Objects[i]).sPanel.Left + TCuadro(Hijos.Objects[i]).sPanel.Width > RigthMost then
          RigthMost := TCuadro(Hijos.Objects[i]).sPanel.Left + TCuadro(Hijos.Objects[i]).sPanel.Width;
        if TCuadro(Hijos.Objects[i]).sPanel.Top + TCuadro(Hijos.Objects[i]).sPanel.Height > BottomMost then
          BottomMost := TCuadro(Hijos.Objects[i]).sPanel.Top + TCuadro(Hijos.Objects[i]).sPanel.Height;
        // generar la linea para unirlo con el padre
        if Assigned(TCuadro(Hijos.Objects[i]).Padre) then
          Lineas.Add(TLineas.Create(TCuadro(Hijos.Objects[i]).Padre.sPanel, TCuadro(Hijos.Objects[i]).sPanel));
      end;

      if TCuadro(Hijos.Objects[i]).Hijos.Count > 0 then
        DibujaHijos(TCuadro(Hijos.Objects[i]).Hijos, Rect(PadreLimite.Left + (MiEspacio * i),0,MiEspacio,0));

      Dibujar := False;
    end;
  end;

  procedure CalculaMaxHijos(Nodo: TStringList);
  Var
    Nivel: integer;
    i: integer;
  begin
    // primero checar si existe el nivel en el array
    if Nodo.Count > 0 then
    begin
      Nivel := TCuadro(Nodo.Objects[0]).Nivel;
      if High(HijosNivel) < TCuadro(Nodo.Objects[0]).Nivel then
      begin
        SetLength(HijosNivel, Nivel + 1);
        HijosNivel[Nivel] := Nodo.Count;
      end
      else  // ya existe el nodo, solo ver si el actual es el mayor para indicarlo
        if Nodo.Count > HijosNivel[Nivel] then
          HijosNivel[Nivel] := Nodo.Count;

      for i := 0 to Nodo.Count - 1 do
        if TCuadro(Nodo.objects[i]).Hijos.Count > 0 then
          CalculaMaxHijos(TCuadro(Nodo.objects[i]).Hijos);
    end;
  end;

begin
  Try
    // Calcular el espacio máximo
    MaximoHijos := 1;
    CalculaMaxHijos(Arbol);
    if FNiveles = 0 then
      FNiveles := high(HijosNivel) + 1;
    for i := low(HijosNivel) to FNiveles - 1 do
      MaximoHijos := MaximoHijos * HijosNivel[i];
    EspacioMaximo := (CuadroWidth + EspacioWidth) * MaximoHijos;

    if Recalcular then
    begin
      NivelAnt := TForm2(Application.MainForm).cmbNiveles.ItemIndex;
      NivelesAnt := TForm2(Application.MainForm).cmbNiveles.Items.Count;
      cmbNiveles.Clear;
      for i := high(HijosNivel) downto low(HijosNivel) do
        cmbNiveles.items.Add(IntToStr(i + 1));

      TForm2(Application.MainForm).cmbNiveles.Items := cmbNiveles.Items;
      TForm2(Application.MainForm).cmbNiveles.ItemIndex := NivelAnt + (cmbNiveles.Items.Count - NivelesAnt);

      //cmbNiveles.ItemIndex := 0;
      if (cmbNiveles.Items.Count <> NivelesAnt) then
      begin
        FNiveles := 0;
        TForm2(Application.MainForm).cmbNiveles.ItemIndex := 0;
      end;
    end;

    LocNivel := 0;
    Dibujar := False;
    RigthMost := 0;
    BottomMost := 0;
    Lineas := TList.Create;
    WidthAnt := PanelDiag.Width;
    prcAnt := ScrollBox1.HorzScrollBar.Position / (PanelDiag.Width - ScrollBox1.Width + 7);
    DibujaHijos(Lista, Rect(0,0,EspacioMaximo,0));
    PanelDiag.Width := RigthMost + 50;
    PanelDiag.Height := BottomMost + 50;
    if (ScrollBox1.HorzScrollBar.Position > 0) AND (PanelDiag.Width >= WidthAnt) then
      ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position + (PanelDiag.Width - WidthAnt);
    // Si el panel queda de meor tamaño que la ventana, ajustarlo al tamaño adecuado para la ventana
    if PanelDiag.Width < ScrollBox1.Width then
      PanelDiag.Width := ScrollBox1.Width;

    if PanelDiag.Height < ScrollBox1.Height then
      PanelDiag.Height := ScrollBox1.Height;
    Scroll.HorzPosition := -1;
    Scroll.VertPosition := -1;
  Finally
    ;
  End;
end;

procedure TFrmDiagramaOrg.DocumentosContratacion(LabelExt: TJvLabelExt);
Var
  tmp: TJvLabelExt;
  cdReporte: TClientDataSet;
  dsReporte: TDataSource;
begin
  tmp := LabelExt;
  cdReporte := TClientDataSet.Create(nil);
  dsReporte := TDataSource.Create(cdReporte);
  CrearConjunto(cdReporte,'rhu_doctosxcargo',ccCatalog);
  CargarDatosFiltrados(cdReporte,'idcargo',[tmp.idcargo]);
  cdReporte.Open;
  if cdReporte.recordCount > 0 then
  begin
    dsReporte.DataSet := cdReporte;
    frxdsReporte.DataSource := dsReporte;
    ClientModule1.ImprimeReporte('DoctosXCargo.fr3',frxrpReporte);
  end
  else
  begin
    InteliDialog.ShowModal('Información','No existen documentos asignados al cargo solicitado.',
      format('No se han definido documentos para el cargo [%s].',[tmp.titulocargo]),mtError,[mbOK],0);
  end;
  try
    frxdsReporte.DataSource := nil;
    dsReporte.DataSet := nil;
    cdReporte.Close;
    EliminarConjunto(cdReporte);
    cdReporte.Free;
    dsReporte.Free;
  except
    ;
  end;
end;

procedure TFrmDiagramaOrg.Eliminar1Click(Sender: TObject);
Var
  Mensaje: string;
  cdDepto: TClientDataSet;
  Cursor: TCursor;
  function TienePlazas(Nodo: Tcuadro): Boolean;
  Var
    i: integer;
  begin
    cdPlazas.Filtered := False;
    cdPlazas.Filter := Format('iddepartamento = %d',[Nodo.id]);
    cdPlazas.Filtered := true;
    if cdPlazas.RecordCount > 0 then   // Checar si tienen plazas
      Result := true
    else
      if Nodo.Hijos.Count = 0 then
        result := False
      else
      begin
        result := False;
        for i := 0 to Nodo.Hijos.Count - 1 do
          result := result or TienePlazas(TCuadro(Nodo.Hijos.Objects[i]));
      end;
  end;

begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      // No permitir borrar el nodo principal
      if Assigned(PanelActual) then
      begin
        if PanelActual.Cuadro.Nivel = 0 then
        begin
          InteliDialog.ShowModal('ERROR','No se puede eliminar el nodo principal',
            'En esta modalidad no esta permitido borrar el nodo principal.' +
            #10 + 'Si desea eliminarlo, deberá de hacerlo desde la ventana de administración de departamentos.',
            mtError,[mbOK],0);
          exit;
        End;

        // Buscar si el o su descendencia tienen plazas
        if TienePlazas(PanelActual.Cuadro) then
          InteliDialog.ShowModal('Información','Imposible borrar nodo.',
            'El nodo o alguno de sus descendientes tienen plazas asignadas por lo cual no puede ser borrado.' +
            #10 + 'Nigún cambio se ha hecho', mtInformation,[mbOK],0)
        else
        begin
          Mensaje := '¿Borrar el nodo actual';
          if PanelActual.Cuadro.Hijos.Count > 0 then
            Mensaje := Mensaje + ' y toda su descendencia?'
          else
            Mensaje := Mensaje + '?';
          if InteliDialog.ShowModal('Confirmación', Mensaje, 'Confirmar eliminación del nodo',mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
          begin

            //eliminar departemento
            cdDepto :=TclientDataset.Create(nil);
            if not CrearConjunto(cdDepto, 'nuc_departamento', ccUpdate) then
              raise InteligentException.CreateByCode(5, ['Departamento']);

            if Not  CargarDatosFiltrados(cdDepto, 'iddepartamento', [PanelActual.cuadro.Id]) then
              raise InteligentException.CreateByCode(6, ['Departamento', -9, 'IdDepartamento']);
            cdDepto.Open;

            if cdDepto.RecordCount = 0 then
              raise InteligentException.CreateByCode(24, ['Seleccione el departamento que desea eliminar.']);

            if cdDepto.RecordCount < 1 then
              raise InteligentException.CreateByCode(24, ['Existen uno o varios registros duplicados, favor de contactar a su administrador del sistema.']);

            cdDepto.Delete;
            cdDepto.ApplyUpdates(-1);
            cdDepto.Refresh;

            BorrarNodo(PanelActual.Cuadro);
            DibujarFlow(Arbol, True, FNiveles);
          end;
        end;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmDiagramaOrg.AsignarAspirantesalDepartamento1Click(
  Sender: TObject);
Var
  tmp: TJvLabelExt;
begin
  Try
    tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
    Application.CreateForm(TFrmAsignacionDePostulantes, FrmAsignacionDePostulantes);
    FrmAsignacionDePostulantes.nombreformulario:=self.Name;
    FrmAsignacionDePostulantes.ListaParametros := TStringList.Create;
    FrmAsignacionDePostulantes.Params := TParametros.Create;
    FrmAsignacionDePostulantes.Params.IdCargo := -1;
    FrmAsignacionDePostulantes.Params.IdDepartamento := tmp.iddepartamento;
    FrmAsignacionDePostulantes.Params.IdPlaza := -1;
    FrmAsignacionDePostulantes.Params.IdPlazaDetalle := -1;
    FrmAsignacionDePostulantes.Params.IdConvenio := FOrganizacion;
    FrmAsignacionDePostulantes.ListaParametros.AddObject(inttostr(FOrganizacion), FrmAsignacionDePostulantes.Params);
    FrmAsignacionDePostulantes.Show;
  Finally
    FrmAsignarPostulantes.Free;
  End;
end;

procedure TFrmDiagramaOrg.Asignarempleado1Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
begin
  MouseP.OnClick := False;
  tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);

  Try
    Application.CreateForm(TFrmAnalizaPerfiles, FrmAnalizaPerfiles);
    FrmAnalizaPerfiles.idcargo:=tmp.idcargo;
    FrmAnalizaPerfiles.Llavemenu:=-5;
    FrmAnalizaPerfiles.idplazadetalle:=tmp.idplazadetalle;
    FrmAnalizaPerfiles.ShowModal;
  Finally
    FrmAnalizaPerfiles.Free;
  End;
end;

procedure TFrmDiagramaOrg.Asignarpostulante1Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
begin
  Try
    tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
    Application.CreateForm(TFrmAsignacionDePostulantes, FrmAsignacionDePostulantes);
    FrmAsignacionDePostulantes.nombreformulario:=self.Name;
    FrmAsignacionDePostulantes.ListaParametros := TStringList.Create;
    FrmAsignacionDePostulantes.Params := TParametros.Create;
    FrmAsignacionDePostulantes.Params.IdCargo := tmp.idcargo;
    FrmAsignacionDePostulantes.Params.IdDepartamento := tmp.iddepartamento;
    FrmAsignacionDePostulantes.Params.IdPlaza := -1;
    FrmAsignacionDePostulantes.Params.IdPlazaDetalle := -1;
    FrmAsignacionDePostulantes.Params.IdConvenio := FOrganizacion;
    FrmAsignacionDePostulantes.ListaParametros.AddObject(inttostr(FOrganizacion), FrmAsignacionDePostulantes.Params);
    FrmAsignacionDePostulantes.Show;
  Finally
    FrmAsignarPostulantes.Free;
  End;
end;

procedure TFrmDiagramaOrg.BorrarNodo(Nodo: TCuadro);
var
  i: integer;
  encontrado: boolean;
begin
  // Si tiene hijos, borrarlos primero
  if Nodo.Hijos.Count >= 0 then
    while Nodo.Hijos.Count > 0 do
      BorrarNodo(Tcuadro(Nodo.Hijos.Objects[0]));

  // Borrar de la lista de lineas
  i := 0;
  encontrado := false;
  while (i < Lineas.Count) AND not Encontrado do
    if TLineas(Lineas[i]).Hijo = Nodo.sPanel then
    begin
      Lineas.Delete(i);
      Encontrado := true;
    end
    else
      inc(i);

  // agregarlo a la lista para borrar físicamente
  if Nodo.Hermanos.IndexOf('ID_' + IntToStr(Nodo.Id)) >= 0 then
  begin
    NodosBorrar.Add(TObject(Nodo.Id));
    Nodo.Hermanos.Delete(Nodo.Hermanos.IndexOf('ID_' + IntToStr(Nodo.Id)));
  end;

  Try
    if Assigned(PanelDiag.FindComponent(Nodo.sPanel.Name)) then
      PanelDiag.RemoveControl(Nodo.sPanel);
  Except
    ;
  End;

    if Assigned(Nodo.sPanel) then
      FreeAndNil(Nodo.sPanel);

    if Assigned(Nodo) then
      FreeAndNil(Nodo);
end;

procedure TFrmDiagramaOrg.FormActivate(Sender: TObject);
begin
  TForm2(Self.Parent).ReconocerDiagrama(Self);
  TForm2(Application.MainForm).cmbZoom.ItemIndex := ZoomIndex;
  TForm2(Application.MainForm).cmbNiveles.Items := cmbNiveles.Items;
  TForm2(Application.MainForm).cmbNiveles.ItemIndex := NivelIndex;
end;

procedure TFrmDiagramaOrg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PanelDiag.Repaint;

  {if Assigned(Arbol) and (Arbol.Count > 0) then
    BorrarNodo(Tcuadro(Arbol.Objects[0]));

  while PanelDiag.ControlCount > 0 do
    PanelDiag.RemoveControl(PanelDiag.Controls[0]);}

  Lineas.Clear;
  NodosBorrar.Destroy;
  PanelDiag.Destroy;

  if Assigned(cdPlazas) and (cdPlazas.Active) then
    cdPlazas.Close;

  EliminarConjunto([cdPlazas, cdPersonal]);

  TForm2(Self.Parent).IgnorarDiagrama;
  PanelActual := Nil;
  LiberarVentana(Self, Action);
end;

procedure TFrmDiagramaOrg.FormDeactivate(Sender: TObject);
begin
  //TForm2(Self.Parent).IgnorarDiagrama;
end;

procedure TFrmDiagramaOrg.FormShow(Sender: TObject);
var
  OldCursor: TCursor;
begin
  MyCanvas := PanelDiag.Canvas;
  Try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      if not CrearConjunto(cdPersonal,'nuc_personal',ccCatalog) then
        raise InteligentException.CreateByCode(5, ['personal']);

      if not CrearConjunto(cddocumentosxpostulantes,'rhu_documentos_checklist',ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documento por Postulante']);

      MouseP := TMousePanel.Create;
      PanelActual := Nil;
      FNodoColor := NodoColor;
      FNodoColorTo := NodoColorTo;

      AccedeACoordenadas(Self);
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
      on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmDiagramaOrg.sPanelDblClick(Sender: TObject);
begin
  if (GetKeyState(VK_CONTROL) >= 0) AND Assigned(Sender) and (((Sender.ClassType = TMyPanel) and (FNodo <> TMyPanel(Sender).Cuadro.Id)) or ((Sender.ClassType = TAdvSmoothLabel) and (FNodo <> TMyPanel(TAdvSmoothLabel(Sender).Parent).Cuadro.Id))) then
  begin
    Application.CreateForm(TFrmFichaDepartamento, FrmFichaDepartamento);
    FrmFichaDepartamento.IdDepartamento := PanelActual.Cuadro.Id;
    FrmFichaDepartamento.lblCodigo.Caption := PanelActual.Cuadro.Codigo;
    FrmFichaDepartamento.lblTitulo.Caption := PanelActual.Cuadro.Titulo;
    FrmFichaDepartamento.lblDescripcion.Caption := PanelActual.Cuadro.Descripcion;
    FrmFichaDepartamento.ShowModal;
  end;

  if (GetKeyState(VK_CONTROL) < 0) AND Assigned(Sender) and (((Sender.ClassType = TMyPanel) and (FNodo <> TMyPanel(Sender).Cuadro.Id)) or ((Sender.ClassType = TAdvSmoothLabel) and (FNodo <> TMyPanel(TAdvSmoothLabel(Sender).Parent).Cuadro.Id))) then
  begin
    Historial.Push(TAnterior.Create(FNodo, FNivelIni, FNiveles, ZoomIndex, Point(ScrollBox1.HorzScrollBar.Position,ScrollBox1.VertScrollBar.Position)));
    FNivelIni := 0;
    FNiveles := 0;

    // Si está visible el panel de cargos, quitarlo
    if ListaCargos.Visible then
    begin
      ListaCargos.Visible := False;
      TimerLeave.Enabled := False;
    end;

    if Sender.ClassType = TAdvSmoothLabel then
    begin
      FNodo := TMyPanel(TAdvSmoothLabel(Sender).Parent).Cuadro.Id;
    end
    else
    begin
      FNodo := TMyPanel(Sender).Cuadro.Id;
    end;
    MostrarDiagrama(FOrganizacion, FNodo);
  end;
end;

procedure TFrmDiagramaOrg.stpHistorialStepClick(Sender: TObject;
  StepIndex: Integer; StepMode: TStepMode);
Var
  Anterior: TAnterior;
  OldCursor: TCursor;
begin
  Try
    OldCursor := Screen.Cursor;
    Screen.Cursor := crAppStart;

    // Checar que efectivamente seleccione un nivel menor
    if StepIndex < stpHistorial.StepActions.Count - 1 then
    begin
      // Sacar todos los historiales hasta llegar al indicado
      while stpHistorial.StepActions.Count - 1 > StepIndex do
      begin
        Anterior := Historial.Pop;
        stpHistorial.StepActions.Delete(stpHistorial.StepActions.Count - 1);
      end;
      // Quitar el nivel en el que voy a quedar, ya que el procedimiento posterior es el que se encarga de ponerlo
      stpHistorial.StepActions.Delete(stpHistorial.StepActions.Count - 1);

      FNodo := Anterior.Nodo;
      FNivelIni := Anterior.NivelIni;
      FNiveles := Anterior.Niveles;
      TForm2(Application.MainForm).cmbZoom.ItemIndex := Anterior.Zoom;
      CuadroZoom := ValZoom[TForm2(Application.MainForm).cmbZoom.ItemIndex];
      MostrarDiagrama(FOrganizacion, FNodo);
      ScrollBox1.HorzScrollBar.Position := Anterior.Scroll.X;
      ScrollBox1.VertScrollBar.Position := Anterior.Scroll.Y;
    end;
  Finally
    Screen.Cursor := OldCursor;
  End;
end;

procedure TFrmDiagramaOrg.Timer1Timer(Sender: TObject);
begin
  // Verificar si se ha modificado algún scroll
  if Scroll.HorzPosition <> ScrollBox1.HorzScrollBar.Position then
    Scroll.HorzPosition := ScrollBox1.HorzScrollBar.Position;

  if Scroll.VertPosition <> ScrollBox1.VertScrollBar.Position then
    Scroll.VertPosition := ScrollBox1.VertScrollBar.Position;
end;

procedure TFrmDiagramaOrg.Historial1Click(Sender: TObject);
Var
  tmp: TJvLabelExt;
begin
  tmp := (((sender as TMenuItem).GetParentMenu as TAdvPopupMenu).PopupComponent as TJvLabelExt);
  ShowMessage(tmp.Caption);
end;

procedure TFrmDiagramaOrg.Imprimirdetalle1Click(Sender: TObject);
begin
  // Cargar los datos de los puestos
  cdPlazas.Filtered := False;
  cdPlazas.Filter := Format('iddepartamento = %d',[PanelActual.Cuadro.Id]);
  cdPlazas.Filtered := True;
  cdPlazas.First;
  mdPlazas.Close;
  mdPlazas.LoadFromDataSet(cdPlazas, cdPlazas.RecordCount, lmCopy);
  ClientModule1.ImprimeReporte('PlazasDetalle.fr3',frxrpDatosdelPersonal);
end;

procedure TFrmDiagramaOrg.EstablecerColores(Sender: TObject);
begin
  if Assigned(PanelActual) then
  begin
    TAdvSmoothPanel(PanelActual).Fill.BorderWidth := 1;
    TAdvSmoothPanel(PanelActual).Fill.Color := NodoColor;
    TAdvSmoothPanel(PanelActual).Fill.ColorTo := NodoColorTo;
    TAdvSmoothPanel(PanelActual).Fill.ColorMirror := NodoColorTo;
    TAdvSmoothPanel(PanelActual).Fill.ColorMirrorTo := NodoColorTo;
  end;

  TAdvSmoothPanel(Sender).Fill.BorderWidth := Trunc(AnchoLineaSel * CuadroZoom);
  TAdvSmoothPanel(Sender).Fill.Color := 16711680;
  TAdvSmoothPanel(Sender).Fill.ColorTo := 16711680;
  TAdvSmoothPanel(Sender).Fill.ColorMirror := 16711680;
  TAdvSmoothPanel(Sender).Fill.ColorMirrorTo := 16711680;

  PanelActual := TMyPanel(Sender);
end;

procedure TFrmDiagramaOrg.EditarPlazas;
begin
  if Assigned(PanelActual) then
  Try
    Application.CreateForm(TFrmPlazaRhu, FrmPlazaRhu);
    FrmPlazaRhu.IdOrganizacion := FOrganizacion;
    FrmPlazaRhu.IdDepartamento := PanelActual.Cuadro.Id;
    FrmPlazaRhu.TituloDepartamento := PanelActual.Cuadro.Titulo;
    FrmPlazaRhu.FormStyle := fsNormal;
    FrmPlazaRhu.Visible := false;

    FrmPlazaRhu.ShowModal;
  Finally
    FrmPlazaRhu.Free;
  End;
end;

end.
