unit frm_SelectSheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Excel2000, OleServer, RXCtrls, Grids,
  ExcelXP, ComCtrls, DB, RxMemDS, Menus, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, DBGrids, frm_reporteanalisis, JvMemoryDataset, DBClient,
  ClientModuleUnit1, UInteliDialog;

type
  TYaLeidos = Class
    Tabla: String;
    Campo: String;
    Codigo: String;
    Llave: Variant;
  End;

  TfrmSelectSheet = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    StringGrid1: TStringGrid;
    Panel5: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel6: TPanel;
    ProgressBar1: TProgressBar;
    PopupMenu1: TPopupMenu;
    ReordenarColumnas1: TMenuItem;
    Panel7: TPanel;
    CheckBox1: TCheckBox;
    Panel8: TPanel;
    Panel9: TPanel;
    BitBtn3: TBitBtn;
    Panel10: TPanel;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel12: TPanel;
    Panel13: TPanel;
    StringGrid2: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    PanelAvance: TPanel;
    ProgressBar2: TProgressBar;
    Label2: TLabel;
    UpDown1: TUpDown;
    Label3: TLabel;
    Edit1: TEdit;
    mdEstructura: TJvMemoryData;
    mdDeposito: TClientDataSet;
    qGrabar: TClientDataSet;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ReordenarColumnas1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Panel13Resize(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Panel10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel10MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure PonerTitulos(Inicial: Boolean; Ini, Fin: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
    Excel: Variant;
    nColumna: Integer;
    ListaNecesarios,
    ListaLlave: TStringList;
    NombreTabla,
    DescripTabla: String;
    flcid: Integer;
  end;

var
  frmSelectSheet: TfrmSelectSheet;

implementation

{$R *.dfm}

Const
  PastillaCampo = '&&&././$#"!';
  
Var
  Factor2: Extended;
  Apuntador: TPoint;
  Activa: Boolean = False;
  xPanelPos, PanelPos: TPoint;
  AltoTitulo: Integer;
  NumErr: Integer;
  h: Integer;

Function ColumnaNombre(Numero: Integer): String;
Var
  Valor, NumLetras: Integer;
  Cad: String;
Begin
  NumLetras := 26;  // O1
  Cad := '';
  Valor := Numero Mod NumLetras;
  if Valor = 0 then Valor := 26;
  if Numero - Valor > 0 then Cad := Char(64 + Trunc((Numero - Valor) / NumLetras));
  Cad := Cad + Char(64 + Valor);

  Result := Cad;
End;

procedure TfrmSelectSheet.BitBtn1Click(Sender: TObject);
Var
  Lista, ListaWbs,
  ListaErrores      : TStringList;
  nCol, nRen, nCta,
  CtaEmpty,
  Resultado, Cta    : Integer;
  ValorNecesario,
  pValor            : Variant;
  Consecutivo,
  Error, Wbs,
  WbsAnterior       : String;
  YaLeidos: TStringList;
  YaGrupo: TYaLeidos;
  Posicion: Integer;
  gLlave: TClientDataSet;
  gLlaveName: String;

function VerificaFecha(Valor: Variant): String;
Var
  Fecha: TDateTime;
Begin
  Try
    Fecha := FloatToDateTime(Valor);
    Result := '';
  Except
    Result := 'EL FORMATO DE LA FECHA ES INCORRECTO.';
  End;
End;

function VerificaNumero(Valor: Variant; Tipo: Byte): String;
Var
  Cadena: String;
  Cta: Integer;
  CadError: String;
Begin
  // Verificar que todos los caracteres sean números
  Cadena := Valor;
  Cta := 0;
  CadError := '';
  while (Cta < Length(Cadena)) And (CadError = '') do
  Begin
    Inc(Cta);
    if Cadena[1] = '-' then
      Cadena := Copy(Cadena,2,Length(Cadena));

    If Not ((Cadena[Cta] > #47) And (Cadena[Cta] < #58)) Then
      if Tipo = 1 then
      Begin
        if Cadena[Cta] <> '.' then
          CadError := 'EL VALOR NO ES NÚMERO O NO ES DEL TIPO DECIMAL.';
      End
      Else
        CadError := 'EL VALOR NO ES NUMÉRICO O NO ES DEL TIPO ENTERO.';
  End;

  if (Tipo = 1) And (CadError = '') then
  Begin
    Cta := Pos('.',Cadena);
    if Cta > 0 then
    Begin
      Cadena := Copy(Cadena,1,Cta - 1) + Copy(Cadena, Cta + 1, Length(Cadena));
      If Pos('.', Cadena) <> 0 Then
        CadError := 'EL VALOR TIENE MAS DE UN PUNTO DECIMAL.';
    End;
  End;
  Result := CadError;
End;

procedure MeterDatos;
Var
  nLlave: Byte;
  CadenaSQL, sNombre: String;
  Proceder: Boolean;
  nCta: Integer;
  NombreConjunto: String;
Begin
  Try
    Try
      PanelAvance.Visible := False;
      Label2.Caption := 'Cargando información a la base de datos, espere...';
      ProgressBar2.Min := 0;
      ProgressBar2.Position := 0;
      ProgressBar2.Max := mdDeposito.RecordCount;
      PanelAvance.Visible := True;
      Label2.Repaint;

      // Crear el contenedor de datos definitivos
      CrearConjunto(qGrabar, 'alm_almacen', NombreConjunto, ccUpdate);

      // Recorrer los campos llave necesarios para asignar sus valores
      CadenaSQL := '';
      nLlave := 0;
      while nLlave < ListaLlave.Count do
      Begin
        if CadenaSQL <> '' then
          CadenaSQL := CadenaSQL + ' and ';
        CadenaSQL := CadenaSQL + ListaLlave[nLlave];

        Inc(nLlave);
      End;
      if CadenaSQL <> '' then
        CadenaSQL := ' Where ' + CadenaSQL;

      PonerSentenciaSQL(NombreConjunto, 'select * from ' + NombreTabla + CadenaSQL);

      qGrabar.Open;

      if qGrabar.RecordCount > 0 then
      begin
        case InteliDialog.ShowModal('PRECAUCIÓN!!', 'Ya existen datos dentro de la tabla de ' + DescripTabla + #10 + #10 + '¿Desea eliminar DEFINITIVAMENTE estos datos antes de proceder a cargar la nueva información?', mtWarning, [mbYes, mbNo, mbCancel], 0) of
          mrYes: Begin
                   Proceder := InteliDialog.ShowModal('Eliminar registros', 'Se procederá a eliminar los datos actuales en la tabla ' + DescripTabla, mtConfirmation, [mbOk, mbCancel], 0) = mrOk;
                   if Proceder then
                   Begin
                     Label2.Caption := 'Eliminando la información anterior...';
                     Label2.Font.Color := clRed;
                     Label2.Repaint;
                     ProgressBar2.Position := 0;
                     ProgressBar2.Max := qGrabar.RecordCount;
                     while qGrabar.RecordCount > 0 do
                     Begin
                       ProgressBar2.Position := ProgressBar2.Position + 1;
                       ProgressBar2.Repaint;
                       qGrabar.Delete;
                       qGrabar.ApplyUpdates(-1);
                     End;
                   End
                   else
                     raise Exception.Create('Proceso cancelado por el usuario.');
                 End;
          mrNo: Proceder := True; // No hacer nada
          mrCancel: raise Exception.Create('Proceso cancelado por el usuario.');
        end;
      end
      Else
        Proceder := True;

      Label2.Caption := 'Cargando información a la base de datos...';
      Label2.Font.Color := clNavy;
      Label2.Repaint;
      ProgressBar2.Position := 0;
      ProgressBar2.Max := mdDeposito.RecordCount;
      mdDeposito.First;

      while Not mdDeposito.Eof and Proceder do
      Begin
        ProgressBar2.Position := ProgressBar2.Position + 1;
        ProgressBar2.Repaint;

        Try
          qGrabar.Append;

          for nCta := 0 to mdDeposito.FieldDefs.Count - 1 do
          Begin
            sNombre := qGrabar.FieldDefs.Items[nCta].Name;

            if qGrabar.FieldDefs.Items[nCta].Required And (mdDeposito.FieldValues[sNombre] = Null) then
            Begin
              If (qGrabar.FieldDefs.Items[nCta].DataType = ftString) Then
                qGrabar.FieldByName(sNombre).AsString := '';

              If qGrabar.FieldDefs.Items[nCta].DataType = ftInteger Then
                qGrabar.FieldByName(sNombre).AsInteger := 0;

              If qGrabar.FieldDefs.Items[nCta].DataType = ftFloat Then
                qGrabar.FieldByName(sNombre).AsFloat := 0;
            End
            else
              qGrabar.FieldValues[sNombre] := mdDeposito.FieldValues[sNombre];

            // Verificar si el campo forma parte de una llave foranea
            if mdEstructura.Locate('sIdLlave', sNombre, []) then
              if mdEstructura.FieldByName('sForaneaTabla').AsString <> '' then
              begin
                // Localizar la tabla y el campo
                //showmessage(mdEstructura.FieldByName('sForaneaTabla').AsString + '  ' + mdEstructura.FieldByName('sForaneaCampo').AsString);
              end;
          End;

          qGrabar.Post;
          qGrabar.ApplyUpdates(-1);
        Except
          on E : Exception do
            raise Exception.Create('Se ha generado el error del sistema: ' + E.Message);
        End;

        mdDeposito.Next;
      End;

      if Proceder then
        InteliDialog.ShowModal('Proceso terminado', 'La información ha sido importada de manera satisfactoria', mtInformation, [mbOk], 0);
    Finally
      PanelAvance.Visible := False;
    End;
  Except
    on e:exception do
      InteliDialog.ShowModal('La importación de datos no ha podido ser realizada', 'La importación de datos no ha podido ser realizada debido a lo siguiente:' + #10 + #10 + e.Message, mtInformation, [mbOk], 0);
  End;
End;

begin
  // Armar la estructura con el orden determinado
  Try
  nCol := 0;
  CtaEmpty := 0;
  Lista := TStringList.Create;
  Try
    while nCol < Excel.ActiveSheet.UsedRange.Columns.Count do
    Begin
      Inc(nCol);

      // Ubicar el registro de la primera columna
      mdEstructura.Filtered := False;
      nColumna := nCol;
      mdEstructura.Filtered := True;
      mdEstructura.First;

      If mdEstructura.Eof Then
      Begin
        Inc(CtaEmpty);
        Lista.Add('Empty' + IntToStr(CtaEmpty));
      End
      else
        Lista.Add(mdEstructura.FieldByName('sIdLlave').AsString);
    End;
  Finally
    mdEstructura.Filtered := False;
  End;

  // Inicializar la lista de campos de llave foranea que se van leyendo
  YaLeidos := TStringList.Create;
  YaLeidos.Clear;
  YaGrupo := TYaLeidos.Create;

  // Crear el contenedor que deberá obtener los valores de los campos llave foranea
  gLlave := TClientDataSet.Create(Nil);
  CrearConjunto(gLlave, '', gLlaveName, ccSelect);

  // Recorrer todo el archivo de excel con la estructura indicada
  Try
    Try
      ProgressBar2.Position := 0;
      ProgressBar2.Max := Excel.ActiveSheet.UsedRange.Rows.Count;
      Label2.Caption := 'Analizando datos, espere...';
      PanelAvance.Visible := True;
      Label2.Repaint;
      ListaErrores := TStringList.Create;

      nRen := StringGrid1.FixedRows;
      while (nRen <= Excel.ActiveSheet.UsedRange.Rows.Count) And (ListaErrores.Count < NumErr) do
      Begin
        if ListaErrores.Count > Trunc(NumErr / 3) then
          Label2.Font.Color := clYellow;

        if ListaErrores.Count > Trunc(NumErr / 1.5) then
          Label2.Font.Color := clRed;
        Label2.Repaint;

        ProgressBar2.Position := ProgressBar2.Position + 1;
        ProgressBar2.Repaint;

        // Crear el registro por renglón
        mdDeposito.Append;

        // Meter los campos obligatorios
        ValorNecesario := Null;
        for nCta := 0 to ListaNecesarios.Count - 1 do
        Begin
{          if ListaNecesarios[nCta] = 'sContrato' then ValorNecesario := global_contrato;
          if ListaNecesarios[nCta] = 'sIdConvenio' then ValorNecesario := global_convenio;
          if ListaNecesarios[nCta] = 'sNumeroOrden' then ValorNecesario := global_Orden;
          if ListaNecesarios[nCta] = 'lCalculo' then ValorNecesario := 'Si';
          if ListaNecesarios[nCta] = 'lExtraordinario' then ValorNecesario := 'No';
          if ListaNecesarios[nCta] = 'mComentarios' then ValorNecesario := '*';
          if ListaNecesarios[nCta] = 'lGerencial' then ValorNecesario := 'Si';
          if ListaNecesarios[nCta] = 'lGenerado' then ValorNecesario := 'No';
          if ListaNecesarios[nCta] = 'lCancelada' then ValorNecesario := 'No';

          if ListaNecesarios[nCta] = 'sWbsAnterior' then ValorNecesario := '';
          if ListaNecesarios[nCta] = 'sWbs' then ValorNecesario := '';

          if ValorNecesario <> Null then
            If (mdDeposito.FieldDefs.Items[nCta].DataType = ftString) And (String(ValorNecesario) = '') Then
              mdDeposito.FieldByName(ListaNecesarios[nCta]).AsString := ''
            else
              mdDeposito.FieldValues[ListaNecesarios[nCta]] := ValorNecesario;}
        End;

        // Recorrer las columnas de excel y localizar su posición en la tabla
        nCol := 0;
        While (nCol < Excel.ActiveSheet.UsedRange.Columns.Count) And (ListaErrores.Count < NumErr) do
        Begin
          if Copy(Lista[nCol],1,5) <> 'Empty' then
          Begin
            // Validar el campo de acuerdo a su tipo
            Error := '';
            pValor := Excel.ActiveSheet.Range[ColumnaNombre(nCol + 1) + Trim(IntToStr(nRen)), ColumnaNombre(nCol + 1) + Trim(IntToStr(nRen))].Value;

            if pValor <> Unassigned then
            begin
              // Verificar si este es un campo indicado como llave unica
              if mdEstructura.Locate('sIdLlave', Lista[nCol], []) and (mdEstructura.FieldByName('sForaneaTabla').AsString <> '') then
              begin
                // Verificar si ya existe en la lista de los ya leídos
                Posicion := Yaleidos.IndexOf(mdEstructura.FieldByName('sForaneaTabla').AsString + '|' + mdEstructura.FieldByName('sForaneaCampo').AsString + '|' + String(pValor));
                if Posicion >= 0 then
                  // Si ya ha sido leído entonces solo se deberá transferir su valor
                  pValor := TYaleidos(YaLeidos.Objects[Posicion]).Llave
                else
                begin
                  Try
                    // Localizar el registro adecuado
                    gLlave.Close;
                    PonerSentenciaSQL(gLlaveName, 'select ' + mdEstructura.FieldByName('sIdLlave').AsString + ' as Llave ' +
                                                  'from ' + mdEstructura.FieldByName('sForaneaTabla').AsString + ' ' +
                                                  'where ' + mdEstructura.FieldByName('sForaneaCampo').AsString + ' = ' + QuotedStr(String(pValor)));
                    gLlave.Open;
                    if gLlave.RecordCount = 0 then
                      Raise Exception.Create('');

                    // Registrar el valor obtenido
                    YaGrupo.Tabla  := mdEstructura.FieldByName('sForaneaTabla').AsString;
                    YaGrupo.Campo  := mdEstructura.FieldByName('sForaneaCampo').AsString;
                    YaGrupo.Codigo := String(pValor);
                    YaGrupo.Llave  := gLlave.FieldByName('Llave').AsVariant;

                    YaLeidos.AddObject(mdEstructura.FieldByName('sForaneaTabla').AsString + '|' + mdEstructura.FieldByName('sForaneaCampo').AsString + '|' + String(pValor), YaGrupo);
                    pValor := gLlave.FieldByName('Llave').AsVariant;
                  Except
                    on e:exception do
                      showmessage(e.Message);
                  End;
                end;
              end;
            end;

            Case mdDeposito.FieldDefs.Find(Lista[nCol]).DataType Of
              ftDate, ftDateTime: Begin
                                    Error := VerificaFecha(pValor);
                                    If Error = '' Then pValor := FloatToDateTime(pValor);
                                  End;
              ftInteger: Begin
                           Error := VerificaNumero(pValor,0);
                           if (String(pValor) = '') and (pValor <> Unassigned) then
                             pValor := 0;
                         End;
              ftFloat: Begin
                         Error := VerificaNumero(pValor,1);
                         if String(pValor) = '' then
                           pValor := 0;
                       End;
            End;

            if Error <> '' then
              // Agregar este error a la lista de errores
              ListaErrores.Add('Ren: ' + IntToStr(nRen) + ', Col: ' + ColumnaNombre(nCol + 1) + ' - ' + Error)
            else
              // Grabar los campos desde excel
              if pValor <> Unassigned then
                mdDeposito.FieldValues[Lista[nCol]] := pValor;
          End;
          Inc(nCol);
        End;

        mdDeposito.Post;    // Grabar el nuevo registro

        Inc(nRen);
      End;
    Except
      on e:exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error al intentar registrar los datos', 'Ocurrió un error inesperado cuando se trataba de registrar la información en la base de datos, informe de lo siguiente al administrador del sistema:' + #10 + #10 +
                               e.Message, mtError, [mbOk], 0);
        Raise;
      end;
    End;
  Finally
    PanelAvance.Visible := False;
    Label2.Font.Color := clLime;
  End;

  // Verificar si hubo errores al registrar los datos
  Try
    Try
      Application.CreateForm(TFrmReporteAnalisis, FrmReporteAnalisis);
      if ListaErrores.Count > 0 then
      Begin
        FrmReporteAnalisis.StringGrid1.Visible := True;
        FrmReporteAnalisis.Panel2.Visible := True;
        FrmReporteAnalisis.Panel2.Caption := '(Por optimización solo se muestran máximo los primeros ' + IntToStr(NumErr) + ' errores)';
        FrmReporteAnalisis.Panel1.Caption := 'Se encontraron los siguientes errores al analizar';
        FrmReporteAnalisis.StringGrid1.RowCount := ListaErrores.Count;
        FrmReporteAnalisis.Excel := Excel;
        FrmReporteAnalisis.Image1.Visible := False;
        FrmReporteAnalisis.flcid := flcid;
        FrmReporteAnalisis.NumErr := NumErr;
        For nRen := 0 To ListaErrores.Count - 1 do
          FrmReporteAnalisis.StringGrid1.Cells[0, nRen] := ListaErrores[nRen];
      End
      Else
      Begin
        FrmReporteAnalisis.Height := FrmReporteAnalisis.Panel1.Height + FrmReporteAnalisis.Panel2.Height + GetSystemMetrics(SM_CYCAPTION) + 6;
        FrmReporteAnalisis.StringGrid1.Visible := False;
        FrmReporteAnalisis.Panel1.Caption := 'No se encontraron errores al analizar los datos';
        FrmReporteAnalisis.Panel2.Caption := '';
        FrmReporteAnalisis.BitBtn1.Visible := True;
        FrmReporteAnalisis.BitBtn2.Visible := True;
        FrmReporteAnalisis.Image1.Visible := True;
      End;

      if {(ListaErrores.Count = 0) and} (FrmReporteAnalisis.ShowModal = mrYes) Then
        MeterDatos;
    Except
      on e:exception do
      begin
        InteliDialog.ShowModal('No se ha importado la información',
                               'La información no se ha importado a la tabla debido al lo siguiente:' + #10 + #10 +
                               e.Message, mtError, [mbOk], 0);
        Raise;
      end;
    End;
  Finally
    FrmReporteAnalisis.Destroy;
    Lista.Destroy;
    ListaErrores.Destroy;
    Close;
  End;
  Except
    ;
  End;
end;

procedure TfrmSelectSheet.BitBtn3Click(Sender: TObject);
begin
  Panel7.Visible := False;
  Panel3.Enabled := True;
end;

procedure TfrmSelectSheet.Button1Click(Sender: TObject);
Var
  xRen: Integer;
  Val1: String;
  Llave1, Llave2: TBookMark;
begin
  // Modificar la columna
  if StringGrid2.Row > 0 then
  Begin
    mdEstructura.Filtered := False;
    nColumna := StringGrid2.Row + 1;
    mdEstructura.Filtered := True;
    mdEstructura.First;
    Llave1 := mdEstructura.BookMark;

    mdEstructura.Filtered := False;
    nColumna := StringGrid2.Row;
    mdEstructura.Filtered := True;
    mdEstructura.First;
    if mdEstructura.Eof then
      Llave2 := Nil

    else
      Llave2 := mdEstructura.BookMark;

    xRen := StringGrid2.Row;
    Val1 := StringGrid2.Cells[1,xRen - 1];

    StringGrid2.Cells[1,xRen - 1] := StringGrid2.Cells[1,xRen];

    StringGrid2.Cells[1,xRen] := Val1;

    StringGrid2.Row := xRen - 1;

    // Modificar los registros de memoria
    mdEstructura.Filtered := False;
    mdEstructura.BookMark := Llave1;
    mdEstructura.Edit;
    mdEstructura.FieldByName('iColumna').AsInteger := StringGrid2.Row + 1;
    mdEstructura.Post;

    if Llave2 <> Nil then
    Begin
      mdEstructura.BookMark := Llave2;
      mdEstructura.Edit;
      mdEstructura.FieldByName('iColumna').AsInteger := StringGrid2.Row + 2;
      mdEstructura.Post;
    End;
    PonerTitulos(False, StringGrid2.Row - 1, StringGrid2.Row);
  End;
end;

procedure TfrmSelectSheet.Button2Click(Sender: TObject);
Var
  xRen: Integer;
  Val1: String;
  Llave1, Llave2: TBookMark;
begin
  // Modificar la columna
  if StringGrid2.Row < StringGrid2.RowCount - 1 then
  Begin
    mdEstructura.Filtered := False;
    nColumna := StringGrid2.Row + 1;
    mdEstructura.Filtered := True;
    mdEstructura.First;
    Llave1 := mdEstructura.BookMark;

    mdEstructura.Filtered := False;
    nColumna := StringGrid2.Row + 2;
    mdEstructura.Filtered := True;
    mdEstructura.First;
    if mdEstructura.Eof then
      Llave2 := Nil
    else
      Llave2 := mdEstructura.BookMark;

    xRen := StringGrid2.Row;
    Val1 := StringGrid2.Cells[1,xRen + 1];

    StringGrid2.Cells[1,xRen + 1] := StringGrid2.Cells[1,xRen];

    StringGrid2.Cells[1,xRen] := Val1;

    StringGrid2.Row := xRen + 1;

    // Modificar los registros de memoria
    mdEstructura.Filtered := False;
    mdEstructura.BookMark := Llave1;
    mdEstructura.Edit;
    mdEstructura.FieldByName('iColumna').AsInteger := StringGrid2.Row + 1;
    mdEstructura.Post;

    if Llave2 <> Nil then
    Begin
      mdEstructura.BookMark := Llave2;
      mdEstructura.Edit;
      mdEstructura.FieldByName('iColumna').AsInteger := StringGrid2.Row;
      mdEstructura.Post;
    End;
    PonerTitulos(False, StringGrid2.Row - 1, StringGrid2.Row);
  End;
end;

procedure TfrmSelectSheet.PonerTitulos(Inicial: Boolean; Ini, Fin: Integer);
Var
  Rango: Variant;
  Cad: String;
  Cta, nRen: Integer;
Begin
  Rango := Excel.ActiveSheet;
  for Cta := 0 to Excel.ActiveSheet.UsedRange.Columns.Count - 1 do
  Begin
    mdEstructura.Filtered := False;
    nColumna := Cta + 1;
    mdEstructura.Filtered := True;

    if mdEstructura.Eof then
      Cad := ''
    Else
    Begin
      mdEstructura.RecNo := Cta + 1;
      Cad := mdEstructura.FieldByName('sNombre').AsString;
    End;

    if Inicial then
    Begin
      StringGrid1.ColWidths[Cta + 1] := Rango.Columns[Cta + 1].ColumnWidth * 10;
      StringGrid1.Cells[Cta + 1,0] := '[' + ColumnaNombre(Cta + 1) + '] ' + Cad;
      for nRen := 1 to StringGrid1.FixedRows do
        StringGrid1.Cells[Cta,nRen] := '';
    End
    Else
      StringGrid1.Cells[Cta + 1,0] := '[' + ColumnaNombre(Cta + 1) + '] ' + Cad;
  End;
End;

procedure TfrmSelectSheet.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  Begin
    StringGrid1.FixedRows := 2;
    AltoTitulo := StringGrid1.RowHeights[0] + StringGrid1.RowHeights[1];
  End
  else
  Begin
    StringGrid1.FixedRows := 1;
    AltoTitulo := StringGrid1.RowHeights[0];
  End;
end;

function CuentaCaracteres(Cadena: String; Car: Char): Integer;
Var
  Cta, Cta2: Integer;
Begin
  Cta := 0;
  Cta2 := 0;
  while Cta < Length(Cadena) do
  Begin
    Inc(Cta);
    if Cadena[Cta] = Car then
      Inc(Cta2);
  End;
  Result := Cta2;
End;

procedure TfrmSelectSheet.ComboBox1Change(Sender: TObject);
Var
  Ren, Cta, Col, MaxRen: Integer;
  CadenaFormato, CadenaValor: String;
begin
  // Seleccionar la hoja adecuada
  Excel.Sheets.Item[Combobox1.ItemIndex + 1].Select;
  StringGrid1.RowCount := 2;
  StringGrid1.ColCount := Excel.ActiveSheet.UsedRange.Columns.Count + 1;

  PonerTitulos(True, 1, StringGrid1.ColCount);

  Ren := 1;
  Cta := 0;
  MaxRen := Excel.ActiveSheet.UsedRange.Rows.Count;
  if MaxRen > 100 then
    MaxRen := 100;
  StringGrid1.RowCount := MaxRen + 1;
  ProgressBar1.Min := 0;
  ProgressBar1.Position := 0;
  ProgressBar1.Max := MaxRen;
  ProgressBar1.Visible := True;
  while Ren <= MaxRen do
  Begin
    ProgressBar1.Position := ProgressBar1.Position + 1;

    StringGrid1.Cells [0,Ren] := IntToStr(Ren);
    for Col := 0 to Excel.ActiveSheet.UsedRange.Columns.Count - 1 do
    Begin
      CadenaFormato := Excel.ActiveSheet.Range[ColumnaNombre(Col + 1) + Trim(IntToStr(Ren)), ColumnaNombre(Col + 1) + Trim(IntToStr(Ren))].NumberFormat;
      // Verificar si se trata de una fecha
      if CuentaCaracteres(CadenaFormato, '/') = 2 then
      Begin
        // Tratar de convertir la cadena en fecha
        Try
          CadenaValor := DateToStr(Excel.WorkBooks.ActiveSheet.Range[ColumnaNombre(Col + 1) + Trim(IntToStr(Ren)), ColumnaNombre(Col + 1) + Trim(IntToStr(Ren))].Value2);
        Except
          CadenaValor := Excel.WorkBooks.ActiveSheet.Range[ColumnaNombre(Col + 1) + Trim(IntToStr(Ren)), ColumnaNombre(Col + 1) + Trim(IntToStr(Ren))].Value2;
        End;
      End
      Else
        CadenaValor := Excel.ActiveSheet.Range[ColumnaNombre(Col + 1) + Trim(IntToStr(Ren)), ColumnaNombre(Col + 1) + Trim(IntToStr(Ren))].Value2;

      StringGrid1.Cells[Col + 1, Ren] := CadenaValor;
    End;

    Inc(Ren);
  End;
  ProgressBar1.Visible := False;
  ProgressBar1.Position := 0;

  if StringGrid1.RowCount - Cta > 1 then
    StringGrid1.RowCount := StringGrid1.RowCount - Cta;
end;

procedure TfrmSelectSheet.FormShow(Sender: TObject);
begin
  NumErr := 20;
  Edit1.Text := IntToStr(NumErr);
  
  Caption := Caption + ' - ' + Excel.ActiveWorkbook.Name;
  StringGrid2.ColWidths[1] := 100;
  Factor2 := Button2.Top / Panel13.Height;
  AltoTitulo := StringGrid1.RowHeights[0];

  Combobox1.ItemIndex := 0;
  Combobox1.OnChange(Sender);
end;

procedure TfrmSelectSheet.Panel10MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  GetCursorPos(xPanelPos);
  Panel7.Tag := 1;
  PanelPos := xPanelPos;
end;

procedure TfrmSelectSheet.Panel10MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel7.Tag := 0;
end;

procedure TfrmSelectSheet.Panel13Resize(Sender: TObject);
begin
  Button2.Top := Trunc(Panel13.Height * Factor2);
  Button1.Top := Button2.Top - Button1.Height - 10;
end;

procedure TfrmSelectSheet.ReordenarColumnas1Click(Sender: TObject);
Var
  Cta: Integer;
begin
  if Self.Width > Panel7.Width - 26 then
    Panel7.Left := 10
  else
    Panel7.Left := 0;
  Panel7.Top := Trunc(Panel3.Height / 2);
  if Self.Height - GetSystemMetrics(SM_CYCAPTION) - 10 - Trunc(Panel3.Height / 2) - Trunc(Panel2.Height / 2) > Panel7.Height then
    Panel7.Height := Self.Height - GetSystemMetrics(SM_CYCAPTION) - 10 - Trunc(Panel3.Height / 2) - Trunc(Panel2.Height / 2);

  Button2.Top := Trunc(Panel13.Height * Factor2);
  Button1.Top := Button2.Top - Button1.Height - 10;

  StringGrid2.RowCount := StringGrid1.ColCount - 1;
  Cta := 1;
  While Cta < StringGrid1.ColCount Do
  Begin
    StringGrid2.Cells[0,Cta - 1] := ColumnaNombre(Cta);
    mdEstructura.Filtered := False;
    nColumna := Cta;
    mdEstructura.Filtered := True;
    mdEstructura.First;

    if not mdEstructura.eof then
      StringGrid2.Cells[1,Cta - 1] := mdEstructura.FieldByName('sNombre').AsString
    else
      StringGrid2.Cells[1,Cta] := '';

    Inc(Cta);
  End;

  Panel3.Enabled := False;
  Panel7.Visible := True;
end;

procedure TfrmSelectSheet.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  Begin
    if Y < AltoTitulo then
    Begin
      // Activar el menu de opciones para cabecera
      PopupMenu1.Popup(Self.Left + X, Self.Top + Panel3.Height + GetSystemMetrics(SM_CYCAPTION) + Y);
    End;
  End;
end;

procedure TfrmSelectSheet.Timer1Timer(Sender: TObject);
begin
  // Verificar si se debe mover la ventana de la fuente del insumo
  if Panel7.Tag <> 0 then
  Begin
    GetCursorPos(xPanelPos);

    if PanelPos.X > xPanelPos.X then
    Begin
      If Panel7.Left - (PanelPos.X - xPanelPos.X) > 0 Then
        Panel7.Left := Panel7.Left - (PanelPos.X - xPanelPos.X);
    End
    Else
      if Panel7.Left + (xPanelPos.X - PanelPos.X) < Self.Width - Panel7.Width then
        Panel7.Left := Panel7.Left + (xPanelPos.X - PanelPos.X);

    if PanelPos.Y > xPanelPos.Y then
    Begin
      if Panel7.Top - (PanelPos.Y - xPanelPos.Y) > 10 then
        Panel7.Top := Panel7.Top - (PanelPos.Y - xPanelPos.Y)
      else
      Begin
        SetCursorPos(PanelPos.X, PanelPos.Y);
        xPanelPos := PanelPos;
      End;
    End
    Else
    Begin
      if Panel7.Top + (xPanelPos.Y - PanelPos.Y) < Self.Height - Panel7.Height then
        Panel7.Top := Panel7.Top + (xPanelPos.Y - PanelPos.Y)
      else
      Begin
        SetCursorPos(PanelPos.X, PanelPos.Y);
        xPanelPos := PanelPos;
      End;
    End;

    PanelPos := xPanelPos;
  End;
end;

procedure TfrmSelectSheet.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button = btPrev then
  Begin
    if NumErr > 1 then
      Dec(NumErr);
  End
  Else
    if NumErr < Excel.WorkBooks.ActiveSheet.UsedRange[1].Rows.Count then
      Inc(NumErr);
  Edit1.Text := IntToStr(NumErr);
end;

end.
