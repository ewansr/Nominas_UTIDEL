inherited FrmEstimacionesDetalles: TFrmEstimacionesDetalles
  Caption = 'Detalles de la Estimacion'
  ClientHeight = 504
  ClientWidth = 1085
  ExplicitWidth = 1101
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 243
    Width = 1085
    Height = 261
    Align = alBottom
    ExplicitTop = 243
    ExplicitWidth = 1085
    ExplicitHeight = 261
    inherited NextDBGrid1: TNextDBGrid
      Left = 4
      Top = 33
      Width = 1067
      Height = 67
      Options = [goHeader, goSelectFullRow]
      ExplicitLeft = 4
      ExplicitTop = 33
      ExplicitWidth = 1067
      ExplicitHeight = 67
    end
    inherited btnAgregarDetalle: TBitBtn
      Left = 4
      Top = 2
      ExplicitLeft = 4
      ExplicitTop = 2
    end
    inherited btnEditarDetalle: TBitBtn
      Left = 67
      Top = 2
      ExplicitLeft = 67
      ExplicitTop = 2
    end
    inherited btnQuitarDetalle: TBitBtn
      Left = 123
      Top = 2
      ExplicitLeft = 123
      ExplicitTop = 2
    end
    object GridDetallado: TNextDBGrid
      Left = 3
      Top = 33
      Width = 1067
      Height = 173
      Anchors = [akLeft, akTop, akRight, akBottom]
      Options = [goHeader, goSelectFullRow]
      TabOrder = 4
      TabStop = True
      DataSource = dsDetallado
      object NxDBTextColumn10: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'No. Actividad'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'numeroactividad'
      end
      object NxDBTextColumn11: TNxDBTextColumn
        DefaultWidth = 77
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Venta MN'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 77
        FieldName = 'ventamn'
      end
      object NxDBTextColumn12: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Venta DLL'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        FieldName = 'ventadll'
      end
      object NxDBTextColumn13: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cantidad Programada'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        FieldName = 'cantidadactividad'
      end
      object NxDBTextColumn14: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cantidad Estimada'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        FieldName = 'cantidadestimacion'
      end
      object NxDBMemoColumn2: TNxDBMemoColumn
        DefaultWidth = 250
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripcion Actividad'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Width = 250
        FieldName = 'descripcionactividad'
        MemoDisplayOptions = mdContent
      end
      object NxDBMemoColumn3: TNxDBMemoColumn
        DefaultWidth = 250
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Comentarios en la Estimaci'#243'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        Width = 250
        FieldName = 'comentariosdetalle'
        MemoDisplayOptions = mdContent
      end
      object NxDBTextColumn15: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Importe(Cantidad Estimada * Venta MN)'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 7
        SortType = stAlphabetic
        FieldName = 'subtotal'
      end
      object NxDBTextColumn16: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Estima?'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 8
        SortType = stAlphabetic
        FieldName = 'estima'
      end
    end
  end
  inherited Panel3: TPanel
    Top = 457
    Width = 1083
    ExplicitTop = 457
    ExplicitWidth = 1083
  end
  inherited Panel1: TPanel
    Width = 1085
    Height = 234
    Align = alTop
    ExplicitWidth = 1085
    ExplicitHeight = 234
    object JvLabel3: TJvLabel [0]
      Left = 48
      Top = 38
      Width = 39
      Height = 13
      Caption = 'C'#243'digo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel [1]
      Left = 8
      Top = 107
      Width = 79
      Height = 13
      Caption = 'Tipo Estimaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel [2]
      Left = 21
      Top = 153
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
    object JvLabel4: TJvLabel [3]
      Left = 56
      Top = 61
      Width = 31
      Height = 13
      Caption = 'Inicio:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel [4]
      Left = 52
      Top = 84
      Width = 35
      Height = 13
      Caption = 'Cierre:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel [5]
      Left = 3
      Top = 130
      Width = 84
      Height = 13
      Caption = 'Reprogramaci'#243'n:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel8: TJvLabel [6]
      Left = 43
      Top = 199
      Width = 44
      Height = 13
      Caption = 'Moneda:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited Panel4: TPanel
      Top = 1
      Width = 1085
      Height = 32
      ExplicitTop = 1
      ExplicitWidth = 1085
      ExplicitHeight = 32
      object JvLabel1: TJvLabel
        Left = 228
        Top = 0
        Width = 244
        Height = 23
        Caption = 'Registro de Estimaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
    end
    object txtCodigo: TDBEdit
      Left = 92
      Top = 34
      Width = 191
      Height = 21
      CharCase = ecLowerCase
      DataField = 'codigoestimacion'
      DataSource = dsDatos
      TabOrder = 1
    end
    object memComentarios: TDBMemo
      Left = 92
      Top = 151
      Width = 646
      Height = 43
      DataField = 'comentarios'
      DataSource = dsDatos
      TabOrder = 2
    end
    object btnLugar: TButton
      Left = 191
      Top = 105
      Width = 18
      Height = 21
      Caption = '...'
      TabOrder = 3
      OnClick = btnLugarClick
    end
    object txtCodigoLugar: TEdit
      Left = 92
      Top = 105
      Width = 95
      Height = 21
      TabOrder = 4
    end
    object txtFechaInicial: TJvDBDatePickerEdit
      Left = 93
      Top = 57
      Width = 96
      Height = 21
      AllowNoDate = True
      DataField = 'fechainicio'
      DataSource = dsDatos
      TabOrder = 5
    end
    object txtFechaFinal: TJvDBDatePickerEdit
      Left = 92
      Top = 81
      Width = 97
      Height = 21
      AllowNoDate = True
      DataField = 'fechafinal'
      DataSource = dsDatos
      TabOrder = 6
    end
    object etiTituloTipoEstimacion: TEdit
      Left = 215
      Top = 105
      Width = 523
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 15066597
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object txtCodigoReprogramacion: TEdit
      Left = 92
      Top = 128
      Width = 95
      Height = 21
      TabOrder = 8
    end
    object btnReprogramacion: TButton
      Left = 191
      Top = 128
      Width = 18
      Height = 21
      Caption = '...'
      TabOrder = 9
      OnClick = btnReprogramacionClick
    end
    object txtTituloReprogramacion: TEdit
      Left = 215
      Top = 128
      Width = 523
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      Color = 15066597
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object txtMoneda: TDBEdit
      Left = 92
      Top = 194
      Width = 191
      Height = 21
      CharCase = ecLowerCase
      DataField = 'moneda'
      DataSource = dsDatos
      TabOrder = 11
    end
  end
  inherited dsDatos: TDataSource
    Left = 704
    Top = 64
  end
  inherited cdDetalle: TClientDataSet
    Left = 550
  end
  inherited dsDetalle: TDataSource
    Left = 344
    Top = 296
  end
  inherited mdDetalle: TJvMemoryData
    Left = 240
    Top = 288
  end
  object mdDetallado: TJvMemoryData
    FieldDefs = <>
    AfterScroll = mdDetalladoAfterScroll
    Left = 248
    Top = 392
    object mdDetalladoidactividadesxestimacion: TIntegerField
      FieldName = 'idactividadesxestimacion'
    end
    object mdDetalladonumeroactividad: TStringField
      FieldName = 'numeroactividad'
    end
    object mdDetalladoventamn: TFloatField
      FieldName = 'ventamn'
    end
    object mdDetalladoventadll: TFloatField
      FieldName = 'ventadll'
    end
    object mdDetalladocantidadactividad: TFloatField
      FieldName = 'cantidadactividad'
    end
    object mdDetalladocantidadestimacion: TFloatField
      FieldName = 'cantidadestimacion'
    end
    object mdDetalladodescripcionactividad: TMemoField
      FieldName = 'descripcionactividad'
      BlobType = ftMemo
    end
    object mdDetalladocomentariosdetalle: TMemoField
      FieldName = 'comentariosdetalle'
      BlobType = ftMemo
    end
    object mdDetalladosubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object mdDetalladoestima: TStringField
      FieldName = 'estima'
    end
  end
  object dsDetallado: TDataSource
    DataSet = mdDetallado
    Left = 352
    Top = 400
  end
end
