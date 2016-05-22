object FrmRegistroGastos: TFrmRegistroGastos
  Left = 0
  Top = 0
  Caption = 'Registro de Gastos'
  ClientHeight = 617
  ClientWidth = 1005
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
  PixelsPerInch = 96
  TextHeight = 13
  object dex: TcxPageControl
    Left = 0
    Top = 59
    Width = 1005
    Height = 558
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 552
    ClientRectLeft = 2
    ClientRectRight = 999
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = '&Listado de Gastos '
      ImageIndex = 0
      object CxGridDatos: TcxGrid
        Left = 0
        Top = 0
        Width = 997
        Height = 525
        Align = alClient
        TabOrder = 0
        object CxGridGastos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsListaGastos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.Background = cxstyl1
          Styles.Content = cxstylFontContent
          Styles.Header = cxstylFont
          object CxColumnejercicio: TcxGridDBColumn
            Caption = 'Ejercicio'
            DataBinding.FieldName = 'iejercicio'
            Visible = False
            GroupIndex = 0
            Width = 106
          end
          object CxColumnFecha: TcxGridDBColumn
            Caption = 'Fecha Movimiento'
            DataBinding.FieldName = 'dIdFecha'
            Width = 86
          end
          object CxColumnFolio: TcxGridDBColumn
            Caption = 'Folio'
            DataBinding.FieldName = 'iIdFolio'
            Width = 78
          end
          object CxColumnTipoMovimiento: TcxGridDBColumn
            Caption = 'Tipo Movimiento'
            DataBinding.FieldName = 'sTipoMovimiento'
            Width = 104
          end
          object CxColumnArea: TcxGridDBColumn
            Caption = 'Area'
            DataBinding.FieldName = 'sIdArea'
          end
          object CxColumnCuenta: TcxGridDBColumn
            Caption = 'N'#250'mero de Cuenta'
            DataBinding.FieldName = 'sIdNumeroCuenta'
            Width = 132
          end
          object CxColumnNumeroOrden: TcxGridDBColumn
            Caption = 'N'#250'mero de Orden'
            DataBinding.FieldName = 'sNumeroOrden'
            Width = 154
          end
          object CxColumnReferencia: TcxGridDBColumn
            Caption = 'Referencia'
            DataBinding.FieldName = 'sReferencia'
            Width = 191
          end
          object CxColumnProveedor: TcxGridDBColumn
            Caption = 'Proveedor'
            DataBinding.FieldName = 'sIdProveedor'
            Width = 135
          end
          object CxColumnRFC: TcxGridDBColumn
            Caption = 'R.F.C.'
            DataBinding.FieldName = 'sRFC'
            Width = 127
          end
          object CxColumnRazonSocial: TcxGridDBColumn
            Caption = 'Raz'#243'n Social'
            DataBinding.FieldName = 'sRazonSocial'
            Width = 140
          end
          object CxColumnImporte: TcxGridDBColumn
            Caption = 'Importe del Gasto'
            DataBinding.FieldName = 'dIMporteTotal'
            Width = 126
          end
          object CxColumnDescripcion: TcxGridDBColumn
            Caption = 'Descripci'#243'n'
            DataBinding.FieldName = 'mDescripcion'
            Width = 385
          end
        end
        object CxLevel1: TcxGridLevel
          GridView = CxGridGastos
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Comprobaciones'
      ImageIndex = 1
      object pnlNomina: TPanel
        Left = 0
        Top = 0
        Width = 997
        Height = 525
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object CxTextEdtNomina: TcxTextEdit
          Left = 176
          Top = 10
          Enabled = False
          TabOrder = 0
          Width = 458
        end
        object CxLbl1: TcxLabel
          Left = 105
          Top = 14
          Caption = 'N'#243'mina:'
          Transparent = True
        end
        object CxBtnabrirNomina: TcxButton
          Left = 6
          Top = 3
          Width = 93
          Height = 55
          Caption = '&Abrir N'#243'mina'
          LookAndFeel.SkinName = 'MoneyTwins'
          OptionsImage.Glyph.Data = {
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
            9FFF2559A5FF4F95CFFF64BBEDFF47A7E7FF46A5E6FF44A4E6FF42A3E5FF40A2
            E4FF3FA1E4FF3E9FE3FF3C9EE3FF3B9DE2FF3A9CE1FF389BE1FF389AE1FF359A
            E1FF3598E0FF3497E0FF3397DEFF3296E0FF3195DEFF3095DEFF3095DEFF2E90
            DAFF297DCAFF12326BBF00000011000000040000000000000000000000162154
            A3FF3166ADFF3C7BBCFF7ECBF2FF4FADE9FF4BAAE8FF49AAE8FF47A7E6FF45A6
            E6FF43A5E5FF43A3E4FF40A2E5FF40A1E4FF3FA0E4FF3D9FE3FF3B9DE3FF3A9D
            E2FF399CE2FF379BE1FF379AE2FF3599E1FF3398E1FF3298DFFF3197DFFF3096
            DFFF3295DEFF1A4A98F80103051D00000005000000010000000000000014245C
            A9FF447ABAFF2862ACFF8CD1F2FF64BCEEFF52B0EBFF51AFEAFF50AEE9FF4DAD
            E8FF4CAAE7FF4AA9E7FF48A8E7FF47A7E6FF45A5E6FF43A4E6FF42A3E5FF41A1
            E4FF3FA1E4FF3D9FE4FF3C9FE3FF3B9EE3FF3A9DE2FF399CE1FF379AE1FF3699
            E0FF389CE1FF2363B1FF08162E5D000000080000000100000000000000132661
            AFFF548AC4FF2866AEFF7CB9E1FF82CFF3FF59B6EDFF57B5EDFF57B4ECFF54B3
            ECFF53B1EAFF51B0EAFF51AEE8FF4FADE8FF4DABE8FF4EACE8FF4CAAE8FF4BAA
            E7FF47A6E5FF44A6E6FF43A4E5FF41A3E5FF40A2E4FF3FA1E3FF3E9FE2FF3C9F
            E2FF3D9FE3FF2F7AC4FF0F2A56970000000A0000000200000000000000122A67
            B1FF649BCEFF3272B8FF619DCFFF9FDEF8FF5FBAF0FF5EBAEFFF5EB9EEFF5DBA
            EDFF62BBEEFF68BFEFFF6ABEEFFF6CC0EEFF69BDEDFF66BBEDFF63B9EDFF60B9
            ECFF5EB6ECFF5BB4EBFF56B1E9FF51ADE9FF4CA9E8FF47A6E6FF45A5E5FF43A4
            E5FF44A4E4FF4198D9FF164385D80000000D0000000300000001000000112D6C
            B5FF74AAD7FF4287C6FF4083C0FFB5E8FBFF71C6F3FF6FC4F2FF76C8F3FF7ACA
            F4FF7ACAF2FF78C8F3FF77C7F2FF73C6F1FF72C4F1FF70C2F0FF6DC0EFFF6ABF
            EEFF68BDEEFF65BAEEFF62B9ECFF5FB7EBFF5DB6EBFF5AB4EAFF54B0E9FF4EAC
            E7FF49A9E6FF50ADE8FF225EAAFF030A132C0000000400000001000000103071
            B7FF84B9DFFF5399D3FF3A7EBEFFADDCF1FFA5E1F9FF86D1F6FF85D0F6FF83CF
            F6FF82CEF5FF7FCDF3FF7DCBF3FF7CCBF3FF7ACAF2FF79C8F2FF76C6F1FF73C6
            F2FF70C4F0FF6DC2F0FF6CC1EFFF68BDEEFF66BCEDFF63B9ECFF60B8ECFF5EB6
            EBFF59B4EAFF5AB3EAFF357CC1FF0C2344740000000700000002000000103176
            BAFF93C6E7FF61ABDDFF4590CBFF8DC0E0FFC2EDFCFF8BD5F7FF8AD5F7FF89D3
            F6FF87D2F6FF86D1F6FF85D1F5FF83D0F5FF81CFF4FF7FCDF4FF7ECDF3FF7DCB
            F3FF7AC9F2FF77C8F2FF74C6F0FF72C5F0FF70C3F0FF6CC1F0FF6ABFEEFF66BD
            EEFF64BBEDFF66BCEDFF53A0D8FF153F75BA00000009000000020000000F347B
            BDFFA1D3EEFF70BBE6FF5AA8DBFF66A5D2FFD7F6FDFF95DCF9FF90D8F8FF8FD8
            F8FF8DD7F8FF8CD5F8FF8BD5F7FF88D3F6FF88D3F6FF86D1F6FF85D1F4FF82D0
            F4FF81CFF4FF80CEF4FF7DCCF4FF7BCBF3FF78C9F1FF75C7F1FF72C6F1FF70C5
            F1FF6DC1EFFF6CC1EFFF73C1EDFF215DA4F701030614000000030000000E357E
            BFFFAEDFF4FF7ECAEFFF73C2ECFF4C97CDFFCAEBF7FFDEF8FEFFDEF8FEFFDDF8
            FEFFDCF8FEFFDCF8FEFFDBF7FEFFD9F6FEFFD7F5FCFFBDECFBFF8FD7F7FF89D3
            F7FF87D2F6FF85D3F6FF84D1F5FF82D0F5FF80CEF5FF7ECDF4FF7CCBF3FF79CA
            F2FF76C8F2FF73C6F1FF7CCAF1FF3A7EBFFF091C3255000000050000000D3782
            C1FFBBE7F8FF8DD8F5FF84D2F4FF6ABDE7FF51A1D3FF4C99CCFF4B98CCFF4996
            CBFF4995CAFF4693CBFF4591CAFF4490C8FF75B0D8FFD0F0F9FFD0F4FCFF9BDE
            F9FF8DD7F8FF8CD6F7FF8AD4F7FF88D5F7FF87D3F7FF85D2F5FF83D1F5FF80CF
            F5FF7ECDF3FF7BCCF3FF81CEF3FF5CA4D5FF133A659D000000060000000C3985
            C3FFC5F0FCFF97E3FBFF93E1FAFF8DDCFAFF87D9F9FF83D7F9FF7FD5F8FF7CD2
            F8FF79D1F8FF77CEF6FF73CCF6FF6EC9F5FF5BB4E7FF559DD1FFACD6ECFFE0F9
            FEFFDFF9FEFFDEF9FEFFDEF8FEFFDDF7FEFFDDF7FEFFDBF7FEFFDAF6FEFFDAF6
            FEFFD8F5FDFFD6F5FDFFD5F4FDFFBDE2F2FF1D5897E0000000070000000B3B89
            C5FFCDF6FFFFA2ECFEFF9FEAFEFF9CE8FEFF99E7FEFF96E6FDFF93E4FDFF90E2
            FDFF8EDFFCFF8CDDFCFF89DCFCFF84D9FBFF7DD5FAFF6FCAF5FF52A7DAFF4694
            CAFF4592CAFF4492CAFF4290C9FF418FC8FF3F8DC7FF3E8BC7FF3D8AC6FF3B89
            C5FF226BB1FF226AB1FF216AB0FF2064A6F415416DA4000000050000000B3C8C
            C7FFD1F7FFFFA6EFFFFFA4EEFFFFA2ECFFFFA0EBFEFF9EE9FEFF9CE8FEFF99E7
            FEFF97E5FDFF95E3FDFF92E1FDFF8FE0FCFF8ADDFCFF83D9FBFF7DD4FAFF77D1
            F9FF73CFF9FF70CCF9FF6DC9F8FF6AC7F6FF68C5F6FF64C2F5FF62C0F4FF7CCC
            F6FF2C6CB1FF000000170000000D0000000800000006000000030000000A3D8F
            C9FFD4F9FFFFAAF1FFFFA8F0FFFFA6EFFFFFA4EEFFFFA2EDFFFFA0EBFFFF9EEA
            FEFF9CE8FEFF9AE7FEFF97E5FDFF95E3FDFF92E2FDFF8FDFFCFF8CDDFCFF89DA
            FBFF84D9FBFF81D7FBFF7ED5FAFF7CD3FAFF79D1F9FF76CEF9FF73CDF8FF8DD6
            F9FF357DBEFF0000000F00000005000000020000000100000001000000093E91
            CBFFD6FAFFFFADF3FFFFACF2FFFFAAF1FFFFA8F0FFFFA6EFFFFFA4EDFFFFA2ED
            FFFFA0EBFEFF9EEAFEFF9CE9FEFF9AE6FEFF97E6FEFF95E4FDFF93E2FDFF90E0
            FCFF8EDFFCFF8BDDFCFF88DBFBFF85D9FBFF83D7FAFF81D5FAFF7DD3F9FF95DC
            FBFF3985C4FF0000000C00000003000000000000000000000000000000084095
            CDFFDAFAFFFFB0F5FFFFAFF4FFFFADF3FFFFACF2FFFFAAF1FFFFA8F0FFFFA6EF
            FFFFA4EEFFFFABEFFEFFC0F6FEFFCEF8FEFFCDF8FEFFCDF8FEFFCDF8FEFFCCF8
            FEFFCCF8FEFFCBF8FEFFCBF8FEFFCBF8FEFFCAF8FEFFCAF8FEFFC9F8FEFFA7DE
            F1FF367CB3E90000000A00000003000000000000000000000000000000084297
            CEFFDBFBFFFFB3F6FFFFB2F6FFFFB0F5FFFFAFF4FFFFADF3FFFFACF2FFFFAAF1
            FFFFAEF2FEFF92D2ECFF3F93CBFF3F92CBFF3F92CBFF3F91CBFF3F91CAFF3F91
            CAFF3E90CAFF3D90CAFF3E8FC9FF3D8FC9FF3D8EC9FF3D8DC8FF3D8DC8FF306F
            9ECD0F23314A0000000700000002000000000000000000000000000000074299
            CFFFDDFCFFFFB5F7FFFFB4F7FFFFB3F6FFFFB1F6FFFFB0F5FFFFAFF4FFFFB3F4
            FFFF8ED2ECFF2A6082A80000000B000000090000000900000009000000090000
            0009000000090000000900000009000000090000000A0000000A0000000A0000
            0009000000060000000300000001000000000000000000000000000000053D8D
            BDE8B2E3F3FFD5F9FEFFD4F9FEFFD4F9FEFFD4F9FEFFD3F9FEFFD3F9FEFFC5F0
            FAFF4893C1EA050B0F1A00000004000000020000000200000002000000020000
            0002000000020000000200000002000000020000000200000002000000020000
            0002000000010000000100000000000000000000000000000000000000031127
            3445357CA6CB449DD2FF449DD2FF449DD2FF449DD1FF449DD1FF449CD1FF449C
            D1FF163345590000000400000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0003000000050000000500000005000000050000000500000006000000060000
            0005000000030000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000000000000000000000000000000000000000000000000
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
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphTop
          TabOrder = 2
          OnClick = CxBtnabrirNominaClick
        end
        object CxLblFechaI: TcxLabel
          Left = 105
          Top = 37
          Caption = 'Fecha Inicio:'
          Transparent = True
        end
        object CxLblFechaT: TcxLabel
          Left = 381
          Top = 37
          Caption = 'Fecha T'#233'rmino:'
          Transparent = True
        end
        object cxDateEdit1: TcxDateEdit
          Left = 176
          Top = 33
          Enabled = False
          TabOrder = 5
          Width = 165
        end
        object cxDateEdit2: TcxDateEdit
          Left = 468
          Top = 33
          Enabled = False
          TabOrder = 6
          Width = 166
        end
        object pnlBotones: TPanel
          Left = 0
          Top = 493
          Width = 997
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 7
          object CxBtnCancelar: TcxButton
            AlignWithMargins = True
            Left = 908
            Top = 3
            Width = 86
            Height = 26
            Align = alRight
            Caption = 'Cancelar'
            LookAndFeel.SkinName = 'MoneyTwins'
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
            TabOrder = 0
          end
          object CxBtnGuardar: TcxButton
            AlignWithMargins = True
            Left = 648
            Top = 3
            Width = 254
            Height = 26
            Align = alRight
            Caption = '&Registrar Gasto con este monto y personal'
            LookAndFeel.SkinName = 'MoneyTwins'
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
            OnClick = CxBtnGuardarClick
          end
          object cxCurrencyEdtSubtotal: TcxCurrencyEdit
            Left = 182
            Top = 3
            TabOrder = 2
            Width = 139
          end
          object CxLbl6: TcxLabel
            Left = 6
            Top = 6
            Caption = 'Importe de Personal Seleccionado:'
            Transparent = True
          end
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 70
          Width = 997
          Height = 420
          Margins.Left = 0
          Margins.Top = 70
          Margins.Right = 0
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 8
          object cxGBPersonalIncluido: TcxGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Align = alClient
            Caption = 'Seleccionar pagos de n'#243'mina que  desea comprobar'
            Style.LookAndFeel.SkinName = 'Whiteprint'
            StyleDisabled.LookAndFeel.SkinName = 'Whiteprint'
            StyleFocused.LookAndFeel.SkinName = 'Whiteprint'
            StyleHot.LookAndFeel.SkinName = 'Whiteprint'
            TabOrder = 0
            Height = 414
            Width = 991
            object CxGridPersonalIncluido: TcxGrid
              Left = 3
              Top = 15
              Width = 985
              Height = 389
              Align = alClient
              TabOrder = 0
              object CxGridPIncluido: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsPersonalIncluido
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                Styles.Background = cxStyle1
                Styles.Content = cxstylFontContent
                Styles.Header = cxStyle2
                object CxColumnincluir: TcxGridDBColumn
                  DataBinding.FieldName = 'Incluir'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ImmediatePost = True
                  Properties.OnChange = CxColumnincluirPropertiesChange
                end
                object CxColumnEmpresa: TcxGridDBColumn
                  Caption = 'Empresa'
                  DataBinding.FieldName = 'TituloOrganizacion'
                  PropertiesClassName = 'TcxLabelProperties'
                  Width = 116
                end
                object CxColumnCodigoPersonal: TcxGridDBColumn
                  Caption = 'C'#243'digo Personal'
                  DataBinding.FieldName = 'CodigoPersonal'
                  PropertiesClassName = 'TcxLabelProperties'
                  Width = 141
                end
                object CxColumnEmpleado: TcxGridDBColumn
                  Caption = 'Empleado'
                  DataBinding.FieldName = 'NombreCompleto'
                  PropertiesClassName = 'TcxLabelProperties'
                  Width = 242
                end
                object CxColumnPercepciones: TcxGridDBColumn
                  Caption = 'Percepciones'
                  DataBinding.FieldName = 'TotPer'
                  PropertiesClassName = 'TcxLabelProperties'
                  Width = 97
                end
                object CxColumnDeducciones: TcxGridDBColumn
                  Caption = 'Deducciones'
                  DataBinding.FieldName = 'TotDed'
                  PropertiesClassName = 'TcxLabelProperties'
                  Width = 114
                end
                object CxColumnNeto: TcxGridDBColumn
                  DataBinding.FieldName = 'Neto'
                  PropertiesClassName = 'TcxLabelProperties'
                  Width = 140
                end
              end
              object CxLevelPersonalIncluido: TcxGridLevel
                GridView = CxGridPIncluido
              end
            end
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      ExplicitLeft = 5
      ExplicitTop = 30
      object cxGBGastos: TcxGroupBox
        Left = 195
        Top = 24
        Caption = 'Ingresar los siguientes datos:'
        Style.LookAndFeel.SkinName = 'Whiteprint'
        StyleDisabled.LookAndFeel.SkinName = 'Whiteprint'
        StyleFocused.LookAndFeel.SkinName = 'Whiteprint'
        StyleHot.LookAndFeel.SkinName = 'Whiteprint'
        TabOrder = 0
        Height = 498
        Width = 446
        object CxDbTxtReferencia: TcxDBTextEdit
          Left = 88
          Top = 128
          DataBinding.DataField = 'sReferencia'
          DataBinding.DataSource = dsUptGastos
          TabOrder = 4
          Width = 345
        end
        object CxLbl3: TcxLabel
          Left = 13
          Top = 107
          Caption = '*Cargo a:'
          Transparent = True
        end
        object CxLbl4: TcxLabel
          Left = 13
          Top = 129
          Caption = '*Referencia:'
          Transparent = True
        end
        object CxLbl5: TcxLabel
          Left = 13
          Top = 152
          Caption = '*Beneficiario:'
          Transparent = True
        end
        object CxLbl7: TcxLabel
          Left = 13
          Top = 61
          Caption = '*Fecha:'
          Transparent = True
        end
        object CxDbDateFecha: TcxDBDateEdit
          Left = 88
          Top = 59
          DataBinding.DataField = 'dIdFecha'
          DataBinding.DataSource = dsUptGastos
          StyleFocused.Color = 16701617
          TabOrder = 1
          Width = 345
        end
        object cxLabel1: TcxLabel
          Left = 13
          Top = 175
          Caption = '*Cta. Banco:'
          Transparent = True
        end
        object CxLblDescripcion: TcxLabel
          Left = 11
          Top = 338
          Caption = 'Descripci'#243'n:'
          Transparent = True
        end
        object CxDbMemoDescripcion: TcxDBMemo
          Left = 88
          Top = 339
          DataBinding.DataField = 'mDescripcion'
          DataBinding.DataSource = dsUptGastos
          StyleFocused.Color = 16701617
          TabOrder = 14
          Height = 61
          Width = 345
        end
        object CxLbl8: TcxLabel
          Left = 14
          Top = 199
          Caption = 'Raz'#243'n Social:'
          Transparent = True
        end
        object CxLbl9: TcxLabel
          Left = 14
          Top = 222
          Caption = 'Ciudad:'
          Transparent = True
        end
        object CxLbl10: TcxLabel
          Left = 14
          Top = 245
          Caption = 'C.P.:'
          Transparent = True
        end
        object CxLbl11: TcxLabel
          Left = 190
          Top = 245
          Caption = 'R.F.C.:'
          Transparent = True
        end
        object CxLbl12: TcxLabel
          Left = 14
          Top = 269
          Caption = 'Domicilio:'
          Transparent = True
        end
        object CxLbl13: TcxLabel
          Left = 14
          Top = 292
          Caption = 'Estado:'
          Transparent = True
        end
        object CxLbl14: TcxLabel
          Left = 14
          Top = 315
          Caption = 'Telefono:'
          Transparent = True
        end
        object CxDbTxtRazonSocial: TcxDBTextEdit
          Left = 88
          Top = 197
          DataBinding.DataField = 'sRazonSocial'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 7
          Width = 345
        end
        object CxDbTxtCiudad: TcxDBTextEdit
          Left = 88
          Top = 220
          DataBinding.DataField = 'sCiudad'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 8
          Width = 345
        end
        object CxDbTxtCP: TcxDBTextEdit
          Left = 88
          Top = 243
          DataBinding.DataField = 'sCp'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 9
          Width = 96
        end
        object CxDbTxtRFC: TcxDBTextEdit
          Left = 236
          Top = 243
          DataBinding.DataField = 'sRFC'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 10
          Width = 197
        end
        object CxDbTxtDomicilio: TcxDBTextEdit
          Left = 88
          Top = 266
          DataBinding.DataField = 'sDomicilio'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 11
          Width = 345
        end
        object CxDbTxtEstado: TcxDBTextEdit
          Left = 88
          Top = 289
          DataBinding.DataField = 'sEstado'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 12
          Width = 345
        end
        object CxDbTxtTelefono: TcxDBTextEdit
          Left = 88
          Top = 312
          DataBinding.DataField = 'sTelefono'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 13
          Width = 345
        end
        object CxLbl15: TcxLabel
          Left = 14
          Top = 38
          Caption = 'Importe:'
          Transparent = True
        end
        object CxDbTxtImporte: TcxDBTextEdit
          Left = 88
          Top = 36
          DataBinding.DataField = 'dImporteTotal'
          DataBinding.DataSource = dsUptGastos
          Enabled = False
          TabOrder = 0
          Width = 345
        end
        object CxCbbArea: TcxDBLookupComboBox
          Left = 88
          Top = 105
          DataBinding.DataField = 'sIdArea'
          DataBinding.DataSource = dsUptGastos
          Properties.KeyFieldNames = 'sIdArea'
          Properties.ListColumns = <
            item
              Caption = 'Area a Cargar'
              FieldName = 'sDescripcion'
            end>
          Properties.ListSource = dsCargo
          TabOrder = 3
          Width = 345
        end
        object CxCbbBeneficiario: TcxDBLookupComboBox
          Left = 88
          Top = 151
          DataBinding.DataField = 'sIdProveedor'
          DataBinding.DataSource = dsUptGastos
          Properties.KeyFieldNames = 'sIdEmpleado'
          Properties.ListColumns = <
            item
              Caption = 'Empleado'
              FieldName = 'NombreEmpleado'
            end>
          Properties.ListSource = dsPersonal
          Properties.OnCloseUp = CxCbbBeneficiarioPropertiesCloseUp
          TabOrder = 5
          Width = 345
        end
        object CxCbbCuentaBanco: TcxDBLookupComboBox
          Left = 88
          Top = 174
          DataBinding.DataField = 'sIdNumeroCuenta'
          DataBinding.DataSource = dsUptGastos
          Properties.KeyFieldNames = 'sidNUmerocuenta'
          Properties.ListColumns = <
            item
              Caption = 'N'#250'mero de Cuenta'
              FieldName = 'sidNUmerocuenta'
            end
            item
              Caption = 'Nombre de Cuenta'
              FieldName = 'sNombreCuenta'
            end>
          Properties.ListSource = dsCuentaBancaria
          TabOrder = 6
          Width = 345
        end
        object Panel2: TPanel
          Left = 3
          Top = 457
          Width = 440
          Height = 31
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 29
          object cxButton1: TcxButton
            AlignWithMargins = True
            Left = 351
            Top = 3
            Width = 86
            Height = 25
            Align = alRight
            Caption = 'Cancelar'
            LookAndFeel.SkinName = 'MoneyTwins'
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
            TabOrder = 0
          end
          object CxBtnGuardarTodo: TcxButton
            AlignWithMargins = True
            Left = 183
            Top = 3
            Width = 162
            Height = 25
            Align = alRight
            Caption = '&Registrar Gasto y Detalle'
            LookAndFeel.SkinName = 'MoneyTwins'
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
            OnClick = CxBtnGuardarTodoClick
          end
        end
        object CxLbl2: TcxLabel
          Left = 14
          Top = 84
          Caption = '*Proyecto:'
          Transparent = True
        end
        object CxCbbProyectos: TcxDBLookupComboBox
          Left = 88
          Top = 82
          DataBinding.DataField = 'sNumeroOrden'
          DataBinding.DataSource = dsUptGastos
          Properties.KeyFieldNames = 'sNumeroOrden'
          Properties.ListColumns = <
            item
              Caption = 'Descripci'#243'n'
              FieldName = 'sDescripcionCorta'
            end>
          Properties.ListSource = dsOrden
          TabOrder = 2
          Width = 345
        end
        object CxChkBoxComprobar: TcxCheckBox
          Left = 90
          Top = 406
          AutoSize = False
          Caption = 'Comprobar gasto con el '#13#10'personal seleccionado'
          Properties.ImmediatePost = True
          State = cbsChecked
          TabOrder = 31
          Transparent = True
          Height = 22
          Width = 343
        end
      end
    end
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
    Left = 608
    DockControlHeights = (
      0
      0
      59
      0)
    object DxBarOpciones: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 749
      FloatTop = 8
      FloatClientWidth = 120
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DxBarBtnRegistrarGasto'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnEliminarGasto'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnDetalle'
        end
        item
          Visible = True
          ItemName = 'DxBarBtnCerrar'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object DxBarBtnRegistrarGasto: TdxBarLargeButton
      Caption = '&Registrar Gastos'
      Category = 0
      Hint = 'Registrar Gastos'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000010000
        0002000000050000000700000008000000080000000800000009000000090000
        000900000009000000090000000A0000000A0000000A0000000A0000000A0000
        000B0000000B0000000B0000000B0000000B0000000B0000000C0000000C0000
        000C0000000C0000000C0000000B000000090000000400000001000000020000
        000800000012000000180000001B0000001C0000001D0000001D0000001E0000
        001F0000001F0000002000000021000000220000002300000023000000240000
        00250000002500000026000000270000002800000028000000290000002A0000
        002B0000002B0000002B000000290000001F0000000E00000003000000030000
        000E000000320000003300000034000000350000003600000037000000380000
        00390000003A0000003B0000003C0000003D0000003E0000003F000000400000
        0041000000420000004300000044000000450000004600000047000000480000
        00490000004A0000004B0000004C0000004D0000001C00000007000000030000
        000E000000230000002400000025000000260000002700000028000000280000
        00290000002A0000002B0000002C0000002D0000002E0000002F000000300000
        0031000000310000003200000033000000340000003500000036000000370000
        0038000000390000003A0000003B0000003C0000002000000008000000020000
        000900000016000000170000001700000018000000190000001A0000001A0000
        001B0000001C0000001D0000001E0000001E0000001F00000020000000210000
        0022000000230000002300000024000000250000002600000027000000280000
        0028000000290000002A0000002B0000002C0000001C00000007000000010000
        00040000000B0000000B0000000D0000000D0000000E0000000F0000000F0000
        0010000000110000001100000011000000120000001200000013000000140000
        001400000015000000170000001800000018000000190000001A0000001B0000
        001B0000001C0000001D0000001E0000001F0000001100000005000000000000
        000200000005000000080000000A0000000B0000000C0000000D0000000E0000
        000E0000000E0000000E0000000C0000000A000000090000000A0000000C0000
        000E000000110000001300000015000000170000001700000018000000190000
        00190000001B0000001B00000017000000100000000700000002000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        0006000000070000000500000003000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001000000030000000B0000
        00160000001A000000140000000D000000070000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000362822FF372822FF362721FF362821FF362821FF00000015452E
        26FF241510DA100A0788020101340000001B0000001000000008000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000372922FF00000000000000000000000100000006000000184E38
        2ED7A07C6FFF544649FF2A2D47F716254FB3070C1A57000000180000000B0000
        0004000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000382923FF0000000000000000000000010000000400000012281D
        187F82706CFFADCAE6FF7492BFFF425D99FF2E478AFF101E3F9A0000001C0000
        000B000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000392A23FF000000000000000000000000000000020000000B0504
        032B555974F6DBE3EFFFA2C2E2FF7896C2FF536DA2FF315194FF071A439A0000
        001B0000000B0000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003B2C24FF00000000000000000000000000000001000000060000
        0015293B63AA8B9FC7FFCED9E9FF2084DBFF51A9E2FF1552AAFF154B9EFF081C
        44990000001A0000000B00000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C2C25FF00000000000000000000000000000001000000030000
        000C0B14224D4B6CABFFFFFFFFFF4DA3E5FF2389DFFF56ADE3FF1658ACFF174F
        A0FF081D4598000000190000000A000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003E2D25FF00000000000000000000000000000000000000010000
        000500000012213254926990C2FFC2E5F8FF50A7E6FF2791E0FF5DB1E5FF1A5D
        AFFF1953A4FF091F4797000000180000000A0000000300000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003E2E26FF00000000000000000000000000000000000000010000
        0002000000070000001417385A924590D0FFC7E8F8FF56AEE7FF2C97E1FF62B5
        E6FF1B62B2FF1B57A6FF0A204995000000160000000900000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000403027FF00000000000000000000000000000000000000000000
        0001000000020000000700000013173A5C904895D2FFCBEBFAFF5AB4EBFF319D
        E4FF67BAE7FF1E65B6FF1D5DA9FF0B234A940000001500000009000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000413028FF00000000000000000000000000000000000000000000
        000000000001000000020000000700000012183B5D8F4C9AD4FFCFEEFBFF60B9
        EDFF36A5E9FF6EBEE8FF206BB9FF2061ADFF0C254D9300000013000000080000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000433229FF00000000000000000000000000000000000000000000
        00000000000000000000000000020000000600000010193D5E8E4F9FD7FFD3F0
        FCFF64BEEFFF3BABEBFF72C2EAFF2371BCFF2266AFFF0D284E92000000120000
        0008000000020000000100000000000000000000000000000000000000000000
        00000000000043332AFF00000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000060000000F1A3F5F8C52A3
        D8FFD6F2FCFF6AC5F0FF42B2EBFF77C6ECFF2677C0FF256BB4FF0E2950900000
        0011000000070000000200000001000000000000000000000000000000000000
        00000000000046342BFF00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000050000000D1B41
        608B56A8DAFFD9F4FDFF89D5F6FF47BBEFFF7BCBECFF2A7DC1FF2871B7FF191C
        278F0000000F0000000600000002000000000000000000000000000000000000
        00000000000046352CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000040000
        000C1C43618A5AADDCFFDCF6FDFF74CFF6FF4CC0F0FF80D0EEFF78777BFF794A
        3AFF2A110B8E0000000E00000006000000020000000000000000000000000000
        00000000000048362CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00040000000B1C4462885DB0DEFFDEF8FEFF7AD6F7FF90B9C5FFD8C1B3FF996B
        59FF815141FF190D228C0000000C000000050000000100000000000000000000
        00000000000049372CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100000003000000091D45638760B4E0FFE7F7F9FFDBC3B1FFCFB39FFFDBC5
        B8FF584B8BFF212095FF0A0A3E8B0000000B0000000400000001000000000000
        0000000000004A382EFF4A372DFF4A382DFF4A382DFF49372DFF48372DFF4936
        2DFF48372DFF48362CFF48362CFF47362CFF47352CFF46352CFF47352CFF4735
        2BFF46352BFF45342BFF0000000831384386B58F7EFFFAF0E2FFDFC8B6FF9A97
        C5FF8791E3FF2B2EAAFF25259CFF0F0F45890000000600000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000002000000074A2F2885BC9788FFF6EEE7FF8B9F
        EDFF6275E1FF98A2E7FF7B85D0FF272A96FF0000000700000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000010000000200000006372C44846B78D4FFDBE7
        FCFF8BA0EEFFACC0F3FF4E57C3FF21235A840000000400000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000200000004262A60827180
        DAFFDCE8FCFF6675D7FF262A6083000000050000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000032B31
        66815761CEFF2C31668100000004000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = DxBarBtnRegistrarGastoClick
      AutoGrayScale = False
    end
    object DxBarBtnEliminarGasto: TdxBarLargeButton
      Caption = '&Eliminar Gasto'
      Category = 0
      Hint = 'Eliminar Gasto'
      Visible = ivAlways
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
      AutoGrayScale = False
    end
    object DxBarBtnComprobar: TdxBarLargeButton
      Caption = '&Comprobar Gasto'
      Category = 0
      Hint = 'Comprobar Gasto'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000030000000500000006000000070000000700000007000000070000
        0007000000070000000600000006000000030000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00040000000C00000014000000180000001A0000001A0000001A0000001A0000
        001B0000001B00000019000000150000000D0000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        000B0C1F175C246449EB286D51FF286C50FF286C4FFF276C50FF276B4FFF286B
        4EFF276B4FFF276A4EFF236047EB0B1E165E0000000C00000003000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        001224634AE84FB190FF49C59DFF49C49DFF48C59DFF47C49BFF46C39BFF46C3
        9BFF46C29AFF45C299FF3DA983FF236045E90000001400000005000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        00162A7154FF5FCDABFF36BC8FFF35BB8EFF35BB8EFF34BB8EFF34BB8EFF35BA
        8DFF34BA8DFF33BA8CFF47C39BFF286D50FF0000001800000006000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000060000
        00162B7256FF64D0ADFF36BD90FF36BC90FF36BC8FFF36BC8FFF35BC8EFF35BB
        8EFF35BB8EFF35BA8DFF48C59DFF286E51FF0000001900000006000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000050000
        00162B7457FF66D1B0FF37BE91FF36BE91FF37BD91FF36BD90FF36BC8FFF36BC
        8FFF36BC8FFF36BC8FFF4AC59EFF296F52FF0000001800000006000000010000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000010000000100000001000000000000000000000001000000050000
        00152B7658FF6AD2B3FF38BF93FF37BF92FF37BE92FF37BE91FF37BD91FF37BE
        91FF36BC91FF36BD90FF4DC8A1FF297154FF0000001800000006000000010000
        0000000000000000000000000001000000010000000100000000000000010000
        0004000000060000000400000002000000010000000000000001000000050000
        00152C775AFF6DD4B4FF38C094FF38BF94FF38BF94FF38BF93FF38BF93FF37BE
        92FF37BE92FF37BE91FF4FC9A3FF2A7355FF0000001700000006000000010000
        0000000000000000000200000005000000060000000400000001000000030000
        0009332823890000000E00000007000000020000000100000000000000050000
        00142D795CFF70D5B8FF39C095FF3AC095FF39C095FF39C094FF39C094FF38BF
        94FF38BF93FF38BE93FF51CAA5FF2B7457FF0000001600000006000000010000
        000000000002000000070000000E332825890000000900000003000000040000
        000E69524BFF3327238E00000010000000070000000200000001000000050000
        00132E7B5EFF73D6BAFF3AC197FF3BC196FF3AC296FF3AC096FF3AC196FF39C0
        95FF39C095FF39C094FF54CBA7FF2C7658FF0000001600000005000000010000
        000200000007000000113126228F69524BFF0000000F00000004000000040000
        00106D564DFFA39189FF3327238F000000100000000700000002000000050000
        00132F7C5FFF76D8BBFF3CC399FF3BC298FF3BC298FF3AC297FF3AC197FF3AC2
        96FF3AC196FF3AC095FF55CEA9FF2D775AFF0000001500000005000000030000
        000600000010322723909B887FFF6D564FFF0000001200000005000000040000
        0010715B52FFE2D7D0FFA29187FF3428248E0000000F00000006000000060000
        0012307E61FF78D9BEFF3CC49AFF3CC499FF3CC399FF3BC398FF3CC398FF3BC2
        98FF3AC298FF3AC297FF57CFABFF2D795CFF0000001500000006000000070000
        000F3428248F9F8C83FFD6C7BCFF715A52FF0000001300000005000000040000
        000F775F56FFE6DCD5FFDBCEC5FFA5928AFF3529258E0000000D000000090000
        0012318163FF7BDBC0FF3DC59BFF3DC49BFF3DC49AFF3DC49AFF3CC39AFF3CC4
        99FF3CC399FF3BC398FF59CFADFF2E7B5DFF000000150000000A0000000E362A
        258EA39087FFD5C6BCFFD9CBC2FF755F56FF0000001200000004000000030000
        000D7B645AFFE9E1DBFFDACCC2FFDDD0C7FFA7958CFF362A258C0000000D0000
        0014318264FF81DDC3FF46C9A2FF4ACBA4FF4ACCA5FF4ECCA6FF4DCCA6FF4ACA
        A3FF49C9A2FF44C79FFF5FD2B1FF2F7D5FFF000000150000000E382C278BA695
        8CFFD9CBC0FFD3C3B8FFDDCFC6FF7A635AFF0000001000000004000000030000
        000C80685EFFEDE5E1FFDCCFC5FFDBCEC4FFE1D5CDFF8D7970FF1B16134D0000
        001338886CFF8FE3CCFF52CFABFF52CFABFF52CEAAFF51CEAAFF51CEAAFF51CD
        A9FF51CDA9FF50CDA8FF71D9BCFF358366FF000000161D17144E927E75FFE7DE
        D7FFD6C8BDFFD6C7BCFFDFD3CBFF7E685EFF0000000F00000004000000030000
        000B836C62FFF0E9E4FFDED2C8FFE2D7CFFFAC9C95FF382B27870000000C0000
        00123B8C6FFF94E4CFFF56D1ADFF56D1ADFF56D0ADFF56D0ADFF55D0ADFF55D0
        ACFF54CFACFF54CEACFF75DBBFFF388769FF000000140000000D392C2887B1A2
        9BFFE7DDD6FFD9CAC0FFE3D7CFFF836C63FF0000000E00000004000000020000
        0009887166FFF1EDE8FFE5DBD3FFAFA098FF392C288700000009000000070000
        00103C8F71FF98E5D2FF59D2B1FF59D2B1FF58D2B0FF58D2B0FF58D2AFFF57D1
        AFFF58D1AFFF57D1AEFF7ADDC3FF3A896CFF0000001200000007000000093A2D
        2887B2A39CFFE8DFD8FFE5DAD3FF867167FF0000000D00000003000000020000
        00088C746AFFF5EFEBFFB2A29BFF3B2E28860000000800000003000000050000
        000E3D9274FF9DE7D5FF5DD4B4FF5CD4B3FF5CD4B3FF5CD4B3FF5CD3B2FF5CD3
        B1FF5CD3B1FF5BD3B0FF7EDFC5FF3A8C6EFF0000001100000005000000030000
        00093B2E2987B3A59EFFEDE6E0FF8B756BFF0000000C00000003000000020000
        00078E786DFFB6A7A0FF3C2F2984000000070000000300000001000000030000
        000E419376FFA0E9D7FF60D6B6FF5FD6B6FF5FD6B6FF5FD5B6FF5ED5B5FF5ED5
        B5FF5ED5B4FF5ED4B4FF82E1C8FF3D8E71FF0000001000000004000000010000
        0003000000083B2E2A86B5A69FFF8F796EFF0000000A00000003000000010000
        0004917B70FF3C2F2A8200000005000000020000000100000000000000030000
        000D419779FFA5EBDAFF64D8B9FF63D7B9FF63D7B8FF62D7B8FF62D7B7FF63D6
        B7FF62D6B7FF62D6B6FF87E1CAFF3F9173FF0000001000000004000000000000
        000100000003000000073C2F2A85937C72FF0000000700000002000000010000
        0002493E38800000000300000002000000010000000000000000000000030000
        000C43997CFFA9ECDCFF67DABCFF67DABCFF67DABCFF66D9BBFF66D9BBFF66D9
        BBFF65D9BAFF66D9BAFF8AE4CDFF409376FF0000000F00000004000000000000
        00000000000100000003000000054A3F3A820000000400000001000000000000
        0001000000010000000100000000000000000000000000000000000000030000
        000C459C7FFFACEDDEFF6ADBBEFF6ADBBEFF6ADBBEFF6ADBBEFF69DBBDFF69DB
        BDFF69DABDFF69DABCFF8FE6D0FF429679FF0000000E00000004000000000000
        0000000000000000000000000002000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        000B479D81FFB0EEE0FF6EDDC1FF6EDDC0FF6DDDC0FF6EDCC0FF6DDCC0FF6DDC
        BFFF6CDCBFFF6CDCBFFF93E7D3FF44987BFF0000000E00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        000B49A183FFB4EFE1FF71DFC3FF71DEC3FF70DEC3FF70DEC3FF70DEC3FF6FDE
        C3FF6FDDC2FF6FDDC2FF96E8D5FF469B7EFF0000000D00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000A4BA286FFB7F0E4FF74DFC6FF74DFC6FF74DFC5FF73DFC6FF73DFC5FF73DF
        C5FF74DFC4FF73DFC4FF9BEAD7FF489E81FF0000000C00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00094BA688FFBAF2E5FF80E4CBFF77E1C7FF77E1C7FF77E0C7FF77E0C7FF76E0
        C6FF76E0C6FF76E0C6FF9EEBDAFF49A082FF0000000B00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        000745997EE99FDFCFFFBCF2E7FFBBF2E6FFBBF2E6FFBBF2E5FFBAF1E5FFBAF1
        E5FFB9F1E5FFB9F1E5FF9CDDCBFF449379E90000000800000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0004142A23463F856ECC4FA88BFF4EA88BFF4FA78BFF4EA78AFF4EA78AFF4DA7
        89FF4DA689FF4DA688FF3C826ACD132921480000000500000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000030000000600000008000000080000000900000009000000090000
        0009000000090000000900000007000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000200000002000000020000
        0002000000020000000200000002000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object DxBarBtnDetalle: TdxBarLargeButton
      Caption = 'Ver detalle de Gasto'
      Category = 0
      Hint = 'Ver detalle de Gasto'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000010000000100000001000000010000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000030000
        0005000000060000000700000007000000070000000500000003000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000300000007020907210C36
        268212543BC3155E41D919704EFF155E40D9115239BF0A32227A0209061C0000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000100000005010403150F3D2B8F1D7454F72A95
        70FF32AB83FF37B88EFF3ABE93FF35B78BFF30A87FFF26926AFF196E4EF50D39
        288B0103020C0000000100000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000005030A0722186044CF2F9470FF3BBD92FF3DC2
        97FF3CC297FF7CDEC4FF7BDDC3FF3AC094FF3ABF94FF39BF93FF36B88CFF238A
        65FF13583DCD0208051800000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000401030213195F45CA3BA380FF40C49CFF42C59DFF5CD1
        AEFF6ED8BAFF197150FF19714FFF6FD8BBFF62D2B1FF42C399FF3ABF94FF3ABF
        93FF299770FF13553BC10103020C000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000030000000912433193399C7AFF46C8A1FF43C69DFF61D0B1FF52AE
        91FF348F70FF197351FF197250FF2D8767FF439E80FF6FD2B7FF47C69FFF3CC0
        96FF3BC095FF278E69FF0E392985000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100000005040E0A2A288262FA53C9A7FF45C8A1FF44C8A0FF45A283FF1B75
        52FF146141FF105737FF0F5537FF1A724FFF1A7250FF217A58FF5EC3A6FF3EC3
        98FF3DC298FF39BA91FF1E7554F5030B081E0000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000091443328D45A887FF4FCEA9FF47CAA3FF46C9A2FF298362FF1666
        45FF2F9A76FF4CC49FFF67D1B3FF1E7856FF1A7351FF1A7351FF348F6FFF40C4
        9BFF3FC399FF3EC399FF2E9873FF0D3324730000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00030000000C20684ECA5AC3A4FF4BCDA7FF47CBA5FF47CBA5FF135D3DFF3298
        76FF74DCC0FF70CCB3FF429D7FFF1B7553FF1B7552FF1A7452FF1C7351FF41C5
        9DFF40C59CFF40C59CFF3AB28BFF175A40C10000000400000001000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        00040000000E277E5FEA65D2B4FF4BCDA7FF49CDA7FF49CCA6FF4FCFAAFF74D3
        B9FF389474FF1D7755FF1D7754FF1C7654FF1B7654FF1B7553FF1B6D4DFF43C7
        9FFF43C79EFF42C79EFF3FBE98FF1D6B4DDE0000000500000001000000000000
        0000000000000000000000000001000000010000000300000005000000060000
        000A000000112D8968FA6CDABCFF4ECFABFF4BCEA9FF4ACEA8FF64CEB3FF2D88
        68FF278262FF2A8564FF2A8565FF288462FF247B5CFF186748FF329F7BFF45C9
        A1FF44C8A1FF44C8A0FF45C69FFF227757F10000000500000001000000000000
        00000000000100000001000000030000000704080E21152B4F8221437CC3244A
        88D91327497D2C8567F16ED6BAFF55D3B0FF4CCFAAFF53D2AFFF55AD91FF2D8A
        68FF2D8968FF2D8868FF267D5EFF1E6E4FFF237657FF48AF8FFF5FD4B2FF4ECE
        A9FF46CAA3FF46CAA2FF4AC5A0FF206F51DE0000000500000001000000000000
        00010000000100000005020306151933598F3062A7F7387DC3FF3B8ED3FF3B98
        DAFF2051738D2C7D68DF69CCB0FF60D7B7FF5AD5B4FF67DABCFF429B7CFF308C
        6DFF308C6CFF308C6BFF3B9375FF5AC3A5FF8CE4CEFFA0EAD9FF8FE5CFFF63D6
        B7FF55D0ADFF47CBA4FF4CBD9AFF1D6148C10000000400000000000000000000
        00010000000504090F222B538CCF407FC3FF439FDFFF43A3E3FF48A7E4FF57AF
        E6FF40789BB22C6D65BA56B598FF78E0C6FF6FDCC0FF6BDBBEFF45A385FF308B
        6BFF338E6EFF328E6EFF88D5C0FF9BE4D2FF56AC91FF308B6CFF3F9678FF67D8
        BAFF67D8BAFF56D2AEFF43A888FF11392A730000000300000000000000010000
        0004010304132D568CCA4B91CFFF48A7E5FF48A6E4FF58B0E8FF58A6DDFF3775
        B9FF215194E4102D447F389776FC8FE0CCFF83E2CAFF6EDDC1FF6AD8BBFF2D82
        64FF2D8363FF328A6BFF359070FF33906FFF2B8261FF297F5FFF45A687FF6BDB
        BDFF6ADABCFF73D5BBFF2D8767F5040D0A1F0000000200000000000000030000
        0009223F6493508FCCFF4FADE7FF4CAAE6FF5CB3E8FF4588C7FF2258A5FF2156
        A3FF2155A3FF122F5B9622605BBD5DB598FF9BEAD7FF81E3CBFF72DEC2FF6CD8
        BCFF44A383FF2F8866FF369272FF369272FF409D7DFF47A586FF6DD9BDFF6FDC
        BFFF7EE0C7FF51AB8EFF1749378A00000004000000010000000000000005070E
        152A467FBEFA62B3E7FF50AEE7FF56B0E8FF4183C3FF235AA6FF2359A5FF1E50
        9DFF17418DFF11357BEA0B1F3D7A2D806AE26DC1A7FFA2EBDAFF8BE5CEFF77E0
        C6FF74DFC4FF74DEC4FF227656FF227655FF73DEC3FF73DEC3FF75DEC4FF88E4
        CDFF66BBA1FF246C52C40103030C000000020000000000000000000000092443
        658D5EA0D7FF5EB7EAFF54B1E8FF57A3DBFF245DA8FF245CA8FF1E529FFF2761
        A8FF4293D2FF4EABE6FF3477AAD4122F477C338972E15DB598FF9FE5D3FFA0EC
        D9FF8EE7D2FF82E3CBFF7AE1C7FF7AE1C7FF82E3CAFF8EE6D0FF95E2CEFF58B0
        93FF23644DB3040A0819000000020000000100000000000000000000000C396A
        9CCA6EB7E5FF5DB7EAFF78C5EFFF4384C2FF255FAAFF255EA9FF3D7DBEFF73C2
        EEFF72C2EFFF72C1EEFF51ADE6FF428FBDD5224A61772D736BBE3D9D7DFA6ABF
        A4FF8CD7C1FF9FE5D2FFADEFDEFF9FE4D2FF8BD6C0FF68BCA1FF389273F21335
        29620000000700000003000000010000000000000000000000000000000E4783
        BCEA79C4EEFF5EB8EBFF174590FF2762ABFF2863ABFF2D68AFFF1D4D98FF1E4E
        97FF1F4E97FF1E4D96FF66BBECFF5FB5E9FF4DA2D3EA3066879A234E5E7D2D6F
        6AB5338671DC359072EF3A9C79FF338C6BE62A755BC41A4A3981050E0B1F0000
        00050000000200000001000000000000000000000000000000000000000E4E91
        CDFA82CCF1FF65BDEDFF7FCAF1FF2F6DB3FF3872B7FF3874B7FF90D1F2FF91D2
        F3FF90D1F3FF8FD1F2FF8ED0F2FF71C1EEFF6FBFECFF5EB7E8FF4D9DCDE33977
        9CAE2D5D7A8B1D36547700000009000000070000000600000004000000020000
        00010000000000000000000000000000000000000000000000000000000D4A8B
        C1EA87CDF0FF6FC3EEFF1F509AFF346EB0FF3C78B9FF3B77B9FF346EB1FF2356
        9EFF23559EFF23559EFF22549EFF78C6EFFF7CC7F0FF76C4EFFF67BBECFF59B4
        E9FF5FB3E6FF3B6EA8DE00000007000000020000000100000001000000000000
        00000000000000000000000000000000000000000000000000000000000B3F77
        A4C985C7EDFF84CEF2FF86CFF3FF4E8BC2FF3F7CBCFF3D7CBBFF5997CCFF94D5
        F4FF86CFF2FF80CCF1FF84CEF2FF91D3F3FF8ACAECFF8ACFF2FF7CC8F0FF68BD
        EDFF65B1E4FF366394C100000004000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000082B51
        6E8B75B8E4FFA3DDF6FF8ED4F4FF73B7E1FF3772B4FF4180BEFF407FBDFF5C98
        CCFF8BC6E9FF9DD9F4FF8AC5E8FF5A97CBFF3E7CBBFF6DA9D8FF85CDF2FF81CB
        F0FF62A7DBFF203B567300000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000050911
        172857A0D6FAACDEF6FFA0DCF6FF91D5F4FF5694CAFF3772B4FF4381BFFF4381
        C0FF4381BFFF4380BEFF4380BEFF437FBEFF417EBDFF346EB0FF7DC3E9FF91D0
        F1FF508EC9F5070E131F00000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00082D56748F7ABBE5FFB7E6F8FFA2DEF7FF93D5F4FF61A1D1FF336EB0FF3D7A
        B9FF4280BEFF4584C1FF4280BDFF3D79B8FF316CAFFF5E9CCFFF9AD9F5FF71B0
        E0FF2A4E6D8A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0004020405114381ADCD89C5EAFFBDE8F9FFABE1F7FF9BDBF7FF85C6E9FF518E
        C4FF3A74B4FF2E68ACFF3973B3FF508CC3FF84C4E8FFA6DEF7FF84BFE6FF3E75
        A1C40204050C0000000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100000005070E121F4382ADCD78BCE5FFBAE5F8FFBDE8FAFFAFE3F9FFA5DE
        F7FF9DDDF7FF9DDCF7FFA3DEF7FFADE2F8FFAFDFF6FF77B8E3FF3A6D93B3060B
        0F19000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000002000000040204050F2E5A779157A3D6F785C3E9FFA6D9F2FFB9E5
        F7FFC5EDFBFFB8E4F7FFA5D7F1FF84C2E8FF569DD0F21E394D62000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000003000000060912172429506A82407DA6C44C95
        C5E655A5DCFF4C94C4E6407DA5C4294F6A81080F151F00000005000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000300000004000000060000
        0007000000070000000700000006000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      AutoGrayScale = False
    end
    object DxBarBtnCerrar: TdxBarLargeButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
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
  end
  object cxStyleReposEstilosGrid: TcxStyleRepository
    Left = 960
    Top = 80
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
  object TcxStyleRepository
    Left = 968
    Top = 48
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
    end
    object cxStyle4: TcxStyle
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
  object CdNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 840
  end
  object CdPersonalIncluido: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 880
    Top = 65528
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 24
  end
  object CdListaGastos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 704
    Top = 64
  end
  object dsListaGastos: TDataSource
    DataSet = CdListaGastos
    Left = 632
    Top = 72
  end
  object dsPersonalIncluido: TDataSource
    DataSet = CdPI
    Left = 968
    Top = 176
  end
  object CdPI: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 920
    Top = 65528
  end
  object CdUptGastos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 88
  end
  object dsUptGastos: TDataSource
    DataSet = CdUptGastos
    Left = 528
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 288
  end
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 680
  end
  object dsOrden: TDataSource
    DataSet = cdOrden
    Left = 736
  end
  object cdOrden: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 944
    Top = 128
  end
  object dsCuentaBancaria: TDataSource
    DataSet = cdCuentaBancaria
    Left = 800
  end
  object cdCuentaBancaria: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 176
  end
  object dsCargo: TDataSource
    DataSet = cdCargo
    Left = 968
    Top = 144
  end
  object cdCargo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 952
    Top = 232
  end
  object CdPEgresos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 288
  end
end
