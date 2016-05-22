object frmConceptoExtraEmpleado: TfrmConceptoExtraEmpleado
  Left = 0
  Top = 0
  Caption = 'Listado de conceptos extra para empleados.'
  ClientHeight = 468
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object groupBox1: TcxGroupBox
    Left = 492
    Top = 126
    Align = alClient
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 0
    DesignSize = (
      583
      342)
    Height = 342
    Width = 583
    object dxBarSite1: TdxBarDockControl
      Left = 3
      Top = 336
      Width = 577
      Align = dalBottom
      BarManager = dxbrmngr1
    end
    object cxDBGrid2: TcxGrid
      AlignWithMargins = True
      Left = 6
      Top = 152
      Width = 571
      Height = 181
      Margins.Top = 130
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      object cxDbGridCocneptosExtra: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsConceptosExtra
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object grdColumDbGridCocneptosExtraColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'ClaveConcepto'
        end
        object grdColumDbGridCocneptosExtraColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Titulo'
        end
        object grdColumDbGridCocneptosExtraColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
        end
        object grdColumDbGridCocneptosExtraColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'AplicarSobre'
        end
        object grdColumDbGridCocneptosExtraColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'FechaAplicacion'
          Width = 101
        end
        object grdColumDbGridCocneptosExtraColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'FechaTermino'
          Width = 91
        end
        object grdColumDbGridCocneptosExtraColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'Cantidad'
        end
        object grdColumDbGridCocneptosExtraColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'Saldo'
          Width = 119
        end
        object grdColumDbGridCocneptosExtraColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'Maximo'
          Width = 86
        end
        object grdColumDbGridCocneptosExtraColumn10: TcxGridDBColumn
          DataBinding.FieldName = 'ModoEmpleado'
          Width = 97
        end
      end
      object gridCardDBGrid2DBCardView1: TcxGridDBCardView
        PopupMenu = dxPopup1
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsConceptosExtra
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '< Sin conceptos extra cargados al personal seleccionado >'
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 230
        OptionsView.CellAutoHeight = True
        Styles.Background = cxstyl1
        Styles.Content = cxstylFontContent
        object cxRowCardDBGrid2DBCardView1Row2: TcxGridDBCardViewRow
          Caption = 'Concepto Extra'
          DataBinding.FieldName = 'Titulo'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row3: TcxGridDBCardViewRow
          Caption = 'Aplicaci'#243'n'
          DataBinding.FieldName = 'FechaAplicacion'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row4: TcxGridDBCardViewRow
          Caption = 'T'#233'rmino'
          DataBinding.FieldName = 'FechaTermino'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row5: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Cantidad'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row6: TcxGridDBCardViewRow
          Caption = 'M'#225'ximo'
          DataBinding.FieldName = 'Maximo'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row7: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Modo'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row8: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Tipo'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row9: TcxGridDBCardViewRow
          Caption = 'Modo-Empleado'
          DataBinding.FieldName = 'ModoEmpleado'
          Position.BeginsLayer = True
        end
        object cxRowCardDBGrid2DBCardView1Row10: TcxGridDBCardViewRow
          Caption = 'Aplicar Sobre'
          DataBinding.FieldName = 'AplicarSobre'
          Position.BeginsLayer = True
        end
        object CxRowCardFechaRegistro: TcxGridDBCardViewRow
          Caption = 'Fecha de Registro'
          DataBinding.FieldName = 'FechaRegistro'
          Position.BeginsLayer = True
        end
      end
      object CxGridNivelGrid1Level2: TcxGridLevel
        GridView = gridCardDBGrid2DBCardView1
      end
    end
    object cxLabel1: TcxLabel
      Left = 6
      Top = 128
      Caption = 'Conceptos extra del empleado'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHotLight
      Style.Font.Height = 18
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 5318656
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      Transparent = True
    end
    object cxdblblNombreCompleto: TcxDBLabel
      Left = 6
      Top = 6
      DataBinding.DataField = 'NombreCompleto'
      DataBinding.DataSource = dsEmpleados
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 21
      Width = 317
    end
    object cxlblreingreso: TcxLabel
      Left = 6
      Top = 32
      Caption = 'Reingreso:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlblCUrp: TcxLabel
      Left = 6
      Top = 55
      Caption = 'C.U.R.P.:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlblRfc: TcxLabel
      Left = 6
      Top = 78
      Caption = 'R.F.C.;'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlbliMSS: TcxLabel
      Left = 6
      Top = 101
      Caption = 'N.S.S:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxdblbl1: TcxDBLabel
      Left = 68
      Top = 32
      DataBinding.DataField = 'FechaReingreso'
      DataBinding.DataSource = dsEmpleados
      Transparent = True
      Height = 21
      Width = 325
    end
    object cxdblblCurp: TcxDBLabel
      Left = 68
      Top = 55
      DataBinding.DataField = 'Curp'
      DataBinding.DataSource = dsEmpleados
      Transparent = True
      Height = 21
      Width = 325
    end
    object cxdblblRfc: TcxDBLabel
      Left = 68
      Top = 78
      DataBinding.DataField = 'Rfc'
      DataBinding.DataSource = dsEmpleados
      Transparent = True
      Height = 21
      Width = 325
    end
    object cxdblblnumeroImss: TcxDBLabel
      Left = 68
      Top = 101
      DataBinding.DataField = 'NumeroSeguroSocial'
      DataBinding.DataSource = dsEmpleados
      Transparent = True
      Height = 21
      Width = 325
    end
    object ImgFoto: TcxDBImage
      Left = 461
      Top = 6
      Anchors = [akTop, akRight]
      DataBinding.DataField = 'imagen'
      DataBinding.DataSource = dsEmpleados
      Properties.Caption = 'Fotograf'#237'a'
      Properties.GraphicClassName = 'TJPEGImage'
      TabOrder = 12
      Height = 134
      Width = 119
    end
  end
  object cxspltr1: TcxSplitter
    Left = 486
    Top = 126
    Width = 6
    Height = 342
    HotZoneClassName = 'TcxXPTaskBarStyle'
    Control = groupBox2
  end
  object groupBox2: TcxGroupBox
    Left = 0
    Top = 126
    Align = alLeft
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 1
    Height = 342
    Width = 486
    object cxDBGrid1: TcxGrid
      Left = 2
      Top = 72
      Width = 482
      Height = 268
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 20
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Blue'
      object cxDbGridEmpleados: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxDbGridEmpleadosCellClick
        DataController.DataSource = dsEmpleados
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.GroupRowHeight = 35
        OptionsView.Indicator = True
        Styles.Background = cxstyl1
        Styles.Content = cxstylFontContent
        Styles.OnGetContentStyle = cxDbGridEmpleadosStylesGetContentStyle
        Styles.Header = cxstylFont
        object grdColumDbGridEmpleadosColumn1: TcxGridDBColumn
          Caption = 'Codigo Personal'
          DataBinding.FieldName = 'codigopersonal'
          Width = 88
        end
        object grdColumDbGridEmpleadosColumn2: TcxGridDBColumn
          Caption = 'Empleado'
          DataBinding.FieldName = 'nombrecompleto'
          Width = 198
        end
        object CxColumnReingreso: TcxGridDBColumn
          Caption = 'Ingreso'
          DataBinding.FieldName = 'FechaReingreso'
          Width = 177
        end
        object CxColumnTituloNomina: TcxGridDBColumn
          Caption = 'Tipo de N'#243'mina'
          DataBinding.FieldName = 'titulo'
          Visible = False
          GroupIndex = 0
        end
        object CxColumnConceptosExtraRegistrados: TcxGridDBColumn
          Caption = 'No. Conceptos Extra'
          DataBinding.FieldName = 'ConceptosExtraReg'
          Visible = False
        end
      end
      object CxGridNivelGrid1Level1: TcxGridLevel
        Caption = 'Listado de empleados'
        GridView = cxDbGridEmpleados
      end
    end
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 482
      Height = 70
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        482
        70)
      object btnBuscar: TcxButton
        Left = 408
        Top = 31
        Width = 70
        Height = 26
        Caption = '&Buscar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'MoneyTwins'
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
        TabOrder = 0
        OnClick = btnBuscarClick
      end
      object edtFNombre: TcxTextEdit
        Left = 64
        Top = 33
        TabOrder = 1
        OnKeyUp = edtFNombreKeyUp
        Width = 338
      end
      object cxlbl1: TcxLabel
        Left = 4
        Top = 34
        Caption = 'Empleado:'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 4
        Top = 6
        Caption = 'Lista de empleados'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clHotLight
        Style.Font.Height = 18
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.TextColor = 5318656
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object cxLabel11: TcxLabel
        Left = 286
        Top = 6
        Anchors = [akTop, akRight]
        Caption = 'Personal con conceptos extras incluidos'
        Transparent = True
      end
      object cxLabel10: TcxLabel
        Left = 271
        Top = 7
        Anchors = [akTop, akRight]
        Caption = '   '
        ParentColor = False
        Style.BorderColor = clBlack
        Style.BorderStyle = ebsFlat
        Style.Color = clSkyBlue
      end
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1075
    Height = 126
    BarManager = dxbrmngr1
    ColorSchemeName = 'Office2010Blue'
    Contexts = <>
    TabOrder = 8
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Conceptos Extra por Empleado'
      Groups = <
        item
          Caption = 'Opciones de concepto extra para empleados'
          ToolbarName = 'tbdxbrmngr1Bar1'
        end
        item
          ToolbarName = 'dxbrmngr1Bar1'
        end
        item
          ToolbarName = 'dxbrmngr1Bar2'
        end>
      Index = 0
    end
  end
  object pnlEdicion: TPanel
    Left = 544
    Top = 89
    Width = 395
    Height = 216
    Hint = 'Fecha en que inicia la applicaci'#243'n del concepto.'
    Align = alCustom
    TabOrder = 6
    Visible = False
    object EdtSaldo: TDBAdvEdit
      Left = -33
      Top = 216
      Width = 129
      Height = 21
      LabelCaption = 'Saldo'
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      TabOrder = 7
      Text = 'DBAdvEdit1'
      Visible = False
      Version = '2.9.0.0'
      DataField = 'Saldo'
    end
    object CbbModo: TAdvDBComboBox
      Left = -57
      Top = 244
      Width = 129
      Height = 21
      Color = clWindow
      Version = '1.0.1.1'
      Visible = False
      ButtonWidth = 18
      DataField = 'Modo'
      DropWidth = 0
      Enabled = True
      ItemIndex = 0
      Items.Strings = (
        'MEMORIA'
        'NOMINA')
      Items.StoredStrings = (
        'MEMORIA'
        'NOMINA')
      LabelCaption = 'Modo'
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 8
    end
    object btn2: TcxButton
      Left = 299
      Top = 178
      Width = 86
      Height = 26
      Caption = '&Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000019000000420000004300000043000000430000
        0043000000430000003500000005000000000000000000000000000000000000
        000000000000000000192936ABEB3A49C4FF3846C2FF3644C0FF3240BFFF2D3D
        BFFF2C3CBEFF2F3FC2FF00000039000000050000000000000000000000000000
        0000000000192835AAEB4C5BD1FF6477FFFF6376FEFF6376FEFF6376FEFF6376
        FEFF6376FEFF6476FFFF2E3EC1FF000000390000000500000000000000000000
        00192735AAEB5663D3FF5E72FDFF5B70FBFF5C70FBFF5D71FBFF5D71FBFF5D71
        FBFF5B70FBFF5D71FBFF5F73FEFF2F3EC1FF0000003900000005000000102735
        AAEB5F6CD6FF596DFBFF5468F9FFCCD1FDFF5469F8FF586CF9FF596DF9FF5267
        F9FFF5F6FFFF495FF8FF596DF9FF5A6EFBFF2F3FC1FF00000035000000166B75
        D1FF5469F9FF5268F7FFCAD1FCFFFFFFFFFFFFFFFFFF435AF6FF4E64F7FFC3CB
        FCFFFFFFFFFFFFFFFFFF4B61F7FF5469F7FF576CFBFF2F3FC4FF000000167881
        D3FF4E65F5FF4E65F5FF4A62F4FFFFFFFFFFFFFFFFFFFFFFFFFFBAC3FBFFFFFF
        FFFFFFFFFFFFECEFFEFF4A60F5FF4F65F5FF5168FAFF2F3FC3FF00000016848C
        D7FF4A61F3FF4B61F3FF495FF3FF455CF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEAEDFEFF435AF3FF4B61F3FF4B61F3FF4D63F8FF2E3EC3FF000000169097
        DBFF455DF0FF465EF0FF465EF0FF3F58EFFFB6BFFAFFFFFFFFFFFFFFFFFFFFFF
        FFFF2E49EEFF455DF0FF465EF0FF465EF0FF4760F4FF2E3EC3FF000000169BA3
        DFFF4059EEFF415AEEFF3B55EEFFBEC6F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF2E4AECFF4059EEFF415AEEFF415BF2FF2E3EC3FF00000016A6AD
        E2FF3B54ECFF3B54ECFFC3CBF9FFFFFFFFFFFFFFFFFFE8ECFDFF314AEBFFFFFF
        FFFFFFFFFFFFFFFFFFFF324DEBFF3D56ECFF3C56F0FF2D3DC2FF000000057C86
        D8FF3750EAFF3650EAFF324CE9FFFFFFFFFFEAEBFDFF304BE9FF3650EAFF314B
        E9FFFFFFFFFFEAECFDFF324DE9FF3651EBFF5461D2FF2939B0EA000000000000
        00058890DBFF314CE9FF304BE8FF3651E8FF2B48E7FF334EE8FF334EE8FF314C
        E8FF3651E8FF2B48E7FF314CE9FF5F6DD5FF2836ACE500000000000000000000
        000000000005939ADFFF2D48E6FF2D49E6FF2F4AE6FF2F4AE6FF2F4AE6FF2F4A
        E6FF2F4AE6FF2C48E7FF6A78D9FF2633ACE50000000000000000000000000000
        0000000000000000000599A0E0FF2642E4FF213EE4FF223FE4FF2240E5FF2341
        E5FF2341E5FF7480DCFF2633ACE5000000000000000000000000000000000000
        00000000000000000000000000052737C1FF2838C1FF2939C1FF293AC1FF2A3A
        C1FF2B3BC1FF2737AFE900000000000000000000000000000000}
      TabOrder = 9
      OnClick = btn2Click
    end
    object cbbConceptos: TcxExtLookupComboBox
      Left = 64
      Top = 37
      Properties.View = cxDbGridGridRepos1DBTableView1
      Properties.KeyFieldNames = 'IdConceptoExtra'
      Properties.ListFieldItem = grdColumDbGridGridRepos1DBTableView1Column1
      TabOrder = 0
      Width = 321
    end
    object lbl2: TcxLabel
      Left = 5
      Top = 37
      Caption = 'Concepto:'
      Transparent = True
    end
    object btn1: TcxButton
      Left = 209
      Top = 178
      Width = 86
      Height = 26
      Caption = '&Guardar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0001000000050000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000400000001000000010000
        000E573E33FD583C32FF5A3F37FFC18656FFBB7D4DFFB77748FFB37141FFAF6B
        3AFFAB6535FFA76030FF4F342CFF4F342DFF2519158B00000004000000010000
        001783655AFF76574BFF654B41FFE6C08CFFE3B981FFE2B57CFFE0B277FFDFAF
        72FFDEAC6FFFDCA96BFF6B4C43FF6B4C42FF50362DFF00000007000000010000
        00178C6E63FF7D5D50FF6C5247FFF9F3F0FFF7F1ECFFF6F0EAFFF5EEE9FFF4ED
        E7FFF3ECE6FFF3EBE4FF6F5046FF6E4F45FF523830FF00000007000000010000
        001595786AFF836557FF72584DFFFAF5F2FFD2B4A6FFC9A492FFC39C8BFFBE92
        83FFB88C7BFFF4ECE6FF72544BFF705248FF543A32FF00000006000000000000
        00149E8275FF8A6D5EFF796053FFFAF7F3FFD8BCAEFFCDAC9DFFC8A392FFC39B
        8BFFBD9283FFF4EDE8FF75594EFF74574CFF573D35FF00000006000000000000
        0013A68D7FFF937464FF7F6659FFFCF9F8FFFCF9F7FFFCF8F5FFF9F5F2FFF9F4
        F1FFF7F2EFFFF7F1EDFF785E52FF775A50FF5C4239FF00000006000000000000
        0012B09687FF9A7D6BFF9A7D6CFF997E6CFF997E6CFF997E6CFF82675BFF8066
        59FF7F655AFF7F6458FF7C6255FF7A6054FF5E463CFF00000005000000000000
        0010B79F91FFA08471FFA08573FFA08574FFA18673FFA08673FF9C8271FF836B
        60FF836A5DFF82695DFF81675AFF7F6359FF624940FF00000005000000000000
        000FBFA898FFA78B79FF6E5449FF543831FF644A42FF61483FFF5E453CFF5B43
        39FF594137FF563E36FF887164FF82685CFF654C42FF00000005000000000000
        000EC5B0A0FFAD927DFF573B34FF654F48FFEBDFD5FFDEC9B9FFDDC7B7FF5841
        39FF705347FFE4D3C7FF8B7368FF856B5FFF685146FF00000004000000000000
        000CCAB6A7FFB29782FF593C35FF66514AFFF2E8E0FFE4D3C4FFE3D0C1FF523E
        36FF5E433BFFEBDDD4FF8E7469FF866E64FF6B5348FF00000004000000000000
        000BCFBCACFFB59B86FF5A3E36FF68524BFFF6F0EAFFEADCCEFFE9DACCFF4B3A
        33FF533832FFF1E6DEFF8E786AFF897165FF6D564BFF00000004000000000000
        0008D2BFB0FFD3C2B1FF5B3E37FF69534CFFF9F5F1FFF9F4EFFFF8F3EEFFF7F2
        ECFFF7F1EBFFF6EEE9FFB4A399FFB19D95FF6E564BFC00000003000000000000
        00020000000700000009000000090000000A0000000A0000000A0000000A0000
        000B0000000B0000000B0000000B0000000B0000000700000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      OnClick = btn1Click
    end
    object CxBtnAsimilado: TcxButton
      Left = 64
      Top = 178
      Width = 113
      Height = 26
      Caption = 'C&alcular Asimilado'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'MoneyTwins'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000007E5446B7B074
        62FFAF7461FFAF7460FFAE735FFFAE725FFFAD715EFFAD715EFFAC705CFFAC70
        5CFFAC705CFFAC6F5BFFAC6F5BFFAB6F5BFFAB6E5AFF7B4F41B7B67E6CFFFBF6
        F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F1FFFAF4F1FFFAF4F1FFF9F4F0FFF9F4
        F0FFF9F4F0FFF9F3F0FFF8F3EFFFF9F3EFFFF8F2EEFFB37968FFB77F6FFFFBF7
        F4FFF7EFE9FFF6EEE9FF31231BFFF6EEE9FFF6EEE9FFF7EEE8FFF6EEE8FFF6EE
        E8FF1A0E9EFFF6EEE8FFF6EDE7FFF5EDE7FFF9F4F0FFB47B6AFFB88171FFFBF8
        F5FFF7F0EBFFF7EFEBFF34251EFFF7F0EAFFF7EFEAFFF7EFE9FFF6EEE9FFF6EE
        E9FF1C12A1FFF6EFE8FFF6EFE8FFF6EEE9FFFAF4F2FFB47C6BFFB98472FFFCF9
        F7FFF8F0ECFFF7F1ECFF382921FFF8F0EBFFF7F0EBFFF8F0EBFF5D55B8FF2117
        A5FF2016A4FF2015A3FF5B52B7FFF6EFEAFFFAF6F3FFB67F6DFFBB8674FFFDFA
        F8FFF8F1EDFFF8F2EDFF3D2C25FFF8F1ECFFF8F1ECFFF7F0ECFF261DAAFF5567
        DBFF4A5DD8FF5163D9FF2219A6FFF7F0EAFFFAF7F5FFB7806FFFBC8877FFFDFB
        F9FF73665EFF3C2D25FF3D2C25FF3C2C24FF70635CFFF8F2EDFF2A22AEFF6374
        DFFF4E61D9FF5F70DDFF261DA9FFF7F0ECFFFBF8F6FFB98271FFBF8C7AFFFEFC
        FBFF423229FFF9F2EEFFF9F2EDFFF8F2EEFF402F28FFF9F4F0FF2F28B1FF7181
        E2FF5365DBFF6D7DE1FF2A23ADFFF9F2EEFFFCFAF9FFBB8675FFBF8C7AFFFEFC
        FBFF47352DFFFAF4F0FFF9F4F0FFF9F4F0FF44332BFFF9F4F0FF332DB5FF7C8C
        E5FF586ADCFF7888E4FF2F28B2FFF9F2EEFFFCFAF9FFBB8675FFC08D7DFFFEFD
        FCFF4D3A31FFFAF4F0FFF9F4F0FFF9F4F0FF4A372FFFF9F4F1FF3832B9FF8493
        E7FF5C6EDDFF8291E6FF342EB6FFF9F3F0FFFDFBFAFFBC8877FFC28F7EFFFEFD
        FDFF7E6E66FF513E35FF503C34FF503C33FF7B6C64FFFAF5F2FF3C38BDFF94A9
        ECFF94A9ECFF93A8ECFF3833BAFFFAF4F0FFFDFCFAFFBE8A79FFC39281FFFEFE
        FDFFFBF7F4FFFAF7F4FF5A443BFFFBF7F4FFFAF7F4FFFAF6F3FF6F6CCEFF3E3B
        BFFF3E39BFFF3D39BEFF6D69CBFFF9F6F2FFFDFCFCFFBF8D7BFFC49483FFFFFE
        FEFFFBF8F5FFFCF8F5FF5E493FFFFBF7F5FFFBF7F5FFFBF7F4FFFBF6F4FFFBF6
        F4FF423EC1FFFAF6F3FFFAF6F3FFFAF6F3FFFEFDFCFFC08F7EFFC59584FFFFFE
        FEFFFCF8F7FFFBF8F6FF624B41FFFBF8F5FFFBF8F6FFFBF8F5FFFCF8F5FFFCF8
        F5FF4442C4FFFBF7F4FFFBF7F4FFFBF7F4FFFEFDFDFFC2907FFFC69786FFFFFF
        FEFFFFFFFEFFFFFEFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFFFFEFEFFFFFEFDFFFEFEFDFFC39281FF997A6EBDCFA4
        94FFCFA393FFCEA393FFCEA393FFCEA292FFCEA292FFCDA292FFCDA191FFCDA1
        91FFCDA090FFCCA090FFCC9F8FFFCB9E8EFFCB9E8EFF967469BD}
      TabOrder = 11
      OnClick = CxBtnAsimiladoClick
    end
    object lblNombreEmpleado: TcxLabel
      Left = 4
      Top = 6
      Caption = 'NOMBRE EMPLEADO'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHotLight
      Style.Font.Height = 16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TextColor = 5318656
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      Transparent = True
    end
    object CxDateFechaAplicacion: TcxDBDateEdit
      Left = 65
      Top = 60
      DataBinding.DataField = 'fechaAplicacion'
      DataBinding.DataSource = dsUptConExtxEmp
      TabOrder = 1
      Width = 129
    end
    object cxlbl2: TcxLabel
      Left = 4
      Top = 61
      Caption = 'Aplicaci'#243'n:'
      Transparent = True
    end
    object cxlblCantidad: TcxLabel
      Left = 213
      Top = 61
      Caption = 'Cantidad:'
      Transparent = True
    end
    object CxDbTextCantidad: TcxDBTextEdit
      Left = 267
      Top = 60
      DataBinding.DataField = 'Cantidad'
      DataBinding.DataSource = dsUptConExtxEmp
      TabOrder = 2
      Width = 118
    end
    object CxDateFechaRegistro: TcxDBDateEdit
      Left = 64
      Top = 84
      DataBinding.DataField = 'FechaRegistro'
      DataBinding.DataSource = dsUptConExtxEmp
      TabOrder = 3
      Width = 321
    end
    object cxlbl3: TcxLabel
      Left = 5
      Top = 85
      Caption = 'Registro:'
      Transparent = True
    end
    object dxRbFecha: TcxRadioButton
      Left = 4
      Top = 137
      Width = 53
      Height = 17
      Caption = 'Fecha:'
      TabOrder = 16
      OnClick = dxRbFechaClick
      Transparent = True
    end
    object dxRbMonto: TcxRadioButton
      Left = 4
      Top = 114
      Width = 68
      Height = 17
      Caption = 'M'#225'ximo:'
      Checked = True
      TabOrder = 17
      TabStop = True
      OnClick = dxRbMontoClick
      Transparent = True
    end
    object CxCurrencyMontoMaximo: TcxDBCurrencyEdit
      Left = 64
      Top = 110
      DataBinding.DataField = 'Maximo'
      DataBinding.DataSource = dsUptConExtxEmp
      TabOrder = 4
      Width = 321
    end
    object CxDateFechaTermino: TcxDBDateEdit
      Left = 64
      Top = 135
      DataBinding.DataField = 'FechaTermino'
      DataBinding.DataSource = dsUptConExtxEmp
      TabOrder = 5
      Width = 321
    end
  end
  object dxbrmngr1: TdxBarManager
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 1032
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object tbdxbrmngr1Bar1: TdxBar
      Caption = 'MainToolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 914
      FloatTop = 436
      FloatClientWidth = 68
      FloatClientHeight = 184
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBtnAgregar'
        end
        item
          Visible = True
          ItemName = 'btnBtnEditar'
        end
        item
          Visible = True
          ItemName = 'btnBtnEliminar'
        end
        item
          Visible = True
          ItemName = 'btnBtnActualizar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnImprmir'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxbrmngr1Bar1: TdxBar
      Caption = 'Opciones de empleados'
      CaptionButtons = <>
      DockedLeft = 309
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnCargarTodo'
        end
        item
          Visible = True
          ItemName = 'dxBtnEditarFicha'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbrmngr1Bar2: TdxBar
      Caption = 'Cerrar'
      CaptionButtons = <>
      DockedLeft = 452
      DockedTop = 0
      FloatLeft = 1109
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBtnCerrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnBtnAgregar: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000600000007000000070000
        0006000000050000000400000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000060000000B0000001000000015000000180000001A0000001A0000
        001800000016000000110000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E000000171E11094D4C2B1795744223D17A4425D996542DFF96542DFF7A44
        25D9744223D14C2A17961E11094F000000190000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B00000015321C
        0F6B824928E19F6137FFB47B4BFFC4915CFFC99560FFD3A36BFFD3A46BFFC895
        60FFC5905CFFB47B4CFFA06238FF814929E2321C0F6D000000180000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000D120A0636754325CFA76A
        3EFFC7935EFFD5A56CFFD4A46DFFD4A56CFFD4A56CFFD4A56CFFD4A56CFFD5A5
        6CFFD4A56CFFD5A56DFFD4A66DFFC7945FFFA76A3FFF764426D1120A063A0000
        0010000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000E26160C5590552FF0BE8956FFD6A6
        6EFFD5A56DFFD5A56DFFD5A66DFFD6A76EFFD5A76EFFD5A76EFFD5A76FFFD6A7
        6FFFD6A76EFFD5A76EFFD5A66EFFD5A66DFFD6A66FFFBE8957FF91542FF12616
        0C5A000000120000000600000001000000000000000000000000000000000000
        000000000000000000040000000C26160C539B5F38FAC79560FFD5A76EFFD6A6
        6EFFD5A76FFFD6A770FFD6A870FFD6A871FFD6A871FFD6A871FFD7A871FFD7A9
        71FFD6A870FFD6A870FFD6A871FFD6A86FFFD6A76FFFD5A86FFFC79562FF9A5F
        38FA26160D590000001000000005000000010000000000000000000000000000
        00000000000200000009160D0738925934EECA9A64FFD6A870FFD6A76FFFD6A8
        70FFD7A972FFD7A972FFD7AA73FFDAB17BFFE0BC8DFFE1BE91FFE1BF91FFE0BD
        8EFFDAB07BFFD8AB73FFD7AA73FFD7A972FFD7A971FFD7A870FFD6A970FFCA9A
        65FF925934EF160D073E0000000C000000030000000100000000000000000000
        00010000000500000010774829CBC08C5CFFD8A972FFD6A872FFD8A972FFD8AA
        74FFD8AB74FFD8AB75FFD8AC75FFCEA478FFA46E45FF9E653DFF9E653DFFA46E
        45FFD0A97EFFDAAE79FFD8AC76FFD8AC75FFD8AA74FFD8AB73FFD7AA72FFD7AA
        73FFC08D5DFF7A492AD000000016000000070000000100000000000000000000
        00020000000A34201365AB734AFFD8AD76FFD7AA73FFD8AB74FFD8AB75FFD9AC
        76FFDAAD77FFDAAD78FFDAAF79FFA46D44FFD9C3B4FFF8F2EDFFF9F3EFFFE1CF
        C1FFA67047FFDDB683FFDAAF78FFDAAD78FFDAAD77FFD9AC76FFD8AB75FFD8AA
        74FFD9AD78FFAC744BFF341F126B0000000E0000000300000001000000010000
        00040000000F875332DDCC9B6AFFD8AB76FFD8AB75FFD9AC77FFD9AF78FFDAB0
        79FFDAB07AFFDBB17BFFDBB17CFF9C633AFFECDFD8FFF1E6DDFFF2E6DDFFF9F4
        F0FF9E673EFFE0BA88FFDCB27CFFDBB17BFFDAB07AFFDAB079FFDAAF78FFD9AD
        77FFD9AC77FFCC9C6BFF885432DF000000160000000700000001000000020000
        000727190F4EAF7852FFDAB17BFFD8AC76FFDAAD78FFDBB079FFDBB17BFFDBB2
        7CFFDCB27FFFDCB37FFFDCB480FF9C633AFFEADDD4FFF2E7E0FFF2E8DFFFF8F3
        EEFF9F6840FFE1BC8CFFDEB480FFDCB380FFDCB37EFFDCB27CFFDBB17BFFDAB0
        79FFD9AD77FFDBB17DFFAF7952FF2A1A10570000000B00000002000000020000
        000956362192C5976EFFDBAF7BFFDAB079FFDBB07BFFDBB27CFFDEB886FFE5C4
        98FFE6C69CFFE7C79CFFE7C79CFF9C633AFFEBDED6FFF3EAE2FFF3E9E2FFF9F4
        F0FFA06A42FFE9CEA5FFE7C89DFFE6C79CFFE5C599FFE0B988FFDCB37FFFDCB1
        7EFFDBB17AFFDBB27EFFC5986FFF563722980000000E00000003000000020000
        000B7B4F32C6D1A77AFFDBB17CFFDBB27BFFDCB27FFFDEB480FFD0AA7EFFA46E
        44FF9E673EFFA06A42FFA26D45FFA57049FFF4ECE5FFF5ECE5FFF5ECE5FFF9F5
        F1FFA26C44FFA26E46FFA36F48FFA47049FFAC7B54FFD6B28BFFDFB785FFDCB4
        80FFDCB27FFFDCB37EFFD2A97BFF7C5032CA0000001100000004000000030000
        000C99633EECD8B281FFDBB27DFFDCB37FFFDEB482FFDFB683FFA46E45FFD4BC
        AEFFF9F5F1FFF9F5F2FFFAF6F3FFFAF6F3FFF6EEE8FFF6EEE8FFF5EEE8FFF5ED
        E7FFFAF6F2FFFAF5F2FFF9F5F1FFFAF5F2FFE1CFC3FFA57047FFE3BE8EFFDFB6
        83FFDEB481FFDCB580FFDAB483FF99643FED0000001300000005000000030000
        000CA46D46FADEBA8AFFDEB480FFDEB581FFDFB784FFE0B887FF9C633AFFE6D9
        D3FFF5EDE7FFF5EEE8FFF7EFE9FFF7EFEBFFF7F1EBFFF7F1EBFFF6F1ECFFF7F0
        EBFFF6EFE9FFF6EEE8FFF5EDE7FFF5EBE5FFFAF6F3FF9E653DFFE4C192FFE0B8
        86FFDFB784FFDEB582FFDFBD8CFFA56E47FA0000001300000005000000030000
        000BA67049FAE4C297FFDEB582FFE0B785FFE0B987FFE3C08FFF9C633AFFDFCF
        C7FFF2EAE4FFF6F0EBFFF7F1EDFFF8F2EEFFF9F3EEFFF9F3EEFFF8F2EEFFF8F2
        EDFFF7F1EDFFF7F0EBFFF6EFE9FFF5EDE7FFF5EFEBFF9E653DFFE6C698FFE2BB
        89FFE0B987FFDFB784FFE4C398FFA7714AFA0000001200000005000000020000
        000A9E6B45ECE3C69DFFDFB986FFE2BD8CFFE6CB9EFFE8D1A6FFA36E45FFBE9E
        8CFFCCB6AEFFCFBAB1FFD1BDB5FFD4C1BAFFEDE3DEFFF9F5F2FFFAF5F1FFF9F4
        F0FFE5D7D1FFDDCDC5FFDDCCC4FFDDCEC6FFCFB5A7FFA57047FFE9D0A5FFE6C6
        97FFE2BD8BFFE0BA8AFFE4C69FFF9E6D47ED0000001100000004000000020000
        0008835A3BC5DEC19FFFE6C79AFFE9D1A5FFE9D2A8FFEAD5AAFFD7B990FFAD7C
        53FF9C633AFF9C633AFF9C633AFF9C633AFFECE4E0FFFAF8F4FFFAF7F4FFFCFB
        F9FF9C633AFF9C633AFF9C633AFF9C633AFFAD7B52FFD8B78EFFEACFA3FFE8CC
        9EFFE6C89BFFE4C394FFDFC2A1FF835A3CC80000000E00000003000000010000
        00065D422C8FD8BB9DFFEBD7AFFFEAD3AAFFEBD6ACFFEBD7AEFFECD9AFFFEDDA
        B0FFEDDAB2FFEEDBB4FFEEDCB4FF9C633AFFECE4E1FFFBFAF8FFFCF9F7FFFDFB
        FAFFA7754EFFF0DDB7FFEDD8B0FFEDD7AEFFECD5ABFFEBD2A7FFEAD1A5FFE9CE
        A2FFE8CC9FFFE9CCA2FFD7B898FF5D422D940000000B00000003000000010000
        00042D221848C6A07DFFF2E3C5FFEBD6AEFFECD9AFFFECDAB2FFEDDBB3FFEEDC
        B4FFEFDDB6FFEFDDB7FFF0DFB8FF9C633AFFECE5E1FFFCFCFAFFFCFBF9FFFDFC
        FBFFA57049FFF1DFBBFFEFDBB4FFEED9B1FFEDD7AFFFECD6ABFFEBD3A9FFEAD1
        A5FFE9CEA3FFF0DDBBFFC49B77FF2D20174E0000000700000002000000000000
        000200000007A07A5ADAE9D9BFFFEDDCB5FFEDDCB4FFEDDDB5FFEEDEB8FFEFDF
        B9FFF0E0BAFFF0E1BBFFF1E2BBFF9C633AFFE5D9D5FFF9F6F6FFFDFCFBFFF5F2
        F0FFA26C45FFF2E2BEFFF1DEB7FFEFDCB5FFEEDBB3FFEDD8B0FFECD5ADFFEBD4
        A9FFEBD3A9FFE8D4BAFF9C7453DC0000000E0000000400000001000000000000
        0001000000043E31245BCBA885FFF5ECD1FFEEDDB7FFEEDFB8FFEFE0BBFFF0E2
        BCFFF1E3BDFFF1E4BFFFF2E4BFFFA46F47FFC0A392FFCFBAB4FFCFBBB5FFC3A6
        97FFA7744DFFF3E5C1FFF2E1BBFFF1DFB8FFEFDCB6FFEFDBB3FFEDD9B0FFECD6
        ACFFF4E6CAFFC9A27EFF3E2E2161000000080000000200000000000000000000
        00000000000200000006947457C6E4D1B6FFF2E7C9FFEFE2BCFFF1E3BEFFF1E4
        BFFFF2E5C1FFF2E6C2FFF3E6C3FFDEC6A1FFAF7F57FF9C633AFF9C633AFFAF7F
        58FFDEC7A2FFF3E5C1FFF2E3BDFFF2E1BBFFF0DFB8FFEFDDB6FFEEDAB3FFF2E2
        C2FFE3CDB1FF926F51C80000000C000000040000000100000000000000000000
        0000000000010000000319140F28B6936FECEFE3CCFFF5EACDFFF1E5C1FFF2E7
        C2FFF2E8C3FFF3E8C4FFF3E9C5FFF4E9C5FFF4EAC7FFF4EAC7FFF4E9C6FFF5E9
        C6FFF4E8C5FFF3E6C2FFF3E6C1FFF3E4BEFFF1E1BCFFF0DFB9FFF4E5C6FFEFE1
        CAFFB28D6AED19130E2D00000006000000020000000000000000000000000000
        000000000000000000010000000431271E46C6A27EF9EFE3CBFFF8F1D8FFF3E8
        C4FFF3E9C5FFF4EAC7FFF4EAC8FFF4EBC8FFF5EBC9FFF5ECC9FFF5EBC9FFF5EB
        C8FFF4EAC7FFF4E8C5FFF3E7C4FFF3E5C0FFF2E3BEFFF7EDD3FFEEE0C8FFC39D
        78FA30251B4A0000000700000002000000000000000000000000000000000000
        00000000000000000000000000010000000432281F45BB9876EEE6D5BAFFFBF7
        E3FFF7F0D3FFF4EBC8FFF5ECCBFFF5EDCBFFF6EDCBFFF5EDCCFFF5EDCBFFF5EC
        CBFFF5EBC9FFF5EAC7FFF4E8C5FFF6EDCFFFFBF5E1FFE6D2B7FFB99471EE3127
        1D4A000000070000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000318130F239E8163C8D8BA
        98FFF1E5CFFFFCF9E7FFFBF6E0FFF8F2D8FFF8F3D6FFF6EFCDFFF6EFCDFFF8F2
        D6FFF8F1D6FFFBF5DEFFFCF8E6FFF1E5CEFFD7B896FF9C7E5FCA17130E280000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000054136
        2956AE916EDAD4B591FFE5D1B4FFF1E6CFFFF4EAD5FFFCF9E8FFFDF9E8FFF5EA
        D5FFF1E5CEFFE4CFB1FFD3B38EFFAD8E6CDA4336295B00000007000000040000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        000300000004251E1832665642829F8465C5A78C6BCECFAC85FCCFAC85FCA68A
        6ACF9F8366C666544184251E1734000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeImageIndex = 29
      OnClick = btnBtnAgregarClick
      AutoGrayScale = False
    end
    object btnBtnEliminar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C000000030000000000000000000000000000
        00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
        000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
        0008120B47923233AFFF3648CCFF1D1EA5FF0603357A0000000F0000000F0703
        357C1F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
        000C281C8DF1596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602347D0502357E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
        0006130F3C734D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF130F3C790000000900000000000000000000
        00010000000A16123F73585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF16123F780000000C0000000200000000000000000000
        0000000000010000000A191643755D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF1916437A0000000D000000020000000000000000000000000000
        00000000000100000009100E3D734A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF0B0839780000000C000000020000000000000000000000000000
        0001000000071413416E555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF0E0C3C730000000A0000000100000000000000000000
        00041818456B636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF121040710000000600000000000000000000
        00065759C3EFAFC6F6FF8EADF4FFABC4F8FF6F76D0FF1817456F24244F70868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
        000331326B8695A0EAFFC0D3F9FF7880D7FF1C1C496B00000006000000072527
        526C8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
        00010000000431336B825E62CBEC1F204D680000000500000001000000010000
        00052728536B5E62CBEC31326883000000070000000100000000000000000000
        0000000000000000000200000004000000020000000100000000000000000000
        0001000000030000000500000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000006000000060000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000100000002000000070000000F00000017000000170000
        0010000000070000000200000001000000000000000000000000000000000000
        0000000000000000000100000002000000070000001100000018000000180000
        0011000000080000000300000001000000000000000000000000000000000000
        0000000000010000000200000008000000150E0A2F682A1E8CEC2A1E8DEE0605
        2C6C000000160000000800000002000000010000000000000000000000000000
        00000000000100000002000000090000001706052C6E271B8AEF271A88EC0D09
        2E6B000000170000000900000002000000010000000000000000000000000000
        0000000000010000000600000014100C3370312DA6FE2A33BBFF2A34BCFF1B1B
        98FE080632780000001600000009000000020000000100000000000000000000
        00010000000200000009000000180705327A1D1D99FE262FB9FF252EB8FF2B25
        A1FE0E0A32730000001700000007000000020000000000000000000000000000
        0001000000030000000E0F0C30673631A9FE2C39C1FF2B37C0FF2B37BFFF2B37
        BEFF1C1E9BFE0806327800000016000000090000000200000001000000010000
        000200000009000000170705327A1F209DFE2733BCFF2733BDFF2732BEFF2732
        BDFF2D27A3FE0E0A2F6A00000010000000030000000100000000000000000000
        00010000000500000014362C95EB3F4AC6FF2F3BC2FF2E3BC2FF2E3AC2FF2D3A
        C2FF2D39C0FF1D1F9CFE08063278000000160000000900000003000000030000
        0009000000160706327920219DFE2A36BEFF2A35BFFF2936BFFF2A36BEFF2935
        BFFF2C35BCFF322792EC00000016000000050000000100000000000000000000
        000100000005000000143B309CF05B67D1FF3B48C8FF313DC4FF313DC3FF303D
        C3FF303DC3FF303BC2FF1E209CFE07063277000000160000000A0000000A0000
        00160806327821229DFE2D39C0FF2D39C1FF2D38C0FF2C38C0FF2C37C0FF2C37
        C0FF4753C8FF372B98F100000017000000050000000100000000000000000000
        0001000000030000000D14113C734E4DB9FF606FD6FF3D49C9FF3440C5FF3340
        C5FF333FC4FF333FC5FF333EC3FF1F219DFE070632770000001B0000001B0806
        327823249EFE303CC2FF303CC3FF303CC3FF2F3CC3FF2F3CC3FF2E3BC2FF4D5A
        CDFF4643B3FF130F3A760000000F000000040000000100000000000000000000
        00000000000100000006000000121713437C5354BDFF6674D8FF404CCCFF3643
        C7FF3643C7FF3643C7FF3542C6FF3540C5FF20229EFE0705327D0705327D2325
        9FFE343FC4FF3340C5FF3240C5FF323FC5FF333EC4FF323EC4FF5361D0FF4C4C
        B8FF1511417F0000001500000007000000010000000000000000000000000000
        0000000000010000000200000007000000121814447C5759BFFF6A7ADAFF4250
        CDFF3946C9FF3846C9FF3945C8FF3845C8FF3844C7FF21239EFE21239EFE3742
        C6FF3643C7FF3643C7FF3542C7FF3543C7FF3542C6FF5967D2FF5151BBFF1612
        427F000000150000000800000002000000010000000000000000000000000000
        000000000000000000010000000200000007000000121815457C5B5DC2FF707F
        DDFF4553CFFF3C49CAFF3C49CAFF3B48CAFF3B48C9FF3B47C9FF3A47C9FF3A47
        C9FF3947C9FF3946C9FF3846C8FF3845C8FF5F6DD5FF5556BEFF1713437E0000
        0014000000080000000200000001000000000000000000000000000000000000
        00000000000000000000000000010000000200000007000000121916457B5E61
        C4FF7484DFFF4856CFFF3F4CCCFF3E4CCCFF3D4CCCFF3D4BCCFF3E4BCBFF3D4A
        CBFF3D4ACBFF3D4ACBFF3C49CBFF6574D8FF595BC1FF1815447D000000130000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000006000000111A17
        467A6265C7FF7989E0FF4B59D1FF4250CEFF424FCEFF414FCEFF414ECDFF404D
        CEFF3F4ECDFF3F4DCCFF6A7ADBFF5D5FC3FF1915457C00000013000000070000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000080000
        00151B18487E5C5FC6FF505DD4FF4552D0FF4552D0FF4452D0FF4351CFFF4352
        CFFF4351CFFF4452CFFF5558C2FF1A1746800000001700000009000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000070000
        00140B0934733132A9FE4857D2FF4857D3FF4756D3FF4755D2FF4755D2FF4655
        D1FF4654D2FF4554D1FF292AA4FE090732750000001600000008000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000050000000E0C0A
        356D3739ACFE5D6BD9FF6775DBFF6976DDFF6B79DDFF6E7CDDFF6D7BDDFF6875
        DCFF6371DAFF5F6ED9FF5564D6FF2F30A7FE0A08336F00000010000000060000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000E0D0C366B4647
        B3FD7987E1FF7987E2FF7886E1FF7885E1FF7684E0FF7583E0FF7381E0FF7280
        DFFF707DDFFF6E7CDEFF6D7BDDFF6977DCFF3A3BABFE0C09346E000000100000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000050000000D0F0D386A4B4CB6FD808E
        E3FF808EE4FF7F8DE4FF7E8CE4FF7E8BE3FF7C8AE3FFA0B0EDFFA4B4EEFF7F8C
        E4FF7683E1FF7483E0FF7280E0FF717FDFFF6E7BDDFF3F40B0FE0D0B366D0000
        000F000000060000000200000001000000000000000000000000000000000000
        00000000000000000001000000040000000C100F396A5051BAFD8694E6FF8795
        E7FF8694E6FF8593E6FF8592E6FF8491E6FFA6B7EFFF7B80D5FF7B80D5FFAABB
        F0FF8491E6FF7B89E3FF7886E2FF7684E2FF7482E1FF717FE0FF4445B4FE0F0E
        386C0000000E0000000500000001000000000000000000000000000000000000
        000000000001000000030000000A12113B685658BEFD8C9AE8FF8D9BE9FF8D9A
        E9FF8C9AE9FF8C99E8FF8A98E8FFACBDF2FF7F84D8FF201F4D79201E4D797E84
        D6FFAEBFF2FF8795E7FF7E8DE5FF7C8AE3FF7A88E3FF7785E2FF7483E1FF474A
        B8FD110F396B0000000D00000005000000010000000000000000000000000000
        00000000000200000007121138605A5CBFFD93A0EBFF93A1EBFF93A1EBFF92A0
        EBFF929FEAFF919FEAFFB1C3F3FF8288DAFF211F4E7400000010000000102120
        4E758187D9FFB1C2F3FF8B99E9FF818FE6FF7F8EE5FF7D8CE5FF7A89E4FF7886
        E2FF4B4EBCFD1210386300000009000000020000000000000000000000000000
        00000000000302020510605FBBF1A1ACECFF99A7EDFF99A7EDFF99A7EDFF98A6
        EDFF97A5ECFFB6C8F5FF848BDCFF21214F730000000C00000006000000060000
        000C21204F748389DAFFB5C5F4FF8E9CEBFF8593E7FF8291E7FF808FE7FF7D8C
        E6FF7B89E3FF615EBCF402020513000000030000000000000000000000000000
        0000000000020202030C7C7CD3F7BCCDF6FFA4B1F0FF9EACEFFF9EACEFFF9DAC
        EEFFBBCCF6FF878EDDFF232251730000000B0000000400000001000000010000
        00040000000B22214F73848BDCFFB8C8F5FF919FEBFF8796E8FF8594E9FF8391
        E7FFA6B7F0FF7775CFF70101030F000000030000000000000000000000000000
        00000000000100000006252555728C94E1FFC4D5F8FFAAB8F1FFA5B3F0FFBFD1
        F8FF8A91DFFF232352710000000A000000040000000100000000000000000000
        0001000000040000000B23225073878EDDFFBACBF6FF95A3ECFF8B9AEBFFB0C2
        F4FF868DDDFF2322537500000008000000020000000000000000000000000000
        000000000001000000030000000828285A788C94E2FFD1E4FBFFD1E4FBFF8A92
        E0FF252555730000000900000003000000010000000000000000000000000000
        000000000001000000040000000A23235172878FDFFFCDE0FAFFCCDFFAFF878F
        DEFF2626587B0000000B00000004000000010000000000000000000000000000
        0000000000000000000100000003000000072626536E8485D9F78385D9F72424
        516C000000080000000300000001000000000000000000000000000000000000
        0000000000000000000100000004000000092323506D8181D6F78080D6F72323
        52710000000A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000001000000020000000500000007000000070000
        0005000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000030000000600000009000000090000
        0007000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000002000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeImageIndex = 306
      OnClick = btnBtnEliminarClick
      AutoGrayScale = False
    end
    object btnBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001F421C11FF30140DEC190A06B30304
        075F0000001B0000000500000000000000000000000000000000000000000000
        00000000000000000000000000000000001E663C2BE7B9C7D2FF7889A2FF2441
        82FF051033AF0000002100000005000000000000000000000000000000000000
        0002000000090000000E0000000F0000002041261BAE879AB2FFC8E3F5FF1F66
        B6FF2B6BA8FF051236AD0000001F000000040000000000000000000000000000
        00088C6657C0C38C7AFFC38C79FFCBA395FFA89894FF488BC3FFDEFEFDFF51B4
        E3FF1F68B7FF3173AEFF061538AA0000001C0000000400000000000000000000
        000CC5917EFFFDFBFAFFFCF8F6FFFAF7F5FFECEAE9FF7CA3BFFF479FD2FFDEFE
        FDFF59BFE9FF216BB9FF367BB3FF07173AA70000001A00000004000000000000
        000CC79481FFFEFBFAFFF9F0EAFFF8F0EAFFF7F0EBFFE8E4E1FF7EA4BFFF4BA5
        D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF081A3DA300000018000000000000
        000BC99786FFFEFCFBFFF9F2EDFFF9F2EDFFF9F0EBFFF8F2EDFFEBE7E5FF82A7
        C2FF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F9E000000000000
        000ACB9C8BFFFEFDFCFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF8F2EEFFEDE9
        E7FF85ABC7FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF000000000000
        0009CFA08DFFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF8F4
        EFFFEFECE9FF89AECAFF54B1DCFFDEFEFDFF4FA6D4FF102C4E93000000000000
        0009D0A393FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
        EFFFFAF6F1FFF3EFEDFF83A0B8FF357FBCFF173A598F0000000C000000000000
        0008D3A897FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
        F1FFFBF5F0FFFAF6F3FFE2CCC4FF000000160000000600000001000000000000
        0007D3AB9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFBF6F1FFD1A494FF0000000C0000000000000000000000000000
        0006D8AE9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7
        F5FFFBF7F4FFFCF7F3FFD3A897FF0000000B0000000000000000000000000000
        0006D8B0A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8
        F6FFFBF7F6FFFCF7F5FFD4AC9BFF0000000A0000000000000000000000000000
        0005D9B3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFD7AE9EFF000000090000000000000000000000000000
        0003A3867AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3
        A2FFD9B2A2FFD8B2A2FFA08377C2000000060000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000B000000160000001A000000140000000D0000000700000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000002000000060000
        0016452E26FF241510DA100A0788020101350000001C00000011000000090000
        0004000000020000000100000001000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000002000000040000000600000007000000080000000D0000
        001E4E382FD8A07C6FFF544649FF292C47F716254FB5070C1A5C0000001E0000
        00120000000B0000000800000008000000080000000800000008000000070000
        0005000000020000000100000000000000000000000000000000000000000000
        000000000002000000070000000F00000017000000190000001B0000001F0000
        002B281D188D82706CFFADCAE6FF7492BFFF425D99FF2E478AFF101D3FA50000
        003600000027000000200000001E0000001D0000001E0000001D0000001A0000
        0012000000080000000200000000000000000000000000000000000000000000
        0001000000040000000F78564AC1A57765FFA67666FFA57564FFA47363FFAE88
        7CFFB49D96FF5C5F7AFFDBE3EFFFA2C2E2FF7896C2FF536DA2FF315194FF5962
        88FFB9A49CFFAF8D81FF9D6C5CFF9D6E5DFF9E6D5CFF9E6C5BFF9E6C5BFF704C
        41C3000000130000000400000001000000000000000000000000000000000000
        00010000000500000015A87968FFF9F4F0FFF9F4F0FFF9F3EFFFF8F2EDFFF2EC
        E7FFE6E4E2FF7C8EB5FF8B9FC7FFCED9E9FF2084DBFF51A9E2FF1552AAFF154B
        9EFF6C7EA5FFE1DDDAFFEDE7E2FFF2E8E2FFF4EBE3FFF4EBE4FFF4EAE3FF9E6D
        5CFF000000190000000700000001000000000000000000000000000000000000
        00010000000600000016AA7B6AFFF9F4F1FFF3E9E2FFF3E9E1FFF2E8E0FFF0E5
        DEFFEBE4DFFFB9BEC8FF4B6CABFFFFFFFFFF4DA3E5FF2389DFFF56ADE3FF1658
        ACFF174FA0FF6D7FA5FFE1DAD7FFEBE3DDFFEEE2D9FFF1E4DBFFF5EBE5FF9E6F
        5EFF0000001B0000000700000001000000000000000000000000000000000000
        00010000000500000016AC7D6DFFFAF5F2FFF3EAE2FFF3EAE2FFF4E9E2FFF3E8
        E0FFEFE6E0FFE7E3DFFF8B9BBAFF6990C2FFC2E5F8FF50A7E6FF2791E0FF5DB1
        E5FF1A5DAFFF1953A4FF6F82A8FFE2DBD8FFEBE3DDFFEFE2D9FFF4EBE4FFA170
        60FF0000001B0000000700000001000000000000000000000000000000000000
        00010000000500000015AE8071FFFAF6F3FFF4EAE3FFF4EAE3FFF3EAE2FFF2E8
        E1FFF1E7E0FFF0E7E3FFE5E1DDFF81A1C1FF4590D0FFC7E8F8FF56AEE7FF2C97
        E1FF62B5E6FF1B62B2FF1B57A6FF7185ACFFE4DEDAFFECE4DEFFF2EAE4FFA272
        62FF0000001A0000000700000001000000000000000000000000000000000000
        00000000000500000014B08373FFFAF7F4FFF4EBE4FFF4EAE4FFF4EAE3FFF4EA
        E3FFF2E9E2FFF2E8E1FFEFE7E3FFE6E3DFFF83A4C5FF4895D2FFCBEBFAFF5AB4
        EBFF319DE4FF67BAE7FF1E65B6FF1D5DA9FF7389AEFFE4E0DBFFEFE9E5FFA473
        63FF0000001A0000000600000001000000000000000000000000000000000000
        00000000000500000013B18475FFFBF7F5FFF4ECE5FFF6EBE4FFF6EBE4FFF4EB
        E4FFF4EBE3FFF3EAE2FFF2E8E1FFEFE8E3FFE8E4E0FF86A7C7FF4C9AD4FFCFEE
        FBFF60B9EDFF36A5E9FF6EBEE8FF206BB9FF2061ADFF758CB2FFE8E5E2FFB794
        88FF0000001A0000000700000001000000000000000000000000000000000000
        00000000000400000012B38677FFFCF8F5FFF6ECE6FFF6ECE6FFF6ECE5FFF4EB
        E5FFF4EBE5FFF4EBE4FFF4EBE4FFF2E9E2FFF1E9E4FFE9E6E2FF88AAC9FF4F9F
        D7FFD3F0FCFF64BEEFFF3BABEBFF72C2EAFF2371BCFF2266AFFF7992B7FFC5AF
        A7FF0000001F0000000800000002000000000000000000000000000000000000
        00000000000400000011B58A7AFFFCF8F7FFF7EDE8FFF6ECE6FFF4EDE6FFF4EC
        E6FFF4ECE6FFF6ECE5FFF4ECE4FFF4EBE4FFF2E9E2FFF1EAE4FFEBE7E4FF8BAE
        CCFF52A3D8FFD6F2FCFF6AC5F0FF42B2EBFF77C6ECFF2677C0FF256BB4FF6B7C
        9EFF000000260000000D00000003000000010000000000000000000000000000
        00000000000400000010B78A7BFFFCF9F7FFF7EDE8FFF7EDE9FFF6EDE8FFF6ED
        E6FFF6EDE6FFF6ECE6FFF6ECE5FFF6ECE5FFF6ECE4FFF2E9E2FFF2EBE6FFEDE9
        E6FF8DB1CEFF56A8DAFFD9F4FDFF89D5F6FF47BBEFFF7BCBECFF2A7DC1FF2871
        B7FF191C26990000001400000007000000020000000000000000000000000000
        0000000000040000000FB98D7EFFFCFAF8FFF7EFE9FFF7EFE9FFF7EFE9FFF7EF
        E8FFF6EDE8FFF6EDE8FFF6EDE6FFF6EDE6FFF4ECE6FFF6ECE6FFF3EBE4FFF3EC
        E7FFEEE9E7FF8FB4D0FF5AADDCFFDCF6FDFF74CFF6FF4CC0F0FF80D0EEFF7877
        7BFF794A3AFF29110B900000000F000000060000000200000000000000000000
        0000000000040000000EBB9080FFFCFAF8FFF7F0EAFFF7F0E9FFF6EFE9FFF7EF
        E9FFF7EFE8FFF7EFE9FFF6EDE8FFF7EDE8FFF7EDE6FFF6EDE6FFF6EDE6FFF5EB
        E4FFF3EDE7FFF0EBE8FF91B7D3FF5DB0DEFFDEF8FEFF7AD6F7FF90B9C5FFD8C1
        B3FF996B59FF815141FF190D228D0000000C0000000500000001000000000000
        0000000000030000000DBD9283FFFDFBF9FFF8F1EBFFF8F0EBFFF7F0EBFFF7F0
        EAFFF7F0EAFFF7F0E9FFF7EFE9FFF6EFE9FFF7EDE8FFF6EDE8FFF6EDE8FFF6ED
        E8FFF5EBE5FFF5EEE9FFF1EDE9FF93B9D5FF60B4E0FFE7F7F9FFDBC3B1FFCFB3
        9FFFDBC5B8FF584B8BFF212095FF0A0A3E8B0000000B00000004000000000000
        0000000000030000000DBE9585FFFBF8F7FFF8F2ECFFF8F1EBFFF7F1EBFFF7F1
        EBFFF7F0EBFFF8F0EAFFF7F0EAFFF7EFEAFFF7EFEAFFF7EDE9FFF6EFE8FFF6EF
        E8FFF6EDE8FFF6ECE7FFF5EEE9FFF2EEEBFFA9AEB7FFB58F7EFFFAF0E2FFDFC8
        B6FF9A97C5FF8791E3FF2B2EAAFF25259CFF0F0F458900000006000000000000
        0000000000030000000CC09687FFF8F5F2FFF6EFE9FFF8F2ECFFF8F1ECFFF8F1
        ECFFF7F1ECFFF7F0EBFFF8F1EAFFF8F0EAFFF7F0EAFFF7F0E9FFF7F0E9FFF6EF
        E9FFF6EDE9FFF7EDE9FFF6EEE8FFF6EFECFFF4EFEDFFC2A59DFFBC9788FFF6EE
        E7FF8B9FEDFF6275E1FF98A2E7FF7B85D0FF272A96FF00000007000000000000
        0000000000030000000BC39889FFF6EFEDFFF4EBE6FFF6EFEAFFF8F2EDFFF8F2
        EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1EBFFF8F0EBFFF8F0EAFFF7EFEAFFF7F0
        EAFFF7EFEAFFF7F0E9FFF7EFE9FFF5ECE8FFF7EFECFFF5F0EEFFB1A5BDFF6B78
        D4FFDBE7FCFF8BA0EEFFACC0F3FF4E57C3FF21235A8400000004000000000000
        0000000000020000000AC49A8AFFF1E9E6FFF0E6E2FFF4EBE7FFF5EEEBFFF7F1
        ECFFF7F1ECFFF8F2EDFFF7F0EBFFF8F1EDFFF7F1ECFFF8F1ECFFF7F0EBFFF7F0
        EAFFF7F0EBFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFE9FFF6F1ECFFF9F7F6FF928B
        BDFF7180DAFFDCE8FCFF6675D7FF262A60830000000500000002000000000000
        00000000000200000009C69C8CFFE8DDD8FFE8DBD4FFECDFDBFFEFE4E0FFF1E8
        E3FFF4EBE8FFF6EDE9FFF7F1ECFFF8F2EFFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1
        ECFFF8F1EBFFF8F1EBFFF7F0EBFFF7F0EBFFF7EFEAFFF7EFEAFFFBF8F6FFDAC5
        BDFF2B3166885761CEFF2C316681000000040000000200000001000000000000
        00000000000200000008C79E8DFFD9C4BCFFD9C4B9FFDCC6BEFFDECBC4FFE1CF
        C8FFE6D5D0FFEDE0DAFFF4EBE6FFF8F2EDFFF7F1EEFFF9F2EFFFF8F2EFFFF8F2
        EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFF7F1EAFFFCF8F5FFCCAB
        9FFF0000000F0000000500000002000000010000000000000000000000000000
        00000000000100000006C8A08FFFCDB1A7FFA37363FFA47363FFA47464FFA475
        64FFA57766FFB38B7CFFEEE3DDFFF7EEECFFF9F3EFFFF9F3EFFFF9F2EFFFF9F3
        EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1ECFFF8F1ECFFFCF9F7FFBE93
        84FF0000000D0000000300000000000000000000000000000000000000000000
        00000000000100000004563E3683D5B9AEFFFCF9F7FFFEFCFAFFFFFDFCFFFFFE
        FEFFFFFFFFFFAB7E6DFFEADDD7FFF5EEEAFFF9F3F1FFF9F4F0FFF9F3F0FFF9F3
        F0FFF9F3EFFFF9F3EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFFCF9F7FFC096
        87FF0000000C0000000300000000000000000000000000000000000000000000
        000000000000000000020000000559413983D7BAB0FFFCF6F3FFFDF9F7FFFEFB
        FAFFFFFEFEFFB08574FFEADDD6FFF5EEEAFFFAF6F1FFF9F4F1FFF9F4F1FFF9F4
        F1FFF9F4F0FFF9F3EFFFF9F3EFFFF8F3EFFFF9F2EFFFF9F2EFFFFDFAF8FFC298
        88FF0000000B0000000300000000000000000000000000000000000000000000
        0000000000000000000100000002000000055B433B83D8BCB3FFFBF6F3FFFDF9
        F6FFFFFEFEFFB68C7DFFE9DBD5FFF4EBE7FFF7F3F0FFFAF6F2FFF9F4F2FFF9F4
        F1FFF9F4F1FFFAF4F1FFF9F3F0FFF9F3F0FFF9F3F0FFF8F2EFFFFDFAF9FFC499
        89FF0000000A0000000300000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000045D453E83DBC0B5FFFBF6
        F3FFFFFEFEFFBC9584FFE8DCD5FFF0E8E4FFF5EFEBFFF8F3F0FFFAF6F2FFFAF6
        F2FFF9F6F1FFF9F6F1FFF9F4F1FFF9F4F1FFF9F4F0FFF9F4F0FFFDFAF9FFC59B
        8BFF000000090000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000045F484082DDC2
        B8FFFFFEFEFFC19B8BFFE7DAD3FFEEE3DFFFF3EBE6FFF5F0ECFFF8F4F0FFFAF7
        F3FFFAF7F3FFFAF6F2FFF9F4F2FFFAF4F1FFF9F4F1FFFAF4F0FFFDFBFAFFC79D
        8EFF000000080000000200000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000100000003614B
        4382E2CAC2FFDECAC3FFE8DAD6FFEEE4E0FFF2EBE9FFF6F1EFFFFAF7F6FFFFFE
        FEFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFDFFC89F
        8FFF000000070000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003634D4681CEA596FFCEA695FFCDA595FFCDA595FFCDA495FFCDA495FFCDA3
        94FFCDA394FFCDA394FFCBA293FFCBA293FFCBA291FFCBA191FFCAA191FF9677
        6ABF000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000300000003000000040000000400000004000000040000
        0004000000050000000500000005000000050000000500000005000000050000
        0004000000020000000000000000000000000000000000000000}
      LargeImageIndex = 300
      OnClick = btnBtnEditarClick
      AutoGrayScale = False
    end
    object btnBtnActualizar: TdxBarLargeButton
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
      LargeImageIndex = 643
      OnClick = btnBtnActualizarClick
      AutoGrayScale = False
    end
    object dxBtnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'
      Category = 0
      Hint = 'Cerrar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000200000005000000060000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000060000000600000003000000010000000100000000000000000000
        0001000000040000000B00000013000000170000001800000019000000190000
        001900000019000000190000001A0000001A0000001A0000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001B000000160000000E000000050000000100000000000000010000
        00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
        96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
        93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
        8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
        0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
        B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
        B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
        B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
        000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
        C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
        C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
        C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
        000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
        C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
        C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
        C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
        000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
        C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
        C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
        C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
        0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
        C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
        C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
        C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
        0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
        CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
        D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
        C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
        0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
        D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
        C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
        0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
        BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
        C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
        000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
        CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
        000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
        B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
        CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
        00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
        D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
        CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
        00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
        D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
        D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
        00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
        D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
        D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
        00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
        DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
        D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
        00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
        BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
        D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
        00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
        D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
        00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
        DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
        00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
        E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
        B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
        E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
        00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
        EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
        E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
        E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
        0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
        EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
        E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
        E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
        0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
        EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
        EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
        E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
        000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
        EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
        EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
        E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
        0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
        EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
        EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
        E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
        0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
        F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
        F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
        F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
        00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
        DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
        D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
        D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
        0000000000010000000200000004000000050000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000080000
        0008000000080000000800000008000000080000000800000009000000090000
        0009000000080000000700000004000000020000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnCerrarClick
      AutoGrayScale = False
    end
    object btnImprmir: TdxBarLargeButton
      Caption = 'Im&primir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeGlyph.Data = {
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
      OnClick = btnImprmirClick
    end
    object dxBtnCargarTodo: TdxBarLargeButton
      Caption = '&Cargar Todo el Personal'
      Category = 0
      Hint = 'Cargar Todo el Personal'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000030000000400000005000000050000000500000006000000060000
        0006000000050000000600000005000000040000000400000003000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000300000006000000090000
        000B0000000E0000000F00000011000000120000001400000015000000150000
        0015000000150000001400000013000000120000000F0000000C000000080000
        0005000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000040000000A030B08260A2C206A0D3C
        2D91104D39B5105A42D20E5940D30F5C44E00F6A4DFF0D694BFF0C664AFF0B65
        48FF09553DE1074F38D4074E37D405422EB804332495032419710108062C0000
        0010000000070000000200000000000000000000000000000000000000000000
        0000000000000000000000000002000000081A5E48C2258566FF268E6CFF2794
        70FF299B74FF2A9F77FF289C75FF289D74FF29A377FF28A075FF269D72FF259C
        70FF209269FF1E8C65FF1D8A62FF18825CFF147A56FF107250FF0B6749FF0643
        2FB80000000E0000000400000001000000000000000000000000000000000000
        00000000000000000000000000020000000A268465FF61CFB1FF3ABC93FF39BA
        90FF36B78DFF34B58BFF34B188FF31AF85FF30AC83FF2EAA7FFF2CA77DFF2BA4
        7AFF2AA277FF289F75FF269D72FF259B70FF24986DFF22966BFF309D77FF085C
        41F2000000120000000400000001000000000000000000000000000000000000
        000000000000000000000000000200000009298769FF69D6B9FF42C59EFF40C3
        9BFF3FC199FF3DBE96FF3ABC93FF39BA91FF37B78EFF35B48AFF34B188FF32AE
        85FF30AC82FF2FA97FFF2DA77CFF2BA479FF29A177FF289E74FF34A37EFF0758
        3FEB000000120000000500000001000000000000000000000000000000000000
        00000000000000000000000000020000000728795EE066D0B4FF54D0AEFF5BD2
        B1FF60D3B4FF5DD1B2FF56CDABFF48C7A1FF3FC19AFF3DBF97FF3BBC94FF39B9
        91FF37B68EFF36B48BFF34B188FF32AE85FF30AB82FF34AB83FF36A37FFF074D
        37D00000000E0000000300000001000000000000000000000000000000000000
        000000000000000000000000000100000004143B2E6F52B095FF8BE0CBFF85E3
        CCFF74DDC2FF6DDBBEFF6EDBC0FF73DCC1FF69D7BAFF61D3B3FF63D3B4FF5ED0
        B0FF56CBA9FF48C39DFF3CBD94FF3FBB96FF49BF9AFF46B794FF228566FF0424
        1968000000080000000200000001000000000000000000000000000000000000
        000100000005000000080000000B0000000E00000012153B2F772F866AED5BB2
        98FF8EDDCBFF94E7D4FF7DD9C2FF5CB89EFF3F997EFF248063FF227C5FFF318E
        73FF4AAB90FF67CDB3FF6CD6BAFF51BE9FFF2B8E70FF0E5E44E606291E7B0000
        0019000000120000000E0000000A000000060000000100000000000000030103
        021407241B5D0B3C2D900D4F3AB70E5D45D62E715CDB539480F7589984FF4793
        7BFF338E6FFF53A88EFF60B29BFF469788FF70ADBBFF71A4C3FF5684ACFF4076
        97FF2A7470FF489E85FF399277FF21765AFF3D866FFF559580FF4C8C78F7276B
        55DC08563DD7064632B9053626970320166200030219000000040000000A1C74
        58E5319677FF2A9A76FF2BA27BFF2EA880FF2CA67EFF2FAD82FF49B791FF66C1
        A1FF6CC2A5FF55AC8EFF3C9479FF9CC8D7FF678DAEFF335484FF2D4F80FF3758
        86FF39658DFF2B8169FF52A68AFF6DC1A4FF62BD9DFF41B38CFF27A579FF229B
        72FF219B71FF1B926AFF178963FF147E5CFF096547F30000000E0000000B2481
        63F367CEB1FF40BC96FF3FBB93FF3CB891FF39B88FFF37B68DFF35B48CFF33B1
        88FF48B993FF68C2A3FF64B499FF376E79FF2F5A95FF4574ADFF4271ABFF204B
        88FF296065FF6AB79FFF6BC5A8FF49BA96FF33B188FF30B186FF2FAF84FF2EAE
        82FF2BAD82FF2AAB7FFF29AA7DFF32AF85FF096648F6000000110000000A2680
        63E870CFB5FF52C7A4FF5BCAAAFF61CDADFF5FCBADFF56C7A5FF4DC29DFF3FBA
        92FF3BB88EFF5FC0A0FF63A49BFF3F6BA2FF75ADE2FF75AEE2FF7EB3E4FF76AB
        DDFF27518AFF71A7A1FF71CAB0FF4DC19CFF3FBA92FF3BB88EFF38B68DFF35B4
        8BFF34B289FF32B186FF31B187FF38AE87FF0A5F44E50000000E00000006205E
        4BAC6BC5ACFF99E3D0FF85DDC5FF71D5BAFF6ED3B7FF68D1B4FF64CFAFFF5DCB
        ABFF4AC19CFF76C8AEFF507F9CFF5F94CBFF74B2E7FF6DABE3FF69A6DFFF7DB3
        E4FF5182B9FF446D8BFF8BCFBCFF64CFAFFF5DCBABFF49C19CFF40BD95FF3DBB
        94FF3CB891FF43BC94FF49BF9AFF32A07DFF094330A70000000900000002040B
        091C367461B45FB69CFF85D0BDFF9CE5D3FF81DDC5FF62C2A6FF3B9A7CFF217D
        5FFF378E73FF70B2A3FF4A73A6FF90C7EEFF93CDF5FF81C0EEFF70ADE4FF74AC
        E2FF76A9DBFF254E86FF82B8ACFF439D80FF217D5FFF298769FF38A886FF4FC5
        A2FF5BCAAAFF43AD8EFF218766FF0E533DBC0107051D00000003000000000000
        0002000000070F1F1A39346F5EAB5AB198FC79C8B2FF56A79AFF77ADBDFF7FA4
        C0FF83A2B3FF51769DFF5882B6FFA8DCFAFFA5DAFAFF99D2F6FF7DBAEBFF6EAB
        E2FF7FB3E3FF2C5794FF3A5F85FF98BFCBFF739ABAFF4C7992FF1E6662FF42A5
        86FF298B6DFD13523DAE0516113D0000000A0000000200000000000000000000
        00000000000000000002000000060B17132D408571CD75ADB5FF53779DFF6580
        A5FF59749DFF133776FF5880B1FFAEDEF7FFB1E2FCFFA9DDFAFF8BC6F1FF72AD
        E3FF75A7D7FF204681FF163A76FF879FB8FF506F98FF3A5A86FF39687AFF1F69
        51CC04100C2D0000000800000003000000000000000000000000000000000000
        0000000000000000000000000000010101050B0D0C313B6789FC4E7EB6FF8AAF
        D5FF335A94FF265596FF3A6095FFA9D3EBFFAEDBF2FF99C6E3FF78ABD5FF6096
        CAFF5B87B8FF11326FFF0F387CFF5879A9FF7FA7D2FF4476B0FF2A577BFC0A0D
        0C36010101060000000000000000000000000000000000000000000000000000
        00000000000000000000000000000303030C212F43855282B8FF77B8EAFFA3CD
        F0FF235093FF3F76B5FF234B89FF8FB5CFFF678DB4FF244983FF133878FF1236
        72FF173771FF0F3D80FF103E85FF39619BFFA0CBEFFF7EB9E9FF4171ABFF1625
        3B8B0404040E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000002060606183C5B85D693BEE2FFA8D7F5FFA7D2
        F2FF1C5097FF5D96D0FF215398FF3F6699FF285DA2FF326BB2FF2D69B2FF235B
        A5FF194C95FF124792FF134791FF214888FFA4D0F2FF7DBBEBFF6AA1D4FF2242
        71D90808081E0101010300000000000000000000000000000000000000000000
        0000000000000000000002020207203456A35179ADFEB7DFF6FFBAE3F8FFC2E3
        F8FF2D65ABFF68A1D5FF4783C1FF295FA1FF5790CFFF74A9DCFF6DA3D6FF548C
        C7FF3671B4FF1E57A2FF174E99FF204B8CFFC0E2F8FF7BBBEBFF83BCEAFF2F58
        93FE192A458A0303030A00000000000000000000000000000000000000000000
        0000000000000000000007122248193E7DFF4B72A8FFBAE0F4FFC1E7FBFFCDEA
        FAFF5A91CBFF5691CCFF7BB3DEFF588BBDFFA3CCEFFFA6CCECFF90BDE3FF71A4
        D5FF538BC5FF3C76B6FF2059A0FF4770A8FFCDEAFAFF7CBDECFF88C1ECFF3B66
        9FFF0F2E69F70409143400000000000000000000000000000000000000000000
        00000000000000000000112C51943B639BFF38619CFFB0D4EAFFB3D9EEFFB1D2
        E9FF8FBBDFFF4380C4FF3B7BC3FF70A7DFFF82B2E0FFA5CAEAFFB7D7EFFF96BE
        E2FF6398CDFF346DAFFF295CA0FFABC9E2FFB5D4EAFF68A6D6FF71A9D7FF3F68
        A1FF0D2D6CFF0617378700000000000000000000000000000000000000000000
        0000000000000000000019406EB46991BFFF295A99FF7FA6CAFF4771A6FF2852
        8FFF5474A3FF647FAAFF5F81B0FF4976B0FF3B70AFF03670B3E92E72BEFF316F
        B6FA4077B9FF4876B0FF9DBAD6FF7E9BC1FF2D5691FF174282FF1A4382FF2249
        86FF173F7DFF0B2350B100000000000000000000000000000000000000000000
        000000000000000000001D4775AE87AED6FF7BA6D1FF3264A4FF5382BAFF5B8E
        C5FF5285C0FF426FAAFF456DA4FF5175A7FF536A8DD452525252525252526682
        A2C8AAC6E2FF9DBDDDFF547EB3FF5885BCFF5B8EC5FF5285C0FF3666A5FF2453
        94FF1D4B8DFF123062C300000000000000000000000000000000000000000000
        000000000000000000001837587873A3D2FFBDDAF1FF72A3D2FFB9D6EEFFAACB
        E8FF87B1DCFF5889C2FF3E72B1FF3366A6FF133460AB00000000000000001837
        587873A3D2FFBDDAF1FF72A3D2FFB9D6EEFFAACBE8FF87B1DCFF5889C2FF3E72
        B1FF3366A6FF133460AB00000000000000000000000000000000000000000000
        00000000000000000000050A10153770A9DA689ED2FF7DADD9FFB0CDE8FFC4DA
        EFFFC0D9EEFF96BADEFF5F92C7FF3166A2F2081320330000000000000000050A
        10153770A9DA689ED2FF7DADD9FFB0CDE8FFC4DAEFFFC0D9EEFF96BADEFF5F92
        C7FF3166A2F20813203300000000000000000000000000000000000000000000
        000000000000000000000000000003080C0F142D4558204971922A6095C3316F
        AEE73478BEFF2C64A1DB1D446D9908121D2A0000000000000000000000000000
        000003080C0F142D4558204971922A6095C3316FAEE73478BEFF2C64A1DB1D44
        6D9908121D2A0000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnCargarTodoClick
    end
    object dxBtnEditarFicha: TdxBarLargeButton
      Caption = '&Editar Ficha'
      Category = 0
      Hint = 'Editar Ficha'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000020000000400000006000000090000000C0000000F000000130000
        001600000017000000190000001A0000001C0000001E0000001F0000001F0000
        001F0000001E0000001D0000001D0000001C0000001B00000017000000140000
        00100000000C0000000900000006000000030000000100000000000000010000
        0003000000080000000F00000015040C09330B1D155A102C207D194131AA1E50
        3AC91F563FD61F553ED71E543DD7215941E326684CFF25674BFF25664AFF2465
        49FF1F573FE41D503AD81D503AD81D503AD81A4A36CC153C2BAF0E281D84091A
        1363040B083D0000001F000000160000000D0000000500000001000000020000
        00090815103E173D2E9427674EE62B795BFF2A8060FF2A8864FF29926BFF2899
        70FF279B71FF269A70FF26986EFF24996FFF23A074FF229E71FF209C6FFF209A
        6EFF209268FF1F8D64FF1F8C63FF1E8B62FF1D885FFF1F805BFF207654FF2170
        50FF23694BFF20583FE91234259D06120D490000000E00000004000000030000
        000E2F7B5EFF44A282FF2CAA7DFF2BAF81FF2CB081FF2CAE82FF2CAF81FF2CAD
        81FF2BAD80FF2AAB7EFF29A97DFF28A77BFF26A579FF25A377FF23A174FF239F
        72FF219D71FF209B6FFF1F9A6DFF1E996CFF1E976BFF1C966AFF1C9568FF1C94
        68FF1B9367FF1C8D63FF227F5BFF246448FF0000001800000006000000040000
        0010317F62FF5DC9A8FF2FB486FF30B486FF2FB488FF2FB488FF30B587FF30B4
        87FF30B387FF2EB285FF2DB184FF2CAE82FF2AAC80FF2AAA7DFF28A77AFF25A5
        78FF24A275FF22A073FF229F71FF209C6FFF209B6FFF1F9A6DFF1E996CFF1D97
        6BFF1D9669FF1C9569FF24986FFF215E44F40000001B00000007000000030000
        000E317F64F75DC9A9FF36B88DFF31B789FF32B88BFF37BD91FF3CC197FF3DC3
        9AFF3EC49CFF3CC39AFF39BF96FF37BC92FF32B68BFF2DB085FF2CAD81FF2AAA
        7FFF28A87CFF26A579FF25A376FF23A174FF229F72FF219E71FF209C6FFF209B
        6EFF1E9A6DFF1F9A6DFF269970FF215D44EC0000001900000006000000020000
        000A2B6D55D15AC1A0FF48C39CFF36BB8FFF43C69FFF48CCA5FF47CBA5FF47CB
        A6FF45CBA5FF44CBA3FF43C9A2FF41C8A1FF3FC59EFF3AC197FF32B68AFF2EB1
        84FF2CAE82FF2AAB7EFF27A97BFF26A679FF25A476FF24A274FF23A073FF219F
        71FF219E71FF229E72FF27936CFF1C4C38C60000001300000005000000010000
        000616372C704AA788FF69D4B5FF6AD7BAFF57D3B1FF4FD1ADFF4FD1ACFF4ED1
        ACFF4DD1ACFF4BD0ABFF4BCFAAFF52D2AEFF57D2B1FF5BD3B2FF59D1AFFF4AC4
        A0FF3EBB92FF2EB285FF2CAE81FF29AB7DFF27A87AFF26A578FF25A477FF24A3
        75FF27A476FF2CA77CFF2C8160FF0E241B6C0000000C00000003000000000000
        00030102010B275D4AAB5DAF96FF7CD3BDFF86E3CDFF75E0C4FF5FD9B9FF56D6
        B4FF54D6B3FF57D6B4FF5FD8B9FF55C1A3FF48A98AFF3B9274FF37896CFF3C95
        76FF42A585FF48BF9AFF35B68BFF2CB082FF2AAC7EFF28AA7BFF2BAA7DFF34B0
        85FF37A37EFF308464FF1A4432A9000000110000000600000001000000000000
        00010000000300000007172F27543D7C66CA5CAE96FF7BD1BBFF8BE7D1FF7EE4
        CBFF6DDFC2FF66DBBCFF53B498FF68ABAFFF76B0C9FF77B0DAFF629CCEFF4B88
        B0FF3A7D88FF328065FF4ABB97FF37B98EFF32B387FF3DB88EFF3DA681FF3285
        67FF225944CB0D221A5D0000000F000000060000000200000000000000000000
        00000000000100000002000000040000000712241E4238715DB65CAE94FF7ACF
        B8FF98EAD7FF6CBDACFF93C8DCFF96CCE9FF7AB0D7FF5F95C6FF548DC3FF4D89
        C0FF4682BEFF3B7AABFF307969FF5BC7A5FF44A987FF358869FF1F533FB50A1C
        154A0000000F0000000900000004000000010000000000000000000000000000
        00000000000000000000000000010000000200000004000000060F1D19353468
        57A55FAD96FD93C6D6FF9FD2EAFF79AACEFF4372A6FF356399FF306098FF3164
        9EFF3971ADFF3A78B7FF32729AFF39896FFB1E4E3DA308140F350000000C0000
        0007000000040000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000030000
        0007142423465B84A2FD76A6C1FF305C93FF143F85FF0C3883FF0B3883FF103C
        83FF1C4A88FF2C6294FF285379FC091717450000000B00000005000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00030000000A1D2F35702C5487FF3567A6FF7EB4DAFF89CAEDFF61B1E2FF448F
        C8FF21579BFF173C71FF0B1B20650000000E0000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00030000000D05122356386DAAFF9EDFFBFF84D2F7FF4BACE9FF44A4E1FF47A1
        DDFF419CD6FF1B5095FF020B1A58000000130000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000500000013144078D084C2E7FFA2E5FFFF73D1FEFF5FC4FAFF48AAE7FF3696
        D8FF429CD8FF3B87C4FF062863CE0000001A0000000700000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0008071423493B77B3FFA6E6FFFF9AE1FFFF6CCFFFFF6BCFFFFF62C4F8FF3C9B
        DCFF3996D7FF449ED8FF1A4C93FF010916470000000C00000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000B143659946AA7D4FFBFEDFFFFB8EBFFFF90DDFFFF70D2FFFF70D1FFFF4BAA
        E5FF3997D8FF49A2DAFF3572B0FF04193E8F0000001100000004000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000021424
        3A5F2B68A6FB93C8E7FFD3F4FFFFB9ECFFFFAEEAFFFF89DCFFFF75D4FFFF5FBE
        F1FF42A1DDFF4BA3DCFF498DC5FF0F387DFA0B182D6500000005000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000003365E
        93D73D7EB7FFBAE4F6FFD6F5FFFFB6ECFFFFB3EBFFFFA2E6FFFF79D8FFFF6ECB
        F8FF4DAAE2FF4EA7DFFF59A4D7FF21488BFF1D3D6FD900000005000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000101061947
        89FD1E5796FFCDF0FCFFD7F6FFFFB7EDFFFFB7EDFFFFB1ECFFFF80D9FFFF7AD5
        FCFF57B3E7FF54AFE4FF65B3E2FF0F397DFF093474FE0001030C000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000051630611446
        8DFF0E3F84FFD7F4FDFFDAF6FFFFBCEEFFFFBAEFFFFFBAEEFFFF85DFFFFF80DB
        FEFF63BDECFF5EB7E9FF75BEE7FF0A3679FF0F3F82FF02132C67000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000C2D5DAF1F57
        9FFF11428BFFA3C6DFFFDCF7FFFFC1F2FFFFBEF1FFFFBAEFFFFF8AE1FFFF88DE
        FEFF6DC7F1FF69C3EFFF8ACCEEFF09367AFF184C93FF052351B0000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000154081E12764
        ACFF154B96FF5E88B7FFDEF8FFFFCBF4FFFF9CCAE4FF5388B8FF265A96FF2354
        8FFF326A9EFF407AABFF79A9CCFF0F3F85FD154996FF082E69D9000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001C4D94F93476
        BCFF205BA4FF1F5195FFD7F0FAFF6188B7FF13468EFF154A94FF164D98FF164B
        96FF12428BFF0E387CFF082866FF1B58ADFF174E9CFF0C387BF6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000024549DFC458B
        CBFF2F6FB2FF19539EFF3E6EAAFF2059A2FF3376BCFF397FC3FF3D82C5FF387B
        BFFF3272B8FF2461AAFF1F63B6FF1E61B4FF19539FFF0E3E85FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000224D8DDB4E95
        CEFF4993CEFF1D5DA7FF3476B7FF6BB0DEFF71B3E0FF6EB1DEFF64AADBFF569F
        D7FF539DD6FF539DD4FF3C85C9FF216ABBFF1A55A1FF104087FC000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000183259874987
        C4FF63AFDEFF2A79C1FF8AC9EAFF91CDECFF8ECCECFF8BCAEBFF87C7EAFF7FC3
        E8FF69B5E2FF68B5E2FF65B1E0FF2470BFFF1A56A0FF0E346DC3000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050A121B3464
        A7F15EA0D4FF3D93D2FF94CDEDFFAFE1F5FFAADFF5FFA4DCF2FFA1DAF2FF97D6
        F1FF7BC9ECFF7EC9EDFF59A7DBFF2F7CC1FF21569BF60713243C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000912
        1F2D25487CB4386AB4FD3E7DC2FF5E9ED4FF8EC5E7FF9FD2EEFFACE2F7FF8ACD
        EDFF6FB5E0FF4D95CFFF2E6EB5FF225398ED0812223600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000013233748284971903A6AA1C94279B7E44985CBFF4178
        BAF0325F99CC274C7FB110213A54010204060000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBtnEditarFichaClick
    end
  end
  object radial1: TdxRibbonRadialMenu
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 968
    Top = 232
  end
  object cdEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdEmpleadosAfterScroll
    Left = 968
    Top = 264
  end
  object dsEmpleados: TDataSource
    DataSet = cdEmpleados
    Left = 968
    Top = 312
  end
  object cdConExtXEmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1024
    Top = 264
  end
  object dsConceptosExtra: TDataSource
    DataSet = cdConExtXEmp
    Left = 1024
    Top = 264
  end
  object cdConceptos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdConceptosAfterScroll
    Left = 1024
    Top = 336
  end
  object cdUptConExtXEmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 992
    Top = 152
  end
  object cxGridRepos1: TcxGridViewRepository
    Left = 864
    Top = 32
    object cxDbGridGridRepos1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsConceptos
      DataController.KeyFieldNames = 'IdConceptoExtra'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      object grdColumDbGridGridRepos1DBTableView1Column1: TcxGridDBColumn
        Caption = 'T'#237'tulo'
        DataBinding.FieldName = 'Titulo'
      end
    end
  end
  object dsConceptos: TDataSource
    DataSet = cdConceptos
    Left = 912
    Top = 24
  end
  object dsUptConExtxEmp: TDataSource
    DataSet = cdUptConExtXEmp
    Left = 1008
    Top = 296
  end
  object cdCExtraEmpleado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1016
    Top = 208
  end
  object dsCExtraEmpleado: TDataSource
    DataSet = cdCExtraEmpleado
    Left = 984
    Top = 40
  end
  object frxEmpleados: TfrxDBDataset
    UserName = 'ReporteEmpleados'
    CloseDataSource = False
    DataSet = cdEmpleados
    BCDToCurrency = False
    Left = 528
    Top = 344
  end
  object frxConceptoExtra: TfrxDBDataset
    UserName = 'ReporteConceptoExtra'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 640
    Top = 376
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion'
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 888
    Top = 336
  end
  object frxReporteConceptoExtra: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41981.393938935200000000
    ReportOptions.LastChange = 42116.679059236120000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 968
    Top = 200
    Datasets = <
      item
        DataSet = frxConceptoExtra
        DataSetName = 'ReporteConceptoExtra'
      end
      item
        DataSet = frxEmpleados
        DataSetName = 'ReporteEmpleados'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        DataSet = frxConceptoExtra
        DataSetName = 'ReporteConceptoExtra'
        RowCount = 0
        object ReporteConceptoExtraFechaAplicacion: TfrxMemoView
          Left = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'FechaAplicacion'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."FechaAplicacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraFechaTermino: TfrxMemoView
          Left = 120.944960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'FechaTermino'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."FechaTermino"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraCantidad: TfrxMemoView
          Left = 200.315090000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'Cantidad'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."Cantidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraMaximo: TfrxMemoView
          Left = 279.685220000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'Maximo'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."Maximo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraModo: TfrxMemoView
          Left = 359.055350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'Modo'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."Modo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraTipo: TfrxMemoView
          Left = 438.425480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'Tipo'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."Tipo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraModo1: TfrxMemoView
          Left = 517.795610000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'Modo'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."Modo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraAplicarSobre: TfrxMemoView
          Left = 597.165740000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'AplicarSobre'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteConceptoExtra."AplicarSobre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        Condition = 'ReporteConceptoExtra."IdPersonal"'
        object Memo10: TfrxMemoView
          Left = 41.574830000000000000
          Top = 26.456692910000020000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Aplicaci'#243'n ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 120.944960000000000000
          Top = 26.456692910000020000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#233'rmino')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 200.315090000000000000
          Top = 26.456692910000020000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 7.559060000000000000
          Top = 5.669291338582696000
          Width = 56.692950000000010000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONCEPTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 279.685220000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#225'ximo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 359.055350000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Modo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 438.425480000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 517.795610000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Modo Empleado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 597.165740000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Aplica Sobre')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteConceptoExtraTitulo: TfrxMemoView
          Left = 64.252010000000000000
          Top = 5.669291339999972000
          Width = 328.819110000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'Titulo'
          DataSet = frxConceptoExtra
          DataSetName = 'ReporteConceptoExtra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ReporteConceptoExtra."Titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 281.606370000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'ReporteEmpleados."NombreCompleto"'
        ReprintOnNewPage = True
        StartNewPage = True
        object Memo2: TfrxMemoView
          Top = 0.779529999999994100
          Width = 744.567410000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONCEPTOS EXTRA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 45.354360000000000000
          Top = 25.795300000000000000
          Width = 650.079160000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONCEPTOS EXTRA POR EMPLEADO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 236.858380000000000000
          Top = 83.149601420000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 236.858380000000000000
          Top = 105.826769210000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 384.700990000000000000
          Top = 83.149601420000000000
          Width = 37.795263390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 384.700990000000000000
          Top = 105.826769210000000000
          Width = 37.795263390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 11.338590000000000000
          Top = 175.559060000000000000
          Width = 702.992580000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 11.559060000000000000
          Top = 194.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ficha')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 113.606370000000000000
          Top = 194.456710000000000000
          Width = 196.535560000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre Empleado')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 317.834880000000000000
          Top = 194.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Departamento ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 484.134200000000000000
          Top = 194.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C.U.R.P.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 605.079160000000000000
          Top = 194.456710000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R.F.C.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 7.559060000000000000
          Top = 175.559060000000000000
          Width = 702.992580000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATOS GENERALES DEL EMPLEADO')
          ParentFont = False
        end
        object ReporteEmpleadosNombreCompleto: TfrxMemoView
          Left = 113.385900000000000000
          Top = 215.433210000000000000
          Width = 196.535560000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = frxEmpleados
          DataSetName = 'ReporteEmpleados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ReporteEmpleados."NombreCompleto"]')
          ParentFont = False
        end
        object ReporteEmpleadoscodigopersonal: TfrxMemoView
          Left = 11.338590000000000000
          Top = 215.433210000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'codigopersonal'
          DataSet = frxEmpleados
          DataSetName = 'ReporteEmpleados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ReporteEmpleados."codigopersonal"]')
          ParentFont = False
        end
        object ReporteEmpleadosTituloDepartamento: TfrxMemoView
          Left = 317.480520000000000000
          Top = 215.433210000000000000
          Width = 158.740260000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'TituloDepartamento'
          DataSet = frxEmpleados
          DataSetName = 'ReporteEmpleados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ReporteEmpleados."TituloDepartamento"]')
          ParentFont = False
        end
        object ReporteEmpleadoscurp: TfrxMemoView
          Left = 483.779840000000000000
          Top = 215.433210000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'curp'
          DataSet = frxEmpleados
          DataSetName = 'ReporteEmpleados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ReporteEmpleados."curp"]')
          ParentFont = False
        end
        object ReporteEmpleadosrfc: TfrxMemoView
          Left = 604.724800000000000000
          Top = 215.433210000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'rfc'
          DataSet = frxEmpleados
          DataSetName = 'ReporteEmpleados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ReporteEmpleados."rfc"]')
          ParentFont = False
        end
        object ReporteOrganizacionCalle: TfrxMemoView
          Left = 294.803340000000000000
          Top = 83.149660000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Calle'
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ReporteOrganizacion."Calle"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionColonia: TfrxMemoView
          Left = 294.803340000000000000
          Top = 105.826840000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Colonia'
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ReporteOrganizacion."Colonia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionlocalidad: TfrxMemoView
          Left = 423.307360000000000000
          Top = 83.149660000000000000
          Width = 147.401557720000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'localidad'
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ReporteOrganizacion."localidad"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionEstado: TfrxMemoView
          Left = 423.307360000000000000
          Top = 105.826840000000000000
          Width = 147.401557720000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Estado'
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ReporteOrganizacion."Estado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizaciontituloorganizacion: TfrxMemoView
          Left = 37.795300000000000000
          Top = 49.133890000000010000
          Width = 657.638220000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'tituloorganizacion'
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."tituloorganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 5.118120000000000000
          Top = 26.795300000000000000
          Width = 120.944960000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Center = True
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 11.338590000000000000
          Top = 136.063080000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -8
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 506.457020000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 491.338900000000000000
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
    end
  end
  object CxStyleCxGrid: TcxStyleRepository
    Left = 184
    Top = 168
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
    object cxstylConceptoExtraIncluidos: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
  end
  object dxPopup1: TdxRibbonPopupMenu
    BarManager = dxbrmngr1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnBtnEditar'
      end
      item
        Visible = True
        ItemName = 'btnBtnEliminar'
      end>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 712
    Top = 336
  end
end
