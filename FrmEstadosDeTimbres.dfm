object TFrmEstadosDeTimbres: TTFrmEstadosDeTimbres
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Listado de Timbres de N'#243'minas'
  ClientHeight = 510
  ClientWidth = 1019
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panelInferior: TPanel
    Left = 0
    Top = 126
    Width = 1019
    Height = 19
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object btnCerrar: TcxButton
      Left = 784
      Top = 6
      Width = 83
      Height = 25
      Caption = '&Cerrar'
      Default = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013LightGray'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000B000000120000001300000013000000140000001400000014000000140000
        0014000000140000001500000015000000140000000D000000030000000B1C11
        6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
        93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
        9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
        D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
        A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
        BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
        A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
        CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
        ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
        B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
        B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
        BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
        C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
        D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
        D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
        A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
        DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
        BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
        DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
        F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
        A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
        DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
        0002000000030000000400000004000000040000000400000004000000040000
        0004000000040000000400000005000000050000000300000001}
      TabOrder = 0
      Visible = False
      OnClick = btnCerrarClick
    end
    object cxlbl4: TcxLabel
      Left = 168
      Top = 0
      Caption = 'Total Canceladas:'
      Transparent = True
    end
    object cxlbl3: TcxLabel
      Left = 3
      Top = 0
      Caption = 'Total Emitidas:'
      Transparent = True
    end
    object CxBtnImprimir: TcxButton
      Left = 695
      Top = 6
      Width = 83
      Height = 25
      Caption = 'Im&primir'
      Default = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013LightGray'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A0000000F000000110000001100000011000000100000
        000B000000030000000000000000000000000000000000000000000000090000
        000E000000168A6559C3BF8D7BFFBF8D7BFFC08D7BFFBF8D7BFFC08D7BFF8A65
        58C500000019000000100000000A0000000200000000000000007B5143C0A76E
        5BFFA06855FFC2917FFFF7F0ECFFF7EFECFFF7F0EBFFF6EFEBFFF6EFEAFFC291
        7FFF875746FF8B5948FF623F33C20000000A0000000000000000BB7E6BFFECD9
        CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFF8F1EDFFC495
        83FFE2CCBCFFE6D1C1FFB67764FF0000000E0000000000000000BE8571FFF1E5
        DAFFEBDACFFF794734FF794734FF784734FF784734FF784734FF784734FF7847
        34FFECDACEFFEBDBCFFFBA7C69FF0000000D0000000000000000C28B78FFF5EE
        E7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7
        DEFFF2E7DDFFF2E5DEFFBD836FFF0000000C0000000000000000C7937FFFFAF4
        F1FFCDBEB9FF72564AFF624338FF614036FF604035FF5F3F34FF5F3E33FF6E4F
        47FFCCBDB6FFF7F0ECFFC18A76FF0000000A0000000000000000CC9986FFFDFA
        FAFF806256FF745043FF744F43FF744E43FF734E42FF724D42FF724C41FF724C
        40FF7A5C50FFFCF8F6FFC5917CFF000000090000000000000000BB9080E9F5EB
        E6FF7D5C4DFF564BADFF3737D1FF3334CDFF3131CBFF2F2FC9FF2B2BC5FF2929
        C4FF2626C2FF2425BFFF2222BCFF2020BBFF1E1EB8FF14147CAD34292444A681
        72CC886857FF3C3DD3FFFAF6F6FF3636D0FF3233CCFF3030CAFFF8F2F1FFF7F2
        EFFF6B69D1FF2526C2FFF6EEEBFF2121BCFF1F1FBBFF1D1EB9FF000000010000
        00030000000C3E3ED4FFFBF7F6FF3738D2FF3536D0FF3232CCFFF8F4F2FF2D2E
        C7FFF7F2EFFF2728C2FFF6F0ECFF2223BDFF2121BCFF1E1EB9FF000000000000
        0000000000084040D7FFFBF8F7FFFBF7F6FF7574DCFF3435CDFFF9F5F2FF2F2F
        CAFFF8F3F0FF292AC4FFF6F1EEFFF6EFECFF2222BDFF2020BBFF000000000000
        0000000000064042D9FFFCF8F8FF3C3CD3FFFBF7F6FF3637D0FFFAF5F3FF3030
        CAFFF8F3F1FF2B2BC5FFF7F1EFFF2526C2FF2323BFFF2121BCFF000000000000
        0000000000044243D9FFFBFAF9FFFCF8F8FF7878DFFF3838D2FFFAF7F5FFFAF5
        F4FF706FD7FF2D2EC7FFF8F2F0FFF7F2EFFFF6F0EDFF2222BDFF000000000000
        0000000000012E2E94AE4242D8FF4040D7FF3D3ED4FF3A3AD3FF3737D0FF3435
        CDFF3132CBFF2F2FC9FF2B2CC7FF292AC4FF2727C2FF181982AD000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 3
      Visible = False
      OnClick = CxBtnImprimirClick
    end
    object CxDbTextActivos: TcxDBTextEdit
      Left = 80
      Top = -1
      DataBinding.DataField = 'numTimbrados'
      DataBinding.DataSource = dsFacturasEmitidas
      Enabled = False
      TabOrder = 4
      Width = 49
    end
    object CxDbTextCancelados: TcxDBTextEdit
      Left = 258
      Top = -1
      DataBinding.DataField = 'numCancelados'
      DataBinding.DataSource = dsFacturasEmitidas
      Enabled = False
      TabOrder = 5
      Width = 55
    end
  end
  object cxGBOpcionesBusqueda: TcxGroupBox
    Left = 0
    Top = 145
    Align = alClient
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 365
    Width = 1019
    object CxGridFacturasEmitidas: TcxGrid
      Left = 3
      Top = 22
      Width = 1013
      Height = 340
      Margins.Left = 0
      Margins.Top = 100
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 8
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      RootLevelOptions.TabsForEmptyDetails = False
      object CxDbGridTimbres: TcxGridDBTableView
        OnKeyDown = CxDbGridTimbresKeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsFacturasEmitidas
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnHiding = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        Styles.Background = cxstyl1
        Styles.Content = cxstylFontContent
        Styles.Header = cxstylFont
        object CxColumnListaRaya: TcxGridDBColumn
          Caption = 'N'#243'mina'
          DataBinding.FieldName = 'Titulo'
          Width = 271
        end
        object CxColumnUUID: TcxGridDBColumn
          Caption = 'Folio Fiscal'
          DataBinding.FieldName = 'UUID'
          Width = 244
        end
        object emisor: TcxGridDBColumn
          Caption = 'Empresa Emisora'
          DataBinding.FieldName = 'RfcEmpresa'
          Visible = False
          GroupIndex = 1
          Width = 105
        end
        object CxColumnEmpleado: TcxGridDBColumn
          Caption = 'Nombre del Trabajador'
          DataBinding.FieldName = 'NombreCompleto'
          Width = 238
        end
        object CxColumnrfc: TcxGridDBColumn
          Caption = 'R.F.C.'
          DataBinding.FieldName = 'Rfc'
          Width = 112
        end
        object CxColumnCurp: TcxGridDBColumn
          DataBinding.FieldName = 'Curp'
        end
        object CxColumnNSS: TcxGridDBColumn
          Caption = 'N'#250'm. Seguro Social'
          DataBinding.FieldName = 'NumeroSeguroSocial'
          Width = 136
        end
        object CxColumnPercepcion: TcxGridDBColumn
          Caption = 'Percepci'#243'n'
          DataBinding.FieldName = 'TotPer'
          Width = 73
        end
        object CxColumnDeduccion: TcxGridDBColumn
          Caption = 'Deducci'#243'n'
          DataBinding.FieldName = 'TotDed'
          Width = 73
        end
        object CxColumnGravable: TcxGridDBColumn
          Caption = 'Gravable'
          DataBinding.FieldName = 'Gravado'
          Width = 89
        end
        object CxColumnISR: TcxGridDBColumn
          Caption = 'ISR A.S.'
          DataBinding.FieldName = 'ISPTAS'
          Width = 110
        end
        object CxColumnSubsidio: TcxGridDBColumn
          DataBinding.FieldName = 'Subsidio'
          Width = 106
        end
        object CxColumnIMSS: TcxGridDBColumn
          DataBinding.FieldName = 'IMSS'
        end
        object CxColumnNeto: TcxGridDBColumn
          DataBinding.FieldName = 'Neto'
          Width = 73
        end
        object CxColumnInfonavit: TcxGridDBColumn
          Caption = 'INFONAVIT'
          DataBinding.FieldName = 'PrestamoInfonavit'
          Width = 80
        end
        object CxColumnSVI: TcxGridDBColumn
          Caption = 'Seg. Vida'
          DataBinding.FieldName = 'Svi'
        end
        object CxColumnPension: TcxGridDBColumn
          Caption = 'Pensi'#243'n Alimenticia'
          DataBinding.FieldName = 'PensionAlimenticia'
          Width = 114
        end
        object Fecha: TcxGridDBColumn
          Caption = 'Fecha Timbrado'
          DataBinding.FieldName = 'FechaTimbrado'
          Width = 133
        end
        object CxColumnAnio: TcxGridDBColumn
          Caption = 'A'#241'o'
          DataBinding.FieldName = 'AnioTimbre'
          Visible = False
          GroupIndex = 0
        end
        object CxColumnEstadoTimbre: TcxGridDBColumn
          Caption = 'Estado Timbre'
          DataBinding.FieldName = 'EstadoTimbre'
          Visible = False
          GroupIndex = 2
        end
        object CxColumnIdTimbre: TcxGridDBColumn
          DataBinding.FieldName = 'idTimbre'
          Visible = False
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        Caption = 'Facturas Emitidas'
        GridView = CxDbGridTimbres
        Options.DetailTabsPosition = dtpTop
      end
    end
    object dtpInicio: TcxDateEdit
      Left = 405
      Top = 259
      TabOrder = 0
      Visible = False
      Width = 292
    end
    object dtpTermino: TcxDateEdit
      Left = 405
      Top = 283
      TabOrder = 1
      Visible = False
      Width = 292
    end
    object btnReporte1: TcxButton
      Left = 638
      Top = 294
      Width = 67
      Height = 22
      Caption = '&Buscar'
      Default = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013LightGray'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000A000000160000001B000000170000000B0000000200000000000000010000
        00060000000B0000000F0000000C0000000600000001000000000000000F2616
        1072583424D8693D2AFF4D2C1FD91D110B750000001200000003000000082416
        1162513023CF613927FF45281BD01A0F0A630000000900000001291A136DA380
        70FFD4C5BDFFEDE5E1FFCFBEB7FF907163FF1F120C770000000F2C1C1663A181
        72FFD4C6BEFFEEE8E4FFCDC0B8FF866A5DFF190E096000000005734937DEE3D7
        D1FFCEAE9EFFAF7957FFD0B39EFFD7C9C3FF553324E00000001B77503FD8E2D7
        D2FFD0AD9BFFB37753FFD2B29AFFD6CBC5FF4A2B1ED90000000A8E5A47FBF8F6
        F4FFAE725BFFE7AF66FFB27F5EFFF0EBE8FF744835FF000000489A6B55FFF8F6
        F3FFB27056FFE8AF64FFB67E59FFEAE3DFFF613B29FA0000000B90604DF8F1E8
        E4FFD2B0A5FFAA6C53FFD4B6A7FFCDC0BAFF71422FFF4C2920FF80513DFFF1E8
        E3FFD3ADA1FFAE684FFFD4B2A1FFC5B6AFFF6A4231F700000009583C31A2CAAF
        A3FFF7F2EEFFFDFCFBFFEAE0DAFF9E847AFF774835FF663E36FF855944FFE8D9
        CFFFF7F0EDFFFCFAF9FFDFD4CEFF8A6657FF452D229A000000050805041D9F72
        5DF8E8DBD4FFE6D7CEFFCDB7AAFF8B6B5EFF7D4C3AFF865F56FF8B5F4BFFE9D8
        CEFFEADCD4FFCFB9ACFF997B6DFF966A54F70705041600000001000000076047
        3BA4D0B7ADFFEEE3DFFFD5C1B7FF93766CFF82533FFF734635FF926550FFECE0
        D9FFEBDED8FFC4B0A5FF9B7868FF5F45389D0000000400000000000000022219
        1541B89383FFF3EBE8FFD9C9C2FFA99389FFA67966FF00000026B48B76FFF0E7
        E3FFEADED9FFBDA79FFFA67D6CFF211915390000000100000000000000000000
        0007846554C6DDCCC4FFE6DCD8FFC2A99EFFA67E69F90000000CB38E79F8E0D1
        C9FFE9DFDAFFBCA497FF846555C2000000030000000000000000000000000000
        0002130F0D237D6152B7AF8673FA7B6050B9130E0C270000000414100E1E8365
        58B3B68F79F9806455B3130F0D1E000000010000000000000000000000000000
        0000000000010000000400000006000000050000000200000000000000000000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      Visible = False
      OnClick = btnReporte1Click
    end
    object cxlbl1: TcxLabel
      Left = 359
      Top = 261
      Caption = 'Inicio:'
      Transparent = True
      Visible = False
    end
    object cxlbl2: TcxLabel
      Left = 359
      Top = 284
      Caption = 'T'#233'rmino:'
      Transparent = True
      Visible = False
    end
    object rbTodas: TcxRadioButton
      Left = 405
      Top = 236
      Width = 113
      Height = 17
      Caption = 'Mostrar Todos'
      TabOrder = 3
      Visible = False
      OnClick = rbTodasClick
      Transparent = True
    end
    object rbPorFechas: TcxRadioButton
      Left = 505
      Top = 237
      Width = 152
      Height = 16
      Caption = 'Por rango de fechas'
      TabOrder = 4
      Visible = False
      OnClick = rbPorFechasClick
      Transparent = True
    end
    object cxGBResumenTimbre: TcxGroupBox
      Left = 597
      Top = 336
      Margins.Left = 30
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alCustom
      Caption = 'Timbres Cancelados'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 5
      Visible = False
      Height = 180
      Width = 473
      object gridFacturasCanceladas: TcxGrid
        AlignWithMargins = True
        Left = 6
        Top = 18
        Width = 461
        Height = 149
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Blue'
        RootLevelOptions.TabsForEmptyDetails = False
        object cxgrdbtblvwGrid1DBTableView11: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsFacturasCanceladas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object UUID2: TcxGridDBColumn
            DataBinding.FieldName = 'UUID'
            Width = 217
          end
          object emisor2: TcxGridDBColumn
            Caption = 'EMISOR'
            DataBinding.FieldName = 'RfcEmpresa'
            Width = 96
          end
          object Fecha2: TcxGridDBColumn
            Caption = 'FECHA'
            DataBinding.FieldName = 'FechaTimbrado'
            Width = 85
          end
        end
        object cxgrdlvlGrid1Level11: TcxGridLevel
          Caption = 'Facturas Canceladas'
          GridView = cxgrdbtblvwGrid1DBTableView11
          Options.DetailTabsPosition = dtpTop
        end
      end
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1019
    Height = 126
    BarManager = DxManager1
    ColorSchemeName = 'Office2010Blue'
    Contexts = <>
    TabOrder = 6
    TabStop = False
    object dxTabTimbres: TdxRibbonTab
      Active = True
      Caption = 'Opciones de Listado General de Timbres'
      Groups = <
        item
          ToolbarName = 'dxbrOpciones'
        end
        item
          ToolbarName = 'dxbrExportar'
        end>
      Index = 0
    end
  end
  object cdFacturasEmitidas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 280
  end
  object cdFacturasCanceladas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 848
    Top = 320
  end
  object dsFacturasEmitidas: TDataSource
    DataSet = cdFacturasEmitidas
    Left = 792
    Top = 280
  end
  object dsFacturasCanceladas: TDataSource
    DataSet = cdFacturasCanceladas
    Left = 680
    Top = 312
  end
  object FrxCdEmitidos: TfrxDBDataset
    UserName = 'FrxCdEmitidos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RfcEmpresa=RfcEmpresa'
      'UUID=UUID'
      'FechaTimbrado=FechaTimbrado'
      'NombreCompleto=NombreCompleto'
      'numeroSeguroSocial=NumeroSeguroSocial'
      'RFC=RFC'
      'totPer=totPer'
      'totDed=totDed'
      'Neto=Neto'
      'AnioTimbre=AnioTimbre'
      'EstadoTimbre=EstadoTimbre'
      'Titulo=titulo')
    DataSource = dsFacturasEmitidas
    BCDToCurrency = False
    Left = 32
    Top = 344
  end
  object FrxCdCancelados: TfrxDBDataset
    UserName = 'FrxCdCancelados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RfcEmpresa=RfcEmpresa'
      'UUID=UUID'
      'FechaTimbrado=FechaTimbrado')
    DataSource = dsFacturasCanceladas
    BCDToCurrency = False
    Left = 224
    Top = 360
  end
  object FrxReportTimbres: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41954.714863229200000000
    ReportOptions.LastChange = 42069.808319293980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 256
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = FrxCdEmitidos
        DataSetName = 'FrxCdEmitidos'
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
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 389.291590000000000000
        Width = 740.787880000000000000
        DataSet = FrxCdEmitidos
        DataSetName = 'FrxCdEmitidos'
        RowCount = 0
        object FrxCdEmitidosFechaTimbrado: TfrxMemoView
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'FechaTimbrado'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."FechaTimbrado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdEmitidosUUID: TfrxMemoView
          Left = 68.031540000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'UUID'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."UUID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdEmitidosNombreCompleto: TfrxMemoView
          Left = 245.669450000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'NombreCompleto'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."NombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdEmitidosRFC: TfrxMemoView
          Left = 411.968770000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'RFC'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."RFC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdEmitidosNumeroSeguroSocial: TfrxMemoView
          Left = 498.897960000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'NumeroSeguroSocial'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."NumeroSeguroSocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdEmitidostotPer: TfrxMemoView
          Left = 570.709030000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'totPer'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."totPer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdEmitidostotDed: TfrxMemoView
          Left = 627.401980000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'totDed'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."totDed"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdEmitidosNeto: TfrxMemoView
          Left = 684.094930000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'Neto'
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FrxCdEmitidos."Neto"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 468.661720000000000000
        Width = 740.787880000000000000
        object Memo1: TfrxMemoView
          Left = 665.197280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 47.354360000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo2: TfrxMemoView
          Width = 744.567410000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = cl3DLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CFDI')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 22.677180000000000000
          Width = 740.787880000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE TIMBRES DE N'#211'MINA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 64.252010000000000000
        Top = 90.708720000000000000
        Width = 740.787880000000000000
        object FrxCdDatosEmpresavalor1: TfrxMemoView
          Left = 228.551330000000000000
          Width = 487.559370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor2: TfrxMemoView
          Left = 228.267780000000000000
          Top = 18.897650000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
        end
        object FrxCdDatosEmpresavalor3: TfrxMemoView
          Left = 228.267780000000000000
          Top = 37.795300000000110000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
        end
        object FrxCdDatosEmpresavalor4: TfrxMemoView
          Left = 505.748300000000000000
          Top = 18.677180000000010000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
        end
        object FrxCdDatosEmpresavalor5: TfrxMemoView
          Left = 505.173470000000000000
          Top = 38.354360000000010000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
        end
        object Memo18: TfrxMemoView
          Left = 134.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 133.779530000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 133.779530000000000000
          Top = 37.795300000000110000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 451.260050000000000000
          Top = 18.677180000000010000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 451.260050000000000000
          Top = 38.574829999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 3.779530000000000000
          Width = 733.228820000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 3.779530000000000000
          Top = 60.472479999999990000
          Width = 733.228820000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 60.472480000000000000
          ShowHint = False
          Center = True
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Picture.Data = {
            0A544A504547496D616765DE8D0000FFD8FFE000104A46494600010101006400
            640000FFDB004300010101010101010101010101010202030202020202040303
            0203050405050504040405060706050507060404060906070808080808050609
            0A09080A07080808FFDB00430101010102020204020204080504050808080808
            0808080808080808080808080808080808080808080808080808080808080808
            08080808080808080808080808FFC0001108016A01B803011100021101031101
            FFC4001F000100000603010100000000000000000000010708090A0B02030604
            05FFC40066100001020502030405030C0C090709090001020300040506110708
            122131091341510A14226171328191151819234252589396A1D1D31633385354
            627692B1B5D2F017243943557277C1E1252627347374B42835363748638294F1
            45576783A2A3A5B2B3FFC4001C01010001050101000000000000000000000006
            01020304050708FFC40037110002010401030303030206020105000000010203
            04051121061231134151142261073233152316425271A1F081B1342491C1D1F1
            FFDA000C03010002110311003F00CFE200400801002004008010020040080100
            2004008010020040080100200400801002004008010020040080100200400801
            0020040080100200400801002004008010020040080100200400801002004008
            0100200400801002004008010020040080100712A031028DE8EB5BEDB78E3525
            39E4327A98C72A89157E367154D32804A9694A47527C3E318DD75BD158ADF83A
            DE9F9497407266619966CF42E28201FA711B318B7E0C73A8A3E59E551A93A7AE
            4FFD4A45F5662EA99E1F5615560BB9F2E0E2CE7E68C8E84D73A623522FC33D5B
            33D2D3080E4BBCD4C367EE9B5718FA44627C792F2226D8202BBD4004E064E327
            CBE318FD58EF455AD1DA9790A25214323C232EB8D96EFD8ED8A1510020040027
            1D6051B3AD4EA529E227022927AF222F67599964672B48C1E1EBE3E5F18B5D44
            BC84F6F488FAC3612A595242075513803E78BA0FBBC093496D9E62AF7F58F6FA
            9B4D7AF2B4E88A5FC8139526592AF871A86632C68CDF84CB5548FC9FAD217051
            2AAD34FD2AAF4AA9B2B1942E5E650E85FC0A49CC5AE2D7945E8FD1F586F24646
            475118A5512E595D321EB4CF17077890AF23D7FBF3F9A2B1926B68B5BD1F4039
            8B8A880100200400801002004008010020040080100200400801002004008010
            02004008010020040080100200400801007CB30E06F84AB213C5827CBFE1EF81
            6C9B5E0A45DCC6F2347F6CB4A987AE99EA85C777FABA9F96B7690DA5D9E7D3E0
            B70A8A512EDFFEF1D5247C63A98EC2D5B86946244F3BD5F63609CA73FBD7B18A
            16F67B71B79F72BF53A2690D4AD8DB6DB4B250DFD496533F57E0E6789538FA78
            10A208FDADBC72E47C63D5F0BFA774DA52ACB6CF29BBFD50B8BB96E87DB1FC18
            C8EBFEE075DF592A0FCFEA9EBAEB3EA33EA515E6B574CECCA012493C2C970369
            1CFA2520089E50E89B582FDA65A3D41755396CB7F5C3464778B7DB0E22678B8C
            3A971495F179F1E78BF3C69DD74D505C244BF177370F5B67E9E9F6EB776FB75A
            C26B7A1DB97DC0697CDB6B0B028B76CF32CA8839FB6325C2D3839745248F3CC4
            4327D3545C5A8AE49AD09D45A6CBF1ECB3D2E6DFDE84546916E6EC6DDB4F7796
            020A5A999D5B2DD16E46904F32DCD309EE1E50F04B8D73F38F38C8F4DCE9F3AE
            0EAD2ACA46767D9CBDADBB27ED32B31DB836DDAA2CBF7BCA4B07EBB64D6D2991
            B8285CF054EC99510E323A77EC29C6B97CA049488D3A4E0F4CD971E365D01998
            4BC38921407BC40B0EF80100200E0E1C249F18147BF625D5FF00A9162699DAB3
            D775FF0071D3AD8B71800393134BC05289C04213CD4B593C82120A89E82362DE
            DE551EA0B672B2194B7B7877DCCBB4C73F7BBDB81A836726AD40DB1E9DD32832
            AD71369B9AEE6CB8EBB8E40B14D491C1E60BCAE23CB2811E8981E84755A75FC1
            E4D96FD578CA6EDACD6FF26273BA7DFF006F575DA6AA7FE133759AD15C917C29
            0BA7C9569DA548F0E7E4896932D2387F8A78BE31EA161D076B15C44E153EABBB
            AD2FB99684BDA59FAC3EFCC54E727AA93249CAE69E71F51F7F138A51CFCF1B15
            BA56DE1C2892DC75F5C4D6F64AE92BC75374DE7D356D35D48D47B02A6C90A666
            68B5E9C905A140F2E6CB89C11E07C3C8C46AF7A6E87BA26B8EA95DF965CCB6C3
            E919F6B2ED1EAB4E9446E22A5AFF0062B0A4F7B6F6A3B02B0DBADF102A099E3C
            336DA8E300870E33D3C23CEF2DD2DA6DD35C1D9A572D3ED979333AECC5F4A3F6
            59BD2A95BFA4DB85964ECDF5F6716D4B4A315C9F0F5B95E7D6404A652AA42434
            E28E425A9908C9C04B8B3C8426BD94A93D68E9D349AD9948373ACB8B4A1B2A74
            956094FB4127008CE3A020E479FCE3388B4FB87300C008010020040080100200
            4008010020040080100200400801002004008010020040080100200400801002
            001E409816C9E8E95BA118241C41209BD32466A3DE95A986A768168CCB348986
            525552ADBC94AD8A4240C94A02B92E63182127927209CF48DBB7A3B9A8F9D915
            CF663D3A4D425A6628DDA1FB96B2ADDA9566C5D3D99F5D4F78A7A7AA732E1766
            6A4F9EAB7DD3952D5D7A9C0E40003007D17D0FD35F62A923E4BEA071AF76E527
            B6CC67753AEE9CB8A7E7671F9871F70920151FE8F747B1DBE2E2E29A476AC2D3
            B124521DC8D2DE7965695286236658E4D6912FB2938F8255D5297C607DA92623
            F7B8ED6F83D131D7EA292257D66D62E25DE16F871E079C44AE6C17C12AA370DE
            9EC92770DA09254A6D8095732479C466FF001F169A6762856F73E0D2DD49D5CD
            BEEA65A5AB7A2B7D5D9A65AA1439B4CF526B5479A54BCD49BC924E52B1CB8543
            21483942C725020E0F9A66BA69F3289B14EE36F4CD9E5D805DBEF6A76955A69D
            BEEE09DA1D93BDDA1D344D3AC30A4B3257FC83691C53F208270DCC20737E541F
            6402E23D9E30DC0AE6DE549E99B1BF83274969813082B0929F688E71836BD8A2
            6FDCFA605C7052C27AF2E70289ECF1376DE4C5B5249EEE4A66AB567CF752524C
            E3BC9A7304F2CF2090064ABA0039F94519A57B78A945B7E4B2376846B4D074B6
            94E576FAAE4A5CFAA2E34A6A52512BE393B7D0A1C9B974730178F94E9CAD4796
            40C08F52E87C1CABCF725A3E63FD46BF95C4F5525B30E3DC4EB0D4AF8AC4EBEE
            4E77A16A528F2E6AE79C98FA5B1F868C29F610EC3DAF6C7B916EFBC5D54D294B
            5F12D654A3D3A031D9A76114898E3E1CED924EAD4C5BA14A00723D0F58D1BCC7
            A7E0F46C4DCA8AD3259562DFEF90E254DAB3F0E9112BEC77E099D9DC29787A24
            FDC5688712B4AD90A563E5622337762BDD1D8B749B24BD5ADB9A965B9EC02857
            CA2A19240F0C9F875F18F3ECB74FAA9B68DF557B3832D6EC0CF48EEF8DA1DC76
            7ED2B7E57756AF4DA94DBCD485BD78D41E5CCD434E56AC0425F71595CC52B8B8
            4281CAE587B492500A23CD6FB173A3E4CF09A66CAAA25C34FB824E42A9479A95
            A951E6E5D13527372EF25D666D85A4290EB6B4E52B4292A494A9248208398E4A
            973A65E7EFC5C040080100200400801002004008010020040080100200400801
            00200400801002004008010020040080383870951C81146CA76EF829EF5DB581
            AD32A0D32564DD9545E15A9A14DA421C190D2F84ADD995A7C5A65B056AF32129
            FBA11B367633AF2D2233D43D4746C693EFE19627DF26FA69FA7F64CE58564559
            65BE0282F38FF13B32B392A79C575538A512B51F3581D0003D9FA43A02A3A8AA
            545C1F2DF5475ACEEAA76D37C189DEA95FF52BBAA952A94FD41534EBCF29E5AC
            9C92A263E96C261A34696923838FB59C9A9C8A56AEA66269C2965851209E78E4
            7E31DEA56AB5C130A75D2D23C33B654CCC713EEA1C59EBD39466FA65F074285E
            A4B478DA9D9CEB5DE61A194F8111A771651674AD734FBBC92D2A5454E16548F0
            C9F7C706EF16B4F82656199F04AEAC5012E2D40B0387048C442AF716B4C9C5A6
            494912C2AF69A1C04997094E398C75FEE71F4445AEB129A6A48D8AB78BCA3E0D
            3BBB752B40754EC3D69D1EBAAB3636A85B35562B542AC49ACA5E909B6D5C4950
            C7CA49F905B3ECAD2B58208263CCFA9302926E2B916B978F7699B7B7B237B442
            CFED2CD9669C6E1E88D5368F7F252AA25F34396741142B8A5D09130CA1239865
            CCA5F68F8B6E27CA3CBAB5074E5DAD1248CD496D174042CA93C5C8F28C654FC1
            AF5729F40A654AB5559A9791A5C9B4B98997DC278596900A94A563C0004FCD17
            538393D2352F2EE1420EA4FC1691D68DE5D2ECEB72ADA933B34994AD551A5FD4
            B9670E154EA71F6994007E4ADD1F6E59EA4F08E412044E703D1956E2717AE0F9
            E3ADBF5123372A749988FEEFB73571EB25EF53A9CF54CBAC778B4B690AC84273
            F9C9F331F4D74C74B46DF5C1E3D4E75AEA7DD22D9972CDBCF3AF94F1BCA3ECE7
            11E9D4ED5244C6CE2A115064AB9AB6E7AA2B50712B09EB8039C64FA7474E95D2
            89E56A1652DA2416548E7F2B07262D76B17E4DC8E6352E097156A13AD2968752
            73CFC2395718D8B5C224F8FCC4992B6B7440A4A8800ABA7488664316BBD93AC7
            65D34B64B0AA5B097470A9A4A87E78885DE296FC1DFF00AE52258D6ACE290F61
            2BC9512AC7DD1C6093E791CBE6884E6F030941B4B935D64D537A6CCF03D13AED
            5BABDD54BA876636BF5CAB9EB8E854F7AB3A4D519F7CA9E9BA5B438A6A8A5679
            ACCBA4FAC33CBF69EFD1D1A488F19C963DD19EC91DB5DC6AC768CE358754B195
            0C1C038C118F98C734D83EA80100200400801002004008010020040080100200
            4008010020040080100200400801002004008010074BFCDB5F5E63C22C9A7AE0
            AC65A7B316AED06DEF347721AB52547A836E53ACF96FD885392973989A3C0ECE
            BC9F2FB6703591D7BA4F947BAFE9EF4C42A535566B6CF913F55F355AB641D183
            FB5706377AC7AB955BE2A7373550995CC3AB714E951567849F77867033E788FA
            531B66A3051488259633B5F74914B93CF2A75F2CA0296B27979189453A4E31D1
            2B8CBB63A3DE5BDA7D33546D4E14A1D5601F67A03E517D08B4DFC1A53BE845FD
            C4CC6343275EA7BF349917D484A725494F24C693CA4155EC6F83421917EA7EEE
            091D7569C3B4FF0059514029C72C8E71BAAA539BFB59D9A1774DBE194B7755B2
            E4BAD614848C721811A75E8A68935ADD54E24893F52A1292A5E5040CF324447A
            F6C12F0893DAE6671F73C9CEDB9C43010549C794452F31FF0083ADFD726D72CF
            0D5AB414EB4A516F960A4F288366F1FB8F82DA1924E5B6CC86FD158DE0D436DB
            DA0F5DDAEDCD57718D31D65A5392728CBAE90CCADCB22DADE947100F24A9E63D
            6A58E31C4A2C039E118F09EA7B074E7DC91E8982C92A8BB366CAD616A2D34490
            7293D3CBC22251DB8ED92593D4922D31DAC9B8892D25D2FB174C5AA8312754BC
            EACA44EA8AB05BA4CA84BAFF002F1E359976B1E3DE2BCA261D0D865775FF00BA
            B83C93F58F3556DF1FD941EA4FFF004626BBA4DD256F51AAD3E8F5B7D34F2AE0
            69A0A3C3803033F01D23EB1E9DC353A11518AE0F97E3632AB563527E1F92DAB5
            DACBB34A754415952B9F3EB1E8D6B69A5BD12EB2A2A9A3AE816BCDD6E653EC0E
            02A1D3C636B525FB4BAB5D461CB273D2745A6E79684092716E1501C2919C88C7
            777AA925DCCE4DCE4D37A833C85E1A46FD35C750B94759E1510A4A92411191DC
            D39EBB59B542F61149396D94B5795A0B614EF106D0013D478463AB49EB649EC2
            EE4D7DACA7EAB507838F082BE7E03918E15DDA7772D127B6C94A3EE78898A028
            97094B781EE88ADDD83D9DDA59996BC9E52AB6B29D43A4B6399F288CDFE3976B
            E056CC393FB8F874A3532FCDACEB9E92EE3F4D669F90BDEC8AFCA5C74F520901
            C2C3A1C5B4AC7DCB8D871A3FC55911E33D538CFB1B4891E172BF7A499B98F40B
            576D7D7DD1AD2BD70B2269139685DF6E53EE4A6A92AC84CBCCB087529F8A78CA
            7E631E4DA6A4D33D294B70EE27224920E7AE62D8BE4459CA3217080100200400
            801002004008010020040080100200400801002004008010020040080100200E
            2AE900794BE6E26AD1B2EECBADF534966974C9AA8ACB8709019654E7B47C07B1
            19ADE9F7D48C7E59AB7751C694A49EB499AC66EFD69AADED3370DD13CF154FD6
            EA53758985127DA75F754E2863C384B8467C711F66745D8429DBAE0F8EB3D45D
            6C877489153F58336AE15B8387A2B9F58F4EB3692366AD34A5A47B5B22872F50
            A84BB6B6CBCDAC8F939C93F3474EA56D47473EF6AB8C782EFF00B78DBEA2E293
            64CCD2D6864A46391CABA7BA2139BEA3FA66E28F3DCD6514576FBB2EE96A6CDD
            9734F6B1312D6AA132C9691C454DF3239E7C23C32F3AE26EE7B77EE766DBA36F
            2EAD3D7A5B2CABB9CD1192B5AAB5166568EB91505ABD93900F2F2F8C7B1F4BE5
            DD6516CC38F5568BF4AA798F92D13A9B68A64E61F2961692143181D227B5BC6C
            9F63EF76B44879CB794F1E171A2A07C711CBB8AA9F075DCDFB1F966D24B8A4A5
            4C8573C60888FDF35DBB292B97A3F2AAB61BAA95717DC00827972EB10FCAC535
            A65F6D752EEE0F11A53775576F3B97DBDEB8D0A6A629F53B4AF7A2D75B7DA570
            A9A4353AD77983E196CAC7C331E35D5D64A50723D23A62F9AAC93372051A7A4E
            A94D91AA48ACAE4E65A4CCB248EA87005A4E3E0A11E3CB8E0F626B6D330B0EDE
            DD789B9DDF8376032F2912B685954F964A38F20BD385C995AB1E07816C8F801E
            51EF9FA4D651EC5535CBDFFECF9F3F559BAB74A83F1E4C7DEB573BB36FB9C6EF
            3EA493CD5E44C7D2F654D2F079CDAD08AB6F51F94F47E6D2D22A0FF1E03ABEBC
            BA24C4829D4515A32D4494768B87EDD74A1171CC4906A9EF28909E35AD19EA23
            8994C9AA30EE21F95C82A7B6CBE0E826D0A4EA0EC9996B6CBF34AE03DE2D3909
            E5E588F0CEB1EB9709E91C6E9BC5D7C94A5E914FBBC5DB1CB5AD353EA7ADD5CB
            3C951CB8DA3841F9BC23AFD1FD532AF1E4BA784BAC7D5942BEF96585B566C632
            EA7D4995560150CE324C7B852B8EEA49B27388BDEDD6CA329EA03856E27BA52B
            19E44468D5ACB449635B7CECF3CE5AFC7901BE67DD1C8AD04CBD5768F95DB1FB
            F482964241EBCBAC456E5A712B2B896F6496BEECA54BCBBEE068028F6BA73EBD
            07BE3CC73F6CA706890E32EA5169ECD8D5E8C46AECDEA8764968FDBF529A54DD
            4AC4AFD7AC65A8E7D8665E6D4FCBA467C03136C003C0623E7BBFA4A159A47BDE
            366E741332114F8FC6347DCDE89CA2F2F1002004008010020040080100200400
            80100200400801002004008010020040080100200401038C738029377DB3B51A
            76CB375F3F48E3FAA4CE9DDC0E338EBC4245DC475707AFACA5BFF5239997FF00
            E2D4D7C33565D32E90BA553B0EAD5FE2CD70E4E79700C7F4FD388FB53A7A8A74
            568F982EE8BF5F6CFB252B45C996CA97904FD313DB2A4A3145B5A2B655369656
            65656A322EA969686304F58DBBD4A50D223398B76D3D17F4DA9EA4529997A74A
            9A9B79050399E9CA3C8FA8ED2AB4E315B3CE6BD8C5D54E5EC5F8AD3D61B568FA
            5953454EBD2ED65947DDF4E63AC7CEF7380B9774F83E84C475150A38E54B7C98
            E4EF3352ADCB92B738297534CDE1D209C72EBE71F49F43E2674A9A723CA6FAF1
            54A8DC5166DD44F55A84CB8843FDF380F51D23D1A9D7E5C59D8C6BFB7924DBF4
            82A243782A8D3BA68E8AADAF73F46996899A520F760AB3E7CB31C1B8D32D95DC
            579264B5A493935489C9A7A597C0073C027110CC9D58F83950CBA550A01DC759
            FF0051A9D515B4828984A38919183C40F2FF00F570C796F562FECC99E85D2D7B
            EADD459B76344D730BD1AD2A7268E66956D5294E1FE3FA9B59FCF98F05FF0033
            3E9AA7FB57FB1AF5FB70AE59F63B543752CCEADDC34E5190CFFD97D4A96C623E
            A5FD2D8295B412F3A47CFF00D7D6B295D4A5F965A7175F2E9510E281F70CC7BC
            5950D4B92170B77E9F69352CAA932F9692A590A38E7889136BB7469D7A7A8699
            784DABDF74EA74CC8054F86D654060F2C0C44073F427A6D2D9E599BB394E5CF8
            3245DAE6A8D0A4DB919B7EAEC34D8E0C951C72E5D23E6DEB6C3DC54ABB513D27
            F4C32342CA2D4FE0A44DFDEB3D995476AACCAD7DA987D4A58084E49EA625DFA7
            781AF1E66B5C987AB3354EBD76E3C98D8EA854A527CCD8136A3C4A51C1F8C7D0
            F1DD34A2CE163B6DECA4D99A525D52F851C43279F9C56BCE2D6C943A9AE367C9
            2D6D2DD59494019F0F7470ABC90772972C98F6FE97CD5496942258A9B2700004
            93F3445723C79397759351912975834CC53A9F3BDECB70A0120923188F3FC924
            E2F47671F95F5351465F3E89522765B621B8391743BF53DBD61A8A99CF4E3553
            29DDE63E7023E7ACCAFEFB3EA0E976DDAC4CA9638ABC92411900801002004008
            01002004008010020040080100200400801002004008010020040080100200E2
            AE9004BCD5AB4517F696EA3D8AE4BA269BAD506A149534A20073BF965B613CFC
            CAC46C5A5574EAC66BD9A35AEA9F752945FBECD3DB386A767D5AB5675582A56A
            D469E98A44DB6A072DBD2EEAD8527DC32D9FA131F6AF46DE29DB2927B4784657
            15D95B7A3D351AB45D5214E2C28E7960C7A1D9DC292D1C6BCB269F722A36CCB8
            D32EA64E540F2F18E8AFBBCF82377D6FB2B834C758E7688B64B13CE49AC743C5
            CBC3F3C6AD7B6A727A688657C3774BB9F0555BFBACA88A04D531EAFCECD05A3D
            B05D3ED1F2C47069E0A8FADDEE26B2B0A9DCE3BE0A39BD752E66BD30F2DC7806
            D592139E673E7EF8EFDA50853EEED5A46FD1B08A7C92566A60CDBAA25B510478
            458A096DB3AD0D41691F753E92A9A71A4218012A20107A9F8472AE27BE51A55A
            AEF85E4ABCD20D1699B9A7A4E5934F5A5B71582020951F0FF7C4632574A9C5C8
            8E64721DAFB37C976D776686D9D149DB99DA2225C2C9C3CF24E470A478789EB1
            E3990EA5A33AAE119ED99ED7057D25EACA0FB4C6E75F74D9ED43D78D2BD1CA2C
            BBB3351B9EF0A5505A4B4D71B8AEFE71B428F08EBEC951C7BA383D45709DB3D9
            E9FD05052B84A1F26D3BB7E972B42A253289240A6524A5DB9368631EC3690DA7
            F3204789BE5BD1F564538C56CD76BE92F58D53D38ED3EABDD8E85A2957A59344
            AECB1C602D72E85C83A0799064D0A3FEB88FA2FF0048AF969526F95BFF00C727
            94F59D9B9CFBA28B0D53EE25A9D4A54F0515735738FA3A95DAF5349902FA3938
            F089E168D71A6968F68F3C78E331DE854DF83877D47E0AC0D3CD467690FCBB89
            5A5A5A700702BC3DF16D6A5092E7C90FBDC67A9C15D768EE8EA946665D3FB239
            B4840E484B84253EF88FE4F0946AB4FB76712BE26AD3FE324FEA66BB4FDD3393
            4B132A738C9E2716B393F08DCB6C653A4E2E2BC19ADF152D6E5CB2972AB5733E
            B70021649E7939CC6ED78A734CEC52A0A07E4CBC8A9D73084214BEB8C728E7DD
            CD26E28BEB55F927469FE9ECCD69E63BB955BCA51C05673CFCA23D75552FF738
            D7975E9C77265E376B7B337EEB41A9BB467A70A192F296A41094809E7E1E71E5
            DD4D9FA5465D9297271ADED6E6E5EE9C5B45B67B412C297B19DACD3D6C4A256D
            A560F00E14A09F01E66235F5CAAD37244C30D693A7522A6B4CC9ABD197D319AD
            3FECBCB56E79E4B8DBD7CDE970DDED052704B0A984C9B4A1E60A2450A07C4284
            787E6249DC3D1F5DF4C41AB48B32100A04E239115C9222319008010020040080
            1002004008010020040080100200400801002004008010020040080100200401
            D2F81DDAB9F0E0641F28365AD6D68D5ABDBDBB6099DA0769A6B549C8534D3B4E
            6FE29D43B7086F81B289A514CD328E78C353497918EA328E43223E82FD37EA64
            E82A327F822596C477C9B45A9A8B55C29B571711070467A47BE63AFE3BED5E48
            8E5314E305A2735BD722DA2DA54E848F8F589950AE9C7679D5FD8C93F04DEA35
            E6A970025E51F7039E71777459C5AD68DF2CF50DDF932B494A1C0851E4788C1F
            6EB8669BB33F669D5A54DF0F1B8A5B87A7946BCE4629DB6BC1EB29E7BD0DA8AC
            804F2CC6ACEA1CFAB268A84D34B6155BAED3E51254A49293903A44732D7CA9C5
            B47072776E8C3BCC8A3679A07499299A44E4C3067A6D6A428F10F91D3A08F09E
            ACEAA92A6E28E574B597D7DEC5CBC6CAD6ED1BD44A4E9768AD36D854CB1245B9
            12B789504A50A50E79F9808F2DC251955AFEA48F7BFD45B98D8DA428DBF97A31
            DEEC6BD059DDDC76AC52B54A7245C9ED3DD1F9476EC9E780FB5FD5677898A730
            55D039DE77CF81E2996579474FABEFD2A5D88EC7E986065171AF25CF933EA974
            A128096FE424148F808F33A52DC4F7E92F6312BF4B176B1377E6D9347777F6B5
            30CD55B4DAB6ED1AE25B68F6BEA1D454848756473E0666D9963EE0EB8790CC4F
            FF004FF34AD6EBB5FF0098E2E56C1548181BD26B297F81CE2CB879AB9F4F327E
            9FA63EA4C66593D4B7E486D7C376A91382875DEE54D1E2C0F8C7A358DDC5A3CE
            7278F9A5E09D147BC0A005F7A3871CB9F331D0734D91BA966FC1EF65EFD7B812
            10E94AB1D4C57B51A93B267E8B173BD36A1DE2C383382949F18C3525AF06156A
            D23D5C8BDDF39C4B57B3CA34E758D3AD1D1332DD91EF9681C5959211D33D6397
            7952318B91C7B99F0DAF62F05B43D1094AD269F509F0FCC20290AEEC2791CFBE
            3C93A8BA89D2DE9901BABD95C55F491926D974DA4691680DCB5DEE65E4166544
            B33918C85039EB1F3ADFE42ADEDD6D9F4DF4C6168DB60DD79FEFD1854F6825D1
            71EBB6B051B49B4E42EAD7E5D35E96B7A90CB238CAA7265C0DB7EC8FBDE2E33E
            00089A4EB2A16BA209D1946ADEDD39CBC236106D77436DCDB3EDF3463406D461
            2CD02CFB664280C14FF9D2C3494AD7EF2A5F78ACFF001E3C8AE2B7A959B3EBCB
            1A3E9508C1FB13FD3D7AC635E59B51F07645C5C2004008010020040080100200
            400801002004008010020040080100200400801002004008010075BA8E34293C
            8E463A45182C01E90A7662D5FB41F66AEDC3A4D444557741A6AECC5C966B2D04
            A5DAECB291FE3B48E23D4BEDB695360FF9E69BFBE31DBE9BCB7D2DC29BFDA63A
            94FB8D6116E5CCA61D7642704C4A4EB0B530E31308525D97521452A6DC4ABDA4
            2828281428646088FA4B0B9B5525EA45F0CE35E59AEDDBE49CD4BB812B4A57DE
            27DD88F4DC7E5538F920B94C46E4F47B492B85E6DC050EF33E063B3432119782
            25798B699ED28F5D5BCE1EFDC1CCE3946E3ABC6F6706B5B28F9270D0AA04A501
            2A39118E55CE45CC3E09CF6EBE9987D84A87B2083CCF2EB1A156E925A2397D4D
            B4D22E13B6894934DCF2B3934DA56DB7C20797D3107CD29D48B49909CEAEFA3E
            99909E916E0EC4D30A722B954328B12AD17085E025381CB3F3811E2B99E9DA93
            7B6CDEE8ACDD3B1DA9C76CB08F693EFDAEEDC25F0AB7AD761EB82AF3F3A8A752
            A994D495BB3936E90DB4C3491CD4B528A5231E2AF2C916C6C616341C9BDB3D02
            CEB55CB5CC54D3D232CAEC7BD802B60DB4BA3DA173B74F7B5D6E999FD93DFD38
            D00AC54DC4243724858EAD4AB60343CD61C57DD9CF92E5AF1DC4DBD9F53F4F62
            D5AD1517E4BB221B506F84E01E71CFA71D2D1DC979D92A35B346AC7D7CD27D46
            D16D4DA2CB5C5A7B74D1E6E875A927120FAC4A3ED96D612483C2A190A4ABC149
            49F0842ACA9CD4A3EC565C9A8477E5B43D56ECDEDDC6A36D7355D134E1A74D19
            FB6AB2E37C0C5D3437564CACFB24F22A5232DBA9192975B5A4E08C47D13D2DD4
            70AF422979473AB59ED7924FD1EE343AD2521D4A89F18F5CC5E5DB21D94C6772
            E0F77255E280015721CF3989451CAA21377889247AFA6DC9305D197470903FA6
            3A14EFFBBC1C1B8B3ECF24DCA2548294925657C43C31C8C5F56B1C7AF1489BD4
            29B5AF8107253CA342B5C24706E973C153FA6928DCC5429ADA825C415A41F131
            C0C8D76E2F444EF25D8A5BF73208DB45E76B5A746A42A6CA6550C94E46002A22
            3C773F89A959BE486E1EB46DAEBD59ADADECFC9ED10ED2594A6E9C8D30B42A14
            E94954367BD085E579524839F2EB114C5F4D468FF72A33D76BF5554BE5F4F6D1
            6A2C95BE8F8EC72BDAF3AD75BED1ED62A34C4BD93407A6E95A672F36D922A955
            565B9AAAA02BE5352E9EF18695F254F38F2873681311EA8CAC5CFD181EE7FA77
            D2FF004F4D557E74667ED30A6C14FB291D00193CBE7F1883538352DB3D62A2DA
            D23E909C622F4B92A8E517151002004008010020040080100200400801002004
            00801002004008010020040080100200400801007C93694ADA505721C8F5C78F
            2E7F1C46BB6D3E01836FA42BE8F9DD57DDCB7AF6816C0ACE72A57C4D71D4F527
            4E298D00BADBA904B956A4B491ED4D90097E580CBA497119595A5539E9AEA374
            65D955F05938ED68C1CE877A3E879C919C4BD2B36CBAA69E69C494AD95A4E141
            608052A079149F681EA047B5E23374EA4538CB8395736919724DDA55CA1EEECF
            7AA03C958CFD1E1F03CE25B6195ED6706EF1D1D7826751EAC42DB52569C71671
            989553C97723CCF3361A7C13BEDEAE1529210B0951E5F08BEA5F70462BD06913
            CAD6AEB2D70ABBD0E10318F08E5DC5EF0702EA82F054B5A7ABACDB32C875137D
            DB807301580623D777DA5F711AB8C3BA8F4792D44DD3DC955659B5A913156AC5
            4A79E4CB4A48CB25C7A6275E59E1432CB08CA9D71448484272A248C03112C965
            A8D383948E8E2FA2A756A28C5194FF00627F63157F46AB947DEB6F3E80C8D7B5
            B3DED99674D00E8B1597138F5A9AC1283525214521233EAE0AB9970929F0FEA2
            CECAB4DC62F83E9AE8EE92A56B494E4BEE328D61A0DA700E7CCE3AF288CC57B9
            E80B4B847D04641117171D653F2B3CF2630554DAE0166CED8BEC90D29ED5CDBF
            3366D5E624EC5D7FB6BBE9CD3FBD52C15AE8F34B48E3959BC7B4E48BE5094BAD
            839494A1C4FB4819EC627313B59EE2F48346ACDDC56836E0B63FADF756DCF743
            605634CB52E92E1CB53092B96A94B73E09B927C0E19895702494BA8C8EA9570A
            8148F70C2F57C2A6B4CD1AF6D192E4F3946BB1B986C2D2EA883D0F50A1E7EEF8
            1E7139B5CDBF3B389571D16FC134E8F5A0BEEF0AEB8F189359653BB4423378E4
            B7A26FD06B832DA54E73263B4EF783CFABDACA3E49E56FD710928E3700E87918
            E757BDD9C1BAA2545D9F7CCBD21D6A60CC77452010428031C4B9BDD6D7B11CBB
            C7B9B64CCAE6EAA7A8B4F5092AABCD808252439C9207527C48F8088BDD64209B
            7234E874ACA6D69792A93B357B33B5ABB54B5065351B515BB82C1D9A484EF156
            ABEA0B6A62F05A15ED53E96AEAA070A4BB323286D27092A5E40F2AEAAEA55CC2
            8B3DC7A0BA0BB1F7D646C11D3AD3DB434B2CCB5B4F34FADFA4DA764D1241AA65
            2A9B22C869892966D21286D091D00091CFC4E49E663CBA752536E523DE69D185
            38A8C1691EF20641002004008010020040080100200400801002004008010020
            0400801002004008010020040080100200401C1680B18316B8EC1F2895692A47
            2E63927DDFDFFDD163A4BD818E776AEFA387B40ED12AC563596C25A76C7BA799
            4ADE98BAA89241CA7DC2FE060D5A9E929438A27E54C3650E9C92A2E72C75B1F9
            BAD6EF516639534CC1B7769D85DDA95B199EA9CEDDDB76B835AF4CE58ADC6AF1
            D3A4B95D90759073DE3AC3404D4B6138FDB5AC78052B198F4DC475947494DF27
            36EED1B5F696D290BE1AA54DBB21584CDD2275A514B8C4DB4A65E41070429B50
            E2073D7A623D0ACBAB69B4BB9908C863272269D1F51A450D07933B2E84F11E7D
            E8C7E78EB4BAA286BC913B8C1D493E1132681A96F5566D9A6DBCD4D56EA2EA82
            1A97A7B2B9875C5138012DB795124E00013931C8B9EAAA114DECE3CBA5ABC9FD
            A8BC86D3FB1A7B4DB783314E9C94D17AA6DF34D6630A55CFA8A1CA524347C58A
            7E3D71F38E6096D083F7F106CBF5BD2E7B59DDC6F425593DD546645D9BBD88DB
            5CD81CDC96A2CC09BD76DC6F747BCBD6BF2AD8FA98B20052697263289341C638
            FDA748CFB63241F30C967AA5CFD8DF08F4EC374DD0B57DF15B65EA1B610DF170
            809CE3A472091F6A4B48EE031E7156CA421A2316B3203CE2D50E41F29956C939
            4A4827383CC6613827E41423BF7ECDEDA4768D693B9A5BBA1D2FA75DECCB0757
            45AE4B912F58B71F5E097A4675238DA2480548396D781C6956011B569733A0F7
            0651C77E4C0937CBE8A6EFAF6D754ADDE3B3FAB48EF1F4950E2DE6698D299A75
            D722D7501D96714199B50470A78985A54A2461A89EE2FAC64B51AACD5AB438DA
            31EDBD2DBD56D0CB926ECCD6FD30D48D1EBBA51C2D4C536E7A2CD52E61939FBA
            4CC21383F0C83E19EB1E8B8CEADA4FCC889E52C272DE91FB741D42A63A5019A8
            4BB833804380907DE073FA40896D2EAAA2D72C82DF61EAEFEE44CC90D57A5B0E
            36DFD52975956070A5D4AD4AF200039CFBB06346B754D0F3B23F5FA7AB4BC22B
            B76DBB53DF26F0276569FB72DB3EACDFF4D79D0CAEB2AA72E428F2BE65DA94D0
            6D8480399014A51F04988C653AD2DE29C77C9B763D1571369B5C194DEC2FD19B
            B6ADAAAD1753BB41AFAA5EAD56595B332CE9FDBCEB88A1CB2D3CD29A84EAB85D
            9CC679B680DB671CF8875F2ECAF5654A8DAA6F83D1313D114A9B52A9CE8CB4AD
            DB4ADBB468B46B6ED5A1522DBB729D2E894A7D3E425912F2D22C213C29699690
            025B401C825200888B936F6C9FD3A6A2B513D10480418B43873B3940BC400801
            0020040080100200400801002004008010020040080100200400801002004008
            010020040080100200E240C8316B60EB5B6DACA4A80C8CE3DD18A54DEF681C03
            4807D9C0F872CC57531B4488D51DAD6DA35AA69C9DD61DBDE88EAA4F2D05B54C
            5C56A48D41EE1C6301C79A52C72F22236E95CD48F86D18DD38BF28A5695EC80E
            CC194AF9B9E5F623B646EB1DE07439FB1760A42BDCD9F607C0271195E4EBBE3B
            9983E869EF6D157DA6DB77D04D1C70BBA45A21A4BA5CE94776A72DDB6A4E9CB5
            27C8A986D0A23E26314EBCE5FB999A34A11F62709651C8A91C6A0791573C7C23
            0F6A7E4BDC9FB1C9B480B39C74F38B3D38FB145DDBDB3E88C85E20040080116C
            983A1D0DAC70A921493EECC5B049AD83A932ECA78421294819C0F019393CA31C
            E12FF283C95EDA6F606A551976F6A359168DFF004151255255AA6313F2EA27CD
            A7D2A4FE68C94EA54451A4512DEDD933D9A3A85388A85D5B19DB0CECDA09505B
            368CACA73EB92184A018DD592AF1E149982A5AD3972D13434FF607B1DD2A4C99
            D39DA26DBED29897295B2FCA5974F0FB447429794D15823CF8A2D95E5597EE93
            10B6A6BC2455A332AC32DB6D34D2196929012840C252074000F0F7748D6945B7
            B6CCFB49691DA509494A804839EB144A3E196B727E0FA4741179722302A20040
            0801002004008010020040080100200400801002004008010020040080100200
            4008010020040080100200E874818E5E3E7EE8A345929B5E0F9DE70A4848E2C6
            31919C88AC56D6D993B5796F451AEE537FFB46DA530EAF5E75D2D1B46ABC396E
            8CC2DC9FA9BE707011272C95BC738383C20641E7CA376D309715DEE09EBFE0E3
            5F67AD6870E5C962ED6BF4AB36A1634EAA5B4AB6F3AFDAB32C92A0A9B9D5C9D0
            99511F7A1D2EB983EF4A4FBA25343A16EA4BFF00EB382FADA8A7A8AD944F3FE9
            8C48D3A7D61CD805CAAA3E709E0D40643E139EA4FAAF00223257E82AF1E76742
            D7A8E355F827EE92FA639B12B8A78C86B7E80EE5B445B529294CF4B31275E954
            02A00A965971A7400093C9B51C0E40F48E15C74D56A5CBE4EE42EA325C19086D
            1BB4C7627BEB944CC6D57739A5FAAF5240EF1FA3333AA94AC4B271D5DA6CCA5B
            99481D38B83873D098E254A528FB1B28AED4B8927D920F87CF1AB4E7B7A2A770
            503D23601CA004008038AFE49868A37A5B3E552806C9502067C62D8F0F4590FB
            B9912CF53B5834C345ED99BBCF56750AD0D38B565D254ED42B3516E55AC0EA07
            191C47C80C9319A16352B3D413FF00C182E2F2DE8FF24F458E3709E9266C0F47
            1552A7E9FCBEB06E0EB52E9C20DBF4532B22B5F97ADCE16F3FEB210B4E3C4C4A
            6D3A2EEA68E1DD755DAD3FDAF65B06F4F4C0EDFA5BA5BB5F61D79CDCBA4FB6ED
            42F9964A88FE2A199738FA63A0BA02E1A6D9A96FD5F4EABFB51CECEF4CD34204
            F48CBEA9EC835BED2A7A881333745B9E9F542CF3E6A4B2E21852B1E5C598E45C
            F48D7A6F4CEF5B652151178CDA67A44BD941BBEA953AD7B577314DD25BFE6D7D
            D3140D469555BD32EAC9C250DBEE9328E289E41087CA8F9470AB5954A6FB5A3A
            30927CA2F7B253B253D292B392334C4ECA3A84B8D3CD2C2D0EA0818525432140
            F98E51A1527A7CA2F3EE0B04E0466411CE004008010020040080100200400801
            0020040080100200400801002004008010020040080100200400801000903998
            A37A0712B4819CC5AA60F2377DC742B6689317057AA32F4EA5CAFDB1C754738E
            440007551279048E67A00633D28F73D1AD77771A307391634DFE6F0356256D1A
            9C85BB70CF688D9F32D290D2185F775BA9B479F138E824C920E79251C4E609CA
            81C08F43E95E998DC545DCB67CEFD6BFA8F70A72A343846185AFD7753A7ABB57
            7E44FACBEF3AA72626DC5A9C7A6547392B7144A96790E67998F7DC7F47D3A292
            4880D8DCDC5C7DF565A65BAAF171530FBC9230324C77FF00A5C62B844EB0F53B
            1EA5C920AB94B53CDA87779193CFCE393796BB5AED3D1B174137DC892372DB45
            D0E292805CF3F3F9E2157B8D8BDA6899D14A3A253C8BD75D8572532ECB52B55A
            B62E4A7CC25F92AAD3269C949B92707471A79B29710A1E0A490620598E9D8A8E
            E28EAD2971C997B76497A57DACBA1D56B73447B48662B3AE5A2A437272DA832F
            2FDE5C96E0E494AA75B46054A5C72CA804CC279AB2E11C07CDAEF135297DCE3C
            1B1DD1F0BC9B12B48F55F4E35B34F2D4D59D26BD2DAD41D35AFC93752A256E93
            3487E52A52AA194B8D3892411D4107052A042824822398D94267254957304111
            52899CA054E2A584E3316F72F00F9D730D9428871008CF439E63FE317A5C96CA
            6A3CB281771DBA1AEDA144AE496924BD2D7392ADA913D72D407153E98E0EAD32
            DF10F597FC719084F8A9447044831189F5A7A68F2FEB6EB7769070A0B930AADF
            56B3D4F516F2AADC17C5F35ED4EBACAD6944E55660B9DC024E032C8C352E8F24
            B691EF8FA1BA7FA269C69A9F69E075B3B7B7D55B9C9A4593AFFA8AA65F79653C
            4B23071D3E689CD0C2C211D244931B6D25AEE9ECA64AECA29E538A290A19CE0F
            846BDCD9F6F1DA7A161ECA0E3C9262BF425BA9590D02327A4442FEC537B71279
            8EB78A5E490771DAEFB6B754900B6A192DA86718F11E510CC8E029CD37AE4905
            2969A45D77B363B74B7E3D9975EA351AC3BF27755F401B7102A1A7575CDBB334
            B5320FB5EA0E9CBB4F7700614CFB19EADAC728F31C9E06717F6C4DA5523F26CD
            AECBDED5FDAA76A76939D45D04AF4CD1AFCA721B6EEFB1EB0EA5159B55F50247
            7A84FB2FCB2959EEE69BF614391E0582DA63138B8F92FD32E9A97107002924E3
            CE2DDA29B3B22A04008010020040080100200400801002004008010020040080
            1002004008010020040080100200400803ADC212939834347E1566B34DA3D2A7
            EA7529A6E4E9F2ED2DE79D5F24A109195124F2F0FE8F38B2328EF460B89BA71D
            B65096B76BADA7685B8E6A3DFAA683ECB0A99A2522656129924293ECBAFA7A17
            940E71CF807B23A989061B1B3AD554628F25EB4EAA8D3A4927BD9865EF8376B5
            ED64BE6E0AA3F517DE922FA90D24927D91E23DC7972F747D5DD1BD2DE9D0537E
            4F9FEEAABB8ABDCBDCB405DB3AECDADF71C71454A255CE3D1295AB6B9247636F
            A5C94FF57907A65F7141A7169F1383195DA7E0935AD58C4F0D3D4452D0A0A694
            0831CEBCB16D704A71D958C1ECF0154A071A15C4D04E33918887DEE29F3C134B
            6CBA9691286BF6A25E2A406C2873CF28895DE349450B98B449AAC598A6885F0F
            439C100FE6FEFF003F430EC9617D483896FD428BD97FBEC0FEDA9BEFB30B5AE9
            7A3FAC758A95C3B1CBAEA6845C322E153AAB2A71C5048AD49239F024613EB2D2
            7D975038C0EF1009F2DCD60DD17B5E0DCA17519BD6F936AE5B35DA45C144A457
            28554A756A873D2CD4EC84E4A3A1D626E59C405B6EB4E27216DA92B4A92A1C88
            50311A8A6BC9B728EBC1E85B712EA12B4281046418B8B4F9D6EB6851EF1C18CF
            D1CB3FD116CA71458A2F7C94E5A8F7DD2661CAEDBEAAA2A9B6EC8008AD4D36BE
            1538E2921624DB3F7C5041708F92929039AA372DA0E724A2888F50666146124D
            98C8F69D6F9A9F5557F82DD3B5314AB6E512A429A972027CB2A23AA8FBE3E84F
            D3FE9394FEEA88F9973D99777366317A8F72CD57A7A6661F98754E024671CB18
            8F7AB7B174FF00B7EC5B8DB6F9297AE342A64A9284AD6AE7E11B9F47F825769D
            B0F24B39FA32D45454CAB27DD1AF5ECB68915A64943C1E1EA141C71A38709C74
            C78C45AF718D92FC7E623E095D5DB69B712A1DDE4FC9E9110BDC669E8975A5F4
            669324B576CC4F138E21253E4903AC44EF31ADB69F836EAD58BE53266ED5F735
            B80D8B6BDD93B90DB95E137646A5501CC36B428AA5EA92C540BB2538D0C07E51
            D4A4216D2BDCA04290950F36CCF4DB8A6D19E9E456F4CDBB7D959DA45A47DA81
            B52B4371BA6EDB540B886693785B4B7C3AFDAD5A6D292ECB29439A99505778CB
            A40EF1A524F22140406AD0709F6B3A3169ADA2E588790E294949C91D71E11407
            7400801002004008010020040080100200400801002004008010020040080100
            20040080100200400803A5F00B6BCE4F2814EED725AFB7B5B8FA2DA776DBBA50
            AA8CBB12D27242E7B8D3C7D594AC893963E616E256EA81C652D2474544BBA67A
            73EA1F7EB83C4FF557AE5E36A42D5F99FC18BFEF7F7A55AD4CA855E9F2D5352A
            40B8B41057C4970780073E193F4FBA3E9CE93E8EA1420AA4972CF9D257977755
            5CAA3FB4B305C9537A7261D2B73896B04F33D63D52CAD7B23A5E0935A52515B6
            4B836D3D542B52CAD641E7C00E23A30EDDF6E8E92B9491F6AB4EA654DAD5DC1C
            789F2E517BED4FB5A30BBC96F51D92F6B5640425CCB4BC63C0738D7AD05E3474
            A8DCCBC123ABD6F19671D490ACE7CA3975EC54A2C9563729DAD264AEAA5132B2
            787918875EE3DA44E2CF3114B4CF0D51B612B052509271E041888DCD979D1D1F
            EAB1F7257D7ED0490E2FD5D2E0E9C2A4F23E79F318C8C7BFA8C7384E7B19B4F4
            61B7C97DDB8B360F7A261DA2157D75DBB5EFB0CD54AE3951D45D2769B9EB51E9
            A5713D50B41F73812CE73ED2A4DFC3593D1B7D81CF071E2397B4F427C93AB2BB
            5563F93306655F6B4027889079E3198E5465B5B36E52D3D14F1B99D6592D09D2
            5BA2FE794C2AAB96E4292CB8A03D66A2F2836C2307A8E251591E493E11BB8CC7
            FD4D5ED8A237D5F9C58FB295CCB94BD8C6BB767BD276D0B4D1A7F42AE3F529F4
            36B54ECD77A78E6E69CF6DE7967C54A59383E031E4047D0BD17D0B4E5A94D783
            E38CCF555E64BFBD465A8BF9FF00ACC70752AF8A8DD1569E9F9D752EA9C51575
            F1CE739F1EB1EFF618D853FE35A3671F6AD73229FA7E4262ACFAC05100F2C27C
            63BC928F2C90D2A8A275B7A78EB8A42430F600C90473319A2E2CB677DAF079FA
            CD84E31C49EE540673CC73116544BD919695D4BDC933725AAB955150490413E1
            1CDAB6CA4FE09358DF35C9276B148C857DA94144F8088BDFE39A932658DCB692
            3C14FDB89779A80CFBC4432F6C7EED3240B2D1F725ED72D26DC4383B8C78C467
            238CDC392DA994837F6F92EFBE8FE768155FB3BFB412CCA5DCD5C7E9FB76D529
            996B2EF761C510CC9BAEBBC32153C0C80A61F77814AC7369E741EA31E2DD438A
            716E689562F26A49419B5F255582E72404A7972FEFE0411F0C44214F6F44825C
            2D9FA1C43388AA7CB411CA2E0200400801002004008010020040080100200400
            801002004008010020040080100200400801007CD36A425874ADC4B29E124AD4
            79207DF1F70EBF3412D96548ED346023BBBDE15475575977077CCBCF2DA91AD5
            CB332F22A0E71F0C84B665D8420F2F6781907A78FBF31F587E9AE069C6D539AE
            4F8BBAFAF2791C9C9BE7B1E8B565CF75BB569B5CC38EADD249C03E1FF18F5EB2
            B5717A5E0C56D66A0F4D1E369F2135599B4B7DD38B0A574F13FA2249182513A3
            52A46312B2F4D343E7EB52ED7774F53AB501C2123FA634DDED3A526E6C8CE42F
            E2B6F656651F64970CD5B352AA3D2E996980D71368238B1F18855DF59D28D7D6
            FC11B7D4F5A9BD456CA12D57D0EAA5B331392B5090F5678151E2C72572CE625B
            65938564A4BDC925866DD449CBCB2812FBB5D728F3A97594A70AC64738DCACB4
            4D6CEE7694892950B654B515A0023CF11C9BCA099DB8646513CD3B68BC54A053
            C693D390E5116BCB5496CDAFEAD26B5B3CAD5ECC429A702DA391CC443B2F64A5
            1667B6C9BEE2B27B1D75F673671DA99B4DD4F554174CB52AD70A2C9B8C1E2287
            29B5506555C491F2B85D32CE0CF4536931E1FD618D493691E91D3593DCFB5B36
            D8CBA4869B0A505293C4938F3E91E671F1A3D0A71E5331A8EDD2DCD3968EA868
            1E89D3A6D01990919ABCE7D1C43852FACAE56554BF7A4266D4079907C23D77F4
            AF0F1AB5FBE6B83C0FF5A32B3508DAA7C48C58352F52E7AE9A94FCD4D4EBB30B
            5AB889E23950F8C7D476F8E8D29254CF18B1C5FA54D537C120661E989E529B4B
            6B28CF5CF48975B52D23BD0D4513D34CF4C276BCF4B112A5195609578FC22E95
            58C3991C9BFBC8A4D6CAFAD38DA0DC5743EC14D3BD5A489FDB149F68FC33113C
            9755D3A2DA4C87DCE7A54A5F6724B4D6BDADD72CB9B9AEFA413312C1440707CA
            1F18CD88EA3A7729E99BF61D4152AF335AD16DCD46B21D9153A0B00A79F87311
            256D35B44DB1F7DDDA2966A56F978A8A5B01793CB31A15A92947924B6D76F7C1
            E4E66D6794321B4F5F288CDDD9C5BE11BF3CAC97B9F893767A9580A6412AC888
            E5DDB2EDD22C59496C9197CD98B32EB4A1B532E1C842C1C16D59E4A07C083820
            F988F27EA4C6A707A25B87CABEF5B36D87640EE567377DD9BBB49D78ACCEFAED
            D750B498A5D7964614AAAC8AD52534A2074CBB2CB38C788E67A9F08BAA5D955A
            3D8A85455296CB9704F33CE3592FB99B28E71781002004008010020040080100
            20040080100200400801002004008010020040080100200400802466E66F44E9
            DEDDF5D6FD5E07D46B42B1521F16E51D50FCE046F63282A9710A6FDDA34B2172
            E8D09D58F98AD9AB79BBC9F9AA453973130E2DE71A0B7559C92B500A5127E3FD
            263ECCE99B574E9707C8F5AD231B99CBFD6F6CFC315953F30D0EF49E784E63D2
            AC56E0B665BAA7B92689FDA5D22D4E56651B75F209192A09C9F9A37EEDB84371
            385976E30DC4BFC6D5EC4B49F92900A7145C57002A5279F31FF08F24EA5C9568
            A7AF83CB6E6A56A97092F05F3ACAD15B06634C6B533305C5BDDC0C1C0E5938F3
            8F9B2E7315E778D48FA1707D0D62EC7EA27FB8C7A77A36550287589C12AEAD48
            5A8E4293D33CA3E90E86B8A95211EEF0796DEDA42957938163ED55A14987DE0C
            951055CF947AA425DCB4C93E2AE7EDE4A7F9AA02485612387E11A3731F83B12A
            FB3A5AB612FA91DDB6B579E7CA23B7706D683B84BC1DF3D602A6241E7132E56A
            1CFA74886E513D3464A17E94B8294B522953765D6E8B75C915C9CED267E56A8C
            3A8C8534EB2F36E850F78EE8E3DF88F28EACA7BA4DB27DD337D2771146E35D3C
            B81CBA6C1B32E671416E54293253EA38C64BB2E8709FA5663C3E7C33DE13DA4C
            C0ABB73B549FABF69A6B9D1D538E2E5E8B48A151DA68ABF6B489043CAC7BB8E6
            147FF88C7D17FA5766D518BF9DB3E76FD51A7F5176A52FF216679BAFF7AA254B
            50F1E5E31F4663A9252E4884E1DF153F73D35B21332B6964F1214A1D39C48249
            457DA736B53FB1977BDA95A540A84D48B95175E5BA7808051C872885676FEA46
            9BD1E659AAF55B718991B6DAB492C9AB394F54E17568CA790030738F331F3375
            8E62B53ABA5E09C7E9D74C51BE7FFD514B7BF5D2CB4288E56053BBF64254A50C
            84E3193EFF007449BF4F6FAAD496BF26EF58612DEDAB28D1319BD5FA352D4673
            D5C1EF0295800039EBE51F49DB4DA8A471B175BEED1443396FB456E2D483C7C4
            7391CE2CB85A2634AE3B51F902DD69790DA54A3E58E71C2AF265F3B8523F459B
            254F777995F68F31CB273118BDE17058EE629EC937A91612D8919B2A9728033D
            47323CA3CFF2A9B8BD9DCC7E49A92D19CE7A26F764F553B356FDB3E76616EA2D
            BD58AF48CB20927B965F97939BE11EEEF261E3CBCE3E78CBC355DB3E83E9DAEE
            ADBF3EC65029392AF9A395AE767753D9CE2A5440080100200400801002004008
            010020040080100200400801002004008010020040080100414481CA00A67DE5
            5A5337DED27733674902A9DA9D855E936523EE96A917703E73CA3A388AAA1754
            E4FD9AFF00D9A192A6E56F38AF74CD4D946BAC3949A6F78A536AF57692B467A2
            820717E71F9A3EDCE95AD1A96EBFEFB1F36E46C3B6B707A990AB36EBADA90EF1
            1CE719E9139B4E1706955B7FB9A5F0550E9DDC0A929A927DA5A12B4E3AE39C6D
            CFEF5A23D92A3DC99778DBCEE085B8A96F5E79B43092952B84039C6221F9CC17
            AAF8F74412EAC26AB2D22ECD23DA01294CD3EA8D2A90125D5301292B1D7C7C7D
            F1E3EFF4EDCEE7B97C926A7D575E9535411658DC4EBCD4EFAAACDCD542618778
            94781A427E41CF898F66E9DC2FD3D3ECF8398A93AB27265BDAEBA83D55796B7B
            80249CE0639C77A93D3676AD683823C78A507F85294633E18E6639D753362AD7
            D22625ADA7B315275B436C2D793C801CCC47AF2B76AE4E65C6434B655DD2B6BF
            5D98B3272B731246464C01ED2D2703CF3F9A21193BB5EE70E8E625EA168EDD5D
            8AA937174496487A6A6E61A946401ED38B5BA1B000F79527E8F7C799F52D4EFA
            2D9EBFD1576E571166D8FD26A2BD40D2ED3CA0CC8226A4E814E94733D429B956
            D07F3A4C7884FCB3EA0A72DC51AEA3B7B50BB4BB58772F2B320B627E5A815469
            58238DB76952E9C027A805AE67EF8111F4DFE955E4656B05EE968F17EBDB4FEF
            3932D1B2F5F6E6544174F1741CFAC7BED93DBD90374751D138AC7AB290842578
            29E21911DBA4FB968E5DE51F62E53A05AB7336CCC497785A580473E1E8238595
            C6FAB0D1E7F95B2976F747C97C3D0DDF1D1AD2979647B4E4D000938C0E5D23C7
            FA97A15D79ED1B38ACAD6B18EE252A6ED778958D439CA93489B625A556B503CB
            2A50F7448FA43A49DA6B7EE5D7790A9792EE99672BCAE598A9F7E9404124F22A
            E471E71E97521DB248DAB4B471E492AA900FA97C690579E6AF38C77475A551A5
            A3F728369B93CE250DB4436A3C9647FBA23D5DE93346A5E76956BA53B75ACDDB
            34C225698E96CE789D3CF00790888646F12447EFF2ED4FC920F737A44BB3A52A
            4898094BA80B591C3C9200F08815FDC6D3448F03907392D99467A2916CCC51FB
            3FF5A6B6FB4EB4D553586B0A6091ECB8DB3214F64A927C471A1D1F14C78166BF
            9D9F58747CF76C64FCD92707E1FD11C64F925BA3B62E02004008010020040080
            10020040080100200400801002004008010020040080100200400800467AC01F
            9559A7C9552973F4CA8B69769F30C38C3E93D14DAD252A1FCD262A9E9ECB5C53
            5A669FEDD66965676D5BA5DC46DFAB52AA929DB4AF0A9D21B6F8B39950FA96C2
            927EE925A5B642BC88F38FAF3A0B310963E2A2F93C7F25846EF5BD704B8A1559
            616D712803D727C447AAE3AEF74F4DF2473298C70AADA45405A972868324AC60
            78F9448E8C371DA2157B496F5A2A2ED5D467E431DDBC30067DA262D9536DF939
            15AD5B7DC89A2EEB6D55D94725953E12DA9207B24F2F84638DB24F68E655C773
            BD12EA72EB7AA256B2F97127AE4FCAF8C5927A7C1B34EDBB5707C2D3A998560A
            52AF28D4A924B6D0AB27DAF4CF7D6DD14CEBF2AD842F88AB00F8C726E6BC52D9
            A17574A9D1DCBC9764DADEDB1CBC2AD4C3EA8F218E34712DC4E71E3CA3CFF3FD
            49468526E444A8559DDCE34A2FCB2F53AE5A09636916DCA5DF9D2C3D5598694F
            00B4F248E1E5D7DF1E04B3D5AE6E1F6C9E9FE4F5DBEE89A38CB555ABADB7F262
            87A73A3CADD576966D63422952EF4EC84FDEF2755AC29A471F734D92599C9971
            40F2280DCBAB20F988D8EA2B8ECA1DACECFE9C63252B853F666CBA61414D2569
            E4159501E59E788F268CB7B67D3DE12302DF4B234526EC8DD2EDBF7214F922DD
            0AF0B45FB567A600F64D429D30A792147C14A979B18F3EE0C7B77E90E523094A
            9D47E0F3FEB8C63AAA32823162A6D6541D0E00A08F01E51F49E32FDB9B7BE085
            5EE19AA4B4B4C9D76C5C45B2D00E8C9FCF130B27B443B216ED7945455B37B2A4
            D6D290E94E31D0C67AB4F646EB5B292D689FB4CD6BA9CA36D813886D29F93C24
            E4FC630CADD3F2736B58777EE479BABEA3BD599971D79F5BEB3E393ECC525151
            2DA362A2BC1E5173A665CC2C8524F41E0235EA4B6FF26D72B83D052243BF59CA
            16A49FA239F74DEB6CD5854E64E456B68368F3B774E53D2DCABEFAF8C0184FB2
            079622257B92852DF7B21D7D94DD471464A1B58DA1DBD43B26A9755CA036D4A4
            8ACF0848E6BE1E823E7EEA9EAA73B8ECA32D2FC1E81D29D08EE6D7EBAB3DA5F2
            6365DA9557B72DEA8DC89A5F70CCAB01C29E04E718049CA475E8632D1BC7E877
            CBC976371D0AB78BD1F11E0CBD3B10B6FF0039B71ECC8DAD5915990729D73D56
            8EE5E1576968C2D135537D73A52BFE3250FB69E7E43CA3C7F2557BAB368FAD70
            16CA95AC568BB320788C011A0BC9DA4CEC8B8A88010020040080100200400801
            0020040080100200400801002004008010020040080100200401D4F101B59502
            A183903C62D9BD2D8300BF4B0764552D39D64D31ED06B228CF3967DDF2F2D675
            EEB65AF6646B52E83EA332E1EA04C4BFDA327971CAA7C5D023D57F4EF3DE9CBD
            19CB85E0E6DEDA292EE4B93143B7EE143C10AE327271CC78C7D196190E769ED1
            14C863BBD6DAD136E8F5D5B01052FA0827A0F089C59647691E6B93C46A5C2262
            D3EF053672A74A41E598EAC2E93F271278F6B7B47AC92BA96F2804CC9707BE32
            FAC69D4B44B826151EA65DC65641C743CE34AA4F6CE656A4913368CEA5E7586F
            BCCE70AF9E346B4D69ECE4D5F2566E835A4E5C1765358404AC8513CC6475FD19
            888E5AE94693219D455FECED327DDA769DC84BBF47616A61B6814F1A8E1291C8
            672475F847CD3D51755EB49C3D8E97E9FD8519D78CE6D2D73E4A74ED7BDD9DAF
            6FD21CB1EDDAC494EAE525D32E430B0A08C2704A467E564823E0634BA7F172A7
            F7CD6BFDCF48EBFCBFF50F4EDA8CB69691257D1B2DA5D4EEDBB359FB45750692
            A12F3C1FB1EC152DA187194B815519F6797241521B9642C1F6821FF0508E2F56
            5FB94BB227B0FE9E609DBDB45C8CBE1A0A6D094F014A327972E5F4443E947EC3
            D2DB7DDF82CF1DB91B1AA86FD3601AA5A7F67529151D65B6569BDAC6484654FD
            524D0A2B944F8E66185CC31C8757078E23B5D319676D72A5BD27C32DB9B75523
            A66ABAA05C27BF54BCCB1352334DAD6D3ACBA8295B0E24E1485A4F4524F220F4
            223EACC3E4D4A9C6517B23152C1CB69AE09C949AEF0A1BCB87947A3E3727AF24
            1B31895EC4C7A6DD6A6C37875431E3122A779B5B2195B1A97B1ED256EC0E1494
            CD1EF08C119EB19957473AA59A5EC7B5A3D616EAD44AC8F878C61AD57673EB5B
            A5C934E9533DE84AD2AE22702342A4D783915F87B27859B20675C619F6871909
            E9E6A11C3BFBA69323D7757B549B3209D9CE9BB1294DA53AF8614E2C8E9D7181
            1E0FD5F95AEA4D53442ADEDE356E34DF92EE1B83D5CB3F6FFB6E9D6662B34F95
            AD4F3454194B80BA10949C03CFC7F3C791E3AC2AD5ADDF24FF00FB1F4B7F54A3
            63897654E6B6D1889E8E68E57BB50BB4234D742E524E66674E1AA90B9EF79B69
            2A75B94A04AB895BA8715F71DF2BB996427C4BAAF2892E6EB2A14349F272BF4C
            3035A570EA545C3362D5269F29499196A753E4DA909265B432C32DA70969B4A4
            252803C02424247B808F2D52EE936CFA81C7B21A89FAC1442B1CFA7945B15F73
            32A5C1DB190A8801002004008010020040080100200400801002004008010020
            04008010020040080100200401D4F025B504804E0F5F183436533EEB36C7A5BB
            C2DBE6ABEDBF5BE809AFE9B5DB4976975147104BB2D900B530C2FEE5F65C0875
            B739614819E515B6ACE954528866A40DFAECAB5D7B32774B75EDAF5BE46627DA
            429552B52E8699224AF1A32D64333B2C7180AE410EB2092D3A9527A70C7BB74B
            756BAB05493E51A75EDBBD6891943BA5979B4292EA4F8F257F7F28F54B0C9CF5
            B4C8DDEE2D3D9EF652B697780059009E433126B5CB36F6D915BDC4F3E0F7F43A
            A142D3ED7B25431931DF591DA21191B2ED7A27650EA58E125641C7818A4AEF82
            377141E89E76B4F20BAD295C27046418E557BB5EC706B527BD95EDA1378D3EDB
            9B44FCD38EB4A052AF608C01F1311AC976C97240B35652A92D95D95AED096AC0
            B66713489B519E2D290D27BCE104E3AFBBA75880DFE2A9BE4B2C2CEAD2D76ADE
            CB7AEDE341F5C3B5CF74CCE91DAAF5428FA7328EB550BFEEA00AD8B7294A5825
            2952B92E71E00A19679124970FB2D93108EA1CC42853EC5E4F77E83E837564AB
            CD1B12345B4A2C2D0DD2DB1747B4BE81256BE9EDB74D62914890971EC4BCB348
            094827EE944E54A59E6A51513CCC791D5ACE73727E4FA4ED6D9528282F626991
            C8F58C66747C8E36A25600EBD0F883E188C4D69ECB8D739E92DF63ADC3B63D59
            B97B4436D36929CDB95D53C2635028D4D971C364571D50E39F42523D8919A59E
            22A180CBE540E10E240F4EE91EAB9505E94CB651DA317DB76F16E65964F7C012
            02D3CFA83D0FC23DC31D9594B94C8F5D63535E099B215F07038CF4F3897DA65A
            4B8932297D897DACF6B4DAB1438DAD2AC79E4C7768649321B90C7B8F9271DBF5
            60A4B2E256167A119C46F4AF7645AEA893BA813E871484A096D5C8903C639D5E
            F111EBAA0554E99D625E5E7A9EECCF12509702B0919271D23857B73B4D111CB5
            BB96E28BA8D8BBB6A469DD2586D332FB6EA121472A03031102C85A42A364629E
            3A717DFAE4A00DD86F3F51371175512C0B269954BB6E3ABCEB549A1D1E402A62
            66A934B504B6C36D03ED2892396790C938009889DFBA5674DF83D03A4BA7AAE4
            6AA734661DD8D7D9A92FD9F3A113D3B7EAA42B5B99BD8B555BE2A4DABBD12452
            0F714A61E3CD4CCB85B814A1FB63CB717D3863C5B2F9477159FC1F5DF4EE0D59
            5150F72F28063A663984888E39E79C0B84008010020040080100200400801002
            0040080100200400801002004008010020040080100200401023208816C91F34
            C36B536A4B696CAF20A78BA039EB1638F222CB7BF68AF66DEDD3B4CB41E7F43B
            7196E079B65D5CDDB5714804A6AD69CFA93C22664DE23C70038CAB2DBA9F6543
            9248DAB5BBA9467DD02E691AC2FB4BFB1FB7ADD95579CF3FA976A54353F6EEF4
            CA9143D4CA14A38BA64CB64FB089E6C712A9F34473534E9E0273DDAD6018F50E
            9FEB6D254EA793054A7B2DD96DDE4C4CA5952DF6C1E433C407C3DC7AE463C088
            F48C766D4F52F6395774E2934D13BA8970B6E210A4BA1401E649C622696B958B
            4799666CDB9704E3A05D084F0871400C0C13E31B13CAC3C7B90AAF6CC9CF42BD
            5860255C6540FB58482558F87846ACEF93F738973652F27B5775C19A349A94DC
            F042123DB21CC81EECF9FF004445F2D94505BDECD0B7C4BAF2D4625C1361DD99
            5BC2ED35AF532B34891A968DEDBD2B2A9EBFAB928A4B53A80465AA54B2B0A9D7
            7A7B7C994F52B27093E5F95EAE8A8CA2BC9E97D31D0137353AD1D44CFB3679B3
            0D0FD8EE8C50743F41AD566DFB5A54AA62726DE577B3F5C9E50C393B3D3180A7
            A617D0A8F24A78528094A408F2ABDBAAB5A7DD267B7D858C2DE1D905A455A4BB
            6A6D094AB048C671F0F7C63D1BA8FA2054811CB94639A078CBAECCB7EFAB72BF
            66DEB41A35D768D4E51DA7D46993EC25F95A84B3882971A7D958285B6A492929
            23041F311741B8F2BC835E8F6C6FA305AADA1758BBB721D9A76C56754B455D2B
            A95574C58529DACDAA0A8A97F52813C53D2609C8639BED63907123226F81EAEA
            96EFB67E3FEFFDFF00BA31CA1BE0C4A29576CF53AA33F46AD4ACED1EAD26E298
            9C959A696CBB28EA5452A4388580A4AD2410524647947ACE3BA9A35F4E2CD1B8
            A0B4DB44EDA1DCCDBC968971B20F4F6B1F9BC3E7E7136B1CA47E482E6EDF6B71
            44DEA15C6849691C6138F9423BAF251D7279F5DD94BC93AA85774AA14825F69B
            008C92A00827DD98D1AB908B237756AC9A723AA92F4D4278273817D724918F80
            3CCFCD1A17973150EE6CE42B07297EDD930F46AD9DC7EF2B50A574776C7A7574
            EAADE932A0DB88924624E96D93CDF9D9B3F6A96693E2A5A87900A3CA3CDB2DD4
            B4E937B7E0EFE37A42AD771ED8F06703D937D8AD60EC29B1ACDAB93B46D5DDDD
            CFCB161EAEA50AF50B565DC4E17294A42BDA0A56077934A01C580129E04E52AF
            1FCDE72ADCC9A5E0F7CC0F4B51B38A705C97DF6DA712E03949473E5FD1F9B947
            0E2B8E7C92DFF63EE8A810020040080100200400801002004008010020040080
            100200400801002004008010020040080100200400803A5D42963093C2739E91
            4079FAFDAB43BA68F53B72E5A452AE1B6E7E5D7293F4F9E956E625A71950C29B
            75A71252B4104E52A041F11162FB5ED031B3DE2FA2A9D9BFB92AA55EF4D2191B
            BB67DA8736B53CEB964B895D19E74F11257497F89B40248C8654D0E5C808EF58
            F53D6A1A49ED18A74632F2588F533D104DF35A15074E8BEE776E9AB3444E4B69
            AF4B4FD0A6B974490844CB79F0C82044C6C7F50E514BB91C6BAC3466F689154C
            F462FB60D8A81917ED2DBB332B93FE3CABF4167E3C225F8F07FD58EA4FF5129B
            5E48CD4E8C52936569E91FA277BC8AF4D3075CF74FA0DA6D4B013C6CDB94E9CA
            DBEA56798417BD5D092078E0F3F08E45CFEA24DAFB4AD1E878A9EDF82FEBB43F
            4737B3EB6C752A65E379DB95EDD2EA2CA2C392D51BFD689991955850502CD310
            04B8E63FCE07222779D49715B872E0925AF4EDB53FF297E2A65264E952D294FA
            74B4AC8D365D94312F2CC341B6986D3C92942138090060048000C47125394B96
            76E0A11FB62B47EB049E2249F28A190E700200401C569E24A872E9E59803E354
            A871290E7B5839191D0F9FC631C97BA05AA77D7D8ADD9EBDA173337726BE6865
            2A4F54D680945EF6C2CD22BE823382E4DB231338E580FA1CE43190237ADB2D52
            87ED651C53F26311AEDE86EDFF00479D9FA9ED4B7A944AB53F8B8E5691A856FA
            9B7523EF0CEC92B84FC7B919EBD625763D7B562BEE399758C8542862B3E8B876
            BADB13A65A8723B69BF25028F0CCD3EF87184E09FBC989642863CB9C48A9FEA3
            26B92337DD2CEABE09DDA6FE8B1769AD79F9137E6A56D6F4B6454B09755F56E7
            6AAFB20F53DDB52EDA167C87791654FD45E748D2FF000227E4BC2EDA3D149DBA
            D9739255CDD46BD6A26E0E6DB5713945A3B02DDA43D8C612E96D4B99713C8E40
            713C40E0C45721D59715DB945E933B165D296F4928C96D9929686EDBB4536D16
            44BE9B680699D99A4D633442934EA248265D0E383ABAF2C65C79D200056E294A
            C0EA62355EBCEA3DC9926A1694A92FB5689EA968248C0C73C9C0EBF18C46C23E
            81D040A880100200400801002004008010020040080100200400801002004008
            0100200400801002004008010020040080116B4045740EA53793D543E10ED40E
            BF57482A500AE22727C327DF16B827E4AA604BA78783DAE1F2E988A7616BD80C
            0073CC1F745FDAB5A2EDB3B0B7E45407BA096BC144734A003C5E315D96282DEC
            E502F1002004008A34045120705A7887523E10ED40EA2CF124A495907DF0EC5A
            D038A65F847252FA63AC231D2D156F6730C01C7C2543273D628E099422968251
            C0927118DC1F8D88F0452DE0609388BD45EF625C9DB190080100200400801002
            004008010020040080100200400801002004008010020040080100205368406D
            080DA101B420368406D080DA102A200400801002004008010020040080100200
            4008010020040080100200400801002004008010020040080100200400801002
            004008010020040080100200867E3F44002A183CE2927A28D1C78BDEAFCD18BD
            6FC16F6BF91C59E9C67E687ADF80E0C87163A95087ADF82BD8C710F3545CA7BF
            629D8FE48E7FD68BB6FE076BF93ACB879801717E8BBB3F271438A2A1C8E33E71
            41AFC9F405038F3815230020040080100200400CE2008647BFE880191EFF00A2
            00647BFE880191EFFA200647BFE880191EFF00A200710F7FD100320C01180100
            40903AE6008C010C8F7FD1029B4323DFF4406D0C8F7FD101B4323DFF004406D0
            C8F7FD101B4323DFF4406D0C8F7FD101B4323DFF004406D0C8F7FD101B4323DF
            F4406D0C8F7FD101B4323DFF004406D0C8F7FD101B4323DFF4406D0E21EFFA20
            548C008010020040080204810032228D838F1A4633C89E9150414B4A412A3C29
            1D49E8229B0799B96EEB5ECEA5BB5BBB6E2A15AF46681E39CA94E372ACA39679
            B8E94A472E79CC5AEA2F92E516FC16DED61EDA3ECB4D08989AA7EA46F9B40252
            ACD03C5234CABFD559904751DDCA070E7DD8118E57114BBB66585A549BED48B7
            9DEFE95A7644DA334FCAD12FDD71D472DE40768D62CE21A78FF11735DC83F18D
            796529F946E7F41ABEE5305CFE98EEC0696F2DAB5F6EDBB7BAD1D7BC764A9328
            9FA173A543E71182A6669A3343A7EAB25C3BE99DED49B755EAFB33DC73CD1E61
            4AAC52904FCDDE1FE98C7FD729977F87EAFB9DF2BE99D6D35D5933BB38DC94BB
            43AF7556A4B8AFA0BA9FE98AACD537EC5DFE1EABECC9956DFA637D9EB507022E
            5D00DDD5AC73952914EA54D849F7F04E83177F59814FF0F55F92A1ED3F4B17B2
            3AE25B4DD6AEBDC0D88A5F8D46C5997C27E26514FE23615EC5F269BC3D64F5A2
            B3F4EFB7EFB203531E9594A2EF9F48E893AF60219AFAA6290BE7E04CD36803E7
            222F85CA7EFC164F1D560B6D6CB87E9AEEB36CFAC2D4BBFA53B83D15D4869D03
            80516E9929B573E98421C2AE7F08D8F563ADECD67467F0541A5C0A246088BD33
            19D91502004008010040900649E5144CA364BAD4DD53D34D21B5DDBD355AFF00
            B434D6D06DD430BAA56EA2D494B21C583C29EF5D504F11C1C0CE4E0F94525351
            E597C62DF11453C23B41B62A9CA55BC6DB2023963F66F4FE47CBF6C8B3D787C9
            77A153E0E7F641F629F8636D8FF2DE9FFAD87AF0F91E854F81F641F629F8636D
            8FF2DE9FFAD87AF0F91E854F81F641F629F8636D8FF2DE9FFAD87AF0F91E854F
            81F641F629F8636D8FF2DE9FFAD87AF0F91E854F81F641F629F8636D8FF2DE9F
            FAD87AF0F91E854F8207B41B628A2940DE36D938C9C01FB37A7F33F8D87AD0F9
            2AA854F82A234DB52F4F356AD791BE74B6F9B4B516CA9A52912D55A2545A9D94
            98525585843CD28A49490411D418BD4D3F063945A7A689821415D083F3C5C508
            9E8600F3F59AA48D124AA559ABCF354BA4CA30E4CCCCC3CAE069869082A538B5
            78252949249E40080284D1DABFD9A2A6D0B1BF1DA79052083FB3890E608FF5E3
            17AF0F9327A13F81F6577B353F0EFDA87E5BC8FF006E2DFA887C993E9EAFC31F
            6573B353F0EFDA87E5BC8FF6E1F510F91F4F57E18FB2B9D9A9F877ED43F2DE47
            FB70FA887C8FA7ABF0C7D95CECD4FC3BF6A1F96F23FDB87D443E47D3D5F863EC
            AE766A7E1DFB50FCB791FEDC3EA21F23E9EAFC31F6573B353F0EFDA87E5BC8FF
            006E1F510F91F4F57E18FB2B9D9A9F877ED43F2DE47FB70FA887C8FA7ABF0C7D
            95CECD4FC3BF6A1F96F23FDB87D443E47D3D5F863ECAE766A7E1DFB50FCB791F
            EDC3EA21F23E9EAFC31F6573B353F0EFDA87E5BC8FF6E1F510F91F4F57E18FB2
            B9D9A9F877ED43F2DE47FB70FA887C8FA7ABF0C7D95CECD4FC3BF6A1F96F23FD
            B87D443E47D3D5F863ECAE766A7E1DFB50FCB791FEDC3EA21F23E9EAFC31F657
            3B353F0EFDA87E5BC8FF006E1F510F91F4D57E1936B45F7B5B45DC6DD1376568
            26E5B44B58AED969235398A6DB771CBD42659950B082EA9B68921BE220711F13
            88C91A917E198A54E51F28AB24F4F9E2E6CB08C54080100200401F3BCA4A4A42
            949049F1F9A0347153ADA54A4A9494E46799C45B2D796589BDE91673ED15EDC0
            D86F6709AADB3AA77FAF51B5B50CE58D3FB4FBB9CAAF111ECFADA890D48A1448
            1C4FAD271D127A46BD7BB8C17937ED71D3AAF69706173BC8F4B17B40F5DE7EAB
            44DB5D1AC8DA2D80ACB72EF48B49AB57DC6F3D5C9E984F74DAB006032CB7839F
            6962385719769F048EDBA7579918EDEB3EE6F70FB8AACCD57F5E35D356F58AAA
            E15F13B725C1333A9564E7932A5F76073F04E234E573DDEE7569E3230F6247B6
            BEE905A650DCBB7D385B1C23E811AD564DF3E4DBE12D2218E79F18C410C0F211
            5D15181EF8018C79C034302006205347625D5A7893DEA9208F15103F3451B2A9
            7B1CA4675FA54E7D50A5B8ED2A7801C3312EAEE5D001C81C68C2BA8F8FBC758D
            CF57EC5C98A9515DDB3634FA1EDAA5A97A91B50DD449EA16A25EF7ECB51AFAA7
            C952515AAABF3DF531855392B534C1794A284711CF0824644487133EEA7B2179
            A8EAAE8CC0BAC750E408010020081E6088B65E01F34C253DD28288C6083148CB
            B518A51726B46BA4F4B63B427FC2E6BED91B04B0AAED4E581A72515EBD036B2B
            6A7AE57DAFB44BB8904A55EAB2EE1251CB857324F8470B2773C697925D83B6D6
            E6D18762A5E58F083292052321203493819C9C9C673926386EBCBE5926515F04
            3D5A53F80C97E253FA229EBCBE58D21EAD29FC064BF129FD10F5E5F2C690F569
            4FE0325F894FE887AF2F963487AB4A7F0192FC4A7F443D797CB1A43D5A53F80C
            97E253FA21EBCBE58D22225A4F3854949631D3B84F3F9F1CBFBF9C555797BB65
            1C568CDAFD10BDFE7EC56FFD51ECEFBEEB496A837125DBD6C24B8A09433526D0
            05464DA0718EF5A4B530123A29A5F2CF118EFD85CAFDBB22F98B47FBD1B00A54
            8290A1C0338384E3039748EF322E9727D4AE87E1142E24C6E1C7FD016BBFF236
            B5FF00827A30DC7EC65F4FF723474C8A53F53E9DEC37FF00566BEE47DE2621B7
            4FFBAF9F73D1E8A5E84783E9E14F836D7F3235FBBF2CC9C0E11FBDB5FCC8777E
            58E0708FDEDAFE643BBF2C703847EF6D7F321DDF96381C23F7B6BF990EEFCB1C
            0E11FBDB5FCC8777E58E0708FDEDAFE643BBF2C703847EF6D7F321DDF96381C2
            3F7B6BF990EEFCB1C0E11FBDB5FCC8777E58E0708FDEDAFE643BBF2C703847EF
            6D7F321DDF96381C23F7B6BF990EEFCB1C11094E79B6D63FD48777E43D1964FA
            1E613F64835BF85284FF00D10CDF44E3FF00B4A4E3BD8A6C8F7506BB4D9509EA
            3E1FA23B93FDC888A39C658F82A22A0400801007C13A79379CE38B96064E7DDE
            FE662E4D7B96BDEF83078EDF4F48D6E4D32BA6F4D90767F5D4C536EE9079EA55
            FDA9B22A4AD74B9800A1EA5D195CC7AC367D8766FAB6ACA5BF6925698E646FFB
            5E9792458CC577FDF35C1819D46AD52AD54A7EB35AA8D42AF579B75531373B35
            30B7A626DF51C975C75795297924F1A8A947DD1C5A95E72F3E49652A308AD44F
            CEC10723E88D6ECDF92FF564970440C751CFCE29152459DF27E481CE428F48CE
            A4BB5A2FD9C81CF48B62B7E0B652D0041F8C55A6BC88CB646285E228B658E40F
            28AE994EF38F1721147B465D3F215CC18A4970513D35B3813CB19198BA69F622
            FA1AEE66C34F4307F72CEF3F2797F843A77F562624F855FDA2139F4956E0CD06
            3B270840080100414A09049E42051944DDA13BCCB17617B3CD75DD3DF0E4B4C3
            16BD19C7A994F71610AABD59C3DDC949A7247B4E3EA6D27C427895D12635AEA6
            A28CD6B41CE49234D16A8EA3DEDAC1A8D7E6AA6A556662E2D41B8EB1395CADCF
            3BCD5353F30F29C796AE98CA95809E8942509E5C3110B8A8E4F93D0ED68A8414
            51E1A359A36043480869010D2021A4043481030E172CA39689C9B79D74BFF6CD
            AE3A4DB82D2C9D321A8366D7A4EE0A62F24071C61C0A534B03E536E238DA5A7C
            50B50F18CF66E4A5DC61BDA0A54D9B9FF6A3B91D3CDDA6DD346F729A613ADCCD
            8D7A50656B72238B88CB97138725D581FB634EA5D6543EF9B3136A53EE5C1E73
            529B8C9C595128703882A1D3E11798DB24E6E1FF00F503AEFF00C8DAD7FE09E8
            C571FB197D27F723475C8FFE6E90FF00BB35FF00F9A621975FCB23D229FF0004
            7FD91F646032A102A20040080100200400801002004008010292F0658DE879FF
            0094835C7FD914DFF594A47731446BA83C23653A7A8F87E88EF4FF00722288E7
            1963E0A88A8100200EB717C209C138802C7FE9017685CEF67BF67B5FB7758B59
            4D235D2F47BF61164BA923BD919A996946627D03CE5A592F3893D3BC2D03F2A3
            42FAE7D389BD8FB57527FEC6A589A98999B9A7A6A6E62666E6DC5971D75F5971
            C71649254B59E6A5124924F3C93924E4C442B3EE96C9DD08EA1A3A445ADF2654
            88C0B8400825B7A2C9338E33E79F87F4F90EB069EF5132C209ADC89E7A1DB60D
            C66E5EB13340DBDE876AA6B45619389866DBA2BF3A2549E81E7109EEDA27A80B
            52491CFA46C50B39BE59A95EEE9438657C48F61176BED42551372FB05D776DB5
            00425F6E49958CF9A5730088D9FE9D3F646AFF0056A1AF63F06E1EC47ED6BB5D
            0EBB54ECFF00DC638CA49057294B666863CFED4F28E22C963A7EFF00FE7FFD15
            FEA941F8652CDFFB1ADE9695B6B7B517699B92B3E59270A7A72C9A8F749F8BA8
            654803E26312B0A8FD8BD6428FC94C1509299A44EAE9D5561CA65452AC2A5A61
            05A7D1FEB34BC287CE20FB92F06D539A97B9F3F0AB91C03CF00F519F2CF4CFBA
            35AA546D35A32286B938B8307E5057C3FE317CFF0062296FFBD9B0CFD0C1FDCB
            1BCDFF006874EFEAC4C4970BFC443B3FFCC66831D8384200400803ADD386D672
            41C1F0CFE68B652D066BB7F4B83B41D7A9DADB60767E69FD716F59D61777725F
            1EAEE65B9BAFCC3389694591CB32D2CE159F1E29923C39707255D3E09460ED13
            5DC61B249270027840C038C7BFA79E49F8C47DB24CDE9E8E502E1000F2060081
            0A033D4753CBA7F7E5CBDE21A28D819F18152300408CE228D6FC98E68E0539E7
            F7639A4FDEABCE3253A9DBC1924DB8E8CEFBD105DFFF00AC48EACF6745FB5A70
            BB2DDF5F9A7CDBCB054592A4A6A52483D4F0ACB132940C0F6DDC78C48F1B729A
            6910FCC5A6A5DE919D6B453C2A0901232797F7FE98ED11C6F6F44A0DC3FF00EA
            075DFF0091B5AFFC13D182B4B74D99692FB91A3A644FFC9F4F1CFF00EACD7FFD
            1310DBAFE591E910FF00E3C77F07DD180CA840A8801002004008010020040080
            10020040A4BC19637A1E7FE520D71FF64537FD65291DCC578235D41E11B29D3D
            47C3F4477A7FB91144738CB1F0544540801028CEA7338381CF38116CDE916A7C
            9AEF3D32CD5DAC55B751B45D0D133306D8A1D893D74063888419C9DA8164923C
            70D48B43E8F2E71FCD4F715A25BD374FF748C354649CE123A9E5EF31C16F6489
            44E50322100200451BD725933A96094AC270164109F0C2B1C88F81F6BDD827C2
            32DB4772DB2E7FB3836C8F629EF33B33EF7D9AE83692ED22F7D2CD2DAC52A832
            5275AB0E6E758A75765EB21A47ADB932CB850B9C75C78ADC3328E30E85856539
            E112FB6AB4D4523CF7234EAF7BF72F9E1B6824256D2324E725279FBE36BBE073
            946A688B7C0B5E023831D31CB8A2BB8FB158F71DE190E25495AD4EB6A18295FB
            431E58FF00EB173D1773E4919A9DB5EDB66B5C83F4BD60D02D18D529175250B6
            EBF6C494F0503E04BAD9F38C72A307E519615EA47C48B3F6E0FD19AEC88D7566
            666699B7A9FD06B81685244FE9FD65EA6F0E4606251DEFA5303C8322352B63A9
            CD346E51CAD6834F663D1BAEF4387556DC66A75DD9AEE82DBD459449E362DCBE
            E44D366F90C06DBA84BF1B2A3CF3C4B6DB1CA39F5712BB75B3B147A8DA7CA2EE
            BE8B8ECDB729B1FD28DE9E8F6E874AABFA557DFECF29D372ECCD70BB2F519634
            E081312932D92DBEC92140292723185049E51B98DA6E09C19CBCADC2AB253465
            471D3396200451B075959092707E78A41EDE8B272D2D9475BF1DE0D93B14DA4E
            B96E9B503B872916A511D9B93935B9C2AAB549786A4E4D19FBA7A616D379F004
            ABA24C61B9A9DB066D59D1F566A3F26997D56D4DBDF5B353750B58F52AB0F5C3
            A85745626EBD5B9E592AF599D7DD2E3841F04052CA123A04A000700443AEA7DE
            FC9E856149518E897C1241F0C46B4568BE6B72EE3945C641028CE392064E31D2
            2D93D154B65F07B3F7B2A6B7BB2ECE0ED29DE63D49AABF52D3CA2CB3360251C6
            944F54A55D44ED5143030B0892E1688E78332A3D5240EA5A5AFA906CE35E653D
            3A8A091640560FB4D10E347DA4281F9493D0C73A516A5DA75E0FBA3DC2288B90
            80204673E11468B74CA91D9F6E6AFAD99EE6345F73FA7132B6EE8B2EBD2F584B
            01C294D42592786665540754BAC29F6943EF5C578E08D9B3ABD9248D4BFA1EA4
            1ECDCF5A17AD7636E1B4734CB5CB4D2A2D562C3BB287295EA54C05A49F577DB0
            B095E09C2D24942878292A1E113484D4A279ED4A5DB267CDB857B3A09AE88202
            09B32B679F87F893A338F2CC59563A868AD27F72347548CC322469C3BF97CFAB
            35905C1F783AC442F69C9556D23D0AD2BC254945B3EAF5B97FE1129F8D1183D2
            9FC193EA21F23D725FF844AFE3043D29FC0FA887C8F5C97FE112BF8C10F4A7F0
            3EA21F27244C34E1010EB4E2BC0215C44F23C801D4FF00BB3155467F03EA61E3
            67685A5490A6D6DBA92321493949F9E2C7169E99B0926B699CC45BB28988A951
            007139E401009E5CE2A9146CEB2FB4900975B483D38D413F9BAC57B1EF48B653
            4BCB387AD318CFAC4AFE3445EE8CD7B18DD78AF721EB92FF00C2257F1822DF4A
            7F053EA21F23D725FF00844AFE3043D29FC0FA887C8F5B6319F5894FC6883A53
            F81F510F932CCF43C1D697DA3DAE052F34E13A43384701C838A9C98EBF0398EC
            6254BC68E27504A1DBC3D9B2A72414F2F1C448DC79D9114760E6018B91523002
            0040A4BC1F33C784123AE463DE62CA9E0B63E4C107D323DA7DC93533B57DEE51
            295313B6BC949CCE9E5CD30DA3953D4B7573922E3AA1D12E29536D051E414948
            EAA483C6C8D3EE4890E16BF6C9C7660ACA49412950C28633F188FD486B9262A3
            F62910072331893D96425B231532080102D91C0F2CF9105279E397C7C229DCD7
            83252A892D31C4A0EB6F216B69D471042D2AC29009CE12A1CC018E51746BCE25
            BE8D393DC8AE4D0CED31ED04DB6865AD13DE4EE1AC5A7361284483571BF35229
            48E83D4E64BAC6074F91D237217B234AE71D4E5C68BC56897A58BDA9FA68E4AC
            B6A34DE876E0A909484115DB6FD4271C3CB9FACC82DA483CBA96CC6EC32125C3
            39B3C245ADA45E4B423D331D24A9FA8486E4F675A8163BCA203F52B3EBAC5565
            91E6A12F30965D23DC9E231D0A79387B9CDAD819FF0094BDDEDD3D218EC9ADC9
            3B234DA06EBAD3D34BA1F2026917DCABB407D048E85D7C7704FF00F991B11BE8
            B39B2C6578F989788B62EEB6AF4A248DCB66D7E83765BD348E3979FA64E37372
            CFA4F4536F3654850C79131B2AAF06A4A9C970CFDD4252F252D9295A082494F2
            047CDC8FD3191CD331A4D33EA665DB60610709F2E58CE73F34514517ECFA720F
            43171410D810075AC8C11CA2CD69163E7835E8FA5D3DA122FF00D5ED38ECFAD3
            CAF15DB565777765F618772898AE3ED94C949B8013932F2EEA9E20F20665391D
            088F642EBFC84B30766F5EA330BE2924F11249C0049E64E3A733CF973C639733
            1C5537AD12639C5A544010C9CE22D725E0C7BE4FAE9F233D549EA7D369724ED4
            EA534FB72D2D2C8F953330B584B6D27F8CA529207C479C6E51A3B65B753EC8EC
            DC4BD98BB16B6F673D9CDA1BB4AB82952D373C2DA71DBD125BE1151AAD45A52E
            A1C40F3EAFB8DE3C12848E78894595BEA99E7D7B72E555B35366F4F6EF57DA76
            ED7717B6CAD34F333566DE151A230A3D1D944BAA54BB89F34299530A07C96223
            5754D2A8C9FD95452A29A29887411A46C1180100412B5215F73C3CF39FA3FA33
            F4C59DDA96CA496D68D823E88A6FF957C692EA6F67D5F35CEF2E3B2D6EDDB622
            1F7495BF439877867251A04F312F30E25C091D11323E694E3EE14910CCADB76B
            EE334A7E9B2552A73F4EA84ACBCEC8BED2997D979016879B52785495A5430A04
            1C10460C765ADAE4E0A92F629A3EB19D9324251F5A0ED7824001205834AE43C3
            FCC46276F07E519FD79AF0CE63631B29FC1036C1F9034AFD4C3D0896FD4CFF00
            247EB19D957E081B60FC81A57EA21E8447D4CFF23EB19D957E081B60FC81A57E
            A21E8447D4CFF27CD31B17D9494FB5B3FDAF91D7FF0040695CBDFF00B4457D08
            69F05AEE67DC8D567DBCF675A56076B9EF56CFB0ED6B72CAB4A46BD4F6A4A954
            8926A4E4E4D0693244A5A61A4A50804A89C003992622F948A8B7A27189A8DD35
            B2D183E88E453F075FDC8C64020081CF2C633D3A4519546C1BF44B36EBB7FD62
            D8C6BB57F56B43748753EB4C6A83F2D2F37715B727527A5D914D9521B6DC986D
            6A4A32A27841C649894636DD386DA2179AB8946A70CCAB06C676527FF640DB07
            E40D2BF511D4F4E0F838BF513F9647EB19D957E081B60FC81A57EA229F4F11F5
            33FC8FAC67655F8206D83F20695FA887A111F533FC903B18D949FF00D9036C3F
            9054AFD443D088FA99FE4F6FA79B6ADBB690D6DFB9B4A74234774C2E2765D526
            F4F5BF6D4953E61D60A828B4A7186D2A2DE5293C39C6408BA14E31F05275653F
            2C9DC3254082483E517B89624768E83C209151150200401C16DA56304451AD94
            48919B8FD00D2BDCFE8AEA1E816B55A32F7B6985D34E729956A7B99056DAB052
            B69639B4F21610E21C4F342D0950E623154A0A48CD4AB383DA356A76B6F6166E
            5BB332E9AEDED47A556F5AF68CECCB86977E53E578CD1D0A3944BD71A47FD59E
            E613DFF265D38295249281C0BEB2DF825D8FCAA92519B2C5E79241C11CCF8633
            1C39AEC7DACED45C65FB4E20920E33CA29EA47DD19A34F672C81D4C5518D11EB
            152A4300E609964A1BF23022B27BE1850D118A25AF05C90E60280246460C55BD
            977731E040F641392072C9F338EB147CF90A4D78641638DB2CAF0B67EF14329C
            F9E0F8FBFAC5CAA49782B2937E4A90DBC6F0F753B4CB899B9F6D9B82D59D1AAA
            073BC5A2875879A9698572CF7D284961E040E616856636217938BE0D3AF670A8
            B5246545B1AF4BEB5E2C37E89676FBB49A8DAE16B0525A5DDF68B4DD32B4CA01
            E12B7E4D47D5664FFA85952B9E1398EADB643BBF711EBCC235CC0CD9366DDA05
            B53DFCE9DA35276BBAC76E6A1D25B4A0D4640665EAB4470F56A7A41CC3CC2812
            06549E13F72A239C76A15E32D289C1AB693A6FEE4567CBA9C21656B2BC918E5E
            18FD39FCD19A4B8E0D56F93EB07222CA7BF72F07A728C80A46DF0EEC6C9D8F6D
            5B5BF747A89352FF00506D1A1CC5419945B812AA94F11DDCAC9A0FDF3CF2DA6F
            C48E227A24C6BDDD5ED8ED19ACE877CFB4D321AC5AB57EEBC6AA6A36B56A7562
            62BBA8774D6A6EE0ADCD399E2766A61D52D6403F21092B4B4847821B4A461200
            110B89B9B27F6949423A5C12DC7411AC6D9180100702339EA0E22D9456B65A97
            3B2FDFE8DF6CABEBC7ED31D30A85C546FAA7A5BA62D9D43B83BC6F8DA7DE9758
            4484B2F3CBDB9A71B563A94B2BEA0623A98B8B94BEEF07273771A86B7C9B5E38
            13C08CE16A27991E27DD12D870B820BA4D9AD83D2F0DAD8D2BDFA69AEE568B4E
            54BDB7AA568A1B9C7508E141AD52D49977B24742B96724558EA4A567C223591A
            3A977225FD3F74E4BB24F846272238A48D1180100713E3CF3EE834BB5ECB1B7B
            2B17B3FB781776C3B783A13BA8B39F7D6F5AD5A6DEAAC9256509AAD1DD1DCCF4
            AAF1D52E30E3B8CF20B4A558CA018DBC75594648D4C95AC6703736E99EA2DA1A
            B5A79646A8E9FD598AFD9370D2652B7499C688299A9498692EB4B18F34AC6478
            1C8F08994269ADA3CF674DC64D33DDA5008CF0A418BBC03B62A53484069080D2
            3A1E19491FDFC2051AD726A2BF484F9F6CAEFABF9434DFEA89288765DFF7744F
            30693A5C966AE91A528A5C23A70622D2F10040F54FC62927A4551B1FFD0E43FF
            009016BE8FFF0015A63FAB6522618C7B8108CE25EA232ED07DB3F011BF18A5CA
            38A76C5C53484069080D23806C08A35B2A442408AA07280100200400803AD612
            71900F3F28B652D16B8ECFC4ACD22995A909EA3D569B2554A44D34A666A5661A
            4B8CCD36AC8521C42814A9241C1041041C18A3826648C9AF0633BBF1F45AB617
            BA59DAD5EDA0ED55F67BAA932B5BEB36C3087EDF9C74E4E5FA4B87859C9C7397
            536073F60C736E71719BD9D2B6CBCE9F1E4C4D7759E8C276A46DC1EA9D46C3D3
            9B7375766339522A1624F2553A519FBBA64CF03C0E3EE5B2E13E11CAAD884B94
            77686713E24586752349F54B46AB7336BEADE9ADFBA5B71B448769F71516669B
            309C1EBC330842B1F34731D36BD8EDAA8BE497C921490A490B4F98E622DED65D
            DC4723CE285DB191D228994D8C8F310D95230D8115020081E84621AD8EED3D90
            C719E64679F5E71728B8F28BDD6EEF24F6DB7EE4B5CB691AB36DEB86DDF522E1
            D2FD4AA52F8D99FA73C101F6BEE9899695F6B7E5D40616D380A08F2382362D6E
            A4A7C1A977690A91D1B4CBB123B60ECBED54D05A84C566469763EE7AD24B1297
            CDB8C29425DE2B484B754A785655EA6F292B4F09254CB89521448E052A556D78
            A6B6416FEC9D396BD8BE04A925B04A8AC124827C47846E6F668EB47D05439C51
            835F4FA5E5DA0BFB31D4ED36ECF1D3FB803D6F5AE19BC2FD4CBBBC9DABBA8224
            24DC00E15DCB0B5CCA938C82F364F231C0C856F624981B5EE9F7330A300671CB
            00E7311D5536C965CAEC7A47645C5108151001280B5A53C452A24A41FA33CBE8
            8A45FDDA2AF88B66CD2F455F6774FDB6767DBBAFF7549C952F52F596A69B8807
            D484BB2B4097E3629CD13F2B817FE33318E84BE07844B71D4A115B641B2B5A73
            9E92F065082B14B5709154A6F0F86265073F9E3A9B5F271E3096B7A31A2F4A8F
            6DD21AFDD98F5DD52A1B72554BB34A2E093BC1A534EA56B14E733293A391CE03
            5309731D32807C23997D08B4D1D8C1CE4AAE8D60EA494AD49E5CB9444BDD9382
            1002008639E61B7AD16B433C1823A8E63FBFD108CBB57053CB36357A24FBFDFF
            000D5B5FBCF63B7CD70CC6A1695A8542DB4BCE65C9CB5669C3C2DA39E5425661
            4B6CFDEA5E67CE24B8CB9734886E6AD942A772F733004A95C29C827CFE88EBD6
            5A5C1C183DF93B939C738BD17918A8100743DD0FC7F440A4BC1A8AFD213FF2CA
            EFABF9454DFEA892886E63F989E607F84B340F94A8D5ABEC74A9F8394632F100
            40F54FC62D9F82A8D8FDE8727EE02D7EFF006AD33FD5929131C67F1909CE7F22
            32ED1F2CFC04744E21DD002004008010020040080100228D82C81DB75DAC772F
            64C6996826A8D0F47289ACF4EBA2E999A1542426AA8EC83B2ED37285E0B61D42
            549E32A4F09E20460FC634AEEF552D37EE6F58D93ACDAF828EF67FE956766EEE
            166E9F6BEB4CCDF3B45BCDF21BE2BB1A4CDD196BC01C22A92A0A503271C4EB6D
            A70012A8B69E4232362E71138477E4C9134F35274EB54AD7A7DE1A637DD9FA8B
            684CA42E5AA943A9333D2AFA4F3050F32A524F2F7C6DF7A92396E9B8F07B8E26
            94010A4E3E316AA6996B64BBD42D2ED37D58A2AEDAD52D3EB1F51ADC5E78E46B
            D4897A8CB9C8C1FB53E85A7F345CE8A652370D3E0B496B77A3CFD91DAE4ECE54
            2B3B43B2EC6AE3C5599DB3E726688E249F26D85F723E66E304ACA32F26EC32B5
            23E196A2D5EF439365F729997F463723B8AD2874F129B66A8892AEB009FB9256
            869CE1E9F7598D5A98D46FD2CFD545B0756FD0DCDDC50573D31A2BBA9D05D479
            500AA5E5EBB4D9DA2BEB501C82968F586C67CC08E7CB0DAE11D1A3D40A6FFBBC
            168BDC47A3D7DAD9B6BA6546E1B936A95DD43B6651B5BB3150B16A4C579286D2
            0952FB864899E1C02AC967900724460A98971E51D2A396A135AD965975A75879
            D65E69C61E428A5685A0A5485038214938214082083D088E74E9F6BD1BF0945F
            28E11697880100229A070E59C6300C5432F2DD80FB91B9B6D7DAB3B4EAB50E7D
            F97A0DD75C161DC12E9590DCE53EA092DE1691F28A1D4B0E27C9490637B153FB
            DECE5E669A953699B74A5B086CA720F0923A607238FF00744C629EB92032652C
            6F63753626CA36BFAD7B9ED4475816E5A1427EA89965381B554E6F87825A4DB3
            FBE3CFA9968797113E063156A8A317B362D6939C9451A6475CF58EFCDC36B16A
            6EBAEA9565EAEEA2DDD5C9CB82B336ACFF00D65F5959007DCA4726D294F2425B
            40887DC54EE949ECF43B7A7DB0497B12B80070711AA666B7E48C0A8801D200A8
            1DA96DBB50377FB8ED1CDB269736C0BE6F5AE31469279E415332415ED2E65EE1
            F6BB9650971D5E30709241E519E851EF66BDCDCC69C1C99745DEF761A76A8EC3
            29352BA2E5B0EE7D5BD18920A26EBD3CA94C54E4E5584F24B9312A9299A936F0
            A3CD6D140E797237EA59CB4DA3956B93A6E5C9661377DE79C8BBAE720A8A462A
            3303DAF118E21CFDD88E639CE3C33B6ADE9D4FB8F91DBB2E89A97725A6AE7B82
            6A5DC4F0290F4FBAA43A8EA014F17CF0EE615BA5CA3F04721161711801002008
            1E860345C07B2DF7B55EECF6DF36846E769B3136BB669D54149BAE499563EA95
            BF3586E79923EE949470BC9CF2EF1A6D5D50237EC6AF6C8E5E528F7C346E47B4
            EEAB72F1B62DCBB6D5ABC9572D8AAC8CB5429B3ACAF89B9C9579B4B8D3A851EA
            95A169503E20C4B2954525B207560E2CF52318E5D2329442054401D0F743F1FD
            10292F06A2BF484FFCB2BBEAFE51537FAA24A21B98FE627981FE12CD03E52BE6
            8D5ABEC74A9F8394632F10040F54FC62D9F82A8D8FDE8727EE02D7EFF6AD33FD
            5929131C67F1909CE7F2232ED1F2CFC04744E21DD00200400801002004008010
            022C9830CAF4CE7F726ECFBCFF00C234F7F56AE3899C8EE2BFEFC1DEC14B5292
            FF00635E121441032120E327A9F98787C73F3470D4FB7C3263E9C651FB913BF4
            47731B83DB55745D1B7DD6AD54D17AF1571ADEB62BAFD3D2F2BCDD6DB5776F0F
            72D0463946657B34F835258FA322FB7B7EF4A97B547469B92A75FD74695EE5A8
            6C84A0B776D0532F38E27001CCEC8969449C78A0C6DD3CABD7DC736AE122DEE2
            5E5B45BD337D3D9943127B83D955ED417463BC9EB3AE56679B23C712D3486D5F
            FEE7E98DE86560FC9CDA9829EB865CE74D7D2B3EC89BE1B953725FDACBA4534E
            84F1A2E1B2E6561951EA0AE48CC2703CE366191A5BD6F9346786AC9EF45715AD
            DBB7D9037725A5D337F5A0F21C690426AB36FD31433F7C99A69BE1F9E3615F53
            F7661FA1AEBFCA4DA4F6B9F65BAE49EA8B5DA07B445C920E16E8BEE9E423E3F6
            C8A3BDA4BCB2D7635B5CA28BB729E91F764AEDFEDAA855E95B9AA56BCDD2D852
            24E85A7F2AE551F9D77194A04D6132AD8240F6D6EF2192018A55BFA4D792FB6C
            4566CD617BBFD7D96DD3EE935F771B2762D1F4CA52F6BA67AE36A812182CD2D2
            FAF21B070389671C6B5607138B715819888D79F7489CD9D0F4E0A2DECA718C26
            D0801002008120103207303E98AA5B0D6CBBB760F68556F5F7B57B6696DD2E59
            E729F45B9D3785596107ED34FA734B987093F7395069209F13CA37B1949AA8F6
            8E4E62B28D366DEC43890DA94A3CC8C9039E327F498986FDC824D7948C033D2F
            4ED06371DFFA69D9D3A7D5C71747A1265EF5D414CBBA785DA83A8269B22E60FF
            009B6B8E648F02EB270731C0CA57E349927E9FB3DCFBA4611E9C1190001E18F0
            88FEF64B26B97A3940B4400869FB020413C824924F08F79FEF9FA20B9F00CD37
            D0F9D93A6F2D60D73DF8DD74C0ED1AD292FD835A0E389F65CAA4E3697275F6CF
            FEEE58B4D710EBEB4B1F7263BF8CB67FB9918CEDC6B5146C0E4B5EB08C2D285C
            BA924608C6796318F2E479477D538A5C79226A53D98EDF69F7A383B41DFACADC
            1A8BA554AA36D6F738B4ADF6AE3A0C8A514BAF3E788F0D5A9ADF0A165455CE61
            AE1753D7DAE693A95ECA125C2E4EB5B656A4386F835C2EF5B629B9AECFBD659E
            D0FDCFE9DCE5977504ADCA64F3587A99724A038F5AA74CA4043ED90064A425C6
            CFB2E25262337742507E097D8DF46AC7C94820F2CE14064A798C73CF3FEFF0F3
            8D392D2DB37D45B22083D0C51A7E4B77F2460544003D0C004F0FCE39614391F8
            455B71E4B254FB91B30BD153DFEFD72FB289DDAE5F35B33DAB3A3AE334F95130
            E853D3F6C4C296A92739F35165497A5944F3010DE71C422518CB952442B3166E
            13DFC9956050039C75CE3264410464660548C01D0F743F1FD10292F06A2BF484
            FF00CB2BBEAFE51537FAA24A21B98FE627981FE12CD03E52BE68D5ABEC74A9F8
            394632F10040F54FC62D9F82A8D8FDE8727EE02D7EFF006AD33FD5929131C67F
            1909CE7F2232ED1F2CFC04744E21DD00200400801002004008010022C9830C9F
            4CE7F7276CF7FDA34F7F56AE38B9BFDABFEFC1DCC27EF66BC24F8FC044765E59
            325FB0E7142D808193401C139CF318814D1C4857811F445632D3DA29E78209E1
            079827CCE3991177AEC7A3CF92254A504710CA878E072F77FF004C18AAADBF26
            3A96E99048007C8C679280C734F967A8F38AFA88CB4E11473E59CF2CFF004C59
            296CBA5E445A504008038A8E39F84011041CE5D4B6838049201C67AE0F31E1D7
            1F445F04F7C1555147966C77F4543B2EEB5B6ED06B8F7CBAC76CB943D57D4E92
            6E4ED6909D64A2668D6AA57C6975493CD2B9C71287B0798650D671DE102498EB
            76B9641F2F79DF2D23255DE2EE6EC1D98ED9B5A3737A9530D356959D4299AC3A
            C1702153CF81C2C4AB64F2EF1E796D343DEBF74746E2A76AD9C9A107296BE4D3
            1DAF9ADD7EEE4B5B355B5F3552A4BAD6A15DF5D9CAF561D512525F79C2AE06C7
            DC2100A5091D1286D09031113B8AEA6DECF43C7DBFA712520040E64A8F89F38D
            336B6460040103D3A03045AD9F548C94FD4A7252429722F54AA8FBC89795976C
            12B987967850D240EAA5A8848F79F7C66B7A7DD2D14AF3508771B8E3B25365F2
            7B0ED81EDEB6EEE4AA18BC242909AB5D2E7070ADFAECE0F589B5287814ADCEE8
            0FB90D81E1130B5876C4F3DBDB87527B65CA1A4A928C1C743C8787BA368D4224
            1FB672239E62D5C32DA8B7C2288B7DDB05DBC7689685D7341F71B6A375AA1381
            73149AB4BF0B753B667B87089C9098C65A707429F90B4E52B041C462AF6B0999
            ECEEA54E5B46A71ED25ECEED71ECD0DC8D7F4075924553D4D585542D2B9D864B
            52377524ACA5336C673C0B1C92ECB9512CAC94FC929518C5FDB76F8F04E71F91
            EF45BFCA4A49F71C7F7F74739CB6B4745ADF2462854400803AF18C9C78C52A73
            148BE9CF45D3BB1A77E33FD9DBDA03A2DAED3938FCB6984F4C0B5AFC9642F01F
            A04EBADB4E3A47DD997752CCCA47DF32012029463A16155C19C7CA5A7AA99B83
            2955AA7562464EA54C9A979EA74C3487D89865616D4C34A48521C6D60E149524
            850233CA254AA9059474CFD62AC10074C4664CA1D9D62A0E87BA1F8FE8814978
            3515FA427FE595DF57F28A9BFD512510DCC7F313CC0FF0ECB3481CD46356A794
            74A1E34463197880207AA7E316CBC1546C7EF4393F7016BF7FB5699FEAC94898
            631FF6C84E73F9119768F967E023A4710EE801002004008010020040080116C9
            6C1865FA66E9E2DA76CF3981FF0048F3BE79FF00CDAB8E26656D47FEFC1DFC04
            77391AF006474E7E711D7E79260B5A48871E21DADF8455435EE72E2F3188C726
            FE0B5BFC80A24E303E98BBB65F014BF243279728AA4D72D174A27219F1188CDC
            18C8C5B249838E3E1F4453B57C8FFC90CE0E303FA22D717EDC8DE88F113D003F
            3C592EE5EC5CA5F91C5CC0C45FC68B3B9EC89C8F239E9E11673BD1992DFB9E82
            D7B4EE8BDAE3A2DA566DB75EBBEEBA8BC25E9F4AA649B933373EE938086D8424
            AD593E43E8EB1B14A8CA46BD7B88C3CB3375EC57F45E6E37AB768EE77B4C6DC6
            2974C945B153A06933CA0EBD3AE0095A1EB808CA5290707D4412A3801D20650A
            ECDAD869F7323390CC2947B60678B2B2CC52E5D994976D96259080DB68420212
            84A460240030000001E40011208D38A8E91186DB96CC0B3D2F5ED0A159B9B4C3
            B38F4EAAFEB1214BF57BD751932EE652E4D2D2A34DA73A075E16CB938A4FF1E5
            F973E5C2C957515D9B24D87B2EE7EA48C1DB008F67E47813E23C0C47541296F6
            4BBEA22976EC8E543EE73F3C51A7BE0A2E4655F7BF9E29A97C0E4655F7BF9E1A
            97C0E481510389430904679F87FBE0B7EE51A2FCDE8E36C93EBCBED34D2D99B9
            68C6A9A53A6CDFF842B8C388E269E7259C4890975781EF268B4AC78A5A73978C
            75F1F4B724CE4662F3B69B8FB9B60A54612AF22A27974E7FF1E71298AE08344F
            AE2E2E6431D7181164D6D16A3A9485608E3207BA2D84345C5A9BB5EBB336C3ED
            37DA3DD3A4557F52A3EADD292E56B4FAE152405D1AB49410942967A4B4C03DC3
            A9E852A4AB04A046BDE505346ED95DBA52DFB1A862FDB0EF0D2EBDAF0D36D42B
            7A7AD4BEE815499A3D669930829729D3B2EE169E6083CF92D2A3E3E7E3110B8A
            7A9F089E5BD55382923C9E55F7BF9E30EA5F066E4655F7BF9E1A97C0E4655F7B
            F9E1A97C0E486491CC622AA32F82BDAFE4E5C4398537C6839E249FBAC8C1E982
            3E6C4372DEF45DC69A368D7A311BFF00FAF0F6094BD20BDAB86A3AD5A3EE3169
            5483EE714C4F519492AA64DAB279FDA92E4B9239714B9F744B6C6AC6A69FC101
            CC5B4A9CDFE4C9400CAC1CC741CF4F47263E0EF1C801190B8F9DE380797BE051
            9A8B3D214E5DB2BBEAC73FF9C34EFEA8928886561BABBF8275836FD1DA2CCFC4
            7C067E78E74D36F7A3A507C11CABEF7F3C5BA97C19391957DEFE786A5F039192
            48CA7114927AE51589B207D0E51FF9016BFE3FFBD6991FFF00192912CC54FF00
            B642737FCBC9976A53939CF2C08EB9C44F67640A880100200400801002004008
            02D4FDABDD947A45DAC1A55A75A5FAAFA9BA91A5AD5B15B7AB94D9EB7112AB5B
            8FAE5CB252F2261B5852384E709E139F18D4B8B7535A66D5ADCCA9B7DBEE61DF
            BAFF0043E3761602266BBB48D7AD39DC3D1F23146B859FD8E55509C72E178A9C
            957CF9F12D8F818E356C53970890DAE6A31FDC592F567B0FFB57F4590FBF78EC
            635CAA724C93DECDDB926CD6E5D23C541C9371CF67DF88D4763562B5A37FFA9D
            093E596FABD743B5AB4D66DCA7EA268F6ABD8D3E9C92CD5ADC9D94200EBCDC69
            20FCD1A93B6ABF06E42E2935C325629D964BA5833B288787DC29E4050F88CE52
            7E31728D5D6F5C7FE4D8F568FC9DA1A7569E2402E0CE3E3F0C67FDD16EE6F868
            AFA94BCA671EE5EFDE9D49FE303F9B9462F458F59114B2F138EEDDE9D0820E7E
            115F4195F557C1D8259F242434FA8E3C13D3E3E03E987A0CA7AABD91F33AA618
            500FCD4AB679FCA750919F2CA8E3FA628A8D4DE9265DDF4B5B93D1EDACED35D4
            8D439D96A6D81A7B7DDF33EF10965AA2D1A6674AD47C07748233EEE519E16F56
            5EC6BCEE2947DCBA4E80760C76B06E31DA7BB67ECEF516CEA24C1CFD56BD14D5
            BF2896F1FB60332A0B58F72524FC63629E2A6F991A55B33463C190A6D2FD0DDB
            A66A668D5EDED6EA2954692F61D7AD9D39922F3EA19C96D7549C48427C8944B9
            F72847568E392E19C6BACD296D44CB27653D95BB16ECFCA322476CBA136DDA17
            2A9BEEE76E89D067EBD51F3EF6A0F713A01C9F6505291E023A54EDA28E255B99
            CFCB2E18C4BB2C95168240C01CB946C691A6FB8A70DDFEE674EF677B71D5FDCB
            6AAD4A5A9B64DA14398AB4C071C0DAA75D4A70CCAB64F571E74B6D253E257EE8
            D7B8DFB1B14126F4D9A617713B85BCB73DAEBAB5B85D54AF484FEA15E35E9AAF
            55566652A0D38EB9C486507C10D2436D240E5C2DA47488CD7A35253724B64FAC
            E14553499277D669EA4859A848127A9F5847E98C1F493F746E6E8FC9C0CE4902
            409D9223FEF08FED453B2B2E122EEEA5F243D7A47F86C9FF00F308FD314D56F8
            FF0081DD4BE47AEC97F0D93FFE611FDA86AB7C7FC0EEA5EECEC6A6A456BE133F
            2283E04CC2303F39F0CF3F0116CE955970E257D7A496D336747A29BB24676EDD
            9F4EEE1AE2A5191D42D63A88B84171003CC5025C298A7B5C5D7857FE31323A7E
            DC3DD128C7DB76C36C80E62EBBEA69194534829CF128139CC749C93F0726116B
            C9DD02F100408C8803E77523BBE0E7E516B5B4557935CDFA5C7B0AA6E8E6E2F4
            D77CF6352E5A97686A5B6BA15DBC09096D9B9255A0A6E609C612666591CCFDD2
            E5FCD4638591B592FBA2B6C93E16F56FD393E0C3BCCEC9679D4A9B8FFBC27F4C
            71FB2BFF00A7FF00649FD5A3F23D7A47FD254EFC7A7F4C3B2BFF00A7FE07AB47
            E47AF48FFA4A9DF8F4FE987657FF004FFC0F568FC8F5E92FF49D3BF1C9FD30EC
            AFFE91EAD1F92067A4083FF28D3547FEDD3FA628E9D7FF004FFC0F5A8FB32F3D
            D83BDA192DD9F3DA25A577CDC57248D33452EF57EC22F9066D3DDA29F34EA12C
            CE2C67ACB4CA197B88F3EECBA3A28C7431F4E717C9C7CDA84E2F5E4DB99253CD
            4EB4C4CCBBAD3F2EE242D0E34A0A43892010A4ABEE92410411D7AC49231DE9B2
            0F26D3D1FA9190A9F14D150410072C1262D97828CD453E90BCD4937DB2FBEB4A
            E7E45045C34EE4A75208FF0091E473919F3C888ADE5BCA726C9E60EE211A1A65
            9944FC89E953A763FEDD31AAE8D68F0A27429D7A4D6DB1EBD23FE92A77E3D3FA
            629D95FF00D3FF00064F568FC8F5E91FF4953BF1E9FD30ECAFFE91EAD0F9027E
            409E551A728FB9F4F4F13D62AA9566F528F05D0B9A317B4CD90DE870BEC3DB02
            DC1061E61EE1D5799CA9B752B03FE4C94207B24E0E31125B0A7A8E9907CE5CC6
            7577132F548C4743670A3139454C82004008010020040080100200E0A4051048
            E62051AD9D7DC2324F08260DB28A27012AD0515A51C2B3D483827E78AECB5C39
            D9F0552DFA356E595255AA5D3AB1287396A6D94BC83FFC2B0445AD6CC916D786
            53CDE9B2ADA16A2F7ABBEF6BBB7CBB9F739ADD9FB3A9EEB8BF8ACB5C47E98B3D
            28FC193D69FC94B775762B7650DEAF38FDC5D9FF00B6399795F2972F6D352AA5
            7C4B3C316BB783F62E8DC4D7864AB99F47CBB1BE683C3EB0BD2096E3EBDC3938
            DE3E1C2F72F9A31BB483F267590AA96933F3D9F478BB1B5964B23631A6AE8CE7
            89C9D9F52BF9C5FCC159C0AFF52ADF27A6A47605F63C515485CAEC034226969E
            867255E99CFC438E281F9E2AAD63FF00596FF50ADF254BD8FD98FD9E5A6E5955
            93B26DB0D014D80105AB32456538E9CD6D9E7EF8BE36F05E118E57751F9655DD
            B561599664B093B42D3B6AD495C04F754C906651200E830D25231EE8CA925E0C
            2E6DF967A7F566CAB88A415799398AB2CD1CFBA1C59FF7C0A288EEC1E6739F8C
            0B88A5001CFF00BE0519E3AFCD38B07546DD99B47522CBB5AFEB51E71B75DA6D
            6641A9C957568571214A69D4A92483CC647231494535A6560DC7944881B16D97
            01FB9276D3F90F4DFD4C6076D0F832FAF3F93F3DFD816C7E65C53CFECFF6CCE3
            8AEA4D914EE7E1FBD43E9A1F03D79FC9D5F63EB62FF81E6D93F2229DFAA87D34
            3E0B5D597C90FB1F5B17FC0EB6CBF9114EFD5464F4A3F05DEBCFE47D8FBD8BFE
            075B65FC88A77EAA28E8C7E07AF3F920AECF9D8BAD2527677B6520F5FF009914
            EFD545BF4D07E51557135EE555D0E8146B6A934DA05BF4AA7D0E8526C372B272
            728CA5A62559427852DB6DA404A12000000001195474B48C2F6DED9FAC120127
            DF08C75E0AB6728B8A080114681D4E3497014A86527DF08AD2D03C16A1E93E99
            6ADD0DAB675534FACAD49B710FA2653215FA6333F2E97939E17034F2549E3193
            856323262D9413F28AC64D7289289D8B6CB539C6D1F6D03E163D37F53167D3C3
            E0BFD697C9CBEB18D977E091B6AFC87A6FEAA1F4F0F81EACBE47D631B2EFC123
            6D5F90F4DFD543E9E1F03D597C8FAC6365DF8246DABF21E9BFAA87D3C3E07AB2
            F921F58BECBBF048DB5FE43D37F550FA787C0F5A5F2413B15D96A42929DA56DB
            024E33FF0032A9DCF0303FCCF9123E78A2A11F1A324AEAA35A6CA9E90A6C9532
            5656469F2ACC948B0D2596596870A1A6D29094A5291C800000078011992D1AEF
            9E4FBE2A0EA71A4B98E248563A67C0C014F576ED176B37F5C754BC2F9DB7E855
            E5764F2C393B53AADA923353736B09090A75E71A2A59C240C93E02304A845F94
            668DC4D2ED4F83CFFD631B2EF1DA56DA73FC87A6FEA628ADE1F05BEACBE487D6
            31B2EFC1236D5F90F4DFD545DF4F0F81EACBE47D631B2EFC1236D5F90F4DFD54
            3E9E1F03D597C903B16D969E47691B6AC75E763D37F551476F0D6B455579AE53
            27369C691696E8FD2E7687A53A736369AD1665FF005A9894A0D2999065F7B842
            7BC5A194A52A5F0A523888CE008C90A6A3C231D49393DB263457B79D94117010
            0200400801002004008010020040080100200400801002004008010020040080
            1002004008010020040080100200400801002004008010020040080100200400
            8010020040080100200400801002004008010020040080100200400801002004
            0080100200400801002004008010020040080100200400801002004008010020
            0400801002004008010020040080100200400801002004008010020040080100
            2004008010020040080100200400801002004008010020040080100200400801
            0020040080100200400801002004008010020040080100200400801002004008
            010020040080100200401FFFD9}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 11.338590000000000000
        Top = 257.008040000000000000
        Width = 740.787880000000000000
        Condition = 'FrxCdEmitidos."AnioTimbre"'
        ReprintOnNewPage = True
        StartNewPage = True
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 22.677170240000000000
        Top = 291.023810000000000000
        Width = 740.787880000000000000
        Condition = 'FrxCdEmitidos."RfcEmpresa"'
        object Memo4: TfrxMemoView
          Top = 7.559059999999988000
          Width = 740.787880000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsItalic]
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            
              'A'#241'o [FrxCdEmitidos."AnioTimbre"]  Empresa Emisora: [FrxCdEmitido' +
              's."RfcEmpresa"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'calibri'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 740.787880000000000000
        object Memo10: TfrxMemoView
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13073699
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial Unicode MS'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO GENERAL DE TIMBRES')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 29.574820240000000000
        Top = 336.378170000000000000
        Width = 740.787880000000000000
        Condition = 'FrxCdEmitidos."EstadoTimbre"'
        object Memo5: TfrxMemoView
          Left = 68.031540000000010000
          Top = 14.456661180000030000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'UUID')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 14.456661180000030000
          Width = 68.031540000000010000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha y Hr.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 245.669450000000000000
          Top = 14.456661180000030000
          Width = 166.299320000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Empleado')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 411.968770000000000000
          Top = 14.456661180000030000
          Width = 86.929190000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R.F.C.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 498.897960000000000000
          Top = 14.456661180000030000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N.S.S.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 570.709030000000000000
          Top = 14.456661180000030000
          Width = 56.692950000000010000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Percepci'#243'n')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 627.401980000000000000
          Top = 14.456661180000030000
          Width = 56.692950000000010000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Deducci'#243'n')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 684.094930000000000000
          Top = 14.456709999999990000
          Width = 56.692950000000010000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Neto')
          ParentFont = False
        end
        object FrxCdEmitidosAnioTimbre: TfrxMemoView
          Width = 740.787880000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxCdEmitidos
          DataSetName = 'FrxCdEmitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clNone
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            ' Listado de TIMBRES [FrxCdEmitidos."EstadoTimbre"] ')
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
    end
  end
  object FrxCdDatosEmpresa: TfrxDBDataset
    UserName = 'FrxCdDatosEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor1=valor1'
      'valor2=valor2'
      'valor3=valor3'
      'valor4=valor4'
      'valor5=valor5')
    DataSet = CdDatosEmpresa
    BCDToCurrency = False
    Left = 160
    Top = 312
  end
  object CdDatosEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 376
  end
  object cxStyleReposEstilosGrid: TcxStyleRepository
    Left = 832
    Top = 56
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxstylFont: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object cxstylFontContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
    end
    object cxstylSexo: TcxStyle
      AssignedValues = [svBitmap]
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000010000
        000300000006000000080000000B0000000D0000000E0000000F0000000F0000
        00100000000F0000000E0000000C000000090000000500000001000000030310
        2141082852920A346DBD0C3A7AD30E4797FF0E4595FF0D4594FF0D4393FF0C43
        91FF0B428FFF083471D6072D63C105214A99020D1D4900000006000000071354
        A7FF267BCDFF2683D8FF2889DEFF2C96ECFF2994ECFF2792EAFF2490E9FF238E
        E8FF228DE8FF1D7ED7FF1B76CFFF176AC0FF0D4494FF0000000D000000061453
        A1E965BCF2FF4EB1F5FF37A3F2FF36A2F1FF359FF1FF339FF0FF319CF0FF309B
        EFFF2E98EEFF2D97EDFF339BEDFF389BE8FF0F4791EE0000000C000000030C2D
        567B307AC7FF60AEE6FF74CBFAFF4BACF1FF2E7CCAFF2565B4FF225EABFF266C
        B9FF3FA0E9FF56B5F5FF4098DEFF2169BAFF0929518800000006000000000000
        00030616293C134884B32D79C9FF5094D1FF67A0D6FF72A5D4FF5E89BFFF3C68
        ABFF3471B6FF246EBFFF10427DBA051528460000000700000001000000000000
        00000000000100000003051221321A5594CC5181B4FF325994FF2C538FFF315A
        97FF164D8DCD04111F3600000007000000030000000100000000000000000000
        0000000000000000000000000007121F336B4572ACFF659FD7FF629CD6FF3968
        A5FF0B192F6F0000000800000000000000000000000000000000000000000000
        000000000000000000010000000E2B466EC379AFDAFF90CCF5FF77B4E8FF5991
        CBFF1D3A66CA0000000E00000001000000000000000000000000000000000000
        0000000000000101010315253F8A36598DF8BAE1F6FFBDE6FCFF8CC9F2FF69A5
        DBFF21447AF70D19349501010103000000000000000000000000000000000000
        000000000000010101052A4B7DE2385F95FFD5F0FBFFD1EDFBFF94CFF3FF6DA7
        DDFF24467DFF172C59E201010105000000000000000000000000000000000000
        0000000000000101010538649EFA3C6CA8FFBAD7E9FF698EB7FF325A91FF2B50
        86FF28518FFE1D3869FA01010105000000000000000000000000000000000000
        00000000000001010104386498DC539CE0FF497BB7FF5390CDFF4E8FD3FF3C76
        C1FF396CB1FF223F72FF01010105000000000000000000000000000000000000
        000000000000010101021525374D4B84C2F17FB9E7FF86BDE9FF8DC4EEFF75A8
        DAFF5683B8FF1C3359BF01010104000000000000000000000000000000000000
        00000000000000000000010101020E16202B37618DB03D6B9FD24276B3FF3054
        85D51C3251930305071200000001000000000000000000000000000000000000
        0000000000000000000000000000000000010101010301010105010101050101
        0104010101030000000100000000000000000000000000000000}
    end
  end
  object DxManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 440
    Top = 248
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbrOpciones: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 933
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnMostrarTodos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'CxDateInicio'
        end
        item
          Visible = True
          ItemName = 'CxDateTermino'
        end
        item
          Visible = True
          ItemName = 'dxBtnFiltrar'
        end
        item
          Visible = True
          ItemName = 'dxBtnActualizar'
        end
        item
          Visible = True
          ItemName = 'btnImprimir'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrExportar: TdxBar
      Caption = 'Exportar'
      CaptionButtons = <>
      DockedLeft = 436
      DockedTop = 0
      FloatLeft = 933
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnExportarExcel'
        end
        item
          Visible = True
          ItemName = 'dxBtnExportarPDF'
        end
        item
          Visible = True
          ItemName = 'dxBtnExtraXML'
        end
        item
          Visible = True
          ItemName = 'dxBtnExtraerQR'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBtnMostrarTodos: TdxBarLargeButton
      Caption = '&Mostrar Todo'
      Category = 0
      Hint = 'Mostrar Todo'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000020000
        0004000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0006000000040000000200000001000000000000000000000000000000060000
        000E000000150000001700000018000000180000001800000018000000190000
        001900000019000000190000001900000019000000190000001A0000001A0000
        001A0000001A0000001A0000001A0000001A0000001B0000001B0000001A0000
        001700000010000000070000000200000000000000000000000000000010173B
        7ACD2557A4FF2859A5FF2758A6FF2757A5FF2558A5FF2656A3FF2656A4FF2456
        A4FF2455A4FF2455A3FF2354A2FF2353A2FF2252A2FF2253A2FF2151A1FF2151
        A1FF2051A1FF2050A0FF1F4FA0FF1F4F9FFF1F4E9FFF1E4D9FFF1D4D9EFF1C4B
        9CFF173F8AEE040A143D0000000B000000020000000000000000000000151D50
        9FFF2359A5FF4F95CFFF64BBEDFF47A7E7FF46A5E6FF44A4E6FF42A3E5FF40A2
        E4FF3FA1E4FF3E9FE3FF3C9EE3FF3B9DE2FF3A9CE1FF389BE1FF389AE1FF359A
        E1FF3598E0FF3497E0FF3397DEFF3296E0FF3195DEFF3095DEFF3095DEFF2E90
        DAFF297DCAFF12326BBF00000011000000040000000000000000000000162154
        A3FF2E65ADFF3D7BBCFF7ECBF2FF4FADE9FF4BAAE8FF49AAE8FF47A7E6FF45A6
        E6FF43A5E5FF43A3E4FF40A2E5FF40A1E4FF3FA0E4FF3D9FE3FF3B9DE3FF3A9D
        E2FF399CE2FF379BE1FF379AE2FF3599E1FF3398E1FF3298DFFF3197DFFF3096
        DFFF3295DEFF1A4A98F80103051D00000005000000010000000000000014245C
        A9FF3E76B9FF2862ADFF8CD1F2FF64BCEEFF52B0EBFF51AFEAFF50AEE9FF4DAD
        E8FF4CAAE7FF4AA9E7FF48A8E7FF47A7E6FF45A5E6FF43A4E6FF42A3E5FF41A1
        E4FF3FA1E4FF3D9FE4FF3C9FE3FF3B9EE3FF3A9DE2FF399CE1FF379AE1FF3699
        E0FF389CE1FF2363B1FF08162E5D000000080000000100000000000000132661
        AFFF4D86C3FF2765AEFF7CBAE1FF82CFF3FF59B6EDFF57B5EDFF57B4ECFF54B3
        ECFF53B1EAFF51B0EAFF51AEE8FF4FADE8FF4CAAE8FF4AAAE7FF49A8E7FF48A8
        E6FF46A5E5FF44A6E6FF43A4E5FF41A3E5FF40A2E4FF3FA1E3FF3E9FE2FF3C9F
        E2FF3D9FE3FF2F7AC4FF0F2A56970000000A0000000200000000000000122A67
        B1FF5C95CEFF2F6FB7FF619DCFFF9FDEF8FF5FBAF0FF5EBAEFFF5EB9EEFF5CB9
        EDFF5BB7EDFF59B7EDFF58B4ECFF57B4EBFF55B2EAFF53B0EAFF51AFEAFF4FAF
        E9FF4EADE9FF4CABE8FF4BAAE7FF49A8E7FF48A7E7FF46A6E6FF45A5E5FF43A4
        E5FF44A4E4FF4198D9FF164385D80000000D0000000300000001000000112D6C
        B5FF6BA5D6FF387FC4FF4183C0FFB5E8FBFF70C6F3FF65BFF1FF64BFF1FF62BE
        F1FF62BDEFFF61BCF0FF60BBEFFF5DBAEEFF5DB9EEFF5CB7EDFF5AB6ECFF58B5
        EBFF57B3EBFF55B1EBFF53B0E9FF51AFE9FF50AEE9FF4EADE8FF4CABE8FF4AAA
        E6FF49A9E6FF50ADE8FF225EAAFF030A132C0000000400000001000000103071
        B7FF79B4DFFF4791D1FF387EBEFFA7DBF1FF91D9F8FF6BC4F3FF6BC3F3FF69C3
        F3FF69C2F2FF67C1F0FF66C0F0FF66C0F0FF64BFEFFF64BEEFFF62BCEEFF60BC
        EFFF5EBAEDFF5CB9EDFF5CB8EDFF59B5ECFF58B4EBFF56B2EAFF54B1EAFF53B0
        E9FF50AEE8FF56B1E9FF357CC1FF0C2344740000000700000002000000103176
        BAFF88C0E7FF53A2DCFF418CCAFF87BFE0FFB1E8FBFF70C9F5FF70C9F5FF6FC7
        F4FF6EC7F4FF6EC6F3FF6DC6F3FF6CC5F3FF6BC4F1FF6AC3F1FF6AC3F1FF69C1
        F1FF67C0F0FF65BFF0FF63BDEEFF62BDEEFF61BBEEFF5EBAEEFF5DB8ECFF5AB6
        ECFF59B5EBFF5CB7EBFF4D9DD7FF153F75BA00000009000000020000000F347B
        BDFF98CDEDFF61B1E4FF509FDAFF65A6D3FFCBF4FDFF7BD1F7FF75CDF6FF75CD
        F6FF74CCF6FF73CAF6FF73CAF5FF71C9F4FF71C9F4FF70C7F4FF70C7F2FF6EC7
        F2FF6EC6F2FF6DC5F2FF6BC4F2FF6AC3F1FF68C1EFFF66BFEFFF64BFEFFF63BE
        EFFF61BBEDFF61BBEDFF69BDECFF215DA4F701030614000000030000000E357E
        BFFFA3D9F3FF71C1EDFF63B7EAFF4C98CDFFC1E9F7FFD4F6FEFFD4F6FEFFD3F6
        FEFFD2F6FEFFD2F6FEFFD2F5FEFFD0F4FEFFCDF3FCFFAEE8FAFF7ACEF5FF74CA
        F5FF73C9F4FF72CAF4FF72C9F3FF71C8F3FF6FC6F3FF6EC6F2FF6DC4F1FF6BC3
        F0FF69C2F0FF67C0EFFF71C5F0FF377DBFFF091C3255000000050000000D3782
        C1FFB0E2F8FF7CCDF4FF73C7F2FF5FB5E6FF50A0D3FF4D9ACDFF4C98CCFF4B98
        CBFF4996CBFF4894CBFF4693CAFF4591CAFF73B1D9FFC8EEF9FFC5F1FCFF88D6
        F7FF78CEF6FF78CDF6FF77CCF6FF76CDF5FF76CCF5FF75CBF4FF73CAF3FF72C9
        F3FF70C7F2FF6EC6F2FF76C9F2FF56A1D5FF133A659D000000060000000C3985
        C3FFBAEBFCFF87D9FAFF82D6F9FF7BD1F9FF74CEF8FF70CBF8FF6DC7F6FF6AC6
        F5FF68C5F5FF65C1F4FF63BFF4FF5DBAF2FF50AAE5FF529DD2FFA7D5ECFFD9F7
        FEFFD8F7FEFFD7F7FEFFD7F7FEFFD6F6FEFFD6F6FEFFD5F6FEFFD4F5FEFFD4F5
        FEFFD2F4FDFFD1F4FDFFD0F3FDFFB8E1F2FF1D5897E0000000070000000B3B89
        C5FFC3F1FEFF92E2FEFF8EE0FEFF8BDEFEFF88DDFDFF85DAFCFF82D8FCFF7FD6
        FCFF7CD3FBFF7AD2FAFF77D1FAFFADE0FAFFA5D9F4FF9ED5F2FF7EBCE2FF4796
        CBFF4694CBFF4592CAFF4491C9FF418FC8FF418FC8FF3F8CC7FF3E8BC7FF3D8A
        C6FF3B88C5FF226AB1FF216AB0FF2064A6F415416DA4000000050000000B3C8C
        C7FFC7F3FFFF96E6FEFF94E4FFFF92E3FEFF90E1FEFF8DDFFEFF8BDDFDFF88DC
        FDFF86DAFCFF83D9FCFF80D6FCFFB3E2F6FFAA744EFF9D8C7EFFAEDBF2FF8FD3
        F7FF62C3F6FF5EBFF6FF5CBDF5FF5ABAF4FF58B8F4FF55B7F3FF53B5F3FF6EC4
        F5FF2C6CB1FF000000170000000D0000000800000006000000030000000A3D8F
        C9FFCCF5FFFF9BE8FFFF98E7FFFF96E6FFFF94E4FEFF92E3FEFF90E0FEFF8DE0
        FEFF8BDEFEFF89DDFDFF86DBFCFFB5E3F5FFAE734AFFCB9D6AFF9F8D7DFFB4DE
        F3FFA1DCF9FF77CFF9FF6DCAF9FFADDEF8FFA8D9F3FFA9DAF6FF7CCAF6FF7FCE
        F8FF357DBEFF0000000F00000005000000020000000100000001000000093E91
        CBFFCEF5FFFFA0EBFFFF9DEAFFFF9BE8FFFF99E7FFFF97E6FFFF94E4FFFF92E3
        FEFF90E1FEFF8EE0FEFF8CDFFEFFBBE6F8FFB18B6DFFE4C18FFFCB9D66FF9E80
        6AFFB1CEDAFFB4E1F5FF9DDAF8FFB3DDF2FFAC7046FF9DA3A3FFAEDAF0FFAEE0
        F8FF448BC6FF0000000C00000003000000000000000000000000000000084095
        CDFFD2F7FFFFA3EDFFFFA1ECFFFF9FEAFFFF9DE9FFFF9BE8FFFF99E7FFFF96E6
        FFFF94E5FFFFA1EAFEFFC0F6FEFFDDF8FBFFC9BCABFFD1A67BFFF5D498FFD7AE
        75FFA46D44FFAE917AFFC2BFB5FFC8D2D0FFB16F40FFAF7848FFA07B5FFFBECF
        D2FF91B5D2F30000000C00000003000000000000000000000000000000084297
        CEFFD5F8FFFFA7EEFFFFA5EEFFFFA3EDFFFFA1EBFFFFA0EBFFFF9DE9FFFF9BE9
        FFFFA5EDFEFF92D2ECFF3F93CBFF67A8D5FF9CC0D8FFB78B65FFF1DAAEFFF5D6
        99FFF2D295FFCFA671FFB48152FFA66D42FFB47749FFF1D094FFD3A972FF9E67
        3EFE857266CD0000001300000005000000010000000000000000000000074299
        CFFFD7F9FFFFA9F0FFFFA8EFFFFFA7EEFFFFA5EEFFFFA3EDFFFFA1ECFFFFA7ED
        FFFF8ED2ECFF2A6082A80000000B000000090000000C3A2A1C5DCFA67DFFFAE7
        BDFFF6DCA3FFF6DA9DFFF4D79DFFF4D79CFFF4D69AFFF3D59AFFF2D498FFEDCB
        92FFBD8B5AFF734526C4140C0732000000040000000000000000000000053D8D
        BDE8B2E3F3FFD5F9FEFFD4F9FEFFD4F9FEFFD4F9FEFFD3F9FEFFD3F9FEFFC5F0
        FAFF4893C1EA050B0F1A00000004000000020000000200000006543E2B79D2AC
        84FFF5E3C1FFFBEDC8FFFBF0CAFFFBF2CDFFFCF2CCFFFBF0C8FFF9EABEFFF6E0
        AEFFF7E2B7FFE8CDA8FFA9764BEC000000070000000000000000000000031127
        3445357CA6CB449DD2FF449DD2FF449DD2FF449DD1FF449DD1FF449CD1FF449C
        D1FF163345590000000400000001000000000000000000000001000000043E2F
        2259B18962E7DABD9CFFECDCC2FFF6EDD8FFFEFBE9FFFDF6D3FFFCF7D9FFF9F3
        DDFFD6B590FF8F6846C81B130D32000000030000000000000000000000010000
        0003000000050000000500000005000000050000000500000006000000060000
        0005000000030000000100000000000000000000000000000000000000000000
        0002070504104F3E2C6E8B6C4EBAAB845EE1B48157FFFEFBE5FFEBDBC2FFBF97
        6FF34B3928700000000900000003000000000000000000000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        00000000000100000002000000050000000BBB8B62FFD9BC9BFF886A4DB51510
        0C26000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000706040EAF8863E94235275D000000060000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000400000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnMostrarTodosClick
    end
    object dxBtnFiltrar: TdxBarLargeButton
      Caption = '&Aplicar Filtro'
      Category = 0
      Hint = 'Aplicar Filtro'
      Visible = ivAlways
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000005000000050000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000004000000090000001100000015000000160000
        00110000000A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000020000000908121B38173970BA204E9CF5204E9BF51638
        6FBB040C183A0000000A00000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000004000000112B639DD979B9DFFFBCECF9FF6BBFEBFF4492
        D2FF154388DC0000001300000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000006020509213475BAFFA0E6FBFFB9EFFBFF68BFECFF54AF
        E9FF1C52A2FF0104092700000007000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000807101C3C3676BBFF9DE3FAFFABE9F9FF5EB8E9FF54AE
        E8FF1F57A5FF030B184000000009000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000002000000090B1A2D563777BBFF9BE0F9FF99E2F6FF55B1E5FF51AC
        E8FF245BA8FF051126590000000B000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000B0F213C6D3677BCFF99DDF8FF84D9F3FF4AAAE2FF4EA9
        E6FF2660ABFF0716326F0000000C000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000C112849833678BDFF96DAF8FF7CD4F1FF42A4DFFF4AA7
        E4FF2864AFFF081B3E850000000E000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000030000000D152E599B367ABFFF95D8F7FF75D0EFFF399EDDFF46A4
        E3FF2B6AB4FF091E4B9E0000000F000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000500000010173566B1367CC2FF92D6F7FF6ECCEEFF3299DBFF42A1
        E2FF2D6FB9FF0A2255B300000013000000070000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00050000000C0102041D21518ED93079C3FF4697D7FF4099D8FF2A82CFFF338B
        D5FF296BB9FF0C2A6ADA000103220000000F0000000700000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000060000
        000E0E213D7026549BF23877BDFF4A99DAFF3E98DAFF3190D7FF2D88D4FF328C
        D6FF398BD4FF2F6CB6FF25599FF30E223F730000001300000009000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000070204081B1D43
        78C13575BAFF55A2DCFF60ACE1FF55A8E0FF41A3DEFF3698DCFF308FD7FF2B87
        D2FF2E8CD4FF3890D5FF3685CEFF2968B4FF1B437AC4020408210000000A0000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020000000603070C20225089D14794
        D2FF61B1E6FF72BAE8FF6EB9E8FF5DB4E5FF4AAFE3FF3EA4E1FF3597DBFF2C8A
        D5FF2F8DD6FF3F9ADCFF4298DCFF3B90D7FF2E78C3FF1F4C8AD603070C260000
        0009000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000040101020F224E84C74E9BD7FF6AB9
        EBFF81C6EEFF8ACAEFFF7EC5EEFF6CC3EBFF52BBE8FF41AAE5FF389DDFFF2D8D
        D7FF2F8BD6FF449FDEFF4DA3E3FF469CE1FF3990D8FF2D78C5FF1D4781CA0001
        0216000000070000000200000001000000000000000000000000000000000000
        00000000000000000000000000020000000816335482438CCAFF6FC0EFFF81CA
        F2FF99D6F4FF9DD8F3FF8AD1F2FF77CEF0FF55C2ECFF43B0E6FF3AA3E2FF3093
        DAFF2B8BD6FF3898DCFF50AAE6FF54A9E7FF469EE4FF378ED8FF2A6EB9FF122C
        50880000000E0000000400000001000000000000000000000000000000000000
        0000000000000000000100000005060E162A3478B7FB65B8E9FF7CC8F3FF9DD8
        F7FFACE1F8FFACE1F7FF97D9F5FF7AD4F2FF56C8EDFF44B4E8FF3BA5E3FF3095
        DCFF2A8AD5FF3697DBFF52AEE5FF5AB0EBFF50A6E7FF429BE1FF348AD4FF2761
        AAFB050B14320000000800000002000000010000000000000000000000000000
        00000000000000000002000000081E466A984896D0FF6EBFEDFF8DD2F6FFCEEF
        F8FFD3F2F8FFB6E6F9FF9CDEF7FF7FDAF3FF57CBEDFF42B4E8FF3AA5E3FF3095
        DBFF2888D4FF3191D7FF4EAAE4FF5EB4ECFF58ACEBFF49A0E5FF3A92DCFF2C74
        BEFF1636619E0000000E00000003000000010000000000000000000000000000
        0000000000000000000304090E1C377EB9F559ACDEFF79C5F1FFBAE6F9FFDAF4
        F8FFDEF6F8FFCCF0F9FFA3E3F8FF82DFF4FF56CFEEFF41B4E7FF38A5E3FF3096
        DBFF2584D2FF2B8BD3FF47A7E0FF61B6EAFF5EB1ECFF50A6E7FF3E96DFFF3085
        D0FF265FA7F603070C2500000006000000010000000000000000000000000000
        00000000000100000005153145634190CBFF60B2E4FF8ED2F6FFD2F1F8FFDFF7
        F9FFE2F8F9FFD8F5F8FFAAE8F9FF7DDFF3FF54CDEEFF3FB4E7FF37A5E2FF2E95
        DBFF2381D0FF2888D2FF45A5E0FF60B7EAFF62B4EDFF55A9E9FF439BE2FF338B
        D5FF2A6DB8FF0E233D6A00000009000000020000000000000000000000000000
        0000000000010000000625587BA24596CFFF66B6E7FFA6DDF8FFD8F4F9FFE2F8
        F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
        DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF368F
        D9FF2B76C0FF193D6AA70000000C000000030000000000000000000000000000
        000000000002000000073377A3CF4494CEFF6EBBEAFFB5E4F9FFDEF6F9FFE4F9
        FAFFE4F9FAFFDCF6FBFFD7F4FBFFCAF1FBFFCFF3FBFFD2F5FCFFCFF5FCFFC4F0
        FCFFB0E2F7FFACE1F6FF9ED8F2FF8ED1F2FF79C3F0FF60B1ECFF4BA2E6FF3992
        DBFF2C7DC7FF22528DD30000000E000000040000000000000000000000000000
        000000000002000000073E8EC3F364B2E0FFA4E1F7FFE1F7FCFFD7E7F3FF9EB9
        DCFF7C9FCFFF5985C1FF4375B7FF3D72B8FF1857ACFF1A5EB3FF1E6ABAFF277C
        C2FF549CD3FF5BA4D7FF6BB1E0FF80BFE7FF94CCEEFFBDE8F7FFA2D7F3FF59A8
        E2FF2E83CDFF2962A7F400000010000000040000000000000000000000000000
        000000000002000000074297CEFEC1ECF9FFBBCFE6FF517CBEFF1A54ADFF1F5A
        B2FF2462B6FF2566B7FF2068B8FF1C69BAFF2071BFFF257DC7FF2E8CCFFF3DA1
        D7FF55ADDDFF60B5E3FF62B9E7FF5CB4E8FF4EABE6FF3B97DAFF549CD6FFA6D3
        ECFF7EB8E3FF2C69B0FE0000000F000000040000000000000000000000000000
        000000000001000000063D8DBFEBE8F2F9FF285FB2FF1658B2FF2067BDFF2971
        C4FF2D75C4FF2D77C5FF2577C2FF2175C3FF247EC7FF2B8ACFFF369BD6FF4AB2
        DFFF68C1E9FF78CDF0FF7BD3F1FF74CEF3FF65C2F1FF4EAEE8FF3190D3FF348A
        CCFFCCEAF7FF2761A2EA0000000C000000030000000000000000000000000000
        000000000001000000031C3F546B9ECAE6FFC2D6ECFF568FCFFF246FC4FF2B76
        C8FF2F78C8FF2E7BC7FF277AC5FF2279C5FF2881CBFF2F8ED1FF3AA0D9FF50BA
        E4FF70CAECFF83D7F3FF89DEF7FF81D9F9FF71CEF5FF57B8EDFF64B2E2FFAFDA
        F1FF85B5DBFF112A466F00000008000000020000000000000000000000000000
        00000000000000000001000000041D3A4B6072ADD3F4C8E1F1FFE7F0F9FFB0CC
        EBFF90B8E2FF6DA3D8FF5294D1FF4E94D1FF2F86CCFF2F90D2FF3CA1DAFF57BC
        E5FF89D6F0FF97E0F5FFA6EAFAFFACE8FAFFB3E7FAFFCAEEFAFFAAD3EBFF5F98
        C6F5162E44660000000A00000004000000010000000000000000000000000000
        000000000000000000000000000100000004060C0F192A526A834A8AB2D37CBA
        E0FFA1CDE8FFC5E0F1FFDBECF6FFDAEBF6FFEAF4FAFFFAFDFEFFF7FCFEFFDFF1
        F8FFC9E5F4FFC3E3F3FFAAD5ECFF8ABFE1FF6BA9D6FF3E79A6D522456388050A
        0E1E000000080000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000004000000060810
        141F1F3D4F633263819E3B7398B84382ABCF4484AFD551A0D5FF509FD3FF4282
        AED53E7DA8D0376E93B92E5C7DA01B374C67070E13240000000A000000070000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0002000000030000000500000006000000060000000700000008000000080000
        0008000000080000000700000007000000050000000400000002000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000200000002000000020000
        0002000000020000000200000001000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000005000000050000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000004000000090000001100000015000000160000
        00110000000A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000020000000908121B38173970BA204E9CF5204E9BF51638
        6FBB040C183A0000000A00000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000004000000112B639DD979B9DFFFBCECF9FF6BBFEBFF4492
        D2FF154388DC0000001300000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000006020509213475BAFFA0E6FBFFB9EFFBFF68BFECFF54AF
        E9FF1C52A2FF0104092700000007000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000807101C3C3676BBFF9DE3FAFFABE9F9FF5EB8E9FF54AE
        E8FF1F57A5FF030B184000000009000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000002000000090B1A2D563777BBFF9BE0F9FF99E2F6FF55B1E5FF51AC
        E8FF245BA8FF051126590000000B000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000B0F213C6D3677BCFF99DDF8FF84D9F3FF4AAAE2FF4EA9
        E6FF2660ABFF0716326F0000000C000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000C112849833678BDFF96DAF8FF7CD4F1FF42A4DFFF4AA7
        E4FF2864AFFF081B3E850000000E000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000030000000D152E599B367ABFFF95D8F7FF75D0EFFF399EDDFF46A4
        E3FF2B6AB4FF091E4B9E0000000F000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000500000010173566B1367CC2FF92D6F7FF6ECCEEFF3299DBFF42A1
        E2FF2D6FB9FF0A2255B300000013000000070000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00050000000C0102041D21518ED93079C3FF4697D7FF4099D8FF2A82CFFF338B
        D5FF296BB9FF0C2A6ADA000103220000000F0000000700000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000060000
        000E0E213D7026549BF23877BDFF4A99DAFF3E98DAFF3190D7FF2D88D4FF328C
        D6FF398BD4FF2F6CB6FF25599FF30E223F730000001300000009000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000070204081B1D43
        78C13575BAFF55A2DCFF60ACE1FF55A8E0FF41A3DEFF3698DCFF308FD7FF2B87
        D2FF2E8CD4FF3890D5FF3685CEFF2968B4FF1B437AC4020408210000000A0000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020000000603070C20225089D14794
        D2FF61B1E6FF72BAE8FF6EB9E8FF5DB4E5FF4AAFE3FF3EA4E1FF3597DBFF2C8A
        D5FF2F8DD6FF3F9ADCFF4298DCFF3B90D7FF2E78C3FF1F4C8AD603070C260000
        0009000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000040101020F224E84C74E9BD7FF6AB9
        EBFF81C6EEFF8ACAEFFF7EC5EEFF6CC3EBFF52BBE8FF41AAE5FF389DDFFF2D8D
        D7FF2F8BD6FF449FDEFF4DA3E3FF469CE1FF3990D8FF2D78C5FF1D4781CA0001
        0216000000070000000200000001000000000000000000000000000000000000
        00000000000000000000000000020000000816335482438CCAFF6FC0EFFF81CA
        F2FF99D6F4FF9DD8F3FF8AD1F2FF77CEF0FF55C2ECFF43B0E6FF3AA3E2FF3093
        DAFF2B8BD6FF3898DCFF50AAE6FF54A9E7FF469EE4FF378ED8FF2A6EB9FF122C
        50880000000E0000000400000001000000000000000000000000000000000000
        0000000000000000000100000005060E162A3478B7FB65B8E9FF7CC8F3FF9DD8
        F7FFACE1F8FFACE1F7FF97D9F5FF7AD4F2FF56C8EDFF44B4E8FF3BA5E3FF3095
        DCFF2A8AD5FF3697DBFF52AEE5FF5AB0EBFF50A6E7FF429BE1FF348AD4FF2761
        AAFB050B14320000000800000002000000010000000000000000000000000000
        00000000000000000002000000081E466A984896D0FF6EBFEDFF8DD2F6FFCEEF
        F8FFD3F2F8FFB6E6F9FF9CDEF7FF7FDAF3FF57CBEDFF42B4E8FF3AA5E3FF3095
        DBFF2888D4FF3191D7FF4EAAE4FF5EB4ECFF58ACEBFF49A0E5FF3A92DCFF2C74
        BEFF1636619E0000000E00000003000000010000000000000000000000000000
        0000000000000000000304090E1C377EB9F559ACDEFF79C5F1FFBAE6F9FFDAF4
        F8FFDEF6F8FFCCF0F9FFA3E3F8FF82DFF4FF56CFEEFF41B4E7FF38A5E3FF3096
        DBFF2584D2FF2B8BD3FF47A7E0FF61B6EAFF5EB1ECFF50A6E7FF3E96DFFF3085
        D0FF265FA7F603070C2500000006000000010000000000000000000000000000
        00000000000100000005153145634190CBFF60B2E4FF8ED2F6FFD2F1F8FFDFF7
        F9FFE2F8F9FFD8F5F8FFAAE8F9FF7DDFF3FF54CDEEFF3FB4E7FF37A5E2FF2E95
        DBFF2381D0FF2888D2FF45A5E0FF60B7EAFF62B4EDFF55A9E9FF439BE2FF338B
        D5FF2A6DB8FF0E233D6A00000009000000020000000000000000000000000000
        0000000000010000000625587BA24596CFFF66B6E7FFA6DDF8FFD8F4F9FFE2F8
        F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
        DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF368F
        D9FF2B76C0FF193D6AA70000000C000000030000000000000000000000000000
        000000000002000000073377A3CF4494CEFF6EBBEAFFB5E4F9FFDEF6F9FFE4F9
        FAFFE4F9FAFFDCF6FBFFD7F4FBFFCAF1FBFFCFF3FBFFD2F5FCFFCFF5FCFFC4F0
        FCFFB0E2F7FFACE1F6FF9ED8F2FF8ED1F2FF79C3F0FF60B1ECFF4BA2E6FF3992
        DBFF2C7DC7FF22528DD30000000E000000040000000000000000000000000000
        000000000002000000073E8EC3F364B2E0FFA4E1F7FFE1F7FCFFD7E7F3FF9EB9
        DCFF7C9FCFFF5985C1FF4375B7FF3D72B8FF1857ACFF1A5EB3FF1E6ABAFF277C
        C2FF549CD3FF5BA4D7FF6BB1E0FF80BFE7FF94CCEEFFBDE8F7FFA2D7F3FF59A8
        E2FF2E83CDFF2962A7F400000010000000040000000000000000000000000000
        000000000002000000074297CEFEC1ECF9FFBBCFE6FF517CBEFF1A54ADFF1F5A
        B2FF2462B6FF2566B7FF2068B8FF1C69BAFF2071BFFF257DC7FF2E8CCFFF3DA1
        D7FF55ADDDFF60B5E3FF62B9E7FF5CB4E8FF4EABE6FF3B97DAFF549CD6FFA6D3
        ECFF7EB8E3FF2C69B0FE0000000F000000040000000000000000000000000000
        000000000001000000063D8DBFEBE8F2F9FF285FB2FF1658B2FF2067BDFF2971
        C4FF2D75C4FF2D77C5FF2577C2FF2175C3FF247EC7FF2B8ACFFF369BD6FF4AB2
        DFFF68C1E9FF78CDF0FF7BD3F1FF74CEF3FF65C2F1FF4EAEE8FF3190D3FF348A
        CCFFCCEAF7FF2761A2EA0000000C000000030000000000000000000000000000
        000000000001000000031C3F546B9ECAE6FFC2D6ECFF568FCFFF246FC4FF2B76
        C8FF2F78C8FF2E7BC7FF277AC5FF2279C5FF2881CBFF2F8ED1FF3AA0D9FF50BA
        E4FF70CAECFF83D7F3FF89DEF7FF81D9F9FF71CEF5FF57B8EDFF64B2E2FFAFDA
        F1FF85B5DBFF112A466F00000008000000020000000000000000000000000000
        00000000000000000001000000041D3A4B6072ADD3F4C8E1F1FFE7F0F9FFB0CC
        EBFF90B8E2FF6DA3D8FF5294D1FF4E94D1FF2F86CCFF2F90D2FF3CA1DAFF57BC
        E5FF89D6F0FF97E0F5FFA6EAFAFFACE8FAFFB3E7FAFFCAEEFAFFAAD3EBFF5F98
        C6F5162E44660000000A00000004000000010000000000000000000000000000
        000000000000000000000000000100000004060C0F192A526A834A8AB2D37CBA
        E0FFA1CDE8FFC5E0F1FFDBECF6FFDAEBF6FFEAF4FAFFFAFDFEFFF7FCFEFFDFF1
        F8FFC9E5F4FFC3E3F3FFAAD5ECFF8ABFE1FF6BA9D6FF3E79A6D522456388050A
        0E1E000000080000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000004000000060810
        141F1F3D4F633263819E3B7398B84382ABCF4484AFD551A0D5FF509FD3FF4282
        AED53E7DA8D0376E93B92E5C7DA01B374C67070E13240000000A000000070000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0002000000030000000500000006000000060000000700000008000000080000
        0008000000080000000700000007000000050000000400000002000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000200000002000000020000
        0002000000020000000200000001000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnFiltrarClick
    end
    object CxDateInicio: TcxBarEditItem
      Caption = 'Inicio     '
      Category = 0
      Hint = 'Inicio     '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000000000A0000
        0010000000110000001100000011000000120000001200000012000000120000
        0012000000120000001300000013000000120000000C0000000381594CC2B47C
        69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB27A68FFB37968FFB279
        68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000BB77F6EFFFBF8
        F5FFF8EEE9FFF8EEE9FFF7EFE8FFF7EEE8FFF7EEE8FFF7EEE8FFF7EDE7FFF7ED
        E6FFF6EDE6FFF6ECE6FFF6ECE6FFF6ECE5FFB47B69FF00000011B98472FFFBF8
        F6FFBF998AFFEBDAD3FFBE9788FFEBDAD3FFBD9586FFEBDAD3FFBC9484FFEBDA
        D3FF5D6DDDFFE4DDE1FF5A69DCFFF7EDE7FFB77F6EFF00000011BC8978FFFCFA
        F8FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDC
        D5FFE5DFE3FFE5DFE2FFE5DEE2FFF8EEE9FFB98472FF00000010C08E7DFFFCFA
        F9FFC6A294FFEDDED6FFC4A092FFEDDED6FFC29E8EFFEDDED6FFC19B8CFFEDDE
        D6FF6577E1FFE5E0E4FF6272E0FFF8F1EBFFBC8977FF00000010C39482FFFCFA
        FAFFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDF
        D8FFE6E2E6FFE6E2E6FFE6E2E5FFF9F2EEFFC08E7CFF0000000FC79887FFFDFB
        FAFFCCAB9DFFEEE0DBFFCAA99BFFEEE0DBFFC9A799FFEEE0DBFFC8A496FFEEE0
        DBFF6D81E5FFE8E3E8FF6A7DE4FFFAF4F0FFC49381FF0000000EC99D8CFFFDFC
        FCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2
        DCFFE8E6EAFFE8E5EAFFE8E4E9FFFAF6F2FFC69886FF0000000DCDA190FFFEFC
        FCFFD0B1A3FFEFE3DFFFCFB0A2FFEFE3DFFFCFAFA0FFEFE3DFFFCDAD9FFFEFE3
        DFFF7388E8FFE9E6EBFF7186E7FFFBF7F5FFC99D8BFF0000000DCFA594FFFEFC
        FCFFFDF9F9FFFDF9F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
        F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C4B53C3FF8D9E
        ECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5F70DFFF5D6CDEFF5B69
        DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B4C55C4FF93A4
        EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6375E1FF6172E0FF5E6F
        DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A4D56C6FF96A7
        EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8B9BEBFF8898EAFF8595
        EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF000000093A4093C14D55
        C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF444BBBFF4249B9FF4046
        B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000040000
        0006000000060000000600000007000000070000000700000007000000070000
        0007000000070000000800000008000000070000000500000001}
      PropertiesClassName = 'TcxDateEditProperties'
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0001000000020000000400000005000000050000000500000005000000050000
        0005000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000070000
        0007000000070000000600000005000000030000000100000001000000010000
        0003000000090000000F00000013000000140000001400000014000000150000
        0015000000150000001600000016000000160000001600000017000000170000
        0017000000180000001800000018000000180000001900000019000000190000
        001A0000001A00000019000000140000000D0000000500000001000000020000
        00092F211D57956B5DEAA47565FFA47565FFA37463FFA17363FFA17262FFA071
        62FFA17161FFA07161FFA07060FF9F7060FF9E6F60FF9E6E5FFF9E6E5EFF9D6D
        5EFF9D6D5EFF9C6C5DFF9C6C5CFF9C6C5CFF9B6B5CFF9C6B5BFF9B6A5BFF9B6A
        5BFF9B695BFF9A695AFF8C5F52EB2B1D195E0000000C00000003000000030000
        000D9F7464F6DCC4B0FFE1CCB8FFE1CCB8FFE1CCB7FFE1CCB8FFE1C9B7FFE1CC
        B7FFDEC9B4FFE1C9B7FFDEC9B4FFDEC9B4FFDEC9B4FFDDC7B1FFDDC7B1FFDEC9
        B4FFDEC8B4FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7B1FFDDC7
        B1FFDDC7B1FFDDC7B1FFD7BEA9FF946556F70000001400000005000000040000
        0010AA7B6CFFCCA390FFCA9E8BFFC99E8CFFC99D8AFFC99C8AFFC89B89FFC79B
        88FFC69887FFC69787FFC59785FFC49684FFC49683FFC49482FFC49382FFC393
        80FFC29280FFC1917EFFC1907DFFC08E7CFFC08E7BFFBF8C7AFFBE8C7AFFBE8B
        79FFBD8B79FFBD8A76FFC08F7CFF9D6C5CFF0000001800000006000000040000
        0010B08272FFEFE3D8FFFCFDF5FFFCFDF5FFFCFDF5FFFCFCF4FFFCFCF4FFFBFC
        F3FFFCFBF3FFFBFBF3FFFBFAF2FFFAFAF1FFFAF9F1FFFBF9F1FFFAF9F0FFF9F8
        EFFFF9F8EFFFF9F7EEFFF9F6EEFFF8F6EDFFF8F5ECFFF7F5ECFFF7F4EBFFF8F3
        EBFFF8F3EAFFF6F2EAFFE6D4C9FFA37262FF0000001800000006000000040000
        000FB18474FFF6F0E9FFF1E7DFFFF2E7DFFFF1E7DEFFF1E7DEFFF1E7DEFFF1E6
        DDFFF1E6DEFFF0E6DEFFF0E6DDFFF1E6DDFFF0E6DDFFF0E6DCFFF0E6DCFFF0E6
        DCFFF0E6DBFFEFE6DBFFF0E5DBFFF0E6DBFFF0E5DAFFF0E5DAFFEFE5DAFFEFE4
        DAFFEFE5DAFFEFE3D9FFF2E8E0FFA47363FF0000001700000006000000040000
        000EB28575FFF6EFE9FFF4ECE5FFF5ECE4FFF4EBE4FFF5EBE3FFF4EBE3FFF4EB
        E3FFF4EBE2FFF4EBE2FFF4EAE1FFF3EAE2FFF4EAE2FFF4EAE1FFF3EAE1FFF3EA
        E0FFF4EAE0FFF3EAE0FFF3EAE0FFF2EADFFFF3E9DFFFF3E9DFFFF3E9DFFFF2E9
        DFFFF3E9DEFFF2E8DEFFF2E8DFFFA57463FF0000001700000006000000030000
        000EB38676FFF8F2ECFFF6EEE7FFF6EFE7FFF6EEE6FFF6EEE6FFF6EEE6FFF5EE
        E6FFF5EEE5FFF5EEE5FFF5EDE4FFF5EDE4FFF5ECE4FFF4EDE3FFF5ECE3FFF4EC
        E3FFF5ECE3FFF4EBE2FFF4EBE3FFF4ECE2FFF4EBE2FFF4EBE1FFF4EBE1FFF4EA
        E1FFF4EAE1FFF3E9E0FFF4EBE2FFA67565FF0000001600000006000000030000
        000DB58878FFF9F4EEFFF7EFE8FFF6F0E8FFC19B8BFFC09A8AFFF1E6DEFFC099
        89FFBF9788FFF1E5DDFFBF9687FFBE9585FFF0E4DCFFBC9584FFBC9483FFEFE3
        DAFFBB9182FFBA9182FFEFE3D9FF5867DBFF5865DAFFE5DEE2FF5664DAFF5664
        DAFFF4EAE1FFF4EAE2FFF5EDE4FFA67566FF0000001500000005000000030000
        000CB68A7AFFFAF5EFFFF7F0E9FFF7F1E9FFC39E8DFFC29C8CFFF1E7DFFFC09B
        8AFFC09A8AFFF1E6DEFFBF9889FFBF9988FFF1E5DDFFBE9587FFBE9585FFF0E5
        DCFFBB9584FFBB9482FFEFE4DBFF5A69DCFF5A69DCFFE5DFE2FF5967DBFF5866
        DAFFF4EBE3FFF4ECE2FFF5EDE5FFA87767FF0000001400000005000000030000
        000CB88C7CFFF9F5F0FFF8F1EAFFF7F0EAFFF2E8E1FFF2E9E0FFF6EFE8FFF2EB
        E4FFEFE8E1FFEEE7E0FFEEE7DFFFEDE5DEFFECE6DEFFECE6DEFFEFE7E1FFF3EC
        E4FFF0E4DCFFF0E4DCFFEFE4DBFFE7E0E3FFE6E0E4FFE6DFE3FFE5DFE2FFE5DF
        E3FFF5ECE3FFF5ECE3FFF6EEE6FFA87869FF0000001400000005000000030000
        000BB88E7EFFFAF6F1FFF7F2EBFFF8F1EBFFC6A192FFC5A091FFF3EDE6FFC6A1
        92FFC5A091FFF3EDE6FFC6A192FFC5A091FFF3EDE6FFBF9789FFBF9788FFEFE8
        E1FFBF9789FFBF9788FFF1E5DDFF6070DFFF5F6FDFFFE7E0E4FF5E6DDEFF5D6C
        DDFFF5EDE4FFF5ECE4FFF6EEE6FFA97969FF0000001300000005000000030000
        000ABA8F80FFFAF7F2FFF8F2ECFFF8F3ECFFC7A495FFC7A393FFF3EDE6FFC7A4
        95FFC7A393FFF3EDE6FFC7A495FFC7A393FFF3EDE6FFC09A8BFFC09A8AFFECE6
        DFFFC09A8BFFC09A8AFFF1E6DEFF6273E0FF6173E0FFE7E1E6FF6071DFFF6070
        DEFFF5EDE5FFF5EDE5FFF6EFE8FFAA7A6BFF0000001200000005000000020000
        000ABB9181FFFAF7F2FFF8F3EDFFF8F3EDFFF4EBE4FFF3EBE4FFF3EDE7FFF4EB
        E4FFF3EBE4FFF3EDE7FFF4EBE4FFF3EBE4FFF3EDE7FFF1E7E0FFF1E7DFFFEDE7
        E0FFF1E7E0FFF1E7DFFFF1E8DFFFE7E4E7FFE8E3E6FFE7E3E6FFE7E2E6FFE7E2
        E6FFF6EEE6FFF5EEE6FFF7F0E8FFAC7D6CFF0000001200000004000000020000
        0009BD9282FFFBF8F4FFF9F4EEFFF9F4EEFFC9A89AFFC9A899FFF5EFE9FFC9A8
        9AFFC9A899FFF5EFE9FFC9A89AFFC9A899FFF5EFE9FFC49F8EFFC39E8EFFEEE8
        E1FFC49F8EFFC39E8EFFF2E8DFFF687AE3FF6879E3FFE8E4E8FF6678E1FF6577
        E1FFF6EEE7FFF6EFE7FFF7F1E9FFAD7E6EFF0000001100000004000000020000
        0008BE9484FFFBF8F4FFF9F5F0FFFAF5EFFFCBAA9BFFCAAA9BFFF5F0EAFFCBAA
        9BFFCAAA9BFFF5F0EAFFCBAA9BFFCAAA9BFFF5F0EAFFC5A091FFC4A090FFEFE9
        E4FFC5A091FFC4A090FFF2E8E1FF6B7EE4FF6B7EE4FFE8E5E9FF697BE3FF687A
        E2FFF6EFE8FFF6EFE8FFF7F1EAFFAE7F6FFF0000001000000004000000020000
        0008BF9685FFFCF8F5FFFAF5F1FFFAF5F0FFF6EEE8FFF6EEE7FFF6F1ECFFF6EE
        E8FFF6EEE7FFF6F1ECFFF6EEE8FFF6EEE7FFF6F1ECFFF3EAE2FFF3E9E2FFF1EB
        E6FFF3EAE2FFF3E9E2FFF3E9E2FFEAE5EAFFEAE5EAFFEAE5EAFFE9E5E9FFE9E5
        E9FFF7F0E9FFF7F0E8FFF8F1EBFFAF8170FF0000000F00000004000000020000
        0007C09888FFFCFAF6FFFAF7F2FFFAF6F1FFCEAFA0FFCEAEA0FFF8F3EEFFCEAF
        A0FFCEAEA0FFF8F3EEFFCEAFA0FFCEAEA0FFF8F3EEFFC9A596FFC7A595FFF2ED
        E7FFC9A596FFC7A595FFF3EAE3FF7085E7FF6F84E6FFEAE6EBFF6E82E6FF6D81
        E5FFF7F0EAFFF7F0E9FFF8F3ECFFB08272FF0000000F00000004000000020000
        0006C19989FFFCFAF7FFFAF7F2FFFAF6F2FFD0B1A3FFD0B1A1FFF9F5F0FFD0B1
        A3FFD0B1A1FFF9F5F0FFD0B1A3FFD0B1A1FFF9F5F0FFCAA89AFFC9A699FFF6F1
        EBFFCAA89AFFC9A699FFF3EBE5FF7388E8FF7287E7FFEBE8EBFF7185E7FF7184
        E6FFF8F2EBFFF7F1EBFFF8F3EEFFB18474FF0000000E00000004000000010000
        0006C39B8AFFFCFAF8FFFBF8F3FFFBF8F3FFFBF7F3FFFAF7F2FFFBF6F2FFFAF5
        F1FFF8F4EFFFF8F4EFFFF7F3EEFFF7F3EDFFF6F2ECFFF5F1EBFFF7F2EDFFF8F3
        EEFFFAF4EFFFF9F4EEFFF9F4EEFFF9F4EEFFF8F3EDFFF8F3EDFFF8F3ECFFF8F2
        ECFFF8F2ECFFF8F2ECFFF9F4EEFFB28576FF0000000D00000003000000010000
        0005C39C8CFFFCFAF9FFFBF8F4FFFBF8F4FFFBF8F4FFFBF8F4FFFBF7F4FFFAF7
        F3FFFAF7F2FFFBF7F2FFFAF6F2FFFAF6F1FFFAF6F1FFFAF5F1FFFAF5F0FFFAF5
        F0FFFAF5F0FFFAF5EFFFF9F5EFFFF9F4EEFFF9F4EFFFF9F4EEFFF9F4EEFFF9F3
        EDFFF8F3EDFFF8F3EDFFF9F4EFFFB48778FF0000000D00000003000000010000
        0005C49D8DFFFDFCFBFFFDFBF8FFFDFBF8FFFCFAF8FFFDFAF7FFFDFBF7FFFDF9
        F7FFFCFAF7FFFCFAF6FFFBF9F6FFFCF9F6FFFCF8F5FFFBF9F5FFFCF9F5FFFBF8
        F5FFFBF8F5FFFBF8F4FFFBF8F5FFFBF8F4FFFBF8F3FFFBF8F3FFFBF7F3FFFBF7
        F2FFFBF6F2FFFBF6F2FFFBF8F4FFB58979FF0000000C00000003000000010000
        0004444BBBFF9EADF0FF6B81E6FF6B80E6FF6A7FE5FF687CE4FF677BE4FF677A
        E3FF6578E2FF6476E2FF6375E1FF6274E1FF6172E0FF6070DFFF5E6FDFFF5D6D
        DEFF5C6BDEFF5B69DDFF5968DCFF5967DBFF5765DAFF5663DAFF5561DAFF5460
        D8FF525FD8FF515DD7FF6872DEFF3336A9FF0000000B00000003000000010000
        0004474EBDFFA0AFF1FF6D83E8FF6C82E7FF6B80E6FF8093EAFF8799EBFF7E91
        E9FF677AE4FF6679E3FF6577E3FF6376E1FF6274E1FF6173E0FF6171E0FF5F6F
        DFFF5E6EDEFF5D6CDDFF5B6BDDFF5B69DCFF717DE1FF7783E4FF6E7BE1FF5563
        D9FF5460D9FF5360D8FF6B76DFFF3639ACFF0000000B00000003000000010000
        00034951C0FFA0B2F2FF6F85E8FF6E84E7FF5F73D7FF3E3D7BFF29234EFF2B2B
        61FF596DD1FF677BE4FF667AE4FF6578E2FF6476E2FF6375E2FF6273E1FF6172
        E0FF6070DFFF5E6FDEFF5E6DDEFF505ECFFF3C3879FF29234EFF28275EFF4B57
        C8FF5663DAFF5562D9FF6D78E0FF383CAEFF0000000A00000003000000010000
        00034C54C3FFA3B4F2FF778DEAFF7086E8FF5B6FD3FF5D558CFFB7A194FF3F37
        6CFF5667CCFF697DE5FF687CE4FF677AE4FF6679E3FF6478E3FF6375E1FF6274
        E1FF6273E0FF6071DFFF5F6FDFFF4C5BC9FF5D558CFFB7A194FF3F376CFF4753
        C1FF5866DBFF5663DAFF6F7BE1FF3A3FB0FF0000000900000002000000000000
        00024B53B6ED8E9DE7FFA4B5F2FFA3B3F2FF8D9DE1FF645B91FFAA9284FF473F
        74FF8795D9FF9DADF0FF9CACF0FF9BAAEFFF9BA9EEFF9AA7EEFF98A6EEFF97A5
        EDFF96A4EDFF94A2ECFF93A1ECFF7D8AD9FF645B91FFAA9284FF473F74FF7681
        D2FF8C97E9FF8C97E8FF7680DBFF3C3FA5EE0000000600000002000000000000
        0001141631413F479ECA4F58C7FF4F58C7FF4048B4FF6A6399FFFFFEF3FF5048
        7FFF3D44ADFF4B54C2FF4A52C2FF4A52C1FF4951C0FF4950C0FF484FBFFF474F
        BEFF464EBEFF464DBDFF464CBCFF383DA9FF6A6399FFFFFEF3FF50487FFF3539
        A3FF4248B8FF4147B7FF32368FCC10112D450000000400000001000000000000
        000000000001000000010000000200000002000000088A7368FFDACEC5FF735A
        50FF0000000D0000000300000003000000040000000400000004000000040000
        00040000000500000005000000050000000B8A7368FFDACEC5FF735A50FF0000
        0010000000060000000600000005000000030000000100000000000000000000
        000000000000000000000000000000000000000000026C5B54C090796FFF6655
        4EC2000000060000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000036C5B54C090796FFF66554EC20000
        0006000000010000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000030000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000003000000030000
        0001000000000000000000000000000000000000000000000000}
    end
    object CxDateTermino: TcxBarEditItem
      Caption = 'T'#233'rmino'
      Category = 0
      Hint = 'T'#233'rmino'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000000000A0000
        0010000000110000001100000011000000120000001200000012000000120000
        0012000000120000001300000013000000120000000C0000000381594CC2B47C
        69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB27A68FFB37968FFB279
        68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000BB77F6EFFFBF8
        F5FFF8EEE9FFF8EEE9FFF7EFE8FFF7EEE8FFF7EEE8FFF7EEE8FFF7EDE7FFF7ED
        E6FFF6EDE6FFF6ECE6FFF6ECE6FFF6ECE5FFB47B69FF00000011B98472FFFBF8
        F6FFBF998AFFEBDAD3FFBE9788FFEBDAD3FFBD9586FFEBDAD3FFBC9484FFEBDA
        D3FF5D6DDDFFE4DDE1FF5A69DCFFF7EDE7FFB77F6EFF00000011BC8978FFFCFA
        F8FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDCD5FFEBDDD5FFECDC
        D5FFE5DFE3FFE5DFE2FFE5DEE2FFF8EEE9FFB98472FF00000010C08E7DFFFCFA
        F9FFC6A294FFEDDED6FFC4A092FFEDDED6FFC29E8EFFEDDED6FFC19B8CFFEDDE
        D6FF6577E1FFE5E0E4FF6272E0FFF8F1EBFFBC8977FF00000010C39482FFFCFA
        FAFFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDFD8FFEDDFD9FFEDDF
        D8FFE6E2E6FFE6E2E6FFE6E2E5FFF9F2EEFFC08E7CFF0000000FC79887FFFDFB
        FAFFCCAB9DFFEEE0DBFFCAA99BFFEEE0DBFFC9A799FFEEE0DBFFC8A496FFEEE0
        DBFF6D81E5FFE8E3E8FF6A7DE4FFFAF4F0FFC49381FF0000000EC99D8CFFFDFC
        FCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2DCFFEEE2
        DCFFE8E6EAFFE8E5EAFFE8E4E9FFFAF6F2FFC69886FF0000000DCDA190FFFEFC
        FCFFD0B1A3FFEFE3DFFFCFB0A2FFEFE3DFFFCFAFA0FFEFE3DFFFCDAD9FFFEFE3
        DFFF7388E8FFE9E6EBFF7186E7FFFBF7F5FFC99D8BFF0000000DCFA594FFFEFC
        FCFFFDF9F9FFFDF9F9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
        F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C4B53C3FF8D9E
        ECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5F70DFFF5D6CDEFF5B69
        DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B4C55C4FF93A4
        EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6375E1FF6172E0FF5E6F
        DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A4D56C6FF96A7
        EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8B9BEBFF8898EAFF8595
        EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF000000093A4093C14D55
        C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF444BBBFF4249B9FF4046
        B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000040000
        0006000000060000000600000007000000070000000700000007000000070000
        0007000000070000000800000008000000070000000500000001}
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBtnExportarExcel: TdxBarLargeButton
      Caption = '&Exporta a Excel'
      Category = 0
      Hint = 'Exporta a Excel'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000005000000140000
        001F000000210000002100000021000000220000002200000022000000230000
        0023000000230000002300000021000000160000000500000000000000000000
        0000000000000000000100000002000000040000000600000007000000070000
        000700000007000000070000000700000007000000070000001946332CCC6045
        3BFF644A41FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D3DFFAD68
        39FFAB6535FF553A34FF593D35FF392621CE0000001500000000000000000000
        00000000000000000002000000070000000F00000016000000190000001A0000
        001A0000001B0000001B0000001B0000001B0000001B00000032664A40FF8165
        5AFF6A4F46FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B579FFE2B2
        76FFE2B273FF5A3F37FF664940FF523730FF0000001E00000000000000000000
        000000000001000000040000000F78554AC1A57666FFA57565FFA57465FFA574
        64FFA37463FFA47363FFA37362FFA37262FFA27162FFBDA79FFF6A4E42FF8369
        5FFF70564BFFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
        6AFFD4A268FF5E433CFF6F5147FF543931FF0000001D00000000000000000000
        0000000000010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
        F4FFFBF7F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFE4E0DCFF6E5246FF866C
        63FF765C50FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
        EAFFF6EFE9FF644940FF715349FF563B33FF0000001B00000000000000000000
        0000000000010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
        E6FFF6ECE5FFF4EBE5FFF4EBE5FFF4EBE4FFF4EBE4FFE1D9D2FF725648FF8A70
        65FF7B6154FFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1EBFFF7F0
        EBFFF7F0ECFF6A4F46FF72554BFF5A3E36FF0000001900000000000000000000
        0000000000010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6EC
        E6FFF4EDE6FFF4ECE6FFF4ECE6FFF6ECE5FFF4ECE4FFE3DAD4FF755A4CFF8E75
        6AFF7F6458FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF70564BFF75584EFF5C4138FF0000001700000000000000000000
        0000000000010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7ED
        E9FFF6EDE8FFF6EDE6FFF6EDE6FFF6ECE6FFF6ECE5FFE7DDD7FF7A5E50FF9078
        6EFF82685BFF82675AFF806659FF7F6558FF7E6357FF7D6356FF7A6055FF795F
        53FF775D52FF765B50FF765A50FF5F443BFF0000001500000000000000000000
        0000000000000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EF
        E9FFF7EFE9FFF7EFE8FFF6EDE8FFF6EDE8FFF6EDE6FFE8E0D9FF7E6253FF947C
        71FF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B433AFF5941
        39FF584038FF573F37FF775C52FF63473DFF0000001300000000000000000000
        0000000000000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0
        E9FFF6EFE9FFF7EFE9FFF7EFE8FFF7EFE9FFF6EDE8FFEAE1DCFF816656FF9680
        75FF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7CAFFF3EA
        E2FFF3E9E2FF5A4139FF795E54FF664B40FF0000001100000000000000000000
        0000000000000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0
        EBFFF7F0EBFFF7F0EAFFF7F0EAFFF7F0E9FFF7EFE9FFEBE5DFFF856A59FF9983
        79FF70564DFFF4ECE6FFEBDACFFFEADACFFFE9D9CDFFE9D9CCFF513730FF6549
        3EFFF3EAE3FF5D453CFF7B6156FF6A4F43FF0000000F00000000000000000000
        0000000000000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1
        EBFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EAFFF7F0EAFFEEE7E2FF896E5CFF9C87
        7DFF755A50FFF5EDE8FFEBDCD2FFEADCD0FFEADACFFFEAD9CEFF49312BFF5D40
        39FFF4EBE4FF60483FFF7D6358FF6E5346FF0000000D00000000000000000000
        0000000000000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2
        ECFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F1EAFFF1E9E4FF8D7260FF9F8A
        81FF795E54FFF5EEE9FFECDED4FFEBDCD2FFEADCD1FFEADBD0FF452D27FF472E
        29FFE9D9CDFF644C43FF7F655AFF72574AFF0000000B00000000000000000000
        000000000000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2
        EDFFF8F2EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF2EBE5FF917663FFA28D
        83FF7C6157FFF5EFEAFFF5EEE9FFF5EEE9FFF5EDE8FFF5EDE7FFF5ECE6FFF4EC
        E6FFF4ECE6FF695046FF998278FF765B4DFF0000000900000000000000000000
        000000000000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3
        EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF5EEEAFFAC9686FF9377
        64FF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E64FF8269
        5FFF7D645BFF6E544AFF7C6052FF5B463BC20000000500000000000000000000
        000000000000000000030000000DDBC7BFFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3
        F1FFF9F3F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF6EFEBFFF5EE
        E9FFF4EDE8FFF4EDE8FFF4EDE7FFF4EDE7FFF2EBE6FFF2EBE6FFF2EAE5FFF7F3
        F1FFD2BCB4FF000000190000000B00000004000000010000000000000000035C
        22B7047F2FFF047E2FFF047D2EFF037C2EFF037B2DFF027A2CFF02792CFF0279
        2BFF01782BFF01772BFF01772AFF00762AFF469961FFF9F3EFFFF8F2EFFFF9F2
        EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
        F3FFAE8373FF0000001200000004000000000000000000000000000000000581
        30FF0A9A46FF079139FF069038FF068F38FF058D37FF058C36FF038B34FF038A
        34FF028933FF028632FF028532FF018531FF01762AFFF9F3F0FFF9F3EFFFF9F3
        EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
        F2FFB08374FF0000001100000004000000000000000000000000000000000581
        31FF0C9C48FFFAF6F6FF079139FFF9F5F3FF068E38FFF8F2F1FFF7F2EFFF7EBE
        91FFF7EFEDFFF6EEEBFF7CBB8EFF028631FF01762AFFF9F4F0FFF9F3F1FFF9F4
        F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
        EEFFB38576FF0000001000000004000000000000000000000000000000000682
        32FF0E9E49FFFBF7F6FF08923AFFF9F5F4FF079038FFF8F4F2FF058D37FF038C
        36FF038B34FF7DBD90FFF6EEEBFF028632FF01772AFFFAF6F2FFFAF6F1FFF9F4
        F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
        E9FFB38978FF0000000F00000004000000000000000000000000000000000683
        32FF0E9F4BFF82C799FFFBF7F6FF81C498FF079139FFF9F5F2FF068E37FF058D
        36FF7FBF93FFF6F1EEFF038A33FF028833FF01782BFFFAF6F2FFF9F6F3FFFAF6
        F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
        DDFFB5897AFF0000000E00000004000000000000000000000000000000000785
        33FF0FA24CFFFCF8F8FF08943BFFFBF7F6FF08923AFFFAF5F3FF068F39FF068E
        37FFF8F3F0FF058C34FF038B34FF038A34FF01792BFFFAF7F4FFF9F5F2FFF9F5
        F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
        C2FFB78C7DFF0000000D00000003000000000000000000000000000000000785
        33FF11A34EFFFBFAF9FF09953CFFFAF8F7FF08933AFFFAF7F5FF079139FF078F
        39FF7FC194FFF8F2F0FFF7F2EFFF038B34FF02792CFFFAF7F4FFFBF7F4FFF8F2
        EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
        ACFFB78C7DFF0000000A00000003000000000000000000000000000000000786
        34FF11A551FF0FA350FF0FA24CFF0E9F4BFF0E9E48FF0C9C46FF0A9A44FF0A99
        43FF089741FF089540FF07933EFF06913DFF027A2CFFFBF8F6FFFAF8F4FFF7F2
        EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
        A6FF4C352D860000000600000002000000000000000000000000000000000564
        27BD088634FF078534FF078433FF068332FF068332FF068231FF058031FF0480
        30FF057E2FFF037E2EFF047C2EFF037C2DFF429C61FFFBF9F6FFFBF8F6FFF6F1
        EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
        3086000000080000000300000001000000000000000000000000000000000000
        0000000000000000000100000005E1CEC7FFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
        F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
        ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
        F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
        EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
        FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
        E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F
        91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
        8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000200000002000000030000
        0003000000030000000300000003000000030000000300000004000000040000
        0004000000040000000400000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnExportarExcelClick
    end
    object dxBtnExportarPDF: TdxBarLargeButton
      Caption = '&Exportar a PDF'
      Category = 0
      Hint = 'Exportar a PDF'
      Visible = ivNever
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        0004000000050000000500000005000000050000000500000005000000060000
        0006000000060000000600000006000000050000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000001000000010000000100000002000000060000000B0000
        0010000000120000001300000013000000140000001400000015000000150000
        0015000000160000001600000016000000140000000F00000007000000030000
        0001000000010000000100000001000000000000000000000000000000010000
        000100000002000000050000000500000006000000080000000F7B5A4DC4A578
        67FFA57767FFA57767FFA47666FFA47665FFA37565FFA37565FFA37564FFA373
        63FFA27363FFA27262FFA17262FFA17262FF775448C6000000140000000A0000
        0008000000060000000600000003000000010000000100000000000000010000
        00040000000A0000001100000015000000160000001B00000025A97C6BFFF8F0
        EDFFF7F0EDFFF7F0EDFFF7F0ECFFF7F0EBFFF6EEE8FFF6EEE8FFF5EDE8FFF5ED
        E8FFF5ECE7FFF6EDE7FFF5ECE7FFF5ECE6FFA37364FF00000034000000280000
        00230000001F000000170000000D000000050000000100000000000000020000
        000A2D1F1B598D6454EA9B6C5CFF9B6B5CFF976958FF8E6151FFAC8070FFF9F3
        EFFFDFAE75FFDEAE75FFDEAE76FFDEAE74FFDCA76CFFDAA164FFDAA063FFD9A0
        62FFD89F61FFD99E5FFFD89D5FFFF4E9E2FFA57767FF724538FF794A3CFF7E4E
        3FFF835242FF7A4D3FEC2618135F0000000D0000000300000001000000040000
        000F996F60EFC39F8DFFCBAB9AFFDCC5B4FFD8C0B0FFCEB6A4FF996C5AFFF9F5
        F2FFE1B37CFFE5BC87FFE5BD88FFE5BB86FFE4B881FFDFAE73FFDFAD72FFDFAC
        70FFDFAB6EFFDEAA6CFFD89E5FFFF4EAE3FFA87A69FFBEA28DFFC8A995FFD0B3
        9FFFC4A18FFFC09B89FF936758F0000000150000000500000001000000040000
        0011A67A69FFC8A797FFCDAF9EFFDFCABBFFDAC3B4FFDFCEC2FFA87B6BFFFAF6
        F3FFE2B782FFE7C18EFFE8C08FFFE7C08DFFE7BE8AFFE2B379FFDFAF74FFDFAE
        72FFDFAD70FFDEAC6FFFD99F61FFF4EBE5FFA97D6DFFD0BAABFFC7A692FFD0B4
        A0FFC3A290FFC5A493FF9F6F5FFF000000180000000700000001000000040000
        0011A87B6BFFCBAB9BFFD0B3A4FFE3D0C3FFDFCABBFFA37D6CFFAB7F6FFFFAF7
        F5FFE5BD88FFE8C493FFE9C596FFE8C493FFE8C392FFE5BA84FFE0B076FFE0B0
        74FFE0AE72FFDFAD70FFD9A062FFF5ECE7FFAD8071FF9E7766FFCEB3A0FFD7BE
        ADFFC8A897FFC9A898FFA07160FF000000190000000600000001000000040000
        0010AA7E6DFFCEB0A1FFD3B8AAFFE7D7CCFFE5D3C6FF966C5BFF7A4835FF7A48
        36FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4836FF7A4836FF7A4835FF7A4835FF7A4835FF966C5BFFE5D3C7FFE7D7
        CBFFD3B8AAFFCEAFA1FFA17261FF000000180000000600000001000000040000
        000FAC806FFFD1B6A7FFD6BEB1FFEBDDD5FFE8D9CEFFE8D9CFFFE8D9CFFFE8DA
        CEFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACFFFE8D9CFFFE8D9CFFFE8DA
        CEFFE8D9CFFFE8DACFFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACEFFEBDE
        D5FFD6BEB1FFD1B6A8FFA37463FF000000170000000600000001000000030000
        000EAE8272FFD4BBAFFFDAC4B9FFEFE5DDFFECE0D7FFECE0D7FFECE0D7FFECE0
        D8FFECE0D7FFECE0D8FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFEFE5
        DDFFDAC4B9FFD4BBAFFFA47665FF000000160000000500000001000000030000
        000DAF8474FFD8C1B7FFDECBC1FFF4EBE6FFF0E7E0FFF1E8E2FFF5EFEAFFF6F2
        EDFFF7F3EEFFF7F3EFFFF7F3EFFFF7F3EEFFF7F3EEFFF7F3EFFFF7F3EEFFF7F3
        EFFFF7F3EFFFF7F3EFFFF7F2EFFFF6F1EEFFF5EFE9FFF1E8E2FFF0E6DFFFF3EB
        E6FFDECBC0FFD8C1B7FFA67867FF000000150000000500000001000000030000
        000CB28978FFDCC7BEFFE1D0C8FFF6F1ECFFF5EEEAFFE8E2DEFF8C7972FF654D
        45FF553C32FF553A32FF553B32FF543A31FF543A32FF543931FF523930FF5238
        30FF523830FF52372FFF51372EFF614941FF88766FFFE7E1DDFFF5EEE9FFF6F1
        EDFFE1D0C8FFDCC7BDFFA87C6BFF000000140000000500000001000000030000
        000BB68D7DFFDFCCC4FFE4D5CEFFF9F5F2FFE0D8D4FF674E44FF674A40FF6B4E
        44FF6D4F45FF6E4F45FF6E4F45FF6D4F45FF6D4F45FF6D4F45FF6E4F45FF6D4F
        45FF6D4F45FF6D4F45FF6D4F45FF6C4D43FF65483EFF614840FFDFD7D3FFF9F5
        F2FFE4D5CEFFDFCCC4FFAC8070FF000000130000000500000000000000020000
        000AB99281FFE2D1CBFFE8DAD4FFFBF9F7FF907F78FF6B4F45FF715449FF7153
        49FF715349FF705349FF715449FF71534AFF715349FF71544AFF715349FF7153
        49FF715449FF705349FF715449FF70534AFF715349FF684D42FF8B7973FFFBF9
        F7FFE8DAD4FFE2D1CBFFAF8575FF000000110000000400000000000000020000
        0009BC9787FFE5D6CFFFEBDFD9FFFDFCFAFF6C554AFF896B5FFF8D6F63FF9172
        65FF967769FF957668FF97796AFF9C7E6FFF9E7F70FF9E7F70FF9E7F70FF9E7F
        70FF9E7F70FF9D7D6EFF97796AFF957669FF967869FF8F7163FF7F6558FFFDFC
        FAFFEBDFD9FFE5D6CFFFB38B7BFF000000100000000400000000000000020000
        0007B59283F1E5D6D0FFECE1DDFFFEFDFCFF6E5649FFB19280FFB29381FFB293
        81FFB39381FFB29381FFB29381FFB29381FFB29381FFB29381FFB29281FFB392
        81FFB29381FFB29381FFB29281FFB29381FFB29381FFB39281FFAA8B79FFFEFD
        FCFFECE1DDFFE1D3CDFFAE897AF40000000D0000000400000000000000010000
        0005846C61AFDDCAC2FFEEE4E1FFFEFEFEFF7F6759FFC4A490FF715349FF7053
        49FF715249FF705348FF705248FF705248FF705248FF705248FF6E5147FF6E50
        46FF6E5046FF6E5045FF6D5045FF6D4F45FF6D4F45FFC6A592FFC5A490FFFEFE
        FEFFEEE4E1FFBDACA6FF80665CB50000000A0000000200000000000000010000
        00031E19172DBFA296F0E1D0C8FFF9F5F3FF866E5FFFC8A994FFA97C6BFFF2EA
        E5FFEEE2DBFFEDE2DAFFEDE1DAFFEDE1DBFFECE0D9FFECE0D9FFEDE0D9FFEDDF
        D8FFECDFD8FFECDED8FFECDED7FFF0E5E0FFA37364FFC4A691FFD2B29BFFF0EC
        ECFFC9BAB4FF6C554DF11F191736000000050000000100000000000000000000
        00010000000315121020856F67ABB59789E58E786AFF937D71FFAD8272FFF4EC
        E8FFEFE4DEFFEFE3DEFFEFE4DDFFEEE3DDFFEEE2DDFFEEE3DCFFEEE2DCFFEDE2
        DBFFEEE2DBFFEDE1DAFFEDE1DBFFF1E7E2FFA67969FF8F796EFF998275FF735C
        53E654443DAE0B09072700000006000000020000000000000000000000000000
        0000000000010000000200000004000000050000000A00000015B18876FFF4EF
        EBFFF1E7E1FFF1E6E1FFF0E6E0FFF0E5E1FFEFE5E0FFF0E5DFFFF0E5DEFFEFE4
        DEFFEFE4DEFFEEE4DEFFEFE3DDFFF3E9E5FFAB7E6EFF0000001F000000100000
        000A000000070000000400000002000000010000000000000000000000000000
        000000000000000000000000000100000001000000040000000EB68D7EFFF6F1
        EEFFF2E9E4FFF2E9E5FFF2E9E3FFF8F4F1FFF9F4F1FFF8F3F1FFF8F3F1FFF8F3
        F1FFF8F3F0FFF8F3F0FFF8F3F0FFFAF6F4FFD7C2BAFF00000016000000070000
        0003000000010000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000030000000CBB9484FFF9F4
        F0FFF4ECE8FFF3EBE8FFF3EBE7FFF9F5F3FF6766C4FF2B2BAFFF2929ADFF2727
        ACFF2524A9FF2322A6FF2220A5FF201EA3FF1E1CA1FF1D1A9FFF1B189DFF1917
        9BFF18149AFF171398FF100D6CB7000000000000000000000000000000000000
        000000000000000000000000000000000000000000030000000BBF998AFFF9F5
        F3FFF6EFEBFFF6EEEBFFF5EEEBFFFAF7F5FF3031B4FF585EDAFF4A4FD6FF474B
        D4FF4549D2FF4245D1FF4042CFFF3D3FCEFF3A3CCCFF383ACBFF3637C9FF3435
        C8FF3333C7FF3131C6FF171399FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000009C3A08FFFFAF7
        F5FFF7F1EEFFF7F1EEFFF6F0EDFFFBF8F6FF3133B7FF5C62DDFFFAF6F6FF4A4F
        D6FF474CD4FF4549D2FFF8F2F1FFF7F2EFFF7978D8FF3B3DCDFFF6EEEBFF3637
        C9FF3435C8FF3233C7FF18159AFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000008C7A495FFFBF8
        F7FFF8F4F1FFF9F3F1FFF9F3F0FFFCF9F8FF3436B9FF6066DEFFFBF7F6FF4D53
        D8FF4A50D6FF484CD5FFF8F4F2FF4246D1FFF7F2EFFF3D40CDFFF6F0ECFF383A
        CAFF3638C9FF3435C8FF1A189CFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000007CAA99AFFFDFA
        F8FFFAF6F4FFFAF6F4FFF9F6F4FFFCFAF9FF3638BCFF646BE0FFFBF8F7FFFBF7
        F6FF8587E1FF4A50D6FFF9F5F2FF454AD3FFF8F3F0FF3F43CFFFF6F1EEFFF6EF
        ECFF383ACBFF3638C9FF1D1A9EFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000005CDAD9FFFFDFB
        FBFFFDFBFAFFFDFBFAFFFDFBF9FFFEFDFDFF383BBEFF6770E3FFFCF8F8FF535A
        DBFFFBF7F6FF4E54D8FFFAF5F3FF484CD4FFF8F3F1FF4247D1FFF7F1EFFF3D40
        CEFF3A3DCDFF383ACAFF1E1CA0FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000039A8378BFCFB0
        A2FFCEB0A1FFCEB0A1FFCEAFA1FFE7D8D0FF3A3DC1FF6A73E4FFFBFAF9FFFCF8
        F8FF898DE4FF5057DAFFFAF7F5FFFAF5F4FF8183DEFF454AD3FFF8F2F0FFF7F2
        EFFFF6F0EDFF3B3DCCFF201FA3FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0004000000040000000500000005000000053C40C3FF6E76E5FF6B74E4FF6870
        E3FF646CE1FF6067E0FF5D63DDFF585FDBFF555BD9FF5157D7FF4D52D6FF4A4F
        D4FF474BD2FF4347D0FF2221A5FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000012E3191BD3D41C3FF3B3EC2FF393C
        C0FF383ABDFF3538BCFF3437B9FF3234B8FF3032B5FF2E2FB3FF2C2DB1FF2A2B
        AEFF2828ACFF2626AAFF1B1B7CBD000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnExportarPDFClick
    end
    object dxBtnActualizar: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Hint = 'Actualizar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000030000000400000004000000040000
        0004000000030000000200000001000000010000000100000001000000020000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000200000003000000060000000A0000000D0000001000000012000000120000
        00100000000E0000000B000000060000000300000003000000050000000A0000
        000A000000050000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        00070000000C1109042C44240F7B723C18C07F431BD39F5421FF9F5320FF7F42
        1AD3723B17C043230E7C1109032C0000000B000000080000000F542915B64A20
        0FB90000000E0000000500000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000004000000091109
        042B623516A6A25C2BFCBB8759FFCC9E6BFFD3A572FFDFB47FFFDFB57EFFD3A4
        71FFCC9B69FFB98456FF9F643DFC442918790000001126130A5DA06E49FF9159
        37FF210F075D0000000B00000003000000010000000000000000000000000000
        000000000000000000000000000000000001000000040000000B311B0C5D9C57
        29F5C18957FFDCB17DFFDFB47EFFDDB179FFDDB078FFDCAF74FFDCAE74FFDDB0
        76FFDDB077FFE5C296FFA7704CFB160E08390402011D744024E1D9B381FFCB9F
        6CFF653118E10301011900000007000000010000000000000000000000000000
        0000000000000000000000000001000000040000000A4627127BAA6838FFD5A8
        75FFE0B57FFFDDB178FFDDB077FFDDB077FFDCB077FFDDAF77FFDDAF77FFDDB0
        76FFE0B884FFCAA27FFF553521950000001841231488B88C63FFDFB47CFFDDB1
        79FFA7734CFF371A0D870000000D000000040000000100000000000000000000
        000000000000000000000000000200000008321C0E5BAA693AFFDFB785FFDEB4
        7DFFDEB27AFFDEB279FFE0B680FFEACBA1FFF2E1C2FFF7EACFFFF7ECD3FFF6E9
        CDFFECD9BAFF92613EE308050323120B0638955F3EF6E0BC89FFDDAF76FFDCAE
        75FFDBB07AFF824A2CF611080437000000080000000200000000000000000000
        0000000000000000000100000005110A05289D5D31F4DCB98BFFE0B67FFFDFB3
        7CFFDEB37CFFE6C496FFEDD8BBFFD1B090FFB98B66FFB07B56FFB07A56FFB889
        65FFB98865FF311F145C00000016683D25BDD2AD82FFDEB47DFFDDB177FFDCB0
        76FFDDB27AFFC39566FF572C17BD0000000F0000000500000001000000000000
        0000000000000000000200000009623B1EA1C89B6FFFE3BE8BFFDFB67EFFE0B6
        7FFFE6C699FFDCBFA0FFAF7D59FA6345309A2B1E154D0000001000000010291D
        134946302170000000122C1B115CB1825DFFE3C08EFFDEB37CFFDEB37AFFDEB2
        78FFDDB177FFE0B883FF9C6743FF25130A5C0000000900000002000000000000
        00000000000100000004160D072CA96C3FFCEACFA5FFE0B981FFE0B882FFE5C0
        8FFFDCBE9FFF9E6F4EE71F160F3C0000000B0000000600000004000000040000
        00060000000A04020117895838E0E2C59BFFE2BB87FFDFB57DFFDFB57CFFDFB4
        7BFFDEB37AFFDFB47CFFD5AC7BFF744024E10302011700000006000000000000
        000000000001000000064F321D80C4976DFFEACC9DFFE1BA84FFE4C08CFFEAD3
        B3FFB07F5CFA1F160F3A00000008000000030000000100000001000000010000
        00030000000B4F342189CAA682FFEAD0A4FFE8C999FFE7C897FFE5C38FFFE1BA
        84FFDFB57DFFDFB47BFFE1BA84FFB4845BFF4225158B0000000B000000000000
        000000000002000000087E5130C2DDBF97FFE6C493FFE9CD9DFFEED7AEFFD1B0
        91FF644732990000000A00000003000000010000000000000000000000010000
        000517100A31AD7F5AFBEEDAB4FFEACE9FFFE9CD9EFFEACC9DFFE9CC9CFFE9CB
        9BFFE6C693FFE1B983FFDFB47DFFE2BC8CFF965F3DFB140B0633000000010000
        0002000000040000000A9B663EE6F6EBCAFFEDD5A9FFEDD6A9FFF1DFBBFFBE91
        6CFF281D14450000000800000004000000020000000100000000000000020000
        0007775137B9E3CFB9FFFBF6E6FFFBF6E5FFFBF6E5FFF7ECCEFFEBD0A1FFEBCF
        9FFFEED7B0FFF6EAD3FFF9F1DDFFF9EFD7FFD9C1A6FF653C23BA000000050000
        00070000000A0000000EAB744AF9F9F1D7FFEFD9AFFFEFDAAFFFF3E4C2FFB887
        60FF030201180000000D0000000A000000070000000300000001000000020000
        0007B78560FFB78560FFB68560FFB68660FFB07D55FFF8EED0FFEDD4A7FFEDD3
        A5FFF0DCB6FFAE7952FFB88661FFB88762FFB78762FFB88763FFAA7750FFA876
        4EFFA6734CFFA6704AFFBA8B64FFF5E7C8FFF1DDB3FFF1DEB3FFF5E7C8FFB887
        60FF985F3CFF965D39FF945B37FF915834FF0000000600000002000000010000
        0003000000070000000A0000000E0402021A9E6743FFF8EED2FFEED8ACFFEED7
        AAFFF3E1BFFFAD7B54FA000000150000000F0000000C0000000986664AB7E8D4
        BBFFF8EED3FFF6EBCDFFF6EACDFFF6E9CDFFF2E1B8FFF3E1B8FFF6EACCFFF6EA
        CCFFF6EACCFFF6EACDFFDCC7AFFF693F26B80000000600000001000000000000
        000100000002000000030000000824170E48A97857FFF6EBCDFFF0DBB1FFF0DB
        B1FFEEDDBDFFA0724FE70000000D0000000500000003000000021B150F2AC39C
        7AF7FAF4E2FFF6EBC8FFF3E4BCFFF4E4BDFFF4E4BCFFF4E5BDFFF3E4BDFFF4E4
        BDFFF4E5BDFFF7EED6FFA57654FA160E082D0000000400000001000000000000
        00000000000100000003000000085838239BC7A689FFF5E6C4FFF2DFB5FFF2E2
        BAFFE4CEB1FF845F43BF00000009000000020000000000000000000000045B46
        347DDDC5ACFFFBF5DFFFF6E9C3FFF5E7C1FFF5E7C1FFF5E7C1FFF5E8C1FFF5E8
        C1FFF7EDCEFFCCAD92FF4B311F7E000000060000000200000001000000010000
        000100000002000000061B110A38986542FAEEE0C4FFF3E4BDFFF3E2BAFFF4E8
        C5FFD3B496FF563F2D8000000006000000010000000000000000000000020504
        030BAA8766DEF4ECDBFFF9F2D4FFF6EAC5FFF6EAC5FFF7EBC5FFF7EBC5FFF6EC
        C8FFEFE4D0FF926645DE0403020F000000050000000300000003000000030000
        0004000000071D120B3A895634E6D7BDA0FFF6EAC6FFF5E6BFFFF4E7BFFFF5EA
        D3FFBC8F6BFC16100C2800000004000000010000000000000000000000010000
        00033A2D2250D5B799FFFDF9E7FFF8F0CEFFF7EDC8FFF7EDC8FFF8EDC8FFFBF4
        DBFFC5A080FF32231852000000083E27176D26180E450402010E0402010E2518
        0E475837219998653FF9D7BEA0FFF7ECCBFFF6EAC4FFF6E9C3FFF7EDD1FFDABF
        A4FF71553E9F0000000700000002000000000000000000000000000000000000
        0001000000048C6F54B6EEE0CEFFFBF7E0FFF9EFCCFFF8F0CCFFFAF2D2FFE7D6
        C1FF7D5B3FB70000000831211651A87650FFA87852FF9A6238FF995F38FFA777
        51FFC7A685FFF1E5CCFFF9F0CFFFF8EDC8FFF7ECC8FFF8EECDFFEFE2CEFFB58B
        67F1140F0B230000000300000001000000000000000000000000000000000000
        00000000000215110D1FC5A380F4FBF7EAFFFBF5D8FFFAF2D0FFF9F3E1FFB88F
        6DF5130E0A22090604149D734FE6F5EFD9FFFBF6DEFFFBF6E0FFFBF6E0FFFBF5
        DCFFFAF4D7FFF9F0CFFFF9F0CCFFF8F0CBFFF9F2D3FFF6EDDDFFC59E7BFC3B2E
        2256000000050000000100000000000000000000000000000000000000000000
        000000000001000000025F4C3A7BE2CDB5FFFCFAE9FFFBF8DFFFDBC3A8FF5944
        307C000000065E442F8BDAC1A5FFFBF6DAFFFBF4D2FFFAF4D1FFFAF4D1FFFAF3
        D1FFFAF3D0FFFAF3D0FFFAF2D1FFFCF7E2FFF2E6D6FFC9A17EFF554231750000
        0005000000020000000000000000000000000000000000000000000000000000
        0000000000000000000105040309B0906FDDF7F0E3FFF5EFE0FFA78462DD0503
        030B1A130D28BC9672FAFCF9EEFFFCFAE5FFFCF8E0FFFBF7D7FFFBF6D4FFFBF7
        DAFFFCF8E0FFFDFAE8FFFBF6EBFFE0CAB2FFBE9775F4382C214E000000050000
        0002000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000023C31264EDBC1A2FFD6B99BFF3A2E224F0000
        00034F3C2C6ECCA781FCDFC9AFFFEEE2D1FFF4ECDEFFFDFDF6FFFDFDF6FFF3EC
        DEFFEDE2D1FFDEC7ADFFCAA480FC785F489D130F0B1D00000003000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000002846D53A6836A50A9000000020000
        00010000000216120E1E5646366F93775BB9A28466CDC9A37DFCC9A27CFCA284
        64CE917659B95645357015110D1F000000030000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0000000000000000000100000002000000020000000300000003000000030000
        0003000000030000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnActualizarClick
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Im&primir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      OnClick = btnImprimirClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000003000000040000
        0005000000050000000500000005000000050000000500000006000000060000
        0006000000060000000600000006000000060000000600000006000000040000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000A0000000F0000
        0011000000120000001200000013000000130000001400000014000000140000
        00150000001500000016000000160000001600000016000000140000000F0000
        0007000000020000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000030000000A7A5A4DC2A57867FFA577
        67FFA57767FFA47666FFA47665FFA37565FFA37565FFA37564FFA37363FFA273
        63FFA27262FFA17262FFA17262FFA17162FFA17161FFA07160FF775347C50000
        000F000000040000000200000001000000010000000100000000000000010000
        00030000000600000007000000090000000C00000014A97C6BFFF8F1EDFFF8F0
        EDFFF7F0EDFFF7F0EDFFF7F0EBFFF6EFEBFFF6EEE8FFF5EDE8FFF5EDE8FFF5EC
        E7FFF6EDE7FFF5ECE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFA27363FF0000
        001B0000000F0000000C0000000A000000080000000500000002000000050000
        000F000000190000001F00000021000000250000002EAC8070FFF9F3EFFFDFB1
        77FFDFAF77FFDFAE76FFDEAE76FFDEAE74FFDCA76DFFDAA465FFDAA265FFDAA1
        64FFDAA063FFD9A062FFD89F61FFD99E5FFFD89D5FFFF6EDE7FFA37565FF0000
        003B0000002E0000002A000000280000002100000014000000070000000E2D1F
        1B618E6454EC9B6C5CFF9B6B5CFF976958FF8F6251FF996C5AFFF9F5F2FFE1B4
        7EFFE5BD89FFE5BD88FFE4BC88FFE5BB86FFE4B982FFE0AF74FFE0AF73FFDFAE
        73FFDFAD72FFDFAC70FFDFAB6EFFDEAA6CFFD89E5FFFF6EEE9FF905F50FF7B4D
        3EFF855444FF865645FF855545FF784D3EEE2517136A0000001400000016986E
        5FF0C39F8DFFCBAB9AFFDCC5B4FFD8C0B0FFD0B8A5FFA87B6BFFFAF6F3FFE3B9
        84FFE7C290FFE8C18FFFE8C08EFFE7C08CFFE7BE8BFFE2B47BFFE1B176FFE1B0
        75FFDFAF74FFDFAE72FFDFAD70FFDEAC6FFFD99F61FFF6F0EAFF9E705FFFCAB2
        A0FFD7C0B0FFDBC4B3FFC8A695FFBE9A88FF926656F10000002000000019A67A
        69FFC8A797FFCDAF9EFFDFCABBFFDBC4B4FFE0CFC3FFAB7F6FFFFBF7F5FFE5BE
        8AFFE9C595FFE9C596FFE9C495FFE9C493FFE8C392FFE5BC86FFE1B379FFE1B2
        77FFE0B076FFE0B074FFE0AE72FFDFAD70FFD9A062FFF8F1ECFFA07363FFDACA
        BEFFD9C3B4FFDEC8B9FFC9AA99FFC4A291FF9E6E5DFF0000002500000019A87B
        6BFFCBAB9BFFD0B3A4FFE3D0C3FFDFCABBFFA47E6DFFA57666FFFBF9F6FFE8C1
        90FFEBC99CFFEBC99BFFEAC99CFFEAC89AFFE9C799FFE8C595FFE2B57BFFE2B4
        7AFFE1B378FFE0B175FFDFAF74FFDFAD71FFDAA063FFF8F2EEFF986B5AFFA17B
        6BFFDEC9BBFFE1CDBFFFCCAE9FFFC7A595FFA0705FFF0000002600000018AA7E
        6DFFCEB0A1FFD3B8AAFFE7D7CCFFE5D3C6FF966C5BFF7A4835FF7A4836FF7A48
        35FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        36FF7A4836FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF966C
        5BFFE5D2C6FFE5D3C6FFCFB3A5FFCAAA9BFFA07261FF0000002500000016AC80
        6FFFD1B6A7FFD6BEB1FFEBDDD5FFE8D9CEFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
        CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACFFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
        CFFFE8DACFFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACEFFE8DACFFFE8D9
        CFFFE8DACFFFE8D9CEFFD2B9ABFFCCB0A1FFA27363FF0000002300000015AE82
        72FFD4BBAFFFDAC4B9FFEFE5DDFFECE0D7FFECE0D7FFECE0D7FFECE0D8FFECE0
        D7FFECE0D8FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D8FFECE0D7FFECE0D7FFD6BEB3FFCFB4A8FFA37564FF0000002200000014AF84
        74FFD8C1B7FFDECBC1FFF4EBE6FFF0E7E0FFF0E7E0FFF0E7E0FFF0E7DFFFF0E7
        DFFFF0E7E0FFF0E7E0FFF0E7DFFFF0E7DFFFF0E7E0FFF0E7DFFFF0E7E0FFF0E7
        E0FFF0E7E0FFF0E6E0FFF0E6E0FFF0E7DFFFF0E7E0FFF0E6DFFFF0E7E0FFF0E7
        DFFFF0E7E0FFF0E7DFFFDAC4BBFFD3BAB0FFA47666FF0000002000000012B289
        78FFDCC7BEFFE1D0C8FFF6F1ECFFF4EDE8FFF5EEE9FFF7F3EFFFF9F5F2FFF9F6
        F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6
        F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F5F2FFF7F3EFFFF5EE
        E9FFF4EDE7FFF4EDE7FFDDCAC2FFD7C0B6FFA77B6AFF0000001F00000010B68D
        7DFFDFCCC4FFE4D5CEFFF9F5F2FFF8F3EFFFEAE4E1FF8C7A73FF664D45FF553C
        32FF553A32FF553B32FF543A31FF543A32FF543931FF543931FF533930FF5339
        30FF523930FF523830FF523830FF52372FFF51372EFF614942FF897770FFE9E3
        E0FFF8F3EFFFF7F2EEFFE0CFC7FFDAC5BCFFAB7F6FFF0000001D0000000FB992
        81FFE2D1CBFFE8DAD4FFFBF9F7FFE0DBD8FF674E45FF674A40FF6B4E44FF6D4F
        45FF6E4F45FF6E4F45FF6E4F45FF6D4F45FF6E4F45FF6D4F45FF6D4F45FF6D4F
        45FF6E4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6C4D43FF65483EFF6149
        40FFDFD9D6FFFAF6F4FFE4D4CDFFDDCAC3FFAF8374FF0000001C0000000EBC97
        87FFE5D6CFFFEBDFD9FFFDFCFAFF918079FF6B4F45FF715449FF715349FF7153
        49FF705349FF715449FF715349FF715349FF705349FF71534AFF715349FF7154
        4AFF715349FF715349FF715449FF705349FF715449FF70534AFF715349FF684D
        42FF8C7A73FFFCFAF8FFE7D9D3FFE0CFC7FFB28979FF0000001A0000000CC09C
        8CFFE7DAD4FFECE1DDFFFEFDFCFF6C554AFF896C5FFF8D6F63FF8F7063FF9677
        69FF967769FF957769FF997B6DFF9D7F70FF9E7F70FF9D7F70FF9E7F70FF9E7F
        70FF9E7F70FF9E7F70FF9A7B6CFF967769FF967869FF967769FF8F7163FF8D6E
        61FF634B41FFFDFCFBFFE8DBD6FFE2D3CDFFB68E7EFF000000180000000BC5A1
        91FFEADEDAFFEEE4E1FFFEFEFEFF6E5649FFB29381FFB29381FFB29381FFB393
        81FFB29381FFB29381FFB29281FFB39381FFB29381FFB29381FFB29381FFB293
        81FFB29281FFB39281FFB29381FFB29381FFB29281FFB29381FFB29381FFB392
        81FF684F44FFFEFDFDFFEADEDBFFE6D8D3FFBA9484FF0000001600000009BB9B
        8EF1EFE6E2FFEFE7E3FFFFFEFEFF7F6759FFC6A692FF715349FF705349FF7152
        49FF705348FF705248FF705248FF705248FF705248FF705247FF6F5147FF6F51
        47FF6E5147FF6E5046FF6E5046FF6E5045FF6D5045FF6D4F45FF6D4F45FFC6A5
        92FF795F53FFFFFEFEFFECE2DDFFEDE1DEFFB59284F500000013000000068872
        69B0ECE1DCFFF8F4F2FFFEFEFEFF866F60FFCCAD97FFA97C6BFFF2E9E4FFEEE2
        DBFFEDE2DAFFEDE1DAFFEDE1DBFFECE0D9FFECE0D9FFEDE0D9FFEDDFD8FFECDF
        D8FFECDED8FFECDED7FFECDED8FFECDFD7FFEBDED7FFEEE3DDFFA27363FFC7A8
        93FF80685AFFFCFAFAFFF4EDEBFFEADDD9FF836C61B80000000D000000031F1B
        192EC5AA9FF0EEE3DEFFFAF6F5FF8E7666FFD6B59EFFAD8272FFF4EBE7FFEFE4
        DEFFEFE3DEFFEFE4DDFFEEE3DDFFEEE2DDFFEEE3DCFFEEE2DCFFEDE2DBFFEEE2
        DBFFEDE1DAFFEDE1DBFFEDE0DAFFEDE0D9FFECE0D9FFF0E6DFFFA47767FFCFAF
        99FF896F62FFF8F4F3FFEBE0DAFFBEA395F1201B183A00000007000000010000
        00031613112188746BACB99E90E6937C6FFF957F73FFB18876FFF4EEEAFFF1E7
        E1FFF1E6E1FFF0E6E0FFF0E5E1FFEFE5E0FFF0E5DFFFF0E5DEFFEFE4DEFFEFE4
        DEFFEEE4DEFFEFE3DDFFEFE2DDFFEEE2DCFFEEE3DCFFF1E8E2FFA97C6CFF907A
        6FFF8F7869FFB29587E7836E64B11512102A0000000800000003000000000000
        00010000000200000004000000050000000A00000016B68D7EFFF6F0EDFFF2E9
        E4FFF2E9E5FFF2E9E3FFF1E8E3FFF2E8E3FFF1E7E2FFF1E7E2FFF0E7E2FFF1E7
        E1FFF1E6E0FFF0E6E0FFF0E6E0FFF0E5DFFFEFE5DFFFF3EAE5FFAE8373FF0000
        0023000000130000000D00000009000000050000000200000001000000000000
        0000000000000000000100000001000000040000000EBB9484FFF8F3F0FFF4EC
        E8FFF3EBE8FFF3EBE7FFF3EBE7FFF3EBE6FFF3EAE5FFF3EAE5FFF3E9E5FFF2E9
        E4FFF2E9E4FFF2E8E4FFF1E8E3FFF1E7E2FFF1E7E2FFF5EDE9FFB2897AFF0000
        0018000000080000000400000002000000010000000000000000000000000000
        0000000000000000000000000000000000030000000CBF998AFFF9F5F3FFF6EF
        EBFFF6EEEBFFF5EEEBFFF5EEEAFFF5EDE9FFF5EDE9FFF5EDE9FFF4ECE8FFF3EB
        E8FFF4EBE7FFF4EBE6FFF3EBE6FFF3EAE6FFF3EAE5FFF5EFECFFB69080FF0000
        0014000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000BC3A08FFFFAF7F5FFF7F1
        EEFFF7F1EEFFF6F0EDFFF7F0EDFFF7F0ECFFF6F0ECFFF6EFEBFFF6EFEBFFF6EF
        EBFFF5EEEAFFF5EEEAFFF5EEE9FFF4EDE9FFF5EDE9FFF7F1EFFFBC9687FF0000
        0013000000050000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000009C7A495FFFAF8F7FFF8F4
        F1FFF9F3F1FFF9F3F0FFF8F2F0FFF7F2EFFFF8F3EFFFF7F2EFFFF7F2EFFFF7F2
        EEFFF7F1EDFFF7F0EDFFF7F0EDFFF6EFECFFF6F0EBFFF9F4F2FFC09C8DFF0000
        0011000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000008CAA99AFFFDF9F8FFFAF6
        F4FFFAF6F4FFF9F6F4FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F1FFF8F4F1FFF9F4
        F1FFF8F3F0FFF8F3F0FFF8F3EFFFF8F2EFFFF7F2EFFFFAF6F4FFC4A293FF0000
        0010000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000007CDAD9FFFFDFBFBFFFCF8
        F6FFFBF7F6FFFBF7F5FFFBF7F6FFFAF7F5FFFAF7F5FFFAF6F4FFFAF6F4FFFAF6
        F3FFF9F6F3FFF9F5F3FFFAF5F3FFF9F4F2FFF9F4F2FFFAF8F6FFC7A698FF0000
        000E000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000005CFB1A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBAC9CFF0000
        000B000000030000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000039B857ABFD1B3A5FFD1B3
        A5FFD1B3A4FFD1B3A4FFD0B2A4FFD1B2A4FFD0B2A4FFCFB2A3FFCFB2A3FFCFB2
        A3FFCFB0A3FFCFB1A2FFCFB0A2FFCEB0A2FFCEB0A2FFCEAFA1FF998277C10000
        0007000000020000000000000000000000000000000000000000}
    end
    object dxBtnExtraXML: TdxBarLargeButton
      Caption = '&Extraer XML'
      Category = 0
      Hint = 'Extraer XML'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000005000000140000
        001F000000210000002100000021000000220000002200000022000000230000
        0023000000230000002300000021000000160000000500000000000000000000
        0000000000000000000100000002000000040000000600000007000000070000
        000700000007000000070000000700000007000000070000001946332CCC6045
        3BFF644A41FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D3DFFAD68
        39FFAB6535FF553A34FF593D35FF392621CE0000001500000000000000000000
        00000000000000000002000000070000000F00000016000000190000001A0000
        001A0000001B0000001B0000001B0000001B0000001B00000032664A40FF8165
        5AFF6A4F46FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B579FFE2B2
        76FFE2B273FF5A3F37FF664940FF523730FF0000001E00000000000000000000
        000000000001000000040000000F78554AC1A57666FFA57565FFA57465FFA574
        64FFA37463FFA47363FFA37362FFA37262FFA27162FFBDA79FFF6A4E42FF8369
        5FFF70564BFFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
        6AFFD4A268FF5E433CFF6F5147FF543931FF0000001D00000000000000000000
        0000000000010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
        F4FFFBF7F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFE4E0DCFF6E5246FF866C
        63FF765C50FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
        EAFFF6EFE9FF644940FF715349FF563B33FF0000001B00000000000000000000
        0000000000010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
        E6FFF6ECE5FFF4EBE5FFF4EBE5FFF4EBE4FFF4EBE4FFE1D9D2FF725648FF8A70
        65FF7B6154FFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1EBFFF7F0
        EBFFF7F0ECFF6A4F46FF72554BFF5A3E36FF0000001900000000000000000000
        0000000000010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6EC
        E6FFF4EDE6FFF4ECE6FFF4ECE6FFF6ECE5FFF4ECE4FFE3DAD4FF755A4CFF8E75
        6AFF7F6458FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF70564BFF75584EFF5C4138FF0000001700000000000000000000
        0000000000010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7ED
        E9FFF6EDE8FFF6EDE6FFF6EDE6FFF6ECE6FFF6ECE5FFE7DDD7FF7A5E50FF9078
        6EFF82685BFF82675AFF806659FF7F6558FF7E6357FF7D6356FF7A6055FF795F
        53FF775D52FF765B50FF765A50FF5F443BFF0000001500000000000000000000
        0000000000000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EF
        E9FFF7EFE9FFF7EFE8FFF6EDE8FFF6EDE8FFF6EDE6FFE8E0D9FF7E6253FF947C
        71FF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B433AFF5941
        39FF584038FF573F37FF775C52FF63473DFF0000001300000000000000000000
        0000000000000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0
        E9FFF6EFE9FFF7EFE9FFF7EFE8FFF7EFE9FFF6EDE8FFEAE1DCFF816656FF9680
        75FF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7CAFFF3EA
        E2FFF3E9E2FF5A4139FF795E54FF664B40FF0000001100000000000000000000
        0000000000000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0
        EBFFF7F0EBFFF7F0EAFFF7F0EAFFF7F0E9FFF7EFE9FFEBE5DFFF856A59FF9983
        79FF70564DFFF4ECE6FFEBDACFFFEADACFFFE9D9CDFFE9D9CCFF513730FF6549
        3EFFF3EAE3FF5D453CFF7B6156FF6A4F43FF0000000F00000000000000000000
        0000000000000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1
        EBFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EAFFF7F0EAFFEEE7E2FF896E5CFF9C87
        7DFF755A50FFF5EDE8FFEBDCD2FFEADCD0FFEADACFFFEAD9CEFF49312BFF5D40
        39FFF4EBE4FF60483FFF7D6358FF6E5346FF0000000D00000000000000000000
        0000000000000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2
        ECFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F1EAFFF1E9E4FF8D7260FF9F8A
        81FF795E54FFF5EEE9FFECDED4FFEBDCD2FFEADCD1FFEADBD0FF452D27FF472E
        29FFE9D9CDFF644C43FF7F655AFF72574AFF0000000B00000000000000000000
        000000000000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2
        EDFFF8F2EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF2EBE5FF917663FFA28D
        83FF7C6157FFF5EFEAFFF5EEE9FFF5EEE9FFF5EDE8FFF5EDE7FFF5ECE6FFF4EC
        E6FFF4ECE6FF695046FF998278FF765B4DFF0000000900000000000000000000
        000000000000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3
        EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF5EEEAFFAC9686FF9377
        64FF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E64FF8269
        5FFF7D645BFF6E544AFF7C6052FF5B463BC20000000500000000000000000000
        000000000000000000030000000DDBC7BFFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3
        F1FFF9F3F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF6EFEBFFF5EE
        E9FFF4EDE8FFF4EDE8FFF4EDE7FFF4EDE7FFF2EBE6FFF2EBE6FFF2EAE5FFF7F3
        F1FFD2BCB4FF000000190000000B000000040000000100000000000000002D27
        24B73D352FFF3C342EFF39312CFF372F2AFF352E28FF342B26FF322B25FF2F29
        23FF2E2721FF2D2620FF2C241FFF2B231EFF645D58FFF9F3EFFFF8F2EFFFF9F2
        EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
        F3FFAE8373FF0000001200000004000000000000000000000000000000004038
        32FF5B524CFF4E443EFF4C413AFF484038FF463D36FF443A33FF413731FF3F36
        2FFF3E352DFF3C312BFF393129FF382F27FF2A231EFFF9F3F0FFF9F3EFFFF9F3
        EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
        F2FFB08374FF0000001100000004000000000000000000000000000000004139
        34FF5D544DFFFAF8F7FF4D433DFFF9F6F5FF473E37FFF9F4F2FF433932FFF7F1
        EFFF3F362FFFF7F0EDFFF7EEECFF393029FF2B231EFFF9F4F0FFF9F3F1FFF9F4
        F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
        EEFFB38576FF000000100000000400000000000000000000000000000000423A
        35FF5F564FFFFAF8F7FF4E443EFFF9F6F5FF494038FFF8F5F3FF453A35FFF7F3
        F0FF403730FFF7F0EEFF3C322CFF3A312BFF2B241EFFFAF6F2FFFAF6F1FFF9F4
        F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
        E9FFB38978FF0000000F0000000400000000000000000000000000000000433B
        35FF625952FF88817BFFFAF8F7FF857E78FF4B4139FFF9F6F3FF463D36FFF8F2
        F0FF413831FFF7F1EEFF3E332CFF3C312BFF2C241FFFFAF6F2FFF9F6F3FFFAF6
        F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
        DDFFB5897AFF0000000E0000000400000000000000000000000000000000443C
        36FF645B55FFFAF9F8FF514740FFFAF8F6FF4D433CFFF9F6F5FFF9F5F2FFF9F3
        F2FF433932FFF7F2EFFF3F352DFF3D322CFF2D2620FFFAF7F4FFF9F5F2FFF9F5
        F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
        C2FFB78C7DFF0000000D0000000300000000000000000000000000000000443D
        37FF675C56FFFBF9F8FF524841FFFAF8F7FF4E443EFFF9F7F5FF493F38FFF9F5
        F3FF443A33FFF8F2EFFF403630FF3E352DFF2E2721FFFAF7F4FFFBF7F4FFF8F2
        EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
        ACFFB78C7DFF0000000A0000000300000000000000000000000000000000453D
        37FF685E59FF665C55FF635853FF5F564FFF5D524CFF594F49FF564B44FF5249
        41FF4E453EFF4B413AFF493F38FF463D35FF2F2722FFFBF8F6FFFAF8F4FFF7F2
        EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
        A6FF4C352D86000000060000000200000000000000000000000000000000342D
        2ABD453D37FF443C35FF423B35FF403833FF3F3732FF3D352FFF3B332EFF3931
        2BFF362F2AFF352D28FF342B27FF312A24FF645E5AFFFBF9F6FFFBF8F6FFF6F1
        EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
        3086000000080000000300000001000000000000000000000000000000000000
        0000000000000000000100000005E1CEC7FFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
        F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
        ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
        F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
        EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
        FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
        E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F
        91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
        8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000200000002000000030000
        0003000000030000000300000003000000030000000300000004000000040000
        0004000000040000000400000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnExtraXMLClick
      AutoGrayScale = False
    end
    object dxBtnExtraerQR: TdxBarLargeButton
      Caption = '&Extraer QR'
      Category = 0
      Hint = 'Extraer QR'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF00000000000000000000
        0000000000001D1D1D90262626C00909092D0000000000000000000000000000
        00000909092D262626C01D1D1D90000000000000000000000000000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000B0B0B36333333FF333333FF2F2F2FEA0404041200000000000000000404
        04122F2F2FEA333333FF333333FF0B0B0B360000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF00000000000000000000
        00001D1D1D90333333FF333333FF333333FF1A1A1A8400000000000000001C1C
        1C8A333333FF333333FF333333FF1D1D1D930000000000000000000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000292929CC333333FF333333FF333333FF2F2F2FEA01010103010101032F2F
        2FEA333333FF333333FF333333FF292929CC0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF00000000000000000101
        0106323232FC333333FF333333FF333333FF333333FF0D0D0D420D0D0D423333
        33FF333333FF333333FF333333FF323232FC0101010600000000000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000808
        0827333333FF333333FF333333FF333333FF333333FF1F1F1F991F1F1F993333
        33FF333333FF333333FF333333FF333333FF0808082700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF00000000000000000101
        0106262626BD333333FF333333FF333333FF333333FF303030F0303030F03333
        33FF333333FF333333FF333333FF262626BD0101010600000000000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010101061A1A1A84323232F9333333FF333333FF333333FF333333FF3333
        33FF333333FF323232F91A1A1A84010101060000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF00000000000000000F0F
        0F4B222222AB292929CC303030F0333333FF333333FF333333FF333333FF3333
        33FF333333FF303030F0292929CC222222AB0F0F0F4B00000000000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202093131
        31F3333333FF333333FF333333FF333333FF333333FF2E2E2EE42E2E2EE43333
        33FF333333FF333333FF333333FF333333FF313131F302020209000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF000000000B0B0B393333
        33FF333333FF333333FF333333FF333333FF333333FF1616166C1616166C3333
        33FF333333FF333333FF333333FF333333FF333333FF0B0B0B39000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        00000000000000000000000000000000000000000000000000001616166C3333
        33FF333333FF333333FF333333FF333333FF262626BD04040415040404152626
        26BD333333FF333333FF333333FF333333FF333333FF1616166C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF00000000282828C63333
        33FF333333FF333333FF333333FF2C2C2CDE050505180303030F0303030F0505
        05182A2A2AD2333333FF333333FF333333FF333333FF282828C6000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000313131F63333
        33FF333333FF333333FF222222A8040404150000000000000000000000000000
        00000202020C212121A5333333FF333333FF333333FF313131F6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF00000000232323B12F2F
        2FED202020A20909092D00000000000000000000000000000000000000000000
        000000000000000000000909092D202020A2303030F0222222AB000000002626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF262626BF262626BF262626BF2626
        26BF262626BF262626BF262626BF262626BF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnExtraerQRClick
      AutoGrayScale = False
    end
  end
  object dlgSave1: TSaveDialog
    Left = 528
    Top = 248
  end
  object FolderDlg1: TFolderDialog
    DialogX = 0
    DialogY = 0
    Version = '1.1.0.1'
    Left = 232
    Top = 256
  end
end
