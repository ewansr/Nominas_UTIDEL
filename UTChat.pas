unit UTChat;

interface
uses Controls,StdCtrls,ExtCtrls,Classes,SysUtils,ShellAPI,Forms,Graphics,
     AdvPanel,JvRichEdit,ToolPanels,NxColumnClasses,NxCustomGrid,NxGrid,
     Windows,NxCustomGridControl,NxColumns,Messages,UTCallbacksItems,
     Dialogs,DSProxy,DbxJSON,DBXCommon;

Type
    TProcedureDownload=Procedure (var Grid: TNextGrid; Renglon: Integer; PLinkItem: TLInkItem;const PListaHilos: TStringList);

    TFunctionValida=Function (var PLITem:TCallbackClient):Boolean;

    TpFormatMsj=(TpFUserL,TpFUserR,TpFmsjL,TpFmsjR,TpDownload);

    TPnlChat=class(TJvRichEdit)
    private
           FObjectsToLink: TStringList;
           FControlFiles:TstringList;
           FListaHilos:TStringList;
           SaveFileDialog:TSaveDialog;
           FColorUserRemote:TColor;
           FColorMsjRemote:TColor;
           FColorUserLocal:TColor;
           FColorMsjLocal :TColor;
    public
          constructor Create(AOwner: TComponent); override;
          destructor Destroy;
          Function AddFormat(const Linea:string;Formatomsj:TpFormatMsj;lLInkItem:TLInkItem=nil;IdLineFile:String=''):Integer;
          property ObjectsToLink:TStringList read FObjectsToLink write FObjectsToLink;
          property ListaHilos:TStringList read FListaHilos write FListaHilos;
          property ColorUserRemote:TColor read FcolorUserRemote;
          property ColorMsjRemote:TColor read FColorMsjRemote;
          property ColorUserLocal:TColor read FcolorUserLocal;
          property ColorMsjLocal:TColor read FColorMsjLocal;
    end;



  TChat = class
        MainPanel: TAdvPanel;
        LocChat:TPnlChat;
        LocSplitter: TSplitter;
        LocEncabezado: TAdvPanel;
        ATPnlDownload:TAdvToolPanel;
        LocPanel: TAdvPanel;
        LocMsg: TMemo;
        pnlDownload:TNextGrid;
        FFunctionValida: TFunctionValida;
        FProcedureDownload:TProcedureDownload;

  private
         FIdUsuario: String;
         FIdUsuarioLocal:string;
         FClientSession:string;
         FConnection: TDBXConnection;
         function ClientNotify(const AChannel, ACallback, AClient, ASession, AType,ACode,AFrom: string; const AMessage: string): Boolean;
  public
        Constructor Create(Sender: TWinControl; Identificador: String;PConnection: TDBXConnection;PnlStyler:TAdvPanelStyler=nil);
        Destructor Destroy;
        procedure LocMsgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure LocMsgKeyPress(Sender: TObject; var Key: Char);
        procedure CellClick(Sender: TObject; ACol, ARow: Integer);
        Procedure MiURLClick(Sender: TObject; const URLText: string;Button: TMouseButton);
        procedure SetParametrosSesion(IdUserLocal,IdSesion:string);
        procedure InicializarMetodos(PFunctionValida: TFunctionValida;PProcedureDownload:TProcedureDownload=nil);
        property IdUsuario:string read FIdUsuario write FIdUsuario;
        property IdUsuarioLocal:string read FIdUsuarioLocal;
        property ClientSession:string read FClientSession;
  end;



implementation

constructor TPnlChat.Create(AOwner: TComponent);
begin
     inherited Create(AOwner);
     FObjectsToLink := TStringList.Create;
     FControlFiles:=TStringList.Create;
     FColorUserRemote:=clBlue;
     FColorMsjRemote:=clBlack;
     FColorUserLocal:=clGrayText;
     FColorMsjLocal :=clBlack;
     SaveFileDialog:=TSaveDialog.Create(AoWner);
end;

destructor TPnlChat.Destroy;
begin
     FObjectsToLink.Destroy;
     FControlFiles.Destroy;
     SaveFileDialog.Destroy;
     inherited Destroy;
end;

function TPnlChat.AddFormat(const Linea: string; Formatomsj: TpFormatMsj;lLInkItem:TLInkItem=nil;IdLineFile:String=''):Integer;
var
   sLineaFormat:string;
   posLine,PosChar,IposSearch:Integer;

begin
    posLine:=0;
    sLineaFormat:=Linea;
    PosChar:=Self.GetTextLenEx;

    with Self do
    begin

         posLine:=Lines.Add(Linea);
         SelStart:=PosChar;
         SelLength:=Length(linea);
         SelAttributes.Name:='Arial';
         case Formatomsj of
              TpFUserL:  begin
                               SelAttributes.Size := 9;
                               SelAttributes.Color:=FColorUserLocal;
                               if not ( fsBold in SelAttributes.style) then
                                  SelAttributes.style := SelAttributes.style + [fsBold];
                               Paragraph.LineSpacingRule:=lsOneAndHalf;
                         end;
              TpFUserR:  begin
                              SelAttributes.Size:=9;
                              SelAttributes.Color:=FColorUserRemote;
                              if not ( fsBold in SelAttributes.style) then
                                 SelAttributes.style := SelAttributes.style + [fsBold];
                              Paragraph.LineSpacingRule:=lsOneAndHalf;
                         end;
              TpFmsjL:   begin
                              SelAttributes.Size:=8;
                              SelAttributes.Color:=FColorMsjLocal;
                              if ( fsBold in SelAttributes.style) then
                                 SelAttributes.style := SelAttributes.style - [fsBold];
                              Paragraph.LineSpacingRule:=lsOneAndHalf;
                         end;
              TpFmsjR:   begin
                              SelAttributes.Size:=8;
                              SelAttributes.Color:=FColorMsjRemote;
                              if ( fsBold in SelAttributes.style) then
                                  SelAttributes.style := SelAttributes.style - [fsBold];
                              Paragraph.LineSpacingRule:=lsOneAndHalf;
                         end;
              TpDownload:begin
                              ObjectsToLink.AddObject(IntToStr(posLine),lLInkItem);
                              FControlFiles.Add(IdLineFile+'='+IntToStr(posLine));
                              SelAttributes.Size:=7;
                              SelAttributes.Color:=clBtnShadow;
                              Paragraph.LineSpacingRule:=lsOneAndHalf;
                              SelLength:=0;
                              IposSearch:=FindText('Aceptar',PosChar,GetTextLenEx,[]);
                              SelStart:=IposSearch;
                              SelLength:=Length('Aceptar');
                              SetSelectionLink;
                              IposSearch:=FindText('Cancelar',PosChar,GetTextLenEx,[]);
                              SelStart:=IposSearch;
                              SelLength:=Length('Cancelar');
                              SetSelectionLink;
                         end;
         end;
         SelLength:=0;
    end;
end;

procedure TChat.CellClick(Sender: TObject; ACol, ARow: Integer);
var
   rutaFile:string;
begin

     if ACol=2 then
     begin
          if (Sender is TNextGrid) then
          begin
               if AnsiCompareText(TNextGrid(sender).Cell[ACol,ARow].AsString,'Cancelar')<>0 then
               begin
                   rutaFile:=TNextGrid(sender).Cell[ACol+1,ARow].AsString;
                   if FileExists(rutaFile) then
                      ShellExecute(LocChat.Handle,'OPEN',PChar('explorer.exe'),pchar( '/select, "' + rutaFile  + '"'),nil, SW_SHOWNORMAL);
               end
               else
               begin
                    TNextGrid(sender).Cell[ACol,ARow].AsString:='Cancelado';
                    TNextGrid(sender).Repaint;
               end;
          end;
     end;
end;

Constructor TChat.Create(Sender: TWinControl; Identificador: String;PConnection: TDBXConnection;PnlStyler:TAdvPanelStyler=nil);
var
   NxTextColumn1,NxTextColumn2: TNxTextColumn;
   NxProgressColumn1: TNxProgressColumn;
   NxHyperlinkColumn1: TNxHyperlinkColumn;
   ACol : TNxCustomColumn;
begin
  // Guardar el identificador del Usuario
  IdUsuario := Identificador;
  FConnection:=PConnection;
  // Crear el panel principal
  MainPanel := TAdvPanel.Create(Sender);
  MainPanel.Parent := Sender;
  MainPanel.Align := alClient;
  MainPanel.BevelOuter:=bvNone;
  MainPanel.Align := alClient;
  if PnlStyler<>nil then
     MainPanel.Styler:=PnlStyler;
  MainPanel.ParentColor:=False;
  MainPanel.ParentFont:=False;

  // Crear el Encabezado de chat
  LocEncabezado :=  TAdvPanel.Create(Sender);
  LocEncabezado.Parent := MainPanel;
  LocEncabezado.BevelOuter:=bvNone;
  LocEncabezado.Height:=100;
  LocEncabezado.Align := alTop;
  if PnlStyler<>nil then
     LocEncabezado.Styler:=PnlStyler;

  // Crear el cuadro de chat
  LocChat :=TPnlChat.Create(sender);
  LocChat.Parent := MainPanel;
  LocChat.Tag:=99;
  LocChat.ParentColor:=False;
  LocChat.ParentFont:=False;
  LocChat.OnURLClick:= MiURLClick;

  LocChat.Font.Name:='Arial';
  LocChat.Font.Color:=clBlue;
  LocChat.Align := alClient;
  LocChat.ReadOnly:=True;


  // Crear el splitter
  LocSplitter := TSplitter.Create(Sender);
  LocSplitter.Parent := MainPanel;
  LocSplitter.Align := alBottom;

  // Crear el panel inferior
  LocPanel := TAdvPanel.Create(Sender);
  LocPanel.Parent := MainPanel;
  LocPanel.Align := alBottom;
  if PnlStyler<>nil then
     LocPanel.Styler:=PnlStyler;

  // Crear el memo de captura de mensajes
  LocMsg := TMemo.Create(Sender);
  LocMsg.Parent := LocPanel;
  LocMsg.Align := alClient;
  LocMsg.Font.Color:=clBlack;
  LocMsg.Font.Size:=9;
  LocMsg.Font.Name:='Arial';
  LocMsg.OnKeyDown:=LocMsgKeyDown;
  LocMsg.OnKeyPress:=LocMsgKeyPress;

  ATPnlDownload:=TAdvToolPanel.Create(sender);
  with ATPnlDownload do
  begin
       Visible:=False;
       Parent:=MainPanel;
       Align:=alBottom;
       CaptionButton := False;
       Height:=120;
       BackgroundTransparent := True;
       CanSize := False;
       CloseHint := 'Close Panel';
       SectionLayout.Corners := scRectangle;
       ShowCaptionBorder := True;
       ShowLock := False;
       Style := esOffice2007Luna;
  end;

  pnlDownload:=TNextGrid.Create(sender);
  with pnlDownload do
  begin
       Visible:=true;
       BorderStyle:=bsNone;
       Parent:=ATPnlDownload;
       Options :=[];
       OnCellClick:=CellClick;
       Align:=alClient;
       Height:=100;

       NxTextColumn1 := TNxTextColumn.Create(sender);
       NxTextColumn1.Options := [coDontHighlight, coPublicUsing, coShowTextFitHint];
       NxTextColumn1.Position := 0;
       NxTextColumn1.DefaultWidth := 120;
       NxTextColumn1.Width := 120;
       NxTextColumn1.Alignment := Talignment(2);
       Columns.AddColumn(NxTextColumn1);

       NxProgressColumn1:= TNxProgressColumn.Create(sender);
       NxProgressColumn1.Alignment := Talignment(2);
       NxProgressColumn1.DefaultWidth := 120;
       NxProgressColumn1.Options := [coCanInput, coDontHighlight];
       NxProgressColumn1.Width := 120;
       NxProgressColumn1.ProgressStyle := psSolid;
       NxProgressColumn1.Position := 1;
       NxProgressColumn1.ProgressStyle := psCylinder;
       NxProgressColumn1.RoundCorners := True;
       NxProgressColumn1.ShowText := True;
       NxProgressColumn1.Transparent := True;
       Columns.AddColumn(NxProgressColumn1);

       NxHyperlinkColumn1:= TNxHyperlinkColumn.Create(sender);
       NxHyperlinkColumn1.DefaultWidth := 80;
       NxHyperlinkColumn1.Font.Color := clBlue;
       NxHyperlinkColumn1.Font.Style := [fsUnderline];
       NxHyperlinkColumn1.Options := [coCanInput,coDontHighlight];
       NxHyperlinkColumn1.Position := 2;
       NxHyperlinkColumn1.Width := 80;
       NxHyperlinkColumn1.VisitedLinkColor := clBlue;
       Columns.AddColumn(NxHyperlinkColumn1);

       NxTextColumn2 := TNxTextColumn.Create(sender);
       NxTextColumn2.Options := [coDontHighlight, coPublicUsing, coShowTextFitHint];
       NxTextColumn2.Position := 3;
       NxTextColumn2.DefaultWidth := 120;
       NxTextColumn2.Width := 120;
       NxTextColumn2.Alignment := Talignment(2);
       NxTextColumn2.Visible:=False;
       Columns.AddColumn(NxTextColumn2);
  end;
end;

Destructor TChat.Destroy;
begin
  LocChat.Destroy;
  LocEncabezado.Destroy;
  pnlDownload.Destroy;
  LocSplitter.Destroy;
  LocMsg.Destroy;
  LocPanel.Destroy;
  MainPanel.Destroy;
  ATPnlDownload.Destroy;
end;

procedure TChat.InicializarMetodos(PFunctionValida: TFunctionValida;PProcedureDownload:TProcedureDownload);
begin
     FFunctionValida:=PFunctionValida;
     FProcedureDownload:=PProcedureDownload;
end;

Procedure TChat.SetParametrosSesion(IdUserLocal: string; IdSesion: string);
begin
    FIdUsuarioLocal:=IdUserLocal;
    FClientSession:=IdSesion;
end;
Procedure TChat.MiURLClick(Sender: TObject; const URLText: string;Button: TMouseButton);
var
  x,ipos,Lpos: Integer;
  Continuar:Boolean;
  nombre:string;
  lLInkItem:TLInkItem;
  LItem: TCallbackClient;
  OldCadena:string;

begin
     Continuar:=True;
     if @FFunctionValida<>nil then
     begin
          Continuar:=FFunctionValida(LItem);
     end;

     if Continuar then
     begin
          Lpos:=SendMessage(LocChat.handle, EM_LINEFROMCHAR,LocChat.SelStart, 0);
          if AnsiCompareText(URLText,'Aceptar')=0 then
          begin
                    lLInkItem:=TLInkItem(LocChat.FObjectsToLink.Objects[LocChat.FObjectsToLink.IndexOf(IntToStr(lpos))]);
                    OldCadena:=LocChat.Lines[lpos];
                    OldCadena:=StringReplace(OldCadena,'Recibiendo Archivo:','Descargando Archivo:',[]);
                    OldCadena:=StringReplace(OldCadena,'Aceptar','',[]);
                    OldCadena:=StringReplace(OldCadena,'Cancelar','',[]);

                    LocChat.SaveFileDialog.Filter:=ExtractFileExt(lLInkItem.FilenameOrigen) + '|*'+ExtractFileExt(lLInkItem.FilenameOrigen);
                    LocChat.SaveFileDialog.DefaultExt:=StringReplace(ExtractFileExt(lLInkItem.FilenameOrigen),'.','',[rfReplaceAll, rfIgnoreCase]);
                    LocChat.SaveFileDialog.FilterIndex:=1;
                    LocChat.SaveFileDialog.FileName:=ExtractFileName(lLInkItem.FilenameOrigen);

                    if LocChat.SaveFileDialog.Execute then
                    begin
                         LocChat.Lines[lpos]:=OldCadena;
                         ATPnlDownload.Visible:=True;
                         pnlDownload.AddRow();
                         pnlDownload.Cell[0,pnlDownload.LastAddedRow].AsString:=OldCadena;
                         pnlDownload.Cell[2,pnlDownload.LastAddedRow].AsString:='Cancelar';
                         pnlDownload.DoubleBuffered:=True;
                         lLInkItem.Estatus:='Descargando';
                         lLInkItem.FilenameDestino:=LocChat.SaveFileDialog.FileName;
                         lLInkItem.IControl:=lpos;
                         pnlDownload.Cell[3,pnlDownload.LastAddedRow].AsString:=lLInkItem.FilenameDestino;
                         if litem<>nil then
                            if @FProcedureDownload<>nil then
                               FProcedureDownload(pnlDownload,pnlDownload.LastAddedRow,lLInkItem,LocChat.ListaHilos);
                    end;
          end;
     end;

end;

procedure TChat.LocMsgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  x,ipos: Integer;
  LItem: TCallbackClient;
  nombre:string;
  Continuar:Boolean;
begin
  if (Key = 13) And (Shift = []) then
  begin
       Continuar:=True;
       if @FFunctionValida<>nil then
       begin
            Continuar:=FFunctionValida(LItem);
       end;

       if Continuar then
       begin
            nombre:=FIdUsuarioLocal;
            Nombre:= nombre + ' dijo (' + formatdatetime('hh:mm:ss ampm',now) + ')';
            Self.LocChat.AddFormat(Nombre,TpFUserL);
            Self.LocChat.AddFormat(self.LocMsg.Text,TpFmsjL);

            if litem<>nil then
            begin
                 ClientNotify(litem.ChannelName, litem.CallbackName, litem.ClientName,
                             litem.Session,'Message','%Message%',FClientSession,self.LocMsg.Text);
            end;

            self.LocMsg.Clear;
       end;
  end;
end;

procedure TChat.LocMsgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Key := #0;
end;

function TChat.ClientNotify(const AChannel, ACallback, AClient, ASession, AType,ACode,AFrom: string; const AMessage: string): Boolean;
var
  LClient: TDSAdminClient;
  LMessage: TJSONString;
  LResponse: TJSONValue;

begin
  Result := False;
  LClient := TDSAdminClient.Create(FConnection, False);
  try
    LMessage := TJSONString.Create(Format('From=%s° Channel=%s° Callback=%s° Client=%s° Type=%s° Code=%s° Message=%s° Session=%s ',
      [AFrom,AChannel, ACallback, AClient,AType,ACode ,AMessage,ASession]));
    try
      Result := LClient.NotifyCallback(AChannel, AClient, ACallback, LMessage,
        LResponse);
      try
        if LResponse <> nil then
          //LogValue(Format('Client response: %s', [LResponse.ToString]))
        else
          //LogValue(Format('Client response: %s', ['nil']))
      finally
        LResponse.Free;
      end;
    finally
      LMessage.Free;
    end;
  finally
    LClient.Free;
  end;
end;

end.
