inherited FrmEstimaciones: TFrmEstimaciones
  Caption = 'Estimaciones'
  ClientHeight = 552
  ClientWidth = 742
  ExplicitLeft = 8
  ExplicitTop = 3
  ExplicitWidth = 758
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    ExplicitWidth = 742
    Height = 463
    Width = 742
    inherited LbFiltros: TJvLabel
      Top = 426
      Width = 730
      ExplicitWidth = 740
    end
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 576
      Height = 408
      Width = 736
      inherited BtnSearch: TcxButton
        Top = 365
        Width = 716
        OnClick = BtnSearchClick
        ExplicitLeft = 502
        ExplicitTop = 9
      end
      inherited chkUsuario: TAdvOfficeCheckBox
        Left = 363
        Top = 15
        ExplicitLeft = 365
        ExplicitTop = 15
      end
      inherited cmbConvenio: TDBLookupComboBox
        TabOrder = 4
      end
      inherited AdvShapeButton1: TAdvShapeButton
        Left = 113
        TabOrder = 5
      end
      object edtFCodigo: TAdvEdit
        Left = 3
        Top = 17
        Width = 159
        Height = 21
        EmptyText = 'C'#243'digo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 2
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtFtitulo: TAdvEdit
        Left = 168
        Top = 17
        Width = 145
        Height = 21
        EmptyText = 'T'#237'tulo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 3
        Visible = False
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 742
    Width = 0
    Height = 463
    ExplicitWidth = 742
    ExplicitHeight = 412
    inherited DBGridPrincipal: TNextDBGrid
      Width = 740
      Height = 436
      ExplicitLeft = 2
      ExplicitWidth = 740
      ExplicitHeight = 355
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 150
        FieldName = 'codigoestimacion'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        FieldName = 'fechainicio'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        FieldName = 'fechafinal'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        FieldName = 'moneda'
      end
      object NxDBTextColumn5: TNxDBMemoColumn
        DefaultWidth = 600
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 600
        FieldName = 'comentarios'
        MemoDisplayOptions = mdContent
      end
    end
    inherited PnlPro: TPanel
      Width = 740
      inherited PBPaginacion: TAdvProgressBar
        Width = 642
      end
      inherited PnlNum: TPanel
        Left = 643
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    Top = 514
    ExplicitTop = 514
    ExplicitWidth = 742
    Width = 742
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 646
      Width = 646
      inherited PanelPrint: TPanel
        inherited BtnPrint: TcxButton
          Left = 241
          ExplicitLeft = 241
        end
      end
    end
    inherited Panel2: TcxGroupBox
      Left = 647
      ExplicitLeft = 647
    end
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      0
      0
      51
      0)
  end
  object fdsEstimacion: TfrxDBDataset
    UserName = 'fdsEstimacion'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 48
    Top = 352
  end
  object fdsActividadesxEstimacion: TfrxDBDataset
    UserName = 'fdsActividadesxEstimacion'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 176
    Top = 352
  end
  object frxEstimacion: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41033.413984814800000000
    ReportOptions.LastChange = 41033.895166388890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 288
    Datasets = <
      item
        DataSet = fdsActividadesxEstimacion
        DataSetName = 'fdsActividadesxEstimacion'
      end
      item
        DataSet = fdsEstimacion
        DataSetName = 'fdsEstimacion'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <
      item
        Name = ' Titulo'
        Value = Null
      end
      item
        Name = 'Contrato'
        Value = Null
      end
      item
        Name = 'organizacion'
        Value = Null
      end
      item
        Name = 'tituloorganizacion'
        Value = Null
      end
      item
        Name = 'nivel'
        Value = Null
      end
      item
        Name = 'usuario'
        Value = Null
      end
      item
        Name = 'cargousuario'
        Value = Null
      end
      item
        Name = 'valido'
        Value = Null
      end
      item
        Name = 'verifico'
        Value = Null
      end
      item
        Name = 'importeletras'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 332.598640000000000000
        Width = 980.410081999999900000
        DataSet = fdsActividadesxEstimacion
        DataSetName = 'fdsActividadesxEstimacion'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsActividadesxEstimacion."numeroactividad"]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsActividadesxEstimacion."descripcionactividad"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo3: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsActividadesxEstimacion."cantidadactividad"]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 536.693260000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsActividadesxEstimacion."unidadmedida"]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 585.827150000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsActividadesxEstimacion."ventamn"]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 646.299630000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsActividadesxEstimacion."cantidadestimacion"]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 729.449290000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 895.748610000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 812.598950000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsActividadesxEstimacion."subtotal"]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 177.637910000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 94.488250000000000000
          Top = 34.015770000000010000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[tituloorganizacion]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 94.488250000000000000
          Top = 0.559059999999998800
          Width = 638.740570000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[organizacion]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 94.488250000000000000
          Top = 54.252010000000000000
          Width = 638.740570000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[nivel]: [Contrato]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559059999999999000
          Width = 68.031540000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo11: TfrxMemoView
          Left = 737.008350000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ESTIMACI'#211'N NO.')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 737.008350000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'HOJA No.       ')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 154.960730000000000000
          Width = 978.898270000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTIMACI'#211'N DE TRABAJOS REALIZADOS')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Top = 94.488250000000000000
          Width = 551.811380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsEstimacion."descripcionobra"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo27: TfrxMemoView
          Left = 147.401670000000000000
          Top = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsEstimacion."fechainicio"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo28: TfrxMemoView
          Top = 120.944960000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            'PERIODO DE ESTIMACI'#211'N:')
          ParentFont = False
          WordBreak = True
        end
        object Memo29: TfrxMemoView
          Left = 234.330860000000000000
          Top = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsEstimacion."fechafinal"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo30: TfrxMemoView
          Left = 884.410020000000000000
          Top = 94.488250000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsEstimacion."montomn"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo31: TfrxMemoView
          Left = 737.008350000000000000
          Top = 109.606370000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            'FECHA INICIO:')
          ParentFont = False
          WordBreak = True
        end
        object Memo32: TfrxMemoView
          Left = 884.410020000000000000
          Top = 109.606370000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsEstimacion."inicioconvenio"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo33: TfrxMemoView
          Left = 737.008350000000000000
          Top = 94.488250000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            'VALOR CONVENIO:         $')
          ParentFont = False
          WordBreak = True
        end
        object Memo34: TfrxMemoView
          Left = 737.008350000000000000
          Top = 128.504020000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            'FECHA TERMINACI'#211'N:')
          ParentFont = False
          WordBreak = True
        end
        object Memo35: TfrxMemoView
          Left = 884.410020000000000000
          Top = 128.504020000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsEstimacion."terminacionconvenio"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo36: TfrxMemoView
          Left = 842.835190000000000000
          Top = 37.795300000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsEstimacion."codigoconvenio"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo37: TfrxMemoView
          Left = 737.008350000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            'CONVENIO NO.')
          ParentFont = False
          WordBreak = True
        end
        object Memo38: TfrxMemoView
          Left = 842.835190000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]'
            ''
            ' ')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 842.835190000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' [fdsEstimacion."codigoestimacion"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 52.913420000000000000
        Top = 219.212740000000000000
        Width = 980.410081999999900000
        object Memo15: TfrxMemoView
          Top = 26.456709999999930000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PDA.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 49.133890000000000000
          Top = 26.456709999999930000
          Width = 427.086890000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONCEPTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 476.220780000000000000
          Top = 26.456709999999930000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 536.693260000000000000
          Top = 26.456709999999930000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 585.827150000000000000
          Top = 26.456709999999930000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 646.299630000000000000
          Top = 26.456709999999930000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTA ESTIMACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 729.449290000000000000
          Top = 26.456709999999930000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 812.598950000000000000
          Top = 26.456709999999930000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTA ESTIMACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 895.748610000000000000
          Top = 26.456709999999930000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ACUMULADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 646.299630000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CANTIDAD'
            'DE SERVICIOS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 812.598950000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'IMPORTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        Height = 120.944960000000000000
        Top = 408.189240000000000000
        Width = 980.410081999999900000
        object Memo41: TfrxMemoView
          Top = 41.574830000000020000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'IMPORTETOTAL CON LETRA:')
          ParentFont = False
          WordBreak = True
        end
        object Memo40: TfrxMemoView
          Left = 124.724490000000000000
          Top = 41.574830000000020000
          Width = 854.173780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[importeletras]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Top = 56.692949999999990000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'FONDO PEP:')
          ParentFont = False
          WordBreak = True
        end
        object Memo43: TfrxMemoView
          Left = 56.692950000000010000
          Top = 56.692949999999990000
          Width = 275.905690000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsEstimacion."fondo"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo44: TfrxMemoView
          Left = 332.598640000000000000
          Top = 56.692949999999990000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'ELEMENTO  PEP:')
          ParentFont = False
          WordBreak = True
        end
        object Memo45: TfrxMemoView
          Left = 442.205010000000000000
          Top = 56.692949999999990000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsEstimacion."elementopep"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo46: TfrxMemoView
          Left = 653.858690000000000000
          Top = 56.692949999999990000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'CUENTA MAYOR:')
          ParentFont = False
          WordBreak = True
        end
        object Memo47: TfrxMemoView
          Left = 778.583180000000000000
          Top = 56.692949999999990000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[fdsEstimacion."cuentamayor"]')
          ParentFont = False
          WordBreak = True
        end
      end
    end
  end
end
