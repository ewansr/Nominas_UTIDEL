unit UTFrmMaestroPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvGroupBox, AdvShapeButton, Grids, DBGrids,
  JvExControls, JvLabel, frxClass, frxPreview, NxCollection, Menus, AdvMenus,
  UinteliDialog, DB, DBClient, frxDBSet, ToolPanels, URegistro, NxDBGrid,
  UTFrmAnalizaPerfiles, Mask, RxToolEdit, RxCurrEdit, frxExportXLS,
  frxExportRTF, frxExportPDF, JvComponentBase, JvComputerInfoEx,
  AdvGlowButton, ClientModuleUnit1;

type
  TFiltro = Class
    Conjuncion: Integer;
    Campo: Integer;
    Operador: Integer;
    Valor: String;
  End;

  TFrmMaestroPersonal = class(TForm)
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
    cdPersonal: TClientDataSet;
    dsPersonal: TDataSource;
    frxReport1: TfrxReport;
    frxDBOrganizacion: TfrxDBDataset;
    frxDBDPersonal: TfrxDBDataset;
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
    Btn_Buscar: TNxButton;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    cbDepartamento: TComboBox;
    cbCargo: TComboBox;
    Btn_Cargo: TNxButton;
    CbEmpresas: TComboBox;
    cdEmpresas: TClientDataSet;
    JvCInfPc: TJvComputerInfoEx;
    cdDepartamento: TClientDataSet;
    DsDocumentosw: TDataSource;
    cdDocumentos: TClientDataSet;
    JvLabel4: TJvLabel;
    cbTipoNomina: TComboBox;
    cdTipoNomina: TClientDataSet;
    Abrir1: TMenuItem;
    N5: TMenuItem;
    Panel10: TPanel;
    GroupBox1: TGroupBox;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    Buscar_Codigo: TEdit;
    Buscar_Nombre: TEdit;
    Btn_Cancelar: TAdvGlowButton;
    Btn_Aceptar: TAdvGlowButton;
    NxOptionButton4: TNxOptionButton;
    AdvPopupMenu4: TAdvPopupMenu;
    Veractividaddecontratacin1: TMenuItem;
    MenuEmpresa: TPopupMenu;
    odaslaEmpresas1: TMenuItem;
    N6: TMenuItem;
    SinEmpresa1: TMenuItem;
    ConEmpresa1: TMenuItem;
    procedure NxOptionButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdPersonalAfterScroll(DataSet: TDataSet);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1DblClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
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
    procedure Btn_CargoClick(Sender: TObject);
    procedure Btn_BuscarClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure cdPersonalCalcFields(DataSet: TDataSet);
    procedure CbEmpresasChange(Sender: TObject);
    procedure cbDepartamentoChange(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Btn_AceptarClick(Sender: TObject);
    procedure cbTipoNominaChange(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure NxOptionButton4Click(Sender: TObject);
    procedure AdvPopupMenu1Popup(Sender: TObject);
    procedure cdPersonalAfterOpen(DataSet: TDataSet);
    procedure cdPersonalAfterRefresh(DataSet: TDataSet);
    procedure odaslaEmpresas1Click(Sender: TObject);
    procedure SinEmpresa1Click(Sender: TObject);
    procedure ConEmpresa1Click(Sender: TObject);
  private
    ListaFiltros: TStringList;
    ProcesacdEmpleado: Boolean;
    ListaEmpresa: TStringList;
    FiltroParametros: TParamFilter;
    function CopiarEstructuraExp(Fuente, Destino: TClientDataSet): Boolean;
    procedure BorrarArchivos(Ruta: string);
    procedure ArmarFiltros;
    procedure EmpresaClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmMaestroPersonal: TFrmMaestroPersonal;

implementation
  uses
    UTFrmFichaPersonalDX, Unit2, UTFrmFiltroPostulante, UTFrmDocumento,
    xDatabase, UTFrmCargos;

{$R *.dfm}

procedure TFrmMaestroPersonal.Abrir1Click(Sender: TObject);
var
  Forma: TForm;
begin
  Try
    Forma := TForm.Create(Nil);
    Forma.Width := 496;
    Forma.Height := 174;

    Panel10.Parent := Forma;
    Panel10.Align := alClient;
    Panel10.Visible := True;

    Forma.ShowModal;
  Finally
    Panel10.Visible := False;
    Panel10.Align := alNone;
    Panel10.Parent := Self;
    Forma.Free;
  End;
end;

procedure TFrmMaestroPersonal.AdvPopupMenu1Popup(Sender: TObject);
begin
  Editar1.Enabled := (Form2.cdPersonal.Active) and (Form2.cdPersonal.RecordCount > 0);
  Eliminar1.Enabled := (Form2.cdPersonal.Active) and (Form2.cdPersonal.RecordCount > 0);
  Imprimir1.Enabled := (Form2.cdPersonal.Active) and (Form2.cdPersonal.RecordCount > 0);
end;

procedure TFrmMaestroPersonal.AdvPopupMenu2Popup(Sender: TObject);
begin
  //AnalizarPerfiles1.Enabled := ((MemoryDocumentos.RecordCount > 0) and (MemoryDocumentos.FieldByName('IdDocumento').AsString <> ''));
end;

procedure TFrmMaestroPersonal.Agregar1Click(Sender: TObject);
begin
  btnAdd.Click;
end;

procedure TFrmMaestroPersonal.AjusteNormal1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmDefault;
  frxReport1.ShowReport();
end;

procedure TFrmMaestroPersonal.AnalizarPerfiles1Click(Sender: TObject);
var
  i: Integer;
begin
  Try
    Application.CreateForm(TFrmAnalizaPerfiles, FrmAnalizaPerfiles);
    FrmAnalizaPerfiles.LlavePostulante := Form2.cdPersonal.FieldByName('IdPostulante').AsInteger;;
    FrmAnalizaPerfiles.Llavemenu:=1;
    FrmAnalizaPerfiles.ShowModal;
  Finally
    FrmAnalizaPerfiles.Free;
  End;
end;

procedure TFrmMaestroPersonal.AnchodePgina1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmPageWidth;
  frxReport1.ShowReport();
end;

procedure TFrmMaestroPersonal.BtnAddClick(Sender: TObject);
var
  Locname : string;
  Cursor: TCursor;
begin
  try
    Application.CreateForm(TFrmFichaPersonalDX, FrmFichaPersonalDX);
    FrmFichaPersonalDX.IdPersonal := -9;
    FrmFichaPersonalDX.CdDocumentos := Form2.cdDocumentos;
    FrmFichaPersonalDX.Abrev := Copy(Form2.cdEmpresas.FieldByName('NombreOrganizacion').AsString, 1, 3) + '-' + Form2.cdEmpresas.FieldByName('Abrev').AsString + '-';
    FrmFichaPersonalDX.ShowModal;
    if FrmFichaPersonalDX.Resultado = mrOk then
      Try
        Cursor := Screen.Cursor;
        Screen.Cursor := crAppStart;
        Form2.cdPersonal.Refresh;
      Finally
        Screen.Cursor := Cursor;
      End;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmMaestroPersonal.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmMaestroPersonal.BtnDeleteClick(Sender: TObject);
begin
  if Form2.cdPersonal.State = dsBrowse then
  Try
    if Form2.cdPersonal.RecordCount <= 0 then
      raise InteligentWarning.CreateByCode(26, ['Postulantes']);

    //* Aqui va el resto de tu código cuando las condiciones anteriores sean falsas */
    if not ClientModule1.LeePermisos('Postulantes','BORRAR') then
      Exit;

    if (InteliDialog.ShowModal('Eliminación de registros', 'Se procederá a borrar el registro [' + Form2.cdPersonal.FieldByName('CodigoPersonal').AsString + ']' + #10 + #10 + '¿Desea proceder con esto ahora?', mtWarning, [mbYes, mbNo], 0) = mrNo) then
      raise InteligentException.Create('Proceso cancelado por el usuario');

    if BorrarRegistro('rhu_postulante', [Form2.cdPersonal.FieldByName('IdPostulante').AsInteger]) > 0 then
      Form2.cdPersonal.Refresh  // Si se ha podido eliminar un registro se deberá actualizar el grid
    else
      InteliDialog.ShowModal('No se borraron registros', 'No se pudo eliminar el registro [' + Form2.cdPersonal.FieldByName('CodigoPersonal').AsString + ']' + #10 + #10 + 'Es probable que este registro se encuentre relacionado con algunos otros dentro de la base de datos, verifique esto e intente de nuevo.', mtWarning, [mbOk], 0)
  Except
    on e:InteligentWarning do
      InteliDialog.ShowModal('No se ha eliminado ningún registro', e.message, mtWarning, [mbOk], 0);

    on e:InteligentException do
      ; // No hacer nada, solo es para cambiar el flujo del programa

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TFrmMaestroPersonal.BtnEditClick(Sender: TObject);
var
  Locname : string;
begin
  try
    Application.CreateForm(TFrmFichaPersonalDX, FrmFichaPersonalDX);
    FrmFichaPersonalDX.IdPersonal := Form2.cdPersonal.FieldByName('IdPersonal').AsInteger;
    FrmFichaPersonalDX.IdPostulante := Form2.cdPersonal.FieldByName('IdPostulante').AsInteger;
    FrmFichaPersonalDX.BtnAgregar.Visible := false;
    FrmFichaPersonalDX.CdDocumentos := Form2.cdDocumentos;
    FrmFichaPersonalDX.ShowModal;
    if FrmFichaPersonalDX.Resultado = mrOk then
    begin
      Form2.cdPersonal.Refresh;

      // Eliminar los documentos en memoria
      MemoryDocumentos.First;
      while not MemoryDocumentos.Eof do
      begin
        if MemoryDocumentos.FieldByName('IdPostulante').AsInteger = Form2.cdPersonal.FieldByName('IdPostulante').AsInteger then
          MemoryDocumentos.Delete
        else
          MemoryDocumentos.Next;
      end;

      MemExperiencia.First;
      while not MemExperiencia.Eof do
      begin
        if MemExperiencia.FieldByName('IdPostulante').AsInteger = Form2.cdPersonal.FieldByName('IdPostulante').AsInteger then
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

procedure TFrmMaestroPersonal.BtnRefreshClick(Sender: TObject);
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


    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;
    Form2.cdPersonal.AfterScroll(Form2.cdPersonal);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al recargar los datos ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmMaestroPersonal.cbTipoNominaChange(Sender: TObject);
begin
  Form2.cdTipoNomina.RecNo := cbTipoNomina.ItemIndex +1;
end;

procedure TFrmMaestroPersonal.cdPersonalAfterOpen(DataSet: TDataSet);
begin
  ArmarFiltros;
end;

procedure TFrmMaestroPersonal.cdPersonalAfterRefresh(DataSet: TDataSet);
begin
  ArmarFiltros;
end;

procedure TFrmMaestroPersonal.cdPersonalAfterScroll(DataSet: TDataSet);
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
  if ProcesacdEmpleado then
  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crSQLWait;

      // Verificar si ya se han leido los documentos para este postulante
      MemExperiencia.CancelRange;
      if Not MemoryDocumentos.Locate('IdPostulante', Form2.cdPersonal.FieldByName('IdPostulante').AsInteger, []) then
      begin
        if Form2.cdDocxPostulante.Active then
          Form2.cdDocxPostulante.Close;

        CargarDatosFiltrados(Form2.cddocxpostulante, 'idpostulante', [Form2.cdPersonal.FieldByName('idpostulante').AsInteger]);
        Form2.cdDocxPostulante.Open;

        // Cargar los datos en memoria para su uso posterior
        Form2.cdDocxPostulante.First;
        while not Form2.cdDocxPostulante.Eof do
        begin
          MemoryDocumentos.Append;
          for i := 0 to Form2.cdDocxPostulante.FieldDefs.Count -1 do
          begin
            FieldName := Form2.cdDocxPostulante.FieldDefs.Items[i].Name;
            MemoryDocumentos.FieldByName(FieldName).AsVariant := Form2.cdDocxPostulante.FieldByName(FieldName).AsVariant;
          end;
          MemoryDocumentos.Post;

          Form2.cdDocxPostulante.Next;
        end;

        if Form2.cdDocxPostulante.RecordCount = 0 then
        begin
          // Si no existen registros se deberá grabar un registro "falso" que indique que no existen documentos
          MemoryDocumentos.Append;

          for i := 0 to MemoryDocumentos.FieldDefs.Count -1 do
          begin
            FieldName := MemoryDocumentos.FieldDefs.Items[i].Name;
            MemoryDocumentos.FieldByName(FieldName).AsString := '';
          end;
          MemoryDocumentos.FieldByName('IdPostulante').AsInteger := Form2.cdPersonal.FieldByName('idpostulante').AsInteger;
          MemoryDocumentos.FieldByName('NombreDocumento').AsString := '( NO EXISTEN DOCUMENTOS ASIGNADOS )';
          MemoryDocumentos.Post;
        end;
      end;
//##############################################################################
//##############################################################################
      if not MemExperiencia.Locate('IdPostulante', Form2.cdPersonal.FieldByName('IdPostulante').AsInteger, []) then
      begin
        if Form2.cdExperiencia.Active then
        Form2.cdExperiencia.Close;

        CargarDatosFiltrados(Form2.cdExperiencia, 'idpostulante', [Form2.cdPersonal.FieldByName('idpostulante').AsInteger]);
        Form2.cdExperiencia.Open;

        // Cargar los datos en memoria para su uso posterior
        Form2.cdExperiencia.First;
        while not Form2.cdExperiencia.Eof do
        begin
          MemExperiencia.Append;
          for i := 0 to Form2.cdExperiencia.FieldDefs.Count -1 do
          begin
            FieldName := Form2.cdExperiencia.FieldDefs.Items[i].Name;
            MemExperiencia.FieldByName(FieldName).AsVariant := Form2.cdExperiencia.FieldByName(FieldName).AsVariant;
          end;
          MemExperiencia.FieldByName('Experiencia').AsString:=CalcularAntiguedadCargo(Form2.cdExperiencia.FieldByName('Duracion').AsInteger, Form2.cdExperiencia.FieldByName('Titulocargo').AsString);
          MemExperiencia.Post;

          Form2.cdExperiencia.Next;
        end;


          if Form2.cdExperiencia.RecordCount = 0 then
          begin
            // Si no existen registros se deberá grabar un registro "falso" que indique que no existen documentos
            MemExperiencia.Append;

            for i := 0 to MemExperiencia.FieldDefs.Count -1 do
            begin
              FieldName := MemExperiencia.FieldDefs.Items[i].Name;
              MemExperiencia.FieldByName(FieldName).AsString := '';
            end;
            MemExperiencia.FieldByName('IdPostulante').AsInteger := Form2.cdPersonal.FieldByName('idpostulante').AsInteger;
            MemExperiencia.FieldByName('Experiencia').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
            MemExperiencia.FieldByName('TituloCargo').AsString := '( NO EXISTEN DOCUMENTOS LABORALES ASIGNADOS )';
            MemExperiencia.Post;
          end;
      end;
      MemExperiencia.CancelRange;
      MemExperiencia.IndexFieldNames:='Idpostulante';
      MemExperiencia.SetRange([Form2.cdPersonal.FieldByName('idpostulante').AsInteger],[Form2.cdPersonal.FieldByName('idpostulante').AsInteger]);
//##############################################################################

      Timer1.Enabled := True;

      if Form2.cdPersonal.RecNo = Form2.cdPersonal.RecordCount then
        Form2.cdPersonal.GetNextPacket;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    ; // No hacer nada
  end;
end;

procedure TFrmMaestroPersonal.cdPersonalCalcFields(DataSet: TDataSet);
var
  Ruta, NombreReporte: String;
  Archivo: TSearchRec;
begin
  // Verificar si la imagen ya existe de manera local
  Ruta := ExtractFilePath(ParamStr(0)) + 'Temp\Imagenes\';
  if Not DirectoryExists(Ruta) then
    ForceDirectories(Ruta);

  NombreReporte := DataSet.FieldByName('CodigoPersonal').AsString + '.jpg';

  if FindFirst(Ruta + NombreReporte, faAnyFile, Archivo) = 0 then
  begin
    ShowMessage(DataSet.FieldByName('FechaHoraImagen').AsString + '  ' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp)));
  end
  else
  begin
    // Actualizar el reporte con el reporte que se encuentra en la base de datos
    Try
      if not ActualizaReporte(Ruta, NombreReporte) then
      begin
        // Por el momento se deberá obtener el reporte de la carpeta de reportes, paulatinamente esto dejará de funcionar cuando los reportes se encuentren en la base de datos
        Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
        if Not FileExists(Ruta + NombreReporte) then
          raise InteligentException.CreateByCode(15, [NombreReporte]);
      end;
    Except
      raise InteligentException.CreateByCode(15, [NombreReporte]);
    End;
  end;
end;

procedure TFrmMaestroPersonal.Cerrar1Click(Sender: TObject);
begin
  btnclose.Click;
end;

procedure TFrmMaestroPersonal.Editar1Click(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TFrmMaestroPersonal.Eliminar1Click(Sender: TObject);
var
  cdBuscar: TClientDataSet;

begin
  if (Form2.cdPersonal.Active) and (Form2.cdPersonal.RecordCount > 0) then
  begin
    // Primero verificar si el empleado a eliminar ya ha sido incluido en una nómina
    Try
      Try
        EliminarRegistro(Form2.cdPersonal, [Form2.cdPersonal.FieldByName('IdPersonal').AsInteger]);
      Finally
        EliminarConjunto(cdBuscar);
        cdBuscar.Free;
      End;
    Except
      on e:InteligentException do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:Exception do
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    End;
  end;
end;

procedure TFrmMaestroPersonal.FichaPostulante1Click(Sender: TObject);
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

procedure TFrmMaestroPersonal.Filtroavanzado1Click(Sender: TObject);
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
      CargarDatosFiltrados(Form2.cdPersonal, Cadena, Valores);
      Form2.cdPersonal.Refresh;
      Form2.cdPersonal.First;
    end;
  end;
end;

procedure TFrmMaestroPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ListaEmpresa.Clear;

  //ListaFiltros.SaveToFile(Self.Name + '.flt');
  //Eliminarconjunto([{Form2.cdPersonal,} cddocxpostulante]);
  LiberarVentana(Self, Action);
  SetRegistry('\Ventanas', '\' + Self.Name, 'Panel4_Width', IntToStr(Panel4.Width));
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH') then
  begin
    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\');
    RemoveDir(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH');
  end;
  Action := cafree;
end;

procedure TFrmMaestroPersonal.FormCreate(Sender: TObject);
var
  Existe: Boolean;
begin
  ClientModule1.ComponentColor(self);
  ProcesacdEmpleado := True;
  ListaEmpresa := TStringList.Create;
  FiltroParametros := TParamFilter.Create;

  //Creacion de la carpeta temporal
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH') then
    Borrararchivos(ExtractFilePath(Application.ExeName) + 'Temp\Documentos RH\')
  else
    mkdir(ExtractFilePath(Application.ExeName)+'Temp\Documentos RH');


  PosicionAnterior(Self);
  ListaFiltros := TStringList.Create;
  Try
    Panel4.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Panel4_Width', Existe));
  Except
    ;
  End;
end;

procedure TFrmMaestroPersonal.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmMaestroPersonal.FormShow(Sender: TObject);
var
  Cursor: TCursor;
  OldTextStatus: String;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      OldTextStatus := Form2.StatusBar1.Panels[0].Text;

      Form2.StatusBar1.Panels[0].Text := 'Estructura de datos de Empresas';
      Form2.Repaint;

      if Form2.cdEmpresas.ProviderName = '' then
        if Not CrearConjunto(Form2.cdEmpresas, 'nuc_organizacion_basico', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Organizaciones']);

      Form2.StatusBar1.Panels[0].Text := 'Estructura de datos de Personal';
      Form2.StatusBar1.Repaint;

      if Form2.cdPersonal.ProviderName = '' then
        if not CrearConjunto(Form2.cdPersonal, 'nuc_personal', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Personal']);

      Form2.cdPersonal.AfterScroll := cdPersonalAfterScroll;
      Form2.cdPersonal.OnCalcFields := cdPersonalCalcFields;
      Form2.cdPersonal.AfterOpen := cdPersonalAfterOpen;
      Form2.cdPersonal.AfterRefresh := cdPersonalAfterRefresh;

      if Form2.cdTipoNomina.ProviderName = '' then
        if not CrearConjunto(Form2.cdTipoNomina, 'nom_tiponomina', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Tipos de Nómina']);

      Form2.StatusBar1.Panels[0].Text := 'Estructura de datos de Documentación';
      Form2.StatusBar1.Repaint;

      if Form2.cdDocumentos.ProviderName = '' then
        if Not CrearConjunto(Form2.cdDocumentos, 'rhu_documento', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Documentos']);

      if Not Form2.cdDocumentos.Active then
        Form2.cdDocumentos.Open;

      Form2.StatusBar1.Panels[0].Text := 'Leyendo datos de Empresas';
      Form2.StatusBar1.Repaint;

      if (Not Form2.cdEmpresas.Active) or ((Form2.cdEmpresas.Active) and (Form2.cdEmpresas.RecordCount = 0)) or ((Form2.cdEmpresas.Active) and (Form2.cdEmpresas.RecordCount > 0) and (Form2.cdEmpresas.FieldByName('Padre').AsInteger <> -5)) then
      begin
        if Not CargarDatosFiltrados(Form2.cdEmpresas, 'Padre', [-5]) then
          raise InteligentException.CreateByCode(6, ['Organizaciones', -5, 'Padre']);

        Form2.cdEmpresas.Open;
      end;

      Form2.StatusBar1.Panels[0].Text := 'Leyendo datos de Documentación';
      Form2.StatusBar1.Repaint;

      if Form2.cdDocxPostulante.ProviderName = '' then
        if not CrearConjunto(Form2.cdDocxPostulante, 'rhu_docxpostulante', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Documentación de Postulantes']);

      if (Not Form2.cdDocxPostulante.Active) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount = 0)) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount > 0) and (Form2.cdDocxPostulante.FieldByName('Padre').AsInteger <> -5)) then
      begin
        if Not  CargarDatosFiltrados(Form2.cdDocxPostulante, 'idpostulante', [-9]) then
          raise InteligentException.CreateByCode(6, ['Documentación de Postulantes', -9, 'IdPostulante']);

        Form2.cdDocxPostulante.Open;
      end;

      if Not CopiarEstructura(Form2.cdDocxPostulante, MemoryDocumentos) then
        raise InteligentException.CreateByCode(16, ['Documentos de Postulantes']);

      if Form2.cdDepartamento.ProviderName = '' then
        if Not CrearConjunto(Form2.cdDepartamento, 'nuc_departamento', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Departamentos']);

      if Not Form2.cdDepartamento.Active then
        Form2.cdDepartamento.Open;

      if Form2.cdExperiencia.ProviderName = '' then
        if not CrearConjunto(Form2.cdExperiencia, 'rhu_documentosrecomendacion', ccSelect) then
          raise InteligentException.CreateByCode(5, ['Postulantes']);

      if (Not Form2.cdDocxPostulante.Active) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount = 0)) or ((Form2.cdDocxPostulante.Active) and (Form2.cdDocxPostulante.RecordCount > 0) and (Form2.cdDocxPostulante.FieldByName('Padre').AsInteger <> -5)) then
      begin
        if Not  CargarDatosFiltrados(Form2.CdExperiencia, 'idpostulante', [-9]) then
          raise InteligentException.CreateByCode(6, ['Documentos Recomendacion', -9, 'IdPostulante']);

        Form2.cdExperiencia.Open;
      end;

      if Not CopiarEstructuraExp(Form2.cdExperiencia, MemExperiencia) then
        raise InteligentException.CreateByCode(16, ['Documentos Recomendacion']);

      Form2.StatusBar1.Panels[0].Text := 'Leyendo datos de Empresas';
      Form2.StatusBar1.Repaint;

      Form2.cdEmpresas.First;
      while not Form2.cdEmpresas.Eof do
      begin
        CbEmpresas.AddItem(Form2.cdEmpresas.FieldByName('NombreOrganizacion').AsString, nil);
        Form2.CdEmpresas.Next;
      end;

      if Not Form2.cdTipoNomina.Active then
        Form2.cdTipoNomina.Open;
      cbTipoNomina.Items.Clear;
      Form2.cdTipoNomina.First;
      while not Form2.cdTipoNomina.Eof do
      begin
        cbTipoNomina.Items.AddObject(Form2.cdTipoNomina.FieldByName('Titulo').AsString, TObject(Form2.cdTipoNomina.RecNo));

        Form2.cdTipoNomina.Next;
      end;

      Timer2.Enabled := True;
    finally
      Form2.StatusBar1.Panels[0].Text := OldTextStatus;
      Form2.StatusBar1.Repaint;

      Screen.Cursor := Cursor;
      //EliminarConjunto(cdEmpresas);
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

procedure TFrmMaestroPersonal.frxReport1DblClickObject(Sender: TfrxView;
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

procedure TFrmMaestroPersonal.imprimir1Click(Sender: TObject);
begin
  btnprint.Click;
end;

procedure TFrmMaestroPersonal.Btn_AceptarClick(Sender: TObject);
begin
  // Localizar el personal indicado
  Form2.cdPersonal.Close;
  Buscar_Codigo.Text := TrimRight(TrimLeft(Buscar_Codigo.Text));
  Buscar_Nombre.Text := TrimRight(TrimLeft(Buscar_Nombre.Text));

  if (Buscar_Codigo.Text <> '') or (Buscar_Nombre.Text <> '') then
  begin
    if Buscar_Codigo.Text <> '' then
      if Buscar_Nombre.Text <> '' then
        CargarDatosFiltrados(Form2.cdPersonal, 'CodigoPersonal,CadenaBuscar', [Buscar_Codigo.Text, Buscar_Nombre.Text])
      else
        CargarDatosFiltrados(Form2.cdPersonal, 'CodigoPersonal', ['%' + Buscar_Codigo.Text + '%'])
    else
      if Buscar_Nombre.Text <> '' then
        CargarDatosFiltrados(Form2.cdPersonal, 'CadenaBuscar', [Buscar_Nombre.Text]);

    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;
  end;
end;

procedure TFrmMaestroPersonal.Btn_BuscarClick(Sender: TObject);
Var
  Parametros: TParamFilter;
begin
  Parametros := TParamFilter.Create;
  Try
    if cbEmpresas.ItemIndex >= 0 then
      Parametros.Add('IdOrganizacion', Form2.cdEmpresas.FieldByName('IdOrganizacion').AsInteger);

    if cbDepartamento.Items.Count > 0 then
      Parametros.Add('IdDepartamento', Integer(cbDepartamento.Items.Objects[cbDepartamento.ItemIndex]));

    if cbTipoNomina.ItemIndex >= 0 then
      Parametros.Add('IdTipoNomina', Form2.cdTipoNomina.FieldByName('IdTipoNomina').AsInteger);

    CargarDatosFiltrados(Form2.cdPersonal, Parametros.Campos, Parametros.Datos);

    BtnRefresh.Click;
  Finally
    Parametros.Free;
    Btn_Buscar.Enabled := False;
  End;
end;

procedure TFrmMaestroPersonal.Btn_CargoClick(Sender: TObject);
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

procedure TFrmMaestroPersonal.NxOptionButton1CanResize(Sender: TObject;
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

procedure TFrmMaestroPersonal.NxOptionButton1Click(Sender: TObject);
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

procedure TFrmMaestroPersonal.NxOptionButton2Click(Sender: TObject);
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

procedure TFrmMaestroPersonal.NxOptionButton3Click(Sender: TObject);
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

procedure TFrmMaestroPersonal.NxOptionButton4Click(Sender: TObject);
Var
  Point :Tpoint;
begin
  try
    GetCursorPos(Point);
    AdvPopupMenu4.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe de esto al administrador: ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmMaestroPersonal.odaslaEmpresas1Click(Sender: TObject);
begin
   if CargarDatosFiltrados(Form2.cdPersonal, 'IdOrganizacion', [-1]) then
    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;
end;

procedure TFrmMaestroPersonal.PginaCompleta1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmWholePage;
  frxReport1.ShowReport();
end;

procedure TFrmMaestroPersonal.PlazasdeacuerdoaPerfil1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmAnalizaPerfiles, FrmAnalizaPerfiles);
    FrmAnalizaPerfiles.LlavePostulante := Form2.cdPersonal.FieldByName('IdPostulante').AsInteger;
    FrmAnalizaPerfiles.Llavemenu:=2;
    FrmAnalizaPerfiles.ShowModal;
  Finally
    FrmAnalizaPerfiles.Free;
  End;
end;

procedure TFrmMaestroPersonal.SinEmpresa1Click(Sender: TObject);
begin
  if CargarDatosFiltrados(Form2.cdPersonal, 'IdOrganizacion', [0]) then
    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;
end;

procedure TFrmMaestroPersonal.Timer1Timer(Sender: TObject);
var
  Locname : string;
begin
  {if Not frxReport1.IsLoading then
  begin
    timer1.Enabled := false;
    //frxReport1.LoadFromFile('C:\Users\Rangel\Documents\svn\Utidel RHH\Reportes\CatalogoPersonalPreview.fr3', False);
    frxReport1.ShowReport(True);
  end;}
end;

procedure TFrmMaestroPersonal.Timer2Timer(Sender: TObject);
var
  Cursor: TCursor;
  OldTextStatus,
  Ruta, Cadena,
  NombreReporte: String;
  Archivo: TSearchRec;
begin
  Timer2.Enabled := False;
  NombreReporte := 'CatalogoPersonalPreview.fr3';

  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
      OldTextStatus := Form2.StatusBar1.Panels[0].Text;

      Try
        Ruta := ExtractFilePath(ParamStr(0)) + 'Temp\';
        if Not DirectoryExists(Ruta) then
          ForceDirectories(Ruta);

        // Verificar si el archivo ya existe
        if FindFirst(Ruta + NombreReporte, faAnyFile, Archivo) = 0 then
        begin
          Cadena := Archivo.Name + ':' + IntToStr(DateTimeToFileDate(Archivo.TimeStamp));

          // Verificar si el archivo está actualizado
          if Not CompararReporte(Ruta, Cadena) then
            // Actualizar el reporte con el reporte que se encuentra en la base de datos
            if not ActualizaReporte(Ruta, NombreReporte) then
            begin
              // Creo que aquí es donde se debe borrar el reporte de TEMP
            end;
        end
        else
        begin
          // Actualizar el reporte con el reporte que se encuentra en la base de datos
          Try
            if not ActualizaReporte(Ruta, NombreReporte) then
            begin
              // Por el momento se deberá obtener el reporte de la carpeta de reportes, paulatinamente esto dejará de funcionar cuando los reportes se encuentren en la base de datos
              Ruta := ExtractFilePath(Application.ExeName) + 'Reportes\';
              if Not FileExists(Ruta + NombreReporte) then
                raise Exception.Create('*');
            end;
          Except
            raise Exception.Create('*');
          End;
        end;
      Except
        Ruta := '';
      End;

      if Ruta <> '' then
      begin
        frxReport1.PreviewOptions.MDIChild := False;
        frxReport1.PreviewOptions.Modal := True;
        frxReport1.PreviewOptions.ShowCaptions := False;
        frxReport1.Previewoptions.ZoomMode := zmPageWidth;
        frxReport1.LoadFromFile(Ruta + NombreReporte);
        //Reporte.ShowReport(False);
      end;

      //ClientModule1.ImprimeReporte('CatalogoPersonalPreview.fr3', frxReport1, frxPreview1);
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

procedure TFrmMaestroPersonal.VariasPginas1Click(Sender: TObject);
begin
  frxReport1.PreviewOptions.ZoomMode := zmManyPages;
  frxReport1.ShowReport();
end;

procedure TFrmMaestroPersonal.ConEmpresa1Click(Sender: TObject);
begin
  if CargarDatosFiltrados(Form2.cdPersonal, 'IdOrganizacion', [not null]) then
    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;
end;

function TFrmMaestroPersonal.CopiarEstructura(Fuente: TClientDataSet;
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

function TFrmMaestroPersonal.CopiarEstructuraExp(Fuente: TClientDataSet;
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

procedure TFrmMaestroPersonal.DBGrid1DblClick(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.RecordCount > 0 then
    BtnEdit.Click;
end;

procedure TFrmMaestroPersonal.Documentos1Click(Sender: TObject);
begin
  if MemoryDocumentos.RecordCount > 0 then
    ClientModule1.ImprimeReporte('CatalogoPostulantesDocumentosPreview.fr3', frxReport2);
end;

procedure TFrmMaestroPersonal.BorrarArchivos(Ruta: string);
var
  SR: TSearchRec;
begin
  if FindFirst(Ruta + '*.*', $23 , SR)= 0 then
   repeat
     DeleteFile(Ruta+'\'+SR.Name);
   until FindNext(SR) <> 0;
end;

procedure TFrmMaestroPersonal.cbDepartamentoChange(Sender: TObject);
begin
  // Cerrar el personal
  Form2.cdPersonal.Close;
  Btn_Buscar.Enabled := True;
end;

procedure TFrmMaestroPersonal.CbEmpresasChange(Sender: TObject);
begin
  Try
    // Cerrar la lista de personal
    Form2.cdPersonal.Close;

    // Posicionar el apuntador de registro
    Form2.cdEmpresas.RecNo := cbEmpresas.ItemIndex +1;

    // Filtrar los departamentos
    cbDepartamento.Items.Clear;

    cbDepartamento.Items.AddObject('< TODOS LOS DEPARTAMENTOS >', TObject(-1));

    Form2.cdDepartamento.Filtered := False;
    Form2.cdDepartamento.Filter := 'IdOrganizacion = ' + Form2.cdEmpresas.FieldByName('IdOrganizacion').AsString;
    Form2.cdDepartamento.Filtered := True;
    Form2.cdDepartamento.First;

    while Not Form2.cdDepartamento.Eof do
    begin
      cbDepartamento.Items.AddObject(Form2.cdDepartamento.FieldByName('TituloDepartamento').AsString, TObject(Form2.cdDepartamento.RecNo));

      Form2.cdDepartamento.Next;
    end;

    if cbDepartamento.Items.Count > 0 then
      cbDepartamento.ItemIndex := 0;
  Finally
    Btn_Buscar.Enabled := True;
  End;
end;

procedure TFrmMaestroPersonal.ArmarFiltros;
var
  Item: TMenuItem;
  Posicion: Integer;
begin
  while MenuEmpresa.Items.Count > 4 do
    MenuEmpresa.Items.Delete(4);

  ListaEmpresa.Clear;

  // Recorrer el pedo para obtener todos los datos de los filtros posibles
  Form2.cdPersonal.DisableControls;
  ProcesacdEmpleado := False;
  Try
    Posicion := Form2.cdPersonal.RecNo;
    Form2.cdPersonal.First;
    while Not Form2.cdPersonal.Eof do
    begin
      if ListaEmpresa.IndexOf(Form2.cdPersonal.FieldByName('IdOrganizacion').AsString) = -1 then

//      if Not Assigned(MenuEmpresa.Items.Find(Form2.cdPersonal.FieldByName('NombreOrganizacion').AsString)) then
      begin
        Item := TMenuItem.Create(MenuEmpresa);
        Item.Caption := Form2.cdPersonal.FieldByName('NombreOrganizacion').AsString;
        Item.OnClick := EmpresaClick;
        MenuEmpresa.Items.Add(Item);

        // Armar la lista de Indices
        ListaEmpresa.Add(Form2.cdPersonal.FieldByName('IdOrganizacion').AsString);
      end;

      Form2.cdPersonal.Next;
    end;
  Finally
    Form2.cdPersonal.RecNo := Posicion;
    ProcesacdEmpleado := True;
    Form2.cdPersonal.EnableControls;
  End;
end;

procedure TFrmMaestroPersonal.EmpresaClick(Sender: TObject);
begin
  if FiltroParametros.IndexOf('IdOrganizacion') = -1 then
    FiltroParametros.Add('IdOrganizacion', ListaEmpresa[TMenuItem(Sender).MenuIndex - 4]);

  if CargarDatosFiltrados(Form2.cdPersonal, FiltroParametros.Campos, FiltroParametros.Datos) then
    if Form2.cdPersonal.Active then
      Form2.cdPersonal.Refresh
    else
      Form2.cdPersonal.Open;
end;

end.
