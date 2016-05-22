object FrmFichaPersonalDX: TFrmFichaPersonalDX
  Left = 0
  Top = 0
  Caption = 'Ficha de Aspirante'
  ClientHeight = 579
  ClientWidth = 862
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
    Left = 0
    Top = 0
    Width = 862
    Height = 538
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
      Width = 852
      Height = 528
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Informativo'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 844
          Height = 500
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 844
            Height = 500
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
              Width = 834
              Height = 490
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
                Left = 178
                Top = 115
                Width = 50
                Height = 13
                Caption = 'No. IMSS:'
                Transparent = True
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
              end
              object JvLabel5: TJvLabel
                Left = 78
                Top = 164
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
                Left = 23
                Top = 216
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
                Left = 477
                Top = 115
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
                Left = 85
                Top = 189
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
                Left = 314
                Top = 116
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
                Left = 464
                Top = 164
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
                Left = 45
                Top = 243
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
                Left = 495
                Top = 189
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
                Left = 109
                Top = 140
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
                Left = 491
                Top = 140
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
                Left = 475
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
                Left = 431
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
                Left = 339
                Top = 140
                Width = 37
                Height = 13
                Caption = 'Factor:'
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
                Left = 378
                Top = 113
                Width = 68
                Height = 21
                Hint = 'Ingrese un numero de IMSS'
                DataField = 'numerosegurosocial'
                DataSource = dsPersonal
                MaxLength = 8
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                Visible = False
              end
              object DBCurp: TDBEdit
                Left = 112
                Top = 162
                Width = 306
                Height = 21
                Hint = 'Inggrese una CURP'
                DataField = 'curp'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 13
              end
              object DBGrupoSanguineo: TDBEdit
                Left = 112
                Top = 214
                Width = 293
                Height = 21
                Hint = 'Ingrese un tipo de sangre.'
                DataField = 'Gruposanguineo'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 17
              end
              object DBTelefono: TDBEdit
                Left = 531
                Top = 113
                Width = 294
                Height = 21
                Hint = 'Ingrese un n'#250'mero telef'#243'nico'
                DataField = 'telefono'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
              end
              object DBRFC: TDBEdit
                Left = 112
                Top = 187
                Width = 201
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
                Left = 13
                Top = 264
                Width = 828
                Height = 115
                Caption = 'Domicilio'
                TabOrder = 21
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
                  Left = 55
                  Top = 24
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
                  Top = 24
                  Width = 206
                  Height = 21
                  Hint = 'Ingrese un n'#250'mero de vivienda.'
                  DataField = 'Numero'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
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
                  TabOrder = 2
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
                  TabOrder = 5
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
                  TabOrder = 4
                end
                object DBEditEstado: TDBEdit
                  Left = 54
                  Top = 92
                  Width = 281
                  Height = 21
                  Hint = 'Ingrese un estado.'
                  DataField = 'Estado'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                end
                object DBEditPais: TDBEdit
                  Left = 528
                  Top = 92
                  Width = 362
                  Height = 21
                  Hint = 'Ingrese un pais.'
                  DataField = 'Pais'
                  DataSource = dsPersonal
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
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                end
              end
              object Panel1: TPanel
                Left = 2
                Top = 448
                Width = 830
                Height = 40
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 22
              end
              object Panel2: TPanel
                Left = 424
                Top = 13
                Width = 347
                Height = 22
                BevelOuter = bvNone
                Enabled = False
                TabOrder = 2
                object JvLabel1: TJvLabel
                  Left = 8
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
                  Left = 53
                  Top = 1
                  Width = 291
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
                Left = 8
                Top = 21
                Width = 113
                Height = 87
                DataField = 'imagen'
                DataSource = dsPersonal
                Stretch = True
                TabOrder = 0
              end
              object Button1: TButton
                Left = 12
                Top = 114
                Width = 111
                Height = 21
                Hint = 'Pulse aqu'#237' para cargar una foto.'
                Caption = 'Cargar Imagen'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = Button1Click
              end
              object GroupBox3: TGroupBox
                Left = 1
                Top = 391
                Width = 828
                Height = 108
                Caption = 'Datos de Nacimiento'
                TabOrder = 23
                object JvLabel21: TJvLabel
                  Left = 83
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
                  Left = 79
                  Top = 38
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
                  Left = 121
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
                  TabOrder = 1
                end
                object DBEstadoNacimiento: TDBEdit
                  Left = 121
                  Top = 36
                  Width = 294
                  Height = 21
                  DataField = 'Estadonacimiento'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
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
                  Left = 175
                  Top = 59
                  Width = 645
                  Height = 21
                  Hint = 'Ingrese nombre completo de la madre.'
                  DataField = 'Nombremadre'
                  DataSource = dsPersonal
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                end
                object DBNombrePadre: TDBEdit
                  Left = 177
                  Top = 82
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
                Left = 531
                Top = 162
                Width = 292
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
                TabOrder = 14
              end
              object DBSexo: TDBComboBox
                Left = 531
                Top = 187
                Width = 292
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
                TabOrder = 16
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
                Left = 530
                Top = 138
                Width = 293
                Height = 21
                DataField = 'Correo'
                DataSource = dsPersonal
                TabOrder = 12
              end
              object EdtNoInfonavit: TDBEdit
                Left = 180
                Top = 138
                Width = 153
                Height = 21
                DataField = 'NumeroInfonavit'
                DataSource = dsPersonal
                Enabled = False
                TabOrder = 10
              end
              object ChkInfonavit: TCheckBox
                Left = 87
                Top = 140
                Width = 16
                Height = 17
                TabOrder = 9
                OnClick = ChkInfonavitClick
              end
              object DBEditContacto: TDBEdit
                Left = 531
                Top = 214
                Width = 307
                Height = 21
                Hint = 'Ingrese un nombre de contacto.'
                DataField = 'contacto'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 18
              end
              object DBTelefonoContacto: TDBEdit
                Left = 530
                Top = 241
                Width = 293
                Height = 21
                Hint = 'Ingrese un telefono de contacto.'
                DataField = 'telefonocontacto'
                DataSource = dsPersonal
                ParentShowHint = False
                ShowHint = True
                TabOrder = 20
              end
              object DBFactorInfonavit: TJvDBCalcEdit
                Left = 382
                Top = 140
                Width = 76
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
                Left = 230
                Top = 114
                Width = 81
                Height = 21
                EditMask = '0000000000'
                MaxLength = 10
                TabOrder = 6
                Text = '0000000000'
                OnChange = DBImssChange
              end
              object cbPais: TDBLookupComboBox
                Left = 112
                Top = 241
                Width = 293
                Height = 21
                DataField = 'Nacionalidad'
                DataSource = dsPersonal
                KeyField = 'IdPais'
                ListField = 'TituloPais'
                ListSource = dsPais
                TabOrder = 19
              end
              object JvDBDateEdit1: TJvDBDateEdit
                Left = 230
                Top = 17
                Width = 121
                Height = 21
                DataField = 'FechaAlta'
                DataSource = dsPersonal
                TabOrder = 24
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
          Width = 844
          Height = 500
          ActivePage = TabSheet8
          Align = alClient
          MultiLine = True
          TabOrder = 0
          TabPosition = tpBottom
          object TabSheet8: TTabSheet
            Caption = 'Documentos Actuales'
            object Splitter1: TSplitter
              Left = 833
              Top = 0
              Height = 474
              Align = alRight
              ExplicitLeft = 336
              ExplicitTop = 184
              ExplicitHeight = 100
            end
            object groupbox12: TGroupBox
              Left = 596
              Top = 0
              Width = 237
              Height = 474
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
              Width = 596
              Height = 474
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
                Width = 582
                Height = 406
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Panel9'
                TabOrder = 0
                object NextDBGrid1: TNextDBGrid
                  Left = 0
                  Top = 0
                  Width = 582
                  Height = 406
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
                Top = 426
                Width = 582
                Height = 41
                Align = alBottom
                TabOrder = 1
                object BtnAddDocumentos: TNxButton
                  Left = -6
                  Top = 1
                  Width = 167
                  Height = 39
                  Hint = 'Pulse aqu'#237' para agregar un nuevo registro.'
                  Align = alRight
                  Caption = 'Agregar'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnClick = BtnAddDocumentosClick
                end
                object BtnEditDocumentos: TNxButton
                  Left = 161
                  Top = 1
                  Width = 160
                  Height = 39
                  Hint = 'Pulse aqu'#237' para editar un registro existente'
                  Align = alRight
                  Caption = 'Editar'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnClick = BtnEditDocumentosClick
                end
                object NxButton1: TNxButton
                  Left = 321
                  Top = 1
                  Width = 166
                  Height = 39
                  Hint = 'Pulse aqu'#237' para eliminar un registro existente.'
                  Align = alRight
                  Caption = 'Eliminar'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnClick = NxButton1Click
                end
                object Buttonopen: TButton
                  Left = 487
                  Top = 1
                  Width = 41
                  Height = 39
                  Hint = 'Abrir el documento con una aplicaci'#243'n externa.'
                  Align = alRight
                  Caption = 'Abrir'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                  OnClick = ButtonopenClick
                end
                object Button3: TButton
                  Left = 528
                  Top = 1
                  Width = 53
                  Height = 39
                  Hint = 'Abrir el documento con una aplicaci'#243'n externa.'
                  Align = alRight
                  Caption = 'Preview'
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
          Width = 844
          Height = 500
          Align = alClient
          TabOrder = 0
          object Splitter2: TSplitter
            Left = 712
            Top = 1
            Height = 498
            Align = alRight
            ExplicitLeft = 384
            ExplicitTop = 168
            ExplicitHeight = 100
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 711
            Height = 498
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 0
            object GroupBox7: TGroupBox
              Left = 6
              Top = 6
              Width = 699
              Height = 486
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
                Width = 685
                Height = 459
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
            Left = 715
            Top = 1
            Width = 128
            Height = 498
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
              Height = 486
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
          Width = 844
          Height = 500
          Align = alClient
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 419
            Top = 1
            Height = 498
            Align = alRight
            ExplicitLeft = 424
            ExplicitTop = 224
            ExplicitHeight = 100
          end
          object GroupBox6: TGroupBox
            Left = 422
            Top = 1
            Width = 421
            Height = 498
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
            Width = 418
            Height = 498
            Align = alClient
            Padding.Left = 5
            Padding.Top = 5
            Padding.Right = 5
            Padding.Bottom = 5
            TabOrder = 1
            object Panel12: TPanel
              Left = 7
              Top = 450
              Width = 404
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
              Width = 404
              Height = 430
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object tvDocumentos: TJvTreeView
                Left = 0
                Top = 0
                Width = 404
                Height = 430
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
    Top = 538
    Width = 862
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BtnGrabar: TBitBtn
      Tag = 4
      Left = 599
      Top = 1
      Width = 135
      Height = 39
      Hint = 'Pulse aqu'#237' para guardar.'
      Align = alRight
      Caption = '&Grabar y cerrar'
      Default = True
      Glyph.Data = {
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
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnAgregarClick
    end
    object Btn_Cancelar: TBitBtn
      Left = 734
      Top = 1
      Width = 127
      Height = 39
      Hint = 'Pulse aqu'#237' para cancelar.'
      Align = alRight
      Cancel = True
      Caption = '&Cancelar'
      Glyph.Data = {
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
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Btn_CancelarClick
    end
    object BtnAgregar: TBitBtn
      Tag = 2
      Left = 464
      Top = 1
      Width = 135
      Height = 39
      Align = alRight
      Caption = '&Registrar Postulante'
      Glyph.Data = {
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
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BtnAgregarClick
    end
  end
  object cdPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterEdit = cdPersonalAfterEdit
    Left = 24
    Top = 112
  end
  object dsPersonal: TDataSource
    DataSet = cdPersonal
    Left = 32
    Top = 264
  end
  object cdDoctosPostulante: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdDoctosPostulanteAfterScroll
    Left = 128
    Top = 104
  end
  object dsDoctosPostulante: TDataSource
    DataSet = cdDoctosPostulante
    Left = 368
    Top = 88
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    Left = 32
    Top = 176
  end
  object cddatosbancarios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 88
  end
  object dsdatosbancarios: TDataSource
    DataSet = cddatosbancarios
    Left = 432
  end
  object CdExperiencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 560
    Top = 72
  end
  object MemPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 192
  end
  object JvCInfPc: TJvComputerInfoEx
    Left = 592
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
    Left = 680
    Top = 80
  end
  object MemArchivosNuevos: TJvMemoryData
    FieldDefs = <
      item
        Name = 'NombreArchivo'
        DataType = ftString
        Size = 200
      end>
    Left = 256
    Top = 192
  end
  object CdDocumentos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 392
  end
  object DsEliminarDocumento: TDataSource
    Left = 352
    Top = 176
  end
  object DsEliminarExperiencia: TDataSource
    Left = 696
    Top = 176
  end
  object cdPostulante: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 320
  end
  object cdEmpleado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 392
  end
  object cdPais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 272
  end
  object dsPais: TDataSource
    DataSet = cdPais
    Left = 344
    Top = 272
  end
end
