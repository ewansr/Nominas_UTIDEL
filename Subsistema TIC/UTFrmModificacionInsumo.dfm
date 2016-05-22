object FrmModificacionInsumo: TFrmModificacionInsumo
  Left = 0
  Top = 0
  Caption = 'FrmModificacionInsumo'
  ClientHeight = 278
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 25
    Align = alTop
    TabOrder = 0
    object NxOptionButton1: TNxOptionButton
      Left = 1
      Top = 1
      Width = 128
      Height = 23
      Align = alLeft
      Caption = 'Archivo'
      Color = clBtnFace
      TabOrder = 0
      UseDockManager = False
      OnClick = NxOptionButton1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 237
    Width = 541
    Height = 41
    Align = alBottom
    TabOrder = 1
    object NxButton1: TNxButton
      Left = 304
      Top = 1
      Width = 116
      Height = 39
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 184
      Top = 1
      Width = 120
      Height = 39
      Align = alRight
      Caption = 'Guardar'
      TabOrder = 1
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 420
      Top = 1
      Width = 120
      Height = 39
      Align = alRight
      Caption = 'Salir'
      TabOrder = 2
      OnClick = NxButton3Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 541
    Height = 40
    Align = alTop
    TabOrder = 2
    object JvBehaviorLabel1: TJvBehaviorLabel
      Left = 1
      Top = 1
      Width = 539
      Height = 38
      Align = alClient
      Alignment = taCenter
      Caption = '                                 Modificaci'#243'n de Insumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ExplicitWidth = 517
      ExplicitHeight = 29
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 209
    Width = 541
    Height = 28
    Align = alClient
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 6
      Top = 1
      Width = 529
      Height = 21
      Align = alClient
      Caption = 'Insumo Seleccionado'
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 471
        Top = 32
        Width = 44
        Height = 13
        Caption = 'JvLabel1'
        Transparent = True
        Visible = False
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 65
    Width = 541
    Height = 144
    Align = alTop
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 4
    object GroupBox2: TGroupBox
      Left = 6
      Top = 1
      Width = 529
      Height = 137
      Align = alClient
      Caption = 'Datos Generals del Insumo'
      TabOrder = 0
      object Edit1: TEdit
        Left = 402
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
        Visible = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 402
        Top = 35
        Width = 121
        Height = 21
        Date = 41122.446910196760000000
        Time = 41122.446910196760000000
        TabOrder = 1
        Visible = False
      end
    end
  end
  object cdinsumoespecificado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 24
  end
  object cdupdateinsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 24
  end
  object dsinsumoespecificado: TDataSource
    DataSet = cdinsumoespecificado
    Left = 360
    Top = 24
  end
  object dsupdateinsumo: TDataSource
    DataSet = cdupdateinsumo
    Left = 120
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 24
    object Guardar1: TMenuItem
      Caption = 'Guardar'
    end
    object cancelar1: TMenuItem
      Caption = 'Cancelar'
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
    end
  end
end
