object FrmRangoSalarios: TFrmRangoSalarios
  Left = 0
  Top = 0
  Caption = 'Rango de Salarios'
  ClientHeight = 562
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 520
    Width = 754
    Height = 42
    Align = alBottom
    TabOrder = 0
  end
  object tsPeriodos: TAdvTabSet
    Left = 0
    Top = 499
    Width = 754
    Height = 21
    Version = '1.7.1.3'
    Align = alBottom
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    AdvTabs = <>
    FreeOnClose = False
    SelectedColorTo = clHotLight
    GradientDirection = gdVertical
    TabMargin.LeftMargin = 2
    TabMargin.TopMargin = 2
    TabMargin.RightMargin = 0
    TabOverlap = 0
    TabPosition = pBottom
    ShowScroller = ssAuto
    OnChange = tsPeriodosChange
  end
  object Panel2: TPanel
    Left = 0
    Top = 127
    Width = 754
    Height = 72
    Align = alTop
    BevelEdges = []
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    object JvLabel4: TJvLabel
      Left = 12
      Top = 41
      Width = 80
      Height = 13
      Caption = 'Tipo de Rangos:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblGrupos: TJvLabel
      Left = 380
      Top = 14
      Width = 35
      Height = 13
      Caption = 'Grupo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object jvlbl2: TJvLabel
      Left = 45
      Top = 14
      Width = 47
      Height = 13
      Caption = 'Empresa:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cbTiposNomina: TComboBox
      Left = 98
      Top = 38
      Width = 276
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbTiposNominaChange
    end
    object cbOrganizacion: TComboBox
      Left = 98
      Top = 11
      Width = 276
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbOrganizacionChange
    end
    object cbGrupoSalario: TListBox
      Left = 421
      Top = 14
      Width = 171
      Height = 48
      BorderStyle = bsNone
      Color = clMenu
      Ctl3D = False
      ExtendedSelect = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      OnDrawItem = cbGrupoSalarioDrawItem
    end
  end
  object Panel_Progress: TPanel
    Left = 410
    Top = 221
    Width = 182
    Height = 138
    TabOrder = 5
    Visible = False
    object lblTitulo: TJvLabel
      Left = 21
      Top = 13
      Width = 51
      Height = 16
      Caption = 'lblTitulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblLeyenda1: TJvLabel
      Left = 21
      Top = 35
      Width = 59
      Height = 13
      Caption = 'lblLeyenda1'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lblLeyenda2: TJvLabel
      Left = 21
      Top = 54
      Width = 59
      Height = 13
      Caption = 'lblLeyenda2'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Panel5: TPanel
      Left = 1
      Top = 112
      Width = 180
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Right = 8
      Padding.Bottom = 8
      TabOrder = 0
      object pbNomina: TProgressBar
        Left = 10
        Top = 0
        Width = 162
        Height = 17
        Align = alClient
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 87
      Width = 180
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Right = 8
      Padding.Bottom = 8
      TabOrder = 1
      object pbCompleto: TProgressBar
        Left = 10
        Top = 0
        Width = 162
        Height = 17
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 199
    Width = 754
    Height = 300
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object DBGridDatos: TNextDBGrid
      Left = 0
      Top = 0
      Width = 754
      Height = 300
      Align = alClient
      HeaderStyle = hsOffice2010
      Options = [goDisableColumnMoving, goGrid, goHeader, goMultiSelect, goSelectFullRow]
      PopupMenu = pmRangoSalarios
      TabOrder = 0
      TabStop = True
      DataSource = dsRango
      object nxCheck1: TNxDBCheckBoxColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Seleccionar'
        ParentFont = False
        Position = 0
        SortType = stBoolean
        Visible = False
      end
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Titulo'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 150
        FieldName = 'Titulo'
        MultiLine = True
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Importe'
        Header.Alignment = taRightJustify
        ParentFont = False
        Position = 2
        SortType = stNumeric
        FieldName = 'Importe'
        FormatMask = '##,###,###,##0.00'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBNumberColumn2: TNxDBNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Periodo'
        ParentFont = False
        Position = 3
        SortType = stNumeric
        FieldName = 'Periodo'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBNumberColumn4: TNxDBDateColumn
        Alignment = taRightJustify
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Aplicaci'#243'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stDate
        FieldName = 'FechaAplicacion'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxColumnIdRango: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Visible = False
        FieldName = 'IdRangoSalarios'
      end
    end
  end
  object Panel_DatosLinea: TPanel
    Left = 336
    Top = 293
    Width = 370
    Height = 88
    BevelOuter = bvNone
    TabOrder = 2
    Visible = False
    object JvLabel1: TJvLabel
      Left = 23
      Top = 36
      Width = 44
      Height = 13
      Caption = 'Importe:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 22
      Top = 63
      Width = 45
      Height = 13
      Caption = 'Durante:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 35
      Top = 10
      Width = 32
      Height = 13
      Caption = 'T'#237'tulo:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object eImporte: TMoneyEdit
      Left = 73
      Top = 36
      Width = 121
      Height = 21
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
      TabOrder = 1
      Version = '1.1.1.0'
    end
    object eDurante: TMoneyEdit
      Left = 289
      Top = 63
      Width = 64
      Height = 21
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
      TabOrder = 2
      Visible = False
      Version = '1.1.1.0'
    end
    object eTitulo: TEdit
      Left = 73
      Top = 10
      Width = 216
      Height = 21
      MaxLength = 50
      TabOrder = 0
    end
    object cbbMoneda: TDBLookupComboBox
      Left = 200
      Top = 36
      Width = 161
      Height = 21
      DataField = 'IdMoneda'
      DataSource = dsRango
      KeyField = 'IdMoneda'
      ListField = 'TituloMoneda'
      ListSource = dsMoneda
      TabOrder = 3
    end
    object cxDateAplicacion: TcxDateEdit
      Left = 73
      Top = 63
      TabOrder = 4
      Width = 210
    end
  end
  object Panel_BotonesLinea: TPanel
    Left = 360
    Top = 387
    Width = 370
    Height = 41
    BevelOuter = bvNone
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 3
    Visible = False
    object Btn_AgregarLinea: TcxButton
      AlignWithMargins = True
      Left = 52
      Top = 6
      Width = 100
      Height = 29
      Align = alRight
      Caption = '&Agregar'
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000003000000080000000C0000
        000E0000000D0000000800000003000000010000000000000000000000020000
        000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
        48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
        43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
        8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
        5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
        5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
        62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
        FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
        66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
        EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
        69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
        EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
        6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
        F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
        71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
        D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
        77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
        74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
        7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
        FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
        7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
        82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
        82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
        F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
        85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
        89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
        FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
        67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
        87FFC79887FFC89886FF927063BF000000020000000000000000}
      TabOrder = 0
      OnClick = Btn_AgregarLineaClick
    end
    object Btn_AceptarLinea: TcxButton
      AlignWithMargins = True
      Left = 158
      Top = 6
      Width = 100
      Height = 29
      Align = alRight
      Caption = '&Aceptar'
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
      TabOrder = 1
      OnClick = Btn_AgregarLineaClick
    end
    object Btn_CerrarLinea: TcxButton
      AlignWithMargins = True
      Left = 264
      Top = 6
      Width = 100
      Height = 29
      Align = alRight
      Caption = '&Cerrar'
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
      TabOrder = 2
    end
  end
  object DxRibbonRango: TdxRibbon
    Left = 0
    Top = 0
    Width = 754
    Height = 127
    BarManager = dxbrmngr1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 7
    TabStop = False
    object DxRibbonRangoTab1: TdxRibbonTab
      Active = True
      Caption = 'Proceso de Rango de Salarios'
      Groups = <
        item
        end
        item
        end
        item
          ToolbarName = 'Paneldxbrmngr1Bar1'
        end>
      Index = 0
    end
  end
  object pnlAplicacion: TPanel
    Left = 30
    Top = 275
    Width = 275
    Height = 92
    TabOrder = 12
    Visible = False
    object JvLabel5: TJvLabel
      Left = 6
      Top = 16
      Width = 57
      Height = 13
      Caption = 'A partir de:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object cxButton1: TcxButton
      Left = 71
      Top = 55
      Width = 90
      Height = 25
      Align = alCustom
      Caption = '&Aceptar'
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
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 167
      Top = 55
      Width = 90
      Height = 25
      Align = alCustom
      Caption = '&Cerrar'
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
    object cxDateApl: TcxDateEdit
      Left = 69
      Top = 15
      TabOrder = 2
      Width = 198
    end
  end
  object cdRango: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdRangoAfterOpen
    BeforeScroll = cdRangoBeforeScroll
    AfterRefresh = cdRangoAfterRefresh
    OnCalcFields = cdRangoCalcFields
    Left = 616
    Top = 72
  end
  object cdHistorial: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 72
  end
  object cdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdTipoNominaAfterScroll
    Left = 664
    Top = 40
  end
  object cdSalarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 24
  end
  object cdGrupoSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 128
  end
  object cdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdOrganizacionAfterScroll
    Left = 616
    Top = 24
  end
  object dsRango: TDataSource
    DataSet = cdRango
    Left = 664
    Top = 136
  end
  object cdSalarioUpt: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 80
  end
  object RepoSalarios: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41542.502608275500000000
    ReportOptions.LastChange = 42116.721951307870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 560
    Top = 32
    Datasets = <
      item
        DataSet = fdsSalarios
        DataSetName = 'fdsSalarios'
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
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 122
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 128.504020000000000000
        Top = 79.370130000000000000
        Width = 740.787880000000000000
        Condition = 'fdsSalarios."IdGrupoSalario"'
        KeepTogether = True
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          Left = 408.189240000000000000
          Top = 113.385900000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'NETO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 177.637910000000000000
          Top = 41.574830000000010000
          Width = 502.677490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'MODIFICACIONES SALARIO [fdsSalarios."FechaAplicacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 177.637910000000000000
          Top = 60.472480000000000000
          Width = 502.677490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'PLATAFORMAS  CD. DEL CARMEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 177.637910000000000000
          Top = 79.370130000000000000
          Width = 502.677490000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."Leyenda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 476.220780000000000000
          Top = 113.385900000000000000
          Width = 60.472406770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '*S.D.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 68.031466770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '*S.D.I.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 600.945270000000000000
          Top = 113.385900000000000000
          Width = 79.370056770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'AGUINALDO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Left = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 90.708720000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.100000000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object ReporteOrganizacionReporteOrganizacion: TfrxMemoView
          Left = 177.637910000000000000
          Width = 502.677490000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."TituloOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object ReporteOrganizacionReporteOrganizacion1: TfrxMemoView
          Left = 60.472480000000000000
          Top = 90.708720000000010000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = frxOrganizacion
          DataSetName = 'ReporteOrganizacion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ReporteOrganizacion."NombreOrganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 328.819110000000000000
          Top = 113.385900000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Vacaciones')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 260.787570000000000000
          Top = 113.385900000000000000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Prima Vac.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 60.472480000000000000
          Top = 113.385900000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'T'#237'tulo de Salario')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 740.787880000000000000
        DataSet = fdsSalarios
        DataSetName = 'fdsSalarios'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 408.189240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."Neto"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."Salario"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 536.693260000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."SalarioIntegrado"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 600.945270000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."Aguinaldo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsSalariosVacaciones: TfrxMemoView
          Left = 328.819110000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Vacaciones'
          DataSet = fdsSalarios
          DataSetName = 'fdsSalarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."Vacaciones"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsSalariosPrimaVacacional: TfrxMemoView
          Left = 260.787570000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PrimaVacacional'
          DataSet = fdsSalarios
          DataSetName = 'fdsSalarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."PrimaVacacional"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdsSalariosTituloSalario: TfrxMemoView
          Left = 60.472480000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'TituloSalario'
          DataSet = fdsSalarios
          DataSetName = 'fdsSalarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[fdsSalarios."TituloSalario"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 37.795300000000000000
        Top = 272.126160000000000000
        Width = 740.787880000000000000
        object Memo12: TfrxMemoView
          Left = 60.472480000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 60.472480000000000000
        Top = 370.393940000000000000
        Width = 740.787880000000000000
        object Memo13: TfrxMemoView
          Left = 468.661720000000000000
          Top = 41.574830000000080000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 60.472480000000000000
          Top = 15.118119999999980000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            'S.D. = Salario Diario.'
            'S.D.I. = Salario Diario Integrado.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 60.472480000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '*Notas Adicionales')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 18.897650000000000000
        Width = 740.787880000000000000
      end
    end
  end
  object fdsSalarios: TfrxDBDataset
    UserName = 'fdsSalarios'
    CloseDataSource = False
    FieldAliases.Strings = (
      'fechaaplicacion=FechaAplicacion'
      'idsalario=IdSalario'
      'IdTipoNomina=IdTipoNomina'
      'IdOrganizacion=IdOrganizacion'
      'TipoSalario=TipoSalario'
      'IdLlave=IdLlave'
      'Salario=Salario'
      'Vacaciones=Vacaciones'
      'PrimaVacacional=PrimaVacacional'
      'Aguinaldo=Aguinaldo'
      'SalarioIntegrado=SalarioIntegrado'
      'CodigoSalario=CodigoSalario'
      'TituloSalario=TituloSalario'
      'IdMoneda=IdMoneda'
      'Fecharegistro=FechaRegistro'
      'FechaModificacion=FechaModificacion'
      'IdUsuarioModificacion=IdUsuarioModificacion'
      'IdGrupoSalario=IdGrupoSalario'
      'IdRangoSalarios=IdRangoSalarios'
      'CodigoMoneda=CodigoMoneda'
      'TituloMoneda=TituloMoneda'
      'Simbolo=Simbolo'
      'Decimales=Decimales'
      'Domingos=Domingos'
      'Festivos=Festivos'
      'TituloGrupoSalario=TituloGrupoSalario'
      'Neto=Neto'
      'Leyenda=Leyenda')
    DataSet = cdSalarios
    BCDToCurrency = False
    Left = 712
    Top = 168
  end
  object cdMoneda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 712
    Top = 120
  end
  object dsMoneda: TDataSource
    DataSet = cdMoneda
    Left = 616
    Top = 120
  end
  object cdSalMinDF: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 88
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
    ImageOptions.LargeImages = Form2.cxImageResIconosTodos24
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 664
    Top = 184
    DockControlHeights = (
      0
      0
      0
      0)
    object Paneldxbrmngr1Bar1: TdxBar
      Caption = 'Ociones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 298
      FloatTop = 256
      FloatClientWidth = 163
      FloatClientHeight = 178
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Agregar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_NuevaTabla'
        end
        item
          Visible = True
          ItemName = 'btn_Quitar'
        end
        item
          Visible = True
          ItemName = 'btn_refresh'
        end
        item
          Visible = True
          ItemName = 'btn_imprimir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'CalcularRango'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_Agregar: TdxBarLargeButton
      Caption = '&Nuevo'
      Category = 0
      Enabled = False
      Hint = 'Nuevo'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
        25D0522C17931209053000000009000000010000000000000000000000000000
        00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
        6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
        0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
        82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
        2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
        59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
        47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
        45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
        6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
        44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
        83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
        47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
        8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
        F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
        A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
        D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
        ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
        3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
        9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
        3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
        6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
        3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
        3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
        5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
        0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
        CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
        00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
        B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
        000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
        60CD6C543F8B16110D2200000003000000010000000000000000}
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
      OnClick = btn_AgregarClick
      AutoGrayScale = False
    end
    object btn_Quitar: TdxBarLargeButton
      Caption = '&Eliminar'
      Category = 0
      Enabled = False
      Hint = 'Eliminar'
      Visible = ivNever
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
      OnClick = btn_QuitarClick
      AutoGrayScale = False
    end
    object btn_NuevaTabla: TdxBarLargeButton
      Caption = '&Copiar Rangos de Salarios seleccionados'
      Category = 0
      Hint = 'Copiar Rangos de Salarios seleccionados'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000070000
        000D0000000F0000000D00000007000000020000000000000000000000020000
        00090000000F00000010000000110000001100000014020101214C28168E8648
        27DAA55831FF854627DB4A28158C020100150000000400000000000000098B63
        56C1C18977FFC08976FFC08875FFC59584FFCFAFA3FFB0704EFFC07C4AFFDEA6
        69FFF4D3A1FFDEA76AFFBF7C4BFF844728D406030217000000020000000CC38E
        79FFFDFBFAFFFBF7F4FFFCF6F3FFF7F4F1FFC8A28CFFC48656FFEDBC7CFFEEBF
        7FFF83400EFFF2CC94FFEFC181FFC38657FF58321C93000000070000000DC591
        7EFFFDFCFBFFF8EFE8FFF7EEE8FFF2EDE9FFBA7D57FFE4B377FFF5D9ABFFF5DA
        AFFF8B4914FFF7E3BEFFF6DBB2FFE5B77FFF995C36E30000000B0000000CC794
        81FFFEFCFBFFF9F0EAFFF8F0EAFFF3EFECFFBC784FFFF1CE95FF995420FF9752
        1DFF934F1CFF904C19FF8D4917FFF5DBAEFFB16F45FA0000000B0000000BC997
        86FFFEFDFCFFF9F2EDFFF9F2EDFFF5F0EDFFC68C65FFEFDDB7FFF3CF98FFF5D5
        9FFF9B5622FFF7E0B2FFF5D7A4FFEFDDB8FFA46942E2000000080000000ACB9C
        8BFFFEFDFDFFFAF3EFFFFAF4EEFFF8F3F0FFDBB9A4FFD8AE86FFF9F3D1FFF8E1
        B5FFA35D28FFFAEAC6FFFAF6D5FFD8AF89FF5E3E29850000000400000009CFA0
        8DFFFEFEFDFFFBF5F1FFFBF5F0FFFAF4F1FFF6F2EFFFD5A785FFDCB48DFFF2E9
        CAFFFAFDE1FFF2E9CAFFDCB38CFF996B4AC80202010A0000000100000009D0A3
        93FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF6F2FFF8F4F0FFE4C9B4FFDAAF
        8AFFD8A578FFDBAE8AFFD7B098FF02020117000000010000000000000008D3A8
        97FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF5F4FFFAF6F3FFFAF6
        F3FFF8F6F3FFFBF9F8FFDAB9ADFF0000000E000000000000000000000007D3AB
        9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6
        F2FFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
        9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7F5FFFBF7
        F4FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
        A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
        F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
        A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
        FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
        7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
        A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
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
      OnClick = btn_NuevaTablaClick
      AutoGrayScale = False
    end
    object btn_refresh: TdxBarLargeButton
      Caption = '&Actualizar'
      Category = 0
      Enabled = False
      Hint = 'Actualizar'
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
      OnClick = btn_refreshClick
      AutoGrayScale = False
    end
    object btn_imprimir: TdxBarLargeButton
      Caption = 'Im&primir'
      Category = 0
      Hint = 'Imprimir'
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
      OnClick = btn_imprimirClick
      AutoGrayScale = False
    end
    object CalcularRango: TdxBarLargeButton
      Caption = '&Calcular Multiples Salarios'
      Category = 0
      Enabled = False
      Hint = 'Calcular Multiples Salarios'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000040000000F000000110000000B000000040000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000E431B10FF31130BE1190A0598030407420000
        000C000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000D673C29DCB8C7D2FF7789A3FF224084FF040F
        34960000000F0000000200000000000000000000000000000000000000000000
        0003000000090000000E0000001741251A97869AB3FFC7E3F6FF1B65B9FF286B
        ABFF0412379C0000001D000000120000000D0000000400000000000000000000
        0008285287CA2A60ABFF5D85BDFF8097B7FF458BC6FFDDFEFDFF4DB4E6FF1B67
        BAFF2E73B1FF425C92FF587CB3FF2557A5FF0000000B00000000000000000000
        000B3D77BBFF8FD3F4FF7CC9F0FF76C2E8FF509DCDFF439FD5FFDDFEFDFF55C0
        ECFF1D6ABCFF337BB6FF3D6096FF202B47930000000900000000000000000000
        000B417EBEFF9AD9F5FF85CFF2FF93D4F3FFBAE1F0FF5FA4D0FF48A5D8FFDDFE
        FDFF5DCBF2FF206EBFFF3883BCFF07193E950000000B00000002000000000000
        000A4784C1FFA6DEF7FF8ED5F4FF22529DFF22529CFF71A4CDFF58A3D2FF4BAB
        DAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FF071B418E00000006000000000000
        00094C8AC5FFB0E4F8FF98DAF6FF133D84FF5D91C5FF8FD4F3FF95D2EDFF629C
        C9FF4EAFDDFFDDFEFDFF6BDEFBFF287AC5FF15438DFF00000008000000000000
        0008518FC9FFB8E8FAFFA0DFF7FF598CBFFF9CDCF6FFA6DFF7FF6793C3FF2735
        538C1C44638B51B2DFFFDDFEFDFF4CA7D7FF0F2B4F8800000004000000000000
        00075695CCFFC1EDFBFFA8E3F9FFA6E3F8FFB0E5F9FF6F9BC9FF0D244B880000
        0008000000061B456385327FBFFF163A5A860000000500000001000000000000
        0006599BCFFFC9F0FBFFAFE8FAFFBAEAFBFF77A2CEFF112A4F87000000060000
        0001000000010000000200000004000000030000000100000000000000000000
        000560A0D1FFCFF2FCFFC1EFFCFF7FAAD3FF142F548500000005000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000463A5D5FFDCF7FDFF86B0D7FF183556840000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000467A9D7FF90B8DBFF1C3A5A83000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00026AADDAFF20405E8200000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003000000060000000700000005000000030000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        000B000000160000001A000000140000000D0000000700000004000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        0015462D24FF25150FDA11090788020101340000001B00000010000000080000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000060000
        00184F372DD7A27A6CFF544548FF282B48F7122252B3060B1B57000000180000
        000B000000040000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000002000000050000
        0013291D1880836F6BFFAACAE9FF7091C3FF3D5B9DFF29448FFF0E1C419A0000
        001D0000000C0000000400000002000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000010000000200000004000000060000000700000007000000090000
        001205040331535775F6DAE3F0FF9EC1E5FF7495C6FF4F6CA6FF2C4F99FF0419
        469D00000022000000130000000B000000090000000800000008000000080000
        0007000000060000000200000001000000000000000000000000000000000000
        0000000000020000000800000011000000180000001B0000001C0000001D0000
        002200000030253A66B4889ECAFFCCD8EAFF1684E5FF49AAE9FF0D50B2FF0E4A
        A5FF041A47A50000003500000028000000210000001F0000001E0000001E0000
        001B000000130000000800000002000000010000000000000000000000000000
        00010000000400000011254F80C12E66AEFF2D65AEFF2D66ADFF2C64ABFF2B63
        AAFF2A5EA4FF28589AFF466AB0FFFFFFFFFF45A3EDFF1989E9FF4EAEEAFF0E57
        B4FF104DA7FF15428CFF235498FF2558A0FF265BA5FF265BA6FF255BA6FF255B
        A7FF245AA6FF0000001000000004000000010000000000000000000000000000
        000100000006000000173771B4FF7AC3ECFF65B8E7FF64B7E7FF64B6E7FF62B5
        E5FF5FB1E1FF59A7D6FF467EB9FF648FC6FFBFE6FBFF48A8EEFF1D92EAFF56B3
        ECFF125CB7FF1151ABFF2965A7FF4F9ECFFF54A7DBFF55AAE1FF69B4E6FF4A82
        BAFF0B2345910000000F00000004000000010000000000000000000000000000
        000100000006000000183974B6FF87CFF3FF70C5F0FF6FC4EFFF6EC4EEFF6CC2
        EDFF6BBFECFF68BCE7FF62B0DBFF4089C4FF3D90D7FFC4E8FAFF4EAFEEFF2298
        EAFF5BB6EDFF1361BAFF1355ADFF2E6CAEFF57A9D8FF6FBAE6FF5088BDFF0C24
        4594000000160000000800000001000000000000000000000000000000000000
        000100000006000000183C78B8FF8BD3F4FF73C7F1FF72C6F0FF71C5F0FF70C4
        EFFF6FC3EEFF6EC1EDFF6ABDE9FF64B3DCFF428DC7FF4095D9FFC8EBFCFF52B5
        F2FF279EEDFF60BBEDFF1664BEFF155CB0FF3B75B1FF5081B0FF0D2345980000
        00190000000A0000000300000001000000000000000000000000000000000000
        000100000006000000173E7ABAFF91D6F5FF77C9F1FF76C8F1FF75C7F1FFA1D8
        F6FFB8E3F7FFB8E2F7FFB7E0F6FFB1DBF1FFA7D1E6FF5899CBFF459BDBFFCCEE
        FDFF58BAF4FF2CA6F2FF67BFEEFF186BC1FF1860B4FF0E346FD1000000270000
        0010000000050000000200000000000000000000000000000000000000000000
        00010000000500000016407DBCFF97D9F5FF7CCCF2FF7ACBF2FF79CAF1FF5B94
        C9FF4485C2FF4383C1FF4282C1FF407FBEFF3E7BB9FF5899CAFF4794CBFF48A0
        DEFFD1F1FEFF5CBFF6FF31ACF4FF6BC3F0FF1B71C4FF1A65B6FF0A2751950000
        0014000000090000000200000001000000000000000000000000000000000000
        000100000005000000154380BEFF9CDBF6FF7FCEF3FF7FCDF3FF7DCDF3FF2E67
        AAFF00000027000000210000002810294B9C4C8ABFFF6DBDE6FF6DBAE3FF4998
        CFFF4BA4DFFFD4F3FEFF63C7F7FF39B4F4FF71C8F2FF1E77C8FF1D6ABBFF0B29
        5390000000110000000700000002000000010000000000000000000000000000
        000000000005000000144584BFFFA0DDF7FF83D1F3FF82CFF3FF81CFF3FF2E66
        A9FF0000001F0000001C0D2548954E89BEFF75C4EDFF77C8EFFF76C4ECFF6FBE
        E5FF5BA1D2FF4FA9E1FFD7F5FFFF83D6FBFF3EBEF8FF75CDF2FF227DC9FF2070
        BEFF181B278F0000000F00000006000000020000000000000000000000000000
        000000000005000000134887C1FFA7E1F7FF87D4F4FF86D2F4FF85D1F3FF2D66
        A8FF000000240B2345934E88BBFF7AC8EEFF7DCDF2FF7CCCF1FF7BC9F1FF9AD5
        F1FF6E98C0FF205788CC53AFE3FFDAF6FEFF6DD2FDFF43C2F8FF7AD2F4FF7877
        7BFF7C4836FF2B10098E0000000E000000060000000200000000000000000000
        000000000004000000124A8AC4FFABE3F8FF8BD6F5FF8AD5F4FF88D4F4FF2D66
        A8FF081F40984F86B8FF7ECBEFFF83D0F3FF82D0F3FF81CEF2FFA2DCF6FF78A4
        CBFF132E4D900000001B1945658B56B2E5FFDDF8FFFF73D8FDFF8DBAC8FFDAC0
        B1FF9C6955FF844F3DFF190C238C0000000C0000000500000001000000000000
        000000000004000000114D8DC5FFB0E5F8FF8ED8F5FF8ED7F5FF8BD6F5FF2D65
        A6FF4F84B5FF84CEF0FF87D3F3FF86D2F3FF85D1F3FFAADFF7FF7EA8CEFF1531
        518D00000011000000090000000B1946678759B5E6FFE6F8FAFFDDC3AFFFD1B2
        9CFFDDC4B6FF55478EFF1B1A9BFF0807408B0000000B00000004000000000000
        000000000004000000104F90C7FFB4E7F9FF93DBF6FF91D9F6FF90D9F5FF5999
        C9FF89D0F1FF8CD6F5FF8BD5F5FF8BD5F4FFAFE2F8FF83ABD1FF1732528C0000
        000F0000000600000003000000030000000830384386B88E7BFFFBF0E0FFE1C8
        B4FF9794C7FF828DE8FF2427B0FF1E1EA2FF0B0B478900000006000000000000
        0000000000040000000F5193C9FFB8E9F9FF95DDF6FF95DCF6FF94DBF6FF8DD5
        F2FF91DAF6FF91D9F5FF8FD8F5FFB5E5F8FF86AFD2FF1735538C0000000E0000
        000600000002000000000000000100000002000000074B2E2685BE9585FFF7EE
        E6FF869CF2FF5B70E7FF949FEBFF7681D4FF21249CFF00000007000000000000
        0000000000030000000E5396CBFFBCECFAFF99DFF7FF99DEF7FF97DEF6FF96DC
        F6FF95DCF6FF94DBF6FFBBE8F9FF8BB2D5FF1937568B0000000D000000050000
        0002000000000000000000000000000000010000000200000006362A45846573
        D9FFD9E6FDFF869DF3FFA8BEF6FF4852C9FF1E205D8400000004000000000000
        0000000000030000000D5699CDFFBFEDFAFF9DE1F8FF9BE1F8FF9BDFF8FF99DF
        F7FF98DEF6FFC0EAFAFF8FB4D6FF1B38578A0000000C00000005000000010000
        0000000000000000000000000000000000000000000000000002000000042327
        63826B7BDFFFDAE7FDFF6071DDFF232863830000000500000002000000000000
        0000000000030000000C589BCEFFC4EFFAFFA0E2F8FF9EE3F8FF9DE1F8FF9DE1
        F8FFC3EDFBFF93B8D9FF1C3B59890000000B0000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003282E6981505BD4FF282E6981000000040000000200000001000000000000
        0000000000030000000B5A9ED0FFC6F0FCFFA3E5F8FFA2E4F9FFA1E3F9FFC8EE
        FBFF96BADAFF1E3D5A880000000A000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000200000002000000010000000000000000000000000000
        0000000000030000000A5CA0D1FFC9F2FCFFA6E6FAFFA5E6F9FFCCF0FCFF99BD
        DCFF203F5C870000000A00000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000002000000095EA3D3FFCDF3FCFFA8E8F9FFCFF2FCFF9CC0DDFF2141
        5E86000000090000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000860A5D4FFD0F3FDFFD3F3FCFF9FC3E0FF234460860000
        0008000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000761A7D6FFE7FAFDFFA1C5E1FF23456185000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000663A9D7FFA4C7E2FF2547628400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000465ABD9FF274963820000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003000000030000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = Btn_ProyectarClick
      AutoGrayScale = False
    end
    object Btn_ListadoRango: TdxBarButton
      Caption = 'Imprimir Salarios Multiples'
      Category = 0
      Hint = 'Imprimir Salarios Multiples'
      Visible = ivAlways
    end
  end
  object pmRangoSalarios: TPopupMenu
    OnPopup = pmRangoSalariosPopup
    Left = 616
    Top = 168
    object CalcularRangodeSalarios1: TMenuItem
      Caption = 'Calcular Rango de Salarios'
      OnClick = CalcularRangodeSalarios1Click
    end
  end
  object frxOrganizacion: TfrxDBDataset
    UserName = 'ReporteOrganizacion'
    CloseDataSource = False
    DataSet = ClientModule1.cdOrganizacion
    BCDToCurrency = False
    Left = 448
    Top = 216
  end
end
