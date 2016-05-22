unit UTFrmModificacionInsumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBClient, NxCollection, JvExControls,
  JvLabel, Mask, DBCtrls, Menus, JvExStdCtrls, JvBehaviorLabel, UInteliDialog,
  Contnrs, ComCtrls;

type
  TFrmModificacionInsumo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    cdinsumoespecificado: TClientDataSet;
    cdupdateinsumo: TClientDataSet;
    dsinsumoespecificado: TDataSource;
    dsupdateinsumo: TDataSource;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    JvLabel1: TJvLabel;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    NxButton3: TNxButton;
    NxOptionButton1: TNxOptionButton;
    PopupMenu1: TPopupMenu;
    Guardar1: TMenuItem;
    cancelar1: TMenuItem;
    Salir1: TMenuItem;
    JvBehaviorLabel1: TJvBehaviorLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure NxOptionButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    numinsumoespecificado : integer;
    dbeditej : tedit;
    jvlabelej : TJvLabel;
    edtrecurrencia : tedit;
    edttextos : TObjectList;
    dateedt : TDateTimePicker;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModificacionInsumo: TFrmModificacionInsumo;

implementation
  uses
    ClientModuleUnit1, xDatabase;
{$R *.dfm}

procedure TFrmModificacionInsumo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    cdinsumoespecificado.Close;
    cdupdateinsumo.Close;
    eliminarconjunto([cdinsumoespecificado, cdupdateinsumo]);
  except
    on e:exception do
    InteliDialog.ShowModal('Error al cerrar y eliminar datos temprales ', 'Error desconocido, informe al administrador, Error: ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmModificacionInsumo.FormShow(Sender: TObject);
var
  i, top, left:integer;
begin
  try
    ClientModule1.ComponentColor(self);
    FrmModificacionInsumo.Height:= 305;
//----------------Datos Generales No Modificables------------------------------
    jvlabelej:= tjvlabel.Create(self);
    jvlabelej.Left:=20;
    jvlabelej.Top:=20+3;
    jvlabelej.Width:=150;
    jvlabelej.Height:=50;
    jvlabelej.Parent:=groupbox2;
    jvlabelej.Name:='lblgen1';
    jvlabelej.Caption:='Codigo';

    dbeditej := tedit.Create(self);
    dbeditej.Top:=20;
    dbeditej.Left:=20+150;
    dbeditej.Width:=200;
    dbeditej.Height:=50;
    dbeditej.Parent:=GroupBox2;
    dbeditej.Name:='edtgen1';
    dbeditej.Enabled :=false;
    dbeditej.Text:=cdinsumoespecificado.FieldByName('codigo').AsString;

//..............................................................................

    jvlabelej:= tjvlabel.Create(self);
    jvlabelej.Left:=20;
    jvlabelej.Top:=40+3;
    jvlabelej.Width:=150;
    jvlabelej.Height:=50;
    jvlabelej.Parent:=groupbox2;
    jvlabelej.Name:='lblgen2';
    jvlabelej.Caption:='Subgrupo';

    dbeditej := tedit.Create(self);
    dbeditej.Top:=40;
    dbeditej.Left:=20+150;
    dbeditej.Width:=200;
    dbeditej.Height:=50;
    dbeditej.Parent:=GroupBox2;
    dbeditej.Name:='edtgen2';
    dbeditej.Enabled :=false;
    dbeditej.Text:=cdinsumoespecificado.FieldByName('titulosubgrupo').AsString;

//..............................................................................

    jvlabelej:= tjvlabel.Create(self);
    jvlabelej.Left:=20;
    jvlabelej.Top:=60+3;
    jvlabelej.Width:=150;
    jvlabelej.Height:=50;
    jvlabelej.Parent:=groupbox2;
    jvlabelej.Name:='lblgen3';
    jvlabelej.Caption:='Fecha especificacion';

    dbeditej := tedit.Create(self);
    dbeditej.Top:=60;
    dbeditej.Left:=20+150;
    dbeditej.Width:=200;
    dbeditej.Height:=50;
    dbeditej.Parent:=GroupBox2;
    dbeditej.Name:='edtgen3';
    dbeditej.Enabled :=false;
    dbeditej.Text:=cdinsumoespecificado.FieldByName('fechaespecificacion').AsString;
//..............................................................................

    jvlabelej:= tjvlabel.Create(self);
    jvlabelej.Left:=20;
    jvlabelej.Top:=80+3;
    jvlabelej.Width:=150;
    jvlabelej.Height:=50;
    jvlabelej.Parent:=groupbox2;
    jvlabelej.Name:='lblgen4';
    jvlabelej.Caption:='Recurrencia';

    edtrecurrencia := tedit.Create(self);
    edtrecurrencia.Top:=80;
    edtrecurrencia.Left:=20+150;
    edtrecurrencia.Width:=200;
    edtrecurrencia.Height:=50;
    edtrecurrencia.Parent:=GroupBox2;
    edtrecurrencia.Name:='edtgen4';
    edtrecurrencia.Text:=cdinsumoespecificado.FieldByName('Recurrencia').AsString;

//-----------------------------------------------------------------------------
    top:=0;
    left:=20;
    i:=0;
    cdinsumoespecificado.First;
    edttextos := TObjectList.Create;
    while not cdinsumoespecificado.Eof do
    begin
      i:=i+1;
      top:=top+20;
      if (cdinsumoespecificado.FieldByName('TipoDato').AsString='CADENA')
      or (cdinsumoespecificado.FieldByName('TipoDato').AsString='NUMERICO') then
      BEGIN
        jvlabelej:= tjvlabel.Create(self);
        jvlabelej.Left:=left;;
        jvlabelej.Top:=top;
        jvlabelej.Width:=150;
        jvlabelej.Height:=50;
        jvlabelej.Parent:=groupbox1;
        jvlabelej.Name:='lblesp'+inttostr(i);
        jvlabelej.Caption:=cdinsumoespecificado.FieldByName('CodigoDetalle').AsString;

        dbeditej := tedit.Create(self);
        dbeditej.Top:=top;
        dbeditej.Left:=left+150;
        dbeditej.Width:=200;
        dbeditej.Height:=50;
        dbeditej.Parent:=GroupBox1;
        dbeditej.Name:='edtesp'+inttostr(i);
        dbeditej.Text:=cdinsumoespecificado.FieldByName('contenidocampo').AsString;
        dbeditej.Tag:=cdinsumoespecificado.FieldByName('iddetalleespecificado').AsInteger;
        cdinsumoespecificado.Next;
        edttextos.Add(dbeditej);
      END;

      if cdinsumoespecificado.FieldByName('TipoDato').AsString='FECHA' then
      begin
        jvlabelej:= tjvlabel.Create(self);
        jvlabelej.Left:=left;;
        jvlabelej.Top:=top;
        jvlabelej.Width:=150;
        jvlabelej.Height:=50;
        jvlabelej.Parent:=groupbox1;
        jvlabelej.Name:='lblesp'+inttostr(i);
        jvlabelej.Caption:=cdinsumoespecificado.FieldByName('CodigoDetalle').AsString;

        dateedt:=TDateTimePicker.Create(self);
        dateedt.Top:=top;
        dateedt.Left:=left+150;
        dateedt.Width:=200;
        dateedt.Height:=50;
        dateedt.Parent:=GroupBox1;
        dateedt.Name:='edtesp'+inttostr(i);
        dateedt.Date:=cdinsumoespecificado.FieldByName('contenidocampo').AsDateTime;
        dateedt.Tag:=cdinsumoespecificado.FieldByName('iddetalleespecificado').AsInteger;
        cdinsumoespecificado.Next;
        edttextos.Add(dateedt);
      end;
    end;
    FrmModificacionInsumo.Height:= FrmModificacionInsumo.Height + top+20;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al Mostrar el formulario ', 'Error desconocido, informe al administrador, Error: ' + e.message, mtError, [mbOK], 0);
      close;
    end;
  end;
end;

procedure TFrmModificacionInsumo.NxButton1Click(Sender: TObject);
var
  i: integer;
begin
  try
  edtrecurrencia.Text:=cdinsumoespecificado.FieldByName('Recurrencia').AsString;
  for i := 0 to edttextos.Count-1 do
  begin
   cdinsumoespecificado.IndexFieldNames:='iddetalleespecificado';
   cdinsumoespecificado.SetRange([Tedit(edttextos.Items[i]).Tag],[Tedit(edttextos.Items[i]).Tag]);
    if (cdinsumoespecificado.RecordCount<>0) and
    (cdinsumoespecificado.FieldByName('TipoDato').AsString='CADENA')then
    begin
     Tedit(edttextos.Items[i]).Text:=cdinsumoespecificado.FieldByName('contenidocampo').AsString;
    end;

    if (cdinsumoespecificado.RecordCount<>0) and
    (cdinsumoespecificado.FieldByName('TipoDato').AsString='NUMERICO')then
    begin
     Tedit(edttextos.Items[i]).Text:=cdinsumoespecificado.FieldByName('contenidocampo').AsString;
    end;

    if (cdinsumoespecificado.RecordCount<>0) and
    (cdinsumoespecificado.FieldByName('TipoDato').AsString='FECHA')then
    begin
     TDateTimePicker(edttextos.Items[i]).Date:=cdinsumoespecificado.FieldByName('contenidocampo').AsDateTime;
    end;
  end;
  except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error al realizar la cancelacion ', 'Error desconocido, informe al administrador, Error: ' + e.message, mtError, [mbOK], 0);
      close;
    end;
  end;
end;

procedure TFrmModificacionInsumo.NxButton2Click(Sender: TObject);
var
  numinsumo, i : integer;
begin
  try
    numinsumo:=cdinsumoespecificado.FieldByName('numinsumoespecificado').AsInteger;
    if cdinsumoespecificado.FieldByName('Recurrencia').AsInteger<>strtoint(edtrecurrencia.text) then
    begin
      if cdupdateinsumo.Active=false then
      begin
        if Not CrearConjunto(cdupdateinsumo, 'tic_detalleespecificado', ccUpdate) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdupdateinsumo, 'numinsumoespecificado', [numinsumo]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdupdateinsumo.open;
      end
      else
      begin
        if Not CargarDatosFiltrados(cdupdateinsumo, 'numinsumoespecificado', [numinsumo]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdupdateinsumo.refresh;
      end;
      cdupdateinsumo.First;
      while not cdupdateinsumo.Eof do
      begin
        cdupdateinsumo.Edit;
        cdupdateinsumo.FieldByName('recurrencia').AsInteger:=strtoint(edtrecurrencia.text);
        cdupdateinsumo.Post;
        cdupdateinsumo.ApplyUpdates(-1);
        cdupdateinsumo.Next;
      end;
    end;

      if cdupdateinsumo.Active=false then
      begin
        if Not CrearConjunto(cdupdateinsumo, 'tic_detalleespecificado', ccUpdate) then
          raise InteligentException.Create('No se ha podido acceder a la consulta de "Detalle Resguardos", es probable que exista un error de comunicación con el servidor de la base de datos');
        if Not CargarDatosFiltrados(cdupdateinsumo, 'numinsumoespecificado', [numinsumo]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdupdateinsumo.open;
      end
      else
      begin
        if Not CargarDatosFiltrados(cdupdateinsumo, 'numinsumoespecificado', [numinsumo]) then
          raise InteligentException.Create('El criterio para la selección de Resguardos "tic_resguardos_asignaciones" es incorrecto o bien se ha perdido la comunicación con la base de datos, verifique esto e intente de nuevo');
        cdupdateinsumo.refresh;
      end;

    edttextos.First;
    for i := 0 to edttextos.Count-1 do
    begin
      cdupdateinsumo.IndexFieldNames:='iddetalleespecificado';
      cdupdateinsumo.SetRange([Tedit(edttextos.Items[i]).Tag],[Tedit(edttextos.Items[i]).Tag]);

      cdinsumoespecificado.IndexFieldNames:='iddetalleespecificado';
      cdinsumoespecificado.SetRange([Tedit(edttextos.Items[i]).Tag],[Tedit(edttextos.Items[i]).Tag]);
      if (cdupdateinsumo.RecordCount<>0) and (cdinsumoespecificado.RecordCount<>0)then
      begin
        if (cdinsumoespecificado.FieldByName('Tipodato').AsString='CADENA')
        and(cdinsumoespecificado.FieldByName('contenidocampo').AsString<>Tedit(edttextos.Items[i]).text) then
        begin
          cdupdateinsumo.Edit;
          cdupdateinsumo.FieldByName('campocadena').AsString:=Tedit(edttextos.Items[i]).text;
          cdupdateinsumo.Post;
          cdupdateinsumo.ApplyUpdates(-1);
        end;

        if (cdinsumoespecificado.FieldByName('Tipodato').AsString='NUMERICO')
        and(cdinsumoespecificado.FieldByName('contenidocampo').AsString<>Tedit(edttextos.Items[i]).text) then
        begin
          cdupdateinsumo.Edit;
          cdupdateinsumo.FieldByName('camponumerico').AsFloat:=strtofloat(Tedit(edttextos.Items[i]).text);
          cdupdateinsumo.Post;
          cdupdateinsumo.ApplyUpdates(-1);
        end;

        if (cdinsumoespecificado.FieldByName('Tipodato').AsString='FECHA')
        and(cdinsumoespecificado.FieldByName('contenidocampo').AsString<>Tedit(edttextos.Items[i]).text) then
        begin
          cdupdateinsumo.Edit;
          cdupdateinsumo.FieldByName('campofecha1').AsDateTime:=TDateTimePicker(edttextos.Items[i]).Date;
          cdupdateinsumo.Post;
          cdupdateinsumo.ApplyUpdates(-1);
        end;
      end;
      cdupdateinsumo.CancelRange;
      cdinsumoespecificado.CancelRange;
    end;
    InteliDialog.ShowModal('Información del sistema ', 'Se ha guardado los datos correctamente ', mtInformation, [mbOK], 0);
    close;
  except
    on e:exception do
      InteliDialog.ShowModal('Error al guardar los datos del insumo ', 'Error desconocido, informe al administrador, Error: ' + e.message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmModificacionInsumo.NxButton3Click(Sender: TObject);
begin
close;
end;

procedure TFrmModificacionInsumo.NxOptionButton1Click(Sender: TObject);
var
 Point : Tpoint;
begin
  try
   GetCursorPos(Point);
   PopupMenu1.Popup(Point.X, Point.Y);
  except
    on e:exception do
      InteliDialog.ShowModal('Error al desplegar menu ', 'Error desconocido, informe al administrador' + e.message, mtError, [mbOK], 0);
  end;
end;

end.
