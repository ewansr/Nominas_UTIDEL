unit UTfrmConsultaPlazaDX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, AdvListV, ExtCtrls, StdCtrls, JvExControls, JvLabel,
  ClientModuleUnit1, URegistro, DBClient, DB, Grids, DBGrids, AdvSmoothButton,
  NxColumns, NxDBColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid;

Const
  WM_SEHACERRADO = WM_APP + 2;

type
  TMedidasForm = class
   FTop : Integer;
   FTHeigt : integer;
   FWidth : integer;
   FLeft : integer;
   BMinimized : Boolean;
   Constructor Create;
  end;

type
  PDatos = ^TNDatos;
  TNDatos = record
  idpostulante : integer;
  idpersonal : integer;
  codigopersonal : string;
  codigopostulante : string;
  categoria : integer;
end;

type
  TFrmConsultaPlazaDX = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    JvLabel1: TJvLabel;
    cbTipo: TComboBox;
    rgModo: TRadioGroup;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Panel5: TPanel;
    cbCargo: TComboBox;
    Panel6: TPanel;
    JvLabel2: TJvLabel;
    Panel7: TPanel;
    cbDepto: TComboBox;
    Panel8: TPanel;
    JvLabel3: TJvLabel;
    Panel9: TPanel;
    JvLabel4: TJvLabel;
    cbConvenio: TComboBox;
    Button1: TButton;
    Panel10: TPanel;
    Panel11: TPanel;
    lvPlaza: TAdvListView;
    Panel12: TPanel;
    Splitter2: TSplitter;
    Button2: TButton;
    BtnReestablecer: TAdvSmoothButton;
    lvAsignados: TAdvListView;
    procedure rgModoClick(Sender: TObject);
    procedure cbCargoChange(Sender: TObject);
    procedure LlenarListView;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lvPlazaChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure cbTipoChange(Sender: TObject);
    procedure cbDeptoChange(Sender: TObject);
    procedure cbConvenioChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
    procedure BtnReestablecerClick(Sender: TObject);
    procedure lvAsignadosChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
  private
    MedidasForm : TMedidasForm;
    procedure CambiaEstilo(Estilo: TFormStyle);
  public
    cdPlaza: TClientDataSet;
    CdAsigPlaza : Tclientdataset;
    DsAsigPlaza : TDataSource;
    Accion: TCloseAction;
    function AbreDatos: Boolean;
  end;

var
  FrmConsultaPlazaDX: TFrmConsultaPlazaDX;

implementation

uses UInteliDialog;

{$R *.dfm}

constructor TMedidasForm.Create;
begin
   FTop := -1;
   FTHeigt := -1;
   FWidth := -1;
   FLeft := -1;
   BMinimized := False;
end;

procedure TFrmConsultaPlazaDX.cbCargoChange(Sender: TObject);
begin
  LlenarListView; // Filtrar los datos del listview
end;

procedure TFrmConsultaPlazaDX.cbConvenioChange(Sender: TObject);
begin
//  ClientModule1.cdEstructuraOrganizacion.RecNo := Integer(cbConvenio.Items.Objects[cbConvenio.ItemIndex]);
  LlenarListView; // Filtrar los datos del listview
end;

procedure TFrmConsultaPlazaDX.cbDeptoChange(Sender: TObject);
begin
  LlenarListView; // Filtrar los datos del listview
end;

procedure TFrmConsultaPlazaDX.cbTipoChange(Sender: TObject);
begin
  LlenarListView;
end;

procedure TFrmConsultaPlazaDX.FormActivate(Sender: TObject);
begin
  if Self.WindowState = wsMinimized then
    Self.WindowState := wsNormal;
end;

procedure TFrmConsultaPlazaDX.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  Try
    Try
      EliminarConjunto(cdPlaza);
      cdPlaza.Free;

      LiberarVentana(Self, Action);

      SetRegistry('\Ventanas\', Self.Name, 'cbTipo', IntToStr(cbTipo.ItemIndex));
      SetRegistry('\Ventanas\', Self.Name, 'cbCargo', IntToStr(cbCargo.ItemIndex));
      SetRegistry('\Ventanas\', Self.Name, 'Radio', IntToStr(rgModo.ItemIndex));
      SetRegistry('\Ventanas\', Self.Name, 'Splitter', IntToStr(Panel5.Width));

      // Registrar los anchos de las columnas
      if MedidasForm.BMinimized = false then
      for i := 0 to lvPlaza.Columns.Count -1 do
        SetRegistry('\Ventanas\' + Self.Name, '\Columnas', 'Col' + IntToStr(i), IntToStr(lvPlaza.Columns.Items[i].Width));

      if assigned(Medidasform) then
        Medidasform.Free;

    except
      ;
    End;
  Finally
      i := 0;
      if Self.Tag = 0 then
        SendMessage(Application.MainForm.Handle, WM_SEHACERRADO, 0, 0)
      else
        while (i < Application.MainForm.MDIChildCount) do
        begin
          if CompareText(Application.MainForm.MDIChildren[i].ClassName, 'TFrmPersonalRhh') = 0 then
          begin
            SendMessage(TForm(Application.MainForm.MDIChildren[i]).Handle, WM_SEHACERRADO, 0, 0);
            i := Application.MainForm.ComponentCount;
          end;
          Inc(i);
        end;
    Action :=Cafree;
  End;
end;

procedure TFrmConsultaPlazaDX.FormCreate(Sender: TObject);
var
  i, Valor: Integer;
  Marca: TBookmark;
  Cursor: TCursor;
begin
  Accion := caFree;
  ClientModule1.ComponentColor(self);
  AccedeACoordenadas(Self);

  Try
    Valor := StrToInt(VarRegistry('\Ventanas\', Self.Name, 'Radio'));
    rgModo.ItemIndex := Valor;
  Except
    ;
  End;

  Try
    Valor := StrToInt(VarRegistry('\Ventanas\', Self.Name, 'Splitter'));
    Panel5.Width := Valor;
  Except
    ;
  End;

  // Obtener los anchos de las columnas
  for i := 0 to lvPlaza.Columns.Count -1 do
    Try
      Valor := StrToInt(VarRegistry('\Ventanas\' + Self.Name, '\Columnas', 'Col' + IntToStr(i)));
      lvPlaza.Columns.Items[i].Width := Valor;
    Except
      ;
    End;

  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdPlaza := TClientDataSet.Create(Self);
      if Not CrearConjunto(cdPlaza, 'rhu_plazadetalle', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Plazas']);

      CdAsigPlaza := TClientDataSet.Create(Self);
      if Not CrearConjunto(CdAsigPlaza, 'rhu_asignxplazaextras', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Plazas']);

      DsAsigPlaza := TDataSource.Create(Self);
      DsAsigPlaza.Dataset := CdAsigPlaza;


      Try
        Marca := ClientModule1.cdEstructuraOrganizacion.Bookmark;
        ClientModule1.cdEstructuraOrganizacion.First;
        cbConvenio.Items.AddObject('< TODOS LOS CONVENIOS >', Nil);
        while Not ClientModule1.cdEstructuraOrganizacion.Eof do
        begin
//          cbConvenio.AddItem(ClientModule1.cdEstructuraOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(ClientModule1.cdEstructuraOrganizacion.RecNo));
          cbConvenio.AddItem(ClientModule1.cdEstructuraOrganizacion.FieldByName('NombreOrganizacion').AsString, TObject(ClientModule1.cdEstructuraOrganizacion.FieldByName('IdOrganizacion').AsInteger));

          ClientModule1.cdEstructuraOrganizacion.Next;
        end;
      Finally
        ClientModule1.cdEstructuraOrganizacion.GotoBookmark(Marca);
      End;

      if Self.FormStyle = fsNormal then
        Accion := caHide;

      MedidasForm := TMedidasForm.create;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      SendMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
end;

procedure TFrmConsultaPlazaDX.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cursor: TCursor;
begin
  case Key of
    27: Close;
    116: Try
           Cursor := Screen.Cursor;
           Screen.Cursor := crAppStart;

           cdPlaza.Refresh;
           AbreDatos;
         Finally
           Screen.Cursor := Cursor;
         End;
  end;
end;

procedure TFrmConsultaPlazaDX.rgModoClick(Sender: TObject);
begin
  case rgModo.ItemIndex of
    0: lvPlaza.ViewStyle := vsIcon;
    1: lvPlaza.ViewStyle := vsList;
    2: lvPlaza.ViewStyle := vsReport;
    3: lvPlaza.ViewStyle := vsSmallIcon;
  end;
end;

procedure TFrmConsultaPlazaDX.LlenarListView;
var
  Cursor: TCursor;
  IdCargo, IdDepto, IdConvenio: Integer;
begin
  Try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      IdCargo := -5;
      Try
        if (cbCargo.ItemIndex <> -1) and (cbCargo.ItemIndex <> 0) then
          IdCargo := Integer(cbCargo.Items.Objects[cbCargo.ItemIndex]);
      Except
        ;
      End;

      IdDepto := -5;
      Try
        if (cbDepto.ItemIndex <> -1) and (cbDepto.ItemIndex <> 0) then
          IdDepto := Integer(cbDepto.Items.Objects[cbDepto.ItemIndex]);
      Except
        ;
      End;

      IdConvenio := -5;
      Try
        if (cbConvenio.ItemIndex <> -1) and (cbConvenio.ItemIndex <> 0) then
          IdConvenio := Integer(cbConvenio.Items.Objects[cbConvenio.ItemIndex]);
      Except
        ;
      End;

      lvPlaza.Items.Clear;
      cbCargo.Items.Clear;
      cbDepto.Items.Clear;

       cbCargo.Items.AddObject('< TODOS LOS PUESTOS >', Nil);
       cbDepto.Items.AddObject('< TODOS LOS DEPARTAMENTOS >', Nil);

  {       cbCargo.Items.AddObject('< TODOS LOS PUESTOS >', TObject(-9));
         cbDepto.Items.AddObject('< TODOS LOS DEPARTAMENTOS >', TObject(-9)); }

      cdPlaza.First;
      while Not cdPlaza.Eof do
      begin
        if cbCargo.Items.IndexOf(cdPlaza.FieldByName('TituloCargo').AsString) < 0 then
          cbCargo.Items.AddObject(cdPlaza.FieldByName('TituloCargo').AsString, TObject(cdPlaza.FieldByName('IdCargo').AsInteger));

        if cbDepto.Items.IndexOf(cdPlaza.FieldByName('TituloDepartamento').AsString) < 0 then
          cbDepto.Items.AddObject(cdPlaza.FieldByName('TituloDepartamento').AsString, TObject(cdPlaza.FieldByName('IdDepartamento').AsInteger));

        if ((IdCargo = -5) or (cdPlaza.FieldByName('IdCargo').AsInteger = IdCargo)) and
        ((IdConvenio = -5) or (cdPlaza.FieldByName('IdOrganizacion').AsInteger = IdConvenio)) and
        ((IdDepto = -5) or (cdPlaza.FieldByName('IdDepartamento').AsInteger = IdDepto)) and
        ((cbTipo.ItemIndex = 0) or
        (((cbTipo.ItemIndex = 1) and (cdPlaza.FieldByName('IdPersonal').AsInteger > 0))) or
        ((cbTipo.ItemIndex = 2) and (cdPlaza.FieldByName('IdPersonal').AsInteger <= 0))) then
        With lvPlaza.Items.Add do
        begin
          Caption := cdPlaza.FieldByName('TituloCargo').AsString;
          SubItems.Add(cdPlaza.FieldByName('TituloDepartamento').AsString);
          SubItems.Add(cdPlaza.FieldByName('CodigoPlaza').AsString);
          SubItems.Add(cdPlaza.FieldByName('CodigoPlazaDetalle').AsString);
          SubItems.Add(cdPlaza.FieldByName('codigoorganizacion').AsString);
          SubItems.Add(cdPlaza.FieldByName('CodigoPersonal').AsString + ' - ' + cdPlaza.FieldByName('NombreCompleto').AsString);
          SubItems.Add(cdPlaza.FieldByName('FechaReingreso').AsString);

          if cdplaza.FieldByName('IdPersonal').asinteger <0 then
          begin
            if cdPlaza.FieldByName('CuentaPostulantes').AsInteger > 0 then
              SubItems.Add(cdPlaza.FieldByName('CuentaPostulantes').AsString)
            else
              SubItems.Add('No Hay Postulantes Asignados');
          end
          else
          begin
              SubItems.Add('Ocupada');
          end;

          Data := TObject(cdPlaza.FieldByName('IdPlazaDetalle').AsInteger);
          if cdPlaza.FieldByName('IdPersonal').AsInteger > 0 then
            ImageIndex := 6
          else
            ImageIndex := 8;

{           if cbCargo.Items.IndexOf(cdPlaza.FieldByName('TituloCargo').AsString) < 0 then
              cbCargo.Items.AddObject(cdPlaza.FieldByName('TituloCargo').AsString, TObject(cdPlaza.FieldByName('IdCargo').AsInteger));

            if cbDepto.Items.IndexOf(cdPlaza.FieldByName('TituloDepartamento').AsString) < 0 then
              cbDepto.Items.AddObject(cdPlaza.FieldByName('TituloDepartamento').AsString, TObject(cdPlaza.FieldByName('IdDepartamento').AsInteger));}
        end;

        cdPlaza.Next;
      end;

      // Analizar que se debe seleccionar en el combo del cuadro
      if IdCargo > 0 then
        cbCargo.ItemIndex := 1
      else
        cbCargo.ItemIndex := 0;

      if IdDepto > 0 then
        cbDepto.ItemIndex := 1
      else
        cbDepto.ItemIndex := 0;
    Finally
      Screen.Cursor := Cursor;
    End;
  Except
    on e:Exception do
    begin
      lvPlaza.Items.Clear;
      cbCargo.Items.Clear;
      cbDepto.Items.Clear;

      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de esto al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  End;
end;

procedure TFrmConsultaPlazaDX.lvAsignadosChange(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  if Assigned(lvAsignados.Selected) then
    CdAsigPlaza.Locate('IdPostulante', Pdatos(lvAsignados.Selected.Data).idpostulante, []);
end;

procedure TFrmConsultaPlazaDX.lvPlazaChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
  var
  DatosAsig : Pdatos;
begin

  if Assigned(lvPlaza.Selected) then
  begin
    cdPlaza.Locate('IdPlazaDetalle', Integer(lvPlaza.Selected.Data), []);
    if cdplaza.FieldByName('IdPersonal').asinteger <0 then
    begin
      CdAsigPlaza.CancelRange;
      CdAsigPlaza.Open;
      CdAsigPlaza.IndexFieldNames := 'idplazadetalle';
      CdAsigPlaza.SetRange([cdPlaza.FieldByName('IdPlazaDetalle').asinteger], [cdPlaza.FieldByName('IdPlazaDetalle').asinteger]);
      CdAsigPlaza.ApplyRange;
    end
    else
    begin
      CdAsigPlaza.CancelRange;
      CdAsigPlaza.Open;
      CdAsigPlaza.IndexFieldNames := 'idplazadetalle';
      CdAsigPlaza.SetRange([-1], [-1]);
      CdAsigPlaza.ApplyRange;
    end;
    lvAsignados.Items.Clear;
    CdAsigPlaza.First;
    while not CdAsigPlaza.Eof do
    begin
      new(DatosAsig);
      DatosAsig^.idpostulante := CdAsigPlaza.FieldByName('idpostulante').AsInteger;
      DatosAsig^.idpersonal := CdAsigPlaza.FieldByName('idpersonal').AsInteger;
      DatosAsig^.codigopersonal := CdAsigPlaza.FieldByName('codigopersonal').AsString;
      DatosAsig^.codigopostulante := CdAsigPlaza.FieldByName('codigopostulante').AsString;
      DatosAsig^.categoria := CdAsigPlaza.FieldByName('categoria').AsInteger;

      lvAsignados.AddItem(CdAsigPlaza.FieldByName('NombreCompleto').AsString, TObject(DatosAsig));
      lvAsignados.Items.Item[lvAsignados.Items.Count -1].SubItems.Add(CdAsigPlaza.FieldByName('Estado').AsString);
      CdAsigPlaza.Next;
    end;

  end;
end;

function TFrmConsultaPlazaDX.AbreDatos: Boolean;
var
  Valor: Integer;
begin
  Accion := caFree;
  Result := False;

  Try
    if cdPlaza.Active then
      cdPlaza.Refresh
    else
      cdPlaza.Open;

    if CdAsigPlaza.Active then
      CdAsigPlaza.Refresh
    else
    begin
      if Not CargarDatosFiltrados(CdAsigPlaza, 'IdPlazaDetalle', [-1]) then
        raise InteligentException.CreateByCode(6, ['Plaza', -1, 'Plaza']);
      CdAsigPlaza.Open;
      CdAsigPlaza.IndexFieldNames := 'idplazadetalle';
      CdAsigPlaza.SetRange([-1], [-1]);
      CdAsigPlaza.ApplyRange;
    end;


    LlenarListView;

    Try
      Valor := StrToInt(VarRegistry('\Ventanas\', Self.Name, 'cbTipo'));
      cbTipo.ItemIndex := Valor;
    Except
      ;
    End;

    Try
      Valor := StrToInt(VarRegistry('\Ventanas\', Self.Name, 'cbCargo'));
      cbCargo.ItemIndex := Valor;
    Except
      ;
    End;

    LlenarListView;

    if Self.FormStyle = fsNormal then
      Accion := caHide;
    Result := True;
  Except
    on e:Exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      Close;
    end;
  End;
end;

procedure TFrmConsultaPlazaDX.BtnReestablecerClick(Sender: TObject);
begin
  if (assigned(Medidasform)) and (Panel1.Visible = false) and (Panel10.Visible = false)
  and (BtnReestablecer.Visible = true) then
  begin
    self.top := MedidasForm.FTop;
    self.Height := MedidasForm.FTHeigt;
    self.Width := MedidasForm.FWidth;
    self.Left := MedidasForm.FLeft;
    MedidasForm.BMinimized := false;
    Panel10.Visible := true;
    Panel1.Visible := true;
    BtnReestablecer.Visible := false;
  end;
end;

procedure TFrmConsultaPlazaDX.Button2Click(Sender: TObject);
begin
showmessage(inttostr(  Integer(lvplaza.Selected.Data)));
end;

procedure TFrmConsultaPlazaDX.CambiaEstilo(Estilo: TFormStyle);
begin
  if Self.FormStyle = fsNormal then
    Self.FormStyle := fsMDIChild
  else
    Self.FormStyle := fsNormal;
end;

procedure TFrmConsultaPlazaDX.WMSysCommand(var Msg: TWMSysCommand);
begin
  // Minimizando?
  if (Msg.CmdType = SC_MINIMIZE) then begin
    // Accion de ocultar el form
    //actionOcultar.Execute;
    //showmessage('Se Minimizo!!!!'+' Medida Escritorio: '+inttostr(screen.Width));
    //self.WindowState := wsMinimized;
    MedidasForm.FTop := Self.top;
    MedidasForm.FTHeigt := self.Height;
    MedidasForm.FLeft := self.Left;
    MedidasForm.FWidth := self.Width;
    MedidasForm.BMinimized := true;
    self.Top:= 0;
    self.Width := 100;
    Self.Height := 50;
    self.Left := screen.Width - self.Width;
    Panel1.Visible:= false;
    Panel10.Visible:= false;
    BtnReestablecer.visible:= true;
    BtnReestablecer.Align := AlClient;
  end
  else
  begin
    // comportamiento estandard
    DefaultHandler(Msg);
  end;
end;

end.
