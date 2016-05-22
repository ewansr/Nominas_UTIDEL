unit UTFrmDatosCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UTFrmDatosCatalogo, DB, StdCtrls, Buttons, ExtCtrls, pngimage,
  DBCtrls, Mask, UIntelidialog, DBClient, RxToolEdit,
  RxCurrEdit, RXDBCtrl, JvExControls, JvLabel, NxCollection, AdvSmoothTabPager,
  ComCtrls, ImgList,StrUtils, AppEvnts, Menus, AdvSmoothPanel, AdvSmoothLabel,
  DBAdvSmoothLabel, AdvEdit, AdvEdBtn,ClientModuleUnit1, AdvCombo, AdvDBComboBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC,
  cxButtons, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxBarBuiltInMenu, cxCheckBox, cxDBEdit;

type
  TImageNew = class(Timage)
  private
  //con respecto al objeto visual
    Grupo : Integer;
    IdSoy : Integer;
    NAgrupado : Integer;
    TMovido   : Boolean;

  //con respecto al documento
    Idd   : Integer;
    Text  :  string;
    Desc  :  string;

  //con respecto al docxcargo
    //idgrupo haciendo referencia a grupo del objeto visual
    IdImag : Integer;
    Obl   : string;
    TlGrp : string;

  published
    property IdGrupo    :         Integer read Grupo write Grupo;
    property Soy        :         Integer read IdSoy write IdSoy;
    property Agrupado   : Integer read NAgrupado write NAgrupado;
    property Movido     :     Boolean read TMovido write TMovido;

    property IdDoc      :  Integer read Idd write Idd;
    property Texto      : string read Text write Text;
    property Descripcion: string read Desc write Desc;

    property IdImagen   : Integer read IdImag write IdImag;
    property Obligatorio:        string read obl write obl;
    property TGrupo     :    string read TlGrp write TlGrp;
  end;

type
  TnewPanel = class(TAdvSmoothPanel)
  Private
    PopupBox: TScrollBox;
    EdtTituloGrp: Tedit;
  Public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TFrmDatosCargo = class(TFrmDatosCatalogo)
    cdDepartamento: TClientDataSet;
    LibroDatos: TAdvSmoothTabPager;
    PgDatosGenerales: TAdvSmoothTabPage;
    PgDocumentos: TAdvSmoothTabPage;
    Imagenes: TImageList;
    MdDocXCargo: TClientDataSet;
    MdDocXCargoiddoctosxcargo: TIntegerField;
    MdDocXCargoiddocumento: TIntegerField;
    MdDocXCargoidcargo: TIntegerField;
    MdDocXCargoobligatorio: TStringField;
    PAcciones: TPopupMenu;
    ChxObligatorio: TMenuItem;
    N1: TMenuItem;
    Agregar1: TMenuItem;
    N2: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    SBDisponible: TScrollBox;
    LVDisponible: TListView;
    Panel5: TPanel;
    lblactual: TLabel;
    Splitter2: TSplitter;
    Timer3: TTimer;
    ScrollBox1: TScrollBox;
    Image3: TImage;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    dsTipoNomina: TDataSource;
    dsRangoSalarios: TDataSource;
    cdSalarios: TClientDataSet;
    dsSalariosIndep: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGBDatos: TcxGroupBox;
    Image5: TImage;
    Image4: TImage;
    JvLabel1: TJvLabel;
    Label2: TLabel;
    Label1: TLabel;
    JvLabel2: TJvLabel;
    CodigoCargo: TDBAdvSmoothLabel;
    EditTituloSalario: TJvLabel;
    lblOrganizacion: TJvLabel;
    lblTipoNomina: TJvLabel;
    DBEdit1: TDBEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    DBEditTitulo: TDBEdit;
    edt1: TAdvEditBtn;
    DBEdit2: TDBEdit;
    AdvDBComboBox1: TAdvDBComboBox;
    Lbl1: TJvLabel;
    check1: TcxDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure BtnAddNewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure LVDisponibleDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure LVDisponibleDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBEdit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ChxObligatorioClick(Sender: TObject);
    procedure PAccionesPopup(Sender: TObject);
    procedure ScrollBox1Resize(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ScrollBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ScrollBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure PAccionesChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure Agregar1Click(Sender: TObject);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScrollBox1MouseEnter(Sender: TObject);
    procedure edt1ClickBtn(Sender: TObject);
    procedure edt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);


  private
    //Lista para mostrar los items actuales
    Actuales: TStringList;

    //para añadir los objetos que se editen
    Ediciones: TStringList;

    //comparacion para saber cuando eliminar
    ListaOriginal : TStringList;

    Modificado    : Boolean;

    //panel grupo de documentos  desplegados
    PanelPop :TnewPanel;

    //timage temporal para edicion
    Editando: TImageNew;

    Salario: String;
    procedure GuardarHijos(idPadre: integer);
    function ObtenerCambios(LBase, LCambio: TStringList): TStringList;
    function LstCopiar(Origen, Destino: tstringlist): Boolean;
    procedure popupItemClick(Sender: TObject);
    procedure Reordenar(Lista: TListView);
    procedure EditaGrupoItemClick(Sender: TObject);
    procedure OrdenarDocumentos;
    procedure CmpDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CmpDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure PopupBoxMouseLeave(Sender: TObject);
    procedure SCB1MouseEnter(Sender: TObject);
    procedure PopupBoxMouseEnter(Sender: TObject);
    procedure ImgAuxMouseEnter(Sender: TObject);
    procedure Eliminar(Objeto: TObject);
    procedure Agregar(Objeto: TObject;GObjetos:TObject = nil);
    procedure MoverObjeto(ObjetoOrg: Tobject;ObJetoDst: Tobject = nil);
    procedure CmpStarDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ImagMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure clickEdtBtn;
  public
    proveniente    :  string;
    idconvenio     : integer;
    IdOrganizacion : Integer;
    IdTipoNomina   : Integer;
    RangoSalario   :  String;
  end;
const
  Espaciado = 60;

var
  FrmDatosCargo : TFrmDatosCargo;
  providername  : String;

implementation

uses
 xDatabase, UTFrmdepartamentos, UTFrmCatalogoSalarios, nuc_genericclasses,
 UTFrmNewItem, UTFrmSeleccionaSalario, UTFrmSeleccionSalMultiple;

{$R *.dfm}

 {$REGION 'Acciones principales agregar y eliminar'}
procedure TFrmDatosCargo.MoverObjeto(ObjetoOrg: Tobject;ObJetoDst: Tobject);
var LocImage: TImageNew;
  cap:string;
  i,ult:integer;

     Item : TMenuItem;
      Wind: TFrmNewItem;
      x:Integer;
begin
  try
    try
      LocImage := TImageNew.Create(ScrollBox1);
      LocImage.Parent := ScrollBox1;
      LocImage.Top    :=  1;
      LocImage.Left   :=  1;
      LocImage.Width  := 60;
      LocImage.Height := 70;

      LocImage.Stretch     := True;
      LocImage.Transparent := True;
      //llenando el objeto
      LocImage.IdDoc := TImageNew(ObjetoOrg).IdDoc;
      LocImage.Texto := TImageNew(ObjetoOrg).Texto;
      LocImage.Hint        :=        TImageNew(ObjetoOrg).Hint;
      LocImage.Descripcion := TImageNew(ObjetoOrg).Descripcion;

      LocImage.Hint :=  TImageNew(ObjetoOrg).Hint;

    //  LocImage.Grupo := TImageNew(ObjetoOrg).Grupo;

      //Si el elemento es nuevo enviar los detalles del grupo con datos genericos
      if ObJetoDst = nil then
      begin
        LocImage.IdGrupo := -999999999;
        LocImage.Agrupado :=  1;
        LocImage.Soy      :=  1;
        LocImage.TGrupo   := '';
      end
      else
      begin
      //en caso contrario heredar las propiedades del elemento a agruparse

        if (TImageNew(ObJetoDst).IdGrupo = -999999999) or (length(trim(TImageNew(ObJetoDst).tgrupo))=0) then
        begin
          //si el doocumento es nuevo y se quiere convertir en grupo se deben establecer
          //las propiedades necesarias
          Wind := TFrmNewItem.create(nil);
          try
            Wind.ShowModal;
            if not Wind.cancelado then
            begin
              Item := TMenuItem.Create(PAcciones);
              Item.Caption :=   Wind.EdTexto.Text;
              Item.Tag := -1*(pacciones.Items.Count-3);
              Item.OnClick     := popupItemClick;
              Item.AutoHotkeys :=       maManual;
              pacciones.Items.Add(Item);
              TImageNew(ObJetoDst).IdGrupo := pacciones.Items[pacciones.Items.Count-1].Tag;
              TImageNew(ObJetoDst).TGrupo := ReplaceStr(pacciones.Items[pacciones.Items.Count-1].Caption,'&','');
              //pacciones.Items[pacciones.Items.Count-1].Click;
            end
            else
              raise InteligentException.Create('*');
          finally
            FreeAndNil(Wind);
          end;
        end;
        LocImage.IdGrupo  :=  TImageNew(ObjetoDst).IdGrupo;
        LocImage.Agrupado := TImageNew(ObjetoDst).Agrupado;
        LocImage.Soy    := TImageNew(ObjetoDst).Agrupado+1;
        LocImage.TGrupo   :=   TImageNew(ObjetoDst).TGrupo;
      end;

      LocImage.Obligatorio := 'No';
      LocImage.IdImagen := TImageNew(ObjetoOrg).IdImagen;

      LocImage.Movido := False;
      LocImage.Cursor := crHandPoint;

      LocImage.DragMode    :=   dmAutomatic;
      LocImage.OnDragDrop  :=   CmpDragDrop;
      LocImage.OnDragOver  :=   CmpDragOver;
      LocImage.OnMouseDown := imagmousedown;
      LocImage.PopupMenu   :=     Pacciones;

      LocImage.OnMouseEnter   :=        SCB1MouseEnter;
      LocImage.Picture.Bitmap := Image3.Picture.bitmap;

      for i := 0 to (Length (LocImage.Texto))-1do
      begin
        LocImage.Canvas.Font.Name   := 'calibri';
        LocImage.Canvas.Font.Size   :=        45;
        LocImage.Canvas.Font.Color  :=    clNone;
        LocImage.Canvas.Brush.Style :=   bsClear;
        if ((i+1)*8)< Length (LocImage.Texto)  then
        begin
          cap := AnsiMidStr(LocImage.Texto, i*8, 8 );
          LocImage.Picture.Bitmap.Canvas.TextOut(4,(i+1)*60,cap   );
        end
        else
        begin
          cap := AnsiMidStr(LocImage.Texto, i*8, (8 ));
          LocImage.Picture.Bitmap.Canvas.TextOut(4,(i+1)*60,cap   );
        end;
      end;

      //Actualizar los datos de los elementos del grupo y añadirlos para edicion
      if ObJetoDst <> nil then
      begin
        for i := 0 to scrollbox1.ControlCount-1 do
        begin
          if TImageNew(ScrollBox1.Components[i]).IdGrupo = LocImage.IdGrupo then
          begin
            TImageNew(ScrollBox1.Components[i]).Agrupado := TImageNew(ScrollBox1.Components[i]).Agrupado + 1;
            Ediciones.AddObject(IntToStr(timagenew(ScrollBox1.Components[i]).IdDoc),ScrollBox1.Components[i]);
         end;
        end;
        //reordenando controles
        ult := -1;
        for i := 0 to scrollbox1.ControlCount-1 do
        begin
          if TImageNew(ScrollBox1.Components[i]).IdGrupo = LocImage.IdGrupo then
          begin
            if (ScrollBox1.Components[i].ComponentIndex = ult+1) and (ult>-1) then
              ScrollBox1.Components[i].ComponentIndex := ult;
            if (ScrollBox1.Components[i].ComponentIndex > ult+1) and (ult>-1) then
              ScrollBox1.Components[i].ComponentIndex := ult+1;
            ult := i;
          end;
        end;
      end;

      LVDisponible.Selected.Delete;
    finally
      Reordenar(LVDisponible);
    end;
  except
    on e:InteligentException do
    begin
      ;
    end;
  end;
end;

procedure TFrmDatosCargo.Eliminar(Objeto:TObject);
var
  Idx,IndexActual,i: Integer;
  encontrado : Boolean;

  ItemEliminar: TImageNew;
begin
  //eliminar
  if TObject(Objeto).ClassName = 'TImageNew' then
  begin
    ItemEliminar := TImageNew.Create(LVDisponible);
    ItemEliminar.Soy      := 1;
    ItemEliminar.Agrupado := 1;
    ItemEliminar.Movido   := false;
    ItemEliminar.IdDoc := TImageNew(Objeto).IdDoc;
    ItemEliminar.Texto := TImageNew(Objeto).Texto;
    ItemEliminar.Descripcion := TImageNew(Objeto).Descripcion;
    ItemEliminar.IdImagen    :=    TImageNew(Objeto).IdImagen;
    ItemEliminar.IdGrupo := -999999999;
    ItemEliminar.Obligatorio := TImageNew(Objeto).Obligatorio;
    itemEliminar.hint := TImageNew(Objeto).hint;

    ItemEliminar.TGrupo :=       TImageNew(Objeto).tgrupo;
    LVDisponible.AddItem(ItemEliminar.Texto,ItemEliminar);
    IndexActual :=      LVDisponible.Items.Count -1;
    LVDisponible.Items[IndexActual].SubItems.Add(ItemEliminar.Descripcion);
    LVDisponible.Items[IndexActual].ImageIndex := 0;

    if Ediciones.IndexOf(IntToStr(TImageNew(Objeto).IdDoc)) <> -1 then
    begin
      Idx := Ediciones.IndexOf(IntToStr(TImageNew(Objeto).IdDoc));
      Ediciones.Delete(Idx);
    end;

    encontrado := False;
    if TImageNew(Objeto).Agrupado > 1 then
      if (ScrollBox1.ControlCount > 0) and (TImageNew(Objeto).Parent <> ScrollBox1) then
      begin
        i := 0;
        while (i < ScrollBox1.ControlCount) do
        begin
          if TImageNew(ScrollBox1.Controls[i]).IdGrupo = TImageNew(Objeto).idgrupo then
            TImageNew(ScrollBox1.Controls[i]).Agrupado := TImageNew(ScrollBox1.Controls[i]).Agrupado-1;
          inc(i);
        end;
      end;

    if (ScrollBox1.ControlCount > 0) and (TImageNew(Objeto).Parent <> ScrollBox1) then
    begin
      i := 0;
      while (i < ScrollBox1.ControlCount) and (not encontrado) do
      begin
{        if TImageNew(ScrollBox1.Controls[i]).IdGrupo = TImageNew(Objeto).idgrupo then
          TImageNew(ScrollBox1.Controls[i]).Agrupado := TImageNew(ScrollBox1.Controls[i]).Agrupado-1;
  }
        if TImageNew(ScrollBox1.Controls[i]).IdDoc = TImageNew(Objeto).IdDoc then
        begin
          TImageNew(ScrollBox1.Controls[i]).Free;
          encontrado := True;
        end;
        inc(i);
      end;
    end;

    FreeAndNil(Objeto);
    OrdenarDocumentos;
  end;
end;

procedure TFrmDatosCargo.Agregar(Objeto:TObject;GObjetos:TObject);
begin
  try
    //sd
    if GObjetos <> nil then
    begin
      if length(trim(timagenew(GObjetos).tgrupo)) = 0 then
        //ShowMessage('adjuntar documento '+timagenew(LVDisponible.Selected.Data).Texto+' con el documento '+timagenew(GObjetos).Texto+' para crear un nuevo grupo.')
        MoverObjeto(LVDisponible.Selected.Data,GObjetos)
      else
      begin
       // ShowMessage('adjuntar documento '+timagenew(LVDisponible.Selected.Data).Texto+' al grupo '+timagenew(GObjetos).TGrupo);
        MoverObjeto(LVDisponible.Selected.Data,GObjetos);
      end;
    end
    else
    begin
      //ShowMessage('Agregar documento '+timagenew(LVDisponible.Selected.Data).Texto);
      MoverObjeto(LVDisponible.Selected.Data);
    end;
  finally
    OrdenarDocumentos;
    ScrollBox1.Repaint;
    ScrollBox1.Refresh;
  end;
end;
 {$ENDREGION}

 {$REGION 'Botones'}

procedure TFrmDatosCargo.BtnAddNewClick(Sender: TObject);
begin
  LibroDatos.ActivePageIndex := 0;
  if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
    exit;
  inherited;
end;

procedure TFrmDatosCargo.BtnRecClick(Sender: TObject);
var
  x:integer;
begin
  LibroDatos.ActivePageIndex := 0;

  Try
    if (dsTipoNomina.DataSet.FieldByName('SalarioMultiple').AsString = 'Si') and ((dsDatos.DataSet.FieldByName('IdSalario').IsNull) and (dsDatos.DataSet.FieldByName('IdRangoSalarios').IsNull)) then
    begin
      edt1.setfocus;
      raise InteligentException.Create('El tipo de nomina está definido con salario multiple, por lo cuál se Debe seleccionar un Salario o bién un rango de salario.');
    end;

    if ClientModule1.VerificaVacio(DBEditTitulo, 'Título') = False then
      raise InteligentWarning.Create('*');
    (*
    Actuales.Clear;
    x := 0;
   { while x < LVActual.Items.Count do
    begin
      Actuales.AddObject(inttostr(TDocGen(LVActual.Items.Item[x].Data).IdDoc),TDocGen(LVActual.Items.Item[x].Data));
      Inc(x);
    end;   }
    for x  := 0 to scrollbox1.ControlCount-1 do
    begin
      Actuales.AddObject(inttostr(TImageNew(ScrollBox1.Controls[x]).IdDoc),TImageNew(ScrollBox1.Controls[x]));
    end;

    //GuardarHijos(dsDatos.dataset.fieldbyname('idcargo').asinteger);
    //dsDatos.DataSet.FieldByName('iddocumentos').AsString := Actuales.CommaText;
    dsDatos.DataSet.FieldByName('grupo').AsString  := '*';
    if length(trim(edt1.Text)) = 0 then
    begin
      dsDatos.DataSet.FieldByName('idsalario').Clear;
      dsDatos.DataSet.FieldByName('idrangosalarios').Clear;
    end;
    //TClientDataSet(dsDatos.DataSet).Post;
    //TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);
    inherited;

    //if EnTransaccion then
      //ConcretarTransaccion;
   *)
    dsDatos.DataSet.FieldByName('TituloCargo').AsString := DBEditTitulo.Text;
    if length(trim(edt1.Text)) = 0 then
    begin
      dsDatos.DataSet.FieldByName('idsalario').Clear;
      dsDatos.DataSet.FieldByName('idrangosalarios').Clear;
    end;
    TClientDataSet(dsDatos.DataSet).Post;
    TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);
    if (EnTransaccion) then
      ConcretarTransaccion;
    Close;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal('Error de captura', e.Message, mtWarning, [mbOk], 0);

    on e:InteligentWarning do
       InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Un error inesperado ha ocurrido, informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Un error inesperado ha ocurrido, informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);
  End;
end;

 procedure TFrmDatosCargo.Button1Click(Sender: TObject);
 var Resc: Boolean;
begin
end;

{$ENDREGION}

 {$REGION 'Comprobantes varios incluyendo reloj'}
procedure TFrmDatosCargo.Timer3Timer(Sender: TObject);
var Int:integer;
begin
  int := GetAsyncKeyState(VK_LBUTTON);
  Timer3.Enabled := False;
  if (Int >= 0) then
  begin
    try
      FreeAndNil(PanelPop);
      //PanelPop.Destroy;
    except
      on e: Exception do
        ;
    end;
    OrdenarDocumentos;
  end
  else
    Timer3.Enabled := True;
end;

procedure TFrmDatosCargo.ComboBox1Change(Sender: TObject);
var tipo: TViewStyle;
begin

  case TComboBox(Sender).ItemIndex of
    0: begin
         tipo := vsIcon;
       end;
    1: begin
         tipo := vsList;
       end;
    2: begin
         tipo := vsReport;
       end;
    3: begin
         tipo := vsSmallIcon;
       end;
  end;

  LVDisponible.ViewStyle:= tipo;

end;

procedure TFrmDatosCargo.DBEdit1Change(Sender: TObject);
var
  cdAux2: TClientDataSet;
begin
{
  cdAux2 := TClientDataSet.Create(nil);
  if Length(Trim(DBEdit1.Text)) > 0 then
  begin
    if cdAux2.State <> dsBrowse then
    begin
      CrearConjunto(cdAux2, 'rhu_salario', ccCatalog);
      cdAux2.Open;
    end;
    CargarDatosFiltrados(cdAux2, 'idsalario', [dsDatos.DataSet.FieldByName('idsalario').AsInteger]);
    cdAux2.refresh;
    edt1.Text := cdAux2.FieldByName('codigosalario').AsString;
    EditTituloSalario.caption := cdAux2.FieldByName('titulosalario').AsString;
    EliminarConjunto(cdAux2);
  end;
  cdAux2.Free;    }
end;

procedure TFrmDatosCargo.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  CdAux2 : TClientDataSet;
begin
  if (key = #13) and (Length(Trim(tEdit(sender).Text)) > 0) then
  begin
    CdAux2 := TClientDataSet.Create(nil);
    Try
      CrearConjunto(CdAux2, 'rhu_salario', ccCatalog);
      CargarDatosFiltrados(CdAux2, 'codigosalario', [tEdit(sender).Text]);
      CdAux2.Open;
      if CdAux2.RecordCount = 1 then
      begin
        EditTituloSalario.caption := CdAux2.FieldByName('titulosalario').AsString;
        dsDatos.DataSet.FieldByName('idsalario').AsInteger := CdAux2.FieldByName('idsalario').AsInteger;
        DBEditTitulo.SetFocus;
      end
      else
        if InteliDialog.ShowModal('El código del salario ingresado no existe, desea abrir la ventana para seleccionar uno?','', mtConfirmation, [ mbYes, mbNo ],0) = mrYes then
          edt1ClickBtn(nil);
    Finally
      EliminarConjunto(CdAux2);
      CdAux2.Free;
    End;
  end;
end;
 {$ENDREGION}

 {$REGION 'Scrollbox principal'}
procedure TFrmDatosCargo.ScrollBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if Sender <> Source then
  begin
    Agregar(timagenew(LVDisponible.Selected.Data));
    OrdenarDocumentos;
  end;
end;

procedure TFrmDatosCargo.ScrollBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  try
    Accept:= timagenew(LVDisponible.Selected.Data) <> nil;//TObject(source).ClassType = TImageNew;
  except
    on e:exception  do
     Accept :=False;
  end;
end;

procedure TFrmDatosCargo.ScrollBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ScrollBox1.SetFocus;
end;

procedure TFrmDatosCargo.ScrollBox1MouseEnter(Sender: TObject);
begin
  inherited;
  ScrollBox1.SetFocus;
end;

procedure TFrmDatosCargo.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  With Scrollbox1.HorzScrollBar do
  begin
    Position := Position + 5;
  end;
end;

procedure TFrmDatosCargo.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  With Scrollbox1.HorzScrollBar do
  begin
    Position := Position  -5;
  end;
end;

procedure TFrmDatosCargo.ScrollBox1Resize(Sender: TObject);
begin
  OrdenarDocumentos;
end;

//mouse enter principal del scrollbox
procedure TFrmDatosCargo.SCB1MouseEnter(Sender: TObject);
var
  i, Inicio, Cta: Integer;
  //popup imagen
  ImGAux: TimageNew;
  tr,LR:integer;
  CP: Tpoint;
begin
  //si se enfoca un objeto diferente y el reloj esta detenido por x razon, eliminarlo
  if (Not TImageNew(Sender).Movido) {and (not timer3.Enabled)}   and (Panelpop <> nil) then
  begin
    try
      FreeAndNil(PanelPop);
    except
      on e: Exception do
        ;
    end;
    OrdenarDocumentos;
  end;

  //si se enfoca un objeto que no está desplegado, eliminar el popup para mostrarlo
  //con los items nuevos
  if (Not TImageNew(Sender).Movido) and (timer3.Enabled)  then
  begin
    Timer3.Enabled := False;
    try
      if assigned(PanelPop) then
        FreeAndNil(PanelPop);
    except
      on e: Exception do
        ;
    end;
    OrdenarDocumentos;
  end;

  // Verificar si es un grupo
  if (TImageNew(Sender).Agrupado > 1) and (Not TImageNew(Sender).Movido) then
  begin
    // Localizar el primer elemento de este grupo
    Inicio := -1;
    i := 0;
    while (i < ScrollBox1.ControlCount) And (Inicio < 0) do
    begin
      if (TImageNew(ScrollBox1.Controls[i]).Soy = 1) and (TImageNew(ScrollBox1.Controls[i]).IdGrupo = TImageNew(Sender).IdGrupo) then
        Inicio := TImageNew(ScrollBox1.Controls[i]).Left;
      Inc(i);
    end;

    GetCursorPos(CP);

    //se crea el componente de popup  (panel principal)
    PanelPop := TnewPanel.Create(self);
    PanelPop.Parent := self;
    PanelPop.OnMouseLeave := PopupBoxMouseLeave;
    PanelPop.OnMouseEnter := PopupBoxMouseEnter;

    PanelPop.Left := cp.x-257;
    PanelPop.width:=  (TImageNew(Sender).Agrupado*TImageNew(Sender).Width)+20;
    PanelPop.Height := TImageNew(Sender).Height + (6*TImageNew(Sender).Agrupado)+55;

    PanelPop.EdtTituloGrp.parent := PanelPop;

    PanelPop.EdtTituloGrp.Top := 0;
    PanelPop.EdtTituloGrp.Left := 0;
    PanelPop.EdtTituloGrp.Width := PanelPop.Width;
    PanelPop.EdtTituloGrp.text := TImageNew(Sender).TGrupo;
    PanelPop.EdtTituloGrp.Tag := TImageNew(Sender).IdGrupo;
    PanelPop.EdtTituloGrp.OnMouseEnter := PopupBoxMouseEnter;
    PanelPop.EdtTituloGrp.OnKeyPress := TGrupoKeyPress;

    if cp.x-PanelPop.width > 0 then
      PanelPop.Left := cp.x-PanelPop.width
    else
      PanelPop.Left := 0;
    if CP.y-154 > 0 then
      PanelPop.Top := CP.y-154
    else
      PanelPop.Top := 0;
    PanelPop.Caption.Text := TImageNew(Sender).TGrupo;

    //scrollbox dentro del popup (almacena las imagenes)
    PanelPop.PopupBox.parent := PanelPop;

    PanelPop.PopupBox.OnMouseLeave := PopupBoxMouseLeave;
    PanelPop.PopupBox.OnMouseEnter := PopupBoxMouseEnter;
    PanelPop.PopupBox.ParentColor := False;
    PanelPop.color := clWhite;
    PanelPop.PopupBox.Height := PanelPop.Height-25;
    PanelPop.PopupBox.width :=PanelPop.width-6;
    PanelPop.PopupBox.Left := 3;
    PanelPop.PopupBox.Top := 24;

    Inicio := 1;
    i := 0;
    Cta := 0;
    while (i < ScrollBox1.ControlCount) and (Cta < TImageNew(Sender).Agrupado) do
    begin

      if TImageNew(ScrollBox1.Controls[i]).IdGrupo = TImageNew(Sender).IdGrupo then
      begin
        TImageNew(ScrollBox1.Controls[i]).Movido := True;

        //formateando la imagen del popup
        ImGAux := TimageNew.Create(PanelPop.PopupBox);
        ImGAux.parent := PanelPop.PopupBox;
        ImGAux.OnMouseEnter := ImgAuxmouseenter;
        ImGAux.PopupMenu := PAcciones;
        ImGAux.OnMouseDown := ImagMouseDown;

        ImGAux.Stretch := True;
        ImGAux.Transparent := True;

        ImGAux.Soy := TImageNew(ScrollBox1.Controls[i]).Soy;
        ImGAux.Agrupado :=TImageNew(ScrollBox1.Controls[i]).Agrupado;
        ImGAux.Movido := TImageNew(ScrollBox1.Controls[i]).Movido;
        ImGAux.Picture.Bitmap := TImageNew(ScrollBox1.Controls[i]).picture.bitmap;
        ImGAux.hint := TImageNew(ScrollBox1.Controls[i]).hint;

        ImGAux.IdDoc := TImageNew(ScrollBox1.Controls[i]).IdDoc;
        ImGAux.texto := TImageNew(ScrollBox1.Controls[i]).texto;
        ImGAux.descripcion := TImageNew(ScrollBox1.Controls[i]).Descripcion;
        ImGAux.idimagen := TImageNew(ScrollBox1.Controls[i]).idimagen;
        ImGAux.IdGrupo := TImageNew(ScrollBox1.Controls[i]).IdGrupo;
        ImGAux.Obligatorio := TImageNew(ScrollBox1.Controls[i]).Obligatorio;
        ImGAux.TGrupo := TImageNew(ScrollBox1.Controls[i]).TGrupo;

        ImGAux.Width := TImageNew(ScrollBox1.Controls[i]).Width;
        ImGAux.Height := TImageNew(ScrollBox1.Controls[i]).Height;

        ImGAux.visible := True;
        ImGAux.DragMode := dmAutomatic;
        ImGAux.OnDragDrop := CmpDragDrop;
        ImGAux.OnDragOver := CmpDragOver;
        ImGAux.OnStartDrag := CmpStarDrag;
        tr := 0;
        LR:=0;

        ImGAux.Top := TImageNew(ScrollBox1.Controls[i]).Top+tr;

        ImGAux.Left := Inicio;
        Inicio := Inicio + Espaciado;
        Inc(Cta);

      end;
      inc(i);
    end;
    Timer3.enabled := True;
  end;
end;
 {$ENDREGION}

 {$REGION 'Evento del objeto dinámico'}
procedure TFrmDatosCargo.ImagMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var i: integer;
  //Detectar el clic del mouse
begin
  if Timagenew(Sender).Parent = ScrollBox1 then
    Editando :=Timagenew(Sender)
  else
  begin
    for i := 0 to ScrollBox1.ControlCount-1 do
    begin
      if TImageNew(ScrollBox1.Controls[i]).IdDoc = Timagenew(Sender).IdDoc then
        Editando := TImageNew(ScrollBox1.Controls[i]);
    end;
  end;
  ScrollBox1.SetFocus;
end;

procedure TFrmDatosCargo.ImgAuxMouseEnter(Sender: TObject);
//Si el mouse ingresa en el objeto se  debe detener el reloj
begin
  Timer3.Enabled := False;
end;

procedure TFrmDatosCargo.CmpDragDrop(Sender, Source: TObject; X,
  Y: Integer);
  var
  currentItem, nextItem, dragItem, dropItem : TListItem;
  //Agregar un elemento
begin
  if Sender <> Source then
    Agregar(Source,sender);
end;

procedure TFrmDatosCargo.CmpStarDrag(Sender: TObject;
  var DragObject: TDragObject);
  //Si se inicia el arrastre se cancela el reloj
begin
  Timer3.Enabled := False;
end;

procedure TFrmDatosCargo.CmpDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
  //Se puede agregar?
begin
  try
    Accept := timagenew(LVDisponible.Selected.Data) <> nil;
  except
  on e: exception do
    Accept := False;
  end;
end;
 {$ENDREGION}

 {$REGION 'Eventos de la ventana'}
procedure TFrmDatosCargo.FormCreate(Sender: TObject);
begin
  //IniciarTransaccion;

  LibroDatos.ActivePageIndex := 0;
  inherited;
  Actuales      := TStringList.Create;
  Ediciones     := TStringList.Create;
  ListaOriginal := TStringList.Create;
end;

procedure TFrmDatosCargo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if Key = 116 then
  begin
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crSQLWait;

      if TClientDataSet(dsRangoSalarios.DataSet).ProviderName <> '' then
        dsRangoSalarios.DataSet.Refresh;

      if TClientDataSet(dsSalariosIndep.DataSet).ProviderName <> '' then
        dsSalariosIndep.DataSet.Refresh;
    Finally
      Screen.Cursor := Cursor;
    End;
  end;
end;

procedure TFrmDatosCargo.FormShow(Sender: TObject);
var
  CdDocumentos: TClientDataSet;
  x           : integer;
  Cadena      : string;
  id: integer;
  CdDocuentosxCargo, CdGrupos : TClientDataSet;
  Reg: TLista;
  mnuItem, MnuEdicion : TMenuItem;
  // NEW
  LocImage: TImageNew;
  OldGrupo: Integer;
  CtaGrupo: Integer;
  Iitem, IitemDis : TImageNew;
  I:Integer;
  cap:string;
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  Try
    Screen.Cursor := crAppStart;

    inherited;

    Editando := nil;

    if dsTipoNomina.DataSet.FieldByName('SalarioMultiple').AsString = 'Si' then
    begin
      // Verificar si ya existe el dataset de los rangos de salarios
      if TClientDataSet(dsRangoSalarios.DataSet).ProviderName = '' then
      begin
        Try
          // Crear el conjunto de datos
          if Not CrearConjunto(TClientDataSet(dsRangoSalarios.DataSet), 'nom_rangosalarios', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Rango de Salarios']);

          if Not CargarDatosFiltrados(TClientDataSet(dsRangoSalarios.DataSet), 'IdOrganizacion,IdTipoNomina', [IdOrganizacion, dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger]) then
            raise InteligentException.CreateByCode(6, ['Rango de Salarios', dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger, 'Id. Tipo Nómina']);

          dsRangoSalarios.DataSet.Open;
        Except
          if TClientDataSet(dsRangoSalarios.DataSet).ProviderName <> '' then
            EliminarConjunto(TClientDataSet(dsRangoSalarios.DataSet));

          raise;
        End;
      end;

      if (dsRangoSalarios.DataSet.RecordCount = 0) or ((dsRangoSalarios.DataSet.FieldByName('IdOrganizacion').AsInteger <> IdOrganizacion) or (dsRangoSalarios.DataSet.FieldByName('IdTipoNomina').AsInteger <> dsTipoNomina.DataSet.FieldByName('IdTipoNomina').AsInteger)) then
        dsRangoSalarios.DataSet.Refresh;

      if dsRangoSalarios.DataSet.Locate('IdRangoSalarios', dsDatos.DataSet.FieldByName('IdRangoSalarios').AsInteger, []) then
        Edt1.Text := dsRangoSalarios.DataSet.FieldByName('Titulo').AsString;

      // Verificar si ya existe el dataset de los salarios independientes
      if TClientDataSet(dsSalariosIndep.DataSet).ProviderName = '' then
      begin
        Try
          // Crear el conjunto de datos
          if Not CrearConjunto(TClientDataSet(dsSalariosIndep.DataSet), 'rhu_salario_indep', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Salarios Independientes']);

          if Not CargarDatosFiltrados(TClientDataSet(dsSalariosIndep.DataSet), 'IdOrganizacion,IdTipoNomina', [IdOrganizacion, IdTipoNomina]) then
            raise InteligentException.CreateByCode(6, ['Salarios Independientes', IntToStr(IdOrganizacion) + ' / ' + IntToStr(IdTipoNomina), 'Id. Organizacion / Id. Tipo Nómina']);

          dsSalariosIndep.DataSet.Open;
        Except
          if TClientDataSet(dsSalariosIndep.DataSet).ProviderName <> '' then
            EliminarConjunto(TClientDataSet(dsSalariosIndep.DataSet));

          raise;
        End;
      end;
    end;

    // Añadiendo registro
    if dsDatos.State = dsinsert then
    begin
      dsDatos.DataSet.FieldByName('IdCargo').AsInteger    :=  0;
      dsDatos.DataSet.FieldByName('IdOrganizacion').AsInteger := IdOrganizacion;
      dsDatos.DataSet.FieldByName('IdTipoNomina').AsInteger := dsTipoNomina.Dataset.FieldByName('IdTipoNomina').AsInteger;
      dsDatos.DataSet.FieldByName('TituloCargo').AsString := '';
      dsDatos.DataSet.FieldByName('Grupo').AsString   :=  '';
      dsDatos.DataSet.FieldByName('Jornada').AsString := '8';
      //dsDatos.DataSet.FieldByName('IdSalario').AsInteger := -9;
      dsDatos.DataSet.FieldByName('CodigoCargo').AsString := '<Automático>';
//      TClientDataSet(dsDatos.DataSet).Post;
//      TClientDataSet(dsDatos.DataSet).ApplyUpdates(-1);
      id := ultimoid;
      //TClientDataSet(dsDatos.DataSet).Edit;
      id := dsDatos.DataSet.FieldByName('idcargo').AsInteger;
    end;

    //ejecutar consulta de documentos
    CdDocumentos := TClientDataSet.Create(self);
    CdDocumentos.RemoteServer := ClientModule1.DSProviderConnection1;
    if not CrearConjunto(CdDocumentos,'rhu_documento',ccCatalog) then
      raise Exception.Create('no se puede acceder al servidor para consultar documentos');
    CdDocumentos.Open;

  {
      //actuales  : añadir en lista temporal los id de los documentos para manipular los objetos
      CdDocuentosxCargo:= TClientDataSet.Create(self);
      if not CrearConjunto(CdDocuentosxCargo,'rhu_doctosxcargo',ccCatalog) then
        raise Exception.Create('no se puede acceder al servidor para consultar documentos por cargo');
      CargarDatosFiltrados(CdDocuentosxCargo,'idcargo',[dsDatos.DataSet.fieldbyname('idcargo').asinteger]);
      CdDocuentosxCargo.Open;
  }

  //##############################################################################
      if proveniente='FrmCargosxConvenio' then
      begin
        //actuales  : añadir en lista temporal los id de los documentos para manipular los objetos
        CdDocuentosxCargo:= TClientDataSet.Create(self);
        if not CrearConjunto(CdDocuentosxCargo,'rhu_doctosxcargovacante_aux',ccselect) then
          raise Exception.Create('no se puede acceder al servidor para consultar documentos por cargo');
        CargarDatosFiltrados(CdDocuentosxCargo,'idcargo,idconvenio',[dsDatos.DataSet.fieldbyname('idcargo').asinteger, idconvenio]);
        CdDocuentosxCargo.Open;
      end
      else
      begin
        //actuales  : añadir en lista temporal los id de los documentos para manipular los objetos
        CdDocuentosxCargo:= TClientDataSet.Create(self);
        if not CrearConjunto(CdDocuentosxCargo,'rhu_doctosxcargo',ccCatalog) then
          raise Exception.Create('no se puede acceder al servidor para consultar documentos por cargo');
        CargarDatosFiltrados(CdDocuentosxCargo,'idcargo',[dsDatos.DataSet.fieldbyname('idcargo').asinteger]);
        CdDocuentosxCargo.Open;
      end;
  //##############################################################################

     //añdiendo lista de actuales
    CdDocuentosxCargo.First;
    while not CdDocuentosxCargo.eof do
    begin
      Iitem := TImageNew.Create(nil);
      Iitem.IdImagen := CdDocuentosxCargo.FieldByName('idimagen').AsInteger;
      Iitem.Obligatorio := CdDocuentosxCargo.FieldByName('obligatorio').AsString;
      Iitem.IdGrupo := CdDocuentosxCargo.FieldByName('idgrupo').AsInteger;
      Iitem.TGrupo := CdDocuentosxCargo.FieldByName('titulogrupo').AsString;
      Actuales.AddObject(CdDocuentosxCargo.FieldByName('iddocumento').asstring,Iitem);
      CdDocuentosxCargo.Next;
    end;

    //creando items del popup
    CdGrupos := TClientDataSet.Create(nil);
    CrearConjunto(CdGrupos,'rhu_doctosxcargo',ccSelect);
    cdGrupos.open;
    cdGrupos.First;

    while not CdGrupos.Eof do
    begin
      try
        try
          //validaciones para q nunca de los nuncanes se duplique cadenas ni se añadan vacios
          if length(trim(CdGrupos.FieldByName('titulogrupo').AsString)) = 0 then
            raise Exception.Create('*');
          try
            if Pacciones.Items.Find( CdGrupos.FieldByName('titulogrupo').AsString) <> nil then
              raise Exception.Create('**');
            //item principal
            mnuItem := TMenuItem.Create(PAcciones);
            mnuItem.Caption := CdGrupos.FieldByName('titulogrupo').AsString;
            mnuItem.Tag     :=    CdGrupos.FieldByName('idgrupo').AsInteger;
            //mnuItem.ImageIndex := CdGrupos.FieldByName('idimagen').AsInteger;
            mnuItem.OnClick := popupItemClick;  //al seleccionar un grupo agrupar la imagen
            mnuItem.AutoHotkeys :=   maManual;
            mnuItem.Visible     :=  True;
            PAcciones.Items.Add(mnuItem);
          except
            ;
          end;
        except
          ;
        end;
      finally
        CdGrupos.Next;
      end;
    end;
    EliminarConjunto(CdGrupos);

    //copiar actuales a una lista temporal original para comparar cambios hechos
    LstCopiar(Actuales,ListaOriginal);

    OldGrupo := -1;
    CtaGrupo := 0;

    if DsDatos.State = dsInsert then
    begin
      DsDatos.DataSet.FieldByName('activo').AsString := 'si';
    end
    else
    begin
      if Actuales.Count > 0 then
      begin
        for x := 0 to Actuales.count-1 do
        begin
          CdDocumentos.Filtered := False;
          CdDocumentos.Filter := 'iddocumento = ' + Actuales[x];
          CdDocumentos.Filtered :=  True;
          if CdDocumentos.RecordCount = 1 then
          begin
            LocImage := TImageNew.Create(ScrollBox1);
            LocImage.Parent := ScrollBox1;
            LocImage.Top    :=  1;
            LocImage.Left   :=  1;
            LocImage.Width  := 60;
            LocImage.Height := 70;

            LocImage.Stretch := True;
            LocImage.Transparent := True;

            //llenando el objeto
            LocImage.IdDoc     := CdDocumentos.FieldByName('iddocumento').AsInteger;;
            LocImage.Texto   := CdDocumentos.FieldByName('nombredocumento').AsString;
            LocImage.Descripcion := CdDocumentos.FieldByName('descripcion').AsString;

            LocImage.PopupMenu := PAcciones;
            LocImage.OnMouseDown := ImagMouseDown;

            if CdDocuentosxCargo.Locate('iddocumento',LocImage.IdDoc,[]) then
            begin
              LocImage.Hint :=  'DOCUMENTO: '+CdDocuentosxCargo.FieldByName('nombredocumento').asstring;

              LocImage.Agrupado := CdDocuentosxCargo.FieldByName('Agrupado').AsInteger;

              LocImage.IdGrupo     :=    CdDocuentosxCargo.FieldByName('idgrupo').AsInteger;
              LocImage.Obligatorio := CdDocuentosxCargo.FieldByName('obligatorio').AsString;
              LocImage.IdImagen    :=   CdDocuentosxCargo.FieldByName('idimagen').AsInteger;
              LocImage.TGrupo      := CdDocuentosxCargo.FieldByName('titulogrupo').AsString;
            end;
            LocImage.Movido :=       False;
            LocImage.Cursor := crHandPoint;

            if OldGrupo <> LocImage.IdGrupo then
            begin
              OldGrupo := LocImage.IdGrupo;
              CtaGrupo := 1;
            end
            else
              Inc(CtaGrupo);

            LocImage.DragMode   :=  dmAutomatic;
            LocImage.OnDragDrop :=  CmpDragDrop;
            LocImage.OnDragOver :=  CmpDragOver;

            LocImage.Soy            :=       CtaGrupo;
            LocImage.OnMouseEnter   := SCB1MouseEnter;
            LocImage.Picture.Bitmap := Image3.Picture.bitmap;

            for i := 0 to (Length (LocImage.Texto))-1do
            begin
              LocImage.Canvas.Font.Name   := 'calibri';
              LocImage.Canvas.Font.Size   :=        45;
              LocImage.Canvas.Font.Color  :=    clNone;
              LocImage.Canvas.Brush.Style :=   bsClear;
              if ((i+1)*8)< Length (LocImage.Texto)  then
              begin
                cap := AnsiMidStr(LocImage.Texto, i*8, 8 );
                LocImage.Picture.Bitmap.Canvas.TextOut(4,(i+1)*60,cap   );
              end
              else
              begin
                cap := AnsiMidStr(LocImage.Texto, i*8, (8 ));
                LocImage.Picture.Bitmap.Canvas.TextOut(4,(i+1)*60,cap   );
              end;
            end;
            i:=0;
          end;
        end;
      end;

      // Cargar los datos del salario
      Reg := ObtenerRegistroXId('rhu_salario','idllave',dsDatos.DataSet.FieldByName('idsalario').AsInteger,ccUpdate);
      if Assigned(Reg) then
      begin
        Edt1.Text := Reg['codigosalario'];
        EditTituloSalario.Caption := Reg['titulosalario'];
      end;
    end;

    //generar cadena de filtrado
    Cadena := '';
    x:= 0;
    while x < actuales.count do
    begin
      if x > 0 then
        Cadena := Cadena + ' And ';
      Cadena := Cadena + 'iddocumento <> ' + Actuales[x];
      inc(x);
    end;

    //los documentos disponibles
    CdDocumentos.Filtered :=  False;
    CdDocumentos.Filter   := Cadena;
    CdDocumentos.Filtered :=   True;

    CdDocumentos.First;

    while not CdDocumentos.Eof do
    begin
      IitemDis := TImageNew.Create(nil);
      IitemDis.IdDoc   :=    CdDocumentos.FieldByName('iddocumento').AsInteger;
      IitemDis.Texto   := CdDocumentos.FieldByName('nombredocumento').AsString;
      IitemDis.Hint    := CdDocumentos.FieldByName('nombredocumento').AsString;
      IitemDis.Descripcion := CdDocumentos.FieldByName('descripcion').AsString;
      IitemDis.IdGrupo:= -999999999;
      IitemDis.IdImagen    :=    1;
      IitemDis.Obligatorio := 'Si';
      LVDisponible.AddItem(IitemDis.Texto,IitemDis);
      LVDisponible.Items[LVDisponible.Items.Count-1].SubItems.Add(IitemDis.Descripcion);
      LVDisponible.Items[LVDisponible.Items.Count-1].ImageIndex := 0;
      CdDocumentos.Next;
    end;
    OrdenarDocumentos;

    Edt1.SetFocus;
  Finally
    Screen.Cursor := Cursor;
  End;
end;

procedure TFrmDatosCargo.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
  //if EnTransaccion then
    //CancelarTransaccion;

  Actuales.Free;
  ListaOriginal.Free;
  Ediciones.free;

  if assigned(PanelPop) then
    freeandnil(PanelPop);

  if cdSalarios.ProviderName <> '' then
    EliminarConjunto(cdSalarios);

  inherited;
end;
 {$ENDREGION}

 {$REGION 'Procedimientos y funciones del Tpopupmenú de grupos'}
procedure TFrmDatosCargo.Agregar1Click(Sender: TObject);
var Item : TMenuItem;
  Wind: TFrmNewItem;
  i:Integer;
begin
  Wind := TFrmNewItem.create(nil);
  Wind.ShowModal;
  if not Wind.cancelado then
  begin
    Item      := TMenuItem.Create(PAcciones);
    Item.Caption  :=       Wind.EdTexto.Text;
    Item.Tag := -1*(pacciones.Items.Count-3);
    Item.OnClick  :=          popupItemClick;
    Item.AutoHotkeys := maManual;
    pacciones.Items.Add(Item);
    pacciones.Items[pacciones.Items.Count-1].Click;
  end;
end;

procedure TFrmDatosCargo.ChxObligatorioClick(Sender: TObject);
var aux: integer;
begin
  if ChxObligatorio.Checked then
    TImageNew(editando).Obligatorio := 'Si'
  else
    TImageNew(editando).Obligatorio := 'No';

  aux := ediciones.IndexOf(IntToStr(TImageNew(editando).IdDoc));
  if aux < 0 then
    Ediciones.AddObject(IntToStr(TImageNew(editando).IdDoc),TImageNew(editando))
  else
  begin
    Ediciones.Objects[aux]:=TImageNew(editando);
  end;
end;

procedure TFrmDatosCargo.clickEdtBtn;
Var
  registro: TLista;
begin
  Try
    if dsTipoNomina.DataSet.FieldByName('SalarioMultiple').AsString = 'Si' then
    begin
      // Mandar llamar la ventana de selección de salarios múltiples
      Application.CreateForm(TFrmSeleccionSalMultiple, FrmSeleccionSalMultiple);
      FrmSeleccionSalMultiple.dsRangoSalarios.DataSet := dsRangoSalarios.DataSet;
      FrmSeleccionSalMultiple.dsSalariosIndep.DataSet := dsSalariosIndep.DataSet;

      if Length(trim(dsDatos.DataSet.FieldByName('idsalario').AsString)) > 0 then
      begin
        if dsSalariosIndep.DataSet.Locate('idsalario',dsDatos.DataSet.FieldByName('idsalario').AsString,[]) then
          FrmSeleccionSalMultiple.PnlSeleccionado.Caption := 'Seleccionado Salario directo de: '+dsSalariosIndep.DataSet.FieldByName('salario').AsString;
      end;

      if Length(trim(dsDatos.DataSet.FieldByName('idrangosalarios').AsString)) > 0 then
      begin
        if dsRangoSalarios.DataSet.Locate('idrangosalarios',dsDatos.DataSet.FieldByName('idrangosalarios').AsString,[]) then
          FrmSeleccionSalMultiple.PnlSeleccionado.Caption := 'Seleccionado Rangos de salario para: '+dsRangoSalarios.DataSet.FieldByName('importe').AsString;
      end;

      //FrmSeleccionSalMultiple.PnlSeleccionado.Caption :=  'Seleccionado Rangos de salario para: '+edt1.Text;
      if FrmSeleccionSalMultiple.ShowModal = mrOk then
      begin
        if FrmSeleccionSalMultiple.Rango then
        begin
          Edt1.Text := FrmSeleccionSalMultiple.dsRangoSalarios.DataSet.FieldByName('Titulo').AsString;
          EditTituloSalario.Caption := '';
          dsDatos.DataSet.FieldByName('IdSalario').AsVariant := Null;
          dsDatos.DataSet.FieldByName('IdRangoSalarios').AsInteger := FrmSeleccionSalMultiple.dsRangoSalarios.DataSet.FieldByName('IdRangoSalarios').AsInteger;
        end
        else
        begin
          Edt1.Text := FrmSeleccionSalMultiple.dsSalariosIndep.DataSet.FieldByName('MontoSalario').AsString;
          EditTituloSalario.Caption := FrmSeleccionSalMultiple.dsSalariosIndep.DataSet.FieldByName('TituloSalario').AsString;
          dsDatos.DataSet.FieldByName('IdSalario').AsVariant := FrmSeleccionSalMultiple.dsSalariosIndep.DataSet.FieldByName('IdSalario').AsInteger;
          dsDatos.DataSet.FieldByName('IdRangoSalarios').AsVariant := Null;
        end;
      end;
    end
    else
    begin
      // Verificar si se ha creado el conjunto de datos de los salarios
      if cdSalarios.ProviderName = '' then
        if Not CrearConjunto(cdSalarios, 'rhu_salario', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Salarios']);

      if (Not cdSalarios.Active) or ((cdSalarios.Active) and (cdSalarios.FieldByName('IdOrganizacion').AsInteger <> IdOrganizacion)) then
        if CargarDatosFiltrados(cdSalarios, 'Rango,IdOrganizacion,IdTipoNomina', [-1, IdOrganizacion, IdTipoNomina]) then
        begin
          if cdSalarios.Active then
            cdSalarios.Refresh
          else
            cdSalarios.Open;
        end
        else
          raise InteligentException.CreateByCode(6, ['Id. Organización / Id. Tipo Nómina', IntToStr(IdOrganizacion) + ' / ' + IntToStr(IdTipoNomina)]);

      Try
        Application.CreateForm(TFrmSeleccionaSalario, FrmSeleccionaSalario);
        FrmSeleccionaSalario.dsSalarios.DataSet := cdSalarios;
        if FrmSeleccionaSalario.ShowModal = mrOk Then
        begin
          Edt1.Text := FrmSeleccionaSalario.DsSalarios.DataSet.FieldByName('MontoSalario').AsString;
          EditTituloSalario.Caption := FrmSeleccionaSalario.DsSalarios.DataSet.FieldByName('TituloSalario').AsString;
          dsDatos.DataSet.FieldByName('IdSalario').AsVariant := FrmSeleccionaSalario.DsSalarios.DataSet.FieldByName('IdSalario').AsInteger;
          dsDatos.DataSet.FieldByName('IdRangoSalarios').AsVariant := Null;

          {dsDatos.Dataset.FieldByName('idSalario').AsString := registro.Valor['idSalario'];
          edt1.Text := registro.Valor['CodigoSalario'];
          EditTituloSalario.Caption := registro.Valor['TituloSalario'];}
        end;
      Finally
        FrmSeleccionaSalario.Free;
      End;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado','Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;

end;

procedure TFrmDatosCargo.PAccionesChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  inherited;
  Timer3.Enabled := False;
end;

procedure TFrmDatosCargo.PAccionesPopup(Sender: TObject);
var IdFind,i:integer;
begin
  try
    if Editando = nil then
      raise Exception.Create('*');

    if Editando.Parent <> ScrollBox1 then
      timer3.Enabled := False;

    for i := 0 to pacciones.Items.count-1 do
    begin
      PAcciones.Items[i].Checked := false;
      PAcciones.Items[i].Default := False;
    end;

    if TImageNew(Editando).Obligatorio = 'Si' then
    begin
      ChxObligatorio.Checked := True;
    end;

    for i := 0 to pacciones.Items.count-1 do
    begin
      PAcciones.Items[i].Enabled := True;
    end;

    if length(trim(TImageNew(Editando).TGrupo)) > 0 then
    begin
      if PAcciones.Items.Find(TImageNew(Editando).TGrupo) <> nil then
      begin
        PAcciones.Items.Find(TImageNew(Editando).TGrupo).Checked := True;
        PAcciones.Items.Find(TImageNew(Editando).TGrupo).Default := True;
      end;
    end;

  except
    for i := 0 to pacciones.Items.count-1 do
    begin
      PAcciones.Items[i].Enabled := False;
    end;
  end;
end;

 procedure TFrmDatosCargo.EditaGrupoItemClick(Sender: TObject);
var Item :   TMenuItem;
  Wind   : TFrmNewItem;
  i,aux  :     Integer;
begin
  Wind := TFrmNewItem.create(nil);
  Wind.EdTexto.Text := ReplaceStr(TMenuItem(Sender).Caption,'&','');;
  Wind.ShowModal;
  if not Wind.cancelado then
  begin
    //modifica caption del popup
    TMenuItem(sender).Caption:= Wind.EdTexto.Text;
    for i  := 0 to pacciones.Items.Count-1 do
    begin
      if pacciones.Items[i].Tag = TMenuItem(sender).Tag then
      begin
        pacciones.Items[i].Caption := ReplaceStr(TMenuItem(Sender).Caption,'&','');
      end;
    end;
    //modificando objetos en el listview
    for i  := 0 to ScrollBox1.ComponentCount-1 do
    begin
      if TImageNew(ScrollBox1.Components[i]).IdGrupo =  TMenuItem(sender).Tag then
      begin
        TImageNew(ScrollBox1.Components[i]).TGrupo := ReplaceStr(TMenuItem(Sender).Caption,'&','');
        if TImageNew(ScrollBox1.Components[i]).IdGrupo > 0 then
        begin
          aux := ediciones.IndexOf(IntToStr(TImageNew(ScrollBox1.Components[i]).IdDoc));
          if aux < 0 then
            Ediciones.AddObject(IntToStr(TImageNew(ScrollBox1.Components[i]).IdDoc),TImageNew(ScrollBox1.Components[i]))
          else
          begin
            Ediciones.Objects[aux]:=TImageNew(ScrollBox1.Components[i]);
          end;
        end
        else
        begin
          aux := Actuales.IndexOf(IntToStr(TImageNew(ScrollBox1.Components[i]).IdDoc));
          if aux <> -1 then
          begin
            Actuales.Objects[aux] := TImageNew(ScrollBox1.Components[i]);
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmDatosCargo.edt1ClickBtn(Sender: TObject);
begin
  clickEdtBtn;
end;

procedure TFrmDatosCargo.edt1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var
  cursor: Tcursor;
  cdBuscaSal: TClientDataSet;
begin
  if key = 13 then
  try
    try
      cursor := Screen.Cursor;
      Screen.cursor := crAppStart;
      begin
        cdBuscaSal := TClientDataSet.Create(nil);
        if Length(Trim(edt1.Text)) > 0 then
        begin
          if cdBuscaSal.State <> dsBrowse then
          begin
            CrearConjunto(cdBuscaSal, 'rhu_salario', ccCatalog);
          end;
          CargarDatosFiltrados(cdBuscaSal, 'idSalario', [edt1.text]);
          cdBuscaSal.Open;

         { if cdBuscaSal.recordcount < 1 then
            raise InteligentException.createbyCode(26,['Salarios']); }

          if cdBuscaSal.recordcount > 1 then
            raise InteligentException.CreateByCode(25,['Salarios']);

          edt1.text := cdBuscaSal.FieldByName('codigoSalario').AsString;
          dsDatos.DataSet.FieldByName('idSalario').AsInteger := cdBuscaSal.FieldByName('idSalario').asInteger;
          EditTituloSalario.caption := cdBuscaSal.FieldByName('titulosalario').AsString;
          EliminarConjunto(cdBuscaSal);
        end;
        if cdBuscaSal.recordcount < 1 then
        Begin
          if (InteliDialog.ShowModal('Aviso', 'No existe [Salario] que concuerde con ese criterio de bùsqueda. ¿Deseas abrir el Catalogo de Salarios?', mtConfirmation , [mbYes, mbNo], 0)) = mrYes then
            clickEdtBtn;
        end;
        cdBuscaSal.Free;
      end;
    finally
      Screen.Cursor := cursor;
    end;
  except
  on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

  on e:InteligentConnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

  on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmDatosCargo.popupItemClick(Sender: TObject);
var IdFind,ind,i,aux: integer;
encontrado: boolean;
//al hacer clic en un item asignarle el grupo al objeto
begin
  if Editando <> nil then
  begin
    //si apenas se le va a asignar un grupo
    if not TMenuItem(Sender).Checked then
    begin

      //disminuir el numero de agrupados al que pertenece
      if TImageNew(Editando).IdGrupo <> -999999999 then
      begin
        for i := 0 to ScrollBox1.ControlCount-1 do
        begin
          if TImageNew(scrollbox1.Controls[i]).idgrupo = TImageNew(Editando).IdGrupo then
            if TImageNew(scrollbox1.Controls[i]).Agrupado > 1 then
              TImageNew(scrollbox1.Controls[i]).Agrupado := TImageNew(scrollbox1.Controls[i]).Agrupado-1;
        end;
      end;

      TImageNew(Editando).TGrupo:= ReplaceStr(TMenuItem(Sender).Caption,'&','');
      TImageNew(Editando).IdGrupo := TMenuItem(Sender).tag;
      TMenuItem(Sender).Default := True;

      //aumentar el numero de agrupados al que se va a agregar excepto al que se está editando
      for i := 0 to ScrollBox1.ControlCount-1 do
      begin
        if (TImageNew(scrollbox1.Controls[i]).idgrupo = TMenuItem(Sender).tag) and (TImageNew(Editando).IdDoc <> TImageNew(scrollbox1.Controls[i]).IdDoc ) then
          TImageNew(scrollbox1.Controls[i]).Agrupado := TImageNew(scrollbox1.Controls[i]).Agrupado+1;
      end;

      encontrado := False;
      i := 0;
      while (i < ScrollBox1.ControlCount) and (not encontrado) do
      begin
        if (TImageNew(scrollbox1.Controls[i]).idgrupo = TMenuItem(Sender).tag) then
          if TImageNew(scrollbox1.Controls[i]).IdDoc <> TImageNew(Editando).IdDoc then
          begin
            TImageNew(Editando).Agrupado := TImageNew(scrollbox1.Controls[i]).Agrupado;
            encontrado := True;
          end;
        inc(i);
      end;
    end
    else
    //si se esta sacando de un grupo
    begin
      //disminuir el numero de agrupados al que pertenece
      if TImageNew(Editando).IdGrupo <> -999999999 then
      begin
        for i := 0 to ScrollBox1.ControlCount-1 do
        begin
          if TImageNew(scrollbox1.Controls[i]).idgrupo = TImageNew(Editando).IdGrupo then
            TImageNew(scrollbox1.Controls[i]).Agrupado := TImageNew(scrollbox1.Controls[i]).Agrupado-1;
        end;
      end;
      TImageNew(Editando).IdGrupo:= -999999999;
      TImageNew(Editando).TGrupo   := '';
      TImageNew(Editando).Soy      :=  1;
      TImageNew(Editando).agrupado :=  1;
    end;

    aux := ediciones.IndexOf(IntToStr(TImageNew(editando).IdDoc));
    if aux < 0 then
      Ediciones.AddObject(IntToStr(TImageNew(editando).IdDoc),TImageNew(editando))
    else
    begin
      Ediciones.Objects[aux]:=TImageNew(editando);
    end;
  end;

  Editando := nil;
  OrdenarDocumentos;
end;
 {$ENDREGION}

 {$REGION 'Procedimientos y funciones genéricas'}
procedure TFrmDatosCargo.Reordenar(Lista: TListView);
var tipo: TViewStyle;
begin
  tipo   := Lista.ViewStyle;
  Lista.ViewStyle := vsList;
  Lista.ViewStyle :=   tipo;
end;

procedure TFrmDatosCargo.GuardarHijos(idPadre: integer);
var x,Alteraciones,IdUltimo,i,b: Integer;
   UptDocxCargo, Aux :    TclientDataset;
   Aeliminar, Aagregar :     tStringList;
   Consulta:string;
begin
  Aeliminar := TStringList.Create;
  Aagregar  := TStringList.Create;

  UptDocxCargo := TClientDataSet.Create(self);
//  CrearConjunto(UptDocxCargo,'rhu_doctosxcargo',ccUpdate);
//##############################################################################
    if proveniente='FrmCargosxConvenio' then
    begin
      CrearConjunto(UptDocxCargo,'rhu_doctosxcargovacante',ccUpdate);
    end
    else
    begin
      CrearConjunto(UptDocxCargo,'rhu_doctosxcargo',ccUpdate);
    end;

//##############################################################################
  UptDocxCargo.Open;

  Aeliminar := (ObtenerCambios(ListaOriginal, Actuales));
  Aagregar  := (ObtenerCambios(Actuales, ListaOriginal));

  //si hay documentos por agregar se hace
  x := 0;
  //para el manejo del id
  Aux := TClientDataSet.Create(nil);

  CrearConjunto(Aux, 'rhu_docxcargo', ccSelect);
  //Consulta := 'Select max(idgrupo) as idgrupo from rhu_doctosxcargo';
//##############################################################################
    if proveniente='FrmCargosxConvenio' then
    begin
      Consulta:= 'Select max(idgrupo) as idgrupo from rhu_doctosxcargovacante where IdConvenio='+inttostr(idconvenio);
    end
    else
    begin
      Consulta := 'Select max(idgrupo) as idgrupo from rhu_doctosxcargo';
    end;
//##############################################################################
  PonerSentenciaSQL(Aux.ProviderName, Consulta);
  Aux.Open;
  while x < Aagregar.Count do
  begin
  //  if Aagregar.IndexOf(ListaAct.Items.Item[x].Caption) < 0 then
    begin

      UptDocxCargo.Insert;
      UptDocxCargo.FieldByName('iddocumento').AsString  := Aagregar[x];
//##############################################################################
      if proveniente='FrmCargosxConvenio' then
      begin
          UptDocxCargo.FieldByName('IdDoctosxCargovacante').AsInteger := 0;
          UptDocxCargo.FieldByName('idconvenio').AsInteger := idconvenio;
      end;
//##############################################################################
      UptDocxCargo.FieldByName('idcargo').AsInteger     := idPadre;

      UptDocxCargo.FieldByName('titulogrupo').asstring := TImageNew(Aagregar.Objects[x]).TGrupo;
      UptDocxCargo.FieldByName('idimagen').AsInteger := timagenew(Aagregar.Objects[x]).IdImagen;//timagenew(Aagregar.Objects[x]).IdGrupo;

      //si el registro es nuevo entonces asignar el ultimo id
      if timagenew(Aagregar.Objects[x]).IdGrupo < 0 then
      begin
        Aux.Refresh;
        IdUltimo := Aux.FieldByName('idgrupo').AsInteger +1;
        UptDocxCargo.FieldByName('idgrupo').AsInteger := idultimo;
      end
      else
        UptDocxCargo.FieldByName('idgrupo').AsInteger := timagenew(Aagregar.Objects[x]).IdGrupo;
      b := timagenew(Aagregar.Objects[x]).IdGrupo;

      UptDocxCargo.FieldByName('obligatorio').asstring := timagenew(Aagregar.Objects[x]).Obligatorio;

      UptDocxCargo.Post;
      UptDocxCargo.ApplyUpdates(-1);
      if b <> -999999999 then
      begin
        //Cuando se añade un nuevo grupo se asigna un id, entonces actualizar ese valor en los objetos
        for i := 0 to Aagregar.Count-1 do
        begin
          if timagenew(Aagregar.Objects[i]).IdGrupo = b then
            timagenew(Aagregar.Objects[i]).IdGrupo := IdUltimo;
        end;
        //Se realiza una busqueda en lista de ediciones localizando y sustituyendo el id
        for i := 0 to Ediciones.Count-1 do
        begin
          if timagenew(Ediciones.Objects[i]).IdGrupo = b then
            timagenew(Ediciones.Objects[i]).IdGrupo := IdUltimo;
        end;
      end;
      Inc(x);
    end;
  end;

  //si hay documentos por editar se hace
  x := 0;
  while x < ediciones.Count do
  begin
  //  if ediciones.IndexOf(ListaAct.Items.Item[x].Caption) < 0 then
    begin
      UptDocxCargo.Close;
      CargarDatosFiltrados(UptDocxCargo,'idcargo,iddocumento',[dsDatos.DataSet.FieldByName('idcargo').AsInteger,ediciones[x]]);
      UptDocxCargo.Open;
      UptDocxCargo.edit;
      UptDocxCargo.FieldByName('titulogrupo').asstring := timagenew(ediciones.Objects[x]).TGrupo;

      //si el id grupo es nuevo entonces autoincrementar
      if timagenew(ediciones.Objects[x]).IdGrupo < 0 then
      begin
        Aux.Refresh;
        IdUltimo := Aux.FieldByName('idgrupo').AsInteger +1;
        UptDocxCargo.FieldByName('idgrupo').AsInteger := IdUltimo;
        b := timagenew(ediciones.Objects[x]).IdGrupo;

        //Se realiza una busqueda en lista de ediciones localizando y sustituyendo el id
        for i := 0 to Ediciones.Count-1 do
        begin
          if timagenew(Ediciones.Objects[i]).IdGrupo = b then
            timagenew(Ediciones.Objects[i]).IdGrupo := IdUltimo;
        end;
      end
      else
        UptDocxCargo.FieldByName('idgrupo').AsInteger := timagenew(ediciones.Objects[x]).IdGrupo;

      UptDocxCargo.FieldByName('idimagen').AsInteger := timagenew(ediciones.Objects[x]).IdImagen;//timagenew(Aagregar.Objects[x]).IdGrupo;
      UptDocxCargo.FieldByName('obligatorio').asstring := timagenew(ediciones.Objects[x]).Obligatorio;
      UptDocxCargo.Post;
      UptDocxCargo.ApplyUpdates(-1);
      Inc(x);
    end;
  end;
  EliminarConjunto(aux);
  //si hay documentos por eliminar se hace
  x := 0;
  while x < Aeliminar.Count do
  begin
    UptDocxCargo.Close;
    CargarDatosFiltrados(UptDocxCargo,'idcargo,iddocumento',[dsDatos.DataSet.FieldByName('idcargo').AsInteger,Aeliminar[x]]);
    UptDocxCargo.Open;
    if UptDocxCargo.RecordCount = 1 then
    begin
      UptDocxCargo.Delete;
      UptDocxCargo.ApplyUpdates(-1);
    end;
    Inc(x);
  end;

  Aeliminar.Free;
  Aagregar.Free;
  EliminarConjunto(UptDocxCargo);
end;

function TFrmDatosCargo.ObtenerCambios(LBase,
  LCambio: TStringList): TStringList;
var
  Lst : Tstringlist;
  N: Integer;
begin
  Lst := TStringList.Create;
  for n := 0 to LBase.Count-1 do
  begin
    if LCambio.IndexOf(Lbase[n]) < 0 then
      Lst.AddObject(LBase[n],LBase.Objects[n]);
  end;
  Result := Lst;
end;

procedure TFrmDatosCargo.OrdenarDocumentos;
var
  OldGrupo: Integer;
  CtaGrupo: Integer;
  i, Columna,
  Renglon,
  IncCol,
  ident: Integer;

  ListGrp,ListDoc: Tstringlist;
  x,y,f,rc: integer;

  //scroll status
  posx: integer;

  posScroll:integer;
begin
  posx := ScrollBox1.HorzScrollBar.Position;
  ScrollBox1.HorzScrollBar.Position := 0;
  ListGrp := TStringList.Create;
  try
    if ScrollBox1.ControlCount > 0 then
    begin
      //almacenando grupos y documentos
      for i := 0 to ScrollBox1.ControlCount -1 do
      begin
        TImageNew(ScrollBox1.Controls[i]).Movido := false;
        Renglon := 1;
        //si el elemento de grupo no se encuentra registrado entonces crear un grupo
        if (ListGrp.indexof(inttostr(TImageNew(ScrollBox1.Controls[i]).IdGrupo)) = -1)  then
        begin
          ListDoc := TStringList.Create;
          ListDoc.AddObject(IntToStr(TImageNew(ScrollBox1.Controls[i]).IdDoc),TImageNew(ScrollBox1.Controls[i]));
          ListGrp.AddObject(IntToStr(TImageNew(ScrollBox1.Controls[i]).IdGrupo),ListDoc);
        end
        else
        //en caso contrario añadir un nuevo documento a la lista de grupos
        begin
           Tstringlist(ListGrp.Objects[ListGrp.indexof(inttostr(TImageNew(ScrollBox1.Controls[i]).IdGrupo))]).AddObject(IntToStr(TImageNew(ScrollBox1.Controls[i]).IdDoc),TImageNew(ScrollBox1.Controls[i]));
        end;
      end;
    end;

    //estableciendo lineas y columnas de cada objeto
    Columna := 0;
    for x := 0 to ListGrp.count-1 do  //grupos
    begin
      for y := 0 to tstringList(ListGrp.Objects[x]).count-1 do //documentos
      begin
        //si es el primer documento del grupo reestablecer el top
        if (y = 0) then
        begin
          TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).Left :=(x* TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).Width)+(x*espaciado);
          Columna := TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).Left+TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).Width;
          TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).top :=0;
          //trabajando
          if x > 0 then
          begin
            if ListGrp[x-1] = '-999999999' then
            begin
              TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).Left := TImageNew(tstringList(ListGrp.Objects[x-1]).Objects[tstringList(ListGrp.Objects[x-1]).count-1]).left+
              TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).width+(espaciado);
            end;
          end
          else
            if y > 0 then
              TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).left := TImageNew(tstringList(ListGrp.Objects[x]).Objects[y-1]).left;
        end
        else
        begin
        //si el documento pertenece a un grupo, buscar su antecesor y posicionarse
          if TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).IdGrupo = -999999999 then
          begin
            TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).Left :=TImageNew(tstringList(ListGrp.Objects[x]).Objects[y-1]).Left+TImageNew(tstringList(ListGrp.Objects[x]).Objects[y-1]).Height+espaciado;
            TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).top :=0;
          end
          else
          begin
            TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).Left :=TImageNew(tstringList(ListGrp.Objects[x]).Objects[y-1]).left+6;
            TImageNew(tstringList(ListGrp.Objects[x]).Objects[y]).top :=TImageNew(tstringList(ListGrp.Objects[x]).Objects[y-1]).top+6;
          end;
        end;
      end;
    end;
  finally
    ScrollBox1.HorzScrollBar.Position := posx;
    ListGrp.free;
  end;
end;

function TFrmDatosCargo.LstCopiar(Origen,Destino: tstringlist):Boolean;
var
  i:Integer;
  R: Boolean;
begin
  try
    r := False;
    Destino.Clear;
    Destino.BeginUpdate;
    for i := 0 to Origen.Count-1 do
    begin
      Destino.AddObject(Origen[i],Origen.Objects[i]);
    end;
    Destino.EndUpdate;
    r:= True;
  finally
    Result := r;
  end;
end;
 {$ENDREGION}

 {$REGION 'Eventos del listview de documentos disponibles'}
procedure TFrmDatosCargo.LVDisponibleDragDrop(Sender, Source: TObject; X,
  Y: Integer);
  //Eliminar un elemento arrastrandolo
begin
  try
    Timer3.enabled := false;
    try
      if InteliDialog.ShowModal('Está a punto de desvincular el documento "'  + TImageNew(Source).Texto+' del cargo '+dsdatos.DataSet.FieldByName('titulocargo').AsString+'.',
                                'Tome en cuenta que si hay personal de este cargo, el documento "' +TImageNew(Source).Texto+  '" será descartado.'+#10+
                                '¿Está seguro de realizar esta acción?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        raise InteligentWarning.Create('*');
      Eliminar(Source);
      OrdenarDocumentos;
    finally
      Timer3.Enabled := True;
    end;
  Except
    on e: InteligentWarning do
    begin
       ;//solo para salir del flujo
    end;
    on e: exception do
    begin
      InteliDialog.ShowModal('Error.','Al tratar de desvincular un docuemnto por la siguiente razón:'+e.Message, mtInformation, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmDatosCargo.LVDisponibleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
  //se puede eliminar?
begin
  try
    Accept:=TObject(source).ClassType = TImageNew;
  except
    on e:exception  do
     Accept :=False;
  end;
end;
 {$ENDREGION}

 {$REGION 'Eventos del componente popupbox de grupos'}
procedure TFrmDatosCargo.PopupBoxMouseLeave(Sender: TObject);
//Al salir del popup activar el reloj
begin
  timer3.Enabled := True;
end;

procedure TFrmDatosCargo.PopupBoxMouseEnter(Sender: TObject);
//Al entrar al popup se debe desactivar el reloj
begin
  timer3.Enabled := False;
end;

procedure TFrmDatosCargo.TGrupoKeyPress(Sender: TObject; var Key: Char);
var i: integer;
begin
 //evento del edit del titulo del grupo para editarlo, contiene como tag el idgrupo
 if key = #13 then
 begin
   for i := 0 to ScrollBox1.ComponentCount-1 do
   begin
     if TImageNew(ScrollBox1.Components[i]).IdGrupo = TEdit(sender).Tag then
     begin
       TImageNew(ScrollBox1.Components[i]).TGrupo := TEdit(sender).Text;
       if Ediciones.IndexOf(IntToStr(TImageNew(ScrollBox1.Components[i]).iddoc)) = -1 then
         Ediciones.AddObject(IntToStr(TImageNew(ScrollBox1.Components[i]).iddoc),TImageNew(ScrollBox1.Components[i]));
     end;
   end;
 end;
end;
 {$ENDREGION}

{ TnewPanel }
 {$REGION 'Clase del panel popupBox'}
constructor TnewPanel.Create(AOwner: TComponent);
begin
  PopupBox := tscrollbox.create(self);
  PopupBox.Color := clWhite;
  EdtTituloGrp := Tedit.Create(self);
  inherited;
end;

destructor TnewPanel.Destroy;
begin
  inherited;
end;
 {$ENDREGION}
end.
