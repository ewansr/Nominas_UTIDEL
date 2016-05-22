inherited FrmRequisicionPartida: TFrmRequisicionPartida
  Caption = '-'
  ClientHeight = 252
  ClientWidth = 504
  OnCreate = FormCreate
  ExplicitWidth = 510
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 504
    Height = 252
    ExplicitWidth = 504
    ExplicitHeight = 252
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
    object JvLabel3: TJvLabel [2]
      Left = 282
      Top = 109
      Width = 84
      Height = 13
      Caption = 'Fecha requerida:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel [3]
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
    inherited BtnAdd: TAdvShapeButton
      Left = 170
      Top = 198
      TabOrder = 6
      ExplicitLeft = 170
      ExplicitTop = 198
    end
    inherited BtnClose: TAdvShapeButton
      Left = 282
      Top = 198
      TabOrder = 7
      ExplicitLeft = 282
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
    object JvDBDatePickerEdit1: TJvDBDatePickerEdit
      Left = 368
      Top = 105
      Width = 97
      Height = 21
      AllowNoDate = True
      DataField = 'fecharequerida'
      DataSource = dsDetalle
      TabOrder = 4
      OnKeyPress = edtCantidadKeyPress
    end
    object edtCodigoUnidad: TDBEdit
      Left = 186
      Top = 108
      Width = 79
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = clBtnFace
      DataField = 'codigounidad'
      DataSource = dsDetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
        Left = 6
        Top = 3
        Width = 395
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'tituloarticulo'
        DataSource = dsDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object edtTituloDisciplina: TDBEdit
        Left = 6
        Top = 25
        Width = 395
        Height = 20
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'titulodisciplina'
        DataSource = dsDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
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
