unit UTFrmVentanaPrincipalTIC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DB, DBClient, UinteliDialog, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, StdCtrls, NxColumns, NxDbColumns,
  NxDBGrid, Mask, DBCtrls, JvExControls, JvLabel, RxToolEdit, RXDBCtrl,
  NxCollection, UTFrmMantenimientos, JvExStdCtrls, JvBehaviorLabel,
  UTFrmDevolucionIndividualIns, UTFrmAsignacionIndividualTIC, Menus,
  UTFrmVerMantto, AdvDBLookupComboBox, UTFrmDisciplinas, StrUtils,
  UTFrmCriteriosBusqeudaTic, UTFrmGrupos, UTFrmSubgrupos, UTFrmArticulo2, URegistro,
  frxClass, frxDBSet, UTFrmModificacionInsumo, ExBar, UInfoPanel, ToolPanels;

  type
    PDatos = ^TNDatos;
    TNDatos = Record
      Id: Integer;
      Codigo: String;
  end;

  type
    Tbusquedadet = class
    grupo : string;
    subgrupo : string;
    area : string;
    articulo : string;
  end;

  type
    Tconsultas = class
    consultainsumos : string;
    conultimomanttoprev : string;
    conultimomanttocorrect : string;
    conproxmanttoprev : string;
    coninsasignados : string;
    coninsnoasignados : string;
  end;

  type
    TCriterio = Class
      Llave: Integer;
      Titulo: String;
      constructor Create;
  End;


 type
  TFrmVentanaPrincipalTIC = class(TForm)
    Panel4: TPanel;
    cdareas: TClientDataSet;
    dsareas: TDataSource;
    cdgrupos: TClientDataSet;
    dsgrupos: TDataSource;
    cdsubgrupos: TClientDataSet;
    dssubgrupos: TDataSource;
    dsdetespxarxgrxsg: TDataSource;
    cddetespxarxgrxsg: TClientDataSet;
    memespecificados: TClientDataSet;
    dsmemespecificados: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Panel5: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    cdresasigact: TClientDataSet;
    dsresasigact: TDataSource;
    cdhistorialasig: TClientDataSet;
    dshistorialasig: TDataSource;
    GroupBox6: TGroupBox;
    NextDBGrid1: TNextDBGrid;
    GroupBox7: TGroupBox;
    JvLabel15: TJvLabel;
    DBEdit10: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit2: TDBEdit;
    JvLabel2: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel1: TJvLabel;
    JvLabel3: TJvLabel;
    DBEdit3: TDBEdit;
    JvLabel4: TJvLabel;
    DBMemo1: TDBMemo;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBDateColumn1: TNxDBDateColumn;
    NxDBDateColumn2: TNxDBDateColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBMemoColumn1: TNxDBMemoColumn;
    GroupBox10: TGroupBox;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    GroupBox11: TGroupBox;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    Panel1: TPanel;
    Panel15: TPanel;
    GroupBox4: TGroupBox;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    JvLabel5: TJvLabel;
    JvLabel14: TJvLabel;
    JvLabel13: TJvLabel;
    DBEdit4: TDBEdit;
    GroupBox5: TGroupBox;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    DBEdit7: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBMemo2: TDBMemo;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    GroupBox13: TGroupBox;
    NxButton5: TNxButton;
    NxButton6: TNxButton;
    TabSheet10: TTabSheet;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    cdmanttoprev: TClientDataSet;
    cdmanttocorrect: TClientDataSet;
    dsmanttoprev: TDataSource;
    dsmanttocorrect: TDataSource;
    GroupBox14: TGroupBox;
    JvLabel18: TJvLabel;
    DBEdit11: TDBEdit;
    GroupBox15: TGroupBox;
    Panel16: TPanel;
    GroupBox9: TGroupBox;
    NextDBGrid2: TNextDBGrid;
    NxDBTextColumn5: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBDateColumn3: TNxDBDateColumn;
    NxDBMemoColumn2: TNxDBMemoColumn;
    NxDBMemoColumn3: TNxDBMemoColumn;
    GroupBox16: TGroupBox;
    JvLabel19: TJvLabel;
    DBEdit12: TDBEdit;
    Panel17: TPanel;
    GroupBox12: TGroupBox;
    NextDBGrid3: TNextDBGrid;
    NxDBTextColumn9: TNxDBTextColumn;
    NxDBTextColumn10: TNxDBTextColumn;
    NxDBTextColumn11: TNxDBTextColumn;
    NxDBTextColumn12: TNxDBTextColumn;
    NxDBDateColumn4: TNxDBDateColumn;
    NxDBMemoColumn4: TNxDBMemoColumn;
    NxDBMemoColumn5: TNxDBMemoColumn;
    GroupBox17: TGroupBox;
    JvLabel20: TJvLabel;
    DBEdit13: TDBEdit;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    GroupBox18: TGroupBox;
    NextDBGrid4: TNextDBGrid;
    cdultimosmanttoprev: TClientDataSet;
    dsultimomanttoprev: TDataSource;
    NxDBTextColumn13: TNxDBTextColumn;
    NxDBTextColumn14: TNxDBTextColumn;
    NxDBDateColumn5: TNxDBDateColumn;
    NxDBMemoColumn6: TNxDBMemoColumn;
    NxDBMemoColumn7: TNxDBMemoColumn;
    cdultimomanttocorrect: TClientDataSet;
    dsultimomanttocorrect: TDataSource;
    Panel18: TPanel;
    GroupBox19: TGroupBox;
    NextDBGrid5: TNextDBGrid;
    NxDBTextColumn15: TNxDBTextColumn;
    NxDBTextColumn16: TNxDBTextColumn;
    NxDBDateColumn6: TNxDBDateColumn;
    NxDBMemoColumn8: TNxDBMemoColumn;
    NxDBMemoColumn9: TNxDBMemoColumn;
    GroupBox20: TGroupBox;
    NextDBGrid6: TNextDBGrid;
    NxDBTextColumn17: TNxDBTextColumn;
    NxDBTextColumn19: TNxDBTextColumn;
    cdsiguientemanttoprev: TClientDataSet;
    dssiguientemanttoprev: TDataSource;
    NxDBTextColumn20: TNxDBTextColumn;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    NextDBGrid7: TNextDBGrid;
    NextDBGrid8: TNextDBGrid;
    cdasignados: TClientDataSet;
    cdnoasignados: TClientDataSet;
    dsasignados: TDataSource;
    dsnoasignaqdos: TDataSource;
    NxDBTextColumn18: TNxDBTextColumn;
    NxDBTextColumn21: TNxDBTextColumn;
    NxDBTextColumn22: TNxDBTextColumn;
    NxDBDateColumn7: TNxDBDateColumn;
    NxDBTextColumn23: TNxDBTextColumn;
    NxDBTextColumn24: TNxDBTextColumn;
    NxDBDateColumn8: TNxDBDateColumn;
    NxDBTextColumn25: TNxDBTextColumn;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    griddetalle: TNextDBGrid;
    cdcriterios: TClientDataSet;
    dscriterios: TDataSource;
    dscriteriosup: TDataSource;
    cdcriteriosup: TClientDataSet;
    JvLabel21: TJvLabel;
    DBEdit14: TDBEdit;
    Panel19: TPanel;
    ProgressBar1: TProgressBar;
    Panel20: TPanel;
    JvLabel22: TJvLabel;
    memmanttosprev: TClientDataSet;
    dsmemmanttoprev: TDataSource;
    ninguno: TfrxReport;
    frxDBDOrganizacion: TfrxDBDataset;
    frxDBDAsignados: TfrxDBDataset;
    PopupMenu4: TPopupMenu;
    ModificarInsumo1: TMenuItem;
    DBEdit15: TDBEdit;
    JvLabel25: TJvLabel;
    NxDBTextColumn27: TNxDBTextColumn;
    NxDBTextColumn28: TNxDBTextColumn;
    NxDBTextColumn29: TNxDBTextColumn;
    NxDBTextColumn30: TNxDBTextColumn;
    NxDBTextColumn31: TNxDBTextColumn;
    NxDBTextColumn32: TNxDBTextColumn;
    cdpersonal: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    Panel2: TPanel;
    AdvToolPanelTab1: TAdvToolPanelTab;
    AdvToolPanel1: TAdvToolPanel;
    AdvToolPanel2: TAdvToolPanel;
    Edit6: TEdit;
    NxButton13: TNxButton;
    DBLookupComboBox1: TDBLookupComboBox;
    NxButton16: TNxButton;
    NxButton14: TNxButton;
    NxButton12: TNxButton;
    Splitter1: TSplitter;
    Edit1: TEdit;
    NxButton9: TNxButton;
    NxButton10: TNxButton;
    Edit2: TEdit;
    NxButton11: TNxButton;
    Edit3: TEdit;
    JvLabel27: TJvLabel;
    JvLabel28: TJvLabel;
    JvLabel29: TJvLabel;
    NxButton17: TNxButton;
    AdvToolPanel3: TAdvToolPanel;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit4: TEdit;
    NxButton18: TNxButton;
    JvLabel26: TJvLabel;
    cddescripciones: TClientDataSet;
    dsdescripciones: TDataSource;
    JvLabel30: TJvLabel;
    JvLabel31: TJvLabel;
    JvLabel32: TJvLabel;
    dspersonal: TDataSource;
    FrxValeResguardoEntrega: TfrxReport;
    cdresguardosdevueltos: TClientDataSet;
    dsresguardosdevueltos: TDataSource;
    frxValeDevolucion: TfrxReport;
    cdvaleresguardo: TClientDataSet;
    frxImprimirMantto: TfrxReport;
    cdmanttoreporte: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure memespecificadosAfterScroll(DataSet: TDataSet);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxButton14Click(Sender: TObject);
    procedure NxButton15Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure NxButton13Click(Sender: TObject);
    procedure NxButton16Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton8Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure griddetalleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ModificarInsumo1Click(Sender: TObject);
    procedure cddetespxarxgrxsgAfterScroll(DataSet: TDataSet);
    procedure buscarcritClick(Sender: TObject);
    procedure ItemClick(Sender: TObject; Id: Integer);
    function FiltroAreas: Boolean;
    function FiltroGrupo: Boolean;
    function FiltroSubgrupo: Boolean;
    function FiltroArticulo: Boolean;
    procedure FormCreate(Sender: TObject);
    procedure NxButton17Click(Sender: TObject);
    procedure NxButton18Click(Sender: TObject);
  private
    critbusqueda : Tbusquedadet;
    arbolonchange : boolean;
    banderanuminsumo : integer;
    FExSplitter: TSplitter;
    FExBar: TExBar;
    ListaCriterio: Array[0..3] of TCriterio;
    function consulta_criterios(criterio : string) : TConsultas;
    procedure cargardatosmem;
    procedure AccedeACoordenadas;
    procedure cargarbusqueda(cadena, consultaarealizar : string);
    procedure imprimirvalederesguardo(idresguardo, cantregistros, idpersonal: integer);
    procedure cargarbusqueda2(cadena: string);
    procedure clickdeprueba;
    procedure asignarinsumoclick;
    procedure devolverinsumoclick;
    procedure generarmanttoprevclick;
    procedure genmanttocorrectclick;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVentanaPrincipalTIC: TFrmVentanaPrincipalTIC;

implementation
 uses
    ClientModuleUnit1, xDatabase, DMTicRepModuleUnit;
{$R *.dfm}

//......................Ex Bar .................................................
constructor TCriterio.Create;
begin
  Llave := -1;
  Titulo := '';
end;

procedure TFrmVentanaPrincipalTIC.ItemClick(Sender: TObject; Id: Integer);
begin
  case Id of
    0: begin
        if cddetespxarxgrxsg.Active=true then
        begin
          if (cddetespxarxgrxsg.RecordCount > 0) and (cddetespxarxgrxsg.FieldByName('asignado').AsString ='N/A')  then
          begin
            asignarinsumoclick;
          end
          else
          begin
            InteliDialog.ShowModal('No se puede asignar el insumo', 'Tiene que haber insumos en el resultado de busqueda o el insumo se encuentra ya asignado', mtInformation, [mbOk], 0);
          end;
        end
        else
        begin
          InteliDialog.ShowModal('No se puede asignar el insumo', 'No ha realizado ninguna busqueda', mtInformation, [mbOk], 0);
        end;
       end;
    //..........................................................................
    1:begin
        if cddetespxarxgrxsg.Active=true then
        begin
          if (cddetespxarxgrxsg.RecordCount > 0) and (cddetespxarxgrxsg.FieldByName('asignado').AsString <>'N/A')  then
          begin
            devolverinsumoclick;
          end
          else
          begin
            InteliDialog.ShowModal('No se puede asignar el insumo', 'Tiene que haber insumos en el resultado de busqueda o el insumo NO se encuentra asignado', mtInformation, [mbOk], 0);
          end;
        end
        else
        begin
          InteliDialog.ShowModal('No se puede asignar el insumo', 'No ha realizado ninguna busqueda', mtInformation, [mbOk], 0);
        end;
       end;
    //..........................................................................
    3:begin
      if cddetespxarxgrxsg.Active=true then
      begin
        if (cddetespxarxgrxsg.RecordCount > 0) and (cddetespxarxgrxsg.FieldByName('recurrencia').AsInteger<>0) then
        begin
          generarmanttoprevclick;
        end
        else
        begin
          InteliDialog.ShowModal('No se puede generar mantenimiento preventivo', 'No se ha realizado ninguna busqueda o verifique que el insumo tenga recurrencia mayor a cero', mtInformation, [mbOk], 0);
        end;
      end
      else
      begin
        InteliDialog.ShowModal('No se puede generar mantenimiento preventivo', 'No ha realizado ninguna busqueda', mtInformation, [mbOk], 0);
      end;
    end;
    //..........................................................................
    4:begin
      if cddetespxarxgrxsg.Active=true then
      begin
        if (cddetespxarxgrxsg.RecordCount > 0) then
        begin
          genmanttocorrectclick;
        end
        else
        begin
          InteliDialog.ShowModal('No se puede generar mantenimiento preventivo', 'No se ha realizado ninguna busqueda o verifique que el insumo tenga recurrencia mayor a cero', mtInformation, [mbOk], 0);
        end;
      end
      else
      begin
        InteliDialog.ShowModal('No se puede generar mantenimiento preventivo', 'No ha realizado ninguna busqueda', mtInformation, [mbOk], 0);
      end;
    end;
    //..........................................................................
    5: begin
      if (nextdbgrid2.SelectedCount>0) and (cdultimosmanttoprev.RecordCount>0) then
      begin
      application.CreateForm(TFrmVerMantto, FrmVerMantto);
      FrmVerMantto.dsmantenimiento.DataSet:=cdmanttoprev;
      FrmVerMantto.ShowModal;
      end
      else
      begin
        InteliDialog.ShowModal('No se puede ver el mantenimiento preventivo', 'El insumo no tiene historiales o no se ha seleccionado ningun mantenimiento preventivo del historial', mtInformation, [mbOk], 0);
      end;
    end;
    //..........................................................................
    12: begin
        if (nextdbgrid3.SelectedCount>0) and (cdultimomanttocorrect.RecordCount>0) then
        begin
          application.CreateForm(TFrmVerMantto, FrmVerMantto);
          FrmVerMantto.dsmantenimiento.DataSet:=cdmanttocorrect;
          FrmVerMantto.ShowModal;
        end
        else
        begin
          InteliDialog.ShowModal('No se puede ver el mantenimiento correctivo', 'El insumo no tiene historiales o no se ha seleccionado ningun mantenimiento preventivo del historial', mtInformation, [mbOk], 0);
        end;
    end;
    8: begin
            {
        if FiltroAreas then
              begin
              end;
      }
      nxbutton9.Click;
    end;
    9: begin
{
        if FiltroGrupo then
        begin
        end;
}
      nxbutton10.Click;
    end;
    10: begin
{
        if FiltroSubgrupo then
        begin
        end;
}
      nxbutton11.Click;
    end;
    11: begin
{
        if FiltroArticulo then
        begin
        end;
}
      nxbutton13.Click;
    end;
  end;
end;
//....................Procedimiento click de lso exbar..........................

procedure TFrmVentanaPrincipalTIC.genmanttocorrectclick();
begin
  application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
  FrmMantenimientos.dsinsumoseleccionado.DataSet:=memespecificados;
  FrmMantenimientos.tipomantenimiento:='CORRECTIVO';
  FrmMantenimientos.ComboBox1.Enabled := FALSE;
  FrmMantenimientos.Edit1.Enabled :=FALSE;
  FrmMantenimientos.ShowModal;
  cdmanttocorrect.refresh;
end;


procedure TFrmVentanaPrincipalTIC.generarmanttoprevclick();
begin
  application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
  FrmMantenimientos.dsinsumoseleccionado.DataSet:=memespecificados;
  FrmMantenimientos.tipomantenimiento:='PREVENTIVO';
  FrmMantenimientos.ComboBox1.Enabled := FALSE;
  FrmMantenimientos.Edit1.Enabled :=FALSE;
  FrmMantenimientos.ShowModal;
  cdmanttoprev.refresh;
end;

procedure TFrmVentanaPrincipalTIC.devolverinsumoclick();
begin
  if cdpersonal.Active = false then
   begin
    if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdresasigact.FieldByName('recibio').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdpersonal.Open;
   end
   else
   begin
    if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdresasigact.FieldByName('recibio').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdpersonal.Refresh;
   end;
  Application.CreateForm(TFrmDevolucionIndividualIns, FrmDevolucionIndividualIns);
  FrmDevolucionIndividualIns.dsresguardosasignados.DataSet:= cdresasigact;
  FrmDevolucionIndividualIns.ShowModal;
  cdhistorialasig.Refresh;
end;

procedure TFrmVentanaPrincipalTIC.asignarinsumoclick();
begin
   Application.CreateForm(TFrmAsignacionIndividualTIC, FrmAsignacionIndividualTIC);
   FrmAsignacionIndividualTIC.dsinsumo.DataSet:= cddetespxarxgrxsg;
   FrmAsignacionIndividualTIC.ShowModal;
   cdresasigact.Refresh;
end;


function TFrmVentanaPrincipalTIC.FiltroAreas: Boolean;
var
  registro: TLista;
  Form: TFrmDisciplinas;
begin
  try
    Try
      Application.CreateForm(TFrmDisciplinas, FrmDisciplinas);
      FrmDisciplinas.ModoSeleccion := True;
      registro := FrmDisciplinas.SeleccionarItem();
      if Assigned(registro) then
      begin
        Result := True;
        ListaCriterio[0].Llave := Registro.Valor['titulodisciplina'];
        TExMenuItem(FExBar.ExGroups.Items[4].Items[0]).Caption := 'Área: ' + registro.Valor['titulodisciplina'];
      end
      else
        Result := False;
    Finally
      FrmDisciplinas.Free;
    End;
  except
    on e:exception do
    begin
      Result := False;
      InteliDialog.ShowModal('Error de selección de registro', 'Tiene que seleccionar un registro, intente de nuevo.', mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmVentanaPrincipalTIC.FiltroGrupo: Boolean;
var
  registro: TLista;
begin
  Try
    Try
      Application.CreateForm(TFrmGrupos, FrmGrupos);
      FrmGrupos.ModoSeleccion := True;
      registro := FrmGrupos.SeleccionarItem();
      if Assigned(registro) then
      begin
        Result := True;
        ListaCriterio[1].Llave := Registro.Valor['titulogrupo'];
        TExMenuItem(FExBar.ExGroups.Items[4].Items[1]).Caption := 'Grupo: ' + registro.Valor['titulogrupo'];
      end
      else
        Result := False;
    Finally
      FrmGrupos.Free;
    End;
  except
    on e:exception do
    begin
      Result := False;
      InteliDialog.ShowModal('Error de selección de registro', 'Tiene que seleccionar un registro, intente de nuevo.', mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmVentanaPrincipalTIC.FiltroSubgrupo: Boolean;
var
  registro: TLista;
begin
  Try
    Try
      Application.CreateForm(TFrmSubgrupos, FrmSubgrupos);
      FrmSubgrupos.ModoSeleccion := True;
      registro := FrmSubgrupos.SeleccionarItem();
      if Assigned(registro) then
      begin
        Result := True;
        ListaCriterio[2].Llave := Registro.Valor['titulosubgrupo'];
        TExMenuItem(FExBar.ExGroups.Items[4].Items[2]).Caption := 'Subgrupo: ' + registro.Valor['titulosubgrupo'];
      end
      else
        Result := False;
    Finally
      FrmSubgrupos.Free;
    End;
  except
    on e:exception do
    begin
      Result := False;
      InteliDialog.ShowModal('Error de selección de registro', 'Tiene que seleccionar un registro, intente de nuevo.', mtInformation, [mbOk], 0);
    end;
  end;
end;

function TFrmVentanaPrincipalTIC.FiltroArticulo: Boolean;
var
  registro: TLista;
begin
  try
    Try
      Application.CreateForm(TFrmArticulo2, FrmArticulo2);
      FrmArticulo2.ModoSeleccion := True;
      registro := FrmArticulo2.SeleccionarItem();
      if Assigned(registro) then
      begin
        Result := True;
        ListaCriterio[3].Llave := Registro.Valor['tituloarticulo'];
        TExMenuItem(FExBar.ExGroups.Items[4].Items[3]).Caption := 'Artículo: ' + registro.Valor['tituloarticulo'];
      end
      else
        Result := False;
    Finally
      FrmArticulo2.Free;
    End;
  except
    on e:exception do
    begin
      Result := False;
      InteliDialog.ShowModal('Error de selección de registro', 'Tiene que seleccionar un registro, intente de nuevo.', mtInformation, [mbOk], 0);
    end;
  end;
end;
//..............................................................................
procedure TFrmVentanaPrincipalTIC.cargarbusqueda(cadena, consultaarealizar : string);
begin
  try
{
      griddetalle.DataSource:=nil;
      griddetalle.Columns.Clear;
}
    if cddetespxarxgrxsg.Active=false then
    begin
      if Not CrearConjunto(cddetespxarxgrxsg, 'tic_actdestesp_xar_xgr_sg', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cddetespxarxgrxsg, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cddetespxarxgrxsg.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cddetespxarxgrxsg, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cddetespxarxgrxsg.Refresh;
    end;
    ProgressBar1.Position:=30;
    if cdultimosmanttoprev.Active=false then
    begin
      if Not CrearConjunto(cdultimosmanttoprev, 'tic_mantto_auxiliares2', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdultimosmanttoprev, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdultimosmanttoprev.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdultimosmanttoprev, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdultimosmanttoprev.Refresh;
    end;
     ProgressBar1.Position:=40;
    if cdultimomanttocorrect.Active =false then
    begin
      if Not CrearConjunto(cdultimomanttocorrect, 'tic_mantto_auxiliares2', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdultimomanttocorrect, consultaarealizar, [cadena]) then
      raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdultimomanttocorrect.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdultimomanttocorrect, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdultimomanttocorrect.Refresh;
    end;
     ProgressBar1.Position:=50;
    if cdsiguientemanttoprev.Active=false then
    begin
      if Not CrearConjunto(cdsiguientemanttoprev, 'tic_mantto_auxiliares3', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.Refresh;
    end;
    ProgressBar1.Position:=60;
    if cdasignados.Active=false then
    begin
      if Not CrearConjunto(cdasignados, 'tic_resguardo_insumoasignado', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdasignados, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdasignados, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.Refresh;
    end;
     ProgressBar1.Position:=70;
    if cdasignados.Active=false then
    begin
      if Not CrearConjunto(cdasignados, 'tic_resguardo_insumoasignado', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdasignados, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdasignados, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.open;
    end;
     ProgressBar1.Position:=80;
    if cdnoasignados.Active=false then
    begin
      if Not CrearConjunto(cdnoasignados, 'tic_resguardo_insumoasignado', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdnoasignados, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdnoasignados.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdnoasignados, consultaarealizar, [cadena]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdnoasignados.Refresh;
    end;
    ProgressBar1.Position:=90;
    //cargardatosmem();
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error de acceso a datos', e.Message, mtError, [mbOk], 0);
    end;
  end;
end;



procedure TFrmVentanaPrincipalTIC.Edit1Click(Sender: TObject);
begin
{
    edit1.Enabled:=true;
    edit1.SetFocus;
    edit2.Enabled :=true;
    edit3.Enabled :=true;
}
end;

procedure TFrmVentanaPrincipalTIC.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    nxbutton12.Click;
  end;
end;

procedure TFrmVentanaPrincipalTIC.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    nxbutton12.Click;
  end;
end;

procedure TFrmVentanaPrincipalTIC.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    nxbutton12.Click;
  end;
end;

procedure TFrmVentanaPrincipalTIC.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    nxbutton12.Click;
  end;
end;

procedure TFrmVentanaPrincipalTIC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 LiberarVentana(Self, Action);
end;

procedure TFrmVentanaPrincipalTIC.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas;

  // Inicializar llaves de criterio
  ListaCriterio[0] := TCriterio.Create;
  ListaCriterio[1] := TCriterio.Create;
  ListaCriterio[2] := TCriterio.Create;
  ListaCriterio[3] := TCriterio.Create;

  Try
    // Crear el splitter de ancho de panel izquierdo
    FExSplitter := TSplitter.Create(self);
    FExSplitter.Parent := Self;
    FExSplitter.Align := alLeft;

    // Crear el panel izquierdo
    FExBar := TExBar.Create(self);

    Try   // Recuperando ancho de la barra
      FExBar.Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name, 'LeftPanelWidth'));
    Except
      ;
    End;

    with FExBar do
    begin
      BeginUpdate;
      SetSkin(InfoPanel.BlueImg.Picture.Bitmap);
      GroupIcons := InfoPanel.Icons32;
      ItemIcons := InfoPanel.Icons16;
      Parent := Self;
      Align := alLeft;
      OnMenuItemClick := ItemClick;

      // Crear el grupo "Archivo"
{
        with FExBar.ExGroups.Add('Archivo', True) do
        begin
          State := gsClosed;
          //AddMenuItem('Nuevo...', 'Nuevo', 0, 0);
        end;

}     with FExBar.ExGroups.Add('Busqueda', True) do
      begin
        GroupIconIndex := 3;
        AddMenuItem('Área: <Todas las áreas>', 'Haga click aquí para filtrar los datos por Área', 8, 0);
        AddMenuItem('Grupo: <Todos los grupos>', 'Haga click aquí para filtrar los datos por Grupo', 9, 0);
        AddMenuItem('Subgrupo: <Todos los Subgrupos>', 'Haga click aquí para filtrar los datos por Subgrupo', 10, 0);
        AddMenuItem('Artículo: <Todos los Artículos>', 'Haga click aquí para filtrar los datos por Artículo', 11, 0);
        AddLine('', clBlack, [], False);
      end;

      with FExBar.ExGroups.Add('Resguardos', True) do
      begin
        State := gsClosed;
        AddMenuItem('Asignar equipo', 'Haga click aquí para asignar equipos a empleados registrados', 0, 0);
        AddMenuItem('Devolver equipo', 'Haga click aquí para registrar una devolución de equipos', 1, 0);
        AddMenuItem('Ver resguardo', 'Haga click aquí para ver los resguardos', 2, 0);
      end;

      with FExBar.ExGroups.Add('Mantenimiento', True) do
      begin
        State := gsClosed;
        AddMenuItem('Capturar mantenimiento Preventivo', 'Hga click aquí para capturar un evento de mantenimiento Preventivo', 3, 0);
        AddMenuItem('Capturar mantenimiento Correctivo', 'Hga click aquí para capturar un evento de mantenimiento Correctivo', 4, 0);
        AddMenuItem('Ver mantenimiento Preventivo', 'Hga click aquí para ver mantenimiento', 5, 0);
        AddMenuItem('Ver mantenimiento Correctivo', 'Hga click aquí para ver mantenimiento', 12, 0);
      end;

      with FExBar.ExGroups.Add('Reportes', True) do
      begin
        AddMenuItem('Equipos asignados', 'Haga click aquí si desea emitir el reporte de los equipos asignados', 6, 0);
        AddMenuItem('Próximos mantenimientos', 'Haga click aquí si desea emitir el reporte de los mantenimientos programados', 7, 0);
      end;

      with FExBar.ExGroups.Add('Descripcion', True) do
      begin
        AddLine('Codigo Insumo:', clBlack, [fsBold], True);
        AddLine('', clblack, [], True);
        AddLine('Articulo', clblack, [fsBold], True);
        AddLine('', clblack, [], True);
        AddLine('Descripcion', clblack, [fsBold], True);
        AddLine('', clblack, [], True)
      end;
      EndUpdate;
      ShowAnimate;
    end;
  Except

  End;
end;
//..............................................................................

procedure TFrmVentanaPrincipalTIC.FormDestroy(Sender: TObject);
var
  h : integer;
begin
  if griddetalle.Columns.Count>0 then
  begin
    for h := 0 to griddetalle.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+griddetalle.Name, griddetalle.Columns.Item[h].Name, IntToStr(griddetalle.Columns.Item[h].Width));
  end;
  for h := 0 to NextDBGrid1.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid1.Name, NextDBGrid1.Columns.Item[h].Name, IntToStr(NextDBGrid1.Columns.Item[h].Width));
  for h := 0 to NextDBGrid2.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid2.Name, NextDBGrid2.Columns.Item[h].Name, IntToStr(NextDBGrid2.Columns.Item[h].Width));
  for h := 0 to NextDBGrid3.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid3.Name, NextDBGrid3.Columns.Item[h].Name, IntToStr(NextDBGrid3.Columns.Item[h].Width));
  for h := 0 to NextDBGrid4.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid4.Name, NextDBGrid4.Columns.Item[h].Name, IntToStr(NextDBGrid4.Columns.Item[h].Width));
  for h := 0 to NextDBGrid5.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid5.Name, NextDBGrid5.Columns.Item[h].Name, IntToStr(NextDBGrid5.Columns.Item[h].Width));
  for h := 0 to NextDBGrid6.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid6.Name, NextDBGrid6.Columns.Item[h].Name, IntToStr(NextDBGrid6.Columns.Item[h].Width));
  for h := 0 to NextDBGrid7.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid7.Name, NextDBGrid7.Columns.Item[h].Name, IntToStr(NextDBGrid7.Columns.Item[h].Width));
  for h := 0 to NextDBGrid8.Columns.Count -1 do
      SetRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid8.Name, NextDBGrid8.Columns.Item[h].Name, IntToStr(NextDBGrid8.Columns.Item[h].Width));
end;

procedure TFrmVentanaPrincipalTIC.FormShow(Sender: TObject);
var
  h: integer;
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      ClientModule1.ComponentColor(self);
      critbusqueda:=TBusquedadet.Create;
      banderanuminsumo:=0;
      arbolonchange:=false;

      InicializarProgress(0, 3, 0);

      for h := 0 to griddetalle.Columns.Count -1 do
      Try
        griddetalle.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+griddetalle.Name, griddetalle.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid1.Columns.Count -1 do
      Try
        NextDBGrid1.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid1.Name, NextDBGrid1.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid2.Columns.Count -1 do
      Try
        NextDBGrid2.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid2.Name, NextDBGrid2.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid3.Columns.Count -1 do
      Try
        NextDBGrid3.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid3.Name, NextDBGrid3.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid4.Columns.Count -1 do
      Try
        NextDBGrid4.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid4.Name, NextDBGrid4.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid5.Columns.Count -1 do
      Try
        NextDBGrid5.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid5.Name, NextDBGrid5.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid6.Columns.Count -1 do
      Try
        NextDBGrid6.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid6.Name, NextDBGrid6.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid7.Columns.Count -1 do
      Try
        NextDBGrid7.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid7.Name, NextDBGrid7.Columns.Item[h].Name));
      Except
        ;
      End;

      for h := 0 to NextDBGrid8.Columns.Count -1 do
      Try
        NextDBGrid8.Columns.Item[h].Width := StrToInt(VarRegistry('\Ventanas', '\' + Self.Name+'\'+NextDBGrid8.Name, NextDBGrid8.Columns.Item[h].Name));
      Except
        ;
      End;

      IncrementarProgress(1);
      if Not CrearConjunto(cdcriterios, 'tic_criteriostic', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Criterios de Busqueda']);
      if Not CargarDatosFiltrados(cdcriterios, 'idcriteriostic', [-1]) then
        raise InteligentException.CreateByCode(21, ['Criterios de Busqueda']);
      cdcriterios.open;

      IncrementarProgress(1);
      if Not CrearConjunto(cdcriteriosup, 'tic_criteriostic', ccUpdate) then
        raise InteligentException.CreateByCode(5, ['Criterios de Busqueda']);
      if Not CargarDatosFiltrados(cdcriteriosup, 'idcriteriostic', [-9]) then
        raise InteligentException.CreateByCode(21, ['Criterios de Busqueda']);
      cdcriteriosup.open;

      IncrementarProgress(1);
      if Not CrearConjunto(cddescripciones, 'alm_especdetalle', ccCatalog) then
        raise InteligentException.CreateByCode(5, ['Detalle de Especificaciones']);
      cddescripciones.open;
    Finally
      Screen.Cursor := Cursor;
      AsignarProgress(0);
    End;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado en el sistema', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;


procedure TFrmVentanaPrincipalTIC.griddetalleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 Var
  Point : Tpoint;
begin
  try
    if button = mbRight then
    begin
      GetCursorPos(Point);
      PopupMenu4.Popup(Point.X, Point.Y);
    end;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmVentanaPrincipalTIC.memespecificadosAfterScroll(
  DataSet: TDataSet);
begin
try
  if arbolonchange=false then
  begin
    if pagecontrol2.ActivePageIndex=1 then
    begin

    if cdresasigact.Active=false then
    begin
      if Not CrearConjunto(cdresasigact, 'tic_resguardos_asignaciones', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdresasigact, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresasigact.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdresasigact, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresasigact.refresh;
    end;
      if cdresasigact.RecordCount=0 then
      begin
        jvlabel14.Caption:='No Asignado';
        jvlabel17.Caption:='No Asignado';
        nxbutton6.Enabled := true;
        nxbutton7.Enabled := false;
      end
      else
      begin
        jvlabel14.Caption:='Asignado';
        jvlabel17.Caption:='Asignado';
        nxbutton6.Enabled := false;
        nxbutton7.Enabled := true;
      end;
    end;

    if pagecontrol2.ActivePageIndex=2 then
    begin
      if cdhistorialasig.Active = false then
      begin
        if Not CrearConjunto(cdhistorialasig, 'tic_resguardos_asignaciones', ccSelect) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
       if Not CargarDatosFiltrados(cdhistorialasig, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdhistorialasig.open;
      end
      else
      begin
        if Not CargarDatosFiltrados(cdhistorialasig, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdhistorialasig.refresh;
      end;
    end;

    if pagecontrol2.ActivePageIndex=3 then
    begin
      if cdmanttoprev.Active=false  then
      begin
        if Not CrearConjunto(cdmanttoprev, 'tic_mantto_auxiliares', ccCatalog) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdmanttoprev, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttoprev.open;
      end
      else
      begin
      if Not CargarDatosFiltrados(cdmanttoprev, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdmanttoprev.refresh;
      end;
    end;

    if pagecontrol2.ActivePageIndex=4 then
    begin
      if cdmanttocorrect.Active=false then
      begin
        if Not CrearConjunto(cdmanttocorrect, 'tic_mantto_auxiliares', ccSelect) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdmanttocorrect, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttocorrect.open;
      end
      else
      begin
        if Not CargarDatosFiltrados(cdmanttocorrect, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttocorrect.refresh;
      end;
    end;
  end;
  except
      on e:InteligentException do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error de acceso a datos', e.Message, mtError, [mbOk], 0);
      end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

procedure TFrmVentanaPrincipalTIC.ModificarInsumo1Click(Sender: TObject);
begin
  try
    application.CreateForm(TFrmModificacionInsumo, FrmModificacionInsumo);
    if FrmModificacionInsumo.cdinsumoespecificado.Active=false then
    begin
      if Not CrearConjunto(FrmModificacionInsumo.cdinsumoespecificado, 'tic_detalleespecificado', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(FrmModificacionInsumo.cdinsumoespecificado, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      FrmModificacionInsumo.cdinsumoespecificado.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(FrmModificacionInsumo.cdinsumoespecificado, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      FrmModificacionInsumo.cdinsumoespecificado.refresh;
    end;
    FrmModificacionInsumo.ShowModal;
    cddetespxarxgrxsg.refresh;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al abrir el insumo,Comunique este error al administrador, Error: ', e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton10Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmGrupos;
  titulogrupo : string;
begin
  try
    tForm := TFrmGrupos.Create(nil);

    if edit1.Text<>'' then
    begin
    tform.edtFArea.Text:=edit1.Text;
    end;

    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      titulogrupo:=registro.Valor['titulogrupo'];;
      //edit2.Text:='';
      //edit2.Text := registro.Valor['titulogrupo'];
    end;
    tForm.Free;
        if (edit1.Text<>'') or (edit3.Text<>'') then
        begin
          if InteliDialog.ShowModal('Criterios establecidos anteriormente',
          'Ya tiene criterios de busqueda seleccionados, para no afectar la bsuqueda deben eliminar los criteriso anteriores '
          + #10 + #10 + '¿Desea eliminar lso criterios anteriores?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            edit1.Text:='';
            edit3.Text:='';
            edit2.Text:='';
            edit2.Text := titulogrupo;
          end
          else
          begin
            edit2.Text:='';
            edit2.Text := titulogrupo;
          end;
        end
        else
        begin
          edit2.Text:='';
          edit2.Text := titulogrupo;
        end;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton11Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmSubgrupos;
  titulosubgrupo : string;
begin
  try
    tForm := TFrmSubgrupos.Create(nil);

    if edit1.Text<>'' then
    begin
    tform.edtFArea.Text:=edit1.Text;
    end;

    if edit2.Text<>'' then
    begin
    tform.edtFGrupo.Text:=edit2.Text;
    end;

    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      titulosubgrupo:=registro.Valor['titulosubgrupo'];
      //edit3.Text:='';
      //edit3.Text := registro.Valor['titulosubgrupo'];
    end;
    tForm.Free;
     if (edit1.Text<>'') or (edit2.Text<>'') then
        begin
          if InteliDialog.ShowModal('Criterios establecidos anteriormente',
          'Ya tiene criterios de busqueda seleccionados, para no afectar la bsuqueda deben eliminar los criteriso anteriores '
          + #10 + #10 + '¿Desea eliminar lso criterios anteriores?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            edit1.Text:='';
            edit2.Text:='';
            edit3.Text:='';
            edit3.Text := titulosubgrupo;
          end
          else
          begin
            edit3.Text:='';
            edit3.Text := titulosubgrupo;
          end;
        end
        else
        begin
          edit3.Text:='';
          edit3.Text := titulosubgrupo;
        end;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmVentanaPrincipalTIC.NxButton12Click(Sender: TObject);
var
  campotexto : TNxDbTextColumn;
  camponumerico : TNxDbNumberColumn;
  campofecha : TNxDbDateColumn;
  titulodisciplina, titulogrupo, titulosubgrupo, tituloarticulo, consultautilizada : string;
  ConjuntoConsultas : Tconsultas;
  h, altura, ancho : integer;
  Cursor: TCursor;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;

      //.................algoritmo de bsuqeuda pro casillas de texto..................
      critbusqueda:=tbusquedadet.Create;

      if edit1.Text<>'' then
      begin
        critbusqueda.area:='%'+edit1.Text+'%';
      end
      else
      begin
        critbusqueda.area:='-1';
      end;

      if edit2.Text<>'' then
      begin
        critbusqueda.grupo:='%'+edit2.Text+'%';
      end
      else
      begin
        critbusqueda.grupo:='-1';
      end;

      if edit3.Text<>'' then
      begin
        critbusqueda.subgrupo:='%'+edit3.Text+'%';
      end
      else
      begin
        critbusqueda.subgrupo:='-1';
      end;

      if edit6.Text<>'' then
      begin
        critbusqueda.articulo:='%'+edit6.Text+'%';
      end
      else
      begin
        critbusqueda.articulo:='-1';
      end;

      altura:=griddetalle.top + griddetalle.Height;
      panel20.Top:=altura - 50;
      panel19.Top:=altura - 50;

      ancho:=griddetalle.Left+griddetalle.Width;
      ancho:=ancho div 2;
      panel20.Left:=ancho-(panel20.Width div 2);
      panel19.Left:=ancho-(panel19.Width div 2);

      arbolonchange:=true;
      panel19.Visible :=true;
      panel20.Visible:=false;
      ProgressBar1.Position:=0;


      //------------------Cerrado y Actualizado de Datasets-------------------------
      cddetespxarxgrxsg.Close;
      cdultimosmanttoprev.Close;
      cdultimomanttocorrect.Close;
      cdsiguientemanttoprev.Close;
      cdasignados.Close;
      cdnoasignados.Close;

      //------------------Borrado Dataset En Memoria--------------------------------
      Eliminarconjunto([cddetespxarxgrxsg, cdultimosmanttoprev, cdultimomanttocorrect, cdsiguientemanttoprev, cdasignados, cdnoasignados]);

      //------------------------Filtrado por area-------------------------------------
      ProgressBar1.Position:=20;

      consultautilizada:='titulodisciplina, titulogrupo, titulosubgrupo, tituloarticulo';
      cargarbusqueda2(consultautilizada);
      ProgressBar1.Position:=80;

      arbolonchange:=false;
      ProgressBar1.Position:=100;
      if cddetespxarxgrxsg.RecordCount=0 then
      begin
        panel19.Visible:=false;
        panel20.Visible:=true;
        jvlabel22.Visible:=true;
        jvlabel22.Caption:='No se Han Encontrado Resultados con el criterio ingresado';
      end
      else
      begin
        panel19.Visible:=false;
        panel20.Visible:=false;
      end;
      //........... Prueba cambiar de texto exbar...............................
      TExLine(FExBar.ExGroups.Items[4].Items[1]).Caption := cddetespxarxgrxsg.FieldByName('codigo').AsString;
      TExLine(FExBar.ExGroups.Items[4].Items[3]).Caption := cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
      TExLine(FExBar.ExGroups.Items[4].Items[5]).Caption := cddetespxarxgrxsg.FieldByName('descripciontotal').AsString;
      FExBar.Refresh;
      //........................................................................
    Finally
      Screen.Cursor := Cursor;
    End;
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton13Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmArticulo2;
begin
  try
    tForm := TFrmArticulo2.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
      edit6.Text:='';
      edit6.Text := registro.Valor['tituloarticulo'];
    end;
    tForm.Free;
  except
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;

end;

procedure TFrmVentanaPrincipalTIC.NxButton14Click(Sender: TObject);
begin
  application.CreateForm(TFrmCriteriosBusqeudaTic, FrmCriteriosBusqeudaTic);
  FrmCriteriosBusqeudaTic.dscriteriosupdate.DataSet:=cdcriteriosup;
  FrmCriteriosBusqeudaTic.ShowModal;
  cdcriterios.Refresh;
end;

procedure TFrmVentanaPrincipalTIC.NxButton15Click(Sender: TObject);
var
  ultimafecha : Tdate;
  primerfecha, segundadafecha : tdate;
  guardarfechas : tstringlist;
  fechaactual : string;
  repetido : boolean;
  i : integer;
begin
  {
    try
       repetido:=false;
       guardarfechas:=tstringlist.Create;
       memmanttosprev:=TClientDataset.Create(self);
       memmanttosprev.FieldDefs.Clear;
       memmanttosprev.FieldDefs.Add('Numinsumo', ftInteger, 0, false);
       memmanttosprev.FieldDefs.Add('Fecha', ftDate, 0, false);
       memmanttosprev.CreateDataSet;
       memmanttosprev.Open;
       if cdsiguientemanttoprev.Active=false then
       raise Exception.Create('No se han encontrado datos');

       primerfecha:=dateedit1.Date;
       segundadafecha:= dateedit2.Date;
       cdsiguientemanttoprev.First;
       while not cdsiguientemanttoprev.Eof do
       begin
         ultimafecha:=cdsiguientemanttoprev.FieldByName('proximomantto').AsDateTime;
         while ultimafecha < segundadafecha do
         begin
           if ultimafecha > primerfecha then
           begin
             ultimafecha:=ultimafecha+(cdsiguientemanttoprev.FieldByName('recurrencia').AsInteger);
             memmanttosprev.Append;
             memmanttosprev.FieldByName('Numinsumo').AsInteger:=cdsiguientemanttoprev.FieldByName('numinsumoespecificado').AsInteger;
             memmanttosprev.FieldByName('Fecha').AsDateTime:=ultimafecha;
             memmanttosprev.Post;
             fechaactual:= datetostr(ultimafecha);
             if guardarfechas.Count=0 then
             begin
               guardarfechas.Add(fechaactual);
             end
             else
             begin
               repetido:=false;
               for i := 0 to guardarfechas.Count-1 do
               begin
                 if guardarfechas[i]=fechaactual then
                 begin
                   repetido:=true;
                 end;
               end;
               if repetido=false then
               begin
                 guardarfechas.Add(fechaactual);
               end
               else
               begin
                 repetido:=false;
               end;
             end;
           end
           else
           begin
             ultimafecha:=ultimafecha+(cdsiguientemanttoprev.FieldByName('recurrencia').AsInteger);
           end;
         end;
         cdsiguientemanttoprev.Next;
       end;
       dsmemmanttoprev.DataSet:=memmanttosprev;
       nextdbgrid9.DataSource:= dsmemmanttoprev;
       showmessage(inttostr(guardarfechas.Count));
     except
       on e:exception do
       begin
         InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
         PostMessage(Self.Handle, WM_CLOSE, 0, 0);
       end;
     end;
 }
end;

procedure TFrmVentanaPrincipalTIC.NxButton16Click(Sender: TObject);
begin
  try
    if (dblookupcombobox1.KeyValue = null) then
      raise InteligentException.Create('Debe de Seleccionar un Item para poder eliminarlo');
    if Not CargarDatosFiltrados(cdcriteriosup, 'idcriteriostic', [cdcriterios.FieldByName('idcriteriostic').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdcriteriosup.Refresh;
    cdcriteriosup.Delete;
    cdcriteriosup.ApplyUpdates(-1);
    cdcriterios.Refresh;
    dblookupcombobox1.Refresh;
  except
   on e:InteligentException do
      begin
        InteliDialog.ShowModal('Ha ocurrido al eliminar un criterio', e.Message, mtError, [mbOk], 0);
      end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Error al eliminar un criterio', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton17Click(Sender: TObject);
var
  altura, ancho : integer;
  ConjuntoConsultas : Tconsultas;
begin
  altura:=griddetalle.top + griddetalle.Height;
  panel20.Top:=altura - 50;
  panel19.Top:=altura - 50;

  ancho:=griddetalle.Left+griddetalle.Width;
  ancho:=ancho div 2;
  panel20.Left:=ancho-(panel20.Width div 2);
  panel19.Left:=ancho-(panel19.Width div 2);

  //dateedit1.Date:=now;
  //dateedit2.Date:=now+30;
  arbolonchange:=true;
  panel19.Visible :=true;
  panel20.Visible:=false;
  ProgressBar1.Position:=0;


  //------------------Cerrado y Actualizado de Datasets-------------------------
    cddetespxarxgrxsg.Close;
    Eliminarconjunto(cddetespxarxgrxsg.ProviderName);
    cdultimosmanttoprev.Close;
    Eliminarconjunto(cdultimosmanttoprev);
    cdultimomanttocorrect.Close;
    Eliminarconjunto(cdultimomanttocorrect.ProviderName);
    cdsiguientemanttoprev.Close;
    Eliminarconjunto(cdsiguientemanttoprev.ProviderName);
    cdasignados.Close;
    Eliminarconjunto(cdasignados.ProviderName);
    cdnoasignados.Close;
    Eliminarconjunto(cdnoasignados.ProviderName);
  //------------------Borrado Dataset En Memoria--------------------------------
//------------------------Filtrado por area-------------------------------------
  ProgressBar1.Position:=20;
   if (dblookupcombobox1.KeyValue <> null) then
   begin
    ConjuntoConsultas:=TConsultas.Create;
    ConjuntoConsultas:=consulta_criterios(cdcriterios.FieldByName('cadbusqeudaid').AsString);
    //########Generacion de datasets################################################
    //cddetespxarxgrxsg.Close;
    //Eliminarconjunto(cddetespxarxgrxsg.ProviderName);
    CrearConjunto(cddetespxarxgrxsg, 'tic_detesp_xar_xgr_xsg', ccSelect);
    PonerSentenciaSQL(cddetespxarxgrxsg.ProviderName, ConjuntoConsultas.consultainsumos);
    cddetespxarxgrxsg.Open;
     ProgressBar1.Position:=30;
    //--------------------------------------------------------------------------
    //cdultimosmanttoprev.Close;
    //Eliminarconjunto(cdultimosmanttoprev);
    if Not CrearConjunto(cdultimosmanttoprev, 'tic_mantto_auxiliares2', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
    PonerSentenciaSQL(cdultimosmanttoprev.ProviderName, ConjuntoConsultas.conultimomanttoprev);
    cdultimosmanttoprev.open;
     ProgressBar1.Position:=40;
    //--------------------------------------------------------------------------
    //cdultimomanttocorrect.Close;
    //Eliminarconjunto(cdultimomanttocorrect.ProviderName);
    if Not CrearConjunto(cdultimomanttocorrect, 'tic_mantto_auxiliares2', ccSelect) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
    PonerSentenciaSQL(cdultimomanttocorrect.ProviderName, ConjuntoConsultas.conultimomanttocorrect);
    cdultimomanttocorrect.open;
     ProgressBar1.Position:=50;
    //--------------------------------------------------------------------------
    //cdsiguientemanttoprev.Close;
    //Eliminarconjunto(cdsiguientemanttoprev.ProviderName);
    if Not CrearConjunto(cdsiguientemanttoprev, 'tic_mantto_auxiliares3', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
    PonerSentenciaSQL(cdsiguientemanttoprev.ProviderName, ConjuntoConsultas.conproxmanttoprev);
    cdsiguientemanttoprev.open;
     ProgressBar1.Position:=50;
    //--------------------------------------------------------------------------
    //cdasignados.Close;
    //Eliminarconjunto(cdasignados.ProviderName);
    if Not CrearConjunto(cdasignados, 'tic_resguardo_insumoasignado', ccCatalog) then
       raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
    PonerSentenciaSQL(cdasignados.ProviderName, ConjuntoConsultas.coninsasignados);
    cdasignados.open;
     ProgressBar1.Position:=60;
    //--------------------------------------------------------------------------
    //cdnoasignados.Close;
    //Eliminarconjunto(cdnoasignados.ProviderName);
    if Not CrearConjunto(cdnoasignados, 'tic_resguardo_insumoasignado', ccSelect) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
    PonerSentenciaSQL(cdnoasignados.ProviderName, ConjuntoConsultas.coninsnoasignados);
    cdnoasignados.open;
    ProgressBar1.Position:=70;
    //cargardatosmem();
//##############################################################################
   end
   else
   begin
    InteliDialog.ShowModal('Error al realizar busqeuda por criterios', 'Debe de elegir un criterio de busqueda' + #10 + #10, mtInformation, [mbOK], 0);
   end;
   ProgressBar1.Position:=80;
    ProgressBar1.Position:=80;

  arbolonchange:=false;
  ProgressBar1.Position:=100;
  if cddetespxarxgrxsg.RecordCount=0 then
  begin
    panel19.Visible:=false;
    panel20.Visible:=true;
    jvlabel22.Visible:=true;
    jvlabel22.Caption:='No se Han Encontrado Resultados con el criterio ingresado';
  end
  else
  begin
    panel19.Visible:=false;
    panel20.Visible:=false;
  end;
  //........... Prueba cambiar de texto exbar...............................
  TExLine(FExBar.ExGroups.Items[4].Items[1]).Caption := cddetespxarxgrxsg.FieldByName('codigo').AsString;
  TExLine(FExBar.ExGroups.Items[4].Items[3]).Caption := cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
  TExLine(FExBar.ExGroups.Items[4].Items[5]).Caption := cddetespxarxgrxsg.FieldByName('descripciontotal').AsString;
  FExBar.Refresh;
  //........................................................................
end;

procedure TFrmVentanaPrincipalTIC.NxButton18Click(Sender: TObject);
var
  altura, ancho : integer;
begin
  try
    altura:=griddetalle.top + griddetalle.Height;
    panel20.Top:=altura - 50;
    panel19.Top:=altura - 50;

    ancho:=griddetalle.Left+griddetalle.Width;
    ancho:=ancho div 2;
    panel20.Left:=ancho-(panel20.Width div 2);
    panel19.Left:=ancho-(panel19.Width div 2);

    if cddetespxarxgrxsg.Active=false then
    begin
      if Not CrearConjunto(cddetespxarxgrxsg, 'tic_actdestesp_xar_xgr_sg', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'idcampodetalle, campocadena', [cddescripciones.FieldByName('IdDetalle').AsInteger, edit4.Text]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cddetespxarxgrxsg.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cddetespxarxgrxsg, 'idcampodetalle, campocadena', [cddescripciones.FieldByName('IdDetalle').AsInteger, edit4.Text]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cddetespxarxgrxsg.Refresh;
    end;
    //........... Prueba cambiar de texto exbar...............................
    TExLine(FExBar.ExGroups.Items[4].Items[1]).Caption := cddetespxarxgrxsg.FieldByName('codigo').AsString;
    TExLine(FExBar.ExGroups.Items[4].Items[3]).Caption := cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
    TExLine(FExBar.ExGroups.Items[4].Items[5]).Caption := cddetespxarxgrxsg.FieldByName('descripciontotal').AsString;
    FExBar.Refresh;
    //........................................................................
  except
  on e:exception do
    InteliDialog.ShowModal('Error al verificar la consulta ', 'checar la consulta' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmVentanaPrincipalTIC.buscarcritClick(Sender: TObject);
begin
  try
     if ClientDataSet1.Active = false then
   begin
    if Not CrearConjunto(ClientDataSet1, 'tic_actdestesp_xar_xgr_sg', ccSelect) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(ClientDataSet1, 'campocadena', ['%'+'hp'+'%']) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    ClientDataSet1.Open;
   end
   else
   begin
    if Not CargarDatosFiltrados(ClientDataSet1, 'campocadena', ['%hp%']) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    ClientDataSet1.Refresh;
   end;
  except
  on e:inteligentexception do
     InteliDialog.ShowModal('Error al verificar la consulta ', 'checar la consulta' + e.message, mtError, [mbOK], 0);

  on e:exception do
    InteliDialog.ShowModal('Error al verificar la consulta ', 'checar la consulta' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton1Click(Sender: TObject);
  var
    Locname : string;
begin
  //application.CreateForm(TFrmVerMantto, FrmVerMantto);
  //FrmVerMantto.dsmantenimiento.DataSet:=cdmanttoprev;
  //FrmVerMantto.ShowModal;
  if nextdbgrid2.SelectedCount >0 then
  begin
   if cdmanttoreporte.Active =false then
    begin
      if Not CrearConjunto(cdmanttoreporte, 'tic_mantenimientos', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdmanttoreporte, 'idmantenimiento', [cdmanttoprev.FieldByName('idmantenimiento').AsInteger]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Mantenimientos');
      cdmanttoreporte.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdmanttoreporte, 'idmantenimiento', [cdmanttoprev.FieldByName('idmantenimiento').AsInteger]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Mantenimientos');
      cdmanttoreporte.Refresh;
    end;

    TicRepModuleUnit.frxDBDMantenimientos.DataSet:=cdmanttoreporte;

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmMantenimiento.fr3';
    if FileExists(LocName) then
    begin
      frxImprimirMantto.LoadFromFile(LocName);
      frxImprimirMantto.ShowReport(TRUE);
    end
    else
    begin
      InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
    end;
  end
  else
  begin
    InteliDialog.ShowModal('No ha seleccionado ningun Mantenimiento Preventico: ', 'Debe de seleccionar un mantenimiento preventivo de la pestaña "Descripcion general de insumos" y luego ir "Historial mantenimientos preventivos" y seleccionar un mantenimiento de la grilla ' + #10 + #10 + '', mtInformation, [mbOK], 0);
  end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton2Click(Sender: TObject);
begin
  application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
  FrmMantenimientos.dsinsumoseleccionado.DataSet:=cddetespxarxgrxsg;
  FrmMantenimientos.tipomantenimiento:='PREVENTIVO';
  FrmMantenimientos.ComboBox1.Enabled := FALSE;
  FrmMantenimientos.Edit1.Enabled :=FALSE;
  FrmMantenimientos.ShowModal;
  cdmanttoprev.refresh;
end;

procedure TFrmVentanaPrincipalTIC.NxButton3Click(Sender: TObject);
  var
    locname : string;
begin
//application.CreateForm(TFrmVerMantto, FrmVerMantto);
//FrmVerMantto.dsmantenimiento.DataSet:=cdmanttocorrect;
//FrmVerMantto.ShowModal;
  if nextdbgrid3.SelectedCount >0 then
  begin
   if cdmanttoreporte.Active =false then
    begin
      if Not CrearConjunto(cdmanttoreporte, 'tic_mantenimientos', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Catalogo de Articulos, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdmanttoreporte, 'idmantenimiento', [cdmanttocorrect.FieldByName('idmantenimiento').AsInteger]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Mantenimientos');
      cdmanttoreporte.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdmanttoreporte, 'idmantenimiento', [cdmanttocorrect.FieldByName('idmantenimiento').AsInteger]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Mantenimientos');
      cdmanttoreporte.Refresh;
    end;

    TicRepModuleUnit.frxDBDMantenimientos.DataSet:=cdmanttoreporte;

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmMantenimiento.fr3';
    if FileExists(LocName) then
    begin
      frxImprimirMantto.LoadFromFile(LocName);
      frxImprimirMantto.ShowReport(TRUE);
    end
    else
    begin
      InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
    end;
  end
  else
  begin
    InteliDialog.ShowModal('No ha seleccionado ningun Mantenimiento Correctivo: ', 'Debe de seleccionar un mantenimiento preventivo de la pestaña "Descripcion general de insumos" y luego ir "Historial mantenimientos correctivo" y seleccionar un mantenimiento de la grilla ' + #10 + #10 + '', mtInformation, [mbOK], 0);
  end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton4Click(Sender: TObject);
begin
  application.CreateForm(TFrmMantenimientos, FrmMantenimientos);
  FrmMantenimientos.dsinsumoseleccionado.DataSet:=cddetespxarxgrxsg;
  FrmMantenimientos.tipomantenimiento:='CORRECTIVO';
  FrmMantenimientos.ComboBox1.Enabled := FALSE;
  FrmMantenimientos.Edit1.Enabled :=FALSE;
  FrmMantenimientos.ShowModal;
  cdmanttocorrect.refresh;
end;

procedure TFrmVentanaPrincipalTIC.NxButton5Click(Sender: TObject);
begin
     if cdpersonal.Active = false then
   begin
    if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
      raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdresasigact.FieldByName('recibio').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdpersonal.Open;
   end
   else
   begin
    if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdresasigact.FieldByName('recibio').AsInteger]) then
      raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdpersonal.Refresh;
   end;
  Application.CreateForm(TFrmDevolucionIndividualIns, FrmDevolucionIndividualIns);
  FrmDevolucionIndividualIns.dsresguardosasignados.DataSet:= cdresasigact;
  FrmDevolucionIndividualIns.ShowModal;
  cdhistorialasig.Refresh;
end;

procedure TFrmVentanaPrincipalTIC.NxButton6Click(Sender: TObject);
begin
   Application.CreateForm(TFrmAsignacionIndividualTIC, FrmAsignacionIndividualTIC);
   FrmAsignacionIndividualTIC.dsinsumo.DataSet:= cddetespxarxgrxsg;
   FrmAsignacionIndividualTIC.ShowModal;
   cdresasigact.Refresh;
end;

procedure TFrmVentanaPrincipalTIC.NxButton7Click(Sender: TObject);
var
   LocName : string;
begin
//  imprimirvalederesguardo(cdresasigact.FieldByName('idticresguardos').AsInteger, cdresasigact.RecordCount, cdresasigact.FieldByName('idpersonal').AsInteger);

    if cdpersonal.Active =false then
    begin
      if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
         raise InteligentException.Create('No se ha podido acceder a la consulta de la "Resguardos y Detalles", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdresasigact.FieldByName('idpersonal').AsInteger]) then
         raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdpersonal.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdresasigact.FieldByName('idpersonal').AsInteger]) then
       raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdpersonal.Refresh;
    end;

    if cdvaleresguardo.Active = false then
    begin
      if Not CrearConjunto(cdvaleresguardo, 'tic_resguardos_asignaciones', ccCatalog) then
       raise InteligentException.Create('No se ha podido acceder a la consulta de la "Resguardos y Detalles", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdvaleresguardo, 'idticresguardos', [cdresasigact.FieldByName('idticresguardos').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdvaleresguardo.Open;
    end
    else
      if Not CargarDatosFiltrados(cdvaleresguardo, 'idticresguardos', [cdresasigact.FieldByName('idticresguardos').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdvaleresguardo.Refresh;
    begin

    end;

      TicRepModuleUnit.frxDBDResguardo.DataSet:=cdvaleresguardo;
      TicRepModuleUnit.frxDBPersonal.DataSource:=dspersonal;

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmValedeResguardo.fr3';
    if FileExists(LocName) then
    begin
      FrxValeResguardoEntrega.LoadFromFile(LocName);
      FrxValeResguardoEntrega.ShowReport(TRUE);
    end
    else
    begin
      InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
    end;
end;

procedure TFrmVentanaPrincipalTIC.NxButton8Click(Sender: TObject);
var
   LocName : string;
begin
  //imprimirvalederesguardo(cdhistorialasig.FieldByName('idticresguardos').AsInteger, cdhistorialasig.RecordCount, cdhistorialasig.FieldByName('idpersonal').AsInteger);
   if nextdbgrid1.SelectedCount>0 then
   begin
    if cdresguardosdevueltos.Active = false then
    begin
      if Not CrearConjunto(cdresguardosdevueltos, 'tic_resguardos_asignaciones', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la tabla de Asignaciones, es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdresguardosdevueltos, 'idticresguardos', [cdhistorialasig.FieldByName('idticresguardos').AsInteger]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
      cdresguardosdevueltos.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdresguardosdevueltos, 'idticresguardos', [cdhistorialasig.FieldByName('idticresguardos').AsInteger]) then
        raise InteligentException.Create('No ha sido posible acceder a los datos de Asignaciones');
      cdresguardosdevueltos.Refresh;
    end;

    if cdpersonal.Active = false then
     begin
      if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdhistorialasig.FieldByName('idpersonal').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdpersonal.Open;
     end
     else
     begin
      if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [cdhistorialasig.FieldByName('idpersonal').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cdenterado" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdpersonal.Refresh;
    end;

    TicRepModuleUnit.frxDBPersonal.DataSource:=dspersonal;
    TicRepModuleUnit.frxDBdevueltos.DataSource:=dsresguardosdevueltos;

    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmValedeResguardoEntrega.fr3';
    if FileExists(LocName) then
    begin
      frxValeDevolucion.LoadFromFile(LocName);
      frxValeDevolucion.ShowReport(TRUE);
    end
    else
    begin
       InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
    end;

 end;

end;

procedure TFrmVentanaPrincipalTIC.NxButton9Click(Sender: TObject);
var
  registro: TLista;
  tForm: TFrmDisciplinas;
  tituloarea : string;
begin
  try
    tForm := TFrmDisciplinas.Create(nil);
    tform.ModoSeleccion := True;
    registro := tForm.SeleccionarItem();
    if Assigned(registro) then
    begin
    tituloarea:=registro.Valor['titulodisciplina'];
    end;
    tForm.Free;
        if (edit2.Text<>'') or (edit3.Text<>'') then
        begin
          if InteliDialog.ShowModal('Criterios establecidos anteriormente',
          'Ya tiene criterios de busqueda seleccionados, para no afectar la bsuqueda deben eliminar los criteriso anteriores '
          + #10 + #10 + '¿Desea eliminar lso criterios anteriores?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            edit2.Text:='';
            edit3.Text:='';
            edit1.Text:='';
            edit1.Text := tituloarea;
          end
          else
          begin
            edit1.Text:='';
            edit1.Text := tituloarea;
          end;
        end
        else
        begin
          edit1.Text:='';
          edit1.Text := tituloarea;
        end;
  except
  on e:exception do
    InteliDialog.ShowModal('Tiene que seleccionar un registro, intente de nuevo.','', mtInformation, [mbOk], 0);
  end;
end;

procedure TFrmVentanaPrincipalTIC.PageControl2Change(Sender: TObject);
begin
try
  if (memespecificados.active=true) and (banderanuminsumo<>memespecificados.FieldByName('Numinsumo').AsInteger) then
  begin
    if pagecontrol2.ActivePageIndex=1 then
    begin
    //--------------------------------------------------------------------------
      if cdresasigact.Active=false then
      begin
        if Not CrearConjunto(cdresasigact, 'tic_resguardos_asignaciones', ccCatalog) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
       if Not CargarDatosFiltrados(cdresasigact, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdresasigact.open;
      end
      else
      begin
          if Not CargarDatosFiltrados(cdresasigact, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cdresasigact.refresh;
      end;
    //--------------------------------------------------------------------------

      if cdresasigact.RecordCount=0 then
      begin
        jvlabel14.Caption:='No Asignado';
        jvlabel17.Caption:='No Asignado';
        nxbutton6.Enabled := true;
        nxbutton5.Enabled := false;
      end
      else
      begin
        jvlabel14.Caption:='Asignado';
        jvlabel17.Caption:='Asignado';
        nxbutton6.Enabled := true;
        nxbutton5.Enabled := false;
      end;
    end;

    if pagecontrol2.ActivePageIndex=2 then
    begin
      if cdhistorialasig.Active = false then
      begin
        if Not CrearConjunto(cdhistorialasig, 'tic_resguardos_asignaciones', ccSelect) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdhistorialasig, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdhistorialasig.open;
      end
      else
      begin
          if Not CargarDatosFiltrados(cdhistorialasig, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cdhistorialasig.refresh;
      end;
    end;

    if pagecontrol2.ActivePageIndex=3 then
    begin
      if cdmanttoprev.Active=false  then
      begin
        if Not CrearConjunto(cdmanttoprev, 'tic_mantto_auxiliares', ccCatalog) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdmanttoprev, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttoprev.open;
      end
      else
      begin
          if Not CargarDatosFiltrados(cdmanttoprev, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cdmanttoprev.refresh;
      end;
    end;

    if pagecontrol2.ActivePageIndex=4 then
    begin
    if cdmanttocorrect.Active=false then
      begin
        if Not CrearConjunto(cdmanttocorrect, 'tic_mantto_auxiliares', ccSelect) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdmanttocorrect, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttocorrect.open;
      end
      else
      begin
          if Not CargarDatosFiltrados(cdmanttocorrect, 'numinsumoespecificado', [memespecificados.FieldByName('Numinsumo').AsInteger]) then
            raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
          cdmanttocorrect.refresh;
      end;
    end;
  end;
  except
      on e:InteligentException do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error de acceso a datos', e.Message, mtError, [mbOk], 0);
      end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmVentanaPrincipalTIC.RadioButton1Click(Sender: TObject);
begin
edit1.Enabled:=true;
//edit1.SetFocus;
edit2.Enabled :=false;
edit3.Enabled :=false;
edit6.Enabled :=false;
dblookupcombobox1.Enabled :=false;
nxbutton14.Enabled :=false;
nxbutton16.Enabled :=false;
end;

procedure TFrmVentanaPrincipalTIC.RadioButton2Click(Sender: TObject);
begin
edit2.Enabled:=true;
edit2.SetFocus;
edit1.Enabled :=false;
edit3.Enabled :=false;
edit6.Enabled :=false;
dblookupcombobox1.Enabled :=false;
nxbutton14.Enabled :=false;
nxbutton16.Enabled :=false;
end;

procedure TFrmVentanaPrincipalTIC.RadioButton3Click(Sender: TObject);
begin
edit3.Enabled:=true;
edit3.SetFocus;
edit1.Enabled :=false;
edit2.Enabled :=false;
edit6.Enabled :=false;
dblookupcombobox1.Enabled :=false;
nxbutton14.Enabled :=false;
nxbutton16.Enabled :=false;
end;

procedure TFrmVentanaPrincipalTIC.RadioButton4Click(Sender: TObject);
begin
{
  edit6.Enabled:=false;
  edit1.Enabled :=false;
  edit2.Enabled :=false;
  edit3.Enabled :=false;
  dblookupcombobox1.Enabled :=true;
  dblookupcombobox1.SetFocus;
  nxbutton14.Enabled :=true;
  nxbutton16.Enabled :=true;
}
end;

procedure TFrmVentanaPrincipalTIC.RadioButton5Click(Sender: TObject);
begin

edit1.Enabled :=false;
edit2.Enabled :=false;
edit3.Enabled :=false;

edit6.Enabled :=false;
end;

procedure TFrmVentanaPrincipalTIC.RadioButton6Click(Sender: TObject);
begin
edit6.Enabled:=true;
edit6.SetFocus;
edit1.Enabled :=false;
edit2.Enabled :=false;
edit3.Enabled :=false;
dblookupcombobox1.Enabled :=false;
nxbutton14.Enabled :=false;
nxbutton16.Enabled :=false;
end;



procedure TFrmVentanaPrincipalTIC.cargardatosmem();
var
  numinsumo_detescp, idsubgrupo_detescp, IdDisciplina_detescp, IdGrupo_detescp,
  IdArticulo_detescp, IdMantto, Recurrencia, banderaultimo, ultimorecno: integer;
  descripcion_detescp, codigoinsumo_detescp : string;
  tituloarticulo_detescp, fechaultimomanttoprev, fechaproximomanttoprev, estadodeasignacion :string;
  fechaespecificacion : TDateTime;
begin
  try
    ultimorecno:=cddetespxarxgrxsg.RecordCount;
    banderaultimo:=0;
    cddetespxarxgrxsg.first;
    numinsumo_detescp:=0;
    descripcion_detescp:='';
    numinsumo_detescp:=cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger;
    tituloarticulo_detescp:= cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
    idsubgrupo_detescp:= cddetespxarxgrxsg.FieldByName('idsubgrupo').AsInteger;
    IdDisciplina_detescp:= cddetespxarxgrxsg.FieldByName('IdDisciplina').AsInteger;
    IdGrupo_detescp:= cddetespxarxgrxsg.FieldByName('idgrupo').AsInteger;
    codigoinsumo_detescp:=cddetespxarxgrxsg.FieldByName('codigo').AsString;
    IdArticulo_detescp:=cddetespxarxgrxsg.FieldByName('idarticulo').AsInteger;
    IdMantto:=cddetespxarxgrxsg.FieldByName('idmanttoprev').AsInteger;
    Recurrencia:=cddetespxarxgrxsg.FieldByName('recurrencia').AsInteger;
    fechaespecificacion:=cddetespxarxgrxsg.FieldByName('fechaespecificacion').AsDateTime;
    fechaultimomanttoprev:=cddetespxarxgrxsg.FieldByName('ultimomanttoprev').AsString;
    fechaproximomanttoprev:=cddetespxarxgrxsg.FieldByName('proximomantto').AsString;
    estadodeasignacion:=cddetespxarxgrxsg.FieldByName('asignado').AsString;
    while not cddetespxarxgrxsg.Eof do
    begin
      banderaultimo:=banderaultimo+1;
      if (numinsumo_detescp <> cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger) or
      (banderaultimo=ultimorecno) then
      begin
        memespecificados.Append;
        memespecificados.FieldByName('IdDisciplina').AsInteger:= IdDisciplina_detescp;
        memespecificados.FieldByName('IdGrupo').AsInteger:= IdGrupo_detescp;
        memespecificados.FieldByName('IdSubgrupo').AsInteger:= idsubgrupo_detescp;
        memespecificados.FieldByName('Numinsumo').AsInteger:= numinsumo_detescp;
        memespecificados.FieldByName('Articulo').AsString:= tituloarticulo_detescp;
        descripcion_detescp:=descripcion_detescp+'.';
        memespecificados.FieldByName('Descripcion').AsString:= descripcion_detescp;
        memespecificados.FieldByName('Codigo').AsString:=codigoinsumo_detescp;
        memespecificados.FieldByName('IdArticulo').AsInteger:=IdArticulo_detescp;
        memespecificados.FieldByName('idmantto').AsInteger:=IdMantto;
        memespecificados.FieldByName('recurrencia').AsInteger:=Recurrencia;
        memespecificados.FieldByName('Fechaespecificacion').AsDateTime:=fechaespecificacion;
        memespecificados.FieldByName('ultimomanttoprev').AsString:=fechaultimomanttoprev;
        memespecificados.FieldByName('proximomanttoprev').AsString:=fechaproximomanttoprev;
        memespecificados.FieldByName('estadoasig').AsString:=estadodeasignacion;
        memespecificados.Post;
        numinsumo_detescp:=0;
        numinsumo_detescp:=cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger;
        tituloarticulo_detescp:='';
        tituloarticulo_detescp:= cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
        idsubgrupo_detescp:=0;
        idsubgrupo_detescp:= cddetespxarxgrxsg.FieldByName('idsubgrupo').AsInteger;
        IdDisciplina_detescp:=0;
        IdDisciplina_detescp:= cddetespxarxgrxsg.FieldByName('IdDisciplina').AsInteger;
        IdGrupo_detescp:=0;
        IdGrupo_detescp:= cddetespxarxgrxsg.FieldByName('IdGrupo').AsInteger;
        codigoinsumo_detescp:='';
        codigoinsumo_detescp:=cddetespxarxgrxsg.FieldByName('codigo').AsString;
        IdArticulo_detescp:=0;
        IdArticulo_detescp:=cddetespxarxgrxsg.FieldByName('idarticulo').AsInteger;
        IdMantto:=0;
        IdMantto:=cddetespxarxgrxsg.FieldByName('idmanttoprev').AsInteger;
        Recurrencia:=0;
        Recurrencia:=cddetespxarxgrxsg.FieldByName('recurrencia').AsInteger;
        //----------------------------------------------------------------------
        if recurrencia=0 then
        begin
          fechaultimomanttoprev:='';
          fechaultimomanttoprev:='No tiene recurrencia asignada';
          fechaproximomanttoprev:='';
          fechaproximomanttoprev:='No cuenta con mantenimiento preventivo';
        end
        else
        begin
          fechaultimomanttoprev:='';
          fechaultimomanttoprev:=cddetespxarxgrxsg.FieldByName('ultimomanttoprev').AsString;
          fechaproximomanttoprev:='';
          fechaproximomanttoprev:=cddetespxarxgrxsg.FieldByName('proximomantto').AsString;
        end;
        //----------------------------------------------------------------------
        estadodeasignacion:='';
        estadodeasignacion:=cddetespxarxgrxsg.FieldByName('asignado').AsString;
        fechaespecificacion:=cddetespxarxgrxsg.FieldByName('fechaespecificacion').AsDateTime;
        descripcion_detescp:='';
      end;
      if descripcion_detescp <> '' then
      begin
        descripcion_detescp:=descripcion_detescp+', ';
      end;
      if cddetespxarxgrxsg.FieldByName('tipodedato').AsString = 'CADENA' then
      begin
          descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('TituloDetalle').AsString+': ';
          if cddetespxarxgrxsg.FieldByName('campocadena').AsString = '' then
          begin
            descripcion_detescp:=descripcion_detescp+'N/A';
          end
          else
          begin
            descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('campocadena').AsString;
          end;
      end;
      if cddetespxarxgrxsg.FieldByName('tipodedato').AsString = 'NUMERICO' then
      begin
        descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('TituloDetalle').AsString+': ';
        if cddetespxarxgrxsg.FieldByName('camponumerico').AsInteger = 0 then
        begin
            descripcion_detescp:=descripcion_detescp+'N/A';
        end
        else
        begin
          descripcion_detescp:=descripcion_detescp+inttostr(cddetespxarxgrxsg.FieldByName('camponumerico').AsInteger);
        end;
      end;
      if cddetespxarxgrxsg.FieldByName('tipodedato').AsString = 'FECHA' then
      begin
        descripcion_detescp:=descripcion_detescp+cddetespxarxgrxsg.FieldByName('TituloDetalle').AsString+': ';
        if cddetespxarxgrxsg.FieldByName('campofecha1').AsDateTime = 30/12/1899 then
        begin
          descripcion_detescp:=descripcion_detescp+'N/A';
        end
        else
        begin
          descripcion_detescp:=descripcion_detescp+datetostr(cddetespxarxgrxsg.FieldByName('campofecha1').AsDateTime);
        end;
      end;
      cddetespxarxgrxsg.Next;
    end;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los Datos de los "Insumos Especificados", proceso "Cargar Datos En Memoria"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmVentanaPrincipalTIC.cddetespxarxgrxsgAfterScroll(
  DataSet: TDataSet);
begin
try
  if arbolonchange=false then
  begin
    if pagecontrol2.ActivePageIndex=1 then
    begin

    if cdresasigact.Active=false then
    begin
      if Not CrearConjunto(cdresasigact, 'tic_resguardos_asignaciones', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdresasigact, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresasigact.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdresasigact, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresasigact.refresh;
    end;
      if cdresasigact.RecordCount=0 then
      begin
        jvlabel14.Caption:='No Asignado';
        jvlabel17.Caption:='No Asignado';
        nxbutton6.Enabled := true;
        nxbutton7.Enabled := false;
        nxbutton5.Enabled := false;
      end
      else
      begin
        jvlabel14.Caption:='Asignado';
        jvlabel17.Caption:='Asignado';
        nxbutton6.Enabled := false;
        nxbutton7.Enabled := true;
        nxbutton5.Enabled := true;
    end;
  end;

    if pagecontrol2.ActivePageIndex=2 then
    begin
      if cdhistorialasig.Active = false then
      begin
        if Not CrearConjunto(cdhistorialasig, 'tic_resguardos_asignaciones', ccSelect) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
       if Not CargarDatosFiltrados(cdhistorialasig, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdhistorialasig.open;
      end
      else
      begin
        if Not CargarDatosFiltrados(cdhistorialasig, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdhistorialasig.refresh;
      end;
    end;

    if pagecontrol2.ActivePageIndex=3 then
    begin
      if cdmanttoprev.Active=false  then
      begin
        if Not CrearConjunto(cdmanttoprev, 'tic_mantto_auxiliares', ccCatalog) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdmanttoprev, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttoprev.open;
      end
      else
      begin
      if Not CargarDatosFiltrados(cdmanttoprev, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdmanttoprev.refresh;
      end;
    end;

    if pagecontrol2.ActivePageIndex=4 then
    begin
      if cdmanttocorrect.Active=false then
      begin
        if Not CrearConjunto(cdmanttocorrect, 'tic_mantto_auxiliares', ccSelect) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdmanttocorrect, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttocorrect.open;
      end
      else
      begin
        if Not CargarDatosFiltrados(cdmanttocorrect, 'numinsumoespecificado', [cddetespxarxgrxsg.FieldByName('numinsumoespecificado').AsInteger]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdmanttocorrect.refresh;
      end;
    end;
  end;
  //........... Prueba cambiar de texto exbar...............................
  TExLine(FExBar.ExGroups.Items[4].Items[1]).Caption := cddetespxarxgrxsg.FieldByName('codigo').AsString;
  TExLine(FExBar.ExGroups.Items[4].Items[3]).Caption := cddetespxarxgrxsg.FieldByName('tituloarticulo').AsString;
  TExLine(FExBar.ExGroups.Items[4].Items[5]).Caption := cddetespxarxgrxsg.FieldByName('descripciontotal').AsString;
  FExBar.Refresh;
  //........................................................................
  except
      on e:InteligentException do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error de acceso a datos', e.Message, mtError, [mbOk], 0);
      end;

    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Actualizad Los del "Arbol"', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;

end;

procedure TFrmVentanaPrincipalTIC.clickdeprueba;
begin

end;

function  TFrmVentanaPrincipalTIC.consulta_criterios(criterio : string) : TConsultas;
var
  consulta1, consulta2, consultaaux : string;
  criterioaux, cadenaidypal : string;
  idcampo, palabra : string;
  pospc, posini : integer;
  pospcbandera: integer;
  posidcampofin : integer;
  ciclo, i : integer;
  posiniciorescatepal, posfinrescatepalabra : integer;
  idcampos : Tstringlist;
  existe : boolean;
  havingcount : integer;
  ConsultasCriterios: Tconsultas;
begin
ConsultasCriterios:=Tconsultas.Create;
idcampos:=Tstringlist.Create;
criterioaux:='';
criterioaux:=criterio;
consulta1:='';
consulta1:='select numinsumoespecificado from tic_detalleespecificado where ';
//ansicomparetext();
//AnsiContainsText();
//AnsiMidStr() AnsiMidStr( 'PROGRAMANDO CON DELPHI', 7, 5 ) devuelve MANDO;
//AnsiPos()AnsiPos( 'PALABRA', 'BUSCANDO UNA PALABRA' ) devuelve 14;
//Delete() Delete( sTexto, 10, 14 );
//DupeString() DupeString( 'HOLA ', 3 ) devuelve HOLA HOLA HOLA;
//LastDelimitar LastDelimiter( ',', 'PABLO,JUAN,MARIA,MARCOS' ) devuelve 17;
    pospcbandera:= ansipos(';', criterioaux);
    ciclo:=0;
    while pospcbandera<>0 do
    begin
    //rescato la cadena al cual tien el id y la palabra
      posini:=0;
      pospc:=ansipos(';', criterioaux);
      cadenaidypal:=AnsiMidStr(criterioaux, posini, pospc);
    //fin del rescate de la plabra
    //rescate del idcampo
      posidcampofin:= ansipos('=', cadenaidypal);
      posidcampofin:=posidcampofin-1;
      idcampo:=AnsiMidStr(cadenaidypal, 0, posidcampofin);
      existe:=false;
      for i := 0 to idcampos.Count-1 do
      begin
        if idcampo=idcampos[i] then
        begin
          existe:=true;
        end;
      end;
      if existe=false then
      begin
        idcampos.Add(idcampo);
      end;
    //fin del rescate del idcampo
    //resceta palabra
      posiniciorescatepal:=ansipos('=', cadenaidypal);
      posiniciorescatepal:=posiniciorescatepal+1;
      posfinrescatepalabra:=ansipos(';', cadenaidypal);
      posfinrescatepalabra:=posfinrescatepalabra-posiniciorescatepal;
      palabra:= AnsiMidStr(cadenaidypal, posiniciorescatepal, posfinrescatepalabra);
    //fin rescate palabra
    //añadir a consultar
      if ciclo=0 then
      begin
        consulta1:=consulta1+'(idcampodetalle='+idcampo+' and campocadena like '+palabra+') ';
      end
      else
      begin
        consulta1:=consulta1+'or (idcampodetalle='+idcampo+' and campocadena like '+palabra+') ';
      end;
      //finañadido
      ciclo:=ciclo+1;
      pospc:=pospc;
      delete(criterioaux, 1, pospc);
      pospcbandera:= ansipos(';', criterioaux);
    end;
//#############Construccion de Consultas########################################
    consultaaux:='';
    consulta1:=consulta1+'group by numinsumoespecificado having count(*)='+inttostr(idcampos.Count);
    consulta2:='';
    consulta2:='select esp.numinsumoespecificado, esp.campocadena, esp.campofecha1, '+
    'esp.campofecha2, esp.camponumerico, esp.campoperiodo, esp.idarticulo, esp.idcampodetalle, '+
    'esp.iddetalleespecificado, esp.identrada, esp.identradadetalle, esp.tipodedato, esp.codigo, '+
    'esp.idmanttoprev, esp.recurrencia, esp.fechaespecificacion, espec.IdDetalle, espec.TituloDetalle, '+
    'ar.idarticulo, ar.tituloarticulo, sg.idsubgrupo, sg.titulosubgrupo, gr.idgrupo, gr.titulogrupo, '+
    'dis.iddisciplina, dis.titulodisciplina, '+
    //----------------------------------------------------------------------------
    'ifnull((select tman.fechamantto from tic_mantenimientos tman where '+
    'tman.numinsumoespecificado=esp.numinsumoespecificado and '+
    'tman.tipommanto = "PREVENTIVO" AND '+
    'tman.fechamantto =(select MAX(x.fechamantto) from tic_mantenimientos x '+
    'where x.numinsumoespecificado=esp.numinsumoespecificado '+
    'and x.tipommanto="PREVENTIVO") '+
    'group by tman.numinsumoespecificado), "No Realizado Aún") as ultimomanttoprev, '+
    //----------------------------------------------------------------------------
    'IFNULL((select concat(np.APaterno, " ", np.AMaterno, " ", np.Nombres) from '+
    'tic_resguradosdetalle trd '+
    'inner join tic_resguardos tr on (tr.idticresguardos=trd.idresguardoentrega) '+
    'inner join nuc_personal np on (np.idpersonal=tr.recibio) '+
    'where '+
    'trd.idresguardorecibido<0 and trd.numinsumoespecificado=:numinsumo), "N/A") as asignado, '+
    //----------------------------------------------------------------------------
    '(select date_add(ifnull((select tman.fechamantto from tic_mantenimientos tman '+
    'where '+
    'tman.numinsumoespecificado=esp.numinsumoespecificado and '+
    'tman.tipommanto = "PREVENTIVO" AND '+
    'tman.fechamantto =(select MAX(x.fechamantto) from tic_mantenimientos x '+
    'where x.numinsumoespecificado=esp.numinsumoespecificado '+
    'and x.tipommanto="PREVENTIVO") '+
    'group by tman.numinsumoespecificado), esp.fechaespecificacion), '+
    'INTERVAL esp.recurrencia DAY)) as proximomantto, '+
    //.................modificacion 21-08-2012..................................
    'CONCAT((GROUP_CONCAT(" ", CodigoDetalle, ":", (select case espec.tipodato '+
    'when "CADENA" '+
    'THEN CAST((select campocadena from tic_detalleespecificado where iddetalleespecificado =esp.iddetalleespecificado) as CHAR) '+
    'when "NUMERICO" '+
    'then CAST((select camponumerico from tic_detalleespecificado where iddetalleespecificado =esp.iddetalleespecificado) as char) '+
    'when "FECHA" '+
    'then CAST((select campofecha1 from tic_detalleespecificado where iddetalleespecificado =esp.iddetalleespecificado) as char) '+
    'else CAST((select concat(campofecha1, " al ", campofecha2 ) from tic_detalleespecificado where iddetalleespecificado =esp.iddetalleespecificado) as char) END '+
    '))), ".") as descripciontotal '+
    //..........................................................................
    //----------------------------------------------------------------------------
    'FROM tic_detalleespecificado esp '+
    'inner join alm_especdetalle espec on (espec.IdDetalle = esp.idcampodetalle) '+
    'inner join alm_articulo ar on (ar.idarticulo = esp.idarticulo) '+
    'inner join alm_subgrupo sg on (sg.idsubgrupo = esp.idsubgrupo) '+
    'inner join alm_grupo gr on (sg.idgrupo = gr.idgrupo) '+
    'inner join nuc_disciplina dis on (gr.iddisciplina = dis.iddisciplina) '+
    'where '+
    'esp.numinsumoespecificado in(';
    consulta2:=consulta2+consulta1;
    consulta2:=consulta2+')group by esp.numinsumoespecificado ';


    ConsultasCriterios.consultainsumos:= consulta2;
//Extracion Consulta Ultimo Mantto Prev-----------------------------------------
    ConsultasCriterios.conultimomanttoprev:='';
     ConsultasCriterios.conultimomanttoprev:='select man.numinsumoespecificado, man.tipommanto,'+
     'man.codigoinsumo, man.codigomantenimiento, man.fechamantto, man.tareasrealizadas, man.descripcionfallas, '+
     'man.idmantenimiento FROM tic_mantenimientos man '+
     'INNER JOIN '+
     '(select idarticulo, idsubgrupo, numinsumoespecificado from tic_detalleespecificado '+
     'group by numinsumoespecificado, idsubgrupo, idarticulo ) esp '+
     'on (esp.numinsumoespecificado = man.numinsumoespecificado) '+
     'inner join alm_articulo ar on (ar.idarticulo = esp.idarticulo) '+
     'inner join alm_subgrupo sg on (sg.idsubgrupo = esp.idsubgrupo) '+
     'inner join alm_grupo gr on (sg.idgrupo = gr.idgrupo) '+
     'inner join nuc_disciplina dis on (gr.iddisciplina = dis.iddisciplina) '+
     'where esp.numinsumoespecificado IN (';
     ConsultasCriterios.conultimomanttoprev:=ConsultasCriterios.conultimomanttoprev+consulta1;
     ConsultasCriterios.conultimomanttoprev:=ConsultasCriterios.conultimomanttoprev+') '+
     'and man.tipommanto = "PREVENTIVO" '+
     'and man.fechamantto = (select MAX(x.fechamantto) from tic_mantenimientos x '+
     'where x.numinsumoespecificado = man.`numinsumoespecificado` and x.tipommanto = man.tipommanto) '+
     'and man.idmantenimiento = (select MAX(x.idmantenimiento) from tic_mantenimientos x '+
     'where x.numinsumoespecificado = man.numinsumoespecificado and '+
     'x.tipommanto = man.tipommanto and x.fechamantto = man.fechamantto) ';
//------------------------------------------------------------------------------
//-----------Extracion Ultimos Mantto Correctivo--------------------------------
     ConsultasCriterios.conultimomanttocorrect:='';
     ConsultasCriterios.conultimomanttocorrect:='select man.numinsumoespecificado, man.tipommanto, '+
     'man.codigoinsumo, man.codigomantenimiento, man.fechamantto, man.tareasrealizadas, man.descripcionfallas, '+
     'man.idmantenimiento FROM tic_mantenimientos man '+
     'INNER JOIN (select idarticulo, idsubgrupo, numinsumoespecificado from tic_detalleespecificado '+
     'group by numinsumoespecificado, idsubgrupo, idarticulo ) esp '+
     'on (esp.numinsumoespecificado = man.numinsumoespecificado) '+
     'inner join alm_articulo ar on (ar.idarticulo = esp.idarticulo) '+
     'inner join alm_subgrupo sg on (sg.idsubgrupo = esp.idsubgrupo) '+
     'inner join alm_grupo gr on (sg.idgrupo = gr.idgrupo) '+
     'inner join nuc_disciplina dis on (gr.iddisciplina = dis.iddisciplina) '+
     'where esp.numinsumoespecificado IN  (';
     ConsultasCriterios.conultimomanttocorrect:=ConsultasCriterios.conultimomanttocorrect+consulta1;
     ConsultasCriterios.conultimomanttocorrect:=ConsultasCriterios.conultimomanttocorrect+')'+
     'and man.tipommanto = "CORRECTIVO" '+
     'and man.fechamantto = (select MAX(x.fechamantto) from tic_mantenimientos x '+
     'where x.numinsumoespecificado = man.`numinsumoespecificado` and x.tipommanto = man.tipommanto) '+
     'and man.idmantenimiento = (select MAX(x.idmantenimiento) from tic_mantenimientos x where '+
     'x.numinsumoespecificado = man.numinsumoespecificado and x.tipommanto = man.tipommanto and x.fechamantto = man.fechamantto)';
//------------------------------------------------------------------------------
//-----------Extracion Proximos Mantto Prev-------------------------------------
     ConsultasCriterios.conproxmanttoprev:='';
     ConsultasCriterios.conproxmanttoprev:=ConsultasCriterios.conproxmanttoprev+
     'select esp.numinsumoespecificado, esp.codigo, ar.tituloarticulo, esp.fechaespecificacion, '+
     'esp.recurrencia, manaux.fechamantto, '+
     '(SELECT DATE_ADD(ifnull(manaux.fechamantto, esp.fechaespecificacion), INTERVAL esp.recurrencia DAY)) as proximomantto '+
     'FROM  tic_detalleespecificado esp Left join '+
     '(select man.numinsumoespecificado, man.fechamantto, man.idmantenimiento FROM tic_mantenimientos man '+
     'INNER JOIN (select idarticulo, numinsumoespecificado from tic_detalleespecificado '+
     'group by numinsumoespecificado, idarticulo ) espd '+
     'on (espd.numinsumoespecificado = man.numinsumoespecificado) '+
     'inner join alm_articulo ar on (ar.idarticulo = espd.idarticulo) '+
     'inner join alm_subgrupo sg on (sg.idsubgrupo = ar.idsubgrupo) '+
     'inner join alm_grupo gr on (sg.idgrupo = gr.idgrupo) '+
     'inner join nuc_disciplina dis on (gr.iddisciplina = dis.iddisciplina) '+
     'where espd.numinsumoespecificado IN (';
     ConsultasCriterios.conproxmanttoprev:=ConsultasCriterios.conproxmanttoprev+consulta1;
     ConsultasCriterios.conproxmanttoprev:=ConsultasCriterios.conproxmanttoprev+')'+
    'and man.tipommanto = "PREVENTIVO" '+
    'and man.fechamantto = (select MAX(x.fechamantto) from tic_mantenimientos x where '+
    'x.numinsumoespecificado = man.`numinsumoespecificado` and x.tipommanto = man.tipommanto) '+
    'and man.idmantenimiento = (select MAX(x.idmantenimiento) from tic_mantenimientos x where '+
    'x.numinsumoespecificado = man.numinsumoespecificado and x.tipommanto = man.tipommanto and x.fechamantto = man.fechamantto)) '+
    'manaux on (manaux.numinsumoespecificado =esp.numinsumoespecificado) '+
    'inner join alm_articulo ar on (ar.idarticulo = esp.idarticulo) '+
    'inner join alm_subgrupo sg on (sg.idsubgrupo = esp.idsubgrupo) '+
    'inner join alm_grupo gr on (sg.idgrupo = gr.idgrupo) '+
    'inner join nuc_disciplina dis on (gr.iddisciplina = dis.iddisciplina) '+
    'where esp.numinsumoespecificado IN (';
    ConsultasCriterios.conproxmanttoprev:=ConsultasCriterios.conproxmanttoprev+consulta1;
    ConsultasCriterios.conproxmanttoprev:=ConsultasCriterios.conproxmanttoprev+')'+
    'group by esp.numinsumoespecificado';
//------------------------------------------------------------------------------
//----------------------Extraccion de Insumos Asignados-------------------------
    ConsultasCriterios.coninsasignados:='';
    ConsultasCriterios.coninsasignados:='select rd.codigoinsumo, rd.idarticulo, '+
    'rd.numinsumoespecificado, concat(per.APaterno, " ", per.AMaterno, " ",per.Nombres) as nomap, '+
    'ar.tituloarticulo,rd.fechaasig from tic_resguradosdetalle rd '+
    'inner join nuc_personal per on(per.idpersonal=rd.idpersonal) '+
    'inner join alm_articulo ar on (ar.idarticulo=rd.idarticulo) '+
    'inner join alm_subgrupo sg on (sg.idsubgrupo = ar.idsubgrupo) '+
    'inner join alm_grupo gr on (sg.idgrupo = gr.idgrupo) '+
    'inner join nuc_disciplina dis on (gr.iddisciplina = dis.iddisciplina) '+
    'where rd.numinsumoespecificado IN (';
    ConsultasCriterios.coninsasignados:=ConsultasCriterios.coninsasignados+consulta1;
    ConsultasCriterios.coninsasignados:=ConsultasCriterios.coninsasignados+')'+
    'and rd.fechavigencia is null order by rd.numinsumoespecificado';
//------------------------------------------------------------------------------
//-------------------Extraccion de Insumos No Asignados-------------------------
    ConsultasCriterios.coninsnoasignados:='';
    ConsultasCriterios.coninsnoasignados:=ConsultasCriterios.coninsnoasignados+
    'SELECT esp.numinsumoespecificado, ar.tituloarticulo, esp.fechaespecificacion, '+
    'esp.codigo, concat("No Asignado") as estado '+
    'from tic_detalleespecificado esp '+
    'inner join alm_articulo ar on(ar.idarticulo=esp.idarticulo) '+
    'inner join alm_subgrupo sg on (sg.idsubgrupo = esp.idsubgrupo)'+
    'inner join alm_grupo gr on (sg.idgrupo = gr.idgrupo) '+
    'inner join nuc_disciplina dis on (gr.iddisciplina = dis.iddisciplina) '+
    'where esp.numinsumoespecificado IN (';
    ConsultasCriterios.coninsnoasignados:=ConsultasCriterios.coninsnoasignados+consulta1;
    ConsultasCriterios.coninsnoasignados:=ConsultasCriterios.coninsnoasignados+')'+
    'and not EXISTS (select rd.numinsumoespecificado from tic_resguradosdetalle rd where '+
    'rd.fechavigencia is null and rd.numinsumoespecificado=esp.numinsumoespecificado) '+
    'group by esp.numinsumoespecificado';
//------------------------------------------------------------------------------
    result:= ConsultasCriterios;
end;

procedure TFrmVentanaPrincipalTIC.AccedeACoordenadas;
var
  Existe: Boolean;
  xLeft, xTop, xWidth, xHeight: Integer;
  OldState: TWindowState;
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

  // Por default la ventana será tratada como Normal
  OldState := wsNormal;

  // Verificar si la ventana estaba maximizada al cerrarla la última vez
  if (xHeight = 0) or (xWidth = 0) then
    OldState := wsMaximized;

  if (xHeight = -10) or (xWidth = -10) then
    OldState := wsMinimized;

  // Posicionar la ventana en su último lugar
  Self.Left := xLeft;
  Self.Top := xTop;
  if OldState = wsNormal then
  begin
  // Corregir los valores necesarios
  if xWidth = 0 then xWidth := Self.Width;
  if xHeight = 0 then xHeight := Self.Height;

  // Cambiar la posicion de la ventana a la última utilizada
  Self.Width := xWidth;
  Self.Height := xHeight;
  end
  else
    Self.WindowState := OldState;
end;

procedure TFrmVentanaPrincipalTIC.imprimirvalederesguardo(idresguardo, cantregistros, idpersonal: integer);
var
  LocName : string;
begin
try
    if cantregistros=0 then
      raise Exception.Create('No hay resguardos relacionados con el insumo');

    //idresguardo:=cdhistorialasig.FieldByName('idticresguardos').AsInteger;
    //Filtrado del resguardo


   { if cdresguardo.Active =false then
    begin
      if Not CrearConjunto(cdresguardo, 'tic_asignacionestic', ccCatalog) then
       raise InteligentException.Create('No se ha podido acceder a la consulta de la "Resguardos y Detalles", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdresguardo, 'idticresguardos', [idresguardo]) then
       raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdresguardo.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdresguardo, 'idticresguardos', [idresguardo]) then
       raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdresguardo.Refresh;
    end;
    //Fin Filtrado del Resguardo
    LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmPrincipalValedeResguardo.fr3';
    if not FileExists(LocName) then
    begin
    raise Exception.Create('No se encuentra el formato del reporte a imprimir');
    end
    else
    begin
      frxReport1.LoadFromFile(LocName);
      frxReport1.ShowReport(TRUE);
    end;}

    if cdpersonal.Active =false then
    begin
      if Not CrearConjunto(cdpersonal, 'nuc_personal', ccCatalog) then
         raise InteligentException.Create('No se ha podido acceder a la consulta de la "Resguardos y Detalles", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [idpersonal]) then
         raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdpersonal.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdpersonal, 'idpersonal', [idpersonal]) then
       raise InteligentException.Create('El criterio para la selección de Resguardos "Tic Resguardos" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdpersonal.Refresh;
    end;

      TicRepModuleUnit.frxDBDResguardo.DataSet:=cdresasigact;
      TicRepModuleUnit.frxDBPersonal.DataSource:=dspersonal;

        LocName := ExtractFilePath(Application.ExeName) + 'Reportes\FrmValedeResguardo.fr3';

        if FileExists(LocName) then
        begin
          FrxValeResguardoEntrega.LoadFromFile(LocName);
          FrxValeResguardoEntrega.ShowReport(TRUE);
        end
        else
        begin
          InteliDialog.ShowModal('No Existe el archivo: '+LocName, '' + #10 + #10 + '', mtInformation, [mbOK], 0);
        end;

  except
  on e:exception do
    InteliDialog.ShowModal('El Insumo no tiene historial de asignaciones.', e.Message, mtInformation, [mbOk], 0);
  end;
end;
//........................cargar busqueda 2.....................................
procedure TFrmVentanaPrincipalTIC.cargarbusqueda2(cadena: string);
begin
  try
{
      griddetalle.DataSource:=nil;
      griddetalle.Columns.Clear;
}
    if cddetespxarxgrxsg.Active=false then
    begin
      if Not CrearConjunto(cddetespxarxgrxsg, 'tic_actdestesp_xar_xgr_sg', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de la "tabla Detalle Especificado", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cddetespxarxgrxsg, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cddetespxarxgrxsg.Open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cddetespxarxgrxsg, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Areas "cddetespxarxgrxsg" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cddetespxarxgrxsg.Refresh;
    end;
    ProgressBar1.Position:=30;
    if cdultimosmanttoprev.Active=false then
    begin
      if Not CrearConjunto(cdultimosmanttoprev, 'tic_mantto_auxiliares2', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdultimosmanttoprev, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdultimosmanttoprev.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdultimosmanttoprev, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdultimosmanttoprev.Refresh;
    end;
     ProgressBar1.Position:=40;
    if cdultimomanttocorrect.Active =false then
    begin
      if Not CrearConjunto(cdultimomanttocorrect, 'tic_mantto_auxiliares2', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
    if Not CargarDatosFiltrados(cdultimomanttocorrect, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
      raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
    cdultimomanttocorrect.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdultimomanttocorrect, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdultimomanttocorrect.Refresh;
    end;
     ProgressBar1.Position:=50;
    if cdsiguientemanttoprev.Active=false then
    begin
      if Not CrearConjunto(cdsiguientemanttoprev, 'tic_mantto_auxiliares3', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdsiguientemanttoprev, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdsiguientemanttoprev.Refresh;
    end;
    ProgressBar1.Position:=60;
    if cdasignados.Active=false then
    begin
      if Not CrearConjunto(cdasignados, 'tic_resguardo_insumoasignado', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdasignados, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdasignados, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.Refresh;
    end;
     ProgressBar1.Position:=70;
    if cdasignados.Active=false then
    begin
      if Not CrearConjunto(cdasignados, 'tic_resguardo_insumoasignado', ccCatalog) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdasignados, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdasignados, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdasignados.open;
    end;
     ProgressBar1.Position:=80;
    if cdnoasignados.Active=false then
    begin
      if Not CrearConjunto(cdnoasignados, 'tic_resguardo_insumoasignado', ccSelect) then
        raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
      if Not CargarDatosFiltrados(cdnoasignados, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdnoasignados.open;
    end
    else
    begin
      if Not CargarDatosFiltrados(cdnoasignados, cadena, [critbusqueda.area, critbusqueda.grupo, critbusqueda.subgrupo, critbusqueda.articulo]) then
        raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
      cdnoasignados.Refresh;
    end;
    ProgressBar1.Position:=90;
    //cargardatosmem();
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal('Ha ocurrido un error de acceso a datos', e.Message, mtError, [mbOk], 0);
    end;
  end;
end;




end.
