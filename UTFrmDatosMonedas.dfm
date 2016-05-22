inherited FrmDatosMonedas: TFrmDatosMonedas
  Caption = 'Datos de la moneda'
  ClientHeight = 249
  ClientWidth = 392
  ExplicitWidth = 408
  ExplicitHeight = 287
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TPanel
    Top = 200
    Width = 392
    ExplicitTop = 195
    ExplicitWidth = 392
    inherited BtnRec: TAdvShapeButton
      Top = 1
      ExplicitTop = 1
    end
  end
  inherited PanelDatosLugares: TPanel
    Width = 392
    Height = 200
    ExplicitTop = -5
    ExplicitWidth = 392
    ExplicitHeight = 195
    object Label4: TLabel
      Left = 16
      Top = 148
      Width = 36
      Height = 13
      Caption = 'S'#237'mbolo'
    end
    object Label3: TLabel
      Left = 16
      Top = 70
      Width = 54
      Height = 13
      Caption = 'Descripci'#243'n'
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 26
      Height = 13
      Caption = 'T'#237'tulo'
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Image2: TImage
      Left = 212
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
    object Image1: TImage
      Left = 315
      Top = 48
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
    object JvLabel1: TJvLabel
      Left = 16
      Top = 123
      Width = 60
      Height = 13
      Caption = 'Encabezado'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 16
      Top = 173
      Width = 49
      Height = 13
      Caption = 'Decimales'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object DBEditCodigo: TDBEdit
      Left = 84
      Top = 16
      Width = 121
      Height = 21
      DataField = 'codigomoneda'
      DataSource = dsDatos
      TabOrder = 0
    end
    object DBEditTitulo: TDBEdit
      Left = 84
      Top = 43
      Width = 225
      Height = 21
      DataField = 'titulomoneda'
      DataSource = dsDatos
      TabOrder = 1
    end
    object DBMemoDescripcion: TDBMemo
      Left = 84
      Top = 70
      Width = 228
      Height = 48
      DataField = 'descripcion'
      DataSource = dsDatos
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 84
      Top = 146
      Width = 121
      Height = 21
      DataField = 'simbolo'
      DataSource = dsDatos
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 84
      Top = 121
      Width = 145
      Height = 21
      DataField = 'Encabezado'
      DataSource = dsDatos
      TabOrder = 3
    end
    object JvDBSpinEdit1: TJvDBSpinEdit
      Left = 84
      Top = 171
      Width = 45
      Height = 21
      MaxValue = 6.000000000000000000
      TabOrder = 5
      DataField = 'Decimales'
      DataSource = dsDatos
    end
  end
end
