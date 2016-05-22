inherited FrmOrdenCompraEntrada: TFrmOrdenCompraEntrada
  Caption = 'Recepci'#243'n de orden de compra'
  ClientHeight = 619
  ClientWidth = 832
  ExplicitTop = -177
  ExplicitWidth = 848
  ExplicitHeight = 657
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 232
    Width = 830
    Height = 339
    ExplicitTop = 232
    ExplicitWidth = 830
    ExplicitHeight = 339
    inherited NextDBGrid1: TNextDBGrid
      Top = 17
      Width = 812
      Height = 308
      Options = [goGrid, goHeader, goSelectFullRow]
      TabLeaveControl = False
      OnCellColoring = NextDBGrid1CellColoring
      OnEnter = NextDBGrid1Enter
      OnKeyPress = NextDBGrid1KeyPress
      OnCellFormating = NextDBGrid1CellFormating
      ExplicitTop = 17
      ExplicitWidth = 812
      ExplicitHeight = 308
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 100
        FieldName = 'codigoarticulo'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Art'#237'culo'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 350
        FieldName = 'tituloarticulo'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'U.M.'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 60
        FieldName = 'codigounidad'
      end
      object NxDBNumberColumn3: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 70
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cant. OC'
        Header.Alignment = taCenter
        Header.HideArrow = False
        ParentFont = False
        Position = 3
        SortType = stNumeric
        Width = 70
        FieldName = 'cantidadoc'
        FormatMask = '#,##0.000'
        Precision = 3
        Increment = 1.000000000000000000
        SpinButtons = False
      end
      object NxDBNumberColumn4: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 70
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cant. Rec'
        Header.Alignment = taCenter
        Header.HideArrow = False
        ParentFont = False
        Position = 4
        SortType = stNumeric
        Width = 70
        FieldName = 'cantidadrec'
        EmptyCaption = '0'
        FormatMask = '#,##0.000'
        Precision = 3
        Increment = 1.000000000000000000
        SpinButtons = False
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cantidad'
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coEditorAutoSelect, coPublicUsing]
        ParentFont = False
        Position = 5
        SortType = stNumeric
        FieldName = 'cantidad'
        FormatMask = '#,##0.0000'
        Precision = 4
        Increment = 1.000000000000000000
        SpinButtons = False
      end
      object NxDBNumberColumn2: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Precio'
        Header.Alignment = taCenter
        Header.HideArrow = False
        ParentFont = False
        Position = 6
        SortType = stNumeric
        FieldName = 'precio'
        FormatMask = '$#,##0.0000'
        Precision = 4
        Increment = 1.000000000000000000
        SpinButtons = False
      end
    end
    inherited btnAgregarDetalle: TBitBtn
      Visible = False
    end
    inherited btnEditarDetalle: TBitBtn
      Visible = False
    end
    inherited btnQuitarDetalle: TBitBtn
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Top = 572
    Width = 830
    ExplicitTop = 572
    ExplicitWidth = 830
    inherited BtnClose: TAdvShapeButton
      Left = 757
      ExplicitLeft = 757
    end
  end
  inherited Panel1: TPanel
    Width = 830
    Height = 233
    ExplicitWidth = 830
    ExplicitHeight = 233
    object lbl2: TJvLabel [0]
      Left = 46
      Top = 61
      Width = 46
      Height = 13
      Caption = 'Almacen:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lbl3: TJvLabel [1]
      Left = 21
      Top = 141
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
    inherited Panel4: TPanel
      Width = 830
      ExplicitWidth = 830
      object lbl1: TJvLabel
        Left = 8
        Top = 13
        Width = 59
        Height = 23
        Caption = 'OC #:'
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
      object edtSerie: TEdit
        Left = 73
        Top = 14
        Width = 386
        Height = 22
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'edtSerie'
      end
    end
    object cmbidalmacen: TDBLookupComboBox
      Left = 94
      Top = 58
      Width = 297
      Height = 21
      DataField = 'idalmacen'
      DataSource = dsEntrada
      DropDownWidth = 300
      KeyField = 'idalmacen'
      ListField = 'codigoalmacen; tituloalmacen'
      ListFieldIndex = 1
      ListSource = dsAlmacen
      TabOrder = 1
      OnKeyPress = cmbidalmacenKeyPress
    end
    object dtpfecha: TAdvDBDateTimePicker
      Left = 456
      Top = 58
      Width = 89
      Height = 21
      Date = 41015.922002314820000000
      Time = 41015.922002314820000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 41015.922002314820000000
      Version = '1.1.0.1'
      LabelCaption = 'Fecha:'
      LabelPosition = lpLeftCenter
      LabelMargin = 6
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      DataField = 'fecha'
      DataSource = dsEntrada
    end
    object memComentarios: TDBMemo
      Left = 21
      Top = 158
      Width = 717
      Height = 68
      DataField = 'comentarios'
      DataSource = dsEntrada
      TabOrder = 7
    end
    object edtReferencia: TDBAdvEdit
      Left = 430
      Top = 85
      Width = 297
      Height = 21
      LabelCaption = 'Referencia:'
      LabelPosition = lpLeftCenter
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      TabOrder = 4
      Text = 'edtReferencia'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'Referencia'
      DataSource = dsEntrada
    end
    object edtReferencia1: TDBAdvEdit
      Left = 94
      Top = 85
      Width = 244
      Height = 21
      LabelCaption = 'Factura:'
      LabelPosition = lpLeftCenter
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      TabOrder = 3
      Text = 'edtReferencia'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'factura'
      DataSource = dsEntrada
    end
    object edtCodigoFormaPago: TAdvEditBtn
      Left = 94
      Top = 112
      Width = 124
      Height = 21
      Flat = False
      LabelCaption = 'Forma de pago:'
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      ReadOnly = False
      TabOrder = 5
      Visible = True
      OnKeyPress = edtCodigoFormaPagoKeyPress
      Version = '1.3.2.8'
      ButtonStyle = bsButton
      ButtonWidth = 16
      Etched = False
      ButtonCaption = '...'
      OnClickBtn = edtCodigoFormaPagoClickBtn
    end
    object edtTituloFormaPago: TAdvEdit
      Tag = 99
      Left = 224
      Top = 116
      Width = 337
      Height = 21
      TabStop = False
      EmptyText = '-'
      DisabledColor = clInactiveCaption
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      BorderStyle = bsNone
      Color = clWindow
      Enabled = False
      TabOrder = 6
      Transparent = True
      Visible = True
      Version = '2.9.0.0'
    end
    object CbMoneda: TComboBox
      Left = 567
      Top = 116
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 8
      Text = 'MN'
      Items.Strings = (
        'MN'
        'USD')
    end
  end
  object cdEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 320
    Top = 168
  end
  object dsEntrada: TDataSource
    DataSet = cdEntrada
    Left = 360
    Top = 168
  end
  object cdAlmacen: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 560
    Top = 144
  end
  object dsAlmacen: TDataSource
    DataSet = cdAlmacen
    Left = 608
    Top = 152
  end
  object cdEntradaDet: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 416
    Top = 168
  end
end
