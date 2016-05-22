inherited FrmDocumento: TFrmDocumento
  Caption = 'Documentaci'#243'n'
  ClientWidth = 929
  ExplicitWidth = 945
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TcxGroupBox
    ExplicitWidth = 169
    Width = 169
    inherited LbFiltros: TJvLabel
      Width = 157
      ExplicitWidth = 775
    end
    inherited GroupBoxFiltro: TcxGroupBox
      ExplicitWidth = 163
      Width = 163
      inherited BtnSearch: TcxButton
        Width = 151
        OnClick = BtnSearchClick
        ExplicitWidth = 151
      end
      object edtFNombre: TAdvEdit
        Left = 3
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
        TabOrder = 1
        Visible = True
        OnKeyPress = edtFNombreKeyPress
        Version = '2.9.0.0'
      end
      object CbTipo: TJvComboBox
        Left = 3
        Top = 44
        Width = 159
        Height = 21
        Style = csDropDownList
        ParentFlat = False
        TabOrder = 2
        OnChange = BtnSearchClick
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Left = 169
    Width = 760
    ExplicitLeft = 169
    ExplicitWidth = 760
    inherited DBGridPrincipal: TNextDBGrid
      Width = 758
      OnCustomDrawCell = DBGridPrincipalCustomDrawCell
      ExplicitWidth = 758
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Documento'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Width = 350
        FieldName = 'nombredocumento'
      end
      object NxDBMemoColumn1: TNxDBMemoColumn
        DefaultWidth = 200
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
        Width = 200
        FieldName = 'descripcion'
        MemoDisplayOptions = mdContent
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Tipo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        FieldName = 'tipo'
      end
    end
    inherited PnlPro: TPanel
      Width = 758
      ExplicitWidth = 758
      inherited PBPaginacion: TAdvProgressBar
        Width = 660
        ExplicitWidth = 599
      end
      inherited PnlNum: TPanel
        Left = 661
        ExplicitLeft = 661
      end
    end
  end
  inherited PanelBarra: TcxGroupBox
    ExplicitWidth = 929
    Width = 929
    inherited Panel1: TcxGroupBox
      ExplicitWidth = 833
      Width = 833
    end
    inherited Panel2: TcxGroupBox
      Left = 834
      ExplicitLeft = 834
    end
  end
  inherited MainPopupMenu: TPopupMenu
    Left = 512
    Top = 264
  end
  inherited cdDatos: TClientDataSet
    Left = 278
    Top = 152
  end
  inherited dsDatos: TDataSource
    Left = 416
  end
  inherited OpenXLS: TOpenDialog
    Left = 616
    Top = 240
  end
  inherited DxBManagerMain: TdxBarManager
    Left = 816
    Top = 8
    DockControlHeights = (
      0
      0
      59
      0)
    inherited DxBLbuttonAgregar: TdxBarLargeButton
      OnClick = nil
    end
    inherited DxBarBtnImportat: TdxBarLargeButton
      Visible = ivNever
    end
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
    ReportOptions.LastChange = 42114.548692685190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 352
    Top = 208
    Datasets = <
      item
        DataSet = frxDocumentos
        DataSetName = 'ReporteDocumentos'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end
      item
        DataSet = frxOrganizacion
        DataSetName = 'ReporteOrganizacion '
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 396.850650000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779530000000022000
          Width = 204.094620000000000000
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
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 740.409927000000000000
        DataSet = frxDocumentos
        DataSetName = 'ReporteDocumentos'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 11.338575350000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
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
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteDocumentos."nombredocumento"]')
          ParentFont = False
        end
        object ReporteDocumentosdescripcion: TfrxMemoView
          Left = 241.889920000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'descripcion'
          DataSet = frxDocumentos
          DataSetName = 'ReporteDocumentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteDocumentos."descripcion"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 570.709030000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Tipo'
          DataSet = frxDocumentos
          DataSetName = 'ReporteDocumentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteDocumentos."Tipo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteDocumentos."iddocumento"'
      end
      object Header1: TfrxHeader
        Height = 25.322834650000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 6.425196849999992000
          Width = 230.551330000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 241.889700310000000000
          Top = 6.425196849999992000
          Width = 328.818897637795300000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 570.709030000000000000
          Top = 6.425196849999992000
          Width = 147.401670000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 60.472479999999990000
          Width = 570.709030000000000000
          Height = 34.015770000000010000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cat'#225'logo de documentos.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 93.826840000000000000
          Width = 570.709030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd,mmm,yyyy'#39',Date)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 147.401670000000000000
          Top = 115.842610000000000000
          Width = 570.709030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Ciudad del Carmen, Campeche')
          ParentFont = False
          VAlign = vaCenter
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
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 147.401670000000000000
          Width = 570.709030000000000000
          Height = 60.472480000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -16
          Font.Name = 'times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion ."TituloOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 11.338590000000000000
          Top = 124.724490000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion ."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDocumentos: TfrxDBDataset
    UserName = 'ReporteDocumentos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nombreDocumento=nombreDocumento'
      'descripcion=descripcion'
      'Tipo=Tipo'
      'idDocumento=idDocumento')
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 312
    Top = 304
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion '
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 416
    Top = 328
  end
end
