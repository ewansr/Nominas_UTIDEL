object FrmUsuario: TFrmUsuario
  Left = 0
  Top = 0
  Caption = 'Usuarios'
  ClientHeight = 293
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Rejilla: TStringGrid
    Left = 8
    Top = 40
    Width = 737
    Height = 217
    ColCount = 11
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object btnAdd: TButton
    Left = 192
    Top = 263
    Width = 75
    Height = 25
    Caption = 'Agregar'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnEdit: TButton
    Left = 273
    Top = 263
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btnEditClick
  end
  object btnDel: TButton
    Left = 354
    Top = 263
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 4
    OnClick = btnDelClick
  end
  object btnRef: TButton
    Left = 435
    Top = 263
    Width = 75
    Height = 25
    Caption = 'Refrescar'
    TabOrder = 5
    OnClick = btnRefClick
  end
end
