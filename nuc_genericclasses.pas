unit nuc_genericclasses;

interface

uses
  DBClient, xDatabase, Classes, ClientModuleUnit1, UTFrmCatalogo, UInteliDialog,
  Dialogs, SysUtils, Forms, jpeg, GifImage, Graphics, FrxClass, DB, DateUtils,
  Variants;

type
  TWord = record
            case Boolean of
              true: (LowByte,
                    HighByte: Byte);
             false: (MergedWord: Word);
          end {TWord};

  TLongInt = record
               case Boolean of
                 True: (LWLoByte,
                        LWHiByte,
                        HWLoByte,
                        HWHiByte: Byte);
                False: (LoWord: Word;
                        HiWord: Word);
             end {TLongInt};



function BuscarEnCatalogo(Codigo: string; CatalogForm: TComponentClass; CatalogTable, CodigoCampo: string): TLista;
function ObtenerRegistroXId(Tabla,CampoId: string; Id: Integer; Tipo: string = ccCatalog): TLista;
function ALL2BMP(AStream: TMemoryStream): TMemoryStream;
procedure ImprimeReporte(NombreReporte: String; Reporte: TFrxReport; Encabezado: Boolean);
function xxIntToLletres(Valor: LongInt): string;
function xIntToLletres(Numero: LongInt): string;
function xNumerosToLletres(Numero: currency): string;
function CopiaEstructuraDataset(Origen, Destino: Tclientdataset; AutoLlenado: Boolean = False):boolean;
function CopiarDatosDataset(OrigenD, DestinoD: Tclientdataset):boolean;
function DateTimetoStrSql(fecha: tdate):String;

implementation

// Buscar un artículo según el código en el catalogo
function BuscarEnCatalogo(Codigo: string; CatalogForm: TComponentClass; CatalogTable, CodigoCampo: string): TLista;
Var
  cdCatalogo: TClientDataSet;
  regresa: TLista;
  frm: TFrmCatalogo;
begin
  try
    try
      regresa := nil;
      if CompareStr(TRIM(StringReplace(Codigo,'%','',[rfReplaceAll])), '') <> 0 then
      begin
        cdCatalogo := TClientDataSet.Create(nil);
        CrearConjunto(cdCatalogo,CatalogTable,ccCatalog);
        CargarDatosFiltrados(cdCatalogo,CodigoCampo,[Codigo]);
        cdCatalogo.Open;
        // Si se obtiene un solo registro, devolverlo
        if cdCatalogo.RecordCount = 1 then
        begin
          cdCatalogo.First;
          regresa := GetCurrentRecord(cdCatalogo);
        end;
        cdCatalogo.Close;
        EliminarConjunto(cdCatalogo);
        cdCatalogo.Free;
      end;
      if not Assigned(regresa) then
      begin
      // No se encontró o se encontraron varios, mostrar la pantalla de catalogo
        Application.CreateForm(CatalogForm, frm);
        regresa := frm.SeleccionarItem;
      end;
    finally
      Try
        frm.Free;
      except
        ;
      end;
    end;
  except
    on e: exception do
    begin
      InteliDialog.ShowModal('Error al leer en el catalogo de datos',e.message,mtError,[mbOK], 0);
      regresa := nil;
    end;
  end;
  result := regresa;
end;

function ALL2BMP(AStream: TMemoryStream): TMemoryStream;
var
  Jp: TJPegImage;
  ic: TIcon;
  gf: TGIFImage;
  LocBitMap: TBitMap;
  bf: TLongInt;
  bf2: TWord;
  Resultado: TMemoryStream;
begin
  AStream.Seek(0, soFromBeginning);
  if AStream.Read(bf,4) > 0 then
  begin
    AStream.Seek(0, soFromBeginning);
    case bf.LoWord of
      $4D42: begin     // BMP
        Resultado := AStream;
      end;
      $0000: begin   // icono
        Resultado := TMemoryStream.Create;
        ic := TIcon.Create;
        ic.LoadFromStream(AStream);
        LocBitMap := TBitMap.Create;
        LocBitMap.Assign(ic);
        LocBitMap.SaveToStream(Resultado);
        Resultado.LoadFromStream(Resultado);
        LocBitMap.Free;
      end;
      $0001,$CDD7: ;        // WMF
      $4947: begin   // GIF
        Resultado := TMemoryStream.Create;
        gf := TGifImage.Create;
        gf.LoadFromStream(AStream);
        LocBitMap := TBitMap.Create;
        LocBitMap.Assign(gf);
        LocBitMap.SaveToStream(Resultado);
        Resultado.LoadFromStream(Resultado);
        LocBitMap.Free;
      end;
      $D8FF: begin   // JPG
        Resultado := TMemoryStream.Create;
        Jp := TJPegImage.Create;
        Jp.LoadFromStream(AStream);
        LocBitMap := TBitMap.Create;
        LocBitMap.Assign(Jp);
        LocBitMap.SaveToStream(Resultado);
        Resultado.LoadFromStream(Resultado);
        LocBitMap.Free;
      end
    end;
    result := Resultado;
  end;
end;

function ObtenerRegistroXId(Tabla,CampoId: string; Id: Integer; Tipo: string = ccCatalog): TLista;
Var
  cd: TClientDataSet;
begin
  try
    cd := TClientDataSet.Create(nil);
    CrearConjunto(cd,Tabla,Tipo);
    CargarDatosFiltrados(cd,CampoId,[Id]);
    cd.Open;
    if cd.RecordCount = 1 then
    begin
      cd.First;
      result := GetCurrentRecord(cd);
    end
    else
      result := nil;
  finally
    if cd.Active then
    begin
      cd.Close;
      EliminarConjunto(cd);
    end;
    cd.Free;
  end;
end;

procedure ImprimeReporte(NombreReporte: String; Reporte: TFrxReport; Encabezado: Boolean);
begin
  if Not FileExists(ExtractFilePath(Application.ExeName) + '\Reportes\' + NombreReporte) then
  begin
    InteliDialog.ShowModal('No he podido localizar el el formato básico para la generación de este reporte:',
                           ExtractFilePath(Application.ExeName)+'\Reportes\' + NombreReporte + #10 + #10 +
                           '¿Desea que le ayude a tratar de localizar el archivo en otra ubicación dentro de este equipo?', mtError, [mbYes,mbNo], 0);
    Exit;
  end;

  Reporte.PreviewOptions.MDIChild := False ;
  Reporte.PreviewOptions.Modal := True ;
  Reporte.PreviewOptions.ShowCaptions := False ;
  Reporte.Previewoptions.ZoomMode := zmPageWidth ;
  Reporte.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Reportes\'+NombreReporte) ;
  Reporte.ShowReport(False);
end;

//**************************************************************
// FUNCION DEL INTELIGENT PARA MANEJAR LOS NUMEROS A TEXTO
//**************************************************************

function xxIntToLletres(Valor: LongInt): string;
const
  aUnitat: array[1..15] of string = ('UN', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS',
    'SIETE', 'OCHO', 'NUEVE', 'DIEZ', 'ONCE', 'DOCE',
    'TRECE', 'CATORCE', 'QUINCE');
  aCentena: array[1..9] of string = ('CIENTO', 'DOSCIENTOS', 'TRESCIENTOS',
    'CUATROCIENTOS', 'QUINIENTOS', 'SEISCIENTOS',
    'SETECIENTOS', 'OCHOCIENTOS', 'NOVECIENTOS');
  aDecena: array[1..9] of string = ('DIECI', 'VEINTI', 'TREINTA', 'CUARENTA', 'CINCUENTA',
    'SESENTA', 'SETENTA', 'OCHENTA', 'NOVENTA');
var
  Centena, Decena, Unitat, Doble: LongInt;
  Linea: string;
begin
  if valor = 100 then Linea := ' CIEN ' {Maximo Valor sera 999, ejemplo con 123}
  else begin
    Linea := '';
    Centena := Valor div 100; {1 }
    Doble := Valor - (Centena * 100); {23}
    Decena := (Valor div 10) - (Centena * 10); {2 }
    Unitat := Valor - (Decena * 10) - (Centena * 100); {3 }
    if Centena > 0 then Linea := Linea + Acentena[centena] + ' ';
    if Doble > 0 then begin
      if Doble = 20 then Linea := Linea + ' VEINTE '
      else begin
        if doble < 16 then Linea := Linea + Aunitat[Doble]
        else begin
          Linea := Linea + ' ' + Adecena[Decena];
          if (Decena > 2) and (Unitat <> 0) then Linea := Linea + ' Y ';
          if Unitat > 0 then Linea := Linea + Aunitat[Unitat];
        end;
      end;
    end;
  end;
  Result := Linea;
end;

//**************************************************************
// FUNCION AUXILIAR PARA PASAR LOS NUMEROS A TEXTO
//**************************************************************
function xIntToLletres(Numero: LongInt): string;
var
  Millions, mils, unitats: Longint;
  Linea: string;
begin
     {Inicializamos el string que contendra las letras segun el valor numerico}
  if numero = 0 then Linea := 'CERO'
  else if numero < 0 then Linea := 'MENOS '
  else if numero > 0 then Linea := '';
     {Determinamos el Nº de millones, miles, i unidades de numero en positivo}
  Numero := Abs(Numero);
  millions := numero div 1000000;
  mils := (numero - (millions * 1000000)) div 1000;
  unitats := numero - ((millions * 1000000) + (mils * 1000));
     {Vamos poniendot en el string las cadenas de los numeros(llamando a subfuncion)}
  if millions = 1 then Linea := Linea + ' UN MILLON '
  else if millions > 1 then Linea := Linea + xxIntToLletres(millions) + ' MILLONES ';
  if mils = 1 then Linea := Linea + ' MIL '
  else if mils > 1 then Linea := Linea + xxIntToLletres(mils) + ' MIL ';
  if unitats > 0 then Linea := Linea + xxIntToLletres(unitats);
  xIntToLletres := Linea;
end;

//******************************************************************************
// Funcion para convertir numeros currency a texto con el formato de monedas
//******************************************************************************

function xNumerosToLletres(Numero: currency): string;
Var
  iEntero  : Longint ;
  iDecimal : Longint ;
begin
  iEntero := trunc(Numero) ;
  iDecimal := Trunc(Frac(Numero)*100)  ;
  result :=  xIntToLletres(iEntero) + ' PESOS ' ;
  if iDecimal > 0 then
      result := result + IntToStr(iDecimal) + '/100 M.N. '
  Else
      result := result + '00/100 M.N. ' ;
end;

function CopiaEstructuraDataset(Origen, Destino: Tclientdataset;
  AutoLlenado: Boolean):boolean;
var
  x: integer;
  Resultado: boolean;
begin
  try
    Destino.Fields.Clear;
    Destino.FieldDefs.Clear;
    Destino.Close;

    for x := 0 to Origen.FieldCount-1 do
    begin
      Destino.FieldDefs.Add(Origen.FieldDefs.Items[x].Name,Origen.FieldDefs.Items[x].DataType,Origen.FieldDefs.Items[x].Size,False);
    end;

    try
      Destino.CreateDataSet;
    except
     ;
    end;

    if Destino.State <> dsBrowse then
      Destino.Open;

    Resultado := Destino.fieldcount = origen.fieldcount;

    if AutoLlenado then
    begin

      Resultado := CopiarDatosDataset(Origen, Destino);
    end;
    Result := Resultado;
  except
    result := false;
  end;
end;

function CopiarDatosDataset(OrigenD, DestinoD: Tclientdataset):boolean;
var
  x: integer;
begin
  try
    OrigenD.first;
    DestinoD.EmptyDataSet;
    while not OrigenD.eof do
    begin
      with OrigenD do begin
        DestinoD.Append;
        for x := 0 to FieldCount-1 do
        begin
          DestinoD.fieldvalues[OrigenD.FieldDefs.Items[x].Name] := OrigenD.Fieldvalues[OrigenD.FieldDefs.Items[x].Name];
        end;
          DestinoD.Post;
       end;
      OrigenD.next;
    end;
    Result := true;
  except
    Result := false;
  end;
end;

function DateTimetoStrSql(fecha: tdate):String;
var
  dia,mes,año,hora,minuto,segundos: String;
  wAnyo, wMes, wDia,wHora,wMinuto,wSegundos,wmili: Word;
begin
   Result := '';
  Try
    DecodeDatetime( Fecha, wAnyo, wMes, wDia,whora,wMinuto,wSegundos,wmili );
    dia := vartostr(wDia);
    mes := vartostr(wMes);
    año := vartostr(wAnyo);
    hora :=  vartostr(wHora);
    Minuto :=  vartostr(wMinuto);
    Segundos:=  vartostr(wSegundos);

    if Length(dia) < 2 then
      dia := '0' + dia;
    if Length(mes) < 2 then
      mes := '0' + mes;
    if Length(hora) < 2 then
      hora := '0' + hora;
    if Length(minuto) < 2 then
      minuto := '0' + minuto;
    if Length(segundos) < 2 then
      segundos := '0' + segundos;

    Result := año+'/'+mes+'/'+dia+' '+hora+':'+minuto+':'+segundos;
  Except
    on e:exception do
      InteliDialog.ShowModal('Error al formatear fecha.',e.message, mtError, [mbOk], 0);
  End;
end;

end.
