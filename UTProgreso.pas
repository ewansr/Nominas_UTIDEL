unit UTProgreso;

interface
uses Classes,Windows,SysUtils,NxGrid,DSProxy,DB;

type
    TProgreso = class(TThread)
    public
        GridNx:^TNextGrid;
        iPorcentaje: Integer;
        Identificador:INteger;
        FileOrigen:TFileName;
        FileDestino:TFileName;
        Renglon:Integer;
        RetStream: TStream;
        Mem: TMemoryStream;
        Size: Int64;
        proxy:TDSAdminClient;
        procedure Execute; override;
        destructor Destroy;override;
        procedure ActualizarPantalla;
  end;

implementation

{ TProgreso }

destructor TProgreso.Destroy;
begin

  if GetCurrentThreadId <> ThreadId then
  begin
    Terminate;
    while Suspended do
      Resume;
    WaitFor;
  end;

  try
      try
         FreeAndNIl(Mem);
         FreeAndNIl(RetStream);
      except
            on e:Exception do
           // ShowMessage(e.ClassName +  ', ' + e.Message);
      end;
  finally
         try
            FreeAndNil(proxy);
         except

         end;
  end;

  inherited Destroy;

end;

procedure TProgreso.Execute;
var
    Buffer: PByte;
    BufSize: Integer;
    BytesRead: Integer;
    DocumentId: Int64;
begin
     inherited;
     BufSize := 1024;
     FreeOnTerminate:=True;
     GetMem(Buffer, BufSize );
     while not Terminated do
     begin
          BytesRead := RetStream.Read( Pointer( Buffer )^, BufSize );
          if ( BytesRead > 0 ) then
          begin
               Mem.WriteBuffer( Pointer( Buffer )^, BytesRead );
          end;
          iPorcentaje:=Trunc((Mem.Size * 100) / size);
          Synchronize(ActualizarPantalla);
     end;

     try
        if ( Size = Mem.Size ) then
        begin
           Mem.SaveToFile(FileDestino);
           GridNx^.Cell[2,Renglon].asString:='Abrir Carpeta';
           GridNx^.repaint;
        end;
     finally
            //FreeMem(Buffer,BufSize);
            DisposeMem(Buffer,BufSize);
            GridNx^.DoubleBuffered:=False;
     end;
end;

procedure TProgreso.ActualizarPantalla;
begin
    GridNx^.Cell[1,Renglon].asINteger:=iPorcentaje;
    GridNx^.repaint;
    if (iPorcentaje = 100) or ( AnsiCompareText(GridNx^.Cell[2,Renglon].AsString,'Cancelado')=0) then
    begin
       Terminate;
       if (AnsiCompareText(GridNx^.Cell[2,Renglon].AsString,'Cancelado')=0)  then
       begin
            GridNx^.Cell[1,Renglon].asINteger:=0;
            GridNx^.repaint;
       end;
    end;
end;

end.
