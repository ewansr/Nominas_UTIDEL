unit UTFrmDatosConExtrasXEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvShapeButton, ExtCtrls, ComCtrls, DB, StdCtrls, AdvEdit, DBAdvEd,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid, AdvCombo,
  AdvDBComboBox, NxColumns, NxDBColumns, AdvDateTimePicker, AdvDBDateTimePicker,
  DBClient,UInteliDialog, DBCtrls, JvDBImage, AdvSmoothPanel,URegistro,
  JvExExtCtrls, JvImage;

type
  TModoConjunto = (Crear,Eliminar);

  Tentero = class
    Identificador: integer;
  end;

  TModoPanel = (Catalogo,Alteracion);

  TFrmDatosConExtrasXEmpleado = class(TForm)
    Panel1: TPanel;
    DsConceptos: TDataSource;
    PnlEmpleado: TPanel;
    Panel3: TPanel;
    pnlConceptos: TPanel;
    ListaEmpleados: TListView;
    ListaConceptos: TListView;
    PanelBarraLugar: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DsConExXEmp: TDataSource;
    DsEmpleados: TDataSource;
    CdConceptos: TClientDataSet;
    CdEmpleados: TClientDataSet;
    CdConExtXEmp: TClientDataSet;
    MdConExXEmp: TClientDataSet;
    CdUptConExtXEmp: TClientDataSet;
    SplEmpleadosInt: TSplitter;
    SplConceptosInt: TSplitter;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    GridConceptosxEmpleado: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBTextColumn11: TNxDBTextColumn;
    SplDatos: TSplitter;
    spConceptos: TSplitter;
    SplEmpleados: TSplitter;
    Panel6: TPanel;
    BtnClose: TAdvShapeButton;
    PnlCatalogo: TPanel;
    PnlEdicion: TPanel;
    BtnSave: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    BtnEdit: TAdvShapeButton;
    BtnRefresh: TAdvShapeButton;
    BtnDelete: TAdvShapeButton;
    BtnAdd: TAdvShapeButton;
    EdtSaldo: TDBAdvEdit;
    CbbModo: TAdvDBComboBox;
    DsUptConExtEmp: TDataSource;
    dbtxtNombreCompleto: TDBText;
    JvDBImage1: TJvDBImage;
    EdtFDepartmento: TAdvEdit;
    EdtFNombre: TAdvEdit;
    BtnBuscaEmpleado: TAdvShapeButton;
    lbl1: TLabel;
    lbl2: TLabel;
    EdtFFecha: TAdvDateTimePicker;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label1: TLabel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label2: TLabel;
    DBAdvEdit1: TDBAdvEdit;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit3: TDBAdvEdit;
    DBAdvEdit4: TDBAdvEdit;
    DBAdvEdit5: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    DBAdvEdit7: TDBAdvEdit;
    DBAdvEdit8: TDBAdvEdit;
    DBAdvEdit9: TDBAdvEdit;
    DBAdvEdit12: TDBAdvEdit;
    DBAdvEdit10: TDBAdvEdit;
    DBAdvEdit13: TDBAdvEdit;
    DBAdvEdit11: TDBAdvEdit;
    FAplicacion: TAdvDBDateTimePicker;
    EdtCantidad: TDBAdvEdit;
    CBXVencimiento: TCheckBox;
    FVencimiento: TAdvDBDateTimePicker;
    CBXMonto: TCheckBox;
    EdtMaximo: TDBAdvEdit;
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListaEmpleadosSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure GridConceptosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListaConceptosSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRefreshClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnBuscaEmpleadoClick(Sender: TObject);
    procedure CdConExtXEmpAfterScroll(DataSet: TDataSet);
    procedure EdtFNombreKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBXVencimientoClick(Sender: TObject);
    procedure CBXMontoClick(Sender: TObject);
    procedure GridConceptosxEmpleadoDblClick(Sender: TObject);
  private
    function Conjuntos(Opc: tmodoconjunto): Boolean;
    procedure LLenarListaConceptos(Refrescar: Boolean = False);
    procedure LLenarListaPersonal(Refrescar: Boolean = False);
    procedure filtrar(Elemento:integer);
    procedure FiltrarConcepto(Elemento: integer);
    procedure ManipularPanel(Modo: TModoPanel);
    procedure AccedeACoordenadas(Guardar:Boolean = False);
    procedure CoordenadaSpliter(Escribir: Boolean = False);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDatosConExtrasXEmpleado: TFrmDatosConExtrasXEmpleado;

implementation
uses ClientModuleUnit1;
{$R *.dfm}

procedure TFrmDatosConExtrasXEmpleado.BtnSaveClick(Sender: TObject);
begin
  try
    BtnSave.SetFocus;

    //validaciones internas

    if length(Trim(CdUptConExtXEmp.FieldByName('maximo').AsString)) = 0 then
      CdUptConExtXEmp.FieldByName('maximo').AsFloat := 0;

    if CdUptConExtXEmp.FieldByName('maximo').AsFloat = 0 then
      CdUptConExtXEmp.FieldByName('saldo').AsFloat := -1
    else
      CdUptConExtXEmp.FieldByName('saldo').AsFloat := 0;

    if not CBXMonto.Checked then
      CdUptConExtXEmp.FieldByName('maximo').AsFloat := 0;

    if CdUptConExtXEmp.FieldByName('maximo').AsFloat < CdUptConExtXEmp.FieldByName('saldo').AsFloat then
      raise InteligentException.Create('El valor del saldo debe ser menor que el valor de máximo, verifique lo capturado.');

    if length(Trim(CdUptConExtXEmp.FieldByName('cantidad').AsString)) = 0 then
      raise InteligentException.Create('Debe capturar un valor en el campo cantidad.');

    if CdUptConExtXEmp.State in [dsInsert,dsEdit] then
    begin
      CdUptConExtXEmp.Post;
      CdUptConExtXEmp.ApplyUpdates(-1);
    end;

    ManipularPanel(Catalogo);

    CdConExtXEmp.Refresh;
  except
    on e:InteligentException do
      InteliDialog.ShowModal('No se puede Guardar el registro por el motivo siguiente:', e.message, e.MsgType, [mbOk], 0);

    on e:exception do
    begin
      InteliDialog.ShowModal('Error, No se puede Guardar el registro por el motivo siguiente:', e.message, mterror, [mbOk], 0);
      ManipularPanel(Catalogo);
    end;
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
begin
  // Buscar la última posición utilizada por el usuario
  xLeft := Self.Left;
  xTop := Self.Top;
  xWidth := Self.Width;
  xHeight := Self.Height;
  Try
    xLeft := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Left', Existe));
    if Not Existe then xLeft := Self.Left;
  Except
    xLeft := Self.Left;
  End;

  Try
    xTop := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Top', Existe));
    if Not Existe then xTop := Self.Top;
  Except
    xTop := Self.Top;
  End;

  Try
    xWidth := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Width', Existe));
    if Not Existe then xWidth := Self.Width;
  Except
    xWidth := Self.Width;
  End;

  Try
    xHeight := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'Height', Existe));
    if Not Existe then xHeight := Self.Height;
  Except
    xHeight := Self.Height;
  End;

  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Left := xLeft;
  Self.Width := xWidth;
  Self.Top := xTop;
  Self.Height := xHeight;
  CoordenadaSpliter;
end;

procedure TFrmDatosConExtrasXEmpleado.CoordenadaSpliter(Escribir:Boolean);
var Valor:Integer;
  Existe :Boolean;
begin
  case Escribir of
    True:
    begin
      //top
      SetRegistry('\Ventanas', '\' + self.Name, 'TopEmpI', IntToStr(ListaEmpleados.Height));
      SetRegistry('\Ventanas', '\' + self.Name, 'TopConI', IntToStr(ListaConceptos.Height));
      SetRegistry('\Ventanas', '\' + self.Name, 'TopDatos', IntToStr(Panel5.Height));

      //left
      SetRegistry('\Ventanas', '\' + self.Name, 'LeftConceptos', IntToStr(pnlConceptos.Width));
      SetRegistry('\Ventanas', '\' + self.Name, 'LeftEmpleados', IntToStr(PnlEmpleado.Width));
    end;

    False:
    begin
    //Top
      Try
        Valor := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'TopEmpI', Existe));
        if Not Existe then Valor := ListaEmpleados.Height;
      Except
        Valor := ListaEmpleados.Height;
      End;
      ListaEmpleados.Height:=Valor;

      Try
        Valor := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'TopConI', Existe));
        if Not Existe then Valor := ListaConceptos.Height;
      Except
        Valor := ListaConceptos.Height;
      End;
      ListaConceptos.Height := Valor;

      Try
        Valor := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'TopDatos', Existe));
        if Not Existe then Valor := Panel5.Height;
      Except
        Valor := Panel5.Height;
      End;
      Panel5.Height := Valor;

    //Left
      Try
        Valor := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'LeftConceptos', Existe));
        if Not Existe then Valor := pnlConceptos.Width;
      Except
        Valor := pnlConceptos.Width;
      End;
      pnlConceptos.Width := Valor;
      Try
        Valor := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'LeftEmpleados', Existe));
        if Not Existe then Valor :=  PnlEmpleado.Width;
      Except
        Valor := PnlEmpleado.Width;
      End;
      PnlEmpleado.Width := Valor;
    end;
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.BtnAddClick(Sender: TObject);
begin
  try
    if (ListaEmpleados.Items.Count = 0) or (ListaEmpleados.Selected = nil) then
      raise InteligentException.CreateByCode(26, ['empleado']);

    CdUptConExtXEmp.Close;
    if not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado',[-9]) then
      raise InteligentConnection.CreateByCode(6, ['nom_conceptoextraxempleado','-9','IdConceptoExtraxEmpleado']);
    CdUptConExtXEmp.Open;

    if CdUptConExtXEmp.RecordCount = 1 then
      raise InteligentException.CreateByCode(14,['concepto extra por empleado']);

    if ListaConceptos.Items.Count > 0 then
    begin
      ListaConceptos.ItemIndex := 0;
      ListaConceptos.ItemFocused := ListaConceptos.Items[0];
      ListaConceptosSelectItem(ListaConceptos,ListaConceptos.Items.Item[0], True);
    end;

    CdUptConExtXEmp.Append;
    CdUptConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsInteger := 0;
    CdUptConExtXEmp.FieldByName('idpersonal').AsInteger := CdEmpleados.FieldByName('idpersonal').AsInteger;
    CdUptConExtXEmp.FieldByName('idconceptoextra').AsInteger := CdConceptos.FieldByName('idconceptoextra').AsInteger;
    CdUptConExtXEmp.FieldByName('modo').asstring := 'NOMINA';
    CdUptConExtXEmp.FieldByName('fechaaplicacion').AsDateTime := Now;

    //iniciar con las 2 negativas
    //sin fecha de termino vencimiento
    CdUptConExtXEmp.FieldByName('fechatermino').AsDateTime := Now+30;
    FVencimiento.Checked := False;
    FVencimiento.Enabled := False;

    //Sin maximo
    EdtMaximo.Enabled := False;
    CdUptConExtXEmp.FieldByName('maximo').AsInteger := 0;

    ManipularPanel(Alteracion);
  except
    on e:InteligentConnection do
    begin
      if CdUptConExtXEmp.State = dsInsert then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede crear el nuevo registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:InteligentException do
    begin
      if CdUptConExtXEmp.State = dsInsert then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede crear el nuevo registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:exception do
    begin
      if CdUptConExtXEmp.State = dsInsert then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede crear el nuevo registro debido a lo siguiente.', e.message, mtError, [mbOk], 0)
    end;
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.BtnBuscaEmpleadoClick(Sender: TObject);
Var
  Parametros: TParamFilter;
begin
  try
    Parametros := TParamFilter.Create;

    CdEmpleados.Close;
    EdtFNombre.Text := TrimRight(TrimLeft(EdtFNombre.Text));
    try
      {if Trim(EdtFNombre.Text) <> '' then
        Parametros.Add('nombres','%'+ EdtFNombre.Text + '%');}

      if Trim(EdtFDepartmento.Text) <> '' then
      begin
        Parametros.Add('titulodepartamento', Trim(EdtFDepartmento.Text) + '%');

        if edtffecha.Checked then
        Parametros.Add('fechaalta', Trim(ClientModule1.DatetoStrSql(edtffecha.Date)) );

        CargarDatosFiltrados(CdEmpleados,Parametros.Campos, Parametros.Datos);
      end
      else
      begin
        if EdtFNombre.Text <> '' then
        CargarDatosFiltrados(CdEmpleados, 'CadenaBuscar', [EdtFNombre.Text]);
      end;




    finally
      CdEmpleados.Open;
      LLenarListaPersonal;
    end;

  finally
    Parametros.Free;
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.BtnCancelClick(Sender: TObject);
begin
  try
    if CdUptConExtXEmp.State in [dsEdit,dsInsert] then
      CdUptConExtXEmp.Cancel;
  finally
    ManipularPanel(Catalogo);
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmDatosConExtrasXEmpleado.BtnDeleteClick(Sender: TObject);
var mensaje:string;
begin
  try
    if CdConExtXEmp.RecordCount = 0 then
      raise InteligentException.CreateByCode(26,['concepto extra por empleado']);

    CdUptConExtXEmp.Close;
    Mensaje := Format('¿Está seguro de eliminar el registro [%s]?',[CdConExtXEmp.FieldByName('claveconcepto').AsString]);
    if InteliDialog.ShowModal('Confirmación', Mensaje, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      if not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado',[CdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsInteger]) then
        raise InteligentConnection.CreateByCode(6, ['concepto extra por empleado',CdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').asstring,'IdConceptoExtraxEmpleado']);

      CdUptConExtXEmp.Open;

      if CdUptConExtXEmp.RecordCount <> 1 then
        raise InteligentException.CreateByCode(27,['concepto extra por empleado',CdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsString]);

      CdUptConExtXEmp.Delete;
      CdUptConExtXEmp.ApplyUpdates(-1);

      CdConExtXEmp.Refresh;
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal('No se puede eliminar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0);

    on e:InteligentException do
      InteliDialog.ShowModal('No se puede eliminar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0);

    on e:exception do
      InteliDialog.ShowModal('No se puede eliminar el registro debido a lo siguiente.', e.message, mtError, [mbOk], 0);

  end;
end;

procedure TFrmDatosConExtrasXEmpleado.BtnEditClick(Sender: TObject);
begin
  try
    if CdConExtXEmp.RecordCount = 0 then
      raise InteligentException.CreateByCode(26,['concepto extra por empleado']);

    CdUptConExtXEmp.Close;
    if not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado',[CdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsInteger]) then
      raise InteligentConnection.CreateByCode(6, ['concepto extra por empleado',CdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsString,'IdConceptoExtraxEmpleado']);

    CdUptConExtXEmp.Open;

    if CdUptConExtXEmp.RecordCount <> 1 then
      raise InteligentException.CreateByCode(27,['concepto extra por empleado',CdConExtXEmp.FieldByName('IdConceptoExtraxEmpleado').AsString]);

    CdUptConExtXEmp.Edit;
    CdUptConExtXEmp.FieldByName('idconceptoextra').AsInteger := CdConceptos.FieldByName('idconceptoextra').AsInteger;

    //Precargar opciones seleccionada
    //Tiene fecha de vencimeinto?
    if length(trim(CdUptConExtXEmp.FieldByName('FechaTermino').AsString)) > 0 then
      CBXVencimiento.Checked := True
    else
      CBXVencimiento.Checked := False;
    FVencimiento.Checked := CBXVencimiento.Checked;
    FVencimiento.Enabled := CBXVencimiento.Checked;

    //Tiene Monto maximo?
    if CdUptConExtXEmp.FieldByName('maximo').AsFloat > 0 then
      CBXMonto.Checked := True
    else
      CBXMonto.Checked := False;

    EdtMaximo.Enabled := CBXMonto.Checked;

    ManipularPanel(Alteracion);
  except
    on e:InteligentConnection do
    begin
      if CdUptConExtXEmp.State = dsedit then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede editar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:InteligentException do
    begin
      if CdUptConExtXEmp.State = dsedit then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede editar el registro debido a lo siguiente.', e.message, e.MsgType, [mbOk], 0)
    end;

    on e:exception do
    begin
      if CdUptConExtXEmp.State = dsedit then
        CdUptConExtXEmp.Cancel;
        InteliDialog.ShowModal('No se puede editar el registro debido a lo siguiente.', e.message, mtError, [mbOk], 0)
    end;
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.BtnRefreshClick(Sender: TObject);
begin
  CdConExtXEmp.Refresh;
end;

procedure TFrmDatosConExtrasXEmpleado.CdConExtXEmpAfterScroll(
  DataSet: TDataSet);
begin
  if CdConExtXEmp.RecordCount > 0 then
  begin
    with CdConceptos do
    begin
      if state = dsBrowse then
        filtrarConcepto(CdConExtXEmp.FieldByName('idconceptoextra').AsInteger);
    end;
  end
  else
    if CdConExtXEmp.state = dsBrowse then
      filtrarConcepto(-9);

end;

procedure TFrmDatosConExtrasXEmpleado.CBXMontoClick(Sender: TObject);
begin
  CBXVencimiento.Checked := False;
  FVencimiento.Checked := False;
  FVencimiento.Enabled := false;

  EdtMaximo.Enabled := CBXMonto.Checked;
end;

procedure TFrmDatosConExtrasXEmpleado.CBXVencimientoClick(Sender: TObject);
begin
  FVencimiento.Checked := CBXVencimiento.Checked;
  FVencimiento.Enabled := FVencimiento.Checked ;

  CBXMonto.Checked := False;
  EdtMaximo.Enabled := False;
end;

Function TFrmDatosConExtrasXEmpleado.Conjuntos(Opc:tmodoconjunto):Boolean;
begin
  //creamos o eliminamos el conjunto de acuerdo a la opción
  case opc of
    Crear:
    begin
      CdConceptos.Active := False;
      CdEmpleados.Active := False;
      CdConExtXEmp.Active := False;
      CdUptConExtXEmp.Active := False;

      if not crearconjunto(CdConceptos,'nom_conceptoextra',ccCatalog) then
        raise InteligentConnection.CreateByCode(5, ['Conceptos extras']);

      if not crearconjunto(CdEmpleados,'nuc_personal',ccCatalog) then
        raise InteligentConnection.CreateByCode(5, ['Personal' ]);

      if not crearconjunto(CdConExtXEmp,'nom_conceptosextraxempleado',ccSelect) then
        raise InteligentConnection.CreateByCode(5, ['Conceptos por empleado' ]);

      if not crearconjunto(CdUptConExtXEmp,'nom_conceptosextraxempleado',ccUpdate) then
        raise InteligentConnection.CreateByCode(5, ['Conceptos por empleado' ]);
    End;
    Eliminar:
    begin
      EliminarConjunto([CdConceptos,CdEmpleados,CdConExtXEmp,CdUptConExtXEmp]);
    end;
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.EdtFNombreKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    BtnBuscaEmpleado.Click;
end;

procedure TFrmDatosConExtrasXEmpleado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Conjuntos(Eliminar);
  CoordenadaSpliter(True);
  LiberarVentana(Self, Action);
end;

procedure TFrmDatosConExtrasXEmpleado.FormCreate(Sender: TObject);
begin
  ClientModule1.ComponentColor(Self);
  ClientModule1.RastrearGrids(Self);
end;

procedure TFrmDatosConExtrasXEmpleado.FormShow(Sender: TObject);
var Cur: TCursor;
begin
  try
    Cur := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      AccedeACoordenadas;
      Conjuntos(Crear);

      //abrimos los dataset necesarios
      CdConceptos.Open;
      LLenarListaConceptos;

      if Not CargarDatosFiltrados(CdEmpleados,'IdPersonal', [-9]) then
        raise InteligentConnection.CreateByCode(6, ['nuc_personal','-9','idpersonal']);
      CdEmpleados.Open;

      if Not CargarDatosFiltrados(CdConExtXEmp,'IdConceptoExtraxEmpleado', [-9]) then
        raise InteligentConnection.CreateByCode(6, ['nom_conceptoextraxempleado','-9','IdConceptoExtraxEmpleado']);
      CdConExtXEmp.Open;

      if Not CargarDatosFiltrados(CdUptConExtXEmp,'IdConceptoExtraxEmpleado', [-9]) then
        raise InteligentConnection.CreateByCode(6, ['nom_conceptoextraxempleado','-9','IdConceptoExtraxEmpleado']);
      CdUptConExtXEmp.Open;

      LLenarListaPersonal;

    finally
      Screen.Cursor := cur;
    end;
  Except
    on e:InteligentConnection do
    begin
      Try
        InteliDialog.ShowModal('No se puede acceder a la ventana solicitada', e.message, e.MsgType, [mbOk], 0)
      Finally
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      End;
    end;

    on e:Exception do
    begin
      try
        InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'La ventana solicitada no ha podido ser invocada debido a lo siguiente:' + #10 + #10 + e.message + #10 + #10 + 'Informe del administrador del sistema', mtError, [mbOk], 0);
      Finally
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  End;
end;

procedure TFrmDatosConExtrasXEmpleado.GridConceptosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key in [38,40] then
     Key := 0;
end;

procedure TFrmDatosConExtrasXEmpleado.GridConceptosxEmpleadoDblClick(
  Sender: TObject);
begin
  BtnEdit.Click;
end;

procedure TFrmDatosConExtrasXEmpleado.ListaConceptosSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  if ListaConceptos.Selected <> nil then
  begin
    filtrarConcepto(Tentero(ListaConceptos.Selected.Data).Identificador);
    if CdUptConExtXEmp.State in [dsEdit,dsInsert] then
      CdUptConExtXEmp.FieldByName('idconceptoextra').AsInteger := Tentero(ListaConceptos.Selected.Data).Identificador;
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.FiltrarConcepto(Elemento:integer);
var
  Parametros: TParamFilter;
begin
  //dataset local
  with CdConceptos do
  begin
    CancelRange;
    IndexFieldNames:='idconceptoextra';
    SetRangeStart;
    FieldByName('idconceptoextra').Value:=Elemento;
    SetRangeEnd;
    FieldByName('idconceptoextra').Value:=Elemento;
    ApplyRange;
  end;

end;

procedure TFrmDatosConExtrasXEmpleado.ListaEmpleadosSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  //cargar sus conceptos
  if ListaEmpleados.Selected <> nil then
    Filtrar(Tentero(ListaEmpleados.Selected.Data).Identificador);
end;

procedure TFrmDatosConExtrasXEmpleado.filtrar(Elemento:integer);
var
  Parametros: TParamFilter;
begin
  try
    try
      //dataset local
      with CdEmpleados do
      begin
        CancelRange;
        IndexFieldNames:='IdPersonal';
        SetRangeStart;
        FieldByName('IdPersonal').Value:=Elemento;
        SetRangeEnd;
        FieldByName('IdPersonal').Value:=Elemento;
        ApplyRange;
      end;

      Parametros := TParamFilter.Create;

      Parametros.Add('IdPersonal',IntToStr(Elemento));

      if CdConExtXEmp.Active then
        CdConExtXEmp.Close;

      if not CargarDatosFiltrados(CdConExtXEmp,Parametros.Campos,Parametros.Datos) then
        raise InteligentConnection.CreateByCode(6, ['nuc_personal',IntToStr(Elemento),'IdPersonal']);

      CdConExtXEmp.Open;

      CdConExtXEmp.First;
      if CdConExtXEmp.RecordCount > 0 then
        FiltrarConcepto(CdConExtXEmp.FieldByName('idconceptoextra').AsInteger);

    finally
      Parametros.Free;
    end;
  except
    on e:InteligentConnection do
      InteliDialog.ShowModal('Error, no sepuede filtrar por el siguiente motivo.', e.message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Error, no sepuede filtrar por el siguiente motivo', e.message,mtError, [mbOk], 0)
  end;

end;

procedure TFrmDatosConExtrasXEmpleado.LLenarListaConceptos(Refrescar:Boolean);
var IdU:Tentero;
begin
  if CdConceptos.State <> dsBrowse then
    raise Exception.Create('No se puede llenar la lista de conceptos');

  if Refrescar then
    CdConceptos.Refresh;
  ListaConceptos.Items.Clear;

  with CdConceptos do
  begin
    First;
    while not eof do
    begin
      IdU := Tentero.Create;
      IdU.Identificador := FieldByName('idconceptoextra').AsInteger;
      ListaConceptos.AddItem(FieldByName('claveconcepto').AsString+' : '+FieldByName('titulo').AsString,IdU);
      ListaConceptos.Items.Item[ListaConceptos.Items.Count-1].ImageIndex := 23;
      Next;
    end;
  end;

  if ListaConceptos.Items.Count > 0 then
  begin
    ListaConceptos.ItemIndex := 0;
    ListaConceptos.ItemFocused := ListaConceptos.Items[0];
    ListaConceptosSelectItem(ListaConceptos,ListaConceptos.Items.Item[0], True);
  end;
end;

procedure TFrmDatosConExtrasXEmpleado.LLenarListaPersonal(Refrescar:Boolean);
var IdU:Tentero;
begin
  if CdEmpleados.State <> dsBrowse then
    raise Exception.Create('No se puede llenar la lista del personal');

  if Refrescar then
    CdEmpleados.Refresh;
  ListaEmpleados.Items.Clear;
  with CdEmpleados do
  begin
    First;
    while not eof do
    begin
      IdU := Tentero.Create;
      IdU.Identificador := FieldByName('idpersonal').AsInteger;
      ListaEmpleados.AddItem(FieldByName('nombrecompleto').AsString+' : '+FieldByName('titulocargo').AsString+' : '+FieldByName('titulodepartamento').AsString,IdU);
      ListaEmpleados.Items.Item[ListaEmpleados.Items.Count-1].ImageIndex := 22;
      Next;
    end;
  end;
  ListaEmpleados.ViewStyle := vsIcon;
  ListaEmpleados.ViewStyle := vsList;
  if ListaEmpleados.Items.Count > 0 then
  begin
    ListaEmpleados.ItemIndex := 0;
    ListaEmpleados.ItemFocused := ListaEmpleados.Items[0];
    ListaEmpleadosSelectItem(ListaEmpleados,ListaEmpleados.Items.Item[0], True);
  end
  else
    Filtrar(-9);

end;

procedure TFrmDatosConExtrasXEmpleado.ManipularPanel(Modo:TModoPanel);
begin
  case Modo of
    Catalogo:
    begin
      PnlEdicion.Visible := False;
      pnlConceptos.Visible := False;
      PnlEmpleado.Visible := True;
      PnlCatalogo.Visible := True;
      GridConceptosxEmpleado.Visible := True;
    end;

    Alteracion:
    begin
      PnlEdicion.Visible := True;
      pnlConceptos.Visible := True;
      PnlEmpleado.Visible := False;
      PnlCatalogo.Visible := false;
      spConceptos.Align := alnone;
      spConceptos.Align := alRight;
      GridConceptosxEmpleado.Visible := False;
    end;
  end;
end;
end.
