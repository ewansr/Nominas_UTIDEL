object FrmAbrirNomina: TFrmAbrirNomina
  Left = 0
  Top = 0
  Caption = 'Abrir N'#243'mina'
  ClientHeight = 330
  ClientWidth = 661
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 661
    Height = 289
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 257
      Top = 0
      Height = 289
      ExplicitLeft = 272
      ExplicitTop = 96
      ExplicitHeight = 100
    end
    object Panel2: TPanel
      Left = 260
      Top = 0
      Width = 401
      Height = 289
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object gbNomina: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Datos de la N'#243'mina'
        TabOrder = 0
        Transparent = True
        Visible = False
        Height = 289
        Width = 401
        object Inicio: TLabel
          Left = 39
          Top = 55
          Width = 31
          Height = 13
          Caption = 'Inicio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Termino: TLabel
          Left = 144
          Top = 55
          Width = 47
          Height = 13
          Caption = 'Termino'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object JvLabel1: TJvLabel
          Left = 16
          Top = 55
          Width = 17
          Height = 13
          Caption = 'Del'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel2: TJvLabel
          Left = 128
          Top = 55
          Width = 10
          Height = 13
          Caption = 'al'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel3: TJvLabel
          Left = 16
          Top = 163
          Width = 35
          Height = 13
          Caption = 'Estado'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Estado: TLabel
          Left = 57
          Top = 163
          Width = 38
          Height = 13
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object JvLabel4: TJvLabel
          Left = 16
          Top = 109
          Width = 50
          Height = 13
          Caption = 'Personas:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object CantidadPersonal: TLabel
          Left = 72
          Top = 109
          Width = 99
          Height = 13
          Caption = 'CantidadPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object JvLabel5: TJvLabel
          Left = 16
          Top = 136
          Width = 29
          Height = 13
          Caption = 'Neto:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Neto: TLabel
          Left = 51
          Top = 136
          Width = 26
          Height = 13
          Caption = 'Neto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object JvLabel6: TJvLabel
          Left = 16
          Top = 82
          Width = 26
          Height = 13
          Caption = 'Dias:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object Dias: TLabel
          Left = 48
          Top = 82
          Width = 24
          Height = 13
          Caption = 'Dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object JvLabel7: TJvLabel
          Left = 120
          Top = 109
          Width = 47
          Height = 13
          Caption = 'Pagados:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object lblPagados: TLabel
          Left = 173
          Top = 109
          Width = 99
          Height = 13
          Caption = 'CantidadPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object JvLabel8: TJvLabel
          Left = 216
          Top = 109
          Width = 63
          Height = 13
          Caption = 'No Pagados:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object lblNoPagados: TLabel
          Left = 285
          Top = 109
          Width = 99
          Height = 13
          Caption = 'CantidadPersonal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lblNominasCerradas: TLabel
          Left = 16
          Top = 200
          Width = 145
          Height = 13
          Caption = 'Comentario Nominas Cerradas'
          Color = clBackground
          ParentColor = False
          Transparent = True
        end
        object Titulo: TMemo
          Left = 3
          Top = 15
          Width = 395
          Height = 26
          Align = alTop
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Lines.Strings = (
            'Titulo')
          ParentFont = False
          TabOrder = 0
        end
        object btnAbrirCerrarNomina: TcxButton
          Left = 296
          Top = 246
          Width = 96
          Height = 29
          Align = alCustom
          Anchors = [akRight, akBottom]
          Caption = 'Cerrar Nomina'
          LookAndFeel.SkinName = 'MoneyTwins'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000010000000A09070663583F36EC573D35EC1911105A000000020000
            00090000000E0000000F00000010000000100000001100000011000000110000
            00130000001A0E0A09745D4C44FEC8A995FFC9A996FF553C34E900000008815A
            4EC0B37E6CFFB37D6AFFB37E6CFFB27D6BFFB27C69FFB17D6AFFBE9081FFD1B6
            ADFF947E77FF6D594FFFD6B6A1FFD4B6A1FFDBC7B9FF584037EC0000000CB581
            6FFFFDFBF9FFFBF5F2FFF9F4F0FFF5EFEBFFF1EBE7FFEEE7E3FFECE4E0FFADA2
            9DFF79645AFFD8BBAAFFD8BBA8FFE6D4C7FF8C766CFE1D15125D0000000CB884
            71FFFDFBFAFFF5EBE4FFEBE1DAFFA29089FF6A534BFF4B332BFF574239FF856F
            64FFDCC1B2FFDCC2B0FFEAD7CCFF978177FF2219166F000000080000000BB886
            75FFFCFAFAFFEAE1DBFF816A61FF937A6FFFBFA99CFFDEC8BAFFC7B0A2FFE0C8
            B8FFDFC7B7FFE9DACFFF9B857BFFA88F87FF00000018000000010000000ABA89
            78FFFAF8F7FFAC9A92FFA08A80FFEEE1D9FFF5EDE7FFF0E4DBFFE9D6C8FFE2CC
            BDFFE2CEBFFFA08A80FFBEB1ABFFD6BBB3FF000000110000000000000009BD8C
            7AFFF8F7F6FF8E7368FFC8B6ADFFB4A098FF8F766AFFB09C93FFD8C8BFFFE5CE
            BFFFD1B9ABFF82675DFFEFE9E5FFC4998AFF0000000F0000000000000009C08F
            7FFFF8F7F6FF8C7165FFB7A299FFBFAFA7FFEEE6E1FFBBAAA1FFAF9B92FFE6D1
            C3FFE6D2C7FF7E6459FFF2EDE9FFBB8A77FF0000000E0000000000000008C394
            84FFFAFAF9FF9D867BFFC7B8B0FFF6F0EAFFF8F1ECFFEAE1DCFF71574DFFE7D4
            C6FFD2C0B8FF8C7369FFF5F0EDFFBC8D7AFF0000000D0000000000000007C597
            87FFFDFDFCFFF8F3EEFFF9F3EFFFFAF4EFFFF7F0ECFFA89791FF937C72FFEEE0
            D8FFB09C92FFB9A8A0FFF9F4F1FFC08F7EFF0000000D0000000000000006C79A
            8CFFFEFEFEFFFAF6F3FFFAF5F3FFF9F4F0FFAB9B93FF8F7A72FFCABAB2FFB6A2
            97FFA38C81FFF4ECE8FFFCF8F6FFC39282FF0000000C0000000000000006CA9E
            8EFFFFFEFEFFFBF7F4FFFBF6F4FFF9F4F2FFAC9589FF987D6FFFA58E85FFC6B6
            AFFFF6EFEAFFF9F4EFFFFDFAF8FFC49687FF0000000B0000000000000005CCA3
            91FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFAF5F3FFF8F3F1FFF8F3F1FFFAF4
            F1FFFCF6F2FFFBF6F1FFFDFBF9FFC79A8BFF0000000A0000000000000004CEA4
            95FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
            FDFFFEFDFDFFFEFDFDFFFEFDFCFFC99E8EFF0000000900000000000000029A7B
            6FC0CFA696FFCFA696FFCEA695FFCEA595FFCEA595FFCFA494FFCDA494FFCEA3
            93FFCCA293FFCDA292FFCBA292FF97776BC20000000600000000}
          TabOrder = 1
          OnClick = btnAbrirCerrarNominaClick
        end
      end
    end
    object tvNominas: TTreeView
      Left = 0
      Top = 0
      Width = 257
      Height = 289
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Indent = 19
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnChange = tvNominasChange
      OnDblClick = tvNominasDblClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 289
    Width = 661
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 22
    Padding.Top = 5
    Padding.Right = 8
    Padding.Bottom = 7
    TabOrder = 1
    object Btn_Abrir: TcxButton
      Left = 485
      Top = 5
      Width = 81
      Height = 29
      Align = alRight
      Caption = '&Abrir'
      LookAndFeel.SkinName = 'MoneyTwins'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000090000
        000E000000100000001000000010000000100000001000000011000000110000
        001100000011000000100000000B00000003000000000000000017417CCA2159
        A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
        A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
        B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
        E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
        BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
        E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
        D2FF3C87C6FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
        EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
        E6FF4FA0D5FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
        EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
        F5FF75C8EDFF55A3D7FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
        FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
        FEFF97E5FCFF62BBE7FF4AA0D6FF4A9DD5FF91C3E3FF8DBCDCFF8FBDE0FF5FA3
        D6FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
        FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFFBBE6F3FFA68E78FFA6BABDFFB2E1
        F3FFB9E6F7FFB3E0F0FF8EADD1FF000000180000000B00000007398ECBFFD0F8
        FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFD3EDF3FFAD744CFF9A6841FFBEB8
        ADFFD1E1E3FF975D32FF8A6E59FF0C07032E00000007000000013B92CEFFD3F9
        FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF9CC3E0FFAD886CFFDBB891FFB07F
        53FF9B643AFF9F663DFFDBB67EFF8E5D33EF311D0F67000000063D97D1FFE2FC
        FEFFE2FCFEFFE1FCFEFFD3F3FAFF428FC1EC0B111523382A1E58C49870FFEAD2
        B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000082E739DBF3E9A
        D3FF3E99D3FF3E99D3FF3E97D2FF143245590000000200000003382C204E9877
        58CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B00000003000000020000
        0003000000030000000400000003000000020000000000000000000000010000
        000200000005CAA27AFF846A50AC110D0A1B0000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000000000000000000000}
      TabOrder = 0
      OnClick = Btn_AbrirClick
    end
    object Btn_Cancelar: TcxButton
      Left = 574
      Top = 5
      Width = 79
      Height = 29
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.SkinName = 'MoneyTwins'
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
    object Panel4: TPanel
      Left = 566
      Top = 5
      Width = 8
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object cdAnios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 80
  end
  object cdTiposNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 80
  end
  object cdNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 144
  end
  object dsNominaFuera: TDataSource
    Left = 96
    Top = 144
  end
  object dsGrafica: TDataSource
    Left = 112
    Top = 248
  end
  object DxBManager1: TdxBarManager
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
    Left = 600
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object cdNominaMod: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 192
  end
  object cdMeses: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 248
  end
end
