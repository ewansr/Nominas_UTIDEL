unit UTFrmCargosxConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, AdvGroupBox, AdvSmoothButton, ComCtrls, ImgList,
  DB, DBClient, Uintelidialog, JvMemoryDataset, Menus, AdvShapeButton, Mask,
  DBCtrls, JvExControls, JvLabel;

type
  TFrmCargosxConvenio = class(TForm)
    AdvGroupBox1: TAdvGroupBox;
    ImageList1: TImageList;
    cdcargos: TClientDataSet;
    Panel9: TPanel;
    JvMemoryData1: TJvMemoryData;
    cdcarasigconv: TClientDataSet;
    Cdarasigconvupt: TClientDataSet;
    cddoctosxcargo: TClientDataSet;
    cddocasigcarconve: TClientDataSet;
    PopupMenu1: TPopupMenu;
    Eliminar1: TMenuItem;
    AdvGroupBox4: TAdvGroupBox;
    Panel1: TPanel;
    ListView1: TListView;
    Panel6: TPanel;
    AdvGroupBox2: TAdvGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    Panel4: TPanel;
    ListView2: TListView;
    AdvGroupBox3: TAdvGroupBox;
    Panel5: TPanel;
    ListView3: TListView;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    cdcargosupt: TClientDataSet;
    Panel7: TPanel;
    BtnClose: TAdvShapeButton;
    cdconvenio: TClientDataSet;
    dsconvenio: TDataSource;
    Panel8: TPanel;
    BtnRec: TAdvShapeButton;
    JvLabel1: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure ListView1Resize(Sender: TObject);
    procedure ListView2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListView2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListView2Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure ListView3DblClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CdarasigconvuptAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure BtnRecClick(Sender: TObject);
    procedure cdcargosuptAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
  private
    cargoseleccionado : integer;
    RegistroModificado : boolean;
    Memcarmues : Tjvmemorydata;
    Memcardoc : Tjvmemorydata;
    Dasigconv : Tjvmemorydata;
    Memcargardocasigconv :TJvmemorydata;
    procedure cargardocasigconv;
    procedure docasigconv;
    procedure cargarcargos;

  public
      idconvenio : integer;
    { Public declarations }
  end;

var
  FrmCargosxConvenio: TFrmCargosxConvenio;

implementation
uses
    ClientModuleUnit1, xDatabase, UTFrmDatosCargo;
{$R *.dfm}

procedure TFrmCargosxConvenio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if EnTransaccion then
    CancelarTransaccion;
  Action:=Cafree;
end;

procedure TFrmCargosxConvenio.FormCreate(Sender: TObject);
begin

    clientmodule1.ComponentColor(self);
    RegistroModificado := False;

end;

procedure TFrmCargosxConvenio.FormShow(Sender: TObject);
begin
  try
       //idconvenio:=7;
      cargoseleccionado:=-5;
      if Not CrearConjunto(cdconvenio, 'nuc_organizacion', cccatalog) then
        raise Inteligentconnection.CreateByCode(5, ['Estructura Organizacional']);
      if Not CargarDatosFiltrados(cdconvenio, 'idorganizacion', [idconvenio]) then
        raise Inteligentconnection.CreateByCode(6, ['Estructura Organizacional', IdConvenio, 'Id. Convenio']);
      cdconvenio.open;
      if cdconvenio.FieldByName('EsConvenio').AsInteger=0 then
      begin
        self.Caption:='Convenio: '+cdconvenio.FieldByName('codigoorganizacion').asstring;
      end
      else
      begin
        self.Caption:='Organizacion: '+cdconvenio.FieldByName('codigoorganizacion').asstring;
      end;

       if Not CrearConjunto(cdcargos, 'nuc_cargo', ccselect) then
          raise Inteligentconnection.CreateByCode(5, ['Catalogo de Cargos']);
       if Not CargarDatosFiltrados(cdcargos, 'idcargo', [-1]) then
          raise Inteligentconnection.CreateByCode(6, ['Catalogo de Cargos', -1, 'id. cargo']);
       cdcargos.open;
      cargarcargos;


       if Not CrearConjunto(cdcarasigconv, 'rhu_doctosxcargovacante_aux', cccatalog) then
          raise Inteligentconnection.CreateByCode(5, ['Catalogo de Cargos Asignados al convenio']);
       if Not CargarDatosFiltrados(cdcarasigconv, 'IdConvenio', [idconvenio]) then
          raise Inteligentconnection.CreateByCode(6, ['Catalogo de Cargos Asignados al convenio', idconvenio, 'id. convenio']);
       cdcarasigconv.open;
       docasigconv;

      if cddocasigcarconve.Active=false then
      begin
        if Not CrearConjunto(cddocasigcarconve, 'rhu_doctosxcargovacante', ccselect) then
          raise Inteligentconnection.CreateByCode(5, ['Catalogo de Docmentos asignados al cargo']);
        if Not CargarDatosFiltrados(cddocasigcarconve, 'IdConvenio', [idconvenio]) then
          raise Inteligentconnection.CreateByCode(6, ['Catalogo de Docmentos asignados al cargo', idconvenio, 'id. convenio']);
        cddocasigcarconve.open;
      end
      else
      begin
         if Not CargarDatosFiltrados(cddocasigcarconve, 'IdConvenio', [idconvenio]) then
           raise Inteligentconnection.CreateByCode(6, ['Catalogo de Docmentos asignados al cargo', idconvenio, 'id. convenio']);
         cddocasigcarconve.Refresh;
      end;

      IniciarTransaccion;
  except
    on e:inteligentconnection do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCargosxConvenio.ListView1Resize(Sender: TObject);
begin
  listview1.Refresh;
end;

procedure TFrmCargosxConvenio.ListView2Click(Sender: TObject);
begin
  try
    if assigned(listview2.Selected) then
    begin
      cargoseleccionado:=TJvmemorydata(listview2.Selected.Data).FieldByName('idcargo').AsInteger;
      cddocasigcarconve.IndexFieldNames:='IdConvenio;idcargo';
      cddocasigcarconve.SetRange([TJvmemorydata(listview2.Selected.Data).FieldByName('IdConvenio').AsInteger, TJvmemorydata(listview2.Selected.Data).FieldByName('idcargo').AsInteger], [TJvmemorydata(listview2.Selected.Data).FieldByName('IdConvenio').AsInteger, TJvmemorydata(listview2.Selected.Data).FieldByName('idcargo').AsInteger]);
      cddocasigcarconve.ApplyRange;
      cargardocasigconv;
    end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado al seleccionar un cargo', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCargosxConvenio.ListView2DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Cursor: TCursor;
begin
  try
    Try
      Cursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      cdcarasigconv.IndexFieldNames:='idcargo';
      cdcarasigconv.SetRange([TJvmemorydata(listview1.Selected.Data).FieldByName('idcargo').AsInteger], [TJvmemorydata(listview1.Selected.Data).FieldByName('idcargo').AsInteger]);
      cdcarasigconv.ApplyRange;

      if cdcarasigconv.recordcount > 0 then
      begin
        cdcarasigconv.CancelRange;
        raise Inteligentconnection.CreateByCode(24, ['El cargo ya se encuentra cargado en el convenio']);
      end
      else
      begin
        cdcarasigconv.CancelRange;
      end;

      if (source is TListView) and (TListView(source).Name = 'ListView1')  then
      begin
        if cddoctosxcargo.Active=false then
        begin
           if Not CrearConjunto(cddoctosxcargo, 'rhu_doctosxcargo', cccatalog) then
             raise Inteligentconnection.CreateByCode(5, ['Alta de Cargos al Convenio']);
           if Not CargarDatosFiltrados(cddoctosxcargo, 'idcargo', [TJvmemorydata(listview1.Selected.Data).FieldByName('idcargo').AsInteger]) then
             raise Inteligentconnection.CreateByCode(6, ['Alta de Cargos al Convenio', TJvmemorydata(listview1.Selected.Data).FieldByName('idcargo').AsInteger, 'id. cargo']);
           cddoctosxcargo.open;
        end
        else
        begin
           if Not CargarDatosFiltrados(cddoctosxcargo, 'idcargo', [TJvmemorydata(listview1.Selected.Data).FieldByName('idcargo').AsInteger ]) then
             raise Inteligentconnection.CreateByCode(6, ['Alta de Cargos al Convenio', TJvmemorydata(listview1.Selected.Data).FieldByName('idcargo').AsInteger, 'id. cargo']);
           cddoctosxcargo.Refresh;
        end;

        if Cdarasigconvupt.Active=false then
        begin
           if Not CrearConjunto(Cdarasigconvupt, 'rhu_doctosxcargovacante', ccupdate) then
              raise Inteligentconnection.CreateByCode(5, ['Documentos correspondientes al cargo asignado al convenio']);
           if Not CargarDatosFiltrados(Cdarasigconvupt, 'idcargo', [-9]) then
              raise Inteligentconnection.CreateByCode(6, ['Documentos correspondientes al cargo asignado al convenio', -9, 'id. cargo']);
           Cdarasigconvupt.open;
        end
        else
        begin
           if Not CargarDatosFiltrados(Cdarasigconvupt, 'idcargo', [-9]) then
              raise Inteligentconnection.CreateByCode(6, ['Documentos correspondientes al cargo asignado al convenio', -9, 'id. cargo']);
           Cdarasigconvupt.Refresh;
        end;

        try
            IniciarTransaccion;

            if cddoctosxcargo.RecordCount=0 then
            begin
              Cdarasigconvupt.Append;
              Cdarasigconvupt.FieldByName('IdDoctosxCargovacante').AsInteger:=0;
              Cdarasigconvupt.FieldByName('IdConvenio').AsInteger:=idconvenio;
              Cdarasigconvupt.FieldByName('IdCargo').AsInteger:=TJvmemorydata(listview1.Selected.Data).FieldByName('idcargo').AsInteger;
              Cdarasigconvupt.FieldByName('IdDocumento').clear;
              Cdarasigconvupt.FieldByName('Obligatorio').AsString:='No';
              Cdarasigconvupt.FieldByName('idgrupo').Clear;
              Cdarasigconvupt.FieldByName('titulogrupo').Clear;
              Cdarasigconvupt.Post;
              Cdarasigconvupt.ApplyUpdates(-1);
            end
            else
            begin
              cddoctosxcargo.First;
              while not cddoctosxcargo.eof do
              begin
                Cdarasigconvupt.Append;
                Cdarasigconvupt.FieldByName('IdDoctosxCargovacante').AsInteger:=0;
                Cdarasigconvupt.FieldByName('IdConvenio').AsInteger:=idconvenio;
                Cdarasigconvupt.FieldByName('IdCargo').AsInteger:=cddoctosxcargo.FieldByName('IdCargo').AsInteger;
                Cdarasigconvupt.FieldByName('IdDocumento').AsInteger:=cddoctosxcargo.FieldByName('idDocumento').AsInteger;;
                Cdarasigconvupt.FieldByName('Obligatorio').AsString:=cddoctosxcargo.FieldByName('Obligatorio').AsString;
                Cdarasigconvupt.FieldByName('idgrupo').AsInteger:=cddoctosxcargo.FieldByName('idgrupo').AsInteger;
                Cdarasigconvupt.FieldByName('titulogrupo').AsString:=cddoctosxcargo.FieldByName('titulogrupo').AsString;
                Cdarasigconvupt.Post;
                Cdarasigconvupt.ApplyUpdates(-1);
                cddoctosxcargo.Next;
              end;
            end;
            if entransaccion then
              ConcretarTransaccion;
          except
            if EnTransaccion then
              CancelarTransaccion;
            raise;
          end;

          cdcarasigconv.Refresh;
          cddocasigcarconve.Refresh;
          docasigconv;
      end;
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:inteligentconnection do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado al dar de alta un cargo', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCargosxConvenio.ListView2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (source is TListView) and (TListView(source).Name = 'ListView1');
end;

procedure TFrmCargosxConvenio.ListView3DblClick(Sender: TObject);
var
  idcargo : integer;
begin
  try
     try
        if assigned(listview3.Selected) then
        begin
          idcargo:=TJvmemorydata(listview3.Selected.Data).FieldByName('idcargo').AsInteger;;
        end
        else
        begin
          if cargoseleccionado > 0  then
          begin
            idcargo:=cargoseleccionado;
          end
          else
          begin
            raise inteligentexception.Create('');
          end;
        end;





        begin
          if cdcargosupt.Active=false then
          begin
             if Not CrearConjunto(cdcargosupt, 'nuc_cargo', ccupdate) then
               raise Inteligentconnection.CreateByCode(5, ['Edicion del cargo y sus documentos']);
             if Not CargarDatosFiltrados(cdcargosupt, 'idcargo', [idcargo]) then
               raise Inteligentconnection.CreateByCode(6, ['Edicion del cargo y sus documentos', idcargo, 'id. cargo']);
             cdcargosupt.open;
          end
          else
          begin
             if Not CargarDatosFiltrados(cdcargosupt, 'idcargo', [idcargo]) then
               raise Inteligentconnection.CreateByCode(6, ['Edicion del cargo y sus documentos', idcargo, 'id. cargo']);
             cdcargosupt.Refresh;
          end;
          cdcargosupt.edit;

          try
            application.CreateForm(TFrmDatosCargo, FrmDatosCargo);
            FrmDatosCargo.dsDatos.DataSet:= cdcargosupt;
            FrmDatosCargo.proveniente:=self.Name;
            FrmDatosCargo.idconvenio:=idconvenio;
            FrmDatosCargo.ShowModal;
          finally
            if assigned(FrmDatosCargo) then
            begin
              FrmDatosCargo.Free;
            end;
          end;


          cddocasigcarconve.Refresh;
          cddocasigcarconve.IndexFieldNames:='IdConvenio;idcargo';
          cddocasigcarconve.SetRange([idconvenio, idcargo], [idconvenio, idcargo]);
          cddocasigcarconve.ApplyRange;

          cargardocasigconv;
        end;
      except

        on e:inteligentexception do
        begin
          ;
        end;

        on e:Inteligentconnection do
          InteliDialog.ShowModal('Error al cargar la ventana de edicion de documentos y cargos, Error: ', e.Message, mtInformation, [mbOk], 0);

        on e:exception do
          InteliDialog.ShowModal('Ha ocurrido un error inesperado al abrir la venta ade edicion de cargos y documentos', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      end;
  finally
    if cdcargosupt.State in [dsinsert, dsedit] then
    begin
      cdcargosupt.CancelUpdates;
    end;
  end;
end;

procedure TFrmCargosxConvenio.BtnCloseClick(Sender: TObject);
begin
  if RegistroModificado then
  begin
    Case InteliDialog.ShowModal('Se han realizado modificaciones', '¿Desea grabar estas modificaciones antes de cerrar la ventana?' + #10 + #10 + 'Si No graba las modificaciones estas se perderán.', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
      mrYes: begin ConcretarTransaccion; close; end;
      mrNo: begin CancelarTransaccion; close; end;
      mrCancel: ; // No hacer nada
    End;
  end
  else
  begin
    if EnTransaccion then
      CancelarTransaccion;

    Close;
  end;
end;

procedure TFrmCargosxConvenio.BtnRecClick(Sender: TObject);
begin
  if EnTransaccion then
    ConcretarTransaccion;
  Close;
end;

procedure TFrmCargosxConvenio.cargarcargos();
var
  i: integer;
begin
  try
    ListView1.Items.Clear;
    cdcargos.First;
    while not cdcargos.Eof do
    begin
       Memcarmues:=Tjvmemorydata.Create(nil);
       Memcarmues.CopyStructure(cdcargos);

       for i := 0 to (Memcarmues.FieldDefs.Count-1) do
       begin
          Memcarmues.FieldDefs.Items[i].Required:=false;
       end;

       Memcarmues.Open;

       Memcarmues.Append;
       for i := 0 to (cdcargos.FieldDefs.Count-1) do
       begin
          Memcarmues.FieldByName(cdcargos.FieldDefs.Items[i].Name).AsVariant:=cdcargos.FieldByName(cdcargos.FieldDefs.Items[i].Name).AsVariant;
       end;
       Memcarmues.Post;

       ListView1.AddItem(cdcargos.FieldByName('titulocargo').AsString, Memcarmues);
       ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 0;
       cdcargos.next;
     end;
  except
    raise;
  end;
end;


procedure TFrmCargosxConvenio.docasigconv();
var
  i: integer;
begin
  try
    ListView2.Items.Clear;
    cdcarasigconv.First;
    while not cdcarasigconv.Eof do
    begin
       Dasigconv:=Tjvmemorydata.Create(nil);
       Dasigconv.CopyStructure(cdcarasigconv);

       for i := 0 to (Dasigconv.FieldDefs.Count-1) do
       begin
          Dasigconv.FieldDefs.Items[i].Required:=false;
       end;

       Dasigconv.Open;
       Dasigconv.Append;
       for i := 0 to (cdcarasigconv.FieldDefs.Count-1) do
       begin
          Dasigconv.FieldByName(cdcarasigconv.FieldDefs.Items[i].Name).AsVariant:=cdcarasigconv.FieldByName(cdcarasigconv.FieldDefs.Items[i].Name).AsVariant;
       end;
       Dasigconv.Post;

       ListView2.AddItem(cdcarasigconv.FieldByName('titulocargo').AsString, Dasigconv);
       ListView2.Items.Item[ListView2.Items.Count -1].ImageIndex := 1;
       cdcarasigconv.next;
     end;
  except
    raise;
  end;
end;




procedure TFrmCargosxConvenio.Eliminar1Click(Sender: TObject);
begin
   try
     if assigned(listview2.Selected) then
     begin
        if Cdarasigconvupt.Active=false then
        begin
           if Not CrearConjunto(Cdarasigconvupt, 'rhu_doctosxcargovacante', ccupdate) then
              raise Inteligentconnection.CreateByCode(5, ['Eliminacion del cargo y sus documentos']);
           if Not CargarDatosFiltrados(Cdarasigconvupt, 'IdConvenio,IdCargo', [TJvmemorydata(listview2.Selected.Data).FieldByName('IdConvenio').AsInteger, TJvmemorydata(listview2.Selected.Data).FieldByName('idcargo').AsInteger]) then
              raise Inteligentconnection.CreateByCode(6, ['Eliminacion del cargo y sus documentos', inttostr(TJvmemorydata(listview2.Selected.Data).FieldByName('IdConvenio').AsInteger)+' '+inttostr(TJvmemorydata(listview2.Selected.Data).FieldByName('idcargo').AsInteger), 'Id. Convenio, Id. Cargo']);
           Cdarasigconvupt.open;
        end
        else
        begin
           if Not CargarDatosFiltrados(Cdarasigconvupt, 'IdConvenio,IdCargo', [TJvmemorydata(listview2.Selected.Data).FieldByName('IdConvenio').AsInteger, TJvmemorydata(listview2.Selected.Data).FieldByName('idcargo').AsInteger]) then
              raise Inteligentconnection.CreateByCode(6, ['Eliminacion del cargo y sus documentos', inttostr(TJvmemorydata(listview2.Selected.Data).FieldByName('IdConvenio').AsInteger)+' '+inttostr(TJvmemorydata(listview2.Selected.Data).FieldByName('idcargo').AsInteger), 'Id. Convenio, Id. Cargo']);
           Cdarasigconvupt.Refresh;
        end;

        try
          IniciarTransaccion;

          Cdarasigconvupt.First;
          while not Cdarasigconvupt.Eof do
          begin
            Cdarasigconvupt.Delete;
            Cdarasigconvupt.ApplyUpdates(-1);
          end;

          if EnTransaccion then
            ConcretarTransaccion;
        except
          if EnTransaccion then
            CancelarTransaccion;
          raise;
        end;


        listview2.Selected.Destroy;
        listview3.Clear;

        cdcarasigconv.Refresh;
        cddocasigcarconve.Refresh;
     end;
   except
      on e:inteligentconnection do
        InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

      on e:exception do
         InteliDialog.ShowModal('Error al dar de alta un cargo', e.Message, mtInformation, [mbOk], 0);
   end;
end;


Procedure TFrmCargosxConvenio.cargardocasigconv();
var
  i: integer;
begin
  try
      ListView3.Items.Clear;
      cddocasigcarconve.First;
      while not cddocasigcarconve.Eof do
      begin
          Memcargardocasigconv:=Tjvmemorydata.Create(nil);
          Memcargardocasigconv.LoadFromDataSet(cddocasigcarconve, 1, jvmemorydataset.lmCopy, true);
          ListView3.AddItem(cddocasigcarconve.FieldByName('nombredoc').AsString, Memcargardocasigconv);
          if cddocasigcarconve.FieldByName('cantdoc').AsInteger>1 then
          begin
            ListView3.Items.Item[ListView3.Items.Count -1].ImageIndex := 4;
          end
          else
          begin
            ListView3.Items.Item[ListView3.Items.Count -1].ImageIndex := 5;
          end;
          cddocasigcarconve.next;
      end;
  except
    raise;
  end;

end;

procedure TFrmCargosxConvenio.CdarasigconvuptAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  RegistroModificado := True;
end;

procedure TFrmCargosxConvenio.cdcargosuptAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  RegistroModificado := True;
end;

end.
