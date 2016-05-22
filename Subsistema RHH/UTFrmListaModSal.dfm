object FrmListaModSal: TFrmListaModSal
  Left = 0
  Top = 0
  ClientHeight = 429
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 686
    Height = 429
    Align = alClient
    Columns = <
      item
        Caption = 'Nombre'
        Width = 300
      end
      item
        Caption = 'Departamento'
        Width = 200
      end
      item
        Caption = 'Puesto'
        Width = 200
      end
      item
        Alignment = taRightJustify
        Caption = 'Salario Actual'
        Width = 80
      end>
    ReadOnly = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object dsDatos: TDataSource
    Left = 336
    Top = 216
  end
end
