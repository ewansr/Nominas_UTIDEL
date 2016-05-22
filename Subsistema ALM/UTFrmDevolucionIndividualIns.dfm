object FrmDevolucionIndividualIns: TFrmDevolucionIndividualIns
  Left = 0
  Top = 0
  Caption = 'FrmDevolucionIndividualIns'
  ClientHeight = 425
  ClientWidth = 729
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
    Width = 729
    Height = 57
    Align = alTop
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 15
    Padding.Bottom = 5
    TabOrder = 0
    object JvBehaviorLabel1: TJvBehaviorLabel
      Left = 11
      Top = 6
      Width = 702
      Height = 45
      Align = alClient
      Alignment = taRightJustify
      Caption = 
        '                                                                ' +
        '                          Devolucion Individual de Insumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ExplicitLeft = 17
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 729
    Height = 51
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 360
    object NxButton1: TNxButton
      Left = 609
      Top = 1
      Width = 119
      Height = 49
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 513
      Top = 1
      Width = 96
      Height = 49
      Align = alRight
      Caption = 'Devolver'
      TabOrder = 1
      OnClick = NxButton2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 729
    Height = 183
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 223
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 727
      Height = 83
      Align = alTop
      Caption = 'Datos Del Resguardo'
      TabOrder = 0
      object JvLabel1: TJvLabel
        Left = 16
        Top = 23
        Width = 97
        Height = 13
        Caption = 'Codigo Resguardo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 303
        Top = 21
        Width = 97
        Height = 13
        Caption = 'Codigo Resguardo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit1: TDBEdit
        Left = 112
        Top = 19
        Width = 169
        Height = 21
        Color = clMenuBar
        DataField = 'codigoticresguardo'
        DataSource = dsresguardosasignados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 403
        Top = 17
        Width = 312
        Height = 56
        Color = clMenuBar
        DataField = 'comentarios'
        DataSource = dsresguardosasignados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 84
      Width = 727
      Height = 98
      Align = alClient
      Caption = 'Datos del Insumo'
      TabOrder = 1
      ExplicitHeight = 138
      object JvLabel4: TJvLabel
        Left = 27
        Top = 23
        Width = 80
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
        Left = 27
        Top = 63
        Width = 83
        Height = 13
        Caption = 'Tipo de Articulo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel6: TJvLabel
        Left = 394
        Top = 31
        Width = 107
        Height = 13
        Caption = 'Fecha de Asignacion: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBEdit2: TDBEdit
        Left = 113
        Top = 18
        Width = 204
        Height = 21
        Color = clMenuBar
        DataField = 'codigoinsumo'
        DataSource = dsresguardosasignados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 111
        Top = 61
        Width = 206
        Height = 21
        Color = clMenuBar
        DataField = 'tituloarticulo'
        DataSource = dsresguardosasignados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBDateEdit1: TDBDateEdit
        Left = 507
        Top = 24
        Width = 205
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechaasig'
        DataSource = dsresguardosasignados
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 240
    Width = 729
    Height = 134
    Align = alBottom
    TabOrder = 3
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 727
      Height = 132
      Align = alClient
      Caption = 'Ingrese La Fecha de Devolucion'
      TabOrder = 0
      ExplicitHeight = 78
      object JvLabel7: TJvLabel
        Left = 21
        Top = 26
        Width = 93
        Height = 13
        Caption = 'Fecha Devolucion: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel8: TJvLabel
        Left = 10
        Top = 74
        Width = 97
        Height = 13
        Caption = 'Estado del Insumo: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel9: TJvLabel
        Left = 317
        Top = 26
        Width = 90
        Height = 26
        Caption = 'Coemntarios '#13#10'de La Devolucion: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object DBDateEdit2: TDBDateEdit
        Left = 112
        Top = 24
        Width = 169
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechavigencia'
        DataSource = dsresguardosdetalle
        NumGlyphs = 2
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 113
        Top = 70
        Width = 167
        Height = 21
        TabOrder = 1
        Text = 'Estado del Insumo'
        OnChange = ComboBox1Change
        Items.Strings = (
          'FUNCIONANDO'
          'DA'#209'ADO')
      end
      object DBMemo2: TDBMemo
        Left = 404
        Top = 24
        Width = 308
        Height = 73
        DataField = 'devcomentarios'
        DataSource = dsresguardosdetalle
        TabOrder = 2
      end
    end
  end
  object dsresguardosasignados: TDataSource
    Left = 136
    Top = 16
  end
  object cdresguardosdetalle: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 352
  end
  object dsresguardosdetalle: TDataSource
    DataSet = cdresguardosdetalle
    Left = 120
    Top = 352
  end
  object cdestados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 360
  end
  object dsestado: TDataSource
    Left = 336
    Top = 352
  end
end
