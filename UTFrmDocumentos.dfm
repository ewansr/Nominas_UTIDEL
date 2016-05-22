inherited FrmDocumentos: TFrmDocumentos
  Caption = 'Documentos'
  ClientHeight = 338
  ClientWidth = 587
  ExplicitWidth = 595
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    ExplicitWidth = 587
    ExplicitHeight = 241
    Height = 241
    Width = 587
    inherited LbFiltros: TJvLabel
      Top = 204
      Width = 575
      ExplicitLeft = 4
      ExplicitTop = 56
      ExplicitWidth = 583
    end
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 581
      ExplicitHeight = 186
      Height = 186
      Width = 581
      inherited BtnSearch: TcxButton
        Top = 151
        Width = 569
        TabOrder = 1
        OnClick = BtnSearchClick
        ExplicitLeft = 245
      end
      object edtFNombre: TAdvEdit
        Left = 27
        Top = 17
        Width = 159
        Height = 21
        EmptyText = 'Nombre'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 0
        Visible = True
        OnKeyPress = edtFNombreKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 587
    Width = 0
    Height = 241
    ExplicitWidth = 587
    ExplicitHeight = 257
    inherited DBGridPrincipal: TNextDBGrid
      Width = 585
      Height = 214
      ExplicitWidth = 585
      ExplicitHeight = 200
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'id'
        Header.DisplayMode = dmTextAndImage
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Visible = False
        FieldName = 'iddocumento'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        DefaultWidth = 414
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000003300000033000000330000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000686B70FF6C6D6EFF6D6D6EFF6C6D
          6EFF686B70FF0000000000000000000000000000000000000000010100350000
          003300000033000000330000003300000033000000330000003367696EFF0000
          0033000000330000003300000033000000330000003300000033CA9636FFDFAC
          48FFDBA641FFDBA640FFDBA63FFFDFA83FFFE5AC3EFFEEB23FFF5B6068FFEEB2
          3FFFE5AC3EFFDFA83FFFDBA63FFFDBA641FFDCA846FFD4A13BFFA97117FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF535559FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBA745FFAA7114FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA540FFAA7114FFFFFF
          FFFFD09530FFD19838FFD2993AFFD19838FFD1952FFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA43FFFAA7215FFFFFF
          FFFFD29A3AFFD49F45FFD5A148FFD59F45FFD49B3AFFFFFFFFFF525354FFFFFF
          FFFFF9F9F8FFF6F6F5FFF6F6F5FFF6F7F7FFFFFFFFFFDAA53FFFAA7215FFFFFF
          FFFFD29733FFD49B3CFFD59D3EFFD49C3CFFD59934FFF8FBFFFF545556FFF6F5
          F4FFEDECEBFFEBEAE9FFEAEAE9FFE9E9EAFFFFFFFFFFDAA53FFFAB7316FFFFFF
          FFFFDFE3EDFFE0E5F0FFE1E6F1FFE1E5F0FFE2E6EEFFE9EAEEFF555759FFE9E8
          EAFFE0E0E2FFDEDEE0FFDEDEE0FFDDDDE0FFFFFFFFFFDBA741FFAD761BFFF6EF
          E5FFF3EADCFFF4EADBFFF4EADBFFF4EADBFFF5ECDBFFFDF1DEFF585C63FFFDF1
          DEFFF5EBDAFFF3E9D9FFF3E9D9FFF2E9D9FFF2EBE1FFDEAB49FFB07B24FFAD76
          1CFFAC7418FFAC7418FFAC7418FFAD7417FFAF7516FFB47815FF5D6572FFB478
          15FFAF7516FFAD7417FFAC7418FFAC7418FFAA731AFFCA9536FF000000000000
          0000000000000000000000000000000000000000003300000033636B77FF0000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000666C76FF696D74FF6A6D72FF696D
          74FF666C76FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 414
        FieldName = 'nombredocumento'
      end
    end
    inherited PnlPro: TPanel
      Width = 585
      inherited PBPaginacion: TAdvProgressBar
        Width = 487
      end
      inherited PnlNum: TPanel
        Left = 488
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    Top = 300
    ExplicitTop = 300
    ExplicitWidth = 587
    Width = 587
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 491
      Width = 491
    end
    inherited Panel2: TcxGroupBox
      Left = 492
      ExplicitLeft = 492
    end
  end
  inherited DxBManagerMain: TdxBarManager
    DockControlHeights = (
      0
      0
      59
      0)
  end
  object frxReporteDocumentos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 40981.640795891200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Datasets = <
      item
        DataSet = FrxDocumentos
        DataSetName = 'ReporteDocumentos'
      end
      item
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
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 396.850650000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559059999999988000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        DataSet = FrxDocumentos
        DataSetName = 'ReporteDocumentos'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 23.220470000000000000
          Width = 430.866420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FrmDisciplinas.FrxDisciplinas
          DataSetName = 'ReporteDisciplinas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReporteDocumentos."nombredocumento"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteDocumentos."iddocumento"'
      end
      object Header1: TfrxHeader
        Height = 34.015770000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 22.677180000000000000
          Top = 6.338590000000010000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nombre:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 22.677180000000000000
          Top = 31.236240000000010000
          Width = 430.866420000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 45.354360000000000000
          Width = 585.827150000000000000
          Height = 34.015770000000010000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cat'#225'logo de documentos.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559059999999999000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Reporte General')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 78.708720000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd,mmm,yyyy'#39',Date)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 147.401670000000000000
          Top = 100.724490000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Ciudad del Carmen, Campeche')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559059999999999000
          Width = 128.504020000000000000
          Height = 117.165430000000000000
          ShowHint = False
          DataField = 'imagen1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object FrxDocumentos: TfrxDBDataset
    UserName = 'ReporteDocumentos'
    CloseDataSource = False
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 480
  end
end
