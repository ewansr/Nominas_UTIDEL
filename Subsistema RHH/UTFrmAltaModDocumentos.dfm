object FrmAltaModDocumentos: TFrmAltaModDocumentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Agregar Documentos'
  ClientHeight = 379
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 701
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object NxButton2: TNxButton
      Left = 595
      Top = 0
      Width = 101
      Height = 42
      Hint = 'Pulse aqu'#237' para cancelar.'
      Align = alRight
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 499
      Top = 0
      Width = 96
      Height = 42
      Hint = 'Pulse aqu'#237' para guardar.'
      Align = alRight
      Caption = 'Guardar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = NxButton3Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 332
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
      Height = 322
      Align = alLeft
      Caption = 'Alta/Renovacion de Documento'
      TabOrder = 0
      object JvLabel2: TJvLabel
        Left = 19
        Top = 55
        Width = 92
        Height = 13
        Caption = 'Fecha Expedicion: '
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel3: TJvLabel
        Left = 19
        Top = 87
        Width = 77
        Height = 13
        Caption = 'Fecha Vigencia:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel4: TJvLabel
        Left = 19
        Top = 119
        Width = 85
        Height = 13
        Caption = 'Fecha Aplicacion:'
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object OblDocumento: TImage
        Left = 338
        Top = 21
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
      object JvLabel9: TJvLabel
        Left = 19
        Top = 21
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
      object Image2: TImage
        Left = 338
        Top = 57
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
        Left = 338
        Top = 87
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
        Left = 338
        Top = 120
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
      object DateExpedicion: TDBDateEdit
        Left = 118
        Top = 55
        Width = 214
        Height = 21
        Hint = 'Ingrese una fecha de expedici'#243'n del documento.'
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechaexpedicion'
        DataSource = dsDatos
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object DateVigencia: TDBDateEdit
        Left = 118
        Top = 87
        Width = 214
        Height = 21
        Hint = 'Ingrese una fecha de vigencia del documento.'
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechavigencia'
        DataSource = dsDatos
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DateAplicacion: TDBDateEdit
        Left = 118
        Top = 119
        Width = 214
        Height = 21
        Hint = 'Ingrese una fecha de aplicaci'#243'n.'
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'fechaaplicacion'
        DataSource = dsDatos
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object EdtDocumentos: TAdvEditBtn
        Left = 118
        Top = 21
        Width = 214
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
    end
    object GroupBox2: TGroupBox
      Left = 368
      Top = 5
      Width = 328
      Height = 322
      Align = alClient
      Caption = 'Anexar Documento escaneado'
      TabOrder = 1
      object Panel1: TPanel
        Left = 2
        Top = 279
        Width = 324
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 20
        Padding.Top = 10
        Padding.Right = 20
        Padding.Bottom = 10
        TabOrder = 0
        object BtnLoadimg: TButton
          Left = 20
          Top = 10
          Width = 284
          Height = 21
          Hint = 'Pulse aqu'#237' para cargar una imagen.'
          Align = alClient
          Caption = 'Cargar Imagen'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnLoadimgClick
        end
      end
      object Panel3: TPanel
        Left = 2
        Top = 15
        Width = 324
        Height = 264
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 25
        Padding.Top = 15
        Padding.Right = 25
        Padding.Bottom = 10
        TabOrder = 1
        object Image1: TImage
          Left = 305
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
        object JvDBImage1: TJvDBImage
          Left = 25
          Top = 15
          Width = 274
          Height = 239
          Align = alClient
          DataField = 'documento'
          DataSource = dsDatos
          Stretch = True
          TabOrder = 0
        end
      end
    end
  end
  object dsDatos: TDataSource
    Left = 544
  end
end
