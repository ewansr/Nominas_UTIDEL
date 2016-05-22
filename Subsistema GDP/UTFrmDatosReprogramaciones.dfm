inherited FrmDatosReprogramaciones: TFrmDatosReprogramaciones
  Caption = 'FrmDatosReprogramaciones'
  ClientHeight = 361
  ClientWidth = 411
  ExplicitWidth = 427
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TPanel
    Top = 312
    Width = 411
    ExplicitTop = 312
    ExplicitWidth = 411
  end
  inherited PanelDatosLugares: TPanel
    Width = 411
    Height = 312
    ExplicitWidth = 411
    ExplicitHeight = 312
    object Image1: TImage
      Left = 384
      Top = 27
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
      Left = 244
      Top = 5
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
    object Label1: TLabel
      Left = 72
      Top = 7
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label3: TLabel
      Left = 51
      Top = 27
      Width = 58
      Height = 13
      Caption = 'Descripci'#243'n:'
    end
    object Label4: TLabel
      Left = 45
      Top = 75
      Width = 64
      Height = 13
      Caption = 'Comentarios:'
    end
    object Label5: TLabel
      Left = 5
      Top = 134
      Width = 105
      Height = 13
      Caption = 'Tipo Reprogramaci'#243'n:'
    end
    object Label6: TLabel
      Left = 82
      Top = 155
      Width = 28
      Height = 13
      Caption = 'Obra:'
    end
    object Label7: TLabel
      Left = 41
      Top = 178
      Width = 69
      Height = 13
      Caption = 'Avance Fisico:'
    end
    object Label8: TLabel
      Left = 77
      Top = 200
      Width = 33
      Height = 13
      Caption = 'Fecha:'
    end
    object Label9: TLabel
      Left = 49
      Top = 223
      Width = 61
      Height = 13
      Caption = 'Fecha Inicio:'
    end
    object Label10: TLabel
      Left = 49
      Top = 246
      Width = 58
      Height = 13
      Caption = 'Fecha Final:'
    end
    object Label11: TLabel
      Left = 55
      Top = 268
      Width = 52
      Height = 13
      Caption = 'Monto MN:'
    end
    object Label12: TLabel
      Left = 55
      Top = 290
      Width = 54
      Height = 13
      Caption = 'Monto DLL:'
    end
    object DBEditCodigo: TDBEdit
      Left = 116
      Top = 4
      Width = 121
      Height = 21
      DataField = 'codigoconvenio'
      DataSource = dsDatos
      TabOrder = 0
    end
    object DBMemoDescripcion: TDBMemo
      Left = 116
      Top = 27
      Width = 262
      Height = 48
      DataField = 'descripcion'
      DataSource = dsDatos
      TabOrder = 1
    end
    object DBMemoComentarios: TDBMemo
      Left = 116
      Top = 75
      Width = 262
      Height = 56
      DataField = 'comentarios'
      DataSource = dsDatos
      TabOrder = 2
    end
    object EditTituloDepartamento: TEdit
      Tag = 99
      Left = 236
      Top = 137
      Width = 142
      Height = 21
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '*'
    end
    object BtnFindDepartamento: TBitBtn
      Left = 207
      Top = 130
      Width = 23
      Height = 22
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BtnFindDepartamentoClick
    end
    object txtTipoReprogramacion: TEdit
      Left = 116
      Top = 131
      Width = 85
      Height = 21
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 116
      Top = 153
      Width = 85
      Height = 21
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 207
      Top = 152
      Width = 23
      Height = 22
      Caption = '...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtn1Click
    end
    object txtDescripcionObra: TEdit
      Tag = 99
      Left = 236
      Top = 159
      Width = 142
      Height = 21
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = '*'
    end
    object dtpFecha: TJvDBDatePickerEdit
      Left = 116
      Top = 197
      Width = 96
      Height = 21
      AllowNoDate = True
      DataField = 'fecha'
      DataSource = dsDatos
      TabOrder = 9
    end
    object JvDBDatePickerEdit1: TJvDBDatePickerEdit
      Left = 116
      Top = 220
      Width = 96
      Height = 21
      AllowNoDate = True
      DataField = 'fechainicio'
      DataSource = dsDatos
      TabOrder = 10
    end
    object JvDBDatePickerEdit2: TJvDBDatePickerEdit
      Left = 116
      Top = 243
      Width = 96
      Height = 21
      AllowNoDate = True
      DataField = 'fechafinal'
      DataSource = dsDatos
      TabOrder = 11
    end
    object DBEdit2: TDBEdit
      Left = 116
      Top = 265
      Width = 262
      Height = 21
      DataField = 'montomn'
      DataSource = dsDatos
      TabOrder = 12
    end
    object DBEdit3: TDBEdit
      Left = 116
      Top = 287
      Width = 262
      Height = 21
      DataField = 'montodll'
      DataSource = dsDatos
      TabOrder = 13
    end
    object DBComboBox1: TDBComboBox
      Left = 116
      Top = 174
      Width = 61
      Height = 21
      DataField = 'avancefisico'
      DataSource = dsDatos
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 14
    end
  end
  inherited dsDatos: TDataSource
    Left = 304
    Top = 208
  end
end
