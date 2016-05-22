unit UTFrmSeleccionarDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxInplaceContainer, ClientModuleUnit1;

type
  TFrmSeleccionarDepartamento = class(TForm)
    tlDepto: TcxTreeList;
    Panel1: TPanel;
    btn_Ok: TcxButton;
    btn_Cancelar: TcxButton;
    procedure tlDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tlDeptoSelectionChanged(Sender: TObject);
  private
    ListaNodos: TStringList;
    Resultado: TcxTreeListNode;
    CadBuscar: String;
    procedure BuscarNodo;
  public
    { Public declarations }
  end;

var
  FrmSeleccionarDepartamento: TFrmSeleccionarDepartamento;

implementation

{$R *.dfm}

procedure TFrmSeleccionarDepartamento.FormShow(Sender: TObject);
var
  NodoOrganizacion,
  NodoOrganizacionPadre,
  NuevoNodo,
  PadreNodo: TcxTreeListNode;
  OldOrganizacion,
  OldOrganizacionPadre: Integer;
begin
  Resultado := Nil;
  CadBuscar := '';

  tlDepto.CreateColumn(tlDepto.Bands[0]);
  tlDepto.CreateColumn(tlDepto.Bands[0]);

  ListaNodos := TStringList.Create;
  ListaNodos.Clear;
  PadreNodo := Nil;
  NodoOrganizacion := Nil;
  OldOrganizacion := -1;
  OldOrganizacionPadre := -1;

  while Not ClientModule1.cdDepartamento.Eof do
  begin
    if OldOrganizacionPadre <> ClientModule1.cdDepartamento.FieldByName('IdOrganizacionPadre').AsInteger then
    begin
      OldOrganizacionPadre := ClientModule1.cdDepartamento.FieldByName('IdOrganizacionPadre').AsInteger;

      NodoOrganizacionPadre := tlDepto.AddChild(Nil);
      NodoOrganizacionPadre.Texts[0] := ClientModule1.cdDepartamento.FieldByName('CodigoOrganizacionPadre').AsString;
      NodoOrganizacionPadre.Texts[1] := ClientModule1.cdDepartamento.FieldByName('TituloOrganizacionPadre').AsString;

      OldOrganizacion := -1;
    end;

    if OldOrganizacion <> ClientModule1.cdDepartamento.FieldByName('IdOrganizacion').AsInteger then
    begin
      OldOrganizacion := ClientModule1.cdDepartamento.FieldByName('IdOrganizacion').AsInteger;

      NodoOrganizacion := tlDepto.AddChild(NodoOrganizacionPadre);
      NodoOrganizacion.Texts[0] := ClientModule1.cdDepartamento.FieldByName('CodigoOrganizacion').AsString;
      NodoOrganizacion.Texts[1] := ClientModule1.cdDepartamento.FieldByName('TituloOrganizacion').AsString;
    end;

    if ClientModule1.cdDepartamento.FieldByName('IdPadre').AsInteger = -5 then
    begin
      NuevoNodo := tlDepto.AddChild(NodoOrganizacion);
      PadreNodo := NuevoNodo;
    end
    else
    begin
      // Localizar el nodo padre
      if PadreNodo = Nil then
        NuevoNodo := tlDepto.AddChild(NodoOrganizacion)
      else
        NuevoNodo := tlDepto.AddChild(PadreNodo);
    end;

    NuevoNodo.Texts[0] := ClientModule1.cdDepartamento.FieldByName('CodigoDepartamento').AsString;
    NuevoNodo.Texts[1] := ClientModule1.cdDepartamento.FieldByName('TituloDepartamento').AsString;

    ListaNodos.AddObject(ClientModule1.cdDepartamento.FieldByName('IdDepartamento').AsString, TObject(NuevoNodo.AbsoluteIndex));

    ClientModule1.cdDepartamento.Next;
  end;
end;

procedure TFrmSeleccionarDepartamento.tlDeptoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 66) and (Shift = [ssCtrl]) and (tlDepto.SelectionCount > 0) then
  begin
    CadBuscar := InputBox('Buscar...', 'Especifica la cadena a buscar:', CadBuscar);

    Resultado := tlDepto.Selections[0]; // Iniciar la busqueda desde arriba
    tlDepto.SetFocus;

    BuscarNodo;
  end;

  if Key = 114 then
    BuscarNodo;
end;

procedure TFrmSeleccionarDepartamento.tlDeptoSelectionChanged(Sender: TObject);
begin
  Resultado := tlDepto.Selections[0];
end;

procedure TFrmSeleccionarDepartamento.BuscarNodo;
var
  Nodo: TcxTreeListNode;
begin
  if Resultado = Nil then
    Resultado := tlDepto.Selections[0];
  Nodo := Resultado;
  Resultado := tlDepto.FindNodeByText(CadBuscar, tlDepto.Columns[0], Resultado, False, True);

  if (Nodo <> Nil) or (Resultado <> Nil) then
  begin
    if Nodo = Resultado then
    begin
      Nodo := Nodo.GetNext;
      if Assigned(Nodo) then
        Resultado := tlDepto.FindNodeByText(CadBuscar, tlDepto.Columns[0], Nodo, False, True)
      else
        Resultado := Nodo;
    end;

    if Not Assigned(Resultado) then
    begin
      If MessageDlg('Ya no existen más departamentos que contengan ' + QuotedStr(CadBuscar) + #10 + #10 + '¿Desea que se vuelva a buscar desde el inicio?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Resultado := tlDepto.FindNodeByText(CadBuscar, tlDepto.Columns[0], tlDepto.TopNode, False, True);
    end;

    if Assigned(Resultado) then
    begin
      Resultado.Selected := True;
      Resultado.MakeVisible;
    end
    else
      ShowMessage('La busqueda con la cadena ' + CadBuscar + ' ha finalizado.');
  end;
end;

end.
