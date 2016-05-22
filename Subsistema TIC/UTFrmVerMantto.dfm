object FrmVerMantto: TFrmVerMantto
  Left = 0
  Top = 0
  Caption = 'FrmVerMantto'
  ClientHeight = 560
  ClientWidth = 729
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
    Width = 729
    Height = 41
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    TabOrder = 0
    object JvBehaviorLabel1: TJvBehaviorLabel
      Left = 6
      Top = 6
      Width = 712
      Height = 29
      Align = alClient
      Alignment = taCenter
      Caption = 
        '                                                    Informacion ' +
        'Mantenimiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ExplicitWidth = 699
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 519
    Width = 729
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 729
    Height = 155
    Align = alTop
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 727
      Height = 153
      Align = alClient
      Caption = 'Informacion Mantenimiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object JvLabel3: TJvLabel
        Left = 11
        Top = 33
        Width = 132
        Height = 13
        Caption = 'Codigo Mantenimiento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 51
        Top = 64
        Width = 92
        Height = 13
        Caption = 'Codigo Insumo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 15
        Top = 86
        Width = 127
        Height = 13
        Caption = 'Fecha Mantenimiento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel7: TJvLabel
        Left = 50
        Top = 114
        Width = 86
        Height = 13
        Caption = 'Titulo Insumo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit1: TDBEdit
        Left = 144
        Top = 32
        Width = 521
        Height = 21
        DataField = 'codigomantenimiento'
        DataSource = dsmantenimiento
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 144
        Top = 59
        Width = 521
        Height = 21
        DataField = 'codigoinsumo'
        DataSource = dsmantenimiento
        TabOrder = 1
      end
      object DBDateEdit1: TDBDateEdit
        Left = 144
        Top = 84
        Width = 521
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        DataField = 'fechamantto'
        DataSource = dsmantenimiento
        NumGlyphs = 2
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 142
        Top = 110
        Width = 521
        Height = 21
        DataField = 'tituloarticulo'
        DataSource = dsmantenimiento
        TabOrder = 3
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 196
    Width = 729
    Height = 72
    Align = alTop
    TabOrder = 3
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 727
      Height = 70
      Align = alClient
      Caption = 'Tipo Mantenimiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object JvLabel6: TJvLabel
        Left = 14
        Top = 33
        Width = 121
        Height = 13
        Caption = 'Tipo Mantenimiento: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit4: TDBEdit
        Left = 137
        Top = 30
        Width = 521
        Height = 21
        DataField = 'tipommanto'
        DataSource = dsmantenimiento
        TabOrder = 0
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 268
    Width = 729
    Height = 251
    Align = alClient
    TabOrder = 4
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 727
      Height = 249
      Align = alClient
      Caption = 'Descripcion Fallas y Tareas Realizadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 24
        Top = 45
        Width = 119
        Height = 13
        Caption = 'Descripcion de Fallas'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 392
        Top = 45
        Width = 105
        Height = 13
        Caption = 'Tareas Realizadas'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBMemo1: TDBMemo
        Left = 24
        Top = 64
        Width = 289
        Height = 153
        DataField = 'descripcionfallas'
        DataSource = dsmantenimiento
        TabOrder = 0
      end
      object DBMemo2: TDBMemo
        Left = 392
        Top = 64
        Width = 313
        Height = 153
        DataField = 'tareasrealizadas'
        DataSource = dsmantenimiento
        TabOrder = 1
      end
    end
  end
  object dsmantenimiento: TDataSource
    Left = 528
    Top = 32
  end
end
