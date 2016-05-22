inherited FrmOrdenCompraDetalle: TFrmOrdenCompraDetalle
  Caption = 'Detalle de orden de compra'
  ClientWidth = 758
  ExplicitWidth = 766
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 153
    Width = 758
    Height = 348
    Align = alClient
    ExplicitTop = 153
    ExplicitWidth = 758
    ExplicitHeight = 348
    inherited NextDBGrid1: TNextDBGrid
      Left = 0
      Top = 27
      Width = 756
      Height = 276
      ExplicitLeft = 0
      ExplicitTop = 27
      ExplicitWidth = 756
      ExplicitHeight = 276
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        FieldName = 'codigoarticulo'
      end
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 406
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripcion'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 406
        FieldName = 'tituloarticulo'
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 58
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cantidad'
        ParentFont = False
        Position = 2
        SortType = stNumeric
        Width = 58
        FieldName = 'cantidad'
        FormatMask = '#,##0.00'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBDateColumn1: TNxDBDateColumn
        DefaultValue = '03/04/2012'
        DefaultWidth = 61
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Requerido'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stDate
        Width = 61
        FieldName = 'fecharequerida'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxDBNumberColumn2: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 52
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Recibido'
        ParentFont = False
        Position = 4
        SortType = stNumeric
        Width = 52
        FieldName = 'cantidadrecibida'
        FormatMask = '#,##0.00'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxVirtualColumn1: TNxVirtualColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Pendiente'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        AutoExecute = False
        OnGetText = NxVirtualColumn1GetText
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
    Width = 756
    ExplicitWidth = 756
    inherited BtnClose: TAdvShapeButton
      Left = 711
      Anchors = [akTop, akRight]
      ExplicitLeft = 711
    end
  end
  inherited Panel1: TPanel
    Width = 758
    Height = 153
    Align = alTop
    ExplicitWidth = 758
    ExplicitHeight = 153
    object JvLabel4: TJvLabel [0]
      Left = 349
      Top = 69
      Width = 47
      Height = 13
      Caption = 'Garantia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel [1]
      Left = 25
      Top = 69
      Width = 47
      Height = 13
      Caption = 'Factura::'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel [2]
      Left = 25
      Top = 88
      Width = 29
      Height = 13
      Caption = 'Nota:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel7: TJvLabel [3]
      Left = 25
      Top = 111
      Width = 94
      Height = 13
      Caption = 'Condicion de pago:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel [4]
      Left = 27
      Top = 134
      Width = 46
      Height = 13
      Caption = 'Aplicado:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel [5]
      Left = 415
      Top = 134
      Width = 58
      Height = 13
      Caption = 'Referencia:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited Panel4: TPanel
      Width = 758
      ExplicitWidth = 758
      object JvLabel1: TJvLabel
        Left = 25
        Top = 13
        Width = 195
        Height = 23
        Caption = 'Orden de compra #:'
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
        Tag = 99
        Left = 226
        Top = 13
        Width = 503
        Height = 22
        TabStop = False
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'edtSerie'
      end
    end
    object dbedtFactura: TDBEdit
      Left = 75
      Top = 61
      Width = 263
      Height = 21
      DataField = 'factura'
      DataSource = dsDatos
      TabOrder = 1
    end
    object dbedtGarantia: TDBEdit
      Left = 395
      Top = 61
      Width = 334
      Height = 21
      DataField = 'garantia'
      DataSource = dsDatos
      TabOrder = 2
    end
    object dbmmoNota: TDBMemo
      Left = 75
      Top = 84
      Width = 654
      Height = 23
      DataField = 'nota1'
      DataSource = dsDatos
      TabOrder = 3
    end
    object dbmmoAplicado: TDBMemo
      Left = 75
      Top = 129
      Width = 334
      Height = 21
      DataField = 'aplicado'
      DataSource = dsDatos
      TabOrder = 5
    end
    object dbmmoCondicion: TDBMemo
      Left = 117
      Top = 107
      Width = 612
      Height = 21
      DataField = 'condicionpago'
      DataSource = dsDatos
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 472
      Top = 129
      Width = 257
      Height = 21
      DataField = 'referencia'
      DataSource = dsDatos
      TabOrder = 6
    end
  end
  inherited cdDetalle: TClientDataSet
    OnReconcileError = cdDetalleReconcileError
  end
end
