object FrmFichaDepartamento: TFrmFichaDepartamento
  Left = 0
  Top = 0
  Caption = 'Ficha Departamental'
  ClientHeight = 366
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvTabControl1: TJvTabControl
    Left = 0
    Top = 89
    Width = 627
    Height = 236
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Cargos'
      'Personal'
      'Vacantes')
    TabIndex = 0
    RightClickSelect = True
    ExplicitTop = 104
    ExplicitWidth = 576
    ExplicitHeight = 221
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 576
    object lblCodigo: TJvLabel
      Left = 94
      Top = 6
      Width = 49
      Height = 19
      Caption = 'Codigo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Times New Roman'
      HotTrackFont.Style = []
    end
    object lblTitulo: TJvLabel
      Left = 94
      Top = 31
      Width = 41
      Height = 19
      Caption = 'Titulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Times New Roman'
      HotTrackFont.Style = []
    end
    object lblDescripcion: TJvLabel
      Left = 94
      Top = 56
      Width = 81
      Height = 19
      Caption = 'Descripci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Times New Roman'
      HotTrackFont.Style = []
    end
    object JvLabel1: TJvLabel
      Left = 38
      Top = 6
      Width = 50
      Height = 19
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Times New Roman'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 49
      Top = 31
      Width = 39
      Height = 19
      Caption = 'T'#237'tulo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Times New Roman'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 11
      Top = 56
      Width = 77
      Height = 19
      Caption = 'Descripci'#243'n:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'Times New Roman'
      HotTrackFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 325
    Width = 627
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 2
    ExplicitLeft = 200
    ExplicitTop = 40
    ExplicitWidth = 185
  end
  object dsDepartamento: TDataSource
    Left = 280
    Top = 192
  end
end
