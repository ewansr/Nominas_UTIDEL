unit UTFrmAnalisisPostulantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvExControls, JvLabel, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  Grids, DBClient, ClientModuleUnit1, frxClass, frxDBSet, cxControls,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, UInteliDialog, URegistro;

type
  TObjPersonal = class
    IdPersonal: Integer;
    CodigoPersonal: String;
    NombreCompleto: String;
  end;

  TListaPersonal = class
    Items: TStringList;
    constructor Create;
    destructor Destroy;
    function Add(IdPersonal: Integer; CodigoPersonal: String;
      NombreCompleto: String): Integer;
    function Delete(IdPersonal: Integer): boolean;
    function fItems(Index: Integer): TObjPersonal;
    function IndexOf(Codigo: String): Integer; overload;
    function IndexOf(Id: Integer): Integer; overload;
  protected
    function Index(Id: Integer; Codigo: String): Integer;
  public
    property Item[Index: Integer]: TObjPersonal read fItems;
  end;

  TFrmAnalisisPostulantes = class(TForm)
    dsPlazaDetalleGpo: TDataSource;
    dsPostulante: TDataSource;
    cbModo: TComboBox;
    JvLabel1: TJvLabel;
    cbCuales: TComboBox;
    cbEstado: TComboBox;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    btnAceptar: TcxButton;
    btnCancelar: TcxButton;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    GridListaPersonal: TStringGrid;
    JvLabel7: TJvLabel;
    cbDocumentos: TCheckBox;
    cbpersonal: TComboBox;
    pnlListaPersonal: TPanel;
    lblCodigoPersonal: TLabel;
    txtCodigoPersonal: TcxTextEdit;
    btnAceptar1: TcxButton;
    btnCancelar1: TcxButton;
    PopPersonal: TPopupMenu;
    btnAgregar: TMenuItem;
    BtnQuitar: TMenuItem;
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    dsPersonalLista: TDataSource;
    cdPersonalLista: TClientDataSet;
    procedure cbModoChange(Sender: TObject);
    procedure cbCualesChange(Sender: TObject);
    procedure cbEstadoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnAceptar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelar1Click(Sender: TObject);
    procedure GridListaPersonalSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BtnQuitarClick(Sender: TObject);
  private
    FormListaPersonal: TForm;
    Personal: TListaPersonal;
    Fila: Integer;
    CadenaGrid: String;
    Procedure SetPropiedadesVisuales;
    Procedure GetPropiedadesVisuales;
    Procedure GuardarCadena;
    Procedure LlenarGrid;
    Procedure ActualizarGrid;
  public
    pModo: Integer;
    pEstado: Integer;
    pCuales: String;
  end;

var
  FrmAnalisisPostulantes: TFrmAnalisisPostulantes;

implementation

{$R *.dfm}

Uses
  UTFrmPresentaAnalisis;

procedure TFrmAnalisisPostulantes.btnAceptarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPresentaAnalisis, FrmPresentaAnalisis);
  FrmPresentaAnalisis.EstadoCheck := cbDocumentos.Checked;
  FrmPresentaAnalisis.ListaIdPersonal := CadenaGrid;
  FrmPresentaAnalisis.ShowModal;
end;

procedure TFrmAnalisisPostulantes.btnAgregarClick(Sender: TObject);
begin
  try
    try
      FormListaPersonal := TForm.Create(Self);

      PnlListaPersonal.Parent := FormListaPersonal;
      PnlListaPersonal.Visible := True;
      PnlListaPersonal.Align := alClient;

      FormListaPersonal.Caption := 'Agregar Personal';
      FormListaPersonal.BorderStyle := bsDialog;
      FormListaPersonal.Width := 250;
      FormListaPersonal.Height := 140;


      FormListaPersonal.ShowModal;
    finally
      PnlListaPersonal.Parent := self;
      PnlListaPersonal.Visible := false;
      PnlListaPersonal.Align := alCustom;
      txtCodigoPersonal.Clear;
    end;
  except
    FormListaPersonal.Destroy;
  end;

end;

procedure TFrmAnalisisPostulantes.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAnalisisPostulantes.BtnQuitarClick(Sender: TObject);
var
  i: Integer;
  IdPersonal: Integer ;
begin
  try
    //Verifica que  se haya  seleccionado  un  registro  valido.
    if not Fila > -1 then
     raise InteligentException.CreateByCode(24,['No ha seleccionado ningun registro, verifique he intente de nuevo.']);


    if (gridListaPersonal.Cells[2,Fila]) = '' then
      raise InteligentException.CreateByCode(24,['El Registro seleccioado se encuentra  vacio, verifique  he intente  de  nuevo.']);

    i := personal.IndexOf(StrToInt(gridListaPersonal.Cells[2,Fila]));

    if i  < 0 then
      raise InteligentException.CreateByCode(24,['No se puede realizar la acción solicitada, la lista de registros se encuentra vacio.']);

    IdPersonal := personal.Item[i].IdPersonal;

    if personal.Delete(IdPersonal) then
      ActualizarGrid;

  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmAnalisisPostulantes.cbCualesChange(Sender: TObject);
begin
  case cbCuales.ItemIndex of
    0: pCuales := 'Exacto';
    1: pCuales := 'Menos';
    2: pCuales := 'Menos0';
    3: pCuales := 'Mas';
    4: pCuales := 'Todos';
  end;
end;

procedure TFrmAnalisisPostulantes.cbEstadoChange(Sender: TObject);
begin
  if cbEstado.ItemIndex = 0 then
    pEstado := -1
  else
    pEstado := cbEstado.ItemIndex;
end;

procedure TFrmAnalisisPostulantes.cbModoChange(Sender: TObject);
begin
  pModo := cbModo.ItemIndex +1;
end;

procedure TFrmAnalisisPostulantes.btnAceptar1Click(Sender: TObject);
var
  i: Integer;
  col: Integer;
  Cursor: Tcursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      if Not CargarDatosFiltrados(cdPersonal, 'codigopersonal', [txtCodigoPersonal.Text]) then
        raise InteligentException.CreateByCode(5, ['Codigo del Personal']);

      if cdPersonal.Active then
        cdPersonal.Refresh
      else
        cdPersonal.Open;

      // Se agrega el  registro como nuevo objeto de la clase personal.
      personal.add(cdPersonal.FieldByName('idpersonal').AsInteger,
      cdPersonal.FieldByName('codigopersonal').AsString, cdPersonal.FieldByName('Apaterno').AsString + ' ' +
      cdPersonal.FieldByName('Amaterno').AsString + ' ' + cdPersonal.FieldByName('nombres').AsString);

      //Localizo  el  indice  del registro que se acaba de agregar.
      i := Personal.IndexOf(cdPersonal.FieldByName('idpersonal').AsInteger);

      //agrego  el  nuevo  registro  en  el  grid.
      if Personal.Items.Count > -1 then
      begin
        col := Personal.Items.Count - 1;

        gridListaPersonal.Cells[0,col] := personal.Item[i].CodigoPersonal;
        gridListaPersonal.Cells[1,col] := personal.Item[i].NombreCompleto;
        gridListaPersonal.Cells[2,col] := IntToStr(personal.Item[i].IdPersonal);
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmAnalisisPostulantes.btnCancelar1Click(Sender: TObject);
begin
  //gridListaPersonal.Rows.Delete[Fila];
end;

procedure TFrmAnalisisPostulantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  GuardarCadena;
  SetPropiedadesVisuales;
  Personal.Destroy;

  if Assigned(cdPersonal) then
    EliminarConjunto(cdPersonal);

  if Assigned(cdPersonalLista) then
    EliminarConjunto(cdPersonalLista);
    
end;

procedure TFrmAnalisisPostulantes.FormShow(Sender: TObject);
begin
  try
    //Poner la información del grupo de trabajo seleccionado
    jvLabel5.Caption := dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString;
    jvLabel7.Caption := dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString;

    cbModo.OnChange(Sender);
    cbCuales.OnChange(Sender);
    cbEstado.OnChange(Sender);
    GetPropiedadesVisuales;
    Personal := TListaPersonal.Create;

    if Not CrearConjunto(cdPersonal, 'nuc_personal', ccUpdate) then
      raise InteligentException.CreateByCode(5, ['Detalle de Catalogo de Personal']);

    if Not CrearConjunto(cdPersonalLista, 'rhu_personal_lista', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Detalle de Personal Especial']);

    if cadenaGrid  <> ''then
      LLenarGrid;

  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

Procedure TFrmAnalisisPostulantes.GetPropiedadesVisuales;
begin
  //Establece las medidas del StringGrid
  GridListaPersonal.ColWidths[0] := 140;
  GridListaPersonal.ColWidths[1] := 400;
  GridListaPersonal.ColWidths[2] := 0;

  Try
    cbDocumentos.Checked := StrToBool(VarRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdDocumentos\', 'Checked'));
  Except
    ;
  End;

  Try
    cbModo.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdModo\', 'Posicion'));
  Except
    ;
  End;

  Try
    cbCuales.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdCuales\', 'Posicion'));
  Except
    ;
  End;

  Try
    cbEstado.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdEstado\', 'Posicion'));
  Except
    ;
  End;

  Try
    cbPersonal.ItemIndex := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdPersonal\', 'Posicion'));
  Except
    ;
  End;

  CadenaGrid := VarRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\CadenaGrid\', 'CadenaGrid');

end;

Procedure TFrmAnalisisPostulantes.SetPropiedadesVisuales;
begin
  SetRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdDocumentos\', 'Checked', boolToStr(cbDocumentos.Checked));

  SetRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\CadenaGrid\', 'CadenaGrid', CadenaGrid);

  SetRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdModo\', 'Posicion', IntToStr(cbModo.ItemIndex));

  SetRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdCuales\', 'Posicion', IntToStr(cbCuales.ItemIndex));

  SetRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdEstado\', 'Posicion', IntToStr(cbEstado.ItemIndex));

  SetRegistry('\Ventanas', '\' + Self.Name + '\' + dsPlazaDetalleGpo.DataSet.FieldByName('TituloCargo').AsString + '-' + dsPlazaDetalleGpo.DataSet.FieldByName('CodigoPlaza').AsString + '\cdPersonal\', 'Posicion', IntToStr(cbPersonal.ItemIndex));    
  
end;

constructor TListaPersonal.Create;
begin
  Items := TStringList.Create;
  Items.Clear;
end;

destructor TListaPersonal.Destroy;
begin
  Items.Clear;
  Items.Free;
end;

function TListaPersonal.Add(IdPersonal: Integer; CodigoPersonal: String;
  NombreCompleto: String): Integer;
var
  LocObj: TObjPersonal;
begin
  LocObj := TObjPersonal.Create;
  LocObj.IdPersonal := IdPersonal;
  LocObj.CodigoPersonal := CodigoPersonal;
  LocObj.NombreCompleto := NombreCompleto;

  Result := Items.AddObject(CodigoPersonal, LocObj);
end;

function TListaPersonal.Delete(IdPersonal: Integer): Boolean;
var
  I: Integer;
begin
  I := Index(IdPersonal,'');
  Items.Delete(I);

  Result := True;
end;

function TListaPersonal.fItems(Index: Integer): TObjPersonal;
begin
  if (Index >= 0) and (Index < Items.Count) then
    Result := TObjPersonal(Items.Objects[Index])
  else
    Result := Nil;
end;

function TListaPersonal.IndexOf(Codigo: String): Integer;
begin
  // Verificar el código, enviarlo y poner el Id en -1
  if Codigo <> '' then
    Result := Index(-1, Codigo)
  else
    Result := -1;
end;

function TListaPersonal.IndexOf(Id: Integer): Integer;
begin
  // Verificar el Id, enviarlo y poner el Código en ''
  if Id >= 0 then
    Result := Index(Id, '')
  else
    Result := -1;
end;

function TListaPersonal.Index(Id:Integer; Codigo: String): Integer;
var
  i: Integer;
  Encontrado: Boolean;
  LocObj: TObjPersonal;
begin
  if Id < 0 then
  begin
    // Entonces es el código
    Result := Items.IndexOf(Codigo);
  end
  else
  begin
    // Entoces es el Id
    i := 0;
    Encontrado := False;
    LocObj := TObjPersonal.Create;
    while (i < Items.Count) and (Not Encontrado) do
    begin
      LocObj := TObjPersonal(Items.Objects[i]);
      Encontrado := LocObj.IdPersonal = Id;

      if Not Encontrado then
        Inc(i);
    end;

    if Encontrado then
      Result := i
    else
      Result := -1;
  end;
end;

procedure TFrmAnalisisPostulantes.GridListaPersonalSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  Fila := ARow;
end;

procedure TFrmAnalisisPostulantes.GuardarCadena;
var
  i: Integer;
begin
  i := 0;
  CadenaGrid := '';

  while GridListaPersonal.Cells[2,i] <> '' do
  begin
    if CadenaGrid = '' then
      CadenaGrid := GridListaPersonal.Cells[2,i]
    else
      CadenaGrid := CadenaGrid + ',' + GridListaPersonal.Cells[2,i];

    inc(i);
  end;
end;

procedure TFrmAnalisisPostulantes.LlenarGrid;
var
  i: Integer;
  col: Integer;
  posicion: Integer;
begin
  try
    if Not CargarDatosFiltrados(cdPersonalLista, 'listaidpersonal', [CadenaGrid]) then
      raise InteligentException.CreateByCode(5, ['Codigo del Personal']);

    if cdPersonalLista.Active then
      cdPersonalLista.Refresh
    else
      cdPersonalLista.Open;

    cdPersonalLista.First;

    while not cdPersonalLista.Eof do
    begin
      personal.add(cdPersonalLista.FieldByName('idpersonal').AsInteger,
      cdPersonalLista.FieldByName('codigopersonal').AsString, cdPersonalLista.FieldByName('Apaterno').AsString + ' ' +
      cdPersonalLista.FieldByName('Amaterno').AsString + ' ' + cdPersonalLista.FieldByName('nombres').AsString);

      posicion := Personal.IndexOf(cdPersonalLista.FieldByName('idpersonal').AsInteger);

      if Personal.Items.Count > -1 then
      begin
        col := Personal.Items.Count - 1;
        gridListaPersonal.Cells[0,col] := personal.Item[posicion].CodigoPersonal;
        gridListaPersonal.Cells[1,col] := personal.Item[posicion].NombreCompleto;
        gridListaPersonal.Cells[2,col] := IntToStr(personal.Item[posicion].IdPersonal);
      end;
      inc(col);
      inc(i);
      cdPersonalLista.Next;
    end;
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;

end;
procedure TFrmAnalisisPostulantes.ActualizarGrid;
var
  Posicion: Integer;
  col: Integer;
  Id: Integer;
begin
  try
    col := 0;
    Posicion := 0;
    id := 0;
    //limpiar StringGrid
    while gridListaPersonal.Cells[2,Id] <> '' do
    begin
      gridListaPersonal.Cells[0,Id] := '';
      gridListaPersonal.Cells[1,Id] := '';
      gridListaPersonal.Cells[2,Id] := '';
      inc(id);
    end;

    //LLenar  de nuevo  el  stringGrid
    if Personal.Items.Count > 0 then
    begin
      while Posicion <= Personal.Items.Count -1 do
      begin
        gridListaPersonal.Cells[0,col] := personal.Item[Posicion].CodigoPersonal;
        gridListaPersonal.Cells[1,col] := personal.Item[Posicion].NombreCompleto;
        gridListaPersonal.Cells[2,col] := IntToStr(personal.Item[Posicion].IdPersonal);

        inc(col);
        inc(Posicion);
      end;
    end
    {
    else
    begin
      gridListaPersonal.Cells[0,col] := '';
      gridListaPersonal.Cells[1,col] := '';
      gridListaPersonal.Cells[2,col] := '';
    end;
     }
  except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;
end.
