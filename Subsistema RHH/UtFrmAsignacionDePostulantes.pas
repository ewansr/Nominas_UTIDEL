unit UtFrmAsignacionDePostulantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvSmoothButton, StdCtrls, DBCtrls, JvExControls, JvLabel,
  Spin, AdvGroupBox, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, DB, DBClient, Mask, RxToolEdit, RxCurrEdit, RXDBCtrl, URegistro,
  JvMemoryDataset, NxDBColumns, NxColumns, AdvShapeButton, NxCollection, Menus,
  frxClass, frxDBSet, frxCtrls, JvExStdCtrls, JvCombobox, CheckLst,
  AdvGlowButton, ComCtrls, JvExComCtrls, JvComCtrls;

type
  TMyCaja = class(TPanel)
    ScrollBox: TScrollBox;
    PanelTop: TPanel;
    constructor Create(AOwner: TComponent); override;
  end;

  TParametros = class
    IdCargo : Integer;
    IdDepartamento : Integer;
    IdPlazaDetalle : Integer;
    IdPlaza : Integer;
    IdConvenio : Integer;
  end;

  TDatosPostulante = class
    IdPostulante: Integer;
    CodigoPostulante: String;
    NombrePostulante: String;
    Categoria : Integer;
    Estado : String;
  end;

  TDatosCargo = class
    IdCargo : Integer;
    CantDoc : Integer;
  end;

  TNewAdvGlowButton = class(TAdvGlowButton)
  private
    CantidadPostulantes: Integer;
    IdPlaza: Integer;
    IdPlazaDetalle: Integer;
    IdCargo: Integer;
    IdDepartamento : Integer;
    IdPersonal : Integer;
    TituloPlazaDetalle : String;
    TituloCargo : String;
    TituloDepartamento : String;
    ListaPostulantes: TStringList;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TFrmAsignacionDePostulantes = class(TForm)
    Panel1: TPanel;
    PanelPrincipalSuperior: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    JvLabel8: TJvLabel;
    RxCalcEdit1: TRxCalcEdit;
    pnl1: TPanel;
    btnBtnClose: TAdvShapeButton;
    NxOptionButton2: TNxOptionButton;
    NxOptionButton1: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    BuscarPlaza1: TMenuItem;
    Salir1: TMenuItem;
    EvaluaciondelPostulanteDependiendoAlCargo1: TMenuItem;
    frxReport1: TfrxReport;
    frxDBplazadetalle: TfrxDBDataset;
    frxDBplaza: TfrxDBDataset;
    cddoctosxpostulante: TClientDataSet;
    Postuladosaestavacante1: TMenuItem;
    frxDBasignados: TfrxDBDataset;
    PostulantesParaestaVacante1: TMenuItem;
    sbMain: TScrollBox;
    PanelSecundarioIzquierdo: TPanel;
    clbPlaza: TCheckListBox;
    Splitter2: TSplitter;
    Panel11: TPanel;
    Panel9: TPanel;
    PanelPrincipalSecundario: TPanel;
    Panel2: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    N1: TMenuItem;
    clbCargos: TCheckListBox;
    Splitter1: TSplitter;
    Panel3: TPanel;
    JvLabel2: TJvLabel;
    JvLabel7: TJvLabel;
    ValDesde: TSpinEdit;
    JvLabel6: TJvLabel;
    ValHasta: TSpinEdit;
    Btn_BuscarPostulantes: TAdvSmoothButton;
    PopupMenu3: TPopupMenu;
    menu11: TMenuItem;
    N2: TMenuItem;
    CdPostulante: TClientDataSet;
    frxDBDPostulante: TfrxDBDataset;
    CdDocxPostulante: TClientDataSet;
    frxDBDocxPostulante: TfrxDBDataset;
    frxDBMemExperiencia: TfrxDBDataset;
    CdExperiencia: TClientDataSet;
    frxDBOrganizacion: TfrxDBDataset;
    MemExperiencia: TClientDataSet;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGridPostulantes: TNextDBGrid;
    CbFiltro: TComboBox;
    JvLabel1: TJvLabel;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    procedure FormShow(Sender: TObject);
    procedure MemCargosAfterScroll(DataSet: TDataSet);
    procedure Btn_BuscarPostulantesClick(Sender: TObject);
    procedure BotonDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BotonClick(Sender : TObject);
    procedure btnBtnCloseClick(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure EvaluaciondelPostulanteDependiendoAlCargo1Click(Sender: TObject);
    procedure NxOptionButton1Click(Sender: TObject);
    procedure Postuladosaestavacante1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure PostulantesParaestaVacante1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure clbPlazaClickCheck(Sender: TObject);
    procedure NxOptionButton2Click(Sender: TObject);
    procedure FormFiltroCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure clbCargosClickCheck(Sender: TObject);
    procedure BotonDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGridPostulantesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CbFiltroChange(Sender: TObject);
  private
    cargarplazas : boolean;
    cdAsignados: TClientDataSet;
    cdPlaza: TClientDataSet;
    cdPlazaDetalle: TClientDataSet;
    cdPlazas: TClientDataSet;
    cdPostulantes: TClientDataSet;

    //Cdreado por gabo
    cdAsigxPost : TClientDataset;
    CualBoton: TNewAdvGlowButton;

    //cdUpt: TClientDataSet;
    dsAsignados: TDataSource;
    dsPostulantes: TDataSource;
    CadSel: TStringList;
    FormFiltro: TForm;
    function TipoVariable(Variable: Variant): String;
    procedure CargarDepartamentos(Filtro: String);
    procedure QuitarPostulante(Sender: TObject);
    procedure ImpFichaPostulante(Sender: TObject);
    function CopiarEstructuraExp(Fuente, Destino: TClientDataSet): Boolean;
  public
    nombreformulario: string;
    idplaza : integer;
    idcargo: integer;
    iddepartamento : integer;
    ListaParametros :  TStringList;
    Params : TParametros;
  end;

const
  AltoBoton = 81;

var
  FrmAsignacionDePostulantes: TFrmAsignacionDePostulantes;

implementation

uses
  UInteliDialog, ClientModuleUnit1, xDatabase, UTFrmPlazaRhu;

{$R *.dfm}

constructor TMyCaja.Create(AOwner: TComponent);
begin
  Inherited;

  Self.Width := 260;

  // Crear el panel superior
  PanelTop := TPanel.Create(Self);
  PanelTop.Parent := Self;
  PanelTop.Height := 41;
  PanelTop.Align := alTop;

  // Crear el scrollbox
  ScrollBox := TScrollBox.Create(Self);
  ScrollBox.Parent := Self;
  ScrollBox.Align := alClient;
end;

constructor TNewAdvGlowButton.Create;
begin
  Inherited;
  CantidadPostulantes := -1;
  IdPlaza := -1;
  IdPlazaDetalle := -1;
  IdDepartamento := -1;
  IdCargo := -1;
  TituloPlazaDetalle:= '';
  TituloCargo:= '';
  TituloDepartamento:= '';
  ListaPostulantes := TStringList.Create;
end;

destructor TNewAdvGlowButton.Destroy;
begin
  Inherited;
  ListaPostulantes.Free;
end;

procedure TFrmAsignacionDePostulantes.Btn_BuscarPostulantesClick(Sender: TObject);
var
  Cursor: TCursor;
  i: Integer;
  CadSel: String;
begin
  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;
  {    if cbDepartamento.Items.Count = 0 then
        raise inteligentexception.Create('Debe de seleccionar un departamento y luego un cargo');
}
      // Armar la cadena de cargos seleccionados
      CadSel := '';
      for i := 0 to clbCargos.Count -1 do
        if clbCargos.Checked[i] then
          CadSel := CadSel + IntToStr(TDatosCargo(clbCargos.Items.Objects[i]).IdCargo) + ',';
          //CadSel := CadSel + IntToStr(Int64(clbCargos.Items.Objects[i])) + ','; DatosCargo

      if CadSel <> '' then
      begin
        CadSel := Copy(CadSel, 1, Length(CadSel) -1);
        cdPostulantes.Close;
        if Not CargarDatosFiltrados(cdPostulantes, 'GrupoCargos,Min,Max', [CadSel, ValDesde.Value, ValHasta.Value]) then  //[Integer(cbCargo.Items.Objects[cbCargo.ItemIndex]), spinedit1.Value, spinedit2.Value, 'Si']) then
          raise inteligentconnection.CreateByCode(21, ['Postulantes']);
        cdPostulantes.Open;
        CbFiltro.Enabled:=true;
        CbFiltro.ItemIndex := 0;
      end;


    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:inteligentexception do
    begin
       InteliDialog.ShowModal('Importante', '' + #10 + e.Message, mtConfirmation, [mbOk], 0);
    end;

    on e:inteligentconnection do
    begin
       InteliDialog.ShowModal('Error al cargar ventana de busqeda', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
       InteliDialog.ShowModal('Error al cargar ventana de busqeda', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmAsignacionDePostulantes.btnBtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmAsignacionDePostulantes.clbCargosClickCheck(Sender: TObject);
var
  Cta, i: Integer;
begin
  for i := 0 to clbCargos.Count -1 do
  begin
    if clbCargos.Checked[i] then
      Inc(Cta)
  end;

  Btn_BuscarPostulantes.Enabled := Cta > 0;
  ValDesde.Enabled := Cta > 0;
  ValHasta.Enabled := Cta > 0;
end;

procedure TFrmAsignacionDePostulantes.clbPlazaClickCheck(Sender: TObject);
var
  i: Integer;
  Caja: TMyCaja;
  Nombre: String;
  Control: TControl;
  Boton: TNewAdvGlowButton;
  PostulantesDatos: TDatosPostulante;
begin
  // Recorrer todos los items seleccionados
  CadSel.Clear;
  clbCargos.Items.Clear;
  for i := 0 to clbPlaza.Items.Count -1 do
  begin
    Nombre := 'ID_' + IntToStr(Integer(clbPlaza.Items.Objects[i]));

    if (clbPlaza.Checked[i]) and (CadSel.IndexOf(IntToStr(Integer(clbPlaza.Items.Objects[i]))) = -1) then
    begin
      Caja := TMyCaja(sbMain.FindChildControl(Nombre));

      if Not Assigned(Caja) then
      begin
        Caja := TMyCaja.Create(sbMain);
        Caja.Parent := sbMain;
        Caja.Align := alLeft;
        Caja.Name := Nombre;
        Caja.PanelTop.Caption := clbPlaza.Items.Strings[i];

        // Recorrer todas las plazas detalles correspondientes a esta plaza
        cdPlazas.Locate('IdPlaza', Integer(clbPlaza.Items.Objects[i]), []);
        while (Not cdPlazas.Eof) and (cdPlazas.FieldByName('IdPlaza').AsInteger = Integer(clbPlaza.Items.Objects[i])) do
        begin
          Boton := TNewAdvGlowButton.Create(Caja);
          Boton.Top := Caja.ScrollBox.ControlCount * AltoBoton;
          Boton.Layout := blGlyphLeftAdjusted;
          Boton.Height := AltoBoton;
          Boton.Parent := Caja.ScrollBox;
          Boton.Align := alTop;
          Boton.OnDragDrop := BotonDragDrop;
          Boton.OnDragOver := BotonDragOver;
          Boton.OnClick := BotonClick;

          // Establecer el color del boton de acuerdo a su estado
          Case cdPlazas.FieldByName('IdPersonal').AsInteger of
            -5: begin
              // Color verde significa disponible
              Boton.Appearance.Color := clGreen;
              Boton.Appearance.ColorMirror := clGreen;
              Boton.Appearance.ColorMirrorTo := clLime;
              Boton.Appearance.ColorTo := clLime;

              Boton.Appearance.ColorHot := clLime;
              Boton.Appearance.ColorHotTo := clLime;
              Boton.Appearance.ColorMirrorHot := clLime;
              Boton.Appearance.ColorMirrorHotTo := clLime;
            end;
            -6: begin
              // Color rojo significa cancelado
              Boton.Appearance.Color := clMaroon;
              Boton.Appearance.ColorMirror := clMaroon;
              Boton.Appearance.ColorMirrorTo := clRed;
              Boton.Appearance.ColorTo := clRed;

              Boton.Appearance.ColorHot := clRed;
              Boton.Appearance.ColorHotTo := clRed;
              Boton.Appearance.ColorMirrorHot := clRed;
              Boton.Appearance.ColorMirrorHotTo := clRed;
            end;
          End;

          try
            cdAsigxPost.IndexFieldNames:='idplazadetalle';
            cdAsigxPost.SetRange([cdPlazas.FieldByName('idplazadetalle').AsInteger], [cdPlazas.FieldByName('idplazadetalle').AsInteger]);
            if cdAsigxPost.RecordCount = 0 then
              Boton.CantidadPostulantes:= 0
            else
            begin
              while not cdAsigxPost.Eof do
              begin
                PostulantesDatos := TDatosPostulante.Create;
                PostulantesDatos.IdPostulante:= cdAsigxPost.FieldByName('idpostulante').AsInteger;
                if cdAsigxPost.FieldByName('categoria').AsInteger < 0 then
                begin
                  PostulantesDatos.Categoria:=cdAsigxPost.FieldByName('categoria').AsInteger;
                  PostulantesDatos.Estado:= cdAsigxPost.FieldByName('Estado').AsString;
                  PostulantesDatos.CodigoPostulante:= cdAsigxPost.FieldByName('codigopostulante').AsString;
                  PostulantesDatos.NombrePostulante:= cdAsigxPost.FieldByName('Nombres').AsString+' '+
                  cdAsigxPost.FieldByName('AMaterno').AsString+' '+
                  cdAsigxPost.FieldByName('APaterno').AsString+' - ('+
                  cdAsigxPost.FieldByName('Estado').AsString+') - '+
                  cdAsigxPost.FieldByName('codigopostulante').AsString;
                end
                else
                begin
                  PostulantesDatos.Categoria:=cdAsigxPost.FieldByName('categoria').AsInteger;
                  PostulantesDatos.Estado:= cdAsigxPost.FieldByName('Estado').AsString;
                  PostulantesDatos.CodigoPostulante:= cdAsigxPost.FieldByName('codigopersonal').AsString;
                  PostulantesDatos.NombrePostulante:= cdAsigxPost.FieldByName('Nombres').AsString+' '+
                  cdAsigxPost.FieldByName('AMaterno').AsString+' '+
                  cdAsigxPost.FieldByName('APaterno').AsString+' - ('+
                  cdAsigxPost.FieldByName('Estado').AsString+') - '+
                  cdAsigxPost.FieldByName('codigopersonal').AsString;
                end;

                Boton.ListaPostulantes.AddObject(PostulantesDatos.NombrePostulante, PostulantesDatos);
                Boton.CantidadPostulantes:= Boton.ListaPostulantes.Count;
                cdAsigxPost.Next;
              end;
            end;
          finally
            cdAsigxPost.CancelRange;
          end;

          Boton.IdPlaza:= cdPlazas.FieldByName('idplaza').AsInteger;
          Boton.IdPlazaDetalle:= cdPlazas.FieldByName('idplazadetalle').AsInteger;
          Boton.IdCargo:= cdPlazas.FieldByName('IdCargo').AsInteger;
          Boton.IdDepartamento:= cdPlazas.FieldByName('IdDepartamento').AsInteger;
          Boton.TituloPlazaDetalle:= cdPlazas.FieldByName('CodigoPlazaDetalle').AsString;
          Boton.TituloCargo:= cdPlazas.FieldByName('TituloCargo').AsString;
          Boton.TituloDepartamento:= cdPlazas.FieldByName('TituloDepartamento').AsString;
          Boton.IdPersonal:= cdPlazas.FieldByName('IdPersonal').AsInteger;
          if cdPlazas.FieldByName('IdPersonal').AsInteger = -5 then
            Boton.Caption := cdPlazas.FieldByName('CodigoPlazaDetalle').AsString + ' - ' + cdPlazas.FieldByName('TituloDepartamento').AsString + #10 + cdPlazas.FieldByName('TituloCargo').AsString + #10 + 'Número de Postulantes: ' + inttostr(Boton.CantidadPostulantes);

          if cdPlazas.FieldByName('IdPersonal').AsInteger > 0 then
            Boton.Caption := cdPlazas.FieldByName('CodigoPlazaDetalle').AsString + ' - ' + cdPlazas.FieldByName('TituloDepartamento').AsString + #10 + cdPlazas.FieldByName('TituloCargo').AsString + #10 + cdPlazas.FieldByName('CodigoPersonal').AsString +' - '+ cdPlazas.FieldByName('NombreCompleto').AsString;

          if cdPlazas.FieldByName('IdPersonal').AsInteger = -6 then
            Boton.Caption := cdPlazas.FieldByName('CodigoPlazaDetalle').AsString + ' - ' + cdPlazas.FieldByName('TituloDepartamento').AsString + #10 + cdPlazas.FieldByName('TituloCargo').AsString + #10 + 'CANCELADA';

          cdPlazas.Next;
        end;
      end;
      CadSel.Add(IntToStr(Integer(clbPlaza.Items.Objects[i])));
    end;

    if Not clbPlaza.Checked[i] then
    begin
      // Verificar si la caja de datos existe, si es así esta debe ser eliminada
       Control := sbMain.FindChildControl(Nombre);
        if Assigned(Control) then
          Control.Destroy;
    end;
  end;

  CargarDepartamentos(CadSel.CommaText);
end;

procedure TFrmAsignacionDePostulantes.DBLookupComboBox2Click(Sender: TObject);
begin
  {if not (TipoVariable(dblookupcombobox1.KeyValue)='Nula') or (TipoVariable(dblookupcombobox1.KeyValue)='Vacia')  then
     AdvSmoothButton2.Enabled:=true;}
end;

procedure TFrmAsignacionDePostulantes.DBLookupComboBox3Click(Sender: TObject);
begin
  {cdPlazas.CancelRange;
  cdPlazas.IndexFieldNames:='idplaza';
  cdPlazas.SetRange([memplazas.FieldByName('idplaza').AsInteger], [memplazas.FieldByName('idplaza').AsInteger]);
  cdPlazas.ApplyRange;
  rxcalcedit1.Value := cdPlazas.RecordCount;
  if cdasignados.Active=true then
  begin
    if Not CargarDatosFiltrados(cdasignados, 'Libres,idplaza,idcargo,iddepartamento',['No', memplazas.FieldByName('idplaza').AsInteger, MemCargos.FieldByName('IdCargo').AsInteger, Memdepartamentos.FieldByName('iddepartamento').AsInteger ]) then
      raise inteligentconnection.CreateByCode(6, ['Postulantes', 'No|' + IntToStr(MemCargos.FieldByName('IdCargo').AsInteger), 'Libres|IdPlazaDetalle']);
    cdasignados.Refresh;
  end;}
end;

procedure TFrmAsignacionDePostulantes.EvaluaciondelPostulanteDependiendoAlCargo1Click(
  Sender: TObject);
var
  locname : string;
begin
  try
    if cdpostulantes.Active=false then
      raise inteligentexception.Create('Debe de Buscar lso postulantes para poder imprimir lso reportes');

    if cddoctosxpostulante.Active=false then
    begin
      if Not CrearConjunto(cddoctosxpostulante, 'rhu_docxpostulante', ccCatalog) then
        raise inteligentconnection.CreateByCode(5, ['Postulantes']);
      if Not CargarDatosFiltrados(cddoctosxpostulante, 'IdPostulante',[cdpostulantes.FieldByName('idpostulante').AsInteger]) then
        raise inteligentconnection.CreateByCode(6, ['Postulantes', 'Si', 'Libres']);
      cddoctosxpostulante.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cddoctosxpostulante, 'IdPostulante',[cdpostulantes.FieldByName('idpostulante').AsInteger]) then
        raise inteligentconnection.CreateByCode(6, ['Postulantes', 'Si', 'Libres']);
      cddoctosxpostulante.Refresh;
    end;

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmAsignacionDePostulantes-AnalisisPostulantexPuesto.fr3';
    if FileExists(LocName) then
    begin
      frxReport1.LoadFromFile(LocName);
      frxReport1.ShowReport(TRUE);
    end;

  except
    on e:inteligentexception do
    begin
       InteliDialog.ShowModal('Importante', '' + #10 + e.Message, mtConfirmation, [mbOk], 0);
    end;

    on e:inteligentconnection do
    begin
       InteliDialog.ShowModal('Error al imprimri el reporte', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
       InteliDialog.ShowModal('Error al seleccionar el puesto', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

procedure TFrmAsignacionDePostulantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  Nombre: String;
  Control: TControl;
  i: integer;
begin
//Lineas insertadas por gabo####################################################
{   showmessage(inttostr(clbPlaza.Items.Count));
    for i := 0 to clbPlaza.Items.Count -1 do
    begin
       Nombre := 'ID_' + IntToStr(Integer(clbPlaza.Items.Objects[i]));
       if (clbPlaza.Checked[i]) then
       begin
        Control := sbMain.FindChildControl(Nombre);
        if Assigned(Control) then
          Control.Destroy;
       end;
    end;}



//##############################################################################

  if assigned(ListaParametros) then
    ListaParametros.Free;

  LiberarVentana(Self, Action);
  EliminarConjunto([cdpostulantes, cddoctosxpostulante, cdasignados, cdplazadetalle, cdplaza, cdAsigxPost]);

  // Grabar los tamaños de los paneles principales
  SetRegistry('\Ventanas', '\' + Self.Name, PanelPrincipalSecundario.Name, IntToStr(PanelPrincipalSecundario.Height));
  SetRegistry('\Ventanas', '\' + Self.Name, PanelSecundarioIzquierdo.Name, IntToStr(PanelSecundarioIzquierdo.Height));
  SetRegistry('\Ventanas', '\' + FormFiltro.Name, 'Top', IntToStr(FormFiltro.Top));
  SetRegistry('\Ventanas', '\' + FormFiltro.Name, 'Left', IntToStr(FormFiltro.Left));
  SetRegistry('\Ventanas', '\' + FormFiltro.Name, 'Width', IntToStr(FormFiltro.Width));
  SetRegistry('\Ventanas', '\' + FormFiltro.Name, 'Height', IntToStr(FormFiltro.Height));
end;

procedure TFrmAsignacionDePostulantes.FormFiltroCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := False;
  InteliDialog.ShowModal('No es posible cerrar esta ventana de manera directa', 'Esta ventana es dependiente de la ventana de selección de Postulantes, debido a ello no puede ser cerrada de manera directa.', mtInformation, [mbOk], 0);
end;

procedure TFrmAsignacionDePostulantes.FormCreate(Sender: TObject);
var
  aux : integer;
begin
  Application.MainForm.Enabled := False;
  IdCargo := -1;
  IdDepartamento := -1;
  CadSel := TStringList.Create;

  aux:=-1;
  CbFiltro.AddItem('Todos', TObject(aux));
  aux:=-5;
  CbFiltro.AddItem('Aspirantes', TObject(aux));
  aux:=1;
  CbFiltro.AddItem('Personal', TObject(aux));
  CbFiltro.ItemIndex:=0;
  CbFiltro.Enabled := false;


  cdAsignados := TClientDataSet.Create(Self);
  cdPlazaDetalle := TClientDataSet.Create(Self);
  cdPlaza := TClientDataSet.Create(Self);
  cdPlazas := TClientDataSet.Create(Self);
  cdPostulantes := TClientDataSet.Create(Self);
  //cdUpt := TClientDataSet.Create(Self);
  cdAsigxPost := TClientDataSet.Create(Self);

  dsAsignados := TDataSource.Create(Self);
  dsPostulantes := TDataSource.Create(Self);

  dsAsignados.DataSet := cdAsignados;
  dsPostulantes.DataSet := cdPostulantes;

  DBGridPostulantes.DataSource := dsPostulantes;


    // Abrir la ventana de filtro
        FormFiltro := TForm.Create(Self);
        FormFiltro.Name := 'VentanaFiltro';
        FormFiltro.OnCloseQuery := FormFiltroCloseQuery;
        FormFiltro.FormStyle := fsStayOnTop;


        Try
          FormFiltro.Height := StrToInt(VarRegistry('\Ventanas', '\' + FormFiltro.Name, 'Height'));
        Except
          ;
        End;

        Try
          FormFiltro.Width := StrToInt(VarRegistry('\Ventanas', '\' + FormFiltro.Name, 'Width'));
        Except
          ;
        End;

        Try
          FormFiltro.Top := StrToInt(VarRegistry('\Ventanas', '\' + FormFiltro.Name, 'Top'));
        Except
          ;
        End;

        Try
          FormFiltro.Left := StrToInt(VarRegistry('\Ventanas', '\' + FormFiltro.Name, 'Left'));
        Except
          ;
        End;

        FormFiltro.Show;

        PanelPrincipalSuperior.Parent := FormFiltro;
        PanelPrincipalSuperior.Align := alClient;
end;

procedure TFrmAsignacionDePostulantes.FormDestroy(Sender: TObject);
begin
  Application.MainForm.Enabled := True;
  CadSel.Free;

  dsAsignados.Free;
  dsPostulantes.Free;

  cdAsignados.Free;
  cdPlaza.Free;
  cdPlazaDetalle.Free;
  cdPlazas.Free;
  cdPostulantes.Free;
  //cdUpt.Free;
end;

procedure TFrmAsignacionDePostulantes.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  AccedeACoordenadas(Self);

  // Obtener los tamaño de los paneles
  Try
    PanelPrincipalSecundario.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, PanelPrincipalSecundario.Name));
  Except
    ;
  End;

  Try
    PanelSecundarioIzquierdo.Height := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, PanelSecundarioIzquierdo.Name));
  Except
    ;
  End;

  ValDesde.Value := 100;
  ValHasta.Value := 100;

  Try
    Cursor := Screen.Cursor;
    InicializarProgress(0, 8, 0);

    Try
      Screen.Cursor := crAppStart;

      IncrementarProgress(1);
      if Not CrearConjunto(cdPlazas, 'rhu_plazadetalle', ccCatalog) then
        raise inteligentconnection.CreateByCode(5, ['Postulantes']);
        if (assigned(ListaParametros)) and (ListaParametros.Count > 0) then
        begin
          if Not CargarDatosFiltrados(cdPlazas, 'IdCargo,IdDepartamento,IdPlazaDetalle,IdPlaza,IdOrganizacion',
          [TParametros(ListaParametros.Objects[(ListaParametros.Count-1)]).IdCargo,
          TParametros(ListaParametros.Objects[(ListaParametros.Count-1)]).IdDepartamento,
          TParametros(ListaParametros.Objects[(ListaParametros.Count-1)]).IdPlazaDetalle,
          TParametros(ListaParametros.Objects[(ListaParametros.Count-1)]).IdPlaza,
          TParametros(ListaParametros.Objects[(ListaParametros.Count-1)]).IdConvenio]) then
            raise inteligentconnection.CreateByCode(6, ['Postulantes', 'Si', 'Libres']);
        end
        else
        begin
          if Not CargarDatosFiltrados(cdPlazas, 'IdPlazaDetalle',[-1]) then
            raise inteligentconnection.CreateByCode(6, ['Postulantes', 'Si', 'Libres']);
        end;
      cdPlazas.Open;

      IncrementarProgress(1);
      if Not CrearConjunto(cdplazadetalle, 'rhu_plazadetalle', ccCatalog) then
        raise inteligentconnection.CreateByCode(5, ['Postulantes']);
      if Not CargarDatosFiltrados(cdplazadetalle, 'IdPlaza,IdCargo,IdDepartamento',[IdPlaza, IdCargo, IdDepartamento]) then
        raise inteligentconnection.CreateByCode(6, ['Postulantes', 'Si', 'Libres']);
      cdplazadetalle.Open;

      //Dataset Creado por gabo
      if Not CrearConjunto(cdAsigxPost, 'rhu_asignxplazaextras', ccCatalog) then
        raise inteligentconnection.CreateByCode(5, ['Aginaciones']);
      if Not CargarDatosFiltrados(cdAsigxPost, 'idasignacionxplaza',[-1]) then
        raise inteligentconnection.CreateByCode(6, ['Asignaciones', -1, 'Postulantes']);
      cdAsigxPost.Open;

      IncrementarProgress(1);
      if Not CrearConjunto(cdPostulantes, 'rhu_vacantexpostulante', ccSelect) then
        raise inteligentconnection.CreateByCode(5, ['Postulantes']);

      InicializarProgress(0, cdPlazas.RecordCount * 2, cdPlazas.RecordCount);
      cdPlazas.First;
      while not cdPlazas.Eof do
      begin
        IncrementarProgress(1);
        if clbPlaza.Items.IndexOf(cdPlazas.FieldByName('CodigoPlaza').AsString) = -1 then
          clbPlaza.Items.AddObject(cdPlazas.FieldByName('CodigoPlaza').AsString, TObject(cdPlazas.FieldByName('IdPlaza').AsInteger));

        cdPlazas.Next;
      end;
    Finally
      Screen.Cursor := Cursor;
      AsignarProgress(0);
    End;
  Except
    on e:InteligentConnection do
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

procedure TFrmAsignacionDePostulantes.MemCargosAfterScroll(DataSet: TDataSet);
begin
  try
    if  (cdpostulantes.Active=true) and (cdasignados.Active=true) then
    begin
      if InteliDialog.ShowModal('Advertencia al cambiar de Cargo', 'Si usted cambia de cargo, se perdera el filtro de bsuqqueda de postulantes y tendra que filtrarlos nuevamente, Desea cambiar de departamento?' , mtConfirmation, [mbYes, mbNo], 0)= mrNo then
      begin
        raise inteligentexception.Create('');
      end
      else
      begin
        cdpostulantes.Active:=false;
        cdpostulantes.Active:=false;
      end;
    end;

    cdplazadetalle.CancelRange;
    cdplazadetalle.IndexFieldNames:='IdDepartamento;IdCargo';
    {cdplazadetalle.SetRange([Memdepartamentos.FieldByName('iddepartamento').AsInteger, MemCargos.FieldByName('IdCargo').AsInteger], [Memdepartamentos.FieldByName('iddepartamento').AsInteger, MemCargos.FieldByName('IdCargo').AsInteger]);
    cdplazadetalle.ApplyRange;}
    rxcalcedit1.Value:=cdplazadetalle.RecordCount;
  except
    on e:inteligentexception do
    begin
       ;
    end;

    on e:exception do
    begin
       InteliDialog.ShowModal('Error al seleccionar el puesto', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmAsignacionDePostulantes.BotonClick(Sender : TObject);
var
  Point : Tpoint;
  i : Integer;
  MenuPrincipal : TMenuItem;
  SubMenu : TMenuItem;
begin
  try
    if PopupMenu3.Items.Count > 0 then
      PopupMenu3.Items.Clear;

   // Respaldar el botón en el cual se hizo click
    CualBoton := TNewAdvGlowButton(Sender);

    MenuPrincipal := TMenuItem.Create(PopupMenu3);
    MenuPrincipal.Caption:='Imprimir Informacion de la Plaza';
    MenuPrincipal.ImageIndex := 13;
    PopupMenu3.Items.Add(MenuPrincipal);


    if CualBoton.IdPersonal > 0 then
    begin
      MenuPrincipal := TMenuItem.Create(PopupMenu3);
      MenuPrincipal.Caption:='Imprimir Ficha de Personal';
      MenuPrincipal.ImageIndex := 13;
      PopupMenu3.Items.Add(MenuPrincipal);
    end;


    if (CualBoton.IdPersonal = -5) and (CualBoton.ListaPostulantes.Count > 0) then
    begin
      MenuPrincipal := TMenuItem.Create(PopupMenu3);
      MenuPrincipal.Caption:='Imprimir Fichas de los Aspirantes';
      MenuPrincipal.ImageIndex := 13;
      PopupMenu3.Items.Add(MenuPrincipal);

      MenuPrincipal := TMenuItem.Create(PopupMenu3);
      MenuPrincipal.Caption:='-';
      PopupMenu3.Items.Add(MenuPrincipal);

      CualBoton.ListaPostulantes.Sort;
      for i := 0 to CualBoton.ListaPostulantes.Count-1 do
      begin
        MenuPrincipal := TMenuItem.Create(PopupMenu3);
        MenuPrincipal.Caption := CualBoton.ListaPostulantes[i];
        if TDatosPostulante(CualBoton.ListaPostulantes.Objects[i]).Categoria > 0 then
          MenuPrincipal.ImageIndex := 6;

        SubMenu := TMenuItem.Create(PopupMenu3);
        if TDatosPostulante(CualBoton.ListaPostulantes.Objects[i]).Categoria > 0 then
          SubMenu.Caption := 'Ver ficha de Personal'
        else
          SubMenu.Caption := 'Ver ficha de Aspirante';
        SubMenu.ImageIndex := 13;
        SubMenu.OnClick :=ImpFichaPostulante;
        MenuPrincipal.Add(SubMenu);

        SubMenu := TMenuItem.Create(PopupMenu3);
        SubMenu.Caption := 'Quitar de Solicitantes...';
        SubMenu.ImageIndex := 16;
        SubMenu.OnClick := QuitarPostulante;
        MenuPrincipal.Add(SubMenu);

        PopupMenu3.Items.Add(MenuPrincipal);
      end;
    end;

    GetCursorPos(Point);
    PopupMenu3.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionDePostulantes.ImpFichaPostulante(Sender: TObject);
var
  FieldName: string;
  Cursor: TCursor;
  i: Integer;

  function CalcularAntiguedadCargo(Duracion : word; Cargo : string): string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Cargo + ' - Antiguedad: ' + CadDura;
    Result:=Cadena;
  end;

begin
  try
    try
      if not CrearConjunto(CdPostulante, 'rhu_postulante', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not  CargarDatosFiltrados(CdPostulante, 'idpostulante', [TDatosPostulante(CualBoton.ListaPostulantes.Objects[TMenuItem(Sender).Parent.MenuIndex -2]).IdPostulante]) then
        raise InteligentException.CreateByCode(6, ['Postulantes', -1, 'IdPostulante']);
      CdPostulante.Open;

      if not CrearConjunto(cddocxpostulante, 'rhu_docxpostulante', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentación de Postulantes']);
      if Not  CargarDatosFiltrados(cddocxpostulante, 'idpostulante', [TDatosPostulante(CualBoton.ListaPostulantes.Objects[TMenuItem(Sender).Parent.MenuIndex -2]).IdPostulante]) then
        raise InteligentException.CreateByCode(6, ['Documentación de Postulantes', -9, 'IdPostulante']);
      cddocxpostulante.Open;

      if not CrearConjunto(CdExperiencia, 'rhu_documentosrecomendacion', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not  CargarDatosFiltrados(CdExperiencia, 'idpostulante', [TDatosPostulante(CualBoton.ListaPostulantes.Objects[TMenuItem(Sender).Parent.MenuIndex -2]).IdPostulante]) then
        raise InteligentException.CreateByCode(6, ['Documentos Recomendacion', -9, 'IdPostulante']);
      CdExperiencia.Open;

      if Not CopiarEstructuraExp(CdExperiencia, MemExperiencia) then
        raise InteligentException.CreateByCode(16, ['Documentos Recomendacion']);

      MemExperiencia.First;
      while not MemExperiencia.Eof do
      begin
       MemExperiencia.Delete;
      end;


      CdExperiencia.First;

      while not CdExperiencia.Eof do
      begin
        MemExperiencia.Append;
        for i := 0 to CdExperiencia.FieldDefs.Count -1 do
        begin
          FieldName := CdExperiencia.FieldDefs.Items[i].Name;
          MemExperiencia.FieldByName(FieldName).AsVariant := CdExperiencia.FieldByName(FieldName).AsVariant;
        end;
        MemExperiencia.FieldByName('Experiencia').AsString:=CalcularAntiguedadCargo(CdExperiencia.FieldByName('Duracion').AsInteger, CdExperiencia.FieldByName('Titulocargo').AsString);
        MemExperiencia.Post;

        CdExperiencia.Next;
      end;

      if CdExperiencia.RecordCount = 0 then
      begin
        // Si no existen registros se deberá grabar un registro "falso" que indique que no existen documentos
        MemExperiencia.Append;
        for i := 0 to MemExperiencia.FieldDefs.Count -1 do
        begin
          FieldName := MemExperiencia.FieldDefs.Items[i].Name;
          MemExperiencia.FieldByName(FieldName).AsString := '';
        end;
        MemExperiencia.FieldByName('IdPostulante').AsInteger := TDatosPostulante(CualBoton.ListaPostulantes.Objects[TMenuItem(Sender).Parent.MenuIndex -2]).IdPostulante;
        MemExperiencia.FieldByName('Experiencia').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
        MemExperiencia.FieldByName('TituloCargo').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
        MemExperiencia.Post;
      end;

      ClientModule1.ImprimeReporte('CatalogoPostulantesPreview.fr3', frxReport1);
    finally
      cdPostulantes.Close;
      cddocxpostulante.Close;
      CdExperiencia.Close;
      EliminarConjunto([cdPostulante, cddocxpostulante, CdExperiencia]);
    end;
  except
      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;


procedure TFrmAsignacionDePostulantes.QuitarPostulante(Sender: TObject);
var
  CdQpUpt : TClientDataset;
begin
  try
    try
      CdQpUpt:= TClientDataset.Create(nil);
      if Assigned(CualBoton) then
      begin
        //showmessage(CualBoton.ListaPostulantes[TMenuItem(Sender).Parent.MenuIndex -2]);
        if Not CrearConjunto(CdQpUpt, 'rhu_asignacionxplaza', ccUpdate) then
          raise InteligentConnection.CreateByCode(5, ['Aginaciones']);
        if Not CargarDatosFiltrados(CdQpUpt, 'idpostulante,idcargo,iddepartamento,idplazadetalle',[TDatosPostulante(CualBoton.ListaPostulantes.Objects[TMenuItem(Sender).Parent.MenuIndex -2]).IdPostulante, CualBoton.IdCargo, CualBoton.IdDepartamento, CualBoton.IdPlazaDetalle]) then
          raise InteligentConnection.CreateByCode(6, ['Postulantes', cdPostulantes.FieldByName('CodigoPostulante').AsString, 'Código de Postulante']);
        CdQpUpt.Open;

        if InteliDialog.ShowModal('Quitar de Solicitantes', '¿Desea quitar de la lista de Solicitantes a: ' + CualBoton.ListaPostulantes[TMenuItem(Sender).Parent.MenuIndex -3] + ', ' +
                                  'Correspondiente a la Solicitud de Plazas Vacantes: ' + CualBoton.TituloPlazaDetalle + '?', mtConfirmation, [mbYes, mbNo], 0)=mrYes then
        begin
          CdQpUpt.Delete;
          CdQpUpt.ApplyUpdates(-1);
          //CualBoton.ListaPostulantes[TMenuItem(Sender).Parent.MenuIndex -2].Delete;
          CualBoton.ListaPostulantes.Delete(TMenuItem(Sender).Parent.MenuIndex -2);
          CualBoton.CantidadPostulantes:=CualBoton.ListaPostulantes.Count;
          CualBoton.Caption := CualBoton.TituloPlazaDetalle + ' - ' + CualBoton.TituloDepartamento + #10 + CualBoton.TituloCargo + #10 + 'Número de Postulantes: ' + inttostr(CualBoton.CantidadPostulantes);
        end;
      end;
    finally
      if assigned(CdQpUpt) then
      begin
        EliminarConjunto(CdQpUpt);
        CdQpUpt.Free;
      end;
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionDePostulantes.BotonDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  i: Integer;
  Cursor: TCursor;
  cdUpt: TClientdataset;
  PostulantesDatos: TDatosPostulante;
  AuxBoton: TNewAdvGlowButton;
begin
  if (Source is TNextDBGrid) and (DBGridPostulantes.DataSource.DataSet.RecordCount > 0) then
  begin
    Try
      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        cdUpt := TClientDataset.Create(nil);
        try
          AuxBoton := TNewAdvGlowButton(Sender);

          if AuxBoton.IdPersonal > 0 then
            raise InteligentException.Create('La plaza ya se encuentra ocupada por un personal coontratado, no se pueden asignar aspirantes a dicha plaza.');

          if AuxBoton.IdPersonal = -6 then
            raise InteligentException.Create('La plaza cancelada, no se pueden asignar aspirantes a dicha plaza.');


          if Not CrearConjunto(cdUpt, 'rhu_asignacionxplaza', ccUpdate) then
            raise InteligentConnection.CreateByCode(5, ['Aginaciones']);
          if Not CargarDatosFiltrados(cdUpt, 'idpostulante,idcargo,iddepartamento,idplazadetalle',[cdPostulantes.FieldByName('idpostulante').AsInteger, AuxBoton.IdCargo, AuxBoton.IdDepartamento, AuxBoton.IdPlazaDetalle]) then
            raise InteligentConnection.CreateByCode(6, ['Postulantes', cdPostulantes.FieldByName('Codigo').AsString, 'Código de Postulante']);
          cdUpt.Open;

          if cdUpt.RecordCount > 0 then
            raise InteligentException.Create('El postulante ya se encuentra compitiendo por esta plaza');

          cdupt.Append;
          cdupt.FieldByName('idasignacionxplaza').AsInteger := 0;
          cdupt.FieldByName('idcargo').AsInteger := AuxBoton.IdCargo;
          cdupt.FieldByName('iddepartamento').AsInteger := AuxBoton.IdDepartamento;
          cdupt.FieldByName('idplaza').AsInteger := AuxBoton.IdPlaza;
          cdupt.FieldByName('idplazadetalle').AsInteger := AuxBoton.IdPlazaDetalle;
          cdupt.FieldByName('idpostulante').AsInteger := cdPostulantes.FieldByName('idpostulante').AsInteger;
          cdupt.Post;
          cdupt.ApplyUpdates(-1);

          PostulantesDatos:= TDatosPostulante.Create;
          //PostulantesDatos.IdPostulante:= cdPostulantes.FieldByName('idpostulante').AsInteger;
          PostulantesDatos.IdPostulante:= cdPostulantes.FieldByName('idpostulante').AsInteger;
          PostulantesDatos.CodigoPostulante:= cdPostulantes.FieldByName('Codigo').AsString;
          PostulantesDatos.Categoria := cdPostulantes.FieldByName('Categoria').AsInteger ;
          PostulantesDatos.Estado := cdPostulantes.FieldByName('CargoActual').AsString;

          PostulantesDatos.NombrePostulante:= cdPostulantes.FieldByName('Nombres').AsString+' '+
          cdPostulantes.FieldByName('APaterno').AsString+' '+
          cdPostulantes.FieldByName('AMaterno').AsString+' - ('+
          cdPostulantes.FieldByName('CargoActual').AsString+') - '+
          cdPostulantes.FieldByName('Codigo').AsString;

          AuxBoton.ListaPostulantes.AddObject(PostulantesDatos.NombrePostulante, PostulantesDatos);
          AuxBoton.CantidadPostulantes:=AuxBoton.ListaPostulantes.Count;
          AuxBoton.Caption := AuxBoton.TituloPlazaDetalle + ' - ' + AuxBoton.TituloDepartamento + #10 + AuxBoton.TituloCargo + #10 + 'Número de Postulantes: ' + inttostr(AuxBoton.CantidadPostulantes);
        except
          cdupt.Cancel;
          Raise;
        end;
      Finally
        Screen.Cursor := Cursor;
        if assigned(cdUpt) then
        begin
          EliminarConjunto(cdUpt);
          cdUpt.Free;
        end;
      End;
    Except
      on e:InteligentConnection do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:InteligentException do
        InteliDialog.ShowModal('Aviso', e.Message, MtInformation, [mbOk], 0);

      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmAsignacionDePostulantes.BotonDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source.ClassType = TNextDBGrid;
end;

procedure TFrmAsignacionDePostulantes.DBGridPostulantesMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DBGridPostulantes.BeginDrag(False);
end;

procedure TFrmAsignacionDePostulantes.NxOptionButton1Click(Sender: TObject);
var
  Point : Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu2.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionDePostulantes.NxOptionButton2Click(Sender: TObject);
var
  Point : Tpoint;
begin
  try
    GetCursorPos(Point);
    PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmAsignacionDePostulantes.Postuladosaestavacante1Click(
  Sender: TObject);
var
  locname : string;
begin
  try

    if cdasignados.Active=false then
    raise inteligentexception.Create('Debe de buscar postulantes para imprimir este reporte');

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmAsignacionDePostulantes-Postuladosalavacante.fr3';
    if FileExists(LocName) then
    begin
      frxReport1.LoadFromFile(LocName);
      frxReport1.ShowReport(TRUE);
    end;

  except
    on e:inteligentexception do
    begin
       InteliDialog.ShowModal('importante', '' + #10 + e.Message, mtConfirmation, [mbOk], 0);
    end;

    on e:inteligentconnection do
    begin
       InteliDialog.ShowModal('Error al imprimri el reporte', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
       InteliDialog.ShowModal('Error al seleccionar el puesto', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

procedure TFrmAsignacionDePostulantes.PostulantesParaestaVacante1Click(
  Sender: TObject);
var
  locname : string;
begin
  try
    if cdpostulantes.Active=false then
      raise inteligentexception.Create('Debe de buscar postulantes para poder imprimir el reporte');

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmAsignacionDePostulantes-AnalisisVacantexPostulantes.fr3';
    if FileExists(LocName) then
    begin
      frxReport1.LoadFromFile(LocName);
      frxReport1.ShowReport(TRUE);
    end;

  except
    on e:inteligentexception do
    begin
       InteliDialog.ShowModal('Importante', '' + #10 + e.Message, mtConfirmation, [mbOk], 0);
    end;

    on e:inteligentconnection do
    begin
       InteliDialog.ShowModal('Error al imprimri el reporte', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
       InteliDialog.ShowModal('Error al seleccionar el puesto', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
       PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

procedure TFrmAsignacionDePostulantes.Salir1Click(Sender: TObject);
begin
  close;
end;

function TFrmAsignacionDePostulantes.TipoVariable( Variable: Variant ): String;
var iTipo: Integer;
begin
  iTipo := VarType( Variable );

  case iTipo of
    varEmpty     : Result := 'Vacía';
    varNull      : Result := 'Nula';
    varSmallInt  : Result := 'SmallInt';
    varInteger   : Result := 'Integer';
    varSingle    : Result := 'Single';
    varDouble    : Result := 'Double';
    varCurrency  : Result := 'Currency';
    varDate      : Result := 'Date';
    varOleStr    : Result := 'OleStr';
    varDispatch  : Result := 'Dispatch';
    varError     : Result := 'Error';
    varBoolean   : Result := 'Boolean';
    varVariant   : Result := 'Variant';
    varUnknown   : Result := 'Desconocida';
    varByte      : Result := 'Byte';
    varWord      : Result := 'Word';
    varLongWord  : Result := 'LongWord';
    varInt64     : Result := 'Int64';
    varStrArg    : Result := 'StrArg';
    varString    : Result := 'String';
    varAny       : Result := 'Any';
  end;

  Result := Result;
end;

procedure TFrmAsignacionDePostulantes.CargarDepartamentos(Filtro: String);
var
  i: Integer;
  ListaCargos: TStringList;
  DatosCargo : TDatosCargo;
begin
  cdPlazas.First;

  Filtro := ',' + Filtro + ',';

  ListaCargos := TStringList.Create;
  ListaCargos.Clear;
  Try
    while not cdPlazas.Eof do
    begin
      if (Pos(',' + cdPlazas.FieldByName('IdPlaza').AsString + ',', Filtro) > 0) and (ListaCargos.IndexOf(cdPlazas.FieldByName('IdCargo').AsString) = -1) then
      begin
        // Cargar los cargos procesados
        DatosCargo := TDatosCargo.create;
        DatosCargo.IdCargo := cdPlazas.FieldByName('IdCargo').AsInteger;
        DatosCargo.CantDoc := cdPlazas.FieldByName('CantDocumento').AsInteger;
        ListaCargos.Add(cdPlazas.FieldByName('IdCargo').AsString);
        //clbCargos.Items.AddObject(cdPlazas.FieldByName('CodigoCargo').AsString + ' - ' + cdPlazas.FieldByName('TituloCargo').AsString + ' - (Cant. Documentos: '+cdPlazas.FieldByName('CantDocumento').AsString +')' , TObject(cdPlazas.FieldByName('IdCargo').AsInteger));
        clbCargos.Items.AddObject(cdPlazas.FieldByName('CodigoCargo').AsString + ' - ' + cdPlazas.FieldByName('TituloCargo').AsString + ' - (Cant. Documentos: '+cdPlazas.FieldByName('CantDocumento').AsString +')' , TObject(DatosCargo));
        if TDatosCargo(clbCargos.Items.Objects[(clbCargos.Items.Count-1)]).CantDoc = 0 then
          ClbCargos.ItemEnabled[(clbCargos.Items.Count-1)] := false;

      end;
      cdPlazas.Next;
    end;
  Finally
    ListaCargos.Free;
  End;
end;

procedure TFrmAsignacionDePostulantes.CbFiltroChange(Sender: TObject);
var
  aux : integer;
begin
  if CbFiltro.ItemIndex = 0 then
  begin
    CdPostulantes.CancelRange;
  end
  else
  begin
    aux:=  Integer(CbFiltro.Items.Objects[CbFiltro.ItemIndex]);
    CdPostulantes.CancelRange;
    CdPostulantes.IndexFieldNames := 'Categoria';
    Cdpostulantes.SetRange([aux], [aux]);
    Cdpostulantes.ApplyRange;
  end;
end;

function TFrmAsignacionDePostulantes.CopiarEstructuraExp(Fuente: TClientDataSet;
  Destino: TClientDataSet): Boolean;
var
  i: Integer;
begin
  Try
    Destino.Close;
    Destino.FieldDefs.Clear;
    for i := 0 to Fuente.FieldDefs.Count -1 do
      Destino.FieldDefs.Add(Fuente.FieldDefs.Items[i].Name, Fuente.FieldDefs.Items[i].DataType, Fuente.FieldDefs.Items[i].Size, False);
    Destino.FieldDefs.Add('Experiencia', FtString, 400, False);

    Destino.CreateDataSet;
    Destino.Open;

    Result := True;
  Except
    Result := False;
  End;
end;



end.
