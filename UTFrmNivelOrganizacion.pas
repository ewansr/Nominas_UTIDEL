unit UTFrmNivelOrganizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBClient, ClientModuleUnit1, ComCtrls, UInteliDialog,
  ImgList;

type
  TDatosNodo = class
    Id: Integer;
    Wbs: String;
  end;

  TFrmNivelOrganizacion = class(TForm)
    PaintBox1: TPaintBox;
    ListView1: TListView;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AlimentarTree(Padre: TTreeNode);
    procedure LlenaTreeView;
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ArmarImagen;
  private
    cdNivelOrg,
    cdOrganizacion: TClientDataSet;
  public
    { Public declarations }
  end;

var
  FrmNivelOrganizacion: TFrmNivelOrganizacion;

implementation

{$R *.dfm}

procedure TFrmNivelOrganizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  LiberarVentana(Self, Action);
end;

procedure TFrmNivelOrganizacion.AlimentarTree;
var
  cdTreeOrganizacion: TClientDataSet;
  Datos: TDatosNodo;
  NewNodo: TTreeNode;
  NewItem: TListItem;
begin
  Try
    cdTreeOrganizacion := TClientDataSet.Create(Self);
    CrearConjunto(cdTreeOrganizacion, 'nuc_organizacion_tree', ccSelect);
    CargarDatosFiltrados(cdTreeOrganizacion, 'Padre', [-5]);

    cdTreeOrganizacion.Open;

    // Alimentar el listview con los datos de la estructura de organización
    while Not cdTreeOrganizacion.Eof do
    begin
      Datos := TDatosNodo.Create;
      Datos.Id := cdTreeOrganizacion.FieldByName('IdOrganizacion').AsInteger;
      Datos.Wbs := cdTreeOrganizacion.FieldByName('Wbs').AsString;

      NewItem := ListView1.Items.Add;
      NewItem.Caption := cdTreeOrganizacion.FieldByName('TituloOrganizacion').AsString;
      NewItem.ImageIndex := 0;

      {if cdTreeOrganizacion.FieldByName('CuentaHijos').AsInteger > 0 then
        AlimentarTree(NewNodo);}

      cdTreeOrganizacion.Next;
    end;
  Finally
    cdTreeOrganizacion.Close;
    EliminarConjunto(cdTreeOrganizacion);
  End;
end;

procedure TFrmNivelOrganizacion.ListView1Change(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
  // Seleccionar los datos correspondientes al nodo seleccionado
  cdOrganizacion.Close;
  CargarDatosFiltrados(cdOrganizacion, 'Wbs', [TDatosNodo(ListView1.Selected.Data).Wbs]);
  cdOrganizacion.Open;

  ArmarImagen; // Armar la imagen correspondiente
end;

procedure TFrmNivelOrganizacion.LlenaTreeView;
begin
  Try
    ListView1.Items.BeginUpdate;
    AlimentarTree(Nil); // Alimentar el treeview con los datos de la estructura de organización
  Finally
    ListView1.Items.EndUpdate;
  End;
end;

procedure TFrmNivelOrganizacion.FormCreate(Sender: TObject);
begin
  AccedeACoordenadas(Self); // Reposicionar la ventana a su última posición

  // Acceder a los datos del nivel organización
  cdNivelOrg := TClientDataSet.Create(Self);
  CrearConjunto(cdNivelOrg, 'nuc_nivelorganizacion', ccUpdate);
  cdNivelOrg.Open;

  // Acceder a los datos de la organización
  cdOrganizacion := TClientDataSet.Create(Self);
  CrearConjunto(cdOrganizacion, 'nuc_organizacion_hijos', ccUpdate);

  Try
    LlenaTreeView;
  Except
    on e:exception do
    begin
      InteliDialog.ShowModal('Error de acceso a datos', 'ha ocurrido un error inesperado mientras se cargaban los datos de la organización de empresa, informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;

  // Obtener la imagen de la organización a un objeto de memoria


(*        Try
          if cdUsuarioOrg.FieldByName('Imagen').IsNull then
          begin
            ActualImagen := TBitMap.Create;

            // SI no contiene imagen este registro se debe verificar si el padre tiene imagen
            if UltimaImagen = Nil then
            begin
              // Si no es posible poner ni una sola imagen se deberá poner la imagen por default (la número 0) para respetar la secuencia
              ilAccesos.GetBitmap(0, ActualImagen);
              ListView1.Items.Item[ListView1.Items.Count -1].ImageIndex := 0;
            end
            else
              ActualImagen.Assign(UltimaImagen);
          end
          else
          begin
            // Crear el objeto que contendrá la imagen correspondiente a cada nivel
            Try
              bs := TStream.Create;
              bs := cdUsuarioOrg.CreateBlobStream(cdUsuarioOrg.FieldByName('Imagen') as TBlobField, bmRead);

              ActualImagen := TBitMap.Create;
              ActualImagen.LoadFromStream(bs as TStream);
            Finally
              FreeAndNil(bs);
            End;
          end;

          Try
            RespBitMap := TBitMap.Create;
            RespBitMap.Assign(ActualImagen);

            Redimensionar(ActualImagen, ilAccesos.Width, ilAccesos.Height);
            ilAccesos.Add(ActualImagen, Nil);   // Agregar la imagen a la lista de imagenes normales

            Redimensionar(RespBitMap, ilAccesosSmall.Width, ilAccesosSmall.Height);
            ilAccesosSmall.Add(RespBitMap, Nil);   // Agregar la imagen a la lista de imagenes pequeñas}
          Finally
            FreeAndNil(RespBitMap);
          End;
        Finally
          FreeAndNil(ActualImagen);
        End;
*)
end;

procedure TFrmNivelOrganizacion.FormDestroy(Sender: TObject);
begin
  EliminarConjunto(cdNivelOrg);
end;

procedure TFrmNivelOrganizacion.ArmarImagen;
begin
  //
end;

end.
