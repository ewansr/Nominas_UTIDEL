object FrmCatalogoPersonalDEX: TFrmCatalogoPersonalDEX
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de Personal'
  ClientHeight = 453
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DxRibbonPersonal: TdxRibbon
    Left = 0
    Top = 0
    Width = 1020
    Height = 126
    BarManager = DxBManagerMain
    Style = rs2010
    ColorSchemeName = 'Office2010Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    OnTabChanged = DxRibbonPersonalTabChanged
    object dxTabPersonal: TdxRibbonTab
      Active = True
      Caption = 'Cat'#225'logo de Personal'
      Groups = <
        item
          ToolbarName = 'DxBarPersional'
        end
        item
          ToolbarName = 'DxBarFiniquito'
        end
        item
          ToolbarName = 'DxBarBusquedas'
        end
        item
          ToolbarName = 'DxBarExtras'
        end>
      Index = 0
    end
    object dxTabInfonavit: TdxRibbonTab
      Caption = 'Opciones Infonavit'
      Groups = <
        item
          ToolbarName = 'DxBarInfonavitBar'
        end>
      Index = 1
    end
    object dxTabHistorialContratos: TdxRibbonTab
      Caption = 'Contratos'
      Groups = <
        item
          ToolbarName = 'DxBarContratos'
        end>
      Index = 2
    end
    object dxTabDescuentosInf: TdxRibbonTab
      Caption = 'Descuentos Infonavit'
      Groups = <
        item
          ToolbarName = 'DxBarOpcionesDescuento'
        end>
      Index = 3
    end
    object dxTabFiniquitos: TdxRibbonTab
      Caption = 'Historial de Movimientos de Finiquitos'
      Groups = <
        item
          ToolbarName = 'DxBarOpcionesFiniquitos'
        end>
      Index = 4
    end
  end
  object pnlBuscar: TPanel
    Left = 0
    Top = 411
    Width = 1020
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    DesignSize = (
      1020
      42)
    object JvLabel6: TJvLabel
      Left = 7
      Top = 15
      Width = 38
      Height = 13
      Caption = 'Buscar:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object CxBtnBuscar: TcxButton
      Left = 287
      Top = 9
      Width = 100
      Height = 25
      Caption = '&Buscar'
      Default = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
      ModalResult = 1
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
      OnClick = CxBtnBuscarClick
    end
    object CxBtnCancelarBuscar: TcxButton
      Left = 1063
      Top = 14
      Width = 16
      Height = 16
      Anchors = [akTop, akRight]
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'LondonLiquidSky'
      ModalResult = 2
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
      OptionsImage.Spacing = 0
      PaintStyle = bpsGlyph
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      OnClick = CxBtnCancelarBuscarClick
    end
    object Buscar_Nombre: TcxTextEdit
      Left = 51
      Top = 12
      TabOrder = 2
      OnKeyDown = Buscar_NombreKeyDown
      Width = 230
    end
  end
  object cxGBFiniquitos: TcxGroupBox
    Left = 558
    Top = 187
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 2
    Visible = False
    Height = 161
    Width = 274
    object pnlFiniquitos: TPanel
      Left = 2
      Top = 123
      Width = 270
      Height = 36
      Align = alBottom
      BevelEdges = []
      BevelOuter = bvNone
      TabOrder = 0
      object CxBtnAceptarFin: TcxButton
        Left = 26
        Top = 7
        Width = 113
        Height = 25
        Caption = '&Generar Reporte'
        Default = True
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        ModalResult = 1
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
        TabOrder = 0
        OnClick = CxBtnAceptarFinClick
      end
      object CxBtnCancelarFin: TcxButton
        Left = 145
        Top = 7
        Width = 113
        Height = 25
        Caption = '&Cerrar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'LondonLiquidSky'
        ModalResult = 2
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
        TabOrder = 1
      end
    end
    object CxLbl4: TcxLabel
      Left = 2
      Top = 2
      Align = alTop
      Caption = 'Historial Finiquitos'
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
    object cxDateEditInicioF: TcxDateEdit
      Left = 66
      Top = 53
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 2
      Width = 195
    end
    object cxDateEditTerminoF: TcxDateEdit
      Left = 67
      Top = 80
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      TabOrder = 3
      OnKeyDown = cxDateEditFinDescuentoKeyDown
      Width = 195
    end
    object CxLbl5: TcxLabel
      Left = 17
      Top = 56
      Caption = 'Desde:'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      Transparent = True
    end
    object CxLbl6: TcxLabel
      Left = 17
      Top = 83
      Caption = 'Hasta:'
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Blue'
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
      Transparent = True
    end
  end
  object cxbtn1: TcxButton
    Left = 128
    Top = 132
    Width = 75
    Height = 25
    Caption = 'cxbtn1'
    TabOrder = 3
    Visible = False
    OnClick = cxbtn1Click
  end
  object cxbtn2: TcxButton
    Left = 287
    Top = 132
    Width = 75
    Height = 25
    Caption = 'cxbtn2'
    TabOrder = 8
    Visible = False
    OnClick = cxbtn2Click
  end
  object dxDockSite1: TdxDockSite
    Left = 0
    Top = 126
    Width = 1020
    Height = 285
    Align = alClient
    DockingType = 5
    OriginalWidth = 1020
    OriginalHeight = 285
    object dxLayoutDockSite1: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 774
      Height = 285
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite2: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 774
        Height = 285
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object dxDockPanel2: TdxDockPanel
        Left = 0
        Top = 0
        Width = 774
        Height = 285
        AllowFloating = True
        AutoHide = False
        Caption = 'dxDockPanel2'
        CaptionButtons = []
        CustomCaptionButtons.Buttons = <>
        ShowCaption = False
        TabsProperties.CustomButtons.Buttons = <>
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object cxPageContenedor: TcxPageControl
          Left = 0
          Top = 0
          Width = 766
          Height = 277
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxTabPersonal
          Properties.CustomButtons.Buttons = <>
          Properties.NavigatorPosition = npRightBottom
          Properties.Style = 8
          Properties.TabPosition = tpBottom
          OnChange = cxPageContenedorChange
          ClientRectBottom = 253
          ClientRectRight = 766
          ClientRectTop = 0
          object cxTabPersonal: TcxTabSheet
            Caption = 'Mostrando: Todo el Personal'
            ImageIndex = 0
            object CxGridMain: TcxGrid
              Left = 0
              Top = 0
              Width = 766
              Height = 253
              Align = alClient
              BevelOuter = bvNone
              BorderStyle = cxcbsNone
              PopupMenu = DxPopMenuPersonal
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2010Blue'
              object CxGridPersonal: TcxGridDBTableView
                OnKeyDown = CxGridPersonalKeyDown
                Navigator.Buttons.CustomButtons = <
                  item
                    Hint = 'Presione para abrir el panel de b'#250'squeda'
                    ImageIndex = 103
                    Visible = False
                  end>
                Navigator.Buttons.Images = Form2.cxImageResIconosTodos16
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Insert.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.Visible = False
                Navigator.Buttons.Post.Visible = False
                Navigator.Buttons.Cancel.Visible = False
                Navigator.Buttons.Refresh.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                Navigator.InfoPanel.DisplayMask = 'Registro No: [RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataModeController.GridMode = True
                DataController.DataSource = dsPersonal
                DataController.Filter.Active = True
                DataController.Filter.AutoDataSetFilter = True
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '$0.00'
                    Kind = skSum
                    FieldName = 'SalarioIntegrado'
                    Column = grdColumDbGridGrid1DBTableView1Column11
                    DisplayText = 'Salario integrado'
                  end>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <>
                    SummaryItems = <>
                  end>
                Filtering.ColumnFilteredItemsList = True
                FilterRow.InfoText = 'Filtrar Registros'
                FilterRow.ApplyChanges = fracImmediately
                Images = Form2.cxImageResIconosTodos16
                OptionsCustomize.ColumnHiding = True
                OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsSelection.MultiSelect = True
                OptionsView.NoDataToDisplayInfoText = '< Sin Empleados Cargados >'
                OptionsView.ExpandButtonsForEmptyDetails = False
                OptionsView.GroupRowHeight = 35
                OptionsView.Indicator = True
                Styles.Background = cxstyl1
                Styles.Content = cxstylFontContent
                Styles.OnGetContentStyle = CxGridPersonalStylesGetContentStyle
                Styles.Header = cxstylFont
                object CxColumnCodigoEmpleado: TcxGridDBColumn
                  Caption = 'C'#243'digo Personal'
                  DataBinding.FieldName = 'CodigoPersonal'
                  PropertiesClassName = 'TcxLabelProperties'
                  SortIndex = 1
                  SortOrder = soAscending
                  Width = 137
                end
                object CodigoPostulanteColumn: TcxGridDBColumn
                  Caption = 'Codigo Postulante'
                  DataBinding.FieldName = 'CodigoPostulante'
                  Visible = False
                  Width = 104
                end
                object grdColumDbGridGrid1DBTableView1Column12: TcxGridDBColumn
                  Caption = 'Tipo de N'#243'mina'
                  DataBinding.FieldName = 'titulo'
                  Visible = False
                  GroupIndex = 0
                  SortIndex = 0
                  SortOrder = soAscending
                  Width = 119
                end
                object CxColumnEmpleado: TcxGridDBColumn
                  Caption = 'Nombre Completo'
                  DataBinding.FieldName = 'NombreCompleto'
                  PropertiesClassName = 'TcxLabelProperties'
                  Width = 214
                end
                object grdColumDbGridGrid1DBTableView1Column3: TcxGridDBColumn
                  Caption = 'Fecha Registro'
                  DataBinding.FieldName = 'FechaAlta'
                  Width = 127
                end
                object grdColumDbGridGrid1DBTableView1Column4: TcxGridDBColumn
                  Caption = 'R.F.C.'
                  DataBinding.FieldName = 'Rfc'
                  Width = 114
                end
                object grdColumDbGridGrid1DBTableView1Column5: TcxGridDBColumn
                  Caption = 'C.U.R.P.'
                  DataBinding.FieldName = 'Curp'
                  Width = 89
                end
                object grdColumDbGridGrid1DBTableView1Column6: TcxGridDBColumn
                  Caption = 'No. I.M.S.S.'
                  DataBinding.FieldName = 'NumeroSeguroSocial'
                  Width = 94
                end
                object CxColumnRegpat: TcxGridDBColumn
                  Caption = 'Registro Patronal'
                  DataBinding.FieldName = 'RegistroPatronal'
                  Width = 143
                end
                object grdColumDbGridGrid1DBTableView1Column7: TcxGridDBColumn
                  Caption = 'Proyecto'
                  DataBinding.FieldName = 'NombreOrganizacion'
                  Width = 144
                end
                object grdColumDbGridGrid1DBTableView1Column8: TcxGridDBColumn
                  Caption = 'Departamento'
                  DataBinding.FieldName = 'TituloDepartamento'
                  Width = 143
                end
                object grdColumDbGridGrid1DBTableView1Column9: TcxGridDBColumn
                  Caption = 'Puesto'
                  DataBinding.FieldName = 'TituloCargo'
                  Width = 124
                end
                object grdColumDbGridGrid1DBTableView1Column10: TcxGridDBColumn
                  Caption = 'Salario Diario'
                  DataBinding.FieldName = 'SalarioDiario'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 114
                end
                object grdColumDbGridGrid1DBTableView1Column11: TcxGridDBColumn
                  Caption = 'Salario Integrado'
                  DataBinding.FieldName = 'SalarioIntegrado'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 135
                end
                object CxColumnInfonavit: TcxGridDBColumn
                  Caption = 'INFONAVIT'
                  DataBinding.FieldName = 'infonavit'
                  Width = 130
                end
                object CxColumnAplicacion: TcxGridDBColumn
                  Caption = 'Aplicaci'#243'n INFONAVIT'
                  DataBinding.FieldName = 'Aplicacioninfonavit'
                  Width = 133
                end
                object CxColumnTérmino: TcxGridDBColumn
                  Caption = 'T'#233'rmino INFONAVIT'
                  DataBinding.FieldName = 'Terminoinfonavit'
                  Width = 148
                end
                object cxColumnatAplicacionInfonavit: TcxGridDBColumn
                  Caption = 'Tipo de Credito INFONAVIT'
                  DataBinding.FieldName = 'tAplicacionInfonavit'
                  Width = 210
                end
                object CxColumnTermino: TcxGridDBColumn
                  Caption = 'Factor INFONAVIT'
                  DataBinding.FieldName = 'FactorInfonavit'
                  Width = 94
                end
                object CxColumnTipoMovimiento: TcxGridDBColumn
                  DataBinding.FieldName = 'TipoMovimiento'
                  Visible = False
                end
                object CxColumnDiasDescanso: TcxGridDBColumn
                  DataBinding.FieldName = 'DiasDescanso'
                  Visible = False
                end
                object CxColumnEspecial: TcxGridDBColumn
                  DataBinding.FieldName = 'Especial'
                  Visible = False
                end
                object CxColumnIDPersonal: TcxGridDBColumn
                  DataBinding.FieldName = 'IdPersonal'
                end
                object CxGridPersonalColumn1: TcxGridDBColumn
                end
              end
              object CxLevelPersonal: TcxGridLevel
                Caption = 'Cat'#225'logo maestro de Personal'
                GridView = CxGridPersonal
                MaxDetailHeight = 5
                Options.TabsForEmptyDetails = False
              end
            end
            object cxGBBajaPersonal: TcxGroupBox
              Left = 339
              Top = 76
              Align = alCustom
              Caption = 'Baja Personal'
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2010Blue'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
              TabOrder = 1
              Visible = False
              Height = 153
              Width = 279
              object lblNombreEmpleadoBaja: TLabel
                Left = 10
                Top = 23
                Width = 137
                Height = 13
                Caption = 'lblNombreEmpleadoBaja'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label2: TLabel
                Left = 10
                Top = 45
                Width = 72
                Height = 13
                Caption = 'Fecha de Baja:'
                Transparent = True
              end
              object JvLabel1: TJvLabel
                Left = 13
                Top = 72
                Width = 69
                Height = 13
                Caption = 'Tipo Finiquito:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object Edtfechab: TcxDateEdit
                Left = 88
                Top = 43
                TabOrder = 0
                Width = 177
              end
              object cbTipoFiniquito: TComboBox
                Left = 88
                Top = 70
                Width = 177
                Height = 21
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 1
                Text = 'Separaci'#243'n Voluntaria'
                Items.Strings = (
                  'Separaci'#243'n Voluntaria'
                  'Indemnizaci'#243'n')
              end
              object btn2: TcxButton
                Left = 26
                Top = 105
                Width = 113
                Height = 25
                Caption = '&Continuar'
                Default = True
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'LondonLiquidSky'
                ModalResult = 1
                OptionsImage.Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  00000000000000000002000000070000000C0000001000000012000000110000
                  000E000000080000000200000000000000000000000000000000000000000000
                  000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
                  3AD20F2F21840001011500000005000000010000000000000000000000000000
                  0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
                  80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
                  0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
                  96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
                  3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
                  99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
                  66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
                  A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
                  8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
                  A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
                  A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
                  4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
                  B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
                  8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
                  BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
                  E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
                  B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
                  76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
                  7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
                  7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
                  46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
                  C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
                  0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
                  DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
                  0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
                  C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
                  000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
                  56B00E3226560000000600000002000000000000000000000000}
                TabOrder = 2
                OnClick = btn2Click
              end
              object btn3: TcxButton
                Left = 145
                Top = 105
                Width = 113
                Height = 25
                Caption = '&Cancelar'
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'LondonLiquidSky'
                ModalResult = 2
                OptionsImage.Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
                  76E4120852AD06031B4D0000000E000000030000000000000000000000000000
                  000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
                  C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
                  03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
                  D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
                  5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
                  BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
                  A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
                  CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
                  BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
                  EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
                  CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
                  E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
                  D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
                  E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
                  D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
                  E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
                  DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
                  EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
                  DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
                  D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
                  D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
                  A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
                  79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
                  BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
                  050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
                  EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
                  000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
                  EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
                  000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
                  B5D040437D951212223000000004000000010000000000000000}
                TabOrder = 3
                OnClick = btn3Click
              end
            end
            object cxbtnRest: TcxButton
              Left = 209
              Top = 6
              Width = 75
              Height = 25
              Caption = 'cxbtn1'
              TabOrder = 2
              Visible = False
              OnClick = cxbtnRestClick
            end
          end
          object cxTabInfonavit: TcxTabSheet
            Caption = 'Reporte Infonavit'
            ImageIndex = 1
            OnHide = cxTabInfonavitHide
            object FrxPreviewInfonavit: TfrxPreview
              Left = 0
              Top = 0
              Width = 766
              Height = 253
              Align = alClient
              OutlineVisible = False
              OutlineWidth = 120
              ThumbnailVisible = False
              UseReportHints = True
              ExplicitWidth = 984
            end
            object cxGBOnfonavit: TcxGroupBox
              Left = 241
              Top = 24
              Caption = 'Filtrar Personal con infonavit'
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2010Blue'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
              TabOrder = 1
              Visible = False
              Height = 195
              Width = 274
              object imgLogo2: TcxImage
                Left = 216
                Top = 10
                Picture.Data = {
                  0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000001C4
                  0000012908060000000D8552430000000467414D410000B18F0BFC6105000000
                  09704859730000589400005894010B2AD5370000001C74455874536F66747761
                  72650041646F62652046697265776F726B732043533406B2D3A00000A0754944
                  4154785EED5D07981445B7F5FDE640CE394A922439270141322839E71C254816
                  1450724E0A0A22A8088818105014110C282A88825910656727E754EF9E9A5A24
                  343B3D6CEF74EF50E7FBCEE77B3FB3D5B7EA56DD53B96E933026186377852DB6
                  7AAE27A754B5F71ED4D3BD6CD579C7B889CCD6A21DB354AEC592F31767C9054B
                  5E4DFADFCC0F5660D6A68F31C78061CCB36A1DF3EEDAFD95EBD9E75A05CFFC54
                  8BD27C40242F2121A1026833E1BFFF69E0E8D9A7A273FCE409EE252B7D8EA1A3
                  98AD596B6679A80A4BCE574CB91D96ABC26C2DDB33C7F0D1CCF3C266E67D7DE7
                  6EE78CB90D427F5DA88DB62D9297301A9C4F4E194B0EBA43FCBF123A82FC90DF
                  35777E2DF7B215D3EC3DFA6D73F41F1AB2D669C4920B451AD9750D2F1AF13705
                  A87156AEC9EC5D7A317BD7DEEF3967CE7DDAB37C75CB90C356447C564267047F
                  3C3BC2FFF19191E2FF95D019D40E8B7896AC68E99CF7FCD3F65E03DE77F41EC8
                  AC35EAFFD7A6AE6D67D188BFA1366CA95E8FD97BF60BD9BAF4DCE69EBF689AFB
                  D9E7D149CD2F3E2BA123C80FB7430B6F3357A9C5C8E12FD3FF708FF837893822
                  7CDB6DFF17BA70719073F493F31C23C69EA646E336977B9837A2A43B3333538E
                  02CA8D2C069A721761A67BB2B1E49C0599B96C650864C8DEB3FF2FF6FE435604
                  3E3B8E0E5136618E449C11387A6C86AD732F666BDE9A79B6BF3E53FCCF127106
                  DA40E09B6FC73A878F5D411DD15FCC156B84783BA4369374771666CA5928D29E
                  D039BDA67DA96281123C0D13A585B66D2EFB30B3D4A8E7A63678DA3E74E4BCE0
                  6FBF0E422C10E648C411D03E47AF012F430B6F33652FC083A4BDCFA09DF40F72
                  4A2D4EA0B22EE4DF7F609873C6D3C7EDED3B3373A98A2C394F114E53B6FC2C39
                  1FF52A0B97A206F8A072038B95480B8D9204D694AB304BCE5B8C251729CD6C4D
                  1F63CE91E34E79DFD8359B6C2A2BCC938803FC873E5A68EFD88D99EECDCE92EE
                  CBC1AC4D5A30CFDA8D0BC53F4BC401A8F3DE3776CF764E9D79CAF6580766A636
                  C1DB60EEC2CC949DDA21B519CDDA21D2405A24883C6DB4F7BC45F93287EDB1F6
                  CC3969DA71FFFE83C3101B847912E90C681EB40F1A082DBC0D8E82F3CDA52A30
                  47CF7EEF86CEFF9D53FC56221D400EB83F78FA8731AE59CFFC61ADD3989948F8
                  4C390AF28671793A462B1154624ADAF8161A26F58093F350A3AC5C9339468EBB
                  E8FBE0C01CB2B1A83057221D40E57B3B89E15A046053E6DC97FD6ECA9A8F59A8
                  4E78D66D5C8BDF889F4BA40350C7FD9F1E9DE3183FF9A2B9722D66CA4B228876
                  8835C178B743FA26BE6DA2FF5A6B3762CEC9D3FF087CFDCD18C40A61AE443A00
                  5A07CD83F64103E10F2E88A0295721965CB40CB375EDF389F7C8B17CE26F2434
                  44F0ECD986CE89D3DEB2366919990AA51E09EF810A1FE84AF23F82331AA463C0
                  F063DEB7F676905338DA8382DCDDBE7DEFBD6AADDF9425DD9BEDBFE00B6204FF
                  406EBE69CABD6AFDABF8ADF833098D803A1D3872B48373C294639686CD98294B
                  1E5EF70DD10E6103667068F46869FC28B38F1CFF56E0C8670D85E9121A021A07
                  AD83E671ED133EB82C88E8B1F07F28548AD93A75FBC6FBD2D607C5DF4AA41114
                  D82AB8172E9B6AEF3D809968349694894605A8FCE9D9038D95B005CC969F1A64
                  3E66C514CE9827D7879D8E06221B126904D5836CDEED6FECB3D4ACCF4C104325
                  FF53FB3365CEC32C0F5565AE79CFEFC3DF883F974823A82C1BB8663DB3DED6A9
                  2B3365CB476298F7BF7A7FAD1FF4A2B0258984DA94A730C5E2EECC3963CE54C4
                  10910D893402DA068DE36D8D6BDE7FFEFF4F1041CC6F73B52CC16CAD3BFEE259
                  B7A18A4843E22611365B1F73CF5FF897A57C5596747FCEC8BA41112AE72BCBDD
                  48E46B8DC569A4928B9949B41D23C759694433586447E22641012DAF67E3A623
                  18FD25DD979DAFDF2A963F48F503A37573E98ACC39FDE94FF0B72219899B44F0
                  DBEF073BA7CDB2A2DC79F9A3438ABAAE54FE46206CCB578C25A11D96ADCC5CB3
                  E6FE15FCF5B7C74476246E12D034681B348E6BDD3575E06A4104B18B2A6F3166
                  A2FFDBD6A2DD05EFDA8D35455A1231201C0EFF9FE7E557BADABAF44AE61B64B0
                  91C568A3C21B31C546D483DC8599B5494BBF6BE6DC272930CB29BC9B00955B01
                  CFEAF5C7CD156BF07542557500BFC95130B2B63F79FA71A421929388119E55EB
                  275A5B75F4F3CD64E890A694EFB5656E34C246C48CDC6473FE62CCD6B16BB267
                  ED0B5D115B44D6246200B40C9A066DE39B0A15760C5F2F88298423B0C8DBBCCD
                  BF9EB5EB9B8834255480825779FF81439BAC351B784D59F35EBD4E94D148F580
                  6FBC295D29E45ABAF26DCADBA3229B122A40E555C2BD72DD77E607CB47D68D95
                  CA38352280532FD639E9A9EF42FFFC5B42242BA102287BD7F8C9CFD3A83CCC37
                  CC20A62995714620C5107E22A0524DAFF7F59D9B106344362554001A062DE39B
                  A652A90737164410BB9FF2D008E191C76CAED973DB88B425520155D46ADEEDAF
                  9D3557A9CD921FC895B11BE115C47A8BB9E443CCB3726D32E551D60515A072AA
                  EA5EBCE28FE4226522234385728D4A8C12D02129588239C64EFA23F4DBEF5545
                  F212A9201C0A7674AF58F33BEA2CEF942A956D06A4E9819CCCF2706DE67D6DE7
                  59AA5F154576255201B40B1A062DE382A850AE294C5D10D118218A3464B7346C
                  EE764E9DD9577C4342015441B37BD66DFCD15CBE2A33DD9D95CA90CA2F234CCD
                  A821E5C39429375F84762D58E40C7BBC3D45B62514C0028126AEA7E75F3215C0
                  710AB17943A95CD510654FA268CA5B94D9078FBC14F8EEB49CB14905D40E4BBA
                  172F77A21391E6B23712910FD4857BB3473AA72FBE7491F2DA58645B4201D02C
                  6817348C8B6194BA90BA20A610A2480DD252BB51C83579DA28F12D892B4015F3
                  7F8E51139E4F2E593ED2080B274823BC92854B5DCE9B73EC93DF05FFB9945B64
                  5FE20A84934CAD5D93A679927391886553B966188D088410C5ECF999BDD7008F
                  FFC8D1D6E273125780DA611647FF213BCCC5CAF01DD386DE3873B3443BBC8F44
                  B14235E69AF5EC9B946779F5A602A055D02CBEE41365649842758208F2B5A442
                  CC52BD3E05C38913C537250854216FF7AC5EB7DA52B9E6CDAD1365242230D328
                  D154A038738C1E8F35C5ECA2182408E18B173B3B474F70F17A80F53F2DC43085
                  480B9DD3EC0598BD734F97FFC34F3A8BCF4A1050175DCF3EB7CF5CBC5CA41D6A
                  59F64623DA21E5116BD39E45CB5621068962902040A3A055FCCABD1896ADD40B
                  22289C80396CC7F031CF896FDFD2A08AF800F5D65FB2367A9425639D28117BA4
                  D7123D54DC6E54A632F36ED8F4219581BC289CE03FF1CD60FBA011FEA4077232
                  133652A54740461B44E734731E666DFB84DFFBDA4E792486803AE8DDB9EB4373
                  A51ABCC370ABB4431CE4B7D67B84F90F1D7E09B14814C72D0D681334EA663A45
                  B1092208B5C5F429553CE790912B850DB72C280876B0F7EC1739E4AB545E894A
                  04E66CF97863F4ACDB385514C72D8BC0D727C739FA0E667CF30CAEE14B0F314C
                  21D2E6BB0EF3335BEB0ECCFDCA8E71C28C5B16FEFD07A65A5BB68BDC3C732B88
                  E1153465CDC36C1DBA30DFEEBD1D4471DCB2708E18BFD252A9666423DA4D6C68
                  8C5D105398874608E5AB30C7C061D8027C4BBEEF45F9AEE79C38ED22BF8C1B41
                  50A99C129918A95000B277E8EA0CFFFD772F512CB71C4227BF9D6DEFDC538861
                  F4857B4D98228A1821347D8C795FD9315B9873CB81F9FDBD9C03863AB1E92B43
                  1F71BA59E68F4CA3D3C8E822F378EB8962B9A5000D722D58BC09CB56C9292F93
                  DC046F5E10A1BE38E95FA612B3F71FBAE7561BAE537EEFA691D16B182927FC7A
                  456AE4A3A152CC3162EC1754263944F1DC32F01FFF6AB1AD5D6766BA2F87AA5D
                  6C9A139D924CB918A6EC7DEFBCB7589875CB80EA5C76D7DCF95F988B95E5BBE1
                  15CBE81620D6F5B1BBDD356FE16B5426B7D4537ED01EF7E2157B700B14DFC476
                  1323C314DEBC2082D4F8F90E9E92E599BD47BF0F03677FCA256C4C78F83EFAA4
                  93B5799B005FAF488303323C5107721564E6AA75986BCEBC5B66EA8E1AE11DFE
                  03875EB43EDA9625E1AD49D4013D3A45F82644F1FE9CCC46B6C026D826CC4C78
                  F8F6EC7D8ABF1A834EA952F9DC32A43A809B8D9AB408785E7DED96B93C83EA7A
                  2ED7B3CF7D682E5725325D9EC636983641041110710B44D132CCFE78F713BEF7
                  F627FC5B5EE484BB1DFD06BF69C639435C07A5472034122920E37E487BB73E49
                  A15F7E6F2B8A296101FFFB5EDBF9BAA5DE232CE9CE2C54063A89610AF9B7C907
                  776561B009B6C146616EC2C273F0507EFB133DBE35F37705D56DAB4F58F22B37
                  8B52C72807734E9CFA6738CC2A8B624A58308FA790EBA91927928B9763497846
                  4D83A36E691744100D12D3157870B67DE7AF7DBBDE2A296C4E48B896AF6A63A9
                  D338CCDFB2BBD5C510A432E037D994AAC03C2F6D7D9782715651540907CA5B26
                  EFB61D7B2CB51B45DE3214F9BFAE4CE24D61036C826DB011B60AB31312CE39F3
                  26992B558F9C8D95ED30B2FBFB815CCC52B301F3EF3FB09AFC7FA728AA8443D8
                  E529E91C37E9EBE462E522CFE86974EE5B1B414C21CE48D168C1DAB6D38FEEE5
                  6B12F2AE3DCFFEFD77DB7A0FFC824F152B95C1ADCA22A568849299397AF46781
                  CFBFAA248A2BA14001269FF7A5573EC68168BE91CA8841189D13B20D36C256D8
                  2CCC4F28F80E7F9AC7D6A1CBEFA62CB2537A15E17F1245E784C92C74E1EF3CA2
                  B8120AC11F7E2C6F1F35E1C7E4FC25F8ED4D5AFA5F5B41A4613B37307F71667B
                  ACC345F7D2D575441E1206DE6DDB0759EA36E65BDE6543BC8662879F6BFCE479
                  148813EAA030E5A78477E34B27F04EA1166B15E94A0445B211B6C266D82EB291
                  10A0FCDCE37D69EB0A4BF96AFC1C9E6C8757106591A7089E0EF37A56ACEE238A
                  2C61E0FFEEFB3A8E61632EF21DD6E9B05CA5AD2082305088A2B5592BB37BE1D2
                  96222F191E8C858BBAA6CDFE96DF4082279D94F27F2B13EB1839F233FBE3DDAC
                  A1DF7FAF2D8A2DC383027065F7D25567F03EA1E1C5308564236C85CDB01D7910
                  D9C9F0F06E7F3D9BBD738F9F6FC9A34E6A08B1A0B2718C9EF02DF3F98B8A62CB
                  F0087EF5554B47BFC166BE9B3B9DF66E682F88200CC5F4290987AD494B8F6BD6
                  339D449E323482A77E68CDCF9B6157E12D76F85715B1864141D84A2368EFCE5D
                  D345B165689090D474CF5BF81BD6C7338C18A65088226C471E901791AD0C0DCF
                  E6ADDD2C0FD772F1658B8CE48F7891DA61D2FD3998AD4D27E6FFF89384B8F316
                  BBFA6DDDFB7AF8064E1CF74B27BFA78F208230980F6B0B314BBDA65ED7EC6732
                  F4F09D82C99DDE175E7A914F0B636A5036C41B125BE01DA3C6EFA732CBD0977F
                  3397BB095E2A4FCE5334E35E07864E0A6CA73C202FC893C85E8604D5A9DB6D6D
                  1F9F6F2E593E7E972064489660261A94B8172DC3319C0CBDB9C6FFC1C13EF68E
                  5DBD3863684A679FA79F208264389EBF49CA9E9F596AD40F7B56AE1B2DF298E1
                  4095EA0ED7D459EE24DC8621478737267AA73882D1B33F0BFEF06359517C190E
                  E1BFCEB7733E39D58ADB67F805C134CA52CC6F462046B79407E4057942DE4436
                  331C82FFFC53D8DEADCFEF7817101BB914F32B19698759F232E7F8C96EC42E51
                  7C190EDE575F1B6D6BD53E8C73B67C8F423A7780D257104164000787A9976A6D
                  DE9A79366D794AE4354321F8C79F45CD55EB98B85394F229F91F7148BD6819AF
                  73ECA40C391A09FF7BA99763E438077FD5036B1519590C530851A4BC204FC81B
                  F228B29BA1E0DDB2ADB9A5463D969C1B6B480AF994FC8FD40ECDE5AB9A025F7D
                  9321D711A115D08C641CABC91F9FB3BEE92F88298428E628C8AC0D9A9128BEFC
                  3CF55AFE27F29D21E0FBF0F0AB96CAB5C2521055305271C3EEE7977E298A2FC3
                  2074E1EF118EFE433C100ECD9F6FD29BC80BE5898B22E5117915D9CE30F0EDDC
                  F505E5257C5DDE24AF27C52A4BA51A61DFEEB75F15C59721006D8046402B2EDF
                  0416A776183F41E42451CC968F59EA34C66BCF6B29E319666BBE73E8A8CD78EE
                  883B47316F9257B17029666DDEE6A828BE0C81E02FBF4DB4F71914E02F972472
                  C787F2863C22AFC8B3C87E868073E8E8CF13F2F1EDF4204688A52B327BF7BE9B
                  45F1191ED00468033482DF4BAA94AF74649C053142ACC359AAD7659EE5ABB751
                  01DC2FCAC2B0201BEFB6D66EF896525E246F40DE182B7D4765974D14A361110E
                  87FFCF7FE4E8B3F62EBD58D2BDD9343FEC6B3852DE9047E4157946DE5106A238
                  0C0D73C9F24714F32479435AAAD4790B314C14A161012D8026401BF85E0D85BC
                  A437E32F8822D0243D908B992BD460AEF98BE02C43BFBA4EF675B40F1E698BF5
                  F5E55B9A3872D3BC4D20F0FD29431FBF20DFDEE53FF8D1525B9BC799E9EEACFA
                  BC58A10791471C8DA23C23EF28039485281643229894D4D852BDDE05EE23A53C
                  495E4D8A555837B6F71F6A430C13C568484003A005D0046803B75F8776A8CB08
                  916794C8EFBF2C5B8939673FFB3E15485E51368643F0A7B35DA827EDC2B94A29
                  882A4941CBD2A019F3BEB27D8E2846C381EADCDDFEF70F6CB43569C95F8BE0BE
                  BD15C43085C82B82265ECAA032F0EF3FF8029589619F0EF21FFB7C81AD65BBC8
                  DAAE527E24AF26EA73DEA2CCDABEB3CB7FFC7817518C860362BF73F633EF430B
                  F87285D007C53CA533F511C414E28C14AE5E2A5A86B9A6CE3ACE828122A28C0C
                  05EFCEDD1DAD8FB6B1F39B31A420AA235FD0AF19728E1C67C8112235C24CDE5D
                  7B5FB3D46AC8F8C3B2B7F2BA14E51D6580B24099A06C4431190A9EB51BA75BEA
                  360ECB11620CA4B2B2D67BC4EE5EB0D8902344C47CC4FEE4A2A5235AA0F39136
                  7D0511E4DBC171CEAB0C734E98F25DC8E57948949561E01A3FA593A5467D876C
                  8831903A0E967255C2F6AEBD678862340C28E0E7F1BEF6E6BB969A420C13E158
                  455A89760851A432F1EE78132F9618EE6268E784C9332C0FCB9DDE31111DD387
                  6B391CFD871AEEB630C47AC47CC4FE8806E8DF0E6F33C48807D3A7BC77509A39
                  868F3B1B32271BEA1E4CE7C0E19D2C0FD776C8861803A95E99CB540EDBDA3D61
                  2841A4405FD8B3E1C5C3962AB5F94BF38AB6DFC24499A06C3CEB5F3C8CB212C5
                  6608D83BF79C814E969CA5898110C4AA751CCE61A30D258888F188F588F93CF6
                  1B61A982EAD56DFC5E384C05EA3D650451C421E8FC259863C8C8DF8317FF6928
                  CA4E7738878DE9844A250531461628114ECE5BCC30824801BE9477FDA6CF29A8
                  3253E63CCA36C79BA8F778390507CD11E80D101850369687AA309415CA4C149F
                  EEB0F7E837C3F250552988B1F0B2208E318C2022B623C6F3E79BD2E992EE9808
                  ED83069216DE66EFD6C7975C2072E7A8DEF3B73C38E4A102CA5990D9FB0EFE37
                  F0CD49435C4C2B05F12659B44CD85CEE6143082205F60A9E956B7FE03D52A33C
                  EC8C694AECB6AE5A875F58C1AF57431DD3DB36B443FE027969E659B1F607949D
                  28465D41B18A04518E1063A2C10411311DB11D319EC77ADDC5B014D73E136920
                  B4F036FFA9D3CD1CC3C7FCC82F30C6B102BD478A30307711DE4B2503EDBEF7DE
                  D77D779473E0B04E988797821803A9F767A6DE3C7AF5A218750305F43AEE679E
                  FB036BC029AF3F28DA1C4F522048BA373BB354AFC77CFB0FEE77AF7BA1BBA541
                  3333EF981A411421D6282B2A33941DCA5014A76E70F4EC1F1921E21A2F259B25
                  AF678A200E1EA5BB20229623A623B623C6EB3E00C36632681E699F63F8E81FA1
                  85DCD090CB5DC63961F237E6A26522B7031840B531843565CDCB6CED9EF0F8F6
                  BE33981BAA133C2B5677B4366C6E979B6A6220F5E2D19BB7531013C5A80B5830
                  D8D239658609EF57F2BAADB718A26D51404FBA272BB3366DC9FC9F1DDB476293
                  03B67A172F7BC4F668EB7FB920620AC708A28832A3B24319A22C79A1EA04CF73
                  8BA65B6AD60FC97618032188D5EB399CA326E82A8888E188E588E991253A03CC
                  4652DD86E641FBC22E5719616A04D4284BB8A6CEFA22B964F948CF5029917812
                  C100410C97823FDAD6EF7B6BDF58616ADCE13F70E8716BAB8E4EEE48395DA38E
                  E43BEA99865C53674F8B9462FC11365BDA3BC74DB6F02763F865D03A0B0CAFD3
                  344ABD23333A7A2C70E2EB9DD4EEAEBA94C2B368591D5BEBF6FFF07A865EB452
                  3AF1246CA6B24319A22C51A6C2D4B8C3FBFA9BB32C0D9BC96317B190CACADAAC
                  B5DDBBE3F50EA218E30EC46EC4707E2F291E56D7BB1D12B9C691D641F3A07DC2
                  D4AB41FF90CF3567FE87E687AA1863A408C2866CF999AD69ABB0F7F55DBA04D7
                  B0D3D1CD3160A8D794B2F141C94EC9AB99A70875645A33DF810F1788628C2B42
                  BFFFD5DD31FA49B7297BC1C814A4928DF12605A7A47BB2317BF73ECCFFF5372F
                  517B53BCB6D0B7E5958AF6F69D7F36A3178D43E84668875486284B9429CA5698
                  1A5704FF3A3F0FB7EAF0CE8D928D92579362156296BD673F6FF0E2C59EA218E3
                  0AC46CC4EE6403E9091F1992C641EBA079C25465D00FB2B89E5FB2D75CB17AE4
                  A6712364028ECD9C9B591B3FCABC2F6D5D14EF7B17516896BA4D0EC99E690CA4
                  D1B4EDD136AE90DD11F7171502DF7D3FDC3E7474909F31C42E3625FBE24D8832
                  D963EF3B8405CF9F5F4E752AD5D75EBC3BDE2C66EFD4FD1B8822BF5B5529CD78
                  13CF47210F54B62863616ADC406556CA5CB9D68F86E9E0189D29823868F83F54
                  76CD4531C60588D1DECD5B162166F30D5A461848400C49D3A06DD038689D3037
                  75D00FEF752D5CBA859FD5C2191191D8751F8827D143A5C668ADD384B957ACC1
                  4B1971BDACD6DAA8C5CBC9251E922344D57C100782B16D3FAE578105BFF9768A
                  BDD7C070121AA1114657F83ED9815EA963E0F070E8E23FF3D476E802FBDECB6D
                  EFDCF3B0B978D9485E94D28F27455E50B628E3E0D7DFC6FD6D536B8BB6C7745F
                  7FCA482C5A8659EB377D95DA61DC1E09466C468CB6E2C50A744AF5EEC0881800
                  2D83A6B9162DDD028D13E6AA031AAD7BE9CA55669E29FD2E5BBD96B0C5FC702D
                  46B6BD4299BA4F989BEE70AF5EBFC75CA19A14449534535D714E98724A145F5C
                  10F8E9A779B6277AB0A4BBB21863E11EA33B6CE9CE928739C74F0A876CB649C2
                  54D5089EFE219BBD5B9FF7CD0F9617079815BE134FA24CA96CB143D6D6AE33F3
                  1F3D3E4F981A1778162D3FC5ED30402C323C29562166B997ACD82D8A2FDD8198
                  8CD88C18CDC550C9AE7832450CA11BA465D0B434CD30BAD7BFB8887A18BC0170
                  31D0BB2262AB2C051873D987996BDEC2B7C9015985A9E98AC0871F37A011A25D
                  3644154419152811F6BDB2FD7D517CE90AAA03FF23315C6EEF3D80990C534F49
                  0CB317E0F638A7CD0A862CE69B9E62A4FC3DE0E833704F72E98AC658C610DF4F
                  BA2F07B33ED69EF90F1E8E3A05AC15DCF316F6A64E815FBE96AF82D40E684414
                  0C7C7F7A9528BE7405623162326233DFB46280CB5E5006D02E6818B44C989A36
                  7877BC39DDFA689B482631FCD5BB41623B38B6EF96AEC45CD39FFE981C514098
                  9AAEB077EA76899F13D33BFF4626950DCEF658EA3EE277AF5C5D49145DBA817C
                  7F97FFD8E75B6D9DC5C8B0108D60F4F60FCA207B7E2A8782CCFDFC12270BF87B
                  08736F1A94CF3B1D83476E3297AF4623C582CADF8D37D10EEFA360D3F431E6DD
                  FDD656F842989B6E70BFF26A015BFBCE5E1E8B643BBC315107731761B6369DCC
                  E497CCA2F8D20D88C188C588C93C361BE2785371AE59D02E689830551B7877BD
                  35960A377CF91C899211F1A4083AE652159963F2B4AFC821E9FA5206A57FB7EB
                  E9670FF16BB66443BC31E1175CAAD0B5F7778C857389E24B172000FB8F1E7B93
                  022405E69CC6E8AC89FCE3FF762F5B8577E8343BA680A91EC78871CB2C956A46
                  6E96D27B6D06A41E386EDBB1366CCE7C3BDE78133E11E6A60B28FD62CE51E3BF
                  E7CF75C9B5C41B93C7C702CC317AC2015174E906F24951C460C462C3C447D228
                  6815340BDA254C8D0ECFD6EDF32843AAD6E2BCEFEEEF6FEBD4CDC71B2344D108
                  19C716EC626599032F65D86DA585A9E902F7734BDA61E86DCA924F364625A211
                  D2A808EB16CEE1636789624B17509DCDEA3FFEC57B96E6AD230264047140FE31
                  7279B03C73AFDD78896C8CDC7CA1319C23C7CEB654AB13A9FB981E56B2259E84
                  2866CDC72C35EA33EF6B3BDF836F84A9E9021A89CC3257A64E01A68F653BBC9E
                  7CBA9E060B351A30E7E4E9ED44B1A50B42367B69E7934F7D87186C88E330D024
                  88216914B40A9A254C4D155467EF8516DE66AED980B99E59B04B6D25F6ED7BB7
                  83AD7B1F375F1FC131040354483E8544B638C64FFC2578EE6C1561AAE608DBEC
                  956C2DDA9DBEFC88A5822DB73421085411CDE5AB5EA27A926EF7D0525DCDE73F
                  FCC96778BF0F37BE1842141084480CCD652A31EFD6ED7F918D3585B95141BFED
                  180EF8637AAFCE397EF2442BB55DDC09A9688F0E4C7A20277CCFBC5B5EFD0C3E
                  12A66A8EE0B95F5A5BEB3D72C9944DCED62812ED90E2B3A549CBD3815F7F4DB7
                  650BC45AC7B849BF24E72D668C697CB441D201E41D1A05AD12A6A60A681F69E0
                  9BD0C2DBF8732F0F5565CE79CFA97EB5DE7FE4584B7BEF81974C390C72EF222A
                  00390473E6F62123FE097CF36D2361AAE6F0BCF8D21B68F41809C9C6780D214C
                  541F9C93A69D0B1CFF325D8EC5501D2DE3DBBBEFB4A56A1D96743789217CA0B7
                  1FD010B3E665E6B2956984F4C669D828CC8D8AB0D3D9CF35730E8DA8C7B1D08F
                  E7FA89FF59155C53A60FB5D6691CE22FD628D9154F0A3FF0CBCA4B55629E55EB
                  622A875810F8EAEBBB3DCB579FE3779ACAB3C157133EC8499DD2D2E483E5ABDF
                  1045A6391063116BF9BDD31043BDDB20BE4FB1079A64EF3DE012344A989A2AA0
                  79D03E6820B4F0365E80E86951013A67CFC5069562E2B7A92278EA741DFBC0E1
                  7FA377C07BA97A170846AA782D20470166EFD1D71E38FE85E6530558C309FDF2
                  6B3BFBE3DD796FD808A363C310A280CB136A3762BEF7F68FA17A74BB2836CD40
                  693EEC7969EB6FE6720F47C410E5AF67BD13DF36DD9783596AD667BEB7DFC5B9
                  4B55ED0708DBEDE39D53A687B03D1D9B531C7D87840227BF1B2FFE59155C33E7
                  76B534681630E526513482381429CD92704CAB6869E69EBFF037F84C98AA1950
                  B7029F7F39C6DAB4556457B1DE1B388C44B443AA4FB6768FB3E0B7DFB74FD311
                  831B00B11531961F03E20F42E81C07D10EA141A445D0246893303555A0AD42F3
                  F8462031DB1079319FFE8FCB179D4E9EFE65D8E551B516173C7BAE9A63E4B8F3
                  26DC399A95123442C1F0E13B0D991FEFE1F57DF8D113C254CD408578BF67C59A
                  77CDD4E07985D03BCF46202FF7A22C99CAC33962EC4F619753D54C432CA072AF
                  41A3F33F93B1709FD500D740E1FB34224EBAFD0166A9D784F9DF7DFF18D9A83A
                  DFA14B49B31CE32645EA10EE2CC5540FB5415CEB460D3AA6F557D79CF9ED6D8F
                  B4B4F1AB05F318606D1FDBED69D4602E5C9AB99E9EF767987C274CD50C286BD7
                  F4A77F4AC6D20DF2AD779E8D409481280BE7CC39EF225689E2D20C88A988ADBC
                  DE6230A47B5DC3EC4C7E060D8216419384A9A9021A07ADBBF6418B8820A6248C
                  456A1A763A464F381D369955CD3DB36010097F8F4555E3ECC02481A7A0696BDF
                  39E07B77FF2061AA6608FDFC4B757BAF01E6A4BBB3297CFB562495376E116AD8
                  CCE7DBB9AB9B2826CD400DBBA967ED867F930B9688ECAED4FB7C13083124FFDB
                  5AB663FECF3E3B40365E7549776A08FEFADB527BFFA1FC9808BF960D6D8688B7
                  10B1266A6BFB04F31F3DB654FC5C153CF39F6F6C6BD9FE5FBE868234956C8E27
                  911F6C6E20B127E1FA377CF1525361AA66081CFBBC9BAD453B2FEE873546DC31
                  00EFCF898BE3CDFEA39F5517C5A419104B1153798794DABCE2F7E349D431680E
                  690F34085A244C4D1541D236681C9F6285E65D31A8F94F10419C2BE2CA5F04F7
                  DF9D0F9CF9A9BE4823555030C8E79AF5CC67E6920F45FEFECA34F5225E63CE92
                  97595B7762DEAD3B347D2983F27BBBF7C52D2F9831EF8C1D8E4608D07AB15049
                  DE43371728C99C4F4EC1943B7FCA482B507A1DDDCB57BB223B190DB299090DE9
                  BEECE870B1C00F67F06285AA9E38FDEE8EE08F3FADB5F7EA4723CB4C91D1DC95
                  330CF8BF218A2494B6166D99FF8383B8A250F5955B3482AE6A6BD3F117537E4A
                  CB28A288293588E2E419AEF0DFFFC4B471281AA86CB2BB57AEF90253E886893B
                  7A11658D59BE52159967C98A17A86C345DB2400C452CE51B0A0DF21E257C0ECD
                  81F6507E556DE282A641DBA071BCCE5C33DD7EB520826894B87B11F3B17D06FE
                  EBFFECF8A322AD5441066573CD99BFDF5CAE0A7F8AFFBA74E34D044E042EBC94
                  D1AC35F3BEBAE36961AA26A0FCD673CD9CE33021A8814A36DC0A8450512FCDDE
                  A31F0B9DFDB98F281E4DC0C2E17EEE679EF3F1697023CC3EA4D42912667BD75E
                  2C78F6EC06AA07770A735305FDEEAEC067C75EB5B5A5A0724F769ECE556278E5
                  37E8BFA60772324BFD479877E76EDC43A9FA6C9F7FE7AE72B6B68F9FE20DDD30
                  A258908FEC9D23C6F9427F5D8869E3503484BC9EF2B6A6ADCEF269536CEA52B2
                  E156201F8D17668EF1931D884DA2783401622762285F6743BDD5BB1D82549FA0
                  35D01CCA6F36616AAA809641D3F8542FEE0656687FD70B22281A3EE6A36DDDFB
                  9A0327BF55F5B82419768F7BDEF36F992BD7888C9C8C5070948FA44CB999A56E
                  13E6D9BC35A669A868F07FFCC9686BC3E6DE9483D8B722792FADDCC341CFBA17
                  34BD1E8A793CA39C5367F08D3A861043341E0A3A49F7E7648E81C320868B85A9
                  5141ED228BFFD8F1BDFCB6271C28477AD1F243FF8E631C385AE27DF575F537F3
                  137C6FBD5DDCDEB1EB77C9C5CA44A698F52E3B7C9F6249D203B998A3FF5016FC
                  E9DC2861AA26F06CDA828783837C2D48E9FBB700D149B3D669ECF5ED7B77B428
                  164D809889D88918CA3541E1DB7125DA05C55B680CB4069A234C4D15D0306819
                  5F634D45D495053185FC4C078DB09EE8EEF2BDFF81AAF7B4B8282E5DB1CD8A6D
                  F1D40074DF012632CE8F97D4ACCF3CABD76D241B55F5EAD5C0B7FD8DBD968A38
                  244C41FBDA6F273AA997C5374E3CFBDC292A53CD6ED30FFDF3EF54E7B8897C94
                  64880D1310436A0B497766618E61A359E0A7B3CF0A53A382CA25BFFF93231F5A
                  1AE1199C183B89F45D7EE09DDA9277EB76BCDD965F241B15FEFD070BD83BF738
                  62C68169ECC0531A8DC693C83736DF5187806F1C3AF9DD54616A9A41E5729767
                  E3E653E6E2E522F545E9FB094C744A2D15AA31EFC6CD7B4591A4198891889588
                  99889DFC5B7AB743D212680AB4051A4336AA12436817348CC7E8283BB1531744
                  5E894914A9A76A6BFB44C0BBEB2D55BD0F32F47F1831586A378E88624A5AD7A6
                  1F4F5240E007872BD764EE058B70C594262F65503A259D4FCD3CC2A76BA21476
                  A211A30F7BD7DE7F862EFEAB6A67971A047FF8E1798CC092EECC1C99F2334020
                  473EF1E49173E25416B6DA541F8BA0BAF12035C613969A0DF8C3C08AE94723BE
                  8FB37D0F5565EE17369F409A22F9A8607F5EC8E2E835F06D7349BC946190658C
                  0262E350BB27986FFF81E785A96946C817A8661F38EC67BE66A9F4ED4425463B
                  44E7E80938F2535214479A80D8881889586988E365423BA025D014680BD9A8EA
                  32796816B48BDF2085F81C45875217441009600D07675B9AB766DEEDAFABEED9
                  795FD93EDFCA7BC634DC56614CBA93BECF7BDC15AB613BF83B54A89984A96942
                  D8EDCDE41832D262CA5920D5E1784250E4CD747F2E66EFDC93054F9F5E288A21
                  4D40050FFCF8D34A479F8191FA62842DDDA82F59F2F1CD0ACE997382CCEB1D2A
                  CC8D0ACA4F45DF9EBDDF9BA937CBCFCAF1F4AE495F2DC90E4C59994B57669E95
                  EBBE47DAE2335141BFBDDFD17FE876FE0201468A7AAFB3C1A758774627BB5547
                  E67DEF8395F0BD30374DF01FF8B092BD5BDF301FD1DC0AED307F099694252F89
                  E19381B0C3314014439A40BEC884D888186998E34D1894E18C3369093445981A
                  15D02A6816B44B6D3C892E88294425CE9C075BEB9967C38BAADF40F36C7D6D8A
                  B565FB48E11A650495AB30BFC9C135EB594C43E516A6A609A1DF7E1FE3E83738
                  10297C038C6CD283A850A807D861D9B8059EFD5926B29F26900FEEA191E1165B
                  872E3C50F2A06D8086883A6BA2A0E35EB8CC4D36AA7EB1827E5BC3FBF2B65FF9
                  C82C65CD30AD843D14FCCC5436EEF98B7EC537C4E7A2827E7BA763C8880D968A
                  35221BDE50BE4ADF8827518FA87CADA847FB0FE2C1D6343F248D43E8816FBE5D
                  8E632BA8A37C37A4DEF5283D88D8824D343462B277EF13087E7F7A8C28823481
                  7C901B3111B1113152F1DBF126C410F58434045A224C8D0A6814B48A2F53C450
                  DFD50B22488EE06B71B51B31F79A0DEBC2B7DDA6EA1604EF1BBB46D9DA3D118A
                  6CD935C2C26C64DE3DB97839E69CFAF437541154DF2E921A42BFFDD1D7DEA5A7
                  1B65845DBA09258A29624801DEFAC863CCF3DA4E4D2EEFA6B2CF1CFCFEFB3DB6
                  D69D5812765F1A21585F21869ED5EBAC64630B616E54D06F1B7A5ED87C9EA781
                  91AE966BE8457056383F5FBB75CD9A7B1EDF129F5505C788B14B2C78B815D38A
                  06110A5E9FEA3EC27C7BDFD983BA204C4D13FC478FCFC23B8D78AF91D7A74412
                  45C460CCD865C9CD6C1DBABA03478FF715D94E13A8EC8B21162226F2D86884F7
                  26492BA019D00E68883035554093A04DD0283E5310630C8E4D10411E2CF2F29B
                  EDDDCB56E1D57A555BC27D873FE96DEBD82D72C38152BAF126F2910DE750CA30
                  E7F8C9BF849292544F43A506FF57273AD97AF4B5619ACD101B42B420F2809E5A
                  A63CCC463D35EFAEB762BA5EEC46A0BA93DB7FF0C38FACCD5A45AE623342F042
                  BDC0966E0A0CEE8D9BFE261B1B0873A3827EDBDEBD68B989771C3023921E1BCA
                  284DDE86A86E399F9C620A5EB818D3F352CE91E36658AAD6BD7CA389E237E245
                  F17D0897A57A3DE6DBF6DA47A813C2D4340175D4D6B243242862C646EFBC6A41
                  D44D1C89C351B2EE7D6DFE2F4EA8DAFD1F0D887D888188853C261AA4AC50CFA1
                  19D08E88A5A9035A044D8236DDEC99E5D80551104EB16083CAF34BB14145D55A
                  9CFFA34F3ADABBF672F31E2ACE81E85DF0A86062E79163E8E88BC1EFBE57FD42
                  416A089C3ED3C23168C43F3CC0C3314ADFCE28848F7215E6A30A5BC7AE7EFF7B
                  FB078B6CA60954670AF9F6BD739CBF58810D344611C34CB999A5DCC3CCFBD2D6
                  DFC9C6CAC2DCA8A0DFF674CD5F68C3A6112E58E9393B8051020223F9C5316A82
                  2D9C6452B5033C0514FCC65BAAD70F997215D47FAD0DDFC68CCDBDD999F9A12A
                  CCB366C371D40D616A9AE07BE7FDC1F6EE7DFCBCAC78475CE7FA955652AC32E5
                  A758D57FE83F8831229B6902621E621FEFF022161AA00DF273F0146FA015D00C
                  616AAA8006418BA049FCBCA452DA2A78D38208428551895DCF3E87C391AAAEAE
                  0A7CFE654B7BEF41266C05E78BFC7A4F2B2208A2B74C4EB0F71B7A51AB9732C2
                  A17003F7FC45E7B983208A1971EA0665834052B40C738C18EBA600D35D642F4D
                  A0BAF2A0F7ADBD27CC0FD7E4E7FA0CD108A91EE28618BCE5E8DDB6E31CD95841
                  981B15CCE91CEC9C3DD7C52F6988E7B67F048EEC0568A4F8940B36087354C135
                  65C6104B9DC61E7E24036BFB06F0018F27A52A32F78AD531EDA64D0DA19F7FED
                  EE9CF894DBFC60F948A0443EF5CE6B2C84AD987120B1E207D1A7CD3EEFFFE63B
                  D5B316A981BF5841318FD72323CC18A0A387FA488446402B84A9A902DA030D82
                  16F158AB94B64AA649107925C67541C5CB32E78C39D8F6ABAA67173875BAB663
                  F8D83F70A593519E0E41CF0BD305F6EE7DCDBEF70FB611A6A609541E55DCEB37
                  BE8E736470147AAABA7700D4101513F3F738004B01CA31E1A9B7C3C9164DDE37
                  A43279D8BB75FB393CA2CB37D0E8DE2102C9FF7767E5CB00BEF73FF88A6C54FF
                  6285C3F9A473F2B4105F378EA7180AE29B2847D8005B8459AAE07EF6F9AEB6C6
                  2DEC1829F2356F85F4E34AD43B3192733FBF049D124D5ECA603E4F6BF7B3CFBD
                  0D41C14614A3BCE31A95280F6C9EC94A31B64275E65AB4FC75C41491AD340131
                  0EB10E310FB1CF1031185A409A006D804608535305954721680F34885FCC90C6
                  7CA44D1041384D1C38764E78EA2C054E5517AC86FEB98879EB334823D20814D2
                  8E27D14050F9C829B62EBDBCDEB7F669321A02BC5BB6F526278730D2BABC8B52
                  C906231015133D690AB4B6C7BB33CF8A354F53A5D3645B3CA5D3C8B379CB7988
                  2CDF606584A044BEC025DDD6FA4D99FF934F0F918D3985B9A9023B1A8317FF9E
                  E318338199EEC9A6DF6C07DA1F7D1B36C016D814CB933FE4DFD6D6A6AD2EF175
                  3650E91BF124F243F1C054A81473CD9D8F8D439ACCD8A00E7B366E7EDAD6A35F
                  A49D1BFD561B8C0A7987B12473F41F12F2ACDDA86A1D4D0D10DB10E3B800C1E7
                  066887291A004D803608535305B4069AC363163448837CA45D104118848040FF
                  A5C0FF73F0FC0555BD1816083EE89C38F5ABE4120F456ED3504A3B9E24FB7963
                  C9558859DB3D11F0ED7B77983035CD085BED4D3C2BD7ECA7C0EBC6D677BE8ECA
                  A7AAC47795EC8917F17DAC21E426BBB2E7E737A338C74DFE24F4DBEF9ABD5C41
                  01A9AD7BD9AA24BE8B0D62A8779E41ACF7E12851AB0ECC7FFC73D5D7A3D1EFEE
                  089D3DBBC4DE7B201753BE455DCFFCE0DB64036C814DB00D360A73A3C2B36A7D
                  635B8BB67FF08E1A02A4DE3B0C293F91005982399F9A7189F9FD9ACCD800A14B
                  49DD5CB39EF9D852BD5EC0943D1F6FEB469932E6E58E76885898A73075D21EC1
                  72D4FBA17FFF6D22CC4F3310D310DB78BEB9AF0DD00E915FD20068013441989A
                  2AA031D01A5E5784F628A61D23B5114441FEEC0CD13E68F81FC1D3AA1F692CEC
                  9C3AEBA8B90C1E69A45E9B017A2BBC5266CDCBB075DBBB6BCF24616A9A4179BD
                  DD7FF47863C7A8091F595BB4E5533708C85C1C91EF78574EEC82E436E46658FF
                  B254A98D37C5FEF17F7214374168B2051EA0B43ABB162FB7F2FC6A30AD916622
                  F0604AF8DE6CCCD6A91B0B1CFB1C5351AA764BD3EFEE09FEF8E37A7B971E2CE9
                  DE1C949E41D686B90D34DA259B601B6C84ADC2ECA8F0AC5E57DBF658FB73BC6C
                  8C30B54FF9E1235F0ADC346AB086EC8ECEC2D43483CAE56ECF966D5D1CC346FF
                  60A9DF943A8245F8662ADD9634B0731853DF8805F98AF3FB6B5D33E7FC12FCE5
                  9719C2644D80588698C6D7D9A82D2ADA124F5259F325378AFDD000F24B61616A
                  AA80B64063F8E0059AA394F64D525341E48D928B62110CF393BDC78FABEAD950
                  41E471CD7EF63D7E9B06026651FDEF3F3561CA821A89B5494BE67965FB33C254
                  4D40F9CDE77BFB9D11CE69B3BFC3C1643C6182ABC178AF2D25B8A6FC576B225D
                  91B6E99EAC7C53061AA073ECC4B3DE4D5B66916DAADEC1548B90C339907AB91E
                  8C0AF92E362374780A5143BC87C4B07B3FE6FFE6245EAC50359AA2DF65F67FF1
                  E56BB6361DF92BF991B254485F2FC216B209B6C146D80A9B85F951E1DDF0E243
                  B6769DBFE3EF5BA21DEBEDABC264076653A81DD268C0133C776EA030551350D9
                  94F36C79E569C7E827CF5AEA36A6EF45EECA4CCE27464E57B4154D7965DAD431
                  4BBA33131728DCC48298E07D73CF30B24D9538A80562186219177ECC04A447BE
                  62211E58871852CC47ECA7FCE611A6A60A680AB4051A931E235C6D05118481D8
                  B594A300B3F7EAE7F41FFE58D5ABF554200FB8172E79DD5CBEAA31A6D4F07D88
                  22CE48D569CCDC6BD7AF88656D460D28CF79FD870E0F764E9EB6DCDAACF56F96
                  8AD52381083D556CD0C09678101558C94635C4DFA6A401BFF07423E9D96974E4
                  9A39F72BDFBEF7A6912D4584599A2164368DC3668F241A89F12930038C3A78AF
                  927CEAE83784057FF9759130352AA87C72F98F7CF60E1FD9430C0B28A46F1492
                  6DB011B6C266D82EB21115BEBDEF16B33DD1FD18EFBDA3AEE8DD0EB91D546FEF
                  CDCE1C7D0785025F7D3D4E98AA19A87C8AF93E3830C93160D8066BF3D67673E9
                  8A919913E41FBCB20D29D978235ED9594A49034C4997EA22CEBB629ADB3D6FE1
                  FBFE838706232608B33401621662176258A4DE921D0688AD88F188F588F994E7
                  0784B9A9025A024DE1B10431321DF2A1BD208230941C8EDD51B6277AF8BDFBDE
                  ED2FF2942AA860EE77AF58B3C952AD1EF5647029B8CECE13DFC654062E68762D
                  E60F6F6AF652C695081E3996DDFFDEFEA79CB39FFDCED6A26DB2B5517386ADE2
                  FCAD45F458610F35268CB2B0188E69D6C83A40B1CB8D97FF6F9866C22D2B188D
                  51E5E73BEA72156678F5C05AB709B3367DCCEEE837F87BCF966D4B02DF9F2E47
                  F951F59658AC0825996638468E0B6363000F2CBA8F3628B052D924DD4F623862
                  0C0BFE797EB630352AA88C0AF90F1CFA08A3F9CB4145E91B46227C0F51C4D568
                  643BF220B21315C18F3E2EE8E8D6E780D9286BFBA83B548F318B627BA2673870
                  E21B4DA712AF84FFED7DF9FC6FED5BEE183BF17BEA50D8ADF59A3073D1329175
                  62B425D8839B626874C3DB1ADA1CEA37FE0DFF3B46B429ED10B32262B3081FCD
                  5010373F5881591B34C7BDD0C9CE8953BFF36D7D7572E8CFF325C93FAA442116
                  205621662176F14D27B043F7788A99B75C0C311EB19E6C54F5B83634045AC22F
                  BC4079A7533ED247105388009E8544F1B10ECCF7D63E55AFD6C389EE751B975B
                  EB3D121145A3F468A8629B6904E75EB8143D1ACDD6D79440E9D70E1C3A3CDAD6
                  A1CB74D753334E3BFA0FFED9FC70AD1F938B96B980753ED8612E5F8D9F4BE21B
                  928878359CFF6F15AA5165ABCBCCF85DB9877FB175ED75964681E76C6D3BCFF1
                  BEB0790CA5ADC9F1891B013DD2D0C58B0BEDB8A41B237DF4888DE03F742428A0
                  3AA7CE0A869393558F32A8BC8AFBDEDB7F1C37A998B06668E491E1B5C448916C
                  E6B7C0501E901791ADA820D1C9E5E83DF06DDC6B698CA35144883C3AD9AD3B31
                  FFE75F2E547B75E4CD026DC5FBCAF631B6D68FCF411BB277EDFD33B5A933C925
                  CB5B71DB0FDA5AA41D3E7C453BACC2FF374B85EACC5ABD3E3357A2B65AA1DA19
                  C78021E7D0966D1DBA4EF7EF7B7F34DAB8F84CBA80D2CF8C588558C145D9006D
                  90FB8F623A623B623CD9A86A7001ED8086404B783C514A5F23A6AF20221051A3
                  4CBA2F72FFA577CB2BAA7A76A8E8DED7773E637DA4254BC6D663A5B4E34D8C30
                  B0BEF950153C1F85396FD5D35069017D2707B190BD679F3CD6CE3DCBFB76ED9D
                  EB59B966A56BDEF32B9CD366ADB0B5EDB4C2D6B2FD0AE7F8492BC8AE15AEE716
                  AFA0DED42ADF07879EB2F71F5C24ECB0E5A3BF2F20924B57D077EE0AFC786EAD
                  BDD7007EDECB1023290AA47C449D233F733FBBC01B763A55BF0A40F9A9E07B63
                  D76973B9CAFCC9A274B98A2DBD4936C376E40179419E44F6A2827E9BC93E60D8
                  361C78E69782EB1D5441D880B5FD96ED99FFC8D1B5A873C2DC74057DA740D866
                  2968AD56379763E2D4BABE37DF5A4882B3126D0E6D0F6D106D116D126DD3B364
                  C50AFF071FAE0ABCFFC1286BC326B9E8EF0B127388E4D215F49D5C885188553C
                  66E93D3B93428AE588E988EDAAEFC126CD80764043A025E95D07D35710419101
                  8C16300DE859FFC20291D7A8F0EEDA3BC9F6689B00367E5C97AE4EE4B7696057
                  D4CC399F52C5D3E452F04400954596C0975FBD6AEFDC831F72BF3CBDA437B1FE
                  44C2EC5AB4CCC25858D57A3640F9A9E579F1A50BFCC58A7BB31927A8DC0CD199
                  A33C60F396E7C5CD17903791CDA8A0DFDEE51C32721D463D7C6A5029FD781323
                  0D4C073769C97CBBDE7A15754F987BCB83CAA2186213DFB59FC65B5BB4246238
                  623962BA30352AA015D00C3ED38474E2D0214B7F410491115462DC7F5AAB2173
                  AF58BB861C77BBC877AAF0BEF5F628EB631D22978223C8C6A150A291CF63172F
                  C79C93A67D1966AC8C30F59605F93287FF8BAF76D95AB5FF4F0CF5F6137628C2
                  4F45CB32F7E2E597C846D553C5F4DB66EE35EBFE4D260131D265C76922E5815F
                  B8407942DE904791DDA8A0DFFECF3164E44273A51A9175EB38F4D45325BE2DA6
                  83AD759A30EF6B3B77A10E0A736F5920162126F1B3BEA8FB4A65174FC24F140B
                  10BBAD8FB5F722960B535305F9F2766804B482D759CC34C5A9BEC54710AF2017
                  C5EAF5987BF9EA6D947155E7A47CEF7CD0DBF6783727EFF160934911036CD010
                  A356C79827BF0F994CAA2F814E34900FF3F93FFAF8034BBD47222F565C5B567A
                  10B7F6DF9F33F262C5BA173022527DB0997EDBD6BD64B9D984A30746583BD392
                  94173E7D8CABD1288FC8ABC8B62A38478C9D6EAE568F25A3EEC73148DD90F47D
                  6C92B256ACC1BCDB5EFB007551987ACB013108B108E5C26393DE331A585EA058
                  8D988DD8ED7B67BFDA172BEE8136F0357B88A152DAE9C8B80B226F4459F3304B
                  856AB8AFF05D2A80ACA22C5285FFF027ED6D3DFB5A22BB16D367CB6D4C842862
                  2719F5981DC346FDE13FF18DAA8B081209E4BBA2BE77DEFB1C1B7DF85B864698
                  56241BF83B782486DE575F3B4B365615E646050B87BAB9162E7163572F7CAB7B
                  1D4B0F529E78DE288FC82BF22CB2AF0ACE0953C652CF3D8C3559BC17A97B19E1
                  507BA65CFCCE5DCFDA8DB84FB9A830F59601620F625064872BF956EF76883A86
                  5DEF14AB6D3DFB5910BB85A9A9025A004D80364023F4A85BFA0862A1922CE981
                  9C2CB96C65E69CFDCCC75410AA0E65067EFCA9997DE0F00B91A76F0CB0C88F8A
                  0771267BEC7D06FDE3FFE22B4D9E64C908209F55F2ECD8F93D76B39AE04BBD47
                  ED827829DD5CA9267635E3E1E772C2DCA8089BCDC35CB3E706D1A3E51B11F4AE
                  5BE949042C1C1BA0BC22CFC8BB28065570CE98D3DF52BFA997774CD379D79F2A
                  4214292FD811EB59B2F27BD44D616AC2033107B1277276996804318430933D8E
                  81C3CF23660B53530534005A004DE0DA202E9950FC463A32FE829842721C1A25
                  16FA9D53667CC65C1E553DBBD0F9BFEB39868FFDD584348CB29D18959168EBDA
                  DB14F8EA84EA8D1B19155479AB7B366F3D8B6DE7FC5578BD7D00628DFADEEC0C
                  E7C6FC070E61C35309616E5484FEBD34D1F9E45361FE1202CE6F1A213FE94DCA
                  233F8A427946DE5106A23854C135736E176BE3E64E7E9184113650213FD9F233
                  7389F2CCFDECF39819A82E4C4D5820D620E6A4C41FDDEB2DBE4F3119B1D9317C
                  CCAFE10B17EB0A53530562BF73CAF4CFA0057AEF8AD54F104188220EB1D2FFED
                  1C37E954E8C2DFAACE49852C962ACEB14FFEC05F8F8028EADD2B02B1784C79B1
                  3DDEDDEE3FFE652F616AC281024D0312C33FF9FB72100FA5B2D0814910C3471E
                  63FEFD070F928D0585B95111FCEDF7798E2123B9981A65D356DC88BCA2DEE216
                  182A039485281655703D33BFA5B5592B336E3EE2174018A0EC52A6BA5DCF3CF7
                  27EAAA3035E1E03FFE452FC41AC41CA37448F881F9626519C5E63321B345D552
                  05623E623F3480E745E758AEAF20821045D1BB718C1AF76BE0CFF3AADE40C308
                  807A1527E000231424ECE7975763DEBCDD137EDFBE77470A53130654E6AD3C6B
                  3624F3209A8946864AE5106FA2FEDC9F93D9F062C5972776938DAA1EAA0602A7
                  CFACB4F5EA1FD90C64840B04F420F24C794719A02C5026A27854C13D6F612D5B
                  8B767FF33A61984B18A8939CA32073CF9A9B1C3625B712A6260C7CFBDE1B696B
                  D7D9CFF75318A123821DDDD8EC8887C4C73C89C79D55CDCE20D623E6739F4103
                  0C30B0B98DEF1653F887B81205C2AF462ACE1C83865F0C9C3CD9549459AAA082
                  CFE39A36FBB0B94439634C75E1FB080C0F50806ED12EEC7979DB14616A864738
                  E0EFEA7A6EB1838FE8A9211AA2AC3132792017B3B6E9C80227BFDD4AF5E13E61
                  6EAAA0DFDD19F8FADB17EDDD7A472E7336C2E6103D29CA3229532E863241D9A0
                  8C4471458577FD0B956D8FB5FFF1F215667A97253A49D84D9B351F2EAD77842E
                  5CEC2A4CCDF0404C416CE1175F18A1ACE9FB5CCC480C6D5D7A1E0EFDF287BAFD
                  2014E311EB11F379EC3742FB232DBC8D576223A8331651B1189BAF28B3F71D9C
                  1CF8EA1B55E7C6A8E1E670CD9DF7B6A57C557E83052F583D0B17DFC67A56E6DC
                  CCDAB019F36C7A79BED69782C71B61AB75A86BDAAC4032DE8FC35668BDEB0ABE
                  4F75163B5B1D3DFAB2C04F6757533D50FD7C53E0F32F5EA7513C8D2C731863BA
                  C92844678ECA04658332425989628B0AFFBEF72A53800BF2CE9211E249111245
                  0AB4B8C3D331605820F8F32F4385A919128821882588297CDDDE08C75E404C51
                  97AA808ED4DBFEC31FAB3A0B8AD88E188F581FB9014921DD7852C41368E16DF6
                  3E03CD7CC88B8CE97D351539D894970CA3D19EBD6B6FBBEFD3E3AA7A76D4701F
                  703DBFF44DCBC3B5F8B9A494B4AE4B3F9E445EB2E4E597827B366E5E41366AF2
                  EA7CBC1132278F733E398525F333A091A96DC5FCC68B5479F92EB63B1E60F6C8
                  BAD742B5654BBFCB16F8F244E4C58AFB7346A64995BE114FA23C31DD848EA9DE
                  650B5299A06C5046812FBFC24B19AA2E7FA7DFDD19FCE5D7E7ED434772DFF05D
                  E07A8B22CA13F9A17668EFD59F057FFC49F39732E201D46FC4107E49376E6D31
                  423D212661FF46994ACCD17BE09BE17367555D4E8E988ED8CE3774E10927BDF3
                  821DCA7CC9ED41062DBC2D7829A9B673DCA4AFF91B689876D4BB12E3FB29D38E
                  1DBA047C7BDF51F5061A1AA47BDD0B9B71BB4152CA553F7A13859D2D5FE466F7
                  A5AB5E221B554DE91905A15F7E9BE51C3D814F4B1AE2215CFA3E3F724375C339
                  61320B9DBFA0FAD5032AFB82BE831F1EB7D46EC492EECA6C8CA002718710A2CE
                  63879D51368851D9A08C2CB51B32DFC143B8145CF526A5D0F9F333E01BF82865
                  6F80E237E249D41B4C0777EDCD029F7E364B989A21809881D8C15F00C20E4CBD
                  072D29A4011476993B068FC48B15EA2EE9A6588E98CE8F696166C6005A93B231
                  9034F09BE02553E42C3965A88873EAAC237C2D0E57FEE85D8951501045DC72D0
                  A25DD0B3FD0D553D3BCAC7FF3C2FBEB4D48A57B031A231CAFA280934CEEBB99E
                  5B822BA6D2F5A50CAD40BDE9257CF72546DC7CF4A290B778135360D4109DD366
                  05C23EEF18616A54509997F4EE79FB94B96A1D9674078921D232401D8F6C312F
                  4D9DA595E7BC3BDE38672E5B393272D5DB36F17D9415CA0C65873214C51915F0
                  0D7CC4679DB03E746DFA7A904F075327BB6357E63F78688930D5D040AC40CCE0
                  677D8D3232C49579E45373E55ACC316CF452B5CB419EED3BC72196F3B86C0431
                  445C26AD83E639A7CE3C42657DF57BB0F43F14703D3DEF034B396A945807504A
                  249E84F3B116470A6E69DC22ECD9F2AAEAF7EBBC9BB7CCB13669417F4B3D6E83
                  6C98403EF020A673CE3CDCCE9353986A38906D77047E3CBBCEDEB37FE4F92D9C
                  33D3BBFC201E183D514372CD9CE361E1F060616E54507E2A7BB6BD76C65CBE4A
                  64672CF2A2677EC4F7931EC8CDCC652A33F7CAB55F938DF941EFAE3D27F07417
                  3F026284B740892833941DCA1065298A352AE023F88A0B911146BEC80F6CC19B
                  8A2DDB31DF810FD7A1AE0B730D07B22D2762057F305D8C627425CA0F038C3C24
                  86556B33C788717384A95181D88D18CEF36190B54F681CB40E9A4765ADFC1A10
                  FD430EF7A265BB2D956B469E5D3280E1BC5142141B3463DE97B62E54DD2379F9
                  9571D6C7DA47A64F0B1437488F84468AE891CC7A0607C7554F43C50B64D33DC1
                  93DFEEB0B5EEC892EECC145963D3BB0E60DA190D297F314675D341367612E646
                  05FDB68A67F3CBE7F9815FF44C8D1094714BD33DD9780FDBBB79EB31B2F1F2C3
                  BDA813FE0F0F1FB3346CC6926E7FC018C1039D11D45B2A439425CA54981B15F0
                  157C06DF711F1A61BA8FCA14CF61E1B16CDFBE7776908DAA370EC50BA8078811
                  91193B038C0CF17D0C4E68C48F754CE7D889AA67EC10B311BBB9FFF5CE07081B
                  2086A471D03AB231F58D40F483FB3CABD66DE5C374EC2834422688A6CC7999B5
                  7623E6DEB86983DA4AEC7B73CF105B9BC703FC061223047704174C93157C9039
                  264EFD2E64B19412A6EA0E548CC0D1CFDEB5356FCD4C771A645A51ACC162CAD6
                  BD624D12D918CB0B0D2D3DEB3626E1826F3E4231483DC6D106FE60EF1BBBD033
                  BDAE31E27FF31FFFE2035C32C09F9D524823EEA4B24319A22C3D1B5E841F1A0B
                  73A3023E83EFE04343AC81A11E203F340AB7D4ACCF7CDB5FC38C8D615ECA404C
                  406CE07B3AF894BA013A7110C3ECE4FFDA8D02AE2933870853530595E93DEE0D
                  2F6E44CCE6D3BD4A69C79BF03B6E33226D83C6918DEAF674D00FEF72AFDDB89A
                  3FBF016517895DF78178517C9B5FE25BB50E732D59B99D6C54F5065AE0D047DD
                  EC9D7B7AF9356F4658E4E7231EB285FE6FC7F0B1BF04CF5FA8214CD50D5496F9
                  7D6FBF73C4DAA0294BBA2B4BA48CF42E27FA3EF777C9F29819F89D6C54750D14
                  808A4EBDBFAFB05125C94857CB516FDFDAE851E6DFFBEE6BB051987B1DF06FC1
                  53A75EC37A175FBE30C86E581ED830525FB6C24E36C6F2B6645DF890BF2D8969
                  7823F8A3082E81CFC9470A9E0D2F600D29BF30573720162026C03E1E238CD079
                  C847758FE2A6B56133AF6BCE3C5517C1535966A118FD2A6275C4DF222DA56FC4
                  83E2DB7CA611CF0F92B6918DB13F2CED59BB71013FF7824CE93D7D9392290A70
                  E687AA32D7BCE7F750A654ADC5E1B6757BAF010EFE9C0F16FAF5CC0788EF635B
                  7A8192CC3E68F8C5D05FE76B0B53E30E0402EF5B7BBFB0D6692C76932AD81B4F
                  8ACD3B7C5A91FCEC7D75C7AF64A3AADB8B005474C7C0119BCC251E0AF31EB611
                  7C0D31A436646DD69AF9F6BC8DDDC651DF02C56F025F7FFD92BD4B2FFE18AE21
                  A6AFE9FB10759C1F732D581460C1605F616E54C087F0257C0ADF46D2BB26FD78
                  93E7271FB354A88EB5DC2FC846DD4431F4D75FB5100BF85B93FC6C9ECEBE06F1
                  7C536E12C3471E73B8E72F54FB62454EC466F8196740793A7AE605DF4E697F38
                  174E9A264CBD3978B66C9F616DFAD87FE7B6F476149F76A4512BF5FE5D33E71C
                  2207A87A032DF0DDA9C68E4123FEE553A7063AF3854AE7E83724C97FF2E423C2
                  D4B881CAEE41DF9EBDA7CD156BB0E4949900BD497EC1CE564B8DFACCB77BEF69
                  B251F503CCF4DBFB1D7D06EDC253403CA828A51F4F8AE9AE24EC6E6CD389F93F
                  F870A9305535823F9E5DEAE8373872BE964667469842E3B715E1E8CB94192C64
                  36ABBEA210BE844FE15BBE7BD9086D10445DA1D1AB67E55AD4B70785B97183FF
                  DB938F908F2FF1F3A806990DE09BE9F297C02EFF7FDDCB57AA9A22A7B2CB8798
                  1C79589BE28911A67BA93CF9B95AD230689930356DF0BDBB7F1435687E0B8521
                  EECEE3D38E54E0C5F16AFD54F4EC54ADC585CFFD8CBBF3FEE03D06A38822CED5
                  D148C6DE7BA0DDBFFF4047616ABA83CAAC9A77FB1B7F249378F0CE8E926D7127
                  055B1AA55AEA3661FEC31FC776FEEDFB5339EC3DFA1E36172F1BA91B7AFB161D
                  376A8CB823D4DEA91BF31F3DAE7A57DEB508FD757E8E63E8A8C8DAAE119EF841
                  DE484492EECEC61CE326B1F0A54B9384A951019FC2B7F0716446C2006D90C8A7
                  A6A9CEB8172DFB036D43989BEE409BB7F71968E7B31958D251B02DDEE42F9814
                  2C8E4EDC1F9EE5ABD5DE2D5D0AB198BFD68FF66780E9DECB774B937641C384A9
                  DAC07FF893FED4B03D7C83022F300523E24971BB8E1917CA8E9DF87DC8E1A828
                  4C4D15A1DF7F2F43BFFF0EE7BF0C510111B8218A5489EC4FF4F492E3FA0953D3
                  0D54799B79366E4E4A2E4E3D390425BDC5437C9F6F856ED48CF93EFAE47DB251
                  F525DDDE9D7B8AD81FEF7ED48C8BDE8DD0D1C1F7A98D609A06C75782DF7E9FE6
                  3B6D4349A629CE0953585266EA941AE1EE478832A6D432E7C6B43F0B9E3DA7FA
                  A50CF8163E86AFB910213D03F88CEFE8A4CEB26BD63349CCE355BD81EB6681B6
                  8E36CF0504B148EF320031E0A1FFDADA3DFE9D6FFBEBAA6667107B1183118BF9
                  D9538ACDD7A51B6FA2FD915641B3A05DC2546DE1FFECF8E3B6EEFDACBC076104
                  07E2FBB923F3ED8E11E3CE864CA69AC2D454410DB2A863E2D4AFCC25C4FB5B46
                  C8071C48C1CEF658FBB06FEF3B6385A99A83F2DE8E7AC19157E121864699D6B8
                  373BB3B57D9CF98F1DDF4936AABA060A081CFCB0B8BD7DE7AF798F14A327BD7D
                  49E4418182AB63E8E840F0C7B3AA76E5A901F3F986389F7E368086CE2FD050F8
                  765C89B2462F3C138962EF012CF0F3B955E4BBA8EBA3007C0C5FC3E7FCDC25A6
                  0AF5F61D3AD9244E285FE7934FB9C3FF5E6A27CCD51C68E368EB7C9D0DF1D400
                  F51653C710355BC7AE5F79DFD8A5EE7DDA24534DC45E6EBF88C58A69C78BF83E
                  061854A6D02A689630357DE0FFE8E396F67E43CCE889479EECD0BB0010800A71
                  5BEC43469E0F7CFF83DAF9EEFCAE19738F2797ACC0927060DB08C2C0177F7333
                  6BD356CCBBFD0DCD5FCAA03C7771CD7FDEC32F3DC6062323545E4C2BFEDF7DFC
                  0691C0175FBE4A36AA3E2CED5DFF62195BDB4E3FF23A88A0A2F48D7812F9E1C7
                  0BF233E7F8C99EF0CFBFABDA95170BC23E7F37F7C2A51E041F3E5BA3B70F4174
                  68B2E466B66EBD58E0C71FB7900FD55EB47E077C6EEBD885D701638862291E4B
                  9248189D23C77B427FFFDD4598AB19D0B6D1C6F94511D4E68DD00E795D2A5696
                  D9BBF43C1EF8F853559B8B106B1173B1F186DF07AAF7262974682086D436A051
                  D02A616AFA22F0E5D7B51D8346FCCE8310174503AC698840443D5553E0E8B1B6
                  C2D454410D32AB6BC1E27DE6F2D5A8411BE0002C58B87444141B34679E175E7A
                  5E989A66842EFE33DC39E3E9000257A423A37F07C094B7184BBA2F1B55DEC12C
                  70EE97D5E1DB6E53FD2A8867F98ABAB6D61D2FF06DE14611436C8AA03C39274F
                  B7842CE6749B72A37ADBCCBD728D25F2A283017AE5203A36776666B80C23F0F9
                  177BC946555714C2E78173E7D6A00EA02EA04EE89E1F7C1F224FEDD031707820
                  70E2EBE1C2DC34036D1A6D9B8B21966D94BE1F67A20E99F16245AFFEFB98D399
                  55989A2A1063116B11732FDFC7AB9076DC88EF23AE512C803641A384A9F141F0
                  EFBF1F728C1CF713BFDB0E67660A19A040208A59F3E2D57A97EFC0819EC2D454
                  410DF71ECFF235AF5A7011815843504C3FCE844063E3817BC5AA35C2D49B46C8
                  6C9EE89C342DB2F3CB0801143D498C52EFCFC91CC346B1D0A54BCF095355C1F5
                  CC73CD6D8FB6B55CEE90297D239E44870C3D640AA2AE69B32F3287BD913035DD
                  40F5B6917BD5DA8BFC816C23DC3F2C4424E98E4CCCDABC0DF37F7A14170FA87A
                  1B0F401D405DE01BBCF81AA9C237E249E487C419656BEF3B8851809D284CBD69
                  A02DF3CD444639A80E621F46B987997DE030CCCEA8BBF084622B622C8F974610
                  43D21EAE41A445D02468933035BE08FD7BA9B473FC9453C945CA18A8515225A6
                  C06F6DFB78C0FBE6EE41C2D4544115E17FEE55EBD6F15B15B0C06D84971D20CC
                  E4644B8D7AB8A5E565B2F16E616E4C08279BE738468C8D5418545E23F8884419
                  53348EF19358D86A8D696AD83D67FE1396C68FBAF82897EF7856F8463C89C688
                  BA5FA43473CD5DF0270B852237E6C7015427EA7837BDFCA7B94C451A71607314
                  05263DFD8B6F63DA9FDF02D380F9F6BD1BD31585A80BA8137CFACE101D37FA3E
                  75BA10136C9D7BB2C037276F6AA730DA2EDA30DA32DAB4513ADD8807E68AD598
                  73E070DCEBAAEA0935C454C456DEB9C6312003F828D2FECA306811344998AA0F
                  A8200B3B67CD396E2E53890C33C8B4232F24AAC42DDB31EFEEBDAA7B769EF52F
                  2EE6F7EE61A1DB08F920F2916285AACCBD68C55B54D69984A9AA103CFFF70A47
                  FF219183D01010BDF384B53E043A0A0ACEE9B319B3D986095355C135736E2F4B
                  BD4702A69C058C73151F0ECD93187A96AE3A47FE29274C8D1BF04DDF1B6F9E43
                  2F9FBFE481323142B9E0F84CE51ACCF7D6DE6FC8C6E2C2DCA8409D40DDE0C281
                  BA62803D0AE8782561D357EBC759E0B3E32B84A9AA80368BB68B366CA49121DA
                  10DE8F750E1FB358981A1588A588A988AD86888F64033407DA030DA2B22E2C4C
                  D51764484ED7BCE70E725144CF41C9F878133DD52C79F80615CF4BAF3C2D4C8D
                  0ACFD6ED4FDB1E69C9B793EB3F1520821BE5C35CF661BC947198CA3AEA3414FD
                  E6CEE0B7DF6FB675EB1BB98ACD20EB327CF19DEA876BEE7C77D862E923CC5505
                  E7C4A9C368041FE641123D6CBDF38305FCCCB998B97425E679F1E5AFA8CC55ED
                  CA4B0FE0DBFEFD07BEB254AD1B1168BDCB06C45961EA58E2B506EFABAF9D251B
                  AB0B73A30275037504750575C6087517750E1D4B5BB3D6CCFFC1C1CD6863C2DC
                  1B827E93076D166DF7F2630946C84B8E82CC5CAD0E738C1AAF3E2E520CE51B81
                  900F838C70513FA039D01E2A6B63BD2044063DE05AB078277A1DFC7A34850CC4
                  9D5C14698445A33EF7C64D4BC94675D3023BDE18636DD93EE27C3E2DA7732526
                  614E822DFC22826927C21EF70D832FE5F11EFF91A36FF2172BF06282114652F8
                  3E8EB7E01ECCC5CB9C64634CDBD99DA3C64FC785D87C0389111A23AF57B9199E
                  6AF2BEBCED23233446D8E0FFE8E38FACE8CCF15B6DC8EF4AB6C793E4777ED562
                  A90ACCB379CB5F64632C9782B7435DE1D37246391A559044F1EEACCC52B73189
                  FC1B6F928D375C73431B455B459BE56D57EFCE354875E2F28B15E3A7A87A4F94
                  F2F83FC44E3E738611AE41C4101A03AD81E6908DAA8F69C515BCF09E5FF2B219
                  C12BE55265BD2B322A01D962A9D180B9D76CD84836AADAD6EF7BE7FD41B60E9D
                  FD7CFAD408BD5434A8EC0598B95819E61837F1DBB0C35942987A1994B7CCFE4F
                  3FDB676DD126B239019557F740824B94B33333FDDF9E956B2C64E3A3C25C5570
                  8E9AB0C04AC2C37D6084C648E5C9EF45A4A0E87965C7DB949F6CC254DD015B7C
                  1F7DFC36767AF291A292FD3A9007D2E20FE112ED8B64A3EAADF0A82BA833A83B
                  A843BA6FDC136D89C7935A8DC8FFAFEE231BAFDB4D8BB689368AB6CAA77E8D30
                  D384F3A29826ADDBC4EF9A325DEDDE8A3B1033113B793CD7BB93857CA0FDA193
                  451A03AD211B550D72748567F5FAD5D8A092C46F41111951CA60BCC80B310FB3
                  54AAC15C0B97BC4E8578BF303555F80F1CEA6CEFD1CFC917F98DB00687EF6367
                  6581E2D84D75D67FE6ECE5DB79284F057C073FFCC4C29F5B2111D7DB5610E50E
                  612E559179B76DC70841F586135474C78871EBCDE5AB47661C8C208614D8528E
                  C4F876EFC58B15AAEA513C019B029F7FF19AAD4317124571259F01EA2DDFF840
                  7E742F5A66231B637929A30EEACEE52B068D52AFB3E767E60AD59877F32B9F90
                  8D971F98459B44DBE46FB0A2AD1AC15ECC72E52ECC6C8D5B385DD3677716A6A6
                  0AD423C44AC44C23EDA9C0681B0F11406384A919039E97B63E636DDC925F6C6C
                  88910AD63448A0B1F9C035673EE69C55BD81E63F7AACA5ADFF10139FAEC33933
                  A5B4E3493446D892AF28B30F1EF1AFFFE34F6B515E8AF9DEDBFF15DE7733CC1A
                  12116FFF991FAAC27CBBF6FC48369615451A15F4DB7B1C0386BC622E5745ECFA
                  554E3F6E447952C70E656B6DD292F9F71FDC44361AF9B5F53B02DF7DBFC9FE44
                  0F3EC577390FD7E62B9E4467824431296B5EE67A76819BB1B0EA2B0A51775087
                  509750A714D38F37D10E3152249B3C6B36620DB958F0CBAF6BD9078DF897DF02
                  85366A847688912109B3B5592B937BF95A55A373CA4B0EC448C44A7E9B156E81
                  524A3B9EA40E06EA0F964E3CABD73E234CCD58F0BEFEE634EBA36D22AFD6F3B5
                  38858CC693A8C47C21B632734E9BA5FA0DB4C02FBFD6770C1A7E01B7BF1B6683
                  0ABF6DA6000E0E9B3D1B37FF85F52C434D93A1F2E2C58AB7DF41B050BDCB307C
                  EE97CC8E9EFD77994B57E48BFFBCACF52C6F7C9B3A744954B6B6D69D58E0934F
                  17537E0C3F4D031B83E77E5E6CEF3B98EF903444BD852862B6857AF9CE27A704
                  42972EA97A791D401D425DE22F6560B4A9947EBC897688E9BBD295987BC1E2BF
                  284698218486B86B16C41427D55D5B8B36173C6BD7D71745992A1013111B1123
                  F9064983E403E77C2DD5EA31E75333A709533326BC7BF68DB475E812E40DC108
                  5308F83E7A6F25CA51E1CEF832E4741613A6A68AD09F7F56770C1DFD1B6F0498
                  C2D37B5D0014BD3F5EF171C650E937F1A4F02D3F87D6A019F3EE7BF72835B0BC
                  A208A3C2F7E12759ED5D7A1FE4AFDC1BA1878DEF53B9F27B56BBF466FECF8ECF
                  12A6661804FFF8739663D4F8C87DA158CF324299529D85A839474F08862D56D5
                  010E7509758A6FF0407E52D2BBF61BF1A4C80F27DA203AFE4ABF8B276113BFB0
                  E241666DD5E137EFBA8DAA76F82216222622361AE21C2888D84679B1D67D24E8
                  9A344DF55363868677F75BBDEC9D7B7A78CF4EEF85D9140A51733EF9D4196632
                  ABBBD5DD62A9E018F3E419FE4C1176BE19612A0134C86613942776B6E2ED31FF
                  FE839896CE258A2E2ABCEFBC5FD0FE44CFCFF8CD2B46E9385143C4061A47FF61
                  A1C0A9D31384A9190EA14B4913A8D71FC25A50E4CE4963043AECD4750C1AC182
                  BFFDB6201C0EABBAB60F750A750B758CEFA246C7D408F931421B04310A873017
                  2AC96C6D1E3FE359BFB98228BA5481188858C8CB13B15129ED78135A41C26C6D
                  D8CCE39A34BD97303531E0FFF4681B7BF7BE36DEF347660D10F0F8A8957A74CE
                  51E3FF0AFEF1572D616AAAA00659D83975D6D1643C750251D4FBE0B011287C69
                  BA330BB3B5EAC0025F9DC09674D59708785ED8FC90AD439753BC311A61F31288
                  514CF6FCCC3178A427FCFB9F0384A91916619F6F80EBE9673CFC5A345029CFF1
                  269531768FDAFB0CC4F3516BA8CEA8BD143C13EA18EA1AEA1C4FCB0875467746
                  9652D051B73FD1FD6870EF5E5507D511FB1003F98C1362A211CA121D0CAA1FD6
                  C62D6CDEE796B411A6261682DF7DFF88A3CF2073721E721AEFC5E85CF0E84DA1
                  02508FC8D17FA839F0C5574D85A9A9821A643ED7DCF907F83CBB816E9FD085F0
                  2189187F08F7891E2C78EA34369C443DB49C02F7AA75D5A827FB33174323D409
                  911F539EA298D2B386FFFDB7BB3035C383F9FDDD5DF39EB3E2CE473E0A304259
                  A3E3714F36BCB2C00227BFDD4A7547D5A5E0A863A86B97370E19A523A5234DB9
                  C8A7251E6234F03810FAF1C77CA2A85205621E621FEA038F8568870A69C78D29
                  ED8FC4D9DAB495D9BD64D523C2D4C444F0ECCFF51C43465CE40DC1480EA00A61
                  EFD6C7EE3FF685AA43E3D420B3BB162CDE6DA954D3388BFCF1664AD93D9093D9
                  07F247625750B9A87A0F0FF02C5B59DFDAA2ED9FB8862D722389C237E2497490
                  201424CCCE49534D61B325E17AA6E49F36EEA52B4DC82FBF6AD108ED8F825FD2
                  5D591936E0F93FFF02B30BAA5E5C405D439D43DD431DBC954511336FD8DCE3E8
                  3D703773D8543DAE8D588798C7EBBC11CA4EC4134C95DA5AB6BBE85EB2A29E30
                  35B111FCFBEF8ACEF1537EC6B0D8280FF49A0A14E7BB616D9DBABBFDEFA97E29
                  E301F7F2D5AF60F79391CEEAC48DE8D464CAC99C23C7B1E0AFBFC5B415DA3DFF
                  F9476DCD5A25618DC084279CF42E3B3CA584D13E09B36BE6337F33A7A3893035
                  E140F5B68967DDC6BF79BDC7AD3646580B2761C648CFDAA029F37DF4315ECA50
                  BD190B750F75107511755231FD44257C08317CA80A730C18FA0A629228965481
                  188758879887D86784D8C5A77B4913ECED3BFFEC5DB3E1F219EB5B02E4B862AE
                  194F9F30E37CA051CE9AE1AC4BF602CCD6AE73D8FBDA9B8385A9A982F271A77B
                  CD86D5D65A0D8DB5D126BD89CE0C8D309C1326B3D0C58B934471A8826BDAECCE
                  D606CD6C7CF11FBBF2F41EA56064282EA6773FBFE427F2A9EA7B37332A9047EF
                  EB3B7F4A2E5581254114751F2912E1877BB2455ECA78EBEDCF112384B951813A
                  88BAC8FD68940D2EE94D7E597E617E418073E0F0D58845A2385205621B625CE4
                  C9248388215F2E29C5EC4FF43CE17FED0DD57E4F289003733AA73F7D186B7186
                  D8D9848A81E9BB6CF919EE32F56E7F4D55A0C70E39EF8B2F3F6FA9D398FFAD62
                  DA8942044EBEDE5090B9A6CC08869DAEA1A21854C13971EA206BDD266EDE00B0
                  8BCC088D1167C91EACC03CCB569DA43AA96A575E220079F5BEB9FBA4A572CDC8
                  1956230809D5077EE0BD6A1DE679E3CD6FC946D56FDBA12EA24EA26EF278A2B7
                  C8A727F10E6DAE82CC52A93A730E1BF3BCDA5DBA8869FC9E66C42983B43F4C93
                  9A4B3EC46C9D7B1DF61D3C6CAC4BBAE30DAAF0D9DC73E67D60AE503D32656504
                  075145E15704357D8C79B76C7B56981A15EE45CB665AAAD5A39E172A1B051723
                  E4454B62344FC10A6BBFCE39F35C61B7BBAFC8BA2A38274E1B63A9D5D06BA87B
                  49218615AB33CF0B2F1DA3BAF8A030F59601F2EC7B6FFF316BBD2691E953BC05
                  AA545671269620F8D568DB7660C45E45981B15A893A89BA8A3F06DC2CDD820A6
                  506C41FEA8D310768E7E72A6C87A542096F1E32AB8DA1162A8947E3C89F6C7D7
                  3E2B62FF06A6C90D732FB0AEA082C8E25AB068A7B9520D960C512C6280857EFA
                  2FBFFFB4EE23CCF3E24BAAEFCD734D9E36D65ABB5128190DD2283D302D88E9AC
                  4C2486B90B31F78AD566F2597B916555A091E1CCC88B15D47337D2488446479E
                  AD3BF062C5E5FB286F3520EFFE8F8F7C6469D8CC5057FF71412B518E795EDEF6
                  27D95857981B15A89BA8A3A8ABA8B3093352449D454CA1D88218835823B21C15
                  886188657CAF8348EBBAF4E349F80447F04A5762F65EFD7732B7378B305502A0
                  4A7CA767D5BA972D55EA442AB1DE0EC3F789B8F60AD7A2B997AEDC4236AABABF
                  9246BCFD2D0D9ABA2E4F0B2AA59F91887B3CD1ABA48E0A35AC0B540EAAB742D3
                  6F6F778C1EBF903F0B460D39929EFE8D11C116EBBEDE3776EF261B55DD6B9BC8
                  401904BEF87237767AF21D9B46385F8B1909DC854C6DC8BD667D32D9D84A981B
                  15A8A3A8AB91CD52D8F0A6907E46239503620A620B628CC86AAAA072B803B10B
                  318C5FE127E29A62FA71241FE196AB82AB27F16285EA635AB714A860FEE7D9B8
                  79B9B56E9388286224A1A7F3C4B7B1506FA95C8BB9E63D8F973254EDE272CD5B
                  D8D9DAF85133CED318E23AA7341053D9D8C5E6DDB61DAFC2D716598C0AFAEDBD
                  8E4123D699CB578B1CB1318A3F7149778366CCB7EB2D9C7BBB57987BCB036511
                  387972ABAD7D67BEB925D908BB7FF9CC442E969CB31073CD5FE80A7BBDAA5E6B
                  0050575167517733FC79618A21FC6C1EC514C41691C55441F97F00310BB18B6F
                  36423A7AFB93885880650AC7D051CBC946C3DF0BAC3BDC1B36CDB1346B1571A2
                  1146585489B813F16AFDD3F3DE2327AA3A27E57A66415BEB232D2FF1690E235C
                  AE1C2B916FBC10420DCAFBCAF6D394EF8745D6A2827E7B9FBDEFA02DE6B2958D
                  715D18A6681054EEC6ABE76D98EFEDF7F036E60D1F78BD558132097C7372A3BD
                  7B1F66BA3373E45C98DE538EA83B3432423D72CE9C1B08D91D0385B951813A8B
                  BA8B3ACC5F6EC8806D10B1033104B1043145642D5550BEB352AC7A17318B7746
                  8D906FC4C11C0599A56A3DE61831768E3055420D3C3B5E9FCC5FFFC60615A3AC
                  3941144B5764AE99737069B5AA9732DCCF2DAE6F6BD1F63C0FC63823A5777051
                  CB22A5F90B0F96EAF59977EF3B5F527E4B8B2C4545F8E2BFD9ED3DFBEDC1CE4D
                  7E559F11022ACA9F463D78273070EC8B456A77E5DD8A40D9042F5C58443D78EA
                  4064155BE2750EA81829E2DC2B8DF49C139F0A87FEFD379697324AA30EA32EA3
                  4E67988D3622CFA8BB88218825224BA902B109310AB1CA306248311CBB7FCD35
                  1B32D7E4699385A912B1C0BD70E9606B9DC63EDE20950A39DE44C52281C66B0C
                  CEC9D34F85DCEE52C2D454E159BDEE615BEB8EE730E561CA08B769907D7CEDB4
                  667DE63FF0E161B5E20F843EFB3CBFBD5B9F43B842CA108114A472C73B7A78B1
                  22F0FDE90CF762855E082799222F6560CA12F556A96CE349D4A5BC45F8795FC7
                  D8892C74FEEFE9C2D4A8401D465D469DBEBC96A6F40DA390EC43AC40CC40EC40
                  0C115949158849884D8851885546C9276EA2422C77CD98A3EA7CB7C40DE09A3D
                  B7A7B5DE232E1335043EE4D6DBC1A8A8B8AAAD7069661FF3E4CF813FFEAC2C4C
                  4D15DECDAF94A5D1C9093376D0E24606233648D894AF78E4C69066AD98FFE867
                  7B2990E41659880ADFC10F4BDA9FE8718C3746238821BE8F5145CE42CC316098
                  3FF4FBEF6384A9122A11B6DBC738A7CDF4F38E9C11EA2DBE4FB6E03201FBE091
                  2CF8CB2F0B85A95181BA8C3A8DBACDEF3F35C21AA91261130EDC53AC40CC40EC
                  1059481588458849884D3C4619C15714B311BB11C311CB85A91269816BC6D31D
                  AD8D1FB5F25E2AF5980CE1681CFCCD5F8C39868CFA2D78E627551B4D7CAFBD51
                  DCDEB9E7E7C9C5CA19635DED4AC216AC55DC993932ADF8CDC9D72880A85A2B05
                  FCEF1D2867EBD0F56B3ECD6384113DEC400F3B5B7EF8C8173AFDE32061AA448C
                  601EEF20D7CCB93ED4595E6FF59E0207E15B1AE9D97BF667C173FCA50C553BC0
                  51A751B751C7F91AA9D1D6F6C9165EC61423102B103384E9A9023108B1083189
                  C726BDF384EF2356939F10BB11C385A9125AC0BD70E923B647DB5CC4D01BD4DD
                  E122E02667CBC7EC7D072751CF53D55184E02747F2D9BBF53D98FC60F9C8391C
                  A334464C2BE2D5811E7D59F0E4772F52E050BDFBD2BBE9E56AB6561D7EE22378
                  9489DE79C2767DEA6163FDC43166A23D7CFEC2E3C254899B4438187CDCFDDC62
                  3B2E55E0577EE9BD0E876314054AB22412356BBBC759E0C4D76FA8ADB3F81DEA
                  38EA3AEA3C0FDC4ADF8837D16E101328362046205608935305620F621062118F
                  497A7758281FBC334A75C5D6BCCD45C46E61AA8496F0BCBCAD96AD55C79FF9EB
                  084608BC10456A4CE8D1D9BAF5B1790F7EA8EAB03A63814CF6DE83F6E0767A43
                  E403E599390FB30F18CA427FFDB5840286EAADD0EE454B1BF18E4A9EA2C65833
                  844F480811B49D936724D3E84636468D40F5E211CFAAB5C97C1A1A07BC0D1078
                  B159E3D2EDF7336BF3D6CCFFF111EC0057F50E27EA38EA3AEA3CCF0B3A734ADF
                  8817858820262036204608535305620E620F1FBD43D88D2286549E14ABCF2166
                  0B5325D203FE5D7B2BD9DA75FE963B1E62A2E49478128D928B624166EBD0D5ED
                  7B77BFAA2DE12CC8EEA15EDD4BFC58825E538CB01D9517D38A838787C3172FC6
                  F462856BFAECD6B6262DCDBC876D84F518344671B9B3EBE97917C23E9FAA5D79
                  12EA414252DFB3E1850B666C9AC2661B253FC493A2CE253D901B8FC932FFFE03
                  87C846D52F65A0CEA3EEF3BB3D75EC9C220620162026203608F35205620D620E
                  7FBE096D50EFF607A20C29362346FB77EFBDB55EACD00BFE7DEF94B677EAFA45
                  72B1B2C6D8BC01A287998344B1ED133EEFBBFB4709535305B6B7DBFB0F5D61A9
                  583DFEB7B8E0060F6A48B8C5C339614A2864B13C29CC5205D79CF9DDAC0D9B3B
                  F8B6707EE05EE11BF124955B52A6DCCC5CB23C732F59FE2B05C5847FB1422FA0
                  6CBD6FBCF92B0E5727DD9B4DD91F3A109779F09732F6BD839732548B22EA3EDA
                  00DA0217176C7C53485F73A6B4756AFB88018805AA2FE9A61883588398A3FBE8
                  16445E108B2926DB2836FBF7EE2B234C958807BC7BDF2964EFD2EB307634F269
                  47234CDFE42F11B914BC455BE6DDF1C6346A94F70973538573D898E770A76612
                  7F8E45216DAD49658529455CE6EC9A39271872BA86085354C1356B4E7F6BFDA6
                  3EDE008C704694C86FD32131F4AC5E8F0B0464634C67A08CA90D9EE60F641BE1
                  AA45414C7F9AABD565DE5D7B4E918DD584B951813680B68036C1D748E3114FB0
                  064ADF42DB470C10A6A40AC414EF8E9DD3AC2DDA894BBA75BEFD09443CA1188C
                  588C988CD82CCC95882782DF9ECC61EFD1F7EDE4920F450E80EB5D31B828168F
                  1C006FF338F36CDCACFA9159E7A469537170981F2F494F91C1BDA4D81841233B
                  F782E7ADCCEFEF2E4C5005CF2B3B26587149B0D12E4CA854032F567C4601E396
                  BDA43BDE4059FB0E1CFA0CA3325E1F8C208A851FE41B6D2C35EA33FF91A307C8
                  C6FB85B95181B68036C12F00E01BF714D2D78AD476D0D6D1E6A9ED4F13264405
                  620A620BBF5A0F234303C43C1E7B2906231623260B5325F400B35B32D97B0FD8
                  C6DF54C4F481112A0805682B0568479F41AA2F23062C55EBCC8F87C8603465EB
                  3D9085FCFE988E22507079C0BBE5D5A3FC061ABC44A06759E3DB28EB4CB998B9
                  4A1D5C3A8EB5A3CCC25489380165EED9B2ED90B94AEDC89AA2F08BA2CFE24112
                  44AC239B8B9665DE4D2F1F8CB54EA04DA06DC4E5EE536AEB68F3E2D3AA809882
                  D862881B68F07DDC3E43B1173118B1589829A127A8D2DFE71C30EC4573F9AA2C
                  2965E4A2E39A16D621ACD5EA3247FFA1CD8589AA909CAFD868A5F4B42602867D
                  D00816B4D955DD8B98022E885B5F7D8FDF8F88CD2B7A3548F15D7EB55CED46CC
                  BBFDF53D520CF503CA1E3E802FF8D56857F828EEA4EF7241A43A4A75F55DB24D
                  F50811409B40DBE0F55B297DAD496D5E7C5A151053105BF85AA7527AF1203FF2
                  5282C75AC45CC45EC46061A28411400EB9DD316AFC525CE2ABF7EBFB970571C0
                  B0478579AA407F3BF1DAB4D2835C10070C63C17F2FC5743E0FC105414657414C
                  11435C20D0A4252EE97E95EC929774EB0CF800BE804FE09B2B7D15575E2D8838
                  86A1EA759A14A04DA06DC44D10A9CD8B4FAB02628AEE8208D2F7116B1173117B
                  857912468373FC94A72D55A9C2605E3B0ED38F4A4C6041D47F8498BF38BFB6CB
                  FA685B16F8F8D3F5B2311A07F0057C02DFC047BAEC7E948298BEA4988AD88A18
                  8B582BCC923032C8514F5A6AD4F7F333317CFA34BE815B0A623A119B1DB290ED
                  4FF460FE63C71708B3240C06F8063EE2EB703896A3E4CBF4A214C4F421DA3A62
                  29C554C456C458619244468073ECC4C1D6BA4DFC7CA418E7DD5852103526BE83
                  CB0F32E566F61EFD58E0C867AA5F3990D007F0117CC58F64C4F3D0387D470AA2
                  C684EFB07B9E6229622A62AB30472223C1F1D4CC6E96064D1DBCF2C4B1514A41
                  D490298D1136F71BC282DF7E375C98236170C057F019AF2BF1EA94D237F03D29
                  881A113E436794BE87588A982A4C91C88870CD5FF898F591C792F91565711245
                  29881A511CF8C50D228E21A302A19F7FED234C91C82080CF9CE43B7E0B0C9630
                  D2FBC0BB1444ED88B244CC24BF218622960A332432325CCF2F6D626BD1E61F13
                  EEDBCC93FE6B1A52103520D24600CD559839C74E7287CEFFDD59982191C1103A
                  7FB1337CC8DF53844FD3B9DE4841D488B8B09F6226622762A830412211E05DBB
                  BE86B569EB9F920B52634CE7DDA752103520BFF0FC41E69C3AEBDF902939A6F3
                  9C12C6037C085FF2F6C77DABE0732D2805511BF218F92043CC44EC149F974824
                  B897AF9A68A9D530DD77BE49414C2311D470E1F1C3B5FFF27D70B0A1F8BC4406
                  077C099FA6EB2D2B5210B521C548C44AC44CF169894483E7C5CD332DF51E9182
                  68744104B1D694A7C8A7BFDC765B4C014DC2B8802FE1D3745D479482A80D2188
                  142B1133C5A725120D9E35EB6759EA34968298110431C213143CF38BCF4B6470
                  C097DCA7CABED6865210B5210491622562A6F8B444A2410A6284194A100B9694
                  829820802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992
                  AFB5A114446D280531F1210531422988127A00BE143E55F2B5369482A80DA520
                  263EA42046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5204A
                  E801F852F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A
                  1B4A41D4865210131F521023948228A107E04BE153255F6B432988DA500A62E2
                  430A6284521025F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2841E
                  802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992AFB5A1
                  14446D280531F1210531422988127A00BE143E55F2B5369482A80DA520263EA4
                  2046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5204AE801F8
                  52F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A1B4A41
                  D4865210131F521023948228A107E04BE153255F6B432988DA500A62E2430A62
                  84521025F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2841E802F85
                  4F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992AFB5A114446D
                  280531F1210531422988127A00BE143E55F2B5369482A80DA520263EA4204628
                  0551420FC097C2A74ABED6865210B5A114C4C48714C408A5204AE801F852F854
                  C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A1B4A41D48652
                  10131F521023948228A107E04BE153255F6B432988DA500A62E2430A62845210
                  25F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2841E802F854F957C
                  AD0DA5206A432988890F2988114A4194D003F0A5F0A992AFB5A114446D280531
                  F1210531422988127A00BE143E55F2B5369482A80DA520263EA4204628055142
                  0FC097C2A74ABED6865210B5A114C4C48714C408A5204AE801F852F854C9D7DA
                  500AA236948298F8908218A11444093D005F0A9F2AF95A1B4A41D4865210131F
                  521023948228A107E04BE153255F6B432988DA500A62E2430A6284521025F400
                  7C297CAAE46B6D2805511B4A414C7C48418C500AA2841E802F854F957CAD0DA5
                  206A432988890F2988114A4194D003F0A5F0A992AFB5A114446D280531F12105
                  31422988127A00BE143E55F2B5369482A80DA520263EA42046280551420FC097
                  C2A74ABED6865210B5A114C4C48714C408A5204AE801F852F854C9D7DA500AA2
                  36948298F8908218A11444093D005F0A9F2AF95A1B4A41D4865210131F521023
                  948228A107E04BE153255F6B432988DA500A62E2430A6284521025F4007C297C
                  AAE46B6D2805511B4A414C7C48418C500AA2841E802F854F957CAD0DA5206A43
                  2988890F2988114A4194D003F0A5F0A992AFB5A114446D280531F12105314229
                  88127A00BE143E55F2B5369482A80DA520263EA42046280551420FC097C2A74A
                  BED6865210B5A114C4C48714C408A5204AE801F852F854C9D7DA500AA2369482
                  98F8908218A11444093D005F0A9F2AF95A1B4A41D4865210131F521023948228
                  A107E04BE153255F6B432988DA500A62E2430A6284521025F4007C297CAAE46B
                  6D2805511B4A414C7C48418C500AA2841E802F854F957CAD0DA5206A43298889
                  0F2988114A4194D003F0A5F0A992AFB5A114446D280531F1210531422988127A
                  00BE143E55F2B5369482A80DA520263EA42046280551420FC097C2A74ABED686
                  5210B5A114C4C48714C408A5204AE801F852F854C9D7DA500AA236948298F890
                  8218A11444093D005F0A9F2AF95A1B4A41D4865210131F521023948228A107E0
                  4BE153255F6B432988DA500A62E2430A6284521025F4007C297CAAE46B6D2805
                  511B4A414C7C48418C500AA2841E802F854F957CAD0DA5206A432988890F2988
                  114A4194D003F0A5F0A992AFB5A114446D280531F1210531422988127A00BE14
                  3E55F2B5369482A80DA520263EA42046280551420FC097C2A74ABED6865210B5
                  A114C4C48714C408A5204AE801F852F854C9D7DA500AA236948298F8908218A1
                  1444093D005F0A9F2AF95A1B4A41D4865210131F521023948228A107E04BE153
                  255F6B432988DA500A62E2430A6284521025F4007C297CAAE46B6D2805511B4A
                  414C7C48418C500AA2841E802F854F957CAD0DA5206A432988890F2988114A41
                  94D003F0A5F0A992AFB5A114446D280531F1210531422988127A00BE143E55F2
                  B5369482A80DA520263EA42046280551420FC097C2A74ABED6865210B5A114C4
                  C48714C408A5204AE801F852F854C9D7DA500AA236948298F8908218A1144409
                  3D005F0A9F2AF95A1B4A41D4865210131F521023948228A107E04BE153255F6B
                  432988DA500A62E2430A6284521025F4007C297CAAE46B6D2805511B4A414C7C
                  48418C500AA2841E802F854F957CAD0DA5206A432988890F2988114A4194D003
                  F0A5F0A992AFB5A114446D280531F1210531422988127A00BE143E55F2B53694
                  82A80DA520263EA42046280551420FC097C2A74ABED6865210B5A114C4C48714
                  C408A5204AE801F852F854C9D7DA500AA236948298F8908218A11444093D005F
                  0A9F2AF95A1B4A41D4865210131F521023948228A107E04BE153255F6B432988
                  DA500A62E2430A6284521025F4007C297CAAE46B6D2805511B4A414C7C48418C
                  500AA2841E802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0
                  A992AFB5A114446D280531F1210531422988127A00BE143E55F2B5369482A80D
                  A520263EA42046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5
                  204AE801F852F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2A
                  F95A1B4A41D4865210131F521023948228A107E04BE153255F6B432988DA500A
                  62E2430A6284521025F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2
                  841E802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992AF
                  B5A114446D280531F1210531422988127A00BE143E55F2B5369482A80DA52026
                  3EA42046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5204AE8
                  01F852F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A1B
                  4A41D4865210131F521023948228A107E04BE153255F6B432988DA500A62E2C3
                  B37ADD0C4BCD062C395721969CAF58BAD1942D1FB356A9CD1CFD8736179F5605
                  FADB09D7A6951E3465CAC5ECFD8640103B894FAB020597FBBD5BB6BD6B2E5591
                  A7919CBFB862FA1AF22B623EF179890C0EF852F854C9D7DA90EA24EA26EA28EA
                  2AEAACF8BC2AA04DA06DF0FAAD94BEF69C203EAD0A8829882D88310A6969478A
                  9188958899E2D312890672EE024BED462C394F61965CA044BAD194A300B354E5
                  23C456E2D3AA403DB3195C6414D2D492A6CCB9997D208D10FFBED85D7C5A1528
                  B864F6BEB2E31017C42C79223D4985F43561A41C4ED1370A89CF4B6470C097DC
                  A7E959C7A94EA26E7241A4BA8A3A2B3EAF0A6813681B68238AE96B499403B579
                  F16955404C416C418C514C532B528C44AC44CC149F964834044F7C33DCB3FDB5
                  53EED5EB4FBAD76EFC26DDB872DD49CF2B3BCEF9DF79BFAEF8B42AB857AEEDEF
                  5EFFE2CF9446BADAE75ABEE65BDFFE03A7C20E474C23580A2EF7857E38B3C6B3
                  69CB39F7F2D58A696BC6752FFCE85EB361876BD9EADCE2F312191CF0257CCA7D
                  ABE473AD4875137514751575567C5E15D026D036D04614D3D68E27795BA7362F
                  3EAD0A8829882D88310A696A478A9188958899E2D31289066A1C77A08110EF8D
                  03EF27FE4F7C5A15E8F7B78BBF534A4F6BA21C62B20FA0BFB98B180F1BF18DBB
                  C567251204F0A9F0AD92CFB524BE7197F8AC6AD0DFFC8F18CF1871BBF8B42AD0
                  EF615F3CCA0F4439DC213E2D2121212121212121212121212121212121212121
                  2121212121212121212121212121212121212121212121212121212121212121
                  21212121212121212121212121212121212121212121212121C1C118CB7D13CC
                  45547DCF64381CFE3FFA7D76621EF1F76A99177F2B924917D037EE24E6BBE29B
                  D1883CE424DE2992880AFA6D16F1B746675E620E624CF72BDE0CF03DFBA8F139
                  DC8B9757F27FF4F124CFFA17673B878C9A61EFD46D86B9DCC33392731799915C
                  E8C119780D80337FF119D63A8D67D8BBF49EE11C3E768667F39619C1D3679EF5
                  BEFCCAC39E1736A33EC2FE98EF664D0BE87B9988B1D41D304F7AD76980BE833B
                  4395BE9F1A518E71BBBB92BE75CF15DF8E95A8AB594552A9827E974DFC5E299D
                  68CC190F7FDD08F4FD9BB11B7E449CBAAE7CE87F432C8AB5CE1620DE2392B80A
                  F4BFE37E68C48C5863BB21795BE0E4773FB896AD50CFC5CB7FF0AC7BE1B4EFCD
                  3DAADFD273CD5F94DBB574C57ED7F2556715D354E28285677C3BF79C2323D3F5
                  81D8B029A985EF9DF77E75CD5F7846D18E2BB97425F8937BC3A693BEB7F6B510
                  494445E0BBEFDF742F5F7D86CA40395D83D0BD7CD539D792E51FBBE62FAE204C
                  D714E4CBC6AE39F33B3B868C9AE77CF2A91F2CB51A9E3497A99C44FF65E66A75
                  1909217FB627B970A9C81334573E584AFFBFB97839662E5D897E5785FFDEDAA8
                  39B394AF7AD1DAA2DD29D7CCB967DC8B57BCE4DDBCB52B7DA7A8F864BA81BE71
                  8FFFA34F96B8D7BDF0AB6BE1122A3FAA1B0A657A15972C3FE35EB6EA27FFAEB7
                  96D3DFA7AB78539D6BEDD9FAEA19D7738BE8DBD16CA37FA7DF795F7BF3FBD0AF
                  BFA78BEFAF05E53FBBE7E557DE743DBF94DA9D8AB2BB8A2B7F702F5A7ACEBD72
                  CD31DFC18F9A8A24158172F66EDAF21E75BCCEB9636D7F0B979EF16C79F544E8
                  C2C58A22B9B881ECBE3BF0F1A773DDABD7FDE25ABC2C7A6CBA82EEC5CB4EBB16
                  2DFBC9F7D63B2FB064F3551DF7C0B7DF6FA0F8FD9BEB79D459E5BFBF9654CEE7
                  A9EE2A3E261EFAF3AF5ADE37761F732D5979D6E8F12D1ABDAFECF8E136CFA62D
                  9177B9D410412A672166A9508D39FA0C1A2CCA242AE8EF0A26E72F7141314D25
                  1628CE4C798A3073B1B2CCD177E06B54393289A43447F0975FBA3AFA0F61A67B
                  B229DB7225F311F192340563E7F031DD44125141057DCA5C94823C1EDE544AD7
                  482C50C24CAC294C4F33C8778D7DBBF62C738E9BF8BEAD53B7308DF2E83B548F
                  F02DBC6E4EE589B7E7F0E0A9297761964C7EE7FF76A518A610FF3BFDBB2957A1
                  C8EFEFCBC192F137F8B77C45597291D2CCF6C863CCD6BCF539E7E419AF78B7BE
                  DA87BE9F5398A22928DDFB5C339FD96D2E5D9199B2E68BB48D94324C85A6ECF9
                  99953A00DE9DBB5FA234627ABC361678B76EEF6D6DDC32F2D06D0151763722FD
                  BBE9815CCCD6AE33F31F3AAC99EF530389E153E808219EA82DBBCBC4EFF1C837
                  B5297B9F8147C2A9C4072AE3FFB99E9EF709DA1EEA9A627A3722FD1E9D30D7B3
                  CFBD2A928B1B02DF9F6EE9E83B38F2327E2C76172C417F5380A16C5D33E6F644
                  FE45921C9E975EF9C85CBA424C7596B7AD02C5878A24AE42E08B2F9BDA9EE8E1
                  4ECE4DED36D6F235186DCDDB3012C49729C85046D4302F05F4EC54D8E5AA841D
                  3DFBF71165121514C4F252619D534CF3464405A6A0677EB002734C998E97AF55
                  4D8FC48AE06FBFB777F419C84C776555B6E34AC2E9B90A33CBC3B59CCEA1A33A
                  8824A2C2BB65DB1173210A4AF87BA5748DC53FC95F0F0BD36F0A6884819FCE36
                  754D9DB5C1D16F88DD52A17A44FCB2E4A1C64A810C15109D0334488819FDDB55
                  BC5204AFE595BFC34812FF4D490FE20AA1A460692E5E161D97A0AD4397D3EE85
                  4B97904D313D861C0D94DE3DAEE94FBF622E45C125739E48DB502ECFFF888041
                  FF35DD9B9D59EA3765BE0F0EEEA474B28B24358577CBAB5DAC0D1FA54E43F6E8
                  B6D1BFC3265BDBC783FE831F561549A41B28CF591CBD079E49CE969FBE7F936D
                  02F1E1819CCC5AB7499046309D45D28AA0514C0B5BFBCE2E53A6DCEAFC9442F8
                  2B4701666DDEC617FCF1C7474572E90E2A9F3BDD2BD76E43EC33DD9F3352B795
                  ECBB96B09704D444FF3775F27788E4AE020D80DEE5E9A22CD4A61BE10091C455
                  089CF8BABEAD63B74B888B9CCA7F9B21686BDA9A04F1A5ADCA814789083E5481
                  2D156B846984D857944954D0DFE623FE7C555A6A88EF5100C5149967C3A60FD3
                  2378902076E02344543C251BAEA4E85159AAD77339478CED2892880AEF2BDB8F
                  9A8B95F94F008CCDBF885584E93123F8E7F9EA9E956B0E5A9B3C1630972C4F3D
                  D1BC5CA07863853F95BFA93D116869F4C8671A2AD764F65E039CAEA52B67D268
                  A28030354DA0BA78AF6BD6DC6D98E6E5AF97ABCD9BF85DD25D5998AD5507E63F
                  7A6CB5485253785FD9D1D54AA3657442A2DA46FF0E51A7CE43D07FE8A36A2289
                  7403B5E565E60AD5223E52B2472D11D0A93D3AC73C7986FC514824AF08CFDA0D
                  7B68B4178EB90DE6A76FA0533E75E65EFA46BAAFAD038153A79BDABBF4624977
                  668EA15E4568CA9297599BB6F2785FDD5E5B2477156884F89EB92CD5D9ECD419
                  519B7684034512578104B181AD73CF243E7B868EA9F2DF6608DA5AB433B82082
                  7034051C0435DFEEB7BFA44A594624AB09A4205EC79B1644EFAEB756DA078FA4
                  3A423DC51C052960510389ADD1A50F3172CC948B77ACEC7D06FDEE79E1A58EE1
                  DB6E4BD346899B16C42B68C26C4BF57A17BD2F6D6D2792D50C4615C4D0D7DF96
                  B63FDEF34F3382675A0328ECCE9A8F596AD467BE6DDB15A7F452C0DCEE7AF65E
                  FD2353C8454A2BA7A7446AB3E8D0595BB4F3F8BFF8B28B482EDD40F5EA7FEEC5
                  2B3E3161041C4B27126541A3434CF13A478D5B71A38D4052106FCC8C21888249
                  F76567963A4D986FD75B9ACEE74B41BC8E7F12639A320D7BBDED1DFD86EC4D26
                  C149BA3B0B1F9525178E5D20D295854B917015243FE76096BA8D997BD5BAF729
                  F8E4125988196916440430045B12457BC76E3EDFDBEF683AA56B444144B0F72C
                  5FFD82A5528DC8DA98922DB110F9C228315B7EE6183CF2F7705272AA1BF0BCDB
                  B66F48C61477ACFEC20C0775CC1DE326BD4D7988F915FE5810F8FEFB7E983948
                  7A2077644940C91E25525C32E52ACCACED9E480E7C73B28E48EE3AA48320D627
                  41BC2405319E8288EF227864CE8DDEA0DBBD62ED7891749A616841E473FC242E
                  E829C683984BCF5BF43C51F50831F8EDA9518E2123BD2634C82C79237954DBD0
                  F0DB943CA23189FFDB548037ACD075CC8B6950221A1F5F8F25C652A6B00B7652
                  40B494AFCA1C139E3A16F8FA64619195989066410453ECC95988D97BF4F7077F
                  FF6384483ECD30A22006BEFEBABABD7DE77F93118CE16F255B62253A3A182596
                  AF864ECE53E2538A083B9D651C83862761BD5431AD5488F2B1366DE5F76E7FA3
                  A7484E73509DCAE99AF5CCE7C9B94980D11614ECB811318AB53C5C9BB997AE5C
                  9EDA3111CD05F1AB130D6C9DBA99F8E6286C70538A2B6A88B67CB3334A297F7F
                  6D9A31D2D6B455C61921F26F53F0C39407554CE63BF8E15C917C9A605841CC5F
                  3C8C8A6BA9568F59AAD426D6497F56E5FFB55B2AD7AE214CBF21D0E80227BF9B
                  64EFD627CC8510014E6D65C6EF5009216A5426FCDB956AFC65EFDAEB946BCEFC
                  53F65E039E3165CBD7867EDBF1320B3DD8D1FDDCA2A3AE1973CED81EEB70DA52
                  AB91170100E970418298ABF97ECA6F78AFFF4112A2BE27427FFC595C644B3534
                  11C41462534B561AE58C9C100A279B15372FC40AA3092295D7EDAE67166C3097
                  A9C4373EA5A9BCAE25465254079DC3463BE93B79C427AF03FDDBFF7CBBF63C8F
                  2956ECAA8D690486CD3854D79CA3C69F0C7B7D373DB3901AFC873F19646DDC22
                  9C840D2FB18E0EF31466F62EBD7EA73C1613C9294273413CF96D53FBE091418A
                  19D86C78753C514BC41D1CBB2A5B39E68E00F28EBD0A9138794DBA31D2DEBD5F
                  06124410DF8728DE93153BE218F5EE97510548D3D675A30AA2294F9190AD55C7
                  773DAB373CEB5EB0689EFBB9C5E9CF058B17D17F2713F309D36F88D06FBF4DB3
                  F7ECCF77FAC5D4B0E8B77C1D87EA91B5653BAF6BCEBC339E752FCC0F9CFAA108
                  D245D0E21FB80152FE3D7429A99D6BDEC2E5F6EE7D4F58EA3589A40B612A1CC3
                  FA107A95851FC4A68C73614B724CBB2BC90EED0491883523D42D7BE79EDF04BF
                  3D99E6B3B74613C4C0E75F35B1539BE5BE8F25D8AB25959FA5428D9077F7DE0D
                  E2938A08FDF26B69E7D8272F99B0C335960E2ACA8884DC5AAF29F36CDD3E4C24
                  A719509F9C9367FC894D68B1960F1F1D56AD13F66C7EF96991DC0DA1B520062F
                  5E2CEA7DF58D6914A316DE749C7A7EC9B39E956B9FB13ED6E11DBE014FF9FBD7
                  937ECB8FC53C3DEF27CFDA8DCF505ACF5E97760CF4BEBC6D5EC6124410361093
                  EEC9C6EC7D07B1C0896F268BCFDC140C3B422CF460908287A6EB4A5A21F0E9F1
                  328E5EFDADD8E28DF250B45F89F82DFD8DB5E963CC3971EADB9ED777D6A34090
                  EAEEC068A0BFCFE779796B3F7B9F417BCD652A47A66DD5AE5F22C8E528C8CC25
                  1E62D4984F515A3944B251A1B520725B30E594AF38730C1D7D3AF4EBEF0F8A4F
                  DD148C2488CCE1BCD739E3E977786705B3024A36A495DC970598A3EFA0BF98D3
                  555E7CFA3A6066C3F7FE07B3AC0D9BC7DE9923D1C5F4B673D0F09F6E66562135
                  F80F7CF82CC59550CC2324A2296F1166EF3DF004D5C9A8676EB516442D61CA94
                  BB4B2C36210F968AD59877CFDED745126947861344107690B8F01EDBA36DFFF4
                  BEF5763DF1A99861E03544AC9B8D14491806D4E84ABAE72F3AC90FD72380ABA9
                  C0F80D7E5BB40CB3366BF5AB77C7CE4E948EA687D229BD7BBC9BB62CB2B5EEC4
                  92E04B0416958D8B8F164A5660AE45CB1689E4A242734104290D9E5681E2CC35
                  FB995FE91B377D6B8C9104D1F7F1A79DACCD5AD337726B534E37626E1A3194A9
                  C43C9BB76E139F5604956B76D7E4E95FF0E976B575182C529A8B28A6F77C3BF7
                  8C13C9A519F0B373F4840B7C9640E9BB3722ECC64C4BBD26CC7FF8E32922B954
                  616441A46F0CBFE69BA9126DC55CBE0AF3BCB27D9F4822EDC8908298425420B2
                  C73E60C88570B2B9A1F85C4C9082181BBC2FBEFCA4A5668348E056B6FB6AD268
                  0D0785311564EFDCF347FFE12337ECBD6B81C0575FCFB675E915E6C117235295
                  8D1E330EB6C7BB33FF67C79F1049A58A74114410E9A0A1D37FDDABD6614DE8A6
                  44D1288248F6DFE11C3F693FDA692C9D14DE5670D05BE9DF6E44FA1B4CB9513D
                  4B0A2525299EC34B81FFC3C3E3AC8D1FE5F532A67659B81475B87230E784A75C
                  94B7BC22B934C1F7DA9B73B18EC637A6287DF346245B302870CD7EF667915454
                  48418C02430BA21A87A191512FCF3969BA399C6C69253EA91A5210D523F0EB1F
                  451D03879F8D1C7857B18905FF8ECD3354671C034704FDEF7E90A61B70D4C2FF
                  F19127AD4D5AD8B918A82D73EC70A33CB9264EFF227CE65CD4AB02D32488D17E
                  8B40979D1A7BA90ACC397AFC8BE29331C12882E8DBBBAF8BB57ED388F0C4B836
                  86A96C3EB310C3DF61C46779A82AF36E7A09B75BDD701682FE2D278DC23FE7ED
                  12755921AD1B92628EA5DCC361DF5BFB5689E46E1A217FB0AC7DC8A83F21E426
                  6CDC51FA9E1269B49A746F76666DDE9A058E7FAEAA130748418C02430A22FF0E
                  5552356795D098A960D05372CF5FE46666737DF159559082A81EEE252B9E36E3
                  0C19465F6A82147C437EB1D46D120A9CFC7E3205A1743DC37525BC3B777F80A9
                  2DDEF0956CBB96B0F5815C0C22E23FF6C538B235DAE69E9B1044FA0DEA2AD6D1
                  A2951F4491CA0E979D3BA74C5B213EAB1A4610442AA34C8EE163CEF1EBFA6211
                  C302C52186411A215B2CD5EB47DA6611957F4FED139D0947DFC1FED09F7F285E
                  489D82E00F6786589B3EE68B5910515E149B1C838627531ED37419BAF7E56D2F
                  982B529B428741551D22F2EF93809230BB172FC30D5EAADB9514C428309C20C2
                  D9D9F263D794DFF6580786F36D7CEA4BE9B729845DE851172B8B2BBAD033CC22
                  3E1D155210D581252595704D9EEEE4DBD5717B90B2CD5791AFCF142F17764E9B
                  FDA648266EA03A50C4DAB6D3715E7FD4943BEA1076AD957C8839868C5C4F7F9F
                  EAF35EF4EFB109A2B0C1D6F68990A56AED10DFFC13ED6F844D1076CFC64D9BE8
                  9BA98AF4953082207AB7BE3AC95AA34188CF12287D5789B0853A02B66E7DFEA4
                  FCD6708E1AFF3DCA8A8F9ED4D43BFC7D56EA48905FBC2F6DC5756B8ACF1601F4
                  6F77B9162EFD2AB910896D6C6D9346AED4A929538979376F7D41241733427FFC
                  D1D0D17FA8878B532CDF471E33E562F6AEBDFDC1333FB515C9A98214C428309E
                  2012D180F297F8C0B373CF686BF3D69754F59ED0A386938B9765CEC8BD83AACE
                  0A49418C0E0462EF8ED73B5A6A35888CDAD53424E495FC686DF4A8C5B3E7ED47
                  4452718577FBEB2F9B2BD58CDEA14A21A6A1EECECA1C3DFB5B437FFE95EAAB0F
                  5426B109A2B0C139FBD94F3D2BD73E0F91C3BAE575BFBB96548E10356CF7F7ED
                  7BEF4DFA6E366142AAD05B10C9CEBC8E01C37E40BC505DEF318AA4368CCBE0DD
                  6B36F04D22FE0387265A9BB4A4F6898E988A7A2798745766E6E8D18F852E5C48
                  7D94F8E3D966B6D61D23177FC7328A25C2EFF6EE7DFF09FBFC315F7548E5739F
                  77D396D7F19C19DFD4A5366FF015660ECA5466BE9DBB71DB92EACE3F2005310A
                  0C3B659AAFD851FCAD67F9EA3E9606CD5812B64847BB831095058E2E569AB957
                  AE3D4C9525EA793A030B62901A8AEA27A6D213548EF77B5FDB7910D377AA1B12
                  D67649109D13A77D4B7FCFCF18C61BF4DD7AB6E6AD2CFC50B5928DD752D41F6B
                  DD4798FDF1EEA96EFEA1B4631744FA8D7DC8C80FE86F4B5260FAC15C8A82A19A
                  916241B28BEAA7B5653B16F8F22B8862D4C7A9F51644EF0B2F4DB154AAE1E76B
                  804ADF5422DA078DBCA83DFE19668C1F3B09FE7331AF63D4F8D37C8D37163FD2
                  C81AE9795ED8FC3995576E6E9402E047CFEA75EF26A7AC2546F5C57FC45DA310
                  34F7864D98958AE961E5D02FBFD6B577EB6DC155824A69A7C6A47BA8D336629C
                  936257D40B34AE8514C42830ECA69A42258F27DD9F8DEFE2F27FF4C907244291
                  B5AB68A288ADD1E8413D54950A6A071A43AAE7858C2A88A6FCC543348A78CBD9
                  6BC06C47E71E4F3BBAF44A1F76EEF93CFDB7A0305511FE239FDE67EFD16F6F72
                  F17291D1BB82BDD791CAC95CB672C8D177F06C918C2E20D1FA2DA6DD7B9869C0
                  59B319739F13492802813466412C528A39C74DFC4AFC7D41F7A2E59FE33DC5A8
                  6BE5489BEA0E4631D686CD4314C07B712352819E8218F4782AD9BAF7F9970B18
                  F2ADF4CD6B091B313D5C8946872BD70C174971F85E7F730CDF98134B10871FB3
                  E665B6166D9977D3CB9545528A085BADF51C8346B8625AC703D19EC9665BC72E
                  CEC0575FB711C94505F9FE3EF7921587F85DB66AEA4E0AE977D8E16AAE568FF9
                  76EF7D31561106A42046816105B160C9E3443EC223C7E7F2ED78E36D6C4D8EAC
                  614571241A033673D4ACCF9C5366CCE046DC00861D211628114E2EF950E47578
                  AAC0E9460AE8F4DF54CF719AF314BD37B950A99DBC33A2360F249C96A68F31DF
                  DBEFCD12C9C41D38844D23BD01D4B90AE0E154453BAF259FB62BC05CF3172589
                  641471538248693BC74FFA5A24711B8D82B23BC64CF8D05CB064981F31482D0D
                  FC5B7E0AA078B7B0653B876FFF07BD45328AD053105D4B562E3757AC1E19A529
                  7DEF06E4179D77EB7D2668325D352D4C657D8F73F4840FD1A1E017C72BFCED75
                  449EA90E9A0A9608DBC74C584B69A4BAF1C4F7DEFBAF59A83D60D313AF034A69
                  5E4B941BDF0D5C91B957ACDE4FDF784024972A82DF7EDF869F97C59DAAD13AF8
                  5790E79DE89A32C344DFBAA91769A4204641461044802A4016F79A0D3B31F2E3
                  0148F96FFEA3E87D996B36F07AD6AC9F2492B90E069E32BDFCBDC80BF3E9454A
                  BF408954CF6C05CF9E6B4C3DED0B31DDFF48C1C8FA583B77F0E23FA34532BAC0
                  F658FBE6968AD5FD91E930053B958869BB51137E15492882EAE3CD09E2B8FF04
                  1108FEFA4B36E7B0312753DA969AF24DA2918CBD6B6F16FCE9DC0DD798F512C4
                  E05F176AD87BF4BB14B975278629CE2C7999B56683807BF10AC523049E1DAF77
                  A70EB14FD5CEF314225DEA18D3A8FA92FFD0C7A9E62B6CB33DE89C3CDD9E7467
                  266A0F0A69A542B40B5BEB8EFEC0C9EFDA8BE46E08AA37995CCF2D3E1969DB44
                  85F46E447EA4A46E639FF7DDFD51AF68BB11A4204641461144802AD3DDAEA9B3
                  5EE4D3A22A1D8ADFE1AA30FFA1C373443257C1D082183FD612A62A2278FEC210
                  0460D31D142C62E8D1528FFE0B91846EF02C59D1CAD2B0592039BBCACD402089
                  B9BD5B9F540F3B6B2588007338BABBA6CD0EF10E074424355114DF31DD978339
                  068F60A1DF7E9F2892B90A7A082295C91DEE058B5627F38D22F9D4759EF06D74
                  04A86DD87B0D3C143C774E71D310A57D9FBDF7A00FF95A5F0C42CB7F5BA814D6
                  DC5E13492982D2BFDDF7DEFE05D69A0D239B9DD4D80EC27E8834D9EF9EBFE808
                  A5935924A988C0D727075B1A35F7F3F289E6972B89FA53F041E6E837E45D91D4
                  4D410A621464244104300DE6183FE500D65E782052FEDB08612F55243ECDD4AA
                  030B1CFB7C0555D8ABA64EA42072A63E42FCEDF7DEB68E5D99E9EEACEA030598
                  B3E0272209DDE0DBB5B7B5B545BB404C0188FC646BF8E82F220945503DD24C10
                  81D0A54B5DED43463AB14ECEAFF04A2D3D5EAF8BF1294947EF0156DF1BBBAE7B
                  C24A0F41F47E70A832D5132BDF2812ED9B57108268AE58DDE79C3127D503E6DE
                  3777B7B154A993AC5A10412A73F8C752BB31F3BEB13BD5DBACC8A795DC73E6FF
                  C30FC96384AB360FE8A0E36EE5F69D59F0F40F37BCF89BD2BF933AF45FF37399
                  4AE9A4423E3A6CD8DCE67BFF831BBE75A8065210A320A309224015AB9E6BC1C2
                  BF787046E54ACDB1F8370A46497765E1D34C819FCE5E75C8590A2267B411E2C0
                  C8083133DF18A2F0F7D7934659B666ADB1D6A1BA9CD203AEE1639B596A36F463
                  F383EA004075DCDE7770DC46882908FC70A695BD673FAB293B8937955FAA9D0F
                  7C0FBFC95D284CF517173B9711C970C45B10E9FBF7B99E7E765FE402EF18C404
                  79203AA7CF3687DDEEA8EB62CE279F3A1DB56CAEA5B0C5D16FF0C722991BC2FF
                  F127B370FB8BEACB275288B73AC92ECFB25567A82C1477B5060E1F9965AD513F
                  7ACCBA96D8614BB6D8878DBEA95B8BAE8414C428C888820850A5ABE79C34F557
                  7EA8160D2435E7E2DFA8578902A4469FE47B63CFE511911444CE06C25445047F
                  FCA90E89DB1F319DD5A27AC29FE8FAF9977922195D606BD6AAA5B974C5404CA3
                  0A0AE88E3113E33A424C8177F3D686B6561D68A4484216AD5E13F9C695C20F32
                  D78C39A7C9A68A2299DBBCDB5E8BAB20FA0E7DD4DCDABC4D1087E2A37E2F85F8
                  6ED6BCCCDAB019A3EF2E1049A58AC03727E75BEB3661C9F84E0C82851196B551
                  738FFFE087A9BE20436558C6F5CC823F797D8945D8C9166C92B1B56CCFC8C6EB
                  1E30A7747338474FF8D98C18104B1CC05DC0E4635BAB8E4EDF471FD715C9DD34
                  A4204641461544C0FFEDA94AF65E034E61A7979A6926FEAA7BB67C3452EC7331
                  70E26B2E0224889D1CFD871A5110C3C46F893B89BBD3916F114B0B5315F1C36D
                  B7DD9E5CB4CC76DC04C403BBB2BD5793FC61ADDD28EC5EB4FCBAE0102F5010BA
                  DDBD6CD5C77CC415CB9350D9F233CFDA17D267976914410482A77F78D6D6AD0F
                  9FEA574CEB4AC25E0A6E26FAAF7BC90ABC90C183A6F7E56D5DE22588F4CDFB9D
                  4FCD3CC8D389E12C1FCEF1A19EB866CEC525E6D74DFB2A817E874D293F6027B0
                  EABA08223E1428C99C6326BC2F92BA2142677E1A697BACBDDF94853A804A69A5
                  C2A4077231D7DCF9F0C3556BA1FEF73F580621376137712C7180ECC69DB6EEE5
                  ABD78BA4D20429885190910511F01F3854D6D6B9C7DF7C611B0D24B59D84B01F
                  0D831AA263F4781B55DA8681DFFFA865EF3328F270A9D2DF5CC9F80A226EAAD1
                  E4F5F4B42274FE4226E7F4A73F313F58819FBB52D590D090C917AE19B371D762
                  019154DCE11830ECA2EAADFA29CC5F82B9E72E50DCAC9202CA53BA0922A59D35
                  78E29BB5B696ED22775C2AA57725295D74E8608B6BF63387E8EFFFE77D65479B
                  7809A26FEF3BEDADF51E09F36FC5B2E98ACACDD2E8517FE0F32F6FB80B5C0981
                  6FBE1D6D69D49C9FCB545517394B3053CE02CC5AFF11BF6FCFDBA93EF08BF277
                  2F5CF6391F81E62101534C4F81F00309B5B5564316F8E2CB2522B9DB983F50CE
                  3168C4AF3C46A113A0F4B74AC43113EA14D97BF677843C9EA8B1500DA4204641
                  46174420F4FB1F53B1E30ED76E4544311547E3DF7217E65328CE894FA127F70A
                  09A20FB73F44AD20F115C42071B048425720C07AD66E9C8A83F95C5CD43424F8
                  817E6BEF3DF09FB0C391AE4F3EDD08FE03079B991FAA6A555DEE5C5872306B8B
                  76CCBDFEC5EA2219455099A49B20025CD4DEDCBD848426B28B315AFAB03D4B5E
                  662E512EE01C3BE9E9C089936DAD4D5BA5BB20929DB73BC74C3CC32F2C574A3B
                  3516288E67947093517E919C2AD0EF73BB9E59F0233F4A830EAE52DA4AE4A3C4
                  12CC3178E4772C10BCE1ED3540E89F7F86DB3B750BF2119D525A3722A63871B1
                  C3934FFD4B7696455ADE1D6F2CE267A8B12EA9A6ED80F02709BEB94A1DE6D9F0
                  E253DC280D2005310A12411081C037DF4DB477E91DE65BD7D5ACBD5090C134AB
                  6BFE2266EFD12F8C6DEC512B487C05D150977BBBE6CC7F883FF28AA92A950D89
                  57D80AD59977FBCEA52299B88182D13DCE89530F2697A2512DC448C1BEEB48F9
                  428FDC31729C3564B5A67ABB09A59FAE829802F7A2A5D3AD0FE332701236FA7B
                  C5B453081B2818A3CCDDCF2FF9D3D2B099BA571490EF9B14441A1D3E69A95637
                  E60BBCD129B5367A9405BE3C715353EA81A3C7BA60E778D2DDD9D48F4A91CF1C
                  0599A57E53E6DBF26AAADF25FFDEE15DFBC2D77C8F82525AA991F2863743FD47
                  3E5B40E994B7F71EC0770FC7D4FEA9BEF08B0AFA0E3E1BFAF967CD5EE7978218
                  0589228880FFD0E121D6561DBC7C7D21DAE15AE405574B61C7171A949ACA7A0B
                  0B6298B1ACB6CEBDB6F05BFED5E6038D3A5721E6E835F07CF0E7DF521518AD11
                  F8F8D30ED666AD3C7CFBBC926DD792074B6A60651F0EBB663F1BF5769D780922
                  E01C3B7186B97C552E5A5145516CC2C0AB1DE80C445D5B0791F79B10442A83EC
                  F681C3BEE1E9237F4A692B1136524076CD5DF0AD482A66D0B7B3BAE6CC3B82BA
                  A86A040D229F14BFB0764923B89FC22E4F29919C22C26673477BE75E91915DB4
                  72BF92F9C9A6CC791975C892A9C3700CFF1B3F6AA1C64690BE057FE05273EFDE
                  77A6525E55BF72120D5210A320910411F0ACDDD8C352BB9185379268811BF941
                  43563BED720B0B221038F8511F3BAE9CBA2BB3BA0081F2E5C1B93C730E1BB39B
                  1AF60D9FE2D11261BBBDA163C0D09FB950C5E05B88A7AD55C764FFFB07CA89A4
                  6E88780A227D2B8B77FBEB27CD98B2563B5244C7458D1882F49B9B1144CF9657
                  6759ABD589EC74554A578908F6F7E760B647DBB2C0D727637ABAE85AF80F1C6A
                  46E9D893497C14BFA544FA3EEE03A518C1BC3BF74C1049DD10D476F724172D43
                  7543E552410A4974CD0F9667D606CD2F5F3CA0F8BB6B095F60DD12EBD8B39EF9
                  02BE17A6680229885190688208F8DE7DFF6D4BE34779238FD1E9A9F31617446A
                  9C45DD8B579C34A3D1E650D9A0F0DBAC7969E455394C7FBB85D288FA1A7D5A40
                  E9B7742F5A66E58157ED0620FC968406E2E67BEB6D6C028A1A84E83771134480
                  BE57C2B366C3517E2145ACB79C44237C14A320923DF9EC3DFB9DE2C15E6DA703
                  36F3198692CC39791A9E2EBA5B247753A0BFCFE49E35775F3275B8548B326CA0
                  7688231234F276B2302B29925344D86269611F38DCCB77A1ABDDA90CF2BC16BE
                  295F61D9C78A0EC367C735DF542705310A125110A9A1E4F4EDDAF38EA55643BE
                  853ED60A7943DEE28208F8BF3D35C8D6BA93857736D4DEF948E58FC060AE508D
                  B926CF789359AC7CB381D608FE74AE9373EE023B7CA47AAD13BF4130A5A0EE18
                  38EC8790DDA66A472CD5B1B80A2240DF2CE47A6AC62173D1B291FC297DE76608
                  FFC42088B82DCABD6AED52BCE9A82AEF2944C703E70E9BB566FE4F3E55DD7E52
                  836FEBB616D666ADDC31ED24467E7314A4605A0DB7D72C13492982CAFC4EEFEE
                  BD6F9A1FAAC22F7D579DD79B2417761A91BAE62F3C803A26CCD00C5210A32011
                  05114065F2BCB0691782B0BA37E754500A22078DA256581B3413E5AA68FBF5C4
                  F556089EB88F71F0C87FBD3B77DFF405C5D7827CFD90FBB92553AD1DBA047030
                  9CAFD750F055B4E35A423CF9D9D4BEA1E0999FBA8A24A302F52BDE8208D07773
                  D8FB0EFE985F0CAD7664168D647B2C82E83FF175157BD7DEA698A64A411A3199
                  4B9663AEA7E7E14D47CD82BD63F088D7F9B466ACA298250F730C1AE1615EDFC3
                  22294504FFF9B7AA63FC6496746716F5F5EA6648F101656AEBD0D51BF8FA64D4
                  27BE6E065210A320510511A04677A773D2D417F1AC4B4C3DD91B510A2207956B
                  41CF864D0793317D17CB48054108D348B90A334B8DFACCD17BE001D7F4D9C329
                  BD5AC4549FE7B916F4FB02A1733F3FE259B57E1309C40573A51A34FAC817D961
                  1C4BD0CA49238572552CDE351BFB89A45581BEAF8B2002619BBDB16BC61C3704
                  86A7ABF4BD5808BFA81444CAF7ED9E45CB57E355FB985F7ACFC4A7021DFEC347
                  AA8AE43441E0F32F2BDA9AB7B988D8A4BA8D912F200A78E0D7BBFDF59752AB7F
                  F46FFFF3BD7F6029768EE2CED2741345D45D8A55DE575FFF84BE799FF8BCA690
                  821805892C8800BF0C7CF088F53C70A9D9829E1AA5205E061AACEBD9E7DE3457
                  AA19994A82CD6ACA16BFA132C428CE94BF1855E8AA7859C266EBD8F57DD7EC67
                  36F98E1CDDE43F72B4A5E3891E395C33E6E6704D9949FF9D93C352FF911C9EB5
                  2F54F27F7068ABF3A9992F397A0DF8D6DEA9BB131B76D0ABBE3C5A89C106D86D
                  6DD49C795FDAFA96C8966A50FE75134420EC7275730C1B6DE39B3D1048D5E4FB
                  46A4BF552B88812F4FD4A0DFB9F9F126B5F519E9A3E341E2E31837793DDAA448
                  4E3338060C5B925CB87438A60E024491BF1A32D24EFE4C55A4E9DFCB3A274FFF
                  9DCF404078D5CE8CA825CA0833157D0639582894EA25E4698114C42848744104
                  50D93D2BD75C32E52B91B6E95329885781CAF50EF7734BB659AAD4E697A7F3FC
                  C5B2F100BFA760CE4776F4FFE331644BE55A089C61FAAFC5DAF0519BB57E539B
                  B561739BB94C656B7291D26ECBC3F4EF652BF35126EFE0400C6229570441AAC3
                  F8A6A56173BFF79DF7B18926A683E100FD8DAE820804CFFDDCC6DE6B40321F29
                  E68B71647C25118C550AA26BEE8297938B958DED1801F987DF25DAACD5450AC8
                  9A8E0E5310F8EAEB5EB6561D5C31BD9708E6A34E5989F2CCBB73D78722294590
                  BFFF17387A6C99F591965456B1DC90A382488B3A7454C7996FE79E5DE293E902
                  298851702B08224015BA1AEE4C34A1678700A2FCCDD489C02B05F12A205078B7
                  6C5B6F6BFB44640A4DED99B02B89DF0B71E4D35E581B03E127FCFFF86F4AD9A5
                  FC3BFE2696EF88DFF3295EF2A1ADCDE37FB9D76DE844F6DFD4B676230822E0FF
                  F070436BA3477FE61D3D6C728AA54C528872512188243ACD6DAD3B46AE398CE5
                  8A36F8AC7C554623FB8DA82F22394D41E9E6F1ACDB78CA8CD736622D03B2CFD6
                  B5B73D9C94D44E24A708FA4631D7AC39BF735FA2AE2AA5753314E5EF1C3BD111
                  F6F9A2AEE1A6055210A3E0561144805DFAB7B863E0F0333C1F3753A1A520DE10
                  BE8F0EB7B73DDEE353AA1B91111FAED552CE973EC48812A241A350D7FCC527C2
                  BFFF5943987E53308A20023472196DEFD99FF1D7DEF19DD802DDE5809C9A2052
                  7EEFF62C5A7A007782F26F28A5A344D479EAC0586A36FCC977E0C39847E2B120
                  6CB1B4C3BB9D4918C1A97DA60CA498662E559179366F390E6115C9292278F6EC
                  1C5BA7EE913A1E5B7B56267C459D488A29CCBD6069BBF4984EBE125210A3E056
                  12442070FC8BE2B6369D4EA4DCB41F53A59082982A28981472AF5C3BDBD6EE89
                  24F3831523E58B43C6F82FF21E5B03BC39E21B98B6C5F7C8C77C6D11D3512484
                  8E11E34CEE55EB07929DA9BE6AAE06461244B2E5AEC09727D65A314A8F656D2F
                  85647B34410C9EFEA1A3AD5DE7A0AA8B01AE205F6F2B599E79566F7C4F24956E
                  E0C74196AC38C4BF89F6ADB6BE916FF037D6D61DCF073EFF2AD5234154D6F738
                  A7CCD8642E42ED39ADA344D8877A91BB0876BBEE179F485748418C02CFCBAF44
                  0A460DD110A812582AD50C3BFA0E562F88851ECC47FCF9AAB4A2F33851734104
                  42BFFD3A9004EDBFE081E91F651BAE261C41BFB7D4A8EF728E1CA75E10B7ED38
                  6A2E5E36F2F74AE92A3344CC50829882D0A5A4469EF52F7E60A9DFF43B4BD5BA
                  91C04123463EA58A8754518F90C72B2A779A091144BA1809C2AF1042745EEA36
                  668EFEC37EF5BDFEE6060A669A8D50B820CE7E661BCEA7F15B9152F274238A7A
                  E61C3F5973414C81EFEDF7165A9BB7E29B33F8F794EC5022D98ED1338DAE6E28
                  88EE790B3FE5539F4A7F7F2322DDACF999AD734F17D589F622A97445F0871F9B
                  D8BBF6F6F1BB89314A44BD50B2ED1AA2838C4D3FAEE94F3F2B92BA217C070E95
                  B73EDAF61F3C2717D5EFA95194BBA5D1A32EF7D657EB89E4D3159E97B7BD87CE
                  21EFC4C5667BFA0B62A107875FF3CD54C9376A55A8CA3CDBB414C40D2FF23501
                  55A45EA4E9EEACCC5CB44CD8FE440FD582487F978FFEFEE7EBD24B9DC74D9973
                  A78B2002C1EF4F8DB777EBC392EE788099EECB4979CBAD64C3D57C807E777F0E
                  662E53C9E5E83744BD206EDA72343947FEC8DF2BA5ABCC1031430A620A483432
                  BB9F5F3CCBF9E494E3D6868F5ACC65AB308C9431B5C7A72F115050B995042E16
                  52308308C287783BCE52AD1EA3D18CDDBD74E519DFEEB726931DC584499A0182
                  E89C346D1BA610936EBF3F7AFDA17AC3CFBD0D1D956E820878D66F9C4923002B
                  2E29C76B098AB65CCB2CB959D26D77E3C07CD0FFFE81EB04D1FFC991D1962AB5
                  7D49776656D74E40FC0E47144A9467BE1DAFEFA7F28AE958CDCD82BE73B77BE5
                  9A374CF98A523D83BD0AB62911F587629BA556833F9D53673D2492BB21E8372B
                  4D054A84F8DF29A5178D543ED88866CA5D8839868D7A99854271291FF7864DEF
                  FD5767299E2BD9A6CC741744AAAFC315BE7B4326DD713F757A4A32CF8B5BB413
                  44DFBEF798AD4D27F56CD98ED97BF60BBB9E9EA75A10E9EFF2117FBE2A9DE83C
                  4E4C3741047C873EEA6FEF33D08E9B33AEF9F60DD891D95A77C00DF42EF7734B
                  540B220599A3B60E9DE96FE9EF15D355648898A105310514A4B2B9162C2AE759
                  BD0E6B5DAB1C0387B9F0341176F7A569DA09A3201255F4EC6DAD3A326B9BC7BF
                  B4F7E837CBFFF19159FE2F4FD4A6EFA6DB3B8C1044CFC64DDBEC5D7B311B8DCA
                  6C6D1F57F2E17F44BD69FB04732F5B99AE820878B66EDF65EF4276A9AD6FB0BD
                  490B46021F0C7C79E23A41743DF3DCFB51F3A7406B8BB648F31F1666E9768C40
                  0994877A8EB11383B6E66ADB7584D647DB307BA76ECCF3C2E61DE4DF0744728A
                  083396DD317CCC3FB6C7DA2BA61595F04DCBF6D4411A6DF7BFF37E23916CBAC3
                  F7CEFBEFA1CEAA8F799799EE8248DF187ECD375327B53B7BF7DECCF7DE07DA09
                  62F8EFBF1B043E39A28E1F0B1EFBA2BEFFFBD3A92E3E5F89C0C79FDC4941AA7A
                  E0934F1B2AA67B1D3F6D44BFAF1C3872F44E9144BA21683255F21F3DD628F0D1
                  C70A765CCB4F79FEFD9F7F5E3770FA4C0E914454842EFE53C9FFC9D148D929A6
                  7B3D29FFF5E9F7E9BA09412F309FBF9667F3965AF6CEBD5A7AD6BDF0B97BC162
                  3C82CA6CD448B1B9818F1C9504305F313E4562A52064EF3794B99E5BCCBCBBF7
                  5E723DF95407FFFE43B5C3C15021F1897407D6AB02BFFC5A2670ECB8A83B5437
                  14FC7899DCF7471B06CE9C4DF556142D40C1BC44E09B6F63A86F64FB87871BD0
                  DFD40F9A92EF17C95C866BC69C32BE0F0E36A4F6A8F0B73720DAC9A79F3508FF
                  F67B25914CDC40F9BF3D74E1627DEE9718DA1C95437DDF5BFB1A044E7CD3346C
                  B1445D670EFDFB6F8DC0212A37C5B4A210B61D3DD630FCEF2574DCD23DCEA520
                  F4F7DFE503478F37F2AB8A7782478E36A178945724916EF01FFE241FBEA56883
                  129187639F370A5DFC3BEA885E1D6EBBEDFF01F498C18A551705650000000049
                  454E44AE426082}
                Properties.ShowFocusRect = False
                Style.BorderStyle = ebsNone
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                StyleDisabled.BorderStyle = ebsNone
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.BorderStyle = ebsNone
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                TabOrder = 0
                Transparent = True
                Height = 42
                Width = 49
              end
              object pnlBtn: TPanel
                Left = 3
                Top = 149
                Width = 268
                Height = 36
                Align = alBottom
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 1
                object cxButton1: TcxButton
                  Left = 21
                  Top = 6
                  Width = 113
                  Height = 25
                  Caption = '&Generar Reporte'
                  Default = True
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'LondonLiquidSky'
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
                  TabOrder = 0
                  OnClick = cxButton1Click
                end
                object cxButton2: TcxButton
                  Left = 140
                  Top = 6
                  Width = 113
                  Height = 25
                  Caption = '&Cerrar'
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ModalResult = 2
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
                  TabOrder = 1
                end
              end
              object CxLbl3: TcxLabel
                Left = 3
                Top = 15
                Align = alTop
                Caption = 'Resumen Infonavit'
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
                ExplicitLeft = 2
                ExplicitTop = -2
                ExplicitWidth = 270
              end
              object CxRGroupInfonavit: TcxRadioGroup
                Left = 3
                Top = 37
                Align = alTop
                Ctl3D = True
                ParentCtl3D = False
                Properties.Columns = 2
                Properties.Items = <
                  item
                    Caption = 'Todo el Personal'
                  end
                  item
                    Caption = 'Por rango de fechas'
                  end>
                Properties.OnChange = CxRGroupInfonavitPropertiesChange
                ItemIndex = 0
                Style.BorderStyle = ebsNone
                Style.LookAndFeel.NativeStyle = True
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                StyleDisabled.LookAndFeel.NativeStyle = True
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.LookAndFeel.NativeStyle = True
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = True
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                TabOrder = 3
                Height = 26
                Width = 268
              end
              object cxGBFiltroinfo: TcxGroupBox
                Left = 3
                Top = 63
                Align = alClient
                Caption = 'Rango de Fecha'
                Enabled = False
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                TabOrder = 4
                Height = 86
                Width = 268
                object cxDateEditTermino: TcxDateEdit
                  Left = 67
                  Top = 47
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                  TabOrder = 0
                  Width = 195
                end
                object CxLbl1: TcxLabel
                  Left = 17
                  Top = 24
                  Caption = 'Desde:'
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'Office2010Blue'
                  Style.TransparentBorder = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                  Transparent = True
                end
                object CxLbl2: TcxLabel
                  Left = 17
                  Top = 51
                  Caption = 'Hasta:'
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'Office2010Blue'
                  Style.TransparentBorder = False
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                  Transparent = True
                end
                object cxDateEditInicio: TcxDateEdit
                  Left = 67
                  Top = 20
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                  TabOrder = 3
                  Width = 195
                end
              end
            end
          end
          object cxTabHistorialContratos: TcxTabSheet
            Caption = 'Historial de Contratos'
            ImageIndex = 2
            OnShow = cxTabHistorialContratosShow
            ExplicitWidth = 984
            ExplicitHeight = 0
            object gridHistorialContrataciones: TcxGrid
              Left = 0
              Top = 35
              Width = 766
              Height = 218
              Align = alClient
              TabOrder = 0
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2010Blue'
              ExplicitWidth = 984
              object CxGridHistorialContratos: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsHistorialContratacion
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnFiltering = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.GroupByBox = False
                Styles.Background = cxstyl1
                Styles.Content = cxstylFontContent
                Styles.Header = cxstylFont
                object TipoMovimiento: TcxGridDBColumn
                  Caption = 'Tipo de Movimiento'
                  DataBinding.FieldName = 'TipoMovimiento'
                  Width = 98
                end
                object Guardia: TcxGridDBColumn
                  Caption = 'Periodo de Guardia'
                  DataBinding.FieldName = 'LeyendaGuardia'
                  Visible = False
                  GroupIndex = 0
                  Width = 222
                end
                object fechaalta: TcxGridDBColumn
                  Caption = 'Fecha de Contrato'
                  DataBinding.FieldName = 'fechaalta'
                  Width = 120
                end
                object Titulo: TcxGridDBColumn
                  Caption = 'Salario Diario'
                  DataBinding.FieldName = 'SalarioDiario'
                  Width = 136
                end
                object TituloSalario: TcxGridDBColumn
                  Caption = 'Salario Integrado'
                  DataBinding.FieldName = 'SalarioIntegrado'
                  Width = 121
                end
                object FechaMovimiento: TcxGridDBColumn
                  Caption = 'Fecha de Movimiento'
                  DataBinding.FieldName = 'FechaMovimiento'
                  Width = 129
                end
                object TituloTipoNomina: TcxGridDBColumn
                  Caption = 'Tipo de Nomina'
                  DataBinding.FieldName = 'TituloTipoNomina'
                  Width = 120
                end
                object TituloGuardia: TcxGridDBColumn
                  Caption = 'Guardia'
                  DataBinding.FieldName = 'TituloGuardia'
                  Width = 124
                end
              end
              object cxGridChartSalarios: TcxGridDBChartView
                DataController.DataSource = dsHistorialContratacion
                DiagramColumn.Active = True
                Styles.Background = cxstyl1
                Styles.DataLevelActiveValueInfo = cxstyl1
                Styles.ToolBox = cxstyl1
                ToolBox.DiagramSelector = True
                object CxDataGroupNombreEmpleado: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'NombreCompleto'
                end
                object CxDataGroupFechaMvto: TcxGridDBChartDataGroup
                  DataBinding.FieldName = 'fechaMovimiento'
                end
                object CxSerieSalarios: TcxGridDBChartSeries
                  DataBinding.FieldName = 'SalarioDiario'
                end
              end
              object CxLevelDatosContrato: TcxGridLevel
                Caption = 'Historial de Contrataciones'
                GridView = CxGridHistorialContratos
                Options.DetailTabsPosition = dtpTop
              end
              object CxLevelGraficaSalarios: TcxGridLevel
                GridView = cxGridChartSalarios
              end
            end
            object pnlEmpleado: TPanel
              Left = 0
              Top = 0
              Width = 766
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              Caption = 'EMPLEADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Unicode MS'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              ExplicitWidth = 984
            end
          end
          object cxTabDescuentos: TcxTabSheet
            Caption = 'Historial de Descuentos Infonavit'
            ImageIndex = 3
            object FrxPreviewDescuentosInf: TfrxPreview
              Left = 0
              Top = 0
              Width = 766
              Height = 253
              Align = alClient
              OutlineVisible = False
              OutlineWidth = 120
              ThumbnailVisible = False
              UseReportHints = True
              ExplicitWidth = 984
            end
            object cxGBDescuentosInfonavit: TcxGroupBox
              Left = 353
              Top = 32
              Caption = 'Filtrar Descuentos infonavit'
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2010Blue'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
              TabOrder = 1
              Visible = False
              Height = 161
              Width = 274
              object cxImage2: TcxImage
                Left = 216
                Top = 10
                Picture.Data = {
                  0B546478504E47496D61676589504E470D0A1A0A0000000D49484452000001C4
                  0000012908060000000D8552430000000467414D410000B18F0BFC6105000000
                  09704859730000589400005894010B2AD5370000001C74455874536F66747761
                  72650041646F62652046697265776F726B732043533406B2D3A00000A0754944
                  4154785EED5D07981445B7F5FDE640CE394A922439270141322839E71C254816
                  1450724E0A0A22A8088818105014110C282A88825910656727E754EF9E9A5A24
                  343B3D6CEF74EF50E7FBCEE77B3FB3D5B7EA56DD53B96E933026186377852DB6
                  7AAE27A754B5F71ED4D3BD6CD579C7B889CCD6A21DB354AEC592F31767C9054B
                  5E4DFADFCC0F5660D6A68F31C78061CCB36A1DF3EEDAFD95EBD9E75A05CFFC54
                  8BD27C40242F2121A1026833E1BFFF69E0E8D9A7A273FCE409EE252B7D8EA1A3
                  98AD596B6679A80A4BCE574CB91D96ABC26C2DDB33C7F0D1CCF3C266E67D7DE7
                  6EE78CB90D427F5DA88DB62D9297301A9C4F4E194B0EBA43FCBF123A82FC90DF
                  35777E2DF7B215D3EC3DFA6D73F41F1AB2D669C4920B451AD9750D2F1AF13705
                  A87156AEC9EC5D7A317BD7DEEF3967CE7DDAB37C75CB90C356447C564267047F
                  3C3BC2FFF19191E2FF95D019D40E8B7896AC68E99CF7FCD3F65E03DE77F41EC8
                  AC35EAFFD7A6AE6D67D188BFA1366CA95E8FD97BF60BD9BAF4DCE69EBF689AFB
                  D9E7D149CD2F3E2BA123C80FB7430B6F3357A9C5C8E12FD3FF708FF837893822
                  7CDB6DFF17BA70719073F493F31C23C69EA646E336977B9837A2A43B3333538E
                  02CA8D2C069A721761A67BB2B1E49C0599B96C650864C8DEB3FF2FF6FE435604
                  3E3B8E0E5136618E449C11387A6C86AD732F666BDE9A79B6BF3E53FCCF127106
                  DA40E09B6FC73A878F5D411DD15FCC156B84783BA4369374771666CA5928D29E
                  D039BDA67DA96281123C0D13A585B66D2EFB30B3D4A8E7A63678DA3E74E4BCE0
                  6FBF0E422C10E648C411D03E47AF012F430B6F33652FC083A4BDCFA09DF40F72
                  4A2D4EA0B22EE4DF7F609873C6D3C7EDED3B3373A98A2C394F114E53B6FC2C39
                  1FF52A0B97A206F8A072038B95480B8D9204D694AB304BCE5B8C251729CD6C4D
                  1F63CE91E34E79DFD8359B6C2A2BCC938803FC873E5A68EFD88D99EECDCE92EE
                  CBC1AC4D5A30CFDA8D0BC53F4BC401A8F3DE3776CF764E9D79CAF6580766A636
                  C1DB60EEC2CC949DDA21B519CDDA21D2405A24883C6DB4F7BC45F93287EDB1F6
                  CC3969DA71FFFE83C3101B847912E90C681EB40F1A082DBC0D8E82F3CDA52A30
                  47CF7EEF86CEFF9D53FC56221D400EB83F78FA8731AE59CFFC61ADD3989948F8
                  4C390AF28671793A462B1154624ADAF8161A26F58093F350A3AC5C9339468EBB
                  E8FBE0C01CB2B1A83057221D40E57B3B89E15A046053E6DC97FD6ECA9A8F59A8
                  4E78D66D5C8BDF889F4BA40350C7FD9F1E9DE3183FF9A2B9722D66CA4B228876
                  8835C178B743FA26BE6DA2FF5A6B3762CEC9D3FF087CFDCD18C40A61AE443A00
                  5A07CD83F64103E10F2E88A0295721965CB40CB375EDF389F7C8B17CE26F2434
                  44F0ECD986CE89D3DEB2366919990AA51E09EF810A1FE84AF23F82331AA463C0
                  F063DEB7F676905338DA8382DCDDBE7DEFBD6AADDF9425DD9BEDBFE00B6204FF
                  406EBE69CABD6AFDABF8ADF833098D803A1D3872B48373C294639686CD98294B
                  1E5EF70DD10E6103667068F46869FC28B38F1CFF56E0C8670D85E9121A021A07
                  AD83E671ED133EB82C88E8B1F07F28548AD93A75FBC6FBD2D607C5DF4AA41114
                  D82AB8172E9B6AEF3D809968349694894605A8FCE9D9038D95B005CC969F1A64
                  3E66C514CE9827D7879D8E06221B126904D5836CDEED6FECB3D4ACCF4C104325
                  FF53FB3365CEC32C0F5565AE79CFEFC3DF883F974823A82C1BB8663DB3DED6A9
                  2B3365CB476298F7BF7A7FAD1FF4A2B0258984DA94A730C5E2EECC3963CE54C4
                  10910D893402DA068DE36D8D6BDE7FFEFF4F1041CC6F73B52CC16CAD3BFEE259
                  B7A18A4843E22611365B1F73CF5FF897A57C5596747FCEC8BA41112AE72BCBDD
                  48E46B8DC569A4928B9949B41D23C759694433586447E22641012DAF67E3A623
                  18FD25DD979DAFDF2A963F48F503A37573E98ACC39FDE94FF0B72219899B44F0
                  DBEF073BA7CDB2A2DC79F9A3438ABAAE54FE46206CCB578C25A11D96ADCC5CB3
                  E6FE15FCF5B7C74476246E12D034681B348E6BDD3575E06A4104B18B2A6F3166
                  A2FFDBD6A2DD05EFDA8D35455A1231201C0EFF9FE7E557BADABAF44AE61B64B0
                  91C568A3C21B31C546D483DC8599B5494BBF6BE6DC272930CB29BC9B00955B01
                  CFEAF5C7CD156BF07542557500BFC95130B2B63F79FA71A421929388119E55EB
                  275A5B75F4F3CD64E890A694EFB5656E34C246C48CDC6473FE62CCD6B16BB267
                  ED0B5D115B44D6246200B40C9A066DE39B0A15760C5F2F88298423B0C8DBBCCD
                  BF9EB5EB9B8834255480825779FF81439BAC351B784D59F35EBD4E94D148F580
                  6FBC295D29E45ABAF26DCADBA3229B122A40E555C2BD72DD77E607CB47D68D95
                  CA38352280532FD639E9A9EF42FFFC5B42242BA102287BD7F8C9CFD3A83CCC37
                  CC20A62995714620C5107E22A0524DAFF7F59D9B106344362554001A062DE39B
                  A652A90737164410BB9FF2D008E191C76CAED973DB88B425520155D46ADEEDAF
                  9D3557A9CD921FC895B11BE115C47A8BB9E443CCB3726D32E551D60515A072AA
                  EA5EBCE28FE4226522234385728D4A8C12D02129588239C64EFA23F4DBEF5545
                  F212A9201C0A7674AF58F33BEA2CEF942A956D06A4E9819CCCF2706DE67D6DE7
                  59AA5F154576255201B40B1A062DE382A850AE294C5D10D118218A3464B7346C
                  EE764E9DD9577C4342015441B37BD66DFCD15CBE2A33DD9D95CA90CA2F234CCD
                  A821E5C39429375F84762D58E40C7BBC3D45B62514C0028126AEA7E75F3215C0
                  710AB17943A95CD510654FA268CA5B94D9078FBC14F8EEB49CB14905D40E4BBA
                  172F77A21391E6B23712910FD4857BB3473AA72FBE7491F2DA58645B4201D02C
                  6817348C8B6194BA90BA20A610A2480DD252BB51C83579DA28F12D892B4015F3
                  7F8E51139E4F2E593ED2080B274823BC92854B5DCE9B73EC93DF05FFB9945B64
                  5FE20A84934CAD5D93A679927391886553B966188D088410C5ECF999BDD7008F
                  FFC8D1D6E273125780DA611647FF213BCCC5CAF01DD386DE3873B3443BBC8F44
                  B14235E69AF5EC9B946779F5A602A055D02CBEE41365649842758208F2B5A442
                  CC52BD3E05C38913C537250854216FF7AC5EB7DA52B9E6CDAD1365242230D328
                  D154A038738C1E8F35C5ECA2182408E18B173B3B474F70F17A80F53F2DC43085
                  480B9DD3EC0598BD734F97FFC34F3A8BCF4A1050175DCF3EB7CF5CBC5CA41D6A
                  59F64623DA21E5116BD39E45CB5621068962902040A3A055FCCABD1896ADD40B
                  22289C80396CC7F031CF896FDFD2A08AF800F5D65FB2367A9425639D28117BA4
                  D7123D54DC6E54A632F36ED8F4219581BC289CE03FF1CD60FBA011FEA4077232
                  133652A54740461B44E734731E666DFB84DFFBDA4E792486803AE8DDB9EB4373
                  A51ABCC370ABB4431CE4B7D67B84F90F1D7E09B14814C72D0D681334EA663A45
                  B1092208B5C5F429553CE790912B850DB72C280876B0F7EC1739E4AB545E894A
                  04E66CF97863F4ACDB385514C72D8BC0D727C739FA0E667CF30CAEE14B0F314C
                  21D2E6BB0EF3335BEB0ECCFDCA8E71C28C5B16FEFD07A65A5BB68BDC3C732B88
                  E1153465CDC36C1DBA30DFEEBD1D4471DCB2708E18BFD252A9666423DA4D6C68
                  8C5D105398874608E5AB30C7C061D8027C4BBEEF45F9AEE79C38ED22BF8C1B41
                  50A99C129918A95000B277E8EA0CFFFD772F512CB71C4227BF9D6DEFDC538861
                  F4857B4D98228A1821347D8C795FD9315B9873CB81F9FDBD9C03863AB1E92B43
                  1F71BA59E68F4CA3D3C8E822F378EB8962B9A5000D722D58BC09CB56C9292F93
                  DC046F5E10A1BE38E95FA612B3F71FBAE7561BAE537EEFA691D16B182927FC7A
                  456AE4A3A152CC3162EC1754263944F1DC32F01FFF6AB1AD5D6766BA2F87AA5D
                  6C9A139D924CB918A6EC7DEFBCB7589875CB80EA5C76D7DCF95F988B95E5BBE1
                  15CBE81620D6F5B1BBDD356FE16B5426B7D4537ED01EF7E2157B700B14DFC476
                  1323C314DEBC2082D4F8F90E9E92E599BD47BF0F03677FCA256C4C78F83EFAA4
                  93B5799B005FAF488303323C5107721564E6AA75986BCEBC5B66EA8E1AE11DFE
                  03875EB43EDA9625E1AD49D4013D3A45F82644F1FE9CCC46B6C026D826CC4C78
                  F8F6EC7D8ABF1A834EA952F9DC32A43A809B8D9AB408785E7DED96B93C83EA7A
                  2ED7B3CF7D682E5725325D9EC636983641041110710B44D132CCFE78F713BEF7
                  F627FC5B5EE484BB1DFD06BF69C639435C07A5472034122920E37E487BB73E49
                  A15F7E6F2B8A296101FFFB5EDBF9BAA5DE232CE9CE2C54063A89610AF9B7C907
                  776561B009B6C146616EC2C273F0507EFB133DBE35F37705D56DAB4F58F22B37
                  8B52C72807734E9CFA6738CC2A8B624A58308FA790EBA91927928B9763497846
                  4D83A36E691744100D12D3157870B67DE7AF7DBBDE2A296C4E48B896AF6A63A9
                  D338CCDFB2BBD5C510A432E037D994AAC03C2F6D7D9782715651540907CA5B26
                  EFB61D7B2CB51B45DE3214F9BFAE4CE24D61036C826DB011B60AB31312CE39F3
                  26992B558F9C8D95ED30B2FBFB815CCC52B301F3EF3FB09AFC7FA728AA8443D8
                  E529E91C37E9EBE462E522CFE86974EE5B1B414C21CE48D168C1DAB6D38FEEE5
                  6B12F2AE3DCFFEFD77DB7A0FFC824F152B95C1ADCA22A568849299397AF46781
                  CFBFAA248A2BA14001269FF7A5573EC68168BE91CA8841189D13B20D36C256D8
                  2CCC4F28F80E7F9AC7D6A1CBEFA62CB2537A15E17F1245E784C92C74E1EF3CA2
                  B8120AC11F7E2C6F1F35E1C7E4FC25F8ED4D5AFA5F5B41A4613B37307F71667B
                  ACC345F7D2D575441E1206DE6DDB0759EA36E65BDE6543BC8662879F6BFCE479
                  148813EAA030E5A78477E34B27F04EA1166B15E94A0445B211B6C266D82EB291
                  10A0FCDCE37D69EB0A4BF96AFC1C9E6C8757106591A7089E0EF37A56ACEE238A
                  2C61E0FFEEFB3A8E61632EF21DD6E9B05CA5AD2082305088A2B5592BB37BE1D2
                  96222F191E8C858BBAA6CDFE96DF4082279D94F27F2B13EB1839F233FBE3DDAC
                  A1DF7FAF2D8A2DC383027065F7D25567F03EA1E1C5308564236C85CDB01D7910
                  D9C9F0F06E7F3D9BBD738F9F6FC9A34E6A08B1A0B2718C9EF02DF3F98B8A62CB
                  F0087EF5554B47BFC166BE9B3B9DF66E682F88200CC5F4290987AD494B8F6BD6
                  339D449E323482A77E68CDCF9B6157E12D76F85715B1864141D84A2368EFCE5D
                  D345B165689090D474CF5BF81BD6C7338C18A65088226C471E901791AD0C0DCF
                  E6ADDD2C0FD772F1658B8CE48F7891DA61D2FD3998AD4D27E6FFF89384B8F316
                  BBFA6DDDFB7AF8064E1CF74B27BFA78F208230980F6B0B314BBDA65ED7EC6732
                  F4F09D82C99DDE175E7A914F0B636A5036C41B125BE01DA3C6EFA732CBD0977F
                  3397BB095E2A4FCE5334E35E07864E0A6CA73C202FC893C85E8604D5A9DB6D6D
                  1F9F6F2E593E7E972064489660261A94B8172DC3319C0CBDB9C6FFC1C13EF68E
                  5DBD3863684A679FA79F208264389EBF49CA9E9F596AD40F7B56AE1B2DF298E1
                  4095EA0ED7D459EE24DC8621478737267AA73882D1B33F0BFEF06359517C190E
                  E1BFCEB7733E39D58ADB67F805C134CA52CC6F462046B79407E4057942DE4436
                  331C82FFFC53D8DEADCFEF7817101BB914F32B19698759F232E7F8C96EC42E51
                  7C190EDE575F1B6D6BD53E8C73B67C8F423A7780D257104164000787A9976A6D
                  DE9A79366D794AE4354321F8C79F45CD55EB98B85394F229F91F7148BD6819AF
                  73ECA40C391A09FF7BA99763E438077FD5036B1519590C530851A4BC204FC81B
                  F228B29BA1E0DDB2ADB9A5463D969C1B6B480AF994FC8FD40ECDE5AB9A025F7D
                  9321D711A115D08C641CABC91F9FB3BEE92F88298428E628C8AC0D9A9128BEFC
                  3CF55AFE27F29D21E0FBF0F0AB96CAB5C2521055305271C3EEE7977E298A2FC3
                  2074E1EF118EFE433C100ECD9F6FD29BC80BE5898B22E5117915D9CE30F0EDDC
                  F505E5257C5DDE24AF27C52A4BA51A61DFEEB75F15C59721006D8046402B2EDF
                  0416A776183F41E42451CC968F59EA34C66BCF6B29E319666BBE73E8A8CD78EE
                  883B47316F9257B17029666DDEE6A828BE0C81E02FBF4DB4F71914E02F972472
                  C787F2863C22AFC8B3C87E868073E8E8CF13F2F1EDF4204688A52B327BF7BE9B
                  45F1191ED00468033482DF4BAA94AF74649C053142ACC359AAD7659EE5ABB751
                  01DC2FCAC2B0201BEFB6D66EF896525E246F40DE182B7D4765974D14A361110E
                  87FFCF7FE4E8B3F62EBD58D2BDD9343FEC6B3852DE9047E4157946DE5106A238
                  0C0D73C9F24714F32479435AAAD4790B314C14A161012D8026401BF85E0D85BC
                  A437E32F8822D0243D908B992BD460AEF98BE02C43BFBA4EF675B40F1E698BF5
                  F5E55B9A3872D3BC4D20F0FD29431FBF20DFDEE53FF8D1525B9BC799E9EEACFA
                  BC58A10791471C8DA23C23EF28039485281643229894D4D852BDDE05EE23A53C
                  495E4D8A555837B6F71F6A430C13C568484003A005D0046803B75F8776A8CB08
                  916794C8EFBF2C5B8939673FFB3E15485E51368643F0A7B35DA827EDC2B94A29
                  882A4941CBD2A019F3BEB27D8E2846C381EADCDDFEF70F6CB43569C95F8BE0BE
                  BD15C43085C82B82265ECAA032F0EF3FF8029589619F0EF21FFB7C81AD65BBC8
                  DAAE527E24AF26EA73DEA2CCDABEB3CB7FFC7817518C860362BF73F633EF430B
                  F87285D007C53CA533F511C414E28C14AE5E2A5A86B9A6CE3ACE828122A28C0C
                  05EFCEDD1DAD8FB6B1F39B31A420AA235FD0AF19728E1C67C8112235C24CDE5D
                  7B5FB3D46AC8F8C3B2B7F2BA14E51D6580B24099A06C4431190A9EB51BA75BEA
                  360ECB11620CA4B2B2D67BC4EE5EB0D8902344C47CC4FEE4A2A5235AA0F39136
                  7D0511E4DBC171CEAB0C734E98F25DC8E57948949561E01A3FA593A5467D876C
                  8831903A0E967255C2F6AEBD678862340C28E0E7F1BEF6E6BB969A420C13E158
                  455A89760851A432F1EE78132F9618EE6268E784C9332C0FCB9DDE31111DD387
                  6B391CFD871AEEB630C47AC47CC4FE8806E8DF0E6F33C48807D3A7BC77509A39
                  868F3B1B32271BEA1E4CE7C0E19D2C0FD776C8861803A95E99CB540EDBDA3D61
                  2841A4405FD8B3E1C5C3962AB5F94BF38AB6DFC24499A06C3CEB5F3C8CB212C5
                  6608D83BF79C814E969CA5898110C4AA751CCE61A30D258888F188F588F93CF6
                  1B61A982EAD56DFC5E384C05EA3D650451C421E8FC259863C8C8DF8317FF6928
                  CA4E7738878DE9844A250531461628114ECE5BCC30824801BE9477FDA6CF29A8
                  3253E63CCA36C79BA8F778390507CD11E80D101850369687AA309415CA4C149F
                  EEB0F7E837C3F250552988B1F0B2208E318C2022B623C6F3E79BD2E992EE9808
                  ED83069216DE66EFD6C7975C2072E7A8DEF3B73C38E4A102CA5990D9FB0EFE37
                  F0CD49435C4C2B05F12659B44CD85CEE6143082205F60A9E956B7FE03D52A33C
                  EC8C694AECB6AE5A875F58C1AF57431DD3DB36B443FE027969E659B1F607949D
                  28465D41B18A04518E1063A2C10411311DB11D319EC77ADDC5B014D73E136920
                  B4F036FFA9D3CD1CC3C7FCC82F30C6B102BD478A30307711DE4B2503EDBEF7DE
                  D77D779473E0B04E988797821803A9F767A6DE3C7AF5A218750305F43AEE679E
                  FB036BC029AF3F28DA1C4F522048BA373BB354AFC77CFB0FEE77AF7BA1BBA541
                  3333EF981A411421D6282B2A33941DCA5014A76E70F4EC1F1921E21A2F259B25
                  AF678A200E1EA5BB20229623A623B623C6EB3E00C36632681E699F63F8E81FA1
                  85DCD090CB5DC63961F237E6A26522B7031840B531843565CDCB6CED9EF0F8F6
                  BE33981BAA133C2B5677B4366C6E979B6A6220F5E2D19BB7531013C5A80B5830
                  D8D239658609EF57F2BAADB718A26D51404FBA272BB3366DC9FC9F1DDB476293
                  03B67A172F7BC4F668EB7FB920620AC708A28832A3B24319A22C79A1EA04CF73
                  8BA65B6AD60FC97618032188D5EB399CA326E82A8888E188E588E991253A03CC
                  4652DD86E641FBC22E5719616A04D4284BB8A6CEFA22B964F948CF5029917812
                  C100410C97823FDAD6EF7B6BDF58616ADCE13F70E8716BAB8E4EEE48395DA38E
                  E43BEA99865C53674F8B9462FC11365BDA3BC74DB6F02763F865D03A0B0CAFD3
                  344ABD23333A7A2C70E2EB9DD4EEAEBA94C2B368591D5BEBF6FFF07A865EB452
                  3AF1246CA6B24319A22C51A6C2D4B8C3FBFA9BB32C0D9BC96317B190CACADAAC
                  B5DDBBE3F50EA218E30EC46EC4707E2F291E56D7BB1D12B9C691D641F3A07DC2
                  D4AB41FF90CF3567FE87E687AA1863A408C2866CF999AD69ABB0F7F55DBA04D7
                  B0D3D1CD3160A8D794B2F141C94EC9AB99A70875645A33DF810F1788628C2B42
                  BFFFD5DD31FA49B7297BC1C814A4928DF12605A7A47BB2317BF73ECCFFF5372F
                  517B53BCB6D0B7E5958AF6F69D7F36A3178D43E84668875486284B9429CA5698
                  1A5704FF3A3F0FB7EAF0CE8D928D92579362156296BD673F6FF0E2C59EA218E3
                  0AC46CC4EE6403E9091F1992C641EBA079C25465D00FB2B89E5FB2D75CB17AE4
                  A6712364028ECD9C9B591B3FCABC2F6D5D14EF7B17516896BA4D0EC99E690CA4
                  D1B4EDD136AE90DD11F7171502DF7D3FDC3E7474909F31C42E3625FBE24D8832
                  D963EF3B8405CF9F5F4E752AD5D75EBC3BDE2C66EFD4FD1B8822BF5B5529CD78
                  13CF47210F54B62863616ADC406556CA5CB9D68F86E9E0189D29823868F83F54
                  76CD4531C60588D1DECD5B162166F30D5A461848400C49D3A06DD038689D3037
                  75D00FEF752D5CBA859FD5C2191191D8751F8827D143A5C668ADD384B957ACC1
                  4B1971BDACD6DAA8C5CBC9251E922344D57C100782B16D3FAE578105BFF9768A
                  BDD7C070121AA1114657F83ED9815EA963E0F070E8E23FF3D476E802FBDECB6D
                  EFDCF3B0B978D9485E94D28F27455E50B628E3E0D7DFC6FD6D536B8BB6C7745F
                  7FCA482C5A8659EB377D95DA61DC1E09466C468CB6E2C50A744AF5EEC0881800
                  2D83A6B9162DDD028D13E6AA031AAD7BE9CA55669E29FD2E5BBD96B0C5FC702D
                  46B6BD4299BA4F989BEE70AF5EBFC75CA19A14449534535D714E98724A145F5C
                  10F8E9A779B6277AB0A4BBB21863E11EA33B6CE9CE928739C74F0A876CB649C2
                  54D5089EFE219BBD5B9FF7CD0F9617079815BE134FA24CA96CB143D6D6AE33F3
                  1F3D3E4F981A1778162D3FC5ED30402C323C29562166B997ACD82D8A2FDD8198
                  8CD88C18CDC550C9AE7832450CA11BA465D0B434CD30BAD7BFB8887A18BC0170
                  31D0BB2262AB2C051873D987996BDEC2B7C9015985A9E98AC0871F37A011A25D
                  3644154419152811F6BDB2FD7D517CE90AAA03FF23315C6EEF3D80990C534F49
                  0CB317E0F638A7CD0A862CE69B9E62A4FC3DE0E833704F72E98AC658C610DF4F
                  BA2F07B33ED69EF90F1E8E3A05AC15DCF316F6A64E815FBE96AF82D40E684414
                  0C7C7F7A9528BE7405623162326233DFB46280CB5E5006D02E6818B44C989A36
                  7877BC39DDFA689B482631FCD5BB41623B38B6EF96AEC45CD39FFE981C514098
                  9AAEB077EA76899F13D33BFF4626950DCEF658EA3EE277AF5C5D49145DBA817C
                  7F97FFD8E75B6D9DC5C8B0108D60F4F60FCA207B7E2A8782CCFDFC12270BF87B
                  08736F1A94CF3B1D83476E3297AF4623C582CADF8D37D10EEFA360D3F431E6DD
                  FDD656F842989B6E70BFF26A015BFBCE5E1E8B643BBC315107731761B6369DCC
                  E497CCA2F8D20D88C188C588C93C361BE2785371AE59D02E689830551B7877BD
                  35960A377CF91C899211F1A4083AE652159963F2B4AFC821E9FA5206A57FB7EB
                  E9670FF16BB66443BC31E1175CAAD0B5F7778C857389E24B172000FB8F1E7B93
                  022405E69CC6E8AC89FCE3FF762F5B8577E8343BA680A91EC78871CB2C956A46
                  6E96D27B6D06A41E386EDBB1366CCE7C3BDE78133E11E6A60B28FD62CE51E3BF
                  E7CF75C9B5C41B93C7C702CC317AC2015174E906F24951C460C462C3C447D228
                  6815340BDA254C8D0ECFD6EDF32843AAD6E2BCEFEEEF6FEBD4CDC71B2344D108
                  19C716EC626599032F65D86DA585A9E902F7734BDA61E86DCA924F364625A211
                  D2A808EB16CEE1636789624B17509DCDEA3FFEC57B96E6AD230264047140FE31
                  7279B03C73AFDD78896C8CDC7CA1319C23C7CEB654AB13A9FB981E56B2259E84
                  2866CDC72C35EA33EF6B3BDF836F84A9E9021A89CC3257A64E01A68F653BBC9E
                  7CBA9E060B351A30E7E4E9ED44B1A50B42367B69E7934F7D87186C88E330D024
                  88216914B40A9A254C4D155467EF8516DE66AED980B99E59B04B6D25F6ED7BB7
                  83AD7B1F375F1FC131040354483E8544B638C64FFC2578EE6C1561AAE608DBEC
                  956C2DDA9DBEFC88A5822DB73421085411CDE5AB5EA27A926EF7D0525DCDE73F
                  FCC96778BF0F37BE1842141084480CCD652A31EFD6ED7F918D3585B95141BFED
                  180EF8637AAFCE397EF2442BB55DDC09A9688F0E4C7A20277CCFBC5B5EFD0C3E
                  12A66A8EE0B95F5A5BEB3D72C9944DCED62812ED90E2B3A549CBD3815F7F4DB7
                  650BC45AC7B849BF24E72D668C697CB441D201E41D1A05AD12A6A60A681F69E0
                  9BD0C2DBF8732F0F5565CE79CFA97EB5DE7FE4584B7BEF81974C390C72EF222A
                  00390473E6F62123FE097CF36D2361AAE6F0BCF8D21B68F41809C9C6780D214C
                  541F9C93A69D0B1CFF325D8EC5501D2DE3DBBBEFB4A56A1D96743789217CA0B7
                  1FD010B3E665E6B2956984F4C669D828CC8D8AB0D3D9CF35730E8DA8C7B1D08F
                  E7FA89FF59155C53A60FB5D6691CE22FD628D9154F0A3FF0CBCA4B55629E55EB
                  622A875810F8EAEBBB3DCB579FE3779ACAB3C157133EC8499DD2D2E483E5ABDF
                  1045A6391063116BF9BDD31043BDDB20BE4FB1079A64EF3DE012344A989A2AA0
                  79D03E6820B4F0365E80E86951013A67CFC5069562E2B7A92278EA741DFBC0E1
                  7FA377C07BA97A170846AA782D20470166EFD1D71E38FE85E6530558C309FDF2
                  6B3BFBE3DD796FD808A363C310A280CB136A3762BEF7F68FA17A74BB2836CD40
                  693EEC7969EB6FE6720F47C410E5AF67BD13DF36DD9783596AD667BEB7DFC5B9
                  4B55ED0708DBEDE39D53A687B03D1D9B531C7D87840227BF1B2FFE59155C33E7
                  76B534681630E526513482381429CD92704CAB6869E69EBFF037F84C98AA1950
                  B7029F7F39C6DAB4556457B1DE1B388C44B443AA4FB6768FB3E0B7DFB74FD311
                  831B00B11531961F03E20F42E81C07D10EA141A445D0246893303555A0AD42F3
                  F8462031DB1079319FFE8FCB179D4E9EFE65D8E551B516173C7BAE9A63E4B8F3
                  26DC399A95123442C1F0E13B0D991FEFE1F57DF8D113C254CD408578BF67C59A
                  77CDD4E07985D03BCF46202FF7A22C99CAC33962EC4F619753D54C432CA072AF
                  41A3F33F93B1709FD500D740E1FB34224EBAFD0166A9D784F9DF7DFF18D9A83A
                  DFA14B49B31CE32645EA10EE2CC5540FB5415CEB460D3AA6F557D79CF9ED6D8F
                  B4B4F1AB05F318606D1FDBED69D4602E5C9AB99E9EF767987C274CD50C286BD7
                  F4A77F4AC6D20DF2AD779E8D409481280BE7CC39EF225689E2D20C88A988ADBC
                  DE6230A47B5DC3EC4C7E060D8216419384A9A9021A07ADBBF6418B8820A6248C
                  456A1A763A464F381D369955CD3DB36010097F8F4555E3ECC02481A7A0696BDF
                  39E07B77FF2061AA6608FDFC4B757BAF01E6A4BBB3297CFB562495376E116AD8
                  CCE7DBB9AB9B2826CD400DBBA967ED867F930B9688ECAED4FB7C13083124FFDB
                  5AB663FECF3E3B40365E7549776A08FEFADB527BFFA1FC9808BF960D6D8688B7
                  10B1266A6BFB04F31F3DB654FC5C153CF39F6F6C6BD9FE5FBE868234956C8E27
                  911F6C6E20B127E1FA377CF1525361AA66081CFBBC9BAD453B2FEE873546DC31
                  00EFCF898BE3CDFEA39F5517C5A419104B1153798794DABCE2F7E349D431680E
                  690F34085A244C4D1541D236681C9F6285E65D31A8F94F10419C2BE2CA5F04F7
                  DF9D0F9CF9A9BE4823555030C8E79AF5CC67E6920F45FEFECA34F5225E63CE92
                  97595B7762DEAD3B347D2983F27BBBF7C52D2F9831EF8C1D8E4608D07AB15049
                  DE43371728C99C4F4EC1943B7FCA482B507A1DDDCB57BB223B190DB299090DE9
                  BEECE870B1C00F67F06285AA9E38FDEE8EE08F3FADB5F7EA4723CB4C91D1DC95
                  330CF8BF218A2494B6166D99FF8383B8A250F5955B3482AE6A6BD3F117537E4A
                  CB28A288293588E2E419AEF0DFFFC4B471281AA86CB2BB57AEF90253E886893B
                  7A11658D59BE52159967C98A17A86C345DB2400C452CE51B0A0DF21E257C0ECD
                  81F6507E556DE282A641DBA071BCCE5C33DD7EB520826894B87B11F3B17D06FE
                  EBFFECF8A322AD5441066573CD99BFDF5CAE0A7F8AFFBA74E34D044E042EBC94
                  D1AC35F3BEBAE36961AA26A0FCD673CD9CE33021A8814A36DC0A8450512FCDDE
                  A31F0B9DFDB98F281E4DC0C2E17EEE679EF3F1697023CC3EA4D42912667BD75E
                  2C78F6EC06AA07770A735305FDEEAEC067C75EB5B5A5A0724F769ECE556278E5
                  37E8BFA60772324BFD479877E76EDC43A9FA6C9F7FE7AE72B6B68F9FE20DDD30
                  A258908FEC9D23C6F9427F5D8869E3503484BC9EF2B6A6ADCEF269536CEA52B2
                  E156201F8D17668EF1931D884DA2783401622762285F6743BDD5BB1D82549FA0
                  35D01CCA6F36616AAA809641D3F8542FEE0656687FD70B22281A3EE6A36DDDFB
                  9A0327BF55F5B82419768F7BDEF36F992BD7888C9C8C5070948FA44CB999A56E
                  13E6D9BC35A669A868F07FFCC9686BC3E6DE9483D8B722792FADDCC341CFBA17
                  34BD1E8A793CA39C5367F08D3A861043341E0A3A49F7E7648E81C320868B85A9
                  5141ED228BFFD8F1BDFCB6271C28477AD1F243FF8E631C385AE27DF575F537F3
                  137C6FBD5DDCDEB1EB77C9C5CA44A698F52E3B7C9F6249D203B998A3FF5016FC
                  E9DC2861AA26F06CDA828783837C2D48E9FBB700D149B3D669ECF5ED7B77B428
                  164D809889D88918CA3541E1DB7125DA05C55B680CB4069A234C4D15D0306819
                  5F634D45D495053185FC4C078DB09EE8EEF2BDFF81AAF7B4B8282E5DB1CD8A6D
                  F1D40074DF012632CE8F97D4ACCF3CABD76D241B55F5EAD5C0B7FD8DBD968A38
                  244C41FBDA6F273AA997C5374E3CFBDC292A53CD6ED30FFDF3EF54E7B8897C94
                  64880D1310436A0B497766618E61A359E0A7B3CF0A53A382CA25BFFF93231F5A
                  1AE1199C183B89F45D7EE09DDA9277EB76BCDD965F241B15FEFD070BD83BF738
                  62C68169ECC0531A8DC693C83736DF5187806F1C3AF9DD54616A9A41E5729767
                  E3E653E6E2E522F545E9FB094C744A2D15AA31EFC6CD7B4591A4198891889588
                  99889DFC5B7AB743D212680AB4051A4336AA12436817348CC7E8283BB1531744
                  5E894914A9A76A6BFB44C0BBEB2D55BD0F32F47F1831586A378E88624A5AD7A6
                  1F4F5240E007872BD764EE058B70C594262F65503A259D4FCD3CC2A76BA21476
                  A211A30F7BD7DE7F862EFEAB6A67971A047FF8E1798CC092EECC1C99F2334020
                  473EF1E49173E25416B6DA541F8BA0BAF12035C613969A0DF8C3C08AE94723BE
                  8FB37D0F5565EE17369F409A22F9A8607F5EC8E2E835F06D7349BC946190658C
                  0262E350BB27986FFF81E785A96946C817A8661F38EC67BE66A9F4ED4425463B
                  44E7E80938F2535214479A80D8881889586988E365423BA025D014680BD9A8EA
                  32796816B48BDF2085F81C45875217441009600D07675B9AB766DEEDAFABEED9
                  795FD93EDFCA7BC634DC56614CBA93BECF7BDC15AB613BF83B54A89984A96942
                  D8EDCDE41832D262CA5920D5E1784250E4CD747F2E66EFDC93054F9F5E288A21
                  4D40050FFCF8D34A479F8191FA62842DDDA82F59F2F1CD0ACE997382CCEB1D2A
                  CC8D0ACA4F45DF9EBDDF9BA937CBCFCAF1F4AE495F2DC90E4C59994B57669E95
                  EBBE47DAE2335141BFBDDFD17FE876FE0201468A7AAFB3C1A758774627BB5547
                  E67DEF8395F0BD30374DF01FF8B092BD5BDF301FD1DC0AED307F099694252F89
                  E19381B0C3314014439A40BEC884D888186998E34D1894E18C3369093445981A
                  15D02A6816B44B6D3C892E88294425CE9C075BEB9967C38BAADF40F36C7D6D8A
                  B565FB48E11A650495AB30BFC9C135EB594C43E516A6A609A1DF7E1FE3E83738
                  10297C038C6CD283A850A807D861D9B8059EFD5926B29F26900FEEA191E1165B
                  872E3C50F2A06D8086883A6BA2A0E35EB8CC4D36AA7EB1827E5BC3FBF2B65FF9
                  C82C65CD30AD843D14FCCC5436EEF98B7EC537C4E7A2827E7BA763C8880D968A
                  35221BDE50BE4ADF8827518FA87CADA847FB0FE2C1D6343F248D43E8816FBE5D
                  8E632BA8A37C37A4DEF5283D88D8824D343462B277EF13087E7F7A8C28823481
                  7C901B3111B1113152F1DBF126C410F58434045A224C8D0A6814B48A2F53C450
                  DFD50B22488EE06B71B51B31F79A0DEBC2B7DDA6EA1604EF1BBB46D9DA3D118A
                  6CD935C2C26C64DE3DB97839E69CFAF437541154DF2E921A42BFFDD1D7DEA5A7
                  1B65845DBA09258A29624801DEFAC863CCF3DA4E4D2EEFA6B2CF1CFCFEFB3DB6
                  D69D5812765F1A21585F21869ED5EBAC64630B616E54D06F1B7A5ED87C9EA781
                  91AE966BE8457056383F5FBB75CD9A7B1EDF129F5505C788B14B2C78B815D38A
                  06110A5E9FEA3EC27C7BDFD983BA204C4D13FC478FCFC23B8D78AF91D7A74412
                  45C460CCD865C9CD6C1DBABA03478FF715D94E13A8EC8B21162226F2D86884F7
                  26492BA019D00E68883035554093A04DD0283E5310630C8E4D10411E2CF2F29B
                  EDDDCB56E1D57A555BC27D873FE96DEBD82D72C38152BAF126F2910DE750CA30
                  E7F8C9BF849292544F43A506FF57273AD97AF4B5619ACD101B42B420F2809E5A
                  A63CCC463D35EFAEB762BA5EEC46A0BA93DB7FF0C38FACCD5A45AE623342F042
                  BDC0966E0A0CEE8D9BFE261B1B0873A3827EDBDEBD68B989771C3023921E1BCA
                  284DDE86A86E399F9C620A5EB818D3F352CE91E36658AAD6BD7CA389E237E245
                  F17D0897A57A3DE6DBF6DA47A813C2D4340175D4D6B243242862C646EFBC6A41
                  D44D1C89C351B2EE7D6DFE2F4EA8DAFD1F0D887D888188853C261AA4AC50CFA1
                  19D08E88A5A9035A044D8236DDEC99E5D80551104EB16083CAF34BB14145D55A
                  9CFFA34F3ADABBF672F31E2ACE81E85DF0A86062E79163E8E88BC1EFBE57FD42
                  416A089C3ED3C23168C43F3CC0C3314ADFCE28848F7215E6A30A5BC7AE7EFF7B
                  FB078B6CA60954670AF9F6BD739CBF58810D344611C34CB999A5DCC3CCFBD2D6
                  DFC9C6CAC2DCA8A0DFF674CD5F68C3A6112E58E9393B8051020223F9C5316A82
                  2D9C6452B5033C0514FCC65BAAD70F997215D47FAD0DDFC68CCDBDD999F9A12A
                  CCB366C371D40D616A9AE07BE7FDC1F6EE7DFCBCAC78475CE7FA955652AC32E5
                  A758D57FE83F8831229B6902621E621FEFF022161AA00DF273F0146FA015D00C
                  616AAA8006418BA049FCBCA452DA2A78D38208428551895DCF3E87C391AAAEAE
                  0A7CFE654B7BEF41266C05E78BFC7A4F2B2208A2B74C4EB0F71B7A51AB9732C2
                  A17003F7FC45E7B983208A1971EA0665834052B40C738C18EBA600D35D642F4D
                  A0BAF2A0F7ADBD27CC0FD7E4E7FA0CD108A91EE28618BCE5E8DDB6E31CD95841
                  981B15CCE91CEC9C3DD7C52F6988E7B67F048EEC0568A4F8940B36087354C135
                  65C6104B9DC61E7E24036BFB06F0018F27A52A32F78AD531EDA64D0DA19F7FED
                  EE9CF894DBFC60F948A0443EF5CE6B2C84AD987120B1E207D1A7CD3EEFFFE63B
                  D5B316A981BF5841318FD72323CC18A0A387FA488446402B84A9A902DA030D82
                  16F158AB94B64AA649107925C67541C5CB32E78C39D8F6ABAA67173875BAB663
                  F8D83F70A593519E0E41CF0BD305F6EE7DCDBEF70FB611A6A609541E55DCEB37
                  BE8E736470147AAABA7700D4101513F3F738004B01CA31E1A9B7C3C9164DDE37
                  A43279D8BB75FB393CA2CB37D0E8DE2102C9FF7767E5CB00BEF73FF88A6C54FF
                  6285C3F9A473F2B4105F378EA7180AE29B2847D8005B8459AAE07EF6F9AEB6C6
                  2DEC1829F2356F85F4E34AD43B3192733FBF049D124D5ECA603E4F6BF7B3CFBD
                  0D41C14614A3BCE31A95280F6C9EC94A31B64275E65AB4FC75C41491AD340131
                  0EB10E310FB1CF1031185A409A006D804608535305954721680F34885FCC90C6
                  7CA44D1041384D1C38764E78EA2C054E5517AC86FEB98879EB334823D20814D2
                  8E27D14050F9C829B62EBDBCDEB7F669321A02BC5BB6F526278730D2BABC8B52
                  C906231015133D690AB4B6C7BB33CF8A354F53A5D3645B3CA5D3C8B379CB7988
                  2CDF606584A044BEC025DDD6FA4D99FF934F0F918D3985B9A9023B1A8317FF9E
                  E318338199EEC9A6DF6C07DA1F7D1B36C016D814CB933FE4DFD6D6A6AD2EF175
                  3650E91BF124F243F1C054A81473CD9D8F8D439ACCD8A00E7B366E7EDAD6A35F
                  A49D1BFD561B8C0A7987B12473F41F12F2ACDDA86A1D4D0D10DB10E3B800C1E7
                  066887291A004D803608535305B4069AC363163448837CA45D104118848040FF
                  A5C0FF73F0FC0555BD1816083EE89C38F5ABE4120F456ED3504A3B9E24FB7963
                  C9558859DB3D11F0ED7B77983035CD085BED4D3C2BD7ECA7C0EBC6D677BE8ECA
                  A7AAC47795EC8917F17DAC21E426BBB2E7E737A338C74DFE24F4DBEF9ABD5C41
                  01A9AD7BD9AA24BE8B0D62A8779E41ACF7E12851AB0ECC7FFC73D5D7A3D1EFEE
                  089D3DBBC4DE7B201753BE455DCFFCE0DB64036C814DB00D360A73A3C2B36A7D
                  635B8BB67FF08E1A02A4DE3B0C293F91005982399F9A7189F9FD9ACCD800A14B
                  49DD5CB39EF9D852BD5EC0943D1F6FEB469932E6E58E76885898A73075D21EC1
                  72D4FBA17FFF6D22CC4F3310D310DB78BEB9AF0DD00E915FD20068013441989A
                  2AA031D01A5E5784F628A61D23B5114441FEEC0CD13E68F81FC1D3AA1F692CEC
                  9C3AEBA8B90C1E69A45E9B017A2BBC5266CDCBB075DBBB6BCF24616A9A4179BD
                  DD7FF47863C7A8091F595BB4E5533708C85C1C91EF78574EEC82E436E46658FF
                  B254A98D37C5FEF17F7214374168B2051EA0B43ABB162FB7F2FC6A30AD916622
                  F0604AF8DE6CCCD6A91B0B1CFB1C5351AA764BD3EFEE09FEF8E37A7B971E2CE9
                  DE1C949E41D686B90D34DA259B601B6C84ADC2ECA8F0AC5E57DBF658FB73BC6C
                  8C30B54FF9E1235F0ADC346AB086EC8ECEC2D43483CAE56ECF966D5D1CC346FF
                  60A9DF943A8245F8662ADD9634B0731853DF8805F98AF3FB6B5D33E7FC12FCE5
                  9719C2644D80588698C6D7D9A82D2ADA124F5259F325378AFDD000F24B61616A
                  AA80B64063F8E0059AA394F64D525341E48D928B62110CF393BDC78FABEAD950
                  41E471CD7EF63D7E9B06026651FDEF3F3561CA821A89B5494BE67965FB33C254
                  4D40F9CDE77BFB9D11CE69B3BFC3C1643C6182ABC178AF2D25B8A6FC576B225D
                  91B6E99EAC7C53061AA073ECC4B3DE4D5B66916DAADEC1548B90C339907AB91E
                  8C0AF92E362374780A5143BC87C4B07B3FE6FFE6245EAC50359AA2DF65F67FF1
                  E56BB6361DF92BF991B254485F2FC216B209B6C146D80A9B85F951E1DDF0E243
                  B6769DBFE3EF5BA21DEBEDABC264076653A81DD268C0133C776EA030551350D9
                  94F36C79E569C7E827CF5AEA36A6EF45EECA4CCE27464E57B4154D7965DAD431
                  4BBA33131728DCC48298E07D73CF30B24D9538A80562186219177ECC04A447BE
                  62211E58871852CC47ECA7FCE611A6A60A680AB4051A931E235C6D05118481D8
                  B594A300B3F7EAE7F41FFE58D5ABF554200FB8172E79DD5CBEAA31A6D4F07D88
                  22CE48D569CCDC6BD7AF88656D460D28CF79FD870E0F764E9EB6DCDAACF56F96
                  8AD52381083D556CD0C09678101558C94635C4DFA6A401BFF07423E9D96974E4
                  9A39F72BDFBEF7A6912D4584599A2164368DC3668F241A89F12930038C3A78AF
                  927CEAE83784057FF9759130352AA87C72F98F7CF60E1FD9430C0B28A46F1492
                  6DB011B6C266D82EB21115BEBDEF16B33DD1FD18EFBDA3AEE8DD0EB91D546FEF
                  CDCE1C7D0785025F7D3D4E98AA19A87C8AF93E3830C93160D8066BF3D67673E9
                  8A919913E41FBCB20D29D978235ED9594A49034C4997EA22CEBB629ADB3D6FE1
                  FBFE838706232608B33401621662176258A4DE921D0688AD88F188F588F994E7
                  0784B9A9025A024DE1B10431321DF2A1BD208230941C8EDD51B6277AF8BDFBDE
                  ED2FF2942AA860EE77AF58B3C952AD1EF5647029B8CECE13DFC654062E68762D
                  E60F6F6AF652C695081E3996DDFFDEFEA79CB39FFDCED6A26DB2B5517386ADE2
                  FCAD45F458610F35268CB2B0188E69D6C83A40B1CB8D97FF6F9866C22D2B188D
                  51E5E73BEA72156678F5C05AB709B3367DCCEEE837F87BCF966D4B02DF9F2E47
                  F951F59658AC0825996638468E0B6363000F2CBA8F3628B052D924DD4F623862
                  0C0BFE797EB630352AA88C0AF90F1CFA08A3F9CB4145E91B46227C0F51C4D568
                  643BF220B21315C18F3E2EE8E8D6E780D9286BFBA83B548F318B627BA2673870
                  E21B4DA712AF84FFED7DF9FC6FED5BEE183BF17BEA50D8ADF59A3073D1329175
                  62B425D8839B626874C3DB1ADA1CEA37FE0DFF3B46B429ED10B32262B3081FCD
                  5010373F5881591B34C7BDD0C9CE8953BFF36D7D7572E8CFF325C93FAA442116
                  205621662176F14D27B043F7788A99B75C0C311EB19E6C54F5B83634045AC22F
                  BC4079A7533ED247105388009E8544F1B10ECCF7D63E55AFD6C389EE751B975B
                  EB3D121145A3F468A8629B6904E75EB8143D1ACDD6D79440E9D70E1C3A3CDAD6
                  A1CB74D753334E3BFA0FFED9FC70AD1F938B96B980753ED8612E5F8D9F4BE21B
                  928878359CFF6F15AA5165ABCBCCF85DB9877FB175ED75964681E76C6D3BCFF1
                  BEB0790CA5ADC9F1891B013DD2D0C58B0BEDB8A41B237DF4888DE03F742428A0
                  3AA7CE0A869393558F32A8BC8AFBDEDB7F1C37A998B06668E491E1B5C448916C
                  E6B7C0501E901791ADA820D1C9E5E83DF06DDC6B698CA35144883C3AD9AD3B31
                  FFE75F2E547B75E4CD026DC5FBCAF631B6D68FCF411BB277EDFD33B5A933C925
                  CB5B71DB0FDA5AA41D3E7C453BACC2FF374B85EACC5ABD3E3357A2B65AA1DA19
                  C78021E7D0966D1DBA4EF7EF7B7F34DAB8F84CBA80D2CF8C588558C145D9006D
                  90FB8F623A623B623CD9A86A7001ED8086404B783C514A5F23A6AF20221051A3
                  4CBA2F72FFA577CB2BAA7A76A8E8DED7773E637DA4254BC6D663A5B4E34D8C30
                  B0BEF950153C1F85396FD5D35069017D2707B190BD679F3CD6CE3DCBFB76ED9D
                  EB59B966A56BDEF32B9CD366ADB0B5EDB4C2D6B2FD0AE7F8492BC8AE15AEE716
                  AFA0DED42ADF07879EB2F71F5C24ECB0E5A3BF2F20924B57D077EE0AFC786EAD
                  BDD7007EDECB1023290AA47C449D233F733FBBC01B763A55BF0A40F9A9E07B63
                  D76973B9CAFCC9A274B98A2DBD4936C376E40179419E44F6A2827E9BC93E60D8
                  361C78E69782EB1D5441D880B5FD96ED99FFC8D1B5A873C2DC74057DA740D866
                  2968AD56379763E2D4BABE37DF5A4882B3126D0E6D0F6D106D116D126DD3B364
                  C50AFF071FAE0ABCFFC1286BC326B9E8EF0B127388E4D215F49D5C885188553C
                  66E93D3B93428AE588E988EDAAEFC126CD80764043A025E95D07D35710419101
                  8C16300DE859FFC20291D7A8F0EEDA3BC9F6689B00367E5C97AE4EE4B7696057
                  D4CC399F52C5D3E452F04400954596C0975FBD6AEFDC831F72BF3CBDA437B1FE
                  44C2EC5AB4CCC25858D57A3640F9A9E579F1A50BFCC58A7BB31927A8DC0CD199
                  A33C60F396E7C5CD17903791CDA8A0DFDEE51C32721D463D7C6A5029FD781323
                  0D4C073769C97CBBDE7A15754F987BCB83CAA2186213DFB59FC65B5BB4246238
                  623962BA30352AA015D00C3ED38474E2D0214B7F410491115462DC7F5AAB2173
                  AF58BB861C77BBC877AAF0BEF5F628EB631D22978223C8C6A150A291CF63172F
                  C79C93A67D1966AC8C30F59605F93287FF8BAF76D95AB5FF4F0CF5F6137628C2
                  4F45CB32F7E2E597C846D553C5F4DB66EE35EBFE4D260131D265C76922E5815F
                  B8407942DE904791DDA8A0DFFECF3164E44273A51A9175EB38F4D45325BE2DA6
                  83AD759A30EF6B3B77A10E0A736F5920162126F1B3BEA8FB4A65174FC24F140B
                  10BBAD8FB5F722960B535305F9F2766804B482D759CC34C5A9BEC54710AF2017
                  C5EAF5987BF9EA6D947155E7A47CEF7CD0DBF6783727EFF160934911036CD010
                  A356C79827BF0F994CAA2F814E34900FF3F93FFAF8034BBD47222F565C5B567A
                  10B7F6DF9F33F262C5BA173022527DB0997EDBD6BD64B9D984A30746583BD392
                  94173E7D8CABD1288FC8ABC8B62A38478C9D6EAE568F25A3EEC73148DD90F47D
                  6C92B256ACC1BCDB5EFB007551987ACB013108B108E5C26393DE331A585EA058
                  8D988DD8ED7B67BFDA172BEE8136F0357B88A152DAE9C8B80B226F4459F3304B
                  856AB8AFF05D2A80ACA22C5285FFF027ED6D3DFB5A22BB16D367CB6D4C842862
                  2719F5981DC346FDE13FF18DAA8B081209E4BBA2BE77DEFB1C1B7DF85B864698
                  56241BF83B782486DE575F3B4B365615E646050B87BAB9162E7163572F7CAB7B
                  1D4B0F529E78DE288FC82BF22CB2AF0ACE0953C652CF3D8C3559BC17A97B19E1
                  507BA65CFCCE5DCFDA8DB84FB9A830F59601620F625064872BF956EF76883A86
                  5DEF14AB6D3DFB5910BB85A9A9025A004D80364023F4A85BFA0862A1922CE981
                  9C2CB96C65E69CFDCCC75410AA0E65067EFCA9997DE0F00B91A76F0CB0C88F8A
                  0771267BEC7D06FDE3FFE22B4D9E64C908209F55F2ECD8F93D76B39AE04BBD47
                  ED827829DD5CA9267635E3E1E772C2DCA8089BCDC35CB3E706D1A3E51B11F4AE
                  5BE949042C1C1BA0BC22CFC8BB28065570CE98D3DF52BFA997774CD379D79F2A
                  4214292FD811EB59B2F27BD44D616AC2033107B1277276996804318430933D8E
                  81C3CF23660B53530534005A004DE0DA202E9950FC463A32FE829842721C1A25
                  16FA9D53667CC65C1E553DBBD0F9BFEB39868FFDD584348CB29D18959168EBDA
                  DB14F8EA84EA8D1B19155479AB7B366F3D8B6DE7FC5578BD7D00628DFADEEC0C
                  E7C6FC070E61C35309616E5484FEBD34D1F9E45361FE1202CE6F1A213FE94DCA
                  233F8A427946DE5106A23854C135736E176BE3E64E7E9184113650213FD9F233
                  7389F2CCFDECF39819A82E4C4D5820D620E6A4C41FDDEB2DBE4F3119B1D9317C
                  CCAFE10B17EB0A53530562BF73CAF4CFA0057AEF8AD54F104188220EB1D2FFED
                  1C37E954E8C2DFAACE49852C962ACEB14FFEC05F8F8028EADD2B02B1784C79B1
                  3DDEDDEE3FFE652F616AC281024D0312C33FF9FB72100FA5B2D0814910C3471E
                  63FEFD070F928D0585B95111FCEDF7798E2123B9981A65D356DC88BCA2DEE216
                  182A039485281655703D33BFA5B5592B336E3EE2174018A0EC52A6BA5DCF3CF7
                  27EAAA3035E1E03FFE452FC41AC41CA37448F881F9626519C5E63321B345D552
                  05623E623F3480E745E758AEAF20821045D1BB718C1AF76BE0CFF3AADE40C308
                  807A1527E000231424ECE7975763DEBCDD137EDFBE77470A53130654E6AD3C6B
                  3624F3209A8946864AE5106FA2FEDC9F93D9F062C5972776938DAA1EAA0602A7
                  CFACB4F5EA1FD90C64840B04F420F24C794719A02C5026A27854C13D6F612D5B
                  8B767FF33A61984B18A8939CA32073CF9A9B1C3625B712A6260C7CFBDE1B696B
                  D7D9CFF75318A123821DDDD8EC8887C4C73C89C79D55CDCE20D623E6739F4103
                  0C30B0B98DEF1653F887B81205C2AF462ACE1C83865F0C9C3CD9549459AAA082
                  CFE39A36FBB0B94439634C75E1FB080C0F50806ED12EEC7979DB14616A864738
                  E0EFEA7A6EB1838FE8A9211AA2AC3132792017B3B6E9C80227BFDD4AF5E13E61
                  6EAAA0DFDD19F8FADB17EDDD7A472E7336C2E6103D29CA3229532E863241D9A0
                  8C4471458577FD0B956D8FB5FFF1F215667A97253A49D84D9B351F2EAD77842E
                  5CEC2A4CCDF0404C416CE1175F18A1ACE9FB5CCC480C6D5D7A1E0EFDF287BAFD
                  2014E311EB11F379EC3742FB232DBC8D576223A8331651B1189BAF28B3F71D9C
                  1CF8EA1B55E7C6A8E1E670CD9DF7B6A57C557E83052F583D0B17DFC67A56E6DC
                  CCDAB019F36C7A79BED69782C71B61AB75A86BDAAC4032DE8FC35668BDEB0ABE
                  4F75163B5B1D3DFAB2C04F6757533D50FD7C53E0F32F5EA7513C8D2C731863BA
                  C92844678ECA04658332425989628B0AFFBEF72A53800BF2CE9211E249111245
                  0AB4B8C3D331605820F8F32F4385A919128821882588297CDDDE08C75E404C51
                  97AA808ED4DBFEC31FAB3A0B8AD88E188F581FB9014921DD7852C41368E16DF6
                  3E03CD7CC88B8CE97D351539D894970CA3D19EBD6B6FBBEFD3E3AA7A76D4701F
                  703DBFF44DCBC3B5F8B9A494B4AE4B3F9E445EB2E4E597827B366E5E41366AF2
                  EA7CBC1132278F733E398525F333A091A96DC5FCC68B5479F92EB63B1E60F6C8
                  BAD742B5654BBFCB16F8F244E4C58AFB7346A64995BE114FA23C31DD848EA9DE
                  650B5299A06C5046812FBFC24B19AA2E7FA7DFDD19FCE5D7E7ED434772DFF05D
                  E07A8B22CA13F9A17668EFD59F057FFC49F39732E201D46FC4107E49376E6D31
                  423D212661FF46994ACCD17BE09BE17367555D4E8E988ED8CE3774E10927BDF3
                  821DCA7CC9ED41062DBC2D7829A9B673DCA4AFF91B689876D4BB12E3FB29D38E
                  1DBA047C7BDF51F5061A1AA47BDD0B9B71BB4152CA553F7A13859D2D5FE466F7
                  A5AB5E221B554DE91905A15F7E9BE51C3D814F4B1AE2215CFA3E3F724375C339
                  61320B9DBFA0FAD5032AFB82BE831F1EB7D46EC492EECA6C8CA002718710A2CE
                  63879D51368851D9A08C2CB51B32DFC143B8145CF526A5D0F9F333E01BF82865
                  6F80E237E249D41B4C0777EDCD029F7E364B989A21809881D8C15F00C20E4CBD
                  072D29A4011476993B068FC48B15EA2EE9A6588E98CE8F696166C6005A93B231
                  9034F09BE02553E42C3965A88873EAAC237C2D0E57FEE85D8951501045DC72D0
                  A25DD0B3FD0D553D3BCAC7FF3C2FBEB4D48A57B031A231CAFA280934CEEBB99E
                  5B822BA6D2F5A50CAD40BDE9257CF72546DC7CF4A290B778135360D4109DD366
                  05C23EEF18616A54509997F4EE79FB94B96A1D9674078921D232401D8F6C312F
                  4D9DA595E7BC3BDE38672E5B393272D5DB36F17D9415CA0C65873214C51915F0
                  0D7CC4679DB03E746DFA7A904F075327BB6357E63F78688930D5D040AC40CCE0
                  677D8D3232C49579E45373E55ACC316CF452B5CB419EED3BC72196F3B86C0431
                  445C26AD83E639A7CE3C42657DF57BB0F43F14703D3DEF034B396A945807504A
                  249E84F3B116470A6E69DC22ECD9F2AAEAF7EBBC9BB7CCB13669417F4B3D6E83
                  6C98403EF020A673CE3CDCCE9353986A38906D77047E3CBBCEDEB37FE4F92D9C
                  33D3BBFC201E183D514372CD9CE361E1F060616E54507E2A7BB6BD76C65CBE4A
                  64672CF2A2677EC4F7931EC8CDCC652A33F7CAB55F938DF941EFAE3D27F07417
                  3F026284B740892833941DCA1065298A352AE023F88A0B911146BEC80F6CC19B
                  8A2DDB31DF810FD7A1AE0B730D07B22D2762057F305D8C627425CA0F038C3C24
                  86556B33C788717384A95181D88D18CEF36190B54F681CB40E9A4765ADFC1A10
                  FD430EF7A265BB2D956B469E5D3280E1BC5142141B3463DE97B62E54DD2379F9
                  9571D6C7DA47A64F0B1437488F84468AE891CC7A0607C7554F43C50B64D33DC1
                  93DFEEB0B5EEC892EECC145963D3BB0E60DA190D297F314675D341367612E646
                  05FDB68A67F3CBE7F9815FF44C8D1094714BD33DD9780FDBBB79EB31B2F1F2C3
                  BDA813FE0F0F1FB3346CC6926E7FC018C1039D11D45B2A439425CA54981B15F0
                  157C06DF711F1A61BA8FCA14CF61E1B16CDFBE7776908DAA370EC50BA8078811
                  91193B038C0CF17D0C4E68C48F754CE7D889AA67EC10B311BBB9FFF5CE07081B
                  2086A471D03AB231F58D40F483FB3CABD66DE5C374EC2834422688A6CC7999B5
                  7623E6DEB86983DA4AEC7B73CF105B9BC703FC061223047704174C93157C9039
                  264EFD2E64B19412A6EA0E548CC0D1CFDEB5356FCD4C771A645A51ACC162CAD6
                  BD624D12D918CB0B0D2D3DEB3626E1826F3E4231483DC6D106FE60EF1BBBD033
                  BDAE31E27FF31FFFE2035C32C09F9D524823EEA4B24319A22C3D1B5E841F1A0B
                  73A3023E83EFE04343AC81A11E203F340AB7D4ACCF7CDB5FC38C8D615ECA404C
                  406CE07B3AF894BA013A7110C3ECE4FFDA8D02AE2933870853530595E93DEE0D
                  2F6E44CCE6D3BD4A69C79BF03B6E33226D83C6918DEAF674D00FEF72AFDDB89A
                  3FBF016517895DF78178517C9B5FE25BB50E732D59B99D6C54F5065AE0D047DD
                  EC9D7B7AF9356F4658E4E7231EB285FE6FC7F0B1BF04CF5FA8214CD50D5496F9
                  7D6FBF73C4DAA0294BBA2B4BA48CF42E27FA3EF777C9F29819F89D6C54750D14
                  808A4EBDBFAFB05125C94857CB516FDFDAE851E6DFFBEE6BB051987B1DF06FC1
                  53A75EC37A175FBE30C86E581ED830525FB6C24E36C6F2B6645DF890BF2D8969
                  7823F8A3082E81CFC9470A9E0D2F600D29BF30573720162026C03E1E238CD079
                  C847758FE2A6B56133AF6BCE3C5517C1535966A118FD2A6275C4DF222DA56FC4
                  83E2DB7CA611CF0F92B6918DB13F2CED59BB71013FF7824CE93D7D9392290A70
                  E687AA32D7BCE7F750A654ADC5E1B6757BAF010EFE9C0F16FAF5CC0788EF635B
                  7A8192CC3E68F8C5D05FE76B0B53E30E0402EF5B7BBFB0D6692C76932AD81B4F
                  8ACD3B7C5A91FCEC7D75C7AF64A3AADB8B005474C7C0119BCC251E0AF31EB611
                  7C0D31A436646DD69AF9F6BC8DDDC651DF02C56F025F7FFD92BD4B2FFE18AE21
                  A6AFE9FB10759C1F732D581460C1605F616E54C087F0257C0ADF46D2BB26FD78
                  93E7271FB354A88EB5DC2FC846DD4431F4D75FB5100BF85B93FC6C9ECEBE06F1
                  7C536E12C3471E73B8E72F54FB62454EC466F8196740793A7AE605DF4E697F38
                  174E9A264CBD3978B66C9F616DFAD87FE7B6F476149F76A4512BF5FE5D33E71C
                  2207A87A032DF0DDA9C68E4123FEE553A7063AF3854AE7E83724C97FF2E423C2
                  D4B881CAEE41DF9EBDA7CD156BB0E4949900BD497EC1CE564B8DFACCB77BEF69
                  B251F503CCF4DBFB1D7D06EDC253403CA828A51F4F8AE9AE24EC6E6CD389F93F
                  F870A9305535823F9E5DEAE8373872BE964667469842E3B715E1E8CB94192C64
                  36ABBEA210BE844FE15BBE7BD9086D10445DA1D1AB67E55AD4B70785B97183FF
                  DB938F908F2FF1F3A806990DE09BE9F297C02EFF7FDDCB57AA9A22A7B2CB8798
                  1C79589BE28911A67BA93CF9B95AD230689930356DF0BDBB7F1435687E0B8521
                  EECEE3D38E54E0C5F16AFD54F4EC54ADC585CFFD8CBBF3FEE03D06A38822CED5
                  D148C6DE7BA0DDBFFF4047616ABA83CAAC9A77FB1B7F249378F0CE8E926D7127
                  055B1AA55AEA3661FEC31FC776FEEDFB5339EC3DFA1E36172F1BA91B7AFB161D
                  376A8CB823D4DEA91BF31F3DAE7A57DEB508FD757E8E63E8A8C8DAAE119EF841
                  DE484492EECEC61CE326B1F0A54B9384A951019FC2B7F0716446C2006D90C8A7
                  A6A9CEB8172DFB036D43989BEE409BB7F71968E7B31958D251B02DDEE42F9814
                  2C8E4EDC1F9EE5ABD5DE2D5D0AB198BFD68FF66780E9DECB774B937641C384A9
                  DAC07FF893FED4B03D7C83022F300523E24971BB8E1917CA8E9DF87DC8E1A828
                  4C4D15A1DF7F2F43BFFF0EE7BF0C510111B8218A5489EC4FF4F492E3FA0953D3
                  0D54799B79366E4E4A2E4E3D390425BDC5437C9F6F856ED48CF93EFAE47DB251
                  F525DDDE9D7B8AD81FEF7ED48C8BDE8DD0D1C1F7A98D609A06C75782DF7E9FE6
                  3B6D4349A629CE0953585266EA941AE1EE478832A6D432E7C6B43F0B9E3DA7FA
                  A50CF8163E86AFB910213D03F88CEFE8A4CEB26BD63349CCE355BD81EB6681B6
                  8E36CF0504B148EF320031E0A1FFDADA3DFE9D6FFBEBAA6667107B1183118BF9
                  D9538ACDD7A51B6FA2FD915641B3A05DC2546DE1FFECF8E3B6EEFDACBC076104
                  07E2FBB923F3ED8E11E3CE864CA69AC2D454410DB2A863E2D4AFCC25C4FB5B46
                  C8071C48C1CEF658FBB06FEF3B6385A99A83F2DE8E7AC19157E121864699D6B8
                  373BB3B57D9CF98F1DDF4936AABA060A081CFCB0B8BD7DE7AF798F14A327BD7D
                  49E4418182AB63E8E840F0C7B3AA76E5A901F3F986389F7E368086CE2FD050F8
                  765C89B2462F3C138962EF012CF0F3B955E4BBA8EBA3007C0C5FC3E7FCDC25A6
                  0AF5F61D3AD9244E285FE7934FB9C3FF5E6A27CCD51C68E368EB7C9D0DF1D400
                  F51653C710355BC7AE5F79DFD8A5EE7DDA24534DC45E6EBF88C58A69C78BF83E
                  061854A6D02A689630357DE0FFE8E396F67E43CCE889479EECD0BB0010800A71
                  5BEC43469E0F7CFF83DAF9EEFCAE19738F2797ACC0927060DB08C2C0177F7333
                  6BD356CCBBFD0DCD5FCAA03C7771CD7FDEC32F3DC6062323545E4C2BFEDF7DFC
                  0691C0175FBE4A36AA3E2CED5DFF62195BDB4E3FF23A88A0A2F48D7812F9E1C7
                  0BF233E7F8C99EF0CFBFABDA95170BC23E7F37F7C2A51E041F3E5BA3B70F4174
                  68B2E466B66EBD58E0C71FB7900FD55EB47E077C6EEBD885D701638862291E4B
                  9248189D23C77B427FFFDD4598AB19D0B6D1C6F94511D4E68DD00E795D2A5696
                  D9BBF43C1EF8F853559B8B106B1173B1F186DF07AAF7262974682086D436A051
                  D02A616AFA22F0E5D7B51D8346FCCE8310174503AC698840443D5553E0E8B1B6
                  C2D454410D32AB6BC1E27DE6F2D5A8411BE0002C58B87444141B34679E175E7A
                  5E989A66842EFE33DC39E3E9000257A423A37F07C094B7184BBA2F1B55DEC12C
                  70EE97D5E1DB6E53FD2A8867F98ABAB6D61D2FF06DE14611436C8AA03C39274F
                  B7842CE6749B72A37ADBCCBD728D25F2A283017AE5203A36776666B80C23F0F9
                  177BC946555714C2E78173E7D6A00EA02EA04EE89E1F7C1F224FEDD031707820
                  70E2EBE1C2DC34036D1A6D9B8B21966D94BE1F67A20E99F16245AFFEFB98D399
                  55989A2A1063116B11732FDFC7AB9076DC88EF23AE512C803641A384A9F141F0
                  EFBF1F728C1CF713BFDB0E67660A19A040208A59F3E2D57A97EFC0819EC2D454
                  410DF71ECFF235AF5A7011815843504C3FCE844063E3817BC5AA35C2D49B46C8
                  6C9EE89C342DB2F3CB0801143D498C52EFCFC91CC346B1D0A54BCF095355C1F5
                  CC73CD6D8FB6B55CEE90297D239E44870C3D640AA2AE69B32F3287BD913035DD
                  40F5B6917BD5DA8BFC816C23DC3F2C4424E98E4CCCDABC0DF37F7A14170FA87A
                  1B0F401D405DE01BBCF81AA9C237E249E487C419656BEF3B8851809D284CBD69
                  A02DF3CD444639A80E621F46B987997DE030CCCEA8BBF084622B622C8F974610
                  43D21EAE41A445D02468933035BE08FD7BA9B473FC9453C945CA18A8515225A6
                  C06F6DFB78C0FBE6EE41C2D4544115E17FEE55EBD6F15B15B0C06D84971D20CC
                  E4644B8D7AB8A5E565B2F16E616E4C08279BE738468C8D5418545E23F8884419
                  53348EF19358D86A8D696AD83D67FE1396C68FBAF82897EF7856F8463C89C688
                  BA5FA43473CD5DF0270B852237E6C7015427EA7837BDFCA7B94C451A71607314
                  05263DFD8B6F63DA9FDF02D380F9F6BD1BD31585A80BA8137CFACE101D37FA3E
                  75BA10136C9D7BB2C037276F6AA730DA2EDA30DA32DAB4513ADD8807E68AD598
                  73E070DCEBAAEA0935C454C456DEB9C6312003F828D2FECA306811344998AA0F
                  A8200B3B67CD396E2E53890C33C8B4232F24AAC42DDB31EFEEBDAA7B769EF52F
                  2EE6F7EE61A1DB08F920F2916285AACCBD68C55B54D69984A9AA103CFFF70A47
                  FF219183D01010BDF384B53E043A0A0ACEE9B319B3D986095355C135736E2F4B
                  BD4702A69C058C73151F0ECD93187A96AE3A47FE29274C8D1BF04DDF1B6F9E43
                  2F9FBFE481323142B9E0F84CE51ACCF7D6DE6FC8C6E2C2DCA8409D40DDE0C281
                  BA62803D0AE8782561D357EBC759E0B3E32B84A9AA80368BB68B366CA49121DA
                  10DE8F750E1FB358981A1588A588A988AD86888F64033407DA030DA2B22E2C4C
                  D51764484ED7BCE70E725144CF41C9F878133DD52C79F80615CF4BAF3C2D4C8D
                  0ACFD6ED4FDB1E69C9B793EB3F1520821BE5C35CF661BC947198CA3AEA3414FD
                  E6CEE0B7DF6FB675EB1BB98ACD20EB327CF19DEA876BEE7C77D862E923CC5505
                  E7C4A9C368041FE641123D6CBDF38305FCCCB998B97425E679F1E5AFA8CC55ED
                  CA4B0FE0DBFEFD07BEB254AD1B1168BDCB06C45961EA58E2B506EFABAF9D251B
                  AB0B73A30275037504750575C6087517750E1D4B5BB3D6CCFFC1C1CD6863C2DC
                  1B827E93076D166DF7F2630946C84B8E82CC5CAD0E738C1AAF3E2E520CE51B81
                  900F838C70513FA039D01E2A6B63BD2044063DE05AB078277A1DFC7A34850CC4
                  9D5C14698445A33EF7C64D4BC94675D3023BDE18636DD93EE27C3E2DA7732526
                  614E822DFC22826927C21EF70D832FE5F11EFF91A36FF2172BF06282114652F8
                  3E8EB7E01ECCC5CB9C64634CDBD99DA3C64FC785D87C0389111A23AF57B9199E
                  6AF2BEBCED23233446D8E0FFE8E38FACE8CCF15B6DC8EF4AB6C793E4777ED562
                  A90ACCB379CB5F64632C9782B7435DE1D37246391A559044F1EEACCC52B73189
                  FC1B6F928D375C73431B455B459BE56D57EFCE354875E2F28B15E3A7A87A4F94
                  F2F83FC44E3E738611AE41C4101A03AD81E6908DAA8F69C515BCF09E5FF2B219
                  C12BE55265BD2B322A01D962A9D180B9D76CD84836AADAD6EF7BE7FD41B60E9D
                  FD7CFAD408BD5434A8EC0598B95819E61837F1DBB0C35942987A1994B7CCFE4F
                  3FDB676DD126B239019557F740824B94B33333FDDF9E956B2C64E3A3C25C5570
                  8E9AB0C04AC2C37D6084C648E5C9EF45A4A0E87965C7DB949F6CC254DD015B7C
                  1F7DFC36767AF291A292FD3A9007D2E20FE112ED8B64A3EAADF0A82BA833A83B
                  A843BA6FDC136D89C7935A8DC8FFAFEE231BAFDB4D8BB689368AB6CAA77E8D30
                  D384F3A29826ADDBC4EF9A325DEDDE8A3B1033113B793CD7BB93857CA0FDA193
                  451A03AD211B550D72748567F5FAD5D8A092C46F41111951CA60BCC80B310FB3
                  54AAC15C0B97BC4E8578BF303555F80F1CEA6CEFD1CFC917F98DB00687EF6367
                  6581E2D84D75D67FE6ECE5DB79284F057C073FFCC4C29F5B2111D7DB5610E50E
                  612E559179B76DC70841F586135474C78871EBCDE5AB47661C8C208614D8528E
                  C4F876EFC58B15AAEA513C019B029F7FF19AAD4317124571259F01EA2DDFF840
                  7E742F5A66231B637929A30EEACEE52B068D52AFB3E767E60AD59877F32B9F90
                  8D971F98459B44DBE46FB0A2AD1AC15ECC72E52ECC6C8D5B385DD3677716A6A6
                  0AD423C44AC44C23EDA9C0681B0F11406384A919039E97B63E636DDC925F6C6C
                  88910AD63448A0B1F9C035673EE69C55BD81E63F7AACA5ADFF10139FAEC33933
                  A5B4E3493446D892AF28B30F1EF1AFFFE34F6B515E8AF9DEDBFF15DE7733CC1A
                  12116FFF991FAAC27CBBF6FC48369615451A15F4DB7B1C0386BC622E5745ECFA
                  554E3F6E447952C70E656B6DD292F9F71FDC44361AF9B5F53B02DF7DBFC9FE44
                  0F3EC577390FD7E62B9E4467824431296B5EE67A76819BB1B0EA2B0A51775087
                  509750A714D38F37D10E3152249B3C6B36620DB958F0CBAF6BD9078DF897DF02
                  85366A847688912109B3B5592B937BF95A55A373CA4B0EC448C44A7E9B156E81
                  524A3B9EA40E06EA0F964E3CABD73E234CCD58F0BEFEE634EBA36D22AFD6F3B5
                  38858CC693A8C47C21B632734E9BA5FA0DB4C02FBFD6770C1A7E01B7BF1B6683
                  0ABF6DA6000E0E9B3D1B37FF85F52C434D93A1F2E2C58AB7DF41B050BDCB307C
                  EE97CC8E9EFD77994B57E48BFFBCACF52C6F7C9B3A744954B6B6D69D58E0934F
                  17537E0C3F4D031B83E77E5E6CEF3B98EF903444BD852862B6857AF9CE27A704
                  42972EA97A791D401D425DE22F6560B4A9947EBC897688E9BBD295987BC1E2BF
                  284698218486B86B16C41427D55D5B8B36173C6BD7D71745992A1013111B1123
                  F9064983E403E77C2DD5EA31E75333A709533326BC7BF68DB475E812E40DC108
                  5308F83E7A6F25CA51E1CEF832E4741613A6A68AD09F7F56770C1DFD1B6F0498
                  C2D37B5D0014BD3F5EF171C650E937F1A4F02D3F87D6A019F3EE7BF72835B0BC
                  A208A3C2F7E12759ED5D7A1FE4AFDC1BA1878DEF53B9F27B56BBF466FECF8ECF
                  12A6661804FFF8739663D4F8C87DA158CF324299529D85A839474F08862D56D5
                  010E7509758A6FF0407E52D2BBF61BF1A4C80F27DA203AFE4ABF8B276113BFB0
                  E241666DD5E137EFBA8DAA76F82216222622361AE21C2888D84679B1D67D24E8
                  9A344DF55363868677F75BBDEC9D7B7A78CF4EEF85D9140A51733EF9D4196632
                  ABBBD5DD62A9E018F3E419FE4C1176BE19612A0134C86613942776B6E2ED31FF
                  FE839896CE258A2E2ABCEFBC5FD0FE44CFCFF8CD2B46E9385143C4061A47FF61
                  A1C0A9D31384A9190EA14B4913A8D71FC25A50E4CE4963043AECD4750C1AC182
                  BFFDB6201C0EABBAB60F750A750B758CEFA246C7D408F931421B04310A873017
                  2AC96C6D1E3FE359BFB98228BA5481188858C8CB13B15129ED78135A41C26C6D
                  D8CCE39A34BD97303531E0FFF4681B7BF7BE36DEF347660D10F0F8A8957A74CE
                  51E3FF0AFEF1572D616AAAA00659D83975D6D1643C750251D4FBE0B011287C69
                  BA330BB3B5EAC0025F9DC09674D59708785ED8FC90AD439753BC311A61F31288
                  514CF6FCCC3178A427FCFB9F0384A91916619F6F80EBE9673CFC5A345029CFF1
                  269531768FDAFB0CC4F3516BA8CEA8BD143C13EA18EA1AEA1C4FCB0875467746
                  9652D051B73FD1FD6870EF5E5507D511FB1003F98C1362A211CA121D0CAA1FD6
                  C62D6CDEE796B411A6261682DF7DFF88A3CF2073721E721AEFC5E85CF0E84DA1
                  02508FC8D17FA839F0C5574D85A9A9821A643ED7DCF907F83CBB816E9FD085F0
                  2189187F08F7891E2C78EA34369C443DB49C02F7AA75D5A827FB33174323D409
                  911F539EA298D2B386FFFDB7BB3035C383F9FDDD5DF39EB3E2CE473E0A304259
                  A3E3714F36BCB2C00227BFDD4A7547D5A5E0A863A86B97370E19A523A5234DB9
                  C8A7251E6234F03810FAF1C77CA2A85205621E621FEA038F8568870A69C78D29
                  ED8FC4D9DAB495D9BD64D523C2D4C444F0ECCFF51C43465CE40DC1480EA00A61
                  EFD6C7EE3FF685AA43E3D420B3BB162CDE6DA954D3388BFCF1664AD93D9093D9
                  07F247625750B9A87A0F0FF02C5B59DFDAA2ED9FB8862D722389C237E2497490
                  201424CCCE49534D61B325E17AA6E49F36EEA52B4DC82FBF6AD108ED8F825FD2
                  5D591936E0F93FFF02B30BAA5E5C405D439D43DD431DBC954511336FD8DCE3E8
                  3D703773D8543DAE8D588798C7EBBC11CA4EC4134C95DA5AB6BBE85EB2A29E30
                  35B111FCFBEF8ACEF1537EC6B0D8280FF49A0A14E7BB616D9DBABBFDEFA97E29
                  E301F7F2D5AF60F79391CEEAC48DE8D464CAC99C23C7B1E0AFBFC5B415DA3DFF
                  F9476DCD5A25618DC084279CF42E3B3CA584D13E09B36BE6337F33A7A3893035
                  E140F5B68967DDC6BF79BDC7AD3646580B2761C648CFDAA029F37DF4315ECA50
                  BD190B750F75107511755231FD44257C08317CA80A730C18FA0A629228965481
                  188758879887D86784D8C5A77B4913ECED3BFFEC5DB3E1F219EB5B02E4B862AE
                  194F9F30E37CA051CE9AE1AC4BF602CCD6AE73D8FBDA9B8385A9A982F271A77B
                  CD86D5D65A0D8DB5D126BD89CE0C8D309C1326B3D0C58B934471A8826BDAECCE
                  D606CD6C7CF11FBBF2F41EA56064282EA6773FBFE427F2A9EA7B37332A9047EF
                  EB3B7F4A2E5581254114751F2912E1877BB2455ECA78EBEDCF112384B951813A
                  88BAC8FD68940D2EE94D7E597E617E418073E0F0D58845A2385205621B625CE4
                  C9248388215F2E29C5EC4FF43CE17FED0DD57E4F289003733AA73F7D186B7186
                  D8D9848A81E9BB6CF919EE32F56E7F4D55A0C70E39EF8B2F3F6FA9D398FFAD62
                  DA8942044EBEDE5090B9A6CC08869DAEA1A21854C13971EA206BDD266EDE00B0
                  8BCC088D1167C91EACC03CCB569DA43AA96A575E220079F5BEB9FBA4A572CDC8
                  1956230809D5077EE0BD6A1DE679E3CD6FC946D56FDBA12EA24EA26EF278A2B7
                  C8A727F10E6DAE82CC52A93A730E1BF3BCDA5DBA8869FC9E66C42983B43F4C93
                  9A4B3EC46C9D7B1DF61D3C6CAC4BBAE30DAAF0D9DC73E67D60AE503D32656504
                  075145E15704357D8C79B76C7B56981A15EE45CB665AAAD5A39E172A1B051723
                  E4454B62344FC10A6BBFCE39F35C61B7BBAFC8BA2A38274E1B63A9D5D06BA87B
                  49218615AB33CF0B2F1DA3BAF8A030F59601F2EC7B6FFF316BBD2691E953BC05
                  AA545671269620F8D568DB7660C45E45981B15A893A89BA8A3F06DC2CDD820A6
                  506C41FEA8D310768E7E72A6C87A542096F1E32AB8DA1162A8947E3C89F6C7D7
                  3E2B62FF06A6C90D732FB0AEA082C8E25AB068A7B9520D960C512C6280857EFA
                  2FBFFFB4EE23CCF3E24BAAEFCD734D9E36D65ABB5128190DD2283D302D88E9AC
                  4C2486B90B31F78AD566F2597B916555A091E1CCC88B15D47337D2488446479E
                  AD3BF062C5E5FB286F3520EFFE8F8F7C6469D8CC5057FF71412B518E795EDEF6
                  27D95857981B15A89BA8A3A8ABA8B3093352449D454CA1D88218835823B21C15
                  886188657CAF8348EBBAF4E349F80447F04A5762F65EFD7732B7378B305502A0
                  4A7CA767D5BA972D55EA442AB1DE0EC3F789B8F60AD7A2B997AEDC4236AABABF
                  9246BCFD2D0D9ABA2E4F0B2AA59F91887B3CD1ABA48E0A35AC0B540EAAB742D3
                  6F6F778C1EBF903F0B460D39929EFE8D11C116EBBEDE3776EF261B55DD6B9BC8
                  401904BEF87237767AF21D9B46385F8B1909DC854C6DC8BD667D32D9D84A981B
                  15A8A3A8AB91CD52D8F0A6907E46239503620A620B628CC86AAAA072B803B10B
                  318C5FE127E29A62FA71241FE196AB82AB27F16285EA635AB714A860FEE7D9B8
                  79B9B56E9388286224A1A7F3C4B7B1506FA95C8BB9E63D8F973254EDE272CD5B
                  D8D9DAF85133CED318E23AA7341053D9D8C5E6DDB61DAFC2D716598C0AFAEDBD
                  8E4123D699CB578B1CB1318A3F7149778366CCB7EB2D9C7BBB57987BCB036511
                  387972ABAD7D67BEB925D908BB7FF9CC442E969CB31073CD5FE80A7BBDAA5E6B
                  0050575167517733FC79618A21FC6C1EC514C41691C55441F97F00310BB18B6F
                  36423A7AFB93885880650AC7D051CBC946C3DF0BAC3BDC1B36CDB1346B1571A2
                  1146585489B813F16AFDD3F3DE2327AA3A27E57A66415BEB232D2FF1690E235C
                  AE1C2B916FBC10420DCAFBCAF6D394EF8745D6A2827E7B9FBDEFA02DE6B2958D
                  715D18A6681054EEC6ABE76D98EFEDF7F036E60D1F78BD558132097C7372A3BD
                  7B1F66BA3373E45C98DE538EA83B3432423D72CE9C1B08D91D0385B951813A8B
                  BA8B3ACC5F6EC8806D10B1033104B1043145642D5550BEB352AC7A17318B7746
                  8D906FC4C11C0599A56A3DE61831768E3055420D3C3B5E9FCC5FFFC60615A3AC
                  3941144B5764AE99737069B5AA9732DCCF2DAE6F6BD1F63C0FC63823A5777051
                  CB22A5F90B0F96EAF59977EF3B5F527E4B8B2C4545F8E2BFD9ED3DFBEDC1CE4D
                  7E559F11022ACA9F463D78273070EC8B456A77E5DD8A40D9042F5C58443D78EA
                  4064155BE2750EA81829E2DC2B8DF49C139F0A87FEFD379697324AA30EA32EA3
                  4E67988D3622CFA8BB88218825224BA902B109310AB1CA306248311CBB7FCD35
                  1B32D7E4699385A912B1C0BD70E9606B9DC63EDE20950A39DE44C52281C66B0C
                  CEC9D34F85DCEE52C2D454E159BDEE615BEB8EE730E561CA08B769907D7CEDB4
                  667DE63FF0E161B5E20F843EFB3CBFBD5B9F43B842CA108114A472C73B7A78B1
                  22F0FDE90CF762855E082799222F6560CA12F556A96CE349D4A5BC45F8795FC7
                  D8892C74FEEFE9C2D4A8401D465D469DBEBC96A6F40DA390EC43AC40CC40EC40
                  0C115949158849884D8851885546C9276EA2422C77CD98A3EA7CB7C40DE09A3D
                  B7A7B5DE232E1335043EE4D6DBC1A8A8B8AAAD7069661FF3E4CF813FFEAC2C4C
                  4D15DECDAF94A5D1C9093376D0E24606233648D894AF78E4C69066AD98FFE867
                  7B2990E41659880ADFC10F4BDA9FE8718C3746238821BE8F5145CE42CC316098
                  3FF4FBEF6384A9122A11B6DBC738A7CDF4F38E9C11EA2DBE4FB6E03201FBE091
                  2CF8CB2F0B85A95181BA8C3A8DBACDEF3F35C21AA91261130EDC53AC40CC40EC
                  1059481588458849884D3C4619C15714B311BB11C311CB85A91269816BC6D31D
                  AD8D1FB5F25E2AF5980CE1681CFCCD5F8C39868CFA2D78E627551B4D7CAFBD51
                  DCDEB9E7E7C9C5CA19635DED4AC216AC55DC993932ADF8CDC9D72880A85A2B05
                  FCEF1D2867EBD0F56B3ECD6384113DEC400F3B5B7EF8C8173AFDE32061AA448C
                  601EEF20D7CCB93ED4595E6FF59E0207E15B1AE9D97BF667C173FCA50C553BC0
                  51A751B751C7F91AA9D1D6F6C9165EC61423102B103384E9A9023108B1083189
                  C726BDF384EF2356939F10BB11C385A9125AC0BD70E923B647DB5CC4D01BD4DD
                  E122E02667CBC7EC7D072751CF53D55184E02747F2D9BBF53D98FC60F9C8391C
                  A334464C2BE2D5811E7D59F0E4772F52E050BDFBD2BBE9E56AB6561D7EE22378
                  9489DE79C2767DEA6163FDC43166A23D7CFEC2E3C254899B4438187CDCFDDC62
                  3B2E55E0577EE9BD0E876314054AB22412356BBBC759E0C4D76FA8ADB3F81DEA
                  38EA3AEA3C0FDC4ADF8837D16E101328362046205608935305620F621062118F
                  497A7758281FBC334A75C5D6BCCD45C46E61AA8496F0BCBCAD96AD55C79FF9EB
                  084608BC10456A4CE8D1D9BAF5B1790F7EA8EAB03A63814CF6DE83F6E0767A43
                  E403E599390FB30F18CA427FFDB5840286EAADD0EE454B1BF18E4A9EA2C65833
                  844F480811B49D936724D3E84636468D40F5E211CFAAB5C97C1A1A07BC0D1078
                  B159E3D2EDF7336BF3D6CCFFF111EC0057F50E27EA38EA3AEA3CCF0B3A734ADF
                  8817858820262036204608535305620E620F1FBD43D88D2286549E14ABCF2166
                  0B5325D203FE5D7B2BD9DA75FE963B1E62A2E49478128D928B624166EBD0D5ED
                  7B77BFAA2DE12CC8EEA15EDD4BFC58825E538CB01D9517D38A838787C3172FC6
                  F462856BFAECD6B6262DCDBC876D84F518344671B9B3EBE97917C23E9FAA5D79
                  12EA414252DFB3E1850B666C9AC2661B253FC493A2CE253D901B8FC932FFFE03
                  87C846D52F65A0CEA3EEF3BB3D75EC9C220620162026203608F35205620D620E
                  7FBE096D50EFF607A20C29362346FB77EFBDB55EACD00BFE7DEF94B677EAFA45
                  72B1B2C6D8BC01A287998344B1ED133EEFBBFB4709535305B6B7DBFB0F5D61A9
                  583DFEB7B8E0060F6A48B8C5C339614A2864B13C29CC5205D79CF9DDAC0D9B3B
                  F8B6707EE05EE11BF124955B52A6DCCC5CB23C732F59FE2B05C5847FB1422FA0
                  6CBD6FBCF92B0E5727DD9B4DD91F3A109779F09732F6BD839732548B22EA3EDA
                  00DA0217176C7C53485F73A6B4756AFB88018805AA2FE9A61883588398A3FBE8
                  16445E108B2926DB2836FBF7EE2B234C958807BC7BDF2964EFD2EB307634F269
                  47234CDFE42F11B914BC455BE6DDF1C6346A94F70973538573D898E770A76612
                  7F8E45216DAD49658529455CE6EC9A39271872BA86085354C1356B4E7F6BFDA6
                  3EDE008C704694C86FD32131F4AC5E8F0B0464634C67A08CA90D9EE60F641BE1
                  AA45414C7F9AABD565DE5D7B4E918DD584B951813680B68036C1D748E3114FB0
                  064ADF42DB470C10A6A40AC414EF8E9DD3AC2DDA894BBA75BEFD09443CA1188C
                  588C988CD82CCC95882782DF9ECC61EFD1F7EDE4920F450E80EB5D31B828168F
                  1C006FF338F36CDCACFA9159E7A469537170981F2F494F91C1BDA4D81841233B
                  F782E7ADCCEFEF2E4C5005CF2B3B26587149B0D12E4CA854032F567C4601E396
                  BDA43BDE4059FB0E1CFA0CA3325E1F8C208A851FE41B6D2C35EA33FF91A307C8
                  C6FB85B95181B68036C12F00E01BF714D2D78AD476D0D6D1E6A9ED4F13264405
                  620A620BBF5A0F234303C43C1E7B2906231623260B5325F400B35B32D97B0FD8
                  C6DF54C4F481112A0805682B0568479F41AA2F23062C55EBCC8F87C8603465EB
                  3D9085FCFE988E22507079C0BBE5D5A3FC061ABC44A06759E3DB28EB4CB998B9
                  4A1D5C3A8EB5A3CCC25489380165EED9B2ED90B94AEDC89AA2F08BA2CFE24112
                  44AC239B8B9665DE4D2F1F8CB54EA04DA06DC4E5EE536AEB68F3E2D3AA809882
                  D862881B68F07DDC3E43B1173118B1589829A127A8D2DFE71C30EC4573F9AA2C
                  2965E4A2E39A16D621ACD5EA3247FFA1CD8589AA909CAFD868A5F4B42602867D
                  D00816B4D955DD8B98022E885B5F7D8FDF8F88CD2B7A3548F15D7EB55CED46CC
                  BBFDF53D520CF503CA1E3E802FF8D56857F828EEA4EF7241A43A4A75F55DB24D
                  F50811409B40DBE0F55B297DAD496D5E7C5A151053105BF85AA7527AF1203FF2
                  5282C75AC45CC45EC46061A28411400EB9DD316AFC525CE2ABF7EBFB970571C0
                  B0478579AA407F3BF1DAB4D2835C10070C63C17F2FC5743E0FC105414657414C
                  11435C20D0A4252EE97E95EC929774EB0CF800BE804FE09B2B7D15575E2D8838
                  86A1EA759A14A04DA06DC44D10A9CD8B4FAB02628AEE8208D2F7116B1173117B
                  857912468373FC94A72D55A9C2605E3B0ED38F4A4C6041D47F8498BF38BFB6CB
                  FA685B16F8F8D3F5B2311A07F0057C02DFC047BAEC7E948298BEA4988AD88A18
                  8B582BCC923032C8514F5A6AD4F7F333317CFA34BE815B0A623A119B1DB290ED
                  4FF460FE63C71708B3240C06F8063EE2EB703896A3E4CBF4A214C4F421DA3A62
                  29C554C456C458619244468073ECC4C1D6BA4DFC7CA418E7DD5852103526BE83
                  CB0F32E566F61EFD58E0C867AA5F3990D007F0117CC58F64C4F3D0387D470AA2
                  C684EFB07B9E6229622A62AB30472223C1F1D4CC6E96064D1DBCF2C4B1514A41
                  D490298D1136F71BC282DF7E375C98236170C057F019AF2BF1EA94D237F03D29
                  881A113E436794BE87588A982A4C91C88870CD5FF898F591C792F91565711245
                  29881A511CF8C50D228E21A302A19F7FED234C91C82080CF9CE43B7E0B0C9630
                  D2FBC0BB1444ED88B244CC24BF218622960A332432325CCF2F6D626BD1E61F13
                  EEDBCC93FE6B1A52103520D24600CD559839C74E7287CEFFDD59982191C1103A
                  7FB1337CC8DF53844FD3B9DE4841D488B8B09F6226622762A830412211E05DBB
                  BE86B569EB9F920B52634CE7DDA752103520BFF0FC41E69C3AEBDF902939A6F3
                  9C12C6037C085FF2F6C77DABE0732D2805511BF218F92043CC44EC149F974824
                  B897AF9A68A9D530DD77BE49414C2311D470E1F1C3B5FFF27D70B0A1F8BC4406
                  077C099FA6EB2D2B5210B521C548C44AC44CF169894483E7C5CD332DF51E9182
                  68744104B1D694A7C8A7BFDC765B4C014DC2B8802FE1D3745D479482A80D2188
                  142B1133C5A725120D9E35EB6759EA34968298110431C213143CF38BCF4B6470
                  C097DCA7CABED6865210B5210491622562A6F8B444A2410A6284194A100B9694
                  829820802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992
                  AFB5A114446D280531F1210531422988127A00BE143E55F2B5369482A80DA520
                  263EA42046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5204A
                  E801F852F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A
                  1B4A41D4865210131F521023948228A107E04BE153255F6B432988DA500A62E2
                  430A6284521025F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2841E
                  802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992AFB5A1
                  14446D280531F1210531422988127A00BE143E55F2B5369482A80DA520263EA4
                  2046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5204AE801F8
                  52F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A1B4A41
                  D4865210131F521023948228A107E04BE153255F6B432988DA500A62E2430A62
                  84521025F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2841E802F85
                  4F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992AFB5A114446D
                  280531F1210531422988127A00BE143E55F2B5369482A80DA520263EA4204628
                  0551420FC097C2A74ABED6865210B5A114C4C48714C408A5204AE801F852F854
                  C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A1B4A41D48652
                  10131F521023948228A107E04BE153255F6B432988DA500A62E2430A62845210
                  25F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2841E802F854F957C
                  AD0DA5206A432988890F2988114A4194D003F0A5F0A992AFB5A114446D280531
                  F1210531422988127A00BE143E55F2B5369482A80DA520263EA4204628055142
                  0FC097C2A74ABED6865210B5A114C4C48714C408A5204AE801F852F854C9D7DA
                  500AA236948298F8908218A11444093D005F0A9F2AF95A1B4A41D4865210131F
                  521023948228A107E04BE153255F6B432988DA500A62E2430A6284521025F400
                  7C297CAAE46B6D2805511B4A414C7C48418C500AA2841E802F854F957CAD0DA5
                  206A432988890F2988114A4194D003F0A5F0A992AFB5A114446D280531F12105
                  31422988127A00BE143E55F2B5369482A80DA520263EA42046280551420FC097
                  C2A74ABED6865210B5A114C4C48714C408A5204AE801F852F854C9D7DA500AA2
                  36948298F8908218A11444093D005F0A9F2AF95A1B4A41D4865210131F521023
                  948228A107E04BE153255F6B432988DA500A62E2430A6284521025F4007C297C
                  AAE46B6D2805511B4A414C7C48418C500AA2841E802F854F957CAD0DA5206A43
                  2988890F2988114A4194D003F0A5F0A992AFB5A114446D280531F12105314229
                  88127A00BE143E55F2B5369482A80DA520263EA42046280551420FC097C2A74A
                  BED6865210B5A114C4C48714C408A5204AE801F852F854C9D7DA500AA2369482
                  98F8908218A11444093D005F0A9F2AF95A1B4A41D4865210131F521023948228
                  A107E04BE153255F6B432988DA500A62E2430A6284521025F4007C297CAAE46B
                  6D2805511B4A414C7C48418C500AA2841E802F854F957CAD0DA5206A43298889
                  0F2988114A4194D003F0A5F0A992AFB5A114446D280531F1210531422988127A
                  00BE143E55F2B5369482A80DA520263EA42046280551420FC097C2A74ABED686
                  5210B5A114C4C48714C408A5204AE801F852F854C9D7DA500AA236948298F890
                  8218A11444093D005F0A9F2AF95A1B4A41D4865210131F521023948228A107E0
                  4BE153255F6B432988DA500A62E2430A6284521025F4007C297CAAE46B6D2805
                  511B4A414C7C48418C500AA2841E802F854F957CAD0DA5206A432988890F2988
                  114A4194D003F0A5F0A992AFB5A114446D280531F1210531422988127A00BE14
                  3E55F2B5369482A80DA520263EA42046280551420FC097C2A74ABED6865210B5
                  A114C4C48714C408A5204AE801F852F854C9D7DA500AA236948298F8908218A1
                  1444093D005F0A9F2AF95A1B4A41D4865210131F521023948228A107E04BE153
                  255F6B432988DA500A62E2430A6284521025F4007C297CAAE46B6D2805511B4A
                  414C7C48418C500AA2841E802F854F957CAD0DA5206A432988890F2988114A41
                  94D003F0A5F0A992AFB5A114446D280531F1210531422988127A00BE143E55F2
                  B5369482A80DA520263EA42046280551420FC097C2A74ABED6865210B5A114C4
                  C48714C408A5204AE801F852F854C9D7DA500AA236948298F8908218A1144409
                  3D005F0A9F2AF95A1B4A41D4865210131F521023948228A107E04BE153255F6B
                  432988DA500A62E2430A6284521025F4007C297CAAE46B6D2805511B4A414C7C
                  48418C500AA2841E802F854F957CAD0DA5206A432988890F2988114A4194D003
                  F0A5F0A992AFB5A114446D280531F1210531422988127A00BE143E55F2B53694
                  82A80DA520263EA42046280551420FC097C2A74ABED6865210B5A114C4C48714
                  C408A5204AE801F852F854C9D7DA500AA236948298F8908218A11444093D005F
                  0A9F2AF95A1B4A41D4865210131F521023948228A107E04BE153255F6B432988
                  DA500A62E2430A6284521025F4007C297CAAE46B6D2805511B4A414C7C48418C
                  500AA2841E802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0
                  A992AFB5A114446D280531F1210531422988127A00BE143E55F2B5369482A80D
                  A520263EA42046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5
                  204AE801F852F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2A
                  F95A1B4A41D4865210131F521023948228A107E04BE153255F6B432988DA500A
                  62E2430A6284521025F4007C297CAAE46B6D2805511B4A414C7C48418C500AA2
                  841E802F854F957CAD0DA5206A432988890F2988114A4194D003F0A5F0A992AF
                  B5A114446D280531F1210531422988127A00BE143E55F2B5369482A80DA52026
                  3EA42046280551420FC097C2A74ABED6865210B5A114C4C48714C408A5204AE8
                  01F852F854C9D7DA500AA236948298F8908218A11444093D005F0A9F2AF95A1B
                  4A41D4865210131F521023948228A107E04BE153255F6B432988DA500A62E2C3
                  B37ADD0C4BCD062C395721969CAF58BAD1942D1FB356A9CD1CFD8736179F5605
                  FADB09D7A6951E3465CAC5ECFD8640103B894FAB020597FBBD5BB6BD6B2E5591
                  A7919CBFB862FA1AF22B623EF179890C0EF852F854C9D7DA90EA24EA26EA28EA
                  2AEAACF8BC2AA04DA06DF0FAAD94BEF69C203EAD0A8829882D88310A6969478A
                  9188958899E2D312890672EE024BED462C394F61965CA044BAD194A300B354E5
                  23C456E2D3AA403DB3195C6414D2D492A6CCB9997D208D10FFBED85D7C5A1528
                  B864F6BEB2E31017C42C79223D4985F43561A41C4ED1370A89CF4B6470C097DC
                  A7E959C7A94EA26E7241A4BA8A3A2B3EAF0A6813681B68238AE96B499403B579
                  F16955404C416C418C514C532B528C44AC44CC149F964834044F7C33DCB3FDB5
                  53EED5EB4FBAD76EFC26DDB872DD49CF2B3BCEF9DF79BFAEF8B42AB857AEEDEF
                  5EFFE2CF9446BADAE75ABEE65BDFFE03A7C20E474C23580A2EF7857E38B3C6B3
                  69CB39F7F2D58A696BC6752FFCE85EB361876BD9EADCE2F312191CF0257CCA7D
                  ABE473AD4875137514751575567C5E15D026D036D04614D3D68E27795BA7362F
                  3EAD0A8829882D88310A696A478A9188958899E2D31289066A1C77A08110EF8D
                  03EF27FE4F7C5A15E8F7B78BBF534A4F6BA21C62B20FA0BFB98B180F1BF18DBB
                  C567251204F0A9F0AD92CFB524BE7197F8AC6AD0DFFC8F18CF1871BBF8B42AD0
                  EF615F3CCA0F4439DC213E2D2121212121212121212121212121212121212121
                  2121212121212121212121212121212121212121212121212121212121212121
                  21212121212121212121212121212121212121212121212121C1C118CB7D13CC
                  45547DCF64381CFE3FFA7D76621EF1F76A99177F2B924917D037EE24E6BBE29B
                  D1883CE424DE2992880AFA6D16F1B746675E620E624CF72BDE0CF03DFBA8F139
                  DC8B9757F27FF4F124CFFA17673B878C9A61EFD46D86B9DCC33392731799915C
                  E8C119780D80337FF119D63A8D67D8BBF49EE11C3E768667F39619C1D3679EF5
                  BEFCCAC39E1736A33EC2FE98EF664D0BE87B9988B1D41D304F7AD76980BE833B
                  4395BE9F1A518E71BBBB92BE75CF15DF8E95A8AB594552A9827E974DFC5E299D
                  68CC190F7FDD08F4FD9BB11B7E449CBAAE7CE87F432C8AB5CE1620DE2392B80A
                  F4BFE37E68C48C5863BB21795BE0E4773FB896AD50CFC5CB7FF0AC7BE1B4EFCD
                  3DAADFD273CD5F94DBB574C57ED7F2556715D354E28285677C3BF79C2323D3F5
                  81D8B029A985EF9DF77E75CD5F7846D18E2BB97425F8937BC3A693BEB7F6B510
                  494445E0BBEFDF742F5F7D86CA40395D83D0BD7CD539D792E51FBBE62FAE204C
                  D714E4CBC6AE39F33B3B868C9AE77CF2A91F2CB51A9E3497A99C44FF65E66A75
                  1909217FB627B970A9C81334573E584AFFBFB97839662E5D897E5785FFDEDAA8
                  39B394AF7AD1DAA2DD29D7CCB967DC8B57BCE4DDBCB52B7DA7A8F864BA81BE71
                  8FFFA34F96B8D7BDF0AB6BE1122A3FAA1B0A657A15972C3FE35EB6EA27FFAEB7
                  96D3DFA7AB78539D6BEDD9FAEA19D7738BE8DBD16CA37FA7DF795F7BF3FBD0AF
                  BFA78BEFAF05E53FBBE7E557DE743DBF94DA9D8AB2BB8A2B7F702F5A7ACEBD72
                  CD31DFC18F9A8A24158172F66EDAF21E75BCCEB9636D7F0B979EF16C79F544E8
                  C2C58A22B9B881ECBE3BF0F1A773DDABD7FDE25ABC2C7A6CBA82EEC5CB4EBB16
                  2DFBC9F7D63B2FB064F3551DF7C0B7DF6FA0F8FD9BEB79D459E5BFBF9654CEE7
                  A9EE2A3E261EFAF3AF5ADE37761F732D5979D6E8F12D1ABDAFECF8E136CFA62D
                  9177B9D410412A672166A9508D39FA0C1A2CCA242AE8EF0A26E72F7141314D25
                  1628CE4C798A3073B1B2CCD177E06B54393289A43447F0975FBA3AFA0F61A67B
                  B229DB7225F311F192340563E7F031DD44125141057DCA5C94823C1EDE544AD7
                  482C50C24CAC294C4F33C8778D7DBBF62C738E9BF8BEAD53B7308DF2E83B548F
                  F02DBC6E4EE589B7E7F0E0A9297761964C7EE7FF76A518A610FF3BFDBB2957A1
                  C8EFEFCBC192F137F8B77C45597291D2CCF6C863CCD6BCF539E7E419AF78B7BE
                  DA87BE9F5398A22928DDFB5C339FD96D2E5D9199B2E68BB48D94324C85A6ECF9
                  99953A00DE9DBB5FA234627ABC361678B76EEF6D6DDC32F2D06D0151763722FD
                  BBE9815CCCD6AE33F31F3AAC99EF530389E153E808219EA82DBBCBC4EFF1C837
                  B5297B9F8147C2A9C4072AE3FFB99E9EF709DA1EEA9A627A3722FD1E9D30D7B3
                  CFBD2A928B1B02DF9F6EE9E83B38F2327E2C76172C417F5380A16C5D33E6F644
                  FE45921C9E975EF9C85CBA424C7596B7AD02C5878A24AE42E08B2F9BDA9EE8E1
                  4ECE4DED36D6F235186DCDDB3012C49729C85046D4302F05F4EC54D8E5AA841D
                  3DFBF71165121514C4F252619D534CF3464405A6A0677EB002734C998E97AF55
                  4D8FC48AE06FBFB777F419C84C776555B6E34AC2E9B90A33CBC3B59CCEA1A33A
                  8824A2C2BB65DB1173210A4AF87BA5748DC53FC95F0F0BD36F0A6884819FCE36
                  754D9DB5C1D16F88DD52A17A44FCB2E4A1C64A810C15109D0334488819FDDB55
                  BC5204AFE595BFC34812FF4D490FE20AA1A460692E5E161D97A0AD4397D3EE85
                  4B97904D313D861C0D94DE3DAEE94FBF622E45C125739E48DB502ECFFF888041
                  FF35DD9B9D59EA3765BE0F0EEEA474B28B24358577CBAB5DAC0D1FA54E43F6E8
                  B6D1BFC3265BDBC783FE831F561549A41B28CF591CBD079E49CE969FBE7F936D
                  02F1E1819CCC5AB7499046309D45D28AA0514C0B5BFBCE2E53A6DCEAFC9442F8
                  2B4701666DDEC617FCF1C7474572E90E2A9F3BDD2BD76E43EC33DD9F3352B795
                  ECBB96B09704D444FF3775F27788E4AE020D80DEE5E9A22CD4A61BE10091C455
                  089CF8BABEAD63B74B888B9CCA7F9B21686BDA9A04F1A5ADCA814789083E5481
                  2D156B846984D857944954D0DFE623FE7C555A6A88EF5100C5149967C3A60FD3
                  2378902076E02344543C251BAEA4E85159AAD77339478CED2892880AEF2BDB8F
                  9A8B95F94F008CCDBF885584E93123F8E7F9EA9E956B0E5A9B3C1630972C4F3D
                  D1BC5CA07863853F95BFA93D116869F4C8671A2AD764F65E039CAEA52B67D268
                  A28030354DA0BA78AF6BD6DC6D98E6E5AF97ABCD9BF85DD25D5998AD5507E63F
                  7A6CB5485253785FD9D1D54AA3657442A2DA46FF0E51A7CE43D07FE8A36A2289
                  7403B5E565E60AD5223E52B2472D11D0A93D3AC73C7986FC514824AF08CFDA0D
                  7B68B4178EB90DE6A76FA0533E75E65EFA46BAAFAD038153A79BDABBF4624977
                  668EA15E4568CA9297599BB6F2785FDD5E5B2477156884F89EB92CD5D9ECD419
                  519B7684034512578104B181AD73CF243E7B868EA9F2DF6608DA5AB433B82082
                  7034051C0435DFEEB7BFA44A594624AB09A4205EC79B1644EFAEB756DA078FA4
                  3A423DC51C052960510389ADD1A50F3172CC948B77ACEC7D06FDEE79E1A58EE1
                  DB6E4BD346899B16C42B68C26C4BF57A17BD2F6D6D2792D50C4615C4D0D7DF96
                  B63FDEF34F3382675A0328ECCE9A8F596AD467BE6DDB15A7F452C0DCEE7AF65E
                  FD2353C8454A2BA7A7446AB3E8D0595BB4F3F8BFF8B28B482EDD40F5EA7FEEC5
                  2B3E3161041C4B27126541A3434CF13A478D5B71A38D4052106FCC8C21888249
                  F76567963A4D986FD75B9ACEE74B41BC8E7F12639A320D7BBDED1DFD86EC4D26
                  C149BA3B0B1F9525178E5D20D295854B917015243FE76096BA8D997BD5BAF729
                  F8E4125988196916440430045B12457BC76E3EDFDBEF683AA56B444144B0F72C
                  5FFD82A5528DC8DA98922DB110F9C228315B7EE6183CF2F7705272AA1BF0BCDB
                  B66F48C61477ACFEC20C0775CC1DE326BD4D7988F915FE5810F8FEFB7E983948
                  7A2077644940C91E25525C32E52ACCACED9E480E7C73B28E48EE3AA48320D627
                  41BC2405319E8288EF227864CE8DDEA0DBBD62ED7891749A616841E473FC242E
                  E829C683984BCF5BF43C51F50831F8EDA9518E2123BD2634C82C79237954DBD0
                  F0DB943CA23189FFDB548037ACD075CC8B6950221A1F5F8F25C652A6B00B7652
                  40B494AFCA1C139E3A16F8FA64619195989066410453ECC95988D97BF4F7077F
                  FF6384483ECD30A22006BEFEBABABD7DE77F93118CE16F255B62253A3A182596
                  AF864ECE53E2538A083B9D651C83862761BD5431AD5488F2B1366DE5F76E7FA3
                  A7484E73509DCAE99AF5CCE7C9B94980D11614ECB811318AB53C5C9BB997AE5C
                  9EDA3111CD05F1AB130D6C9DBA99F8E6286C70538A2B6A88B67CB3334A297F7F
                  6D9A31D2D6B455C61921F26F53F0C39407554CE63BF8E15C917C9A605841CC5F
                  3C8C8A6BA9568F59AAD426D6497F56E5FFB55B2AD7AE214CBF21D0E80227BF9B
                  64EFD627CC8510014E6D65C6EF5009216A5426FCDB956AFC65EFDAEB946BCEFC
                  53F65E039E3165CBD7867EDBF1320B3DD8D1FDDCA2A3AE1973CED81EEB70DA52
                  AB91170100E970418298ABF97ECA6F78AFFF4112A2BE27427FFC595C644B3534
                  11C41462534B561AE58C9C100A279B15372FC40AA3092295D7EDAE67166C3097
                  A9C4373EA5A9BCAE25465254079DC3463BE93B79C427AF03FDDBFF7CBBF63C8F
                  2956ECAA8D690486CD3854D79CA3C69F0C7B7D373DB3901AFC873F19646DDC22
                  9C840D2FB18E0EF31466F62EBD7EA73C1613C9294273413CF96D53FBE091418A
                  19D86C78753C514BC41D1CBB2A5B39E68E00F28EBD0A9138794DBA31D2DEBD5F
                  06124410DF8728DE93153BE218F5EE97510548D3D675A30AA2294F9190AD55C7
                  773DAB373CEB5EB0689EFBB9C5E9CF058B17D17F2713F309D36F88D06FBF4DB3
                  F7ECCF77FAC5D4B0E8B77C1D87EA91B5653BAF6BCEBC339E752FCC0F9CFAA108
                  D245D0E21FB80152FE3D7429A99D6BDEC2E5F6EE7D4F58EA3589A40B612A1CC3
                  FA107A95851FC4A68C73614B724CBB2BC90EED0491883523D42D7BE79EDF04BF
                  3D99E6B3B74613C4C0E75F35B1539BE5BE8F25D8AB25959FA5428D9077F7DE0D
                  E2938A08FDF26B69E7D8272F99B0C335960E2ACA8884DC5AAF29F36CDD3E4C24
                  A719509F9C9367FC894D68B1960F1F1D56AD13F66C7EF96991DC0DA1B520062F
                  5E2CEA7DF58D6914A316DE749C7A7EC9B39E956B9FB13ED6E11DBE014FF9FBD7
                  937ECB8FC53C3DEF27CFDA8DCF505ACF5E97760CF4BEBC6D5EC6124410361093
                  EEC9C6EC7D07B1C0896F268BCFDC140C3B422CF460908287A6EB4A5A21F0E9F1
                  328E5EFDADD8E28DF250B45F89F82DFD8DB5E963CC3971EADB9ED777D6A34090
                  EAEEC068A0BFCFE779796B3F7B9F417BCD652A47A66DD5AE5F22C8E528C8CC25
                  1E62D4984F515A3944B251A1B520725B30E594AF38730C1D7D3AF4EBEF0F8A4F
                  DD148C2488CCE1BCD739E3E977786705B3024A36A495DC970598A3EFA0BF98D3
                  555E7CFA3A6066C3F7FE07B3AC0D9BC7DE9923D1C5F4B673D0F09F6E66562135
                  F80F7CF82CC59550CC2324A2296F1166EF3DF004D5C9A8676EB516442D61CA94
                  BB4B2C36210F968AD59877CFDED745126947861344107690B8F01EDBA36DFFF4
                  BEF5763DF1A99861E03544AC9B8D14491806D4E84ABAE72F3AC90FD72380ABA9
                  C0F80D7E5BB40CB3366BF5AB77C7CE4E948EA687D229BD7BBC9BB62CB2B5EEC4
                  92E04B0416958D8B8F164A5660AE45CB1689E4A242734104290D9E5681E2CC35
                  FB995FE91B377D6B8C9104D1F7F1A79DACCD5AD337726B534E37626E1A3194A9
                  C43C9BB76E139F5604956B76D7E4E95FF0E976B575182C529A8B28A6F77C3BF7
                  8C13C9A519F0B373F4840B7C9640E9BB3722ECC64C4BBD26CC7FF8E32922B954
                  616441A46F0CBFE69BA9126DC55CBE0AF3BCB27D9F4822EDC8908298425420B2
                  C73E60C88570B2B9A1F85C4C9082181BBC2FBEFCA4A5668348E056B6FB6AD268
                  0D0785311564EFDCF347FFE12337ECBD6B81C0575FCFB675E915E6C117235295
                  8D1E330EB6C7BB33FF67C79F1049A58A74114410E9A0A1D37FDDABD6614DE8A6
                  44D1288248F6DFE11C3F693FDA692C9D14DE5670D05BE9DF6E44FA1B4CB9513D
                  4B0A2525299EC34B81FFC3C3E3AC8D1FE5F532A67659B81475B87230E784A75C
                  94B7BC22B934C1F7DA9B73B18EC637A6287DF346245B302870CD7EF667915454
                  48418C02430BA21A87A191512FCF3969BA399C6C69253EA91A5210D523F0EB1F
                  451D03879F8D1C7857B18905FF8ECD3354671C034704FDEF7E90A61B70D4C2FF
                  F19127AD4D5AD8B918A82D73EC70A33CB9264EFF227CE65CD4AB02D32488D17E
                  8B40979D1A7BA90ACC397AFC8BE29331C12882E8DBBBAF8BB57ED388F0C4B836
                  86A96C3EB310C3DF61C46779A82AF36E7A09B75BDD701682FE2D278DC23FE7ED
                  12755921AD1B92628EA5DCC361DF5BFB5689E46E1A217FB0AC7DC8A83F21E426
                  6CDC51FA9E1269B49A746F76666DDE9A058E7FAEAA130748418C02430A22FF0E
                  5552356795D098A960D05372CF5FE46666737DF159559082A81EEE252B9E36E3
                  0C19465F6A82147C437EB1D46D120A9CFC7E3205A1743DC37525BC3B777F80A9
                  2DDEF0956CBB96B0F5815C0C22E23FF6C538B235DAE69E9B1044FA0DEA2AD6D1
                  A2951F4491CA0E979D3BA74C5B213EAB1A4610442AA34C8EE163CEF1EBFA6211
                  C302C52186411A215B2CD5EB47DA6611957F4FED139D0947DFC1FED09F7F285E
                  489D82E00F6786589B3EE68B5910515E149B1C838627531ED37419BAF7E56D2F
                  982B529B428741551D22F2EF93809230BB172FC30D5EAADB9514C428309C20C2
                  D9D9F263D794DFF6580786F36D7CEA4BE9B729845DE851172B8B2BBAD033CC22
                  3E1D155210D581252595704D9EEEE4DBD5717B90B2CD5791AFCF142F17764E9B
                  FDA648266EA03A50C4DAB6D3715E7FD4943BEA1076AD957C8839868C5C4F7F9F
                  EAF35EF4EFB109A2B0C1D6F68990A56AED10DFFC13ED6F844D1076CFC64D9BE8
                  9BA98AF4953082207AB7BE3AC95AA34188CF12287D5789B0853A02B66E7DFEA4
                  FCD6708E1AFF3DCA8A8F9ED4D43BFC7D56EA48905FBC2F6DC5756B8ACF1601F4
                  6F77B9162EFD2AB910896D6C6D9346AED4A929538979376F7D41241733427FFC
                  D1D0D17FA8878B532CDF471E33E562F6AEBDFDC1333FB515C9A98214C428309E
                  2012D180F297F8C0B373CF686BF3D69754F59ED0A386938B9765CEC8BD83AACE
                  0A49418C0E0462EF8ED73B5A6A35888CDAD53424E495FC686DF4A8C5B3E7ED47
                  4452718577FBEB2F9B2BD58CDEA14A21A6A1EECECA1C3DFB5B437FFE95EAAB0F
                  5426B109A2B0C139FBD94F3D2BD73E0F91C3BAE575BFBB96548E10356CF7F7ED
                  7BEF4DFA6E366142AAD05B10C9CEBC8E01C37E40BC505DEF318AA4368CCBE0DD
                  6B36F04D22FE0387265A9BB4A4F6898E988A7A2798745766E6E8D18F852E5C48
                  7D94F8E3D966B6D61D23177FC7328A25C2EFF6EE7DFF09FBFC315F7548E5739F
                  77D396D7F19C19DFD4A5366FF015660ECA5466BE9DBB71DB92EACE3F2005310A
                  0C3B659AAFD851FCAD67F9EA3E9606CD5812B64847BB831095058E2E569AB957
                  AE3D4C9525EA793A030B62901A8AEA27A6D213548EF77B5FDB7910D377AA1B12
                  D67649109D13A77D4B7FCFCF18C61BF4DD7AB6E6AD2CFC50B5928DD752D41F6B
                  DD4798FDF1EEA96EFEA1B4631744FA8D7DC8C80FE86F4B5260FAC15C8A82A19A
                  916241B28BEAA7B5653B16F8F22B8862D4C7A9F51644EF0B2F4DB154AAE1E76B
                  804ADF5422DA078DBCA83DFE19668C1F3B09FE7331AF63D4F8D37C8D37163FD2
                  C81AE9795ED8FC3995576E6E9402E047CFEA75EF26A7AC2546F5C57FC45DA310
                  34F7864D98958AE961E5D02FBFD6B577EB6DC155824A69A7C6A47BA8D336629C
                  936257D40B34AE8514C42830ECA69A42258F27DD9F8DEFE2F27FF4C907244291
                  B5AB68A288ADD1E8413D54950A6A071A43AAE7858C2A88A6FCC543348A78CBD9
                  6BC06C47E71E4F3BBAF44A1F76EEF93CFDB7A0305511FE239FDE67EFD16F6F72
                  F17291D1BB82BDD791CAC95CB672C8D177F06C918C2E20D1FA2DA6DD7B9869C0
                  59B319739F13492802813466412C528A39C74DFC4AFC7D41F7A2E59FE33DC5A8
                  6BE5489BEA0E4631D686CD4314C07B712352819E8218F4782AD9BAF7F9970B18
                  F2ADF4CD6B091B313D5C8946872BD70C174971F85E7F730CDF98134B10871FB3
                  E665B6166D9977D3CB9545528A085BADF51C8346B8625AC703D19EC9665BC72E
                  CEC0575FB711C94505F9FE3EF7921587F85DB66AEA4E0AE977D8E16AAE568FF9
                  76EF7D31561106A42046816105B160C9E3443EC223C7E7F2ED78E36D6C4D8EAC
                  614571241A033673D4ACCF9C5366CCE046DC00861D211628114E2EF950E47578
                  AAC0E9460AE8F4DF54CF719AF314BD37B950A99DBC33A2360F249C96A68F31DF
                  DBEFCD12C9C41D38844D23BD01D4B90AE0E154453BAF259FB62BC05CF3172589
                  641471538248693BC74FFA5A24711B8D82B23BC64CF8D05CB064981F31482D0D
                  FC5B7E0AA078B7B0653B876FFF07BD45328AD053105D4B562E3757AC1E19A529
                  7DEF06E4179D77EB7D2668325D352D4C657D8F73F4840FD1A1E017C72BFCED75
                  449EA90E9A0A9608DBC74C584B69A4BAF1C4F7DEFBAF59A83D60D313AF034A69
                  5E4B941BDF0D5C91B957ACDE4FDF784024972A82DF7EDF869F97C59DAAD13AF8
                  5790E79DE89A32C344DFBAA91769A4204641461044802A4016F79A0D3B31F2E3
                  0148F96FFEA3E87D996B36F07AD6AC9F2492B90E069E32BDFCBDC80BF3E9454A
                  BF408954CF6C05CF9E6B4C3DED0B31DDFF48C1C8FA583B77F0E23FA34532BAC0
                  F658FBE6968AD5FD91E930053B958869BB51137E15492882EAE3CD09E2B8FF04
                  1108FEFA4B36E7B0312753DA969AF24DA2918CBD6B6F16FCE9DC0DD798F512C4
                  E05F176AD87BF4BB14B975278629CE2C7999B56683807BF10AC523049E1DAF77
                  A70EB14FD5CEF314225DEA18D3A8FA92FFD0C7A9E62B6CB33DE89C3CDD9E7467
                  266A0F0A69A542B40B5BEB8EFEC0C9EFDA8BE46E08AA37995CCF2D3E1969DB44
                  85F46E447EA4A46E639FF7DDFD51AF68BB11A4204641461144802AD3DDAEA9B3
                  5EE4D3A22A1D8ADFE1AA30FFA1C373443257C1D082183FD612A62A2278FEC210
                  0460D31D142C62E8D1528FFE0B91846EF02C59D1CAD2B0592039BBCACD402089
                  B9BD5B9F540F3B6B2588007338BABBA6CD0EF10E074424355114DF31DD978339
                  068F60A1DF7E9F2892B90A7A082295C91DEE058B5627F38D22F9D4759EF06D74
                  04A86DD87B0D3C143C774E71D310A57D9FBDF7A00FF95A5F0C42CB7F5BA814D6
                  DC5E13492982D2BFDDF7DEFE05D69A0D239B9DD4D80EC27E8834D9EF9EBFE808
                  A5935924A988C0D727075B1A35F7F3F289E6972B89FA53F041E6E837E45D91D4
                  4D410A621464244104300DE6183FE500D65E782052FEDB08612F55243ECDD4AA
                  030B1CFB7C0555D8ABA64EA42072A63E42FCEDF7DEB68E5D99E9EEACEA030598
                  B3E0272209DDE0DBB5B7B5B545BB404C0188FC646BF8E82F220945503DD24C10
                  81D0A54B5DED43463AB14ECEAFF04A2D3D5EAF8BF1294947EF0156DF1BBBAE7B
                  C24A0F41F47E70A832D5132BDF2812ED9B57108268AE58DDE79C3127D503E6DE
                  3777B7B154A993AC5A10412A73F8C752BB31F3BEB13BD5DBACC8A795DC73E6FF
                  C30FC96384AB360FE8A0E36EE5F69D59F0F40F37BCF89BD2BF933AF45FF37399
                  4AE9A4423E3A6CD8DCE67BFF831BBE75A8065210A320A309224015AB9E6BC1C2
                  BF787046E54ACDB1F8370A46497765E1D34C819FCE5E75C8590A2267B411E2C0
                  C8083133DF18A2F0F7D7934659B666ADB1D6A1BA9CD203AEE1639B596A36F463
                  F383EA004075DCDE7770DC46882908FC70A695BD673FAB293B8937955FAA9D0F
                  7C0FBFC95D284CF517173B9711C970C45B10E9FBF7B99E7E765FE402EF18C404
                  79203AA7CF3687DDEEA8EB62CE279F3A1DB56CAEA5B0C5D16FF0C722991BC2FF
                  F127B370FB8BEACB275288B73AC92ECFB25567A82C1477B5060E1F9965AD513F
                  7ACCBA96D8614BB6D8878DBEA95B8BAE8414C428C888820850A5ABE79C34F557
                  7EA8160D2435E7E2DFA8578902A4469FE47B63CFE511911444CE06C25445047F
                  FCA90E89DB1F319DD5A27AC29FE8FAF9977922195D606BD6AAA5B974C5404CA3
                  0A0AE88E3113E33A424C8177F3D686B6561D68A4484216AD5E13F9C695C20F32
                  D78C39A7C9A68A2299DBBCDB5E8BAB20FA0E7DD4DCDABC4D1087E2A37E2F85F8
                  6ED6BCCCDAB019A3EF2E1049A58AC03727E75BEB3661C9F84E0C82851196B551
                  738FFFE087A9BE20436558C6F5CC823F797D8945D8C9166C92B1B56CCFC8C6EB
                  1E30A7747338474FF8D98C18104B1CC05DC0E4635BAB8E4EDF471FD715C9DD34
                  A4204641461544C0FFEDA94AF65E034E61A7979A6926FEAA7BB67C3452EC7331
                  70E26B2E0224889D1CFD871A5110C3C46F893B89BBD3916F114B0B5315F1C36D
                  B7DD9E5CB4CC76DC04C403BBB2BD5793FC61ADDD28EC5EB4FCBAE0102F5010BA
                  DDBD6CD5C77CC415CB9350D9F233CFDA17D267976914410482A77F78D6D6AD0F
                  9FEA574CEB4AC25E0A6E26FAAF7BC90ABC90C183A6F7E56D5DE22588F4CDFB9D
                  4FCD3CC8D389E12C1FCEF1A19EB866CEC525E6D74DFB2A817E874D293F6027B0
                  EABA08223E1428C99C6326BC2F92BA2142677E1A697BACBDDF94853A804A69A5
                  C2A4077231D7DCF9F0C3556BA1FEF73F580621376137712C7180ECC69DB6EEE5
                  ABD78BA4D20429885190910511F01F3854D6D6B9C7DF7C611B0D24B59D84B01F
                  0D831AA263F4781B55DA8681DFFFA865EF3328F270A9D2DF5CC9F80A226EAAD1
                  E4F5F4B42274FE4226E7F4A73F313F58819FBB52D590D090C917AE19B371D762
                  019154DCE11830ECA2EAADFA29CC5F82B9E72E50DCAC9202CA53BA0922A59D35
                  78E29BB5B696ED22775C2AA57725295D74E8608B6BF63387E8EFFFE77D65479B
                  7809A26FEF3BEDADF51E09F36FC5B2E98ACACDD2E8517FE0F32F6FB80B5C0981
                  6FBE1D6D69D49C9FCB545517394B3053CE02CC5AFF11BF6FCFDBA93EF08BF277
                  2F5CF6391F81E62101534C4F81F00309B5B5564316F8E2CB2522B9DB983F50CE
                  3168C4AF3C46A113A0F4B74AC43113EA14D97BF677843C9EA8B1500DA4204641
                  46174420F4FB1F53B1E30ED76E4544311547E3DF7217E65328CE894FA127F70A
                  09A20FB73F44AD20F115C42071B048425720C07AD66E9C8A83F95C5CD43424F8
                  817E6BEF3DF09FB0C391AE4F3EDD08FE03079B991FAA6A555DEE5C5872306B8B
                  76CCBDFEC5EA2219455099A49B20025CD4DEDCBD848426B28B315AFAB03D4B5E
                  662E512EE01C3BE9E9C089936DAD4D5BA5BB20929DB73BC74C3CC32F2C574A3B
                  3516288E67947093517E919C2AD0EF73BB9E59F0233F4A830EAE52DA4AE4A3C4
                  12CC3178E4772C10BCE1ED3540E89F7F86DB3B750BF2119D525A3722A63871B1
                  C3934FFD4B7696455ADE1D6F2CE267A8B12EA9A6ED80F02709BEB94A1DE6D9F0
                  E253DC280D2005310A12411081C037DF4DB477E91DE65BD7D5ACBD5090C134AB
                  6BFE2266EFD12F8C6DEC512B487C05D150977BBBE6CC7F883FF28AA92A950D89
                  57D80AD59977FBCEA52299B88182D13DCE89530F2697A2512DC448C1BEEB48F9
                  428FDC31729C3564B5A67ABB09A59FAE829802F7A2A5D3AD0FE332701236FA7B
                  C5B453081B2818A3CCDDCF2FF9D3D2B099BA571490EF9B14441A1D3E69A95637
                  E60BBCD129B5367A9405BE3C715353EA81A3C7BA60E778D2DDD9D48F4A91CF1C
                  0599A57E53E6DBF26AAADF25FFDEE15DFBC2D77C8F82525AA991F2863743FD47
                  3E5B40E994B7F71EC0770FC7D4FEA9BEF08B0AFA0E3E1BFAF967CD5EE7978218
                  0589228880FFD0E121D6561DBC7C7D21DAE15AE405574B61C7171A949ACA7A0B
                  0B6298B1ACB6CEBDB6F05BFED5E6038D3A5721E6E835F07CF0E7DF521518AD11
                  F8F8D30ED666AD3C7CFBBC926DD792074B6A60651F0EBB663F1BF5769D780922
                  E01C3B7186B97C552E5A5145516CC2C0AB1DE80C445D5B0791F79B10442A83EC
                  F681C3BEE1E9237F4A692B1136524076CD5DF0AD482A66D0B7B3BAE6CC3B82BA
                  A86A040D229F14BFB0764923B89FC22E4F29919C22C26673477BE75E91915DB4
                  72BF92F9C9A6CC791975C892A9C3700CFF1B3F6AA1C64690BE057FE05273EFDE
                  77A6525E55BF72120D5210A320910411F0ACDDD8C352BB9185379268811BF941
                  43563BED720B0B221038F8511F3BAE9CBA2BB3BA0081F2E5C1B93C730E1BB39B
                  1AF60D9FE2D11261BBBDA163C0D09FB950C5E05B88A7AD55C764FFFB07CA89A4
                  6E88780A227D2B8B77FBEB27CD98B2563B5244C7458D1882F49B9B1144CF9657
                  6759ABD589EC74554A578908F6F7E760B647DBB2C0D727637ABAE85AF80F1C6A
                  46E9D893497C14BFA544FA3EEE03A518C1BC3BF74C1049DD10D476F724172D43
                  7543E552410A4974CD0F9667D606CD2F5F3CA0F8BB6B095F60DD12EBD8B39EF9
                  02BE17A6680229885190688208F8DE7DFF6D4BE34779238FD1E9A9F31617446A
                  9C45DD8B579C34A3D1E650D9A0F0DBAC7969E455394C7FBB85D288FA1A7D5A40
                  E9B7742F5A66E58157ED0620FC968406E2E67BEB6D6C028A1A84E83771134480
                  BE57C2B366C3517E2145ACB79C44237C14A320923DF9EC3DFB9DE2C15E6DA703
                  36F3198692CC39791A9E2EBA5B247753A0BFCFE49E35775F3275B8548B326CA0
                  7688231234F276B2302B29925344D86269611F38DCCB77A1ABDDA90CF2BC16BE
                  295F61D9C78A0EC367C735DF542705310A125110A9A1E4F4EDDAF38EA55643BE
                  853ED60A7943DEE28208F8BF3D35C8D6BA93857736D4DEF948E58FC060AE508D
                  B926CF789359AC7CB381D608FE74AE9373EE023B7CA47AAD13BF4130A5A0EE18
                  38EC8790DDA66A472CD5B1B80A2240DF2CE47A6AC62173D1B291FC297DE76608
                  FFC42088B82DCABD6AED52BCE9A82AEF2944C703E70E9BB566FE4F3E55DD7E52
                  836FEBB616D666ADDC31ED24467E7314A4605A0DB7D72C13492982CAFC4EEFEE
                  BD6F9A1FAAC22F7D579DD79B2417761A91BAE62F3C803A26CCD00C5210A32011
                  05114065F2BCB0691782B0BA37E754500A22078DA256581B3413E5AA68FBF5C4
                  F556089EB88F71F0C87FBD3B77DFF405C5D7827CFD90FBB92553AD1DBA047030
                  9CAFD750F055B4E35A423CF9D9D4BEA1E0999FBA8A24A302F52BDE8208D07773
                  D8FB0EFE985F0CAD7664168D647B2C82E83FF175157BD7DEA698A64A411A3199
                  4B9663AEA7E7E14D47CD82BD63F088D7F9B466ACA298250F730C1AE1615EDFC3
                  22294504FFF9B7AA63FC6496746716F5F5EA6648F101656AEBD0D51BF8FA64D4
                  27BE6E065210A320510511A04677A773D2D417F1AC4B4C3DD91B510A2207956B
                  41CF864D0793317D17CB48054108D348B90A334B8DFACCD17BE001D7F4D9C329
                  BD5AC4549FE7B916F4FB02A1733F3FE259B57E1309C40573A51A34FAC817D961
                  1C4BD0CA49238572552CDE351BFB89A45581BEAF8B2002619BBDB16BC61C3704
                  86A7ABF4BD5808BFA81444CAF7ED9E45CB57E355FB985F7ACFC4A7021DFEC347
                  AA8AE43441E0F32F2BDA9AB7B988D8A4BA8D912F200A78E0D7BBFDF59752AB7F
                  F46FFFF3BD7F6029768EE2CED2741345D45D8A55DE575FFF84BE799FF8BCA690
                  821805892C8800BF0C7CF088F53C70A9D9829E1AA5205E061AACEBD9E7DE3457
                  AA19994A82CD6ACA16BFA132C428CE94BF1855E8AA7859C266EBD8F57DD7EC67
                  36F98E1CDDE43F72B4A5E3891E395C33E6E6704D9949FF9D93C352FF911C9EB5
                  2F54F27F7068ABF3A9992F397A0DF8D6DEA9BB131B76D0ABBE3C5A89C106D86D
                  6DD49C795FDAFA96C8966A50FE75134420EC7275730C1B6DE39B3D1048D5E4FB
                  46A4BF552B88812F4FD4A0DFB9F9F126B5F519E9A3E341E2E31837793DDAA448
                  4E3338060C5B925CB87438A60E024491BF1A32D24EFE4C55A4E9DFCB3A274FFF
                  9DCF404078D5CE8CA825CA0833157D0639582894EA25E4698114C42848744104
                  50D93D2BD75C32E52B91B6E95329885781CAF50EF7734BB659AAD4E697A7F3FC
                  C5B2F100BFA760CE4776F4FFE331644BE55A089C61FAAFC5DAF0519BB57E539B
                  B561739BB94C656B7291D26ECBC3F4EF652BF35126EFE0400C6229570441AAC3
                  F8A6A56173BFF79DF7B18926A683E100FD8DAE820804CFFDDCC6DE6B40321F29
                  E68B71647C25118C550AA26BEE8297938B958DED1801F987DF25DAACD5450AC8
                  9A8E0E5310F8EAEB5EB6561D5C31BD9708E6A34E5989F2CCBB73D78722294590
                  BFFF17387A6C99F591965456B1DC90A382488B3A7454C7996FE79E5DE293E902
                  298851702B08224015BA1AEE4C34A1678700A2FCCDD489C02B05F12A205078B7
                  6C5B6F6BFB44640A4DED99B02B89DF0B71E4D35E581B03E127FCFFF86F4AD9A5
                  FC3BFE2696EF88DFF3295EF2A1ADCDE37FB9D76DE844F6DFD4B676230822E0FF
                  F070436BA3477FE61D3D6C728AA54C528872512188243ACD6DAD3B46AE398CE5
                  8A36F8AC7C554623FB8DA82F22394D41E9E6F1ACDB78CA8CD736622D03B2CFD6
                  B5B73D9C94D44E24A708FA4631D7AC39BF735FA2AE2AA5753314E5EF1C3BD111
                  F6F9A2AEE1A6055210A3E0561144805DFAB7B863E0F0333C1F3753A1A520DE10
                  BE8F0EB7B73DDEE353AA1B91111FAED552CE973EC48812A241A350D7FCC527C2
                  BFFF5943987E53308A20023472196DEFD99FF1D7DEF19DD802DDE5809C9A2052
                  7EEFF62C5A7A007782F26F28A5A344D479EAC0586A36FCC977E0C39847E2B120
                  6CB1B4C3BB9D4918C1A97DA60CA498662E559179366F390E6115C9292278F6EC
                  1C5BA7EE913A1E5B7B56267C459D488A29CCBD6069BBF4984EBE125210A3E056
                  12442070FC8BE2B6369D4EA4DCB41F53A59082982A28981472AF5C3BDBD6EE89
                  24F3831523E58B43C6F82FF21E5B03BC39E21B98B6C5F7C8C77C6D11D3512484
                  8E11E34CEE55EB07929DA9BE6AAE06461244B2E5AEC09727D65A314A8F656D2F
                  85647B34410C9EFEA1A3AD5DE7A0AA8B01AE205F6F2B599E79566F7C4F24956E
                  E0C74196AC38C4BF89F6ADB6BE916FF037D6D61DCF073EFF2AD5234154D6F738
                  A7CCD8642E42ED39ADA344D8877A91BB0876BBEE179F485748418C02CFCBAF44
                  0A460DD110A812582AD50C3BFA0E562F88851ECC47FCF9AAB4A2F33851734104
                  42BFFD3A9004EDBFE081E91F651BAE261C41BFB7D4A8EF728E1CA75E10B7ED38
                  6A2E5E36F2F74AE92A3344CC50829882D0A5A4469EF52F7E60A9DFF43B4BD5BA
                  91C04123463EA58A8754518F90C72B2A779A091144BA1809C2AF1042745EEA36
                  668EFEC37EF5BDFEE6060A669A8D50B820CE7E661BCEA7F15B9152F274238A7A
                  E61C3F5973414C81EFEDF7165A9BB7E29B33F8F794EC5022D98ED1338DAE6E28
                  88EE790B3FE5539F4A7F7F2322DDACF999AD734F17D589F622A97445F0871F9B
                  D8BBF6F6F1BB89314A44BD50B2ED1AA2838C4D3FAEE94F3F2B92BA217C070E95
                  B73EDAF61F3C2717D5EFA95194BBA5D1A32EF7D657EB89E4D3159E97B7BD87CE
                  21EFC4C5667BFA0B62A107875FF3CD54C9376A55A8CA3CDBB414C40D2FF23501
                  55A45EA4E9EEACCC5CB44CD8FE440FD582487F978FFEFEE7EBD24B9DC74D9973
                  A78B2002C1EF4F8DB777EBC392EE788099EECB4979CBAD64C3D57C807E777F0E
                  662E53C9E5E83744BD206EDA72343947FEC8DF2BA5ABCC1031430A620A483432
                  BB9F5F3CCBF9E494E3D6868F5ACC65AB308C9431B5C7A72F115050B995042E16
                  52308308C287783BCE52AD1EA3D18CDDBD74E519DFEEB726931DC584499A0182
                  E89C346D1BA610936EBF3F7AFDA17AC3CFBD0D1D956E820878D66F9C4923002B
                  2E29C76B098AB65CCB2CB959D26D77E3C07CD0FFFE81EB04D1FFC991D1962AB5
                  7D49776656D74E40FC0E47144A9467BE1DAFEFA7F28AE958CDCD82BE73B77BE5
                  9A374CF98A523D83BD0AB62911F587629BA556833F9D53673D2492BB21E8372B
                  4D054A84F8DF29A5178D543ED88866CA5D8839868D7A99854271291FF7864DEF
                  FD5767299E2BD9A6CC741744AAAFC315BE7B4326DD713F757A4A32CF8B5BB413
                  44DFBEF798AD4D27F56CD98ED97BF60BBB9E9EA75A10E9EFF2117FBE2A9DE83C
                  4E4C3741047C873EEA6FEF33D08E9B33AEF9F60DD891D95A77C00DF42EF7734B
                  540B220599A3B60E9DE96FE9EF15D355648898A105310514A4B2B9162C2AE759
                  BD0E6B5DAB1C0387B9F0341176F7A569DA09A3201255F4EC6DAD3A326B9BC7BF
                  B4F7E837CBFFF19159FE2F4FD4A6EFA6DB3B8C1044CFC64DDBEC5D7B311B8DCA
                  6C6D1F57F2E17F44BD69FB04732F5B99AE820878B66EDF65EF4276A9AD6FB0BD
                  490B46021F0C7C79E23A41743DF3DCFB51F3A7406B8BB648F31F1666E9768C40
                  0994877A8EB11383B6E66ADB7584D647DB307BA76ECCF3C2E61DE4DF0744728A
                  083396DD317CCC3FB6C7DA2BA61595F04DCBF6D4411A6DF7BFF37E23916CBAC3
                  F7CEFBEFA1CEAA8F799799EE8248DF187ECD375327B53B7BF7DECCF7DE07DA09
                  62F8EFBF1B043E39A28E1F0B1EFBA2BEFFFBD3A92E3E5F89C0C79FDC4941AA7A
                  E0934F1B2AA67B1D3F6D44BFAF1C3872F44E9144BA21683255F21F3DD628F0D1
                  C70A765CCB4F79FEFD9F7F5E3770FA4C0E914454842EFE53C9FFC9D148D929A6
                  7B3D29FFF5E9F7E9BA09412F309FBF9667F3965AF6CEBD5A7AD6BDF0B97BC162
                  3C82CA6CD448B1B9818F1C9504305F313E4562A52064EF3794B99E5BCCBCBBF7
                  5E723DF95407FFFE43B5C3C15021F1897407D6AB02BFFC5A2670ECB8A83B5437
                  14FC7899DCF7471B06CE9C4DF556142D40C1BC44E09B6F63A86F64FB87871BD0
                  DFD40F9A92EF17C95C866BC69C32BE0F0E36A4F6A8F0B73720DAC9A79F3508FF
                  F67B25914CDC40F9BF3D74E1627DEE9718DA1C95437DDF5BFB1A044E7CD3346C
                  B1445D670EFDFB6F8DC0212A37C5B4A210B61D3DD630FCEF2574DCD23DCEA520
                  F4F7DFE503478F37F2AB8A7782478E36A178945724916EF01FFE241FBEA56883
                  129187639F370A5DFC3BEA885E1D6EBBEDFF01F498C18A551705650000000049
                  454E44AE426082}
                Properties.ShowFocusRect = False
                Style.BorderStyle = ebsNone
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                StyleDisabled.BorderStyle = ebsNone
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.BorderStyle = ebsNone
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                TabOrder = 0
                Transparent = True
                Height = 42
                Width = 49
              end
              object Panel2: TPanel
                Left = 3
                Top = 115
                Width = 268
                Height = 36
                Align = alBottom
                BevelEdges = []
                BevelOuter = bvNone
                TabOrder = 1
                object cxButton5: TcxButton
                  Left = 26
                  Top = 7
                  Width = 113
                  Height = 25
                  Caption = '&Generar Reporte'
                  Default = True
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ModalResult = 1
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
                  TabOrder = 0
                  OnClick = cxButton5Click
                end
                object cxButton6: TcxButton
                  Left = 145
                  Top = 7
                  Width = 113
                  Height = 25
                  Caption = '&Cerrar'
                  LookAndFeel.NativeStyle = False
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ModalResult = 2
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
                  TabOrder = 1
                end
              end
              object cxLabel4: TcxLabel
                Left = 3
                Top = 15
                Align = alTop
                Caption = 'Descuentos Infonavit'
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
                ExplicitLeft = 2
                ExplicitTop = -2
                ExplicitWidth = 270
              end
              object cxDateEditIInicioDescuento: TcxDateEdit
                Left = 66
                Top = 53
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                TabOrder = 3
                Width = 195
              end
              object cxDateEditFinDescuento: TcxDateEdit
                Left = 67
                Top = 80
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                TabOrder = 4
                OnKeyDown = cxDateEditFinDescuentoKeyDown
                Width = 195
              end
              object cxLabel5: TcxLabel
                Left = 17
                Top = 56
                Caption = 'Desde:'
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                Style.TransparentBorder = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                Transparent = True
              end
              object cxLabel6: TcxLabel
                Left = 17
                Top = 83
                Caption = 'Hasta:'
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                Style.TransparentBorder = False
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                Transparent = True
              end
            end
          end
          object cxTabFiniquitos: TcxTabSheet
            Caption = 'Historial de Movimientos de Finiquitos'
            ImageIndex = 4
            ExplicitWidth = 984
            ExplicitHeight = 0
            object FrxPreviewFiniquitos: TfrxPreview
              Left = 0
              Top = 0
              Width = 766
              Height = 253
              Align = alClient
              OutlineVisible = False
              OutlineWidth = 120
              ThumbnailVisible = False
              UseReportHints = True
              ExplicitWidth = 984
            end
          end
        end
      end
    end
    object DockDocumentacion: TdxDockPanel
      Left = 774
      Top = 0
      Width = 246
      Height = 285
      Visible = False
      AllowDock = [dtRight]
      AllowDockClients = [dtRight]
      AllowFloating = True
      AutoHide = False
      Caption = 'Documentaci'#243'n '
      CaptionButtons = [cbHide, cbClose]
      CustomCaptionButtons.Buttons = <>
      Dockable = False
      TabsProperties.CustomButtons.Buttons = <>
      OnClose = DockDocumentacionClose
      DockingType = 3
      OriginalWidth = 246
      OriginalHeight = 140
      object Panel1: TPanel
        Left = 0
        Top = 214
        Width = 238
        Height = 41
        Align = alBottom
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 238
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
      object cxGridDoctos: TcxGrid
        Left = 0
        Top = 17
        Width = 238
        Height = 197
        Align = alClient
        TabOrder = 2
        object gridDoctosPostulante: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDoctosPostulante
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = '<Sin Documentos Cargados>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = gridDoctosPostulanteStylesGetContentStyle
          object ColumnaNombreDocumento: TcxGridDBColumn
            Caption = 'Nombre del Documento'
            DataBinding.FieldName = 'NombreDocumento'
            HeaderAlignmentHorz = taCenter
            Width = 175
          end
          object ColumnaIdDoctoPostulante: TcxGridDBColumn
            DataBinding.FieldName = 'IdDocxPostulante'
            Visible = False
          end
        end
        object cxGridDoctosLevel1: TcxGridLevel
          GridView = gridDoctosPostulante
        end
      end
    end
  end
  object DxBManagerMain: TdxBarManager
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
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos32
    MenuAnimations = maSlide
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 16
    Top = 280
    DockControlHeights = (
      0
      0
      0
      0)
    object DxBarPersional: TdxBar
      Caption = 'Personal'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1046
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnNUevo'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEditar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnContratar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEliminarRegistro'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnModificarContratacion'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnInasistencia'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnRefrescar'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnHistorialContratos'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnDetalladoNomina'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnDescuentosInf'
        end
        item
          Visible = True
          ItemName = 'btnReporteConceptosExtraEmpleados'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarFiniquito: TdxBar
      Caption = 'Opciones para Finiquitos'
      CaptionButtons = <>
      DockedLeft = 290
      DockedTop = 0
      FloatLeft = 1046
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnGenerarBaja'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnModificarFechaBaja'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnHistorialFiniquitos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarBusquedas: TdxBar
      Caption = 'Opciones de B'#250'squeda'
      CaptionButtons = <>
      DockedLeft = 436
      DockedTop = 0
      FloatLeft = 1046
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnBuscar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cxRadioFiltroPersonal'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxBarBtnTodoPersonal'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarExtras: TdxBar
      Caption = 'Extras'
      CaptionButtons = <>
      DockedLeft = 789
      DockedTop = 0
      FloatLeft = 1046
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnListaInfonavit'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnResumenEmpleados'
        end
        item
          Visible = True
          ItemName = 'CheckFiltrarDocumentos'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarInfonavitBar: TdxBar
      Caption = 'Infonavit'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1054
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnExportarInfonavit'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnVerCompleto'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCerrar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarContratos: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1054
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnReporteContratos'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnGrafica'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCerrarContratos'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarOpcionesDescuento: TdxBar
      Caption = 'Opciones Reporte'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1283
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnExportarInfonavit'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnVerCompleto'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCerrar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarOpcionesFiniquitos: TdxBar
      Caption = 'Opciones Finiquitos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1283
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnExportarInfonavit'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnVerCompletoFiniquitos'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCerraFiniquito'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object DxBarBtnNUevo: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00020000000A0000000F00000011000000110000001200000012000000130000
        00130000001300000014000000130000000D0000000300000000000000000000
        000981594BC1B37B67FFB27B66FFB27A66FFB27864FFB17965FFB17965FFB177
        65FFB17763FFB07664FFB07664FF7E5548C50000000C00000000000000000000
        000DB57D6BFFFDFBF9FFFBF6F2FFFBF5F2FFFAF5F1FFFBF4EFFFF9F3EEFFF9F2
        EEFFFAF2ECFFF8F0EBFFF9F0EAFFB17866FF0000001200000000000000000000
        000DB7816DFFFDFBFAFFF7EEE7FFF8EDE7FFF7EDE7FFF7EDE6FFF6ECE5FFF6EC
        E5FFF8EBE4FFF6EBE4FFF9F1ECFFB37A68FF0000001300000000000000000000
        000DB98472FFFDFCFBFFF8EFE8FFF7EEE8FFF7EEE8FFF8EEE7FFF7EEE7FFF7EC
        E6FFF7ECE5FFF6ECE5FFFAF2EEFFB57D6BFF0000001200000000000000000000
        000CBB8775FFFEFCFBFFF9F0EAFFF8F0EAFFF8EFE9FFF8EFE8FFF8EEE9FFF8EE
        E7FFF8EEE7FFF8EDE7FFFAF4EFFFB7816EFF0000001100000000000000000000
        000BBE8A79FFFEFDFCFFF9F2EDFFF9F2EDFFF9F0EBFFF9F0EAFFF8F0EAFFF8F0
        E9FFF8EFE9FFF8EFE8FFFAF5F1FFBA8571FF0000001000000000000000000000
        000AC08F7EFFFEFDFDFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF9F1EBFFF9F0
        EBFFF9F1EBFFF8F0EAFFFBF6F3FFBB8975FF0000000F00000000000000000000
        0009C49380FFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF9F3
        EDFFF9F2EDFFF9F1EBFFFCF7F4FFBE8B79FF0000000F00000000000000000000
        0009C69686FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
        EFFFFAF4EEFFFAF3EFFFFDF9F7FFC18E7DFF0000000E00000000000000000000
        0008C99B8AFFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
        F1FFFBF5F0FFFAF5F0FFFDFAF8FFC39382FF0000000D00000000000000000000
        0007C99E8DFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFBF6F1FFFDFBF9FFC69786FF0000000C00000000000000000000
        0006CEA190FFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7
        F5FFFBF7F4FFFCF7F3FFFDFCFAFFC89B8AFF0000000B00000000000000000000
        0006CEA393FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8
        F6FFFBF7F6FFFCF7F5FFFEFCFCFFCB9D8DFF0000000B00000000000000000000
        0005D0A696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFFEFEFDFFCDA191FF0000000900000000000000000000
        00039C7C71C0D2A898FFD1A897FFD1A897FFD1A797FFD0A696FFD0A696FFD0A6
        95FFD0A595FFCFA595FFCFA494FF98796EC20000000600000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0002000000040000000A0000000F00000011000000110000000F0000000A0000
        0005000000010000000000000000000000000000000000000000000000000000
        0000000000010000000200000004000000060000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000090000
        0011170C073D532D1897804626D293502AEB914F2AE97F4525D1522C17961209
        05340000000B0000000200000000000000000000000000000000000000000000
        000000000002000000070000000F00000016000000190000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001C0000001F0201012B5931
        1BA2A86239FBC58957FFD6A36DFFDDAF75FFDDAF74FFD6A46BFFC58956FFA461
        37F63B2112770000001100000003000000000000000000000000000000000000
        0001000000040000000F78554AC1A57666FFA57565FFA57465FFA57464FFA374
        63FFA47363FFA37362FFA37262FFA27162FFAE8376FFBDA299FFAD7556FFBC7C
        4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B782FFDEAF74FFDBAB
        72FFBD7E4EFF6F3F24B600000011000000020000000000000000000000000000
        00010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F4FFFBF7
        F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFF3F0EEFFC59E87FFBE8053FFE0B3
        7CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC8859FFDFB279FFDFB2
        77FFDEB077FFC08253FF55321D920000000A0000000100000000000000000000
        00010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6ECE6FFF6EC
        E5FFF4EBE5FFF4EBE5FFF4EBE4FFF4ECE7FFE2D4CCFFB5754BFFDFB27DFFDFB2
        7AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB7245FFE2B67EFFE0B4
        7CFFE0B47BFFDEB079FFB3734AFB130B072F0000000300000000000000000000
        00010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6ECE6FFF4ED
        E6FFF4ECE6FFF4ECE6FFF6ECE5FFF2EDE7FFC9A28BFFCD9B6FFFE2B780FFE5BD
        89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA7144FFE8C494FFE8C3
        93FFE5BF8CFFE1B77FFFD09C6EFF5434218B0000000800000000000000000000
        00010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7EDE9FFF6ED
        E8FFF6EDE6FFF6EDE6FFF6ECE6FFF3EDE9FFBF8968FFDCB383FFE3B781FFBA86
        59FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD7547FFB0784AFFB17A
        4BFFC29162FFE4B983FFDEB17EFF8E5B3BD00000000C00000000000000000000
        00000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EFE9FFF7EF
        E9FFF7EFE8FFF6EDE8FFF6EDE8FFF2EEEAFFBC8058FFE3BF8FFFE4BB84FFA56B
        3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7F4FFFAF7F3FFFAF6
        F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEE0000000D00000000000000000000
        00000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0E9FFF6EF
        E9FFF7EFE9FFF7EFE8FFF7EFE9FFF3EFECFFC18861FFE9C9A0FFE5BE89FFA56B
        3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADFD9FFE6DAD4FFE9DE
        D9FFAA7144FFE7C08CFFEACA9DFFAE764FEE0000000D00000000000000000000
        00000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0EBFFF7F0
        EBFFF7F0EAFFF7F0EAFFF7F0E9FFF5F0EDFFC89876FFE9CDACFFEAC796FFB784
        56FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B3FFFA56B3FFFA56B
        3FFFB78457FFEACA99FFEBD1ADFF996A49D40000000A00000000000000000000
        00000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1EBFFF7F1
        EBFFF7F1EBFFF7F0EBFFF8F0EAFFF6F1EDFFD5B39AFFDDBB9DFFEED3A9FFEECF
        A2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B3FFFF1D6AAFFF0D5
        A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F0000000600000000000000000000
        00000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2ECFFF8F1
        ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F2EDFFEDE2DAFFCA976FFFF5E8CCFFEFD6
        ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B3FFFF3DCB2FFF1DB
        B0FFF1D8ADFFF7EACDFFC69470FA1A120D2E0000000200000000000000000000
        0000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2EDFFF8F2
        EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF7F3EFFFDBBCA4FFD7B08CFFF8EF
        D3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A5FFFF4E1B9FFF4E2
        BDFFFAF1D5FFD9B390FF664B368C000000060000000000000000000000000000
        0000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3EFFFF8F2
        EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF8F2EEFFF6F2EFFFD6B192FFD9B3
        8FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7ECCAFFF8EED0FFF4E8
        CDFFD7AF8BFF88664BB40202010C000000010000000000000000000000000000
        0000000000030000000DB78E7FFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3F1FFF9F3
        F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF8F2EFFFF7F2EFFFDEC1
        ABFFD2A37AFFE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8B9FFE3C5A3FFD0A3
        7CFF4C392A720000000B00000001000000000000000000000000000000000000
        0000000000030000000CB98F80FFFFFEFEFFFAF4F1FFFAF6F1FFFAF4F1FFF9F4
        F1FFF9F3F1FFF9F3F0FFF9F3EFFFF9F3EFFFF9F3EFFFF8F2EFFFF9F3F0FFF8F4
        F2FFF0E7DEFFE1C7B0FFD6AF90FFD2A57EFFD2A680FFD5AF90FFDFC6B0FFD0B8
        ADFF000000150000000500000000000000000000000000000000000000000000
        0000000000030000000BBB9182FFFFFEFEFFFAF6F3FFF9F6F2FFF9F6F2FFF9F4
        F1FFF9F4F1FFFAF4F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF9F2
        EFFFF9F4EFFFF9F4F0FFF8F4F1FFF7F4F1FFF7F4F1FFF6F1EEFFF7F4F3FFBC97
        8AFF000000110000000400000000000000000000000000000000000000000000
        0000000000030000000BBC9384FFFFFEFEFFFAF7F3FFFBF7F3FFFAF6F2FFFAF7
        F2FFFAF6F2FFFAF6F2FFFAF4F1FFF9F4F1FFF9F4F0FFF9F3F1FFF9F4F0FFF9F3
        F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1EEFFB385
        76FF000000100000000400000000000000000000000000000000000000000000
        0000000000020000000ABD9685FFFFFFFEFFFBF8F4FFFAF7F4FFFAF7F3FFFAF7
        F3FFFAF7F3FFFAF6F3FFF9F6F2FFFAF6F2FFFAF6F2FFFAF6F1FFF9F4F1FFF8F3
        F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3ECE9FFB389
        78FF0000000F0000000400000000000000000000000000000000000000000000
        00000000000200000009BF9787FFFFFFFFFFFBF8F6FFFBF8F4FFFAF7F6FFFAF7
        F4FFFAF7F3FFFAF7F3FFFAF7F3FFFAF6F3FFFAF6F2FFF9F6F3FFFAF6F2FFF8F2
        EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1DDFFB589
        7AFF0000000E0000000400000000000000000000000000000000000000000000
        00000000000200000008C09989FFFFFFFFFFFBF8F7FFFBF8F6FFFBF8F6FFFBF8
        F6FFFAF8F4FFFBF7F4FFFAF7F4FFFBF7F4FFFAF7F4FFF9F5F2FFF9F5F1FFF5EE
        E9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8C2FFB78C
        7DFF0000000D0000000300000000000000000000000000000000000000000000
        00000000000200000007C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9F6FFFDF9
        F6FFFBF8F6FFFAF8F6FFFBF8F6FFFBF8F4FFFAF7F4FFFBF7F4FFF8F2EFFFEFE6
        DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5ACFFB78C
        7DFF0000000A0000000300000000000000000000000000000000000000000000
        00000000000200000007C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9F7FFFBFA
        F7FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2EFFFECDF
        DAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAFA6FF4C35
        2D86000000060000000200000000000000000000000000000000000000000000
        00000000000100000006C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9F8FFFDFA
        F8FFFDF9F7FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1EDFFEBDF
        DBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F3830860000
        0008000000030000000100000000000000000000000000000000000000000000
        00000000000100000005C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFBF9FFFDFA
        F9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0ECFFECE1
        DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B3386000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFBF9FFFDFB
        F9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5EDEBFFEBE1
        DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F368500000007000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFDFBFFFEFB
        FAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EBE7FFEDE1
        DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A840000000600000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2ECE9FFEEE3
        E0FFE4D2CBFFDBC5BDFF5A453E83000000050000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F91FFC69F
        92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E8EFFC39D
        8EFFC39D8EFF5D48418200000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000020000000200000003000000030000
        0003000000030000000300000003000000030000000400000004000000040000
        0004000000040000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnNUevoClick
    end
    object DxBarBtnEditar: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Enabled = False
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
      OnClick = DxBarBtnEditarClick
    end
    object DxBarBtnInasistencia: TdxBarButton
      Caption = 'Agregar &Inasistencia'
      Category = 0
      Enabled = False
      Hint = 'Agregar Inasistencia'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000020000
        000A000000100000001100000011000000110000001200000012000000120000
        0012000000120000001300000013000000120000000C000000030000000A8159
        4CC2B47C69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB37968FFB279
        68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000B0000000EB77F
        6EFFFBF7F4FFF8EEE9FFF8EEE8FFF7EFE8FFFAF4F0FFFBF7F4FFFBF6F3FFFAF4
        EFFFF6EDE6FFF6ECE6FFF6ECE6FFF6ECE5FFB47B69FF000000110000000EB984
        72FFFBF8F5FFF8F0EAFFF7EFE9FFF8EFE9FF806B62FF543B31FF543B30FF7F6A
        61FFF7EDE7FFF7ECE7FFF6ECE6FFF7EDE7FFB77F6EFF000000110000000EBC89
        78FFFCF9F7FFF9F1EDFFF8F0ECFFF8F0EBFFF9F0EBFF98877EFF816E64FFF8EF
        EAFFF7EFE9FFF8EEE9FFF7EEE8FFF8EEE9FFB98472FF000000100000000DC08E
        7DFFFCFAF8FFFAF3EFFFF9F2EEFFF9F2EEFFF9F2EDFF9A887FFF837066FFF9F1
        ECFFF8F1EBFFF9F0EBFFF8EFEAFFF8F1EBFFBC8977FF000000100000000CC394
        82FFFCFBF9FFFBF5F2FFFBF4F1FFFAF4F1FFFAF3F0FF9B8981FF847268FFFAF2
        EEFFF9F2EEFFF9F2EDFFF9F2EDFFF9F2EEFFC08E7CFF0000000F0000000BC798
        87FFFDFCFAFFFBF7F4FFFBF6F4FFFBF6F2FFFCF9F7FF9D8C84FF877368FFFAF5
        F1FFFAF4F1FFFAF3F0FFFAF3F0FFFAF4F0FFC49381FF0000000E0000000BC99D
        8CFFFDFCFBFFFCF8F6FFFCF7F5FFFCF7F5FF89746AFF5F4538FF88746AFFFBF6
        F3FFFBF6F2FFFBF6F2FFFAF5F2FFFAF6F2FFC69886FF0000000D0000000ACDA1
        90FFFEFDFCFFFCF9F8FFFCF8F7FFFCF9F7FFFCF8F7FFBEB1AAFF8B756BFFFCF7
        F6FFFCF7F6FFFCF7F5FFFBF6F5FFFBF7F5FFC99D8BFF0000000D00000009CFA5
        94FFFEFDFDFFFDFAF9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
        F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C000000084B53
        C3FF8D9EECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5D6CDEFF5B69
        DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B000000084C55
        C4FF93A4EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6172E0FF5E6F
        DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A000000074D56
        C6FF96A7EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8898EAFF8595
        EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF00000009000000043A40
        93C14D55C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF4249B9FF4046
        B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000010000
        0004000000060000000600000006000000070000000700000007000000070000
        0007000000070000000800000008000000070000000500000001}
      OnClick = DxBarBtnInasistenciaClick
    end
    object DxBarBtnEliminarRegistro: TdxBarButton
      Caption = 'Eliminar &Registro'
      Category = 0
      Enabled = False
      Hint = 'Eliminar Registro'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        0007000000060000000300000006000000080000000400000001000000000000
        00000000000000000000000000000000000000000000000000030B082C4D2619
        99EA110A58A2010003160F0855A3160C7EEA0603244F00000004000000000000
        0001000000060000000A0000000B0000000B0000000B000000112E23A2EA6F85
        EAFF4150CBFF1F1689E63B48C9FF5C74E4FF180E82E700000007000000000000
        000680574CBDB37B69FFB37A68FFB37A68FFB27968FFDCC6BEFF756BC0FF7780
        DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F00000005000000000000
        0008B57D6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFAF5F3FFEFECEFFF4D46
        BDFF6A85EBFF7494F2FF6079E7FF262094E40101041300000002000000000000
        0008B67F6DFFFCF8F5FFF8EFECFFF7EEEAFFF7EEEAFFF9F5F3FF807DD4FF6B7E
        E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000000000
        0008B8826FFFFCF9F6FFF8F0ECFFF8F0ECFFF7EFECFFFAF8F7FF6261D8FFB1C3
        F6FF8D99EAFF5F5DD2FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
        0007BA8473FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6564
        DEFF9291E2FFF2F1F3FF8982D3FF4340BCE71212334600000002000000000000
        0007BB8776FFFDFBF9FFF9F1EFFFF9F2EEFFF8F1EEFFF8F0EDFFFAF5F3FFFAF8
        F7FFFAF7F6FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
        0006BD8A78FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
        EEFFF8F0EDFFFDFAF8FFBB8675FF000000080000000000000000000000000000
        0006BF8D7BFFFEFCFBFFFAF4F1FFFAF4F1FFFAF2F1FFFAF2F0FFF9F2EFFFF9F2
        EEFFF8F1EEFFFDFBF9FFBD8978FF000000080000000000000000000000000000
        0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
        F1FFFAF3F1FFFEFCFBFFC18F7EFF000000070000000000000000000000000000
        0004C69887FFFFFEFEFFFBF7F6FFFCF6F6FFFBF6F5FFFBF6F4FFFBF5F4FFFAF5
        F3FFFAF5F3FFFEFDFDFFC59684FF000000060000000000000000000000000000
        0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
        F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
        0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
        FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
        00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
        99FFCEA899FFCFA898FF997B71C0000000030000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
        000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
        0000000000010000000200000004000000060000000700000007000000070000
        0007000000070000000800000008000000080000000800000008000000080000
        0010120B47953233AFFF3648CCFF1D1EA5FF0603357E00000017000000170804
        35801F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
        0000000000020000000800000011000000180000001B0000001C0000001D0000
        001D0000001D0000001D0000001D0000001E0000001E0000001E0000001F0000
        002A281D8DF3596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602358D0602358E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
        000100000004000000117E5E52C1AF8271FFAE8172FFAE8171FFAE8070FFAD80
        70FFAD7F70FFAC7F6FFFAC7E6EFFAB7E6DFFAB7D6DFFAB7D6CFFAE8271FFE1D4
        CFFF9389B4FF4D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF130F3C7A0000000900000000000000000000
        00010000000600000016B08374FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F5FFFBF7
        F4FFFAF7F4FFFBF6F3FFFBF6F3FFFAF5F2FFFAF5F1FFFAF4F1FFF9F4F1FFFAF7
        F4FFF3F2F1FFA19DC9FF585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF16123F7C0000000D0000000200000000000000000000
        00010000000600000018B18576FFFDFCFBFFF6EEE8FFF6EEE8FFF6EEE8FFF6ED
        E7FFF6EDE7FFF5EDE6FFF5ECE6FFF6ECE6FFF5ECE5FFF5EBE5FFF5ECE5FFF4EC
        E5FFF7F1ECFFF2F0EEFFA19DC9FF5D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF1916438A00000015000000030000000000000000000000000000
        00020000000600000018B38777FFFEFCFBFFF6EEE9FFF7EFE8FFF6EFE9FFF6EE
        E8FFF6EDE8FFF6EDE7FFF6EDE7FFF6EDE7FFF5ECE6FFF5EDE6FFF5ECE6FFF5EC
        E6FFF7F1ECFFF3F1EFFF9A97C5FF4A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF0B093A8800000013000000030000000000000000000000000000
        00010000000500000016B58B7CFFFEFDFCFFF8F0EBFFF7EFEAFFF7EFEAFFF7EF
        EAFFF7EFEAFFF7EFE9FFF6EEE9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EDE7FFF7F2
        EEFFF6F3F2FFA4A1CEFF555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF0E0C3C770000000B0000000100000000000000000000
        00010000000500000015B68C7EFFFEFDFCFFF7F1ECFFF7F1EBFFF8F0EBFFF8F0
        EBFFF7EFEAFFF6F0EAFFF6EFEAFFF7EFE9FFF6EFE8FFF6EEE8FFF6EEE8FFF8F6
        F4FFABA9D6FF636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF121140720000000600000000000000000000
        00000000000500000014B78E80FFFEFDFDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F0
        EBFFF8F0ECFFF7F0EBFFF7F0EAFFF7EFEAFFF7EFE9FFF7EFE9FFF7EFE8FFF6F4
        F2FF6769D3FFAFC6F6FF8EADF4FFABC4F8FF6F76D0FFA6A4D2FFB1B0DBFF868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
        00000000000500000013B88F82FFFEFDFDFFF8F2EEFFF8F1EDFFF8F2EDFFF8F1
        ECFFF8F1ECFFF8F1ECFFF8F1EBFFF7F0EBFFF7F0EAFFF7F0EAFFF6EFEAFFFAF7
        F6FFA9AAE1FF95A0EAFFC0D3F9FF7880D7FFAFADD9FFF7F5F3FFF6F3F2FFB8B8
        E3FF8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
        00000000000400000012BB9184FFFEFEFDFFF8F3EEFFF8F2EEFFF8F2EDFFF8F2
        EDFFF8F2ECFFF7F1ECFFF8F1ECFFF8F1ECFFF7F0EBFFF8F0EBFFF8F0EAFFF9F5
        F1FFF9F7F6FFADAFE5FF7175DDFFB5B4E0FFF8F6F4FFF8F2EEFFF8F2EEFFF9F7
        F7FFAFAAD3FF5E62CBEE31326886000000080000000100000000000000000000
        00000000000400000011BB9485FFFEFEFDFFF9F4F0FFF9F3EFFFF9F3EEFFF9F3
        EEFFF9F2EEFFF8F2EEFFF8F2EDFFF8F2ECFFF8F1ECFFF7F1ECFFF8F0EBFFF7F0
        EBFFFAF6F3FFFBF8F7FFF9F6F5FFFBF8F7FFF8F3EFFFF7EEE9FFF6EEE8FFFBF8
        F6FFE4D7D2FF0000001C0000000A000000020000000000000000000000000000
        00000000000400000010BC9788FFFEFEFDFFF9F3F0FFF9F4EFFFF9F3F0FFF9F4
        EFFFF9F3EEFFF8F3EEFFF8F3EEFFF9F2EDFFF8F2EDFFF8F1EDFFF8F1EDFFF8F0
        ECFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EBFFF7F0EAFFF6F0EAFFF7F0EAFFFBF7
        F4FFB58B7BFF0000001600000006000000010000000000000000000000000000
        0000000000040000000FBF988AFFFEFEFEFFFAF5F1FFF9F4F1FFFAF4F0FFF9F4
        EFFFF9F4EFFFF9F3EFFFF9F3EFFFF8F2EEFFF9F3EDFFF9F2EDFFF8F2EDFFF8F2
        ECFFF8F2ECFFF7F1ECFFF7F0ECFFF8F0ECFFF8F1ECFFF7F0EBFFF8F0EBFFFBF8
        F5FFB58A7AFF0000001500000005000000010000000000000000000000000000
        0000000000040000000EC0998BFFFEFEFEFFFAF5F2FFFAF5F1FFFAF5F2FFF9F4
        F0FFF9F4F0FFF9F4F0FFF9F4F0FFF9F3EFFFF9F3EFFFF9F3EEFFF9F2EEFFF9F2
        EDFFF8F1EDFFF8F2EDFFF8F1EDFFF8F2ECFFF8F1ECFFF7F0ECFFF8F0EBFFFBF8
        F6FFB58C7DFF0000001500000005000000010000000000000000000000000000
        0000000000030000000EC19C8DFFFFFEFEFFFBF6F3FFFAF6F2FFFAF6F2FFFAF5
        F2FFFAF5F1FFF9F4F1FFF9F4F0FFF9F4F0FFF9F3EFFFF9F3F0FFF8F3EFFFF9F3
        EFFFF8F2EEFFF8F2EDFFF8F2EEFFF8F1EDFFF8F1EDFFF8F1EDFFF8F1ECFFFBF9
        F7FFB78E7FFF0000001400000005000000010000000000000000000000000000
        0000000000030000000CC49F90FFFFFEFEFFFBF7F5FFFBF7F4FFFBF6F3FFFBF7
        F3FFFBF6F3FFFAF6F3FFFAF5F3FFFAF5F1FFFAF5F1FFFAF5F1FFF9F4F1FFFAF4
        F1FFF9F4F1FFF9F4F0FFF9F3EFFFF9F3EFFFF8F3EFFFF8F2EEFFF8F2EEFFFAF7
        F5FFB99283FF0000001200000004000000000000000000000000000000000000
        0000000000030000000BC4A192FFFFFFFEFFFBF7F5FFFBF8F5FFFBF7F5FFFAF7
        F4FFFAF7F4FFFAF6F3FFFAF6F3FFFAF6F2FFFAF6F2FFFAF5F2FFFAF5F1FFFAF5
        F1FFFAF4F1FFFAF5F0FFFAF4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF7F1ECFFF9F4
        F3FFBB9284FF0000001100000004000000000000000000000000000000000000
        0000000000020000000AC6A294FFFFFFFEFFFCF8F6FFFBF8F5FFFBF8F5FFFCF8
        F5FFFBF7F4FFFBF8F4FFFBF7F4FFFBF6F3FFFAF6F3FFFAF6F2FFFAF5F3FFFAF6
        F2FFFAF5F2FFFAF5F2FFFAF5F1FFFAF5F1FFF9F4F1FFF7F2EDFFF6EFEAFFF7F2
        EFFFBD9486FF0000001000000004000000000000000000000000000000000000
        00000000000200000009C8A495FFFFFFFFFFFCF9F6FFFBF9F6FFFCF9F6FFFBF8
        F6FFFBF8F5FFFBF8F5FFFBF8F5FFFAF7F4FFFBF7F4FFFBF7F4FFFBF7F3FFFAF6
        F3FFF9F5F2FFFAF6F3FFF9F5F1FFF9F4F0FFF7F2EDFFF5EFEAFFF3EAE6FFF3ED
        EAFFBD9888FF0000000F00000004000000000000000000000000000000000000
        00000000000200000008C8A597FFFFFFFFFFFCFAF8FFFCFAF7FFFCF9F7FFFCF9
        F6FFFBF8F7FFFBF8F6FFFBF8F5FFFBF8F5FFFBF7F5FFFBF7F4FFFAF7F5FFFBF7
        F4FFF9F4F1FFF7F1EDFFF6EFEBFFF4ECE6FFF1E7E3FFEFE4DFFFECE0DBFFECE1
        DDFFBF988AFF0000000E00000004000000000000000000000000000000000000
        00000000000200000008C9A698FFFFFFFFFFFCFAF9FFFCFAF8FFFCF9F8FFFCF9
        F7FFFCF9F7FFFCF9F7FFFBF9F6FFFBF8F6FFFCF8F6FFFBF8F6FFFAF6F4FFFAF6
        F3FFF6EFEAFFEFE3DEFFE7D9D2FFE2D3CBFFE1CFC8FFDFCCC4FFDCC8BFFFDCC9
        C2FFC19A8CFF0000000D00000003000000000000000000000000000000000000
        00000000000200000007CBA899FFFFFFFFFFFDFAF9FFFDFAF9FFFCFAF8FFFCFA
        F8FFFCFAF7FFFDFAF7FFFCF9F7FFFCF9F7FFFCF9F6FFFBF8F6FFFCF8F6FFF9F3
        F1FFF0E7E1FFB89284FFAC7F6FFFAB7E6DFFAB7D6DFFAB7C6CFFAA7C6CFFD1B8
        AFFFC29D8DFF0000000A00000003000000000000000000000000000000000000
        00000000000100000006CBA99BFFFFFFFFFFFDFBFAFFFDFAFAFFFCFAF9FFFCFA
        F9FFFDFAF8FFFCFBF8FFFCFAF8FFFCF9F7FFFCF9F7FFFCF9F7FFFBF9F6FFF8F3
        F0FFEDE0DCFFB18676FFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFD1B7
        AEFF533C35860000000600000002000000000000000000000000000000000000
        00000000000100000005CBAA9DFFFFFFFFFFFDFBFAFFFDFBFAFFFDFBF9FFFDFB
        FAFFFDFAF9FFFDFBF9FFFDFAF8FFFCFAF8FFFCFAF8FFFCFAF7FFFCF9F7FFF7F2
        EEFFECE0DBFFB68D7DFFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFD4BAB0FF553F
        3886000000080000000300000001000000000000000000000000000000000000
        00000000000100000005CCAB9DFFFFFFFFFFFEFCFBFFFEFCFAFFFEFBFAFFFDFB
        FBFFFDFCFAFFFDFBFAFFFDFBF9FFFDFAF9FFFCFAF8FFFCFAF9FFFAF7F5FFF6F1
        EDFFEDE2DCFFBC9485FFFFFEFEFFFDF9F6FFFBF6F3FFD6BCB4FF58433B860000
        0008000000030000000100000000000000000000000000000000000000000000
        00000000000100000004CDAC9FFFFFFFFFFFFDFCFCFFFDFDFCFFFDFCFBFFFDFC
        FBFFFDFCFAFFFDFCFAFFFEFBFAFFFDFBF9FFFDFBF9FFFAF8F7FFF9F5F3FFF5EE
        ECFFECE2DDFFC19C8CFFFFFEFEFFFBF6F3FFD9C1B7FF5B463F85000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000100000003CEAD9FFFFFFFFFFFFEFCFCFFFEFDFCFFFEFDFCFFFDFC
        FCFFFDFDFCFFFEFCFBFFFEFCFBFFFDFCFAFFFBF8F7FFF9F6F4FFF7F2EFFFF3EC
        E8FFEDE2DDFFC6A293FFFFFEFEFFDBC3BAFF5D49428400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000002CEADA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE5D4CEFFE0CCC4FF5F4D45830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001998076BECEAEA0FFCEADA0FFCEAE9FFFCEADA0FFCEAD
        9FFFCDAC9FFFCEACA0FFCDAC9FFFCDAC9FFFCCAC9EFFCCAB9EFFCCAA9DFFCCAB
        9CFFCBAA9CFFCBAA9CFF614F4882000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnEliminarRegistroClick
    end
    object DxBarBtnModificarFechaBaja: TdxBarLargeButton
      Caption = '&Modificar Fecha de Baja'
      Category = 0
      Enabled = False
      Hint = 'Modificar Fecha de Baja'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000000D000000180000000E000000030000000000000000000000010000
        0004000000070000000A0000000B0000000D0000000D00000010000000160000
        0021271713826D4034FF1E110E810000001B0000000D00000004000000040E38
        297E134F37B414593DD212583BDB126441FF105D3DFF0C462DDD444A39EC5648
        3BED8B6758FDCABAB2FF5C3529FB3B241BC22A1813930000000D00000006278A
        63FF3BAA82FF2FA377FF2B9E73FF2A9E72FF25986AFF1D825BFF7B6F5DFFD5C6
        C0FFE2D8D4FFE0D5CFFFE1D7D4FFAE978EFF4E2F26D50000001000000004267B
        5BD555BB98FF63CDAAFF41BA8FFF33AE83FF30A97BFF2F9F76FF50896DFFAF91
        86FFF1ECE8FF825747FFE5DCD5FF89665AFF1E130F6C0000000C000000010511
        0D201D5D459F339774F85BC2A1FF43B48CFF3EAF87FF45AA87FF867C6AFEDBCC
        C7FFE9E0DDFFFFFFFFFFDDD1CAFFD6C7C1FF603F34D20000000D000000000000
        000100000003040D0A212A705BDA3B7289FF336981FF236E57F9576E5AF97676
        64FFA68574FFEDE5E2FFA48273FE706456E13D2B248400000008000000000000
        00000000000000000013345978DB7DA4CDFF588BC1FF285A7BFF379373FF389D
        79FF558C70FFB08C7DFF52856AFF155D43FD0101011600000001000000000000
        0000000000020203041F5379ACF9BDE0F5FF8BC2EBFF335D97FF4DA489FF49B5
        8FFF4BB18EFF51AA8EFF308567FF144E39C10101010B00000000000000000000
        00000000000517335FC05C80B0FFCAE8F6FF94C6E9FF375D95FF38657FFF77C3
        ADFF6DBEA4FF276B56D70F2A21670101010D0000000200000000000000000000
        000000000006205090F64F7CB1FF517CAFFF2C5088FF325D98FF1B3D77FF355A
        90FF30607BF60A0B0B2E01010107000000010000000000000000000000000000
        000000000003255A9AE66C9DD0FE5C8CC1FF76A5D3FF5385BEFF1F4683FF74B5
        EBFF4374AFFF1621326E0303030A000000000000000000000000000000000000
        0000000000010C1F3249255B92C22E6EB0E62F72B8FA2B5D9BF36990BAFF8BC7
        F2FF5A8EC4FF20385EC205050511000000000000000000000000000000000000
        00000000000000000001000000020000000304040410264F88FA82A5C8FF497A
        ACFF38669DFF1C447AFB06060716000000000000000000000000000000000000
        00000000000000000000000000000000000002020207285795F54577B1FE5F95
        CFFF4C85C5FF24528FFF05080B1A000000000000000000000000000000000000
        0000000000000000000000000000000000000101010211253D61295892D62F68
        AAF726568DD81328437301010103000000000000000000000000}
      OnClick = DxBarBtnModificarFechaBajaClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000040000000600000006000000040000
        0002000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00020000000300000005000000080000000E00000016000000160000000F0000
        0008000000050000000400000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        00080000000F0000001100000016211916705D473DFF5C463DFF1A1310710000
        001800000014000000110000000A000000040000000100000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000200000003000000080403
        031D4B3A35C6332520B30C09084B46352FC4B2A098FFA79489FF382A24C50B08
        074F2C201CB033251FCC030202240000000A0000000200000001000000000000
        0000000000000000000100000002000000030000000300000004000000050000
        0005000000050000000600000006000000060000000500000008000000105241
        39C8C5B7B0FFA4928AFF645047FF675047FEC9B7ACFFC6B3A7FF59423BFE6651
        48FE98847AFFA69286FF352520C9000000100000000400000001000000000000
        00010000000300000006000000090000000B0000000E0000000F000000110000
        00120000001400000015000000150000001500000015000000170000001E4738
        32B1BCADA6FFE2D8D2FFD0C1B7FFBFAEA2FFCEBDB2FFCCBAB1FFBBA79DFFC9B6
        AAFFCAB5A9FF9B887DFF30231FB1000000120000000500000001000000010000
        00040000000A030B08260A2C206A0D3C2D91104D39B5105A42D20E5940D30F5C
        44E00F6A4DFF0D694BFF0C664AFF0B6548FF09553DE1084E37D5064A34D61640
        30C8927A70FDE9E1DDFFD7C9C1FFD5C7BEFFE1D6D0FFE6DDD6FFDFD3CBFFD0C0
        B5FFCBB8AEFF69544AFD0C090847000000140000000700000001000000020000
        00081A5E48C2288466FF2F8B6EFF338F71FF359274FF379575FF339172FF3090
        6FFF309070FF2B8D6BFF268867FF228462FF1B7C5AFF167655FF37654EFF535B
        4BFF8A7064FFD8CDC6FFE1D7D0FFCFC2BBFF998179FF9F887EFFD2C5BEFFE1D6
        CFFFC3B1A6FF634C43FF41322CC2221915720000000C00000003000000020000
        000A268465FF79C5AEFF52AD90FF4DA98BFF49A688FF44A283FF3F9E7FFF3B9A
        7AFF369575FF319171FF2C8E6CFF288967FF238562FF1E7D5BFF95796CFFD9CF
        CAFFEBE4E1FFE7E0DCFFE7DDD9FF897167FF251D1B6F261E1C67987F77FFE8E0
        DBFFD2C2B9FFCFC0B4FFB5A197FF71594FFF0000001000000004000000020000
        0009298769FF7EC8B3FF56B294FF52AE91FF4FAB8DFF4AA789FF46A285FF409F
        80FF3C9A7BFF379677FF329272FF2D8F6DFF298967FF238261FF998071FFDBD1
        CCFFF6F3F1FFF9F6F5FFEBE5E1FF7E625BFF1F171568201816608A7068FFEDE6
        E2FFDACAC3FFD2C3BBFFC3B5AFFF755D53FF0000000F00000004000000020000
        000728795EE077C2ABFF66BCA0FF6BBDA4FF6EBEA5FF68BBA1FF5EB298FF4EA8
        8BFF42A081FF3D9C7CFF389878FF339373FF2E8E6EFF298868FF4C8268FF7380
        6BFF9A8274FFECE6E4FFEDE6E3FFCEC1BCFF8B736CFF8C736DFFD1C6C0FFE7DE
        D9FFD4C8C1FF7C6459FD54433DB928201D620101010C00000002000000010000
        0004143B2E6F58AA91FF98D3C3FF93D3C0FF81C9B4FF78C5ADFF76C2ACFF77C2
        ACFF6ABAA1FF5FB298FF5EB298FF57AE92FF4AA587FF399677FF2A8868FF3985
        67FFAB978BFFF4F0EEFFF0EAE7FFEEE8E4FFF0EAE7FFECE5E1FFEBE3DFFFEBE5
        E1FFE7DEDAFF7B655BFD100C0B3C0000000D0000000400000001000000000000
        000100000004153B2F6E30846AEC5FAD94FF97D1C0FF9BD7C5FF83C7B4FF5EAC
        93FF3F9378FF247E61FF217A5DFF2E846AFF43977DFF5AAC92FF57AA91FF7E8E
        7CFFDDD4D0FFF5F2F0FFF4F1EFFFEBE5E2FFFCFAFAFFF0E9E7FFE0D6D0FFF9F7
        F6FFF7F4F2FFC1B5AFFF493831AF000000090000000200000000000000000000
        000000000001000000030205040F14392C6B287B5FE054A48BFF62AD97FF4697
        88FF70ADBBFF71A4C3FF5684ACFF407697FF2A7470FF44937DFF34896EFF8087
        74FFE6E0DCFFDED4D0FFAE9C92FFA18B7FFFFAF8F7FFF2EDEBFF9D877BFEA994
        88FCD9CFC9FFDDD5D0FF67564CC1000000070000000200000000000000000000
        000000000000000000010000000100000003000000051132275F307F67E39CC8
        D7FF678DAEFF335484FF2D4F80FF375886FF39658DFF237C61FF248463FF2D8C
        67FF86917CFF788F79FF378867FF7D8A77FFE2DAD6FFE1DAD6FF778472FF2D75
        5AFF6D7B68FB6E5B53C905040412000000030000000100000000000000000000
        000000000000000000000000000000000001000000010000000409131030356B
        78FC2F5A95FF4574ADFF4271ABFF204B88FF286065FF328D6DFF309673FF2F95
        73FF2E9470FF2B946EFF2A926CFF559173FFA79284FFA79183FF538D70FF2C93
        6FFF17664BF60101011500000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000002020208131924523F6A
        A1FE75ADE2FF75AEE2FF7EB3E4FF76ABDDFF26518AFF478C81FF4BAC8CFF42A8
        85FF36A07AFF349C77FF329975FF309772FF2E9470FF2C946EFF2D956FFF3397
        76FF176149E50101010F00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000040404102E486CBC5F94
        CBFF74B2E7FF6DABE3FF69A6DFFF7DB3E4FF5182B9FF33637FFF5AAF95FF57B8
        99FF51B495FF40A683FF38A27DFF35A07BFF349C79FF3BA17EFF40A683FF3392
        72FF124534A70101010900000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000010B0E1229446A9EF490C7
        EEFF93CDF5FF81C0EEFF70ADE4FF74ACE2FF76A9DBFF224D84FF559E8CFF429A
        7FFF30866AFF33896DFF369878FF44AB88FF50B293FF419E81FF2B8266FF1853
        40BC0308061D0000000300000000000000000000000000000000000000000000
        000000000000000000000000000000000000010101033F5C84D55882B6FFA8DC
        FAFFA5DAFAFF99D2F6FF7DBAEBFF6EABE2FF7FB3E3FF2C5794FF315A80FF7FB0
        BFFF7BA1BFFF588299FF2D706CFF429C7FFF32876BFD1B5340AE0817123D0101
        010A000000020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000611244E133776FF5880B1FFAEDE
        F7FFB1E2FCFFA9DDFAFF8BC6F1FF72ADE3FF75A7D7FF204681FF163A75FF5C7D
        A0FF456692FF47658EFF457082FF286954CC07110E2D01010108000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000D2B5AB5265596FF3A6095FFA9D3
        EBFFAEDBF2FF99C6E3FF78ABD5FF6096CAFF5B87B8FF11326FFF0F387CFF3D66
        9EFF6495C8FF507FB5FF366082FC0D100F360101010600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000153F80EA3F76B5FF234B89FF8FB5
        CFFF678DB4FF244983FF133878FF123672FF173771FF0F3D80FF103E85FF2F5C
        99FF81BBEAFF87BEEAFF4E7AB1FF1E2C418B0404040E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001C5097FF5D96D0FF215398FF3F66
        99FF285DA2FF326BB2FF2D69B2FF235BA5FF194C95FF124792FF134791FF1F47
        88FF86C0EDFF86C0ECFF74A7D7FF2E4C78D90909091E01010103000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001F5497EA68A1D5FF4783C1FF295F
        A1FF5790CFFF74A9DCFF6DA3D6FF548CC7FF3671B4FF1E57A2FF174E99FF1F4B
        8CFFABD9F6FF84C0ECFF8BC0EBFF3D639AFE20314A8A0303030A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000183D6A995691CCFF7BB3DEFF588B
        BDFFA3CCEFFFA6CCECFF90BDE3FF71A4D5FF538BC5FF3C76B6FF2059A0FF436F
        A7FFBDE3F8FF85C1EDFF90C5EDFF4870A5FF1F3B72F7080C1634000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000040A1118255B99CF3B7BC3FF70A7
        DFFF82B2E0FFA5CAEAFFB7D7EFFF96BEE2FF6398CDFF346DAFFF285CA0FF9CC2
        DEFFA4CBE6FF72ACD9FF7AAFDAFF4C72A7FF1D3B76FF0F1E3C87000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000915232F1432
        5575225288B72B66A8DE2E72BEFF2B69B3F83871B6FF2D61A4FF7FA5CAFF537A
        ACFF305893FF264F8AFF29508AFF31558EFF264C86FF162D56B1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000274E79AE8FB3D9FF84ACD4FF406EAAFF5E8A
        BFFF6696C9FF5E8DC4FF4370ABFF335E9BFF2C5795FF1D3A68C3000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F3B5A787CA9D5FFC1DCF2FF7BA9D5FFBED9
        EFFFB0CEEAFF8FB6DEFF6391C6FF4B7BB6FF4170ACFF1E3C65AB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000060B11154277ADDA72A4D5FF86B2DCFFB5D0
        EAFFC8DCF0FFC4DCEFFF9DBFE0FF6A99CBFF3F70A8F20A152133000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000004080C0F192F4658284D74923467
        98C33D77B2E74281C2FF386CA5DB264A70990A141E2A00000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object DxBarBtnModificarContratacion: TdxBarButton
      Caption = '&Modificar Contrataci'#243'n'
      Category = 0
      Enabled = False
      Hint = 'Modificar Contrataci'#243'n'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000E421C11FF31140CE1190A06980304
        07420000000C0000000200000000000000000000000000000000000000000000
        00000000000000000000000000000000000D663C2BDCB9C7D2FF7889A2FF2441
        82FF051033960000000F00000002000000000000000000000000000000020000
        00090000000E0000000F0000001065656576775D52CB879AB2FFC8E3F5FF1F66
        B6FF2B6BA8FF051236950000000E000000020000000000000000000000088C66
        57C0C38C7AFFC38C79FFC28B78FFCFA697FFBAA9A4FF488BC3FFDEFEFDFF51B4
        E3FF1F68B7FF3173AEFF061538940000000D00000002000000000000000CC591
        7EFFFDFBFAFFFCF8F6FFFBF7F5FFFAF7F4FFF5F3F1FF8EB4D1FF479FD2FFDEFE
        FDFF59BFE9FF216BB9FF367BB3FF07173A920000000C000000020000000CC794
        81FFFEFBFAFFF9F0EAFFF8F0EAFFF8EFE9FFF9F2EDFFF3EEEBFF8EB4CEFF4BA5
        D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF08193D900000000A0000000BC997
        86FFFEFCFBFFF9F2EDFFE1C8BDFFAC6C56FFF9F0EAFFF9F3EEFFCEADA2FF8AAB
        C6FF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F8E0000000ACB9C
        8BFFFEFDFCFFFAF3EFFFB0725BFFFAF3EEFFFAF1ECFFF9F1EBFFF9F3EFFFCEAF
        A3FF92B8D3FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF00000009CFA0
        8DFFFEFEFDFFF4E8E2FFB3765DFFFBF4F0FFFAF3EFFFFAF3EFFFF9F3EDFFBF8F
        7DFFF2EBE7FF95BBD7FF54B1DCFFDEFEFDFF4FA6D4FF112B4E8800000009D0A3
        93FFFEFEFDFFB77A63FFDABAADFFFBF5F1FFFBF5F0FFFBF5F0FFFAF4EFFFD6B3
        A5FFC08F7DFFF9F7F6FF8AA7BFFF357FBCFF173A59860000000500000008D3A8
        97FFFEFEFEFFF4EAE6FFB77A64FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5F1FFB070
        59FFF2E7E0FFFCFAF9FFE5CEC5FF00000011000000030000000100000007D3AB
        9AFFFFFEFEFFFCF8F6FFBA7E69FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFB273
        5CFFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
        9DFFFFFFFEFFFDF9F7FFE8D3CBFFBB7F6AFFFCF8F6FFFCF7F5FFB67862FFE4CE
        C5FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
        A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
        F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
        A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
        FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
        7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
        A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
      OnClick = DxBarBtnModificarContratacionClick
    end
    object DxBarBtnGenerarBaja: TdxBarLargeButton
      Caption = '&Generar Baja'
      Category = 0
      Enabled = False
      Hint = 'Generar Baja'
      Visible = ivAlways
      Glyph.Data = {
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
      OnClick = DxBarBtnGenerarBajaClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000003000000040000
        0006000000060000000600000007000000070000000800000008000000080000
        0008000000070000000800000007000000070000000700000006000000040000
        0003000000020000000100000001000000010000000000000000000000000000
        0000000000020000000400000006000000090000000C0000000F000000130000
        001600000017000000190000001A0000001C0000001E0000001F0000001F0000
        001F0000001E0000001D0000001D0000001C0000001B00000017000000140000
        00100000000C0000000900000006000000030000000100000000000000010000
        0003000000080000000F00000015020A14330519305A08264A7D0B396EAA0D45
        87C90E4A90D60E4990D70D488FD70E4D99E31058B0FF1057AEFF0F55ADFF0F55
        ACFF0D4892E40B4288D80B4187D80B4185D80A3C7ACC083062AF052041840314
        2A630108113D0000001F000000160000000D0000000500000001000000020000
        00090413223E0C376594145CAAE61769C4FF186CC6FF166ECAFF1771CEFF1773
        D1FF1773D1FF1571D0FFE9D9CEFFEADACEFFCECCCFFF5C95D1FFA3B7CFFFA2B7
        CFFF779FCCFFDCD3CEFF1269C7FF1268C6FF1266C3FF1161BDFF105BB5FF0F57
        AEFF0E53A7FF0C458FE90628539D020D1C490000000E00000004000000030000
        000E196FC6FF328DD9FF1D82DFFF1E83E1FF1D82E0FF1D81DEFF1B7FDEFF1B7E
        DDFF1A7DDCFF146FC9FFEDE0D5FF4E8CCCFF7AA6D3FFECE0D5FF317DCBFFEDDF
        D5FFDED8D4FF6B9FD4FF1572D2FF1571D0FF1470D0FF146FCFFF146ECEFF136D
        CEFF136CCDFF1268C8FF1362BAFF0D50A3FF0000001800000006000000040000
        00101A74C9FF51B0F0FF248DE7FF228BE5FF2289E5FF2187E4FF2086E2FF1F84
        E1FF1E83E1FF1874CDFFF1E7DFFF5397D7FF1671CAFFF0E7DFFF508ECFFFB6C7
        D9FFF1E6DEFF1878D7FF1877D6FF1775D5FF1674D4FF1673D3FF1672D2FF1571
        D1FF1570D0FF156FCFFF1974CFFF0D4E9DF40000001B00000007000000030000
        000E1C75C5F759B4F2FF3099ECFF2892EBFF2690EAFF2B94E9FF3298EAFF349A
        E9FF379BEAFF2C8BD8FFF5EEE9FF62AAE6FF74AADAFFF5EEE8FF2880D3FFF5EE
        E9FFE7E7E7FF559CDEFF1B7CDAFF1A7BDAFF197AD8FF1878D7FF1877D7FF1877
        D5FF1775D5FF1875D3FF1C79D1FF0F509CEC0000001900000006000000020000
        000A1965A6D155B1EFFF45AAF3FF319CF0FF40A7F1FF46AAF1FF44A9F1FF43A7
        F0FF42A5EFFF3596DDFFF9F5F2FFF9F5F2FFECEEF0FF83BEECFFA2C5E5FFBED4
        E9FF85B8E6FFDDE6F0FF1F83DFFF1E82DEFF1D80DDFF1D7FDCFF1C7DDBFF1B7C
        DAFF1A7BD9FF1C7BD8FF1E7AD3FF0D4482C60000001300000005000000010000
        00060D3553703E9CE0FF6CC2F9FF6AC3F7FF59B8F7FF51B4F5FF51B2F5FF4FB0
        F4FF4DB0F3FF3E9FE1FF3E9DE1FF44A2E2FF52AEEBFF52ADE8FF50A9E5FF3C9A
        E4FF2B88D7FF268CE6FF248AE4FF2388E3FF2287E2FF2186E1FF1F84E0FF1E82
        DEFF2083DFFF2688DFFF1F77CEFF07213F6C0000000C00000003000000000000
        00030002030B165789AB4BA6E3FF79C6F3FF8AD2FBFF79CAFAFF64C0F9FF59BA
        F7FF57B9F7FF5BBAF6FF64BEF6FF50A3E6FF3B88D5FF276EC6FF2267C0FF2D75
        C9FF3487D8FF40A3EDFF2F97EAFF2890E9FF278EE8FF268DE6FF298EE6FF3295
        E7FF3291E0FF237DD0FF0F4579A9000000110000000600000001000000000000
        000100000003000000070F2D41542977ABCA4AA7E3FF77C5F3FF91D6FBFF83D1
        FBFF73C9FAFF6CC1F8FF4695DCFF5D99D3FF71AAD9FF77B0DAFF629CCEFF4681
        C1FF2D6BBAFF1D62BFFF46A2EBFF369EEEFF329AEEFF3EA1EFFF3897E3FF2583
        D3FF155B9BCB08233B5D0000000F000000060000000200000000000000000000
        0000000000010000000200000004000000070C233242266D99B649A8E3FF74C3
        F1FF9DDAFBFF62A5DFFF90C3E5FF96CCE9FF7AB0D7FF5F95C6FF548DC3FF4D89
        C0FF4682BEFF3775BBFF1F60B9FF5CB6F3FF409FE6FF2787D5FF14558BB5071C
        2E4A0000000F0000000900000004000000010000000000000000000000000000
        00000000000000000000000000010000000200000004000000060A1C27352464
        8BA54BA6DFFD8FC0E1FF9FD2EAFF79AACEFF4372A6FF356399FF306098FF3164
        9EFF3971ADFF3A78B7FF2C6AB3FF2C85CFFB13507EA3051420350000000C0000
        0007000000040000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000030000
        0007102230465780ADFD74A3C7FF305C93FF143F85FF0C3883FF0B3883FF103C
        83FF1C4A88FF295F9FFF234F8DFC071726450000000B00000005000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00030000000A182E41702A528BFF3567A6FF7EB4DAFF89CAEDFF61B1E2FF448F
        C8FF21579BFF153A77FF091B2C650000000E0000000500000001000000000000
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
        0000000000000000000000000000000000000000000000000000}
    end
    object DxBarBtnHistorialContratos: TdxBarLargeButton
      Caption = '&Historial de Contratos'
      Category = 0
      Enabled = False
      Hint = 'Historial de Contratos'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        000C000000130000001400000015000000150000001500000016000000160000
        00160000001600000017000000160000000E00000004000000000000000B305A
        85C4407CB9FF417CB9FF417BB8FF407AB8FF3F7AB8FF4079B8FF3F79B8FF3F78
        B7FF3E78B6FF3E77B7FF3E77B7FF2C5582C60000000D0000000000000010437F
        BBFFD0F3FCFFC1EFFCFFC1F0FCFFC0EFFCFFBFEEFCFFBEEFFCFFBDEFFCFFBCEE
        FCFFBBEEFCFFBAEEFCFFBBEDFCFF629ACBFF0000001400000000000000104581
        BEFFC4EFFCFF9FE4FBFF9FE4FBFF9EE4FBFF9FE4FBFF9EE4FBFF9EE4FBFF9FE4
        FBFF9EE3FBFF9EE3FBFFAAE7FCFF417CB9FF00000014000000000000000F4685
        BFFFB9EBFCFF87DBFAFF87DBFAFF87DBF9FF86DBFAFF87DBFAFF86DBFAFF86DB
        FAFF86DBF9FF87DBFAFF96E0FBFF427EBBFF00000012000000000000000E4888
        C0FFB0E7FBFF74D2F8FF73D2F9FF74D3F8FF73D2F8FF74D2F8FF74D2F8FF73D1
        F7FF72CFF7FF71CEF4FF85D5F7FF4481BCFF00000011000000000000000C4A8A
        C2FFAEE7FBFF6CCDF7FF6CCDF8FF6CCDF7FF6CCDF8FF6BCDF8FF6ACAF5FF67C4
        F0FF65C1ECFF62BEEAFF7AC9EEFF4482BCFF00000010000000000000000B4B8D
        C4FFACE6FBFF63C9F7FF62C9F7FF62C9F7FF62C9F7FF60C3F2FF5AB8E7FF51AA
        DAFF4EA4D5FF54AEDEFF72C5ECFF4785BEFF0000000F000000000000000A4D8F
        C6FFACE6FBFF5BC4F7FF5BC4F6FF5BC4F7FF57BCEEFF3F8DC3FF3375ABFF3173
        AAFF3981B7FF48A0D4FF71C7EFFF4988C0FF0000000E00000000000000094F92
        C7FFABE6FBFF54C0F6FF54C0F6FF56BEEFFF6D6F6BFF7E5531FF754E2CFF5755
        53FF2F6EA3FF3B8DC4FF6EC6F0FF4A8BC3FF0000000D00000000000000085094
        C9FFABE5FBFF4FBDF6FF4EBCF5FF7C8E8CFFB08052FFDDA05EFFD89854FF9762
        30FF555859FF3482BCFF71CAF4FF4C8EC5FF0000000B00000000000000075296
        CBFFABE6FCFF49BAF6FF49BAF5FFA47449FFEAC595FFDD9D5DFFBC7B41FFB372
        39FF855429FF3489C4FF70CEF8FF4E92C7FF0000000A00000000000000065399
        CCFFACE7FCFFAAE6FCFFA8E6FCFFB18156FFEDC89AFFCC8C53FFE6C9A5FFD8AE
        7BFFA96934FF7DBCDDFF96DDFAFF4F93C8FF0000000900000000000000033E72
        98C0549ACCFF5499CDFF5399CCFF8A8C89FFC3905FFFD09057FFE6C8A2FFE3C4
        9DFFAE733FFF5095C9FF5296CAFF3C6E95C20000000500000000000000010000
        00030000000400000005000000050503020B61422886AD7645ECC1814AF9AF74
        41E93321124A0000000600000006000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0001000000020000000400000005000000050000000600000006000000060000
        0006000000060000000600000006000000060000000600000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0008000000080000000700000006000000030000000200000001000000010000
        0003000000090000000F00000013000000150000001500000016000000160000
        00170000001700000018000000180000001800000019000000190000001A0000
        001A0000001A0000001B0000001B0000001C0000001C0000001C0000001D0000
        001D0000001D0000001C000000170000000F0000000500000002000000020000
        000811213457376BA5EA3D75B5FF3D74B4FF3C74B4FF3C74B4FF3B73B3FF3B73
        B3FF3B72B2FF3B72B3FF3A71B2FF3A70B1FF3A70B1FF396FB1FF396FB1FF396E
        B1FF386EB0FF386EB0FF386DB0FF376CAFFF376CAFFF376CAFFF366CAEFF366B
        AEFF366BAEFF366AAEFF305F9EEC0F1E31600000000D00000003000000030000
        000D386CA4E7BAD6EAFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7
        FDFFD6F7FDFFD6F7FEFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7
        FDFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7FDFFD6F7FDFFC2E2F4FFD6F7
        FDFFD6F7FDFFD6F7FDFFA9CFE7FF30609BE90000001600000006000000040000
        000F4079B8FFE9FAFEFFB2EEFCFFB2EEFDFFB2EEFCFFB2EEFCFFB2EEFCFFB2EE
        FCFFB1EEFCFFB2EEFCFFB1EEFCFFB2EEFCFFB1EEFCFFB2EEFCFFB2EEFDFFB2EE
        FCFFB1EEFCFFB1EEFCFFB2EEFCFFB1EEFCFFB2EEFCFFB1EEFDFF91C8EAFFB2EE
        FCFFB1EEFCFFB1EEFCFFD4F6FDFF376CAFFF0000001A00000006000000040000
        000F417BB9FFDCF2FAFF8FCDECFF8ECDECFF8ECDECFF8ECDEDFF8ECDECFF8ECD
        ECFF8ECDECFF8ECDECFF8ECDEDFF8ECDECFF8ECDECFF8ECDECFF8ECDECFF8ECD
        ECFF8ECDECFF8ECDECFF8ECDECFF8ECDECFF8ECDEDFF8ECDECFF75ADDDFF8ECD
        ECFF8ECDECFF8ECDECFFBEE5F5FF376DAFFF0000001A00000006000000030000
        000E427DB9FFE6FAFEFFA9EBFCFFA9EBFCFFAAEBFCFFA9EBFCFFA9EBFCFFA9EB
        FCFFA9EBFCFFA9EBFCFFA9EBFCFFAAEBFCFFAAEBFCFFA9EBFCFFA9EBFCFFA9EB
        FCFFA9EBFCFFA9EBFCFFA9EBFCFFA9EBFCFFA9EBFCFFA9EBFCFF8BC5EAFFA9EB
        FCFFA9EBFCFFA9EAFCFFD0F5FDFF386EB0FF0000001800000006000000030000
        000D437EBBFFE5F9FEFFA5E9FCFFA4EAFCFFA5E9FCFFA5E9FCFFA5E9FCFFA4E9
        FCFFA4E9FCFFA5EAFCFFA5E9FCFFA4E9FCFFA5E9FCFFA4E9FCFFA5EAFCFFA4EA
        FCFFA4E9FCFFA5EAFCFFA5E9FCFFA5E9FCFFA5E9FCFFA4E9FCFF87C4EAFFA5E9
        FCFFA5EAFCFFA4E9FCFFCDF4FDFF3970B2FF0000001700000006000000030000
        000C4480BCFFD8F0FAFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9
        ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9
        ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF83C9ECFF6CAADDFF83C9
        ECFF83C9ECFF83C9ECFFB7E2F5FF3971B2FF0000001500000005000000030000
        000B4581BDFFE1F8FEFF9BE5FBFF9BE5FBFF9BE4FBFF9BE5FBFF9BE5FBFF9BE5
        FBFF9BE5FBFF9BE5FCFF9BE5FBFF9BE4FBFF9BE5FBFF9BE5FBFF9BE5FBFF9BE5
        FCFF9BE5FBFF9BE5FBFF9BE5FBFF9BE5FBFF9BE5FBFF9BE5FBFF7FC0E9FF9BE5
        FBFF9BE5FBFF9BE5FBFFC7F2FDFF3A72B3FF0000001400000005000000020000
        000A4683BEFFE0F7FEFF95E2FBFF96E1FBFF96E1FBFF96E2FBFF96E2FBFF96E2
        FBFF96E2FBFF96E1FBFF95E2FBFF96E2FBFF96E2FBFF96E2FBFF96E2FAFF96E1
        FBFF96E1FBFF96E2FBFF96E2FBFF95E2FBFF96E2FBFF96E2FBFF7BBEE9FF95E2
        FBFF95E2FBFF95E2FBFFC4F0FDFF3B74B4FF0000001300000005000000020000
        00094785BFFFD2EEFAFF76C3EBFF76C3EBFF76C3EAFF76C3EBFF76C3EBFF76C3
        EBFF76C3EBFF76C3EBFF76C3EAFF76C3EBFF76C3EBFF76C3EBFF76C3EBFF76C3
        EAFF76C3EBFF76C3EAFF76C3EBFF76C3EBFF76C3EBFF76C3EBFF61A5DCFF76C3
        EBFF76C3EBFF76C3EBFFADDFF5FF3C75B5FF0000001100000004000000020000
        00084886C0FFDBF6FDFF8ADDFBFF8ADDFBFF8ADDFAFF8ADDFBFF8ADDFAFF8ADD
        FBFF8ADDFBFF8ADDFBFF8ADDFAFF8BDDFBFF8ADDFAFF8ADDFAFF8ADDFBFF8ADD
        FAFF8ADDFAFF8ADDFAFF8ADDFAFF8ADDFBFF8ADDFBFF8ADDFAFF72BAE9FF8ADD
        FAFF8ADDFAFF8ADDFAFFBCEDFCFF3D77B6FF0000001000000004000000020000
        00074987C1FFD9F5FDFF85DBFAFF85DAFAFF85DBFAFF85DBFAFF85DAFBFF85DB
        FAFF85DAFAFF85DBFAFF85DBFAFF85DBFAFF85DAFAFF85DBFAFF85DBFAFF85DA
        FAFF85DBFAFF85DBFAFF85DBFAFF85DBFAFF85DBFAFF85DAFAFF6DB8E8FF85DB
        FAFF85DBFAFF85DBFAFFB8ECFCFF3F78B6FF0000000E00000004000000020000
        00064A8AC3FFCCEDF9FF69BDEAFF69BDEAFF69BCEAFF69BDEAFF69BDEAFF69BD
        EAFF69BDEAFF69BDEAFF69BCEAFF69BDEAFF69BDEAFF69BDEAFF69BDEAFF69BD
        EAFF69BDEAFF69BDEAFF69BDEAFF69BDEAFF69BDEAFF69BDEAFF57A0DCFF69BC
        EAFF69BDEAFF69BDEAFFA4DCF4FF3F7AB8FF0000000D00000003000000010000
        00064B8BC3FFD4F4FDFF7BD6FAFF7BD5FAFF7AD5F9FF7BD5F9FF7AD5FAFF7AD5
        F9FF7BD5FAFF7BD5FAFF7AD6F9FF7AD6F9FF7BD5FAFF7BD5F9FF7BD5F9FF7AD5
        F9FF7AD6F9FF7AD6FAFF7AD5FAFF7BD5F9FF7BD6F9FF7AD6F9FF65B3E8FF7AD6
        FAFF7AD5FAFF7AD6F9FFB1EAFCFF407BB9FF0000000C00000003000000010000
        00054C8CC4FFD2F3FDFF77D3F9FF77D3F9FF77D3FAFF76D3FAFF77D3F9FF77D3
        FAFF77D3FAFF77D3F9FF76D4F9FF76D3FAFF76D3F9FF77D3FAFF77D3FAFF77D3
        F9FF77D3F9FF76D4F9FF77D3FAFF76D2F8FF77D3F9FF76D3FAFF62B2E8FF77D3
        F9FF77D4F9FF77D3F9FFAEE8FCFF417DBAFF0000000B00000003000000010000
        00044D8EC5FFC7EBF9FF5FB7E9FF5FB7E9FF5FB7E9FF5FB7E9FF5FB8E9FF5FB7
        E9FF5FB7E9FF5FB7E9FF5FB7E9FF5FB7E9FF5FB7E9FF5FB8E9FF5FB7E9FF5FB7
        E9FF5FB8E9FF5FB7E9FF5EB6E8FF5DB4E6FF5EB5E7FF5FB8E9FF4F9BDBFF5FB8
        E9FF5FB7E9FF5FB7E9FF9CD8F4FF427FBBFF0000000900000002000000010000
        00044D8FC6FFCFF2FDFF6FCFF9FF6FCFF9FF6FCFF9FF6FCFF9FF6FD0F9FF6FCF
        F9FF6FCFF8FF6FCFF9FF6FCFF9FF6FCFF9FF6FCFF9FF6FCFF9FF6FCFF9FF6FCF
        F9FF6FCFF9FF6DCBF5FF68C3EEFF65BFEBFF66C0ECFF69C4EFFF5BACE6FF6FCE
        F8FF6ED0F9FF6FCFF9FFA8E6FCFF4380BCFF0000000800000002000000010000
        00034F91C7FFCDF2FDFF6BCDF9FF6CCDF8FF6BCDF9FF6BCEF8FF6BCEF9FF6BCE
        F8FF6BCDF8FF6CCDF9FF6BCEF8FF6BCDF8FF6CCDF9FF6BCCF8FF69CAF6FF67C6
        F1FF62BDE9FF5FB8E5FF5BB2E0FF59ADDBFF5AAFDDFF5EB6E4FF53A5DFFF6BCD
        F8FF6BCDF8FF6BCDF9FFA6E5FBFF4482BEFF0000000700000002000000010000
        00034F92C8FFC2E9F9FF55B2E9FF55B3E9FF55B2E9FF56B3E9FF55B2E9FF56B2
        E9FF56B2E9FF55B2E9FF56B2E9FF56B3E9FF55B1E8FF53ACE3FF499BD2FF3E86
        BEFF3D84BCFF3B80B8FF387BB3FF3A80B8FF418DC5FF4798D0FF428DD0FF54B1
        E7FF55B2E9FF56B2E9FF93D5F4FF4583BFFF0000000600000002000000010000
        00025094C9FFCAF1FDFF64C9F8FF64C9F8FF65C9F8FF64C9F8FF64CAF7FF64CA
        F8FF64CAF8FF64CAF8FF64C9F8FF64C7F6FF5DBDE9FF4894C1FF3776A3FF346D
        9AFF2F6896FF316C9FFF3574A8FF3A7DB0FF4591C3FF53AADBFF4C9DD9FF62C5
        F4FF64C8F7FF64C9F8FFA0E2FBFF4685BFFF0000000500000001000000000000
        00025195CAFFC8F0FDFF61C7F8FF61C7F7FF61C8F7FF61C7F7FF61C8F8FF61C7
        F8FF61C8F8FF61C8F7FF61C7F7FF5BBBE9FF508AA8FF745D47FF885932FF8152
        2BFF634833FF2E4D6CFF2C6396FF3473A8FF408ABEFF53AFE0FF4BA0DDFF60C7
        F7FF61C8F8FF61C7F8FF9DE2FBFF4787C0FF0000000400000001000000000000
        00015296CBFFBEE8F9FF4EAEE8FF4EAEE8FF4EAEE9FF4EAEE8FF4EAEE8FF4EAE
        E8FF4EAEE9FF4EAEE9FF4CAAE4FF5188A9FFA47247FFBD8C59FFC38C4EFFC28A
        4DFFAC753DFF814F26FF2A4665FF286199FF377FB9FF459DD8FF4092D9FF4EAE
        E9FF4EAEE8FF4EAEE8FF8DD3F4FF4889C2FF0000000400000001000000000000
        00015298CCFFC5EFFDFF5BC4F7FF5BC4F7FF5BC5F8FF5BC5F7FF5BC5F8FF5BC5
        F7FF5BC5F7FF5BC5F7FF55B9E8FF92836DFFCCA072FFC48F56FFA87243FF9B65
        38FFAE7A43FFA36F3BFF62462FFF2B6594FF4091C6FF52B5E9FF4BA6E6FF5BC5
        F7FF5BC5F7FF5BC5F7FF98E0FBFF498AC3FF0000000300000001000000000000
        00015399CCFFC4EEFDFF58C3F7FF58C3F7FF59C3F7FF58C3F7FF58C3F7FF58C3
        F7FF59C3F7FF59C3F7FF51B3E3FFB9885BFFE1BF92FFBE8756FFCB8C4EFFAE74
        40FF915D31FF8D592BFF7C4B23FF2D648EFF4091C7FF56BDF2FF49A5E7FF59C3
        F7FF58C3F7FF58C3F7FF97DFFBFF4A8CC4FF0000000200000001000000000000
        0001549ACDFFBAE6F9FF47ABE8FF47ABE8FF47ABE8FF47ABE8FF47ABE8FF47AB
        E8FF47ABE8FF47ABE7FF429ED7FFBD8C62FFE3C295FFC79463FFBF854FFFBC90
        66FFD9B282FFD3AA76FFA06E3EFF545251FF3B90CBFF46A8E5FF3B91DAFF47AB
        E8FF47ABE8FF47ABE8FF87D1F3FF4B8DC4FF0000000200000000000000000000
        0000559BCEFFC1EEFDFF64C9F7FF54C1F6FF54C1F7FF54C1F7FF54C1F7FF54C1
        F7FF54C1F7FF54C1F7FF50B8EBFF9F9583FFD7AE80FFDEBB8FFFBD8757FFE9D4
        B4FFE0BF8FFFDCB783FFD2A975FF815833FF4DB1E5FF54C0F6FF46A3E6FF54C1
        F7FF54C1F7FF54C1F7FF92DEFBFF4C8FC6FF0000000100000000000000000000
        00004D8DBCE7A4D8F1FFC0EDFDFFC0EDFDFFC0EDFDFFC0EDFDFFC0EDFDFFC0ED
        FDFFC0EDFDFFC0EDFDFFBDE9F9FFB2CDD2FFC8986BFFD7AC80FFC89363FFECD8
        BAFFECD7B4FFE2C395FFDAB586FF94643AFFB7E1F1FFC0EDFDFFB8E4F8FFC0ED
        FDFFC0EDFDFFC0EDFDFFA2D5EFFF4683B4E70000000000000000000000000000
        00001527333F437BA3C9559CCFFF559CCEFF559CCEFF559BCEFF559BCEFF549B
        CDFF549BCDFF549BCDFF5499CBFF5195C8FF598CB0FF9D8A78FFC38F64FFD2A4
        78FFE6CEADFFE3C9A8FFB98C61FF777875FF4F92C6FF5095CAFF5094CAFF4F94
        C9FF4F94C9FF4F93C9FF3D749EC91424313F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000030000000B050403187051
        3794AF7E53E4A9784DE665462B950403020C0000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnHistorialContratosClick
    end
    object DxBarBtnBuscar: TdxBarLargeButton
      Caption = '&Buscar Empleado'
      Category = 0
      Hint = 'Buscar Empleado'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000070000
        000B0000000D00000010000000100000000F0000000E0000000A000000000000
        000000000000000000000000000000000000000000000000000615513AA51A64
        46D3186446DC1A724EFF166C49FF105438DD0E4C33D6093824AD000000000000
        0000000000000000000000000000000000000000000000000007298D68FA6CCB
        ADFF66C8A8FF4DBD98FF30A97BFF28986EFF379F79FF156545FA000000020000
        000A000000160000001B000000170000000B00000002000000041646337D3396
        72F65DBB9CFF71CBB0FF4FB794FF3AA17CFF237B5BF60D3626820000000F2616
        1072583424D8693D2AFF4D2C1FD91D110B75000000130000000A4539357B877C
        73E6558674FF3A7086FF346780FF1B503FBC0309072300000005291A136DA380
        70FFD4C5BDFFEDE5E1FFCFBEB7FF907163FF1E120C792C1C166AA48577FFD9D1
        CDFF6884A6FF7DA4CDFF588BC1FF26436AE40000001C00000000734937DEE3D7
        D1FFCEAE9EFFAF7957FFD0B39EFFD7C9C3FF533123E177503FDBEAE3E0FFCEC0
        B8FF577DB0FFBDE0F5FF8BC2EBFF345D96FF01030535000000038E5A47FBF8F6
        F4FFAE725BFFE7AF66FFB27F5EFFF0EBE8FF704533FF9A6B55FFF6F5F4FF4C61
        89FF5C80B0FFCAE8F6FF94C6E9FF375D95FF0F2346B00000000990604DF8F1E8
        E4FFD2B0A5FFAA6C53FFD4B6A7FFCDC0BAFF6D402EFF80513DFFF2EDEAFF2958
        98FF4F7CB1FF517CAFFF2C5088FF325D98FF183871F40000000B583C31A2CAAF
        A3FFF7F2EEFFFDFCFBFFEAE0DAFF9E847AFF744634FF855944FFF0E8E3FF3D73
        B2FF6C9ED1FF5C8CC1FF76A5D3FF5385BEFF1C427DF7000000070805041D9F72
        5DF8E8DBD4FFE6D7CEFFCDB7AAFF8B6B5EFF7A4A39FF8B5F4BFFF2E8E3FFBAC7
        D8FF5D8FC6FF4280C2FF3375BCFF234F84CE0A192D5A00000003000000076047
        3BA4D0B7ADFFEEE3DFFFD5C1B7FF93766CFF7F513EFF926550FFEFE4DEFFF1E9
        E6FFDCD1CBFFCAB8B0FF8C7971BA000000070000000200000000000000022219
        1541B89383FFF3EBE8FFD9C9C2FFA99389FFA37764FFB48B76FFF0E7E3FFEADE
        D9FFBDA79FFFA67D6CFF21191539000000010000000000000000000000000000
        0007846554C6DDCCC4FFE6DCD8FFC2A99EFFA57D68F9B38E79F8E0D1C9FFE9DF
        DAFFBCA497FF846555C200000003000000000000000000000000000000000000
        0002130F0D237D6152B7AF8673FA7B6050B9130E0C2814100E20836558B3B68F
        79F9806455B3130F0D1E00000001000000000000000000000000000000000000
        0000000000010000000400000006000000050000000200000000000000010000
        0001000000010000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000300000006000000080000000B0000000D0000000E0000000F0000000F0000
        00100000000F0000000E0000000C000000090000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000003081A
        1341143F2E921B543CBD1F5E43D3257553FF247353FF247251FF247151FF2370
        51FF23704FFF1C593FD6184E37C1123A29990717104900000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000072A82
        60FF36A780FF34B186FF33B589FF34C192FF33BF90FF31BD8DFF30BC8CFF2FBA
        8AFF2EB989FF2CAA7DFF2AA378FF2A976FFF257353FF0000000D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000062A7E
        5FE973D9BDFF5AD4B0FF43CCA1FF40C99DFF3EC79AFF3BC598FF38C295FF36C0
        92FF34BE90FF32BD8EFF3ABF93FF42BE95FF247153EE0000000C000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000031845
        357C48A787FF74CEB4FF83E5CBFF57CEABFF2F9773FF207D5DFF1B7859FF2189
        66FF42BF98FF5AD1ADFF4BB996FF349674FF1540308800000006000000000000
        0000000000010000000200000004000000050000000700000007000000060000
        0004000000020000000100000000000000000000000000000001000000020000
        00070B221A41256B53B545A987FF53AC90FF63A9B1FF71A7CCFF5D8CB7FF3674
        89FF2C8E73FF3A9D7BFF22664DBA0B2019460000000700000001000000000000
        0000000000030000000900000010000000170000001B0000001B000000170000
        0010000000090000000400000001000000000000000000000003000000090000
        0010000000180000001E091B15482D7A61D15588ABFF325994FF2C538FFF3460
        8EFF28735CCD091A143600000007000000030000000100000000000000010000
        00040000000C0302021F33262186584238CD74564AFF735549FF574038CF3125
        1F87030202200000000D0000000500000002000000040000000C0302021F3326
        218658433ACF7F6459FFA4928BFF69707DED4572ACFF659FD7FF629CD6FF3968
        A5FF0C1C2C700000000800000000000000000000000000000000000000030000
        000B0D0A0934644C42DA937A6FFFC4B2A9FFDBCEC5FFDBCEC4FFC3B2A9FF8F77
        6BFF5E463CDB0C0908360000000C000000060000000B0D0A0934644C42DA8F75
        68FFB9A397FFD9CCC1FFDAD0CAFF5F789EFF79AFDAFF90CCF5FF77B4E8FF5991
        CBFF1D3A66CB0000000E00000001000000000000000000000000000000070302
        021B675045DAAE9A90FFE2D1C6FFC09879FFB3815CFFB4845CFFC49D7DFFE3D2
        C7FFAB968CFF5F473DDB0202011F0000000F0302021C675045DAA89084FFD6BF
        B1FFBB9171FFD2B6A0FF787D8EFF3D5F92FFBAE1F6FFBDE6FCFF8CC9F2FF69A5
        DBFF21447AF70D193495010101030000000000000000000000000000000C382B
        26829A8277FFDDCCBEFFAC7753FFCDA678FFE8D09DFFE9D2A2FFD2AE80FFB885
        5FFFE0CEC0FF91796EFF271C168500000019382C2783967C70FFD2BCADFFAB76
        52FFCDA678FFF0E4CAFF456695FF385F95FFD5F0FBFFD1EDFBFF94CFF3FF6DA7
        DDFF24467DFF172C59E201010105000000000000000000000000000000116651
        47CFD3C5BDFFB98C73FFC59263FFE5BC83FFE7C28AFFEAC895FFECCFA1FFD0A4
        7AFFC59C82FFCFC1B9FF473329D100000023675248D0C8B7ACFFB5876CFFC592
        63FFE5BC83FFF0DDC0FF3D68A2FF3C6CA8FFBAD7E9FF698EB7FF325A91FF2B50
        86FF28518FFE1D3869FA0101010500000000000000000000000000000013846B
        5EFAE7DDD7FFA26448FFDAA16EFFEFD0B8FFF6E3DAFFEDCAACFFE7BA8CFFE4BA
        8FFFB77A5CFFE8DED7FF583E33F50000002682685BF5DECFC6FFA16347FFDAA1
        6EFFEFD0B8FFF7EEE9FF5A84B5FF539CE0FF497BB7FF5390CDFF4E8FD3FF3C76
        C1FF396CB1FF223F72FF01010105000000000000000000000000000000128B70
        64FFE9E1DAFF9E5E44FFD89667FFFBF0F3FFFAECEEFFF6E1DCFFE2A67BFFE3AF
        89FFB6765CFFE9E0DAFF5E4437FF000000268B7064FFE1D5CAFF9E5D43FFD896
        67FFFBF0F3FFFBF3F4FFC5CDDDFF5890CCFF7FB9E7FF86BDE9FF8DC4EEFF75A8
        DAFF5683B8FF1C335AC0010101040000000000000000000000000000000F8970
        62F6EEE6E2FFB68471FFBB714DFFEDC4B1FFFCF4FAFFEDC5B2FFE0996EFFCB8B
        6CFFC69583FFF1EBE8FF5F4538FF1C13106C8F7567FFEAE1DBFFB3806CFFBB71
        4DFFEDC4B1FFFCF6FBFFF4DFD5FFD5C0B8FF7E9EC5FF658EC1FF4276B3FF4C6E
        9DFE1D32519B03050816000000010000000000000000000000000000000B6452
        49B7C0B2AAFFE4D4CCFF9F5B45FFBB6F4DFFD6875DFFD78860FFC57E5EFFB571
        5DFFE7D5CEFFD9D3D1FF61473AFF412D25C992786BFFDFD7D4FFDDC9BFFF9F5A
        44FFBB6F4DFFD6875DFFDA906BFFD8AA94FFD1A99DFFEDE2DEFFDBD3CFFF8376
        72D101010110000000040000000000000000000000000000000000000006110E
        0D2E947C6FFEF7F5F2FFE9DCD6FFBB8978FFA96954FFAD6C59FFC29281FFEBDE
        D8FFF8F5F3FF75645EFF644A3DFF9B887DFF967D6FFF95837AFFF5F1EFFFE3D3
        CBFFB88674FFA86853FFAC6B58FFBF8E7CFFE4D4CDFFF3EFECFF8B7165FE0C08
        0730000000080000000200000000000000000000000000000000000000030000
        000C736056C7B7A79EFFFCFBFAFFF7F3F0FFF4EFEBFFF4EFEBFFF7F3F0FFFCFB
        FAFFA89D97FF654B41FF684D40FF785D51FF9A8074FF897467FFD6CEC8FFFAF8
        F7FFF3ECE8FFEFE6E1FFEFE6E1FFF3ECE8FFFAF8F6FFB3A298FF6B564CC80000
        000E000000040000000100000000000000000000000000000000000000010000
        000739302B68978073FFCCBEB7FFF3F0EEFFFFFFFFFFF7F5F4FFDAD2CEFF8877
        6FFF6E574BFF7C6358FF6A5043FF66473BFF9E8478FF9B877AFFC5B7B0FFFFFF
        FFFFFAF8F7FFF6F3F2FFF1EEEDFFCAC4C2FF887770FF987F72FF342B266A0000
        0008000000020000000000000000000000000000000000000000000000010000
        000406050415977F74F4BFADA3FFD7CAC4FFFFFFFEFFD1C1BBFFA4877BFF8770
        66FF7F6960FF917B6EFF6F5447FF67483BFFA1897CFFA49086FFD5CAC3FFFFFF
        FFFFEDE8E5FFAA9286FF7F685FFF5E4C44FF967D72FF8F776AF4050404170000
        0005000000010000000000000000000000000000000000000000000000000000
        000200000008675750A9B5A095FFE0D5D0FFF8F6F5FFEAE3DFFFC5B1A6FFA189
        80FF877267FFAD988BFF73584BFF63453AFFA58D7FFFB2A095FFDDD3CEFFFFFF
        FFFFF0EBE8FFBFAA9EFF947E74FF7B665DFFAD978AFF615149AA000000090000
        0002000000000000000000000000000000000000000000000000000000000000
        0001000000042D27234EAA9487FFDDD3CCFFF2EEEBFFF2EEECFFD1C2B8FFB29D
        96FF907B71FFBEADA0FF775D50FF4E3A31C4A89183FFC4B4ABFFE6DFDAFFFFFF
        FFFFEFE9E6FFBEA99EFF917C74FF8D7870FFA99286FF2A242050000000050000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000020202020B988175E6D3C5BBFFEEE9E6FFF7F5F4FFDCCFC8FFC0AB
        A2FF99877DFFBEABA1FF7C6255FF17100D4DAD9587FFD7CAC3FFEDE7E3FFFFFF
        FFFFEEE7E4FFBCA8A0FF917F78FFA7958AFF917C70E60202010C000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000001000000055D504990C1B0A4FFEBE3DFFFFBF9F8FFE6DDD7FFCAB7
        B0FFA59288FFBCA8A1FF81685BFF00000010B0988BFFE0D7D1FFF2EDEAFFFFFF
        FFFFEDE5E2FFBDABA3FF94847DFFB8A499FF594C459000000006000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000031F1B1834AF978AFFE4DBD5FFFAF8F6FFEBE4E1FFD9C9
        C1FFB19F95FFB7A49CFF876E61FF0000000CB39C8FFFE4DBD5FFF5F1EFFFFFFF
        FFFFEFE9E6FFBBA9A2FFA08E87FFAB9385FF1E1A173400000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000477685FAED1C2B8FFF8F5F4FFF3EEEBFFE2D8
        D0FFC5B4ADFFBAA89FFF604F46B1000000087C6D64B1D3C5BDFFF7F4F2FFFFFF
        FFFFF3EDEBFFCBBFB9FFB5A399FF75655CAF0000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000021C18162BA79387EED7CBC3FFF2EEECFFECE4
        E0FFC9B9B0FFA28D7FEE1814122F000000041E1B192EAC988BEED9CCC5FFF7F5
        F3FFECE4E0FFC3B3AAFFA69385EE1B18162C0000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000021311101F786960AAA18D80E5A18C
        80E575665DAA13100F1F0000000200000002000000021412101E7A6C63AAA491
        85E5A49084E5786961AA13110F1F000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000030000
        0003000000020000000100000001000000000000000000000001000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ShortCut = 16450
      OnClick = DxBarBtnBuscarClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000300000006000000080000000B0000000D0000000E0000000F0000000F0000
        00100000000F0000000E0000000C000000090000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000003081A
        1341143F2E921B543CBD1F5E43D3257553FF247353FF247251FF247151FF2370
        51FF23704FFF1C593FD6184E37C1123A29990717104900000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000072A82
        60FF36A780FF34B186FF33B589FF34C192FF33BF90FF31BD8DFF30BC8CFF2FBA
        8AFF2EB989FF2CAA7DFF2AA378FF2A976FFF257353FF0000000D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000062A7E
        5FE973D9BDFF5AD4B0FF43CCA1FF40C99DFF3EC79AFF3BC598FF38C295FF36C0
        92FF34BE90FF32BD8EFF3ABF93FF42BE95FF247153EE0000000C000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000000000031845
        357C48A787FF74CEB4FF83E5CBFF57CEABFF2F9773FF207D5DFF1B7859FF2189
        66FF42BF98FF5AD1ADFF4BB996FF349674FF1540308800000006000000000000
        0000000000010000000200000004000000050000000700000007000000060000
        0004000000020000000100000000000000000000000000000001000000020000
        00070B221A41256B53B545A987FF53AC90FF63A9B1FF71A7CCFF5D8CB7FF3674
        89FF2C8E73FF3A9D7BFF22664DBA0B2019460000000700000001000000000000
        0000000000030000000900000010000000170000001B0000001B000000170000
        0010000000090000000400000001000000000000000000000003000000090000
        0010000000180000001E091B15482D7A61D15588ABFF325994FF2C538FFF3460
        8EFF28735CCD091A143600000007000000030000000100000000000000010000
        00040000000C0302021F33262186584238CD74564AFF735549FF574038CF3125
        1F87030202200000000D0000000500000002000000040000000C0302021F3326
        218658433ACF7F6459FFA4928BFF69707DED4572ACFF659FD7FF629CD6FF3968
        A5FF0C1C2C700000000800000000000000000000000000000000000000030000
        000B0D0A0934644C42DA937A6FFFC4B2A9FFDBCEC5FFDBCEC4FFC3B2A9FF8F77
        6BFF5E463CDB0C0908360000000C000000060000000B0D0A0934644C42DA8F75
        68FFB9A397FFD9CCC1FFDAD0CAFF5F789EFF79AFDAFF90CCF5FF77B4E8FF5991
        CBFF1D3A66CB0000000E00000001000000000000000000000000000000070302
        021B675045DAAE9A90FFE2D1C6FFC09879FFB3815CFFB4845CFFC49D7DFFE3D2
        C7FFAB968CFF5F473DDB0202011F0000000F0302021C675045DAA89084FFD6BF
        B1FFBB9171FFD2B6A0FF787D8EFF3D5F92FFBAE1F6FFBDE6FCFF8CC9F2FF69A5
        DBFF21447AF70D193495010101030000000000000000000000000000000C382B
        26829A8277FFDDCCBEFFAC7753FFCDA678FFE8D09DFFE9D2A2FFD2AE80FFB885
        5FFFE0CEC0FF91796EFF271C168500000019382C2783967C70FFD2BCADFFAB76
        52FFCDA678FFF0E4CAFF456695FF385F95FFD5F0FBFFD1EDFBFF94CFF3FF6DA7
        DDFF24467DFF172C59E201010105000000000000000000000000000000116651
        47CFD3C5BDFFB98C73FFC59263FFE5BC83FFE7C28AFFEAC895FFECCFA1FFD0A4
        7AFFC59C82FFCFC1B9FF473329D100000023675248D0C8B7ACFFB5876CFFC592
        63FFE5BC83FFF0DDC0FF3D68A2FF3C6CA8FFBAD7E9FF698EB7FF325A91FF2B50
        86FF28518FFE1D3869FA0101010500000000000000000000000000000013846B
        5EFAE7DDD7FFA26448FFDAA16EFFEFD0B8FFF6E3DAFFEDCAACFFE7BA8CFFE4BA
        8FFFB77A5CFFE8DED7FF583E33F50000002682685BF5DECFC6FFA16347FFDAA1
        6EFFEFD0B8FFF7EEE9FF5A84B5FF539CE0FF497BB7FF5390CDFF4E8FD3FF3C76
        C1FF396CB1FF223F72FF01010105000000000000000000000000000000128B70
        64FFE9E1DAFF9E5E44FFD89667FFFBF0F3FFFAECEEFFF6E1DCFFE2A67BFFE3AF
        89FFB6765CFFE9E0DAFF5E4437FF000000268B7064FFE1D5CAFF9E5D43FFD896
        67FFFBF0F3FFFBF3F4FFC5CDDDFF5890CCFF7FB9E7FF86BDE9FF8DC4EEFF75A8
        DAFF5683B8FF1C335AC0010101040000000000000000000000000000000F8970
        62F6EEE6E2FFB68471FFBB714DFFEDC4B1FFFCF4FAFFEDC5B2FFE0996EFFCB8B
        6CFFC69583FFF1EBE8FF5F4538FF1C13106C8F7567FFEAE1DBFFB3806CFFBB71
        4DFFEDC4B1FFFCF6FBFFF4DFD5FFD5C0B8FF7E9EC5FF658EC1FF4276B3FF4C6E
        9DFE1D32519B03050816000000010000000000000000000000000000000B6452
        49B7C0B2AAFFE4D4CCFF9F5B45FFBB6F4DFFD6875DFFD78860FFC57E5EFFB571
        5DFFE7D5CEFFD9D3D1FF61473AFF412D25C992786BFFDFD7D4FFDDC9BFFF9F5A
        44FFBB6F4DFFD6875DFFDA906BFFD8AA94FFD1A99DFFEDE2DEFFDBD3CFFF8376
        72D101010110000000040000000000000000000000000000000000000006110E
        0D2E947C6FFEF7F5F2FFE9DCD6FFBB8978FFA96954FFAD6C59FFC29281FFEBDE
        D8FFF8F5F3FF75645EFF644A3DFF9B887DFF967D6FFF95837AFFF5F1EFFFE3D3
        CBFFB88674FFA86853FFAC6B58FFBF8E7CFFE4D4CDFFF3EFECFF8B7165FE0C08
        0730000000080000000200000000000000000000000000000000000000030000
        000C736056C7B7A79EFFFCFBFAFFF7F3F0FFF4EFEBFFF4EFEBFFF7F3F0FFFCFB
        FAFFA89D97FF654B41FF684D40FF785D51FF9A8074FF897467FFD6CEC8FFFAF8
        F7FFF3ECE8FFEFE6E1FFEFE6E1FFF3ECE8FFFAF8F6FFB3A298FF6B564CC80000
        000E000000040000000100000000000000000000000000000000000000010000
        000739302B68978073FFCCBEB7FFF3F0EEFFFFFFFFFFF7F5F4FFDAD2CEFF8877
        6FFF6E574BFF7C6358FF6A5043FF66473BFF9E8478FF9B877AFFC5B7B0FFFFFF
        FFFFFAF8F7FFF6F3F2FFF1EEEDFFCAC4C2FF887770FF987F72FF342B266A0000
        0008000000020000000000000000000000000000000000000000000000010000
        000406050415977F74F4BFADA3FFD7CAC4FFFFFFFEFFD1C1BBFFA4877BFF8770
        66FF7F6960FF917B6EFF6F5447FF67483BFFA1897CFFA49086FFD5CAC3FFFFFF
        FFFFEDE8E5FFAA9286FF7F685FFF5E4C44FF967D72FF8F776AF4050404170000
        0005000000010000000000000000000000000000000000000000000000000000
        000200000008675750A9B5A095FFE0D5D0FFF8F6F5FFEAE3DFFFC5B1A6FFA189
        80FF877267FFAD988BFF73584BFF63453AFFA58D7FFFB2A095FFDDD3CEFFFFFF
        FFFFF0EBE8FFBFAA9EFF947E74FF7B665DFFAD978AFF615149AA000000090000
        0002000000000000000000000000000000000000000000000000000000000000
        0001000000042D27234EAA9487FFDDD3CCFFF2EEEBFFF2EEECFFD1C2B8FFB29D
        96FF907B71FFBEADA0FF775D50FF4E3A31C4A89183FFC4B4ABFFE6DFDAFFFFFF
        FFFFEFE9E6FFBEA99EFF917C74FF8D7870FFA99286FF2A242050000000050000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000020202020B988175E6D3C5BBFFEEE9E6FFF7F5F4FFDCCFC8FFC0AB
        A2FF99877DFFBEABA1FF7C6255FF17100D4DAD9587FFD7CAC3FFEDE7E3FFFFFF
        FFFFEEE7E4FFBCA8A0FF917F78FFA7958AFF917C70E60202010C000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000001000000055D504990C1B0A4FFEBE3DFFFFBF9F8FFE6DDD7FFCAB7
        B0FFA59288FFBCA8A1FF81685BFF00000010B0988BFFE0D7D1FFF2EDEAFFFFFF
        FFFFEDE5E2FFBDABA3FF94847DFFB8A499FF594C459000000006000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000031F1B1834AF978AFFE4DBD5FFFAF8F6FFEBE4E1FFD9C9
        C1FFB19F95FFB7A49CFF876E61FF0000000CB39C8FFFE4DBD5FFF5F1EFFFFFFF
        FFFFEFE9E6FFBBA9A2FFA08E87FFAB9385FF1E1A173400000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000477685FAED1C2B8FFF8F5F4FFF3EEEBFFE2D8
        D0FFC5B4ADFFBAA89FFF604F46B1000000087C6D64B1D3C5BDFFF7F4F2FFFFFF
        FFFFF3EDEBFFCBBFB9FFB5A399FF75655CAF0000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000021C18162BA79387EED7CBC3FFF2EEECFFECE4
        E0FFC9B9B0FFA28D7FEE1814122F000000041E1B192EAC988BEED9CCC5FFF7F5
        F3FFECE4E0FFC3B3AAFFA69385EE1B18162C0000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000021311101F786960AAA18D80E5A18C
        80E575665DAA13100F1F0000000200000002000000021412101E7A6C63AAA491
        85E5A49084E5786961AA13110F1F000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000030000
        0003000000020000000100000001000000000000000000000001000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object cxRadioFiltroPersonal: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      OnCurChange = cxRadioFiltroPersonalCurChange
      PropertiesClassName = 'TcxRadioGroupProperties'
      Properties.Items = <>
      Properties.OnChange = cxRadioPersonalPropertiesChange
      RepositoryItem = CxRadioGroupFiltro
      InternalEditValue = 0
    end
    object DxBarBtnTodoPersonal: TdxBarLargeButton
      Caption = 'Cargar &Todo los Empleados'
      Category = 0
      Hint = 'Cargar Todo los Empleados'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000100000004000000070000000A0000000B0000000D0000000D0000
        000D0000000C0000000A00000007000000020000000000000000000000000000
        0000000000040E38297E134F37B414593DD212583BDB126441FF105D3DFF0D49
        2FDC0A432AD4063521B804251689000000080000000000000000000000000000
        000000000006278A63FF4EBB98FF3CBB90FF2FB586FF2FBF8DFF2DBD8BFF27AE
        7DFF24A878FF209A6CFF0D5535FF0000000C0000000000000000000000000000
        000000000004267B5BD557C09FFF6CDBBCFF65DAB7FF45CBA0FF39C697FF37C4
        95FF3AC396FF36A47EFF0F5136DA000000090000000000000000010101090101
        010E0101011106120E301D5E45A7349875F868CEB1FF6AD1B4FF4BC59EFF42BD
        95FF237F5EFA114732AA040E0A3801010115010101100101010A194737942266
        4ED1286A54D9548F7AF471A392FF679988F93A8870FC40768EFF386E87FF327B
        63FB679988F770A391FF4D8A74F7205E47DB14523BD30D3627983A9275FD6EC6
        ABFF52B795FF46B08DFF47AF8CFF79B5A1FF487591FF7DA4CDFF588BC1FF315F
        81FF7EBAA6FF47AF8CFF3AA17EFF359875FF379878FF1A6B4EFD2F725CBE5EB5
        9AFF84D4BDFF65CBABFF80CFB5FF86BFADFF567EB0FFBDE0F5FF8BC2EBFF345E
        97FF84BAADFF79CBB1FF55BC9BFF5DB89CFF399173FF195540C1010101091838
        2D6339836BD687D0BBFFAEDDD0FF416992FF5C80B0FFCAE8F6FF94C6E9FF375D
        95FF4A6C8BFFACDACDFF78C7AFFF2D745ED7112E25670101010D000000010101
        01060A0C0C2B44708BF67D96B8FF255696FF4F7CB1FF517CAFFF2C5088FF325D
        98FF1E3F79FF7C95B5FF33617CF60A0B0B2E0101010700000001000000000303
        0308273242707097C3FFA7D2F4FF326BAEFF6C9ED1FF5C8CC1FF76A5D3FF5385
        BEFF214784FFA5CEF0FF4676B0FF1822336E0303030A00000000000000000404
        040C354F75C994B8D8FFB4DAF7FF79A2CEFF427BB8F63878BAF13174BBFC3C6D
        A6F885A2C3FFB6DAF6FF5C8FC5FF223A60C20505051100000000000000000404
        040D28528BFA85A7CAFF5D88B5FF7291B8FF6A83A8FC6262636F606060697890
        B5FCA7BFD7FF618BB7FF3A679EFF1F467CFB0606071600000000000000000202
        02072B5996F54778B2FE6197D0FF4E87C6FF275490FF06080B1A020202072B59
        96F54778B2FE6197D0FF4E87C6FF275490FF06080B1A00000000000000000101
        010213263E612C5A93D6326AABF729578DD81529447301010103010101021326
        3E612C5A93D6326AABF729578DD8152944730101010300000000000000000000
        0000000000000000000100000001000000010000000100000000000000000000
        0000000000010000000100000001000000010000000000000000}
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
      OnClick = DxBarBtnTodoPersonalClick
      HotGlyph.Data = {
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
    end
    object DxBarBtnListaInfonavit: TdxBarLargeButton
      Caption = 'Personal con Infonavit'
      Category = 0
      Hint = 'Personal con Infonavit'
      Visible = ivAlways
      Glyph.Data = {
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
      OnClick = DxBarBtnListaInfonavitClick
      HotGlyph.Data = {
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
    end
    object DxBarBtnDetalladoNomina: TdxBarLargeButton
      Caption = '&Detallado de N'#243'minas '#13#10'por Personal'
      Category = 0
      Enabled = False
      Hint = 'Detallado de N'#243'minas '#13#10'por Personal'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000007E5446B7B074
        62FFAF7461FFAF7460FFAE735FFFAE725FFFAD715EFFAD715EFFAD715EFFAC70
        5CFFAC705CFFAC6F5BFFAC6F5BFFAB6F5BFFAB6E5AFF7B4F41B7B67E6CFFFBF6
        F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F1FFFAF4F1FFFAF4F1FFFAF4F1FFF9F4
        F0FFF9F4F0FFF9F3F0FFF8F3EFFFF9F3EFFFF8F2EEFFB37968FFB77F6FFFFBF7
        F4FFF7EFEAFFF8F1EDFFF8F2EEFFF8F1EDFFF6EEEAFFF6EEE9FFF7EEE8FFF6EE
        E8FFF6EEE8FFF6EEE8FFF6EDE7FFF5EDE7FFF9F4F0FFB47B6AFFB88171FFFBF8
        F5FFF8F3EEFFD6AB88FFB7682BFFD6A987FFF8F2EEFFF7EFEAFFF7EFE9FFF6EE
        E9FFF6EEE9FFF6EFE8FFF6EFE8FFF6EEE9FFFAF4F2FFB47C6BFFB98472FFFCF9
        F7FFFAF3F0FFBB7234FFE5C79BFFBA6D33FFF9F4F0FFF7F0EBFFF8F0EBFFF7F0
        EAFFF7EFEAFFF7EFEAFFF6EFE9FFF6EFEAFFFAF6F3FFB67F6DFFBB8674FFFDFA
        F8FFF9F3F0FFD8AE8CFFB96C2DFFBC7440FFE8D0C2FFF8F1ECFFF7F0ECFFF7F0
        EBFFF8F0EBFF9E9DCBFF222D9CFFA1A1CAFFFAF7F5FFB7806FFFBC8877FFFDFB
        F9FFF9F3EFFFFAF4F1FFFAF5F1FFEDD9CEFFAF5924FFE4C8B6FFF8F2EDFFD7D3
        E4FF8589D0FF2E38A6FFA0AEE4FF313CA5FFFBF8F6FFB98271FFBF8C7AFFFEFC
        FBFFFAF5F1FFFAF4F0FFF9F4F0FFF9F4F0FFE4D0C3FFAA541EFFAB93A8FF414B
        C0FF8F92D4FF9D9FD0FF323EA9FFAAAAD3FFFCFAF9FFBB8675FFBF8C7AFFFEFC
        FBFFA7A9DAFF2B39B5FF9296D3FF8A8ED3FF414BC0FFB09FB6FFAD551EFFE4C8
        B6FFF9F3EEFFF9F3EEFFF9F2EEFFF9F2EEFFFCFAF9FFBB8675FFC08D7DFFFEFD
        FCFF424DC0FFA3B3EBFF3342BBFF9497D6FFE3DFEBFFFAF4F1FFEBD5C6FFB660
        25FFEAD3C4FFFAF7F4FFFAF5F2FFF9F3F0FFFDFBFAFFBC8877FFC28F7EFFFEFD
        FDFFB2B5E1FF3F4EC1FFAEB1DEFFFBF6F3FFFAF5F2FFFAF5F2FFFAF5F2FFEFDD
        D1FFB9703DFFAB5E26FFD0A587FFFBF6F3FFFDFCFAFFBE8A79FFC39281FFFEFE
        FDFFFBF7F4FFFAF7F4FFFAF7F4FFFBF7F4FFFAF7F4FFFAF7F4FFFAF6F3FFFBF8
        F5FFAF672FFFE2C499FFAF6530FFFAF8F5FFFDFCFCFFBF8D7BFFC49483FFFFFE
        FEFFFBF8F5FFFCF8F5FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F4FFFCF8
        F6FFD3AA8CFFAD6128FFD3AA8BFFFBF8F5FFFEFDFCFFC08F7EFFC59584FFFFFE
        FEFFFCF8F7FFFBF8F6FFFCF8F6FFFBF8F5FFFBF8F6FFFBF8F6FFFBF8F5FFFCF8
        F5FFFCF9F7FFFCF9F7FFFCF8F6FFFBF7F4FFFEFDFDFFC2907FFFC69786FFFFFF
        FEFFFFFFFEFFFFFEFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFFFFEFEFFFFFEFDFFFEFEFDFFC39281FF997A6EBDCFA4
        94FFCFA393FFCEA393FFCEA393FFCEA292FFCEA292FFCEA292FFCDA292FFCDA1
        91FFCDA090FFCCA090FFCC9F8FFFCB9E8EFFCB9E8EFF967469BD}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000020000
        00090000000E0000000F0000000F000000100000001000000010000000100000
        0010000000100000001000000010000000100000001000000010000000100000
        0011000000110000001100000011000000110000001100000011000000110000
        0011000000110000001100000012000000100000000B00000003000000097E5E
        53C1AF8273FFAE8273FFAE8273FFAD8273FFAD8172FFAE8171FFAC8171FFAC80
        71FFAC7F71FFAB7F70FFAB7F6FFFAB7E6FFFAA7D6FFFAA7E6EFFAA7D6DFFAA7D
        6DFFA97C6CFFA97C6CFFA87B6CFFA87A6BFFA77A6BFFA87B6BFFA77A6AFFA77A
        6AFFA7796AFFA77969FFA67869FFA67869FF77564BC30000000B0000000DB186
        77FFFAF6F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF6F2FFFAF5F1FFFAF5F1FFFAF5
        F1FFFAF5F1FFFAF5F0FFF9F5F1FFF9F5F0FFF9F4F1FFF9F4F1FFF9F4F0FFF9F4
        F0FFF9F4EFFFF9F3EFFFF9F4EFFFF9F4EFFFF9F4EFFFF9F4EFFFF9F3EFFFF9F3
        EFFFF8F3EFFFF8F3EFFFF9F3EEFFF8F3EEFFAE8172FF000000100000000EB286
        78FFFBF6F3FFF7EFE9FFF7EFE9FFF7EFE9FFF6EFE9FFF6EEE9FFF7EEE9FFF6EE
        E9FFF6EFE9FFF6EEE8FFF6EFE9FFF6EFE8FFF6EEE9FFF6EEE8FFF7EEE8FFF6EE
        E8FFF6EEE8FFF6EEE8FFF6EEE8FFF7EEE8FFF6EEE7FFF6EEE8FFF6EDE7FFF6EE
        E7FFF6EEE8FFF6EEE8FFF6EEE7FFF9F4EFFFAE8274FF000000100000000DB288
        7AFFFAF7F4FFF7EFE9FFF7EFEAFFF7EFEAFFF7EFE9FFF7EFEAFFF6EFE9FFF7EF
        E9FFF7EFE9FFF6EFE9FFF7EFE9FFF7EFE9FFF6EFE9FFF7EFE9FFF6EFE9FFF6EF
        E9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EFE8FFF6EEE8FFF7EEE9FFF6EEE8FFF6EE
        E8FFF6EFE8FFF6EEE8FFF6EEE8FFFAF4EFFFAF8374FF000000100000000DB489
        7BFFFBF7F4FFF7EFEAFFF7F0EBFFFAF5F1FFFBF7F5FFFAF5F1FFF7F0EAFFF7EF
        EAFFF7EFEAFFF7EFE9FFF7EFEAFFF7EFEAFFF7EFEAFFF6EFE9FFF6EFE9FFF7EF
        E9FFF6EFE9FFF6EFE9FFF7EFE9FFF6EFE9FFF6EFE8FFF7EEE8FFF6EFE8FFF7EF
        E8FFF6EFE8FFF7EEE9FFF6EEE8FFFAF5F1FFB08475FF000000100000000DB48B
        7BFFFBF7F5FFF7EFEBFFFAF5F2FFCDAB90FFA36735FFCCAA8FFFFAF5F2FFF7EF
        EAFFF7EFEAFFF7F0EBFFFAF5F2FFFBF7F5FFFAF5F2FFF7F0EBFFF7EFEAFFF6EF
        EAFFF7EFE9FFF6EFEAFFF7EFE9FFF7EFEAFFF6EFEAFFF7EFE9FFF6EFE9FFF6EF
        E9FFF7EFE9FFF7EFE9FFF6EFE9FFFAF5F1FFB08577FF0000000F0000000CB58B
        7CFFFBF8F6FFF8F0ECFFFBF7F5FFAB7243FFE0C79FFFA96F40FFFBF7F5FFF7EF
        EBFFF7EFEBFFFBF5F2FF8E9EC6FF2A4899FF8B98C2FFFAF5F3FFF7EFEBFFF7EF
        EAFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFEAFFF6EFEAFFF7EF
        EAFFF7EFE9FFF7EFEAFFF7EFE9FFFAF5F2FFB28678FF0000000F0000000CB68D
        7EFFFCF8F6FFF8F0ECFFFAF5F3FFD2B397FFAA6F3DFFBF936EFFECDED3FFF7F0
        EBFFF8F0ECFFFBF7F5FF4166ADFF95B9E0FF395AA4FFFBF7F5FFF8F0EBFFF7EF
        EBFFF7EFEBFFF7EFEBFFF8EFEBFFF8EFEBFFF7EFEAFFF7EFEAFFF8EFEBFFF7EF
        EAFFF7EFEAFFF7EFEAFFF7EFEAFFFAF6F3FFB28779FF0000000E0000000BB78E
        7FFFFCF9F7FFF8F0EDFFF8F2EEFFFAF6F3FFFBF7F6FFEDE1D8FFB27D51FFE0CB
        BAFFF8F0ECFFDBDBE6FF708CC2FF436CB4FF6984BCFFD5D6E3FFF8F0ECFFF7EF
        ECFFF8EFEBFFF7F0ECFFF8F0EBFFF7EFEBFFF8F0EBFFF7EFEBFFF8F0EBFFF8EF
        EBFFF8EFEBFFF7EFEAFFF8EFEBFFFBF6F3FFB3887BFF0000000E0000000BB890
        81FFFDF9F8FFF8F1EEFFF8F1EDFFF8F1EDFFF9F0EDFFF9F1EDFFE5D1C3FFAE76
        48FFBEADABFF425AA0FFDADBE5FFFBF7F6FFDADBE5FF3C559DFFBCBED2FFF8F0
        EDFFF8F0ECFFF7F0ECFFF8F0ECFFF8F0ECFFF8F0ECFFF8F1EDFFFAF5F3FFFBF8
        F5FFFBF5F2FFF7F0ECFFF7F0EBFFFBF6F4FFB3897BFF0000000D0000000AB890
        82FFFDFAF8FFF9F2EEFFF8F2EEFFF8F1EEFFF8F1EDFFF8F1EEFFF9F1EEFFC0B3
        B4FFA06C43FFBFAEACFFF9F1EEFFF8F1EDFFF9F1EDFFC7C7D7FF324C98FFBCBE
        D3FFF8F1EDFFF8F1EDFFF8F0EDFFF8F1EDFFF8F0ECFFFBF5F4FFCCA98EFFA367
        35FFCCAA90FFFAF6F3FFF8F0ECFFFBF7F5FFB58C7CFF0000000D0000000ABA92
        84FFFDFAF9FFF8F2EFFFF8F1EFFFF9F2EFFFF9F2EEFFF9F1EFFFC7C8D9FF3A52
        9CFFC2B5B6FFAF7749FFE2CCBCFFF8F1EDFFF8F2EEFFF9F1EEFFC6C7D8FF334C
        98FFBCBFD3FFF9F1EDFFF8F1EDFFF2E8E1FFD9BFA8FFDEC7B4FFA97040FFE0C7
        9FFFA97041FFFBF8F6FFF8F1EDFFFBF7F5FFB68C7DFF0000000D00000009BA93
        85FFFDFAF9FFF9F2EFFFFAF3F0FFFBF7F5FFFCF9F7FFDCDDE7FF475EA3FFCACC
        DBFFF9F2EFFFE6D3C4FFB58155FFEDDFD4FFFCF9F7FFFBF7F4FFF9F3EFFFC7C8
        D9FF3C4F92FFB6A099FFC0956FFFAC7341FFC29773FFE9D8CBFFD1B195FFAA6F
        3DFFD1B196FFFBF6F4FFF8F1EEFFFCF8F6FFB68D7FFF0000000C00000009BB95
        87FFFDFBFAFFFAF3EFFFFBF7F5FF8E9EC7FF2A4899FF5F74B0FFDEDFE9FFF9F3
        EFFFF9F3EFFFF9F2EFFFF0E4DAFFBC906BFFA36735FFCBA98DFFE9D8CBFFC095
        70FFAB7342FF86665BFFB6A39DFFF3EAE4FFF9F2EEFFF8F2F0FFFBF7F4FFFCF8
        F6FFFAF7F4FFF9F2EFFFF8F2EEFFFCF9F7FFB88F80FF0000000C00000009BF99
        8CFFFEFCFBFFFAF4F1FFFCF9F8FF4367ADFF95B9E0FF395BA5FFFCFAF7FFFAF4
        F1FFFAF4F0FFFAF4F0FFFCF9F8FFAB7243FFE0C79FFFA76D3DFFE1CCB9FFDEC5
        AFFFF5ECE6FFC7CADAFF354F9AFFBEC1D5FFF9F3F0FFFAF3EFFFF9F3EFFFFAF3
        EFFFF9F3EFFFFAF3EFFFFAF3EFFFFDFAF9FFBA9285FF0000000B00000008C09A
        8DFFFEFCFCFFFAF5F2FFFCF9F6FF9FB4D7FF436CB4FF9AADD2FFFCF9F6FFFAF4
        F2FFFAF4F1FFFAF4F1FFFCF9F6FFD3B498FFAA6F3DFFD0B094FFFCF8F6FFFAF4
        F1FFFAF3F0FFFAF4F0FFC8CADBFF354F9AFFBEC1D6FFFAF4F0FFFAF3F0FFFAF3
        EFFFF9F4F0FFFAF3F0FFFAF4F0FFFDFAF9FFBB9487FF0000000B00000008C19C
        8EFFFEFDFCFFFAF6F3FFFAF6F3FFFCF8F7FFFCFAF8FFFCF8F7FFFAF6F3FFFAF5
        F2FFFAF5F2FFFAF5F1FFFAF6F3FFFCF8F6FFFCF9F8FFFCF8F7FFFAF5F3FFFAF4
        F1FFFAF5F1FFFAF4F1FFFAF5F1FFC8CBDCFF36509CFFBEC2D7FFFAF4F0FFFAF4
        F1FFFAF4F0FFFAF4F0FFFAF4F0FFFDFBF9FFBC9588FF0000000A00000007C29D
        90FFFEFDFCFFFAF6F3FFFAF6F3FFFAF6F3FFFAF5F3FFFAF6F3FFFAF5F3FFFAF5
        F3FFFAF6F2FFFAF5F2FFFAF5F3FFFAF6F4FFFCF9F7FFFDFBF9FFFCF9F7FFFAF6
        F3FFFAF5F2FFFAF5F2FFFAF5F1FFFAF5F2FFC9CCDDFF435CA2FFD5D9E6FFFDFA
        F8FFFCF9F6FFFAF6F2FFFAF5F1FFFDFBFAFFBD9789FF0000000A00000007C39E
        91FFFEFDFDFFFAF6F4FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFBF6
        F3FFFAF7F3FFFAF6F3FFFAF6F3FFFCF9F8FF8C91CBFF232FA1FF888CC9FFFCF9
        F8FFFAF5F3FFFAF6F3FFFAF5F2FFFAF5F3FFFAF5F2FFDDDFE9FF6179B4FF2A48
        99FF8C9AC4FFFCF9F7FFFAF5F2FFFDFCFBFFBE988BFF0000000900000007C3A0
        92FFFEFDFDFFFAF7F5FFFBF7F4FFFAF7F4FFFAF7F5FFFBF7F4FFFAF7F4FFFAF7
        F4FFFBF7F4FFFBF7F3FFFAF6F4FFDEDDEDFF3D4AB2FFA3B1E7FF3542ACFFE6E5
        F1FFFAF6F3FFFAF6F3FFFAF6F3FFFAF5F3FFFAF6F3FFFCFAF8FF4266ADFF95B9
        E0FF3A5BA5FFFCFAF9FFFAF6F2FFFDFCFBFFC09A8CFF0000000900000006C5A2
        94FFFEFEFDFFFBF7F5FFFBF7F6FFFBF7F6FFFAF8F5FFFBF7F5FFFBF7F5FFFBF7
        F5FFFBF7F5FFC0BFDFFF6567BEFF9EA0D6FF9098D4FF4350B8FF8B92D0FF9A9B
        D4FF7B7CC5FFDCD9E9FFFAF6F4FFFAF6F3FFFAF7F4FFFCF9F8FF9FB4D7FF436C
        B4FF9AAED3FFFCF9F8FFFAF6F3FFFEFCFBFFC09B8EFF0000000900000006C6A3
        95FFFEFEFEFFFBF8F6FFFBF8F7FFFCFBF9FFFDFCFAFFFCFBF9FFFBF8F7FFC1C0
        E1FF666BC1FF696DC2FFC1C1E1FFFBF7F6FFFCFAF8FFFDFBFAFFFCFAF8FFF7F4
        F4FFADAEDAFF5458BAFF8B8DCEFFE9E7EEFFFAF7F4FFFBF7F6FFFCF9F8FFFDFB
        F9FFFCFAF8FFFAF7F5FFFAF6F3FFFEFDFCFFC19D90FF0000000800000005C7A4
        96FFFFFEFEFFFBF9F6FFFDFBF9FF8C92CCFF232FA1FF7B80C5FFA1A4DAFF6B6F
        C5FFC2C2E3FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8F5FFFBF8
        F5FFFBF7F5FFF0EEF1FF9C9ED5FF555BBEFF9DA0D6FFF3F0F3FFFCFAF9FFFDFB
        FAFFFCFAF9FFFAF7F6FFFAF6F4FFFEFDFCFFC29E90FF0000000800000005C8A5
        98FFFFFEFEFFFBF8F7FFFDFBFBFF404DB3FFA3B1E7FF3542ADFFE0E0F2FFFCF9
        F7FFFBF8F6FFFBF8F7FFFBF8F7FFFCF8F7FFFCF8F7FFFBF8F6FFFCF9F6FFFCF8
        F6FFFBF8F6FFFBF8F6FFFBF8F6FFE8E6F0FF8E92D3FF9498D8FF7B81C7FF232F
        A1FF888DC9FFFDFAF9FFFBF7F5FFFEFDFDFFC3A091FF0000000700000005C9A6
        99FFFFFEFEFFFBF9F8FFFDFBFBFF9EA6DAFF4350B8FF9BA1D7FFFDFBFBFFFBF9
        F7FFFCF9F8FFFBF9F7FFFCF8F7FFFCF9F7FFFCF9F7FFFCF9F6FFFCF9F7FFFBF8
        F7FFFCF8F6FFFCF9F6FFFBF9F6FFFBF8F7FFFBF8F6FFEEEDF6FF3D4BB3FFA3B1
        E7FF3845AEFFFDFBFAFFFCF8F5FFFEFDFDFFC5A193FF0000000700000004CAA7
        9AFFFFFEFEFFFCFAF8FFFDFAF9FFFEFBFAFFFDFCFBFFFDFBFAFFFCFAF8FFFCF9
        F8FFFCFAF8FFFCF9F8FFFBF9F8FFFCF9F8FFFCF9F8FFFCF9F7FFFCF9F7FFFCF9
        F7FFFBF8F7FFFCF9F7FFFBF9F7FFFCF8F7FFFBF8F7FFFCFBFAFF9EA6DAFF4350
        B8FF9BA1D7FFFDFBFAFFFCF8F7FFFEFEFDFFC6A295FF0000000700000004CBA9
        9BFFFFFFFEFFFDFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFA
        F9FFFCFAF9FFFDFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFCFAF9FFFCF9F9FFFCF9
        F8FFFCF9F8FFFCF9F8FFFCF9F7FFFCF9F8FFFCF9F7FFFCF9F8FFFDFBFAFFFDFC
        FBFFFDFBFAFFFBF9F8FFFBF9F7FFFEFEFDFFC7A496FF0000000600000004CCAA
        9DFFFFFFFFFFFDFAFAFFFCFAF9FFFCFAF9FFFDFAF9FFFCFAF9FFFDFAF9FFFDFA
        F9FFFDFAF9FFFDFAF9FFFCFAF9FFFCFAF9FFFCFAF8FFFDFAF9FFFCFAF9FFFCFA
        F8FFFDFAF8FFFCF9F8FFFCFAF9FFFCF9F8FFFCF9F8FFFCF9F8FFFCF9F8FFFCF9
        F8FFFCF9F8FFFCF9F8FFFCF9F8FFFEFEFEFFC7A497FF0000000600000003CCAB
        9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8A699FF00000005000000029A82
        79BFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0
        A4FFCFB0A3FFCFAFA3FFCFAFA3FFCFAFA3FFCFAFA3FFCFAFA3FFCFAEA3FFCEAF
        A3FFCEAFA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAE
        A2FFCEADA1FFCEADA1FFCDADA1FFCDADA1FF988077C000000003000000000000
        0002000000030000000300000003000000030000000300000003000000030000
        0003000000030000000300000003000000040000000400000004000000040000
        0004000000040000000400000004000000040000000400000004000000040000
        0004000000040000000500000005000000040000000300000001}
      OnClick = DxBarBtnDetalladoNominaClick
    end
    object DxBarBtnExportarInfonavit: TdxBarLargeButton
      Caption = '&Exportar...'
      Category = 0
      Hint = 'Exportar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0001000000010000000300000004000000050000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0005000000030000000100000001000000000000000000000000000000000000
        0001000000050000000B00000011000000150000001500000016000000160000
        0016000000160000001600000017000000170000001700000017000000170000
        0018000000180000001800000018000000180000001900000019000000180000
        00150000000E0000000600000001000000000000000000000000000000000000
        00020000000B2D1F1A8B583C34FC593D34FF583D34FF5C4138FFC89263FFC084
        54FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D3DFFAF6B
        3AFFAC6837FFAB6535FFA96333FFA76030FFA76030FF523730FF51362EFF5035
        2EFE261915890000000E00000003000000010000000000000000000000000000
        0004000000105C4037FC876A60FF785B4FFF785A4FFF6D5246FFE8C594FFE4BC
        85FFE4BA83FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B075FFDFAF
        72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFFDCA96BFF5E423AFF6C4F44FF6F50
        48FF50352EFB0000001400000005000000010000000000000000000000000000
        00050000001260443BFF8B6F64FF7B5E52FF7B5D51FF70554AFFDFBE90FFD9B3
        7FFFD8B17DFFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A870FFD4A6
        6EFFD4A56BFFD3A369FFD3A267FFD3A166FFDEAA6BFF61443CFF6E4F45FF7253
        49FF52372FFF0000001700000006000000010000000000000000000000000000
        00050000001263473DFF8F7468FF7E6154FF7D6053FF74594EFFFAF6F2FFF8F3
        EEFFF8F2EDFFF7F2ECFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EEE9FFF5ED
        E8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FFF3EAE5FF63473EFF6E5046FF7155
        4BFF533831FF0000001700000006000000010000000000000000000000000000
        000400000012664A40FF92786CFF816357FF806356FF785C50FFF9F6F3FFF9F3
        F0FFF8F2EFFFF7F2EDFFF7F1EDFFF6F1ECFFF6F0EBFFF6F0EBFFF6EFE9FFF5EE
        E9FFF5EEE8FFF4EDE7FFF4EDE6FFF4ECE6FFF4EBE6FF674A41FF6F5147FF7456
        4DFF543932FF0000001700000006000000010000000000000000000000000000
        0004000000116A4E42FF987C71FF84675AFF836559FF7C6053FFFAF7F4FFF9F4
        F0FFF9F3EFFFF8F3EFFFF8F2EEFFF7F2EDFFF7F1EDFFF6F0EBFFF6EFEAFFF5EF
        EAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FFF4EBE6FF694D43FF705248FF7558
        4EFF553A33FF0000001600000006000000010000000000000000000000000000
        0004000000106E5146FF9B8274FF866B5DFF86695CFF7F6457FFFBF8F5FFF9F5
        F1FFF9F4F1FFF8F3F0FFF8F3EEFFF7F3EEFFF7F1EDFFF7F1ECFFF6F0ECFFF6EF
        EAFFF6EFE9FFF5EEE9FFF5EEE8FFF4EDE8FFF4ECE6FF6C5046FF71534AFF765A
        50FF573C34FF0000001500000005000000010000000000000000000000000000
        000400000010715549FF9F8679FF8A6D5FFF896D5EFF836759FFFBF8F6FFFAF5
        F2FFF9F5F1FFF8F4F0FFF8F3F0FFF8F3EFFFF8F2EEFFF7F1EDFFF7F0ECFFF6F0
        ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FFF5EDE7FF6F5349FF72554BFF795D
        52FF583D35FF0000001500000005000000010000000000000000000000000000
        00040000000F75594CFFA38B7DFF8C7162FF8C7061FF866B5CFFFBFAF7FFFBF8
        F6FFFBF8F6FFFBF8F5FFFAF7F4FFFBF7F3FFF9F6F3FFF9F5F2FFF9F5F1FFF9F4
        F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFFF7F0EBFF72564BFF73564BFF7B5F
        54FF593E36FF0000001400000005000000010000000000000000000000000000
        00040000000F795C4EFFA88F82FF907465FF8F7364FF8A6F60FF886E5EFF886C
        5EFF866B5DFF856A5CFF85695BFF83685AFF7F6557FF795F53FF785E52FF785D
        51FF775C50FF765B50FF765A4FFF75594EFF755A4EFF74584EFF75574DFF7D61
        56FF5A4038FF0000001300000005000000000000000000000000000000000000
        00030000000E7C5F52FFAB9386FF937768FF927767FF917566FF907565FF8F73
        65FF8E7263FF8D7163FF8C7161FF8B7061FF8A6E5FFF7A5F55FF785C53FF785C
        51FF785B52FF785B51FF775B51FF765A50FF765A4FFF76594FFF75594EFF7F63
        58FF5B423AFF0000001300000005000000000000000000000000000000000000
        00030000000D806356FFB0988AFF967B6BFF957A6AFF947869FF947868FF9277
        67FF927566FF917565FF907365FF8F7363FF8D7263FF856A5CFF7A5E54FF795E
        53FF795D53FF785D52FF785C52FF765B51FF765A50FF775B50FF775B4FFF8166
        5CFF5C433BFF0000001200000005000000000000000000000000000000000000
        00030000000D846758FFB39C8DFF997E6DFF987D6DFF977C6CFF977C6BFF957A
        6BFF957968FF947869FF937767FF927666FF917465FF8F7364FF7C6156FF7B5F
        55FF795E54FF795E54FFA5938EFFA4948EFF7B6259FF765B51FF785B51FF8268
        5DFF5F453CFF0000001200000004000000000000000000000000000000000000
        00030000000C886C5CFFB7A193FF9C8170FFA38979FFA58B7BFFA48A7BFFA289
        79FFA08779FFA08777FF9F8476FF9D8374FF9C8272FF9C8071FF8F7469FF8369
        5FFF82695FFF80655DFFB6AAA5FF49785EFFA19991FF877168FF755B50FF8469
        60FF60473EFF0000001100000004000000000000000000000000000000000000
        00030000000C8A6F5EFFBAA696FF9F8473FFA88F80FF6C5147FF553931FF5E44
        3CFF614840FF60483FFF5F473EFF5E463DFF5D453DFF5D443CFF5C433BFF5A43
        3AFF5A4239FF583F38FF9F9390FF14643DFF236041FF868B81FF907E76FF846A
        61FF61473EFF0000001100000004000000000000000000000000000000000000
        00030000000B8E7361FFBDA999FFA28876FFA99282FF563933FF4E423CFF664D
        44FFE9D5C9FFE8D5C9FFE8D5C8FFE6D4C8FFE8D4C7FFE6D4C7FFE5D2C4FFE5D2
        C4FFE5D1C3FFE0CBBFFFDDD4CDFF15663FFF50C29CFF1C6F4AFF5C7764FFA597
        91FF674F47FF0000001500000005000000010000000000000000000000000000
        00030000000B917663FFC1AC9DFFA58A79FFAC9382FF563B33FF4F433CFF6A51
        48FFF4E4D5FFEFDED0FFEAD9CBFFE8D6C9FFE8D4C8FFE6D2C6FFE3D2C5FFE1CF
        C3FFE3CEC0FFDDCBBCFFDAD1CBFF166841FF63D7B1FF3FC596FF298E65FF396A
        4EFF8B8780FF0000001E0000000A000000030000000100000000000000000000
        00020000000A957967FFC4AFA1FFA78D7AFFAE9484FF573A34FF51443EFF6F55
        4CFFF7E8D9FFF6E8D8FFF5E6D7FFF2E2D4FFEBDACEFFE7D9CEFFE8DED8FFE4DA
        D5FFE1D8D2FFDDD4CEFFD2C9C3FF176A43FF6EDBB9FF31C28EFF3DC798FF3AAE
        84FF206745FF05190F6900000017000000090000000400000001000000000000
        000200000009987C69FFC6B3A4FFAA917DFFB19686FF583C34FF52463EFF7359
        4FFFF8EADBFFF7E9DAFFF6E8D9FFF5E7D8FFF2E4D5FFECE4DDFF549576FF196E
        48FF186E47FF196D47FF186D46FF186D47FF5BD5ADFF36C492FF34C391FF3BC6
        95FF48C59BFF247C56FF0A311E9D0002011C0000000C00000005000000000000
        0002000000099A7F6BFFC9B7A7FFAC9280FFB29A88FF593C35FF52473FFF765D
        53FFF9ECDCFFF8EBDCFFF7EADBFFF6E8DAFFF2E4D6FFECE6DFFF1F7E56FF92E7
        CEFF6DDDBCFF6ADCB9FF67DAB7FF66D9B6FF63D9B4FF3BC898FF39C795FF38C6
        94FF39C594FF4DCFA3FF379C77FF114D30D5030D083A0000000C000000000000
        0002000000089D816DFFCCB8ABFFAF9481FFB49B88FF593D36FF534740FF7A60
        56FFFAEDDEFFF9ECDDFFF8EBDCFFF8EADBFFF4E6D7FFECE6DFFF218159FFB7F3
        E4FF75E5C5FF6BE0BEFF66DEBAFF57D7B0FF47CFA3FF40CC9DFF3FCA9BFF3DC9
        9AFF3CC897FF3AC696FF4ACDA1FF4CBD97FF1D6C4AF60723166A000000000000
        000200000008A0846FFFCEBBACFFB9A18EFFB69C89FF5B3D37FF544841FF7E64
        5AFFFBEEDEFFFAEDDEFFF9EDDDFFF8ECDDFFF5E7D8FFEFE9E2FF22855DFFBFF6
        E9FF7DE9CBFF7BE8CBFF7BE8CBFF7AE8CAFF79E7C9FF66DEBAFF4AD1A5FF43CD
        9EFF41CC9DFF3FCB9BFF51D1A7FF60C7A6FF277B57F60A291B68000000000000
        000100000006A08570FCCEBCAEFFCFBEAFFFD1C0B2FF5B3E37FF554942FF8065
        5CFFFCEFDFFFFBEEDFFFFAEEDEFFFAEDDEFFF7EADBFFF2EBE5FF238860FFC7F7
        EDFFC5F7EBFFC4F7EBFFC4F7EBFFC2F7EBFFC2F7EBFF81EACEFF7DE9CCFF59D9
        B1FF4CD1A5FF69DBB8FF55B090FF195E41D1040F0A320000000A000000000000
        00010000000451433983A18671FCA38772FFA38771FF6D5146FF5B3E37FF785C
        53FFA9948BFFA8938AFFA69188FFA58F86FFA28C82FFC7BBB6FF4E9778FF248B
        63FF248A63FF248A62FF248962FF248961FFC8F7EDFF86EDD3FF86EDD3FF91EF
        D7FF8CE1C9FF3F9674FF0F3F2B94010302160000000800000003000000000000
        0000000000010000000400000006000000070000000700000007000000070000
        000800000008000000080000000800000008000000090000000A0000000F0000
        001100000013000000150000001A258C64FFCDF9EFFF8CEFD7FFA2F3E0FF93D4
        C1FF2B7B5BEC082117550000000C000000050000000200000001000000000000
        0000000000000000000100000001000000020000000200000002000000020000
        0002000000020000000200000002000000000000000200000003000000030000
        000400000004000000060000000D268F67FFD1FAF1FFB1F3E5FF6FB59EFF1759
        3EBD030A07220000000800000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000200000008279269FFBCE8DDFF459576FA103A297D0000
        0009000000050000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000528936BFF267556DF0719123B000000060000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001000000031A5F45A40206041100000003000000020000
        0001000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnExportarInfonavitClick
      AutoGrayScale = False
    end
    object DxBarBtnVerCompleto: TdxBarLargeButton
      Caption = '&Ver Completo'
      Category = 0
      Hint = 'Ver Completo'
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
        F1FFD2BCB4FF000000190000000B000000040000000100000000000000002021
        7FB72B2BAFFF2929ADFF2727ACFF2524A9FF2322A6FF2220A5FF201EA3FF1E1C
        A1FF1D1A9FFF1B189DFF19179BFF18149AFF171398FF5652B0FFF8F2EFFFF9F2
        EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
        F3FFAE8373FF0000001200000004000000000000000000000000000000003031
        B4FF585EDAFF4A4FD6FF474BD4FF4549D2FF4245D1FF4042CFFF3D3FCEFF3A3C
        CCFF383ACBFF3637C9FF3435C8FF3333C7FF3131C6FF171399FFF9F3EFFFF9F3
        EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
        F2FFB08374FF0000001100000004000000000000000000000000000000003133
        B7FF5C62DDFFFAF6F6FF4A4FD6FF474CD4FF4549D2FFF8F2F1FFF7F2EFFF7978
        D8FF3B3DCDFFF6EEEBFF3637C9FF3435C8FF3233C7FF18159AFFF9F3F1FFF9F4
        F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
        EEFFB38576FF0000001000000004000000000000000000000000000000003436
        B9FF6066DEFFFBF7F6FF4D53D8FF4A50D6FF484CD5FFF8F4F2FF4246D1FFF7F2
        EFFF3D40CDFFF6F0ECFF383ACAFF3638C9FF3435C8FF1A189CFFFAF6F1FFF9F4
        F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
        E9FFB38978FF0000000F00000004000000000000000000000000000000003638
        BCFF646BE0FFFBF8F7FFFBF7F6FF8587E1FF4A50D6FFF9F5F2FF454AD3FFF8F3
        F0FF3F43CFFFF6F1EEFFF6EFECFF383ACBFF3638C9FF1D1A9EFFF9F6F3FFFAF6
        F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
        DDFFB5897AFF0000000E0000000400000000000000000000000000000000383B
        BEFF6770E3FFFCF8F8FF535ADBFFFBF7F6FF4E54D8FFFAF5F3FF484CD4FFF8F3
        F1FF4247D1FFF7F1EFFF3D40CEFF3A3DCDFF383ACAFF1E1CA0FFF9F5F2FFF9F5
        F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
        C2FFB78C7DFF0000000D00000003000000000000000000000000000000003A3D
        C1FF6A73E4FFFBFAF9FFFCF8F8FF898DE4FF5057DAFFFAF7F5FFFAF5F4FF8183
        DEFF454AD3FFF8F2F0FFF7F2EFFFF6F0EDFF3B3DCCFF201FA3FFFBF7F4FFF8F2
        EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
        ACFFB78C7DFF0000000A00000003000000000000000000000000000000003C40
        C3FF6E76E5FF6B74E4FF6870E3FF646CE1FF6067E0FF5D63DDFF585FDBFF555B
        D9FF5157D7FF4D52D6FF4A4FD4FF474BD2FF4347D0FF2221A5FFFAF8F4FFF7F2
        EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
        A6FF4C352D860000000600000002000000000000000000000000000000002E31
        91BD3D41C3FF3B3EC2FF393CC0FF383ABDFF3538BCFF3437B9FF3234B8FF3032
        B5FF2E2FB3FF2C2DB1FF2A2BAEFF2828ACFF2626AAFF5C5BBBFFFBF8F6FFF6F1
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
      OnClick = DxBarBtnVerCompletoClick
      AutoGrayScale = False
    end
    object DxBarBtnCerrar: TdxBarLargeButton
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
      OnClick = DxBarBtnCerrarClick
      AutoGrayScale = False
    end
    object DxBarBtnReporteContratos: TdxBarLargeButton
      Caption = '&Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
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
      OnClick = DxBarBtnReporteContratosClick
    end
    object DxBarBtnGrafica: TdxBarLargeButton
      Caption = '&Grafica de Salarios'
      Category = 0
      Hint = 'Grafica de Salarios'
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
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000100000003000000090000000D0000000D00000009000000050000
        00090000000E0000000E0000000900000005000000090000000E0000000E0000
        0009000000050000000A0000000F0000000F0000000A00000002000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000050000000B204C84C12C6AB7FF2C69B6FF1F4B82C000000011165C
        45C01E805EFF1D815DFF155C43C10000001281572CC1B4793CFFB3783DFF8157
        2BC1000000131C288AC12638C0FF2637C0FF1A278AC100000009000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        000D00000015000000162F6DB9FF94D5FCFF73C5FBFF2E6CB8FF000000182083
        60FF66C6A8FF55BE9CFF1F825FFF00000019B57B3FFFEEB47AFFEAAB6BFFB57A
        3EFF0000001A293AC2FF6A81EFFF4A62E9FF283AC1FF0000000E000000000000
        00000000000000000000000000000000000000000001000000030000000D231C
        1A695A4742E22A221F743371BCFFA8DDFDFF83CDFCFF316FBAFF000000182286
        63FF70CCAEFF59C19EFF218463FF00000019B67D42FFEFB982FFEBAD6FFFB67C
        41FF0000001A2D3EC4FF758BF1FF5169EBFF2B3CC3FF0000000E000000000000
        0000000000000000000000000000000000000000000100000006000000156450
        4AF0C6B8AEFF5B5754733775BFFFB9E4FEFF94D4FDFF3674BDFF000000172588
        66FF7BD1B5FF5EC3A3FF248765FF00000018B87F44FFF0BE8BFFEDB074FFB77E
        43FF000000193041C6FF8094F3FF5870EDFF2E3FC4FF0000000D000000000000
        0000000000000000000000000000000000000000000100000007070505276E59
        53FFD5C9BEFF5C5856733B79C2FFC7EAFFFFC4E9FFFF3978C1FF00000015288B
        68FF85D5BDFF63C6A5FF278A68FF00000016B98147FFF2C493FFEEB47AFFB880
        46FF000000173345C7FF8A9FF5FF6077EFFF3243C6FF0000000C000000000000
        0000000000000000000000000000000000000000000200000009130F0E427C65
        5FFFD5C8BDFF6965627E416DA1DD3E7DC5FF3E7CC4FF2E5C90C5000000112A8E
        6CFF8FD9C3FF68C8A9FF298C6BFF00000015BA834AFFF3C99CFFEFB981FFB982
        48FF000000163748C9FF95A7F6FF6980F1FF3547C9FF0000000C000000000000
        000000000000000000000000000000000001000000020000000A1F1A185C846E
        67FFD4C7BCFFBFB7B1DB6359528F312B29720D0A0A300000000C0000000E2D90
        6FFF99DEC9FF6ECCAEFF2C8F6DFF00000013BC864CFFF4CFA4FFF0BD88FFBC84
        4BFF000000143A4CCBFFA0B0F8FF7188F4FF394BCBFF0000000B000000000000
        000000000000000000000000000000000001000000030000000C2F2623778E77
        6FFFD3C5BBFFE0D7D0FFBBA89DFF7A6D69FF2D2522790000000E0000000B3094
        71FFA3E1CFFFA1E2CDFF2F9270FF00000012BD884FFFF6D4ADFFF2C28FFFBD87
        4EFF000000133E51CDFFA9B9F9FF7A8FF6FF3D4FCCFF0000000A000000000000
        000000000000000000000000000000000001000000030000000E3C322F90957F
        76FFD2C4BAFFE0D7D0FFBEACA0FF7E716DFF3C312E940000000F00000009256F
        57C2329674FF329673FF256E55C20000000EBF8A52FFF7D9B6FFF3C796FFBE89
        51FF000000114254CFFFB0BFFBFFAFBFFBFF4053CEFF00000009000000000000
        00000000000000000000000000000000000200000006000000134D403CAB9D87
        7CFFD1C3B9FFE0D7D0FFC1AEA3FF837570FF4A3E3AAD00000015000000080000
        000700000008000000070000000500000009C18D56FFF9DEBEFFF5CB9EFFC08B
        54FF0000000D33419AC24558D0FF4457D0FF32419AC200000006000000000000
        0000000000000000000000000002000000060000000F0B0909316C5A55E0A48D
        82FFD0C2B7FFE0D7D0FFC3B1A6FF847772FF695753E00B090835000000110000
        000700000003000000010000000000000007C38F59FFFAE2C5FFF7CFA4FFC28E
        58FF000000090000000500000007000000070000000500000001000000000000
        0000000000010000000300000008030302173E33318D79645DF8877169FF9D84
        79FF9A8376FF91776BFF8F7669FF806B60FF79645BFF6F5C55F93A302C8F0302
        021B0000000A000000030000000100000006C4925CFFFBE6CBFFF8D4ABFFC391
        5BFF000000070000000000000000000000000000000000000000000000000000
        0000000000020000000809080724665751D189736BFFB29E94FFAE988EFFA38C
        80FF9E8678FF9A8173FF8F7668FF80685BFF7E6358FF80685DFF755E56FF5E4D
        48D2080706270000000A0000000300000006C5955FFFFCE9D1FFFCE9D1FFC594
        5EFF000000060000000000000000000000000000000000000000000000000000
        0002000000060807061F6F5F5AD99F8B80FFC4B3A9FFC5B6ACFFB6A398FFAF9A
        8DFFAA9487FFA48E7EFF987F71FF876B5FFF83685AFF8A7163FF8F7769FF7D65
        5AFF63524CDB070605240000000900000005947149C1C79762FFC79661FF936F
        48C0000000040000000000000000000000000000000000000000000000010000
        00040000000C5B4E49AEA08B82FFC9BAB1FFD4C8C0FFD1C3BBFFC1AFA4FFBAA7
        9BFFB39F92FFAE978AFFA28B7CFF8E7465FF856B5CFF8F7667FF998274FF957B
        6EFF7D655BFF4F423EB100000011000000060000000400000004000000040000
        0003000000010000000000000000000000000000000000000000000000020000
        00072C26245B958279FFC9B9AFFFE6E3DAFFEAE8E1FFDCD1C9FFC8B8AEFFC3B1
        A6FFBCA79BFFB69F94FFAB9486FF977D6EFF836C5CFF8D7465FFA0887AFF9F88
        79FF937A6BFF7A635CFF26201E600000000A0000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        000C756761CEBDABA2FFDED7CFFFEFF0E8FFF0F1E9FFE6E2DAFFCFC1B7FFC9B8
        AEFFC2B0A3FFBAA79BFFAF998EFF9C8474FF876E5EFF8C7263FF9F887BFFA38D
        7FFF9B8172FF887063FF64534ED0000000110000000500000001000000000000
        000000000000000000000000000000000000000000000000000000000005221E
        1D459E8C84FFCFC2B8FFECEBE4FFF5FAF3FFF4F8F2FFECECE4FFD7CBC1FFCFBF
        B4FFC6B4A9FFBEABA0FFB49F94FFA0877AFF866E5FFF887061FF9A8475FFA68F
        83FF9F8677FF927968FF7F6962FF1D18174B0000000800000002000000000000
        0000000000000000000000000000000000000000000000000000000000074C43
        4084B2A098FFDBD3CAFFF2F6EFFFF6FBF4FFF6FBF4FFF0F2EAFFDFD7CEFFD4C4
        BCFFCBB9AEFFC1AEA4FFB7A498FFA28B7FFF886F61FF866C5EFF968072FFA992
        86FFA38A7DFF967B6EFF866D63FF463B37940000000B00000003000000000000
        0000000000000000000000000000000000000000000000000000000000087A6D
        68C5C1B2A9FFE5E2DAFFF6FAF3FFF7FBF4FFF8FAF3FFF7F7F0FFF6F4ECFFF2EE
        E7FFF9F7F0FFFAF8F1FFF9F7F0FFE8E2DAFFE3DCD4FFD2C8BFFFBCADA3FFB5A3
        96FFA48B80FF997F72FF8A7163FF655651CA0000000E00000003000000000000
        0000000000000000000000000000000000000000000000000000000000098F80
        7BDECABCB2FFF0F0E7FFF9F9F2FFE0DED6FFC2BEB4FF9F978CFF877C70FF8477
        6CFF635444FF6C5E4EFF756658FF928678FFACA297FFC2BBB1FFDAD7CEFFEDEB
        E3FFEDE8E0FFBAA89CFF8C7063FF7B6A63EA0000000F00000004000000000000
        000000000000000000000000000000000000000000000000000000000009A393
        8CF7E9E3DBFFD3CEC5FF786A5DFF685747FF6F5F51FF725F50FF776353FF7E6B
        5AFF8C7869FF98887AFFA29184FFAA9C90FFB3A699FFBCB1A7FFCDCAC0FFD1D2
        C6FFDADAD0FFEDEBE2FFD0C3B9FF86746DFA0000000E00000004000000000000
        000000000000000000000000000000000000000000000000000000000007A596
        90F5F4F2EBFF776355FF7F6B5AFF8C7968FF8F7D6DFF8D7968FF8C7767FF907A
        6DFF9D897AFFA79588FFB19F92FFBAAA9EFFC4B6ACFFCDBFB7FFDDD7CEFFE5E4
        DDFFE9EAE2FFE6E3DBFFF2EFE8FF897770FA0000000D00000003000000000000
        000000000000000000000000000000000000000000000000000000000005796E
        69B2D7CFC8FFDFD9CFFFA18D7EFF947E6FFF968173FF927F6FFF907B6AFF937F
        6EFF9E897AFFA89688FFB09E91FFB9A99BFFC3B4A8FFCCBFB4FFD9CFC6FFE7E3
        DCFFF2F1EAFFF6F4ECFFCFC5BEFF6B5F59B50000000900000002000000000000
        0000000000000000000000000000000000000000000000000000000000020D0C
        0B19796E6AAFCBC1BAFFEEEAE3FFF2EEE6FFE3DCD3FFCDC3B7FFB7A89BFFB7A9
        9CFF9F8B7BFFA59283FFAD9B8DFFC5B5AAFFD5CAC0FFE0D7CEFFEFE9E2FFF6F3
        ECFFECE7E0FFC1B5AEFF6D605CB20D0C0B200000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        000300000006383331558F827ECCBEB1AAFFCFC5BDFFE1DBD4FFECE7E0FFEBE7
        E0FFF7F4EDFFFAF8F1FFF6F4EDFFEAE6DFFFEAE5DEFFDFD8D1FFC9BEB7FFB4A5
        9EFF847771CD332E2B580000000A000000050000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100000002000000030000000611100F1F433D3B636D64609E8E827ECC9084
        7FCFA4968FEBB2A29BFFA2938DEB8D807AD08B7D78CD685F5A9F3F3A3666100F
        0E22000000090000000500000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000020000000300000005000000060000
        0006000000070000000700000008000000070000000700000006000000050000
        0003000000020000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnGraficaClick
    end
    object DxBarBtnCerrarContratos: TdxBarLargeButton
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
      OnClick = DxBarBtnCerrarContratosClick
    end
    object DxBarBtnRefrescar: TdxBarLargeButton
      Caption = '&Refrescar Registros (F5)'
      Category = 0
      Enabled = False
      Hint = 'Refrescar Registros (F5)'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000030000000B00000013000000190000001A0000
        00140000000B0000000300000000000000000000000000000000000000000000
        000000000000000000060402011C4827118B7C431ED2A65927FFA55927FF7E44
        1ED442230F7B0100000F0000000E000000070000000000000000000000000000
        000000000005120A05348A4F26DDC58A53FFDCB37CFFEFD298FFEFD198FFB676
        43FF2E1A0C62100904398F5127E10E05013A0000000600000000000000000000
        0002040201198D552BDCD1A169FFF1D6A5FFCE9E6EFFC08656FFBD8251FF613A
        1DA6000000227D4B26CBE2B97BFF5F290FCF0101001900000003000000000000
        00074C2F1B82C99765FFECD2A3FFB98154FB5238238A120C07300F0A06270201
        01194C2F1B88CE9D66FFF6DC9BFFBA8657FF3F1C0C910000000D000000000000
        000A8C5B36D0E3C598FFCB9D75FF573B258C0000000C00000003000000062014
        0C43BD875AFBF8E5BCFFF8DFA5FFF7E4BAFFA16540FC1C0E074C000000080000
        0014B37A4BFAF5E6BDFFBC8356FF0D0704300000000C00000003000000079666
        3FD5B87D4DFFBB8153FFF2D9A1FFB87D4DFFB87C4DFF9C6941DE845331D3A263
        3BFFBB8557FFF6E7BFFFBF8B5EFFA06238FF87522FDC00000006000000020000
        000B0D08042FA1653CFFF4DEAEFFB68155FA000000180000000A1F170F34C79D
        75FBFBF5DCFFFCF3CCFFFAF4DAFFB3855FFB21150C4100000004000000020000
        0009492C1886BA8B5EFFE7CEA7FF926B48CB0000000900000000000000045540
        2D77DDC1A2FFFDF7D9FFD4B598FF5037227F0202010C0D08041F110A05274B2D
        1986A1683EFAF3E4C3FFD8B692FF533F2C780000000400000000000000000000
        00058F6F50BCEFE1CDFF886343C20202010D58382091A3693CFFA66F43FFBE94
        6DFFF4E9D1FFE3CAADFFA47E5BD60504030E0000000100000000000000000000
        0001130F0B1DAB8863DA18130E242C1E1248B78B63FDF8F3E2FFF9F3E4FFEDDE
        C7FFDCC1A1FFA3815ED215110C22000000020000000000000000000000000000
        000000000001000000010101000342301E629A7B5CC2C6A078F9C6A078F9997B
        5DC3564634710504030A00000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000002000000020000
        0002000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
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
      OnClick = DxBarBtnRefrescarClick
    end
    object DxBarBtnContratar: TdxBarLargeButton
      Caption = '&Contratar'
      Category = 0
      Enabled = False
      Hint = 'Contratar'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000070000
        000B0000000C0000000C0000000C0000000C0000000D0000000D0000000D0000
        000D0000000D0000000E0000000E0000000E0000000D000000097B502ABEAC70
        3BFFAB6F3CFFAB703BFFAC703BFFAC6F3CFFAC703BFFAC703BFFAC703BFFAC70
        3BFFAC703BFFAB703CFFAC6F3CFFAC703BFFAC703CFF7B512BC0B17743FFDDB6
        86FFD6AA74FFD7AA72FFD6A872FFD6A872FFD6A771FFD5A770FFD5A66FFFD5A5
        6FFFD5A56EFFD4A56DFFD4A46DFFD4A46CFFD9AE7BFFB17743FFB67E4BFFDBB2
        82FFD2A069FFD19F68FFD19E68FFD09E66FFD09E65FFD09D65FFCE9C64FFCE9C
        63FFCE9B63FFCE9A62FFCE9A61FFCD9A62FFD5A975FFB77F4BFFB27C69FFF7F1
        ECFFF5EDE6FFF5ECE6FFF5ECE6FFF5EDE6FFF5ECE6FFF4ECE5FFF5ECE6FFF5EC
        E5FFF4EBE5FFF4ECE5FFF5ECE4FFF5EBE5FFF6F0EAFFA66D59FFB68370FFF8F3
        EFFF9B7E72FF8D6D60FF8C6C60FF8C6C5FFF8B6B5FFF8B6A5EFF907365FFF4EC
        E5FFF6EDE7FFF5EDE7FFF5EDE6FFF5ECE6FFF7F1ECFFAA725EFFBB8977FFFAF4
        F2FFE8DED7FFB6A096FF8F7165FF8E6E62FF8E6E62FFAE968CFFE3D8D1FFF6EF
        E9FFB88D7CFFB88C7BFFB78B79FFB68A78FFF8F3EEFFAE7864FFC08F7DFFFAF6
        F4FFF7F2EDFFF7F1EDFFA2877CFF917266FF9D8276FFF7F1ECFFF7F0EBFFF7F0
        EBFFF7F0EBFFF7F0EBFFF7F0EBFFF7F0EAFFF9F4F2FFB37D6AFFC39584FFFBF8
        F6FFF9F4EFFFF2ECE7FF94766BFF937569FF93756AFFF2EBE6FFF8F2EEFFF8F2
        EEFFC09786FFC09584FFBD9382FFBD9282FFFAF6F3FFB88471FFC89B89FFFCF9
        F7FFFAF5F2FFB8A199FF96796DFF95786CFF95776BFFB5A097FFF9F4F1FFF9F3
        F0FFF9F4F0FFF8F3F0FFF8F3F0FFF8F4F0FFFBF8F5FFBC8A77FFCCA18FFFFCFB
        F9FFFAF7F4FFA58C82FF987B70FF987B6FFF977A6FFFA48A7FFFFAF6F3FFFAF6
        F3FFC7A091FFC6A08EFFC49D8DFFC49C8CFFFCF9F7FFC0907EFFD0A694FFFDFB
        FBFFFCF8F6FFD6C9C3FFA88E85FFA0847AFFA78E84FFD5C7C2FFFBF7F5FFFBF7
        F5FFFBF7F5FFFAF7F5FFFBF7F4FFFBF6F4FFFDFBF9FFC49784FFD3AA99FFFEFE
        FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
        FDFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFC99C8AFF9E8174BFD5AE
        9CFFD5AD9BFFD5AC9AFFD4AB9AFFD3AA99FFD2AA98FFD2A997FFD1A897FFD1A7
        95FFD1A695FFD0A594FFCFA593FFCEA392FFCDA291FF98786BC1000000020000
        0003000000040000000400000004000000040000000400000005000000050000
        0005000000050000000500000005000000050000000500000004}
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
        0001000000010000000100000001000000010000000100000000000000010000
        0002000000050000000600000006000000060000000600000006000000050000
        0004000000050000000600000007000000070000000700000007000000070000
        0007000000070000000700000006000000050000000400000006000000060000
        0007000000070000000700000007000000060000000400000001000000040000
        000B000000130000001700000019000000190000001800000017000000120000
        000E0000001200000017000000190000001A0000001A0000001A0000001A0000
        001A0000001B0000001A00000018000000130000000F00000013000000190000
        001B0000001C0000001C0000001B000000160000000D000000050000000B3121
        165B9B6845EBAB734CFFAA734AFFAA714AFFA9714AFFA86F48FFA86F47FF0000
        001AA76D45FFA66C44FFA56B44FFA56942FFA46942FFA46841FFA36740FFA266
        3FFFA2663EFFA1663DFFA1643DFFA1643BFF0000001CA0633BFF9E603AFF9F60
        39FF9E6038FF9E5F38FF9D5E38FF925833F12C1A105F0000000D000000129D6C
        49E8D1A77AFFDEB889FFDDB788FFDDB786FFDDB686FFAF7B4FFF4C311D8C0000
        001C4E33218DB47F55FFDBB17FFFDAB17EFFDAB07DFFD9AF7CFFD9AF7BFFD9AE
        79FFD9AE79FFD9AD78FFAF794DFF4C301E8E0000001E4C311E8EAF774CFFD7A9
        75FFD6A873FFD7A873FFD6A872FFC69462FF8F5834E90000001500000015B37E
        56FFE0BB8DFFDCB280FFDBB27FFFDBB27DFFDEB787FF9A6336FF070503300000
        001C08050330A56E44FFDCB381FFD8AB76FFD7AB75FFD7AA75FFD6AA73FFD6A9
        73FFD6A872FFD8AE7BFFA0673BFF070503330000001E08050333A76E44FFD7AB
        76FFD4A46CFFD4A36CFFD3A46CFFD6A974FFA3663DFF0000001900000016B683
        5AFFE1BE90FFDCB381FFDBB37FFFDBB27EFFDDB788FFA57143FF462B16930000
        00274A2F1993AD7A4DFFDBB382FFD8AC77FFD8AB76FFD7AB76FFD7AA74FFD7AA
        74FFD6A873FFD8AF7AFFA97446FF4A2F1A950000002A4D321D95B58054FFD7AB
        76FFD4A56DFFD3A46CFFD3A36CFFD7AB76FFA56A42FF0000001A00000015B987
        5EFFE1C092FFDDB482FFDBB380FFDCB380FFDCB380FFD5AE7EFFA47143FF8F57
        28FFA97748FFD5AD7CFFDAAF7BFFD8AD78FFD8AC76FFD8AB76FFD7AA75FFD6AA
        74FFD6A973FFD7AA75FFD2A673FFA97545FF996033FFAE794BFFD4A773FFD4A6
        6FFFD4A56DFFD4A46DFFD3A46CFFD8AD79FFA96F46FF0000001900000014BB8A
        61FFE3C296FFDCB582FFDCB482FFDCB481FFDCB380FFDCB381FFDFBA8AFFE0BC
        8FFFDEB787FFDBB07CFFD9AE7AFFD9AE79FFD8AD78FFD8AD77FFD7AB76FFD7AB
        76FFD7AA75FFD6A973FFD7AA75FFDAB07DFFDBB381FFD9AF7BFFD6A872FFD4A6
        6FFFD5A66EFFD4A56DFFD3A56DFFDAAF7BFFAC7349FF0000001900000014BE8E
        63FFE0BB8FFFD8AC78FFD6AB76FFD6AB76FFD6AA74FFD5A974FFD5A872FFD5A7
        71FFD4A670FFD4A670FFD3A56FFFD3A56EFFD2A26DFFD3A26CFFD2A26BFFD1A1
        6AFFD1A069FFD19F68FFD09E68FFD09E67FFD09D66FFCE9D65FFCE9C65FFCE9B
        63FFCE9B63FFCD9B62FFCD9A62FFD4A774FFAE784EFF0000001800000013AF82
        72FFF8F3EFFFF4ECE5FFF4ECE5FFF4EBE5FFF4ECE4FFF5EBE4FFF4ECE5FFF4EC
        E4FFF4EBE4FFF5EBE5FFF4EBE4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EB
        E4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EBE4FFF4EB
        E4FFF4EBE4FFF4EBE4FFF4EBE4FFF6EFE9FFA77868FF0000001700000013B085
        74FFF9F5F0FFF4ECE6FFF5EDE6FFF4ECE6FFF5ECE6FFF5EDE5FFF4ECE5FFF4EC
        E5FFF4ECE5FFF4ECE5FFF4ECE5FFF5ECE5FFF4EBE5FFF4ECE5FFF4EBE4FFF4EC
        E5FFF4EBE4FFF4ECE4FFF4ECE5FFF4ECE4FFF4EBE4FFF4EBE4FFF5EBE4FFF4EB
        E4FFF4EBE4FFF4EBE4FFF4EBE4FFF6EFE9FFA87969FF0000001700000012B286
        76FFF9F5F1FFF5EDE6FFF5EDE7FF917166FF89685CFF89685CFF89685CFF8868
        5BFF88675BFF88685AFF88675BFF88675BFF88675AFF8E6F62FFF5ECE5FFF4EC
        E5FFC29989FFC29989FFC19989FFC19988FFC09987FFC09887FFC09887FFC098
        87FFC09787FFF4ECE5FFF4EBE4FFF6F0EBFFAA7A6BFF0000001600000011B388
        78FFFAF6F3FFF6EEE8FFF6EEE8FFAD9589FF8C6A5DFF8B6A5DFF896A5DFF896A
        5CFF89685CFF89685CFF89685CFF89685BFF88685CFFA99186FFF4EDE6FFF5ED
        E6FFF5EDE6FFF4EDE6FFF5ECE6FFF4EDE6FFF4ECE6FFF5EDE6FFF5ECE6FFF5EC
        E5FFF5ECE5FFF5ECE5FFF4ECE5FFF7F1ECFFAA7D6CFF0000001500000011B58A
        7AFFFAF7F3FFF6EFE9FFF6EFE8FFF2E9E4FFC7B4ABFF95776BFF8C6B5EFF8B6B
        5EFF8C6B5EFF8B6A5DFF8B6A5DFF927568FFC5B3A9FFF1E8E1FFF5EDE7FFF5EE
        E8FFC49D8DFFC39D8CFFC39C8BFFC39B8BFFC39B8BFFC29B8AFFC29A8AFFC29B
        8AFFC19A89FFF4ECE6FFF5EDE6FFF8F2EDFFAB7E6EFF0000001500000010B68C
        7CFFFAF8F5FFF7F0EAFFF6F0EAFFF6EFE9FFF7F0EAFFF2EAE5FFBDA89FFF8D6D
        61FF8C6D60FF8D6C60FFBBA69CFFF1E9E3FFF6EFE9FFF5EEE8FFF5EEE9FFF5EE
        E8FFF5EEE8FFF5EEE8FFF5EEE8FFF6EEE8FFF6EEE8FFF5EEE8FFF6EDE7FFF5EE
        E7FFF6EEE8FFF5EEE8FFF5EDE7FFF8F3EEFFAD806FFF000000140000000FB78E
        7EFFFBF9F5FFF7F1ECFFF7F1ECFFF6F1EBFFF7F1EBFFF6F1EBFFBDA9A0FF9070
        65FF907166FF907166FFC4B2AAFFF6F0EAFFF6F0EAFFF6F0EAFFF7EFEAFFF6F0
        EAFFC6A091FFC7A090FFC6A08FFFC5A08FFFC59F8EFFC59E8EFFC59E8DFFC49E
        8DFFC49E8DFFF6EEE8FFF5EFE8FFF8F3EFFFAF8172FF000000140000000FB990
        7FFFFBF9F7FFF7F2EDFFF7F2ECFFF7F2EDFFF7F1ECFFF7F2ECFFA0847AFF9475
        6AFF93756AFF93746AFFA58A80FFF8F3EFFFF9F4EFFFF8F3EFFFF9F3EFFFF8F4
        EFFFF8F3EEFFF8F3EEFFF7F2EDFFF7F2EDFFF7F1ECFFF7F1EBFFF6EFEAFFF6EF
        E9FFF6EFE9FFF6EFE9FFF6F0E9FFF9F5F1FFAF8373FF000000130000000EBB91
        81FFFCF9F8FFF8F3EEFFF8F4EFFFF8F5F0FFF9F6F1FFDDD2CDFF987A6FFF9779
        6CFF96786DFF96786CFF9C7F74FFDCD1CBFFF9F5F1FFF9F5F1FFF9F5F1FFF9F5
        F1FFCFAFA0FFCFAFA0FFCFAE9FFFCFAD9FFFCFAD9FFFCEAD9EFFCFAC9EFFCDAB
        9BFFCAA797FFF7F2ECFFF6F1EAFFFAF5F3FFB18674FF000000120000000DBC95
        84FFFDFBFAFFFBF7F3FFFBF6F4FFFAF7F4FFFAF7F4FFB29A91FF9C7F75FF997C
        6FFF997C6FFF987B6FFFA0867AFFAF9990FFFAF6F3FFF9F6F3FFFAF6F3FFF9F6
        F2FFF9F6F2FFFAF6F2FFFAF6F2FFF9F6F2FFF9F6F1FFF9F5F1FFF9F5F2FFFAF6
        F1FFF9F5F1FFF9F5F1FFF9F5F1FFFBF8F6FFB38878FF000000120000000DC19C
        8AFFFDFCFCFFFBF8F6FFFBF8F6FFFAF8F6FFFAF8F5FFA88E86FF9E7F77FF9A7E
        74FF9A7D73FF9A7C73FF9A7C72FFA48B81FFFAF7F5FFFAF8F4FFFAF8F4FFFAF8
        F4FFD4B5A7FFD4B5A6FFD4B5A6FFD3B4A5FFD3B4A5FFD3B3A5FFD3B3A4FFD2B3
        A4FFD1B2A4FFFAF6F3FFFAF6F3FFFCFAF8FFB78F7FFF000000110000000CC29D
        8DFFFDFDFCFFFBF9F6FFFCF9F6FFFBF9F6FFFBF9F7FFBCA89FFF9D8276FF9D82
        76FF9D8176FF9D8175FF9D8174FFB39B92FFFAF9F5FFFBF8F5FFFBF8F5FFFBF8
        F5FFFAF9F5FFFAF8F5FFFAF8F5FFFBF8F5FFFAF8F5FFFAF8F5FFFAF8F5FFFAF8
        F4FFFAF7F5FFFAF7F4FFFAF7F5FFFCFBF9FFBA9281FF000000110000000CC3A0
        8FFFFEFDFCFFFCFAF8FFFCFAF8FFFBFAF8FFFBFAF8FFF5F2EEFFC5B3ADFFB19B
        92FFA1877CFFA0867BFFBBA8A0FFF0EBE7FFFBF9F7FFFBF9F6FFFBF9F6FFFBF9
        F6FFD7BAADFFD7BAADFFD7BAACFFD7BAADFFD6B9ABFFD6B9ABFFD6B8AAFFD5B8
        AAFFD6B8AAFFFBF8F6FFFBF8F6FFFDFBFAFFBB9384FF000000100000000BC5A1
        92FFFEFDFDFFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFAF9FFFCFAF8FFFCFA
        F8FFFCFAF9FFFCFAF8FFFCFAF8FFFCFAF8FFFBFAF8FFFBFAF7FFFBFAF8FFFBFA
        F7FFFBFAF7FFFBFAF7FFFBFAF7FFFCFAF7FFFBF9F7FFFBF9F7FFFBFAF7FFFBF9
        F7FFFBFAF7FFFBFAF7FFFBF9F7FFFDFCFBFFBC9786FF0000000F0000000AC6A3
        93FFFEFEFDFFFDFCFAFFFCFBF9FFFCFCF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFB
        F9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF8FFFCFBF8FFFCFB
        F8FFFCFBF9FFFCFBF9FFFCFBF8FFFCFBF8FFFCFBF8FFFCFAF8FFFCFAF8FFFCFB
        F8FFFCFAF8FFFCFAF8FFFCFAF8FFFDFCFBFFBE9889FF0000000E00000008B595
        86E9F0E6E2FFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFD
        FDFFFEFEFDFFFEFDFDFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFD
        FDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFDFDFFFEFD
        FDFFFEFDFDFFFEFDFDFFFEFDFDFFEEE3DFFFAE8C7EE90000000B000000043229
        25479E8376CDC8A695FFC8A596FFC8A595FFC8A595FFC7A495FFC7A494FFC6A4
        94FFC6A394FFC6A393FFC5A393FFC6A392FFC5A292FFC5A292FFC5A191FFC5A1
        91FFC4A191FFC4A091FFC4A091FFC39F90FFC3A08FFFC39F8FFFC39E8EFFC39E
        8EFFC39E8EFFC39D8EFFC29D8DFFA38376DA3027234A00000006000000020000
        00040000000700000009000000090000000A0000000A0000000A0000000A0000
        000A0000000A0000000A0000000B0000000B0000000B0000000B0000000B0000
        000B0000000B0000000B0000000B0000000C0000000C0000000C0000000C0000
        000C0000000C0000000C0000000C0000000A0000000600000002000000000000
        0001000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000030000000300000003000000030000
        0003000000030000000300000003000000030000000300000003000000030000
        0003000000030000000300000003000000020000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnContratarClick
    end
    object DxBarBtnDescuentosInf: TdxBarLargeButton
      Caption = 'Descuentos Infonavit'
      Category = 0
      Enabled = False
      Hint = 'Descuentos Infonavit'
      Visible = ivAlways
      Glyph.Data = {
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
      OnClick = DxBarBtnDescuentosInfClick
    end
    object DxBarBtnResumenEmpleados: TdxBarLargeButton
      Caption = 'Imprimir Lista Empleados'
      Category = 0
      Hint = 'Imprimir Lista Empleados'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
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
      OnClick = DxBarBtnResumenEmpleadosClick
    end
    object btnReporteConceptosExtraEmpleados: TdxBarLargeButton
      Caption = 'Ver descuentos(conceptos extra)'
      Category = 0
      Enabled = False
      Hint = 'Ver descuentos(conceptos extra)'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000068057
        4CBDB37B69FFB37A68FFB37A68FFB27968FFB27968FFB27A68FFB27968FFB379
        68FFB27967FFB17967FF7F5749BF00000007000000000000000000000008B57D
        6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFBF5F2FFFBF5F2FFFAF5F1FFFBF5
        F1FFFAF4F1FFFAF4F0FFB27B68FF0000000B000000000000000000000008B67F
        6DFFFCF8F5FFC79C8BFFC69B8BFFC59A8AFFC59A89FFC49888FFC49887FFC397
        87FFBA8B7AFFFBF5F2FFB47D6AFF0000000B000000000000000000000008B882
        6FFFFCF9F6FFF7EEE9FFF8EEE9FFF8EFE8FFF8EEE8FFF7EEE8FFF8EEE8FFF7ED
        E8FFF7EEE8FFFBF7F3FFB67F6DFF0000000A000000000000000000000007BA84
        73FFFDF9F8FFC8A090FFC89F8EFFC89E8DFFC79D8CFFC79C8BFFC69B8BFFC69A
        8AFFBC8E7DFFFCF8F5FFB88170FF0000000A000000000000000000000007BB87
        76FFFDFBF9FFF8F1EBFFF8F1ECFFF8F0ECFFF8F1EBFFF8F0EBFFF9F0EBFFF8EF
        EAFFF8F0EAFFFCF9F7FFB98473FF00000009000000000000000000000006BD8A
        78FFFDFBFAFFCBA695FFCAA494FFCAA393FFC9A291FFC8A191FFC8A08FFFC89F
        8EFFBF9381FFFDFAF8FFBB8675FF00000008000000000000000000000006BF8D
        7BFFFEFCFBFFFAF3EEFFFAF2EFFFF9F2EFFFFAF2EEFFF9F2EEFFFAF2EEFFFAF2
        EEFFF9F1EEFFFDFBF9FFBD8978FF00000008000000000000000000000005C190
        7EFFFEFDFCFFCFAA9BFFCEAA9AFFCEA998FFCDA797FFCBA494FFDCC5BBFFEAE0
        DCFFE2D1CBFFFAF9F8FFE1CDC6FF0000000F000000040000000100000005C393
        81FFFEFDFDFFFBF4F2FFFAF5F2FFFAF5F1FFFAF5F1FFFAF6F4FFBCB7DBFF3B2E
        AEFF6D66B3FFEAE9ECFF665BA6FF160C7EEA0603244F0000000400000004C596
        84FFFEFEFEFFD9A87AFFD8A679FFD6A679FFD7A578FFEDE0D3FF4336B5FF6F85
        EAFF4150CBFF3A31A4FF3B48C9FF5C74E4FF180E82E70000000700000004C698
        87FFFFFEFEFFDEB487FFDFB387FFDEB386FFDEB386FFEDDCCBFF7970C3FF7780
        DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F0000000500000003C99B
        8AFFFFFEFEFFE0B688FFE0B688FFE0B588FFE0B588FFE4C3A1FFE8DED5FF4C45
        BAFF6A85EBFF7494F2FF6079E7FF262095E3010104130000000200000003CA9E
        8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFEFEFFFCFCFCFF807FD6FF6B7E
        E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000029B7F
        74BFD0AB9CFFD0AB9CFFD0AA9CFFD0AA9BFFCFAA9CFFEFE5E1FF615FD6FFB1C3
        F6FF8D99EAFF5E5BD0FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
        0001000000020000000300000003000000030000000300000004151537474B4B
        C5E63131829F020205112E2D809F4340BCE61212334600000002}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000300000004000000040000000500000005000000050000
        0005000000050000000500000005000000050000000500000005000000050000
        0005000000050000000500000005000000060000000600000005000000040000
        0004000000010000000000000000000000000000000000000000000000000000
        0001000000050000000A0000000F000000120000001200000012000000120000
        0012000000120000001300000013000000130000001300000013000000130000
        0014000000140000001400000014000000140000001400000014000000120000
        000C000000060000000100000000000000000000000000000000000000000000
        00030000000B7E5D52BEAC7E6EFFAB7E6FFFAC7E6EFFAB7E6EFFAB7D6DFFAB7D
        6DFFAA7D6DFFAA7D6DFFAB7D6DFFAB7C6CFFAA7C6BFFA97B6CFFA97B6BFFAA7B
        6BFFA97B6BFFA97B6BFFA87A6BFFA97B6AFFA9796AFFA97969FFA87A6AFF7957
        4CBF0000000D0000000300000000000000000000000000000000000000010000
        00030000000EB08474FFFFFFFFFFFAF5F2FFFAF5F1FFFAF5F1FFF9F5F2FFFAF5
        F1FFFAF4F1FFF9F5F1FFFAF5F1FFF9F5F1FFFAF5F1FFF9F4F1FFFAF4F1FFF9F5
        F1FFF9F5F1FFF9F5F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4F1FFA87A
        6AFF000000120000000400000001000000000000000000000000000000010000
        00040000000FB28677FFFFFFFFFFF5ECE5FFF5ECE5FFF5ECE5FFF5ECE5FFF5EC
        E5FFF5EBE4FFF5EBE5FFF5EBE4FFF5EBE5FFF5EBE4FFF4EBE4FFF4EBE5FFF4EB
        E4FFF4EBE4FFF4EBE4FFF5EBE4FFF5EAE4FFF5EBE3FFF4EAE3FFFAF5F1FFAA7C
        6BFF000000130000000500000001000000000000000000000000000000000000
        00040000000FB38979FFFFFFFFFFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5EC
        E5FFF5ECE6FFF5ECE6FFF5ECE5FFF5EBE5FFF5ECE6FFF5ECE5FFF5ECE5FFF5EB
        E4FFF5EBE5FFF5EBE4FFF5EBE4FFF5EBE4FFF4EBE4FFF5EBE5FFF9F5F1FFAB7C
        6CFF000000130000000500000001000000000000000000000000000000000000
        00040000000EB58C7BFFFFFFFFFFF5EDE7FFF5EDE7FFF6ECE6FFF5ECE7FFF5ED
        E6FFF6EDE7FFF5EDE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5EC
        E6FFF5ECE6FFF5ECE5FFF5ECE5FFF5ECE5FFF5ECE5FFF5ECE5FFFAF5F1FFAB7D
        6EFF000000120000000500000001000000000000000000000000000000000000
        00040000000EB78E7FFFFFFFFFFFF5EEE8FFF6EDE7FFF5EDE8FFC19888FFC098
        87FFC09888FFC09887FFC09786FFC09786FFC09786FFBF9786FFBF9785FFBF97
        85FFBF9685FFBF9685FFBE9685FFF5ECE5FFF5ECE6FFF5ECE6FFFAF5F2FFAC7F
        6EFF000000110000000500000001000000000000000000000000000000000000
        00030000000DB99082FFFFFFFFFFF7EEE9FFF6EFE9FFF6EEE8FFEFE2DBFFEEE2
        DAFFEEE2DAFFEFE2DAFFEEE1DAFFEEE2D9FFEEE1DAFFEDE1D9FFEEE1D9FFEDE1
        D9FFEDE1D9FFEDE1D8FFEEE1D9FFF5ECE7FFF5ECE6FFF6EDE6FFFAF6F2FFAD80
        70FF000000110000000500000001000000000000000000000000000000000000
        00030000000DBB9384FFFFFFFFFFF7EFEAFFF6EEE9FFF6EFEAFFC29B8BFFC29B
        8BFFC29B8BFFC29B8BFFC19A8AFFC29A8AFFC19A89FFC19A89FFC19989FFC19A
        88FFC09989FFC19888FFC09888FFF5EEE8FFF5EEE7FFF6EDE7FFFAF6F3FFAD81
        71FF000000100000000400000001000000000000000000000000000000000000
        00030000000CBD9586FFFFFFFFFFF7F0EBFFF7EFEBFFF7F0EAFFEFE3DDFFF0E3
        DDFFEFE3DCFFF0E3DCFFEFE3DCFFEFE2DBFFEFE2DBFFEFE2DBFFEFE3DBFFEFE2
        DBFFEFE3DBFFEEE2DBFFEEE2DBFFF3EDE9FFE8E6E5FFDCDCDAFFDCDBDAFFCDC3
        C0FF000000250000000900000001000000000000000000000000000000000000
        00030000000BBE9989FFFFFFFFFFF8F1ECFFF8F0EBFFF7F0ECFFC59F90FFC59F
        8FFFC59F8FFFC59F8EFFC49E8EFFC49E8EFFC49D8DFFC49D8DFFC39D8CFFC39D
        8CFFC29C8CFFC39C8BFFC29C8CFFEAE8E6FF4A7B67FF216549FF216448FF2164
        48FF184734D10000001900000001000000000000000000000000000000000000
        00030000000BC09A8BFFFFFFFFFFF8F1ECFFF8F2EDFFF7F1ECFFF1E5DFFFF0E4
        DFFFF0E5DEFFF0E5DEFFF1E5DEFFF1E4DEFFF0E4DDFFF0E4DDFFF0E4DDFFEFE4
        DDFFF0E4DDFFEFE3DCFFEFE4DCFFE3E1E1FF267859FF41C699FF23B57DFF23B2
        7CFF21664AFF0000002200000000000000000000000000000000000000000000
        00030000000AC19D8EFFFFFFFFFFF7F2EEFFF8F2EDFFF8F2EDFFC8A494FFC7A4
        93FFC8A393FFC7A293FFC7A292FFC6A292FFC6A292FFC6A191FFC5A190FFC6A0
        91FFC6A090FFC5A08FFFC59F8FFFE4E2E1FF287D5EFF49CAA0FF22B57EFF27B8
        83FF22694CFF0000002200000000000000000000000000000000000000000000
        00030000000AC39F90FFFFFFFFFFF8F3EFFFF9F3EFFFF9F2EFFFF8F2EFFFF8F2
        EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EDFFF8F2EDFFF8F1EDFFF6F1
        EEFFEFEDECFFE9E7E6FFE7E5E4FFD4D3D2FF2B8263FF4FCDA3FF27B884FF2EBC
        89FF246C4FFF000000340000001C0000001C0000001200000004000000000000
        000200000009C5A192FFFFFFFFFFF9F3F0FFF9F4EFFFF9F3EFFFCAA798FFCAA7
        98FFCAA798FFCAA697FFC9A697FFC9A697FFC9A696FFC9A695FFC8A595FFE3D7
        D3FF558C76FF287759FF277658FF277457FF2D8867FF37C293FF2CBD8AFF34C1
        91FF257052FF256E51FF256E50FF246D50FF1A4E39CA00000011000000000000
        000200000009C6A394FFFFFFFFFFFAF4F1FFF9F4F0FFFAF4F0FFF9F4F0FFF9F4
        F0FFF9F4F0FFF9F4F0FFF9F4F0FFF8F4F0FFF9F4EFFFF8F3EFFFF8F3EFFFEEED
        ECFF319170FF63D8B4FF41C99EFF40C99DFF3FC89BFF3DC89AFF2FC290FF3BC7
        98FF39C598FF38C596FF37C494FF36C493FF2C8665FF00000018000000000000
        000200000008C6A596FFFFFFFFFFFAF5F2FFF9F5F2FFF9F5F1FF00A664FF00A2
        61FF009F5EFF009D5BFF00985BFF009658FF009256FF009054FF008D51FFE5DC
        D9FF339575FF69DBBBFF3BCB9DFF47D0A6FF51D3ABFF57D4AFFF5AD6B2FF55D3
        ADFF50D0A8FF45CBA1FF36C595FF3EC79AFF2E8B6BFF00000018000000000000
        000200000008C8A697FFFFFFFFFFFAF6F3FFFAF5F3FFFAF6F2FFF3EBE5FFF3EB
        E5FFF2EAE5FFF3EBE5FFF3EAE5FFF2E9E4FFF2E9E5FFF2E9E4FFF3E9E5FFF1EE
        EDFF369C79FF9EECD7FFAAEFDDFFAAEFDEFFAAEFDDFF91E9D2FF64DBBAFF73DF
        C2FF8EE7D0FFA6EDDBFFA5ECDBFF96E8D2FF30906FFF00000014000000000000
        000200000007C9A799FFFFFFFFFFFAF7F4FFFAF7F3FFFAF6F3FFCFB0A2FFCEB0
        A1FFCFAFA1FFCEAEA1FFCEAEA0FFCEAEA0FFCDADA0FFCDAD9FFFCDAD9EFFE9E0
        DBFF62AE92FF37A07EFF379F7CFF379E7BFF379E7AFF9BECD8FF6EE1C3FF7FE4
        CAFF359A78FF349977FF349776FF349775FF266F56C90000000C000000000000
        000200000006CAA99AFFFFFFFFFFFBF7F5FFFAF7F5FFFAF7F4FFF4ECE7FFF4EC
        E7FFF3ECE8FFF3ECE7FFF3ECE7FFF3ECE7FFF3ECE7FFF3ECE6FFF3EBE7FFF4EE
        EAFFF5F2F0FFF3F1EFFFF3F1F0FFECEAEAFF39A280FFA4EFDEFF77E5CAFF89E9
        D2FF2F8969FF0000001C0000000F0000000F0000000A00000003000000000000
        000200000006CBAA9BFFFFFFFFFFFBF8F6FFFBF8F5FFFBF8F5FFD2B4A6FFD2B4
        A6FFD1B3A6FFD1B3A5FFD1B2A4FFD0B2A4FFD0B2A4FFD0B1A4FFD0B1A3FFD0B0
        A2FFCFB0A2FFCFB0A2FFCFAFA2FFF6F5F4FF3AA784FFABF2E2FF7FE8D0FF91EC
        D8FF328F6FFF0000000F00000000000000000000000000000000000000000000
        000100000006CCAB9CFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9F6FFF4EDE9FFF4ED
        E9FFF4EDE9FFF4EDE9FFF4EEE9FFF4EDE9FFF4EDE8FFF4ECE8FFF4EDE8FFF3ED
        E8FFF3ECE8FFF3EDE8FFF3ECE7FFF8F7F6FF3BAA86FFDEFBF6FFDEFBF6FFDEFB
        F6FF359574FF0000000C00000000000000000000000000000000000000000000
        000100000005CCAC9DFFFFFFFFFFFCFAF8FFFCF9F8FFFCF9F7FFD3B8A9FFD3B7
        A8FFD4B7A8FFD3B7A8FFD3B6A8FFD3B6A7FFD3B6A7FFD3B6A7FFD2B5A6FFD2B4
        A6FFD2B4A6FFD2B4A6FFD1B3A6FFFBFAF9FF6BBFA4FF3DAD89FF3CAC89FF3CAC
        88FF28735AC40000000700000000000000000000000000000000000000000000
        000100000005CDAC9EFFFFFFFFFFFCFAF8FFFCFAF8FFFCFAF8FFFCF9F8FFFCFA
        F8FFFCF9F8FFFCF9F7FFFCF9F8FFFBF9F8FFFCF9F7FFFCF9F7FFFCF9F7FFFBF9
        F6FFFBF9F6FFFBF8F7FFFBF9F6FFFCF8F7FFFAF9F8FFFAF9F9FFF9F9F9FFEAE1
        DEFF0000000C0000000300000000000000000000000000000000000000000000
        000100000004CDAD9EFFFFFFFFFFFDFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFA
        F9FFFCFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFBF9F8FFFCFAF8FFFCFA
        F8FFFCF9F7FFFCFAF8FFFBF9F7FFFCFAF7FFFCF9F7FFFBF9F7FFFDFCFBFFC09B
        8BFF000000070000000200000000000000000000000000000000000000000000
        000100000004CDAD9FFFFFFFFFFFFDFBFAFFFCFBF9FFFCFBFAFFFDFAF9FFFCFB
        FAFFFCFBF9FFFCFAF9FFFDFAF9FFFCFBF9FFFDFAF9FFFDFAF8FFFCFBF9FFFCFA
        F8FFFCFAF8FFFBFAF9FFFCFAF8FFFBFAF8FFFCF9F8FFFBFAF8FFFDFCFBFFC19D
        8EFF000000070000000200000000000000000000000000000000000000000000
        000100000003CEAD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC39E
        8FFF000000060000000100000000000000000000000000000000000000000000
        000000000002998176BECEAEA0FFCEAEA0FFCEAEA0FFCEAEA0FFCEAEA0FFCEAE
        9FFFCEAEA0FFCEAD9FFFCEAD9FFFCEAD9FFFCEAD9FFFCEAD9FFFCEAD9FFFCDAD
        9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFF9880
        76BF000000040000000100000000000000000000000000000000000000000000
        0000000000010000000200000002000000030000000300000003000000030000
        0003000000030000000300000004000000040000000400000004000000040000
        0004000000040000000400000004000000050000000500000005000000050000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000000000000000000000000000000000000000000000}
      OnClick = btnReporteConceptosExtraEmpleadosClick
    end
    object DxBarBtnHistorialFiniquitos: TdxBarButton
      Caption = '&Historial de Finiquitos'
      Category = 0
      Hint = 'Historial de Finiquitos'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000030000
        00080000000B0000000B0000000B0000000B0000000B0000000B0000000B0000
        000900000002000000000000000000000000000000000000000000000007BF82
        50FFBF824FFFBF814FFFBF814EFFBF804DFFBF804DFFBE7F4CFFBE804BFFB97C
        4AFA00000008000000000000000000000000000000000000000000000009C185
        53FFE5BF8EFFE3B884FFE3B783FFE3B884FFE3B783FFE3B782FFE2B989FFA368
        3CEA00000008000000000000000000000000000000000000000000000008C287
        56FFE8C394FFE0B27AFFE0B379FFE0B379FFE0B278FFE1B47CFFDDB68BFF8556
        33C100000006000000030000000700000003000000000000000000000007C48A
        59FFE9C79BFFE1B57EFFE2B57DFFE2B47DFFE2B47CFFE6BE8CFFCFA279FF4C32
        1E7200000006100904268F5127DD0E05012C000000030000000000000006CA95
        68FFECCEA7FFE4BB8AFFE3BA87FFE2B781FFE3B883FFE9CCA8FFAB764BE70906
        04140000000B7D4B26C2E2B97BFF5F290FC70101000E0000000100000005CC9A
        6CFFEED2AEFFE8C191FFE8C191FFE7C596FFF0D8B5FFD0A27BFF3E2A1B5B0000
        00084C2F1B7BCE9D66FFF6DC9BFFBA8657FF3F1C0C840000000700000004CF9D
        72FFF0D8B8FFEDD0A8FFF2DBBBFFF2DFC6FFD6AE8BFF5E442E81000000052014
        0C38BD875AFBF8E4B8FFF8DEA5FFF7E3B6FFA0653FFB1C0E074000000003D1A2
        77FFF2E2CDFFEBD4BBFFDEBC9BFFBA8F69E94031235600000003000000049565
        3FD2B87D4DFFBB8153FFF2D8A0FFB87D4DFFB87C4DFF9C6A41DB00000002D2A5
        7CFFB68B69E2947154B95743316F0A07050F0000000100000000000000010000
        00050D080422A1653CFFF4DDADFFB68155FA0000000C00000005000000000000
        0002000000020000000100000003000000030000000300000001000000010000
        0004492C187FBA8B5EFFE6CCA4FF916B48C70000000400000000000000000000
        000000000000000000012F23194293562CF948291480110A0520100A05204B2E
        1981A1683EF9F3E2C0FFD8B690FF533F2C720000000200000000000000000000
        00000000000000000002C6996EFFFDF9E5FFDDC4A5FFB07E53FFA66F43FFBE94
        6CFFF3E8CEFFE3C9AAFFA47E5BD40504030A0000000000000000000000000000
        00000000000000000001A3805FD0EADAC0FFFAF4E2FFFEFCEAFFF9F2DEFFEDDD
        C3FFDCC09FFFA3825ED115110C1F000000010000000000000000000000000000
        00000000000000000000050403075646346E9A7B5CC1C6A078F9C6A078F9997B
        5DC15645346E0504030800000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000000000000000000000000000000000000}
      OnClick = DxBarBtnHistorialFiniquitosClick
    end
    object DxBarBtnVerCompletoFiniquitos: TdxBarLargeButton
      Caption = '&Ver Completo'
      Category = 0
      Hint = 'Ver Completo'
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
        F1FFD2BCB4FF000000190000000B000000040000000100000000000000002021
        7FB72B2BAFFF2929ADFF2727ACFF2524A9FF2322A6FF2220A5FF201EA3FF1E1C
        A1FF1D1A9FFF1B189DFF19179BFF18149AFF171398FF5652B0FFF8F2EFFFF9F2
        EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
        F3FFAE8373FF0000001200000004000000000000000000000000000000003031
        B4FF585EDAFF4A4FD6FF474BD4FF4549D2FF4245D1FF4042CFFF3D3FCEFF3A3C
        CCFF383ACBFF3637C9FF3435C8FF3333C7FF3131C6FF171399FFF9F3EFFFF9F3
        EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
        F2FFB08374FF0000001100000004000000000000000000000000000000003133
        B7FF5C62DDFFFAF6F6FF4A4FD6FF474CD4FF4549D2FFF8F2F1FFF7F2EFFF7978
        D8FF3B3DCDFFF6EEEBFF3637C9FF3435C8FF3233C7FF18159AFFF9F3F1FFF9F4
        F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
        EEFFB38576FF0000001000000004000000000000000000000000000000003436
        B9FF6066DEFFFBF7F6FF4D53D8FF4A50D6FF484CD5FFF8F4F2FF4246D1FFF7F2
        EFFF3D40CDFFF6F0ECFF383ACAFF3638C9FF3435C8FF1A189CFFFAF6F1FFF9F4
        F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
        E9FFB38978FF0000000F00000004000000000000000000000000000000003638
        BCFF646BE0FFFBF8F7FFFBF7F6FF8587E1FF4A50D6FFF9F5F2FF454AD3FFF8F3
        F0FF3F43CFFFF6F1EEFFF6EFECFF383ACBFF3638C9FF1D1A9EFFF9F6F3FFFAF6
        F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
        DDFFB5897AFF0000000E0000000400000000000000000000000000000000383B
        BEFF6770E3FFFCF8F8FF535ADBFFFBF7F6FF4E54D8FFFAF5F3FF484CD4FFF8F3
        F1FF4247D1FFF7F1EFFF3D40CEFF3A3DCDFF383ACAFF1E1CA0FFF9F5F2FFF9F5
        F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
        C2FFB78C7DFF0000000D00000003000000000000000000000000000000003A3D
        C1FF6A73E4FFFBFAF9FFFCF8F8FF898DE4FF5057DAFFFAF7F5FFFAF5F4FF8183
        DEFF454AD3FFF8F2F0FFF7F2EFFFF6F0EDFF3B3DCCFF201FA3FFFBF7F4FFF8F2
        EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
        ACFFB78C7DFF0000000A00000003000000000000000000000000000000003C40
        C3FF6E76E5FF6B74E4FF6870E3FF646CE1FF6067E0FF5D63DDFF585FDBFF555B
        D9FF5157D7FF4D52D6FF4A4FD4FF474BD2FF4347D0FF2221A5FFFAF8F4FFF7F2
        EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
        A6FF4C352D860000000600000002000000000000000000000000000000002E31
        91BD3D41C3FF3B3EC2FF393CC0FF383ABDFF3538BCFF3437B9FF3234B8FF3032
        B5FF2E2FB3FF2C2DB1FF2A2BAEFF2828ACFF2626AAFF5C5BBBFFFBF8F6FFF6F1
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
      OnClick = DxBarBtnVerCompletoFiniquitosClick
    end
    object DxBarBtnCerraFiniquito: TdxBarLargeButton
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
      OnClick = DxBarBtnCerraFiniquitoClick
    end
    object CheckFiltrarDocumentos: TcxBarEditItem
      Caption = 'Mostrar Documentaci'#243'n'
      Category = 0
      Hint = 'Mostrar Documentaci'#243'n'
      Visible = ivNever
      OnChange = CheckFiltrarDocumentosChange
      ShowCaption = True
      Width = 50
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object prueba: TdxBarEdit
      Caption = 'prueba'
      Category = 0
      Hint = 'prueba'
      Visible = ivAlways
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'prueba2'
      Category = 0
      Hint = 'prueba2'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckBoxProperties'
    end
  end
  object CdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = CdPersonalAfterScroll
    Left = 936
    Top = 312
  end
  object dsPersonal: TDataSource
    Left = 544
    Top = 96
  end
  object DxMiniToolPersonal: TdxRibbonMiniToolbar
    ItemLinks = <>
    Ribbon = DxRibbonPersonal
    Left = 64
    Top = 288
  end
  object DxSkinCtrlMain: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2010Blue'
    Left = 136
    Top = 248
  end
  object cxStyleReposEstilosGrid: TcxStyleRepository
    Left = 64
    Top = 192
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
  object CxItemReposBarraMenu: TcxEditRepository
    Left = 24
    Top = 152
    object CxRadioGroupFiltro: TcxEditRepositoryRadioGroupItem
      Properties.DefaultValue = 1
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Todo el Personal'
          Value = 0
        end
        item
          Caption = 'Personal Contratado'
          Value = 1
          Tag = 1
        end
        item
          Caption = 'Personal No Contratado'
          Value = 2
          Tag = 2
        end>
    end
  end
  object CdFechaBaja: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 296
  end
  object CdDatosEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 936
    Top = 216
  end
  object FrxReportGeneral: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41984.541588194400000000
    ReportOptions.LastChange = 41984.711107118100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = FrxReportGeneralGetValue
    OnReportPrint = 'no '
    Left = 264
    Top = 240
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = frxDBDPersonal
        DataSetName = 'frxDBDPersonal'
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
      object ReportTitle1: TfrxReportTitle
        Height = 117.724490000000000000
        Top = 18.897650000000000000
        Width = 980.410081999999900000
        object Memo2: TfrxMemoView
          Width = 978.898270000000000000
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
            'EMPLEADOS')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor1: TfrxMemoView
          Left = 234.330860000000000000
          Top = 44.574830000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor2: TfrxMemoView
          Left = 347.716760000000000000
          Top = 74.472480000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor3: TfrxMemoView
          Left = 347.716760000000000000
          Top = 93.370130000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor4: TfrxMemoView
          Left = 604.724800000000000000
          Top = 74.252010000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor5: TfrxMemoView
          Left = 604.724800000000000000
          Top = 94.929190000000010000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 291.023810000000000000
          Top = 74.472480000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 291.023810000000000000
          Top = 93.370130000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 548.031850000000000000
          Top = 74.252010000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 548.031850000000000000
          Top = 94.149660000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 234.330860000000000000
          Top = 21.236240000000000000
          Width = 514.016080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESUMEN DE EMPLEADOS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338582680000000000
        Top = 253.228510000000000000
        Width = 980.410081999999900000
        DataSet = frxDBDPersonal
        DataSetName = 'frxDBDPersonal'
        RowCount = 0
        object frxDBDPersonalNombreCompleto: TfrxMemoView
          Left = 68.031540000000000000
          Width = 124.724490000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object frxDBDPersonalCodigoPersonal: TfrxMemoView
          Width = 68.031540000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'CodigoPersonal'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."CodigoPersonal"]')
          ParentFont = False
        end
        object frxDBDPersonalnumerosegurosocial: TfrxMemoView
          Left = 192.756030000000000000
          Width = 52.913420000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'numerosegurosocial'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."numerosegurosocial"]')
          ParentFont = False
        end
        object frxDBDPersonalrfc: TfrxMemoView
          Left = 245.669450000000000000
          Width = 79.370130000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'rfc'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."rfc"]')
          ParentFont = False
        end
        object frxDBDPersonalcurp: TfrxMemoView
          Left = 325.039580000000000000
          Width = 79.370130000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'curp'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."curp"]')
          ParentFont = False
        end
        object frxDBDPersonalfechaalta: TfrxMemoView
          Left = 404.409710000000000000
          Width = 49.133890000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'fechaalta'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."fechaalta"]')
          ParentFont = False
        end
        object frxDBDPersonalFechaReingreso: TfrxMemoView
          Left = 453.543600000000000000
          Width = 49.133890000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'FechaReingreso'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."FechaReingreso"]')
          ParentFont = False
        end
        object frxDBDPersonalFechaBaja: TfrxMemoView
          Left = 502.677490000000000000
          Width = 49.133890000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          DisplayFormat.FormatStr = '%2.2m'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."FechaBaja"]')
          ParentFont = False
        end
        object frxDBDPersonalSalarioDiario: TfrxMemoView
          Left = 551.811380000000000000
          Width = 41.574830000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."SalarioDiario"]')
          ParentFont = False
        end
        object frxDBDPersonalSalarioIntegrado: TfrxMemoView
          Left = 593.386210000000000000
          Width = 41.574830000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'SalarioIntegrado'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."SalarioIntegrado"]')
          ParentFont = False
        end
        object frxDBDPersonalnumeroinfonavit: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'numeroinfonavit'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."numeroinfonavit"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 718.110700000000000000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."RegistroPatronal"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 771.024120000000000000
          Width = 124.724490000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."NombreOrganizacion"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 895.748610000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."TituloCargo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 34.015760240000000000
        Top = 196.535560000000000000
        Width = 980.410081999999900000
        Condition = 'frxDBDPersonal."IdTiponomina"'
        object Line2: TfrxLineView
          Top = 20.456709999999990000
          Width = 1148.977120000000000000
          Visible = False
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDPersonalTitulo: TfrxMemoView
          Left = 68.031540000000000000
          Top = 3.779529999999994000
          Width = 910.866730000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          DataField = 'Titulo'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibr'#237
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."Titulo"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibr'#237
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tipo N'#243'mina:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Empleado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 192.756030000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N.S.S.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 245.669450000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R.F.C.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 325.039580000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C.U.R.P.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Registro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Alta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 502.677490000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Baja')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'S.D.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 593.386210000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'S.D.I.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 634.961040000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Cred. Infonavit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 718.110700000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Reg. Pat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 771.024120000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Organizaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 895.748610000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Puesto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 45.354360000000000000
        Top = 287.244280000000000000
        Width = 980.410081999999900000
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 393.071120000000000000
        Width = 980.410081999999900000
      end
    end
  end
  object CdInasistenciaUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 912
    Top = 184
  end
  object CdTipoInasistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 248
  end
  object CdInasistencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 936
    Top = 264
  end
  object FrxPDFExportInfonavit: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 336
    Top = 184
  end
  object FrxReportGeneralExterno: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41966.614021064830000000
    ReportOptions.LastChange = 41966.614021064830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FrxReportGeneralGetValue
    Left = 264
    Top = 288
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object dsReporteHistorialGuardias: TfrxDBDataset
    UserName = 'dsReporteHistorialGuardias'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'TipoMovimiento=TipoMovimiento'
      'fechaalta=fechaalta'
      'Titulo=Titulo'
      'TituloSalario=TituloSalario'
      'FechaMovimiento=FechaMovimiento'
      'TituloTipoNomina=TituloTipoNomina'
      'TituloGuardia=TituloGuardia'
      'LeyendaGuardia=LeyendaGuardia'
      'NombreCompleto=NombreCompleto'
      'titulocargo=titulocargo'
      'IdPeriodosGuardia=IdPeriodosGuardia'
      'SalarioDiario=SalarioDiario'
      'SalarioIntegrado=SalarioIntegrado')
    DataSet = cdHistorialContratacion
    BCDToCurrency = False
    Left = 1104
    Top = 176
  end
  object frxReporteHistorialGuardias: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41137.595257256900000000
    ReportOptions.LastChange = 41905.574184236110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 184
    Top = 304
    Datasets = <
      item
        DataSet = dsReporteHistorialGuardias
        DataSetName = 'dsReporteHistorialGuardias'
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
      HGuides.Strings = (
        '7.55906')
      object PageFooter1: TfrxPageFooter
        Height = 45.354360000000000000
        Top = 468.661720000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Left = 5.559060000000000000
          Top = 3.000000000000000000
          Width = 139.842610000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Center = True
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Top = 120.944960000000000000
          Width = 740.787880000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          Frame.Width = 3.000000000000000000
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 158.740260000000000000
          Top = 57.569573340000010000
          Width = 577.596166670000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 158.740260000000000000
          Top = 90.805813340000000000
          Width = 577.596166670000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 158.740260000000000000
          Top = 2.779530000000001000
          Width = 578.929500000000000000
          Height = 36.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Historial de Contrataciones')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Top = 58.472480000000000000
          Width = 577.596166670000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSetName = 'frConfiguracion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'de Guardias del Personal')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 56.692950000000010000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        Condition = 'dsReporteHistorialGuardias."IdPeriodosGuardia"'
        object dsReporteHistorialGuardiasLeyendaGuardia: TfrxMemoView
          Left = 134.519790000000000000
          Top = 10.000000000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15719113
          DataField = 'LeyendaGuardia'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."LeyendaGuardia"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 6.015770000000000000
          Top = 10.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15719113
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PERIODO DE GUARDIA:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 18.133890000000000000
          Top = 37.574830000000020000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MOVIMIENTO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 90.165430000000000000
          Top = 37.574830000000020000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'FECHA DE MOV.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 173.315090000000000000
          Top = 37.472480000000020000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NOMINA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 304.598640000000000000
          Top = 37.574830000000020000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SAL. INTEGRADO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 485.795610000000000000
          Top = 37.574830000000020000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TIPO DE NOMINA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 618.079160000000000000
          Top = 37.574830000000020000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'GUARDIA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 391.630180000000000000
          Top = 37.677180000000020000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'SALARIO DIARIO')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 75.590600000000000000
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        object dsReporteHistorialGuardiasNombreCompleto: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779529999999966000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."NombreCompleto"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779529999999966000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOMBRE:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 18.897650000000000000
          Top = 26.456709999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PUESTO:')
          ParentFont = False
        end
        object dsReporteHistorialGuardiastitulocargo: TfrxMemoView
          Left = 71.811070000000000000
          Top = 26.456709999999990000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'titulocargo'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."titulocargo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 18.897650000000000000
          Top = 49.133890000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA DE ALTA:')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasfechaalta1: TfrxMemoView
          Left = 113.385900000000000000
          Top = 49.133890000000010000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fechaalta'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."fechaalta"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        DataSet = dsReporteHistorialGuardias
        DataSetName = 'dsReporteHistorialGuardias'
        RowCount = 0
        object dsReporteHistorialGuardiasTipoMovimiento: TfrxMemoView
          Left = 17.897650000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TipoMovimiento'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."TipoMovimiento"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasfechaalta: TfrxMemoView
          Left = 89.708720000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."FechaMovimiento"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTitulo: TfrxMemoView
          Left = 172.874150000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Titulo'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."Titulo"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTituloSalario: TfrxMemoView
          Left = 304.732530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."SalarioIntegrado"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTituloTipoNomina: TfrxMemoView
          Left = 485.929500000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TituloTipoNomina'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."TituloTipoNomina"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasTituloGuardia: TfrxMemoView
          Left = 618.213050000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TituloGuardia'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."TituloGuardia"]')
          ParentFont = False
        end
        object dsReporteHistorialGuardiasSalarioDiario: TfrxMemoView
          Left = 391.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SalarioDiario'
          DataSet = dsReporteHistorialGuardias
          DataSetName = 'dsReporteHistorialGuardias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[dsReporteHistorialGuardias."SalarioDiario"]')
          ParentFont = False
        end
      end
    end
  end
  object cdHistorialContratacion: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 200
  end
  object dsHistorialContratacion: TDataSource
    DataSet = cdHistorialContratacion
    Left = 648
    Top = 96
  end
  object frxDBDPersonal: TfrxDBDataset
    UserName = 'frxDBDPersonal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Activo=Activo'
      'AMaterno=AMaterno'
      'APaterno=APaterno'
      'Calle=Calle'
      'CodigoPersonal=CodigoPersonal'
      'Colonia=Colonia'
      'Contacto=Contacto'
      'CP=CP'
      'curp=curp'
      'Estado=Estado'
      'fechaalta=fechaalta'
      'fechaReingreso=FechaReingreso'
      'fechaBaja=FechaBaja'
      'gruposanguineo=gruposanguineo'
      'IdPlazaDetalle=IdPlazaDetalle'
      'IdPersonal=IdPersonal'
      'Imagen=Imagen'
      'Municipio=Municipio'
      'Nombres=Nombres'
      'Numero=Numero'
      'numerosegurosocial=numerosegurosocial'
      'Pais=Pais'
      'rfc=rfc'
      'telefono=telefono'
      'TelefonoContacto=TelefonoContacto'
      'NombreCompleto=NombreCompleto'
      'CodigoCargo=CodigoCargo'
      'TituloCargo=TituloCargo'
      'CodigoDepartamento=CodigoDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'SalarioDiario=SalarioDiario'
      'SalarioIntegrado=SalarioIntegrado'
      'NombreOrganizacion=NombreOrganizacion'
      'sexo=sexo'
      'fechanacimiento=fechanacimiento'
      'fechareingreso=fechareingreso'
      'EstadoCivil=EstadoCivil'
      'infonavit=infonavit'
      'numeroinfonavit=numeroinfonavit'
      'aplicacionInfonavit=aplicacionInfonavit'
      'terminoInfonavit=terminoInfonavit'
      'factorInfonavit=factorInfonavit'
      'taplicacioninfonavit=taplicacioninfonavit'
      'Titulo=Titulo'
      'IdTiponomina=IdTiponomina'
      'RegistroPatronal=RegistroPatronal'
      'NombreOrganizacion=NombreOrganizacion'
      'TituloCargo=TituloCargo'
      'Titulo=Titulo')
    DataSource = dsPersonal
    BCDToCurrency = False
    Left = 1184
    Top = 248
  end
  object FrxCdDatosEmpresa: TfrxDBDataset
    UserName = 'FrxCdDatosEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'valor1=valor1'
      'valor2=valor2'
      'valor3=valor3'
      'valor4=valor4'
      'valor5=valor5'
      'valor6=valor6')
    DataSet = CdDatosEmpresa
    BCDToCurrency = False
    Left = 1184
    Top = 200
  end
  object FrxReportOtros: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41603.463195567100000000
    ReportOptions.LastChange = 42054.573140787030000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnDblClickObject = FrxReportOtrosDblClickObject
    OnGetValue = FrxReportOtrosGetValue
    OnReportPrint = 'no '
    Left = 184
    Top = 256
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = frxDBDPersonal
        DataSetName = 'frxDBDPersonal'
      end
      item
        DataSet = frxDBOrganizacion
        DataSetName = 'frxDBOrganizacion'
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
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 122
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 116.504020000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Picture1: TfrxPictureView
          Left = 600.945270000000000000
          Top = 29.000000000000000000
          Width = 136.063080000000000000
          Height = 83.149660000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 29.015745590000000000
          Width = 593.386210000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 49.133890000000000000
          Top = 72.370086060000010000
          Width = 151.181102360000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 49.133890000000000000
          Top = 92.488196300000000000
          Width = 151.181102360000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 257.008040000000000000
          Top = 52.251946540000010000
          Width = 151.181102360000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 257.008040000000000000
          Top = 72.370056770000010000
          Width = 151.181102360000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Top = 72.370086060000010000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
          Top = 92.488196300000000000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 211.653680000000000000
          Top = 52.251946540000010000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 211.653680000000000000
          Top = 72.370056770000010000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 49.133890000000000000
          Top = 52.251975830000010000
          Width = 151.181102360000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor6"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.251975830000010000
          Width = 45.354330710000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'R.F.C:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Width = 737.008350000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clBtnFace
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA DE BAJA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Top = 116.504020000000000000
          Width = 737.008320710000000000
          ShowHint = False
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 68.031540000000000000
        Top = 691.653990000000000000
        Width = 740.787880000000000000
        object MBajaP: TfrxMemoView
          Left = 16.606370000000000000
          Top = 22.677180000000020000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Cursor = crHandPoint
          TagStr = '[frxDBDPersonal."IdPersonal"]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'Autorizar registro de baja de Personal')
          ParentFont = False
        end
        object MFechaB: TfrxMemoView
          Left = 16.629921260000000000
          Top = 45.354359999999930000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Cursor = crHandPoint
          TagStr = '[frxDBDPersonal."IdPersonal"]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'Modificar la fecha de baja del Empleado')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 472.441250000000000000
        Top = 196.535560000000000000
        Width = 740.787880000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 110.590551180000000000
          Width = 733.228820000000000000
          Height = 15.118110240000000000
          GroupIndex = 1
          ShowHint = False
          BrushStyle = bsClear
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DATOS PERSONALES DEL TRABAJADOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 125.708661420000000000
          Width = 128.503937010000000000
          Height = 15.118110240000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = 15790320
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'CURP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 140.826771650000000000
          Width = 128.503937010000000000
          Height = 15.118110240000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = 15790320
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'RFC:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 155.944881890000000000
          Width = 128.503937010000000000
          Height = 15.118110240000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = 15790320
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'No. SEGURO SOCIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 404.409448820000000000
          Top = 125.708661420000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = 15790320
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'FECHA NACIMIENTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 404.409448820000000000
          Top = 140.826771650000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = 15790320
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'SEXO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 404.409448820000000000
          Top = 155.944881890000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = 15790320
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'ESTADO CIVIL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 186.181102360000000000
          Width = 733.228820000000000000
          Height = 15.118110240000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'SALARIO - CARGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 216.417322830000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'EMPRESA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 231.535433070000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'DEPARTAMENTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 3.779530000000000000
          Top = 246.653543310000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'PUESTO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 261.771653540000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'SALARIO DIARIO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 377.953000000000000000
          Top = 261.771653540000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'SALARIO INTEGRADO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 59.795299999999910000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'FECHA BAJA:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalcurp: TfrxMemoView
          Left = 132.283464570000000000
          Top = 125.708661420000000000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'curp'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."curp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalrfc: TfrxMemoView
          Left = 132.283464570000000000
          Top = 140.826771650000000000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'rfc'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."rfc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalnumerosegurosocial: TfrxMemoView
          Left = 132.283464570000000000
          Top = 155.944881890000000000
          Width = 272.126160000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'numerosegurosocial'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."numerosegurosocial"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalNombreOrganizacion: TfrxMemoView
          Left = 113.385900000000000000
          Top = 216.417322830000000000
          Width = 623.622450000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'NombreOrganizacion'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalTituloDepartamento: TfrxMemoView
          Left = 113.385900000000000000
          Top = 231.535433070000000000
          Width = 623.622450000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'TituloDepartamento'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."TituloDepartamento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalTituloCargo: TfrxMemoView
          Left = 113.385900000000000000
          Top = 246.653543310000000000
          Width = 623.622450000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'TituloCargo'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."TituloCargo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalNombreCompleto: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.779529999999990000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."NombreCompleto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalsexo: TfrxMemoView
          Left = 532.913730000000000000
          Top = 140.826771650000000000
          Width = 204.094620000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'sexo'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."sexo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalfechanacimiento: TfrxMemoView
          Left = 532.913730000000000000
          Top = 125.708661420000000000
          Width = 204.094620000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'fechanacimiento'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."fechanacimiento"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 132.283550000000000000
          Top = 59.795299999999910000
          Width = 604.724800000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[FECHABAJA]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalSalarioDiario: TfrxMemoView
          Left = 113.385900000000000000
          Top = 261.771653540000000000
          Width = 264.567100000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'SalarioDiario'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."SalarioDiario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalSalarioIntegrado: TfrxMemoView
          Left = 502.677490000000000000
          Top = 261.771653540000000000
          Width = 234.330860000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'SalarioIntegrado'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."SalarioIntegrado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 201.299212600000000000
          Width = 109.606370000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'INGRESO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalfechareingreso: TfrxMemoView
          Left = 113.385900000000000000
          Top = 201.299212600000000000
          Width = 623.622450000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'fechareingreso'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."fechareingreso"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDPersonalEstadoCivil: TfrxMemoView
          Left = 532.913730000000000000
          Top = 155.944881890000000000
          Width = 204.094620000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'EstadoCivil'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."EstadoCivil"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 3.779530000000000000
          Top = 74.913419999999880000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'TIPO FINIQUITO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 132.283550000000000000
          Top = 74.913419999999880000
          Width = 604.724800000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[TipoFiniquito]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object CdBuscar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1032
    Top = 248
  end
  object cxStyleReposStatusPersonal: TcxStyleRepository
    Left = 160
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxstylPersonalEspecial: TcxStyle
      AssignedValues = [svColor]
      Color = 12910591
    end
    object cxstylPersonalBaja: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      TextColor = 204
    end
    object cxstylBajaEspecial: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12910591
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      TextColor = 204
    end
  end
  object DxPopMenuPersonal: TdxRibbonPopupMenu
    BarManager = DxBManagerMain
    ItemLinks = <
      item
        Visible = True
        ItemName = 'DxBarBtnEditar'
      end
      item
        Visible = True
        ItemName = 'DxBarBtnInasistencia'
      end
      item
        Visible = True
        ItemName = 'DxBarBtnGenerarBaja'
      end
      item
        Visible = True
        ItemName = 'DxBarBtnEliminarRegistro'
      end
      item
        Visible = True
        ItemName = 'DxBarBtnModificarFechaBaja'
      end
      item
        Visible = True
        ItemName = 'DxBarBtnModificarContratacion'
      end
      item
        Visible = True
        ItemName = 'DxBarBtnDetalladoNomina'
      end>
    Ribbon = DxRibbonPersonal
    UseOwnFont = False
    Left = 208
    Top = 192
  end
  object frxDBOrganizacion: TfrxDBDataset
    UserName = 'frxDBOrganizacion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigoorganizacion=codigoorganizacion'
      'nombreorganizacion=nombreorganizacion'
      'tituloorganizacion=tituloorganizacion'
      'descripcion=descripcion'
      'comentarios=comentarios'
      'telefono1=telefono1'
      'telefono2=telefono2'
      'telefono3=telefono3'
      'telefono4=telefono4'
      'telefono5=telefono5'
      'rfc=rfc'
      'codigopadre=codigopadre')
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 1184
    Top = 152
  end
  object CdBaja: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1000
    Top = 264
  end
  object CdPersonalImss: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 992
    Top = 200
  end
  object FrxDesignerInfonavit: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 688
    Top = 216
  end
  object FrxDialogCtrlsControles: TfrxDialogControls
    Left = 696
    Top = 288
  end
  object cdTipoNomina: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 790
    Top = 272
  end
  object cdDepartamento: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 790
    Top = 216
  end
  object cdSalario: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 734
    Top = 296
  end
  object cdCargo: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 742
    Top = 112
  end
  object cdOrganizacion: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 654
    Top = 344
  end
  object cdRangoSalario: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 790
    Top = 168
  end
  object cdImss: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    Top = 248
  end
  object cdGuardias: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ReadOnly = True
    RemoteServer = ClientModule1.DSProviderConnection1
    Left = 726
    Top = 192
  end
  object FrxCdDescuentosInfonavit: TfrxDBDataset
    UserName = 'FrxCdDescuentosInfonavit'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'CodigoPersonal=CodigoPersonal'
      'NumeroSeguroSocial=NumeroSeguroSocial'
      'Curp=Curp'
      'rfc=rfc'
      'Telefono=Telefono'
      'Correo=Correo'
      'NombreCompleto=NombreCompleto'
      'Infonavit=Infonavit'
      'NumeroInfonavit=NumeroINfonavit'
      'AplicacionInfonavit=AplicacionInfonavit'
      'TerminoInfonavit=TerminoInfonavit'
      'tAplicacionInfonavit=tAplicacionInfonavit'
      'FactorInfonavit=FactorInfonavit'
      'NumeroSeguroSocial=NumeroSeguroSocial'
      'IdNomina=IdNomina'
      'FechaNomina=FechaNomina'
      'FechaTerminoNomina=FechaTerminoNomina'
      'Titulo=Titulo'
      'AnioTermino=AnioTermino'
      'FechaPagoNomina=FechaPagoNomina'
      'IdTipoNomina=IdTipoNomina'
      'TituloNomina=TituloNomina'
      'Importe=Importe')
    DataSet = CdDescuentosInfonavit
    BCDToCurrency = False
    Left = 1104
    Top = 240
  end
  object CdDescuentosInfonavit: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 344
  end
  object FrxReportDescuentos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41981.393938935200000000
    ReportOptions.LastChange = 41982.367219814810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnDblClickObject = FrxReportOtrosDblClickObject
    OnGetValue = FrxReportOtrosGetValue
    OnReportPrint = 'no '
    Left = 280
    Top = 336
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = FrxCdDescuentosInfonavit
        DataSetName = 'FrxCdDescuentosInfonavit'
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
      object ReportTitle1: TfrxReportTitle
        Height = 114.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = -7.559060000000000000
          Top = 0.779530000000001200
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
            'INFONAVIT')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 7.559060000000000000
          Top = 27.795300000000000000
          Width = 105.826840000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Center = True
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000001C40000
            012908060000000D8552430000000467414D410000B18F0BFC61050000000970
            4859730000589400005894010B2AD5370000001C74455874536F667477617265
            0041646F62652046697265776F726B732043533406B2D3A00000C16649444154
            78DAEC5D075C1447DB9FABBB7B80BD6B8CC61A7B2F895D63AFA814451145B180
            202A62418A82057BC706080262EF2526F6D84BEC2589B125F6CADDEEDEEEED7D
            F3EC4162BE3791530EE654FEBFF8EA8BEEEECCEECC3CFDFF28502EEC1266B359
            6B7EF9BA011B398D353D7EF6B5BA4ECDE9A63B774A4AD76E22E9E123243D7E8C
            9052F9CF8B2409291C1C90F2CB2F90EACB2F91BA764DA42851F4ACE9DACD50CA
            B9FB3355E58A97150A451AE9B9E522171F0BF03E7434FFF9A88E3E68DC4B4591
            62DF294B958A32DDBCA9957EBD8DA43FFE40D2F31708A954FFBC08F661BE7C78
            0F9646CAB2A591BA4E6DA4C8E3B445BC746D2E3364A0A02C55E22CDE8746D273
            CBC5FF4291362638C0217ADA22FC8144D283F9DC81375F09C3D4E9A5154E0EAD
            C5D3E7AB2828CACD74FDBAD274EF3E4226E97F056066C01B1329F07F850B2375
            A58AF80F8A3DCA8A154EA90A1638A11DE87155E594F70EE939E70221F1FACD11
            D2A3470A6DF3A68B488F2517F23EFC929BBBB08A89E31A49D76E34C467633BD3
            F51BC8F4C79F963DF521FB50A544CA62C590AA5205C92C08299A5AB5AEE29FFF
            C04C187B17DFFF0FD273FEDC81BFB94A3F76BC9FE2799D46664DB56A6B1CE357
            F8E00FC3911ED8E7061059E6077F7AB3336697359BC46EE2A93365CD7A3D637E
            F90A494F9E826689140C93A567988D0242AF5F2385A303168E8510A228495DAD
            EAEF48ABD9C9787BFDA66EDC301E7FFB17A4DFC5E708E1D8F110C3FC2511E8E5
            0BA4F5EA1FCAB8BB44901ED3E7087C20E6172F5CF4E457C47E65E6B84EC29973
            65902828CD8F9F20E9CD1BA470CA831434252B98C8FC410F40661E1B856FF03E
            2C581029F2E6C5F7746055D5AADEC6FB70AB6E5CE06D65D9AF562A3FECEEB9C8
            02F0B7A7D3FA7BC70857AEF4573C2D50D2AC2C8A2D8806F5373AC52D1F90EB52
            CB19E08FF085B06F7F67E3D19F3CA54B571A8A57AF23F3AB5796BFC3024C41D3
            0869D4F246927F6515A0D59A4C086F76FC671552809B87D2227585724855B9D2
            1575F3A61BA85E3DD6E1EF7F8DF4BBF95C60FCE14034B778F918E3EEBDC8AC50
            204DA3FA88EADD7316336CF058D263FB5C80F7E1D7FC862DAEE2F9F3BD4C172E
            55355DB92AEF1133EC3951B428A3B0576CB10F150ACB2F7C5F788642A391FFBF
            C2C909A9601F56AB7A52DBBA65BCA66DEB1D781FDE23FD6E3E07804BFCCD8021
            71E2A9D33DA5474F90E259A9F266B3D18894F9F2224D837ABB75D323FBAB4A95
            784A7AA09F2AF00770305DBDE6CDA76E0A14BEFFA1B478FB0E3E198D7873A82D
            420B7EC1A6B18510FC3764DC1BDC38301E78B64A8D14C58B224D936F1E6ABB76
            5CA1FDAECD6ABC217F27FDAE3E55807B46F8F1E02276F682A1C2D163D8727794
            BFBB394D8F54552A23BA7F9F65B48FB72FFE0626D263FD5481BF4119E1D84F03
            F94DDB060B3F1E2A263DFC139BEB26A4D05A84548EEE43B01EC18B839FAD2EF3
            2552376B729772ED39475DBBD64ABC06F4A4DFD5A70AD3FD3F0A198227AE114E
            9DE920BD7C85BFBDD62210E12FCD3C2F2764A81B353C428D18EA4A376DFC27E9
            017F6A106FDE6CCEAD880F14CF9EEB2AFE7C1129E0CD33B465739006FEFEB006
            D455ABE043B9CA094DD7F633B5DDBA6EC975E1D816F820A68C3BF7C4B23366BB
            0B67CE2265FEFC7FC7A4E0607CF506A9CA7F85286FAF6466C4102F7C20F2A4C7
            FC29014214A623C7BAF35BB607E1F7DFC874E1A27C1022F8457A1F82804CB74E
            5535AB2355D5AADB18D75E73344DBF3944FABD7D6AE08E1C2FCE2F5EB64E3C71
            B2A959AF470A8A927FFE974084C5209BF13483D40DEA5EA0BA7474A107F4BB45
            7AE09F02F002AFCECE9ADF45BC7429D2B8F70764361890328F93E520CC2E0DF4
            7D917118602BC58C2535568C90BA42F9E5BAC8D0B54A47A7C3A487F72900E254
            7CCA860476DE824EA68B9791A250A1FFFDFE0AA5EC3A577D510A69FBBAEED48D
            1FDB2F37BE6B1BE0F7DFCC1016D957BC7C7908B60AB17434CB31FAF4BF243D3C
            0BD22D47396E495348D3A409780D263A44846CC7EBE012E9E17D0AE0E2122AF0
            DB77A58AA7CED63273AC253C95FEFDFF16880038A059D6125BAA55F3376DE7F6
            BD99A143CE919EC0C70CE9F9CB8E5CCC8A187E6D4A29708F2A1D1D1082E0BC49
            223DB47F871C6B14654B4599370FD2F4E8FA4ADBBE6D10D5B9C372D243FB9881
            0FE362DCCAD8F5DCE2E54DC49B3791B2706139A6FBAF5061A1F8E22552162F86
            B4BD7B1E719832D9051F860F49CFE16386F8F3A5215CEA86997C624A5EE9C913
            8B650EB141C98EF7A12060C1988695A3928872E9799FF2F4F0517F557617E9A1
            7DCC60972DAF63DCB167BD78E1E7AF102439418CF8AD35F04F8128FF04C9BE74
            B35A8534D5AAFE4175EBEC4C0F1B7C92F4443E364892A4E013925C8DBBF62E16
            0F1F2B0081748811D89555F85FC8886F88781D4826A4AE5655D034F966822E7C
            D2C25C17DEFB030BC392DC92E51BD998550DA5BBF790C2C931F33500DFC080B5
            D782F9B152D2EDA4E3F4293DF1BB7F407A2E1F23D8453163F9DD7B23C5536734
            0A257EAFE9C92C1FC53E84C35AC067875A095E9BE7DAEFDA8CA07C06AE532A95
            763E78FB03B77445437EEB8E4DC2E52B2514F86C431AD5FF0484FE572066203D
            E0ABAA5EED31D5A3B33B33CCE747D213FA58800FC06AC2FE1F030D93C2FB8837
            6E520A9DEEFD6B97EC0572BA380FA9E2123DD47B972EC0176A56F7921ED6C702
            BC16CAE1037933B760517528E27EEF121A6C25208A42945BCF4B4C60400F55B1
            A2BF929ED3C70278F786D1C13EC61F0F8D31DDBBAFB0944DD841BCFE4380CF62
            33C723E517A578DDC4B14954EF9E73F03EBC4C7A581F0BD8A531ADF8CD3B924D
            972E17F92B61EA5FF0DF021160CAB010AABDD6346DECE11016B29DF4C4EC1D78
            13D6E35352930CD1F32A986FFE8250DE3C1FEF267C7B5E6FD290B27041C4F8FB
            3EA77D8742794EEE5AC804782DD465E72CDCC42E58521AE2825007FADE80B503
            610C7C986B7BF5BCABF31FEEAC2A5BE62CE9B9D93B2493E8CC2D5E3E875BB0F8
            4BE9E9334B26EF2700F3CB974855A102628247DFA25C7AF6C2FBF022E931D93B
            F46153BA08478E278A972FE7512855FFCB2CF416DE2D10336A664CD852FCBA12
            ABF9B6D170C7A88838D213B457E003B00017B3F22776D1B24AD2AD5F6586184B
            21EF27E0DD80A4AB97AFE4839919EDAFC78271A892A113490FCB5E6116845686
            A85929ECF25585913E4DAE35FBE07500EF1E84A25A8DB45D3B3F617C87B9696A
            54CDF5D8FC07F03E2CCFCE5970819DBBC0014A59B2F4EEED09E98AB5190B7865
            C9E288193FF6213DD0B30F168A07480FCD5E913661F200E1D88925A66B371885
            4A29EFA177AD85770BC40C80A528085833292F699B7D1BE030237221E989DA1B
            F02654A68D1C33DDB87BEF58F3530BC30C64B17D52805A3960BCC173A39CBB5D
            A28383DAA88B15794C7A58F606E9C9D3CE6CF4DCF55C6C3C6D164D16EBC40645
            DDB2509424A4EDD481A3870CECAD6DFAED0ED273B537E07D98376DD0D018E1C0
            2157F3CBD70841BCD65E13673E14B00FF119A32CF715DE873D36E9C226B8E652
            6FFE2FF4E326FA190F1F9B67BAF58B5226417887659801EB0422209D7A4855B6
            0CC2966290E3BCE868D213B61740A135B7246601B7227638F08E66956ACDAE91
            5E9E03094254CFEE3B1CE7CFF6C49BF139E961D90BA43FFF74314C9B15CBAD4D
            D129401B85FA365B5927191E1BBC0FB56D5A1AE8A143BCB4AD9AA5929EB3BD00
            3C3486A8996BF855F19D24705143ECFE53B00CFF0DB00FA17CAB407EC4F8782F
            A647FBFBE71239FC8DB480B163B16538D374FB77A4A0ACAF31B55E20CAFFDAF2
            1154A54B2375E306339D96CC1F477AE2A401D43FC2D19F161942223CA1C817C9
            96E127A691FE7F80868A85A2B24001A40B1C79801AEC0505E49F3D51B8F1ECF9
            21DCB2958BF8E4751A459E3C167A3C5B1FC8B007617DBD4943EA16CD04BAAFAB
            2FEDDAEBB32F8901426E7EE3E658C394E92DA57B0F2CF1DACF601F22BD1EA9BE
            AE8C74E121F19A56CD7D73A937F1D618EE3F433C7E2AC874F7EE7B2B45EF2710
            0170739E47CA922590A65183458E318BFC48BF0092C087600F6EEE824DC6EDBB
            2DE9F49F0BE0604E4B93996D280FB789CCD0C151A4874412C2B90BA3B8054BE6
            F05BB65B48A0C145939DB45FE9BCB49A6F1A228D9B6BA0CEC36D2EE9774012C6
            BDDF4F30CC5B1429FE744226CEFEE485E15B30A7BD419A962D10DDBFAF33D5A3
            EB66D2E32189B411810B85A3C77CA5070FE4ECECF74D687C7F819801C128774E
            D0346A18EBB862C9D0CFB1BF17D64A9BE88326ADE756C61693CD7270917D4E00
            373A168ADA562DF58E8BE70C53962891407A482460BAF073983E2A3AD4B8EF87
            7F92B26727328422D0EDD5AE89E801FDC3690FB730D2EF8204CC46633FFDB091
            4BB9D44D0EB252FAB196387D2824508E8C8872EBF5D071F68CDE0A863E4A7A48
            390DE81F6B983167993125D54BBAFF8785FCE403F0E1021136BC11CBC08205B0
            96DA78ABD3AAA51E9F93B90E9C945CCCCA35DCD2152EA6FB0F3EED78C5BB0084
            031A2DD276ED78DA71D1DC0E780D3C233DA49C84F1C499D9ECB49940D48E2D93
            3C9966B1D91CA094BC7E8DD475EB20666CC01CAA5387D1A4DF494E428E1B4E9D
            BE875FBDA6BEA43758C8B93F438062A42C5A04517DDC5275E3C7787E4EADFC20
            6CC5CE5998C827247533DDB963398B3FB0D4EDC305A27CB525F30DBA436B1AD6
            3FC08406BB6A2A567A42FA05E504F803877BB2D3A253C433E7D40A7B21E82601
            39C98645CAD2A511D5AD73A0C3E4099F85EB0E6F42B5B0FFC718C3ACF9038543
            4790122B86445888D2D94CA02446D3E41BC48CF15FAD69D3CAE773C93AE4B76C
            1BCFCE9C1B25DEB8F96927B3650AAC18B15828D6AC2632DE5E9D993EAE9F0579
            06DE87850D5133D7F16BD7B5043729C4EEB3B207B32610E53B40A20D2BC7CF34
            F5EA9CA3067976A73AB4FBA47B7981759836D02749F8FE80336866B279FE395A
            877FBF1024BD7881056297A70E53C307A9CA95D9467A48D93B5D33654CDD9860
            58B8B4B778F20CD6CC0BC9A4DCC4D6804C432621E9F153A46E500FE9FC86ADD7
            BAF4ECF7A9D3ECB1FB7F2821C4ACDE2D1E3E5AC30CEF5F9D795AFD270B997253
            44E6376F103DDCE79E6E466457A5527181F4B0B213D818FBC21011B5855BB7B1
            8E046528F9F266B9D42DEB0251BE0BFE1A32512A0DF18CF374FFBE2E9473B75F
            48BFB0EC827EFEA22EC6751BB79A2E5F51C801FCCF59180240297AFD0641A369
            6642D06EDAD3038A855F921E5676000B43273E695D02BB68593768262B6BA4F6
            C08B993E06709FAAAA56418CEFD0AD541F57108A6F48BFB3EC425A44549071E3
            E619D29D7B9F4EF17D5600D9DFCF5FE0EFFF3572880859A269DB26007F7F81F4
            B0B203929E2D6F98149ACA6FD9511B416375479D4DEABE6D23103300417EFC51
            D4756BDDD0B66EDD4BE73FFC93E3DA63F7EEA58C6BD71F1176EDA92F2750E4C2
            029512497F3E4474EF5E881E39BC96A661BD9F490FC9D6C0C2B0381FBF36C530
            7B5E3308DCCBA9FDF67608CBD9BF7AA42C5502E946071CA63CFBBAE143F193EB
            6DCA1F3C5A949BBFF0A4F0E3812F15797295D2BF00DFFFC54B44FB0C444CA07F
            3155C9128F480FC9D610AF5EAF6658BA6283B0714B25A01655D830A3DBB60211
            94546CB62B4028D6AAF950F35D9B9EBA51237E22F5E2B203DCDAE4C1EC92E5CB
            4DD76EC80D957337E25B805477FCED69979ED374B3A7877C4A85C24014CDAF8C
            4F65E72DAC63BA7F3FCBB18A6C856CB1634BB15429C404F89DA3BC3DA17DD427
            430A8EBF05CDC727CE6467CDF793FEC4B2FE734D68FB3780A7C068448A7C7979
            66848F0F3372443CE921D912C68B97BEE197AEDC68DCBABD982C6B6C1CAEB2AD
            4094EFA8B030F4E383119BEE2FB46DDBF4D58D1DB53BA75F5C76C06C96CA1826
            456CE556C6D6403249EC6796DE9D19208E6130204DCBE6AF1C664DEBA02A53E6
            38E921D902F800AEC5CE5B9CCC2D5B5E597AF8C8BE856106D285A2B25851440F
            1D729D0918E18E85E2271153E29253F31B376F3D2D1C3E56EEB32B75B2069064
            857F512E3D2F3A464FEBA6A0B4BF931E922D209E39D3815DBC7CAD71CFF7F9A1
            355D76E46ED85E20CA774DA798C21F4553B50AA76EFAAD8743F8A48D39F5E2B2
            0BE2E5AB9D0D1151DB8DDB76224591C29F55F1AF55505ABABDABAB5541F428BF
            10BA97F354D243CA2AB0306CC84E9B95C2C6AC2C039D063E0A61988174A10859
            E08C8FF7EFCCF831E03EFDE87B9BB2B109EEDC82C52B4DF7EEEBE4CCD28FE57B
            E414F03E949E3D43DA562D20EBB88BB679B38F9EF316B2FAB915AB1385BDFB69
            B9A7E55B5DEE6D89EC1188F29D157F938257AAC46BDBB4F071089BF4D19AEFF8
            60D4F0ABE297E9C3A70E84EE1FD942CBF589004A71A83EAEFB1C17CC86A48E8F
            96FCDBAC37B432CC9C1DCF2D5B550AD6F1474907064A0A747CD068B0A538E8BE
            2E68B4A7C241F7D176CA00DEE0D7DD7A4F355DBD1E0CF3CA1112848F1266B94B
            916EB4FF6A66B4FFD08F39B9C6B86FBF27B76C658CF1C0210A51345ECBD9F7CD
            B34F20CA7707DE45A88F312075F97266BA5FDF00C66FE8826C7B5E3602EACE0C
            13C35E1B162E6594F9F37D7C07634E01B4D3A74F11E5DC1DE92604555157A97C
            8DF4903E04D2BDFBDD0CF397C4732B63F3825B0E0B1159C1FB288195372CDC65
            AF0DEDEDF54AE73FDC53F945A9ADA487F521101F3E2C6D1835EEB071FBCE2F15
            50FB69CADD87FF0AD887AF5E23669027EB307B7A9E8FB52E954B5A37925F9B3C
            4F38785421135F64B32192BD02517E427AE130CB2175BDDA88727399C00CEC3F
            2D5B9F990D10EFDC2DF3DAD9ED8CF9CF87053F3B6AA8F7052C588D86A7BA77ED
            E8386FE647678D488F1EF7D34F99B6845FB7C11102A30A1DF3F10AC30C805034
            B0082C07CAB5579A43C8F8E1CAA2453E3AAA3D6ECDDAB6ECA2A57BA5DFEF2204
            7489B9C6E17F03EF4345FE7CCF9CE256D6D3D4ABFD3BE9E1BC2FD8D56BC6F329
            A951A6536710D239587236B2D91B90FD0231035023C5F1485DF56B440DF088A6
            BDFA0763ADE5A351EFF81F0F26190283DDA4C78F15B9023113586AE2CCCCC811
            677541A3EA931ECEFBC0F4E08F118690F059FCF65D34644BDBB47D1369A46720
            CA09175D3A72BA29A16354254B2C263DACF701BF61D3A9B480A07AC892C2958B
            77017F6765E142665D58480AD5A34B1FD2C3B116D05B968B5D339D8F4B1C2B5E
            BE8A6426B01C6281CA39816899AAECBA817625F420CF65F4404FDF8F25353F6D
            A85FACF1E09101C004F1D9D2B4BD0F20CBB872A59FF2EDDBFE2DE9A1580BF1D7
            DB630D115151C62DDBD5B28BF453557CC06383F7A1B67B17513779C20475B9B2
            1F4D6FD3B4A1234FF2BB7637F8E49A6F6707C0427474009EDBB83C49715EA487
            63DD90CD2A6E75FC226E55FC50D3B5EB96D2B61C440E0B440BC0B7ADAE5C01D1
            1E7D92E891C38760A1A8CFE931BC0F80AAEBD5372D524DF71E74253D968F06F2
            6674BC94FFFA85E6F8FBBE203D9C774192248578ECF8546ED1B209FCB61D72FB
            205B16FBDA1D20B62F08724630D5B533A27D8746A9BF6D3C49A954DAFD849F97
            AF76C4CC714D488FE36382B248916DF9CE1E73B1772A3F7CCE3A700B962CE712
            93FA88D76F2125C40C7318392F10D329A6A497AF90AA6C5944F571D9A60B1EED
            65CF5DD7F187727EE3832DC44D5BF3BC4FF7E5CF1AF8C055D7AC21EA664F0BD7
            54AF66B7E517D03646F8E1E00C76FEE20061DF7EA428903FE73B5690404669D4
            F31748D3B60D62FC47CCD3B46E31CE9EDBB8894F9EB47CD3B147A274FF410939
            B92217EF0684A98C02D276E9F8DA69D552386337911ED27F0FD55CC0307D762C
            9F94DAD574FBB6859794002522110B3143A0C8FC97258A22ADABCB5E87D00903
            F0077B98E363B102E28D9BAE86C953561B0F1ED629E0B0CC158899C36442CA0A
            E5113364E014DAC37D32E9E1FC1BC0F217F6EE5FC4CE9CE32D9C3C0DEC1E643A
            5690C2DB9D321AD647CCB8D1AB346D5BFBDA6BEB20E3F193D3D988A871E2B90B
            9606CCB97837601DE37DA86AD4C0A00B0E1CA86DD4681DE921FDFB30CDC5F4E1
            9171C675EBDB497F00F185D3DFE3CF6190118819801A29BD5E26E6A5FBB89ED4
            454C7255A83577888DE73FC06DD8ECCCAD581D67FAF99293AC99E60AC4CC2107
            F40B4B9AA6DF843A2E9A6B7716A24CD2BD79FB4A76E66C17D3956B48913FEB4C
            F91F2D94C07FF94A2685668246A7523DBA78DB232938BB74C5242E312942FAED
            7745AE856825402096FBEA8DB673C701BAE0D17667219A45E14BC3E4A9EBB8A4
            9486E63769969821C19236B2021120A7831B9042E780A85EDD2F3111A1EE2A07
            E60AD131FD3FE803837B1A8F1E8B93EEDD77CCDD8856026B77CABC79CDAA1AD5
            42F3A4AC99427A38FF1C9AB9289FBA29969DB3A083E9EA358B9BF4632FABC82A
            601F42A7842A58288E1AB99B727506179B5D1143A78D1E1722FC78285C7A949B
            E96D3540312D5A244D5DBBD600A7D5CBEC8A2DCCA467ABB293C393F90D5BAA9B
            0D7A4B635FC2FB50F1AC643933718B47EEA98885A28323C29ACC2DDDD4499EAA
            0205ED860733CD7B784FE1ECF938E9D123C7DC8D682520A9C6C9C9ACAA542134
            EFD6F5762310B1302C8DADFD35DCB295CD4DB77E91136872F13720D14655A13C
            A27DBC0FD14306F6C742F12EE93165E0B58B4788E9F2D570E9D52B05F133EB63
            0108C4E2C5D2340DEA0D705CBAC06E04A2E9F9B3C6864953E38D3B765530EBD3
            2CC29074A802CEAC6785BF30CB568F5643D66524775EE7E5EC3E6D970E7798B0
            499EEAE2C50E917D4316A40DF3EF299C3A1D27FDF9305720BE0FB0F4412629B4
            E0C3DB762110F1702AF2CB6313D8F98B1A98EE3FF83B564112B0EE216C00B169
            888BD9410C1362FBAA2F4A2266A4EF296A8817D0EFDD24FD9A00AFFB7A85982E
            5C0C975EBECC1588D6E22F81581F0BC4F9762110C53F1F3667C3B030DCBEFB4B
            991291748375E046350AB275AA78EDEEC90B878F68211B4926CA254949068783
            110B459384349D3B3E66FC870FD2D4AE459C983657207E20D46AB342C78416B8
            7A9EB840C4C2B03AB768D93A43F4BCAFCD2F5F20BB68EC0C6ECA67CF91B25205
            A47470803E6FB2624A9C2717F621B61415F9F223DD98806BB4DF50572C142F91
            7D595820BA7B86982E5EC20231D742B41A76261085F3173AB3F397AC1276EC2A
            62562991424B5A182A65EE65D877DA664D8D0AE3E52BDFF14B962F346EDC5AC9
            0C12524793B5146180D852441C87B49DDABFA1FABB0FA63AB4279A1D95E63D2C
            DD65FA3857205A0B49A68D32AB6BD508CDB33696A840C4C2F01B36726632BB78
            5969D9359F2F1FF158051CE8D2D367726710DDD4B07DA6DBBFC7F349EB1699AE
            5DCF2FD74092168A20ACA1BB874E87981143EF321383A07D14D1DEA66F3C0686
            88E77F0E975E600B51992B10AD428640AC5B7780E3F285440522BF7B8F2BBF26
            798571E71E27E856215B86240D3048263370B202AAEDD9F50635DCC74F5E5526
            BDA1320437B150AC258166E8E8485C6ACB145358286A9A37E5E84103FCA9AE9D
            96931A0EBB60B133BF716B9CE9E62DA7DCA41A2B014935F9F29A55B56B85E649
            5C4D4C209A45B1837E5278021FBFB6A099632DED9B480A43B90B8C84A4E7CF90
            A64963A48B98BC53D3B891271636CFB8D9F35AF3FBF6278997AE16910F0AD2E4
            002014A17D14CD20CAB3EF3387A9A1FD146A35B1DEA6EC8C5993B84D5BC3A5BB
            F795B9FBD04A80402C59224DD3A8E100C785B38909447EDBCE21DCAAB8F9C2A1
            23B4025A37012522696F645A1A24FE6161D8ED02DE87EE4A0787EB7FA959D011
            DC30312C994BDD58DFFCE4895C0A411472E1B00999791EA9EBD71598E14382A8
            6E9DE791188AF1FB1F7A19E62D8E339D3DE7905B766125F0A1AF2C514CD2B66B
            3BD9212A2C92C410A4E72FBA1BA64C8FE59253F329242C0429C2EE998C62F827
            5818766A877493C76F54D7A93DE46D520A76D6BC6F8C070F6E12CF5F2A8A04D1
            12DB27091833DE8366A50AD1EE2E2F7521C15ECA02F9B790180A3E9B42B1951F
            2ADDFC25B7ECC25A40D945B5AA6FE841FD3D693797CD2486C06FDD11C02E593E
            533C7D56A3803DA826DF3A0F283815850B23DAA5E7695D6418783F7E859FFFE3
            64C742B1383E40D6F2EBD6B794FEF893BCA5288F100F314D8FD4756B9BA92183
            426817E71C3F5CA5B437EE7AFFB1B1FCF65D94ECCECA15889903FA60D6AA8E98
            318133A8EF5A05E7F4E34DBFDFEB6398337F259F98C22868AD7DF092E2C3497A
            F11251CE5D113D26205E53BBD6887FA32DE4D724D6E0376DDB249EBB500E1442
            BB201887027ECE88280F375617E8EFAD2AF345524E0F41BC773F4A3F3C60BC78
            F294E59DE4E2DD00A61ABC0FB56D5BF3BAE8286F75F1E289393D042E75D3447E
            F9AA29E2D9730A6427F244B60C4B1447946BEF0358C1EB8BF7E09F7FFDF5FFBE
            43735E43F4DC043E31B98B74FF0F4B1F38D293800F8B253A168A88F6F498ADED
            DF776C4EF22E82A2F0B249EB44E9B7DBAD7235532B812D2175CDEA06C7F54941
            AA3C4E39DA5141B8786938BB64C502E3DA1495EC9EA1ECE0F004F7D09B34A4E9
            D903E9A6862C50952C39EA5DDD5EB8948D658DEB376E124F9FA925198D962C54
            D2E02D610C6D5F3713337CF0484D8DEA4B72F2F19025FCA276E36DE6C78F2BD9
            858263EFC81088DD3A3F725ABE184A68F6E5D4A3811FD8189F18CDAD593B5A3C
            7BDEE271246D48C819DD06A42C55022B76EEDB7563474106F5AB7FFC937F7F8F
            66C6306B5E8C3139B59FE9CE5D4BF629015EB97F0034547CA0A8AB57435AB75E
            CB18BF6101394956FBB245FB78D3BD7BFD21D987F887FD28A040CAC2054FE53B
            77BC794E528189E77F0E36CC5918C56FDDA650C2BA256D5D65B45CC2BFA89E3D
            CCBA2993A72B8A1699688D4227ECD85D845DB336553C73B6B9DCE097345D59FA
            5C24964554B7AE66DD28BF89EA3A3573B4B7E9CBF65D8F9BAE5E6F94DBA0DB4A
            60454AF545A9E4BC87BFEF9F534D828112915DB8749E3165FD50F1D2152C0C1D
            C97A68D265176493AABE2C8DB47D5C1274A3037CF0FB60FFE79FFED73D40C273
            F3172FE4D66F1A215DBA6C4953272D1491A5705859BE1CA2FBF75DCB04F842FC
            C59013CF352C8ED9C22D5BD10DD83C720562E6C0DF05695D7A5E719C3DBD5A4E
            3D53B87123CA302962BC71EB0EA404F619D281FB8C946E2C44E8419E66267462
            B02A6FDE99EF730BF1CAD5FC86A93392B1506C27E1B527372B26B905D313DEA0
            638D1648C18302A769BF6D3421A71ECFCE9A7FD9306F61557B388BEC1E50688E
            F701EDD57F8B2E70648F9C79A459C7CE5BB41C5B867DA55F7E430A021D2BFE81
            0C610872031B53746FE7C5B4FF08BFFF5248333DD90D31AB66191393470B67CE
            590E19D285C3902A8B37A3B204367BFBF5D9A11B3F06CCDE97D9FD58E1C743CD
            5E0F1EBE031F064EB91B31135848A3CD8E33A6EEA33CDCDB67F7E3A0A1A878F3
            E65C3672E648E3FACD162A36E2EB140BC3343D3EC1594407FA999831FE2355F9
            0B7C908B11CFCF316DC0E044E38953DD202187781823A3630D74CA68D114E902
            0316685A371F95130DBF0D51D1FDD9A5312BF11F354415838F0190E95DB488C9
            317EE5324DF5AABED9FF38733EC3B459097C425267E98F3F2CC29030D90B28C4
            F23AAD5707693DDC67EB7C068D79E725D6DC974BD938898B8D9B229E3865215F
            B5871A29280F295A1424FE61DD94C97DF0667C90DD8F7DDDD3FDB1F1F0D1C272
            5C2A5728FE3BC04FCF724855A9A240B939D7D7F98DF8393B1F27B76F3A716A15
            3B778187710BB60CF19A904D28D285ED7ABD2C147541817A6694AF8F42A35D9B
            C5796AD27CFC62849F4E78497F3EB47411270DD8874F9E20F5378D103DC22791
            EADE755076B78F3224269514366CF955387088924B6872F7E1BF03D6206F449A
            86F55EE4D9B6A10CFE2EAFB3F371787D963484442471EB3735333F7A64F12812
            2F6F32C9FB50DDA801B6920784D06E3D336D3260B5EF8FDBB435808F5D334738
            724C210B04D241FEF4434759A810D2F4E872D671FAD49EF8A3675BA70CF08B1B
            22A276B1F317B7929582DC8DF8EF50582C786DC776979C92E35A2B14CA27D9F5
            285918FE7422998D9EEB2CECFB1129F2E521AFACA5CF1F68E1983101AF19FF11
            5063689332050863E8FD46CF158FFEE46F020D3C83EA8D246477D46B39E18D19
            367893D6B5977B760A45FCCDCBEA478EDEC6AD5E534D51B0005997B83D233D81
            84F270DBEFB460F677D9F928FC4DCAA4054FDA206CDE5E577AFA14D9C5F908E5
            4D50C7DEF45B33E5D53F9076EE6655C99E824D488EA23DDCA65A138BE376ED1D
            C8AF8A5B2A1C3EAA95E9A548170E038C78EFE10FA075EE7649173ABEB72A4FDE
            1BD9F528C38C39DD8C3B766D112F5EC11A9053EE66FCFF90AD4316983190B669
            9330C725F3C2B3EB51E09E114E9E4ED64F8E686F3A711A291C1DC80B07983F14
            B217298C9840FF27CC506F48E9FEDED68F49F30D08C35671A874F7BE650F928E
            698350C487AFAA6279C48CF6DF43B9F474CFCE30867E527828BF635718CC5FFE
            EEB9FBF09F90DDF5694859BE3CD2B66CD6DD71C6D4ADD9F528D3ABD795D829D3
            D6F31BB75447E015215D0E037B411010B0AE699A35315283060CA33BB65B9DD9
            659048CA25A684289E376C66A6BA74DCAC9B386EA0358B182FC41E5CD2BAB5C2
            9EFD0CA4B3CB5A2AE105092E3A0570D1B9F7FA0D6BA9BDD5152A9ECB8EE748AF
            5ED77CE3DA2F49387EB28A4C0C4D5A19B037C804ED1CC42D9E384C9F3290EADC
            315B7868A10C46387464A33E38A4B178E167A42C5890BC5080430802F75819D0
            4D0CBE8F35F35E783F9DB4723ECE6651404A8DD6EA7E756981E3C68AC78ECF34
            FDFA1B021A2C7B80F4F2255295F912E982461FA7FAB9F77CBBBECB96106FFDDA
            39CD6BC86AF1CAB5C2B240CCDD87FF44BA75A8AA55E3AAE3CAC57D345F7D952D
            610BF1D6CD3AEC9295EB8DC9EBBF9249BA49BBF1610FE271407990A67D1B96EE
            E3DA179F41999211C8B1CFC819ABF8EDBB9C154F9D0A9B55A54B234D5F97BD0E
            E383ACEA5A6F3C72BC03B76255BC71E7DEC20ACA0E7817E5F651AC3C0E6D8FCE
            8F98A143DC34B56B1ECC8E47B1ABE2D6B37317F6921E3EB294A3E46EC6BF61B6
            C4EE280FF75F28E7EED5348DEADBBC2C062FDECAC6ED3B371AC2A3AA8897AF22
            25B6C6FE7A3629C046C496A12C0CC3265EA55C7A8130B86ECDA5525A9A173B73
            CE6AF3D3178819397CA0AA7285586B1FAB0F9E3454387C6CB1E9D62F4A998587
            24D21512F38B9772C21B3372D8557A848FD5EFE17D209C39476165E0B261C69C
            F2C82CA1DCDAE0B7901EC357162C8098E1433630FE237A67C76384F33FB76097
            2D4F316EDE5154EE12A1237C1666C40C7901693BB57D420FF6F6D4366D9C29CD
            203E4F8AE9A7CD8C13D6A6B633DDBD8B14CFBEA860866C3870F350EEBD0E3B84
            4E02A1783BB31B8997AF7C6398B77883B063777184B55B445A3880BB0C0B4533
            DE20DAF6DFBD61FC86F7D3346A60535701C470CCB77FEFAA1F37690BBF671F52
            16C88D61FC05100AD8425057AD8298C9E303B4EDDB2EC2EBC8A65175BC786B73
            F1899BB0002963FAF53658A27F096122C848E986C6BAD5AB20DDA4F1A7B49D3B
            B859B37F00D2EBD78186A899D1DCE2E54A641211E5D25BA203468CD5D4AA31C7
            DA21E8274F71331E3C9C60BA7E5DAD50A9C90B07FC7CE9F973CB81ECE3FD3B13
            3CC619BF8FF3B67C045E072AF1D4195FFDC4B0795830CA671771B2767B01EC43
            AC94685A35430E11A13D94D5AB6EB535898970E2543776E19204E39EEF9D140A
            7CEEEAC87749826C6EA4D6204DE70E7FEA0246F45257AB9A2911BD1C8F0E9F1A
            C7276F68667EFC4476BF2B9E952A6FFE07D1A96BAF33BAC9133D940E4CA6B138
            F1E6AD7AEC82255BF88D5B4B22705BE67124FF6204119BCDD8646ED982A7877B
            F7A35AB55C6FCB47E097E8C02D5CBA9E9D33BF83F426CD1240FEDC8562BADF1E
            7E516EBD6FEA664E6DAE7470CCD4D3F03EC0EFBD01B73A7E03B60ABE9017AF13
            611AA88C94EE878F90BA7103E43021E884A643BB1ED6785800A6C74F420DD3A2
            C3F8356B914590292D2C301DDA22DD84A030BCA1AD8EBFEA23A675170F1D8E17
            2E5DC9231F505AC2B17DE844A167E5BD410DF2BC8715A45E4A85E2942D1F019A
            BD2124E210B7647945B35A8514A4796AED01E9BCB3E02DA0BCFAED76080FE9FD
            6FD4805901FFE381DEDC929509C281839442A34548A3266E08995FA761838C46
            54CF6E0F9891C3BBAB2B563893D965929EAD6488884C34AEDB50EFED86161681
            987163B014690A697BF5B8EA3079621F65A10299FA9ECDA258096B6A1BF8D48D
            D5E452087BC830421601AF69D154A4870C1A4E756CB7C2967737FDF26B7D7D78
            D45E3E75537E65E18284E76A0FB0F4CF53D7A96964FC860DA07A3927DBF2EEF8
            F06BC32D5BB1D61039A308A492CBB10A92F54D964121E9E973A4C59A3813326E
            BFA67163D7B749BADF05F1B7DB730D536704F089C972CDA4229D81061201CCD8
            BAD2B6FD0E31E302E769BF6D3CCADAE1B0D366B6341EFE2945B8F073117963DB
            4316382849F83B3143063E66460CEBAB2C5E64BF2D1F211C3FE96E088F8AC516
            32A52C5CC80ECE1D3B00B60ED56D5ABE608246B5D37EFBCD695BDE9ADFB57730
            B77CD512E1E011B52C404817826634D7C6861CE5D2F3B24364582FBCEE3337E4
            9E3EAFC946442619376CAE2237A57F2B31EB6F810880BA222C481458EA6BBA74
            7AC004FABB6BBEAE7424B307C8A4E061911BF9B5C98D81BC588EAD918664B6D4
            A034FD16D1AEBD47D1FDDC6CD629035C36FCEA8418C39CF983A47BF72DE9FEA4
            0F685200AF2116524AAC2D6AC1E51E3D0D5C64CF6C757B483861172C496067CE
            D1C98BDFC90E92998046F0E54BA469DB06E9A2C237AABFAEEC698D268EE7A236
            DDB8B9D010397D289FB401290B15B4F0AC667818C0ED2F8A729F446DABE68809
            1CB94CF35D6B3F6B29B7D85571758D5BB6A50A672F7EA59044FB288D02CF119E
            17EDD5DFC0F88FE8A72C51CCEAC4212BDE670176D1D23DDCD215F5A5478FEDE3
            DC21850C2F5FE1C28819EABD8A1EE5E763CB9005979012C0AD5B3F573C72CC62
            F4D8413F4A39A33D7F3E44F5753FAE0B9B6855129770ED465376CEFC6461FBCE
            926641B458866FB9DBFF291001B029A1DD8B4289B4ED5A3FA67DBCFB6BBF69B4
            37D3C199CDF90D53A6A7F029EBDB42B1AE5D04F941E3C61B12580A282F8F08BA
            8F5BA8AD6E8FE7DBC4103A65371BB3DA515E1A1A3B205F2681748E406D8776C8
            2174E20055C5F2F136BBB52479B151D1CBD845CBB466234FDEFB90B1A60C0688
            53235D44C80A55850AD0B142C8FC3599B5E2F1137186E9B3DC857D07B06598CF
            22B0FEBFBB3D232E09199BB56B22C6DF3799EAD97D80B5B57DC60D9BAAB06B92
            52C59F2F5595DD6776211459F977DAA59791091E3354F54549AB138732838963
            ABA575EEB549B878A9C267DD8906EAEEF05AA23CDCD31C674FEF80D7CB515BDD
            9A4B4A09E7631327035B99EC9D219D4409C06B1BDA37516EBDF7E94282216EFF
            22B34B8C3F9D68C7C5AC5C23ECFDA1889C8C45FD6F83E2FF1588F24F2D1B5FEE
            58D0A6D50B5DD0A8C19A5A35336D2E89373DCD4E8B5EC7A56EE82AFD76C742DD
            43FAC5419C0748C16B5443B4B7D73CC6AB9FD56EA84C5FF0A1C3230D93A7CE14
            CFFF4CC965189F21642DAD6811133372C432AC99DA8C1E0ADFD74F3F256A01B7
            28463ED4890BC30C0E4FBC9668F7DE88091A35475DB1E268ABE66236E7154E9C
            4C30844576118F1E470AACD566CAC5995ED3A8FABA32C2EF763BE5DEFB7F98F9
            FF0BFCD6ED5FF1F16BB708E72F54B7844108332BA5C7B624030BFDE710336EF4
            4875A50A0B6D757B76F59A495CCC8A30D3CD5F54F23AF90C01D6A1BACAD73C33
            616C10D5B9E3025BDD978D4D98CBAD8C0D102F5E464AD224DD8074E20BE5575F
            8282B58D193FD6D59AE601C2859F7B1A66CE5D21EEFF31BFAC24FE8750FF7781
            980193A541AFA6750B033D68800FD5BE6DA6FDB464A1386FE12A63624A1FE1C6
            2D39DB8C38854F3AB9ABAA4A6520055F490FF7196E8D566F0DF8E4F5DB0CD366
            7531DDBF87143A1DB9799200D41E5134A27C065ED14D08AA652B367DD3C34713
            D819B322B915D890C0EF9478C2041C0278AE1033A4BD3D111DE01BA5A95471A2
            3597E2FD5042387234513F796A4BD3B90BEFA724CA09036F90AA5C59C404F81D
            A03CDC3CF03BFEC39A4B8D7BF797E456C5A688A7CF3581D669F01E8927BC41C3
            6F2CE4B5DD3A41ADE24475AD1A51B6B83558DFDCCAB8735819AF2A41C8877471
            780E43EEE250A2B8AC38D183BDBADAE49E66B3865B12B3845BB3D6DB74F5BA7D
            3477800CE667CF91A65205A4F5704BC27B629035C290DFB3CF835B151723FC70
            50279F25EFC8C47EB740CCE8F06D30204DF3662235C06334EDDC2D53ED03C896
            B998550BB8F8B523C44B58B3C867072F131F2E900EAE824E196EBD37612DB59F
            2D3A65E0B996D74F088DE5D7AC6D221F38A4D3DE7310A02C695BB7BCE73037DA
            5955BC68A6995DD640BC7A75263B67E158BC762CCA14E98E15E964033057C6C7
            1BE9268E1B8DD7B3556511786D5430EEFD3EC5103AB58EF8F3254BCCF0439E0F
            B57D5F9646F428DF73CCA001E01EBA65D5F3EF3EC89B36313451387EA2B3F4E2
            1552307610C6904CF2A1A66DF71DA2870F89A6DA7D17648B5B9B78A19E7EC4C8
            14E3961DE52031F0B341FADEA07AF538E5307F163023FD92D55BCA1D2B66CC4E
            E052D63B9B7EF9957C79590699FCCB5772FB3FDAB3EF62DA67D0486BC8E4B94D
            5B47F27189B3854387D5B2C1A27E7756ECBB0562C660A09441AF479AC60D10E5
            D57F22EDEE629566C725264FC39A5BB078EEBCC5E5A5269CA20B87CB9B34A42A
            5D12697B3AEFD24D1E0F87CB9BACDE5632704EFA5163EEF21B37E7536829FBF0
            B16717322C6E7CC06A3BB543BAD0F1B3D455AB8ECDEA6DE58E15376ECEE7A645
            FBF29BB7616BDB817C4AB7ECB64CC3CA1442B4DF3093C384205F054D2FB3723E
            358C5BB7AFD54F995E4D020D1B843B84B73E643A781C7018A8A0E0DD77E865DA
            D7070EBE8B568EC3216DD0B095C2F1936ED29327166B9B649C2DBD5C45CE026F
            F22DA27C872EA2DA7FE76F8B4E19C6EF7FACC9AD5E73DEB863A7424EBEFAD4F7
            A14942123E97194F0F5117193A54E9E4B42AABB7C5EBC5C910312DC5B8715347
            D3DD07F651DE245AE48FBA4E6D447B0F984E7BB88FB7E6522E3975021FBB2652
            389EDE94C28AF3247381F8F79BB234E8AD5D03517DDDA631430659D5038D4D58
            17CC27254F138F9FFC3B204B1A90BA5F203FA2DC5C0EE8C22680507C9CD55B9A
            6EFFEE6F88889AC56FD8A296DBF390B66CB2031987D98B1748D3B001622606CF
            D7B6691190D5DB829BDD74EDDA72FDC4F07EC28F072D995FA4DB37A52B4FE06A
            D48DF2639931FE83F13AB1AA6305D44CF26B92520C53A695953B5340CCD016E3
            79FD06291D1D10ED3BEC36133C1AD6AD55B57D72A78CA1BE8BC5E3A7074B7FFE
            69599BA4934FD2F94FD5B56B225DF098044DDBD643B2DA481A88334C3F5F9A87
            2DF291C2FE1F90225F7EB9BEF393138AE9F16C880F6BBB761475E383C6A8AB57
            9D9FD5DBE27552C4101695C2A7A4B694FBBE5276E07A4E4F8C54376E88A83EEE
            E3997EAED3ADB98C5DBE2A8A5F9B325E3C7FD122D4AD5CEFD60B4480CC82F002
            A9AA55855E8431F4F021C39456E8BCDCFA4D7E7C62F23CE1E011A52C2C880766
            914CF526D7AFB8B95E70889CEC6C2DBBC8BB60BA7D67803E78E212E3AEBD0C72
            7094F9553F19A198210CC16DD1A801A2860C0C635C7B6599BC1B6FC23CA6CB97
            D7E8C7877533EE3F809405F3933FACDF12860E13C7BEA287FB80F0D963E57C9A
            73ABE2D61AC2A34ACA75B9F9F3DB2E860EC5FB4006A1D1207AA8F7035DD824B0
            140F597BF99B110173C49F4E8C32DD7B60514EED4050803B585DAB26D45D6ED5
            76E9D8DF166D8A8CC74E841A22A787E1F3464ECB27AE5CD91270061B057CE2EB
            91A6552B56372660B8E6DB467159BDADCCDA323162139FB2AE96BC6E4937A206
            C0798395264D8BA612E5E11E40F776CE34110B9FB60A6EC9F2A57C42928FE9F2
            15CBFE7B8F33F8FD04A27C051C166F90AA62052CB15DD732FE23065A9312CE1F
            3CDC9F5BB074B970E8306517F54272DD8E416ED343F5ECF61B337E4C0F55E1C2
            56B9A1DE05E399B33DD9B90B570BBBF6E6814E04C413426CF4AE64B7057E5F9A
            268D1135D80B62C956D38BFD174023157E38B0CE3063760BE1F0314B8C8DF4E1
            954150EEE484E8F163FE64BCBD40181EB6723EDDD9D90B56B2731714848D2C27
            D0D83AA12CA35618FF4EF5EFF38C1EE5EFAD2E59DCEAF65269BEA34284E3A722
            A47BF72C69E7A4DD61E98D86D555BF46BA00BF83DA3E2EAEB6F0D8709BB606F2
            2BE2660B478FA6BBCBECA0338F0DDE9719BAFB6081A8E9D0F63513E03750DBA0
            6EA6D9FF99C1F4E4490D76DAACCDFCC6AD5F811742E148B801753A205948D3BC
            194F8F1C36846AD16C4DA6FFDE6CD6B2F317AFE693D6F535DDBCF54135CBEF2F
            10331E0E6CEA5F7E8185A2DB26666CC0006B6271C603879DB9981589C6FD0719
            05B832C07543FAF083626F7C3068BB7579C80C1FDC5D5DA3BA551D0ADE05E1CA
            B5F6DCBC4571C65D7B8ACA2D516456878F147068713C2C36A469F6ADC00CF6F2
            D57668B73CABB7C5F7FBC2B873D77AC3D4990DC5B3E72D24DDF6200C2156F745
            49C40405DEA13C3DBAE3757DC1CAF97818A6CF5ACC2D5A9A4766BFC84E4A3FB0
            12A0C65032431DD66B87C9E347280B17CA34033C036981E30285233F459B7EBF
            AD94E9B748C6DA1496C0AAF9E973A4FCAA0C62460C3D490F1B0C9463F7B27A6B
            7EE79E21FCDAE445C61F0E6A40A153303A44DEECC9020C0664A62944B56FF788
            1EED3F4053F56BABBC16EF8278F1524376C98A2DC6ADDB8BC19A225EDE04EB01
            DCC1260969DBB460699FC11EDA96CD32257380D8271B3D2F8E4F4A7136DDB987
            644FE4873CFE4305A23C0860462859022CC57DBA0941EED6505709274F776017
            2F4F1076ED2E080F56D8413AB8BC10F0EF9A8E1D1E322387B9DBA2538664929A
            7133E724F1EBD69734FD7E279DDDE12373DDC85D440CB2A6A5EDD49ED5766CEF
            4D756A9F94D5DB42F625BF6D7B8A212CB28EE92664B1E527BF092171E5E123A4
            AA5401625ABFE0350D6EF44B56CD272D6D887ED6DCB9DCD2553A0514FCE654DA
            3FF47D1344440FEC6F70089B384AE1E868B5A2A20F0EF1311E3E3A4FBA798B96
            AD27BB48787B8315A32288F6F539C7F80DB73A9BF65D30FDF25B1F3666C54AE3
            96ED0C94CDC8345D808F651F66842AA0DEB7583144F5E8FA40D3CBB98FB6760D
            ABBC16EF82DCB162C1D2647C1617038597B8370B143D386FF01FF159FC8C1931
            A49FA6617D6B3A56143044CD4CC696615BE9C11F961C840F449604E25F7441F9
            F3216D5FF7530E1121BDACD1EC84CB571A734B56A418376C2E6DB693D6216693
            88106B44DA0EDFBDA0FA7B7852EDDB6CCFEA6DF187AAC32E5F19CC2F8FED2DF7
            ADC30B4EF12FEC087607589858A346697ABC098B028DDF0E87094131CA82F9B3
            DCDF103A56F08929A9FA88C8F2324937D4371155882CFF036351D5AC0EEC3367
            B5EDBEEB6D75C78A3769630C53A7CDE0962C5742C7979CAE81935D6858A1A387
            7A4BBA49E3C7299D1C67597BAD2172A69BB0FFC7E5C2E5CB4E48A5410A35E184
            375877E0B1C1961C564C7F61C68E72B145A70C33CF7666672DF0E1D6AEEB2CDD
            C5C79393A35DF471B5EA7DC0F7E578A4FCA214A23C3DD6EB468F9C8EDF4996FB
            BDF27BF677E1D724C61B777F9F1F315A0BC13CE93318F23AA0855FAF1E77E9E1
            83DD34D5AA1ECFEC32F034E9274FD9605C9BDC40A60D75CC5A566CD60422406E
            FBF34A8E97502EBD6E614BB10B3E38332558353DFCB3063B73DE3A3E756365D0
            7E88C7153332B7B0C6AD69D392C716C240BA5BE72C5B43006ECDDAFEC289D3B1
            C65D7B949094247F34D28923FF0559C9D1CB7CB6EA664D90B6599308DA6F58B8
            2DD2E2F1E26DC1C52524B2D3669594B92721C646FA504A27E9D634A88B749161
            3F6A9A7E0B31ACA7995D06198DD2A387E1ECF4D9217CCC6A84A0750C096F47BA
            560DCA0BE5331031C1A3A7288B160BB5B6E50FBB6049677EDBCED5A6CB572C8D
            254953BDA50B45A47340CC10AF07BA49C140467030ABB7956BA357C6851A0F1E
            9E2CFE7000FDE51EB45740162EC48AF33A216D9BD692BA7E3D2F66D8E04CE368
            D680DBBAA30FB6A6560BFB0F50B0CFED21233E4306502E3DAF334101AEAA62C5
            33CDE7909EBDA8842DC3ED7CEA860AC05EA3C89775E53AEB0251BE8BE2AF0969
            BB74FA959930D6455DAA64A65A0C163E15F4132627F39BB6D645AF5E91EFFC9D
            DEC608AC56F5378D4466B0D748AA73C7A5B6B8B5F4F2752B3E21711C9FBAA9A9
            E9FA0D0694187931CA5A3961D2828CA419B092451352952D8334CD9A1EC15AFA
            52FC679B74AEC007525776FEE255F8002E647EF65C4E6622EEB6324BC8FC0608
            E0BF41BA90E0ED9A860DACA24703926EE9D6AD99FAA93347F1EB362225CC8526
            E86E4A8FF34AAFDF20CAB527729814345759A14290D5A4E08B625A1A77EC8C13
            2F5D292D2701C9F55A64A692311FD975062D7DFAF579E2101E32085BDE59F6D8
            004C8F9FB8738B638662E5F41BD3AFBFAA11B68CE4CE2076E032965F3AB0F900
            03944A29272E6ADAB7DD4B7B0F98A92A5AF4475B3C86DFB16B18BB227681F8D3
            0935586376916CC4710841C6BF73B7B30E5111EEF85CCCD4552EDE7F50878D8A
            4E356EDF59EE2F83CA06F3B08D404C07B8D964FF6F978E77750123DCD555AD6A
            D2585A3F312CD9B869CB37B2D5009941A4AD06B9F68505A10885A0E368E7EE33
            6DF27ECC6695F0D3C9667CCAFAC9A65BB75A007B09D21B640DED2FB7714E2E4E
            D81060158346CEE890AA647198F3236CE96FD034FD66822D52E0D3E7ED6298B3
            60393B6B5E5E58FC59756B6419B0484DE9F5941DDB23DD9880F5EA460D3CACC9
            96966B266FDC986F089D3284DFB607290B022FA91DC486E58C4D096BCD2F11D5
            15CF293C64B9AA52257F6B6BFBD8C5CB1A1B77EE59235EBA5C1EB2181169D7FE
            DBA4E0FDFABC62C2260D51E5714AB5C5ADF137A4B884A4EEE2F193A1E2E5AB5F
            9B6EDCB23498C57B904848033287E1F958A941D86A8564456DDBD6BF519E7DE3
            D4E5CA4DB1D563B84D5B82B0953C030B438B00215D130EDE00881B172D82B4CE
            DD7F72880C833C94BB995D265E919BD3270BDB779596F3506CE8D5B0A940FCAB
            512CD674B41DDB3FD70CF1EA4D376A94A966831768514378541CBF6E437BE9E1
            438B2B4D24CB7F0ACCF1086BDCEAFA751135B07F24E3E13EC956B7877659C61D
            BB9C8513A77DF0E2AC0E29F0A6C7161691BF8898B38BEA2EC3550B2E99A74F65
            D794AA6279A469D4E096BA46F5B59457BF2D785166DA07D35A98DEA479730B16
            2F6467CEA5A18E4E1686A4151E2CC0A0238BC6B93B62C6FAAFD0D4AA39DC1A6B
            0A6A2685D36756B053A6B9083F1CB2B0CF80566F2FF91919F150E07B6CDD1C31
            21E35335F5EB0DB656B1E196AFAACAEFDC9B2C9E3D5FDD2C0A967828C96FA5B4
            B48F0241812D458E1935C24F5DA1C24A5BDD1E7FCF2A5CC25A57F1CC0577F1EC
            D90AD2BD3F647A47A59383DC7DFDAD7F68DB79BD1D2EC1CA373008290B1542AA
            4A1591FADBC697D4756A2DC5D6D24E6B8483B5601393A7F2ABD74C144F9F4528
            8F93DC928BA812A7565948BA2151C8B5D71E5DE804A8547894D965DC8913AD84
            E5B1EBB1856FA17EB2B1856B5B8128DF313D6D165B8BDA8E6DF5F4A0015EDA16
            CD33ED5A8F17A7233B6BEE6A2E7E6D6F090A8749BBD4FE6265798954B56AE00D
            E9B690F619EC6F6D6CC61A40D76FE1C7435D8DFBBEAF2A9EFBB9ABF9D1A332B2
            60CCB01433349FF42CC80F7CC8DF0216DCA272F3588D7CD8681AD647AAAA55CE
            AA1BD4DBACEDD43E112FC83BB67C85A6E74F47B133E6CE62172C51427C2D5B4B
            11AC41864B5C762DF642CCA471B3D5E5BE1A63DD6B3417168E1E8F33444EEF28
            1E3E6629F8B5D330B02CA3B1F5AB6EF62DD24D0CDEA569D2180E9B27D65CCA6F
            DB55964B484C124F9E6904F5987691790896D31BD91D2CD1BEC3C668EAD5996B
            D3D7653697357EBFBFB771DDA6F2A67BF7DCA43B779D608DC8097FF00F320EDD
            F7DD876F53F5BDEDFD11C5BFE606FB42DDE41BA4AE5C69AFBA419D4D9AD6ADB6
            E16FF5D0567383583717B3623E9F90E267BA70D1C29A445A1866B02E7D511278
            49D7336346412D7B5A6697190F1EEACDAD8A8B35EEDAE7205B85D950B6677B81
            983E61B9A72214907ED74AC0A6FF50BA73C7D5995D06BC8BECC2A50BF935495E
            A61B372C9622497754066F27741CF8BA12D2BAF45AA50BF41B66AB4E196F433C
            72BC8094F6DAC778F28CBBE9C4C992F8302A0029C4195C9A10EB900534F8DBE1
            9DC89B1359B2C314966EEB9626C5963804083C708B80A5ABC0FF1FD2CD95258A
            23C4D06F545F94BAA36ED9FC7B75ED5A2BD5D5AAFC694D2FB1F785E9C9D31043
            7864389F90A44019962F516BC3927C02AE297A800762C68D0D57972E1566CDA5
            90C926ECFF718D212ABA8578F2F4DFED9BEC1932DFEC4BA4C64A8F6EC2D8839A
            36ADFA5B5BDB271E38548A5DBE3A563875A68DD91E62FB19DD46F47AA46DD7D6
            AC0B1E1DAAA95BDB66AEC4B761DCBEA3389250307FE0502BD3F51B5FA2B43427
            E9FE1F72DDB51CEF073723C4F9782EDDE5A8B0EC35B9961359E2F0F271659639
            A0E11AD93D09421094D13C7990B27871BC1FB4CF55356B3CD0D4A8B656DDBCD9
            462C1C1E5A2314DE0740D96798B370A93175C320D3B51B16238364938574B73E
            5886AA4A9580582296F11BE6674D736D6EC7AE817CFCDA65C2F73F6A6406B06C
            52D4B247206640A6DE6191E6DB4688F619348AEAD639D3AEF5F011D99895B38C
            892923C59F2FCA0BC82E341A7C9842CD25DDAF0FD66802BC6D155FFB8F77D058
            FCF1507DC3A2A579D4952BBA4B8F1E51C2F98B223EE09C9405F297904B2240F8
            C1FB85026D1822F00E2A55162189178BECF2E5B8DF5435AA99D4152B2AC40B97
            92A9AE1D9E518306FC8AC79EE5F289FF0268A4D8D29DA90F0E1963DCB2C35220
            4B9A64399D80010E256C619874A3478E55162C68959581BFC557C63DFB920C93
            A734345DBE2673E0DAAD65F83F83C7FF3D07AAC5AFA19CE4A4B67DDB3EF8DBFF
            66CDA5C2D9F385B9F98B570B274F77969E3EB383D22824AF7999CA0B5B544C48
            F02C2CEC83ACA18EFCE0D7673677E6D7A694E353361654D7A9E96EBA794B215E
            BC246045BFB8326FDEBCD0B45A7EBA0402D2127E962D6AB0FCF09A0325503272
            30EEEB9A0675D5CA22458CE2F55BC9CCA001AF359DDA9DC6FF26D3B2822C8C3D
            0F3B6BDE4A2E21A9B75C9BA723CC3E93E1717BFD1AA96BD680F64D0B181FEF31
            D61817FCD61D015CCCAAB9C2B113F83C61B295FA337B05A21C8BB368AAD02983
            F6EC3399EEEF91A966077C7458AB99825FC244D399730839D941F3DDF400B002
            FA8EF5EBB3871937BABFB56EA8AC002F6CE819A47BD36F8051329A0A336E2EAE
            D283FBF9A437696638E44D972EE3D3CB842DD88A7251B319BF7355D5AF950A2D
            F5804F5997E4383FDAA870CCA3C4637D900363D58A377E99CF464E1F6A848E15
            B2854F9A9714786B21AF4442BAC0913CEDEF3B42E9E8685557003C9FEAC60D9B
            53F4A111554CBFFD8E94458B92EDEDF921801E728F1E21D557659043F8E4ABDA
            5E3DDCAC261C309B9DDE780F5F269E38D907EA3411E946C300584FC026848522
            B67C9761E1E86F4D32545681DF4549F3EB978AD7AD3BF3AA96CD2B6A1B35EC6E
            FAED371AAF07B3F4F831325DBB8990468554D5ABC9A101257E57AA6AD5940A49
            BCA19F363D25EFC11FA027158BC7FA2C07C65A989D317B0D9B90D4DEFCC79FF6
            91A80800CACF7A75C0388AD4BAF40AB18A077B4D6208179F142177ACC89F0F29
            94D96BE166AF40949FA0F867A70C779719583308B6E6526ED3B6203E6645A470
            FA9C5AD650ED00321141B1A248EBD2F3984378483F5B90827F0A80AEF0E299B3
            4BD9E8B9EEC6AD3B2D9614E92C36805140668D1A31A3FC5E62CB708842A1CC34
            9E9D3E9F46DCEAF88DECB45925A4070F90A27061FB38543E044A4B1211783898
            F163FEA0070EE889D7ED092BDF83563FD46F81F1D8091F38F8EDA2F96E863BB8
            5103688795ACEDD1759835E5329F036492EED02909C6D48DDF02F35256585B6C
            3A2E038B34F5EB8894CFE089B47357ABB2F6D99895D3F9E4D471FFE85891CD0A
            59F60B44F929E9E6327E29408D45F5715BCAF80D05DF71A6EA36B775BB1F17B3
            3A5A3C798A923723E97A21842C85EBD03EAA578F33BA1953FB61F3EB3AD10111
            0658B1C2E9B32BD8F0A93D84FD072DC290F477525A7A192AF2E54378AD3D6102
            470EB4D6558CE7F31DBB3426919DB3B088F9D94BBB213BCE123208170AE6474C
            A0DF6366980F94997C6FE5FB50A60DF59B219C383546028B037A7E66B3A69ED9
            5C64F7299082D7AE8968FFE19B29979E8373C2FAB26748667365C3B84909FC86
            CDF5E0DDFC4553470A19897C4623C4B2796C198EA5BB75C9B4630594A7B10B97
            2DE493528641498C6C0CE550D82C6704E2DB930552F0F25F21CAC33D8919397C
            90357552FCCE7DFDB9D8D825C2FE030E0A8A4688D6CA7564C4001A371C2EF843
            697B76BFAC0B09EEA72A54C82A12E84F0D5042221C3C1CAF0F89F80E52BA9585
            0B911E929C8004252550DF440705FEC1F80C024BDEAAC266994060EE8238C39C
            45F9A1368D78ECCC9648A7C7028A395DA0EF0B66D448C83EDD66EDE569230226
            194F9E9962FEED362467D9456C1FCA2434E5CA217ADCE8EFA93E2E9E783E7F92
            1B1039989E3EAD6598323DC1B8714B359902CD917046377887A02900CF01F397
            9EF61A309CEAD4CE9A8E1534BB60C92A3E31B98FE997DF3E98A4FB4391E30251
            D61ADEBC46CA2FBE80DAA2DDCCD85110E87F99D965C68387BBB32B57C70ADB77
            E7435828CA4924A4D3C181320BCF87EAD5FD2EE53DD05D5BB776A644049F12F0
            E22D63DCB5679D2124A28178F50652162944DEAD88BF0B2481805BDB616AE82D
            CADD058A7DCF5A351FC9E46E983D7F1537670103147EB662BFB02B64B04A69D4
            880E1CC9EA46FB0F52285556B311A58D0E0E108E1D9F63BA750B2F7C46665421
            FA8EA0A81D6A078B1707B7F8297AA83750EFFD4E6E40390FE3D9F3DFF02B5727
            F31BB694963359EDA46102541A68BA747CC9787B79695B34CBB445193E4FF2B1
            D17393F884A40E727B32A73C39BEB6C80844644640C42A13D6BAF63AEC103AD1
            C59AA24CE1FA8DEFD859F3E38CDB7796800FAE201DE4070D196AA4A03EB47DDB
            47F4089F01DA06F5B2DC92E563005EBC35B9751B13D999B3AB49D07B0C8AD449
            5AED19E382C3B14205E410117241DBB51334D0BD6ACD75D8D218C60281C0BCC5
            2A58A3C4D974B213E9A4FC303F266084891939C24F59A080D514856921110385
            838797986EDCA2644270D20DBF4128BE7A25273D313EDE97E951BE1EB62497B0
            67184F9D69CF2D8E8913F6EC2B2AA7A8D076C03004A561784D505D3A3DA0C7F8
            7B692A57CAD4350FE42CFAF0C8547EDD8666D2BDFB96C6CE04282D735E206620
            83B6071FA4DA5ECEC71D4226F4513830BF677699E9FE1F4D0C5133D7F0DB7694
            55C8744B76904E6CB424B9A95B367FA61BE33F4C53AFAE55891B1F2BF0E2ADCF
            C525AE65E7CCAF20DDB96BE958415A7898D3634A756B215DE8C4639A36ADC07D
            F6AB35979A1E3D1E8B35D319DCB2950AA4D590EF099713C82845310AD029C3CC
            8C1D354E55B448B4B597EB274F71158E1C59255EBBE9002506C413A8D263A458
            B0433BAC5BCC84B1A00C9D263BA8EC8570E66C6FC3ACF94BC503870ACA3FB083
            FEB272CF4620E9EEDAE9B6C3C4E07ECA92C58F65769959CF96D14F894C326ED8
            DC58029E638259B1E4042240763BB2B25643F776BEC28C09E8AA2A5922D33A29
            D38B1775D8F0C8447ECB8EAFE55208D20C28F2A04C964E192D9ABE61C68C1AA1
            6D543F81EC80B207581836C3C230918D9AF185BC787539EBE3FF2FC05834DF34
            42BAA0C01F346D5B436CECBE35D789B77F8F62A7CF1ACFAF49B2B0E5934E06CA
            4964243DBC7C0545D288091E334D5DB6CC046B2FD74F9DD641387474ADE9CAF5
            FC66B364E194249DF006EC3AF840A67DBCEFE9260681A598E5BE81F608E38953
            FDD859F3160B078F38C94D02EC402101172970B152DD3A5D67264FF45015C89F
            69A8C2F4E08FAFF03CB671EB3755056F9B1CB327789693158880F4EEDF9041AA
            EDDEF9363D76744F4DE95299F640C3077339FDF8106C626FAC03251DA45FA4AC
            A142C13CD690342D9A09F460AF40AA73C745E406647BE077DE895BBA628D61CA
            B402725211D4199206AC1F10862D9A22266CD2164DBD3A83AC69540D10AE5C5B
            68981EED6B4CDD247B2A88130890001C64C0A789DFA1D6C519E982C72ED254FD
            DACFDACB0D51D18D84C34737893F5F2C0E35B00AD2EF50B67C0D72613CE3EBF3
            9CF61BDE5F59A8E04E7203B23DF81DBB7DB915B17384838734E02123AE884046
            372FC8DD49B4DD3A9F739C17ED628D7746B87BBF36173D7BA371CB8EB290896A
            0FBD6215CF4A9633932F9E56C87C85F061B59DDB3FA4A15372AD5AFB33BB4C26
            059F14BE8E4F496D2E378724EDEACAD0B8B1D5AA69F2AD59EBEE3281F1EC3B9D
            DC806C074930BAB17316AE60A3E73922C168611022FDAE4DE9CC172D9B228729
            A189EA9A357CF04634647629B02189E72F2E63A3670FE4B7EF464A980BE9E410
            92487F97D29BD788EADC01316347AF56D7AE31D45A8A422E66652D7EEB8E14E1
            CCB94AB240247E402B2D546B58D0D3033CD298B1818355258BA7901B90EDC0C6
            AF0D3626A74609477F52C8B579A4DF359CDD20CCB055AE6E58EF906354A4ABAA
            DC9799E7835CB8D0865BBC3CC1B8634F31B94B12C9F669198084A4A7454A9BE5
            180069E90C3219D274D52AE02B7CCEF80EF3D4D4AB9D69DD18D4C019A64E8B33
            AEDBD859BA730F21707BA54F8ECC3CD26B2EB150841A29CAD3633A35A0DF045B
            9282E734A4972F87B2D17317724B97ABCD6685A54896302F29B867A4576F10DD
            B32BA2274F58A2AE586194B5ED9BC453A78197B4B7B0FF478B6027ED6EB21780
            DB1F2B189A36AD800566BDBA41FDFED6B68F32EED88D85E2F6337CEA46959CEC
            46FA3C51292D0C45789D50BD9D4566FC183F75F972CBC80D286B004A443E2E21
            8A8F4F0C16CFFF6C89B3912E7B0140024D81FC4853B7F60EDA67D0006D8BE699
            D6820A67CE7766172D8D37EEDD570078962DBD4409CE21FD3C911B1FBCF6F47E
            2E1C38945FAE5D010B8B243515681BD8FA8040BFB66D9B3794EFF02154934699
            6A76D029C3103D2FDE98BCCE59BC790B29E54E04E49BEECAA4E0952B22DADB6B
            21ED3D20C0165DE7731AA6E7CF46B151D173F8957196438E74E01EB47F48A67A
            F10269070D40BAE031B35465BE1C67CDBBC5EB24BF78E65CA23E24BCA378E427
            8BCB977486A49C9425C8A4C7D94558FC5E902CE4CBD034D961CAE45DEA7A753D
            AC217F07ABDBF4DBED4843F49CB146582B780FCA652BA4BB9B8090C7D6A2B66B
            47A49B382E505DB9924D3B65E4048018815B19378F5B19EB67BA7E937C27A074
            48781F42DDB1B641FD4D0E21419ECA0A15332527E78F9E70E3172D596EDCB7DF
            494E60D3103E4F2043195CEC3A1A695A367FA1101F3F69CC4D8B5ECCAFDF5CDB
            6CD093EF5797CE6C2FBB1DBF6B2DD25EFD87515D3B65DA03CD420ABE6A39D6A2
            0688D76E20A5931D5016C1CBC61AB7AA5C3944F5758B6702460CB7C6A5672F30
            FD7A3B949DBF288C5BBD0629F211EE3C024877CF20BD1EF81011336AE46455A9
            9256753DC0EBA394F187031B0C21110DC5B3E72CBCA4A40F15B9B51167291FC2
            878339C3ED4F3A410C0ADE1F3D42EABAB5916ECAE493DAD6AD7A599BA464BA7F
            3F849DBB30828B5925275828482B50E9F331BF7C89B49D3A00D55B98A6C937E1
            6407643DF0BAD5B1F3162FE1D7A6789A7EFDD5E2D1B0073E5D58B7C58B214DE3
            46B18E310B7DAC22E9DEB6D39B8B5DB354F8FE07B56CE1425B2DD21D70D2D2E4
            C440AAB7F3057A7CD0083978885FFA97FA896189C675EB9B48CF5E585C62A4EB
            FB4028620D44D3A8A149EBE9319671EF9DA966276B52ABE367F3718901E2A5CB
            96C3C51EE2A3D0FBAB5C5944B9F6DEAC0B1A35203B3B65D80AE2F51B73F0C136
            8A4F4CB6BC47990881F0A07823826C462C0C45DDE4F16394143DDF9ACBF0BA28
            CF6FDDB1C530655A55D3CF9791B25811F21E840CB278A73C58B0FBFEA2C4878B
            213CB2BC74F7BE85FA8E747C163F5F7AF818A96A5643BA90F157A86E9DBBE375
            FB8B35974B3CE76F8898360B0B45B5029428CA0EF84F65773056B2DBB541CCF0
            C173B56D5A07921E5266808E15869973E3F875EB7B48BFDEB60FCB103AA860A5
            147871358D1BCC73583C2FD09A70109BBC6194313E215A387152257B0E480B43
            3897DFA42165C1FC48EBDAEBA84364387842EEFC252D80CD1D2FE258E3BAD4EF
            4C0FD219D2492223168785A2AA660D33B6142398FE7DC2ACB9146B21115C4252
            8878E19245FBB6838409B97D5489E2400ABEDB21643CC4669E121DD07F8DD36C
            568B376E2D62A74EF7316EDD6E118636EE4AFDDE909324F4B2B5410FF6E27461
            93FC154AE5722BE7538B4B4A4D66A7CDA82CDDB96F29ADB0FC0599B9A42B68D2
            8B574855AA04A247F89CC7564B67F819BF79EB76362ABA8EE9CA35997394782F
            50784D2F5F21E597A510337EDC75BA8FCCFA631545A159928618C2A6CEE756C4
            D272D20569CB3723E10DAF23CDB78D111DE81FA36DD3D217CF472437A8FF065E
            B785F453A6AD31A66EEC20F3C7922E6F4A3F8F91282045A992D8506934C569F1
            DCC9D65CCAAE490AC367F264D3CF1715B230B483D82728A3AA92F83C7675F91E
            2BD75E19DD80FE613E41820A3B7BFE4A6C1574976EFF8E10E94C427984960262
            55B5AA8819D87F96B67FDF20AB3492F8C451FCBA0D73A0879612C899D31BEC12
            9D47061181479F630E6113DDAC7543E51420E1042FDA38FDA47057E3DEEF9112
            3A3C904EA307B733585234859840FF3466B43F58D81BAD9C4F1D2E6ECD363672
            6649B9A71FAC67D28732B0343D798654952B219DFF8813D4000F978CC6BDE0D6
            150E1C5AAF0F8F6C241E3D2ED3CF113F3C401979FD1A290B1544CCC4A007F480
            FE5DF178CF5973299E4F4F7C9EC4B173E63BCA59E4A0649376F781E5FBEC19D2
            D4AD8385FCE875DA4E1D07589B389473433497D28745A6181393BEFDAB509DB4
            C720BDF7AAAADC57D8326C18E8382FDA2A8F1D1F9F38835DBD668CE9F215F255
            00197381F55CB60CF0696FC1E789F7DBA4F0FFE34F049F35B73826865D1DEF21
            DDBE632189253D0918D7EB34A4AE5A196907F65FC1787B8DB48A147CE3161F2E
            2E71113E64D4288F13F91AA90C37998323D2BAF7BEA49B30B6972A7FFE9BE406
            F4374019127F3A9E60088FEA201C388C1445EDC0AD981E8355600B959914FC94
            F11BD6E73D3A3474E06256AE6167CE2D24BD7A45BE416A3A602C6A10864181DF
            6B7BF570FFFF1D1AE4CE21274F271B26867D87BF07B6140B921EF2DF0DB2F3E6
            454CF0E8A7F4E08120C40F5873A9DC3964E1D22476EAF4426641201F03CBB07C
            B182A4AA5115E9027C776BDD5CFAD94BA70CD38B17150D51D11B8CC9EBAB9BF5
            69E47B19FEE5A9E390B25205916ADECCD7617A444C6697C924DD2B562F34C626
            788B57AF5BC270A491C16654F64B6C5C7926D2237CFEA74CEB5F036CD0038D5D
            B6722E96EEC34DC053098709C9C331A3A722F01556AC80A8BEEE29BA51BE43AD
            E98126FC70C09D8D59158B7FA7E49A1DD2417ED9E2B1100968BB76FE8D9930D6
            5D5DAAE429720392BF7709E38E5DEBD8E8B94D8413A7E52E11E97F416E50E989
            1090FCA29B34EE0EE5E901545C99D240A5CF47872D93C3ECB21575A5C74FE483
            9CB83084F5ABD72375AD9A4817E89FAAE9D2C1EBBF12AC60FCA62B5762F593A7
            BAE0756BD1ACED201B166270D0B19C091AF586F1F70302046B7B4B7E8BCF92B5
            86A933BE84641D68C945FC7BA894D8527F8ED415CB217AF8E0A3F4E041400AFE
            07C92189F71F3460A3A2938DDB767C2567FD831021AD3C40598464826C795ED3
            BAA597C3E4099912C1436F54C3DC454BF9B5C9EE32CFB11CA6B003F981953A15
            C80F4F8F25CC50EF7F2DD37A67C609BB74C5743E25759C78EE8245B323E9BEC9
            98D4EBF44E197D5DB7EAC68FF5B62616079D32B855F109C65D7B1D6505917417
            031804D4EF6829A4E9D8F6215E64CEAA2F4A1D2731141086FCB6ED5BB81973EB
            8B172FFF1D6323F66E901CB8071727B8677413C7DEA6DC5DA1A16DA6EC45E9F3
            D1A60DF65D261C3838407AFE5C419CA43B43C3060281460D1133C2275EDBADF3
            A0CC7A81424F38F1FCF955EC8CB99EC6EDBB2CDF85B48723DDED0FAD9F187F5F
            51372660B042AD8EB3E6523C9FDA7CF2BA8D86C8E8B2A65F7F935DB019DF9AEC
            7CD2900A9A0C0C19789AF11DDA9D945034DDBBD7481F316DB3B06B5F3164E411
            22DDB8002088726D9EBA7AD5346D9B96FDF0796B4DC78A428669FFC7DE79C045
            71BCFF7FAE3710BBD1D8124B2C31F6127BEFBDF75EB1A0028A05A488826017EC
            0A8262EFDD68ECC65E638CB1C7D81515EE76EF6EEFEE3FCF1EE49F5FBE07B7E8
            2DBB5EE6F37AF1C56FD8D99D9D9D99F794679E276A9571FDA60EE0A49B350412
            7A3295DEFEAA5442AA9EDD2335A3866518A0DEA90926B52E29D0B82E21943977
            C17E6E4BE846C92E3BA6B24607EADE3D8E694302FB72898166BE71AB11BD78E9
            46E3BE03F925E0624D2467BEC04388B2758B372A9F513D95952A1DCDCEC7E3CA
            5BCAB46BCF4E3C1329677BFAD4EE285D684127F5EE1D92952F877003BCADECD8
            0E60C82900337E1F5DEAC0E109E673E73BD99293EDDF5848C100127F63F0A2A4
            6CDC0069C68E5EA06CDE7842566EC1DCB93B9F8A8C1E4F6FDE8667BAB8FDC945
            609D47E1C11C4D21F59851305B1C2BCB9D9B938B42FC7DCA9876EED9863BCC72
            965F6F2349EEDCC2B74110F8E0F4F2823DDDDB6A3B14FFC8CEC79BAE5F6B625C
            109B64DA7F381F6B002882D500B0F247521992FFF0FD2B45ABA63DB53E639D2E
            91436C54C38CB0447AC3A6C6B6F4D30A422FF78275319CABFDB10652F5EF17A4
            E9DF2BD3635A9CCE2418F71F1A4B2F5D31DF7CF2B44C14BEF3D20D2D72E68458
            84177591E10045A77B71D63FEE55D62F8AD969DABEBB28BB9F210628C2F11293
            0929DBB54951F7E93150D9A2D9F6EC782CAEBCD58C1BB76ED3CF082B6AFBEB19
            92B0E15684967D995456B102D285CF38AF68509FFBF9B79BB7F2E823A2B731E7
            CE37B0BEFF20FC063E0CDCC0AAF1ED3BD61D9A7AA24F98B24E2D4E5679FFF36E
            7F3E0D358447061A57C7E3EF944BF8103F69CE11605F5FED3D0CE9A6F84D96E6
            CF3F874B52D670E8C4C9ADFA6921352DD76FDA974F053FCF63B73A8455308DCF
            E8271A5F1F18845DCA8EE79A0E1DE98C011267DABDCF933DB30916DD429705B8
            52934B91BC72E527CAA68D3BE232E1E25BBAB47EF2B444E3D69DD5A10D0B6E40
            F54FDFD2F5EB5AD4A3864F50B56EB1D86932AEF7371D3F3918CFB062F06F3518
            39B0FB71424A6A8FFE2DF5F0408A8EED6E69C382FAC83C3D6F384B6679F4A88C
            6141CC660CC50AC8480B5F01D3C24701A0954D1A1B5583FA8DC21F6E2D9F8F04
            43077A55DC06C3ECE8BCB657AFEC30147A591196C3C114BAF20F483B23F090B2
            61BDDE5C9D74D35B7716336DDCBC81B97CB5B6158E67083DD0491B61C39EA1B2
            433BA4F59F30455EB1C267F9B4B5BC7E13404544CFA656AE65DF4F70DF8FACBB
            2B5C6F29039CE382779C2D2F5D8A53A40C5CFF729B8E9FDA6008096B61B97AC3
            DE790A6DC095B61C0C0329F5D0416FB4017EBD251A352703AE4F159E680C32AE
            4D586A3A7A4CC5F6A942DB3780006278C221AF5AE9A6BA67F7EEAA5EDD9DAECE
            5852527E300486AE37EFDCF3BD35353DD082C0EF018351E8531BD6A7D563478D
            C6BFD7704996A553EBA6B3BF74A5962C5F653EF6B397043E9CD01F900D3982A1
            A6528381CA1FDA9069FD6479F39E77960C22BDA74E9AB6D5BC7D5755EBBB77C2
            07834DEF4031E015757FB4A9470E9BA86ADF66011F8FC2EFDE819ABB30899ABB
            40634BD1DB0F818B615923F93D52346B8C3453FCB6296AD5045378A76EA040E6
            9F8E7D4B2D59B6D57CF57A65044B792AE13B15D6FB0C6E90CA9EDD19CDF83163
            E4654A3BB5CAE3745FA371049E052FA117C5CA61A99DB5001752E967FB5231F8
            3BB5439AA080187989923ECEF647D977B1D93CCCBF9C8FA3664777311F39661F
            9409BE1D63B74284F7520FEA4F61C8F79216C8BF8B8F471977EF1B4F2F5B39CF
            7CFA9C840588D0677DD94C19D90181AC4AA5CB18845DD5DD3A3F7296040FD46A
            1A82C3134CBBF7964AEF8B05EF4B6182817F2B1A37FAA0193362A8B276ADAD9C
            9367F579A69F4FB4A2D76D586FDA7720171B591C3A2021470330B0A48CACD598
            B263BBBF3463BCFB292A94E3B2DE5DC81034733B9DB4B92658BEB1119A850603
            BBF99B82E435AB23F5908153D4BDBAB93452067EE71E8688A8386ADE12353C8B
            6D8842575E083DF4FC05EE50DB236D806F92BC7AB5FE5C0F4BD3CB579731EEDB
            BF93B976E33BD61FA8D0AB166931E1202EA67A503F5AEB3D6AB0B46471A75679
            5991D568EA452F8A594345CD53DB008A62384E02F5569F8A14AD5B4070E604F9
            77DF0DE5E8685DCE5CBCB4CE1011DDCBB4630F026F3DC243D11E8E0E66179ADE
            3D69CD54BF81B2428536B9F21174D296007A75DC6CE6FC45BBD189D0674DD38E
            D5C092B1A246D5F31AEF919D150DEA3A352E32DFBCDD885A129B80BFDDD76C7F
            A211DA493784A132B17E81956D5A27ABFBF7EEA36CD4E040968AE2539E6BBE78
            E5477AC5EA24D39E7DC5D80F29B467FB349F906015A56CD7EAAD66C4D0C18A3A
            3FEE76960C37C89C86C87989C6C4A4367F5B4409DDB94865080C42E4952B41D0
            D628CDD081935C715BCBF317DE54ECF285B8339523B546F8D863AC23773CBBF8
            F81E5CDA21CDD4C9B1B25225C6483936296AE1A23AA623C7373397AF15621D63
            8B01860065FC5B35A0CF7B4DC0C4EEB25CB979597263CFF62D59BA998A5E9093
            35CF17834522180FBD7EC3CEF27533A6EE91D7A8DE978B8B42FCE524963FFE88
            A166458D326EDA82DB604EC406BC15C1400D8CF7543DBA32EA51437D1455ABC4
            BAE2D6D4AAB839C6751BFC99ABD7ECFBC156E1FD92C2000026047820BECF73E9
            A2BE120F8FF7CED298CF9C6B4F2D5FB5C6B4E7401E84BF175B0785F6810DC651
            F8DB29DBB579AC1E3EA497A27A952C5BEE7FB2A34FE6D9B3F2B8126FC7A383D2
            B0C16E376210B8403014C14045D1B4B1413D62D00855B36689CE92C101527AD1
            D235747C422FCB8387E2F07F0AF90273F0EFCBE106D979A976DC18EFCFB997E5
            DD3B7F2A62EE1C1AF69FE432E14DBAD9505F267654AAEADF0B694302E7C8F2E7
            9FCC35B97E666473E6D4994DCCF51B39D9F7107A1F1806640026A50296DA5E68
            0326F69278E638CEE72371BD6D48C52C4BA2E62EFA8A750A2EB4FFE1F4D9FEAB
            D748D1B821D206051C51D4A90D07DE9DC6C603595EBD8A34CC089B645C97649F
            F5AA05F69DCB6E6330EC405BD9B12DD28C1E350977B0519F734BC3A225B1C64D
            DB47596EDD16C74175102CEFE7CF87E4B56B2579AE8C1DCCC9E1C991237DE9E5
            6B979B7F3AA6650D818486A124CDB5A346034BF7773553FD3BCB0B15FAF5936E
            F539F9B0BC7CF51D15396F9B71DBCEF270685E1C8D92619750E5F56A33EA017D
            BCD55D3AAD74960C5C0C5131CB634DEB378E607EBF6B5F4A143AB2033C1BBC43
            94FC06A9FAF65EA7193B6A38AEACC6ACDEC6FAF65DA83E2834D098B4C50E4331
            189CC0C00537203C9342BAA0A953A43973725E1A3684CEEE66FCF9789CE5F61D
            AD040641F04E82769C69DE87BC728031C69FDAA9FE3D2532D9D9EC7834AEB7B5
            8D6BD76D34CC995BC40AFE8773E64276EFCB029FF97A978C643F8053F08033CA
            36AD38BB28B4BE7F1FA00F9D35DB18BF1EB1DF56F0819BE46F2B703646E414BF
            3045E54A59B614C6DF49452D5EBAC298B8A1BFF5DE43F61CA71806DDB0D726F9
            2A3F52D6A8B15CB732C69B4B08357ADB8E6174FCFA58E6D45939BB442A137E36
            CF1EC3F3F242AA2E1D7FD54C9ED8455620FFEF9F7CBBCFCD0FFED845F5C1619B
            4D9BB6D5B4BE7829BCDFBDBF0B498F143F5647AAE14326A93BB5E734B2A396AF
            9E4BAFDF38D172ED86FDCCA5D0EF81D2668A45BFC6F018B05BE33B1696A152B8
            A6659E3E5B4405858CA5376CB69F6113DA084A2A61210F06212A30D7F79FE08D
            2BF252AEC9F54161FD4CC78EAFB1DCB92307A706A270C5073E52F3E545DAF163
            EFA9C78FEE80BFCFEDECCC026E7FE54C5BB7EFD2CF9859D272F73E92162C90FE
            0761CB05A0880773DA90E9D794EDD9B3A40F38BDCF870FA3F451F3638DB12BED
            4EF9011E02DB2880B71638CAA36C028193FD162B6AD71AC73539FE3E9ED4DCC5
            89C6F8F8F696277F89666668A329242B5204FC92CEF3885DE8CB250DBD63B7BF
            71C5EA39E67317F17B88C0A567BA7FE8AF0A20658F2EE775C181E052F0C967DD
            D215F9B27B2798B3D1B86E4313EBCBD748A213C1016F30E34F4D45F2EAD5C089
            6BA86660DF195C9251094921A6B87541E68B97ED67A48436B401813FCF4285C0
            FFE9095DE0941ECE96A1D860AD376EADD047CC1D68DAB60349E100B408F665D8
            0D6F3056983896D28C19394A9A2B573CD7E4A9FE534731A7CFC658EEDD97B060
            17DA10419AE65AAE6021A49934F1B27A707F3833F94888AC80D5B4F9F04F5BF5
            5383AB5A7EBB8324794470E01DCE0A27E3F2295A184364D21FAA5EDDC1F5DE45
            2E49ADC9C903A825CB9652F3166B60395C22B4E570DACC171C6D2BEBD5411AFF
            F1718A664D863B8B0188BF4B017DD8EC4DA6A42D0D6CCF9ED98325D8FF20ECBB
            C0F2FE3745219661A8E7E279DCFAC5B8C4106362521073F192DD2A5F04335C08
            EC2B2D900F6C2D8E6AA74CEAE98A08422E7B2B366A7DE4BC38D3A62D5DC04085
            5DEE105A2C14F5EC416F55BF5E0B344307F9725A16D8B8C5878E5FBF8075AE0C
            FB19423B22C09D3F388596E6C983545D3B5DD1864CEB22D5681F397E659BDA7C
            FAEC7A2A726E67D381C376BFA442CFA4A0F1E0C109EBF2CBD747AF99E8039D23
            6773F6D4B113A79B7FB9106679F4D81E7056E8C6C8D6AB14242B550A69C67A1F
            C70DB29BD0E1BC60506A3E7E728B61664443E6970BEC1292183C9EB0FE87F108
            5E33C5FFA97A60BFFE59700ADE819AB7703D3577A18E5D5510C3D1289B958D54
            22AF561969467B6F57F5EADA27A33D372B65286E9811BECDB875471588AEC1FA
            D3153AF0332C679B4CF68815756A8FF79817E1349E28BB9DB46AED5C6342D278
            D6918287386C2C60DB455AA4309E1976DBA69D3C91F3312D6772E99BB1851735
            7F2DBD657B7F2BECC579091C7B0E04950077C6B23265906A60DF559A51C34671
            31EB37EE3B388C5EB526C67CF48482B5A0127A940A9D1B86BBC4CB131C11DCD0
            85CEE82CF5F4B8FFCF4B20A0A8F9CCB90D8699B3DB30A7CED9FD5F0A3D939260
            98BF7D83647896AA993CF1BD7ACC2818C91DE29A3C75AC6F0473EE97C996274F
            EDB35CA11B639AD371F90FDF23D5A8117BD57D7A40279F2C6CA6ECC2DF3F97E9
            F8C975B80DB6658E9FB29F311581ECAE16F3206DC08417EA6143C0708393293C
            7E9F16F492A51BA9C879392DEFDEE101615E610DF7FEE14F5956AE1C528F19BE
            4FDDA757EF7F5BD35A53524BE88342B69B77EEF9C1F62105C35C24B120CD1886
            DF7D6756D6AB3D5A1731938B6D859C5ABA72A9312E71A8E5CE1DFBCC50C84156
            7AA41218647D571AA9BB755EA7F19F3088CB2487F323F8C83715B33C064FAFBD
            CD377F45D25C027B3A67DF52C2FAB3937D530C29FBF6DCA2F5630B51EF2C99E9
            C8D1EE745CE21AD3C1C33A89182265A4FB188433979D3AFCA11A3DAAABB26C69
            D63B0F0478361DFD39C910185ACF72FB37BB3376A197CD58BFA4C948F27521A4
            9B31E5A9AA774F58EEE564700283ABD43113979A4F9C1E6E7BF1DC6E0C24340C
            616F2CF93D7B24463361CC6665C77683B9D4A3EC14F873652E5C5C638898DBDD
            7CE82886624E91788149658DBA34017E1FD362D0718D9451DBB861E3267DC8EC
            C2AC8B4180BC18EAB55ECF468DD74E1C7F4A35B04FAFF400B3A6DFEEFE608C59
            BAD5B4635729D82B17C5817BF03E837FE4E5CBE9E5756A0DD6CD0CDEEC2C09D4
            2343F4FCB5A6C48DDD2C100650243615D69414A4285F0EA9FAF48CD58C1E31DA
            D5F7E7AD87A1E212661AE3374C335FB888A46298A9C09EC6DB77EC9E86AA67F7
            A3DAC0801E5C62A099CE9C6B45AD8E4B30EFD99F472295D96729420A1A23984A
            E3CE45D1AECD2B3C42EDA0A85FE72586F61643F0CCAA969BB7C5B18784ECB1FF
            64458B205D58D0EF18E09D7079FFC6251D2CFBA60E1DB9CA7CEE621FEB8B17E2
            88168EF0CCE06D3292D7AA81B4937DD72A9AB37B48628DB62E676EDE5A418545
            0C32EEDE87A4F9F20A0F4536D0700A9422D2FA8FA7B453278D9648A49C5C14E2
            F7298B01B3431F18FA9DE5C99FF6E547A195B61C0C9132D4A3475D568F1ADACD
            72E96A01C38AD5BBCC7BF7E5B73116719C0F85F394F688156F956DDBF6D3FA8C
            723A3B87989C86B0884DC68D9B9B589F3CB5F72782077606E70F1492952A81D4
            03FB846B468F9ACEC763781D72D39BB74DA357C7CD6463ECC15106C14DE4D302
            4416C88F945D3A9CC623254E31D0CCF71FD4A323A2379AF61D2AC42E7D88C140
            8536B2877A559D3A24CB6B56D7D3CB5715B640204EB12C93C1DE6DE992607A7F
            59D9B67577AE5686D63FEEE7D08784C7992F5EEA647BF30E21A837EC0D853D4A
            608F58D11069274D9827AF57C7DF95CB347C0866D8967BF7A30CE173261A376D
            B54344E87A2B4D3B2FC63048356C10A3993471922C7F7EA791D7D3DEE75BD3DE
            FD9B71475DD572F79EF06EEB40E97BA4050BC2F9D3A796FBF775C69D7B7241B7
            2AB8AF5910F455388FF20AE59E293BB4EDA91935E294B324E0C14B3F3D789369
            DBAEBAD697AFC411209EDDFB342359F162E0F861BAC7ECD070BE1EC5FB1A14BD
            73EF18637CC2028894C13AB0157A09213D16610E4FA4EADEE59266DAE4EE320F
            8F87CE92599E3CA96E9815BDD9B4EF4071D61101CC5A84DE244F1BFDB167B6C0
            B33B2CE90AA9F43D163C139755AF0AA181CEAADAB40293FB175C921B8F9DCC69
            5CBE6A2B73F15213581A117C849DEE8A2D251529DAB7451A1FEF6065ED5A21C2
            6528EB621E3F9941452F0836AE8A630F2E239DC0AEDED2CFF6E1019DBA7F6F8B
            3624708634574E4E1D1CAEEB5F19F71DD846CD995FDB0256E03073117AE69BBE
            8D0182FE000CD8E04748A5F9F3440A259255FCFE91BA5DEBEEEA91C39C5AF85A
            5253BFA1C223371B376FAB86F06C5EF073A02036449E05C94A96B428EAD41AAF
            9B13CE29D4D827175D76BC13BD63573F53D29615A6C347D5ECA177A1ADDFD84C
            D16CFC3F0CC53BBA00FF4E92BCB99D7B754F4EAE60080EDF8C474F65C07723BB
            4F27F45202082AADD0FB6BF07CFC63FDEB195234AA8FB4FE138F2A9A3781BD95
            D75C92D3FB0E1636C5256E365FBAFC233BE010C3C0C994E64DA75B57AB7AE298
            498AEFCBCF152E439F2ECBABD7BED4C22573E8C5CBA430689268C4D1D1411B52
            7507B77D7E91D262C5A648A552A799C250CC673E7C34C91035AF89F9E793EC3E
            1EFB2E42BF8F18DA2028CD8D251C559157AA7447D9B64D77CD8841379D66FFCD
            BB32FA88A81D188665206492284E09000CF1604356AE0CADA85973B86ECECC04
            BE1F996D5FD074FA4C3B3A7665A2E9C8D11C92740309A1971DC1A12DEE20545D
            3B3D55FB4DE8262F56E41767C9584704D382938C1B36D5FEDB3B8FD0A14E8456
            FACCF0E56BA468DE180E636F9757AD3290AB13016AD5DAF2A67D07373197AF96
            67FD110A6DBC0402AB3C0C4455D7CEB46EEAA431D2E245570B9BA1CF93D5681C
            4245442DA197ACB0F7742A81571340B88CAD1F3FE2014767A49D3679A9AC54C9
            F11C9D827B3297AFC41966CCEC6C3E7C0C490AE413BE3F118524AC5F52987428
            6A543DABEDD7B397BC7D7BA707D599C77FD6A2A3E76F316EDD5118EABC281CC6
            C3F3616658B6CC4775CBE67DD59327EEC99E12CC4631376E36A1E62EDA623A78
            2817BB9728B41BB1F43D0D7008DBBE6DB27AE4D0EE8A1AD57E72968C8D0C3D33
            629D71FDA6A610A9412CDE270451DA4C0A3C79A8DAB741DA1953D7CACA971BE1
            ECD072BA0C4B9655331FFA692373FD460976D62E749D489F19E2A6A1EED1E583
            76DA246F6981021B84CB90EB843BBBDE86E8F9B174CC4A2F36548F4604D14E60
            F914BCC0746803671513E5157F18CDC52938EB7CE2D7DBCB0D21B3EC864360B8
            2786819480B2E16F2AC9E1851435ABFFA40B0AE82F2B53E6B9B334E60B979AD2
            CB566D36EDDE9B8BDD7ED189E08808B43FDC37CBCB974B56B66ED54D3B71CCD1
            6C7B7C76BF2F73F75E5D6AEEFC2DA65DFBBE62A3D68BE503E0D188B2599314F5
            B8D1FD943FD6707A681C829C1A22E7AD36256DEE6879FC441C9BFCD9ADF4B283
            40B83DBB83C1C9623CCA9FC0251E1E885AB0B89EF1E091F5CC8D5B45C03D9644
            A510387C8CD4BE6A807FAB06F67DAB0DF01F24CD9D2B5B46A6D9255C6FDB510B
            96ACA5E62ECC03E773D9657FA1DB1FCC14DF262345A37A481B1AB85D51A3FA10
            5C879C465CC0EF22B3FC716FBE61CEFCB1A68D9BED7DC97F148A6CC48ADCB901
            863B3D62E60E91787A390DAE6D3A77A103BD2826C174E4A827EB0651E8B24BDF
            FB8400C5152BBC50346B826138EE74B6664188F7669E3DFB818E5EB4DDB8694B
            09B6031281170A9BD5826CA906A46CDA98D20C1D345CD98A53A40C0F6A51EC32
            6342521FCBDD3F44735627DB04CB8AFA54A41ED00FA9278E0B977FFB0D675368
            C3EC392DCCC74E2432D76EE4B5C91576C7E3821ECBC1307CFF910D8BA51E39EC
            B976924F5F8987E731E132C49F70BD6D4C2F5F9568089F53D00601B2F3E6157E
            2F1CBC31BD7C853BF46A4813127844D9B07E7FAEC658CC838733E9798BA6D1F1
            09188A1EC28702CB4EA51DC392E6CF8714B56AACF758B5742417AF2DA60347FA
            52ABD6AE30FD744C23F1D022F64899D081B58D2636628CA27AD5FBCAE64D3BAB
            BD87DFC8EE3C08B60B8C1BE53786A0D0ADC6751BAAB0168562386B0650A48C48
            51AF8E4DD5BBC748758F2E2B38BC87825ABA728169DD7A6F365286580C6DF816
            EC19E299A17AC800A4F11B3F5956B0E01CAE49F5D382BB9B4F9D59C9DCF93D07
            3B3205031AA1E36982BF584F4FA4193BEAAEC67F425FAE7E37BF54E17A5BDDB8
            655BA27E7A4869308402B780C2CE14913D72C8ABD7ACAB45ED54FF0BCAF66DC1
            AB91530B7090E5F9F34954F482487A75BC6842B8F12ED659BED11EB1A2668D58
            DDCA98F15CB62AE84DDB861B376C5A86DBA0848D58210618C2DEA54A0D50BFA2
            EEDAA1ABB247374EDFDDD512B4D680FF457D60E856D3D61D0D6C6FDE086FD994
            1E1894A2D903D8EAFEBD26AB7BF570DAD15BAD5689696D4224B53ACEDFF2DBEF
            E2706ECE97C04218CFEAA1FD68860DB268A6078C917AE896714D9EEA3F751873
            F69785CC1FF734ACF71FA1FDAC62010CA5050A20CDE811D7D53EA321869F53AB
            3C77106E7F158CDB772650611115D9B37DB9720A0F92F403EFA54A227580EF0D
            75D7CEE01A8D536C3B6BAA7E2435336209B572AD8C7D0D311C8DE24B60586BA2
            91AC5041A4A85D3B4A1B337F32172B5D3A69D3247A5D5224EBEF16AC8D45D0FE
            601F19EC306455AA9C500F1FD255D5B4A1607E81051F4681FF452A6CF6267ACB
            8E66D6277F8A236A3D1CC4C6B31F3C75C750EC330BFF4CE392CC10BD20C8B871
            6BB0E5C1038944ADB187AF11FA5D5C29368241323BA3C3E03068FDC68F966AB5
            715C93A7FA4FF3319F3A1D697DF048251ABFA470B0BA7831A41937FA173CDB85
            65BA3F84CD54F60AB7BF52A68387D751E191B598ABD7ED5014BE5B60BDDA488B
            1541DA00BFBBAADE3DE0F8CE152EE9AC06C340DC0E63E885315AB6A385A8F4EE
            B462C30EDAADAC018DAC78319BA24EED608F45D1A15C92D2EBD687E39FA910C9
            470AB368A18FBFA52FF7E6CE85E4552A1FF1DC10D74368BFC0C2D77CC4364A2F
            43E4DCD5C6A4CD5D6C8F9E20943307FBD1852B957427BE294856E17BA41EDC2F
            5633642027BF79FAC9D3C69B4F9E996BB9FB87D4A61241CC3E5729CD8F27D2A8
            90767A40B266AC37F8F1DCC935399E1906998F9F0CB13C7A84244A11F8254D9F
            897CFB0D52FB4E38AEEEDBA36FBA3FCAFF9AC00FAEF9E4E9447D506843CBC52B
            A271FDC72E6343ACC9A0697FAAFBF706289EE1F83E1DA9C5B16B0C332372B14B
            8AB9040EE3E62A419DC57097188D4856BA945551BF8EAF2E327C0197A4D4EAB8
            187A4D82B7E5E62DFBA443E8632A00638A42080C816A54DDE6B93C768844ABFE
            205C86EC12051041B01747C72C5F45AF59D7DFF2C73D7BA406A12D9EB0AC6FDE
            2279F9B2E04C3641337ECC602EFE2B0DA1B3061B7F3AB6D872E7AE965D16147A
            24F6D965611FB1C337D1064D7DA61ECCCEA4389942832560AA8F6F0473EAAC1F
            AC00B0A6FE22688C6CC48A7265310CC7EF5475ED38948B5F5B7716F8AF642E5E
            5AA50F0CEDC89C3967770128F4F95A58918000CC5E399066FAE4779A51C3A1DE
            EDE3F83E4DE835F1EB705B2C04C73AEC2B4FC2BECE670B9C19300C9295296D50
            356D3C16B7C5351CCA414E2D58B2C6B87E633FE6D7DF90346F9EF43F08FA2AE0
            7C4356A00092D7AEB5CE6365CC50AEC7B4F89668800802FF8BF4AAB8F9C6B884
            71CC8DB4918C904EC1D3678A103EAA7871A4ECDE798B768AFF602E565CFA5951
            DDCD477E5AC6DCB99B8B2D64A1DD397D86C07599B470213074B8A7EADD133AA5
            739CD2D96C9AD4E163E69BCF9D1F617DFEDCEE8A4D0CDFF35D329257AB82F000
            2751D9A93D38E9A684C990B804DF8BB97E7D852178565FF3C123F6E546A1AD7F
            D9958964D6E042ED3BCEA09930769054AD761AAD21ED7D7E346ED8B8CE302BAA
            A4F5E9B32FFBBC30D836E05FF232A59315CD9A8ED44DF5E712B1C2C3303B6A8D
            69F3F66EECCA4C7A605F11C0103C0C296AD75AE4B174D10431F905161510D365
            58B126D4B8655B20EBAF1036C6859E61A579B591E6CF8F943DBB1DD4054DE9C5
            E59C947E66447BF3CF275631BFFD9E4F02A36DA19D2B7FCA7B43D4F3922590D6
            CFE7369E25C3B2E2552E497163D4A60C1ABE8C397FB11F045515DC5D18D42138
            04FEEE3D52D4AF8BD4E3BC5729DBB61C9B5180D7FFAA20D20873EDFA622A6AFE
            50D3961DF69922384B10FAAC22F894C56D48ED3D9CD1F88D1F25CBE1B98AE3FB
            54C6B3A34443F4C272D67BF7EDCBA75F581B446606D9A412242FFBDD6B45A306
            4375D303767378EF9CFAD0D91B4C1BB7B4B2BE7A250EEF3350878C2624C5930B
            79AD6A619E310B8284CDD0FF4A944004511B374F36AE5C1BC16EF4A72FB309A9
            7428E6CD83543DBA9ED5860476E31229C31039B71E86621273FDE6D7AC270838
            FCFA25EC67E019ADF5F51BF016813481019754ED5A030C7FE792D4FAFC65EE54
            FF8035CCF94B1DACEFDFDBBF9FD01D2A9C99C47057B46A8EB4937CE7CA6A56F3
            E76295F75F14584DE3197D141516E16B5C9B8090570EF67CA6D0031A30CD4714
            8DD4C307D930147D65050A708D94F19D71CFFE44FC3ED5985F6FDBC3617D0986
            3669EF0C9EB4E4152BFC8561D84B3BD99753C40AC38CB02DC64D5B6BC3968F28
            60082B33B4911D5CAB1AD60DD04586470A9B21C7122D104186A8F9C34D3B762F
            66EEDD574A848EE400828E155CBDE5CC8994DD3AFFAA9931B5B34CABBDEB2C19
            15B3ACB2E9C0E1CDE6CB574B021824427B84E0F09EECDEE90FE5916E66C80945
            D346BDB9C01F64397BBE907E716C82F9C2A5C636385F2A7447CA66CA82ACA9A9
            48D9BA15D24E9F1CACA850FE8B8A582194F08068863E7456B0312EC1DEA9C279
            5121C5CE964CEC016ED580BE48EB37215056B8D04C2E490112E69F7EDEA09F3E
            A30173E357FB5E9AD0F5D2C9BBB203000C4545D5CAF794AD9A77D78C1EE97475
            C6623094A642666D376DD95E1EF6C9914E04E19B1062C337C94B7E6B52346934
            561716E4F47CB75012351041FAE0B0BEE69F8E2F67EEDDD3B2DE1484B6DA4C8F
            FE9D230752746A775F33715C5745B1A2D79C25A3D7269635EEDE9368B972B58A
            CD4023248678690EDE0D5CA859DFBD438AFA75903678DA1E45ED1F61C3FB1597
            E4C69F8E95342E5F9DC05CBE5A0BF65D45E197149649F13BA93AB4356B0327FB
            CB8A175F285C86BE3C593F7EF431444647D1ABE215ECB2BFD0F536DD772EAE5F
            AA3EBD9076F28468798912FE5C926228E6379F3DB7CA101CDECE7CF20CEBEA4C
            F03DD28CDE910627DD6A24AB52F98AAA7DBBBEEA417D9D06D7363F7E52899AB7
            68AB79C79E12764713C27B0063F73EAD160CC3920645D3862374C1814E3D8009
            29D10311A40F0CE96C3E7D768DE5F61D2F762F482E7C805ED66458A940CA766D
            1F69C68FE92D2FFB9D534313E3A62DDF1AB7ED4A325FBC52839D3D09BDAFF6EF
            7782BD8AB76F91A22D9E49054DD92CAF54710497BD5290E9C09172D48AD589CC
            E52B95D9F03342CFE861B9092267E091A9AA7B179376DCE831B2F265560A9BA9
            2F53368A1E66981DB5848A5DC17E5436849BD0CBFE30D0F99882945D3A22ED8C
            294B65254B8EE362010E7B6BCCB5EBCB0DA1B3BB9BF71E4012F0D023A6BD7D18
            705334EB354951BDCA0555970EBD543DBA390DAECDFCF6FB8FD482251B4C7BF6
            16873A2F0AC7ED10A315D71359B9321F14756B0FD685CDD82E5C8638665BE80C
            7095216A7E13F34FC712CD576F7CC5665C25F0B2635A872BC1A3554587766FD4
            C306F654D6A9EDF4280273F25441C3D2D509E64B979AA0F71FC411841304CB8A
            C9EF116E8010CB708DAC6285315CAD2FE935F1D58CDB76AE67AE5E2FCDEECD08
            BD240CE6FA068A75C5A7EADB3B45E73F7EB0B4F0D75B85CBD0972F2BC374A5E7
            2E5C43CD5DE409A6FFECEC43C87D38E8B93093C16044D1BA39D2054DDD2AAF52
            B93F973A0BD6B496EB379718A2E60DC603542405431B315881A7072FCFE98514
            D5AA1DD58E1AD24F5EBF9ED38815A633679BD02BE3369A77EDC96B8378972230
            8262977BC18EB0D20F2F14CD1AF7D5FA4FC8B688159F9575A133901551F1EB6B
            99366FC350BC56021AA3E07B71004588968D6756F8A37F540D193040DDB4B1D3
            C3EA369BD9336580770273FE82DDE844E8F780F34DA97AA4ECD609E982A7CD97
            162EECC7D514DA103DBFA1F9C8B124F3B59B5F219B55F83DC3B4905ED018D5C3
            06BFC3EFD31DCFC4BF88C62876B167FB62966D36CC8CCC0D030EF6ACB0D0C652
            F8F996172F90B2492388A9785051BF6E772E7138E18897F5E9D3687D70F804D6
            9AD64360CF2D691091E6CC89E4356BECF28C8FED2791289CBE07FDD3B18EC6D5
            F1F1B80DE68099AE4468BFC0E930C4030C45E54AF794DDBBF4D30CE8E334CEAC
            58F445011164DABEBB22159FB88EB97AED073698AC1836FAC18211835151AF2E
            A51E36689CAA750BA726E136C6A64E193A621986E200EBDB77C22C31A6876F82
            65C56E1D6DBA90C059D282053947ACD04F0F6ECB9C3DBF8EF9ED4E2EB62A09BD
            1FC3EEEFA6B0CE9DD5C3873CD304F8F694AA544EADF288B80B83A41EBD72F546
            2A727E21D69CDFCB4BD80CA59DABB3BEFF084B8C481BE07B4CD1BC691FAE9132
            ACCF9FCFD4CF089B6ADCB253029116845ADD6061982737C030DE73D5F29112B9
            F3E340C6FD8786D22BD72E329F3AAD614128F4561208260878502CAF5CE98666
            60DF7ECA4EEDB33D62C5E7E88B0322C8B477DF77F4DA8404F395EBD5C1EA5370
            E30D50DA191B799D1F4DAA9143FDD4AD5B2C769EC42A491DEABDD072E9F25888
            3890AD5E5C20DC91DEC05660F5D04156CDF4C99365B97245734DAE0F9DDDCB7C
            F4E715CCEF773D58F774E0795FC84F0096B1EF3F205981FC48ED3DECA166C2B8
            1EEE1EB14228B19132B66EDF64088BF806BC4AB191324420DB878FB05F85B481
            932F28DBB4EEC0158A96E4643F6A666424BD6AAD1406D8AC73FEEC701D99DED6
            D30EAACBAA555DECB12AD6879393EEFD87C61A97AD8A66CE9C5322D83E12C159
            6D76828207A3F22A152F6A06F4EDAF6CDFF68EB099FA84D7103A039F2A7AF7BE
            22A6F51B13988B971B80236E31AC9B4323B2EA5391E2C79A483DB0DF74558FAE
            F371A334384B9A3ACA27D27CEE9749CC93A748CA4291E7BCC2B2622A1E481869
            A4F1F5B1A827F98E9679E896734DAE9F113AD87CECE452CBEF7795EC0C5DE833
            A228CD9B4EBEBC483361EC6DB5F7F02EB8DCBFB8C6F8250943B18C71CFFE6D54
            606839CB8387C2BB5A4CCF1738052F5D12BC2AFDAAEAD46120AE0797B8A4B3A4
            EA47D073E6C6507317CA904A6D5F42E5BB3FC1C565C53094172D8CFB8C5A733C
            962E9CEC3489CDA6356EDA36818E4B9889FB0C2485F88F42071148B3A70087E1
            F2EA554F28FBF4ECA76EDFE64FE132F4E912BE27FB0C31D7AFE531CC5910673E
            7FB12D8C0E25421BA8A49B19BF4B468A664D90B27D9B269A61833805994D9D34
            6DAAF9E793E1963F9F20898CC748103028359AD9199D76BCF707CDC4F1DE12A5
            7203D7E454E2465FE3D295D1CC6FBF89CB6142E1AF9166ACF739F59001DDFEAB
            4EBAB35BE014DCF4D3B12D86E9213FB2FE87C570E60DD76BEBF397485EB922D2
            CD8DF84951B776475C1FF49CDEC764EA4DCD5B106B5810EB057E5C252A057FAB
            1E7050DDC2205991A248D1A8FE748F39E1E15C92512BD73636EDDE77D47CE4A8
            DD8B90188EA18155B9570EA4A8597DAF76D2F881F28A95BE58BFC05F341041B6
            8FC99E2963FC9631172EF7B6BD7E839056787363E8A0E5B8839655AAD8D6337E
            252767C4A0E4AAB5675B5FBC0CE01B32309B5274688B3C56C50E9729959C8F22
            806F446342D22143D8ECDAD6972FEDFB4742FA25853CBD7F8FA4A54A21CDE8E1
            C7D4830774C29DDF476132F4DF14AE1339E8840D3BA8054B1A5B59A7FC39D3FF
            204C863010D95962CE5C481B14705435A87FE7ACD4098BC9342C75A8F70AF3AE
            BDFCFB3EC56524FDAA4044AECB67A7704D923260581BCBB5EB7B99A77F09EF81
            06DA201857E5CB8BE435AA6EF05C123D5292239753432031EB8B0722089611F4
            43BD179BCE5F186C79F6DCBEEC28E09E168C98E4C58B21D90F155A78AE597698
            6BBAB705BF1987477CBC1F1C8743F3CA6E5D90367A7607B9570EA77E11FF4E07
            404C4CDA629815D59275D6ED2950ECCA74430A70D25DB102D28CF3DEA5EAD9AD
            3F81A13002281A376E59472D8AEDC05CBFC9C6B713CC89749A6195B460415836
            3DA0EADBAB1BD7192288F9F0B1BDC16FCA2ED3966D7667D87CCB62F1C9F3FCE1
            22AE97A70C1ED9DC72E3E621E6D163FB8A9810628FBCD8D8E55E0850ACAC5963
            8D6E55EC582EDB4362975B0011C486191AE71B6D3E7576BCEDE953FBF93EA1F2
            920EC48A3FB4F45CBDF410D7746F0B97048F1B7378CF1F00B14B27A49D15D24D
            5E203FE7F379B88C7569406C251810D361F8F21552D6AB83D413C62529DBB61C
            4C9C740B2B700A6EDA7B700D3D7F512FD3A933485A20BF3050FCBF403C980644
            A7D169D2C5BC7CD5D53075C616D3B61DD903448426E5797A2F8AEBC5294346B5
            B05CBF71505020826099B47061A4A8577B81C7A2B9704CEB0B700EEB5C6E03C4
            74A54E0C08319F38156479F2C47E9441803D2E3706A2F03344AB15593F7C408A
            BA75906EEAA415F2FA75BCDDA5317EE982412973F24CAC7ED69CE1E6D3188AB0
            A49EDDD68F0488FC0AF63E4D26242B5A14291AD40BF598173123FB33C19FDC0E
            88200C453FDC2067591F3F51A0F400BDD9D8711320F22438EF49D148D9BC0952
            4F1C1BA9FCB15640F63D9C88AB4CE77E89A0E72D9E6C3A7CD4EE9E10DA607689
            00911FA539418036282D56D48C07A453310C391FD3FA52E4964004A58EF71FCE
            5CBCBC84B9FB87823DB49A8DD65804882E56BAF303F0A6D3BE0DD28C1C16A8A8
            579B5394032261643E75763AB56C659869F73EFB1186EC3A344E80E87AA55BCF
            9BCD485EBA94595EBDEA188F0551A28D58F159AF2A7406F854CA94A05ECC99B3
            2B2CB7EF7864A727070244172ABD311A0C48D9A903D28E1F3D5A5EF18758BECB
            88E8F3C55CBFE16D58101363DAB1CB6E11991D83520244D7EA1F9EB864E5CAA4
            CAEBD41EEE393B34293B0A4608B9351041FAD951ADCD3FFD9C60B9F56B6E9B54
            8A24D90045024417293D62052E4F55CFEE8CD67FC25059C96FE3F92E1F22D7C9
            72EFC1002A6AFE2A7AE3663918BAF1EE408300D17582B20447EE10B1E2FBF2EF
            144D1BF5D34DF1DF9F1D852294DC1E8820FD9CF98D9963C73698AFFF5A003E2E
            1BEE85471120BA40697E56C1BC5BD5A727A5F11B3F5056B8D066BECB86C8F5B2
            3C7DDE9D8A9E1F675CBF51C31E87E2D35F2801A2EB04E1E0204071C5F22FE58D
            1BF7D64D9AC0C9C9C897ACFF041041F4D2E535E86D7B122C777E2F0D5119F8B4
            3E2540748100864A1552F5EFFD4A33715C3F59DE3C9CCF7312894F96376F9B53
            F3162518D76DC88F4C463B14F91001A26B04ED5A2245B232DFDD557769D74F3D
            6AC485EC280CA1F59F0122C8B07089BF3169CB1C2BAE4C7C5ABE11207EA6D2BC
            FDC88A167DAA8D0CEBAB6ADEF404DF6542C4BF8C877F6A60981C986879F2A430
            6F5E5608105D23B026C57D98AA57B7495A9F319CF3F7A5EB3F05446AF5DA207A
            6D6288F5DE7D02443103110447658CC633EF5F3E6E590221CE1D1A9178855B9D
            47CE02C50E2295AA0E6FFB880488AE1100B16409A41ED4778666C8A0D0EC2808
            31E8BF05C4D8E533E8C48DC1D6070F0910C50E44BBAE6030B6CBF3E4EE33BECB
            84887FBD2D5ABA1006E11EFCCF2ABC3D8400D13502207EFB0D52F7ED19ACF11E
            11921D0521061120F220024497E90AFE69873B0C02443710AEDF85F02F02C4FF
            2B024411890091071120BA4C04886E24024487224014910810791001A2CB4480
            E84622407428024411890091071120BA4C04886E240244872240149108107910
            01A2CB4480E84622407428024411890091071120BA4C04886E24024487224014
            910810791001A2CB4480E84622407428024411890091071120BA4C04886E2402
            4487224014910810791001A2CB4480E84622407428024411890091071120BA4C
            04886E24024487224014910810791001A2CB4480E84622407428024411890091
            071120BA4C04886E24024487224014910810791001A2CB4480E8462240742802
            4411890091071120BA4C04886E24024487224014910810791001A2CB4480E846
            22407428024411890091071120BA4C04886E24024487224014910810791001A2
            CB4480E84622407428024411890091071120BA4C04886E240244872240149108
            10791001A2CB4480E84622407428024411890091071120BA4C04886E24024487
            224014910810791001A2CB4480E84622407428024411890091071120BA4C0488
            6E24024487224014910810791001A2CB4480E846224074280244118900910711
            20BA4C04886E24024487224014910810791001A2CB4480E84622407428024411
            890091071120BA4C04886E24024487224014910810791001A2CB4480E8462240
            7428024411890091071120BA4C04886E24024487224014910810791001A2CB44
            80E84622407428024411890091071120BA4C04886E2402448722401491081079
            1001A2CB4480E84622407428024411890091071120BA4C04886E240244872240
            14910810791001A2CB4480E84622407428024411890091071120BA4C04886E24
            024487224014910810791001A2CB4480E84622407428024411890091071120BA
            4C04886E24024487224014910810791001A2CB4480E846224074280244118900
            91071120BA4C04886E24024487224014910810791001A2CB4480E84622407428
            024411890091071120BA4C04886E24024487224014910810791001A2CB4480E8
            4622407428024411890091071120BA4C04886E24024487224014910810791001
            A2CB4480E84622407428024411890091071120BA4C04886E2402448722401491
            0810791001A2CB4480E84622407428024411890091071120BA4C04886E240244
            87224014910810791001A2CB4480E84622407428024411890091071120BA4C04
            886E24024487224014910810791001A2CB4480E8462240742802441189009107
            1120BA4C04886E24024487224014910810791001A2CB4480E846224074280244
            11890091071120BA4C04886E24024487224014910810791001A2CB4480E84622
            407428024411890091071120BA4C04886E24024487224014910810791001A2CB
            4480E84622407428024411890091071120BA4C04886E24024487224014910810
            791001A2CB4480E84622407428024411890091071120BA4C04886E2402448722
            4014910810791001A2CB4480E84622407428024411890091071120BA4C04886E
            24024487224014910810791001A2CB4480E84622407428024411890091071120
            BA4C04886E24024487224014910810791001A2CB4480E8462240742802441189
            0091071120BA4C04886E24024487224014910810791001A2CB4480E846224074
            28024411890091071120BA4C04886E24024487224014910810791001A2CB4480
            E84622407428024411890091071120BA4C04886E240244872240149108107910
            01A2CB4480E84622407428024411890091071120BA4C04886E24024487224014
            910810791001A2CB4480E84622407428024411890091071120BA4C04886E2402
            4487224014910810791001A2CB4480E84622407428024411890091071120BA4C
            04886E24024487224014910810791001A2CB4480E84622407428024411890091
            071120BA4C04886E24024487224014910810791001A2CB4480E8462240742802
            4411890091071120BA4C04886E24024487224014910810791001A2CB4480E846
            22407428024411890091071120BA4C04886E24024487224014910810791001A2
            CB4480E84622407428024411890091071120BA4C04886E240244872240149108
            10791001A2CB4480E84622407428024411890091071120BA4C04886E24024487
            224014910810791001A2CB4480E84622407428024411890091071120BA4C0488
            6E24024487224014910810791001A2CB4480E846224074280244118900910711
            20BA4C04886E24024487224014910810791001A2CB4480E84622407428024411
            890091071120BA4C04886E24024487224014910810791001A2CB4480E8462240
            7428024411890091071120BA4C04886E24024487224014910810791001A2CB44
            80E84622407428024411890091071120BA4C04886E2402448722401491081079
            1001A2CB4480E84622407428024411E9BF05C4986581F4BA0DA1D902C46F8A23
            59A58A2D3CD72C3BCC35DDDB82DFF8E25FD17C97030BC4AE9D913622AC2B06E2
            36CEE96C369D3161C316C3CCC856D904C4CB0880F8FCE173BECB84887FE1FA5D
            10D9815895B787FC1388D3271F50F5EB0D40D4734D8E81D8C51010B8D5B4757B
            7601D10FD7EFB95C2F4E193CB2B9E5DAF543CCC347D903C4FEBD8334A3478665
            47418841FF352046E019E264EB830718880ADE9E034094152F8EE4957E688B67
            88FBB8A6C323E84064B58642A3E653D06128BB7741DAD0A03EF2420537704E67
            B3E530AEDFB4C3103AABB1F5E54B7E8108F795487EC53FADF008FA4F5E0B8428
            5B84EB7711FC5D0FE09FF2BCD5F17420162880B441538FA9FAF4E88481F8916B
            72E6D9F3DE86A0D0F5A6CDDBECF59B4F411D974A8370FDE60C1C3C436CC35CBB
            B1D7F2886F209A3110BF85196224066200BF05211EFDA780C85CBEEA6DBE7BD7
            DBF6EE3D1EFE48F99BDA30168924574E9D2C57CE81CA362DCF704D6658BC7430
            522AA76228C2120F6FF9B399CC527999523245ED5A13A59E9E9C67B018885AEB
            6F77A24DBF5C6C863B1D3CCD54F25684B863D3E072B886F33A4E377EF42BFE1E
            44945DD22F88C92F512A16E1B6570957268AB707994C00330F65ADEA47A465CB
            F861201AB826B5A6A434379FFD651E73E70F0BCEAB95C7E290E072F0C0799DA5
            1D3B6A0DE757DB77B08E25F97D9C2DF9BD1EC965FCF56156AB44923BA75C51BA
            74ACBC6AE5581ECB4154FA4F011177E8B04E0ABD38AFEB7C6992E21F0A3746CE
            8D0AE74F867FC1B08FCF86982EF8F67456F2979647283F4536E411CA8FC1F933
            66435910659370FD51E15FD00EB3A3FE9871FD3165317F900EDA6076F511D006
            2D59CC9F06655F1F61C2F963B2E159A2D07F0A88444444444444198900918888
            888888081120121111111111B12240242222222222420488444444444444AC08
            108988888888881001221111111111112B024422222222222244804844444444
            44C48A00918888888888081120121111111111B192D86CB6FC9F900EFCFC7DE4
            EA67D20A8E6225925CC8EE03332B3E02A5387F2FA53C3AE2C6F7873CE5C53F5C
            FD094AD2AEFD80DFC9CCF1195EF8978AAF7770A158FF8FF8E77D56FC2B7E8AA0
            DEA58CF3B5C88B172B2CAF52A985E5EE3DADE5CA358BF5CD1BC4FC7607D9DEBC
            C325A6FCFFD134AC56242B5E0C498B1441D23CB991AC7A15A4A8515DCD5CBABC
            D566363F550F1908DFE54D567DB37EE63B40380488119495B28236F78ACF3A9D
            9637A86F5E594D867F92B3CB7725CE23F80CCDF189C9D3FD80BEE7F01CE87BA0
            3C3EA56E5871FAB77C7FAF4CF2FED527E4DB96563EC67F974F5A5FA44559ABB3
            D047BEC5F7A21DE40FFCD2C23DE5287BFCBFF22A89F9DA8DDBA6E3C7B9A7B0D8
            9054A7B349F3E50D5275E9C829969E7E76747EA4562620A9F41B64B3726B6CB4
            51222F594AAEECD2A101FE10BC0588B5BE79DDD27CFE522C73E396116954997F
            501B3BA19649743A4A56207F80AA43DB835C9E61BE71739BF9E793E56C565C78
            229E934B245285CD6279868CCC18DD14DF9BAEBE3F6E3C8D0C6111F9AC7F3DAB
            24F1F4E8683E7DD6647BFFE16B494EAFBC3606570B83012285B0E1B390C582FE
            4F88200C46890AF7690ADC366532DCA43548EAA1C3E07CFB4252B8F05B458D6A
            328997D77969EE5C075503FBFE82EBCC233ECB0A3A73F3F153B398DFEF76B4A5
            7CA4D97C39EB0FAC365CC432A9BC6891838A4EED27F0096F5CE7DA32D76F4659
            9F3DB32128B74CF386CBD968C4038E6F2C8AEA557BCBBE2DEEF26FEFA0FC72D3
            EBD6AFB4BE7C5D0E29E5B6ACF5A512246118057EAF37B2B26503554D1BFD94C9
            73A4C6B509FBACC9C925915462B665A5FD992D126981020665934683645F17BC
            C17799FC2BDF2AE6E499E9E65BB77AE3F6604232EE40965880E1482E2F55EA94
            B2EE8FA3247972FF3D70375FBFB9823977BE99F5E3470A973BB7FBC9E439F0A0
            73BC6EA2CFFF0413B73CF9B316EE3FE75BFE7C9A070FF51831F76FCE24CB9B1F
            49A835EB6C86E9C1DC52400765342169C102485EA5F208CFF8952BB8247BFB75
            89C2B8BE9FC79FB910B7E7E02B71C728D56A91A2419DCD1E6B570EC59D470A1F
            85C0DCBFDF930A9F9364DCB0194972E7CAFC62A892362B9216FE1ACF4EAAF5F6
            885D98C4E51974E2C65B86E941E56D4633E23BD6E1674B2249C6FFDB2ACF5FF7
            CFBBE2760041D38E5D1DCCA7CE94B13C79DADCF6FC85C4F2E809620B13830D37
            343B080172182A12281FF8B754FABF37C3B34400A50D7E0340715D946028B261
            A82CF8FF2B55485EB2044E2FBD27AB5CF9BCFCFBB247547D7BEDC3F77CE3EA62
            8250588619E1EB8D9B3677C49D3A92E8B49C6243B2C1A34B97426ABFF1F17840
            393A2BC16BB3223A21A93FBD665D3C73E91292E4F062EB6D86924891EDC307A4
            68D20869C679D7523669E8926F9F99A8F8C429F4D295B3ACF71EFCDF95002E82
            3A623221A4D3E0FEA1FE698FB895ADA519F40F004443E8ECE3F4B295F5801212
            47F52A23E17A26C17D906AC88024DDB4C9BDF92E937FCA7CF3D756F4DC85FB8D
            7BF723090433E79A6FA9C41E8FB56449A46CD6B49F3674FA867F0EBCA8B8C49F
            A9D9910DAD2FDF70AEB36CDD914A47E5F9EBC1B2FFC9E7858B4D0D510B763327
            4E6BE0D99CF32942C9BF2F0F408CB719A6CCE09622AD224ABF2A609357A934C8
            33714D3C97646F0B14FB0AA73D85FBC0929C7397F661A579F32245970E073C66
            87F5E6B23C9255310F1F75A48267EE30266D45925C3933BF182A0FFE91162EA4
            57D4ACDECF63D9E21D5C9E8147C2A70CD366D4FD228088D09FF8253BE479F9F8
            EAA7DE003A21E6EE1F8D4DF1EBBB5B9FBFE8C95CBAE2697DFF1ED93E7EC4D053
            228952911E1CD55E1EFF2E93CC1AE93FAF857FC3B5309B4CFB36363CD3C16363
            24F5F4C0039CDC166991C2BF2B6AD73AA4F11B7F09D71FCEC19039BCA3DA1018
            BACAB8796B1FEB8B576CC7E9B47381AC43367139C8AA5541DAC0806DCA664D86
            E37CBD7355BED245AFDBD0835E1DBF91B978310D889997290BC4668D2D188835
            954D1B5F76757EFE55765EA90386FD62DAB3BF0C82BAF029D30AA93D10B0BCE2
            0F1665CFAEBDB563BD376774299EC5B44C1DE7BBCD7CF4B856A2D371872F640B
            0FD86455AB983C1645B59797297388CF72F947F928A825CBE2E845B1BDADCF9E
            E3EFE709AB0BDCF28B078A36991CA9DAB4D8E4B96679CF7F5F822740FBA9D951
            ADAC2F5EDA07935CEE6BD7D03C2F1FADFEF77F345FBE52CF101EB58D3975261F
            FB1FBE642056F81E03312E01CF1043B8A5480762010CC4CA1507E319621C9764
            6F0B972C887F9DC23F25B29443781E452349FE7C48337ECCCFEA6183BABABAF3
            C040EC4485CDDE6EDCB48D3B10BF2E64C033C47E1E310BB67379069D9874C610
            1852DB66FA2280F814FF74C8F3F4DE954F49CC3C795ADDBC6BF76CE38EBD0DAC
            4F9EC8614F909DF9A5CD00B33413F81CC1CC130089CB5B5AF02BA8EC7A59954A
            73703D5A8D67137F7DEEED71A7A53104CF5C65DCB2BDB7F525472082D2206E7D
            F51A8FE01B23CDD449B1CA3A3F8E76F5EBD3891B7BD26BD72531972EE30E3507
            07207EC433C48616CD98917886D8E892ABF3F34F512BD62CA016C7FAD87019D8
            979A3F5169CBEAAA6E9DEFE8164435C77DC39F193E73E98A9D54D482F678C024
            C9521BB4E267E83C90B25BA73D1EE1219DF8DE5B07996FFDDA940A8B3862DCBE
            0B261F1CEB95FD97ED632A9257AF4AAB07F76DACEEDDEBDCFF94435CE2012A72
            6E4BEB4B0CC4AC0C0E101A86FB8455FF93D7CB57EA1B22E761209ECDCBE6E14B
            06223B43143310D967E21F038524450A23DD8CE997941DDBF6C395F28EAB0A81
            00F17FF4C940A4B7EF5A6C3A78640C06222E58AB7D29532ECB3E0866241835EB
            F5AC410EEE2C1E2BEAD599A81A3A7087F4338C003E1988FFBC07AED7B212DFBC
            D08C1E31523DB0DF2E57BEB2588168B972FD3BFDACA823CCD9B345D81C7D4E07
            0AF94E4945B2D22591D6C77B94AA4FAF65195D6A3318EAA68C1873CAB4730FAC
            1CD861CA4530A8C27D9EBC6A155A1B3A7DA0B246F54D7C958DFD713629356FF1
            7143F4FC7AECBE39D741249405452129FED6CA362D166B17CEF5716408448098
            B1BE0C20A6C9FAEE1D9257AA84B47E3E49AACE1D5CB69E4F80F83F8251360091
            F392A995A63BEA47F90C369DBFD8CE7AFF3E92E4CC8924B02FC47D39867FE186
            6AD31BF0C7C010AAF40352F5EA710883080657AF3FE5769F0D44E8C0602F94A2
            91B2617D936A50DF41AA766D5CB6A42B462042674F2F8A5D41AF891F62F9EB19
            92A8D59F7743684BB0974C1BF10CAEF3635D78486D69BE3C191AE0D1EB9356E8
            43660DB3BD7D97B5EF05CBF06A155276EDBCD7635E64175C674C7C940FC87CF3
            E6204340D01AD38933489A3BA77DDF9C8BF075363383E4B56BBED3054F6BA7A8
            5CE9ACA3CB780062BD3420E62340CC2E20C273E183A7A4205999EF2855DFDED3
            B5E346CD734521881A88308A8506915D1085B62141B09CD83ECF8B479C6688CC
            F55B63A9D86551C63DFB55080387DD978046C169B3DE667F3FF891C9FEFEFF36
            3CAB9448A4FFDB133066296B800ED7B2CB6588DD2FE45C3E701D18E58045252C
            A3B668FE8BBA4F8F1E8A2A959E64B9A85C3043FC3B3FB85E285B34336BC3674C
            90172F1693D5BC3892188168BE72A53A151AB1D77CF2747E04307445E709039D
            8FB85F28FC35528D1C3A553B66E4EC8C2EB5A6A696D14F9874CA98B831AF244F
            EE2C3D069E21AF51CDAC1E3270B0BA57B7443ECA07D7A9BC86E0F07DF4D2E535
            904C6EAFE75CD3429D2E5C18A9FAF75EA4F6193D3EA363222E07E2A5CBF50DB3
            A3B733274EE7F92CA31AD6A640F6692B4A302882349FD94F7E39404C7F367496
            1F3F2279CD1A4813E03B53D5B471E0679500123110AD569BC4CB4BC2565AD8C7
            C80E7B66BBD1470A9ED935CD75EDDC85CCB36795586EDCF2C78D2BC2B4FF9084
            B5589371ACCC5006B0C7073348851CEA1358893E9595FDEE83AC5C3964F9E3DE
            4ED3DEFDE7F1BB2BFE9946336684AF2DD5909BB97CD56A7D975C028FDC55D6E7
            CF594B55891C5FAAE4B0BC946E88C38EFAD54851BFCE15DDACD06EB262451F64
            A5A85C02C474B1474D8C48D5B7975517326DB8344FEED59F76A3FF2FB1011197
            97CC101EB9D49898348C2D2F0F0FD72DA543278CF3AFEADD5DAF8B5D5802CFE0
            5E669007A969C7AE0843C45C7FCBED3B76AB72AE333006DAA00DF62BAF6BA366
            3793AA559FB4B290994CC74F0E3384CC5A6EBE744522CD95C5D9A18541CA860D
            1E7B6E5CD708BFFFC38C2E753910AF5D6F4AC5AE3C68B970198F626DACC57296
            05FD0ED441BD1ED9DE7FC8D24020DD121856A538975706C293AD2F0888E9CF87
            8FFFF62D52346F8AB4C1D317E27C4CFB1CD375B1021177F25645B5AA8794AD5B
            5EB5A57CCC9A21C0A7CA8694B87242435FA79DECFB3CB34B2D0F1F4ED30786CD
            34EDDC8DCB2D57162CF770C57FFF9EADC4B22A958C8A1F6B3E94E6CFBF535EB7
            F632C5F7E51E43A795D9F9BCF4BF5B5EBDEE40AF8A6B6CB9F56B5DCB932755AC
            8FFF847D22DCC83DD206101C0450562991AA53877BDAE0293DA5B9F270B6AE74
            2910E17E78A608474E14756B5FD34EF36B23AF58E9B3CEDE8A0D88E6F3971A53
            E111474D3F9FB0D797CFECBCFE47B8FCA479F35935A1D357AB3BB51F9EE165F7
            1F7C472D8E3D45C76FC827D16AB2B4BA604B4D45F2F2E5916AC4106F4DBF5E4B
            5D997DA84FFA80A0DFE9E52B8BB0DF2B0BE5C3CE0E8B16B1A9C78C08D30C1A90
            E9910157039179FEBC38F3F3E93ED6278FA1F3347F523F2591D8241A8DCD78E0
            7065E6E2A5D6EC79632EC2EF2DF1F444AA017DEF4AF3E7DB82274B2C5A3FF113
            20E9575F7D61404CCF0396F5F51BA4EAD91569C67A0728AA568EFCD4DB891588
            F83A0B0647FFBC29AF5DB6AFE42A994FFF52865EBEE217D381C35EACE10CD765
            1268E4B8FEC01E9EBC72A5BDB2EA5522D5DDBA3CCECC3AD099704752905E97D8
            D27CEC642706F6309FBF40122FAE66EA12D6B0459AD30BA9870DFA5533D9179C
            40BCE5F85C970291CD0B3470991C293BB4BDAD9D34B1A3ECDBE27F7CEAEDC404
            445B4AAA463F67EE5663FC86D6089C2E283FC3B234B377C0032255BBD64F3D96
            2C6825F1D0DD727419AC6C980FFF1444CD8E0E662E5FC9DA600E96B7CD0C5277
            6A7757333DA0555657153293E9C8B170FDD4A000EBD3BFA4599A2141F93266A4
            6CDEEC0AEE8F5B383B73EB6A20BA526F3CF3F790E4F4DAC8354FF0BD65850B21
            4D68D01675C7F6DD5D91872F0F88E9F98099222E10798DEA7FAABD87F5567768
            77FA536E255A20DADD35F9E04AB8C42565E622611094A422E66EA5162FAD8818
            9861A9B82D53C21225CC0A4B9578A81E32C85FD5A3CB41571E4A877381C6B509
            338DDB77F9C22C440A67B7607F91CB6179D8FBCC9307A9470E99ABF31BEFC7F1
            79AE05625A39B1B35CB50A037AF043ED8C691D70197D92D7183101D178E27417
            6A66C456E6FC053C58F172DD52E9BF6532B216A49AC97E1B3483FAF5C9E832F0
            926308083C48C7275607C32609973A0C0247126FDFB24B6BDA00FF89AAAE1DE7
            BB22DB383F15F43E7E07E92DDB0B49B202C3B4FE18B729A49D39638AB2618308
            6749C40C44CC096FFC8BF31E3A6B555BB000D204F8EFD3F4EDD5D61579F83281
            98AE34A31345DB96CF3CE6CCEE2DCD93FB44566F41809835D1ABE3FDA815ABA3
            2CF7EE238946E33C011CA0068704461A8F629BFEAEF61ED155D9B0DE2DE7093F
            4DE64B57820D51F383CC070E49D87D2A8EFB9AD6376F91B26D2BA49938AEBBB2
            76AD2DCEAEE7058820A81F00457C3FF564DFC79AD123DA7D0A14C50244F075A9
            F79DBCCFB87E5373762581E32085BDC6645FD2CEC2C3D82312CA460DDEE862E6
            B797E5CB772EA34B4DC78E4F3084CD9EC75CBD6E0703D77689DFC18AA1A81939
            DCA08B9E05FB952F3EB78C70DF13669833773A2CFB83352B678141514A0AD2F8
            8CB9AF0B9EC6C9E9090162E6123710D30D2032134011FFA806F64FD64EF6ED27
            CD936B5F561E4180C85DE6078F8BD3B3220F9B76EF2D659348FFBFC7998C946E
            3C83AF51B66B6B5175EE505DD9BAF9277BC0E12AD389537E8690F020E6F2554F
            168A5CCADC62B77655F7EF7B513378401369D95299BA0AFC2C203AABD7D0D1A5
            EA91346F6EA46CD96C8DC7A27943B25A066201A271F7DE1E54D4828DCCCD5B28
            AB7B633073830E9FB548E5980E8088418834BE630FA8060DE896D12A046BD119
            12BECF189F58C366A059E32ECE82FDCA5C396DDAD961B1AA0E6DC77C4EF9584C
            4C59FDD809874CDB771601CB52899CE30C110FF4C0B983A25E6DA40B0DECAEA8
            55D3E9200E448098B9C40944F63966BB7F4A676795D29699A0C16827F9529A11
            835B4872E73EC5B5000810B9CB306F51081D9F18647DF8889B55579A2182AC5C
            59AB47CCC2A9F28ADFCFE7F30CD73F456FDD71988A886E6679F0D00E2B6782BC
            26BF47F29AD5917666F04445ADEA0B9D18F77C0210C1F3928175AD05CBA29996
            5FDAE85F8A3B7765E7768B3D22C2C765E9FD4500448806923A7AFC15E3E6ED25
            590316AE30B45971F9682CEA0963538CF1EB735A6EFF86247973DB072DCE045B
            2960B1DBBE8D591B3AADB7AC68B1AD195DCADCFE6D44EA38DF45969BB7955902
            62DA217855A7F6EF3C56C434FCD4656D101DBF7E9561EEC221D6274F580311EE
            87F0ED10D7FAF9FCAC99E8D3926BBB2240CC5CE20322DB89EA91ECDBE266FC1C
            85F9DA75BBD95066861B902FD807F2CA81E4756B1FF05CB7AA17AE201FB8E48D
            00919B6CAF5F9730442FBC4EC52CD749727971F2F102A3753C43B3A97A75DFE1
            111EDC255BF36BB315FBD0A1EB26E6D2D59A1247FE52FF2DF83B4DB37548D1A4
            D10A8F658BC76416DE2BCB404C3B2725AF52D96AFDEB29B2DC7B28657D543A9B
            61833FDF6245917AC490B5EAA18386728D90210620D2091B26D18B97CDB63C79
            2265974AB9286D10A568D9FCCF1C1BE2BAEAC7F9AEA6D76DF81E693448A29039
            AF7769DE6BA485BEC203E4897B5403FA767714B628ED1B2A0DD10BCED28B9656
            652D93B36221096D39774EA49BECB75A3DA8DFD04F291FCBE3C70D0C21B30F1A
            77EE56B3DB0F59B1787DFF1E29DBB4326B674CEB2A2FFBDD6EAECF2440CC5C22
            0422FE31337048F38876D1DCBDC615ABA633172EE5733A7A62979952F1CCC50B
            A97A76DBA30B0F19C2C50B0901A273B12174366DE9482D58B28D8D4E008DD759
            434A73BA2D2BF3DD7BD5F8315D351DDB1DCDEE7CD3499BE30D1173FB639873B3
            848565A8172F91BA5BE70FDA59212D64458B6418F521CB40B4B21103906AE8A0
            33B23CB9CFE299B63F73EB3692E6CDE3B41C5973FF0A15E0ECED76659B9600C5
            64A7EF2E3010218E5FEA50EF63A6BDFBCB72769E00DF08BFABF4EBAF916AD4B0
            295AEFE111A62347FD0DB3A3E730E72F2109786EE1D8815B5FBDC2DFB10BD2CE
            99D94DF6F5D719CF12EFDC6DA6F70BD8693E715A2BC9CAD93F64EF90952D9ABD
            F458BBA2B554A5CC92AB438896625C9B1067889CDB0D963E5987165C67875046
            050A20DDCC1987945D3AF6E03AF8071120662EF10131FD390C7336CFF38775A8
            853103E86D3BE3982B5791344F9ECC7D10A61DEE04B37BCDC4F12770E3869962
            A6E7E9440C448B4D6FE89737F919A710537C0A375E9D71F3B65D86C0D026E0AC
            9B53434A8B40A1EAD7E7866ECECCF6F83B3C1620DF753FB668BB87B9713B27E2
            B23793567FE465CB4243AB9063EB865B99DC3BEB40C4C055B46E71C473D9626F
            3A7EFD6E6A565459B66372365344B09C9B8CE4F5EBC07ED17679B5AA3D9D05A7
            161A88F4AAB8006A716CA8F5F90B057B3487DB076307C3CAB62DFFD4AD5ED644
            2A91FCC1BC78FE15151E75D4B4756739F6EF5CBF23CCF6F173B521D32FA8870C
            04C3A457197D473A76F9363C536C850C3437E70EE969190649BDBC90DAD7E780
            66D8A0F65909AC6CB9FFA08E7E7AF05ED3EE7D39D9A31F5910B441F590417A8D
            9F4F63F937C52F64252D0162E6122710D967A1F3D6776F3BE6D327BF30FD7CF2
            B07ED2D46696DFEFDACF0D650645308DFEF811490B15429A29FE17D47D7A0014
            333C2F245620DAAC56ABAC50C1BD8AB265AEDA8CB4E4933C40707A904D83F3B4
            C87353C2D38C2E319D3AADA597ADDE683E77BE1D1BBB90CBF21798B37BE5B02A
            6AD608F38C5B11CC4FE69D4B3F23EC211DB3A23867EB3D58693050483D6AF81C
            8FB0C0C91917DB2700512147AACE1D2E7BCC8FAA86D317A6E62EDA46AF5C5D03
            7C6B66BA57FEB797A61424AF52C9AAEADE79A066F4C884CC5E43482032145551
            3F64E461E6D8C9FC9CDD79A52F0F17FA0A66D1A3B563BD63D3FF8407633ED4E2
            A50B985F6F73EFC459976EF89D6AD540AAEE5D2AAB070FB896E1A779FFBEAEDE
            7FDA21E3966D5ACEFB7820D612D684E4F56AEBB55327F75254ABB2875B329B96
            9ABF788F61EEC2C6EC327D1622A5804F67191EB0E9A64D5AA3ECD86E4456200C
            2240CC5CE205228280C2A813FE08CF7105CA67DAB4758D216A7E5BCBEF7FD8C1
            E56CF914FC9E962E89148D1A06794484856574A9588108AD0669D4128992E319
            A94F95DD5D5BBDDCBF5DCDF01CE7BB02C53536A53201776E5D58BF815CDE0146
            CFDF97435A9FB1C1AA76AD385630D70A0E61A776EF3BD87CFEC2325C86724E4E
            2CD8653B3D52FB4F78A39BE2972FA3CB3E09887820A1EADAF1AAC7BC3955D8FF
            64B3E5D68FF7DB6ADEB6ABA1CD6892B0D0CEE81EACDF532B3B535434AC97AA1E
            3F7AB4AA45F375193D4E4820EAE72D5E688C5B378E7592C0D5EB08B247FF50B6
            687247BB785E6D79DEBC7F2F0BC31953BD8FDF7EE3AE3D8DC06046C22564549A
            85B34D2EB329BB745CEEB920DA2733C313E381839B0C13A77487A556C4BA4BE4
            B074CAAE2818D8656FF59811873563BDC1F177AAB364CCF59BEDF4D382779B8E
            FE8CA4F9F3718EBCC1BA28C4BFD583FABFD5CE0E857057598E48438098B9BE08
            20B22F6FB379514B57AEA6639677B1BE78E1FC0C1CECBDC088B36409A366409F
            208DF788398E2E132D10FFF13C7EFD98B2C61EB5F3FC753FC3335BCCDD3F1AE9
            C7F9269A4F9F2BC4D9FF2306A2AC4A45CA63F5F20079C1AF16F1F80299EA43EB
            8ECDAD4FFFDA6B7DF95A8194726E019FC0D9768FAE0F3D17CFFD36C352FB5420
            76C1409C6F07225B4C0FEEE7A2A316FD6CDCBBBF221B055EA5725ABED6D454A4
            6AD91C694302C7CABF2BE5708F592820327FFE55C310307DAFE9C8D17CEC2173
            2E07CDE1F930FB2D539A5176EFDA5BEB3BEE7F8E10501B37F7A6A316ACB53E7E
            A2746A79FECFFBC2FEEB0F155E6B83A6B556366990E17B593F7C286598157599
            9AB7D0539ABF40969A1CF8DFC48314B37666707745A51F76667AADCDE6699833
            EF14BD28B6225B17A5DC1F64B31FC23769A60544A85BB7E018D5FD5FE5488098
            A9BE1820B20560B3A90CD38263E9F51B07C30C90CB0765BDD954A984B4532685
            299B340CFAF7DF450DC4ECD38FB89C7FC9E88FCCD3BF4618FCA62C336DDD8124
            5F17E21E4B4E26BD98E7F1DD1A42BE18356F511B7AD79E9DD69BBFC9918E8331
            10FBC20C52346A703F47527C86879D5D0544F65E2929BD0D117313A885315289
            A7873D686E46504C3BC3687B978C547D7BE27AED3F49F64DF1A87F5F260410E1
            103EEE6C17526B13BC6D78A6C52E3F72399A03D6C8B86C148D1B1DD3064DEE2A
            2F552AD9C1BDB5290386EF359F3AD508C23D71052DBBA221C763A1F66D367BC6
            CCEF9149DE65A68387C3A9E05993CDD76FD8676E5C6789B8638699B066CCA8D3
            9A00DF3678E6F631A3CBCD57AE0D4F9D386989E5FA4D45961C9CB3465932082A
            7DC073EDF2D69FF27D40048899EB8B02220896C1F47E530F9BF7ED6F0ADE4532
            9D29A687D7497E8F1B5B03A49D1EB0585EAB86DF3F974E081059D5C6E59CF10C
            F1E1A3FE7ADF8078F3BE834852203F774B3C9A3E95E7CDD3FA42BE9871FBEEB6
            D48AD53B98F317E49C3B207C8DBC64C9075E270E95C8F812D701116479F5AAA7
            3E3074952969B30E96EC2499797461EB35C3FAD554B56AFE41D9AECD0FAA6E9D
            FF4F082B2180481F3E5AC9B86CE571F3A1235E6C105EAEC6296633EE53F29B94
            1DDAF5F5080BCAF08039BD6D473B2A3C2ACEFAFC796ECEFE3ED938987A242B5D
            1ABC10355477EB94A1372BFC4D2B526111870C8B630B409964C9A51BAE03CA96
            CD90363CD85B5EBEDCD20CEEAFC003FAF3D48A35952559F14883D2668765CB7C
            D44EF16BA56AD9FC6C9612FF43048899EB8B03225B10365B5D436474121DBBB2
            3032500869D44E3A0F0BEB9A4BD5B903D2844C5FACF8AEF4DF879C091059399B
            210EC533C495A6AD3BF10CF12B6E07A4F1C85C5EE1FBB7390EEF198E07209CCA
            890FE9BDC737335DBEBACFFAE081825D6AE3D201E00E5AD1AAC5FD1C712BB265
            86F8F7636FFFD6869A3567BD69FF412F76EF18AC33339B29B221B42C3665DBD6
            573D562FEB83CBF94EFA9FB31B8830833384CEDA4CAF5ED706823073F2710B62
            EC3621AAA10393B5532735956AB599EE8BA5FA4DF9D59898542ED3B2715456E0
            2DA959E3939E6B5734C8EC52D38993330CE17382995F2E642DA410F8F54512A4
            0DF0BBA3F619DDC09155ABF9F8A919FA4953832D0F1E65DE67FD5B16BB4196A2
            4DCB3539962ECAB2D7A27F8A0031737D9140640B0343513F79DA3A63D2D66F90
            D9645F66CA0C8AB8E1C1284B51BFEE1B75EF5EED55DD3AB233220244560D7039
            9FCCE88FCC9DDF6BEBC7FA26997FB95094F3592DDC59B35E5FE645CE56942C31
            55A817FBD0AC4D2BCB933F77DB3EA6C839CF2AC01F66AF1E0F3C174665DB0C31
            5DF4DA8406C6ADDBF7994F9DD5B1DE5D14991F03602364E0CE553DA0DF6D6D68
            205854DF60EFB37E534F7A4D7CB601D178F4E7E654E4BCFDCC854B3276D997EB
            99BA941424AF58016983A646E2E706384B62BE7A6DB67ECCC400CBAFBF219483
            C3926C7A39813568B932B4767AC01065D3C6194690C1DFB58C213CF2301DB3BC
            08BB35C015ECE0E3F4F51BA46C581F696705FB2A2A579AF7AFFBE6D1FBF89D37
            6DDB59C296F6EE9C24B57BA551D4A8AE57FBF9B450356A7026ABDFE69F2240CC
            5C5F2C1041A6EBB72AD2D1F3D79BF61D2C0F4E809D2D3341CC39C41EA66DFE42
            E3EFD34351B5CA490CC42E5458C456E3A6AD620322BC08B884821040598B0793
            35814DFC245CCEBF6774C16DFCFC02C5CB24E2CEB62774C09CCCE8E1507EF162
            3665974E7E5A3F9F79CE13B85EB02F442D8C3966080DAFCF2E97720D0995AA47
            BA59A16F34A386BADECAD4091041CCAFB7C3F53323A79A77EE414E23BBA79D9D
            846556ED84B10F3513C6F6C3DFE90C1DBFBE07BD6EFDC6EC00229C53D54F9DB1
            0BCFDC9A401D77EAE3363D1D1EA4821721F5B0C18FB521D3EBE37F3FE1F02C30
            4A394F47CE2BCB5AE5720D3D066D5F2A43AAAE1D0E792C9CDB32D34B7FFB7D4C
            AAEFE479E633671512CF1C59290A647DFF0169274F7C88C15BF59F0E144C070F
            2F308445F83077EFD9CB876B3F007132F100433D7AE40AADCFE81159CA8C0311
            2066AE2F1A8820D391A365A9956B8E9A8F9D28080771914C9AB12561FA263B2C
            9F74EFFC11378CF6CCE327466AC6CC73A6ED3BEDA16932FD02D9EEA966387EFF
            CF8E9EFEB9B23CFDCB935AB66A9F69D3D67AE0328AD3D223346439EE8006F6FD
            591B3A033AE9BF84C87BCA9051CF8D7BF77FC5C9543F5D189C9A51C326690303
            A232BA844F20E27BE7B45CC133A1E9C123CDE7CEDBA3CB6726D8277BFB0E498B
            15813377C7B433A63533AEDFD4865EBB6E777600D1B87B5F476ACEBCEDCCCD5B
            12769991ABD115746815BE377B44CE9CAEA8597D0EB744304BBC3E2E7582FF42
            CBE56BAC672A6E9DBADDEA5C5EB68C59E33BDE47D5B15D86017EA1FCA9E88587
            A8C5B135204A0B5270742C90E6945D5EBA24D22D8A9E8F677513D9FB99CCE552
            478FDF6BDCB1EBFFB5771D60511CED7F76AFDF512CD87BD4887F6389257F6389
            15C5DE3F3F54D48858BF442CB1800A22A2202028516C11BBD1A8D83E5440B0C5
            442CB1473131B145D1A808777BB777B7FBCDCCDD1962606FF6BC3346F93D0F8F
            0FB26DDEDD99DFBC33EFFB7B6BE1493BA98C1D1CCBF85CE8750EE85BA059FDE5
            FB1295EA37B213054C5E428882F8C7132282F9975F837591D10BE0AC18D06846
            2D54F2C75A9B0FFD553962E82D4D74E4B7F923C70C327CBD438E8494EDEA51BE
            46A51AF83301B67F95089BB90448BA4D9FB466A66EF192055809084D3CEC7524
            44007060942169AB2F9774A6DDDD5D56F2A938B069E93E054133764012F72495
            0E43F5EEA46DDB0079BFDE1FA9C706640BD8C4658468B3B961574A8C7E49E264
            D38FD72DC163F6726F21A9D15E654CF25E3D2315FE43CE6A6784EC31659F7129
            21222F5C1B34FDB27EEB766F4A6CE15F9E038A7F0FBEA88989EC06274CF745DC
            B3BC6E41D431FDB2A47A386D8174291C7B8934D200BD04FB6E674A26CD2DF6D0
            070F2668274E5ECA1E3B29A1C494A0424B9C3A3D508E1C96AB591C8984BFAFE9
            B7ED8861162F996ACEB9495E0F12BDCFA7CF005DB70E508D0B08568D095828CE
            B845A3841085F156102282F1FCC52F98453151EC81540AEB02DADB7B4195BBE1
            31AACF2702F3E52B3CBB7B2F8597A7DE1C427C63B44C11B4E10B1B188F9FBC6C
            3A7B1E762432650DFCC156AE0CD4C133E2957E0327BFCEE7C5C9DCD343F61BF6
            ECEB8412ED49D55278147C1530224F1D11DA5E52AAD40F02D7772921DAA08B59
            329BDDBC7D9EE9E79F693C980AED99A16F8BD103AA5245A0F4F7BB6338905ACD
            7CE192FD2A0AAF4088D03B9CA60B8F8CC295DE450878A349A9E4FFEA03481A53
            652D9A895E52379E3C35184E82B7B1E95980AE589ECC2BC5957118785F6FA00E
            1C3555317C48B1F745292486A4B5A7B591D11F22E216053446D6AA0934318BA2
            646D3EDE943F62F4776CCA3E0D7E0FA4FDDF5AB543DEBB478E66F6745F499D3A
            3F939D288C124214C65B4388086C46D6585D5C4282F9D4690516A016FAF67094
            9EC9B2848A0678120596779810399E2F953F78F85253D6317F5C2A87A41DA853
            1B8D40E1DBF59E2A34A4A7B44EAD1FEC9FE41C188F9EE8A78D58B8C574E19292
            22D1D2B49611A3CB97E7158307CED3848508768AD745880805415FCC61D38F84
            73B7EF5A960805CB46598230684F0FC063C5A602E1BD755BDB1D204454793E3F
            704286F1507A139BF74504DAB24FAB9AFCF945CD9C998DC5D8A2D0BD4BE9E62F
            DCA75FB9B68D25B08820C7D49AF388FE550EF3BBA19E37B717AD51DD28EE70EE
            C993FE05E326ED640F1E121771CAF1B87DCAB1A39EC8DAB6BE513061524BACB0
            431A598ADEDBB33C206DDE142883FE13A2E8D57D116995137B28214461BC5584
            88C0AC583D54BF6173A239E766299C472434705B5332F04741B2ECF20E132282
            313D7304139F986C389C0667E5158992AE2D25953C81DCA7538A6679BC5F71A5
            789C09EEF9F376DAC9D3D71A52F6D5B6EC2B93BD5B44DEB216CD9FA83E1BDF56
            EEEB7355F8F0D7478848A5C9B06DC7515D48586354AD9DC85334B096FD74920A
            F50E1222B3614BA861696298E9D73BE4126DD66569599BD640BD30BC8FAC6913
            E2D2452F834DCBF0616212769A4E9D76071E6E6427592BDE4B1B3504AAA941D3
            9403FBC60A1D0EFB6E8A76F6BC3EC8B3C44BA7A404820286DCDDE0805D1998AE
            5FB74C4A48FA3E266D489E121950057E9AAD0A0BF11153CDC21E4A0851186F1D
            212218FE7B701FD63D459BEE9E1E625EBA30DE71428403734D266E598A3E7E59
            634EA7852440D0A1ACA1F574A58ABC72F4A84DAA299F4D841D3C9FEC8E0E3D63
            372636612BB374B9275610210900C2FB6F79E8BD02CDC2F04C79EF9EFDEC0D42
            AF9310ADF7ABAD5FB17A039390D8CA522E4884CA893D384088F0792AE5FB8F4A
            63D38E34A0906748AA1C63B0A44829860D3EA45914D107DAD9E0E863A3885326
            2C622BB3F9EB1EE8FD1191B255289D7BF214A8C606683571D14D289ABA59DCE1
            DCD3A7BE055F84A4B05BB72BA8B2A5C922955FB4D560D11F15F9AEB077D8FA63
            A0090D1E2D6BD5D2A941752584288CB792106147F16277EF59AF8B5ED21D8B81
            93D61AB37FE1779A1011D80B97039990D068E3B113A52C7B220427D96AB855AD
            0214DDBBED52CF9C3A9B2A5DEA9AB39FCD743D67807EFBCE758615ABDCF11215
            C95EA7D58B456425EFE17B4D1DB7C847E2E1693722F67513A2F59ED574C17393
            0D5BBFE908BD6080F3149D01918488D4A2F4CB57C619923705996FFD425EADC1
            5A8142DAA23950CF993940FE499B57166C306CDCEC0B3DD55DA68B9755C491C4
            D6BD44384903EAD09004E5A07E410236971952F66DD3CD0EEBCFFFF6D0B2BDE2
            42B17DBCFC0B894A3936205D3D731A2A29C538F3FA2584288CB79210B1B1509D
            B3B5EB363309CBFBE1BD17BB35E7882EFACE13228261CFBEA54CECD2CF4C2860
            032D55919815C95BA102CE2A359077EF9A2BEBD2294939B09F4302C52F03BEEB
            064CF4923EEC77DFCF33651E9322E2C16441B2E783F639716E6A574E1D3A6BA8
            B47EBD6D84F77CED8468BD6FD9FC4FC7EE321ECEF804077B9046580A412421B2
            67CF35D52F8E3FCC6664961553CD028D1DE87B51F80FDBA59E3B6B98B306FBFC
            3113B7B3873306E1150131A408C959F1AF817AB76571AD28A5E27C71879A1E3C
            6CC644C79DD12F4BC203B09822C2A28096ED9178489BD60638610894356DB2F1
            D52FFA679410A230DE5A42C40683B33BED8C9024E3BED451E65C8241CBFE054B
            08119B81AFAA5FBD2E59171BDF897FF43BB9A782062194D88FB66C6BD50052EF
            7AE974F5AABBD5F343915CD739A1F23C453C4315EEE64FDEECA18CA1C63367BB
            9ACEFF5099437B594A3B92672F03ED71962FFF4CFD9FF153941302D789B8FFDF
            4288F85279CF3B3031F107F42BD7A8F01E2169308BD07B2124449466A18F5DBA
            54BF7ED304F3DD7BE22ABD3F7B06A4AD3E2E50CFFAA2BDBC7DDBB3AFF6D07FC0
            F87D7623DD9CF043A60B172B02D2BD3A9C33580050AA953A2C64BDE2DF83C614
            F7FDA11418F6507AAC2E747E108EDA2515FE160B14D857BA34D0CC99755CE137
            C8173E8FCED9B728214461BCD5848880C5C0C77D96643CF1ED18EEFE6FF643D0
            85504288854CC1AB7591D11B0DDB77F5E7EFDC050091A25533521036C175640B
            B914D065CA20CDD3E790284F491B7D705FDAA9035A85DD6158BAFC34EDED6DD1
            EB9449019B75142887F85595D4AE358DCD3C6AE6EFDEFB90D731B5E120A8E1F2
            2CDB7D2F82A8089F01554D90346A009423FDF7C29F3E22DBFFB71122BE9C56EB
            A79D362BC9B0738F078572F164E495DE8BB20729211AB3CF7E04DF7B9631ED88
            0AEFCF93068AA0C1AB6C5920EBEEBB4A13BB701C4DD34E5D77CC0F181FC7A61D
            09022623451EED4A5BD26C86F9E5BBAD5CD6011250B1240DDF777DEDCC39A9FA
            956B6B60552CACC6E3C40658B715E4BD7B16B87F95D49392488EBEFA45FF8A12
            4214C65B4F88D8703CDF4C9FB822551B195B0EA0601047974F4B08F12573F052
            267AC97AC3D73B86982E5F85B36D2F4B642369E001B2272247B4DF073D0D9440
            8EA242E187CE532A551EE5E94903CE12CE0F498787FF2FA7CB9456A11C52EEF1
            1380346C71D00C5A3624D686A42D5EAA810592C60D8DAAE9534E28BA771D2626
            31DCDAF6BF9510114C39377BE9C217261B0FA595C1769789F08C0B4304216AE7
            2F5AAFFF6AFD709CCE419A46608DE095366EF84031D4AFA76AE430A779873618
            CF9CF3871E5C92E9FB6C3571BD4404A4A8A4D600755478A67260FF8EC53781A7
            4DDF7E17A79D1B3EC9947D963CC19E04B6686C3861D04484ED560CECDBDFD9F6
            B1A1841085F14E1022361ECF37D785467CC3AC5B5F8342916E24B9697FBD4809
            21FEC5243C6DD8B86585E19B9431C6E32701850666929CB0C2B046FEBD4881B1
            CDF0D1EF368F4F26FBA3C2034DFF217F457A1FABDD518573B4AC2A6DD6F4AEAC
            479720D5D8C07447C2DADF044244608F64B583A4B8D674FE426D1CCD481378C8
            45D886841021E974816D3E643C7A1CE0F24EA4126DE89DC1C992A2578F359AC8
            79639D95535718F07D54D0AF5C93C144C634E0D1DEAA181B20B2EED02EDF7D59
            AC3F5DAEDC1E817BD4D285CDCFD4AF4EAE617B9F4E81D5FECA51C30BD451111D
            6885C2E102CDF6504288C2786708111B30F7E17B05C1F30EB087D2BC712715FB
            41971062B1306466F5D57FB97A1A7723A7B5F9B6352F4DE6A401C3290FC85A0A
            D156A90C94FE43CFA9FC068DA76B563FEDE8E5DE144244309E3CF539B3627502
            F4D4F19E98A0746151202044549C5B1F1BBF5F179FD819AF00902E4BA2E7806D
            A7AB57BFA18E08EDA0F0E928CA131703EEE9D33EF901E353D8F423804642FD24
            65CAB0018DD8E353CD9AF63D5A3A8784FDB0B8434D376E846B6785CD3166645A
            A2985FB57A0D561762B0B28D62C080BECAE993F63A7B39B9304A085118EF1421
            2218BF3BFD9E6E41D40E63F6D9A648699F2871D9861242B4631EBE1A93981460
            4C3F32D17CF5BA175F900F2C4B9E12CB008A7E5C18B28E81EC8B4C6CB6789CA8
            C209FA95824421EBD0EE77497DEF99AA8963B60B5535276CEB1B4388F059E4A6
            33E712B4F3178D331DC902C47B7B856C668F104D57AEF6D706876D37661D95D8
            150628FC6C886CDCDD817AF2A483AA8981DD9CD9EEBF9A98A3F4F189E9BAA8D8
            8EB86F93EEABA24863F89D485B34BBA79913EC23FBFFE6C5A6046149C0597397
            B35B777CCA1BF4AFE625DAF6B24D6620EFD3F3B0FBEA2FBBBAD23E082584280C
            8A59BFC971424C5E954CD4D06A751D27C43B394E254404F3AD9F4733314B5723
            31703C78A08F9AA483BF4C88894BC80871F336C709F14ECE3F86106D30E73E6A
            CFEEDE1B0C270215818E69C8DDBB870310B087A68083945CF1C2964E038D690F
            6B79E2F07BB4BF0507441A45B3D6F3BE25F7ED9C2E1FD43F4CEC5E6171C08438
            6F8163841817E55442B4C1B02F7531B32C719A29FB9CE57948BDB8C28438716C
            9184A88B5C7C8249486C2D6AAB01A736140059978E3AD857864ACA974B7145BB
            0BC374F5C78EBAF0C85476EF013955AEACF53BB37F1E226E1A12BD6250FF484D
            446888A09DD3323E606212D24D972E57B02B8B67CF3ED0EE920F1BEB140123BA
            AAFD879C70B57D98F59B1D27C43B39AE25C46A751D24C4690754439D4588ABD6
            F2DAA976EB725A8FA6B1FA02521D81B3A9511E3B3627939CF6D8A34225C073E2
            0991A2FA793DCF753A2122C08F790AECE4B1861D3B01258783A794C07BB11162
            B5AA3AD9C72DFDDDD7AD2423C4AF369CD47E31B3156F604513A257FEA37F1C21
            FE612EDE83591C3799CB7DD4CD947DBE1EFCB714D0EB000ED7576B2C4B4E6297
            F78A022AFE8C05BC294057AC00280F4F3469C997B56F7B4F52B37AB2BC6F6FE4
            11DE7272DB54DA19B3D718B66C1BC2FDF6C0FEE0622344BF7F9D774F5AE61242
            446056AE9ECBC42F9FC2FDF2ABA7C57B214998A7B0528FCCC7C7AC9E3AA9A5DC
            D7E74F84C81E3BFEB93668FA62D3A52B72E2401A3C7986DE61952AC06DC1DCC3
            F2C1837A8949AB7114686997495CB14917193D907FFC044E8C1464D1A0E81848
            8A920F1BDD9175ECD0CD2D72DE15A1C30B824397A1D41390F79C2612A728C23E
            3898AC94079A246D704B8C0FA4241297DB47B7EAAB54267C81AFE59B75032284
            CB03E158E452427CEC5E1E12222F821075B09F5702EAB9730FA802863B87100D
            FB5379FD4A11ED441A7D65CBF092BA754769428393494EC9EB35C0610FD173DF
            4E971022822123739461C3E678EEFE03779CBF66171642A4BCCAE9A4F5BDFDD5
            33A61011227B30ED241CA85A613171918408DBFF8F25441BE020555A17155B89
            7677EB6C3C75FA7D68EB4FCDBFDC5673B77E05BCB6C0F16527EB04052DC949EA
            D44662D667680FF7FDCA31A30050AB0FCB9A37BDEDAA3A8C58F861CDBA35C68C
            CC21FC93270028ED0412C18187A2A540DAF193F3EAA0CF5C468808CCC6ADBB8C
            FBFFDB0F170E264C8B00050540D2BC99197A482D652D9AFD8910B51151074DA7
            B3BB8A9DB8E0C8D2460D1F6A16450CA668CA25690445C1987DB68D7EF3B62CEE
            EA350910211C80563068373720EBD6E56B65C0C8D1F0DB2928EE588EE7CB6827
            065D85138F0A0E8923E0086B0ED035AAE72B7A75EF2DEFE19BF53A6C63387030
            15A9FB70BF3F056463DE0B04C2B1C8A5840879429487886A55525E6591D0C301
            45B72ECE2144EEFEFD4FCC377F223BDAD61FE40A9E77D3DC90376CF090E434E3
            D16332386C35811F1861663C45C301E71945D357646D5B1B9DD1D0E2607AFCB8
            31773DA734C5B21C0E5D177E2E4B08B9526EA6DC3C7E9435A8FF3BC93DCCBF3D
            686CCEF9C99342B331423E44B78187FE246BD7D66541087F17A0A7DC52BF651B
            30A6A69596756C17C63FCBFBC874F90AE01FE602F3AFB7713E5691CB7D683FD0
            AB0CF4D0AB01BA424520F1AE0B24EFD77D643E796AACCCA7F30369A7F67769A9
            E4CEEB6803DAAF32DFFAA51EC8CDAD08F406CE32280A1122409F3505CA957B2E
            ABFFFE79D2FB38645F9EAF6DFAE16215F0FC39E1F746D992C279AA5AD57352AF
            B2DAC27FD5CE09F796B66D558156A978628F02CD55A04DA4552AE7D1B56A5E70
            657B8B68BF044E725B71376E58721289E7A0B0873E85C34ED52A72C97B354FD3
            A54B0BEE339B1F3EFC88BB7C4D09640E1022DAE396CB29389163A9F2E5CEC0B1
            D1A5E3DC8BDBDEBFFF0177EBB617CF1A38CAEE7867330B2DE539EEAABC5DDB07
            AE7C3636EB5825E825D787DF9889AC311C2A564ED335AB3D9254AA7C85E81C3B
            F81F02C0ABB90FC1F67A0000000049454E44AE426082}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Top = 25.795300000000000000
          Width = 514.016080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'HISTORIAL DE DESCUENTOS DE PERSONAL CON INFONAVIT')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor1: TfrxMemoView
          Left = 120.944960000000000000
          Top = 45.354360000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor2: TfrxMemoView
          Left = 177.637910000000000000
          Top = 75.252010000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor3: TfrxMemoView
          Left = 177.637910000000000000
          Top = 94.149660000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor4: TfrxMemoView
          Left = 434.645950000000000000
          Top = 75.031540000000010000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 95.708720000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 120.944960000000000000
          Top = 75.252010000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 120.944960000000000000
          Top = 94.149660000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 377.953000000000000000
          Top = 75.031540000000010000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.929190000000010000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        DataSet = FrxCdDescuentosInfonavit
        DataSetName = 'FrxCdDescuentosInfonavit'
        RowCount = 0
        object FrxCdDescuentosInfonavitFechaNomina: TfrxMemoView
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'FechaNomina'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."FechaNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdDescuentosInfonavitFechaTerminoNomina: TfrxMemoView
          Left = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'FechaTerminoNomina'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."FechaTerminoNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdDescuentosInfonavitTitulo: TfrxMemoView
          Left = 219.212740000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."TituloNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdDescuentosInfonavitImporte: TfrxMemoView
          Left = 582.047620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."Importe"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        Condition = 'FrxCdDescuentosInfonavit."IdPersonal"'
        object Memo1: TfrxMemoView
          Top = 7.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Inicio N'#243'mina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#233'rmino N'#243'mina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 219.212740000000000000
          Top = 7.000000000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre de N'#243'mina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 582.047620000000000000
          Top = 7.000000000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Descuento')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 147.401670000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'FrxCdDescuentosInfonavit."IdPersonal"'
        ReprintOnNewPage = True
        StartNewPage = True
        object Shape1: TfrxShapeView
          Top = 72.133890000000010000
          Width = 718.110700000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Shape = skRoundRectangle
        end
        object Line3: TfrxLineView
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Width = 1.200000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 154.181200000000000000
          Top = 99.929133859999970000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Aplicaci'#243'n')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 282.685220000000000000
          Top = 99.929133859999970000
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#233'rmino')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 612.504330000000000000
          Top = 99.929133859999970000
          Width = 34.015770000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Factor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.252010000000000000
          Top = 99.929133859999970000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Cr'#233'dito ')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 408.189240000000000000
          Top = 99.929133859999970000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo Cr'#233'd. ')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitNumeroINfonavit: TfrxMemoView
          Left = 64.252010000000000000
          Top = 99.929133859999970000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'NumeroINfonavit'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."NumeroINfonavit"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitAplicacionInfonavit: TfrxMemoView
          Left = 204.094620000000000000
          Top = 99.929133859999970000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'AplicacionInfonavit'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."AplicacionInfonavit"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitTerminoInfonavit: TfrxMemoView
          Left = 328.819110000000000000
          Top = 99.929133859999970000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'TerminoInfonavit'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."TerminoInfonavit"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavittAplicacionInfonavit: TfrxMemoView
          Left = 468.661720000000000000
          Top = 99.929133859999970000
          Width = 139.842610000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'tAplicacionInfonavit'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."tAplicacionInfonavit"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitFactorInfonavit: TfrxMemoView
          Left = 646.299630000000000000
          Top = 99.929133859999970000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'FactorInfonavit'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."FactorInfonavit"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 141.283550000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Width = 1.200000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 77.252009999999970000
          Width = 710.551640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DETALLE DE CREDITO DE INFONAVIT')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = -0.015770000000003400
          Top = 3.779529999999994000
          Width = 718.110700000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 4.000000000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
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
          Left = 83.370130000000000000
          Top = 26.456709999999990000
          Width = 264.567100000000000000
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
        object FrxCdDescuentosInfonavitCodigoPersonal: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354362439999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CodigoPersonal'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."CodigoPersonal"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitNombreCompleto: TfrxMemoView
          Left = 83.149660000000000000
          Top = 45.354362439999990000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."NombreCompleto"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitNumeroSeguroSocial: TfrxMemoView
          Left = 347.716760000000000000
          Top = 45.354362439999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NumeroSeguroSocial'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."NumeroSeguroSocial"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 347.716760000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N.S.S.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 427.086890000000000000
          Top = 26.456709999999990000
          Width = 105.826840000000000000
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
        object FrxCdDescuentosInfonavitCurp: TfrxMemoView
          Left = 427.086890000000000000
          Top = 45.354362439999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Curp'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."Curp"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitTelefono: TfrxMemoView
          Left = 540.472790000000000000
          Top = 45.354362439999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Telefono'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."Telefono"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitCorreo: TfrxMemoView
          Left = 619.842920000000000000
          Top = 45.354362439999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Correo'
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdDescuentosInfonavit."Correo"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 540.472790000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tel'#233'fono')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 619.842920000000000000
          Top = 26.456709999999990000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Correo')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 710.551640000000000000
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
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 11.338590000000000000
        Top = 453.543600000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object FrxReportEmpleados: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41984.541588194400000000
    ReportOptions.LastChange = 41984.711107118050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnDblClickObject = FrxReportOtrosDblClickObject
    OnGetValue = FrxReportOtrosGetValue
    OnReportPrint = 'no '
    Left = 352
    Top = 328
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = frxDBDPersonal
        DataSetName = 'frxDBDPersonal'
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
      object ReportTitle1: TfrxReportTitle
        Height = 117.724490000000000000
        Top = 18.897650000000000000
        Width = 978.898270000000000000
        object Memo2: TfrxMemoView
          Width = 978.898270000000000000
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
            'EMPLEADOS')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor1: TfrxMemoView
          Left = 234.330860000000000000
          Top = 44.574830000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor2: TfrxMemoView
          Left = 347.716760000000000000
          Top = 74.472480000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor3: TfrxMemoView
          Left = 347.716760000000000000
          Top = 93.370130000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor4: TfrxMemoView
          Left = 604.724800000000000000
          Top = 74.252010000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor5: TfrxMemoView
          Left = 604.724800000000000000
          Top = 94.929190000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 291.023810000000000000
          Top = 74.472480000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 291.023810000000000000
          Top = 93.370130000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 548.031849999999900000
          Top = 74.252010000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 548.031849999999900000
          Top = 94.149660000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 234.330860000000000000
          Top = 21.236239999999990000
          Width = 514.016080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESUMEN DE EMPLEADOS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338582680000000000
        Top = 253.228510000000000000
        Width = 978.898270000000000000
        DataSet = frxDBDPersonal
        DataSetName = 'frxDBDPersonal'
        RowCount = 0
        object frxDBDPersonalNombreCompleto: TfrxMemoView
          Left = 68.031540000000000000
          Width = 124.724490000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'NombreCompleto'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."NombreCompleto"]')
          ParentFont = False
        end
        object frxDBDPersonalCodigoPersonal: TfrxMemoView
          Width = 68.031540000000010000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'CodigoPersonal'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."CodigoPersonal"]')
          ParentFont = False
        end
        object frxDBDPersonalnumerosegurosocial: TfrxMemoView
          Left = 192.756030000000000000
          Width = 52.913420000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'numerosegurosocial'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."numerosegurosocial"]')
          ParentFont = False
        end
        object frxDBDPersonalrfc: TfrxMemoView
          Left = 245.669450000000000000
          Width = 79.370130000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'rfc'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."rfc"]')
          ParentFont = False
        end
        object frxDBDPersonalcurp: TfrxMemoView
          Left = 325.039580000000000000
          Width = 79.370130000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'curp'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."curp"]')
          ParentFont = False
        end
        object frxDBDPersonalfechaalta: TfrxMemoView
          Left = 404.409710000000000000
          Width = 49.133890000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'fechaalta'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."fechaalta"]')
          ParentFont = False
        end
        object frxDBDPersonalFechaReingreso: TfrxMemoView
          Left = 453.543600000000000000
          Width = 49.133890000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'FechaReingreso'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."FechaReingreso"]')
          ParentFont = False
        end
        object frxDBDPersonalFechaBaja: TfrxMemoView
          Left = 502.677490000000000000
          Width = 49.133890000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'FechaBaja'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."FechaBaja"]')
          ParentFont = False
        end
        object frxDBDPersonalSalarioDiario: TfrxMemoView
          Left = 551.811380000000000000
          Width = 41.574830000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'SalarioDiario'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."SalarioDiario"]')
          ParentFont = False
        end
        object frxDBDPersonalSalarioIntegrado: TfrxMemoView
          Left = 593.386210000000000000
          Width = 41.574830000000000000
          Height = 11.338582677165400000
          ShowHint = False
          DataField = 'SalarioIntegrado'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPersonal."SalarioIntegrado"]')
          ParentFont = False
        end
        object frxDBDPersonalnumeroinfonavit: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataField = 'numeroinfonavit'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."numeroinfonavit"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 718.110700000000000000
          Width = 52.913420000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."RegistroPatronal"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 771.024120000000000000
          Width = 124.724490000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."NombreOrganizacion"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 895.748610000000000000
          Width = 83.149660000000000000
          Height = 11.338582680000000000
          ShowHint = False
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."TituloCargo"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 34.015760240000000000
        Top = 196.535560000000000000
        Width = 978.898270000000000000
        Condition = 'frxDBDPersonal."IdTiponomina"'
        object Line2: TfrxLineView
          Top = 20.456710000000020000
          Width = 1148.977120000000000000
          Visible = False
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object frxDBDPersonalTitulo: TfrxMemoView
          Left = 68.031540000000010000
          Top = 3.779529999999994000
          Width = 910.866730000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          DataField = 'Titulo'
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibr'#237
          Font.Style = [fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[frxDBDPersonal."Titulo"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 3.779529999999994000
          Width = 68.031540000000010000
          Height = 15.118110240000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibr'#237
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tipo N'#243'mina:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 68.031540000000010000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Empleado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 18.897650000000000000
          Width = 68.031540000000010000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 192.756030000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N.S.S.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 245.669450000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'R.F.C.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 325.039580000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C.U.R.P.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Registro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Alta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 502.677490000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Baja')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'S.D.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 593.386210000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'S.D.I.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 634.961040000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Cred. Infonavit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 718.110700000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Reg. Pat.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 771.024120000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Organizaci'#243'n')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 895.748610000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 12615680
          DataSet = frxDBDPersonal
          DataSetName = 'frxDBDPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Puesto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 45.354360000000000000
        Top = 287.244280000000000000
        Width = 978.898270000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 393.071120000000000000
        Width = 978.898270000000000000
      end
    end
  end
  object FrxReportFiniquitos: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41981.393938935200000000
    ReportOptions.LastChange = 42034.821883159720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'no '
    Left = 344
    Top = 264
    Datasets = <
      item
        DataSet = FrxCdDatosEmpresa
        DataSetName = 'FrxCdDatosEmpresa'
      end
      item
        DataSet = FrxCdFiniquitos
        DataSetName = 'FrxCdFiniquitos'
      end
      item
        DataSet = FrxCdImagen
        DataSetName = 'FrxCdImagen'
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
      object ReportTitle1: TfrxReportTitle
        Height = 114.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = -7.559060000000000000
          Top = 0.779530000000001200
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
            'HISTORIAL DE MOVIMIENTO DE FINIQUITOS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Top = 25.795300000000000000
          Width = 514.016080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'FINIQUITOS GENERADOS Y CALCULADOS EN EL SISTEMA')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor1: TfrxMemoView
          Left = 120.944960000000000000
          Top = 45.354360000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor1'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor1"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor2: TfrxMemoView
          Left = 177.637910000000000000
          Top = 75.252010000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor2'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor2"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor3: TfrxMemoView
          Left = 177.637910000000000000
          Top = 94.149660000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor3'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor3"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor4: TfrxMemoView
          Left = 434.645950000000000000
          Top = 75.031540000000010000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor4'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor4"]')
          ParentFont = False
        end
        object FrxCdDatosEmpresavalor5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 95.708720000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor5'
          DataSet = FrxCdDatosEmpresa
          DataSetName = 'FrxCdDatosEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[FrxCdDatosEmpresa."valor5"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 120.944960000000000000
          Top = 75.252010000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Calle:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 120.944960000000000000
          Top = 94.149660000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colonia:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 377.953000000000000000
          Top = 75.031540000000010000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ciudad:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.929190000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 83.149660000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = FrxCdImagen
          DataSetName = 'FrxCdImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        Condition = 'FrxCdFiniquitos."IdPersonal"'
        object Memo1: TfrxMemoView
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Inicio N'#243'mina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#233'rmino N'#243'mina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 219.212740000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Nombre de N'#243'mina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 582.047620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Top = 3.779530000000022000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 1.200000000000000000
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        Height = 18.897650000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        DataSet = FrxCdFiniquitos
        DataSetName = 'FrxCdFiniquitos'
        RowCount = 0
        object FrxCdDescuentosInfonavitFechaNomina: TfrxMemoView
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdFiniquitos."FechaNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdDescuentosInfonavitFechaTerminoNomina: TfrxMemoView
          Left = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdFiniquitos."FechaTerminoNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdDescuentosInfonavitTitulo: TfrxMemoView
          Left = 219.212740000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[FrxCdFiniquitos."TituloNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FrxCdDescuentosInfonavitImporte: TfrxMemoView
          Left = 582.047620000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clWhite
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          DisplayFormat.ThousandSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[FrxCdFiniquitos."Importe"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 102.047312440000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'FrxCdFiniquitos."IdPersonal"'
        object Shape1: TfrxShapeView
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Height = 94.488250000000000000
          ShowHint = False
        end
        object Line3: TfrxLineView
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 1.200000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 0.220470000000000000
          Top = 26.456709999999990000
          Width = 340.157700000000000000
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
        object FrxCdDescuentosInfonavitCodigoPersonal: TfrxMemoView
          Top = 45.354362439999990000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."CodigoPersonal"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitNombreCompleto: TfrxMemoView
          Top = 7.559062439999991000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 12615680
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."NombreCompleto"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitNumeroSeguroSocial: TfrxMemoView
          Left = 340.157700000000000000
          Top = 45.354362439999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."NumeroSeguroSocial"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 340.157700000000000000
          Top = 26.456709999999990000
          Width = 79.370130000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N.S.S.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 419.527830000000000000
          Top = 26.456709999999990000
          Width = 105.826840000000000000
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
        object FrxCdDescuentosInfonavitCurp: TfrxMemoView
          Left = 419.527830000000000000
          Top = 45.354362439999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."Curp"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitTelefono: TfrxMemoView
          Left = 525.354670000000000000
          Top = 45.354362439999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."Telefono"]')
          ParentFont = False
        end
        object FrxCdDescuentosInfonavitCorreo: TfrxMemoView
          Top = 83.149662439999990000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."Correo"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 525.354670000000000000
          Top = 26.456709999999990000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tel'#233'fono')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 64.252009999999990000
          Width = 340.157700000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Correo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 623.622450000000000000
          Top = 26.456709999999990000
          Width = 94.488250000000000000
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
        object Memo8: TfrxMemoView
          Left = 340.157700000000000000
          Top = 64.252009999999990000
          Width = 185.196970000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha de Ingreso/Reingreso')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 623.622450000000000000
          Top = 45.354360000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."RFC"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 525.354670000000000000
          Top = 64.252009999999990000
          Width = 192.756030000000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = 5855577
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha de Baja')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 340.157700000000000000
          Top = 83.149659999999990000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          DisplayFormat.FormatStr = 'mm.dd.aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."reingreso"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 525.354670000000100000
          Top = 83.149659999999990000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxCdDescuentosInfonavit
          DataSetName = 'FrxCdDescuentosInfonavit'
          DisplayFormat.FormatStr = 'dd mmm aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FrxCdFiniquitos."Baja"]')
          ParentFont = False
        end
      end
    end
  end
  object CdFiniquitos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 112
  end
  object FrxCdFiniquitos: TfrxDBDataset
    UserName = 'FrxCdFiniquitos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdPersonal=IdPersonal'
      'CodigoPersonal=CodigoPersonal'
      'NombreCompleto=NombreCompleto'
      'numerosegurosocial=numerosegurosocial'
      'Curp=Curp'
      'rfc=rfc'
      'Correo=correo'
      'telefono=telefono'
      'Infonavit=Infonavit'
      'IdNomina=IdNomina'
      'TituloNomina=TituloNomina'
      'FechaNomina=FechaNomina'
      'FechaTerminoNomina=FechaTerminoNomina'
      'Reingreso=Reingreso'
      'Baja=Baja'
      'importe=importe')
    DataSet = CdFiniquitos
    BCDToCurrency = False
    Left = 360
    Top = 216
  end
  object CdImagen: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    Top = 208
  end
  object FrxCdImagen: TfrxDBDataset
    UserName = 'FrxCdImagen'
    CloseDataSource = False
    FieldAliases.Strings = (
      'imagen1=imagen1')
    DataSet = CdImagen
    BCDToCurrency = False
    Left = 304
    Top = 224
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxprprtstr1'
    Left = 592
    Top = 88
  end
  object cxgrdpmn1: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtNavigator, gvhtPreview, gvhtColumnHeader, gvhtColumnHeaderFilterButton, gvhtFilter, gvhtGroupByBox, gvhtIndicator]
        Index = 0
      end>
    Left = 256
    Top = 200
  end
  object cdDoctosPostulante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 920
    Top = 64
  end
  object dsDoctosPostulante: TDataSource
    DataSet = cdMemoryDoctos
    Left = 856
    Top = 48
  end
  object dxDockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 768
    Top = 40
    PixelsPerInch = 96
  end
  object cdMemoryDoctos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 80
  end
  object StyleDocumentacion: TcxStyleRepository
    Left = 664
    Top = 328
    PixelsPerInch = 96
    object StyleRegistroGris: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14803425
      TextColor = clBlack
    end
    object StyleGeneral: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
  end
end
