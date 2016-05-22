inherited FrmSalidaManPartida: TFrmSalidaManPartida
  Caption = 'Salida de material y equipo'
  ClientHeight = 293
  ClientWidth = 484
  OnCreate = FormCreate
  ExplicitWidth = 490
  ExplicitHeight = 318
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 484
    Height = 293
    ExplicitWidth = 484
    ExplicitHeight = 293
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
    object JvLabel4: TJvLabel [1]
      Left = 17
      Top = 172
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
      Left = 160
      Top = 232
      TabOrder = 8
      ExplicitLeft = 160
      ExplicitTop = 232
    end
    inherited BtnClose: TAdvShapeButton
      Left = 272
      Top = 232
      TabOrder = 9
      ExplicitLeft = 272
      ExplicitTop = 232
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
      Left = 202
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
      TabOrder = 5
    end
    object memObservaciones: TDBMemo
      Left = 94
      Top = 169
      Width = 371
      Height = 49
      DataField = 'comentarios'
      DataSource = dsDetalle
      TabOrder = 7
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
      TabOrder = 2
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
    object edtcantidad: TDBAdvEdit
      Left = 94
      Top = 108
      Width = 79
      Height = 21
      EditAlign = eaRight
      EditType = etFloat
      ReturnIsTab = True
      Precision = 4
      LabelCaption = 'Cantidad:'
      LabelPosition = lpLeftCenter
      LabelMargin = 5
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      ReadOnly = True
      TabOrder = 3
      Text = '0.0000'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'cantidad'
      DataSource = dsDetalle
    end
    object btn1: TButton
      Left = 174
      Top = 107
      Width = 22
      Height = 21
      Caption = '...'
      TabOrder = 4
      OnClick = edtCantidadClickBtn
    end
    object edtenvia: TDBAdvEdit
      Left = 94
      Top = 135
      Width = 155
      Height = 21
      LabelCaption = 'Envia:'
      LabelPosition = lpLeftCenter
      LabelMargin = 5
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Enabled = True
      Lookup.History = True
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 6
      Text = 'EDTENVIA'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'envia'
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
  object mdDetalleOC: TJvMemoryData
    FieldDefs = <>
    Left = 304
    Top = 32
  end
  object mdDetalleOCTmp: TJvMemoryData
    FieldDefs = <>
    Left = 400
    Top = 32
  end
  object mdDetalleOriginal: TJvMemoryData
    FieldDefs = <>
    Left = 336
    Top = 80
  end
end
