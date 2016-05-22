object FrmHistorialSalario: TFrmHistorialSalario
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Historial de Salario'
  ClientHeight = 321
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 544
    Height = 280
    BackImage.Inside = True
    BackWall.Brush.Color = clBlack
    Legend.CheckBoxesStyle = cbsRadio
    Legend.TextStyle = ltsRightValue
    Title.Font.Color = 4194304
    Align = alClient
    TabOrder = 0
    OnMouseDown = Chart1MouseDown
    PrintMargins = (
      15
      24
      15
      24)
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      BarBrush.Gradient.EndColor = 10708548
      Marks.Arrow.Visible = False
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = False
      Marks.Emboss.Color = 8618883
      Marks.Shadow.Color = 8816262
      Marks.Style = smsValue
      Marks.Visible = True
      Title = 'Salario'
      Gradient.EndColor = 10708548
      MarksLocation = mlStart
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      Data = {0001000000000000000000F03F}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 280
    Width = 544
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Btn_Grafica: TAdvShapeButton
      Left = 8
      Top = 6
      Width = 113
      Height = 22
      Appearance.Shape = bsRectangle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Imprimir Gr'#225'fica'
      Version = '5.0.1.4'
      OnClick = Btn_GraficaClick
    end
    object Panel2: TPanel
      Left = 446
      Top = 1
      Width = 97
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object AdvShapeButton3: TAdvShapeButton
        Left = 10
        Top = 5
        Width = 80
        Height = 22
        Appearance.Shape = bsRectangle
        Appearance.BorderColorHot = clBlack
        Appearance.BorderColorDown = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Cerrar'
        Version = '5.0.1.4'
        OnClick = AdvShapeButton3Click
      end
    end
    object Btn_Listado: TAdvShapeButton
      Left = 152
      Top = 6
      Width = 97
      Height = 22
      Appearance.Shape = bsRectangle
      Appearance.BorderColor = 10046720
      Appearance.BorderColorHot = 10706714
      Appearance.BorderColorDown = 10046720
      Appearance.InnerBorderColor = 16757606
      Appearance.InnerBorderColorHot = 16759669
      Appearance.InnerBorderColorDown = 16757606
      Appearance.Color = 16754253
      Appearance.ColorMirror = 16744448
      Appearance.ColorMirrorTo = 16744448
      Appearance.ColorHot = 16756575
      Appearance.ColorHotTo = 16750641
      Appearance.ColorHotMirror = 16747802
      Appearance.ColorHotMirrorTo = 16747802
      Appearance.ColorDown = 16754253
      Appearance.ColorDownTo = 16747802
      Appearance.ColorDownMirror = 16744448
      Appearance.ColorDownMirrorTo = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'Imprimir Listado'
      Version = '5.0.1.4'
      OnClick = Btn_ListadoClick
    end
    object Btn_Ambos: TAdvShapeButton
      Left = 280
      Top = 6
      Width = 97
      Height = 22
      Appearance.Shape = bsRectangle
      Appearance.BorderColor = 10046720
      Appearance.BorderColorHot = 10706714
      Appearance.BorderColorDown = 10046720
      Appearance.InnerBorderColor = 16757606
      Appearance.InnerBorderColorHot = 16759669
      Appearance.InnerBorderColorDown = 16757606
      Appearance.Color = 16754253
      Appearance.ColorMirror = 16744448
      Appearance.ColorMirrorTo = 16744448
      Appearance.ColorHot = 16756575
      Appearance.ColorHotTo = 16750641
      Appearance.ColorHotMirror = 16747802
      Appearance.ColorHotMirrorTo = 16747802
      Appearance.ColorDown = 16754253
      Appearance.ColorDownTo = 16747802
      Appearance.ColorDownMirror = 16744448
      Appearance.ColorDownMirrorTo = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'Imprimir Ambos'
      Version = '5.0.1.4'
      OnClick = Btn_AmbosClick
    end
  end
  object cdHistorialSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 16
  end
  object frReporteSalario: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41234.492284756900000000
    ReportOptions.LastChange = 41235.705837314820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    OnGetValue = frReporteSalarioGetValue
    Left = 408
    Top = 64
    Datasets = <
      item
        DataSet = dbHistorialSalario
        DataSetName = 'dbHistorialSalario'
      end
      item
        DataSet = frdsHoja1
        DataSetName = 'frdsHoja1'
      end
      item
        DataSet = frdsHoja2
        DataSetName = 'frdsHoja2'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <>
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
      DataSet = frdsHoja1
      DataSetName = 'frdsHoja1'
      PrintIfEmpty = False
      object PageHeader2: TfrxPageHeader
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Picture2: TfrxPictureView
          Left = 15.118120000000000000
          Top = 3.779530000000001000
          Width = 102.047310000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo16: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000001000
          Width = 827.717070000002000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Grafica Historial de Salario')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 143.622140000000000000
          Top = 34.015770000000010000
          Width = 827.717070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8W = (
            
              'SALARIO: ( [<dbHistorialSalario."CodigoSalario">] )  [<dbHistori' +
              'alSalario."TituloSalario">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 143.622140000000000000
          Top = 60.472479999999990000
          Width = 827.717070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            'MONEDA: [<dbHistorialSalario."TituloMoneda">]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Chart1: TfrxChartView
        Left = 11.338590000000000000
        Top = 177.637910000000000000
        Width = 960.000620000000000000
        Height = 325.039580000000000000
        ShowHint = False
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080D4672616D652E56697369626C6508165669657733444F7074
          696F6E732E526F746174696F6E02000A426576656C4F75746572070662764E6F
          6E6505436F6C6F720707636C576869746511436F6C6F7250616C65747465496E
          646578020D000A544261725365726965730753657269657331134D61726B732E
          4172726F772E56697369626C6509194D61726B732E43616C6C6F75742E427275
          73682E436F6C6F720707636C426C61636B1B4D61726B732E43616C6C6F75742E
          4172726F772E56697369626C65090D4D61726B732E56697369626C65090B5365
          72696573436F6C6F72070B636C486967686C69676874055469746C6506036461
          630B56616C7565466F726D6174060B232C2323302E30302323230B4175746F42
          617253697A65090C5856616C7565732E4E616D650601580D5856616C7565732E
          4F72646572070B6C6F417363656E64696E670C5956616C7565732E4E616D6506
          034261720D5956616C7565732E4F7264657207066C6F4E6F6E65000000}
        ChartElevation = 345
        SeriesData = <
          item
            DataType = dtDBData
            DataSet = dbHistorialSalario
            DataSetName = 'dbHistorialSalario'
            SortOrder = soAscending
            TopN = 0
            XType = xtText
            Source1 = 'dbHistorialSalario."fechaaplicacion"'
            Source2 = 'dbHistorialSalario."salario"'
            Source3 = 'dbHistorialSalario."fechaaplicacion"'
            XSource = 'dbHistorialSalario."fechaaplicacion"'
            YSource = 'dbHistorialSalario."salario"'
          end>
      end
      object PageFooter2: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 980.410081999999900000
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Width = 971.339210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frdsHoja2
      DataSetName = 'frdsHoja2'
      PrintIfEmpty = False
      object PageHeader1: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 30.236240000000000000
          Top = 3.779530000000001000
          Width = 120.944960000000000000
          Height = 113.385900000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 162.519790000000000000
          Top = 3.779530000000001000
          Width = 570.709030000000200000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Reporte De Historial')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 162.519790000000000000
          Top = 34.015770000000010000
          Width = 570.709030000000200000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Catalogo de Salario')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 162.519790000000000000
          Top = 64.252010000000000000
          Width = 570.709030000000200000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd-mmm-yyyy'#39',Date)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 162.519790000000000000
          Top = 90.708720000000000000
          Width = 570.709030000000200000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        DataSet = dbHistorialSalario
        DataSetName = 'dbHistorialSalario'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CodigoSalario'
          DataSet = dbHistorialSalario
          DataSetName = 'dbHistorialSalario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[dbHistorialSalario."CodigoSalario"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 124.724490000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloSalario'
          DataSet = dbHistorialSalario
          DataSetName = 'dbHistorialSalario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[dbHistorialSalario."TituloSalario"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 238.110390000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = dbHistorialSalario
          DataSetName = 'dbHistorialSalario'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbHistorialSalario."salario"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 347.716760000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'fechaaplicacion'
          DataSet = dbHistorialSalario
          DataSetName = 'dbHistorialSalario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbHistorialSalario."fechaaplicacion"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 461.102660000000000000
          Width = 185.196970000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloMoneda'
          DataSet = dbHistorialSalario
          DataSetName = 'dbHistorialSalario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[dbHistorialSalario."TituloMoneda"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        Condition = 'true'
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Codigo Salario')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 124.724490000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Titulo Salario')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 238.110390000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Salario')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 347.716760000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha Aplicacion')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 461.102660000000000000
          Width = 185.196970000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Moneda')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Width = 729.449290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object dbHistorialSalario: TfrxDBDataset
    UserName = 'dbHistorialSalario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CodigoSalario=CodigoSalario'
      'TituloSalario=TituloSalario'
      'salario=salario'
      'fechaaplicacion=fechaaplicacion'
      'IdMoneda=IdMoneda'
      'TituloMoneda=TituloMoneda')
    DataSet = cdHistorialSalario
    BCDToCurrency = False
    Left = 432
    Top = 16
  end
  object memHoja2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 176
    object memHoja2Campo1: TIntegerField
      FieldName = 'Campo1'
    end
  end
  object memHoja1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 136
    object IntegerField1: TIntegerField
      FieldName = 'Campo1'
    end
  end
  object frdsHoja1: TfrxDBDataset
    UserName = 'frdsHoja1'
    CloseDataSource = False
    DataSet = memHoja1
    BCDToCurrency = False
    Left = 488
    Top = 136
  end
  object frdsHoja2: TfrxDBDataset
    UserName = 'frdsHoja2'
    CloseDataSource = False
    DataSet = memHoja2
    BCDToCurrency = False
    Left = 488
    Top = 184
  end
end
