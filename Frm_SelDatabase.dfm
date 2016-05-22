object FrmSelDataBase: TFrmSelDataBase
  Left = 0
  Top = 0
  Caption = 'Seleccione la base de datos'
  ClientHeight = 369
  ClientWidth = 265
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 168
      Height = 13
      Caption = 'Lista de bases de datos disponibles'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 265
    Height = 302
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    Padding.Left = 4
    Padding.Right = 4
    TabOrder = 1
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
    object ListBox1: TListBox
      Left = 4
      Top = 0
      Width = 257
      Height = 302
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 336
    Width = 265
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Padding.Top = 4
    Padding.Right = 4
    Padding.Bottom = 4
    TabOrder = 2
    object Button1: TButton
      Left = 111
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Button1'
      Default = True
      Enabled = False
      ModalResult = 1
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = 6
    end
    object Button2: TButton
      Left = 186
      Top = 4
      Width = 75
      Height = 25
      Align = alRight
      Cancel = True
      Caption = 'Button2'
      ModalResult = 2
      TabOrder = 1
      ExplicitTop = 6
    end
  end
end
