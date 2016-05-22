inherited FrmDocumentosPersonal: TFrmDocumentosPersonal
  Caption = 'Documentos de personal'
  ExplicitTop = -114
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    inherited GroupBoxFiltro: TGroupBox
      inherited BtnSearch: TAdvShapeButton
        Left = 336
        Top = 4
        OnClick = BtnSearchClick
        ExplicitLeft = 336
        ExplicitTop = 4
      end
      object edtFNombre: TAdvEdit
        Left = 3
        Top = 17
        Width = 142
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
        TabOrder = 1
        Visible = True
        Version = '2.9.0.0'
      end
      object Edtfcodigo: TAdvEdit
        Left = 151
        Top = 17
        Width = 162
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
        TabOrder = 2
        Visible = True
        Version = '2.9.0.0'
      end
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 464
    Top = 112
  end
  inherited cdDatos: TClientDataSet
    Left = 406
    Top = 0
  end
  inherited dsDatos: TDataSource
    Left = 416
    Top = 48
  end
  inherited mdEstructura: TJvMemoryData
    Left = 568
    Top = 0
  end
  inherited mdDeposito: TClientDataSet
    Left = 464
  end
  inherited OpenXLS: TOpenDialog
    Left = 544
    Top = 112
  end
  inherited SaveXLS: TSaveDialog
    Left = 584
    Top = 112
  end
  object frxReporteDocPersonal: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 40976.447606516200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 544
    Top = 296
    Datasets = <
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end
      item
        DataSet = frxDocPersonal
        DataSetName = 'ReporteDocPersonal'
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
        DataSet = frxDocPersonal
        DataSetName = 'ReporteDocPersonal'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 23.220470000000000000
          Width = 113.385900000000000000
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
            '[ReportePaises."codigopais"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 136.606370000000000000
          Width = 241.889920000000000000
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
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReportePaises."titulopais"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 377.496290000000000000
          Width = 340.157700000000000000
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
            '[ReportePaises."comentario"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        Condition = 'ReportePaises."idpais"'
      end
      object Header1: TfrxHeader
        Height = 34.015770000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 22.677180000000000000
          Top = 6.338590000000010000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 136.063080000000000000
          Top = 6.338590000000010000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'T'#237'tulo:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 377.953000000000000000
          Top = 6.338590000000010000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Comentarios:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 22.677180000000000000
          Top = 31.236240000000010000
          Width = 695.433520000000000000
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
            'Cat'#225'logo de paises')
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
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object frxDocPersonal: TfrxDBDataset
    UserName = 'ReporteDocPersonal'
    CloseDataSource = False
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 472
    Top = 296
  end
end
