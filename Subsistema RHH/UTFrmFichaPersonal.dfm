object FrmFichaPersonal: TFrmFichaPersonal
  Left = 0
  Top = 0
  Caption = 'Ficha de Aspirante'
  ClientHeight = 619
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvLabel20: TJvLabel
    Left = 24
    Top = 141
    Width = 36
    Height = 13
    Caption = 'CURP: '
    Transparent = True
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
  end
  object Panel4: TPanel
    Left = 49
    Top = 0
    Width = 866
    Height = 578
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 856
      Height = 568
      ActivePage = spli
      Align = alClient
      TabOrder = 0
      Visible = False
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Informativo'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 848
          Height = 540
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 848
            Height = 540
            Align = alClient
            BevelOuter = bvNone
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 5
              Top = 5
              Width = 838
              Height = 530
              Align = alClient
              Caption = 'Datos Informativos del Postulante'
              TabOrder = 0
              object JvLabel2: TJvLabel
                Left = 180
                Top = 44
                Width = 48
                Height = 13
                Caption = 'Nombres:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel3: TJvLabel
                Left = 139
                Top = 68
                Width = 89
                Height = 13
                Caption = 'Apellidos Paterno:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel4: TJvLabel
                Left = 78
                Top = 117
                Width = 25
                Height = 13
                Caption = 'NSS:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel5: TJvLabel
                Left = 70
                Top = 220
                Width = 33
                Height = 13
                Caption = 'CURP:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel22: TJvLabel
                Left = 15
                Top = 270
                Width = 88
                Height = 13
                Caption = 'Grupo Sanguineo:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel23: TJvLabel
                Left = 538
                Top = 142
                Width = 48
                Height = 13
                Caption = 'Tel'#233'fono:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel26: TJvLabel
                Left = 77
                Top = 245
                Width = 26
                Height = 13
                Caption = 'RFC:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel28: TJvLabel
                Left = 137
                Top = 92
                Width = 91
                Height = 13
                Caption = 'Apellidos Materno:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel15: TJvLabel
                Left = 261
                Top = 115
                Width = 8
                Height = 16
                Caption = '-'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
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
              object JvLabel17: TJvLabel
                Left = 524
                Top = 191
                Width = 61
                Height = 13
                Caption = 'Estado Civil:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel18: TJvLabel
                Left = 522
                Top = 116
                Width = 66
                Height = 13
                Caption = 'Nacionalidad:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel19: TJvLabel
                Left = 694
                Top = 192
                Width = 30
                Height = 13
                Caption = 'Sexo:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel33: TJvLabel
                Left = 34
                Top = 141
                Width = 70
                Height = 13
                Caption = 'No. Infonavit:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel34: TJvLabel
                Left = 551
                Top = 169
                Width = 34
                Height = 13
                Caption = 'E-Mail:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object Image2: TImage
                Left = 807
                Top = 65
                Width = 17
                Height = 16
                Cursor = crHandPoint
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF610000001974455874536F6674776172650041646F62
                  6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
                  258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
                  3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
                  B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
                  F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
                  E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
                  3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
                  B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
                  E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
                  6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
                  DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
                  FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
                  F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
              end
              object Image1: TImage
                Left = 807
                Top = 43
                Width = 17
                Height = 16
                Cursor = crHandPoint
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF610000001974455874536F6674776172650041646F62
                  6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
                  258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
                  3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
                  B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
                  F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
                  E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
                  3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
                  B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
                  E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
                  6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
                  DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
                  FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
                  F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
              end
              object Image3: TImage
                Left = 807
                Top = 91
                Width = 17
                Height = 16
                Cursor = crHandPoint
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF610000001974455874536F6674776172650041646F62
                  6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
                  258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
                  3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
                  B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
                  F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
                  E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
                  3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
                  B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
                  E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
                  6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
                  DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
                  FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
                  F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
              end
              object JvLabel24: TJvLabel
                Left = 536
                Top = 216
                Width = 50
                Height = 13
                Caption = 'Contacto:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel25: TJvLabel
                Left = 493
                Top = 243
                Width = 98
                Height = 13
                Caption = 'Tel'#233'fono Contacto: '
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel16: TJvLabel
                Left = 25
                Top = 192
                Width = 79
                Height = 13
                Caption = 'Factor/Importe:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel6: TJvLabel
                Left = 135
                Top = 20
                Width = 93
                Height = 13
                Caption = 'Fecha de Registro:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel35: TJvLabel
                Left = 51
                Top = 164
                Width = 53
                Height = 13
                Caption = 'Aplicaci'#243'n:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel36: TJvLabel
                Left = 228
                Top = 164
                Width = 44
                Height = 13
                Caption = 'T'#233'rmino:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object jvlbl1: TJvLabel
                Left = 230
                Top = 191
                Width = 122
                Height = 13
                Caption = 'Tipo Credito INFONAVIT:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object btn1: TImage
                Left = 357
                Top = 17
                Width = 17
                Height = 16
                Cursor = crHandPoint
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF610000001974455874536F6674776172650041646F62
                  6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
                  258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
                  3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
                  B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
                  F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
                  E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
                  3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
                  B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
                  E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
                  6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
                  DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
                  FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
                  F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
              end
              object btn2: TImage
                Left = 472
                Top = 219
                Width = 17
                Height = 16
                Cursor = crHandPoint
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF610000001974455874536F6674776172650041646F62
                  6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
                  258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
                  3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
                  B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
                  F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
                  E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
                  3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
                  B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
                  E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
                  6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
                  DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
                  FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
                  F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
              end
              object btn3: TImage
                Left = 472
                Top = 242
                Width = 17
                Height = 16
                Cursor = crHandPoint
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF610000001974455874536F6674776172650041646F62
                  6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
                  258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
                  3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
                  B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
                  F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
                  E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
                  3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
                  B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
                  E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
                  6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
                  DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
                  FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
                  F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
              end
              object Image4: TImage
                Left = 807
                Top = 167
                Width = 17
                Height = 16
                Cursor = crHandPoint
                Picture.Data = {
                  0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                  001008060000001FF3FF610000001974455874536F6674776172650041646F62
                  6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
                  258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
                  3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
                  B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
                  F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
                  E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
                  3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
                  B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
                  E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
                  6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
                  DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
                  FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
                  F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
              end
              object DBAPaterno: TDBEdit
                Left = 230
                Top = 65
                Width = 571
                Height = 21
                Hint = 'Ingrese un apellido paterno'
                DataField = 'APaterno'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
              end
              object DBEdit4: TDBEdit
                Left = 275
                Top = 115
                Width = 129
                Height = 21
                Hint = 'Ingrese un numero de IMSS'
                DataField = 'numerosegurosocial'
                DataSource = dsPersonal
                MaxLength = 8
                ParentShowHint = False
                ShowHint = True
                TabOrder = 9
                Visible = False
              end
              object DBCurp: TDBEdit
                Left = 111
                Top = 216
                Width = 360
                Height = 21
                Hint = 'Inggrese una CURP'
                DataField = 'curp'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 14
              end
              object DBGrupoSanguineo: TDBEdit
                Left = 111
                Top = 266
                Width = 358
                Height = 21
                Hint = 'Ingrese un tipo de sangre.'
                DataField = 'Gruposanguineo'
                DataSource = dsPersonal
                MaxLength = 15
                ParentShowHint = False
                ShowHint = True
                TabOrder = 16
              end
              object DBTelefono: TDBEdit
                Left = 589
                Top = 140
                Width = 213
                Height = 21
                Hint = 'Ingrese un n'#250'mero telef'#243'nico'
                DataField = 'telefono'
                DataSource = dsPersonal
                MaxLength = 10
                ParentShowHint = False
                ShowHint = True
                TabOrder = 18
                OnKeyPress = DBTelefonoKeyPress
              end
              object DBRFC: TDBEdit
                Left = 111
                Top = 241
                Width = 358
                Height = 21
                Hint = 'Ingrese un RFC.'
                DataField = 'rfc'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 15
              end
              object DBAmaterno: TDBEdit
                Left = 230
                Top = 89
                Width = 571
                Height = 21
                Hint = 'Ingrese un apellido materno.'
                DataField = 'AMaterno'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
              end
              object GroupBox2: TGroupBox
                Left = 8
                Top = 287
                Width = 816
                Height = 133
                Caption = 'Domicilio'
                TabOrder = 1
                object JvLabel7: TJvLabel
                  Left = 19
                  Top = 26
                  Width = 29
                  Height = 13
                  Caption = 'Calle:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel8: TJvLabel
                  Left = 483
                  Top = 26
                  Width = 43
                  Height = 13
                  Caption = 'N'#250'mero:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel9: TJvLabel
                  Left = 7
                  Top = 48
                  Width = 41
                  Height = 13
                  Caption = 'Col'#243'nia:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel10: TJvLabel
                  Left = 458
                  Top = 71
                  Width = 68
                  Height = 13
                  Caption = 'Del/Municipio:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel11: TJvLabel
                  Left = 9
                  Top = 71
                  Width = 39
                  Height = 13
                  Caption = 'Ciudad:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel12: TJvLabel
                  Left = 13
                  Top = 94
                  Width = 39
                  Height = 13
                  Caption = 'Estado:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel13: TJvLabel
                  Left = 501
                  Top = 94
                  Width = 25
                  Height = 13
                  Caption = 'Pais:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel14: TJvLabel
                  Left = 499
                  Top = 48
                  Width = 27
                  Height = 13
                  Caption = 'C.P.:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBEditCalle: TDBEdit
                  Left = 54
                  Top = 21
                  Width = 361
                  Height = 21
                  Hint = 'Ingrese un nombre o numero de calle.'
                  DataField = 'Calle'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object DBEditNumero: TDBEdit
                  Left = 528
                  Top = 21
                  Width = 281
                  Height = 21
                  Hint = 'Ingrese un n'#250'mero de vivienda.'
                  DataField = 'Numero'
                  DataSource = dsPersonal
                  MaxLength = 5
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                end
                object DBEditColonia: TDBEdit
                  Left = 54
                  Top = 46
                  Width = 362
                  Height = 21
                  Hint = 'Ingrese una colonia.'
                  DataField = 'Colonia'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
                object DBEditMunicipio: TDBEdit
                  Left = 528
                  Top = 69
                  Width = 281
                  Height = 21
                  Hint = 'Ingrese un municipio.'
                  DataField = 'Municipio'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                end
                object DBEditCiudad: TDBEdit
                  Left = 54
                  Top = 69
                  Width = 362
                  Height = 21
                  Hint = 'Ingrese una ciudad.'
                  DataField = 'Ciudad'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
                object DBEditEstado: TDBEdit
                  Left = 54
                  Top = 93
                  Width = 362
                  Height = 21
                  Hint = 'Ingrese un estado.'
                  DataField = 'Estado'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                end
                object DBEditPais: TDBEdit
                  Left = 528
                  Top = 93
                  Width = 281
                  Height = 21
                  Hint = 'Ingrese un pais.'
                  DataField = 'Pais'
                  DataSource = dsPersonal
                  MaxLength = 50
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 7
                end
                object DBEditCP: TDBEdit
                  Left = 528
                  Top = 46
                  Width = 281
                  Height = 21
                  Hint = 'Ingrese un C.P.'
                  DataField = 'CP'
                  DataSource = dsPersonal
                  MaxLength = 5
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 5
                  OnKeyPress = DBEditCPKeyPress
                end
              end
              object Panel1: TPanel
                Left = 2
                Top = 488
                Width = 834
                Height = 40
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 26
              end
              object Panel2: TPanel
                Left = 380
                Top = 13
                Width = 209
                Height = 22
                BevelOuter = bvNone
                Enabled = False
                TabOrder = 24
                object JvLabel1: TJvLabel
                  Left = 16
                  Top = 4
                  Width = 39
                  Height = 13
                  Caption = 'C'#243'digo:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBEdit1: TDBEdit
                  Left = 61
                  Top = 1
                  Width = 140
                  Height = 21
                  Hint = 'C'#243'digo autogenerado'
                  TabStop = False
                  Color = clSilver
                  DataField = 'CodigoPersonal'
                  DataSource = dsPersonal
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object JvDBImage1: TJvDBImage
                Left = 3
                Top = 21
                Width = 101
                Height = 89
                DataField = 'imagen'
                DataSource = dsPersonal
                Stretch = True
                TabOrder = 6
              end
              object Button1: TButton
                Left = 3
                Top = 93
                Width = 101
                Height = 18
                Hint = 'Pulse aqu'#237' para cargar una foto.'
                Caption = 'Cargar Imagen'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                OnClick = Button1Click
              end
              object GroupBox3: TGroupBox
                Left = -4
                Top = 421
                Width = 828
                Height = 108
                Caption = 'Datos de Nacimiento'
                TabOrder = 2
                object JvLabel21: TJvLabel
                  Left = 137
                  Top = 16
                  Width = 35
                  Height = 13
                  Caption = 'Fecha:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel27: TJvLabel
                  Left = 488
                  Top = 17
                  Width = 39
                  Height = 13
                  Caption = 'Ciudad:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel29: TJvLabel
                  Left = 133
                  Top = 39
                  Width = 39
                  Height = 13
                  Caption = 'Estado:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel30: TJvLabel
                  Left = 502
                  Top = 38
                  Width = 25
                  Height = 13
                  Caption = 'Pais:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel31: TJvLabel
                  Left = 6
                  Top = 61
                  Width = 161
                  Height = 13
                  Caption = 'Apellidos y Nombres de la Madre:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object JvLabel32: TJvLabel
                  Left = 8
                  Top = 85
                  Width = 159
                  Height = 13
                  Caption = 'Apellidos y Nombres de la Padre:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object DBFechaNacimiento: TDBDateEdit
                  Left = 179
                  Top = 14
                  Width = 295
                  Height = 21
                  Hint = 'Ingrese una fecha de nacimiento.'
                  Margins.Left = 4
                  Margins.Top = 1
                  DataField = 'Fechanacimiento'
                  DataSource = dsPersonal
                  DefaultToday = True
                  NumGlyphs = 2
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object DBCiudadNacimiento: TDBEdit
                  Left = 528
                  Top = 14
                  Width = 293
                  Height = 21
                  Hint = 'Ingrese una ciudad.'
                  DataField = 'Ciudadnacimiento'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
                object DBEstadoNacimiento: TDBEdit
                  Left = 179
                  Top = 36
                  Width = 294
                  Height = 21
                  DataField = 'Estadonacimiento'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
                object DBPaisNacimiento: TDBEdit
                  Left = 528
                  Top = 36
                  Width = 293
                  Height = 21
                  Hint = 'Ingrese una delegaci'#243'n.'
                  DataField = 'Delegacion'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                end
                object DBNombreMadre: TDBEdit
                  Left = 180
                  Top = 59
                  Width = 641
                  Height = 21
                  Hint = 'Ingrese nombre completo de la madre.'
                  DataField = 'Nombremadre'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                end
                object DBNombrePadre: TDBEdit
                  Left = 180
                  Top = 83
                  Width = 642
                  Height = 21
                  Hint = 'Ingrese nombre completo del padre.'
                  DataField = 'Nombrepadre'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 5
                end
              end
              object DBEstadoCivil: TDBComboBox
                Left = 589
                Top = 189
                Width = 104
                Height = 21
                Hint = 'Seleccione una opci'#243'n'
                Style = csDropDownList
                DataField = 'Estadocivil'
                DataSource = dsPersonal
                Items.Strings = (
                  'Casado'
                  'Soltero'
                  'Viduo'
                  'Divorciado'
                  'Concuvinato')
                ParentShowHint = False
                ShowHint = True
                TabOrder = 20
              end
              object DBSexo: TDBComboBox
                Left = 723
                Top = 189
                Width = 79
                Height = 21
                Hint = 'Seleccione una opci'#243'n'
                Style = csDropDownList
                DataField = 'Sexo'
                DataSource = dsPersonal
                Items.Strings = (
                  'Masculino'
                  'Femenino')
                ParentShowHint = False
                ShowHint = True
                TabOrder = 21
              end
              object DBNombre: TDBEdit
                Left = 230
                Top = 41
                Width = 571
                Height = 21
                Hint = 'Ingrese un nombre.'
                DataField = 'Nombres'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
              end
              object DBEditEMail: TDBEdit
                Left = 589
                Top = 165
                Width = 213
                Height = 21
                DataField = 'Correo'
                DataSource = dsPersonal
                MaxLength = 100
                TabOrder = 19
              end
              object EdtNoInfonavit: TDBEdit
                Left = 110
                Top = 137
                Width = 145
                Height = 21
                DataField = 'NumeroInfonavit'
                DataSource = dsPersonal
                Enabled = False
                TabOrder = 10
              end
              object ChkInfonavit: TCheckBox
                Left = 12
                Top = 141
                Width = 16
                Height = 17
                TabOrder = 25
                OnClick = ChkInfonavitClick
              end
              object DBEditContacto: TDBEdit
                Left = 589
                Top = 214
                Width = 213
                Height = 21
                Hint = 'Ingrese un nombre de contacto.'
                DataField = 'contacto'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 22
              end
              object DBTelefonoContacto: TDBEdit
                Left = 589
                Top = 241
                Width = 213
                Height = 21
                Hint = 'Ingrese un telefono de contacto.'
                DataField = 'telefonocontacto'
                DataSource = dsPersonal
                MaxLength = 10
                ParentShowHint = False
                ShowHint = True
                TabOrder = 23
                OnKeyPress = DBTelefonoContactoKeyPress
              end
              object DBFactorInfonavit: TJvDBCalcEdit
                Left = 110
                Top = 189
                Width = 112
                Height = 21
                DecimalPlaces = 4
                DisplayFormat = '0.####'
                Enabled = False
                TabOrder = 11
                DecimalPlacesAlwaysShown = False
                DataField = 'FactorInfonavit'
                DataSource = dsPersonal
              end
              object DBImss: TMaskEdit
                Left = 110
                Top = 114
                Width = 145
                Height = 21
                EditMask = '0000000000'
                MaxLength = 10
                TabOrder = 8
                Text = '0000000000'
                OnChange = DBImssChange
              end
              object cbPais: TDBLookupComboBox
                Left = 589
                Top = 113
                Width = 213
                Height = 21
                DataField = 'Nacionalidad'
                DataSource = dsPersonal
                KeyField = 'IdPais'
                ListField = 'TituloPais'
                ListSource = dsPais
                TabOrder = 17
              end
              object JvDBDateEdit1: TJvDBDateEdit
                Left = 230
                Top = 17
                Width = 121
                Height = 21
                DataField = 'FechaAlta'
                DataSource = dsPersonal
                TabOrder = 0
              end
              object DbDateAplicacion: TDBDateEdit
                Left = 111
                Top = 162
                Width = 111
                Height = 21
                Hint = 'Ingrese una fecha de nacimiento.'
                Margins.Left = 4
                Margins.Top = 1
                DataField = 'aplicacionInfonavit'
                DataSource = dsPersonal
                DefaultToday = True
                Enabled = False
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
              end
              object DbDateTermino: TDBDateEdit
                Left = 275
                Top = 163
                Width = 129
                Height = 21
                Hint = 'Ingrese una fecha de nacimiento.'
                Margins.Left = 4
                Margins.Top = 1
                DataField = 'TerminoInfonavit'
                DataSource = dsPersonal
                DefaultToday = True
                Enabled = False
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                TabOrder = 13
              end
              object cbbAplica: TcxComboBox
                Left = 352
                Top = 189
                Properties.Items.Strings = (
                  'CUOTA FIJA MONETARIA'
                  'PORCENTAJE SOBRE SALARIO'
                  'VECES EL SALARIO MINIMO')
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'Office2010Blue'
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                TabOrder = 27
                Text = 'cbbAplica'
                Width = 119
              end
              object pnlContrato: TPanel
                Left = 595
                Top = 13
                Width = 209
                Height = 22
                BevelOuter = bvNone
                TabOrder = 28
                Visible = False
                object JvLabel37: TJvLabel
                  Left = 16
                  Top = 4
                  Width = 49
                  Height = 13
                  Caption = 'Contrato:'
                  Transparent = True
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -11
                  HotTrackFont.Name = 'Tahoma'
                  HotTrackFont.Style = []
                end
                object CxCbbContratos: TcxDBLookupComboBox
                  Left = 71
                  Top = 1
                  DataBinding.DataField = 'IdOrganizacion'
                  DataBinding.DataSource = dsPersonalRh
                  Properties.KeyFieldNames = 'IdOrganizacion'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NombreOrganizacion'
                    end>
                  Properties.ListSource = dsCOntratos
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
                  TabOrder = 0
                  Width = 136
                end
              end
            end
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Documentos'
        ImageIndex = 3
        object PageControl4: TPageControl
          Left = 0
          Top = 0
          Width = 848
          Height = 540
          ActivePage = TabSheet8
          Align = alClient
          MultiLine = True
          TabOrder = 0
          TabPosition = tpBottom
          object TabSheet8: TTabSheet
            Caption = 'Documentos Actuales'
            object Splitter1: TSplitter
              Left = 837
              Top = 0
              Height = 514
              Align = alRight
              ExplicitLeft = 336
              ExplicitTop = 184
              ExplicitHeight = 100
            end
            object groupbox12: TGroupBox
              Left = 600
              Top = 0
              Width = 237
              Height = 514
              Align = alRight
              Caption = 'Preview'
              DoubleBuffered = False
              ParentDoubleBuffered = False
              TabOrder = 0
              Visible = False
            end
            object GroupBox11: TGroupBox
              Left = 0
              Top = 0
              Width = 600
              Height = 514
              Align = alClient
              Caption = 'Actuales'
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 1
              object Panel9: TPanel
                Left = 7
                Top = 20
                Width = 586
                Height = 446
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Panel9'
                TabOrder = 0
                object NextDBGrid1: TNextDBGrid
                  Left = 0
                  Top = 0
                  Width = 586
                  Height = 446
                  Align = alClient
                  Options = [goGrid, goHeader, goIndicator, goRowMoving, goSelectFullRow]
                  TabOrder = 0
                  TabStop = True
                  OnDblClick = NextDBGrid1DblClick
                  DataSource = dsDoctosPostulante
                  object NxDBTextColumn1: TNxDBTextColumn
                    DefaultWidth = 250
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Caption = 'Nombre del Documento'
                    Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 0
                    SortType = stAlphabetic
                    Width = 250
                    FieldName = 'nombredocumento'
                  end
                  object NxDBDateColumn1: TNxDBDateColumn
                    DefaultValue = '19/04/2013'
                    DefaultWidth = 125
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Caption = 'Fecha Expedicion'
                    Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 1
                    SortType = stDate
                    Width = 125
                    FieldName = 'fechaexpedicion'
                    HideWhenEmpty = False
                    NoneCaption = 'None'
                    TodayCaption = 'Today'
                  end
                  object NxDBDateColumn2: TNxDBDateColumn
                    DefaultValue = '19/04/2013'
                    DefaultWidth = 125
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Caption = 'Fecha Vigencia'
                    Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 2
                    SortType = stDate
                    Width = 125
                    FieldName = 'fechavigencia'
                    HideWhenEmpty = False
                    NoneCaption = 'None'
                    TodayCaption = 'Today'
                  end
                  object NxDBDateColumn3: TNxDBDateColumn
                    DefaultValue = '19/04/2013'
                    DefaultWidth = 125
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Header.Caption = 'Fecha de Aplicacion'
                    Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                    ParentFont = False
                    Position = 3
                    SortType = stDate
                    Width = 125
                    FieldName = 'fechaaplicacion'
                    HideWhenEmpty = False
                    NoneCaption = 'None'
                    TodayCaption = 'Today'
                  end
                end
              end
              object Panel10: TPanel
                Left = 7
                Top = 466
                Width = 586
                Height = 41
                Align = alBottom
                TabOrder = 1
                object BtnAddDocumentos: TcxButton
                  Left = 88
                  Top = 1
                  Width = 136
                  Height = 39
                  Hint = 'Pulse aqu'#237' para agregar un nuevo registro.'
                  Align = alRight
                  Caption = 'Agregar'
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnClick = BtnAddDocumentosClick
                end
                object BtnEditDocumentos: TcxButton
                  Left = 224
                  Top = 1
                  Width = 135
                  Height = 39
                  Hint = 'Pulse aqu'#237' para editar un registro existente'
                  Align = alRight
                  Caption = 'Editar'
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnClick = BtnEditDocumentosClick
                end
                object NxButton1: TcxButton
                  Left = 359
                  Top = 1
                  Width = 132
                  Height = 39
                  Hint = 'Pulse aqu'#237' para eliminar un registro existente.'
                  Align = alRight
                  Caption = 'Eliminar'
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnClick = NxButton1Click
                end
                object Buttonopen: TcxButton
                  Left = 491
                  Top = 1
                  Width = 41
                  Height = 39
                  Hint = 'Abrir el documento con una aplicaci'#243'n externa.'
                  Align = alRight
                  Caption = 'Abrir'
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                  OnClick = ButtonopenClick
                end
                object Button3: TcxButton
                  Left = 532
                  Top = 1
                  Width = 53
                  Height = 39
                  Hint = 'Abrir el documento con una aplicaci'#243'n externa.'
                  Align = alRight
                  Caption = 'Preview'
                  LookAndFeel.SkinName = 'LondonLiquidSky'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                  OnClick = Button3Click
                end
              end
            end
          end
        end
      end
      object spli: TTabSheet
        Caption = 'Datos Bancarios'
        ImageIndex = 2
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 848
          Height = 540
          Align = alClient
          TabOrder = 0
          object Splitter2: TSplitter
            Left = 716
            Top = 1
            Height = 538
            Align = alRight
            ExplicitLeft = 384
            ExplicitTop = 168
            ExplicitHeight = 100
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 715
            Height = 538
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object GroupBox7: TGroupBox
              Left = 6
              Top = 6
              Width = 703
              Height = 526
              Align = alClient
              Caption = 'Cuentas relacionadas al Personal/Aspirante'
              Padding.Left = 5
              Padding.Top = 5
              Padding.Right = 5
              Padding.Bottom = 5
              TabOrder = 0
              object GrdBancarios: TDBGrid
                Left = 7
                Top = 20
                Width = 689
                Height = 499
                Align = alClient
                DataSource = dsdatosbancarios
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDblClick = GrdBancariosDblClick
                OnKeyDown = GrdBancariosKeyDown
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'nombre'
                    Title.Caption = 'Banco'
                    Width = 175
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Sucursal'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Numerodecuenta'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Claveinterbancaria'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Fechadeaplicacion'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Estado'
                    Width = 100
                    Visible = True
                  end>
              end
            end
          end
          object Panel11: TPanel
            Left = 719
            Top = 1
            Width = 128
            Height = 538
            Align = alRight
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 1
            object GroupBox4: TGroupBox
              Left = 6
              Top = 6
              Width = 116
              Height = 526
              Align = alClient
              Caption = 'Acciones'
              TabOrder = 0
              object BtnActivar: TNxButton
                Left = 2
                Top = 84
                Width = 112
                Hint = 'Pulse aqu'#237' para activar la cuenta seleccionada.'
                Align = alTop
                Caption = 'Activar Cuenta'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = BtnActivarClick
              end
              object BtnAddBancarios: TNxButton
                Left = 2
                Top = 15
                Width = 112
                Hint = 'Pulse aqu'#237' para agregar un nuevo registro.'
                Align = alTop
                Caption = 'Agregar Cuenta'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = BtnAddBancariosClick
              end
              object BtnDeleteBancarios: TNxButton
                Left = 2
                Top = 61
                Width = 112
                Hint = 'Pulse aqu'#237' para eliminar un registro existente.'
                Align = alTop
                Caption = 'Eliminar Cuenta'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BtnDeleteBancariosClick
              end
              object BtnEditBancarios: TNxButton
                Left = 2
                Top = 38
                Width = 112
                Hint = 'Pulse aqu'#237' para editar un registro existente'
                Align = alTop
                Caption = 'Editar Cuenta'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = BtnEditBancariosClick
              end
            end
          end
        end
      end
      object TabHistorial: TTabSheet
        Caption = 'Recomendaciones'
        ImageIndex = 3
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 848
          Height = 540
          Align = alClient
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 423
            Top = 1
            Height = 538
            Align = alRight
            ExplicitLeft = 424
            ExplicitTop = 224
            ExplicitHeight = 100
          end
          object GroupBox6: TGroupBox
            Left = 426
            Top = 1
            Width = 421
            Height = 538
            Align = alRight
            Caption = 'Accciones'
            Padding.Left = 10
            Padding.Top = 10
            Padding.Right = 10
            Padding.Bottom = 10
            TabOrder = 0
          end
          object GroupBox5: TGroupBox
            Left = 1
            Top = 1
            Width = 422
            Height = 538
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 1
            object Panel12: TPanel
              Left = 7
              Top = 490
              Width = 408
              Height = 41
              Align = alBottom
              TabOrder = 0
              object BtnAddHistorial: TNxButton
                Left = 1
                Top = 1
                Width = 128
                Height = 39
                Hint = 'Pulse aqu'#237' para agregar un nuevo registro.'
                Align = alLeft
                Caption = 'Agregar'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = BtnAddHistorialClick
              end
              object BtnEditHistorial: TNxButton
                Left = 129
                Top = 1
                Width = 128
                Height = 39
                Hint = 'Pulse aqu'#237' para editar un registro existente.'
                Align = alLeft
                Caption = 'Editar'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = BtnEditHistorialClick
              end
              object BtnDeleteHistorial: TNxButton
                Left = 257
                Top = 1
                Width = 72
                Height = 39
                Hint = 'Pulse aqu'#237' para eliminar un registro existente.'
                Align = alLeft
                Caption = 'Eliminar'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BtnDeleteHistorialClick
              end
              object NxButton2: TNxButton
                Left = 329
                Top = 1
                Width = 72
                Height = 39
                Hint = 'Pulse aqu'#237' para eliminar un registro existente.'
                Align = alLeft
                Caption = 'Abrir'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = NxButton2Click
              end
            end
            object Panel13: TPanel
              Left = 7
              Top = 20
              Width = 408
              Height = 470
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object tvDocumentos: TJvTreeView
                Left = 0
                Top = 0
                Width = 408
                Height = 470
                Align = alClient
                Indent = 27
                ParentShowHint = False
                ReadOnly = True
                RightClickSelect = True
                RowSelect = True
                ShowHint = True
                TabOrder = 0
                OnChange = tvDocumentosChange
                OnDblClick = tvDocumentosDblClick
                Items.NodeData = {
                  030200000034000000060000000600000006000000FFFFFFFF06000000000000
                  0000000000010B500072006F0066006500730069006F006E0061006C002E0000
                  00000000000000000000000000FFFFFFFF000000000000000000000000010850
                  006500720073006F006E0061006C00}
                LineColor = clScrollBar
              end
            end
          end
        end
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 578
    Width = 915
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BtnGrabar: TcxButton
      Tag = 4
      Left = 696
      Top = 1
      Width = 112
      Height = 39
      Hint = 'Pulse aqu'#237' para guardar.'
      Align = alRight
      Caption = '&Grabar y cerrar'
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnAgregarClick
    end
    object Btn_Cancelar: TcxButton
      Left = 808
      Top = 1
      Width = 106
      Height = 39
      Hint = 'Pulse aqu'#237' para cancelar.'
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Btn_CancelarClick
    end
    object BtnAgregar: TcxButton
      Tag = 2
      Left = 561
      Top = 1
      Width = 135
      Height = 39
      Align = alRight
      Caption = '&Registrar Postulante'
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 2
      Visible = False
      OnClick = BtnAgregarClick
    end
    object dbchkPersonalEspecial: TDBCheckBox
      Left = 8
      Top = 6
      Width = 137
      Height = 17
      Caption = 'Personal Especial'
      DataField = 'Especial'
      DataSource = dsPersonal
      TabOrder = 3
      ValueChecked = 'Si'
      ValueUnchecked = 'No'
    end
  end
  object AdvToolPanelTab1: TAdvToolPanelTab
    Left = 0
    Top = 0
    Width = 49
    Height = 578
    Color = clWhite
    ColorTo = 16248798
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Position = ppLeft
    SlideSpeed = ssInstant
    TabBorderColor = 9841920
    TabColor = 16572875
    TabColorTo = 14722429
    TabHoverColor = 14483455
    TabHoverColorTo = 6013175
    Version = '1.5.4.1'
    Visible = False
    object Panel_Plaza: TAdvToolPanel
      Left = 23
      Top = 0
      Width = 26
      Height = 578
      BackgroundTransparent = False
      BackGroundPosition = bpTopLeft
      Button3D = False
      HoverButtonColor = 14483455
      HoverButtonColorTo = 6013175
      DownButtonColor = 557032
      DownButtonColorTo = 8182519
      CaptionButton = False
      ColorTo = 13007698
      GradientDirection = gdVertical
      DockDots = True
      Caption = 'Propiedades de Contrataci'#243'n'
      CaptionGradientDirection = gdVertical
      FocusCaptionFontColor = clBlack
      FocusCaptionColor = 9758459
      FocusCaptionColorTo = 1414638
      NoFocusCaptionFontColor = clWhite
      NoFocusCaptionColor = 14059353
      NoFocusCaptionColorTo = 9648131
      OpenWidth = 300
      CloseHint = 'Close panel'
      LockHint = 'Bloquear Panel'
      UnlockHint = 'Unlock panel'
      Sections = <>
      SectionLayout.CaptionColor = 16244422
      SectionLayout.CaptionColorTo = 14060643
      SectionLayout.CaptionFontColor = 8661248
      SectionLayout.CaptionRounded = False
      SectionLayout.Corners = scRectangle
      SectionLayout.BackGroundColor = 16248798
      SectionLayout.BackGroundColorTo = 16242365
      SectionLayout.BorderColor = clWhite
      SectionLayout.BorderWidth = 1
      SectionLayout.BackGroundGradientDir = gdVertical
      SectionLayout.Indent = 4
      SectionLayout.Spacing = 4
      SectionLayout.ItemFontColor = 11876608
      SectionLayout.ItemHoverTextColor = 11876608
      SectionLayout.ItemHoverUnderline = True
      SectionLayout.UnderLineCaption = False
      ShowCaption = False
      ShowCaptionBorder = False
      ShowClose = False
      ShowLock = False
      Version = '1.5.4.1'
      OnExit = Panel_PlazaExit
    end
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterEdit = cdPersonalAfterEdit
    Left = 16
    Top = 416
  end
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 112
    Top = 448
  end
  object cdDoctosPostulante: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdDoctosPostulanteAfterScroll
    Left = 32
    Top = 224
  end
  object dsDoctosPostulante: TDataSource
    DataSet = cdDoctosPostulante
    Left = 48
    Top = 536
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    Left = 200
    Top = 568
  end
  object Timer2: TTimer
    Enabled = False
    Left = 168
    Top = 568
  end
  object cddatosbancarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 272
  end
  object dsdatosbancarios: TDataSource
    DataSet = cddatosbancarios
    Left = 16
    Top = 528
  end
  object CdExperiencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 472
  end
  object MemPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 568
  end
  object JvCInfPc: TJvComputerInfoEx
    Left = 120
    Top = 528
  end
  object ListaArchivo: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NombreArchivo'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 16
    Top = 368
  end
  object MemArchivosNuevos: TJvMemoryData
    FieldDefs = <
      item
        Name = 'NombreArchivo'
        DataType = ftString
        Size = 200
      end>
    Left = 200
    Top = 544
  end
  object CdDocumentos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 320
  end
  object DsEliminarDocumento: TDataSource
    Left = 8
    Top = 536
  end
  object DsEliminarExperiencia: TDataSource
    Left = 40
    Top = 536
  end
  object cdPostulante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 576
  end
  object cdEmpleado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 544
  end
  object cdPersonalIMSS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 544
  end
  object cdPais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 576
  end
  object dsPais: TDataSource
    DataSet = cdPais
    Left = 80
    Top = 528
  end
  object cdPersonalRH: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 528
  end
  object dsCOntratos: TDataSource
    Left = 720
    Top = 65528
  end
  object dsPersonalRh: TDataSource
    DataSet = cdPersonalRH
    Left = 864
    Top = 528
  end
  object cdPersonalGeneral: TClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    Left = 80
    Top = 368
  end
end
