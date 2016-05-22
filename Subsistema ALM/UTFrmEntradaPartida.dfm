inherited FrmEntradaPartida: TFrmEntradaPartida
  Caption = 'Entrada de material y equipo'
  ClientHeight = 259
  ClientWidth = 489
  OnCreate = FormCreate
  ExplicitWidth = 495
  ExplicitHeight = 284
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 489
    Height = 259
    ExplicitWidth = 489
    ExplicitHeight = 259
    object JvLabel1: TJvLabel [0]
      Left = 46
      Top = 27
      Width = 42
      Height = 13
      Caption = 'Art'#237'culo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel [1]
      Left = 41
      Top = 109
      Width = 49
      Height = 13
      Caption = 'Cantidad:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel [2]
      Left = 17
      Top = 138
      Width = 77
      Height = 13
      Caption = 'Observaciones:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lbl1: TJvLabel [3]
      Left = 315
      Top = 109
      Width = 35
      Height = 13
      Caption = 'Precio:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited BtnAdd: TAdvShapeButton
      Left = 160
      Top = 198
      TabOrder = 6
      ExplicitLeft = 160
      ExplicitTop = 198
    end
    inherited BtnClose: TAdvShapeButton
      Left = 272
      Top = 198
      TabOrder = 7
      ExplicitLeft = 272
      ExplicitTop = 198
    end
    object btnArticulo: TButton
      Left = 188
      Top = 24
      Width = 19
      Height = 21
      Caption = '...'
      TabOrder = 1
      OnClick = btnArticuloClick
    end
    object edtCodigoArticulo: TEdit
      Left = 94
      Top = 24
      Width = 93
      Height = 21
      TabOrder = 0
      OnKeyPress = edtCodigoArticuloKeyPress
    end
    object edtCodigoUnidad: TDBEdit
      Tag = 99
      Left = 186
      Top = 108
      Width = 79
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      DataField = 'codigounidad'
      DataSource = dsDetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtCantidad: TJvDBCalcEdit
      Left = 94
      Top = 105
      Width = 85
      Height = 21
      DecimalPlaces = 4
      DisplayFormat = ',0.####'
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edtCantidadKeyPress
      DataField = 'cantidad'
      DataSource = dsDetalle
    end
    object memObservaciones: TDBMemo
      Left = 94
      Top = 135
      Width = 371
      Height = 49
      DataField = 'observaciones'
      DataSource = dsDetalle
      TabOrder = 5
      OnKeyPress = edtCantidadKeyPress
    end
    object Panel2: TPanel
      Left = 88
      Top = 48
      Width = 409
      Height = 47
      BevelOuter = bvNone
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 8
      object edtTituloArticulo: TDBEdit
        Tag = 99
        Left = 6
        Top = 3
        Width = 395
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        DataField = 'tituloarticulo'
        DataSource = dsDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
      object edtTituloDisciplina: TDBEdit
        Tag = 99
        Left = 6
        Top = 25
        Width = 395
        Height = 20
        TabStop = False
        BorderStyle = bsNone
        DataField = 'titulodisciplina'
        DataSource = dsDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
      end
    end
    object edtPreciocantidad: TJvDBCalcEdit
      Left = 358
      Top = 105
      Width = 85
      Height = 21
      DecimalPlaces = 4
      DisplayFormat = '$,0.00##'
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edtCantidadKeyPress
      DataField = 'precio'
      DataSource = dsDetalle
    end
  end
  inherited dsDetalle: TDataSource
    DataSet = mdDetalle
    Left = 424
    Top = 160
  end
  inherited mdDetalle: TJvMemoryData
    Left = 368
    Top = 160
  end
end
