unit unitmanejofondo;
interface
 uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, toolwin,ExtCtrls,jpeg,StrUtils, JvBackgrounds, ExtDlgs, StdCtrls,inifiles,ComCtrls,
  Menus;
 procedure muestrafondo( fond :tjvbackground; patima, tipo:string);
 procedure modofondo( fond :tjvbackground;modo:string; dirini:string);
 function leeini(dirini:string):string;
 function escribeini(dirini:string; buscaimagen: topendialog):string;
 function escribeiniDefault(dirini:string;modo:string):string;
 var estadoglobal,patglobal, imapatglobal:string;
implementation

 function escribeiniDefault(dirini:string;modo:string):string;
var ini:tinifile;
pathimagen:string;
 begin
      pathimagen:='';
  //añadir ini
   ini := TIniFile.Create(dirini);
ini.WriteString ('Configuración', 'wallpaper', pathimagen);
ini.WriteString ('Configuración', 'estado',modo);
ini.free;
escribeinidefault:='si';

 end;
function escribeini(dirini:string; buscaimagen: topendialog):string;
var ini:tinifile;
pathimagen:string;
begin
buscaimagen.Filter:='Fotografia|*.jpg|Imagen|*.bmp';
if buscaimagen.Execute then
   begin
   //lee path y la imagen
      pathimagen:=(buscaimagen.FileName);
  //añadir ini
   ini := TIniFile.Create(dirini);
ini.WriteString ('Configuración', 'wallpaper', pathimagen);
ini.free;
escribeini:='si';
    end
      else
      begin
//      ShowMessage('Abrir archivo se a cancelado');
      escribeini:='no';
      end;
end;


function leeini(dirini:string):string;
var i:integer;
ini:tinifile;
validarpath:string;
bueno:boolean;
bueno2:boolean;
pathimagen:string;
 begin
  if FileExists(dirini) then  //verifica si existe
  begin
   ini := TIniFile.Create(dirini);
   imapatglobal:=ini.ReadString ('Configuración', 'wallpaper',imapatglobal);
   estadoglobal:=ini.ReadString ('Configuración', 'estado',estadoglobal);
   //verificar si la path esta bien
   bueno:=(AnsiEndsText('.jpg', imapatglobal ));
   bueno2:=(AnsiEndsText('.bmp', imapatglobal ));
     if   (bueno= true) or (bueno2=true) then
     begin
     //verificar q el archivo exista
       if FileExists(imapatglobal) then
       begin
       leeini:=imapatglobal;
       end
     else
     begin
      leeini:='no';// ShowMessage('la image no existe, cargue un fondo');
     end;
  end
  else
  begin
    leeini:='no'; //ShowMessage('path mala, cargue un nuevo fondo');
  end;
   ini.free;
 end
  else
  leeini:='no';
end;

procedure modofondo( fond :tjvbackground;modo:string;dirini:string);
var ini:tinifile;
begin
  if FileExists(dirini) then  //verifica si existe
  begin
   ini := TIniFile.Create(dirini);
   ini.WriteString ('Configuración', 'estado', modo);
   ini.free;
 if modo='bmCenter' then
  fond.Image.Mode:=bmCenter;
 if modo='bmStretch' then
  fond.Image.Mode:=bmStretch;
 if modo='bmTile' then
  fond.Image.Mode:=bmTile;
  end;
end;


procedure muestrafondo( fond :tjvbackground; patima, tipo:string);
 begin
  if tipo='bmCenter' then
  begin
  fond.Image.Mode:=bmCenter;
  fond.Image.Picture.LoadFromFile(patima);
  end;
  if tipo='bmStretch' then
  begin
  fond.Image.Mode:=bmStretch;
  fond.Image.Picture.LoadFromFile(patima);
  end;
    if tipo='bmTile' then
  begin
  fond.Image.Mode:=bmTile;
  fond.Image.Picture.LoadFromFile(patima);
  end;
 end;


end.
