object FrmAltaExperiencia: TFrmAltaExperiencia
  Left = 0
  Top = 0
  Caption = 'Experiencia'
  ClientHeight = 454
  ClientWidth = 742
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 407
    Width = 742
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object NxButton2: TNxButton
      Left = 552
      Top = 0
      Width = 185
      Height = 42
      Hint = 'Pulse aqu'#237' para cancelar.'
      Align = alRight
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 376
      Top = 0
      Width = 176
      Height = 42
      Hint = 'Pulse aqu'#237' para guardar.'
      Align = alRight
      Caption = 'Guardar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = NxButton3Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 407
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 363
      Height = 397
      Align = alLeft
      Caption = 'Alta/Renovacion de Documento'
      TabOrder = 0
      object JvLabel2: TJvLabel
        Left = 20
        Top = 127
        Width = 63
        Height = 13
        Caption = 'Fecha Inicio:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 20
        Top = 154
        Width = 89
        Height = 13
        Caption = 'Fecha de t'#233'rmino:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel1: TJvLabel
        Left = 20
        Top = 50
        Width = 26
        Height = 13
        Caption = 'Tipo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel8: TJvLabel
        Left = 20
        Top = 181
        Width = 60
        Height = 13
        Caption = 'Descripci'#243'n:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel9: TJvLabel
        Left = 20
        Top = 25
        Width = 60
        Height = 13
        Caption = 'Documento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object OblDocumento: TImage
        Left = 337
        Top = 26
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
      object JvLabel6: TJvLabel
        Left = 20
        Top = 102
        Width = 35
        Height = 13
        Caption = 'Cargo:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object OblTipo: TImage
        Left = 337
        Top = 50
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
      object OblCargo: TImage
        Left = 337
        Top = 104
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
      object OblFechaI: TImage
        Left = 337
        Top = 130
        Width = 16
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
      object OblFechaF: TImage
        Left = 337
        Top = 155
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
      object OblDescripcion: TImage
        Left = 337
        Top = 181
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
      object Image2: TImage
        Left = 337
        Top = 76
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
      object JvLabel10: TJvLabel
        Left = 20
        Top = 79
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
      object JvLabel11: TJvLabel
        Left = 8
        Top = 354
        Width = 96
        Height = 13
        Caption = 'Cargar Documento:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object Image1: TImage
        Left = 335
        Top = 353
        Width = 17
        Height = 15
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
      object DateInicio: TDBDateEdit
        Left = 110
        Top = 127
        Width = 219
        Height = 21
        Hint = 'Ingrese una fecha de inicio.'
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechainicio'
        DataSource = dsDatos
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object DateFin: TDBDateEdit
        Left = 110
        Top = 154
        Width = 219
        Height = 21
        Hint = 'Ingrese una fecha de t'#233'rmino.'
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechatermino'
        DataSource = dsDatos
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object CbTipo: TComboBox
        Left = 110
        Top = 50
        Width = 219
        Height = 21
        Hint = 'Seleccione un tipo de documento.'
        Style = csDropDownList
        ItemIndex = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Laboral'
        OnChange = CbTipoChange
        Items.Strings = (
          'Laboral'
          'Personal')
      end
      object MDescripcion: TDBMemo
        Left = 110
        Top = 181
        Width = 219
        Height = 48
        Hint = 'Ingrese  una descripci'#243'n.'
        DataField = 'descripcion'
        DataSource = dsDatos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CbCargo: TDBLookupComboBox
        Left = 110
        Top = 102
        Width = 219
        Height = 21
        Hint = 'Seleccione un cargo.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object GroupBox3: TGroupBox
        Left = 20
        Top = 240
        Width = 334
        Height = 98
        Caption = 'Recomienda'
        TabOrder = 6
        object JvLabel4: TJvLabel
          Left = 14
          Top = 15
          Width = 43
          Height = 13
          Caption = 'Nombre:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel5: TJvLabel
          Left = 14
          Top = 71
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
        object JvLabel7: TJvLabel
          Left = 14
          Top = 42
          Width = 39
          Height = 13
          Caption = 'Puesto:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object OblNombre: TImage
          Left = 315
          Top = 15
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
        object OblPuesto: TImage
          Left = 315
          Top = 42
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
        object OblTelefono: TImage
          Left = 315
          Top = 71
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
        object EdtPersona: TDBEdit
          Left = 90
          Top = 15
          Width = 219
          Height = 21
          Hint = 'Ingrese el nombre de la persona que recomienda.'
          DataField = 'personafirma'
          DataSource = dsDatos
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object EdtTelefono: TDBEdit
          Left = 90
          Top = 71
          Width = 219
          Height = 21
          Hint = 'Ingrese un tel'#233'fono.'
          DataField = 'telefonofirma'
          DataSource = dsDatos
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object EdtPuesto: TDBEdit
          Left = 90
          Top = 42
          Width = 219
          Height = 21
          Hint = 'Ingrese un puesto.'
          DataField = 'puestofirma'
          DataSource = dsDatos
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
      object EdtDocumentos: TAdvEditBtn
        Left = 110
        Top = 25
        Width = 219
        Height = 21
        Hint = 'Seleccione un documento'
        Flat = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        ParentShowHint = False
        ReadOnly = False
        ShowHint = True
        TabOrder = 0
        Visible = True
        OnKeyPress = EdtDocumentosKeyPress
        Version = '1.3.2.8'
        ButtonStyle = bsButton
        ButtonWidth = 16
        Etched = False
        OnClickBtn = EdtDocumentosClickBtn
      end
      object EBtnDirFile: TAdvEditBtn
        Left = 110
        Top = 352
        Width = 219
        Height = 21
        Flat = False
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        ReadOnly = False
        TabOrder = 7
        Visible = True
        Version = '1.3.2.8'
        ButtonStyle = bsButton
        ButtonWidth = 16
        Etched = False
        OnClickBtn = EBtnDirFileClickBtn
      end
    end
    object GroupBox2: TGroupBox
      Left = 368
      Top = 5
      Width = 369
      Height = 397
      Align = alClient
      Caption = 'Anexar Documento escaneado'
      TabOrder = 1
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 365
        Height = 380
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 25
        Padding.Top = 15
        Padding.Right = 25
        Padding.Bottom = 10
        TabOrder = 0
        object AcroPDF1: TAcroPDF
          Left = 25
          Top = 15
          Width = 315
          Height = 355
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 16
          ExplicitTop = 61
          ExplicitWidth = 192
          ExplicitHeight = 192
          ControlData = {000900008E200000B1240000}
        end
        object PFondoPdf: TPanel
          Left = 25
          Top = 15
          Width = 315
          Height = 355
          Align = alClient
          BevelOuter = bvNone
          Color = cl3DDkShadow
          ParentBackground = False
          TabOrder = 1
        end
      end
    end
  end
  object DBEdit1: TDBEdit
    Left = 115
    Top = 82
    Width = 219
    Height = 21
    DataField = 'empresa'
    DataSource = dsDatos
    TabOrder = 2
  end
  object dsDatos: TDataSource
    Left = 648
  end
  object ODlgCargarPdf: TJvOpenDialog
    Filter = '|*.pdf'
    Height = 0
    Width = 0
    Left = 56
    Top = 296
  end
  object DsMemArchivosNuevos: TDataSource
    Left = 656
    Top = 64
  end
end
