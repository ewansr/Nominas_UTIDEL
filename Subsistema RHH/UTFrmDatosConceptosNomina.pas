unit UTFrmDatosConceptosNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, JvExControls, JvLabel, ExtCtrls,
  AdvGlowButton, ClientModuleUnit1, UInteliDialog, Grids, DBGrids, ComCtrls,
  JvBaseDlg, JvCalc, DB, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, StrUtils,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxScrollBox, JvExStdCtrls, JvRichEdit;

type
  TMarca = class
    Inicio: Integer;
    Largo: Integer;
    Color: TColor;
    BackColor: TColor;
  end;

  TMyStringList = Class(TStringList)
  public
    SelInicio: Integer;
    Indice: Integer;
    Pintando: Boolean;
    pRequierePintar: Boolean;

    constructor Create;
    procedure RequierePintar;
    function Add(const S: string): Integer; override;
    procedure Delete(Index: Integer); override;
    procedure Insert(Index: Integer; const S: string); override;
  End;

  TFrmDatosConceptosNomina = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    EdCodigoConcepto: TDBEdit;
    edClave: TDBEdit;
    edTitulo: TDBEdit;
    JvLabel3: TJvLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    Panel6: TPanel;
    mNombre: TDBMemo;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    Btn_Cancelar: TAdvGlowButton;
    Panel11: TPanel;
    Panel12: TPanel;
    Splitter2: TSplitter;
    GridEmpleado: TDBGrid;
    GridConceptos: TDBGrid;
    Splitter1: TSplitter;
    Panel8: TPanel;
    JvCalculator1: TJvCalculator;
    Timer1: TTimer;
    Btn_Validar: TAdvGlowButton;
    cdConcepto: TClientDataSet;
    dsConcepto: TDataSource;
    cbModo: TDBComboBox;
    dsBuscar: TDataSource;
    Btn_Suma: TButton;
    Btn_Resta: TButton;
    Btn_Multiplica: TButton;
    Btn_Divide: TButton;
    Btn_Numero: TButton;
    Btn_Eliminar: TButton;
    Btn_Abre: TButton;
    Btn_Cierra: TButton;
    reFormula2: TJvRichEdit;
    Btn_Negativo: TButton;
    Btn_Condision: TButton;
    Btn_Decimales: TButton;
    Btn_CondicionDirecta: TButton;
    Btn_NegativoDirecto: TButton;
    JvLabel6: TJvLabel;
    JvLabel8: TJvLabel;
    DBComboBox1: TDBComboBox;
    procedure GridConceptosDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Btn_SumaClick(Sender: TObject);
    procedure Btn_RestaClick(Sender: TObject);
    procedure Btn_MultiplicaClick(Sender: TObject);
    procedure Btn_DivideClick(Sender: TObject);
    procedure Btn_NumeroClick(Sender: TObject);
    procedure Btn_EliminarClick(Sender: TObject);
    procedure Btn_AbreClick(Sender: TObject);
    procedure Btn_CierraClick(Sender: TObject);
    procedure Btn_ValidarClick(Sender: TObject);
    procedure GridEmpleadoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure reFormula2DblClick(Sender: TObject);
    procedure reFormula2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure reFormula2SelectionChange(Sender: TObject);
    procedure Btn_NegativoClick(Sender: TObject);
    procedure Btn_CondisionClick(Sender: TObject);
  private
    Lista: TMyStringList;
    //InfoPintar: TInfoPintar;
    orCodigoConcepto: String;
    orClave: String;
    procedure InsertarElemento(Valor: String; Mar: Byte);
    function ValidaFormula: Boolean;
    function AnalizaFormula(pLista: TStringList; Inicio, Termino: Integer): Boolean;
    procedure InsertarAbreCierra(Abre, Cierra: String;
      Var pCierra: Integer; Directa: Boolean = False);
  public
    IdConcepto: Integer;
    IdTipoNomina: Integer;
    Orden: Integer;
  end;

var
  FrmDatosConceptosNomina: TFrmDatosConceptosNomina;

implementation

{$R *.dfm}

constructor TMyStringList.Create;
begin
  Inherited;

  Pintando := False;
  SelInicio := 0;
  pRequierePintar := False;
end;

procedure TMyStringList.RequierePintar;
begin
  pRequierePintar := True;
  FrmDatosConceptosNomina.Timer1Timer(Nil);
end;

function TMyStringList.Add(const S: string): Integer;
begin
  Inherited;

  RequierePintar;
end;

procedure TMyStringList.Delete(Index: Integer);
begin
  Inherited;

  RequierePintar;
end;

procedure TMyStringList.Insert(Index: Integer; const S: string);
begin
  Inherited;

  RequierePintar;
end;

procedure TFrmDatosConceptosNomina.Btn_AbreClick(Sender: TObject);
begin
  // Insertar el parentesis abierto
  if reFormula2.SelStart = Length(reFormula2.Text) then
    InsertarElemento('(', 1)
  else
    InsertarElemento('(', 0);
end;

procedure TFrmDatosConceptosNomina.Btn_CancelarClick(Sender: TObject);
begin
  cdConcepto.Cancel;
end;

procedure TFrmDatosConceptosNomina.Btn_CierraClick(Sender: TObject);
var
  i,
  mPos,
  Cta: Integer;
begin
  // Verificar si existe un parentesis abierto anterior
  Cta := 0;
  for i := 0 to Lista.Count -1 do
  begin
    if RightStr(Lista[i], 1) = '(' then
      Inc(Cta);

    if Lista[i] = ')' then
      Dec(Cta);
  end;

  if Cta > 0 then
  begin
    mPos := 0;
    InsertarElemento(')', 1);  // Insertar el parentesis cerrado

    Lista.RequierePintar;
  end;
end;

procedure TFrmDatosConceptosNomina.Btn_DivideClick(Sender: TObject);
begin
  InsertarElemento('/', 1);
end;

procedure TFrmDatosConceptosNomina.Btn_EliminarClick(Sender: TObject);
var
  Cta, i: Integer;
begin
  Try
    if (Lista.Indice >= 0) and (Lista.Indice < Lista.Count) then
    begin
      // Verificar si el elemento es un una coma, en este caso se deberá evitar que elimine

      // Eliminar elemento y verificar si es un parentesis abierto se deberá quitar su parentesis cerrado
      if RightStr(Lista[Lista.Indice], 1) = '(' then
      begin
        // Localiza el elemento de cierre de este parentesis
        i := Lista.Indice + 1;
        Cta := 1;
        while (i < Lista.Count) and (Cta > 0) do
        begin
          if RightStr(Lista[i], 1) = '(' then
            Inc(Cta);

          if Lista[i] = ')' then
            Dec(Cta);

          if Cta > 0 then
            inc(i);
        end;

        if Cta = 0 then
        begin
          // Eliminar el parentesis que se cierra
          Lista.Delete(i);

          // Si se elimina un parentesis cerrado que corresponde a una condisión
          // se deberá eliminar toda la condisión y solo se quedará la cantidad
        end;
      end;

      if Lista.Indice >= Lista.Count then
        i := Lista.Count -1
      else
      begin
        // Contar las dimensiones de los elementos posteriores a este
        Cta := 0;
        i := 0;
        while (i < Lista.Indice) do
        begin
          Cta := Cta + Length(Lista[i]);

          if i < Lista.Indice then
            Inc(i);
        end;

        reFormula2.SelStart := Cta;
        Lista.Delete(Lista.Indice);

        Lista.Indice := i;
      end;

      Lista.RequierePintar;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmDatosConceptosNomina.Btn_MultiplicaClick(Sender: TObject);
begin
  InsertarElemento('*', 1);
end;

procedure TFrmDatosConceptosNomina.Btn_NegativoClick(Sender: TObject);
var
  pCierra: Integer;
begin
  InsertarAbreCierra('-(', ')', pCierra, TWinControl(Sender).Name <> 'Btn_Negativo');
end;

procedure TFrmDatosConceptosNomina.Btn_NumeroClick(Sender: TObject);
begin
  if JvCalculator1.Execute then
  begin
    InsertarElemento('{' + FloatToStr(JvCalculator1.Value) + '}', 1);
    JvCalculator1.Value := 0;
  end;
end;

procedure TFrmDatosConceptosNomina.Btn_RestaClick(Sender: TObject);
begin
  InsertarElemento('-', 1);
end;

procedure TFrmDatosConceptosNomina.Btn_SumaClick(Sender: TObject);
begin
  InsertarElemento('+', 1);
end;

procedure TFrmDatosConceptosNomina.Btn_ValidarClick(Sender: TObject);
begin
  if ValidaFormula then
    ShowMessage('La formula es correcta')
  else
    ShowMessage('La formula tiene errores de sintaxis');
end;

procedure TFrmDatosConceptosNomina.Btn_CondisionClick(Sender: TObject);
var
  pCierra: Integer;
begin
  InsertarAbreCierra('SI(', ')', pCierra);

  // Basados en la posición del parentesis que cierra en comparación con el que
  // abre la condición se deberán colocar las comas que separen el then y el else
  InsertarElemento(',', pCierra);
  InsertarElemento(',', pCierra);
end;

procedure TFrmDatosConceptosNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto(cdConcepto);
end;

procedure TFrmDatosConceptosNomina.FormCreate(Sender: TObject);
begin
  Lista := TMyStringList.Create;
  Lista.Clear;

  //InfoPintar := TInfoPintar.Create;
end;

procedure TFrmDatosConceptosNomina.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  Cadena, SubCad: String;
  i: Integer;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      if Not CrearConjunto(cdConcepto, 'nom_concepto', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Conceptos de Nómina']);

      if Not CargarDatosFiltrados(cdConcepto, 'IdConcepto', [IdConcepto]) then
        raise InteligentException.CreateByCode(6, ['Conceptos de Nómina', IdConcepto, 'Id. Concepto']);

      cdConcepto.Open;

      if IdConcepto = -9 then
      begin
        // Si se trata de un registro nuevo se deberá simplemente crear
        cdConcepto.Append;
        cdConcepto.FieldByName('IdConcepto').AsInteger := 0;
        cdConcepto.FieldByName('IdTipoNomina').AsInteger := IdTipoNomina;
        cdConcepto.FieldByName('Orden').AsInteger := Orden;
        cdConcepto.FieldByName('Tipo').AsString := 'Formula';
        cdConcepto.FieldByName('Font').AsString := 'Arial';
        cdConcepto.FieldByName('Size').AsString := '8';
        cdConcepto.FieldByName('Color').AsString := '0';
        cdConcepto.FieldByName('Height').AsString := '12';
        cdConcepto.FieldByName('Style').AsString := 'NORMAL';
        cdConcepto.FieldByName('Imprime').AsString := 'Si';
      end
      else
      begin
        // Si se trata de una edición de registro se deberá verificar que todavía exista y se editará
        if cdConcepto.RecordCount = 0 then
          raise InteligentException.CreateByCode(27, [IdConcepto, 'Conceptos de Nómina', IdConcepto]);

        orCodigoConcepto := cdConcepto.FieldByName('CodigoConcepto').AsString;
        orClave := cdConcepto.FieldByName('Clave').AsString;
        IdTipoNomina := cdConcepto.FieldByName('IdTipoNomina').AsInteger;

        // Llenar la lista de elementos de la formula
        //Cadena := cdConcepto.FieldByName('Cadena').AsString;

        // Quitar los espacios en blanco

        Cadena := '';
        for i := 1 to Length(cdConcepto.FieldByName('Cadena').AsString) do
          if Copy(cdConcepto.FieldByName('Cadena').AsString, i, 1) <> ' ' then
            Cadena := Cadena + Copy(cdConcepto.FieldByName('Cadena').AsString, i, 1);

        reFormula2.Text := Cadena;

        SubCad := '';
        i := 1;
        while i <= Length(Cadena) do
        //for i := 1 to Length(Cadena) do
        begin
          case Cadena[i] of
            '(', ')', '+', '-', '*', '/', ',': Lista.Add(Cadena[i]);
            '<': begin
                   if (i + 1 < Length(Cadena)) and (Cadena[i + 1] = '>') then
                   begin
                     Lista.Add(Copy(Cadena, i, 2));
                     Inc(i);
                   end
                   else
                     if (i + 1 < Length(Cadena)) and (Cadena[i + 1] = '=') then
                     begin
                       Lista.Add(Copy(Cadena, i, 2));
                       Inc(i);
                     end
                     else
                       Lista.Add(Copy(Cadena, i, 1));
                 end;
            '>': begin
                   if (i + 1 < Length(Cadena)) and (Cadena[i + 1] = '=') then
                   begin
                     Lista.Add(Copy(Cadena, i, 2));
                     Inc(i);
                   end
                   else
                     Lista.Add(Cadena[i]);
                 end;
            'S': begin
                   if (i + 1 < Length(Cadena)) and (Cadena[i + 1] = 'I') and (Cadena[i + 2] = '(') then
                   begin
                     Lista.Add(Copy(Cadena, i, 3));
                     Inc(i, 2);
                   end
                   else
                     SubCad := SubCad + Cadena[i];
                 end;
            '{': SubCad := '';
            '}': begin
              // Agregar elemento
              Lista.Add('{' + SubCad + '}');
            end
            else
              SubCad := SubCad + Cadena[i];
          end;

          Inc(i);
        end;

        cdConcepto.Edit;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de los siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmDatosConceptosNomina.GridConceptosDblClick(Sender: TObject);
var
  i, l, mPos: Integer;
begin
  // Agregar elementos a la lista
  if Lista.Count = 0 then
  begin
    mPos := 0;
    Lista.Add('{' + 'NOMINA.' + GridConceptos.DataSource.DataSet.FieldByName('Clave').AsString + '}');
  end
  else
  begin
    mPos := Lista.Indice + 1;
    Lista.Insert(mPos, '{' + 'NOMINA.' + GridConceptos.DataSource.DataSet.FieldByName('Clave').AsString + '}');
  end;

  l := 0;
  for i := 0 to mPos -1 do
    l := l + Length(Lista[i]);

  Lista.SelInicio := l + 1;
  Lista.Indice := mPos;
  Lista.RequierePintar;
end;

procedure TFrmDatosConceptosNomina.GridEmpleadoDblClick(Sender: TObject);
var
  i, l, mPos: Integer;
begin
  // Agregar elementos a la lista
  if Lista.Count = 0 then
  begin
    mPos := 0;
    Lista.Add('{' + 'EMPLEADO.' + GridEmpleado.DataSource.DataSet.FieldByName('Clave').AsString + '}');
  end
  else
  begin
    mPos := Lista.Indice + 1;
    Lista.Insert(mPos, '{' + 'EMPLEADO.' + GridEmpleado.DataSource.DataSet.FieldByName('Clave').AsString + '}');
  end;

  l := 0;
  for i := 0 to mPos -1 do
    l := l + Length(Lista[i]);

  Lista.SelInicio := l + 1;
  Lista.Indice := mPos;
  Lista.RequierePintar;
end;

procedure TFrmDatosConceptosNomina.InsertarElemento(Valor: String; Mar: Byte);
var
  mPos: Integer;
begin
  mPos := 0;

  if Lista.Count > 0 then
  begin
    if Lista.Indice < 0 then
    begin
      mPos := Lista.Count;
      Lista.Add(Valor);
    end
    else
    begin
      mPos := Lista.Indice + Mar;
      Lista.Insert(mPos, Valor);
    end;
  end
  else
    Lista.Add(Valor);

  Lista.Indice := mPos;
  //Lista.RequierePintar;
end;

procedure TFrmDatosConceptosNomina.reFormula2DblClick(Sender: TObject);
var
  Valor: Real;
begin
  // Verificar si es un número
  Try
    Valor := StrToFloat(Copy(Lista[Lista.Indice], 2, Length(Lista[Lista.Indice]) - 2));
    JvCalculator1.Value := Valor;

    if JvCalculator1.Execute then
    begin
      Lista[Lista.Indice] := '{' + FloatToStr(JvCalculator1.Value) + '}';
      Lista.RequierePintar;
    end;

    JvCalculator1.Value := 0;
  Except
    ;
  End;
end;

procedure TFrmDatosConceptosNomina.reFormula2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 46 then
  begin
    Key := 0;
    Btn_Eliminar.Click;
  end;
end;

procedure TFrmDatosConceptosNomina.reFormula2SelectionChange(Sender: TObject);
var
  Posicion,
  Suma, i,
  NewIndice: Integer;
begin
  if Not Lista.Pintando then
  begin
    // Localizar el Indice de la lista en base a la posición del cursor en la cadena
    Posicion := reFormula2.SelStart +1;
    Lista.SelInicio := Posicion -1;

    // Recorrer todos los elementos del richedit hasta que la suma de las longitudes de estos sea mayor o igual que la Posición
    Suma := 0;
    i := 0;
    while (i < Lista.Count) and (Suma < Posicion) do
    begin
      Suma := Suma + Length(Lista[i]);
      if Suma < Posicion then
        Inc(i);
    end;

    if Not Lista.Pintando then
    begin
      if i < Lista.Count then
        NewIndice := i
      else
        // Se trata del final de la cadena
        NewIndice := -1;

      If Lista.Indice <> NewIndice then
      begin
        Lista.Indice := NewIndice;
        Lista.RequierePintar;
      end;
    end;
  end;
end;

procedure TFrmDatosConceptosNomina.Timer1Timer(Sender: TObject);
var
  i, m,
  Cta,
  Cierre: Integer;
  Abre: Boolean;
  Valor: Real;
  lCad: String;
  ListaMarca: TStringList;
  Marca: TMarca;
  YaMarcado: TColor;
begin
  if (Lista.pRequierePintar) and (Not Lista.Pintando) then
  begin
    Try
      Lista.Pintando := True;

      // Generar el texto de acuerdo a los datos de la lista y la posición del Cursor
      lCad := '';
      Cierre := -1;

      ListaMarca := TStringList.Create;
      ListaMarca.Clear;

      for i := 0 to Lista.Count -1 do
      begin
        Abre := False;
        YaMarcado := 0;

        // Verificar si es un parentesis abierto
        if RightStr(Lista[i], 1) = '(' then   //(Lista[i] = '(') or (Lista[i] = 'SI(') then
        begin
          // Si es un parentesis abierto verificar si el parentesis que lo cierra está seleccionado
          Cta := 1;
          m := i + 1;
          while (m < Lista.Count) and (Cta <> 0) do
          begin
            if RightStr(Lista[m], 1) = '(' then //(Lista[m] = '(') then
              Inc(Cta);

            if Lista[m] = ')' then
              Dec(Cta);

            if Cta <> 0 then
              inc(m);
          end;

          if Cta = 0 then
            Abre := Lista.Indice = m;
        end;

        if (Lista.Indice = i) or (Cierre = i) or (Abre) then
        begin
          Marca := TMarca.Create;
          Marca.Inicio := Length(lCad);
          Marca.Largo := Length(Lista[i]);
          Marca.Color := clBlack;
          Marca.BackColor := clYellow;
          ListaMarca.AddObject(IntToStr(i), Marca);
          YaMarcado := Marca.BackColor;

          // Verificar si es un parentesis abierto
          if (Not Abre) and (RightStr(Lista[i], 1) = '(') then
          begin
            // Localizar el elemento que cierra el parentesis
            m := i + 1;
            Cta := 1;
            while (m < Lista.Count) and (Cta <> 0) do
            begin
              if (RightStr(Lista[m], 1) = '(') then
                Inc(Cta);

              if Lista[m] = ')' then
                Dec(Cta);

              if Cta <> 0 then
                Inc(m);
            end;

            if Cta = 0 then
              Cierre := m;
          end;
        end;

        // Verificar si se trata de un valor numérico
        Try
          Valor := StrToFloat(Copy(Lista[i], 2, Length(Lista[i]) - 2));

          Marca := TMarca.Create;
          Marca.Inicio := Length(lCad);
          Marca.Largo := Length(Lista[i]);
          Marca.Color := clGreen;

          if YaMarcado = 0 then
            Marca.BackColor := reFormula2.Color
          else
            Marca.BackColor := YaMarcado;

          ListaMarca.AddObject(IntToStr(i), Marca);
        Except
          ;
        End;

        lCad := lCad + Lista[i];
      end;

      reFormula2.Text := lCad;

      reFormula2.SelectAll;
      reFormula2.SelAttributes.BackColor := reFormula2.Color;
      reFormula2.SelAttributes.Color := clBlack;

      for i := 0 to ListaMarca.Count -1 do
      begin
        reFormula2.SelStart := TMarca(ListaMarca.Objects[i]).Inicio;
        reFormula2.SelLength := TMarca(ListaMarca.Objects[i]).Largo;
        reFormula2.SelAttributes.Color := TMarca(ListaMarca.Objects[i]).Color;
        reFormula2.SelAttributes.BackColor := TMarca(ListaMarca.Objects[i]).BackColor;
      end;
    Finally
      reFormula2.SelStart := Lista.SelInicio;
      Lista.Pintando := False;
      Lista.pRequierePintar := False;
    End;
  end;
end;

function TFrmDatosConceptosNomina.ValidaFormula: Boolean;
var
  ListaCopia: TStringList;
  i: Integer;
  Valor, Paso: Real;
begin
  ListaCopia := TStringList.Create;

  Try
    ListaCopia.Clear;
    ListaCopia.Add('(');
    for i := 0 to Lista.Count -1 do
    begin
      // Aqui se tiene que hacer la substitución de las variables por un 1 y se deben quitar las {}
      if Lista[i][1] = '{' then
      begin
        // Aqui detectar cuales son variable para substituirlas por un 1
        Try
          Paso := StrToFloat(Copy(Lista[i], 2, Length(Lista[i]) - 2));
          ListaCopia.Add(FloatToStr(Paso));
        Except
          on e:Exception do
            ListaCopia.Add('1');
        End;
      end
      else
        ListaCopia.Add(Lista[i]);
    end;
    ListaCopia.Add(')');

    // Analizar las formulas
    Result := AnalizaFormula(ListaCopia, 0, ListaCopia.Count -1);

  Finally
    ListaCopia.Clear;
    ListaCopia.Free;
  End;
end;

procedure TFrmDatosConceptosNomina.AdvGlowButton1Click(Sender: TObject);
var
  Objeto: TWinControl;
begin
  // Validar la formula antes de proceder a grabarla
  Try
    if Not ValidaFormula then
      raise InteligentException.CreateByCode(8, ['La formula descrita contiene errores de sintaxis. verifiquela e intente de nuevo.']);

    Objeto := Nil;

    // Verificar si los campos está capturados
    if Trim(edCodigoConcepto.Text) = '' then
    begin
      Objeto := edCodigoConcepto;
      raise InteligentException.CreateByCode(18 , ['Código de Concepto']);
    end;

    if Trim(edClave.Text) = '' then
    begin
      Objeto := edClave;
      raise InteligentException.CreateByCode(18 , ['Clave del Concepto']);
    end;

    if Trim(edTitulo.Text) = '' then
    begin
      Objeto := edTitulo;
      raise InteligentException.CreateByCode(18 , ['Título del Concepto']);
    end;

    if Trim(mNombre.Text) = '' then
    begin
      Objeto := mNombre;
      raise InteligentException.CreateByCode(18 , ['Descripción del Concepto']);
    end;

    if Trim(cbModo.Text) = '' then
    begin
      Objeto := cbModo;
      raise InteligentException.CreateByCode(18 , ['Tipo de Concepto']);
    end;

    if Trim(reFormula2.Text) = '' then
    begin
      Objeto := reFormula2;
      raise InteligentException.CreateByCode(18 , ['Formula para el cálculo del Concepto']);
    end;

    // Solo realizar esta verificación si se trata de un nuevo registro o si tratandose de una edición el Codigo del Concepto ha sido modificado
    if (IdConcepto = -9) or ((IdConcepto <> -9) and (orCodigoConcepto <> edCodigoConcepto.Text)) then
    begin
      // Verificar que tanto el código como la clave no se encuentren repetidos
      if Not CargarDatosFiltrados(TClientDataSet(dsBuscar.DataSet), 'IdTipoNomina,CodigoConcepto', [IdTipoNomina, edCodigoConcepto.Text]) then
        raise InteligentException.CreateByCode(6, ['Conceptos', edCodigoConcepto.Text, 'Codigo de Concepto']);

      if CuantosRegistros(TClientDataSet(dsBuscar.DataSet)) > 0 then
      begin
        Objeto := edCodigoConcepto;
        raise InteligentException.CreateByCode(17, ['Conceptos', 'de Concepto ' + edCodigoConcepto.Text]);
      end;
    end;

    // Solo realizar esta verificación si se trata de un nuevo registro o si tratandose de una edición la Clave has dido modificada
    if (IdConcepto = -9) or ((IdConcepto <> -9) and (orClave <> edClave.Text)) then
    begin
      if Not CargarDatosFiltrados(TClientDataSet(dsBuscar.DataSet), 'IdTipoNomina,Clave', [IdTipoNomina, edClave.Text]) then
        raise InteligentException.CreateByCode(6, ['Conceptos', edClave.Text, 'Clave de Concepto']);

      if CuantosRegistros(TClientDataSet(dsBuscar.DataSet)) > 0 then
      begin
        Objeto := edClave;
        raise InteligentException.CreateByCode(17, ['Conceptos', 'de Clave de Concepto ' + edClave.Text]);
      end;
    end;
    cdConcepto.FieldByName('cadena').AsString := reFormula2.Text;

    // Si todo está bien hasta aquí se procederá a intentar grabar el registro
    cdConcepto.Post;
    cdConcepto.ApplyUpdates(-1);
  Except
    on e:InteligentException do
    begin
      if Assigned(Objeto) then
        Objeto.SetFocus;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      ModalResult := mrNone;
    end;

    on e:Exception do
    begin
      if Assigned(Objeto) then
        Objeto.SetFocus;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      ModalResult := mrNone;
    end;
  End;
end;

function TFrmDatosConceptosNomina.AnalizaFormula(pLista: TStringList; Inicio, Termino: Integer): Boolean;
var
  i, m, Cta: Integer;
  Valor: Real;
begin
  // Aqui yo conozco que el primer elemento y el último son parentesis
  // Entonces verifico si dentro de ese rango existen otros parentesis
  i := Inicio + 1;
  while (i <= Termino) do
  begin
    if pLista[i] = '(' then
    begin
      // Localizar en donde se cierra este parentesis
      Cta := 1;
      m := i + 1;
      while (m < Termino) and (Cta <> 0) do
      begin
        if pLista[m] = '(' then
          Inc(Cta);
        if pLista[m] = ')' then
          Dec(Cta);
        if Cta <> 0 then
          Inc(m);
      end;
      if Cta = 0 then
        Result := AnalizaFormula(pLista, i, m);
    end;
    Inc(i);
  end;
  // Cuando llegas a este punto ya se sabe que no existen parentesis más internos
  // ¿Qué se debe hacer con esos elementos?

  Try
    Valor := 0;
    for i := Inicio to Termino do
    begin
      if (i > Inicio) and (i + 1 < Termino) then
      begin
        case pLista[i][1] of
          '+': Valor := Valor + StrToFloat(pLista[i + 1]);
          '-': Valor := Valor - StrToFloat(pLista[i + 1]);
          '*': Valor := Valor * StrToFloat(pLista[i + 1]);
          '/': Valor := Valor / StrToFloat(pLista[i + 1]);
          ' ': ;  // No hacer nada, solo se lo debe saltar
          else
            Valor := StrToFloat(pLista[i]);
        end;
      end;
      pLista[i] := ' ';
    end;

    pLista[Inicio] := FloatToStr(Valor);

    Result := True;
  Except
    // Manejar el error
    Result := False;
  end;

end;

procedure TFrmDatosConceptosNomina.InsertarAbreCierra(Abre, Cierra: String;
  Var pCierra: Integer; Directa: Boolean = False);
var
  i, Cuenta: Integer;
  YaSumo: Boolean;
begin
  // Insertar el parentesis abierto
  InsertarElemento(Abre, 0);

  if Not Directa then
  begin
    // Verificar en donde se debe instalar el cierre del parentesis
    i := Lista.Indice + 1;
    Cuenta := 0;
    YaSumo := False;
    while (i < Lista.Count) and Not ((Cuenta <= 0) and (YaSumo)) do
    begin
      if RightStr(Lista[i], 1) = RightStr(Abre, 1) then
      begin
        YaSumo := True;
        Inc(Cuenta);
      end;

      if Lista[i] = Cierra then
      begin
        YaSumo := True;
        Dec(Cuenta);
      end;

      if Not ((Cuenta <= 0) and (YaSumo)) then
        Inc(i);
    end;

    // Agregar el parentesis cerrado
    if Cuenta <= 0 then
      pCierra := i - Lista.Indice
    else
      pCierra := Lista.Count -1;

    InsertarElemento(Cierra, pCierra);
  end;
end;

end.
