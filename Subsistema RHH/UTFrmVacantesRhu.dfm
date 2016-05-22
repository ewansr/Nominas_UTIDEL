object FrmVacantesRhu: TFrmVacantesRhu
  Left = 0
  Top = 0
  Caption = 'FrmVacantesRhu'
  ClientHeight = 382
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 341
    Width = 924
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 339
    object NxButton1: TNxButton
      Left = 824
      Top = 1
      Width = 99
      Height = 39
      Align = alRight
      Caption = 'Salir'
      TabOrder = 0
    end
    object NxButton2: TNxButton
      Left = 728
      Top = 1
      Width = 96
      Height = 39
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 1
      ExplicitLeft = 704
    end
    object NxButton3: TNxButton
      Left = 632
      Top = 1
      Width = 96
      Height = 39
      Align = alRight
      Caption = 'Generar Vacante'
      TabOrder = 2
      ExplicitLeft = 592
    end
    object NxButton4: TNxButton
      Left = 528
      Top = 1
      Width = 104
      Height = 39
      Align = alRight
      Caption = 'Editar Vacante'
      TabOrder = 3
      ExplicitLeft = 464
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 924
    Height = 152
    Align = alTop
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 922
      Height = 150
      Align = alClient
      Caption = 'Vacante'
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -3
      object JvLabel1: TJvLabel
        Left = 174
        Top = 37
        Width = 81
        Height = 13
        Caption = 'Codigo Vacante:'
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 214
        Top = 74
        Width = 35
        Height = 13
        Caption = 'Fecha:'
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 447
        Top = 37
        Width = 75
        Height = 13
        Caption = 'Departamento:'
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 487
        Top = 71
        Width = 35
        Height = 13
        Caption = 'Cargo:'
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel5: TJvLabel
        Left = 190
        Top = 109
        Width = 65
        Height = 26
        Caption = 'Cantidad '#13#10'de Vacantes:'
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object Edit1: TEdit
        Left = 259
        Top = 32
        Width = 169
        Height = 21
        TabOrder = 0
      end
      object DBDateEdit1: TDBDateEdit
        Left = 259
        Top = 71
        Width = 169
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataSource = dsvacantes
        NumGlyphs = 2
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 528
        Top = 32
        Width = 377
        Height = 21
        TabOrder = 2
      end
      object DBImage1: TDBImage
        Left = 15
        Top = 23
        Width = 121
        Height = 86
        DataSource = dsvacantes
        TabOrder = 3
      end
      object NxImagePathEdit1: TNxImagePathEdit
        Left = 15
        Top = 115
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'NxImagePathEdit1'
        TransparentColor = clNone
      end
      object Edit3: TEdit
        Left = 528
        Top = 71
        Width = 343
        Height = 21
        TabOrder = 5
        Text = 'Edit3'
      end
      object DBEdit1: TDBEdit
        Left = 259
        Top = 109
        Width = 169
        Height = 21
        DataSource = dsvacantes
        TabOrder = 6
      end
      object NxButton5: TNxButton
        Left = 877
        Top = 70
        Width = 28
        Caption = '...'
        TabOrder = 7
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 185
    Width = 924
    Height = 156
    Align = alClient
    TabOrder = 3
    ExplicitTop = 160
    ExplicitHeight = 181
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 922
      Height = 154
      Align = alClient
      Caption = 'Detalle de Vacante'
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 0
      ExplicitLeft = 96
      ExplicitTop = 80
      ExplicitWidth = 185
      ExplicitHeight = 105
      object DBGrid1: TDBGrid
        Left = 7
        Top = 20
        Width = 908
        Height = 127
        Align = alClient
        DataSource = dsvacantedetalles
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object cdvacantes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 136
  end
  object cdvacantedetalles: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 136
  end
  object dsvacantes: TDataSource
    DataSet = cdvacantes
    Left = 480
    Top = 136
  end
  object dsvacantedetalles: TDataSource
    DataSet = cdvacantedetalles
    Left = 576
    Top = 136
  end
  object cdultidvacante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 136
  end
  object dsultvacante: TDataSource
    DataSet = cdultidvacante
    Left = 704
    Top = 136
  end
end
