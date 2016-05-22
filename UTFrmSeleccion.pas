unit UTFrmSeleccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvSelectors, StdCtrls, ExtCtrls, DB, DBClient, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxGrid, StrUtils, Buttons, UInteliDialog, AdvShapeButton, Menus, ComCtrls,
  ImgList, JvExControls, JvLookOut, JvExStdCtrls, JvButton, JvStartMenuButton,
  JvLabel, AdvSmoothStepControl, AeroWizardButton, AeroLabel, Grids, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, DBGrids, JvExDBGrids, JvDBGrid, AdvOfficePager,
  AeroButtons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxStyles, cxVGrid, cxDBVGrid,
  cxInplaceContainer, dxBevel, cxImage, cxTreeView, cxClasses, cxDBEdit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  TRGBTripleArray = array[0..32767] of TRGBTriple;
  PRGBTripleArray = ^TRGBTripleArray;

  TAcceso = class
    Path: String;
    SeqAcceso: String;
    Wbs: String;
    Llave: String;
  end;

  TNodos= class
    IdOrganizacion: Integer;
    IdPadre: Integer;
    NombreOrg: string;
    CodigoOrg: string;
    Descripcion: string;
  end;

  TFrmSeleccion = class(TForm)
    cdOrganizacion: TClientDataSet;
    cdUsuarioOrg: TClientDataSet;
    PopupMenu1: TPopupMenu;
    Seleccionar1: TMenuItem;
    Eliminar1: TMenuItem;
    ilAccesos: TImageList;
    ilAccesosSmall: TImageList;
    Panel3: TPanel;
    AdvSmoothStepControl1: TAdvSmoothStepControl;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    cdFiltrado: TClientDataSet;
    Paginador: TAdvOfficePager;
    ListView1: TListView;
    pnlMain: tcxGroupBox;
    cxGBDetalle: TcxGroupBox;
    cxGBOrganizacion: TcxGroupBox;
    CxTVOrganizaciones: TcxTreeView;
    cxVGrid1: TcxDBVerticalGrid;
    cxCategoryVGrid1CategoryRow1: TcxCategoryRow;
    cxGrdRowVGrid1DBEditorRow2: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow3: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow4: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow1: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow5: TcxDBEditorRow;
    cxGrdRowVGrid1DBEditorRow6: TcxDBEditorRow;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    dsFiltrado: TDataSource;
    CxDbImageEmpresa: TcxDBImage;
    cxGBBotones: TcxGroupBox;
    CxBtnEntrar: TcxButton;
    CxBtnCancel: TcxButton;
    cxstyl2: TcxStyle;
    CdAcceso: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MouseEnter(Sender: TObject);
    procedure MouseLeave(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure AdvSmoothStepControl1StepMouseDown(Sender: TObject;
      StepIndex: Integer; StepMode: TStepMode; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure AlDobleClick(Sender: TObject);
    procedure AlMostrar(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CxTVOrganizacionesChange(Sender: TObject; Node: TTreeNode);
    procedure CxBtnEntrarClick(Sender: TObject);
    procedure CxBtnCancelClick(Sender: TObject);

  private
    Providername: String;
    CodSale: Integer;
    ListaAccesos: TStringList;
    VerMas: Boolean;
    procedure crearDiagramaOrg;
    procedure CargaRegistros;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure AlKeyEnter(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;
const
  Version = '10.8.14';
var
  FrmSeleccion: TFrmSeleccion;
  IndexStep   : Integer;
  IdPadre,
  IdEmpresa,
  sEmpresa: String;
  Organizacion  : String;
  Empresa       : String;
  Contrato      : String;
  PrimerNivel   : Integer;
  UltimoNivel   : Integer;
  NivelesOrg    : TStringList;
  AccesoX: TAcceso;

procedure Split(const Delimiter: Char;Input: string;const Strings: TStrings);
  
implementation

uses Uregistro, UTFrmArbolAccesos, UTFrmMuestraAccesos, ClientModuleUnit1,
     ClientClassesUnit1, Unit2, UTFrmOrganizacion;

{$R *.dfm}

procedure Split(const Delimiter: Char;Input: string;const Strings: TStrings);
begin
   Assert(Assigned(Strings)) ;
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
end;

procedure Redimensionar(Imagen:TBitmap; Ancho, Alto: Integer);
var
  Bitmap: TBitmap;

  //····························································
  // Procedimiento de Antialiasing con Distancia=1
  procedure Antialiasing(bmp1, bmp2:TBitmap);
  var
    r1,g1,b1:Integer;
    Y, X, j:integer;
    SL1, SL2, SL3: PRGBTripleArray;
  begin

    // Tamaño del bitmap destino
    bmp2.Height := bmp1.Height;
    bmp2.Width := bmp1.Width;
    // SCANLINE
    SL1 := bmp1.ScanLine[0];
    SL2 := bmp1.ScanLine[1];
    SL3 := bmp1.ScanLine[2];

    // reorrido para todos los pixels
    for Y := 1 to (bmp1.Height - 2) do 
    begin
      for X := 1 to (bmp1.Width - 2) do 
      begin
        R1 := 0;  G1 := 0; B1 := 0;
        // los 9 pixels a tener en cuenta
        for j := -1 to 1 do begin
          // FIla anterior
          R1 := R1 + SL1[X+j].rgbtRed    + SL2[X+j].rgbtRed    + SL3[X+j].rgbtRed;
          G1 := G1 + SL1[X+j].rgbtGreen  + SL2[X+j].rgbtGreen  + SL3[X+j].rgbtGreen;
          B1 := B1 + SL1[X+j].rgbtBlue   + SL2[X+j].rgbtBlue   + SL3[X+j].rgbtBlue;
        end;
        // Nuevo color
        R1:=Round(R1 div 9);
        G1:=Round(G1 div 9);
        B1:=Round(B1 div 9);
        // Asignar el nuevo
        bmp2.Canvas.Pixels[X, Y] := RGB(R1,G1,B1);
      end;
      // Siguientes...
      SL1 := SL2;
      SL2 := SL3;
      SL3 := bmp1.ScanLine[Y+1];
    end;
  end;

begin
  Bitmap:= TBitmap.Create;

  // Aplicamos antialiasing
  Antialiasing(Imagen, Bitmap);
  Imagen.Assign(Bitmap);

  // reducir
  try
    Bitmap.Width:= Ancho;
    Bitmap.Height:= Alto;
    Bitmap.Canvas.StretchDraw(Bitmap.Canvas.ClipRect, Imagen);
    Imagen.Assign(Bitmap);
  finally
    Bitmap.Free;
  end;
end;

procedure TFrmSeleccion.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);

  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow; //WS_Ex_AppWindow
end;

procedure TFrmSeleccion.AlKeyEnter(Sender: TObject; var Key: Char);
begin
  if Key  = #13 then
  begin
    AlDobleClick(Sender);
  end;
end;

procedure TFrmSeleccion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
  ModalResult := CodSale;
end;

procedure TFrmSeleccion.FormCreate(Sender: TObject);
begin
  EliminarConjunto([cdOrganizacion, cdFiltrado, cdUsuarioOrg]);
  if not CrearConjunto(CdAcceso, 'nuc_configuracion_acceso', ccCatalog) then
    raise InteligentException.CreateByCode(5, ['Configuración Acceso']);

end;

procedure TFrmSeleccion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 116) and (ssCtrl in Shift) then
  begin
    // Pulsado CTRL-F5, volver a leer los datos originales
    cdUsuarioOrg.Close;
    CargarDatosFiltrados(cdUsuarioOrg, 'nivel,cadena', [0, ListaAccesos.CommaText]);
    cdUsuarioOrg.Open;

    ListView1.Items.Clear;
    VerMas := True;
{    if cdUsuarioOrg.RecordCount = 0 then
      // Si no existen datos de acceso al sistema se deberá enviar al usuario a la ventana de configuración del mismo
      raise InteligentException.Create('No existen datos de acceso en esta base de datos, informe de esto al administrador del sistema para que el se encargue de configurar dichos datos');
}
    CargaRegistros;
  end
  else
    if Key = 116 then
    begin
      // Pulsado F5, volver a leer los datos
      cdUsuarioOrg.Refresh;
      ListView1.Items.Clear;
{      if cdUsuarioOrg.RecordCount = 0 then
        // Si no existen datos de acceso al sistema se deberá enviar al usuario a la ventana de configuración del mismo
        raise InteligentException.Create('No existen datos de acceso en esta base de datos, informe de esto al administrador del sistema para que el se encargue de configurar dichos datos');
}
      CargaRegistros;
    end;
end;

procedure TFrmSeleccion.AdvSmoothStepControl1StepMouseDown(Sender: TObject;
  StepIndex: Integer; StepMode: TStepMode; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  Continuar: Boolean;
  Posicion: Integer;
begin
  Continuar := True;
  Posicion := AdvSmoothStepControl1.ActiveStep;
  if StepIndex > 0 then begin
    if NivelesOrg[StepIndex - 1] = '' then begin
      ShowMessage('Necesita escoger una ' + LowerCase(AdvSmoothStepControl1.StepActions[Posicion].ActiveContent.Caption));
      Continuar := False;
    end;
  end;
  if Continuar then begin
    Paginador.ActivePage := TAdvOfficePage(Paginador.FindComponent('Page_' + IntToStr(AdvSmoothStepControl1.StepActions[StepIndex].Tag)));
    //Paginador.ActivePageIndex := AdvSmoothStepControl1.StepActions[StepIndex].Tag;
  end;
//  if StepIndex = 1 then begin
//    if Organizacion = '' then begin
//      ShowMessage('Necesita escoger una organización.');
//      //AdvSmoothStepControl1.ActiveStep := StepIndex - 1;
//      Continuar := False;
//    end;
//  end;
//  if StepIndex = 2 then begin
//    if Empresa = '' then begin
//      ShowMessage('Necesita escoger una Empresa.');
//      //AdvSmoothStepControl1.ActiveStep := StepIndex - 1;
//      Continuar := False;
//    end;
//  end;
//  if Continuar then begin
//    Paginador.ActivePageIndex := AdvSmoothStepControl1.StepActions[StepIndex].Tag;
//  end;
end;

procedure TFrmSeleccion.cargaRegistros;
var
  ValorCadena: String;
  PrefijoCadena: String;
  ListaAc: TStringList;
  Acceso: TAcceso;
  UltimaImagen, ActualImagen, RespBitMap: TBitMap;
  bs: TStream;
  LocPref: String;
  Prefijo: String;
  k, r: Integer;
begin
  Try
    ProgressBar1.Min := 0;
    ProgressBar1.Position := 0;
    ProgressBar1.Max := cdUsuarioOrg.RecordCount;
    ProgressBar1.Visible := True;
//    JvLabel1.Visible := False;
//    JvLabel1.Repaint;

    // Eliminar todas las images que se pudieran haber creado en entradas anteriores
    while ilAccesos.Count > 2 do
      ilAccesos.Delete(ilAccesos.Count -1);

    while ilAccesosSmall.Count > 2 do
      ilAccesosSmall.Delete(IlAccesosSmall.Count -1);
    
    cdUsuarioOrg.First;
    ValorCadena := '';
    LocPref := '';
    ListaAc := TStringList.Create;
    ListaAc.Clear;
    r := 0;
    while Not cdUsuarioOrg.Eof do
    begin
      {AdvSmoothStepControl1.StepActions[r].ActiveContent.Description.Text := cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;
      AdvSmoothStepControl1.StepActions[r].InActiveContent.Description.Text := cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;
      AdvSmoothStepControl1.StepActions[r].ProcessedContent.Description.Text := cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;}
      {Inc(r);}
      // Es un inicio de ruta completa para iniciarlizar cadena de acceso e imagenes padre
      if cdUsuarioOrg.FieldByName('Padre').AsInteger = -1 then
      begin
        Prefijo := '';
        PrefijoCadena := '';
        FreeAndNil(UltimaImagen);
        ListaAc.Free;
        ListaAc := TStringList.Create;
        ListaAc.Clear;
      end;

      ListaAc.Add(cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString);

      // Crear el objeto necesario
      if (cdUsuarioOrg.RecNo = cdUsuarioOrg.RecordCount) or (cdUsuarioOrg.FieldByName('Hijos').AsInteger = 0) then
      begin
        if Prefijo <> '' then LocPref := Prefijo + '|' Else LocPref := '';
        LocPref := LocPref + cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;

        if PrefijoCadena <> '' then ValorCadena := PrefijoCadena + ' -> ' else ValorCadena := '';
        ValorCadena := ValorCadena + cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;

        // Respaldar la información del registro antes de avanzar al siguiente
        Acceso := TAcceso.Create;
        Acceso.Path := LocPref;
        Acceso.Wbs := cdUsuarioOrg.FieldByName('Wbs').AsString;
        Acceso.Llave := cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;
        Acceso.SeqAcceso := ValorCadena;

        // Crear el objeto correspondiente para el listview
        ListView1.AddItem(cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString, Acceso);
        ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := ListView1.Items.Count + 1;

        // Poner la información del registro
        k := 0;
        while (k < cdOrganizacion.RecordCount - 1) and (k < ListaAc.Count) do
        begin
          ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(ListaAc[k]);
          Inc(k);
        end;

        // Poner la columna de orden de acceso
        ListView1.Items.Item[ListView1.Items.Count -1].SubItems.Add(cdUsuarioOrg.FieldByName('iOrden').AsString);
        
        // Agregar las imagenes correspondientes a las lista
        // Verificar si el registro contiene una imagen que se pueda mostrar
        {Try
          if cdUsuarioOrg.FieldByName('Imagen').IsNull then
          begin
            ActualImagen := TBitMap.Create;

            // SI no contiene imagen este registro se debe verificar si el padre tiene imagen
            if UltimaImagen = Nil then
            begin
              // Si no es posible poner ni una sola imagen se deberá poner la imagen por default (la número 0) para respetar la secuencia
              ilAccesos.GetBitmap(0, ActualImagen);
              ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 0;
            end
            else
              ActualImagen.Assign(UltimaImagen);
          end
          else
          begin
            // Crear el objeto que contendrá la imagen correspondiente a cada nivel
            Try
              bs := TStream.Create;
              bs := cdUsuarioOrg.CreateBlobStream(cdUsuarioOrg.FieldByName('Imagen') as TBlobField, bmRead);

              ActualImagen := TBitMap.Create;
              ActualImagen.LoadFromStream(bs as TStream);
            Finally
              FreeAndNil(bs);
            End;
          end;

          Try
            RespBitMap := TBitMap.Create;
            RespBitMap.Assign(ActualImagen);

            Redimensionar(ActualImagen, ilAccesos.Width, ilAccesos.Height);
            ilAccesos.Add(ActualImagen, Nil);   // Agregar la imagen a la lista de imagenes normales

            Redimensionar(RespBitMap, ilAccesosSmall.Width, ilAccesosSmall.Height);
            ilAccesosSmall.Add(RespBitMap, Nil);   // Agregar la imagen a la lista de imagenes pequeñas
          Finally
            FreeAndNil(RespBitMap);
          End;
        Finally
          FreeAndNil(ActualImagen);
        End;}
      end
      else
      begin
        if Prefijo <> '' then Prefijo := Prefijo + '|';
        Prefijo := Prefijo + cdUsuarioOrg.FieldByName('IdOrganizacion').AsString;

        if PrefijoCadena <> '' then PrefijoCadena := PrefijoCadena + ' -> ';
        PrefijoCadena := PrefijoCadena + cdUsuarioOrg.FieldByName('NombreOrganizacion').AsString;

        // Verificar si el registro contiene una imagen que se pueda mostrar
        {if Not cdUsuarioOrg.FieldByName('Imagen').IsNull then
        begin
          // Crear el objeto que contendrá la imagen correspondiente a cada nivel
          Try
            bs := TStream.Create;
            bs := cdUsuarioOrg.CreateBlobStream(cdUsuarioOrg.FieldByName('Imagen') as TBlobField, bmRead);

            UltimaImagen := TBitMap.Create;
            UltimaImagen.LoadFromStream(bs as TStream);
          Finally
            FreeAndNil(bs);
          End;
        end;}
      end;

      // Mostrar el avance del proceso
      ProgressBar1.Position := cdUsuarioOrg.RecNo;
      ProgressBar1.Repaint;

      // Avanzar al siguiente registro
      cdUsuarioOrg.Next;
    end;

    // Verificar si la lista de accesos generada corresponde al filtro en el registro del sistema
    if VerMas then
    begin
      // Si la lista pudiera estar filtrada se debe generar de manera automática el icono que permita agregar mas
      Acceso := TAcceso.Create;
      Acceso.Path := '';
      Acceso.Wbs := '';
      Acceso.Llave := '';
      Acceso.SeqAcceso := '';

      ListView1.AddItem('Ver todos...', Acceso);
      ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 1;
    end;
  Finally
    ProgressBar1.Visible := False;
//    JvLabel1.Visible := False;
    ProgressBar1.Position := 0;
    FreeAndNil(ActualImagen);
  End;
end;

procedure TFrmSeleccion.crearDiagramaOrg;
var
  Cursor: TCursor;
  DatosNodo: TNodos;
  UltimoNodo, NodoActual: TTreeNode;
  i: Integer;
begin
  try
    cxTVOrganizaciones.Items.BeginUpdate;
    CxTVOrganizaciones.Items.Clear;
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      DatosNodo := TNodos.Create;
      DatosNodo.IdOrganizacion := -5;
      DatosNodo.IdPadre := -5;
      DatosNodo.NombreOrg := 'ORGANIZACION';
      DatosNodo.CodigoOrg := 'ORG';
      DatosNodo.Descripcion := 'ORGANIZACION';

      cdFiltrado.Filtered := False;
      cdFiltrado.Filter := 'Padre = -5';
      cdFiltrado.Filtered := True;

      UltimoNodo := CxTVOrganizaciones.Items.AddObject(nil, 'ORGANIZACION', Pointer(DatosNodo));
      //UltimoNodo := CxTVOrganizaciones.Items.Item[CxTVOrganizaciones.Items.Count - 1];
      if cdFiltrado.ProviderName <> '' then
      begin
        cdFiltrado.First;
        while not cdFiltrado.Eof do
        begin
          DatosNodo := TNodos.Create;
          DatosNodo.IdOrganizacion := cdFiltrado.FieldByName('IdOrganizacion').asInteger;
          DatosNodo.IdPadre := cdFiltrado.FieldByName('Padre').AsInteger;
          DatosNodo.CodigoOrg := cdFiltrado.FieldByName('CodigoOrganizacion').AsString;
          DatosNodo.NombreOrg := cdFiltrado.FieldByName('NombreOrganizacion').AsString;
          DatosNodo.Descripcion := cdFiltrado.FieldByName('TituloOrganizacion').AsString;
          NodoActual := CxTVOrganizaciones.Items.AddChildObject(UltimoNodo , DatosNodo.NombreOrg, Pointer(DatosNodo));
          cdFiltrado.Next;
        end;
      end;
      if CxTVOrganizaciones.Items.Count > 0 then
      try
        for i := 0 to CxTVOrganizaciones.Items.Count -1 do
          CxTVOrganizaciones.Items.Item[i].Expand(true);
      except
        ;//no lo mandes al chorizo
      end;
    finally
      cxTVOrganizaciones.Items.EndUpdate;
      cdFiltrado.Filtered := False;
      Screen.Cursor := Cursor;
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TFrmSeleccion.CxBtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSeleccion.CxBtnEntrarClick(Sender: TObject);
begin
    AlDobleClick(Sender);
end;

procedure TFrmSeleccion.CxTVOrganizacionesChange(Sender: TObject;
  Node: TTreeNode);
begin
  CxBtnEntrar.Enabled := CxTVOrganizaciones.Selected.Level > 0;
  if cdFiltrado.Locate('IdOrganizacion', TNodos(CxTVOrganizaciones.Selected.Data).IdOrganizacion, []) then
  begin
    cxGBDetalle.Caption := 'Descripción [' + TNodos(CxTVOrganizaciones.Selected.Data).NombreOrg  + ']';
  end
  else
    cxGBDetalle.Caption :=  'Descripción';
end;

procedure TFrmSeleccion.FormShow(Sender: TObject);
var
  C, i, x: Integer;
  PasoCad: String;
  ComboClave:String;
  DebeTerminar: Boolean;
  ListaX: TStringList;
  StepAction: TStepAction;
  Pagina: TAdvOfficePage;
  Grid: TJvDBGrid;
  iPage: Integer;
  ToShow: String;
  PaginaAMostrar : Integer;
  Localizado,CompAct: Integer;
  accesoStr:string;
begin
  Organizacion := '';
  Empresa := '';
  Contrato := '';
  CodSale := mrCancel;
  Try
    ClientModule1.ComponentColor(Self);

    // Seleccionar las estructuras que han sido registradas en este equipo
    ListaAccesos := TStringList.Create;
    PasoCad := VarRegistry('\Ambiente', '\Principal', 'Accesos');
    ListaAccesos.CommaText := AnsiReplaceStr(PasoCad, '|', ',');
    VerMas := ListaAccesos.Count > 0;   // Poner icono de 'ver mas...' si se han registrado accesos

    CrearConjunto(cdOrganizacion, 'nuc_nivelorganizacion', ccCatalog);
    CargarDatosFiltrados(cdOrganizacion, 'GrupoOrg', [-7]);
    cdOrganizacion.Open;

    cdOrganizacion.Last;
    Globales.SetValue('NivelOrgInferior', cdOrganizacion.FieldByName('IdNivelOrganizacion').AsInteger);
    cdOrganizacion.First;

    CrearConjunto(cdFiltrado, 'nuc_organizacion', ccCatalog);
    CargarDatosFiltrados(cdFiltrado, 'GrupoOrg', [-7]);
    cdFiltrado.Open;

    C := 1;
    UltimoNivel := 0;
    PrimerNivel := cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger;
    NivelesOrg := TStringList.Create;
    iPage := 0;
    PaginaAMostrar := 0;
    //NivelesOrg.Add('-5');
    Paginador.ActivePageIndex := 0;

    //localizar el ultimo nivel
    while not cdOrganizacion.eof do
    begin
      if cdOrganizacion.FieldByName('acceso').AsBoolean then begin
        UltimoNivel := cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger;
      end;
      cdOrganizacion.Next;
    end;
    cdOrganizacion.First;

    cdOrganizacion.First;
    while not cdOrganizacion.eof do
    begin

     { if cdOrganizacion.FieldByName('acceso').AsBoolean then begin
        UltimoNivel := cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger;
      end; }

      //siempre y cuando lo niveles sean menores o igual al ultimo crear los componentes
      if cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger <= ultimonivel then
      begin
        //Niveles en el StepAction:
        StepAction := TStepAction.Create(AdvSmoothStepControl1.StepActions);
        StepAction.ActiveContent.Caption := cdOrganizacion.FieldByName('titulonivel').AsString;
        StepAction.InActiveContent.Caption := cdOrganizacion.FieldByName('titulonivel').AsString;
        StepAction.ProcessedContent.Caption := cdOrganizacion.FieldByName('titulonivel').AsString;
        StepAction.Tag := cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger;

        //Niveles en el paginador:
        NivelesOrg.Add('-1');

        Pagina := TAdvOfficePage.Create(Paginador);
        Pagina.Name := 'Page_' + cdOrganizacion.FieldByName('idnivelorganizacion').AsString;
        Pagina.Caption := 'Page_' + cdOrganizacion.FieldByName('idnivelorganizacion').AsString;
        Pagina.Tag := cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger;
        //Pagina.PageIndex := cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger;
        Pagina.OnShow := AlMostrar;
        Pagina.PageIndex := iPage;
        Pagina.Hint := IntToStr(iPage);
        Paginador.AddAdvPage(Pagina);

        if VarRegistry('\Ambiente', '\Principal', 'Acceso_' + IntToStr(iPage)) <> '' then begin
          if cdOrganizacion.Locate('idnivelorganizacion',VarRegistry('\Ambiente', '\Principal', 'Acceso_' + IntToStr(iPage)),[]) then    //solo si pertenece ala organizacion
          begin
            NivelesOrg[iPage] := VarRegistry('\Ambiente', '\Principal', 'Acceso_' + IntToStr(iPage));
            if cdFiltrado.Locate('idOrganizacion',NivelesOrg[iPage], []) then begin
              PaginaAMostrar := iPage + 1;
              ToShow := cdFiltrado.FieldByName('codigoorganizacion').AsString;
              AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ActiveContent.Description.Text := ToShow;
              AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].InActiveContent.Description.Text := ToShow;
              AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ProcessedContent.Description.Text := ToShow;
              AdvSmoothStepControl1.ActiveStep := iPage + 1;
            end;
          end;
        end;

        //Paginador.ActivePageIndex := Pagina.PageIndex;
        //NivelesOrg[Pagina.PageIndex + 1] := '';

        //Crea un grid por nivel:
        Grid := TJvDBGrid.Create(Pagina);
        Grid.Tag := 99;
        Grid.Align := alClient;
        Grid.Options :=  Grid.Options + [dgRowSelect] - [dgIndicator];
        Grid.Tag := cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger;
        Grid.Hint := IntToStr(iPage);
        Grid.OnDblClick := AlDobleClick;
        Grid.OnKeyPress := AlKeyEnter;
        Grid.Columns.Clear;
        if cdOrganizacion.FieldByName('idnivelorganizacion').AsInteger = UltimoNivel then begin
          Grid.Columns.Add;
          Grid.Columns.Items[0].Title.Caption := cdOrganizacion.FieldByName('titulonivel').AsString;
          Grid.Columns.Items[0].FieldName := 'Nombreorganizacion';
          Grid.Columns.Items[0].Width := 350;
        end else begin
          Grid.Columns.Add;
          Grid.Columns.Items[0].Title.Caption := 'Código';
          Grid.Columns.Items[0].FieldName := 'Nombreorganizacion';
          Grid.Columns.Items[0].Width := 200;
          Grid.Columns.Add;
          Grid.Columns.Items[1].Title.Caption := cdOrganizacion.FieldByName('titulonivel').AsString;
          Grid.Columns.Items[1].FieldName := 'tituloorganizacion';
          Grid.Columns.Items[1].Width := 350;
        end;
        Grid.DataSource := DataSource1;
        Pagina.InsertControl(Grid);

        Inc(iPage);

      end;

      cdOrganizacion.Next;
    end;

    Paginador.ActivePageIndex := PaginaAMostrar;

    if Paginador.ActivePageIndex = -1 then
      Paginador.ActivePageIndex := 0;

    // Crear el encabezado de la columna de orden de acceso
    //ListView1.Columns.Items[c].Caption := 'Orden';
    DataSource1.DataSet := cdFiltrado;
    CrearConjunto(cdUsuarioOrg, 'nuc_organizacion_acceso', ccSelect);
    cdUsuarioOrg.Open;
    DebeTerminar := True;
    Repeat
      CargarDatosFiltrados(cdUsuarioOrg, 'nivel,cadena', [0, AnsiReplaceText(ListaAccesos.CommaText,',','|')]);
      cdUsuarioOrg.Refresh;

      if cdUsuarioOrg.RecordCount = 0 then
      begin
        // Si no existen datos de acceso al sistema se deberán mostrar todos los accesos
        SetRegistry('\Ambiente', '\Principal', 'Accesos', '');
        ListaAccesos.Clear;
        //cdUsuarioOrg.Close;
        DebeTerminar := Not DebeTerminar;
      end
      else
        DebeTerminar := True;
    Until DebeTerminar;
      //raise InteligentException.Create('No existen datos de acceso en esta base de datos, informe de esto al administrador del sistema para que el se encargue de configurar dichos datos');

    CargaRegistros;

    accesoStr := VarRegistry('\Ambiente', '\Principal', 'Acceso_0' );
    CompAct := 0;
    if Length(accesoStr)> 0 then
    begin
      while CompAct < Paginador.AdvPages[Paginador.ActivePageIndex].ComponentCount do
      begin
        if (Paginador.AdvPages[Paginador.ActivePageIndex].Components[CompAct].ClassName = 'TJvDBGrid') then
        begin
          TJvDBGrid(Paginador.AdvPages[Paginador.ActivePageIndex].Components[CompAct]).DataSource.DataSet.Locate('idorganizacion',accesoStr,[]);
          Localizado := TJvDBGrid(Paginador.AdvPages[Paginador.ActivePageIndex].Components[CompAct]).DataSource.DataSet.RecNo;
          TJvDBGrid(Paginador.AdvPages[Paginador.ActivePageIndex].Components[CompAct]).GotoSelection(Localizado) ;
         TJvDBGrid(Paginador.AdvPages[Paginador.ActivePageIndex].Components[CompAct]).SelectedIndex := Localizado-1;
         if TJvDBGrid(Paginador.AdvPages[Paginador.ActivePageIndex].Components[CompAct]).CanFocus then
          TJvDBGrid(Paginador.AdvPages[Paginador.ActivePageIndex].Components[CompAct]).SetFocus;
        end;
        Inc(CompAct);
      end;
    end;
    Grid.Visible := False;
    Pagina.Visible := False;
    crearDiagramaOrg;

  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al acceder a la estructura empresarial', 'No se ha podido acceder a la estructura empresarial debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      CodSale := mrNo;
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmSeleccion.AlDobleClick(Sender: TObject);
Var
  ToShow: String;
  Acceso: TAcceso;
  idContrato: TStringList;
  proxy: TServerMethods1Client;
  NameDataset: String;
  Msg: TMsg;
  OldCursor: TCursor;
begin
  try
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      if UltimoNivel = cdFiltrado.FieldByName('idNivel').AsInteger then
      begin
        Acceso := TAcceso.Create;
        idContrato := TStringList.Create;
        Split('.', cdFiltrado.FieldByName('idOrganizacion').AsString, idContrato);
        Acceso.Llave := idContrato[idContrato.Count - 1];
        Acceso.Wbs := cdFiltrado.FieldByName('Wbs').AsString;
        Acceso.SeqAcceso := cdFiltrado.FieldByName('codigoorganizacion').AsString + ' -> ' + cdFiltrado.FieldByName('nombreorganizacion').AsString;

        if clientmodule1.cdAcceso.Active then
        begin
          EliminarConjunto(clientmodule1.cdAcceso);
          clientmodule1.cdAcceso.Free;
          clientmodule1.cdAcceso := TClientDataSet.Create(nil);
          clientmodule1.cdacceso.Remoteserver := clientmodule1.DSProviderConnection1;
        end;
        proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        if Not proxy.InitGlobal(Globales.Elemento('DATABASE').AsString, 'ALM_ACCESO', Acceso.Llave, NameDataSet) then
          raise InteligentException.CreateByCode(10, ['Inicialización de Acceso a la base de datos']);
        clientmodule1.cdAcceso.ProviderName := NameDataset;
        clientmodule1.cdAcceso.Open;

        Try
          if Not CrearConjunto(ClientModule1.cdOrganizacion, 'nuc_organizacion', NameDataSet, ccSelect) then
            raise InteligentException.CreateByCode(11, ['los niveles de organización.']);
          ClientModule1.cdOrganizacion.Close;
          if Not CargarDatosFiltrados(ClientModule1.cdOrganizacion, 'nivel,idorganizacion', [0, Acceso.Llave]) then
            raise InteligentException.CreateByCode(6, ['Niveles de organización', '0,' + Acceso.Llave, 'Nivel,IdOrganizacion']);
          ClientModule1.cdOrganizacion.Open;

          //cargar toda la estructura organizacional
          If Not CrearConjunto(ClientModule1.CdEstructuraOrganizacion, 'nuc_organizacione', NameDataSet, ccSelect) then
            raise InteligentException.CreateByCode(11, ['los niveles de organización']);
          ClientModule1.CdEstructuraOrganizacion.Close;
          If Not CargarDatosFiltrados(ClientModule1.CdEstructuraOrganizacion, 'idorganizacion', [ Acceso.Llave]) then
            raise InteligentException.CreateByCode(6, ['Niveles de organización', 'IdOrganizacion', Acceso.Llave]);
          ClientModule1.CdEstructuraOrganizacion.Open;
        Except
          on e:InteligentException do
            raise;

          on e:Exception do
            raise InteligentException.CreateByCode(1, [e.Message]);
        End;

        // Registrar los datos de la organizacion
        Globales.SetValue('TituloOrganizacion', cdFiltrado.FieldByName('TituloOrganizacion').AsString);

        CodSale := mrOk;

        //limpiando buffer de teclado y raton
        while PeekMessage(Msg, 0, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE or PM_NOYIELD) do;
        while PeekMessage(Msg, 0, WM_MOUSEFIRST, WM_MOUSELAST, PM_REMOVE or PM_NOYIELD) do;

        // Si el nivel de la organizacion es el primero deberá guardar el id en regedit
        if (cdOrganizacion.Locate('idnivelorganizacion',UltimoNivel,[])) and (cdOrganizacion.RecNo = 1) then
          SetRegistry('\Ambiente', '\Principal', 'Acceso_'+TJvDBGrid(Sender).Hint, cdFiltrado.FieldByName('idOrganizacion').AsString);

        Close;
      end
      else
      begin
        SetRegistry('\Ambiente', '\Principal', 'Acceso_'+TJvDBGrid(Sender).Hint, cdFiltrado.FieldByName('idOrganizacion').AsString);
        NivelesOrg[StrToInt(TJvDBGrid(Sender).Hint)] := cdFiltrado.FieldByName('idOrganizacion').AsString;
        ToShow := cdFiltrado.FieldByName('codigoorganizacion').AsString;
        AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ActiveContent.Description.Text := ToShow;
        AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].InActiveContent.Description.Text := ToShow;
        AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ProcessedContent.Description.Text := ToShow;
        Paginador.ActivePageIndex := Paginador.ActivePageIndex + 1;
        AdvSmoothStepControl1.ActiveStep := AdvSmoothStepControl1.ActiveStep + 1;
      end;
    Finally
      Form2.IdOrganizacionSel := StrToInt(Acceso.Llave);
      Screen.Cursor := OldCursor;
    End;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Se ha alcanzado un error inesperado, informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmSeleccion.JvDBGrid1DblClick(Sender: TObject);
Var
  Boton : TButton;
  Itemm : TCollectionItem;
begin
  //Organizacion := cdFiltrado.FieldByName('idOrganizacion').AsInteger;
  IdPadre := cdFiltrado.FieldByName('idOrganizacion').AsString;
  Organizacion := cdFiltrado.FieldByName('codigoorganizacion').AsString;
  AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ActiveContent.Description.Text := Organizacion;
  AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].InActiveContent.Description.Text := Organizacion;
  AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ProcessedContent.Description.Text := Organizacion;
  Paginador.ActivePageIndex := AdvSmoothStepControl1.StepActions[AdvSmoothStepControl1.ActiveStep + 1].Tag;
  AdvSmoothStepControl1.ActiveStep := AdvSmoothStepControl1.ActiveStep + 1;
end;

procedure TFrmSeleccion.JvDBGrid2DblClick(Sender: TObject);
begin
  //Organizacion := cdFiltrado.FieldByName('idOrganizacion').AsInteger;
  IdEmpresa := cdFiltrado.FieldByName('idOrganizacion').AsString;
  Empresa := cdFiltrado.FieldByName('codigoorganizacion').AsString;
  AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ActiveContent.Description.Text := Empresa;
  AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].InActiveContent.Description.Text := Empresa;
  AdvSmoothStepControl1.StepActions.Items[AdvSmoothStepControl1.ActiveStep].ProcessedContent.Description.Text := Empresa;
  AdvSmoothStepControl1.ActiveStep := 2;
  Paginador.ActivePageIndex := 3;
end;

procedure TFrmSeleccion.JvDBGrid3DblClick(Sender: TObject);
Var
  proxy: TServerMethods1Client;
  NameDataset: String;
  Posicion: Integer;
  Acceso: TAcceso;
  idContrato : TStringList;
begin
  Acceso := TAcceso.Create;
  idContrato := TStringList.Create;
  Split('.', cdFiltrado.FieldByName('idOrganizacion').AsString, idContrato);
  Acceso.Llave := idContrato[idContrato.Count];
  //Acceso.Path := LocPref;
  Acceso.Wbs := cdFiltrado.FieldByName('Wbs').AsString;
  Acceso.SeqAcceso := cdFiltrado.FieldByName('codigoorganizacion').AsString + ' -> ' + cdFiltrado.FieldByName('nombreorganizacion').AsString;
  Try
     if clientmodule1.cdAcceso.Active then
     begin
       EliminarConjunto(clientmodule1.cdAcceso);
       clientmodule1.cdAcceso.Free;
       clientmodule1.cdAcceso := TClientDataSet.Create(nil);
       clientmodule1.cdacceso.Remoteserver := clientmodule1.DSProviderConnection1;
     end;
      proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
      if Not proxy.InitGlobal(Globales.Elemento('DATABASE').AsString, 'ALM_ACCESO', Acceso.Llave, NameDataSet) then
        raise InteligentException.Create('No se pudieron cargar los datos de acceso ');
      clientmodule1.cdAcceso.ProviderName := NameDataset;
      clientmodule1.cdAcceso.Open;

      Try
        CrearConjunto(ClientModule1.cdOrganizacion, 'nuc_organizacion', NameDataSet, ccSelect);
        CargarDatosFiltrados(ClientModule1.cdOrganizacion, 'nivel,idorganizacion', [0, Acceso.Llave]);
        ClientModule1.cdOrganizacion.Open;
      Except
        raise InteligentException.Create('No se han podido cargar los datos correspondientes a los niveles de organización');
      End;


//      Form2.MemoInfo.Text := Acceso.SeqAcceso;
//      Form2.tbMain.Caption.Caption := Form2.tbMain.Caption.Caption + ' - ' + Acceso.SeqAcceso;

      CodSale := mrOk;
    Except
      on e:inteligentexception do
        InteliDialog.ShowModal('No se ha podido acceder al sistema', 'No se pudo acceder al sistema debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error catastrofico','Informe de lo siguiente al administrador del sistema' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
    End;
    Close;
end;

procedure TFrmSeleccion.ListView1DblClick(Sender: TObject);
var
  proxy: TServerMethods1Client;
  NameDataset: String;
  Posicion: Integer;
  OldCursor: TCursor;
begin
  if not Assigned(ListView1.Selected) then
    Exit;

  // Localizar las propiedades del objeto seleccionado
  AccesoX := TAcceso.Create;
  AccesoX := TAcceso(ListView1.Selected.Data);
  AccesoX.Llave := '3';

  // Verificar si se hizo click sobre el botón de 'ver mas...'
  if AccesoX.Llave = '' then
  begin
    Try
      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      VerMas := False;    // Quitar el icono para permitir la lectura de todos los datos

      cdUsuarioOrg.Close;
      CargarDatosFiltrados(cdUsuarioOrg, 'nivel,cadena', [0, '']);
      cdUsuarioOrg.Open;

      ListView1.Items.Clear;
      CargaRegistros;
    Finally
      Screen.Cursor := OldCursor;
    End;
  end
  else
  begin
    Try
      Try
        OldCursor := Screen.Cursor;
        Screen.Cursor := crAppStart;

        if clientmodule1.cdAcceso.Active then
        begin
          EliminarConjunto(clientmodule1.cdAcceso);
          clientmodule1.cdAcceso.Free;
          clientmodule1.cdAcceso := TClientDataSet.Create(nil);
          clientmodule1.cdacceso.Remoteserver := clientmodule1.DSProviderConnection1;
        end;
        proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
        if Not proxy.InitGlobal(Globales.Elemento('DATABASE').AsString, 'ALM_ACCESO', AccesoX.Llave, NameDataSet) then
          raise InteligentException.Create('No se pudieron cargar los datos de acceso ');
        clientmodule1.cdAcceso.ProviderName := NameDataset;
        clientmodule1.cdAcceso.Open;

        Try
          CrearConjunto(ClientModule1.cdOrganizacion, 'nuc_organizacion', NameDataSet, ccSelect);
          CargarDatosFiltrados(ClientModule1.cdOrganizacion, 'nivel,idorganizacion', [0, AccesoX.Llave]);
          ClientModule1.cdOrganizacion.Open;
        Except
          raise InteligentException.Create('No se han podido cargar los datos correspondientes a los niveles de organización');
        End;

        CodSale := mrOk;
      Finally
        Screen.Cursor := OldCursor;
      End;
    Except
      on e:inteligentexception do
        InteliDialog.ShowModal('No se ha podido acceder al sistema', 'No se pudo acceder al sistema debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);

      on e:exception do
        InteliDialog.ShowModal('Ha ocurrido un error catastrofico','Informe de lo siguiente al administrador del sistema' + #10 + #10 + e.Message, mtWarning, [mbOk], 0);
    End;
    Close;
  end;
end;

procedure TFrmSeleccion.MouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsUnderLine];
end;

procedure TFrmSeleccion.MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [];
end;

procedure TFrmSeleccion.AlMostrar(Sender: TObject);
Var
  Filtro : String;
  PaginaAnt: Integer;
begin
  Filtro := 'idNivel = ' + IntToStr(TAdvOfficePage(Sender).Tag) + ' ';
  if TAdvOfficePage(Sender).Tag > PrimerNivel then begin
    Filtro := Filtro + 'AND padre = ' + NivelesOrg[StrToInt(TAdvOfficePage(Sender).Hint) - 1];
  end;
  cdFiltrado.Filter := Filtro;
  cdFiltrado.Filtered := True;
end;

procedure TFrmSeleccion.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: ListView1.ViewStyle := vsIcon;
    1: ListView1.ViewStyle := vsList;
    2: ListView1.ViewStyle := vsReport;
    3: ListView1.ViewStyle := vsSmallIcon;
  end;
end;

end.
