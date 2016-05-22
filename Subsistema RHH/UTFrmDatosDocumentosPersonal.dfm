inherited FrmDatosDocumentosPersonal: TFrmDatosDocumentosPersonal
  Caption = 'Datos del documento de personal'
  ClientHeight = 259
  ClientWidth = 360
  ExplicitWidth = 376
  ExplicitHeight = 297
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TcxGroupBox
    Top = 222
    ExplicitTop = 222
    ExplicitWidth = 360
    Width = 360
    inherited BtnRec: TcxButton
      Left = 178
    end
    inherited BtnCancel: TcxButton
      Left = 269
    end
  end
  inherited PanelDatosLugares: TcxGroupBox
    ExplicitWidth = 360
    ExplicitHeight = 222
    Height = 222
    Width = 360
    object Label4: TLabel
      Left = 16
      Top = 101
      Width = 54
      Height = 13
      Caption = 'Descripcion'
    end
    object Label2: TLabel
      Left = 16
      Top = 53
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Image2: TImage
      Left = 215
      Top = 13
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
    object DBEditNombre: TDBEdit
      Left = 88
      Top = 13
      Width = 121
      Height = 21
      DataField = 'nombredocumento'
      DataSource = dsDatos
      TabOrder = 0
    end
    object DbEditcodigo: TDBEdit
      Left = 88
      Top = 53
      Width = 201
      Height = 21
      DataField = 'codigodocumentospersonal'
      DataSource = dsDatos
      TabOrder = 1
    end
    object DBMemoDescripcion: TDBMemo
      Left = 88
      Top = 101
      Width = 201
      Height = 60
      DataField = 'descripcion'
      DataSource = dsDatos
      TabOrder = 2
    end
  end
end
