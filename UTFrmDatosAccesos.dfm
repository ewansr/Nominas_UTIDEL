object FrmDatosAccesos: TFrmDatosAccesos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Datos del acceso'
  ClientHeight = 141
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelDatosLugares: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 92
    Align = alClient
    Caption = 'Datos'
    TabOrder = 0
    ExplicitLeft = -109
    ExplicitWidth = 535
    ExplicitHeight = 89
    object Edit1: TEdit
      Left = 16
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 16
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 16
      Top = 62
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object PanelBarraLugar: TPanel
    Left = 0
    Top = 92
    Width = 426
    Height = 49
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -109
    ExplicitTop = 89
    ExplicitWidth = 535
    object GroupBoxBotones: TGroupBox
      Left = 66
      Top = 6
      Width = 283
      Height = 39
      TabOrder = 0
      object BtnAdd: TBitBtn
        Left = 0
        Top = 3
        Width = 90
        Height = 33
        Hint = 'Grabar un cambio de registro'
        Caption = 'Grabar'
        Default = True
        DoubleBuffered = True
        Glyph.Data = {
          120C0000424D120C00000000000036000000280000002C000000170000000100
          180000000000DC0B000000000000000000000000000000000000FFFEFFFBFFFB
          FBFFFBFAFCFCFFFCFFFFFBFFF5F1FCEADEE4D6CFD4C0C1C5B4BCBCB4BCBBBEC1
          BFD2CEC9E4DCD5F9FCFAF8FDFCFAFFFEFEFDF9FFFEF4FFFFF9FBFFFFFFFEFFFB
          FFFBFBFFFBFAFCFCFFFCFFFFFBFFF5F1FCEADEE4D6CFD4C0C1C5B4BCBCB4BCBB
          BEC1BFD2CEC9E4DCD5F9FCFAF8FDFCFAFFFEFEFDF9FFFEF4FFFFF9FBFFFFFFFF
          FCFFFFF3FFFBF8FFFBFFF5F9FECBEACF9BCC9448C85931BB3E17B01F09AD0C09
          AD0B16B2182DBB3341C44B8AC88CBFE1C3F8F7F9FFF9FFFFF9FBFFFDF8FCFEFF
          FFFFFCFFFFF3FFFBF8FFFBFFF5F9FECBEACF9BCC948080808080808080808080
          808080808080808080808080808AC88CBFE1C3F8F7F9FFF9FFFFF9FBFFFDF8FC
          FEFFFFFFF3FFFAF4FFFBFFF4F7FCABD5B664BC6237AE2315BD0615C00A1BCA15
          21D51F22D6201CCC1416C20814BE0028A9225DB45CADCFB1F1EEF7FFFAFFFFFA
          FFF8F9F7FFFFF3FFFAF4FFFBFFF4F7FCABD5B680808080808080808080808080
          8080808080808080808080808080808080808080808080ADCFB1F1EEF7FFFAFF
          FFFAFFF8F9F7FFFBFAFFFBFFEFF8EE9CD2A341AE481FB6201DCA1523BB261DB9
          1F19B61818B61519B7161CB81D1FB92423B92922C91E1FB41E39A83E86C692DD
          F2EAFFFBFFFEFAF9FFFBFAFFFBFFEFF8EE9CD2A3808080808080808080808080
          80808080808080808080808080808080808080808080808080808080808086C6
          92DDF2EAFFFBFFFEFAF9FFFAFFF6F9FFB0DDB64AB54811B30E0DC81404C51617
          BC1718BA1A1AB81E1AB7211AB6221BB72318B72114B61B10BF180ECB1204BD09
          31B6389ED5A8F3F6FBFFFDFFFFFAFFF6F9FFB0DDB68080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          80808080809ED5A8F3F6FBFFFDFFEEFFFFC9F5D052CC4807A30923BB3A12C22F
          11A9281BC2182ABE2A2FD73711DD261AC33115B92B03C31228AE2C19B91300BC
          1622C12F04AF1725C333B0E7AEFBFDFFEEFFFFC9F5D080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          808080808080808080808080B0E7AEFBFDFFFFFAFB7DCE8913AE2E19C91E18BE
          1D22AA2D2BC82411D02734D144EDFFF2F5FFF429DD3107E21628B63B14B62E23
          B9261DBE2C12B52A13BA2313B61E63BC6DF8F8F8FFFAFB808080808080808080
          808080808080808080808080808080EDFFF2F5FFF48080808080808080808080
          80808080808080808080808080808080808080F8F8F8E7F6E13DB14D06B3230C
          CA1D0AC1192FC03B1CCC212EE148DDF9ECEFFFFFFFFAFFE6FEDB39D83C13C826
          03C22B1DB52C1EB32D0DB5321EC02B0FB91931B446CADEC7E7F6E18080808080
          80808080808080808080808080808080DDF9ECEFFFFFFFFAFFE6FEDB80808080
          8080808080808080808080808080808080808080808080CADEC79EE2AB1CAF37
          10CB2119BB2614BF3B04D43A43D761E3FEDDDFFFF0FBFBFFECFDF4FFF6FFFAFE
          F239E74511DA3216C43015C13310BD371CBC2E15BE221AB43184C58D9EE2AB80
          8080808080808080808080808080808080E3FEDDDFFFF0FBFBFFECFDF4FFF6FF
          FAFEF280808080808080808080808080808080808080808080808084C58D6FC9
          7603B72800C8213EC0442DBC5526D867C2FDD0FFEEFFFAFFEBF5FAF9FFE8FFFF
          FBFCF1FDF1D7FFE648D04E14CD2F07D1360ABC2D1DC03C1FC3350AAC1E4FC469
          808080808080808080808080808080808080C2FDD0FFEEFFFAFFEBF5FAF9FFE8
          FFFFFBFCF1FDF1D7FFE680808080808080808080808080808080808080808080
          808052C66300C3200EB9371BBF4230BF4CE0FFE3FFFFF9FFF1FFF4FFFFFFFFF5
          FFFFEBE3EFEFFDFDFFFFFDF3EAFFF751E1630DCD400AC1301AC24027C34610B9
          272BBE50808080808080808080808080808080E0FFE3FFFFF9FFF1FFF4FFFFFF
          FFF5FFFFEBE3EFEFFDFDFFFFFDF3EAFFF7808080808080808080808080808080
          8080808080803FCA6905C2292FBE4B00BE3A1AC83FF4FFE0FCF4FBE8FFF6F8FE
          F32FBF4E36BC5CF8FFF4F6FFF4F0F0FEFFFAFFCAFFD05CE1801BD94C0FBD3A24
          BD490BC5301EB13F808080808080808080808080808080F4FFE0FCF4FBE8FFF6
          F8FEF3808080808080F8FFF4F6FFF4F0F0FEFFFAFFCAFFD08080808080808080
          808080808080808080803DC26C0BB6362CC6411DCC4C09D14425B747FAFAFFFD
          FFF425C54D03D24000C73337C260EFFAF2FFFCFDF5FAF1FFF8FFBBFFCC27EA64
          16C94430C95600C32F2FB348808080808080808080808080808080808080FAFA
          FFFDFFF4808080808080808080808080EFFAF2FFFCFDF5FAF1FFF8FFBBFFCC80
          80808080808080808080808080805BC58314BB3C1AD03C0CCD470FC94F21C843
          29D53919CF4B18C94A17C94A16D34813C83D46CA60D6FFDBFFFDFFFAFDFFE8FA
          FFF7FFF248C76B00DA3917CD3352BA6780808080808080808080808080808080
          8080808080808080808080808080808080808080808080D6FFDBFFFDFFFAFDFF
          E8FAFFF7FFF2808080808080808080808080A3EBB710B24212DB4E12D14B16CA
          5317CF5310C94418CD4C1ACB5018CB500ACB4510D24921C14F62C381C0EDD3FF
          E8F2FFFCFFE4FFE521C96802D54921B73F74CF97A3EBB7808080808080808080
          808080808080808080808080808080808080808080808080808080808080C0ED
          D3FFE8F2FFFCFFE4FFE580808080808080808074CF97D4FDDD1CB45B00D55318
          D9531BCB4F12CF5C13CD6319D0501BCD561DD35D0ED35308D85011D15617B053
          48BE7DE6FFE7E1FFD839CC721BD1540ED34904C753B4FACBD4FDDD8080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080808080E6FFE7E1FFD8808080808080808080808080B4FACBE5FFF25FD699
          00BD4F12DA5121D64F18CC5618CD6A14D0531BD15B12C85912D35B01D04F0FDE
          5D1CDA6519C55F33C37032C66000D75229DE541DD75B15C46AF1FFEBE5FFF280
          8080808080808080808080808080808080808080808080808080808080808080
          808080808080808080808080808080808080808080808080808080F1FFEBF4FF
          FEBDF8D93BC16F05CA481EE55420D8560BD26014D65B22DD6912C75A1AD4640F
          D45A06D1520CD55614D65B0FCE6B12D66524DF6500CB5414B762C5EFD0FFFCFF
          F4FFFEBDF8D98080808080808080808080808080808080808080808080808080
          80808080808080808080808080808080808080808080808080808080C5EFD0FF
          FCFFFFFBFDFCFFFAAEECBE28C36014D85615DA5803E0620DD45A10D15C17D161
          20D7691DDA6716D95F0BD15315DB5D16D45D1DDE6515DE6500C6607EE9B1FFFF
          F5FAFDFFFFFBFDFCFFFAAEECBE80808080808080808080808080808080808080
          80808080808080808080808080808080808080808080808080808080807EE9B1
          FFFFF5FAFDFFFFFBFDFFFBFFF6FFF890DFAC39CF750DCE5F08DA641AE66B0DD4
          5B1EDE6B1AD56718D3651EDE6D15DE6510DD621BE75E26E2650BC55B6BE9A1D7
          FFDEF6FFF8EFFBF5FFFBFDFFFBFFF6FFF890DFAC808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080806BE9
          A1D7FFDEF6FFF8EFFBF5F2FCFCF6FAFFF9F5FFF6FFF788EAB427D47A19CC6515
          E1660EDA5F1DE36D1ADC6B1FE07214D96B13E26F16EC7500DB5816D0669FECAF
          F2FFEFF7FCFAFFF9FFFFEEFAF2FCFCF6FAFFF9F5FFF6FFF788EAB48080808080
          808080808080808080808080808080808080808080808080808080808080809F
          ECAFF2FFEFF7FCFAFFF9FFFFEEFAFFFEFDFFFCFFFFF6FFFFF9FFF6FFF9CDFBDE
          9CE4B60FD96E0BD96904DB6200DA5D00DA5D03DA6109D7670CD66B96DAB7C4F7
          DCE8FFF9F6FBFEFEF6FFFFF9FFFDFCFFFFFEFDFFFCFFFFF6FFFFF9FFF6FFF9CD
          FBDE9CE4B680808080808080808080808080808080808080808080808096DAB7
          C4F7DCE8FFF9F6FBFEFEF6FFFFF9FFFDFCFFFCFFFDFBFEFFFFFBFFFFFBFFFBFF
          FCEDFFF4DBFFECD5FFE3BAFCD296EEB87DE4A77CE3A695EDB7B8FAD0D2FFE0E1
          FFEDEDFFF5F8FFFCFFFDFFFFFCFFFFFDFFFFFFFFFCFFFDFBFEFFFFFBFFFFFBFF
          FBFFFCEDFFF4DBFFECD5FFE3BAFCD296EEB87DE4A77CE3A695EDB7B8FAD0D2FF
          E0E1FFEDEDFFF5F8FFFCFFFDFFFFFCFFFFFDFFFFFFFF}
        ModalResult = 1
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnAddClick
      end
      object BtnCancel: TBitBtn
        Left = 192
        Top = 3
        Width = 90
        Height = 33
        Hint = 'Cancelar la grabaci'#243'n y cerrar'
        Cancel = True
        Caption = 'Cancelar'
        DoubleBuffered = True
        Glyph.Data = {
          8E0B0000424D8E0B00000000000036000000280000002C000000160000000100
          180000000000580B000000000000000000000000000000000000FDFFFFF4FDFF
          ECF8FEF4FDFFFFFFFCF9F1E4E5D7C5DFB783D6AA74CC9E64CE9A5ED09A5DD39B
          60DAA36AE5AC78DBC2A8F0DECDFFFBF7FDFCFFF2F8FFF7FDFFFFFFFFFDFFFFF4
          FDFFECF8FEF4FDFFFFFFFCF9F1E4E5D7C5DFB783D6AA74CC9E64FF8080FF8080
          FF8080DAA36AE5AC78DBC2A8F0DECDFFFBF7FDFCFFF2F8FFF7FDFFFFFFFFF6FA
          FFF4FCFFF6FFFFFFFFFAF2E4CEDCBD96CCA3728000FF8000FF8000FF8000FF80
          00FF8000FF8000FF8000FF8000FFD6A676ECCAB3FFF3F1FAFDFFF6FBFFFFFCFE
          F6FAFFF4FCFFF6FFFFFFFFFAF2E4CEDCBD96CCA3724080804080804080804080
          80408080408080408080408080408080D6A676ECCAB3FFF3F1FAFDFFF6FBFFFF
          FCFEF8F9FDFBFDFEFFFFFBF7E6CCDBB3828000FF8000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF8000FF8000FFD69C61ECC9A7F9F0E2FAFE
          F9FCFEFFF8F9FDFBFDFEFFFFFBF7E6CCDBB38240808040808080808080808080
          8080808080808080808080808080808080408080408080D69C61ECC9A7F9F0E2
          FAFEF9FCFEFFFFFEFFFFFEFBF0E3D3D3B48D8000FF8000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000FF8000FFE2
          CDA7FDFFECF8FFFFFFFEFFFFFEFBF0E3D3D3B48D408080408080808080808080
          8080808080808080808080808080808080808080808080808080804080804080
          80E2CDA7FDFFECF8FFFFF4FEFFFFFBF7F1C0888000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          8000FF8000FFE8D0BCF8FBFFF4FEFFFFFBF7F1C0884080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          8080408080408080E8D0BCF8FBFFF7F9F9EDD9C8DFA6688000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF8000FFE5BA77F8F4E2F7F9F9EDD9C8DFA66840808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          808080808080808080408080FF8080F8F4E2FFFAF0DFBC948000FF0000FF0000
          FF0000FF0000FF0000FF8000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FFE9A44DEDD9C0FFFAF0DFBC94408080808080
          8080808080808080808080804080808080808080808080808080808080808080
          80808080808080808080808080808080FF8080EDD9C0FFF1DB8000FF8000FF00
          00FF0000FF0000FF0000FF8000FF8000FFFEEEC4FCFAE8FFFFF0FFFFD5FFD6A2
          0000FF0000FF0000FF0000FF0000FF0000FF8000FFEAC6A0FFF1DB4080804080
          80808080808080808080808080408080408080FEEEC4FCFAE8FFFFF0FFFFD5FF
          D6A2808080808080808080808080808080808080408080EAC6A0FFE4C58000FF
          0000FF0000FF0000FF0000FF8000FFE2AC6FFFECE1EAFFFFD8F2FFE8FBFFF8FF
          FCFFF7E8EBBF900000FF0000FF0000FF0000FF0000FFE9C27DF3DCAAFFE4C540
          8080808080808080808080808080408080E2AC6FFFECE1EAFFFFD8F2FFE8FBFF
          F8FFFCFFF7E8EBBF90808080808080808080808080808080E9C27DF3DCAAFCDB
          B48000FF0000FF0000FF0000FF0000FF8000FFFFCC9DFFFDF4F0FBF9FAFCFFF8
          F6FCF2FBF8FBFBFFFFF4F5FAFFFFF2FEFFF5FBF6FFFFF6F6FFFFF8FFFEF3F9EE
          FCDBB4408080808080808080808080808080408080FFCC9DFFFDF4F0FBF9FAFC
          FFF8F6FCF2FBF8FBFBFFFFF4F5FAFFFFF2FEFFF5FBF6FFFFF6F6FFFFF8FFFEF3
          F9EEFBD9AE8000FF0000FF0000FF0000FF0000FF8000FFF8D9BAFFFFFFEFFDF9
          FFF5F2D5BDABBEBA9EC1BCBBC4B7AFC0BCBBB1B7BEC3BCB3CBBDABB7B5B4BBBA
          B6C4C1B9FBD9AE408080808080808080808080808080408080F8D9BAFFFFFFEF
          FDF9FFF5F2D5BDABBEBA9EC1BCBBC4B7AFC0BCBBB1B7BEC3BCB3CBBDABB7B5B4
          BBBAB6C4C1B9FFE3B88000FF0000FF0000FF0000FF0000FF8000FFDCCCBBEEF9
          FFF1FFF9FFFCE38000FF8000FF8000FF8000FF8000FF8000FF8000FF8000FF80
          00FF8000FF8000FFFFE3B8408080808080808080808080808080408080DCCCBB
          EEF9FFF1FFF9FFFCE34080804080804080804080804080804080804080804080
          80408080408080408080FFF3C68000FF0000FF0000FF0000FF0000FF8000FFD7
          B782F8EED0F8FFFAFAFFFFFFF5DB8000FF8000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF8000FFFFF3C64080808080808080808080808080804080
          80D7B782F8EED0F8FFFAFAFFFFFFF5DB40808040808080808080808080808080
          8080808080808080808080408080FFF7D38000FF8000FF0000FF0000FF0000FF
          0000FFF6AE61E1BB8BDEE2D7D5E7EEFAF6F5FFE3C18000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF8000FFFFF7D340808040808080808080808080
          8080808080FF8080FF8080DEE2D7D5E7EEFAF6F5FFE3C1408080808080808080
          808080808080808080808080808080408080FFF9E5E9CD8D8000FF0000FF0000
          FF0000FF0000FF8000FFEAC26ACFBE86C8BC98D9BF9BEABE888000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF8000FFFFF9E5E9CD8D408080808080
          808080808080808080408080FF8080CFBE86C8BC98D9BF9BEABE884080808080
          80808080808080808080808080808080808080408080FFFEFDF6EBC58000FF00
          00FF0000FF0000FF0000FF0000FF0000FF8000FFEFC7678000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000FFFFFEFDF6EBC54080
          80808080808080808080808080808080808080408080EFC76740808080808080
          8080808080808080808080808080808080808080808080408080FAFCFFFFFEF6
          F2D3948000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000FFFAFCFFFF
          FEF6F2D394408080808080808080808080808080808080808080808080808080
          808080808080808080808080808080808080808080808080808080408080F4F7
          FFFDFDFFFFF5D6F4CF7F8000FF8000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF8000FF
          F4F7FFFDFDFFFFF5D6F4CF7F4080804080808080808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808040
          8080F5F6F4F7FDFCFFFFFCFEEED1F5D1918000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF8000FFF5F6F4F7FDFCFFFFFCFEEED1F5D19140808080808080808080808080
          8080808080808080808080808080808080808080808080808080808080808080
          808080408080FFFFF7F9FFF7E4F4FFFDFBFFFFEED4FFE39CFF80800000FF0000
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF8080FFE5A1FFF8C2DE
          C176E6C15F8000FFFFFFF7F9FFF7E4F4FFFDFBFFFFEED4FFE39CFF8080808080
          808080808080808080808080808080808080808080808080FF8080FFE5A1FFF8
          C2FF8080FF8080408080FAFCFCF9FAFEFDFCFFFFFFFFFFFFF6F8FDE8F2FADCFF
          DE888000FF8000FF8000FF8000FF8000FF8000FF8000FFF4ECA9F8EAEBFEF7FF
          FFFEF7FFFFD4E3D3808000FFFAFCFCF9FAFEFDFCFFFFFFFFFFFFF6F8FDE8F2FA
          DCFFDE88408080408080408080408080408080408080408080F4ECA9F8EAEBFE
          F7FFFFFEF7FFFFD4FF8080408080FBFDFDFAFBFFFEFCFFFFFEFFFFFFFBFFFFF4
          FCFFECFFFFF6FFF9E7FFF3D6FFF3CCFFF2CBFFF1D4FFF5E3FFFBF1FFFFECFFFB
          FCF5FFF9FAFFF1FFFFF5FEECCDDAD3A2FBFDFDFAFBFFFEFCFFFFFEFFFFFFFBFF
          FFF4FCFFECFFFFF6FFF9E7FFF3D6FFF3CCFFF2CBFFF1D4FFF5E3FFFBF1FFFFEC
          FFFBFCF5FFF9FAFFF1FFFFF5FEECCDDAD3A2}
        ModalResult = 2
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnCancelClick
      end
    end
  end
end
