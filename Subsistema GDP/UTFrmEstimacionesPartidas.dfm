inherited FrmEstimacionesPartidas: TFrmEstimacionesPartidas
  Caption = 'Actividades en la estimacion'
  ClientHeight = 288
  ClientWidth = 731
  OnCreate = FormCreate
  ExplicitWidth = 737
  ExplicitHeight = 316
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 731
    Height = 288
    ExplicitLeft = 8
    ExplicitTop = -24
    ExplicitWidth = 447
    ExplicitHeight = 388
    object JvLabel1: TJvLabel [0]
      Left = 96
      Top = 59
      Width = 50
      Height = 13
      Caption = 'Actividad:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel [1]
      Left = 97
      Top = 82
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
    object txtTituloVentana: TJvLabel [2]
      Left = 150
      Top = 19
      Width = 552
      Height = 13
      Alignment = taCenter
      Caption = 'Registro de Actividad en la Reprogramaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel [3]
      Left = 80
      Top = 101
      Width = 66
      Height = 13
      Caption = 'Comentarios:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel [4]
      Left = 88
      Top = 161
      Width = 58
      Height = 13
      Caption = 'Instalaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited BtnAdd: TAdvShapeButton
      Left = 256
      Top = 232
      ExplicitLeft = 256
      ExplicitTop = 232
    end
    inherited BtnClose: TAdvShapeButton
      Left = 375
      Top = 232
      ExplicitLeft = 375
      ExplicitTop = 232
    end
    object edtCodigoArticulo: TEdit
      Left = 150
      Top = 56
      Width = 93
      Height = 21
      CharCase = ecLowerCase
      TabOrder = 2
    end
    object btnArticulo: TButton
      Left = 244
      Top = 56
      Width = 19
      Height = 21
      Caption = '...'
      TabOrder = 3
      OnClick = btnArticuloClick
    end
    object edtCantidad: TJvDBCalcEdit
      Left = 150
      Top = 78
      Width = 93
      Height = 21
      DecimalPlaces = 4
      DisplayFormat = ',0.####'
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
      DataField = 'cantidad'
      DataSource = dsDetalle
    end
    object txtDescripcion: TMemo
      Left = 269
      Top = 56
      Width = 433
      Height = 43
      BorderStyle = bsNone
      Color = clBtnFace
      TabOrder = 5
    end
    object txtComentarios: TDBMemo
      Left = 150
      Top = 101
      Width = 552
      Height = 60
      DataField = 'comentarios'
      DataSource = dsDetalle
      TabOrder = 6
    end
    object txtInstalacion: TDBEdit
      Left = 150
      Top = 161
      Width = 307
      Height = 21
      DataField = 'instalacion'
      DataSource = dsDetalle
      TabOrder = 7
    end
    object Estima: TDBRadioGroup
      Left = 150
      Top = 180
      Width = 307
      Height = 46
      Caption = 'Estima?'
      DataField = 'estima'
      DataSource = dsDetalle
      Items.Strings = (
        'Si'
        'No')
      ParentBackground = True
      TabOrder = 8
    end
  end
  inherited dsDetalle: TDataSource
    Left = 544
    Top = 176
  end
  inherited mdDetalle: TJvMemoryData
    Left = 648
    Top = 176
  end
  object cdReprogramaciones: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 358
    Top = 40
  end
  object dsReprogramaciones: TDataSource
    DataSet = cdReprogramaciones
    Left = 480
    Top = 40
  end
end
