object FrmReporteInsidencias: TFrmReporteInsidencias
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Reporte de Incidencias de N'#243'mina'
  ClientHeight = 350
  ClientWidth = 303
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Seleccione las incidencias que desea consultar:'
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    Height = 350
    Width = 303
    object Btn_Ok: TcxButton
      Left = 144
      Top = 313
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 0
      OnClick = Btn_OkClick
    end
    object cbgFiltro: TCheckListBox
      Left = 3
      Top = 63
      Width = 297
      Height = 244
      Enabled = False
      IntegralHeight = True
      ItemHeight = 30
      Items.Strings = (
        'Tiempo Extra'
        'INFONAVIT'
        'Excepciones Especiales'
        'Inasistencias')
      Style = lbOwnerDrawVariable
      TabOrder = 1
    end
    object rbTodos: TcxRadioButton
      Left = 3
      Top = 17
      Width = 225
      Height = 17
      Caption = 'Mostrat todos los eventos'
      Checked = True
      Color = clBtnFace
      Ctl3D = True
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      TabStop = True
      OnClick = rbTodosClick
      Transparent = True
    end
    object rbFiltro: TcxRadioButton
      Left = 3
      Top = 40
      Width = 225
      Height = 17
      Caption = 'Mostrar solo los siguientes eventos'
      TabOrder = 3
      OnClick = rbTodosClick
      Transparent = True
    end
    object Btn_Cancelar: TcxButton
      Left = 225
      Top = 313
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = Form2.CxImageModal
      TabOrder = 4
      OnClick = Btn_CancelarClick
    end
  end
  object frxReporte: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41767.845851412000000000
    ReportOptions.LastChange = 42121.610746111110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 88
    Top = 232
    Datasets = <
      item
        DataSet = fdsInsidencias
        DataSetName = 'fdsInsidencias'
      end
      item
        DataSet = FDSOrganizacion
        DataSetName = 'FDSOrganizacion'
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      ColumnWidth = 196.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 105.826840000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE DETALLADO DE INCIDENCIAS DE N'#211'MINA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 105.826840000000000000
          Top = 18.456710000000000000
          Width = 634.961040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsInsidencias."Titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 105.826840000000000000
          Top = 33.354360000000000000
          Width = 634.961040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDSOrganizacion."NombreEmpresa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 105.826840000000000000
          Top = 48.252010000000000000
          Width = 634.961040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDSOrganizacion."Domicilio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          ShiftMode = smWhenOverlapped
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Center = True
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 21.787406460000000000
        Top = 200.315090000000000000
        Width = 740.409927000000000000
        Condition = 'fdsInsidencias."IdPersonal"'
        KeepTogether = True
        object Memo2: TfrxMemoView
          Top = 8.559059999999988000
          Width = 742.677241020000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '[fdsInsidencias."CodigoPersonal"] - [fdsInsidencias."NombreCompl' +
              'eto"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118110240000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        DataSet = fdsInsidencias
        DataSetName = 'fdsInsidencias'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsInsidencias."Codigo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 60.472480000000000000
          Width = 139.842610000000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[fdsInsidencias."Leyenda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 200.315090000000000000
          Width = 374.173470000000000000
          Height = 11.338582680000000000
          ShowHint = False
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[fdsInsidencias."Referencia"]')
          ParentFont = False
          UseDefaultCharset = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 573.811380000000000000
          Width = 86.929190000000000000
          Height = 11.338582677165400000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsInsidencias."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 660.740570000000000000
          Width = 79.370130000000000000
          Height = 11.338582677165400000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsInsidencias."Descuento"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 21.228346460000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 660.740570000000000000
          Top = 8.000000000000000000
          Width = 79.370130000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 8.000000000000000000
          Width = 60.472480000000000000
          Height = 13.228346456692900000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 60.472480000000000000
          Top = 8.000000000000000000
          Width = 139.842610000000000000
          Height = 13.228346456692900000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 200.315090000000000000
          Top = 8.000000000000000000
          Width = 374.173470000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Referencia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 572.811380000000000000
          Top = 8.000000000000000000
          Width = 86.929190000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Factor / Porcentaje')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 13.228346460000000000
        Top = 283.464750000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 660.740570000000000000
          Width = 79.370130000000000000
          Height = 13.228346456692900000
          ShowHint = False
          Color = clWhite
          DisplayFormat.FormatStr = '$%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsInsidencias."Descuento">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 573.811380000000000000
          Width = 86.929190000000000000
          Height = 13.228346456692900000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle2: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Memo17: TfrxMemoView
          Left = 105.826840000000000000
          Width = 873.071430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'REPORTE GENERAL DE INCIDENCIAS DE N'#211'MINA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 105.826840000000000000
          Top = 18.456710000000000000
          Width = 873.071430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsInsidencias."Titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 105.826840000000000000
          Top = 33.354360000000000000
          Width = 873.071430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDSOrganizacion."NombreEmpresa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 105.826840000000000000
          Top = 48.252010000000000000
          Width = 873.071430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDSOrganizacion."Domicilio"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          ShiftMode = smWhenOverlapped
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Center = True
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object DBCross1: TfrxDBCrossView
        Align = baLeft
        Top = 113.385826770000000000
        Width = 188.000000000000000000
        Height = 100.000000000000000000
        ShowHint = False
        DownThenAcross = False
        CellFields.Strings = (
          'Descuento')
        ColumnFields.Strings = (
          'Leyenda')
        DataSet = fdsInsidencias
        DataSetName = 'fdsInsidencias'
        RowFields.Strings = (
          'NombreCompleto')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2238382220
          546F703D223136332E3338353832363737222057696474683D22333822204865
          696768743D22313522205265737472696374696F6E733D223234222053686F77
          48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
          616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
          723D22302220466F6E742E4865696768743D222D372220466F6E742E4E616D65
          3D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479
          703D22313522204672616D652E57696474683D22302E352220476170583D2233
          2220476170593D2233222048416C69676E3D2268615269676874222050617265
          6E74466F6E743D2246616C7365222056416C69676E3D22766143656E74657222
          20546578743D2230222F3E3C546672784D656D6F56696577204C6566743D2238
          382220546F703D223137382E3338353832363737222057696474683D22333822
          204865696768743D22313522205265737472696374696F6E733D223234222053
          686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
          3D2246616C73652220446973706C6179466F726D61742E54686F7573616E6453
          6570617261746F723D222C2220446973706C6179466F726D61742E466F726D61
          745374723D2225322E326D2220446973706C6179466F726D61742E4B696E643D
          22666B4E756D657269632220466F6E742E436861727365743D22312220466F6E
          742E436F6C6F723D22302220466F6E742E4865696768743D222D372220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
          616D652E5479703D22313522204672616D652E57696474683D22302E35222047
          6170583D22332220476170593D2233222048416C69676E3D2268615269676874
          2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
          656E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C
          6566743D223132362220546F703D223136332E33383538323637372220576964
          74683D22343222204865696768743D22313522205265737472696374696F6E73
          3D223234222053686F7748696E743D2246616C73652220416C6C6F7745787072
          657373696F6E733D2246616C73652220446973706C6179466F726D61742E466F
          726D61745374723D2225322E326D2220446973706C6179466F726D61742E4B69
          6E643D22666B4E756D657269632220466F6E742E436861727365743D22312220
          466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D372220
          466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022
          204672616D652E5479703D22313522204672616D652E57696474683D22302E35
          2220476170583D22332220476170593D2233222048416C69676E3D2268615269
          6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
          766143656E7465722220546578743D2230222F3E3C546672784D656D6F566965
          77204C6566743D223132362220546F703D223137382E33383538323637372220
          57696474683D22343222204865696768743D2231352220526573747269637469
          6F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F7745
          787072657373696F6E733D2246616C73652220446973706C6179466F726D6174
          2E466F726D61745374723D2225322E326D2220446973706C6179466F726D6174
          2E4B696E643D22666B4E756D657269632220466F6E742E436861727365743D22
          312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
          372220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
          223022204672616D652E5479703D22313522204672616D652E57696474683D22
          302E352220476170583D22332220476170593D2233222048416C69676E3D2268
          6152696768742220506172656E74466F6E743D2246616C7365222056416C6967
          6E3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F
          56696577204C6566743D223133352220546F703D223337222057696474683D22
          323222204865696768743D22313522205265737472696374696F6E733D223234
          222053686F7748696E743D2246616C73652220416C6C6F774578707265737369
          6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
          742E436F6C6F723D22302220466F6E742E4865696768743D222D372220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
          616D652E5479703D2231352220476170583D22332220476170593D2233222048
          416C69676E3D22686152696768742220506172656E74466F6E743D2246616C73
          65222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C
          546672784D656D6F56696577204C6566743D223133352220546F703D22353222
          2057696474683D22323222204865696768743D22313522205265737472696374
          696F6E733D223234222053686F7748696E743D2246616C73652220416C6C6F77
          45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
          352220476170583D22332220476170593D2233222048416C69676E3D22686152
          69676874222056416C69676E3D22766143656E7465722220546578743D22222F
          3E3C546672784D656D6F56696577204C6566743D223133352220546F703D2236
          37222057696474683D22323222204865696768743D2231352220526573747269
          6374696F6E733D223234222053686F7748696E743D2246616C73652220416C6C
          6F7745787072657373696F6E733D2246616C73652220466F6E742E4368617273
          65743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768
          743D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E5374
          796C653D223022204672616D652E5479703D2231352220476170583D22332220
          476170593D2233222048416C69676E3D22686152696768742220506172656E74
          466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
          6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22313335
          2220546F703D223832222057696474683D22323222204865696768743D223232
          22205265737472696374696F6E733D223234222053686F7748696E743D224661
          6C73652220416C6C6F7745787072657373696F6E733D2246616C736522204672
          616D652E5479703D2231352220476170583D22332220476170593D2233222048
          416C69676E3D2268615269676874222056416C69676E3D22766143656E746572
          2220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63656C6C68656164
          65726D656D6F733E3C546672784D656D6F56696577204C6566743D2236322220
          546F703D223337222057696474683D22333822204865696768743D2231352220
          5265737472696374696F6E733D2238222053686F7748696E743D2246616C7365
          2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
          436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
          4865696768743D222D372220466F6E742E4E616D653D22417269616C2220466F
          6E742E5374796C653D223022204672616D652E5479703D223135222047617058
          3D22332220476170593D22332220506172656E74466F6E743D2246616C736522
          2056416C69676E3D22766143656E7465722220546578743D224465736375656E
          746F222F3E3C546672784D656D6F56696577204C6566743D2236322220546F70
          3D223532222057696474683D22333822204865696768743D2231352220526573
          7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
          6768743D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E
          5374796C653D223022204672616D652E5479703D2231352220476170583D2233
          2220476170593D22332220506172656E74466F6E743D2246616C736522205641
          6C69676E3D22766143656E7465722220546578743D224465736375656E746F22
          2F3E3C546672784D656D6F56696577204C6566743D2236322220546F703D2236
          37222057696474683D22333822204865696768743D2231352220526573747269
          6374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F
          7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
          743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
          3D222D372220466F6E742E4E616D653D22417269616C2220466F6E742E537479
          6C653D223022204672616D652E5479703D2231352220476170583D2233222047
          6170593D22332220506172656E74466F6E743D2246616C7365222056416C6967
          6E3D22766143656E7465722220546578743D224465736375656E746F222F3E3C
          546672784D656D6F56696577204C6566743D2236322220546F703D2238322220
          57696474683D22333822204865696768743D2232322220526573747269637469
          6F6E733D2238222053686F7748696E743D2246616C73652220416C6C6F774578
          7072657373696F6E733D2246616C736522204672616D652E5479703D22313522
          20476170583D22332220476170593D2233222056416C69676E3D22766143656E
          7465722220546578743D22222F3E3C2F63656C6C6865616465726D656D6F733E
          3C636F6C756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D
          2238382220546F703D223134382E3338353832363737222057696474683D2233
          3822204865696768743D22313522205265737472696374696F6E733D22323422
          2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
          6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
          2E436F6C6F723D22302220466F6E742E4865696768743D222D372220466F6E74
          2E4E616D653D22417269616C2220466F6E742E5374796C653D22312220467261
          6D652E5479703D22313522204672616D652E57696474683D22302E3522204761
          70583D22332220476170593D2233222048416C69676E3D22686143656E746572
          2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
          656E7465722220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C63
          6F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F56696577204C65
          66743D223132362220546F703D223134382E3338353832363737222057696474
          683D22343222204865696768743D22313522205265737472696374696F6E733D
          2238222053686F7748696E743D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
          6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D37222046
          6F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22312220
          4672616D652E5479703D22313522204672616D652E57696474683D22302E3522
          20476170583D22332220476170593D2233222048416C69676E3D22686143656E
          7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
          766143656E7465722220546578743D22546F74616C2053756D61222F3E3C2F63
          6F6C756D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C5466
          72784D656D6F56696577204C6566743D2232302220546F703D223133332E3338
          353832363737222057696474683D22363822204865696768743D223135222052
          65737472696374696F6E733D2238222053686F7748696E743D2246616C736522
          20416C6C6F7745787072657373696F6E733D2246616C73652220436F6C6F723D
          2231343231313238382220466F6E742E436861727365743D22312220466F6E74
          2E436F6C6F723D22302220466F6E742E4865696768743D222D372220466F6E74
          2E4E616D653D22417269616C2220466F6E742E5374796C653D22312220467261
          6D652E5479703D22313522204672616D652E57696474683D22302E3522204761
          70583D22332220476170593D2233222048416C69676E3D22686143656E746572
          2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
          656E7465722220546578743D224465736375656E746F222F3E3C546672784D65
          6D6F56696577204C6566743D2238382220546F703D223133332E333835383236
          3737222057696474683D22383022204865696768743D22313522205265737472
          696374696F6E733D2238222053686F7748696E743D2246616C73652220416C6C
          6F7745787072657373696F6E733D2246616C73652220436F6C6F723D22313432
          31313238382220466F6E742E436861727365743D22312220466F6E742E436F6C
          6F723D22302220466F6E742E4865696768743D222D372220466F6E742E4E616D
          653D22417269616C2220466F6E742E5374796C653D223122204672616D652E54
          79703D22313522204672616D652E57696474683D22302E352220476170583D22
          332220476170593D2233222048416C69676E3D22686143656E74657222205061
          72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
          722220546578743D22434F4E434550544F53222F3E3C546672784D656D6F5669
          6577204C6566743D2236322220546F703D223135222057696474683D22333822
          204865696768743D22323222205265737472696374696F6E733D223822205669
          7369626C653D2246616C7365222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
          703D2231352220476170583D22332220476170593D2233222048416C69676E3D
          22686143656E746572222056416C69676E3D22766143656E7465722220546578
          743D22222F3E3C546672784D656D6F56696577204C6566743D2232302220546F
          703D223134382E3338353832363737222057696474683D223638222048656967
          68743D22313522205265737472696374696F6E733D2238222053686F7748696E
          743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
          652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
          302220466F6E742E4865696768743D222D372220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22
          313522204672616D652E57696474683D22302E352220476170583D2233222047
          6170593D2233222048416C69676E3D22686143656E7465722220506172656E74
          466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
          6578743D22454D504C4541444F222F3E3C2F636F726E65726D656D6F733E3C72
          6F776D656D6F733E3C546672784D656D6F56696577204C6566743D2232302220
          546F703D223136332E3338353832363737222057696474683D22363822204865
          696768743D22313522205265737472696374696F6E733D223234222053686F77
          48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
          616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
          723D22302220466F6E742E4865696768743D222D372220466F6E742E4E616D65
          3D22417269616C2220466F6E742E5374796C653D223022204672616D652E5479
          703D22313522204672616D652E57696474683D22302E352220476170583D2233
          2220476170593D2233222048416C69676E3D22686143656E7465722220506172
          656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
          2220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D
          656D6F733E3C546672784D656D6F56696577204C6566743D2232302220546F70
          3D223137382E3338353832363737222057696474683D22363822204865696768
          743D22313522205265737472696374696F6E733D2238222053686F7748696E74
          3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
          2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
          2220466F6E742E4865696768743D222D372220466F6E742E4E616D653D224172
          69616C2220466F6E742E5374796C653D223122204672616D652E5479703D2231
          3522204672616D652E57696474683D22302E352220476170583D223322204761
          70593D2233222048416C69676E3D22686143656E7465722220506172656E7446
          6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
          78743D22546F74616C20706F7220436F6E636570746F222F3E3C2F726F77746F
          74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F
          3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974
          656D20302F3E3C2F636F6C756D6E736F72743E3C726F77736F72743E3C697465
          6D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
      end
    end
  end
  object fdsInsidencias: TfrxDBDataset
    UserName = 'fdsInsidencias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Titulo=Titulo'
      'IdPersonal=IdPersonal'
      'CodigoPersonal=CodigoPersonal'
      'NombreCompleto=NombreCompleto'
      'Codigo=Codigo'
      'Leyenda=Leyenda'
      'Referencia=Referencia'
      'Cantidad=Cantidad'
      'Descuento=Descuento')
    BCDToCurrency = False
    Left = 168
    Top = 240
  end
  object FDSOrganizacion: TfrxDBDataset
    UserName = 'FDSOrganizacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NombreEmpresa=NombreEmpresa'
      'Domicilio=Domicilio')
    BCDToCurrency = False
    Left = 40
    Top = 232
  end
end
