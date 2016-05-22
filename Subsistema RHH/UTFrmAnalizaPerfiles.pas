unit UTFrmAnalizaPerfiles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvLabel, Spin, frxClass, frxDBSet,
  DB, DBClient, ClientModuleUnit1, UInteliDialog, Mask, JvExMask, JvToolEdit,
  JvBaseEdits;

type
  TCargos = class
   IdCargo : integer;
   Aprox : Double;
  end;

type
  TFrmAnalizaPerfiles = class(TForm)
    GroupBox1: TGroupBox;
    seInicio: TSpinEdit;
    seFin: TSpinEdit;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    frxReport1: TfrxReport;
    cdPerfiles: TClientDataSet;
    frdsPerfiles: TfrxDBDataset;
    cdDoctosxCargo: TClientDataSet;
    dsPerfiles: TDataSource;
    frdsDoctosxCargo: TfrxDBDataset;
    cdDocumentosPostulante: TClientDataSet;
    frdsDocumentosPostulante: TfrxDBDataset;
    frcdpefilesplaza: TfrxDBDataset;
    clientdata: TDataSource;
    frxDBVacanteXPostulante: TfrxDBDataset;
    cdvacante: TClientDataSet;
    frxDBplazadetalle: TfrxDBDataset;
    frxDBOrganizacion: TfrxDBDataset;
    MemPerfiles: TClientDataSet;
    CdPerfilVacante: TClientDataSet;
    MemPerfilVacante: TClientDataSet;
    frxDBPerfilVacante: TfrxDBDataset;
    ComboBox1: TComboBox;
    CalcExperiencia: TJvCalcEdit;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    function CopiarEstructuraExp(Fuente, Destino: TClientDataSet): Boolean;
    function CopiarEstructuraExpAux(Fuente, Destino: TClientDataSet): Boolean;
    { Private declarations }
  public
    LlavePostulante: Integer;
    idcargo: integer;
    Llavemenu, idplazadetalle : integer;
    Aprox : Double;
  end;

var
  FrmAnalizaPerfiles: TFrmAnalizaPerfiles;

implementation

{$R *.dfm}

procedure TFrmAnalizaPerfiles.BitBtn1Click(Sender: TObject);
var
  Cursor: TCursor;
  i : integer;
  FieldName, LocName: string;

  function CalcularExpReqierida (Duracion : integer; Unidad : string): string;
  var
    Anios, Meses: Word;
    CadDura, Cadena: String;
  begin
    Anios := Trunc(Duracion / 12);
    Meses := Duracion - Trunc(Anios * 12);

    if Anios<>0 then
      CadDura := IntToStr(Anios) + ' Años'
    else
      CadDura := '';

    if Meses > 0 then
    begin
      if CadDura <> '' then
        CadDura := CadDura + ', ';
      CadDura := CadDura + IntToStr(Meses) + ' Meses';
    end;

    if CadDura='' then
      CadDura:='No Requiere experiencia';

    Result:=CadDura;
  end;

  function CalcularExperiencia(Duracion : word): string;
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

    if CadDura='' then
      CadDura:='El Postulante no cuenta con experiencia';

    Result:=CadDura;
  end;

begin
  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;
        if llavemenu=1 then
        begin
          cddoctosxcargo.IndexFieldNames:='IdCargo';
          cddoctosxcargo.MasterFields:='IdCargo';
          cddoctosxcargo.MasterSource:=dsPerfiles;
          if Not CrearConjunto(cdPerfiles, 'rhu_PostxCargoxExp', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Perfiles de Postulante']);

          if Not CrearConjunto(cdDoctosxCargo, 'rhu_doctosxcargo', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Documentos por Cargo']);

          if Not CrearConjunto(cdDocumentosPostulante, 'rhu_docxpostulante', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Documentos por Postulante']);

          CargarDatosFiltrados(cdPerfiles, 'IdPostulante,Aproximacion1,Aproximacion2', [LlavePostulante, seInicio.Value, seFin.Value]);
          cdPerfiles.Open;

          cdDoctosxCargo.Open;

          CargarDatosFiltrados(cdDocumentosPostulante, 'IdPostulante', [LlavePostulante]);
          cdDocumentosPostulante.Open;

          CopiarEstructuraExp(CdPerfiles, MemPerfiles);

          CdPerfiles.First;
          while not CdPerfiles.Eof do
          begin
            MemPerfiles.Append;
            for i := 0 to CdPerfiles.FieldDefs.Count -1 do
            begin
              FieldName := CdPerfiles.FieldDefs.Items[i].Name;
              MemPerfiles.FieldByName(FieldName).AsVariant := CdPerfiles.FieldByName(FieldName).AsVariant;
            end;
              MemPerfiles.FieldByName('Experiencia').AsString:=CalcularExperiencia(MemPerfiles.FieldByName('ExperienciaPostulanteDias').AsInteger);
            MemPerfiles.Post;
            CdPerfiles.Next;
          end;

          frdsPerfiles.dataset:= MemPerfiles;

          ClientModule1.ForzarLocales := True;
          ClientModule1.ImprimeReporte('AnalisisdePerfiles.fr3', frxReport1);
        end
        else
        begin
          dsPerfiles.DataSet := CdPerfilVacante;
          cddoctosxcargo.IndexFieldNames:='IdCargo';
          cddoctosxcargo.MasterFields:='IdCargo';
          cddoctosxcargo.MasterSource:=dsPerfiles;

          if Not CrearConjunto(CdPerfilVacante, 'rhu_PostxCargoxExp', ccSelect) then
            raise InteligentException.CreateByCode(5, ['Perfiles de Postulante']);

          if Combobox1.ItemIndex=0 then
          begin
            if Not CargarDatosFiltrados(CdPerfilVacante, 'IdPostulante,Aproximacion1,Aproximacion2,IdCargo,AproxExp', [LlavePostulante, seInicio.Value, seFin.Value, Tcargos(Combobox1.Items.Objects[Combobox1.ItemIndex]).IdCargo, Tcargos(Combobox1.Items.Objects[Combobox1.ItemIndex]).Aprox]) then
              raise InteligentException.CreateByCode(6, ['Perfil De Vacantes y Experiencia', LlavePostulante, 'IdPostulante']);
          end
          else
          begin
            if Not CargarDatosFiltrados(CdPerfilVacante, 'IdPostulante,Aproximacion1,Aproximacion2,IdCargo,AproxExp',[LlavePostulante, seInicio.Value, seFin.Value, Tcargos(Combobox1.Items.Objects[Combobox1.ItemIndex]).IdCargo, CalcExperiencia.Value])then
               raise InteligentException.CreateByCode(6, ['Perfil De Vacantes y Experiencia', LlavePostulante, 'IdPostulante']);
          end;


          CdPerfilVacante.Open;

          if Not CrearConjunto(cdDoctosxCargo, 'rhu_doctosxcargo', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Documentos por Cargo']);
          cdDoctosxCargo.Open;

          if Not CrearConjunto(cdDocumentosPostulante, 'rhu_docxpostulante', ccCatalog) then
            raise InteligentException.CreateByCode(5, ['Documentos por Postulante']);
          CargarDatosFiltrados(cdDocumentosPostulante, 'IdPostulante', [LlavePostulante]);
          cdDocumentosPostulante.Open;

          CopiarEstructuraExpAux(CdPerfilVacante, MemPerfilVacante);

          CdPerfilVacante.First;
          while not CdPerfilVacante.Eof do
          begin
            MemPerfilVacante.Append;
            for i := 0 to CdPerfilVacante.FieldDefs.Count -1 do
            begin
              FieldName := CdPerfilVacante.FieldDefs.Items[i].Name;
              MemPerfilVacante.FieldByName(FieldName).AsVariant := CdPerfilVacante.FieldByName(FieldName).AsVariant;
            end;
            MemPerfilVacante.FieldByName('Experiencia').AsString:=CalcularExperiencia(
            MemPerfilVacante.FieldByName('ExperienciaPostulanteDias').AsInteger);

            MemPerfilVacante.FieldByName('ExperienciaReq').AsString:=CalcularExpReqierida(
            MemPerfilVacante.FieldByName('ExperienciaMinimaMeses').AsInteger,
            MemPerfilVacante.FieldByName('UnidadExperiencia').AsString);

            MemPerfilVacante.Post;
            CdPerfilVacante.Next;
          end;

          frxDBPerfilVacante.dataset:= MemPerfilVacante;

          ClientModule1.ImprimeReporte('AnalisisdePerfilesxVacante.fr3', frxReport1);
        end;
    Finally
      Screen.Cursor := Cursor;
    End;

  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbYes, mbNo], 0);
      Close;
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmAnalizaPerfiles.ComboBox1Change(Sender: TObject);
begin
  if llavemenu=2 then
  begin
    if combobox1.ItemIndex=0 then
      CalcExperiencia.Enabled:=false
    else
    begin
      CalcExperiencia.Enabled:=true;
      CalcExperiencia.Value:=Tcargos(Combobox1.Items.Objects[Combobox1.ItemIndex]).Aprox;
    end;
  end;
end;

function TFrmAnalizaPerfiles.CopiarEstructuraExp(Fuente: TClientDataSet;
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

function TFrmAnalizaPerfiles.CopiarEstructuraExpAux(Fuente: TClientDataSet;
  Destino: TClientDataSet): Boolean;
var
  i: Integer;
begin
  Try
    Destino.FieldDefs.Clear;
    for i := 0 to Fuente.FieldDefs.Count -1 do
      Destino.FieldDefs.Add(Fuente.FieldDefs.Items[i].Name, Fuente.FieldDefs.Items[i].DataType, Fuente.FieldDefs.Items[i].Size, False);
    Destino.FieldDefs.Add('Experiencia', FtString, 400, False);
    Destino.FieldDefs.Add('ExperienciaReq', FtString, 400, False);

    Destino.CreateDataSet;
    Destino.Open;

    Result := True;
  Except
    Result := False;
  End;
end;

procedure TFrmAnalizaPerfiles.FormShow(Sender: TObject);
var
   CdExperiencia : TClientDataset;
   InfCombo : Tcargos;
begin
  try
    if llavemenu=1 then
    begin
      Combobox1.Visible:=false;
      CalcExperiencia.Visible:=false;
      jvlabel4.Visible:=false;
      jvlabel5.visible:=false;
    end
    else
    begin
      InfCombo:=Tcargos.Create;
      InfCombo.IdCargo:=-1;
      InfCombo.Aprox:=-5;
      combobox1.AddItem('Mostrar Todas Las Vacantes', InfCombo);

      InfCombo:=Tcargos.Create;
      InfCombo.IdCargo:=-1;
      InfCombo.Aprox:=100;
      combobox1.AddItem('Mostrar Todas Las Vacantes que tenga experiencia', InfCombo);
      try
          CdExperiencia:= TClientDataset.create(nil);
          if Not CrearConjunto(CdExperiencia, 'rhu_documentosrecomendacion', ccSelect) then
             raise InteligentException.CreateByCode(5, ['Documentos de Recomendación']);
          if Not CargarDatosFiltrados(CdExperiencia, 'IdPostulante', [LlavePostulante]) then
             raise InteligentException.CreateByCode(6, ['Experiencia de Postulante', LlavePostulante, 'IdPostulante']);
          CdExperiencia.Open;

          CdExperiencia.first;
          while not CdExperiencia.Eof do
          begin
            InfCombo:=Tcargos.Create;
            InfCombo.IdCargo:=CdExperiencia.FieldByName('IdCargo').AsInteger;
            InfCombo.Aprox:=100;
            combobox1.AddItem(CdExperiencia.FieldByName('Titulocargo').AsString, InfCombo);
            CdExperiencia.next;
          end;
          Combobox1.ItemIndex:=0;
          CalcExperiencia.Enabled:=false
      finally
        if assigned(CdExperiencia) then
        begin
          EliminarConjunto(CdExperiencia);
          CdExperiencia.free;
        end;
      end;
    end;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

end.
