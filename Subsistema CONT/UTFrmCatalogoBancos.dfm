inherited FrmCatalogoBancos: TFrmCatalogoBancos
  Caption = 'Cat'#225'logo de Bancos'
  ClientWidth = 979
  ExplicitWidth = 995
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    ExplicitWidth = 191
    Width = 191
    inherited LbFiltros: TJvLabel
      Width = 179
      ExplicitWidth = 179
    end
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 185
      Width = 185
      inherited BtnSearch: TcxButton
        Width = 173
        OnClick = BtnSearchClick
        ExplicitWidth = 173
      end
      object edtnombre: TAdvEdit
        Left = 3
        Top = 3
        Width = 176
        Height = 21
        EmptyText = 'Nombre del Banco'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 1
        Visible = True
        OnKeyPress = edtnombreKeyPress
        Version = '2.9.0.0'
      end
      object edtsucursal: TAdvEdit
        Left = 3
        Top = 30
        Width = 176
        Height = 21
        EmptyText = 'Sucursal'
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
        OnKeyPress = edtsucursalKeyPress
        Version = '2.9.0.0'
      end
      object edtcodigo: TAdvEdit
        Left = 2
        Top = 57
        Width = 177
        Height = 21
        EmptyText = 'Codigo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 3
        Visible = True
        OnKeyPress = edtcodigoKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 191
    Width = 788
    ExplicitLeft = 191
    ExplicitWidth = 788
    inherited DBGridPrincipal: TNextDBGrid
      Width = 786
      ExplicitWidth = 786
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Codigo Banco'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 120
        FieldName = 'codigo'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre Banco'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 200
        FieldName = 'nombre'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Sucursal'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 120
        FieldName = 'sucursal'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 120
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Numero Sucursal'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 120
        FieldName = 'numsucursal'
      end
      object NxDBTextColumn5: TNxDBTextColumn
        DefaultWidth = 199
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Contacto'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 199
        FieldName = 'contacto'
      end
      object NxDBTextColumn6: TNxDBTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Telefono'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Width = 120
        FieldName = 'telefono'
      end
    end
    inherited PnlPro: TPanel
      Width = 786
      ExplicitWidth = 786
      inherited PBPaginacion: TAdvProgressBar
        Width = 688
        ExplicitWidth = 682
      end
      inherited PnlNum: TPanel
        Left = 689
        ExplicitLeft = 689
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    ExplicitWidth = 979
    Width = 979
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 883
      Width = 883
    end
    inherited Panel2: TcxGroupBox
      Left = 884
      ExplicitLeft = 884
    end
  end
  inherited mdDeposito: TClientDataSet
    Left = 624
    Top = 8
  end
  inherited DxBManagerMain: TdxBarManager
    Top = 8
    DockControlHeights = (
      0
      0
      59
      0)
    inherited DxBarBtnImportat: TdxBarLargeButton
      Visible = ivNever
    end
  end
  object frxReporteCatalogoCuentas: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 42115.570325057880000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 224
    Datasets = <
      item
        DataSet = frxCatalogoCuentas
        DataSetName = 'ReporteCalatogoCuentas'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end
      item
        DataSet = frxOrganizacion
        DataSetName = 'ReporteOrganizacion'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.ShadowWidth = 1.000000000000000000
      Frame.Width = 0.100000000000000000
      object PageFooter1: TfrxPageFooter
        Height = 34.015770000000000000
        Top = 449.764070000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 506.457020000000000000
          Top = 7.559059999999988000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        DataSet = frxCatalogoCuentas
        DataSetName = 'ReporteCalatogoCuentas'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 22.677165350000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Codigo'
          DataSet = frxCatalogoCuentas
          DataSetName = 'ReporteCalatogoCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteCalatogoCuentas."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 359.055306060000000000
          Width = 75.590477950000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Sucursal'
          DataSet = frxCatalogoCuentas
          DataSetName = 'ReporteCalatogoCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteCalatogoCuentas."Sucursal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 434.645732760000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Sucursal'
          DataSet = frxCatalogoCuentas
          DataSetName = 'ReporteCalatogoCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteCalatogoCuentas."Sucursal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 514.016080000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Contacto'
          DataSet = frxCatalogoCuentas
          DataSetName = 'ReporteCalatogoCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteCalatogoCuentas."Contacto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Telefono'
          DataSet = frxCatalogoCuentas
          DataSetName = 'ReporteCalatogoCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteCalatogoCuentas."Telefono"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteCuentasDescripcion: TfrxMemoView
          Left = 132.283550000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Nombre'
          DataSet = frxCatalogoCuentas
          DataSetName = 'ReporteCalatogoCuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteCalatogoCuentas."Nombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        Condition = '<ReporteCalatogoCuentas."IdBanco">'
        KeepTogether = True
      end
      object Header1: TfrxHeader
        Height = 32.881906850000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 22.677180000000000000
          Top = 6.425196849999963000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Codigo Banco')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 132.283550000000000000
          Top = 6.425196849999963000
          Width = 226.771677950000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre Banco')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 359.055350000000000000
          Top = 6.425196850000020000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Sucursal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 434.645950000000000000
          Top = 6.425196849999963000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' Sucursal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 514.016080000000000000
          Top = 6.425196849999963000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Contacto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 627.401980000000000000
          Top = 6.425194409999960000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 16700346
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tel'#233'fono')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 188.976500000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 71.811070000000000000
          Width = 570.709030000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Cat'#225'logo de Cuentas de Banco')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 135.401670000000000000
          Width = 570.709030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd,mmm,yyyy'#39',Date)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 147.401670000000000000
          Top = 157.417440000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Ciudad del Carmen, Campeche')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 22.677180000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 115.653543310000000000
          ShowHint = False
          DataField = 'imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Width = 0.500000000000000000
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 147.401670000000000000
          Top = 18.897650000000000000
          Width = 570.709030000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -16
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."TituloOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 136.063080000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 389.291590000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object frxCatalogoCuentas: TfrxDBDataset
    UserName = 'ReporteCalatogoCuentas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdBanco=IdBanco'
      'Nombre=Nombre'
      'Sucursal=Sucursal'
      'NumSucursal=NumSucursal'
      'Contacto=Contacto'
      'Telefono=Telefono'
      'Codigo=Codigo')
    BCDToCurrency = False
    Left = 488
    Top = 272
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion'
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 568
    Top = 304
  end
end
