unit UTFrmCatalogoPostulantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvGroupBox, AdvShapeButton, Grids, DBGrids,
  JvExControls, JvLabel, frxClass, frxPreview, NxCollection, Menus, AdvMenus,
  UinteliDialog, DB, DBClient, frxDBSet, ToolPanels, URegistro, NxDBGrid,
  UTFrmAnalizaPerfiles, Mask, RxToolEdit, RxCurrEdit, frxExportXLS,
  frxExportRTF, frxExportPDF, JvComponentBase, JvComputerInfoEx;

type
  TFiltro = Class
    Conjuncion: Integer;
    Campo: Integer;
    Operador: Integer;
    Valor: String;
  End;

  TFrmCatalogoPostulantes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    AdvGroupBox1: TAdvGroupBox;
    AdvGroupBox2: TAdvGroupBox;
    Splitter1: TSplitter;
    BtnAdd: TAdvShapeButton;
    BtnEdit: TAdvShapeButton;
    BtnDelete: TAdvShapeButton;
    BtnRefresh: TAdvShapeButton;
    BtnPrint: TAdvShapeButton;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    DBGrid1: TDBGrid;
    NxOptionButton1: TNxOptionButton;
    frxPreview1: TfrxPreview;
    AdvPopupMenu1: TAdvPopupMenu;
    Agregar1: TMenuItem;
    Editar1: TMenuItem;
    Eliminar1: TMenuItem;
    imprimir1: TMenuItem;
    N1: TMenuItem;
    Cerrar1: TMenuItem;
    Panel13: TPanel;
    BtnClose: TAdvShapeButton;
    cdpostulantes: TClientDataSet;
    dspostulantes: TDataSource;
    frxReport1: TfrxReport;
    frxDBOrganizacion: TfrxDBDataset;
    frxDBDPostulante: TfrxDBDataset;
    cddocxpostulante: TClientDataSet;
    frxDBDocxPostulante: TfrxDBDataset;
    frxReport2: TfrxReport;
    Timer1: TTimer;
    MemoryDocumentos: TClientDataSet;
    Timer2: TTimer;
    PopupMenu1: TPopupMenu;
    Apreciacin1: TMenuItem;
    AjusteNormal1: TMenuItem;
    VariasPginas1: TMenuItem;
    AnchodePgina1: TMenuItem;
    PginaCompleta1: TMenuItem;
    N2: TMenuItem;
    Documentos1: TMenuItem;
    N3: TMenuItem;
    FichaPostulante1: TMenuItem;
    NxOptionButton2: TNxOptionButton;
    AdvPopupMenu2: TAdvPopupMenu;
    AnalizarPerfiles1: TMenuItem;
    PlazasdeacuerdoaPerfil1: TMenuItem;
    N4: TMenuItem;
    Filtroavanzado1: TMenuItem;
    NxOptionButton3: TNxOptionButton;
    AdvPopupMenu3: TAdvPopupMenu;
    PlazasVacantes1: TMenuItem;
    CdExperiencia: TClientDataSet;
    MemExperiencia: TClientDataSet;
    frxDBMemExperiencia: TfrxDBDataset;
    Panel8: TPanel;
    NxButton1: TNxButton;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Btn_Documento: TNxButton;
    AdvGroupBox3: TAdvGroupBox;
    ChkExp: TCheckBox;
    RCDiasIni: TRxCalcEdit;
    RCDiasFin: TRxCalcEdit;
    Label1: TLabel;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    cbDocumento: TComboBox;
    cbCargo: TComboBox;
    CbUnidad: TComboBox;
    Btn_Cargo: TNxButton;
    CbEmpresas: TComboBox;
    cdEmpresas: TClientDataSet;
    JvCInfPc: TJvComputerInfoEx;
    CdDocumentos: TClientDataSet;
    DsDocumentosw: TDataSource;
    procedure NxOptionButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdpostulantesAfterScroll(DataSet: TDataSet);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1DblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure Agregar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure imprimir1Click(Sender: TObject);
    procedure Cerrar1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function CopiarEstructura(Fuente: TClientDataSet; Destino: TClientDataSet): Boolean;
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AjusteNormal1Click(Sender: TObject);
    procedure VariasPginas1Click(Sender: TObject);
    procedure AnchodePgina1Click(Sender: TObject);
    procedure PginaCompleta1Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure FichaPostulante1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure AnalizarPerfiles1Click(Sender: TObject);
    procedure NxOptionButton1Click(Sender: TObject);
    procedure AdvPopupMenu2Popup(Sender: TObject);
    procedure Filtroavanzado1Click(Sender: TObject);
    procedure NxOptionButton1CanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure NxOptionButton3Click(Sender: TObject);
    procedure PlazasdeacuerdoaPerfil1Click(Sender: TObject);
    procedure Btn_DocumentoClick(Sender: TObject);
    procedure Btn_CargoClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure ChkExpClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
  private
    ListaFiltros: TStringList;
    function CopiarEstructuraExp(Fuente, Destino: TClientDataSet): Boolean;
    procedure BorrarArchivos(Ruta: string);
  public
    { Public declarations }
  end;

var
  FrmCatalogoPostulantes: TFrmCatalogoPostulantes;

implementation
  uses
    clientmoduleunit1, UTFrmPostulante, Unit2, UTFrmFiltroPostulante, UTFrmDocumento,
    xDatabase, UTFrmCargos;

{$R *.dfm}

procedure TFrmCatalogoPostulantes.AdvPopupMenu2Popup(Sender: TObject);
begin
  //AnalizarPerfiles1.Enabled := ((MemoryDocumentos.RecordCount > 0) and (MemoryDocumentos.FieldByName('IdDocumento').AsString <> ''));
end;

procedure TFrmCatalogoPostulantes.Agregar1Click(Sender: TObject);
begin
  btnadd.Click;
end;

procedure TFrmCatalogoPostulantes.AjusteNormal1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmDefault;
  frxReport1.ShowReport();
end;

procedure TFrmCatalogoPostulantes.AnalizarPerfiles1Click(Sender: TObject);
var
  i: Integer;
begin
  Try
    Application.CreateForm(TFrmAnalizaPerfiles, FrmAnalizaPerfiles);
    FrmAnalizaPerfiles.LlavePostulante := cdPostulantes.FieldByName('IdPostulante').AsInteger;;
    FrmAnalizaPerfiles.Llavemenu:=1;
    FrmAnalizaPerfiles.ShowModal;
  Finally
    FrmAnalizaPerfiles.Free;
  End;
end;

procedure TFrmCatalogoPostulantes.AnchodePgina1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmPageWidth;
  frxReport1.ShowReport();
end;

procedure TFrmCatalogoPostulantes.BtnAddClick(Sender: TObject);
var
  Locname : string;
  Cursor: TCursor;
begin
  try
    application.CreateForm(TFrmPostulante, FrmPostulante);
    FrmPostulante.IdPostulante:=-9;
    FrmPostulante.CdDocumentos := CdDocumentos;
    FrmPostulante.ShowModal;
    if FrmPostulante.Resultado = mrOk then
      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        cdpostulantes.Refresh;
      Finally
        Screen.Cursor := Cursor;
      End;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCatalogoPostulantes.BtnDeleteClick(Sender: TObject);
begin
  if cdPostulantes.State = dsBrowse then
  Try
    if cdPostulantes.RecordCount <= 0 then
      raise InteligentWarning.CreateByCode(26, ['Postulantes']);

    //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
    if not ClientModule1.LeePermisos('Postulantes','BORRAR') then
      Exit;

    if (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + cdPostulantes.FieldByName('CodigoPostulante').AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo) then
      raise InteligentException.Create('Proceso cancelado por el usuario');

    if BorrarRegistro('rhu_postulante', [cdPostulantes.FieldByName('IdPostulante').AsInteger]) > 0 then
      cdPostulantes.Refresh  // Si se ha podido eliminar un registro se deberá actualizar el grid
    else
      InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar el registro [' + cdPostulantes.FieldByName('CodigoPostulante').AsString + ']' + #10 + #10 + 'Es probable que este registro se encuentre relacionado con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha eliminado ningún registro', e.message, mtWarning, [mbOk], 0);

    on e:InteligentException do
      ; // No hacer nada, solo es para cambiar el flujo del programa

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoPostulantes.BtnEditClick(Sender: TObject);
var
  Locname : string;
begin
  try
    application.CreateForm(TFrmPostulante, FrmPostulante);
    FrmPostulante.IdPostulante:=cdpostulantes.FieldByName('idpostulante').AsInteger;
    FrmPostulante.BtnAgregar.Visible := false;
    FrmPostulante.CdDocumentos := CdDocumentos;
    FrmPostulante.ShowModal;
    if FrmPostulante.Resultado = mrOk then
    begin
      cdpostulantes.Refresh;

      // Eliminar los documentos en memoria
      MemoryDocumentos.First;
      while not MemoryDocumentos.Eof do
      begin
        if MemoryDocumentos.FieldByName('IdPostulante').AsInteger = cdPostulantes.FieldByName('IdPostulante').AsInteger then
          MemoryDocumentos.Delete
        else
          MemoryDocumentos.Next;
      end;

      MemExperiencia.First;
      while not MemExperiencia.Eof do
      begin
        if MemExperiencia.FieldByName('IdPostulante').AsInteger = cdPostulantes.FieldByName('IdPostulante').AsInteger then
          MemExperiencia.Delete
        else
          MemExperiencia.Next;
      end;

      frxReport1.ShowReport(TRUE);
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.BtnPrintClick(Sender: TObject);
var
  LocName: string;
begin
(*    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\CatalogoPostulantesPreview.fr3';
    if FileExists(LocName) then
    begin
      frxReport2.LoadFromFile(LocName);
      frxReport2.ShowReport(TRUE);
    end
    else
      MessageDlg('No Existe el archivo: '+LocName,mtInformation,[mbOk],0);*)
      ClientModule1.ImprimeReporte('CatalogoPostulantesPreview.fr3', frxReport2, frxPreview1);
end;

procedure TFrmCatalogoPostulantes.BtnRefreshClick(Sender: TObject);
var
  Locname: string;
begin
  try
    // Limpiar los datos de documentos para que estos vuelvan a ser releidos nuevamente
    MemoryDocumentos.First;
    while Not MemoryDocumentos.Eof do
      MemoryDocumentos.Delete;

    MemExperiencia.First;
    while Not MemExperiencia.Eof do
      MemExperiencia.Delete;


    cdPostulantes.Refresh;
    cdPostulantes.AfterScroll(cdPostulantes);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.cdpostulantesAfterScroll(DataSet: TDataSet);
var
  FieldName: string;
  Cursor: TCursor;
  i: Integer;

  function CalcularAntiguedadCargo(Duracion : word; Cargo : string): string;
  var
     Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 365.25);
    Duracion := Duracion - Trunc(Anios * 365.25);
    Meses := Trunc(Duracion / 30.4);
    Duracion := Duracion - Trunc(Meses * 30.4);

    if Anios > 0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if Duracion > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Duracion) + ' Días';
    end;
    cadena:=Cargo + ' - Antiguedad: ' + CadDura;
    Result:=Cadena;
  end;

begin
  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;
//Acumulativo de documentos por postulantes#####################################
      // Verificar si ya se han leido los documentos para este postulante
      MemExperiencia.CancelRange;
      if Not MemoryDocumentos.Locate('IdPostulante', cdPostulantes.FieldByName('IdPostulante').AsInteger, []) then
      begin
        if cddocxpostulante.Active=true then
          cdDocxPostulante.Close;

        CargarDatosFiltrados(cddocxpostulante, 'idpostulante', [cdpostulantes.FieldByName('idpostulante').AsInteger]);
        cdDocxPostulante.Open;

        // Cargar los datos en memoria para su uso posterior
        cdDocxPostulante.First;
        while not cdDocxPostulante.Eof do
        begin
          MemoryDocumentos.Append;
          for i := 0 to cdDocxPostulante.FieldDefs.Count -1 do
          begin
            FieldName := cdDocxPostulante.FieldDefs.Items[i].Name;
            MemoryDocumentos.FieldByName(FieldName).AsVariant := cdDocxPostulante.FieldByName(FieldName).AsVariant;
          end;
          MemoryDocumentos.Post;

          cdDocxPostulante.Next;
        end;

        if cdDocxPostulante.RecordCount = 0 then
        begin
          // Si no existen registros se deberá grabar un registro "falso" que indique que no existen documentos
          MemoryDocumentos.Append;

          for i := 0 to MemoryDocumentos.FieldDefs.Count -1 do
          begin
            FieldName := MemoryDocumentos.FieldDefs.Items[i].Name;
            MemoryDocumentos.FieldByName(FieldName).AsString := '';
          end;
          MemoryDocumentos.FieldByName('IdPostulante').AsInteger := cdPostulantes.FieldByName('idpostulante').AsInteger;
          MemoryDocumentos.FieldByName('NombreDocumento').AsString := '( NO EXISTEN DOCUMENTOS ASIGNADOS )';
          MemoryDocumentos.Post;
        end;
      end;
//##############################################################################
//##############################################################################
      if not MemExperiencia.Locate('IdPostulante', cdPostulantes.FieldByName('IdPostulante').AsInteger, []) then
      begin
        if CdExperiencia.Active=true then
        CdExperiencia.Close;

        CargarDatosFiltrados(CdExperiencia, 'idpostulante', [cdpostulantes.FieldByName('idpostulante').AsInteger]);
        CdExperiencia.Open;

        // Cargar los datos en memoria para su uso posterior
        CdExperiencia.First;
        while not CdExperiencia.Eof do
        begin
          MemExperiencia.Append;
          for i := 0 to CdExperiencia.FieldDefs.Count -1 do
          begin
            FieldName := CdExperiencia.FieldDefs.Items[i].Name;
            MemExperiencia.FieldByName(FieldName).AsVariant := CdExperiencia.FieldByName(FieldName).AsVariant;
          end;
          MemExperiencia.FieldByName('Experiencia').AsString:=CalcularAntiguedadCargo(CdExperiencia.FieldByName('Duracion').AsInteger, CdExperiencia.FieldByName('Titulocargo').AsString);
          MemExperiencia.Post;

          CdExperiencia.Next;
        end;


          if CdExperiencia.RecordCount = 0 then
          begin
            // Si no existen registros se deberá grabar un registro "falso" que indique que no existen documentos
            MemExperiencia.Append;

            for i := 0 to MemExperiencia.FieldDefs.Count -1 do
            begin
              FieldName := MemExperiencia.FieldDefs.Items[i].Name;
              MemExperiencia.FieldByName(FieldName).AsString := '';
            end;
            MemExperiencia.FieldByName('IdPostulante').AsInteger := cdPostulantes.FieldByName('idpostulante').AsInteger;
            MemExperiencia.FieldByName('Experiencia').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
            MemExperiencia.FieldByName('TituloCargo').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
            MemExperiencia.Post;
          end;
      end;
      MemExperiencia.CancelRange;
      MemExperiencia.IndexFieldNames:='Idpostulante';
      MemExperiencia.SetRange([cdPostulantes.FieldByName('idpostulante').AsInteger],[cdPostulantes.FieldByName('idpostulante').AsInteger]);
//##############################################################################

      Timer1.Enabled := True;

      if cdPostulantes.RecNo = cdPostulantes.RecordCount then
        cdPostulantes.GetNextPacket;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    ; // No hacer nada
  end;
end;

procedure TFrmCatalogoPostulantes.Cerrar1Click(Sender: TObject);
begin
  btnclose.Click;
end;

procedure TFrmCatalogoPostulantes.ChkExpClick(Sender: TObject);
begin
  RCDiasIni.Enabled := ChkExp.Checked;
  RCDiasFin.Enabled := ChkExp.Checked;
  CbUnidad.Enabled := ChkExp.Checked;
end;

procedure TFrmCatalogoPostulantes.Editar1Click(Sender: TObject);
begin
  btnedit.Click;
end;

procedure TFrmCatalogoPostulantes.FichaPostulante1Click(Sender: TObject);
var
  Reporte: TfrxReport;
begin
  Try
    frxReport1.Preview := Nil;
    frxReport1.ShowReport(True);
  Finally
    frxReport1.Preview := frxPreview1;
  End;
end;

procedure TFrmCatalogoPostulantes.Filtroavanzado1Click(Sender: TObject);
var
  i: Integer;
  Cadena: String;
  Valores: Array of Variant;
begin
  Application.CreateForm(TFrmFiltroPostulante, FrmFiltroPostulante);
  if FrmFiltroPostulante.ShowModal = mrOk then
  begin
    ListaFiltros.Clear;
    SetLength(Valores, FrmFiltroPostulante.ListBox1.Count);
    for i := 0 to FrmFiltroPostulante.ListBox1.Count -1 do
    begin
      Cadena := Cadena + FrmFiltroPostulante.ComboBox1.Items[TFiltro(FrmFiltroPostulante.ListBox1.Items.Objects[i]).Campo];
      Valores[i] := TFiltro(FrmFiltroPostulante.ListBox1.Items.Objects[i]).Valor;
      ListaFiltros.AddObject(FrmFiltroPostulante.ListBox1.Items[i], FrmFiltroPostulante.ListBox1.Items.Objects[i]);
    end;

    if FrmFiltroPostulante.ListBox1.Count > 0 then
    begin
      CargarDatosFiltrados(cdPostulantes, Cadena, Valores);
      cdPostulantes.Refresh;
      cdPostulantes.First;
    end;
  end;
end;

procedure TFrmCatalogoPostulantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //ListaFiltros.SaveToFile(Self.Name + '.flt');
  Eliminarconjunto([cdpostulantes, cddocxpostulante]);
  LiberarVentana(Self, Action);
  SetRegistry('\Ventanas', '\' + Self.Name, 'Panel4_Width', IntToStr(Panel4.Width));
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH') then
  begin
    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\');
    RemoveDir(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH');
  end;
  Action := cafree;
end;

procedure TFrmCatalogoPostulantes.FormCreate(Sender: TObject);
var
  Existe: Boolean;
  Unidad : string;
begin

 //Creacion de la carpeta temporal
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH') then
  begin
    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\');
    //RemoveDir(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH');
  end
  else
  begin
    mkdir(ExtractFilePath(Application.ExeName)+'Temp\Documentos RH');
  end;


  PosicionAnterior(Self);
  ListaFiltros := TStringList.Create;
  Unidad :='365.25';
  CbUnidad.AddItem('Años', TObject(Unidad));
  Unidad :='30.4';
  CbUnidad.AddItem('Meses', TObject(Unidad));
  CbUnidad.ItemIndex:=0;
  Try
    Panel4.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Panel4_Width', Existe));
  Except
    ;
  End;
end;

procedure TFrmCatalogoPostulantes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cursor: TCursor;
begin
  if (Shift = []) and (Key = 116) and BtnRefresh.Visible and BtnRefresh.Enabled then
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      BtnRefresh.Click;
    Finally
      Screen.Cursor := Cursor;
    End;
end;

procedure TFrmCatalogoPostulantes.FormShow(Sender: TObject);
begin
  try
    try
      if not CrearConjunto(cdEmpresas, 'rhu_docxpostulante', ccselect) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not  CargarDatosFiltrados(cdEmpresas, 'Tipo', ['Laboral']) then
        raise InteligentException.CreateByCode(6, ['Empresas', 'Laboral', 'Tipo']);
      cdEmpresas.Open;

      if not CrearConjunto(CdDocumentos, 'rhu_documento', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not  CargarDatosFiltrados(CdDocumentos, 'iddocumento', [-1]) then
        raise InteligentException.CreateByCode(6, ['Documentos', 'Todos', 'iddocumento']);
      CdDocumentos.Open;

      cdEmpresas.First;
      while not cdEmpresas.Eof do
      begin
        CbEmpresas.AddItem(CdEmpresas.FieldByName('Empresas').AsString, nil);
        CdEmpresas.Next;
      end;
      Timer2.Enabled := True;
    finally
      EliminarConjunto(cdEmpresas);
    end;
  except
      on e:InteligentException do
      begin
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;

      on e:exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Por favor informe de lo siguiente al administrador del sistema:' + #10 + e.message, mterror, [mbOk], 0);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
  end;
end;

procedure TFrmCatalogoPostulantes.frxReport1DblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  locname : string;
begin
  if sender.name = 'iddocxpostulante' then
  Try
    if Not ((ssCtrl in Shift) and (Button = mbLeft) and (Sender.TagStr <> '')) then
      raise InteligentException.Create('');

    Try
      MemoryDocumentos.Filter := 'IdDocxPostulante = ' + Sender.TagStr;
      MemoryDocumentos.Filtered := True;

      ClientModule1.ImprimeReporte('CatalogoPostulantesDocumentosPreview.fr3', frxReport2);
    Finally
      MemoryDocumentos.Filter := '';
      MemoryDocumentos.Filtered := False;
    End;
  Except
    on e:InteligentException do
      ;

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmCatalogoPostulantes.imprimir1Click(Sender: TObject);
begin
  btnprint.Click;
end;

procedure TFrmCatalogoPostulantes.NxButton1Click(Sender: TObject);
Var
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;

  if cbDocumento.ItemIndex >= 0 then
    Parametros.Add('nombreDocumento', Trim(cbDocumento.Text));
  {if Trim(EdtDoc.Text) <> '' then
    Parametros.Add('nombreDocumento', Trim(EdtDoc.Text) + '%');}

  if cbCargo.ItemIndex >= 0 then
    Parametros.Add('titulocargo', Trim(cbCargo.Text) + '%');

  if CbEmpresas.ItemIndex >= 0 then
    Parametros.Add('Empresa', Trim(CbEmpresas.Text) + '%');


  {if Trim(EdtCargo.Text) <> '' then
    Parametros.Add('titulocargo', Trim(EdtCargo.Text) + '%');}

  {    if Trim(EdtEmpresa.Text) <> '' then
       Parametros.Add('Empresa', Trim(EdtEmpresa.Text) + '%'); }

  if ChkExp.Checked = true then
  begin
    Parametros.add('min', RCDiasIni.value* StrToFloat(String(CbUnidad.Items.Objects[CbUnidad.ItemIndex])));
    Parametros.add('max', RCDiasFin.Value* StrToFloat(String(CbUnidad.Items.Objects[CbUnidad.ItemIndex])));
  end;

  CargarDatosFiltrados(CdPostulantes, Parametros.Campos, Parametros.Datos);
  //CdPostulantes.Refresh;
  BtnRefresh.Click;
  Parametros.Free;
end;

procedure TFrmCatalogoPostulantes.Btn_DocumentoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmDocumento;
begin
  Try
    tForm := TFrmDocumento.Create(nil);
    tform.ModoSeleccion := True;
    tForm.AbreteSesamo(cbDocumento, 'NombreDocumento');
    registro := tForm.SeleccionarItem();
    cbDocumento.ItemIndex := cbDocumento.Items.IndexOf(registro.Valor['nombreDocumento']);
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.Btn_CargoClick(Sender: TObject);
Var
  registro: TLista;
  tForm: TFrmCargos;
begin
  Try
    tForm := TFrmCargos.Create(nil);
    tform.ModoSeleccion := True;
    tForm.AbreteSesamo(cbCargo, 'TituloCargo');
    registro := tForm.SeleccionarItem();
    cbCargo.ItemIndex := cbCargo.Items.IndexOf(registro.Valor['TituloCargo']);
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.NxOptionButton1CanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
Var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    AdvPopupMenu3.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.NxOptionButton1Click(Sender: TObject);
Var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    AdvPopupMenu2.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.NxOptionButton2Click(Sender: TObject);
Var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    AdvPopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.NxOptionButton3Click(Sender: TObject);
Var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    AdvPopupMenu2.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe de esto al administrador: ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmCatalogoPostulantes.PginaCompleta1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmWholePage;
  frxReport1.ShowReport();
end;

procedure TFrmCatalogoPostulantes.PlazasdeacuerdoaPerfil1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmAnalizaPerfiles, FrmAnalizaPerfiles);
    FrmAnalizaPerfiles.LlavePostulante := cdPostulantes.FieldByName('IdPostulante').AsInteger;
    FrmAnalizaPerfiles.Llavemenu:=2;
    FrmAnalizaPerfiles.ShowModal;
  Finally
    FrmAnalizaPerfiles.Free;
  End;
end;

procedure TFrmCatalogoPostulantes.Timer1Timer(Sender: TObject);
var
  Locname : string;
begin
  if Not frxReport1.IsLoading then
  begin
    frxReport1.ShowReport(True);
    timer1.Enabled := false;
  end;
end;

procedure TFrmCatalogoPostulantes.Timer2Timer(Sender: TObject);
var
  Cursor: TCursor;
  OldTextStatus: String;
begin
  Timer2.Enabled := False;

  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      OldTextStatus := Form2.StatusBar1.Panels[0].Text;

      Form2.StatusBar1.Panels[0].Text := 'Accediendo a datos de Postulantes';
      Form2.StatusBar1.Repaint;
      ClientModule1.ComponentColor(self);
      if not CrearConjunto(cdPostulantes, 'rhu_postulante', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not  CargarDatosFiltrados(cdpostulantes, 'idpostulante', [-1]) then
        raise InteligentException.CreateByCode(6, ['Postulantes', -1, 'IdPostulante']);
      cdpostulantes.Open;

//Codigo de carga de documentos.................................................
      Form2.StatusBar1.Panels[0].Text := 'Accediendo a Documentos de Postulantes: ' + cdPostulantes.FieldByName('CodigoPostulante').AsString;
      Form2.StatusBar1.Repaint;
      if not CrearConjunto(cddocxpostulante, 'rhu_docxpostulante', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Documentación de Postulantes']);
      if Not  CargarDatosFiltrados(cddocxpostulante, 'idpostulante', [-9]) then
        raise InteligentException.CreateByCode(6, ['Documentación de Postulantes', -9, 'IdPostulante']);
      cddocxpostulante.Open;

      // Crear el conjunto de memoria para los documentos
      Form2.StatusBar1.Panels[0].Text := 'Copiar estructura de documentos';
      Form2.StatusBar1.Repaint;
      if Not CopiarEstructura(cdDocxPostulante, MemoryDocumentos) then
        raise InteligentException.CreateByCode(16, ['Documentos de Postulantes']);

      if not CrearConjunto(CdExperiencia, 'rhu_documentosrecomendacion', ccSelect) then
        raise InteligentException.CreateByCode(5, ['Postulantes']);
      if Not  CargarDatosFiltrados(CdExperiencia, 'idpostulante', [-9]) then
        raise InteligentException.CreateByCode(6, ['Documentos Recomendacion', -9, 'IdPostulante']);
      CdExperiencia.Open;

      if Not CopiarEstructuraExp(CdExperiencia, MemExperiencia) then
        raise InteligentException.CreateByCode(16, ['Documentos Recomendacion']);

      // Actualizar los documentos del primer registro
      if cdPostulantes.RecordCount > 0 then
        cdPostulantes.AfterScroll(cdPostulantes);
//..............................................................................
      // Crear el contenedor del reporte
      Form2.StatusBar1.Panels[0].Text := 'Generando reporte de previsualización';
      Form2.StatusBar1.Repaint;
      frxReport1.Clear;
      ClientModule1.ImprimeReporte('CatalogoPostulantesPreview.fr3', frxReport1, frxPreview1);
    Finally
      Screen.Cursor := Cursor;
      Form2.StatusBar1.Panels[0].Text := OldTextStatus;
      Form2.StatusBar1.Repaint;
    End;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Por favor informe de lo siguiente al administrador del sistema:' + #10 + e.message, mterror, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogoPostulantes.VariasPginas1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmManyPages;
  frxReport1.ShowReport();
end;

function TFrmCatalogoPostulantes.CopiarEstructura(Fuente: TClientDataSet;
  Destino: TClientDataSet): Boolean;
var
  i: Integer;
begin
  Try
    Destino.FieldDefs.Clear;
    for i := 0 to Fuente.FieldDefs.Count -1 do
      Destino.FieldDefs.Add(Fuente.FieldDefs.Items[i].Name, Fuente.FieldDefs.Items[i].DataType, Fuente.FieldDefs.Items[i].Size, False);
    Destino.CreateDataSet;
    Destino.Open;

    Result := True;
  Except
    Result := False;
  End;
end;

function TFrmCatalogoPostulantes.CopiarEstructuraExp(Fuente: TClientDataSet;
  Destino: TClientDataSet): Boolean;
var
  i: Integer;
begin
  Try
    Destino.FieldDefs.Clear;
    for i := 0 to Fuente.FieldDefs.Count -1 do
      Destino.FieldDefs.Add(Fuente.FieldDefs.Items[i].Name, Fuente.FieldDefs.Items[i].DataType, Fuente.FieldDefs.Items[i].Size, False);
    Destino.FieldDefs.Add('Experiencia', FtString, 400, False);

    Destino.CreateDataSet;
    Destino.Open;

    Result := True;
  Except
    Result := False;
  End;
end;

procedure TFrmCatalogoPostulantes.DBGrid1DblClick(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount > 0 then
    BtnEdit.Click;
end;

procedure TFrmCatalogoPostulantes.Documentos1Click(Sender: TObject);
begin
  if MemoryDocumentos.RecordCount > 0 then
    ClientModule1.ImprimeReporte('CatalogoPostulantesDocumentosPreview.fr3', frxReport2);
end;

procedure TFrmCatalogoPostulantes.BorrarArchivos(Ruta: string);
var
  SR: TSearchRec;
begin
  if FindFirst(Ruta + '*.*', $23 , SR)= 0 then
   repeat
     DeleteFile(Ruta+'\'+SR.Name);
   until FindNext(SR) <> 0;
end;

end.
