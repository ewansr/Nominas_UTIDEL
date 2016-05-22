unit UTFrmSeguimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvSmoothLabel, CurvyControls,
  ExtCtrls, AdvShapeButton, StdCtrls, AdvEdit, DBClient, DB, DBAdvEd;

type
  TFrmSeguimiento = class(TForm)
    grdReporte: TAdvStringGrid;
    AdvSmoothLabel1: TAdvSmoothLabel;
    edtConsecutivo: TAdvEdit;
    BtnSearch: TAdvShapeButton;
    cdEncabezado: TClientDataSet;
    dsEncabezado: TDataSource;
    DBAdvEdit1: TDBAdvEdit;
    DBAdvEdit2: TDBAdvEdit;
    DBAdvEdit3: TDBAdvEdit;
    DBAdvEdit4: TDBAdvEdit;
    DBAdvEdit5: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    procedure BtnSearchClick(Sender: TObject);
    procedure grdReporteGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
 //   cdEncabezado,
    cdDetalle: TClientDataSet;
    procedure MezclarCeldas(ColBase, Cuantos: Integer);
  public
    { Public declarations }
  end;

var
  FrmSeguimiento: TFrmSeguimiento;

const
  Color1 : array[0..3] of TColor = ($00C6FFFF, $0093FFFF, $005EFFFF, $002FFFFF);
  Color2 : array[0..3] of TColor = ($00BFFDBD, $0088FC85, $0057FB53, $0020FA1B);

implementation

{$R *.dfm}

Uses
  ClientModuleUnit1, UInteliDialog;

procedure TFrmSeguimiento.BtnSearchClick(Sender: TObject);
Var
  ConsecIni,ConsecFin: Integer;
  idOrg: Integer;
  CurrentRow: Integer;
  i,j,bin: integer;
  il: TIntList;
  MergeSize: TPoint;
begin
  cdEncabezado.close;
  cdDetalle := TClientDataSet.Create(nil);
  idOrg := clientmodule1.cdAcceso.FieldByName('idorganizacion').AsInteger;
  ConsecIni := StrToInt(edtConsecutivo.Text);
  ConsecFin := ConsecIni;

  CrearConjunto(cdEncabezado,'alm_solicitud',ccCatalog);
  CargarDatosFiltrados(cdEncabezado,'idorganizacion,consecutivo',[idOrg,ConsecIni]);
  cdEncabezado.Open;
  if cdEncabezado.RecordCount = 0 then
  begin
    InteliDialog.ShowModal('ERROR','No existen documentos con los criterios indicados','No se encontró ningún documento que cumpliera con los criterios establecidos en la consulta.' + #10 + 'Corrija e intente nuevamente.',
                    mtError,[mbOK],0);
    Exit;
  end;
  cdEncabezado.First;

  CrearConjunto(cdDetalle,'rep_seguimiento','SELECT');
  CargarDatosFiltrados(cdDetalle,'idorganizacion,consecIni,consecFin',[idOrg,ConsecIni,ConsecFin]);
  cdDetalle.Open;

  grdReporte.UnHideColumnsAll;
  grdReporte.SplitAllCells;
  // Limpiar el grid y borrar las celdas no necesarias.
  grdReporte.Navigation.AllowDeleteRow := true;
  grdReporte.RemoveRows(2,grdReporte.RowCount - 1);
  grdReporte.Rows[1].Clear;
  grdReporte.Navigation.AllowDeleteRow := false;

  j := 0;
  CurrentRow := 1;
  cdDetalle.First;
  while not cdDetalle.Eof do
  begin
    if CurrentRow >= grdReporte.RowCount then
      grdReporte.AddRow;
    for i := 2 to cdDetalle.FieldCount do
    begin
      grdReporte.AllCells[i,CurrentRow] := cdDetalle.Fields.FieldByNumber(i).AsString;
    end;
    if grdReporte.AllCells[2,CurrentRow] <> grdReporte.AllCells[2,CurrentRow - 1] then
      inc(j);
    grdReporte.Ints[1,CurrentRow] := j;
    
    inc(CurrentRow);
    cdDetalle.Next;
  end;

  grdReporte.MergeColumnCells(2,true);
  MezclarCeldas(2,11);
  MezclarCeldas(2,-1);
  grdReporte.MergeColumnCells(18,false);
  MezclarCeldas(18,6);
  MezclarCeldas(18,-4);
  grdReporte.MergeColumnCells(29,false);
  MezclarCeldas(29,6);
  MezclarCeldas(29,-4);
  grdReporte.MergeColumnCells(41,false);
  MezclarCeldas(41,4);
  MezclarCeldas(41,-5);                            

// Ocultar los campos que pueden servir como referencias
{  grdReporte.HideColumn(1);
  grdReporte.HideColumn(2);
  grdReporte.HideColumn(3);
  grdReporte.HideColumn(7);
  grdReporte.HideColumn(10);
  grdReporte.HideColumn(12);
  grdReporte.HideColumn(13);
  grdReporte.HideColumn(14);
  grdReporte.HideColumn(18);
  grdReporte.HideColumn(20);
  grdReporte.HideColumn(23);
  grdReporte.HideColumn(25);
  grdReporte.HideColumn(29);
  grdReporte.HideColumn(31);
  grdReporte.HideColumn(34);
  grdReporte.HideColumn(36);
  grdReporte.HideColumn(41);
  grdReporte.HideColumn(45);}

  grdReporte.ColWidths[1] := 0;
  grdReporte.ColWidths[2] := 0;
  grdReporte.ColWidths[3] := 0;
  grdReporte.ColWidths[7] := 0;
  grdReporte.ColWidths[10] := 0;
  grdReporte.ColWidths[12] := 0;
  grdReporte.ColWidths[13] := 0;
  grdReporte.ColWidths[14] := 0;
  grdReporte.ColWidths[18] := 0;
  grdReporte.ColWidths[20] := 0;
  grdReporte.ColWidths[23] := 0;
  grdReporte.ColWidths[25] := 0;
  grdReporte.ColWidths[29] := 0;
  grdReporte.ColWidths[31] := 0;
  grdReporte.ColWidths[34] := 0;
  grdReporte.ColWidths[36] := 0;
  grdReporte.ColWidths[41] := 0;
  grdReporte.ColWidths[45] := 0;

  grdReporte.ColWidths[13] := 70;
  grdReporte.ColWidths[15] := 150;
  grdReporte.ColWidths[17] := 70;
  grdReporte.ColWidths[26] := 150;
  grdReporte.ColWidths[27] := 70;
  grdReporte.ColWidths[28] := 70;
  grdReporte.ColWidths[37] := 150;
  grdReporte.ColWidths[38] := 70;
  grdReporte.ColWidths[39] := 90;
  grdReporte.ColWidths[40] := 70;
  
  cdDetalle.Close;
  //cdEncabezado.Close;
  EliminarConjunto([cdDetalle]);
  cdDetalle.Free;
  //cdEncabezado.Free;
end;


procedure TFrmSeguimiento.FormDestroy(Sender: TObject);
begin
  cdEncabezado.Close;
  EliminarConjunto(cdEncabezado);
end;

procedure TFrmSeguimiento.FormShow(Sender: TObject);
begin
  ClientModule1.ComponentColor(self);
end;

procedure TFrmSeguimiento.grdReporteGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
Var
  Indice: Integer;
begin
  if (ARow > 0) and (ACol > 0) then
  begin
  if (ACol >= 1) and (ACol < 14) then
    Indice := 0;
  if (ACol >= 14) and (ACol < 25) then
    Indice := 1;
  if (ACol >= 25) and (ACol < 36) then
    Indice := 2;
  if (ACol >= 36) then
    Indice := 3;

  case Acol of
    4,15,26,37 : AFont.Style := AFont.Style + [fsBold];
    else AFont.Style := AFont.Style - [fsBold];
  end;

  if grdReporte.Ints[1,ARow] mod 2 = 0 then
      ABrush.Color := Color1[Indice]
    else
      ABrush.Color := Color2[Indice]      
  end;
  
end;

procedure TFrmSeguimiento.MezclarCeldas(ColBase, Cuantos: Integer);
Var
  i,j,ajuste: integer;
  MergeSize: TPoint;
begin
  // Mezclar las columnas correspondientes al rango delimitado por la base y la cantidad.
  
  for i := 1 to cdDetalle.RecordCount do
  begin
    if grdReporte.IsBaseCell(ColBase,i) then
    begin
      MergeSize := grdReporte.CellSpan(ColBase,i);
      if cuantos < 0 then // si la cantidad son negativos, irse a la izquierda
        for j := ColBase - 1 Downto ColBase + Cuantos do
          grdReporte.MergeCells(j,i,1,MergeSize.Y + 1)
      else
        for j := ColBase + 1 to ColBase + Cuantos do
          grdReporte.MergeCells(j,i,1,MergeSize.Y + 1);
    end;
  end;
end;

end.
