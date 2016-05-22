unit ExBarClasses;

interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls;

type TProc = procedure of object;

Type
  TProcedure = class
    Procedimiento: TProc ;
    constructor Create(proc: TProc);
    destructor Destroy;
  end;

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

   TLineBar = class
     Caption: TCaption;
     Color: TColor;
     FontStyle: TFontStyles;
     WordWrap: boolean;
   end;

   TListaLineBar = class
     Lista : TList;
     procedure Add(Caption: TCaption; Color: TColor;FontStyle: TFontStyles; WordWrap: boolean);
     constructor Create;
     destructor Destroy;
   end;

   TStringListX = class(TStringList)
     procedure Add(Id: integer; Proc: TProc); overload;
     procedure Run (Id: integer);
   end;


implementation

//******* DEFINICION DE CLASE AUXILIAR PARA PROCEDIMIENTOS   */
constructor TProcedure.Create(proc: TProc);
begin
  Procedimiento := proc;
end;

destructor TProcedure.Destroy;
begin
  procedimiento := nil;
end;
//*********************************************************


//******* DEFINICION DE CLASE DE LISTA PARA OBJETOS DEL SEGUNDO GRUPO EN LA BARRA LATERAL
constructor TListaLineBar.Create;
begin
  Lista := TList.Create;
end;

destructor TListaLineBar.Destroy;
begin
  while Lista.Count > 0 do
    Lista[0] := nil;
end;

procedure TListaLineBar.Add(Caption: TCaption; Color: TColor; FontStyle: TFontStyles; WordWrap: Boolean);
Var
  x: TLineBar;
begin
  x := TLineBar.Create;
  x.Caption := Caption;
  x.Color := Color;
  x.FontStyle := FontStyle;
  x.WordWrap := WordWrap;
  Lista.Add(x);
end;
//************************************


//******* DEFINICION DE ELEMENTOS PARA LA CLASE TSTRINGLISTX
procedure TStringListX.Add(Id: integer; Proc: TProc);
Var
  IdStr: String;
begin
  IdStr := IntToStr(Id);
  // Primero localizar si ya existe, para en ese caso sol remplazar el procedimiento
  if self.IndexOf(IdStr) > 0 then
    self.Objects[self.IndexOf(IdStr)] := TProcedure.Create(Proc)
  else
    self.AddObject(IdStr,TProcedure.Create(Proc));
end;


procedure TStringListX.Run(Id: Integer);
Var
  IdStr: String;
begin
  IdStr := IntToStr(Id);
  if self.IndexOf(IdStr) >= 0 then
  begin
    if assigned(self.Objects[self.IndexOf(IdStr)]) then
      TProcedure(self.Objects[self.IndexOf(IdStr)]).Procedimiento;   // Ejecutar el procedimiento
  end;
end;

//*********************************************


end.
